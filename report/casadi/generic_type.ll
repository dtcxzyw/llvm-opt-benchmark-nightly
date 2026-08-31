Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/generic_type?download=true
inline.NumInlined: 3438
inline.NumDeleted: 966
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK6casadi11GenericType14to_bool_vectorEv:bb.a
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.m:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

bb.n:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %bb.i, %bb.h
  %.012 = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !57     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.s = load i64, ptr %i.q, align 8, !tbaa !62
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %.pn = phi { ptr, i32 } [ %i.n, %bb.n ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.o, %bb.o ] ; 2 uses
  %.113 = phi i1 [ true, %bb.n ], [ %.012, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.012, %bb.o ] ; 2 uses
  %i.u = load ptr, ptr %7, align 8, !tbaa !57     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = load i64, ptr %i.v, align 8, !tbaa !62
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.m, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.214 = phi i1 [ true, %bb.m ], [ %.113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %.113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.z = load ptr, ptr %8, align 8, !tbaa !57     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !62
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.l, %bb.l ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ] ; 2 uses
  %.315 = phi i1 [ true, %bb.l ], [ %.214, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %.214, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ] ; 2 uses
  %i.ae = load ptr, ptr %9, align 8, !tbaa !57    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !62
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70, %bb.k
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.k, %bb.k ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ] ; 2 uses
  %.416 = phi i1 [ true, %bb.k ], [ %.315, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %.315, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.aj = load ptr, ptr %3, align 8, !tbaa !57    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !62
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %bb.j
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.j, %bb.j ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ] ; 4 uses
  %.517 = phi i1 [ true, %bb.j ], [ %.416, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %.416, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ] ; 2 uses
  %i.ao = load ptr, ptr %4, align 8, !tbaa !57    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !62
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  %i.at = load ptr, ptr %5, align 8, !tbaa !57    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.thread: ; preds = %bb.b
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %5, align 8, !tbaa !57    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.thread
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !62
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #21
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.bc = load i64, ptr %i.au, align 8, !tbaa !62
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.bd) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.517, label %bb.p, label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.517, label %bb.p, label %bb.an

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.thread
  %.pn.pn.pn.pn.pn.pn.pn111.ph = phi { ptr, i32 } [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %.pn.pn.pn.pn.pn.pn.pn111 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ], [ %.pn.pn.pn.pn.pn.pn.pn111.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.h) #20
  br label %bb.an

bb.q:                                             ; preds = %_ZNK6casadi11GenericType13is_int_vectorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @_ZNK6casadi11GenericType13to_int_vectorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !142 ; 2 uses
  %i.bg = load ptr, ptr %12, align 8, !tbaa !25   ; 7 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64               ; 3 uses
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 5 uses
  store ptr null, ptr %0, align 8, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.bl, align 8, !tbaa !132
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.bm, align 8, !tbaa !37
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.bn, align 8, !tbaa !132
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr null, ptr %i.bo, align 8, !tbaa !40
  %.not.i.i.i = icmp eq ptr %i.bf, %i.bg
  br i1 %.not.i.i.i, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = add nsw i64 %i.bk, 63                   ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = and i64 %i.bq, 2305843009213693944
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #24
          to label %.lr.ph unwind label %.body    ; 6 uses

.lr.ph:                                           ; preds = %bb.r
  %i.bt = lshr i64 %i.bp, 6                       ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bt
  store ptr %i.bu, ptr %i.bo, align 8, !tbaa !40
  store ptr %i.bs, ptr %0, align 8
  store i32 0, ptr %i.bl, align 8
  %i.bv = sdiv i64 %i.bk, 64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bv
  %i.bx = and i64 %i.bk, -9223372036854775745
  %i.by = icmp ugt i64 %i.bx, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.by, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bw, i64 %storemerge.idx.i.i.i.i.i.i
  %i.bz = trunc i64 %i.bk to i32
  %i.ca = and i32 %i.bz, 63
  store ptr %storemerge.i.i.i.i.i.i, ptr %i.bm, align 8
  store i32 %i.ca, ptr %i.bn, align 8
  %.idx.i.i = shl nuw nsw i64 %i.bt, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bs, i8 0, i64 %.idx.i.i, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %_ZNSt14_Bit_referenceaSEb.exit
  %.011137 = phi i64 [ 0, %.lr.ph ], [ %i.ek, %_ZNSt14_Bit_referenceaSEb.exit ] ; 4 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.011137
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !145 ; 2 uses
  %switch = icmp ult i64 %i.cc, 2
  br i1 %switch, label %bb.aj, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = tail call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.67, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.u unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.v unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread

