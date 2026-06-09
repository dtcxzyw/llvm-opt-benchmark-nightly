inline.NumInlined: 1589
inline.NumDeleted: 778
begin_hunk_0_@_ZN3re26Regexp6IncrefEv:bb.a
  %i.p = zext i64 %i.o to i128
  %i.q = mul nuw i128 %i.p, 11376068507788127593  ; 2 uses
  %i.r = lshr i128 %i.q, 64
  %i.s = xor i128 %i.r, %i.q                      ; 2 uses
  %i.t = trunc i128 %i.s to i64                   ; 3 uses
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 24), align 8, !tbaa !32, !noalias !43 ; 4 uses
  %i.v = lshr i64 %i.t, 7
  %i.w = ptrtoint ptr %i.g to i64
  %i.x = lshr i64 %i.w, 12
  %i.y = xor i64 %i.x, %i.v                       ; 2 uses
  %i.z = trunc i128 %i.s to i8
  %i.aa = and i8 %i.z, 127
  %i.ab = insertelement <16 x i8> poison, i8 %i.aa, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 16), align 8, !noalias !43 ; 4 uses
  br i1 %i.f, label %.preheader, label %.preheader52

.preheader:                                       ; preds = %"_ZN4absl12lts_202401169call_onceIZN3re26Regexp6IncrefEvE3$_0JEEEvRNS0_9once_flagEOT_DpOT0_.exit", %bb.d
  %.pn.i.i = phi i64 [ %i.av, %bb.d ], [ %i.y, %"_ZN4absl12lts_202401169call_onceIZN3re26Regexp6IncrefEvE3$_0JEEEvRNS0_9once_flagEOT_DpOT0_.exit" ]
  %.sroa.12.0.i.i = phi i64 [ %i.au, %bb.d ], [ 0, %"_ZN4absl12lts_202401169call_onceIZN3re26Regexp6IncrefEvE3$_0JEEEvRNS0_9once_flagEOT_DpOT0_.exit" ]
  %.sroa.6.0.i.i = and i64 %.pn.i.i, %i.u         ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.6.0.i.i
  %i.af = load <16 x i8>, ptr %i.ae, align 1, !tbaa !16, !noalias !44 ; 3 uses
  %i.ag = icmp eq <16 x i8> %i.ac, %i.af
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not50.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not50.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader, %.critedge.i.i
  %.sroa.019.051.i.i = phi i16 [ %i.aq, %.critedge.i.i ], [ %i.ah, %.preheader ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.019.051.i.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.6.0.i.i, %i.aj
  %i.al = and i64 %i.ak, %i.u                     ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.al ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !36, !noalias !44
  %i.ao = icmp eq ptr %i.an, %0
  br i1 %i.ao, label %.loopexit.loopexit, label %.critedge.i.i, !prof !37

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ap = add i16 %.sroa.019.051.i.i, -1
  %i.aq = and i16 %i.ap, %.sroa.019.051.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %.preheader
  %i.ar = tail call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.af, <16 x i8> %i.af)
  %i.as = icmp slt <16 x i8> %i.ar, zeroinitializer
  %i.at = bitcast <16 x i1> %i.as to i16
  %.not49.i.i = icmp eq i16 %i.at, 0
  br i1 %.not49.i.i, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.au = add i64 %.sroa.12.0.i.i, 16             ; 2 uses
  %i.av = add i64 %i.au, %.sroa.6.0.i.i
  br label %.preheader

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.aw = invoke noundef i64 @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re26RegexpEiEENS1_6HashEqIS6_vE4HashENS9_2EqESaISt4pairIKS6_iEEE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 8), i64 noundef %i.t)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.e
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 16), align 8, !tbaa !39, !noalias !44 ; 2 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.aw ; 2 uses
  store ptr %0, ptr %i.ay, align 8, !tbaa !40, !noalias !44
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 0, ptr %i.az, align 8, !tbaa !42, !noalias !44
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !3
  %i.ba = add nsw i32 %.pre, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.noexc
  %i.bb = phi i32 [ 1, %.noexc ], [ %i.ba, %.loopexit.loopexit ]
  %i.bc = phi ptr [ %i.ax, %.noexc ], [ %i.ad, %.loopexit.loopexit ]
  %.sroa.031.2.i14.i = phi i64 [ %i.aw, %.noexc ], [ %i.al, %.loopexit.loopexit ]
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %.sroa.031.2.i14.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i32 %i.bb, ptr %i.be, align 4, !tbaa !3
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.preheader52:                                     ; preds = %"_ZN4absl12lts_202401169call_onceIZN3re26Regexp6IncrefEvE3$_0JEEEvRNS0_9once_flagEOT_DpOT0_.exit", %bb.g
  %.pn.i.i10 = phi i64 [ %i.bx, %bb.g ], [ %i.y, %"_ZN4absl12lts_202401169call_onceIZN3re26Regexp6IncrefEvE3$_0JEEEvRNS0_9once_flagEOT_DpOT0_.exit" ]
  %.sroa.12.0.i.i11 = phi i64 [ %i.bw, %bb.g ], [ 0, %"_ZN4absl12lts_202401169call_onceIZN3re26Regexp6IncrefEvE3$_0JEEEvRNS0_9once_flagEOT_DpOT0_.exit" ]
  %.sroa.6.0.i.i12 = and i64 %.pn.i.i10, %i.u     ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.6.0.i.i12
  %i.bh = load <16 x i8>, ptr %i.bg, align 1, !tbaa !16, !noalias !47 ; 3 uses
  %i.bi = icmp eq <16 x i8> %i.ac, %i.bh
  %i.bj = bitcast <16 x i1> %i.bi to i16          ; 2 uses
  %.not50.i.i13 = icmp eq i16 %i.bj, 0
  br i1 %.not50.i.i13, label %._crit_edge.i.i18, label %.lr.ph.i.i14

