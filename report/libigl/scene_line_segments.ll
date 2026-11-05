Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scene_line_segments?download=true
inline.NumInlined: 449
inline.NumDeleted: 68
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6embree12LineSegmentsC2EPNS_6DeviceENS_8Geometry5GTypeE:.noexc
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
  br i1 %i.e, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0.i334 = phi i64 [ %i.f, %.lr.ph ], [ %i.d, %bb.b ]
  %i.f = shl nuw nsw i64 %.0.i334, 1              ; 3 uses
  %i.g = icmp samesign ult i64 %i.f, %i.b
  br i1 %i.g, label %.lr.ph, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit, !llvm.loop !18

_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit: ; preds = %.lr.ph, %bb.a, %bb.b
  %.07.i = phi i64 [ %i.b, %bb.b ], [ %i.d, %bb.a ], [ %i.f, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 7 uses
  %i.i = load i64, ptr %i.h, align 16             ; 3 uses
  %i.j = icmp ugt i64 %i.i, %i.b
  br i1 %i.j, label %.lr.ph36, label %bb.f

.lr.ph36:                                         ; preds = %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 336
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN6embree13RawBufferViewD2Ev.exit
  %.pre67.pre = load i64, ptr %i.c, align 8
  store i64 %i.b, ptr %i.h, align 16
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph36, %_ZN6embree13RawBufferViewD2Ev.exit
  %i.l = phi i64 [ %i.i, %.lr.ph36 ], [ %i.v, %_ZN6embree13RawBufferViewD2Ev.exit ]
  %.029.i35 = phi i64 [ %i.b, %.lr.ph36 ], [ %i.w, %_ZN6embree13RawBufferViewD2Ev.exit ] ; 2 uses
  %i.m = load ptr, ptr %i.k, align 16
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %i.m, i64 %.029.i35
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not.i.i12 = icmp eq ptr %i.p, null
  br i1 %.not.i.i12, label %_ZN6embree13RawBufferViewD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge unwind label %bb.e

._ZN6embree13RawBufferViewD2Ev.exit_crit_edge:    ; preds = %bb.d
  %.pre = load i64, ptr %i.h, align 16
  br label %_ZN6embree13RawBufferViewD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #25
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit:               ; preds = %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge, %bb.c
  %i.v = phi i64 [ %.pre, %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge ], [ %i.l, %bb.c ] ; 2 uses
  %i.w = add nuw i64 %.029.i35, 1                 ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  br i1 %i.x, label %bb.c, label %._crit_edge, !llvm.loop !19

bb.f:                                             ; preds = %._crit_edge, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit
  %i.y = phi i64 [ %i.b, %._crit_edge ], [ %i.i, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit ] ; 6 uses
  %i.z = phi i64 [ %.pre67.pre, %._crit_edge ], [ %i.d, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit ]
  %i.aa = icmp eq i64 %.07.i, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp samesign ult i64 %i.y, %i.b
  br i1 %i.ab, label %.lr.ph44, label %._crit_edge45

.lr.ph44:                                         ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.ad = sub nuw nsw i64 %i.b, %i.y
  %xtraiter100 = and i64 %i.ad, 1
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph44
  %i.ae = load ptr, ptr %i.ac, align 16
  %i.af = getelementptr inbounds nuw [56 x i8], ptr %i.ae, i64 %i.y ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i8 1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  store i32 0, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store ptr null, ptr %i.aj, align 8
  %i.ak = add nuw nsw i64 %i.y, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph44
  %.028.i42.unr = phi i64 [ %i.y, %.lr.ph44 ], [ %i.ak, %.prol.loopexit.unr-lcssa ]
  %i.al = add nsw i64 %i.b, -1
  %i.am = icmp eq i64 %i.y, %i.al
  br i1 %i.am, label %._crit_edge45, label %.lr.ph44.new

._crit_edge45:                                    ; preds = %.prol.loopexit, %.lr.ph44.new, %bb.g
  store i64 %i.b, ptr %i.h, align 16
  br label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit

.lr.ph44.new:                                     ; preds = %.prol.loopexit, %.lr.ph44.new
  %.028.i42 = phi i64 [ %i.ba, %.lr.ph44.new ], [ %.028.i42.unr, %.prol.loopexit ] ; 3 uses
  %i.an = load ptr, ptr %i.ac, align 16
  %i.ao = getelementptr inbounds nuw [56 x i8], ptr %i.an, i64 %.028.i42 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store i8 1, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 44
  store i32 0, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  store ptr null, ptr %i.as, align 8
  %i.at = load ptr, ptr %i.ac, align 16
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %i.at, i64 %.028.i42 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.av, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  store i8 1, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 100
  store i32 0, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 104
  store ptr null, ptr %i.az, align 8
  %i.ba = add nuw nsw i64 %.028.i42, 2            ; 2 uses
  %exitcond64.not.1 = icmp eq i64 %i.ba, %i.b
  br i1 %exitcond64.not.1, label %._crit_edge45, label %.lr.ph44.new, !llvm.loop !20

bb.h:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 6 uses
  %i.bc = load ptr, ptr %i.bb, align 16           ; 2 uses
  %i.bd = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.be = mul i64 %.07.i, 56
  %i.bf = load ptr, ptr %i.bd, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call noundef ptr %i.bh(ptr noundef nonnull align 8 dereferenceable(1384) %i.bd, i64 noundef %i.be, i64 noundef 8, i32 noundef 3), !inline_history !21
  store ptr %i.bi, ptr %i.bb, align 16
  %i.bj = load i64, ptr %i.h, align 16
  %.not = icmp eq i64 %i.bj, 0
  br i1 %.not, label %.preheader30, label %_ZN6embree13RawBufferViewD2Ev.exit14

.preheader30:                                     ; preds = %_ZN6embree13RawBufferViewD2Ev.exit14, %bb.h
  %.lcssa33 = phi i64 [ 0, %bb.h ], [ %i.cc, %_ZN6embree13RawBufferViewD2Ev.exit14 ] ; 6 uses
  %i.bk = icmp ult i64 %.lcssa33, %i.b
  br i1 %i.bk, label %.lr.ph40.preheader, label %._crit_edge41

.lr.ph40.preheader:                               ; preds = %.preheader30
  %i.bl = sub nuw i64 %i.b, %.lcssa33
  %xtraiter = and i64 %i.bl, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph40.prol.loopexit, label %.lr.ph40.prol

.lr.ph40.prol:                                    ; preds = %.lr.ph40.preheader
  %i.bm = load ptr, ptr %i.bb, align 16
  %i.bn = getelementptr inbounds nuw [56 x i8], ptr %i.bm, i64 %.lcssa33 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bn, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  store i8 1, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  store i32 0, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  store ptr null, ptr %i.br, align 8
  %i.bs = add nuw nsw i64 %.lcssa33, 1
  br label %.lr.ph40.prol.loopexit

.lr.ph40.prol.loopexit:                           ; preds = %.lr.ph40.prol, %.lr.ph40.preheader
  %.0.i39.unr = phi i64 [ %.lcssa33, %.lr.ph40.preheader ], [ %i.bs, %.lr.ph40.prol ]
  %i.bt = add nsw i64 %i.b, -1
  %i.bu = icmp eq i64 %.lcssa33, %i.bt
  br i1 %i.bu, label %._crit_edge41, label %.lr.ph40

_ZN6embree13RawBufferViewD2Ev.exit14:             ; preds = %bb.h, %_ZN6embree13RawBufferViewD2Ev.exit14
  %.027.i37 = phi i64 [ %i.cb, %_ZN6embree13RawBufferViewD2Ev.exit14 ], [ 0, %bb.h ] ; 3 uses
  %i.bv = load ptr, ptr %i.bb, align 16
  %i.bw = getelementptr inbounds nuw [56 x i8], ptr %i.bv, i64 %.027.i37 ; 2 uses
  %i.bx = getelementptr inbounds nuw [56 x i8], ptr %i.bc, i64 %.027.i37 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bw, ptr noundef nonnull align 8 dereferenceable(56) %i.bx, i64 48, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 48 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  store ptr %i.ca, ptr %i.by, align 8
  store ptr null, ptr %i.bz, align 8
  %i.cb = add nuw i64 %.027.i37, 1                ; 2 uses
  %i.cc = load i64, ptr %i.h, align 16            ; 2 uses
  %i.cd = icmp ult i64 %i.cb, %i.cc
  br i1 %i.cd, label %_ZN6embree13RawBufferViewD2Ev.exit14, label %.preheader30, !llvm.loop !0

._crit_edge41:                                    ; preds = %.lr.ph40.prol.loopexit, %.lr.ph40, %.preheader30
  %i.ce = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3fxEEELm8EE10deallocateEPS4_m.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge41
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(1384) %i.ce, ptr noundef %i.bc), !inline_history !22
  br label %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3fxEEELm8EE10deallocateEPS4_m.exit.i