bb.v:                                             ; preds = %bb.u
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.1)
          to label %bb.w unwind label %bb.ac

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.69, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %bb.w
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull @.str.68, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false), !alias.scope !177
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(24) %22)
          to label %bb.z unwind label %bb.af

bb.z:                                             ; preds = %bb.y
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.aa unwind label %bb.ag

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.ab unwind label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_throw(ptr nonnull %i.cd, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #23
          to label %bb.ao unwind label %bb.ah

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread: ; preds = %bb.t
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split181

bb.ac:                                            ; preds = %bb.v
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

bb.ad:                                            ; preds = %bb.w
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

bb.ae:                                            ; preds = %bb.x
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.af:                                            ; preds = %bb.y
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.ag:                                            ; preds = %bb.z
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.ah:                                            ; preds = %bb.ab, %bb.aa
  %.0 = phi i1 [ false, %bb.ab ], [ true, %bb.aa ] ; 2 uses
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %13, align 8, !tbaa !57   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.ah
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !62
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.ag
  %.pn52 = phi { ptr, i32 } [ %i.cj, %bb.ag ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.ck, %bb.ah ] ; 2 uses
  %.1 = phi i1 [ true, %bb.ag ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %.0, %bb.ah ] ; 2 uses
  %i.cq = load ptr, ptr %18, align 8, !tbaa !57   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !62
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.af
  %.pn52.pn = phi { ptr, i32 } [ %i.ci, %bb.af ], [ %.pn52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %.pn52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ] ; 2 uses
  %.2 = phi i1 [ true, %bb.af ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  %i.cv = load ptr, ptr %19, align 8, !tbaa !57   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !62
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.ae
  %.pn52.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.ae ], [ %.pn52.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %.pn52.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ] ; 2 uses
  %.3 = phi i1 [ true, %bb.ae ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ] ; 2 uses
  %i.da = load ptr, ptr %20, align 8, !tbaa !57   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !62
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.ad
  %.pn52.pn.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.ad ], [ %.pn52.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %.pn52.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ] ; 2 uses
  %.4 = phi i1 [ true, %bb.ad ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.df = load ptr, ptr %14, align 8, !tbaa !57   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !62
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.ac
  %.pn52.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.ac ], [ %.pn52.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %.pn52.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ] ; 4 uses
  %.5 = phi i1 [ true, %bb.ac ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ] ; 2 uses
  %i.dk = load ptr, ptr %15, align 8, !tbaa !57   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !62
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  %i.dp = load ptr, ptr %16, align 8, !tbaa !57   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread: ; preds = %bb.u
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = load ptr, ptr %16, align 8, !tbaa !57   ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %.sink.split181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !62
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #21
  br label %.sink.split181
end_hunk_0
begin_hunk_1_@_ZN6casadi11GenericTypeC2ERKSt6vectorIiSaIiEE:bb.a
  br i1 %i.bz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ca = load i64, ptr %.sroa.015.0, align 8, !tbaa !145
  store i64 %i.ca, ptr %i.bu, align 8, !tbaa !145
  br label %bb.i

.body:                                            ; preds = %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6casadi21GenericSharedInternalINS_12SharedObjectENS_20SharedObjectInternalEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(48) %i.bl) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 48) #21
  br label %bb.n

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %.thread
  %i.cc = phi ptr [ %i.bw, %bb.f ], [ %i.bw, %bb.g ], [ %i.bw, %bb.h ], [ %i.br, %.thread ]
  %i.cd = phi ptr [ %i.bv, %bb.f ], [ %i.bv, %bb.g ], [ %i.bv, %bb.h ], [ %i.bq, %.thread ]
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !142
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE3ownEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bl)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq ptr %.sroa.015.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = ptrtoint ptr %.sroa.14.0 to i64
  %i.cf = sub i64 %i.ce, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.015.0, i64 noundef %i.cf) #21
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.c, %bb.b
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit14

