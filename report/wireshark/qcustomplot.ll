Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZN21QCPAxisPainterPrivate4drawEP10QCPPainter:bb.a
  store i64 %i.aao, ptr %.sroa.44.0..sroa_idx, align 8
  %i.aap = getelementptr i8, ptr %0, i64 472      ; 2 uses
  %i.aaq = call { i64, i64 } @_ZNK5QRect10normalizedEv(ptr noundef align 4 dereferenceable_or_null(16) %i.aap) #49 ; 2 uses
  %i.aar = extractvalue { i64, i64 } %i.aaq, 0
  %i.aas = extractvalue { i64, i64 } %i.aaq, 1
  store i64 %i.aar, ptr %i.aap, align 8
  %.sroa.42.0..sroa_idx = getelementptr i8, ptr %0, i64 480
  store i64 %i.aas, ptr %.sroa.42.0..sroa_idx, align 8
  %i.aat = getelementptr i8, ptr %0, i64 488      ; 2 uses
  %i.aau = call { i64, i64 } @_ZNK5QRect10normalizedEv(ptr noundef align 4 dereferenceable_or_null(16) %i.aat) #49 ; 2 uses
  %i.aav = extractvalue { i64, i64 } %i.aau, 0
  %i.aaw = extractvalue { i64, i64 } %i.aau, 1
  store i64 %i.aav, ptr %i.aat, align 8
  %.sroa.4.0..sroa_idx = getelementptr i8, ptr %0, i64 496
  store i64 %i.aaw, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #49
  %i.aax = load ptr, ptr %28, align 8             ; 2 uses
  %.not.i.i.i453 = icmp eq ptr %i.aax, null
  br i1 %.not.i.i.i453, label %_ZN10QByteArrayD2Ev.exit, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i:       ; preds = %bb.ga
  %i.aay = atomicrmw add ptr %i.aax, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.aay, 1
  br i1 %.not.i.i, label %bb.gb, label %_ZN10QByteArrayD2Ev.exit

bb.gb:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i
  %i.aaz = load ptr, ptr %28, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aaz, i64 noundef 1, i64 noundef 8) #49
  br label %_ZN10QByteArrayD2Ev.exit

