Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/addr2line?download=true
inline.NumInlined: 407
inline.NumDeleted: 131
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5boost10stacktrace6detail11source_lineEPKvb:bb.a

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ab, ptr %2, align 8, !tbaa !17
  %i.aj = load <2 x i64>, ptr %i.v, align 8, !tbaa !19
  store <2 x i64> %i.aj, ptr %i.j, align 8, !tbaa !19
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ak = load i64, ptr %i.z, align 8, !tbaa !19
  store ptr %i.ab, ptr %2, align 8, !tbaa !17
  %i.al = load <2 x i64>, ptr %i.v, align 8, !tbaa !19
  store <2 x i64> %i.al, ptr %i.j, align 8, !tbaa !19
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.y, ptr %3, align 8, !tbaa !17
  store i64 %i.ak, ptr %i.l, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.l, ptr %3, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.am = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.y, %bb.l ], [ %i.l, %bb.m ]
  store i64 0, ptr %i.v, align 8, !tbaa !16
  store i8 0, ptr %i.am, align 1, !tbaa !19
  %i.an = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.l
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ap = load i64, ptr %i.l, align 8, !tbaa !19
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.ar = load ptr, ptr %2, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8, !tbaa !22
  %i.as = call i64 @__isoc23_strtoul(ptr noundef %i.ar, ptr noundef nonnull %i.a, i32 noundef 10) #19
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.au = load i8, ptr %i.at, align 1, !tbaa !19
  %i.av = icmp eq i8 %i.au, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %spec.select = select i1 %i.av, i64 %i.as, i64 0
  br label %bb.o

bb.n:                                             ; preds = %.noexc10.i.i, %bb.e
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.ax = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.n
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !19
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.aw

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.0 = phi i64 [ 0, %bb.c ], [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.bc = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.o
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !19
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost10stacktrace6detail9to_stringB5cxx11EPKNS0_5frameEm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::stacktrace::detail::to_string_impl_base", align 8 ; 9 uses
  %4 = alloca %"struct.std::array", align 1       ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  store i64 0, ptr %i.b, align 8, !tbaa !16
  store i8 0, ptr %i.a, align 8, !tbaa !19
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %2, 6
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !16
  store i8 0, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.t
  %i.i = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.e
  br i1 %i.j, label %_ZN5boost10stacktrace6detail25to_string_using_addr2lineD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.k = load i64, ptr %i.e, align 8, !tbaa !19
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #20
  br label %_ZN5boost10stacktrace6detail25to_string_using_addr2lineD2Ev.exit

_ZN5boost10stacktrace6detail25to_string_using_addr2lineD2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.w

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.f:                                             ; preds = %bb.c, %bb.t
  %.061 = phi i64 [ 0, %bb.c ], [ %i.cx, %bb.t ]  ; 7 uses
  %i.n = icmp ult i64 %.061, 10
  br i1 %i.n, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  br label %.preheader19.i.preheader

bb.g:                                             ; preds = %bb.f
  %i.o = load i64, ptr %i.b, align 8, !tbaa !16   ; 4 uses
  %i.p = add i64 %i.o, 1                          ; 3 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.a
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i22: ; preds = %bb.g
  %i.s = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.s)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21: ; preds = %bb.g
  %i.t = load i64, ptr %i.a, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i22
  %i.u = phi i64 [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i22 ]
  %i.v = icmp ugt i64 %i.p, %i.u
  br i1 %i.v, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.o, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !17
  br label %bb.j