.lr.ph.i.i14:                                     ; preds = %.preheader52, %.critedge.i.i16
  %.sroa.019.051.i.i15 = phi i16 [ %i.bs, %.critedge.i.i16 ], [ %i.bj, %.preheader52 ] ; 3 uses
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.019.051.i.i15, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64
  %i.bm = add i64 %.sroa.6.0.i.i12, %i.bl
  %i.bn = and i64 %i.bm, %i.u                     ; 2 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !36, !noalias !47
  %i.bq = icmp eq ptr %i.bp, %0
  br i1 %i.bq, label %.loopexit36, label %.critedge.i.i16, !prof !37

.critedge.i.i16:                                  ; preds = %.lr.ph.i.i14
  %i.br = add i16 %.sroa.019.051.i.i15, -1
  %i.bs = and i16 %i.br, %.sroa.019.051.i.i15     ; 2 uses
  %.not.i.i17 = icmp eq i16 %i.bs, 0
  br i1 %.not.i.i17, label %._crit_edge.i.i18, label %.lr.ph.i.i14

._crit_edge.i.i18:                                ; preds = %.critedge.i.i16, %.preheader52
  %i.bt = tail call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.bh, <16 x i8> %i.bh)
  %i.bu = icmp slt <16 x i8> %i.bt, zeroinitializer
  %i.bv = bitcast <16 x i1> %i.bu to i16
  %.not49.i.i19 = icmp eq i16 %i.bv, 0
  br i1 %.not49.i.i19, label %bb.g, label %bb.h, !prof !38

bb.g:                                             ; preds = %._crit_edge.i.i18
  %i.bw = add i64 %.sroa.12.0.i.i11, 16           ; 2 uses
  %i.bx = add i64 %i.bw, %.sroa.6.0.i.i12
  br label %.preheader52

bb.h:                                             ; preds = %._crit_edge.i.i18
  %i.by = invoke noundef i64 @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re26RegexpEiEENS1_6HashEqIS6_vE4HashENS9_2EqESaISt4pairIKS6_iEEE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 8), i64 noundef %i.t)
          to label %.noexc24 unwind label %bb.i   ; 2 uses

.noexc24:                                         ; preds = %bb.h
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 16), align 8, !tbaa !39, !noalias !47 ; 2 uses
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.by ; 2 uses
  store ptr %0, ptr %i.ca, align 8, !tbaa !40, !noalias !47
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 0, ptr %i.cb, align 8, !tbaa !42, !noalias !47
  br label %.loopexit36

