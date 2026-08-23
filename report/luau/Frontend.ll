Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Frontend?download=true
inline.NumInlined: 11237
inline.NumDeleted: 5660
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE13insert_unsafeERSA_:bb.a
  br i1 %i.ak, label %.lr.ph.i.split.us, label %.loopexit, !llvm.loop !564

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i
  %.09.i = phi i64 [ %i.at, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i ], [ %i.o, %.lr.ph.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %.09.i ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !43
  %i.ao = icmp eq i64 %i.an, %.fr13
  br i1 %i.ao, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %.lr.ph.i.split
  %i.ap = load ptr, ptr %1, align 8, !tbaa !44
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !44
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.aq, ptr %i.ap, i64 %.fr13)
  %i.ar = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ar, label %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE9getBucketERSA_.exit.thread, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i: ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %.lr.ph.i.split
  %i.as = add i64 %.09.i, 1
  %i.at = and i64 %i.as, %i.d                     ; 4 uses
  %i.au = lshr i64 %i.at, 6                       ; 2 uses
  %i.av = and i64 %i.at, 63                       ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !127 ; 2 uses
  %i.ay = lshr i64 %i.ax, %i.av
  %i.az = trunc i64 %i.ay to i1
  br i1 %i.az, label %.lr.ph.i.split, label %.loopexit, !llvm.loop !564

.loopexit:                                        ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us, %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6doHashERSA_.exit.i
  %.pre-phi20 = phi i64 [ %i.ag, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us ], [ %i.s, %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6doHashERSA_.exit.i ], [ %i.av, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i ]
  %i.ba = phi i64 [ %i.ai, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us ], [ %i.u, %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6doHashERSA_.exit.i ], [ %i.ax, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i ]
  %.pre-phi = phi i64 [ %i.af, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us ], [ %i.r, %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6doHashERSA_.exit.i ], [ %i.au, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i ]
  %.0.lcssa.i = phi i64 [ %i.ae, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us ], [ %i.o, %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6doHashERSA_.exit.i ], [ %i.at, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i ] ; 2 uses
  %i.bb = shl nuw i64 1, %.pre-phi20
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.pre-phi
  %i.bd = or i64 %i.ba, %i.bb
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !127
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %.0.lcssa.i ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 3 uses
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !129
  %i.bg = load ptr, ptr %1, align 8, !tbaa !44    ; 2 uses
  %i.bh = load i64, ptr %i.f, align 8, !tbaa !43  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.bh, ptr %i.a, align 8, !tbaa !127
  %i.bi = icmp ugt i64 %i.bh, 15
  br i1 %i.bi, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.loopexit
  %i.bj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !44
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !127
  store i64 %i.bk, ptr %i.bf, align 8, !tbaa !130
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %.loopexit
  %i.bl = phi ptr [ %i.bj, %.noexc.i.i ], [ %i.bf, %.loopexit ] ; 2 uses
  switch i64 %i.bh, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN4Luau6detail17ItemInterfaceMap2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmE6setKeyERSt4pairIS7_mERKS7_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.bm = load i8, ptr %i.bg, align 1, !tbaa !130
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !130
  br label %_ZN4Luau6detail17ItemInterfaceMap2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmE6setKeyERSt4pairIS7_mERKS7_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %i.bg, i64 %i.bh, i1 false)
  br label %_ZN4Luau6detail17ItemInterfaceMap2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmE6setKeyERSt4pairIS7_mERKS7_.exit

_ZN4Luau6detail17ItemInterfaceMap2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmE6setKeyERSt4pairIS7_mERKS7_.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !127 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !43
  %i.bp = load ptr, ptr %i.be, align 8, !tbaa !44
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bn
  store i8 0, ptr %i.bq, align 1, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store i64 0, ptr %i.br, align 8, !tbaa !127
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !554
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !554
  %.pre19 = load ptr, ptr %0, align 8, !tbaa !563
  br label %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE9getBucketERSA_.exit.thread

_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE9getBucketERSA_.exit.thread: ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %.lr.ph.i.split.us, %_ZN4Luau6detail17ItemInterfaceMap2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmE6setKeyERSt4pairIS7_mERKS7_.exit
  %i.bv = phi ptr [ %.pre19, %_ZN4Luau6detail17ItemInterfaceMap2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmE6setKeyERSt4pairIS7_mERKS7_.exit ], [ %.pre, %.lr.ph.i.split.us ], [ %.pre, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ]
  %.0.lcssa.i9 = phi i64 [ %.0.lcssa.i, %_ZN4Luau6detail17ItemInterfaceMap2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmE6setKeyERSt4pairIS7_mERKS7_.exit ], [ %.09.i.us, %.lr.ph.i.split.us ], [ %.09.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ]
  %i.bw = getelementptr inbounds nuw [40 x i8], ptr %i.bv, i64 %.0.lcssa.i9
  ret ptr %i.bw
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE4findERSA_(ptr noundef nonnull align 8 dereferenceable(51) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !554
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE9getBucketERSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !555
  %i.f = add i64 %i.e, -1                         ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !43
  %i.j = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.g, i64 noundef %i.i, i64 noundef 3339675911)
          to label %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6doHashERSA_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #35
  unreachable

_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6doHashERSA_.exit.i: ; preds = %bb.b
  %i.m = mul i64 %i.j, -7046029254386353131
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i8, ptr %i.n, align 8, !tbaa !550
  %i.p = zext nneg i8 %i.o to i64
  %i.q = lshr i64 %i.m, %i.p                      ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !562  ; 3 uses
  %i.t = lshr i64 %i.q, 6
  %i.u = and i64 %i.q, 63
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.w = load i64, ptr %i.v, align 8, !tbaa !127
  %i.x = lshr i64 %i.w, %i.u
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %.lr.ph.i, label %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE9getBucketERSA_.exit

.lr.ph.i:                                         ; preds = %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6doHashERSA_.exit.i
  %i.z = load ptr, ptr %0, align 8, !tbaa !563    ; 3 uses
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !43
  %.fr10 = freeze i64 %i.aa                       ; 3 uses
  %i.ab = icmp eq i64 %.fr10, 0
  br i1 %i.ab, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us
  %.09.i.us = phi i64 [ %i.ah, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us ], [ %i.q, %.lr.ph.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %.09.i.us
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !43
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.split.us, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us: ; preds = %.lr.ph.i.split.us
  %i.ag = add i64 %.09.i.us, 1
  %i.ah = and i64 %i.ag, %i.f                     ; 3 uses
  %i.ai = lshr i64 %i.ah, 6
  %i.aj = and i64 %i.ah, 63
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ai
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !127
  %i.am = lshr i64 %i.al, %i.aj
  %i.an = trunc i64 %i.am to i1
  br i1 %i.an, label %.lr.ph.i.split.us, label %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE9getBucketERSA_.exit, !llvm.loop !564

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i
  %.09.i = phi i64 [ %i.aw, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i ], [ %i.q, %.lr.ph.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %.09.i ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !43
  %i.ar = icmp eq i64 %i.aq, %.fr10
  br i1 %i.ar, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %.lr.ph.i.split
  %i.as = load ptr, ptr %1, align 8, !tbaa !44
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !44
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.at, ptr %i.as, i64 %.fr10)
  %i.au = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.au, label %.split.us, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i: ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %.lr.ph.i.split
  %i.av = add i64 %.09.i, 1
  %i.aw = and i64 %i.av, %i.f                     ; 3 uses
  %i.ax = lshr i64 %i.aw, 6
  %i.ay = and i64 %i.aw, 63
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ax
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !127
  %i.bb = lshr i64 %i.ba, %i.ay
  %i.bc = trunc i64 %i.bb to i1
  br i1 %i.bc, label %.lr.ph.i.split, label %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE9getBucketERSA_.exit, !llvm.loop !564

.split.us:                                        ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %.lr.ph.i.split.us
  %.us-phi = phi i64 [ %.09.i.us, %.lr.ph.i.split.us ], [ %.09.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ]
  %i.bd = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %.us-phi
  br label %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE9getBucketERSA_.exit

_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE9getBucketERSA_.exit: ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us, %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6doHashERSA_.exit.i, %.split.us, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.bd, %.split.us ], [ null, %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6doHashERSA_.exit.i ], [ null, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us ], [ null, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE4growEv(ptr noundef nonnull align 8 dereferenceable(51) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Luau::detail::DenseHashTable2.1430", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !555  ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %spec.select, ptr %i.e, align 8, !tbaa !1790
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.not.i.i = icmp eq i64 %spec.select, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br i1 %.not.i.i, label %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSetC2Em.exit.thread.i, label %bb.b

_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSetC2Em.exit.thread.i: ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store i8 64, ptr %i.g, align 8, !tbaa !550
  br label %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 64)
  %i.j = lshr i64 %i.i, 6                         ; 3 uses
  store i64 %i.j, ptr %i.f, align 8, !tbaa !1791
  %i.k = shl nuw nsw i64 %i.j, 3                  ; 2 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #40 ; 4 uses
  store ptr %i.l, ptr %i.h, align 8, !tbaa !562
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.k, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.m, align 8
  %i.n = mul i64 %spec.select, 40
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #40
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.o, ptr %1, align 8, !tbaa !563
  store i64 %spec.select, ptr %3, align 8, !tbaa !555
  %i.p = tail call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %spec.select, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i8
  %i.r = sub nuw nsw i8 64, %i.q                  ; 2 uses
  store i8 %i.r, ptr %4, align 8, !tbaa !550
  br label %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EEC2Em.exit

bb.d:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  resume { ptr, i32 } %i.s

_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EEC2Em.exit: ; preds = %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSetC2Em.exit.thread.i, %bb.c
  %i.t = phi i64 [ 0, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSetC2Em.exit.thread.i ], [ %i.j, %bb.c ]
  %i.u = phi ptr [ null, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSetC2Em.exit.thread.i ], [ %i.o, %bb.c ] ; 4 uses
  %i.v = phi ptr [ null, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSetC2Em.exit.thread.i ], [ %i.l, %bb.c ] ; 5 uses
  %i.w = phi i8 [ 64, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSetC2Em.exit.thread.i ], [ %i.r, %bb.c ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !562, !noalias !1792 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1791, !noalias !1792 ; 10 uses
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EEC2Em.exit
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !127, !noalias !1792 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.preheader, label %.lr.ph

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.i
  %exitcond.not.i.i75 = icmp eq i64 %i.ab, 1
  br i1 %exitcond.not.i.i75, label %._crit_edge, label %.lr.ph.i.i.lr.ph, !llvm.loop !1795

.lr.ph.i.i.lr.ph:                                 ; preds = %.lr.ph.i.preheader
  br label %.lr.ph.i.i, !llvm.loop !1795

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.lr.ph, %.lr.ph.i
  %i.ae = phi i64 [ 1, %.lr.ph.i.i.lr.ph ], [ %i.ai, %.lr.ph.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !127, !noalias !1792 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i, label %.lr.ph, !llvm.loop !1795

.lr.ph.i:                                         ; preds = %.lr.ph.i.i
  %i.ai = add nuw i64 %i.ae, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ai, %i.ab
  br i1 %exitcond.not.i.i, label %.lr.ph.i._ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv.exit.loopexit_crit_edge, label %.lr.ph.i.i, !llvm.loop !1795

.lr.ph.i._ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv.exit.loopexit_crit_edge: ; preds = %.lr.ph.i
  br label %._crit_edge, !llvm.loop !1795

.lr.ph:                                           ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.lcssa6.i = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %i.ae, %.lr.ph.i.i ] ; 2 uses
  %.lcssa4.i = phi i64 [ %i.ac, %.lr.ph.i.preheader.i ], [ %i.ag, %.lr.ph.i.i ] ; 2 uses
  %i.aj = tail call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa4.i, i1 true)
  %i.ak = shl i64 %.lcssa6.i, 6
  %i.al = or disjoint i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = add i64 %spec.select, -1                ; 2 uses
  %i.ao = zext nneg i8 %i.w to i64
  br label %bb.g

._crit_edge.loopexit:                             ; preds = %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit
  %.pre = load i64, ptr %i.aa, align 8, !tbaa !1791
  %.pre45 = load ptr, ptr %i.y, align 8, !tbaa !562
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EEC2Em.exit, %.lr.ph.i._ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv.exit.loopexit_crit_edge, %.lr.ph.i.preheader, %._crit_edge.loopexit
  %i.ap = phi ptr [ %.pre45, %._crit_edge.loopexit ], [ %i.z, %.lr.ph.i.preheader ], [ %i.z, %.lr.ph.i._ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv.exit.loopexit_crit_edge ], [ %i.z, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EEC2Em.exit ] ; 2 uses
  %i.aq = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.ab, %.lr.ph.i.preheader ], [ %i.ab, %.lr.ph.i._ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv.exit.loopexit_crit_edge ], [ %i.ab, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EEC2Em.exit ]
  %i.ar = load ptr, ptr %0, align 8, !tbaa !1796  ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !1796
  store ptr %i.ar, ptr %1, align 8, !tbaa !1796
  %i.as = load i64, ptr %i.x, align 8, !tbaa !1790
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  tail call void @_ZdlPv(ptr noundef null) #34
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.v, ptr %i.y, align 8, !tbaa !562
  store i64 %spec.select, ptr %i.x, align 8, !tbaa !1790
  store i64 %i.t, ptr %i.aa, align 8, !tbaa !1791
  tail call void @_ZdlPv(ptr noundef null) #34
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !562
  store i64 %i.as, ptr %i.e, align 8, !tbaa !1790
  store i64 %i.aq, ptr %i.f, align 8, !tbaa !1791
  tail call void @_ZdlPv(ptr noundef null) #34
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load i64, ptr %i.a, align 8, !tbaa !127
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !127
  store i64 %i.av, ptr %i.au, align 8, !tbaa !127
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ay = load i8, ptr %i.aw, align 8, !tbaa !130
  store i8 %i.w, ptr %i.aw, align 8, !tbaa !130
  store i8 %i.ay, ptr %i.ax, align 8, !tbaa !130
  %.not.i16 = icmp eq ptr %i.ar, null
  br i1 %.not.i16, label %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  invoke void @_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE7destroyEv(ptr noundef nonnull align 8 dereferenceable(51) %1)
          to label %._ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit_crit_edge unwind label %bb.f

._ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit_crit_edge: ; preds = %bb.e
  %.pre46 = load ptr, ptr %i.at, align 8, !tbaa !562
  br label %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #35
  unreachable

_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit: ; preds = %._ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit_crit_edge, %._crit_edge
  %i.bb = phi ptr [ %.pre46, %._ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit_crit_edge ], [ %i.ap, %._crit_edge ]
  call void @_ZdlPv(ptr noundef %i.bb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  ret void

bb.g:                                             ; preds = %.lr.ph, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit
  %i.bc = phi i64 [ 0, %.lr.ph ], [ %i.dc, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit ]
  %.sroa.19.036 = phi i64 [ %i.al, %.lr.ph ], [ %.sroa.19.2, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit ] ; 4 uses
  %.sroa.14.035 = phi i64 [ %.lcssa4.i, %.lr.ph ], [ %.sroa.14.4, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit ] ; 2 uses
  %.sroa.722.034 = phi i64 [ %.lcssa6.i, %.lr.ph ], [ %.sroa.722.3, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit ] ; 3 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !563
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %i.bd, i64 %.sroa.19.036 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !44
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !43
  %i.bi = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.bf, i64 noundef %i.bh, i64 noundef 3339675911)
          to label %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6doHashERSA_.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  tail call void @__clang_call_terminate(ptr %i.bk) #35
  unreachable

_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6doHashERSA_.exit.i: ; preds = %bb.g
  %i.bl = mul i64 %i.bi, -7046029254386353131
  %i.bm = lshr i64 %i.bl, %i.ao                   ; 5 uses
  %i.bn = lshr i64 %i.bm, 6
  %i.bo = and i64 %i.bm, 63
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.bn
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !127
  %i.br = lshr i64 %i.bq, %i.bo
  %i.bs = trunc i64 %i.br to i1
  br i1 %i.bs, label %.lr.ph.i17, label %.loopexit

.lr.ph.i17:                                       ; preds = %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6doHashERSA_.exit.i
  %i.bt = load i64, ptr %i.bg, align 8, !tbaa !43
  %.fr37 = freeze i64 %i.bt                       ; 3 uses
  %i.bu = icmp eq i64 %.fr37, 0
  br i1 %i.bu, label %.lr.ph.i17.split.us, label %.lr.ph.i17.split