bb.i:                                             ; preds = %bb.s, %bb.o, %bb.m, %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.j:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.x = phi ptr [ %.pre.i.i, %.noexc ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o
  store i8 32, ptr %i.y, align 1, !tbaa !19
  store i64 %i.p, ptr %i.b, align 8, !tbaa !16
  %i.z = load ptr, ptr %0, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.p
  store i8 0, ptr %i.aa, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %.not.i = icmp eq i64 %.061, 0
  br i1 %.not.i, label %bb.k, label %.preheader19.i.preheader

.preheader19.i.preheader:                         ; preds = %.thread, %bb.j
  br label %.preheader19.i

bb.k:                                             ; preds = %bb.j
  store i8 48, ptr %4, align 1, !tbaa !19, !alias.scope !70
  br label %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit

.preheader.i:                                     ; preds = %.preheader19.i
  %.not1822.i = icmp eq i64 %i.ab, 0
  br i1 %.not1822.i, label %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %umax.i = call i64 @llvm.umax.i64(i64 %indvars.iv.i, i64 2)
  %6 = add i64 %umax.i, -1                        ; 3 uses
  %xtraiter = and i64 %6, 1
  %7 = icmp ult i64 %indvars.iv.i, 3
  br i1 %7, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %6, -2
  br label %.lr.ph.i

.preheader19.i:                                   ; preds = %.preheader19.i.preheader, %.preheader19.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader19.i ], [ 2, %.preheader19.i.preheader ] ; 3 uses
  %.01321.i = phi i64 [ %i.ac, %.preheader19.i ], [ %.061, %.preheader19.i.preheader ] ; 2 uses
  %.01420.i = phi i64 [ %i.ab, %.preheader19.i ], [ 0, %.preheader19.i.preheader ] ; 2 uses
  %i.ab = add i64 %.01420.i, 1                    ; 6 uses
  %i.ac = udiv i64 %.01321.i, 10
  %.not17.i = icmp ult i64 %.01321.i, 10
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  br i1 %.not17.i, label %.preheader.i, label %.preheader19.i, !llvm.loop !67

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.024.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %i.ap, %.lr.ph.i ] ; 3 uses
  %.01523.i = phi i64 [ %.061, %.lr.ph.preheader.i.new ], [ %i.ao, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ad = urem i64 %.01523.i, 10
  %i.ae = trunc nuw nsw i64 %i.ad to i8
  %i.af = or disjoint i8 %i.ae, 48
  %i.ag = sub nuw i64 %i.ab, %.024.i
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 %i.ag
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !19, !alias.scope !70
  %i.ai = udiv i64 %.01523.i, 10
  %i.aj = urem i64 %i.ai, 10
  %i.ak = trunc nuw nsw i64 %i.aj to i8
  %i.al = or disjoint i8 %i.ak, 48
  %i.am = sub i64 %.01420.i, %.024.i
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 %i.am
  store i8 %i.al, ptr %i.an, align 1, !tbaa !19, !alias.scope !70
  %i.ao = udiv i64 %.01523.i, 100                 ; 2 uses
  %i.ap = add nuw i64 %.024.i, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !68

_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.024.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.ap, %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit.loopexit.unr-lcssa ]
  %.01523.i.epil.init = phi i64 [ %.061, %.lr.ph.preheader.i ], [ %i.ao, %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit.loopexit.unr-lcssa ]
  %lcmp.mod84 = trunc i64 %6 to i1
  call void @llvm.assume(i1 %lcmp.mod84)
  %i.aq = urem i64 %.01523.i.epil.init, 10
  %i.ar = trunc nuw nsw i64 %i.aq to i8
  %i.as = or disjoint i8 %i.ar, 48
  %i.at = sub nuw i64 %i.ab, %.024.i.epil.init
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 %i.at
  store i8 %i.as, ptr %i.au, align 1, !tbaa !19, !alias.scope !70
  br label %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit

_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit.loopexit.unr-lcssa, %bb.k, %.preheader.i
  %.lcssa.sink.i = phi i64 [ 1, %bb.k ], [ 0, %.preheader.i ], [ %i.ab, %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit.loopexit.unr-lcssa ], [ %i.ab, %.lr.ph.i.epil.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 %.lcssa.sink.i
  store i8 0, ptr %i.av, align 1, !tbaa !19, !alias.scope !70
  %i.aw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #19 ; 2 uses
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !16
  %i.ay = sub i64 4611686018427387903, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.aw
  br i1 %i.az, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.l:                                             ; preds = %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc23:                                         ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZN5boost10stacktrace6detail12to_dec_arrayEm.exit
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %4, i64 noundef %i.aw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !16  ; 4 uses
  %i.bc = add i64 %i.bb, 1                        ; 3 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.a
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.bf = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bf)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i28
  %i.bh = phi i64 [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i28 ]
  %i.bi = icmp ugt i64 %i.bc, %i.bh
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bb, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc29 unwind label %bb.i

.noexc29:                                         ; preds = %bb.m
  %.pre.i.i27 = load ptr, ptr %0, align 8, !tbaa !17
  br label %bb.n

