inline.NumInlined: 8332
inline.NumDeleted: 1222
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 103
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@_ZN3ada4idna13utf32_to_utf8EPKDimPc
define dso_local noundef i64 @_ZN3ada4idna13utf32_to_utf8EPKDimPc(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not72 = icmp eq i64 %1, 0
  br i1 %.not72, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.backedge
  %.05571 = phi ptr [ %.055.be, %.backedge ], [ %2, %bb.a ] ; 14 uses
  %.05870 = phi i64 [ %.058.be, %.backedge ], [ 0, %bb.a ] ; 3 uses
  %i.a = add i64 %.05870, 2                       ; 2 uses
  %.not = icmp ugt i64 %i.a, %1
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.05870 ; 3 uses
  br i1 %.not, label %.lr.ph..thread_crit_edge, label %bb.b

.lr.ph..thread_crit_edge:                         ; preds = %.lr.ph
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %.thread

bb.b:                                             ; preds = %.lr.ph
  %.0.copyload = load i64, ptr %.phi.trans.insert, align 4 ; 3 uses
  %i.b = and i64 %.0.copyload, -545460846720
  %i.c = icmp eq i64 %i.b, 0
  %i.d = trunc i64 %.0.copyload to i32
  br i1 %i.c, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i64 %.0.copyload to i8
  %i.f = getelementptr inbounds nuw i8, ptr %.05571, i64 1
  store i8 %i.e, ptr %.05571, align 1
  %i.g = getelementptr i8, ptr %.phi.trans.insert, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = trunc i32 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %.05571, i64 2
  store i8 %i.i, ptr %i.f, align 1
  br label %.backedge

.thread:                                          ; preds = %.lr.ph..thread_crit_edge, %bb.b
  %i.k = phi i32 [ %.pre, %.lr.ph..thread_crit_edge ], [ %i.d, %bb.b ] ; 15 uses
  %i.l = icmp ult i32 %i.k, 128
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread
  %i.m = trunc nuw nsw i32 %i.k to i8
  %i.n = getelementptr inbounds nuw i8, ptr %.05571, i64 1
  store i8 %i.m, ptr %.05571, align 1
  br label %bb.l

bb.e:                                             ; preds = %.thread
  %i.o = icmp ult i32 %i.k, 2048
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = lshr i32 %i.k, 6
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -64
  %i.s = getelementptr inbounds nuw i8, ptr %.05571, i64 1
  store i8 %i.r, ptr %.05571, align 1
  %i.t = trunc i32 %i.k to i8
  %i.u = and i8 %i.t, 63
  %i.v = or disjoint i8 %i.u, -128
  %i.w = getelementptr inbounds nuw i8, ptr %.05571, i64 2
  store i8 %i.v, ptr %i.s, align 1
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.x = icmp ult i32 %i.k, 65536
  br i1 %i.x, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.y = and i32 %i.k, 63488
  %or.cond = icmp eq i32 %i.y, 55296
  br i1 %or.cond, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = lshr i32 %i.k, 12
  %i.aa = trunc nuw nsw i32 %i.z to i8
  %i.ab = or disjoint i8 %i.aa, -32
  %i.ac = getelementptr inbounds nuw i8, ptr %.05571, i64 1
  store i8 %i.ab, ptr %.05571, align 1
  %i.ad = lshr i32 %i.k, 6
  %i.ae = trunc i32 %i.ad to i8
  %i.af = and i8 %i.ae, 63
  %i.ag = or disjoint i8 %i.af, -128
  %i.ah = getelementptr inbounds nuw i8, ptr %.05571, i64 2
  store i8 %i.ag, ptr %i.ac, align 1
  %i.ai = trunc i32 %i.k to i8
  %i.aj = and i8 %i.ai, 63
  %i.ak = or disjoint i8 %i.aj, -128
  %i.al = getelementptr inbounds nuw i8, ptr %.05571, i64 3
  store i8 %i.ak, ptr %i.ah, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.am = icmp ugt i32 %i.k, 1114111
  br i1 %i.am, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %.05571, i64 4
  %i.ao = lshr i32 %i.k, 6
  %i.ap = lshr i32 %i.k, 12
  %i.aq = lshr i32 %i.k, 18
  %i.ar = trunc i32 %i.k to i8
  %i.as = trunc i32 %i.ao to i8
  %i.at = trunc i32 %i.ap to i8
  %i.au = trunc nuw nsw i32 %i.aq to i8
  %i.av = insertelement <4 x i8> poison, i8 %i.au, i64 0
  %i.aw = insertelement <4 x i8> %i.av, i8 %i.at, i64 1
  %i.ax = insertelement <4 x i8> %i.aw, i8 %i.as, i64 2
  %i.ay = insertelement <4 x i8> %i.ax, i8 %i.ar, i64 3
  %i.az = and <4 x i8> %i.ay, <i8 -1, i8 63, i8 63, i8 63>
  %i.ba = or disjoint <4 x i8> %i.az, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.ba, ptr %.05571, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.k, %bb.i, %bb.d
  %.3 = phi ptr [ %i.n, %bb.d ], [ %i.w, %bb.f ], [ %i.al, %bb.i ], [ %i.an, %bb.k ]
  %.361 = add nuw i64 %.05870, 1
  br label %.backedge

.backedge:                                        ; preds = %bb.l, %bb.c
  %.058.be = phi i64 [ %.361, %bb.l ], [ %i.a, %bb.c ] ; 2 uses
  %.055.be = phi ptr [ %.3, %bb.l ], [ %i.j, %bb.c ] ; 2 uses
  %i.bb = icmp ult i64 %.058.be, %1
  br i1 %i.bb, label %.lr.ph, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.055.lcssa = phi ptr [ %2, %bb.a ], [ %.055.be, %.backedge ]
  %i.bc = ptrtoint ptr %.055.lcssa to i64
  %i.bd = ptrtoint ptr %2 to i64
  %i.be = sub i64 %i.bc, %i.bd
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.j, %._crit_edge
  %.2 = phi i64 [ %i.be, %._crit_edge ], [ 0, %bb.j ], [ 0, %bb.h ]
  ret i64 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, -2147483648) i32 @_ZN3ada4idna16find_range_indexEj(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.f
  %.01832 = phi i32 [ 0, %bb.a ], [ %.220, %bb.f ] ; 2 uses
  %.02131 = phi i32 [ 8197, %bb.a ], [ %.223, %bb.f ] ; 2 uses
  %i.a = add i32 %.01832, %.02131
  %i.b = lshr i32 %i.a, 1                         ; 4 uses
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @_ZN3ada4idnaL5tableE, i64 %i.c
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp ult i32 %i.e, %0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i32 %i.b, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = icmp ugt i32 %i.e, %0
  br i1 %i.h, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i32 %i.b, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.223 = phi i32 [ %i.i, %bb.e ], [ %.02131, %bb.c ] ; 2 uses
  %.220 = phi i32 [ %.01832, %bb.e ], [ %i.g, %bb.c ] ; 3 uses
  %.not = icmp ugt i32 %.220, %.223
  br i1 %.not, label %bb.g, label %bb.b, !llvm.loop !14

bb.g:                                             ; preds = %bb.f
  %i.j = add i32 %.220, -1
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.g
  %.2 = phi i32 [ %i.j, %bb.g ], [ %i.b, %bb.d ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN3ada4idna9ascii_mapEPcm(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = icmp ugt i64 %1, 7
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = add i64 %1, -8                           ; 2 uses
  %i.d = lshr i64 %i.c, 3
  %i.e = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.c, 24
  br i1 %min.iters.check, label %.lr.ph.preheader32, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.e, 4611686018427387900      ; 3 uses
  %i.f = shl i64 %n.vec, 3                        ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = shl i64 %index, 3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.h, align 1  ; 3 uses
  %wide.load31 = load <2 x i64>, ptr %i.i, align 1 ; 3 uses
  %i.j = add <2 x i64> %wide.load, splat (i64 4557430888798830399)
  %i.k = add <2 x i64> %wide.load31, splat (i64 4557430888798830399)
  %i.l = add <2 x i64> %wide.load, splat (i64 2676586395008836901)
  %i.m = add <2 x i64> %wide.load31, splat (i64 2676586395008836901)
  %i.n = xor <2 x i64> %i.j, %i.l
  %i.o = xor <2 x i64> %i.k, %i.m
  %i.p = lshr <2 x i64> %i.n, splat (i64 2)
  %i.q = lshr <2 x i64> %i.o, splat (i64 2)
  %i.r = and <2 x i64> %i.p, splat (i64 2314885530818453536)
  %i.s = and <2 x i64> %i.q, splat (i64 2314885530818453536)
  %i.t = xor <2 x i64> %i.r, %wide.load
  %i.u = xor <2 x i64> %i.s, %wide.load31
  store <2 x i64> %i.t, ptr %i.h, align 1
  store <2 x i64> %i.u, ptr %i.i, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader32

.lr.ph.preheader32:                               ; preds = %.lr.ph.preheader, %middle.block
  %.030.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.f, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader32, %.lr.ph
  %.030 = phi i64 [ %i.ad, %.lr.ph ], [ %.030.ph, %.lr.ph.preheader32 ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.030 ; 2 uses
  %.0.copyload = load i64, ptr %i.w, align 1      ; 3 uses
  %i.x = add i64 %.0.copyload, 4557430888798830399
  %i.y = add i64 %.0.copyload, 2676586395008836901
  %i.z = xor i64 %i.x, %i.y
  %i.aa = lshr i64 %i.z, 2
  %i.ab = and i64 %i.aa, 2314885530818453536
  %i.ac = xor i64 %i.ab, %.0.copyload
  store i64 %i.ac, ptr %i.w, align 1
  %i.ad = add nuw i64 %.030, 8                    ; 3 uses
  %i.ae = or disjoint i64 %i.ad, 7
  %i.af = icmp ult i64 %i.ae, %1
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.f, %middle.block ], [ %i.ad, %.lr.ph ] ; 3 uses
  %i.ag = icmp ult i64 %.0.lcssa, %1
  br i1 %i.ag, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa ; 2 uses
  %i.ai = sub nuw i64 %1, %.0.lcssa               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.ah, i64 %i.ai, i1 false)
  %.0..0..0..0. = load i64, ptr %i.a, align 8     ; 3 uses
  %i.aj = add i64 %.0..0..0..0., 4557430888798830399
  %i.ak = add i64 %.0..0..0..0., 2676586395008836901
  %i.al = xor i64 %i.aj, %i.ak
  %i.am = lshr i64 %i.al, 2
  %i.an = and i64 %i.am, 2314885530818453536
  %i.ao = xor i64 %i.an, %.0..0..0..0.
  store i64 %i.ao, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 8 %i.a, i64 %i.ai, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3ada4idna3mapB5cxx11ESt17basic_string_viewIDiSt11char_traitsIDiEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr nofree readonly captures(address) %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = load atomic i8, ptr @_ZGVZN3ada4idna3mapB5cxx11ESt17basic_string_viewIDiSt11char_traitsIDiEEE5errorB5cxx11 acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3ada4idna3mapB5cxx11ESt17basic_string_viewIDiSt11char_traitsIDiEEE5errorB5cxx11) #31
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev, ptr nonnull @_ZZN3ada4idna3mapB5cxx11ESt17basic_string_viewIDiSt11char_traitsIDiEEE5errorB5cxx11, ptr nonnull @__dso_handle) #31 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3ada4idna3mapB5cxx11ESt17basic_string_viewIDiSt11char_traitsIDiEEE5errorB5cxx11) #31
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 15 uses
  store ptr %i.e, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  store i64 0, ptr %i.f, align 8
  store i32 0, ptr %i.e, align 8
  %.not.i = icmp ugt i64 %1, 3
  br i1 %.not.i, label %bb.d, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7reserveEm.exit

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i
  %i.g = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.123) #32
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = icmp eq i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.g, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7reserveEm.exit.thread, !prof !18

bb.g:                                             ; preds = %bb.f
  call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7reserveEm.exit.thread: ; preds = %bb.f
  %.0.i = call i64 @llvm.umax.i64(i64 %1, i64 6)  ; 2 uses
  %i.i = shl nuw nsw i64 %.0.i, 2
  %i.j = add nuw nsw i64 %i.i, 4
  %i.k = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #33 ; 2 uses
  store i32 0, ptr %i.k, align 4
  store ptr %i.k, ptr %3, align 8
  store i64 %.0.i, ptr %i.e, align 8
  br label %.lr.ph54.preheader

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7reserveEm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i
  %.not2552 = icmp eq i64 %1, 0
  br i1 %.not2552, label %.critedge27, label %.lr.ph54.preheader

.lr.ph54.preheader:                               ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7reserveEm.exit.thread, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7reserveEm.exit
  %.idx75.pn = shl nuw nsw i64 %1, 2
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.idx75.pn
  br label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %.loopexit
  %.02353 = phi ptr [ %i.cg, %.loopexit ], [ %2, %.lr.ph54.preheader ] ; 2 uses
  %i.m = load i32, ptr %.02353, align 4           ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.lr.ph54
  %.01832.i = phi i32 [ 0, %.lr.ph54 ], [ %.220.i, %bb.l ] ; 2 uses
  %.02131.i = phi i32 [ 8197, %.lr.ph54 ], [ %.223.i, %bb.l ] ; 2 uses
  %i.n = add i32 %.02131.i, %.01832.i
  %i.o = lshr i32 %i.n, 1                         ; 3 uses
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @_ZN3ada4idnaL5tableE, i64 %i.p
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp ult i32 %i.r, %i.m
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = add nuw i32 %i.o, 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.u = icmp ugt i32 %i.r, %i.m
  br i1 %i.u, label %bb.k, label %_ZN3ada4idna16find_range_indexEj.exit

bb.k:                                             ; preds = %bb.j
  %i.v = add nsw i32 %i.o, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.223.i = phi i32 [ %i.v, %bb.k ], [ %.02131.i, %bb.i ] ; 2 uses
  %.220.i = phi i32 [ %.01832.i, %bb.k ], [ %i.t, %bb.i ] ; 3 uses
  %.not.i28 = icmp ugt i32 %.220.i, %.223.i
  br i1 %.not.i28, label %bb.m, label %bb.h, !llvm.loop !14

bb.m:                                             ; preds = %bb.l
  %i.w = add i32 %.220.i, -1
  %.pre59 = zext i32 %i.w to i64
  br label %_ZN3ada4idna16find_range_indexEj.exit

_ZN3ada4idna16find_range_indexEj.exit:            ; preds = %bb.j, %bb.m
  %.pre-phi = phi i64 [ %.pre59, %bb.m ], [ %i.p, %bb.j ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @_ZN3ada4idnaL5tableE, i64 %.pre-phi
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4              ; 3 uses
  %trunc = trunc i32 %i.z to i8
  switch i8 %trunc, label %bb.v [
    i8 0, label %.loopexit
    i8 1, label %bb.n
    i8 2, label %.critedge
  ]

bb.n:                                             ; preds = %_ZN3ada4idna16find_range_indexEj.exit
  %i.aa = load i64, ptr %i.f, align 8             ; 4 uses
  %i.ab = add i64 %i.aa, 1                        ; 3 uses
  %i.ac = load ptr, ptr %3, align 8               ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.e
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i31, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i31: ; preds = %bb.n
  %i.ae = icmp ult i64 %i.aa, 4
  call void @llvm.assume(i1 %i.ae)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i30

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i29: ; preds = %bb.n
end_hunk_0
begin_hunk_1_@_ZN3ada4idna14is_label_validESt17basic_string_viewIDiSt11char_traitsIDiEE:bb.a
  %.112.i.i.i270 = select i1 %i.md, i64 %i.mg, i64 %i.ma ; 2 uses
  %.1.i.i.i271 = select i1 %i.md, ptr %i.me, ptr %.05.i.i.i265 ; 4 uses
  %i.mh = icmp sgt i64 %.112.i.i.i270, 0
  br i1 %i.mh, label %_ZSt9__advanceIPN3ada4idna10directionsElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i264, label %_ZSt11lower_boundIPN3ada4idna10directionsEjZNS1_L14find_directionEjEUlRKS2_jE_ET_S7_S7_RKT0_T1_.exit.i272, !llvm.loop !43

_ZSt11lower_boundIPN3ada4idna10directionsEjZNS1_L14find_directionEjEUlRKS2_jE_ET_S7_S7_RKT0_T1_.exit.i272: ; preds = %_ZSt9__advanceIPN3ada4idna10directionsElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i264
  %i.mi = icmp eq ptr %.1.i.i.i271, getelementptr inbounds nuw (i8, ptr @_ZN3ada4idnaL9dir_tableE, i64 17388)
  br i1 %i.mi, label %_ZN3ada4idnaL20find_last_not_of_nsmESt17basic_string_viewIDiSt11char_traitsIDiEE.exit, label %bb.y

bb.y:                                             ; preds = %_ZSt11lower_boundIPN3ada4idna10directionsEjZNS1_L14find_directionEjEUlRKS2_jE_ET_S7_S7_RKT0_T1_.exit.i272
  %i.mj = load i32, ptr %.1.i.i.i271, align 4
  %.not.i273 = icmp ult i32 %i.lz, %i.mj
  br i1 %.not.i273, label %_ZN3ada4idnaL20find_last_not_of_nsmESt17basic_string_viewIDiSt11char_traitsIDiEE.exit, label %_ZN3ada4idnaL14find_directionEj.exit275

_ZN3ada4idnaL14find_directionEj.exit275:          ; preds = %bb.y
  %i.mk = getelementptr inbounds nuw i8, ptr %.1.i.i.i271, i64 8
  %i.ml = load i8, ptr %i.mk, align 4             ; 2 uses
  switch i8 %i.ml, label %_ZN3ada4idnaL20find_last_not_of_nsmESt17basic_string_viewIDiSt11char_traitsIDiEE.exit [
    i8 5, label %bb.z
    i8 10, label %bb.aa
    i8 11, label %.thread320
    i8 2, label %.thread320
    i8 9, label %.thread320
    i8 8, label %.thread320
    i8 7, label %.thread320
    i8 1, label %.thread320
    i8 4, label %.thread320
    i8 3, label %.thread320
  ]

bb.z:                                             ; preds = %_ZN3ada4idnaL14find_directionEj.exit275
  br i1 %.0138365, label %_ZN3ada4idnaL20find_last_not_of_nsmESt17basic_string_viewIDiSt11char_traitsIDiEE.exit, label %.thread320

bb.aa:                                            ; preds = %_ZN3ada4idnaL14find_directionEj.exit275
  br i1 %.0134366, label %_ZN3ada4idnaL20find_last_not_of_nsmESt17basic_string_viewIDiSt11char_traitsIDiEE.exit, label %.thread320

.thread320:                                       ; preds = %_ZN3ada4idnaL14find_directionEj.exit275, %_ZN3ada4idnaL14find_directionEj.exit275, %_ZN3ada4idnaL14find_directionEj.exit275, %_ZN3ada4idnaL14find_directionEj.exit275, %_ZN3ada4idnaL14find_directionEj.exit275, %_ZN3ada4idnaL14find_directionEj.exit275, %_ZN3ada4idnaL14find_directionEj.exit275, %_ZN3ada4idnaL14find_directionEj.exit275, %bb.z, %bb.aa
  %.2140326 = phi i1 [ false, %bb.z ], [ true, %bb.aa ], [ %.0138365, %_ZN3ada4idnaL14find_directionEj.exit275 ], [ %.0138365, %_ZN3ada4idnaL14find_directionEj.exit275 ], [ %.0138365, %_ZN3ada4idnaL14find_directionEj.exit275 ], [ %.0138365, %_ZN3ada4idnaL14find_directionEj.exit275 ], [ %.0138365, %_ZN3ada4idnaL14find_directionEj.exit275 ], [ %.0138365, %_ZN3ada4idnaL14find_directionEj.exit275 ], [ %.0138365, %_ZN3ada4idnaL14find_directionEj.exit275 ], [ %.0138365, %_ZN3ada4idnaL14find_directionEj.exit275 ]
  %.1135319324 = phi i1 [ true, %bb.z ], [ false, %bb.aa ], [ %.0134366, %_ZN3ada4idnaL14find_directionEj.exit275 ], [ %.0134366, %_ZN3ada4idnaL14find_directionEj.exit275 ], [ %.0134366, %_ZN3ada4idnaL14find_directionEj.exit275 ], [ %.0134366, %_ZN3ada4idnaL14find_directionEj.exit275 ], [ %.0134366, %_ZN3ada4idnaL14find_directionEj.exit275 ], [ %.0134366, %_ZN3ada4idnaL14find_directionEj.exit275 ], [ %.0134366, %_ZN3ada4idnaL14find_directionEj.exit275 ], [ %.0134366, %_ZN3ada4idnaL14find_directionEj.exit275 ]
  %i.mm = icmp ne i64 %.0133367, %i.jl
  %i.mn = freeze i1 %i.mm
  br i1 %i.mn, label %bb.ab, label %switch.early.test

switch.early.test:                                ; preds = %.thread320
  switch i8 %i.ml, label %_ZN3ada4idnaL20find_last_not_of_nsmESt17basic_string_viewIDiSt11char_traitsIDiEE.exit [
    i8 10, label %bb.ab
    i8 9, label %bb.ab
    i8 7, label %bb.ab
    i8 5, label %bb.ab
  ]

bb.ab:                                            ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %.thread320
  %i.mo = add nuw nsw i64 %.0133367, 1
  %exitcond429.not = icmp eq i64 %.0133367, %i.lx
  br i1 %exitcond429.not, label %_ZN3ada4idnaL20find_last_not_of_nsmESt17basic_string_viewIDiSt11char_traitsIDiEE.exit, label %bb.x, !llvm.loop !47

_ZN3ada4idnaL20find_last_not_of_nsmESt17basic_string_viewIDiSt11char_traitsIDiEE.exit: ; preds = %bb.p, %bb.v, %_ZSt11lower_boundIPN3ada4idna10directionsEjZNS1_L14find_directionEjEUlRKS2_jE_ET_S7_S7_RKT0_T1_.exit.i260, %_ZN3ada4idnaL14find_directionEj.exit263, %bb.w, %bb.ab, %bb.z, %bb.aa, %switch.early.test, %_ZSt11lower_boundIPN3ada4idna10directionsEjZNS1_L14find_directionEjEUlRKS2_jE_ET_S7_S7_RKT0_T1_.exit.i272, %bb.y, %_ZN3ada4idnaL14find_directionEj.exit275, %.preheader351, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada4idna14is_label_validESt17basic_string_viewIDiSt11char_traitsIDiEEE3$_0EclIPKDiEEbT_.exit98.i.i.i", %_ZSt13__lower_boundIPKjjN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i8.i.i96.i.i.i, %._crit_edge.i.i.i, %"_ZSt7find_ifIPKDiZN3ada4idna14is_label_validESt17basic_string_viewIDiSt11char_traitsIDiEEE3$_0ET_S9_S9_T0_.exit", %"_ZSt7find_ifIPKDiZN3ada4idna14is_label_validESt17basic_string_viewIDiSt11char_traitsIDiEEE3$_1ET_S9_S9_T0_.exit", %bb.d, %_ZSt13binary_searchIPKjDiEbT_S2_RKT0_.exit235.thread, %_ZSt13binary_searchIPKjDiEbT_S2_RKT0_.exit168.thread, %_ZSt13binary_searchIPKjDiEbT_S2_RKT0_.exit168, %_ZSt13binary_searchIPKjDiEbT_S2_RKT0_.exit235, %bb.c, %_ZN3ada4idnaL12is_rtl_labelESt17basic_string_viewIDiSt11char_traitsIDiEE.exit, %bb.a
  %.11 = phi i1 [ true, %bb.w ], [ true, %bb.a ], [ false, %bb.c ], [ true, %_ZN3ada4idnaL12is_rtl_labelESt17basic_string_viewIDiSt11char_traitsIDiEE.exit ], [ true, %_ZSt13binary_searchIPKjDiEbT_S2_RKT0_.exit235 ], [ false, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3ada4idna14is_label_validESt17basic_string_viewIDiSt11char_traitsIDiEEE3$_0EclIPKDiEEbT_.exit98.i.i.i" ], [ true, %.preheader351 ], [ %i.iu, %"_ZSt7find_ifIPKDiZN3ada4idna14is_label_validESt17basic_string_viewIDiSt11char_traitsIDiEEE3$_1ET_S9_S9_T0_.exit" ], [ false, %"_ZSt7find_ifIPKDiZN3ada4idna14is_label_validESt17basic_string_viewIDiSt11char_traitsIDiEEE3$_0ET_S9_S9_T0_.exit" ], [ false, %bb.d ], [ false, %_ZSt13binary_searchIPKjDiEbT_S2_RKT0_.exit235.thread ], [ false, %_ZSt13binary_searchIPKjDiEbT_S2_RKT0_.exit168.thread ], [ true, %_ZSt13binary_searchIPKjDiEbT_S2_RKT0_.exit168 ], [ false, %._crit_edge.i.i.i ], [ false, %_ZSt13__lower_boundIPKjjN9__gnu_cxx5__ops14_Iter_less_valEET_S5_S5_RKT0_T1_.exit.i8.i.i96.i.i.i ], [ false, %_ZN3ada4idnaL14find_directionEj.exit275 ], [ true, %bb.ab ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %switch.early.test ], [ false, %_ZSt11lower_boundIPN3ada4idna10directionsEjZNS1_L14find_directionEjEUlRKS2_jE_ET_S7_S7_RKT0_T1_.exit.i272 ], [ false, %bb.y ], [ false, %bb.v ], [ false, %_ZN3ada4idnaL14find_directionEj.exit263 ], [ false, %_ZSt11lower_boundIPN3ada4idna10directionsEjZNS1_L14find_directionEjEUlRKS2_jE_ET_S7_S7_RKT0_T1_.exit.i260 ], [ false, %bb.p ]
  ret i1 %.11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN3ada4idna36contains_forbidden_domain_code_pointESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr nofree readonly captures(address) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %.not6.not.i.i = icmp samesign eq i64 %0, 0
  br i1 %.not6.not.i.i, label %_ZNKSt6ranges11__any_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.057.i.i = phi ptr [ %i.f, %.lr.ph.i.i ], [ %1, %bb.a ] ; 2 uses
  %i.b = load i8, ptr %.057.i.i, align 1
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @_ZN3ada4idnaL36is_forbidden_domain_code_point_tableE, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1
  %.not.not = icmp ne i8 %i.e, 0                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 1 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.f, %i.a
  %or.cond = select i1 %.not.not, i1 true, i1 %.not.not.i.i
  br i1 %or.cond, label %_ZNKSt6ranges11__any_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit, label %.lr.ph.i.i, !llvm.loop !48

_ZNKSt6ranges11__any_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit: ; preds = %.lr.ph.i.i, %bb.a
  %.not.lcssa.i.i = phi i1 [ false, %bb.a ], [ %.not.not, %.lr.ph.i.i ]
  ret i1 %.not.lcssa.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3ada4idna8to_asciiB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.4") align 8 %0, i64 %1, ptr nofree readonly captures(address) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 18 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 22 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = getelementptr inbounds i8, ptr %2, i64 %1 ; 2 uses
  %.not13.i = icmp samesign eq i64 %1, 0
  br i1 %.not13.i, label %._crit_edge.i.i.i.i.i.thread, label %.lr.ph.i

._crit_edge.i.i.i.i.i.thread:                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !49
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.c, ptr %3, align 8, !noalias !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = getelementptr inbounds nuw i8, ptr %.01114.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i, label %bb.c, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.01114.i = phi ptr [ %i.d, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.e = load i8, ptr %.01114.i, align 1
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %bb.b, label %.lr.ph.i.i.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !52
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.g, ptr %3, align 8, !noalias !52
  %i.h = icmp eq ptr %2, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.131) #32, !noalias !52
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = icmp ugt i64 %1, 15
  br i1 %i.i, label %bb.f, label %._crit_edge.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.j = icmp slt i64 %1, 0
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.123) #32, !noalias !52
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.k = add nuw i64 %1, 1                        ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !18

bb.i:                                             ; preds = %bb.h
  call void @_ZSt17__throw_bad_allocv() #32, !noalias !52
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.h
  %i.m = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #33, !noalias !52 ; 2 uses
  store ptr %i.m, ptr %3, align 8, !noalias !52
  store i64 %1, ptr %i.g, align 8, !noalias !52
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %bb.e
  %i.n = phi ptr [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i ], [ %i.g, %bb.e ] ; 4 uses
  %cond628 = icmp eq i64 %1, 1
  br i1 %cond628, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.o = load i8, ptr %2, align 1, !noalias !52
  store i8 %i.o, ptr %i.n, align 1, !noalias !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %2, i64 %1, i1 false), !noalias !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit.i: ; preds = %._crit_edge.i.i.i.i.i.thread, %bb.k, %bb.j
  %i.p = phi ptr [ %i.c, %._crit_edge.i.i.i.i.i.thread ], [ %i.n, %bb.k ], [ %i.n, %bb.j ]
  %i.q = phi ptr [ %i.c, %._crit_edge.i.i.i.i.i.thread ], [ %i.g, %bb.k ], [ %i.g, %bb.j ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %1, ptr %i.r, align 8, !noalias !52
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %1
  store i8 0, ptr %i.s, align 1, !noalias !52
  %i.t = load ptr, ptr %3, align 8, !noalias !52  ; 3 uses
  %i.u = load i64, ptr %i.r, align 8, !noalias !52 ; 5 uses
  %i.v = icmp ugt i64 %i.u, 7
  br i1 %i.v, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit.i
  %i.w = add i64 %i.u, -8                         ; 2 uses
  %i.x = lshr i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check673 = icmp ult i64 %i.w, 24
  br i1 %min.iters.check673, label %.lr.ph.i.i.preheader703, label %vector.ph674

vector.ph674:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec676 = and i64 %i.y, 4611686018427387900   ; 3 uses
  %i.z = shl i64 %n.vec676, 3                     ; 2 uses
  br label %vector.body677

vector.body677:                                   ; preds = %vector.body677, %vector.ph674
  %index678 = phi i64 [ 0, %vector.ph674 ], [ %index.next681, %vector.body677 ] ; 2 uses
  %i.aa = shl i64 %index678, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.aa ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %wide.load679 = load <2 x i64>, ptr %i.ab, align 1, !noalias !52 ; 3 uses
  %wide.load680 = load <2 x i64>, ptr %i.ac, align 1, !noalias !52 ; 3 uses
  %i.ad = add <2 x i64> %wide.load679, splat (i64 4557430888798830399)
  %i.ae = add <2 x i64> %wide.load680, splat (i64 4557430888798830399)
  %i.af = add <2 x i64> %wide.load679, splat (i64 2676586395008836901)
  %i.ag = add <2 x i64> %wide.load680, splat (i64 2676586395008836901)
  %i.ah = xor <2 x i64> %i.ad, %i.af
  %i.ai = xor <2 x i64> %i.ae, %i.ag
  %i.aj = lshr <2 x i64> %i.ah, splat (i64 2)
  %i.ak = lshr <2 x i64> %i.ai, splat (i64 2)
  %i.al = and <2 x i64> %i.aj, splat (i64 2314885530818453536)
  %i.am = and <2 x i64> %i.ak, splat (i64 2314885530818453536)
  %i.an = xor <2 x i64> %i.al, %wide.load679
  %i.ao = xor <2 x i64> %i.am, %wide.load680
  store <2 x i64> %i.an, ptr %i.ab, align 1, !noalias !52
  store <2 x i64> %i.ao, ptr %i.ac, align 1, !noalias !52
  %index.next681 = add nuw i64 %index678, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next681, %n.vec676
  br i1 %i.ap, label %middle.block682, label %vector.body677, !llvm.loop !54

middle.block682:                                  ; preds = %vector.body677
  %cmp.n683 = icmp eq i64 %i.y, %n.vec676
  br i1 %cmp.n683, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader703

.lr.ph.i.i.preheader703:                          ; preds = %.lr.ph.i.i.preheader, %middle.block682
  %.030.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.z, %middle.block682 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader703, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.ax, %.lr.ph.i.i ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader703 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 %.030.i.i ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.aq, align 1, !noalias !52 ; 3 uses
  %i.ar = add i64 %.0.copyload.i.i, 4557430888798830399
  %i.as = add i64 %.0.copyload.i.i, 2676586395008836901
  %i.at = xor i64 %i.ar, %i.as
  %i.au = lshr i64 %i.at, 2
  %i.av = and i64 %i.au, 2314885530818453536
  %i.aw = xor i64 %i.av, %.0.copyload.i.i
  store i64 %i.aw, ptr %i.aq, align 1, !noalias !52
  %i.ax = add nuw i64 %.030.i.i, 8                ; 3 uses
  %i.ay = or disjoint i64 %i.ax, 7
  %i.az = icmp ult i64 %i.ay, %i.u
  br i1 %i.az, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !55

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block682, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit.i
  %.0.lcssa.i.i = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit.i ], [ %i.z, %middle.block682 ], [ %i.ax, %.lr.ph.i.i ] ; 3 uses
  %i.ba = icmp ult i64 %.0.lcssa.i.i, %i.u
  br i1 %i.ba, label %bb.l, label %_ZN3ada4idna9ascii_mapEPcm.exit.i

