inline.NumInlined: 193
inline.NumDeleted: 116
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6embree19LinearBarrierActive4initEm:bb.a
  %i.k = icmp ult i64 %1, 4
  br i1 %i.k, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %1, -4
  br label %.lr.ph

.lr.ph20.unr-lcssa:                               ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph20, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph20.unr-lcssa, %.lr.ph.preheader
  %.01218.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ab, %.lr.ph20.unr-lcssa ]
  %lcmp.mod26 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod26)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.01218.epil = phi i64 [ %i.n, %.lr.ph.epil ], [ %.01218.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.01218.epil
  store volatile i8 0, ptr %i.m, align 1
  %i.n = add nuw i64 %.01218.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph20, label %.lr.ph.epil, !llvm.loop !9

.lr.ph20:                                         ; preds = %.lr.ph.epil, %.lr.ph20.unr-lcssa
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %xtraiter27 = and i64 %1, 3                     ; 3 uses
  %i.p = icmp ult i64 %1, 4
  br i1 %i.p, label %.epil.preheader, label %.lr.ph20.new

.lr.ph20.new:                                     ; preds = %.lr.ph20
  %unroll_iter31 = and i64 %1, -4
  br label %bb.i

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01218 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ab, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.q = load ptr, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.01218
  store volatile i8 0, ptr %i.r, align 1
  %i.s = load ptr, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.01218
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store volatile i8 0, ptr %i.u, align 1
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.01218
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store volatile i8 0, ptr %i.x, align 1
  %i.y = load ptr, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.01218
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  store volatile i8 0, ptr %i.aa, align 1
  %i.ab = add nuw i64 %.01218, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph20.unr-lcssa, label %.lr.ph, !llvm.loop !3

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.i
  %lcmp.mod29.not = icmp eq i64 %xtraiter27, 0
  br i1 %lcmp.mod29.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph20
  %.019.epil.init = phi i64 [ 0, %.lr.ph20 ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter27, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.019.epil = phi i64 [ %.019.epil.init, %.epil.preheader ], [ %i.ae, %bb.h ] ; 2 uses
  %epil.iter28 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter28.next, %bb.h ]
  %i.ac = load ptr, ptr %i.o, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.019.epil
  store volatile i8 0, ptr %i.ad, align 1
  %i.ae = add nuw i64 %.019.epil, 1
  %epil.iter28.next = add i64 %epil.iter28, 1     ; 2 uses
  %epil.iter28.cmp.not = icmp eq i64 %epil.iter28.next, %xtraiter27
  br i1 %epil.iter28.cmp.not, label %._crit_edge, label %bb.h, !llvm.loop !10

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.h, %bb.g
  ret void

bb.i:                                             ; preds = %bb.i, %.lr.ph20.new
  %.019 = phi i64 [ 0, %.lr.ph20.new ], [ %i.aq, %bb.i ] ; 5 uses
  %niter32 = phi i64 [ 0, %.lr.ph20.new ], [ %niter32.next.3, %bb.i ]
  %i.af = load ptr, ptr %i.o, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.019
  store volatile i8 0, ptr %i.ag, align 1
  %i.ah = load ptr, ptr %i.o, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.019
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store volatile i8 0, ptr %i.aj, align 1
  %i.ak = load ptr, ptr %i.o, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.019
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  store volatile i8 0, ptr %i.am, align 1
  %i.an = load ptr, ptr %i.o, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.019
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  store volatile i8 0, ptr %i.ap, align 1
  %i.aq = add nuw i64 %.019, 4                    ; 2 uses
  %niter32.next.3 = add i64 %niter32, 4           ; 2 uses
  %niter32.ncmp.3 = icmp eq i64 %niter32.next.3, %unroll_iter31
  br i1 %niter32.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.i, !llvm.loop !7
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6embree19LinearBarrierActiveD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.a) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6embree19LinearBarrierActive4waitEm(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load volatile i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i64 %1, 0                        ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %.preheader27, label %bb.d

.preheader27:                                     ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.f = load volatile i64, ptr %i.e, align 8
  %.not45 = icmp eq i64 %i.f, 0
  br i1 %.not45, label %.preheader26, label %.lr.ph41

.lr.ph41:                                         ; preds = %.preheader27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

.preheader26:                                     ; preds = %bb.c, %.preheader27
  %i.h = load volatile i64, ptr %i.e, align 8
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %_ZN6embree9pause_cpuEm.exit25.preheader.preheader, label %._crit_edge44

_ZN6embree9pause_cpuEm.exit25.preheader.preheader: ; preds = %.preheader26
  %.pre47 = load ptr, ptr %0, align 8
  br label %_ZN6embree9pause_cpuEm.exit25.preheader

bb.c:                                             ; preds = %.lr.ph41, %bb.c
  %.01840 = phi i64 [ 0, %.lr.ph41 ], [ %i.l, %bb.c ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01840
  store volatile i8 0, ptr %i.k, align 1
  %i.l = add nuw i64 %.01840, 1                   ; 2 uses
  %i.m = load volatile i64, ptr %i.e, align 8
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %.preheader26, !llvm.loop !11

_ZN6embree9pause_cpuEm.exit25.preheader:          ; preds = %_ZN6embree9pause_cpuEm.exit25.preheader.preheader, %_ZN6embree9pause_cpuEm.exit25._crit_edge
  %i.o = phi ptr [ %i.x, %_ZN6embree9pause_cpuEm.exit25._crit_edge ], [ %.pre47, %_ZN6embree9pause_cpuEm.exit25.preheader.preheader ] ; 2 uses
  %.01743 = phi i64 [ %i.y, %_ZN6embree9pause_cpuEm.exit25._crit_edge ], [ 1, %_ZN6embree9pause_cpuEm.exit25.preheader.preheader ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.01743
  %i.q = load volatile i8, ptr %i.p, align 1
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %.preheader, label %_ZN6embree9pause_cpuEm.exit25._crit_edge, !prof !12

._crit_edge44:                                    ; preds = %_ZN6embree9pause_cpuEm.exit25._crit_edge, %.preheader26
  store volatile i32 1, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store volatile i32 0, ptr %i.s, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !13
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store volatile i32 1, ptr %2, align 4
  br label %.loopexit

.preheader:                                       ; preds = %_ZN6embree9pause_cpuEm.exit25.preheader, %.preheader
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.01743
  %i.v = load volatile i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %.preheader, label %_ZN6embree9pause_cpuEm.exit25._crit_edge, !prof !14, !llvm.loop !15

_ZN6embree9pause_cpuEm.exit25._crit_edge:         ; preds = %.preheader, %_ZN6embree9pause_cpuEm.exit25.preheader
  %i.x = phi ptr [ %i.o, %_ZN6embree9pause_cpuEm.exit25.preheader ], [ %i.t, %.preheader ]
  %i.y = add nuw i64 %.01743, 1                   ; 2 uses
  %i.z = load volatile i64, ptr %i.e, align 8
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %_ZN6embree9pause_cpuEm.exit25.preheader, label %._crit_edge44, !llvm.loop !16

bb.d:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %1
  store volatile i8 1, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ae = load volatile i32, ptr %i.ad, align 4
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.preheader28, label %.loopexit, !prof !12

.preheader28:                                     ; preds = %bb.d, %.preheader28
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.ag = load volatile i32, ptr %i.ad, align 4
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %.preheader28, label %.loopexit, !prof !14, !llvm.loop !17

bb.e:                                             ; preds = %bb.a
  br i1 %i.d, label %.preheader31, label %bb.f

.preheader31:                                     ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.aj = load volatile i64, ptr %i.ai, align 8
  %.not = icmp eq i64 %i.aj, 0
  br i1 %.not, label %.preheader30, label %.lr.ph

.preheader30:                                     ; preds = %.lr.ph, %.preheader31
  %i.ak = load volatile i64, ptr %i.ai, align 8
  %i.al = icmp ugt i64 %i.ak, 1
  br i1 %i.al, label %_ZN6embree9pause_cpuEm.exit21.preheader.lr.ph, label %._crit_edge

_ZN6embree9pause_cpuEm.exit21.preheader.lr.ph:    ; preds = %.preheader30
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre = load ptr, ptr %i.am, align 8
  br label %_ZN6embree9pause_cpuEm.exit21.preheader

.lr.ph:                                           ; preds = %.preheader31, %.lr.ph
  %.01636 = phi i64 [ %i.ap, %.lr.ph ], [ 0, %.preheader31 ] ; 2 uses
  %i.an = load ptr, ptr %0, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.01636
  store volatile i8 0, ptr %i.ao, align 1
  %i.ap = add nuw i64 %.01636, 1                  ; 2 uses
  %i.aq = load volatile i64, ptr %i.ai, align 8
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph, label %.preheader30, !llvm.loop !18

_ZN6embree9pause_cpuEm.exit21.preheader:          ; preds = %_ZN6embree9pause_cpuEm.exit21.preheader.lr.ph, %_ZN6embree9pause_cpuEm.exit21._crit_edge
  %i.as = phi ptr [ %.pre, %_ZN6embree9pause_cpuEm.exit21.preheader.lr.ph ], [ %i.bb, %_ZN6embree9pause_cpuEm.exit21._crit_edge ] ; 2 uses
  %.038 = phi i64 [ 1, %_ZN6embree9pause_cpuEm.exit21.preheader.lr.ph ], [ %i.bc, %_ZN6embree9pause_cpuEm.exit21._crit_edge ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.038
  %i.au = load volatile i8, ptr %i.at, align 1
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %.preheader29, label %_ZN6embree9pause_cpuEm.exit21._crit_edge, !prof !12

._crit_edge:                                      ; preds = %_ZN6embree9pause_cpuEm.exit21._crit_edge, %.preheader30
  store volatile i32 0, ptr %i.a, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20
  store volatile i32 0, ptr %i.aw, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !19
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store volatile i32 1, ptr %3, align 8
  br label %.loopexit

.preheader29:                                     ; preds = %_ZN6embree9pause_cpuEm.exit21.preheader, %.preheader29
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.ax = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.038
  %i.az = load volatile i8, ptr %i.ay, align 1
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %.preheader29, label %_ZN6embree9pause_cpuEm.exit21._crit_edge, !prof !14, !llvm.loop !20

_ZN6embree9pause_cpuEm.exit21._crit_edge:         ; preds = %.preheader29, %_ZN6embree9pause_cpuEm.exit21.preheader
  %i.bb = phi ptr [ %i.as, %_ZN6embree9pause_cpuEm.exit21.preheader ], [ %i.ax, %.preheader29 ]
  %i.bc = add nuw i64 %.038, 1                    ; 2 uses
  %i.bd = load volatile i64, ptr %i.ai, align 8
  %i.be = icmp ult i64 %i.bc, %i.bd
  br i1 %i.be, label %_ZN6embree9pause_cpuEm.exit21.preheader, label %._crit_edge, !llvm.loop !21

bb.f:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %1
  store volatile i8 1, ptr %i.bh, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bj = load volatile i32, ptr %i.bi, align 8
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %.preheader32, label %.loopexit, !prof !12

.preheader32:                                     ; preds = %bb.f, %.preheader32
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.bl = load volatile i32, ptr %i.bi, align 8
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %.preheader32, label %.loopexit, !prof !14, !llvm.loop !22

.loopexit:                                        ; preds = %.preheader32, %.preheader28, %bb.f, %bb.d, %._crit_edge, %._crit_edge44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree27barrier_sys_regression_testC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.c, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i64 27, ptr %i.b, align 8
  %i.d = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.d, ptr %1, align 8
  %i.e = load i64, ptr %i.b, align 8              ; 3 uses
  store i64 %i.e, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.d, ptr noundef nonnull align 1 dereferenceable(27) @.str, i64 27, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.e, ptr %i.f, align 8
  %i.g = load ptr, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree14RegressionTestE, i64 16), ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.j, ptr %i.i, align 8
  %i.k = load ptr, ptr %1, align 8                ; 2 uses
  %i.l = load i64, ptr %i.f, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 %i.l, ptr %i.a, align 8
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc.i
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc9 unwind label %bb.h    ; 2 uses

.noexc9:                                          ; preds = %.noexc.i.i
  store ptr %i.n, ptr %i.i, align 8
  %i.o = load i64, ptr %i.a, align 8
  store i64 %i.o, ptr %i.j, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc9, %.noexc.i
  %i.p = phi ptr [ %i.n, %.noexc9 ], [ %i.j, %.noexc.i ] ; 2 uses
  switch i64 %i.l, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %i.k, align 1
  store i8 %i.q, ptr %i.p, align 1
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.k, i64 %i.l, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i.i
  %i.r = load i64, ptr %i.a, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.r, ptr %i.s, align 8
  %i.t = load ptr, ptr %i.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.v = load ptr, ptr %1, align 8                ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.v) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree27barrier_sys_regression_testE, i64 16), ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #16
          to label %.noexc11 unwind label %bb.i   ; 7 uses

.noexc11:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN6embree8MutexSysC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %.noexc.i10 unwind label %bb.e

.noexc.i10:                                       ; preds = %.noexc11
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  invoke void @_ZN6embree12ConditionSysC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.noexc.i10
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6embree8MutexSysD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %i.y) #10
  br label %.body.i