.lr.ph.i17.split.us:                              ; preds = %.lr.ph.i17, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us
  %.09.i.us = phi i64 [ %i.ca, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us ], [ %i.bm, %.lr.ph.i17 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %.09.i.us
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !43
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %.loopexit, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us: ; preds = %.lr.ph.i17.split.us
  %i.bz = add i64 %.09.i.us, 1
  %i.ca = and i64 %i.bz, %i.an                    ; 4 uses
  %i.cb = lshr i64 %i.ca, 6
  %i.cc = and i64 %i.ca, 63
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.cb
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !127
  %i.cf = lshr i64 %i.ce, %i.cc
  %i.cg = trunc i64 %i.cf to i1
  br i1 %i.cg, label %.lr.ph.i17.split.us, label %.loopexit, !llvm.loop !564

.lr.ph.i17.split:                                 ; preds = %.lr.ph.i17, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i
  %.09.i = phi i64 [ %i.cp, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i ], [ %i.bm, %.lr.ph.i17 ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %.09.i ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !43
  %i.ck = icmp eq i64 %i.cj, %.fr37
  br i1 %i.ck, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %.lr.ph.i17.split
  %i.cl = load ptr, ptr %i.be, align 8, !tbaa !44
  %i.cm = load ptr, ptr %i.ch, align 8, !tbaa !44
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.cm, ptr %i.cl, i64 %.fr37)
  %i.cn = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.cn, label %.loopexit, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i: ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %.lr.ph.i17.split
  %i.co = add i64 %.09.i, 1
  %i.cp = and i64 %i.co, %i.an                    ; 4 uses
  %i.cq = lshr i64 %i.cp, 6
  %i.cr = and i64 %i.cp, 63
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.cq
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !127
  %i.cu = lshr i64 %i.ct, %i.cr
  %i.cv = trunc i64 %i.cu to i1
  br i1 %i.cv, label %.lr.ph.i17.split, label %.loopexit, !llvm.loop !564

.loopexit:                                        ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us, %.lr.ph.i17.split.us, %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6doHashERSA_.exit.i
  %.0.lcssa.i = phi i64 [ %i.bm, %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6doHashERSA_.exit.i ], [ %i.ca, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us ], [ %.09.i.us, %.lr.ph.i17.split.us ], [ %i.cp, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i ], [ %.09.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ] ; 3 uses
  %i.cw = lshr i64 %.0.lcssa.i, 6
  %i.cx = and i64 %.0.lcssa.i, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.cw ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !127
  %i.db = or i64 %i.da, %i.cy
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !127
  %i.dc = add i64 %i.bc, 1                        ; 2 uses
  store i64 %i.dc, ptr %i.am, align 8, !tbaa !554
  %i.dd = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %.0.lcssa.i ; 5 uses
  %i.de = load ptr, ptr %0, align 8, !tbaa !563
  %i.df = getelementptr inbounds nuw [40 x i8], ptr %i.de, i64 %.sroa.19.036 ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 3 uses
  store ptr %i.dg, ptr %i.dd, align 8, !tbaa !129
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !44 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 5 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %.loopexit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !43 ; 2 uses
  %i.dm = icmp ult i64 %i.dl, 16
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = add nuw nsw i64 %i.dl, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dg, ptr noundef nonnull align 8 dereferenceable(1) %i.di, i64 %i.dn, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEC2EOS6_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit
  store ptr %i.dh, ptr %i.dd, align 8, !tbaa !44
  %i.do = load i64, ptr %i.di, align 8, !tbaa !130
  store i64 %i.do, ptr %i.dg, align 8, !tbaa !130
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEC2EOS6_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEC2EOS6_.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !43
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !43
  store ptr %i.di, ptr %i.df, align 8, !tbaa !44
  store i64 0, ptr %i.dp, align 8, !tbaa !43
  store i8 0, ptr %i.di, align 8, !tbaa !130
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !1797
  store i64 %i.du, ptr %i.ds, align 8, !tbaa !1797
  %i.dv = add i64 %.sroa.14.035, -1
  %i.dw = and i64 %i.dv, %.sroa.14.035            ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %.lr.ph.i18.preheader, label %._crit_edge.i

.lr.ph.i18.preheader:                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEC2EOS6_.exit
  %i.dy = add i64 %.sroa.722.034, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 %i.dy) ; 2 uses
  %i.dz = add i64 %.sroa.722.034, 1               ; 2 uses
  %.not.i1976 = icmp ult i64 %i.dz, %i.ab
  br i1 %.not.i1976, label %.lr.ph77, label %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit

.lr.ph.i18:                                       ; preds = %.lr.ph77
  %i.ea = add i64 %i.eb, 1                        ; 2 uses
  %.not.i19 = icmp ult i64 %i.ea, %i.ab
  br i1 %.not.i19, label %.lr.ph77, label %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit, !llvm.loop !1799

.lr.ph77:                                         ; preds = %.lr.ph.i18.preheader, %.lr.ph.i18
  %i.eb = phi i64 [ %i.ea, %.lr.ph.i18 ], [ %i.dz, %.lr.ph.i18.preheader ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !127 ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %.lr.ph.i18, label %._crit_edge.i, !llvm.loop !1799

._crit_edge.i:                                    ; preds = %.lr.ph77, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEC2EOS6_.exit
  %.sroa.722.2 = phi i64 [ %.sroa.722.034, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEC2EOS6_.exit ], [ %i.eb, %.lr.ph77 ] ; 2 uses
  %.sroa.14.2 = phi i64 [ %i.dw, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEC2EOS6_.exit ], [ %i.ed, %.lr.ph77 ] ; 2 uses
  %i.ef = shl i64 %.sroa.722.2, 6
  %i.eg = tail call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.14.2, i1 true)
  %i.eh = or disjoint i64 %i.eg, %i.ef
  br label %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit

_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit: ; preds = %.lr.ph.i18, %.lr.ph.i18.preheader, %._crit_edge.i
  %.sroa.722.3 = phi i64 [ %.sroa.722.2, %._crit_edge.i ], [ %umax, %.lr.ph.i18.preheader ], [ %umax, %.lr.ph.i18 ] ; 2 uses
  %.sroa.14.4 = phi i64 [ %.sroa.14.2, %._crit_edge.i ], [ 0, %.lr.ph.i18.preheader ], [ 0, %.lr.ph.i18 ] ; 2 uses
  %.sroa.19.2 = phi i64 [ %i.eh, %._crit_edge.i ], [ %.sroa.19.036, %.lr.ph.i18.preheader ], [ %.sroa.19.036, %.lr.ph.i18 ]
  %.not.i14 = icmp ne i64 %.sroa.722.3, %i.ab
  %i.ei = icmp ne i64 %.sroa.14.4, 0
  %i.ej = or i1 %.not.i14, %i.ei
  br i1 %i.ej, label %bb.g, label %._crit_edge.loopexit
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE7destroyEv(ptr noundef nonnull align 8 dereferenceable(51) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !562, !noalias !1800 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1791, !noalias !1800 ; 7 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8, !tbaa !127, !noalias !1800 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.preheader, label %.lr.ph.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.i
  %exitcond.not.i.i53 = icmp eq i64 %i.d, 1
  br i1 %exitcond.not.i.i53, label %._crit_edge, label %.lr.ph.i.i.lr.ph, !llvm.loop !1795

.lr.ph.i.i.lr.ph:                                 ; preds = %.lr.ph.i.preheader
  br label %.lr.ph.i.i, !llvm.loop !1795

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.lr.ph, %.lr.ph.i
  %i.g = phi i64 [ 1, %.lr.ph.i.i.lr.ph ], [ %i.k, %.lr.ph.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !127, !noalias !1800 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %.lr.ph.preheader, !llvm.loop !1795

.lr.ph.i:                                         ; preds = %.lr.ph.i.i
  %i.k = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.k, %i.d
  br i1 %exitcond.not.i.i, label %.lr.ph.i._ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv.exit.loopexit_crit_edge, label %.lr.ph.i.i, !llvm.loop !1795

.lr.ph.i._ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv.exit.loopexit_crit_edge: ; preds = %.lr.ph.i
  br label %._crit_edge, !llvm.loop !1795

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.lcssa6.i = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %i.g, %.lr.ph.i.i ] ; 2 uses
  %.lcssa4.i = phi i64 [ %i.e, %.lr.ph.i.preheader.i ], [ %i.i, %.lr.ph.i.i ] ; 2 uses
  %i.l = tail call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa4.i, i1 true)
  %i.m = shl i64 %.lcssa6.i, 6
  %i.n = or disjoint i64 %i.l, %i.m
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit, %bb.a, %.lr.ph.i._ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv.exit.loopexit_crit_edge, %.lr.ph.i.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %0, align 8, !tbaa !563
  tail call void @_ZdlPv(ptr noundef %i.p) #34
  store ptr null, ptr %0, align 8, !tbaa !563
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !562
  tail call void @_ZdlPv(ptr noundef %i.q) #34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  tail call void @_ZdlPv(ptr noundef null) #34
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.r, align 8, !tbaa !555
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 64, ptr %i.s, align 8, !tbaa !550
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit
  %.sroa.611.024 = phi i64 [ %.sroa.611.3, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit ], [ %.lcssa6.i, %.lr.ph.preheader ] ; 3 uses
  %.sroa.13.023 = phi i64 [ %.sroa.13.4, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit ], [ %.lcssa4.i, %.lr.ph.preheader ] ; 2 uses
  %.sroa.18.022 = phi i64 [ %.sroa.18.2, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit ], [ %i.n, %.lr.ph.preheader ] ; 3 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !563
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.t, i64 %.sroa.18.022 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph
  %i.y = load i64, ptr %i.w, align 8, !tbaa !130
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #36
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.aa = add i64 %.sroa.13.023, -1
  %i.ab = and i64 %i.aa, %.sroa.13.023            ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i5.preheader, label %._crit_edge.i

.lr.ph.i5.preheader:                              ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit
  %i.ad = add i64 %.sroa.611.024, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.d, i64 %i.ad) ; 2 uses
  %i.ae = add i64 %.sroa.611.024, 1               ; 2 uses
  %.not.i654 = icmp ult i64 %i.ae, %i.d
  br i1 %.not.i654, label %.lr.ph55, label %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit

.lr.ph.i5:                                        ; preds = %.lr.ph55
  %i.af = add i64 %i.ag, 1                        ; 2 uses
  %.not.i6 = icmp ult i64 %i.af, %i.d
  br i1 %.not.i6, label %.lr.ph55, label %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit, !llvm.loop !1799

.lr.ph55:                                         ; preds = %.lr.ph.i5.preheader, %.lr.ph.i5
  %i.ag = phi i64 [ %i.af, %.lr.ph.i5 ], [ %i.ae, %.lr.ph.i5.preheader ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !127 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i5, label %._crit_edge.i, !llvm.loop !1799

._crit_edge.i:                                    ; preds = %.lr.ph55, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit
  %.sroa.13.2 = phi i64 [ %i.ab, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit ], [ %i.ai, %.lr.ph55 ] ; 2 uses
  %.sroa.611.2 = phi i64 [ %.sroa.611.024, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit ], [ %i.ag, %.lr.ph55 ] ; 2 uses
  %i.ak = shl i64 %.sroa.611.2, 6
  %i.al = tail call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.13.2, i1 true)
  %i.am = or disjoint i64 %i.ak, %i.al
  br label %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit

_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit: ; preds = %.lr.ph.i5, %.lr.ph.i5.preheader, %._crit_edge.i
  %.sroa.18.2 = phi i64 [ %i.am, %._crit_edge.i ], [ %.sroa.18.022, %.lr.ph.i5.preheader ], [ %.sroa.18.022, %.lr.ph.i5 ]
  %.sroa.13.4 = phi i64 [ %.sroa.13.2, %._crit_edge.i ], [ 0, %.lr.ph.i5.preheader ], [ 0, %.lr.ph.i5 ] ; 2 uses
  %.sroa.611.3 = phi i64 [ %.sroa.611.2, %._crit_edge.i ], [ %umax, %.lr.ph.i5.preheader ], [ %umax, %.lr.ph.i5 ] ; 2 uses
  %.not.i3 = icmp ne i64 %.sroa.611.3, %i.d
  %i.an = icmp ne i64 %.sroa.13.4, 0
  %i.ao = or i1 %i.an, %.not.i3
  br i1 %i.ao, label %.lr.ph, label %._crit_edge
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN4Luau9ModuleSCCESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN4Luau9ModuleSCCESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !141  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN4Luau9TypeArenaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !142
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !144
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !145
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #34, !inline_history !1803
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !145
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #34, !inline_history !1803
  br label %_ZNSt12__shared_ptrIN4Luau9TypeArenaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !130
  %.not.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !9
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN4Luau9TypeArenaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !21

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #34
  br label %_ZNSt12__shared_ptrIN4Luau9TypeArenaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN4Luau9TypeArenaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.c, %bb.a
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !153  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !156  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12__shared_ptrIN4Luau9TypeArenaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.s, %_ZNSt12__shared_ptrIN4Luau9TypeArenaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i ] ; 3 uses
  %i.v = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !44 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !130
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.aa, %i.u
  br i1 %.not.i.i.i1.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !157

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !153
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt12__shared_ptrIN4Luau9TypeArenaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.ab = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.s, %_ZNSt12__shared_ptrIN4Luau9TypeArenaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i.i.i, label %_ZSt8_DestroyIN4Luau9ModuleSCCEEvPT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !158
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #36
  br label %_ZSt8_DestroyIN4Luau9ModuleSCCEEvPT_.exit

