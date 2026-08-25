Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/bv_bounds_simplifier?download=true
inline.NumInlined: 816
inline.NumDeleted: 391
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZplRK8rationalS1_:bb.a
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3

bb.g:                                             ; preds = %_ZN8rationalpLERKS_.exit
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3 unwind label %bb.k

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3:  ; preds = %bb.g, %bb.f
  %i.am = load i8, ptr %i.f, align 4
  %i.an = and i8 %i.am, 1
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3
  %i.ap = load i32, ptr %i.e, align 8, !tbaa !124
  store i32 %i.ap, ptr %i.ac, align 8, !tbaa !124
  %i.aq = load i8, ptr %i.ad, align 4
  %i.ar = and i8 %i.aq, -2
  store i8 %i.ar, ptr %i.ad, align 4
  br label %_ZN8rationalC2ERKS_.exit5

bb.i:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZN8rationalC2ERKS_.exit5 unwind label %bb.k

_ZN8rationalC2ERKS_.exit5:                        ; preds = %bb.h, %bb.i
  %i.as = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !120 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.as, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %_ZN8rationalC2ERKS_.exit5
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %.noexc.i, %_ZN8rationalC2ERKS_.exit5
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #22
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.k:                                             ; preds = %bb.i, %bb.g, %_ZN8rationalC2ERKS_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.av
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !124    ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %1, align 8, !tbaa !124
  store i32 %i.g, ptr %3, align 8, !tbaa !124
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4
  %i.j = and i8 %i.i, -2
  store i8 %i.j, ptr %i.h, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load i8, ptr %i.m, align 4
  %i.o = and i8 %i.n, 1
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i
  %i.q = load i32, ptr %i.l, align 8, !tbaa !124
  store i32 %i.q, ptr %i.k, align 8, !tbaa !124
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.s = load i8, ptr %i.r, align 4
  %i.t = and i8 %i.s, -2
  store i8 %i.t, ptr %i.r, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpqRKS1_.exit

bb.f:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.l)
  br label %_ZN11mpq_managerILb1EE3setER3mpqRKS1_.exit

bb.g:                                             ; preds = %bb.a
  %i.u = load i32, ptr %1, align 8, !tbaa !124
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.x = load i8, ptr %i.w, align 4
  %i.y = and i8 %i.x, 1
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.a, ptr %3, align 8, !tbaa !124
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = and i8 %i.ab, -2
  store i8 %i.ac, ptr %i.aa, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i16

bb.j:                                             ; preds = %bb.h
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i16

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i16:   ; preds = %bb.j, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ag = load i8, ptr %i.af, align 4
  %i.ah = and i8 %i.ag, 1
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i16
  %i.aj = load i32, ptr %i.ae, align 8, !tbaa !124
  store i32 %i.aj, ptr %i.ad, align 8, !tbaa !124
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 4
  %i.am = and i8 %i.al, -2
  store i8 %i.am, ptr %i.ak, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpqRKS1_.exit

bb.l:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i16
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ae)
  br label %_ZN11mpq_managerILb1EE3setER3mpqRKS1_.exit

bb.m:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = and i8 %i.ap, 1
  %i.ar = icmp eq i8 %i.aq, 0
  %i.as = load i32, ptr %i.an, align 8
  %i.at = icmp eq i32 %i.as, 1
  %i.au = select i1 %i.ar, i1 %i.at, i1 false
  br i1 %i.au, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ax = load i8, ptr %i.aw, align 4
  %i.ay = and i8 %i.ax, 1
  %i.az = icmp eq i8 %i.ay, 0
  %i.ba = load i32, ptr %i.av, align 8
  %i.bb = icmp eq i32 %i.ba, 1
  %i.bc = select i1 %i.az, i1 %i.bb, i1 false
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN11mpz_managerILb1EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  tail call void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bd)
  store i32 1, ptr %i.bd, align 8, !tbaa !124
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 4
  %i.bg = and i8 %i.bf, -2
  store i8 %i.bg, ptr %i.be, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpqRKS1_.exit

bb.p:                                             ; preds = %bb.n, %bb.m
  tail call void @_ZN11mpq_managerILb1EE7rat_addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %_ZN11mpq_managerILb1EE3setER3mpqRKS1_.exit

_ZN11mpq_managerILb1EE3setER3mpqRKS1_.exit:       ; preds = %bb.l, %bb.k, %bb.f, %bb.e, %bb.p, %bb.o
  ret void
}

