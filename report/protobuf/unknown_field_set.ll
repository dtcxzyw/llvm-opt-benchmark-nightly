inline.NumInlined: 521
inline.NumDeleted: 274
begin_hunk_0_@_ZN6google8protobuf15UnknownFieldSet13ClearFallbackEv:bb.a
  %i.ba = shl nsw i64 %i.az, 4
  %i.bb = add nsw i64 %i.ba, 16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bb) #20, !inline_history !34
  br label %_ZN6google8protobuf12UnknownField6DeleteEv.exit.sink.split

_ZN6google8protobuf12UnknownField6DeleteEv.exit.sink.split: ; preds = %bb.g, %bb.l, %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sink = phi ptr [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ae, %bb.l ], [ %i.ae, %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.thread.i ], [ %i.w, %bb.g ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 32) #19
  br label %_ZN6google8protobuf12UnknownField6DeleteEv.exit

_ZN6google8protobuf12UnknownField6DeleteEv.exit:  ; preds = %_ZN6google8protobuf12UnknownField6DeleteEv.exit.sink.split, %bb.e, %bb.f, %bb.h
  %i.bc = icmp sgt i64 %indvars.iv, 1
  br i1 %i.bc, label %bb.e, label %.loopexit, !llvm.loop !35

.loopexit:                                        ; preds = %_ZN6google8protobuf12UnknownField6DeleteEv.exit, %_ZN6google8protobuf15UnknownFieldSet5arenaEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf12UnknownField6DeleteEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22
  switch i32 %i.b, label %bb.i [
    i32 3, label %bb.b
    i32 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !19
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #19
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19   ; 9 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !17
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.noexc2.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6google8protobuf15UnknownFieldSet13ClearFallbackEv(ptr noundef nonnull align 8 dereferenceable(32) %i.l), !inline_history !37
  br label %.noexc2.i

.noexc2.i:                                        ; preds = %bb.f, %bb.e
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !30   ; 3 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.thread.i, label %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.i

_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.i: ; preds = %.noexc2.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !28
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !26
  store i8 0, ptr %i.t, align 1, !tbaa !19
  %.pr.i = load ptr, ptr %i.l, align 8, !tbaa !30 ; 4 uses
  %i.u = icmp eq ptr %.pr.i, null
  br i1 %i.u, label %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.i
  %i.v = load ptr, ptr %.pr.i, align 8, !tbaa !26 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.pr.i, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.y = load i64, ptr %i.w, align 8, !tbaa !19
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #19, !inline_history !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef 32) #19, !inline_history !38
  br label %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.thread.i

_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.i, %.noexc2.i
  %i.aa = load i32, ptr %i.n, align 8, !tbaa !7
  %i.ab = and i32 %i.aa, 1
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.thread.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !19
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 4
  %i.ai = add nsw i64 %i.ah, 16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ai) #20, !inline_history !38
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.h, %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sink = phi ptr [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.l, %bb.h ], [ %i.l, %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.thread.i ], [ %i.d, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 32) #19
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf15UnknownFieldSet9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.google::protobuf::UnknownField", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17   ; 2 uses
  %i.g = add nsw i32 %i.f, %i.b                   ; 2 uses
  %i.h = load i32, ptr %i.d, align 8, !tbaa !7    ; 2 uses
  %i.i = and i32 %i.h, -2                         ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = sext i32 %i.i to i64
  %i.l = getelementptr inbounds i8, ptr %i.d, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !9    ; 3 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !13
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.r = inttoptr i64 %i.m to ptr
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i: ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i.i.i = phi ptr [ null, %bb.b ], [ %i.q, %bb.d ], [ %i.r, %bb.e ]
  %i.s = and i32 %i.h, 1
  %i.t = icmp eq i32 %i.s, 0                      ; 2 uses
  br i1 %i.t, label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19
  %i.w = load i32, ptr %i.v, align 8, !tbaa !19
  br label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i

_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i: ; preds = %bb.f, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i
  %i.x = phi i32 [ %i.w, %bb.f ], [ 0, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i ]
  %i.y = icmp sgt i32 %i.g, %i.x
  br i1 %i.y, label %bb.g, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit, !prof !12

bb.g:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef %.0.i.i.i.i.i, i1 noundef zeroext %i.t, i32 noundef %i.f, i32 noundef %i.g)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !17
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i, %bb.g
  %i.z = phi i32 [ %i.b, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i ], [ %.pre, %bb.g ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !7
  %i.ac = and i32 %i.ab, 1
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.0.i.i.i.i = select i1 %i.ad, ptr %i.ae, ptr %i.ag ; 2 uses
  %i.ah = sext i32 %i.z to i64
  %.idx = shl nsw i64 %i.ah, 4
  %i.ai = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 %.idx
  %.not17 = icmp eq i32 %i.z, 0
  br i1 %.not17, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE3AddES2_.exit
  %.sroa.014.018 = phi ptr [ %.0.i.i.i.i, %.lr.ph ], [ %i.bw, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE3AddES2_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.018, i64 16, i1 false), !tbaa.struct !39
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !9  ; 3 uses
  %i.al = trunc i64 %i.ak to i1
  br i1 %i.al, label %bb.i, label %bb.j, !prof !12

bb.i:                                             ; preds = %bb.h
  %i.am = add nsw i64 %i.ak, -1
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !13
  br label %_ZN6google8protobuf15UnknownFieldSet5arenaEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ap = inttoptr i64 %i.ak to ptr
  br label %_ZN6google8protobuf15UnknownFieldSet5arenaEv.exit

_ZN6google8protobuf15UnknownFieldSet5arenaEv.exit: ; preds = %bb.i, %bb.j
  %.0.i.i.i = phi ptr [ %i.ao, %bb.i ], [ %i.ap, %bb.j ]
  %i.aq = call { i64, i64 } @_ZNK6google8protobuf12UnknownField8DeepCopyEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %.0.i.i.i) ; 2 uses
  %i.ar = extractvalue { i64, i64 } %i.aq, 0
  %i.as = extractvalue { i64, i64 } %i.aq, 1
  %i.at = load i32, ptr %i.d, align 8, !tbaa !7   ; 2 uses
  %i.au = and i32 %i.at, -2                       ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i10, label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf15UnknownFieldSet5arenaEv.exit
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds i8, ptr %i.d, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !9  ; 3 uses
  %i.az = trunc i64 %i.ay to i1
  br i1 %i.az, label %bb.l, label %bb.m, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.ba = add nsw i64 %i.ay, -1
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !13
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i10