bb.m:                                             ; preds = %bb.i, %.loopexit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ch, %bb.m ], [ %i.cb, %.body ] ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %.sroa.015.0, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIxSaIxEED2Ev.exit14, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = ptrtoint ptr %.sroa.14.0 to i64
  %i.cj = sub i64 %i.ci, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.015.0, i64 noundef %i.cj) #21
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit14

_ZNSt6vectorIxSaIxEED2Ev.exit14:                  ; preds = %bb.o, %bb.n, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.l ], [ %.pn, %bb.n ], [ %.pn, %bb.o ]
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit14
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  tail call void @__clang_call_terminate(ptr %i.cl) #22
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit14
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi11GenericTypeC2ERKSt6vectorIS1_IxSaIxEESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !214
  %i.a = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24
          to label %bb.b unwind label %bb.e       ; 3 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6casadi19GenericTypeInternalILNS_6TypeIDE6ESt6vectorIS2_IxSaIxEESaIS4_EEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE3ownEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  ret void

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.b, %bb.e ], [ %i.c, %bb.f ]
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #22
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi19GenericTypeInternalILNS_6TypeIDE6ESt6vectorIS2_IxSaIxEESaIS4_EEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6casadi19GenericTypeInternalILNS_6TypeIDE6ESt6vectorIS2_IxSaIxEESaIS4_EEEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %.noexc3, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sdiv exact i64 %i.h, 24
  %i.j = icmp ugt i64 %i.i, 384307168202282325
  br i1 %i.j, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorIxSaIxEEE8allocateEmPKv.exit.i.i.i.i, !prof !143

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt6vectorIxSaIxEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #24
          to label %.noexc3 unwind label %bb.f

.noexc3:                                          ; preds = %_ZNSt15__new_allocatorISt6vectorIxSaIxEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.l = phi ptr [ null, %bb.a ], [ %i.k, %_ZNSt15__new_allocatorISt6vectorIxSaIxEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !36
  %i.p = load ptr, ptr %1, align 8, !tbaa !123
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !123
  %i.r = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIxSaIxEES2_IS4_SaIS4_EEEEPS4_ET0_T_SC_SB_(ptr %i.p, ptr %i.q, ptr noundef %i.l)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc3
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #21
  br label %.body

bb.e:                                             ; preds = %.noexc3
  store ptr %i.r, ptr %i.m, align 8, !tbaa !33
  ret void

bb.f:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIxSaIxEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.y, %bb.f ], [ %i.s, %bb.d ], [ %i.s, %bb.c ]
  tail call void @_ZN6casadi21GenericSharedInternalINS_12SharedObjectENS_20SharedObjectInternalEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #20
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi11GenericTypeC2ERKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(8) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !214
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !132
  %2 = load ptr, ptr %1, align 8, !tbaa !37
  %3 = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %2 to i64
  %i.f = sub i64 %3, %i.e
  %i.g = shl nsw i64 %i.f, 3
  %i.h = zext i32 %i.d to i64
  %i.i = add nsw i64 %i.g, %i.h                   ; 5 uses
  %i.j = icmp ugt i64 %i.i, 1152921504606846975
  br i1 %i.j, label %bb.b, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #23
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 3
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #24
          to label %.noexc19 unwind label %bb.l   ; 5 uses

.noexc19:                                         ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !145
  %i.n = getelementptr i8, ptr %i.l, i64 8        ; 3 uses
  %i.o = add nsw i64 %i.i, -1                     ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc19
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.o, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !145
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit

