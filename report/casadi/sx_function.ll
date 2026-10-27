Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sx_function?download=true
inline.NumInlined: 11328
inline.NumDeleted: 2796
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN6casadi7FactoryINS_6MatrixINS_6SXElemEEEE9add_inputERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS3_b:bb.a

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit38: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread: ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.p:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.q:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

bb.r:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

bb.s:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.t:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

bb.u:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.v:                                             ; preds = %bb.n, %bb.m
  %.0 = phi i1 [ false, %bb.n ], [ true, %bb.m ]  ; 2 uses
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %5, align 8, !tbaa !161   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  %i.av = load i64, ptr %i.at, align 8, !tbaa !162
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.u
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.u ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ar, %bb.v ] ; 2 uses
  %.1 = phi i1 [ true, %bb.u ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0, %bb.v ] ; 2 uses
  %i.ax = load ptr, ptr %10, align 8, !tbaa !161  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !162
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.t ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.2 = phi i1 [ true, %bb.t ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.bc = load ptr, ptr %11, align 8, !tbaa !161  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !162
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.s ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ] ; 2 uses
  %.3 = phi i1 [ true, %bb.s ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ] ; 2 uses
  %i.bh = load ptr, ptr %12, align 8, !tbaa !161  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !162
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %bb.r
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.an, %bb.r ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ] ; 2 uses
  %.4 = phi i1 [ true, %bb.r ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ] ; 2 uses
  %i.bm = load ptr, ptr %13, align 8, !tbaa !161  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !162
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %bb.q
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.am, %bb.q ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ] ; 2 uses
  %.5 = phi i1 [ true, %bb.q ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.br = load ptr, ptr %6, align 8, !tbaa !161   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !162
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.p
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.al, %bb.p ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ] ; 4 uses
  %.6 = phi i1 [ true, %bb.p ], [ %.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ] ; 2 uses
  %i.bw = load ptr, ptr %7, align 8, !tbaa !161   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !162
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  %i.cb = load ptr, ptr %8, align 8, !tbaa !161   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread: ; preds = %bb.f
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %8, align 8, !tbaa !161   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !162
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #29
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.ck = load i64, ptr %i.cc, align 8, !tbaa !162
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cl) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.6, label %bb.w, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.6, label %bb.w, label %bb.aj

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.thread
  %.pn.pn.pn.pn.pn.pn.pn.pn64.ph = phi { ptr, i32 } [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.thread ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %.pn.pn.pn.pn.pn.pn.pn.pn64 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn64.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.ae) #28
  br label %bb.aj

bb.x:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !70 ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.cn, %i.cp
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cq = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.cq, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !71
  %i.cr = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.cr, label %bb.z, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !71
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %i.cs, ptr %i.cm, align 8, !tbaa !70
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.z, %bb.y
  %i.ct = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.cu = shl nuw i64 1, %i.ct                    ; 2 uses
  br i1 %3, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.cv = load i64, ptr %i.cn, align 8, !tbaa !178
  %i.cw = or i64 %i.cv, %i.cu
  br label %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i

bb.ab:                                            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.cx = xor i64 %i.cu, -1
  %i.cy = load i64, ptr %i.cn, align 8, !tbaa !178
  %i.cz = and i64 %i.cy, %i.cx
  br label %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i

bb.ac:                                            ; preds = %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.da, ptr %i.cn, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %3)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt14_Bit_referenceaSEb.exit.sink.split.i:      ; preds = %bb.ab, %bb.aa
  %.sink.i = phi i64 [ %i.cw, %bb.aa ], [ %i.cz, %bb.ab ]
  store i64 %.sink.i, ptr %i.cn, align 8, !tbaa !178
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.ac, %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i
  %i.db = load ptr, ptr %i.c, align 8, !tbaa !159 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !309
  %.not.i60 = icmp eq ptr %i.db, %i.dd
  br i1 %.not.i60, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  call void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.db, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.de = load ptr, ptr %i.c, align 8, !tbaa !159
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  store ptr %i.df, ptr %i.c, align 8, !tbaa !159
  br label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE9push_backERKS3_.exit

