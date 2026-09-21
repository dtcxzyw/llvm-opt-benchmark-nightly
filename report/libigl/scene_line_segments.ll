Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scene_line_segments?download=true
inline.NumInlined: 449
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6embree12LineSegmentsC2EPNS_6DeviceENS_8Geometry5GTypeE:.noexc

._ZN6embree13RawBufferViewD2Ev.exit46_crit_edge:  ; preds = %bb.i
  %.pre78 = load i64, ptr %i.y, align 16
  br label %_ZN6embree13RawBufferViewD2Ev.exit46

bb.j:                                             ; preds = %bb.i
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  tail call void @__clang_call_terminate(ptr %i.dm) #25
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit46:             ; preds = %._ZN6embree13RawBufferViewD2Ev.exit46_crit_edge, %.lr.ph66
  %i.dn = phi i64 [ %.pre78, %._ZN6embree13RawBufferViewD2Ev.exit46_crit_edge ], [ %i.dd, %.lr.ph66 ] ; 2 uses
  %i.do = add nuw i64 %.0.i2165, 1                ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.dn
  br i1 %i.dp, label %.lr.ph66, label %._crit_edge67, !llvm.loop !5

bb.k:                                             ; preds = %bb.h
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  tail call void @__clang_call_terminate(ptr %i.dr) #25
  unreachable

_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit: ; preds = %bb.h, %._crit_edge67
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.ds = load i64, ptr %i.u, align 16            ; 2 uses
  %.not75 = icmp eq i64 %i.ds, 0
  br i1 %.not75, label %._crit_edge70, label %.lr.ph69

._crit_edge70:                                    ; preds = %_ZN6embree13RawBufferViewD2Ev.exit48, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit
  %i.dt = load ptr, ptr %i.r, align 8             ; 3 uses
  %.not.i = icmp eq ptr %i.dt, null
  br i1 %.not.i, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge70
  %i.du = load ptr, ptr %i.w, align 16
  %i.dv = load ptr, ptr %i.dt, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8
  invoke void %i.dx(ptr noundef nonnull align 8 dereferenceable(1384) %i.dt, ptr noundef %i.du)
          to label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit unwind label %bb.o, !inline_history !6

.lr.ph69:                                         ; preds = %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit, %_ZN6embree13RawBufferViewD2Ev.exit48
  %i.dy = phi i64 [ %i.ei, %_ZN6embree13RawBufferViewD2Ev.exit48 ], [ %i.ds, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit ]
  %.0.i68 = phi i64 [ %i.ej, %_ZN6embree13RawBufferViewD2Ev.exit48 ], [ 0, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit ] ; 2 uses
  %i.dz = load ptr, ptr %i.w, align 16
  %i.ea = getelementptr inbounds nuw [56 x i8], ptr %i.dz, i64 %.0.i68
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8            ; 3 uses
  %.not.i.i47 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i47, label %_ZN6embree13RawBufferViewD2Ev.exit48, label %bb.m

bb.m:                                             ; preds = %.lr.ph69
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  invoke void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.ec)
          to label %._ZN6embree13RawBufferViewD2Ev.exit48_crit_edge unwind label %bb.n

._ZN6embree13RawBufferViewD2Ev.exit48_crit_edge:  ; preds = %bb.m
  %.pre79 = load i64, ptr %i.u, align 16
  br label %_ZN6embree13RawBufferViewD2Ev.exit48

bb.n:                                             ; preds = %bb.m
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
  %i.eh = extractvalue { ptr, i32 } %i.eg, 0
  tail call void @__clang_call_terminate(ptr %i.eh) #25
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit48:             ; preds = %._ZN6embree13RawBufferViewD2Ev.exit48_crit_edge, %.lr.ph69
  %i.ei = phi i64 [ %.pre79, %._ZN6embree13RawBufferViewD2Ev.exit48_crit_edge ], [ %i.dy, %.lr.ph69 ] ; 2 uses
  %i.ej = add nuw i64 %.0.i68, 1                  ; 2 uses
  %i.ek = icmp ult i64 %i.ej, %i.ei
  br i1 %i.ek, label %.lr.ph69, label %._crit_edge70, !llvm.loop !7

bb.o:                                             ; preds = %bb.l
  %i.el = landingpad { ptr, i32 }
          catch ptr null
  %i.em = extractvalue { ptr, i32 } %i.el, 0
  tail call void @__clang_call_terminate(ptr %i.em) #25
  unreachable

_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit: ; preds = %bb.l, %._crit_edge70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.en = load ptr, ptr %i.q, align 16            ; 3 uses
  %.not.i.i49 = icmp eq ptr %i.en, null
  br i1 %.not.i.i49, label %_ZN6embree13RawBufferViewD2Ev.exit50, label %bb.p

bb.p:                                             ; preds = %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  invoke void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.en)
          to label %_ZN6embree13RawBufferViewD2Ev.exit50 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  tail call void @__clang_call_terminate(ptr %i.es) #25
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit50:             ; preds = %bb.p, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit
  %i.et = load ptr, ptr %i.m, align 8             ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.et, null
  br i1 %.not.i.i51, label %_ZN6embree13RawBufferViewD2Ev.exit52, label %bb.r