_ZSt8_DestroyIN4Luau9ModuleSCCEEvPT_.exit:        ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN4Luau9ModuleSCCESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4Luau9ModuleSCCESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4Luau9ModuleSCCESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #9 comdat align 2 {
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN4Luau12SourceModuleEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_:bb.a
bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !43
  %i.t = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.q, i64 noundef %i.s, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #35
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !351  ; 3 uses
  %i.y = urem i64 %i.t, %i.x                      ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !350
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !473 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN4Luau12SourceModuleEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !187 ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %i.ad                   ; 3 uses
  %i.ae = icmp eq i64 %.fr22.i.i, 0
  %i.af = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !474 ; 2 uses
  br i1 %i.ae, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.ag = phi i64 [ %i.an, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ah = icmp eq i64 %i.t, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !43
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN4Luau12SourceModuleEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.al = load ptr, ptr %.0.us.i.i, align 8, !tbaa !187 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.al, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN4Luau12SourceModuleEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = load i64, ptr %i.am, align 8, !tbaa !474 ; 2 uses
  %i.ao = urem i64 %i.an, %i.x
  %.not19.us.i.i = icmp eq i64 %i.ao, %i.y
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN4Luau12SourceModuleEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !591

.split.i.i:                                       ; preds = %bb.e, %bb.i
  %i.ap = phi i64 [ %i.az, %bb.i ], [ %.pre26.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.ax, %bb.i ], [ %i.ac, %bb.e ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ar = icmp eq i64 %i.t, %i.ap
  br i1 %i.ar, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i

bb.h:                                             ; preds = %.split.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !43
  %i.au = icmp eq i64 %.fr22.i.i, %i.at
  br i1 %i.au, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i: ; preds = %bb.h
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !44
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.af, ptr %i.av, i64 %.fr22.i.i)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN4Luau12SourceModuleEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i, %bb.h, %.split.i.i
  %i.ax = load ptr, ptr %.0.i.i, align 8, !tbaa !187 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ax, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN4Luau12SourceModuleEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !474 ; 2 uses
  %i.ba = urem i64 %i.az, %i.x
  %.not19.i.i = icmp eq i64 %i.ba, %i.y
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN4Luau12SourceModuleEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !591

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN4Luau12SourceModuleEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.us, %.lr.ph.split.us, %bb.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i, %bb.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i, %bb.f, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %.sroa.06.1 = phi ptr [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i ], [ null, %bb.i ], [ %.sroa.06.018.us, %.lr.ph.split.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10 ], [ %.sroa.06.018, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau12SourceModuleEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit ]
  ret ptr %.sroa.06.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE4findERSD_(ptr noundef nonnull align 8 dereferenceable(51) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !613
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE9getBucketERSD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !614
  %i.f = add i64 %i.e, -1                         ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !43
  %i.j = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.g, i64 noundef %i.i, i64 noundef 3339675911)
          to label %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6doHashERSD_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #35
  unreachable

_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6doHashERSD_.exit.i: ; preds = %bb.b
  %i.m = mul i64 %i.j, -7046029254386353131
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i8, ptr %i.n, align 8, !tbaa !354
  %i.p = zext nneg i8 %i.o to i64
  %i.q = lshr i64 %i.m, %i.p                      ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !615  ; 3 uses
  %i.t = lshr i64 %i.q, 6
  %i.u = and i64 %i.q, 63
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.w = load i64, ptr %i.v, align 8, !tbaa !127
  %i.x = lshr i64 %i.w, %i.u
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %.lr.ph.i, label %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE9getBucketERSD_.exit

.lr.ph.i:                                         ; preds = %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6doHashERSD_.exit.i
  %i.z = load ptr, ptr %0, align 8, !tbaa !616    ; 3 uses
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !43
  %.fr10 = freeze i64 %i.aa                       ; 3 uses
  %i.ab = icmp eq i64 %.fr10, 0
  br i1 %i.ab, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us
  %.09.i.us = phi i64 [ %i.ah, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us ], [ %i.q, %.lr.ph.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %.09.i.us
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !43
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.split.us, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us: ; preds = %.lr.ph.i.split.us
  %i.ag = add i64 %.09.i.us, 1
  %i.ah = and i64 %i.ag, %i.f                     ; 3 uses
  %i.ai = lshr i64 %i.ah, 6
  %i.aj = and i64 %i.ah, 63
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ai
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !127
  %i.am = lshr i64 %i.al, %i.aj
  %i.an = trunc i64 %i.am to i1
  br i1 %i.an, label %.lr.ph.i.split.us, label %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE9getBucketERSD_.exit, !llvm.loop !617

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i
  %.09.i = phi i64 [ %i.aw, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i ], [ %i.q, %.lr.ph.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %.09.i ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !43
  %i.ar = icmp eq i64 %i.aq, %.fr10
  br i1 %i.ar, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %.lr.ph.i.split
  %i.as = load ptr, ptr %1, align 8, !tbaa !44
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !44
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.at, ptr %i.as, i64 %.fr10)
  %i.au = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.au, label %.split.us, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i: ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %.lr.ph.i.split
  %i.av = add i64 %.09.i, 1
  %i.aw = and i64 %i.av, %i.f                     ; 3 uses
  %i.ax = lshr i64 %i.aw, 6
  %i.ay = and i64 %i.aw, 63
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ax
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !127
  %i.bb = lshr i64 %i.ba, %i.ay
  %i.bc = trunc i64 %i.bb to i1
  br i1 %i.bc, label %.lr.ph.i.split, label %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE9getBucketERSD_.exit, !llvm.loop !617

.split.us:                                        ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %.lr.ph.i.split.us
  %.us-phi = phi i64 [ %.09.i.us, %.lr.ph.i.split.us ], [ %.09.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ]
  %i.bd = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %.us-phi
  br label %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE9getBucketERSD_.exit

_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE9getBucketERSD_.exit: ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us, %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6doHashERSD_.exit.i, %.split.us, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.bd, %.split.us ], [ null, %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6doHashERSD_.exit.i ], [ null, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us ], [ null, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE4growEv(ptr noundef nonnull align 8 dereferenceable(51) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Luau::detail::DenseHashTable2", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !614  ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %spec.select, ptr %i.e, align 8, !tbaa !2119
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.not.i.i = icmp eq i64 %spec.select, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br i1 %.not.i.i, label %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSetC2Em.exit.thread.i, label %bb.b

_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSetC2Em.exit.thread.i: ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store i8 64, ptr %i.g, align 8, !tbaa !354
  br label %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 64)
  %i.j = lshr i64 %i.i, 6                         ; 3 uses
  store i64 %i.j, ptr %i.f, align 8, !tbaa !2112
  %i.k = shl nuw nsw i64 %i.j, 3                  ; 2 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #40 ; 4 uses
  store ptr %i.l, ptr %i.h, align 8, !tbaa !615
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.k, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.m, align 8
  %i.n = mul i64 %spec.select, 48
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #40
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.o, ptr %1, align 8, !tbaa !616
  store i64 %spec.select, ptr %3, align 8, !tbaa !614
  %i.p = tail call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %spec.select, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i8
  %i.r = sub nuw nsw i8 64, %i.q                  ; 2 uses
  store i8 %i.r, ptr %4, align 8, !tbaa !354
  br label %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EEC2Em.exit

bb.d:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  resume { ptr, i32 } %i.s

_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EEC2Em.exit: ; preds = %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSetC2Em.exit.thread.i, %bb.c
  %i.t = phi i64 [ 0, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSetC2Em.exit.thread.i ], [ %i.j, %bb.c ]
  %i.u = phi ptr [ null, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSetC2Em.exit.thread.i ], [ %i.o, %bb.c ] ; 4 uses
  %i.v = phi ptr [ null, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSetC2Em.exit.thread.i ], [ %i.l, %bb.c ] ; 5 uses
  %i.w = phi i8 [ 64, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSetC2Em.exit.thread.i ], [ %i.r, %bb.c ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !615, !noalias !2120 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !2112, !noalias !2120 ; 10 uses
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EEC2Em.exit
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !127, !noalias !2120 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.preheader, label %.lr.ph

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.i
  %exitcond.not.i.i75 = icmp eq i64 %i.ab, 1
  br i1 %exitcond.not.i.i75, label %._crit_edge, label %.lr.ph.i.i.lr.ph, !llvm.loop !2113

.lr.ph.i.i.lr.ph:                                 ; preds = %.lr.ph.i.preheader
  br label %.lr.ph.i.i, !llvm.loop !2113

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.lr.ph, %.lr.ph.i
  %i.ae = phi i64 [ 1, %.lr.ph.i.i.lr.ph ], [ %i.ai, %.lr.ph.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !127, !noalias !2120 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i, label %.lr.ph, !llvm.loop !2113

.lr.ph.i:                                         ; preds = %.lr.ph.i.i
  %i.ai = add nuw i64 %i.ae, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ai, %i.ab
  br i1 %exitcond.not.i.i, label %.lr.ph.i._ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv.exit.loopexit_crit_edge, label %.lr.ph.i.i, !llvm.loop !2113

.lr.ph.i._ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv.exit.loopexit_crit_edge: ; preds = %.lr.ph.i
  br label %._crit_edge, !llvm.loop !2113

.lr.ph:                                           ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.lcssa6.i = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %i.ae, %.lr.ph.i.i ] ; 2 uses
  %.lcssa4.i = phi i64 [ %i.ac, %.lr.ph.i.preheader.i ], [ %i.ag, %.lr.ph.i.i ] ; 2 uses
  %i.aj = tail call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa4.i, i1 true)
  %i.ak = shl i64 %.lcssa6.i, 6
  %i.al = or disjoint i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = add i64 %spec.select, -1                ; 2 uses
  %i.ao = zext nneg i8 %i.w to i64
  br label %bb.g

._crit_edge.loopexit:                             ; preds = %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit
  %.pre = load i64, ptr %i.aa, align 8, !tbaa !2112
  %.pre45 = load ptr, ptr %i.y, align 8, !tbaa !615
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EEC2Em.exit, %.lr.ph.i._ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv.exit.loopexit_crit_edge, %.lr.ph.i.preheader, %._crit_edge.loopexit
  %i.ap = phi ptr [ %.pre45, %._crit_edge.loopexit ], [ %i.z, %.lr.ph.i.preheader ], [ %i.z, %.lr.ph.i._ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv.exit.loopexit_crit_edge ], [ %i.z, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EEC2Em.exit ] ; 2 uses
  %i.aq = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.ab, %.lr.ph.i.preheader ], [ %i.ab, %.lr.ph.i._ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv.exit.loopexit_crit_edge ], [ %i.ab, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EEC2Em.exit ]
  %i.ar = load ptr, ptr %0, align 8, !tbaa !2123  ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !2123
  store ptr %i.ar, ptr %1, align 8, !tbaa !2123
  %i.as = load i64, ptr %i.x, align 8, !tbaa !2119
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  tail call void @_ZdlPv(ptr noundef null) #34
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.v, ptr %i.y, align 8, !tbaa !615
  store i64 %spec.select, ptr %i.x, align 8, !tbaa !2119
  store i64 %i.t, ptr %i.aa, align 8, !tbaa !2112
  tail call void @_ZdlPv(ptr noundef null) #34
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !615
  store i64 %i.as, ptr %i.e, align 8, !tbaa !2119
  store i64 %i.aq, ptr %i.f, align 8, !tbaa !2112
  tail call void @_ZdlPv(ptr noundef null) #34
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load i64, ptr %i.a, align 8, !tbaa !127
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !127
  store i64 %i.av, ptr %i.au, align 8, !tbaa !127
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ay = load i8, ptr %i.aw, align 8, !tbaa !130
  store i8 %i.w, ptr %i.aw, align 8, !tbaa !130
  store i8 %i.ay, ptr %i.ax, align 8, !tbaa !130
  %.not.i16 = icmp eq ptr %i.ar, null
  br i1 %.not.i16, label %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  invoke void @_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv(ptr noundef nonnull align 8 dereferenceable(51) %1)
          to label %._ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit_crit_edge unwind label %bb.f

._ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit_crit_edge: ; preds = %bb.e
  %.pre46 = load ptr, ptr %i.at, align 8, !tbaa !615
  br label %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #35
  unreachable

_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit: ; preds = %._ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit_crit_edge, %._crit_edge
  %i.bb = phi ptr [ %.pre46, %._ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit_crit_edge ], [ %i.ap, %._crit_edge ]
  call void @_ZdlPv(ptr noundef %i.bb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  ret void

bb.g:                                             ; preds = %.lr.ph, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit
  %i.bc = phi i64 [ 0, %.lr.ph ], [ %i.dc, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit ]
  %.sroa.19.036 = phi i64 [ %i.al, %.lr.ph ], [ %.sroa.19.2, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit ] ; 4 uses
  %.sroa.14.035 = phi i64 [ %.lcssa4.i, %.lr.ph ], [ %.sroa.14.4, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit ] ; 2 uses
  %.sroa.722.034 = phi i64 [ %.lcssa6.i, %.lr.ph ], [ %.sroa.722.3, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit ] ; 3 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !616
  %i.be = getelementptr inbounds nuw [48 x i8], ptr %i.bd, i64 %.sroa.19.036 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !44
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !43
  %i.bi = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.bf, i64 noundef %i.bh, i64 noundef 3339675911)
          to label %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6doHashERSD_.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  tail call void @__clang_call_terminate(ptr %i.bk) #35
  unreachable

_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6doHashERSD_.exit.i: ; preds = %bb.g
  %i.bl = mul i64 %i.bi, -7046029254386353131
  %i.bm = lshr i64 %i.bl, %i.ao                   ; 5 uses
  %i.bn = lshr i64 %i.bm, 6
  %i.bo = and i64 %i.bm, 63
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.bn
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !127
  %i.br = lshr i64 %i.bq, %i.bo
  %i.bs = trunc i64 %i.br to i1
  br i1 %i.bs, label %.lr.ph.i17, label %.loopexit

.lr.ph.i17:                                       ; preds = %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6doHashERSD_.exit.i
  %i.bt = load i64, ptr %i.bg, align 8, !tbaa !43
  %.fr37 = freeze i64 %i.bt                       ; 3 uses
  %i.bu = icmp eq i64 %.fr37, 0
  br i1 %i.bu, label %.lr.ph.i17.split.us, label %.lr.ph.i17.split

.lr.ph.i17.split.us:                              ; preds = %.lr.ph.i17, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us
  %.09.i.us = phi i64 [ %i.ca, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us ], [ %i.bm, %.lr.ph.i17 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.09.i.us
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !43
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %.loopexit, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us: ; preds = %.lr.ph.i17.split.us
  %i.bz = add i64 %.09.i.us, 1
  %i.ca = and i64 %i.bz, %i.an                    ; 4 uses
  %i.cb = lshr i64 %i.ca, 6
  %i.cc = and i64 %i.ca, 63
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.cb
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !127
  %i.cf = lshr i64 %i.ce, %i.cc
  %i.cg = trunc i64 %i.cf to i1
  br i1 %i.cg, label %.lr.ph.i17.split.us, label %.loopexit, !llvm.loop !617

.lr.ph.i17.split:                                 ; preds = %.lr.ph.i17, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i
  %.09.i = phi i64 [ %i.cp, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i ], [ %i.bm, %.lr.ph.i17 ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.09.i ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !43
  %i.ck = icmp eq i64 %i.cj, %.fr37
  br i1 %i.ck, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %.lr.ph.i17.split
  %i.cl = load ptr, ptr %i.be, align 8, !tbaa !44
  %i.cm = load ptr, ptr %i.ch, align 8, !tbaa !44
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.cm, ptr %i.cl, i64 %.fr37)
  %i.cn = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.cn, label %.loopexit, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i: ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %.lr.ph.i17.split
  %i.co = add i64 %.09.i, 1
  %i.cp = and i64 %i.co, %i.an                    ; 4 uses
  %i.cq = lshr i64 %i.cp, 6
  %i.cr = and i64 %i.cp, 63
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.cq
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !127
  %i.cu = lshr i64 %i.ct, %i.cr
  %i.cv = trunc i64 %i.cu to i1
  br i1 %i.cv, label %.lr.ph.i17.split, label %.loopexit, !llvm.loop !617

.loopexit:                                        ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us, %.lr.ph.i17.split.us, %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6doHashERSD_.exit.i
  %.0.lcssa.i = phi i64 [ %i.bm, %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6doHashERSD_.exit.i ], [ %i.ca, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us ], [ %.09.i.us, %.lr.ph.i17.split.us ], [ %i.cp, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i ], [ %.09.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ] ; 3 uses
  %i.cw = lshr i64 %.0.lcssa.i, 6
  %i.cx = and i64 %.0.lcssa.i, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.cw ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !127
  %i.db = or i64 %i.da, %i.cy
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !127
  %i.dc = add i64 %i.bc, 1                        ; 2 uses
  store i64 %i.dc, ptr %i.am, align 8, !tbaa !613
  %i.dd = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.0.lcssa.i ; 6 uses
  %i.de = load ptr, ptr %0, align 8, !tbaa !616
  %i.df = getelementptr inbounds nuw [48 x i8], ptr %i.de, i64 %.sroa.19.036 ; 7 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 3 uses
  store ptr %i.dg, ptr %i.dd, align 8, !tbaa !129
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !44 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 5 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %.loopexit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !43 ; 2 uses
  %i.dm = icmp ult i64 %i.dl, 16
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = add nuw nsw i64 %i.dl, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dg, ptr noundef nonnull align 8 dereferenceable(1) %i.di, i64 %i.dn, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau9ModuleSCCEEEC2EOSA_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit
  store ptr %i.dh, ptr %i.dd, align 8, !tbaa !44
  %i.do = load i64, ptr %i.di, align 8, !tbaa !130
  store i64 %i.do, ptr %i.dg, align 8, !tbaa !130
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau9ModuleSCCEEEC2EOSA_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau9ModuleSCCEEEC2EOSA_.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !43
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !43
  store ptr %i.di, ptr %i.df, align 8, !tbaa !44
  store i64 0, ptr %i.dp, align 8, !tbaa !43
  store i8 0, ptr %i.di, align 8, !tbaa !130
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.df, i64 32 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  store ptr null, ptr %i.du, align 8, !tbaa !141
  %i.dv = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  %i.dw = load <2 x ptr>, ptr %i.dt, align 8, !tbaa !17
  store ptr null, ptr %i.dv, align 8, !tbaa !141
  store <2 x ptr> %i.dw, ptr %i.ds, align 8, !tbaa !17
  store ptr null, ptr %i.dt, align 8, !tbaa !574
  %i.dx = add i64 %.sroa.14.035, -1
  %i.dy = and i64 %i.dx, %.sroa.14.035            ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %.lr.ph.i18.preheader, label %._crit_edge.i

.lr.ph.i18.preheader:                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau9ModuleSCCEEEC2EOSA_.exit
  %i.ea = add i64 %.sroa.722.034, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 %i.ea) ; 2 uses
  %i.eb = add i64 %.sroa.722.034, 1               ; 2 uses
  %.not.i1976 = icmp ult i64 %i.eb, %i.ab
  br i1 %.not.i1976, label %.lr.ph77, label %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit

.lr.ph.i18:                                       ; preds = %.lr.ph77
  %i.ec = add i64 %i.ed, 1                        ; 2 uses
  %.not.i19 = icmp ult i64 %i.ec, %i.ab
  br i1 %.not.i19, label %.lr.ph77, label %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit, !llvm.loop !2115

.lr.ph77:                                         ; preds = %.lr.ph.i18.preheader, %.lr.ph.i18
  %i.ed = phi i64 [ %i.ec, %.lr.ph.i18 ], [ %i.eb, %.lr.ph.i18.preheader ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !127 ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %.lr.ph.i18, label %._crit_edge.i, !llvm.loop !2115

._crit_edge.i:                                    ; preds = %.lr.ph77, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau9ModuleSCCEEEC2EOSA_.exit
  %.sroa.722.2 = phi i64 [ %.sroa.722.034, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau9ModuleSCCEEEC2EOSA_.exit ], [ %i.ed, %.lr.ph77 ] ; 2 uses
  %.sroa.14.2 = phi i64 [ %i.dy, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau9ModuleSCCEEEC2EOSA_.exit ], [ %i.ef, %.lr.ph77 ] ; 2 uses
  %i.eh = shl i64 %.sroa.722.2, 6
  %i.ei = tail call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.14.2, i1 true)
  %i.ej = or disjoint i64 %i.ei, %i.eh
end_hunk_1
begin_hunk_2_@_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE13insert_unsafeERSD_:bb.a
  br i1 %i.ak, label %.lr.ph.i.split.us, label %.loopexit, !llvm.loop !2253

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i
  %.09.i = phi i64 [ %i.at, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i ], [ %i.o, %.lr.ph.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %.pre, i64 %.09.i ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !43
  %i.ao = icmp eq i64 %i.an, %.fr13
  br i1 %i.ao, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %.lr.ph.i.split
  %i.ap = load ptr, ptr %1, align 8, !tbaa !44
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !44
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.aq, ptr %i.ap, i64 %.fr13)
  %i.ar = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ar, label %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE9getBucketERSD_.exit.thread, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i: ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %.lr.ph.i.split
  %i.as = add i64 %.09.i, 1
  %i.at = and i64 %i.as, %i.d                     ; 4 uses
  %i.au = lshr i64 %i.at, 6                       ; 2 uses
  %i.av = and i64 %i.at, 63                       ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !127 ; 2 uses
  %i.ay = lshr i64 %i.ax, %i.av
  %i.az = trunc i64 %i.ay to i1
  br i1 %i.az, label %.lr.ph.i.split, label %.loopexit, !llvm.loop !2253

.loopexit:                                        ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us, %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6doHashERSD_.exit.i
  %.pre-phi20 = phi i64 [ %i.ag, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us ], [ %i.s, %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6doHashERSD_.exit.i ], [ %i.av, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i ]
  %i.ba = phi i64 [ %i.ai, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us ], [ %i.u, %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6doHashERSD_.exit.i ], [ %i.ax, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i ]
  %.pre-phi = phi i64 [ %i.af, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us ], [ %i.r, %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6doHashERSD_.exit.i ], [ %i.au, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i ]
  %.0.lcssa.i = phi i64 [ %i.ae, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us ], [ %i.o, %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6doHashERSD_.exit.i ], [ %i.at, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i ] ; 2 uses
  %i.bb = shl nuw i64 1, %.pre-phi20
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.pre-phi
  %i.bd = or i64 %i.ba, %i.bb
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !127
  %i.be = getelementptr inbounds nuw [48 x i8], ptr %.pre, i64 %.0.lcssa.i ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 3 uses
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !129
  %i.bg = load ptr, ptr %1, align 8, !tbaa !44    ; 2 uses
  %i.bh = load i64, ptr %i.f, align 8, !tbaa !43  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.bh, ptr %i.a, align 8, !tbaa !127
  %i.bi = icmp ugt i64 %i.bh, 15
  br i1 %i.bi, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.loopexit
  %i.bj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !44
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !127
  store i64 %i.bk, ptr %i.bf, align 8, !tbaa !130
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %.loopexit
  %i.bl = phi ptr [ %i.bj, %.noexc.i.i ], [ %i.bf, %.loopexit ] ; 2 uses
  switch i64 %i.bh, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN4Luau6detail17ItemInterfaceMap2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_6ModuleEEE6setKeyERSt4pairIS7_SA_ERKS7_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.bm = load i8, ptr %i.bg, align 1, !tbaa !130
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !130
  br label %_ZN4Luau6detail17ItemInterfaceMap2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_6ModuleEEE6setKeyERSt4pairIS7_SA_ERKS7_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %i.bg, i64 %i.bh, i1 false)
  br label %_ZN4Luau6detail17ItemInterfaceMap2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_6ModuleEEE6setKeyERSt4pairIS7_SA_ERKS7_.exit

