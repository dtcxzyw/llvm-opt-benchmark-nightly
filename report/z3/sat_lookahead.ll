inline.NumInlined: 2556
inline.NumDeleted: 652
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN3sat9lookahead9psat_heurEv:bb.a
bb.l:                                             ; preds = %.lr.ph94.1
  %i.ex = load double, ptr %i.i, align 8, !tbaa !404
  %i.ey = tail call double @pow(double noundef %i.ex, double noundef 2.000000e+00) #28
  %i.ez = fdiv double 1.000000e+00, %i.ey
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph94.1
  %i.fa = phi double [ %i.ez, %bb.l ], [ 0.000000e+00, %.lr.ph94.1 ]
  %i.fb = fadd double %i.es, %i.fa                ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.05392, i64 16 ; 2 uses
  %.not57.1 = icmp eq ptr %i.fc, %i.cs
  br i1 %.not57.1, label %._crit_edge95, label %.lr.ph94

._crit_edge101:                                   ; preds = %.lr.ph100.prol.loopexit, %bb.p, %._crit_edge95, %_ZN6vectorIN3sat9lookahead6binaryELb0EjE3endEv.exit64
  %.4.lcssa = phi double [ %.3.lcssa, %_ZN6vectorIN3sat9lookahead6binaryELb0EjE3endEv.exit64 ], [ %.3.lcssa, %._crit_edge95 ], [ %.lcssa155.unr, %.lr.ph100.prol.loopexit ], [ %i.fu, %bb.p ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.048104, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.fd, %i.f
  br i1 %.not, label %._crit_edge108, label %bb.b

.lr.ph100:                                        ; preds = %.lr.ph100.prol.loopexit, %bb.p
  %.499 = phi double [ %i.fu, %bb.p ], [ %.499.unr, %.lr.ph100.prol.loopexit ]
  %.05198 = phi ptr [ %i.fv, %bb.p ], [ %.05198.unr, %.lr.ph100.prol.loopexit ] ; 3 uses
  %i.fe = load i64, ptr %.05198, align 4          ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.fe to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.fe, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.ff = icmp ugt i32 %i.an, %.sroa.0.0.extract.trunc
  %i.fg = icmp ugt i32 %i.an, %.sroa.4.0.extract.trunc
  %or.cond81 = select i1 %i.ff, i1 %i.fg, i1 false
  br i1 %or.cond81, label %bb.n, label %.lr.ph100.1

bb.n:                                             ; preds = %.lr.ph100
  %i.fh = load double, ptr %i.i, align 8, !tbaa !404
  %i.fi = tail call double @pow(double noundef %i.fh, double noundef 2.000000e+00) #28
  %i.fj = fdiv double 1.000000e+00, %i.fi
  br label %.lr.ph100.1

.lr.ph100.1:                                      ; preds = %.lr.ph100, %bb.n
  %i.fk = phi double [ %i.fj, %bb.n ], [ 0.000000e+00, %.lr.ph100 ]
  %i.fl = fadd double %.499, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %.05198, i64 8
  %i.fn = load i64, ptr %i.fm, align 4            ; 2 uses
  %.sroa.0.0.extract.trunc.1 = trunc i64 %i.fn to i32
  %.sroa.4.0.extract.shift.1 = lshr i64 %i.fn, 32
  %.sroa.4.0.extract.trunc.1 = trunc nuw i64 %.sroa.4.0.extract.shift.1 to i32
  %i.fo = icmp ugt i32 %i.an, %.sroa.0.0.extract.trunc.1
  %i.fp = icmp ugt i32 %i.an, %.sroa.4.0.extract.trunc.1
  %or.cond81.1 = select i1 %i.fo, i1 %i.fp, i1 false
  br i1 %or.cond81.1, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph100.1
  %i.fq = load double, ptr %i.i, align 8, !tbaa !404
  %i.fr = tail call double @pow(double noundef %i.fq, double noundef 2.000000e+00) #28
  %i.fs = fdiv double 1.000000e+00, %i.fr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph100.1
  %i.ft = phi double [ %i.fs, %bb.o ], [ 0.000000e+00, %.lr.ph100.1 ]
  %i.fu = fadd double %i.fl, %i.ft                ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.05198, i64 16 ; 2 uses
  %.not58.1 = icmp eq ptr %i.fv, %i.dz
  br i1 %.not58.1, label %._crit_edge101, label %.lr.ph100

._crit_edge114:                                   ; preds = %.prol.loopexit, %.lr.ph113.new, %._crit_edge108, %_ZN6vectorIPN3sat9lookahead4naryELb0EjE3endEv.exit
  %.5.lcssa = phi double [ %.0.lcssa, %_ZN6vectorIPN3sat9lookahead4naryELb0EjE3endEv.exit ], [ %.0.lcssa, %._crit_edge108 ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.gr, %.lr.ph113.new ]
  %i.fw = uitofp i32 %i.d to double
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !405
  %i.fz = tail call double @pow(double noundef %i.fw, double noundef %i.fy) #28
  %i.ga = fdiv double %.5.lcssa, %i.fz            ; 3 uses
  %i.gb = tail call noundef i32 @_Z19get_verbosity_levelv()
  %i.gc = icmp ugt i32 %i.gb, 9
  br i1 %i.gc, label %bb.q, label %bb.t

.lr.ph113.new:                                    ; preds = %.prol.loopexit, %.lr.ph113.new
  %.5112 = phi double [ %i.gr, %.lr.ph113.new ], [ %.5112.unr, %.prol.loopexit ]
  %.049111 = phi ptr [ %i.gs, %.lr.ph113.new ], [ %.049111.unr, %.prol.loopexit ] ; 3 uses
  %i.gd = load ptr, ptr %.049111, align 8, !tbaa !114
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !116
  %i.gf = add i32 %i.ge, -1
  %i.gg = uitofp i32 %i.gf to double
  %i.gh = tail call double @pow(double noundef %i.aa, double noundef %i.gg) #28
  %i.gi = fdiv double 1.000000e+00, %i.gh
  %i.gj = fadd double %.5112, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %.049111, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !114
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !116
  %i.gn = add i32 %i.gm, -1
  %i.go = uitofp i32 %i.gn to double
  %i.gp = tail call double @pow(double noundef %i.aa, double noundef %i.go) #28
  %i.gq = fdiv double 1.000000e+00, %i.gp
  %i.gr = fadd double %i.gj, %i.gq                ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.049111, i64 16 ; 2 uses
  %.not54.1 = icmp eq ptr %i.gs, %i.y
  br i1 %.not54.1, label %._crit_edge114, label %.lr.ph113.new

bb.q:                                             ; preds = %._crit_edge114
  %i.gt = tail call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.gt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_Z12verbose_lockv()
  %i.gu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.gv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gu, ptr noundef nonnull @.str.40, i64 noundef 20) ; 0 uses
  %i.gw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gu, double noundef %i.ga)
  %i.gx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  tail call void @_Z14verbose_unlockv()
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.gy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.gz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, ptr noundef nonnull @.str.40, i64 noundef 20) ; 0 uses
  %i.ha = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, double noundef %i.ga)
  %i.hb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ha, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %._crit_edge114
  ret double %i.ga
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3sat9lookahead13should_cutoffEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1160) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !406  ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %1, %i.e
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %i.b, label %.thread [
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.h = load i32, ptr %i.g, align 8, !tbaa !263
  %i.i = uitofp i32 %i.h to double
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.k = load i32, ptr %i.j, align 8, !tbaa !352
  %i.l = uitofp i32 %i.k to double
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.n = load double, ptr %i.m, align 8, !tbaa !407
  %i.o = fmul double %i.n, %i.l
  %i.p = fcmp ult double %i.o, %i.i
  br i1 %i.p, label %.thread.thread, label %bb.h

.thread.thread:                                   ; preds = %bb.f, %bb.d
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.q = tail call noundef double @_ZN3sat9lookahead9psat_heurEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.s = load double, ptr %i.r, align 8, !tbaa !408
  %i.t = fcmp ult double %i.q, %i.s
  br i1 %i.t, label %..thread_crit_edge, label %bb.h

..thread_crit_edge:                               ; preds = %bb.e
  %.pre = load i32, ptr %i.a, align 4, !tbaa !406
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.c
  %i.u = phi i32 [ %.pre, %..thread_crit_edge ], [ %i.b, %bb.c ]
  switch i32 %i.u, label %bb.h [
    i32 3, label %bb.f
    i32 4, label %bb.g
  ]

bb.f:                                             ; preds = %.thread
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.w = load i32, ptr %i.v, align 8, !tbaa !263
  %i.x = uitofp i32 %i.w to double
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.z = load double, ptr %i.y, align 8, !tbaa !409
  %i.aa = fcmp ogt double %i.z, %i.x
  br i1 %i.aa, label %bb.h, label %.thread.thread

bb.g:                                             ; preds = %.thread
  %i.ab = tail call noundef double @_ZN3sat9lookahead9psat_heurEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !410
  %i.ae = fcmp oge double %i.ab, %i.ad
  br label %bb.h

bb.h:                                             ; preds = %.thread.thread, %.thread, %bb.b, %bb.d, %bb.e, %bb.f, %bb.g, %bb.a
  %i.af = phi i1 [ false, %bb.a ], [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.b ], [ false, %.thread ], [ %i.ae, %bb.g ], [ false, %.thread.thread ]
  ret i1 %i.af
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -1, 2) i32 @_ZN3sat9lookahead4cubeER7svectorIjjERS1_INS_7literalEjEj(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::allocator", align 1    ; 4 uses
  %6 = alloca %"class.sat::lookahead::scoped_ext", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr %0, ptr %6, align 8, !tbaa !8
  %i.a = load ptr, ptr %0, align 8, !tbaa !11, !nonnull !81, !align !82
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN3sat9lookahead10scoped_extC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(1160) %0), !inline_history !411
  br label %_ZN3sat9lookahead10scoped_extC2ERS0_.exit

_ZN3sat9lookahead10scoped_extC2ERS0_.exit:        ; preds = %bb.a, %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !90     ; 2 uses
  %.not.i74 = icmp eq ptr %i.g, null
  br i1 %.not.i74, label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3sat9lookahead10scoped_extC2ERS0_.exit
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -4
  store i32 0, ptr %i.h, align 4, !tbaa !91
  br label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit

_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit:     ; preds = %_ZN3sat9lookahead10scoped_extC2ERS0_.exit, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !412, !range !248, !noundef !81
  %i.k = trunc nuw i8 %i.j to i1                  ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.t

bb.d:                                             ; preds = %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 10 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !98   ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN16tracked_uint_set5resetEv.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %bb.d
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !91   ; 3 uses
  %.not.i75 = icmp eq i32 %i.q, 0
  br i1 %.not.i75, label %._crit_edge.thread10.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  %wide.trip.count.i = zext i32 %i.q to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.r = icmp ult i32 %i.q, 4
  br i1 %i.r, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %.lr.ph.i

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod420 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod420)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !98
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i.epil
  %i.u = load i32, ptr %i.t, align 4, !tbaa !91
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !294
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  store i8 0, ptr %i.x, align 1, !tbaa !295
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !413

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil, %._crit_edge.i.unr-lcssa
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !98 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN16tracked_uint_set5resetEv.exit, label %._crit_edge.thread10.i

._crit_edge.thread10.i:                           ; preds = %._crit_edge.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  %i.y = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.n, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ]
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -4
  store i32 0, ptr %i.z, align 4, !tbaa !91
  br label %_ZN16tracked_uint_set5resetEv.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !98
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !91
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !294
  %i.ae = zext i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  store i8 0, ptr %i.af, align 1, !tbaa !295
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !98
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !91
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !294
  %i.al = zext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  store i8 0, ptr %i.am, align 1, !tbaa !295
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !98
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !91
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !294
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  store i8 0, ptr %i.at, align 1, !tbaa !295
  %i.au = load ptr, ptr %i.m, align 8, !tbaa !98
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !91
  %i.ay = load ptr, ptr %i.l, align 8, !tbaa !294
  %i.az = zext i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.az
  store i8 0, ptr %i.ba, align 1, !tbaa !295
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !414

_ZN16tracked_uint_set5resetEv.exit:               ; preds = %._crit_edge.thread10.i, %._crit_edge.i, %bb.d
  %i.bb = load ptr, ptr %1, align 8, !tbaa !98    ; 4 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %._crit_edge, label %_ZN6vectorIjLb0EjE3endEv.exit