_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3fxEEELm8EE10deallocateEPS4_m.exit.i: ; preds = %bb.i, %._crit_edge41
  store i64 %i.b, ptr %i.h, align 16
  store i64 %.07.i, ptr %i.c, align 8
  br label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit

.lr.ph40:                                         ; preds = %.lr.ph40.prol.loopexit, %.lr.ph40
  %.0.i39 = phi i64 [ %i.cv, %.lr.ph40 ], [ %.0.i39.unr, %.lr.ph40.prol.loopexit ] ; 3 uses
  %i.ci = load ptr, ptr %i.bb, align 16
  %i.cj = getelementptr inbounds nuw [56 x i8], ptr %i.ci, i64 %.0.i39 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cj, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.ck, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  store i8 1, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 44
  store i32 0, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  store ptr null, ptr %i.cn, align 8
  %i.co = load ptr, ptr %i.bb, align 16
  %i.cp = getelementptr inbounds nuw [56 x i8], ptr %i.co, i64 %.0.i39 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cq, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 96
  store i8 1, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 100
  store i32 0, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 104
  store ptr null, ptr %i.cu, align 8
  %i.cv = add nuw nsw i64 %.0.i39, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cv, %i.b
  br i1 %exitcond.not.1, label %._crit_edge41, label %.lr.ph40, !llvm.loop !1

