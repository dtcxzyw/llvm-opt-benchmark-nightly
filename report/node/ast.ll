inline.NumInlined: 1210
inline.NumDeleted: 547
begin_hunk_0_@_ZN2v88internal7Literal4HashEv:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load double, ptr %i.i, align 8           ; 2 uses
  %i.k = fadd double %i.j, f0x4330000000000000
  %i.l = bitcast double %i.k to i64               ; 2 uses
  %.mask.i.i.i = and i64 %i.l, -4294967296
  %i.m = icmp eq i64 %.mask.i.i.i, 4841369599423283200
  br i1 %i.m, label %bb.c, label %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread

bb.c:                                             ; preds = %_ZNK2v88internal7Literal8AsNumberEv.exit.i.i
  %i.n = trunc i64 %i.l to i32                    ; 3 uses
  store i32 %i.n, ptr %i.a, align 4
  %i.o = uitofp i32 %i.n to double
  %i.p = fcmp oeq double %i.j, %i.o
  br i1 %i.p, label %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit, label %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread

_ZNK2v88internal7Literal8ToUint32EPj.exit.i:      ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef zeroext i1 @_ZNK2v88internal12AstRawString12AsArrayIndexEPj(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull %i.a) #17
  br i1 %i.s, label %_ZNK2v88internal7Literal8ToUint32EPj.exit._crit_edge.i, label %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread

_ZNK2v88internal7Literal8ToUint32EPj.exit._crit_edge.i: ; preds = %_ZNK2v88internal7Literal8ToUint32EPj.exit.i
  %.pre.i = load i32, ptr %i.a, align 4
  br label %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit

_ZNK2v88internal7Literal12AsArrayIndexEPj.exit:   ; preds = %bb.c, %_ZNK2v88internal7Literal8ToUint32EPj.exit._crit_edge.i
  %i.t = phi i32 [ %.pre.i, %_ZNK2v88internal7Literal8ToUint32EPj.exit._crit_edge.i ], [ %i.n, %bb.c ] ; 2 uses
  %.not = icmp eq i32 %i.t, -1
  br i1 %.not, label %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread, label %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread1

_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread1: ; preds = %bb.b, %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit
  %i.u = phi i32 [ %i.t, %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit ], [ %i.g, %bb.b ]
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = xor i64 %i.v, -1
  %i.x = shl nuw nsw i64 %i.v, 18
  %i.y = add nsw i64 %i.x, %i.w                   ; 2 uses
  %i.z = lshr i64 %i.y, 31
  %i.aa = xor i64 %i.z, %i.y
  %i.ab = mul nsw i64 %i.aa, 21                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 11
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = mul i64 %i.ad, 65                       ; 2 uses
  %i.af = lshr i64 %i.ae, 22
  %i.ag = xor i64 %i.af, %i.ae
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 1073741823
  br label %bb.i

_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread: ; preds = %_ZNK2v88internal7Literal8AsNumberEv.exit.i.i, %bb.a, %bb.b, %bb.c, %_ZNK2v88internal7Literal8ToUint32EPj.exit.i, %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit
  %i.aj = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ak = and i32 %i.aj, 1920
  %i.al = icmp eq i32 %i.ak, 384
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = lshr i32 %i.ap, 2
  br label %bb.i