bb.m:                                             ; preds = %bb.k
  %i.bd = inttoptr i64 %i.ay to ptr
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i10

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i10: ; preds = %bb.m, %bb.l, %_ZN6google8protobuf15UnknownFieldSet5arenaEv.exit
  %.0.i.i.i.i.i11 = phi ptr [ null, %_ZN6google8protobuf15UnknownFieldSet5arenaEv.exit ], [ %i.bc, %bb.l ], [ %i.bd, %bb.m ]
  %i.be = and i32 %i.at, 1
  %i.bf = icmp eq i32 %i.be, 0                    ; 4 uses
  %i.bg = load i32, ptr %i.e, align 4, !tbaa !17  ; 5 uses
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8 ; 2 uses
  br i1 %i.bf, label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i12, label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i10
  %i.bh = load i32, ptr %.pre.i.i, align 8, !tbaa !19
  br label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i12

_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i12: ; preds = %bb.n, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i10
  %i.bi = phi i32 [ %i.bh, %bb.n ], [ 0, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i10 ]
  %i.bj = icmp eq i32 %i.bg, %i.bi
  br i1 %i.bj, label %bb.o, label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit._crit_edge.i.i, !prof !12

_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit._crit_edge.i.i: ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i12
  %i.bk = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 16
  %.0.i.i.i.i13 = select i1 %i.bf, ptr %.phi.trans.insert.i.i, ptr %i.bk
  %.pre35.i.i = add nsw i32 %i.bg, 1
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE3AddES2_.exit

bb.o:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i12
  %i.bl = add nsw i32 %i.bg, 1                    ; 2 uses
  tail call void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef %.0.i.i.i.i.i11, i1 noundef zeroext %i.bf, i32 noundef %i.bg, i32 noundef %i.bl)
  %i.bm = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.pre34.i.i = load i32, ptr %i.e, align 4, !tbaa !17
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE3AddES2_.exit

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE3AddES2_.exit: ; preds = %bb.o, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit._crit_edge.i.i
  %.pre-phi.i.i = phi i32 [ %.pre35.i.i, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit._crit_edge.i.i ], [ %i.bl, %bb.o ] ; 2 uses
  %i.bo = phi i32 [ %i.bg, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit._crit_edge.i.i ], [ %.pre34.i.i, %bb.o ]
  %.028.i.i = phi ptr [ %.0.i.i.i.i13, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit._crit_edge.i.i ], [ %i.bn, %bb.o ] ; 2 uses
  %.0.i.i = phi i1 [ %i.bf, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit._crit_edge.i.i ], [ false, %bb.o ]
  store i32 %.pre-phi.i.i, ptr %i.e, align 4, !tbaa !17
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [16 x i8], ptr %.028.i.i, i64 %i.bp ; 2 uses
  store i64 %i.ar, ptr %i.bq, align 8
  %.sroa.2.0..0.3.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %i.as, ptr %.sroa.2.0..0.3.sroa_idx.i.i, align 8, !tbaa !19
  %i.br = load i32, ptr %i.e, align 4, !tbaa !17
  %i.bs = icmp eq i32 %.pre-phi.i.i, %i.br
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.phi.trans.insert.i.i.sink = select i1 %.0.i.i, ptr %.phi.trans.insert.i.i, ptr %i.bu
  %i.bv = icmp eq ptr %.028.i.i, %.phi.trans.insert.i.i.sink
  tail call void @llvm.assume(i1 %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.014.018, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bw, %i.ai
  br i1 %.not, label %.loopexit, label %bb.h

.loopexit:                                        ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE3AddES2_.exit, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZNK6google8protobuf12UnknownField8DeepCopyEPNS0_5ArenaE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 2 uses
  %.sroa.2.0..0.4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..0.4.sroa_idx, align 8 ; 2 uses
  %i.b = lshr i64 %.sroa.0.0.copyload, 32
  %i.c = trunc nuw i64 %i.b to i32
  %i.d = inttoptr i64 %.sroa.2.0.copyload to ptr  ; 4 uses
  switch i32 %i.c, label %bb.j [
    i32 3, label %bb.b
    i32 4, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.c, label %bb.e, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18 ; 3 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS8_EEEPT_PS1_DpOT0_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 32) #19
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena23AllocateFromStringBlockEv(ptr noundef nonnull align 8 dereferenceable(168) %1) ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !23
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !28   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.l, ptr %i.a, align 8, !tbaa !40
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %i.h, align 8, !tbaa !26
  %i.o = load i64, ptr %i.a, align 8, !tbaa !40
  store i64 %i.o, ptr %i.i, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.e
  %i.p = phi ptr [ %i.n, %.noexc.i ], [ %i.i, %bb.e ] ; 2 uses
  switch i64 %i.l, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !19
  store i8 %i.q, ptr %i.p, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.r = load i64, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !28
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS8_EEEPT_PS1_DpOT0_.exit

_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS8_EEEPT_PS1_DpOT0_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.0.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.f, %bb.c ]
  %i.v = ptrtoint ptr %.0.i to i64
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.w = icmp eq ptr %1, null
  br i1 %i.w, label %_ZN6google8protobuf5Arena14InternalHelperINS0_15UnknownFieldSetEE3NewEv.exit, label %bb.i, !prof !12

_ZN6google8protobuf5Arena14InternalHelperINS0_15UnknownFieldSetEE3NewEv.exit: ; preds = %bb.h
  %i.x = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18 ; 5 uses
  store ptr null, ptr %i.x, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 0, ptr %i.z, align 8, !tbaa !9
  store i32 16, ptr %i.y, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !17
  br label %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_15UnknownFieldSetEEEPT_PS1_.exit