_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit: ; preds = %._crit_edge45, %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3fxEEELm8EE10deallocateEPS4_m.exit.i
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = and i32 %i.cx, 3
  %i.cz = icmp eq i32 %i.cy, 2
  br i1 %i.cz, label %bb.j, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit

bb.j:                                             ; preds = %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.dc = load i64, ptr %i.db, align 8            ; 5 uses
  %.not.i9 = icmp ult i64 %i.dc, %i.b
  br i1 %.not.i9, label %bb.k, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.k, %.lr.ph47
  %.0.i1146 = phi i64 [ %i.de, %.lr.ph47 ], [ %i.dc, %bb.k ]
  %i.de = shl nuw nsw i64 %.0.i1146, 1            ; 3 uses
  %i.df = icmp samesign ult i64 %i.de, %i.b
  br i1 %i.df, label %.lr.ph47, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit, !llvm.loop !23

_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit: ; preds = %.lr.ph47, %bb.j, %bb.k
  %.07.i10 = phi i64 [ %i.b, %bb.k ], [ %i.dc, %bb.j ], [ %i.de, %.lr.ph47 ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 7 uses
  %i.dh = load i64, ptr %i.dg, align 16           ; 3 uses
  %i.di = icmp ugt i64 %i.dh, %i.b
  br i1 %i.di, label %.lr.ph50, label %bb.o

.lr.ph50:                                         ; preds = %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 368
  br label %bb.l

._crit_edge51:                                    ; preds = %_ZN6embree13RawBufferViewD2Ev.exit17
  %.pre69.pre = load i64, ptr %i.db, align 8
  store i64 %i.b, ptr %i.dg, align 16
  br label %bb.o

bb.l:                                             ; preds = %.lr.ph50, %_ZN6embree13RawBufferViewD2Ev.exit17
  %i.dk = phi i64 [ %i.dh, %.lr.ph50 ], [ %i.du, %_ZN6embree13RawBufferViewD2Ev.exit17 ]
  %.029.i849 = phi i64 [ %i.b, %.lr.ph50 ], [ %i.dv, %_ZN6embree13RawBufferViewD2Ev.exit17 ] ; 2 uses
  %i.dl = load ptr, ptr %i.dj, align 16
  %i.dm = getelementptr inbounds nuw [56 x i8], ptr %i.dl, i64 %.029.i849
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.do = load ptr, ptr %i.dn, align 8            ; 3 uses
  %.not.i.i16 = icmp eq ptr %i.do, null
  br i1 %.not.i.i16, label %_ZN6embree13RawBufferViewD2Ev.exit17, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  invoke void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.do)
          to label %._ZN6embree13RawBufferViewD2Ev.exit17_crit_edge unwind label %bb.n