_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc19, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.14.0 = phi ptr [ %i.m, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.m, %.noexc19 ], [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.024.0 = phi ptr [ %i.l, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.l, %.noexc19 ], [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ] ; 10 uses
  %.0.i.i.i.i.i = phi ptr [ %i.q, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.n, %.noexc19 ], [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !37     ; 3 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.t = load i32, ptr %i.c, align 8, !tbaa !132  ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.v = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = shl nsw i64 %i.w, 3
  %i.y = zext i32 %i.t to i64                     ; 3 uses
  %i.z = add i64 %i.x, %i.y                       ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i.preheader, label %.loopexit

_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i.preheader: ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit
  %i.ab = shl i64 %i.u, 3
  %i.ac = add i64 %i.ab, %i.y
  %i.ad = shl i64 %i.v, 3
  %.neg = or disjoint i64 %i.ad, 1
  %xtraiter = and i64 %i.y, 1                     ; 2 uses
  %i.ae = icmp eq i64 %i.ac, %.neg
  br i1 %i.ae, label %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i.epil.preheader, label %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i.preheader.new

_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i.preheader.new: ; preds = %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i.preheader
  %unroll_iter = sub nsw i64 %i.z, %xtraiter
  br label %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i

_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i:    ; preds = %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i, %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i.preheader.new
  %.0413.i.i.i.i.i = phi ptr [ %.sroa.024.0, %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i.preheader.new ], [ %i.as, %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.5.012.i.i.i.i.i = phi i32 [ 0, %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i.preheader.new ], [ %spec.select10.i.i.i.i.i.1, %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.05.011.i.i.i.i.i = phi ptr [ %i.r, %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i.preheader.new ], [ %spec.select.i.i.i.i.i.1, %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i.preheader.new ], [ %niter.next.1, %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i ]
  %i.af = zext nneg i32 %.sroa.5.012.i.i.i.i.i to i64
  %i.ag = load i64, ptr %.sroa.05.011.i.i.i.i.i, align 8, !tbaa !99
  %i.ah = lshr i64 %i.ag, %i.af
  %i.ai = and i64 %i.ah, 1
  store i64 %i.ai, ptr %.0413.i.i.i.i.i, align 8, !tbaa !145
  %i.aj = add i32 %.sroa.5.012.i.i.i.i.i, 1
  %i.ak = icmp eq i32 %.sroa.5.012.i.i.i.i.i, 63  ; 2 uses
  %spec.select.idx.i.i.i.i.i = select i1 %i.ak, i64 8, i64 0
  %spec.select.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.011.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i ; 2 uses
  %spec.select10.i.i.i.i.i = select i1 %i.ak, i32 0, i32 %i.aj ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0413.i.i.i.i.i, i64 8
  %i.am = zext nneg i32 %spec.select10.i.i.i.i.i to i64
  %i.an = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !99
  %i.ao = lshr i64 %i.an, %i.am
  %i.ap = and i64 %i.ao, 1
  store i64 %i.ap, ptr %i.al, align 8, !tbaa !145
  %i.aq = add i32 %spec.select10.i.i.i.i.i, 1
  %i.ar = icmp eq i32 %spec.select10.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.1 = select i1 %i.ar, i64 8, i64 0
  %spec.select.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i.1 ; 2 uses
  %spec.select10.i.i.i.i.i.1 = select i1 %i.ar, i32 0, i32 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0413.i.i.i.i.i, i64 16 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.loopexit.unr-lcssa, label %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i, !llvm.loop !238

.loopexit.loopexit.unr-lcssa:                     ; preds = %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i.epil.preheader

_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i.epil.preheader: ; preds = %.loopexit.loopexit.unr-lcssa, %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i.preheader
  %.0413.i.i.i.i.i.epil.init = phi ptr [ %.sroa.024.0, %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i.preheader ], [ %i.as, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.5.012.i.i.i.i.i.epil.init = phi i32 [ 0, %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i.preheader ], [ %spec.select10.i.i.i.i.i.1, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.05.011.i.i.i.i.i.epil.init = phi ptr [ %i.r, %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i.preheader ], [ %spec.select.i.i.i.i.i.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod34 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.at = zext nneg i32 %.sroa.5.012.i.i.i.i.i.epil.init to i64
  %i.au = load i64, ptr %.sroa.05.011.i.i.i.i.i.epil.init, align 8, !tbaa !99
  %i.av = lshr i64 %i.au, %i.at
  %i.aw = and i64 %i.av, 1
  store i64 %i.aw, ptr %.0413.i.i.i.i.i.epil.init, align 8, !tbaa !145
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i.i.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit
  %i.ax = ptrtoint ptr %.sroa.024.0 to i64        ; 3 uses
  %i.ay = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24
          to label %bb.d unwind label %bb.m       ; 10 uses

bb.d:                                             ; preds = %.loopexit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6casadi19GenericTypeInternalILNS_6TypeIDE5ESt6vectorIxSaIxEEEE, i64 16), ptr %i.ay, align 8, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 3 uses
  %i.bb = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.bc = sub i64 %i.bb, %i.ax                    ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i, %.sroa.024.0
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.be = getelementptr inbounds i8, ptr null, i64 %i.bc ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !29
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.bg = icmp ugt i64 %i.bc, 9223372036854775800
  br i1 %i.bg, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i.i, !prof !143

.noexc.i.i.i:                                     ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc.i unwind label %.body

.noexc.i:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.e
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #24
          to label %.noexc3.i unwind label %.body ; 5 uses

.noexc3.i:                                        ; preds = %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.bh, ptr %i.ba, align 8, !tbaa !25
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 4 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !142
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bc ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !29
  %i.bl = icmp samesign ugt i64 %i.bc, 8
  br i1 %i.bl, label %bb.f, label %bb.g, !prof !237

bb.f:                                             ; preds = %.noexc3.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr align 8 %.sroa.024.0, i64 %i.bc, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %.noexc3.i
  %i.bm = icmp eq i64 %i.bc, 8
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bn = load i64, ptr %.sroa.024.0, align 8, !tbaa !145
  store i64 %i.bn, ptr %i.bh, align 8, !tbaa !145
  br label %bb.i

.body:                                            ; preds = %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6casadi21GenericSharedInternalINS_12SharedObjectENS_20SharedObjectInternalEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(48) %i.ay) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 48) #21
  br label %bb.n

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %.thread
  %i.bp = phi ptr [ %i.bj, %bb.f ], [ %i.bj, %bb.g ], [ %i.bj, %bb.h ], [ %i.be, %.thread ]
  %i.bq = phi ptr [ %i.bi, %bb.f ], [ %i.bi, %bb.g ], [ %i.bi, %bb.h ], [ %i.bd, %.thread ]
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !142
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE3ownEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ay)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq ptr %.sroa.024.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = ptrtoint ptr %.sroa.14.0 to i64
  %i.bs = sub i64 %i.br, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.024.0, i64 noundef %i.bs) #21
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.j, %bb.k
end_hunk_1
begin_hunk_2_@_ZN6casadi3strINS_8FunctionEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS9_EEb:bb.a
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !118, !noalias !464 ; 2 uses
  %i.ah = ptrtoint ptr %.08.i.i.i to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ag, i64 noundef %i.aj)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !57, !alias.scope !464 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.y
  br i1 %i.an, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.ao = load i64, ptr %i.y, align 8, !tbaa !62, !alias.scope !464
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #21
  br label %.body

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aq)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.ar = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ar, ptr %3, align 8, !tbaa !8
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %3, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8, !tbaa !8
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ax, align 8, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !57 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !62
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #21
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ax, align 8, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.be) #20
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bf, ptr %3, align 8, !tbaa !8
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bh = getelementptr i8, ptr %i.bf, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %3, i64 %i.bi
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bk, align 8, !tbaa !119
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bl) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

