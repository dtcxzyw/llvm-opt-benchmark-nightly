Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexBinaryHash?download=true
inline.NumInlined: 1323
inline.NumDeleted: 615
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN5faiss11IndexBinary8train_exElPKvNS_11NumericTypeE:bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %4, align 8, !tbaa !31     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn12 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #18
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn11 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn12, %bb.g ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn11

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss15IndexBinaryHash3addElPKh(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, ptr noundef %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, ptr noundef %2, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss11IndexBinary6add_exElPKvNS_11NumericTypeE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator.76", align 1 ; 5 uses
  %i.a = icmp eq i32 %3, 2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef %2)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss11IndexBinary6add_exElPKvNS_11NumericTypeE, ptr noundef nonnull @.str.15, i32 noundef 73)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #30
          to label %bb.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %4, align 8, !tbaa !31     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn12 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #18
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn11 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn12, %bb.g ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn11

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss15IndexBinaryHash12add_with_idsElPKhPKl(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Hashtable<long, std::pair<const long, faiss::IndexBinaryHash::InvertedList>, std::allocator<std::pair<const long, faiss::IndexBinaryHash::InvertedList>>, std::__detail::_Select1st, std::equal_to<long>, std::hash<long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %3, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEEixERS8_.exit, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !36
  %i.j = add nsw i64 %i.i, %1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !36
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEEixERS8_.exit
  %.020 = phi i64 [ 0, %.lr.ph ], [ %i.co, %_ZNSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEEixERS8_.exit ] ; 4 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.020
  %i.l = load i64, ptr %i.k, align 8, !tbaa !37
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.b, align 8, !tbaa !36
  %i.n = add nsw i64 %i.m, %.020
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = phi i64 [ %i.l, %bb.c ], [ %i.n, %bb.d ]
  %i.p = load i32, ptr %i.c, align 4, !tbaa !38
  %i.q = sext i32 %i.p to i64                     ; 3 uses
  %i.r = mul nsw i64 %.020, %i.q
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.r ; 8 uses
  %i.t = load i32, ptr %i.d, align 8, !tbaa !48   ; 5 uses
  %i.u = load i8, ptr %i.s, align 1, !tbaa !32    ; 2 uses
  %.not.i = icmp sgt i32 %i.t, 8
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = zext i8 %i.u to i32
  %notmask30.i = shl nsw i32 -1, %i.t
  %i.w = xor i32 %notmask30.i, -1
  %i.x = and i32 %i.v, %i.w
  %i.y = zext nneg i32 %i.x to i64
  br label %_ZN5faiss15BitstringReader4readEi.exit

bb.g:                                             ; preds = %bb.e
  %i.z = zext i8 %i.u to i64                      ; 3 uses
  %i.aa = add nsw i32 %i.t, -8                    ; 3 uses
  %i.ab = icmp samesign ugt i32 %i.t, 16
  br i1 %i.ab, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.ac = add nsw i32 %i.t, -17                   ; 3 uses
  %i.ad = lshr i32 %i.ac, 3
  %narrow = add nuw nsw i32 %i.ad, 1
  %i.ae = zext nneg i32 %narrow to i64            ; 2 uses
  %xtraiter = and i64 %i.ae, 3                    ; 3 uses
  %i.af = icmp ult i32 %i.ac, 24
  br i1 %i.af, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.ae, 1073741820
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 8, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 2 uses
  %.02435.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %.024.i.3, %.lr.ph.i ] ; 5 uses
  %.02633.i = phi i64 [ %i.z, %.lr.ph.i.preheader.new ], [ %i.ba, %.lr.ph.i ]
  %.02732.i = phi i32 [ %i.aa, %.lr.ph.i.preheader.new ], [ %i.bb, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 %.02435.i
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !32
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 %.02435.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !32
  %i.am = zext i8 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 8
  %i.ao = or disjoint i64 %i.an, %i.ai
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 %.02435.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !32
  %i.as = zext i8 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 16
  %i.au = or disjoint i64 %i.ao, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 %.02435.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !32
  %i.ay = zext i8 %i.ax to i64
  %5 = shl nuw nsw i64 %i.ay, 24
  %6 = or disjoint i64 %i.au, %5
  %i.az = shl i64 %6, %indvars.iv.i
  %i.ba = or i64 %i.az, %.02633.i                 ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 32 ; 2 uses
  %i.bb = add nsw i32 %.02732.i, -32              ; 3 uses
  %.024.i.3 = add nuw nsw i64 %.02435.i, 4        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 8, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.02435.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %.024.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.02633.i.epil.init = phi i64 [ %i.z, %.lr.ph.i.preheader ], [ %i.ba, %._crit_edge.i.loopexit.unr-lcssa ]
  %.02732.i.epil.init = phi i32 [ %i.aa, %.lr.ph.i.preheader ], [ %i.bb, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod46 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.02435.i.epil = phi i64 [ %.024.i.epil, %.lr.ph.i.epil ], [ %.02435.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.02633.i.epil = phi i64 [ %i.bg, %.lr.ph.i.epil ], [ %.02633.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.02732.i.epil = phi i32 [ %i.bh, %.lr.ph.i.epil ], [ %.02732.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 %.02435.i.epil
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !32
  %i.be = zext i8 %i.bd to i64
  %i.bf = shl i64 %i.be, %indvars.iv.i.epil
  %i.bg = or i64 %i.bf, %.02633.i.epil            ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 8
  %i.bh = add nsw i32 %.02732.i.epil, -8          ; 2 uses
  %.024.i.epil = add nuw nsw i64 %.02435.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil, !llvm.loop !146

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i.epil, %._crit_edge.i.loopexit.unr-lcssa
  %.lcssa40 = phi i64 [ %i.ba, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.bg, %.lr.ph.i.epil ]
  %.lcssa = phi i32 [ %i.bb, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.bh, %.lr.ph.i.epil ]
  %i.bi = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.bj = and i64 %i.bi, 2147483640
  %i.bk = add nuw nsw i64 %i.bj, 16
  %i.bl = lshr i64 %i.bi, 3
  %i.bm = add nuw nsw i64 %i.bl, 2
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.g
  %.027.lcssa.i = phi i32 [ %i.aa, %bb.g ], [ %.lcssa, %._crit_edge.i.loopexit ]
  %.026.lcssa.i = phi i64 [ %i.z, %bb.g ], [ %.lcssa40, %._crit_edge.i.loopexit ]
  %.025.lcssa.i = phi i64 [ 8, %bb.g ], [ %i.bk, %._crit_edge.i.loopexit ]
  %.024.lcssa.i = phi i64 [ 1, %bb.g ], [ %i.bm, %._crit_edge.i.loopexit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.s, i64 %.024.lcssa.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !32
  %notmask.i = shl nsw i32 -1, %.027.lcssa.i
  %i.bp = xor i32 %notmask.i, -1
  %i.bq = zext i8 %i.bo to i32
  %i.br = and i32 %i.bq, %i.bp
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl i64 %i.bs, %.025.lcssa.i
  %i.bu = or i64 %i.bt, %.026.lcssa.i
  br label %_ZN5faiss15BitstringReader4readEi.exit

_ZN5faiss15BitstringReader4readEi.exit:           ; preds = %bb.f, %._crit_edge.i
  %.0.i = phi i64 [ %i.y, %bb.f ], [ %i.bu, %._crit_edge.i ] ; 5 uses
  %i.bv = load i64, ptr %i.f, align 8, !tbaa !51  ; 2 uses
  %i.bw = urem i64 %.0.i, %i.bv                   ; 3 uses
  %i.bx = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN5faiss15BitstringReader4readEi.exit
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !54 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !37
  %i.cd = icmp eq i64 %.0.i, %i.cc
  br i1 %i.cd, label %_ZNSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %bb.j
  %i.ce = icmp eq i64 %.0.i, %i.ch
  br i1 %i.ce, label %_ZNSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %bb.i
  %.020.i.i.i.i = phi ptr [ %i.cf, %bb.i ], [ %i.ca, %bb.h ]
  %i.cf = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !54 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !37 ; 2 uses
  %i.ci = urem i64 %i.ch, %i.bv
  %.not19.i.i.i.i = icmp eq i64 %i.ci, %i.bw
  br i1 %.not19.i.i.i.i, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.j
  br label %.loopexit.i.i, !llvm.loop !1

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %_ZN5faiss15BitstringReader4readEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr %i.e, ptr %4, align 8, !tbaa !148
  %i.cj = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #31 ; 5 uses
  store ptr null, ptr %i.cj, align 8, !tbaa !54
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 %.0.i, ptr %i.ck, align 8, !tbaa !69
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cl, i8 0, i64 48, i1 false)
  store ptr %i.cj, ptr %i.g, align 8, !tbaa !70
  %i.cm = invoke ptr @_ZNSt10_HashtableIlSt4pairIKlN5faiss15IndexBinaryHash12InvertedListEESaIS5_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 noundef %i.bw, i64 noundef %.0.i, ptr noundef nonnull %i.cj, i64 noundef 1)
          to label %_ZNSt10_HashtableIlSt4pairIKlN5faiss15IndexBinaryHash12InvertedListEESaIS5_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i unwind label %bb.k

_ZNSt10_HashtableIlSt4pairIKlN5faiss15IndexBinaryHash12InvertedListEESaIS5_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i: ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.pre = load i32, ptr %i.c, align 4, !tbaa !38
  %.pre26 = sext i32 %.pre to i64
  br label %_ZNSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEEixERS8_.exit

bb.k:                                             ; preds = %.loopexit.i.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIlSt4pairIKlN5faiss15IndexBinaryHash12InvertedListEESaIS5_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %i.cn

_ZNSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEEixERS8_.exit: ; preds = %bb.i, %bb.h, %_ZNSt10_HashtableIlSt4pairIKlN5faiss15IndexBinaryHash12InvertedListEESaIS5_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i
  %.pre-phi = phi i64 [ %.pre26, %_ZNSt10_HashtableIlSt4pairIKlN5faiss15IndexBinaryHash12InvertedListEESaIS5_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i ], [ %i.q, %bb.h ], [ %i.q, %bb.i ]
  %.pn.i.i = phi ptr [ %i.cm, %_ZNSt10_HashtableIlSt4pairIKlN5faiss15IndexBinaryHash12InvertedListEESaIS5_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i ], [ %i.ca, %bb.h ], [ %i.cf, %bb.i ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  tail call void @_ZN5faiss15IndexBinaryHash12InvertedList3addElmPKh(ptr noundef nonnull align 8 dereferenceable(48) %.1.i.i, i64 noundef %i.o, i64 noundef %.pre-phi, ptr noundef nonnull %i.s)
  %i.co = add nuw nsw i64 %.020, 1                ; 2 uses
  %exitcond25.not = icmp eq i64 %i.co, %1
  br i1 %exitcond25.not, label %._crit_edge, label %bb.b, !llvm.loop !147
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss11IndexBinary15add_with_ids_exElPKvNS_11NumericTypeEPKl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.76", align 1 ; 5 uses
  %i.a = icmp eq i32 %3, 2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef %2, ptr noundef %4)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss11IndexBinary15add_with_ids_exElPKvNS_11NumericTypeEPKl, ptr noundef nonnull @.str.15, i32 noundef 94)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #30
          to label %bb.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn13 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #18
  br label %bb.h
end_hunk_0
begin_hunk_1_@_ZNK5faiss20IndexBinaryMultiHash12range_searchElPKhiPNS_17RangeSearchResultEPKNS_16SearchParametersE:bb.a
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.t = call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss20IndexBinaryMultiHash12range_searchElPKhiPNS_17RangeSearchResultEPKNS_16SearchParametersE, ptr noundef nonnull @.str.4, i32 noundef 217)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #30
          to label %bb.n unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.t) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.u, %bb.h ]
  %i.v = load ptr, ptr %6, align 8, !tbaa !31     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.j
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.x = load i64, ptr %i.j, align 8, !tbaa !32
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i64 0, ptr %i.e, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store i64 0, ptr %i.f, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  store i64 0, ptr %i.g, align 8, !tbaa !37
  %i.z = icmp sgt i64 %1, 100
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @4, i32 8, ptr nonnull @_ZNK5faiss20IndexBinaryMultiHash12range_searchElPKhiPNS_17RangeSearchResultEPKNS_16SearchParametersE.omp_outlined, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %0, ptr nonnull %i.c, ptr nonnull %i.g, ptr nonnull %i.e, ptr nonnull %i.f)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !37
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void @__kmpc_serialized_parallel(ptr nonnull @4, i32 %i.i)
  store i32 %i.i, ptr %i.h, align 4, !tbaa !77
  call void @_ZNK5faiss20IndexBinaryMultiHash12range_searchElPKhiPNS_17RangeSearchResultEPKNS_16SearchParametersE.omp_outlined(ptr nonnull %i.h, ptr nonnull poison, ptr %i.d, ptr %i.a, ptr %i.b, ptr nonnull %0, ptr %i.c, ptr %i.g, ptr %i.e, ptr %i.f) #18
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @4, i32 %i.i)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aa = phi i64 [ %1, %bb.l ], [ %.pre, %bb.k ]
  %i.ab = load i64, ptr @_ZN5faiss21indexBinaryHash_statsE, align 8, !tbaa !79
  %i.ac = add i64 %i.ab, %i.aa
  store i64 %i.ac, ptr @_ZN5faiss21indexBinaryHash_statsE, align 8, !tbaa !79
  %i.ad = load i64, ptr %i.g, align 8, !tbaa !37
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5faiss21indexBinaryHash_statsE, i64 8), align 8, !tbaa !80
  %i.af = add i64 %i.ae, %i.ad
  store i64 %i.af, ptr getelementptr inbounds nuw (i8, ptr @_ZN5faiss21indexBinaryHash_statsE, i64 8), align 8, !tbaa !80
  %i.ag = load i64, ptr %i.e, align 8, !tbaa !37
  %i.ah = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5faiss21indexBinaryHash_statsE, i64 16), align 8, !tbaa !81
  %i.ai = add i64 %i.ah, %i.ag
  store i64 %i.ai, ptr getelementptr inbounds nuw (i8, ptr @_ZN5faiss21indexBinaryHash_statsE, i64 16), align 8, !tbaa !81
  %i.aj = load i64, ptr %i.f, align 8, !tbaa !37
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5faiss21indexBinaryHash_statsE, i64 24), align 8, !tbaa !82
  %i.al = add i64 %i.ak, %i.aj
  store i64 %i.al, ptr getelementptr inbounds nuw (i8, ptr @_ZN5faiss21indexBinaryHash_statsE, i64 24), align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  ret void

bb.n:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss20IndexBinaryMultiHash5resetEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(84) initializes((16, 24)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(132) %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.f, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !113  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113  ; 2 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt13unordered_mapIlSt6vectorIlSaIlEESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE5clearEv.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZNSt13unordered_mapIlSt6vectorIlSaIlEESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE5clearEv.exit
  %.sroa.04.07 = phi ptr [ %i.z, %_ZNSt13unordered_mapIlSt6vectorIlSaIlEESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE5clearEv.exit ], [ %i.h, %bb.a ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !111  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapIlSt6vectorIlSaIlEESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt6vectorIlSaIlEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.n, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt6vectorIlSaIlEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i ], [ %i.m, %.lr.ph ] ; 4 uses
  %i.n = load ptr, ptr %.06.i.i.i, align 8, !tbaa !54 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !88   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt6vectorIlSaIlEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !89
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #29
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt6vectorIlSaIlEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt6vectorIlSaIlEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 40) #29
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapIlSt6vectorIlSaIlEESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !4

_ZNSt13unordered_mapIlSt6vectorIlSaIlEESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt6vectorIlSaIlEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i, %.lr.ph
  %i.v = load ptr, ptr %.sroa.04.07, align 8, !tbaa !103
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !102
  %i.y = shl i64 %i.x, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.y, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 56 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.j
  br i1 %i.aa, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5faiss28binary_hash_knn_search_fixSLILNS_9SIMDLevelE0EEEvRKNS_15IndexBinaryHashEPKhlPiPlRmS9_S9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %7) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38   ; 4 uses
  %i.c = add i32 %i.b, -4                         ; 2 uses
  %i.d = tail call i32 @llvm.fshl.i32(i32 %i.c, i32 %i.c, i32 30)
  %i.e = sext i32 %i.b to i64                     ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !48   ; 43 uses
  %i.h = load i8, ptr %1, align 1, !tbaa !32      ; 14 uses
  %.not.i.i.i316.i = icmp sgt i32 %i.g, 8         ; 7 uses
  switch i32 %i.d, label %bb.dl [
    i32 0, label %bb.b
    i32 1, label %bb.u
    i32 3, label %bb.an
    i32 4, label %bb.bg
    i32 7, label %bb.bz
    i32 15, label %bb.cs
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i.i316.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = zext i8 %i.h to i32
  %notmask30.i.i.i.i = shl nsw i32 -1, %i.g
  %i.j = xor i32 %notmask30.i.i.i.i, -1
  %i.k = and i32 %i.i, %i.j
  %i.l = zext nneg i32 %i.k to i64
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.m = zext i8 %i.h to i64                      ; 3 uses
  %i.n = add nsw i32 %i.g, -8
  %i.o = icmp samesign ugt i32 %i.g, 16
  br i1 %i.o, label %.lr.ph.i.preheader.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -17                    ; 3 uses
  %i.q = lshr i32 %i.p, 3
  %narrow462 = add nuw nsw i32 %i.q, 1
  %i.r = zext nneg i32 %narrow462 to i64          ; 2 uses
  %xtraiter444 = and i64 %i.r, 3                  ; 3 uses
  %i.s = icmp ult i32 %i.p, 24
  br i1 %i.s, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.preheader.i.i.i.new

.lr.ph.i.preheader.i.i.i.new:                     ; preds = %.lr.ph.i.preheader.i.i.i
  %unroll_iter449 = and i64 %i.r, 1073741820
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.preheader.i.i.i.new
  %indvars.iv.i.i.i.i = phi i64 [ 8, %.lr.ph.i.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph.i.i.i.i ] ; 2 uses
  %.02435.i.i.i.i = phi i64 [ 1, %.lr.ph.i.preheader.i.i.i.new ], [ %.024.i.i.i.i.3, %.lr.ph.i.i.i.i ] ; 5 uses
  %.02633.i.i.i.i = phi i64 [ %i.m, %.lr.ph.i.preheader.i.i.i.new ], [ %i.an, %.lr.ph.i.i.i.i ]
  %niter450 = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i.new ], [ %niter450.next.3, %.lr.ph.i.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !32
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !32
  %i.z = zext i8 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 8
  %i.ab = or disjoint i64 %i.aa, %i.v
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !32
  %i.af = zext i8 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 16
  %i.ah = or disjoint i64 %i.ab, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !32
  %i.al = zext i8 %i.ak to i64
  %8 = shl nuw nsw i64 %i.al, 24
  %9 = or disjoint i64 %i.ah, %8
  %i.am = shl i64 %9, %indvars.iv.i.i.i.i
  %i.an = or i64 %i.am, %.02633.i.i.i.i           ; 3 uses
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 32 ; 2 uses
  %.024.i.i.i.i.3 = add nuw nsw i64 %.02435.i.i.i.i, 4 ; 2 uses
  %niter450.next.3 = add nuw i64 %niter450, 4     ; 2 uses
  %niter450.ncmp.3 = icmp eq i64 %niter450.next.3, %unroll_iter449
  br i1 %niter450.ncmp.3, label %._crit_edge.i.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !0

._crit_edge.i.loopexit.i.i.i.unr-lcssa:           ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod446.not = icmp eq i64 %xtraiter444, 0
  br i1 %lcmp.mod446.not, label %._crit_edge.i.loopexit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %._crit_edge.i.loopexit.i.i.i.unr-lcssa, %.lr.ph.i.preheader.i.i.i
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 8, %.lr.ph.i.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.i.3, %._crit_edge.i.loopexit.i.i.i.unr-lcssa ]
  %.02435.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader.i.i.i ], [ %.024.i.i.i.i.3, %._crit_edge.i.loopexit.i.i.i.unr-lcssa ]
  %.02633.i.i.i.i.epil.init = phi i64 [ %i.m, %.lr.ph.i.preheader.i.i.i ], [ %i.an, %._crit_edge.i.loopexit.i.i.i.unr-lcssa ]
  %lcmp.mod448 = icmp ne i64 %xtraiter444, 0
  tail call void @llvm.assume(i1 %lcmp.mod448)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %indvars.iv.i.i.i.i.epil = phi i64 [ %indvars.iv.next.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil ], [ %indvars.iv.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %.02435.i.i.i.i.epil = phi i64 [ %.024.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil ], [ %.02435.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %.02633.i.i.i.i.epil = phi i64 [ %i.as, %.lr.ph.i.i.i.i.epil ], [ %.02633.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ]
  %epil.iter445 = phi i64 [ %epil.iter445.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i.i.epil
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !32
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl i64 %i.aq, %indvars.iv.i.i.i.i.epil
  %i.as = or i64 %i.ar, %.02633.i.i.i.i.epil      ; 2 uses
  %indvars.iv.next.i.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.i.epil, 8
  %.024.i.i.i.i.epil = add nuw nsw i64 %.02435.i.i.i.i.epil, 1
  %epil.iter445.next = add i64 %epil.iter445, 1   ; 2 uses
  %epil.iter445.cmp.not = icmp eq i64 %epil.iter445.next, %xtraiter444
  br i1 %epil.iter445.cmp.not, label %._crit_edge.i.loopexit.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !157

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.epil, %._crit_edge.i.loopexit.i.i.i.unr-lcssa
  %.lcssa373 = phi i64 [ %i.an, %._crit_edge.i.loopexit.i.i.i.unr-lcssa ], [ %i.as, %.lr.ph.i.i.i.i.epil ]
  %i.at = add nsw i32 %i.g, -16
  %i.au = zext nneg i32 %i.p to i64               ; 2 uses
  %i.av = lshr i64 %i.au, 3                       ; 2 uses
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 3
  %i.ay = sub nsw i32 %i.at, %i.ax
  %i.az = and i64 %i.au, 2147483640
  %i.ba = add nuw nsw i64 %i.az, 16
  %i.bb = add nuw nsw i64 %i.av, 2
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.loopexit.i.i.i, %bb.d
  %.027.lcssa.i.i.i.i = phi i32 [ %i.n, %bb.d ], [ %i.ay, %._crit_edge.i.loopexit.i.i.i ]
  %.026.lcssa.i.i.i.i = phi i64 [ %i.m, %bb.d ], [ %.lcssa373, %._crit_edge.i.loopexit.i.i.i ]
  %.025.lcssa.i.i.i.i = phi i64 [ 8, %bb.d ], [ %i.ba, %._crit_edge.i.loopexit.i.i.i ]
  %.024.lcssa.i.i.i.i = phi i64 [ 1, %bb.d ], [ %i.bb, %._crit_edge.i.loopexit.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %.024.lcssa.i.i.i.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !32
  %notmask.i.i.i.i = shl nsw i32 -1, %.027.lcssa.i.i.i.i
  %i.be = xor i32 %notmask.i.i.i.i, -1
  %i.bf = zext i8 %i.bd to i32
  %i.bg = and i32 %i.bf, %i.be
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl i64 %i.bh, %.025.lcssa.i.i.i.i
  %i.bj = or i64 %i.bi, %.026.lcssa.i.i.i.i
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i.i

_ZN5faiss15BitstringReader4readEi.exit.i.i.i:     ; preds = %._crit_edge.i.i.i.i, %bb.c
  %.0.i.i.i.i = phi i64 [ %i.l, %bb.c ], [ %i.bj, %._crit_edge.i.i.i.i ]
  %i.bk = load i32, ptr %1, align 4, !tbaa !77
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !114
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.br = getelementptr inbounds i8, ptr %3, i64 -4 ; 4 uses
  %i.bs = getelementptr inbounds i8, ptr %4, i64 -8 ; 4 uses
  %i.bt = icmp ult i64 %2, 2
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %2
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i.outer

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i.outer: ; preds = %bb.q, %_ZN5faiss15BitstringReader4readEi.exit.i.i.i
  %.sroa.937.0.i.i.i.ph = phi i64 [ %i.fb, %bb.q ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i.i ]
  %.sroa.12.0.i.i.i.ph = phi i64 [ %i.fe, %bb.q ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i.i ]
  %.sroa.4.0.i.i.i.ph = phi i32 [ %i.ez, %bb.q ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i.i ] ; 2 uses
  %i.bu = load ptr, ptr %i.bo, align 8
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i: ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i.backedge, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i.outer
  %.sroa.12.0.i.i.i = phi i64 [ %.sroa.12.0.i.i.i.ph, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i.outer ], [ %.sroa.12.0.i.i.i.be, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i.backedge ] ; 6 uses
  %i.bv = xor i64 %.sroa.12.0.i.i.i, %.0.i.i.i.i  ; 4 uses
  %i.bw = load i64, ptr %i.bn, align 8, !tbaa !115
  %.not.not.i.i.i.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.not.i.i.i.i.i, label %.preheader.i.i.i, label %bb.f

.preheader.i.i.i:                                 ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i, %bb.e
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i, %bb.e ], [ %i.bq, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !54 ; 4 uses
  %i.bx = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %i.bx, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !37
  %i.ca = icmp eq i64 %i.bv, %i.bz
  br i1 %i.ca, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i.i, label %.preheader.i.i.i, !llvm.loop !5

bb.f:                                             ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i
  %i.cb = load i64, ptr %i.bp, align 8, !tbaa !51 ; 2 uses
  %i.cc = urem i64 %i.bv, %i.cb                   ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !54 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !37
  %i.ci = icmp eq i64 %i.bv, %i.ch
  br i1 %i.ci, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.cj = icmp eq i64 %i.bv, %i.cm
  br i1 %i.cj, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.ck, %bb.h ], [ %i.cf, %bb.g ]
  %i.ck = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !54 ; 4 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not18.i.i.i.i.i.i.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !37 ; 2 uses
  %i.cn = urem i64 %i.cm, %i.cb
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.cn, %i.cc
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.i
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i.i, !llvm.loop !1

_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i.i: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i, %bb.e ], [ %i.cf, %bb.g ], [ %i.ck, %bb.h ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !112 ; 2 uses
  %i.cr = load ptr, ptr %i.co, align 8, !tbaa !88 ; 3 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 3                 ; 2 uses
  %i.cw = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cw, label %bb.j, label %.lr.ph.i.i.i

bb.j:                                             ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i.i
  %i.cx = load i64, ptr %5, align 8, !tbaa !37
  %i.cy = add i64 %i.cx, 1
  store i64 %i.cy, ptr %5, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !86
  br label %bb.k

._crit_edge.i.i.i:                                ; preds = %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i.i
  %i.db = load i64, ptr %7, align 8, !tbaa !37
  %i.dc = add i64 %i.db, %i.cv
  store i64 %i.dc, ptr %7, align 8, !tbaa !37
  %i.dd = load i64, ptr %6, align 8, !tbaa !37
  %i.de = add i64 %i.dd, 1
  store i64 %i.de, ptr %6, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i.i

bb.k:                                             ; preds = %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i.i, %.lr.ph.i.i.i
  %.054.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ew, %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i.i ] ; 2 uses
  %.02853.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i ], [ %i.ev, %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i.i ] ; 2 uses
  %i.df = load i32, ptr %.02853.i.i.i, align 4, !tbaa !77
  %i.dg = xor i32 %i.df, %i.bk
  %i.dh = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.dg) ; 6 uses
  %i.di = uitofp nneg i32 %i.dh to float
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.054.i.i.i
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !37 ; 3 uses
  %i.dl = load i32, ptr %3, align 4, !tbaa !77
  %i.dm = sitofp i32 %i.dl to float
  %i.dn = fcmp olt float %i.di, %i.dm
  br i1 %i.dn, label %bb.l, label %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  br i1 %i.bt, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.l, %bb.o
  %i.do = phi i64 [ %i.er, %bb.o ], [ 3, %bb.l ]
  %i.dp = phi i64 [ %i.eq, %bb.o ], [ 2, %bb.l ]  ; 7 uses
  %.056.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i, %bb.o ], [ 1, %bb.l ] ; 6 uses
  %i.dq = icmp eq i64 %i.dp, %2
  br i1 %i.dq, label %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i.i, label %bb.m

.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !77
  br label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.dp
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !77 ; 4 uses
  %i.dt = getelementptr [4 x i8], ptr %3, i64 %i.dp
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !77 ; 5 uses
  %i.dv = getelementptr [8 x i8], ptr %4, i64 %i.dp
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !37 ; 3 uses
  %i.dx = icmp sgt i32 %i.ds, %i.du
  br i1 %i.dx, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i.i:      ; preds = %bb.m
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.dp
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !37
  %i.ea = icmp eq i32 %i.ds, %i.du
  %i.eb = icmp sgt i64 %i.dz, %i.dw
  %i.ec = and i1 %i.ea, %i.eb
  br i1 %i.ec, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i.i, label %bb.n

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i.i, %bb.m, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i.i
  %i.ed = phi i32 [ %.pre.i.i.i.i.i, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i.i ], [ %i.ds, %bb.m ], [ %i.ds, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i.i ] ; 3 uses
  %i.ee = icmp slt i32 %i.ed, %i.dh
  br i1 %i.ee, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i.i:    ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i.i
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.dp
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !37 ; 2 uses
  %i.eh = icmp eq i32 %i.ed, %i.dh
  %i.ei = icmp sgt i64 %i.dk, %i.eg
  %i.ej = and i1 %i.eh, %i.ei
  br i1 %i.ej, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i.i, label %bb.o

bb.n:                                             ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i.i
  %i.ek = icmp slt i32 %i.du, %i.dh
  br i1 %i.ek, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i.i:    ; preds = %bb.n
  %i.el = icmp eq i32 %i.du, %i.dh
  %i.em = icmp sgt i64 %i.dk, %i.dw
  %i.en = and i1 %i.el, %i.em
  br i1 %i.en, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i.i
  %.sink71.i.i.i.i.i = phi i32 [ %i.ed, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i.i ], [ %i.du, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i.i ]
  %.sink.i.i.i.i.i = phi i64 [ %i.eg, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i.i ], [ %i.dw, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i.i ]
  %.1.i.i.i.i.i = phi i64 [ %i.dp, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i.i ], [ %i.do, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i.i ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.056.i.i.i.i.i
  store i32 %.sink71.i.i.i.i.i, ptr %i.eo, align 4, !tbaa !77
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.056.i.i.i.i.i
  store i64 %.sink.i.i.i.i.i, ptr %i.ep, align 8, !tbaa !37
  %i.eq = shl i64 %.1.i.i.i.i.i, 1                ; 3 uses
  %i.er = or disjoint i64 %i.eq, 1
  %i.es = icmp ugt i64 %i.eq, %2
  br i1 %i.es, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i.i: ; preds = %bb.o, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i.i, %bb.n, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i.i, %bb.l
  %.0.lcssa.i.i.i.i.i = phi i64 [ 1, %bb.l ], [ %.1.i.i.i.i.i, %bb.o ], [ %.056.i.i.i.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i.i ], [ %.056.i.i.i.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i.i ], [ %.056.i.i.i.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i.i ], [ %.056.i.i.i.i.i, %bb.n ] ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.dh, ptr %i.et, align 4, !tbaa !77
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.0.lcssa.i.i.i.i.i
  store i64 %i.dk, ptr %i.eu, align 8, !tbaa !37
  br label %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i.i

_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i.i: ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i.i, %bb.k
  %i.ev = getelementptr inbounds nuw i8, ptr %.02853.i.i.i, i64 %i.e
  %i.ew = add nuw i64 %.054.i.i.i, 1              ; 2 uses
  %exitcond61.not.i.i.i = icmp eq i64 %i.ew, %i.cv
  br i1 %exitcond61.not.i.i.i, label %._crit_edge.i.i.i, label %bb.k, !llvm.loop !158

_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.preheader.i.i.i, %._crit_edge.i.i.i, %bb.j, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %bb.f
  %i.ex = icmp eq i64 %.sroa.12.0.i.i.i, %.sroa.937.0.i.i.i.ph
  br i1 %i.ex, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i.i
  %i.ey = icmp eq i32 %.sroa.4.0.i.i.i.ph, %i.bm
  br i1 %i.ey, label %"_ZN5faiss20with_HammingComputerILNS_9SIMDLevelE0EZNS_28binary_hash_knn_search_fixSLILS1_0EEEvRKNS_15IndexBinaryHashEPKhlPiPlRmSA_SA_E3$_0EEDciOT0_.exit", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ez = add nuw nsw i32 %.sroa.4.0.i.i.i.ph, 1  ; 3 uses
  %i.fa = zext nneg i32 %i.ez to i64
  %notmask.i32.i.i.i = shl nsw i64 -1, %i.fa
  %i.fb = xor i64 %notmask.i32.i.i.i, -1          ; 2 uses
  %i.fc = sub nsw i32 %i.g, %i.ez
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = shl i64 %i.fb, %i.fd
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i.outer, !llvm.loop !159

bb.r:                                             ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i.i
  %i.ff = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.12.0.i.i.i, i1 true) ; 2 uses
  %.not.i30.i.i.i = icmp eq i64 %i.ff, 0
  br i1 %.not.i30.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fg = add nsw i64 %i.ff, -1
  %i.fh = shl nuw i64 3, %i.fg
  %i.fi = xor i64 %i.fh, %.sroa.12.0.i.i.i
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i.backedge

bb.t:                                             ; preds = %bb.r
  %i.fj = xor i64 %.sroa.12.0.i.i.i, -1
  %i.fk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fj, i1 true) ; 3 uses
  %i.fl = shl nsw i64 -1, %i.fk
  %i.fm = and i64 %i.fl, %.sroa.12.0.i.i.i        ; 2 uses
  %i.fn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fm, i1 true)
  %i.fo = shl nuw i64 4, %i.fk
  %i.fp = add i64 %i.fo, -1
  %i.fq = xor i64 %i.fk, -1
  %i.fr = add nsw i64 %i.fn, %i.fq
  %i.fs = and i64 %i.fr, 4294967295
  %i.ft = shl i64 %i.fp, %i.fs
  %i.fu = xor i64 %i.ft, %i.fm
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i.backedge

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i.backedge: ; preds = %bb.t, %bb.s
  %.sroa.12.0.i.i.i.be = phi i64 [ %i.fu, %bb.t ], [ %i.fi, %bb.s ]
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i, !llvm.loop !159

bb.u:                                             ; preds = %bb.a
  br i1 %.not.i.i.i316.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fv = zext i8 %i.h to i32
  %notmask30.i.i.i8.i = shl nsw i32 -1, %i.g
  %i.fw = xor i32 %notmask30.i.i.i8.i, -1
  %i.fx = and i32 %i.fv, %i.fw
  %i.fy = zext nneg i32 %i.fx to i64
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i9.i

bb.w:                                             ; preds = %bb.u
  %i.fz = zext i8 %i.h to i64                     ; 3 uses
  %i.ga = add nsw i32 %i.g, -8
  %i.gb = icmp samesign ugt i32 %i.g, 16
  br i1 %i.gb, label %.lr.ph.i.preheader.i.i60.i, label %._crit_edge.i.i.i54.i

.lr.ph.i.preheader.i.i60.i:                       ; preds = %bb.w
  %i.gc = add nsw i32 %i.g, -17                   ; 3 uses
  %i.gd = lshr i32 %i.gc, 3
  %narrow461 = add nuw nsw i32 %i.gd, 1
  %i.ge = zext nneg i32 %narrow461 to i64         ; 2 uses
  %xtraiter437 = and i64 %i.ge, 3                 ; 3 uses
  %i.gf = icmp ult i32 %i.gc, 24
  br i1 %i.gf, label %.lr.ph.i.i.i62.i.epil.preheader, label %.lr.ph.i.preheader.i.i60.i.new

.lr.ph.i.preheader.i.i60.i.new:                   ; preds = %.lr.ph.i.preheader.i.i60.i
  %unroll_iter442 = and i64 %i.ge, 1073741820
  br label %.lr.ph.i.i.i62.i

.lr.ph.i.i.i62.i:                                 ; preds = %.lr.ph.i.i.i62.i, %.lr.ph.i.preheader.i.i60.i.new
  %indvars.iv.i.i.i63.i = phi i64 [ 8, %.lr.ph.i.preheader.i.i60.i.new ], [ %indvars.iv.next.i.i.i66.i.3, %.lr.ph.i.i.i62.i ] ; 2 uses
  %.02435.i.i.i64.i = phi i64 [ 1, %.lr.ph.i.preheader.i.i60.i.new ], [ %.024.i.i.i67.i.3, %.lr.ph.i.i.i62.i ] ; 5 uses
  %.02633.i.i.i65.i = phi i64 [ %i.fz, %.lr.ph.i.preheader.i.i60.i.new ], [ %i.ha, %.lr.ph.i.i.i62.i ]
  %niter443 = phi i64 [ 0, %.lr.ph.i.preheader.i.i60.i.new ], [ %niter443.next.3, %.lr.ph.i.i.i62.i ]
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i64.i
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !32
  %i.gi = zext i8 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i64.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 1
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !32
  %i.gm = zext i8 %i.gl to i64
  %i.gn = shl nuw nsw i64 %i.gm, 8
  %i.go = or disjoint i64 %i.gn, %i.gi
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i64.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 2
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !32
  %i.gs = zext i8 %i.gr to i64
  %i.gt = shl nuw nsw i64 %i.gs, 16
  %i.gu = or disjoint i64 %i.go, %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i64.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 3
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !32
  %i.gy = zext i8 %i.gx to i64
  %10 = shl nuw nsw i64 %i.gy, 24
  %11 = or disjoint i64 %i.gu, %10
  %i.gz = shl i64 %11, %indvars.iv.i.i.i63.i
  %i.ha = or i64 %i.gz, %.02633.i.i.i65.i         ; 3 uses
  %indvars.iv.next.i.i.i66.i.3 = add nuw nsw i64 %indvars.iv.i.i.i63.i, 32 ; 2 uses
  %.024.i.i.i67.i.3 = add nuw nsw i64 %.02435.i.i.i64.i, 4 ; 2 uses
  %niter443.next.3 = add nuw i64 %niter443, 4     ; 2 uses
  %niter443.ncmp.3 = icmp eq i64 %niter443.next.3, %unroll_iter442
  br i1 %niter443.ncmp.3, label %._crit_edge.i.loopexit.i.i69.i.unr-lcssa, label %.lr.ph.i.i.i62.i, !llvm.loop !0

._crit_edge.i.loopexit.i.i69.i.unr-lcssa:         ; preds = %.lr.ph.i.i.i62.i
  %lcmp.mod439.not = icmp eq i64 %xtraiter437, 0
  br i1 %lcmp.mod439.not, label %._crit_edge.i.loopexit.i.i69.i, label %.lr.ph.i.i.i62.i.epil.preheader

.lr.ph.i.i.i62.i.epil.preheader:                  ; preds = %._crit_edge.i.loopexit.i.i69.i.unr-lcssa, %.lr.ph.i.preheader.i.i60.i
  %indvars.iv.i.i.i63.i.epil.init = phi i64 [ 8, %.lr.ph.i.preheader.i.i60.i ], [ %indvars.iv.next.i.i.i66.i.3, %._crit_edge.i.loopexit.i.i69.i.unr-lcssa ]
  %.02435.i.i.i64.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader.i.i60.i ], [ %.024.i.i.i67.i.3, %._crit_edge.i.loopexit.i.i69.i.unr-lcssa ]
  %.02633.i.i.i65.i.epil.init = phi i64 [ %i.fz, %.lr.ph.i.preheader.i.i60.i ], [ %i.ha, %._crit_edge.i.loopexit.i.i69.i.unr-lcssa ]
  %lcmp.mod441 = icmp ne i64 %xtraiter437, 0
  tail call void @llvm.assume(i1 %lcmp.mod441)
  br label %.lr.ph.i.i.i62.i.epil

.lr.ph.i.i.i62.i.epil:                            ; preds = %.lr.ph.i.i.i62.i.epil, %.lr.ph.i.i.i62.i.epil.preheader
  %indvars.iv.i.i.i63.i.epil = phi i64 [ %indvars.iv.next.i.i.i66.i.epil, %.lr.ph.i.i.i62.i.epil ], [ %indvars.iv.i.i.i63.i.epil.init, %.lr.ph.i.i.i62.i.epil.preheader ] ; 2 uses
  %.02435.i.i.i64.i.epil = phi i64 [ %.024.i.i.i67.i.epil, %.lr.ph.i.i.i62.i.epil ], [ %.02435.i.i.i64.i.epil.init, %.lr.ph.i.i.i62.i.epil.preheader ] ; 2 uses
  %.02633.i.i.i65.i.epil = phi i64 [ %i.hf, %.lr.ph.i.i.i62.i.epil ], [ %.02633.i.i.i65.i.epil.init, %.lr.ph.i.i.i62.i.epil.preheader ]
  %epil.iter438 = phi i64 [ %epil.iter438.next, %.lr.ph.i.i.i62.i.epil ], [ 0, %.lr.ph.i.i.i62.i.epil.preheader ]
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i64.i.epil
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !32
  %i.hd = zext i8 %i.hc to i64
  %i.he = shl i64 %i.hd, %indvars.iv.i.i.i63.i.epil
  %i.hf = or i64 %i.he, %.02633.i.i.i65.i.epil    ; 2 uses
  %indvars.iv.next.i.i.i66.i.epil = add nuw nsw i64 %indvars.iv.i.i.i63.i.epil, 8
  %.024.i.i.i67.i.epil = add nuw nsw i64 %.02435.i.i.i64.i.epil, 1
  %epil.iter438.next = add i64 %epil.iter438, 1   ; 2 uses
  %epil.iter438.cmp.not = icmp eq i64 %epil.iter438.next, %xtraiter437
  br i1 %epil.iter438.cmp.not, label %._crit_edge.i.loopexit.i.i69.i, label %.lr.ph.i.i.i62.i.epil, !llvm.loop !160

._crit_edge.i.loopexit.i.i69.i:                   ; preds = %.lr.ph.i.i.i62.i.epil, %._crit_edge.i.loopexit.i.i69.i.unr-lcssa
  %.lcssa381 = phi i64 [ %i.ha, %._crit_edge.i.loopexit.i.i69.i.unr-lcssa ], [ %i.hf, %.lr.ph.i.i.i62.i.epil ]
  %i.hg = add nsw i32 %i.g, -16
  %i.hh = zext nneg i32 %i.gc to i64              ; 2 uses
  %i.hi = lshr i64 %i.hh, 3                       ; 2 uses
  %i.hj = trunc nuw nsw i64 %i.hi to i32
  %i.hk = shl nuw nsw i32 %i.hj, 3
  %i.hl = sub nsw i32 %i.hg, %i.hk
  %i.hm = and i64 %i.hh, 2147483640
  %i.hn = add nuw nsw i64 %i.hm, 16
  %i.ho = add nuw nsw i64 %i.hi, 2
  br label %._crit_edge.i.i.i54.i

._crit_edge.i.i.i54.i:                            ; preds = %._crit_edge.i.loopexit.i.i69.i, %bb.w
  %.027.lcssa.i.i.i55.i = phi i32 [ %i.ga, %bb.w ], [ %i.hl, %._crit_edge.i.loopexit.i.i69.i ]
  %.026.lcssa.i.i.i56.i = phi i64 [ %i.fz, %bb.w ], [ %.lcssa381, %._crit_edge.i.loopexit.i.i69.i ]
  %.025.lcssa.i.i.i57.i = phi i64 [ 8, %bb.w ], [ %i.hn, %._crit_edge.i.loopexit.i.i69.i ]
  %.024.lcssa.i.i.i58.i = phi i64 [ 1, %bb.w ], [ %i.ho, %._crit_edge.i.loopexit.i.i69.i ]
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 %.024.lcssa.i.i.i58.i
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !32
  %notmask.i.i.i59.i = shl nsw i32 -1, %.027.lcssa.i.i.i55.i
  %i.hr = xor i32 %notmask.i.i.i59.i, -1
  %i.hs = zext i8 %i.hq to i32
  %i.ht = and i32 %i.hs, %i.hr
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = shl i64 %i.hu, %.025.lcssa.i.i.i57.i
  %i.hw = or i64 %i.hv, %.026.lcssa.i.i.i56.i
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i9.i

_ZN5faiss15BitstringReader4readEi.exit.i.i9.i:    ; preds = %._crit_edge.i.i.i54.i, %bb.v
  %.0.i.i.i10.i = phi i64 [ %i.fy, %bb.v ], [ %i.hw, %._crit_edge.i.i.i54.i ]
  %i.hx = load i64, ptr %1, align 8, !tbaa !37
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !114
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ie = getelementptr inbounds i8, ptr %3, i64 -4 ; 4 uses
  %i.if = getelementptr inbounds i8, ptr %4, i64 -8 ; 4 uses
  %i.ig = icmp ult i64 %2, 2
  %.phi.trans.insert.i.i.i.i37.i = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %2
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i.outer

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i.outer: ; preds = %bb.aj, %_ZN5faiss15BitstringReader4readEi.exit.i.i9.i
  %.sroa.937.0.i.i11.i.ph = phi i64 [ %i.lp, %bb.aj ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i9.i ]
  %.sroa.12.0.i.i12.i.ph = phi i64 [ %i.ls, %bb.aj ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i9.i ]
  %.sroa.4.0.i.i13.i.ph = phi i32 [ %i.ln, %bb.aj ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i9.i ] ; 2 uses
  %i.ih = load ptr, ptr %i.ib, align 8
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i: ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i.backedge, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i.outer
  %.sroa.12.0.i.i12.i = phi i64 [ %.sroa.12.0.i.i12.i.ph, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i.outer ], [ %.sroa.12.0.i.i12.i.be, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i.backedge ] ; 6 uses
  %i.ii = xor i64 %.sroa.12.0.i.i12.i, %.0.i.i.i10.i ; 4 uses
  %i.ij = load i64, ptr %i.ia, align 8, !tbaa !115
  %.not.not.i.i.i.i14.i = icmp eq i64 %i.ij, 0
  br i1 %.not.not.i.i.i.i14.i, label %.preheader.i.i51.i, label %bb.y

.preheader.i.i51.i:                               ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i, %bb.x
  %.sroa.06.0.in.i.i.i.i52.i = phi ptr [ %.sroa.06.0.i.i.i.i53.i, %bb.x ], [ %i.id, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i ]
  %.sroa.06.0.i.i.i.i53.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i52.i, align 8, !tbaa !54 ; 4 uses
  %i.ik = icmp eq ptr %.sroa.06.0.i.i.i.i53.i, null
  br i1 %i.ik, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i21.i, label %bb.x

bb.x:                                             ; preds = %.preheader.i.i51.i
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i53.i, i64 8
  %i.im = load i64, ptr %i.il, align 8, !tbaa !37
  %i.in = icmp eq i64 %i.ii, %i.im
  br i1 %i.in, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i28.i, label %.preheader.i.i51.i, !llvm.loop !5

bb.y:                                             ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i
  %i.io = load i64, ptr %i.ic, align 8, !tbaa !51 ; 2 uses
  %i.ip = urem i64 %i.ii, %i.io                   ; 2 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.ip
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i.i.i15.i = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i.i.i.i15.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i21.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !54 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !37
  %i.iv = icmp eq i64 %i.ii, %i.iu
  br i1 %i.iv, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i28.i, label %.lr.ph.i.i.i.i.i.i16.i

bb.aa:                                            ; preds = %bb.ab
  %i.iw = icmp eq i64 %i.ii, %i.iz
  br i1 %i.iw, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i28.i, label %.lr.ph.i.i.i.i.i.i16.i, !llvm.loop !1

.lr.ph.i.i.i.i.i.i16.i:                           ; preds = %bb.z, %bb.aa
  %.020.i.i.i.i.i.i17.i = phi ptr [ %i.ix, %bb.aa ], [ %i.is, %bb.z ]
  %i.ix = load ptr, ptr %.020.i.i.i.i.i.i17.i, align 8, !tbaa !54 ; 4 uses
  %.not18.i.i.i.i.i.i18.i = icmp eq ptr %i.ix, null
  br i1 %.not18.i.i.i.i.i.i18.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i21.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i16.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !37 ; 2 uses
  %i.ja = urem i64 %i.iz, %i.io
  %.not19.i.i.i.i.i.i19.i = icmp eq i64 %i.ja, %i.ip
  br i1 %.not19.i.i.i.i.i.i19.i, label %bb.aa, label %..loopexit_crit_edge21.i.i.i.i.i.i20.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i.i.i20.i:           ; preds = %bb.ab
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i21.i, !llvm.loop !1

_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i28.i: ; preds = %bb.aa, %bb.x, %bb.z
  %.sroa.06.1.i.i.i.i29.i = phi ptr [ %.sroa.06.0.i.i.i.i53.i, %bb.x ], [ %i.is, %bb.z ], [ %i.ix, %bb.aa ] ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i29.i, i64 16
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i29.i, i64 24
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !112 ; 2 uses
  %i.je = load ptr, ptr %i.jb, align 8, !tbaa !88 ; 3 uses
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = ptrtoint ptr %i.je to i64
  %i.jh = sub i64 %i.jf, %i.jg
  %i.ji = ashr exact i64 %i.jh, 3                 ; 2 uses
  %i.jj = icmp eq ptr %i.jd, %i.je
  br i1 %i.jj, label %bb.ac, label %.lr.ph.i.i30.i

bb.ac:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i28.i
  %i.jk = load i64, ptr %5, align 8, !tbaa !37
  %i.jl = add i64 %i.jk, 1
  store i64 %i.jl, ptr %5, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i21.i

.lr.ph.i.i30.i:                                   ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i28.i
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i29.i, i64 40
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !86
  br label %bb.ad

._crit_edge.i.i35.i:                              ; preds = %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i33.i
  %i.jo = load i64, ptr %7, align 8, !tbaa !37
  %i.jp = add i64 %i.jo, %i.ji
  store i64 %i.jp, ptr %7, align 8, !tbaa !37
  %i.jq = load i64, ptr %6, align 8, !tbaa !37
  %i.jr = add i64 %i.jq, 1
  store i64 %i.jr, ptr %6, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i21.i

bb.ad:                                            ; preds = %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i33.i, %.lr.ph.i.i30.i
  %.054.i.i31.i = phi i64 [ 0, %.lr.ph.i.i30.i ], [ %i.lk, %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i33.i ] ; 2 uses
  %.02853.i.i32.i = phi ptr [ %i.jn, %.lr.ph.i.i30.i ], [ %i.lj, %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i33.i ] ; 2 uses
  %i.js = load i64, ptr %.02853.i.i32.i, align 8, !tbaa !37
  %i.jt = xor i64 %i.js, %i.hx
  %i.ju = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jt)
  %i.jv = trunc nuw nsw i64 %i.ju to i32          ; 6 uses
  %i.jw = uitofp nneg i32 %i.jv to float
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %.054.i.i31.i
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !37 ; 3 uses
  %i.jz = load i32, ptr %3, align 4, !tbaa !77
  %i.ka = sitofp i32 %i.jz to float
  %i.kb = fcmp olt float %i.jw, %i.ka
  br i1 %i.kb, label %bb.ae, label %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i33.i

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.ig, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i45.i, label %.lr.ph.i.i.i.i38.i

.lr.ph.i.i.i.i38.i:                               ; preds = %bb.ae, %bb.ah
  %i.kc = phi i64 [ %i.lf, %bb.ah ], [ 3, %bb.ae ]
  %i.kd = phi i64 [ %i.le, %bb.ah ], [ 2, %bb.ae ] ; 7 uses
  %.056.i.i.i.i39.i = phi i64 [ %.1.i.i.i.i44.i, %bb.ah ], [ 1, %bb.ae ] ; 6 uses
  %i.ke = icmp eq i64 %i.kd, %2
  br i1 %i.ke, label %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i49.i, label %bb.af

.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i49.i: ; preds = %.lr.ph.i.i.i.i38.i
  %.pre.i.i.i.i50.i = load i32, ptr %.phi.trans.insert.i.i.i.i37.i, align 4, !tbaa !77
  br label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i47.i

bb.af:                                            ; preds = %.lr.ph.i.i.i.i38.i
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.kd
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !77 ; 4 uses
  %i.kh = getelementptr [4 x i8], ptr %3, i64 %i.kd
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !77 ; 5 uses
  %i.kj = getelementptr [8 x i8], ptr %4, i64 %i.kd
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !37 ; 3 uses
  %i.kl = icmp sgt i32 %i.kg, %i.ki
  br i1 %i.kl, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i47.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i40.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i40.i:    ; preds = %bb.af
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.kd
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !37
  %i.ko = icmp eq i32 %i.kg, %i.ki
  %i.kp = icmp sgt i64 %i.kn, %i.kk
  %i.kq = and i1 %i.ko, %i.kp
  br i1 %i.kq, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i47.i, label %bb.ag

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i47.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i40.i, %bb.af, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i49.i
  %i.kr = phi i32 [ %.pre.i.i.i.i50.i, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i49.i ], [ %i.kg, %bb.af ], [ %i.kg, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i40.i ] ; 3 uses
  %i.ks = icmp slt i32 %i.kr, %i.jv
  br i1 %i.ks, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i45.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i48.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i48.i:  ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i47.i
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.kd
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !37 ; 2 uses
  %i.kv = icmp eq i32 %i.kr, %i.jv
  %i.kw = icmp sgt i64 %i.jy, %i.ku
  %i.kx = and i1 %i.kv, %i.kw
  br i1 %i.kx, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i45.i, label %bb.ah

bb.ag:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i40.i
  %i.ky = icmp slt i32 %i.ki, %i.jv
  br i1 %i.ky, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i45.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i41.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i41.i:  ; preds = %bb.ag
  %i.kz = icmp eq i32 %i.ki, %i.jv
  %i.la = icmp sgt i64 %i.jy, %i.kk
  %i.lb = and i1 %i.kz, %i.la
  br i1 %i.lb, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i45.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i41.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i48.i
  %.sink71.i.i.i.i42.i = phi i32 [ %i.kr, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i48.i ], [ %i.ki, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i41.i ]
  %.sink.i.i.i.i43.i = phi i64 [ %i.ku, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i48.i ], [ %i.kk, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i41.i ]
  %.1.i.i.i.i44.i = phi i64 [ %i.kd, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i48.i ], [ %i.kc, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i41.i ] ; 3 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %.056.i.i.i.i39.i
  store i32 %.sink71.i.i.i.i42.i, ptr %i.lc, align 4, !tbaa !77
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %.056.i.i.i.i39.i
  store i64 %.sink.i.i.i.i43.i, ptr %i.ld, align 8, !tbaa !37
  %i.le = shl i64 %.1.i.i.i.i44.i, 1              ; 3 uses
  %i.lf = or disjoint i64 %i.le, 1
  %i.lg = icmp ugt i64 %i.le, %2
  br i1 %i.lg, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i45.i, label %.lr.ph.i.i.i.i38.i, !llvm.loop !6

_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i45.i: ; preds = %bb.ah, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i41.i, %bb.ag, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i48.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i47.i, %bb.ae
  %.0.lcssa.i.i.i.i46.i = phi i64 [ 1, %bb.ae ], [ %.1.i.i.i.i44.i, %bb.ah ], [ %.056.i.i.i.i39.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i48.i ], [ %.056.i.i.i.i39.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i41.i ], [ %.056.i.i.i.i39.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i47.i ], [ %.056.i.i.i.i39.i, %bb.ag ] ; 2 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %.0.lcssa.i.i.i.i46.i
  store i32 %i.jv, ptr %i.lh, align 4, !tbaa !77
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %.0.lcssa.i.i.i.i46.i
  store i64 %i.jy, ptr %i.li, align 8, !tbaa !37
  br label %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i33.i

_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i33.i: ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i45.i, %bb.ad
  %i.lj = getelementptr inbounds nuw i8, ptr %.02853.i.i32.i, i64 %i.e
  %i.lk = add nuw i64 %.054.i.i31.i, 1            ; 2 uses
  %exitcond61.not.i.i34.i = icmp eq i64 %i.lk, %i.ji
  br i1 %exitcond61.not.i.i34.i, label %._crit_edge.i.i35.i, label %bb.ad, !llvm.loop !161

_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i21.i: ; preds = %.lr.ph.i.i.i.i.i.i16.i, %.preheader.i.i51.i, %._crit_edge.i.i35.i, %bb.ac, %..loopexit_crit_edge21.i.i.i.i.i.i20.i, %bb.y
  %i.ll = icmp eq i64 %.sroa.12.0.i.i12.i, %.sroa.937.0.i.i11.i.ph
  br i1 %i.ll, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i21.i
  %i.lm = icmp eq i32 %.sroa.4.0.i.i13.i.ph, %i.hz
  br i1 %i.lm, label %"_ZN5faiss20with_HammingComputerILNS_9SIMDLevelE0EZNS_28binary_hash_knn_search_fixSLILS1_0EEEvRKNS_15IndexBinaryHashEPKhlPiPlRmSA_SA_E3$_0EEDciOT0_.exit", label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ln = add nuw nsw i32 %.sroa.4.0.i.i13.i.ph, 1 ; 3 uses
  %i.lo = zext nneg i32 %i.ln to i64
  %notmask.i32.i.i27.i = shl nsw i64 -1, %i.lo
  %i.lp = xor i64 %notmask.i32.i.i27.i, -1        ; 2 uses
  %i.lq = sub nsw i32 %i.g, %i.ln
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = shl i64 %i.lp, %i.lr
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i.outer, !llvm.loop !162

bb.ak:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i21.i
  %i.lt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.12.0.i.i12.i, i1 true) ; 2 uses
  %.not.i30.i.i22.i = icmp eq i64 %i.lt, 0
  br i1 %.not.i30.i.i22.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.lu = add nsw i64 %i.lt, -1
  %i.lv = shl nuw i64 3, %i.lu
  %i.lw = xor i64 %i.lv, %.sroa.12.0.i.i12.i
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i.backedge

bb.am:                                            ; preds = %bb.ak
  %i.lx = xor i64 %.sroa.12.0.i.i12.i, -1
  %i.ly = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lx, i1 true) ; 3 uses
  %i.lz = shl nsw i64 -1, %i.ly
  %i.ma = and i64 %i.lz, %.sroa.12.0.i.i12.i      ; 2 uses
  %i.mb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ma, i1 true)
  %i.mc = shl nuw i64 4, %i.ly
  %i.md = add i64 %i.mc, -1
  %i.me = xor i64 %i.ly, -1
  %i.mf = add nsw i64 %i.mb, %i.me
  %i.mg = and i64 %i.mf, 4294967295
  %i.mh = shl i64 %i.md, %i.mg
  %i.mi = xor i64 %i.mh, %i.ma
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i.backedge

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i.backedge: ; preds = %bb.am, %bb.al
  %.sroa.12.0.i.i12.i.be = phi i64 [ %i.mi, %bb.am ], [ %i.lw, %bb.al ]
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i, !llvm.loop !162

bb.an:                                            ; preds = %bb.a
  br i1 %.not.i.i.i316.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.mj = zext i8 %i.h to i32
  %notmask30.i.i.i71.i = shl nsw i32 -1, %i.g
  %i.mk = xor i32 %notmask30.i.i.i71.i, -1
  %i.ml = and i32 %i.mj, %i.mk
  %i.mm = zext nneg i32 %i.ml to i64
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i72.i

bb.ap:                                            ; preds = %bb.an
  %i.mn = zext i8 %i.h to i64                     ; 3 uses
  %i.mo = add nsw i32 %i.g, -8
  %i.mp = icmp samesign ugt i32 %i.g, 16
  br i1 %i.mp, label %.lr.ph.i.preheader.i.i120.i, label %._crit_edge.i.i.i114.i

.lr.ph.i.preheader.i.i120.i:                      ; preds = %bb.ap
  %i.mq = add nsw i32 %i.g, -17                   ; 3 uses
  %i.mr = lshr i32 %i.mq, 3
  %narrow460 = add nuw nsw i32 %i.mr, 1
  %i.ms = zext nneg i32 %narrow460 to i64         ; 2 uses
  %xtraiter430 = and i64 %i.ms, 3                 ; 3 uses
  %i.mt = icmp ult i32 %i.mq, 24
  br i1 %i.mt, label %.lr.ph.i.i.i122.i.epil.preheader, label %.lr.ph.i.preheader.i.i120.i.new

.lr.ph.i.preheader.i.i120.i.new:                  ; preds = %.lr.ph.i.preheader.i.i120.i
  %unroll_iter435 = and i64 %i.ms, 1073741820
  br label %.lr.ph.i.i.i122.i

.lr.ph.i.i.i122.i:                                ; preds = %.lr.ph.i.i.i122.i, %.lr.ph.i.preheader.i.i120.i.new
  %indvars.iv.i.i.i123.i = phi i64 [ 8, %.lr.ph.i.preheader.i.i120.i.new ], [ %indvars.iv.next.i.i.i126.i.3, %.lr.ph.i.i.i122.i ] ; 2 uses
  %.02435.i.i.i124.i = phi i64 [ 1, %.lr.ph.i.preheader.i.i120.i.new ], [ %.024.i.i.i127.i.3, %.lr.ph.i.i.i122.i ] ; 5 uses
  %.02633.i.i.i125.i = phi i64 [ %i.mn, %.lr.ph.i.preheader.i.i120.i.new ], [ %i.no, %.lr.ph.i.i.i122.i ]
  %niter436 = phi i64 [ 0, %.lr.ph.i.preheader.i.i120.i.new ], [ %niter436.next.3, %.lr.ph.i.i.i122.i ]
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i124.i
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !32
  %i.mw = zext i8 %i.mv to i64
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i124.i
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 1
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !32
  %i.na = zext i8 %i.mz to i64
  %i.nb = shl nuw nsw i64 %i.na, 8
  %i.nc = or disjoint i64 %i.nb, %i.mw
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i124.i
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 2
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !32
  %i.ng = zext i8 %i.nf to i64
  %i.nh = shl nuw nsw i64 %i.ng, 16
  %i.ni = or disjoint i64 %i.nc, %i.nh
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i124.i
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 3
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !32
  %i.nm = zext i8 %i.nl to i64
  %12 = shl nuw nsw i64 %i.nm, 24
  %13 = or disjoint i64 %i.ni, %12
  %i.nn = shl i64 %13, %indvars.iv.i.i.i123.i
  %i.no = or i64 %i.nn, %.02633.i.i.i125.i        ; 3 uses
  %indvars.iv.next.i.i.i126.i.3 = add nuw nsw i64 %indvars.iv.i.i.i123.i, 32 ; 2 uses
  %.024.i.i.i127.i.3 = add nuw nsw i64 %.02435.i.i.i124.i, 4 ; 2 uses
  %niter436.next.3 = add nuw i64 %niter436, 4     ; 2 uses
  %niter436.ncmp.3 = icmp eq i64 %niter436.next.3, %unroll_iter435
  br i1 %niter436.ncmp.3, label %._crit_edge.i.loopexit.i.i129.i.unr-lcssa, label %.lr.ph.i.i.i122.i, !llvm.loop !0

._crit_edge.i.loopexit.i.i129.i.unr-lcssa:        ; preds = %.lr.ph.i.i.i122.i
  %lcmp.mod432.not = icmp eq i64 %xtraiter430, 0
  br i1 %lcmp.mod432.not, label %._crit_edge.i.loopexit.i.i129.i, label %.lr.ph.i.i.i122.i.epil.preheader

.lr.ph.i.i.i122.i.epil.preheader:                 ; preds = %._crit_edge.i.loopexit.i.i129.i.unr-lcssa, %.lr.ph.i.preheader.i.i120.i
  %indvars.iv.i.i.i123.i.epil.init = phi i64 [ 8, %.lr.ph.i.preheader.i.i120.i ], [ %indvars.iv.next.i.i.i126.i.3, %._crit_edge.i.loopexit.i.i129.i.unr-lcssa ]
  %.02435.i.i.i124.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader.i.i120.i ], [ %.024.i.i.i127.i.3, %._crit_edge.i.loopexit.i.i129.i.unr-lcssa ]
  %.02633.i.i.i125.i.epil.init = phi i64 [ %i.mn, %.lr.ph.i.preheader.i.i120.i ], [ %i.no, %._crit_edge.i.loopexit.i.i129.i.unr-lcssa ]
  %lcmp.mod434 = icmp ne i64 %xtraiter430, 0
  tail call void @llvm.assume(i1 %lcmp.mod434)
  br label %.lr.ph.i.i.i122.i.epil

.lr.ph.i.i.i122.i.epil:                           ; preds = %.lr.ph.i.i.i122.i.epil, %.lr.ph.i.i.i122.i.epil.preheader
  %indvars.iv.i.i.i123.i.epil = phi i64 [ %indvars.iv.next.i.i.i126.i.epil, %.lr.ph.i.i.i122.i.epil ], [ %indvars.iv.i.i.i123.i.epil.init, %.lr.ph.i.i.i122.i.epil.preheader ] ; 2 uses
  %.02435.i.i.i124.i.epil = phi i64 [ %.024.i.i.i127.i.epil, %.lr.ph.i.i.i122.i.epil ], [ %.02435.i.i.i124.i.epil.init, %.lr.ph.i.i.i122.i.epil.preheader ] ; 2 uses
  %.02633.i.i.i125.i.epil = phi i64 [ %i.nt, %.lr.ph.i.i.i122.i.epil ], [ %.02633.i.i.i125.i.epil.init, %.lr.ph.i.i.i122.i.epil.preheader ]
  %epil.iter431 = phi i64 [ %epil.iter431.next, %.lr.ph.i.i.i122.i.epil ], [ 0, %.lr.ph.i.i.i122.i.epil.preheader ]
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i124.i.epil
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !32
  %i.nr = zext i8 %i.nq to i64
  %i.ns = shl i64 %i.nr, %indvars.iv.i.i.i123.i.epil
  %i.nt = or i64 %i.ns, %.02633.i.i.i125.i.epil   ; 2 uses
  %indvars.iv.next.i.i.i126.i.epil = add nuw nsw i64 %indvars.iv.i.i.i123.i.epil, 8
  %.024.i.i.i127.i.epil = add nuw nsw i64 %.02435.i.i.i124.i.epil, 1
  %epil.iter431.next = add i64 %epil.iter431, 1   ; 2 uses
  %epil.iter431.cmp.not = icmp eq i64 %epil.iter431.next, %xtraiter430
  br i1 %epil.iter431.cmp.not, label %._crit_edge.i.loopexit.i.i129.i, label %.lr.ph.i.i.i122.i.epil, !llvm.loop !163

._crit_edge.i.loopexit.i.i129.i:                  ; preds = %.lr.ph.i.i.i122.i.epil, %._crit_edge.i.loopexit.i.i129.i.unr-lcssa
  %.lcssa389 = phi i64 [ %i.no, %._crit_edge.i.loopexit.i.i129.i.unr-lcssa ], [ %i.nt, %.lr.ph.i.i.i122.i.epil ]
  %i.nu = add nsw i32 %i.g, -16
  %i.nv = zext nneg i32 %i.mq to i64              ; 2 uses
  %i.nw = lshr i64 %i.nv, 3                       ; 2 uses
  %i.nx = trunc nuw nsw i64 %i.nw to i32
  %i.ny = shl nuw nsw i32 %i.nx, 3
  %i.nz = sub nsw i32 %i.nu, %i.ny
  %i.oa = and i64 %i.nv, 2147483640
  %i.ob = add nuw nsw i64 %i.oa, 16
  %i.oc = add nuw nsw i64 %i.nw, 2
  br label %._crit_edge.i.i.i114.i

._crit_edge.i.i.i114.i:                           ; preds = %._crit_edge.i.loopexit.i.i129.i, %bb.ap
  %.027.lcssa.i.i.i115.i = phi i32 [ %i.mo, %bb.ap ], [ %i.nz, %._crit_edge.i.loopexit.i.i129.i ]
  %.026.lcssa.i.i.i116.i = phi i64 [ %i.mn, %bb.ap ], [ %.lcssa389, %._crit_edge.i.loopexit.i.i129.i ]
  %.025.lcssa.i.i.i117.i = phi i64 [ 8, %bb.ap ], [ %i.ob, %._crit_edge.i.loopexit.i.i129.i ]
  %.024.lcssa.i.i.i118.i = phi i64 [ 1, %bb.ap ], [ %i.oc, %._crit_edge.i.loopexit.i.i129.i ]
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 %.024.lcssa.i.i.i118.i
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !32
  %notmask.i.i.i119.i = shl nsw i32 -1, %.027.lcssa.i.i.i115.i
  %i.of = xor i32 %notmask.i.i.i119.i, -1
  %i.og = zext i8 %i.oe to i32
  %i.oh = and i32 %i.og, %i.of
  %i.oi = zext nneg i32 %i.oh to i64
  %i.oj = shl i64 %i.oi, %.025.lcssa.i.i.i117.i
  %i.ok = or i64 %i.oj, %.026.lcssa.i.i.i116.i
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i72.i

_ZN5faiss15BitstringReader4readEi.exit.i.i72.i:   ; preds = %._crit_edge.i.i.i114.i, %bb.ao
  %.0.i.i.i73.i = phi i64 [ %i.mm, %bb.ao ], [ %i.ok, %._crit_edge.i.i.i114.i ]
  %i.ol = load <2 x i64>, ptr %1, align 8, !tbaa !37
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.on = load i32, ptr %i.om, align 4, !tbaa !114
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.os = getelementptr inbounds i8, ptr %3, i64 -4 ; 4 uses
  %i.ot = getelementptr inbounds i8, ptr %4, i64 -8 ; 4 uses
  %i.ou = icmp ult i64 %2, 2
  %.phi.trans.insert.i.i.i.i97.i = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %2
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i86.i.outer

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i86.i.outer: ; preds = %bb.bc, %_ZN5faiss15BitstringReader4readEi.exit.i.i72.i
  %.sroa.937.0.i.i74.i.ph = phi i64 [ %i.se, %bb.bc ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i72.i ]
  %.sroa.12.0.i.i75.i.ph = phi i64 [ %i.sh, %bb.bc ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i72.i ]
  %.sroa.4.0.i.i76.i.ph = phi i32 [ %i.sc, %bb.bc ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i72.i ] ; 2 uses
  %i.ov = load ptr, ptr %i.op, align 8
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i86.i

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i86.i: ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i86.i.backedge, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i86.i.outer
  %.sroa.12.0.i.i75.i = phi i64 [ %.sroa.12.0.i.i75.i.ph, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i86.i.outer ], [ %.sroa.12.0.i.i75.i.be, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i86.i.backedge ] ; 6 uses
  %i.ow = xor i64 %.sroa.12.0.i.i75.i, %.0.i.i.i73.i ; 4 uses
  %i.ox = load i64, ptr %i.oo, align 8, !tbaa !115
  %.not.not.i.i.i.i77.i = icmp eq i64 %i.ox, 0
  br i1 %.not.not.i.i.i.i77.i, label %.preheader.i.i111.i, label %bb.ar

.preheader.i.i111.i:                              ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i86.i, %bb.aq
  %.sroa.06.0.in.i.i.i.i112.i = phi ptr [ %.sroa.06.0.i.i.i.i113.i, %bb.aq ], [ %i.or, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i86.i ]
  %.sroa.06.0.i.i.i.i113.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i112.i, align 8, !tbaa !54 ; 4 uses
  %i.oy = icmp eq ptr %.sroa.06.0.i.i.i.i113.i, null
  br i1 %i.oy, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i84.i, label %bb.aq

bb.aq:                                            ; preds = %.preheader.i.i111.i
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i113.i, i64 8
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !37
  %i.pb = icmp eq i64 %i.ow, %i.pa
  br i1 %i.pb, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i91.i, label %.preheader.i.i111.i, !llvm.loop !5

bb.ar:                                            ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i86.i
  %i.pc = load i64, ptr %i.oq, align 8, !tbaa !51 ; 2 uses
  %i.pd = urem i64 %i.ow, %i.pc                   ; 2 uses
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.ov, i64 %i.pd
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i.i.i78.i = icmp eq ptr %i.pf, null
  br i1 %.not.i.i.i.i.i.i78.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i84.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !54 ; 3 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !37
  %i.pj = icmp eq i64 %i.ow, %i.pi
  br i1 %i.pj, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i91.i, label %.lr.ph.i.i.i.i.i.i79.i

bb.at:                                            ; preds = %bb.au
  %i.pk = icmp eq i64 %i.ow, %i.pn
  br i1 %i.pk, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i91.i, label %.lr.ph.i.i.i.i.i.i79.i, !llvm.loop !1

.lr.ph.i.i.i.i.i.i79.i:                           ; preds = %bb.as, %bb.at
  %.020.i.i.i.i.i.i80.i = phi ptr [ %i.pl, %bb.at ], [ %i.pg, %bb.as ]
  %i.pl = load ptr, ptr %.020.i.i.i.i.i.i80.i, align 8, !tbaa !54 ; 4 uses
  %.not18.i.i.i.i.i.i81.i = icmp eq ptr %i.pl, null
  br i1 %.not18.i.i.i.i.i.i81.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i84.i, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i.i.i.i.i79.i
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !37 ; 2 uses
  %i.po = urem i64 %i.pn, %i.pc
  %.not19.i.i.i.i.i.i82.i = icmp eq i64 %i.po, %i.pd
  br i1 %.not19.i.i.i.i.i.i82.i, label %bb.at, label %..loopexit_crit_edge21.i.i.i.i.i.i83.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i.i.i83.i:           ; preds = %bb.au
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i84.i, !llvm.loop !1

_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i91.i: ; preds = %bb.at, %bb.aq, %bb.as
  %.sroa.06.1.i.i.i.i92.i = phi ptr [ %.sroa.06.0.i.i.i.i113.i, %bb.aq ], [ %i.pg, %bb.as ], [ %i.pl, %bb.at ] ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i92.i, i64 16
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i92.i, i64 24
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !112 ; 2 uses
  %i.ps = load ptr, ptr %i.pp, align 8, !tbaa !88 ; 3 uses
  %i.pt = ptrtoint ptr %i.pr to i64
  %i.pu = ptrtoint ptr %i.ps to i64
  %i.pv = sub i64 %i.pt, %i.pu
  %i.pw = ashr exact i64 %i.pv, 3                 ; 2 uses
  %i.px = icmp eq ptr %i.pr, %i.ps
  br i1 %i.px, label %bb.av, label %.lr.ph.i.i93.i

bb.av:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i91.i
  %i.py = load i64, ptr %5, align 8, !tbaa !37
  %i.pz = add i64 %i.py, 1
  store i64 %i.pz, ptr %5, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i84.i

.lr.ph.i.i93.i:                                   ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i91.i
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i92.i, i64 40
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !86
  br label %bb.aw

._crit_edge.i.i95.i:                              ; preds = %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i94.i
  %i.qc = load i64, ptr %7, align 8, !tbaa !37
  %i.qd = add i64 %i.qc, %i.pw
  store i64 %i.qd, ptr %7, align 8, !tbaa !37
  %i.qe = load i64, ptr %6, align 8, !tbaa !37
  %i.qf = add i64 %i.qe, 1
  store i64 %i.qf, ptr %6, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i84.i

bb.aw:                                            ; preds = %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i94.i, %.lr.ph.i.i93.i
  %.055.i.i.i = phi i64 [ 0, %.lr.ph.i.i93.i ], [ %i.rz, %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i94.i ] ; 2 uses
  %.02854.i.i.i = phi ptr [ %i.qb, %.lr.ph.i.i93.i ], [ %i.ry, %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i94.i ] ; 2 uses
  %i.qg = load <2 x i64>, ptr %.02854.i.i.i, align 8, !tbaa !37
  %i.qh = xor <2 x i64> %i.qg, %i.ol
  %i.qi = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.qh)
  %i.qj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.qi)
  %i.qk = trunc nuw nsw i64 %i.qj to i32          ; 6 uses
  %i.ql = uitofp nneg i32 %i.qk to float
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %.055.i.i.i
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !37 ; 3 uses
  %i.qo = load i32, ptr %3, align 4, !tbaa !77
  %i.qp = sitofp i32 %i.qo to float
  %i.qq = fcmp olt float %i.ql, %i.qp
  br i1 %i.qq, label %bb.ax, label %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i94.i

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.ou, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i105.i, label %.lr.ph.i.i.i.i98.i

.lr.ph.i.i.i.i98.i:                               ; preds = %bb.ax, %bb.ba
  %i.qr = phi i64 [ %i.ru, %bb.ba ], [ 3, %bb.ax ]
  %i.qs = phi i64 [ %i.rt, %bb.ba ], [ 2, %bb.ax ] ; 7 uses
  %.056.i.i.i.i99.i = phi i64 [ %.1.i.i.i.i104.i, %bb.ba ], [ 1, %bb.ax ] ; 6 uses
  %i.qt = icmp eq i64 %i.qs, %2
  br i1 %i.qt, label %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i109.i, label %bb.ay

.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i109.i: ; preds = %.lr.ph.i.i.i.i98.i
  %.pre.i.i.i.i110.i = load i32, ptr %.phi.trans.insert.i.i.i.i97.i, align 4, !tbaa !77
  br label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i107.i

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i98.i
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %i.qs
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !77 ; 4 uses
  %i.qw = getelementptr [4 x i8], ptr %3, i64 %i.qs
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !77 ; 5 uses
  %i.qy = getelementptr [8 x i8], ptr %4, i64 %i.qs
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !37 ; 3 uses
  %i.ra = icmp sgt i32 %i.qv, %i.qx
  br i1 %i.ra, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i107.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i100.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i100.i:   ; preds = %bb.ay
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %i.qs
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !37
  %i.rd = icmp eq i32 %i.qv, %i.qx
  %i.re = icmp sgt i64 %i.rc, %i.qz
  %i.rf = and i1 %i.rd, %i.re
  br i1 %i.rf, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i107.i, label %bb.az

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i107.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i100.i, %bb.ay, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i109.i
  %i.rg = phi i32 [ %.pre.i.i.i.i110.i, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i109.i ], [ %i.qv, %bb.ay ], [ %i.qv, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i100.i ] ; 3 uses
  %i.rh = icmp slt i32 %i.rg, %i.qk
  br i1 %i.rh, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i105.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i108.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i108.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i107.i
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %i.qs
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !37 ; 2 uses
  %i.rk = icmp eq i32 %i.rg, %i.qk
  %i.rl = icmp sgt i64 %i.qn, %i.rj
  %i.rm = and i1 %i.rk, %i.rl
  br i1 %i.rm, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i105.i, label %bb.ba

bb.az:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i100.i
  %i.rn = icmp slt i32 %i.qx, %i.qk
  br i1 %i.rn, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i105.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i101.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i101.i: ; preds = %bb.az
  %i.ro = icmp eq i32 %i.qx, %i.qk
  %i.rp = icmp sgt i64 %i.qn, %i.qz
  %i.rq = and i1 %i.ro, %i.rp
  br i1 %i.rq, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i105.i, label %bb.ba

bb.ba:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i101.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i108.i
  %.sink71.i.i.i.i102.i = phi i32 [ %i.rg, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i108.i ], [ %i.qx, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i101.i ]
  %.sink.i.i.i.i103.i = phi i64 [ %i.rj, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i108.i ], [ %i.qz, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i101.i ]
  %.1.i.i.i.i104.i = phi i64 [ %i.qs, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i108.i ], [ %i.qr, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i101.i ] ; 3 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %.056.i.i.i.i99.i
  store i32 %.sink71.i.i.i.i102.i, ptr %i.rr, align 4, !tbaa !77
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %.056.i.i.i.i99.i
  store i64 %.sink.i.i.i.i103.i, ptr %i.rs, align 8, !tbaa !37
  %i.rt = shl i64 %.1.i.i.i.i104.i, 1             ; 3 uses
  %i.ru = or disjoint i64 %i.rt, 1
  %i.rv = icmp ugt i64 %i.rt, %2
  br i1 %i.rv, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i105.i, label %.lr.ph.i.i.i.i98.i, !llvm.loop !6

_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i105.i: ; preds = %bb.ba, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i101.i, %bb.az, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i108.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i107.i, %bb.ax
  %.0.lcssa.i.i.i.i106.i = phi i64 [ 1, %bb.ax ], [ %.1.i.i.i.i104.i, %bb.ba ], [ %.056.i.i.i.i99.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i108.i ], [ %.056.i.i.i.i99.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i101.i ], [ %.056.i.i.i.i99.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i107.i ], [ %.056.i.i.i.i99.i, %bb.az ] ; 2 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %.0.lcssa.i.i.i.i106.i
  store i32 %i.qk, ptr %i.rw, align 4, !tbaa !77
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %.0.lcssa.i.i.i.i106.i
  store i64 %i.qn, ptr %i.rx, align 8, !tbaa !37
  br label %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i94.i

_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i94.i: ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i105.i, %bb.aw
  %i.ry = getelementptr inbounds nuw i8, ptr %.02854.i.i.i, i64 %i.e
  %i.rz = add nuw i64 %.055.i.i.i, 1              ; 2 uses
  %exitcond62.not.i.i.i = icmp eq i64 %i.rz, %i.pw
  br i1 %exitcond62.not.i.i.i, label %._crit_edge.i.i95.i, label %bb.aw, !llvm.loop !164

_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i84.i: ; preds = %.lr.ph.i.i.i.i.i.i79.i, %.preheader.i.i111.i, %._crit_edge.i.i95.i, %bb.av, %..loopexit_crit_edge21.i.i.i.i.i.i83.i, %bb.ar
  %i.sa = icmp eq i64 %.sroa.12.0.i.i75.i, %.sroa.937.0.i.i74.i.ph
  br i1 %i.sa, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i84.i
  %i.sb = icmp eq i32 %.sroa.4.0.i.i76.i.ph, %i.on
  br i1 %i.sb, label %"_ZN5faiss20with_HammingComputerILNS_9SIMDLevelE0EZNS_28binary_hash_knn_search_fixSLILS1_0EEEvRKNS_15IndexBinaryHashEPKhlPiPlRmSA_SA_E3$_0EEDciOT0_.exit", label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.sc = add nuw nsw i32 %.sroa.4.0.i.i76.i.ph, 1 ; 3 uses
  %i.sd = zext nneg i32 %i.sc to i64
  %notmask.i32.i.i90.i = shl nsw i64 -1, %i.sd
  %i.se = xor i64 %notmask.i32.i.i90.i, -1        ; 2 uses
  %i.sf = sub nsw i32 %i.g, %i.sc
  %i.sg = zext nneg i32 %i.sf to i64
  %i.sh = shl i64 %i.se, %i.sg
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i86.i.outer, !llvm.loop !165

bb.bd:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i84.i
  %i.si = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.12.0.i.i75.i, i1 true) ; 2 uses
  %.not.i30.i.i85.i = icmp eq i64 %i.si, 0
  br i1 %.not.i30.i.i85.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.sj = add nsw i64 %i.si, -1
  %i.sk = shl nuw i64 3, %i.sj
  %i.sl = xor i64 %i.sk, %.sroa.12.0.i.i75.i
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i86.i.backedge

bb.bf:                                            ; preds = %bb.bd
  %i.sm = xor i64 %.sroa.12.0.i.i75.i, -1
  %i.sn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.sm, i1 true) ; 3 uses
  %i.so = shl nsw i64 -1, %i.sn
  %i.sp = and i64 %i.so, %.sroa.12.0.i.i75.i      ; 2 uses
  %i.sq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.sp, i1 true)
  %i.sr = shl nuw i64 4, %i.sn
  %i.ss = add i64 %i.sr, -1
  %i.st = xor i64 %i.sn, -1
  %i.su = add nsw i64 %i.sq, %i.st
  %i.sv = and i64 %i.su, 4294967295
  %i.sw = shl i64 %i.ss, %i.sv
  %i.sx = xor i64 %i.sw, %i.sp
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i86.i.backedge

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i86.i.backedge: ; preds = %bb.bf, %bb.be
  %.sroa.12.0.i.i75.i.be = phi i64 [ %i.sx, %bb.bf ], [ %i.sl, %bb.be ]
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i86.i, !llvm.loop !165

bb.bg:                                            ; preds = %bb.a
  br i1 %.not.i.i.i316.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.sy = zext i8 %i.h to i32
  %notmask30.i.i.i131.i = shl nsw i32 -1, %i.g
  %i.sz = xor i32 %notmask30.i.i.i131.i, -1
  %i.ta = and i32 %i.sy, %i.sz
  %i.tb = zext nneg i32 %i.ta to i64
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i132.i

bb.bi:                                            ; preds = %bb.bg
  %i.tc = zext i8 %i.h to i64                     ; 3 uses
  %i.td = add nsw i32 %i.g, -8
  %i.te = icmp samesign ugt i32 %i.g, 16
  br i1 %i.te, label %.lr.ph.i.preheader.i.i183.i, label %._crit_edge.i.i.i177.i

.lr.ph.i.preheader.i.i183.i:                      ; preds = %bb.bi
  %i.tf = add nsw i32 %i.g, -17                   ; 3 uses
  %i.tg = lshr i32 %i.tf, 3
  %narrow459 = add nuw nsw i32 %i.tg, 1
  %i.th = zext nneg i32 %narrow459 to i64         ; 2 uses
  %xtraiter423 = and i64 %i.th, 3                 ; 3 uses
  %i.ti = icmp ult i32 %i.tf, 24
  br i1 %i.ti, label %.lr.ph.i.i.i185.i.epil.preheader, label %.lr.ph.i.preheader.i.i183.i.new

.lr.ph.i.preheader.i.i183.i.new:                  ; preds = %.lr.ph.i.preheader.i.i183.i
  %unroll_iter428 = and i64 %i.th, 1073741820
  br label %.lr.ph.i.i.i185.i

.lr.ph.i.i.i185.i:                                ; preds = %.lr.ph.i.i.i185.i, %.lr.ph.i.preheader.i.i183.i.new
  %indvars.iv.i.i.i186.i = phi i64 [ 8, %.lr.ph.i.preheader.i.i183.i.new ], [ %indvars.iv.next.i.i.i189.i.3, %.lr.ph.i.i.i185.i ] ; 2 uses
  %.02435.i.i.i187.i = phi i64 [ 1, %.lr.ph.i.preheader.i.i183.i.new ], [ %.024.i.i.i190.i.3, %.lr.ph.i.i.i185.i ] ; 5 uses
  %.02633.i.i.i188.i = phi i64 [ %i.tc, %.lr.ph.i.preheader.i.i183.i.new ], [ %i.ud, %.lr.ph.i.i.i185.i ]
  %niter429 = phi i64 [ 0, %.lr.ph.i.preheader.i.i183.i.new ], [ %niter429.next.3, %.lr.ph.i.i.i185.i ]
  %i.tj = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i187.i
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !32
  %i.tl = zext i8 %i.tk to i64
  %i.tm = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i187.i
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 1
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !32
  %i.tp = zext i8 %i.to to i64
  %i.tq = shl nuw nsw i64 %i.tp, 8
  %i.tr = or disjoint i64 %i.tq, %i.tl
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i187.i
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 2
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !32
  %i.tv = zext i8 %i.tu to i64
  %i.tw = shl nuw nsw i64 %i.tv, 16
  %i.tx = or disjoint i64 %i.tr, %i.tw
  %i.ty = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i187.i
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 3
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !32
  %i.ub = zext i8 %i.ua to i64
  %14 = shl nuw nsw i64 %i.ub, 24
  %15 = or disjoint i64 %i.tx, %14
  %i.uc = shl i64 %15, %indvars.iv.i.i.i186.i
  %i.ud = or i64 %i.uc, %.02633.i.i.i188.i        ; 3 uses
  %indvars.iv.next.i.i.i189.i.3 = add nuw nsw i64 %indvars.iv.i.i.i186.i, 32 ; 2 uses
  %.024.i.i.i190.i.3 = add nuw nsw i64 %.02435.i.i.i187.i, 4 ; 2 uses
  %niter429.next.3 = add nuw i64 %niter429, 4     ; 2 uses
  %niter429.ncmp.3 = icmp eq i64 %niter429.next.3, %unroll_iter428
  br i1 %niter429.ncmp.3, label %._crit_edge.i.loopexit.i.i192.i.unr-lcssa, label %.lr.ph.i.i.i185.i, !llvm.loop !0

._crit_edge.i.loopexit.i.i192.i.unr-lcssa:        ; preds = %.lr.ph.i.i.i185.i
  %lcmp.mod425.not = icmp eq i64 %xtraiter423, 0
  br i1 %lcmp.mod425.not, label %._crit_edge.i.loopexit.i.i192.i, label %.lr.ph.i.i.i185.i.epil.preheader

.lr.ph.i.i.i185.i.epil.preheader:                 ; preds = %._crit_edge.i.loopexit.i.i192.i.unr-lcssa, %.lr.ph.i.preheader.i.i183.i
  %indvars.iv.i.i.i186.i.epil.init = phi i64 [ 8, %.lr.ph.i.preheader.i.i183.i ], [ %indvars.iv.next.i.i.i189.i.3, %._crit_edge.i.loopexit.i.i192.i.unr-lcssa ]
  %.02435.i.i.i187.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader.i.i183.i ], [ %.024.i.i.i190.i.3, %._crit_edge.i.loopexit.i.i192.i.unr-lcssa ]
  %.02633.i.i.i188.i.epil.init = phi i64 [ %i.tc, %.lr.ph.i.preheader.i.i183.i ], [ %i.ud, %._crit_edge.i.loopexit.i.i192.i.unr-lcssa ]
  %lcmp.mod427 = icmp ne i64 %xtraiter423, 0
  tail call void @llvm.assume(i1 %lcmp.mod427)
  br label %.lr.ph.i.i.i185.i.epil

.lr.ph.i.i.i185.i.epil:                           ; preds = %.lr.ph.i.i.i185.i.epil, %.lr.ph.i.i.i185.i.epil.preheader
  %indvars.iv.i.i.i186.i.epil = phi i64 [ %indvars.iv.next.i.i.i189.i.epil, %.lr.ph.i.i.i185.i.epil ], [ %indvars.iv.i.i.i186.i.epil.init, %.lr.ph.i.i.i185.i.epil.preheader ] ; 2 uses
  %.02435.i.i.i187.i.epil = phi i64 [ %.024.i.i.i190.i.epil, %.lr.ph.i.i.i185.i.epil ], [ %.02435.i.i.i187.i.epil.init, %.lr.ph.i.i.i185.i.epil.preheader ] ; 2 uses
  %.02633.i.i.i188.i.epil = phi i64 [ %i.ui, %.lr.ph.i.i.i185.i.epil ], [ %.02633.i.i.i188.i.epil.init, %.lr.ph.i.i.i185.i.epil.preheader ]
  %epil.iter424 = phi i64 [ %epil.iter424.next, %.lr.ph.i.i.i185.i.epil ], [ 0, %.lr.ph.i.i.i185.i.epil.preheader ]
  %i.ue = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i187.i.epil
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !32
  %i.ug = zext i8 %i.uf to i64
  %i.uh = shl i64 %i.ug, %indvars.iv.i.i.i186.i.epil
  %i.ui = or i64 %i.uh, %.02633.i.i.i188.i.epil   ; 2 uses
  %indvars.iv.next.i.i.i189.i.epil = add nuw nsw i64 %indvars.iv.i.i.i186.i.epil, 8
  %.024.i.i.i190.i.epil = add nuw nsw i64 %.02435.i.i.i187.i.epil, 1
  %epil.iter424.next = add i64 %epil.iter424, 1   ; 2 uses
  %epil.iter424.cmp.not = icmp eq i64 %epil.iter424.next, %xtraiter423
  br i1 %epil.iter424.cmp.not, label %._crit_edge.i.loopexit.i.i192.i, label %.lr.ph.i.i.i185.i.epil, !llvm.loop !166

._crit_edge.i.loopexit.i.i192.i:                  ; preds = %.lr.ph.i.i.i185.i.epil, %._crit_edge.i.loopexit.i.i192.i.unr-lcssa
  %.lcssa397 = phi i64 [ %i.ud, %._crit_edge.i.loopexit.i.i192.i.unr-lcssa ], [ %i.ui, %.lr.ph.i.i.i185.i.epil ]
  %i.uj = add nsw i32 %i.g, -16
  %i.uk = zext nneg i32 %i.tf to i64              ; 2 uses
  %i.ul = lshr i64 %i.uk, 3                       ; 2 uses
  %i.um = trunc nuw nsw i64 %i.ul to i32
  %i.un = shl nuw nsw i32 %i.um, 3
  %i.uo = sub nsw i32 %i.uj, %i.un
  %i.up = and i64 %i.uk, 2147483640
  %i.uq = add nuw nsw i64 %i.up, 16
  %i.ur = add nuw nsw i64 %i.ul, 2
  br label %._crit_edge.i.i.i177.i

._crit_edge.i.i.i177.i:                           ; preds = %._crit_edge.i.loopexit.i.i192.i, %bb.bi
  %.027.lcssa.i.i.i178.i = phi i32 [ %i.td, %bb.bi ], [ %i.uo, %._crit_edge.i.loopexit.i.i192.i ]
  %.026.lcssa.i.i.i179.i = phi i64 [ %i.tc, %bb.bi ], [ %.lcssa397, %._crit_edge.i.loopexit.i.i192.i ]
  %.025.lcssa.i.i.i180.i = phi i64 [ 8, %bb.bi ], [ %i.uq, %._crit_edge.i.loopexit.i.i192.i ]
  %.024.lcssa.i.i.i181.i = phi i64 [ 1, %bb.bi ], [ %i.ur, %._crit_edge.i.loopexit.i.i192.i ]
  %i.us = getelementptr inbounds nuw i8, ptr %1, i64 %.024.lcssa.i.i.i181.i
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !32
  %notmask.i.i.i182.i = shl nsw i32 -1, %.027.lcssa.i.i.i178.i
  %i.uu = xor i32 %notmask.i.i.i182.i, -1
  %i.uv = zext i8 %i.ut to i32
  %i.uw = and i32 %i.uv, %i.uu
  %i.ux = zext nneg i32 %i.uw to i64
  %i.uy = shl i64 %i.ux, %.025.lcssa.i.i.i180.i
  %i.uz = or i64 %i.uy, %.026.lcssa.i.i.i179.i
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i132.i

_ZN5faiss15BitstringReader4readEi.exit.i.i132.i:  ; preds = %._crit_edge.i.i.i177.i, %bb.bh
  %.0.i.i.i133.i = phi i64 [ %i.tb, %bb.bh ], [ %i.uz, %._crit_edge.i.i.i177.i ]
  %i.va = load <2 x i64>, ptr %1, align 8, !tbaa !37
  %i.vb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.vc = load i32, ptr %i.vb, align 8, !tbaa !77
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !114
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.vj = getelementptr inbounds i8, ptr %3, i64 -4 ; 4 uses
  %i.vk = getelementptr inbounds i8, ptr %4, i64 -8 ; 4 uses
  %i.vl = icmp ult i64 %2, 2
  %.phi.trans.insert.i.i.i.i160.i = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %2
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i146.i.outer

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i146.i.outer: ; preds = %bb.bv, %_ZN5faiss15BitstringReader4readEi.exit.i.i132.i
  %.sroa.937.0.i.i134.i.ph = phi i64 [ %i.za, %bb.bv ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i132.i ]
  %.sroa.12.0.i.i135.i.ph = phi i64 [ %i.zd, %bb.bv ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i132.i ]
  %.sroa.4.0.i.i136.i.ph = phi i32 [ %i.yy, %bb.bv ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i132.i ] ; 2 uses
  %i.vm = load ptr, ptr %i.vg, align 8
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i146.i

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i146.i: ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i146.i.backedge, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i146.i.outer
  %.sroa.12.0.i.i135.i = phi i64 [ %.sroa.12.0.i.i135.i.ph, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i146.i.outer ], [ %.sroa.12.0.i.i135.i.be, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i146.i.backedge ] ; 6 uses
  %i.vn = xor i64 %.sroa.12.0.i.i135.i, %.0.i.i.i133.i ; 4 uses
  %i.vo = load i64, ptr %i.vf, align 8, !tbaa !115
  %.not.not.i.i.i.i137.i = icmp eq i64 %i.vo, 0
  br i1 %.not.not.i.i.i.i137.i, label %.preheader.i.i174.i, label %bb.bk

.preheader.i.i174.i:                              ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i146.i, %bb.bj
  %.sroa.06.0.in.i.i.i.i175.i = phi ptr [ %.sroa.06.0.i.i.i.i176.i, %bb.bj ], [ %i.vi, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i146.i ]
  %.sroa.06.0.i.i.i.i176.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i175.i, align 8, !tbaa !54 ; 4 uses
  %i.vp = icmp eq ptr %.sroa.06.0.i.i.i.i176.i, null
  br i1 %i.vp, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i144.i, label %bb.bj

bb.bj:                                            ; preds = %.preheader.i.i174.i
  %i.vq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i176.i, i64 8
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !37
  %i.vs = icmp eq i64 %i.vn, %i.vr
  br i1 %i.vs, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i151.i, label %.preheader.i.i174.i, !llvm.loop !5

bb.bk:                                            ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i146.i
  %i.vt = load i64, ptr %i.vh, align 8, !tbaa !51 ; 2 uses
  %i.vu = urem i64 %i.vn, %i.vt                   ; 2 uses
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %i.vm, i64 %i.vu
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i.i.i138.i = icmp eq ptr %i.vw, null
  br i1 %.not.i.i.i.i.i.i138.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i144.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !54 ; 3 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !37
  %i.wa = icmp eq i64 %i.vn, %i.vz
  br i1 %i.wa, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i151.i, label %.lr.ph.i.i.i.i.i.i139.i

bb.bm:                                            ; preds = %bb.bn
  %i.wb = icmp eq i64 %i.vn, %i.we
  br i1 %i.wb, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i151.i, label %.lr.ph.i.i.i.i.i.i139.i, !llvm.loop !1

.lr.ph.i.i.i.i.i.i139.i:                          ; preds = %bb.bl, %bb.bm
  %.020.i.i.i.i.i.i140.i = phi ptr [ %i.wc, %bb.bm ], [ %i.vx, %bb.bl ]
  %i.wc = load ptr, ptr %.020.i.i.i.i.i.i140.i, align 8, !tbaa !54 ; 4 uses
  %.not18.i.i.i.i.i.i141.i = icmp eq ptr %i.wc, null
  br i1 %.not18.i.i.i.i.i.i141.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i144.i, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i.i.i.i.i.i139.i
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  %i.we = load i64, ptr %i.wd, align 8, !tbaa !37 ; 2 uses
  %i.wf = urem i64 %i.we, %i.vt
  %.not19.i.i.i.i.i.i142.i = icmp eq i64 %i.wf, %i.vu
  br i1 %.not19.i.i.i.i.i.i142.i, label %bb.bm, label %..loopexit_crit_edge21.i.i.i.i.i.i143.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i.i.i143.i:          ; preds = %bb.bn
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i144.i, !llvm.loop !1

_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i151.i: ; preds = %bb.bm, %bb.bj, %bb.bl
  %.sroa.06.1.i.i.i.i152.i = phi ptr [ %.sroa.06.0.i.i.i.i176.i, %bb.bj ], [ %i.vx, %bb.bl ], [ %i.wc, %bb.bm ] ; 3 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i152.i, i64 16
  %i.wh = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i152.i, i64 24
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !112 ; 2 uses
  %i.wj = load ptr, ptr %i.wg, align 8, !tbaa !88 ; 3 uses
  %i.wk = ptrtoint ptr %i.wi to i64
  %i.wl = ptrtoint ptr %i.wj to i64
  %i.wm = sub i64 %i.wk, %i.wl
  %i.wn = ashr exact i64 %i.wm, 3                 ; 2 uses
  %i.wo = icmp eq ptr %i.wi, %i.wj
  br i1 %i.wo, label %bb.bo, label %.lr.ph.i.i153.i

bb.bo:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i151.i
  %i.wp = load i64, ptr %5, align 8, !tbaa !37
  %i.wq = add i64 %i.wp, 1
  store i64 %i.wq, ptr %5, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i144.i

.lr.ph.i.i153.i:                                  ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i151.i
  %i.wr = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i152.i, i64 40
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !86
  br label %bb.bp

._crit_edge.i.i158.i:                             ; preds = %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i156.i
  %i.wt = load i64, ptr %7, align 8, !tbaa !37
  %i.wu = add i64 %i.wt, %i.wn
  store i64 %i.wu, ptr %7, align 8, !tbaa !37
  %i.wv = load i64, ptr %6, align 8, !tbaa !37
  %i.ww = add i64 %i.wv, 1
  store i64 %i.ww, ptr %6, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i144.i

bb.bp:                                            ; preds = %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i156.i, %.lr.ph.i.i153.i
  %.055.i.i154.i = phi i64 [ 0, %.lr.ph.i.i153.i ], [ %i.yv, %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i156.i ] ; 2 uses
  %.02854.i.i155.i = phi ptr [ %i.ws, %.lr.ph.i.i153.i ], [ %i.yu, %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i156.i ] ; 3 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %.02854.i.i155.i, i64 16
  %i.wy = load <2 x i64>, ptr %.02854.i.i155.i, align 8, !tbaa !37
  %i.wz = xor <2 x i64> %i.wy, %i.va
  %i.xa = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.wz)
  %i.xb = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.xa)
  %i.xc = trunc nuw nsw i64 %i.xb to i32
  %i.xd = load i32, ptr %i.wx, align 8, !tbaa !77
  %i.xe = xor i32 %i.xd, %i.vc
  %i.xf = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.xe)
  %i.xg = add nuw nsw i32 %i.xf, %i.xc            ; 6 uses
  %i.xh = uitofp nneg i32 %i.xg to float
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %.055.i.i154.i
  %i.xj = load i64, ptr %i.xi, align 8, !tbaa !37 ; 3 uses
  %i.xk = load i32, ptr %3, align 4, !tbaa !77
  %i.xl = sitofp i32 %i.xk to float
  %i.xm = fcmp olt float %i.xh, %i.xl
  br i1 %i.xm, label %bb.bq, label %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i156.i

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.vl, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i168.i, label %.lr.ph.i.i.i.i161.i

.lr.ph.i.i.i.i161.i:                              ; preds = %bb.bq, %bb.bt
  %i.xn = phi i64 [ %i.yq, %bb.bt ], [ 3, %bb.bq ]
  %i.xo = phi i64 [ %i.yp, %bb.bt ], [ 2, %bb.bq ] ; 7 uses
  %.056.i.i.i.i162.i = phi i64 [ %.1.i.i.i.i167.i, %bb.bt ], [ 1, %bb.bq ] ; 6 uses
  %i.xp = icmp eq i64 %i.xo, %2
  br i1 %i.xp, label %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i172.i, label %bb.br

.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i172.i: ; preds = %.lr.ph.i.i.i.i161.i
  %.pre.i.i.i.i173.i = load i32, ptr %.phi.trans.insert.i.i.i.i160.i, align 4, !tbaa !77
  br label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i170.i

bb.br:                                            ; preds = %.lr.ph.i.i.i.i161.i
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %i.xo
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !77 ; 4 uses
  %i.xs = getelementptr [4 x i8], ptr %3, i64 %i.xo
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !77 ; 5 uses
  %i.xu = getelementptr [8 x i8], ptr %4, i64 %i.xo
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !37 ; 3 uses
  %i.xw = icmp sgt i32 %i.xr, %i.xt
  br i1 %i.xw, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i170.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i163.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i163.i:   ; preds = %bb.br
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %i.xo
  %i.xy = load i64, ptr %i.xx, align 8, !tbaa !37
  %i.xz = icmp eq i32 %i.xr, %i.xt
  %i.ya = icmp sgt i64 %i.xy, %i.xv
  %i.yb = and i1 %i.xz, %i.ya
  br i1 %i.yb, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i170.i, label %bb.bs

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i170.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i163.i, %bb.br, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i172.i
  %i.yc = phi i32 [ %.pre.i.i.i.i173.i, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i172.i ], [ %i.xr, %bb.br ], [ %i.xr, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i163.i ] ; 3 uses
  %i.yd = icmp slt i32 %i.yc, %i.xg
  br i1 %i.yd, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i168.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i171.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i171.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i170.i
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %i.xo
  %i.yf = load i64, ptr %i.ye, align 8, !tbaa !37 ; 2 uses
  %i.yg = icmp eq i32 %i.yc, %i.xg
  %i.yh = icmp sgt i64 %i.xj, %i.yf
  %i.yi = and i1 %i.yg, %i.yh
  br i1 %i.yi, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i168.i, label %bb.bt

bb.bs:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i163.i
  %i.yj = icmp slt i32 %i.xt, %i.xg
  br i1 %i.yj, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i168.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i164.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i164.i: ; preds = %bb.bs
  %i.yk = icmp eq i32 %i.xt, %i.xg
  %i.yl = icmp sgt i64 %i.xj, %i.xv
  %i.ym = and i1 %i.yk, %i.yl
  br i1 %i.ym, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i168.i, label %bb.bt

bb.bt:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i164.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i171.i
  %.sink71.i.i.i.i165.i = phi i32 [ %i.yc, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i171.i ], [ %i.xt, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i164.i ]
  %.sink.i.i.i.i166.i = phi i64 [ %i.yf, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i171.i ], [ %i.xv, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i164.i ]
  %.1.i.i.i.i167.i = phi i64 [ %i.xo, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i171.i ], [ %i.xn, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i164.i ] ; 3 uses
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %.056.i.i.i.i162.i
  store i32 %.sink71.i.i.i.i165.i, ptr %i.yn, align 4, !tbaa !77
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %.056.i.i.i.i162.i
  store i64 %.sink.i.i.i.i166.i, ptr %i.yo, align 8, !tbaa !37
  %i.yp = shl i64 %.1.i.i.i.i167.i, 1             ; 3 uses
  %i.yq = or disjoint i64 %i.yp, 1
  %i.yr = icmp ugt i64 %i.yp, %2
  br i1 %i.yr, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i168.i, label %.lr.ph.i.i.i.i161.i, !llvm.loop !6

_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i168.i: ; preds = %bb.bt, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i164.i, %bb.bs, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i171.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i170.i, %bb.bq
  %.0.lcssa.i.i.i.i169.i = phi i64 [ 1, %bb.bq ], [ %.1.i.i.i.i167.i, %bb.bt ], [ %.056.i.i.i.i162.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i171.i ], [ %.056.i.i.i.i162.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i164.i ], [ %.056.i.i.i.i162.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i170.i ], [ %.056.i.i.i.i162.i, %bb.bs ] ; 2 uses
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %.0.lcssa.i.i.i.i169.i
  store i32 %i.xg, ptr %i.ys, align 4, !tbaa !77
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %.0.lcssa.i.i.i.i169.i
  store i64 %i.xj, ptr %i.yt, align 8, !tbaa !37
  br label %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i156.i

_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i156.i: ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i168.i, %bb.bp
  %i.yu = getelementptr inbounds nuw i8, ptr %.02854.i.i155.i, i64 %i.e
  %i.yv = add nuw i64 %.055.i.i154.i, 1           ; 2 uses
  %exitcond62.not.i.i157.i = icmp eq i64 %i.yv, %i.wn
  br i1 %exitcond62.not.i.i157.i, label %._crit_edge.i.i158.i, label %bb.bp, !llvm.loop !167

_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i144.i: ; preds = %.lr.ph.i.i.i.i.i.i139.i, %.preheader.i.i174.i, %._crit_edge.i.i158.i, %bb.bo, %..loopexit_crit_edge21.i.i.i.i.i.i143.i, %bb.bk
  %i.yw = icmp eq i64 %.sroa.12.0.i.i135.i, %.sroa.937.0.i.i134.i.ph
  br i1 %i.yw, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i144.i
  %i.yx = icmp eq i32 %.sroa.4.0.i.i136.i.ph, %i.ve
  br i1 %i.yx, label %"_ZN5faiss20with_HammingComputerILNS_9SIMDLevelE0EZNS_28binary_hash_knn_search_fixSLILS1_0EEEvRKNS_15IndexBinaryHashEPKhlPiPlRmSA_SA_E3$_0EEDciOT0_.exit", label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.yy = add nuw nsw i32 %.sroa.4.0.i.i136.i.ph, 1 ; 3 uses
  %i.yz = zext nneg i32 %i.yy to i64
  %notmask.i32.i.i150.i = shl nsw i64 -1, %i.yz
  %i.za = xor i64 %notmask.i32.i.i150.i, -1       ; 2 uses
  %i.zb = sub nsw i32 %i.g, %i.yy
  %i.zc = zext nneg i32 %i.zb to i64
  %i.zd = shl i64 %i.za, %i.zc
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i146.i.outer, !llvm.loop !168

bb.bw:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i144.i
  %i.ze = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.12.0.i.i135.i, i1 true) ; 2 uses
  %.not.i30.i.i145.i = icmp eq i64 %i.ze, 0
  br i1 %.not.i30.i.i145.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.zf = add nsw i64 %i.ze, -1
  %i.zg = shl nuw i64 3, %i.zf
  %i.zh = xor i64 %i.zg, %.sroa.12.0.i.i135.i
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i146.i.backedge

bb.by:                                            ; preds = %bb.bw
  %i.zi = xor i64 %.sroa.12.0.i.i135.i, -1
  %i.zj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.zi, i1 true) ; 3 uses
  %i.zk = shl nsw i64 -1, %i.zj
  %i.zl = and i64 %i.zk, %.sroa.12.0.i.i135.i     ; 2 uses
  %i.zm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.zl, i1 true)
  %i.zn = shl nuw i64 4, %i.zj
  %i.zo = add i64 %i.zn, -1
  %i.zp = xor i64 %i.zj, -1
  %i.zq = add nsw i64 %i.zm, %i.zp
  %i.zr = and i64 %i.zq, 4294967295
  %i.zs = shl i64 %i.zo, %i.zr
  %i.zt = xor i64 %i.zs, %i.zl
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i146.i.backedge

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i146.i.backedge: ; preds = %bb.by, %bb.bx
  %.sroa.12.0.i.i135.i.be = phi i64 [ %i.zt, %bb.by ], [ %i.zh, %bb.bx ]
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i146.i, !llvm.loop !168

bb.bz:                                            ; preds = %bb.a
  br i1 %.not.i.i.i316.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.zu = zext i8 %i.h to i32
  %notmask30.i.i.i194.i = shl nsw i32 -1, %i.g
  %i.zv = xor i32 %notmask30.i.i.i194.i, -1
  %i.zw = and i32 %i.zu, %i.zv
  %i.zx = zext nneg i32 %i.zw to i64
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i195.i

bb.cb:                                            ; preds = %bb.bz
  %i.zy = zext i8 %i.h to i64                     ; 3 uses
  %i.zz = add nsw i32 %i.g, -8
  %i.aaa = icmp samesign ugt i32 %i.g, 16
  br i1 %i.aaa, label %.lr.ph.i.preheader.i.i246.i, label %._crit_edge.i.i.i240.i

.lr.ph.i.preheader.i.i246.i:                      ; preds = %bb.cb
  %i.aab = add nsw i32 %i.g, -17                  ; 3 uses
  %i.aac = lshr i32 %i.aab, 3
  %narrow458 = add nuw nsw i32 %i.aac, 1
  %i.aad = zext nneg i32 %narrow458 to i64        ; 2 uses
  %xtraiter416 = and i64 %i.aad, 3                ; 3 uses
  %i.aae = icmp ult i32 %i.aab, 24
  br i1 %i.aae, label %.lr.ph.i.i.i248.i.epil.preheader, label %.lr.ph.i.preheader.i.i246.i.new

.lr.ph.i.preheader.i.i246.i.new:                  ; preds = %.lr.ph.i.preheader.i.i246.i
  %unroll_iter421 = and i64 %i.aad, 1073741820
  br label %.lr.ph.i.i.i248.i

.lr.ph.i.i.i248.i:                                ; preds = %.lr.ph.i.i.i248.i, %.lr.ph.i.preheader.i.i246.i.new
  %indvars.iv.i.i.i249.i = phi i64 [ 8, %.lr.ph.i.preheader.i.i246.i.new ], [ %indvars.iv.next.i.i.i252.i.3, %.lr.ph.i.i.i248.i ] ; 2 uses
  %.02435.i.i.i250.i = phi i64 [ 1, %.lr.ph.i.preheader.i.i246.i.new ], [ %.024.i.i.i253.i.3, %.lr.ph.i.i.i248.i ] ; 5 uses
  %.02633.i.i.i251.i = phi i64 [ %i.zy, %.lr.ph.i.preheader.i.i246.i.new ], [ %i.aaz, %.lr.ph.i.i.i248.i ]
  %niter422 = phi i64 [ 0, %.lr.ph.i.preheader.i.i246.i.new ], [ %niter422.next.3, %.lr.ph.i.i.i248.i ]
  %i.aaf = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i250.i
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !32
  %i.aah = zext i8 %i.aag to i64
  %i.aai = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i250.i
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 1
  %i.aak = load i8, ptr %i.aaj, align 1, !tbaa !32
  %i.aal = zext i8 %i.aak to i64
  %i.aam = shl nuw nsw i64 %i.aal, 8
  %i.aan = or disjoint i64 %i.aam, %i.aah
  %i.aao = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i250.i
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 2
  %i.aaq = load i8, ptr %i.aap, align 1, !tbaa !32
  %i.aar = zext i8 %i.aaq to i64
  %i.aas = shl nuw nsw i64 %i.aar, 16
  %i.aat = or disjoint i64 %i.aan, %i.aas
  %i.aau = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i250.i
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 3
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !32
  %i.aax = zext i8 %i.aaw to i64
  %16 = shl nuw nsw i64 %i.aax, 24
  %17 = or disjoint i64 %i.aat, %16
  %i.aay = shl i64 %17, %indvars.iv.i.i.i249.i
  %i.aaz = or i64 %i.aay, %.02633.i.i.i251.i      ; 3 uses
  %indvars.iv.next.i.i.i252.i.3 = add nuw nsw i64 %indvars.iv.i.i.i249.i, 32 ; 2 uses
  %.024.i.i.i253.i.3 = add nuw nsw i64 %.02435.i.i.i250.i, 4 ; 2 uses
  %niter422.next.3 = add nuw i64 %niter422, 4     ; 2 uses
  %niter422.ncmp.3 = icmp eq i64 %niter422.next.3, %unroll_iter421
  br i1 %niter422.ncmp.3, label %._crit_edge.i.loopexit.i.i255.i.unr-lcssa, label %.lr.ph.i.i.i248.i, !llvm.loop !0

._crit_edge.i.loopexit.i.i255.i.unr-lcssa:        ; preds = %.lr.ph.i.i.i248.i
  %lcmp.mod418.not = icmp eq i64 %xtraiter416, 0
  br i1 %lcmp.mod418.not, label %._crit_edge.i.loopexit.i.i255.i, label %.lr.ph.i.i.i248.i.epil.preheader

.lr.ph.i.i.i248.i.epil.preheader:                 ; preds = %._crit_edge.i.loopexit.i.i255.i.unr-lcssa, %.lr.ph.i.preheader.i.i246.i
  %indvars.iv.i.i.i249.i.epil.init = phi i64 [ 8, %.lr.ph.i.preheader.i.i246.i ], [ %indvars.iv.next.i.i.i252.i.3, %._crit_edge.i.loopexit.i.i255.i.unr-lcssa ]
  %.02435.i.i.i250.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader.i.i246.i ], [ %.024.i.i.i253.i.3, %._crit_edge.i.loopexit.i.i255.i.unr-lcssa ]
  %.02633.i.i.i251.i.epil.init = phi i64 [ %i.zy, %.lr.ph.i.preheader.i.i246.i ], [ %i.aaz, %._crit_edge.i.loopexit.i.i255.i.unr-lcssa ]
  %lcmp.mod420 = icmp ne i64 %xtraiter416, 0
  tail call void @llvm.assume(i1 %lcmp.mod420)
  br label %.lr.ph.i.i.i248.i.epil

.lr.ph.i.i.i248.i.epil:                           ; preds = %.lr.ph.i.i.i248.i.epil, %.lr.ph.i.i.i248.i.epil.preheader
  %indvars.iv.i.i.i249.i.epil = phi i64 [ %indvars.iv.next.i.i.i252.i.epil, %.lr.ph.i.i.i248.i.epil ], [ %indvars.iv.i.i.i249.i.epil.init, %.lr.ph.i.i.i248.i.epil.preheader ] ; 2 uses
  %.02435.i.i.i250.i.epil = phi i64 [ %.024.i.i.i253.i.epil, %.lr.ph.i.i.i248.i.epil ], [ %.02435.i.i.i250.i.epil.init, %.lr.ph.i.i.i248.i.epil.preheader ] ; 2 uses
  %.02633.i.i.i251.i.epil = phi i64 [ %i.abe, %.lr.ph.i.i.i248.i.epil ], [ %.02633.i.i.i251.i.epil.init, %.lr.ph.i.i.i248.i.epil.preheader ]
  %epil.iter417 = phi i64 [ %epil.iter417.next, %.lr.ph.i.i.i248.i.epil ], [ 0, %.lr.ph.i.i.i248.i.epil.preheader ]
  %i.aba = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i250.i.epil
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !32
  %i.abc = zext i8 %i.abb to i64
  %i.abd = shl i64 %i.abc, %indvars.iv.i.i.i249.i.epil
  %i.abe = or i64 %i.abd, %.02633.i.i.i251.i.epil ; 2 uses
  %indvars.iv.next.i.i.i252.i.epil = add nuw nsw i64 %indvars.iv.i.i.i249.i.epil, 8
  %.024.i.i.i253.i.epil = add nuw nsw i64 %.02435.i.i.i250.i.epil, 1
  %epil.iter417.next = add i64 %epil.iter417, 1   ; 2 uses
  %epil.iter417.cmp.not = icmp eq i64 %epil.iter417.next, %xtraiter416
  br i1 %epil.iter417.cmp.not, label %._crit_edge.i.loopexit.i.i255.i, label %.lr.ph.i.i.i248.i.epil, !llvm.loop !169

._crit_edge.i.loopexit.i.i255.i:                  ; preds = %.lr.ph.i.i.i248.i.epil, %._crit_edge.i.loopexit.i.i255.i.unr-lcssa
  %.lcssa405 = phi i64 [ %i.aaz, %._crit_edge.i.loopexit.i.i255.i.unr-lcssa ], [ %i.abe, %.lr.ph.i.i.i248.i.epil ]
  %i.abf = add nsw i32 %i.g, -16
  %i.abg = zext nneg i32 %i.aab to i64            ; 2 uses
  %i.abh = lshr i64 %i.abg, 3                     ; 2 uses
  %i.abi = trunc nuw nsw i64 %i.abh to i32
  %i.abj = shl nuw nsw i32 %i.abi, 3
  %i.abk = sub nsw i32 %i.abf, %i.abj
  %i.abl = and i64 %i.abg, 2147483640
  %i.abm = add nuw nsw i64 %i.abl, 16
  %i.abn = add nuw nsw i64 %i.abh, 2
  br label %._crit_edge.i.i.i240.i

._crit_edge.i.i.i240.i:                           ; preds = %._crit_edge.i.loopexit.i.i255.i, %bb.cb
  %.027.lcssa.i.i.i241.i = phi i32 [ %i.zz, %bb.cb ], [ %i.abk, %._crit_edge.i.loopexit.i.i255.i ]
  %.026.lcssa.i.i.i242.i = phi i64 [ %i.zy, %bb.cb ], [ %.lcssa405, %._crit_edge.i.loopexit.i.i255.i ]
  %.025.lcssa.i.i.i243.i = phi i64 [ 8, %bb.cb ], [ %i.abm, %._crit_edge.i.loopexit.i.i255.i ]
  %.024.lcssa.i.i.i244.i = phi i64 [ 1, %bb.cb ], [ %i.abn, %._crit_edge.i.loopexit.i.i255.i ]
  %i.abo = getelementptr inbounds nuw i8, ptr %1, i64 %.024.lcssa.i.i.i244.i
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !32
  %notmask.i.i.i245.i = shl nsw i32 -1, %.027.lcssa.i.i.i241.i
  %i.abq = xor i32 %notmask.i.i.i245.i, -1
  %i.abr = zext i8 %i.abp to i32
  %i.abs = and i32 %i.abr, %i.abq
  %i.abt = zext nneg i32 %i.abs to i64
  %i.abu = shl i64 %i.abt, %.025.lcssa.i.i.i243.i
  %i.abv = or i64 %i.abu, %.026.lcssa.i.i.i242.i
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i195.i

_ZN5faiss15BitstringReader4readEi.exit.i.i195.i:  ; preds = %._crit_edge.i.i.i240.i, %bb.ca
  %.0.i.i.i196.i = phi i64 [ %i.zx, %bb.ca ], [ %i.abv, %._crit_edge.i.i.i240.i ]
  %i.abw = load <4 x i64>, ptr %1, align 8, !tbaa !37
  %i.abx = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !114
  %i.abz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.acb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.acd = getelementptr inbounds i8, ptr %3, i64 -4 ; 4 uses
  %i.ace = getelementptr inbounds i8, ptr %4, i64 -8 ; 4 uses
  %i.acf = icmp ult i64 %2, 2
  %.phi.trans.insert.i.i.i.i223.i = getelementptr inbounds nuw [4 x i8], ptr %i.acd, i64 %2
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i209.i.outer

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i209.i.outer: ; preds = %bb.co, %_ZN5faiss15BitstringReader4readEi.exit.i.i195.i
  %.sroa.937.0.i.i197.i.ph = phi i64 [ %i.afp, %bb.co ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i195.i ]
  %.sroa.12.0.i.i198.i.ph = phi i64 [ %i.afs, %bb.co ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i195.i ]
  %.sroa.4.0.i.i199.i.ph = phi i32 [ %i.afn, %bb.co ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i195.i ] ; 2 uses
  %i.acg = load ptr, ptr %i.aca, align 8
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i209.i

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i209.i: ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i209.i.backedge, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i209.i.outer
  %.sroa.12.0.i.i198.i = phi i64 [ %.sroa.12.0.i.i198.i.ph, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i209.i.outer ], [ %.sroa.12.0.i.i198.i.be, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i209.i.backedge ] ; 6 uses
  %i.ach = xor i64 %.sroa.12.0.i.i198.i, %.0.i.i.i196.i ; 4 uses
  %i.aci = load i64, ptr %i.abz, align 8, !tbaa !115
  %.not.not.i.i.i.i200.i = icmp eq i64 %i.aci, 0
  br i1 %.not.not.i.i.i.i200.i, label %.preheader.i.i237.i, label %bb.cd

.preheader.i.i237.i:                              ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i209.i, %bb.cc
  %.sroa.06.0.in.i.i.i.i238.i = phi ptr [ %.sroa.06.0.i.i.i.i239.i, %bb.cc ], [ %i.acc, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i209.i ]
  %.sroa.06.0.i.i.i.i239.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i238.i, align 8, !tbaa !54 ; 4 uses
  %i.acj = icmp eq ptr %.sroa.06.0.i.i.i.i239.i, null
  br i1 %i.acj, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i207.i, label %bb.cc

bb.cc:                                            ; preds = %.preheader.i.i237.i
  %i.ack = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i239.i, i64 8
  %i.acl = load i64, ptr %i.ack, align 8, !tbaa !37
  %i.acm = icmp eq i64 %i.ach, %i.acl
  br i1 %i.acm, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i214.i, label %.preheader.i.i237.i, !llvm.loop !5

bb.cd:                                            ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i209.i
  %i.acn = load i64, ptr %i.acb, align 8, !tbaa !51 ; 2 uses
  %i.aco = urem i64 %i.ach, %i.acn                ; 2 uses
  %i.acp = getelementptr inbounds nuw [8 x i8], ptr %i.acg, i64 %i.aco
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i.i.i201.i = icmp eq ptr %i.acq, null
  br i1 %.not.i.i.i.i.i.i201.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i207.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !54 ; 3 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 8
  %i.act = load i64, ptr %i.acs, align 8, !tbaa !37
  %i.acu = icmp eq i64 %i.ach, %i.act
  br i1 %i.acu, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i214.i, label %.lr.ph.i.i.i.i.i.i202.i

bb.cf:                                            ; preds = %bb.cg
  %i.acv = icmp eq i64 %i.ach, %i.acy
  br i1 %i.acv, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i214.i, label %.lr.ph.i.i.i.i.i.i202.i, !llvm.loop !1

.lr.ph.i.i.i.i.i.i202.i:                          ; preds = %bb.ce, %bb.cf
  %.020.i.i.i.i.i.i203.i = phi ptr [ %i.acw, %bb.cf ], [ %i.acr, %bb.ce ]
  %i.acw = load ptr, ptr %.020.i.i.i.i.i.i203.i, align 8, !tbaa !54 ; 4 uses
  %.not18.i.i.i.i.i.i204.i = icmp eq ptr %i.acw, null
  br i1 %.not18.i.i.i.i.i.i204.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i207.i, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i.i.i.i.i.i202.i
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 8
  %i.acy = load i64, ptr %i.acx, align 8, !tbaa !37 ; 2 uses
  %i.acz = urem i64 %i.acy, %i.acn
  %.not19.i.i.i.i.i.i205.i = icmp eq i64 %i.acz, %i.aco
  br i1 %.not19.i.i.i.i.i.i205.i, label %bb.cf, label %..loopexit_crit_edge21.i.i.i.i.i.i206.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i.i.i206.i:          ; preds = %bb.cg
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i207.i, !llvm.loop !1

_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i214.i: ; preds = %bb.cf, %bb.cc, %bb.ce
  %.sroa.06.1.i.i.i.i215.i = phi ptr [ %.sroa.06.0.i.i.i.i239.i, %bb.cc ], [ %i.acr, %bb.ce ], [ %i.acw, %bb.cf ] ; 3 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i215.i, i64 16
  %i.adb = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i215.i, i64 24
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !112 ; 2 uses
  %i.add = load ptr, ptr %i.ada, align 8, !tbaa !88 ; 3 uses
  %i.ade = ptrtoint ptr %i.adc to i64
  %i.adf = ptrtoint ptr %i.add to i64
  %i.adg = sub i64 %i.ade, %i.adf
  %i.adh = ashr exact i64 %i.adg, 3               ; 2 uses
  %i.adi = icmp eq ptr %i.adc, %i.add
  br i1 %i.adi, label %bb.ch, label %.lr.ph.i.i216.i

bb.ch:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i214.i
  %i.adj = load i64, ptr %5, align 8, !tbaa !37
  %i.adk = add i64 %i.adj, 1
  store i64 %i.adk, ptr %5, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i207.i

.lr.ph.i.i216.i:                                  ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i214.i
  %i.adl = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i215.i, i64 40
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !86
  br label %bb.ci

._crit_edge.i.i221.i:                             ; preds = %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i219.i
  %i.adn = load i64, ptr %7, align 8, !tbaa !37
  %i.ado = add i64 %i.adn, %i.adh
  store i64 %i.ado, ptr %7, align 8, !tbaa !37
  %i.adp = load i64, ptr %6, align 8, !tbaa !37
  %i.adq = add i64 %i.adp, 1
  store i64 %i.adq, ptr %6, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i207.i

bb.ci:                                            ; preds = %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i219.i, %.lr.ph.i.i216.i
  %.055.i.i217.i = phi i64 [ 0, %.lr.ph.i.i216.i ], [ %i.afk, %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i219.i ] ; 2 uses
  %.02854.i.i218.i = phi ptr [ %i.adm, %.lr.ph.i.i216.i ], [ %i.afj, %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i219.i ] ; 2 uses
  %i.adr = load <4 x i64>, ptr %.02854.i.i218.i, align 8, !tbaa !37
  %i.ads = xor <4 x i64> %i.adr, %i.abw
  %i.adt = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.ads)
  %i.adu = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.adt)
  %i.adv = trunc nuw nsw i64 %i.adu to i32        ; 6 uses
  %i.adw = uitofp nneg i32 %i.adv to float
  %i.adx = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %.055.i.i217.i
  %i.ady = load i64, ptr %i.adx, align 8, !tbaa !37 ; 3 uses
  %i.adz = load i32, ptr %3, align 4, !tbaa !77
  %i.aea = sitofp i32 %i.adz to float
  %i.aeb = fcmp olt float %i.adw, %i.aea
  br i1 %i.aeb, label %bb.cj, label %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i219.i

bb.cj:                                            ; preds = %bb.ci
  br i1 %i.acf, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i231.i, label %.lr.ph.i.i.i.i224.i

.lr.ph.i.i.i.i224.i:                              ; preds = %bb.cj, %bb.cm
  %i.aec = phi i64 [ %i.aff, %bb.cm ], [ 3, %bb.cj ]
  %i.aed = phi i64 [ %i.afe, %bb.cm ], [ 2, %bb.cj ] ; 7 uses
  %.056.i.i.i.i225.i = phi i64 [ %.1.i.i.i.i230.i, %bb.cm ], [ 1, %bb.cj ] ; 6 uses
  %i.aee = icmp eq i64 %i.aed, %2
  br i1 %i.aee, label %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i235.i, label %bb.ck

.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i235.i: ; preds = %.lr.ph.i.i.i.i224.i
  %.pre.i.i.i.i236.i = load i32, ptr %.phi.trans.insert.i.i.i.i223.i, align 4, !tbaa !77
  br label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i233.i

bb.ck:                                            ; preds = %.lr.ph.i.i.i.i224.i
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.acd, i64 %i.aed
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !77 ; 4 uses
  %i.aeh = getelementptr [4 x i8], ptr %3, i64 %i.aed
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !77 ; 5 uses
  %i.aej = getelementptr [8 x i8], ptr %4, i64 %i.aed
  %i.aek = load i64, ptr %i.aej, align 8, !tbaa !37 ; 3 uses
  %i.ael = icmp sgt i32 %i.aeg, %i.aei
  br i1 %i.ael, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i233.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i226.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i226.i:   ; preds = %bb.ck
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr %i.ace, i64 %i.aed
  %i.aen = load i64, ptr %i.aem, align 8, !tbaa !37
  %i.aeo = icmp eq i32 %i.aeg, %i.aei
  %i.aep = icmp sgt i64 %i.aen, %i.aek
  %i.aeq = and i1 %i.aeo, %i.aep
  br i1 %i.aeq, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i233.i, label %bb.cl

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i233.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i226.i, %bb.ck, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i235.i
  %i.aer = phi i32 [ %.pre.i.i.i.i236.i, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i235.i ], [ %i.aeg, %bb.ck ], [ %i.aeg, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i226.i ] ; 3 uses
  %i.aes = icmp slt i32 %i.aer, %i.adv
  br i1 %i.aes, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i231.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i234.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i234.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i233.i
  %i.aet = getelementptr inbounds nuw [8 x i8], ptr %i.ace, i64 %i.aed
  %i.aeu = load i64, ptr %i.aet, align 8, !tbaa !37 ; 2 uses
  %i.aev = icmp eq i32 %i.aer, %i.adv
  %i.aew = icmp sgt i64 %i.ady, %i.aeu
  %i.aex = and i1 %i.aev, %i.aew
  br i1 %i.aex, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i231.i, label %bb.cm

bb.cl:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i226.i
  %i.aey = icmp slt i32 %i.aei, %i.adv
  br i1 %i.aey, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i231.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i227.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i227.i: ; preds = %bb.cl
  %i.aez = icmp eq i32 %i.aei, %i.adv
  %i.afa = icmp sgt i64 %i.ady, %i.aek
  %i.afb = and i1 %i.aez, %i.afa
  br i1 %i.afb, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i231.i, label %bb.cm

bb.cm:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i227.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i234.i
  %.sink71.i.i.i.i228.i = phi i32 [ %i.aer, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i234.i ], [ %i.aei, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i227.i ]
  %.sink.i.i.i.i229.i = phi i64 [ %i.aeu, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i234.i ], [ %i.aek, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i227.i ]
  %.1.i.i.i.i230.i = phi i64 [ %i.aed, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i234.i ], [ %i.aec, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i227.i ] ; 3 uses
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.acd, i64 %.056.i.i.i.i225.i
  store i32 %.sink71.i.i.i.i228.i, ptr %i.afc, align 4, !tbaa !77
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %i.ace, i64 %.056.i.i.i.i225.i
  store i64 %.sink.i.i.i.i229.i, ptr %i.afd, align 8, !tbaa !37
  %i.afe = shl i64 %.1.i.i.i.i230.i, 1            ; 3 uses
  %i.aff = or disjoint i64 %i.afe, 1
  %i.afg = icmp ugt i64 %i.afe, %2
  br i1 %i.afg, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i231.i, label %.lr.ph.i.i.i.i224.i, !llvm.loop !6

_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i231.i: ; preds = %bb.cm, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i227.i, %bb.cl, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i234.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i233.i, %bb.cj
  %.0.lcssa.i.i.i.i232.i = phi i64 [ 1, %bb.cj ], [ %.1.i.i.i.i230.i, %bb.cm ], [ %.056.i.i.i.i225.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i234.i ], [ %.056.i.i.i.i225.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i227.i ], [ %.056.i.i.i.i225.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i233.i ], [ %.056.i.i.i.i225.i, %bb.cl ] ; 2 uses
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %i.acd, i64 %.0.lcssa.i.i.i.i232.i
  store i32 %i.adv, ptr %i.afh, align 4, !tbaa !77
  %i.afi = getelementptr inbounds nuw [8 x i8], ptr %i.ace, i64 %.0.lcssa.i.i.i.i232.i
  store i64 %i.ady, ptr %i.afi, align 8, !tbaa !37
  br label %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i219.i

_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i219.i: ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i231.i, %bb.ci
  %i.afj = getelementptr inbounds nuw i8, ptr %.02854.i.i218.i, i64 %i.e
  %i.afk = add nuw i64 %.055.i.i217.i, 1          ; 2 uses
  %exitcond62.not.i.i220.i = icmp eq i64 %i.afk, %i.adh
  br i1 %exitcond62.not.i.i220.i, label %._crit_edge.i.i221.i, label %bb.ci, !llvm.loop !170

_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i207.i: ; preds = %.lr.ph.i.i.i.i.i.i202.i, %.preheader.i.i237.i, %._crit_edge.i.i221.i, %bb.ch, %..loopexit_crit_edge21.i.i.i.i.i.i206.i, %bb.cd
  %i.afl = icmp eq i64 %.sroa.12.0.i.i198.i, %.sroa.937.0.i.i197.i.ph
  br i1 %i.afl, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i207.i
  %i.afm = icmp eq i32 %.sroa.4.0.i.i199.i.ph, %i.aby
  br i1 %i.afm, label %"_ZN5faiss20with_HammingComputerILNS_9SIMDLevelE0EZNS_28binary_hash_knn_search_fixSLILS1_0EEEvRKNS_15IndexBinaryHashEPKhlPiPlRmSA_SA_E3$_0EEDciOT0_.exit", label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.afn = add nuw nsw i32 %.sroa.4.0.i.i199.i.ph, 1 ; 3 uses
  %i.afo = zext nneg i32 %i.afn to i64
  %notmask.i32.i.i213.i = shl nsw i64 -1, %i.afo
  %i.afp = xor i64 %notmask.i32.i.i213.i, -1      ; 2 uses
  %i.afq = sub nsw i32 %i.g, %i.afn
  %i.afr = zext nneg i32 %i.afq to i64
  %i.afs = shl i64 %i.afp, %i.afr
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i209.i.outer, !llvm.loop !171

bb.cp:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i207.i
  %i.aft = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.12.0.i.i198.i, i1 true) ; 2 uses
  %.not.i30.i.i208.i = icmp eq i64 %i.aft, 0
  br i1 %.not.i30.i.i208.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.afu = add nsw i64 %i.aft, -1
  %i.afv = shl nuw i64 3, %i.afu
  %i.afw = xor i64 %i.afv, %.sroa.12.0.i.i198.i
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i209.i.backedge

bb.cr:                                            ; preds = %bb.cp
  %i.afx = xor i64 %.sroa.12.0.i.i198.i, -1
  %i.afy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.afx, i1 true) ; 3 uses
  %i.afz = shl nsw i64 -1, %i.afy
  %i.aga = and i64 %i.afz, %.sroa.12.0.i.i198.i   ; 2 uses
  %i.agb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aga, i1 true)
  %i.agc = shl nuw i64 4, %i.afy
  %i.agd = add i64 %i.agc, -1
  %i.age = xor i64 %i.afy, -1
  %i.agf = add nsw i64 %i.agb, %i.age
  %i.agg = and i64 %i.agf, 4294967295
  %i.agh = shl i64 %i.agd, %i.agg
  %i.agi = xor i64 %i.agh, %i.aga
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i209.i.backedge

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i209.i.backedge: ; preds = %bb.cr, %bb.cq
  %.sroa.12.0.i.i198.i.be = phi i64 [ %i.agi, %bb.cr ], [ %i.afw, %bb.cq ]
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i209.i, !llvm.loop !171

bb.cs:                                            ; preds = %bb.a
  br i1 %.not.i.i.i316.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.agj = zext i8 %i.h to i32
  %notmask30.i.i.i257.i = shl nsw i32 -1, %i.g
  %i.agk = xor i32 %notmask30.i.i.i257.i, -1
  %i.agl = and i32 %i.agj, %i.agk
  %i.agm = zext nneg i32 %i.agl to i64
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i258.i

bb.cu:                                            ; preds = %bb.cs
  %i.agn = zext i8 %i.h to i64                    ; 3 uses
  %i.ago = add nsw i32 %i.g, -8
  %i.agp = icmp samesign ugt i32 %i.g, 16
  br i1 %i.agp, label %.lr.ph.i.preheader.i.i306.i, label %._crit_edge.i.i.i300.i

.lr.ph.i.preheader.i.i306.i:                      ; preds = %bb.cu
  %i.agq = add nsw i32 %i.g, -17                  ; 3 uses
  %i.agr = lshr i32 %i.agq, 3
  %narrow = add nuw nsw i32 %i.agr, 1
  %i.ags = zext nneg i32 %narrow to i64           ; 2 uses
  %xtraiter = and i64 %i.ags, 3                   ; 3 uses
  %i.agt = icmp ult i32 %i.agq, 24
  br i1 %i.agt, label %.lr.ph.i.i.i308.i.epil.preheader, label %.lr.ph.i.preheader.i.i306.i.new

.lr.ph.i.preheader.i.i306.i.new:                  ; preds = %.lr.ph.i.preheader.i.i306.i
  %unroll_iter = and i64 %i.ags, 1073741820
  br label %.lr.ph.i.i.i308.i

.lr.ph.i.i.i308.i:                                ; preds = %.lr.ph.i.i.i308.i, %.lr.ph.i.preheader.i.i306.i.new
  %indvars.iv.i.i.i309.i = phi i64 [ 8, %.lr.ph.i.preheader.i.i306.i.new ], [ %indvars.iv.next.i.i.i312.i.3, %.lr.ph.i.i.i308.i ] ; 2 uses
  %.02435.i.i.i310.i = phi i64 [ 1, %.lr.ph.i.preheader.i.i306.i.new ], [ %.024.i.i.i313.i.3, %.lr.ph.i.i.i308.i ] ; 5 uses
  %.02633.i.i.i311.i = phi i64 [ %i.agn, %.lr.ph.i.preheader.i.i306.i.new ], [ %i.aho, %.lr.ph.i.i.i308.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.i.i306.i.new ], [ %niter.next.3, %.lr.ph.i.i.i308.i ]
  %i.agu = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i310.i
  %i.agv = load i8, ptr %i.agu, align 1, !tbaa !32
  %i.agw = zext i8 %i.agv to i64
  %i.agx = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i310.i
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 1
  %i.agz = load i8, ptr %i.agy, align 1, !tbaa !32
  %i.aha = zext i8 %i.agz to i64
  %i.ahb = shl nuw nsw i64 %i.aha, 8
  %i.ahc = or disjoint i64 %i.ahb, %i.agw
  %i.ahd = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i310.i
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 2
  %i.ahf = load i8, ptr %i.ahe, align 1, !tbaa !32
  %i.ahg = zext i8 %i.ahf to i64
  %i.ahh = shl nuw nsw i64 %i.ahg, 16
  %i.ahi = or disjoint i64 %i.ahc, %i.ahh
  %i.ahj = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i310.i
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 3
  %i.ahl = load i8, ptr %i.ahk, align 1, !tbaa !32
  %i.ahm = zext i8 %i.ahl to i64
  %18 = shl nuw nsw i64 %i.ahm, 24
  %19 = or disjoint i64 %i.ahi, %18
  %i.ahn = shl i64 %19, %indvars.iv.i.i.i309.i
  %i.aho = or i64 %i.ahn, %.02633.i.i.i311.i      ; 3 uses
  %indvars.iv.next.i.i.i312.i.3 = add nuw nsw i64 %indvars.iv.i.i.i309.i, 32 ; 2 uses
  %.024.i.i.i313.i.3 = add nuw nsw i64 %.02435.i.i.i310.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.i.i315.i.unr-lcssa, label %.lr.ph.i.i.i308.i, !llvm.loop !0

._crit_edge.i.loopexit.i.i315.i.unr-lcssa:        ; preds = %.lr.ph.i.i.i308.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit.i.i315.i, label %.lr.ph.i.i.i308.i.epil.preheader

.lr.ph.i.i.i308.i.epil.preheader:                 ; preds = %._crit_edge.i.loopexit.i.i315.i.unr-lcssa, %.lr.ph.i.preheader.i.i306.i
  %indvars.iv.i.i.i309.i.epil.init = phi i64 [ 8, %.lr.ph.i.preheader.i.i306.i ], [ %indvars.iv.next.i.i.i312.i.3, %._crit_edge.i.loopexit.i.i315.i.unr-lcssa ]
  %.02435.i.i.i310.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader.i.i306.i ], [ %.024.i.i.i313.i.3, %._crit_edge.i.loopexit.i.i315.i.unr-lcssa ]
  %.02633.i.i.i311.i.epil.init = phi i64 [ %i.agn, %.lr.ph.i.preheader.i.i306.i ], [ %i.aho, %._crit_edge.i.loopexit.i.i315.i.unr-lcssa ]
  %lcmp.mod415 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod415)
  br label %.lr.ph.i.i.i308.i.epil

.lr.ph.i.i.i308.i.epil:                           ; preds = %.lr.ph.i.i.i308.i.epil, %.lr.ph.i.i.i308.i.epil.preheader
  %indvars.iv.i.i.i309.i.epil = phi i64 [ %indvars.iv.next.i.i.i312.i.epil, %.lr.ph.i.i.i308.i.epil ], [ %indvars.iv.i.i.i309.i.epil.init, %.lr.ph.i.i.i308.i.epil.preheader ] ; 2 uses
  %.02435.i.i.i310.i.epil = phi i64 [ %.024.i.i.i313.i.epil, %.lr.ph.i.i.i308.i.epil ], [ %.02435.i.i.i310.i.epil.init, %.lr.ph.i.i.i308.i.epil.preheader ] ; 2 uses
  %.02633.i.i.i311.i.epil = phi i64 [ %i.aht, %.lr.ph.i.i.i308.i.epil ], [ %.02633.i.i.i311.i.epil.init, %.lr.ph.i.i.i308.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i308.i.epil ], [ 0, %.lr.ph.i.i.i308.i.epil.preheader ]
  %i.ahp = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i310.i.epil
  %i.ahq = load i8, ptr %i.ahp, align 1, !tbaa !32
  %i.ahr = zext i8 %i.ahq to i64
  %i.ahs = shl i64 %i.ahr, %indvars.iv.i.i.i309.i.epil
  %i.aht = or i64 %i.ahs, %.02633.i.i.i311.i.epil ; 2 uses
  %indvars.iv.next.i.i.i312.i.epil = add nuw nsw i64 %indvars.iv.i.i.i309.i.epil, 8
  %.024.i.i.i313.i.epil = add nuw nsw i64 %.02435.i.i.i310.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.loopexit.i.i315.i, label %.lr.ph.i.i.i308.i.epil, !llvm.loop !172

._crit_edge.i.loopexit.i.i315.i:                  ; preds = %.lr.ph.i.i.i308.i.epil, %._crit_edge.i.loopexit.i.i315.i.unr-lcssa
  %.lcssa413 = phi i64 [ %i.aho, %._crit_edge.i.loopexit.i.i315.i.unr-lcssa ], [ %i.aht, %.lr.ph.i.i.i308.i.epil ]
  %i.ahu = add nsw i32 %i.g, -16
  %i.ahv = zext nneg i32 %i.agq to i64            ; 2 uses
  %i.ahw = lshr i64 %i.ahv, 3                     ; 2 uses
  %i.ahx = trunc nuw nsw i64 %i.ahw to i32
  %i.ahy = shl nuw nsw i32 %i.ahx, 3
  %i.ahz = sub nsw i32 %i.ahu, %i.ahy
  %i.aia = and i64 %i.ahv, 2147483640
  %i.aib = add nuw nsw i64 %i.aia, 16
  %i.aic = add nuw nsw i64 %i.ahw, 2
  br label %._crit_edge.i.i.i300.i

._crit_edge.i.i.i300.i:                           ; preds = %._crit_edge.i.loopexit.i.i315.i, %bb.cu
  %.027.lcssa.i.i.i301.i = phi i32 [ %i.ago, %bb.cu ], [ %i.ahz, %._crit_edge.i.loopexit.i.i315.i ]
  %.026.lcssa.i.i.i302.i = phi i64 [ %i.agn, %bb.cu ], [ %.lcssa413, %._crit_edge.i.loopexit.i.i315.i ]
  %.025.lcssa.i.i.i303.i = phi i64 [ 8, %bb.cu ], [ %i.aib, %._crit_edge.i.loopexit.i.i315.i ]
  %.024.lcssa.i.i.i304.i = phi i64 [ 1, %bb.cu ], [ %i.aic, %._crit_edge.i.loopexit.i.i315.i ]
  %i.aid = getelementptr inbounds nuw i8, ptr %1, i64 %.024.lcssa.i.i.i304.i
  %i.aie = load i8, ptr %i.aid, align 1, !tbaa !32
  %notmask.i.i.i305.i = shl nsw i32 -1, %.027.lcssa.i.i.i301.i
  %i.aif = xor i32 %notmask.i.i.i305.i, -1
  %i.aig = zext i8 %i.aie to i32
  %i.aih = and i32 %i.aig, %i.aif
  %i.aii = zext nneg i32 %i.aih to i64
  %i.aij = shl i64 %i.aii, %.025.lcssa.i.i.i303.i
  %i.aik = or i64 %i.aij, %.026.lcssa.i.i.i302.i
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i258.i

_ZN5faiss15BitstringReader4readEi.exit.i.i258.i:  ; preds = %._crit_edge.i.i.i300.i, %bb.ct
  %.0.i.i.i259.i = phi i64 [ %i.agm, %bb.ct ], [ %i.aik, %._crit_edge.i.i.i300.i ]
  %i.ail = load <8 x i64>, ptr %1, align 8, !tbaa !37
  %i.aim = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ain = load i32, ptr %i.aim, align 4, !tbaa !114
  %i.aio = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aip = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aiq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.air = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ais = getelementptr inbounds i8, ptr %3, i64 -4 ; 4 uses
  %i.ait = getelementptr inbounds i8, ptr %4, i64 -8 ; 4 uses
  %i.aiu = icmp ult i64 %2, 2
  %.phi.trans.insert.i.i.i.i283.i = getelementptr inbounds nuw [4 x i8], ptr %i.ais, i64 %2
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i272.i.outer

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i272.i.outer: ; preds = %bb.dh, %_ZN5faiss15BitstringReader4readEi.exit.i.i258.i
  %.sroa.937.0.i.i260.i.ph = phi i64 [ %i.ame, %bb.dh ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i258.i ]
  %.sroa.12.0.i.i261.i.ph = phi i64 [ %i.amh, %bb.dh ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i258.i ]
  %.sroa.4.0.i.i262.i.ph = phi i32 [ %i.amc, %bb.dh ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i258.i ] ; 2 uses
  %i.aiv = load ptr, ptr %i.aip, align 8
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i272.i

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i272.i: ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i272.i.backedge, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i272.i.outer
  %.sroa.12.0.i.i261.i = phi i64 [ %.sroa.12.0.i.i261.i.ph, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i272.i.outer ], [ %.sroa.12.0.i.i261.i.be, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i272.i.backedge ] ; 6 uses
  %i.aiw = xor i64 %.sroa.12.0.i.i261.i, %.0.i.i.i259.i ; 4 uses
  %i.aix = load i64, ptr %i.aio, align 8, !tbaa !115
  %.not.not.i.i.i.i263.i = icmp eq i64 %i.aix, 0
  br i1 %.not.not.i.i.i.i263.i, label %.preheader.i.i297.i, label %bb.cw

.preheader.i.i297.i:                              ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i272.i, %bb.cv
  %.sroa.06.0.in.i.i.i.i298.i = phi ptr [ %.sroa.06.0.i.i.i.i299.i, %bb.cv ], [ %i.air, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i272.i ]
  %.sroa.06.0.i.i.i.i299.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i298.i, align 8, !tbaa !54 ; 4 uses
  %i.aiy = icmp eq ptr %.sroa.06.0.i.i.i.i299.i, null
  br i1 %i.aiy, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i270.i, label %bb.cv

bb.cv:                                            ; preds = %.preheader.i.i297.i
  %i.aiz = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i299.i, i64 8
  %i.aja = load i64, ptr %i.aiz, align 8, !tbaa !37
  %i.ajb = icmp eq i64 %i.aiw, %i.aja
  br i1 %i.ajb, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i277.i, label %.preheader.i.i297.i, !llvm.loop !5

bb.cw:                                            ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i272.i
  %i.ajc = load i64, ptr %i.aiq, align 8, !tbaa !51 ; 2 uses
  %i.ajd = urem i64 %i.aiw, %i.ajc                ; 2 uses
  %i.aje = getelementptr inbounds nuw [8 x i8], ptr %i.aiv, i64 %i.ajd
  %i.ajf = load ptr, ptr %i.aje, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i.i.i264.i = icmp eq ptr %i.ajf, null
  br i1 %.not.i.i.i.i.i.i264.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i270.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !54 ; 3 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajg, i64 8
  %i.aji = load i64, ptr %i.ajh, align 8, !tbaa !37
  %i.ajj = icmp eq i64 %i.aiw, %i.aji
  br i1 %i.ajj, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i277.i, label %.lr.ph.i.i.i.i.i.i265.i

bb.cy:                                            ; preds = %bb.cz
  %i.ajk = icmp eq i64 %i.aiw, %i.ajn
  br i1 %i.ajk, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i277.i, label %.lr.ph.i.i.i.i.i.i265.i, !llvm.loop !1

.lr.ph.i.i.i.i.i.i265.i:                          ; preds = %bb.cx, %bb.cy
  %.020.i.i.i.i.i.i266.i = phi ptr [ %i.ajl, %bb.cy ], [ %i.ajg, %bb.cx ]
  %i.ajl = load ptr, ptr %.020.i.i.i.i.i.i266.i, align 8, !tbaa !54 ; 4 uses
  %.not18.i.i.i.i.i.i267.i = icmp eq ptr %i.ajl, null
  br i1 %.not18.i.i.i.i.i.i267.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i270.i, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph.i.i.i.i.i.i265.i
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 8
  %i.ajn = load i64, ptr %i.ajm, align 8, !tbaa !37 ; 2 uses
  %i.ajo = urem i64 %i.ajn, %i.ajc
  %.not19.i.i.i.i.i.i268.i = icmp eq i64 %i.ajo, %i.ajd
  br i1 %.not19.i.i.i.i.i.i268.i, label %bb.cy, label %..loopexit_crit_edge21.i.i.i.i.i.i269.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i.i.i269.i:          ; preds = %bb.cz
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i270.i, !llvm.loop !1

_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i277.i: ; preds = %bb.cy, %bb.cv, %bb.cx
  %.sroa.06.1.i.i.i.i278.i = phi ptr [ %.sroa.06.0.i.i.i.i299.i, %bb.cv ], [ %i.ajg, %bb.cx ], [ %i.ajl, %bb.cy ] ; 3 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i278.i, i64 16
  %i.ajq = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i278.i, i64 24
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !112 ; 2 uses
  %i.ajs = load ptr, ptr %i.ajp, align 8, !tbaa !88 ; 3 uses
  %i.ajt = ptrtoint ptr %i.ajr to i64
  %i.aju = ptrtoint ptr %i.ajs to i64
  %i.ajv = sub i64 %i.ajt, %i.aju
  %i.ajw = ashr exact i64 %i.ajv, 3               ; 2 uses
  %i.ajx = icmp eq ptr %i.ajr, %i.ajs
  br i1 %i.ajx, label %bb.da, label %.lr.ph.i.i279.i

bb.da:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i277.i
  %i.ajy = load i64, ptr %5, align 8, !tbaa !37
  %i.ajz = add i64 %i.ajy, 1
  store i64 %i.ajz, ptr %5, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i270.i

.lr.ph.i.i279.i:                                  ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i277.i
  %i.aka = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i278.i, i64 40
  %i.akb = load ptr, ptr %i.aka, align 8, !tbaa !86
  br label %bb.db

._crit_edge.i.i281.i:                             ; preds = %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i280.i
  %i.akc = load i64, ptr %7, align 8, !tbaa !37
  %i.akd = add i64 %i.akc, %i.ajw
  store i64 %i.akd, ptr %7, align 8, !tbaa !37
  %i.ake = load i64, ptr %6, align 8, !tbaa !37
  %i.akf = add i64 %i.ake, 1
  store i64 %i.akf, ptr %6, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i270.i

bb.db:                                            ; preds = %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i280.i, %.lr.ph.i.i279.i
  %.056.i.i.i = phi i64 [ 0, %.lr.ph.i.i279.i ], [ %i.alz, %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i280.i ] ; 2 uses
  %.02855.i.i.i = phi ptr [ %i.akb, %.lr.ph.i.i279.i ], [ %i.aly, %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i280.i ] ; 2 uses
  %i.akg = load <8 x i64>, ptr %.02855.i.i.i, align 8, !tbaa !37
  %i.akh = xor <8 x i64> %i.akg, %i.ail
  %i.aki = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.akh)
  %i.akj = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.aki)
  %i.akk = trunc nuw nsw i64 %i.akj to i32        ; 6 uses
  %i.akl = uitofp nneg i32 %i.akk to float
  %i.akm = getelementptr inbounds nuw [8 x i8], ptr %i.ajs, i64 %.056.i.i.i
  %i.akn = load i64, ptr %i.akm, align 8, !tbaa !37 ; 3 uses
  %i.ako = load i32, ptr %3, align 4, !tbaa !77
  %i.akp = sitofp i32 %i.ako to float
  %i.akq = fcmp olt float %i.akl, %i.akp
  br i1 %i.akq, label %bb.dc, label %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i280.i

bb.dc:                                            ; preds = %bb.db
  br i1 %i.aiu, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i291.i, label %.lr.ph.i.i.i.i284.i

.lr.ph.i.i.i.i284.i:                              ; preds = %bb.dc, %bb.df
  %i.akr = phi i64 [ %i.alu, %bb.df ], [ 3, %bb.dc ]
  %i.aks = phi i64 [ %i.alt, %bb.df ], [ 2, %bb.dc ] ; 7 uses
  %.056.i.i.i.i285.i = phi i64 [ %.1.i.i.i.i290.i, %bb.df ], [ 1, %bb.dc ] ; 6 uses
  %i.akt = icmp eq i64 %i.aks, %2
  br i1 %i.akt, label %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i295.i, label %bb.dd

.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i295.i: ; preds = %.lr.ph.i.i.i.i284.i
  %.pre.i.i.i.i296.i = load i32, ptr %.phi.trans.insert.i.i.i.i283.i, align 4, !tbaa !77
  br label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i293.i

bb.dd:                                            ; preds = %.lr.ph.i.i.i.i284.i
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %i.ais, i64 %i.aks
  %i.akv = load i32, ptr %i.aku, align 4, !tbaa !77 ; 4 uses
  %i.akw = getelementptr [4 x i8], ptr %3, i64 %i.aks
  %i.akx = load i32, ptr %i.akw, align 4, !tbaa !77 ; 5 uses
  %i.aky = getelementptr [8 x i8], ptr %4, i64 %i.aks
  %i.akz = load i64, ptr %i.aky, align 8, !tbaa !37 ; 3 uses
  %i.ala = icmp sgt i32 %i.akv, %i.akx
  br i1 %i.ala, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i293.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i286.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i286.i:   ; preds = %bb.dd
  %i.alb = getelementptr inbounds nuw [8 x i8], ptr %i.ait, i64 %i.aks
  %i.alc = load i64, ptr %i.alb, align 8, !tbaa !37
  %i.ald = icmp eq i32 %i.akv, %i.akx
  %i.ale = icmp sgt i64 %i.alc, %i.akz
  %i.alf = and i1 %i.ald, %i.ale
  br i1 %i.alf, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i293.i, label %bb.de

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i293.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i286.i, %bb.dd, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i295.i
  %i.alg = phi i32 [ %.pre.i.i.i.i296.i, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i295.i ], [ %i.akv, %bb.dd ], [ %i.akv, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i286.i ] ; 3 uses
  %i.alh = icmp slt i32 %i.alg, %i.akk
  br i1 %i.alh, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i291.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i294.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i294.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i293.i
  %i.ali = getelementptr inbounds nuw [8 x i8], ptr %i.ait, i64 %i.aks
  %i.alj = load i64, ptr %i.ali, align 8, !tbaa !37 ; 2 uses
  %i.alk = icmp eq i32 %i.alg, %i.akk
  %i.all = icmp sgt i64 %i.akn, %i.alj
  %i.alm = and i1 %i.alk, %i.all
  br i1 %i.alm, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i291.i, label %bb.df

bb.de:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i286.i
  %i.aln = icmp slt i32 %i.akx, %i.akk
  br i1 %i.aln, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i291.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i287.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i287.i: ; preds = %bb.de
  %i.alo = icmp eq i32 %i.akx, %i.akk
  %i.alp = icmp sgt i64 %i.akn, %i.akz
  %i.alq = and i1 %i.alo, %i.alp
  br i1 %i.alq, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i291.i, label %bb.df

bb.df:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i287.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i294.i
  %.sink71.i.i.i.i288.i = phi i32 [ %i.alg, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i294.i ], [ %i.akx, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i287.i ]
  %.sink.i.i.i.i289.i = phi i64 [ %i.alj, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i294.i ], [ %i.akz, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i287.i ]
  %.1.i.i.i.i290.i = phi i64 [ %i.aks, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i294.i ], [ %i.akr, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i287.i ] ; 3 uses
  %i.alr = getelementptr inbounds nuw [4 x i8], ptr %i.ais, i64 %.056.i.i.i.i285.i
  store i32 %.sink71.i.i.i.i288.i, ptr %i.alr, align 4, !tbaa !77
  %i.als = getelementptr inbounds nuw [8 x i8], ptr %i.ait, i64 %.056.i.i.i.i285.i
  store i64 %.sink.i.i.i.i289.i, ptr %i.als, align 8, !tbaa !37
  %i.alt = shl i64 %.1.i.i.i.i290.i, 1            ; 3 uses
  %i.alu = or disjoint i64 %i.alt, 1
  %i.alv = icmp ugt i64 %i.alt, %2
  br i1 %i.alv, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i291.i, label %.lr.ph.i.i.i.i284.i, !llvm.loop !6

_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i291.i: ; preds = %bb.df, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i287.i, %bb.de, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i294.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i293.i, %bb.dc
  %.0.lcssa.i.i.i.i292.i = phi i64 [ 1, %bb.dc ], [ %.1.i.i.i.i290.i, %bb.df ], [ %.056.i.i.i.i285.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i294.i ], [ %.056.i.i.i.i285.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i287.i ], [ %.056.i.i.i.i285.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i293.i ], [ %.056.i.i.i.i285.i, %bb.de ] ; 2 uses
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr %i.ais, i64 %.0.lcssa.i.i.i.i292.i
  store i32 %i.akk, ptr %i.alw, align 4, !tbaa !77
  %i.alx = getelementptr inbounds nuw [8 x i8], ptr %i.ait, i64 %.0.lcssa.i.i.i.i292.i
  store i64 %i.akn, ptr %i.alx, align 8, !tbaa !37
  br label %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i280.i

_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i280.i: ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i291.i, %bb.db
  %i.aly = getelementptr inbounds nuw i8, ptr %.02855.i.i.i, i64 %i.e
  %i.alz = add nuw i64 %.056.i.i.i, 1             ; 2 uses
  %exitcond63.not.i.i.i = icmp eq i64 %i.alz, %i.ajw
  br i1 %exitcond63.not.i.i.i, label %._crit_edge.i.i281.i, label %bb.db, !llvm.loop !173

_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i270.i: ; preds = %.lr.ph.i.i.i.i.i.i265.i, %.preheader.i.i297.i, %._crit_edge.i.i281.i, %bb.da, %..loopexit_crit_edge21.i.i.i.i.i.i269.i, %bb.cw
  %i.ama = icmp eq i64 %.sroa.12.0.i.i261.i, %.sroa.937.0.i.i260.i.ph
  br i1 %i.ama, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i270.i
  %i.amb = icmp eq i32 %.sroa.4.0.i.i262.i.ph, %i.ain
  br i1 %i.amb, label %"_ZN5faiss20with_HammingComputerILNS_9SIMDLevelE0EZNS_28binary_hash_knn_search_fixSLILS1_0EEEvRKNS_15IndexBinaryHashEPKhlPiPlRmSA_SA_E3$_0EEDciOT0_.exit", label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.amc = add nuw nsw i32 %.sroa.4.0.i.i262.i.ph, 1 ; 3 uses
  %i.amd = zext nneg i32 %i.amc to i64
  %notmask.i32.i.i276.i = shl nsw i64 -1, %i.amd
  %i.ame = xor i64 %notmask.i32.i.i276.i, -1      ; 2 uses
  %i.amf = sub nsw i32 %i.g, %i.amc
  %i.amg = zext nneg i32 %i.amf to i64
  %i.amh = shl i64 %i.ame, %i.amg
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i272.i.outer, !llvm.loop !174

bb.di:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i270.i
  %i.ami = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.12.0.i.i261.i, i1 true) ; 2 uses
  %.not.i30.i.i271.i = icmp eq i64 %i.ami, 0
  br i1 %.not.i30.i.i271.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.amj = add nsw i64 %i.ami, -1
  %i.amk = shl nuw i64 3, %i.amj
  %i.aml = xor i64 %i.amk, %.sroa.12.0.i.i261.i
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i272.i.backedge

bb.dk:                                            ; preds = %bb.di
  %i.amm = xor i64 %.sroa.12.0.i.i261.i, -1
  %i.amn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.amm, i1 true) ; 3 uses
  %i.amo = shl nsw i64 -1, %i.amn
  %i.amp = and i64 %i.amo, %.sroa.12.0.i.i261.i   ; 2 uses
  %i.amq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.amp, i1 true)
  %i.amr = shl nuw i64 4, %i.amn
  %i.ams = add i64 %i.amr, -1
  %i.amt = xor i64 %i.amn, -1
  %i.amu = add nsw i64 %i.amq, %i.amt
  %i.amv = and i64 %i.amu, 4294967295
  %i.amw = shl i64 %i.ams, %i.amv
  %i.amx = xor i64 %i.amw, %i.amp
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i272.i.backedge

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i272.i.backedge: ; preds = %bb.dk, %bb.dj
  %.sroa.12.0.i.i261.i.be = phi i64 [ %i.amx, %bb.dk ], [ %i.aml, %bb.dj ]
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i272.i, !llvm.loop !174

bb.dl:                                            ; preds = %bb.a
  br i1 %.not.i.i.i316.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.amy = zext i8 %i.h to i32
  %notmask30.i.i.i317.i = shl nsw i32 -1, %i.g
  %i.amz = xor i32 %notmask30.i.i.i317.i, -1
  %i.ana = and i32 %i.amy, %i.amz
  %i.anb = zext nneg i32 %i.ana to i64
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i318.i

bb.dn:                                            ; preds = %bb.dl
  %i.anc = zext i8 %i.h to i64                    ; 3 uses
  %i.and = add nsw i32 %i.g, -8
  %i.ane = icmp samesign ugt i32 %i.g, 16
  br i1 %i.ane, label %.lr.ph.i.preheader.i.i364.i, label %._crit_edge.i.i.i358.i

.lr.ph.i.preheader.i.i364.i:                      ; preds = %bb.dn
  %i.anf = add nsw i32 %i.g, -17                  ; 3 uses
  %i.ang = lshr i32 %i.anf, 3
  %narrow463 = add nuw nsw i32 %i.ang, 1
  %i.anh = zext nneg i32 %narrow463 to i64        ; 2 uses
  %xtraiter451 = and i64 %i.anh, 3                ; 3 uses
  %i.ani = icmp ult i32 %i.anf, 24
  br i1 %i.ani, label %.lr.ph.i.i.i366.i.epil.preheader, label %.lr.ph.i.preheader.i.i364.i.new

.lr.ph.i.preheader.i.i364.i.new:                  ; preds = %.lr.ph.i.preheader.i.i364.i
  %unroll_iter456 = and i64 %i.anh, 1073741820
  br label %.lr.ph.i.i.i366.i

.lr.ph.i.i.i366.i:                                ; preds = %.lr.ph.i.i.i366.i, %.lr.ph.i.preheader.i.i364.i.new
  %indvars.iv.i.i.i367.i = phi i64 [ 8, %.lr.ph.i.preheader.i.i364.i.new ], [ %indvars.iv.next.i.i.i370.i.3, %.lr.ph.i.i.i366.i ] ; 2 uses
  %.02435.i.i.i368.i = phi i64 [ 1, %.lr.ph.i.preheader.i.i364.i.new ], [ %.024.i.i.i371.i.3, %.lr.ph.i.i.i366.i ] ; 5 uses
  %.02633.i.i.i369.i = phi i64 [ %i.anc, %.lr.ph.i.preheader.i.i364.i.new ], [ %i.aod, %.lr.ph.i.i.i366.i ]
  %niter457 = phi i64 [ 0, %.lr.ph.i.preheader.i.i364.i.new ], [ %niter457.next.3, %.lr.ph.i.i.i366.i ]
  %i.anj = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i368.i
  %i.ank = load i8, ptr %i.anj, align 1, !tbaa !32
  %i.anl = zext i8 %i.ank to i64
  %i.anm = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i368.i
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anm, i64 1
  %i.ano = load i8, ptr %i.ann, align 1, !tbaa !32
  %i.anp = zext i8 %i.ano to i64
  %i.anq = shl nuw nsw i64 %i.anp, 8
  %i.anr = or disjoint i64 %i.anq, %i.anl
  %i.ans = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i368.i
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 2
  %i.anu = load i8, ptr %i.ant, align 1, !tbaa !32
  %i.anv = zext i8 %i.anu to i64
  %i.anw = shl nuw nsw i64 %i.anv, 16
  %i.anx = or disjoint i64 %i.anr, %i.anw
  %i.any = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i368.i
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 3
  %i.aoa = load i8, ptr %i.anz, align 1, !tbaa !32
  %i.aob = zext i8 %i.aoa to i64
  %20 = shl nuw nsw i64 %i.aob, 24
  %21 = or disjoint i64 %i.anx, %20
  %i.aoc = shl i64 %21, %indvars.iv.i.i.i367.i
  %i.aod = or i64 %i.aoc, %.02633.i.i.i369.i      ; 3 uses
  %indvars.iv.next.i.i.i370.i.3 = add nuw nsw i64 %indvars.iv.i.i.i367.i, 32 ; 2 uses
  %.024.i.i.i371.i.3 = add nuw nsw i64 %.02435.i.i.i368.i, 4 ; 2 uses
  %niter457.next.3 = add nuw i64 %niter457, 4     ; 2 uses
  %niter457.ncmp.3 = icmp eq i64 %niter457.next.3, %unroll_iter456
  br i1 %niter457.ncmp.3, label %._crit_edge.i.loopexit.i.i373.i.unr-lcssa, label %.lr.ph.i.i.i366.i, !llvm.loop !0

._crit_edge.i.loopexit.i.i373.i.unr-lcssa:        ; preds = %.lr.ph.i.i.i366.i
  %lcmp.mod453.not = icmp eq i64 %xtraiter451, 0
  br i1 %lcmp.mod453.not, label %._crit_edge.i.loopexit.i.i373.i, label %.lr.ph.i.i.i366.i.epil.preheader

.lr.ph.i.i.i366.i.epil.preheader:                 ; preds = %._crit_edge.i.loopexit.i.i373.i.unr-lcssa, %.lr.ph.i.preheader.i.i364.i
  %indvars.iv.i.i.i367.i.epil.init = phi i64 [ 8, %.lr.ph.i.preheader.i.i364.i ], [ %indvars.iv.next.i.i.i370.i.3, %._crit_edge.i.loopexit.i.i373.i.unr-lcssa ]
  %.02435.i.i.i368.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader.i.i364.i ], [ %.024.i.i.i371.i.3, %._crit_edge.i.loopexit.i.i373.i.unr-lcssa ]
  %.02633.i.i.i369.i.epil.init = phi i64 [ %i.anc, %.lr.ph.i.preheader.i.i364.i ], [ %i.aod, %._crit_edge.i.loopexit.i.i373.i.unr-lcssa ]
  %lcmp.mod455 = icmp ne i64 %xtraiter451, 0
  tail call void @llvm.assume(i1 %lcmp.mod455)
  br label %.lr.ph.i.i.i366.i.epil

.lr.ph.i.i.i366.i.epil:                           ; preds = %.lr.ph.i.i.i366.i.epil, %.lr.ph.i.i.i366.i.epil.preheader
  %indvars.iv.i.i.i367.i.epil = phi i64 [ %indvars.iv.next.i.i.i370.i.epil, %.lr.ph.i.i.i366.i.epil ], [ %indvars.iv.i.i.i367.i.epil.init, %.lr.ph.i.i.i366.i.epil.preheader ] ; 2 uses
  %.02435.i.i.i368.i.epil = phi i64 [ %.024.i.i.i371.i.epil, %.lr.ph.i.i.i366.i.epil ], [ %.02435.i.i.i368.i.epil.init, %.lr.ph.i.i.i366.i.epil.preheader ] ; 2 uses
  %.02633.i.i.i369.i.epil = phi i64 [ %i.aoi, %.lr.ph.i.i.i366.i.epil ], [ %.02633.i.i.i369.i.epil.init, %.lr.ph.i.i.i366.i.epil.preheader ]
  %epil.iter452 = phi i64 [ %epil.iter452.next, %.lr.ph.i.i.i366.i.epil ], [ 0, %.lr.ph.i.i.i366.i.epil.preheader ]
  %i.aoe = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i368.i.epil
  %i.aof = load i8, ptr %i.aoe, align 1, !tbaa !32
  %i.aog = zext i8 %i.aof to i64
  %i.aoh = shl i64 %i.aog, %indvars.iv.i.i.i367.i.epil
  %i.aoi = or i64 %i.aoh, %.02633.i.i.i369.i.epil ; 2 uses
  %indvars.iv.next.i.i.i370.i.epil = add nuw nsw i64 %indvars.iv.i.i.i367.i.epil, 8
  %.024.i.i.i371.i.epil = add nuw nsw i64 %.02435.i.i.i368.i.epil, 1
  %epil.iter452.next = add i64 %epil.iter452, 1   ; 2 uses
  %epil.iter452.cmp.not = icmp eq i64 %epil.iter452.next, %xtraiter451
  br i1 %epil.iter452.cmp.not, label %._crit_edge.i.loopexit.i.i373.i, label %.lr.ph.i.i.i366.i.epil, !llvm.loop !175

._crit_edge.i.loopexit.i.i373.i:                  ; preds = %.lr.ph.i.i.i366.i.epil, %._crit_edge.i.loopexit.i.i373.i.unr-lcssa
  %.lcssa = phi i64 [ %i.aod, %._crit_edge.i.loopexit.i.i373.i.unr-lcssa ], [ %i.aoi, %.lr.ph.i.i.i366.i.epil ]
  %i.aoj = add nsw i32 %i.g, -16
  %i.aok = zext nneg i32 %i.anf to i64            ; 2 uses
  %i.aol = lshr i64 %i.aok, 3                     ; 2 uses
  %i.aom = trunc nuw nsw i64 %i.aol to i32
  %i.aon = shl nuw nsw i32 %i.aom, 3
  %i.aoo = sub nsw i32 %i.aoj, %i.aon
  %i.aop = and i64 %i.aok, 2147483640
  %i.aoq = add nuw nsw i64 %i.aop, 16
  %i.aor = add nuw nsw i64 %i.aol, 2
  br label %._crit_edge.i.i.i358.i

._crit_edge.i.i.i358.i:                           ; preds = %._crit_edge.i.loopexit.i.i373.i, %bb.dn
  %.027.lcssa.i.i.i359.i = phi i32 [ %i.and, %bb.dn ], [ %i.aoo, %._crit_edge.i.loopexit.i.i373.i ]
  %.026.lcssa.i.i.i360.i = phi i64 [ %i.anc, %bb.dn ], [ %.lcssa, %._crit_edge.i.loopexit.i.i373.i ]
  %.025.lcssa.i.i.i361.i = phi i64 [ 8, %bb.dn ], [ %i.aoq, %._crit_edge.i.loopexit.i.i373.i ]
  %.024.lcssa.i.i.i362.i = phi i64 [ 1, %bb.dn ], [ %i.aor, %._crit_edge.i.loopexit.i.i373.i ]
  %i.aos = getelementptr inbounds nuw i8, ptr %1, i64 %.024.lcssa.i.i.i362.i
  %i.aot = load i8, ptr %i.aos, align 1, !tbaa !32
  %notmask.i.i.i363.i = shl nsw i32 -1, %.027.lcssa.i.i.i359.i
  %i.aou = xor i32 %notmask.i.i.i363.i, -1
  %i.aov = zext i8 %i.aot to i32
  %i.aow = and i32 %i.aov, %i.aou
  %i.aox = zext nneg i32 %i.aow to i64
  %i.aoy = shl i64 %i.aox, %.025.lcssa.i.i.i361.i
  %i.aoz = or i64 %i.aoy, %.026.lcssa.i.i.i360.i
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i318.i

_ZN5faiss15BitstringReader4readEi.exit.i.i318.i:  ; preds = %._crit_edge.i.i.i358.i, %bb.dm
  %.0.i.i.i319.i = phi i64 [ %i.anb, %bb.dm ], [ %i.aoz, %._crit_edge.i.i.i358.i ]
  %i.apa = sdiv i32 %i.b, 8                       ; 10 uses
  %i.apb = srem i32 %i.b, 8                       ; 4 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.apd = load i32, ptr %i.apc, align 4, !tbaa !114
  %i.ape = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.apf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.apg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aph = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.api = and i32 %i.apa, 7                      ; 3 uses
  %.not.i33.i.i.i = icmp eq i32 %i.apb, 0
  %i.apj = shl nsw i32 %i.apa, 3
  %i.apk = sext i32 %i.apj to i64                 ; 2 uses
  %i.apl = getelementptr inbounds i8, ptr %1, i64 %i.apk ; 3 uses
  %i.apm = icmp sgt i32 %i.apb, 3
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apl, i64 4
  %i.apo = add nsw i32 %i.apb, -4
  %i.app = getelementptr inbounds i8, ptr %3, i64 -4 ; 4 uses
  %i.apq = getelementptr inbounds i8, ptr %4, i64 -8 ; 4 uses
  %i.apr = icmp ult i64 %2, 2
  %.phi.trans.insert.i.i.i.i341.i = getelementptr inbounds nuw [4 x i8], ptr %i.app, i64 %2
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i331.i.outer

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i331.i.outer: ; preds = %bb.ep, %_ZN5faiss15BitstringReader4readEi.exit.i.i318.i
  %.sroa.939.0.i.i.i.ph = phi i64 [ %i.awz, %bb.ep ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i318.i ]
  %.sroa.12.0.i.i320.i.ph = phi i64 [ %i.axc, %bb.ep ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i318.i ]
  %.sroa.4.0.i.i321.i.ph = phi i32 [ %i.awx, %bb.ep ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i318.i ] ; 2 uses
  %i.aps = load ptr, ptr %i.apf, align 8
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i331.i

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i331.i: ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i331.i.backedge, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i331.i.outer
  %.sroa.12.0.i.i320.i = phi i64 [ %.sroa.12.0.i.i320.i.ph, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i331.i.outer ], [ %.sroa.12.0.i.i320.i.be, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i331.i.backedge ] ; 6 uses
  %i.apt = xor i64 %.sroa.12.0.i.i320.i, %.0.i.i.i319.i ; 4 uses
  %i.apu = load i64, ptr %i.ape, align 8, !tbaa !115
  %.not.not.i.i.i.i322.i = icmp eq i64 %i.apu, 0
  br i1 %.not.not.i.i.i.i322.i, label %.preheader.i.i355.i, label %bb.dp

.preheader.i.i355.i:                              ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i331.i, %bb.do
  %.sroa.06.0.in.i.i.i.i356.i = phi ptr [ %.sroa.06.0.i.i.i.i357.i, %bb.do ], [ %i.aph, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i331.i ]
  %.sroa.06.0.i.i.i.i357.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i356.i, align 8, !tbaa !54 ; 4 uses
  %i.apv = icmp eq ptr %.sroa.06.0.i.i.i.i357.i, null
  br i1 %i.apv, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i329.i, label %bb.do

bb.do:                                            ; preds = %.preheader.i.i355.i
  %i.apw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i357.i, i64 8
  %i.apx = load i64, ptr %i.apw, align 8, !tbaa !37
  %i.apy = icmp eq i64 %i.apt, %i.apx
  br i1 %i.apy, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i335.i, label %.preheader.i.i355.i, !llvm.loop !5

bb.dp:                                            ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i331.i
  %i.apz = load i64, ptr %i.apg, align 8, !tbaa !51 ; 2 uses
  %i.aqa = urem i64 %i.apt, %i.apz                ; 2 uses
  %i.aqb = getelementptr inbounds nuw [8 x i8], ptr %i.aps, i64 %i.aqa
  %i.aqc = load ptr, ptr %i.aqb, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i.i.i323.i = icmp eq ptr %i.aqc, null
  br i1 %.not.i.i.i.i.i.i323.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i329.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.aqd = load ptr, ptr %i.aqc, align 8, !tbaa !54 ; 3 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqd, i64 8
  %i.aqf = load i64, ptr %i.aqe, align 8, !tbaa !37
  %i.aqg = icmp eq i64 %i.apt, %i.aqf
  br i1 %i.aqg, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i335.i, label %.lr.ph.i.i.i.i.i.i324.i

bb.dr:                                            ; preds = %bb.ds
  %i.aqh = icmp eq i64 %i.apt, %i.aqk
  br i1 %i.aqh, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i335.i, label %.lr.ph.i.i.i.i.i.i324.i, !llvm.loop !1

.lr.ph.i.i.i.i.i.i324.i:                          ; preds = %bb.dq, %bb.dr
  %.020.i.i.i.i.i.i325.i = phi ptr [ %i.aqi, %bb.dr ], [ %i.aqd, %bb.dq ]
  %i.aqi = load ptr, ptr %.020.i.i.i.i.i.i325.i, align 8, !tbaa !54 ; 4 uses
  %.not18.i.i.i.i.i.i326.i = icmp eq ptr %i.aqi, null
  br i1 %.not18.i.i.i.i.i.i326.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i329.i, label %bb.ds

bb.ds:                                            ; preds = %.lr.ph.i.i.i.i.i.i324.i
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 8
  %i.aqk = load i64, ptr %i.aqj, align 8, !tbaa !37 ; 2 uses
  %i.aql = urem i64 %i.aqk, %i.apz
  %.not19.i.i.i.i.i.i327.i = icmp eq i64 %i.aql, %i.aqa
  br i1 %.not19.i.i.i.i.i.i327.i, label %bb.dr, label %..loopexit_crit_edge21.i.i.i.i.i.i328.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i.i.i328.i:          ; preds = %bb.ds
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i329.i, !llvm.loop !1

_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i335.i: ; preds = %bb.dr, %bb.do, %bb.dq
  %.sroa.06.1.i.i.i.i336.i = phi ptr [ %.sroa.06.0.i.i.i.i357.i, %bb.do ], [ %i.aqd, %bb.dq ], [ %i.aqi, %bb.dr ] ; 3 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i336.i, i64 16
  %i.aqn = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i336.i, i64 24
  %i.aqo = load ptr, ptr %i.aqn, align 8, !tbaa !112 ; 2 uses
  %i.aqp = load ptr, ptr %i.aqm, align 8, !tbaa !88 ; 3 uses
  %i.aqq = ptrtoint ptr %i.aqo to i64
  %i.aqr = ptrtoint ptr %i.aqp to i64
  %i.aqs = sub i64 %i.aqq, %i.aqr
  %i.aqt = ashr exact i64 %i.aqs, 3               ; 2 uses
  %i.aqu = icmp eq ptr %i.aqo, %i.aqp
  br i1 %i.aqu, label %bb.dt, label %.lr.ph.preheader.i.i.i

bb.dt:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i335.i
  %i.aqv = load i64, ptr %5, align 8, !tbaa !37
  %i.aqw = add i64 %i.aqv, 1
  store i64 %i.aqw, ptr %5, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i329.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i335.i
  %i.aqx = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i336.i, i64 40
  %i.aqy = load ptr, ptr %i.aqx, align 8, !tbaa !86
  br label %.lr.ph.i.i337.i

._crit_edge.i.i339.i:                             ; preds = %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i338.i
  %i.aqz = load i64, ptr %7, align 8, !tbaa !37
  %i.ara = add i64 %i.aqz, %i.aqt
  store i64 %i.ara, ptr %7, align 8, !tbaa !37
  %i.arb = load i64, ptr %6, align 8, !tbaa !37
  %i.arc = add i64 %i.arb, 1
  store i64 %i.arc, ptr %6, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i329.i

.lr.ph.i.i337.i:                                  ; preds = %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i338.i, %.lr.ph.preheader.i.i.i
  %.057.i.i.i = phi i64 [ %i.awu, %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i338.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.02856.i.i.i = phi ptr [ %i.awt, %_ZN5faiss12_GLOBAL__N_116KnnSearchResults3addEfl.exit.i.i338.i ], [ %i.aqy, %.lr.ph.preheader.i.i.i ] ; 10 uses
  switch i32 %i.api, label %default.unreachable [
    i32 7, label %bb.dw
    i32 6, label %bb.dx
    i32 5, label %bb.dy
    i32 4, label %bb.dz
    i32 3, label %bb.ea
    i32 2, label %bb.eb
    i32 1, label %bb.ec
    i32 0, label %bb.du
  ]

default.unreachable:                              ; preds = %.lr.ph.i.i337.i
  unreachable

bb.du:                                            ; preds = %bb.ec, %.lr.ph.i.i337.i
  %.090.i.i.i.i = phi i32 [ %i.auf, %bb.ec ], [ %i.api, %.lr.ph.i.i337.i ] ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN5faiss21hamming_popcount_tailEPKmS1_iiPKhS3_i:bb.a
bb.f:                                             ; preds = %bb.a, %bb.e
  %.393 = phi i32 [ %i.ag, %bb.e ], [ 0, %bb.a ]
  %.385 = phi i32 [ %i.ah, %bb.e ], [ %2, %bb.a ] ; 2 uses
  %.3 = phi i32 [ %.2, %bb.e ], [ %i.a, %bb.a ]
  %i.ai = sext i32 %.385 to i64                   ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !37
  %i.al = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ai
  %i.am = load i64, ptr %i.al, align 8, !tbaa !37
  %i.an = xor i64 %i.am, %i.ak
  %i.ao = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.an)
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = add nsw i32 %.393, %i.ap
  %i.ar = add nsw i32 %.385, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.494 = phi i32 [ %i.aq, %bb.f ], [ 0, %bb.a ]
  %.486 = phi i32 [ %i.ar, %bb.f ], [ %2, %bb.a ] ; 2 uses
  %.4 = phi i32 [ %.3, %bb.f ], [ %i.a, %bb.a ]
  %i.as = sext i32 %.486 to i64                   ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !37
  %i.av = getelementptr inbounds [8 x i8], ptr %1, i64 %i.as
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !37
  %i.ax = xor i64 %i.aw, %i.au
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ax)
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = add nsw i32 %.494, %i.az
  %i.bb = add nsw i32 %.486, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.595 = phi i32 [ %i.ba, %bb.g ], [ 0, %bb.a ]
  %.587 = phi i32 [ %i.bb, %bb.g ], [ %2, %bb.a ] ; 2 uses
  %.5 = phi i32 [ %.4, %bb.g ], [ %i.a, %bb.a ]
  %i.bc = sext i32 %.587 to i64                   ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !37
  %i.bf = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bc
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !37
  %i.bh = xor i64 %i.bg, %i.be
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bh)
  %i.bj = trunc nuw nsw i64 %i.bi to i32
  %i.bk = add nsw i32 %.595, %i.bj
  %i.bl = add nsw i32 %.587, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.696 = phi i32 [ %i.bk, %bb.h ], [ 0, %bb.a ]
  %.688 = phi i32 [ %i.bl, %bb.h ], [ %2, %bb.a ] ; 2 uses
  %.6 = phi i32 [ %.5, %bb.h ], [ %i.a, %bb.a ]
  %i.bm = sext i32 %.688 to i64                   ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !37
  %i.bp = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bm
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !37
  %i.br = xor i64 %i.bq, %i.bo
  %i.bs = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.br)
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = add nsw i32 %.696, %i.bt
  %i.bv = add nsw i32 %.688, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.797 = phi i32 [ %i.bu, %bb.i ], [ 0, %bb.a ]
  %.789 = phi i32 [ %i.bv, %bb.i ], [ %2, %bb.a ] ; 2 uses
  %.7 = phi i32 [ %.6, %bb.i ], [ %i.a, %bb.a ]
  %i.bw = sext i32 %.789 to i64                   ; 2 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !37
  %i.bz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bw
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !37
  %i.cb = xor i64 %i.ca, %i.by
  %i.cc = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cb)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = add nsw i32 %.797, %i.cd
  %i.cf = add nsw i32 %.789, 1
  br label %bb.b, !llvm.loop !7

bb.k:                                             ; preds = %bb.b
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = shl nsw i32 %3, 3
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %4, i64 %i.ch ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr %5, i64 %i.ch ; 3 uses
  %i.ck = icmp sgt i32 %6, 3
  br i1 %i.ck, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cl = load i32, ptr %i.ci, align 4, !tbaa !77
  %i.cm = load i32, ptr %i.cj, align 4, !tbaa !77
  %i.cn = xor i32 %i.cm, %i.cl
  %i.co = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.cn)
  %i.cp = add nsw i32 %i.co, %.090
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cs = add nsw i32 %6, -4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.098 = phi i32 [ %i.cs, %bb.m ], [ %6, %bb.l ] ; 3 uses
  %.8 = phi i32 [ %i.cp, %bb.m ], [ %.090, %bb.l ] ; 2 uses
  %.078 = phi ptr [ %i.cq, %bb.m ], [ %i.ci, %bb.l ] ; 3 uses
  %.0 = phi ptr [ %i.cr, %bb.m ], [ %i.cj, %bb.l ] ; 3 uses
  %i.ct = icmp sgt i32 %.098, 1
  br i1 %i.ct, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cu = load i16, ptr %.078, align 2, !tbaa !117
  %i.cv = load i16, ptr %.0, align 2, !tbaa !117
  %i.cw = xor i16 %i.cv, %i.cu
  %i.cx = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.cw)
  %i.cy = zext nneg i16 %i.cx to i32
  %i.cz = add nsw i32 %.8, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %.078, i64 2
  %i.db = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.dc = add nsw i32 %.098, -2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.199 = phi i32 [ %i.dc, %bb.o ], [ %.098, %bb.n ]
  %.9 = phi i32 [ %i.cz, %bb.o ], [ %.8, %bb.n ]  ; 2 uses
  %.179 = phi ptr [ %i.da, %bb.o ], [ %.078, %bb.n ]
  %.1 = phi ptr [ %i.db, %bb.o ], [ %.0, %bb.n ]
  %i.dd = icmp sgt i32 %.199, 0
  br i1 %i.dd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.de = load i8, ptr %.179, align 1, !tbaa !32
  %i.df = load i8, ptr %.1, align 1, !tbaa !32
  %i.dg = xor i8 %i.df, %i.de
  %i.dh = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.dg)
  %i.di = zext nneg i8 %i.dh to i32
  %i.dj = add nsw i32 %.9, %i.di
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.k
  %.11 = phi i32 [ %.090, %bb.k ], [ %i.dj, %bb.q ], [ %.9, %bb.p ]
  ret i32 %.11
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss30binary_hash_range_search_fixSLILNS_9SIMDLevelE0EEEvRKNS_15IndexBinaryHashEPKhiRNS_16RangeQueryResultERmS9_S9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %6) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38   ; 4 uses
  %i.c = add i32 %i.b, -4                         ; 2 uses
  %i.d = tail call i32 @llvm.fshl.i32(i32 %i.c, i32 %i.c, i32 30)
  %i.e = sext i32 %i.b to i64                     ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !48   ; 43 uses
  %i.h = load i8, ptr %1, align 1, !tbaa !32      ; 14 uses
  %.not.i.i.i256.i = icmp sgt i32 %i.g, 8         ; 7 uses
  switch i32 %i.d, label %bb.cn [
    i32 0, label %bb.b
    i32 1, label %bb.q
    i32 3, label %bb.af
    i32 4, label %bb.au
    i32 7, label %bb.bj
    i32 15, label %bb.by
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i.i256.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = zext i8 %i.h to i32
  %notmask30.i.i.i.i = shl nsw i32 -1, %i.g
  %i.j = xor i32 %notmask30.i.i.i.i, -1
  %i.k = and i32 %i.i, %i.j
  %i.l = zext nneg i32 %i.k to i64
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.m = zext i8 %i.h to i64                      ; 3 uses
  %i.n = add nsw i32 %i.g, -8
  %i.o = icmp samesign ugt i32 %i.g, 16
  br i1 %i.o, label %.lr.ph.i.preheader.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -17                    ; 3 uses
  %i.q = lshr i32 %i.p, 3
  %narrow387 = add nuw nsw i32 %i.q, 1
  %i.r = zext nneg i32 %narrow387 to i64          ; 2 uses
  %xtraiter369 = and i64 %i.r, 3                  ; 3 uses
  %i.s = icmp ult i32 %i.p, 24
  br i1 %i.s, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.preheader.i.i.i.new

.lr.ph.i.preheader.i.i.i.new:                     ; preds = %.lr.ph.i.preheader.i.i.i
  %unroll_iter374 = and i64 %i.r, 1073741820
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.preheader.i.i.i.new
  %indvars.iv.i.i.i.i = phi i64 [ 8, %.lr.ph.i.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph.i.i.i.i ] ; 2 uses
  %.02435.i.i.i.i = phi i64 [ 1, %.lr.ph.i.preheader.i.i.i.new ], [ %.024.i.i.i.i.3, %.lr.ph.i.i.i.i ] ; 5 uses
  %.02633.i.i.i.i = phi i64 [ %i.m, %.lr.ph.i.preheader.i.i.i.new ], [ %i.an, %.lr.ph.i.i.i.i ]
  %niter375 = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i.new ], [ %niter375.next.3, %.lr.ph.i.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !32
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !32
  %i.z = zext i8 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 8
  %i.ab = or disjoint i64 %i.aa, %i.v
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !32
  %i.af = zext i8 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 16
  %i.ah = or disjoint i64 %i.ab, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !32
  %i.al = zext i8 %i.ak to i64
  %7 = shl nuw nsw i64 %i.al, 24
  %8 = or disjoint i64 %i.ah, %7
  %i.am = shl i64 %8, %indvars.iv.i.i.i.i
  %i.an = or i64 %i.am, %.02633.i.i.i.i           ; 3 uses
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 32 ; 2 uses
  %.024.i.i.i.i.3 = add nuw nsw i64 %.02435.i.i.i.i, 4 ; 2 uses
  %niter375.next.3 = add nuw i64 %niter375, 4     ; 2 uses
  %niter375.ncmp.3 = icmp eq i64 %niter375.next.3, %unroll_iter374
  br i1 %niter375.ncmp.3, label %._crit_edge.i.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !0

._crit_edge.i.loopexit.i.i.i.unr-lcssa:           ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod371.not = icmp eq i64 %xtraiter369, 0
  br i1 %lcmp.mod371.not, label %._crit_edge.i.loopexit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %._crit_edge.i.loopexit.i.i.i.unr-lcssa, %.lr.ph.i.preheader.i.i.i
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 8, %.lr.ph.i.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.i.3, %._crit_edge.i.loopexit.i.i.i.unr-lcssa ]
  %.02435.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader.i.i.i ], [ %.024.i.i.i.i.3, %._crit_edge.i.loopexit.i.i.i.unr-lcssa ]
  %.02633.i.i.i.i.epil.init = phi i64 [ %i.m, %.lr.ph.i.preheader.i.i.i ], [ %i.an, %._crit_edge.i.loopexit.i.i.i.unr-lcssa ]
  %lcmp.mod373 = icmp ne i64 %xtraiter369, 0
  tail call void @llvm.assume(i1 %lcmp.mod373)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %indvars.iv.i.i.i.i.epil = phi i64 [ %indvars.iv.next.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil ], [ %indvars.iv.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %.02435.i.i.i.i.epil = phi i64 [ %.024.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil ], [ %.02435.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %.02633.i.i.i.i.epil = phi i64 [ %i.as, %.lr.ph.i.i.i.i.epil ], [ %.02633.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ]
  %epil.iter370 = phi i64 [ %epil.iter370.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i.i.epil
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !32
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl i64 %i.aq, %indvars.iv.i.i.i.i.epil
  %i.as = or i64 %i.ar, %.02633.i.i.i.i.epil      ; 2 uses
  %indvars.iv.next.i.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.i.epil, 8
  %.024.i.i.i.i.epil = add nuw nsw i64 %.02435.i.i.i.i.epil, 1
  %epil.iter370.next = add i64 %epil.iter370, 1   ; 2 uses
  %epil.iter370.cmp.not = icmp eq i64 %epil.iter370.next, %xtraiter369
  br i1 %epil.iter370.cmp.not, label %._crit_edge.i.loopexit.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !178

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.epil, %._crit_edge.i.loopexit.i.i.i.unr-lcssa
  %.lcssa298 = phi i64 [ %i.an, %._crit_edge.i.loopexit.i.i.i.unr-lcssa ], [ %i.as, %.lr.ph.i.i.i.i.epil ]
  %i.at = add nsw i32 %i.g, -16
  %i.au = zext nneg i32 %i.p to i64               ; 2 uses
  %i.av = lshr i64 %i.au, 3                       ; 2 uses
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 3
  %i.ay = sub nsw i32 %i.at, %i.ax
  %i.az = and i64 %i.au, 2147483640
  %i.ba = add nuw nsw i64 %i.az, 16
  %i.bb = add nuw nsw i64 %i.av, 2
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.loopexit.i.i.i, %bb.d
  %.027.lcssa.i.i.i.i = phi i32 [ %i.n, %bb.d ], [ %i.ay, %._crit_edge.i.loopexit.i.i.i ]
  %.026.lcssa.i.i.i.i = phi i64 [ %i.m, %bb.d ], [ %.lcssa298, %._crit_edge.i.loopexit.i.i.i ]
  %.025.lcssa.i.i.i.i = phi i64 [ 8, %bb.d ], [ %i.ba, %._crit_edge.i.loopexit.i.i.i ]
  %.024.lcssa.i.i.i.i = phi i64 [ 1, %bb.d ], [ %i.bb, %._crit_edge.i.loopexit.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %.024.lcssa.i.i.i.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !32
  %notmask.i.i.i.i = shl nsw i32 -1, %.027.lcssa.i.i.i.i
  %i.be = xor i32 %notmask.i.i.i.i, -1
  %i.bf = zext i8 %i.bd to i32
  %i.bg = and i32 %i.bf, %i.be
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl i64 %i.bh, %.025.lcssa.i.i.i.i
  %i.bj = or i64 %i.bi, %.026.lcssa.i.i.i.i
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i.i

_ZN5faiss15BitstringReader4readEi.exit.i.i.i:     ; preds = %._crit_edge.i.i.i.i, %bb.c
  %.0.i.i.i.i = phi i64 [ %i.l, %bb.c ], [ %i.bj, %._crit_edge.i.i.i.i ]
  %i.bk = load i32, ptr %1, align 4, !tbaa !77
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !114
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.br = sitofp i32 %2 to float
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i.outer

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i.outer: ; preds = %bb.m, %_ZN5faiss15BitstringReader4readEi.exit.i.i.i
  %.sroa.938.0.i.i.i.ph = phi i64 [ %i.dr, %bb.m ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i.i ]
  %.sroa.12.0.i.i.i.ph = phi i64 [ %i.du, %bb.m ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i.i ]
  %.sroa.4.0.i.i.i.ph = phi i32 [ %i.dp, %bb.m ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i.i ] ; 2 uses
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i: ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i.backedge, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i.outer
  %.sroa.12.0.i.i.i = phi i64 [ %.sroa.12.0.i.i.i.ph, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i.outer ], [ %.sroa.12.0.i.i.i.be, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i.backedge ] ; 6 uses
  %i.bs = xor i64 %.sroa.12.0.i.i.i, %.0.i.i.i.i  ; 4 uses
  %i.bt = load i64, ptr %i.bn, align 8, !tbaa !115
  %.not.not.i.i.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not.not.i.i.i.i.i, label %.preheader.i.i.i, label %bb.f

.preheader.i.i.i:                                 ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i, %bb.e
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i, %bb.e ], [ %i.bq, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !54 ; 4 uses
  %i.bu = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %i.bu, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !37
  %i.bx = icmp eq i64 %i.bs, %i.bw
  br i1 %i.bx, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i.i, label %.preheader.i.i.i, !llvm.loop !5

bb.f:                                             ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i
  %i.by = load i64, ptr %i.bp, align 8, !tbaa !51 ; 2 uses
  %i.bz = urem i64 %i.bs, %i.by                   ; 2 uses
  %i.ca = load ptr, ptr %i.bo, align 8, !tbaa !52
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !54 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !37
  %i.cg = icmp eq i64 %i.bs, %i.cf
  br i1 %i.cg, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.ch = icmp eq i64 %i.bs, %i.ck
  br i1 %i.ch, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.ci, %bb.h ], [ %i.cd, %bb.g ]
  %i.ci = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !54 ; 4 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not18.i.i.i.i.i.i.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !37 ; 2 uses
  %i.cl = urem i64 %i.ck, %i.by
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.cl, %i.bz
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.i
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i.i, !llvm.loop !1

_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i.i: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i, %bb.e ], [ %i.cd, %bb.g ], [ %i.ci, %bb.h ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !112 ; 2 uses
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !88 ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 3                 ; 2 uses
  %i.cu = icmp eq ptr %i.co, %i.cp
  br i1 %i.cu, label %bb.j, label %.lr.ph.preheader.i.i.i

bb.j:                                             ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i.i
  %i.cv = load i64, ptr %4, align 8, !tbaa !37
  %i.cw = add i64 %i.cv, 1
  store i64 %i.cw, ptr %4, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i, i64 40
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !86
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i.i
  %i.cz = load i64, ptr %6, align 8, !tbaa !37
  %i.da = add i64 %i.cz, %i.ct
  store i64 %i.da, ptr %6, align 8, !tbaa !37
  %i.db = load i64, ptr %5, align 8, !tbaa !37
  %i.dc = add i64 %i.db, 1
  store i64 %i.dc, ptr %5, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.055.i.i.i = phi i64 [ %i.dm, %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.02854.i.i.i = phi ptr [ %i.dl, %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i.i ], [ %i.cy, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.dd = load i32, ptr %.02854.i.i.i, align 4, !tbaa !77
  %i.de = xor i32 %i.dd, %i.bk
  %i.df = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.de)
  %i.dg = uitofp nneg i32 %i.df to float          ; 2 uses
  %i.dh = fcmp olt float %i.dg, %i.br
  br i1 %i.dh, label %bb.k, label %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.di = load ptr, ptr %i.cm, align 8, !tbaa !88
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.055.i.i.i
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !37
  tail call void @_ZN5faiss16RangeQueryResult3addEfl(ptr noundef nonnull align 8 dereferenceable(40) %3, float noundef %i.dg, i64 noundef %i.dk)
  br label %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i.i

_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i.i: ; preds = %bb.k, %.lr.ph.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.02854.i.i.i, i64 %i.e
  %i.dm = add nuw i64 %.055.i.i.i, 1              ; 2 uses
  %exitcond62.not.i.i.i = icmp eq i64 %i.dm, %i.ct
  br i1 %exitcond62.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !179

_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.preheader.i.i.i, %._crit_edge.i.i.i, %bb.j, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %bb.f
  %i.dn = icmp eq i64 %.sroa.12.0.i.i.i, %.sroa.938.0.i.i.i.ph
  br i1 %i.dn, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i.i
  %i.do = icmp eq i32 %.sroa.4.0.i.i.i.ph, %i.bm
  br i1 %i.do, label %"_ZN5faiss20with_HammingComputerILNS_9SIMDLevelE0EZNS_30binary_hash_range_search_fixSLILS1_0EEEvRKNS_15IndexBinaryHashEPKhiRNS_16RangeQueryResultERmSA_SA_E3$_0EEDciOT0_.exit", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dp = add nuw nsw i32 %.sroa.4.0.i.i.i.ph, 1  ; 3 uses
  %i.dq = zext nneg i32 %i.dp to i64
  %notmask.i33.i.i.i = shl nsw i64 -1, %i.dq
  %i.dr = xor i64 %notmask.i33.i.i.i, -1          ; 2 uses
  %i.ds = sub nsw i32 %i.g, %i.dp
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = shl i64 %i.dr, %i.dt
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i.outer, !llvm.loop !180

bb.n:                                             ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i.i
  %i.dv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.12.0.i.i.i, i1 true) ; 2 uses
  %.not.i31.i.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i31.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dw = add nsw i64 %i.dv, -1
  %i.dx = shl nuw i64 3, %i.dw
  %i.dy = xor i64 %i.dx, %.sroa.12.0.i.i.i
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i.backedge

bb.p:                                             ; preds = %bb.n
  %i.dz = xor i64 %.sroa.12.0.i.i.i, -1
  %i.ea = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dz, i1 true) ; 3 uses
  %i.eb = shl nsw i64 -1, %i.ea
  %i.ec = and i64 %i.eb, %.sroa.12.0.i.i.i        ; 2 uses
  %i.ed = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ec, i1 true)
  %i.ee = shl nuw i64 4, %i.ea
  %i.ef = add i64 %i.ee, -1
  %i.eg = xor i64 %i.ea, -1
  %i.eh = add nsw i64 %i.ed, %i.eg
  %i.ei = and i64 %i.eh, 4294967295
  %i.ej = shl i64 %i.ef, %i.ei
  %i.ek = xor i64 %i.ej, %i.ec
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i.backedge

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i.backedge: ; preds = %bb.p, %bb.o
  %.sroa.12.0.i.i.i.be = phi i64 [ %i.ek, %bb.p ], [ %i.dy, %bb.o ]
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i.i, !llvm.loop !180

bb.q:                                             ; preds = %bb.a
  br i1 %.not.i.i.i256.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.el = zext i8 %i.h to i32
  %notmask30.i.i.i8.i = shl nsw i32 -1, %i.g
  %i.em = xor i32 %notmask30.i.i.i8.i, -1
  %i.en = and i32 %i.el, %i.em
  %i.eo = zext nneg i32 %i.en to i64
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i9.i

bb.s:                                             ; preds = %bb.q
  %i.ep = zext i8 %i.h to i64                     ; 3 uses
  %i.eq = add nsw i32 %i.g, -8
  %i.er = icmp samesign ugt i32 %i.g, 16
  br i1 %i.er, label %.lr.ph.i.preheader.i.i48.i, label %._crit_edge.i.i.i42.i

.lr.ph.i.preheader.i.i48.i:                       ; preds = %bb.s
  %i.es = add nsw i32 %i.g, -17                   ; 3 uses
  %i.et = lshr i32 %i.es, 3
  %narrow386 = add nuw nsw i32 %i.et, 1
  %i.eu = zext nneg i32 %narrow386 to i64         ; 2 uses
  %xtraiter362 = and i64 %i.eu, 3                 ; 3 uses
  %i.ev = icmp ult i32 %i.es, 24
  br i1 %i.ev, label %.lr.ph.i.i.i50.i.epil.preheader, label %.lr.ph.i.preheader.i.i48.i.new

.lr.ph.i.preheader.i.i48.i.new:                   ; preds = %.lr.ph.i.preheader.i.i48.i
  %unroll_iter367 = and i64 %i.eu, 1073741820
  br label %.lr.ph.i.i.i50.i

.lr.ph.i.i.i50.i:                                 ; preds = %.lr.ph.i.i.i50.i, %.lr.ph.i.preheader.i.i48.i.new
  %indvars.iv.i.i.i51.i = phi i64 [ 8, %.lr.ph.i.preheader.i.i48.i.new ], [ %indvars.iv.next.i.i.i54.i.3, %.lr.ph.i.i.i50.i ] ; 2 uses
  %.02435.i.i.i52.i = phi i64 [ 1, %.lr.ph.i.preheader.i.i48.i.new ], [ %.024.i.i.i55.i.3, %.lr.ph.i.i.i50.i ] ; 5 uses
  %.02633.i.i.i53.i = phi i64 [ %i.ep, %.lr.ph.i.preheader.i.i48.i.new ], [ %i.fq, %.lr.ph.i.i.i50.i ]
  %niter368 = phi i64 [ 0, %.lr.ph.i.preheader.i.i48.i.new ], [ %niter368.next.3, %.lr.ph.i.i.i50.i ]
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i52.i
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !32
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i52.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !32
  %i.fc = zext i8 %i.fb to i64
  %i.fd = shl nuw nsw i64 %i.fc, 8
  %i.fe = or disjoint i64 %i.fd, %i.ey
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i52.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !32
  %i.fi = zext i8 %i.fh to i64
  %i.fj = shl nuw nsw i64 %i.fi, 16
  %i.fk = or disjoint i64 %i.fe, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i52.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 3
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !32
  %i.fo = zext i8 %i.fn to i64
  %9 = shl nuw nsw i64 %i.fo, 24
  %10 = or disjoint i64 %i.fk, %9
  %i.fp = shl i64 %10, %indvars.iv.i.i.i51.i
  %i.fq = or i64 %i.fp, %.02633.i.i.i53.i         ; 3 uses
  %indvars.iv.next.i.i.i54.i.3 = add nuw nsw i64 %indvars.iv.i.i.i51.i, 32 ; 2 uses
  %.024.i.i.i55.i.3 = add nuw nsw i64 %.02435.i.i.i52.i, 4 ; 2 uses
  %niter368.next.3 = add nuw i64 %niter368, 4     ; 2 uses
  %niter368.ncmp.3 = icmp eq i64 %niter368.next.3, %unroll_iter367
  br i1 %niter368.ncmp.3, label %._crit_edge.i.loopexit.i.i57.i.unr-lcssa, label %.lr.ph.i.i.i50.i, !llvm.loop !0

._crit_edge.i.loopexit.i.i57.i.unr-lcssa:         ; preds = %.lr.ph.i.i.i50.i
  %lcmp.mod364.not = icmp eq i64 %xtraiter362, 0
  br i1 %lcmp.mod364.not, label %._crit_edge.i.loopexit.i.i57.i, label %.lr.ph.i.i.i50.i.epil.preheader

.lr.ph.i.i.i50.i.epil.preheader:                  ; preds = %._crit_edge.i.loopexit.i.i57.i.unr-lcssa, %.lr.ph.i.preheader.i.i48.i
  %indvars.iv.i.i.i51.i.epil.init = phi i64 [ 8, %.lr.ph.i.preheader.i.i48.i ], [ %indvars.iv.next.i.i.i54.i.3, %._crit_edge.i.loopexit.i.i57.i.unr-lcssa ]
  %.02435.i.i.i52.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader.i.i48.i ], [ %.024.i.i.i55.i.3, %._crit_edge.i.loopexit.i.i57.i.unr-lcssa ]
  %.02633.i.i.i53.i.epil.init = phi i64 [ %i.ep, %.lr.ph.i.preheader.i.i48.i ], [ %i.fq, %._crit_edge.i.loopexit.i.i57.i.unr-lcssa ]
  %lcmp.mod366 = icmp ne i64 %xtraiter362, 0
  tail call void @llvm.assume(i1 %lcmp.mod366)
  br label %.lr.ph.i.i.i50.i.epil

.lr.ph.i.i.i50.i.epil:                            ; preds = %.lr.ph.i.i.i50.i.epil, %.lr.ph.i.i.i50.i.epil.preheader
  %indvars.iv.i.i.i51.i.epil = phi i64 [ %indvars.iv.next.i.i.i54.i.epil, %.lr.ph.i.i.i50.i.epil ], [ %indvars.iv.i.i.i51.i.epil.init, %.lr.ph.i.i.i50.i.epil.preheader ] ; 2 uses
  %.02435.i.i.i52.i.epil = phi i64 [ %.024.i.i.i55.i.epil, %.lr.ph.i.i.i50.i.epil ], [ %.02435.i.i.i52.i.epil.init, %.lr.ph.i.i.i50.i.epil.preheader ] ; 2 uses
  %.02633.i.i.i53.i.epil = phi i64 [ %i.fv, %.lr.ph.i.i.i50.i.epil ], [ %.02633.i.i.i53.i.epil.init, %.lr.ph.i.i.i50.i.epil.preheader ]
  %epil.iter363 = phi i64 [ %epil.iter363.next, %.lr.ph.i.i.i50.i.epil ], [ 0, %.lr.ph.i.i.i50.i.epil.preheader ]
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i52.i.epil
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !32
  %i.ft = zext i8 %i.fs to i64
  %i.fu = shl i64 %i.ft, %indvars.iv.i.i.i51.i.epil
  %i.fv = or i64 %i.fu, %.02633.i.i.i53.i.epil    ; 2 uses
  %indvars.iv.next.i.i.i54.i.epil = add nuw nsw i64 %indvars.iv.i.i.i51.i.epil, 8
  %.024.i.i.i55.i.epil = add nuw nsw i64 %.02435.i.i.i52.i.epil, 1
  %epil.iter363.next = add i64 %epil.iter363, 1   ; 2 uses
  %epil.iter363.cmp.not = icmp eq i64 %epil.iter363.next, %xtraiter362
  br i1 %epil.iter363.cmp.not, label %._crit_edge.i.loopexit.i.i57.i, label %.lr.ph.i.i.i50.i.epil, !llvm.loop !181

._crit_edge.i.loopexit.i.i57.i:                   ; preds = %.lr.ph.i.i.i50.i.epil, %._crit_edge.i.loopexit.i.i57.i.unr-lcssa
  %.lcssa306 = phi i64 [ %i.fq, %._crit_edge.i.loopexit.i.i57.i.unr-lcssa ], [ %i.fv, %.lr.ph.i.i.i50.i.epil ]
  %i.fw = add nsw i32 %i.g, -16
  %i.fx = zext nneg i32 %i.es to i64              ; 2 uses
  %i.fy = lshr i64 %i.fx, 3                       ; 2 uses
  %i.fz = trunc nuw nsw i64 %i.fy to i32
  %i.ga = shl nuw nsw i32 %i.fz, 3
  %i.gb = sub nsw i32 %i.fw, %i.ga
  %i.gc = and i64 %i.fx, 2147483640
  %i.gd = add nuw nsw i64 %i.gc, 16
  %i.ge = add nuw nsw i64 %i.fy, 2
  br label %._crit_edge.i.i.i42.i

._crit_edge.i.i.i42.i:                            ; preds = %._crit_edge.i.loopexit.i.i57.i, %bb.s
  %.027.lcssa.i.i.i43.i = phi i32 [ %i.eq, %bb.s ], [ %i.gb, %._crit_edge.i.loopexit.i.i57.i ]
  %.026.lcssa.i.i.i44.i = phi i64 [ %i.ep, %bb.s ], [ %.lcssa306, %._crit_edge.i.loopexit.i.i57.i ]
  %.025.lcssa.i.i.i45.i = phi i64 [ 8, %bb.s ], [ %i.gd, %._crit_edge.i.loopexit.i.i57.i ]
  %.024.lcssa.i.i.i46.i = phi i64 [ 1, %bb.s ], [ %i.ge, %._crit_edge.i.loopexit.i.i57.i ]
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 %.024.lcssa.i.i.i46.i
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !32
  %notmask.i.i.i47.i = shl nsw i32 -1, %.027.lcssa.i.i.i43.i
  %i.gh = xor i32 %notmask.i.i.i47.i, -1
  %i.gi = zext i8 %i.gg to i32
  %i.gj = and i32 %i.gi, %i.gh
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = shl i64 %i.gk, %.025.lcssa.i.i.i45.i
  %i.gm = or i64 %i.gl, %.026.lcssa.i.i.i44.i
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i9.i

_ZN5faiss15BitstringReader4readEi.exit.i.i9.i:    ; preds = %._crit_edge.i.i.i42.i, %bb.r
  %.0.i.i.i10.i = phi i64 [ %i.eo, %bb.r ], [ %i.gm, %._crit_edge.i.i.i42.i ]
  %i.gn = load i64, ptr %1, align 8, !tbaa !37
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !114
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gu = sitofp i32 %2 to float
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i.outer

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i.outer: ; preds = %bb.ab, %_ZN5faiss15BitstringReader4readEi.exit.i.i9.i
  %.sroa.938.0.i.i11.i.ph = phi i64 [ %i.iv, %bb.ab ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i9.i ]
  %.sroa.12.0.i.i12.i.ph = phi i64 [ %i.iy, %bb.ab ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i9.i ]
  %.sroa.4.0.i.i13.i.ph = phi i32 [ %i.it, %bb.ab ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i9.i ] ; 2 uses
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i: ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i.backedge, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i.outer
  %.sroa.12.0.i.i12.i = phi i64 [ %.sroa.12.0.i.i12.i.ph, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i.outer ], [ %.sroa.12.0.i.i12.i.be, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i.backedge ] ; 6 uses
  %i.gv = xor i64 %.sroa.12.0.i.i12.i, %.0.i.i.i10.i ; 4 uses
  %i.gw = load i64, ptr %i.gq, align 8, !tbaa !115
  %.not.not.i.i.i.i14.i = icmp eq i64 %i.gw, 0
  br i1 %.not.not.i.i.i.i14.i, label %.preheader.i.i39.i, label %bb.u

.preheader.i.i39.i:                               ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i, %bb.t
  %.sroa.06.0.in.i.i.i.i40.i = phi ptr [ %.sroa.06.0.i.i.i.i41.i, %bb.t ], [ %i.gt, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i ]
  %.sroa.06.0.i.i.i.i41.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i40.i, align 8, !tbaa !54 ; 4 uses
  %i.gx = icmp eq ptr %.sroa.06.0.i.i.i.i41.i, null
  br i1 %i.gx, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i21.i, label %bb.t

bb.t:                                             ; preds = %.preheader.i.i39.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i41.i, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !37
  %i.ha = icmp eq i64 %i.gv, %i.gz
  br i1 %i.ha, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i28.i, label %.preheader.i.i39.i, !llvm.loop !5

bb.u:                                             ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i
  %i.hb = load i64, ptr %i.gs, align 8, !tbaa !51 ; 2 uses
  %i.hc = urem i64 %i.gv, %i.hb                   ; 2 uses
  %i.hd = load ptr, ptr %i.gr, align 8, !tbaa !52
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.hc
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i.i.i15.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i.i.i.i15.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i21.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !54 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !37
  %i.hj = icmp eq i64 %i.gv, %i.hi
  br i1 %i.hj, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i28.i, label %.lr.ph.i.i.i.i.i.i16.i

bb.w:                                             ; preds = %bb.x
  %i.hk = icmp eq i64 %i.gv, %i.hn
  br i1 %i.hk, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i28.i, label %.lr.ph.i.i.i.i.i.i16.i, !llvm.loop !1

.lr.ph.i.i.i.i.i.i16.i:                           ; preds = %bb.v, %bb.w
  %.020.i.i.i.i.i.i17.i = phi ptr [ %i.hl, %bb.w ], [ %i.hg, %bb.v ]
  %i.hl = load ptr, ptr %.020.i.i.i.i.i.i17.i, align 8, !tbaa !54 ; 4 uses
  %.not18.i.i.i.i.i.i18.i = icmp eq ptr %i.hl, null
  br i1 %.not18.i.i.i.i.i.i18.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i21.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i16.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !37 ; 2 uses
  %i.ho = urem i64 %i.hn, %i.hb
  %.not19.i.i.i.i.i.i19.i = icmp eq i64 %i.ho, %i.hc
  br i1 %.not19.i.i.i.i.i.i19.i, label %bb.w, label %..loopexit_crit_edge21.i.i.i.i.i.i20.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i.i.i20.i:           ; preds = %bb.x
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i21.i, !llvm.loop !1

_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i28.i: ; preds = %bb.w, %bb.t, %bb.v
  %.sroa.06.1.i.i.i.i29.i = phi ptr [ %.sroa.06.0.i.i.i.i41.i, %bb.t ], [ %i.hg, %bb.v ], [ %i.hl, %bb.w ] ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i29.i, i64 16 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i29.i, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !112 ; 2 uses
  %i.hs = load ptr, ptr %i.hp, align 8, !tbaa !88 ; 2 uses
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = sub i64 %i.ht, %i.hu
  %i.hw = ashr exact i64 %i.hv, 3                 ; 2 uses
  %i.hx = icmp eq ptr %i.hr, %i.hs
  br i1 %i.hx, label %bb.y, label %.lr.ph.preheader.i.i30.i

bb.y:                                             ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i28.i
  %i.hy = load i64, ptr %4, align 8, !tbaa !37
  %i.hz = add i64 %i.hy, 1
  store i64 %i.hz, ptr %4, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i21.i

.lr.ph.preheader.i.i30.i:                         ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i28.i
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i29.i, i64 40
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !86
  br label %.lr.ph.i.i31.i

._crit_edge.i.i37.i:                              ; preds = %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i35.i
  %i.ic = load i64, ptr %6, align 8, !tbaa !37
  %i.id = add i64 %i.ic, %i.hw
  store i64 %i.id, ptr %6, align 8, !tbaa !37
  %i.ie = load i64, ptr %5, align 8, !tbaa !37
  %i.if = add i64 %i.ie, 1
  store i64 %i.if, ptr %5, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i21.i

.lr.ph.i.i31.i:                                   ; preds = %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i35.i, %.lr.ph.preheader.i.i30.i
  %.055.i.i32.i = phi i64 [ %i.iq, %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i35.i ], [ 0, %.lr.ph.preheader.i.i30.i ] ; 2 uses
  %.02854.i.i33.i = phi ptr [ %i.ip, %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i35.i ], [ %i.ib, %.lr.ph.preheader.i.i30.i ] ; 2 uses
  %i.ig = load i64, ptr %.02854.i.i33.i, align 8, !tbaa !37
  %i.ih = xor i64 %i.ig, %i.gn
  %i.ii = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ih)
  %i.ij = trunc nuw nsw i64 %i.ii to i32
  %i.ik = uitofp nneg i32 %i.ij to float          ; 2 uses
  %i.il = fcmp olt float %i.ik, %i.gu
  br i1 %i.il, label %bb.z, label %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i35.i

bb.z:                                             ; preds = %.lr.ph.i.i31.i
  %i.im = load ptr, ptr %i.hp, align 8, !tbaa !88
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %.055.i.i32.i
  %i.io = load i64, ptr %i.in, align 8, !tbaa !37
  tail call void @_ZN5faiss16RangeQueryResult3addEfl(ptr noundef nonnull align 8 dereferenceable(40) %3, float noundef %i.ik, i64 noundef %i.io)
  br label %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i35.i

_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i35.i: ; preds = %bb.z, %.lr.ph.i.i31.i
  %i.ip = getelementptr inbounds nuw i8, ptr %.02854.i.i33.i, i64 %i.e
  %i.iq = add nuw i64 %.055.i.i32.i, 1            ; 2 uses
  %exitcond62.not.i.i36.i = icmp eq i64 %i.iq, %i.hw
  br i1 %exitcond62.not.i.i36.i, label %._crit_edge.i.i37.i, label %.lr.ph.i.i31.i, !llvm.loop !182

_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i21.i: ; preds = %.lr.ph.i.i.i.i.i.i16.i, %.preheader.i.i39.i, %._crit_edge.i.i37.i, %bb.y, %..loopexit_crit_edge21.i.i.i.i.i.i20.i, %bb.u
  %i.ir = icmp eq i64 %.sroa.12.0.i.i12.i, %.sroa.938.0.i.i11.i.ph
  br i1 %i.ir, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i21.i
  %i.is = icmp eq i32 %.sroa.4.0.i.i13.i.ph, %i.gp
  br i1 %i.is, label %"_ZN5faiss20with_HammingComputerILNS_9SIMDLevelE0EZNS_30binary_hash_range_search_fixSLILS1_0EEEvRKNS_15IndexBinaryHashEPKhiRNS_16RangeQueryResultERmSA_SA_E3$_0EEDciOT0_.exit", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.it = add nuw nsw i32 %.sroa.4.0.i.i13.i.ph, 1 ; 3 uses
  %i.iu = zext nneg i32 %i.it to i64
  %notmask.i33.i.i27.i = shl nsw i64 -1, %i.iu
  %i.iv = xor i64 %notmask.i33.i.i27.i, -1        ; 2 uses
  %i.iw = sub nsw i32 %i.g, %i.it
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = shl i64 %i.iv, %i.ix
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i.outer, !llvm.loop !183

bb.ac:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i21.i
  %i.iz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.12.0.i.i12.i, i1 true) ; 2 uses
  %.not.i31.i.i22.i = icmp eq i64 %i.iz, 0
  br i1 %.not.i31.i.i22.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ja = add nsw i64 %i.iz, -1
  %i.jb = shl nuw i64 3, %i.ja
  %i.jc = xor i64 %i.jb, %.sroa.12.0.i.i12.i
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i.backedge

bb.ae:                                            ; preds = %bb.ac
  %i.jd = xor i64 %.sroa.12.0.i.i12.i, -1
  %i.je = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jd, i1 true) ; 3 uses
  %i.jf = shl nsw i64 -1, %i.je
  %i.jg = and i64 %i.jf, %.sroa.12.0.i.i12.i      ; 2 uses
  %i.jh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jg, i1 true)
  %i.ji = shl nuw i64 4, %i.je
  %i.jj = add i64 %i.ji, -1
  %i.jk = xor i64 %i.je, -1
  %i.jl = add nsw i64 %i.jh, %i.jk
  %i.jm = and i64 %i.jl, 4294967295
  %i.jn = shl i64 %i.jj, %i.jm
  %i.jo = xor i64 %i.jn, %i.jg
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i.backedge

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i.backedge: ; preds = %bb.ae, %bb.ad
  %.sroa.12.0.i.i12.i.be = phi i64 [ %i.jo, %bb.ae ], [ %i.jc, %bb.ad ]
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i23.i, !llvm.loop !183

bb.af:                                            ; preds = %bb.a
  br i1 %.not.i.i.i256.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jp = zext i8 %i.h to i32
  %notmask30.i.i.i59.i = shl nsw i32 -1, %i.g
  %i.jq = xor i32 %notmask30.i.i.i59.i, -1
  %i.jr = and i32 %i.jp, %i.jq
  %i.js = zext nneg i32 %i.jr to i64
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i60.i

bb.ah:                                            ; preds = %bb.af
  %i.jt = zext i8 %i.h to i64                     ; 3 uses
  %i.ju = add nsw i32 %i.g, -8
  %i.jv = icmp samesign ugt i32 %i.g, 16
  br i1 %i.jv, label %.lr.ph.i.preheader.i.i96.i, label %._crit_edge.i.i.i90.i

.lr.ph.i.preheader.i.i96.i:                       ; preds = %bb.ah
  %i.jw = add nsw i32 %i.g, -17                   ; 3 uses
  %i.jx = lshr i32 %i.jw, 3
  %narrow385 = add nuw nsw i32 %i.jx, 1
  %i.jy = zext nneg i32 %narrow385 to i64         ; 2 uses
  %xtraiter355 = and i64 %i.jy, 3                 ; 3 uses
  %i.jz = icmp ult i32 %i.jw, 24
  br i1 %i.jz, label %.lr.ph.i.i.i98.i.epil.preheader, label %.lr.ph.i.preheader.i.i96.i.new

.lr.ph.i.preheader.i.i96.i.new:                   ; preds = %.lr.ph.i.preheader.i.i96.i
  %unroll_iter360 = and i64 %i.jy, 1073741820
  br label %.lr.ph.i.i.i98.i

.lr.ph.i.i.i98.i:                                 ; preds = %.lr.ph.i.i.i98.i, %.lr.ph.i.preheader.i.i96.i.new
  %indvars.iv.i.i.i99.i = phi i64 [ 8, %.lr.ph.i.preheader.i.i96.i.new ], [ %indvars.iv.next.i.i.i102.i.3, %.lr.ph.i.i.i98.i ] ; 2 uses
  %.02435.i.i.i100.i = phi i64 [ 1, %.lr.ph.i.preheader.i.i96.i.new ], [ %.024.i.i.i103.i.3, %.lr.ph.i.i.i98.i ] ; 5 uses
  %.02633.i.i.i101.i = phi i64 [ %i.jt, %.lr.ph.i.preheader.i.i96.i.new ], [ %i.ku, %.lr.ph.i.i.i98.i ]
  %niter361 = phi i64 [ 0, %.lr.ph.i.preheader.i.i96.i.new ], [ %niter361.next.3, %.lr.ph.i.i.i98.i ]
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i100.i
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !32
  %i.kc = zext i8 %i.kb to i64
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i100.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 1
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !32
  %i.kg = zext i8 %i.kf to i64
  %i.kh = shl nuw nsw i64 %i.kg, 8
  %i.ki = or disjoint i64 %i.kh, %i.kc
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i100.i
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 2
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !32
  %i.km = zext i8 %i.kl to i64
  %i.kn = shl nuw nsw i64 %i.km, 16
  %i.ko = or disjoint i64 %i.ki, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i100.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 3
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !32
  %i.ks = zext i8 %i.kr to i64
  %11 = shl nuw nsw i64 %i.ks, 24
  %12 = or disjoint i64 %i.ko, %11
  %i.kt = shl i64 %12, %indvars.iv.i.i.i99.i
  %i.ku = or i64 %i.kt, %.02633.i.i.i101.i        ; 3 uses
  %indvars.iv.next.i.i.i102.i.3 = add nuw nsw i64 %indvars.iv.i.i.i99.i, 32 ; 2 uses
  %.024.i.i.i103.i.3 = add nuw nsw i64 %.02435.i.i.i100.i, 4 ; 2 uses
  %niter361.next.3 = add nuw i64 %niter361, 4     ; 2 uses
  %niter361.ncmp.3 = icmp eq i64 %niter361.next.3, %unroll_iter360
  br i1 %niter361.ncmp.3, label %._crit_edge.i.loopexit.i.i105.i.unr-lcssa, label %.lr.ph.i.i.i98.i, !llvm.loop !0

._crit_edge.i.loopexit.i.i105.i.unr-lcssa:        ; preds = %.lr.ph.i.i.i98.i
  %lcmp.mod357.not = icmp eq i64 %xtraiter355, 0
  br i1 %lcmp.mod357.not, label %._crit_edge.i.loopexit.i.i105.i, label %.lr.ph.i.i.i98.i.epil.preheader

.lr.ph.i.i.i98.i.epil.preheader:                  ; preds = %._crit_edge.i.loopexit.i.i105.i.unr-lcssa, %.lr.ph.i.preheader.i.i96.i
  %indvars.iv.i.i.i99.i.epil.init = phi i64 [ 8, %.lr.ph.i.preheader.i.i96.i ], [ %indvars.iv.next.i.i.i102.i.3, %._crit_edge.i.loopexit.i.i105.i.unr-lcssa ]
  %.02435.i.i.i100.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader.i.i96.i ], [ %.024.i.i.i103.i.3, %._crit_edge.i.loopexit.i.i105.i.unr-lcssa ]
  %.02633.i.i.i101.i.epil.init = phi i64 [ %i.jt, %.lr.ph.i.preheader.i.i96.i ], [ %i.ku, %._crit_edge.i.loopexit.i.i105.i.unr-lcssa ]
  %lcmp.mod359 = icmp ne i64 %xtraiter355, 0
  tail call void @llvm.assume(i1 %lcmp.mod359)
  br label %.lr.ph.i.i.i98.i.epil

.lr.ph.i.i.i98.i.epil:                            ; preds = %.lr.ph.i.i.i98.i.epil, %.lr.ph.i.i.i98.i.epil.preheader
  %indvars.iv.i.i.i99.i.epil = phi i64 [ %indvars.iv.next.i.i.i102.i.epil, %.lr.ph.i.i.i98.i.epil ], [ %indvars.iv.i.i.i99.i.epil.init, %.lr.ph.i.i.i98.i.epil.preheader ] ; 2 uses
  %.02435.i.i.i100.i.epil = phi i64 [ %.024.i.i.i103.i.epil, %.lr.ph.i.i.i98.i.epil ], [ %.02435.i.i.i100.i.epil.init, %.lr.ph.i.i.i98.i.epil.preheader ] ; 2 uses
  %.02633.i.i.i101.i.epil = phi i64 [ %i.kz, %.lr.ph.i.i.i98.i.epil ], [ %.02633.i.i.i101.i.epil.init, %.lr.ph.i.i.i98.i.epil.preheader ]
  %epil.iter356 = phi i64 [ %epil.iter356.next, %.lr.ph.i.i.i98.i.epil ], [ 0, %.lr.ph.i.i.i98.i.epil.preheader ]
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i100.i.epil
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !32
  %i.kx = zext i8 %i.kw to i64
  %i.ky = shl i64 %i.kx, %indvars.iv.i.i.i99.i.epil
  %i.kz = or i64 %i.ky, %.02633.i.i.i101.i.epil   ; 2 uses
  %indvars.iv.next.i.i.i102.i.epil = add nuw nsw i64 %indvars.iv.i.i.i99.i.epil, 8
  %.024.i.i.i103.i.epil = add nuw nsw i64 %.02435.i.i.i100.i.epil, 1
  %epil.iter356.next = add i64 %epil.iter356, 1   ; 2 uses
  %epil.iter356.cmp.not = icmp eq i64 %epil.iter356.next, %xtraiter355
  br i1 %epil.iter356.cmp.not, label %._crit_edge.i.loopexit.i.i105.i, label %.lr.ph.i.i.i98.i.epil, !llvm.loop !184

._crit_edge.i.loopexit.i.i105.i:                  ; preds = %.lr.ph.i.i.i98.i.epil, %._crit_edge.i.loopexit.i.i105.i.unr-lcssa
  %.lcssa314 = phi i64 [ %i.ku, %._crit_edge.i.loopexit.i.i105.i.unr-lcssa ], [ %i.kz, %.lr.ph.i.i.i98.i.epil ]
  %i.la = add nsw i32 %i.g, -16
  %i.lb = zext nneg i32 %i.jw to i64              ; 2 uses
  %i.lc = lshr i64 %i.lb, 3                       ; 2 uses
  %i.ld = trunc nuw nsw i64 %i.lc to i32
  %i.le = shl nuw nsw i32 %i.ld, 3
  %i.lf = sub nsw i32 %i.la, %i.le
  %i.lg = and i64 %i.lb, 2147483640
  %i.lh = add nuw nsw i64 %i.lg, 16
  %i.li = add nuw nsw i64 %i.lc, 2
  br label %._crit_edge.i.i.i90.i

._crit_edge.i.i.i90.i:                            ; preds = %._crit_edge.i.loopexit.i.i105.i, %bb.ah
  %.027.lcssa.i.i.i91.i = phi i32 [ %i.ju, %bb.ah ], [ %i.lf, %._crit_edge.i.loopexit.i.i105.i ]
  %.026.lcssa.i.i.i92.i = phi i64 [ %i.jt, %bb.ah ], [ %.lcssa314, %._crit_edge.i.loopexit.i.i105.i ]
  %.025.lcssa.i.i.i93.i = phi i64 [ 8, %bb.ah ], [ %i.lh, %._crit_edge.i.loopexit.i.i105.i ]
  %.024.lcssa.i.i.i94.i = phi i64 [ 1, %bb.ah ], [ %i.li, %._crit_edge.i.loopexit.i.i105.i ]
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 %.024.lcssa.i.i.i94.i
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !32
  %notmask.i.i.i95.i = shl nsw i32 -1, %.027.lcssa.i.i.i91.i
  %i.ll = xor i32 %notmask.i.i.i95.i, -1
  %i.lm = zext i8 %i.lk to i32
  %i.ln = and i32 %i.lm, %i.ll
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = shl i64 %i.lo, %.025.lcssa.i.i.i93.i
  %i.lq = or i64 %i.lp, %.026.lcssa.i.i.i92.i
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i60.i

_ZN5faiss15BitstringReader4readEi.exit.i.i60.i:   ; preds = %._crit_edge.i.i.i90.i, %bb.ag
  %.0.i.i.i61.i = phi i64 [ %i.js, %bb.ag ], [ %i.lq, %._crit_edge.i.i.i90.i ]
  %i.lr = load <2 x i64>, ptr %1, align 8, !tbaa !37
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !114
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ly = sitofp i32 %2 to float
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i74.i.outer

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i74.i.outer: ; preds = %bb.aq, %_ZN5faiss15BitstringReader4readEi.exit.i.i60.i
  %.sroa.938.0.i.i62.i.ph = phi i64 [ %i.oa, %bb.aq ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i60.i ]
  %.sroa.12.0.i.i63.i.ph = phi i64 [ %i.od, %bb.aq ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i60.i ]
  %.sroa.4.0.i.i64.i.ph = phi i32 [ %i.ny, %bb.aq ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i60.i ] ; 2 uses
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i74.i

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i74.i: ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i74.i.backedge, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i74.i.outer
  %.sroa.12.0.i.i63.i = phi i64 [ %.sroa.12.0.i.i63.i.ph, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i74.i.outer ], [ %.sroa.12.0.i.i63.i.be, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i74.i.backedge ] ; 6 uses
  %i.lz = xor i64 %.sroa.12.0.i.i63.i, %.0.i.i.i61.i ; 4 uses
  %i.ma = load i64, ptr %i.lu, align 8, !tbaa !115
  %.not.not.i.i.i.i65.i = icmp eq i64 %i.ma, 0
  br i1 %.not.not.i.i.i.i65.i, label %.preheader.i.i87.i, label %bb.aj

.preheader.i.i87.i:                               ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i74.i, %bb.ai
  %.sroa.06.0.in.i.i.i.i88.i = phi ptr [ %.sroa.06.0.i.i.i.i89.i, %bb.ai ], [ %i.lx, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i74.i ]
  %.sroa.06.0.i.i.i.i89.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i88.i, align 8, !tbaa !54 ; 4 uses
  %i.mb = icmp eq ptr %.sroa.06.0.i.i.i.i89.i, null
  br i1 %i.mb, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i72.i, label %bb.ai

bb.ai:                                            ; preds = %.preheader.i.i87.i
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i89.i, i64 8
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !37
  %i.me = icmp eq i64 %i.lz, %i.md
  br i1 %i.me, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i79.i, label %.preheader.i.i87.i, !llvm.loop !5

bb.aj:                                            ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i74.i
  %i.mf = load i64, ptr %i.lw, align 8, !tbaa !51 ; 2 uses
  %i.mg = urem i64 %i.lz, %i.mf                   ; 2 uses
  %i.mh = load ptr, ptr %i.lv, align 8, !tbaa !52
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.mg
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i.i.i66.i = icmp eq ptr %i.mj, null
  br i1 %.not.i.i.i.i.i.i66.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i72.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !54 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !37
  %i.mn = icmp eq i64 %i.lz, %i.mm
  br i1 %i.mn, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i79.i, label %.lr.ph.i.i.i.i.i.i67.i

bb.al:                                            ; preds = %bb.am
  %i.mo = icmp eq i64 %i.lz, %i.mr
  br i1 %i.mo, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i79.i, label %.lr.ph.i.i.i.i.i.i67.i, !llvm.loop !1

.lr.ph.i.i.i.i.i.i67.i:                           ; preds = %bb.ak, %bb.al
  %.020.i.i.i.i.i.i68.i = phi ptr [ %i.mp, %bb.al ], [ %i.mk, %bb.ak ]
  %i.mp = load ptr, ptr %.020.i.i.i.i.i.i68.i, align 8, !tbaa !54 ; 4 uses
  %.not18.i.i.i.i.i.i69.i = icmp eq ptr %i.mp, null
  br i1 %.not18.i.i.i.i.i.i69.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i72.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i.i67.i
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !37 ; 2 uses
  %i.ms = urem i64 %i.mr, %i.mf
  %.not19.i.i.i.i.i.i70.i = icmp eq i64 %i.ms, %i.mg
  br i1 %.not19.i.i.i.i.i.i70.i, label %bb.al, label %..loopexit_crit_edge21.i.i.i.i.i.i71.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i.i.i71.i:           ; preds = %bb.am
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i72.i, !llvm.loop !1

_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i79.i: ; preds = %bb.al, %bb.ai, %bb.ak
  %.sroa.06.1.i.i.i.i80.i = phi ptr [ %.sroa.06.0.i.i.i.i89.i, %bb.ai ], [ %i.mk, %bb.ak ], [ %i.mp, %bb.al ] ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i80.i, i64 16 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i80.i, i64 24
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !112 ; 2 uses
  %i.mw = load ptr, ptr %i.mt, align 8, !tbaa !88 ; 2 uses
  %i.mx = ptrtoint ptr %i.mv to i64
  %i.my = ptrtoint ptr %i.mw to i64
  %i.mz = sub i64 %i.mx, %i.my
  %i.na = ashr exact i64 %i.mz, 3                 ; 2 uses
  %i.nb = icmp eq ptr %i.mv, %i.mw
  br i1 %i.nb, label %bb.an, label %.lr.ph.preheader.i.i81.i

bb.an:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i79.i
  %i.nc = load i64, ptr %4, align 8, !tbaa !37
  %i.nd = add i64 %i.nc, 1
  store i64 %i.nd, ptr %4, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i72.i

.lr.ph.preheader.i.i81.i:                         ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i79.i
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i80.i, i64 40
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !86
  br label %.lr.ph.i.i82.i

._crit_edge.i.i85.i:                              ; preds = %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i84.i
  %i.ng = load i64, ptr %6, align 8, !tbaa !37
  %i.nh = add i64 %i.ng, %i.na
  store i64 %i.nh, ptr %6, align 8, !tbaa !37
  %i.ni = load i64, ptr %5, align 8, !tbaa !37
  %i.nj = add i64 %i.ni, 1
  store i64 %i.nj, ptr %5, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i72.i

.lr.ph.i.i82.i:                                   ; preds = %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i84.i, %.lr.ph.preheader.i.i81.i
  %.056.i.i.i = phi i64 [ %i.nv, %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i84.i ], [ 0, %.lr.ph.preheader.i.i81.i ] ; 2 uses
  %.02855.i.i.i = phi ptr [ %i.nu, %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i84.i ], [ %i.nf, %.lr.ph.preheader.i.i81.i ] ; 2 uses
  %i.nk = load <2 x i64>, ptr %.02855.i.i.i, align 8, !tbaa !37
  %i.nl = xor <2 x i64> %i.nk, %i.lr
  %i.nm = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.nl)
  %i.nn = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.nm)
  %i.no = trunc nuw nsw i64 %i.nn to i32
  %i.np = uitofp nneg i32 %i.no to float          ; 2 uses
  %i.nq = fcmp olt float %i.np, %i.ly
  br i1 %i.nq, label %bb.ao, label %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i84.i

bb.ao:                                            ; preds = %.lr.ph.i.i82.i
  %i.nr = load ptr, ptr %i.mt, align 8, !tbaa !88
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %.056.i.i.i
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !37
  tail call void @_ZN5faiss16RangeQueryResult3addEfl(ptr noundef nonnull align 8 dereferenceable(40) %3, float noundef %i.np, i64 noundef %i.nt)
  br label %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i84.i

_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i84.i: ; preds = %bb.ao, %.lr.ph.i.i82.i
  %i.nu = getelementptr inbounds nuw i8, ptr %.02855.i.i.i, i64 %i.e
  %i.nv = add nuw i64 %.056.i.i.i, 1              ; 2 uses
  %exitcond63.not.i.i.i = icmp eq i64 %i.nv, %i.na
  br i1 %exitcond63.not.i.i.i, label %._crit_edge.i.i85.i, label %.lr.ph.i.i82.i, !llvm.loop !185

_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i72.i: ; preds = %.lr.ph.i.i.i.i.i.i67.i, %.preheader.i.i87.i, %._crit_edge.i.i85.i, %bb.an, %..loopexit_crit_edge21.i.i.i.i.i.i71.i, %bb.aj
  %i.nw = icmp eq i64 %.sroa.12.0.i.i63.i, %.sroa.938.0.i.i62.i.ph
  br i1 %i.nw, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i72.i
  %i.nx = icmp eq i32 %.sroa.4.0.i.i64.i.ph, %i.lt
  br i1 %i.nx, label %"_ZN5faiss20with_HammingComputerILNS_9SIMDLevelE0EZNS_30binary_hash_range_search_fixSLILS1_0EEEvRKNS_15IndexBinaryHashEPKhiRNS_16RangeQueryResultERmSA_SA_E3$_0EEDciOT0_.exit", label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ny = add nuw nsw i32 %.sroa.4.0.i.i64.i.ph, 1 ; 3 uses
  %i.nz = zext nneg i32 %i.ny to i64
  %notmask.i33.i.i78.i = shl nsw i64 -1, %i.nz
  %i.oa = xor i64 %notmask.i33.i.i78.i, -1        ; 2 uses
  %i.ob = sub nsw i32 %i.g, %i.ny
  %i.oc = zext nneg i32 %i.ob to i64
  %i.od = shl i64 %i.oa, %i.oc
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i74.i.outer, !llvm.loop !186

bb.ar:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i72.i
  %i.oe = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.12.0.i.i63.i, i1 true) ; 2 uses
  %.not.i31.i.i73.i = icmp eq i64 %i.oe, 0
  br i1 %.not.i31.i.i73.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.of = add nsw i64 %i.oe, -1
  %i.og = shl nuw i64 3, %i.of
  %i.oh = xor i64 %i.og, %.sroa.12.0.i.i63.i
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i74.i.backedge

bb.at:                                            ; preds = %bb.ar
  %i.oi = xor i64 %.sroa.12.0.i.i63.i, -1
  %i.oj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.oi, i1 true) ; 3 uses
  %i.ok = shl nsw i64 -1, %i.oj
  %i.ol = and i64 %i.ok, %.sroa.12.0.i.i63.i      ; 2 uses
  %i.om = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ol, i1 true)
  %i.on = shl nuw i64 4, %i.oj
  %i.oo = add i64 %i.on, -1
  %i.op = xor i64 %i.oj, -1
  %i.oq = add nsw i64 %i.om, %i.op
  %i.or = and i64 %i.oq, 4294967295
  %i.os = shl i64 %i.oo, %i.or
  %i.ot = xor i64 %i.os, %i.ol
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i74.i.backedge

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i74.i.backedge: ; preds = %bb.at, %bb.as
  %.sroa.12.0.i.i63.i.be = phi i64 [ %i.ot, %bb.at ], [ %i.oh, %bb.as ]
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i74.i, !llvm.loop !186

bb.au:                                            ; preds = %bb.a
  br i1 %.not.i.i.i256.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ou = zext i8 %i.h to i32
  %notmask30.i.i.i107.i = shl nsw i32 -1, %i.g
  %i.ov = xor i32 %notmask30.i.i.i107.i, -1
  %i.ow = and i32 %i.ou, %i.ov
  %i.ox = zext nneg i32 %i.ow to i64
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i108.i

bb.aw:                                            ; preds = %bb.au
  %i.oy = zext i8 %i.h to i64                     ; 3 uses
  %i.oz = add nsw i32 %i.g, -8
  %i.pa = icmp samesign ugt i32 %i.g, 16
  br i1 %i.pa, label %.lr.ph.i.preheader.i.i147.i, label %._crit_edge.i.i.i141.i

.lr.ph.i.preheader.i.i147.i:                      ; preds = %bb.aw
  %i.pb = add nsw i32 %i.g, -17                   ; 3 uses
  %i.pc = lshr i32 %i.pb, 3
  %narrow384 = add nuw nsw i32 %i.pc, 1
  %i.pd = zext nneg i32 %narrow384 to i64         ; 2 uses
  %xtraiter348 = and i64 %i.pd, 3                 ; 3 uses
  %i.pe = icmp ult i32 %i.pb, 24
  br i1 %i.pe, label %.lr.ph.i.i.i149.i.epil.preheader, label %.lr.ph.i.preheader.i.i147.i.new

.lr.ph.i.preheader.i.i147.i.new:                  ; preds = %.lr.ph.i.preheader.i.i147.i
  %unroll_iter353 = and i64 %i.pd, 1073741820
  br label %.lr.ph.i.i.i149.i

.lr.ph.i.i.i149.i:                                ; preds = %.lr.ph.i.i.i149.i, %.lr.ph.i.preheader.i.i147.i.new
  %indvars.iv.i.i.i150.i = phi i64 [ 8, %.lr.ph.i.preheader.i.i147.i.new ], [ %indvars.iv.next.i.i.i153.i.3, %.lr.ph.i.i.i149.i ] ; 2 uses
  %.02435.i.i.i151.i = phi i64 [ 1, %.lr.ph.i.preheader.i.i147.i.new ], [ %.024.i.i.i154.i.3, %.lr.ph.i.i.i149.i ] ; 5 uses
  %.02633.i.i.i152.i = phi i64 [ %i.oy, %.lr.ph.i.preheader.i.i147.i.new ], [ %i.pz, %.lr.ph.i.i.i149.i ]
  %niter354 = phi i64 [ 0, %.lr.ph.i.preheader.i.i147.i.new ], [ %niter354.next.3, %.lr.ph.i.i.i149.i ]
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i151.i
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !32
  %i.ph = zext i8 %i.pg to i64
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i151.i
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 1
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !32
  %i.pl = zext i8 %i.pk to i64
  %i.pm = shl nuw nsw i64 %i.pl, 8
  %i.pn = or disjoint i64 %i.pm, %i.ph
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i151.i
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 2
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !32
  %i.pr = zext i8 %i.pq to i64
  %i.ps = shl nuw nsw i64 %i.pr, 16
  %i.pt = or disjoint i64 %i.pn, %i.ps
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i151.i
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 3
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !32
  %i.px = zext i8 %i.pw to i64
  %13 = shl nuw nsw i64 %i.px, 24
  %14 = or disjoint i64 %i.pt, %13
  %i.py = shl i64 %14, %indvars.iv.i.i.i150.i
  %i.pz = or i64 %i.py, %.02633.i.i.i152.i        ; 3 uses
  %indvars.iv.next.i.i.i153.i.3 = add nuw nsw i64 %indvars.iv.i.i.i150.i, 32 ; 2 uses
  %.024.i.i.i154.i.3 = add nuw nsw i64 %.02435.i.i.i151.i, 4 ; 2 uses
  %niter354.next.3 = add nuw i64 %niter354, 4     ; 2 uses
  %niter354.ncmp.3 = icmp eq i64 %niter354.next.3, %unroll_iter353
  br i1 %niter354.ncmp.3, label %._crit_edge.i.loopexit.i.i156.i.unr-lcssa, label %.lr.ph.i.i.i149.i, !llvm.loop !0

._crit_edge.i.loopexit.i.i156.i.unr-lcssa:        ; preds = %.lr.ph.i.i.i149.i
  %lcmp.mod350.not = icmp eq i64 %xtraiter348, 0
  br i1 %lcmp.mod350.not, label %._crit_edge.i.loopexit.i.i156.i, label %.lr.ph.i.i.i149.i.epil.preheader

.lr.ph.i.i.i149.i.epil.preheader:                 ; preds = %._crit_edge.i.loopexit.i.i156.i.unr-lcssa, %.lr.ph.i.preheader.i.i147.i
  %indvars.iv.i.i.i150.i.epil.init = phi i64 [ 8, %.lr.ph.i.preheader.i.i147.i ], [ %indvars.iv.next.i.i.i153.i.3, %._crit_edge.i.loopexit.i.i156.i.unr-lcssa ]
  %.02435.i.i.i151.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader.i.i147.i ], [ %.024.i.i.i154.i.3, %._crit_edge.i.loopexit.i.i156.i.unr-lcssa ]
  %.02633.i.i.i152.i.epil.init = phi i64 [ %i.oy, %.lr.ph.i.preheader.i.i147.i ], [ %i.pz, %._crit_edge.i.loopexit.i.i156.i.unr-lcssa ]
  %lcmp.mod352 = icmp ne i64 %xtraiter348, 0
  tail call void @llvm.assume(i1 %lcmp.mod352)
  br label %.lr.ph.i.i.i149.i.epil

.lr.ph.i.i.i149.i.epil:                           ; preds = %.lr.ph.i.i.i149.i.epil, %.lr.ph.i.i.i149.i.epil.preheader
  %indvars.iv.i.i.i150.i.epil = phi i64 [ %indvars.iv.next.i.i.i153.i.epil, %.lr.ph.i.i.i149.i.epil ], [ %indvars.iv.i.i.i150.i.epil.init, %.lr.ph.i.i.i149.i.epil.preheader ] ; 2 uses
  %.02435.i.i.i151.i.epil = phi i64 [ %.024.i.i.i154.i.epil, %.lr.ph.i.i.i149.i.epil ], [ %.02435.i.i.i151.i.epil.init, %.lr.ph.i.i.i149.i.epil.preheader ] ; 2 uses
  %.02633.i.i.i152.i.epil = phi i64 [ %i.qe, %.lr.ph.i.i.i149.i.epil ], [ %.02633.i.i.i152.i.epil.init, %.lr.ph.i.i.i149.i.epil.preheader ]
  %epil.iter349 = phi i64 [ %epil.iter349.next, %.lr.ph.i.i.i149.i.epil ], [ 0, %.lr.ph.i.i.i149.i.epil.preheader ]
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i151.i.epil
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !32
  %i.qc = zext i8 %i.qb to i64
  %i.qd = shl i64 %i.qc, %indvars.iv.i.i.i150.i.epil
  %i.qe = or i64 %i.qd, %.02633.i.i.i152.i.epil   ; 2 uses
  %indvars.iv.next.i.i.i153.i.epil = add nuw nsw i64 %indvars.iv.i.i.i150.i.epil, 8
  %.024.i.i.i154.i.epil = add nuw nsw i64 %.02435.i.i.i151.i.epil, 1
  %epil.iter349.next = add i64 %epil.iter349, 1   ; 2 uses
  %epil.iter349.cmp.not = icmp eq i64 %epil.iter349.next, %xtraiter348
  br i1 %epil.iter349.cmp.not, label %._crit_edge.i.loopexit.i.i156.i, label %.lr.ph.i.i.i149.i.epil, !llvm.loop !187

._crit_edge.i.loopexit.i.i156.i:                  ; preds = %.lr.ph.i.i.i149.i.epil, %._crit_edge.i.loopexit.i.i156.i.unr-lcssa
  %.lcssa322 = phi i64 [ %i.pz, %._crit_edge.i.loopexit.i.i156.i.unr-lcssa ], [ %i.qe, %.lr.ph.i.i.i149.i.epil ]
  %i.qf = add nsw i32 %i.g, -16
  %i.qg = zext nneg i32 %i.pb to i64              ; 2 uses
  %i.qh = lshr i64 %i.qg, 3                       ; 2 uses
  %i.qi = trunc nuw nsw i64 %i.qh to i32
  %i.qj = shl nuw nsw i32 %i.qi, 3
  %i.qk = sub nsw i32 %i.qf, %i.qj
  %i.ql = and i64 %i.qg, 2147483640
  %i.qm = add nuw nsw i64 %i.ql, 16
  %i.qn = add nuw nsw i64 %i.qh, 2
  br label %._crit_edge.i.i.i141.i

._crit_edge.i.i.i141.i:                           ; preds = %._crit_edge.i.loopexit.i.i156.i, %bb.aw
  %.027.lcssa.i.i.i142.i = phi i32 [ %i.oz, %bb.aw ], [ %i.qk, %._crit_edge.i.loopexit.i.i156.i ]
  %.026.lcssa.i.i.i143.i = phi i64 [ %i.oy, %bb.aw ], [ %.lcssa322, %._crit_edge.i.loopexit.i.i156.i ]
  %.025.lcssa.i.i.i144.i = phi i64 [ 8, %bb.aw ], [ %i.qm, %._crit_edge.i.loopexit.i.i156.i ]
  %.024.lcssa.i.i.i145.i = phi i64 [ 1, %bb.aw ], [ %i.qn, %._crit_edge.i.loopexit.i.i156.i ]
  %i.qo = getelementptr inbounds nuw i8, ptr %1, i64 %.024.lcssa.i.i.i145.i
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !32
  %notmask.i.i.i146.i = shl nsw i32 -1, %.027.lcssa.i.i.i142.i
  %i.qq = xor i32 %notmask.i.i.i146.i, -1
  %i.qr = zext i8 %i.qp to i32
  %i.qs = and i32 %i.qr, %i.qq
  %i.qt = zext nneg i32 %i.qs to i64
  %i.qu = shl i64 %i.qt, %.025.lcssa.i.i.i144.i
  %i.qv = or i64 %i.qu, %.026.lcssa.i.i.i143.i
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i108.i

_ZN5faiss15BitstringReader4readEi.exit.i.i108.i:  ; preds = %._crit_edge.i.i.i141.i, %bb.av
  %.0.i.i.i109.i = phi i64 [ %i.ox, %bb.av ], [ %i.qv, %._crit_edge.i.i.i141.i ]
  %i.qw = load <2 x i64>, ptr %1, align 8, !tbaa !37
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qy = load i32, ptr %i.qx, align 8, !tbaa !77
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !114
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.rf = sitofp i32 %2 to float
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i122.i.outer

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i122.i.outer: ; preds = %bb.bf, %_ZN5faiss15BitstringReader4readEi.exit.i.i108.i
  %.sroa.938.0.i.i110.i.ph = phi i64 [ %i.tm, %bb.bf ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i108.i ]
  %.sroa.12.0.i.i111.i.ph = phi i64 [ %i.tp, %bb.bf ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i108.i ]
  %.sroa.4.0.i.i112.i.ph = phi i32 [ %i.tk, %bb.bf ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i108.i ] ; 2 uses
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i122.i

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i122.i: ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i122.i.backedge, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i122.i.outer
  %.sroa.12.0.i.i111.i = phi i64 [ %.sroa.12.0.i.i111.i.ph, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i122.i.outer ], [ %.sroa.12.0.i.i111.i.be, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i122.i.backedge ] ; 6 uses
  %i.rg = xor i64 %.sroa.12.0.i.i111.i, %.0.i.i.i109.i ; 4 uses
  %i.rh = load i64, ptr %i.rb, align 8, !tbaa !115
  %.not.not.i.i.i.i113.i = icmp eq i64 %i.rh, 0
  br i1 %.not.not.i.i.i.i113.i, label %.preheader.i.i138.i, label %bb.ay

.preheader.i.i138.i:                              ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i122.i, %bb.ax
  %.sroa.06.0.in.i.i.i.i139.i = phi ptr [ %.sroa.06.0.i.i.i.i140.i, %bb.ax ], [ %i.re, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i122.i ]
  %.sroa.06.0.i.i.i.i140.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i139.i, align 8, !tbaa !54 ; 4 uses
  %i.ri = icmp eq ptr %.sroa.06.0.i.i.i.i140.i, null
  br i1 %i.ri, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i120.i, label %bb.ax

bb.ax:                                            ; preds = %.preheader.i.i138.i
  %i.rj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i140.i, i64 8
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !37
  %i.rl = icmp eq i64 %i.rg, %i.rk
  br i1 %i.rl, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i127.i, label %.preheader.i.i138.i, !llvm.loop !5

bb.ay:                                            ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i122.i
  %i.rm = load i64, ptr %i.rd, align 8, !tbaa !51 ; 2 uses
  %i.rn = urem i64 %i.rg, %i.rm                   ; 2 uses
  %i.ro = load ptr, ptr %i.rc, align 8, !tbaa !52
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.ro, i64 %i.rn
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i.i.i114.i = icmp eq ptr %i.rq, null
  br i1 %.not.i.i.i.i.i.i114.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i120.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !54 ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !37
  %i.ru = icmp eq i64 %i.rg, %i.rt
  br i1 %i.ru, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i127.i, label %.lr.ph.i.i.i.i.i.i115.i

bb.ba:                                            ; preds = %bb.bb
  %i.rv = icmp eq i64 %i.rg, %i.ry
  br i1 %i.rv, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i127.i, label %.lr.ph.i.i.i.i.i.i115.i, !llvm.loop !1

.lr.ph.i.i.i.i.i.i115.i:                          ; preds = %bb.az, %bb.ba
  %.020.i.i.i.i.i.i116.i = phi ptr [ %i.rw, %bb.ba ], [ %i.rr, %bb.az ]
  %i.rw = load ptr, ptr %.020.i.i.i.i.i.i116.i, align 8, !tbaa !54 ; 4 uses
  %.not18.i.i.i.i.i.i117.i = icmp eq ptr %i.rw, null
  br i1 %.not18.i.i.i.i.i.i117.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i120.i, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i.i.i115.i
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !37 ; 2 uses
  %i.rz = urem i64 %i.ry, %i.rm
  %.not19.i.i.i.i.i.i118.i = icmp eq i64 %i.rz, %i.rn
  br i1 %.not19.i.i.i.i.i.i118.i, label %bb.ba, label %..loopexit_crit_edge21.i.i.i.i.i.i119.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i.i.i119.i:          ; preds = %bb.bb
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i120.i, !llvm.loop !1

_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i127.i: ; preds = %bb.ba, %bb.ax, %bb.az
  %.sroa.06.1.i.i.i.i128.i = phi ptr [ %.sroa.06.0.i.i.i.i140.i, %bb.ax ], [ %i.rr, %bb.az ], [ %i.rw, %bb.ba ] ; 3 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i128.i, i64 16 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i128.i, i64 24
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !112 ; 2 uses
  %i.sd = load ptr, ptr %i.sa, align 8, !tbaa !88 ; 2 uses
  %i.se = ptrtoint ptr %i.sc to i64
  %i.sf = ptrtoint ptr %i.sd to i64
  %i.sg = sub i64 %i.se, %i.sf
  %i.sh = ashr exact i64 %i.sg, 3                 ; 2 uses
  %i.si = icmp eq ptr %i.sc, %i.sd
  br i1 %i.si, label %bb.bc, label %.lr.ph.preheader.i.i129.i

bb.bc:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i127.i
  %i.sj = load i64, ptr %4, align 8, !tbaa !37
  %i.sk = add i64 %i.sj, 1
  store i64 %i.sk, ptr %4, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i120.i

.lr.ph.preheader.i.i129.i:                        ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i127.i
  %i.sl = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i128.i, i64 40
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !86
  br label %.lr.ph.i.i130.i

._crit_edge.i.i136.i:                             ; preds = %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i134.i
  %i.sn = load i64, ptr %6, align 8, !tbaa !37
  %i.so = add i64 %i.sn, %i.sh
  store i64 %i.so, ptr %6, align 8, !tbaa !37
  %i.sp = load i64, ptr %5, align 8, !tbaa !37
  %i.sq = add i64 %i.sp, 1
  store i64 %i.sq, ptr %5, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i120.i

.lr.ph.i.i130.i:                                  ; preds = %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i134.i, %.lr.ph.preheader.i.i129.i
  %.056.i.i131.i = phi i64 [ %i.th, %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i134.i ], [ 0, %.lr.ph.preheader.i.i129.i ] ; 2 uses
  %.02855.i.i132.i = phi ptr [ %i.tg, %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i134.i ], [ %i.sm, %.lr.ph.preheader.i.i129.i ] ; 3 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.02855.i.i132.i, i64 16
  %i.ss = load <2 x i64>, ptr %.02855.i.i132.i, align 8, !tbaa !37
  %i.st = xor <2 x i64> %i.ss, %i.qw
  %i.su = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.st)
  %i.sv = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.su)
  %i.sw = trunc nuw nsw i64 %i.sv to i32
  %i.sx = load i32, ptr %i.sr, align 8, !tbaa !77
  %i.sy = xor i32 %i.sx, %i.qy
  %i.sz = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.sy)
  %i.ta = add nuw nsw i32 %i.sz, %i.sw
  %i.tb = uitofp nneg i32 %i.ta to float          ; 2 uses
  %i.tc = fcmp olt float %i.tb, %i.rf
  br i1 %i.tc, label %bb.bd, label %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i134.i

bb.bd:                                            ; preds = %.lr.ph.i.i130.i
  %i.td = load ptr, ptr %i.sa, align 8, !tbaa !88
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.td, i64 %.056.i.i131.i
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !37
  tail call void @_ZN5faiss16RangeQueryResult3addEfl(ptr noundef nonnull align 8 dereferenceable(40) %3, float noundef %i.tb, i64 noundef %i.tf)
  br label %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i134.i

_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i134.i: ; preds = %bb.bd, %.lr.ph.i.i130.i
  %i.tg = getelementptr inbounds nuw i8, ptr %.02855.i.i132.i, i64 %i.e
  %i.th = add nuw i64 %.056.i.i131.i, 1           ; 2 uses
  %exitcond63.not.i.i135.i = icmp eq i64 %i.th, %i.sh
  br i1 %exitcond63.not.i.i135.i, label %._crit_edge.i.i136.i, label %.lr.ph.i.i130.i, !llvm.loop !188

_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i120.i: ; preds = %.lr.ph.i.i.i.i.i.i115.i, %.preheader.i.i138.i, %._crit_edge.i.i136.i, %bb.bc, %..loopexit_crit_edge21.i.i.i.i.i.i119.i, %bb.ay
  %i.ti = icmp eq i64 %.sroa.12.0.i.i111.i, %.sroa.938.0.i.i110.i.ph
  br i1 %i.ti, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i120.i
  %i.tj = icmp eq i32 %.sroa.4.0.i.i112.i.ph, %i.ra
  br i1 %i.tj, label %"_ZN5faiss20with_HammingComputerILNS_9SIMDLevelE0EZNS_30binary_hash_range_search_fixSLILS1_0EEEvRKNS_15IndexBinaryHashEPKhiRNS_16RangeQueryResultERmSA_SA_E3$_0EEDciOT0_.exit", label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.tk = add nuw nsw i32 %.sroa.4.0.i.i112.i.ph, 1 ; 3 uses
  %i.tl = zext nneg i32 %i.tk to i64
  %notmask.i33.i.i126.i = shl nsw i64 -1, %i.tl
  %i.tm = xor i64 %notmask.i33.i.i126.i, -1       ; 2 uses
  %i.tn = sub nsw i32 %i.g, %i.tk
  %i.to = zext nneg i32 %i.tn to i64
  %i.tp = shl i64 %i.tm, %i.to
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i122.i.outer, !llvm.loop !189

bb.bg:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i120.i
  %i.tq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.12.0.i.i111.i, i1 true) ; 2 uses
  %.not.i31.i.i121.i = icmp eq i64 %i.tq, 0
  br i1 %.not.i31.i.i121.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.tr = add nsw i64 %i.tq, -1
  %i.ts = shl nuw i64 3, %i.tr
  %i.tt = xor i64 %i.ts, %.sroa.12.0.i.i111.i
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i122.i.backedge

bb.bi:                                            ; preds = %bb.bg
  %i.tu = xor i64 %.sroa.12.0.i.i111.i, -1
  %i.tv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.tu, i1 true) ; 3 uses
  %i.tw = shl nsw i64 -1, %i.tv
  %i.tx = and i64 %i.tw, %.sroa.12.0.i.i111.i     ; 2 uses
  %i.ty = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.tx, i1 true)
  %i.tz = shl nuw i64 4, %i.tv
  %i.ua = add i64 %i.tz, -1
  %i.ub = xor i64 %i.tv, -1
  %i.uc = add nsw i64 %i.ty, %i.ub
  %i.ud = and i64 %i.uc, 4294967295
  %i.ue = shl i64 %i.ua, %i.ud
  %i.uf = xor i64 %i.ue, %i.tx
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i122.i.backedge

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i122.i.backedge: ; preds = %bb.bi, %bb.bh
  %.sroa.12.0.i.i111.i.be = phi i64 [ %i.uf, %bb.bi ], [ %i.tt, %bb.bh ]
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i122.i, !llvm.loop !189

bb.bj:                                            ; preds = %bb.a
  br i1 %.not.i.i.i256.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ug = zext i8 %i.h to i32
  %notmask30.i.i.i158.i = shl nsw i32 -1, %i.g
  %i.uh = xor i32 %notmask30.i.i.i158.i, -1
  %i.ui = and i32 %i.ug, %i.uh
  %i.uj = zext nneg i32 %i.ui to i64
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i159.i

bb.bl:                                            ; preds = %bb.bj
  %i.uk = zext i8 %i.h to i64                     ; 3 uses
  %i.ul = add nsw i32 %i.g, -8
  %i.um = icmp samesign ugt i32 %i.g, 16
  br i1 %i.um, label %.lr.ph.i.preheader.i.i198.i, label %._crit_edge.i.i.i192.i

.lr.ph.i.preheader.i.i198.i:                      ; preds = %bb.bl
  %i.un = add nsw i32 %i.g, -17                   ; 3 uses
  %i.uo = lshr i32 %i.un, 3
  %narrow383 = add nuw nsw i32 %i.uo, 1
  %i.up = zext nneg i32 %narrow383 to i64         ; 2 uses
  %xtraiter341 = and i64 %i.up, 3                 ; 3 uses
  %i.uq = icmp ult i32 %i.un, 24
  br i1 %i.uq, label %.lr.ph.i.i.i200.i.epil.preheader, label %.lr.ph.i.preheader.i.i198.i.new

.lr.ph.i.preheader.i.i198.i.new:                  ; preds = %.lr.ph.i.preheader.i.i198.i
  %unroll_iter346 = and i64 %i.up, 1073741820
  br label %.lr.ph.i.i.i200.i

.lr.ph.i.i.i200.i:                                ; preds = %.lr.ph.i.i.i200.i, %.lr.ph.i.preheader.i.i198.i.new
  %indvars.iv.i.i.i201.i = phi i64 [ 8, %.lr.ph.i.preheader.i.i198.i.new ], [ %indvars.iv.next.i.i.i204.i.3, %.lr.ph.i.i.i200.i ] ; 2 uses
  %.02435.i.i.i202.i = phi i64 [ 1, %.lr.ph.i.preheader.i.i198.i.new ], [ %.024.i.i.i205.i.3, %.lr.ph.i.i.i200.i ] ; 5 uses
  %.02633.i.i.i203.i = phi i64 [ %i.uk, %.lr.ph.i.preheader.i.i198.i.new ], [ %i.vl, %.lr.ph.i.i.i200.i ]
  %niter347 = phi i64 [ 0, %.lr.ph.i.preheader.i.i198.i.new ], [ %niter347.next.3, %.lr.ph.i.i.i200.i ]
  %i.ur = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i202.i
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !32
  %i.ut = zext i8 %i.us to i64
  %i.uu = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i202.i
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 1
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !32
  %i.ux = zext i8 %i.uw to i64
  %i.uy = shl nuw nsw i64 %i.ux, 8
  %i.uz = or disjoint i64 %i.uy, %i.ut
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i202.i
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 2
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !32
  %i.vd = zext i8 %i.vc to i64
  %i.ve = shl nuw nsw i64 %i.vd, 16
  %i.vf = or disjoint i64 %i.uz, %i.ve
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i202.i
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 3
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !32
  %i.vj = zext i8 %i.vi to i64
  %15 = shl nuw nsw i64 %i.vj, 24
  %16 = or disjoint i64 %i.vf, %15
  %i.vk = shl i64 %16, %indvars.iv.i.i.i201.i
  %i.vl = or i64 %i.vk, %.02633.i.i.i203.i        ; 3 uses
  %indvars.iv.next.i.i.i204.i.3 = add nuw nsw i64 %indvars.iv.i.i.i201.i, 32 ; 2 uses
  %.024.i.i.i205.i.3 = add nuw nsw i64 %.02435.i.i.i202.i, 4 ; 2 uses
  %niter347.next.3 = add nuw i64 %niter347, 4     ; 2 uses
  %niter347.ncmp.3 = icmp eq i64 %niter347.next.3, %unroll_iter346
  br i1 %niter347.ncmp.3, label %._crit_edge.i.loopexit.i.i207.i.unr-lcssa, label %.lr.ph.i.i.i200.i, !llvm.loop !0

._crit_edge.i.loopexit.i.i207.i.unr-lcssa:        ; preds = %.lr.ph.i.i.i200.i
  %lcmp.mod343.not = icmp eq i64 %xtraiter341, 0
  br i1 %lcmp.mod343.not, label %._crit_edge.i.loopexit.i.i207.i, label %.lr.ph.i.i.i200.i.epil.preheader

.lr.ph.i.i.i200.i.epil.preheader:                 ; preds = %._crit_edge.i.loopexit.i.i207.i.unr-lcssa, %.lr.ph.i.preheader.i.i198.i
  %indvars.iv.i.i.i201.i.epil.init = phi i64 [ 8, %.lr.ph.i.preheader.i.i198.i ], [ %indvars.iv.next.i.i.i204.i.3, %._crit_edge.i.loopexit.i.i207.i.unr-lcssa ]
  %.02435.i.i.i202.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader.i.i198.i ], [ %.024.i.i.i205.i.3, %._crit_edge.i.loopexit.i.i207.i.unr-lcssa ]
  %.02633.i.i.i203.i.epil.init = phi i64 [ %i.uk, %.lr.ph.i.preheader.i.i198.i ], [ %i.vl, %._crit_edge.i.loopexit.i.i207.i.unr-lcssa ]
  %lcmp.mod345 = icmp ne i64 %xtraiter341, 0
  tail call void @llvm.assume(i1 %lcmp.mod345)
  br label %.lr.ph.i.i.i200.i.epil

.lr.ph.i.i.i200.i.epil:                           ; preds = %.lr.ph.i.i.i200.i.epil, %.lr.ph.i.i.i200.i.epil.preheader
  %indvars.iv.i.i.i201.i.epil = phi i64 [ %indvars.iv.next.i.i.i204.i.epil, %.lr.ph.i.i.i200.i.epil ], [ %indvars.iv.i.i.i201.i.epil.init, %.lr.ph.i.i.i200.i.epil.preheader ] ; 2 uses
  %.02435.i.i.i202.i.epil = phi i64 [ %.024.i.i.i205.i.epil, %.lr.ph.i.i.i200.i.epil ], [ %.02435.i.i.i202.i.epil.init, %.lr.ph.i.i.i200.i.epil.preheader ] ; 2 uses
  %.02633.i.i.i203.i.epil = phi i64 [ %i.vq, %.lr.ph.i.i.i200.i.epil ], [ %.02633.i.i.i203.i.epil.init, %.lr.ph.i.i.i200.i.epil.preheader ]
  %epil.iter342 = phi i64 [ %epil.iter342.next, %.lr.ph.i.i.i200.i.epil ], [ 0, %.lr.ph.i.i.i200.i.epil.preheader ]
  %i.vm = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i202.i.epil
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !32
  %i.vo = zext i8 %i.vn to i64
  %i.vp = shl i64 %i.vo, %indvars.iv.i.i.i201.i.epil
  %i.vq = or i64 %i.vp, %.02633.i.i.i203.i.epil   ; 2 uses
  %indvars.iv.next.i.i.i204.i.epil = add nuw nsw i64 %indvars.iv.i.i.i201.i.epil, 8
  %.024.i.i.i205.i.epil = add nuw nsw i64 %.02435.i.i.i202.i.epil, 1
  %epil.iter342.next = add i64 %epil.iter342, 1   ; 2 uses
  %epil.iter342.cmp.not = icmp eq i64 %epil.iter342.next, %xtraiter341
  br i1 %epil.iter342.cmp.not, label %._crit_edge.i.loopexit.i.i207.i, label %.lr.ph.i.i.i200.i.epil, !llvm.loop !190

._crit_edge.i.loopexit.i.i207.i:                  ; preds = %.lr.ph.i.i.i200.i.epil, %._crit_edge.i.loopexit.i.i207.i.unr-lcssa
  %.lcssa330 = phi i64 [ %i.vl, %._crit_edge.i.loopexit.i.i207.i.unr-lcssa ], [ %i.vq, %.lr.ph.i.i.i200.i.epil ]
  %i.vr = add nsw i32 %i.g, -16
  %i.vs = zext nneg i32 %i.un to i64              ; 2 uses
  %i.vt = lshr i64 %i.vs, 3                       ; 2 uses
  %i.vu = trunc nuw nsw i64 %i.vt to i32
  %i.vv = shl nuw nsw i32 %i.vu, 3
  %i.vw = sub nsw i32 %i.vr, %i.vv
  %i.vx = and i64 %i.vs, 2147483640
  %i.vy = add nuw nsw i64 %i.vx, 16
  %i.vz = add nuw nsw i64 %i.vt, 2
  br label %._crit_edge.i.i.i192.i

._crit_edge.i.i.i192.i:                           ; preds = %._crit_edge.i.loopexit.i.i207.i, %bb.bl
  %.027.lcssa.i.i.i193.i = phi i32 [ %i.ul, %bb.bl ], [ %i.vw, %._crit_edge.i.loopexit.i.i207.i ]
  %.026.lcssa.i.i.i194.i = phi i64 [ %i.uk, %bb.bl ], [ %.lcssa330, %._crit_edge.i.loopexit.i.i207.i ]
  %.025.lcssa.i.i.i195.i = phi i64 [ 8, %bb.bl ], [ %i.vy, %._crit_edge.i.loopexit.i.i207.i ]
  %.024.lcssa.i.i.i196.i = phi i64 [ 1, %bb.bl ], [ %i.vz, %._crit_edge.i.loopexit.i.i207.i ]
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 %.024.lcssa.i.i.i196.i
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !32
  %notmask.i.i.i197.i = shl nsw i32 -1, %.027.lcssa.i.i.i193.i
  %i.wc = xor i32 %notmask.i.i.i197.i, -1
  %i.wd = zext i8 %i.wb to i32
  %i.we = and i32 %i.wd, %i.wc
  %i.wf = zext nneg i32 %i.we to i64
  %i.wg = shl i64 %i.wf, %.025.lcssa.i.i.i195.i
  %i.wh = or i64 %i.wg, %.026.lcssa.i.i.i194.i
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i159.i

_ZN5faiss15BitstringReader4readEi.exit.i.i159.i:  ; preds = %._crit_edge.i.i.i192.i, %bb.bk
  %.0.i.i.i160.i = phi i64 [ %i.uj, %bb.bk ], [ %i.wh, %._crit_edge.i.i.i192.i ]
  %i.wi = load <4 x i64>, ptr %1, align 8, !tbaa !37
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !114
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.wp = sitofp i32 %2 to float
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i173.i.outer

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i173.i.outer: ; preds = %bb.bu, %_ZN5faiss15BitstringReader4readEi.exit.i.i159.i
  %.sroa.938.0.i.i161.i.ph = phi i64 [ %i.yr, %bb.bu ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i159.i ]
  %.sroa.12.0.i.i162.i.ph = phi i64 [ %i.yu, %bb.bu ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i159.i ]
  %.sroa.4.0.i.i163.i.ph = phi i32 [ %i.yp, %bb.bu ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i159.i ] ; 2 uses
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i173.i

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i173.i: ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i173.i.backedge, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i173.i.outer
  %.sroa.12.0.i.i162.i = phi i64 [ %.sroa.12.0.i.i162.i.ph, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i173.i.outer ], [ %.sroa.12.0.i.i162.i.be, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i173.i.backedge ] ; 6 uses
  %i.wq = xor i64 %.sroa.12.0.i.i162.i, %.0.i.i.i160.i ; 4 uses
  %i.wr = load i64, ptr %i.wl, align 8, !tbaa !115
  %.not.not.i.i.i.i164.i = icmp eq i64 %i.wr, 0
  br i1 %.not.not.i.i.i.i164.i, label %.preheader.i.i189.i, label %bb.bn

.preheader.i.i189.i:                              ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i173.i, %bb.bm
  %.sroa.06.0.in.i.i.i.i190.i = phi ptr [ %.sroa.06.0.i.i.i.i191.i, %bb.bm ], [ %i.wo, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i173.i ]
  %.sroa.06.0.i.i.i.i191.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i190.i, align 8, !tbaa !54 ; 4 uses
  %i.ws = icmp eq ptr %.sroa.06.0.i.i.i.i191.i, null
  br i1 %i.ws, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i171.i, label %bb.bm

bb.bm:                                            ; preds = %.preheader.i.i189.i
  %i.wt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i191.i, i64 8
  %i.wu = load i64, ptr %i.wt, align 8, !tbaa !37
  %i.wv = icmp eq i64 %i.wq, %i.wu
  br i1 %i.wv, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i178.i, label %.preheader.i.i189.i, !llvm.loop !5

bb.bn:                                            ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i173.i
  %i.ww = load i64, ptr %i.wn, align 8, !tbaa !51 ; 2 uses
  %i.wx = urem i64 %i.wq, %i.ww                   ; 2 uses
  %i.wy = load ptr, ptr %i.wm, align 8, !tbaa !52
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.wy, i64 %i.wx
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i.i.i165.i = icmp eq ptr %i.xa, null
  br i1 %.not.i.i.i.i.i.i165.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i171.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !54 ; 3 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 8
  %i.xd = load i64, ptr %i.xc, align 8, !tbaa !37
  %i.xe = icmp eq i64 %i.wq, %i.xd
  br i1 %i.xe, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i178.i, label %.lr.ph.i.i.i.i.i.i166.i

bb.bp:                                            ; preds = %bb.bq
  %i.xf = icmp eq i64 %i.wq, %i.xi
  br i1 %i.xf, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i178.i, label %.lr.ph.i.i.i.i.i.i166.i, !llvm.loop !1

.lr.ph.i.i.i.i.i.i166.i:                          ; preds = %bb.bo, %bb.bp
  %.020.i.i.i.i.i.i167.i = phi ptr [ %i.xg, %bb.bp ], [ %i.xb, %bb.bo ]
  %i.xg = load ptr, ptr %.020.i.i.i.i.i.i167.i, align 8, !tbaa !54 ; 4 uses
  %.not18.i.i.i.i.i.i168.i = icmp eq ptr %i.xg, null
  br i1 %.not18.i.i.i.i.i.i168.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i171.i, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i.i.i166.i
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 8
  %i.xi = load i64, ptr %i.xh, align 8, !tbaa !37 ; 2 uses
  %i.xj = urem i64 %i.xi, %i.ww
  %.not19.i.i.i.i.i.i169.i = icmp eq i64 %i.xj, %i.wx
  br i1 %.not19.i.i.i.i.i.i169.i, label %bb.bp, label %..loopexit_crit_edge21.i.i.i.i.i.i170.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i.i.i170.i:          ; preds = %bb.bq
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i171.i, !llvm.loop !1

_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i178.i: ; preds = %bb.bp, %bb.bm, %bb.bo
  %.sroa.06.1.i.i.i.i179.i = phi ptr [ %.sroa.06.0.i.i.i.i191.i, %bb.bm ], [ %i.xb, %bb.bo ], [ %i.xg, %bb.bp ] ; 3 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i179.i, i64 16 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i179.i, i64 24
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !112 ; 2 uses
  %i.xn = load ptr, ptr %i.xk, align 8, !tbaa !88 ; 2 uses
  %i.xo = ptrtoint ptr %i.xm to i64
  %i.xp = ptrtoint ptr %i.xn to i64
  %i.xq = sub i64 %i.xo, %i.xp
  %i.xr = ashr exact i64 %i.xq, 3                 ; 2 uses
  %i.xs = icmp eq ptr %i.xm, %i.xn
  br i1 %i.xs, label %bb.br, label %.lr.ph.preheader.i.i180.i

bb.br:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i178.i
  %i.xt = load i64, ptr %4, align 8, !tbaa !37
  %i.xu = add i64 %i.xt, 1
  store i64 %i.xu, ptr %4, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i171.i

.lr.ph.preheader.i.i180.i:                        ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i178.i
  %i.xv = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i179.i, i64 40
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !86
  br label %.lr.ph.i.i181.i

._crit_edge.i.i187.i:                             ; preds = %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i185.i
  %i.xx = load i64, ptr %6, align 8, !tbaa !37
  %i.xy = add i64 %i.xx, %i.xr
  store i64 %i.xy, ptr %6, align 8, !tbaa !37
  %i.xz = load i64, ptr %5, align 8, !tbaa !37
  %i.ya = add i64 %i.xz, 1
  store i64 %i.ya, ptr %5, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i171.i

.lr.ph.i.i181.i:                                  ; preds = %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i185.i, %.lr.ph.preheader.i.i180.i
  %.056.i.i182.i = phi i64 [ %i.ym, %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i185.i ], [ 0, %.lr.ph.preheader.i.i180.i ] ; 2 uses
  %.02855.i.i183.i = phi ptr [ %i.yl, %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i185.i ], [ %i.xw, %.lr.ph.preheader.i.i180.i ] ; 2 uses
  %i.yb = load <4 x i64>, ptr %.02855.i.i183.i, align 8, !tbaa !37
  %i.yc = xor <4 x i64> %i.yb, %i.wi
  %i.yd = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.yc)
  %i.ye = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.yd)
  %i.yf = trunc nuw nsw i64 %i.ye to i32
  %i.yg = uitofp nneg i32 %i.yf to float          ; 2 uses
  %i.yh = fcmp olt float %i.yg, %i.wp
  br i1 %i.yh, label %bb.bs, label %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i185.i

bb.bs:                                            ; preds = %.lr.ph.i.i181.i
  %i.yi = load ptr, ptr %i.xk, align 8, !tbaa !88
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %i.yi, i64 %.056.i.i182.i
  %i.yk = load i64, ptr %i.yj, align 8, !tbaa !37
  tail call void @_ZN5faiss16RangeQueryResult3addEfl(ptr noundef nonnull align 8 dereferenceable(40) %3, float noundef %i.yg, i64 noundef %i.yk)
  br label %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i185.i

_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i185.i: ; preds = %bb.bs, %.lr.ph.i.i181.i
  %i.yl = getelementptr inbounds nuw i8, ptr %.02855.i.i183.i, i64 %i.e
  %i.ym = add nuw i64 %.056.i.i182.i, 1           ; 2 uses
  %exitcond63.not.i.i186.i = icmp eq i64 %i.ym, %i.xr
  br i1 %exitcond63.not.i.i186.i, label %._crit_edge.i.i187.i, label %.lr.ph.i.i181.i, !llvm.loop !191

_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i171.i: ; preds = %.lr.ph.i.i.i.i.i.i166.i, %.preheader.i.i189.i, %._crit_edge.i.i187.i, %bb.br, %..loopexit_crit_edge21.i.i.i.i.i.i170.i, %bb.bn
  %i.yn = icmp eq i64 %.sroa.12.0.i.i162.i, %.sroa.938.0.i.i161.i.ph
  br i1 %i.yn, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i171.i
  %i.yo = icmp eq i32 %.sroa.4.0.i.i163.i.ph, %i.wk
  br i1 %i.yo, label %"_ZN5faiss20with_HammingComputerILNS_9SIMDLevelE0EZNS_30binary_hash_range_search_fixSLILS1_0EEEvRKNS_15IndexBinaryHashEPKhiRNS_16RangeQueryResultERmSA_SA_E3$_0EEDciOT0_.exit", label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.yp = add nuw nsw i32 %.sroa.4.0.i.i163.i.ph, 1 ; 3 uses
  %i.yq = zext nneg i32 %i.yp to i64
  %notmask.i33.i.i177.i = shl nsw i64 -1, %i.yq
  %i.yr = xor i64 %notmask.i33.i.i177.i, -1       ; 2 uses
  %i.ys = sub nsw i32 %i.g, %i.yp
  %i.yt = zext nneg i32 %i.ys to i64
  %i.yu = shl i64 %i.yr, %i.yt
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i173.i.outer, !llvm.loop !192

bb.bv:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i171.i
  %i.yv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.12.0.i.i162.i, i1 true) ; 2 uses
  %.not.i31.i.i172.i = icmp eq i64 %i.yv, 0
  br i1 %.not.i31.i.i172.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.yw = add nsw i64 %i.yv, -1
  %i.yx = shl nuw i64 3, %i.yw
  %i.yy = xor i64 %i.yx, %.sroa.12.0.i.i162.i
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i173.i.backedge

bb.bx:                                            ; preds = %bb.bv
  %i.yz = xor i64 %.sroa.12.0.i.i162.i, -1
  %i.za = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.yz, i1 true) ; 3 uses
  %i.zb = shl nsw i64 -1, %i.za
  %i.zc = and i64 %i.zb, %.sroa.12.0.i.i162.i     ; 2 uses
  %i.zd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.zc, i1 true)
  %i.ze = shl nuw i64 4, %i.za
  %i.zf = add i64 %i.ze, -1
  %i.zg = xor i64 %i.za, -1
  %i.zh = add nsw i64 %i.zd, %i.zg
  %i.zi = and i64 %i.zh, 4294967295
  %i.zj = shl i64 %i.zf, %i.zi
  %i.zk = xor i64 %i.zj, %i.zc
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i173.i.backedge

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i173.i.backedge: ; preds = %bb.bx, %bb.bw
  %.sroa.12.0.i.i162.i.be = phi i64 [ %i.zk, %bb.bx ], [ %i.yy, %bb.bw ]
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i173.i, !llvm.loop !192

bb.by:                                            ; preds = %bb.a
  br i1 %.not.i.i.i256.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.zl = zext i8 %i.h to i32
  %notmask30.i.i.i209.i = shl nsw i32 -1, %i.g
  %i.zm = xor i32 %notmask30.i.i.i209.i, -1
  %i.zn = and i32 %i.zl, %i.zm
  %i.zo = zext nneg i32 %i.zn to i64
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i210.i

bb.ca:                                            ; preds = %bb.by
  %i.zp = zext i8 %i.h to i64                     ; 3 uses
  %i.zq = add nsw i32 %i.g, -8
  %i.zr = icmp samesign ugt i32 %i.g, 16
  br i1 %i.zr, label %.lr.ph.i.preheader.i.i246.i, label %._crit_edge.i.i.i240.i

.lr.ph.i.preheader.i.i246.i:                      ; preds = %bb.ca
  %i.zs = add nsw i32 %i.g, -17                   ; 3 uses
  %i.zt = lshr i32 %i.zs, 3
  %narrow = add nuw nsw i32 %i.zt, 1
  %i.zu = zext nneg i32 %narrow to i64            ; 2 uses
  %xtraiter = and i64 %i.zu, 3                    ; 3 uses
  %i.zv = icmp ult i32 %i.zs, 24
  br i1 %i.zv, label %.lr.ph.i.i.i248.i.epil.preheader, label %.lr.ph.i.preheader.i.i246.i.new

.lr.ph.i.preheader.i.i246.i.new:                  ; preds = %.lr.ph.i.preheader.i.i246.i
  %unroll_iter = and i64 %i.zu, 1073741820
  br label %.lr.ph.i.i.i248.i

.lr.ph.i.i.i248.i:                                ; preds = %.lr.ph.i.i.i248.i, %.lr.ph.i.preheader.i.i246.i.new
  %indvars.iv.i.i.i249.i = phi i64 [ 8, %.lr.ph.i.preheader.i.i246.i.new ], [ %indvars.iv.next.i.i.i252.i.3, %.lr.ph.i.i.i248.i ] ; 2 uses
  %.02435.i.i.i250.i = phi i64 [ 1, %.lr.ph.i.preheader.i.i246.i.new ], [ %.024.i.i.i253.i.3, %.lr.ph.i.i.i248.i ] ; 5 uses
  %.02633.i.i.i251.i = phi i64 [ %i.zp, %.lr.ph.i.preheader.i.i246.i.new ], [ %i.aaq, %.lr.ph.i.i.i248.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.i.i246.i.new ], [ %niter.next.3, %.lr.ph.i.i.i248.i ]
  %i.zw = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i250.i
  %i.zx = load i8, ptr %i.zw, align 1, !tbaa !32
  %i.zy = zext i8 %i.zx to i64
  %i.zz = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i250.i
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 1
  %i.aab = load i8, ptr %i.aaa, align 1, !tbaa !32
  %i.aac = zext i8 %i.aab to i64
  %i.aad = shl nuw nsw i64 %i.aac, 8
  %i.aae = or disjoint i64 %i.aad, %i.zy
  %i.aaf = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i250.i
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 2
  %i.aah = load i8, ptr %i.aag, align 1, !tbaa !32
  %i.aai = zext i8 %i.aah to i64
  %i.aaj = shl nuw nsw i64 %i.aai, 16
  %i.aak = or disjoint i64 %i.aae, %i.aaj
  %i.aal = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i250.i
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 3
  %i.aan = load i8, ptr %i.aam, align 1, !tbaa !32
  %i.aao = zext i8 %i.aan to i64
  %17 = shl nuw nsw i64 %i.aao, 24
  %18 = or disjoint i64 %i.aak, %17
  %i.aap = shl i64 %18, %indvars.iv.i.i.i249.i
  %i.aaq = or i64 %i.aap, %.02633.i.i.i251.i      ; 3 uses
  %indvars.iv.next.i.i.i252.i.3 = add nuw nsw i64 %indvars.iv.i.i.i249.i, 32 ; 2 uses
  %.024.i.i.i253.i.3 = add nuw nsw i64 %.02435.i.i.i250.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.i.i255.i.unr-lcssa, label %.lr.ph.i.i.i248.i, !llvm.loop !0

._crit_edge.i.loopexit.i.i255.i.unr-lcssa:        ; preds = %.lr.ph.i.i.i248.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit.i.i255.i, label %.lr.ph.i.i.i248.i.epil.preheader

.lr.ph.i.i.i248.i.epil.preheader:                 ; preds = %._crit_edge.i.loopexit.i.i255.i.unr-lcssa, %.lr.ph.i.preheader.i.i246.i
  %indvars.iv.i.i.i249.i.epil.init = phi i64 [ 8, %.lr.ph.i.preheader.i.i246.i ], [ %indvars.iv.next.i.i.i252.i.3, %._crit_edge.i.loopexit.i.i255.i.unr-lcssa ]
  %.02435.i.i.i250.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader.i.i246.i ], [ %.024.i.i.i253.i.3, %._crit_edge.i.loopexit.i.i255.i.unr-lcssa ]
  %.02633.i.i.i251.i.epil.init = phi i64 [ %i.zp, %.lr.ph.i.preheader.i.i246.i ], [ %i.aaq, %._crit_edge.i.loopexit.i.i255.i.unr-lcssa ]
  %lcmp.mod340 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod340)
  br label %.lr.ph.i.i.i248.i.epil

.lr.ph.i.i.i248.i.epil:                           ; preds = %.lr.ph.i.i.i248.i.epil, %.lr.ph.i.i.i248.i.epil.preheader
  %indvars.iv.i.i.i249.i.epil = phi i64 [ %indvars.iv.next.i.i.i252.i.epil, %.lr.ph.i.i.i248.i.epil ], [ %indvars.iv.i.i.i249.i.epil.init, %.lr.ph.i.i.i248.i.epil.preheader ] ; 2 uses
  %.02435.i.i.i250.i.epil = phi i64 [ %.024.i.i.i253.i.epil, %.lr.ph.i.i.i248.i.epil ], [ %.02435.i.i.i250.i.epil.init, %.lr.ph.i.i.i248.i.epil.preheader ] ; 2 uses
  %.02633.i.i.i251.i.epil = phi i64 [ %i.aav, %.lr.ph.i.i.i248.i.epil ], [ %.02633.i.i.i251.i.epil.init, %.lr.ph.i.i.i248.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i248.i.epil ], [ 0, %.lr.ph.i.i.i248.i.epil.preheader ]
  %i.aar = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i250.i.epil
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !32
  %i.aat = zext i8 %i.aas to i64
  %i.aau = shl i64 %i.aat, %indvars.iv.i.i.i249.i.epil
  %i.aav = or i64 %i.aau, %.02633.i.i.i251.i.epil ; 2 uses
  %indvars.iv.next.i.i.i252.i.epil = add nuw nsw i64 %indvars.iv.i.i.i249.i.epil, 8
  %.024.i.i.i253.i.epil = add nuw nsw i64 %.02435.i.i.i250.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.loopexit.i.i255.i, label %.lr.ph.i.i.i248.i.epil, !llvm.loop !193

._crit_edge.i.loopexit.i.i255.i:                  ; preds = %.lr.ph.i.i.i248.i.epil, %._crit_edge.i.loopexit.i.i255.i.unr-lcssa
  %.lcssa338 = phi i64 [ %i.aaq, %._crit_edge.i.loopexit.i.i255.i.unr-lcssa ], [ %i.aav, %.lr.ph.i.i.i248.i.epil ]
  %i.aaw = add nsw i32 %i.g, -16
  %i.aax = zext nneg i32 %i.zs to i64             ; 2 uses
  %i.aay = lshr i64 %i.aax, 3                     ; 2 uses
  %i.aaz = trunc nuw nsw i64 %i.aay to i32
  %i.aba = shl nuw nsw i32 %i.aaz, 3
  %i.abb = sub nsw i32 %i.aaw, %i.aba
  %i.abc = and i64 %i.aax, 2147483640
  %i.abd = add nuw nsw i64 %i.abc, 16
  %i.abe = add nuw nsw i64 %i.aay, 2
  br label %._crit_edge.i.i.i240.i

._crit_edge.i.i.i240.i:                           ; preds = %._crit_edge.i.loopexit.i.i255.i, %bb.ca
  %.027.lcssa.i.i.i241.i = phi i32 [ %i.zq, %bb.ca ], [ %i.abb, %._crit_edge.i.loopexit.i.i255.i ]
  %.026.lcssa.i.i.i242.i = phi i64 [ %i.zp, %bb.ca ], [ %.lcssa338, %._crit_edge.i.loopexit.i.i255.i ]
  %.025.lcssa.i.i.i243.i = phi i64 [ 8, %bb.ca ], [ %i.abd, %._crit_edge.i.loopexit.i.i255.i ]
  %.024.lcssa.i.i.i244.i = phi i64 [ 1, %bb.ca ], [ %i.abe, %._crit_edge.i.loopexit.i.i255.i ]
  %i.abf = getelementptr inbounds nuw i8, ptr %1, i64 %.024.lcssa.i.i.i244.i
  %i.abg = load i8, ptr %i.abf, align 1, !tbaa !32
  %notmask.i.i.i245.i = shl nsw i32 -1, %.027.lcssa.i.i.i241.i
  %i.abh = xor i32 %notmask.i.i.i245.i, -1
  %i.abi = zext i8 %i.abg to i32
  %i.abj = and i32 %i.abi, %i.abh
  %i.abk = zext nneg i32 %i.abj to i64
  %i.abl = shl i64 %i.abk, %.025.lcssa.i.i.i243.i
  %i.abm = or i64 %i.abl, %.026.lcssa.i.i.i242.i
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i210.i

_ZN5faiss15BitstringReader4readEi.exit.i.i210.i:  ; preds = %._crit_edge.i.i.i240.i, %bb.bz
  %.0.i.i.i211.i = phi i64 [ %i.zo, %bb.bz ], [ %i.abm, %._crit_edge.i.i.i240.i ]
  %i.abn = load <8 x i64>, ptr %1, align 8, !tbaa !37
  %i.abo = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.abp = load i32, ptr %i.abo, align 4, !tbaa !114
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.abr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.abs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.abt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.abu = sitofp i32 %2 to float
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i224.i.outer

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i224.i.outer: ; preds = %bb.cj, %_ZN5faiss15BitstringReader4readEi.exit.i.i210.i
  %.sroa.938.0.i.i212.i.ph = phi i64 [ %i.adw, %bb.cj ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i210.i ]
  %.sroa.12.0.i.i213.i.ph = phi i64 [ %i.adz, %bb.cj ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i210.i ]
  %.sroa.4.0.i.i214.i.ph = phi i32 [ %i.adu, %bb.cj ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i210.i ] ; 2 uses
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i224.i

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i224.i: ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i224.i.backedge, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i224.i.outer
  %.sroa.12.0.i.i213.i = phi i64 [ %.sroa.12.0.i.i213.i.ph, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i224.i.outer ], [ %.sroa.12.0.i.i213.i.be, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i224.i.backedge ] ; 6 uses
  %i.abv = xor i64 %.sroa.12.0.i.i213.i, %.0.i.i.i211.i ; 4 uses
  %i.abw = load i64, ptr %i.abq, align 8, !tbaa !115
  %.not.not.i.i.i.i215.i = icmp eq i64 %i.abw, 0
  br i1 %.not.not.i.i.i.i215.i, label %.preheader.i.i237.i, label %bb.cc

.preheader.i.i237.i:                              ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i224.i, %bb.cb
  %.sroa.06.0.in.i.i.i.i238.i = phi ptr [ %.sroa.06.0.i.i.i.i239.i, %bb.cb ], [ %i.abt, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i224.i ]
  %.sroa.06.0.i.i.i.i239.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i238.i, align 8, !tbaa !54 ; 4 uses
  %i.abx = icmp eq ptr %.sroa.06.0.i.i.i.i239.i, null
  br i1 %i.abx, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i222.i, label %bb.cb

bb.cb:                                            ; preds = %.preheader.i.i237.i
  %i.aby = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i239.i, i64 8
  %i.abz = load i64, ptr %i.aby, align 8, !tbaa !37
  %i.aca = icmp eq i64 %i.abv, %i.abz
  br i1 %i.aca, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i229.i, label %.preheader.i.i237.i, !llvm.loop !5

bb.cc:                                            ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i224.i
  %i.acb = load i64, ptr %i.abs, align 8, !tbaa !51 ; 2 uses
  %i.acc = urem i64 %i.abv, %i.acb                ; 2 uses
  %i.acd = load ptr, ptr %i.abr, align 8, !tbaa !52
  %i.ace = getelementptr inbounds nuw [8 x i8], ptr %i.acd, i64 %i.acc
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i.i.i216.i = icmp eq ptr %i.acf, null
  br i1 %.not.i.i.i.i.i.i216.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i222.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.acg = load ptr, ptr %i.acf, align 8, !tbaa !54 ; 3 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 8
  %i.aci = load i64, ptr %i.ach, align 8, !tbaa !37
  %i.acj = icmp eq i64 %i.abv, %i.aci
  br i1 %i.acj, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i229.i, label %.lr.ph.i.i.i.i.i.i217.i

bb.ce:                                            ; preds = %bb.cf
  %i.ack = icmp eq i64 %i.abv, %i.acn
  br i1 %i.ack, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i229.i, label %.lr.ph.i.i.i.i.i.i217.i, !llvm.loop !1

.lr.ph.i.i.i.i.i.i217.i:                          ; preds = %bb.cd, %bb.ce
  %.020.i.i.i.i.i.i218.i = phi ptr [ %i.acl, %bb.ce ], [ %i.acg, %bb.cd ]
  %i.acl = load ptr, ptr %.020.i.i.i.i.i.i218.i, align 8, !tbaa !54 ; 4 uses
  %.not18.i.i.i.i.i.i219.i = icmp eq ptr %i.acl, null
  br i1 %.not18.i.i.i.i.i.i219.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i222.i, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.i.i.i.i.i.i217.i
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 8
  %i.acn = load i64, ptr %i.acm, align 8, !tbaa !37 ; 2 uses
  %i.aco = urem i64 %i.acn, %i.acb
  %.not19.i.i.i.i.i.i220.i = icmp eq i64 %i.aco, %i.acc
  br i1 %.not19.i.i.i.i.i.i220.i, label %bb.ce, label %..loopexit_crit_edge21.i.i.i.i.i.i221.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i.i.i221.i:          ; preds = %bb.cf
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i222.i, !llvm.loop !1

_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i229.i: ; preds = %bb.ce, %bb.cb, %bb.cd
  %.sroa.06.1.i.i.i.i230.i = phi ptr [ %.sroa.06.0.i.i.i.i239.i, %bb.cb ], [ %i.acg, %bb.cd ], [ %i.acl, %bb.ce ] ; 3 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i230.i, i64 16 ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i230.i, i64 24
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !112 ; 2 uses
  %i.acs = load ptr, ptr %i.acp, align 8, !tbaa !88 ; 2 uses
  %i.act = ptrtoint ptr %i.acr to i64
  %i.acu = ptrtoint ptr %i.acs to i64
  %i.acv = sub i64 %i.act, %i.acu
  %i.acw = ashr exact i64 %i.acv, 3               ; 2 uses
  %i.acx = icmp eq ptr %i.acr, %i.acs
  br i1 %i.acx, label %bb.cg, label %.lr.ph.preheader.i.i231.i

bb.cg:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i229.i
  %i.acy = load i64, ptr %4, align 8, !tbaa !37
  %i.acz = add i64 %i.acy, 1
  store i64 %i.acz, ptr %4, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i222.i

.lr.ph.preheader.i.i231.i:                        ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i229.i
  %i.ada = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i230.i, i64 40
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !86
  br label %.lr.ph.i.i232.i

._crit_edge.i.i235.i:                             ; preds = %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i234.i
  %i.adc = load i64, ptr %6, align 8, !tbaa !37
  %i.add = add i64 %i.adc, %i.acw
  store i64 %i.add, ptr %6, align 8, !tbaa !37
  %i.ade = load i64, ptr %5, align 8, !tbaa !37
  %i.adf = add i64 %i.ade, 1
  store i64 %i.adf, ptr %5, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i222.i

.lr.ph.i.i232.i:                                  ; preds = %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i234.i, %.lr.ph.preheader.i.i231.i
  %.057.i.i.i = phi i64 [ %i.adr, %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i234.i ], [ 0, %.lr.ph.preheader.i.i231.i ] ; 2 uses
  %.02856.i.i.i = phi ptr [ %i.adq, %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i234.i ], [ %i.adb, %.lr.ph.preheader.i.i231.i ] ; 2 uses
  %i.adg = load <8 x i64>, ptr %.02856.i.i.i, align 8, !tbaa !37
  %i.adh = xor <8 x i64> %i.adg, %i.abn
  %i.adi = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.adh)
  %i.adj = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.adi)
  %i.adk = trunc nuw nsw i64 %i.adj to i32
  %i.adl = uitofp nneg i32 %i.adk to float        ; 2 uses
  %i.adm = fcmp olt float %i.adl, %i.abu
  br i1 %i.adm, label %bb.ch, label %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i234.i

bb.ch:                                            ; preds = %.lr.ph.i.i232.i
  %i.adn = load ptr, ptr %i.acp, align 8, !tbaa !88
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %.057.i.i.i
  %i.adp = load i64, ptr %i.ado, align 8, !tbaa !37
  tail call void @_ZN5faiss16RangeQueryResult3addEfl(ptr noundef nonnull align 8 dereferenceable(40) %3, float noundef %i.adl, i64 noundef %i.adp)
  br label %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i234.i

_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i234.i: ; preds = %bb.ch, %.lr.ph.i.i232.i
  %i.adq = getelementptr inbounds nuw i8, ptr %.02856.i.i.i, i64 %i.e
  %i.adr = add nuw i64 %.057.i.i.i, 1             ; 2 uses
  %exitcond64.not.i.i.i = icmp eq i64 %i.adr, %i.acw
  br i1 %exitcond64.not.i.i.i, label %._crit_edge.i.i235.i, label %.lr.ph.i.i232.i, !llvm.loop !194

_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i222.i: ; preds = %.lr.ph.i.i.i.i.i.i217.i, %.preheader.i.i237.i, %._crit_edge.i.i235.i, %bb.cg, %..loopexit_crit_edge21.i.i.i.i.i.i221.i, %bb.cc
  %i.ads = icmp eq i64 %.sroa.12.0.i.i213.i, %.sroa.938.0.i.i212.i.ph
  br i1 %i.ads, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i222.i
  %i.adt = icmp eq i32 %.sroa.4.0.i.i214.i.ph, %i.abp
  br i1 %i.adt, label %"_ZN5faiss20with_HammingComputerILNS_9SIMDLevelE0EZNS_30binary_hash_range_search_fixSLILS1_0EEEvRKNS_15IndexBinaryHashEPKhiRNS_16RangeQueryResultERmSA_SA_E3$_0EEDciOT0_.exit", label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.adu = add nuw nsw i32 %.sroa.4.0.i.i214.i.ph, 1 ; 3 uses
  %i.adv = zext nneg i32 %i.adu to i64
  %notmask.i33.i.i228.i = shl nsw i64 -1, %i.adv
  %i.adw = xor i64 %notmask.i33.i.i228.i, -1      ; 2 uses
  %i.adx = sub nsw i32 %i.g, %i.adu
  %i.ady = zext nneg i32 %i.adx to i64
  %i.adz = shl i64 %i.adw, %i.ady
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i224.i.outer, !llvm.loop !195

bb.ck:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i222.i
  %i.aea = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.12.0.i.i213.i, i1 true) ; 2 uses
  %.not.i31.i.i223.i = icmp eq i64 %i.aea, 0
  br i1 %.not.i31.i.i223.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.aeb = add nsw i64 %i.aea, -1
  %i.aec = shl nuw i64 3, %i.aeb
  %i.aed = xor i64 %i.aec, %.sroa.12.0.i.i213.i
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i224.i.backedge

bb.cm:                                            ; preds = %bb.ck
  %i.aee = xor i64 %.sroa.12.0.i.i213.i, -1
  %i.aef = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aee, i1 true) ; 3 uses
  %i.aeg = shl nsw i64 -1, %i.aef
  %i.aeh = and i64 %i.aeg, %.sroa.12.0.i.i213.i   ; 2 uses
  %i.aei = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aeh, i1 true)
  %i.aej = shl nuw i64 4, %i.aef
  %i.aek = add i64 %i.aej, -1
  %i.ael = xor i64 %i.aef, -1
  %i.aem = add nsw i64 %i.aei, %i.ael
  %i.aen = and i64 %i.aem, 4294967295
  %i.aeo = shl i64 %i.aek, %i.aen
  %i.aep = xor i64 %i.aeo, %i.aeh
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i224.i.backedge

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i224.i.backedge: ; preds = %bb.cm, %bb.cl
  %.sroa.12.0.i.i213.i.be = phi i64 [ %i.aep, %bb.cm ], [ %i.aed, %bb.cl ]
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i224.i, !llvm.loop !195

bb.cn:                                            ; preds = %bb.a
  br i1 %.not.i.i.i256.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.aeq = zext i8 %i.h to i32
  %notmask30.i.i.i257.i = shl nsw i32 -1, %i.g
  %i.aer = xor i32 %notmask30.i.i.i257.i, -1
  %i.aes = and i32 %i.aeq, %i.aer
  %i.aet = zext nneg i32 %i.aes to i64
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i258.i

bb.cp:                                            ; preds = %bb.cn
  %i.aeu = zext i8 %i.h to i64                    ; 3 uses
  %i.aev = add nsw i32 %i.g, -8
  %i.aew = icmp samesign ugt i32 %i.g, 16
  br i1 %i.aew, label %.lr.ph.i.preheader.i.i292.i, label %._crit_edge.i.i.i286.i

.lr.ph.i.preheader.i.i292.i:                      ; preds = %bb.cp
  %i.aex = add nsw i32 %i.g, -17                  ; 3 uses
  %i.aey = lshr i32 %i.aex, 3
  %narrow388 = add nuw nsw i32 %i.aey, 1
  %i.aez = zext nneg i32 %narrow388 to i64        ; 2 uses
  %xtraiter376 = and i64 %i.aez, 3                ; 3 uses
  %i.afa = icmp ult i32 %i.aex, 24
  br i1 %i.afa, label %.lr.ph.i.i.i294.i.epil.preheader, label %.lr.ph.i.preheader.i.i292.i.new

.lr.ph.i.preheader.i.i292.i.new:                  ; preds = %.lr.ph.i.preheader.i.i292.i
  %unroll_iter381 = and i64 %i.aez, 1073741820
  br label %.lr.ph.i.i.i294.i

.lr.ph.i.i.i294.i:                                ; preds = %.lr.ph.i.i.i294.i, %.lr.ph.i.preheader.i.i292.i.new
  %indvars.iv.i.i.i295.i = phi i64 [ 8, %.lr.ph.i.preheader.i.i292.i.new ], [ %indvars.iv.next.i.i.i298.i.3, %.lr.ph.i.i.i294.i ] ; 2 uses
  %.02435.i.i.i296.i = phi i64 [ 1, %.lr.ph.i.preheader.i.i292.i.new ], [ %.024.i.i.i299.i.3, %.lr.ph.i.i.i294.i ] ; 5 uses
  %.02633.i.i.i297.i = phi i64 [ %i.aeu, %.lr.ph.i.preheader.i.i292.i.new ], [ %i.afv, %.lr.ph.i.i.i294.i ]
  %niter382 = phi i64 [ 0, %.lr.ph.i.preheader.i.i292.i.new ], [ %niter382.next.3, %.lr.ph.i.i.i294.i ]
  %i.afb = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i296.i
  %i.afc = load i8, ptr %i.afb, align 1, !tbaa !32
  %i.afd = zext i8 %i.afc to i64
  %i.afe = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i296.i
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 1
  %i.afg = load i8, ptr %i.aff, align 1, !tbaa !32
  %i.afh = zext i8 %i.afg to i64
  %i.afi = shl nuw nsw i64 %i.afh, 8
  %i.afj = or disjoint i64 %i.afi, %i.afd
  %i.afk = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i296.i
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 2
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !32
  %i.afn = zext i8 %i.afm to i64
  %i.afo = shl nuw nsw i64 %i.afn, 16
  %i.afp = or disjoint i64 %i.afj, %i.afo
  %i.afq = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i296.i
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 3
  %i.afs = load i8, ptr %i.afr, align 1, !tbaa !32
  %i.aft = zext i8 %i.afs to i64
  %19 = shl nuw nsw i64 %i.aft, 24
  %20 = or disjoint i64 %i.afp, %19
  %i.afu = shl i64 %20, %indvars.iv.i.i.i295.i
  %i.afv = or i64 %i.afu, %.02633.i.i.i297.i      ; 3 uses
  %indvars.iv.next.i.i.i298.i.3 = add nuw nsw i64 %indvars.iv.i.i.i295.i, 32 ; 2 uses
  %.024.i.i.i299.i.3 = add nuw nsw i64 %.02435.i.i.i296.i, 4 ; 2 uses
  %niter382.next.3 = add nuw i64 %niter382, 4     ; 2 uses
  %niter382.ncmp.3 = icmp eq i64 %niter382.next.3, %unroll_iter381
  br i1 %niter382.ncmp.3, label %._crit_edge.i.loopexit.i.i301.i.unr-lcssa, label %.lr.ph.i.i.i294.i, !llvm.loop !0

._crit_edge.i.loopexit.i.i301.i.unr-lcssa:        ; preds = %.lr.ph.i.i.i294.i
  %lcmp.mod378.not = icmp eq i64 %xtraiter376, 0
  br i1 %lcmp.mod378.not, label %._crit_edge.i.loopexit.i.i301.i, label %.lr.ph.i.i.i294.i.epil.preheader

.lr.ph.i.i.i294.i.epil.preheader:                 ; preds = %._crit_edge.i.loopexit.i.i301.i.unr-lcssa, %.lr.ph.i.preheader.i.i292.i
  %indvars.iv.i.i.i295.i.epil.init = phi i64 [ 8, %.lr.ph.i.preheader.i.i292.i ], [ %indvars.iv.next.i.i.i298.i.3, %._crit_edge.i.loopexit.i.i301.i.unr-lcssa ]
  %.02435.i.i.i296.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader.i.i292.i ], [ %.024.i.i.i299.i.3, %._crit_edge.i.loopexit.i.i301.i.unr-lcssa ]
  %.02633.i.i.i297.i.epil.init = phi i64 [ %i.aeu, %.lr.ph.i.preheader.i.i292.i ], [ %i.afv, %._crit_edge.i.loopexit.i.i301.i.unr-lcssa ]
  %lcmp.mod380 = icmp ne i64 %xtraiter376, 0
  tail call void @llvm.assume(i1 %lcmp.mod380)
  br label %.lr.ph.i.i.i294.i.epil

.lr.ph.i.i.i294.i.epil:                           ; preds = %.lr.ph.i.i.i294.i.epil, %.lr.ph.i.i.i294.i.epil.preheader
  %indvars.iv.i.i.i295.i.epil = phi i64 [ %indvars.iv.next.i.i.i298.i.epil, %.lr.ph.i.i.i294.i.epil ], [ %indvars.iv.i.i.i295.i.epil.init, %.lr.ph.i.i.i294.i.epil.preheader ] ; 2 uses
  %.02435.i.i.i296.i.epil = phi i64 [ %.024.i.i.i299.i.epil, %.lr.ph.i.i.i294.i.epil ], [ %.02435.i.i.i296.i.epil.init, %.lr.ph.i.i.i294.i.epil.preheader ] ; 2 uses
  %.02633.i.i.i297.i.epil = phi i64 [ %i.aga, %.lr.ph.i.i.i294.i.epil ], [ %.02633.i.i.i297.i.epil.init, %.lr.ph.i.i.i294.i.epil.preheader ]
  %epil.iter377 = phi i64 [ %epil.iter377.next, %.lr.ph.i.i.i294.i.epil ], [ 0, %.lr.ph.i.i.i294.i.epil.preheader ]
  %i.afw = getelementptr inbounds nuw i8, ptr %1, i64 %.02435.i.i.i296.i.epil
  %i.afx = load i8, ptr %i.afw, align 1, !tbaa !32
  %i.afy = zext i8 %i.afx to i64
  %i.afz = shl i64 %i.afy, %indvars.iv.i.i.i295.i.epil
  %i.aga = or i64 %i.afz, %.02633.i.i.i297.i.epil ; 2 uses
  %indvars.iv.next.i.i.i298.i.epil = add nuw nsw i64 %indvars.iv.i.i.i295.i.epil, 8
  %.024.i.i.i299.i.epil = add nuw nsw i64 %.02435.i.i.i296.i.epil, 1
  %epil.iter377.next = add i64 %epil.iter377, 1   ; 2 uses
  %epil.iter377.cmp.not = icmp eq i64 %epil.iter377.next, %xtraiter376
  br i1 %epil.iter377.cmp.not, label %._crit_edge.i.loopexit.i.i301.i, label %.lr.ph.i.i.i294.i.epil, !llvm.loop !196

._crit_edge.i.loopexit.i.i301.i:                  ; preds = %.lr.ph.i.i.i294.i.epil, %._crit_edge.i.loopexit.i.i301.i.unr-lcssa
  %.lcssa = phi i64 [ %i.afv, %._crit_edge.i.loopexit.i.i301.i.unr-lcssa ], [ %i.aga, %.lr.ph.i.i.i294.i.epil ]
  %i.agb = add nsw i32 %i.g, -16
  %i.agc = zext nneg i32 %i.aex to i64            ; 2 uses
  %i.agd = lshr i64 %i.agc, 3                     ; 2 uses
  %i.age = trunc nuw nsw i64 %i.agd to i32
  %i.agf = shl nuw nsw i32 %i.age, 3
  %i.agg = sub nsw i32 %i.agb, %i.agf
  %i.agh = and i64 %i.agc, 2147483640
  %i.agi = add nuw nsw i64 %i.agh, 16
  %i.agj = add nuw nsw i64 %i.agd, 2
  br label %._crit_edge.i.i.i286.i

._crit_edge.i.i.i286.i:                           ; preds = %._crit_edge.i.loopexit.i.i301.i, %bb.cp
  %.027.lcssa.i.i.i287.i = phi i32 [ %i.aev, %bb.cp ], [ %i.agg, %._crit_edge.i.loopexit.i.i301.i ]
  %.026.lcssa.i.i.i288.i = phi i64 [ %i.aeu, %bb.cp ], [ %.lcssa, %._crit_edge.i.loopexit.i.i301.i ]
  %.025.lcssa.i.i.i289.i = phi i64 [ 8, %bb.cp ], [ %i.agi, %._crit_edge.i.loopexit.i.i301.i ]
  %.024.lcssa.i.i.i290.i = phi i64 [ 1, %bb.cp ], [ %i.agj, %._crit_edge.i.loopexit.i.i301.i ]
  %i.agk = getelementptr inbounds nuw i8, ptr %1, i64 %.024.lcssa.i.i.i290.i
  %i.agl = load i8, ptr %i.agk, align 1, !tbaa !32
  %notmask.i.i.i291.i = shl nsw i32 -1, %.027.lcssa.i.i.i287.i
  %i.agm = xor i32 %notmask.i.i.i291.i, -1
  %i.agn = zext i8 %i.agl to i32
  %i.ago = and i32 %i.agn, %i.agm
  %i.agp = zext nneg i32 %i.ago to i64
  %i.agq = shl i64 %i.agp, %.025.lcssa.i.i.i289.i
  %i.agr = or i64 %i.agq, %.026.lcssa.i.i.i288.i
  br label %_ZN5faiss15BitstringReader4readEi.exit.i.i258.i

_ZN5faiss15BitstringReader4readEi.exit.i.i258.i:  ; preds = %._crit_edge.i.i.i286.i, %bb.co
  %.0.i.i.i259.i = phi i64 [ %i.aet, %bb.co ], [ %i.agr, %._crit_edge.i.i.i286.i ]
  %i.ags = sdiv i32 %i.b, 8                       ; 10 uses
  %i.agt = srem i32 %i.b, 8                       ; 4 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.agv = load i32, ptr %i.agu, align 4, !tbaa !114
  %i.agw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.agx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.agy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.agz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aha = and i32 %i.ags, 7                      ; 3 uses
  %.not.i34.i.i.i = icmp eq i32 %i.agt, 0
  %i.ahb = shl nsw i32 %i.ags, 3
  %i.ahc = sext i32 %i.ahb to i64                 ; 2 uses
  %i.ahd = getelementptr inbounds i8, ptr %1, i64 %i.ahc ; 3 uses
  %i.ahe = icmp sgt i32 %i.agt, 3
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahd, i64 4
  %i.ahg = add nsw i32 %i.agt, -4
  %i.ahh = sitofp i32 %2 to float
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i271.i.outer

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i271.i.outer: ; preds = %bb.do, %_ZN5faiss15BitstringReader4readEi.exit.i.i258.i
  %.sroa.940.0.i.i.i.ph = phi i64 [ %i.ang, %bb.do ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i258.i ]
  %.sroa.12.0.i.i260.i.ph = phi i64 [ %i.anj, %bb.do ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i258.i ]
  %.sroa.4.0.i.i261.i.ph = phi i32 [ %i.ane, %bb.do ], [ 0, %_ZN5faiss15BitstringReader4readEi.exit.i.i258.i ] ; 2 uses
  br label %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i271.i

_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i271.i: ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i271.i.backedge, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i271.i.outer
  %.sroa.12.0.i.i260.i = phi i64 [ %.sroa.12.0.i.i260.i.ph, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i271.i.outer ], [ %.sroa.12.0.i.i260.i.be, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i271.i.backedge ] ; 6 uses
  %i.ahi = xor i64 %.sroa.12.0.i.i260.i, %.0.i.i.i259.i ; 4 uses
  %i.ahj = load i64, ptr %i.agw, align 8, !tbaa !115
  %.not.not.i.i.i.i262.i = icmp eq i64 %i.ahj, 0
  br i1 %.not.not.i.i.i.i262.i, label %.preheader.i.i283.i, label %bb.cr

.preheader.i.i283.i:                              ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i271.i, %bb.cq
  %.sroa.06.0.in.i.i.i.i284.i = phi ptr [ %.sroa.06.0.i.i.i.i285.i, %bb.cq ], [ %i.agz, %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i271.i ]
  %.sroa.06.0.i.i.i.i285.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i284.i, align 8, !tbaa !54 ; 4 uses
  %i.ahk = icmp eq ptr %.sroa.06.0.i.i.i.i285.i, null
  br i1 %i.ahk, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i269.i, label %bb.cq

bb.cq:                                            ; preds = %.preheader.i.i283.i
  %i.ahl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i285.i, i64 8
  %i.ahm = load i64, ptr %i.ahl, align 8, !tbaa !37
  %i.ahn = icmp eq i64 %i.ahi, %i.ahm
  br i1 %i.ahn, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i275.i, label %.preheader.i.i283.i, !llvm.loop !5

bb.cr:                                            ; preds = %_ZN5faiss12_GLOBAL__N_114FlipEnumerator4nextEv.exit.i.i271.i
  %i.aho = load i64, ptr %i.agy, align 8, !tbaa !51 ; 2 uses
  %i.ahp = urem i64 %i.ahi, %i.aho                ; 2 uses
  %i.ahq = load ptr, ptr %i.agx, align 8, !tbaa !52
  %i.ahr = getelementptr inbounds nuw [8 x i8], ptr %i.ahq, i64 %i.ahp
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i.i.i263.i = icmp eq ptr %i.ahs, null
  br i1 %.not.i.i.i.i.i.i263.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i269.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !54 ; 3 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 8
  %i.ahv = load i64, ptr %i.ahu, align 8, !tbaa !37
  %i.ahw = icmp eq i64 %i.ahi, %i.ahv
  br i1 %i.ahw, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i275.i, label %.lr.ph.i.i.i.i.i.i264.i

bb.ct:                                            ; preds = %bb.cu
  %i.ahx = icmp eq i64 %i.ahi, %i.aia
  br i1 %i.ahx, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i275.i, label %.lr.ph.i.i.i.i.i.i264.i, !llvm.loop !1

.lr.ph.i.i.i.i.i.i264.i:                          ; preds = %bb.cs, %bb.ct
  %.020.i.i.i.i.i.i265.i = phi ptr [ %i.ahy, %bb.ct ], [ %i.aht, %bb.cs ]
  %i.ahy = load ptr, ptr %.020.i.i.i.i.i.i265.i, align 8, !tbaa !54 ; 4 uses
  %.not18.i.i.i.i.i.i266.i = icmp eq ptr %i.ahy, null
  br i1 %.not18.i.i.i.i.i.i266.i, label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i269.i, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph.i.i.i.i.i.i264.i
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 8
  %i.aia = load i64, ptr %i.ahz, align 8, !tbaa !37 ; 2 uses
  %i.aib = urem i64 %i.aia, %i.aho
  %.not19.i.i.i.i.i.i267.i = icmp eq i64 %i.aib, %i.ahp
  br i1 %.not19.i.i.i.i.i.i267.i, label %bb.ct, label %..loopexit_crit_edge21.i.i.i.i.i.i268.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i.i.i268.i:          ; preds = %bb.cu
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i269.i, !llvm.loop !1

_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i275.i: ; preds = %bb.ct, %bb.cq, %bb.cs
  %.sroa.06.1.i.i.i.i276.i = phi ptr [ %.sroa.06.0.i.i.i.i285.i, %bb.cq ], [ %i.aht, %bb.cs ], [ %i.ahy, %bb.ct ] ; 3 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i276.i, i64 16 ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i276.i, i64 24
  %i.aie = load ptr, ptr %i.aid, align 8, !tbaa !112 ; 2 uses
  %i.aif = load ptr, ptr %i.aic, align 8, !tbaa !88 ; 2 uses
  %i.aig = ptrtoint ptr %i.aie to i64
  %i.aih = ptrtoint ptr %i.aif to i64
  %i.aii = sub i64 %i.aig, %i.aih
  %i.aij = ashr exact i64 %i.aii, 3               ; 2 uses
  %i.aik = icmp eq ptr %i.aie, %i.aif
  br i1 %i.aik, label %bb.cv, label %.lr.ph.preheader.i.i277.i

bb.cv:                                            ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i275.i
  %i.ail = load i64, ptr %4, align 8, !tbaa !37
  %i.aim = add i64 %i.ail, 1
  store i64 %i.aim, ptr %4, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i269.i

.lr.ph.preheader.i.i277.i:                        ; preds = %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.i.i275.i
  %i.ain = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i276.i, i64 40
  %i.aio = load ptr, ptr %i.ain, align 8, !tbaa !86
  br label %.lr.ph.i.i278.i

._crit_edge.i.i281.i:                             ; preds = %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i280.i
  %i.aip = load i64, ptr %6, align 8, !tbaa !37
  %i.aiq = add i64 %i.aip, %i.aij
  store i64 %i.aiq, ptr %6, align 8, !tbaa !37
  %i.air = load i64, ptr %5, align 8, !tbaa !37
  %i.ais = add i64 %i.air, 1
  store i64 %i.ais, ptr %5, align 8, !tbaa !37
  br label %_ZNKSt13unordered_mapIlN5faiss15IndexBinaryHash12InvertedListESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE4findERS8_.exit.thread.i.i269.i

.lr.ph.i.i278.i:                                  ; preds = %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i280.i, %.lr.ph.preheader.i.i277.i
  %.058.i.i.i = phi i64 [ %i.anb, %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i280.i ], [ 0, %.lr.ph.preheader.i.i277.i ] ; 2 uses
  %.02857.i.i.i = phi ptr [ %i.ana, %_ZN5faiss12_GLOBAL__N_118RangeSearchResults3addEfl.exit.i.i280.i ], [ %i.aio, %.lr.ph.preheader.i.i277.i ] ; 10 uses
  switch i32 %i.aha, label %default.unreachable [
    i32 7, label %bb.cy
    i32 6, label %bb.cz
    i32 5, label %bb.da
    i32 4, label %bb.db
    i32 3, label %bb.dc
    i32 2, label %bb.dd
    i32 1, label %bb.de
    i32 0, label %bb.cw
  ]

default.unreachable:                              ; preds = %.lr.ph.i.i278.i
  unreachable

bb.cw:                                            ; preds = %bb.de, %.lr.ph.i.i278.i
  %.090.i.i.i.i = phi i32 [ %i.alv, %bb.de ], [ %i.aha, %.lr.ph.i.i278.i ] ; 4 uses
  %.082.i.i.i.i = phi i32 [ %i.alw, %bb.de ], [ %i.aha, %.lr.ph.i.i278.i ] ; 2 uses
  %.080.i.i.i.i = phi i32 [ %.7.i.i.i.i, %bb.de ], [ %i.ags, %.lr.ph.i.i278.i ] ; 2 uses
  %i.ait = icmp sgt i32 %.080.i.i.i.i, 7
end_hunk_2
