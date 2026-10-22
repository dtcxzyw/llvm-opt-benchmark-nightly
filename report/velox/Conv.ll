Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Conv?download=true
inline.NumInlined: 1235
inline.NumDeleted: 376
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN5folly6detail11str_to_boolEPNS_5RangeIPKcEE:bb.a
  %i.ab = icmp ne ptr %.087129, %i.c
  %i.ac = and i8 %i.g, -33
  %.not15.i25 = icmp eq i8 %i.ac, 78
  %or.cond266 = and i1 %i.ab, %.not15.i25
  br i1 %or.cond266, label %.lr.ph.i22.1, label %bb.j

.lr.ph.i22.1:                                     ; preds = %.lr.ph.i22
  %i.ad = getelementptr inbounds nuw i8, ptr %.087129, i64 1 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.c
  br i1 %i.ae, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i22.1
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !37
  %i.ag = and i8 %i.af, -33
  %.not15.i25.1 = icmp eq i8 %i.ag, 79
  br i1 %.not15.i25.1, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i22.1, %.lr.ph.i22
  %i.ah = getelementptr inbounds nuw i8, ptr %.087129, i64 1
  br label %.critedge

.lr.ph.i30:                                       ; preds = %.lr.ph, %.lr.ph
  %i.ai = icmp ne ptr %.087129, %i.c
  %i.aj = and i8 %i.g, -33
  %.not15.i33 = icmp eq i8 %i.aj, 84
  %or.cond267 = and i1 %i.ai, %.not15.i33
  br i1 %or.cond267, label %.lr.ph.i30.1, label %bb.n

.lr.ph.i30.1:                                     ; preds = %.lr.ph.i30
  %i.ak = getelementptr inbounds nuw i8, ptr %.087129, i64 1 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.c
  br i1 %i.al, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i30.1
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !37
  %i.an = and i8 %i.am, -33
  %.not15.i33.1 = icmp eq i8 %i.an, 82
  br i1 %.not15.i33.1, label %.lr.ph.i30.2, label %bb.n

.lr.ph.i30.2:                                     ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %.087129, i64 2 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.c
  br i1 %i.ap, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i30.2
  %i.aq = load i8, ptr %i.ao, align 1, !tbaa !37
  %i.ar = and i8 %i.aq, -33
  %.not15.i33.2 = icmp eq i8 %i.ar, 85
  br i1 %.not15.i33.2, label %.lr.ph.i30.3, label %bb.n

.lr.ph.i30.3:                                     ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %.087129, i64 3 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.c
  br i1 %i.at, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i30.3
  %i.au = load i8, ptr %i.as, align 1, !tbaa !37
  %i.av = and i8 %i.au, -33
  %.not15.i33.3 = icmp eq i8 %i.av, 69
  br i1 %.not15.i33.3, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i30.3, %bb.l, %.lr.ph.i30.2, %bb.k, %.lr.ph.i30.1, %.lr.ph.i30
  %i.aw = getelementptr inbounds nuw i8, ptr %.087129, i64 1
  br label %.critedge

.lr.ph.i38:                                       ; preds = %.lr.ph, %.lr.ph
  %i.ax = icmp ne ptr %.087129, %i.c
  %i.ay = and i8 %i.g, -33
  %.not15.i41 = icmp eq i8 %i.ay, 70
  %or.cond268 = and i1 %i.ax, %.not15.i41
  br i1 %or.cond268, label %.lr.ph.i38.1, label %bb.s

.lr.ph.i38.1:                                     ; preds = %.lr.ph.i38
  %i.az = getelementptr inbounds nuw i8, ptr %.087129, i64 1 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.c
  br i1 %i.ba, label %bb.s, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i38.1
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !37
  %i.bc = and i8 %i.bb, -33
  %.not15.i41.1 = icmp eq i8 %i.bc, 65
  br i1 %.not15.i41.1, label %.lr.ph.i38.2, label %bb.s

.lr.ph.i38.2:                                     ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %.087129, i64 2 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.c
  br i1 %i.be, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i38.2
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !37
  %i.bg = and i8 %i.bf, -33
  %.not15.i41.2 = icmp eq i8 %i.bg, 76
  br i1 %.not15.i41.2, label %.lr.ph.i38.3, label %bb.s

