Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/treenode?download=true
inline.NumInlined: 207
inline.NumDeleted: 80
begin_hunk_0_@_ZN4toku8treenode6insertERKNS_8keyrangeEmb:bb.a
  %i.ak = call i32 @llvm.umax.i32(i32 %i.ai, i32 %i.aj)
  %i.al = add i32 %i.ak, 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.al, ptr %i.am, align 8, !tbaa !29
  br label %common.ret42

common.ret42:                                     ; preds = %bb.a, %_ZN4toku8treenode9child_ptr3setEPS0_.exit34, %_ZN4toku8treenode9child_ptr3setEPS0_.exit, %bb.h, %bb.g, %bb.d
  %common.ret42.op = phi i1 [ true, %bb.g ], [ true, %bb.d ], [ true, %_ZN4toku8treenode9child_ptr3setEPS0_.exit34 ], [ %i.cm, %bb.h ], [ true, %bb.a ], [ true, %_ZN4toku8treenode9child_ptr3setEPS0_.exit ]
  ret i1 %common.ret42.op

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !30
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 184
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !31
  %i.ar = tail call i32 @llvm.umax.i32(i32 %i.ao, i32 %i.aq)
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.o, align 8, !tbaa !29
  %i.at = tail call noundef zeroext i1 @_ZN4toku8treenode6insertERKNS_8keyrangeEmb(ptr noundef nonnull align 8 dereferenceable(202) %i.p, ptr noundef nonnull align 8 dereferenceable(81) %1, i64 noundef %2, i1 noundef zeroext %3) ; 0 uses
  %i.au = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(202) %i.p) #16 ; 0 uses
  br label %common.ret42

bb.e:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !28 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i29, label %_ZN4toku8treenode9child_ptr3setEPS0_.exit34, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(202) %i.aw) #16 ; 0 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !28 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 168
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !30
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 184
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !31
  %i.bd = tail call i32 @llvm.umax.i32(i32 %i.ba, i32 %i.bc)
  %i.be = add i32 %i.bd, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !29
  %i.bg = tail call noundef ptr @_ZN4toku8treenode15maybe_rebalanceEv(ptr noundef nonnull align 8 dereferenceable(202) %i.ay) ; 6 uses
  store ptr %i.bg, ptr %i.av, align 8, !tbaa !28
  %.not.i7.i30 = icmp eq ptr %i.bg, null
  br i1 %.not.i7.i30, label %_ZN4toku8treenode24lock_and_rebalance_rightEv.exit.thread38, label %bb.g

_ZN4toku8treenode24lock_and_rebalance_rightEv.exit.thread38: ; preds = %bb.f
  store i32 0, ptr %i.bf, align 8, !tbaa !29
  br label %_ZN4toku8treenode9child_ptr3setEPS0_.exit34

_ZN4toku8treenode9child_ptr3setEPS0_.exit34:      ; preds = %bb.e, %_ZN4toku8treenode24lock_and_rebalance_rightEv.exit.thread38
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.bi = tail call noundef ptr @_Z12toku_xcallocmm(i64 noundef 1, i64 noundef 208) ; 14 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 136 ; 2 uses
  store i64 0, ptr %i.bj, align 8, !tbaa !9
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 200
  store i8 0, ptr %i.bk, align 8, !tbaa !23
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 201 ; 2 uses
  store i8 1, ptr %i.bl, align 1, !tbaa !24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 192
  store ptr %i.bh, ptr %i.bm, align 8, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 144 ; 2 uses
  store i8 0, ptr %i.bn, align 8, !tbaa !26
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 152
  store ptr null, ptr %i.bo, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(202) %i.bi, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.bp = call i32 @pthread_mutexattr_init(ptr noundef nonnull %4) #16 ; 0 uses
  %i.bq = call i32 @pthread_mutexattr_settype(ptr noundef nonnull %4, i32 noundef 3) #16 ; 0 uses
  %i.br = call i32 @pthread_mutex_init(ptr noundef nonnull align 8 dereferenceable(202) %i.bi, ptr noundef nonnull %4) #16 ; 0 uses
  %i.bs = call i32 @pthread_mutexattr_destroy(ptr noundef nonnull %4) #16 ; 0 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 160
  store ptr null, ptr %i.bt, align 8, !tbaa !28
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 168 ; 2 uses
  store i32 0, ptr %i.bu, align 8, !tbaa !29
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 176
  store ptr null, ptr %i.bv, align 8, !tbaa !28
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 184 ; 2 uses
  store i32 0, ptr %i.bw, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.bx = zext i1 %3 to i8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  call void @_ZN4toku8keyrange11create_copyERKS0_(ptr noundef nonnull align 8 dereferenceable(81) %i.by, ptr noundef nonnull align 8 dereferenceable(81) %1)
  store i64 %2, ptr %i.bj, align 8, !tbaa !9
  store i8 %i.bx, ptr %i.bn, align 8, !tbaa !26
  store i8 0, ptr %i.bl, align 1, !tbaa !24
  store ptr %i.bi, ptr %i.av, align 8, !tbaa !28
  %i.bz = load i32, ptr %i.bu, align 8, !tbaa !30
  %i.ca = load i32, ptr %i.bw, align 8, !tbaa !31
  %i.cb = call i32 @llvm.umax.i32(i32 %i.bz, i32 %i.ca)
  %i.cc = add i32 %i.cb, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !29
  br label %common.ret42