declare void @_ZN11mpz_managerILb1EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN11mpq_managerILb1EE7rat_addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2bv12interval_tplImNS_14iinterval_baseEE9intersectERKS2_RS2_(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(21) %1, ptr noundef nonnull align 8 dereferenceable(21) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.pre = load i64, ptr %0, align 8, !tbaa !148
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.e, %bb.a
  %i.a = phi i64 [ %.pre, %bb.a ], [ %i.k, %bb.e ] ; 9 uses
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr61, %bb.e ] ; 15 uses
  %.tr61 = phi ptr [ %1, %bb.a ], [ %.tr, %bb.e ] ; 13 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_ZNK2bv12interval_tplImNS_14iinterval_baseEE7is_fullEv.exit, label %_ZNK2bv12interval_tplImNS_14iinterval_baseEE7is_fullEv.exit.thread

_ZNK2bv12interval_tplImNS_14iinterval_baseEE7is_fullEv.exit: ; preds = %tailrecurse
  %i.c = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !149
  %i.e = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !147
  %i.g = sub i32 64, %i.f
  %i.h = zext nneg i32 %i.g to i64
  %i.i = lshr i64 -1, %i.h
  %i.j = icmp eq i64 %i.d, %i.i
  br i1 %i.j, label %bb.c, label %_ZNK2bv12interval_tplImNS_14iinterval_baseEE7is_fullEv.exit.thread

_ZNK2bv12interval_tplImNS_14iinterval_baseEE7is_fullEv.exit.thread: ; preds = %tailrecurse, %_ZNK2bv12interval_tplImNS_14iinterval_baseEE7is_fullEv.exit
  %i.k = load i64, ptr %.tr61, align 8, !tbaa !148 ; 10 uses
  %i.l = icmp eq i64 %i.a, %i.k
  br i1 %i.l, label %bb.b, label %_ZNK2bv12interval_tplImNS_14iinterval_baseEEeqERKS2_.exit.thread

bb.b:                                             ; preds = %_ZNK2bv12interval_tplImNS_14iinterval_baseEE7is_fullEv.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !149
  %i.o = getelementptr inbounds nuw i8, ptr %.tr61, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !149
  %i.q = icmp eq i64 %i.n, %i.p
  br i1 %i.q, label %_ZNK2bv12interval_tplImNS_14iinterval_baseEEeqERKS2_.exit, label %_ZNK2bv12interval_tplImNS_14iinterval_baseEEeqERKS2_.exit.thread

_ZNK2bv12interval_tplImNS_14iinterval_baseEEeqERKS2_.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.tr, i64 20
  %i.s = load i8, ptr %i.r, align 4, !tbaa !117, !range !146, !noundef !84
  %i.t = getelementptr inbounds nuw i8, ptr %.tr61, i64 20
  %i.u = load i8, ptr %i.t, align 4, !tbaa !117, !range !146, !noundef !84
  %i.v = icmp eq i8 %i.s, %i.u
  br i1 %i.v, label %bb.c, label %_ZNK2bv12interval_tplImNS_14iinterval_baseEEeqERKS2_.exit.thread

bb.c:                                             ; preds = %_ZNK2bv12interval_tplImNS_14iinterval_baseEEeqERKS2_.exit, %_ZNK2bv12interval_tplImNS_14iinterval_baseEE7is_fullEv.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %2, ptr noundef nonnull align 8 dereferenceable(21) %.tr61, i64 21, i1 false)
  br label %bb.v

_ZNK2bv12interval_tplImNS_14iinterval_baseEEeqERKS2_.exit.thread: ; preds = %_ZNK2bv12interval_tplImNS_14iinterval_baseEE7is_fullEv.exit.thread, %bb.b, %_ZNK2bv12interval_tplImNS_14iinterval_baseEEeqERKS2_.exit
  %i.w = icmp eq i64 %i.k, 0
  br i1 %i.w, label %_ZNK2bv12interval_tplImNS_14iinterval_baseEE7is_fullEv.exit40, label %_ZNK2bv12interval_tplImNS_14iinterval_baseEE7is_fullEv.exit40.thread

_ZNK2bv12interval_tplImNS_14iinterval_baseEE7is_fullEv.exit40: ; preds = %_ZNK2bv12interval_tplImNS_14iinterval_baseEEeqERKS2_.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %.tr61, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !149
  %i.z = getelementptr inbounds nuw i8, ptr %.tr61, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !147
  %i.ab = sub i32 64, %i.aa
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = lshr i64 -1, %i.ac
  %i.ae = icmp eq i64 %i.y, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZNK2bv12interval_tplImNS_14iinterval_baseEE7is_fullEv.exit40.thread