.lr.ph.i38.3:                                     ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %.087129, i64 3 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.c
  br i1 %i.bi, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i38.3
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !37
  %i.bk = and i8 %i.bj, -33
  %.not15.i41.3 = icmp eq i8 %i.bk, 83
  br i1 %.not15.i41.3, label %.lr.ph.i38.4, label %bb.s

.lr.ph.i38.4:                                     ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %.087129, i64 4 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.c
  br i1 %i.bm, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i38.4
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !37
  %i.bo = and i8 %i.bn, -33
  %.not15.i41.4 = icmp eq i8 %i.bo, 69
  br i1 %.not15.i41.4, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i38.4, %bb.q, %.lr.ph.i38.3, %bb.p, %.lr.ph.i38.2, %bb.o, %.lr.ph.i38.1, %.lr.ph.i38
  %i.bp = getelementptr inbounds nuw i8, ptr %.087129, i64 1
  br label %.critedge

.lr.ph.i46:                                       ; preds = %.lr.ph, %.lr.ph
  %i.bq = icmp eq ptr %.087129, %i.c
  br i1 %i.bq, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i46
  %i.br = and i8 %i.g, -33
  %.not15.i49 = icmp eq i8 %i.br, 79
  br i1 %.not15.i49, label %.lr.ph.i46.1, label %bb.v

.lr.ph.i46.1:                                     ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %.087129, i64 1 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.c
  br i1 %i.bt, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i46.1
  %i.bu = load i8, ptr %i.bs, align 1, !tbaa !37
  %i.bv = and i8 %i.bu, -33
  %.not15.i49.1 = icmp eq i8 %i.bv, 78
  br i1 %.not15.i49.1, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i46.1, %bb.t
  %i.bw = and i8 %i.g, -33
  %.not15.i57 = icmp eq i8 %i.bw, 79
  br i1 %.not15.i57, label %.lr.ph.i54.1, label %.loopexit

.lr.ph.i54.1:                                     ; preds = %bb.v
  %i.bx = getelementptr inbounds nuw i8, ptr %.087129, i64 1 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.c
  br i1 %i.by, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i54.1
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !37
  %i.ca = and i8 %i.bz, -33
  %.not15.i57.1 = icmp eq i8 %i.ca, 70
  br i1 %.not15.i57.1, label %.lr.ph.i54.2, label %.loopexit

