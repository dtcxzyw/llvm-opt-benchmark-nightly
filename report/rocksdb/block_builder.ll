Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/block_builder?download=true
inline.NumInlined: 326
inline.NumDeleted: 124
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7rocksdb12BlockBuilder6FinishEv:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.q = add i64 %i.n, %i.g                       ; 3 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !49   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.u = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.u)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.v = load i64, ptr %i.s, align 8, !tbaa !36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.w = phi i64 [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.q, %i.w
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.g ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.n, 1
  br i1 %cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = load i8, ptr %i.l, align 1, !tbaa !36
  store i8 %i.y, ptr %i.x, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.g, i64 noundef 0, ptr noundef %i.l, i64 noundef %i.n)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  store i64 %i.q, ptr %i.f, align 8, !tbaa !35
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.q
  store i8 0, ptr %i.aa, align 1, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !37 ; 2 uses
  %.not = icmp eq ptr %i.ad, %i.ae
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.j

._crit_edge.loopexit:                             ; preds = %_ZN7rocksdb10PutFixed32EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit
  %i.ag = trunc i64 %i.bo to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %.lcssa = phi i32 [ 0, %bb.i ], [ %i.ag, %._crit_edge.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  store i8 0, ptr %i.ah, align 1, !tbaa !59
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 0, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.lcssa, ptr %i.aj, align 4, !tbaa !62
  store i8 0, ptr %1, align 4, !tbaa !63
  %i.ak = load i8, ptr %i.c, align 1, !tbaa !43, !range !52, !noundef !53
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.ak, ptr %i.al, align 4, !tbaa !64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !45, !range !52, !noundef !53
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = load double, ptr %i.am, align 8
  %i.ar = fcmp ogt double %i.aq, 0.000000e+00
  %i.as = select i1 %i.ap, i1 %i.ar, i1 false
  br i1 %i.as, label %_ZNK7rocksdb12BlockBuilder19CurrentSizeEstimateEv.exit, label %bb.o

bb.j:                                             ; preds = %.lr.ph, %_ZN7rocksdb10PutFixed32EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit
  %i.at = phi ptr [ %i.ae, %.lr.ph ], [ %i.bk, %_ZN7rocksdb10PutFixed32EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit ]
  %.010 = phi i64 [ 0, %.lr.ph ], [ %i.bi, %_ZN7rocksdb10PutFixed32EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit ] ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.010
  %i.av = load i32, ptr %i.au, align 4, !tbaa !39 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.av, ptr %i.a, align 4, !tbaa !39
  %i.aw = load i64, ptr %i.f, align 8, !tbaa !35  ; 5 uses
  %i.ax = and i64 %i.aw, -4
  %i.ay = icmp eq i64 %i.ax, 9223372036854775804
  br i1 %i.ay, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i4

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #17
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i4: ; preds = %bb.j
  %i.az = add nsw i64 %i.aw, 4                    ; 3 uses
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !49  ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.af
  br i1 %i.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i4
  %i.bc = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.bc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i5: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i4
  %i.bd = load i64, ptr %i.af, align 8, !tbaa !36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i6: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8
  %i.be = phi i64 [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i5 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8 ]
  %.not.i.i.i7 = icmp ugt i64 %i.az, %i.be
  br i1 %.not.i.i.i7, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i6
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.aw
  store i32 %i.av, ptr %i.bf, align 1
  br label %_ZN7rocksdb10PutFixed32EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i6
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.aw, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef 4)
  br label %_ZN7rocksdb10PutFixed32EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit

_ZN7rocksdb10PutFixed32EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit: ; preds = %bb.l, %bb.m
  store i64 %i.az, ptr %i.f, align 8, !tbaa !35
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.az
  store i8 0, ptr %i.bh, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bi = add nuw i64 %.010, 1                    ; 2 uses
  %i.bj = load ptr, ptr %i.ac, align 8, !tbaa !40
  %i.bk = load ptr, ptr %i.ab, align 8, !tbaa !37 ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 2                 ; 2 uses
  %i.bp = icmp ult i64 %i.bi, %i.bo
  br i1 %i.bp, label %bb.j, label %._crit_edge.loopexit, !llvm.loop !65

