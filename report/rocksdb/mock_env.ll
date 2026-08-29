Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/mock_env?download=true
inline.NumInlined: 2389
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN7rocksdb14MockFileSystem13CorruptBufferERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  store i64 %i.i, ptr %i.a, align 8, !tbaa !32, !alias.scope !473
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  store i8 0, ptr %i.j, align 1, !tbaa !34
  br label %_ZN7rocksdb14MockFileSystem17NormalizeMockPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN7rocksdb14MockFileSystem17NormalizeMockPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  invoke void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit unwind label %bb.d

_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit:    ; preds = %_ZN7rocksdb14MockFileSystem17NormalizeMockPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !87   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.m, null
  %.pre = load ptr, ptr %3, align 8               ; 3 uses
  %.pre16 = load i64, ptr %i.a, align 8, !tbaa !32 ; 5 uses
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb7MemFileESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.m, %_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.n, %_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !32   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.pre16, i64 %i.p) ; 2 uses
  %i.q = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.q, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29
  %i.t = call i32 @memcmp(ptr noundef %i.s, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.u = sub i64 %i.p, %.pre16
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.u, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.v = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.v, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.v, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !150 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7rocksdb7MemFileEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !151

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7rocksdb7MemFileEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.w = icmp eq ptr %.19.i.i.i, %i.n
  br i1 %i.w, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb7MemFileESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7rocksdb7MemFileEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !32   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.y, i64 %.pre16) ; 2 uses
  %i.z = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.z, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !29
  %i.ac = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.ab, i64 noundef %.sroa.speculated.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb7MemFileESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.ad = sub i64 %.pre16, %i.y
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ad, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb7MemFileESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb7MemFileESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ac, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ae = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.ae, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb7MemFileESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %bb.g

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb7MemFileESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7rocksdb7MemFileEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb7MemFileESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store ptr %.pre, ptr %4, align 8, !tbaa !476
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.pre16, ptr %i.af, align 8, !tbaa !478
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store ptr @.str.13, ptr %5, align 8, !tbaa !476
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 14, ptr %i.ag, align 8, !tbaa !478
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 5, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status7IOErrorERKNS_5SliceES3_.exit unwind label %bb.f

_ZN7rocksdb6Status7IOErrorERKNS_5SliceES3_.exit:  ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb7MemFileESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.i

bb.d:                                             ; preds = %_ZN7rocksdb14MockFileSystem17NormalizeMockPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb9MutexLockD2Ev.exit7

bb.e:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb7MemFileESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.k

bb.g:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7rocksdb7MemFileESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !108
  invoke void @_ZN7rocksdb7MemFile13CorruptBufferEv(ptr noundef nonnull align 8 dereferenceable(152) %i.al)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.am, align 8, !tbaa !180, !alias.scope !479
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !479
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN7rocksdb6Status7IOErrorERKNS_5SliceES3_.exit
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #29
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %bb.i
  %i.ap = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7rocksdb9MutexLockD2Ev.exit
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !34
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7rocksdb9MutexLockD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void