.lr.ph.i54.2:                                     ; preds = %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %.087129, i64 2 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.c
  br i1 %i.cc, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i54.2
  %i.cd = load i8, ptr %i.cb, align 1, !tbaa !37
  %i.ce = and i8 %i.cd, -33
  %.not15.i57.2 = icmp eq i8 %i.ce, 70
  br i1 %.not15.i57.2, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.e, %.lr.ph134, %bb.x, %bb.u, %bb.r, %bb.m, %bb.i, %bb.g, %bb.c, %bb.s, %bb.n, %bb.j, %bb.h
  %.2 = phi ptr [ %indvars.iv179, %bb.r ], [ %indvars.iv169, %bb.g ], [ %indvars.iv, %bb.i ], [ %i.aa, %bb.h ], [ %indvars.iv189, %bb.m ], [ %i.ah, %bb.j ], [ %indvars.iv, %bb.u ], [ %i.aw, %bb.n ], [ %indvars.iv169, %bb.x ], [ %i.bp, %bb.s ], [ %.087129, %bb.c ], [ %.188132, %.lr.ph134 ], [ %scevgep, %bb.e ]
  %.1 = phi i8 [ 0, %bb.r ], [ 1, %bb.g ], [ 0, %bb.i ], [ 1, %bb.h ], [ 1, %bb.m ], [ 0, %bb.j ], [ 1, %bb.u ], [ 1, %bb.n ], [ 0, %bb.x ], [ 0, %bb.s ], [ 0, %bb.c ], [ %.0133, %.lr.ph134 ], [ %i.o, %bb.e ]
  store ptr %.2, ptr %0, align 8, !tbaa !35
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.lr.ph, %bb.d, %bb.v, %.lr.ph.i54.1, %bb.w, %.lr.ph.i54.2, %bb.x, %.lr.ph.i46, %bb.a, %.critedge
  %.sroa.11.1 = phi i8 [ %.1, %.critedge ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.v ], [ 0, %.lr.ph.i46 ], [ 0, %bb.x ], [ 0, %.lr.ph.i54.2 ], [ 0, %bb.w ], [ 0, %.lr.ph.i54.1 ], [ 0, %.lr.ph ], [ 0, %bb.b ]
  %.sroa.6.1 = phi i8 [ 0, %.critedge ], [ 3, %bb.d ], [ 1, %bb.a ], [ 4, %bb.v ], [ 4, %.lr.ph.i46 ], [ 4, %bb.x ], [ 4, %.lr.ph.i54.2 ], [ 4, %bb.w ], [ 4, %.lr.ph.i54.1 ], [ 4, %.lr.ph ], [ 1, %bb.b ]
  %.sroa.086.1 = phi i8 [ 1, %.critedge ], [ 2, %bb.d ], [ 2, %bb.a ], [ 2, %bb.v ], [ 2, %.lr.ph.i46 ], [ 2, %bb.x ], [ 2, %.lr.ph.i54.2 ], [ 2, %bb.w ], [ 2, %.lr.ph.i54.1 ], [ 2, %.lr.ph ], [ 2, %bb.b ]
  %.sroa.11.0.insert.ext = zext nneg i8 %.sroa.11.1 to i24
  %.sroa.11.0.insert.shift = shl nuw nsw i24 %.sroa.11.0.insert.ext, 16
  %.sroa.6.0.insert.ext = zext nneg i8 %.sroa.6.1 to i24
  %.sroa.6.0.insert.shift = shl nuw nsw i24 %.sroa.6.0.insert.ext, 8
  %.sroa.6.0.insert.insert = or disjoint i24 %.sroa.6.0.insert.shift, %.sroa.11.0.insert.shift
  %.sroa.086.0.insert.ext = zext nneg i8 %.sroa.086.1 to i24
  %.sroa.086.0.insert.insert = or disjoint i24 %.sroa.6.0.insert.insert, %.sroa.086.0.insert.ext
  ret i24 %.sroa.086.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly19makeConversionErrorENS_14ConversionCodeENS_5RangeIPKcEE(ptr dead_on_unwind noalias writable sret(%"class.folly::ConversionError") align 8 %0, i8 noundef zeroext %1, ptr %2, ptr %3) local_unnamed_addr #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %i.a = zext i8 %1 to i64                        ; 2 uses
  %i.b = icmp ult i8 %1, 16
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly19makeConversionErrorENS_14ConversionCodeENS_5RangeIPKcEEE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.18, i64 noundef %i.a) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [16 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_113kErrorStringsE, i64 %i.a ; 2 uses
  %i.d = icmp eq i8 %1, 1
  %i.e = icmp eq ptr %2, %3                       ; 2 uses
  %or.cond = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !189
  tail call void @_ZNSt11range_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef %i.f)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly15ConversionErrorE, i64 16), ptr %0, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.g, align 8, !tbaa !196
  br label %bb.aj

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !189  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 21 uses
  store ptr %i.i, ptr %4, align 8, !tbaa !197
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #20 ; 8 uses
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %bb.f, label %._crit_edge.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = icmp slt i64 %i.j, 0
  br i1 %i.l, label %.noexc.i, label %bb.g

.noexc.i:                                         ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #22
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.m = add nuw i64 %i.j, 1                      ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !39