_ZNK7rocksdb12BlockBuilder19CurrentSizeEstimateEv.exit: ; preds = %._crit_edge
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !51
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !54
  %i.bu = fptoui double %i.bt to i16
  %i.bv = or i16 %i.bu, 1
  %i.bw = zext i16 %i.bv to i64
  %i.bx = add nuw nsw i64 %i.bw, 2
  %i.by = add i64 %i.bx, %i.br
  %i.bz = icmp ult i64 %i.by, 65537
  br i1 %i.bz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK7rocksdb12BlockBuilder19CurrentSizeEstimateEv.exit
  call void @_ZN7rocksdb25DataBlockHashIndexBuilder6FinishERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  store i8 1, ptr %1, align 4, !tbaa !63
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNK7rocksdb12BlockBuilder19CurrentSizeEstimateEv.exit, %._crit_edge
  %i.ca = load i8, ptr %i.h, align 8, !tbaa !48, !range !52, !noundef !53
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.ah, align 1, !tbaa !59
  %i.cc = trunc i64 %i.g to i32
  store i32 %i.cc, ptr %i.ai, align 4, !tbaa !66
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @_ZNK7rocksdb15DataBlockFooter8EncodeToEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 4 dereferenceable(13) %1, ptr noundef nonnull %i.e)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 1, ptr %i.cd, align 4, !tbaa !42
  %i.ce = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.cf = load i64, ptr %i.f, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.ce, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.cf, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK7rocksdb12BlockBuilder17ScanForUniformityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !46
  %i.c = fcmp olt double %i.b, 0.000000e+00
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ult i64 %i.j, 9
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o ; 4 uses
  %i.q = tail call { ptr, i64 } @_ZNK7rocksdb12BlockBuilder13GetRestartKeyEjPKc(ptr noundef nonnull align 8 dereferenceable(232) %0, i32 noundef 0, ptr noundef %i.p) ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0
  %i.s = extractvalue { ptr, i64 } %i.q, 1        ; 2 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = lshr exact i64 %i.x, 2
  %i.z = trunc i64 %i.y to i32
  %i.aa = add i32 %i.z, -1
  %i.ab = tail call { ptr, i64 } @_ZNK7rocksdb12BlockBuilder13GetRestartKeyEjPKc(ptr noundef nonnull align 8 dereferenceable(232) %0, i32 noundef %i.aa, ptr noundef %i.p) ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0
  %i.ad = extractvalue { ptr, i64 } %i.ab, 1      ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !33, !range !52, !noundef !53
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = icmp ult i64 %i.s, 8
  %i.ai = icmp ult i64 %i.ad, 8
  %or.cond46 = select i1 %i.ah, i1 true, i1 %i.ai
  br i1 %or.cond46, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %..i = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.ad) ; 3 uses
  %.not14.i = icmp eq i64 %..i, 0
  br i1 %.not14.i, label %_ZNK7rocksdb5Slice17difference_offsetERKS0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.011.i = phi i64 [ %i.an, %bb.f ], [ 0, %bb.e ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 %.011.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !36
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.011.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !36
  %.not.i = icmp eq i8 %i.ak, %i.am
  br i1 %.not.i, label %bb.f, label %_ZNK7rocksdb5Slice17difference_offsetERKS0_.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.an = add nuw i64 %.011.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.an, %..i
  br i1 %exitcond.not.i, label %_ZNK7rocksdb5Slice17difference_offsetERKS0_.exit, label %.lr.ph.i, !llvm.loop !67

_ZNK7rocksdb5Slice17difference_offsetERKS0_.exit: ; preds = %.lr.ph.i, %bb.f, %bb.e
  %.0.lcssa.i = phi i64 [ 0, %bb.e ], [ %..i, %bb.f ], [ %.011.i, %.lr.ph.i ] ; 4 uses
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !37
  %.not54.not = icmp eq ptr %i.ao, %i.ap
  br i1 %.not54.not, label %.thread, label %.lr.ph.peel

.lr.ph.peel:                                      ; preds = %_ZNK7rocksdb5Slice17difference_offsetERKS0_.exit
  %1 = tail call { ptr, i64 } @_ZNK7rocksdb12BlockBuilder13GetRestartKeyEjPKc(ptr noundef nonnull align 8 dereferenceable(232) %0, i32 noundef 0, ptr noundef %i.p) ; 2 uses
  %2 = extractvalue { ptr, i64 } %1, 0            ; 2 uses
  %3 = extractvalue { ptr, i64 } %1, 1            ; 3 uses
  %4 = load i8, ptr %i.ae, align 8, !tbaa !33, !range !52, !noundef !53
  %5 = trunc nuw i8 %4 to i1                      ; 2 uses
  %6 = icmp ugt i64 %3, 7
  %or.cond48.not.peel = select i1 %5, i1 true, i1 %6
  br i1 %or.cond48.not.peel, label %.critedge.peel, label %.thread

.critedge.peel:                                   ; preds = %.lr.ph.peel
  %7 = add i64 %3, -8
  %spec.select.i.peel = select i1 %5, i64 %3, i64 %7 ; 3 uses
  %.sroa.speculated.i.peel = tail call i64 @llvm.umin.i64(i64 %spec.select.i.peel, i64 %.0.lcssa.i) ; 3 uses
  %8 = sub nuw i64 %spec.select.i.peel, %.sroa.speculated.i.peel ; 8 uses
  %9 = icmp ugt i64 %8, 7
  br i1 %9, label %52, label %.preheader.i.peel

.preheader.i.peel:                                ; preds = %.critedge.peel
  %.not.not29.i.peel = icmp ugt i64 %spec.select.i.peel, %.0.lcssa.i ; 2 uses
  br i1 %.not.not29.i.peel, label %.lr.ph.i24.peel, label %._crit_edge.i.peel

.lr.ph.i24.peel:                                  ; preds = %.preheader.i.peel
  %10 = getelementptr i8, ptr %2, i64 %.sroa.speculated.i.peel ; 7 uses
  %11 = load i8, ptr %10, align 1, !tbaa !36
  %12 = zext i8 %11 to i64                        ; 2 uses
  %exitcond.not.i25.peel = icmp eq i64 %8, 1
  br i1 %exitcond.not.i25.peel, label %._crit_edge.i.peel, label %13

13:                                               ; preds = %.lr.ph.i24.peel
  %14 = shl nuw nsw i64 %12, 8
  %15 = getelementptr i8, ptr %10, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !36
  %17 = zext i8 %16 to i64
  %18 = or disjoint i64 %14, %17                  ; 2 uses
  %exitcond.not.i25.1.peel = icmp eq i64 %8, 2
  br i1 %exitcond.not.i25.1.peel, label %._crit_edge.i.peel, label %19

19:                                               ; preds = %13
  %20 = shl nuw nsw i64 %18, 8
  %21 = getelementptr i8, ptr %10, i64 2
  %22 = load i8, ptr %21, align 1, !tbaa !36
  %23 = zext i8 %22 to i64
  %24 = or disjoint i64 %20, %23                  ; 2 uses
  %exitcond.not.i25.2.peel = icmp eq i64 %8, 3
  br i1 %exitcond.not.i25.2.peel, label %._crit_edge.i.peel, label %25

25:                                               ; preds = %19
  %26 = shl nuw nsw i64 %24, 8
  %27 = getelementptr i8, ptr %10, i64 3
  %28 = load i8, ptr %27, align 1, !tbaa !36
  %29 = zext i8 %28 to i64
  %30 = or disjoint i64 %26, %29                  ; 2 uses
  %exitcond.not.i25.3.peel = icmp eq i64 %8, 4
  br i1 %exitcond.not.i25.3.peel, label %._crit_edge.i.peel, label %31

31:                                               ; preds = %25
  %32 = shl i64 %30, 8
  %33 = getelementptr i8, ptr %10, i64 4
  %34 = load i8, ptr %33, align 1, !tbaa !36
  %35 = zext i8 %34 to i64
  %36 = or disjoint i64 %32, %35                  ; 2 uses
  %exitcond.not.i25.4.peel = icmp eq i64 %8, 5
  br i1 %exitcond.not.i25.4.peel, label %._crit_edge.i.peel, label %37

37:                                               ; preds = %31
  %38 = shl i64 %36, 8
  %39 = getelementptr i8, ptr %10, i64 5
  %40 = load i8, ptr %39, align 1, !tbaa !36
  %41 = zext i8 %40 to i64
  %42 = or disjoint i64 %38, %41                  ; 2 uses
  %exitcond.not.i25.5.peel = icmp eq i64 %8, 6
  br i1 %exitcond.not.i25.5.peel, label %._crit_edge.i.peel, label %43

43:                                               ; preds = %37
  %44 = shl i64 %42, 8
  %45 = getelementptr i8, ptr %10, i64 6
  %46 = load i8, ptr %45, align 1, !tbaa !36
  %47 = zext i8 %46 to i64
  %48 = or disjoint i64 %44, %47
  br label %._crit_edge.i.peel

._crit_edge.i.peel:                               ; preds = %.lr.ph.i24.peel, %13, %19, %25, %31, %37, %43, %.preheader.i.peel
  %.013.lcssa.i.peel = phi i64 [ 0, %.preheader.i.peel ], [ %12, %.lr.ph.i24.peel ], [ %18, %13 ], [ %24, %19 ], [ %30, %25 ], [ %36, %31 ], [ %42, %37 ], [ %48, %43 ]
  %49 = shl nuw nsw i64 %8, 3
  %50 = sub nuw nsw i64 64, %49
  %51 = select i1 %.not.not29.i.peel, i64 %50, i64 0
  %.1.i.peel = shl i64 %.013.lcssa.i.peel, %51
  br label %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit.peel

52:                                               ; preds = %.critedge.peel
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.speculated.i.peel
  %.0.copyload.i.peel = load i64, ptr %53, align 1
  %54 = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.peel)
  br label %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit.peel

_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit.peel: ; preds = %._crit_edge.i.peel, %52
  %.014.i.peel = phi i64 [ %54, %52 ], [ %.1.i.peel, %._crit_edge.i.peel ]
  %55 = load ptr, ptr %i.e, align 8, !tbaa !40
  %56 = load ptr, ptr %i.d, align 8, !tbaa !37
  %57 = ptrtoint ptr %55 to i64
  %58 = ptrtoint ptr %56 to i64
  %59 = sub i64 %57, %58
  %.not.peel = icmp ugt i64 %59, 4
  br i1 %.not.peel, label %.lr.ph, label %.critedge23

.lr.ph:                                           ; preds = %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit.peel, %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit
  %.01659 = phi i64 [ %i.bn, %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit ], [ 1, %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit.peel ] ; 4 uses
  %.sroa.11.058 = phi double [ %92, %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit ], [ 0.000000e+00, %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit.peel ]
  %.sroa.8.057 = phi double [ %90, %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit ], [ 0.000000e+00, %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit.peel ] ; 2 uses
  %.sroa.030.055 = phi i64 [ %.014.i, %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit ], [ %.014.i.peel, %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit.peel ]
  %i.aq = trunc i64 %.01659 to i32
  %i.ar = tail call { ptr, i64 } @_ZNK7rocksdb12BlockBuilder13GetRestartKeyEjPKc(ptr noundef nonnull align 8 dereferenceable(232) %0, i32 noundef %i.aq, ptr noundef %i.p) ; 2 uses
  %i.as = extractvalue { ptr, i64 } %i.ar, 0      ; 2 uses
  %i.at = extractvalue { ptr, i64 } %i.ar, 1      ; 3 uses
  %i.au = load i8, ptr %i.ae, align 8, !tbaa !33, !range !52, !noundef !53
  %i.av = trunc nuw i8 %i.au to i1                ; 2 uses
  %i.aw = icmp ugt i64 %i.at, 7
  %or.cond48.not = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond48.not, label %.critedge, label %.thread

.critedge:                                        ; preds = %.lr.ph
  %i.ax = add i64 %i.at, -8
  %spec.select.i = select i1 %i.av, i64 %i.at, i64 %i.ax ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %spec.select.i, i64 %.0.lcssa.i) ; 3 uses
  %i.ay = sub nuw i64 %spec.select.i, %.sroa.speculated.i ; 8 uses
  %i.az = icmp ugt i64 %i.ay, 7
  br i1 %i.az, label %bb.g, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge
  %.not.not29.i = icmp ugt i64 %spec.select.i, %.0.lcssa.i ; 2 uses
  br i1 %.not.not29.i, label %.lr.ph.i24, label %._crit_edge.i.loopexit.unr-lcssa