bb.i:                                             ; preds = %bb.h
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal11FieldParserINS1_24UnknownFieldParserHelperEEEPKcmRT_S5_PNS1_12ParseContextE:bb.a
bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %2, align 1, !tbaa !19      ; 3 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread: ; preds = %bb.c
  %i.f = zext nneg i8 %i.d to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %bb.d

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit: ; preds = %bb.c
  %i.h = zext i8 %i.d to i32
  %i.i = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %2, i32 noundef %i.h) ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  %.not35.not = icmp eq ptr %i.j, null
  br i1 %.not35.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit
  %.0.i58 = phi ptr [ %i.g, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread ], [ %i.j, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit ]
  %.sink.i57 = phi i64 [ %i.f, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread ], [ %i.k, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit ]
  %i.l = load ptr, ptr %1, align 8, !tbaa !94     ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7    ; 2 uses
  %i.o = and i32 %i.n, -2                         ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds i8, ptr %i.m, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !9    ; 3 uses
  %i.t = trunc i64 %i.s to i1
  br i1 %i.t, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i64 %i.s, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = inttoptr i64 %i.s to ptr
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.d ], [ %i.w, %bb.f ], [ %i.x, %bb.g ]
  %i.y = and i32 %i.n, 1
  %i.z = icmp eq i32 %i.y, 0                      ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !17 ; 5 uses
  br i1 %i.z, label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !19
  br label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit.i.i.i.i: ; preds = %bb.h, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i
  %i.af = phi i32 [ %i.ae, %bb.h ], [ 0, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i ]
  %i.ag = icmp eq i32 %i.ab, %i.af
  br i1 %i.ag, label %.thread.i.i.i.i, label %bb.i, !prof !12

.thread.i.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit.i.i.i.i
  %i.ah = add nsw i32 %i.ab, 1                    ; 2 uses
  tail call void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef %.0.i.i.i.i.i.i.i, i1 noundef zeroext %i.z, i32 noundef %i.ab, i32 noundef %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.pre.i.i.i.i = load i32, ptr %i.aa, align 4, !tbaa !17
  br label %_ZN6google8protobuf8internal24UnknownFieldParserHelper9AddVarintEjm.exit

bb.i:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %spec.select.i.i.i.i = select i1 %i.z, ptr %i.al, ptr %i.an
  %.pre12.i.i.i.i = add nsw i32 %i.ab, 1
  br label %_ZN6google8protobuf8internal24UnknownFieldParserHelper9AddVarintEjm.exit

_ZN6google8protobuf8internal24UnknownFieldParserHelper9AddVarintEjm.exit: ; preds = %.thread.i.i.i.i, %bb.i
  %.pre-phi.i.i.i.i = phi i32 [ %.pre12.i.i.i.i, %bb.i ], [ %i.ah, %.thread.i.i.i.i ]
  %i.ao = phi i32 [ %i.ab, %bb.i ], [ %.pre.i.i.i.i, %.thread.i.i.i.i ]
  %i.ap = phi ptr [ %spec.select.i.i.i.i, %bb.i ], [ %i.ak, %.thread.i.i.i.i ]
  store i32 %.pre-phi.i.i.i.i, ptr %i.aa, align 4, !tbaa !17
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.aq ; 3 uses
  store i32 %i.b, ptr %i.ar, align 8, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 0, ptr %i.as, align 4, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %.sink.i57, ptr %i.at, align 8, !tbaa !19
  br label %bb.aa

bb.j:                                             ; preds = %bb.b
  %.0.copyload.i.i = load i64, ptr %2, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load ptr, ptr %1, align 8, !tbaa !94    ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7  ; 2 uses
  %i.ay = and i32 %i.ax, -2                       ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i36, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = sext i32 %i.ay to i64
  %i.bb = getelementptr inbounds i8, ptr %i.aw, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !9  ; 3 uses
  %i.bd = trunc i64 %i.bc to i1
  br i1 %i.bd, label %bb.l, label %bb.m, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.be = add nsw i64 %i.bc, -1
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !13
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i36

bb.m:                                             ; preds = %bb.k
  %i.bh = inttoptr i64 %i.bc to ptr
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i36

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i36: ; preds = %bb.m, %bb.l, %bb.j
  %.0.i.i.i.i.i.i.i37 = phi ptr [ null, %bb.j ], [ %i.bg, %bb.l ], [ %i.bh, %bb.m ]
  %i.bi = and i32 %i.ax, 1
  %i.bj = icmp eq i32 %i.bi, 0                    ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 12 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !17 ; 5 uses
  br i1 %i.bj, label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit.i.i.i.i38, label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i36
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !19
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !19
  br label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit.i.i.i.i38

_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit.i.i.i.i38: ; preds = %bb.n, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i36
  %i.bp = phi i32 [ %i.bo, %bb.n ], [ 0, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i36 ]
  %i.bq = icmp eq i32 %i.bl, %i.bp
  br i1 %i.bq, label %.thread.i.i.i.i42, label %bb.o, !prof !12

.thread.i.i.i.i42:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit.i.i.i.i38
  %i.br = add nsw i32 %i.bl, 1                    ; 2 uses
  tail call void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef %.0.i.i.i.i.i.i.i37, i1 noundef zeroext %i.bj, i32 noundef %i.bl, i32 noundef %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.pre.i.i.i.i43 = load i32, ptr %i.bk, align 4, !tbaa !17
  br label %_ZN6google8protobuf8internal24UnknownFieldParserHelper10AddFixed64Ejm.exit

bb.o:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit.i.i.i.i38
  %i.bv = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %spec.select.i.i.i.i39 = select i1 %i.bj, ptr %i.bv, ptr %i.bx
  %.pre12.i.i.i.i40 = add nsw i32 %i.bl, 1
  br label %_ZN6google8protobuf8internal24UnknownFieldParserHelper10AddFixed64Ejm.exit

_ZN6google8protobuf8internal24UnknownFieldParserHelper10AddFixed64Ejm.exit: ; preds = %.thread.i.i.i.i42, %bb.o
  %.pre-phi.i.i.i.i41 = phi i32 [ %.pre12.i.i.i.i40, %bb.o ], [ %i.br, %.thread.i.i.i.i42 ]
  %i.by = phi i32 [ %i.bl, %bb.o ], [ %.pre.i.i.i.i43, %.thread.i.i.i.i42 ]
  %i.bz = phi ptr [ %spec.select.i.i.i.i39, %bb.o ], [ %i.bu, %.thread.i.i.i.i42 ]
  store i32 %.pre-phi.i.i.i.i41, ptr %i.bk, align 4, !tbaa !17
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds [16 x i8], ptr %i.bz, i64 %i.ca ; 3 uses
  store i32 %i.b, ptr %i.cb, align 8, !tbaa !20
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 2, ptr %i.cc, align 4, !tbaa !22
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %.0.copyload.i.i, ptr %i.cd, align 8, !tbaa !19
  br label %bb.aa