.body:                                            ; preds = %bb.d, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.b
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.m, %bb.b ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %i.al, %bb.d ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIxSaIxEES2_IS4_SaIS4_EEEEPS4_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not15 = icmp eq ptr %0, %1
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.017 = phi ptr [ %i.w, %bb.f ], [ %2, %bb.a ]  ; 6 uses
  %.sroa.09.016 = phi ptr [ %i.v, %bb.f ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 2 uses
  %i.c = load ptr, ptr %.sroa.09.016, align 8, !tbaa !25 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.017, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i.i, !prof !143

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %.017, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %.017, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !142
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.017, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !29
  %i.m = load ptr, ptr %.sroa.09.016, align 8, !tbaa !121 ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.c, label %bb.d, !prof !144

bb.c:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.m, i64 %i.q, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc8
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.m, align 8, !tbaa !145
  store i64 %i.t, ptr %i.i, align 8, !tbaa !145
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !142
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.017, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.v, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !465

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.x = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #20 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorIxSaIxEEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.017)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_rethrow() #23
          to label %bb.l unwind label %bb.i

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.w, %bb.f ]
  ret ptr %.0.lcssa

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.z

bb.k:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #22
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPxS_IxSaIxEEEEEEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.g = load ptr, ptr %0, align 8, !tbaa !43     ; 6 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.d, 1152921504606846975
  br i1 %i.l, label %bb.c, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #23
  unreachable

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #24 ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.m, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i ] ; 2 uses
  %i.n = load i64, ptr %.0910.i.i.i.i.i.i.i.i.i, align 8, !tbaa !145
  %i.o = sitofp i64 %i.n to double
  store double %i.o, ptr %.0811.i.i.i.i.i.i.i.i.i, align 8, !tbaa !154
  %i.p = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 8
  %i.r = add nsw i64 %.012.i.i.i.i.i.i.i.i.i, -1
  %i.s = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPxS_IxSaIxEEEEEEPdmT_SA_.exit, !llvm.loop !156