bb.k:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.f ], [ %i.ai, %bb.e ]
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit7 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #29
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit7:                  ; preds = %bb.k, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.d ], [ %.pn, %bb.k ]
  %i.aw = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZN7rocksdb9MutexLockD2Ev.exit7
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !34
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZN7rocksdb9MutexLockD2Ev.exit7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb7MemFile13CorruptBufferEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.d = load atomic i64, ptr %i.c seq_cst, align 8
  %.not = icmp ult i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %_ZN7rocksdb9MutexLockD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.c seq_cst, align 8
  %i.f = load atomic i64, ptr %i.a seq_cst, align 8
  %i.g = sub i64 %i.e, %i.f
  %i.h = load atomic i64, ptr %i.a seq_cst, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.j = trunc i64 %i.g to i32
  %i.k = load i32, ptr %i.i, align 8, !tbaa !274
  %i.l = zext i32 %i.k to i64
  %i.m = mul nuw nsw i64 %i.l, 16807              ; 2 uses
  %i.n = lshr i64 %i.m, 31
  %i.o = and i64 %i.m, 2147483647
  %i.p = add nuw nsw i64 %i.n, %i.o
  %i.q = trunc nuw i64 %i.p to i32                ; 3 uses
  %i.r = icmp slt i32 %i.q, 0
  %i.s = add i32 %i.q, -2147483647
  %spec.select.i.i = select i1 %i.r, i32 %i.s, i32 %i.q ; 2 uses
  store i32 %spec.select.i.i, ptr %i.i, align 8, !tbaa !274
  %i.t = urem i32 %spec.select.i.i, %i.j
  %i.u = zext i32 %i.t to i64
  %i.v = add i64 %i.h, %i.u                       ; 3 uses
  %i.w = add i64 %i.v, 512
  %i.x = load atomic i64, ptr %i.c seq_cst, align 8
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.w) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.y)
  %i.z = icmp ult i64 %i.v, %.sroa.speculated
  br i1 %i.z, label %.lr.ph.a, label %._crit_edge

.lr.ph.a:                                         ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.b
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.y)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #29
  unreachable

bb.d:                                             ; preds = %.lr.ph.a, %bb.d
  %.015 = phi i64 [ %i.v, %.lr.ph.a ], [ %i.ap, %bb.d ] ; 2 uses
  %i.ad = load i32, ptr %i.i, align 8, !tbaa !274
  %i.ae = zext i32 %i.ad to i64
  %i.af = mul nuw nsw i64 %i.ae, 16807            ; 2 uses
  %i.ag = lshr i64 %i.af, 31
  %i.ah = and i64 %i.af, 2147483647
  %i.ai = add nuw nsw i64 %i.ag, %i.ah
  %i.aj = trunc nuw i64 %i.ai to i32              ; 3 uses
  %i.ak = icmp slt i32 %i.aj, 0
  %i.al = add i32 %i.aj, -2147483647
  %spec.select.i.i9.a = select i1 %i.ak, i32 %i.al, i32 %i.aj ; 2 uses
  store i32 %spec.select.i.i9.a, ptr %i.i, align 8, !tbaa !274
  %i.am = trunc i32 %spec.select.i.i9.a to i8
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.015
  store i8 %i.am, ptr %i.ao, align 1, !tbaa !34
  %i.ap = add nuw i64 %.015, 1                    ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %.sroa.speculated
  br i1 %i.aq, label %bb.d, label %._crit_edge, !llvm.loop !482

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb7MockEnvC2EPNS_3EnvERKSt10shared_ptrINS_10FileSystemEERKS3_INS_11SystemClockEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN7rocksdb19CompositeEnvWrapperC2EPNS_3EnvERKSt10shared_ptrINS_10FileSystemEERKS3_INS_11SystemClockEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  store ptr getelementptr inbounds nuw inrange(-16, 688) (i8, ptr @_ZTVN7rocksdb7MockEnvE, i64 16), ptr %0, align 8, !tbaa !48
  ret void
}