.noexc11.i:                                       ; preds = %bb.g
  call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.g
  %i.o = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #26 ; 2 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !82
  store i64 %i.j, ptr %i.i, align 8, !tbaa !37
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.e
  %i.p = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.i, %bb.e ] ; 3 uses
  switch i64 %i.j, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.h, align 1, !tbaa !37
  store i8 %i.q, ptr %i.p, align 1, !tbaa !37
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %i.h, i64 %i.j, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i64 %i.j, ptr %i.r, align 8, !tbaa !83
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.j
  store i8 0, ptr %i.s, align 1, !tbaa !37
  %i.t = load i64, ptr %i.r, align 8, !tbaa !83   ; 5 uses
  %i.u = and i64 %i.t, -2
  %i.v = icmp eq i64 %i.u, 9223372036854775806
  br i1 %i.v, label %.invoke107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.j
  %i.w = add nsw i64 %i.t, 2                      ; 3 uses
  %i.x = load ptr, ptr %4, align 8, !tbaa !82     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.i
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.z = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.z)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.aa = load i64, ptr %i.i, align 8, !tbaa !37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ab = phi i64 [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.w, %i.ab
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.t
  store i16 8250, ptr %i.ac, align 1
  br label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.t, i64 noundef 0, ptr noundef nonnull @.str.19, i64 noundef 2)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.k, %bb.l
  store i64 %i.w, ptr %i.r, align 8, !tbaa !83
  %i.ad = load ptr, ptr %4, align 8, !tbaa !82
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.w
  store i8 0, ptr %i.ae, align 1, !tbaa !37
  %5 = add nsw i8 %1, -14
  %6 = icmp ult i8 %5, -3                         ; 2 uses
  br i1 %6, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.af = load i64, ptr %i.r, align 8, !tbaa !83  ; 8 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775807
  br i1 %i.ag, label %.invoke107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.n
  %i.ah = add nsw i64 %i.af, 1                    ; 7 uses
  %i.ai = load ptr, ptr %4, align 8, !tbaa !82    ; 3 uses
  %i.aj = icmp eq ptr %i.ai, %i.i
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ak = icmp samesign ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ak)
  %.not.i.i23 = icmp eq i64 %i.af, 15
  br i1 %.not.i.i23, label %.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.al = load i64, ptr %i.i, align 8, !tbaa !37  ; 3 uses
  %.not.i.i2379 = icmp ugt i64 %i.ah, %i.al
  br i1 %.not.i.i2379, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22.thread
  %i.am = icmp slt i64 %i.af, -1
  br i1 %i.am, label %.invoke107, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.an = icmp ugt i64 %i.ah, %i.al
  br i1 %i.an, label %.thread, label %bb.q

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22, %bb.o
  %i.ao = phi i64 [ %i.al, %bb.o ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22 ]
  %i.ap = shl nuw i64 %i.ao, 1                    ; 2 uses
  %i.aq = icmp ult i64 %i.ah, %i.ap
  br i1 %i.aq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.ap, i64 9223372036854775807)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread, %bb.o
  %.0.i = phi i64 [ %spec.store.select.i.i, %bb.p ], [ %i.ah, %.thread ], [ %i.ah, %bb.o ] ; 2 uses
  %i.ar = add nuw i64 %.0.i, 1                    ; 2 uses
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.q
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #26
          to label %.noexc52 unwind label %bb.t   ; 4 uses

.noexc52:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %.pre.i.pre = load ptr, ptr %4, align 8, !tbaa !82 ; 4 uses
  switch i64 %i.af, label %bb.s [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %.noexc52
  %i.au = load i8, ptr %.pre.i.pre, align 1, !tbaa !37
  store i8 %i.au, ptr %i.at, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

bb.s:                                             ; preds = %.noexc52
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr align 1 %.pre.i.pre, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i: ; preds = %.noexc52, %bb.r, %bb.s
  %i.av = icmp eq ptr %.pre.i.pre, %i.i
  br i1 %i.av, label %.noexc26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %i.aw = load i64, ptr %i.i, align 8, !tbaa !37
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %.pre.i.pre, i64 noundef %i.ax) #24
  br label %.noexc26