_ZN6vectorIjLb0EjE3endEv.exit:                    ; preds = %_ZN16tracked_uint_set5resetEv.exit
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !91 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bg
  %.not261 = icmp eq i32 %i.be, 0
  br i1 %.not261, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN16tracked_uint_set6insertEj.exit, %_ZN16tracked_uint_set5resetEv.exit, %_ZN6vectorIjLb0EjE3endEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 988
  store i32 0, ptr %i.bi, align 4, !tbaa !249
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 892
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !97
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 4 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !99 ; 2 uses
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !99
  %i.bn = load ptr, ptr %0, align 8, !tbaa !11, !nonnull !81, !align !82
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 280
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !415, !range !248, !noundef !81
  %i.bq = trunc nuw i8 %i.bp to i1
  invoke void @_ZN3sat9lookahead4initEb(ptr noundef nonnull align 8 dereferenceable(1160) %0, i1 noundef zeroext %i.bq)
          to label %bb.r unwind label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.br = landingpad { ptr, i32 }
          cleanup
  store i32 %i.bm, ptr %i.bl, align 8, !tbaa !99
  br label %.body

.lr.ph:                                           ; preds = %_ZN6vectorIjLb0EjE3endEv.exit, %_ZN16tracked_uint_set6insertEj.exit
  %.056262 = phi ptr [ %i.eg, %_ZN16tracked_uint_set6insertEj.exit ], [ %i.bb, %_ZN6vectorIjLb0EjE3endEv.exit ] ; 2 uses
  %i.bs = load i32, ptr %.056262, align 4, !tbaa !91 ; 3 uses
  %i.bt = add i32 %i.bs, 1                        ; 6 uses
  %i.bu = load ptr, ptr %i.l, align 8, !tbaa !294 ; 4 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i:              ; preds = %.lr.ph
  %.not.i.i79 = icmp ne i32 %i.bt, 0
  tail call void @llvm.assume(i1 %.not.i.i79)
  br label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.preheader

_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i:       ; preds = %.lr.ph
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !91 ; 2 uses
  %i.by = icmp ugt i32 %i.bt, %i.bx
  br i1 %i.by, label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.preheader, label %_ZN6vectorIcLb0EjE7reserveEjRKc.exit.i

_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.preheader:  ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i
  %.ph = phi ptr [ %i.bu, %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i ], [ null, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i ]
  %.0.i17.i.i.i.ph = phi i32 [ %i.bx, %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i ], [ 0, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i ] ; 2 uses
  br label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i:            ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.backedge, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.preheader
  %i.bz = phi ptr [ %.ph, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.preheader ], [ %.be, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.backedge ] ; 6 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.f, label %_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i

_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i:        ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 -8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !91
  %i.cd = icmp ugt i32 %i.bt, %i.cc
  br i1 %i.cd, label %_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i, label %bb.n

bb.f:                                             ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i
  %i.ce = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 10)
          to label %.noexc165 unwind label %.loopexit414 ; 3 uses

.noexc165:                                        ; preds = %bb.f
  store i32 2, ptr %i.ce, align 4, !tbaa !91
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store i32 0, ptr %i.cf, align 4, !tbaa !91
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  store ptr %i.cg, ptr %i.l, align 8, !tbaa !294
  br label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.backedge

_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.backedge:   ; preds = %.noexc165, %.noexc168
  %.be = phi ptr [ %i.dj, %.noexc168 ], [ %i.cg, %.noexc165 ]
  br label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i, !llvm.loop !416

_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i: ; preds = %_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i
  %i.ch = getelementptr inbounds i8, ptr %i.bz, i64 -8 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !91 ; 3 uses
  %i.cj = mul i32 %i.ci, 3
  %i.ck = add i32 %i.cj, 1
  %i.cl = lshr i32 %i.ck, 1                       ; 3 uses
  %narrow.i = add nuw i32 %i.cl, 8                ; 2 uses
  %.not.i161 = icmp ugt i32 %i.cl, %i.ci
  %i.cm = add i32 %i.ci, 8
  %.not27.i = icmp ugt i32 %narrow.i, %i.cm
  %or.cond.i162 = select i1 %.not.i161, i1 %.not27.i, i1 false
  br i1 %or.cond.i162, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i
  %i.cn = tail call ptr @__cxa_allocate_exception(i64 40) #28 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.75, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.cn, align 8, !tbaa !86
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 24 ; 3 uses
  store ptr %i.cp, ptr %i.co, align 8, !tbaa !305
  %i.cq = load ptr, ptr %4, align 8, !tbaa !306   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !307 ; 3 uses
  %i.cv = icmp ult i64 %i.cu, 16
  call void @llvm.assume(i1 %i.cv)
  %i.cw = add nuw nsw i64 %i.cu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cp, ptr noundef nonnull align 8 dereferenceable(1) %i.cr, i64 %i.cw, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !306
  %i.cx = load i64, ptr %i.cr, align 8, !tbaa !295
  store i64 %i.cx, ptr %i.cp, align 8, !tbaa !295
  %.phi.trans.insert.i163 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre.i164 = load i64, ptr %.phi.trans.insert.i163, align 8, !tbaa !307
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.i
  %i.cy = phi i64 [ %i.cu, %bb.i ], [ %.pre.i164, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i64 %i.cy, ptr %i.da, align 8, !tbaa !307
  store ptr %i.cr, ptr %4, align 8, !tbaa !306
  store i64 0, ptr %i.cz, align 8, !tbaa !307
  store i8 0, ptr %i.cr, align 8, !tbaa !295
  invoke void @__cxa_throw(ptr nonnull %i.cn, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #29
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  %i.dc = load ptr, ptr %4, align 8, !tbaa !306   ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.cr
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.j
  %i.de = load i64, ptr %i.cr, align 8, !tbaa !295
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.body

bb.k:                                             ; preds = %bb.g
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @__cxa_free_exception(ptr %i.cn) #28
  br label %.body

bb.l:                                             ; preds = %_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i
  %i.dh = zext i32 %narrow.i to i64
  %i.di = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ch, i64 noundef %i.dh)
          to label %.noexc168 unwind label %.loopexit414 ; 2 uses

.noexc168:                                        ; preds = %bb.l
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  store ptr %i.dj, ptr %i.l, align 8, !tbaa !294
  store i32 %i.cl, ptr %i.di, align 4, !tbaa !91
  br label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.backedge

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

bb.n:                                             ; preds = %_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i
  %i.dk = getelementptr inbounds i8, ptr %i.bz, i64 -4
  store i32 %i.bt, ptr %i.dk, align 4, !tbaa !91
  %.not1319.i.i.i = icmp eq i32 %.0.i17.i.i.i.ph, %i.bt
  br i1 %.not1319.i.i.i, label %_ZN6vectorIcLb0EjE7reserveEjRKc.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.n
  %i.dl = zext i32 %i.bt to i64
  %i.dm = zext i32 %.0.i17.i.i.i.ph to i64        ; 2 uses
  %i.dn = getelementptr i8, ptr %i.bz, i64 %i.dm
  %i.do = sub nsw i64 %i.dl, %i.dm
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dn, i8 0, i64 %i.do, i1 false), !tbaa !295
  %.pre.i78 = load ptr, ptr %i.l, align 8, !tbaa !294
  br label %_ZN6vectorIcLb0EjE7reserveEjRKc.exit.i

_ZN6vectorIcLb0EjE7reserveEjRKc.exit.i:           ; preds = %.lr.ph.preheader.i.i.i, %bb.n, %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i
  %i.dp = phi ptr [ %.pre.i78, %.lr.ph.preheader.i.i.i ], [ %i.bu, %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i ], [ %i.bz, %bb.n ]
  %i.dq = zext i32 %i.bs to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dq ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !295
  %.not.i77 = icmp eq i8 %i.ds, 0
  br i1 %.not.i77, label %bb.o, label %_ZN16tracked_uint_set6insertEj.exit

bb.o:                                             ; preds = %_ZN6vectorIcLb0EjE7reserveEjRKc.exit.i
  store i8 1, ptr %i.dr, align 1, !tbaa !295
  %i.dt = load ptr, ptr %i.m, align 8, !tbaa !98  ; 4 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dv = getelementptr inbounds i8, ptr %i.dt, i64 -4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !91 ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !91
  %i.dz = icmp eq i32 %i.dw, %i.dy
  br i1 %i.dz, label %bb.q, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

bb.q:                                             ; preds = %bb.p, %bb.o
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %.noexc80 unwind label %.loopexit.split-lp

.noexc80:                                         ; preds = %bb.q
  %.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !98 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !91
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i:          ; preds = %.noexc80, %bb.p
  %i.ea = phi i32 [ %.pre2.i.i, %.noexc80 ], [ %i.dw, %bb.p ] ; 2 uses
  %i.eb = phi ptr [ %.pre.i.i, %.noexc80 ], [ %i.dt, %bb.p ] ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -4
  %i.ed = zext i32 %i.ea to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ed
  store i32 %i.bs, ptr %i.ee, align 4, !tbaa !91
  %i.ef = add i32 %i.ea, 1
  store i32 %i.ef, ptr %i.ec, align 4, !tbaa !91
  br label %_ZN16tracked_uint_set6insertEj.exit

_ZN16tracked_uint_set6insertEj.exit:              ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i, %_ZN6vectorIcLb0EjE7reserveEjRKc.exit.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.056262, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.eg, %i.bh
  br i1 %.not, label %._crit_edge, label %.lr.ph

.loopexit414:                                     ; preds = %bb.f, %bb.l
  %lpad.loopexit415 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp416 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %._crit_edge
  store i32 %i.bm, ptr %i.bl, align 8, !tbaa !99
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !395 ; 2 uses
  %.not.i81 = icmp eq ptr %i.ei, null
  br i1 %.not.i81, label %_ZN6vectorI5lboolLb0EjE5resetEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -4
  store i32 0, ptr %i.ej, align 4, !tbaa !91
  br label %_ZN6vectorI5lboolLb0EjE5resetEv.exit

_ZN6vectorI5lboolLb0EjE5resetEv.exit:             ; preds = %bb.r, %bb.s
  store i8 0, ptr %i.i, align 8, !tbaa !412
  br label %bb.t

bb.t:                                             ; preds = %_ZN6vectorI5lboolLb0EjE5resetEv.exit, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 892 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !97
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 7 uses
  %i.en = load i32, ptr %i.em, align 8, !tbaa !99 ; 2 uses
  store i32 %i.el, ptr %i.em, align 8, !tbaa !99
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 988
  store i32 0, ptr %i.eo, align 4, !tbaa !249
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 5 uses
  store i32 0, ptr %i.ep, align 8, !tbaa !417
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 1076 ; 3 uses
  store i32 0, ptr %i.eq, align 4, !tbaa !418
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i32 0, ptr %i.er, align 8, !tbaa !419
  br i1 %i.k, label %.preheader, label %.loopexit253

.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i.i
  %lpad.loopexit246 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp234

.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.z, %bb.y, %bb.u
  %lpad.loopexit250 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp234

.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.as, %bb.aq, %_ZNSolsEj.exit104, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102, %_ZNSolsEj.exit100, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit98, %bb.al, %_ZNSolsEj.exit92, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90, %_ZNSolsEj.exit, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit87, %bb.ai, %bb.ak, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94, %bb.ah, %bb.ag, %bb.ae, %bb.ac
  %lpad.loopexit.split-lp251 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp234

bb.u:                                             ; preds = %.preheader, %bb.aa
  invoke void @_ZN3sat9lookahead10checkpointEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
          to label %bb.v unwind label %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.v:                                             ; preds = %bb.u
  %i.es = load i32, ptr %i.sz, align 4, !tbaa !251
  %i.et = add i32 %i.es, 1                        ; 2 uses
  store i32 %i.et, ptr %i.sz, align 4, !tbaa !251
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.w, label %_ZN3sat9lookahead10inc_istampEv.exit

bb.w:                                             ; preds = %bb.v
  store i32 1, ptr %i.sz, align 4, !tbaa !251
  %i.ev = load ptr, ptr %i.ta, align 8, !tbaa !252 ; 11 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %_ZN3sat9lookahead10inc_istampEv.exit, label %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.lr.ph.i

_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.lr.ph.i: ; preds = %bb.w
  %i.ex = getelementptr inbounds i8, ptr %i.ev, i64 -4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !91 ; 3 uses
  %.not.i82 = icmp eq i32 %i.ey, 0
  br i1 %.not.i82, label %_ZN3sat9lookahead10inc_istampEv.exit, label %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.preheader.i

_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.preheader.i: ; preds = %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.lr.ph.i
  %i.ez = zext i32 %i.ey to i64                   ; 2 uses
  %xtraiter421 = and i64 %i.ez, 7                 ; 3 uses
  %i.fa = icmp ult i32 %i.ey, 8
  br i1 %i.fa, label %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.i.epil.preheader, label %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.preheader.i.new

_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.preheader.i.new: ; preds = %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.preheader.i
  %unroll_iter425 = and i64 %i.ez, 4294967288
  br label %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.i