bb.d:                                             ; preds = %_ZNK2bv12interval_tplImNS_14iinterval_baseEE7is_fullEv.exit40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %2, ptr noundef nonnull align 8 dereferenceable(21) %.tr, i64 21, i1 false)
  br label %bb.v

_ZNK2bv12interval_tplImNS_14iinterval_baseEE7is_fullEv.exit40.thread: ; preds = %_ZNK2bv12interval_tplImNS_14iinterval_baseEEeqERKS2_.exit.thread, %_ZNK2bv12interval_tplImNS_14iinterval_baseEE7is_fullEv.exit40
  %i.af = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !149 ; 8 uses
  %i.ah = icmp ugt i64 %i.a, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr61, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !149 ; 7 uses
  %i.ak = icmp ugt i64 %i.k, %i.aj                ; 2 uses
  br i1 %i.ah, label %bb.e, label %bb.k

bb.e:                                             ; preds = %_ZNK2bv12interval_tplImNS_14iinterval_baseEE7is_fullEv.exit40.thread
  br i1 %i.ak, label %bb.f, label %tailrecurse

bb.f:                                             ; preds = %bb.e
  %.not38 = icmp ult i64 %i.ag, %i.k
  br i1 %.not38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %2, ptr noundef nonnull align 8 dereferenceable(21) %.tr61, i64 21, i1 false)
  br label %bb.v

bb.h:                                             ; preds = %bb.f
  %.not39 = icmp ult i64 %i.aj, %i.a
  br i1 %.not39, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %2, ptr noundef nonnull align 8 dereferenceable(21) %.tr, i64 21, i1 false)
  br label %bb.v

bb.j:                                             ; preds = %bb.h
  %i.al = icmp ult i64 %i.a, %i.k
  %..i41.v = select i1 %i.al, ptr %.tr61, ptr %.tr
  %i.am = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !147
  %i.ao = load i64, ptr %..i41.v, align 8, !tbaa !197
  %3 = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ag)
  store i64 %i.ao, ptr %2, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %3, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.an, ptr %.sroa.557.0..sroa_idx, align 8
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i8 0, ptr %.sroa.658.0..sroa_idx, align 4
  br label %bb.v

bb.k:                                             ; preds = %_ZNK2bv12interval_tplImNS_14iinterval_baseEE7is_fullEv.exit40.thread
  br i1 %i.ak, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp ult i64 %i.ag, %i.k
  %i.aq = icmp ugt i64 %i.a, %i.aj                ; 2 uses
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br i1 %i.aq, label %bb.v, label %bb.q

bb.n:                                             ; preds = %bb.l
  br i1 %i.aq, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %2, ptr noundef nonnull align 8 dereferenceable(21) %.tr61, i64 21, i1 false)
  br label %bb.v

bb.p:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !147
  store i64 %i.k, ptr %2, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ag, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.as, ptr %.sroa.552.0..sroa_idx, align 8
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i8 0, ptr %.sroa.653.0..sroa_idx, align 4
  br label %bb.v

bb.q:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !147
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ag)
  store i64 %i.a, ptr %2, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.av, ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.au, ptr %.sroa.547.0..sroa_idx, align 8
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i8 0, ptr %.sroa.648.0..sroa_idx, align 4
  br label %bb.v