bb.n:                                             ; preds = %.noexc29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26
  %i.bj = phi ptr [ %.pre.i.i27, %.noexc29 ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bb
  store i8 35, ptr %i.bk, align 1, !tbaa !19
  store i64 %i.bc, ptr %i.b, align 8, !tbaa !16
  %i.bl = load ptr, ptr %0, align 8, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bc
  store i8 0, ptr %i.bm, align 1, !tbaa !19
  %i.bn = load i64, ptr %i.b, align 8, !tbaa !16  ; 4 uses
  %i.bo = add i64 %i.bn, 1                        ; 3 uses
  %i.bp = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.a
  br i1 %i.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i34: ; preds = %bb.n
  %i.br = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.br)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31: ; preds = %bb.n
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i34
  %i.bt = phi i64 [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i34 ]
  %i.bu = icmp ugt i64 %i.bo, %i.bt
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bn, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc35 unwind label %bb.i

.noexc35:                                         ; preds = %bb.o
  %.pre.i.i33 = load ptr, ptr %0, align 8, !tbaa !17
  br label %bb.p

bb.p:                                             ; preds = %.noexc35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32
  %i.bv = phi ptr [ %.pre.i.i33, %.noexc35 ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store i8 32, ptr %i.bw, align 1, !tbaa !19
  store i64 %i.bo, ptr %i.b, align 8, !tbaa !16
  %i.bx = load ptr, ptr %0, align 8, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bo
  store i8 0, ptr %i.by, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.061
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !11
  invoke void @_ZN5boost10stacktrace6detail19to_string_impl_baseINS1_25to_string_using_addr2lineEEclB5cxx11EPKv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.ca)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.cb = load i64, ptr %i.g, align 8, !tbaa !16  ; 2 uses
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !16
  %i.cd = sub i64 4611686018427387903, %i.cc
  %i.ce = icmp ult i64 %i.cd, %i.cb
  br i1 %i.ce, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.noexc37 unwind label %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp

.noexc37:                                         ; preds = %bb.r
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.q
  %i.cf = load ptr, ptr %5, align 8, !tbaa !17
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.cf, i64 noundef %i.cb)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ch = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.h
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.cj = load i64, ptr %i.h, align 8, !tbaa !19
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !16  ; 4 uses
  %i.cm = add i64 %i.cl, 1                        ; 3 uses
  %i.cn = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.a
  br i1 %i.co, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cp = icmp ult i64 %i.cl, 16
  call void @llvm.assume(i1 %i.cp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cq = load i64, ptr %i.a, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i42
  %i.cr = phi i64 [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i42 ]
  %i.cs = icmp ugt i64 %i.cm, %i.cr
  br i1 %i.cs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cl, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc43 unwind label %bb.i

.noexc43:                                         ; preds = %bb.s
  %.pre.i.i41 = load ptr, ptr %0, align 8, !tbaa !17
  br label %bb.t

bb.t:                                             ; preds = %.noexc43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40
  %i.ct = phi ptr [ %.pre.i.i41, %.noexc43 ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cl
  store i8 10, ptr %i.cu, align 1, !tbaa !19
  store i64 %i.cm, ptr %i.b, align 8, !tbaa !16
  %i.cv = load ptr, ptr %0, align 8, !tbaa !17
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cm
  store i8 0, ptr %i.cw, align 1, !tbaa !19
  %i.cx = add nuw i64 %.061, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cx, %2
  br i1 %exitcond.not, label %bb.d, label %bb.f, !llvm.loop !69

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.l
  %lpad.loopexit.split-lp81 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.v

bb.u:                                             ; preds = %bb.p
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.h
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp
  %i.db = load i64, ptr %i.h, align 8, !tbaa !19
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cy, %bb.u ], [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.v

end_hunk_0
begin_hunk_1_@_ZN5boost10stacktrace6detail25to_string_using_addr2line23prepare_source_locationEPKv:bb.a
  store i64 %i.aj, ptr %i.ae, align 8, !tbaa !19, !alias.scope !98
  br label %.thread.i10

.thread.i10:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aa, ptr %i.ak, align 8, !tbaa !16, !alias.scope !98
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i11

bb.j:                                             ; preds = %bb.g, %.noexc13
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.al, ptr %5, align 8, !tbaa !20, !alias.scope !98
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.am, align 8, !tbaa !16, !alias.scope !98
  store i8 0, ptr %i.al, align 8, !tbaa !19, !alias.scope !98
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %.pre.pre.i8, %i.an
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i12: ; preds = %bb.j
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !19, !noalias !98
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %.pre.pre.i8, i64 noundef %i.aq) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i11: ; preds = %.thread.i10, %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !98
  %i.ar = load ptr, ptr %4, align 8, !tbaa !17    ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  %i.au = load ptr, ptr %5, align 8, !tbaa !17    ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.aw = icmp eq ptr %i.au, %i.av                ; 2 uses
  br i1 %i.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i11
  br i1 %i.aw, label %bb.k, label %.thread.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i11
  br i1 %i.aw, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !16 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  switch i64 %i.ay, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ba = load i8, ptr %i.au, align 1, !tbaa !19
  store i8 %i.ba, ptr %i.ar, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.au, i64 %i.ay, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.bb = load i64, ptr %i.ax, align 8, !tbaa !16 ; 2 uses
  store i64 %i.bb, ptr %i.u, align 8, !tbaa !16
  %i.bc = load ptr, ptr %4, align 8, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  store i8 0, ptr %i.bd, align 1, !tbaa !19
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i15:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.au, ptr %4, align 8, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bf = load <2 x i64>, ptr %i.be, align 8, !tbaa !19
  store <2 x i64> %i.bf, ptr %i.u, align 8, !tbaa !19
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bg = load i64, ptr %i.as, align 8, !tbaa !19
  store ptr %i.au, ptr %4, align 8, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bi = load <2 x i64>, ptr %i.bh, align 8, !tbaa !19
  store <2 x i64> %i.bi, ptr %i.u, align 8, !tbaa !19
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ar, ptr %5, align 8, !tbaa !17
  store i64 %i.bg, ptr %i.av, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i15
  store ptr %i.av, ptr %5, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.bj = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ar, %bb.n ], [ %i.av, %bb.o ]
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.bj, align 1, !tbaa !19
  %i.bl = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !19
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.p:                                             ; preds = %.noexc, %bb.f
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %.pr = load i64, ptr %i.u, align 8, !tbaa !16
  %i.br = icmp eq i64 %.pr, 0
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, label %.thread