_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.i: ; preds = %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.i, %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.preheader.i.new
  %indvars.iv.i83 = phi i64 [ 0, %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.preheader.i.new ], [ %indvars.iv.next.i84.7, %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.i ] ; 9 uses
  %niter426 = phi i64 [ 0, %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.preheader.i.new ], [ %niter426.next.7, %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.i ]
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %indvars.iv.i83
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store i32 0, ptr %i.fc, align 8, !tbaa !253
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %indvars.iv.i83
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  store i32 0, ptr %i.fe, align 8, !tbaa !253
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %indvars.iv.i83
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  store i32 0, ptr %i.fg, align 8, !tbaa !253
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %indvars.iv.i83
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  store i32 0, ptr %i.fi, align 8, !tbaa !253
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %indvars.iv.i83
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 72
  store i32 0, ptr %i.fk, align 8, !tbaa !253
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %indvars.iv.i83
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 88
  store i32 0, ptr %i.fm, align 8, !tbaa !253
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %indvars.iv.i83
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 104
  store i32 0, ptr %i.fo, align 8, !tbaa !253
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %indvars.iv.i83
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 120
  store i32 0, ptr %i.fq, align 8, !tbaa !253
  %indvars.iv.next.i84.7 = add nuw nsw i64 %indvars.iv.i83, 8 ; 2 uses
  %niter426.next.7 = add i64 %niter426, 8         ; 2 uses
  %niter426.ncmp.7 = icmp eq i64 %niter426.next.7, %unroll_iter425
  br i1 %niter426.ncmp.7, label %_ZN3sat9lookahead10inc_istampEv.exit.loopexit.unr-lcssa, label %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.i

_ZN3sat9lookahead10inc_istampEv.exit.loopexit.unr-lcssa: ; preds = %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.i
  %lcmp.mod423.not = icmp eq i64 %xtraiter421, 0
  br i1 %lcmp.mod423.not, label %_ZN3sat9lookahead10inc_istampEv.exit, label %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.i.epil.preheader

_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.i.epil.preheader: ; preds = %_ZN3sat9lookahead10inc_istampEv.exit.loopexit.unr-lcssa, %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.preheader.i
  %indvars.iv.i83.epil.init = phi i64 [ 0, %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.preheader.i ], [ %indvars.iv.next.i84.7, %_ZN3sat9lookahead10inc_istampEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod424 = icmp ne i64 %xtraiter421, 0
  tail call void @llvm.assume(i1 %lcmp.mod424)
  br label %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.i.epil

_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.i.epil: ; preds = %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.i.epil, %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.i.epil.preheader
  %indvars.iv.i83.epil = phi i64 [ %indvars.iv.i83.epil.init, %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.i.epil.preheader ], [ %indvars.iv.next.i84.epil, %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.i.epil ] ; 2 uses
  %epil.iter422 = phi i64 [ 0, %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.i.epil.preheader ], [ %epil.iter422.next, %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.i.epil ]
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %indvars.iv.i83.epil
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store i32 0, ptr %i.fs, align 8, !tbaa !253
  %indvars.iv.next.i84.epil = add nuw nsw i64 %indvars.iv.i83.epil, 1
  %epil.iter422.next = add i64 %epil.iter422, 1   ; 2 uses
  %epil.iter422.cmp.not = icmp eq i64 %epil.iter422.next, %xtraiter421
  br i1 %epil.iter422.cmp.not, label %_ZN3sat9lookahead10inc_istampEv.exit, label %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.i.epil, !llvm.loop !420

_ZN3sat9lookahead10inc_istampEv.exit:             ; preds = %_ZN3sat9lookahead10inc_istampEv.exit.loopexit.unr-lcssa, %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.i.epil, %_ZNK6vectorIN3sat9lookahead8lit_infoELb0EjE4sizeEv.exit.lr.ph.i, %bb.w, %bb.v
  %i.ft = load i8, ptr %i.tb, align 8, !tbaa !102, !range !248, !noundef !81
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %bb.x, label %.loopexit253

bb.x:                                             ; preds = %_ZN3sat9lookahead10inc_istampEv.exit
  %i.fv = load i32, ptr %i.tc, align 8, !tbaa !263
  %i.fw = uitofp i32 %i.fv to double
  store double %i.fw, ptr %i.td, align 8, !tbaa !409
  %i.fx = load i32, ptr %i.te, align 4, !tbaa !406
  %i.fy = icmp eq i32 %i.fx, 4
  br i1 %i.fy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fz = invoke noundef double @_ZN3sat9lookahead9psat_heurEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
          to label %bb.z unwind label %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.ga = phi double [ %i.fz, %bb.y ], [ 1.000000e+08, %bb.x ]
  store double %i.ga, ptr %i.tf, align 8, !tbaa !410
  %i.gb = load i32, ptr %i.ep, align 8, !tbaa !417
  %i.gc = add i32 %i.gb, 1
  store i32 %i.gc, ptr %i.ep, align 8, !tbaa !417
  %i.gd = invoke noundef zeroext i1 @_ZN3sat9lookahead9backtrackER7svectorINS_7literalEjERS1_IbjE(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.tg, ptr noundef nonnull align 8 dereferenceable(8) %i.th)
          to label %bb.aa unwind label %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.aa:                                            ; preds = %bb.z
  br i1 %i.gd, label %bb.u, label %.thread, !llvm.loop !421

.loopexit253:                                     ; preds = %_ZN3sat9lookahead10inc_istampEv.exit, %bb.t
  %.143 = phi i32 [ %3, %bb.t ], [ %.042.ph, %_ZN3sat9lookahead10inc_istampEv.exit ] ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 12 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !90 ; 3 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, label %bb.ab

bb.ab:                                            ; preds = %.loopexit253
  %i.gh = getelementptr inbounds i8, ptr %i.gf, i64 -4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !91
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %.loopexit253, %bb.ab
  %.0.i = phi i32 [ %i.gi, %bb.ab ], [ 0, %.loopexit253 ]
  %.not59 = icmp ult i32 %.0.i, %.143
  br i1 %.not59, label %.loopexit249, label %bb.ac

bb.ac:                                            ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %i.gj = invoke noundef i32 @_Z19get_verbosity_levelv()
          to label %bb.ad unwind label %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  %i.gk = icmp ugt i32 %i.gj, 9
  br i1 %i.gk, label %bb.ae, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106

bb.ae:                                            ; preds = %bb.ad
  %i.gl = invoke noundef zeroext i1 @_Z11is_threadedv()
          to label %bb.af unwind label %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  br i1 %i.gl, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  invoke void @_Z12verbose_lockv()
          to label %bb.ah unwind label %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  %i.gm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.ai unwind label %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %i.gn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gm, ptr noundef nonnull @.str.41, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ai
  %i.go = load ptr, ptr %i.ge, align 8, !tbaa !90 ; 2 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit87, label %bb.aj

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.gq = getelementptr inbounds i8, ptr %i.go, i64 -4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !91
  %i.gs = zext i32 %i.gr to i64
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit87

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit87:   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.aj
  %.0.i86 = phi i64 [ %i.gs, %bb.aj ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %i.gt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gm, i64 noundef %.0.i86)
          to label %_ZNSolsEj.exit unwind label %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEj.exit:                                   ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit87
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef nonnull @.str.42, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90 unwind label %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90: ; preds = %_ZNSolsEj.exit
  %i.gv = zext i32 %.143 to i64
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, i64 noundef %i.gv)
          to label %_ZNSolsEj.exit92 unwind label %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSolsEj.exit92:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90
  %i.gx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94 unwind label %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94: ; preds = %_ZNSolsEj.exit92
  invoke void @_Z14verbose_unlockv()
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106 unwind label %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.af
  %i.gy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.al unwind label %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.al:                                            ; preds = %bb.ak
  %i.gz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, ptr noundef nonnull @.str.41, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96 unwind label %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96: ; preds = %bb.al
  %i.ha = load ptr, ptr %i.ge, align 8, !tbaa !90 ; 2 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit98, label %bb.am

bb.am:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96
  %i.hc = getelementptr inbounds i8, ptr %i.ha, i64 -4
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !91
  %i.he = zext i32 %i.hd to i64
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit98

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit98:   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96, %bb.am
  %.0.i97 = phi i64 [ %i.he, %bb.am ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96 ]
  %i.hf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, i64 noundef %.0.i97)
          to label %_ZNSolsEj.exit100 unwind label %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEj.exit100:                                ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit98
  %i.hg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hf, ptr noundef nonnull @.str.42, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102 unwind label %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102: ; preds = %_ZNSolsEj.exit100
  %i.hh = zext i32 %.143 to i64
  %i.hi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hf, i64 noundef %i.hh)
          to label %_ZNSolsEj.exit104 unwind label %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSolsEj.exit104:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102
  %i.hj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106 unwind label %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106: ; preds = %_ZNSolsEj.exit104, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94, %bb.ad
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 1040
  br label %.noexc113.a

.noexc113.a:                                      ; preds = %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106
  %i.hm = load ptr, ptr %i.ge, align 8, !tbaa !90 ; 3 uses
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit8.i, label %.split.i

.split.i:                                         ; preds = %.noexc113.a
  %i.ho = getelementptr inbounds i8, ptr %i.hm, i64 -4
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !91
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit8.i

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit8.i:  ; preds = %.noexc113.a, %.split.i
  %.0.i107 = phi i32 [ %i.hp, %.split.i ], [ 0, %.noexc113.a ]
  %i.hq = icmp ult i32 %.0.i107, %.143
  br i1 %i.hq, label %.loopexit249, label %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i.i

_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i.i:   ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit8.i
  store i8 1, ptr %i.hk, align 8, !tbaa !102
  %7 = invoke noundef zeroext i1 @_ZN3sat9lookahead9backtrackER7svectorINS_7literalEjERS1_IbjE(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ge, ptr noundef nonnull align 8 dereferenceable(8) %i.hl)
          to label %.noexc113.a unwind label %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit, !llvm.loop !422 ; 0 uses

.loopexit249:                                     ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit8.i, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %i.hr = phi ptr [ %i.gf, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ], [ %i.hm, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit8.i ] ; 2 uses
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %_ZN3sat9lookahead13should_cutoffEj.exit.thread216, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit116

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit116:  ; preds = %.loopexit249
  %i.ht = getelementptr inbounds i8, ptr %i.hr, i64 -4
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !91 ; 3 uses
  %.not.i117 = icmp eq i32 %i.hu, 0
  br i1 %.not.i117, label %_ZN3sat9lookahead13should_cutoffEj.exit.thread216, label %bb.an