bb.ae:                                            ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  call void @_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.db, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.ad, %bb.ae
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !221 ; 8 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !222
  %.not.i61 = icmp eq ptr %i.dh, %i.dj
  br i1 %.not.i61, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE9push_backERKS3_.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 3 uses
  store ptr %i.dk, ptr %i.dh, align 8, !tbaa !177
  %i.dl = load ptr, ptr %1, align 8, !tbaa !161   ; 2 uses
  %i.dm = load i64, ptr %i.m, align 8, !tbaa !176 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.dm, ptr %i.a, align 8, !tbaa !178
  %i.dn = icmp ugt i64 %i.dm, 15
  br i1 %i.dn, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.af
  %i.do = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.dh, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.do, ptr %i.dh, align 8, !tbaa !161
  %i.dp = load i64, ptr %i.a, align 8, !tbaa !178
  store i64 %i.dp, ptr %i.dk, align 8, !tbaa !162
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.af
  %i.dq = phi ptr [ %i.do, %.noexc.i.i ], [ %i.dk, %bb.af ] ; 2 uses
  switch i64 %i.dm, label %bb.ah [
    i64 1, label %bb.ag
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i.i
  %i.dr = load i8, ptr %i.dl, align 1, !tbaa !162
  store i8 %i.dr, ptr %i.dq, align 1, !tbaa !162
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.ah:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dq, ptr align 1 %i.dl, i64 %i.dm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.ah, %bb.ag, %._crit_edge.i.i.i
  %i.ds = load i64, ptr %i.a, align 8, !tbaa !178 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !176
  %i.du = load ptr, ptr %i.dh, align 8, !tbaa !161
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ds
  store i8 0, ptr %i.dv, align 1, !tbaa !162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.dw = load ptr, ptr %i.dg, align 8, !tbaa !221
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  store ptr %i.dx, ptr %i.dg, align 8, !tbaa !221
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.ai:                                            ; preds = %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE9push_backERKS3_.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.ai
  ret void

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %bb.w, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit38
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn64, %bb.w ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %i.af, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit38 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn

bb.ak:                                            ; preds = %bb.n
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi7FactoryINS_6MatrixINS_6SXElemEEEE10add_outputERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS3_b(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.std::pair.331", align 8    ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::vector.17", align 8   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !159
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !160
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !177, !alias.scope !1222
  %i.m = load ptr, ptr %1, align 8, !tbaa !161, !noalias !1222 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !176, !noalias !1222 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !1222
  store i64 %i.o, ptr %i.b, align 8, !tbaa !178, !noalias !1222
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %4, align 8, !tbaa !161, !alias.scope !1222
  %i.r = load i64, ptr %i.b, align 8, !tbaa !178, !noalias !1222
  store i64 %i.r, ptr %i.l, align 8, !tbaa !162, !alias.scope !1222
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.s = phi ptr [ %i.q, %.noexc.i.i.i ], [ %i.l, %bb.a ] ; 2 uses
  switch i64 %i.o, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZSt9make_pairIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSA_INSB_IT0_E4typeEE6__typeEEOSC_OSH_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.t = load i8, ptr %i.m, align 1, !tbaa !162
  store i8 %i.t, ptr %i.s, align 1, !tbaa !162
  br label %_ZSt9make_pairIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSA_INSB_IT0_E4typeEE6__typeEEOSC_OSH_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.m, i64 %i.o, i1 false)
  br label %_ZSt9make_pairIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSA_INSB_IT0_E4typeEE6__typeEEOSC_OSH_.exit

_ZSt9make_pairIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSA_INSB_IT0_E4typeEE6__typeEEOSC_OSH_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.b, %bb.c
  %i.u = load i64, ptr %i.b, align 8, !tbaa !178, !noalias !1222 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !176, !alias.scope !1222
  %i.w = load ptr, ptr %4, align 8, !tbaa !161, !alias.scope !1222
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !1222
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.j, ptr %i.y, align 8, !tbaa !402, !alias.scope !1222
  %i.z = invoke { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE6insertIS8_IS5_mEEENSt9enable_ifIXsr16is_constructibleISA_T_EE5valueES8_ISt17_Rb_tree_iteratorISA_EbEE4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %_ZSt9make_pairIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSA_INSB_IT0_E4typeEE6__typeEEOSC_OSH_.exit
  %.fca.1.extract = extractvalue { ptr, i8 } %i.z, 1
  %i.aa = load ptr, ptr %4, align 8, !tbaa !161   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.l
  br i1 %i.ab, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !162
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #29
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.ae = trunc i8 %.fca.1.extract to i1
  br i1 %i.ae, label %bb.x, label %bb.e

bb.e:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit
  %i.af = call ptr @__cxa_allocate_exception(i64 40) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.406, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.6)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
end_hunk_0
begin_hunk_1_@_ZN6casadi7FactoryINS_6MatrixINS_6SXElemEEEE10add_outputERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS3_b:bb.a

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit38: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread: ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.p:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.q:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

bb.r:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

bb.s:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.t:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

bb.u:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.v:                                             ; preds = %bb.n, %bb.m
  %.0 = phi i1 [ false, %bb.n ], [ true, %bb.m ]  ; 2 uses
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %5, align 8, !tbaa !161   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !162
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.u
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.u ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.as, %bb.v ] ; 2 uses
  %.1 = phi i1 [ true, %bb.u ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0, %bb.v ] ; 2 uses
  %i.ay = load ptr, ptr %10, align 8, !tbaa !161  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !162
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.t ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.2 = phi i1 [ true, %bb.t ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.bd = load ptr, ptr %11, align 8, !tbaa !161  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !162
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.s ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ] ; 2 uses
  %.3 = phi i1 [ true, %bb.s ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ] ; 2 uses
  %i.bi = load ptr, ptr %12, align 8, !tbaa !161  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !162
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %bb.r
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ] ; 2 uses
  %.4 = phi i1 [ true, %bb.r ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ] ; 2 uses
  %i.bn = load ptr, ptr %13, align 8, !tbaa !161  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !162
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %bb.q
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.an, %bb.q ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ] ; 2 uses
  %.5 = phi i1 [ true, %bb.q ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.bs = load ptr, ptr %6, align 8, !tbaa !161   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !162
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.p
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.am, %bb.p ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ] ; 4 uses
  %.6 = phi i1 [ true, %bb.p ], [ %.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ] ; 2 uses
  %i.bx = load ptr, ptr %7, align 8, !tbaa !161   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !162
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  %i.cc = load ptr, ptr %8, align 8, !tbaa !161   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread: ; preds = %bb.f
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %8, align 8, !tbaa !161   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !162
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #29
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.cl = load i64, ptr %i.cd, align 8, !tbaa !162
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cm) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.6, label %bb.w, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.6, label %bb.w, label %bb.aj

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.thread
  %.pn.pn.pn.pn.pn.pn.pn.pn64.ph = phi { ptr, i32 } [ %i.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.thread ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.thread ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %.pn.pn.pn.pn.pn.pn.pn.pn64 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn64.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.af) #28
  br label %bb.aj

