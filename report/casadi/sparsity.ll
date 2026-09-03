Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sparsity?download=true
inline.NumInlined: 3537
inline.NumDeleted: 780
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN6casadi8Sparsity8nonzerosExxRKSt6vectorIxSaIxEEb:bb.a

bb.o:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.j, %bb.i
  %.021 = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %6, align 8, !tbaa !25     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.m = load i64, ptr %i.k, align 8, !tbaa !26
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %.pn = phi { ptr, i32 } [ %i.h, %bb.o ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %bb.p ] ; 2 uses
  %.122 = phi i1 [ true, %bb.o ], [ %.021, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.021, %bb.p ] ; 2 uses
  %i.o = load ptr, ptr %11, align 8, !tbaa !25    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !26
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.g, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.223 = phi i1 [ true, %bb.n ], [ %.122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %.122, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.t = load ptr, ptr %12, align 8, !tbaa !25    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.w = load i64, ptr %i.u, align 8, !tbaa !26
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.f, %bb.m ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ] ; 2 uses
  %.324 = phi i1 [ true, %bb.m ], [ %.223, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %.223, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ] ; 2 uses
  %i.y = load ptr, ptr %13, align 8, !tbaa !25    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !26
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.e, %bb.l ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ] ; 2 uses
  %.425 = phi i1 [ true, %bb.l ], [ %.324, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %.324, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.ad = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !26
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.k
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.d, %bb.k ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ] ; 4 uses
  %.526 = phi i1 [ true, %bb.k ], [ %.425, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %.425, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ] ; 2 uses
  %i.ai = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !26
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  %i.an = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.thread: ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.thread
  %i.au = load i64, ptr %i.as, align 8, !tbaa !26
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #30
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.aw = load i64, ptr %i.ao, align 8, !tbaa !26
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ax) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %.526, label %bb.q, label %bb.ak

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %.526, label %bb.q, label %bb.ak

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.thread
  %.pn.pn.pn.pn.pn.pn.pn89.ph = phi { ptr, i32 } [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.thread ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %.pn.pn.pn.pn.pn.pn.pn89 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %.pn.pn.pn.pn.pn.pn.pn89.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.b) #28
  br label %bb.ak

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !40 ; 2 uses
  %i.ba = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 3 uses
  %i.be = ashr exact i64 %i.bd, 3                 ; 2 uses
  %i.bf = icmp ugt i64 %i.be, 1152921504606846975
  br i1 %i.bf, label %bb.s, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.210) #29
          to label %.noexc unwind label %bb.ac

.noexc:                                           ; preds = %bb.s
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.r
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.ba
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i, label %bb.t

_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  br label %bb.u

bb.t:                                             ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #32
          to label %.noexc69 unwind label %bb.ac  ; 6 uses

.noexc69:                                         ; preds = %bb.t
  store ptr %i.bg, ptr %16, align 8, !tbaa !36
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bd ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !37
  store i64 0, ptr %i.bg, align 8, !tbaa !39
  %i.bj = getelementptr i8, ptr %i.bg, i64 8      ; 3 uses
  %i.bk = add nsw i64 %i.be, -1                   ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.u, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc69
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bk, 3  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bj, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !39
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.u