.loopexit36:                                      ; preds = %.lr.ph.i.i14, %.noexc24
  %i.cc = phi ptr [ %i.bz, %.noexc24 ], [ %i.ad, %.lr.ph.i.i14 ]
  %.sroa.031.2.i14.i22 = phi i64 [ %i.by, %.noexc24 ], [ %i.bn, %.lr.ph.i.i14 ]
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %.sroa.031.2.i14.i22
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 65535, ptr %i.ce, align 4, !tbaa !3
  store i16 -1, ptr %i.a, align 4, !tbaa !14
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %.loopexit36, %.loopexit
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN3re2L11ref_storageE)
          to label %_ZN4absl12lts_202401169MutexLockD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  tail call void @__clang_call_terminate(ptr %i.ch) #37
  unreachable

bb.l:                                             ; preds = %bb.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.f ], [ %i.cf, %bb.i ]
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN3re2L11ref_storageE)
          to label %_ZN4absl12lts_202401169MutexLockD2Ev.exit9 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  tail call void @__clang_call_terminate(ptr %i.cj) #37
  unreachable

_ZN4absl12lts_202401169MutexLockD2Ev.exit9:       ; preds = %bb.l
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %bb.a
  %i.ck = add nuw i16 %i.b, 1
  store i16 %i.ck, ptr %i.a, align 4, !tbaa !14
  br label %_ZN4absl12lts_202401169MutexLockD2Ev.exit

_ZN4absl12lts_202401169MutexLockD2Ev.exit:        ; preds = %bb.j, %bb.n
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !14   ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4absl12lts_202401165Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN3re2L11ref_storageE)
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 8), align 8, !tbaa !27, !noalias !50 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.d, i32 0, i32 1, i32 1), !noalias !50
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.f = add i64 %i.e, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.g = zext i64 %i.f to i128
  %i.h = mul nuw i128 %i.g, 11376068507788127593  ; 2 uses
  %i.i = lshr i128 %i.h, 64
  %i.j = xor i128 %i.i, %i.h
  %i.k = trunc i128 %i.j to i64
  %i.l = add i64 %i.k, %i.e
  %i.m = zext i64 %i.l to i128
  %i.n = mul nuw i128 %i.m, 11376068507788127593  ; 2 uses
  %i.o = lshr i128 %i.n, 64
  %i.p = xor i128 %i.o, %i.n                      ; 2 uses
  %i.q = trunc i128 %i.p to i64                   ; 3 uses
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 24), align 8, !tbaa !32, !noalias !53 ; 2 uses
  %i.s = lshr i64 %i.q, 7                         ; 3 uses
  %i.t = ptrtoint ptr %i.d to i64
  %i.u = lshr i64 %i.t, 12
  %i.v = xor i64 %i.u, %i.s
  %i.w = trunc i128 %i.p to i8
  %i.x = and i8 %i.w, 127
  %i.y = insertelement <16 x i8> poison, i8 %i.x, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 16), align 8, !noalias !50
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.pn.i.i = phi i64 [ %i.v, %bb.b ], [ %i.as, %bb.d ]
  %.sroa.12.0.i.i = phi i64 [ 0, %bb.b ], [ %i.ar, %bb.d ]
  %.sroa.6.0.i.i = and i64 %.pn.i.i, %i.r         ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.6.0.i.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !16, !noalias !50 ; 3 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not50.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not50.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.critedge.i.i
  %.sroa.019.051.i.i = phi i16 [ %i.an, %.critedge.i.i ], [ %i.ae, %bb.c ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.019.051.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.6.0.i.i, %i.ag
  %i.ai = and i64 %i.ah, %i.r
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ai ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !36, !noalias !50
  %i.al = icmp eq ptr %i.ak, %0
  br i1 %i.al, label %.loopexit40, label %.critedge.i.i, !prof !37

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.am = add i16 %.sroa.019.051.i.i, -1
  %i.an = and i16 %i.am, %.sroa.019.051.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.an, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %bb.c
  %i.ao = tail call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.ac, <16 x i8> %i.ac)
  %i.ap = icmp slt <16 x i8> %i.ao, zeroinitializer
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %.not49.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not49.i.i, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ar = add i64 %.sroa.12.0.i.i, 16             ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.6.0.i.i
  br label %bb.c

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.at = invoke noundef i64 @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re26RegexpEiEENS1_6HashEqIS6_vE4HashENS9_2EqESaISt4pairIKS6_iEEE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 8), i64 noundef %i.q)
          to label %.loopexit40.thread unwind label %bb.k