._ZN6embree13RawBufferViewD2Ev.exit17_crit_edge:  ; preds = %bb.m
  %.pre68 = load i64, ptr %i.dg, align 16
  br label %_ZN6embree13RawBufferViewD2Ev.exit17

bb.n:                                             ; preds = %bb.m
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  tail call void @__clang_call_terminate(ptr %i.dt) #25
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit17:             ; preds = %._ZN6embree13RawBufferViewD2Ev.exit17_crit_edge, %bb.l
  %i.du = phi i64 [ %.pre68, %._ZN6embree13RawBufferViewD2Ev.exit17_crit_edge ], [ %i.dk, %bb.l ] ; 2 uses
  %i.dv = add nuw i64 %.029.i849, 1               ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.du
  br i1 %i.dw, label %bb.l, label %._crit_edge51, !llvm.loop !24

bb.o:                                             ; preds = %._crit_edge51, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit
  %i.dx = phi i64 [ %i.b, %._crit_edge51 ], [ %i.dh, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit ] ; 6 uses
  %i.dy = phi i64 [ %.pre69.pre, %._crit_edge51 ], [ %i.dc, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit ]
  %i.dz = icmp eq i64 %.07.i10, %i.dy
  br i1 %i.dz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ea = icmp samesign ult i64 %i.dx, %i.b
  br i1 %i.ea, label %.lr.ph59, label %._crit_edge60

.lr.ph59:                                         ; preds = %bb.p
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.ec = sub nuw nsw i64 %i.b, %i.dx
  %xtraiter106 = and i64 %i.ec, 1
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.prol.loopexit105, label %.prol.loopexit105.unr-lcssa

.prol.loopexit105.unr-lcssa:                      ; preds = %.lr.ph59
  %i.ed = load ptr, ptr %i.eb, align 16
  %i.ee = getelementptr inbounds nuw [56 x i8], ptr %i.ed, i64 %i.dx ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ee, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.ef, align 4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  store i8 1, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 44
  store i32 0, ptr %i.eh, align 4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  store ptr null, ptr %i.ei, align 8
  %i.ej = add nuw nsw i64 %i.dx, 1
  br label %.prol.loopexit105

.prol.loopexit105:                                ; preds = %.prol.loopexit105.unr-lcssa, %.lr.ph59
  %.028.i757.unr = phi i64 [ %i.dx, %.lr.ph59 ], [ %i.ej, %.prol.loopexit105.unr-lcssa ]
  %i.ek = add nsw i64 %i.b, -1
  %i.el = icmp eq i64 %i.dx, %i.ek
  br i1 %i.el, label %._crit_edge60, label %.lr.ph59.new

._crit_edge60:                                    ; preds = %.prol.loopexit105, %.lr.ph59.new, %bb.p
  store i64 %i.b, ptr %i.dg, align 16
  br label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit

.lr.ph59.new:                                     ; preds = %.prol.loopexit105, %.lr.ph59.new
  %.028.i757 = phi i64 [ %i.ez, %.lr.ph59.new ], [ %.028.i757.unr, %.prol.loopexit105 ] ; 3 uses
  %i.em = load ptr, ptr %i.eb, align 16
  %i.en = getelementptr inbounds nuw [56 x i8], ptr %i.em, i64 %.028.i757 ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.en, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.eo, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  store i8 1, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 44
  store i32 0, ptr %i.eq, align 4
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  store ptr null, ptr %i.er, align 8
  %i.es = load ptr, ptr %i.eb, align 16
  %i.et = getelementptr inbounds nuw [56 x i8], ptr %i.es, i64 %.028.i757 ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.eu, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.ev, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  store i8 1, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 100
  store i32 0, ptr %i.ex, align 4
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 104
  store ptr null, ptr %i.ey, align 8
  %i.ez = add nuw nsw i64 %.028.i757, 2           ; 2 uses
  %exitcond66.not.1 = icmp eq i64 %i.ez, %i.b
  br i1 %exitcond66.not.1, label %._crit_edge60, label %.lr.ph59.new, !llvm.loop !25