bb.e:                                             ; preds = %.noexc11
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ab, %bb.e ], [ %i.aa, %bb.d ]
  call void @_ZdlPv(ptr noundef nonnull %i.y) #17
  br label %.body

bb.f:                                             ; preds = %.noexc.i10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  store volatile i64 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  store volatile i64 0, ptr %i.ad, align 8
  store volatile i64 0, ptr %i.ac, align 8
  store volatile i64 0, ptr %i.ad, align 8
  store ptr %i.y, ptr %i.x, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i8 0, i64 40, i1 false)
  invoke void @_ZN6embree22registerRegressionTestEPNS_14RegressionTestE(ptr noundef nonnull %0)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  ret void

bb.h:                                             ; preds = %.noexc.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %1, align 8               ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.c
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.sink.split

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdlPv(ptr noundef nonnull %i.al) #17
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  call void @_ZN6embree10BarrierSysD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #10
  br label %.body

.body:                                            ; preds = %bb.i, %.body.i, %_ZNSt6vectorImSaImEED2Ev.exit
  %.pn6 = phi { ptr, i32 } [ %i.aj, %_ZNSt6vectorImSaImEED2Ev.exit ], [ %i.ai, %bb.i ], [ %eh.lpad-body.i, %.body.i ] ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree14RegressionTestE, i64 16), ptr %0, align 8
  %i.am = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.j
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.sink.split: ; preds = %.body, %bb.h
  %.sink = phi ptr [ %i.ag, %bb.h ], [ %i.am, %.body ]
  %.pn6.pn.ph = phi { ptr, i32 } [ %i.af, %bb.h ], [ %.pn6, %.body ]
  call void @_ZdlPv(ptr noundef %.sink) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.sink.split, %.body, %bb.h
  %.pn6.pn = phi { ptr, i32 } [ %i.af, %bb.h ], [ %.pn6, %.body ], [ %.pn6.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.sink.split ]
  resume { ptr, i32 } %.pn6.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree27barrier_sys_regression_testD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree27barrier_sys_regression_testE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #17
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN6embree10BarrierSysD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @_ZN6embree12ConditionSysD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #10
  tail call void @_ZN6embree8MutexSysD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %i.d) #10
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #17
  br label %_ZN6embree10BarrierSysD2Ev.exit

_ZN6embree10BarrierSysD2Ev.exit:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree14RegressionTestE, i64 16), ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
end_hunk_0
