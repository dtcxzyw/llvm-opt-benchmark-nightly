inline.NumInlined: 357
inline.NumDeleted: 149
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@"_ZZN7rocksdb10trie_index9Bitvector12InitFromDataEPKcmPmENK3$_0clEPPKjmS3_":bb.a

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %bb.aa, %bb.b
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load <4 x i8>, ptr %1, align 8, !tbaa !17
  store <4 x i8> %i.a, ptr %0, align 8, !tbaa !17
  store <4 x i8> zeroinitializer, ptr %1, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !35, !range !37, !noundef !38
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.c, ptr %i.d, align 4, !tbaa !39
  store i8 0, ptr %i.b, align 4, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.f, ptr %i.g, align 1, !tbaa !49
  store i8 0, ptr %i.e, align 1, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !32
  store ptr null, ptr %i.h, align 8, !tbaa !32
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !32
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #19
  br label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i, %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb6StatusC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load <4 x i8>, ptr %1, align 8, !tbaa !17
  store <4 x i8> %i.b, ptr %0, align 8, !tbaa !17
  store <4 x i8> zeroinitializer, ptr %1, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !35, !range !37, !noundef !38
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.d, ptr %i.e, align 4, !tbaa !39
  store i8 0, ptr %i.c, align 4, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.g, ptr %i.h, align 1, !tbaa !49
  store i8 0, ptr %i.f, align 1, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32
  store ptr null, ptr %i.i, align 8, !tbaa !32
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !32
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #19
  br label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.a, %bb.b, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb10trie_index9Bitvector9BuildFromERKNS0_16BitvectorBuilderE(ptr noundef nonnull align 8 dereferenceable(112) initializes((32, 40), (48, 64)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !75   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 %i.b, ptr %i.c, align 8, !tbaa !81
  %i.d = add i64 %i.b, 63
  %i.e = lshr i64 %i.d, 6                         ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !18
  %i.g = lshr i64 %i.b, 8
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i64 %i.h, ptr %i.i, align 8, !tbaa !23
  %i.j = shl nuw nsw i64 %i.e, 3                  ; 3 uses
  %i.k = shl nuw nsw i64 %i.h, 2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 10 uses
  %i.m = add nuw nsw i64 %i.j, %i.k               ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11   ; 6 uses
  %i.p = icmp ult i64 %i.o, %i.m
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.a
  %i.q = sub nuw nsw i64 %i.m, %i.o               ; 3 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !16   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.u = icmp samesign ult i64 %i.o, 16
  tail call void @llvm.assume(i1 %i.u)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.v = load i64, ptr %i.s, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.w = phi i64 [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.m, %i.w
  br i1 %.not.i.i.i, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.o, i64 noundef 0, ptr noundef null, i64 noundef %i.q)
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.x = phi ptr [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ], [ %.pre.i, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.q, 1
  br i1 %cond.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i
  store i8 0, ptr %i.y, align 1, !tbaa !17
  br label %.sink.split.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.y, i8 0, i64 %i.q, i1 false)
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.a
  %i.z = icmp ult i64 %i.m, %i.o
  br i1 %i.z, label %.sink.split.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit

.sink.split.i:                                    ; preds = %bb.e, %bb.d, %bb.c
  store i64 %i.m, ptr %i.n, align 8, !tbaa !11
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.m
  store i8 0, ptr %i.ab, align 1, !tbaa !17
  %.pre = load i64, ptr %i.f, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit: ; preds = %bb.e, %.sink.split.i
  %i.ac = phi i64 [ %i.e, %bb.e ], [ %.pre, %.sink.split.i ]
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.ae = load ptr, ptr %1, align 8, !tbaa !82
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr align 8 %i.ae, i64 %i.j, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !16  ; 8 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.j ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !24
  %i.ai = load i64, ptr %i.i, align 8, !tbaa !23  ; 3 uses
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %_ZN7rocksdb10trie_index9Bitvector12BuildRankLUTEv.exit.thread, label %.lr.ph22.i

_ZN7rocksdb10trie_index9Bitvector12BuildRankLUTEv.exit.thread: ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.aj, align 8, !tbaa !83
  br label %bb.i

.lr.ph22.i:                                       ; preds = %bb.g
  %i.ak = load i64, ptr %i.f, align 8, !tbaa !9   ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %.lr.ph22.i
  %indvars.iv.i = phi i64 [ 4, %.lr.ph22.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %.01420.i = phi i64 [ 0, %.lr.ph22.i ], [ %i.br, %._crit_edge.i ] ; 4 uses
  %.01519.i = phi i64 [ 0, %.lr.ph22.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 5 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 %indvars.iv.i) ; 2 uses
  %i.al = shl i64 %.01420.i, 2
  %i.am = sub i64 %umin, %i.al                    ; 6 uses
  %umin.i = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 %indvars.iv.i)
  %i.an = trunc i64 %.01519.i to i32
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.01420.i
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !53
  %i.ap = shl nuw i64 %.01420.i, 2                ; 7 uses
  %2 = add i64 %i.ap, 4
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 %2)
  %3 = icmp ult i64 %i.ap, %.sroa.speculated.i
  br i1 %3, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp ult i64 %i.am, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check65 = icmp ult i64 %i.am, 16
  br i1 %min.iters.check65, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aq = and i64 %i.am, 12
  %n.vec = and i64 %i.am, -16                     ; 4 uses
  %i.ar = add i64 %i.ap, %n.vec
  %i.as = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %.01519.i, i64 0
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ %i.as, %vector.ph ], [ %i.bc, %vector.body ]
  %vec.phi66 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.bd, %vector.body ]
  %vec.phi67 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.be, %vector.body ]
  %vec.phi68 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %wide.load = load <4 x i64>, ptr %i.au, align 8, !tbaa !9
  %wide.load69 = load <4 x i64>, ptr %i.av, align 8, !tbaa !9
  %wide.load70 = load <4 x i64>, ptr %i.aw, align 8, !tbaa !9
  %wide.load71 = load <4 x i64>, ptr %i.ax, align 8, !tbaa !9
  %i.ay = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load)
  %i.az = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load69)
  %i.ba = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load70)
  %i.bb = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load71)
  %i.bc = add <4 x i64> %i.ay, %vec.phi           ; 2 uses
  %i.bd = add <4 x i64> %i.az, %vec.phi66         ; 2 uses
  %i.be = add <4 x i64> %i.ba, %vec.phi67         ; 2 uses
  %i.bf = add <4 x i64> %i.bb, %vec.phi68         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.bd, %i.bc
  %bin.rdx72 = add <4 x i64> %i.be, %bin.rdx
  %bin.rdx73 = add <4 x i64> %i.bf, %bin.rdx72
  %i.bh = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx73) ; 3 uses
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.bh, %vec.epilog.iter.check ], [ %.01519.i, %vector.main.loop.iter.check ]
  %i.bi = and i64 %umin, 3                        ; 2 uses
  %n.vec74 = sub i64 %i.am, %i.bi                 ; 2 uses
  %i.bj = add i64 %i.ap, %n.vec74
  %i.bk = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ap
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index75 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next78, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi76 = phi <4 x i64> [ %i.bk, %vec.epilog.ph ], [ %i.bo, %vec.epilog.vector.body ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %index75
  %wide.load77 = load <4 x i64>, ptr %i.bm, align 8, !tbaa !9
  %i.bn = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load77)
  %i.bo = add <4 x i64> %i.bn, %vec.phi76         ; 2 uses
  %index.next78 = add nuw i64 %index75, 4         ; 2 uses
  %i.bp = icmp eq i64 %index.next78, %n.vec74
  br i1 %i.bp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !88

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bq = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.bo) ; 2 uses
  %cmp.n79 = icmp eq i64 %i.bi, 0
  br i1 %cmp.n79, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.018.i.ph = phi i64 [ %i.ap, %iter.check ], [ %i.ar, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ]
  %.117.i.ph = phi i64 [ %.01519.i, %iter.check ], [ %i.bh, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.h
  %.1.lcssa.i = phi i64 [ %.01519.i, %bb.h ], [ %i.bq, %vec.epilog.middle.block ], [ %i.bh, %middle.block ], [ %i.bv, %.lr.ph.i ] ; 5 uses
  %i.br = add nuw i64 %.01420.i, 1                ; 2 uses
  %indvars.iv.next.i = add i64 %indvars.iv.i, 4
  %exitcond25.not.i = icmp eq i64 %i.br, %i.ai
  br i1 %exitcond25.not.i, label %_ZN7rocksdb10trie_index9Bitvector12BuildRankLUTEv.exit, label %bb.h, !llvm.loop !89

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi i64 [ %i.bw, %.lr.ph.i ], [ %.018.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.117.i = phi i64 [ %i.bv, %.lr.ph.i ], [ %.117.i.ph, %.lr.ph.i.preheader ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.018.i
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !9
  %i.bu = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bt)
  %i.bv = add i64 %i.bu, %.117.i                  ; 2 uses
  %i.bw = add nuw i64 %.018.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bw, %umin.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !90

_ZN7rocksdb10trie_index9Bitvector12BuildRankLUTEv.exit: ; preds = %._crit_edge.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.1.lcssa.i, ptr %i.bx, align 8, !tbaa !83
  %.not12 = icmp eq i64 %.1.lcssa.i, 0
  %i.by = add i64 %.1.lcssa.i, -1
  %i.bz = lshr i64 %i.by, 8
  %i.ca = add nuw nsw i64 %i.bz, 1
  %spec.select = select i1 %.not12, i64 0, i64 %i.ca
  br label %bb.i

bb.i:                                             ; preds = %_ZN7rocksdb10trie_index9Bitvector12BuildRankLUTEv.exit, %_ZN7rocksdb10trie_index9Bitvector12BuildRankLUTEv.exit.thread
  %.015.lcssa.i30 = phi i64 [ %.1.lcssa.i, %_ZN7rocksdb10trie_index9Bitvector12BuildRankLUTEv.exit ], [ 0, %_ZN7rocksdb10trie_index9Bitvector12BuildRankLUTEv.exit.thread ] ; 2 uses
  %i.cb = phi i64 [ %spec.select, %_ZN7rocksdb10trie_index9Bitvector12BuildRankLUTEv.exit ], [ 0, %_ZN7rocksdb10trie_index9Bitvector12BuildRankLUTEv.exit.thread ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !25
  %i.cd = load i64, ptr %i.c, align 8, !tbaa !81  ; 2 uses
  %.not13 = icmp eq i64 %i.cd, %.015.lcssa.i30
  %i.ce = xor i64 %.015.lcssa.i30, -1
  %i.cf = add i64 %i.cd, %i.ce
  %i.cg = lshr i64 %i.cf, 8
  %i.ch = add nuw nsw i64 %i.cg, 1
  %i.ci = select i1 %.not13, i64 0, i64 %i.ch     ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !27
  %i.ck = add nuw nsw i64 %i.ci, %i.cb
  %i.cl = shl nuw nsw i64 %i.ck, 2
  %i.cm = add nuw nsw i64 %i.cl, %i.m             ; 6 uses
  %i.cn = load i64, ptr %i.n, align 8, !tbaa !11  ; 6 uses
  %i.co = icmp ult i64 %i.cn, %i.cm
  br i1 %i.co, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i15, label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i15: ; preds = %bb.i
  %i.cp = sub nuw nsw i64 %i.cm, %i.cn            ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cr = icmp eq ptr %i.af, %i.cq
  br i1 %i.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i15
  %i.cs = icmp ult i64 %i.cn, 16
  tail call void @llvm.assume(i1 %i.cs)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i15
  %i.ct = load i64, ptr %i.cq, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i22
  %i.cu = phi i64 [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i22 ]
  %.not.i.i.i18 = icmp ugt i64 %i.cm, %i.cu
  br i1 %.not.i.i.i18, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i19

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.cn, i64 noundef 0, ptr noundef null, i64 noundef %i.cp)
  %.pre.i21 = load ptr, ptr %i.l, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i19: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17
  %i.cv = phi ptr [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17 ], [ %.pre.i21, %bb.j ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cn ; 2 uses
  %cond.i.i.i20 = icmp eq i64 %i.cp, 1
  br i1 %cond.i.i.i20, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i19
  store i8 0, ptr %i.cw, align 1, !tbaa !17
  br label %.sink.split.i14

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i19
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cw, i8 0, i64 %i.cp, i1 false)
  br label %.sink.split.i14

bb.m:                                             ; preds = %bb.i
  %i.cx = icmp ult i64 %i.cm, %i.cn
  br i1 %i.cx, label %.sink.split.i14, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit23

.sink.split.i14:                                  ; preds = %bb.m, %bb.l, %bb.k
  store i64 %i.cm, ptr %i.n, align 8, !tbaa !11
  %i.cy = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cm
  store i8 0, ptr %i.cz, align 1, !tbaa !17
  %.pre33 = load ptr, ptr %i.l, align 8, !tbaa !16
  %.pre34 = load i64, ptr %i.i, align 8, !tbaa !23
  %.pre35 = load i64, ptr %i.cc, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit23: ; preds = %bb.m, %.sink.split.i14
  %i.da = phi i64 [ %i.cb, %bb.m ], [ %.pre35, %.sink.split.i14 ] ; 6 uses
  %i.db = phi i64 [ %i.ai, %bb.m ], [ %.pre34, %.sink.split.i14 ] ; 7 uses
  %i.dc = phi ptr [ %i.af, %bb.m ], [ %.pre33, %.sink.split.i14 ] ; 2 uses
  %i.dd = load i64, ptr %i.f, align 8, !tbaa !18
  %i.de = shl i64 %i.dd, 3
  %i.df = shl i64 %i.db, 2
  %i.dg = shl i64 %i.da, 2
  store ptr %i.dc, ptr %0, align 8, !tbaa !22
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.de ; 8 uses
  store ptr %i.dh, ptr %i.ah, align 8, !tbaa !24
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !26
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dg ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !28
  %.not.i24 = icmp eq i64 %i.da, 0
  br i1 %.not.i24, label %.loopexit32.i, label %.preheader32.preheader

.preheader32.preheader:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit23
  %xtraiter = and i64 %i.da, 1
  %i.dm = icmp eq i64 %i.da, 1
  br i1 %i.dm, label %.preheader32.epil.preheader, label %.preheader32.preheader.new

.preheader32.preheader.new:                       ; preds = %.preheader32.preheader
  %unroll_iter = and i64 %i.da, -2
  br label %.preheader32

.preheader32:                                     ; preds = %.critedge.i.1, %.preheader32.preheader.new
  %.02434.i = phi i64 [ 0, %.preheader32.preheader.new ], [ %i.eg, %.critedge.i.1 ] ; 4 uses
  %.02533.i = phi i64 [ 0, %.preheader32.preheader.new ], [ %.126.lcssa.i.1, %.critedge.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader32.preheader.new ], [ %niter.next.1, %.critedge.i.1 ]
  %i.dn = shl i64 %.02434.i, 8
  %i.do = add i64 %.02533.i, 1
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.db, i64 %i.do)
  %i.dp = add i64 %umax.i, -1                     ; 4 uses
  %exitcond.not.i2555 = icmp eq i64 %.02533.i, %i.dp
  br i1 %exitcond.not.i2555, label %.critedge.i, label %.lr.ph

bb.n:                                             ; preds = %.lr.ph
  %exitcond.not.i25 = icmp eq i64 %i.dq, %i.dp
  br i1 %exitcond.not.i25, label %.critedge.i, label %.lr.ph, !llvm.loop !91

.lr.ph:                                           ; preds = %.preheader32, %bb.n
  %.126.i56 = phi i64 [ %i.dq, %bb.n ], [ %.02533.i, %.preheader32 ] ; 2 uses
  %i.dq = add i64 %.126.i56, 1                    ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !53
  %i.dt = zext i32 %i.ds to i64
  %.not31.i = icmp ult i64 %i.dn, %i.dt
  br i1 %.not31.i, label %..critedge.i_crit_edge, label %bb.n, !llvm.loop !91

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !91

.critedge.i:                                      ; preds = %bb.n, %..critedge.i_crit_edge, %.preheader32
  %.126.lcssa.i = phi i64 [ %i.dp, %.preheader32 ], [ %.126.i56, %..critedge.i_crit_edge ], [ %i.dp, %bb.n ] ; 4 uses
  %i.du = trunc i64 %.126.lcssa.i to i32
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.02434.i
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !53
  %i.dw = or disjoint i64 %.02434.i, 1            ; 2 uses
  %i.dx = shl i64 %i.dw, 8
  %i.dy = add i64 %.126.lcssa.i, 1
  %umax.i.1 = tail call i64 @llvm.umax.i64(i64 %i.db, i64 %i.dy)
  %i.dz = add i64 %umax.i.1, -1                   ; 4 uses
  %exitcond.not.i2555.1 = icmp eq i64 %.126.lcssa.i, %i.dz
  br i1 %exitcond.not.i2555.1, label %.critedge.i.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.critedge.i, %bb.o
  %.126.i56.1 = phi i64 [ %i.ea, %bb.o ], [ %.126.lcssa.i, %.critedge.i ] ; 2 uses
  %i.ea = add i64 %.126.i56.1, 1                  ; 3 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !53
  %i.ed = zext i32 %i.ec to i64
  %.not31.i.1 = icmp ult i64 %i.dx, %i.ed
  br i1 %.not31.i.1, label %..critedge.i_crit_edge.1, label %bb.o, !llvm.loop !91

bb.o:                                             ; preds = %.lr.ph.1
  %exitcond.not.i25.1 = icmp eq i64 %i.ea, %i.dz
  br i1 %exitcond.not.i25.1, label %.critedge.i.1, label %.lr.ph.1, !llvm.loop !91

..critedge.i_crit_edge.1:                         ; preds = %.lr.ph.1
  br label %.critedge.i.1, !llvm.loop !91

.critedge.i.1:                                    ; preds = %bb.o, %..critedge.i_crit_edge.1, %.critedge.i
  %.126.lcssa.i.1 = phi i64 [ %i.dz, %.critedge.i ], [ %.126.i56.1, %..critedge.i_crit_edge.1 ], [ %i.dz, %bb.o ] ; 3 uses
  %i.ee = trunc i64 %.126.lcssa.i.1 to i32
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dw
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !53
  %i.eg = add nuw i64 %.02434.i, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit32.i.loopexit.unr-lcssa, label %.preheader32, !llvm.loop !92

.loopexit32.i.loopexit.unr-lcssa:                 ; preds = %.critedge.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit32.i, label %.preheader32.epil.preheader

.preheader32.epil.preheader:                      ; preds = %.loopexit32.i.loopexit.unr-lcssa, %.preheader32.preheader
  %.02434.i.epil.init = phi i64 [ 0, %.preheader32.preheader ], [ %i.eg, %.loopexit32.i.loopexit.unr-lcssa ] ; 2 uses
  %.02533.i.epil.init = phi i64 [ 0, %.preheader32.preheader ], [ %.126.lcssa.i.1, %.loopexit32.i.loopexit.unr-lcssa ] ; 3 uses
end_hunk_0