bb.r:                                             ; preds = %_ZN6embree13RawBufferViewD2Ev.exit50
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  invoke void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.et)
          to label %_ZN6embree13RawBufferViewD2Ev.exit52 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  tail call void @__clang_call_terminate(ptr %i.ey) #25
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit52:             ; preds = %bb.r, %_ZN6embree13RawBufferViewD2Ev.exit50
  %i.ez = load ptr, ptr %i.i, align 16            ; 3 uses
  %.not.i.i53 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i53, label %_ZN6embree13RawBufferViewD2Ev.exit54, label %bb.t

bb.t:                                             ; preds = %_ZN6embree13RawBufferViewD2Ev.exit52
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8
  invoke void %i.fc(ptr noundef nonnull align 8 dereferenceable(16) %i.ez)
          to label %_ZN6embree13RawBufferViewD2Ev.exit54 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fd = landingpad { ptr, i32 }
          catch ptr null
  %i.fe = extractvalue { ptr, i32 } %i.fd, 0
  tail call void @__clang_call_terminate(ptr %i.fe) #25
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit54:             ; preds = %bb.t, %_ZN6embree13RawBufferViewD2Ev.exit52
  %i.ff = load ptr, ptr %i.e, align 8             ; 3 uses
  %.not.i.i55 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i55, label %_ZN6embree13RawBufferViewD2Ev.exit56, label %bb.v

bb.v:                                             ; preds = %_ZN6embree13RawBufferViewD2Ev.exit54
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8
  invoke void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %i.ff)
          to label %_ZN6embree13RawBufferViewD2Ev.exit56 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fj = landingpad { ptr, i32 }
          catch ptr null
  %i.fk = extractvalue { ptr, i32 } %i.fj, 0
  tail call void @__clang_call_terminate(ptr %i.fk) #25
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit56:             ; preds = %bb.v, %_ZN6embree13RawBufferViewD2Ev.exit54
  tail call void @_ZN6embree8GeometryD2Ev(ptr noundef nonnull align 16 dead_on_return(88) dereferenceable(88) %0) #26
  resume { ptr, i32 } %i.cb
}