bb.an:                                            ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit116
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !406 ; 3 uses
  %i.hx = icmp eq i32 %i.hw, 0
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hz = load i32, ptr %i.hy, align 8
  %i.ia = icmp eq i32 %i.hu, %i.hz
  %or.cond.i = select i1 %i.hx, i1 %i.ia, i1 false
  br i1 %or.cond.i, label %_ZN3sat9lookahead13should_cutoffEj.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  switch i32 %i.hw, label %.thread.i [
    i32 1, label %bb.ap
    i32 2, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !263
  %i.id = uitofp i32 %i.ic to double
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !352
  %i.ig = uitofp i32 %i.if to double
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !407
  %i.ij = fmul double %i.ii, %i.ig
  %i.ik = fcmp ult double %i.ij, %i.id
  br i1 %i.ik, label %_ZN3sat9lookahead13should_cutoffEj.exit.thread216, label %_ZN3sat9lookahead13should_cutoffEj.exit.thread

bb.aq:                                            ; preds = %bb.ao
  %i.il = invoke noundef double @_ZN3sat9lookahead9psat_heurEv(ptr noundef nonnull readonly align 8 dereferenceable(1160) %0)
          to label %.noexc119 unwind label %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc119:                                        ; preds = %bb.aq
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.in = load double, ptr %i.im, align 8, !tbaa !408
  %i.io = fcmp ult double %i.il, %i.in
  br i1 %i.io, label %..thread_crit_edge.i, label %_ZN3sat9lookahead13should_cutoffEj.exit.thread

..thread_crit_edge.i:                             ; preds = %.noexc119
  %.pre.i118 = load i32, ptr %i.hv, align 4, !tbaa !406
  br label %.thread.i

.thread.i:                                        ; preds = %..thread_crit_edge.i, %bb.ao
  %i.ip = phi i32 [ %.pre.i118, %..thread_crit_edge.i ], [ %i.hw, %bb.ao ]
  switch i32 %i.ip, label %_ZN3sat9lookahead13should_cutoffEj.exit.thread216 [
    i32 3, label %bb.ar
    i32 4, label %bb.as
  ]

bb.ar:                                            ; preds = %.thread.i
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !263
  %i.is = uitofp i32 %i.ir to double
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.iu = load double, ptr %i.it, align 8, !tbaa !409
  %i.iv = fcmp ogt double %i.iu, %i.is
  br i1 %i.iv, label %_ZN3sat9lookahead13should_cutoffEj.exit.thread, label %_ZN3sat9lookahead13should_cutoffEj.exit.thread216

bb.as:                                            ; preds = %.thread.i
  %i.iw = invoke noundef double @_ZN3sat9lookahead9psat_heurEv(ptr noundef nonnull readonly align 8 dereferenceable(1160) %0)
          to label %_ZN3sat9lookahead13should_cutoffEj.exit unwind label %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN3sat9lookahead13should_cutoffEj.exit:          ; preds = %bb.as
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !410
  %i.iz = fcmp ult double %i.iw, %i.iy
  br i1 %i.iz, label %_ZN3sat9lookahead13should_cutoffEj.exit.thread216, label %_ZN3sat9lookahead13should_cutoffEj.exit.thread

_ZN3sat9lookahead13should_cutoffEj.exit.thread:   ; preds = %bb.an, %bb.ap, %.noexc119, %bb.ar, %_ZN3sat9lookahead13should_cutoffEj.exit
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !423
  %i.jc = uitofp i32 %i.hu to double
  %8 = tail call double @pow(double noundef %i.jb, double noundef %i.jc) #28
  %i.jd = fsub double 1.000000e+00, %8            ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.jf = fsub double 2.000000e+00, %i.jd
  %i.jg = load <2 x double>, ptr %i.je, align 8, !tbaa !280
  %i.jh = insertelement <2 x double> poison, double %i.jd, i64 0
  %i.ji = insertelement <2 x double> %i.jh, double %i.jf, i64 1
  %i.jj = fmul <2 x double> %i.jg, %i.ji
  store <2 x double> %i.jj, ptr %i.je, align 8, !tbaa !280
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 832
  store i8 1, ptr %i.jk, align 8, !tbaa !102
  %i.jl = load i32, ptr %i.eq, align 4, !tbaa !418
  %i.jm = add i32 %i.jl, 1
  store i32 %i.jm, ptr %i.eq, align 4, !tbaa !418
  %i.jn = load ptr, ptr %i.ge, align 8, !tbaa !90 ; 2 uses
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %_ZN6vectorIN3sat7literalELb0EjE6appendERKS2_.exit, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i:   ; preds = %_ZN3sat9lookahead13should_cutoffEj.exit.thread, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i
  %i.jp = phi ptr [ %i.kc, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i ], [ %i.jn, %_ZN3sat9lookahead13should_cutoffEj.exit.thread ] ; 3 uses
  %indvars.iv.i121 = phi i64 [ %indvars.iv.next.i122, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i ], [ 0, %_ZN3sat9lookahead13should_cutoffEj.exit.thread ] ; 3 uses
  %i.jq = getelementptr inbounds i8, ptr %i.jp, i64 -4
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !91
  %i.js = zext i32 %i.jr to i64
  %i.jt = icmp samesign ult i64 %indvars.iv.i121, %i.js
  br i1 %i.jt, label %bb.at, label %_ZN6vectorIN3sat7literalELb0EjE6appendERKS2_.exit

bb.at:                                            ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv.i121
  %i.jv = load ptr, ptr %2, align 8, !tbaa !90    ; 4 uses
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jx = getelementptr inbounds i8, ptr %i.jv, i64 -4
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !91 ; 2 uses
  %i.jz = getelementptr inbounds i8, ptr %i.jv, i64 -8
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !91
  %i.kb = icmp eq i32 %i.jy, %i.ka
  br i1 %i.kb, label %bb.av, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i

bb.av:                                            ; preds = %bb.au, %bb.at
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc127.a unwind label %.loopexit228

.noexc127.a:                                      ; preds = %bb.av
  %.pre.i.i123 = load ptr, ptr %2, align 8, !tbaa !90 ; 2 uses
  %.phi.trans.insert.i.i124 = getelementptr inbounds i8, ptr %.pre.i.i123, i64 -4
  %.pre2.i.i125 = load i32, ptr %.phi.trans.insert.i.i124, align 4, !tbaa !91
  %.pre.i126 = load ptr, ptr %i.ge, align 8, !tbaa !90
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i: ; preds = %.noexc127.a, %bb.au
  %i.kc = phi ptr [ %.pre.i126, %.noexc127.a ], [ %i.jp, %bb.au ] ; 2 uses
  %i.kd = phi i32 [ %.pre2.i.i125, %.noexc127.a ], [ %i.jy, %bb.au ] ; 2 uses
  %i.ke = phi ptr [ %.pre.i.i123, %.noexc127.a ], [ %i.jv, %bb.au ] ; 2 uses
  %i.kf = getelementptr inbounds i8, ptr %i.ke, i64 -4
  %i.kg = zext i32 %i.kd to i64
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.kg
  %i.ki = load i32, ptr %i.ju, align 4, !tbaa !91
  store i32 %i.ki, ptr %i.kh, align 4, !tbaa !91
  %i.kj = add i32 %i.kd, 1
  store i32 %i.kj, ptr %i.kf, align 4, !tbaa !91
  %indvars.iv.next.i122 = add nuw nsw i64 %indvars.iv.i121, 1
  %i.kk = icmp eq ptr %i.kc, null
  br i1 %i.kk, label %_ZN6vectorIN3sat7literalELb0EjE6appendERKS2_.exit, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i, !llvm.loop !424

_ZN6vectorIN3sat7literalELb0EjE6appendERKS2_.exit: ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i, %_ZN3sat9lookahead13should_cutoffEj.exit.thread
  %i.kl = load ptr, ptr %1, align 8, !tbaa !98    ; 3 uses
  %.not.i128.a = icmp eq ptr %i.kl, null
  br i1 %.not.i128.a, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjE6appendERKS2_.exit
  %i.km = getelementptr inbounds i8, ptr %i.kl, i64 -4
  store i32 0, ptr %i.km, align 4, !tbaa !91
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZN6vectorIN3sat7literalELb0EjE6appendERKS2_.exit
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !98 ; 2 uses
  %i.kq = load i32, ptr %i.kn, align 8, !tbaa !263 ; 2 uses
  %i.kr = zext i32 %i.kq to i64
  %.idx = shl nuw nsw i64 %i.kr, 2
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 %.idx
  %.not66263 = icmp eq i32 %i.kq, 0
  br i1 %.not66263, label %._crit_edge267, label %.lr.ph266

._crit_edge267:                                   ; preds = %bb.bb, %bb.ax
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.ku = invoke noundef zeroext i1 @_ZN3sat9lookahead9backtrackER7svectorINS_7literalEjERS1_IbjE(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ge, ptr noundef nonnull align 8 dereferenceable(8) %i.kt)
          to label %.thread unwind label %.loopexit.split-lp229 ; 0 uses

.loopexit228:                                     ; preds = %bb.av
  %lpad.loopexit230 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp234

.loopexit.split-lp229:                            ; preds = %._crit_edge267
  %lpad.loopexit.split-lp231 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp234

.lr.ph266:                                        ; preds = %bb.ax, %bb.bb
  %i.kv = phi ptr [ %i.lm, %bb.bb ], [ %i.kl, %bb.ax ] ; 5 uses
  %.057264 = phi ptr [ %i.ln, %bb.bb ], [ %i.kp, %bb.ax ] ; 2 uses
  %i.kw = load i32, ptr %.057264, align 4, !tbaa !91 ; 2 uses
  %i.kx = shl i32 %i.kw, 1                        ; 2 uses
  %9 = tail call noundef zeroext i1 @_ZN3sat9lookahead17in_reduced_clauseENS_7literalE(ptr noundef nonnull readonly align 8 dereferenceable(1160) %0, i32 %i.kx)
  br i1 %9, label %_ZN3sat9lookahead17in_reduced_clauseEj.exit.thread, label %_ZN3sat9lookahead17in_reduced_clauseEj.exit

_ZN3sat9lookahead17in_reduced_clauseEj.exit:      ; preds = %.lr.ph266
  %i.ky = or disjoint i32 %i.kx, 1
  %10 = tail call noundef zeroext i1 @_ZN3sat9lookahead17in_reduced_clauseENS_7literalE(ptr noundef nonnull readonly align 8 dereferenceable(1160) %0, i32 %i.ky)
  br i1 %10, label %_ZN3sat9lookahead17in_reduced_clauseEj.exit.thread, label %bb.bb

_ZN3sat9lookahead17in_reduced_clauseEj.exit.thread: ; preds = %.lr.ph266, %_ZN3sat9lookahead17in_reduced_clauseEj.exit
  %i.kz = icmp eq ptr %i.kv, null
  br i1 %i.kz, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZN3sat9lookahead17in_reduced_clauseEj.exit.thread
  %i.la = getelementptr inbounds i8, ptr %i.kv, i64 -4
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !91 ; 2 uses
  %i.lc = getelementptr inbounds i8, ptr %i.kv, i64 -8
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !91
  %i.le = icmp eq i32 %i.lb, %i.ld
  br i1 %i.le, label %bb.az, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.az:                                            ; preds = %bb.ay, %_ZN3sat9lookahead17in_reduced_clauseEj.exit.thread
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc130 unwind label %bb.ba

.noexc130:                                        ; preds = %bb.az
  %.pre.i129 = load ptr, ptr %1, align 8, !tbaa !98 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i129, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !91
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.ay, %.noexc130
  %i.lf = phi ptr [ %.pre.i129, %.noexc130 ], [ %i.kv, %bb.ay ] ; 3 uses
  %i.lg = phi i32 [ %.pre2.i, %.noexc130 ], [ %i.lb, %bb.ay ] ; 2 uses
  %i.lh = getelementptr inbounds i8, ptr %i.lf, i64 -4
  %i.li = zext i32 %i.lg to i64
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %i.li
  store i32 %i.kw, ptr %i.lj, align 4, !tbaa !91
  %i.lk = add i32 %i.lg, 1
  store i32 %i.lk, ptr %i.lh, align 4, !tbaa !91
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp234

bb.bb:                                            ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit, %_ZN3sat9lookahead17in_reduced_clauseEj.exit
  %i.lm = phi ptr [ %i.lf, %_ZN6vectorIjLb0EjE9push_backERKj.exit ], [ %i.kv, %_ZN3sat9lookahead17in_reduced_clauseEj.exit ]
  %i.ln = getelementptr inbounds nuw i8, ptr %.057264, i64 4 ; 2 uses
  %.not66 = icmp eq ptr %i.ln, %i.ks
  br i1 %.not66, label %._crit_edge267, label %.lr.ph266

_ZN3sat9lookahead13should_cutoffEj.exit.thread216: ; preds = %bb.ap, %bb.ar, %.loopexit249, %.thread.i, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit116, %_ZN3sat9lookahead13should_cutoffEj.exit
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !263
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !406
  %i.ls = icmp eq i32 %i.lr, 4
  br i1 %i.ls, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZN3sat9lookahead13should_cutoffEj.exit.thread216
  %i.lt = invoke noundef double @_ZN3sat9lookahead9psat_heurEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
          to label %bb.bd unwind label %.loopexit.a

bb.bd:                                            ; preds = %_ZN3sat9lookahead13should_cutoffEj.exit.thread216, %bb.bc
  %i.lu = phi double [ %i.lt, %bb.bc ], [ 1.000000e+08, %_ZN3sat9lookahead13should_cutoffEj.exit.thread216 ]
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 1152
  br label %bb.be

bb.be:                                            ; preds = %.noexc133, %bb.bd
  %i.lx = load i8, ptr %i.lv, align 8, !tbaa !102, !range !248, !noundef !81
  %i.ly = trunc nuw i8 %i.lx to i1
  br i1 %i.ly, label %_ZN3sat9lookahead6chooseEv.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN3sat9lookahead10pre_selectEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
          to label %.noexc131 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc131:                                        ; preds = %bb.bf
  %i.lz = load ptr, ptr %i.lw, align 8, !tbaa !264 ; 2 uses
  %i.ma = icmp eq ptr %i.lz, null
  br i1 %i.ma, label %_ZN3sat9lookahead6chooseEv.exit, label %_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE5emptyEv.exit.i.i

_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE5emptyEv.exit.i.i: ; preds = %.noexc131
  %i.mb = getelementptr inbounds i8, ptr %i.lz, i64 -4
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !91
  %i.md = icmp eq i32 %i.mc, 0
  br i1 %i.md, label %_ZN3sat9lookahead6chooseEv.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE5emptyEv.exit.i.i
  invoke void @_ZN3sat9lookahead24compute_lookahead_rewardEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
          to label %.noexc132 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc132:                                        ; preds = %bb.bg
  %i.me = load i8, ptr %i.lv, align 8, !tbaa !102, !range !248, !noundef !81
  %i.mf = trunc nuw i8 %i.me to i1
  br i1 %i.mf, label %_ZN3sat9lookahead6chooseEv.exit, label %bb.bh

bb.bh:                                            ; preds = %.noexc132
  %11 = invoke i32 @_ZN3sat9lookahead14select_literalEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
          to label %.noexc133 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc133:                                        ; preds = %bb.bh
  %i.mg = icmp eq i32 %11, -2
  br i1 %i.mg, label %bb.be, label %_ZN3sat9lookahead6chooseEv.exit, !llvm.loop !397

_ZN3sat9lookahead6chooseEv.exit:                  ; preds = %.noexc133, %.noexc132, %_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE5emptyEv.exit.i.i, %.noexc131, %bb.be
  %storemerge.lcssa.i.i = phi i32 [ -2, %.noexc131 ], [ %11, %.noexc133 ], [ -2, %.noexc132 ], [ -2, %_ZNK6vectorIN3sat9lookahead14literal_offsetELb0EjE5emptyEv.exit.i.i ], [ -2, %bb.be ] ; 3 uses
  %i.mh = load i8, ptr %i.lv, align 8, !tbaa !102, !range !248, !noundef !81
  %i.mi = trunc nuw i8 %i.mh to i1
  br i1 %i.mi, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %_ZN3sat9lookahead6chooseEv.exit
  %i.mj = sitofp i32 %i.lp to double
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store double %i.mj, ptr %i.mk, align 8, !tbaa !409
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store double %i.lu, ptr %i.ml, align 8, !tbaa !410
  %i.mm = load i32, ptr %i.ep, align 8, !tbaa !417
  %i.mn = add i32 %i.mm, 1
  store i32 %i.mn, ptr %i.ep, align 8, !tbaa !417
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.mp = invoke noundef zeroext i1 @_ZN3sat9lookahead9backtrackER7svectorINS_7literalEjERS1_IbjE(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ge, ptr noundef nonnull align 8 dereferenceable(8) %i.mo)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.mp, label %.preheader, label %.thread, !llvm.loop !421

.loopexit.a:                                      ; preds = %bb.bc
  %lpad.loopexit.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp234

.loopexit.split-lp.loopexit.a:                    ; preds = %bb.bq
  %lpad.loopexit223 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp234

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.bh, %bb.bg, %bb.bf
  %lpad.loopexit226 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp234

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ch, %bb.ce, %bb.bi
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp234

bb.bk:                                            ; preds = %_ZN3sat9lookahead6chooseEv.exit
  %i.mq = icmp eq i32 %storemerge.lcssa.i.i, -2
  br i1 %i.mq, label %bb.bl, label %bb.ce

bb.bl:                                            ; preds = %bb.bk
  %i.mr = load ptr, ptr %1, align 8, !tbaa !98    ; 3 uses
  %.not.i134 = icmp eq ptr %i.mr, null
  br i1 %.not.i134, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ms = getelementptr inbounds i8, ptr %i.mr, i64 -4
  store i32 0, ptr %i.ms, align 4, !tbaa !91
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !98 ; 2 uses
  %i.mv = load i32, ptr %i.lo, align 8, !tbaa !263 ; 2 uses
  %i.mw = zext i32 %i.mv to i64
  %.idx273 = shl nuw nsw i64 %i.mw, 2
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 %.idx273
  %.not61268 = icmp eq i32 %i.mv, 0
  br i1 %.not61268, label %._crit_edge272, label %.lr.ph271

.lr.ph271:                                        ; preds = %bb.bn
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 776
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 248
  br label %bb.br

._crit_edge272:                                   ; preds = %bb.cd, %bb.bn
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 3 uses
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !395 ; 3 uses
  %.not.i136 = icmp eq ptr %i.ne, null
  br i1 %.not.i136, label %_ZN6vectorI5lboolLb0EjE5resetEv.exit.i, label %bb.bo

bb.bo:                                            ; preds = %._crit_edge272
  %i.nf = getelementptr inbounds i8, ptr %i.ne, i64 -4
  store i32 0, ptr %i.nf, align 4, !tbaa !91
  br label %_ZN6vectorI5lboolLb0EjE5resetEv.exit.i

_ZN6vectorI5lboolLb0EjE5resetEv.exit.i:           ; preds = %._crit_edge272, %bb.bo
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.nh = load i32, ptr %i.ng, align 8, !tbaa !304
  %.not.i139 = icmp eq i32 %i.nh, 0
  br i1 %.not.i139, label %_ZN3sat9lookahead10init_modelEv.exit, label %.lr.ph.i134

.lr.ph.i134:                                      ; preds = %_ZN6vectorI5lboolLb0EjE5resetEv.exit.i
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 880
  br label %.lr.ph.i140

.lr.ph.i140:                                      ; preds = %_ZN6vectorI5lboolLb0EjE9push_backERKS0_.exit.i, %.lr.ph.i134
  %i.ni = phi ptr [ %i.ne, %.lr.ph.i134 ], [ %i.nw, %_ZN6vectorI5lboolLb0EjE9push_backERKS0_.exit.i ] ; 4 uses
  %.07.i = phi i32 [ 0, %.lr.ph.i134 ], [ %i.oc, %_ZN6vectorI5lboolLb0EjE9push_backERKS0_.exit.i ] ; 2 uses
  %i.nj = load i32, ptr %i.em, align 8, !tbaa !99
  %i.nk = and i32 %.07.i, 2147483647
  %i.nl = load ptr, ptr %13, align 8, !tbaa !98
  %i.nm = zext nneg i32 %i.nk to i64
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %i.nm
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !91 ; 2 uses
  %.not.i4.i = icmp ult i32 %i.no, %i.nj
  %i.np = trunc i32 %i.no to i1
  %spec.select.i = select i1 %i.np, i32 -1, i32 1
  %.06.i = select i1 %.not.i4.i, i32 0, i32 %spec.select.i
  %i.nq = icmp eq ptr %i.ni, null
  br i1 %i.nq, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph.i140
  %i.nr = getelementptr inbounds i8, ptr %i.ni, i64 -4
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !91 ; 2 uses
  %i.nt = getelementptr inbounds i8, ptr %i.ni, i64 -8
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !91
  %i.nv = icmp eq i32 %i.ns, %i.nu
  br i1 %i.nv, label %bb.bq, label %_ZN6vectorI5lboolLb0EjE9push_backERKS0_.exit.i

bb.bq:                                            ; preds = %bb.bp, %.lr.ph.i140
  invoke void @_ZN6vectorI5lboolLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nd)
          to label %.noexc145 unwind label %.loopexit.split-lp.loopexit.a