_ZN10QByteArrayD2Ev.exit:                         ; preds = %bb.ga, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #49
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ej, %bb.em, %bb.en, %bb.eu, %bb.fn, %bb.dm
  %.pn200.pn.pn = phi { ptr, i32 } [ %.pn195, %bb.ej ], [ %.pn193, %bb.dm ], [ %.pn200, %bb.fn ], [ %i.sk, %bb.en ], [ %i.tf, %bb.eu ], [ %.pn197, %bb.em ], [ %lpad.loopexit.split-lp776, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #49
  br label %bb.gc

bb.gc:                                            ; preds = %.loopexit.split-lp, %bb.db, %bb.da
  %.pn200.pn.pn.pn = phi { ptr, i32 } [ %.pn200.pn.pn, %.loopexit.split-lp ], [ %i.pa, %bb.db ], [ %i.oz, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #49
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.cs, %bb.cf, %bb.cc
  %.pn200.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn200.pn.pn.pn, %bb.gc ], [ %i.my, %bb.cc ], [ %i.ol, %bb.cs ], [ %.pn187.pn, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #49
  br label %_ZN9QtPrivate17QForeachContainerI5QListIdEED2Ev.exit266

_ZN9QtPrivate17QForeachContainerI5QListIdEED2Ev.exit266: ; preds = %bb.bd, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i334, %bb.be, %bb.av, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i312, %bb.aw, %bb.al, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i286, %bb.am, %bb.ad, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i264, %bb.ae, %bb.by, %bb.cb, %bb.gd
  %.pn200.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.iy, %bb.aw ], [ %i.fd, %bb.ae ], [ %i.mv, %bb.by ], [ %.pn185, %bb.cb ], [ %i.gs, %bb.am ], [ %.pn200.pn.pn.pn.pn, %bb.gd ], [ %i.kn, %bb.be ], [ %i.fd, %bb.ad ], [ %i.fd, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i264 ], [ %i.kn, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i334 ], [ %i.gs, %bb.al ], [ %i.gs, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i286 ], [ %i.kn, %bb.bd ], [ %i.iy, %bb.av ], [ %i.iy, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i312 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #49
  %i.aba = load ptr, ptr %28, align 8             ; 2 uses
  %.not.i.i.i454 = icmp eq ptr %i.aba, null
  br i1 %.not.i.i.i454, label %_ZN10QByteArrayD2Ev.exit457, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i455

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i455:    ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIdEED2Ev.exit266
  %i.abb = atomicrmw add ptr %i.aba, i32 -1 acq_rel, align 4
  %.not.i.i456 = icmp eq i32 %i.abb, 1
  br i1 %.not.i.i456, label %bb.ge, label %_ZN10QByteArrayD2Ev.exit457

bb.ge:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i455
  %i.abc = load ptr, ptr %28, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.abc, i64 noundef 1, i64 noundef 8) #49
  br label %_ZN10QByteArrayD2Ev.exit457

_ZN10QByteArrayD2Ev.exit457:                      ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIdEED2Ev.exit266, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i455, %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #49
  resume { ptr, i32 } %.pn200.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nounwind null_pointer_is_valid
declare noundef align 8 dereferenceable(24) ptr @_ZN10QByteArrayaSERKS_(ptr noundef align 8 dereferenceable_or_null(24), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare void @_ZNK8QPainter10clipRegionEv(ptr dead_on_unwind writable sret(%class.QRegion) align 8, ptr noundef align 8 dereferenceable_or_null(8)) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid
declare { i64, i64 } @_ZNK7QRegion12boundingRectEv(ptr noundef align 8 dereferenceable_or_null(8)) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN7QRegionD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8)) unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare void @_ZNK8QPainter11fontMetricsEv(ptr dead_on_unwind writable sret(%class.QFontMetrics) align 8, ptr noundef align 8 dereferenceable_or_null(8)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QPainter6rotateEd(ptr noundef align 8 dereferenceable_or_null(8), double noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid
declare { i64, i64 } @_ZNK5QRect10normalizedEv(ptr noundef align 4 dereferenceable_or_null(16)) local_unnamed_addr #6

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef i32 @_ZN21QCPAxisPainterPrivate4sizeEv(ptr noundef align 8 dereferenceable_or_null(504) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QRect, align 16              ; 4 uses
  %2 = alloca %class.QByteArray, align 8          ; 11 uses
  %3 = alloca %class.QSize, align 4               ; 7 uses
  %4 = alloca %"class.QtPrivate::QForeachContainer.147", align 8 ; 12 uses
  %5 = alloca %class.QFontMetrics, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%class.QByteArray) align 8 %2, ptr noundef align 8 dereferenceable_or_null(504) %0)
  %i.d = getelementptr i8, ptr %0, i64 360
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 376
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZneRK10QByteArrayS1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 368
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef i32 @_ZN9QtPrivate13compareMemoryE14QByteArrayViewS0_(i64 %i.f, ptr %i.m, i64 %i.f, ptr %i.k)
          to label %_ZneRK10QByteArrayS1_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #50
  unreachable

_ZneRK10QByteArrayS1_.exit:                       ; preds = %bb.b
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %_ZneRK10QByteArrayS1_.exit.thread

_ZneRK10QByteArrayS1_.exit.thread:                ; preds = %bb.a, %_ZneRK10QByteArrayS1_.exit
  %i.q = getelementptr i8, ptr %0, i64 384        ; 3 uses
  %i.r = getelementptr i8, ptr %0, i64 400
  call void @_ZN12QHashPrivate4DataIN6QCacheI7QStringN21QCPAxisPainterPrivate11CachedLabelEE4NodeEE5clearEv(ptr noundef align 8 dereferenceable_or_null(40) %i.r)
  %i.s = getelementptr i8, ptr %0, i64 448
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %0, i64 392
  store ptr %i.q, ptr %i.t, align 8
  store ptr %i.q, ptr %i.q, align 8
  %i.u = call noundef align 8 dereferenceable(24) ptr @_ZN10QByteArrayaSERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2) #49 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZneRK10QByteArrayS1_.exit.thread, %_ZneRK10QByteArrayS1_.exit
  %i.v = getelementptr i8, ptr %0, i64 320
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr i8, ptr %0, i64 180
  %i.z = getelementptr i8, ptr %0, i64 188
  %i.aa = load i32, ptr %i.y, align 4
  %i.ab = load i32, ptr %i.z, align 4
  %i.ac = call i32 @llvm.smax.i32(i32 %i.aa, i32 %i.ab)
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.ac, i32 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ %.sroa.speculated, %bb.e ] ; 3 uses
  %i.ad = getelementptr i8, ptr %0, i64 168
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  store i32 0, ptr %3, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.ag, align 4
  %i.ah = getelementptr i8, ptr %0, i64 344
  %i.ai = load i64, ptr %i.ah, align 8            ; 3 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr i8, ptr %0, i64 328
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !600 ; 3 uses
  store ptr %i.al, ptr %4, align 8, !alias.scope !600
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.an = getelementptr i8, ptr %0, i64 336
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !600 ; 4 uses
  store ptr %i.ao, ptr %i.am, align 8, !alias.scope !600
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 %i.ai, ptr %i.ap, align 8, !alias.scope !600
  %.not.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate21qMakeForeachContainerIR5QListI7QStringEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS7_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = atomicrmw add ptr %i.al, i32 1 acq_rel, align 4, !noalias !600 ; 0 uses
  br label %_ZN9QtPrivate21qMakeForeachContainerIR5QListI7QStringEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS7_.exit