bb.e:                                             ; preds = %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread
  %i.ar = lshr i32 %i.aj, 7
  %i.as = and i32 %i.ar, 15
  switch i32 %i.as, label %bb.h [
    i32 0, label %bb.f
    i32 1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i32, ptr %i.at, align 8
  %i.av = sitofp i32 %i.au to double
  br label %_ZNK2v88internal7Literal8AsNumberEv.exit

bb.g:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load double, ptr %i.aw, align 8
  br label %_ZNK2v88internal7Literal8AsNumberEv.exit

bb.h:                                             ; preds = %bb.e
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #18
  unreachable

_ZNK2v88internal7Literal8AsNumberEv.exit:         ; preds = %bb.f, %bb.g
  %.0.i = phi double [ %i.av, %bb.f ], [ %i.ax, %bb.g ]
  %i.ay = bitcast double %.0.i to i64             ; 2 uses
  %i.az = xor i64 %i.ay, -1
  %i.ba = shl i64 %i.ay, 18
  %i.bb = add i64 %i.ba, %i.az                    ; 2 uses
  %i.bc = lshr i64 %i.bb, 31
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = mul i64 %i.bd, 21                       ; 2 uses
  %i.bf = lshr i64 %i.be, 11
  %i.bg = xor i64 %i.bf, %i.be
  %i.bh = mul i64 %i.bg, 65                       ; 2 uses
  %i.bi = lshr i64 %i.bh, 22
  %i.bj = xor i64 %i.bi, %i.bh
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = and i32 %i.bk, 1073741823
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %_ZNK2v88internal7Literal8AsNumberEv.exit, %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread1
  %.0 = phi i32 [ %i.ai, %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread1 ], [ %i.aq, %bb.d ], [ %i.bl, %_ZNK2v88internal7Literal8AsNumberEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 32) i32 @_ZNK2v88internal31ObjectLiteralBoilerplateBuilder12ComputeFlagsEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i1 noundef zeroext %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 3 uses
  %i.b = and i32 %i.a, 3
  %i.c = icmp eq i32 %i.b, 1
  %spec.select.i = zext i1 %i.c to i32            ; 2 uses
  %i.d = or disjoint i32 %spec.select.i, 2
  %.1.i = select i1 %1, i32 %i.d, i32 %spec.select.i
  %i.e = and i32 %i.a, 4
  %i.f = lshr i32 %i.a, 6
  %i.g = and i32 %i.f, 24
  %spec.select = or disjoint i32 %i.g, %i.e
  %.1 = or disjoint i32 %spec.select, %.1.i
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp slt i32 %1, %i.d
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = sext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit.thread
  %indvars.iv = phi i64 [ %i.g, %.lr.ph ], [ %indvars.iv.next, %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit.thread ] ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i8, ptr %i.j, align 8
  %i.l = icmp eq i8 %i.k, 5
  br i1 %i.l, label %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit, label %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit.thread

_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 1983
  %i.r = icmp eq i32 %i.q, 941
  br i1 %i.r, label %bb.c, label %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit.thread

bb.c:                                             ; preds = %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit
  %i.s = load i32, ptr %0, align 8
  %i.t = or i32 %i.s, 1024
  store i32 %i.t, ptr %0, align 8
  br label %.loopexit

_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit.thread: ; preds = %bb.b, %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.d, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !26

.loopexit:                                        ; preds = %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit.thread, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal31ObjectLiteralBoilerplateBuilder17InitDepthAndFlagsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i32, ptr %0, align 8
  %i.c = and i32 %i.b, 3
  %.not63 = icmp eq i32 %i.c, 0
  br i1 %.not63, label %.preheader, label %bb.q

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit.thread

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit
  %i.j = phi ptr [ %i.e, %.lr.ph ], [ %i.cm, %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit ] ; 3 uses
  %i.k = phi i32 [ %i.g, %.lr.ph ], [ %i.co, %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit ]
  %.088 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit ] ; 2 uses
  %.02787 = phi i1 [ false, %.lr.ph ], [ %.128, %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit ] ; 2 uses
  %.02986 = phi i8 [ 0, %.lr.ph ], [ %.231, %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit ] ; 8 uses
  %.03285 = phi i32 [ 1, %.lr.ph ], [ %.234, %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit ] ; 6 uses
  %.03684 = phi i32 [ 0, %.lr.ph ], [ %.137, %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit ] ; 4 uses
  %.04082 = phi i32 [ 0, %.lr.ph ], [ %.242, %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit ] ; 11 uses
  %.05081 = phi i32 [ 0, %.lr.ph ], [ %.252, %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit ] ; 11 uses
  %i.l = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i8, ptr %i.o, align 8
  %i.q = icmp eq i8 %i.p, 5
  br i1 %i.q, label %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit, label %bb.d

_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4
  %i.v = and i32 %i.u, 1983
  %i.w = icmp eq i32 %i.v, 941
  br i1 %i.w, label %bb.c, label %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit

bb.c:                                             ; preds = %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit
  %i.x = load i32, ptr %0, align 8
  %i.y = or i32 %i.x, 1024
  store i32 %i.y, ptr %0, align 8
  br label %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit

bb.d:                                             ; preds = %bb.b
  %i.z = load i32, ptr %i.i, align 8
  %i.aa = icmp eq i32 %.03684, %i.z
  br i1 %i.aa, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %.02787, label %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit.thread.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit.thread.i ], [ %indvars.iv, %bb.e ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i8, ptr %i.ad, align 8
  %i.af = icmp eq i8 %i.ae, 5
  br i1 %i.af, label %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit.i, label %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit.thread.i

_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit.i: ; preds = %.lr.ph.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = and i32 %i.aj, 1983
  %i.al = icmp eq i32 %i.ak, 941
  br i1 %i.al, label %bb.f, label %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit.thread.i

bb.f:                                             ; preds = %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit.i
  %i.am = load i32, ptr %0, align 8
  %i.an = or i32 %i.am, 1024
  store i32 %i.an, ptr %0, align 8
  br label %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit.thread

_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit.thread.i: ; preds = %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit.i, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv146 = trunc i64 %indvars.iv.next.i to i32
  %exitcond147 = icmp eq i32 %i.k, %lftr.wideiv146
  br i1 %exitcond147, label %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit.thread, label %.lr.ph.i, !llvm.loop !26

bb.g:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = trunc i32 %i.ar to i8                   ; 2 uses
  %i.at = and i8 %i.as, 63                        ; 2 uses
  %i.au = add nsw i8 %i.at, -27
  %switch.i = icmp ult i8 %i.au, -3
  %.not64 = icmp eq ptr %i.ap, null
  %.not = or i1 %.not64, %switch.i
  br i1 %.not, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i8 %i.at, label %_ZN2v88internal25LiteralBoilerplateBuilder17InitDepthAndFlagsEPNS0_19MaterializedLiteralE.exit [
    i8 26, label %bb.i
    i8 25, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  call void @_ZN2v88internal30ArrayLiteralBoilerplateBuilder17InitDepthAndFlagsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.av), !inline_history !27
  br label %_ZN2v88internal25LiteralBoilerplateBuilder17InitDepthAndFlagsEPNS0_19MaterializedLiteralE.exit

bb.j:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  call void @_ZN2v88internal31ObjectLiteralBoilerplateBuilder17InitDepthAndFlagsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.aw), !inline_history !27
  br label %_ZN2v88internal25LiteralBoilerplateBuilder17InitDepthAndFlagsEPNS0_19MaterializedLiteralE.exit

_ZN2v88internal25LiteralBoilerplateBuilder17InitDepthAndFlagsEPNS0_19MaterializedLiteralE.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.ax = load i32, ptr %i.aq, align 4
  %i.ay = trunc i32 %i.ax to i8
  %i.az = and i8 %i.ay, 63
  switch i8 %i.az, label %_ZN2v88internal19MaterializedLiteral26NeedsInitialAllocationSiteEv.exit [
    i8 26, label %.sink.split.i
    i8 25, label %bb.k
  ]