.noexc26:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i
  store ptr %i.at, ptr %4, align 8, !tbaa !82
  store i64 %.0.i, ptr %i.i, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22, %.noexc26
  %i.ay = phi ptr [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22.thread ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22 ], [ %i.at, %.noexc26 ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.af
  store i8 34, ptr %i.az, align 1, !tbaa !37
  store i64 %i.ah, ptr %i.r, align 8, !tbaa !83
  %i.ba = load ptr, ptr %4, align 8, !tbaa !82
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ah
  store i8 0, ptr %i.bb, align 1, !tbaa !37
  br label %bb.u

bb.t:                                             ; preds = %.invoke107, %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %bb.ah, %bb.z, %bb.l
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %4, align 8, !tbaa !82    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.i
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.bf = load i64, ptr %i.i, align 8, !tbaa !37
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit, %bb.m
  br i1 %i.e, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = ptrtoint ptr %3 to i64
  %i.bi = ptrtoint ptr %2 to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 5 uses
  %i.bk = load i64, ptr %i.r, align 8, !tbaa !83  ; 5 uses
  %i.bl = sub i64 9223372036854775807, %i.bk
  %i.bm = icmp ult i64 %i.bl, %i.bj
  br i1 %i.bm, label %.invoke107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i27: ; preds = %bb.v
  %i.bn = add i64 %i.bk, %i.bj                    ; 3 uses
  %i.bo = load ptr, ptr %4, align 8, !tbaa !82    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.i
  br i1 %i.bp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i27
  %i.bq = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.bq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i27
  %i.br = load i64, ptr %i.i, align 8, !tbaa !37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i29: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i33
  %i.bs = phi i64 [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i33 ]
  %.not.i.i30 = icmp ugt i64 %i.bn, %i.bs
  br i1 %.not.i.i30, label %bb.z, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i29
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bk ; 2 uses
  %cond.i.i32 = icmp eq i64 %i.bj, 1
  br i1 %cond.i.i32, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bu = load i8, ptr %2, align 1, !tbaa !37
  store i8 %i.bu, ptr %i.bt, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr align 1 %2, i64 %i.bj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.bk, i64 noundef 0, ptr noundef %2, i64 noundef %i.bj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.z, %bb.x, %bb.y
  store i64 %i.bn, ptr %i.r, align 8, !tbaa !83
  %i.bv = load ptr, ptr %4, align 8, !tbaa !82
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store i8 0, ptr %i.bw, align 1, !tbaa !37
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, %bb.u
  br i1 %6, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %i.bx = load i64, ptr %i.r, align 8, !tbaa !83  ; 8 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775807
  br i1 %i.by, label %.invoke107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i36: ; preds = %bb.ab
  %i.bz = add nsw i64 %i.bx, 1                    ; 7 uses
  %i.ca = load ptr, ptr %4, align 8, !tbaa !82    ; 3 uses
  %i.cb = icmp eq ptr %i.ca, %i.i
  br i1 %i.cb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i36
  %i.cc = icmp samesign ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.cc)
  %.not.i.i39 = icmp eq i64 %i.bx, 15
  br i1 %.not.i.i39, label %.thread106, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i36
  %i.cd = load i64, ptr %i.i, align 8, !tbaa !37  ; 3 uses
  %.not.i.i3980 = icmp ugt i64 %i.bz, %i.cd
  br i1 %.not.i.i3980, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i54, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i54: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38.thread
  %i.ce = icmp slt i64 %i.bx, -1
  br i1 %i.ce, label %.invoke107, label %bb.ac

.invoke107:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.n, %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i54, %bb.ab, %bb.v
  %i.cf = phi ptr [ @.str.39, %bb.ab ], [ @.str.39, %bb.n ], [ @.str.38, %bb.v ], [ @.str.37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i54 ], [ @.str.38, %bb.j ], [ @.str.37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.cf) #22
          to label %.cont108 unwind label %bb.t

.cont108:                                         ; preds = %.invoke107
  unreachable

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i54
  %i.cg = icmp ugt i64 %i.bz, %i.cd
  br i1 %i.cg, label %.thread106, label %bb.ae

.thread106:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38, %bb.ac
  %i.ch = phi i64 [ %i.cd, %bb.ac ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38 ]
  %i.ci = shl nuw i64 %i.ch, 1                    ; 2 uses
  %i.cj = icmp ult i64 %i.bz, %i.ci
  br i1 %i.cj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.thread106
  %spec.store.select.i.i66 = call i64 @llvm.umin.i64(i64 %i.ci, i64 9223372036854775807)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.thread106, %bb.ac
  %.0.i55 = phi i64 [ %spec.store.select.i.i66, %bb.ad ], [ %i.bz, %.thread106 ], [ %i.bz, %bb.ac ] ; 2 uses
  %i.ck = add nuw i64 %.0.i55, 1                  ; 2 uses
  %i.cl = icmp slt i64 %i.ck, 0
  br i1 %i.cl, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i56, !prof !39