_ZN9QtPrivate21qMakeForeachContainerIR5QListI7QStringEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS7_.exit: ; preds = %bb.h, %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.ao, ptr %i.ar, align 8, !alias.scope !600
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.idx = mul i64 %i.ai, 24                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ao, i64 %.idx  ; 2 uses
  store ptr %i.at, ptr %i.as, align 8, !alias.scope !600
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 1, ptr %i.au, align 8, !alias.scope !600
  %.not2628 = icmp eq i64 %.idx, 0
  br i1 %.not2628, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9QtPrivate21qMakeForeachContainerIR5QListI7QStringEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS7_.exit
  %i.av = getelementptr i8, ptr %0, i64 208
  br label %bb.l

._crit_edge:                                      ; preds = %bb.m, %_ZN9QtPrivate21qMakeForeachContainerIR5QListI7QStringEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS7_.exit
  %i.aw = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i, label %_ZN9QtPrivate17QForeachContainerI5QListI7QStringEED2Ev.exit, label %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i.i: ; preds = %._crit_edge
  %i.ax = atomicrmw add ptr %i.aw, i32 -1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.ax, 1
  br i1 %.not.i.i.i, label %bb.j, label %_ZN9QtPrivate17QForeachContainerI5QListI7QStringEED2Ev.exit

bb.j:                                             ; preds = %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i.i
  %i.ay = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.az = load i64, ptr %i.ap, align 8
  %.idx.i.i.i.i = mul i64 %i.az, 24               ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ay, i64 %.idx.i.i.i.i
  %.not4.i.i.i.i.i.i.i = icmp eq i64 %.idx.i.i.i.i, 0
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.be, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i.i ], [ %i.ay, %bb.j ] ; 3 uses
  %i.bb = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bc = atomicrmw add ptr %i.bb, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bc, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i.i

bb.k:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.bd = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bd, i64 noundef 2, i64 noundef 8) #49
  br label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i.i:   ; preds = %bb.k, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.be = getelementptr i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.be, %i.ba
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !14

_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i.i: ; preds = %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i.i, %bb.j
  %i.bf = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bf, i64 noundef 24, i64 noundef 8) #49
  br label %_ZN9QtPrivate17QForeachContainerI5QListI7QStringEED2Ev.exit

_ZN9QtPrivate17QForeachContainerI5QListI7QStringEED2Ev.exit: ; preds = %._crit_edge, %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i.i, %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  %i.bg = getelementptr i8, ptr %0, i64 8
  %i.bh = load i32, ptr %i.bg, align 8
  switch i32 %i.bh, label %bb.p [
    i32 8, label %bb.o
    i32 4, label %bb.o
  ]

