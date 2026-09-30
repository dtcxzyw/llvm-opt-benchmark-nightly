Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/util?download=true
inline.NumInlined: 456
inline.NumDeleted: 142
begin_hunk_0_@_ZN11flatbuffers18RelativeToRootPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_:bb.a
  %i.ll = icmp eq ptr %i.lk, %i.lj
  br i1 %i.ll, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.ae
  %i.lm = load i64, ptr %i.lj, align 8, !tbaa !18
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.ln) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  %i.lo = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.lp = icmp eq ptr %i.lo, %i.dz
  br i1 %i.lp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %i.lq = load i64, ptr %i.dz, align 8, !tbaa !18
  %i.lr = add i64 %i.lq, 1
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.lr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %.pn45.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %.pn45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %.pn45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %bb.k
  %.pn45.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %i.dx, %bb.k ] ; 2 uses
  %i.ls = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.lt = icmp eq ptr %i.ls, %i.e
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.af
  %i.lu = load i64, ptr %i.e, align 8, !tbaa !18
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn45.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %.pn45.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %.pn45.pn.pn.pn, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn45.pn.pn.pn.pn
}

; Function Attrs: nofree nounwind
declare noundef ptr @realpath(ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN11flatbuffers13ClassicLocaleC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call ptr @newlocale(i32 noundef 6, ptr noundef nonnull @.str.4, ptr noundef null) #22
  store ptr %i.a, ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind
declare ptr @newlocale(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN11flatbuffers13ClassicLocaleD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !38
  tail call void @freelocale(ptr noundef %i.a) #22
  ret void
}

; Function Attrs: nounwind
declare void @freelocale(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11flatbuffers18RemoveStringQuotesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !15     ; 5 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !18    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16   ; 8 uses
  %i.g = icmp ugt i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.f, ptr %i.a, align 8, !tbaa !31
  br label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  switch i8 %i.d, label %bb.f [
    i8 39, label %bb.c
    i8 34, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.i = getelementptr i8, ptr %i.c, i64 %i.f
  %i.j = getelementptr i8, ptr %i.i, i64 -1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !18
  %i.l = icmp eq i8 %i.d, %i.k
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.c
  %i.m = add i64 %i.f, -2                         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !17, !alias.scope !112
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22, !noalias !112
  store i64 %i.m, ptr %i.b, align 8, !tbaa !31, !noalias !112
  %i.p = icmp ugt i64 %i.m, 15
  br i1 %i.p, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !15, !alias.scope !112
  %i.r = load i64, ptr %i.b, align 8, !tbaa !31, !noalias !112
  store i64 %i.r, ptr %i.n, align 8, !tbaa !18, !alias.scope !112
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.s = phi ptr [ %i.q, %.noexc10.i.i ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.m, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.t = load i8, ptr %i.o, align 1, !tbaa !18
  store i8 %i.t, ptr %i.s, align 1, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %i.o, i64 %i.m, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.u = load i64, ptr %i.b, align 8, !tbaa !31, !noalias !112 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !16, !alias.scope !112
  %i.w = load ptr, ptr %0, align 8, !tbaa !15, !alias.scope !112
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22, !noalias !112
  br label %bb.i

bb.f:                                             ; preds = %bb.b, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.f, ptr %i.a, align 8, !tbaa !31
  %i.z = icmp ugt i64 %i.f, 15
  br i1 %i.z, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.f
  %i.aa = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !15
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !31
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.thread, %.noexc.i, %bb.f
  %i.ac = phi ptr [ %i.aa, %.noexc.i ], [ %i.y, %bb.f ], [ %i.h, %.thread ] ; 2 uses
  switch i64 %i.f, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ad = load i8, ptr %i.c, align 1, !tbaa !18
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr nonnull align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.g, %bb.h
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !16
  %i.ag = load ptr, ptr %0, align 8, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11flatbuffers19SetGlobalTestLocaleEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = tail call ptr @setlocale(i32 noundef 6, ptr noundef %0) #22 ; 4 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  %.not9 = icmp ne ptr %1, null
  %or.cond.not = and i1 %.not9, %.not
  br i1 %or.cond.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !17
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.d, ptr %i.a, align 8, !tbaa !31
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !15
  %i.g = load i64, ptr %i.a, align 8, !tbaa !31
  store i64 %i.g, ptr %i.c, align 8, !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %i.b, align 1, !tbaa !18
  store i8 %i.i, ptr %i.h, align 1, !tbaa !18
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !16
  %i.l = load ptr, ptr %2, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.n = load ptr, ptr %1, align 8, !tbaa !15     ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  %i.q = load ptr, ptr %2, align 8, !tbaa !15     ; 6 uses
  %i.r = icmp eq ptr %i.q, %i.c                   ; 2 uses
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.e
  br i1 %i.r, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.e
  br i1 %i.r, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.s = load i64, ptr %i.k, align 8, !tbaa !16   ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %.not21.i = icmp eq ptr %2, %1
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  switch i64 %i.s, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = load i8, ptr %i.q, align 1, !tbaa !18
  store i8 %i.u, ptr %i.n, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.v = load i64, ptr %i.k, align 8, !tbaa !16   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !16
  %i.x = load ptr, ptr %1, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !18
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.q, ptr %1, align 8, !tbaa !15
  %i.aa = load <2 x i64>, ptr %i.k, align 8, !tbaa !18
  store <2 x i64> %i.aa, ptr %i.z, align 8, !tbaa !18
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !18
  store ptr %i.q, ptr %1, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load <2 x i64>, ptr %i.k, align 8, !tbaa !18
  store <2 x i64> %i.ad, ptr %i.ac, align 8, !tbaa !18
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.n, ptr %2, align 8, !tbaa !15
  store i64 %i.ab, ptr %i.c, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.c, ptr %2, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.ae = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.n, %bb.j ], [ %i.c, %bb.k ], [ %i.q, %bb.f ]
  store i64 0, ptr %i.k, align 8, !tbaa !16
  store i8 0, ptr %i.ae, align 1, !tbaa !18
  %i.af = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !18
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret i1 %.not
}

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11flatbuffers23ReadEnvironmentVariableEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = tail call ptr @getenv(ptr noundef %0) #22 ; 4 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  %.not9 = icmp ne ptr %1, null
  %or.cond.not = and i1 %.not9, %.not
  br i1 %or.cond.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !17
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.d, ptr %i.a, align 8, !tbaa !31
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !15
  %i.g = load i64, ptr %i.a, align 8, !tbaa !31
  store i64 %i.g, ptr %i.c, align 8, !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %i.b, align 1, !tbaa !18
  store i8 %i.i, ptr %i.h, align 1, !tbaa !18
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !16
  %i.l = load ptr, ptr %2, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.n = load ptr, ptr %1, align 8, !tbaa !15     ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  %i.q = load ptr, ptr %2, align 8, !tbaa !15     ; 6 uses
  %i.r = icmp eq ptr %i.q, %i.c                   ; 2 uses
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.e
  br i1 %i.r, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.e
  br i1 %i.r, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.s = load i64, ptr %i.k, align 8, !tbaa !16   ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %.not21.i = icmp eq ptr %2, %1
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  switch i64 %i.s, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = load i8, ptr %i.q, align 1, !tbaa !18
  store i8 %i.u, ptr %i.n, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.v = load i64, ptr %i.k, align 8, !tbaa !16   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !16
  %i.x = load ptr, ptr %1, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !18
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.q, ptr %1, align 8, !tbaa !15
  %i.aa = load <2 x i64>, ptr %i.k, align 8, !tbaa !18
  store <2 x i64> %i.aa, ptr %i.z, align 8, !tbaa !18
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !18
  store ptr %i.q, ptr %1, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load <2 x i64>, ptr %i.k, align 8, !tbaa !18
  store <2 x i64> %i.ad, ptr %i.ac, align 8, !tbaa !18
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.n, ptr %2, align 8, !tbaa !15
  store i64 %i.ab, ptr %i.c, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.c, ptr %2, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.ae = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.n, %bb.j ], [ %i.c, %bb.k ], [ %i.q, %bb.f ]
  store i64 0, ptr %i.k, align 8, !tbaa !16
  store i8 0, ptr %i.ae, align 1, !tbaa !18
  %i.af = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !18
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret i1 %.not
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11flatbuffers11ConvertCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_4CaseES8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 25 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.std::function", align 8     ; 9 uses
  %7 = alloca %"class.std::function", align 8     ; 9 uses
  %i.d = icmp eq i32 %2, 8
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !17
  %i.f = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 %i.h, ptr %i.c, align 8, !tbaa !31
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !15
  %i.k = load i64, ptr %i.c, align 8, !tbaa !31
  store i64 %i.k, ptr %i.e, align 8, !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !18
  store i8 %i.m, ptr %i.l, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.n = load i64, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !16
  %i.p = load ptr, ptr %0, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %_ZN11flatbuffers12_GLOBAL__N_111ToSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit

bb.e:                                             ; preds = %bb.a
  switch i32 %3, label %bb.af [
    i32 2, label %bb.f
    i32 1, label %bb.f
    i32 7, label %bb.w
    i32 8, label %bb.ae
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 17 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !17, !alias.scope !128
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store i64 0, ptr %i.s, align 8, !tbaa !16, !alias.scope !128
  store i8 0, ptr %i.r, align 8, !tbaa !18, !alias.scope !128
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !16, !noalias !128 ; 2 uses
  %.not50.i = icmp eq i64 %i.u, 0
  br i1 %.not50.i, label %_ZN11flatbuffers12_GLOBAL__N_112CamelToSnakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %1, align 8, !tbaa !15, !noalias !128
  %i.w = load i8, ptr %i.v, align 1, !tbaa !18
  %i.x = zext i8 %i.w to i32
  %i.y = call i32 @tolower(i32 noundef %i.x) #23
  %i.z = trunc i32 %i.y to i8
  store i8 %i.z, ptr %i.r, align 8, !tbaa !18
  store i64 1, ptr %i.s, align 8, !tbaa !16, !alias.scope !128
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.aa, align 1, !tbaa !18
  %.not = icmp eq i64 %i.u, 1
  br i1 %.not, label %_ZN11flatbuffers12_GLOBAL__N_112CamelToSnakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.peel.next

bb.h:                                             ; preds = %bb.s, %bb.q, %bb.o, %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !15, !alias.scope !128 ; 2 uses
  %i.ab = icmp eq ptr %.pre, %i.r
  br i1 %i.ab, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.ac = load i64, ptr %i.r, align 8, !tbaa !18, !alias.scope !128
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ad) #24
  br label %common.resume

common.resume:                                    ; preds = %bb.cl, %bb.bt, %bb.an, %bb.z, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %bb.be, %bb.bf, %bb.bl, %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i76, %bb.bt ], [ %i.ip, %bb.bm ], [ %lpad.loopexit, %bb.h ], [ %lpad.phi.i, %bb.z ], [ %lpad.loopexit106, %bb.an ], [ %lpad.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %lpad.phi.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30 ], [ %lpad.loopexit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48 ], [ %lpad.phi.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i ], [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.id, %bb.bf ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.id, %bb.be ], [ %i.ip, %bb.bl ], [ %.pn.i, %bb.cl ]
  resume { ptr, i32 } %common.resume.op

