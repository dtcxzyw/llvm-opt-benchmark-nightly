Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/slice?download=true
inline.NumInlined: 556
inline.NumDeleted: 165
begin_hunk_0_@_ZN6casadi8is_sliceERKSt6vectorIxSaIxEEb:bb.a
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !23
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.t
  %.pn = phi { ptr, i32 } [ %i.z, %bb.t ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aa, %bb.u ] ; 2 uses
  %.1 = phi i1 [ true, %bb.t ], [ %.038, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.038, %bb.u ] ; 2 uses
  %i.ag = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !23
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %i.y, %bb.s ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.2 = phi i1 [ true, %bb.s ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.al = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !23
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.x, %bb.r ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ] ; 2 uses
  %.3 = phi i1 [ true, %bb.r ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ] ; 2 uses
  %i.aq = load ptr, ptr %9, align 8, !tbaa !17    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !23
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.w, %bb.q ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ] ; 2 uses
  %.4 = phi i1 [ true, %bb.q ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ] ; 2 uses
  %i.av = load ptr, ptr %10, align 8, !tbaa !17   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !23
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.p
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.v, %bb.p ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ] ; 2 uses
  %.5 = phi i1 [ true, %bb.p ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ] ; 2 uses
  %i.ba = load ptr, ptr %11, align 8, !tbaa !17   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !23
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.o
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.u, %bb.o ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ] ; 2 uses
  %.6 = phi i1 [ true, %bb.o ], [ %.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.bf = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !23
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.n
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.t, %bb.n ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ] ; 4 uses
  %.7 = phi i1 [ true, %bb.n ], [ %.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ] ; 2 uses
  %i.bk = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !23
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  %i.bp = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread: ; preds = %bb.d
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !23
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #20
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %i.by = load i64, ptr %i.bq, align 8, !tbaa !23
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bz) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br i1 %.7, label %bb.v, label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br i1 %.7, label %bb.v, label %bb.w

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.thread
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn106.ph = phi { ptr, i32 } [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.thread ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn106 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn106.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.p) #18
  br label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn105 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn106, %bb.v ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn105

bb.x:                                             ; preds = %.lr.ph.split
  %i.ca = add nuw i64 %.059132, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %i.g
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split, !llvm.loop !92

.critedge:                                        ; preds = %bb.x, %bb.c
  %i.cb = icmp ult i64 %i.g, 2
  br i1 %i.cb, label %.critedge78, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cc = icmp eq i64 %i.f, 16
  %i.cd = load i64, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  br i1 %i.cc, label %bb.z, label %.lr.ph140.preheader

bb.z:                                             ; preds = %bb.y
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !13
  %i.cg = icmp ne i64 %i.cd, %i.cf
  br label %.critedge78

.lr.ph140.preheader:                              ; preds = %bb.y
  %.neg144 = sext i1 %1 to i64                    ; 2 uses
  %i.ch = add i64 %i.cd, %.neg144
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !13
  %i.ck = sub nsw i64 %i.cj, %i.cd
  %umax153 = tail call i64 @llvm.umax.i64(i64 %i.g, i64 3)
  br label %.lr.ph140