declare void @_ZN6embree8GeometryC2EPNS_6DeviceENS0_5GTypeEjj(ptr noundef nonnull align 16 dereferenceable(88), ptr noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN6embree8GeometryD2Ev(ptr noundef nonnull align 16 dead_on_return(88) dereferenceable(88)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6embree12LineSegments7setMaskEj(ptr noundef nonnull align 16 dereferenceable(416) initializes((52, 56)) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %1, ptr %i.a, align 4
  tail call void @_ZN6embree8Geometry6updateEv(ptr noundef nonnull align 16 dereferenceable(88) %0)
  ret void
}

declare void @_ZN6embree8Geometry6updateEv(ptr noundef nonnull align 16 dereferenceable(88)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6embree12LineSegments15setNumTimeStepsEj(ptr noundef nonnull align 16 dereferenceable(416) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.b = zext i32 %1 to i64                       ; 34 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 5 uses
  %.not.i = icmp ult i64 %i.d, %i.b
  br i1 %.not.i, label %bb.b, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.b, %.lr.ph.a
  %.0.i334 = phi i64 [ %3, %.lr.ph.a ], [ %i.d, %bb.b ] ; 3 uses
  %2 = icmp ult i64 %.0.i334, %i.b
  %3 = shl nuw i64 %.0.i334, 1
  br i1 %2, label %.lr.ph.a, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit, !llvm.loop !18

_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit: ; preds = %.lr.ph.a, %bb.a, %bb.b
  %.07.i = phi i64 [ %i.b, %bb.b ], [ %i.d, %bb.a ], [ %.0.i334, %.lr.ph.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 7 uses
  %i.g = load i64, ptr %i.f, align 16             ; 3 uses
  %i.h = icmp ugt i64 %i.g, %i.b
  br i1 %i.h, label %.lr.ph36, label %bb.f

.lr.ph36:                                         ; preds = %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN6embree13RawBufferViewD2Ev.exit
  %.pre67.pre = load i64, ptr %i.c, align 8
  store i64 %i.b, ptr %i.f, align 16
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph36, %_ZN6embree13RawBufferViewD2Ev.exit
  %i.j = phi i64 [ %i.g, %.lr.ph36 ], [ %i.t, %_ZN6embree13RawBufferViewD2Ev.exit ]
  %.029.i35 = phi i64 [ %i.b, %.lr.ph36 ], [ %i.u, %_ZN6embree13RawBufferViewD2Ev.exit ] ; 2 uses
  %i.k = load ptr, ptr %i.i, align 16
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %.029.i35
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not.i.i12 = icmp eq ptr %i.n, null
  br i1 %.not.i.i12, label %_ZN6embree13RawBufferViewD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge unwind label %bb.e

._ZN6embree13RawBufferViewD2Ev.exit_crit_edge:    ; preds = %bb.d
  %.pre = load i64, ptr %i.f, align 16
  br label %_ZN6embree13RawBufferViewD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #25
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit:               ; preds = %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge, %bb.c
  %i.t = phi i64 [ %.pre, %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge ], [ %i.j, %bb.c ] ; 2 uses
  %i.u = add nuw i64 %.029.i35, 1                 ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  br i1 %i.v, label %bb.c, label %._crit_edge, !llvm.loop !19

bb.f:                                             ; preds = %._crit_edge, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit
  %i.w = phi i64 [ %i.b, %._crit_edge ], [ %i.g, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit ] ; 6 uses
  %i.x = phi i64 [ %.pre67.pre, %._crit_edge ], [ %i.d, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit ]
  %i.y = icmp eq i64 %.07.i, %i.x
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = icmp ult i64 %i.w, %i.b
  br i1 %i.z, label %.lr.ph44.a, label %._crit_edge45.a

.lr.ph44.a:                                       ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.ab = sub nuw i64 %i.b, %i.w
  %xtraiter100 = and i64 %i.ab, 1
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph44.a
  %i.ac = load ptr, ptr %i.aa, align 16
  %i.ad = getelementptr inbounds nuw [56 x i8], ptr %i.ac, i64 %i.w ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i8 1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  store i32 0, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store ptr null, ptr %i.ah, align 8
  %i.ai = add nuw nsw i64 %i.w, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph44.a
  %.028.i42.unr = phi i64 [ %i.w, %.lr.ph44.a ], [ %i.ai, %.prol.loopexit.unr-lcssa ]
  %i.aj = add nsw i64 %i.b, -1
  %i.ak = icmp eq i64 %i.w, %i.aj
  br i1 %i.ak, label %._crit_edge45.a, label %.lr.ph44.new

._crit_edge45.a:                                  ; preds = %.prol.loopexit, %.lr.ph44.new, %bb.g
  store i64 %i.b, ptr %i.f, align 16
  br label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit

.lr.ph44.new:                                     ; preds = %.prol.loopexit, %.lr.ph44.new
  %.028.i42 = phi i64 [ %i.ay, %.lr.ph44.new ], [ %.028.i42.unr, %.prol.loopexit ] ; 3 uses
  %i.al = load ptr, ptr %i.aa, align 16
  %i.am = getelementptr inbounds nuw [56 x i8], ptr %i.al, i64 %.028.i42 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i8 1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  store i32 0, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store ptr null, ptr %i.aq, align 8
  %i.ar = load ptr, ptr %i.aa, align 16
  %i.as = getelementptr inbounds nuw [56 x i8], ptr %i.ar, i64 %.028.i42 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.at, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  store i8 1, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 100
  store i32 0, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 104
  store ptr null, ptr %i.ax, align 8
  %i.ay = add nuw nsw i64 %.028.i42, 2            ; 2 uses
  %exitcond64.not.1 = icmp eq i64 %i.ay, %i.b
  br i1 %exitcond64.not.1, label %._crit_edge45.a, label %.lr.ph44.new, !llvm.loop !20

bb.h:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 6 uses
  %i.ba = load ptr, ptr %i.az, align 16           ; 2 uses
  %i.bb = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bc = mul i64 %.07.i, 56
  %i.bd = load ptr, ptr %i.bb, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(1384) %i.bb, i64 noundef %i.bc, i64 noundef 8, i32 noundef 3), !inline_history !21
  store ptr %i.bg, ptr %i.az, align 16
  %i.bh = load i64, ptr %i.f, align 16
  %.not = icmp eq i64 %i.bh, 0
  br i1 %.not, label %.preheader30, label %_ZN6embree13RawBufferViewD2Ev.exit14

.preheader30:                                     ; preds = %_ZN6embree13RawBufferViewD2Ev.exit14, %bb.h
  %.lcssa33 = phi i64 [ 0, %bb.h ], [ %i.ca, %_ZN6embree13RawBufferViewD2Ev.exit14 ] ; 6 uses
  %i.bi = icmp ult i64 %.lcssa33, %i.b
  br i1 %i.bi, label %.lr.ph40.preheader, label %._crit_edge41

.lr.ph40.preheader:                               ; preds = %.preheader30
  %i.bj = sub nuw i64 %i.b, %.lcssa33
  %xtraiter = and i64 %i.bj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph40.prol.loopexit, label %.lr.ph40.prol

.lr.ph40.prol:                                    ; preds = %.lr.ph40.preheader
  %i.bk = load ptr, ptr %i.az, align 16
  %i.bl = getelementptr inbounds nuw [56 x i8], ptr %i.bk, i64 %.lcssa33 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bl, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store i8 1, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 44
  store i32 0, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store ptr null, ptr %i.bp, align 8
  %i.bq = add nuw nsw i64 %.lcssa33, 1
  br label %.lr.ph40.prol.loopexit

.lr.ph40.prol.loopexit:                           ; preds = %.lr.ph40.prol, %.lr.ph40.preheader
  %.0.i39.unr = phi i64 [ %.lcssa33, %.lr.ph40.preheader ], [ %i.bq, %.lr.ph40.prol ]
  %i.br = add nsw i64 %i.b, -1
  %i.bs = icmp eq i64 %.lcssa33, %i.br
  br i1 %i.bs, label %._crit_edge41, label %.lr.ph40

_ZN6embree13RawBufferViewD2Ev.exit14:             ; preds = %bb.h, %_ZN6embree13RawBufferViewD2Ev.exit14
  %.027.i37 = phi i64 [ %i.bz, %_ZN6embree13RawBufferViewD2Ev.exit14 ], [ 0, %bb.h ] ; 3 uses
  %i.bt = load ptr, ptr %i.az, align 16
  %i.bu = getelementptr inbounds nuw [56 x i8], ptr %i.bt, i64 %.027.i37 ; 2 uses
  %i.bv = getelementptr inbounds nuw [56 x i8], ptr %i.ba, i64 %.027.i37 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bu, ptr noundef nonnull align 8 dereferenceable(56) %i.bv, i64 48, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 48 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8
  store ptr %i.by, ptr %i.bw, align 8
  store ptr null, ptr %i.bx, align 8
  %i.bz = add nuw i64 %.027.i37, 1                ; 2 uses
  %i.ca = load i64, ptr %i.f, align 16            ; 2 uses
  %i.cb = icmp ult i64 %i.bz, %i.ca
  br i1 %i.cb, label %_ZN6embree13RawBufferViewD2Ev.exit14, label %.preheader30, !llvm.loop !0

._crit_edge41:                                    ; preds = %.lr.ph40.prol.loopexit, %.lr.ph40, %.preheader30
  %i.cc = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i, label %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3fxEEELm8EE10deallocateEPS4_m.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge41
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(1384) %i.cc, ptr noundef %i.ba), !inline_history !22
  br label %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3fxEEELm8EE10deallocateEPS4_m.exit.i

_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3fxEEELm8EE10deallocateEPS4_m.exit.i: ; preds = %bb.i, %._crit_edge41
  store i64 %i.b, ptr %i.f, align 16
  store i64 %.07.i, ptr %i.c, align 8
  br label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit

.lr.ph40:                                         ; preds = %.lr.ph40.prol.loopexit, %.lr.ph40
  %.0.i39 = phi i64 [ %i.ct, %.lr.ph40 ], [ %.0.i39.unr, %.lr.ph40.prol.loopexit ] ; 3 uses
  %i.cg = load ptr, ptr %i.az, align 16
  %i.ch = getelementptr inbounds nuw [56 x i8], ptr %i.cg, i64 %.0.i39 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ch, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  store i8 1, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 44
  store i32 0, ptr %i.ck, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  store ptr null, ptr %i.cl, align 8
  %i.cm = load ptr, ptr %i.az, align 16
  %i.cn = getelementptr inbounds nuw [56 x i8], ptr %i.cm, i64 %.0.i39 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.co, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.cp, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 96
  store i8 1, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 100
  store i32 0, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 104
  store ptr null, ptr %i.cs, align 8
  %i.ct = add nuw nsw i64 %.0.i39, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ct, %i.b
  br i1 %exitcond.not.1, label %._crit_edge41, label %.lr.ph40, !llvm.loop !1

_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit: ; preds = %._crit_edge45.a, %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3fxEEELm8EE10deallocateEPS4_m.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = and i32 %i.cv, 3
  %i.cx = icmp eq i32 %i.cw, 2
  br i1 %i.cx, label %bb.j, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit

bb.j:                                             ; preds = %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.da = load i64, ptr %i.cz, align 8            ; 5 uses
  %.not.i9 = icmp ult i64 %i.da, %i.b
  br i1 %.not.i9, label %bb.k, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.k, %.lr.ph47
  %.0.i1146 = phi i64 [ %5, %.lr.ph47 ], [ %i.da, %bb.k ] ; 3 uses
  %4 = icmp ult i64 %.0.i1146, %i.b
  %5 = shl nuw i64 %.0.i1146, 1
  br i1 %4, label %.lr.ph47, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit, !llvm.loop !23

_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit: ; preds = %.lr.ph47, %bb.j, %bb.k
  %.07.i10 = phi i64 [ %i.b, %bb.k ], [ %i.da, %bb.j ], [ %.0.i1146, %.lr.ph47 ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 7 uses
  %i.dd = load i64, ptr %i.dc, align 16           ; 3 uses
  %i.de = icmp ugt i64 %i.dd, %i.b
  br i1 %i.de, label %.lr.ph50, label %bb.o

.lr.ph50:                                         ; preds = %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 368
  br label %bb.l

._crit_edge51:                                    ; preds = %_ZN6embree13RawBufferViewD2Ev.exit17
  %.pre69.pre = load i64, ptr %i.cz, align 8
  store i64 %i.b, ptr %i.dc, align 16
  br label %bb.o

bb.l:                                             ; preds = %.lr.ph50, %_ZN6embree13RawBufferViewD2Ev.exit17
  %i.dg = phi i64 [ %i.dd, %.lr.ph50 ], [ %i.dq, %_ZN6embree13RawBufferViewD2Ev.exit17 ]
  %.029.i849 = phi i64 [ %i.b, %.lr.ph50 ], [ %i.dr, %_ZN6embree13RawBufferViewD2Ev.exit17 ] ; 2 uses
  %i.dh = load ptr, ptr %i.df, align 16
  %i.di = getelementptr inbounds nuw [56 x i8], ptr %i.dh, i64 %.029.i849
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.dk = load ptr, ptr %i.dj, align 8            ; 3 uses
  %.not.i.i16 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i16, label %_ZN6embree13RawBufferViewD2Ev.exit17, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  invoke void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dk)
          to label %._ZN6embree13RawBufferViewD2Ev.exit17_crit_edge unwind label %bb.n

._ZN6embree13RawBufferViewD2Ev.exit17_crit_edge:  ; preds = %bb.m
  %.pre68 = load i64, ptr %i.dc, align 16
  br label %_ZN6embree13RawBufferViewD2Ev.exit17

bb.n:                                             ; preds = %bb.m
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  tail call void @__clang_call_terminate(ptr %i.dp) #25
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit17:             ; preds = %._ZN6embree13RawBufferViewD2Ev.exit17_crit_edge, %bb.l
  %i.dq = phi i64 [ %.pre68, %._ZN6embree13RawBufferViewD2Ev.exit17_crit_edge ], [ %i.dg, %bb.l ] ; 2 uses
  %i.dr = add nuw i64 %.029.i849, 1               ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.dq
  br i1 %i.ds, label %bb.l, label %._crit_edge51, !llvm.loop !24

bb.o:                                             ; preds = %._crit_edge51, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit
  %i.dt = phi i64 [ %i.b, %._crit_edge51 ], [ %i.dd, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit ] ; 6 uses
  %i.du = phi i64 [ %.pre69.pre, %._crit_edge51 ], [ %i.da, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit ]
  %i.dv = icmp eq i64 %.07.i10, %i.du
  br i1 %i.dv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dw = icmp ult i64 %i.dt, %i.b
  br i1 %i.dw, label %.lr.ph59, label %._crit_edge60

.lr.ph59:                                         ; preds = %bb.p
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.dy = sub nuw i64 %i.b, %i.dt
  %xtraiter106 = and i64 %i.dy, 1
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.prol.loopexit105, label %.prol.loopexit105.unr-lcssa

.prol.loopexit105.unr-lcssa:                      ; preds = %.lr.ph59
  %i.dz = load ptr, ptr %i.dx, align 16
  %i.ea = getelementptr inbounds nuw [56 x i8], ptr %i.dz, i64 %i.dt ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ea, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.eb, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  store i8 1, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 44
  store i32 0, ptr %i.ed, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  store ptr null, ptr %i.ee, align 8
  %i.ef = add nuw nsw i64 %i.dt, 1
  br label %.prol.loopexit105

.prol.loopexit105:                                ; preds = %.prol.loopexit105.unr-lcssa, %.lr.ph59
  %.028.i757.unr = phi i64 [ %i.dt, %.lr.ph59 ], [ %i.ef, %.prol.loopexit105.unr-lcssa ]
  %i.eg = add nsw i64 %i.b, -1
  %i.eh = icmp eq i64 %i.dt, %i.eg
  br i1 %i.eh, label %._crit_edge60, label %.lr.ph59.new

._crit_edge60:                                    ; preds = %.prol.loopexit105, %.lr.ph59.new, %bb.p
  store i64 %i.b, ptr %i.dc, align 16
  br label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit

.lr.ph59.new:                                     ; preds = %.prol.loopexit105, %.lr.ph59.new
  %.028.i757 = phi i64 [ %i.ev, %.lr.ph59.new ], [ %.028.i757.unr, %.prol.loopexit105 ] ; 3 uses
  %i.ei = load ptr, ptr %i.dx, align 16
  %i.ej = getelementptr inbounds nuw [56 x i8], ptr %i.ei, i64 %.028.i757 ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ej, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.ek, align 4
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  store i8 1, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 44
  store i32 0, ptr %i.em, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  store ptr null, ptr %i.en, align 8
  %i.eo = load ptr, ptr %i.dx, align 16
  %i.ep = getelementptr inbounds nuw [56 x i8], ptr %i.eo, i64 %.028.i757 ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 56
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.eq, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.er, align 4
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 96
  store i8 1, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 100
  store i32 0, ptr %i.et, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 104
  store ptr null, ptr %i.eu, align 8
  %i.ev = add nuw nsw i64 %.028.i757, 2           ; 2 uses
  %exitcond66.not.1 = icmp eq i64 %i.ev, %i.b
  br i1 %exitcond66.not.1, label %._crit_edge60, label %.lr.ph59.new, !llvm.loop !25

bb.q:                                             ; preds = %bb.o
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 6 uses
  %i.ex = load ptr, ptr %i.ew, align 16           ; 2 uses
  %i.ey = load ptr, ptr %i.cy, align 8            ; 2 uses
  %i.ez = mul i64 %.07.i10, 56
  %i.fa = load ptr, ptr %i.ey, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 64
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = tail call noundef ptr %i.fc(ptr noundef nonnull align 8 dereferenceable(1384) %i.ey, i64 noundef %i.ez, i64 noundef 8, i32 noundef 3), !inline_history !26
  store ptr %i.fd, ptr %i.ew, align 16
  %i.fe = load i64, ptr %i.dc, align 16
  %.not61 = icmp eq i64 %i.fe, 0
  br i1 %.not61, label %.preheader, label %_ZN6embree13RawBufferViewD2Ev.exit19

.preheader:                                       ; preds = %_ZN6embree13RawBufferViewD2Ev.exit19, %bb.q
  %.lcssa = phi i64 [ 0, %bb.q ], [ %i.fx, %_ZN6embree13RawBufferViewD2Ev.exit19 ] ; 6 uses
  %i.ff = icmp ult i64 %.lcssa, %i.b
  br i1 %i.ff, label %.lr.ph55.preheader, label %._crit_edge56

.lr.ph55.preheader:                               ; preds = %.preheader
  %i.fg = sub nuw i64 %i.b, %.lcssa
  %xtraiter102 = and i64 %i.fg, 1
  %lcmp.mod103.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %.lr.ph55.prol.loopexit, label %.lr.ph55.prol

.lr.ph55.prol:                                    ; preds = %.lr.ph55.preheader
  %i.fh = load ptr, ptr %i.ew, align 16
  %i.fi = getelementptr inbounds nuw [56 x i8], ptr %i.fh, i64 %.lcssa ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fi, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.fj, align 4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  store i8 1, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 44
  store i32 0, ptr %i.fl, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  store ptr null, ptr %i.fm, align 8
  %i.fn = add nuw nsw i64 %.lcssa, 1
  br label %.lr.ph55.prol.loopexit

.lr.ph55.prol.loopexit:                           ; preds = %.lr.ph55.prol, %.lr.ph55.preheader
  %.0.i554.unr = phi i64 [ %.lcssa, %.lr.ph55.preheader ], [ %i.fn, %.lr.ph55.prol ]
  %i.fo = add nsw i64 %i.b, -1
  %i.fp = icmp eq i64 %.lcssa, %i.fo
  br i1 %i.fp, label %._crit_edge56, label %.lr.ph55

_ZN6embree13RawBufferViewD2Ev.exit19:             ; preds = %bb.q, %_ZN6embree13RawBufferViewD2Ev.exit19
  %.027.i452 = phi i64 [ %i.fw, %_ZN6embree13RawBufferViewD2Ev.exit19 ], [ 0, %bb.q ] ; 3 uses
  %i.fq = load ptr, ptr %i.ew, align 16
  %i.fr = getelementptr inbounds nuw [56 x i8], ptr %i.fq, i64 %.027.i452 ; 2 uses
  %i.fs = getelementptr inbounds nuw [56 x i8], ptr %i.ex, i64 %.027.i452 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fr, ptr noundef nonnull align 8 dereferenceable(56) %i.fs, i64 48, i1 false)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 48
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 48 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8
  store ptr %i.fv, ptr %i.ft, align 8
  store ptr null, ptr %i.fu, align 8
  %i.fw = add nuw i64 %.027.i452, 1               ; 2 uses
  %i.fx = load i64, ptr %i.dc, align 16           ; 2 uses
  %i.fy = icmp ult i64 %i.fw, %i.fx
  br i1 %i.fy, label %_ZN6embree13RawBufferViewD2Ev.exit19, label %.preheader, !llvm.loop !27

._crit_edge56:                                    ; preds = %.lr.ph55.prol.loopexit, %.lr.ph55, %.preheader
  %i.fz = load ptr, ptr %i.cy, align 8            ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i6, label %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3faEEELm8EE10deallocateEPS4_m.exit.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge56
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 72
  %i.gc = load ptr, ptr %i.gb, align 8
  tail call void %i.gc(ptr noundef nonnull align 8 dereferenceable(1384) %i.fz, ptr noundef %i.ex), !inline_history !28
  br label %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3faEEELm8EE10deallocateEPS4_m.exit.i

_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3faEEELm8EE10deallocateEPS4_m.exit.i: ; preds = %bb.r, %._crit_edge56
  store i64 %i.b, ptr %i.dc, align 16
  store i64 %.07.i10, ptr %i.cz, align 8
  br label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit

.lr.ph55:                                         ; preds = %.lr.ph55.prol.loopexit, %.lr.ph55
  %.0.i554 = phi i64 [ %i.gq, %.lr.ph55 ], [ %.0.i554.unr, %.lr.ph55.prol.loopexit ] ; 3 uses
  %i.gd = load ptr, ptr %i.ew, align 16
  %i.ge = getelementptr inbounds nuw [56 x i8], ptr %i.gd, i64 %.0.i554 ; 5 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ge, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.gf, align 4
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  store i8 1, ptr %i.gg, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 44
  store i32 0, ptr %i.gh, align 4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  store ptr null, ptr %i.gi, align 8
  %i.gj = load ptr, ptr %i.ew, align 16
  %i.gk = getelementptr inbounds nuw [56 x i8], ptr %i.gj, i64 %.0.i554 ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 56
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gl, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.gm, align 4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 96
  store i8 1, ptr %i.gn, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 100
  store i32 0, ptr %i.go, align 4
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 104
  store ptr null, ptr %i.gp, align 8
  %i.gq = add nuw nsw i64 %.0.i554, 2             ; 2 uses
  %exitcond65.not.1 = icmp eq i64 %i.gq, %i.b
  br i1 %exitcond65.not.1, label %._crit_edge56, label %.lr.ph55, !llvm.loop !29

_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit: ; preds = %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3faEEELm8EE10deallocateEPS4_m.exit.i, %._crit_edge60, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit
  tail call void @_ZN6embree8Geometry15setNumTimeStepsEj(ptr noundef nonnull align 16 dereferenceable(88) %0, i32 noundef %1)
  ret void
}

declare void @_ZN6embree8Geometry15setNumTimeStepsEj(ptr noundef nonnull align 16 dereferenceable(88), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6embree12LineSegments23setVertexAttributeCountEj(ptr noundef nonnull align 16 dereferenceable(416) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.b = zext i32 %1 to i64                       ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 5 uses
  %.not.i = icmp ult i64 %i.d, %i.b
  br i1 %.not.i, label %bb.b, label %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.b, %.lr.ph.a
  %.0.i110 = phi i64 [ %3, %.lr.ph.a ], [ %i.d, %bb.b ] ; 3 uses
  %2 = icmp ult i64 %.0.i110, %i.b
  %3 = shl nuw i64 %.0.i110, 1
  br i1 %2, label %.lr.ph.a, label %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit, !llvm.loop !30

_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit: ; preds = %.lr.ph.a, %bb.a, %bb.b
  %.07.i = phi i64 [ %i.b, %bb.b ], [ %i.d, %bb.a ], [ %.0.i110, %.lr.ph.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 7 uses
  %i.g = load i64, ptr %i.f, align 16             ; 3 uses
  %i.h = icmp ugt i64 %i.g, %i.b
  br i1 %i.h, label %.lr.ph12, label %bb.f

.lr.ph12:                                         ; preds = %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 400
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN6embree13RawBufferViewD2Ev.exit
  %.pre24.pre = load i64, ptr %i.c, align 8
  store i64 %i.b, ptr %i.f, align 16
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph12, %_ZN6embree13RawBufferViewD2Ev.exit
  %i.j = phi i64 [ %i.g, %.lr.ph12 ], [ %i.t, %_ZN6embree13RawBufferViewD2Ev.exit ]
  %.029.i11 = phi i64 [ %i.b, %.lr.ph12 ], [ %i.u, %_ZN6embree13RawBufferViewD2Ev.exit ] ; 2 uses
  %i.k = load ptr, ptr %i.i, align 16
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %.029.i11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.n, null
  br i1 %.not.i.i2, label %_ZN6embree13RawBufferViewD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge unwind label %bb.e

._ZN6embree13RawBufferViewD2Ev.exit_crit_edge:    ; preds = %bb.d
  %.pre = load i64, ptr %i.f, align 16
  br label %_ZN6embree13RawBufferViewD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #25
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit:               ; preds = %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge, %bb.c
  %i.t = phi i64 [ %.pre, %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge ], [ %i.j, %bb.c ] ; 2 uses
  %i.u = add nuw i64 %.029.i11, 1                 ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  br i1 %i.v, label %bb.c, label %._crit_edge, !llvm.loop !31

bb.f:                                             ; preds = %._crit_edge, %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit
  %i.w = phi i64 [ %i.b, %._crit_edge ], [ %i.g, %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit ] ; 6 uses
  %i.x = phi i64 [ %.pre24.pre, %._crit_edge ], [ %i.d, %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit ]
  %i.y = icmp eq i64 %.07.i, %i.x
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = icmp ult i64 %i.w, %i.b
  br i1 %i.z, label %.lr.ph20, label %._crit_edge21

.lr.ph20:                                         ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.ab = sub nuw i64 %i.b, %i.w
  %xtraiter41 = and i64 %i.ab, 1
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph20
  %i.ac = load ptr, ptr %i.aa, align 16
  %i.ad = getelementptr inbounds nuw [56 x i8], ptr %i.ac, i64 %i.w ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i8 1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  store i32 0, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store ptr null, ptr %i.ah, align 8
  %i.ai = add nuw nsw i64 %i.w, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph20
  %.028.i18.unr = phi i64 [ %i.w, %.lr.ph20 ], [ %i.ai, %.prol.loopexit.unr-lcssa ]
  %i.aj = add nsw i64 %i.b, -1
  %i.ak = icmp eq i64 %i.w, %i.aj
  br i1 %i.ak, label %._crit_edge21, label %.lr.ph20.new

._crit_edge21:                                    ; preds = %.prol.loopexit, %.lr.ph20.new, %bb.g
  store i64 %i.b, ptr %i.f, align 16
  br label %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE15internal_resizeEmm.exit

.lr.ph20.new:                                     ; preds = %.prol.loopexit, %.lr.ph20.new
  %.028.i18 = phi i64 [ %i.ay, %.lr.ph20.new ], [ %.028.i18.unr, %.prol.loopexit ] ; 3 uses
  %i.al = load ptr, ptr %i.aa, align 16
  %i.am = getelementptr inbounds nuw [56 x i8], ptr %i.al, i64 %.028.i18 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i8 1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  store i32 0, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store ptr null, ptr %i.aq, align 8
  %i.ar = load ptr, ptr %i.aa, align 16
  %i.as = getelementptr inbounds nuw [56 x i8], ptr %i.ar, i64 %.028.i18 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.at, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  store i8 1, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 100
  store i32 0, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 104
  store ptr null, ptr %i.ax, align 8
  %i.ay = add nuw nsw i64 %.028.i18, 2            ; 2 uses
  %exitcond23.not.1 = icmp eq i64 %i.ay, %i.b
  br i1 %exitcond23.not.1, label %._crit_edge21, label %.lr.ph20.new, !llvm.loop !32

bb.h:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 6 uses
  %i.ba = load ptr, ptr %i.az, align 16           ; 2 uses
  %i.bb = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bc = mul i64 %.07.i, 56
  %i.bd = load ptr, ptr %i.bb, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(1384) %i.bb, i64 noundef %i.bc, i64 noundef 8, i32 noundef 3), !inline_history !33
  store ptr %i.bg, ptr %i.az, align 16
  %i.bh = load i64, ptr %i.f, align 16
  %.not = icmp eq i64 %i.bh, 0
  br i1 %.not, label %.preheader, label %_ZN6embree13RawBufferViewD2Ev.exit4

.preheader:                                       ; preds = %_ZN6embree13RawBufferViewD2Ev.exit4, %bb.h
  %.lcssa = phi i64 [ 0, %bb.h ], [ %i.ca, %_ZN6embree13RawBufferViewD2Ev.exit4 ] ; 6 uses
  %i.bi = icmp ult i64 %.lcssa, %i.b
  br i1 %i.bi, label %.lr.ph16.preheader, label %._crit_edge17

.lr.ph16.preheader:                               ; preds = %.preheader
  %i.bj = sub nuw i64 %i.b, %.lcssa
  %xtraiter = and i64 %i.bj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph16.prol.loopexit, label %.lr.ph16.prol

.lr.ph16.prol:                                    ; preds = %.lr.ph16.preheader
  %i.bk = load ptr, ptr %i.az, align 16
  %i.bl = getelementptr inbounds nuw [56 x i8], ptr %i.bk, i64 %.lcssa ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bl, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store i8 1, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 44
  store i32 0, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store ptr null, ptr %i.bp, align 8
  %i.bq = add nuw nsw i64 %.lcssa, 1
  br label %.lr.ph16.prol.loopexit

.lr.ph16.prol.loopexit:                           ; preds = %.lr.ph16.prol, %.lr.ph16.preheader
  %.0.i15.unr = phi i64 [ %.lcssa, %.lr.ph16.preheader ], [ %i.bq, %.lr.ph16.prol ]
  %i.br = add nsw i64 %i.b, -1
  %i.bs = icmp eq i64 %.lcssa, %i.br
  br i1 %i.bs, label %._crit_edge17, label %.lr.ph16

_ZN6embree13RawBufferViewD2Ev.exit4:              ; preds = %bb.h, %_ZN6embree13RawBufferViewD2Ev.exit4
  %.027.i13 = phi i64 [ %i.bz, %_ZN6embree13RawBufferViewD2Ev.exit4 ], [ 0, %bb.h ] ; 3 uses
  %i.bt = load ptr, ptr %i.az, align 16
  %i.bu = getelementptr inbounds nuw [56 x i8], ptr %i.bt, i64 %.027.i13 ; 2 uses
  %i.bv = getelementptr inbounds nuw [56 x i8], ptr %i.ba, i64 %.027.i13 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bu, ptr noundef nonnull align 8 dereferenceable(56) %i.bv, i64 48, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 48 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8
  store ptr %i.by, ptr %i.bw, align 8
  store ptr null, ptr %i.bx, align 8
  %i.bz = add nuw i64 %.027.i13, 1                ; 2 uses
  %i.ca = load i64, ptr %i.f, align 16            ; 2 uses
  %i.cb = icmp ult i64 %i.bz, %i.ca
  br i1 %i.cb, label %_ZN6embree13RawBufferViewD2Ev.exit4, label %.preheader, !llvm.loop !34

._crit_edge17:                                    ; preds = %.lr.ph16.prol.loopexit, %.lr.ph16, %.preheader
  %i.cc = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i, label %_ZN6embree6Device9allocatorINS_10BufferViewIcEELm8EE10deallocateEPS3_m.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge17
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(1384) %i.cc, ptr noundef %i.ba), !inline_history !35
  br label %_ZN6embree6Device9allocatorINS_10BufferViewIcEELm8EE10deallocateEPS3_m.exit.i

_ZN6embree6Device9allocatorINS_10BufferViewIcEELm8EE10deallocateEPS3_m.exit.i: ; preds = %bb.i, %._crit_edge17
  store i64 %i.b, ptr %i.f, align 16
  store i64 %.07.i, ptr %i.c, align 8
  br label %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE15internal_resizeEmm.exit

.lr.ph16:                                         ; preds = %.lr.ph16.prol.loopexit, %.lr.ph16
  %.0.i15 = phi i64 [ %i.ct, %.lr.ph16 ], [ %.0.i15.unr, %.lr.ph16.prol.loopexit ] ; 3 uses
end_hunk_0
