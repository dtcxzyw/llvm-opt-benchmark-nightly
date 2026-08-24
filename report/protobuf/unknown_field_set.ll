Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/unknown_field_set?download=true
inline.NumInlined: 521
inline.NumDeleted: 274
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6google8protobuf15UnknownFieldSet9MergeFromERKS1_
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
  br label %bb.p

bb.o:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i12
  %i.bl = add nsw i32 %i.bg, 1                    ; 2 uses
  tail call void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef %.0.i.i.i.i.i11, i1 noundef zeroext %i.bf, i32 noundef %i.bg, i32 noundef %i.bl)
  %i.bm = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.pre34.i.i = load i32, ptr %i.e, align 4, !tbaa !17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit._crit_edge.i.i
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
  br i1 %.0.i.i, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE3AddES2_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE3AddES2_.exit

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE3AddES2_.exit: ; preds = %bb.p, %bb.q
  %.phi.trans.insert.i.i.sink = phi ptr [ %i.bu, %bb.q ], [ %.phi.trans.insert.i.i, %bb.p ]
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
  %i.d = inttoptr i64 %.sroa.2.0.copyload to ptr  ; 3 uses
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
  %i.x = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18 ; 4 uses
  store ptr null, ptr %i.x, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 0, ptr %i.z, align 8, !tbaa !9
  store i32 16, ptr %i.y, align 8, !tbaa !7
  br label %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_15UnknownFieldSetEEEPT_PS1_.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef 32) ; 4 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ad = ptrtoint ptr %1 to i64
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !9
  store i32 16, ptr %i.ab, align 8, !tbaa !7
  br label %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_15UnknownFieldSetEEEPT_PS1_.exit

_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_15UnknownFieldSetEEEPT_PS1_.exit: ; preds = %_ZN6google8protobuf5Arena14InternalHelperINS0_15UnknownFieldSetEE3NewEv.exit, %bb.i
  %i.ae = phi ptr [ %i.x, %_ZN6google8protobuf5Arena14InternalHelperINS0_15UnknownFieldSetEE3NewEv.exit ], [ %i.aa, %bb.i ] ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %2, align 4, !tbaa !17
  %3 = load ptr, ptr %.sroa.2.0..0.4.sroa_idx, align 8, !tbaa !19
  tail call void @_ZN6google8protobuf15UnknownFieldSet9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.af = ptrtoint ptr %i.ae to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_15UnknownFieldSetEEEPT_PS1_.exit, %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS8_EEEPT_PS1_DpOT0_.exit
  %.sroa.2.0 = phi i64 [ %.sroa.2.0.copyload, %bb.a ], [ %i.v, %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS8_EEEPT_PS1_DpOT0_.exit ], [ %i.af, %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_15UnknownFieldSetEEEPT_PS1_.exit ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.2.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf15UnknownFieldSet19MergeFromAndDestroyEPS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i64 %i.b, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  br label %_ZN6google8protobuf15UnknownFieldSet5arenaEv.exit

bb.c:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %i.b to ptr
  br label %_ZN6google8protobuf15UnknownFieldSet5arenaEv.exit

_ZN6google8protobuf15UnknownFieldSet5arenaEv.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !9    ; 3 uses
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %_ZN6google8protobuf15UnknownFieldSet5arenaEv.exit
  %i.k = add nsw i64 %i.i, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13
  br label %_ZN6google8protobuf15UnknownFieldSet5arenaEv.exit11

bb.e:                                             ; preds = %_ZN6google8protobuf15UnknownFieldSet5arenaEv.exit
  %i.n = inttoptr i64 %i.i to ptr
  br label %_ZN6google8protobuf15UnknownFieldSet5arenaEv.exit11

_ZN6google8protobuf15UnknownFieldSet5arenaEv.exit11: ; preds = %bb.d, %bb.e
  %.0.i.i.i10 = phi ptr [ %i.m, %bb.d ], [ %i.n, %bb.e ]
  %.not = icmp eq ptr %.0.i.i.i, %.0.i.i.i10
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf15UnknownFieldSet5arenaEv.exit11
  tail call void @_ZN6google8protobuf15UnknownFieldSet9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.r

bb.g:                                             ; preds = %_ZN6google8protobuf15UnknownFieldSet5arenaEv.exit11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !17   ; 4 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE4SwapEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull %i.p)
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.t = load i32, ptr %i.p, align 8, !tbaa !7
  %i.u = and i32 %i.t, 1
  %i.v = icmp eq i32 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !17   ; 5 uses
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE9MergeFromERKS3_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = add nsw i32 %i.x, %i.r                   ; 3 uses
  %i.z = load i32, ptr %i.o, align 8, !tbaa !7    ; 2 uses
  %i.aa = and i32 %i.z, -2                        ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = sext i32 %i.aa to i64
  %i.ad = getelementptr inbounds i8, ptr %i.o, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !9  ; 3 uses
  %i.af = trunc i64 %i.ae to i1
  br i1 %i.af, label %bb.l, label %bb.m, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.ag = add nsw i64 %i.ae, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !13
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.aj = inttoptr i64 %i.ae to ptr
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i: ; preds = %bb.m, %bb.l, %bb.j
  %.0.i.i.i.i.i.i = phi ptr [ null, %bb.j ], [ %i.ai, %bb.l ], [ %i.aj, %bb.m ]
  %i.ak = and i32 %i.z, 1                         ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0                    ; 2 uses
  br i1 %i.al, label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !19
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !19
  br label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i: ; preds = %bb.n, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i
  %i.ap = phi i32 [ %i.ao, %bb.n ], [ 0, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i ]
  %i.aq = icmp sgt i32 %i.y, %i.ap
  br i1 %i.aq, label %bb.o, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i, !prof !12