.lr.ph.i24:                                       ; preds = %.preheader.i
  %i.ba = getelementptr i8, ptr %i.as, i64 %.sroa.speculated.i ; 7 uses
  %60 = load i8, ptr %i.ba, align 1, !tbaa !36
  %61 = zext i8 %60 to i64                        ; 2 uses
  %exitcond.not.i25 = icmp eq i64 %i.ay, 1
  br i1 %exitcond.not.i25, label %._crit_edge.i.loopexit.unr-lcssa, label %.epil.preheader

bb.g:                                             ; preds = %.critedge
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.speculated.i
  %.0.copyload.i = load i64, ptr %i.bb, align 1
  %i.bc = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i)
  br label %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i24, %.epil.preheader, %bb.h, %._crit_edge.i, %.lr.ph.i24.new, %_ZN7rocksdb15ReadBe64FromKeyENS_5SliceEbm.exit.a, %bb.i, %.preheader.i
  %.013.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %61, %.lr.ph.i24 ], [ %69, %.epil.preheader ], [ %i.bh, %bb.h ], [ %74, %._crit_edge.i ], [ %i.bm, %.lr.ph.i24.new ], [ %79, %_ZN7rocksdb15ReadBe64FromKeyENS_5SliceEbm.exit.a ], [ %84, %bb.i ]
  %62 = shl nuw nsw i64 %i.ay, 3
  %63 = sub nuw nsw i64 64, %62
  %64 = select i1 %.not.not29.i, i64 %63, i64 0
  %.1.i = shl i64 %.013.lcssa.i, %64
  br label %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit

.epil.preheader:                                  ; preds = %.lr.ph.i24
  %65 = shl nuw nsw i64 %61, 8
  %66 = getelementptr i8, ptr %i.ba, i64 1
  %67 = load i8, ptr %66, align 1, !tbaa !36
  %68 = zext i8 %67 to i64
  %69 = or disjoint i64 %65, %68                  ; 2 uses
  %exitcond.not.i25.1 = icmp eq i64 %i.ay, 2
  br i1 %exitcond.not.i25.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.h

bb.h:                                             ; preds = %.epil.preheader
  %i.bd = shl nuw nsw i64 %69, 8
  %i.be = getelementptr i8, ptr %i.ba, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !36
  %i.bg = zext i8 %i.bf to i64
  %i.bh = or disjoint i64 %i.bd, %i.bg            ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %i.ay, 3
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.loopexit.unr-lcssa, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h
  %70 = shl nuw nsw i64 %i.bh, 8
  %71 = getelementptr i8, ptr %i.ba, i64 3
  %72 = load i8, ptr %71, align 1, !tbaa !36
  %73 = zext i8 %72 to i64
  %74 = or disjoint i64 %70, %73                  ; 2 uses
  %exitcond.not.i25.3 = icmp eq i64 %i.ay, 4
  br i1 %exitcond.not.i25.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i24.new

.lr.ph.i24.new:                                   ; preds = %._crit_edge.i
  %i.bi = shl i64 %74, 8
  %i.bj = getelementptr i8, ptr %i.ba, i64 4
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !36
  %i.bl = zext i8 %i.bk to i64
  %i.bm = or disjoint i64 %i.bi, %i.bl            ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %i.ay, 5
  br i1 %niter.ncmp.7, label %._crit_edge.i.loopexit.unr-lcssa, label %_ZN7rocksdb15ReadBe64FromKeyENS_5SliceEbm.exit.a

_ZN7rocksdb15ReadBe64FromKeyENS_5SliceEbm.exit.a: ; preds = %.lr.ph.i24.new
  %75 = shl i64 %i.bm, 8
  %76 = getelementptr i8, ptr %i.ba, i64 5
  %77 = load i8, ptr %76, align 1, !tbaa !36
  %78 = zext i8 %77 to i64
  %79 = or disjoint i64 %75, %78                  ; 2 uses
  %.not.i26 = icmp eq i64 %i.ay, 6
  br i1 %.not.i26, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.i

bb.i:                                             ; preds = %_ZN7rocksdb15ReadBe64FromKeyENS_5SliceEbm.exit.a
  %80 = shl i64 %79, 8
  %81 = getelementptr i8, ptr %i.ba, i64 6
  %82 = load i8, ptr %81, align 1, !tbaa !36
  %83 = zext i8 %82 to i64
  %84 = or disjoint i64 %80, %83
  br label %._crit_edge.i.loopexit.unr-lcssa

_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit: ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.g
  %.014.i = phi i64 [ %i.bc, %bb.g ], [ %.1.i, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %85 = sub i64 %.014.i, %.sroa.030.055
  %86 = uitofp i64 %85 to double                  ; 2 uses
  %87 = fsub double %86, %.sroa.8.057             ; 2 uses
  %88 = uitofp i64 %.01659 to double
  %89 = fdiv double %87, %88
  %90 = fadd double %.sroa.8.057, %89             ; 3 uses
  %91 = fsub double %86, %90
  %92 = tail call double @llvm.fmuladd.f64(double %87, double %91, double %.sroa.11.058) ; 2 uses
  %i.bn = add nuw i64 %.01659, 1                  ; 2 uses
  %i.bo = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 2
  %.not = icmp ult i64 %i.bn, %i.bt
  br i1 %.not, label %.lr.ph, label %.critedge23, !llvm.loop !68

.critedge23:                                      ; preds = %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit, %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit.peel
  %.sroa.8.1.lcssa = phi double [ 0.000000e+00, %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit.peel ], [ %90, %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit ] ; 2 uses
  %.sroa.11.1.lcssa = phi double [ 0.000000e+00, %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit.peel ], [ %92, %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit ]
  %.01659.lcssa73 = phi i64 [ 0, %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit.peel ], [ %.01659, %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit ] ; 2 uses
  %i.bu = icmp ugt i64 %.01659.lcssa73, 1
  %i.bv = fcmp ugt double %.sroa.8.1.lcssa, 0.000000e+00
  %or.cond49 = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %or.cond49, label %_ZNK7rocksdb12_GLOBAL__N_118UniformDataTracker5GetCVEv.exit, label %.thread

_ZNK7rocksdb12_GLOBAL__N_118UniformDataTracker5GetCVEv.exit: ; preds = %.critedge23
  %i.bw = uitofp i64 %.01659.lcssa73 to double
  %i.bx = fdiv double %.sroa.11.1.lcssa, %i.bw
  %i.by = tail call double @sqrt(double noundef %i.bx) #16
  %i.bz = fdiv double %i.by, %.sroa.8.1.lcssa     ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !47 ; 3 uses
  %i.cc = icmp ne ptr %i.cb, null
  %i.cd = fcmp oge double %i.bz, 0.000000e+00     ; 2 uses
  %or.cond = and i1 %i.cc, %i.cd
  br i1 %or.cond, label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit, label %bb.j

_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit: ; preds = %_ZNK7rocksdb12_GLOBAL__N_118UniformDataTracker5GetCVEv.exit
  %i.ce = fmul nnan double %i.bz, 1.000000e+04
  %i.cf = fptoui double %i.ce to i64
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !70
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 216
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(33) %i.cb, i32 noundef 70, i64 noundef %i.cf), !inline_history !72
  br label %bb.k

bb.j:                                             ; preds = %_ZNK7rocksdb12_GLOBAL__N_118UniformDataTracker5GetCVEv.exit
  br i1 %i.cd, label %bb.k, label %.thread

bb.k:                                             ; preds = %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit, %bb.j
  %i.cj = load double, ptr %i.a, align 8, !tbaa !46
  %i.ck = fcmp olt double %i.bz, %i.cj
  br label %.thread

.thread:                                          ; preds = %.lr.ph.peel, %.lr.ph, %_ZNK7rocksdb5Slice17difference_offsetERKS0_.exit, %.critedge23, %bb.d, %bb.j, %bb.k, %bb.a, %bb.b
  %.5 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.d ], [ false, %.critedge23 ], [ %i.ck, %bb.k ], [ false, %bb.j ], [ false, %_ZNK7rocksdb5Slice17difference_offsetERKS0_.exit ], [ false, %.lr.ph ], [ false, %.lr.ph.peel ]
  ret i1 %.5
}