bb.q:                                             ; preds = %bb.o
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 6 uses
  %i.fb = load ptr, ptr %i.fa, align 16           ; 2 uses
  %i.fc = load ptr, ptr %i.da, align 8            ; 2 uses
  %i.fd = mul i64 %.07.i10, 56
  %i.fe = load ptr, ptr %i.fc, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 64
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = tail call noundef ptr %i.fg(ptr noundef nonnull align 8 dereferenceable(1384) %i.fc, i64 noundef %i.fd, i64 noundef 8, i32 noundef 3), !inline_history !26
  store ptr %i.fh, ptr %i.fa, align 16
  %i.fi = load i64, ptr %i.dg, align 16
  %.not61 = icmp eq i64 %i.fi, 0
  br i1 %.not61, label %.preheader, label %_ZN6embree13RawBufferViewD2Ev.exit19

.preheader:                                       ; preds = %_ZN6embree13RawBufferViewD2Ev.exit19, %bb.q
  %.lcssa = phi i64 [ 0, %bb.q ], [ %i.gb, %_ZN6embree13RawBufferViewD2Ev.exit19 ] ; 6 uses
  %i.fj = icmp ult i64 %.lcssa, %i.b
  br i1 %i.fj, label %.lr.ph55.preheader, label %._crit_edge56

.lr.ph55.preheader:                               ; preds = %.preheader
  %i.fk = sub nuw i64 %i.b, %.lcssa
  %xtraiter102 = and i64 %i.fk, 1
  %lcmp.mod103.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %.lr.ph55.prol.loopexit, label %.lr.ph55.prol

.lr.ph55.prol:                                    ; preds = %.lr.ph55.preheader
  %i.fl = load ptr, ptr %i.fa, align 16
  %i.fm = getelementptr inbounds nuw [56 x i8], ptr %i.fl, i64 %.lcssa ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fm, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.fn, align 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  store i8 1, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 44
  store i32 0, ptr %i.fp, align 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  store ptr null, ptr %i.fq, align 8
  %i.fr = add nuw nsw i64 %.lcssa, 1
  br label %.lr.ph55.prol.loopexit

.lr.ph55.prol.loopexit:                           ; preds = %.lr.ph55.prol, %.lr.ph55.preheader
  %.0.i554.unr = phi i64 [ %.lcssa, %.lr.ph55.preheader ], [ %i.fr, %.lr.ph55.prol ]
  %i.fs = add nsw i64 %i.b, -1
  %i.ft = icmp eq i64 %.lcssa, %i.fs
  br i1 %i.ft, label %._crit_edge56, label %.lr.ph55

_ZN6embree13RawBufferViewD2Ev.exit19:             ; preds = %bb.q, %_ZN6embree13RawBufferViewD2Ev.exit19
  %.027.i452 = phi i64 [ %i.ga, %_ZN6embree13RawBufferViewD2Ev.exit19 ], [ 0, %bb.q ] ; 3 uses
  %i.fu = load ptr, ptr %i.fa, align 16
  %i.fv = getelementptr inbounds nuw [56 x i8], ptr %i.fu, i64 %.027.i452 ; 2 uses
  %i.fw = getelementptr inbounds nuw [56 x i8], ptr %i.fb, i64 %.027.i452 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fv, ptr noundef nonnull align 8 dereferenceable(56) %i.fw, i64 48, i1 false)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 48 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8
  store ptr %i.fz, ptr %i.fx, align 8
  store ptr null, ptr %i.fy, align 8
  %i.ga = add nuw i64 %.027.i452, 1               ; 2 uses
  %i.gb = load i64, ptr %i.dg, align 16           ; 2 uses
  %i.gc = icmp ult i64 %i.ga, %i.gb
  br i1 %i.gc, label %_ZN6embree13RawBufferViewD2Ev.exit19, label %.preheader, !llvm.loop !27

._crit_edge56:                                    ; preds = %.lr.ph55.prol.loopexit, %.lr.ph55, %.preheader
  %i.gd = load ptr, ptr %i.da, align 8            ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i6, label %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3faEEELm8EE10deallocateEPS4_m.exit.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge56
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 72
  %i.gg = load ptr, ptr %i.gf, align 8
  tail call void %i.gg(ptr noundef nonnull align 8 dereferenceable(1384) %i.gd, ptr noundef %i.fb), !inline_history !28
  br label %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3faEEELm8EE10deallocateEPS4_m.exit.i