_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPxS_IxSaIxEEEEEEPdmT_SA_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %0, align 8, !tbaa !43     ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPxS_IxSaIxEEEEEEPdmT_SA_.exit
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #21
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit: ; preds = %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPxS_IxSaIxEEEEEEPdmT_SA_.exit, %bb.d
  store ptr %i.m, ptr %0, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c ; 2 uses
  store ptr %i.z, ptr %i.t, align 8, !tbaa !157
  store ptr %i.z, ptr %i.e, align 8, !tbaa !46
  br label %_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd.exit

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !157 ; 5 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.i                     ; 3 uses
  %.not = icmp ult i64 %i.ad, %i.c
  br i1 %.not, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp sgt i64 %i.d, 0
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEPdET0_T_S9_S8_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.f
  %xtraiter = and i64 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.012.i.i.i.i.i.prol = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.prol ], [ %i.d, %.lr.ph.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.prol = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.prol ], [ %i.g, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.prol = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.af = load i64, ptr %.0910.i.i.i.i.i.prol, align 8, !tbaa !145
  %i.ag = sitofp i64 %i.af to double
  store double %i.ag, ptr %.0811.i.i.i.i.i.prol, align 8, !tbaa !154
  %i.ah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 8 ; 3 uses
  %i.aj = add nsw i64 %.012.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !466

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.unr = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %.lr.ph.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.i.i.i.prol ]
  %.lcssa39.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %.lr.ph.i.i.i.i.i.prol ]
  %i.ak = icmp ult i64 %i.d, 4
  br i1 %i.ak, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEPdET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.al = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !145
  %i.am = sitofp i64 %i.al to double
  store double %i.am, ptr %.0811.i.i.i.i.i, align 8, !tbaa !154
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !145
  %i.aq = sitofp i64 %i.ap to double
  store double %i.aq, ptr %i.ao, align 8, !tbaa !154
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !145
  %i.au = sitofp i64 %i.at to double
  store double %i.au, ptr %i.as, align 8, !tbaa !154
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !145
  %i.ay = sitofp i64 %i.ax to double
  store double %i.ay, ptr %i.aw, align 8, !tbaa !154
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 2 uses
  %i.bb = add nsw i64 %.012.i.i.i.i.i, -4
  %i.bc = icmp sgt i64 %.012.i.i.i.i.i, 4
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEPdET0_T_S9_S8_.exit, !llvm.loop !156

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEPdET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.f
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.g, %bb.f ], [ %.lcssa39.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ba, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.not.i18 = icmp eq ptr %i.ab, %.08.lcssa.i.i.i.i.i
  br i1 %.not.i18, label %_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i:          ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEPdET0_T_S9_S8_.exit
  store ptr %.08.lcssa.i.i.i.i.i, ptr %i.aa, align 8, !tbaa !157
  br label %_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.ad ; 3 uses
  %i.bd = ptrtoint ptr %.sink.i to i64
  %i.be = ashr exact i64 %i.ad, 3                 ; 5 uses
  %i.bf = icmp sgt i64 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i20.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEPdET0_T_S9_S8_.exit24

.lr.ph.i.i.i.i.i20.preheader:                     ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %xtraiter40 = and i64 %i.be, 3                  ; 2 uses
  %lcmp.mod41.not = icmp eq i64 %xtraiter40, 0
  br i1 %lcmp.mod41.not, label %.lr.ph.i.i.i.i.i20.prol.loopexit, label %.lr.ph.i.i.i.i.i20.prol

.lr.ph.i.i.i.i.i20.prol:                          ; preds = %.lr.ph.i.i.i.i.i20.preheader, %.lr.ph.i.i.i.i.i20.prol
  %.012.i.i.i.i.i21.prol = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.i20.prol ], [ %i.be, %.lr.ph.i.i.i.i.i20.preheader ]
  %.0811.i.i.i.i.i22.prol = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i20.prol ], [ %i.g, %.lr.ph.i.i.i.i.i20.preheader ] ; 2 uses
  %.0910.i.i.i.i.i23.prol = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i20.prol ], [ %1, %.lr.ph.i.i.i.i.i20.preheader ] ; 2 uses
  %prol.iter42 = phi i64 [ %prol.iter42.next, %.lr.ph.i.i.i.i.i20.prol ], [ 0, %.lr.ph.i.i.i.i.i20.preheader ]
  %i.bg = load i64, ptr %.0910.i.i.i.i.i23.prol, align 8, !tbaa !145
  %i.bh = sitofp i64 %i.bg to double
  store double %i.bh, ptr %.0811.i.i.i.i.i22.prol, align 8, !tbaa !154
  %i.bi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.prol, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.prol, i64 8 ; 2 uses
  %i.bk = add nsw i64 %.012.i.i.i.i.i21.prol, -1  ; 2 uses
  %prol.iter42.next = add i64 %prol.iter42, 1     ; 2 uses
  %prol.iter42.cmp.not = icmp eq i64 %prol.iter42.next, %xtraiter40
  br i1 %prol.iter42.cmp.not, label %.lr.ph.i.i.i.i.i20.prol.loopexit, label %.lr.ph.i.i.i.i.i20.prol, !llvm.loop !467

