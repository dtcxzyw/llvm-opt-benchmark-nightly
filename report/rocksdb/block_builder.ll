inline.NumInlined: 326
inline.NumDeleted: 124
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7rocksdb12BlockBuilder6FinishEv:bb.a
  br label %bb.j

._crit_edge.loopexit:                             ; preds = %_ZN7rocksdb10PutFixed32EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit
  %i.ag = trunc i64 %i.bo to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %.lcssa = phi i32 [ 0, %bb.i ], [ %i.ag, %._crit_edge.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
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
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #16
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i4: ; preds = %bb.j
  %i.az = add nsw i64 %i.aw, 4                    ; 3 uses
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !51  ; 2 uses
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
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !51
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
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !50
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
  %i.ce = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.cf = load i64, ptr %i.f, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
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
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ult i64 %i.j, 9
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o ; 3 uses
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
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
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
  br i1 %.not54.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK7rocksdb5Slice17difference_offsetERKS0_.exit, %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit
  %.01659 = phi i64 [ %i.dr, %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit ], [ 0, %_ZNK7rocksdb5Slice17difference_offsetERKS0_.exit ] ; 6 uses
  %.sroa.11.058 = phi double [ %.sroa.11.1, %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit ], [ 0.000000e+00, %_ZNK7rocksdb5Slice17difference_offsetERKS0_.exit ] ; 2 uses
  %.sroa.8.057 = phi double [ %.sroa.8.1, %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit ], [ 0.000000e+00, %_ZNK7rocksdb5Slice17difference_offsetERKS0_.exit ] ; 3 uses
  %.sroa.030.055 = phi i64 [ %.014.i, %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit ], [ 0, %_ZNK7rocksdb5Slice17difference_offsetERKS0_.exit ]
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
  %spec.select.i = select i1 %i.av, i64 %i.at, i64 %i.ax ; 6 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %spec.select.i, i64 %.0.lcssa.i) ; 4 uses
  %i.ay = sub i64 %spec.select.i, %.sroa.speculated.i ; 3 uses
  %i.az = icmp ugt i64 %i.ay, 7
  br i1 %i.az, label %bb.g, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge
  %.not.not29.i = icmp ugt i64 %spec.select.i, %.0.lcssa.i ; 2 uses
  br i1 %.not.not29.i, label %.lr.ph.i24, label %._crit_edge.i

.lr.ph.i24:                                       ; preds = %.preheader.i
  %i.ba = getelementptr i8, ptr %i.as, i64 %.sroa.speculated.i ; 9 uses
  %i.bb = sub i64 %.sroa.speculated.i, %spec.select.i
  %i.bc = icmp ugt i64 %i.bb, -8
  br i1 %i.bc, label %.epil.preheader, label %.lr.ph.i24.new

