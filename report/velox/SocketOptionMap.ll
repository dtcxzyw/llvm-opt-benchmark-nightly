inline.NumInlined: 204
inline.NumDeleted: 157
begin_hunk_0_@_ZNK5folly15SocketOptionKey5applyENS_13NetworkSocketERKNS_17SocketOptionValueE:bb.a
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = tail call noundef zeroext i1 @_ZNK5folly17SocketOptionValue6hasIntEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.c = tail call noundef i32 @_ZNK5folly17SocketOptionValue5asIntEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
  store i32 %i.c, ptr %i.a, align 4, !tbaa !7
  %i.d = load i32, ptr %0, align 4, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32
  %i.g = call noundef i32 @_ZN5folly6netops10setsockoptENS_13NetworkSocketEiiPKvj(i32 %1, i32 noundef %i.d, i32 noundef %i.f, ptr noundef nonnull %i.a, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5folly17SocketOptionValue8asStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !33
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !34   ; 8 uses
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = icmp slt i64 %i.l, 0
  br i1 %i.n, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.o = add nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !35

.noexc6.i:                                        ; preds = %bb.e
  call void @_ZSt17__throw_bad_allocv() #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.e
  %i.q = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #18 ; 2 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !22
  store i64 %i.l, ptr %i.i, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.c
  %i.r = phi ptr [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.i, %bb.c ] ; 3 uses
  switch i64 %i.l, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.s = load i8, ptr %i.j, align 1, !tbaa !26
  store i8 %i.s, ptr %i.r, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.l, ptr %i.t, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.l
  store i8 0, ptr %i.u, align 1, !tbaa !26
  %i.v = load i32, ptr %0, align 4, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !32
  %i.y = load ptr, ptr %3, align 8, !tbaa !22
  %i.z = load i64, ptr %i.t, align 8, !tbaa !34
  %i.aa = trunc i64 %i.z to i32
  %i.ab = invoke noundef i32 @_ZN5folly6netops10setsockoptENS_13NetworkSocketEiiPKvj(i32 %1, i32 noundef %i.v, i32 noundef %i.x, ptr noundef %i.y, i32 noundef %i.aa)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ac = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.i
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ae = load i64, ptr %i.i, align 8, !tbaa !26
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.i
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.i
  %i.aj = load i64, ptr %i.i, align 8, !tbaa !26
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %i.ag

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret i32 %.0
}

declare noundef zeroext i1 @_ZNK5folly17SocketOptionValue6hasIntEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

declare noundef i32 @_ZNK5folly17SocketOptionValue5asIntEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