.invoke:                                          ; preds = %bb.q, %bb.ae
  invoke void @_ZSt17__throw_bad_allocv() #22
          to label %.cont unwind label %bb.t

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i56: ; preds = %bb.ae
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #26
          to label %.noexc70 unwind label %bb.t   ; 4 uses

.noexc70:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i56
  %.pre.i61.pre = load ptr, ptr %4, align 8, !tbaa !82 ; 4 uses
  switch i64 %i.bx, label %bb.ag [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i63
    i64 1, label %bb.af
  ]

bb.af:                                            ; preds = %.noexc70
  %i.cn = load i8, ptr %.pre.i61.pre, align 1, !tbaa !37
  store i8 %i.cn, ptr %i.cm, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i63

bb.ag:                                            ; preds = %.noexc70
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cm, ptr align 1 %.pre.i61.pre, i64 %i.bx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i63: ; preds = %.noexc70, %bb.af, %bb.ag
  %i.co = icmp eq ptr %.pre.i61.pre, %i.i
  br i1 %i.co, label %.noexc42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i63
  %i.cp = load i64, ptr %i.i, align 8, !tbaa !37
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %.pre.i61.pre, i64 noundef %i.cq) #24
  br label %.noexc42

.noexc42:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i64
  store ptr %i.cm, ptr %4, align 8, !tbaa !82
  store i64 %.0.i55, ptr %i.i, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit43: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38, %.noexc42
  %i.cr = phi ptr [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38.thread ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38 ], [ %i.cm, %.noexc42 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.bx
  store i8 34, ptr %i.cs, align 1, !tbaa !37
  store i64 %i.bz, ptr %i.r, align 8, !tbaa !83
  %i.ct = load ptr, ptr %4, align 8, !tbaa !82
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.bz
  store i8 0, ptr %i.cu, align 1, !tbaa !37
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit43, %bb.aa
  invoke void @_ZNSt11range_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.ai unwind label %bb.t

bb.ai:                                            ; preds = %bb.ah
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly15ConversionErrorE, i64 16), ptr %0, align 8, !tbaa !63
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %1, ptr %i.cv, align 8, !tbaa !196
  %i.cw = load ptr, ptr %4, align 8, !tbaa !82    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.i
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.ai
  %i.cy = load i64, ptr %i.i, align 8, !tbaa !37
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %i.bc

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %bb.d
  ret void
}

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZNSt11range_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly15ConversionErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt11range_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

declare void @_ZNSt11range_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #17

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !83   ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !82
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #22
  unreachable

end_hunk_0
begin_hunk_1_@llvm.umin.i64
!llvm.errno.tbaa = !{!31}

