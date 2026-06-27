inline.NumInlined: 2621
inline.NumDeleted: 648
begin_hunk_0_@_ZN11OpenImageIO4v3_17Sysutil6getenvENS0_17basic_string_viewIcSt11char_traitsIcEEES5_:bb.a
.noexc.i.i.i:                                     ; preds = %bb.b
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %4, align 8, !tbaa !19
  %i.j = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.j, ptr %i.e, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.b
  %i.k = phi ptr [ %i.i, %.noexc.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.l = load i8, ptr %i.b, align 1, !tbaa !15
  store i8 %i.l, ptr %i.k, align 1, !tbaa !15
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !21
  %i.o = load ptr, ptr %4, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.q = load ptr, ptr %4, align 8, !tbaa !19     ; 3 uses
  %i.r = call ptr @getenv(ptr noundef %i.q) #32   ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.e
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.t = load i64, ptr %i.e, align 8, !tbaa !15
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !24   ; 2 uses
  %.not5 = icmp eq i64 %i.w, 0
  br i1 %.not5, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.x, ptr %3, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.w, ptr %i.y, align 8, !tbaa !24
  %i.z = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %3)
  br label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit: ; preds = %bb.g, %bb.h
  %i.aa = phi ptr [ %i.z, %bb.h ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.i

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0 = phi ptr [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.aa, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit ], [ null, %bb.f ] ; 2 uses
  %.not6 = icmp eq ptr %.0, null
  %i.ab = select i1 %.not6, ptr @.str.9, ptr %.0  ; 2 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !22
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !24
  ret void
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_17Sysutil6usleepEm(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %0 to i32
  %i.b = tail call i32 @usleep(i32 noundef %i.a)  ; 0 uses
  ret void
}

declare i32 @usleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 65536) i32 @_ZN11OpenImageIO4v3_17Sysutil16terminal_columnsEv() local_unnamed_addr #5 {
bb.a:
  %0 = alloca %struct.winsize, align 2            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #32
  %i.a = call i32 (i32, i64, ...) @ioctl(i32 noundef 0, i64 noundef 21523, ptr noundef nonnull %0) #32 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !25
  %i.d = zext i16 %i.c to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  ret i32 %i.d
}

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 65536) i32 @_ZN11OpenImageIO4v3_17Sysutil13terminal_rowsEv() local_unnamed_addr #5 {
bb.a:
  %0 = alloca %struct.winsize, align 2            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #32
  %i.a = call i32 (i32, i64, ...) @ioctl(i32 noundef 0, i64 noundef 21523, ptr noundef nonnull %0) #32 ; 0 uses
  %i.b = load i16, ptr %0, align 2, !tbaa !28
  %i.c = zext i16 %i.b to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN11OpenImageIO4v3_17Sysutil4TermC2EP8_IO_FILE(ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %0, ptr nofree noundef captures(none) %1) unnamed_addr #5 align 2 {
bb.a:
  store i8 1, ptr %0, align 1, !tbaa !29
  %i.a = tail call i32 @fileno(ptr noundef %1) #32
  %i.b = tail call i32 @isatty(i32 noundef %i.a) #32
  %i.c = icmp ne i32 %i.b, 0
  %i.d = zext i1 %i.c to i8
  store i8 %i.d, ptr %0, align 1, !tbaa !29
  ret void
}

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_17Sysutil4TermC2ERKSo(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) initializes((0, 1)) %0, ptr nofree noundef nonnull readnone align 8 captures(address) dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  store i8 1, ptr %0, align 1, !tbaa !29
  %i.a = icmp eq ptr %1, @_ZSt4cout
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.c = tail call i32 @fileno(ptr noundef %i.b) #32
  %i.d = tail call i32 @isatty(i32 noundef %i.c) #32
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread15, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %1, @_ZSt4cerr
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.g = tail call i32 @fileno(ptr noundef %i.f) #32
  %i.h = tail call i32 @isatty(i32 noundef %i.g) #32
  %.not11 = icmp eq i32 %i.h, 0
  br i1 %.not11, label %.thread15, label %bb.g

.thread15:                                        ; preds = %bb.d, %bb.b
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.i = icmp eq ptr %1, @_ZSt4clog
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.k = tail call i32 @fileno(ptr noundef %i.j) #32
  %i.l = tail call i32 @isatty(i32 noundef %i.k) #32
  %i.m = icmp ne i32 %i.l, 0
  %i.n = zext i1 %i.m to i8
  br label %bb.g

bb.g:                                             ; preds = %.thread15, %bb.e, %bb.f, %bb.d, %bb.b
  %i.o = phi i8 [ 1, %bb.d ], [ 1, %bb.b ], [ 0, %bb.e ], [ %i.n, %bb.f ], [ 0, %.thread15 ]
  store i8 %i.o, ptr %0, align 1, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr @.str.30, ptr %3, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 4, ptr %i.p, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @_ZN11OpenImageIO4v3_17Sysutil6getenvENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %2, ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4)
  %i.q = load ptr, ptr %2, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !24
  %.fr21 = freeze i64 %i.s                        ; 3 uses
  %i.t = icmp eq i64 %.fr21, 0
  br i1 %i.t, label %.split19.us.a, label %.split

.split19.us:                                      ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit
  %5 = load i8, ptr %0, align 1, !tbaa !29, !range !32, !noundef !33
  %spec.select = select i1 %i.x, i8 %5, i8 0
  br label %.split19.us.a

.split19.us.a:                                    ; preds = %.split19.us, %bb.g
  %6 = phi i8 [ 0, %bb.g ], [ %spec.select, %.split19.us ]
  store i8 %6, ptr %0, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