bb.l:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !noalias !52
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 %.0.lcssa.i.i ; 2 uses
  %i.bc = sub nuw i64 %i.u, %.0.lcssa.i.i         ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.bb, i64 %i.bc, i1 false), !noalias !52
  %.0..0..0..0..0..0..0..0..i.i = load i64, ptr %i.a, align 8, !noalias !52 ; 3 uses
  %i.bd = add i64 %.0..0..0..0..0..0..0..0..i.i, 4557430888798830399
  %i.be = add i64 %.0..0..0..0..0..0..0..0..i.i, 2676586395008836901
  %i.bf = xor i64 %i.bd, %i.be
  %i.bg = lshr i64 %i.bf, 2
  %i.bh = and i64 %i.bg, 2314885530818453536
  %i.bi = xor i64 %i.bh, %.0..0..0..0..0..0..0..0..i.i
  store i64 %i.bi, ptr %i.a, align 8, !noalias !52
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr nonnull align 8 %i.a, i64 %i.bc, i1 false), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN3ada4idna9ascii_mapEPcm.exit.i

_ZN3ada4idna9ascii_mapEPcm.exit.i:                ; preds = %bb.l, %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !52
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 17 uses
  store ptr %i.bj, ptr %4, align 8, !noalias !52
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  store i64 0, ptr %i.bk, align 8, !noalias !52
  store i8 0, ptr %i.bj, align 8, !noalias !52
  %i.bl = load i64, ptr %i.r, align 8, !noalias !52 ; 2 uses
  %.not159.i = icmp eq i64 %i.bl, 0
  br i1 %.not159.i, label %._crit_edge.thread.i, label %.lr.ph.i77

._crit_edge.thread.i:                             ; preds = %_ZN3ada4idna9ascii_mapEPcm.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.bm, ptr %0, align 8, !alias.scope !52
  br label %bb.ax

.lr.ph.i77:                                       ; preds = %_ZN3ada4idna9ascii_mapEPcm.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 11 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.aw, %.lr.ph.i77
  %i.bt = phi i64 [ %i.bl, %.lr.ph.i77 ], [ %i.hk, %bb.aw ] ; 5 uses
  %.0160.i = phi i64 [ 0, %.lr.ph.i77 ], [ %i.cg, %bb.aw ] ; 6 uses
  %i.bu = icmp ult i64 %.0160.i, %i.bt
  %.pre.i = load ptr, ptr %3, align 8, !noalias !52 ; 3 uses
  br i1 %i.bu, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.m
  %i.bv = sub nuw i64 %i.bt, %.0160.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.0160.i
  %i.bx = call ptr @memchr(ptr noundef %i.bw, i32 noundef 46, i64 noundef %i.bv) #31, !noalias !52 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %.pre.i to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 2 uses
  %i.cb = icmp ne i64 %i.ca, -1                   ; 2 uses
  %spec.select106.i = select i1 %i.cb, i64 %i.ca, i64 %i.bt
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.m
  %i.cc = phi i1 [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.i ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ false, %bb.m ] ; 2 uses
  %.pn.i = phi i64 [ %spec.select106.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.i ], [ %i.bt, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ %i.bt, %bb.m ] ; 3 uses
  %i.cd = sub i64 %.pn.i, %.0160.i                ; 12 uses
  %i.ce = zext i1 %i.cc to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.0160.i ; 6 uses
  %i.cg = add i64 %.pn.i, %i.ce                   ; 2 uses
  %i.ch = icmp eq i64 %.pn.i, %.0160.i
  br i1 %i.ch, label %bb.am, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i
  %.not.i.i.i = icmp ult i64 %i.cd, 4
  br i1 %.not.i.i.i, label %._crit_edge180.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

._crit_edge180.i:                                 ; preds = %bb.n
  %.pre181.i = load i64, ptr %i.bk, align 8, !noalias !52
  br label %bb.ag

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.n
  %i.ci = load i32, ptr %i.cf, align 1
  %i.cj = icmp ne i32 %i.ci, 757952120
  %i.ck = zext i1 %i.cj to i32
  %i.cl = icmp eq i32 %i.ck, 0
  %.pre182.i = load i64, ptr %i.bk, align 8, !noalias !52 ; 6 uses
  br i1 %i.cl, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit.i, label %bb.ag

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %i.cm = sub i64 9223372036854775807, %.pre182.i
  %i.cn = icmp ult i64 %i.cm, %i.cd
  br i1 %i.cn, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.o:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #32, !noalias !52
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit.i
  %i.co = add i64 %.pre182.i, %i.cd               ; 3 uses
  %i.cp = load ptr, ptr %4, align 8, !noalias !52 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.bj
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cr = icmp ult i64 %.pre182.i, 16
  call void @llvm.assume(i1 %i.cr)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cs = load i64, ptr %i.bj, align 8, !noalias !52
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.ct = phi i64 [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.co, %i.ct
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.pre182.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cu, ptr nonnull align 1 %i.cf, i64 %i.cd, i1 false), !noalias !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.pre182.i, i64 noundef 0, ptr noundef nonnull %i.cf, i64 noundef %i.cd), !noalias !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i: ; preds = %bb.q, %bb.p
  store i64 %i.co, ptr %i.bk, align 8, !noalias !52
  %i.cv = load ptr, ptr %4, align 8, !noalias !52
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.co
  store i8 0, ptr %i.cw, align 1, !noalias !52
  %i.cx = load ptr, ptr %4, align 8, !noalias !52
  %i.cy = load i64, ptr %i.bk, align 8, !noalias !52
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cy
  %i.da = sub i64 0, %i.cd
  %i.db = getelementptr inbounds i8, ptr %i.cz, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dd = add i64 %i.cd, -4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !52
  store ptr %i.bn, ptr %5, align 8, !noalias !52
  store i64 0, ptr %i.bo, align 8, !noalias !52
  store i32 0, ptr %i.bn, align 8, !noalias !52
  %i.de = call noundef zeroext i1 @_ZN3ada4idna17punycode_to_utf32ESt17basic_string_viewIcSt11char_traitsIcEERNSt7__cxx1112basic_stringIDiS2_IDiESaIDiEEE(i64 %i.dd, ptr nonnull %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %5), !noalias !52
  br i1 %i.de, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i
end_hunk_1
begin_hunk_2_@_ZN3ada6parser14parse_url_implINS_3urlELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  %i.gx = getelementptr inbounds i8, ptr %i.gn, i64 -16 ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  %i.hq = ptrtoint ptr %.sroa.28.216321639 to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.hz = icmp eq ptr %3, null
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.28.216321639, i64 1
  %i.ib = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 9 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN3ada7helpers10prune_hashERSt17basic_string_viewIcSt11char_traitsIcEE.exit, %.critedge326
  %.02406 = phi i32 [ 1, %_ZN3ada7helpers10prune_hashERSt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.18, %.critedge326 ]
  %.02682405 = phi i64 [ 0, %_ZN3ada7helpers10prune_hashERSt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.15283, %.critedge326 ] ; 6 uses
  %.sroa.01503.02403 = phi i16 [ undef, %_ZN3ada7helpers10prune_hashERSt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.sroa.01503.2, %.critedge326 ] ; 45 uses
  switch i32 %.02406, label %bb.ts [
    i32 1, label %bb.ai
    i32 16, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit877
    i32 18, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit824
    i32 15, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit649
  ]

.preheader1981:                                   ; preds = %.critedge326.jt2
  %.not3242400 = icmp eq i64 %spec.select347, %.sroa.01347.1
  br i1 %.not3242400, label %.critedge326.jt4.thread, label %.lr.ph2402

bb.ai:                                            ; preds = %bb.ah
  %.not325 = icmp eq i64 %.02682405, %.sroa.01347.1
  br i1 %.not325, label %.critedge326.jt4.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.28.216321639, i64 %.02682405
  %i.ie = load i8, ptr %i.id, align 1
  %i.if = or i8 %i.ie, 32
  %i.ig = add i8 %i.if, -97
  %spec.select.i544 = icmp ult i8 %i.ig, 26       ; 2 uses
  %i.ih = zext i1 %spec.select.i544 to i64
  %spec.select347 = add i64 %.02682405, %i.ih     ; 4 uses
  %.not.jt2 = icmp ugt i64 %spec.select347, %.sroa.01347.1 ; 2 uses
  br i1 %spec.select.i544, label %.critedge326.jt2, label %.critedge326.jt4

.lr.ph2402:                                       ; preds = %.preheader1981, %bb.ak
  %.12692401 = phi i64 [ %i.io, %bb.ak ], [ %spec.select347, %.preheader1981 ] ; 21 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.28.216321639, i64 %.12692401
  %i.ij = load i8, ptr %i.ii, align 1             ; 2 uses
  %i.ik = zext i8 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr @_ZN3ada7unicodeL19is_alnum_plus_tableE, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !range !73, !noundef !74
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %bb.ak, label %.critedge

bb.ak:                                            ; preds = %.lr.ph2402
  %i.io = add i64 %.12692401, 1                   ; 2 uses
  %.not324 = icmp eq i64 %i.io, %.sroa.01347.1
  br i1 %.not324, label %.critedge326.jt4.thread, label %.lr.ph2402, !llvm.loop !91

.critedge:                                        ; preds = %.lr.ph2402
  %i.ip = icmp eq i8 %i.ij, 58
  br i1 %i.ip, label %bb.al, label %.critedge326.jt4.thread

bb.al:                                            ; preds = %.critedge
  %i.iq = icmp eq i64 %.12692401, 0
  br i1 %i.iq, label %._crit_edge.i.i.i.i553.thread, label %bb.am

._crit_edge.i.i.i.i553.thread:                    ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  store ptr %i.ib, ptr %25, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.am:                                            ; preds = %bb.al
  %i.ir = shl i64 %.12692401, 1
  %i.is = load i8, ptr %.sroa.28.216321639, align 1 ; 2 uses
  %i.it = zext i8 %i.is to i64
  %i.iu = add i64 %i.ir, %i.it                    ; 2 uses
  %i.iv = trunc i64 %i.iu to i8
  %i.iw = and i8 %i.iv, 7                         ; 4 uses
  %i.ix = and i64 %i.iu, 7
  %i.iy = getelementptr inbounds nuw [16 x i8], ptr @_ZN3ada6scheme7detailsL15is_special_listE, i64 %i.ix ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 2 uses
  %i.iz = load i8, ptr %.sroa.4.0.copyload.i, align 1
  %i.ja = icmp eq i8 %i.iz, %i.is
  br i1 %i.ja, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit7.i, label %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit7.i: ; preds = %bb.am
  %.sroa.0.0.copyload.i548 = load i64, ptr %i.iy, align 16 ; 2 uses
  %i.jb = add i64 %.sroa.0.0.copyload.i548, -1    ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 1
  %i.jd = icmp eq i64 %.sroa.0.0.copyload.i548, %.12692401
  br i1 %i.jd, label %bb.an, label %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.an:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit7.i
  %i.je = icmp eq i64 %i.jb, 0
  br i1 %i.je, label %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.an
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.jc, ptr nonnull %i.ia, i64 %i.jb)
  %i.jf = icmp ne i32 %bcmp.i.i, 0
  %.not.i355 = icmp eq i8 %i.iw, 1
  %or.cond1892 = or i1 %.not.i355, %i.jf
  br i1 %or.cond1892, label %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %bb.ao

_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.an
  %.not.i355.old = icmp eq i8 %i.iw, 1
  br i1 %.not.i355.old, label %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit
  store i8 %i.iw, ptr %i.f, align 1
  br label %_ZN3ada3url12parse_schemeILb0EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit7.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.am, %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  store ptr %i.ib, ptr %25, align 8
  %i.jg = icmp ugt i64 %.12692401, 15
  br i1 %i.jg, label %bb.ap, label %._crit_edge.i.i.i.i553

bb.ap:                                            ; preds = %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  %i.jh = icmp slt i64 %.12692401, 0
  br i1 %i.jh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.123) #32
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.ji = add nuw i64 %.12692401, 1               ; 2 uses
  %i.jj = icmp slt i64 %i.ji, 0
  br i1 %i.jj, label %bb.as, label %._crit_edge.i.i.i.i553.thread2914, !prof !18

bb.as:                                            ; preds = %bb.ar
  call void @_ZSt17__throw_bad_allocv() #32
  unreachable

._crit_edge.i.i.i.i553.thread2914:                ; preds = %bb.ar
  %i.jk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ji) #33 ; 2 uses
  store ptr %i.jk, ptr %25, align 8
  store i64 %.12692401, ptr %i.ib, align 8
  br label %bb.au

._crit_edge.i.i.i.i553:                           ; preds = %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  %cond = icmp eq i64 %.12692401, 1
  br i1 %cond, label %bb.at, label %bb.au

bb.at:                                            ; preds = %._crit_edge.i.i.i.i553
  %i.jl = load i8, ptr %.sroa.28.216321639, align 1
  store i8 %i.jl, ptr %i.ib, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.au:                                            ; preds = %._crit_edge.i.i.i.i553.thread2914, %._crit_edge.i.i.i.i553
  %i.jm = phi ptr [ %i.jk, %._crit_edge.i.i.i.i553.thread2914 ], [ %i.ib, %._crit_edge.i.i.i.i553 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jm, ptr nonnull align 1 %.sroa.28.216321639, i64 %.12692401, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i553.thread, %bb.at, %bb.au
  %i.jn = phi ptr [ %i.ib, %._crit_edge.i.i.i.i553.thread ], [ %i.jm, %bb.au ], [ %i.ib, %bb.at ]
  store i64 %.12692401, ptr %i.ic, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %.12692401
  store i8 0, ptr %i.jo, align 1
  %i.jp = load ptr, ptr %25, align 8              ; 3 uses
  %i.jq = load i64, ptr %i.ic, align 8            ; 5 uses
  %i.jr = icmp ugt i64 %i.jq, 7
  br i1 %i.jr, label %.lr.ph.i555.preheader, label %._crit_edge.i

.lr.ph.i555.preheader:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  %i.js = add i64 %i.jq, -8                       ; 2 uses
  %i.jt = lshr i64 %i.js, 3
  %i.ju = add nuw nsw i64 %i.jt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.js, 24
  br i1 %min.iters.check, label %.lr.ph.i555.preheader3577, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i555.preheader
  %n.vec = and i64 %i.ju, 4611686018427387900     ; 3 uses
  %i.jv = shl i64 %n.vec, 3                       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jw = shl i64 %index, 3
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jw ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.jx, align 1 ; 3 uses
  %wide.load3554 = load <2 x i64>, ptr %i.jy, align 1 ; 3 uses
  %i.jz = add <2 x i64> %wide.load, splat (i64 4557430888798830399)
  %i.ka = add <2 x i64> %wide.load3554, splat (i64 4557430888798830399)
  %i.kb = add <2 x i64> %wide.load, splat (i64 2676586395008836901)
  %i.kc = add <2 x i64> %wide.load3554, splat (i64 2676586395008836901)
  %i.kd = xor <2 x i64> %i.jz, %i.kb
  %i.ke = xor <2 x i64> %i.ka, %i.kc
  %i.kf = lshr <2 x i64> %i.kd, splat (i64 2)
  %i.kg = lshr <2 x i64> %i.ke, splat (i64 2)
  %i.kh = and <2 x i64> %i.kf, splat (i64 2314885530818453536)
  %i.ki = and <2 x i64> %i.kg, splat (i64 2314885530818453536)
  %i.kj = xor <2 x i64> %i.kh, %wide.load
  %i.kk = xor <2 x i64> %i.ki, %wide.load3554
  store <2 x i64> %i.kj, ptr %i.jx, align 1
  store <2 x i64> %i.kk, ptr %i.jy, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kl = icmp eq i64 %index.next, %n.vec
  br i1 %i.kl, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ju, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i555.preheader3577

.lr.ph.i555.preheader3577:                        ; preds = %.lr.ph.i555.preheader, %middle.block
  %.03638.i.ph = phi i64 [ 0, %.lr.ph.i555.preheader ], [ %i.jv, %middle.block ]
  br label %.lr.ph.i555

.lr.ph.i555:                                      ; preds = %.lr.ph.i555.preheader3577, %.lr.ph.i555
  %.03638.i = phi i64 [ %i.kt, %.lr.ph.i555 ], [ %.03638.i.ph, %.lr.ph.i555.preheader3577 ] ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.jp, i64 %.03638.i ; 2 uses
  %.0.copyload.i = load i64, ptr %i.km, align 1   ; 3 uses
  %i.kn = add i64 %.0.copyload.i, 4557430888798830399
  %i.ko = add i64 %.0.copyload.i, 2676586395008836901
  %i.kp = xor i64 %i.kn, %i.ko
  %i.kq = lshr i64 %i.kp, 2
  %i.kr = and i64 %i.kq, 2314885530818453536
  %i.ks = xor i64 %i.kr, %.0.copyload.i
  store i64 %i.ks, ptr %i.km, align 1
  %i.kt = add nuw i64 %.03638.i, 8                ; 3 uses
  %i.ku = or disjoint i64 %i.kt, 7
  %i.kv = icmp ult i64 %i.ku, %i.jq
  br i1 %i.kv, label %.lr.ph.i555, label %._crit_edge.i, !llvm.loop !93

._crit_edge.i:                                    ; preds = %.lr.ph.i555, %middle.block, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  %.036.lcssa.i = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit ], [ %i.jv, %middle.block ], [ %i.kt, %.lr.ph.i555 ] ; 3 uses
  %i.kw = icmp ult i64 %.036.lcssa.i, %i.jq
  br i1 %i.kw, label %bb.av, label %_ZN3ada7unicode14to_lower_asciiEPcm.exit

bb.av:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jp, i64 %.036.lcssa.i ; 2 uses
  %i.ky = sub nuw i64 %i.jq, %.036.lcssa.i        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.kx, i64 %i.ky, i1 false)
  %.0..0..0..0..0..0..i = load i64, ptr %i.a, align 8 ; 3 uses
  %i.kz = add i64 %.0..0..0..0..0..0..i, 4557430888798830399
  %i.la = add i64 %.0..0..0..0..0..0..i, 2676586395008836901
  %i.lb = xor i64 %i.kz, %i.la
  %i.lc = lshr i64 %i.lb, 2
  %i.ld = and i64 %i.lc, 2314885530818453536
  %i.le = xor i64 %i.ld, %.0..0..0..0..0..0..i
  store i64 %i.le, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kx, ptr nonnull align 8 %i.a, i64 %i.ky, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN3ada7unicode14to_lower_asciiEPcm.exit