bb.u:                                             ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc69, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i
  %i.bn = phi ptr [ null, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i ], [ %i.bh, %.noexc69 ], [ %i.bh, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %i.bo = phi ptr [ null, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i ], [ %i.bg, %.noexc69 ], [ %i.bg, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 7 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i ], [ %i.bj, %.noexc69 ], [ %i.bm, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.bp, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.bq = load ptr, ptr %i.ay, align 8, !tbaa !40 ; 2 uses
  %i.br = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 3 uses
  %i.bv = ashr exact i64 %i.bu, 3                 ; 2 uses
  %i.bw = icmp ugt i64 %i.bv, 1152921504606846975
  br i1 %i.bw, label %bb.v, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i70

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.210) #29
          to label %.noexc76 unwind label %bb.ad

.noexc76:                                         ; preds = %bb.v
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i70: ; preds = %bb.u
  %.not.i.i.i.i71 = icmp eq ptr %i.bq, %i.br
  br i1 %.not.i.i.i.i71, label %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i75, label %bb.w

_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i75: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  br label %bb.x

bb.w:                                             ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i70
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #32
          to label %.noexc77 unwind label %bb.ad  ; 6 uses

.noexc77:                                         ; preds = %bb.w
  store ptr %i.bx, ptr %17, align 8, !tbaa !36
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bu ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !37
  store i64 0, ptr %i.bx, align 8, !tbaa !39
  %i.ca = getelementptr i8, ptr %i.bx, i64 8      ; 3 uses
  %i.cb = add nsw i64 %i.bv, -1                   ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.x, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i72

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i72: ; preds = %.noexc77
  %.idx.i.i.i.i.i.i.i73 = shl nuw nsw i64 %i.cb, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ca, i8 0, i64 %.idx.i.i.i.i.i.i.i73, i1 false), !tbaa !39
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx.i.i.i.i.i.i.i73
  br label %bb.x

bb.x:                                             ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i72, %.noexc77, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i75
  %i.ce = phi ptr [ null, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i75 ], [ %i.by, %.noexc77 ], [ %i.by, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i72 ] ; 2 uses
  %i.cf = phi ptr [ null, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i75 ], [ %i.bx, %.noexc77 ], [ %i.bx, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i72 ] ; 7 uses
  %.0.i.i.i.i.i74 = phi ptr [ null, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i75 ], [ %i.ca, %.noexc77 ], [ %i.cd, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i72 ]
  %i.cg = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %.0.i.i.i.i.i74, ptr %i.cg, align 8, !tbaa !40
  %i.ch = load ptr, ptr %i.ay, align 8, !tbaa !40 ; 2 uses
  %i.ci = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %.not = icmp eq ptr %i.ch, %i.ci
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ashr exact i64 %i.cl, 3
  %.neg = sext i1 %4 to i64
  br label %bb.ae

._crit_edge:                                      ; preds = %bb.ae, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !416
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !416
  invoke void @_ZN6casadi8Sparsity7tripletExxRKSt6vectorIxSaIxEES5_RS3_b(ptr dead_on_unwind writable sret(%"class.casadi::Sparsity") align 8 %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull readonly align 8 dereferenceable(24) %16, ptr noundef nonnull readonly align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext false)
          to label %bb.y unwind label %bb.aa, !inline_history !64

bb.y:                                             ; preds = %._crit_edge
  %i.cn = load ptr, ptr %5, align 8, !tbaa !36, !noalias !416 ; 3 uses
  %.not.i.i.i.i79 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i79, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !37, !noalias !416
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cs) #30, !inline_history !64
  br label %bb.af

bb.aa:                                            ; preds = %._crit_edge
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %5, align 8, !tbaa !36, !noalias !416 ; 3 uses
  %.not.i.i.i5.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i5.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit6.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !37, !noalias !416
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cz) #30, !inline_history !64
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit6.i

_ZNSt6vectorIxSaIxEED2Ev.exit6.i:                 ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !416
  %.not.i.i.i82 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i82, label %_ZNSt6vectorIxSaIxEED2Ev.exit83, label %bb.ai

bb.ac:                                            ; preds = %bb.t, %bb.s
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit85

bb.ad:                                            ; preds = %bb.w, %bb.v
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit83

bb.ae:                                            ; preds = %.lr.ph, %bb.ae
  %.020101.a = phi i64 [ 0, %.lr.ph ], [ %i.dj, %bb.ae ] ; 4 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.020101.a
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !39
  %i.de = add i64 %i.dd, %.neg                    ; 2 uses
  %i.df = srem i64 %i.de, %1
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.020101.a
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !39
  %i.dh = sdiv i64 %i.de, %1
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.020101.a
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !39
  %i.dj = add nuw nsw i64 %.020101.a, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.dj, %i.cm
  br i1 %exitcond.not, label %._crit_edge, label %bb.ae, !llvm.loop !414