bb.p:                                             ; preds = %bb.b
  %i.ce = load ptr, ptr %1, align 8, !tbaa !94
  %i.cf = tail call noundef ptr @_ZN6google8protobuf15UnknownFieldSet18AddLengthDelimitedB5cxx11Ei(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, i32 noundef %i.b) ; 3 uses
  %i.cg = load i8, ptr %2, align 1, !tbaa !19     ; 2 uses
  %i.ch = zext i8 %i.cg to i32                    ; 2 uses
  %i.ci = icmp sgt i8 %i.cg, -1
  br i1 %i.ci, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread.i, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread.i: ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %bb.q

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i: ; preds = %bb.p
  %i.ck = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %2, i32 noundef %i.ch) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i32 } %i.ck, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i32 } %i.ck, 1
  %.not.i = icmp eq ptr %.fca.0.extract.i.i, null
  br i1 %.not.i, label %.critedge, label %bb.q

bb.q:                                             ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread.i
  %.0.i12.i = phi i32 [ %i.ch, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread.i ], [ %.fca.1.extract.i.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i ] ; 3 uses
  %storemerge.i11.i = phi ptr [ %i.cj, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread.i ], [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i ] ; 4 uses
  %i.cl = tail call noundef zeroext i1 @_ZN6google8protobuf8internal18EpsCopyInputStream14CanReadFromPtrEiPKc(ptr noundef nonnull align 8 dereferenceable(88) %3, i32 noundef %.0.i12.i, ptr noundef nonnull %storemerge.i11.i)
  br i1 %i.cl, label %_ZN6google8protobuf8internal24UnknownFieldParserHelper20ParseLengthDelimitedEjPKcPNS1_12ParseContextE.exit.thread61, label %_ZN6google8protobuf8internal24UnknownFieldParserHelper20ParseLengthDelimitedEjPKcPNS1_12ParseContextE.exit

_ZN6google8protobuf8internal24UnknownFieldParserHelper20ParseLengthDelimitedEjPKcPNS1_12ParseContextE.exit.thread61: ; preds = %bb.q
  %i.cm = sext i32 %.0.i12.i to i64               ; 3 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i64 noundef %i.cm, i8 noundef signext 0)
  %i.cn = load ptr, ptr %i.cf, align 8, !tbaa !26
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cn, ptr nonnull align 1 %storemerge.i11.i, i64 %i.cm, i1 false)
  %i.co = getelementptr inbounds i8, ptr %storemerge.i11.i, i64 %i.cm
  br label %bb.aa

_ZN6google8protobuf8internal24UnknownFieldParserHelper20ParseLengthDelimitedEjPKcPNS1_12ParseContextE.exit: ; preds = %bb.q
  %i.cp = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream18ReadStringFallbackEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull %storemerge.i11.i, i32 noundef %.0.i12.i, ptr noundef %i.cf) ; 2 uses
  %.not34 = icmp eq ptr %i.cp, null
  br i1 %.not34, label %.critedge, label %bb.aa

bb.r:                                             ; preds = %bb.b
  %i.cq = tail call noundef ptr @_ZN6google8protobuf8internal24UnknownFieldParserHelper10ParseGroupEjPKcPNS1_12ParseContextE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.b, ptr noundef %2, ptr noundef %3) ; 2 uses
  %.not33 = icmp eq ptr %i.cq, null
  br i1 %.not33, label %.critedge, label %bb.aa

bb.s:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.6, i32 noundef 1628) #22
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 12, ptr nonnull @.str.7)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit unwind label %bb.t

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit: ; preds = %bb.s
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.t

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #21
  unreachable

bb.t:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit, %bb.s
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #21
  unreachable

bb.u:                                             ; preds = %bb.b
  %.0.copyload.i.i45 = load i32, ptr %2, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ct = load ptr, ptr %1, align 8, !tbaa !94    ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 3 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !7  ; 2 uses
  %i.cw = and i32 %i.cv, -2                       ; 2 uses
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i46, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cy = sext i32 %i.cw to i64
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !9  ; 3 uses
  %i.db = trunc i64 %i.da to i1
  br i1 %i.db, label %bb.w, label %bb.x, !prof !12

bb.w:                                             ; preds = %bb.v
  %i.dc = add nsw i64 %i.da, -1
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !13
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i46

bb.x:                                             ; preds = %bb.v
  %i.df = inttoptr i64 %i.da to ptr
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i46

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i46: ; preds = %bb.x, %bb.w, %bb.u
  %.0.i.i.i.i.i.i.i47 = phi ptr [ null, %bb.u ], [ %i.de, %bb.w ], [ %i.df, %bb.x ]
  %i.dg = and i32 %i.cv, 1
  %i.dh = icmp eq i32 %i.dg, 0                    ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.ct, i64 12 ; 3 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !17 ; 5 uses
  br i1 %i.dh, label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit.i.i.i.i48, label %bb.y

bb.y:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i46
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !19
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !19
  br label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit.i.i.i.i48

_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit.i.i.i.i48: ; preds = %bb.y, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i46
  %i.dn = phi i32 [ %i.dm, %bb.y ], [ 0, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i46 ]
  %i.do = icmp eq i32 %i.dj, %i.dn
  br i1 %i.do, label %.thread.i.i.i.i52, label %bb.z, !prof !12

.thread.i.i.i.i52:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit.i.i.i.i48
  %i.dp = add nsw i32 %i.dj, 1                    ; 2 uses
  tail call void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef %.0.i.i.i.i.i.i.i47, i1 noundef zeroext %i.dh, i32 noundef %i.dj, i32 noundef %i.dp)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %.pre.i.i.i.i53 = load i32, ptr %i.di, align 4, !tbaa !17
  br label %_ZN6google8protobuf8internal24UnknownFieldParserHelper10AddFixed32Ejj.exit

bb.z:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit.i.i.i.i48
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %spec.select.i.i.i.i49 = select i1 %i.dh, ptr %i.dt, ptr %i.dv
  %.pre12.i.i.i.i50 = add nsw i32 %i.dj, 1
  br label %_ZN6google8protobuf8internal24UnknownFieldParserHelper10AddFixed32Ejj.exit