_ZN3ada7unicode14to_lower_asciiEPcm.exit:         ; preds = %._crit_edge.i, %bb.av
  call void @_ZN3ada3url10set_schemeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(32) %25) #31
  %i.lf = load ptr, ptr %25, align 8              ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.ib
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN3ada7unicode14to_lower_asciiEPcm.exit
  %i.lh = load i64, ptr %i.ib, align 8
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.li) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN3ada7unicode14to_lower_asciiEPcm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31
  %.pr = load i8, ptr %i.f, align 1
  br label %_ZN3ada3url12parse_schemeILb0EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN3ada3url12parse_schemeILb0EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ao
  %i.lj = phi i8 [ %.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.iw, %bb.ao ] ; 3 uses
  %i.lk = icmp eq i8 %i.lj, 6
  br i1 %i.lk, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %_ZN3ada3url12parse_schemeILb0EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ll = icmp ne i8 %i.lj, 1                     ; 2 uses
  %or.cond = and i1 %i.x, %i.ll
  br i1 %or.cond, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.lm = load i8, ptr %i.fu, align 1
  %i.ln = icmp eq i8 %i.lm, %i.lj
  br i1 %i.ln, label %.critedge326.jt14, label %.critedge326.jt13

bb.ay:                                            ; preds = %bb.aw
  br i1 %i.ll, label %.critedge326.jt13, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lo = add i64 %.12692401, 1                   ; 2 uses
  %i.lp = icmp ult i64 %i.lo, %.sroa.01347.1
  br i1 %i.lp, label %bb.ba, label %.critedge326.jt18

bb.ba:                                            ; preds = %bb.az
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.28.216321639, i64 %i.lo
  %i.lr = load i8, ptr %i.lq, align 1
  %i.ls = icmp eq i8 %i.lr, 47
  br i1 %i.ls, label %.critedge326.jt11, label %.critedge326.jt18

bb.bb:                                            ; preds = %_ZN3ada3url12parse_schemeILb0EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.lt = add i64 %.12692401, 1
  br label %.critedge326.jt8.preheader

.critedge326.jt4.thread:                          ; preds = %bb.ak, %.preheader1981, %.critedge, %bb.ai, %.critedge326.jt4
  %.026824052893 = phi i64 [ 0, %.critedge ], [ %spec.select347, %.critedge326.jt4 ], [ %.sroa.01347.1, %bb.ai ], [ 0, %.preheader1981 ], [ 0, %bb.ak ] ; 3 uses
  br i1 %i.hz, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %.critedge326.jt4.thread
  %i.lu = load i8, ptr %i.fz, align 1, !range !73, !noundef !74
  %i.lv = trunc nuw i8 %i.lu to i1
  br i1 %i.lv, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  br i1 %.sroa.14.0, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd, %.critedge326.jt4.thread
  store i8 0, ptr %i.c, align 8
  br label %.critedge346.critedge

bb.bf:                                            ; preds = %bb.bd
  %i.lw = icmp eq i64 %.026824052893, %.sroa.01347.1
  br i1 %i.lw, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.hp)
  %i.lx = load i8, ptr %i.fu, align 1
  store i8 %i.lx, ptr %i.f, align 1
  %i.ly = load i8, ptr %i.fz, align 1, !range !73, !noundef !74
  store i8 %i.ly, ptr %i.d, align 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.fw)
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.fy, ptr noundef nonnull align 8 dereferenceable(40) %i.fx)
  call void @_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(272) %0, i64 %.sroa.01341.0, ptr %.sroa.9.0)
  br label %.critedge346.critedge

bb.bh:                                            ; preds = %bb.bc, %bb.bf
  %i.lz = load i8, ptr %i.fu, align 1
  %.not323 = icmp eq i8 %i.lz, 6
  br i1 %.not323, label %.critedge326.jt8.preheader, label %.critedge326.jt6.preheader

.critedge326.jt6.preheader:                       ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit624, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.bh
  %.15283.jt6.ph = phi i64 [ %.026824052893, %bb.bh ], [ %i.csa, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %i.csa, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit624 ] ; 2 uses
  %.not.jt63524 = icmp ugt i64 %.15283.jt6.ph, %.sroa.01347.1
  br i1 %.not.jt63524, label %.loopexit3090, label %.lr.ph3526, !llvm.loop !94

.lr.ph3526:                                       ; preds = %.critedge326.jt6.preheader
  br label %bb.df, !llvm.loop !94

.critedge326.jt8.preheader:                       ; preds = %bb.bb, %bb.bh
  %.15283.jt8.ph = phi i64 [ %i.lt, %bb.bb ], [ %.026824052893, %bb.bh ] ; 2 uses
  %.not.jt83538 = icmp ugt i64 %.15283.jt8.ph, %.sroa.01347.1
  br i1 %.not.jt83538, label %.loopexit3090, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1218.lr.ph, !llvm.loop !94

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1218.lr.ph: ; preds = %.critedge326.jt8.preheader
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1218, !llvm.loop !94

bb.bi:                                            ; preds = %.critedge326.jt0
  %i.ma = icmp ult i64 %.15283.jt0, %.sroa.01347.1
  br i1 %i.ma, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i557, label %.critedge326.jt3

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i557:    ; preds = %bb.bi
  %i.mb = sub nuw i64 %.sroa.01347.1, %.15283.jt0
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.28.216321639, i64 %.15283.jt0
  %i.md = call ptr @memchr(ptr noundef %i.mc, i32 noundef 64, i64 noundef %i.mb) #31 ; 2 uses
  %.not.i558 = icmp eq ptr %i.md, null
  %i.me = ptrtoint ptr %i.md to i64
  %i.mf = sub i64 %i.me, %i.hq
  %i.mg = icmp eq i64 %i.mf, -1
  %or.cond1898 = select i1 %.not.i558, i1 true, i1 %i.mg
  br i1 %or.cond1898, label %.critedge326.jt3, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

.preheader1982._crit_edge:                        ; preds = %bb.dc
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %i.rl, i64 noundef %.sroa.01347.1) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i557, %bb.dc
  %.32712396 = phi i64 [ %i.rl, %bb.dc ], [ %.15283.jt0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i557 ] ; 5 uses
  %.02842395 = phi i8 [ %.1285, %bb.dc ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i557 ] ; 3 uses
  %.02872394 = phi i8 [ %.1288, %bb.dc ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i557 ] ; 2 uses
  %i.mh = sub nuw i64 %.sroa.01347.1, %.32712396  ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.28.216321639, i64 %.32712396 ; 10 uses
  %i.mj = load i8, ptr %i.f, align 1
  %i.mk = icmp ne i8 %i.mj, 1                     ; 2 uses
  %.not.i3562391 = icmp samesign eq i64 %.32712396, %.sroa.01347.1 ; 2 uses
  br i1 %i.mk, label %.preheader, label %.preheader1973
end_hunk_2
begin_hunk_3_@_ZN3ada6parser14parse_url_implINS_3urlELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
bb.tb:                                            ; preds = %bb.qi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1212, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.cpc = load i8, ptr %i.m, align 8, !range !73, !noundef !74
  %i.cpd = trunc nuw i8 %i.cpc to i1
  %i.cpe = load i64, ptr %i.gd, align 8
  %i.cpf = icmp eq i64 %i.cpe, 9
  %or.cond3309 = select i1 %i.cpd, i1 %i.cpf, i1 false
  br i1 %or.cond3309, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.critedge326.jt17

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.tb
  %i.cpg = load ptr, ptr %i.ft, align 8           ; 2 uses
  %i.cph = load i64, ptr %i.cpg, align 1
  %i.cpi = xor i64 %i.cph, 8317981851476258668
  %i.cpj = getelementptr i8, ptr %i.cpg, i64 8
  %i.cpk = load i8, ptr %i.cpj, align 1
  %i.cpl = zext i8 %i.cpk to i64
  %i.cpm = xor i64 %i.cpl, 116
  %i.cpn = or i64 %i.cpi, %i.cpm
  %i.cpo = icmp ne i64 %i.cpn, 0
  %i.cpp = zext i1 %i.cpo to i32
  %i.cpq = icmp eq i32 %i.cpp, 0
  br i1 %i.cpq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge326.jt17

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cpr = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRA1_KcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(40) %i.ft, ptr noundef nonnull align 1 dereferenceable(1) @.str.48) ; 0 uses
  br label %.critedge326.jt17

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1218: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1218.lr.ph, %.critedge342.jt8
  %.15283.jt83539 = phi i64 [ %.15283.jt8.ph, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1218.lr.ph ], [ %i.crs, %.critedge342.jt8 ] ; 16 uses
  %i.cps = getelementptr inbounds nuw i8, ptr %.sroa.28.216321639, i64 %.15283.jt83539 ; 5 uses
  store i8 6, ptr %i.f, align 1
  %i.cpt = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRA1_KcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(40) %i.ft, ptr noundef nonnull align 1 dereferenceable(1) @.str.48) ; 0 uses
  %.not306 = icmp eq i64 %.15283.jt83539, %.sroa.01347.1 ; 2 uses
  br i1 %.not306, label %bb.td, label %bb.tc

bb.tc:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1218
  %i.cpu = load i8, ptr %i.cps, align 1
  switch i8 %i.cpu, label %bb.td [
    i8 47, label %.critedge326.jt10
    i8 92, label %.critedge326.jt10
  ]

bb.td:                                            ; preds = %bb.tc, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1218
  br i1 %i.x, label %bb.te, label %.critedge326.jt16

bb.te:                                            ; preds = %bb.td
  %i.cpv = load i8, ptr %i.fu, align 1
  %i.cpw = icmp eq i8 %i.cpv, 6
  br i1 %i.cpw, label %bb.tf, label %.critedge326.jt16

bb.tf:                                            ; preds = %bb.te
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.ft, ptr noundef nonnull align 8 dereferenceable(40) %i.fv)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.fw)
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.fy, ptr noundef nonnull align 8 dereferenceable(40) %i.fx)
  %i.cpx = load i8, ptr %i.fz, align 1, !range !73, !noundef !74
  store i8 %i.cpx, ptr %i.d, align 1
  br i1 %.not306, label %.critedge342.jt8, label %bb.tg

bb.tg:                                            ; preds = %bb.tf
  %i.cpy = sub nuw i64 %.sroa.01347.1, %.15283.jt83539 ; 2 uses
  %i.cpz = load i8, ptr %i.cps, align 1
  %i.cqa = icmp eq i8 %i.cpz, 63
  br i1 %i.cqa, label %.critedge326.jt15, label %bb.th

bb.th:                                            ; preds = %bb.tg
  %i.cqb = load i8, ptr %i.r, align 8, !range !73, !noundef !74
  %i.cqc = trunc nuw i8 %i.cqb to i1
  store i8 0, ptr %i.r, align 8
  br i1 %i.cqc, label %bb.ti, label %_ZN3ada3url12clear_searchEv.exit1221

bb.ti:                                            ; preds = %bb.th
  %i.cqd = load ptr, ptr %i.fy, align 8           ; 2 uses
  %i.cqe = icmp eq ptr %i.cqd, %i.ga
  br i1 %i.cqe, label %_ZN3ada3url12clear_searchEv.exit1221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1219: ; preds = %bb.ti
  %i.cqf = load i64, ptr %i.ga, align 8
  %i.cqg = add i64 %i.cqf, 1
  call void @_ZdlPvm(ptr noundef %i.cqd, i64 noundef %i.cqg) #34
  br label %_ZN3ada3url12clear_searchEv.exit1221

_ZN3ada3url12clear_searchEv.exit1221:             ; preds = %bb.ti, %bb.th, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1219
  %i.cqh = icmp ugt i64 %i.cpy, 1
  br i1 %i.cqh, label %bb.tj, label %bb.tn

bb.tj:                                            ; preds = %_ZN3ada3url12clear_searchEv.exit1221
  %i.cqi = load i8, ptr %i.cps, align 1
  %i.cqj = or i8 %i.cqi, 32
  %i.cqk = add i8 %i.cqj, -97
  %spec.select.i.i1222 = icmp ult i8 %i.cqk, 26
  br i1 %spec.select.i.i1222, label %bb.tk, label %bb.tn

bb.tk:                                            ; preds = %bb.tj
  %i.cql = getelementptr inbounds nuw i8, ptr %i.cps, i64 1
  %i.cqm = load i8, ptr %i.cql, align 1
  switch i8 %i.cqm, label %bb.tn [
    i8 58, label %bb.tl
    i8 124, label %bb.tl
  ]

bb.tl:                                            ; preds = %bb.tk, %bb.tk
  %i.cqn = icmp eq i64 %i.cpy, 2
  br i1 %i.cqn, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223, label %bb.tm

bb.tm:                                            ; preds = %bb.tl
  %i.cqo = getelementptr inbounds nuw i8, ptr %i.cps, i64 2
  %i.cqp = load i8, ptr %i.cqo, align 1
  switch i8 %i.cqp, label %bb.tn [
    i8 47, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223
    i8 92, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223
    i8 63, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223
    i8 35, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223
  ]

bb.tn:                                            ; preds = %bb.tm, %bb.tk, %bb.tj, %_ZN3ada3url12clear_searchEv.exit1221
  %i.cqq = load i8, ptr %i.f, align 1
  %i.cqr = icmp eq i8 %i.cqq, 6
  %.pre2624 = load i64, ptr %i.q, align 8         ; 7 uses
  br i1 %i.cqr, label %bb.to, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread

bb.to:                                            ; preds = %bb.tn
  %i.cqs = icmp ugt i64 %.pre2624, 1
  br i1 %i.cqs, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1225, label %bb.tp

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1225:   ; preds = %bb.to
  %i.cqt = load ptr, ptr %i.o, align 8            ; 4 uses
  %i.cqu = add i64 %.pre2624, -1
  %i.cqv = getelementptr inbounds nuw i8, ptr %i.cqt, i64 1
  %i.cqw = call ptr @memchr(ptr noundef nonnull %i.cqv, i32 noundef 47, i64 noundef %i.cqu) #31 ; 2 uses
  %.not.i1226 = icmp eq ptr %i.cqw, null
  %i.cqx = ptrtoint ptr %i.cqw to i64
  %i.cqy = ptrtoint ptr %i.cqt to i64
  %i.cqz = sub i64 %i.cqx, %i.cqy
  %i.cra = icmp eq i64 %i.cqz, -1
  %or.cond1909 = or i1 %.not.i1226, %i.cra
  %i.crb = add i64 %.pre2624, -3
  %i.crc = icmp ult i64 %i.crb, -2
  %or.cond3311 = select i1 %or.cond1909, i1 %i.crc, i1 false
  br i1 %or.cond3311, label %bb.tq, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread

bb.tp:                                            ; preds = %bb.to
  %i.crd = icmp eq i64 %.pre2624, 0
  br i1 %i.crd, label %.critedge326.jt16, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread

bb.tq:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1225
  %i.cre = getelementptr inbounds nuw i8, ptr %i.cqt, i64 1
  %i.crf = load i8, ptr %i.cre, align 1
  %i.crg = or i8 %i.crf, 32
  %i.crh = add i8 %i.crg, -97
  %spec.select.i.i1235 = icmp ult i8 %i.crh, 26
  br i1 %spec.select.i.i1235, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236: ; preds = %bb.tq
  %i.cri = getelementptr inbounds nuw i8, ptr %i.cqt, i64 2
  %i.crj = load i8, ptr %i.cri, align 1
  %i.crk = icmp eq i8 %i.crj, 58
  br i1 %i.crk, label %.critedge326.jt16, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread: ; preds = %bb.tn
  %.not.i1237 = icmp eq i64 %.pre2624, 0
  br i1 %.not.i1237, label %.critedge326.jt16, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread: ; preds = %bb.tp, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236, %bb.tq, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1225, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread
  %i.crl = load ptr, ptr %i.o, align 8            ; 2 uses
  %.not13.i12403542 = icmp eq i64 %.pre2624, 0
  br i1 %.not13.i12403542, label %.critedge326.jt16, label %.lr.ph3544

bb.tr:                                            ; preds = %.lr.ph3544
  %.not13.i1240 = icmp eq i64 %i.crm, 0
  br i1 %.not13.i1240, label %.critedge326.jt16, label %.lr.ph3544, !llvm.loop !97

.lr.ph3544:                                       ; preds = %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread, %bb.tr
  %.1.i12393543 = phi i64 [ %i.crm, %bb.tr ], [ %.pre2624, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread ]
  %i.crm = add i64 %.1.i12393543, -1              ; 5 uses
  %i.crn = getelementptr inbounds nuw i8, ptr %i.crl, i64 %i.crm
  %i.cro = load i8, ptr %i.crn, align 1
  %i.crp = icmp eq i8 %i.cro, 47
  br i1 %i.crp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1244, label %bb.tr, !llvm.loop !97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1244: ; preds = %.lr.ph3544
  %i.crq = getelementptr inbounds nuw i8, ptr %i.crl, i64 %i.crm
  store i64 %i.crm, ptr %i.q, align 8
  store i8 0, ptr %i.crq, align 1
  br label %.critedge326.jt16

_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223: ; preds = %bb.tm, %bb.tm, %bb.tm, %bb.tm, %bb.tl
  store i64 0, ptr %i.q, align 8
  %i.crr = load ptr, ptr %i.o, align 8
  store i8 0, ptr %i.crr, align 1
  store i8 1, ptr %i.d, align 1
  br label %.critedge326.jt16

.critedge342.jt8:                                 ; preds = %bb.tf
  %i.crs = add i64 %.15283.jt83539, 1             ; 2 uses
  %.not.jt8 = icmp ugt i64 %i.crs, %.sroa.01347.1
  br i1 %.not.jt8, label %.loopexit3090, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1218, !llvm.loop !94

bb.ts:                                            ; preds = %bb.ah
  unreachable

.critedge326:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit919.thread, %bb.mz, %.sink.split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i931, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1092, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865
  %.sroa.01503.2 = phi i16 [ %.sroa.01503.024032907, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i931 ], [ %.sroa.01503.024032907, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit919.thread ], [ %.sroa.01503.024032907, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.sroa.01503.02403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860 ], [ %.sroa.01503.024032907, %bb.mz ], [ %.sroa.01503.024032907, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.sroa.01503.024032907, %.sink.split.i.i ], [ %.sroa.01503.024032907, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1092 ], [ %.sroa.01503.024032907, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ], [ %.sroa.01503.02403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865 ]
  %.15283 = phi i64 [ %.11279296629742984, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i931 ], [ %.11279296629742984, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit919.thread ], [ %.11279296629742984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.92772950, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860 ], [ %.11279296629742984, %bb.mz ], [ %.11279296629742984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.11279296629742984, %.sink.split.i.i ], [ %.11279296629742984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1092 ], [ %.11279296629742984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ], [ %.92772951, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865 ] ; 2 uses
  %.18 = phi i32 [ %.12296729732989, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i931 ], [ %.12296729732989, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit919.thread ], [ %.12296729732989, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.82952, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860 ], [ %.12296729732989, %bb.mz ], [ %.12296729732989, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.12296729732989, %.sink.split.i.i ], [ %.12296729732989, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1092 ], [ %.12296729732989, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ], [ %.82953, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865 ]
  %.not = icmp ugt i64 %.15283, %.sroa.01347.1
  br i1 %.not, label %.loopexit3090, label %bb.ah, !llvm.loop !94

.critedge326.jt19:                                ; preds = %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit416, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit416.thread1746, %bb.fc
  %i.crt = add i64 %i.abl, 1                      ; 5 uses
  %.not.jt19 = icmp ugt i64 %i.crt, %.sroa.01347.1
  br i1 %.not.jt19, label %.loopexit3090, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit869, !llvm.loop !94

.critedge326.jt10:                                ; preds = %bb.tc, %bb.tc
  %i.cru = add i64 %.15283.jt83539, 1             ; 14 uses
  %.not.jt10 = icmp ugt i64 %i.cru, %.sroa.01347.1
  br i1 %.not.jt10, label %.loopexit3090, label %bb.pn, !llvm.loop !94

.critedge326.jt9:                                 ; preds = %bb.po, %bb.po
  %i.crv = add i64 %.15283.jt83539, 2             ; 10 uses
  %.not.jt9 = icmp ugt i64 %i.crv, %.sroa.01347.1
  br i1 %.not.jt9, label %.loopexit3090, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1114, !llvm.loop !94

.critedge326.jt12:                                ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.dv
  %.15283.jt12 = phi i64 [ %i.ua, %bb.dv ], [ %i.ru, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ] ; 2 uses
  %.not.jt12 = icmp ugt i64 %.15283.jt12, %.sroa.01347.1
  br i1 %.not.jt12, label %.loopexit3090, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit645.thread, !llvm.loop !94

.critedge326.jt7:                                 ; preds = %bb.dh, %bb.dg
  %i.crw = add i64 %.15283.jt63525, 1             ; 5 uses
  %.not.jt7 = icmp ugt i64 %i.crw, %.sroa.01347.1
  br i1 %.not.jt7, label %.loopexit3090, label %bb.dp, !llvm.loop !94

.critedge326.jt15:                                ; preds = %bb.tg, %bb.lz, %bb.di
  %.026824052892.lcssa.sink = phi i64 [ %.10278, %bb.lz ], [ %.15283.jt63525, %bb.di ], [ %.15283.jt83539, %bb.tg ]
  %i.crx = add i64 %.026824052892.lcssa.sink, 1   ; 2 uses
  %.not.jt15 = icmp ugt i64 %i.crx, %.sroa.01347.1
  br i1 %.not.jt15, label %.loopexit3090, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit649, !llvm.loop !94

.critedge326.jt3:                                 ; preds = %.thread1653, %bb.bi, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i557
  %.15283.jt3 = phi i64 [ %.15283.jt0, %bb.bi ], [ %.32712396, %.thread1653 ], [ %.15283.jt0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i557 ] ; 2 uses
  %.not.jt3 = icmp ugt i64 %.15283.jt3, %.sroa.01347.1
  br i1 %.not.jt3, label %.loopexit3090, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit653, !llvm.loop !94

.critedge326.jt0:                                 ; preds = %.lr.ph2384, %bb.du, %bb.de
  %.15283.jt0 = phi i64 [ %i.tz, %bb.du ], [ %spec.select351, %bb.de ], [ %.62742383, %.lr.ph2384 ] ; 7 uses
  %.not.jt0 = icmp ugt i64 %.15283.jt0, %.sroa.01347.1
  br i1 %.not.jt0, label %.loopexit3090, label %bb.bi, !llvm.loop !94

.critedge326.jt11:                                ; preds = %bb.ba
  %i.cry = add i64 %.12692401, 2                  ; 4 uses
  %.not.jt11 = icmp ugt i64 %i.cry, %.sroa.01347.1
  br i1 %.not.jt11, label %.loopexit3090, label %bb.dd, !llvm.loop !94

.critedge326.jt13:                                ; preds = %bb.ay, %bb.ax
  %i.crz = add i64 %.12692401, 1                  ; 5 uses
  %.not.jt13 = icmp ugt i64 %i.crz, %.sroa.01347.1
  br i1 %.not.jt13, label %.loopexit3090, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit641, !llvm.loop !94

.critedge326.jt14:                                ; preds = %bb.ax
  %i.csa = add i64 %.12692401, 1                  ; 5 uses
  %.not.jt14 = icmp ugt i64 %i.csa, %.sroa.01347.1
  br i1 %.not.jt14, label %.loopexit3090, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit624, !llvm.loop !94

.critedge326.jt18:                                ; preds = %bb.ba, %bb.az
  %i.csb = add i64 %.12692401, 1                  ; 2 uses
  %.not.jt18 = icmp ugt i64 %i.csb, %.sroa.01347.1
  br i1 %.not.jt18, label %.loopexit3090, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit824, !llvm.loop !94

.critedge326.jt16:                                ; preds = %bb.do, %bb.te, %bb.td, %bb.tr, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread, %bb.tp, %bb.dm, %bb.de, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236, %bb.pu, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread, %bb.pv, %bb.pv, %bb.pv, %bb.pv, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223, %bb.pp, %bb.pq, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1110.thread, %bb.pr, %bb.lz, %bb.lx, %.critedge338.jt16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %bb.qe, %bb.qe, %bb.qe, %bb.qe, %bb.dt, %bb.qd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1244
  %.sroa.01503.2.jt16 = phi i16 [ %.sroa.01503.02403, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread ], [ %.sroa.01503.02403, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223 ], [ %.sroa.01503.02403, %bb.pv ], [ %.sroa.01503.02403, %bb.qe ], [ %.sroa.01503.02403, %bb.tr ], [ %.sroa.01503.02403, %bb.qe ], [ %.sroa.01503.02403, %bb.pu ], [ %.sroa.01503.02403, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread ], [ %.sroa.01503.02403, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.sroa.01503.02403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1244 ], [ %.sroa.01503.02403, %bb.de ], [ %.sroa.01503.02403, %bb.pv ], [ %.sroa.01503.02403, %bb.pv ], [ %.sroa.01503.02403, %bb.qd ], [ %.sroa.01503.02403, %bb.dt ], [ %.sroa.01503.02403, %bb.pv ], [ %.sroa.01503.02403, %bb.qe ], [ %.sroa.01503.02403, %bb.qe ], [ %.sroa.01503.02403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ], [ %.sroa.01503.02403, %bb.dm ], [ %.sroa.01503.02403, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236 ], [ %.sroa.01503.1, %bb.lx ], [ %.sroa.01503.1, %bb.lz ], [ %.sroa.01503.02403, %bb.tp ], [ %.sroa.01503.02403, %bb.pr ], [ %.sroa.01503.1, %.critedge338.jt16 ], [ %.sroa.01503.02403, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1110.thread ], [ %.sroa.01503.02403, %bb.pq ], [ %.sroa.01503.02403, %bb.pp ], [ %.sroa.01503.02403, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ %.sroa.01503.02403, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread ], [ %.sroa.01503.02403, %bb.te ], [ %.sroa.01503.02403, %bb.td ], [ %.sroa.01503.02403, %bb.do ]
  %.15283.jt16 = phi i64 [ %.15283.jt83539, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread.thread ], [ %.15283.jt83539, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1223 ], [ %i.cru, %bb.pv ], [ %i.crv, %bb.qe ], [ %.15283.jt83539, %bb.tr ], [ %i.crv, %bb.qe ], [ %i.cru, %bb.pu ], [ %.15283.jt83539, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236.thread ], [ %.15283.jt63525, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.15283.jt83539, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1244 ], [ %spec.select351, %bb.de ], [ %i.cru, %bb.pv ], [ %i.cru, %bb.pv ], [ %i.crv, %bb.qd ], [ %i.crw, %bb.dt ], [ %i.cru, %bb.pv ], [ %i.crv, %bb.qe ], [ %i.crv, %bb.qe ], [ %.15283.jt63525, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ], [ %.15283.jt63525, %bb.dm ], [ %.15283.jt83539, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1236 ], [ %.10278, %bb.lx ], [ %.10278, %bb.lz ], [ %.15283.jt83539, %bb.tp ], [ %i.cru, %bb.pr ], [ %i.bgs, %.critedge338.jt16 ], [ %i.cru, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1110.thread ], [ %i.cru, %bb.pq ], [ %i.cru, %bb.pp ], [ %.15283.jt63525, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ %.15283.jt63525, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread ], [ %.15283.jt83539, %bb.te ], [ %.15283.jt83539, %bb.td ], [ %.15283.jt63525, %bb.do ] ; 2 uses
  %.not.jt16 = icmp ugt i64 %.15283.jt16, %.sroa.01347.1
  br i1 %.not.jt16, label %.loopexit3090, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit877, !llvm.loop !94