.split:                                           ; preds = %bb.g, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit
  %.017 = phi i1 [ %i.x, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit ], [ false, %bb.g ] ; 3 uses
  %.010.idx16 = phi i64 [ %.010.add, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit ], [ 0, %bb.g ] ; 2 uses
  %.010.ptr = getelementptr inbounds nuw i8, ptr @_ZZN11OpenImageIO4v3_17Sysutil4TermC1ERKSoE19supported_terminals, i64 %.010.idx16
  %i.u = load ptr, ptr %.010.ptr, align 8, !tbaa !34 ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit: ; preds = %.split
  %i.v = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #32
  %i.w = icmp eq i64 %.fr21, %i.v
  br i1 %i.w, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit
  %bcmp.i = tail call i32 @bcmp(ptr %i.q, ptr nonnull %i.u, i64 %.fr21)
  %.not.i.i = icmp eq i32 %bcmp.i, 0
  %spec.select20 = select i1 %.not.i.i, i1 true, i1 %.017
  %7 = freeze i1 %spec.select20
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit: ; preds = %.split, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit
  %i.x = phi i1 [ %.017, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit ], [ %7, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %.017, %.split ] ; 2 uses
  %.010.add = add nuw nsw i64 %.010.idx16, 8      ; 2 uses
  %.not12 = icmp eq i64 %.010.add, 160
  br i1 %.not12, label %.split19.us, label %.split
}

; Function Attrs: mustprogress uwtable
define void @_ZNK11OpenImageIO4v3_17Sysutil4Term4ansiB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 13 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !21
  store i8 0, ptr %i.a, align 8, !tbaa !15
  %i.c = load i8, ptr %1, align 1, !tbaa !29, !range !32, !noundef !33
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.e = load ptr, ptr %2, align 8, !tbaa !22
  store ptr %i.e, ptr %4, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24
  store i64 %i.h, ptr %i.f, align 8, !tbaa !24
  store ptr @.str.82, ptr %5, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.i, align 8, !tbaa !24
  invoke void @_ZN11OpenImageIO4v3_17Strutil5splitENS0_17basic_string_viewIcSt11char_traitsIcEEERSt6vectorIS5_SaIS5_EES5_i(ptr noundef nonnull dead_on_return %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull dead_on_return %5, i32 noundef -1)
          to label %.preheader30 unwind label %bb.d

.preheader30:                                     ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.l = load ptr, ptr %3, align 8, !tbaa !38
  %.not33 = icmp eq ptr %i.k, %i.l
  br i1 %.not33, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %.preheader30, %bb.e
  %.01132 = phi i64 [ %i.s, %bb.e ], [ 0, %.preheader30 ] ; 3 uses
  %.not15 = icmp eq i64 %.01132, 0                ; 2 uses
  %i.m = select i1 %.not15, i64 2, i64 1          ; 2 uses
  %i.n = select i1 %.not15, ptr @.str.84, ptr @.str.83
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit

._crit_edge:                                      ; preds = %bb.e, %.preheader30
  %i.o = load i64, ptr %i.b, align 8, !tbaa !21
  %i.p = icmp eq i64 %i.o, 4611686018427387903
  br i1 %i.p, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.c:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.89) #35
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %._crit_edge
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.85, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit25
  %i.s = add nuw i64 %.01132, 1                   ; 2 uses
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.u = load ptr, ptr %3, align 8, !tbaa !38
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 4
  %i.z = icmp ult i64 %i.s, %i.y
  br i1 %i.z, label %.preheader, label %._crit_edge, !llvm.loop !39

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit: ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit25
  %.031 = phi i64 [ 0, %.preheader ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit25 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK11OpenImageIO4v3_17Sysutil4Term4ansiB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEEE5codes, i64 %.031 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !34 ; 2 uses
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #32 ; 3 uses
  %i.ad = load ptr, ptr %3, align 8, !tbaa !38
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %.01132 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !24
  %i.ai = icmp eq i64 %i.ac, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit25

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit
  %i.aj = icmp eq i64 %i.ac, 0
  br i1 %i.aj, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.f
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.ab, ptr %i.af, i64 %i.ac)
  %.not.i.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit25

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.f
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !21
  %i.al = sub i64 4611686018427387903, %i.ak
  %i.am = icmp ult i64 %i.al, %i.m
  br i1 %i.am, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i18

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit21, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.89) #35
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i18: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n, i64 noundef %i.m)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit21 unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !34 ; 2 uses
  %i.aq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ap) #32 ; 2 uses
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !21
  %i.as = sub i64 4611686018427387903, %i.ar
  %i.at = icmp ult i64 %i.as, %i.aq
  br i1 %i.at, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit21
  %i.au = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ap, i64 noundef %i.aq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit25 unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i22
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit25: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i22
  %i.av = add nuw nsw i64 %.031, 2                ; 2 uses
  %.not = icmp eq i64 %i.av, 54
  br i1 %.not, label %bb.e, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, !llvm.loop !40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.aw = load ptr, ptr %3, align 8, !tbaa !38    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !41
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #36
  br label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.j

bb.h:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.d
  %.pn = phi { ptr, i32 } [ %i.r, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bc = load ptr, ptr %3, align 8, !tbaa !38    ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EED2Ev.exit27, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !41
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #36
  br label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EED2Ev.exit27

_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EED2Ev.exit27: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bi = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.a
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EED2Ev.exit27
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !15
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.a, %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EED2Ev.exit
  ret void
}

declare void @_ZN11OpenImageIO4v3_17Strutil5splitENS0_17basic_string_viewIcSt11char_traitsIcEEERSt6vectorIS5_SaIS5_EES5_i(ptr noundef dead_on_return, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef dead_on_return, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
end_hunk_0