bb.o:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef %.0.i.i.i.i.i.i, i1 noundef zeroext %i.al, i32 noundef %i.r, i32 noundef %i.y)
  %.pre.i = load i32, ptr %i.o, align 8, !tbaa !7
  %.pre14.i = load i32, ptr %i.q, align 4, !tbaa !17
  %.pre15.i = and i32 %.pre.i, 1
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i: ; preds = %bb.o, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i
  %.pre-phi.i = phi i32 [ %i.ak, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i ], [ %.pre15.i, %bb.o ]
  %i.ar = phi i32 [ %i.r, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i ], [ %.pre14.i, %bb.o ]
  %i.as = icmp eq i32 %.pre-phi.i, 0
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.0.i.i.i.i = select i1 %i.as, ptr %i.at, ptr %i.av
  store i32 %i.y, ptr %i.q, align 4, !tbaa !17
  %i.aw = sext i32 %i.ar to i64
  %i.ax = getelementptr inbounds [16 x i8], ptr %.0.i.i.i.i, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.0.i.i.i.i.i = select i1 %i.v, ptr %i.ay, ptr %i.ba
  %i.bb = icmp sgt i32 %i.x, 1
  br i1 %i.bb, label %bb.p, label %bb.q, !prof !41

bb.p:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i
  %i.bc = zext nneg i32 %i.x to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bc, 4
  br label %_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i

bb.q:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i
  %i.bd = icmp eq i32 %i.x, 1
  br i1 %i.bd, label %_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE9MergeFromERKS3_.exit

_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i: ; preds = %bb.q, %bb.p
  %.idx.i.i.sink.i.i = phi i64 [ %.idx.i.i.i.i, %bb.p ], [ 16, %bb.q ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr nonnull align 8 %.0.i.i.i.i.i, i64 %.idx.i.i.sink.i.i, i1 false), !alias.scope !42
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE9MergeFromERKS3_.exit

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE9MergeFromERKS3_.exit: ; preds = %bb.i, %bb.q, %_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i
  store i32 0, ptr %i.w, align 4, !tbaa !17
  br label %bb.r

bb.r:                                             ; preds = %bb.h, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE9MergeFromERKS3_.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE4SwapEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::NoDestructor", align 8 ; 6 uses
  %3 = alloca %"class.google::protobuf::RepeatedField", align 8 ; 10 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.c = and i32 %i.b, -2                         ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9    ; 3 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i64 %i.g, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.l = inttoptr i64 %i.g to ptr
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.l, %bb.e ], [ %i.k, %bb.d ] ; 3 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !7      ; 3 uses
  %i.n = and i32 %i.m, -2                         ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13.thread, label %bb.f

end_hunk_0