.lr.ph140:                                        ; preds = %.lr.ph140, %.lr.ph140.preheader
  %.0139 = phi i64 [ %i.cq, %.lr.ph140 ], [ 2, %.lr.ph140.preheader ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0139
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !13
  %i.cn = add i64 %i.cm, %.neg144                 ; 2 uses
  %i.co = mul nsw i64 %.0139, %i.ck
  %i.cp = add nsw i64 %i.ch, %i.co                ; 2 uses
  %.not66.not = icmp ne i64 %i.cn, %i.cp
  %i.cq = add nuw i64 %.0139, 1                   ; 2 uses
  %exitcond154.not = icmp eq i64 %i.cq, %umax153
  %or.cond.not = select i1 %.not66.not, i1 true, i1 %exitcond154.not
  br i1 %or.cond.not, label %.critedge78.loopexit, label %.lr.ph140, !llvm.loop !96

.critedge78.loopexit:                             ; preds = %.lr.ph140
  %.not66 = icmp eq i64 %i.cn, %i.cp
  br label %.critedge78

.critedge78:                                      ; preds = %.lr.ph.split, %bb.b, %.critedge78.loopexit, %bb.a, %.critedge, %bb.z
  %.364 = phi i1 [ true, %bb.a ], [ %i.cg, %bb.z ], [ true, %.critedge ], [ %.not66, %.critedge78.loopexit ], [ false, %bb.b ], [ false, %.lr.ph.split ]
  ret i1 %.364

bb.aa:                                            ; preds = %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6casadi9is_slice2ERKSt6vectorIxSaIxEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::vector", align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !78     ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 6 uses
  %.not65130.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not65130.not.i, label %_ZN6casadi8is_sliceERKSt6vectorIxSaIxEEb.exit.thread, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.a, %bb.b
  %.059132.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.060131.i = phi i64 [ %i.i, %bb.b ], [ -1, %bb.a ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.059132.i
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13   ; 2 uses
  %.not.i = icmp sgt i64 %i.i, %.060131.i
  br i1 %.not.i, label %bb.b, label %.lr.ph.preheader

bb.b:                                             ; preds = %.lr.ph.split.i
  %i.j = add nuw i64 %.059132.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.j, %i.g
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.split.i, !llvm.loop !92

.critedge.i:                                      ; preds = %bb.b
  %i.k = icmp ult i64 %i.g, 2
  br i1 %i.k, label %_ZN6casadi8is_sliceERKSt6vectorIxSaIxEEb.exit.thread, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.l = icmp eq i64 %i.f, 16
  %i.m = load i64, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13   ; 2 uses
  br i1 %i.l, label %.split, label %.lr.ph140.preheader.i

.split:                                           ; preds = %bb.c
  %.not160 = icmp eq i64 %i.m, %i.o
  br i1 %.not160, label %.lr.ph.preheader, label %_ZN6casadi8is_sliceERKSt6vectorIxSaIxEEb.exit.thread

.lr.ph140.preheader.i:                            ; preds = %bb.c
  %i.p = sub nsw i64 %i.o, %i.m
  %umax153.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 3)
  br label %.lr.ph140.i

bb.d:                                             ; preds = %.lr.ph140.i
  %i.q = add nuw i64 %.0139.i, 1                  ; 2 uses
  %exitcond154.not.i = icmp eq i64 %i.q, %umax153.i
  br i1 %exitcond154.not.i, label %_ZN6casadi8is_sliceERKSt6vectorIxSaIxEEb.exit.thread, label %.lr.ph140.i, !llvm.loop !96

.lr.ph140.i:                                      ; preds = %bb.d, %.lr.ph140.preheader.i
  %.0139.i = phi i64 [ %i.q, %bb.d ], [ 2, %.lr.ph140.preheader.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0139.i
  %i.s = load i64, ptr %i.r, align 8, !tbaa !13
  %i.t = mul nsw i64 %.0139.i, %i.p
  %i.u = add nsw i64 %i.t, %i.m
  %.not66.i = icmp eq i64 %i.s, %i.u
  br i1 %.not66.i, label %bb.d, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.split.i, %.lr.ph140.i, %.split
  br label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.v = add nuw i64 %.087171, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.g
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !97

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.087171 = phi i64 [ %i.v, %bb.e ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.088170 = phi i64 [ %i.x, %bb.e ], [ -1, %.lr.ph.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.087171
  %i.x = load i64, ptr %i.w, align 8, !tbaa !13   ; 2 uses
  %.not = icmp sgt i64 %i.x, %.088170
  br i1 %.not, label %bb.e, label %_ZN6casadi8is_sliceERKSt6vectorIxSaIxEEb.exit.thread

.critedge:                                        ; preds = %bb.e
  %i.y = load i64, ptr %i.c, align 8, !tbaa !13   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !13  ; 2 uses
  %i.ab = sub nsw i64 %i.aa, %i.y                 ; 2 uses
  %i.ac = icmp ugt i64 %i.g, 2
  br i1 %i.ac, label %.lr.ph173, label %.thread142

bb.f:                                             ; preds = %.lr.ph173
  %i.ad = add nuw i64 %.076172, 1                 ; 2 uses
  %exitcond192.not = icmp eq i64 %i.ad, %i.g
  br i1 %exitcond192.not, label %.thread142, label %.lr.ph173, !llvm.loop !98

.lr.ph173:                                        ; preds = %.critedge, %bb.f
  %.076172 = phi i64 [ %i.ad, %bb.f ], [ 2, %.critedge ] ; 3 uses
  %i.ae = mul nsw i64 %.076172, %i.ab
  %i.af = add nsw i64 %i.ae, %i.y                 ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.076172
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !13 ; 2 uses
  %.not98 = icmp eq i64 %i.ah, %i.af
  br i1 %.not98, label %bb.f, label %bb.g

bb.g:                                             ; preds = %.lr.ph173
  %i.ai = sub nsw i64 %i.ah, %i.y                 ; 3 uses
  %i.aj = icmp sgt i64 %i.af, -1
  br i1 %i.aj, label %bb.x, label %.thread142

.thread142:                                       ; preds = %bb.f, %.critedge, %bb.g
  %i.ak = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.thread

bb.h:                                             ; preds = %.thread142
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread

bb.i:                                             ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.1)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !alias.scope !99
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #19
          to label %bb.ab unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.thread: ; preds = %.thread142
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.p:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

bb.q:                                             ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

bb.r:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

bb.s:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

bb.t:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.u:                                             ; preds = %bb.o, %bb.n
  %.060 = phi i1 [ false, %bb.o ], [ true, %bb.n ] ; 2 uses
  %i.ar = landingpad { ptr, i32 }
end_hunk_0