.noexc145:                                        ; preds = %bb.bq
  %.pre.i.i142 = load ptr, ptr %i.nd, align 8, !tbaa !395 ; 2 uses
  %.phi.trans.insert.i.i143 = getelementptr inbounds i8, ptr %.pre.i.i142, i64 -4
  %.pre2.i.i144 = load i32, ptr %.phi.trans.insert.i.i143, align 4, !tbaa !91
  br label %_ZN6vectorI5lboolLb0EjE9push_backERKS0_.exit.i

_ZN6vectorI5lboolLb0EjE9push_backERKS0_.exit.i:   ; preds = %.noexc145, %bb.bp
  %i.nw = phi ptr [ %.pre.i.i142, %.noexc145 ], [ %i.ni, %bb.bp ] ; 3 uses
  %i.nx = phi i32 [ %.pre2.i.i144, %.noexc145 ], [ %i.ns, %bb.bp ] ; 2 uses
  %i.ny = getelementptr inbounds i8, ptr %i.nw, i64 -4
  %i.nz = zext i32 %i.nx to i64
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %i.nz
  store i32 %.06.i, ptr %i.oa, align 4, !tbaa !425
  %i.ob = add i32 %i.nx, 1
  store i32 %i.ob, ptr %i.ny, align 4, !tbaa !91
  %i.oc = add nuw i32 %.07.i, 1                   ; 2 uses
  %i.od = load i32, ptr %i.ng, align 8, !tbaa !304
  %i.oe = icmp ult i32 %i.oc, %i.od
  br i1 %i.oe, label %.lr.ph.i140, label %_ZN3sat9lookahead10init_modelEv.exit, !llvm.loop !427

bb.br:                                            ; preds = %.lr.ph271, %bb.cd
  %i.of = phi ptr [ %i.mr, %.lr.ph271 ], [ %i.rp, %bb.cd ] ; 5 uses
  %.044269 = phi ptr [ %i.mu, %.lr.ph271 ], [ %i.rq, %bb.cd ] ; 2 uses
  %i.og = load i32, ptr %.044269, align 4, !tbaa !91 ; 2 uses
  %i.oh = shl i32 %i.og, 1                        ; 3 uses
  %i.oi = icmp eq i32 %i.oh, -2
  br i1 %i.oi, label %_ZN3sat9lookahead17in_reduced_clauseEj.exit146.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.oj = load ptr, ptr %i.my, align 8, !tbaa !98 ; 2 uses
  %i.ok = icmp eq ptr %i.oj, null
  br i1 %i.ok, label %_ZN3sat9lookahead17in_reduced_clauseEj.exit146.thread, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.i:               ; preds = %bb.bs
  %i.ol = getelementptr inbounds i8, ptr %i.oj, i64 -4
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !91
  %i.on = icmp eq i32 %i.om, 0
  br i1 %i.on, label %_ZN3sat9lookahead17in_reduced_clauseEj.exit146.thread, label %bb.bt

bb.bt:                                            ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i
  %i.oo = load ptr, ptr %i.mz, align 8, !tbaa !98
  %i.op = zext i32 %i.oh to i64                   ; 4 uses
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.op
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !91
  %i.os = load ptr, ptr %i.na, align 8, !tbaa !112
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %i.op
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !113 ; 4 uses
  %i.ov = icmp eq ptr %i.ou, null
  br i1 %i.ov, label %.thread56.i, label %_ZN6vectorIPN3sat9lookahead4naryELb0EjE3endEv.exit.i

_ZN6vectorIPN3sat9lookahead4naryELb0EjE3endEv.exit.i: ; preds = %bb.bt
  %i.ow = getelementptr inbounds i8, ptr %i.ou, i64 -4
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !91 ; 2 uses
  %i.oy = zext i32 %i.ox to i64
  %i.oz = shl nuw nsw i64 %i.oy, 3
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.oz
  %.not74.i = icmp eq i32 %i.ox, 0
  br i1 %.not74.i, label %.thread56.i, label %.lr.ph77.i

.lr.ph77.i:                                       ; preds = %_ZN6vectorIPN3sat9lookahead4naryELb0EjE3endEv.exit.i
  %i.pb = load i32, ptr %i.em, align 8
  %i.pc = load ptr, ptr %12, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %select.unfold.i, %.lr.ph77.i
  %.03676.i = phi i32 [ %i.or, %.lr.ph77.i ], [ %i.pe, %select.unfold.i ] ; 2 uses
  %.03775.i = phi ptr [ %i.ou, %.lr.ph77.i ], [ %i.px, %select.unfold.i ] ; 2 uses
  %i.pd = load ptr, ptr %.03775.i, align 8, !tbaa !114 ; 3 uses
  %i.pe = add i32 %.03676.i, -1
  %i.pf = icmp eq i32 %.03676.i, 0
  br i1 %i.pf, label %.thread56.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.pg = load i32, ptr %i.pd, align 8, !tbaa !116
  %i.ph = zext i32 %i.pg to i64
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !119
  %i.pk = add i64 %i.pj, -24                      ; 2 uses
  %i.pl = lshr i64 %i.pk, 2
  %i.pm = icmp samesign ugt i64 %i.pl, %i.ph
  br i1 %i.pm, label %bb.bw, label %select.unfold.i

bb.bw:                                            ; preds = %bb.bv
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pd, i64 20 ; 2 uses
  %.idx.i = and i64 %i.pk, -4                     ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 %.idx.i
  %.not48.not71.i = icmp samesign eq i64 %.idx.i, 0
  br i1 %.not48.not71.i, label %_ZN3sat9lookahead17in_reduced_clauseEj.exit146.thread, label %.lr.ph.i192

bb.bx:                                            ; preds = %.lr.ph.i192
  %i.pp = getelementptr inbounds nuw i8, ptr %.04772.i, i64 4 ; 2 uses
  %.not48.not.i = icmp eq ptr %i.pp, %i.po
  br i1 %.not48.not.i, label %_ZN3sat9lookahead17in_reduced_clauseEj.exit146.thread, label %.lr.ph.i192