.critedge326.jt17:                                ; preds = %bb.tb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820, %bb.id, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398, %bb.ia, %.critedge338.jt17, %bb.qg
  %.sroa.01503.2.jt17 = phi i16 [ %.sroa.01503.02403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820 ], [ %.sroa.01503.02403, %bb.tb ], [ %.sroa.01503.02403, %bb.qg ], [ %.sroa.01503.02403, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398 ], [ %.sroa.01503.02403, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.01503.02403, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.sroa.01503.02403, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398.thread ], [ %.sroa.01503.1, %.critedge338.jt17 ], [ %.sroa.01503.02403, %bb.ia ], [ %.sroa.01503.02403, %bb.id ]
  %.15283.jt17 = phi i64 [ %i.aox, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820 ], [ %i.cby, %bb.tb ], [ %i.crv, %bb.qg ], [ %i.aox, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398 ], [ %i.cby, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.cby, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.aox, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398.thread ], [ %i.bgr, %.critedge338.jt17 ], [ %i.aox, %bb.ia ], [ %i.aox, %bb.id ] ; 2 uses
  %.not.jt17 = icmp ugt i64 %.15283.jt17, %.sroa.01347.1
  br i1 %.not.jt17, label %.loopexit3090, label %bb.lt, !llvm.loop !94

.critedge326.jt2:                                 ; preds = %bb.aj
  br i1 %.not.jt2, label %.loopexit3090, label %.preheader1981, !llvm.loop !94

.critedge326.jt4:                                 ; preds = %bb.aj
  br i1 %.not.jt2, label %.loopexit3090, label %.critedge326.jt4.thread, !llvm.loop !94

.loopexit3090:                                    ; preds = %.critedge326.jt8.preheader, %.critedge326.jt6.preheader, %.critedge326.jt19, %.critedge326.jt10, %.critedge326.jt9, %.critedge326.jt12, %.critedge326.jt7, %.critedge326.jt3, %.critedge326.jt0, %.critedge326.jt11, %.critedge326.jt13, %.critedge326.jt14, %.critedge326.jt18, %.critedge326.jt16, %.critedge326.jt17, %.critedge326.jt2, %.critedge326.jt4, %.critedge326, %.critedge332.jt6, %.critedge342.jt8, %.critedge326.jt15
  br i1 %.sroa.14.0, label %bb.tt, label %.critedge346.critedge

bb.tt:                                            ; preds = %.loopexit3090
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %4, i64 %.sroa.01341.0, ptr %.sroa.9.0, ptr noundef nonnull @_ZN3ada14character_setsL23FRAGMENT_PERCENT_ENCODEE)
  %i.csc = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.csd = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(40) %i.csc, ptr noundef nonnull align 8 dereferenceable(32) %4) #31 ; 0 uses
  %i.cse = load ptr, ptr %4, align 8              ; 2 uses
  %i.csf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.csg = icmp eq ptr %i.cse, %i.csf
  br i1 %i.csg, label %_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE.exit1248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1245: ; preds = %bb.tt
  %i.csh = load i64, ptr %i.csf, align 8
  %i.csi = add i64 %i.csh, 1
  call void @_ZdlPvm(ptr noundef %i.cse, i64 noundef %i.csi) #34
  br label %_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE.exit1248

_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE.exit1248: ; preds = %bb.tt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1245
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.critedge346.critedge

.critedge329:                                     ; preds = %bb.ls, %bb.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820, %bb.fc, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit416, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398, %bb.qi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1212, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, %bb.li, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398.thread1778, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit416.thread, %bb.hz, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1867, %.thread1661
  %i.csj = load ptr, ptr %27, align 8             ; 2 uses
  %i.csk = icmp eq ptr %i.csj, %i.ad
  br i1 %i.csk, label %.critedge346.sink.split, label %.critedge346.sink.split.sink.split

.critedge346.critedge:                            ; preds = %_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE.exit1248, %bb.lw, %bb.dw, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit649, %.loopexit3090, %bb.bg, %bb.be, %bb.lv
  %i.csl = load ptr, ptr %27, align 8             ; 2 uses
  %i.csm = icmp eq ptr %i.csl, %i.ad
  br i1 %i.csm, label %.critedge346.sink.split, label %.critedge346.sink.split.sink.split

.critedge346.sink.split.sink.split:               ; preds = %.critedge346.critedge, %.critedge329
  %.sink3556 = phi ptr [ %i.csj, %.critedge329 ], [ %i.csl, %.critedge346.critedge ]
  %i.csn = load i64, ptr %i.ad, align 8
  %i.cso = add i64 %i.csn, 1
  call void @_ZdlPvm(ptr noundef %.sink3556, i64 noundef %i.cso) #34
  br label %.critedge346.sink.split

.critedge346.sink.split:                          ; preds = %.critedge346.sink.split.sink.split, %.critedge346.critedge, %.critedge329
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  br label %.critedge346

.critedge346:                                     ; preds = %.critedge346.sink.split, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ada3urlD2Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3ada3urlE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !73, !noundef !74
  %i.i = trunc nuw i8 %i.h to i1
  store i8 0, ptr %i.g, align 8
  br i1 %i.i, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #34
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !range !73, !noundef !74
  %i.r = trunc nuw i8 %i.q to i1
  store i8 0, ptr %i.p, align 8
  br i1 %i.r, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3

bb.c:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1: ; preds = %bb.c
  %i.w = load i64, ptr %i.u, align 8
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #34
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3: ; preds = %bb.c, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
end_hunk_3
begin_hunk_4_@_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  %i.hh = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 6 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 6 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 5 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.hz = ptrtoint ptr %.sroa.28.214521459 to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ih = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.ii = icmp eq ptr %3, null
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.28.214521459, i64 1
  %i.ik = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 9 uses
  %i.il = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN3ada7helpers10prune_hashERSt17basic_string_viewIcSt11char_traitsIcEE.exit, %.critedge369
  %.02122 = phi i32 [ 1, %_ZN3ada7helpers10prune_hashERSt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.18, %.critedge369 ]
  %.03112121 = phi i64 [ 0, %_ZN3ada7helpers10prune_hashERSt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.15326, %.critedge369 ] ; 5 uses
  switch i32 %.02122, label %bb.px [
    i32 1, label %bb.ai
    i32 15, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit707
    i32 18, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit863
  ]

.preheader1777:                                   ; preds = %.critedge369.jt2
  %.not3672118 = icmp eq i64 %spec.select390, %.sroa.01243.1
  br i1 %.not3672118, label %.critedge369.jt4.thread, label %.lr.ph2120

bb.ai:                                            ; preds = %bb.ah
  %.not368 = icmp eq i64 %.03112121, %.sroa.01243.1
  br i1 %.not368, label %.critedge369.jt4.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.28.214521459, i64 %.03112121
  %i.in = load i8, ptr %i.im, align 1
  %i.io = or i8 %i.in, 32
  %i.ip = add i8 %i.io, -97
  %spec.select.i582 = icmp ult i8 %i.ip, 26       ; 2 uses
  %i.iq = zext i1 %spec.select.i582 to i64
  %spec.select390 = add i64 %.03112121, %i.iq     ; 4 uses
  %.not.jt2 = icmp ugt i64 %spec.select390, %.sroa.01243.1 ; 2 uses
  br i1 %spec.select.i582, label %.critedge369.jt2, label %.critedge369.jt4

.lr.ph2120:                                       ; preds = %.preheader1777, %bb.ak
  %.13122119 = phi i64 [ %i.ix, %bb.ak ], [ %spec.select390, %.preheader1777 ] ; 6 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.28.214521459, i64 %.13122119
  %i.is = load i8, ptr %i.ir, align 1             ; 2 uses
  %i.it = zext i8 %i.is to i64
  %i.iu = getelementptr inbounds nuw i8, ptr @_ZN3ada7unicodeL19is_alnum_plus_tableE, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1, !range !73, !noundef !74
  %i.iw = trunc nuw i8 %i.iv to i1
  br i1 %i.iw, label %bb.ak, label %.critedge

bb.ak:                                            ; preds = %.lr.ph2120
  %i.ix = add i64 %.13122119, 1                   ; 2 uses
  %.not367 = icmp eq i64 %i.ix, %.sroa.01243.1
  br i1 %.not367, label %.critedge369.jt4.thread, label %.lr.ph2120, !llvm.loop !132

.critedge:                                        ; preds = %.lr.ph2120
  %i.iy = icmp eq i8 %i.is, 58
  br i1 %i.iy, label %bb.al, label %.critedge369.jt4.thread

bb.al:                                            ; preds = %.critedge
  %i.iz = add i64 %.13122119, 1                   ; 16 uses
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %.sroa.01243.1, i64 %i.iz) ; 4 uses
  %i.ja = add i64 %.sroa.speculated.i, -1         ; 10 uses
  %i.jb = icmp eq i64 %i.ja, 0
  br i1 %i.jb, label %._crit_edge.i.i.i.i591.thread, label %bb.am

._crit_edge.i.i.i.i591.thread:                    ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  store ptr %i.ik, ptr %25, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.am:                                            ; preds = %bb.al
  %i.jc = shl i64 %i.ja, 1
  %i.jd = load i8, ptr %.sroa.28.214521459, align 1 ; 2 uses
  %i.je = zext i8 %i.jd to i64
  %i.jf = add i64 %i.jc, %i.je                    ; 2 uses
  %i.jg = trunc i64 %i.jf to i8
  %i.jh = and i8 %i.jg, 7                         ; 3 uses
  %i.ji = and i64 %i.jf, 7
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr @_ZN3ada6scheme7detailsL15is_special_listE, i64 %i.ji ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 2 uses
  %i.jk = load i8, ptr %.sroa.4.0.copyload.i, align 1
  %i.jl = icmp eq i8 %i.jk, %i.jd
  br i1 %i.jl, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit7.i, label %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit7.i: ; preds = %bb.am
  %.sroa.0.0.copyload.i586 = load i64, ptr %i.jj, align 16 ; 2 uses
  %i.jm = add i64 %.sroa.0.0.copyload.i586, -1    ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 1
  %i.jo = icmp eq i64 %.sroa.0.0.copyload.i586, %i.ja
  br i1 %i.jo, label %bb.an, label %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.an:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit7.i
  %i.jp = icmp eq i64 %i.jm, 0
  br i1 %i.jp, label %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.an
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.jn, ptr nonnull %i.ij, i64 %i.jm)
  %i.jq = icmp ne i32 %bcmp.i.i, 0
  %.not.i407 = icmp eq i8 %i.jh, 1
  %or.cond1717 = or i1 %.not.i407, %i.jq
  br i1 %or.cond1717, label %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %bb.ao

_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.an
  %.not.i407.old = icmp eq i8 %i.jh, 1
  br i1 %.not.i407.old, label %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit
  store i8 %i.jh, ptr %i.f, align 1
  call void @_ZN3ada14url_aggregator31set_scheme_from_view_with_colonESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.speculated.i, ptr nonnull %.sroa.28.214521459)
  br label %_ZN3ada14url_aggregator23parse_scheme_with_colonILb0EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit7.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.am, %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  store ptr %i.ik, ptr %25, align 8
  %i.jr = icmp ugt i64 %i.ja, 15
  br i1 %i.jr, label %bb.ap, label %._crit_edge.i.i.i.i591

bb.ap:                                            ; preds = %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  %i.js = icmp slt i64 %i.ja, 0
  br i1 %i.js, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.123) #32
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.jt = icmp slt i64 %.sroa.speculated.i, 0
  br i1 %i.jt, label %bb.as, label %._crit_edge.i.i.i.i591.thread2584, !prof !18

bb.as:                                            ; preds = %bb.ar
  call void @_ZSt17__throw_bad_allocv() #32
  unreachable

._crit_edge.i.i.i.i591.thread2584:                ; preds = %bb.ar
  %i.ju = call noalias noundef nonnull ptr @_Znwm(i64 noundef %.sroa.speculated.i) #33 ; 2 uses
  store ptr %i.ju, ptr %25, align 8
  store i64 %i.ja, ptr %i.ik, align 8
  br label %bb.au

._crit_edge.i.i.i.i591:                           ; preds = %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  %cond = icmp eq i64 %i.ja, 1
  br i1 %cond, label %bb.at, label %bb.au

bb.at:                                            ; preds = %._crit_edge.i.i.i.i591
  %i.jv = load i8, ptr %.sroa.28.214521459, align 1
  store i8 %i.jv, ptr %i.ik, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.au:                                            ; preds = %._crit_edge.i.i.i.i591.thread2584, %._crit_edge.i.i.i.i591
  %i.jw = phi ptr [ %i.ju, %._crit_edge.i.i.i.i591.thread2584 ], [ %i.ik, %._crit_edge.i.i.i.i591 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jw, ptr nonnull align 1 %.sroa.28.214521459, i64 %i.ja, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i591.thread, %bb.at, %bb.au
  %i.jx = phi ptr [ %i.ik, %._crit_edge.i.i.i.i591.thread ], [ %i.jw, %bb.au ], [ %i.ik, %bb.at ]
  store i64 %i.ja, ptr %i.il, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.ja
  store i8 0, ptr %i.jy, align 1
  %i.jz = load ptr, ptr %25, align 8              ; 3 uses
  %i.ka = load i64, ptr %i.il, align 8            ; 5 uses
  %i.kb = icmp ugt i64 %i.ka, 7
  br i1 %i.kb, label %.lr.ph.i593.preheader, label %._crit_edge.i

.lr.ph.i593.preheader:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  %i.kc = add i64 %i.ka, -8                       ; 2 uses
  %i.kd = lshr i64 %i.kc, 3
  %i.ke = add nuw nsw i64 %i.kd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.kc, 24
  br i1 %min.iters.check, label %.lr.ph.i593.preheader3216, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i593.preheader
  %n.vec = and i64 %i.ke, 4611686018427387900     ; 3 uses
  %i.kf = shl i64 %n.vec, 3                       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kg = shl i64 %index, 3
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.kg ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.kh, align 1 ; 3 uses
  %wide.load3056 = load <2 x i64>, ptr %i.ki, align 1 ; 3 uses
  %i.kj = add <2 x i64> %wide.load, splat (i64 4557430888798830399)
  %i.kk = add <2 x i64> %wide.load3056, splat (i64 4557430888798830399)
  %i.kl = add <2 x i64> %wide.load, splat (i64 2676586395008836901)
  %i.km = add <2 x i64> %wide.load3056, splat (i64 2676586395008836901)
  %i.kn = xor <2 x i64> %i.kj, %i.kl
  %i.ko = xor <2 x i64> %i.kk, %i.km
  %i.kp = lshr <2 x i64> %i.kn, splat (i64 2)
  %i.kq = lshr <2 x i64> %i.ko, splat (i64 2)
  %i.kr = and <2 x i64> %i.kp, splat (i64 2314885530818453536)
  %i.ks = and <2 x i64> %i.kq, splat (i64 2314885530818453536)
  %i.kt = xor <2 x i64> %i.kr, %wide.load
  %i.ku = xor <2 x i64> %i.ks, %wide.load3056
  store <2 x i64> %i.kt, ptr %i.kh, align 1
  store <2 x i64> %i.ku, ptr %i.ki, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kv = icmp eq i64 %index.next, %n.vec
  br i1 %i.kv, label %middle.block, label %vector.body, !llvm.loop !133

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ke, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i593.preheader3216

.lr.ph.i593.preheader3216:                        ; preds = %.lr.ph.i593.preheader, %middle.block
  %.03638.i.ph = phi i64 [ 0, %.lr.ph.i593.preheader ], [ %i.kf, %middle.block ]
  br label %.lr.ph.i593

.lr.ph.i593:                                      ; preds = %.lr.ph.i593.preheader3216, %.lr.ph.i593
  %.03638.i = phi i64 [ %i.ld, %.lr.ph.i593 ], [ %.03638.i.ph, %.lr.ph.i593.preheader3216 ] ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jz, i64 %.03638.i ; 2 uses
  %.0.copyload.i = load i64, ptr %i.kw, align 1   ; 3 uses
  %i.kx = add i64 %.0.copyload.i, 4557430888798830399
  %i.ky = add i64 %.0.copyload.i, 2676586395008836901
  %i.kz = xor i64 %i.kx, %i.ky
  %i.la = lshr i64 %i.kz, 2
  %i.lb = and i64 %i.la, 2314885530818453536
  %i.lc = xor i64 %i.lb, %.0.copyload.i
  store i64 %i.lc, ptr %i.kw, align 1
  %i.ld = add nuw i64 %.03638.i, 8                ; 3 uses
  %i.le = or disjoint i64 %i.ld, 7
  %i.lf = icmp ult i64 %i.le, %i.ka
  br i1 %i.lf, label %.lr.ph.i593, label %._crit_edge.i, !llvm.loop !134

._crit_edge.i:                                    ; preds = %.lr.ph.i593, %middle.block, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  %.036.lcssa.i = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit ], [ %i.kf, %middle.block ], [ %i.ld, %.lr.ph.i593 ] ; 3 uses
  %i.lg = icmp ult i64 %.036.lcssa.i, %i.ka
  br i1 %i.lg, label %bb.av, label %_ZN3ada7unicode14to_lower_asciiEPcm.exit

bb.av:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.jz, i64 %.036.lcssa.i ; 2 uses
  %i.li = sub nuw i64 %i.ka, %.036.lcssa.i        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.lh, i64 %i.li, i1 false)
  %.0..0..0..0..0..0..i = load i64, ptr %i.a, align 8 ; 3 uses
  %i.lj = add i64 %.0..0..0..0..0..0..i, 4557430888798830399
  %i.lk = add i64 %.0..0..0..0..0..0..i, 2676586395008836901
  %i.ll = xor i64 %i.lj, %i.lk
  %i.lm = lshr i64 %i.ll, 2
  %i.ln = and i64 %i.lm, 2314885530818453536
  %i.lo = xor i64 %i.ln, %.0..0..0..0..0..0..i
  store i64 %i.lo, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lh, ptr nonnull align 8 %i.a, i64 %i.li, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN3ada7unicode14to_lower_asciiEPcm.exit

_ZN3ada7unicode14to_lower_asciiEPcm.exit:         ; preds = %._crit_edge.i, %bb.av
  %i.lp = load ptr, ptr %25, align 8
  %i.lq = load i64, ptr %i.il, align 8
  call void @_ZN3ada14url_aggregator10set_schemeESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.lq, ptr %i.lp)
  %i.lr = load ptr, ptr %25, align 8              ; 2 uses
  %i.ls = icmp eq ptr %i.lr, %i.ik
  br i1 %i.ls, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN3ada7unicode14to_lower_asciiEPcm.exit
  %i.lt = load i64, ptr %i.ik, align 8
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.lu) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN3ada7unicode14to_lower_asciiEPcm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31
  br label %_ZN3ada14url_aggregator23parse_scheme_with_colonILb0EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN3ada14url_aggregator23parse_scheme_with_colonILb0EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ao
  %i.lv = load i8, ptr %i.f, align 1              ; 3 uses
  %i.lw = icmp eq i8 %i.lv, 6
  br i1 %i.lw, label %.critedge369.jt8.preheader, label %bb.aw

bb.aw:                                            ; preds = %_ZN3ada14url_aggregator23parse_scheme_with_colonILb0EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.lx = icmp ne i8 %i.lv, 1                     ; 2 uses
  %or.cond = and i1 %i.q, %i.lx
  br i1 %or.cond, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ly = load i8, ptr %i.fs, align 1
  %i.lz = icmp eq i8 %i.ly, %i.lv
  br i1 %i.lz, label %.critedge369.jt14, label %.critedge369.jt13

bb.ay:                                            ; preds = %bb.aw
  br i1 %i.lx, label %.critedge369.jt13, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ma = icmp ult i64 %i.iz, %.sroa.01243.1
  br i1 %i.ma, label %bb.ba, label %.critedge369.jt18

bb.ba:                                            ; preds = %bb.az
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.28.214521459, i64 %i.iz
  %i.mc = load i8, ptr %i.mb, align 1
  %i.md = icmp eq i8 %i.mc, 47
  br i1 %i.md, label %.critedge369.jt11, label %.critedge369.jt18

.critedge369.jt4.thread:                          ; preds = %bb.ai, %.preheader1777, %.critedge, %bb.ak, %.critedge369.jt4
  %.031121212579 = phi i64 [ 0, %bb.ak ], [ %spec.select390, %.critedge369.jt4 ], [ 0, %.preheader1777 ], [ %.sroa.01243.1, %bb.ai ], [ 0, %.critedge ] ; 3 uses
  br i1 %i.ii, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %.critedge369.jt4.thread
  %i.me = load i8, ptr %i.ga, align 1, !range !73, !noundef !74
  %i.mf = trunc nuw i8 %i.me to i1
  br i1 %i.mf, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  br i1 %.sroa.14.0, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.critedge369.jt4.thread
  store i8 0, ptr %i.c, align 8
  br label %.critedge389.critedge

bb.be:                                            ; preds = %bb.bc
  %i.mg = icmp eq i64 %.031121212579, %.sroa.01243.1
  br i1 %i.mg, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @_ZN3ada14url_aggregator11copy_schemeERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %3)
  %i.mh = load i8, ptr %i.ga, align 1, !range !73, !noundef !74
  store i8 %i.mh, ptr %i.d, align 1
  %i.mi = call { i64, ptr } @_ZNK3ada14url_aggregator12get_pathnameEv(ptr noundef nonnull align 8 dereferenceable(80) %3) ; 2 uses
  %i.mj = extractvalue { i64, ptr } %i.mi, 0
  %i.mk = extractvalue { i64, ptr } %i.mi, 1
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.mj, ptr %i.mk)
  %i.ml = call { i64, ptr } @_ZNK3ada14url_aggregator10get_searchEv(ptr noundef nonnull align 8 dereferenceable(80) %3) ; 2 uses
  %i.mm = extractvalue { i64, ptr } %i.ml, 0
  %i.mn = extractvalue { i64, ptr } %i.ml, 1
  call void @_ZN3ada14url_aggregator18update_base_searchESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.mm, ptr %i.mn)
  call void @_ZN3ada14url_aggregator26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.01236.0, ptr %.sroa.91237.0)
  br label %.critedge389.critedge

bb.bg:                                            ; preds = %bb.bb, %bb.be
  %i.mo = load i8, ptr %i.fs, align 1
  %.not366 = icmp eq i8 %i.mo, 6
  br i1 %.not366, label %.critedge369.jt8.preheader, label %.critedge369.jt6.preheader

.critedge369.jt8.preheader:                       ; preds = %_ZN3ada14url_aggregator23parse_scheme_with_colonILb0EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.bg
  %.15326.jt8.ph = phi i64 [ %.031121212579, %bb.bg ], [ %i.iz, %_ZN3ada14url_aggregator23parse_scheme_with_colonILb0EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 2 uses
  %.not.jt83047 = icmp ugt i64 %.15326.jt8.ph, %.sroa.01243.1
  br i1 %.not.jt83047, label %.loopexit2650, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1068.lr.ph, !llvm.loop !135

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1068.lr.ph: ; preds = %.critedge369.jt8.preheader
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1068, !llvm.loop !135

bb.bh:                                            ; preds = %.critedge369.jt0
  %i.mp = icmp ult i64 %.15326.jt0, %.sroa.01243.1
  br i1 %i.mp, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i597, label %.critedge369.jt3

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i597:    ; preds = %bb.bh
  %i.mq = sub nuw i64 %.sroa.01243.1, %.15326.jt0
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.28.214521459, i64 %.15326.jt0
  %i.ms = call ptr @memchr(ptr noundef %i.mr, i32 noundef 64, i64 noundef %i.mq) #31 ; 2 uses
  %.not.i598 = icmp eq ptr %i.ms, null
  %i.mt = ptrtoint ptr %i.ms to i64
  %i.mu = sub i64 %i.mt, %i.hz
  %i.mv = icmp eq i64 %i.mu, -1
  %or.cond1723 = select i1 %.not.i598, i1 true, i1 %i.mv
  br i1 %or.cond1723, label %.critedge369.jt3, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

.preheader1778._crit_edge:                        ; preds = %bb.bv
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %i.pe, i64 noundef %.sroa.01243.1) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i597, %bb.bv
  %.33142114 = phi i64 [ %i.pe, %bb.bv ], [ %.15326.jt0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i597 ] ; 5 uses
  %.03272113 = phi i8 [ %.1328, %bb.bv ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i597 ] ; 3 uses
  %.03302112 = phi i8 [ %.1331, %bb.bv ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i597 ] ; 2 uses
  %i.mw = sub nuw i64 %.sroa.01243.1, %.33142114  ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.28.214521459, i64 %.33142114 ; 10 uses
  %i.my = load i8, ptr %i.f, align 1
  %i.mz = icmp ne i8 %i.my, 1                     ; 2 uses
  %.not.i2109 = icmp samesign eq i64 %.33142114, %.sroa.01243.1 ; 2 uses
  br i1 %i.mz, label %.preheader, label %.preheader1771