bb.af:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !416
  %.not.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dk = ptrtoint ptr %i.ce to i64
  %i.dl = ptrtoint ptr %i.cf to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.dm) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %.not.i.i.i80 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i80, label %_ZNSt6vectorIxSaIxEED2Ev.exit81, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.dn = ptrtoint ptr %i.bn to i64
  %i.do = ptrtoint ptr %i.bo to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.dp) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit81

_ZNSt6vectorIxSaIxEED2Ev.exit81:                  ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  ret void

bb.ai:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit6.i
  %i.dq = ptrtoint ptr %i.ce to i64
  %i.dr = ptrtoint ptr %i.cf to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ds) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit83

_ZNSt6vectorIxSaIxEED2Ev.exit83:                  ; preds = %bb.ai, %_ZNSt6vectorIxSaIxEED2Ev.exit6.i, %bb.ad
  %.pn47 = phi { ptr, i32 } [ %i.db, %bb.ad ], [ %i.ct, %_ZNSt6vectorIxSaIxEED2Ev.exit6.i ], [ %i.ct, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %.not.i.i.i84 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i84, label %_ZNSt6vectorIxSaIxEED2Ev.exit85, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit83
  %i.dt = ptrtoint ptr %i.bn to i64
  %i.du = ptrtoint ptr %i.bo to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.dv) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit85

_ZNSt6vectorIxSaIxEED2Ev.exit85:                  ; preds = %bb.aj, %_ZNSt6vectorIxSaIxEED2Ev.exit83, %bb.ac
  %.pn47.pn = phi { ptr, i32 } [ %i.da, %bb.ac ], [ %.pn47, %_ZNSt6vectorIxSaIxEED2Ev.exit83 ], [ %.pn47, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %bb.q, %_ZNSt6vectorIxSaIxEED2Ev.exit85
  %.pn47.pn.pn = phi { ptr, i32 } [ %.pn47.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit85 ], [ %.pn.pn.pn.pn.pn.pn.pn89, %bb.q ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ]
  resume { ptr, i32 } %.pn47.pn.pn

bb.al:                                            ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6casadi8Sparsity11is_singularEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::vector", align 8      ; 5 uses
  %i.a = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.b = tail call noundef zeroext i1 @_ZNK6casadi16SparsityInternal9is_squareEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
  br i1 %i.b, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 40) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.111, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.1)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.d = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.e
  invoke void @_ZNK6casadi16SparsityInternal3dimB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i1 noundef zeroext false)
          to label %_ZNK6casadi8Sparsity3dimB5cxx11Eb.exit unwind label %bb.l

_ZNK6casadi8Sparsity3dimB5cxx11Eb.exit:           ; preds = %.noexc
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull @.str.113, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %_ZNK6casadi8Sparsity3dimB5cxx11Eb.exit
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull @.str.112, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !alias.scope !419
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #29
          to label %bb.u unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.k:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.l:                                             ; preds = %.noexc, %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.m:                                             ; preds = %_ZNK6casadi8Sparsity3dimB5cxx11Eb.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.n:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.o:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.p:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.q:                                             ; preds = %bb.j, %bb.i
  %.0 = phi i1 [ false, %bb.j ], [ true, %bb.i ]  ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.p = load i64, ptr %i.n, align 8, !tbaa !26
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.p
  %.pn = phi { ptr, i32 } [ %i.k, %bb.p ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.l, %bb.q ] ; 2 uses
  %.1 = phi i1 [ true, %bb.p ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0, %bb.q ] ; 2 uses
  %i.r = load ptr, ptr %6, align 8, !tbaa !25     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !26
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.o
end_hunk_0