_ZN4Luau6detail17ItemInterfaceMap2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_6ModuleEEE6setKeyERSt4pairIS7_SA_ERKS7_.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !127 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !43
  %i.bp = load ptr, ptr %i.be, align 8, !tbaa !44
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bn
  store i8 0, ptr %i.bq, align 1, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !1085
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !1085
  %.pre19 = load ptr, ptr %0, align 8, !tbaa !1089
  br label %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE9getBucketERSD_.exit.thread

_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE9getBucketERSD_.exit.thread: ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %.lr.ph.i.split.us, %_ZN4Luau6detail17ItemInterfaceMap2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_6ModuleEEE6setKeyERSt4pairIS7_SA_ERKS7_.exit
  %i.bv = phi ptr [ %.pre19, %_ZN4Luau6detail17ItemInterfaceMap2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_6ModuleEEE6setKeyERSt4pairIS7_SA_ERKS7_.exit ], [ %.pre, %.lr.ph.i.split.us ], [ %.pre, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ]
  %.0.lcssa.i9 = phi i64 [ %.0.lcssa.i, %_ZN4Luau6detail17ItemInterfaceMap2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_6ModuleEEE6setKeyERSt4pairIS7_SA_ERKS7_.exit ], [ %.09.i.us, %.lr.ph.i.split.us ], [ %.09.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ]
  %i.bw = getelementptr inbounds nuw [48 x i8], ptr %i.bv, i64 %.0.lcssa.i9
  ret ptr %i.bw
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE4findERSD_(ptr noundef nonnull align 8 dereferenceable(51) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1085
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE9getBucketERSD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1086
  %i.f = add i64 %i.e, -1                         ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !43
  %i.j = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.g, i64 noundef %i.i, i64 noundef 3339675911)
          to label %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6doHashERSD_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #35
  unreachable

_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6doHashERSD_.exit.i: ; preds = %bb.b
  %i.m = mul i64 %i.j, -7046029254386353131
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i8, ptr %i.n, align 8, !tbaa !1081
  %i.p = zext nneg i8 %i.o to i64
  %i.q = lshr i64 %i.m, %i.p                      ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1090 ; 3 uses
  %i.t = lshr i64 %i.q, 6
  %i.u = and i64 %i.q, 63
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.w = load i64, ptr %i.v, align 8, !tbaa !127
  %i.x = lshr i64 %i.w, %i.u
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %.lr.ph.i, label %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE9getBucketERSD_.exit

.lr.ph.i:                                         ; preds = %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6doHashERSD_.exit.i
  %i.z = load ptr, ptr %0, align 8, !tbaa !1089   ; 3 uses
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !43
  %.fr10 = freeze i64 %i.aa                       ; 3 uses
  %i.ab = icmp eq i64 %.fr10, 0
  br i1 %i.ab, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us
  %.09.i.us = phi i64 [ %i.ah, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us ], [ %i.q, %.lr.ph.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %.09.i.us
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !43
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.split.us, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us: ; preds = %.lr.ph.i.split.us
  %i.ag = add i64 %.09.i.us, 1
  %i.ah = and i64 %i.ag, %i.f                     ; 3 uses
  %i.ai = lshr i64 %i.ah, 6
  %i.aj = and i64 %i.ah, 63
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ai
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !127
  %i.am = lshr i64 %i.al, %i.aj
  %i.an = trunc i64 %i.am to i1
  br i1 %i.an, label %.lr.ph.i.split.us, label %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE9getBucketERSD_.exit, !llvm.loop !2253

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i
  %.09.i = phi i64 [ %i.aw, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i ], [ %i.q, %.lr.ph.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %.09.i ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !43
  %i.ar = icmp eq i64 %i.aq, %.fr10
  br i1 %i.ar, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %.lr.ph.i.split
  %i.as = load ptr, ptr %1, align 8, !tbaa !44
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !44
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.at, ptr %i.as, i64 %.fr10)
  %i.au = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.au, label %.split.us, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i: ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %.lr.ph.i.split
  %i.av = add i64 %.09.i, 1
  %i.aw = and i64 %i.av, %i.f                     ; 3 uses
  %i.ax = lshr i64 %i.aw, 6
  %i.ay = and i64 %i.aw, 63
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ax
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !127
  %i.bb = lshr i64 %i.ba, %i.ay
  %i.bc = trunc i64 %i.bb to i1
  br i1 %i.bc, label %.lr.ph.i.split, label %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE9getBucketERSD_.exit, !llvm.loop !2253

.split.us:                                        ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %.lr.ph.i.split.us
  %.us-phi = phi i64 [ %.09.i.us, %.lr.ph.i.split.us ], [ %.09.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ]
  %i.bd = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %.us-phi
  br label %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE9getBucketERSD_.exit

_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE9getBucketERSD_.exit: ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us, %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6doHashERSD_.exit.i, %.split.us, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.bd, %.split.us ], [ null, %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6doHashERSD_.exit.i ], [ null, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us ], [ null, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE4growEv(ptr noundef nonnull align 8 dereferenceable(51) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Luau::detail::DenseHashTable2.907", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1086 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %spec.select, ptr %i.e, align 8, !tbaa !2254
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.not.i.i = icmp eq i64 %spec.select, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br i1 %.not.i.i, label %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSetC2Em.exit.thread.i, label %bb.b

_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSetC2Em.exit.thread.i: ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store i8 64, ptr %i.g, align 8, !tbaa !1081
  br label %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 64)
  %i.j = lshr i64 %i.i, 6                         ; 3 uses
  store i64 %i.j, ptr %i.f, align 8, !tbaa !1850
  %i.k = shl nuw nsw i64 %i.j, 3                  ; 2 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #40 ; 4 uses
  store ptr %i.l, ptr %i.h, align 8, !tbaa !1090
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.k, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.m, align 8
  %i.n = mul i64 %spec.select, 48
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #40
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.o, ptr %1, align 8, !tbaa !1089
  store i64 %spec.select, ptr %3, align 8, !tbaa !1086
  %i.p = tail call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %spec.select, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i8
  %i.r = sub nuw nsw i8 64, %i.q                  ; 2 uses
  store i8 %i.r, ptr %4, align 8, !tbaa !1081
  br label %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EEC2Em.exit

bb.d:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  resume { ptr, i32 } %i.s

_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EEC2Em.exit: ; preds = %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSetC2Em.exit.thread.i, %bb.c
  %i.t = phi i64 [ 0, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSetC2Em.exit.thread.i ], [ %i.j, %bb.c ]
  %i.u = phi ptr [ null, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSetC2Em.exit.thread.i ], [ %i.o, %bb.c ] ; 4 uses
  %i.v = phi ptr [ null, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSetC2Em.exit.thread.i ], [ %i.l, %bb.c ] ; 5 uses
  %i.w = phi i8 [ 64, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSetC2Em.exit.thread.i ], [ %i.r, %bb.c ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1090, !noalias !2255 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1850, !noalias !2255 ; 10 uses
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EEC2Em.exit
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !127, !noalias !2255 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.preheader, label %.lr.ph

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.i
  %exitcond.not.i.i75 = icmp eq i64 %i.ab, 1
  br i1 %exitcond.not.i.i75, label %._crit_edge, label %.lr.ph.i.i.lr.ph, !llvm.loop !1851

.lr.ph.i.i.lr.ph:                                 ; preds = %.lr.ph.i.preheader
  br label %.lr.ph.i.i, !llvm.loop !1851

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.lr.ph, %.lr.ph.i
  %i.ae = phi i64 [ 1, %.lr.ph.i.i.lr.ph ], [ %i.ai, %.lr.ph.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !127, !noalias !2255 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i, label %.lr.ph, !llvm.loop !1851

.lr.ph.i:                                         ; preds = %.lr.ph.i.i
  %i.ai = add nuw i64 %i.ae, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ai, %i.ab
  br i1 %exitcond.not.i.i, label %.lr.ph.i._ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv.exit.loopexit_crit_edge, label %.lr.ph.i.i, !llvm.loop !1851

.lr.ph.i._ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv.exit.loopexit_crit_edge: ; preds = %.lr.ph.i
  br label %._crit_edge, !llvm.loop !1851

.lr.ph:                                           ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.lcssa6.i = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %i.ae, %.lr.ph.i.i ] ; 2 uses
  %.lcssa4.i = phi i64 [ %i.ac, %.lr.ph.i.preheader.i ], [ %i.ag, %.lr.ph.i.i ] ; 2 uses
  %i.aj = tail call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa4.i, i1 true)
  %i.ak = shl i64 %.lcssa6.i, 6
  %i.al = or disjoint i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = add i64 %spec.select, -1                ; 2 uses
  %i.ao = zext nneg i8 %i.w to i64
  br label %bb.g

._crit_edge.loopexit:                             ; preds = %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit
  %.pre = load i64, ptr %i.aa, align 8, !tbaa !1850
  %.pre45 = load ptr, ptr %i.y, align 8, !tbaa !1090
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EEC2Em.exit, %.lr.ph.i._ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv.exit.loopexit_crit_edge, %.lr.ph.i.preheader, %._crit_edge.loopexit
  %i.ap = phi ptr [ %.pre45, %._crit_edge.loopexit ], [ %i.z, %.lr.ph.i.preheader ], [ %i.z, %.lr.ph.i._ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv.exit.loopexit_crit_edge ], [ %i.z, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EEC2Em.exit ] ; 2 uses
  %i.aq = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.ab, %.lr.ph.i.preheader ], [ %i.ab, %.lr.ph.i._ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv.exit.loopexit_crit_edge ], [ %i.ab, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EEC2Em.exit ]
  %i.ar = load ptr, ptr %0, align 8, !tbaa !2258  ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !2258
  store ptr %i.ar, ptr %1, align 8, !tbaa !2258
  %i.as = load i64, ptr %i.x, align 8, !tbaa !2254
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  tail call void @_ZdlPv(ptr noundef null) #34
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.v, ptr %i.y, align 8, !tbaa !1090
  store i64 %spec.select, ptr %i.x, align 8, !tbaa !2254
  store i64 %i.t, ptr %i.aa, align 8, !tbaa !1850
  tail call void @_ZdlPv(ptr noundef null) #34
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !1090
  store i64 %i.as, ptr %i.e, align 8, !tbaa !2254
  store i64 %i.aq, ptr %i.f, align 8, !tbaa !1850
  tail call void @_ZdlPv(ptr noundef null) #34
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load i64, ptr %i.a, align 8, !tbaa !127
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !127
  store i64 %i.av, ptr %i.au, align 8, !tbaa !127
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ay = load i8, ptr %i.aw, align 8, !tbaa !130
  store i8 %i.w, ptr %i.aw, align 8, !tbaa !130
  store i8 %i.ay, ptr %i.ax, align 8, !tbaa !130
  %.not.i16 = icmp eq ptr %i.ar, null
  br i1 %.not.i16, label %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  invoke void @_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv(ptr noundef nonnull align 8 dereferenceable(51) %1)
          to label %._ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit_crit_edge unwind label %bb.f

._ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit_crit_edge: ; preds = %bb.e
  %.pre46 = load ptr, ptr %i.at, align 8, !tbaa !1090
  br label %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #35
  unreachable

_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit: ; preds = %._ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit_crit_edge, %._crit_edge
  %i.bb = phi ptr [ %.pre46, %._ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EED2Ev.exit_crit_edge ], [ %i.ap, %._crit_edge ]
  call void @_ZdlPv(ptr noundef %i.bb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  ret void

bb.g:                                             ; preds = %.lr.ph, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit
  %i.bc = phi i64 [ 0, %.lr.ph ], [ %i.dc, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit ]
  %.sroa.19.036 = phi i64 [ %i.al, %.lr.ph ], [ %.sroa.19.2, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit ] ; 4 uses
  %.sroa.14.035 = phi i64 [ %.lcssa4.i, %.lr.ph ], [ %.sroa.14.4, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit ] ; 2 uses
  %.sroa.722.034 = phi i64 [ %.lcssa6.i, %.lr.ph ], [ %.sroa.722.3, %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit ] ; 3 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !1089
  %i.be = getelementptr inbounds nuw [48 x i8], ptr %i.bd, i64 %.sroa.19.036 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !44
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !43
  %i.bi = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.bf, i64 noundef %i.bh, i64 noundef 3339675911)
          to label %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6doHashERSD_.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  tail call void @__clang_call_terminate(ptr %i.bk) #35
  unreachable

_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6doHashERSD_.exit.i: ; preds = %bb.g
  %i.bl = mul i64 %i.bi, -7046029254386353131
  %i.bm = lshr i64 %i.bl, %i.ao                   ; 5 uses
  %i.bn = lshr i64 %i.bm, 6
  %i.bo = and i64 %i.bm, 63
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.bn
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !127
  %i.br = lshr i64 %i.bq, %i.bo
  %i.bs = trunc i64 %i.br to i1
  br i1 %i.bs, label %.lr.ph.i17, label %.loopexit

.lr.ph.i17:                                       ; preds = %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6doHashERSD_.exit.i
  %i.bt = load i64, ptr %i.bg, align 8, !tbaa !43
  %.fr37 = freeze i64 %i.bt                       ; 3 uses
  %i.bu = icmp eq i64 %.fr37, 0
  br i1 %i.bu, label %.lr.ph.i17.split.us, label %.lr.ph.i17.split

