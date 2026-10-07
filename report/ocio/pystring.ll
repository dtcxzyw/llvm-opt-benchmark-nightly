Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/pystring?download=true
inline.NumInlined: 1018
inline.NumDeleted: 184
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8pystring2os4path10join_posixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_:.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %.noexc
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit7 unwind label %bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  invoke void @_ZN8pystring2os4path10join_posixERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.lr.ph.i.i.i unwind label %bb.a

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit7
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !21
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.05.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.p = load ptr, ptr %.05.i.i.i.ptr.1, align 8, !tbaa !20 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.1: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !21
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.1

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.1: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.1, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit7
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8pystring2os4path14normpath_posixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %3 = alloca %"class.std::vector", align 8       ; 12 uses
  %4 = alloca %"class.std::vector", align 8       ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !23   ; 5 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !24
  %i.j = load ptr, ptr @_ZN8pystringL3dotB5cxx11E, align 8, !tbaa !20 ; 2 uses
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8pystringL3dotB5cxx11E, i64 8), align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  store i64 %i.k, ptr %i.e, align 8, !tbaa !25
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !20
  %i.n = load i64, ptr %i.e, align 8, !tbaa !25
  store i64 %i.n, ptr %i.i, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.o = phi ptr [ %i.m, %.noexc.i ], [ %i.i, %bb.b ] ; 2 uses
  switch i64 %i.k, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.j, align 1, !tbaa !21
  store i8 %i.p, ptr %i.o, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.j, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.q = load i64, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !23
  %i.s = load ptr, ptr %0, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %bb.bb

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 17 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !24
  %i.v = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 %i.g, ptr %i.d, align 8, !tbaa !25
  %i.w = icmp ugt i64 %i.g, 15
  br i1 %i.w, label %._crit_edge.i.i22.thread, label %._crit_edge.i.i22

._crit_edge.i.i22.thread:                         ; preds = %bb.e
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.x, ptr %2, align 8, !tbaa !20
  %i.y = load i64, ptr %i.d, align 8, !tbaa !25
  store i64 %i.y, ptr %i.u, align 8, !tbaa !21
  br label %bb.g

._crit_edge.i.i22:                                ; preds = %bb.e
  %cond = icmp eq i64 %i.g, 1
  br i1 %cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i22
  %i.z = load i8, ptr %i.v, align 1, !tbaa !21
  store i8 %i.z, ptr %i.u, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit24

bb.g:                                             ; preds = %._crit_edge.i.i22.thread, %._crit_edge.i.i22
  %i.aa = phi ptr [ %i.x, %._crit_edge.i.i22.thread ], [ %i.u, %._crit_edge.i.i22 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.v, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit24: ; preds = %bb.f, %bb.g
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !25  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !23
  %i.ad = load ptr, ptr %2, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %.val.i = load ptr, ptr %2, align 8, !tbaa !20  ; 3 uses
  %.val4.i = load i64, ptr %i.ac, align 8, !tbaa !23
  %.val6.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8pystringL13forward_slashB5cxx11E, i64 8), align 8, !tbaa !23 ; 2 uses
  %i.af = trunc i64 %.val4.i to i32               ; 3 uses
  %i.ag = trunc i64 %.val6.i to i32
  %i.ah = icmp sgt i32 %i.ag, %i.af
  br i1 %i.ah, label %_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread, label %_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit

_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit24
  %.val5.i = load ptr, ptr @_ZN8pystringL13forward_slashB5cxx11E, align 8, !tbaa !20
  %sext.i.i = shl i64 %.val6.i, 32
  %i.ai = ashr exact i64 %sext.i.i, 32
  %bcmp.i.i = call i32 @bcmp(ptr readonly %.val.i, ptr readonly %.val5.i, i64 %i.ai)
  %.not47.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not47.i.i, label %bb.h, label %_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread

bb.h:                                             ; preds = %_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit
  %.val6.i28 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8pystringL20double_forward_slashB5cxx11E, i64 8), align 8, !tbaa !23 ; 2 uses
  %i.aj = trunc i64 %.val6.i28 to i32
  %i.ak = icmp sgt i32 %i.aj, %i.af
  br i1 %i.ak, label %_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread, label %_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit37

_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit37: ; preds = %bb.h
  %.val5.i27 = load ptr, ptr @_ZN8pystringL20double_forward_slashB5cxx11E, align 8, !tbaa !20
  %sext.i.i33 = shl i64 %.val6.i28, 32
  %i.al = ashr exact i64 %sext.i.i33, 32
  %bcmp.i.i34 = call i32 @bcmp(ptr readonly %.val.i, ptr readonly %.val5.i27, i64 %i.al)
  %.not47.i.i35 = icmp eq i32 %bcmp.i.i34, 0
  br i1 %.not47.i.i35, label %bb.i, label %_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread

bb.i:                                             ; preds = %_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit37
  %.val6.i41 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8pystringL20triple_forward_slashB5cxx11E, i64 8), align 8, !tbaa !23 ; 2 uses
  %i.am = trunc i64 %.val6.i41 to i32
  %i.an = icmp sgt i32 %i.am, %i.af
  br i1 %i.an, label %_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread, label %_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit50

_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit50: ; preds = %bb.i
  %.val5.i40 = load ptr, ptr @_ZN8pystringL20triple_forward_slashB5cxx11E, align 8, !tbaa !20
  %sext.i.i46 = shl i64 %.val6.i41, 32
  %i.ao = ashr exact i64 %sext.i.i46, 32
  %bcmp.i.i47 = call i32 @bcmp(ptr readonly %.val.i, ptr readonly %.val5.i40, i64 %i.ao)
  %bcmp.i.i47.fr = freeze i32 %bcmp.i.i47
  %.not47.i.i48 = icmp eq i32 %bcmp.i.i47.fr, 0
  %spec.select = select i1 %.not47.i.i48, i32 1, i32 2
  br label %_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread

_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread: ; preds = %_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit50, %bb.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit24, %_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit37, %_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit
  %.0.i.i113 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit24 ], [ false, %_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit ], [ true, %_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit37 ], [ true, %bb.i ], [ true, %bb.h ], [ true, %_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit50 ] ; 2 uses
  %.015 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit24 ], [ 0, %_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit ], [ 1, %_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit37 ], [ 2, %bb.i ], [ 1, %bb.h ], [ %spec.select, %_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit50 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN8pystring5splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS5_SaIS5_EES7_i(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8pystringL13forward_slashB5cxx11E, i32 noundef -1)
          to label %.preheader unwind label %bb.j

.preheader:                                       ; preds = %_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.ar = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %.not122 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not122, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.k

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZN8pystring4joinERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8pystringL13forward_slashB5cxx11E, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.y unwind label %bb.ao

bb.j:                                             ; preds = %.noexc.i88, %_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.k:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.ax = phi ptr [ %i.ar, %.lr.ph ], [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ]
  %i.ay = phi i64 [ 0, %.lr.ph ], [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ]
  %.0121 = phi i32 [ 0, %.lr.ph ], [ %i.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %i.ay ; 2 uses
  store ptr %i.as, ptr %5, align 8, !tbaa !24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !20 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 %i.bc, ptr %i.c, align 8, !tbaa !25
  %i.bd = icmp ugt i64 %i.bc, 15
  br i1 %i.bd, label %.noexc.i52, label %._crit_edge.i.i51

.noexc.i52:                                       ; preds = %bb.k
  %i.be = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %.noexc.i52
  store ptr %i.be, ptr %5, align 8, !tbaa !20
  %i.bf = load i64, ptr %i.c, align 8, !tbaa !25
  store i64 %i.bf, ptr %i.as, align 8, !tbaa !21
  br label %._crit_edge.i.i51

._crit_edge.i.i51:                                ; preds = %.noexc, %bb.k
  %i.bg = phi ptr [ %i.be, %.noexc ], [ %i.as, %bb.k ] ; 2 uses
  switch i64 %i.bc, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i51
  %i.bh = load i8, ptr %i.ba, align 1, !tbaa !21
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !21
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i51
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.ba, i64 %i.bc, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i51
  %i.bi = load i64, ptr %i.c, align 8, !tbaa !25  ; 2 uses
  store i64 %i.bi, ptr %i.at, align 8, !tbaa !23
  %i.bj = load ptr, ptr %5, align 8, !tbaa !20
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store i8 0, ptr %i.bk, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.bl = load i64, ptr %i.at, align 8, !tbaa !23 ; 11 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8pystringL3dotB5cxx11E, i64 8), align 8, !tbaa !23
  %i.bo = icmp eq i64 %i.bl, %i.bn
  br i1 %i.bo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.o
  %i.bp = load ptr, ptr @_ZN8pystringL3dotB5cxx11E, align 8, !tbaa !20
  %i.bq = load ptr, ptr %5, align 8, !tbaa !20
  %bcmp.i = call i32 @bcmp(ptr %i.bq, ptr %i.bp, i64 %i.bl)
  %i.br = icmp eq i32 %bcmp.i, 0
  br i1 %i.br, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.p:                                             ; preds = %.noexc.i52
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.o, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bt = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8pystringL10double_dotB5cxx11E, i64 8), align 8, !tbaa !23
  %i.bu = icmp eq i64 %i.bl, %i.bt
  br i1 %i.bu, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread_crit_edge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread_crit_edge: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %.pre124 = load ptr, ptr %i.au, align 8, !tbaa !15
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.bv = load ptr, ptr @_ZN8pystringL10double_dotB5cxx11E, align 8, !tbaa !20 ; 2 uses
  %i.bw = load ptr, ptr %5, align 8, !tbaa !20
  %bcmp.i.i54 = call i32 @bcmp(ptr %i.bw, ptr %i.bv, i64 %i.bl)
  %.not115 = icmp eq i32 %bcmp.i.i54, 0
  %.pre125 = load ptr, ptr %i.au, align 8, !tbaa !30 ; 8 uses
  br i1 %.not115, label %bb.q, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.q:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %.pre = load ptr, ptr %4, align 8, !tbaa !30    ; 4 uses
  %9 = icmp ne ptr %.pre, %.pre125
  %or.cond = select i1 %.0.i.i113, i1 true, i1 %9
  br i1 %or.cond, label %bb.r, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.bx = icmp eq ptr %.pre, %.pre125
  br i1 %i.bx, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = ptrtoint ptr %.pre125 to i64
  %i.bz = ptrtoint ptr %.pre to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = getelementptr i8, ptr %.pre, i64 %i.ca  ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 -24
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !23
  %i.ce = icmp eq i64 %i.cd, %i.bl
  br i1 %i.ce, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56: ; preds = %bb.s
  %i.cf = getelementptr i8, ptr %i.cb, i64 -32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !20
  %bcmp.i55 = call i32 @bcmp(ptr %i.cg, ptr %i.bv, i64 %i.bl)
  %i.ch = icmp eq i32 %bcmp.i55, 0
  br i1 %i.ch, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.q, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ci = phi ptr [ %.pre124, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread_crit_edge ], [ %.pre125, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56 ], [ %.pre125, %bb.q ], [ %.pre125, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ] ; 8 uses
  %i.cj = load ptr, ptr %i.av, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.ci, %i.cj
  br i1 %.not.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 4 uses
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !24
  %i.cl = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 %i.bl, ptr %i.b, align 8, !tbaa !25
  %i.cm = icmp ugt i64 %i.bl, 15
  br i1 %i.cm, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.t
  %i.cn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %._crit_edge.i.i.i.thread unwind label %bb.x ; 2 uses