declare void @_ZN7rocksdb25DataBlockHashIndexBuilder6FinishERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZNK7rocksdb15DataBlockFooter8EncodeToEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 4 dereferenceable(13), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb12BlockBuilder3AddERKNS_5SliceES3_PS2_b(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  store ptr %i.b, ptr %5, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !35
  store i64 %i.e, ptr %i.c, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !35
  call void @_ZN7rocksdb12BlockBuilder18AddWithLastKeyImplERKNS_5SliceES3_S3_PS2_bm(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %3, i1 noundef zeroext %4, i64 noundef %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i8, ptr %i.h, align 4, !tbaa !30, !range !52, !noundef !53
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !73
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !55
  %i.n = load i64, ptr %i.d, align 8, !tbaa !35
  %i.o = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.n, ptr noundef %i.k, i64 noundef %i.m) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb12BlockBuilder18AddWithLastKeyImplERKNS_5SliceES3_S3_PS2_bm(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4, i1 noundef zeroext %5, i64 noundef %6) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [15 x i8], align 1                ; 8 uses
  %i.b = alloca [20 x i8], align 16               ; 8 uses
  %i.c = alloca [10 x i8], align 1                ; 8 uses
  %i.d = alloca [15 x i8], align 1                ; 8 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.e, ptr %9, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !35
  store i8 0, ptr %i.e, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.g, ptr %10, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !35
  store i8 0, ptr %i.g, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.i = load ptr, ptr %1, align 8, !tbaa !73     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !55
  %i.l = and i64 %i.k, 4294967295                 ; 3 uses
  store ptr %i.i, ptr %8, align 8, !tbaa !73
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32   ; 3 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i8, ptr %i.p, align 8, !tbaa !33, !range !52, !noundef !53
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = sub i64 %i.l, %i.o
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke void @_ZN7rocksdb29StripTimestampFromInternalKeyEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceEm(ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %i.o)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.d
  %i.t = load ptr, ptr %9, align 8, !tbaa !49
  %i.u = load i64, ptr %i.f, align 8, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.c, %bb.a
  %.fca.1.load.i = phi i64 [ %i.s, %bb.c ], [ %i.u, %.noexc ], [ %i.l, %bb.a ] ; 2 uses
  %.fca.0.load.i = phi ptr [ %i.i, %bb.c ], [ %i.t, %.noexc ], [ %i.i, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !55   ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8, !tbaa !74
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.y = load ptr, ptr %3, align 8, !tbaa !73     ; 3 uses
  %i.z = and i64 %i.w, 4294967295                 ; 3 uses
  store ptr %i.y, ptr %7, align 8, !tbaa !73
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !55
  %i.ab = load i64, ptr %i.n, align 8, !tbaa !32  ; 3 uses
  %.not.i49 = icmp eq i64 %i.ab, 0
  br i1 %.not.i49, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !33, !range !52, !noundef !53
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = sub i64 %i.z, %i.ab
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  invoke void @_ZN7rocksdb29StripTimestampFromInternalKeyEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceEm(ptr noundef nonnull %10, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.ab)
          to label %.noexc54 unwind label %bb.t

.noexc54:                                         ; preds = %bb.j
  %i.ag = load ptr, ptr %10, align 8, !tbaa !49
  %i.ah = load i64, ptr %i.h, align 8, !tbaa !35
  br label %bb.k

bb.k:                                             ; preds = %.noexc54, %bb.i, %bb.g
  %.fca.1.load.i50 = phi i64 [ %i.af, %bb.i ], [ %i.ah, %.noexc54 ], [ %i.z, %bb.g ]
  %.fca.0.load.i51 = phi ptr [ %i.y, %bb.i ], [ %i.ag, %.noexc54 ], [ %i.y, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ai = call i64 @llvm.umin.i64(i64 %.fca.1.load.i, i64 %.fca.1.load.i50)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.sroa.6.0 = phi i64 [ 0, %bb.f ], [ %i.ai, %bb.k ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload, %bb.f ], [ %.fca.0.load.i51, %bb.k ]
  %i.aj = trunc i64 %6 to i32                     ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !41 ; 3 uses
  %i.am = load i32, ptr %0, align 8, !tbaa !9
  %.not42 = icmp slt i32 %i.al, %i.am
  br i1 %.not42, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !40 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !38
  %.not.i56 = icmp eq ptr %i.ap, %i.ar
  br i1 %.not.i56, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.aj, ptr %i.ap, align 4, !tbaa !39
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.o:                                             ; preds = %bb.m
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !37 ; 4 uses
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 5 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775804
  br i1 %i.ax, label %bb.p, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #17
          to label %.noexc57 unwind label %bb.u

.noexc57:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.ay = ashr exact i64 %i.aw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = call i64 @llvm.umin.i64(i64 %i.az, i64 2305843009213693951)
  %i.bc = select i1 %i.ba, i64 2305843009213693951, i64 %i.bb ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bc, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #14
          to label %.noexc58 unwind label %bb.u   ; 4 uses

.noexc58:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.aw ; 2 uses
  store i32 %i.aj, ptr %i.bf, align 4, !tbaa !39
  %i.bg = icmp sgt i64 %i.aw, 0
  br i1 %i.bg, label %bb.q, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.q:                                             ; preds = %.noexc58
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.be, ptr align 4 %i.at, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.q, %.noexc58
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %.not.i17.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.bi = load ptr, ptr %i.aq, align 8, !tbaa !38
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.bk) #15
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.be, ptr %i.an, align 8, !tbaa !37
  store ptr %i.bh, ptr %i.ao, align 8, !tbaa !40
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.bl, ptr %i.aq, align 8, !tbaa !38
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !51
  %i.bo = add i64 %i.bn, 4
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !51
  store i32 0, ptr %i.ak, align 8, !tbaa !41
  br label %_ZNK7rocksdb5Slice17difference_offsetERKS0_.exit

bb.s:                                             ; preds = %bb.d
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.t:                                             ; preds = %bb.j
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.u:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i, %bb.p
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.v:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bt = load i8, ptr %i.bs, align 4, !tbaa !30, !range !52, !noundef !53
  %i.bu = trunc nuw i8 %i.bt to i1
  %.not = xor i1 %i.bu, true
  %or.cond = or i1 %5, %.not
  %.not14.i = icmp eq i64 %.sroa.6.0, 0
  %or.cond177 = select i1 %or.cond, i1 true, i1 %.not14.i
  br i1 %or.cond177, label %_ZNK7rocksdb5Slice17difference_offsetERKS0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %bb.w
  %.011.i = phi i64 [ %i.bz, %bb.w ], [ 0, %bb.v ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.fca.0.load.i, i64 %.011.i
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !36
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.011.i
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !36
  %.not.i59 = icmp eq i8 %i.bw, %i.by
  br i1 %.not.i59, label %bb.w, label %_ZNK7rocksdb5Slice17difference_offsetERKS0_.exit.loopexit

bb.w:                                             ; preds = %.lr.ph.i
  %i.bz = add nuw i64 %.011.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bz, %.sroa.6.0
  br i1 %exitcond.not.i, label %_ZNK7rocksdb5Slice17difference_offsetERKS0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !67

_ZNK7rocksdb5Slice17difference_offsetERKS0_.exit.loopexit: ; preds = %bb.w, %.lr.ph.i
  %.0.lcssa.i.ph = phi i64 [ %.011.i, %.lr.ph.i ], [ %.sroa.6.0, %bb.w ]
  %i.ca = trunc i64 %.0.lcssa.i.ph to i32
  br label %_ZNK7rocksdb5Slice17difference_offsetERKS0_.exit

_ZNK7rocksdb5Slice17difference_offsetERKS0_.exit: ; preds = %_ZNK7rocksdb5Slice17difference_offsetERKS0_.exit.loopexit, %bb.v, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.cb = phi i32 [ 0, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.al, %bb.v ], [ %i.al, %_ZNK7rocksdb5Slice17difference_offsetERKS0_.exit.loopexit ]
  %.0 = phi i32 [ 0, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ 0, %bb.v ], [ %i.ca, %_ZNK7rocksdb5Slice17difference_offsetERKS0_.exit.loopexit ] ; 8 uses
  %i.cc = trunc i64 %.fca.1.load.i to i32         ; 2 uses
  %i.cd = sub i32 %i.cc, %.0                      ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !35 ; 2 uses
  %i.ch = trunc i64 %i.cg to i32                  ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !55 ; 2 uses
  %i.ck = trunc i64 %i.cj to i32                  ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !31, !range !52, !noundef !53
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !48, !range !52, !noundef !53
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = icmp eq i32 %i.cb, 0
  %or.cond178 = and i1 %i.cr, %i.cq               ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  br i1 %i.cn, label %bb.x, label %bb.al

bb.x:                                             ; preds = %_ZNK7rocksdb5Slice17difference_offsetERKS0_.exit
  br i1 %or.cond178, label %bb.y, label %bb.af

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.ct = invoke noundef ptr @_ZN7rocksdb14EncodeVarint32EPcj(ptr noundef nonnull %i.d, i32 noundef %.0)
          to label %.noexc61 unwind label %bb.ae

.noexc61:                                         ; preds = %bb.y
  %i.cu = invoke noundef ptr @_ZN7rocksdb14EncodeVarint32EPcj(ptr noundef %i.ct, i32 noundef %i.cd)
          to label %.noexc62 unwind label %bb.ae
end_hunk_0
begin_hunk_1_@_ZN7rocksdb12BlockBuilder18AddWithLastKeyImplERKNS_5SliceES3_S3_PS2_bm:bb.a
  %i.ex = icmp eq ptr %i.ev, %i.ew
  br i1 %i.ex, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i83: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i77
  %i.ey = icmp ult i64 %i.er, 16
  call void @llvm.assume(i1 %i.ey)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i77
  %i.ez = load i64, ptr %i.ew, align 8, !tbaa !36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i79: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i83
  %i.fa = phi i64 [ %i.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i83 ]
  %.not.i.i.i80 = icmp ugt i64 %i.eu, %i.fa
  br i1 %.not.i.i.i80, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i79
  %.not8.i.i.i81 = icmp eq ptr %i.em, %i.b
  br i1 %.not8.i.i.i81, label %_ZN7rocksdb11PutVarint32IJjjjjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.er ; 2 uses
  %cond.i.i.i82 = icmp eq i64 %i.ep, 1
  br i1 %cond.i.i.i82, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fc = load i8, ptr %i.b, align 16, !tbaa !36
  store i8 %i.fc, ptr %i.fb, align 1, !tbaa !36
  br label %_ZN7rocksdb11PutVarint32IJjjjjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fb, ptr nonnull align 16 %i.b, i64 %i.ep, i1 false)
  br label %_ZN7rocksdb11PutVarint32IJjjjjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i79
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i64 noundef %i.er, i64 noundef 0, ptr noundef nonnull %i.b, i64 noundef %i.ep)
          to label %_ZN7rocksdb11PutVarint32IJjjjjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit unwind label %bb.ae

_ZN7rocksdb11PutVarint32IJjjjjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit: ; preds = %bb.ar, %bb.an, %bb.ap, %bb.aq
  store i64 %i.eu, ptr %i.eq, align 8, !tbaa !35
  %i.fd = load ptr, ptr %i.cs, align 8, !tbaa !49
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.eu
  store i8 0, ptr %i.fe, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.ay

bb.as:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ff = invoke noundef ptr @_ZN7rocksdb14EncodeVarint32EPcj(ptr noundef nonnull %i.a, i32 noundef %.0)
          to label %.noexc97 unwind label %bb.ae

.noexc97:                                         ; preds = %bb.as
  %i.fg = invoke noundef ptr @_ZN7rocksdb14EncodeVarint32EPcj(ptr noundef %i.ff, i32 noundef %i.cd)
          to label %.noexc98 unwind label %bb.ae

.noexc98:                                         ; preds = %.noexc97
  %i.fh = invoke noundef ptr @_ZN7rocksdb14EncodeVarint32EPcj(ptr noundef %i.fg, i32 noundef %i.ck)
          to label %.noexc99 unwind label %bb.ae  ; 2 uses

.noexc99:                                         ; preds = %.noexc98
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.a to i64
  %i.fk = sub i64 %i.fi, %i.fj                    ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !35 ; 5 uses
  %i.fn = sub i64 9223372036854775807, %i.fm
  %i.fo = icmp ult i64 %i.fn, %i.fk
  br i1 %i.fo, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i90: ; preds = %.noexc99
  %i.fp = add i64 %i.fm, %i.fk                    ; 3 uses
  %i.fq = load ptr, ptr %i.cs, align 8, !tbaa !49 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i96: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i90
  %i.ft = icmp ult i64 %i.fm, 16
  call void @llvm.assume(i1 %i.ft)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i91: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i90
  %i.fu = load i64, ptr %i.fr, align 8, !tbaa !36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i92: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i96
  %i.fv = phi i64 [ %i.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i91 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i96 ]
  %.not.i.i.i93 = icmp ugt i64 %i.fp, %i.fv
  br i1 %.not.i.i.i93, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i92
  %.not8.i.i.i94 = icmp eq ptr %i.fh, %i.a
  br i1 %.not8.i.i.i94, label %_ZN7rocksdb11PutVarint32IJjjjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit102, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fm ; 2 uses
  %cond.i.i.i95 = icmp eq i64 %i.fk, 1
  br i1 %cond.i.i.i95, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fx = load i8, ptr %i.a, align 1, !tbaa !36
  store i8 %i.fx, ptr %i.fw, align 1, !tbaa !36
  br label %_ZN7rocksdb11PutVarint32IJjjjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit102

bb.aw:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fw, ptr nonnull align 1 %i.a, i64 %i.fk, i1 false)
  br label %_ZN7rocksdb11PutVarint32IJjjjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit102

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i92
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i64 noundef %i.fm, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.fk)
          to label %_ZN7rocksdb11PutVarint32IJjjjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit102 unwind label %bb.ae

