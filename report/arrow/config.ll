inline.NumInlined: 182
inline.NumDeleted: 75
begin_hunk_0_@_ZN5arrow14GetRuntimeInfoEv:bb.a
  store i64 4, ptr %i.ak, align 8, !tbaa !20, !alias.scope !25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i22: ; preds = %._crit_edge.i.i36.i12, %._crit_edge.i.i28.i14, %._crit_edge.i.i20.i15, %._crit_edge.i.i12.i16, %._crit_edge.i.i.i17
  %i.al = phi i64 [ 4, %._crit_edge.i.i36.i12 ], [ 6, %._crit_edge.i.i28.i14 ], [ 3, %._crit_edge.i.i20.i15 ], [ 4, %._crit_edge.i.i12.i16 ], [ 6, %._crit_edge.i.i.i17 ]
  %.sink5.i13.sroa.phi = phi ptr [ %.sink5.i13.sroa.gep, %._crit_edge.i.i36.i12 ], [ %.sink5.i13.sroa.gep34, %._crit_edge.i.i28.i14 ], [ %.sink5.i13.sroa.gep35, %._crit_edge.i.i20.i15 ], [ %.sink5.i13.sroa.gep, %._crit_edge.i.i12.i16 ], [ %.sink5.i13.sroa.gep34, %._crit_edge.i.i.i17 ]
  store i8 0, ptr %.sink5.i13.sroa.phi, align 1, !tbaa !13, !alias.scope !25
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not21.i25 = icmp eq ptr %2, %i.c
  br i1 %.not21.i25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26, !prof !24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i22
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.al, i1 false)
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !20 ; 2 uses
  store i64 %i.ap, ptr %i.e, align 8, !tbaa !20
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store i8 0, ptr %i.ar, align 1, !tbaa !13
  %.pre.i27 = load ptr, ptr %2, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26
  %i.as = phi ptr [ %.pre.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26 ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i22 ]
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !20
  store i8 0, ptr %i.as, align 1, !tbaa !13
  %i.au = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !13
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.az, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i8 0, ptr %i.ba, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %3) #16
  %i.bc = load i8, ptr %i.ba, align 8, !tbaa !14, !range !17, !noundef !18
  %i.bd = trunc nuw i8 %i.bc to i1
  store i8 0, ptr %i.ba, align 8, !tbaa !14
  br i1 %i.bd, label %bb.i, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.be = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.i
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !13
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #15
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.j:                                             ; preds = %bb.a
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.g, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.l ], [ %i.bk, %bb.k ], [ %i.bj, %bb.j ]
  call void @_ZN5arrow11RuntimeInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) #16
  resume { ptr, i32 } %.pn
}

declare noundef ptr @_ZN5arrow8internal7CpuInfo11GetInstanceEv() local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow11RuntimeInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !14, !range !17, !noundef !18
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !14
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !13
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #15
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !7    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.n = load i64, ptr %i.l, align 8, !tbaa !13
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.p = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = load i64, ptr %i.q, align 8, !tbaa !13
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow10InitializeERKNS_13GlobalOptionsE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !14, !range !17, !noundef !18
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5arrow6Status8FromArgsIJRA115_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(115) @.str.11)
          to label %_ZN5arrow6Status7InvalidIJRA115_KcEEES0_DpOT_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !34, !alias.scope !37
  br label %_ZN5arrow6Status7InvalidIJRA115_KcEEES0_DpOT_.exit

_ZN5arrow6Status7InvalidIJRA115_KcEEES0_DpOT_.exit: ; preds = %bb.b, %bb.c
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #17
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !14, !range !17, !noundef !18
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i8, ptr %i.d, align 8, !range !17
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !7      ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h
  %i.j = load ptr, ptr %1, align 8, !tbaa !7      ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.l = icmp eq ptr %i.j, %i.k                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.l, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20   ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.o)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !24