bb.x:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !70 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.co, %i.cq
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.cr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !71
  %i.cs = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.cs, label %bb.z, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !71
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.ct, ptr %i.cn, align 8, !tbaa !70
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.z, %bb.y
  %i.cu = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.cv = shl nuw i64 1, %i.cu                    ; 2 uses
  br i1 %3, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.cw = load i64, ptr %i.co, align 8, !tbaa !178
  %i.cx = or i64 %i.cw, %i.cv
  br label %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i

bb.ab:                                            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.cy = xor i64 %i.cv, -1
  %i.cz = load i64, ptr %i.co, align 8, !tbaa !178
  %i.da = and i64 %i.cz, %i.cy
  br label %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i

bb.ac:                                            ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.db, ptr %i.co, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %3)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt14_Bit_referenceaSEb.exit.sink.split.i:      ; preds = %bb.ab, %bb.aa
  %.sink.i = phi i64 [ %i.cx, %bb.aa ], [ %i.da, %bb.ab ]
  store i64 %.sink.i, ptr %i.co, align 8, !tbaa !178
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.ac, %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i
  %i.dc = load ptr, ptr %i.d, align 8, !tbaa !159 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !309
  %.not.i60 = icmp eq ptr %i.dc, %i.de
  br i1 %.not.i60, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  call void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.dc, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.df = load ptr, ptr %i.d, align 8, !tbaa !159
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  store ptr %i.dg, ptr %i.d, align 8, !tbaa !159
  br label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE9push_backERKS3_.exit