.loopexit40.thread:                               ; preds = %bb.e
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 16), align 8, !tbaa !39, !noalias !50
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.at ; 2 uses
  store ptr %0, ptr %i.av, align 8, !tbaa !40, !noalias !50
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 0, ptr %i.aw, align 8, !tbaa !42, !noalias !50
  br label %bb.f

.loopexit40:                                      ; preds = %.lr.ph.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !3 ; 2 uses
  %i.ax = add nsw i32 %.pre, -1                   ; 2 uses
  %i.ay = icmp slt i32 %.pre, 65536
  br i1 %i.ay, label %bb.f, label %bb.m

bb.f:                                             ; preds = %.loopexit40.thread, %.loopexit40
  %i.az = phi i32 [ -1, %.loopexit40.thread ], [ %i.ax, %.loopexit40 ]
  %1 = trunc i32 %i.az to i16
  store i16 %1, ptr %i.a, align 4, !tbaa !14
  %2 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 8), align 8, !tbaa !27 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %2, i32 0, i32 1, i32 1)
  %i.ba = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 24), align 8, !tbaa !32, !noalias !56 ; 2 uses
  %i.bb = ptrtoint ptr %2 to i64
  %i.bc = lshr i64 %i.bb, 12
  %i.bd = xor i64 %i.bc, %i.s
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 16), align 8, !tbaa !39
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.pn.i.i.i = phi i64 [ %i.bd, %bb.f ], [ %i.bw, %bb.i ]
  %.sroa.12.0.i.i.i = phi i64 [ 0, %bb.f ], [ %i.bv, %bb.i ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i.i.i, %i.ba    ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.6.0.i.i.i
  %i.bg = load <16 x i8>, ptr %i.bf, align 1, !tbaa !16 ; 3 uses
  %i.bh = icmp eq <16 x i8> %i.z, %i.bg
  %i.bi = bitcast <16 x i1> %i.bh to i16          ; 2 uses
  %.not43.i.i.i = icmp eq i16 %i.bi, 0
  br i1 %.not43.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.h
  %.sroa.016.044.i.i.i = phi i16 [ %i.br, %bb.h ], [ %i.bi, %bb.g ] ; 3 uses
  %i.bj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.016.044.i.i.i, i1 true)
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = add i64 %.sroa.6.0.i.i.i, %i.bk
  %i.bm = and i64 %i.bl, %i.ba                    ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !36
  %i.bp = icmp eq ptr %i.bo, %0
  br i1 %i.bp, label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re26RegexpEiEENS1_6HashEqIS6_vE4HashENS9_2EqESaISt4pairIKS6_iEEE4findIS6_EENSG_8iteratorERKT_.exit.i, label %bb.h, !prof !37

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.bq = add i16 %.sroa.016.044.i.i.i, -1
  %i.br = and i16 %i.bq, %.sroa.016.044.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.br, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.h, %bb.g
  %i.bs = tail call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.bg, <16 x i8> %i.bg)
  %i.bt = icmp slt <16 x i8> %i.bs, zeroinitializer
  %i.bu = bitcast <16 x i1> %i.bt to i16
  %.not41.i.i.i = icmp eq i16 %i.bu, 0
  br i1 %.not41.i.i.i, label %bb.i, label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re26RegexpEiEENS1_6HashEqIS6_vE4HashENS9_2EqESaISt4pairIKS6_iEEE5eraseIS6_EEmRKT_.exit, !prof !38

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.bv = add i64 %.sroa.12.0.i.i.i, 16           ; 2 uses
  %i.bw = add i64 %i.bv, %.sroa.6.0.i.i.i
  br label %bb.g, !llvm.loop !59