bb.g:                                             ; preds = %bb.f
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bg, i64 168
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !30
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bg, i64 184
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !31
  %i.ci = tail call i32 @llvm.umax.i32(i32 %i.cf, i32 %i.ch)
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.bf, align 8, !tbaa !29
  %i.ck = tail call noundef zeroext i1 @_ZN4toku8treenode6insertERKNS_8keyrangeEmb(ptr noundef nonnull align 8 dereferenceable(202) %i.bg, ptr noundef nonnull align 8 dereferenceable(81) %1, i64 noundef %2, i1 noundef zeroext %3) ; 0 uses
  %i.cl = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(202) %i.bg) #16 ; 0 uses
  br label %common.ret42

bb.h:                                             ; preds = %bb.a
  %i.cm = tail call noundef zeroext i1 @_ZN4toku8treenode16add_shared_ownerEm(ptr noundef nonnull align 8 dereferenceable(202) %0, i64 noundef %2)
  br label %common.ret42
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull ptr @_ZN4toku8treenode21find_child_at_extremeEiPPS0_(ptr noundef nonnull align 8 dereferenceable(202) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %common.ret22, label %_ZN4toku8treenode9child_ptr10get_lockedEv.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %.not.i10 = icmp eq ptr %i.e, null
  br i1 %.not.i10, label %common.ret22, label %_ZN4toku8treenode9child_ptr10get_lockedEv.exit

common.ret22:                                     ; preds = %bb.c, %bb.b, %_ZN4toku8treenode9child_ptr10get_lockedEv.exit
  %common.ret22.op = phi ptr [ %i.n, %_ZN4toku8treenode9child_ptr10get_lockedEv.exit ], [ %0, %bb.b ], [ %0, %bb.c ]
  ret ptr %common.ret22.op

_ZN4toku8treenode9child_ptr10get_lockedEv.exit:   ; preds = %bb.c, %bb.b
  %.sink21 = phi ptr [ %i.c, %bb.b ], [ %i.e, %bb.c ]
  %.sink.in = phi ptr [ %i.b, %bb.b ], [ %i.d, %bb.c ]
  %.sink15 = phi i64 [ 184, %bb.b ], [ 168, %bb.c ]
  %i.f = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(202) %.sink21) #16 ; 0 uses
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !28 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sink, i64 168
  %i.h = load i32, ptr %i.g, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %.sink, i64 184
  %i.j = load i32, ptr %i.i, align 8, !tbaa !31
  %i.k = tail call i32 @llvm.umax.i32(i32 %i.h, i32 %i.j)
  %i.l = add i32 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sink15
  store i32 %i.l, ptr %i.m, align 8, !tbaa !29
  store ptr %0, ptr %2, align 8, !tbaa !54
  %i.n = tail call noundef ptr @_ZN4toku8treenode21find_child_at_extremeEiPPS0_(ptr noundef nonnull align 8 dereferenceable(202) %.sink, i32 noundef %1, ptr noundef nonnull %2)
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(202) %.sink) #16 ; 0 uses
  br label %common.ret22
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN4toku8treenode9child_ptr10get_lockedEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(202) %i.a) #16 ; 0 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !28     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.g = load i32, ptr %i.f, align 8, !tbaa !31
  %i.h = tail call i32 @llvm.umax.i32(i32 %i.e, i32 %i.g)
  %i.i = add i32 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.i, ptr %i.j, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull ptr @_ZN4toku8treenode19find_leftmost_childEPPS0_(ptr noundef nonnull align 8 dereferenceable(202) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4toku8treenode21find_child_at_extremeEiPPS0_(ptr noundef nonnull align 8 dereferenceable(202) %0, i32 noundef -1, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull ptr @_ZN4toku8treenode20find_rightmost_childEPPS0_(ptr noundef nonnull align 8 dereferenceable(202) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4toku8treenode21find_child_at_extremeEiPPS0_(ptr noundef nonnull align 8 dereferenceable(202) %0, i32 noundef 1, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4toku8treenode22remove_root_of_subtreeEv(ptr noundef nonnull align 8 dereferenceable(202) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.toku::keyrange", align 8    ; 4 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.d = icmp eq ptr %i.c, null                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, null                   ; 2 uses
  %or.cond = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !23, !range !32, !noundef !33
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(202) %0) #16 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN4toku8keyrange7destroyEv(ptr noundef nonnull align 8 dereferenceable(81) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27   ; 4 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !45
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef %i.p)
          to label %_ZNSt3setImSt4lessImESaImEED2Ev.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #19
  unreachable

_ZNSt3setImSt4lessImESaImEED2Ev.exit.i:           ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 48) #20
  store ptr null, ptr %i.m, align 8, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt3setImSt4lessImESaImEED2Ev.exit.i, %bb.d
  %i.s = load i8, ptr %i.h, align 8, !tbaa !23, !range !32, !noundef !33
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 201
  store i8 1, ptr %i.u, align 1, !tbaa !24
  br label %_ZN4toku8treenode4freeEPS0_.exit

bb.i:                                             ; preds = %bb.g
  %i.v = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %0) #16 ; 0 uses
  tail call void @_Z9toku_freePv(ptr noundef nonnull %0)
  br label %_ZN4toku8treenode4freeEPS0_.exit

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %0, ptr %i.a, align 8, !tbaa !54
  br i1 %i.d, label %_ZN4toku8treenode9child_ptr10get_lockedEv.exit23, label %_ZN4toku8treenode9child_ptr10get_lockedEv.exit

_ZN4toku8treenode9child_ptr10get_lockedEv.exit:   ; preds = %bb.j
  %i.w = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(202) %i.c) #16 ; 0 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !28   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 168
  %i.z = load i32, ptr %i.y, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 184
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !31
  %i.ac = tail call i32 @llvm.umax.i32(i32 %i.z, i32 %i.ab)
  %i.ad = add i32 %i.ac, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !29
  %i.af = call noundef nonnull ptr @_ZN4toku8treenode21find_child_at_extremeEiPPS0_(ptr noundef nonnull align 8 dereferenceable(202) %i.x, i32 noundef 1, ptr noundef nonnull %i.a) ; 3 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !54  ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 160 ; 2 uses
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4toku8treenode9child_ptr10get_lockedEv.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !56
  br label %bb.o