_ZN7rocksdb11PutVarint32IJjjjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit102: ; preds = %bb.ax, %bb.at, %bb.av, %bb.aw
  store i64 %i.fp, ptr %i.fl, align 8, !tbaa !35
  %i.fy = load ptr, ptr %i.cs, align 8, !tbaa !49
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fp
  store i8 0, ptr %i.fz, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN7rocksdb11PutVarint32IJjjjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit102, %_ZN7rocksdb11PutVarint32IJjjjjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit, %_ZN7rocksdb11PutVarint32IJjjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit, %_ZN7rocksdb11PutVarint32IJjjjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.gb = zext i32 %.0 to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %.fca.0.load.i, i64 %i.gb ; 3 uses
  %i.gd = zext i32 %i.cd to i64                   ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !35 ; 5 uses
  %i.gg = sub i64 9223372036854775807, %i.gf
  %i.gh = icmp ult i64 %i.gg, %i.gd
  br i1 %i.gh, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

.invoke:                                          ; preds = %.noexc63, %bb.ay, %.noexc99, %.noexc87, %.noexc74
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #17
          to label %.cont unwind label %bb.ae

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.ay
  %i.gi = add i64 %i.gf, %i.gd                    ; 3 uses
  %i.gj = load ptr, ptr %i.ga, align 8, !tbaa !49 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.gm = icmp ult i64 %i.gf, 16
  call void @llvm.assume(i1 %i.gm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.gn = load i64, ptr %i.gk, align 8, !tbaa !36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.go = phi i64 [ %i.gn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.gi, %i.go
  br i1 %.not.i.i, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i32 %.0, %i.cc
  br i1 %.not8.i.i, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gf ; 2 uses
  %cond.i.i = icmp eq i32 %i.cd, 1
  br i1 %cond.i.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gq = load i8, ptr %i.gc, align 1, !tbaa !36
  store i8 %i.gq, ptr %i.gp, align 1, !tbaa !36
  br label %bb.be

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gp, ptr align 1 %i.gc, i64 %i.gd, i1 false)
  br label %bb.be

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ga, i64 noundef %i.gf, i64 noundef 0, ptr noundef %i.gc, i64 noundef %i.gd)
          to label %bb.be unwind label %bb.ae

bb.be:                                            ; preds = %bb.bc, %bb.bb, %bb.az, %bb.bd
  store i64 %i.gi, ptr %i.ge, align 8, !tbaa !35
  %i.gr = load ptr, ptr %i.ga, align 8, !tbaa !49
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gi
  store i8 0, ptr %i.gs, align 1, !tbaa !36
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.gu = load i8, ptr %i.gt, align 8, !tbaa !48, !range !52, !noundef !53
  %i.gv = trunc nuw i8 %i.gu to i1
  %i.gw = select i1 %i.gv, ptr %i.ce, ptr %i.ga   ; 9 uses
  %.not43 = icmp eq i32 %.0, 0
  br i1 %.not43, label %bb.bn, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gx = load i8, ptr %i.cl, align 1, !tbaa !31, !range !52, !noundef !53
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %bb.bg, label %bb.bn