._crit_edge.i.i.i.thread:                         ; preds = %.noexc.i.i
  store ptr %i.cn, ptr %i.ci, align 8, !tbaa !20
  %i.co = load i64, ptr %i.b, align 8, !tbaa !25
  store i64 %i.co, ptr %i.ck, align 8, !tbaa !21
  br label %bb.v

._crit_edge.i.i.i:                                ; preds = %bb.t
  %cond114 = icmp eq i64 %i.bl, 1
  br i1 %cond114, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i.i
  %i.cp = load i8, ptr %i.cl, align 1, !tbaa !21
  store i8 %i.cp, ptr %i.ck, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.thread, %._crit_edge.i.i.i
  %i.cq = phi ptr [ %i.cn, %._crit_edge.i.i.i.thread ], [ %i.ck, %._crit_edge.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.cl, i64 %i.bl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.v, %bb.u
  %i.cr = load i64, ptr %i.b, align 8, !tbaa !25  ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !23
  %i.ct = load ptr, ptr %i.ci, align 8, !tbaa !20
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cr
  store i8 0, ptr %i.cu, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.cv = load ptr, ptr %i.au, align 8, !tbaa !15
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  store ptr %i.cw, ptr %i.au, align 8, !tbaa !15
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.w:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w, %.noexc.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.as
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.x
  %i.da = load i64, ptr %i.as, align 8, !tbaa !21
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread: ; preds = %bb.s, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56
  %i.dc = getelementptr inbounds i8, ptr %.pre125, i64 -32 ; 2 uses
  store ptr %i.dc, ptr %i.au, align 8, !tbaa !15
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !20 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.pre125, i64 -16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !21
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit56.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.w, %bb.n, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.di = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.as
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.dk = load i64, ptr %i.as, align 8, !tbaa !21
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.dm = add i32 %.0121, 1                       ; 2 uses
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.dp = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = ashr exact i64 %i.ds, 5
  %i.du = icmp ugt i64 %i.dt, %i.dn
  br i1 %i.du, label %bb.k, label %._crit_edge, !llvm.loop !170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.p
  %.pn18 = phi { ptr, i32 } [ %i.bs, %bb.p ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cx, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.ba

bb.y:                                             ; preds = %._crit_edge
  %i.dv = load ptr, ptr %2, align 8, !tbaa !20    ; 6 uses
  %i.dw = icmp eq ptr %i.dv, %i.u
  %i.dx = load ptr, ptr %6, align 8, !tbaa !20    ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy                ; 2 uses
  br i1 %i.dw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.y
  br i1 %i.dz, label %bb.z, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.y
  br i1 %i.dz, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !23 ; 3 uses
  %i.ec = icmp ult i64 %i.eb, 16
  call void @llvm.assume(i1 %i.ec)
  switch i64 %i.eb, label %bb.ab [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ed = load i8, ptr %i.dx, align 1, !tbaa !21
  store i8 %i.ed, ptr %i.dv, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dv, ptr align 1 %i.dx, i64 %i.eb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ab, %bb.aa, %bb.z
  %i.ee = load i64, ptr %i.ea, align 8, !tbaa !23 ; 2 uses
  store i64 %i.ee, ptr %i.ac, align 8, !tbaa !23
  %i.ef = load ptr, ptr %2, align 8, !tbaa !20
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ee
  store i8 0, ptr %i.eg, align 1, !tbaa !21
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.dx, ptr %2, align 8, !tbaa !20
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ei = load <2 x i64>, ptr %i.eh, align 8, !tbaa !21
  store <2 x i64> %i.ei, ptr %i.ac, align 8, !tbaa !21
  br label %bb.ad

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ej = load i64, ptr %i.u, align 8, !tbaa !21
  store ptr %i.dx, ptr %2, align 8, !tbaa !20
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.el = load <2 x i64>, ptr %i.ek, align 8, !tbaa !21
  store <2 x i64> %i.el, ptr %i.ac, align 8, !tbaa !21
  %.not.i62 = icmp eq ptr %i.dv, null
  br i1 %.not.i62, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.dv, ptr %6, align 8, !tbaa !20
  store i64 %i.ej, ptr %i.dy, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.dy, ptr %6, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ac, %bb.ad
  %i.em = phi ptr [ %i.dv, %bb.ac ], [ %i.dy, %bb.ad ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.en, align 8, !tbaa !23
  store i8 0, ptr %i.em, align 1, !tbaa !21
  %i.eo = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !21
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.0.i.i113, label %bb.ae, label %bb.ar

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZN8pystring3mulERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8pystringL13forward_slashB5cxx11E, i32 noundef %.015)
          to label %bb.af unwind label %bb.ap

bb.af:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.et = load i64, ptr %i.ac, align 8, !tbaa !23, !noalias !173 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !23, !noalias !173
  %i.ew = sub i64 4611686018427387903, %i.ev
  %i.ex = icmp ult i64 %i.ew, %i.et
  br i1 %i.ex, label %bb.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #25
          to label %.noexc68 unwind label %bb.aq

.noexc68:                                         ; preds = %bb.ag
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.af
  %i.ey = load ptr, ptr %2, align 8, !tbaa !20, !noalias !173
  %i.ez = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.ey, i64 noundef %i.et)
          to label %.noexc69 unwind label %bb.aq  ; 6 uses

.noexc69:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  store ptr %i.fa, ptr %7, align 8, !tbaa !24, !alias.scope !173
  %i.fb = load ptr, ptr %i.ez, align 8, !tbaa !20 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 5 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %bb.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

bb.ah:                                            ; preds = %.noexc69
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !23 ; 3 uses
  %i.fg = icmp ult i64 %i.ff, 16
  call void @llvm.assume(i1 %i.fg)
  %i.fh = add nuw nsw i64 %i.ff, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fa, ptr noundef nonnull align 8 dereferenceable(1) %i.fc, i64 %i.fh, i1 false)
  br label %bb.ai

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %.noexc69
  store ptr %i.fb, ptr %7, align 8, !tbaa !20, !alias.scope !173
  %i.fi = load i64, ptr %i.fc, align 8, !tbaa !21
  store i64 %i.fi, ptr %i.fa, align 8, !tbaa !21, !alias.scope !173
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %.pre.i67 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !23
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66, %bb.ah
  %i.fj = phi i64 [ %i.ff, %bb.ah ], [ %.pre.i67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 %i.fj, ptr %i.fl, align 8, !tbaa !23, !alias.scope !173
  store ptr %i.fc, ptr %i.ez, align 8, !tbaa !20
  store i64 0, ptr %i.fk, align 8, !tbaa !23
  store i8 0, ptr %i.fc, align 8, !tbaa !21
  %i.fm = load ptr, ptr %2, align 8, !tbaa !20    ; 6 uses
  %i.fn = icmp eq ptr %i.fm, %i.u
  %i.fo = load ptr, ptr %7, align 8, !tbaa !20    ; 5 uses
  %i.fp = icmp eq ptr %i.fo, %i.fa                ; 2 uses
  br i1 %i.fn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i75: ; preds = %bb.ai
  br i1 %i.fp, label %bb.aj, label %.thread.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i70: ; preds = %bb.ai
  br i1 %i.fp, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i71

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i75
  %i.fq = load i64, ptr %i.fl, align 8, !tbaa !23 ; 3 uses
  %i.fr = icmp ult i64 %i.fq, 16
  call void @llvm.assume(i1 %i.fr)
  switch i64 %i.fq, label %bb.al [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i73
    i64 1, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.fs = load i8, ptr %i.fo, align 1, !tbaa !21
  store i8 %i.fs, ptr %i.fm, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i73

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fm, ptr align 1 %i.fo, i64 %i.fq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i73: ; preds = %bb.al, %bb.ak, %bb.aj
  %i.ft = load i64, ptr %i.fl, align 8, !tbaa !23 ; 2 uses
  store i64 %i.ft, ptr %i.ac, align 8, !tbaa !23
  %i.fu = load ptr, ptr %2, align 8, !tbaa !20
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ft
  store i8 0, ptr %i.fv, align 1, !tbaa !21
  %.pre.i74 = load ptr, ptr %7, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit77

.thread.i76:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i75
  store ptr %i.fo, ptr %2, align 8, !tbaa !20
  %i.fw = load <2 x i64>, ptr %i.fl, align 8, !tbaa !21
  store <2 x i64> %i.fw, ptr %i.ac, align 8, !tbaa !21
  br label %bb.an

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i71: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i70
  %i.fx = load i64, ptr %i.u, align 8, !tbaa !21
  store ptr %i.fo, ptr %2, align 8, !tbaa !20
  %i.fy = load <2 x i64>, ptr %i.fl, align 8, !tbaa !21
  store <2 x i64> %i.fy, ptr %i.ac, align 8, !tbaa !21
  %.not.i72 = icmp eq ptr %i.fm, null
  br i1 %.not.i72, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i71
  store ptr %i.fm, ptr %7, align 8, !tbaa !20
  store i64 %i.fx, ptr %i.fa, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit77

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i71, %.thread.i76
  store ptr %i.fa, ptr %7, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i73, %bb.am, %bb.an
  %i.fz = phi ptr [ %i.fm, %bb.am ], [ %i.fa, %bb.an ], [ %.pre.i74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i73 ]
  store i64 0, ptr %i.fl, align 8, !tbaa !23
  store i8 0, ptr %i.fz, align 1, !tbaa !21
  %i.ga = load ptr, ptr %7, align 8, !tbaa !20    ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.fa
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit77
  %i.gc = load i64, ptr %i.fa, align 8, !tbaa !21
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  %i.ge = load ptr, ptr %8, align 8, !tbaa !20    ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !21
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.ar

bb.ao:                                            ; preds = %._crit_edge
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.ba

bb.ap:                                            ; preds = %bb.ae
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.ag
  %i.gl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gm = load ptr, ptr %8, align 8, !tbaa !20    ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.aq
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !21
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.gk, %bb.ap ], [ %i.gl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ], [ %i.gl, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.ba

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.gr = load i64, ptr %i.ac, align 8, !tbaa !23 ; 4 uses
  %i.gs = icmp eq i64 %i.gr, 0
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.gt, ptr %0, align 8, !tbaa !24
  br i1 %i.gs, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.gu = load ptr, ptr @_ZN8pystringL3dotB5cxx11E, align 8, !tbaa !20 ; 2 uses
  %i.gv = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8pystringL3dotB5cxx11E, i64 8), align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.gv, ptr %i.a, align 8, !tbaa !25
  %i.gw = icmp ugt i64 %i.gv, 15
  br i1 %i.gw, label %.noexc.i88, label %._crit_edge.i.i87

end_hunk_0
