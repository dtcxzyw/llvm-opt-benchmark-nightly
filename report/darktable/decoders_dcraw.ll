Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/decoders_dcraw?download=true
inline.NumInlined: 144
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN6LibRaw22minolta_rd175_load_rawEv:bb.a
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !99
  %i.dh = zext i8 %i.dg to i16
  %i.di = shl nuw nsw i16 %i.dh, 1
  %i.dj = load i16, ptr %i.d, align 2, !tbaa !117
  %i.dk = zext i16 %i.dj to i32
  %i.dl = mul nsw i32 %.02840, %i.dk
  %i.dm = trunc nuw nsw i64 %indvars.iv.prol to i32
  %i.dn = add nsw i32 %i.dl, %i.dm
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.do
  store i16 %i.di, ptr %i.dp, align 2, !tbaa !97
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 2 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, 3
  br i1 %prol.iter.cmp.not, label %.thread.new, label %bb.p, !llvm.loop !229

.thread.new:                                      ; preds = %bb.p, %.thread.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.thread.new ], [ %indvars.iv.next.prol, %bb.p ] ; 7 uses
  %i.dq = lshr i64 %indvars.iv, 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !99
  %i.dt = zext i8 %i.ds to i16
  %i.du = shl nuw nsw i16 %i.dt, 1
  %i.dv = load i16, ptr %i.d, align 2, !tbaa !117
  %i.dw = zext i16 %i.dv to i32
  %i.dx = mul nsw i32 %.02840, %i.dw
  %i.dy = trunc nuw nsw i64 %indvars.iv to i32
  %i.dz = add nsw i32 %i.dx, %i.dy
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.ea
  store i16 %i.du, ptr %i.eb, align 2, !tbaa !97
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ec = lshr i64 %indvars.iv.next, 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !99
  %i.ef = zext i8 %i.ee to i16
  %i.eg = shl nuw nsw i16 %i.ef, 1
  %i.eh = load i16, ptr %i.d, align 2, !tbaa !117
  %i.ei = zext i16 %i.eh to i32
  %i.ej = mul nsw i32 %.02840, %i.ei
  %i.ek = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.el = add nsw i32 %i.ej, %i.ek
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.em
  store i16 %i.eg, ptr %i.en, align 2, !tbaa !97
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.eo = lshr i64 %indvars.iv.next.1, 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !99
  %i.er = zext i8 %i.eq to i16
  %i.es = shl nuw nsw i16 %i.er, 1
  %i.et = load i16, ptr %i.d, align 2, !tbaa !117
  %i.eu = zext i16 %i.et to i32
  %i.ev = mul nsw i32 %.02840, %i.eu
  %i.ew = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.ex = add nsw i32 %i.ev, %i.ew
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.ey
  store i16 %i.es, ptr %i.ez, align 2, !tbaa !97
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.fa = lshr i64 %indvars.iv.next.2, 1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !99
  %i.fd = zext i8 %i.fc to i16
  %i.fe = shl nuw nsw i16 %i.fd, 1
  %i.ff = load i16, ptr %i.d, align 2, !tbaa !117
  %i.fg = zext i16 %i.ff to i32
  %i.fh = mul nsw i32 %.02840, %i.fg
  %i.fi = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %i.fj = add nsw i32 %i.fh, %i.fi
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.fk
  store i16 %i.fe, ptr %i.fl, align 2, !tbaa !97
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 8
  %i.fm = icmp ult i64 %indvars.iv, 1526
  br i1 %i.fm, label %.thread.new, label %.loopexit, !llvm.loop !230

.loopexit:                                        ; preds = %.thread.new, %.loopexit53, %bb.d, %bb.d
  %i.fn = add nuw nsw i32 %.03146, 1              ; 2 uses
  %exitcond55.not = icmp eq i32 %i.fn, 1481
  br i1 %exitcond55.not, label %bb.q, label %bb.b, !llvm.loop !231

bb.q:                                             ; preds = %.loopexit
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 510, ptr %i.fo, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw22quicktake_100_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(311696) ptr @_Znwm(i64 noundef 311696) #17 ; 19 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(311696) %i.a, i8 -128, i64 311696, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 10 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !138
  %i.d = icmp ugt i16 %i.c, 640
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.f = load i16, ptr %i.e, align 4, !tbaa !137  ; 2 uses
  %i.g = icmp ugt i16 %i.f, 480
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 4) #14 ; 2 uses
  store i32 5, ptr %i.h, align 16, !tbaa !134
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #15
          to label %bb.az unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit:           ; preds = %bb.ax
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit: ; preds = %.lr.ph260
  %lpad.loopexit211 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit: ; preds = %bb.y, %.lr.ph243
  %lpad.loopexit348 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %.lr.ph243.1, %bb.ao
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit: ; preds = %bb.ab
  %lpad.loopexit350 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.ar
  %lpad.loopexit.split-lp351 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit: ; preds = %.lr.ph252
  %lpad.loopexit353 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %.lr.ph252.1
  %lpad.loopexit.split-lp354 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.i, %.lr.ph
  %lpad.loopexit222 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.l
  %lpad.loopexit225 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.e
  %lpad.loopexit227 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c
  %lpad.loopexit.split-lp228 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit ], [ %lpad.loopexit211, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp228, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %lpad.loopexit.split-lp351, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %lpad.loopexit222, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit225, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit227, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit348, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit ], [ %lpad.loopexit350, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit ], [ %lpad.loopexit353, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit ], [ %lpad.loopexit.split-lp354, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 311696) #18
  resume { ptr, i32 } %lpad.phi

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 381584 ; 13 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 0, ptr %i.k, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %i.l, align 4, !tbaa !84
  store i32 0, ptr %i.j, align 8, !tbaa !85
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %.preheader221, label %.lr.ph242

.lr.ph242:                                        ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 381848
  br label %bb.e