bb.bg:                                            ; preds = %bb.bf
  %i.gz = load ptr, ptr %4, align 8, !tbaa !73    ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !55
  %i.hc = and i64 %i.hb, 4294967295               ; 6 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !35 ; 5 uses
  %i.hf = sub i64 9223372036854775807, %i.he
  %i.hg = icmp ult i64 %i.hf, %i.hc
  br i1 %i.hg, label %.invoke180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i105: ; preds = %bb.bg
  %i.hh = add i64 %i.he, %i.hc                    ; 3 uses
  %i.hi = load ptr, ptr %i.gw, align 8, !tbaa !49 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i111: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i105
  %i.hl = icmp ult i64 %i.he, 16
  call void @llvm.assume(i1 %i.hl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i105
  %i.hm = load i64, ptr %i.hj, align 8, !tbaa !36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i107: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i111
  %i.hn = phi i64 [ %i.hm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i111 ]
  %.not.i.i108 = icmp ugt i64 %i.hh, %i.hn
  br i1 %.not.i.i108, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i107
  %.not8.i.i109 = icmp eq i64 %i.hc, 0
  br i1 %.not8.i.i109, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit114, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.he ; 2 uses
  %cond.i.i110 = icmp eq i64 %i.hc, 1
  br i1 %cond.i.i110, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.hp = load i8, ptr %i.gz, align 1, !tbaa !36
  store i8 %i.hp, ptr %i.ho, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit114

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ho, ptr align 1 %i.gz, i64 %i.hc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit114

bb.bl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i107
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.gw, i64 noundef %i.he, i64 noundef 0, ptr noundef %i.gz, i64 noundef %i.hc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit114 unwind label %bb.bm

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit114: ; preds = %bb.bl, %bb.bh, %bb.bj, %bb.bk
  store i64 %i.hh, ptr %i.hd, align 8, !tbaa !35
  br label %bb.bt

bb.bm:                                            ; preds = %.invoke180, %bb.bs, %bb.bl
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bn:                                            ; preds = %bb.bf, %bb.be
  %i.hr = load ptr, ptr %2, align 8, !tbaa !73    ; 3 uses
  %i.hs = and i64 %i.cj, 4294967295               ; 6 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !35 ; 5 uses
  %i.hv = sub i64 9223372036854775807, %i.hu
  %i.hw = icmp ult i64 %i.hv, %i.hs
  br i1 %i.hw, label %.invoke180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i115

.invoke180:                                       ; preds = %bb.bg, %bb.bn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #17
          to label %.cont181 unwind label %bb.bm

.cont181:                                         ; preds = %.invoke180
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i115: ; preds = %bb.bn
  %i.hx = add i64 %i.hu, %i.hs                    ; 3 uses
  %i.hy = load ptr, ptr %i.gw, align 8, !tbaa !49 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %i.ia = icmp eq ptr %i.hy, %i.hz
  br i1 %i.ia, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i121: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i115
  %i.ib = icmp ult i64 %i.hu, 16
  call void @llvm.assume(i1 %i.ib)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i116: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i115
  %i.ic = load i64, ptr %i.hz, align 8, !tbaa !36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i117: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i121
  %i.id = phi i64 [ %i.ic, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i116 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i121 ]
  %.not.i.i118 = icmp ugt i64 %i.hx, %i.id
  br i1 %.not.i.i118, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i117
  %.not8.i.i119 = icmp eq i64 %i.hs, 0
  br i1 %.not8.i.i119, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit124, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hu ; 2 uses
  %cond.i.i120 = icmp eq i64 %i.hs, 1
  br i1 %cond.i.i120, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.if = load i8, ptr %i.hr, align 1, !tbaa !36
  store i8 %i.if, ptr %i.ie, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit124

bb.br:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ie, ptr align 1 %i.hr, i64 %i.hs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit124

bb.bs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i117
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.gw, i64 noundef %i.hu, i64 noundef 0, ptr noundef %i.hr, i64 noundef %i.hs)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit124 unwind label %bb.bm

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit124: ; preds = %bb.bs, %bb.bo, %bb.bq, %bb.br
  store i64 %i.hx, ptr %i.ht, align 8, !tbaa !35
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit114
  %.sink183 = phi i64 [ %i.hx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit124 ], [ %i.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit114 ]
  %i.ig = load ptr, ptr %i.gw, align 8, !tbaa !49
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.sink183
  store i8 0, ptr %i.ih, align 1, !tbaa !36
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ik = load i8, ptr %i.ij, align 8, !tbaa !45, !range !52, !noundef !53
  %i.il = trunc nuw i8 %i.ik to i1
  %i.im = load double, ptr %i.ii, align 8
  %i.in = fcmp ogt double %i.im, 0.000000e+00
  %i.io = select i1 %i.il, i1 %i.in, i1 false
  br i1 %i.io, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.ip = load ptr, ptr %1, align 8, !tbaa !73
  %i.iq = load i64, ptr %i.j, align 8, !tbaa !55
  %i.ir = add i64 %i.iq, -8
  store ptr %i.ip, ptr %11, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ir, ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !40
  %i.iw = load ptr, ptr %i.it, align 8, !tbaa !37
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = sub i64 %i.ix, %i.iy
  %i.ja = ashr exact i64 %i.iz, 2
  %i.jb = add nsw i64 %i.ja, -1
  invoke void @_ZN7rocksdb25DataBlockHashIndexBuilder3AddERKNS_5SliceEm(ptr noundef nonnull align 8 dereferenceable(48) %i.ii, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %i.jb)
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv, %bb.bt
  %i.jd = load i32, ptr %i.ak, align 8, !tbaa !41
  %i.je = add nsw i32 %i.jd, 1
  store i32 %i.je, ptr %i.ak, align 8, !tbaa !41
  %i.jf = load i64, ptr %i.ge, align 8, !tbaa !35
  %i.jg = load i64, ptr %i.cf, align 8, !tbaa !35
  %i.jh = add i64 %i.cg, %6
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !51
  %i.jk = sub i64 %i.jf, %i.jh
  %i.jl = add i64 %i.jk, %i.jg
  %i.jm = add i64 %i.jl, %i.jj
  store i64 %i.jm, ptr %i.ji, align 8, !tbaa !51
  %i.jn = load ptr, ptr %10, align 8, !tbaa !49   ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.g
  br i1 %i.jo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bx
  %i.jp = load i64, ptr %i.g, align 8, !tbaa !36
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jq) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.jr = load ptr, ptr %9, align 8, !tbaa !49    ; 2 uses
  %i.js = icmp eq ptr %i.jr, %i.e
  br i1 %i.js, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.jt = load i64, ptr %i.e, align 8, !tbaa !36
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.ju) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  ret void