.thread:                                          ; preds = %_ZN5boost10stacktrace6detail15source_locationB5cxx11EPKvb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !16
  %i.bu = and i64 %i.bt, -4
  %i.bv = icmp eq i64 %i.bu, 4611686018427387900
  br i1 %i.bv, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.thread
  %i.bw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.15, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.q ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bx = load i64, ptr %i.u, align 8, !tbaa !16  ; 2 uses
  %i.by = load i64, ptr %i.bs, align 8, !tbaa !16
  %i.bz = sub i64 4611686018427387903, %i.by
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %.thread
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.cont unwind label %bb.q

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.cb = load ptr, ptr %4, align 8, !tbaa !17
  %i.cc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.cb, i64 noundef %i.bx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %.06 = phi i1 [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i ]
  %i.ce = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !19
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i1 %.06

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.q ], [ %i.bq, %bb.p ]
  %i.cj = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.r
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !19
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(none) }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"_ZTSN5boost10stacktrace5frameE", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !14, i64 8, !5, i64 16}
!16 = !{!15, !14, i64 8}
!17 = !{!15, !12, i64 0}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{!5, !5, i64 0}
!20 = !{!13, !12, i64 0}
!21 = !{!14, !14, i64 0}
!22 = !{!12, !12, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"_ZTS7Dl_info", !12, i64 0, !9, i64 8, !12, i64 16, !9, i64 24}
!25 = !{!"_ZTSN5boost10stacktrace6detail20location_from_symbolE", !24, i64 0}
!26 = !{!25, !12, i64 0}
!27 = !{!6, !6, i64 0}
!28 = !{!"vtable pointer", !4, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!31 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!32 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !9, i64 0}
!33 = !{!"_ZTSNSt8ios_base6_WordsE", !9, i64 0, !14, i64 8}
!34 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !9, i64 0}
!35 = !{!"p1 _ZTSNSt6locale5_ImplE", !9, i64 0}
!36 = !{!"_ZTSSt6locale", !35, i64 0}
!37 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !30, i64 24, !31, i64 28, !31, i64 32, !32, i64 40, !33, i64 48, !5, i64 64, !6, i64 192, !34, i64 200, !36, i64 208}
!38 = !{!"p1 _ZTSSo", !9, i64 0}
!39 = !{!"bool", !5, i64 0}
!40 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !9, i64 0}
!41 = !{!"p1 _ZTSSt5ctypeIcE", !9, i64 0}
!42 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !9, i64 0}
!43 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !9, i64 0}
!44 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !37, i64 0, !38, i64 216, !5, i64 224, !39, i64 225, !40, i64 232, !41, i64 240, !42, i64 248, !43, i64 256}
!45 = !{!44, !41, i64 240}
!46 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!47 = !{!"p1 _ZTS15__locale_struct", !9, i64 0}
!48 = !{!"p1 int", !9, i64 0}
!49 = !{!"p1 short", !9, i64 0}
!50 = !{!"_ZTSSt5ctypeIcE", !46, i64 0, !47, i64 16, !39, i64 24, !48, i64 32, !48, i64 40, !49, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!51 = !{!50, !5, i64 56}
!52 = !{!37, !31, i64 32}
!53 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!54 = !{!"_ZTSN5boost10stacktrace6detail14addr2line_pipeE", !53, i64 0, !6, i64 8}
!55 = !{!54, !53, i64 0}
!56 = !{!54, !6, i64 8}
!57 = !{!"_ZTSSi", !14, i64 8}
!58 = !{!57, !14, i64 8}
!59 = distinct !{!59, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!60 = distinct !{!60, !59, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!61 = !{!60}
!62 = distinct !{!62, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!63 = distinct !{!63, !62, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!64 = !{!63}
!65 = distinct !{!65, i1 true, !"_ZN5boost10stacktrace6detail12to_dec_arrayEm"}
!66 = distinct !{!66, !65, !"_ZN5boost10stacktrace6detail12to_dec_arrayEm: argument 0"}
!67 = distinct !{!67, !23}
!68 = distinct !{!68, !23}
!69 = distinct !{!69, !23}
!70 = !{!66}
!71 = distinct !{!71, i1 true, !"_ZN5boost10stacktrace6detail12to_hex_arrayImEESt5arrayIcLm19EET_"}
!72 = distinct !{!72, !71, !"_ZN5boost10stacktrace6detail12to_hex_arrayImEESt5arrayIcLm19EET_: argument 0"}
!73 = !{!72}
!74 = distinct !{!74, !23}
!75 = !{!"_ZTSN5boost10stacktrace6detail15mapping_entry_tE", !14, i64 0, !14, i64 8, !14, i64 16}
!76 = !{!75, !14, i64 0}
!77 = distinct !{!77, !23}
!78 = distinct !{!78, i1 true, !"_ZN5boost10stacktrace6detail12to_hex_arrayEPKv"}
!79 = distinct !{!79, !78, !"_ZN5boost10stacktrace6detail12to_hex_arrayEPKv: argument 0"}
!80 = distinct !{!80, i1 true, !"_ZN5boost10stacktrace6detail12to_hex_arrayImEESt5arrayIcLm19EET_"}
!81 = distinct !{!81, !80, !"_ZN5boost10stacktrace6detail12to_hex_arrayImEESt5arrayIcLm19EET_: argument 0"}
!82 = !{!79}
!83 = !{!81}
!84 = !{!81, !79}
!85 = !{!37, !30, i64 24}
!86 = !{!30, !30, i64 0}
!87 = distinct !{!87, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!88 = distinct !{!88, !87, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!89 = !{!88}
!90 = distinct !{!90, i1 true, !"_ZNK5boost10stacktrace5frame4nameB5cxx11Ev"}
!91 = distinct !{!91, !90, !"_ZNK5boost10stacktrace5frame4nameB5cxx11Ev: argument 0"}
!92 = !{!91}
!93 = distinct !{!93, i1 true, !"_ZN5boost10stacktrace6detail15source_locationB5cxx11EPKvb"}
!94 = distinct !{!94, !93, !"_ZN5boost10stacktrace6detail15source_locationB5cxx11EPKvb: argument 0"}
!95 = distinct !{!95, i1 true, !"_ZN5boost10stacktrace6detail15source_locationB5cxx11EPKvb"}
!96 = distinct !{!96, !95, !"_ZN5boost10stacktrace6detail15source_locationB5cxx11EPKvb: argument 0"}
!97 = !{!94}
!98 = !{!96}
end_hunk_1