bb.d:                                             ; preds = %bb.c
  switch i64 %i.n, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.j, align 1, !tbaa !13
  store i8 %i.p, ptr %i.g, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.j, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.q = load i64, ptr %i.m, align 8, !tbaa !20   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !20
  %i.s = load ptr, ptr %0, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !13
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %0, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !20
  store i64 %i.w, ptr %i.u, align 8, !tbaa !20
  %i.x = load i64, ptr %i.k, align 8, !tbaa !13
  store i64 %i.x, ptr %i.h, align 8, !tbaa !13
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.y = load i64, ptr %i.h, align 8, !tbaa !13
  store ptr %i.j, ptr %0, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !20
  %i.ac = load i64, ptr %i.k, align 8, !tbaa !13
  store i64 %i.ac, ptr %i.h, align 8, !tbaa !13
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.g, ptr %1, align 8, !tbaa !7
  store i64 %i.y, ptr %i.k, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.k, ptr %1, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.ad = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.g, %bb.g ], [ %i.k, %bb.h ], [ %i.j, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !20
  store i8 0, ptr %i.ad, align 1, !tbaa !13
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.i:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.j, label %2

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !19
  %i.ag = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !20 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  store ptr %i.ag, ptr %0, align 8, !tbaa !7
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !13
  store i64 %i.an, ptr %i.af, align 8, !tbaa !13
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !20
  store ptr %i.ah, ptr %1, align 8, !tbaa !7
  store i64 0, ptr %i.ao, align 8, !tbaa !20
  store i8 0, ptr %i.ah, align 8, !tbaa !13
  store i8 1, ptr %i.a, align 8, !tbaa !14
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

2:                                                ; preds = %bb.i
  store i8 0, ptr %i.a, align 8, !tbaa !14
  br i1 %i.c, label %bb.l, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.l:                                             ; preds = %2
  %i.ar = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  %i.au = load i64, ptr %i.as, align 8, !tbaa !13
  %i.av = add i64 %i.au, 1
  tail call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #15
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %2, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  ret void
}

declare noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo10IsDetectedEl(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA115_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(115) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !40
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !40
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43, !noalias !40, !nonnull !18, !align !53
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(115) %2) #16, !noalias !40
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(115) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA115_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !40 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA115_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA115_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA115_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !40
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA115_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA115_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !40
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA115_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !13
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA115_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !13
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %common.resume
}

declare void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

declare void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

declare void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_config.cc() #13 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store <4 x i32> <i32 23000001, i32 23, i32 0, i32 1>, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, align 16, !tbaa !3
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 32), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 16), align 16, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 32), ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  store i64 6, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 24), align 8, !tbaa !20
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 38), align 2, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 64), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 48), align 16, !tbaa !19
  store i32 808465202, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 64), align 16
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 56), align 8, !tbaa !20
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 68), align 4, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 96), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 80), align 16, !tbaa !19
  store i64 3471766437195952946, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 96), align 16
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 88), align 8, !tbaa !20
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 104), align 8, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 128), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 112), align 16, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 128), ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 120), align 8, !tbaa !20
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 133), align 1, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 160), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 144), align 16, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 160), ptr noundef nonnull align 1 dereferenceable(6) @.str.4, i64 6, i1 false)
  store i64 6, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 152), align 8, !tbaa !20
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 166), align 2, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 192), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 176), align 16, !tbaa !19
  %i.a = invoke noalias noundef nonnull dereferenceable(103) ptr @_Znwm(i64 noundef 103) #18
          to label %.noexc68.i unwind label %bb.b ; 4 uses

.noexc68.i:                                       ; preds = %bb.a
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 176), align 16, !tbaa !7
  store i64 102, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 192), align 16, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(102) %i.a, ptr noundef nonnull align 1 dereferenceable(102) @.str.5, i64 102, i1 false)
  store i64 102, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 184), align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 102
  store i8 0, ptr %i.b, align 1, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 224), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 208), align 16, !tbaa !19
  %i.c = invoke noalias noundef nonnull dereferenceable(41) ptr @_Znwm(i64 noundef 41) #18
          to label %.noexc76.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread.i ; 4 uses

.noexc76.i:                                       ; preds = %.noexc68.i
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 208), align 16, !tbaa !7
  store i64 40, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 224), align 16, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.c, ptr noundef nonnull align 1 dereferenceable(40) @.str.6, i64 40, i1 false)
  store i64 40, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 216), align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i8 0, ptr %i.d, align 1, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 256), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 240), align 16, !tbaa !19
  %i.e = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #18
          to label %__cxx_global_var_init.exit unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread.i: ; preds = %.noexc68.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i: ; preds = %.noexc76.i
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 41) #15
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 176), align 16, !tbaa !7 ; 2 uses
  %i.i = icmp eq ptr %.pre.i, getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 192)
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i_crit_edge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 192), align 16, !tbaa !13
  %i.j = add i64 %.pre, 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread.i
  %i.k = phi i64 [ 103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i_crit_edge ]
  %.pn.pn.pn141.i = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i_crit_edge ]
  %i.l = phi ptr [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread.i ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i_crit_edge ]
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.k) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i, %bb.b
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.f, %bb.b ], [ %.pn.pn.pn141.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i ]
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 144), align 16, !tbaa !7 ; 2 uses
  %i.n = icmp eq ptr %i.m, getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 160)
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 160), align 16, !tbaa !13
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 112), align 16, !tbaa !7 ; 2 uses
  %i.r = icmp eq ptr %i.q, getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 128)
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.i
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow12_GLOBAL__N_110kBuildInfoE, i64 128), align 16, !tbaa !13
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.i

end_hunk_0