.preheader1771:                                   ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  br i1 %.not.i2109, label %_ZN3ada7helpers32find_authority_delimiter_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph2108

.preheader:                                       ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  br i1 %.not.i2109, label %_ZN3ada7helpers32find_authority_delimiter_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph2111

.lr.ph2111:                                       ; preds = %.preheader, %bb.bi
end_hunk_4
begin_hunk_5_@_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  %.sroa.speculated.i.i1081 = call i64 @llvm.umin.i64(i64 %i.byh, i64 %i.byf)
  %i.byi = getelementptr inbounds nuw i8, ptr %i.byg, i64 %i.bxz
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.speculated.i.i1081, ptr %i.byi)
  %i.byj = load i32, ptr %i.fy, align 8           ; 3 uses
  %i.byk = icmp eq i32 %i.byj, -1
  br i1 %i.byk, label %_ZNK3ada14url_aggregator10get_searchEv.exit1093, label %bb.ph

bb.ph:                                            ; preds = %_ZNK3ada14url_aggregator12get_pathnameEv.exit1084
  %i.byl = load i64, ptr %i.fw, align 8           ; 4 uses
  %i.bym = trunc i64 %i.byl to i32
  %i.byn = load i32, ptr %i.fz, align 4           ; 2 uses
  %.not.i1085 = icmp eq i32 %i.byn, -1
  %spec.select.i1086 = select i1 %.not.i1085, i32 %i.bym, i32 %i.byn ; 2 uses
  %i.byo = sub i32 %spec.select.i1086, %i.byj
  %i.byp = icmp ult i32 %i.byo, 2
  br i1 %i.byp, label %_ZNK3ada14url_aggregator10get_searchEv.exit1093, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.byq = zext i32 %i.byj to i64                 ; 5 uses
  %i.byr = icmp ult i64 %i.byl, %i.byq
  br i1 %i.byr, label %bb.pj, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1087

bb.pj:                                            ; preds = %bb.pi
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %i.byq, i64 noundef %i.byl) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1087: ; preds = %bb.pi
  %i.bys = zext i32 %spec.select.i1086 to i64
  %i.byt = sub nsw i64 %i.bys, %i.byq
  %i.byu = load ptr, ptr %i.fv, align 8
  %i.byv = sub nuw i64 %i.byl, %i.byq
  %.sroa.speculated.i.i1088 = call i64 @llvm.umin.i64(i64 %i.byv, i64 %i.byt)
  %i.byw = getelementptr inbounds nuw i8, ptr %i.byu, i64 %i.byq
  br label %_ZNK3ada14url_aggregator10get_searchEv.exit1093

_ZNK3ada14url_aggregator10get_searchEv.exit1093:  ; preds = %_ZNK3ada14url_aggregator12get_pathnameEv.exit1084, %bb.ph, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1087
  %.sroa.4.0.i1089 = phi ptr [ %i.byw, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1087 ], [ @.str.48, %_ZNK3ada14url_aggregator12get_pathnameEv.exit1084 ], [ @.str.48, %bb.ph ]
  %.sroa.0.0.i1090 = phi i64 [ %.sroa.speculated.i.i1088, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i1087 ], [ 0, %_ZNK3ada14url_aggregator12get_pathnameEv.exit1084 ], [ 0, %bb.ph ]
  call void @_ZN3ada14url_aggregator18update_base_searchESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.0.0.i1090, ptr %.sroa.4.0.i1089)
  %i.byx = load i8, ptr %i.ga, align 1, !range !73, !noundef !74
  store i8 %i.byx, ptr %i.d, align 1
  br i1 %.not349, label %.critedge385.jt8, label %bb.pk

bb.pk:                                            ; preds = %_ZNK3ada14url_aggregator10get_searchEv.exit1093
  %i.byy = sub nuw i64 %.sroa.01243.1, %.15326.jt83048 ; 2 uses
  %i.byz = load i8, ptr %i.bxd, align 1
  %i.bza = icmp eq i8 %i.byz, 63
  br i1 %i.bza, label %.critedge385.jt15, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  call void @_ZN3ada14url_aggregator12clear_searchEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.bzb = icmp ugt i64 %i.byy, 1
  br i1 %i.bzb, label %bb.pm, label %bb.pq

bb.pm:                                            ; preds = %bb.pl
  %i.bzc = load i8, ptr %i.bxd, align 1
  %i.bzd = or i8 %i.bzc, 32
  %i.bze = add i8 %i.bzd, -97
  %spec.select.i.i1094 = icmp ult i8 %i.bze, 26
  br i1 %spec.select.i.i1094, label %bb.pn, label %bb.pq

bb.pn:                                            ; preds = %bb.pm
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.bxd, i64 1
  %i.bzg = load i8, ptr %i.bzf, align 1
  switch i8 %i.bzg, label %bb.pq [
    i8 58, label %bb.po
    i8 124, label %bb.po
  ]

bb.po:                                            ; preds = %bb.pn, %bb.pn
  %i.bzh = icmp eq i64 %i.byy, 2
  br i1 %i.bzh, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1095, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.bxd, i64 2
  %i.bzj = load i8, ptr %i.bzi, align 1
  switch i8 %i.bzj, label %bb.pq [
    i8 47, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1095
    i8 92, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1095
    i8 63, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1095
    i8 35, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1095
  ]

bb.pq:                                            ; preds = %bb.pp, %bb.pn, %bb.pm, %bb.pl
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #31
  %i.bzk = call { i64, ptr } @_ZNK3ada14url_aggregator12get_pathnameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) ; 2 uses
  %i.bzl = extractvalue { i64, ptr } %i.bzk, 0    ; 6 uses
  %i.bzm = extractvalue { i64, ptr } %i.bzk, 1    ; 5 uses
  store ptr %i.bzm, ptr %i.gb, align 8
  %i.bzn = load i8, ptr %i.f, align 1
  %i.bzo = icmp eq i8 %i.bzn, 6
  br i1 %i.bzo, label %bb.pr, label %bb.pu

bb.pr:                                            ; preds = %bb.pq
  %i.bzp = icmp ugt i64 %i.bzl, 1
  br i1 %i.bzp, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1097, label %bb.ps

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1097:   ; preds = %bb.pr
  %i.bzq = add i64 %i.bzl, -1
  %i.bzr = getelementptr inbounds nuw i8, ptr %i.bzm, i64 1 ; 2 uses
  %i.bzs = call ptr @memchr(ptr noundef nonnull %i.bzr, i32 noundef 47, i64 noundef %i.bzq) #31 ; 2 uses
  %.not.i1098 = icmp eq ptr %i.bzs, null
  %i.bzt = ptrtoint ptr %i.bzs to i64
  %i.bzu = ptrtoint ptr %i.bzm to i64
  %i.bzv = sub i64 %i.bzt, %i.bzu
  %i.bzw = icmp eq i64 %i.bzv, -1
  %or.cond1734 = select i1 %.not.i1098, i1 true, i1 %i.bzw
  %i.bzx = icmp ne i64 %i.bzl, 2
  %or.cond1770 = select i1 %or.cond1734, i1 %i.bzx, i1 false
  br i1 %or.cond1770, label %bb.pt, label %.lr.ph3053.preheader

bb.ps:                                            ; preds = %bb.pr
  %cond3063 = icmp eq i64 %i.bzl, 0
  br i1 %cond3063, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph3053.preheader

bb.pt:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1097
  %i.bzy = load i8, ptr %i.bzr, align 1
  %i.bzz = or i8 %i.bzy, 32
  %i.caa = add i8 %i.bzz, -97
  %spec.select.i.i1104 = icmp ult i8 %i.caa, 26
  br i1 %spec.select.i.i1104, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1105, label %.lr.ph3053.preheader

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1105: ; preds = %bb.pt
  %i.cab = getelementptr inbounds nuw i8, ptr %i.bzm, i64 2
  %i.cac = load i8, ptr %i.cab, align 1
  %i.cad = icmp eq i8 %i.cac, 58
  br i1 %i.cad, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph3053.preheader

bb.pu:                                            ; preds = %bb.pq
  %cond3064 = icmp eq i64 %i.bzl, 0
  br i1 %cond3064, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph3053.preheader

.lr.ph3053.preheader:                             ; preds = %bb.pt, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1097, %bb.ps, %bb.pu, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1105
  br label %.lr.ph3053

bb.pv:                                            ; preds = %.lr.ph3053
  %.not13.i1109 = icmp eq i64 %i.cae, 0
  br i1 %.not13.i1109, label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, label %.lr.ph3053, !llvm.loop !29

.lr.ph3053:                                       ; preds = %.lr.ph3053.preheader, %bb.pv
  %.1.i11083052 = phi i64 [ %i.cae, %bb.pv ], [ %i.bzl, %.lr.ph3053.preheader ]
  %i.cae = add i64 %.1.i11083052, -1              ; 4 uses
  %i.caf = getelementptr inbounds nuw i8, ptr %i.bzm, i64 %i.cae
  %i.cag = load i8, ptr %i.caf, align 1
  %i.cah = icmp eq i8 %i.cag, 47
  br i1 %i.cah, label %bb.pw, label %bb.pv, !llvm.loop !29

bb.pw:                                            ; preds = %.lr.ph3053
  store i64 %i.cae, ptr %37, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #31
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 1 dereferenceable(1) %39)
  %i.cai = load ptr, ptr %38, align 8
  %i.caj = load i64, ptr %i.gc, align 8
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.caj, ptr %i.cai)
  %i.cak = load ptr, ptr %38, align 8             ; 2 uses
  %i.cal = icmp eq ptr %i.cak, %i.gd
  br i1 %i.cal, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1114: ; preds = %bb.pw
  %i.cam = load i64, ptr %i.gd, align 8
  %i.can = add i64 %i.cam, 1
  call void @_ZdlPvm(ptr noundef %i.cak, i64 noundef %i.can) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1116: ; preds = %bb.pw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1114
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #31
  br label %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread

_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread: ; preds = %bb.pv, %bb.pu, %bb.ps, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1116
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #31
  br label %.critedge369.jt16.preheader

_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1095: ; preds = %bb.pp, %bb.pp, %bb.pp, %bb.pp, %bb.po
  call void @_ZN3ada14url_aggregator14clear_pathnameEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  store i8 1, ptr %i.d, align 1
  br label %.critedge369.jt16.preheader

.critedge385.jt8:                                 ; preds = %_ZNK3ada14url_aggregator10get_searchEv.exit1093
  %i.cao = add i64 %.15326.jt83048, 1             ; 2 uses
  %.not.jt8 = icmp ugt i64 %i.cao, %.sroa.01243.1
  br i1 %.not.jt8, label %.critedge369.jt6..loopexit2650.loopexit2861_crit_edge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1068, !llvm.loop !135

.critedge385.jt15:                                ; preds = %bb.pk
  %i.cap = add i64 %.15326.jt83048, 1
  br label %.critedge369.jt15

bb.px:                                            ; preds = %bb.ah
  unreachable

.critedge369.jt6.preheader:                       ; preds = %bb.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit640
  %.15326.jt6.ph = phi i64 [ %i.iz, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %i.iz, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit640 ], [ %.031121212579, %bb.bg ] ; 2 uses
  %.not.jt63034 = icmp ugt i64 %.15326.jt6.ph, %.sroa.01243.1
  br i1 %.not.jt63034, label %.loopexit2650, label %.lr.ph3036, !llvm.loop !135

.lr.ph3036:                                       ; preds = %.critedge369.jt6.preheader
  br label %bb.by, !llvm.loop !135

.critedge369:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit892, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit897
  %.15326 = phi i64 [ %.93202617, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit892 ], [ %.93202618, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit897 ] ; 2 uses
  %.18 = phi i32 [ %.82619, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit892 ], [ %.82620, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit897 ]
  %.not = icmp ugt i64 %.15326, %.sroa.01243.1
  br i1 %.not, label %.loopexit2650, label %bb.ah, !llvm.loop !135

.critedge369.jt19:                                ; preds = %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit453, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit453.thread, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %bb.ex, %bb.ev
  %i.caq = add i64 %i.adk, 1                      ; 5 uses
  %.not.jt19 = icmp ugt i64 %i.caq, %.sroa.01243.1
  br i1 %.not.jt19, label %.loopexit2650, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit901, !llvm.loop !135

.critedge369.jt10:                                ; preds = %bb.oz, %bb.oz
  %i.car = add i64 %.15326.jt83048, 1             ; 18 uses
  %.not.jt10 = icmp ugt i64 %i.car, %.sroa.01243.1
  br i1 %.not.jt10, label %.loopexit2650, label %bb.lm, !llvm.loop !135

.critedge369.jt2:                                 ; preds = %bb.aj
  br i1 %.not.jt2, label %.loopexit2650, label %.preheader1777, !llvm.loop !135

.critedge369.jt9:                                 ; preds = %bb.ln, %bb.ln
  %i.cas = add i64 %.15326.jt83048, 2             ; 10 uses
  %.not.jt9 = icmp ugt i64 %i.cas, %.sroa.01243.1
  br i1 %.not.jt9, label %.loopexit2650, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit972, !llvm.loop !135

.critedge369.jt17:                                ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit1064, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437.thread, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit802.thread, %bb.hn, %bb.hl, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437, %bb.hi, %_ZNK3ada14url_aggregator12get_hostnameEv.exit1060, %bb.mj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1061, %.critedge381.jt17
  %.15326.jt17 = phi i64 [ %i.bkf, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit1064 ], [ %i.aph, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437 ], [ %i.aph, %bb.hi ], [ %i.cas, %bb.mj ], [ %i.bkf, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1061 ], [ %i.aph, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437.thread ], [ %i.aph, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit802.thread ], [ %i.aph, %bb.hn ], [ %i.aph, %bb.hl ], [ %i.bgs, %.critedge381.jt17 ], [ %i.bkf, %_ZNK3ada14url_aggregator12get_hostnameEv.exit1060 ] ; 2 uses
  %.not.jt17 = icmp ugt i64 %.15326.jt17, %.sroa.01243.1
  br i1 %.not.jt17, label %.loopexit2650, label %bb.lf, !llvm.loop !135

.critedge369.jt0:                                 ; preds = %.lr.ph2102, %bb.bx, %bb.dn
  %.15326.jt0 = phi i64 [ %spec.select394, %bb.bx ], [ %i.vy, %bb.dn ], [ %.63172101, %.lr.ph2102 ] ; 7 uses
  %.not.jt0 = icmp ugt i64 %.15326.jt0, %.sroa.01243.1
  br i1 %.not.jt0, label %.loopexit2650, label %bb.bh, !llvm.loop !135

.critedge369.jt12:                                ; preds = %bb.do, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.15326.jt12 = phi i64 [ %i.vz, %bb.do ], [ %i.pn, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ] ; 2 uses
  %.not.jt12 = icmp ugt i64 %.15326.jt12, %.sroa.01243.1
  br i1 %.not.jt12, label %.loopexit2650, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit703.thread, !llvm.loop !135

.critedge369.jt7:                                 ; preds = %bb.ci, %bb.ch
  %i.cat = add i64 %.15326.jt63035, 1             ; 5 uses
  %.not.jt7 = icmp ugt i64 %i.cat, %.sroa.01243.1
  br i1 %.not.jt7, label %.loopexit2650, label %bb.df, !llvm.loop !135

.critedge369.jt15:                                ; preds = %.critedge385.jt15, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit922.thread.jt15, %.critedge381.jt15, %.critedge375.jt15
  %.15326.jt15 = phi i64 [ %i.bgz, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit922.thread.jt15 ], [ %i.cap, %.critedge385.jt15 ], [ %i.uy, %.critedge375.jt15 ], [ %i.bgt, %.critedge381.jt15 ] ; 2 uses
  %.not.jt15 = icmp ugt i64 %.15326.jt15, %.sroa.01243.1
  br i1 %.not.jt15, label %.loopexit2650, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit707, !llvm.loop !135

.critedge369.jt3:                                 ; preds = %.thread1473, %bb.bh, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i597
  %.15326.jt3 = phi i64 [ %.15326.jt0, %bb.bh ], [ %.33142114, %.thread1473 ], [ %.15326.jt0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i597 ] ; 2 uses
  %.not.jt3 = icmp ugt i64 %.15326.jt3, %.sroa.01243.1
  br i1 %.not.jt3, label %.loopexit2650, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit711, !llvm.loop !135

.critedge369.jt4:                                 ; preds = %bb.aj
  br i1 %.not.jt2, label %.loopexit2650, label %.critedge369.jt4.thread, !llvm.loop !135

.critedge369.jt18:                                ; preds = %bb.ba, %bb.az
  %.not.jt18 = icmp ugt i64 %i.iz, %.sroa.01243.1
  br i1 %.not.jt18, label %.loopexit2650, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit863, !llvm.loop !135

.critedge369.jt13:                                ; preds = %bb.ay, %bb.ax
  %.not.jt13 = icmp ugt i64 %i.iz, %.sroa.01243.1
  br i1 %.not.jt13, label %.loopexit2650, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit699, !llvm.loop !135

.critedge369.jt14:                                ; preds = %bb.ax
  %.not.jt14 = icmp ugt i64 %i.iz, %.sroa.01243.1
  br i1 %.not.jt14, label %.loopexit2650, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit640, !llvm.loop !135

.critedge369.jt11:                                ; preds = %bb.ba
  %.pre2316 = add i64 %.13122119, 2               ; 4 uses
  %.not.jt11 = icmp ugt i64 %.pre2316, %.sroa.01243.1
  br i1 %.not.jt11, label %.loopexit2650, label %bb.bw, !llvm.loop !135

.critedge369.jt16.preheader:                      ; preds = %bb.cx, %bb.pb, %bb.pa, %bb.cw, %bb.cu, %bb.lo, %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1095, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit957, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit963, %_ZNK3ada14url_aggregator12get_hostnameEv.exit695, %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686, %bb.lj, %.critedge381.jt16, %bb.ll, %bb.mh, %bb.mh, %bb.mh, %bb.mh, %bb.mg, %_ZNK3ada14url_aggregator12get_pathnameEv.exit939, %bb.lz, %bb.lz, %bb.lz, %bb.lz, %bb.lp, %bb.ly, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit968, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i959, %bb.ma, %bb.bx
  %.15326.jt16.ph = phi i64 [ %spec.select394, %bb.bx ], [ %i.car, %bb.lz ], [ %i.car, %_ZNK3ada14url_aggregator12get_pathnameEv.exit939 ], [ %.15326.jt63035, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.cas, %bb.mh ], [ %i.cas, %bb.mg ], [ %i.cas, %bb.mh ], [ %i.car, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit968 ], [ %i.cas, %bb.mh ], [ %.15326.jt63035, %bb.cw ], [ %i.car, %bb.lz ], [ %.10321, %bb.ll ], [ %i.car, %bb.lz ], [ %.10321, %bb.lj ], [ %i.car, %bb.lz ], [ %.15326.jt63035, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686 ], [ %.sroa.01243.1, %bb.bw ], [ %i.cat, %_ZNK3ada14url_aggregator12get_hostnameEv.exit695 ], [ %i.car, %bb.ly ], [ %i.car, %bb.ma ], [ %i.car, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i959 ], [ %i.car, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit963 ], [ %i.car, %bb.lp ], [ %i.car, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit957 ], [ %.15326.jt83048, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1095 ], [ %i.bgu, %.critedge381.jt16 ], [ %.15326.jt83048, %_ZN3ada7helpers12shorten_pathERSt17basic_string_viewIcSt11char_traitsIcEENS_6scheme4typeE.exit.thread ], [ %.15326.jt83048, %bb.pb ], [ %i.cas, %bb.mh ], [ %.15326.jt63035, %bb.cu ], [ %i.car, %bb.lo ], [ %.15326.jt83048, %bb.pa ], [ %.15326.jt63035, %bb.cx ] ; 5 uses
  %.not.jt163054 = icmp ugt i64 %.15326.jt16.ph, %.sroa.01243.1
  br i1 %.not.jt163054, label %.loopexit2650, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit918.peel, !llvm.loop !135

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit918.peel: ; preds = %.critedge369.jt16.preheader
  %i.cau = sub nuw i64 %.sroa.01243.1, %.15326.jt16.ph ; 2 uses
  %i.cav = getelementptr inbounds nuw i8, ptr %.sroa.28.214521459, i64 %.15326.jt16.ph ; 4 uses
  %.not1743.peel = icmp eq i64 %.sroa.01243.1, %.15326.jt16.ph
  br i1 %.not1743.peel, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit922.thread.jt16.peel, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i920.peel

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i920.peel: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit918.peel
  %i.caw = call ptr @memchr(ptr noundef %i.cav, i32 noundef 63, i64 noundef %i.cau) #31 ; 2 uses
  %.not.i921.peel = icmp eq ptr %i.caw, null
  %i.cax = ptrtoint ptr %i.caw to i64
  %i.cay = ptrtoint ptr %i.cav to i64
  %i.caz = sub i64 %i.cax, %i.cay                 ; 2 uses
  %.not353.peel = icmp eq i64 %i.caz, -1
  %or.cond3484 = select i1 %.not.i921.peel, i1 true, i1 %.not353.peel
  br i1 %or.cond3484, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit922.thread.jt16.peel, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit922.thread.jt15

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit922.thread.jt16.peel: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i920.peel, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit918.peel
  call void @_ZN3ada14url_aggregator21consume_prepared_pathESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.cau, ptr %i.cav)
  %.not.jt16.not.peel = icmp eq i64 %.sroa.01243.1, -1
  br i1 %.not.jt16.not.peel, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit918.lr.ph.peel.newph, label %.critedge369.jt6..loopexit2650.loopexit2861_crit_edge

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit918.lr.ph.peel.newph: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit922.thread.jt16.peel
  %i.cba = getelementptr inbounds nuw i8, ptr %.sroa.28.214521459, i64 %i.gr ; 4 uses
  %i.cbb = ptrtoint ptr %i.cba to i64
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit918, !llvm.loop !135

.critedge369.jt6..loopexit2650.loopexit2861_crit_edge: ; preds = %.critedge375.jt6, %.critedge385.jt8, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit922.thread.jt16.peel
  br label %.loopexit2650, !llvm.loop !135

.loopexit2650:                                    ; preds = %.critedge369.jt2, %.critedge369.jt18, %.critedge369, %.critedge369.jt6.preheader, %.critedge369.jt6..loopexit2650.loopexit2861_crit_edge, %.critedge369.jt8.preheader, %.critedge369.jt16.preheader, %.critedge369.jt19, %.critedge369.jt10, %.critedge369.jt9, %.critedge369.jt17, %.critedge369.jt0, %.critedge369.jt12, %.critedge369.jt7, %.critedge369.jt15, %.critedge369.jt3, %.critedge369.jt4, %.critedge369.jt13, %.critedge369.jt14, %.critedge369.jt11
  br i1 %.sroa.14.0, label %bb.py, label %.critedge389.critedge

bb.py:                                            ; preds = %.loopexit2650
  call void @_ZN3ada14url_aggregator26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.01236.0, ptr %.sroa.91237.0)
  br label %.critedge389.critedge

.critedge372:                                     ; preds = %bb.hl, %bb.hn, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit802.thread, %bb.ev, %bb.ex, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit453, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437, %bb.ml, %bb.mn, %_ZNKSt6ranges11__all_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEPDoFbcEEEbOSB_T1_SE_.exit996.thread, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit437.thread1614, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit453.thread1579, %bb.hh, %_ZN3ada14url_aggregator10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1682, %.thread1481
  %i.cbc = load ptr, ptr %26, align 8             ; 2 uses
  %i.cbd = icmp eq ptr %i.cbc, %i.ac
  br i1 %i.cbd, label %.critedge389.sink.split, label %.critedge389.sink.split.sink.split

.critedge389.critedge:                            ; preds = %bb.py, %bb.li, %bb.dp, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit707, %.loopexit2650, %bb.bf, %bb.bd, %bb.lh
  %i.cbe = load ptr, ptr %26, align 8             ; 2 uses
  %i.cbf = icmp eq ptr %i.cbe, %i.ac
  br i1 %i.cbf, label %.critedge389.sink.split, label %.critedge389.sink.split.sink.split

.critedge389.sink.split.sink.split:               ; preds = %.critedge389.critedge, %.critedge372
  %.sink3057 = phi ptr [ %i.cbc, %.critedge372 ], [ %i.cbe, %.critedge389.critedge ]
  %i.cbg = load i64, ptr %i.ac, align 8
  %i.cbh = add i64 %i.cbg, 1
  call void @_ZdlPvm(ptr noundef %.sink3057, i64 noundef %i.cbh) #34
  br label %.critedge389.sink.split

.critedge389.sink.split:                          ; preds = %.critedge389.sink.split.sink.split, %.critedge389.critedge, %.critedge372
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  br label %.critedge389

