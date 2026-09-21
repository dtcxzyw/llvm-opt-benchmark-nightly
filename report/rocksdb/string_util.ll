Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/string_util?download=true
inline.NumInlined: 530
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7rocksdb18BytesToHumanStringB5cxx11Em:bb.a
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #29 ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !33
  store i64 %i.j, ptr %i.i, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.d
  %i.p = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.i, %bb.d ] ; 3 uses
  switch i64 %i.j, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.a, align 16, !tbaa !17
  store i8 %i.q, ptr %i.p, align 1, !tbaa !17
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 16 %i.a, i64 %i.j, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.r, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.j
  store i8 0, ptr %i.s, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb17TimeToHumanStringB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %struct.tm, align 8                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.c = sext i32 %1 to i64
  store i64 %i.c, ptr %i.b, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.d = call noundef ptr @localtime_r(ptr noundef nonnull %i.b, ptr noundef nonnull %2) #27
  %i.e = call i64 @strftime(ptr noundef nonnull %i.a, i64 noundef 80, ptr noundef nonnull @.str.22, ptr noundef %i.d) #27 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !13
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #27 ; 8 uses
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %i.g, 0
  br i1 %i.i, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #28
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !34

.noexc11.i:                                       ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.l = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #29 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !33
  store i64 %i.g, ptr %i.f, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.m = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.f, %bb.a ] ; 3 uses
  switch i64 %i.g, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.a, align 16, !tbaa !17
  store i8 %i.n, ptr %i.m, align 1, !tbaa !17
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 16 %i.a, i64 %i.g, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.o, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 0, ptr %i.p, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb12EscapeStringB5cxx11ERKNS_5SliceE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !16
  store i8 0, ptr %i.a, align 8, !tbaa !17
  invoke void @_ZN7rocksdb21AppendEscapedStringToEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !17
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.c

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7rocksdb20ConsumeDecimalNumberEPNS_5SliceEPm(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8, !tbaa !40 ; 2 uses
  %i.b = icmp eq i64 %.promoted, 0
  br i1 %i.b, label %.thread35, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.promoted47 = load ptr, ptr %0, align 8, !tbaa !41
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.c = phi ptr [ %.promoted47, %.lr.ph ], [ %i.n, %bb.e ] ; 2 uses
  %.02242 = phi i32 [ 0, %.lr.ph ], [ %i.g, %bb.e ] ; 2 uses
  %.02441 = phi i64 [ 0, %.lr.ph ], [ %i.m, %bb.e ] ; 4 uses
  %i.d = phi i64 [ %.promoted, %.lr.ph ], [ %i.o, %bb.e ]
  %i.e = load i8, ptr %i.c, align 1, !tbaa !17
  %i.f = add i8 %i.e, -48                         ; 3 uses
  %or.cond = icmp ult i8 %i.f, 10
  br i1 %or.cond, label %bb.c, label %.thread35.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw nsw i32 %.02242, 1
  %i.h = icmp ugt i64 %.02441, 1844674407370955161
  br i1 %i.h, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i64 %.02441, 1844674407370955161
  %i.j = icmp samesign ugt i8 %i.f, 5
  %or.cond5 = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond5, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = zext nneg i8 %i.f to i64
  %i.l = mul nuw i64 %.02441, 10
  %i.m = add i64 %i.l, %i.k                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !41
  %i.o = add i64 %i.d, -1                         ; 3 uses
  store i64 %i.o, ptr %i.a, align 8, !tbaa !40
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.thread35.loopexit, label %bb.b

.thread35.loopexit:                               ; preds = %bb.b, %bb.e
  %.024.lcssa.ph = phi i64 [ %i.m, %bb.e ], [ %.02441, %bb.b ]
  %.022.lcssa.ph = phi i32 [ 1, %bb.e ], [ %.02242, %bb.b ]
  %i.q = icmp ne i32 %.022.lcssa.ph, 0
  br label %.thread35

.thread35:                                        ; preds = %.thread35.loopexit, %bb.a
  %.024.lcssa = phi i64 [ 0, %bb.a ], [ %.024.lcssa.ph, %.thread35.loopexit ]
  %.022.lcssa = phi i1 [ false, %bb.a ], [ %i.q, %.thread35.loopexit ]
  store i64 %.024.lcssa, ptr %1, align 8, !tbaa !43
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.c, %.thread35
  %.330 = phi i1 [ %.022.lcssa, %.thread35 ], [ false, %bb.c ], [ false, %bb.d ]
  ret i1 %.330
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN7rocksdb13isSpecialCharEc(i8 noundef signext %0) local_unnamed_addr #8 {
bb.a:
  %1 = icmp eq i8 %0, 92
  %2 = icmp eq i8 %0, 35
  %or.cond = or i1 %1, %2
  %3 = icmp eq i8 %0, 58
  %or.cond5 = or i1 %3, %or.cond
  %i.a = icmp eq i8 %0, 13
  %or.cond8 = or i1 %i.a, %or.cond5
  %4 = icmp eq i8 %0, 10
  %or.cond11 = or i1 %4, %or.cond8
  ret i1 %or.cond11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef signext i8 @_ZN7rocksdb12UnescapeCharEc(i8 noundef signext %0) local_unnamed_addr #8 {
bb.a:
  switch i8 %0, label %"_ZSt7find_ifIPKSt4pairIccEZN7rocksdb12UnescapeCharEcE3$_0ET_S6_S6_T0_.exit" [
    i8 114, label %bb.b
    i8 110, label %.fold.split
  ]

.fold.split:                                      ; preds = %bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.fold.split
  %.028.i.i.i.ph = phi ptr [ @_ZZN7rocksdb12UnescapeCharEcE11convert_map, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @_ZZN7rocksdb12UnescapeCharEcE11convert_map, i64 2), %.fold.split ]
  %i.a = getelementptr inbounds nuw i8, ptr %.028.i.i.i.ph, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !45
  br label %"_ZSt7find_ifIPKSt4pairIccEZN7rocksdb12UnescapeCharEcE3$_0ET_S6_S6_T0_.exit"