bb.by:                                            ; preds = %bb.t, %bb.ae, %bb.bw, %bb.bm, %bb.u, %bb.s
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.s ], [ %i.bq, %bb.t ], [ %i.br, %bb.u ], [ %i.do, %bb.ae ], [ %i.jc, %bb.bw ], [ %i.hq, %bb.bm ]
  %i.jv = load ptr, ptr %10, align 8, !tbaa !49   ; 2 uses
  %i.jw = icmp eq ptr %i.jv, %i.g
  br i1 %i.jw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.by
  %i.jx = load i64, ptr %i.g, align 8, !tbaa !36
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jy) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.jz = load ptr, ptr %9, align 8, !tbaa !49    ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.e
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.kb = load i64, ptr %i.e, align 8, !tbaa !36
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kc) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb12BlockBuilder14AddWithLastKeyERKNS_5SliceES3_S3_PS2_b(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.e = load ptr, ptr %3, align 8, !tbaa !73
  %.not = icmp eq i64 %i.b, 0
  %i.f = select i1 %.not, i64 0, i64 %i.d
  store ptr %i.e, ptr %6, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !55
  call void @_ZN7rocksdb12BlockBuilder18AddWithLastKeyImplERKNS_5SliceES3_S3_PS2_bm(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %4, i1 noundef zeroext %5, i64 noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, i64 } @_ZNK7rocksdb12BlockBuilder13GetRestartKeyEjPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %3 = alloca %"struct.rocksdb::DecodeEntry", align 1 ; 3 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = zext i32 %1 to i64
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.h
  %i.k = load i32, ptr %i.j, align 4, !tbaa !39
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.l ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.o = load i8, ptr %i.n, align 8, !tbaa !48, !range !52, !noundef !53
  %i.p = trunc nuw i8 %i.o to i1                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.r = load i8, ptr %i.q, align 1, !tbaa !31, !range !52, !noundef !53
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.t = ptrtoint ptr %2 to i64
  %i.u = ptrtoint ptr %i.m to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp slt i64 %i.v, 3
  br i1 %i.w, label %_ZN7rocksdb11DecodeKeyV4clEPKcS2_PjS3_S3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load i8, ptr %i.m, align 1, !tbaa !36    ; 2 uses
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  store i32 %i.y, ptr %i.b, align 4, !tbaa !39
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !36
  %i.ab = zext i8 %i.aa to i32                    ; 2 uses
  store i32 %i.ab, ptr %i.c, align 4, !tbaa !39
  %i.ac = or i32 %i.ab, %i.y
  %i.ad = icmp samesign ult i32 %i.ac, 128
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.af = icmp ult ptr %i.m, %2
  %i.ag = icmp sgt i8 %i.x, -1
  %or.cond = and i1 %i.af, %i.ag
  br i1 %or.cond, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i:      ; preds = %bb.e
  %i.ah = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.m, ptr noundef %2, ptr noundef nonnull %i.b) ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZN7rocksdb11DecodeKeyV4clEPKcS2_PjS3_S3_.exit, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i: ; preds = %bb.e, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i
  %.1.i33.i = phi ptr [ %i.ah, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i ], [ %i.z, %bb.e ] ; 4 uses
  %i.aj = icmp ult ptr %.1.i33.i, %2
  br i1 %i.aj, label %bb.f, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit28.i

bb.f:                                             ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i
  %i.ak = load i8, ptr %.1.i33.i, align 1, !tbaa !36 ; 2 uses
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit28.thread.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit28.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit28.thread.i: ; preds = %bb.f
  %i.am = zext nneg i8 %i.ak to i32
  store i32 %i.am, ptr %i.c, align 4, !tbaa !39
  %i.an = getelementptr inbounds nuw i8, ptr %.1.i33.i, i64 1
  br label %bb.g

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit28.i:    ; preds = %bb.f, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i
  %i.ao = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %.1.i33.i, ptr noundef %2, ptr noundef nonnull %i.c) ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZN7rocksdb11DecodeKeyV4clEPKcS2_PjS3_S3_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit28.i, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit28.thread.i, %bb.d
  %.021.i = phi ptr [ %i.ae, %bb.d ], [ %i.ao, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit28.i ], [ %i.an, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit28.thread.i ] ; 5 uses
  br i1 %i.p, label %bb.h, label %_ZN7rocksdb11DecodeKeyV4clEPKcS2_PjS3_S3_.exit

bb.h:                                             ; preds = %bb.g
  %i.aq = icmp ult ptr %.021.i, %2
  br i1 %i.aq, label %bb.i, label %.thread.i29.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load i8, ptr %.021.i, align 1, !tbaa !36
  %i.as = icmp sgt i8 %i.ar, -1
  br i1 %i.as, label %bb.j, label %.thread.i29.i

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %.021.i, i64 1
  br label %_ZN7rocksdb11DecodeKeyV4clEPKcS2_PjS3_S3_.exit

.thread.i29.i:                                    ; preds = %bb.i, %bb.h
  %i.au = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %.021.i, ptr noundef %2, ptr noundef nonnull %i.d)
  br label %_ZN7rocksdb11DecodeKeyV4clEPKcS2_PjS3_S3_.exit

bb.k:                                             ; preds = %bb.a
  %. = select i1 %i.p, ptr %i.d, ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.av = call noundef ptr @_ZN7rocksdb11DecodeEntryclEPKcS2_PjS3_S3_S3_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %i.m, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef %.)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZN7rocksdb11DecodeKeyV4clEPKcS2_PjS3_S3_.exit

_ZN7rocksdb11DecodeKeyV4clEPKcS2_PjS3_S3_.exit:   ; preds = %.thread.i29.i, %bb.j, %bb.g, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit28.i, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i, %bb.b, %bb.k
  %.0 = phi ptr [ %i.av, %bb.k ], [ null, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i ], [ null, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit28.i ], [ %.021.i, %bb.g ], [ null, %bb.b ], [ %i.au, %.thread.i29.i ], [ %i.at, %bb.j ]
  %i.aw = load i32, ptr %i.c, align 4, !tbaa !39
  %i.ax = zext i32 %i.aw to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.ax, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !37     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !39
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !40
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

end_hunk_1
begin_hunk_2_@_ZNSt6vectorIjSaIjEE17_M_default_appendEm:bb.a
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #15
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36: ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !37
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !38
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !49     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !35   ; 5 uses
  %i.h = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !49     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.d, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !35   ; 4 uses
  %i.n = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.n)
  %.not = icmp eq i64 %i.g, 0
  %.not38 = icmp eq i64 %i.m, 0                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not38, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42

_ZNSt11char_traitsIcE4copyEPcPKcm.exit42:         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = add nuw nsw i64 %i.m, 1                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  %i.p = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.p, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.o, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  br i1 %.not38, label %bb.h, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43

_ZNSt11char_traitsIcE4copyEPcPKcm.exit43:         ; preds = %bb.f
  %i.q = add nuw nsw i64 %i.m, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.q, i1 false)
  %.pre52 = load ptr, ptr %1, align 8, !tbaa !49
  %.pre51 = load i64, ptr %i.l, align 8, !tbaa !35
  store i64 %.pre51, ptr %i.f, align 8, !tbaa !35
  store i64 0, ptr %i.l, align 8, !tbaa !35
  store i8 0, ptr %.pre52, align 1, !tbaa !36
  br label %bb.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit44:         ; preds = %bb.e
  %i.r = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.r, i1 false)
  %.pre50 = load ptr, ptr %0, align 8, !tbaa !49
  %.pre = load i64, ptr %i.f, align 8, !tbaa !35
  store i64 %.pre, ptr %i.l, align 8, !tbaa !35
  store i64 0, ptr %i.f, align 8, !tbaa !35
  store i8 0, ptr %.pre50, align 1, !tbaa !36
  br label %bb.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit45:         ; preds = %bb.c
  %i.s = load i64, ptr %i.j, align 8, !tbaa !36
  %i.t = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.t, i1 false)
  store ptr %i.i, ptr %0, align 8, !tbaa !49
  store ptr %i.j, ptr %1, align 8, !tbaa !49
  store i64 %i.s, ptr %i.d, align 8, !tbaa !36
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit: ; preds = %bb.b
  %i.u = load i64, ptr %i.d, align 8, !tbaa !36
  %i.v = load ptr, ptr %1, align 8, !tbaa !49     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46

_ZNSt11char_traitsIcE4copyEPcPKcm.exit47:         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !35   ; 2 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  store ptr %i.c, ptr %1, align 8, !tbaa !49
  store ptr %i.d, ptr %0, align 8, !tbaa !49
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  store ptr %i.v, ptr %0, align 8, !tbaa !49
  store ptr %i.c, ptr %1, align 8, !tbaa !49
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !36
  store i64 %i.ac, ptr %i.d, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47
  store i64 %i.u, ptr %i.w, align 8, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !35
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !35
  store i64 %i.ag, ptr %i.ad, align 8, !tbaa !35
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !35
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43, %bb.a, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !35   ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #17
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !75

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #14 ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %cond32 = icmp eq i64 %1, 1
  br i1 %cond32, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.t, align 1, !tbaa !36
  store i8 %i.u, ptr %i.s, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.t, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %3, align 1, !tbaa !36
  store i8 %i.y, ptr %i.x, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !49    ; 3 uses
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !36
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.ac, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.ae = icmp eq ptr %.pre, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.af = load i64, ptr %i.h, align 8, !tbaa !36
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ag) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !49
  store i64 %.0, ptr %i.h, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !35   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !49     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8, !tbaa !36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !76

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.u, align 1, !tbaa !36
  store i8 %i.v, ptr %i.t, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !36
  store i8 %i.w, ptr %i.m, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.i, %bb.h, %bb.j, %bb.k
  store i64 %i.f, ptr %i.a, align 8, !tbaa !35
  %i.x = load ptr, ptr %0, align 8, !tbaa !49
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !36
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZN7rocksdb25DataBlockHashIndexBuilder3AddERKNS_5SliceEm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #2