.critedge389:                                     ; preds = %.critedge389.sink.split, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ada14url_aggregatorD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3ada14url_aggregatorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3ada14href_from_fileB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.4") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 73 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.a, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  %i.c = icmp ult i64 %1, 16
  br i1 %i.c, label %bb.b, label %.preheader729.preheader

.preheader729.preheader:                          ; preds = %bb.a
  %i.d = add i64 %1, -16                          ; 2 uses
  %i.e = lshr i64 %i.d, 4                         ; 2 uses
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %.preheader729.epil.preheader, label %.preheader729.preheader.new

.preheader729.preheader.new:                      ; preds = %.preheader729.preheader
  %unroll_iter = and i64 %i.f, 2305843009213693950
  br label %.preheader729

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %.not6.not.i.i = icmp samesign eq i64 %1, 0
  br i1 %.not6.not.i.i, label %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread, label %.lr.ph.i.i

_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.i, ptr %7, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.j, align 8
  store i8 0, ptr %i.i, align 8
  br label %bb.z

_ZN3ada7unicode18is_tabs_or_newlineEc.exit:       ; preds = %.lr.ph.i.i
end_hunk_5
begin_hunk_6_@_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb0EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  %i.gt = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %i.gm, i64 -16 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 6 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.he = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 6 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 5 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.ht = ptrtoint ptr %.sroa.27.213711378 to i64
  %i.hu = icmp eq ptr %3, null
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.27.213711378, i64 1
  %i.hw = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 9 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN3ada7helpers10prune_hashERSt17basic_string_viewIcSt11char_traitsIcEE.exit, %.critedge334
  %.01986 = phi i32 [ 1, %_ZN3ada7helpers10prune_hashERSt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.18, %.critedge334 ]
  %.02771985 = phi i64 [ 0, %_ZN3ada7helpers10prune_hashERSt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.15292, %.critedge334 ] ; 4 uses
  switch i32 %.01986, label %bb.pr [
    i32 1, label %bb.ai
    i32 15, label %.critedge354.critedge
    i32 18, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit797
  ]

.preheader1692:                                   ; preds = %.critedge334.jt2
  %.not3321982 = icmp eq i64 %spec.select355, %.sroa.01167.1
  br i1 %.not3321982, label %.critedge334.jt4.thread, label %.lr.ph1984

bb.ai:                                            ; preds = %bb.ah
  %.not333 = icmp eq i64 %.02771985, %.sroa.01167.1
  br i1 %.not333, label %.critedge334.jt4.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.27.213711378, i64 %.02771985
  %i.hz = load i8, ptr %i.hy, align 1
  %i.ia = or i8 %i.hz, 32
  %i.ib = add i8 %i.ia, -97
  %spec.select.i547 = icmp ult i8 %i.ib, 26       ; 2 uses
  %i.ic = zext i1 %spec.select.i547 to i64
  %spec.select355 = add i64 %.02771985, %i.ic     ; 4 uses
  %.not.jt2 = icmp ugt i64 %spec.select355, %.sroa.01167.1 ; 2 uses
  br i1 %spec.select.i547, label %.critedge334.jt2, label %.critedge334.jt4

.lr.ph1984:                                       ; preds = %.preheader1692, %bb.ak
  %.12781983 = phi i64 [ %i.ij, %bb.ak ], [ %spec.select355, %.preheader1692 ] ; 6 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.27.213711378, i64 %.12781983
  %i.ie = load i8, ptr %i.id, align 1             ; 2 uses
  %i.if = zext i8 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr @_ZN3ada7unicodeL19is_alnum_plus_tableE, i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1, !range !73, !noundef !74
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %bb.ak, label %.critedge

bb.ak:                                            ; preds = %.lr.ph1984
  %i.ij = add i64 %.12781983, 1                   ; 2 uses
  %.not332 = icmp eq i64 %i.ij, %.sroa.01167.1
  br i1 %.not332, label %.critedge334.jt4.thread, label %.lr.ph1984, !llvm.loop !161

.critedge:                                        ; preds = %.lr.ph1984
  %i.ik = icmp eq i8 %i.ie, 58
  br i1 %i.ik, label %bb.al, label %.critedge334.jt4.thread

bb.al:                                            ; preds = %.critedge
  %i.il = add i64 %.12781983, 1                   ; 16 uses
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %.sroa.01167.1, i64 %i.il) ; 4 uses
  %i.im = add i64 %.sroa.speculated.i, -1         ; 10 uses
  %i.in = icmp eq i64 %i.im, 0
  br i1 %i.in, label %._crit_edge.i.i.i.i556.thread, label %bb.am

._crit_edge.i.i.i.i556.thread:                    ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  store ptr %i.hw, ptr %25, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.am:                                            ; preds = %bb.al
  %i.io = shl i64 %i.im, 1
  %i.ip = load i8, ptr %.sroa.27.213711378, align 1 ; 2 uses
  %i.iq = zext i8 %i.ip to i64
  %i.ir = add i64 %i.io, %i.iq                    ; 2 uses
  %i.is = trunc i64 %i.ir to i8
  %i.it = and i8 %i.is, 7                         ; 3 uses
  %i.iu = and i64 %i.ir, 7
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr @_ZN3ada6scheme7detailsL15is_special_listE, i64 %i.iu ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 2 uses
  %i.iw = load i8, ptr %.sroa.4.0.copyload.i, align 1
  %i.ix = icmp eq i8 %i.iw, %i.ip
  br i1 %i.ix, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit7.i, label %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit7.i: ; preds = %bb.am
  %.sroa.0.0.copyload.i551 = load i64, ptr %i.iv, align 16 ; 2 uses
  %i.iy = add i64 %.sroa.0.0.copyload.i551, -1    ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 1
  %i.ja = icmp eq i64 %.sroa.0.0.copyload.i551, %i.im
  br i1 %i.ja, label %bb.an, label %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.an:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit7.i
  %i.jb = icmp eq i64 %i.iy, 0
  br i1 %i.jb, label %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.an
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.iz, ptr nonnull %i.hv, i64 %i.iy)
  %i.jc = icmp ne i32 %bcmp.i.i, 0
  %.not.i372 = icmp eq i8 %i.it, 1
  %or.cond1635 = or i1 %.not.i372, %i.jc
  br i1 %or.cond1635, label %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %bb.ao

_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.an
  %.not.i372.old = icmp eq i8 %i.it, 1
  br i1 %.not.i372.old, label %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit
  store i8 %i.it, ptr %i.f, align 1
  call void @_ZN3ada14url_aggregator31set_scheme_from_view_with_colonESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.speculated.i, ptr nonnull %.sroa.27.213711378)
  br label %_ZN3ada14url_aggregator23parse_scheme_with_colonILb0EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit7.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.am, %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  store ptr %i.hw, ptr %25, align 8
  %i.jd = icmp ugt i64 %i.im, 15
  br i1 %i.jd, label %bb.ap, label %._crit_edge.i.i.i.i556

bb.ap:                                            ; preds = %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  %i.je = icmp slt i64 %i.im, 0
  br i1 %i.je, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.123) #32
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.jf = icmp slt i64 %.sroa.speculated.i, 0
  br i1 %i.jf, label %bb.as, label %._crit_edge.i.i.i.i556.thread2430, !prof !18

bb.as:                                            ; preds = %bb.ar
  call void @_ZSt17__throw_bad_allocv() #32
  unreachable

._crit_edge.i.i.i.i556.thread2430:                ; preds = %bb.ar
  %i.jg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %.sroa.speculated.i) #33 ; 2 uses
  store ptr %i.jg, ptr %25, align 8
  store i64 %i.im, ptr %i.hw, align 8
  br label %bb.au

._crit_edge.i.i.i.i556:                           ; preds = %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  %cond = icmp eq i64 %i.im, 1
  br i1 %cond, label %bb.at, label %bb.au

bb.at:                                            ; preds = %._crit_edge.i.i.i.i556
  %i.jh = load i8, ptr %.sroa.27.213711378, align 1
  store i8 %i.jh, ptr %i.hw, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.au:                                            ; preds = %._crit_edge.i.i.i.i556.thread2430, %._crit_edge.i.i.i.i556
  %i.ji = phi ptr [ %i.jg, %._crit_edge.i.i.i.i556.thread2430 ], [ %i.hw, %._crit_edge.i.i.i.i556 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ji, ptr nonnull align 1 %.sroa.27.213711378, i64 %i.im, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i556.thread, %bb.at, %bb.au
  %i.jj = phi ptr [ %i.hw, %._crit_edge.i.i.i.i556.thread ], [ %i.ji, %bb.au ], [ %i.hw, %bb.at ]
  store i64 %i.im, ptr %i.hx, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.im
  store i8 0, ptr %i.jk, align 1
  %i.jl = load ptr, ptr %25, align 8              ; 3 uses
  %i.jm = load i64, ptr %i.hx, align 8            ; 5 uses
  %i.jn = icmp ugt i64 %i.jm, 7
  br i1 %i.jn, label %.lr.ph.i558.preheader, label %._crit_edge.i

.lr.ph.i558.preheader:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  %i.jo = add i64 %i.jm, -8                       ; 2 uses
  %i.jp = lshr i64 %i.jo, 3
  %i.jq = add nuw nsw i64 %i.jp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.jo, 24
  br i1 %min.iters.check, label %.lr.ph.i558.preheader3030, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i558.preheader
  %n.vec = and i64 %i.jq, 4611686018427387900     ; 3 uses
  %i.jr = shl i64 %n.vec, 3                       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.js = shl i64 %index, 3
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.js ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.jt, align 1 ; 3 uses
  %wide.load2878 = load <2 x i64>, ptr %i.ju, align 1 ; 3 uses
  %i.jv = add <2 x i64> %wide.load, splat (i64 4557430888798830399)
  %i.jw = add <2 x i64> %wide.load2878, splat (i64 4557430888798830399)
  %i.jx = add <2 x i64> %wide.load, splat (i64 2676586395008836901)
  %i.jy = add <2 x i64> %wide.load2878, splat (i64 2676586395008836901)
  %i.jz = xor <2 x i64> %i.jv, %i.jx
  %i.ka = xor <2 x i64> %i.jw, %i.jy
  %i.kb = lshr <2 x i64> %i.jz, splat (i64 2)
  %i.kc = lshr <2 x i64> %i.ka, splat (i64 2)
  %i.kd = and <2 x i64> %i.kb, splat (i64 2314885530818453536)
  %i.ke = and <2 x i64> %i.kc, splat (i64 2314885530818453536)
  %i.kf = xor <2 x i64> %i.kd, %wide.load
  %i.kg = xor <2 x i64> %i.ke, %wide.load2878
  store <2 x i64> %i.kf, ptr %i.jt, align 1
  store <2 x i64> %i.kg, ptr %i.ju, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kh = icmp eq i64 %index.next, %n.vec
  br i1 %i.kh, label %middle.block, label %vector.body, !llvm.loop !162

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jq, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i558.preheader3030

.lr.ph.i558.preheader3030:                        ; preds = %.lr.ph.i558.preheader, %middle.block
  %.03638.i.ph = phi i64 [ 0, %.lr.ph.i558.preheader ], [ %i.jr, %middle.block ]
  br label %.lr.ph.i558

.lr.ph.i558:                                      ; preds = %.lr.ph.i558.preheader3030, %.lr.ph.i558
  %.03638.i = phi i64 [ %i.kp, %.lr.ph.i558 ], [ %.03638.i.ph, %.lr.ph.i558.preheader3030 ] ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jl, i64 %.03638.i ; 2 uses
  %.0.copyload.i = load i64, ptr %i.ki, align 1   ; 3 uses
  %i.kj = add i64 %.0.copyload.i, 4557430888798830399
  %i.kk = add i64 %.0.copyload.i, 2676586395008836901
  %i.kl = xor i64 %i.kj, %i.kk
  %i.km = lshr i64 %i.kl, 2
  %i.kn = and i64 %i.km, 2314885530818453536
  %i.ko = xor i64 %i.kn, %.0.copyload.i
  store i64 %i.ko, ptr %i.ki, align 1
  %i.kp = add nuw i64 %.03638.i, 8                ; 3 uses
  %i.kq = or disjoint i64 %i.kp, 7
  %i.kr = icmp ult i64 %i.kq, %i.jm
  br i1 %i.kr, label %.lr.ph.i558, label %._crit_edge.i, !llvm.loop !163

._crit_edge.i:                                    ; preds = %.lr.ph.i558, %middle.block, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  %.036.lcssa.i = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit ], [ %i.jr, %middle.block ], [ %i.kp, %.lr.ph.i558 ] ; 3 uses
  %i.ks = icmp ult i64 %.036.lcssa.i, %i.jm
  br i1 %i.ks, label %bb.av, label %_ZN3ada7unicode14to_lower_asciiEPcm.exit

bb.av:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jl, i64 %.036.lcssa.i ; 2 uses
  %i.ku = sub nuw i64 %i.jm, %.036.lcssa.i        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.kt, i64 %i.ku, i1 false)
  %.0..0..0..0..0..0..i = load i64, ptr %i.a, align 8 ; 3 uses
  %i.kv = add i64 %.0..0..0..0..0..0..i, 4557430888798830399
  %i.kw = add i64 %.0..0..0..0..0..0..i, 2676586395008836901
  %i.kx = xor i64 %i.kv, %i.kw
  %i.ky = lshr i64 %i.kx, 2
  %i.kz = and i64 %i.ky, 2314885530818453536
  %i.la = xor i64 %i.kz, %.0..0..0..0..0..0..i
  store i64 %i.la, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kt, ptr nonnull align 8 %i.a, i64 %i.ku, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN3ada7unicode14to_lower_asciiEPcm.exit

_ZN3ada7unicode14to_lower_asciiEPcm.exit:         ; preds = %._crit_edge.i, %bb.av
  %i.lb = load ptr, ptr %25, align 8
  %i.lc = load i64, ptr %i.hx, align 8
  call void @_ZN3ada14url_aggregator10set_schemeESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.lc, ptr %i.lb)
  %i.ld = load ptr, ptr %25, align 8              ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.hw
  br i1 %i.le, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN3ada7unicode14to_lower_asciiEPcm.exit
  %i.lf = load i64, ptr %i.hw, align 8
  %i.lg = add i64 %i.lf, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lg) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN3ada7unicode14to_lower_asciiEPcm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31
  br label %_ZN3ada14url_aggregator23parse_scheme_with_colonILb0EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN3ada14url_aggregator23parse_scheme_with_colonILb0EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ao
  %i.lh = load i8, ptr %i.f, align 1              ; 3 uses
  %i.li = icmp eq i8 %i.lh, 6
  br i1 %i.li, label %.critedge334.jt8.preheader, label %bb.aw

bb.aw:                                            ; preds = %_ZN3ada14url_aggregator23parse_scheme_with_colonILb0EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.lj = icmp ne i8 %i.lh, 1                     ; 2 uses
  %or.cond = and i1 %i.q, %i.lj
  br i1 %or.cond, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.lk = load i8, ptr %i.fm, align 1
  %i.ll = icmp eq i8 %i.lk, %i.lh
  br i1 %i.ll, label %.critedge334.jt14, label %.critedge334.jt13

bb.ay:                                            ; preds = %bb.aw
  br i1 %i.lj, label %.critedge334.jt13, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lm = icmp ult i64 %i.il, %.sroa.01167.1
  br i1 %i.lm, label %bb.ba, label %.critedge334.jt18

bb.ba:                                            ; preds = %bb.az
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.27.213711378, i64 %i.il
  %i.lo = load i8, ptr %i.ln, align 1
  %i.lp = icmp eq i8 %i.lo, 47
  br i1 %i.lp, label %.critedge334.jt11, label %.critedge334.jt18

.critedge334.jt4.thread:                          ; preds = %bb.ai, %.critedge, %.preheader1692, %bb.ak, %.critedge334.jt4
  %.027719852425 = phi i64 [ 0, %bb.ak ], [ %spec.select355, %.critedge334.jt4 ], [ 0, %.critedge ], [ %.sroa.01167.1, %bb.ai ], [ 0, %.preheader1692 ] ; 3 uses
  br i1 %i.hu, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %.critedge334.jt4.thread
  %i.lq = load i8, ptr %i.fu, align 1, !range !73, !noundef !74
  %i.lr = trunc nuw i8 %i.lq to i1
  br i1 %i.lr, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  br i1 %.sroa.61165.0, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.critedge334.jt4.thread
  store i8 0, ptr %i.c, align 8
  br label %.critedge354.critedge

bb.be:                                            ; preds = %bb.bc
  %i.ls = icmp eq i64 %.027719852425, %.sroa.01167.1
  br i1 %i.ls, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @_ZN3ada14url_aggregator11copy_schemeERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %3)
  %i.lt = load i8, ptr %i.fu, align 1, !range !73, !noundef !74
  store i8 %i.lt, ptr %i.d, align 1
  %i.lu = call { i64, ptr } @_ZNK3ada14url_aggregator12get_pathnameEv(ptr noundef nonnull align 8 dereferenceable(80) %3) ; 2 uses
  %i.lv = extractvalue { i64, ptr } %i.lu, 0
  %i.lw = extractvalue { i64, ptr } %i.lu, 1
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.lv, ptr %i.lw)
  %i.lx = call { i64, ptr } @_ZNK3ada14url_aggregator10get_searchEv(ptr noundef nonnull align 8 dereferenceable(80) %3) ; 2 uses
  %i.ly = extractvalue { i64, ptr } %i.lx, 0
  %i.lz = extractvalue { i64, ptr } %i.lx, 1
  call void @_ZN3ada14url_aggregator18update_base_searchESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.ly, ptr %i.lz)
  call void @_ZN3ada14url_aggregator26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.01163.0, ptr %.sroa.51164.0)
  br label %.critedge354.critedge

bb.bg:                                            ; preds = %bb.bb, %bb.be
  %i.ma = load i8, ptr %i.fm, align 1
  %.not331 = icmp eq i8 %i.ma, 6
  br i1 %.not331, label %.critedge334.jt8.preheader, label %.critedge334.jt6.preheader

.critedge334.jt8.preheader:                       ; preds = %_ZN3ada14url_aggregator23parse_scheme_with_colonILb0EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.bg
  %.15292.jt8.ph = phi i64 [ %.027719852425, %bb.bg ], [ %i.il, %_ZN3ada14url_aggregator23parse_scheme_with_colonILb0EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 2 uses
  %.not.jt82869 = icmp ugt i64 %.15292.jt8.ph, %.sroa.01167.1
  br i1 %.not.jt82869, label %.critedge354.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1002.lr.ph, !llvm.loop !164

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1002.lr.ph: ; preds = %.critedge334.jt8.preheader
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1002, !llvm.loop !164

bb.bh:                                            ; preds = %.critedge334.jt0
  %i.mb = icmp ult i64 %.15292.jt0, %.sroa.01167.1
  br i1 %i.mb, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i562, label %.critedge334.jt3

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i562:    ; preds = %bb.bh
  %i.mc = sub nuw i64 %.sroa.01167.1, %.15292.jt0
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.27.213711378, i64 %.15292.jt0
  %i.me = call ptr @memchr(ptr noundef %i.md, i32 noundef 64, i64 noundef %i.mc) #31 ; 2 uses
  %.not.i563 = icmp eq ptr %i.me, null
  %i.mf = ptrtoint ptr %i.me to i64
  %i.mg = sub i64 %i.mf, %i.ht
  %i.mh = icmp eq i64 %i.mg, -1
  %or.cond1641 = select i1 %.not.i563, i1 true, i1 %i.mh
  br i1 %or.cond1641, label %.critedge334.jt3, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

.preheader1693._crit_edge:                        ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit574
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %i.nr, i64 noundef %.sroa.01167.1) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i562, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit574
  %.32801978 = phi i64 [ %i.nr, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit574 ], [ %.15292.jt0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i562 ] ; 5 uses
  %.02931977 = phi i8 [ %.1294, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit574 ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i562 ] ; 3 uses
  %.02961976 = phi i8 [ %.1297, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit574 ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i562 ] ; 2 uses
  %i.mi = sub nuw i64 %.sroa.01167.1, %.32801978  ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.27.213711378, i64 %.32801978 ; 6 uses
  %i.mk = load i8, ptr %i.f, align 1
  %i.ml = icmp ne i8 %i.mk, 1                     ; 2 uses
  %.not.i1973 = icmp samesign eq i64 %.32801978, %.sroa.01167.1 ; 2 uses
  br i1 %i.ml, label %.preheader, label %.preheader1686

.preheader1686:                                   ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  br i1 %.not.i1973, label %_ZN3ada7helpers32find_authority_delimiter_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph1972

.preheader:                                       ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  br i1 %.not.i1973, label %_ZN3ada7helpers32find_authority_delimiter_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph1975

.lr.ph1975:                                       ; preds = %.preheader, %bb.bi
end_hunk_6
begin_hunk_7_@_ZN3ada3url12set_protocolESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.df = icmp eq i8 %i.de, 58
  br i1 %i.df, label %bb.al, label %_ZN3ada3url12parse_schemeILb1EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.al:                                            ; preds = %bb.ak
  %i.dg = ptrtoint ptr %.sroa.01.0.lcssa.i.i to i64
  %i.dh = ptrtoint ptr %i.cs to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 10 uses
  %i.dj = icmp eq ptr %.sroa.01.0.lcssa.i.i, %i.cs
  br i1 %i.dj, label %bb.ax, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dk = shl i64 %i.di, 1
  %i.dl = load i8, ptr %i.cs, align 1             ; 2 uses
  %i.dm = zext i8 %i.dl to i64
  %i.dn = add i64 %i.dk, %i.dm                    ; 2 uses
  %i.do = trunc i64 %i.dn to i8
  %i.dp = and i8 %i.do, 7                         ; 5 uses
  %i.dq = and i64 %i.dn, 7                        ; 3 uses
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr @_ZN3ada6scheme7detailsL15is_special_listE, i64 %i.dq ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 2 uses
  %i.ds = load i8, ptr %.sroa.4.0.copyload.i, align 1
  %i.dt = icmp eq i8 %i.ds, %i.dl
  br i1 %i.dt, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit7.i, label %.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit7.i: ; preds = %bb.am
  %.sroa.0.0.copyload.i6 = load i64, ptr %i.dr, align 16 ; 2 uses
  %i.du = add i64 %.sroa.0.0.copyload.i6, -1      ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %i.dx = icmp eq i64 %.sroa.0.0.copyload.i6, %i.di
  br i1 %i.dx, label %bb.an, label %.thread

bb.an:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit7.i
  %i.dy = icmp eq i64 %i.du, 0
  br i1 %i.dy, label %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.an
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.dv, ptr nonnull %i.dw, i64 %i.du)
  %i.dz = icmp ne i32 %bcmp.i.i, 0
  %.not.i = icmp eq i8 %i.dp, 1
  %or.cond = or i1 %i.dz, %.not.i
  br i1 %or.cond, label %.thread, label %bb.ao

_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.an
  %.not.i.old = icmp eq i8 %i.dp, 1
  br i1 %.not.i.old, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1             ; 2 uses
  %.not = icmp eq i8 %i.eb, 1
  br i1 %.not, label %_ZN3ada3url12parse_schemeILb1EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ed = load i64, ptr %i.ec, align 8
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %_ZNK3ada3url15has_credentialsEv.exit24.i, label %_ZNK3ada3url15has_credentialsEv.exit24.i.thread

_ZNK3ada3url15has_credentialsEv.exit24.i:         ; preds = %bb.ap
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.eg = load i64, ptr %i.ef, align 8
  %.not66 = icmp eq i64 %i.eg, 0
  br i1 %.not66, label %bb.aq, label %_ZNK3ada3url15has_credentialsEv.exit24.i.thread

bb.aq:                                            ; preds = %_ZNK3ada3url15has_credentialsEv.exit24.i
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.ei = load i8, ptr %i.eh, align 2, !range !73, !noundef !74
  %i.ej = trunc nuw i8 %i.ei to i1
  %i.ek = icmp eq i8 %i.dp, 6
  %or.cond.i = and i1 %i.ek, %i.ej
  br i1 %or.cond.i, label %_ZN3ada3url12parse_schemeILb1EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.ar

_ZNK3ada3url15has_credentialsEv.exit24.i.thread:  ; preds = %bb.ap, %_ZNK3ada3url15has_credentialsEv.exit24.i
  %.old2.i = icmp eq i8 %i.dp, 6
  br i1 %.old2.i, label %_ZN3ada3url12parse_schemeILb1EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNK3ada3url15has_credentialsEv.exit24.i.thread, %bb.aq
  %i.el = icmp eq i8 %i.eb, 6
  br i1 %i.el, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.en = load i8, ptr %i.em, align 8, !range !73, !noundef !74
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit, label %bb.at

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit: ; preds = %bb.as
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %_ZN3ada3url12parse_schemeILb1EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.at

bb.at:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit, %bb.as, %bb.ar
  store i8 %i.dp, ptr %i.ea, align 1
  %i.es = getelementptr inbounds nuw [2 x i8], ptr @_ZN3ada6scheme7detailsL13special_portsE, i64 %i.dq
  %i.et = load i16, ptr %i.es, align 2
  %i.eu = shl nuw nsw i64 1, %i.dq
  %i.ev = and i64 %i.eu, 194
  %.not23.i.not = icmp eq i64 %i.ev, 0
  br i1 %.not23.i.not, label %bb.au, label %_ZN3ada3url12parse_schemeILb1EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.au:                                            ; preds = %bb.at
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 122 ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 2, !range !73, !noundef !74
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.av, label %_ZN3ada3url12parse_schemeILb1EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.av:                                            ; preds = %bb.au
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fa = load i16, ptr %i.ez, align 8
  %i.fb = icmp eq i16 %i.fa, %i.et
  br i1 %i.fb, label %bb.aw, label %_ZN3ada3url12parse_schemeILb1EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.aw:                                            ; preds = %bb.av
  store i8 0, ptr %i.ew, align 2
  br label %_ZN3ada3url12parse_schemeILb1EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.ax:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.fc, ptr %3, align 8
  %i.fd = icmp eq ptr %i.cs, null
  br i1 %i.fd, label %bb.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit13