.lr.ph.i.peel.next:                               ; preds = %bb.g, %bb.t
  %.049.i = phi i64 [ %i.cl, %bb.t ], [ 1, %bb.g ] ; 3 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !15, !noalias !128
  %i.af = getelementptr i8, ptr %i.ae, i64 %.049.i ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !18  ; 4 uses
  %i.ah = icmp eq i8 %i.ag, 95
  br i1 %i.ah, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.peel.next
  %i.ai = load i64, ptr %i.s, align 8, !tbaa !16, !alias.scope !128 ; 4 uses
  %i.aj = add i64 %i.ai, 1                        ; 2 uses
  %i.ak = load ptr, ptr %4, align 8, !tbaa !15, !alias.scope !128 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.r
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i28.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i28.i: ; preds = %bb.i
  %i.am = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.am)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25.i: ; preds = %bb.i
  %i.an = load i64, ptr %i.r, align 8, !tbaa !18, !alias.scope !128
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i28.i
  %i.ao = phi i64 [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i28.i ]
  %i.ap = icmp ugt i64 %i.aj, %i.ao
  br i1 %i.ap, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit30.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ai, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc29.i unwind label %bb.h

.noexc29.i:                                       ; preds = %bb.j
  %.pre.i.i27.i = load ptr, ptr %4, align 8, !tbaa !15, !alias.scope !128
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit30.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit30.i: ; preds = %.noexc29.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26.i
  %i.aq = phi ptr [ %.pre.i.i27.i, %.noexc29.i ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store i8 95, ptr %i.ar, align 1, !tbaa !18
  br label %bb.t

bb.k:                                             ; preds = %.lr.ph.i.peel.next
  %i.as = sext i8 %i.ag to i32                    ; 2 uses
  %i.at = call i32 @islower(i32 noundef %i.as) #23
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr i8, ptr %i.af, i64 -1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !18
  %i.aw = sext i8 %i.av to i32                    ; 2 uses
  %i.ax = call i32 @islower(i32 noundef %i.aw) #23
  %.not22.i = icmp eq i32 %i.ax, 0
  br i1 %.not22.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = add nsw i32 %i.aw, -58
  %isdigit.i = icmp ult i32 %i.ay, -10
  %isdigittmp23.i = add nsw i32 %i.as, -48
  %isdigit24.i = icmp ult i32 %isdigittmp23.i, 10
  %or.cond.i = select i1 %isdigit.i, i1 true, i1 %isdigit24.i
  br i1 %or.cond.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.az = load i64, ptr %i.s, align 8, !tbaa !16, !alias.scope !128 ; 4 uses
  %i.ba = add i64 %i.az, 1                        ; 3 uses
  %i.bb = load ptr, ptr %4, align 8, !tbaa !15, !alias.scope !128 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.r
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i34.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i34.i: ; preds = %bb.n
  %i.bd = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.bd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31.i: ; preds = %bb.n
  %i.be = load i64, ptr %i.r, align 8, !tbaa !18, !alias.scope !128
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i34.i
  %i.bf = phi i64 [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i34.i ]
  %i.bg = icmp ugt i64 %i.ba, %i.bf
  br i1 %i.bg, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit36.i

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32.i
end_hunk_0