!0 = distinct !{!0, !38}
!1 = distinct !{!1, !38}
!2 = distinct !{!2, !38}
!3 = distinct !{!3, !38}
!4 = distinct !{!4, !38}
!5 = distinct !{!5, !38}
!6 = distinct !{!6, !38}
!7 = distinct !{!7, !38}
!8 = distinct !{!8, !38}
!9 = distinct !{!9, !38}
!10 = distinct !{!10, !38}
!11 = distinct !{!11, !38}
!12 = distinct !{!12, !38}
!13 = distinct !{!13, !38}
!14 = distinct !{!14, !38}
!15 = distinct !{!15, !38}
!16 = distinct !{!16, !38}
!17 = distinct !{!17, !38}
!18 = distinct !{!18, !38}
!19 = distinct !{!19, !38}
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 7, !"openmp", i32 51}
!23 = !{i32 8, !"PIC Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 2}
!25 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!26 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!27 = !{!"Simple C++ TBAA"}
!28 = !{!"omnipotent char", !27, i64 0}
!29 = !{!"int", !28, i64 0}
!30 = !{!"__libc_errno", !29, i64 0}
!31 = !{!30, !29, i64 0}
!32 = !{!"any pointer", !28, i64 0}
!33 = !{!"p1 omnipotent char", !32, i64 0}
!34 = !{!"_ZTSN5folly5RangeIPKcEE", !33, i64 0, !33, i64 8}
!35 = !{!34, !33, i64 0}
!36 = !{!34, !33, i64 8}
!37 = !{!28, !28, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!40 = !{!"float", !28, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!"bool", !28, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{i8 0, i8 2}
!45 = !{}
!46 = !{!"long", !28, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!33, !33, i64 0}
!49 = !{!"_ZTSN10fast_float4spanIKcEE", !33, i64 0, !46, i64 8}
!50 = !{!"_ZTSN10fast_float11parse_errorE", !28, i64 0}
!51 = !{!"_ZTSN10fast_float22parsed_number_string_tIcEE", !46, i64 0, !46, i64 8, !33, i64 16, !42, i64 24, !42, i64 25, !42, i64 26, !49, i64 32, !49, i64 48, !50, i64 64}
!52 = !{!51, !33, i64 16}
!53 = !{!51, !46, i64 0}
!54 = !{!51, !46, i64 8}
!55 = !{!51, !42, i64 24}
!56 = !{!"short", !28, i64 0}
!57 = !{!"_ZTSN10fast_float8stackvecILt62EEE", !28, i64 0, !56, i64 496}
!58 = !{!57, !56, i64 496}
!59 = !{!"llvm.loop.isvectorized", i32 1}
!60 = !{!"llvm.loop.unroll.runtime.disable"}
!61 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!62 = !{!"vtable pointer", !27, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!"double", !28, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!67 = !{!56, !56, i64 0}
!68 = !{!"_ZTSN5folly15expected_detail5WhichE", !28, i64 0}
!69 = !{!"_ZTSN5folly15expected_detail15ExpectedStorageInNS_14ConversionCodeELNS0_11StorageTypeE1EEE", !28, i64 0, !68, i64 16}
!70 = !{!69, !68, i64 16}
!71 = !{!"_ZTSN5folly15expected_detail15ExpectedStorageIoNS_14ConversionCodeELNS0_11StorageTypeE1EEE", !28, i64 0, !68, i64 16}
!72 = !{!71, !68, i64 16}
!73 = !{!"branch_weights", i32 127, i32 1}
!74 = !{!"branch_weights", i32 127, i32 255873}
!75 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!76 = !{!"_ZTSN5folly14ConversionCodeE", !28, i64 0}
!77 = !{!76, !76, i64 0}
!78 = !{!"__int128", !28, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !33, i64 0}
!81 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !80, i64 0, !46, i64 8, !28, i64 16}
!82 = !{!81, !33, i64 0}
!83 = !{!81, !46, i64 8}
!84 = distinct !{!84, !38}
!85 = distinct !{!85, !38}
!86 = distinct !{!86, i1 true, !"_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!87 = distinct !{!87, !86, !"_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!88 = distinct !{!88, i1 true, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!89 = distinct !{!89, !88, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!90 = !{!87}
!91 = !{!89}
!92 = distinct !{!92, !38}
!93 = distinct !{!93, !38}
!94 = distinct !{!94, !38}
!95 = distinct !{!95, !38}
!96 = distinct !{!96, !38, !104}
!97 = distinct !{!97, !38}
!98 = distinct !{!98, !38}
!99 = distinct !{!99, !38}
!100 = distinct !{!100, !38}
!101 = distinct !{!101, !38}
!102 = !{!51, !33, i64 32}
!103 = !{!49, !46, i64 8}
!104 = !{!"llvm.loop.peeled.count", i32 1}
!105 = !{!51, !33, i64 48}
!106 = distinct !{!106, !38, !59, !60}
!107 = distinct !{!107, !38, !60, !59}
!108 = distinct !{!108, !38, !59, !60}
!109 = distinct !{!109, !38, !60, !59}
!110 = distinct !{!110, !38, !59, !60}
!111 = distinct !{!111, !38, !60, !59}
!112 = distinct !{!112, !38}
!113 = distinct !{!113, !38, !114}
!114 = !{!"llvm.loop.unswitch.partial.disable"}
!115 = distinct !{!115, !38}
!116 = distinct !{!116, !38}
!117 = distinct !{!117, !38}
!118 = distinct !{!118, !38}
!119 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!120 = distinct !{!120, !38}
!121 = distinct !{!121, !38}
!122 = distinct !{!122, i1 true, !"_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!123 = distinct !{!123, !122, !"_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!124 = distinct !{!124, i1 true, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!125 = distinct !{!125, !124, !"_ZN10fast_float19parse_number_stringILb0EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!126 = !{!123}
!127 = !{!125}
!128 = distinct !{!128, !38}
!129 = distinct !{!129, !38, !59, !60}
!130 = distinct !{!130, !38, !60, !59}
!131 = distinct !{!131, !38, !59, !60}
!132 = distinct !{!132, !38, !60, !59}
!133 = distinct !{!133, !38, !59, !60}
!134 = distinct !{!134, !38, !60, !59}
!135 = distinct !{!135, !38}
!136 = distinct !{!136, !38}
!137 = distinct !{!137, !38}
!138 = distinct !{!138, !38}
!139 = distinct !{!139, !38}
!140 = distinct !{!140, !38}
!141 = distinct !{!141, !38}
!142 = distinct !{!142, !38}
!143 = distinct !{!143, !38}
!144 = distinct !{!144, !38}
!145 = distinct !{!145, !38}
!146 = distinct !{!146, !38}
!147 = distinct !{!147, !38}
!148 = distinct !{!148, !38}
!149 = distinct !{!149, !38}
!150 = distinct !{!150, !38}
!151 = distinct !{!151, !38}
!152 = distinct !{!152, !38}
!153 = distinct !{!153, !38}
!154 = distinct !{!154, !38}
!155 = distinct !{!155, !38}
!156 = distinct !{!156, !38}
!157 = distinct !{!157, !38}
!158 = distinct !{!158, !38}
!159 = distinct !{!159, i1 true, !"_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerInLb1EE8finalizeIoEENS_8ExpectedInNS_14ConversionCodeEEET_"}
!160 = distinct !{!160, !159, !"_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerInLb1EE8finalizeIoEENS_8ExpectedInNS_14ConversionCodeEEET_: argument 0"}
!161 = !{!160}
!162 = distinct !{!162, !38}
!163 = distinct !{!163, !38}
!164 = distinct !{!164, i1 true, !"_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIoLb0EE8finalizeEo"}
!165 = distinct !{!165, !164, !"_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIoLb0EE8finalizeEo: argument 0"}
!166 = !{!165}
!167 = distinct !{!167, !38}
!168 = distinct !{!168, !38}
!169 = distinct !{!169, !38}
!170 = distinct !{!170, !38}
!171 = distinct !{!171, !38}
!172 = distinct !{!172, !38}
!173 = distinct !{!173, !38}
!174 = distinct !{!174, !38}
!175 = distinct !{!175, !38}
!176 = distinct !{!176, !38}
!177 = distinct !{!177, !38}
!178 = distinct !{!178, !38}
!179 = distinct !{!179, i1 true, !"_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerInLb1EE8finalizeIoEENS_8ExpectedInNS_14ConversionCodeEEET_"}
!180 = distinct !{!180, !179, !"_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerInLb1EE8finalizeIoEENS_8ExpectedInNS_14ConversionCodeEEET_: argument 0"}
!181 = !{!180}
!182 = distinct !{!182, !38}
!183 = distinct !{!183, i1 true, !"_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIoLb0EE8finalizeEo"}
!184 = distinct !{!184, !183, !"_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIoLb0EE8finalizeEo: argument 0"}
!185 = !{!184}
!186 = distinct !{!186, !38}
!187 = distinct !{!187, !38}
!188 = !{!"_ZTSN5folly6detail12_GLOBAL__N_111ErrorStringE", !33, i64 0, !42, i64 8}
!189 = !{!188, !33, i64 0}
!190 = !{!"_ZTSSt9exception"}
!191 = !{!"_ZTSSt12__cow_string", !28, i64 0}
!192 = !{!"_ZTSSt13runtime_error", !190, i64 0, !191, i64 8}
!193 = !{!"_ZTSSt11range_error", !192, i64 0}
!194 = !{!"_ZTSN5folly19ConversionErrorBaseE", !193, i64 0}
!195 = !{!"_ZTSN5folly15ConversionErrorE", !194, i64 0, !76, i64 16}
!196 = !{!195, !76, i64 16}
!197 = !{!80, !33, i64 0}
end_hunk_1