.lr.ph.i192:                                      ; preds = %bb.bw, %bb.bx
  %.04772.i = phi ptr [ %i.pp, %bb.bx ], [ %i.pn, %bb.bw ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.04772.i, align 4, !tbaa !91 ; 2 uses
  %i.pq = lshr i32 %.sroa.011.0.copyload.i, 1
  %i.pr = zext nneg i32 %i.pq to i64
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %i.pr
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !91 ; 2 uses
  %i.pu = icmp ult i32 %i.pt, %i.pb
  %i.pv = xor i32 %i.pt, %.sroa.011.0.copyload.i
  %i.pw = trunc i32 %i.pv to i1
  %.not63.i = or i1 %i.pu, %i.pw
  br i1 %.not63.i, label %bb.bx, label %select.unfold.i

select.unfold.i:                                  ; preds = %.lr.ph.i192, %bb.bv
  %i.px = getelementptr inbounds nuw i8, ptr %.03775.i, i64 8 ; 2 uses
  %.not.i185 = icmp eq ptr %i.px, %i.pa
  br i1 %.not.i185, label %.thread56.i, label %bb.bu

.thread56.i:                                      ; preds = %select.unfold.i, %bb.bu, %_ZN6vectorIPN3sat9lookahead4naryELb0EjE3endEv.exit.i, %bb.bt
  %i.py = load ptr, ptr %i.nb, align 8, !tbaa !107
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.py, i64 %i.op
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !108 ; 3 uses
  %i.qb = icmp eq ptr %i.qa, null
  br i1 %i.qb, label %_ZN3sat9lookahead17in_reduced_clauseEj.exit146, label %_ZNK6vectorIN3sat9lookahead6binaryELb0EjE4sizeEv.exit.i

_ZNK6vectorIN3sat9lookahead6binaryELb0EjE4sizeEv.exit.i: ; preds = %.thread56.i
  %i.qc = getelementptr inbounds i8, ptr %i.qa, i64 -4
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !91 ; 2 uses
  %i.qe = load ptr, ptr %i.nc, align 8, !tbaa !98
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %i.op
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !91 ; 2 uses
  %i.qh = icmp ult i32 %i.qg, %i.qd
  br i1 %i.qh, label %.lr.ph80.i, label %_ZN3sat9lookahead17in_reduced_clauseEj.exit146

.lr.ph80.i:                                       ; preds = %_ZNK6vectorIN3sat9lookahead6binaryELb0EjE4sizeEv.exit.i
  %i.qi = load i32, ptr %i.em, align 8, !tbaa !99 ; 2 uses
  %i.qj = load ptr, ptr %12, align 8, !tbaa !98   ; 2 uses
  %i.qk = zext i32 %i.qg to i64
  br label %bb.by

bb.by:                                            ; preds = %.critedge.i188, %.lr.ph80.i
  %indvars.iv.i186 = phi i64 [ %i.qk, %.lr.ph80.i ], [ %indvars.iv.next.i189, %.critedge.i188 ] ; 2 uses
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.qa, i64 %indvars.iv.i186 ; 2 uses
  %.sroa.04.0.copyload.i187 = load i32, ptr %i.ql, align 4, !tbaa !91 ; 2 uses
  %i.qm = lshr i32 %.sroa.04.0.copyload.i187, 1
  %i.qn = zext nneg i32 %i.qm to i64
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %i.qn
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !91 ; 2 uses
  %i.qq = icmp ult i32 %i.qp, %i.qi
  %i.qr = xor i32 %i.qp, %.sroa.04.0.copyload.i187
  %i.qs = trunc i32 %i.qr to i1
  %.not65.i = or i1 %i.qq, %i.qs
  br i1 %.not65.i, label %bb.bz, label %.critedge.i188

bb.bz:                                            ; preds = %bb.by
  %i.qt = getelementptr inbounds nuw i8, ptr %i.ql, i64 4
  %.sroa.0.0.copyload.i191 = load i32, ptr %i.qt, align 4, !tbaa !91 ; 2 uses
  %i.qu = lshr i32 %.sroa.0.0.copyload.i191, 1
  %i.qv = zext nneg i32 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %i.qv
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !91 ; 2 uses
  %i.qy = icmp ult i32 %i.qx, %i.qi
  %i.qz = xor i32 %i.qx, %.sroa.0.0.copyload.i191
  %i.ra = trunc i32 %i.qz to i1
  %.not67.i = or i1 %i.qy, %i.ra
  br i1 %.not67.i, label %_ZN3sat9lookahead17in_reduced_clauseEj.exit146.thread, label %.critedge.i188

.critedge.i188:                                   ; preds = %bb.bz, %bb.by
  %indvars.iv.next.i189 = add nuw nsw i64 %indvars.iv.i186, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i189 to i32
  %exitcond.not.i190 = icmp eq i32 %i.qd, %lftr.wideiv.i
  br i1 %exitcond.not.i190, label %_ZN3sat9lookahead17in_reduced_clauseEj.exit146, label %bb.by, !llvm.loop !393

_ZN3sat9lookahead17in_reduced_clauseEj.exit146:   ; preds = %.critedge.i188, %.thread56.i, %_ZNK6vectorIN3sat9lookahead6binaryELb0EjE4sizeEv.exit.i
  %i.rb = or disjoint i32 %i.oh, 1
  %14 = tail call noundef zeroext i1 @_ZN3sat9lookahead17in_reduced_clauseENS_7literalE(ptr noundef nonnull readonly align 8 dereferenceable(1160) %0, i32 %i.rb)
  br i1 %14, label %_ZN3sat9lookahead17in_reduced_clauseEj.exit146.thread, label %bb.cd

_ZN3sat9lookahead17in_reduced_clauseEj.exit146.thread: ; preds = %bb.bw, %bb.bz, %bb.bx, %_ZNK6vectorIjLb0EjE5emptyEv.exit.i, %bb.br, %bb.bs, %_ZN3sat9lookahead17in_reduced_clauseEj.exit146
  %i.rc = icmp eq ptr %i.of, null
  br i1 %i.rc, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %_ZN3sat9lookahead17in_reduced_clauseEj.exit146.thread
  %i.rd = getelementptr inbounds i8, ptr %i.of, i64 -4
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !91 ; 2 uses
  %i.rf = getelementptr inbounds i8, ptr %i.of, i64 -8
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !91
  %i.rh = icmp eq i32 %i.re, %i.rg
  br i1 %i.rh, label %bb.cb, label %_ZN6vectorIjLb0EjE9push_backERKj.exit151

bb.cb:                                            ; preds = %bb.ca, %_ZN3sat9lookahead17in_reduced_clauseEj.exit146.thread
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc150 unwind label %bb.cc

.noexc150:                                        ; preds = %bb.cb
  %.pre.i147 = load ptr, ptr %1, align 8, !tbaa !98 ; 2 uses
  %.phi.trans.insert.i148 = getelementptr inbounds i8, ptr %.pre.i147, i64 -4
  %.pre2.i149 = load i32, ptr %.phi.trans.insert.i148, align 4, !tbaa !91
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit151

_ZN6vectorIjLb0EjE9push_backERKj.exit151:         ; preds = %bb.ca, %.noexc150
  %i.ri = phi ptr [ %.pre.i147, %.noexc150 ], [ %i.of, %bb.ca ] ; 3 uses
  %i.rj = phi i32 [ %.pre2.i149, %.noexc150 ], [ %i.re, %bb.ca ] ; 2 uses
  %i.rk = getelementptr inbounds i8, ptr %i.ri, i64 -4
  %i.rl = zext i32 %i.rj to i64
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %i.rl
  store i32 %i.og, ptr %i.rm, align 4, !tbaa !91
  %i.rn = add i32 %i.rj, 1
  store i32 %i.rn, ptr %i.rk, align 4, !tbaa !91
  br label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp234

bb.cd:                                            ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit151, %_ZN3sat9lookahead17in_reduced_clauseEj.exit146
  %i.rp = phi ptr [ %i.ri, %_ZN6vectorIjLb0EjE9push_backERKj.exit151 ], [ %i.of, %_ZN3sat9lookahead17in_reduced_clauseEj.exit146 ]
  %i.rq = getelementptr inbounds nuw i8, ptr %.044269, i64 4 ; 2 uses
  %.not61 = icmp eq ptr %i.rq, %i.mx
  br i1 %.not61, label %._crit_edge272, label %bb.br

_ZN3sat9lookahead10init_modelEv.exit:             ; preds = %_ZN6vectorI5lboolLb0EjE9push_backERKS0_.exit.i, %_ZN6vectorI5lboolLb0EjE5resetEv.exit.i
  %i.rr = load i32, ptr %i.lo, align 8, !tbaa !263
  %i.rs = icmp eq i32 %i.rr, 0
  %i.rt = zext i1 %i.rs to i32
  br label %.thread

bb.ce:                                            ; preds = %bb.bk
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.rv = load i32, ptr %i.ru, align 8, !tbaa !399
  %i.rw = add i32 %i.rv, 1
  store i32 %i.rw, ptr %i.ru, align 8, !tbaa !399
  %i.rx = load i32, ptr %i.ek, align 4, !tbaa !97
  invoke void @_ZN3sat9lookahead4pushENS_7literalEj(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 %storemerge.lcssa.i.i, i32 noundef %i.rx)
          to label %bb.cf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cf:                                            ; preds = %bb.ce
  %i.ry = load ptr, ptr %i.ge, align 8, !tbaa !90 ; 4 uses
  %i.rz = icmp eq ptr %i.ry, null
  br i1 %i.rz, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.sa = getelementptr inbounds i8, ptr %i.ry, i64 -4
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !91 ; 2 uses
  %i.sc = getelementptr inbounds i8, ptr %i.ry, i64 -8
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !91
  %i.se = icmp eq i32 %i.sb, %i.sd
  br i1 %i.se, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ge)
          to label %.noexc155 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc155:                                        ; preds = %bb.ch
  %.pre.i152 = load ptr, ptr %i.ge, align 8, !tbaa !90 ; 2 uses
  %.phi.trans.insert.i153 = getelementptr inbounds i8, ptr %.pre.i152, i64 -4
  %.pre2.i154 = load i32, ptr %.phi.trans.insert.i153, align 4, !tbaa !91
  br label %bb.ci

bb.ci:                                            ; preds = %.noexc155, %bb.cg
  %i.sf = phi i32 [ %.pre2.i154, %.noexc155 ], [ %i.sb, %bb.cg ] ; 2 uses
  %i.sg = phi ptr [ %.pre.i152, %.noexc155 ], [ %i.ry, %bb.cg ] ; 2 uses
  %i.sh = getelementptr inbounds i8, ptr %i.sg, i64 -4
  %i.si = zext i32 %i.sf to i64
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %i.si
  store i32 %storemerge.lcssa.i.i, ptr %i.sj, align 4, !tbaa !91
  %i.sk = add i32 %i.sf, 1
  store i32 %i.sk, ptr %i.sh, align 4, !tbaa !91
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 3 uses
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !338 ; 4 uses
  %i.sn = icmp eq ptr %i.sm, null
  br i1 %i.sn, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.so = getelementptr inbounds i8, ptr %i.sm, i64 -4
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !91 ; 2 uses
  %i.sq = getelementptr inbounds i8, ptr %i.sm, i64 -8
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !91
  %i.ss = icmp eq i32 %i.sp, %i.sr
  br i1 %i.ss, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  invoke void @_ZN6vectorIbLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.sl)
          to label %.noexc159 unwind label %bb.cm

.noexc159:                                        ; preds = %bb.ck
  %.pre.i156 = load ptr, ptr %i.sl, align 8, !tbaa !338 ; 2 uses
  %.phi.trans.insert.i157 = getelementptr inbounds i8, ptr %.pre.i156, i64 -4
  %.pre2.i158 = load i32, ptr %.phi.trans.insert.i157, align 4, !tbaa !91
  br label %bb.cl

bb.cl:                                            ; preds = %.noexc159, %bb.cj
  %i.st = phi i32 [ %.pre2.i158, %.noexc159 ], [ %i.sp, %bb.cj ] ; 2 uses
  %i.su = phi ptr [ %.pre.i156, %.noexc159 ], [ %i.sm, %bb.cj ] ; 2 uses
  %i.sv = getelementptr inbounds i8, ptr %i.su, i64 -4
  %i.sw = zext i32 %i.st to i64
  %i.sx = getelementptr inbounds nuw i8, ptr %i.su, i64 %i.sw
  store i8 1, ptr %i.sx, align 1, !tbaa !339
  %i.sy = add i32 %i.st, 1
  store i32 %i.sy, ptr %i.sv, align 4, !tbaa !91
  br label %.preheader

.preheader:                                       ; preds = %bb.cl, %bb.bj, %bb.t
  %.042.ph = phi i32 [ %3, %bb.t ], [ -1, %bb.bj ], [ -1, %bb.cl ]
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 876 ; 3 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 1040
  br label %bb.u

bb.cm:                                            ; preds = %bb.ck
  %i.ti = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp234

.thread:                                          ; preds = %bb.aa, %_ZN3sat9lookahead10init_modelEv.exit, %bb.bj, %._crit_edge267
  %.3 = phi i32 [ 0, %._crit_edge267 ], [ -1, %bb.bj ], [ %i.rt, %_ZN3sat9lookahead10init_modelEv.exit ], [ -1, %bb.aa ]
  store i32 %i.en, ptr %i.em, align 8, !tbaa !99
  %i.tj = load ptr, ptr %0, align 8, !tbaa !11, !nonnull !81, !align !82
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 520
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !83 ; 3 uses
  %.not.i160 = icmp eq ptr %i.tl, null
  br i1 %.not.i160, label %_ZN3sat9lookahead10scoped_extD2Ev.exit, label %bb.cn

bb.cn:                                            ; preds = %.thread
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !86
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 24
  %i.to = load ptr, ptr %i.tn, align 8
  invoke void %i.to(ptr noundef nonnull align 8 dereferenceable(32) %i.tl, ptr noundef null)
          to label %_ZN3sat9lookahead10scoped_extD2Ev.exit unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.tp = landingpad { ptr, i32 }
          catch ptr null
  %i.tq = extractvalue { ptr, i32 } %i.tp, 0
  tail call void @__clang_call_terminate(ptr %i.tq) #27
  unreachable