_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3faEEELm8EE10deallocateEPS4_m.exit.i: ; preds = %bb.r, %._crit_edge56
  store i64 %i.b, ptr %i.dg, align 16
  store i64 %.07.i10, ptr %i.db, align 8
  br label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit

.lr.ph55:                                         ; preds = %.lr.ph55.prol.loopexit, %.lr.ph55
  %.0.i554 = phi i64 [ %i.gu, %.lr.ph55 ], [ %.0.i554.unr, %.lr.ph55.prol.loopexit ] ; 3 uses
  %i.gh = load ptr, ptr %i.fa, align 16
  %i.gi = getelementptr inbounds nuw [56 x i8], ptr %i.gh, i64 %.0.i554 ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gi, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.gj, align 4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  store i8 1, ptr %i.gk, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 44
  store i32 0, ptr %i.gl, align 4
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 48
  store ptr null, ptr %i.gm, align 8
  %i.gn = load ptr, ptr %i.fa, align 16
  %i.go = getelementptr inbounds nuw [56 x i8], ptr %i.gn, i64 %.0.i554 ; 5 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 56
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gp, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.gq, align 4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 96
  store i8 1, ptr %i.gr, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 100
  store i32 0, ptr %i.gs, align 4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 104
  store ptr null, ptr %i.gt, align 8
  %i.gu = add nuw nsw i64 %.0.i554, 2             ; 2 uses
  %exitcond65.not.1 = icmp eq i64 %i.gu, %i.b
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
  br i1 %i.e, label %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0.i110 = phi i64 [ %i.f, %.lr.ph ], [ %i.d, %bb.b ]
  %i.f = shl nuw nsw i64 %.0.i110, 1              ; 3 uses
  %i.g = icmp samesign ult i64 %i.f, %i.b
  br i1 %i.g, label %.lr.ph, label %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit, !llvm.loop !30