_ZN6google8protobuf8internal24UnknownFieldParserHelper10AddFixed32Ejj.exit: ; preds = %.thread.i.i.i.i52, %bb.z
  %.pre-phi.i.i.i.i51 = phi i32 [ %.pre12.i.i.i.i50, %bb.z ], [ %i.dp, %.thread.i.i.i.i52 ]
  %i.dw = phi i32 [ %i.dj, %bb.z ], [ %.pre.i.i.i.i53, %.thread.i.i.i.i52 ]
  %i.dx = phi ptr [ %spec.select.i.i.i.i49, %bb.z ], [ %i.ds, %.thread.i.i.i.i52 ]
  store i32 %.pre-phi.i.i.i.i51, ptr %i.di, align 4, !tbaa !17
  %i.dy = sext i32 %i.dw to i64
  %i.dz = getelementptr inbounds [16 x i8], ptr %i.dx, i64 %i.dy ; 3 uses
  store i32 %i.b, ptr %i.dz, align 8, !tbaa !20
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store i32 1, ptr %i.ea, align 4, !tbaa !22
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i32 %.0.copyload.i.i45, ptr %i.eb, align 8, !tbaa !19
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN6google8protobuf8internal24UnknownFieldParserHelper20ParseLengthDelimitedEjPKcPNS1_12ParseContextE.exit.thread61, %_ZN6google8protobuf8internal24UnknownFieldParserHelper9AddVarintEjm.exit, %bb.r, %_ZN6google8protobuf8internal24UnknownFieldParserHelper20ParseLengthDelimitedEjPKcPNS1_12ParseContextE.exit, %_ZN6google8protobuf8internal24UnknownFieldParserHelper10AddFixed32Ejj.exit, %_ZN6google8protobuf8internal24UnknownFieldParserHelper10AddFixed64Ejm.exit
  %.029 = phi ptr [ %.0.i58, %_ZN6google8protobuf8internal24UnknownFieldParserHelper9AddVarintEjm.exit ], [ %i.au, %_ZN6google8protobuf8internal24UnknownFieldParserHelper10AddFixed64Ejm.exit ], [ %i.cp, %_ZN6google8protobuf8internal24UnknownFieldParserHelper20ParseLengthDelimitedEjPKcPNS1_12ParseContextE.exit ], [ %i.cq, %bb.r ], [ %i.cs, %_ZN6google8protobuf8internal24UnknownFieldParserHelper10AddFixed32Ejj.exit ], [ %i.co, %_ZN6google8protobuf8internal24UnknownFieldParserHelper20ParseLengthDelimitedEjPKcPNS1_12ParseContextE.exit.thread61 ]
  br label %.critedge

.critedge:                                        ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit, %bb.b, %bb.r, %_ZN6google8protobuf8internal24UnknownFieldParserHelper20ParseLengthDelimitedEjPKcPNS1_12ParseContextE.exit, %bb.a, %bb.aa
  %.1 = phi ptr [ null, %bb.r ], [ %.029, %bb.aa ], [ null, %bb.b ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit ], [ null, %_ZN6google8protobuf8internal24UnknownFieldParserHelper20ParseLengthDelimitedEjPKcPNS1_12ParseContextE.exit ], [ null, %bb.a ], [ null, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

declare noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7RefreshEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

declare noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19FlushAndResetBufferEPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef) local_unnamed_addr #3

declare void @_ZN4absl12lts_202505124Cord9InlineRep9UnrefTreeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN4absl12lts_202505124Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0 align 2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena23AllocateFromStringBlockEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE20SwapFallbackWithTempEPNS0_5ArenaERS3_S5_S6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !7
  %i.b = and i32 %i.a, 1
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !17   ; 5 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE9MergeFromERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !17   ; 3 uses
  %i.h = add nsw i32 %i.g, %i.e                   ; 3 uses
  %i.i = load i32, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.j = and i32 %i.i, -2                         ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds i8, ptr %4, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !9    ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i64 %i.n, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.s = inttoptr i64 %i.n to ptr
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ null, %bb.b ], [ %i.r, %bb.d ], [ %i.s, %bb.e ]
  %i.t = and i32 %i.i, 1                          ; 2 uses
  %i.u = icmp eq i32 %i.t, 0                      ; 2 uses
  br i1 %i.u, label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i, label %bb.f
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE20SwapFallbackWithTempEPNS0_5ArenaERS3_S5_S6_:bb.a
  %.not.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CopyFromERKS3_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load i32, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.au = and i32 %i.at, -2                       ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds i8, ptr %0, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !9  ; 3 uses
  %i.az = trunc i64 %i.ay to i1
  br i1 %i.az, label %bb.m, label %bb.n, !prof !12

bb.m:                                             ; preds = %bb.l
  %i.ba = add nsw i64 %i.ay, -1
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !13
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bd = inttoptr i64 %i.ay to ptr
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i: ; preds = %bb.n, %bb.m, %bb.k
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.k ], [ %i.bc, %bb.m ], [ %i.bd, %bb.n ]
  %i.be = and i32 %i.at, 1                        ; 2 uses
  %i.bf = icmp eq i32 %i.be, 0                    ; 2 uses
  br i1 %i.bf, label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !19
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !19
  br label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i.i: ; preds = %bb.o, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i
  %i.bj = phi i32 [ %i.bi, %bb.o ], [ 0, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i ]
  %i.bk = icmp sgt i32 %i.as, %i.bj
  br i1 %i.bk, label %bb.p, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i.i, !prof !12

bb.p:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i.i.i.i, i1 noundef zeroext %i.bf, i32 noundef 0, i32 noundef %i.as)
  %.pre.i.i = load i32, ptr %0, align 8, !tbaa !7
  %.pre14.i.i = load i32, ptr %i.d, align 4, !tbaa !17
  %.pre15.i.i = and i32 %.pre.i.i, 1
  %i.bl = sext i32 %.pre14.i.i to i64
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i.i

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i.i: ; preds = %bb.p, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i.i
  %.pre-phi.i.i = phi i32 [ %i.be, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i.i ], [ %.pre15.i.i, %bb.p ]
  %i.bm = phi i64 [ 0, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i.i ], [ %i.bl, %bb.p ]
  %i.bn = icmp eq i32 %.pre-phi.i.i, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.0.i.i.i.i.i5 = select i1 %i.bn, ptr %i.bo, ptr %i.bq
  store i32 %i.as, ptr %i.d, align 4, !tbaa !17
  %i.br = getelementptr inbounds [16 x i8], ptr %.0.i.i.i.i.i5, i64 %i.bm
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.0.i.i.i.i.i.i6 = select i1 %i.aq, ptr %i.bs, ptr %i.bu
  %i.bv = icmp sgt i32 %i.as, 1
  br i1 %i.bv, label %bb.q, label %bb.r, !prof !41

bb.q:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i.i
  %i.bw = zext nneg i32 %i.as to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.bw, 4
  br label %_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i.i

bb.r:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i.i
  %i.bx = icmp eq i32 %i.as, 1
  br i1 %i.bx, label %_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i.i, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CopyFromERKS3_.exit