declare void @_ZN7rocksdb19CompositeEnvWrapperC2EPNS_3EnvERKSt10shared_ptrINS_10FileSystemEERKS3_INS_11SystemClockEE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN7rocksdb7MockEnv6CreateEPNS_3EnvE(ptr noundef nonnull %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.110", align 8 ; 6 uses
  %2 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK7rocksdb3Env14GetSystemClockEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #31, !noalias !486 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store i32 1, ptr %i.c, align 8, !tbaa !103, !noalias !483
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.d, align 4, !tbaa !105, !noalias !483
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb19EmulatedSystemClockESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !48, !noalias !483
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  invoke void @_ZN7rocksdb19EmulatedSystemClockC1ERKSt10shared_ptrINS_11SystemClockEEb(ptr noundef nonnull align 8 dereferenceable(74) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i1 noundef zeroext true)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb19EmulatedSystemClockESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !483

common.resume:                                    ; preds = %bb.r, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb19EmulatedSystemClockESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.f, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb19EmulatedSystemClockESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %i.at, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb19EmulatedSystemClockESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #32, !noalias !483
  br label %common.resume

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.g, align 8, !tbaa !91, !alias.scope !483
  store ptr %i.e, ptr %1, align 8, !tbaa !489, !alias.scope !483
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %i.e, ptr %2, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !91
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.c, align 8, !tbaa !92
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.c, align 8, !tbaa !92
  br label %_ZNSt10shared_ptrIN7rocksdb11SystemClockEEC2INS0_19EmulatedSystemClockEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.c, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7rocksdb11SystemClockEEC2INS0_19EmulatedSystemClockEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN7rocksdb11SystemClockEEC2INS0_19EmulatedSystemClockEvEERKS_IT_E.exit: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef ptr @_ZN7rocksdb7MockEnv6CreateEPNS_3EnvERKSt10shared_ptrINS_11SystemClockEE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN7rocksdb11SystemClockEEC2INS0_19EmulatedSystemClockEvEERKS_IT_E.exit
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !91   ; 8 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7rocksdb11SystemClockELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.o, align 8, !tbaa !103
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !105
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #33, !inline_history !107
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #33, !inline_history !107
  br label %_ZNSt12__shared_ptrIN7rocksdb11SystemClockELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i3 = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !92
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.r, %bb.i ], [ %i.ab, %bb.j ]
  %i.ac = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ac, label %bb.k, label %_ZNSt12__shared_ptrIN7rocksdb11SystemClockELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !33

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #33
  br label %_ZNSt12__shared_ptrIN7rocksdb11SystemClockELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb11SystemClockELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !91  ; 8 uses
  %.not.i.i4 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i4, label %_ZNSt12__shared_ptrIN7rocksdb19EmulatedSystemClockELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN7rocksdb11SystemClockELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ae, align 8, !tbaa !103
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !105
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !48
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #33, !inline_history !491
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #33, !inline_history !491
  br label %_ZNSt12__shared_ptrIN7rocksdb19EmulatedSystemClockELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i5 = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i5, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !92
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

bb.p:                                             ; preds = %bb.n
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i7 = phi i32 [ %i.ah, %bb.o ], [ %i.ar, %bb.p ]
  %i.as = icmp eq i32 %.0.i.i.i.i7, 1
  br i1 %i.as, label %bb.q, label %_ZNSt12__shared_ptrIN7rocksdb19EmulatedSystemClockELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !33

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #33
  br label %_ZNSt12__shared_ptrIN7rocksdb19EmulatedSystemClockELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb19EmulatedSystemClockELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7rocksdb11SystemClockELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret ptr %i.m

bb.r:                                             ; preds = %_ZNSt10shared_ptrIN7rocksdb11SystemClockEEC2INS0_19EmulatedSystemClockEvEERKS_IT_E.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7rocksdb11SystemClockELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @_ZNSt12__shared_ptrIN7rocksdb19EmulatedSystemClockELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN7rocksdb7MockEnv6CreateEPNS_3EnvERKSt10shared_ptrINS_11SystemClockEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.113", align 8 ; 6 uses
  %3 = alloca %"class.std::shared_ptr.41", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  %i.a = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #31, !noalias !495 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store i32 1, ptr %i.b, align 8, !tbaa !103, !noalias !492
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !105, !noalias !492
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb14MockFileSystemESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !48, !noalias !492
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_ZN7rocksdb14MockFileSystemC1ERKSt10shared_ptrINS_11SystemClockEEb(ptr noundef nonnull align 8 dereferenceable(145) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true)
          to label %_ZSt11make_sharedIN7rocksdb14MockFileSystemEJRKSt10shared_ptrINS0_11SystemClockEEEES2_IT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb14MockFileSystemESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, !noalias !492
end_hunk_0