_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit: ; preds = %.lr.ph, %bb.a, %bb.b
  %.07.i = phi i64 [ %i.b, %bb.b ], [ %i.d, %bb.a ], [ %i.f, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 7 uses
  %i.i = load i64, ptr %i.h, align 16             ; 3 uses
  %i.j = icmp ugt i64 %i.i, %i.b
  br i1 %i.j, label %.lr.ph12, label %bb.f

.lr.ph12:                                         ; preds = %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 400
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN6embree13RawBufferViewD2Ev.exit
  %.pre24.pre = load i64, ptr %i.c, align 8
  store i64 %i.b, ptr %i.h, align 16
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph12, %_ZN6embree13RawBufferViewD2Ev.exit
  %i.l = phi i64 [ %i.i, %.lr.ph12 ], [ %i.v, %_ZN6embree13RawBufferViewD2Ev.exit ]
  %.029.i11 = phi i64 [ %i.b, %.lr.ph12 ], [ %i.w, %_ZN6embree13RawBufferViewD2Ev.exit ] ; 2 uses
  %i.m = load ptr, ptr %i.k, align 16
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %i.m, i64 %.029.i11
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i2, label %_ZN6embree13RawBufferViewD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge unwind label %bb.e

._ZN6embree13RawBufferViewD2Ev.exit_crit_edge:    ; preds = %bb.d
  %.pre = load i64, ptr %i.h, align 16
  br label %_ZN6embree13RawBufferViewD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #25
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit:               ; preds = %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge, %bb.c
  %i.v = phi i64 [ %.pre, %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge ], [ %i.l, %bb.c ] ; 2 uses
  %i.w = add nuw i64 %.029.i11, 1                 ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  br i1 %i.x, label %bb.c, label %._crit_edge, !llvm.loop !31

bb.f:                                             ; preds = %._crit_edge, %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit
  %i.y = phi i64 [ %i.b, %._crit_edge ], [ %i.i, %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit ] ; 6 uses
  %i.z = phi i64 [ %.pre24.pre, %._crit_edge ], [ %i.d, %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit ]
  %i.aa = icmp eq i64 %.07.i, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp samesign ult i64 %i.y, %i.b
  br i1 %i.ab, label %.lr.ph20, label %._crit_edge21

.lr.ph20:                                         ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.ad = sub nuw nsw i64 %i.b, %i.y
  %xtraiter41 = and i64 %i.ad, 1
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph20
  %i.ae = load ptr, ptr %i.ac, align 16
  %i.af = getelementptr inbounds nuw [56 x i8], ptr %i.ae, i64 %i.y ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i8 1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  store i32 0, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store ptr null, ptr %i.aj, align 8
  %i.ak = add nuw nsw i64 %i.y, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph20
  %.028.i18.unr = phi i64 [ %i.y, %.lr.ph20 ], [ %i.ak, %.prol.loopexit.unr-lcssa ]
  %i.al = add nsw i64 %i.b, -1
  %i.am = icmp eq i64 %i.y, %i.al
  br i1 %i.am, label %._crit_edge21, label %.lr.ph20.new

._crit_edge21:                                    ; preds = %.prol.loopexit, %.lr.ph20.new, %bb.g
  store i64 %i.b, ptr %i.h, align 16
  br label %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE15internal_resizeEmm.exit

.lr.ph20.new:                                     ; preds = %.prol.loopexit, %.lr.ph20.new
  %.028.i18 = phi i64 [ %i.ba, %.lr.ph20.new ], [ %.028.i18.unr, %.prol.loopexit ] ; 3 uses
  %i.an = load ptr, ptr %i.ac, align 16
  %i.ao = getelementptr inbounds nuw [56 x i8], ptr %i.an, i64 %.028.i18 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store i8 1, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 44
  store i32 0, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  store ptr null, ptr %i.as, align 8
  %i.at = load ptr, ptr %i.ac, align 16
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %i.at, i64 %.028.i18 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.av, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  store i8 1, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 100
  store i32 0, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 104
  store ptr null, ptr %i.az, align 8
  %i.ba = add nuw nsw i64 %.028.i18, 2            ; 2 uses
  %exitcond23.not.1 = icmp eq i64 %i.ba, %i.b
  br i1 %exitcond23.not.1, label %._crit_edge21, label %.lr.ph20.new, !llvm.loop !32

bb.h:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 6 uses
  %i.bc = load ptr, ptr %i.bb, align 16           ; 2 uses
  %i.bd = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.be = mul i64 %.07.i, 56
  %i.bf = load ptr, ptr %i.bd, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call noundef ptr %i.bh(ptr noundef nonnull align 8 dereferenceable(1384) %i.bd, i64 noundef %i.be, i64 noundef 8, i32 noundef 3), !inline_history !33
  store ptr %i.bi, ptr %i.bb, align 16
  %i.bj = load i64, ptr %i.h, align 16
  %.not = icmp eq i64 %i.bj, 0
  br i1 %.not, label %.preheader, label %_ZN6embree13RawBufferViewD2Ev.exit4

.preheader:                                       ; preds = %_ZN6embree13RawBufferViewD2Ev.exit4, %bb.h
  %.lcssa = phi i64 [ 0, %bb.h ], [ %i.cc, %_ZN6embree13RawBufferViewD2Ev.exit4 ] ; 6 uses
  %i.bk = icmp ult i64 %.lcssa, %i.b
  br i1 %i.bk, label %.lr.ph16.preheader, label %._crit_edge17

.lr.ph16.preheader:                               ; preds = %.preheader
  %i.bl = sub nuw i64 %i.b, %.lcssa
  %xtraiter = and i64 %i.bl, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph16.prol.loopexit, label %.lr.ph16.prol

.lr.ph16.prol:                                    ; preds = %.lr.ph16.preheader
  %i.bm = load ptr, ptr %i.bb, align 16
  %i.bn = getelementptr inbounds nuw [56 x i8], ptr %i.bm, i64 %.lcssa ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bn, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  store i8 1, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  store i32 0, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  store ptr null, ptr %i.br, align 8
  %i.bs = add nuw nsw i64 %.lcssa, 1
  br label %.lr.ph16.prol.loopexit

.lr.ph16.prol.loopexit:                           ; preds = %.lr.ph16.prol, %.lr.ph16.preheader
  %.0.i15.unr = phi i64 [ %.lcssa, %.lr.ph16.preheader ], [ %i.bs, %.lr.ph16.prol ]
  %i.bt = add nsw i64 %i.b, -1
  %i.bu = icmp eq i64 %.lcssa, %i.bt
  br i1 %i.bu, label %._crit_edge17, label %.lr.ph16

_ZN6embree13RawBufferViewD2Ev.exit4:              ; preds = %bb.h, %_ZN6embree13RawBufferViewD2Ev.exit4
  %.027.i13 = phi i64 [ %i.cb, %_ZN6embree13RawBufferViewD2Ev.exit4 ], [ 0, %bb.h ] ; 3 uses
  %i.bv = load ptr, ptr %i.bb, align 16
  %i.bw = getelementptr inbounds nuw [56 x i8], ptr %i.bv, i64 %.027.i13 ; 2 uses
  %i.bx = getelementptr inbounds nuw [56 x i8], ptr %i.bc, i64 %.027.i13 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bw, ptr noundef nonnull align 8 dereferenceable(56) %i.bx, i64 48, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 48 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  store ptr %i.ca, ptr %i.by, align 8
  store ptr null, ptr %i.bz, align 8
  %i.cb = add nuw i64 %.027.i13, 1                ; 2 uses
  %i.cc = load i64, ptr %i.h, align 16            ; 2 uses
  %i.cd = icmp ult i64 %i.cb, %i.cc
  br i1 %i.cd, label %_ZN6embree13RawBufferViewD2Ev.exit4, label %.preheader, !llvm.loop !34

._crit_edge17:                                    ; preds = %.lr.ph16.prol.loopexit, %.lr.ph16, %.preheader
  %i.ce = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %_ZN6embree6Device9allocatorINS_10BufferViewIcEELm8EE10deallocateEPS3_m.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge17
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(1384) %i.ce, ptr noundef %i.bc), !inline_history !35
  br label %_ZN6embree6Device9allocatorINS_10BufferViewIcEELm8EE10deallocateEPS3_m.exit.i