.preheader221:                                    ; preds = %._crit_edge, %bb.d
  %i.o = phi i16 [ 0, %bb.d ], [ %i.di, %._crit_edge ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 381848 ; 2 uses
  %.not356 = icmp eq i16 %i.o, 0
  br i1 %.not356, label %._crit_edge253, label %.lr.ph252

bb.e:                                             ; preds = %.lr.ph242, %._crit_edge
  %indvars.iv273 = phi i64 [ 2, %.lr.ph242 ], [ %indvars.iv.next274, %._crit_edge ] ; 5 uses
  %.0240 = phi i32 [ 0, %.lr.ph242 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.0170239 = phi i32 [ 2, %.lr.ph242 ], [ %i.dh, %._crit_edge ] ; 2 uses
  %i.r = and i32 %.0170239, 1
  %i.s = or disjoint i32 %i.r, 2
  %i.t = zext nneg i32 %i.s to i64
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.f unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.f:                                             ; preds = %bb.e
  %i.u = trunc nuw nsw i64 %indvars.iv273 to i32
  %i.v = and i32 %i.u, 1                          ; 3 uses
  %i.w = load i16, ptr %i.b, align 2, !tbaa !138
  %i.x = zext i16 %i.w to i32
  %i.y = icmp samesign ult i32 %i.v, %i.x
  br i1 %i.y, label %.lr.ph236, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.f
  %i.z = or disjoint i32 %i.v, 2
  %.pre297.a = trunc nuw i32 %.0240 to i8
  %i.aa = trunc i64 %indvars.iv273 to i32
  %.pre301 = mul i32 %i.aa, 644
  br label %._crit_edge

.lr.ph236:                                        ; preds = %bb.f
  %invariant.op = or disjoint i32 %i.v, 644
  %i.ab = mul nuw nsw i64 %indvars.iv273, 644     ; 3 uses
  %i.ac = trunc nuw nsw i64 %i.ab to i32          ; 2 uses
  %.reass = add nuw nsw i32 %invariant.op, %i.ac
  %i.ad = xor i32 %.reass, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ae
  %i.ag = icmp eq i64 %indvars.iv273, 2
  %i.ah = getelementptr i8, ptr %i.a, i64 %i.ab
  %i.ai = getelementptr i8, ptr %i.ah, i64 -644
  %invariant.gep = getelementptr i8, ptr %i.a, i64 %i.ab
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph236, %bb.p
  %indvars.iv270 = phi i64 [ %i.t, %.lr.ph236 ], [ %indvars.iv.next271, %bb.p ] ; 5 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 %indvars.iv270 ; 3 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !99
  %i.am = getelementptr i8, ptr %i.aj, i64 1      ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !99
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv270 ; 2 uses
  %i.ao = getelementptr i8, ptr %gep, i64 -2      ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !99
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !76  ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !84 ; 3 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %_ZN6LibRaw10getbithuffEiPt.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !83
  %.not25.i = icmp eq i32 %i.av, 0
  br i1 %.not25.i, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.aw = icmp samesign ult i32 %i.as, 4
  br i1 %i.aw, label %.lr.ph, label %.critedge.loopexit.i

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.j
  %i.ax = load ptr, ptr %i.m, align 8, !tbaa !86  ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !88
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %.noexc unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !119 ; 3 uses

.noexc:                                           ; preds = %.lr.ph
  %.not21.i = icmp eq i32 %i.bb, -1
  br i1 %.not21.i, label %..critedge.loopexit_crit_edge.i, label %bb.h

..critedge.loopexit_crit_edge.i:                  ; preds = %.noexc
  %.pre.pre.i = load ptr, ptr %i.i, align 8, !tbaa !76
  br label %.critedge.loopexit.i

bb.h:                                             ; preds = %.noexc
  %i.bc = load i32, ptr %i.n, align 8, !tbaa !95
  %i.bd = icmp ne i32 %i.bc, 0
  %i.be = icmp eq i32 %i.bb, 255
  %or.cond.i = and i1 %i.be, %i.bd
  br i1 %or.cond.i, label %bb.i, label %.critedge24.i

bb.i:                                             ; preds = %bb.h
  %i.bf = load ptr, ptr %i.m, align 8, !tbaa !86  ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !88
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = invoke noundef i32 %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %.noexc179 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !119

.noexc179:                                        ; preds = %bb.i
  %i.bk = icmp ne i32 %i.bj, 0                    ; 2 uses
  %i.bl = zext i1 %i.bk to i32
  %i.bm = load ptr, ptr %i.i, align 8, !tbaa !76  ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i32 %i.bl, ptr %i.bn, align 8, !tbaa !83
  br i1 %i.bk, label %.critedge.loopexit.i, label %bb.j

.critedge24.i:                                    ; preds = %bb.h
  %i.bo = load ptr, ptr %i.i, align 8, !tbaa !76  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 0, ptr %i.bp, align 8, !tbaa !83
  br label %bb.j

bb.j:                                             ; preds = %.critedge24.i, %.noexc179
  %i.bq = phi ptr [ %i.bo, %.critedge24.i ], [ %i.bm, %.noexc179 ] ; 4 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !85
  %i.bs = shl i32 %i.br, 8
  %i.bt = and i32 %i.bb, 255
  %i.bu = or disjoint i32 %i.bs, %i.bt
  store i32 %i.bu, ptr %i.bq, align 8, !tbaa !85
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !84 ; 2 uses
  %i.bx = add nsw i32 %i.bw, 8
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !84
  %i.by = icmp slt i32 %i.bw, -4
  br i1 %i.by, label %.lr.ph, label %.critedge.loopexit.i, !llvm.loop !1

.critedge.loopexit.i:                             ; preds = %bb.j, %.noexc179, %.lr.ph.i, %..critedge.loopexit_crit_edge.i
  %.pre.i = phi ptr [ %.pre.pre.i, %..critedge.loopexit_crit_edge.i ], [ %i.aq, %.lr.ph.i ], [ %i.bq, %bb.j ], [ %i.bm, %.noexc179 ] ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 4
  %.pre29.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !84
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %i.bz = phi i32 [ %.pre29.i, %.critedge.loopexit.i ], [ %i.as, %.preheader.i ] ; 4 uses
  %i.ca = phi ptr [ %.pre.i, %.critedge.loopexit.i ], [ %i.aq, %.preheader.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4 ; 2 uses
  %i.cc = icmp eq i32 %i.bz, 0
  br i1 %i.cc, label %.thread, label %bb.k

.thread:                                          ; preds = %.critedge.i
  store i32 -4, ptr %i.cb, align 4, !tbaa !84
  br label %bb.l

bb.k:                                             ; preds = %.critedge.i
  %i.cd = load i32, ptr %i.ca, align 8, !tbaa !85
  %i.ce = sub nsw i32 32, %i.bz
  %i.cf = shl i32 %i.cd, %i.ce
  %i.cg = lshr i32 %i.cf, 28                      ; 2 uses
  %.sink.i = add nsw i32 %i.bz, -4
  store i32 %.sink.i, ptr %i.cb, align 4, !tbaa !84
  %i.ch = icmp slt i32 %i.bz, 4
  br i1 %i.ch, label %bb.l, label %_ZN6LibRaw10getbithuffEiPt.exit

bb.l:                                             ; preds = %.thread, %bb.k
  %i.ci = phi i32 [ 0, %.thread ], [ %i.cg, %bb.k ]
  invoke void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %_ZN6LibRaw10getbithuffEiPt.exit unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN6LibRaw10getbithuffEiPt.exit:                  ; preds = %bb.k, %bb.g, %bb.l
  %.016.i = phi i32 [ 0, %bb.g ], [ %i.cg, %bb.k ], [ %i.ci, %bb.l ]
  %i.cj = zext i8 %i.an to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = zext i8 %i.al to i32
  %i.cm = add nuw nsw i32 %i.ck, %i.cl
  %i.cn = zext i8 %i.ap to i32
  %i.co = add nuw nsw i32 %i.cm, %i.cn
  %i.cp = lshr i32 %i.co, 2
  %i.cq = zext nneg i32 %.016.i to i64
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr @_ZZN6LibRaw22quicktake_100_load_rawEvE5gstep, i64 %i.cq
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !97
  %i.ct = sext i16 %i.cs to i32
  %i.cu = add nsw i32 %i.cp, %i.ct
  %i.cv = tail call i32 @llvm.smax.i32(i32 %i.cu, i32 0)
  %i.cw = tail call i32 @llvm.umin.i32(i32 %i.cv, i32 255) ; 2 uses
  %i.cx = trunc nuw i32 %i.cw to i8               ; 6 uses
  store i8 %i.cx, ptr %gep, align 1, !tbaa !99
  %i.cy = icmp samesign ult i64 %indvars.iv270, 4
  br i1 %i.cy, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN6LibRaw10getbithuffEiPt.exit
  store i8 %i.cx, ptr %i.af, align 1, !tbaa !99
  store i8 %i.cx, ptr %i.ao, align 1, !tbaa !99
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN6LibRaw10getbithuffEiPt.exit
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aj, i64 3
  store i8 %i.cx, ptr %i.cz, align 1, !tbaa !99
  store i8 %i.cx, ptr %i.am, align 1, !tbaa !99
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 2 ; 2 uses
  %i.da = load i16, ptr %i.b, align 2, !tbaa !138
  %i.db = zext i16 %i.da to i64
  %i.dc = icmp samesign ult i64 %indvars.iv270, %i.db
  br i1 %i.dc, label %bb.g, label %._crit_edge.loopexit, !llvm.loop !232

._crit_edge.loopexit:                             ; preds = %bb.p
  %i.dd = trunc nuw nsw i64 %indvars.iv.next271 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %._crit_edge.loopexit
  %.pre-phi302 = phi i32 [ %.pre301, %.._crit_edge_crit_edge ], [ %i.ac, %._crit_edge.loopexit ]
  %.pre-phi298.a = phi i8 [ %.pre297.a, %.._crit_edge_crit_edge ], [ %i.cx, %._crit_edge.loopexit ]
  %.0168.lcssa = phi i32 [ %i.z, %.._crit_edge_crit_edge ], [ %i.dd, %._crit_edge.loopexit ]
  %.1.lcssa = phi i32 [ %.0240, %.._crit_edge_crit_edge ], [ %i.cw, %._crit_edge.loopexit ]
  %i.de = add nuw nsw i32 %.0168.lcssa, %.pre-phi302
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.df
  store i8 %.pre-phi298.a, ptr %i.dg, align 1, !tbaa !99
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %i.dh = add nuw nsw i32 %.0170239, 1
  %i.di = load i16, ptr %i.e, align 4, !tbaa !137 ; 2 uses
  %i.dj = zext i16 %i.di to i64
  %1 = add nuw nsw i64 %i.dj, 2
  %2 = icmp samesign ult i64 %indvars.iv.next274, %1
  br i1 %2, label %bb.e, label %.preheader221, !llvm.loop !233

.lr.ph252:                                        ; preds = %.preheader221, %._crit_edge249
  %indvars.iv279 = phi i64 [ %indvars.iv.next280, %._crit_edge249 ], [ 2, %.preheader221 ] ; 4 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.q unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

bb.q:                                             ; preds = %.lr.ph252
  %i.dk = load i16, ptr %i.b, align 2, !tbaa !138
  %i.dl = icmp ugt i16 %i.dk, 1
  br i1 %i.dl, label %.lr.ph248, label %._crit_edge249

.lr.ph248:                                        ; preds = %bb.q
  %i.dm = icmp samesign ult i64 %indvars.iv279, 4 ; 2 uses
  %i.dn = mul nuw nsw i64 %indvars.iv279, 644     ; 4 uses
  %i.do = add nsw i64 %i.dn, -1288
  %invariant.gep319 = getelementptr i8, ptr %i.a, i64 %i.dn
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph248, %bb.af
  %indvars.iv = phi i64 [ 3, %.lr.ph248 ], [ %indvars.iv.next, %bb.af ] ; 7 uses
  %i.dp = icmp samesign ult i64 %indvars.iv, 4    ; 2 uses
  %or.cond = select i1 %i.dm, i1 true, i1 %i.dp
  %.pre = add nsw i64 %i.do, %indvars.iv          ; 2 uses
  br i1 %or.cond, label %._crit_edge294, label %bb.s

._crit_edge294:                                   ; preds = %bb.r
  %.pre295 = add nuw nsw i64 %indvars.iv, %i.dn
  br label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.dq = getelementptr i8, ptr %i.a, i64 %.pre   ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !99
  %i.ds = zext i8 %i.dr to i32                    ; 2 uses
  %i.dt = add nuw nsw i64 %indvars.iv, %i.dn      ; 5 uses
  %i.du = getelementptr i8, ptr %i.a, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 -2
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !99
  %i.dx = zext i8 %i.dw to i32                    ; 2 uses
  %i.dy = sub nsw i32 %i.ds, %i.dx
  %i.dz = tail call i32 @llvm.abs.i32(i32 %i.dy, i1 true)
  %i.ea = getelementptr i8, ptr %i.dq, i64 -2
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !99
  %i.ec = zext i8 %i.eb to i32                    ; 2 uses
  %i.ed = sub nsw i32 %i.ds, %i.ec
  %i.ee = tail call i32 @llvm.abs.i32(i32 %i.ed, i1 true)
  %i.ef = add nuw nsw i32 %i.ee, %i.dz
  %i.eg = sub nsw i32 %i.dx, %i.ec
  %i.eh = tail call i32 @llvm.abs.i32(i32 %i.eg, i1 true)
  %i.ei = add nuw nsw i32 %i.ef, %i.eh            ; 5 uses
  %i.ej = icmp samesign ult i32 %i.ei, 4
  br i1 %i.ej, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ek = icmp samesign ult i32 %i.ei, 8
  br i1 %i.ek, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.el = icmp samesign ult i32 %i.ei, 16
  br i1 %i.el, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.em = icmp samesign ult i32 %i.ei, 32
  %i.en = icmp samesign ult i32 %i.ei, 48
  %i.eo = select i1 %i.en, i64 4, i64 5
  %i.ep = select i1 %i.em, i64 3, i64 %i.eo
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge294, %bb.s, %bb.v, %bb.u, %bb.t
  %.pre-phi296 = phi i64 [ %.pre295, %._crit_edge294 ], [ %i.dt, %bb.s ], [ %i.dt, %bb.v ], [ %i.dt, %bb.u ], [ %i.dt, %bb.t ]
  %.0167 = phi i64 [ 2, %._crit_edge294 ], [ 0, %bb.s ], [ %i.ep, %bb.v ], [ 2, %bb.u ], [ 1, %bb.t ]
  %i.eq = getelementptr inbounds i8, ptr %i.a, i64 %.pre ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !99
  %i.es = getelementptr i8, ptr %i.a, i64 %.pre-phi296 ; 2 uses
  %i.et = getelementptr i8, ptr %i.es, i64 -2
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !99
  %i.ev = load ptr, ptr %i.i, align 8, !tbaa !76  ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !84 ; 3 uses
  %i.ey = icmp slt i32 %i.ex, 0
  br i1 %i.ey, label %_ZN6LibRaw10getbithuffEiPt.exit199, label %.preheader.i181

.preheader.i181:                                  ; preds = %bb.w
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !83
  %.not25.i182 = icmp eq i32 %i.fa, 0
  br i1 %.not25.i182, label %.lr.ph.i186, label %.critedge.i183

.lr.ph.i186:                                      ; preds = %.preheader.i181
  %i.fb = icmp samesign ult i32 %i.ex, 2
  br i1 %i.fb, label %.lr.ph243, label %.critedge.loopexit.i187

.lr.ph243:                                        ; preds = %.lr.ph.i186, %bb.z
  %i.fc = load ptr, ptr %i.p, align 8, !tbaa !86  ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !88
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 56
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = invoke noundef i32 %i.ff(ptr noundef nonnull align 8 dereferenceable(8) %i.fc)
          to label %.noexc196 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit, !inline_history !119 ; 3 uses

.noexc196:                                        ; preds = %.lr.ph243
  %.not21.i191 = icmp eq i32 %i.fg, -1
  br i1 %.not21.i191, label %..critedge.loopexit_crit_edge.i194, label %bb.x

..critedge.loopexit_crit_edge.i194:               ; preds = %.noexc196
  %.pre.pre.i195 = load ptr, ptr %i.i, align 8, !tbaa !76
  br label %.critedge.loopexit.i187

bb.x:                                             ; preds = %.noexc196
  %i.fh = load i32, ptr %i.q, align 8, !tbaa !95
  %i.fi = icmp ne i32 %i.fh, 0
  %i.fj = icmp eq i32 %i.fg, 255
  %or.cond.i192 = and i1 %i.fj, %i.fi
  br i1 %or.cond.i192, label %bb.y, label %.critedge24.i193

bb.y:                                             ; preds = %bb.x
  %i.fk = load ptr, ptr %i.p, align 8, !tbaa !86  ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !88
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 56
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = invoke noundef i32 %i.fn(ptr noundef nonnull align 8 dereferenceable(8) %i.fk)
          to label %.noexc197 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit, !inline_history !119

.noexc197:                                        ; preds = %bb.y
  %i.fp = icmp ne i32 %i.fo, 0                    ; 2 uses
  %i.fq = zext i1 %i.fp to i32
  %i.fr = load ptr, ptr %i.i, align 8, !tbaa !76  ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store i32 %i.fq, ptr %i.fs, align 8, !tbaa !83
  br i1 %i.fp, label %.critedge.loopexit.i187, label %bb.z

.critedge24.i193:                                 ; preds = %bb.x
  %i.ft = load ptr, ptr %i.i, align 8, !tbaa !76  ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store i32 0, ptr %i.fu, align 8, !tbaa !83
  br label %bb.z

bb.z:                                             ; preds = %.critedge24.i193, %.noexc197
  %i.fv = phi ptr [ %i.ft, %.critedge24.i193 ], [ %i.fr, %.noexc197 ] ; 4 uses
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !85
  %i.fx = shl i32 %i.fw, 8
  %i.fy = and i32 %i.fg, 255
  %i.fz = or disjoint i32 %i.fx, %i.fy
  store i32 %i.fz, ptr %i.fv, align 8, !tbaa !85
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 4 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !84 ; 2 uses
  %i.gc = add nsw i32 %i.gb, 8
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !84
  %i.gd = icmp slt i32 %i.gb, -6
  br i1 %i.gd, label %.lr.ph243, label %.critedge.loopexit.i187, !llvm.loop !1

.critedge.loopexit.i187:                          ; preds = %bb.z, %.noexc197, %.lr.ph.i186, %..critedge.loopexit_crit_edge.i194
  %.pre.i188 = phi ptr [ %.pre.pre.i195, %..critedge.loopexit_crit_edge.i194 ], [ %i.ev, %.lr.ph.i186 ], [ %i.fv, %bb.z ], [ %i.fr, %.noexc197 ] ; 2 uses
  %.phi.trans.insert.i189 = getelementptr inbounds nuw i8, ptr %.pre.i188, i64 4
  %.pre29.i190 = load i32, ptr %.phi.trans.insert.i189, align 4, !tbaa !84
  br label %.critedge.i183

.critedge.i183:                                   ; preds = %.critedge.loopexit.i187, %.preheader.i181
  %i.ge = phi i32 [ %.pre29.i190, %.critedge.loopexit.i187 ], [ %i.ex, %.preheader.i181 ] ; 4 uses
  %i.gf = phi ptr [ %.pre.i188, %.critedge.loopexit.i187 ], [ %i.ev, %.preheader.i181 ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4 ; 2 uses
  %i.gh = icmp eq i32 %i.ge, 0
  br i1 %i.gh, label %.thread207, label %bb.aa

.thread207:                                       ; preds = %.critedge.i183
  store i32 -2, ptr %i.gg, align 4, !tbaa !84
  br label %bb.ab

bb.aa:                                            ; preds = %.critedge.i183
  %i.gi = load i32, ptr %i.gf, align 8, !tbaa !85
  %i.gj = sub nsw i32 32, %i.ge
  %i.gk = shl i32 %i.gi, %i.gj
  %i.gl = lshr i32 %i.gk, 30                      ; 2 uses
  %.sink.i184 = add nsw i32 %i.ge, -2
  store i32 %.sink.i184, ptr %i.gg, align 4, !tbaa !84
  %i.gm = icmp slt i32 %i.ge, 2
  br i1 %i.gm, label %bb.ab, label %_ZN6LibRaw10getbithuffEiPt.exit199

bb.ab:                                            ; preds = %.thread207, %bb.aa
  %i.gn = phi i32 [ 0, %.thread207 ], [ %i.gl, %bb.aa ]
  invoke void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %_ZN6LibRaw10getbithuffEiPt.exit199 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

_ZN6LibRaw10getbithuffEiPt.exit199:               ; preds = %bb.aa, %bb.w, %bb.ab
  %.016.i185 = phi i32 [ 0, %bb.w ], [ %i.gl, %bb.aa ], [ %i.gn, %bb.ab ]
  %i.go = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6LibRaw22quicktake_100_load_rawEvE5rstep, i64 %.0167
  %i.gp = zext i8 %i.er to i32
  %i.gq = zext i8 %i.eu to i32
  %i.gr = add nuw nsw i32 %i.gq, %i.gp
  %i.gs = lshr i32 %i.gr, 1
  %i.gt = zext nneg i32 %.016.i185 to i64
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %i.go, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !97
  %i.gw = sext i16 %i.gv to i32
  %i.gx = add nsw i32 %i.gs, %i.gw
  %i.gy = tail call i32 @llvm.smax.i32(i32 %i.gx, i32 0)
  %i.gz = tail call i32 @llvm.umin.i32(i32 %i.gy, i32 255)
  %i.ha = trunc nuw i32 %i.gz to i8               ; 3 uses
  store i8 %i.ha, ptr %i.es, align 1, !tbaa !99
  br i1 %i.dm, label %bb.ac, label %bb.ad

end_hunk_0
begin_hunk_1_@_ZN6LibRaw22quicktake_100_load_rawEv:bb.a
  %i.ih = tail call i32 @llvm.abs.i32(i32 %i.ig, i1 true)
  %i.ii = add nuw nsw i32 %i.if, %i.ih            ; 5 uses
  %i.ij = icmp samesign ult i32 %i.ii, 4
  br i1 %i.ij, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ik = icmp samesign ult i32 %i.ii, 8
  br i1 %i.ik, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.il = icmp samesign ult i32 %i.ii, 16
  br i1 %i.il, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.im = icmp samesign ult i32 %i.ii, 32
  %i.in = icmp samesign ult i32 %i.ii, 48
  %i.io = select i1 %i.in, i64 4, i64 5
  %i.ip = select i1 %i.im, i64 3, i64 %i.io
  br label %bb.am

._crit_edge294.1:                                 ; preds = %bb.ah
  %.pre295.1 = add nuw nsw i64 %indvars.iv.1, %i.hn
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge294.1, %bb.al, %bb.ak, %bb.aj, %bb.ai
  %.pre-phi296.1 = phi i64 [ %.pre295.1, %._crit_edge294.1 ], [ %i.ht, %bb.ai ], [ %i.ht, %bb.al ], [ %i.ht, %bb.ak ], [ %i.ht, %bb.aj ]
  %.0167.1 = phi i64 [ 2, %._crit_edge294.1 ], [ 0, %bb.ai ], [ %i.ip, %bb.al ], [ 2, %bb.ak ], [ 1, %bb.aj ]
  %i.iq = getelementptr inbounds i8, ptr %i.a, i64 %.pre.1 ; 2 uses
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !99
  %i.is = getelementptr i8, ptr %i.a, i64 %.pre-phi296.1 ; 2 uses
  %i.it = getelementptr i8, ptr %i.is, i64 -2
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !99
  %i.iv = load ptr, ptr %i.i, align 8, !tbaa !76  ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !84 ; 3 uses
  %i.iy = icmp slt i32 %i.ix, 0
  br i1 %i.iy, label %_ZN6LibRaw10getbithuffEiPt.exit199.1, label %.preheader.i181.1

.preheader.i181.1:                                ; preds = %bb.am
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !83
  %.not25.i182.1 = icmp eq i32 %i.ja, 0
  br i1 %.not25.i182.1, label %.lr.ph.i186.1, label %.critedge.i183.1

.lr.ph.i186.1:                                    ; preds = %.preheader.i181.1
  %i.jb = icmp samesign ult i32 %i.ix, 2
  br i1 %i.jb, label %.lr.ph243.1, label %.critedge.loopexit.i187.1

.lr.ph243.1:                                      ; preds = %.lr.ph.i186.1, %bb.ap
  %i.jc = load ptr, ptr %i.p, align 8, !tbaa !86  ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !88
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 56
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = invoke noundef i32 %i.jf(ptr noundef nonnull align 8 dereferenceable(8) %i.jc)
          to label %.noexc196.1 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !inline_history !119 ; 3 uses

.noexc196.1:                                      ; preds = %.lr.ph243.1
  %.not21.i191.1 = icmp eq i32 %i.jg, -1
  br i1 %.not21.i191.1, label %..critedge.loopexit_crit_edge.i194.1, label %bb.an

bb.an:                                            ; preds = %.noexc196.1
  %i.jh = load i32, ptr %i.q, align 8, !tbaa !95
  %i.ji = icmp ne i32 %i.jh, 0
  %i.jj = icmp eq i32 %i.jg, 255
  %or.cond.i192.1 = and i1 %i.jj, %i.ji
  br i1 %or.cond.i192.1, label %bb.ao, label %.critedge24.i193.1

.critedge24.i193.1:                               ; preds = %bb.an
  %i.jk = load ptr, ptr %i.i, align 8, !tbaa !76  ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  store i32 0, ptr %i.jl, align 8, !tbaa !83
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.jm = load ptr, ptr %i.p, align 8, !tbaa !86  ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !88
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 56
  %i.jp = load ptr, ptr %i.jo, align 8
  %i.jq = invoke noundef i32 %i.jp(ptr noundef nonnull align 8 dereferenceable(8) %i.jm)
          to label %.noexc197.1 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !inline_history !119

.noexc197.1:                                      ; preds = %bb.ao
  %i.jr = icmp ne i32 %i.jq, 0                    ; 2 uses
  %i.js = zext i1 %i.jr to i32
  %i.jt = load ptr, ptr %i.i, align 8, !tbaa !76  ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store i32 %i.js, ptr %i.ju, align 8, !tbaa !83
  br i1 %i.jr, label %.critedge.loopexit.i187.1, label %bb.ap

bb.ap:                                            ; preds = %.noexc197.1, %.critedge24.i193.1
  %i.jv = phi ptr [ %i.jk, %.critedge24.i193.1 ], [ %i.jt, %.noexc197.1 ] ; 4 uses
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !85
  %i.jx = shl i32 %i.jw, 8
  %i.jy = and i32 %i.jg, 255
  %i.jz = or disjoint i32 %i.jx, %i.jy
  store i32 %i.jz, ptr %i.jv, align 8, !tbaa !85
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 4 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !84 ; 2 uses
  %i.kc = add nsw i32 %i.kb, 8
  store i32 %i.kc, ptr %i.ka, align 4, !tbaa !84
  %i.kd = icmp slt i32 %i.kb, -6
  br i1 %i.kd, label %.lr.ph243.1, label %.critedge.loopexit.i187.1, !llvm.loop !1

..critedge.loopexit_crit_edge.i194.1:             ; preds = %.noexc196.1
  %.pre.pre.i195.1 = load ptr, ptr %i.i, align 8, !tbaa !76
  br label %.critedge.loopexit.i187.1

.critedge.loopexit.i187.1:                        ; preds = %.noexc197.1, %bb.ap, %..critedge.loopexit_crit_edge.i194.1, %.lr.ph.i186.1
  %.pre.i188.1 = phi ptr [ %.pre.pre.i195.1, %..critedge.loopexit_crit_edge.i194.1 ], [ %i.iv, %.lr.ph.i186.1 ], [ %i.jv, %bb.ap ], [ %i.jt, %.noexc197.1 ] ; 2 uses
  %.phi.trans.insert.i189.1 = getelementptr inbounds nuw i8, ptr %.pre.i188.1, i64 4
  %.pre29.i190.1 = load i32, ptr %.phi.trans.insert.i189.1, align 4, !tbaa !84
  br label %.critedge.i183.1

.critedge.i183.1:                                 ; preds = %.critedge.loopexit.i187.1, %.preheader.i181.1
  %i.ke = phi i32 [ %.pre29.i190.1, %.critedge.loopexit.i187.1 ], [ %i.ix, %.preheader.i181.1 ] ; 4 uses
  %i.kf = phi ptr [ %.pre.i188.1, %.critedge.loopexit.i187.1 ], [ %i.iv, %.preheader.i181.1 ] ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 4 ; 2 uses
  %i.kh = icmp eq i32 %i.ke, 0
  br i1 %i.kh, label %.thread207.1, label %bb.aq

bb.aq:                                            ; preds = %.critedge.i183.1
  %i.ki = load i32, ptr %i.kf, align 8, !tbaa !85
  %i.kj = sub nsw i32 32, %i.ke
  %i.kk = shl i32 %i.ki, %i.kj
  %i.kl = lshr i32 %i.kk, 30                      ; 2 uses
  %.sink.i184.1 = add nsw i32 %i.ke, -2
  store i32 %.sink.i184.1, ptr %i.kg, align 4, !tbaa !84
  %i.km = icmp slt i32 %i.ke, 2
  br i1 %i.km, label %bb.ar, label %_ZN6LibRaw10getbithuffEiPt.exit199.1

.thread207.1:                                     ; preds = %.critedge.i183.1
  store i32 -2, ptr %i.kg, align 4, !tbaa !84
  br label %bb.ar

bb.ar:                                            ; preds = %.thread207.1, %bb.aq
  %i.kn = phi i32 [ 0, %.thread207.1 ], [ %i.kl, %bb.aq ]
  invoke void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %_ZN6LibRaw10getbithuffEiPt.exit199.1 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

_ZN6LibRaw10getbithuffEiPt.exit199.1:             ; preds = %bb.ar, %bb.aq, %bb.am
  %.016.i185.1 = phi i32 [ 0, %bb.am ], [ %i.kl, %bb.aq ], [ %i.kn, %bb.ar ]
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6LibRaw22quicktake_100_load_rawEvE5rstep, i64 %.0167.1
  %i.kp = zext i8 %i.ir to i32
  %i.kq = zext i8 %i.iu to i32
  %i.kr = add nuw nsw i32 %i.kq, %i.kp
  %i.ks = lshr i32 %i.kr, 1
  %i.kt = zext nneg i32 %.016.i185.1 to i64
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %i.ko, i64 %i.kt
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !97
  %i.kw = sext i16 %i.kv to i32
  %i.kx = add nsw i32 %i.ks, %i.kw
  %i.ky = tail call i32 @llvm.smax.i32(i32 %i.kx, i32 0)
  %i.kz = tail call i32 @llvm.umin.i32(i32 %i.ky, i32 255)
  %i.la = trunc nuw i32 %i.kz to i8               ; 3 uses
  store i8 %i.la, ptr %i.is, align 1, !tbaa !99
  br i1 %i.hm, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZN6LibRaw10getbithuffEiPt.exit199.1
  %i.lb = getelementptr i8, ptr %i.iq, i64 2
  store i8 %i.la, ptr %i.lb, align 1, !tbaa !99
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZN6LibRaw10getbithuffEiPt.exit199.1
  br i1 %i.hp, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %gep320.1 = getelementptr i8, ptr %invariant.gep319.1, i64 %indvars.iv.1
  %i.lc = getelementptr i8, ptr %gep320.1, i64 1286
  store i8 %i.la, ptr %i.lc, align 1, !tbaa !99
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 2
  %i.ld = load i16, ptr %i.b, align 2, !tbaa !138
  %i.le = zext i16 %i.ld to i64
  %i.lf = icmp samesign ult i64 %indvars.iv.1, %i.le
  br i1 %i.lf, label %bb.ah, label %._crit_edge249.1, !llvm.loop !234

._crit_edge249.1:                                 ; preds = %bb.av, %bb.ag
  %indvars.iv.next280.1 = add nuw nsw i64 %indvars.iv279.1, 2
  %i.lg = load i16, ptr %i.e, align 4, !tbaa !137 ; 2 uses
  %i.lh = zext i16 %i.lg to i64
  %i.li = icmp samesign ult i64 %indvars.iv279.1, %i.lh
  br i1 %i.li, label %.lr.ph252.1, label %._crit_edge253.1, !llvm.loop !235

._crit_edge253.1:                                 ; preds = %._crit_edge249.1, %._crit_edge253
  %i.lj = phi i16 [ %i.hj, %._crit_edge253 ], [ %i.lg, %._crit_edge249.1 ]
  %.not266.a = icmp eq i16 %i.lj, 0
  br i1 %.not266.a, label %_ZNSt6vectorIhSaIhEED2Ev.exit201, label %.lr.ph260

.preheader209:                                    ; preds = %._crit_edge258
  %i.lk = icmp eq i16 %i.ol, 0
  br i1 %i.lk, label %_ZNSt6vectorIhSaIhEED2Ev.exit201, label %.lr.ph265

.lr.ph265:                                        ; preds = %.preheader209
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 193784
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 18
  br label %bb.ax

.lr.ph260:                                        ; preds = %._crit_edge253.1, %._crit_edge258
  %indvars.iv285 = phi i64 [ %indvars.iv.next286, %._crit_edge258 ], [ 2, %._crit_edge253.1 ] ; 3 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.aw unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit

bb.aw:                                            ; preds = %.lr.ph260
  %i.ln = trunc nuw nsw i64 %indvars.iv285 to i32
  %i.lo = and i32 %i.ln, 1
  %i.lp = xor i32 %i.lo, 3                        ; 2 uses
  %i.lq = load i16, ptr %i.b, align 2, !tbaa !138 ; 2 uses
  %i.lr = zext i16 %i.lq to i32
  %i.ls = add nuw nsw i32 %i.lr, 2
  %i.lt = icmp samesign ult i32 %i.lp, %i.ls
  br i1 %i.lt, label %iter.check, label %._crit_edge258

iter.check:                                       ; preds = %bb.aw
  %i.lu = mul nuw nsw i64 %indvars.iv285, 644
  %i.lv = zext nneg i32 %i.lp to i64              ; 7 uses
  %i.lw = zext i16 %i.lq to i64                   ; 2 uses
  %invariant.gep322 = getelementptr i8, ptr %i.a, i64 %i.lu ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.lw, i64 %i.lv)
  %i.lx = add nuw nsw i64 %umax, 1
  %i.ly = sub nsw i64 %i.lx, %i.lv                ; 3 uses
  %i.lz = lshr i64 %i.ly, 1
  %i.ma = add nuw nsw i64 %i.lz, 1                ; 4 uses
  %min.iters.check = icmp ult i64 %i.ly, 16
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check329 = icmp ult i64 %i.ly, 32
  br i1 %min.iters.check329, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.mb = and i64 %i.ma, 15                       ; 2 uses
  %i.mc = icmp eq i64 %i.mb, 0
  %i.md = select i1 %i.mc, i64 16, i64 %i.mb      ; 2 uses
  %n.vec = sub nsw i64 %i.ma, %i.md               ; 3 uses
  %i.me = shl i64 %n.vec, 1
  %i.mf = add i64 %i.me, %i.lv
  %invariant.gep363 = getelementptr i8, ptr %invariant.gep322, i64 %i.lv
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mg = shl nuw i64 %index, 1
  %gep364 = getelementptr i8, ptr %invariant.gep363, i64 %i.mg ; 3 uses
  %i.mh = getelementptr i8, ptr %gep364, i64 -1
  %wide.vec = load <32 x i8>, ptr %i.mh, align 1, !tbaa !99
  %i.mi = freeze <32 x i8> %wide.vec
  %i.mj = bitcast <32 x i8> %i.mi to <16 x i16>
  %i.mk = and <16 x i16> %i.mj, splat (i16 255)
  %wide.vec330 = load <32 x i8>, ptr %gep364, align 1, !tbaa !99
  %i.ml = freeze <32 x i8> %wide.vec330
  %i.mm = bitcast <32 x i8> %i.ml to <16 x i16>   ; 2 uses
  %i.mn = lshr <16 x i16> %i.mm, splat (i16 8)
  %i.mo = shl <16 x i16> %i.mm, splat (i16 2)
  %i.mp = and <16 x i16> %i.mo, splat (i16 1020)
  %i.mq = add nuw nsw <16 x i16> %i.mp, %i.mk
  %i.mr = add nuw nsw <16 x i16> %i.mq, %i.mn
  %i.ms = lshr <16 x i16> %i.mr, splat (i16 1)
  %i.mt = tail call <16 x i16> @llvm.umax.v16i16(<16 x i16> %i.ms, <16 x i16> splat (i16 256))
  %i.mu = tail call <16 x i16> @llvm.umin.v16i16(<16 x i16> %i.mt, <16 x i16> splat (i16 511))
  %i.mv = trunc <16 x i16> %i.mu to <16 x i8>
  %i.mw = shufflevector <16 x i8> %i.mv, <16 x i8> poison, <31 x i32> <i32 0, i32 poison, i32 1, i32 poison, i32 2, i32 poison, i32 3, i32 poison, i32 4, i32 poison, i32 5, i32 poison, i32 6, i32 poison, i32 7, i32 poison, i32 8, i32 poison, i32 9, i32 poison, i32 10, i32 poison, i32 11, i32 poison, i32 12, i32 poison, i32 13, i32 poison, i32 14, i32 poison, i32 15>
  tail call void @llvm.masked.store.v31i8.p0(<31 x i8> %i.mw, ptr align 1 %gep364, <31 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>), !tbaa !99
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.mx = icmp eq i64 %index.next, %n.vec
  br i1 %i.mx, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !236

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp samesign ult i64 %i.md, 9
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !242

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.my = and i64 %i.ma, 7                        ; 2 uses
  %i.mz = icmp eq i64 %i.my, 0
  %i.na = select i1 %i.mz, i64 8, i64 %i.my
  %n.vec333 = sub nsw i64 %i.ma, %i.na            ; 2 uses
  %i.nb = shl i64 %n.vec333, 1
  %i.nc = add i64 %i.nb, %i.lv
  %invariant.gep365 = getelementptr i8, ptr %invariant.gep322, i64 %i.lv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index334 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next340, %vec.epilog.vector.body ] ; 2 uses
  %i.nd = shl nuw i64 %index334, 1
  %gep366 = getelementptr i8, ptr %invariant.gep365, i64 %i.nd ; 3 uses
  %i.ne = getelementptr i8, ptr %gep366, i64 -1
  %wide.vec335 = load <16 x i8>, ptr %i.ne, align 1, !tbaa !99
  %i.nf = freeze <16 x i8> %wide.vec335
  %i.ng = bitcast <16 x i8> %i.nf to <8 x i16>
  %i.nh = and <8 x i16> %i.ng, splat (i16 255)
  %wide.vec337 = load <16 x i8>, ptr %gep366, align 1, !tbaa !99
  %i.ni = freeze <16 x i8> %wide.vec337
  %i.nj = bitcast <16 x i8> %i.ni to <8 x i16>    ; 2 uses
  %i.nk = lshr <8 x i16> %i.nj, splat (i16 8)
  %i.nl = shl <8 x i16> %i.nj, splat (i16 2)
  %i.nm = and <8 x i16> %i.nl, splat (i16 1020)
  %i.nn = add nuw nsw <8 x i16> %i.nm, %i.nh
  %i.no = add nuw nsw <8 x i16> %i.nn, %i.nk
  %i.np = lshr <8 x i16> %i.no, splat (i16 1)
  %i.nq = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.np, <8 x i16> splat (i16 256))
  %i.nr = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.nq, <8 x i16> splat (i16 511))
  %i.ns = trunc <8 x i16> %i.nr to <8 x i8>
  %i.nt = shufflevector <8 x i8> %i.ns, <8 x i8> poison, <15 x i32> <i32 0, i32 poison, i32 1, i32 poison, i32 2, i32 poison, i32 3, i32 poison, i32 4, i32 poison, i32 5, i32 poison, i32 6, i32 poison, i32 7>
  tail call void @llvm.masked.store.v15i8.p0(<15 x i8> %i.nt, ptr align 1 %gep366, <15 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>), !tbaa !99
  %index.next340 = add nuw i64 %index334, 8       ; 2 uses
  %i.nu = icmp eq i64 %index.next340, %n.vec333
  br i1 %i.nu, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !237