_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re26RegexpEiEENS1_6HashEqIS6_vE4HashENS9_2EqESaISt4pairIKS6_iEEE4findIS6_EENSG_8iteratorERKT_.exit.i: ; preds = %.lr.ph.i.i.i
  %3 = icmp eq ptr %2, null
  br i1 %3, label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re26RegexpEiEENS1_6HashEqIS6_vE4HashENS9_2EqESaISt4pairIKS6_iEEE5eraseIS6_EEmRKT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re26RegexpEiEENS1_6HashEqIS6_vE4HashENS9_2EqESaISt4pairIKS6_iEEE4findIS6_EENSG_8iteratorERKT_.exit.i
  invoke void @_ZN4absl12lts_2024011618container_internal13EraseMetaOnlyERNS1_12CommonFieldsEmm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 8), i64 noundef %i.bm, i64 noundef 16)
          to label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re26RegexpEiEENS1_6HashEqIS6_vE4HashENS9_2EqESaISt4pairIKS6_iEEE5eraseIS6_EEmRKT_.exit unwind label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.l:                                             ; preds = %bb.j
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.m:                                             ; preds = %.loopexit40
  %4 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 8), align 8, !tbaa !27, !noalias !61 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %4, i32 0, i32 1, i32 1), !noalias !61
  %i.bz = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 24), align 8, !tbaa !32, !noalias !64 ; 2 uses
  %i.ca = ptrtoint ptr %4 to i64
  %i.cb = lshr i64 %i.ca, 12
  %i.cc = xor i64 %i.cb, %i.s
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 16), align 8, !noalias !61 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.pn.i.i14 = phi i64 [ %i.cc, %bb.m ], [ %i.cv, %bb.o ]
  %.sroa.12.0.i.i15 = phi i64 [ 0, %bb.m ], [ %i.cu, %bb.o ]
  %.sroa.6.0.i.i16 = and i64 %.pn.i.i14, %i.bz    ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.6.0.i.i16
  %i.cf = load <16 x i8>, ptr %i.ce, align 1, !tbaa !16, !noalias !61 ; 3 uses
  %i.cg = icmp eq <16 x i8> %i.z, %i.cf
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %.not50.i.i17 = icmp eq i16 %i.ch, 0
  br i1 %.not50.i.i17, label %._crit_edge.i.i22, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %bb.n, %.critedge.i.i20
  %.sroa.019.051.i.i19 = phi i16 [ %i.cq, %.critedge.i.i20 ], [ %i.ch, %bb.n ] ; 3 uses
  %i.ci = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.019.051.i.i19, i1 true)
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = add i64 %.sroa.6.0.i.i16, %i.cj
  %i.cl = and i64 %i.ck, %i.bz                    ; 2 uses
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !36, !noalias !61
  %i.co = icmp eq ptr %i.cn, %0
  br i1 %i.co, label %.loopexit, label %.critedge.i.i20, !prof !37

.critedge.i.i20:                                  ; preds = %.lr.ph.i.i18
  %i.cp = add i16 %.sroa.019.051.i.i19, -1
  %i.cq = and i16 %i.cp, %.sroa.019.051.i.i19     ; 2 uses
  %.not.i.i21 = icmp eq i16 %i.cq, 0
  br i1 %.not.i.i21, label %._crit_edge.i.i22, label %.lr.ph.i.i18

._crit_edge.i.i22:                                ; preds = %.critedge.i.i20, %bb.n
  %i.cr = tail call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.cf, <16 x i8> %i.cf)
  %i.cs = icmp slt <16 x i8> %i.cr, zeroinitializer
  %i.ct = bitcast <16 x i1> %i.cs to i16
  %.not49.i.i23 = icmp eq i16 %i.ct, 0
  br i1 %.not49.i.i23, label %bb.o, label %bb.p, !prof !38

bb.o:                                             ; preds = %._crit_edge.i.i22
  %i.cu = add i64 %.sroa.12.0.i.i15, 16           ; 2 uses
  %i.cv = add i64 %i.cu, %.sroa.6.0.i.i16
  br label %bb.n

bb.p:                                             ; preds = %._crit_edge.i.i22
  %i.cw = invoke noundef i64 @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re26RegexpEiEENS1_6HashEqIS6_vE4HashENS9_2EqESaISt4pairIKS6_iEEE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 8), i64 noundef %i.q)
          to label %.noexc28 unwind label %bb.q   ; 2 uses