bb.l:                                             ; preds = %_ZN4toku8treenode9child_ptr10get_lockedEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !56
  br label %bb.o

_ZN4toku8treenode9child_ptr10get_lockedEv.exit23: ; preds = %bb.j
  %2 = xor i1 %i.g, true
  tail call void @llvm.assume(i1 %2)
  %i.ak = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(202) %i.f) #16 ; 0 uses
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !28  ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 168
  %i.an = load i32, ptr %i.am, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 184
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !31
  %i.aq = tail call i32 @llvm.umax.i32(i32 %i.an, i32 %i.ap)
  %i.ar = add i32 %i.aq, 1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !29
  %i.at = call noundef nonnull ptr @_ZN4toku8treenode21find_child_at_extremeEiPPS0_(ptr noundef nonnull align 8 dereferenceable(202) %i.al, i32 noundef -1, ptr noundef nonnull %i.a) ; 3 uses
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !54  ; 2 uses
  %i.av = icmp eq ptr %i.au, %0
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 176 ; 2 uses
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4toku8treenode9child_ptr10get_lockedEv.exit23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !tbaa.struct !56
  br label %bb.o

bb.n:                                             ; preds = %_ZN4toku8treenode9child_ptr10get_lockedEv.exit23
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !tbaa.struct !56
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.k, %bb.l
  %.015 = phi ptr [ %i.x, %bb.k ], [ %i.x, %bb.l ], [ %i.al, %bb.m ], [ %i.al, %bb.n ]
  %.0 = phi ptr [ %i.af, %bb.k ], [ %i.af, %bb.l ], [ %i.at, %bb.m ], [ %i.at, %bb.n ] ; 8 uses
  %i.ay = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(202) %.015) #16 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.az = getelementptr inbounds nuw i8, ptr %.0, i64 48 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.az, i64 88, i1 false), !tbaa.struct !34
  %i.ba = getelementptr inbounds nuw i8, ptr %.0, i64 136 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %i.az, ptr noundef nonnull align 8 dereferenceable(81) %i.bc, i64 81, i1 false), !tbaa.struct !34
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !9
  store i64 %i.be, ptr %i.ba, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %i.bc, ptr noundef nonnull align 8 dereferenceable(81) %1, i64 81, i1 false), !tbaa.struct !34
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %.0, i64 144 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !26, !range !32, !noundef !33
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !26, !range !32, !noundef !33
  store i8 %i.bi, ptr %i.bf, align 8, !tbaa !26
  store i8 %i.bg, ptr %i.bh, align 8, !tbaa !26
  %i.bj = getelementptr inbounds nuw i8, ptr %.0, i64 152 ; 4 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !27
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !27
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !27
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  tail call void @_ZN4toku8keyrange7destroyEv(ptr noundef nonnull align 8 dereferenceable(81) %i.az)
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !27 ; 4 uses
  %.not.i24 = icmp eq ptr %i.bn, null
  br i1 %.not.i24, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !45
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noundef %i.bp)
          to label %_ZNSt3setImSt4lessImESaImEED2Ev.exit.i25 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  tail call void @__clang_call_terminate(ptr %i.br) #19
  unreachable