"_ZSt7find_ifIPKSt4pairIccEZN7rocksdb12UnescapeCharEcE3$_0ET_S6_S6_T0_.exit": ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ %i.b, %bb.b ], [ %0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef signext i8 @_ZN7rocksdb10EscapeCharEc(i8 noundef signext %0) local_unnamed_addr #8 {
bb.a:
  switch i8 %0, label %"_ZSt7find_ifIPKSt4pairIccEZN7rocksdb10EscapeCharEcE3$_0ET_S6_S6_T0_.exit" [
    i8 10, label %bb.b
    i8 13, label %.fold.split
  ]

.fold.split:                                      ; preds = %bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.fold.split
  %.028.i.i.i.ph = phi ptr [ @_ZZN7rocksdb10EscapeCharEcE11convert_map, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @_ZZN7rocksdb10EscapeCharEcE11convert_map, i64 2), %.fold.split ]
  %i.a = getelementptr inbounds nuw i8, ptr %.028.i.i.i.ph, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !45
  br label %"_ZSt7find_ifIPKSt4pairIccEZN7rocksdb10EscapeCharEcE3$_0ET_S6_S6_T0_.exit"

"_ZSt7find_ifIPKSt4pairIccEZN7rocksdb10EscapeCharEcE3$_0ET_S6_S6_T0_.exit": ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ %i.b, %bb.b ], [ %0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18EscapeOptionStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !16
  store i8 0, ptr %i.a, align 8, !tbaa !17
  %i.c = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = icmp samesign eq i64 %i.e, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.j
  %.sroa.020.023 = phi ptr [ %i.at, %bb.j ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = load i8, ptr %.sroa.020.023, align 1, !tbaa !17 ; 4 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !16   ; 7 uses
  %i.j = add i64 %i.i, 1                          ; 5 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !33     ; 3 uses
  %i.l = icmp eq ptr %i.k, %i.a                   ; 2 uses
  switch i8 %i.h, label %bb.h [
    i8 92, label %bb.b
    i8 58, label %bb.b
    i8 35, label %bb.b
    i8 13, label %bb.b
    i8 10, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.b
  %i.m = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.m)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.a, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.o = phi i64 [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.p = icmp ugt i64 %i.j, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.i, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.q = phi ptr [ %.pre.i.i, %.noexc ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.i
  store i8 92, ptr %i.r, align 1, !tbaa !17
  store i64 %i.j, ptr %i.b, align 8, !tbaa !16
  %i.s = load ptr, ptr %0, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.j
  store i8 0, ptr %i.t, align 1, !tbaa !17
  switch i8 %i.h, label %_ZN7rocksdb10EscapeCharEc.exit [
    i8 10, label %bb.e
    i8 13, label %.fold.split.i
  ]

.fold.split.i:                                    ; preds = %bb.d
  br label %bb.e

bb.e:                                             ; preds = %.fold.split.i, %bb.d
  %.028.i.i.i.ph.i = phi ptr [ @_ZZN7rocksdb10EscapeCharEcE11convert_map, %bb.d ], [ getelementptr inbounds nuw (i8, ptr @_ZZN7rocksdb10EscapeCharEcE11convert_map, i64 2), %.fold.split.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.028.i.i.i.ph.i, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !45
  br label %_ZN7rocksdb10EscapeCharEc.exit

_ZN7rocksdb10EscapeCharEc.exit:                   ; preds = %bb.e, %bb.d
  %.0.i = phi i8 [ %i.v, %bb.e ], [ %i.h, %bb.d ]
  %i.w = load i64, ptr %i.b, align 8, !tbaa !16   ; 4 uses
  %i.x = add i64 %i.w, 1                          ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.a
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i11: ; preds = %_ZN7rocksdb10EscapeCharEc.exit
  %i.aa = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.aa)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %_ZN7rocksdb10EscapeCharEc.exit
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i9: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i11
  %i.ac = phi i64 [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i11 ]
  %i.ad = icmp ugt i64 %i.x, %i.ac
  br i1 %i.ad, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit13

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i9
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.w, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc12 unwind label %bb.g

.noexc12:                                         ; preds = %bb.f
  %.pre.i.i10 = load ptr, ptr %0, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit13: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i9, %.noexc12
  %i.ae = phi ptr [ %.pre.i.i10, %.noexc12 ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i9 ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w
  store i8 %.0.i, ptr %i.af, align 1, !tbaa !17
  br label %bb.j

bb.g:                                             ; preds = %bb.i, %bb.f, %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.a
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !17
  %i.ak = add i64 %i.aj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ag

bb.h:                                             ; preds = %.lr.ph
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i17: ; preds = %bb.h
  %i.al = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.al)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14: ; preds = %bb.h
  %i.am = load i64, ptr %i.a, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i15: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i17
  %i.an = phi i64 [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i17 ]
  %i.ao = icmp ugt i64 %i.j, %i.an
  br i1 %i.ao, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit19

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.i, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc18 unwind label %bb.g

end_hunk_0