.noexc28:                                         ; preds = %bb.p
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L11ref_storageE, i64 16), align 8, !tbaa !39, !noalias !61 ; 2 uses
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.cw ; 2 uses
  store ptr %0, ptr %i.cy, align 8, !tbaa !40, !noalias !61
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i32 0, ptr %i.cz, align 8, !tbaa !42, !noalias !61
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i18, %.noexc28
  %i.da = phi ptr [ %i.cx, %.noexc28 ], [ %i.cd, %.lr.ph.i.i18 ]
  %.sroa.031.2.i14.i26 = phi i64 [ %i.cw, %.noexc28 ], [ %i.cl, %.lr.ph.i.i18 ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %.sroa.031.2.i14.i26
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i32 %i.ax, ptr %i.dc, align 4, !tbaa !3
  br label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re26RegexpEiEENS1_6HashEqIS6_vE4HashENS9_2EqESaISt4pairIKS6_iEEE5eraseIS6_EEmRKT_.exit

bb.q:                                             ; preds = %bb.p
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re26RegexpEiEENS1_6HashEqIS6_vE4HashENS9_2EqESaISt4pairIKS6_iEEE5eraseIS6_EEmRKT_.exit: ; preds = %._crit_edge.i.i.i, %bb.j, %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re26RegexpEiEENS1_6HashEqIS6_vE4HashENS9_2EqESaISt4pairIKS6_iEEE4findIS6_EENSG_8iteratorERKT_.exit.i, %.loopexit
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN3re2L11ref_storageE)
          to label %_ZN4absl12lts_202401169MutexLockD2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re26RegexpEiEENS1_6HashEqIS6_vE4HashENS9_2EqESaISt4pairIKS6_iEEE5eraseIS6_EEmRKT_.exit
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  tail call void @__clang_call_terminate(ptr %i.df) #37
  unreachable

bb.s:                                             ; preds = %bb.q, %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.by, %bb.l ], [ %i.dd, %bb.q ], [ %i.bx, %bb.k ]
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN3re2L11ref_storageE)
          to label %_ZN4absl12lts_202401169MutexLockD2Ev.exit12 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  tail call void @__clang_call_terminate(ptr %i.dh) #37
  unreachable

_ZN4absl12lts_202401169MutexLockD2Ev.exit12:      ; preds = %bb.s
  resume { ptr, i32 } %.pn

bb.u:                                             ; preds = %bb.a
  %i.di = add i16 %i.b, -1                        ; 2 uses
  store i16 %i.di, ptr %i.a, align 4, !tbaa !14
  %i.dj = icmp eq i16 %i.di, 0
  br i1 %i.dj, label %bb.v, label %_ZN4absl12lts_202401169MutexLockD2Ev.exit

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN3re26Regexp7DestroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %_ZN4absl12lts_202401169MutexLockD2Ev.exit

_ZN4absl12lts_202401169MutexLockD2Ev.exit:        ; preds = %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re26RegexpEiEENS1_6HashEqIS6_vE4HashENS9_2EqESaISt4pairIKS6_iEEE5eraseIS6_EEmRKT_.exit, %bb.v, %bb.u
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3re26Regexp7DestroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %1 = alloca %"class.absl::lts_20240116::log_internal::LogMessage", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.c = load i16, ptr %i.b, align 2, !tbaa !15
  %i.d = icmp eq i16 %i.c, 0
  br i1 %i.d, label %_ZN3re26Regexp12QuickDestroyEv.exit.thread, label %_ZN3re26Regexp12QuickDestroyEv.exit

_ZN3re26Regexp12QuickDestroyEv.exit.thread:       ; preds = %bb.a
  tail call void @_ZN3re26RegexpD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 40) #36
  br label %.loopexit

_ZN3re26Regexp12QuickDestroyEv.exit:              ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.e, align 8, !tbaa !67
  br label %bb.b