_ZNSt3setImSt4lessImESaImEED2Ev.exit.i25:         ; preds = %bb.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 48) #20
  store ptr null, ptr %i.bj, align 8, !tbaa !27
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt3setImSt4lessImESaImEED2Ev.exit.i25, %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %.0, i64 200
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !23, !range !32, !noundef !33
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %.0, i64 201
  store i8 1, ptr %i.bv, align 1, !tbaa !24
  br label %_ZN4toku8treenode4freeEPS0_.exit26

bb.t:                                             ; preds = %bb.r
  %i.bw = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %.0) #16 ; 0 uses
  tail call void @_Z9toku_freePv(ptr noundef nonnull %.0)
  br label %_ZN4toku8treenode4freeEPS0_.exit26

_ZN4toku8treenode4freeEPS0_.exit26:               ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZN4toku8treenode4freeEPS0_.exit

_ZN4toku8treenode4freeEPS0_.exit:                 ; preds = %bb.i, %bb.h, %_ZN4toku8treenode4freeEPS0_.exit26
  %.016 = phi ptr [ %0, %_ZN4toku8treenode4freeEPS0_.exit26 ], [ null, %bb.h ], [ null, %bb.i ]
  ret ptr %.016
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toku8treenode16recursive_removeEv(ptr noundef nonnull align 8 dereferenceable(202) initializes((168, 172), (184, 188)) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4toku8treenode16recursive_removeEv(ptr noundef nonnull align 8 dereferenceable(202) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %.not6 = icmp eq ptr %i.e, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4toku8treenode16recursive_removeEv(ptr noundef nonnull align 8 dereferenceable(202) %i.e)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 0, ptr %i.f, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN4toku8keyrange7destroyEv(ptr noundef nonnull align 8 dereferenceable(81) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27   ; 4 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef %i.k)
          to label %_ZNSt3setImSt4lessImESaImEED2Ev.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #19
  unreachable

_ZNSt3setImSt4lessImESaImEED2Ev.exit.i:           ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 48) #20
  store ptr null, ptr %i.h, align 8, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt3setImSt4lessImESaImEED2Ev.exit.i, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.o = load i8, ptr %i.n, align 8, !tbaa !23, !range !32, !noundef !33
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 201
  store i8 1, ptr %i.q, align 1, !tbaa !24
  br label %_ZN4toku8treenode4freeEPS0_.exit

bb.j:                                             ; preds = %bb.h
  %i.r = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %0) #16 ; 0 uses
  tail call void @_Z9toku_freePv(ptr noundef nonnull %0)
  br label %_ZN4toku8treenode4freeEPS0_.exit

_ZN4toku8treenode4freeEPS0_.exit:                 ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toku8treenode19remove_shared_ownerEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(202) %0, i64 noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = call noundef i64 @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE5eraseERKm(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !27   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !48
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.l, ptr %i.m, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %i.o)
end_hunk_0