bb.r:                                             ; preds = %bb.k
  %i.aw = icmp ugt i64 %i.a, %i.aj
  %i.ax = icmp ult i64 %i.ag, %i.k
  %or.cond = or i1 %i.ax, %i.aw
  br i1 %or.cond, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = icmp ult i64 %i.a, %i.k
  %..i43 = select i1 %i.ay, ptr %.tr61, ptr %.tr
  %i.az = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !147
  %i.bb = getelementptr inbounds nuw i8, ptr %.tr, i64 20
  %i.bc = load i8, ptr %i.bb, align 4, !tbaa !117, !range !146, !noundef !84
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %.tr61, i64 20
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !117, !range !146, !noundef !84
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bg = phi i8 [ 0, %bb.s ], [ %i.bf, %bb.t ]
  %i.bh = load i64, ptr %..i43, align 8, !tbaa !197
  %4 = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ag)
  store i64 %i.bh, ptr %2, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %4, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.ba, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i8 %i.bg, ptr %.sroa.6.0..sroa_idx, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.g, %bb.j, %bb.i, %bb.o, %bb.q, %bb.p, %bb.u, %bb.r, %bb.m, %bb.d, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.r ], [ true, %bb.j ], [ false, %bb.m ], [ true, %bb.g ], [ true, %bb.u ], [ true, %bb.p ], [ true, %bb.q ], [ true, %bb.o ], [ true, %bb.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2bv12interval_tplI8rationalNS_14rinterval_baseEE9intersectERKS3_RS3_(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(69) %1, ptr noundef nonnull align 8 dereferenceable(69) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.bv::interval_tpl.60", align 8 ; 5 uses
  %4 = alloca %"struct.bv::interval_tpl.60", align 8 ; 5 uses
  %5 = alloca %"struct.bv::interval_tpl.60", align 8 ; 5 uses
  %6 = alloca %"struct.bv::interval_tpl.60", align 8 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2bv12interval_tplI8rationalNS_14rinterval_baseEE7is_fullEv(ptr noundef nonnull align 8 dereferenceable(69) %0)
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr5263 = phi ptr [ %.tr62, %tailrecurse ], [ %1, %bb.a ] ; 52 uses
  %.tr62 = phi ptr [ %.tr5263, %tailrecurse ], [ %0, %bb.a ] ; 39 uses
  %i.b = tail call noundef zeroext i1 @_ZNK2bv12interval_tplI8rationalNS_14rinterval_baseEEeqERKS3_(ptr noundef nonnull align 8 dereferenceable(69) %.tr62, ptr noundef nonnull align 8 dereferenceable(69) %.tr5263)
  br i1 %i.b, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %tailrecurse, %.lr.ph, %bb.a
  %.tr52.lcssa = phi ptr [ %1, %bb.a ], [ %.tr5263, %.lr.ph ], [ %.tr62, %tailrecurse ]
  %i.c = tail call noundef nonnull align 8 dereferenceable(69) ptr @_ZN2bv12interval_tplI8rationalNS_14rinterval_baseEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(69) %2, ptr noundef nonnull align 8 dereferenceable(69) %.tr52.lcssa) ; 0 uses
  br label %bb.at

bb.b:                                             ; preds = %.lr.ph
  %i.d = tail call noundef zeroext i1 @_ZNK2bv12interval_tplI8rationalNS_14rinterval_baseEE7is_fullEv(ptr noundef nonnull align 8 dereferenceable(69) %.tr5263)
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef nonnull align 8 dereferenceable(69) ptr @_ZN2bv12interval_tplI8rationalNS_14rinterval_baseEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(69) %2, ptr noundef nonnull align 8 dereferenceable(69) %.tr62) ; 0 uses
  br label %bb.at

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.tr62, i64 32 ; 18 uses
  %i.g = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !120 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.tr62, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %.tr62, i64 52
  %i.j = load i8, ptr %i.i, align 4
  %i.k = and i8 %i.j, 1
  %i.l = icmp eq i8 %i.k, 0
  %i.m = load i32, ptr %i.h, align 8
  %i.n = icmp eq i32 %i.m, 1
  %i.o = select i1 %i.l, i1 %i.n, i1 false
  br i1 %i.o, label %bb.e, label %.split

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.tr62, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.tr62, i64 20
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, 1
  %i.t = icmp eq i8 %i.s, 0
  %i.u = load i32, ptr %i.p, align 8
  %i.v = icmp eq i32 %i.u, 1
  %i.w = select i1 %i.t, i1 %i.v, i1 false
  br i1 %i.w, label %bb.f, label %.split

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.tr62, i64 36
  %i.y = load i8, ptr %i.x, align 4
  %i.z = and i8 %i.y, 1
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.g, label %.split43

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr62, i64 4
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = and i8 %i.ac, 1
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %_ZNK2bv12interval_tplI8rationalNS_14rinterval_baseEE10is_wrappedEv.exit, label %.split43

.split43:                                         ; preds = %bb.g, %bb.f
  %i.af = tail call noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(69) %.tr62)
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.h, label %bb.t

.split:                                           ; preds = %bb.e, %bb.d
  %i.ah = tail call noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(69) %.tr62)
  br i1 %i.ah, label %bb.h, label %bb.t

_ZNK2bv12interval_tplI8rationalNS_14rinterval_baseEE10is_wrappedEv.exit: ; preds = %bb.g
  %i.ai = load i32, ptr %i.f, align 8, !tbaa !124
  %i.aj = load i32, ptr %.tr62, align 8, !tbaa !124
  %i.ak = icmp slt i32 %i.ai, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.t