.lr.ph.i17.split.us:                              ; preds = %.lr.ph.i17, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us
  %.09.i.us = phi i64 [ %i.ca, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us ], [ %i.bm, %.lr.ph.i17 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.09.i.us
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !43
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %.loopexit, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us: ; preds = %.lr.ph.i17.split.us
  %i.bz = add i64 %.09.i.us, 1
  %i.ca = and i64 %i.bz, %i.an                    ; 4 uses
  %i.cb = lshr i64 %i.ca, 6
  %i.cc = and i64 %i.ca, 63
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.cb
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !127
  %i.cf = lshr i64 %i.ce, %i.cc
  %i.cg = trunc i64 %i.cf to i1
  br i1 %i.cg, label %.lr.ph.i17.split.us, label %.loopexit, !llvm.loop !2253

.lr.ph.i17.split:                                 ; preds = %.lr.ph.i17, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i
  %.09.i = phi i64 [ %i.cp, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i ], [ %i.bm, %.lr.ph.i17 ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.09.i ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !43
  %i.ck = icmp eq i64 %i.cj, %.fr37
  br i1 %i.ck, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %.lr.ph.i17.split
  %i.cl = load ptr, ptr %i.be, align 8, !tbaa !44
  %i.cm = load ptr, ptr %i.ch, align 8, !tbaa !44
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.cm, ptr %i.cl, i64 %.fr37)
  %i.cn = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.cn, label %.loopexit, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i: ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %.lr.ph.i17.split
  %i.co = add i64 %.09.i, 1
  %i.cp = and i64 %i.co, %i.an                    ; 4 uses
  %i.cq = lshr i64 %i.cp, 6
  %i.cr = and i64 %i.cp, 63
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.cq
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !127
  %i.cu = lshr i64 %i.ct, %i.cr
  %i.cv = trunc i64 %i.cu to i1
  br i1 %i.cv, label %.lr.ph.i17.split, label %.loopexit, !llvm.loop !2253

.loopexit:                                        ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us, %.lr.ph.i17.split.us, %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6doHashERSD_.exit.i
  %.0.lcssa.i = phi i64 [ %i.bm, %_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6doHashERSD_.exit.i ], [ %i.ca, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i.us ], [ %.09.i.us, %.lr.ph.i17.split.us ], [ %i.cp, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread8.i ], [ %.09.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ] ; 3 uses
  %i.cw = lshr i64 %.0.lcssa.i, 6
  %i.cx = and i64 %.0.lcssa.i, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.cw ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !127
  %i.db = or i64 %i.da, %i.cy
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !127
  %i.dc = add i64 %i.bc, 1                        ; 2 uses
  store i64 %i.dc, ptr %i.am, align 8, !tbaa !1085
  %i.dd = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.0.lcssa.i ; 6 uses
  %i.de = load ptr, ptr %0, align 8, !tbaa !1089
  %i.df = getelementptr inbounds nuw [48 x i8], ptr %i.de, i64 %.sroa.19.036 ; 7 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 3 uses
  store ptr %i.dg, ptr %i.dd, align 8, !tbaa !129
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !44 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 5 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %.loopexit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !43 ; 2 uses
  %i.dm = icmp ult i64 %i.dl, 16
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = add nuw nsw i64 %i.dl, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dg, ptr noundef nonnull align 8 dereferenceable(1) %i.di, i64 %i.dn, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau6ModuleEEEC2EOSA_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit
  store ptr %i.dh, ptr %i.dd, align 8, !tbaa !44
  %i.do = load i64, ptr %i.di, align 8, !tbaa !130
  store i64 %i.do, ptr %i.dg, align 8, !tbaa !130
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau6ModuleEEEC2EOSA_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau6ModuleEEEC2EOSA_.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !43
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !43
  store ptr %i.di, ptr %i.df, align 8, !tbaa !44
  store i64 0, ptr %i.dp, align 8, !tbaa !43
  store i8 0, ptr %i.di, align 8, !tbaa !130
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.df, i64 32 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  store ptr null, ptr %i.du, align 8, !tbaa !141
  %i.dv = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  %i.dw = load <2 x ptr>, ptr %i.dt, align 8, !tbaa !17
  store ptr null, ptr %i.dv, align 8, !tbaa !141
  store <2 x ptr> %i.dw, ptr %i.ds, align 8, !tbaa !17
  store ptr null, ptr %i.dt, align 8, !tbaa !161
  %i.dx = add i64 %.sroa.14.035, -1
  %i.dy = and i64 %i.dx, %.sroa.14.035            ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %.lr.ph.i18.preheader, label %._crit_edge.i

.lr.ph.i18.preheader:                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau6ModuleEEEC2EOSA_.exit
  %i.ea = add i64 %.sroa.722.034, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 %i.ea) ; 2 uses
  %i.eb = add i64 %.sroa.722.034, 1               ; 2 uses
  %.not.i1976 = icmp ult i64 %i.eb, %i.ab
  br i1 %.not.i1976, label %.lr.ph77, label %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit

.lr.ph.i18:                                       ; preds = %.lr.ph77
  %i.ec = add i64 %i.ed, 1                        ; 2 uses
  %.not.i19 = icmp ult i64 %i.ec, %i.ab
  br i1 %.not.i19, label %.lr.ph77, label %_ZN4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet8iteratorppEv.exit, !llvm.loop !1853

.lr.ph77:                                         ; preds = %.lr.ph.i18.preheader, %.lr.ph.i18
  %i.ed = phi i64 [ %i.ec, %.lr.ph.i18 ], [ %i.eb, %.lr.ph.i18.preheader ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !127 ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %.lr.ph.i18, label %._crit_edge.i, !llvm.loop !1853

._crit_edge.i:                                    ; preds = %.lr.ph77, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau6ModuleEEEC2EOSA_.exit
  %.sroa.722.2 = phi i64 [ %.sroa.722.034, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau6ModuleEEEC2EOSA_.exit ], [ %i.ed, %.lr.ph77 ] ; 2 uses
  %.sroa.14.2 = phi i64 [ %i.dy, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau6ModuleEEEC2EOSA_.exit ], [ %i.ef, %.lr.ph77 ] ; 2 uses
  %i.eh = shl i64 %.sroa.722.2, 6
  %i.ei = tail call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.14.2, i1 true)
  %i.ej = or disjoint i64 %i.ei, %i.eh