bb.ay:                                            ; preds = %bb.ax
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.131) #32
  unreachable

.thread:                                          ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit7.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.am, %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.fe, ptr %3, align 8
  %i.ff = icmp ugt i64 %i.di, 15
  br i1 %i.ff, label %bb.az, label %._crit_edge.i.i.i.i11

bb.az:                                            ; preds = %.thread
  %i.fg = icmp slt i64 %i.di, 0
  br i1 %i.fg, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.123) #32
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.fh = add nuw i64 %i.di, 1                    ; 2 uses
  %i.fi = icmp slt i64 %i.fh, 0
  br i1 %i.fi, label %bb.bc, label %._crit_edge.i.i.i.i11.thread, !prof !18

bb.bc:                                            ; preds = %bb.bb
  call void @_ZSt17__throw_bad_allocv() #32
  unreachable

._crit_edge.i.i.i.i11.thread:                     ; preds = %bb.bb
  %i.fj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fh) #33 ; 2 uses
  store ptr %i.fj, ptr %3, align 8
  store i64 %i.di, ptr %i.fe, align 8
  br label %bb.be

._crit_edge.i.i.i.i11:                            ; preds = %.thread
  %cond = icmp eq i64 %i.di, 1
  br i1 %cond, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %._crit_edge.i.i.i.i11
  %i.fk = load i8, ptr %i.cs, align 1
  store i8 %i.fk, ptr %i.fe, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit13

bb.be:                                            ; preds = %._crit_edge.i.i.i.i11.thread, %._crit_edge.i.i.i.i11
  %i.fl = phi ptr [ %i.fj, %._crit_edge.i.i.i.i11.thread ], [ %i.fe, %._crit_edge.i.i.i.i11 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fl, ptr nonnull align 1 %i.cs, i64 %i.di, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit13: ; preds = %bb.ax, %bb.bd, %bb.be
  %i.fm = phi ptr [ %i.fl, %bb.be ], [ %i.fc, %bb.ax ], [ %i.fe, %bb.bd ]
  %i.fn = phi ptr [ %i.fe, %bb.be ], [ %i.fc, %bb.ax ], [ %i.fe, %bb.bd ] ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.di, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.di
  store i8 0, ptr %i.fp, align 1
  %i.fq = load ptr, ptr %3, align 8               ; 3 uses
  %i.fr = load i64, ptr %i.fo, align 8            ; 5 uses
  %i.fs = icmp ugt i64 %i.fr, 7
  br i1 %i.fs, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit13
  %i.ft = add i64 %i.fr, -8                       ; 2 uses
  %i.fu = lshr i64 %i.ft, 3
  %i.fv = add nuw nsw i64 %i.fu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ft, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader129, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.fv, 4611686018427387900     ; 3 uses
  %i.fw = shl i64 %n.vec, 3                       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fx = shl i64 %index, 3
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fx ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.fy, align 1 ; 3 uses
  %wide.load128 = load <2 x i64>, ptr %i.fz, align 1 ; 3 uses
  %i.ga = add <2 x i64> %wide.load, splat (i64 4557430888798830399)
  %i.gb = add <2 x i64> %wide.load128, splat (i64 4557430888798830399)
  %i.gc = add <2 x i64> %wide.load, splat (i64 2676586395008836901)
  %i.gd = add <2 x i64> %wide.load128, splat (i64 2676586395008836901)
  %i.ge = xor <2 x i64> %i.ga, %i.gc
  %i.gf = xor <2 x i64> %i.gb, %i.gd
  %i.gg = lshr <2 x i64> %i.ge, splat (i64 2)
  %i.gh = lshr <2 x i64> %i.gf, splat (i64 2)
  %i.gi = and <2 x i64> %i.gg, splat (i64 2314885530818453536)
  %i.gj = and <2 x i64> %i.gh, splat (i64 2314885530818453536)
  %i.gk = xor <2 x i64> %i.gi, %wide.load
  %i.gl = xor <2 x i64> %i.gj, %wide.load128
  store <2 x i64> %i.gk, ptr %i.fy, align 1
  store <2 x i64> %i.gl, ptr %i.fz, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gm = icmp eq i64 %index.next, %n.vec
  br i1 %i.gm, label %middle.block, label %vector.body, !llvm.loop !237

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fv, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader129

.lr.ph.i.preheader129:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.03638.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.fw, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader129, %.lr.ph.i
  %.03638.i = phi i64 [ %i.gu, %.lr.ph.i ], [ %.03638.i.ph, %.lr.ph.i.preheader129 ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.03638.i ; 2 uses
  %.0.copyload.i = load i64, ptr %i.gn, align 1   ; 3 uses
  %i.go = add i64 %.0.copyload.i, 4557430888798830399
  %i.gp = add i64 %.0.copyload.i, 2676586395008836901
  %i.gq = xor i64 %i.go, %i.gp
  %i.gr = lshr i64 %i.gq, 2
  %i.gs = and i64 %i.gr, 2314885530818453536
  %i.gt = xor i64 %i.gs, %.0.copyload.i
  store i64 %i.gt, ptr %i.gn, align 1
  %i.gu = add nuw i64 %.03638.i, 8                ; 3 uses
  %i.gv = or disjoint i64 %i.gu, 7
  %i.gw = icmp ult i64 %i.gv, %i.fr
  br i1 %i.gw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !238

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit13
  %.036.lcssa.i = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit13 ], [ %i.fw, %middle.block ], [ %i.gu, %.lr.ph.i ] ; 3 uses
  %i.gx = icmp ult i64 %.036.lcssa.i, %i.fr
  br i1 %i.gx, label %bb.bf, label %_ZN3ada7unicode14to_lower_asciiEPcm.exit

bb.bf:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.036.lcssa.i ; 2 uses
  %i.gz = sub nuw i64 %i.fr, %.036.lcssa.i        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.gy, i64 %i.gz, i1 false)
  %.0..0..0..0..0..0..i = load i64, ptr %i.a, align 8 ; 3 uses
  %i.ha = add i64 %.0..0..0..0..0..0..i, 4557430888798830399
  %i.hb = add i64 %.0..0..0..0..0..0..i, 2676586395008836901
  %i.hc = xor i64 %i.ha, %i.hb
  %i.hd = lshr i64 %i.hc, 2
  %i.he = and i64 %i.hd, 2314885530818453536
  %i.hf = xor i64 %i.he, %.0..0..0..0..0..0..i
  store i64 %i.hf, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gy, ptr nonnull align 8 %i.a, i64 %i.gz, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN3ada7unicode14to_lower_asciiEPcm.exit

_ZN3ada7unicode14to_lower_asciiEPcm.exit:         ; preds = %._crit_edge.i, %bb.bf
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 3 uses
  %i.hh = load i8, ptr %i.hg, align 1             ; 2 uses
  %.not67 = icmp eq i8 %i.hh, 1                   ; 3 uses
  %i.hi = load ptr, ptr %3, align 8               ; 2 uses
  %i.hj = load i64, ptr %i.fo, align 8            ; 3 uses
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm, label %bb.bg

bb.bg:                                            ; preds = %_ZN3ada7unicode14to_lower_asciiEPcm.exit
  %i.hl = shl i64 %i.hj, 1
  %i.hm = load i8, ptr %i.hi, align 1             ; 2 uses
  %i.hn = zext i8 %i.hm to i64
  %i.ho = add i64 %i.hl, %i.hn
  %i.hp = and i64 %i.ho, 7
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr @_ZN3ada6scheme7detailsL15is_special_listE, i64 %i.hp ; 2 uses
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %.sroa.454.0.copyload = load ptr, ptr %.sroa.454.0..sroa_idx, align 8 ; 2 uses
  %i.hr = load i8, ptr %.sroa.454.0.copyload, align 1
  %i.hs = icmp eq i8 %i.hr, %i.hm
  br i1 %i.hs, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit19, label %_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit19: ; preds = %bb.bg
  %.sroa.053.0.copyload = load i64, ptr %i.hq, align 16 ; 2 uses
  %i.ht = add i64 %.sroa.053.0.copyload, -1       ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.454.0.copyload, i64 1
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  %i.hw = icmp eq i64 %.sroa.053.0.copyload, %i.hj
  br i1 %i.hw, label %bb.bh, label %_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm

bb.bh:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit19
  %i.hx = icmp eq i64 %i.ht, 0
  br i1 %i.hx, label %_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.bh
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.hu, ptr nonnull %i.hv, i64 %i.ht)
  %i.hy = icmp eq i32 %bcmp.i, 0
  %i.hz = xor i1 %.not67, %i.hy
  br i1 %i.hz, label %bb.bi, label %.critedge.i

_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit19, %bb.bg, %_ZN3ada7unicode14to_lower_asciiEPcm.exit
  br i1 %.not67, label %bb.bi, label %.critedge.i

_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.bh
  br i1 %.not67, label %.critedge.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm, %_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ib = load i64, ptr %i.ia, align 8
  %i.ic = icmp eq i64 %i.ib, 0
  br i1 %i.ic, label %_ZNK3ada3url15has_credentialsEv.exit.i, label %_ZNK3ada3url15has_credentialsEv.exit.i.thread

_ZNK3ada3url15has_credentialsEv.exit.i:           ; preds = %bb.bi
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ie = load i64, ptr %i.id, align 8
  %.not68 = icmp eq i64 %i.ie, 0
  br i1 %.not68, label %bb.bj, label %_ZNK3ada3url15has_credentialsEv.exit.i.thread

bb.bj:                                            ; preds = %_ZNK3ada3url15has_credentialsEv.exit.i
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.ig = load i8, ptr %i.if, align 2, !range !73, !noundef !74
  %i.ih = trunc nuw i8 %i.ig to i1
  br i1 %i.ih, label %_ZNK3ada3url15has_credentialsEv.exit.i.thread, label %bb.bk

_ZNK3ada3url15has_credentialsEv.exit.i.thread:    ; preds = %bb.bi, %bb.bj, %_ZNK3ada3url15has_credentialsEv.exit.i
  %i.ii = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.150)
  br i1 %i.ii, label %.critedge.i, label %_ZNK3ada3url15has_credentialsEv.exit.i.thread._crit_edge

_ZNK3ada3url15has_credentialsEv.exit.i.thread._crit_edge: ; preds = %_ZNK3ada3url15has_credentialsEv.exit.i.thread
  %.pre86 = load i8, ptr %i.hg, align 1
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNK3ada3url15has_credentialsEv.exit.i.thread._crit_edge, %bb.bj
  %i.ij = phi i8 [ %.pre86, %_ZNK3ada3url15has_credentialsEv.exit.i.thread._crit_edge ], [ %i.hh, %bb.bj ]
  %i.ik = icmp eq i8 %i.ij, 6
  br i1 %i.ik, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.im = load i8, ptr %i.il, align 8, !range !73, !noundef !74
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit20, label %bb.bm

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit20: ; preds = %bb.bl
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ip = load i64, ptr %i.io, align 8
  %i.iq = icmp eq i64 %i.ip, 0
  br i1 %i.iq, label %.critedge.i, label %bb.bm

bb.bm:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit20, %bb.bl, %bb.bk
  call void @_ZN3ada3url10set_schemeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #31
  %i.ir = load i8, ptr %i.hg, align 1
  %i.is = zext i8 %i.ir to i64                    ; 2 uses
  %i.it = getelementptr inbounds nuw [2 x i8], ptr @_ZN3ada6scheme7detailsL13special_portsE, i64 %i.is
  %i.iu = load i16, ptr %i.it, align 2
  %i.iv = shl nuw i64 1, %i.is
  %i.iw = and i64 %i.iv, 194
  %.not21.i.not = icmp eq i64 %i.iw, 0
  br i1 %.not21.i.not, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 122 ; 2 uses
  %i.iy = load i8, ptr %i.ix, align 2, !range !73, !noundef !74
  %i.iz = trunc nuw i8 %i.iy to i1
  br i1 %i.iz, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.jb = load i16, ptr %i.ja, align 8
  %i.jc = icmp eq i16 %i.jb, %i.iu
  br i1 %i.jc, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i8 0, ptr %i.ix, align 2
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bm
  %i.jd = load ptr, ptr %3, align 8               ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.fn
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bq
  %i.jf = load i64, ptr %i.fn, align 8
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jg) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZN3ada3url12parse_schemeILb1EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit

end_hunk_7
begin_hunk_8_@_ZN3ada14url_aggregator12set_protocolESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  store ptr %i.dn, ptr %5, align 8, !alias.scope !276
  store i64 %spec.select.i.i.i, ptr %i.di, align 8, !alias.scope !276
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.al
  %i.do = phi ptr [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.di, %bb.al ] ; 3 uses
  switch i64 %spec.select.i.i.i, label %bb.ar [
    i64 1, label %bb.aq
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.aq:                                            ; preds = %._crit_edge.i.i.i
  %i.dp = load i8, ptr %i.cr, align 1
  store i8 %i.dp, ptr %i.do, align 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.ar:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr align 1 %i.cr, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.aq, %bb.ar
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %spec.select.i.i.i, ptr %i.dq, align 8, !alias.scope !276
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %spec.select.i.i.i
  store i8 0, ptr %i.dr, align 1
  %i.ds = load ptr, ptr %5, align 8               ; 5 uses
  %i.dt = load i64, ptr %i.dq, align 8            ; 4 uses
  %i.du = add i64 %i.dt, -1                       ; 10 uses
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %.thread, label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.dw = shl i64 %i.du, 1
  %i.dx = load i8, ptr %i.ds, align 1             ; 2 uses
  %i.dy = zext i8 %i.dx to i64
  %i.dz = add i64 %i.dw, %i.dy                    ; 2 uses
  %i.ea = trunc i64 %i.dz to i8
  %i.eb = and i8 %i.ea, 7                         ; 5 uses
  %i.ec = and i64 %i.dz, 7
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr @_ZN3ada6scheme7detailsL15is_special_listE, i64 %i.ec ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 2 uses
  %i.ee = load i8, ptr %.sroa.4.0.copyload.i, align 1
  %i.ef = icmp eq i8 %i.ee, %i.dx
  br i1 %i.ef, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit7.i, label %.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit7.i: ; preds = %bb.as
  %.sroa.0.0.copyload.i7 = load i64, ptr %i.ed, align 16 ; 2 uses
  %i.eg = add i64 %.sroa.0.0.copyload.i7, -1      ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.ej = icmp eq i64 %.sroa.0.0.copyload.i7, %i.du
  br i1 %i.ej, label %bb.at, label %.thread

bb.at:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit7.i
  %i.ek = icmp eq i64 %i.eg, 0
  br i1 %i.ek, label %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.at
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.eh, ptr nonnull %i.ei, i64 %i.eg)
  %i.el = icmp ne i32 %bcmp.i.i, 0
  %.not.i = icmp eq i8 %i.eb, 1
  %or.cond = or i1 %i.el, %.not.i
  br i1 %or.cond, label %.thread, label %bb.au

_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.at
  %.not.i.old = icmp eq i8 %i.eb, 1
  br i1 %.not.i.old, label %.thread, label %bb.au

bb.au:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 3 uses
  %i.en = load i8, ptr %i.em, align 1             ; 2 uses
  %.not = icmp eq i8 %i.en, 1
  br i1 %.not, label %_ZN3ada14url_aggregator23parse_scheme_with_colonILb1EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ep = load i32, ptr %i.eo, align 8
  %i.eq = add i32 %i.ep, 2
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.es = load i32, ptr %i.er, align 4            ; 2 uses
  %i.et = icmp ult i32 %i.eq, %i.es
  br i1 %i.et, label %_ZNK3ada14url_aggregator15has_credentialsEv.exit2.thread, label %_ZNK3ada14url_aggregator15has_credentialsEv.exit2

_ZNK3ada14url_aggregator15has_credentialsEv.exit2: ; preds = %bb.av
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ev = load i32, ptr %i.eu, align 8
  %i.ew = icmp ugt i32 %i.ev, %i.es
  br i1 %i.ew, label %_ZNK3ada14url_aggregator15has_credentialsEv.exit2.thread, label %bb.aw

bb.aw:                                            ; preds = %_ZNK3ada14url_aggregator15has_credentialsEv.exit2
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ey = load i32, ptr %i.ex, align 8
  %i.ez = icmp ne i32 %i.ey, -1
  %i.fa = icmp eq i8 %i.eb, 6
  %or.cond.i = and i1 %i.fa, %i.ez
  br i1 %or.cond.i, label %_ZN3ada14url_aggregator23parse_scheme_with_colonILb1EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.ax

_ZNK3ada14url_aggregator15has_credentialsEv.exit2.thread: ; preds = %bb.av, %_ZNK3ada14url_aggregator15has_credentialsEv.exit2
  %.old2.i = icmp eq i8 %i.eb, 6
  br i1 %.old2.i, label %_ZN3ada14url_aggregator23parse_scheme_with_colonILb1EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZNK3ada14url_aggregator15has_credentialsEv.exit2.thread, %bb.aw
  %i.fb = icmp eq i8 %i.en, 6
  br i1 %i.fb, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fd = load i32, ptr %i.fc, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ff = load i32, ptr %i.fe, align 4
  %i.fg = icmp eq i32 %i.fd, %i.ff
  br i1 %i.fg, label %_ZN3ada14url_aggregator23parse_scheme_with_colonILb1EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  store i8 %i.eb, ptr %i.em, align 1
  call void @_ZN3ada14url_aggregator31set_scheme_from_view_with_colonESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.dt, ptr nonnull %i.ds)
  %i.fh = load i8, ptr %i.em, align 1
  %i.fi = zext i8 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr @_ZN3ada6scheme7detailsL13special_portsE, i64 %i.fi
  %i.fk = load i16, ptr %i.fj, align 2
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fm = load i32, ptr %i.fl, align 8
  %i.fn = zext i16 %i.fk to i32
  %i.fo = icmp eq i32 %i.fm, %i.fn
  br i1 %i.fo, label %bb.ba, label %_ZN3ada14url_aggregator23parse_scheme_with_colonILb1EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.ba:                                            ; preds = %bb.az
  call void @_ZN3ada14url_aggregator10clear_portEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br label %_ZN3ada14url_aggregator23parse_scheme_with_colonILb1EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit

.thread:                                          ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit7.i, %_ZN3ada6scheme15get_scheme_typeESt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.fp, ptr %3, align 8
  %i.fq = icmp ugt i64 %i.du, 15
  br i1 %i.fq, label %bb.bb, label %._crit_edge.i.i.i.i12

bb.bb:                                            ; preds = %.thread
  %i.fr = icmp slt i64 %i.du, 0
  br i1 %i.fr, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.123) #32
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.fs = icmp slt i64 %i.dt, 0
  br i1 %i.fs, label %bb.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i13, !prof !18

bb.be:                                            ; preds = %bb.bd
  call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i13: ; preds = %bb.bd
  %i.ft = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dt) #33 ; 2 uses
  store ptr %i.ft, ptr %3, align 8
  store i64 %i.du, ptr %i.fp, align 8
  br label %._crit_edge.i.i.i.i12

._crit_edge.i.i.i.i12:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i13, %.thread
  %i.fu = phi ptr [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i13 ], [ %i.fp, %.thread ] ; 3 uses
  switch i64 %i.du, label %bb.bg [
    i64 1, label %bb.bf
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit14
  ]

bb.bf:                                            ; preds = %._crit_edge.i.i.i.i12
  %i.fv = load i8, ptr %i.ds, align 1
  store i8 %i.fv, ptr %i.fu, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit14

bb.bg:                                            ; preds = %._crit_edge.i.i.i.i12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fu, ptr align 1 %i.ds, i64 %i.du, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit14: ; preds = %._crit_edge.i.i.i.i12, %bb.bf, %bb.bg
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.du, ptr %i.fw, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.du
  store i8 0, ptr %i.fx, align 1
  %i.fy = load ptr, ptr %3, align 8               ; 3 uses
  %i.fz = load i64, ptr %i.fw, align 8            ; 5 uses
  %i.ga = icmp ugt i64 %i.fz, 7
  br i1 %i.ga, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit14
  %i.gb = add i64 %i.fz, -8                       ; 2 uses
  %i.gc = lshr i64 %i.gb, 3
  %i.gd = add nuw nsw i64 %i.gc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gb, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader136, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.gd, 4611686018427387900     ; 3 uses
  %i.ge = shl i64 %n.vec, 3                       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gf = shl i64 %index, 3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.gf ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.gg, align 1 ; 3 uses
  %wide.load135 = load <2 x i64>, ptr %i.gh, align 1 ; 3 uses
  %i.gi = add <2 x i64> %wide.load, splat (i64 4557430888798830399)
  %i.gj = add <2 x i64> %wide.load135, splat (i64 4557430888798830399)
  %i.gk = add <2 x i64> %wide.load, splat (i64 2676586395008836901)
  %i.gl = add <2 x i64> %wide.load135, splat (i64 2676586395008836901)
  %i.gm = xor <2 x i64> %i.gi, %i.gk
  %i.gn = xor <2 x i64> %i.gj, %i.gl
  %i.go = lshr <2 x i64> %i.gm, splat (i64 2)
  %i.gp = lshr <2 x i64> %i.gn, splat (i64 2)
  %i.gq = and <2 x i64> %i.go, splat (i64 2314885530818453536)
  %i.gr = and <2 x i64> %i.gp, splat (i64 2314885530818453536)
  %i.gs = xor <2 x i64> %i.gq, %wide.load
  %i.gt = xor <2 x i64> %i.gr, %wide.load135
  store <2 x i64> %i.gs, ptr %i.gg, align 1
  store <2 x i64> %i.gt, ptr %i.gh, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gu = icmp eq i64 %index.next, %n.vec
  br i1 %i.gu, label %middle.block, label %vector.body, !llvm.loop !279

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gd, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader136

.lr.ph.i.preheader136:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.03638.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ge, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader136, %.lr.ph.i
  %.03638.i = phi i64 [ %i.hc, %.lr.ph.i ], [ %.03638.i.ph, %.lr.ph.i.preheader136 ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.03638.i ; 2 uses
  %.0.copyload.i = load i64, ptr %i.gv, align 1   ; 3 uses
  %i.gw = add i64 %.0.copyload.i, 4557430888798830399
  %i.gx = add i64 %.0.copyload.i, 2676586395008836901
  %i.gy = xor i64 %i.gw, %i.gx
  %i.gz = lshr i64 %i.gy, 2
  %i.ha = and i64 %i.gz, 2314885530818453536
  %i.hb = xor i64 %i.ha, %.0.copyload.i
  store i64 %i.hb, ptr %i.gv, align 1
  %i.hc = add nuw i64 %.03638.i, 8                ; 3 uses
  %i.hd = or disjoint i64 %i.hc, 7
  %i.he = icmp ult i64 %i.hd, %i.fz
  br i1 %i.he, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !280

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit14
  %.036.lcssa.i = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit14 ], [ %i.ge, %middle.block ], [ %i.hc, %.lr.ph.i ] ; 3 uses
  %i.hf = icmp ult i64 %.036.lcssa.i, %i.fz
  br i1 %i.hf, label %bb.bh, label %_ZN3ada7unicode14to_lower_asciiEPcm.exit

bb.bh:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.036.lcssa.i ; 2 uses
  %i.hh = sub nuw i64 %i.fz, %.036.lcssa.i        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.hg, i64 %i.hh, i1 false)
  %.0..0..0..0..0..0..i = load i64, ptr %i.a, align 8 ; 3 uses
  %i.hi = add i64 %.0..0..0..0..0..0..i, 4557430888798830399
  %i.hj = add i64 %.0..0..0..0..0..0..i, 2676586395008836901
  %i.hk = xor i64 %i.hi, %i.hj
  %i.hl = lshr i64 %i.hk, 2
  %i.hm = and i64 %i.hl, 2314885530818453536
  %i.hn = xor i64 %i.hm, %.0..0..0..0..0..0..i
  store i64 %i.hn, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hg, ptr nonnull align 8 %i.a, i64 %i.hh, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN3ada7unicode14to_lower_asciiEPcm.exit

_ZN3ada7unicode14to_lower_asciiEPcm.exit:         ; preds = %._crit_edge.i, %bb.bh
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 3 uses
  %i.hp = load i8, ptr %i.ho, align 1             ; 2 uses
  %.not71 = icmp eq i8 %i.hp, 1                   ; 3 uses
  %i.hq = load ptr, ptr %3, align 8               ; 2 uses
  %i.hr = load i64, ptr %i.fw, align 8            ; 3 uses
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm, label %bb.bi

bb.bi:                                            ; preds = %_ZN3ada7unicode14to_lower_asciiEPcm.exit
  %i.ht = shl i64 %i.hr, 1
  %i.hu = load i8, ptr %i.hq, align 1             ; 2 uses
  %i.hv = zext i8 %i.hu to i64
  %i.hw = add i64 %i.ht, %i.hv
  %i.hx = and i64 %i.hw, 7
  %i.hy = getelementptr inbounds nuw [16 x i8], ptr @_ZN3ada6scheme7detailsL15is_special_listE, i64 %i.hx ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %i.hz = load i8, ptr %.sroa.4.0.copyload, align 1
  %i.ia = icmp eq i8 %i.hz, %i.hu
  br i1 %i.ia, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit22, label %_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit22: ; preds = %bb.bi
  %.sroa.060.0.copyload = load i64, ptr %i.hy, align 16 ; 2 uses
  %i.ib = add i64 %.sroa.060.0.copyload, -1       ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 1
  %i.id = getelementptr inbounds nuw i8, ptr %i.hq, i64 1
  %i.ie = icmp eq i64 %.sroa.060.0.copyload, %i.hr
  br i1 %i.ie, label %bb.bj, label %_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm

bb.bj:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit22
  %i.if = icmp eq i64 %i.ib, 0
  br i1 %i.if, label %_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.bj
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.ic, ptr nonnull %i.id, i64 %i.ib)
  %i.ig = icmp eq i32 %bcmp.i, 0
  %i.ih = xor i1 %.not71, %i.ig
  br i1 %i.ih, label %bb.bk, label %.critedge.i

_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit22, %bb.bi, %_ZN3ada7unicode14to_lower_asciiEPcm.exit
  br i1 %.not71, label %bb.bk, label %.critedge.i

_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.bj
  br i1 %.not71, label %.critedge.i, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm, %_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ij = load i32, ptr %i.ii, align 8
  %i.ik = add i32 %i.ij, 2
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.im = load i32, ptr %i.il, align 4            ; 2 uses
  %i.in = icmp ult i32 %i.ik, %i.im
  br i1 %i.in, label %_ZNK3ada14url_aggregator15has_credentialsEv.exit.thread, label %_ZNK3ada14url_aggregator15has_credentialsEv.exit

_ZNK3ada14url_aggregator15has_credentialsEv.exit: ; preds = %bb.bk
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ip = load i32, ptr %i.io, align 8
  %i.iq = icmp ugt i32 %i.ip, %i.im
  br i1 %i.iq, label %_ZNK3ada14url_aggregator15has_credentialsEv.exit.thread, label %bb.bl

bb.bl:                                            ; preds = %_ZNK3ada14url_aggregator15has_credentialsEv.exit
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.is = load i32, ptr %i.ir, align 8
  %.not22.i = icmp eq i32 %i.is, -1
  br i1 %.not22.i, label %bb.bm, label %_ZNK3ada14url_aggregator15has_credentialsEv.exit.thread

_ZNK3ada14url_aggregator15has_credentialsEv.exit.thread: ; preds = %bb.bk, %bb.bl, %_ZNK3ada14url_aggregator15has_credentialsEv.exit
  %i.it = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.150)
  br i1 %i.it, label %.critedge.i, label %_ZNK3ada14url_aggregator15has_credentialsEv.exit.thread._crit_edge

_ZNK3ada14url_aggregator15has_credentialsEv.exit.thread._crit_edge: ; preds = %_ZNK3ada14url_aggregator15has_credentialsEv.exit.thread
  %.pre89 = load i8, ptr %i.ho, align 1
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNK3ada14url_aggregator15has_credentialsEv.exit.thread._crit_edge, %bb.bl
  %i.iu = phi i8 [ %.pre89, %_ZNK3ada14url_aggregator15has_credentialsEv.exit.thread._crit_edge ], [ %i.hp, %bb.bl ]
  %i.iv = icmp eq i8 %i.iu, 6
  br i1 %i.iv, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ix = load i32, ptr %i.iw, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.iz = load i32, ptr %i.iy, align 4
  %i.ja = icmp eq i32 %i.ix, %i.iz
  br i1 %i.ja, label %.critedge.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.jb = load ptr, ptr %3, align 8
  %i.jc = load i64, ptr %i.fw, align 8
  call void @_ZN3ada14url_aggregator10set_schemeESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.jc, ptr %i.jb)
  %i.jd = load i8, ptr %i.ho, align 1
  %i.je = zext i8 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr @_ZN3ada6scheme7detailsL13special_portsE, i64 %i.je
  %i.jg = load i16, ptr %i.jf, align 2
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ji = load i32, ptr %i.jh, align 8
  %i.jj = zext i16 %i.jg to i32
  %i.jk = icmp eq i32 %i.ji, %i.jj
  br i1 %i.jk, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN3ada14url_aggregator10clear_portEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.jl = load ptr, ptr %3, align 8               ; 2 uses
  %i.jm = icmp eq ptr %i.jl, %i.fp
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bq
  %i.jn = load i64, ptr %i.fp, align 8
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jo) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZN3ada14url_aggregator23parse_scheme_with_colonILb1EEEbSt17basic_string_viewIcSt11char_traitsIcEE.exit

.critedge.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm, %bb.bn, %_ZNK3ada14url_aggregator15has_credentialsEv.exit.thread, %_ZN3ada6scheme10is_specialESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.jp = load ptr, ptr %3, align 8               ; 2 uses
  %i.jq = icmp eq ptr %i.jp, %i.fp
  br i1 %i.jq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %.critedge.i
  %i.jr = load i64, ptr %i.fp, align 8
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.js) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
end_hunk_8
begin_hunk_9_@_ZN3ada19url_pattern_helpers32generate_segment_wildcard_regexpB5cxx11ENS_37url_pattern_compile_component_optionsE:._crit_edge.i.i
  %i.s = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.n, %i.s
  br i1 %.not.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.k ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.j, 1
  br i1 %cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load i8, ptr %i.h, align 1
  store i8 %i.u, ptr %i.t, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k, i64 noundef 0, ptr noundef %i.h, i64 noundef %i.j)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  store i64 %i.n, ptr %i.b, align 8
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store i8 0, ptr %i.w, align 1
  %i.x = load ptr, ptr %3, align 8                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.aa = load i64, ptr %i.y, align 8
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.ac = load i64, ptr %i.b, align 8             ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #32
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = add nsw i64 %i.ac, 3                    ; 3 uses
  %i.af = load ptr, ptr %0, align 8               ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ah = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ah)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ai = load i64, ptr %i.a, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aj = phi i64 [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.ae, %i.aj
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ak, ptr noundef nonnull align 1 dereferenceable(3) @.str.106, i64 3, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ac, i64 noundef 0, ptr noundef nonnull @.str.106, i64 noundef 3)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.h, %bb.i
  store i64 %i.ae, ptr %i.b, align 8
  %i.al = load ptr, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ae
  store i8 0, ptr %i.am, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN3ada19url_pattern_helpers15is_ipv6_addressESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %0, 2
  br i1 %i.a, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1
  %i.c = icmp eq i8 %i.b, 91
  br i1 %i.c, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.b
  %i.d = load i16, ptr %1, align 1
  %i.e = icmp ne i16 %i.d, 23419
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i3

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i3: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.h = load i16, ptr %1, align 1
  %i.i = icmp ne i16 %i.h, 23388
  %i.j = zext i1 %i.i to i32
  %i.k = icmp eq i32 %i.j, 0
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.b, %bb.a
  %.0 = phi i1 [ true, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ false, %bb.a ], [ true, %bb.b ], [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i3 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3ada6errorsEEC2IRA1_KcTnPNSt9enable_ifIXsr3std14is_convertibleIOT_S6_EE5valueEvE4typeELPv0ETnPNSE_IXaaaaaasr3std16is_constructibleIS6_SG_EE5valuentsr3std7is_sameINSt5decayISF_E4typeENS_10in_place_tEEE5valuentsr3std7is_sameIS9_SN_EE5valuentsr3std7is_sameINS_10unexpectedIS8_EESN_EE5valueEvE4typeELSK_0EEESG_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(1) %1) #31 ; 8 uses
  %i.c = icmp ugt i64 %i.b, 15
  br i1 %i.c, label %bb.b, label %._crit_edge.i.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.123) #32
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = add nuw i64 %i.b, 1                      ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i, !prof !18

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #33 ; 2 uses
  store ptr %i.g, ptr %0, align 8
  store i64 %i.b, ptr %i.a, align 8
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i, %bb.a
  %i.h = phi ptr [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.b, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3ada6errorsEEC2IJRA1_KcETnPNSt9enable_ifIXsr3std16is_constructibleIS6_DpOT_EE5valueEvE4typeELPv0EEENS_10in_place_tESH_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.i = load i8, ptr %1, align 1
  store i8 %i.i, ptr %i.h, align 1
  br label %_ZN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3ada6errorsEEC2IJRA1_KcETnPNSt9enable_ifIXsr3std16is_constructibleIS6_DpOT_EE5valueEvE4typeELPv0EEENS_10in_place_tESH_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 dereferenceable(1) %1, i64 %i.b, i1 false)
  br label %_ZN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3ada6errorsEEC2IJRA1_KcETnPNSt9enable_ifIXsr3std16is_constructibleIS6_DpOT_EE5valueEvE4typeELPv0EEENS_10in_place_tESH_.exit

_ZN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3ada6errorsEEC2IJRA1_KcETnPNSt9enable_ifIXsr3std16is_constructibleIS6_DpOT_EE5valueEvE4typeELPv0EEENS_10in_place_tESH_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i, %bb.f, %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b
  store i8 0, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.l, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3ada7unicode14to_lower_asciiEPcm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = icmp ugt i64 %1, 7
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = add i64 %1, -8                           ; 2 uses
  %i.d = lshr i64 %i.c, 3
  %i.e = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.c, 24
  br i1 %min.iters.check, label %.lr.ph.preheader47, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.e, 4611686018427387900      ; 3 uses
  %i.f = shl i64 %n.vec, 3                        ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi45 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %i.g = shl i64 %index, 3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.h, align 1  ; 4 uses
  %wide.load46 = load <2 x i64>, ptr %i.i, align 1 ; 4 uses
  %i.j = and <2 x i64> %wide.load, splat (i64 -9187201950435737472)
  %i.k = and <2 x i64> %wide.load46, splat (i64 -9187201950435737472)
  %i.l = or <2 x i64> %i.j, %vec.phi              ; 2 uses
  %i.m = or <2 x i64> %i.k, %vec.phi45            ; 2 uses
  %i.n = add <2 x i64> %wide.load, splat (i64 4557430888798830399)
  %i.o = add <2 x i64> %wide.load46, splat (i64 4557430888798830399)
  %i.p = add <2 x i64> %wide.load, splat (i64 2676586395008836901)
  %i.q = add <2 x i64> %wide.load46, splat (i64 2676586395008836901)
  %i.r = xor <2 x i64> %i.n, %i.p
  %i.s = xor <2 x i64> %i.o, %i.q
  %i.t = lshr <2 x i64> %i.r, splat (i64 2)
  %i.u = lshr <2 x i64> %i.s, splat (i64 2)
  %i.v = and <2 x i64> %i.t, splat (i64 2314885530818453536)
  %i.w = and <2 x i64> %i.u, splat (i64 2314885530818453536)
  %i.x = xor <2 x i64> %i.v, %wide.load
  %i.y = xor <2 x i64> %i.w, %wide.load46
  store <2 x i64> %i.x, ptr %i.h, align 1
  store <2 x i64> %i.y, ptr %i.i, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !429

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.m, %i.l
  %i.aa = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader47

.lr.ph.preheader47:                               ; preds = %.lr.ph.preheader, %middle.block
  %.039.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aa, %middle.block ]
  %.03638.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.f, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader47, %.lr.ph
  %.039 = phi i64 [ %i.ad, %.lr.ph ], [ %.039.ph, %.lr.ph.preheader47 ]
  %.03638 = phi i64 [ %i.ak, %.lr.ph ], [ %.03638.ph, %.lr.ph.preheader47 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.03638 ; 2 uses
  %.0.copyload = load i64, ptr %i.ab, align 1     ; 4 uses
  %i.ac = and i64 %.0.copyload, -9187201950435737472
  %i.ad = or i64 %i.ac, %.039                     ; 2 uses
  %i.ae = add i64 %.0.copyload, 4557430888798830399
  %i.af = add i64 %.0.copyload, 2676586395008836901
  %i.ag = xor i64 %i.ae, %i.af
  %i.ah = lshr i64 %i.ag, 2
  %i.ai = and i64 %i.ah, 2314885530818453536
  %i.aj = xor i64 %i.ai, %.0.copyload
  store i64 %i.aj, ptr %i.ab, align 1
  %i.ak = add nuw i64 %.03638, 8                  ; 3 uses
  %i.al = or disjoint i64 %i.ak, 7
  %i.am = icmp ult i64 %i.al, %1
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !430

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.036.lcssa = phi i64 [ 0, %bb.a ], [ %i.f, %middle.block ], [ %i.ak, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.aa, %middle.block ], [ %i.ad, %.lr.ph ] ; 2 uses
  %i.an = icmp ult i64 %.036.lcssa, %1
  br i1 %i.an, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %.036.lcssa ; 2 uses
  %i.ap = sub nuw i64 %1, %.036.lcssa             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.ao, i64 %i.ap, i1 false)
  %.0..0..0..0. = load i64, ptr %i.a, align 8     ; 4 uses
  %i.aq = and i64 %.0..0..0..0., -9187201950435737472
  %i.ar = or i64 %i.aq, %.0.lcssa
  %i.as = add i64 %.0..0..0..0., 4557430888798830399
  %i.at = add i64 %.0..0..0..0., 2676586395008836901
  %i.au = xor i64 %i.as, %i.at
  %i.av = lshr i64 %i.au, 2
  %i.aw = and i64 %i.av, 2314885530818453536
  %i.ax = xor i64 %i.aw, %.0..0..0..0.
  store i64 %i.ax, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr nonnull align 8 %i.a, i64 %i.ap, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.ar, %bb.b ], [ %.0.lcssa, %._crit_edge ]
  %i.ay = icmp eq i64 %.1, 0
  ret i1 %i.ay
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3ada19url_pattern_helpers26canonicalize_ipv6_hostnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.tl::expected.98") align 8 %0, i64 %1, ptr nofree readonly captures(address) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %.not1.not.i.i = icmp samesign eq i64 %1, 0
  br i1 %.not1.not.i.i, label %._crit_edge.i.i.i.i.thread, label %.lr.ph.i.i

._crit_edge.i.i.i.i.thread:                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.c, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZSt8__invokeIRZN3ada19url_pattern_helpers26canonicalize_ipv6_hostnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JRKcEENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread.i.i"
  %.052.i.i = phi ptr [ %i.h, %"_ZSt8__invokeIRZN3ada19url_pattern_helpers26canonicalize_ipv6_hostnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JRKcEENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread.i.i" ], [ %2, %bb.a ] ; 2 uses
  %.val.i.i = load i8, ptr %.052.i.i, align 1     ; 3 uses
  switch i8 %.val.i.i, label %"_ZSt8__invokeIRZN3ada19url_pattern_helpers26canonicalize_ipv6_hostnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JRKcEENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.i.i" [
    i8 93, label %"_ZSt8__invokeIRZN3ada19url_pattern_helpers26canonicalize_ipv6_hostnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JRKcEENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread.i.i"
    i8 91, label %"_ZSt8__invokeIRZN3ada19url_pattern_helpers26canonicalize_ipv6_hostnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JRKcEENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread.i.i"
    i8 58, label %"_ZSt8__invokeIRZN3ada19url_pattern_helpers26canonicalize_ipv6_hostnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JRKcEENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread.i.i"
  ]

"_ZSt8__invokeIRZN3ada19url_pattern_helpers26canonicalize_ipv6_hostnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JRKcEENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.i.i": ; preds = %.lr.ph.i.i
  %i.d = add i8 %.val.i.i, -58
  %or.cond.i.i.i.i.i.i = icmp ult i8 %i.d, -10
  %i.e = and i8 %.val.i.i, -33
  %i.f = add i8 %i.e, -71
  %i.g = icmp ult i8 %i.f, -6
  %.not1.i.i.i.i.i = and i1 %or.cond.i.i.i.i.i.i, %i.g
  br i1 %.not1.i.i.i.i.i, label %"_ZNKSt6ranges11__any_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEZN3ada19url_pattern_helpers26canonicalize_ipv6_hostnameB5cxx11ES5_E3$_0EEbOSB_T1_SE_.exit", label %"_ZSt8__invokeIRZN3ada19url_pattern_helpers26canonicalize_ipv6_hostnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JRKcEENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread.i.i"

"_ZSt8__invokeIRZN3ada19url_pattern_helpers26canonicalize_ipv6_hostnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JRKcEENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread.i.i": ; preds = %"_ZSt8__invokeIRZN3ada19url_pattern_helpers26canonicalize_ipv6_hostnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JRKcEENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.i.i", %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.052.i.i, i64 1 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.h, %i.b
  br i1 %.not.not.i.i, label %bb.b, label %.lr.ph.i.i, !llvm.loop !431

"_ZNKSt6ranges11__any_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEZN3ada19url_pattern_helpers26canonicalize_ipv6_hostnameB5cxx11ES5_E3$_0EEbOSB_T1_SE_.exit": ; preds = %"_ZSt8__invokeIRZN3ada19url_pattern_helpers26canonicalize_ipv6_hostnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JRKcEENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.i.i"
  store i8 0, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.i, align 8
  br label %bb.m

bb.b:                                             ; preds = %"_ZSt8__invokeIRZN3ada19url_pattern_helpers26canonicalize_ipv6_hostnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JRKcEENSt15__invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.j, ptr %3, align 8
  %i.k = icmp eq ptr %2, null
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.131) #32
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = icmp ugt i64 %1, 15
  br i1 %i.l, label %bb.e, label %._crit_edge.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.m = icmp slt i64 %1, 0
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.123) #32
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = add nuw i64 %1, 1                        ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !18

bb.h:                                             ; preds = %bb.g
  call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.g
  %i.p = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #33 ; 2 uses
  store ptr %i.p, ptr %3, align 8
  store i64 %1, ptr %i.j, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.d
  %i.q = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.j, %bb.d ] ; 4 uses
  %cond = icmp eq i64 %1, 1
  br i1 %cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.r = load i8, ptr %2, align 1
  store i8 %i.r, ptr %i.q, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %2, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i.thread, %bb.i, %bb.j
  %i.s = phi ptr [ %i.c, %._crit_edge.i.i.i.i.thread ], [ %i.q, %bb.j ], [ %i.q, %bb.i ]
  %i.t = phi ptr [ %i.c, %._crit_edge.i.i.i.i.thread ], [ %i.j, %bb.j ], [ %i.j, %bb.i ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  store i8 0, ptr %i.v, align 1
  %i.w = load ptr, ptr %3, align 8                ; 3 uses
  %i.x = load i64, ptr %i.u, align 8              ; 5 uses
  %i.y = icmp ugt i64 %i.x, 7
  br i1 %i.y, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  %i.z = add i64 %i.x, -8                         ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ae, align 1 ; 3 uses
  %wide.load15 = load <2 x i64>, ptr %i.af, align 1 ; 3 uses
  %i.ag = add <2 x i64> %wide.load, splat (i64 4557430888798830399)
  %i.ah = add <2 x i64> %wide.load15, splat (i64 4557430888798830399)
  %i.ai = add <2 x i64> %wide.load, splat (i64 2676586395008836901)
  %i.aj = add <2 x i64> %wide.load15, splat (i64 2676586395008836901)
  %i.ak = xor <2 x i64> %i.ag, %i.ai
  %i.al = xor <2 x i64> %i.ah, %i.aj
  %i.am = lshr <2 x i64> %i.ak, splat (i64 2)
  %i.an = lshr <2 x i64> %i.al, splat (i64 2)
  %i.ao = and <2 x i64> %i.am, splat (i64 2314885530818453536)
  %i.ap = and <2 x i64> %i.an, splat (i64 2314885530818453536)
  %i.aq = xor <2 x i64> %i.ao, %wide.load
  %i.ar = xor <2 x i64> %i.ap, %wide.load15
  store <2 x i64> %i.aq, ptr %i.ae, align 1
  store <2 x i64> %i.ar, ptr %i.af, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !432

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader16

.lr.ph.i.preheader16:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.03638.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader16, %.lr.ph.i
  %.03638.i = phi i64 [ %i.ba, %.lr.ph.i ], [ %.03638.i.ph, %.lr.ph.i.preheader16 ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 %.03638.i ; 2 uses
  %.0.copyload.i = load i64, ptr %i.at, align 1   ; 3 uses
  %i.au = add i64 %.0.copyload.i, 4557430888798830399
  %i.av = add i64 %.0.copyload.i, 2676586395008836901
  %i.aw = xor i64 %i.au, %i.av
  %i.ax = lshr i64 %i.aw, 2
  %i.ay = and i64 %i.ax, 2314885530818453536
  %i.az = xor i64 %i.ay, %.0.copyload.i
  store i64 %i.az, ptr %i.at, align 1
  %i.ba = add nuw i64 %.03638.i, 8                ; 3 uses
  %i.bb = or disjoint i64 %i.ba, 7
  %i.bc = icmp ult i64 %i.bb, %i.x
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !433

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  %.036.lcssa.i = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit ], [ %i.ac, %middle.block ], [ %i.ba, %.lr.ph.i ] ; 3 uses
  %i.bd = icmp ult i64 %.036.lcssa.i, %i.x
  br i1 %i.bd, label %bb.k, label %_ZN3ada7unicode14to_lower_asciiEPcm.exit

bb.k:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 %.036.lcssa.i ; 2 uses
  %i.bf = sub nuw i64 %i.x, %.036.lcssa.i         ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.be, i64 %i.bf, i1 false)
  %.0..0..0..0..0..0..i = load i64, ptr %i.a, align 8 ; 3 uses
  %i.bg = add i64 %.0..0..0..0..0..0..i, 4557430888798830399
  %i.bh = add i64 %.0..0..0..0..0..0..i, 2676586395008836901
  %i.bi = xor i64 %i.bg, %i.bh
  %i.bj = lshr i64 %i.bi, 2
  %i.bk = and i64 %i.bj, 2314885530818453536
  %i.bl = xor i64 %i.bk, %.0..0..0..0..0..0..i
  store i64 %i.bl, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 8 %i.a, i64 %i.bf, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN3ada7unicode14to_lower_asciiEPcm.exit

_ZN3ada7unicode14to_lower_asciiEPcm.exit:         ; preds = %._crit_edge.i, %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bm, ptr %0, align 8
  %i.bn = load ptr, ptr %3, align 8               ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.t
  br i1 %i.bo, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %_ZN3ada7unicode14to_lower_asciiEPcm.exit
  %i.bp = load i64, ptr %i.u, align 8             ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i64 %i.bp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bm, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.br, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZN3ada7unicode14to_lower_asciiEPcm.exit
  store ptr %i.bn, ptr %0, align 8
  %i.bs = load i64, ptr %i.t, align 8
  store i64 %i.bs, ptr %i.bm, align 8
  %.pre = load i64, ptr %i.u, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.bt = phi i64 [ %i.bp, %bb.l ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bt, ptr %i.bu, align 8
  store i8 0, ptr %i.t, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.bv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %"_ZNKSt6ranges11__any_of_fnclITkNS_11input_rangeERSt17basic_string_viewIcSt11char_traitsIcEESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEZN3ada19url_pattern_helpers26canonicalize_ipv6_hostnameB5cxx11ES5_E3$_0EEbOSB_T1_SE_.exit"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3ada19url_pattern_helpers17canonicalize_portB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.tl::expected.98") align 8 %0, i64 %1, ptr nofree readonly captures(address_is_null) %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 9 uses
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3ada6errorsEEC2IRA1_KcTnPNSt9enable_ifIXsr3std14is_convertibleIOT_S6_EE5valueEvE4typeELPv0ETnPNSE_IXaaaaaasr3std16is_constructibleIS6_SG_EE5valuentsr3std7is_sameINSt5decayISF_E4typeENS_10in_place_tEEE5valuentsr3std7is_sameIS9_SN_EE5valuentsr3std7is_sameINS_10unexpectedIS8_EESN_EE5valueEvE4typeELSK_0EEESG_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 1 dereferenceable(1) @.str.48)
  br label %bb.as

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.b, ptr %3, align 8
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.131) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 15
  br i1 %i.d, label %bb.f, label %._crit_edge.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.e = icmp slt i64 %1, 0
  br i1 %i.e, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.123) #32
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.f = add nuw i64 %1, 1                        ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.i, label %._crit_edge.i.i.i.i.thread, !prof !18

bb.i:                                             ; preds = %bb.h
  call void @_ZSt17__throw_bad_allocv() #32
  unreachable

._crit_edge.i.i.i.i.thread:                       ; preds = %bb.h
  %i.h = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33 ; 2 uses
  store ptr %i.h, ptr %3, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.k

._crit_edge.i.i.i.i:                              ; preds = %bb.e
  %cond = icmp eq i64 %1, 1
  br i1 %cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.i = load i8, ptr %2, align 1
  store i8 %i.i, ptr %i.b, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.thread, %._crit_edge.i.i.i.i
  %i.j = phi ptr [ %i.h, %._crit_edge.i.i.i.i.thread ], [ %i.b, %._crit_edge.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %2, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %bb.j, %bb.k
  %i.k = phi ptr [ %i.b, %bb.j ], [ %i.j, %bb.k ]
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  store i64 %1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %1
  store i8 0, ptr %i.m, align 1
  %i.n = load i64, ptr %i.l, align 8              ; 6 uses
  %i.o = load ptr, ptr %3, align 8                ; 7 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n ; 8 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 3 uses
  %i.s = ashr i64 %i.n, 2                         ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.i.i.i.i.preheader, label %._crit_edge.i.i.i.i3

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  %i.u = and i64 %i.n, -4
  %scevgep = getelementptr i8, ptr %i.o, i64 %i.u
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.o
  %.052.i.i.i.i = phi i64 [ %i.ad, %bb.o ], [ %i.s, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.ac, %bb.o ], [ %i.o, %.lr.ph.i.i.i.i.preheader ] ; 11 uses
  %i.v = load i8, ptr %.sroa.032.051.i.i.i.i, align 1
  switch i8 %i.v, label %bb.l [
    i8 13, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predISt17reference_wrapperIPDoFbcEEEEET_SH_SH_T0_.exit.i.i
    i8 10, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predISt17reference_wrapperIPDoFbcEEEEET_SH_SH_T0_.exit.i.i
    i8 9, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predISt17reference_wrapperIPDoFbcEEEEET_SH_SH_T0_.exit.i.i
  ]

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
end_hunk_9