bb.l:                                             ; preds = %.lr.ph, %bb.m
  %i.bi = phi ptr [ %i.ao, %.lr.ph ], [ %i.bm, %bb.m ] ; 2 uses
  %i.bj = load ptr, ptr %0, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef align 8 dereferenceable_or_null(504) %0, ptr noundef align 8 dereferenceable(12) %i.av, ptr noundef align 8 dereferenceable(24) %i.bi, ptr noundef nonnull %3)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr i8, ptr %i.bi, i64 24     ; 3 uses
  store ptr %i.bm, ptr %i.ar, align 8
  %.not26 = icmp eq ptr %i.bm, %i.at
  br i1 %.not26, label %._crit_edge, label %bb.l, !llvm.loop !599

bb.n:                                             ; preds = %bb.l
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9QtPrivate17QForeachContainerI5QListI7QStringEED2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable_or_null(44) %4) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  br label %bb.ab

bb.o:                                             ; preds = %_ZN9QtPrivate17QForeachContainerI5QListI7QStringEED2Ev.exit, %_ZN9QtPrivate17QForeachContainerI5QListI7QStringEED2Ev.exit
  %i.bo = load i32, ptr %i.ag, align 4
  br label %bb.q

bb.p:                                             ; preds = %_ZN9QtPrivate17QForeachContainerI5QListI7QStringEED2Ev.exit
  %i.bp = load i32, ptr %3, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bq = phi i32 [ %i.bo, %bb.o ], [ %i.bp, %bb.p ]
  %i.br = add i32 %i.bq, %.0
  %i.bs = getelementptr i8, ptr %0, i64 152
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = add i32 %i.br, %i.bt
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.g
  %.1 = phi i32 [ %.0, %bb.g ], [ %i.bu, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.f
  %.2 = phi i32 [ %.1, %bb.r ], [ %.0, %bb.f ]    ; 2 uses
  %i.bv = getelementptr i8, ptr %0, i64 128
  %i.bw = getelementptr i8, ptr %0, i64 144
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  %i.bz = getelementptr i8, ptr %0, i64 96
  invoke void @_ZN12QFontMetricsC1ERK5QFont(ptr noundef nonnull align 8 dereferenceable_or_null(8) %5, ptr noundef align 8 dereferenceable(12) %i.bz)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #49
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 -1>, ptr %1, align 16
  %i.ca = invoke { i64, i64 } @_ZNK12QFontMetrics12boundingRectERK5QRectiRK7QStringiPi(ptr noundef nonnull align 8 dereferenceable_or_null(8) %5, ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef 644, ptr noundef align 8 dereferenceable(24) %i.bv, i32 noundef 0, ptr noundef null)
          to label %bb.v unwind label %bb.x       ; 2 uses

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #49
  %i.cb = extractvalue { i64, i64 } %i.ca, 0
  %i.cc = extractvalue { i64, i64 } %i.ca, 1
  %.sroa.7.12.extract.shift = lshr i64 %i.cc, 32
  %.sroa.7.12.extract.trunc = trunc nuw i64 %.sroa.7.12.extract.shift to i32
  %.sroa.0.4.extract.shift = lshr i64 %i.cb, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32
  %i.cd = getelementptr i8, ptr %0, i64 88
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = add i32 %.2, 1
  %i.cg = add i32 %i.cf, %.sroa.7.12.extract.trunc
  %i.ch = sub i32 %i.cg, %.sroa.0.4.extract.trunc
  %i.ci = add i32 %i.ch, %i.ce
  call void @_ZN12QFontMetricsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12QFontMetricsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #49
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn16 = phi { ptr, i32 } [ %i.ck, %bb.x ], [ %i.cj, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %bb.ab

bb.z:                                             ; preds = %bb.v, %bb.s
  %.3 = phi i32 [ %.2, %bb.s ], [ %i.ci, %bb.v ]
  %i.cl = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i19, label %_ZN10QByteArrayD2Ev.exit, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i:       ; preds = %bb.z
  %i.cm = atomicrmw add ptr %i.cl, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.cm, 1
  br i1 %.not.i.i, label %bb.aa, label %_ZN10QByteArrayD2Ev.exit

bb.aa:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i
  %i.cn = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cn, i64 noundef 1, i64 noundef 8) #49
  br label %_ZN10QByteArrayD2Ev.exit

_ZN10QByteArrayD2Ev.exit:                         ; preds = %bb.z, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  ret i32 %.3

bb.ab:                                            ; preds = %bb.y, %bb.n
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %bb.y ], [ %i.bn, %bb.n ]
  %i.co = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i20, label %_ZN10QByteArrayD2Ev.exit23, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i21

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i21:     ; preds = %bb.ab
  %i.cp = atomicrmw add ptr %i.co, i32 -1 acq_rel, align 4
  %.not.i.i22 = icmp eq i32 %i.cp, 1
  br i1 %.not.i.i22, label %bb.ac, label %_ZN10QByteArrayD2Ev.exit23