end_hunk_2
begin_hunk_3_@llvm.smax.i32
!1590 = !{!176, !40, i64 8}
!1591 = !{!186, !175, i64 16}
!1592 = !{!186, !175, i64 48}
!1593 = distinct !{!1593, !19}
!1594 = !{!201, !202, i64 8}
!1595 = distinct !{!1595, !19}
!1596 = !{!206, !207, i64 8}
!1597 = distinct !{!1597, !19}
!1598 = !{!301, !175, i64 16}
!1599 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN4Luau12SourceModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1600 = distinct !{!1600, !19}
!1601 = !{!299, !175, i64 16}
!1602 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN4Luau10SourceNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1603 = distinct !{!1603, !19}
!1604 = !{!271, !272, i64 0}
!1605 = !{!271, !40, i64 8}
!1606 = distinct !{!1606, !19}
!1607 = !{!262, !263, i64 0}
!1608 = !{!262, !263, i64 16}
!1609 = !{!268, !269, i64 0}
!1610 = !{!268, !269, i64 8}
!1611 = distinct !{!1611, !19}
!1612 = !{!268, !269, i64 16}
!1613 = !{!262, !263, i64 8}
!1614 = distinct !{!1614, !19}
!1615 = !{!1616, !6, i64 0}
!1616 = !{!"_ZTSN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEEE", !6, i64 0, !7, i64 8}
!1617 = distinct !{null, null, null}
!1618 = distinct !{null, null, null}
!1619 = !{!1460, !1461, i64 0}
!1620 = !{!1460, !1461, i64 8}
!1621 = !{!1622, !29, i64 48}
!1622 = !{!"_ZTSSt22_Optional_payload_baseIN4Luau16FunctionArgumentEE", !7, i64 0, !29, i64 48}
!1623 = distinct !{!1623, !19}
!1624 = !{!1460, !1461, i64 16}
!1625 = !{!1453, !29, i64 96}
!1626 = !{!1473, !1476, i64 8}
!1627 = !{!1474, !1476, i64 24}
!1628 = !{!1474, !1476, i64 16}
!1629 = distinct !{!1629, !19}
!1630 = !{!1631, !29, i64 16}
!1631 = !{!"_ZTSSt22_Optional_payload_baseIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEEE", !7, i64 0, !29, i64 16}
!1632 = !{!1633, !6, i64 0}
!1633 = !{!"_ZTSN4Luau7VariantIJNS_3ObjENS_5KlassEEEE", !6, i64 0, !7, i64 8}
!1634 = distinct !{null, null, null}
!1635 = !{!1636, !1637, i64 0}
!1636 = !{!"_ZTSN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_7TypeFunEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EEE", !1637, i64 0, !40, i64 8, !40, i64 16, !37, i64 24, !309, i64 56, !310, i64 57}
!1637 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IPN4Luau7TypeFunEmEE", !13, i64 0}
!1638 = !{!1636, !40, i64 8}
!1639 = distinct !{!1639, !19}
!1640 = !{!1641, !1642, i64 0}
!1641 = !{!"_ZTSN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_19AstStatTypeFunctionEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EEE", !1642, i64 0, !40, i64 8, !40, i64 16, !37, i64 24, !309, i64 56, !310, i64 57}
!1642 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IPN4Luau19AstStatTypeFunctionEmEE", !13, i64 0}
!1643 = !{!1641, !40, i64 8}
!1644 = distinct !{!1644, !19}
!1645 = distinct !{null, null, null}
!1646 = !{!255, !175, i64 16}
!1647 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN4Luau6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1648 = distinct !{!1648, !19}
!1649 = !{!228, !175, i64 16}
!1650 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1651 = distinct !{!1651, !19}
!1652 = distinct !{!1652, !19}
!1653 = distinct !{!1653, !19}
!1654 = distinct !{!1654, !19}
!1655 = distinct !{!1655, !19}
!1656 = distinct !{!1656, !19}
!1657 = distinct !{!1657, !19}
!1658 = distinct !{!1658, !19}
!1659 = distinct !{!1659, !19}
!1660 = distinct !{!1660, !19}
!1661 = distinct !{!1661, !19}
!1662 = distinct !{!1662, !19}
!1663 = distinct !{!1663, !19}
!1664 = distinct !{null, null, null, null, null, null, null, null}
!1665 = distinct !{!1665, !19}
!1666 = distinct !{null, null, null, null, null, null, null, null}
!1667 = distinct !{null, null, null, null, null, null, null, null}
!1668 = distinct !{!1668, !19}
!1669 = distinct !{null, null, null, null, null, null, null, null}
!1670 = !{!1671, !164, i64 0}
!1671 = !{!"_ZTSSt12__shared_ptrIN4Luau9TypeErrorELN9__gnu_cxx12_Lock_policyE2EE", !164, i64 0, !62, i64 8}
!1672 = !{!1673, !1674, i64 32}
!1673 = !{!"_ZTSN4Luau13UnknownSymbolE", !37, i64 0, !1674, i64 32}
!1674 = !{!"_ZTSN4Luau13UnknownSymbol7ContextE", !7, i64 0}
!1675 = !{!1676, !189, i64 0}
!1676 = !{!"_ZTSN4Luau15UnknownPropertyE", !189, i64 0, !37, i64 8}
!1677 = !{i64 0, i64 8, !188, i64 8, i64 8, !188, i64 16, i64 4, !1678}
!1678 = !{!1679, !1679, i64 0}
!1679 = !{!"_ZTSN4Luau13AstExprBinary2OpE", !7, i64 0}
!1680 = !{!202, !202, i64 0}
!1681 = !{!207, !207, i64 0}
!1682 = !{!1683, !189, i64 0}
!1683 = !{!"_ZTSN4Luau27UnknownPropButFoundLikePropE", !189, i64 0, !37, i64 8, !1684, i64 40}
!1684 = !{!"_ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !1685, i64 0}
!1685 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !1686, i64 0}
!1686 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !1687, i64 0, !1473, i64 8}
!1687 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !1688, i64 0}
!1688 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!1689 = !{!1473, !1475, i64 0}
!1690 = !{!1476, !1476, i64 0}
!1691 = !{!1474, !1476, i64 8}
!1692 = !{!1473, !40, i64 32}
!1693 = !{!1473, !1476, i64 24}
!1694 = !{!1695, !1696, i64 32}
!1695 = !{!"_ZTSN4Luau19CannotAssignToNeverE", !189, i64 0, !991, i64 8, !1696, i64 32}
!1696 = !{!"_ZTSN4Luau19CannotAssignToNever6ReasonE", !7, i64 0}
!1697 = !{!1698, !1679, i64 0}
!1698 = !{!"_ZTSN4Luau26CannotInferBinaryOperationE", !1679, i64 0, !104, i64 8, !1699, i64 48}
!1699 = !{!"_ZTSN4Luau26CannotInferBinaryOperation6OpKindE", !7, i64 0}
!1700 = !{!1698, !1699, i64 48}
!1701 = !{!1702, !1703, i64 40}
!1702 = !{!"_ZTSN4Luau17MissingPropertiesE", !189, i64 0, !189, i64 8, !313, i64 16, !1703, i64 40}
!1703 = !{!"_ZTSN4Luau17MissingProperties7ContextE", !7, i64 0}
!1704 = !{!1705, !1706, i64 32}
!1705 = !{!"_ZTSN4Luau27SwappedGenericTypeParameterE", !37, i64 0, !1706, i64 32}
!1706 = !{!"_ZTSN4Luau27SwappedGenericTypeParameter4KindE", !7, i64 0}
!1707 = !{i64 0, i64 8, !188, i64 8, i64 8, !188}
!1708 = !{!1709, !40, i64 48}
!1709 = !{!"_ZTSN4Luau24CheckedFunctionCallErrorE", !189, i64 0, !189, i64 8, !37, i64 16, !40, i64 48}
!1710 = !{!1711, !189, i64 64}
!1711 = !{!"_ZTSN4Luau32NonStrictFunctionDefinitionErrorE", !37, i64 0, !37, i64 32, !189, i64 64}
!1712 = !{!1713, !189, i64 0}
!1713 = !{!"_ZTSN4Luau23PropertyAccessViolationE", !189, i64 0, !37, i64 8, !1714, i64 40}
!1714 = !{!"_ZTSN4Luau23PropertyAccessViolationUt_E", !7, i64 0}
!1715 = !{!1713, !1714, i64 40}
!1716 = !{!1717, !1717, i64 0}
!1717 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEE", !13, i64 0}
!1718 = !{!1719, !1717, i64 16}
!1719 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESaISB_EE17_Vector_impl_dataE", !1717, i64 0, !1717, i64 8, !1717, i64 16}
!1720 = !{!1721, !189, i64 24}
!1721 = !{!"_ZTSN4Luau37ExplicitFunctionAnnotationRecommendedE", !1722, i64 0, !189, i64 24}
!1722 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESaISB_EE", !1723, i64 0}
!1723 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESaISB_EE", !1724, i64 0}
!1724 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESaISB_EE12_Vector_implE", !1719, i64 0}
!1725 = !{!1726, !6, i64 0}
!1726 = !{!"_ZTSN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEEE", !6, i64 0, !7, i64 8}
!1727 = distinct !{null, null, null}
!1728 = !{i64 0, i64 8, !127, i64 8, i64 8, !127}
!1729 = !{i64 0, i64 8, !127, i64 8, i64 8, !195}
!1730 = !{!1731, !1731, i64 0}
!1731 = !{!"_ZTSN4Luau32InstantiateGenericsOnNonFunction19InterestingEdgeCaseE", !7, i64 0}
!1732 = !{i64 0, i64 8, !188, i64 8, i64 8, !661}
!1733 = distinct !{null, null}
!1734 = distinct !{!1734, !19}
!1735 = distinct !{null, null, null, null}
!1736 = !{!1719, !1717, i64 0}
!1737 = !{!1719, !1717, i64 8}
!1738 = distinct !{!1738, !19}
!1739 = distinct !{!1739, !19}
!1740 = !{!1695, !189, i64 0}
!1741 = !{!994, !263, i64 8}
!1742 = distinct !{!1742, !19}
!1743 = distinct !{!1743, !19}
!1744 = !{!1745, !1745, i64 0}
!1745 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !13, i64 0}
!1746 = distinct !{!1746, !19}
!1747 = distinct !{!1747, !19}
!1748 = !{!1749, !1745, i64 0}
!1749 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11_Alloc_nodeE", !1745, i64 0}
!1750 = !{i64 8}
!1751 = !{!1474, !1475, i64 0}
!1752 = distinct !{!1752, !19}
!1753 = !{!1754, !189, i64 0}
!1754 = !{!"_ZTSN4Luau20MissingUnionPropertyE", !189, i64 0, !991, i64 8, !37, i64 32}
!1755 = !{!1756, !189, i64 32}
!1756 = !{!"_ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEE", !37, i64 0, !189, i64 32}
!1757 = distinct !{!1757, !19}
!1758 = !{!1759, !164, i64 0}
!1759 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN4Luau9TypeErrorESt6vectorIS2_SaIS2_EEEE", !164, i64 0}
!1760 = distinct !{!1760, !19}
!1761 = distinct !{null, null, null}
!1762 = distinct !{!1762, !19}
!1763 = distinct !{!1763, !19}
!1764 = distinct !{!1764, !19}
!1765 = distinct !{!1765, !19}
!1766 = distinct !{!1766, !19}
!1767 = !{!36, !6, i64 0}
!1768 = distinct !{null, null, null}
!1769 = distinct !{!1769, !19}
!1770 = distinct !{null, null, null}
!1771 = distinct !{!1771, !19}
!1772 = distinct !{null, null}
!1773 = distinct !{null, null, null}
!1774 = distinct !{null, null, null}
!1775 = distinct !{!1775, !19}
!1776 = distinct !{!1776, !19}
!1777 = distinct !{!1777, !19}
!1778 = distinct !{!1778, !19}
!1779 = distinct !{!1779, !19}
!1780 = distinct !{!1780, !19}
!1781 = distinct !{!1781, !19}
!1782 = distinct !{!1782, !19}
!1783 = distinct !{!1783, !19}
!1784 = distinct !{!1784, !19}
!1785 = distinct !{!1785, !19}
!1786 = !{!1787, !98, i64 0}
!1787 = !{!"_ZTSSt4pairIPKN4Luau7AstNodeENS0_10ModuleInfoEE", !98, i64 0, !1519, i64 8}
!1788 = distinct !{!1788, !19}
!1789 = distinct !{!1789, !19}
!1790 = !{!553, !40, i64 0}
!1791 = !{!553, !40, i64 8}
!1792 = !{!1793}
!1793 = distinct !{!1793, !1794, !"_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv: argument 0"}
!1794 = distinct !{!1794, !"_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv"}
!1795 = distinct !{!1795, !19}
!1796 = !{!552, !552, i64 0}
!1797 = !{!1798, !40, i64 32}
!1798 = !{!"_ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmE", !37, i64 0, !40, i64 32}
!1799 = distinct !{!1799, !19}
!1800 = !{!1801}
!1801 = distinct !{!1801, !1802, !"_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv: argument 0"}
!1802 = distinct !{!1802, !"_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_mES8_IKS7_mENS0_17ItemInterfaceMap2IS7_mEESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv"}
!1803 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN4Luau9TypeArenaELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1804 = !{!1805, !39, i64 8}
!1805 = !{!"_ZTSSt9type_info", !39, i64 8}
!1806 = !{!1807}
!1807 = distinct !{!1807, !1808, !"_ZSt19__relocate_object_aISt10shared_ptrIN4Luau9ModuleSCCEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!1808 = distinct !{!1808, !"_ZSt19__relocate_object_aISt10shared_ptrIN4Luau9ModuleSCCEES3_SaIS3_EEvPT_PT0_RT1_"}
!1809 = !{!1810}
!1810 = distinct !{!1810, !1808, !"_ZSt19__relocate_object_aISt10shared_ptrIN4Luau9ModuleSCCEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!1811 = distinct !{!1811, !19}
!1812 = !{!1813}
!1813 = distinct !{!1813, !1814, !"_ZSt19__relocate_object_aISt10shared_ptrIN4Luau9ModuleSCCEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!1814 = distinct !{!1814, !"_ZSt19__relocate_object_aISt10shared_ptrIN4Luau9ModuleSCCEES3_SaIS3_EEvPT_PT0_RT1_"}
!1815 = !{!1816}
!1816 = distinct !{!1816, !1814, !"_ZSt19__relocate_object_aISt10shared_ptrIN4Luau9ModuleSCCEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!1817 = !{!1818}
!1818 = distinct !{!1818, !1819, !"_ZSt19__relocate_object_aIN4Luau12RequireCycleES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!1819 = distinct !{!1819, !"_ZSt19__relocate_object_aIN4Luau12RequireCycleES1_SaIS1_EEvPT_PT0_RT1_"}
!1820 = !{!1821}
!1821 = distinct !{!1821, !1819, !"_ZSt19__relocate_object_aIN4Luau12RequireCycleES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!1822 = !{!1818, !1821}
!1823 = distinct !{!1823, !19}
!1824 = !{!1825}
!1825 = distinct !{!1825, !1826, !"_ZSt19__relocate_object_aIN4Luau12RequireCycleES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!1826 = distinct !{!1826, !"_ZSt19__relocate_object_aIN4Luau12RequireCycleES1_SaIS1_EEvPT_PT0_RT1_"}
!1827 = !{!1828}
!1828 = distinct !{!1828, !1826, !"_ZSt19__relocate_object_aIN4Luau12RequireCycleES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!1829 = !{!1825, !1828}
!1830 = !{!1206, !1207, i64 0}
!1831 = !{!1206, !40, i64 8}
!1832 = distinct !{!1832, !19}
!1833 = !{!1203, !1204, i64 0}
!1834 = !{!1203, !40, i64 8}
!1835 = distinct !{!1835, !19}
!1836 = !{!1006, !29, i64 0}
!1837 = !{!1011, !1011, i64 0}
!1838 = !{!1839, !1839, i64 0}
!1839 = !{!"p1 _ZTSN4Luau7VariantIJNS_8VariadicENS_8NegationENS_11ConjunctionENS_11DisjunctionENS_11EquivalenceENS_11PropositionEEEE", !13, i64 0}
!1840 = !{!1010, !1011, i64 0}
!1841 = !{!1010, !1011, i64 8}
!1842 = !{!1006, !40, i64 32}
!1843 = !{!1844, !6, i64 0}
!1844 = !{!"_ZTSN4Luau7VariantIJNS_8VariadicENS_8NegationENS_11ConjunctionENS_11DisjunctionENS_11EquivalenceENS_11PropositionEEEE", !6, i64 0, !7, i64 8}
!1845 = distinct !{!1845, !19}
!1846 = !{!1010, !1011, i64 16}
!1847 = !{!1848}
!1848 = distinct !{!1848, !1849, !"_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv: argument 0"}
!1849 = distinct !{!1849, !"_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv"}
!1850 = !{!1084, !40, i64 8}
!1851 = distinct !{!1851, !19}
!1852 = distinct !{null, ptr @_ZNSt12__shared_ptrIN4Luau6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1853 = distinct !{!1853, !19}
!1854 = !{!1336, !175, i64 16}
!1855 = distinct !{!1855, !19}
!1856 = !{!1334, !175, i64 16}
!1857 = distinct !{!1857, !19}
!1858 = !{!1859, !1860, i64 0}
!1859 = !{!"_ZTSN4Luau6detail14DenseHashTableINS_22InstantiationSignatureESt4pairIS2_PKNS_4TypeEES3_IKS2_S6_ENS0_16ItemInterfaceMapIS2_S6_EENS_26HashInstantiationSignatureESt8equal_toIS2_EEE", !1860, i64 0, !40, i64 8, !40, i64 16, !1861, i64 24, !1862, i64 152, !1863, i64 153}
!1860 = !{!"p1 _ZTSSt4pairIN4Luau22InstantiationSignatureEPKNS0_4TypeEE", !13, i64 0}
!1861 = !{!"_ZTSN4Luau22InstantiationSignatureE", !197, i64 0, !991, i64 80, !1454, i64 104}
!1862 = !{!"_ZTSN4Luau26HashInstantiationSignatureE"}
!1863 = !{!"_ZTSSt8equal_toIN4Luau22InstantiationSignatureEE"}
!1864 = !{!1859, !40, i64 8}
!1865 = distinct !{!1865, !19}
!1866 = !{!1867, !1868, i64 0}
!1867 = !{!"_ZTSNSt12_Vector_baseIN4Luau21GenericBoundsMismatchESaIS1_EE17_Vector_impl_dataE", !1868, i64 0, !1868, i64 8, !1868, i64 16}
!1868 = !{!"p1 _ZTSN4Luau21GenericBoundsMismatchE", !13, i64 0}
!1869 = !{!1867, !1868, i64 8}
!1870 = distinct !{!1870, !19}
!1871 = !{!1867, !1868, i64 16}
!1872 = !{!1873, !1874, i64 0}
!1873 = !{!"_ZTSNSt12_Vector_baseIN4Luau7VariantIJNS0_17SubtypeConstraintENS0_21PackSubtypeConstraintENS0_24GeneralizationConstraintENS0_18IterableConstraintENS0_14NameConstraintENS0_28TypeAliasExpansionConstraintENS0_22FunctionCallConstraintENS0_23FunctionCheckConstraintENS0_34DEPRECATED_PrimitiveTypeConstraintENS0_17HasPropConstraintENS0_20HasIndexerConstraintENS0_20AssignPropConstraintENS0_21AssignIndexConstraintENS0_16UnpackConstraintENS0_16ReduceConstraintENS0_20ReducePackConstraintENS0_18EqualityConstraintENS0_18SimplifyConstraintENS0_26PushFunctionTypeConstraintENS0_18PushTypeConstraintENS0_27TypeInstantiationConstraintEEEESaISN_EE17_Vector_impl_dataE", !1874, i64 0, !1874, i64 8, !1874, i64 16}
!1874 = !{!"p1 _ZTSN4Luau7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEEE", !13, i64 0}
!1875 = !{!1873, !1874, i64 8}
!1876 = distinct !{!1876, !19}
!1877 = !{!1873, !1874, i64 16}
!1878 = !{!1879, !1880, i64 0}
!1879 = !{!"_ZTSN4Luau6detail14DenseHashTableINS_18SubtypingReasoningES2_S2_NS0_16ItemInterfaceSetIS2_EENS_22SubtypingReasoningHashESt8equal_toIS2_EEE", !1880, i64 0, !40, i64 8, !40, i64 16, !23, i64 24, !1881, i64 80, !1882, i64 81}
!1880 = !{!"p1 _ZTSN4Luau18SubtypingReasoningE", !13, i64 0}
!1881 = !{!"_ZTSN4Luau22SubtypingReasoningHashE"}
!1882 = !{!"_ZTSSt8equal_toIN4Luau18SubtypingReasoningEE"}
!1883 = !{!1879, !40, i64 8}
!1884 = distinct !{!1884, !19}
!1885 = !{!1886, !175, i64 16}
!1886 = !{!"_ZTSSt10_HashtableIPKN4Luau7TypeIdsESt4pairIKS3_St10unique_ptrIS1_St14default_deleteIS1_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE", !173, i64 0, !40, i64 8, !174, i64 16, !40, i64 24, !176, i64 32, !175, i64 48}
!1887 = !{!1888, !1888, i64 0}
!1888 = !{!"p1 _ZTSN4Luau7TypeIdsE", !13, i64 0}
!1889 = distinct !{!1889, !19}
!1890 = !{!1886, !173, i64 0}
!1891 = !{!1886, !40, i64 8}
!1892 = !{!1893, !175, i64 16}
!1893 = !{!"_ZTSSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_St10shared_ptrINS0_14NormalizedTypeEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE", !173, i64 0, !40, i64 8, !174, i64 16, !40, i64 24, !176, i64 32, !175, i64 48}
!1894 = distinct !{null, null, null, null, null, null, null}
!1895 = distinct !{!1895, !19}
!1896 = !{!1893, !173, i64 0}
!1897 = !{!1893, !40, i64 8}
!1898 = !{!1899, !29, i64 0}
!1899 = !{!"_ZTSZZN4Luau8Frontend16recordItemResultERKNS_14BuildQueueItemEENK3$_0clERKNS_20BuildQueueModuleInfoEEUlRNS_10SourceNodeEE_", !29, i64 0}
!1900 = !{!1901, !1901, i64 0}
!1901 = !{!"p1 _ZTSSt9type_info", !13, i64 0}
!1902 = !{!1903, !1904, i64 0}
!1903 = !{!"_ZTSNSt12_Vector_baseIN4Luau13ErrorSnapshotESaIS1_EE17_Vector_impl_dataE", !1904, i64 0, !1904, i64 8, !1904, i64 16}
!1904 = !{!"p1 _ZTSN4Luau13ErrorSnapshotE", !13, i64 0}
!1905 = !{!1903, !1904, i64 8}
!1906 = distinct !{!1906, !19}
!1907 = !{!1903, !1904, i64 16}
!1908 = !{!1909, !1910, i64 0}
!1909 = !{!"_ZTSNSt12_Vector_baseIN4Luau25AnnotationTypesAtLocationESaIS1_EE17_Vector_impl_dataE", !1910, i64 0, !1910, i64 8, !1910, i64 16}
!1910 = !{!"p1 _ZTSN4Luau25AnnotationTypesAtLocationE", !13, i64 0}
!1911 = !{!1909, !1910, i64 16}
!1912 = !{!1913, !1914, i64 0}
!1913 = !{!"_ZTSNSt12_Vector_baseIN4Luau19ExprTypesAtLocationESaIS1_EE17_Vector_impl_dataE", !1914, i64 0, !1914, i64 8, !1914, i64 16}
!1914 = !{!"p1 _ZTSN4Luau19ExprTypesAtLocationE", !13, i64 0}
!1915 = !{!1913, !1914, i64 16}
!1916 = !{!1917, !1918, i64 0}
!1917 = !{!"_ZTSN4Luau6detail14DenseHashTableIPKvSt4pairIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES4_IKS3_SA_ENS0_16ItemInterfaceMapIS3_SA_EENS_16DenseHashPointerESt8equal_toIS3_EEE", !1918, i64 0, !40, i64 8, !40, i64 16, !13, i64 24, !99, i64 32, !1168, i64 33}
!1918 = !{!"p1 _ZTSSt4pairIPKvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !13, i64 0}
!1919 = !{!1917, !40, i64 8}
!1920 = distinct !{!1920, !19}
!1921 = !{!1922, !1923, i64 0}
!1922 = !{!"_ZTSN4Luau6detail14DenseHashTableIPKNS_10ConstraintESt4pairIS4_NS_18ConstraintSnapshotEES5_IKS4_S6_ENS0_16ItemInterfaceMapIS4_S6_EENS_16DenseHashPointerESt8equal_toIS4_EEE", !1923, i64 0, !40, i64 8, !40, i64 16, !861, i64 24, !99, i64 32, !1924, i64 33}
!1923 = !{!"p1 _ZTSSt4pairIPKN4Luau10ConstraintENS0_18ConstraintSnapshotEE", !13, i64 0}
!1924 = !{!"_ZTSSt8equal_toIPKN4Luau10ConstraintEE"}
!1925 = !{!1922, !40, i64 8}
!1926 = !{!1927, !1928, i64 0}
!1927 = !{!"_ZTSNSt12_Vector_baseIN4Luau7VariantIJNS0_22ConstraintStepSnapshotENS0_22GeneralizeStepSnapshotEEEESaIS4_EE17_Vector_impl_dataE", !1928, i64 0, !1928, i64 8, !1928, i64 16}
!1928 = !{!"p1 _ZTSN4Luau7VariantIJNS_22ConstraintStepSnapshotENS_22GeneralizeStepSnapshotEEEE", !13, i64 0}
!1929 = !{!1927, !1928, i64 8}
!1930 = !{!1931, !6, i64 0}
!1931 = !{!"_ZTSN4Luau7VariantIJNS_22ConstraintStepSnapshotENS_22GeneralizeStepSnapshotEEEE", !6, i64 0, !7, i64 8}
!1932 = distinct !{!1932, !19}
!1933 = !{!1927, !1928, i64 16}
!1934 = !{!1935, !1936, i64 0}
!1935 = !{!"_ZTSNSt12_Vector_baseIN4Luau13ScopeSnapshotESaIS1_EE17_Vector_impl_dataE", !1936, i64 0, !1936, i64 8, !1936, i64 16}
!1936 = !{!"p1 _ZTSN4Luau13ScopeSnapshotE", !13, i64 0}
!1937 = !{!1935, !1936, i64 8}
!1938 = distinct !{null, null, null, null}
!1939 = distinct !{!1939, !19}
!1940 = !{!1935, !1936, i64 16}
!1941 = !{!1328, !175, i64 16}
!1942 = distinct !{!1942, !19}
!1943 = !{!1325, !175, i64 16}
!1944 = distinct !{!1944, !19}
!1945 = !{!1946, !1947, i64 0}
!1946 = !{!"_ZTSNSt12_Vector_baseIN4Luau15ConstraintBlockESaIS1_EE17_Vector_impl_dataE", !1947, i64 0, !1947, i64 8, !1947, i64 16}
!1947 = !{!"p1 _ZTSN4Luau15ConstraintBlockE", !13, i64 0}
!1948 = !{!1946, !1947, i64 8}
!1949 = !{!1950, !6, i64 0}
!1950 = !{!"_ZTSN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarENS_7NotNullIKNS_10ConstraintEEEEEE", !6, i64 0, !7, i64 8}
!1951 = distinct !{!1951, !19}
!1952 = !{!1946, !1947, i64 16}
!1953 = distinct !{!1953, !19}
!1954 = !{!1322, !175, i64 16}
!1955 = !{!1956, !1957, i64 0}
!1956 = !{!"_ZTSNSt12_Vector_baseIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarENS0_7NotNullIKNS0_10ConstraintEEEEEESaISC_EE17_Vector_impl_dataE", !1957, i64 0, !1957, i64 8, !1957, i64 16}
!1957 = !{!"p1 _ZTSN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarENS_7NotNullIKNS_10ConstraintEEEEEE", !13, i64 0}
!1958 = !{!1956, !1957, i64 8}
!1959 = distinct !{!1959, !19}
!1960 = !{!1956, !1957, i64 16}
!1961 = distinct !{!1961, !19}
!1962 = !{!1371, !1371, i64 0}
!1963 = !{!1964, !1964, i64 0}
!1964 = !{!"p1 _ZTSN4Luau7VariantIJNS_3CFG7DeclareENS1_6AssignENS1_4JoinENS1_6RefineENS1_4DeadEEEE", !13, i64 0}
!1965 = !{!1370, !1371, i64 0}
!1966 = !{!1370, !1371, i64 8}
!1967 = !{!1968, !6, i64 0}
!1968 = !{!"_ZTSN4Luau7VariantIJNS_3CFG7DeclareENS1_6AssignENS1_4JoinENS1_6RefineENS1_4DeadEEEE", !6, i64 0, !7, i64 8}
!1969 = distinct !{!1969, !19}
!1970 = !{!1370, !1371, i64 16}
!1971 = !{!1972, !1973, i64 0}
!1972 = !{!"_ZTSNSt12_Vector_baseIN4Luau7NotNullINS0_3CFG6SymDefEEESaIS4_EE17_Vector_impl_dataE", !1973, i64 0, !1973, i64 8, !1973, i64 16}
!1973 = !{!"p1 _ZTSN4Luau7NotNullINS_3CFG6SymDefEEE", !13, i64 0}
!1974 = !{!1972, !1973, i64 16}
!1975 = !{!1362, !1363, i64 8}
!1976 = !{!1977, !1978, i64 0}
!1977 = !{!"_ZTSN4Luau6detail14DenseHashTableINS_6SymbolESt4pairIS2_PNS_3CFG6SymDefEES3_IKS2_S6_ENS0_16ItemInterfaceMapIS2_S6_EESt4hashIS2_ESt8equal_toIS2_EEE", !1978, i64 0, !40, i64 8, !40, i64 16, !193, i64 24, !983, i64 40, !984, i64 41}
!1978 = !{!"p1 _ZTSSt4pairIN4Luau6SymbolEPNS0_3CFG6SymDefEE", !13, i64 0}
!1979 = !{!1980, !1981, i64 0}
!1980 = !{!"_ZTSNSt12_Vector_baseIN4Luau7NotNullINS0_3CFG5BlockEEESaIS4_EE17_Vector_impl_dataE", !1981, i64 0, !1981, i64 8, !1981, i64 16}
!1981 = !{!"p1 _ZTSN4Luau7NotNullINS_3CFG5BlockEEE", !13, i64 0}
!1982 = !{!1980, !1981, i64 16}
!1983 = !{!1984, !1985, i64 0}
!1984 = !{!"_ZTSNSt12_Vector_baseIN4Luau7NotNullINS0_7VariantIJNS0_3CFG7DeclareENS3_6AssignENS3_4JoinENS3_6RefineENS3_4DeadEEEEEESaISA_EE17_Vector_impl_dataE", !1985, i64 0, !1985, i64 8, !1985, i64 16}
!1985 = !{!"p1 _ZTSN4Luau7NotNullINS_7VariantIJNS_3CFG7DeclareENS2_6AssignENS2_4JoinENS2_6RefineENS2_4DeadEEEEEE", !13, i64 0}
!1986 = !{!1984, !1985, i64 16}
!1987 = distinct !{!1987, !19}
!1988 = !{!1355, !1355, i64 0}
!1989 = !{!1990, !1990, i64 0}
!1990 = !{!"p1 _ZTSN4Luau7VariantIJNS_3CFG13CFGRefinement11ConjunctionENS2_11DisjunctionENS2_8NegationENS2_11PropositionEEEE", !13, i64 0}
!1991 = !{!1354, !1355, i64 0}
!1992 = !{!1354, !1355, i64 8}
!1993 = !{!1994, !6, i64 0}
!1994 = !{!"_ZTSN4Luau7VariantIJNS_3CFG13CFGRefinement11ConjunctionENS2_11DisjunctionENS2_8NegationENS2_11PropositionEEEE", !6, i64 0, !7, i64 8}
!1995 = distinct !{!1995, !19}
!1996 = !{!1354, !1355, i64 16}
!1997 = !{!1998, !1999, i64 0}
!1998 = !{!"_ZTSN4Luau6detail14DenseHashTableIPNS_3CFG6SymDefESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EEE", !1999, i64 0, !40, i64 8, !40, i64 16, !1422, i64 24, !99, i64 32, !1423, i64 33}
!1999 = !{!"p1 _ZTSSt4pairIPN4Luau3CFG6SymDefES3_E", !13, i64 0}
!2000 = !{!2001, !2002, i64 0}
!2001 = !{!"_ZTSN4Luau6detail14DenseHashTableINS_7VariantIJNS_6SymbolEPNS_7AstExprEEEESt4pairIS6_PNS_3CFG6SymDefEES7_IKS6_SA_ENS0_16ItemInterfaceMapIS6_SA_EENS8_10LValueHashESt8equal_toIS6_EEE", !2002, i64 0, !40, i64 8, !40, i64 16, !2003, i64 24, !2004, i64 48, !2005, i64 49}
!2002 = !{!"p1 _ZTSSt4pairIN4Luau7VariantIJNS0_6SymbolEPNS0_7AstExprEEEEPNS0_3CFG6SymDefEE", !13, i64 0}
!2003 = !{!"_ZTSN4Luau7VariantIJNS_6SymbolEPNS_7AstExprEEEE", !6, i64 0, !7, i64 8}
!2004 = !{!"_ZTSN4Luau3CFG10LValueHashE"}
!2005 = !{!"_ZTSSt8equal_toIN4Luau7VariantIJNS0_6SymbolEPNS0_7AstExprEEEEE"}
!2006 = !{!2001, !40, i64 8}
!2007 = !{!2003, !6, i64 0}
!2008 = distinct !{!2008, !19}
!2009 = !{!2010, !2011, i64 0}
!2010 = !{!"_ZTSN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_PNS_3CFG6SymDefEES4_IKS3_S7_ENS0_16ItemInterfaceMapIS3_S7_EENS_16DenseHashPointerESt8equal_toIS3_EEE", !2011, i64 0, !40, i64 8, !40, i64 16, !375, i64 24, !99, i64 32, !1031, i64 33}
!2011 = !{!"p1 _ZTSSt4pairIPN4Luau7AstExprEPNS0_3CFG6SymDefEE", !13, i64 0}
!2012 = !{!1470, !6, i64 84}
!2013 = !{!1470, !6, i64 88}
!2014 = !{!2015, !2016, i64 0}
!2015 = !{!"_ZTSN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EEE", !2016, i64 0, !40, i64 8, !40, i64 16, !246, i64 24, !99, i64 32, !889, i64 33}
!2016 = !{!"p1 _ZTSSt4pairIPKN4Luau11TypePackVarES3_E", !13, i64 0}
!2017 = !{!2018, !878, i64 0}
!2018 = !{!"_ZTSN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EEE", !878, i64 0, !40, i64 8, !40, i64 16, !189, i64 24, !99, i64 32, !402, i64 33}
!2019 = !{!2020, !2021, i64 0}
!2020 = !{!"_ZTSNSt12_Vector_baseIN4Luau20TarjanWorklistVertexESaIS1_EE17_Vector_impl_dataE", !2021, i64 0, !2021, i64 8, !2021, i64 16}
!2021 = !{!"p1 _ZTSN4Luau20TarjanWorklistVertexE", !13, i64 0}
!2022 = !{!2020, !2021, i64 16}
!2023 = !{!2024, !2025, i64 0}
!2024 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !2025, i64 0, !2025, i64 8, !2025, i64 16}
!2025 = !{!"p1 int", !13, i64 0}
!2026 = !{!2024, !2025, i64 16}
!2027 = !{!2028, !2029, i64 0}
!2028 = !{!"_ZTSNSt12_Vector_baseIN4Luau10TarjanNodeESaIS1_EE17_Vector_impl_dataE", !2029, i64 0, !2029, i64 8, !2029, i64 16}
!2029 = !{!"p1 _ZTSN4Luau10TarjanNodeE", !13, i64 0}
!2030 = !{!2028, !2029, i64 16}
!2031 = !{!2032, !2033, i64 0}
!2032 = !{!"_ZTSN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_iES5_IKS4_iENS0_16ItemInterfaceMapIS4_iEENS_16DenseHashPointerESt8equal_toIS4_EEE", !2033, i64 0, !40, i64 8, !40, i64 16, !246, i64 24, !99, i64 32, !889, i64 33}
!2033 = !{!"p1 _ZTSSt4pairIPKN4Luau11TypePackVarEiE", !13, i64 0}
!2034 = !{!2035, !2036, i64 0}
!2035 = !{!"_ZTSN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_iES5_IKS4_iENS0_16ItemInterfaceMapIS4_iEENS_16DenseHashPointerESt8equal_toIS4_EEE", !2036, i64 0, !40, i64 8, !40, i64 16, !189, i64 24, !99, i64 32, !402, i64 33}
!2036 = !{!"p1 _ZTSSt4pairIPKN4Luau4TypeEiE", !13, i64 0}
!2037 = !{!193, !39, i64 8}
!2038 = !{!671, !40, i64 8}
!2039 = !{!671, !173, i64 0}
!2040 = distinct !{!2040, !19}
!2041 = !{!2042, !2043, i64 0}
!2042 = !{!"_ZTSNSt10_HashtableIN4Luau6SymbolESt4pairIKS1_NS0_7BindingEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeE", !2043, i64 0, !2044, i64 8}
!2043 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau6SymbolENS3_7BindingEELb0EEEEEE", !13, i64 0}
!2044 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKN4Luau6SymbolENS2_7BindingEELb0EEE", !13, i64 0}
!2045 = !{i64 0, i64 8, !820, i64 8, i64 8, !195}
!2046 = !{!2042, !2044, i64 8}
!2047 = !{!671, !40, i64 24}
!2048 = !{!671, !175, i64 16}
!2049 = !{!671, !175, i64 48}
!2050 = distinct !{!2050, !19}
!2051 = distinct !{!2051, !19}
!2052 = distinct !{!2052, !19}
!2053 = distinct !{!2053, !19}
!2054 = distinct !{!2054, !19}
!2055 = distinct !{!2055, !19}
!2056 = !{!2057}
!2057 = distinct !{!2057, !2058, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!2058 = distinct !{!2058, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!2059 = !{!2060}
!2060 = distinct !{!2060, !2058, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!2061 = !{!2057, !2060}
!2062 = !{!2063}
!2063 = distinct !{!2063, !2064, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!2064 = distinct !{!2064, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!2065 = !{!2066}
!2066 = distinct !{!2066, !2064, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!2067 = !{!2063, !2066}
!2068 = !{!2069, !519, i64 0}
!2069 = !{!"_ZTSZN4Luau8Frontend12parseModulesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_0", !519, i64 0}
!2070 = distinct !{null, null, null, null, null, null, null, null}
!2071 = distinct !{null, null, null, null, null, null, null, null}
!2072 = distinct !{!2072, !19}
!2073 = distinct !{!2073, !19}
!2074 = distinct !{!2074, !19}
!2075 = distinct !{!2075, !19}
!2076 = !{!2077, !519, i64 0}
!2077 = !{!"_ZTSZN4Luau8Frontend18checkQueuedModulesB5cxx11ESt8optionalINS_15FrontendOptionsEESt8functionIFvSt6vectorIS4_IFvvEESaIS7_EEEES4_IFbmmEEE3$_0", !519, i64 0}
!2078 = !{!728, !175, i64 48}
!2079 = distinct !{!2079, !19}
!2080 = distinct !{null}
!2081 = !{!2082}
!2082 = distinct !{!2082, !2083, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!2083 = distinct !{!2083, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!2084 = !{!2085}
!2085 = distinct !{!2085, !2083, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!2086 = !{!2082, !2085}
!2087 = !{!2088}
!2088 = distinct !{!2088, !2089, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!2089 = distinct !{!2089, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!2090 = !{!2091}
!2091 = distinct !{!2091, !2089, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!2092 = !{!2088, !2091}
!2093 = distinct !{!2093, !19}
!2094 = !{!2095, !2096, i64 0}
!2095 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau18RequireTraceResultEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !2096, i64 0, !2097, i64 8}
!2096 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau18RequireTraceResultEELb1EEEEEE", !13, i64 0}
!2097 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau18RequireTraceResultEELb1EEE", !13, i64 0}
!2098 = !{!2095, !2097, i64 8}
!2099 = !{!303, !40, i64 24}
!2100 = !{!303, !175, i64 48}
!2101 = distinct !{!2101, !19}
!2102 = distinct !{!2102, !19}
!2103 = !{!479, !479, i64 0}
!2104 = distinct !{!2104, !19}
!2105 = !{!2106, !29, i64 32}
!2106 = !{!"_ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE", !37, i64 0, !29, i64 32}
!2107 = distinct !{!2107, !19}
!2108 = distinct !{!2108, !19}
!2109 = !{!2110}
!2110 = distinct !{!2110, !2111, !"_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv: argument 0"}
!2111 = distinct !{!2111, !"_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv"}
!2112 = !{!307, !40, i64 8}
!2113 = distinct !{!2113, !19}
!2114 = distinct !{null, ptr @_ZNSt12__shared_ptrIN4Luau9ModuleSCCELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2115 = distinct !{!2115, !19}
!2116 = !{!2117}
!2117 = distinct !{!2117, !2118, !"_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv: argument 0"}
!2118 = distinct !{!2118, !"_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv"}
!2119 = !{!307, !40, i64 0}
!2120 = !{!2121}
!2121 = distinct !{!2121, !2122, !"_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv: argument 0"}
!2122 = distinct !{!2122, !"_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_9ModuleSCCEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv"}
!2123 = !{!306, !306, i64 0}
!2124 = !{!2125, !2126, i64 0}
!2125 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN4Luau10SourceNodeEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !2126, i64 0, !2127, i64 8}
!2126 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau10SourceNodeEEELb1EEEEEE", !13, i64 0}
!2127 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau10SourceNodeEEELb1EEE", !13, i64 0}
!2128 = !{!2125, !2127, i64 8}
!2129 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN4Luau10SourceNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2130 = !{!299, !175, i64 48}
!2131 = distinct !{!2131, !19}
!2132 = !{!2133, !2134, i64 0}
!2133 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN4Luau12SourceModuleEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !2134, i64 0, !2135, i64 8}
!2134 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau12SourceModuleEEELb1EEEEEE", !13, i64 0}
!2135 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau12SourceModuleEEELb1EEE", !13, i64 0}
!2136 = !{!2133, !2135, i64 8}
!2137 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN4Luau12SourceModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2138 = !{!301, !175, i64 48}
!2139 = distinct !{!2139, !19}
!2140 = !{!2141, !2142, i64 0}
!2141 = !{!"_ZTSNSt12_Vector_baseIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE17_Vector_impl_dataE", !2142, i64 0, !2142, i64 8, !2142, i64 16}
!2142 = !{!"p1 _ZTSN4Luau7NotNullIKNS_3DefEEE", !13, i64 0}
!2143 = !{!2141, !2142, i64 16}
!2144 = distinct !{!2144, !19}
!2145 = !{!703, !517, i64 0}
!2146 = !{!703, !40, i64 8}
!2147 = distinct !{!2147, !19}
!2148 = !{!701, !29, i64 24}
!2149 = !{!696, !29, i64 24}
!2150 = !{!684, !175, i64 16}
!2151 = distinct !{!2151, !19}
!2152 = !{!684, !173, i64 0}
!2153 = !{!684, !40, i64 8}
!2154 = !{!184, !175, i64 16}
!2155 = distinct !{!2155, !19}
!2156 = !{!688, !689, i64 0}
!2157 = !{!686, !175, i64 16}
!2158 = !{!2159, !6, i64 0}
!2159 = !{!"_ZTSN4Luau7VariantIJNS_6SymbolENS_5FieldEEEE", !6, i64 0, !7, i64 8}
!2160 = distinct !{!2160, !19}
!2161 = !{!686, !173, i64 0}
!2162 = !{!686, !40, i64 8}
!2163 = !{!678, !175, i64 16}
!2164 = distinct !{!2164, !19}
!2165 = !{!678, !173, i64 0}
!2166 = !{!678, !40, i64 8}
!2167 = !{!668, !669, i64 0}
!2168 = !{!668, !669, i64 16}
!2169 = distinct !{null, null, null, null}
!2170 = !{!682, !175, i64 16}
!2171 = distinct !{!2171, !19}
!2172 = !{!682, !173, i64 0}
!2173 = !{!682, !40, i64 8}
!2174 = !{!680, !175, i64 16}
!2175 = distinct !{!2175, !19}
!2176 = !{!680, !173, i64 0}
!2177 = !{!680, !40, i64 8}
!2178 = distinct !{!2178, !19}
!2179 = !{!2180}
!2180 = distinct !{!2180, !2181, !"_ZSt19__relocate_object_aISt4pairIN4Luau8LocationESt10shared_ptrINS1_5ScopeEEES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!2181 = distinct !{!2181, !"_ZSt19__relocate_object_aISt4pairIN4Luau8LocationESt10shared_ptrINS1_5ScopeEEES6_SaIS6_EEvPT_PT0_RT1_"}
!2182 = !{!2183}
!2183 = distinct !{!2183, !2181, !"_ZSt19__relocate_object_aISt4pairIN4Luau8LocationESt10shared_ptrINS1_5ScopeEEES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!2184 = !{!2180, !2183}
!2185 = distinct !{!2185, !19}
!2186 = !{!2187}
!2187 = distinct !{!2187, !2188, !"_ZSt19__relocate_object_aISt4pairIN4Luau8LocationESt10shared_ptrINS1_5ScopeEEES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!2188 = distinct !{!2188, !"_ZSt19__relocate_object_aISt4pairIN4Luau8LocationESt10shared_ptrINS1_5ScopeEEES6_SaIS6_EEvPT_PT0_RT1_"}
!2189 = !{!2190}
!2190 = distinct !{!2190, !2188, !"_ZSt19__relocate_object_aISt4pairIN4Luau8LocationESt10shared_ptrINS1_5ScopeEEES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!2191 = !{!2187, !2190}
!2192 = distinct !{!2192, !19}
!2193 = !{i64 0, i64 8, !127, i64 8, i64 8, !127, i64 16, i64 8, !127, i64 24, i64 8, !127, i64 32, i64 8, !127, i64 40, i64 8, !127, i64 48, i64 8, !127, i64 56, i64 8, !127, i64 64, i64 8, !127, i64 72, i64 8, !546, i64 80, i64 8, !546, i64 88, i64 8, !546, i64 96, i64 8, !546, i64 104, i64 8, !127}
!2194 = !{!1200, !421, i64 0}
!2195 = !{!2196}
!2196 = distinct !{!2196, !2197, !"_ZNK4Luau6detail15DenseHashTable2IPNS_9ModuleSCCESt4pairIS3_mES4_IKS3_mENS0_17ItemInterfaceMap2IS3_mEESt4hashIS3_ESt8equal_toIS3_EE6BitSet5beginEv: argument 0"}
!2197 = distinct !{!2197, !"_ZNK4Luau6detail15DenseHashTable2IPNS_9ModuleSCCESt4pairIS3_mES4_IKS3_mENS0_17ItemInterfaceMap2IS3_mEESt4hashIS3_ESt8equal_toIS3_EE6BitSet5beginEv"}
!2198 = !{!624, !40, i64 8}
!2199 = distinct !{!2199, !19}
!2200 = !{!623, !623, i64 0}
!2201 = !{!624, !40, i64 0}
!2202 = distinct !{!2202, !19}
!2203 = !{!2204}
!2204 = distinct !{!2204, !2205, !"_ZSt19__relocate_object_aIN4Luau14BuildQueueItemES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!2205 = distinct !{!2205, !"_ZSt19__relocate_object_aIN4Luau14BuildQueueItemES1_SaIS1_EEvPT_PT0_RT1_"}
!2206 = !{!2207}
!2207 = distinct !{!2207, !2205, !"_ZSt19__relocate_object_aIN4Luau14BuildQueueItemES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!2208 = !{!2204, !2207}
!2209 = distinct !{!2209, !19}
!2210 = !{!2211}
!2211 = distinct !{!2211, !2212, !"_ZSt19__relocate_object_aIN4Luau14BuildQueueItemES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!2212 = distinct !{!2212, !"_ZSt19__relocate_object_aIN4Luau14BuildQueueItemES1_SaIS1_EEvPT_PT0_RT1_"}
!2213 = !{!2214}
!2214 = distinct !{!2214, !2212, !"_ZSt19__relocate_object_aIN4Luau14BuildQueueItemES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!2215 = !{!2211, !2214}
!2216 = !{!2217, !2218, i64 0}
!2217 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4Luau14ConstraintListESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !2218, i64 0, !2218, i64 8, !2218, i64 16}
!2218 = !{!"p1 _ZTSSt10unique_ptrIN4Luau14ConstraintListESt14default_deleteIS1_EE", !13, i64 0}
!2219 = !{!2217, !2218, i64 8}
!2220 = !{!2221, !2221, i64 0}
!2221 = !{!"p1 _ZTSN4Luau14ConstraintListE", !13, i64 0}
!2222 = distinct !{!2222, !19}
!2223 = !{!2217, !2218, i64 16}
!2224 = !{!2225, !2226, i64 0}
!2225 = !{!"_ZTSN4Luau6detail14DenseHashTableINS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEEESt4pairISC_PNS_14ConstraintListEESD_IKSC_SF_ENS0_16ItemInterfaceMapISC_SF_EENS_23HashBlockedConstraintIdESt8equal_toISC_EEE", !2226, i64 0, !40, i64 8, !40, i64 16, !2227, i64 24, !2228, i64 40, !2229, i64 41}
!2226 = !{!"p1 _ZTSSt4pairIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEPKNS0_10ConstraintEEEEPNS0_14ConstraintListEE", !13, i64 0}
!2227 = !{!"_ZTSN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEEE", !6, i64 0, !7, i64 8}
!2228 = !{!"_ZTSN4Luau23HashBlockedConstraintIdE"}
!2229 = !{!"_ZTSSt8equal_toIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEPKNS0_10ConstraintEEEEE"}
!2230 = !{!2225, !40, i64 8}
!2231 = !{!2227, !6, i64 0}
!2232 = distinct !{!2232, !19}
!2233 = !{!2234, !2235, i64 0}
!2234 = !{!"_ZTSNSt12_Vector_baseIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEPKNS0_10ConstraintEEEESaISB_EE17_Vector_impl_dataE", !2235, i64 0, !2235, i64 8, !2235, i64 16}
!2235 = !{!"p1 _ZTSN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEEE", !13, i64 0}
!2236 = !{!2234, !2235, i64 8}
!2237 = distinct !{!2237, !19}
!2238 = !{!2234, !2235, i64 16}
!2239 = !{!2240, !2241, i64 0}
!2240 = !{!"_ZTSN4Luau6detail14DenseHashTableINS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEEESt4pairISC_bESD_IKSC_bENS0_16ItemInterfaceMapISC_bEENS_23HashBlockedConstraintIdESt8equal_toISC_EEE", !2241, i64 0, !40, i64 8, !40, i64 16, !2227, i64 24, !2228, i64 40, !2229, i64 41}
!2241 = !{!"p1 _ZTSSt4pairIN4Luau7VariantIJPKNS0_4TypeEPKNS0_11TypePackVarEPKNS0_10ConstraintEEEEbE", !13, i64 0}
!2242 = !{!2240, !40, i64 8}
!2243 = distinct !{!2243, !19}
!2244 = !{!2245, !251, i64 0}
!2245 = !{!"_ZTSZN4Luau8Frontend22checkSCCBuildQueueItemERNS_14BuildQueueItemEE3$_0", !251, i64 0}
!2246 = !{!296, !13, i64 24}
!2247 = distinct !{null, null, null, null}
!2248 = distinct !{!2248, !19}
!2249 = distinct !{null, null, null, null, null, null, null}
!2250 = distinct !{!2250, !19}
!2251 = distinct !{null, null, null, null, null, null, null}
!2252 = distinct !{!2252, !19}
!2253 = distinct !{!2253, !19}
!2254 = !{!1084, !40, i64 0}
!2255 = !{!2256}
!2256 = distinct !{!2256, !2257, !"_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv: argument 0"}
!2257 = distinct !{!2257, !"_ZNK4Luau6detail15DenseHashTable2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10shared_ptrINS_6ModuleEEES8_IKS7_SB_ENS0_17ItemInterfaceMap2IS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE6BitSet5beginEv"}
!2258 = !{!1083, !1083, i64 0}
!2259 = !{!2260}
!2260 = distinct !{!2260, !2261, !"_ZSt19__relocate_object_aIN4Luau9TypeErrorES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!2261 = distinct !{!2261, !"_ZSt19__relocate_object_aIN4Luau9TypeErrorES1_SaIS1_EEvPT_PT0_RT1_"}
!2262 = !{!2263}
!2263 = distinct !{!2263, !2261, !"_ZSt19__relocate_object_aIN4Luau9TypeErrorES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!2264 = !{!2260, !2263}
!2265 = distinct !{null, null, null, null, null, null}
!2266 = distinct !{!2266, !19}
!2267 = !{!2268}
!2268 = distinct !{!2268, !2269, !"_ZSt19__relocate_object_aIN4Luau9TypeErrorES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!2269 = distinct !{!2269, !"_ZSt19__relocate_object_aIN4Luau9TypeErrorES1_SaIS1_EEvPT_PT0_RT1_"}
!2270 = !{!2271}
!2271 = distinct !{!2271, !2269, !"_ZSt19__relocate_object_aIN4Luau9TypeErrorES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!2272 = !{!2268, !2271}
!2273 = !{!2274}
!2274 = distinct !{!2274, !2275, !"_ZSt19__relocate_object_aIN4Luau9TypeErrorES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!2275 = distinct !{!2275, !"_ZSt19__relocate_object_aIN4Luau9TypeErrorES1_SaIS1_EEvPT_PT0_RT1_"}
!2276 = !{!2277}
!2277 = distinct !{!2277, !2275, !"_ZSt19__relocate_object_aIN4Luau9TypeErrorES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!2278 = !{!2274, !2277}
!2279 = !{!2280}
!2280 = distinct !{!2280, !2281, !"_ZSt19__relocate_object_aIN4Luau9TypeErrorES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!2281 = distinct !{!2281, !"_ZSt19__relocate_object_aIN4Luau9TypeErrorES1_SaIS1_EEvPT_PT0_RT1_"}
!2282 = !{!2283}
!2283 = distinct !{!2283, !2281, !"_ZSt19__relocate_object_aIN4Luau9TypeErrorES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!2284 = !{!2280, !2283}
!2285 = !{!2286}
!2286 = distinct !{!2286, !2287, !"_ZSt19__relocate_object_aIN4Luau9TypeErrorES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!2287 = distinct !{!2287, !"_ZSt19__relocate_object_aIN4Luau9TypeErrorES1_SaIS1_EEvPT_PT0_RT1_"}
!2288 = !{!2289}
!2289 = distinct !{!2289, !2287, !"_ZSt19__relocate_object_aIN4Luau9TypeErrorES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!2290 = !{!2286, !2289}
!2291 = !{!2292}
!2292 = distinct !{!2292, !2293, !"_ZSt19__relocate_object_aIN4Luau9TypeErrorES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!2293 = distinct !{!2293, !"_ZSt19__relocate_object_aIN4Luau9TypeErrorES1_SaIS1_EEvPT_PT0_RT1_"}
!2294 = !{!2295}
!2295 = distinct !{!2295, !2293, !"_ZSt19__relocate_object_aIN4Luau9TypeErrorES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!2296 = !{!2292, !2295}
!2297 = !{!400, !40, i64 16}
!2298 = distinct !{!2298, !19}
!2299 = distinct !{!2299, !500}
!2300 = !{!2301}
!2301 = distinct !{!2301, !2302, !"_ZSt19__relocate_object_aIN4Luau9TypeErrorES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!2302 = distinct !{!2302, !"_ZSt19__relocate_object_aIN4Luau9TypeErrorES1_SaIS1_EEvPT_PT0_RT1_"}
!2303 = !{!2304}
!2304 = distinct !{!2304, !2302, !"_ZSt19__relocate_object_aIN4Luau9TypeErrorES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!2305 = !{!2301, !2304}
!2306 = !{!2307}
!2307 = distinct !{!2307, !2308, !"_ZSt19__relocate_object_aIN4Luau9TypeErrorES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!2308 = distinct !{!2308, !"_ZSt19__relocate_object_aIN4Luau9TypeErrorES1_SaIS1_EEvPT_PT0_RT1_"}
!2309 = !{!2310}
!2310 = distinct !{!2310, !2308, !"_ZSt19__relocate_object_aIN4Luau9TypeErrorES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!2311 = !{!2307, !2310}
!2312 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2313 = distinct !{null, null, ptr @"_ZZN4Luau8Frontend18sendQueueItemTasksESt10shared_ptrINS_19BuildQueueWorkStateEERKSt6vectorImSaImEEEN3$_0D2Ev", ptr @_ZNSt12__shared_ptrIN4Luau19BuildQueueWorkStateELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2314 = !{!2315, !1292, i64 0}
!2315 = !{!"_ZTSZN4Luau8Frontend9markDirtyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS6_SaIS6_EEE3$_0", !1292, i64 0}
!2316 = !{!2317, !2317, i64 0}
!2317 = !{!"p1 _ZTSN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_bES8_IKS7_bENS0_16ItemInterfaceMapIS7_bEESt4hashIS7_ESt8equal_toIS7_EEE", !13, i64 0}
!2318 = !{!2319, !40, i64 8}
!2319 = !{!"_ZTSN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_bES8_IKS7_bENS0_16ItemInterfaceMapIS7_bEESt4hashIS7_ESt8equal_toIS7_EE14const_iteratorE", !2317, i64 0, !40, i64 8}
!2320 = distinct !{!2320, !19}
!2321 = distinct !{!2321, !19}
!2322 = !{!2319, !2317, i64 0}
!2323 = distinct !{!2323, !19}
!2324 = distinct !{!2324, !19}
!2325 = !{i64 0, i64 8, !2316, i64 8, i64 8, !127, i64 16, i64 8, !2316, i64 24, i64 8, !127}
!2326 = distinct !{!2326, !19}
!2327 = distinct !{!2327, !19}
!2328 = distinct !{!2328, !19}
!2329 = !{!1408, !40, i64 16}
!2330 = !{!1408, !40, i64 8}
!2331 = distinct !{!2331, !19}
!2332 = distinct !{!2332, !19, !2333, !2334}
!2333 = !{!"llvm.loop.isvectorized", i32 1}
!2334 = !{!"llvm.loop.unroll.runtime.disable"}
!2335 = distinct !{!2335, !19, !2334, !2333}
!2336 = !{!70, !70, i64 0}
!2337 = distinct !{!2337, !19}
!2338 = !{!2339, !251, i64 0}
!2339 = !{!"_ZTSZN4Luau8Frontend5checkERKNS_12SourceModuleENS_4ModeESt6vectorINS_12RequireCycleESaIS6_EESt8optionalISt10shared_ptrINS_5ScopeEEEbbRNS0_5StatsENS_15TypeCheckLimitsEE3$_0", !251, i64 0, !29, i64 8}
!2340 = distinct !{null, null, null, null}
!2341 = !{i64 0, i64 8, !316, i64 8, i64 1, !317}
!2342 = !{!2343, !251, i64 0}
!2343 = !{!"_ZTSZN4Luau8Frontend5checkERKNS_12SourceModuleENS_4ModeESt6vectorINS_12RequireCycleESaIS6_EESt8optionalISt10shared_ptrINS_5ScopeEEEbbRNS0_5StatsENS_15TypeCheckLimitsEE3$_1", !251, i64 0, !29, i64 8}
!2344 = !{!2343, !29, i64 8}
!2345 = distinct !{null, null, null, null}
!2346 = distinct !{!2346, !19}
!2347 = distinct !{!2347, !19}
!2348 = distinct !{!2348, !19}
!2349 = distinct !{!2349, !19}
!2350 = distinct !{!2350, !19}
!2351 = distinct !{!2351, !19}
!2352 = distinct !{null, null, null}
!2353 = distinct !{!2353, !19}
!2354 = distinct !{!2354, !19}
!2355 = distinct !{!2355, !19}
!2356 = distinct !{!2356, !19}
!2357 = distinct !{null, null, null}
!2358 = distinct !{!2358, !19}
!2359 = distinct !{!2359, !19}
!2360 = !{!255, !40, i64 24}
!2361 = distinct !{!2361, !19}
!2362 = distinct !{!2362, !19}
!2363 = !{!2364, !2365, i64 0}
!2364 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN4Luau6ModuleEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !2365, i64 0, !2366, i64 8}
!2365 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau6ModuleEEELb1EEEEEE", !13, i64 0}
!2366 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau6ModuleEEELb1EEE", !13, i64 0}
!2367 = !{!2364, !2366, i64 8}
!2368 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN4Luau6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2369 = !{!255, !175, i64 48}
!2370 = distinct !{!2370, !19}
!2371 = distinct !{!2371, !19}
!2372 = !{!228, !40, i64 24}
!2373 = distinct !{!2373, !19}
!2374 = distinct !{!2374, !19}
!2375 = !{!2376, !2377, i64 0}
!2376 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN4Luau5ScopeEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !2377, i64 0, !2378, i64 8}
!2377 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau5ScopeEEELb1EEEEEE", !13, i64 0}
!2378 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau5ScopeEEELb1EEE", !13, i64 0}
!2379 = !{!2376, !2378, i64 8}
!2380 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2381 = !{!228, !175, i64 48}
!2382 = distinct !{!2382, !19}
!2383 = !{!230, !40, i64 24}
!2384 = distinct !{!2384, !19}
!2385 = distinct !{!2385, !19}
!2386 = !{!2387, !2388, i64 0}
!2387 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFvRN4Luau8FrontendERNS9_11GlobalTypesESt10shared_ptrINS9_5ScopeEEEEESaISJ_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSL_18_Mod_range_hashingENSL_20_Default_ranged_hashENSL_20_Prime_rehash_policyENSL_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !2388, i64 0, !2389, i64 8}
!2388 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvRN4Luau8FrontendERNSB_11GlobalTypesESt10shared_ptrINSB_5ScopeEEEEELb1EEEEEE", !13, i64 0}
!2389 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvRN4Luau8FrontendERNSA_11GlobalTypesESt10shared_ptrINSA_5ScopeEEEEELb1EEE", !13, i64 0}
!2390 = !{!2387, !2389, i64 8}
!2391 = !{!230, !175, i64 48}
!2392 = distinct !{!2392, !19}
!2393 = !{!2394}
!2394 = distinct !{!2394, !2395, !"_ZSt19__relocate_object_aIN4Luau11LintWarningES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!2395 = distinct !{!2395, !"_ZSt19__relocate_object_aIN4Luau11LintWarningES1_SaIS1_EEvPT_PT0_RT1_"}
!2396 = !{!2397}
!2397 = distinct !{!2397, !2395, !"_ZSt19__relocate_object_aIN4Luau11LintWarningES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!2398 = !{!2394, !2397}
!2399 = distinct !{!2399, !19}
!2400 = !{!2401}
!2401 = distinct !{!2401, !2402, !"_ZSt19__relocate_object_aIN4Luau11LintWarningES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!2402 = distinct !{!2402, !"_ZSt19__relocate_object_aIN4Luau11LintWarningES1_SaIS1_EEvPT_PT0_RT1_"}
!2403 = !{!2404}
!2404 = distinct !{!2404, !2402, !"_ZSt19__relocate_object_aIN4Luau11LintWarningES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!2405 = !{!2401, !2404}
!2406 = !{!892, !29, i64 4}
!2407 = !{!892, !39, i64 8}
!2408 = !{!893, !893, i64 0}
!2409 = !{!892, !893, i64 16}
!2410 = !{!892, !6, i64 24}
!2411 = !{!356, !29, i64 1}
!2412 = !{!356, !39, i64 8}
!2413 = !{!357, !357, i64 0}
!2414 = !{!356, !357, i64 16}
!2415 = !{!356, !6, i64 24}
!2416 = distinct !{!2416, !19}
!2417 = distinct !{!2417, !19}
end_hunk_3