declare noundef i32 @_ZN5folly6netops10setsockoptENS_13NetworkSocketEiiPKvj(i32, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5folly17SocketOptionValue8asStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly18applySocketOptionsENS_13NetworkSocketERKSt3mapINS_15SocketOptionKeyENS_17SocketOptionValueESt4lessIS2_ESaISt4pairIKS2_S3_EEENS2_8ApplyPosE(i32 %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1, i32 noundef %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.017.026 = phi ptr [ %i.k, %bb.c ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !37
  %i.g = icmp eq i32 %i.f, %2
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 48
  %i.j = tail call noundef i32 @_ZNK5folly15SocketOptionKey5applyENS_13NetworkSocketERKNS_17SocketOptionValueE(ptr noundef nonnull align 4 dereferenceable(12) %i.h, i32 %0, ptr noundef nonnull align 8 dereferenceable(40) %i.i)
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.k = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.017.026) #19 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.c
  br i1 %i.l, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %bb.b
  %i.m = tail call ptr @__errno_location() #20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.d
  %i.o = phi i32 [ %i.n, %bb.d ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i32 %i.o
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZN5folly21validateSocketOptionsERKSt3mapINS_15SocketOptionKeyENS_17SocketOptionValueESt4lessIS1_ESaISt4pairIKS1_S2_EEEtNS1_8ApplyPosE(ptr dead_on_unwind noalias writable sret(%"class.std::map") align 8 initializes((8, 12), (16, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1, i16 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Rb_tree<folly::SocketOptionKey, std::pair<const folly::SocketOptionKey, folly::SocketOptionValue>, std::_Select1st<std::pair<const folly::SocketOptionKey, folly::SocketOptionValue>>, std::less<folly::SocketOptionKey>>::_Alloc_node", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.a, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %._crit_edge, label %.lr.ph.a

._crit_edge:                                      ; preds = %_ZNSt3mapIN5folly15SocketOptionKeyENS0_17SocketOptionValueESt4lessIS1_ESaISt4pairIKS1_S2_EEE6insertERKS7_.exit, %bb.a
  ret void

.lr.ph.a:                                         ; preds = %bb.a, %_ZNSt3mapIN5folly15SocketOptionKeyENS0_17SocketOptionValueESt4lessIS1_ESaISt4pairIKS1_S2_EEE6insertERKS7_.exit
  %.sroa.015.019 = phi ptr [ %i.ag, %_ZNSt3mapIN5folly15SocketOptionKeyENS0_17SocketOptionValueESt4lessIS1_ESaISt4pairIKS1_S2_EEE6insertERKS7_.exit ], [ %i.g, %bb.a ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !37
  %.not = icmp eq i32 %3, %i.l
  br i1 %.not, label %bb.b, label %_ZNSt3mapIN5folly15SocketOptionKeyENS0_17SocketOptionValueESt4lessIS1_ESaISt4pairIKS1_S2_EEE6insertERKS7_.exit

bb.b:                                             ; preds = %.lr.ph.a
  %.pr = load i32, ptr %i.j, align 8, !tbaa !49   ; 7 uses
  switch i16 %2, label %thread-pre-split [
    i16 2, label %5
    i16 10, label %6
  ]

5:                                                ; preds = %bb.b
  switch i32 %.pr, label %_ZNSt3mapIN5folly15SocketOptionKeyENS0_17SocketOptionValueESt4lessIS1_ESaISt4pairIKS1_S2_EEE6insertERKS7_.exit [
    i32 0, label %.fold.split
    i32 17, label %.fold.split
    i32 1, label %.fold.split
  ]

6:                                                ; preds = %bb.b
  switch i32 %.pr, label %_ZNSt3mapIN5folly15SocketOptionKeyENS0_17SocketOptionValueESt4lessIS1_ESaISt4pairIKS1_S2_EEE6insertERKS7_.exit [
    i32 41, label %.fold.split
    i32 17, label %.fold.split
    i32 1, label %.fold.split
  ]

thread-pre-split:                                 ; preds = %bb.b
  switch i32 %.pr, label %_ZNSt3mapIN5folly15SocketOptionKeyENS0_17SocketOptionValueESt4lessIS1_ESaISt4pairIKS1_S2_EEE6insertERKS7_.exit [
    i32 17, label %.fold.split
    i32 1, label %.fold.split
  ]

.fold.split:                                      ; preds = %thread-pre-split, %thread-pre-split, %6, %6, %5, %5, %5, %6
  %.02123.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !50 ; 2 uses
  %.not24.i.i.i = icmp eq ptr %.02123.i.i.i, null
  br i1 %.not24.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.fold.split
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 36
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.02125.i.i.i = phi ptr [ %.02123.i.i.i, %.lr.ph.i.i.i ], [ %.021.i.i.i, %bb.c ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02125.i.i.i, i64 32
  %i.p = load i32, ptr %i.o, align 4, !tbaa !29   ; 3 uses
  %i.q = icmp eq i32 %.pr, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %.02125.i.i.i, i64 36
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = icmp slt i32 %i.n, %i.s
  %i.u = icmp slt i32 %.pr, %i.p
  %.0.i.i.i.i.i = select i1 %i.q, i1 %i.t, i1 %i.u ; 2 uses
  %.in.v.i.i.i = select i1 %.0.i.i.i.i.i, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02125.i.i.i, i64 %.in.v.i.i.i
  %.021.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.021.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.c, !llvm.loop !51

._crit_edge.i.i.i:                                ; preds = %bb.c
  br i1 %.0.i.i.i.i.i, label %._crit_edge.thread.i.i.i, label %bb.e

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %.fold.split
  %.020.lcssa30.i.i.i = phi ptr [ %.02125.i.i.i, %._crit_edge.i.i.i ], [ %i.a, %.fold.split ] ; 4 uses
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.w = icmp eq ptr %.020.lcssa30.i.i.i, %i.v
  br i1 %i.w, label %select.unfold.i.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.x = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa30.i.i.i) #19 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !29
  %.phi.trans.insert17.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 36
  %.pre18.i.i = load i32, ptr %.phi.trans.insert17.i.i, align 4
  %.phi.trans.insert19.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 36
  %.pre20.i.i = load i32, ptr %.phi.trans.insert19.i.i, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %i.y = phi i32 [ %.pre20.i.i, %bb.d ], [ %i.n, %._crit_edge.i.i.i ]
  %i.z = phi i32 [ %.pre18.i.i, %bb.d ], [ %i.s, %._crit_edge.i.i.i ]
  %i.aa = phi i32 [ %.pre.i.i, %bb.d ], [ %i.p, %._crit_edge.i.i.i ] ; 2 uses
  %.020.lcssa29.i.i.i = phi ptr [ %.020.lcssa30.i.i.i, %bb.d ], [ %.02125.i.i.i, %._crit_edge.i.i.i ]
  %i.ab = icmp eq i32 %i.aa, %.pr
  %i.ac = icmp slt i32 %i.z, %i.y
  %i.ad = icmp slt i32 %i.aa, %.pr
  %.0.i.i5.i.i.i = select i1 %i.ab, i1 %i.ac, i1 %i.ad
  br i1 %.0.i.i5.i.i.i, label %select.unfold.i.i, label %_ZNSt3mapIN5folly15SocketOptionKeyENS0_17SocketOptionValueESt4lessIS1_ESaISt4pairIKS1_S2_EEE6insertERKS7_.exit

select.unfold.i.i:                                ; preds = %bb.e, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.020.lcssa30.i.i.i, %._crit_edge.thread.i.i.i ], [ %.020.lcssa29.i.i.i, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %0, ptr %4, align 8, !tbaa !52
  %i.ae = invoke ptr @_ZNSt8_Rb_treeIN5folly15SocketOptionKeyESt4pairIKS1_NS0_17SocketOptionValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef null, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc unwind label %bb.f     ; 0 uses

.noexc:                                           ; preds = %select.unfold.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZNSt3mapIN5folly15SocketOptionKeyENS0_17SocketOptionValueESt4lessIS1_ESaISt4pairIKS1_S2_EEE6insertERKS7_.exit

bb.f:                                             ; preds = %select.unfold.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapIN5folly15SocketOptionKeyENS0_17SocketOptionValueESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #15
  resume { ptr, i32 } %i.af

_ZNSt3mapIN5folly15SocketOptionKeyENS0_17SocketOptionValueESt4lessIS1_ESaISt4pairIKS1_S2_EEE6insertERKS7_.exit: ; preds = %5, %6, %.noexc, %bb.e, %thread-pre-split, %.lr.ph.a
  %i.ag = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.015.019) #19 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.h
  br i1 %i.ah, label %._crit_edge, label %.lr.ph.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN5folly15SocketOptionKeyESt4pairIKS1_NS0_17SocketOptionValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp ne ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = icmp eq ptr %2, %i.a
  %or.cond = select i1 %.not, i1 true, i1 %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load i32, ptr %3, align 8, !tbaa !29     ; 2 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !29   ; 2 uses
  %i.f = icmp eq i32 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp slt i32 %i.h, %i.j
  %i.l = icmp slt i32 %i.d, %i.e
  %.0.i.i = select i1 %i.f, i1 %i.k, i1 %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = phi i1 [ %.0.i.i, %bb.b ], [ true, %bb.a ]
  %i.n = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #18 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 12, i1 false), !tbaa.struct !54
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  invoke void @_ZNSt8__detail9__variant15_Copy_ctor_baseILb0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %_ZNKSt8_Rb_treeIN5folly15SocketOptionKeyESt4pairIKS1_NS0_17SocketOptionValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE11_Alloc_nodeclIRKS5_EEPSt13_Rb_tree_nodeIS5_EOT_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.s) #15 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 88) #16
  invoke void @__cxa_rethrow() #17
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.u

bb.g:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #14
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNKSt8_Rb_treeIN5folly15SocketOptionKeyESt4pairIKS1_NS0_17SocketOptionValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE11_Alloc_nodeclIRKS5_EEPSt13_Rb_tree_nodeIS5_EOT_.exit: ; preds = %bb.c
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.m, ptr noundef nonnull %i.n, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #15
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !48
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !48
  ret ptr %i.n
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #12

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9__variant15_Copy_ctor_baseILb0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i8 -1, ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !20
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !7
  store i32 %i.e, ptr %0, align 8, !tbaa !56
  br label %_ZNSt8__detail9__variant15__raw_idx_visitIZNS0_15_Copy_ctor_baseILb0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1ERKS9_EUlOT_T0_E_JRKSt7variantIJiS8_EEEEEvSD_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !33
  %i.g = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !34   ; 8 uses
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %bb.d, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = icmp slt i64 %i.i, 0
  br i1 %i.k, label %.noexc.i.i.i.i.i.i.i.i.i.i.i, label %bb.e

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = add nuw i64 %i.i, 1                      ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %.noexc6.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !35

.noexc6.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #17
          to label %.noexc4 unwind label %bb.h

.noexc4:                                          ; preds = %.noexc6.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #18
          to label %.noexc5 unwind label %bb.h    ; 2 uses

.noexc5:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.n, ptr %0, align 8, !tbaa !22
  store i64 %i.i, ptr %i.f, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.noexc5, %bb.c
  %i.o = phi ptr [ %i.n, %.noexc5 ], [ %i.f, %bb.c ] ; 3 uses
  switch i64 %i.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1ERKSB_EUlOT_T0_E_RKSt7variantIJiSA_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESI_SM_.exit.i.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.p = load i8, ptr %i.g, align 1, !tbaa !26
  store i8 %i.p, ptr %i.o, align 1, !tbaa !26
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1ERKSB_EUlOT_T0_E_RKSt7variantIJiSA_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESI_SM_.exit.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1ERKSB_EUlOT_T0_E_RKSt7variantIJiSA_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESI_SM_.exit.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1ERKSB_EUlOT_T0_E_RKSt7variantIJiSA_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESI_SM_.exit.i.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.q, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i
  store i8 0, ptr %i.r, align 1, !tbaa !26
  %.pre = load i8, ptr %i.b, align 8, !tbaa !20
  br label %_ZNSt8__detail9__variant15__raw_idx_visitIZNS0_15_Copy_ctor_baseILb0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1ERKS9_EUlOT_T0_E_JRKSt7variantIJiS8_EEEEEvSD_DpOT0_.exit

_ZNSt8__detail9__variant15__raw_idx_visitIZNS0_15_Copy_ctor_baseILb0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1ERKS9_EUlOT_T0_E_JRKSt7variantIJiS8_EEEEEvSD_DpOT0_.exit: ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1ERKSB_EUlOT_T0_E_RKSt7variantIJiSA_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESI_SM_.exit.i.i, %bb.b
  %i.s = phi i8 [ %.pre, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1ERKSB_EUlOT_T0_E_RKSt7variantIJiSA_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESI_SM_.exit.i.i ], [ 0, %bb.b ]
  store i8 %i.s, ptr %i.a, align 8, !tbaa !20
  ret void

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc6.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(33) %0) #15
  resume { ptr, i32 } %i.t
}

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_SocketOptionMap.cpp() #13 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly20emptySocketOptionMapE, i64 8), align 8, !tbaa !46
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly20emptySocketOptionMapE, i64 16), align 8, !tbaa !11
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly20emptySocketOptionMapE, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly20emptySocketOptionMapE, i64 24), align 8, !tbaa !36
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly20emptySocketOptionMapE, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly20emptySocketOptionMapE, i64 32), align 8, !tbaa !47
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly20emptySocketOptionMapE, i64 40), align 8, !tbaa !48
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3mapIN5folly15SocketOptionKeyENS0_17SocketOptionValueESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev, ptr nonnull @_ZN5folly20emptySocketOptionMapE, ptr nonnull @__dso_handle) #15 ; 0 uses
  ret void
}

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !15, i64 8}
!12 = !{!"_ZTSSt15_Rb_tree_header", !13, i64 0, !17, i64 32}
!13 = !{!"_ZTSSt18_Rb_tree_node_base", !14, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!14 = !{!"_ZTSSt14_Rb_tree_color", !9, i64 0}
!15 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !16, i64 0}
!16 = !{!"any pointer", !9, i64 0}
!17 = !{!"long", !9, i64 0}
!18 = !{!13, !15, i64 24}
!19 = !{!13, !15, i64 16}
!20 = !{!21, !9, i64 32}
!21 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE", !9, i64 0, !9, i64 32}
!22 = !{!23, !25, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !17, i64 8, !9, i64 16}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !25, i64 0}
!25 = !{!"p1 omnipotent char", !16, i64 0}
!26 = !{!9, !9, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!30, !8, i64 0}
!30 = !{!"_ZTSN5folly15SocketOptionKeyE", !8, i64 0, !8, i64 4, !31, i64 8}
!31 = !{!"_ZTSN5folly15SocketOptionKey8ApplyPosE", !9, i64 0}
!32 = !{!30, !8, i64 4}
!33 = !{!24, !25, i64 0}
!34 = !{!23, !17, i64 8}
!35 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!36 = !{!12, !15, i64 16}
!37 = !{!38, !31, i64 8}
!38 = !{!"_ZTSSt4pairIKN5folly15SocketOptionKeyENS0_17SocketOptionValueEE", !30, i64 0, !39, i64 16}
!39 = !{!"_ZTSN5folly17SocketOptionValueE", !40, i64 0}
!40 = !{!"_ZTSSt7variantIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !41, i64 0}
!41 = !{!"_ZTSNSt8__detail9__variant13_Variant_baseIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE", !42, i64 0}
!42 = !{!"_ZTSNSt8__detail9__variant17_Move_assign_baseILb0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE", !43, i64 0}
!43 = !{!"_ZTSNSt8__detail9__variant17_Copy_assign_baseILb0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE", !44, i64 0}
!44 = !{!"_ZTSNSt8__detail9__variant15_Move_ctor_baseILb0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE", !45, i64 0}
!45 = !{!"_ZTSNSt8__detail9__variant15_Copy_ctor_baseILb0EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE", !21, i64 0}
!46 = !{!12, !14, i64 0}
!47 = !{!12, !15, i64 24}
!48 = !{!12, !17, i64 32}
!49 = !{!38, !8, i64 0}
!50 = !{!15, !15, i64 0}
!51 = distinct !{!51, !28}
!52 = !{!53, !53, i64 0}
!53 = !{!"p1 _ZTSSt8_Rb_treeIN5folly15SocketOptionKeyESt4pairIKS1_NS0_17SocketOptionValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE", !16, i64 0}
!54 = !{i64 0, i64 4, !7, i64 4, i64 4, !7, i64 8, i64 4, !55}
!55 = !{!31, !31, i64 0}
!56 = !{!57, !8, i64 0}
!57 = !{!"_ZTSNSt8__detail9__variant14_UninitializedIiLb1EEE", !8, i64 0}
end_hunk_0