_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i.i: ; preds = %bb.r, %bb.q
  %.idx.i.i.sink.i.i.i = phi i64 [ %.idx.i.i.i.i.i, %bb.q ], [ 16, %bb.r ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.br, ptr nonnull align 8 %.0.i.i.i.i.i.i6, i64 %.idx.i.i.sink.i.i.i, i1 false), !alias.scope !109
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CopyFromERKS3_.exit

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CopyFromERKS3_.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE9MergeFromERKS3_.exit, %bb.j, %bb.r, %_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE15UnsafeArenaSwapEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE15UnsafeArenaSwapEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !7
  %i.d = xor i32 %i.c, %i.b
  %i.e = and i32 %i.d, 1                          ; 2 uses
  %i.f = xor i32 %i.e, %i.b
  store i32 %i.f, ptr %0, align 8, !tbaa !7
  %i.g = load i32, ptr %1, align 4, !tbaa !7
  %i.h = xor i32 %i.g, %i.e
  store i32 %i.h, ptr %1, align 4, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.k = load <8 x i8>, ptr %i.j, align 4, !tbaa !19, !alias.scope !116, !noalias !113
  %i.l = load <8 x i8>, ptr %i.i, align 4, !tbaa !19, !alias.scope !113, !noalias !116
  store <8 x i8> %i.k, ptr %i.i, align 4, !tbaa !19, !alias.scope !113, !noalias !116
  store <8 x i8> %i.l, ptr %i.j, align 4, !tbaa !19, !alias.scope !116, !noalias !113
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = load <4 x i8>, ptr %i.m, align 4, !tbaa !19, !alias.scope !116, !noalias !113
  %i.o = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !19, !alias.scope !113, !noalias !116
  store <4 x i8> %i.n, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !19, !alias.scope !113, !noalias !116
  store <4 x i8> %i.o, ptr %i.m, align 4, !tbaa !19, !alias.scope !116, !noalias !113
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeINS0_12UnknownFieldELi16EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeINS0_12UnknownFieldELi16EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741815
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeINS0_12UnknownFieldELi16EEEiii.exit, label %.thread, !prof !118

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 0, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = or disjoint i32 %i.g, 1
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeINS0_12UnknownFieldELi16EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeINS0_12UnknownFieldELi16EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 1, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 4
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  %i.l = add nuw nsw i64 %i.j, 16                 ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeINS0_12UnknownFieldELi16EEEiii.exit
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #18
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeINS0_12UnknownFieldELi16EEEiii.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.n, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !19
  %i.p = icmp sgt i32 %3, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.0.i.i.i = select i1 %2, ptr %i.r, ptr %i.t
  %i.u = zext nneg i32 %3 to i64
  %i.v = shl nuw nsw i64 %i.u, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 8 %.0.i.i.i, i64 %i.v, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19   ; 8 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !19
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 4
  %i.ab = add nsw i64 %i.aa, 16                   ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #20
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !119
  %i.af = load i64, ptr %1, align 8, !tbaa !122
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !41

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 16, !tbaa !149 ; 5 uses
  %i.aj = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ab, i1 true)
  %i.al = sub nuw nsw i64 59, %i.ak               ; 2 uses
  %i.am = load i8, ptr %i.ai, align 8, !tbaa !150 ; 3 uses
  %i.an = zext i8 %i.am to i64                    ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %i.al, %i.an
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !41

bb.k:                                             ; preds = %bb.j
  %i.ao = lshr exact i64 %i.ab, 3                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !151 ; 2 uses
  %i.ar = icmp ugt i8 %i.am, 1
  br i1 %i.ar, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !41

bb.l:                                             ; preds = %bb.k
  %i.as = icmp eq i8 %i.am, 1
  br i1 %i.as, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !152
  store ptr %i.at, ptr %i.x, align 8, !tbaa !152
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %i.an, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.aq, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ai, align 8, !tbaa !150
  %i.au = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.ao, %i.au
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.av = phi i64 [ %i.au, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.av, 3      ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.ab, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aw, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !152
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.x, ptr %i.ap, align 8, !tbaa !151
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 64)
  %i.ax = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.ax, ptr %i.ai, align 8, !tbaa !150
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !151
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.al ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !152
  store ptr %i.bb, ptr %i.x, align 8, !tbaa !154
  store ptr %i.x, ptr %i.ba, align 8, !tbaa !152
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.bc = load i32, ptr %0, align 8, !tbaa !7
  %i.bd = or i32 %i.bc, 1
  store i32 %i.bd, ptr %0, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.be, align 8, !tbaa !19
  ret void
}

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #12

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #3

declare noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINS0_15UnknownFieldSetEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #3