bb.h:                                             ; preds = %.split43, %.split, %_ZNK2bv12interval_tplI8rationalNS_14rinterval_baseEE10is_wrappedEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %.tr5263, i64 32 ; 5 uses
  %i.am = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !120 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.tr5263, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr5263, i64 52
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = and i8 %i.ap, 1
  %i.ar = icmp eq i8 %i.aq, 0
  %i.as = load i32, ptr %i.an, align 8
  %i.at = icmp eq i32 %i.as, 1
  %i.au = select i1 %i.ar, i1 %i.at, i1 false
  br i1 %i.au, label %bb.i, label %.split44

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %.tr5263, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.tr5263, i64 20
  %i.ax = load i8, ptr %i.aw, align 4
  %i.ay = and i8 %i.ax, 1
  %i.az = icmp eq i8 %i.ay, 0
  %i.ba = load i32, ptr %i.av, align 8
  %i.bb = icmp eq i32 %i.ba, 1
  %i.bc = select i1 %i.az, i1 %i.bb, i1 false
  br i1 %i.bc, label %bb.j, label %.split44

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.tr5263, i64 36
  %i.be = load i8, ptr %i.bd, align 4
  %i.bf = and i8 %i.be, 1
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.k, label %.split45

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr5263, i64 4
  %i.bi = load i8, ptr %i.bh, align 4
  %i.bj = and i8 %i.bi, 1
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %_ZNK2bv12interval_tplI8rationalNS_14rinterval_baseEE10is_wrappedEv.exit37, label %.split45

.split45:                                         ; preds = %bb.k, %bb.j
  %i.bl = tail call noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(69) %.tr5263)
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %bb.l, label %tailrecurse

.split44:                                         ; preds = %bb.i, %bb.h
  %i.bn = tail call noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(69) %.tr5263)
  br i1 %i.bn, label %bb.l, label %tailrecurse

_ZNK2bv12interval_tplI8rationalNS_14rinterval_baseEE10is_wrappedEv.exit37: ; preds = %bb.k
  %i.bo = load i32, ptr %i.al, align 8, !tbaa !124
  %i.bp = load i32, ptr %.tr5263, align 8, !tbaa !124
  %i.bq = icmp slt i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.l, label %tailrecurse

bb.l:                                             ; preds = %.split45, %.split44, %_ZNK2bv12interval_tplI8rationalNS_14rinterval_baseEE10is_wrappedEv.exit37
  %i.br = getelementptr inbounds nuw i8, ptr %.tr62, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %.tr62, i64 52
  %i.bt = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !120 ; 2 uses
  %i.bu = load i8, ptr %i.bs, align 4
  %i.bv = and i8 %i.bu, 1
  %i.bw = icmp eq i8 %i.bv, 0
  %i.bx = load i32, ptr %i.br, align 8
  %i.by = icmp eq i32 %i.bx, 1
  %i.bz = select i1 %i.bw, i1 %i.by, i1 false
  br i1 %i.bz, label %bb.m, label %.split73

bb.m:                                             ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr5263, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %.tr5263, i64 20
  %i.cc = load i8, ptr %i.cb, align 4
  %i.cd = and i8 %i.cc, 1
  %i.ce = icmp eq i8 %i.cd, 0
  %i.cf = load i32, ptr %i.ca, align 8
  %i.cg = icmp eq i32 %i.cf, 1
  %i.ch = select i1 %i.ce, i1 %i.cg, i1 false
  br i1 %i.ch, label %bb.n, label %.split73

bb.n:                                             ; preds = %bb.m
  %i.ci = getelementptr inbounds nuw i8, ptr %.tr62, i64 36
  %i.cj = load i8, ptr %i.ci, align 4
  %i.ck = and i8 %i.cj, 1
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %bb.o, label %.split74

bb.o:                                             ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %.tr5263, i64 4
  %i.cn = load i8, ptr %i.cm, align 4
  %i.co = and i8 %i.cn, 1
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %_ZgeRK8rationalS1_.exit, label %.split74

.split74:                                         ; preds = %bb.o, %bb.n
  %i.cq = tail call noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %.tr5263)
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %bb.q, label %bb.p

.split73:                                         ; preds = %bb.m, %bb.l
  %i.cs = tail call noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %.tr5263)
  br i1 %i.cs, label %bb.q, label %bb.p

_ZgeRK8rationalS1_.exit:                          ; preds = %bb.o
  %i.ct = load i32, ptr %i.f, align 8, !tbaa !124
  %i.cu = load i32, ptr %.tr5263, align 8, !tbaa !124
  %i.cv = icmp slt i32 %i.ct, %i.cu
  br i1 %i.cv, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.split74, %.split73, %_ZgeRK8rationalS1_.exit
  %i.cw = tail call noundef nonnull align 8 dereferenceable(69) ptr @_ZN2bv12interval_tplI8rationalNS_14rinterval_baseEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(69) %2, ptr noundef nonnull align 8 dereferenceable(69) %.tr5263) ; 0 uses
end_hunk_0