vec.epilog.scalar.ph.preheader:                   ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %indvars.iv282.ph = phi i64 [ %i.lv, %iter.check ], [ %i.mf, %vec.epilog.iter.check ], [ %i.nc, %vec.epilog.vector.body ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv282 = phi i64 [ %indvars.iv.next283, %vec.epilog.scalar.ph ], [ %indvars.iv282.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %gep323 = getelementptr i8, ptr %invariant.gep322, i64 %indvars.iv282 ; 4 uses
  %i.nv = getelementptr i8, ptr %gep323, i64 -1
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !99
  %i.nx = zext i8 %i.nw to i16
  %i.ny = load i8, ptr %gep323, align 1, !tbaa !99
  %i.nz = zext i8 %i.ny to i16
  %i.oa = shl nuw nsw i16 %i.nz, 2
  %i.ob = add nuw nsw i16 %i.oa, %i.nx
  %i.oc = getelementptr inbounds nuw i8, ptr %gep323, i64 1
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !99
  %i.oe = zext i8 %i.od to i16
  %i.of = add nuw nsw i16 %i.ob, %i.oe
  %i.og = lshr i16 %i.of, 1
  %i.oh = tail call i16 @llvm.umax.i16(i16 %i.og, i16 256)
  %i.oi = tail call i16 @llvm.umin.i16(i16 %i.oh, i16 511)
  %i.oj = trunc i16 %i.oi to i8
  store i8 %i.oj, ptr %gep323, align 1, !tbaa !99
  %indvars.iv.next283 = add nuw nsw i64 %indvars.iv282, 2
  %i.ok = icmp samesign ult i64 %indvars.iv282, %i.lw
  br i1 %i.ok, label %vec.epilog.scalar.ph, label %._crit_edge258, !llvm.loop !238

._crit_edge258:                                   ; preds = %vec.epilog.scalar.ph, %bb.aw
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %i.ol = load i16, ptr %i.e, align 4, !tbaa !137 ; 2 uses
  %i.om = zext i16 %i.ol to i64
  %3 = add nuw nsw i64 %i.om, 2
  %4 = icmp samesign ult i64 %indvars.iv.next286, %3
  br i1 %4, label %.lr.ph260, label %.preheader209, !llvm.loop !239

bb.ax:                                            ; preds = %.lr.ph265, %._crit_edge263
  %indvars.iv291 = phi i64 [ 0, %.lr.ph265 ], [ %indvars.iv.next292, %._crit_edge263 ] ; 3 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.preheader unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit

.preheader:                                       ; preds = %bb.ax
  %i.on = load i16, ptr %i.b, align 2, !tbaa !138
  %.not268.a = icmp eq i16 %i.on, 0
  br i1 %.not268.a, label %._crit_edge263, label %.lr.ph262

.lr.ph262:                                        ; preds = %.preheader
  %i.oo = mul nuw nsw i64 %indvars.iv291, 644
  %i.op = load ptr, ptr %i.ll, align 8, !tbaa !118
  %i.oq = getelementptr i8, ptr %i.a, i64 %i.oo
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph262, %bb.ay
  %indvars.iv288 = phi i64 [ 0, %.lr.ph262 ], [ %indvars.iv.next289, %bb.ay ] ; 3 uses
  %i.or = getelementptr i8, ptr %i.oq, i64 %indvars.iv288
  %i.os = getelementptr i8, ptr %i.or, i64 1290
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !99
  %i.ou = zext i8 %i.ot to i64
  %i.ov = getelementptr inbounds nuw [2 x i8], ptr @_ZZN6LibRaw22quicktake_100_load_rawEvE7t_curve, i64 %i.ou
  %i.ow = load i16, ptr %i.ov, align 2, !tbaa !97
  %i.ox = load i16, ptr %i.lm, align 2, !tbaa !117
  %i.oy = zext i16 %i.ox to i64
  %i.oz = mul nuw nsw i64 %indvars.iv291, %i.oy
  %i.pa = getelementptr inbounds nuw [2 x i8], ptr %i.op, i64 %i.oz
  %i.pb = getelementptr inbounds nuw [2 x i8], ptr %i.pa, i64 %indvars.iv288
  store i16 %i.ow, ptr %i.pb, align 2, !tbaa !97
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %i.pc = load i16, ptr %i.b, align 2, !tbaa !138
  %i.pd = zext i16 %i.pc to i64
  %i.pe = icmp samesign ult i64 %indvars.iv.next289, %i.pd
  br i1 %i.pe, label %bb.ay, label %._crit_edge263, !llvm.loop !240

._crit_edge263:                                   ; preds = %bb.ay, %.preheader
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %i.pf = load i16, ptr %i.e, align 4, !tbaa !137
  %i.pg = zext i16 %i.pf to i64
  %i.ph = icmp samesign ult i64 %indvars.iv.next292, %i.pg
  br i1 %i.ph, label %bb.ax, label %_ZNSt6vectorIhSaIhEED2Ev.exit201, !llvm.loop !241

_ZNSt6vectorIhSaIhEED2Ev.exit201:                 ; preds = %._crit_edge263, %._crit_edge253.1, %.preheader209
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 1023, ptr %i.pi, align 8, !tbaa !115
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 311696) #18
  ret void

bb.az:                                            ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw13sony_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) initializes((381728, 381730)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 200896, i32 noundef 0), !call_target !107 ; 0 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !86   ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h), !call_target !94
  %i.m = shl i32 %i.l, 2
  %i.n = add i32 %i.m, -1
  %i.o = zext i32 %i.n to i64
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.o, i32 noundef 1), !call_target !107 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 381728
  store i16 19789, ptr %i.t, align 8, !tbaa !146
  %i.u = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !86   ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !88
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i32 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 noundef 164600, i32 noundef 0), !call_target !107 ; 0 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !86  ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !88
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef i32 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 40), !call_target !114 ; 0 uses
  call void @_ZN6LibRaw12sony_decryptEPjiii(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a, i32 noundef 10, i32 noundef 1, i32 noundef %i.u)
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !99
  %i.ah = zext i8 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !99
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ah, 16
  %i.am = shl nuw nsw i32 %i.ak, 8
  %i.an = or disjoint i32 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !99
  %i.aq = zext i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.an, %i.aq
  %i.as = shl nuw i32 %i.ar, 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.au = load i8, ptr %i.at, align 2, !tbaa !99
  %i.av = zext i8 %i.au to i32
  %i.aw = or disjoint i32 %i.as, %i.av
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !86  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !144
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !88
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call noundef i32 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i64 noundef %i.az, i32 noundef 0), !call_target !107 ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = load i16, ptr %i.be, align 8, !tbaa !116
  %.not28 = icmp eq i16 %i.bf, 0
  br i1 %.not28, label %._crit_edge27, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 193784
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph26, %._crit_edge
  %.01724 = phi i32 [ 0, %.lr.ph26 ], [ %i.ch, %._crit_edge ] ; 3 uses
  call void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !118
  %i.bj = load i16, ptr %i.bh, align 2, !tbaa !117 ; 2 uses
  %i.bk = zext i16 %i.bj to i32
  %i.bl = mul nuw i32 %.01724, %i.bk
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.bm ; 3 uses
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !86  ; 2 uses
  %i.bp = zext i16 %i.bj to i64
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !88
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noundef i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef %i.bn, i64 noundef 2, i64 noundef %i.bp), !call_target !114
  %i.bu = load i16, ptr %i.bh, align 2, !tbaa !117 ; 2 uses
  %i.bv = zext i16 %i.bu to i32
  %i.bw = icmp slt i32 %i.bt, %i.bv
  br i1 %i.bw, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %.pre = load i16, ptr %i.bh, align 2, !tbaa !117
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bx = phi i16 [ %.pre, %bb.c ], [ %i.bu, %bb.b ]
  %i.by = lshr i16 %i.bx, 1
  %i.bz = zext nneg i16 %i.by to i32
  %.not = icmp eq i32 %.01724, 0
  %i.ca = zext i1 %.not to i32
  call void @_ZN6LibRaw12sony_decryptEPjiii(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.bn, i32 noundef %i.bz, i32 noundef %i.ca, i32 noundef %i.aw)
  %i.cb = load i16, ptr %i.bh, align 2, !tbaa !117
  %.not29 = icmp eq i16 %i.cb, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %indvars.iv ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !97
  %rev.i = call noundef i16 @llvm.bswap.i16(i16 %i.cd) ; 2 uses
  store i16 %rev.i, ptr %i.cc, align 2, !tbaa !97
  %.not20 = icmp ult i16 %rev.i, 16384
  br i1 %.not20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ce = load i16, ptr %i.bh, align 2, !tbaa !117
  %i.cf = zext i16 %i.ce to i64
  %i.cg = icmp samesign ult i64 %indvars.iv.next, %i.cf
  br i1 %i.cg, label %.lr.ph, label %._crit_edge, !llvm.loop !243

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %i.ch = add nuw nsw i32 %.01724, 1              ; 2 uses
  %i.ci = load i16, ptr %i.be, align 8, !tbaa !116
  %i.cj = zext i16 %i.ci to i32
  %i.ck = icmp samesign ult i32 %i.ch, %i.cj
  br i1 %i.ck, label %bb.b, label %._crit_edge27, !llvm.loop !244

._crit_edge27:                                    ; preds = %._crit_edge, %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 16368, ptr %i.cl, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

declare noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #2

declare void @_ZN6LibRaw12sony_decryptEPjiii(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

end_hunk_1