.lr.ph.i.i.i.i.i20.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i20.prol, %.lr.ph.i.i.i.i.i20.preheader
  %.012.i.i.i.i.i21.unr = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.bk, %.lr.ph.i.i.i.i.i20.prol ]
  %.0811.i.i.i.i.i22.unr = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.bj, %.lr.ph.i.i.i.i.i20.prol ]
  %.0910.i.i.i.i.i23.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.bi, %.lr.ph.i.i.i.i.i20.prol ]
  %i.bl = icmp ult i64 %i.be, 4
  br i1 %i.bl, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEPdET0_T_S9_S8_.exit24, label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %.lr.ph.i.i.i.i.i20.prol.loopexit, %.lr.ph.i.i.i.i.i20
  %.012.i.i.i.i.i21 = phi i64 [ %i.cc, %.lr.ph.i.i.i.i.i20 ], [ %.012.i.i.i.i.i21.unr, %.lr.ph.i.i.i.i.i20.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i22 = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i20 ], [ %.0811.i.i.i.i.i22.unr, %.lr.ph.i.i.i.i.i20.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i23 = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i20 ], [ %.0910.i.i.i.i.i23.unr, %.lr.ph.i.i.i.i.i20.prol.loopexit ] ; 5 uses
  %i.bm = load i64, ptr %.0910.i.i.i.i.i23, align 8, !tbaa !145
  %i.bn = sitofp i64 %i.bm to double
  store double %i.bn, ptr %.0811.i.i.i.i.i22, align 8, !tbaa !154
  %i.bo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 8
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !145
  %i.br = sitofp i64 %i.bq to double
  store double %i.br, ptr %i.bp, align 8, !tbaa !154
  %i.bs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 16
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !145
  %i.bv = sitofp i64 %i.bu to double
  store double %i.bv, ptr %i.bt, align 8, !tbaa !154
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 24
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !145
  %i.bz = sitofp i64 %i.by to double
  store double %i.bz, ptr %i.bx, align 8, !tbaa !154
  %i.ca = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 32
  %i.cc = add nsw i64 %.012.i.i.i.i.i21, -4
  %i.cd = icmp sgt i64 %.012.i.i.i.i.i21, 4
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i20, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEPdET0_T_S9_S8_.exit24, !llvm.loop !156

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEPdET0_T_S9_S8_.exit24: ; preds = %.lr.ph.i.i.i.i.i20.prol.loopexit, %.lr.ph.i.i.i.i.i20, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ce = sub i64 %i.a, %i.bd
  %i.cf = ashr exact i64 %i.ce, 3                 ; 5 uses
  %i.cg = icmp sgt i64 %i.cf, 0
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEPddET0_T_S9_S8_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEPdET0_T_S9_S8_.exit24
  %xtraiter43 = and i64 %i.cf, 3                  ; 2 uses
  %lcmp.mod44.not = icmp eq i64 %xtraiter43, 0
  br i1 %lcmp.mod44.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.012.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.cl, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.sink.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter45 = phi i64 [ %prol.iter45.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.ch = load i64, ptr %.0910.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !145
  %i.ci = sitofp i64 %i.ch to double
  store double %i.ci, ptr %.0811.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !154
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.prol, i64 8 ; 3 uses
  %i.cl = add nsw i64 %.012.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter45.next = add i64 %prol.iter45, 1     ; 2 uses
  %prol.iter45.cmp.not = icmp eq i64 %prol.iter45.next, %xtraiter43
  br i1 %prol.iter45.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !468

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cl, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sink.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.cm = icmp ult i64 %i.cf, 4
  br i1 %i.cm, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEPddET0_T_S9_S8_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.cn = load i64, ptr %.0910.i.i.i.i.i.i.i.i, align 8, !tbaa !145
  %i.co = sitofp i64 %i.cn to double
  store double %i.co, ptr %.0811.i.i.i.i.i.i.i.i, align 8, !tbaa !154
  %i.cp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 8
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !145
  %i.cs = sitofp i64 %i.cr to double
  store double %i.cs, ptr %i.cq, align 8, !tbaa !154
  %i.ct = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 16
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !145
  %i.cw = sitofp i64 %i.cv to double
  store double %i.cw, ptr %i.cu, align 8, !tbaa !154
  %i.cx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 24
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !145
  %i.da = sitofp i64 %i.cz to double
  store double %i.da, ptr %i.cy, align 8, !tbaa !154
  %i.db = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.dd = add nsw i64 %.012.i.i.i.i.i.i.i.i, -4
  %i.de = icmp sgt i64 %.012.i.i.i.i.i.i.i.i, 4
  br i1 %i.de, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEPddET0_T_S9_S8_RSaIT1_E.exit, !llvm.loop !156

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEPddET0_T_S9_S8_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEPdET0_T_S9_S8_.exit24
  %.08.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEPdET0_T_S9_S8_.exit24 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.dc, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.08.lcssa.i.i.i.i.i.i.i.i, ptr %i.aa, align 8, !tbaa !157
  br label %_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd.exit

_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd.exit:    ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEPdET0_T_S9_S8_.exit, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEPddET0_T_S9_S8_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIdSaIdEES2_IS4_SaIS4_EEEEPS4_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not15 = icmp eq ptr %0, %1
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.017 = phi ptr [ %i.w, %bb.f ], [ %2, %bb.a ]  ; 6 uses
  %.sroa.09.016 = phi ptr [ %i.v, %bb.f ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157  ; 2 uses
  %i.c = load ptr, ptr %.sroa.09.016, align 8, !tbaa !43 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.017, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, !prof !143

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %.017, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %.017, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !157
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.017, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !46
  %i.m = load ptr, ptr %.sroa.09.016, align 8, !tbaa !127 ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !127
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.c, label %bb.d, !prof !144

bb.c:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.m, i64 %i.q, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc8
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load double, ptr %i.m, align 8, !tbaa !154
  store double %i.t, ptr %i.i, align 8, !tbaa !154
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !157
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.017, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.v, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !469

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.x = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #20 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorIdSaIdEEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.017)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_rethrow() #23
          to label %bb.l unwind label %bb.i

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.w, %bb.f ]
  ret ptr %.0.lcssa

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.z

bb.k:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #22
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt18__do_uninit_fill_nIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not13 = icmp eq i64 %1, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.015 = phi ptr [ %0, %.lr.ph ], [ %i.p, %bb.e ] ; 8 uses
  %.01114 = phi i64 [ %1, %.lr.ph ], [ %i.o, %bb.e ]
  %i.c = getelementptr inbounds nuw i8, ptr %.015, i64 16 ; 3 uses
end_hunk_2