declare noundef i64 @_ZNK6google8protobuf2io16CordOutputStream9ByteCountEv(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #3

declare noundef zeroext i1 @_ZN6google8protobuf2io16CordOutputStream4NextEPPvPi(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef) unnamed_addr #3

declare { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef, i32 noundef) local_unnamed_addr #3

declare { ptr, i32 } @_ZN6google8protobuf8internal15ReadTagFallbackEPKcj(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal24UnknownFieldParserHelper10ParseGroupEjPKcPNS1_12ParseContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.google::protobuf::internal::UnknownFieldParserHelper", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !156  ; 2 uses
  %i.c = add nsw i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !156
  %i.d = icmp slt i32 %i.b, 1
  br i1 %i.d, label %_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_24UnknownFieldParserHelper10ParseGroupEjPKcPS2_EUlS6_E_EES6_S6_jRKT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = shl i32 %1, 3
  %i.f = or disjoint i32 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !97
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.j = load ptr, ptr %0, align 8, !tbaa !94
  %i.k = tail call noundef ptr @_ZN6google8protobuf15UnknownFieldSet8AddGroupEi(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i32 noundef %1)
  store ptr %i.k, ptr %4, align 8, !tbaa !94
  %i.l = call noundef ptr @_ZN6google8protobuf8internal16WireFormatParserINS1_24UnknownFieldParserHelperEEEPKcRT_S5_PNS1_12ParseContextE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %2, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.m = load <2 x i32>, ptr %i.a, align 8, !tbaa !3
  %i.n = add nsw <2 x i32> %i.m, <i32 1, i32 -1>
  store <2 x i32> %i.n, ptr %i.a, align 8, !tbaa !3
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !104
  %i.q = icmp eq i32 %i.p, %i.f
  store i32 0, ptr %i.o, align 8, !tbaa !104
  %..i = select i1 %i.q, ptr %i.l, ptr null, !prof !41
  br label %_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_24UnknownFieldParserHelper10ParseGroupEjPKcPS2_EUlS6_E_EES6_S6_jRKT_.exit

_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_24UnknownFieldParserHelper10ParseGroupEjPKcPS2_EUlS6_E_EES6_S6_jRKT_.exit: ; preds = %bb.a, %bb.b
  %.1.i = phi ptr [ %..i, %bb.b ], [ null, %bb.a ]
  ret ptr %.1.i
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #15

declare { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef, i32 noundef) local_unnamed_addr #3

declare { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN6google8protobuf8internal18EpsCopyInputStream14CanReadFromPtrEiPKc(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream18ReadStringFallbackEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSN6google8protobuf8internal30TaggedInternalMetadataResolverILj1EEE", !4, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSN6google8protobuf8internal16InternalMetadataE", !11, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!14, !15, i64 0}
!14 = !{!"_ZTSN6google8protobuf8internal16InternalMetadata13ContainerBaseE", !15, i64 0}
!15 = !{!"p1 _ZTSN6google8protobuf5ArenaE", !16, i64 0}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!18, !4, i64 4}
!18 = !{!"_ZTSN6google8protobuf8internal6SooRepILm16EEE", !8, i64 0, !4, i64 4, !5, i64 8}
!19 = !{!5, !5, i64 0}
!20 = !{!21, !4, i64 0}
!21 = !{!"_ZTSN6google8protobuf12UnknownFieldE", !4, i64 0, !4, i64 4, !5, i64 8}
!22 = !{!21, !4, i64 4}
!23 = !{!24, !25, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !25, i64 0}
!25 = !{!"p1 omnipotent char", !16, i64 0}
!26 = !{!27, !25, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !11, i64 8, !5, i64 16}
!28 = !{!27, !11, i64 8}
!29 = distinct !{ptr @_ZN6google8protobuf15UnknownFieldSetD2Ev, ptr @_ZN6google8protobuf12UnknownField6DeleteEv, null}
!30 = !{!31, !32, i64 0}
!31 = !{!"_ZTSN6google8protobuf15UnknownFieldSetE", !32, i64 0, !33, i64 8}
!32 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0}
!33 = !{!"_ZTSN6google8protobuf8internal14FieldWithArenaINS0_13RepeatedFieldINS0_12UnknownFieldEEEEE", !5, i64 0, !10, i64 16}
!34 = !{ptr @_ZN6google8protobuf15UnknownFieldSetD2Ev, ptr @_ZN6google8protobuf12UnknownField6DeleteEv}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = distinct !{ptr @_ZN6google8protobuf15UnknownFieldSetD2Ev, null}
!38 = !{ptr @_ZN6google8protobuf15UnknownFieldSetD2Ev}
!39 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 8, !19}
!40 = !{!11, !11, i64 0}
!41 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!42 = !{!43, !45}
!43 = distinct !{!43, !44, !"_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18UninitializedCopyNEPKS2_iPS2_: argument 0"}
!44 = distinct !{!44, !"_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18UninitializedCopyNEPKS2_iPS2_"}
!45 = distinct !{!45, !44, !"_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18UninitializedCopyNEPKS2_iPS2_: argument 1"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN6google8protobuf8internal7memswapILm12EEEvPcS3_: argument 0"}
!48 = distinct !{!48, !"_ZN6google8protobuf8internal7memswapILm12EEEvPcS3_"}
!49 = !{!50}
!50 = distinct !{!50, !48, !"_ZN6google8protobuf8internal7memswapILm12EEEvPcS3_: argument 1"}
!51 = distinct !{null, ptr @_ZNK6google8protobuf15UnknownFieldSet13SpaceUsedLongEv}
!52 = distinct !{null}
!53 = distinct !{!53, !36}
!54 = distinct !{!54, !36}
!55 = distinct !{!55, !36}
!56 = !{!57, !59, i64 36}
!57 = !{!"_ZTSN6google8protobuf2io16CodedInputStreamE", !25, i64 0, !25, i64 8, !58, i64 16, !4, i64 24, !4, i64 28, !4, i64 32, !59, i64 36, !59, i64 37, !59, i64 38, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !60, i64 64, !61, i64 72}
!58 = !{!"p1 _ZTSN6google8protobuf2io19ZeroCopyInputStreamE", !16, i64 0}
!59 = !{!"bool", !5, i64 0}
!60 = !{!"p1 _ZTSN6google8protobuf14DescriptorPoolE", !16, i64 0}
!61 = !{!"p1 _ZTSN6google8protobuf14MessageFactoryE", !16, i64 0}
!62 = !{i8 0, i8 2}
!63 = !{}
!64 = distinct !{null}
!65 = !{!57, !58, i64 16}
!66 = !{!57, !4, i64 40}
!67 = !{!57, !4, i64 44}
!68 = !{!57, !4, i64 48}
!69 = !{!57, !4, i64 52}
!70 = !{!57, !4, i64 56}
!71 = !{!72, !25, i64 0}
!72 = !{!"_ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !25, i64 0, !25, i64 8, !5, i64 16, !73, i64 48, !59, i64 56, !59, i64 57, !59, i64 58, !59, i64 59}
!73 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !16, i64 0}
!74 = !{!72, !25, i64 8}
!75 = !{!72, !73, i64 48}
!76 = !{!72, !59, i64 56}
!77 = !{!72, !59, i64 57}
!78 = !{!72, !59, i64 58}
!79 = !{!72, !59, i64 59}
!80 = !{!81, !25, i64 64}
!81 = !{!"_ZTSN6google8protobuf2io17CodedOutputStreamE", !72, i64 0, !25, i64 64, !11, i64 72}
!82 = !{!25, !25, i64 0}
!83 = !{!81, !11, i64 72}
!84 = !{!16, !16, i64 0}
!85 = !{i64 0, i64 16, !19}
!86 = !{!87, !5, i64 12}
!87 = !{!"_ZTSN4absl12lts_2025051213cord_internal7CordRepE", !11, i64 0, !88, i64 8, !5, i64 12, !5, i64 13}
!88 = !{!"_ZTSN4absl12lts_2025051213cord_internal16RefcountAndFlagsE", !89, i64 0}
!89 = !{!"_ZTSSt6atomicIiE", !90, i64 0}
!90 = !{!"_ZTSSt13__atomic_baseIiE", !4, i64 0}
!91 = !{!"branch_weights", i32 1, i32 1999}
!92 = !{!"branch_weights", i32 0, i32 1}
!93 = distinct !{!93, !36}
!94 = !{!95, !96, i64 0}
!95 = !{!"_ZTSN6google8protobuf8internal24UnknownFieldParserHelperE", !96, i64 0}
!96 = !{!"p1 _ZTSN6google8protobuf15UnknownFieldSetE", !16, i64 0}
!97 = !{!98, !4, i64 92}
!98 = !{!"_ZTSN6google8protobuf8internal12ParseContextE", !99, i64 0, !4, i64 88, !4, i64 92, !100, i64 96}
!99 = !{!"_ZTSN6google8protobuf8internal18EpsCopyInputStreamE", !25, i64 0, !25, i64 8, !25, i64 16, !4, i64 24, !4, i64 28, !58, i64 32, !5, i64 40, !11, i64 72, !4, i64 80, !4, i64 84}
!100 = !{!"_ZTSN6google8protobuf8internal12ParseContext4DataE", !60, i64 0, !61, i64 8}
!101 = !{!99, !25, i64 0}
!102 = !{!99, !25, i64 8}
!103 = !{!99, !4, i64 28}
!104 = !{!99, !4, i64 80}
!105 = !{!106, !108}
!106 = distinct !{!106, !107, !"_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18UninitializedCopyNEPKS2_iPS2_: argument 0"}
!107 = distinct !{!107, !"_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18UninitializedCopyNEPKS2_iPS2_"}
!108 = distinct !{!108, !107, !"_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18UninitializedCopyNEPKS2_iPS2_: argument 1"}
!109 = !{!110, !112}
!110 = distinct !{!110, !111, !"_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18UninitializedCopyNEPKS2_iPS2_: argument 0"}
!111 = distinct !{!111, !"_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18UninitializedCopyNEPKS2_iPS2_"}
!112 = distinct !{!112, !111, !"_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18UninitializedCopyNEPKS2_iPS2_: argument 1"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN6google8protobuf8internal7memswapILm12EEEvPcS3_: argument 0"}
!115 = distinct !{!115, !"_ZN6google8protobuf8internal7memswapILm12EEEvPcS3_"}
!116 = !{!117}
!117 = distinct !{!117, !115, !"_ZN6google8protobuf8internal7memswapILm12EEEvPcS3_: argument 1"}
!118 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!119 = !{!120, !11, i64 8}
!120 = !{!"_ZTSN6google8protobuf8internal15ThreadSafeArena11ThreadCacheE", !11, i64 0, !11, i64 8, !121, i64 16}
!121 = !{!"p1 _ZTSN6google8protobuf8internal11SerialArenaE", !16, i64 0}
!122 = !{!123, !11, i64 0}
!123 = !{!"_ZTSN6google8protobuf8internal15ThreadSafeArenaE", !11, i64 0, !124, i64 8, !125, i64 16, !128, i64 24, !129, i64 32, !132, i64 40, !16, i64 160}
!124 = !{!"_ZTSN6google8protobuf8internal25TaggedAllocationPolicyPtrE", !11, i64 0}
!125 = !{!"_ZTSSt6atomicIPN6google8protobuf8internal15ThreadSafeArena16SerialArenaChunkEE", !126, i64 0}
!126 = !{!"_ZTSSt13__atomic_baseIPN6google8protobuf8internal15ThreadSafeArena16SerialArenaChunkEE", !127, i64 0}
!127 = !{!"p1 _ZTSN6google8protobuf8internal15ThreadSafeArena16SerialArenaChunkE", !16, i64 0}
!128 = !{!"_ZTSN6google8protobuf8internal26ThreadSafeArenaStatsHandleE"}
!129 = !{!"_ZTSN4absl12lts_202505125MutexE", !130, i64 0}
!130 = !{!"_ZTSSt6atomicIlE", !131, i64 0}
!131 = !{!"_ZTSSt13__atomic_baseIlE", !11, i64 0}
!132 = !{!"_ZTSN6google8protobuf8internal11SerialArenaE", !5, i64 0, !25, i64 8, !133, i64 16, !136, i64 24, !25, i64 32, !138, i64 40, !140, i64 48, !142, i64 56, !145, i64 64, !138, i64 72, !146, i64 80, !138, i64 112}
!133 = !{!"_ZTSSt6atomicIPN6google8protobuf8internal10ArenaBlockEE", !134, i64 0}
!134 = !{!"_ZTSSt13__atomic_baseIPN6google8protobuf8internal10ArenaBlockEE", !135, i64 0}
!135 = !{!"p1 _ZTSN6google8protobuf8internal10ArenaBlockE", !16, i64 0}
!136 = !{!"_ZTSSt6atomicIPcE", !137, i64 0}
!137 = !{!"_ZTSSt13__atomic_baseIPcE", !25, i64 0}
!138 = !{!"_ZTSSt6atomicImE", !139, i64 0}
!139 = !{!"_ZTSSt13__atomic_baseImE", !11, i64 0}
!140 = !{!"p2 _ZTSN6google8protobuf8internal11SerialArena11CachedBlockE", !141, i64 0}
!141 = !{!"any p2 pointer", !16, i64 0}
!142 = !{!"_ZTSSt6atomicIPN6google8protobuf8internal11StringBlockEE", !143, i64 0}
!143 = !{!"_ZTSSt13__atomic_baseIPN6google8protobuf8internal11StringBlockEE", !144, i64 0}
!144 = !{!"p1 _ZTSN6google8protobuf8internal11StringBlockE", !16, i64 0}
!145 = !{!"p1 _ZTSN6google8protobuf8internal15ThreadSafeArenaE", !16, i64 0}
!146 = !{!"_ZTSN6google8protobuf8internal7cleanup9ChunkListE", !147, i64 0, !148, i64 8, !148, i64 16, !25, i64 24}
!147 = !{!"p1 _ZTSN6google8protobuf8internal7cleanup9ChunkList5ChunkE", !16, i64 0}
!148 = !{!"p1 _ZTSN6google8protobuf8internal7cleanup11CleanupNodeE", !16, i64 0}
!149 = !{!120, !121, i64 16}
!150 = !{!132, !5, i64 0}
!151 = !{!132, !140, i64 48}
!152 = !{!153, !153, i64 0}
!153 = !{!"p1 _ZTSN6google8protobuf8internal11SerialArena11CachedBlockE", !16, i64 0}
!154 = !{!155, !153, i64 0}
!155 = !{!"_ZTSN6google8protobuf8internal11SerialArena11CachedBlockE", !153, i64 0}
!156 = !{!98, !4, i64 88}
end_hunk_2