bb.k:                                             ; preds = %_ZN2v88internal25LiteralBoilerplateBuilder17InitDepthAndFlagsEPNS0_19MaterializedLiteralE.exit
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.k, %_ZN2v88internal25LiteralBoilerplateBuilder17InitDepthAndFlagsEPNS0_19MaterializedLiteralE.exit
  %.sink4.i = phi i64 [ 32, %bb.k ], [ 24, %_ZN2v88internal25LiteralBoilerplateBuilder17InitDepthAndFlagsEPNS0_19MaterializedLiteralE.exit ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sink4.i
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = trunc i32 %i.bb to i8
  %i.bd = lshr i8 %i.bc, 2
  %i.be = and i8 %i.bd, 1
  %i.bf = or i8 %i.be, %.02986
  br label %_ZN2v88internal19MaterializedLiteral26NeedsInitialAllocationSiteEv.exit

_ZN2v88internal19MaterializedLiteral26NeedsInitialAllocationSiteEv.exit: ; preds = %_ZN2v88internal25LiteralBoilerplateBuilder17InitDepthAndFlagsEPNS0_19MaterializedLiteralE.exit, %.sink.split.i
  %.0.i = phi i8 [ %.02986, %_ZN2v88internal25LiteralBoilerplateBuilder17InitDepthAndFlagsEPNS0_19MaterializedLiteralE.exit ], [ %i.bf, %.sink.split.i ]
  %.pre = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %.pre106 = load i32, ptr %.phi.trans.insert, align 4
  %.pre108 = trunc i32 %.pre106 to i8
  br label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal19MaterializedLiteral26NeedsInitialAllocationSiteEv.exit, %bb.g
  %.pre-phi = phi i8 [ %.pre108, %_ZN2v88internal19MaterializedLiteral26NeedsInitialAllocationSiteEv.exit ], [ %i.as, %bb.g ]
  %i.bg = phi ptr [ %.pre, %_ZN2v88internal19MaterializedLiteral26NeedsInitialAllocationSiteEv.exit ], [ %i.ap, %bb.g ]
  %.133 = phi i32 [ 2, %_ZN2v88internal19MaterializedLiteral26NeedsInitialAllocationSiteEv.exit ], [ %.03285, %bb.g ]
  %.130 = phi i8 [ %.0.i, %_ZN2v88internal19MaterializedLiteral26NeedsInitialAllocationSiteEv.exit ], [ %.02986, %bb.g ]
  %i.bh = load i64, ptr %i.n, align 8
  %i.bi = and i64 %i.bh, -2
  %i.bj = inttoptr i64 %i.bi to ptr               ; 4 uses
  %i.bk = and i8 %.pre-phi, 63                    ; 3 uses
  %i.bl = icmp eq i8 %i.bk, 45
  br i1 %i.bl, label %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = add nsw i8 %i.bk, -27
  %switch.i.i = icmp ult i8 %i.bm, -3
  br i1 %switch.i.i, label %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  switch i8 %i.bk, label %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit [
    i8 26, label %.sink.split.i.i
    i8 25, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.o, %bb.n
  %.sink4.i.i = phi i64 [ 32, %bb.o ], [ 24, %bb.n ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.sink4.i.i
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = and i32 %i.bo, 8
  %1 = icmp ne i32 %i.bp, 0
  br label %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit

_ZN2v88internal10Expression18IsCompileTimeValueEv.exit: ; preds = %bb.l, %bb.m, %bb.n, %.sink.split.i.i
  %.1.i = phi i1 [ true, %bb.l ], [ false, %bb.m ], [ false, %bb.n ], [ %1, %.sink.split.i.i ]
  %2 = trunc nuw i8 %.088 to i1
  %3 = and i1 %.1.i, %2
  %4 = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = lshr i32 %i.br, 7
  %i.bt = and i32 %i.bs, 15
  switch i32 %i.bt, label %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread [
    i32 3, label %_ZNK2v88internal7Literal8ToUint32EPj.exit.i
    i32 0, label %bb.p
    i32 1, label %_ZNK2v88internal7Literal8AsNumberEv.exit.i.i
  ]

bb.p:                                             ; preds = %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bv = load i32, ptr %i.bu, align 8            ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread, label %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread54

_ZNK2v88internal7Literal8AsNumberEv.exit.i.i:     ; preds = %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.by = load double, ptr %i.bx, align 8         ; 2 uses
  %i.bz = fadd double %i.by, f0x4330000000000000
  %i.ca = bitcast double %i.bz to i64             ; 2 uses
  %.mask.i.i.i = and i64 %i.ca, -4294967296
  %i.cb = icmp eq i64 %.mask.i.i.i, 4841369599423283200
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  %i.cd = uitofp i32 %i.cc to double
  %i.ce = fcmp oeq double %i.by, %i.cd
  %or.cond = and i1 %i.cb, %i.ce
  br i1 %or.cond, label %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit, label %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread

_ZNK2v88internal7Literal8ToUint32EPj.exit.i:      ; preds = %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call noundef zeroext i1 @_ZNK2v88internal12AstRawString12AsArrayIndexEPj(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull %i.a) #17
  br i1 %i.ch, label %_ZNK2v88internal7Literal8ToUint32EPj.exit._crit_edge.i, label %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread

_ZNK2v88internal7Literal8ToUint32EPj.exit._crit_edge.i: ; preds = %_ZNK2v88internal7Literal8ToUint32EPj.exit.i
  %.pre.i = load i32, ptr %i.a, align 4
  br label %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit

_ZNK2v88internal7Literal12AsArrayIndexEPj.exit:   ; preds = %_ZNK2v88internal7Literal8AsNumberEv.exit.i.i, %_ZNK2v88internal7Literal8ToUint32EPj.exit._crit_edge.i
  %i.ci = phi i32 [ %.pre.i, %_ZNK2v88internal7Literal8ToUint32EPj.exit._crit_edge.i ], [ %i.cc, %_ZNK2v88internal7Literal8AsNumberEv.exit.i.i ] ; 2 uses
  %.not65 = icmp eq i32 %i.ci, -1
  br i1 %.not65, label %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread, label %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread54

_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread54: ; preds = %bb.p, %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit
  %i.cj = phi i32 [ %i.ci, %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit ], [ %i.bv, %bb.p ]
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %i.cj, i32 %.05081)
  %i.ck = add i32 %.04082, 1
  br label %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread

_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread: ; preds = %_ZNK2v88internal7Literal8AsNumberEv.exit.i.i, %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit, %bb.p, %_ZNK2v88internal7Literal8ToUint32EPj.exit.i, %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit, %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread54
  %.151 = phi i32 [ %.sroa.speculated, %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread54 ], [ %.05081, %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit ], [ %.05081, %_ZNK2v88internal7Literal8ToUint32EPj.exit.i ], [ %.05081, %_ZNK2v88internal7Literal8AsNumberEv.exit.i.i ], [ %.05081, %bb.p ], [ %.05081, %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit ]
  %.141 = phi i32 [ %i.ck, %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread54 ], [ %.04082, %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit ], [ %.04082, %_ZNK2v88internal7Literal8ToUint32EPj.exit.i ], [ %.04082, %_ZNK2v88internal7Literal8AsNumberEv.exit.i.i ], [ %.04082, %bb.p ], [ %.04082, %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit ]
  %i.cl = add i32 %.03684, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.pre107 = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit

_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit: ; preds = %bb.c, %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread, %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit
  %i.cm = phi ptr [ %i.j, %bb.c ], [ %i.j, %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit ], [ %.pre107, %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread ] ; 2 uses
  %.252 = phi i32 [ %.05081, %bb.c ], [ %.05081, %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit ], [ %.151, %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread ] ; 2 uses
  %.242 = phi i32 [ %.04082, %bb.c ], [ %.04082, %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit ], [ %.141, %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread ] ; 2 uses
  %.137 = phi i32 [ %.03684, %bb.c ], [ %.03684, %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit ], [ %i.cl, %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread ]
  %.234 = phi i32 [ %.03285, %bb.c ], [ %.03285, %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit ], [ %.133, %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread ] ; 2 uses
  %.231 = phi i8 [ %.02986, %bb.c ], [ %.02986, %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit ], [ %.130, %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread ] ; 2 uses
  %.128 = phi i1 [ true, %bb.c ], [ true, %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit ], [ %.02787, %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread ]
  %.1 = phi i8 [ %.088, %bb.c ], [ 0, %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit ], [ %4, %_ZNK2v88internal7Literal12AsArrayIndexEPj.exit.thread ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.co = load i32, ptr %i.cn, align 4            ; 2 uses
  %i.cp = sext i32 %i.co to i64
  %i.cq = icmp slt i64 %indvars.iv.next, %i.cp
  br i1 %i.cq, label %bb.b, label %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit.thread.loopexit93, !llvm.loop !28

_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit.thread.loopexit93: ; preds = %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit
  %5 = shl nuw nsw i8 %.1, 3
  %6 = zext nneg i8 %5 to i32
  br label %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit.thread

_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit.thread: ; preds = %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit.thread.i, %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit.thread.loopexit93, %.preheader, %bb.f, %bb.e
  %.05078 = phi i32 [ %.252, %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit.thread.loopexit93 ], [ %.05081, %bb.e ], [ %.05081, %bb.f ], [ 0, %.preheader ], [ %.05081, %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit.thread.i ] ; 2 uses
  %.04076 = phi i32 [ %.242, %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit.thread.loopexit93 ], [ %.04082, %bb.e ], [ %.04082, %bb.f ], [ 0, %.preheader ], [ %.04082, %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit.thread.i ]
  %.03274 = phi i32 [ %.234, %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit.thread.loopexit93 ], [ %.03285, %bb.e ], [ %.03285, %bb.f ], [ 1, %.preheader ], [ %.03285, %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit.thread.i ]
  %.02972 = phi i8 [ %.231, %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit.thread.loopexit93 ], [ %.02986, %bb.e ], [ %.02986, %bb.f ], [ 0, %.preheader ], [ %.02986, %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit.thread.i ]
  %.2 = phi i32 [ %6, %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit.thread.loopexit93 ], [ 0, %bb.e ], [ 0, %bb.f ], [ 8, %.preheader ], [ 0, %_ZNK2v88internal21ObjectLiteralProperty15IsNullPrototypeEv.exit.thread.i ]
  %.04076.fr = freeze i32 %.04076                 ; 2 uses
  %i.cr = load i32, ptr %0, align 8
  %i.cs = and i32 %i.cr, -656
  %.032.masked = and i32 %.03274, -653
  %i.ct = zext nneg i8 %.02972 to i32
  %i.cu = shl nuw nsw i32 %i.ct, 2
  %.not66 = icmp eq i32 %.04076.fr, 0
  %.masked114 = and i32 %i.cu, 380
  %spec.select.a = select i1 %.not66, i32 0, i32 128
  %i.cv = icmp ult i32 %.05078, 33
  %i.cw = shl i32 %.04076.fr, 1
  %i.cx = icmp uge i32 %i.cw, %.05078
  %i.cy = or i1 %i.cv, %i.cx
  %i.cz = select i1 %i.cy, i32 512, i32 0
  %.masked113 = or disjoint i32 %spec.select.a, %.032.masked
  %.masked = or i32 %.masked113, %.2
  %7 = or disjoint i32 %.masked, %i.cz
  %i.da = or i32 %7, %.masked114
  %i.db = or i32 %i.da, %i.cs
  store i32 %i.db, ptr %0, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZN2v88internal31ObjectLiteralBoilerplateBuilder32InitFlagsForPendingNullPrototypeEi.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal25LiteralBoilerplateBuilder17InitDepthAndFlagsEPNS0_19MaterializedLiteralE(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = trunc i32 %i.b to i8
  %i.d = and i8 %i.c, 63
  switch i8 %i.d, label %bb.d [
    i8 26, label %bb.b
    i8 25, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN2v88internal30ArrayLiteralBoilerplateBuilder17InitDepthAndFlagsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN2v88internal31ObjectLiteralBoilerplateBuilder17InitDepthAndFlagsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal19MaterializedLiteral26NeedsInitialAllocationSiteEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = trunc i32 %i.b to i8
  %i.d = and i8 %i.c, 63
  switch i8 %i.d, label %bb.c [
    i8 26, label %.sink.split
    i8 25, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %.sink4 = phi i64 [ 32, %bb.b ], [ 24, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.sink4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 4
  %i.h = icmp ne i32 %i.g, 0
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.h, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal31ObjectLiteralBoilerplateBuilder22IsFastCloningSupportedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 515
  %or.cond = icmp eq i32 %i.b, 513
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp slt i32 %i.d, 2731
  %i.f = select i1 %or.cond, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal30ArrayLiteralBoilerplateBuilder17InitDepthAndFlagsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 3
  %.not33 = icmp eq i32 %i.b, 0
  br i1 %.not33, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load i32, ptr %i.h, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.j = phi i32 [ %i.i, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %.lobit = lshr i32 %i.d, 31
  %i.k = trunc nuw nsw i32 %.lobit to i8          ; 2 uses
  %i.l = icmp sgt i32 %i.j, 0
  br i1 %i.l, label %.lr.ph, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit.thread ] ; 2 uses
  %.040 = phi i8 [ %i.k, %.lr.ph ], [ %.1, %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit.thread ] ; 5 uses
  %.01739 = phi i1 [ false, %.lr.ph ], [ %.2, %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit.thread ] ; 6 uses
  %.01938 = phi i8 [ 0, %.lr.ph ], [ %.221, %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit.thread ] ; 7 uses
  %.02336 = phi i32 [ 1, %.lr.ph ], [ %.124, %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit.thread ]
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8              ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = trunc i32 %i.s to i8
  %i.u = and i8 %i.t, 63                          ; 2 uses
  %i.v = add nsw i8 %i.u, -27
  %switch.i = icmp ult i8 %i.v, -3
  %.not34 = icmp eq ptr %i.q, null
  %.not = or i1 %.not34, %switch.i
  br i1 %.not, label %_ZN2v88internal25LiteralBoilerplateBuilder17InitDepthAndFlagsEPNS0_19MaterializedLiteralE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i8 %i.u, label %_ZN2v88internal25LiteralBoilerplateBuilder17InitDepthAndFlagsEPNS0_19MaterializedLiteralE.exit [
    i8 26, label %bb.g
    i8 25, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  tail call void @_ZN2v88internal30ArrayLiteralBoilerplateBuilder17InitDepthAndFlagsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.w), !inline_history !27
  br label %_ZN2v88internal25LiteralBoilerplateBuilder17InitDepthAndFlagsEPNS0_19MaterializedLiteralE.exit

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  tail call void @_ZN2v88internal31ObjectLiteralBoilerplateBuilder17InitDepthAndFlagsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.x), !inline_history !27
  br label %_ZN2v88internal25LiteralBoilerplateBuilder17InitDepthAndFlagsEPNS0_19MaterializedLiteralE.exit

_ZN2v88internal25LiteralBoilerplateBuilder17InitDepthAndFlagsEPNS0_19MaterializedLiteralE.exit: ; preds = %bb.f, %bb.h, %bb.g, %bb.e
  %.124 = phi i32 [ %.02336, %bb.e ], [ 2, %bb.g ], [ 2, %bb.f ], [ 2, %bb.h ] ; 5 uses
  %i.y = load i32, ptr %i.r, align 4
  %i.z = trunc i32 %i.y to i8
  %i.aa = and i8 %i.z, 63                         ; 3 uses
  %i.ab = icmp eq i8 %i.aa, 45
  br i1 %i.ab, label %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit.thread31, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal25LiteralBoilerplateBuilder17InitDepthAndFlagsEPNS0_19MaterializedLiteralE.exit
  %i.ac = add nsw i8 %i.aa, -27
  %switch.i.i = icmp ult i8 %i.ac, -3
  br i1 %switch.i.i, label %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i8 %i.aa, label %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit.thread [
    i8 26, label %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit
    i8 25, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  br label %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit

_ZN2v88internal10Expression18IsCompileTimeValueEv.exit: ; preds = %bb.j, %bb.k
  %.sink4.i.i = phi i64 [ 32, %bb.k ], [ 24, %bb.j ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sink4.i.i
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = and i32 %i.ae, 8
  %.not35 = icmp eq i32 %i.af, 0                  ; 2 uses
  %spec.select = select i1 %.not35, i8 %.01938, i8 2
  %spec.select55 = select i1 %.not35, i8 0, i8 %.040
  br label %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit.thread

_ZN2v88internal10Expression18IsCompileTimeValueEv.exit.thread31: ; preds = %_ZN2v88internal25LiteralBoilerplateBuilder17InitDepthAndFlagsEPNS0_19MaterializedLiteralE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = lshr i32 %i.ah, 7
  %i.aj = and i32 %i.ai, 15
  switch i32 %i.aj, label %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit.thread [
    i32 8, label %bb.l
    i32 1, label %bb.m
    i32 7, label %bb.n
    i32 2, label %bb.n
    i32 3, label %bb.n
    i32 4, label %bb.n
    i32 5, label %bb.n
    i32 6, label %bb.n
  ]

bb.l:                                             ; preds = %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit.thread31
  br label %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit.thread

bb.m:                                             ; preds = %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit.thread31
  %i.ak = icmp eq i8 %.01938, 0
  %spec.store.select = select i1 %i.ak, i8 4, i8 %.01938
  br label %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit.thread

bb.n:                                             ; preds = %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit.thread31, %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit.thread31, %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit.thread31, %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit.thread31, %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit.thread31, %_ZN2v88internal10Expression18IsCompileTimeValueEv.exit.thread31
end_hunk_0