bb.b:                                             ; preds = %_ZN3re26Regexp12QuickDestroyEv.exit, %bb.o
  %.037 = phi ptr [ %0, %_ZN3re26Regexp12QuickDestroyEv.exit ], [ %.4, %bb.o ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.037, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.037, i64 4 ; 2 uses
  %i.i = load i16, ptr %i.h, align 4, !tbaa !14
  %.not31 = icmp eq i16 %i.i, 0
  br i1 %.not31, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageC1EPKciNS0_11LogSeverityE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str, i32 noundef 159, i32 noundef 2) #34
  invoke void @_ZN4absl12lts_2024011612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 20, ptr nonnull @.str.2)
          to label %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi21EEERS2_RAT__Kc.exit unwind label %bb.e

_ZN4absl12lts_2024011612log_internal10LogMessagelsILi21EEERS2_RAT__Kc.exit: ; preds = %bb.c
  %i.j = load i16, ptr %i.h, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.j, ptr %i.a, align 2, !tbaa !68
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2024011612log_internal10LogMessagelsItTnNSt9enable_ifIXntsr4absl16HasAbslStringifyIT_EE5valueEiE4typeELi0EEERS2_RKS5_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 2 dereferenceable(2) %i.a)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi21EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.f

bb.e:                                             ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi21EEERS2_RAT__Kc.exit, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %i.l

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.037, i64 6 ; 3 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !15   ; 2 uses
  %.not32 = icmp eq i16 %i.n, 0
  br i1 %.not32, label %bb.o, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.o = icmp eq i16 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %.037, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %.0.i = select i1 %i.o, ptr %i.p, ptr %i.q      ; 2 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.l
  %i.r = icmp ult i16 %i.af, 2
  br i1 %i.r, label %bb.n, label %bb.m

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.135 = phi ptr [ %i.g, %.lr.ph.preheader ], [ %.3, %bb.l ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36   ; 8 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.l, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 3 uses
  %i.w = load i16, ptr %i.v, align 4, !tbaa !14   ; 2 uses
  %i.x = icmp eq i16 %i.w, -1
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.t)
  %.pr = load i16, ptr %i.v, align 4, !tbaa !14
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.y = add i16 %i.w, -1                         ; 2 uses
  store i16 %i.y, ptr %i.v, align 4, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = phi i16 [ %i.y, %bb.i ], [ %.pr, %bb.h ]
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !15
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %_ZN3re26Regexp12QuickDestroyEv.exit33.thread, label %_ZN3re26Regexp12QuickDestroyEv.exit33

_ZN3re26Regexp12QuickDestroyEv.exit33.thread:     ; preds = %bb.k
  call void @_ZN3re26RegexpD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.t) #33
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef 40) #36
  br label %bb.l

_ZN3re26Regexp12QuickDestroyEv.exit33:            ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %.135, ptr %i.ae, align 8, !tbaa !67
  br label %bb.l

bb.l:                                             ; preds = %_ZN3re26Regexp12QuickDestroyEv.exit33.thread, %bb.j, %_ZN3re26Regexp12QuickDestroyEv.exit33, %.lr.ph
  %.3 = phi ptr [ %.135, %.lr.ph ], [ %.135, %_ZN3re26Regexp12QuickDestroyEv.exit33.thread ], [ %i.t, %_ZN3re26Regexp12QuickDestroyEv.exit33 ], [ %.135, %bb.j ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = load i16, ptr %i.m, align 2, !tbaa !15  ; 2 uses
  %i.ag = zext i16 %i.af to i64
  %i.ah = icmp samesign ult i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !69

bb.m:                                             ; preds = %._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %.0.i) #36
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  store i16 0, ptr %i.m, align 2, !tbaa !15
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %bb.n
  %.4 = phi ptr [ %.3, %bb.n ], [ %i.g, %bb.f ]   ; 2 uses
  call void @_ZN3re26RegexpD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.037) #33
  call void @_ZdlPvm(ptr noundef nonnull %.037, i64 noundef 40) #36
  %.not = icmp eq ptr %.4, null
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !70

.loopexit:                                        ; preds = %bb.o, %_ZN3re26Regexp12QuickDestroyEv.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3re26Regexp15AddRuneToStringEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16   ; 5 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znam(i64 noundef 32) #38
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.d, ptr %i.e, align 8, !tbaa !16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %i.b, 7
  %i.g = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.b)
end_hunk_0