bb.ac:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i21
  %i.cq = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cq, i64 noundef 1, i64 noundef 8) #49
  br label %_ZN10QByteArrayD2Ev.exit23

_ZN10QByteArrayD2Ev.exit23:                       ; preds = %bb.ab, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i21, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  resume { ptr, i32 } %.pn16.pn
}

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN9QtPrivate17QForeachContainerI5QListI7QStringEED2Ev(ptr noundef align 8 dead_on_return(44) dereferenceable_or_null(44) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZN5QListI7QStringED2Ev.exit, label %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i

_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i: ; preds = %bb.a
  %i.b = atomicrmw add ptr %i.a, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.b, 1
  br i1 %.not.i.i, label %bb.b, label %_ZN5QListI7QStringED2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %.idx.i.i.i = mul i64 %i.f, 24                  ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 %.idx.i.i.i
  %.not4.i.i.i.i.i.i = icmp eq i64 %.idx.i.i.i, 0
  br i1 %.not4.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i.i.i, align 8  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.i = atomicrmw add ptr %i.h, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.i, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.c, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i.i.i.i.i, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.j, i64 noundef 2, i64 noundef 8) #49
  br label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i:     ; preds = %bb.c, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.k = getelementptr i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !14

_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i: ; preds = %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i, %bb.b
  %i.l = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.l, i64 noundef 24, i64 noundef 8) #49
  br label %_ZN5QListI7QStringED2Ev.exit

_ZN5QListI7QStringED2Ev.exit:                     ; preds = %bb.a, %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i, %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN21QCPAxisPainterPrivate10clearCacheEv(ptr noundef align 8 dereferenceable_or_null(504) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 384        ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 400
  tail call void @_ZN12QHashPrivate4DataIN6QCacheI7QStringN21QCPAxisPainterPrivate11CachedLabelEE4NodeEE5clearEv(ptr noundef align 8 dereferenceable_or_null(40) %i.b)
  %i.c = getelementptr i8, ptr %0, i64 448
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 392
  store ptr %i.a, ptr %i.d, align 8
  store ptr %i.a, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK21QCPAxisPainterPrivate26generateLabelParameterHashEv(ptr dead_on_unwind noalias writable sret(%class.QByteArray) align 8 initializes((0, 24)) %0, ptr noundef align 8 dereferenceable_or_null(504) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QByteArray, align 16         ; 10 uses
  %3 = alloca %class.QByteArray, align 8          ; 9 uses
  %4 = alloca %class.QByteArray, align 8          ; 9 uses
  %5 = alloca %class.QByteArray, align 8          ; 9 uses
  %6 = alloca %class.QByteArray, align 8          ; 9 uses
  %7 = alloca %class.QByteArray, align 8          ; 9 uses
  %8 = alloca %class.QByteArray, align 16         ; 10 uses
  %9 = alloca %class.QByteArray, align 16         ; 11 uses
  %10 = alloca %class.QString, align 8            ; 9 uses
  %11 = alloca %class.QByteArray, align 8         ; 9 uses
end_hunk_0