bb.g:                                             ; preds = %.critedge
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.speculated.i
  %.0.copyload.i = load i64, ptr %i.bd, align 1
  %i.be = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i)
  br label %_ZN7rocksdb15ReadBe64FromKeyENS_5SliceEbm.exit

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i24.new
  %lcmp.mod.not.not = icmp ugt i64 %spec.select.i, %.0.lcssa.i
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge.i

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i24
  %.028.i.epil.init = phi i64 [ 0, %.lr.ph.i24 ], [ %1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.01327.i.epil.init = phi i64 [ 0, %.lr.ph.i24 ], [ %i.di, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod75 = icmp ugt i64 %spec.select.i, %.0.lcssa.i
  tail call void @llvm.assume(i1 %lcmp.mod75)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.028.i.epil = phi i64 [ %.028.i.epil.init, %.epil.preheader ], [ %i.bk, %bb.h ] ; 2 uses
  %.01327.i.epil = phi i64 [ %.01327.i.epil.init, %.epil.preheader ], [ %i.bj, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bf = shl i64 %.01327.i.epil, 8
  %i.bg = getelementptr i8, ptr %i.ba, i64 %.028.i.epil
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !36
  %i.bi = zext i8 %i.bh to i64
  %i.bj = or disjoint i64 %i.bf, %i.bi            ; 2 uses
  %i.bk = add nuw nsw i64 %.028.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.ay
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.h, !llvm.loop !68

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.h, %.preheader.i
  %.013.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.di, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.bj, %bb.h ]
  %i.bl = shl nuw nsw i64 %i.ay, 3
  %i.bm = sub nuw nsw i64 64, %i.bl
  %i.bn = select i1 %.not.not29.i, i64 %i.bm, i64 0
  %.1.i = shl i64 %.013.lcssa.i, %i.bn
  br label %_ZN7rocksdb15ReadBe64FromKeyENS_5SliceEbm.exit

.lr.ph.i24.new:                                   ; preds = %.lr.ph.i24, %.lr.ph.i24.new
  %.028.i = phi i64 [ %1, %.lr.ph.i24.new ], [ 0, %.lr.ph.i24 ] ; 9 uses
  %.01327.i.a = phi i64 [ %i.di, %.lr.ph.i24.new ], [ 0, %.lr.ph.i24 ]
  %niter = phi i64 [ %niter.next.7, %.lr.ph.i24.new ], [ 0, %.lr.ph.i24 ]
  %i.bo = getelementptr i8, ptr %i.ba, i64 %.028.i
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !36
  %i.bq = zext i8 %i.bp to i64
  %i.br = shl i64 %.01327.i.a, 16
  %i.bs = shl nuw nsw i64 %i.bq, 8
  %i.bt = or disjoint i64 %i.br, %i.bs
  %i.bu = getelementptr i8, ptr %i.ba, i64 %.028.i
  %i.bv = getelementptr i8, ptr %i.bu, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !36
  %i.bx = zext i8 %i.bw to i64
  %i.by = or disjoint i64 %i.bt, %i.bx
  %i.bz = getelementptr i8, ptr %i.ba, i64 %.028.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 2
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !36
  %i.cc = zext i8 %i.cb to i64
  %i.cd = shl i64 %i.by, 16
  %i.ce = shl nuw nsw i64 %i.cc, 8
  %i.cf = or disjoint i64 %i.cd, %i.ce
  %i.cg = getelementptr i8, ptr %i.ba, i64 %.028.i
  %i.ch = getelementptr i8, ptr %i.cg, i64 3
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !36
  %i.cj = zext i8 %i.ci to i64
  %i.ck = or disjoint i64 %i.cf, %i.cj
  %i.cl = getelementptr i8, ptr %i.ba, i64 %.028.i
  %i.cm = getelementptr i8, ptr %i.cl, i64 4
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !36
  %i.co = zext i8 %i.cn to i64
  %i.cp = shl i64 %i.ck, 16
  %i.cq = shl nuw nsw i64 %i.co, 8
  %i.cr = or disjoint i64 %i.cp, %i.cq
  %i.cs = getelementptr i8, ptr %i.ba, i64 %.028.i
  %i.ct = getelementptr i8, ptr %i.cs, i64 5
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !36
  %i.cv = zext i8 %i.cu to i64
  %i.cw = or disjoint i64 %i.cr, %i.cv
  %i.cx = getelementptr i8, ptr %i.ba, i64 %.028.i
  %i.cy = getelementptr i8, ptr %i.cx, i64 6
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !36
  %i.da = zext i8 %i.cz to i64
  %i.db = shl i64 %i.cw, 16
  %i.dc = shl nuw nsw i64 %i.da, 8
  %i.dd = or disjoint i64 %i.db, %i.dc
  %i.de = getelementptr i8, ptr %i.ba, i64 %.028.i
  %i.df = getelementptr i8, ptr %i.de, i64 7
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !36
  %i.dh = zext i8 %i.dg to i64
  %i.di = or disjoint i64 %i.dd, %i.dh            ; 3 uses
  %1 = add nuw nsw i64 %.028.i, 8                 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, 0
  br i1 %niter.ncmp.7, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i24.new, !llvm.loop !70

_ZN7rocksdb15ReadBe64FromKeyENS_5SliceEbm.exit:   ; preds = %bb.g, %._crit_edge.i
  %.014.i = phi i64 [ %i.be, %bb.g ], [ %.1.i, %._crit_edge.i ] ; 2 uses
  %.not.i26 = icmp eq i64 %.01659, 0
  br i1 %.not.i26, label %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit, label %bb.i

bb.i:                                             ; preds = %_ZN7rocksdb15ReadBe64FromKeyENS_5SliceEbm.exit
  %i.dj = sub i64 %.014.i, %.sroa.030.055
  %i.dk = uitofp i64 %i.dj to double              ; 2 uses
  %i.dl = fsub double %i.dk, %.sroa.8.057         ; 2 uses
  %i.dm = uitofp i64 %.01659 to double
  %i.dn = fdiv double %i.dl, %i.dm
  %i.do = fadd double %.sroa.8.057, %i.dn         ; 2 uses
  %i.dp = fsub double %i.dk, %i.do
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.dp, double %.sroa.11.058)
  br label %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit

_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit: ; preds = %_ZN7rocksdb15ReadBe64FromKeyENS_5SliceEbm.exit, %bb.i
  %.sroa.8.1 = phi double [ %.sroa.8.057, %_ZN7rocksdb15ReadBe64FromKeyENS_5SliceEbm.exit ], [ %i.do, %bb.i ] ; 3 uses
  %.sroa.11.1 = phi double [ %.sroa.11.058, %_ZN7rocksdb15ReadBe64FromKeyENS_5SliceEbm.exit ], [ %i.dq, %bb.i ] ; 2 uses
  %i.dr = add nuw i64 %.01659, 1                  ; 2 uses
  %i.ds = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.dt = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = ashr exact i64 %i.dw, 2
  %.not = icmp ult i64 %i.dr, %i.dx
  br i1 %.not, label %.lr.ph, label %.critedge23, !llvm.loop !71

.critedge23:                                      ; preds = %_ZN7rocksdb12_GLOBAL__N_118UniformDataTracker6AddKeyEm.exit
  %i.dy = icmp ugt i64 %.01659, 1
  %i.dz = fcmp ugt double %.sroa.8.1, 0.000000e+00
  %or.cond49 = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %or.cond49, label %_ZNK7rocksdb12_GLOBAL__N_118UniformDataTracker5GetCVEv.exit, label %.thread

_ZNK7rocksdb12_GLOBAL__N_118UniformDataTracker5GetCVEv.exit: ; preds = %.critedge23
  %i.ea = uitofp i64 %.01659 to double
  %i.eb = fdiv double %.sroa.11.1, %i.ea
  %i.ec = tail call double @sqrt(double noundef %i.eb) #15
  %i.ed = fdiv double %i.ec, %.sroa.8.1           ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !47 ; 3 uses
  %i.eg = icmp ne ptr %i.ef, null
  %i.eh = fcmp oge double %i.ed, 0.000000e+00     ; 2 uses
  %or.cond = and i1 %i.eg, %i.eh
  br i1 %or.cond, label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit, label %bb.j

_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit: ; preds = %_ZNK7rocksdb12_GLOBAL__N_118UniformDataTracker5GetCVEv.exit
  %i.ei = fmul nnan double %i.ed, 1.000000e+04
  %i.ej = fptoui double %i.ei to i64
  %i.ek = load ptr, ptr %i.ef, align 8, !tbaa !72
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 216
  %i.em = load ptr, ptr %i.el, align 8
  tail call void %i.em(ptr noundef nonnull align 8 dereferenceable(33) %i.ef, i32 noundef 70, i64 noundef %i.ej), !inline_history !74
  br label %bb.k

bb.j:                                             ; preds = %_ZNK7rocksdb12_GLOBAL__N_118UniformDataTracker5GetCVEv.exit
  br i1 %i.eh, label %bb.k, label %.thread

bb.k:                                             ; preds = %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit, %bb.j
  %i.en = load double, ptr %i.a, align 8, !tbaa !46
  %i.eo = fcmp olt double %i.ed, %i.en
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %_ZNK7rocksdb5Slice17difference_offsetERKS0_.exit, %.critedge23, %bb.d, %bb.j, %bb.k, %bb.a, %bb.b
  %.5 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.d ], [ false, %.critedge23 ], [ %i.eo, %bb.k ], [ false, %bb.j ], [ false, %_ZNK7rocksdb5Slice17difference_offsetERKS0_.exit ], [ false, %.lr.ph ]
  ret i1 %.5
}