declare void @_ZN7rocksdb29StripTimestampFromInternalKeyEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceEm(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN7rocksdb14EncodeVarint32EPcj(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZN7rocksdb11DecodeEntryclEPKcS2_PjS3_S3_S3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !36
  %i.b = zext i8 %i.a to i32
  store i32 %i.b, ptr %3, align 4, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !36
  %i.e = zext i8 %i.d to i32
  store i32 %i.e, ptr %4, align 4, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !36
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  store i32 %i.h, ptr %5, align 4, !tbaa !39
  %i.i = load i32, ptr %3, align 4, !tbaa !39
  %i.j = load i32, ptr %4, align 4, !tbaa !39
  %i.k = or i32 %i.i, %i.j
  %i.l = or i32 %i.k, %i.h
  %i.m = icmp ult i32 %i.l, 128
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 3
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.o = icmp ult ptr %1, %2
  br i1 %i.o, label %bb.d, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit

bb.d:                                             ; preds = %bb.c
  %i.p = load i8, ptr %1, align 1, !tbaa !36      ; 2 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread: ; preds = %bb.d
  %i.r = zext nneg i8 %i.p to i32
  store i32 %i.r, ptr %3, align 4, !tbaa !39
  br label %bb.e

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit:        ; preds = %bb.c, %bb.d
  %i.s = tail call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3) ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit39, label %bb.e

bb.e:                                             ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit
  %.1.i41 = phi ptr [ %i.c, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread ], [ %i.s, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit ] ; 4 uses
  %i.u = icmp ult ptr %.1.i41, %2
  br i1 %i.u, label %bb.f, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit33

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %.1.i41, align 1, !tbaa !36 ; 2 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit33.thread, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit33

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit33.thread: ; preds = %bb.f
  %i.x = zext nneg i8 %i.v to i32
  store i32 %i.x, ptr %4, align 4, !tbaa !39
  %i.y = getelementptr inbounds nuw i8, ptr %.1.i41, i64 1
  br label %bb.g

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit33:      ; preds = %bb.e, %bb.f
  %i.z = tail call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %.1.i41, ptr noundef %2, ptr noundef nonnull %4) ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit39, label %bb.g

bb.g:                                             ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit33.thread, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit33
  %.1.i3243 = phi ptr [ %i.y, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit33.thread ], [ %i.z, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit33 ] ; 4 uses
  %i.ab = icmp ult ptr %.1.i3243, %2
  br i1 %i.ab, label %bb.h, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit36

bb.h:                                             ; preds = %bb.g
  %i.ac = load i8, ptr %.1.i3243, align 1, !tbaa !36 ; 2 uses
  %i.ad = icmp sgt i8 %i.ac, -1
  br i1 %i.ad, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit36.thread, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit36

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit36.thread: ; preds = %bb.h
  %i.ae = zext nneg i8 %i.ac to i32
  store i32 %i.ae, ptr %5, align 4, !tbaa !39
  %i.af = getelementptr inbounds nuw i8, ptr %.1.i3243, i64 1
  br label %bb.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit36:      ; preds = %bb.g, %bb.h
  %i.ag = tail call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %.1.i3243, ptr noundef %2, ptr noundef nonnull %5) ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit39, label %bb.i

bb.i:                                             ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit36.thread, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit36, %bb.b
  %.025 = phi ptr [ %i.n, %bb.b ], [ %i.ag, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit36 ], [ %i.af, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit36.thread ] ; 5 uses
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp ult ptr %.025, %2
  br i1 %i.ai, label %bb.k, label %.thread.i37

bb.k:                                             ; preds = %bb.j
  %i.aj = load i8, ptr %.025, align 1, !tbaa !36  ; 2 uses
  %i.ak = icmp sgt i8 %i.aj, -1
  br i1 %i.ak, label %bb.l, label %.thread.i37

bb.l:                                             ; preds = %bb.k
  %i.al = zext nneg i8 %i.aj to i32
  store i32 %i.al, ptr %6, align 4, !tbaa !39
  %i.am = getelementptr inbounds nuw i8, ptr %.025, i64 1
  br label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit39

.thread.i37:                                      ; preds = %bb.k, %bb.j
  %i.an = tail call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %.025, ptr noundef %2, ptr noundef nonnull %6)
  br label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit39

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit39:      ; preds = %.thread.i37, %bb.l, %bb.i, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit36, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit33, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit
  %.0 = phi ptr [ null, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit36 ], [ %.025, %bb.i ], [ null, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit33 ], [ null, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit ], [ %i.an, %.thread.i37 ], [ %i.am, %bb.l ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { inlinehint mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { noreturn "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nobuiltin nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { cold "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 4}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"_ZTSN7rocksdb12BlockBuilderE", !6, i64 0, !11, i64 4, !11, i64 5, !12, i64 8, !11, i64 16, !13, i64 24, !17, i64 56, !12, i64 80, !6, i64 88, !11, i64 92, !11, i64 93, !13, i64 96, !22, i64 128, !23, i64 176, !29, i64 184, !11, i64 192, !13, i64 200}
!11 = !{!"bool", !7, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !12, i64 8, !7, i64 16}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!15 = !{!"p1 omnipotent char", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!"_ZTSSt6vectorIjSaIjEE", !18, i64 0}
!18 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !19, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !20, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!21 = !{!"p1 int", !16, i64 0}
!22 = !{!"_ZTSN7rocksdb25DataBlockHashIndexBuilderE", !23, i64 0, !23, i64 8, !11, i64 16, !24, i64 24}
!23 = !{!"double", !7, i64 0}
!24 = !{!"_ZTSSt6vectorISt4pairIjhESaIS1_EE", !25, i64 0}
!25 = !{!"_ZTSSt12_Vector_baseISt4pairIjhESaIS1_EE", !26, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseISt4pairIjhESaIS1_EE12_Vector_implE", !27, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseISt4pairIjhESaIS1_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!28 = !{!"p1 _ZTSSt4pairIjhE", !16, i64 0}
!29 = !{!"p1 _ZTSN7rocksdb10StatisticsE", !16, i64 0}
!30 = !{!10, !11, i64 4}
!31 = !{!10, !11, i64 5}
!32 = !{!10, !12, i64 8}
!33 = !{!10, !11, i64 16}
!34 = !{!14, !15, i64 0}
!35 = !{!13, !12, i64 8}
!36 = !{!7, !7, i64 0}
!37 = !{!20, !21, i64 0}
!38 = !{!20, !21, i64 16}
!39 = !{!6, !6, i64 0}
!40 = !{!20, !21, i64 8}
!41 = !{!10, !6, i64 88}
!42 = !{!10, !11, i64 92}
!43 = !{!10, !11, i64 93}
!44 = !{!23, !23, i64 0}
!45 = !{!22, !11, i64 16}
!46 = !{!10, !23, i64 176}
!47 = !{!10, !29, i64 184}
!48 = !{!10, !11, i64 192}
!49 = !{!13, !15, i64 0}
!50 = !{!22, !23, i64 0}
!51 = !{!10, !12, i64 80}
!52 = !{i8 0, i8 2}
!53 = !{}
!54 = !{!22, !23, i64 8}
!55 = !{!56, !12, i64 8}
!56 = !{!"_ZTSN7rocksdb5SliceE", !15, i64 0, !12, i64 8}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!60, !11, i64 1}
!60 = !{!"_ZTSN7rocksdb15DataBlockFooterE", !61, i64 0, !11, i64 1, !6, i64 4, !6, i64 8, !11, i64 12}
!61 = !{!"_ZTSN7rocksdb22BlockBasedTableOptions18DataBlockIndexTypeE", !7, i64 0}
!62 = !{!60, !6, i64 8}
!63 = !{!60, !61, i64 0}
!64 = !{!60, !11, i64 12}
!65 = distinct !{!65, !58}
!66 = !{!60, !6, i64 4}
!67 = distinct !{!67, !58}
!68 = distinct !{!68, !58, !69}
!69 = !{!"llvm.loop.peeled.count", i32 1}
!70 = !{!71, !71, i64 0}
!71 = !{!"vtable pointer", !8, i64 0}
!72 = distinct !{null}
!73 = !{!56, !15, i64 0}
!74 = !{!15, !15, i64 0}
!75 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!76 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_2