_ZN6embree6Device9allocatorINS_10BufferViewIcEELm8EE10deallocateEPS3_m.exit.i: ; preds = %bb.i, %._crit_edge17
  store i64 %i.b, ptr %i.h, align 16
  store i64 %.07.i, ptr %i.c, align 8
  br label %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE15internal_resizeEmm.exit

.lr.ph16:                                         ; preds = %.lr.ph16.prol.loopexit, %.lr.ph16
  %.0.i15 = phi i64 [ %i.cv, %.lr.ph16 ], [ %.0.i15.unr, %.lr.ph16.prol.loopexit ] ; 3 uses
  %i.ci = load ptr, ptr %i.bb, align 16
  %i.cj = getelementptr inbounds nuw [56 x i8], ptr %i.ci, i64 %.0.i15 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cj, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.ck, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  store i8 1, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 44
  store i32 0, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  store ptr null, ptr %i.cn, align 8
  %i.co = load ptr, ptr %i.bb, align 16
  %i.cp = getelementptr inbounds nuw [56 x i8], ptr %i.co, i64 %.0.i15 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cq, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 96
  store i8 1, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 100
  store i32 0, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 104
  store ptr null, ptr %i.cu, align 8
  %i.cv = add nuw nsw i64 %.0.i15, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cv, %i.b
  br i1 %exitcond.not.1, label %._crit_edge17, label %.lr.ph16, !llvm.loop !36

_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE15internal_resizeEmm.exit: ; preds = %._crit_edge21, %_ZN6embree6Device9allocatorINS_10BufferViewIcEELm8EE10deallocateEPS3_m.exit.i
  tail call void @_ZN6embree8Geometry6updateEv(ptr noundef nonnull align 16 dereferenceable(88) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6embree12LineSegments9setBufferE13RTCBufferTypej9RTCFormatRKNS_3RefINS_6BufferEEEmmj(ptr noundef nonnull align 16 dereferenceable(416) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %5, i64 noundef %6, i32 noundef %7) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::allocator", align 1   ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::allocator", align 1   ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::allocator", align 1   ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::allocator", align 1   ; 5 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::allocator", align 1   ; 5 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::allocator", align 1   ; 5 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::allocator", align 1   ; 5 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::allocator", align 1   ; 5 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::allocator", align 1   ; 5 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
end_hunk_0