declare void @_ZN7rocksdb25DataBlockHashIndexBuilder6FinishERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZNK7rocksdb15DataBlockFooter8EncodeToEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 4 dereferenceable(13), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb12BlockBuilder3AddERKNS_5SliceES3_PS2_b(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  store ptr %i.b, ptr %5, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !35
  store i64 %i.e, ptr %i.c, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !35
  call void @_ZN7rocksdb12BlockBuilder18AddWithLastKeyImplERKNS_5SliceES3_S3_PS2_bm(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %3, i1 noundef zeroext %4, i64 noundef %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i8, ptr %i.h, align 4, !tbaa !30, !range !52, !noundef !53
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !75
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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.e, ptr %9, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !35
  store i8 0, ptr %i.e, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.g, ptr %10, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !35
  store i8 0, ptr %i.g, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.i = load ptr, ptr %1, align 8, !tbaa !75     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !55
  %i.l = and i64 %i.k, 4294967295                 ; 3 uses
  store ptr %i.i, ptr %8, align 8, !tbaa !75
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
  %i.t = load ptr, ptr %9, align 8, !tbaa !51
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
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8, !tbaa !76
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.y = load ptr, ptr %3, align 8, !tbaa !75     ; 3 uses
  %i.z = and i64 %i.w, 4294967295                 ; 3 uses
  store ptr %i.y, ptr %7, align 8, !tbaa !75
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
end_hunk_0