bb.ae:                                            ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  call void @_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.dc, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.ad, %bb.ae
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !221 ; 8 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !222
  %.not.i61 = icmp eq ptr %i.di, %i.dk
  br i1 %.not.i61, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE9push_backERKS3_.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 3 uses
  store ptr %i.dl, ptr %i.di, align 8, !tbaa !177
  %i.dm = load ptr, ptr %1, align 8, !tbaa !161   ; 2 uses
  %i.dn = load i64, ptr %i.n, align 8, !tbaa !176 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.dn, ptr %i.a, align 8, !tbaa !178
  %i.do = icmp ugt i64 %i.dn, 15
  br i1 %i.do, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.af
  %i.dp = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.di, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.dp, ptr %i.di, align 8, !tbaa !161
  %i.dq = load i64, ptr %i.a, align 8, !tbaa !178
  store i64 %i.dq, ptr %i.dl, align 8, !tbaa !162
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.af
  %i.dr = phi ptr [ %i.dp, %.noexc.i.i ], [ %i.dl, %bb.af ] ; 2 uses
  switch i64 %i.dn, label %bb.ah [
    i64 1, label %bb.ag
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i.i
  %i.ds = load i8, ptr %i.dm, align 1, !tbaa !162
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !162
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.ah:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dr, ptr align 1 %i.dm, i64 %i.dn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.ah, %bb.ag, %._crit_edge.i.i.i
  %i.dt = load i64, ptr %i.a, align 8, !tbaa !178 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !176
  %i.dv = load ptr, ptr %i.di, align 8, !tbaa !161
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dt
  store i8 0, ptr %i.dw, align 1, !tbaa !162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.dx = load ptr, ptr %i.dh, align 8, !tbaa !221
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  store ptr %i.dy, ptr %i.dh, align 8, !tbaa !221
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.ai:                                            ; preds = %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE9push_backERKS3_.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, ptr %i.di, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.ai
  ret void

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %bb.w, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit38
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn64, %bb.w ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %i.ag, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit38 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn

bb.ak:                                            ; preds = %bb.n
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi7FactoryINS_6MatrixINS_6SXElemEEEE8add_dualERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISB_SaISB_EESt4lessISB_ESaISt4pairIKSB_SE_EEE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.casadi::Matrix", align 8    ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.casadi::Sparsity", align 8  ; 9 uses
  %4 = alloca %"struct.std::pair.306", align 8    ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.casadi::Matrix", align 8    ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"struct.std::pair.341", align 8    ; 11 uses
  %9 = alloca %"class.casadi::Matrix", align 8    ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.casadi::Matrix", align 8   ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !159
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !160  ; 2 uses
  %.not303 = icmp eq ptr %i.d, %i.e
  br i1 %.not303, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !298  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not298 = icmp eq ptr %i.r, %i.s
  br i1 %.not298, label %._crit_edge302, label %.lr.ph301

.lr.ph301:                                        ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %bb.n

bb.b:                                             ; preds = %.lr.ph, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit
  %i.as = phi ptr [ %i.e, %.lr.ph ], [ %i.dk, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit ]
  %.023292 = phi i64 [ 0, %.lr.ph ], [ %i.di, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.au = sdiv i64 %.023292, 64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.au
  %i.aw = and i64 %.023292, -9223372036854775745
  %i.ax = icmp ugt i64 %i.aw, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.ax, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.av, i64 %storemerge.idx.i.i.i.i.i
  %i.ay = and i64 %.023292, 63
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !178
  %i.bb = and i64 %i.ba, %i.az
  %.not159 = icmp eq i64 %i.bb, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %i.as, i64 %.023292
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixINS_6SXElemEE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bc) ; 2 uses
  br i1 %.not159, label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit35, label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit

_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit: ; preds = %bb.b
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !47
  store ptr %i.be, ptr %3, align 8, !tbaa !47
  call void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.c

_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit35: ; preds = %bb.b
  %i.bf = call { i64, i64 } @_ZNK6casadi8Sparsity4sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bd) ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 0
  store i64 %i.bg, ptr %4, align 8
  %i.bh = extractvalue { i64, i64 } %i.bf, 1
  store i64 %i.bh, ptr %i.g, align 8
  call void @_ZN6casadi8SparsityC1ERKSt4pairIxxE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit35, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !220
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %.023292 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1237)
end_hunk_1