_ZN3sat9lookahead10scoped_extD2Ev.exit:           ; preds = %.thread, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret i32 %.3

.loopexit.split-lp234:                            ; preds = %.loopexit.split-lp.loopexit.a, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit228, %.loopexit.split-lp229, %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %bb.cm, %bb.cc, %.loopexit.a, %bb.ba
  %.pn70 = phi { ptr, i32 } [ %i.ti, %bb.cm ], [ %i.ro, %bb.cc ], [ %lpad.loopexit.split-lp251, %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ll, %bb.ba ], [ %lpad.loopexit.a, %.loopexit.a ], [ %lpad.loopexit.split-lp231, %.loopexit.split-lp229 ], [ %lpad.loopexit246, %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit250, %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit230, %.loopexit228 ], [ %lpad.loopexit223, %.loopexit.split-lp.loopexit.a ], [ %lpad.loopexit226, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  store i32 %i.en, ptr %i.em, align 8, !tbaa !99
  br label %.body

.body:                                            ; preds = %.loopexit414, %.loopexit.split-lp, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %bb.e, %.loopexit.split-lp234
  %.pn72 = phi { ptr, i32 } [ %i.br, %bb.e ], [ %.pn70, %.loopexit.split-lp234 ], [ %i.dg, %bb.k ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %lpad.loopexit415, %.loopexit414 ], [ %lpad.loopexit.split-lp416, %.loopexit.split-lp ]
  call void @_ZN3sat9lookahead10scoped_extD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %.pn72
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat9lookahead11init_searchEv(ptr noundef nonnull align 8 dereferenceable(1160) initializes((56, 64), (168, 192), (816, 820), (832, 833), (872, 880), (988, 992)) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 988
  store i32 0, ptr %i.a, align 4, !tbaa !249
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 892
  %i.c = load i32, ptr %i.b, align 4, !tbaa !97
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !99   ; 2 uses
  store i32 %i.c, ptr %i.d, align 8, !tbaa !99
  %i.f = load ptr, ptr %0, align 8, !tbaa !11, !nonnull !81, !align !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 280
  %i.h = load i8, ptr %i.g, align 8, !tbaa !415, !range !248, !noundef !81
  %i.i = trunc nuw i8 %i.h to i1
  invoke void @_ZN3sat9lookahead4initEb(ptr noundef nonnull align 8 dereferenceable(1160) %0, i1 noundef zeroext %i.i)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.e, ptr %i.d, align 8, !tbaa !99
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  store i32 %i.e, ptr %i.d, align 8, !tbaa !99
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat9lookahead10init_modelEv(ptr noundef nonnull align 8 dereferenceable(1160) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !395  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN6vectorI5lboolLb0EjE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  store i32 0, ptr %i.c, align 4, !tbaa !91
  br label %_ZN6vectorI5lboolLb0EjE5resetEv.exit

_ZN6vectorI5lboolLb0EjE5resetEv.exit:             ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !304
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorI5lboolLb0EjE5resetEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 880
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN6vectorI5lboolLb0EjE9push_backERKS0_.exit, %_ZN6vectorI5lboolLb0EjE5resetEv.exit
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN6vectorI5lboolLb0EjE9push_backERKS0_.exit
  %i.h = phi ptr [ %i.b, %.lr.ph ], [ %i.v, %_ZN6vectorI5lboolLb0EjE9push_backERKS0_.exit ] ; 4 uses
  %.07 = phi i32 [ 0, %.lr.ph ], [ %i.ab, %_ZN6vectorI5lboolLb0EjE9push_backERKS0_.exit ] ; 2 uses
  %i.i = load i32, ptr %i.f, align 8, !tbaa !99
  %i.j = and i32 %.07, 2147483647
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !98
  %i.l = zext nneg i32 %i.j to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !91   ; 2 uses
  %.not.i4 = icmp ult i32 %i.n, %i.i
  %i.o = trunc i32 %i.n to i1
  %spec.select = select i1 %i.o, i32 -1, i32 1
  %.06 = select i1 %.not.i4, i32 0, i32 %spec.select
  %i.p = icmp eq ptr %i.h, null
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !91   ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !91
  %i.u = icmp eq i32 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %_ZN6vectorI5lboolLb0EjE9push_backERKS0_.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN6vectorI5lboolLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !395 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !91
  br label %_ZN6vectorI5lboolLb0EjE9push_backERKS0_.exit

_ZN6vectorI5lboolLb0EjE9push_backERKS0_.exit:     ; preds = %bb.d, %bb.e
  %i.v = phi ptr [ %.pre.i, %bb.e ], [ %i.h, %bb.d ] ; 3 uses
  %i.w = phi i32 [ %.pre2.i, %bb.e ], [ %i.r, %bb.d ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = zext i32 %i.w to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.y
  store i32 %.06, ptr %i.z, align 4, !tbaa !425
  %i.aa = add i32 %i.w, 1
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !91
  %i.ab = add nuw i32 %.07, 1                     ; 2 uses
  %i.ac = load i32, ptr %i.d, align 8, !tbaa !304
  %i.ad = icmp ult i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.c, label %._crit_edge, !llvm.loop !427
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat9lookahead24display_lookahead_scoresERSo(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.sat::lookahead::scoped_ext", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %0, ptr %2, align 8, !tbaa !8
  %i.a = load ptr, ptr %0, align 8, !tbaa !11, !nonnull !81, !align !82
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN3sat9lookahead10scoped_extC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(1160) %0), !inline_history !411
  br label %_ZN3sat9lookahead10scoped_extC2ERS0_.exit

_ZN3sat9lookahead10scoped_extC2ERS0_.exit:        ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 7 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !98   ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN16tracked_uint_set5resetEv.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %_ZN3sat9lookahead10scoped_extC2ERS0_.exit
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !91   ; 3 uses
  %.not.i27 = icmp eq i32 %i.l, 0
  br i1 %.not.i27, label %._crit_edge.thread10.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  %wide.trip.count.i = zext i32 %i.l to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.m = icmp ult i32 %i.l, 4
  br i1 %i.m, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %.lr.ph.i

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod64 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod64)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i.epil
  %i.p = load i32, ptr %i.o, align 4, !tbaa !91
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !294
  %i.r = zext i32 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  store i8 0, ptr %i.s, align 1, !tbaa !295
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !428

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil, %._crit_edge.i.unr-lcssa
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !98 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN16tracked_uint_set5resetEv.exit, label %._crit_edge.thread10.i

._crit_edge.thread10.i:                           ; preds = %._crit_edge.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  %i.t = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ]
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -4
  store i32 0, ptr %i.u, align 4, !tbaa !91
  br label %_ZN16tracked_uint_set5resetEv.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.x = load i32, ptr %i.w, align 4, !tbaa !91
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !294
  %i.z = zext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  store i8 0, ptr %i.aa, align 1, !tbaa !295
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !91
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !294
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  store i8 0, ptr %i.ah, align 1, !tbaa !295
end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!222 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !223, i64 0, !18, i64 8, !6, i64 16}
!223 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !74, i64 0}
!224 = !{!"_ZTS12visit_helper", !33, i64 0, !5, i64 8, !5, i64 12}
!225 = !{!"_ZTS7svectorIN3sat6solver5scopeEjE", !226, i64 0}
!226 = !{!"_ZTS6vectorIN3sat6solver5scopeELb0EjE", !227, i64 0}
!227 = !{!"p1 _ZTSN3sat6solver5scopeE", !10, i64 0}
!228 = !{!"_ZTS18scoped_limit_trail", !33, i64 0, !5, i64 8, !5, i64 12}
!229 = !{!"_ZTS9stopwatch", !230, i64 0, !231, i64 8, !17, i64 16}
!230 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE", !231, i64 0}
!231 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !18, i64 0}
!232 = !{!"_ZTSN3sat14no_drat_paramsE", !199, i64 0}
!233 = !{!"_ZTS10scoped_ptrIN3sat6solverEE", !13, i64 0}
!234 = !{!"p1 _ZTSN3sat14i_local_searchE", !10, i64 0}
!235 = !{!"_ZTS10statistics", !236, i64 0, !239, i64 8}
!236 = !{!"_ZTS7svectorISt4pairIPKcjEjE", !237, i64 0}
!237 = !{!"_ZTS6vectorISt4pairIPKcjELb0EjE", !238, i64 0}
!238 = !{!"p1 _ZTSSt4pairIPKcjE", !10, i64 0}
!239 = !{!"_ZTS7svectorISt4pairIPKcdEjE", !240, i64 0}
!240 = !{!"_ZTS6vectorISt4pairIPKcdELb0EjE", !241, i64 0}
!241 = !{!"p1 _ZTSSt4pairIPKcdE", !10, i64 0}
!242 = !{!"_ZTS14approx_set_tplIj3u2ujE", !5, i64 0}
!243 = !{!"_ZTS5u_mapI9hashtableIj6u_hash4u_eqEE", !244, i64 0}
!244 = !{!"_ZTS3mapIj9hashtableIj6u_hash4u_eqES1_S2_E", !245, i64 0}
!245 = !{!"_ZTS9table2mapI17default_map_entryIj9hashtableIj6u_hash4u_eqEES2_S3_E", !246, i64 0}
!246 = !{!"_ZTS14core_hashtableI17default_map_entryIj9hashtableIj6u_hash4u_eqEEN9table2mapIS5_S2_S3_E15entry_hash_procENS7_13entry_eq_procEE", !247, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!247 = !{!"p1 _ZTS17default_map_entryIj9hashtableIj6u_hash4u_eqEE", !10, i64 0}
!248 = !{i8 0, i8 2}
!249 = !{!12, !60, i64 988}
!250 = !{!12, !5, i64 872}
!251 = !{!12, !5, i64 876}
!252 = !{!54, !55, i64 0}
!253 = !{!254, !5, i64 8}
!254 = !{!"_ZTSN3sat9lookahead8lit_infoE", !27, i64 0, !5, i64 8}
!255 = distinct !{!255, !256}
!256 = !{!"llvm.loop.unroll.disable"}
!257 = distinct !{!257, !256}
!258 = !{!12, !5, i64 108}
!259 = distinct !{!259, !93}
!260 = distinct !{!260, !93}
!261 = distinct !{!261, !256}
!262 = distinct !{!262, !256}
!263 = !{!59, !5, i64 0}
!264 = !{!79, !80, i64 0}
!265 = distinct !{!265, !256}
!266 = !{!69, !70, i64 0}
!267 = !{!268, !5, i64 0}
!268 = !{!"_ZTSN3sat9lookahead9candidateE", !5, i64 0, !27, i64 8}
!269 = !{!76, !77, i64 0}
!270 = !{!271, !5, i64 0}
!271 = !{!"_ZTSN3sat9lookahead8dfs_infoE", !5, i64 0, !5, i64 4, !75, i64 8, !272, i64 16, !5, i64 24, !75, i64 28, !75, i64 32, !75, i64 36}
!272 = !{!"_ZTSN3sat9lookahead4arcsE", !30, i64 0}
!273 = distinct !{!273, !93}
!274 = !{!271, !5, i64 4}
!275 = distinct !{!275, !93}
!276 = distinct !{!276, !93}
!277 = !{!12, !17, i64 88}
!278 = !{!268, !27, i64 8}
!279 = !{i64 0, i64 4, !91, i64 8, i64 8, !280}
!280 = !{!27, !27, i64 0}
!281 = distinct !{!281, !93}
!282 = distinct !{!282, !93}
!283 = !{!284, !5, i64 4}
!284 = !{!"_ZTSN3sat9lookahead14literal_offsetE", !75, i64 0, !5, i64 4}
!285 = distinct !{!285, !93}
!286 = distinct !{!286, !93}
!287 = !{!12, !28, i64 112}
!288 = !{!12, !5, i64 80}
!289 = !{!46, !47, i64 0}
!290 = !{!12, !47, i64 856}
!291 = !{!12, !5, i64 952}
!292 = !{!49, !50, i64 0}
!293 = !{!133, !17, i64 245}
!294 = !{!73, !74, i64 0}
!295 = !{!6, !6, i64 0}
!296 = distinct !{!296, !297}
!297 = !{!"llvm.loop.unswitch.partial.disable"}
!298 = distinct !{!298, !93}
!299 = distinct !{!299, !93}
!300 = distinct !{!300, !93, !297}
!301 = distinct !{!301, !93}
!302 = distinct !{!302, !93}
!303 = distinct !{!303, !93}
!304 = !{!12, !5, i64 8}
!305 = !{!223, !74, i64 0}
!306 = !{!222, !74, i64 0}
!307 = !{!222, !18, i64 8}
!308 = distinct !{!308, !93}
!309 = distinct !{!309, !93}
!310 = !{!12, !27, i64 64}
!311 = distinct !{!311, !93}
!312 = !{!12, !5, i64 1124}
!313 = !{!271, !5, i64 24}
!314 = !{!12, !5, i64 1128}
!315 = distinct !{!315, !93}
!316 = distinct !{!316, !93}
!317 = !{!51, !52, i64 0}
!318 = !{!319, !320, i64 0}
!319 = !{!"_ZTS6vectorIN3sat7watchedELb1EjE", !320, i64 0}
!320 = !{!"p1 _ZTSN3sat7watchedE", !10, i64 0}
!321 = !{!18, !18, i64 0}
!322 = distinct !{!322, !93}
!323 = !{!324}
!324 = distinct !{!324, !325, !"_ZNK3sat9lookahead8get_arcsENS_7literalE: argument 0"}
!325 = distinct !{!325, !"_ZNK3sat9lookahead8get_arcsENS_7literalE"}
!326 = distinct !{!326, !93, !94, !95}
!327 = distinct !{!327, !93, !94}
!328 = !{!329, !5, i64 0}
!329 = !{!"_ZTSN3sat10mk_lits_ppE", !5, i64 0, !32, i64 8}
!330 = !{!329, !32, i64 8}
!331 = distinct !{!331, !93}
!332 = distinct !{!332, !93}
!333 = distinct !{!333, !93}
!334 = !{!12, !5, i64 928}
!335 = !{!336, !336, i64 0}
!336 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!337 = distinct !{!337, !93}
!338 = !{!66, !67, i64 0}
!339 = !{!17, !17, i64 0}
!340 = distinct !{!340, !93}
!341 = distinct !{!341, !93}
!342 = !{!130, !27, i64 272}
!343 = !{!12, !27, i64 184}
!344 = !{!12, !27, i64 56}
!345 = distinct !{!345, !93}
!346 = !{!347, !5, i64 8}
!347 = !{!"_ZTSN3sat7watchedE", !18, i64 0, !5, i64 8}
!348 = !{!347, !18, i64 0}
!349 = distinct !{!349, !93}
!350 = !{!130, !5, i64 3612}
!351 = !{!226, !227, i64 0}
!352 = !{!12, !5, i64 984}
!353 = distinct !{!353, !93}
!354 = !{!183, !184, i64 0}
!355 = !{!189, !189, i64 0}
!356 = distinct !{!356, !93}
!357 = !{!358, !5, i64 4}
!358 = !{!"_ZTSN3sat6clauseE", !5, i64 0, !5, i64 4, !5, i64 8, !242, i64 12, !5, i64 16, !5, i64 16, !5, i64 16, !5, i64 16, !5, i64 16, !5, i64 16, !5, i64 16, !5, i64 17, !5, i64 18, !6, i64 20}
!359 = !{!12, !5, i64 992}
!360 = distinct !{!360, !93}
!361 = distinct !{!361, !93}
!362 = distinct !{!362, !93, !94, !95}
!363 = distinct !{!363, !256}
!364 = distinct !{!364, !93, !94}
!365 = !{!12, !5, i64 1012}
!366 = distinct !{!366, !93}
!367 = !{!12, !27, i64 912}
!368 = distinct !{!368, !93}
!369 = !{i64 0, i64 8, !321, i64 8, i64 4, !91}
!370 = distinct !{!370, !93}
!371 = distinct !{!371, !93}
!372 = distinct !{!372, !93}
!373 = distinct !{!373, !93}
!374 = !{!214, !215, i64 0}
!375 = distinct !{!375, !93}
!376 = distinct !{!376, !93}
!377 = distinct !{!377, !93}
!378 = !{!12, !27, i64 96}
!379 = !{!12, !27, i64 176}
!380 = !{!12, !5, i64 1088}
!381 = !{!130, !134, i64 24}
!382 = !{!254, !27, i64 0}
!383 = !{!133, !17, i64 244}
!384 = !{!12, !27, i64 168}
!385 = !{!12, !5, i64 104}
!386 = !{!12, !5, i64 1020}
!387 = distinct !{!387, !93}
!388 = distinct !{!388, !93}
!389 = !{!166, !5, i64 0}
!390 = distinct !{!390, !93}
!391 = distinct !{!391, !93}
!392 = !{!12, !5, i64 1016}
!393 = distinct !{!393, !93}
!394 = distinct !{!394, !93}
!395 = !{!63, !10, i64 0}
!396 = distinct !{!396, !256}
!397 = distinct !{!397, !93}
!398 = distinct !{!398, !93}
!399 = !{!12, !5, i64 1008}
!400 = !{!12, !5, i64 1080}
!401 = distinct !{!401, !93}
!402 = !{!12, !5, i64 1076}
!403 = !{!12, !5, i64 1072}
!404 = !{!12, !27, i64 152}
!405 = !{!12, !27, i64 144}
!406 = !{!12, !29, i64 116}
!407 = !{!12, !27, i64 136}
!408 = !{!12, !27, i64 160}
!409 = !{!12, !27, i64 1056}
!410 = !{!12, !27, i64 1064}
!411 = !{ptr @_ZN3sat9lookahead10scoped_extC2ERS0_}
!412 = !{!12, !17, i64 1032}
!413 = distinct !{!413, !256}
!414 = distinct !{!414, !93}
!415 = !{!130, !17, i64 280}
!416 = distinct !{!416, !93}
!417 = !{!64, !5, i64 40}
!418 = !{!64, !5, i64 44}
!419 = !{!64, !5, i64 48}
!420 = distinct !{!420, !256}
!421 = distinct !{!421, !93}
!422 = distinct !{!422, !93}
!423 = !{!12, !27, i64 128}
!424 = distinct !{!424, !93}
!425 = !{!426, !426, i64 0}
!426 = !{!"_ZTS5lbool", !6, i64 0}
!427 = distinct !{!427, !93}
!428 = distinct !{!428, !256}
!429 = distinct !{!429, !93}
!430 = distinct !{!430, !93}
!431 = distinct !{!431, !93}
!432 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!433 = distinct !{!433, !256}
!434 = !{!130, !17, i64 3168}
!435 = distinct !{!435, !93}
!436 = distinct !{!436, !93}
!437 = !{!133, !17, i64 182}
!438 = distinct !{!438, !93}
!439 = !{!440, !5, i64 16}
!440 = !{!"_ZTS14core_hashtableI18default_hash_entryISt4pairIjjEE9pair_hashI13unsigned_hashS5_E10default_eqIS2_EE", !441, i64 0, !443, i64 8, !5, i64 16, !5, i64 20, !5, i64 24}
!441 = !{!"_ZTS9pair_hashI13unsigned_hashS0_E", !442, i64 1}
!442 = !{!"_ZTS13unsigned_hash"}
!443 = !{!"p1 _ZTS18default_hash_entryISt4pairIjjEE", !10, i64 0}
!444 = !{!440, !5, i64 20}
!445 = !{!440, !5, i64 24}
!446 = !{!440, !443, i64 8}
!447 = distinct !{!447, !93}
!448 = !{!209, !210, i64 0}
!449 = distinct !{!449, !256}
!450 = !{!197, !35, i64 0}
!451 = distinct !{!451, !93}
!452 = distinct !{!452, !93}
!453 = !{!454, !454, i64 0}
!454 = !{!"p1 _ZTS22union_find_default_ctx", !10, i64 0}
!455 = !{!456, !456, i64 0}
!456 = !{!"p1 _ZTS11trail_stack", !10, i64 0}
!457 = !{!458, !458, i64 0}
!458 = !{!"p1 _ZTS10union_findI22union_find_default_ctxE", !10, i64 0}
!459 = !{!460, !456, i64 8}
!460 = !{!"_ZTS10union_findI22union_find_default_ctxE", !454, i64 0, !456, i64 8, !33, i64 16, !33, i64 24, !33, i64 32, !461, i64 40}
!461 = !{!"_ZTSN10union_findI22union_find_default_ctxE12mk_var_trailE", !462, i64 0, !458, i64 8}
!462 = !{!"_ZTS5trail"}
!463 = !{!464, !465, i64 0}
!464 = !{!"_ZTS6vectorIP5trailLb0EjE", !465, i64 0}
!465 = !{!"p2 _ZTS5trail", !25, i64 0}
!466 = !{!467, !467, i64 0}
!467 = !{!"p1 _ZTS5trail", !10, i64 0}
!468 = distinct !{!468, !93}
!469 = !{!470, !471, i64 0}
!470 = !{!"_ZTSN3sat6statusE", !471, i64 0, !5, i64 4, !472, i64 8}
!471 = !{!"_ZTSN3sat6status2stE", !6, i64 0}
!472 = !{!"p1 _ZTSN3sat10proof_hintE", !10, i64 0}
!473 = !{!474}
!474 = distinct !{!474, !475, !"_ZN3sat6status9redundantEv: argument 0"}
!475 = distinct !{!475, !"_ZN3sat6status9redundantEv"}
!476 = !{!470, !5, i64 4}
!477 = !{!470, !472, i64 8}
!478 = distinct !{!478, !93}
!479 = distinct !{!479, !93}
!480 = !{!12, !5, i64 996}
!481 = !{!482, !5, i64 0}
!482 = !{!"_ZTSSt4pairIjjE", !5, i64 0, !5, i64 4}
!483 = !{!482, !5, i64 4}
!484 = !{!485, !486, i64 4}
!485 = !{!"_ZTS18default_hash_entryISt4pairIjjEE", !5, i64 0, !486, i64 4, !482, i64 8}
!486 = !{!"_ZTS16hash_entry_state", !6, i64 0}
!487 = !{!485, !5, i64 0}
!488 = distinct !{!488, !93}
!489 = distinct !{!489, !93}
!490 = distinct !{!490, !93}
!491 = distinct !{!491, !93}
!492 = distinct !{!492, !93}
!493 = !{!130, !28, i64 264}
!494 = !{!130, !29, i64 208}
!495 = !{!130, !27, i64 216}
!496 = !{!130, !5, i64 224}
!497 = !{!12, !5, i64 120}
!498 = distinct !{!498, !93, !499}
!499 = !{!"llvm.loop.peeled.count", i32 1}
!500 = !{!501, !9, i64 8}
!501 = !{!"_ZTSN3sat26lookahead_literal_occs_funE", !502, i64 0, !9, i64 8}
!502 = !{!"_ZTSN3sat16literal_occs_funE"}
!503 = !{!153, !154, i64 0}
!504 = !{!505, !505, i64 0}
!505 = !{!"p1 _ZTSN13sat_allocator5chunkE", !10, i64 0}
!506 = !{!507, !25, i64 0}
!507 = !{!"_ZTS6vectorIPvLb0EjE", !25, i64 0}
!508 = !{!151, !18, i64 8}
!509 = !{!151, !10, i64 24}
!510 = !{!511}
!511 = distinct !{!511, !512}
!512 = distinct !{!512, !"LVerDomain"}
!513 = !{!514}
!514 = distinct !{!514, !512}
!515 = distinct !{!515, !93, !94, !95}
!516 = distinct !{!516, !93, !94}
!517 = distinct !{!517, !93}
!518 = !{!519}
!519 = distinct !{!519, !520}
!520 = distinct !{!520, !"LVerDomain"}
!521 = !{!522}
!522 = distinct !{!522, !520}
!523 = distinct !{!523, !93, !94, !95}
!524 = distinct !{!524, !93, !94}
!525 = !{!526}
!526 = distinct !{!526, !527}
!527 = distinct !{!527, !"LVerDomain"}
!528 = !{!529}
!529 = distinct !{!529, !527}
!530 = distinct !{!530, !93, !94, !95}
!531 = distinct !{!531, !93, !94}
!532 = distinct !{!532, !93}
!533 = !{!534}
!534 = distinct !{!534, !535}
!535 = distinct !{!535, !"LVerDomain"}
!536 = !{!537}
!537 = distinct !{!537, !535}
!538 = distinct !{!538, !93, !94, !95}
!539 = distinct !{!539, !93, !94}
!540 = distinct !{!540, !93}
!541 = !{!542}
!542 = distinct !{!542, !543}
!543 = distinct !{!543, !"LVerDomain"}
!544 = !{!545}
!545 = distinct !{!545, !543}
!546 = distinct !{!546, !93, !94, !95}
!547 = distinct !{!547, !93, !94}
!548 = distinct !{!548, !93}
!549 = distinct !{!549, !93}
!550 = distinct !{!550, !93}
!551 = distinct !{!551, !93}
!552 = distinct !{!552, !93}
!553 = distinct !{!553, !93}
!554 = distinct !{!554, !93}
!555 = distinct !{!555, !93}
!556 = distinct !{!556, !93, !94, !95}
!557 = distinct !{!557, !93, !94}
!558 = !{!461, !458, i64 8}
!559 = !{!560, !458, i64 8}
!560 = !{!"_ZTSN10union_findI22union_find_default_ctxE11merge_trailE", !462, i64 0, !458, i64 8, !5, i64 16}
!561 = !{!560, !5, i64 16}
end_hunk_1
