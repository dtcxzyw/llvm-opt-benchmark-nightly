Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/decoders_libraw?download=true
inline.NumInlined: 308
inline.NumDeleted: 133
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_Z13decode_S_typeiPjPt:_ZN15iiq_bitstream_t3getEc.exit
  %i.pz = or disjoint i64 %i.py, %i.px
  %i.qa = add nuw nsw i8 %.sroa.68.4.6, 32
  br label %_ZN15iiq_bitstream_t4peekEh.exit.i91.7

_ZN15iiq_bitstream_t4peekEh.exit.i91.7:           ; preds = %bb.av, %bb.au
  %.sroa.33.19.7 = phi ptr [ %i.pv, %bb.av ], [ %.sroa.33.4.6, %bb.au ] ; 3 uses
  %.sroa.0.19.7 = phi i64 [ %i.pz, %bb.av ], [ %.sroa.0.4.6, %bb.au ] ; 3 uses
  %i.qb = phi i8 [ %i.qa, %bb.av ], [ %.sroa.68.4.6, %bb.au ] ; 5 uses
  %.not.i.i.i93.7 = icmp uge i8 %i.dg, %i.qb
  %i.qc = icmp ult i8 %i.qb, 33
  %or.cond.i.i.i.7 = and i1 %.not.i.i.i93.7, %i.qc
  br i1 %or.cond.i.i.i.7, label %bb.aw, label %_ZN15iiq_bitstream_t3getEc.exit94.7

bb.aw:                                            ; preds = %_ZN15iiq_bitstream_t4peekEh.exit.i91.7
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.33.19.7, i64 4
  %i.qe = load i32, ptr %.sroa.33.19.7, align 4, !tbaa !118
  %i.qf = zext i32 %i.qe to i64
  %i.qg = shl i64 %.sroa.0.19.7, 32
  %i.qh = or disjoint i64 %i.qg, %i.qf
  %i.qi = add nuw nsw i8 %i.qb, 32
  br label %_ZN15iiq_bitstream_t3getEc.exit94.7

_ZN15iiq_bitstream_t3getEc.exit94.7:              ; preds = %bb.aw, %_ZN15iiq_bitstream_t4peekEh.exit.i91.7
  %.sroa.33.20.7 = phi ptr [ %i.qd, %bb.aw ], [ %.sroa.33.19.7, %_ZN15iiq_bitstream_t4peekEh.exit.i91.7 ]
  %.sroa.0.20.7 = phi i64 [ %i.qh, %bb.aw ], [ %.sroa.0.19.7, %_ZN15iiq_bitstream_t4peekEh.exit.i91.7 ]
  %i.qj = phi i8 [ %i.qi, %bb.aw ], [ %i.qb, %_ZN15iiq_bitstream_t4peekEh.exit.i91.7 ]
  %i.qk = zext i8 %i.qb to i32
  %i.ql = sub nsw i32 %i.qk, %i.do
  %i.qm = zext nneg i32 %i.ql to i64
  %i.qn = lshr i64 %.sroa.0.19.7, %i.qm
  %i.qo = sub i8 %i.qj, %i.dg
  %i.qp = trunc i64 %i.qn to i32
  %i.qq = and i32 %i.qp, %i.dp
  %i.qr = shl i32 %i.qq, %i.dj
  %i.qs = add i32 %i.qr, %.045.5
  %i.qt = sub i32 %i.qs, %i.dn
  br label %bb.ay

bb.ax:                                            ; preds = %bb.at
  %.not.i.i81.7 = icmp ult i8 %.sroa.68.4.6, 15
  br i1 %.not.i.i81.7, label %_ZN15iiq_bitstream_t4peekEh.exit.i84.thread.7, label %_ZN15iiq_bitstream_t3getEc.exit87.7

_ZN15iiq_bitstream_t4peekEh.exit.i84.thread.7:    ; preds = %bb.ax
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.33.4.6, i64 4
  %i.qv = load i32, ptr %.sroa.33.4.6, align 4, !tbaa !118
  %i.qw = zext i32 %i.qv to i64
  %i.qx = shl i64 %.sroa.0.4.6, 32
  %i.qy = or disjoint i64 %i.qx, %i.qw
  %i.qz = or disjoint i8 %.sroa.68.4.6, 32
  br label %_ZN15iiq_bitstream_t3getEc.exit87.7

_ZN15iiq_bitstream_t3getEc.exit87.7:              ; preds = %_ZN15iiq_bitstream_t4peekEh.exit.i84.thread.7, %bb.ax
  %.pre.i.i.i85155.7 = phi i64 [ %i.qy, %_ZN15iiq_bitstream_t4peekEh.exit.i84.thread.7 ], [ %.sroa.0.4.6, %bb.ax ] ; 2 uses
  %i.ra = phi i8 [ %i.qz, %_ZN15iiq_bitstream_t4peekEh.exit.i84.thread.7 ], [ %.sroa.68.4.6, %bb.ax ] ; 2 uses
  %.sroa.33.18.7 = phi ptr [ %i.qu, %_ZN15iiq_bitstream_t4peekEh.exit.i84.thread.7 ], [ %.sroa.33.4.6, %bb.ax ]
  %i.rb = zext i8 %i.ra to i64
  %i.rc = add nuw nsw i64 %i.rb, 4294967282
  %i.rd = and i64 %i.rc, 4294967295
  %i.re = lshr i64 %.pre.i.i.i85155.7, %i.rd
  %i.rf = add i8 %i.ra, -14
  %i.rg = trunc i64 %i.re to i32
  %i.rh = and i32 %i.rg, 16383
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN15iiq_bitstream_t3getEc.exit87.7, %_ZN15iiq_bitstream_t3getEc.exit94.7
  %.sroa.68.4.7 = phi i8 [ %i.rf, %_ZN15iiq_bitstream_t3getEc.exit87.7 ], [ %i.qo, %_ZN15iiq_bitstream_t3getEc.exit94.7 ] ; 2 uses
  %.sroa.33.4.7 = phi ptr [ %.sroa.33.18.7, %_ZN15iiq_bitstream_t3getEc.exit87.7 ], [ %.sroa.33.20.7, %_ZN15iiq_bitstream_t3getEc.exit94.7 ] ; 2 uses
  %.sroa.0.4.7 = phi i64 [ %.pre.i.i.i85155.7, %_ZN15iiq_bitstream_t3getEc.exit87.7 ], [ %.sroa.0.20.7, %_ZN15iiq_bitstream_t3getEc.exit94.7 ] ; 2 uses
  %.045.7 = phi i32 [ %i.rh, %_ZN15iiq_bitstream_t3getEc.exit87.7 ], [ %i.qt, %_ZN15iiq_bitstream_t3getEc.exit94.7 ] ; 2 uses
  %i.ri = shl i32 %.045.7, 2
  %i.rj = tail call i32 @llvm.smax.i32(i32 %i.ri, i32 0)
  %i.rk = tail call i32 @llvm.umin.i32(i32 %i.rj, i32 65535)
  %i.rl = trunc nuw i32 %i.rk to i16
  %i.rm = getelementptr inbounds nuw i8, ptr %.0177, i64 14
  store i16 %i.rl, ptr %i.rm, align 2, !tbaa !93
  %i.rn = getelementptr inbounds nuw i8, ptr %.0177, i64 16 ; 2 uses
  %i.ro = add nuw nsw i32 %.047176, 1
  %exitcond.not = icmp eq i32 %.047176, %i.b
  br i1 %exitcond.not, label %.loopexit167, label %bb.b, !llvm.loop !186

.loopexit167:                                     ; preds = %bb.ay, %bb.a, %_ZN15iiq_bitstream_t3getEc.exit
  %.sroa.68.5 = phi i8 [ 16, %_ZN15iiq_bitstream_t3getEc.exit ], [ 16, %bb.a ], [ %.sroa.68.4.7, %bb.ay ] ; 4 uses
  %.sroa.33.5 = phi ptr [ %i.e, %_ZN15iiq_bitstream_t3getEc.exit ], [ %i.e, %bb.a ], [ %.sroa.33.4.7, %bb.ay ] ; 4 uses
  %.sroa.0.5 = phi i64 [ %i.g, %_ZN15iiq_bitstream_t3getEc.exit ], [ %i.g, %bb.a ], [ %.sroa.0.4.7, %bb.ay ] ; 3 uses
  %.1 = phi ptr [ %2, %_ZN15iiq_bitstream_t3getEc.exit ], [ %2, %bb.a ], [ %i.rn, %bb.ay ] ; 3 uses
  %i.rp = icmp slt i32 %i.d, %0
  br i1 %i.rp, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.loopexit167
  %i.rq = add i32 %0, -9
  %xtraiter = and i32 %0, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader
  %i.rr = icmp ult i8 %.sroa.68.5, 33
  br i1 %i.rr, label %_ZN15iiq_bitstream_t4fillEv.exit.thread.prol, label %_ZN15iiq_bitstream_t3getEc.exit102.prol

_ZN15iiq_bitstream_t4fillEv.exit.thread.prol:     ; preds = %.preheader.prol
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.33.5, i64 4
  %i.rt = load i32, ptr %.sroa.33.5, align 4, !tbaa !118
  %i.ru = zext i32 %i.rt to i64
  %i.rv = shl i64 %.sroa.0.5, 32
  %i.rw = or disjoint i64 %i.rv, %i.ru
  %i.rx = add nuw nsw i8 %.sroa.68.5, 32
  br label %_ZN15iiq_bitstream_t3getEc.exit102.prol

_ZN15iiq_bitstream_t3getEc.exit102.prol:          ; preds = %_ZN15iiq_bitstream_t4fillEv.exit.thread.prol, %.preheader.prol
  %.pre.i.i.i99164.prol = phi i64 [ %i.rw, %_ZN15iiq_bitstream_t4fillEv.exit.thread.prol ], [ %.sroa.0.5, %.preheader.prol ] ; 2 uses
  %i.ry = phi i8 [ %i.rx, %_ZN15iiq_bitstream_t4fillEv.exit.thread.prol ], [ %.sroa.68.5, %.preheader.prol ] ; 2 uses
  %.sroa.33.23.prol = phi ptr [ %i.rs, %_ZN15iiq_bitstream_t4fillEv.exit.thread.prol ], [ %.sroa.33.5, %.preheader.prol ]
  %i.rz = zext i8 %i.ry to i64
  %i.sa = add nuw nsw i64 %i.rz, 4294967282
  %i.sb = and i64 %i.sa, 4294967295
  %i.sc = lshr i64 %.pre.i.i.i99164.prol, %i.sb
  %i.sd = add i8 %i.ry, -14
  %i.se = trunc i64 %i.sc to i16
  %i.sf = add i32 %i.c, 9
  %i.sg = shl i16 %i.se, 2
  %i.sh = getelementptr inbounds nuw i8, ptr %.1, i64 2
  store i16 %i.sg, ptr %.1, align 2, !tbaa !93
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %_ZN15iiq_bitstream_t3getEc.exit102.prol, %.preheader.preheader
  %.sroa.68.6.unr = phi i8 [ %.sroa.68.5, %.preheader.preheader ], [ %i.sd, %_ZN15iiq_bitstream_t3getEc.exit102.prol ]
  %.sroa.33.6.unr = phi ptr [ %.sroa.33.5, %.preheader.preheader ], [ %.sroa.33.23.prol, %_ZN15iiq_bitstream_t3getEc.exit102.prol ]
  %.sroa.0.6.unr = phi i64 [ %.sroa.0.5, %.preheader.preheader ], [ %.pre.i.i.i99164.prol, %_ZN15iiq_bitstream_t3getEc.exit102.prol ]
  %.048.unr = phi i32 [ %i.d, %.preheader.preheader ], [ %i.sf, %_ZN15iiq_bitstream_t3getEc.exit102.prol ]
  %.2.unr = phi ptr [ %.1, %.preheader.preheader ], [ %i.sh, %_ZN15iiq_bitstream_t3getEc.exit102.prol ]
  %i.si = icmp eq i32 %i.rq, %i.c
  br i1 %i.si, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %_ZN15iiq_bitstream_t3getEc.exit102.1
  %.sroa.68.6 = phi i8 [ %i.tl, %_ZN15iiq_bitstream_t3getEc.exit102.1 ], [ %.sroa.68.6.unr, %.preheader.prol.loopexit ] ; 3 uses
  %.sroa.33.6 = phi ptr [ %.sroa.33.23.1, %_ZN15iiq_bitstream_t3getEc.exit102.1 ], [ %.sroa.33.6.unr, %.preheader.prol.loopexit ] ; 3 uses
  %.sroa.0.6 = phi i64 [ %.pre.i.i.i99164.1, %_ZN15iiq_bitstream_t3getEc.exit102.1 ], [ %.sroa.0.6.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.048 = phi i32 [ %i.tn, %_ZN15iiq_bitstream_t3getEc.exit102.1 ], [ %.048.unr, %.preheader.prol.loopexit ]
  %.2 = phi ptr [ %i.tp, %_ZN15iiq_bitstream_t3getEc.exit102.1 ], [ %.2.unr, %.preheader.prol.loopexit ] ; 3 uses
  %i.sj = icmp ult i8 %.sroa.68.6, 33
  br i1 %i.sj, label %_ZN15iiq_bitstream_t4fillEv.exit.thread, label %_ZN15iiq_bitstream_t3getEc.exit102

_ZN15iiq_bitstream_t4fillEv.exit.thread:          ; preds = %.preheader
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.33.6, i64 4
  %i.sl = load i32, ptr %.sroa.33.6, align 4, !tbaa !118
  %i.sm = zext i32 %i.sl to i64
  %i.sn = shl i64 %.sroa.0.6, 32
  %i.so = or disjoint i64 %i.sn, %i.sm
  %i.sp = add nuw nsw i8 %.sroa.68.6, 32
  br label %_ZN15iiq_bitstream_t3getEc.exit102

_ZN15iiq_bitstream_t3getEc.exit102:               ; preds = %.preheader, %_ZN15iiq_bitstream_t4fillEv.exit.thread
  %.pre.i.i.i99164 = phi i64 [ %i.so, %_ZN15iiq_bitstream_t4fillEv.exit.thread ], [ %.sroa.0.6, %.preheader ] ; 3 uses
  %i.sq = phi i8 [ %i.sp, %_ZN15iiq_bitstream_t4fillEv.exit.thread ], [ %.sroa.68.6, %.preheader ] ; 3 uses
  %.sroa.33.23 = phi ptr [ %i.sk, %_ZN15iiq_bitstream_t4fillEv.exit.thread ], [ %.sroa.33.6, %.preheader ] ; 3 uses
  %i.sr = zext i8 %i.sq to i64
  %i.ss = add nuw nsw i64 %i.sr, 4294967282
  %i.st = and i64 %i.ss, 4294967295
  %i.su = lshr i64 %.pre.i.i.i99164, %i.st
  %i.sv = add i8 %i.sq, -14                       ; 2 uses
  %i.sw = trunc i64 %i.su to i16
  %i.sx = shl i16 %i.sw, 2
  %i.sy = getelementptr inbounds nuw i8, ptr %.2, i64 2
  store i16 %i.sx, ptr %.2, align 2, !tbaa !93
  %i.sz = icmp ult i8 %i.sv, 33
  br i1 %i.sz, label %_ZN15iiq_bitstream_t4fillEv.exit.thread.1, label %_ZN15iiq_bitstream_t3getEc.exit102.1

_ZN15iiq_bitstream_t4fillEv.exit.thread.1:        ; preds = %_ZN15iiq_bitstream_t3getEc.exit102
  %i.ta = getelementptr inbounds nuw i8, ptr %.sroa.33.23, i64 4
  %i.tb = load i32, ptr %.sroa.33.23, align 4, !tbaa !118
  %i.tc = zext i32 %i.tb to i64
  %i.td = shl i64 %.pre.i.i.i99164, 32
  %i.te = or disjoint i64 %i.td, %i.tc
  %i.tf = add nuw nsw i8 %i.sq, 18
  br label %_ZN15iiq_bitstream_t3getEc.exit102.1

_ZN15iiq_bitstream_t3getEc.exit102.1:             ; preds = %_ZN15iiq_bitstream_t4fillEv.exit.thread.1, %_ZN15iiq_bitstream_t3getEc.exit102
  %.pre.i.i.i99164.1 = phi i64 [ %i.te, %_ZN15iiq_bitstream_t4fillEv.exit.thread.1 ], [ %.pre.i.i.i99164, %_ZN15iiq_bitstream_t3getEc.exit102 ] ; 2 uses
  %i.tg = phi i8 [ %i.tf, %_ZN15iiq_bitstream_t4fillEv.exit.thread.1 ], [ %i.sv, %_ZN15iiq_bitstream_t3getEc.exit102 ] ; 2 uses
  %.sroa.33.23.1 = phi ptr [ %i.ta, %_ZN15iiq_bitstream_t4fillEv.exit.thread.1 ], [ %.sroa.33.23, %_ZN15iiq_bitstream_t3getEc.exit102 ]
  %i.th = zext i8 %i.tg to i64
  %i.ti = add nuw nsw i64 %i.th, 4294967282
  %i.tj = and i64 %i.ti, 4294967295
  %i.tk = lshr i64 %.pre.i.i.i99164.1, %i.tj
  %i.tl = add i8 %i.tg, -14
  %i.tm = trunc i64 %i.tk to i16
  %i.tn = add nsw i32 %.048, 2                    ; 2 uses
  %i.to = shl i16 %i.tm, 2
  %i.tp = getelementptr inbounds nuw i8, ptr %.2, i64 4
  store i16 %i.to, ptr %i.sy, align 2, !tbaa !93
  %exitcond182.not.1 = icmp eq i32 %i.tn, %0
  br i1 %exitcond182.not.1, label %.loopexit, label %.preheader, !llvm.loop !187

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %_ZN15iiq_bitstream_t3getEc.exit102.1, %.loopexit167
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw20phase_one_load_raw_sEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 381752
  %i.c = load i64, ptr %i.b, align 8, !tbaa !188  ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 193784 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76
  %.not29 = icmp eq ptr %i.e, null
  br i1 %.not29, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 381760 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !115
  %.not30 = icmp eq i64 %i.g, 0
  br i1 %.not30, label %bb.d, label %iter.check

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 4) #14 ; 2 uses
  store i32 5, ptr %i.h, align 16, !tbaa !74
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #15
  unreachable

iter.check:                                       ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.j = load i16, ptr %i.i, align 8, !tbaa !78   ; 3 uses
  %i.k = zext i16 %i.j to i64
  %i.l = add nuw nsw i64 %i.k, 1                  ; 9 uses
  %i.m = shl nuw nsw i64 %i.l, 4                  ; 3 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #16 ; 13 uses
  %min.iters.check = icmp ult i16 %i.j, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check94 = icmp ult i16 %i.j, 15
  br i1 %min.iters.check94, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.l, 12
  %n.vec = and i64 %i.l, 131056                   ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 4
  %i.q = getelementptr i8, ptr %i.n, i64 %i.p     ; 3 uses
  %i.r = and i64 %i.l, 15
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.n, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 16, i64 32, i64 48> ; 8 uses
  %step.add109 = getelementptr i8, <4 x ptr> %vector.gep, i64 64
  %step.add.2110 = getelementptr i8, <4 x ptr> %vector.gep, i64 128
  %step.add.3111 = getelementptr i8, <4 x ptr> %vector.gep, i64 192
  tail call void @llvm.masked.scatter.v4i32.v4p0(<4 x i32> zeroinitializer, <4 x ptr> align 8 %vector.gep, <4 x i1> splat (i1 true)), !tbaa !189
  tail call void @llvm.masked.scatter.v4i32.v4p0(<4 x i32> zeroinitializer, <4 x ptr> align 8 %step.add109, <4 x i1> splat (i1 true)), !tbaa !189
  tail call void @llvm.masked.scatter.v4i32.v4p0(<4 x i32> zeroinitializer, <4 x ptr> align 8 %step.add.2110, <4 x i1> splat (i1 true)), !tbaa !189
  tail call void @llvm.masked.scatter.v4i32.v4p0(<4 x i32> zeroinitializer, <4 x ptr> align 8 %step.add.3111, <4 x i1> splat (i1 true)), !tbaa !189
  %wide.gep = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 8
  %wide.gep95.a = getelementptr i8, <4 x ptr> %vector.gep, i64 72
  %wide.gep96.a = getelementptr i8, <4 x ptr> %vector.gep, i64 136
  %wide.gep97 = getelementptr i8, <4 x ptr> %vector.gep, i64 200
  tail call void @llvm.masked.scatter.v4i64.v4p0(<4 x i64> zeroinitializer, <4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !191
  tail call void @llvm.masked.scatter.v4i64.v4p0(<4 x i64> zeroinitializer, <4 x ptr> align 8 %wide.gep95.a, <4 x i1> splat (i1 true)), !tbaa !191
  tail call void @llvm.masked.scatter.v4i64.v4p0(<4 x i64> zeroinitializer, <4 x ptr> align 8 %wide.gep96.a, <4 x i1> splat (i1 true)), !tbaa !191
  tail call void @llvm.masked.scatter.v4i64.v4p0(<4 x i64> zeroinitializer, <4 x ptr> align 8 %wide.gep97, <4 x i1> splat (i1 true)), !tbaa !191
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 256
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !192

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI13p1_row_info_tSaIS0_EEC2EmRKS1_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !193

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi ptr [ %i.q, %vec.epilog.iter.check ], [ %i.n, %vector.main.loop.iter.check ]
  %n.vec99 = and i64 %i.l, 131068                 ; 3 uses
  %i.t = shl nuw nsw i64 %n.vec99, 4
  %i.u = getelementptr i8, ptr %i.n, i64 %i.t     ; 2 uses
  %i.v = and i64 %i.l, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index100 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next104, %vec.epilog.vector.body ]
  %pointer.phi101 = phi ptr [ %bc.resume.val, %vec.epilog.ph ], [ %ptr.ind105, %vec.epilog.vector.body ] ; 2 uses
  %vector.gep102 = getelementptr i8, ptr %pointer.phi101, <4 x i64> <i64 0, i64 16, i64 32, i64 48> ; 2 uses
  tail call void @llvm.masked.scatter.v4i32.v4p0(<4 x i32> zeroinitializer, <4 x ptr> align 8 %vector.gep102, <4 x i1> splat (i1 true)), !tbaa !189
  %wide.gep103 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep102, i64 8
  tail call void @llvm.masked.scatter.v4i64.v4p0(<4 x i64> zeroinitializer, <4 x ptr> align 8 %wide.gep103, <4 x i1> splat (i1 true)), !tbaa !191
  %index.next104 = add nuw i64 %index100, 4       ; 2 uses
  %ptr.ind105 = getelementptr i8, ptr %pointer.phi101, i64 64
  %i.w = icmp eq i64 %index.next104, %n.vec99
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !194

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n106 = icmp eq i64 %i.l, %n.vec99
  br i1 %cmp.n106, label %_ZNSt6vectorI13p1_row_info_tSaIS0_EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.013.i.i.i.i.i.ph = phi ptr [ %i.n, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  %.01012.i.i.i.i.i.ph = phi i64 [ %i.l, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  store i32 0, ptr %.013.i.i.i.i.i, align 8, !tbaa !189
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !191
  %i.y = add nsw i64 %.01012.i.i.i.i.i, -1        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI13p1_row_info_tSaIS0_EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !195

_ZNSt6vectorI13p1_row_info_tSaIS0_EEC2EmRKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa93 = phi ptr [ %i.u, %vec.epilog.middle.block ], [ %i.q, %middle.block ], [ %i.z, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !79  ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !80
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = invoke noundef i32 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i64 noundef %i.c, i32 noundef 0)
          to label %.preheader unwind label %bb.e, !call_target !82 ; 0 uses

.preheader:                                       ; preds = %_ZNSt6vectorI13p1_row_info_tSaIS0_EEC2EmRKS1_.exit
  %i.af = load i16, ptr %i.i, align 8, !tbaa !78
  %.not76 = icmp eq i16 %i.af, 0
  br i1 %.not76, label %.preheader.._crit_edge_crit_edge, label %.lr.ph

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = load i64, ptr %i.f, align 8, !tbaa !115
  br label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.ag = zext i16 %i.bd to i64
  %i.ah = zext i16 %i.bd to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.._crit_edge_crit_edge, %._crit_edge.loopexit
  %i.ai = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %i.ba, %._crit_edge.loopexit ]
  %.lcssa68 = phi i64 [ 0, %.preheader.._crit_edge_crit_edge ], [ %i.ag, %._crit_edge.loopexit ]
  %.lcssa.in = phi i32 [ 0, %.preheader.._crit_edge_crit_edge ], [ %i.ah, %._crit_edge.loopexit ]
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.lcssa68 ; 2 uses
  store i32 %.lcssa.in, ptr %i.aj, align 8, !tbaa !189
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 381800
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !196
  %i.am = add nsw i64 %i.al, %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !191
  %i.ao = ptrtoint ptr %.lcssa93 to i64
  %i.ap = ptrtoint ptr %i.n to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 4
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ar, i1 true)
  %i.at = shl nuw nsw i64 %i.as, 1
  %i.au = xor i64 %i.at, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_(ptr nonnull %i.n, ptr nonnull %.lcssa93, i64 noundef %i.au)
          to label %.noexc39 unwind label %bb.e

.noexc39:                                         ; preds = %._crit_edge
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr nonnull %i.n, ptr nonnull %.lcssa93)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit unwind label %bb.e

bb.e:                                             ; preds = %.noexc39, %._crit_edge, %_ZNSt6vectorI13p1_row_info_tSaIS0_EEC2EmRKS1_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI13p1_row_info_tSaIS0_EED2Ev.exit46

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %.preheader ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ax, ptr %i.aw, align 8, !tbaa !189
  %i.ay = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.az = zext i32 %i.ay to i64
  %i.ba = load i64, ptr %i.f, align 8, !tbaa !115 ; 2 uses
  %i.bb = add nsw i64 %i.ba, %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !191
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bd = load i16, ptr %i.i, align 8, !tbaa !78  ; 3 uses
  %i.be = zext i16 %i.bd to i64
  %i.bf = icmp samesign ult i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !197

bb.g:                                             ; preds = %.lr.ph
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI13p1_row_info_tSaIS0_EED2Ev.exit46

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit: ; preds = %.noexc39
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 3 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !77
  %i.bj = zext i16 %i.bi to i64
  %i.bk = mul nuw nsw i64 %i.bj, 3                ; 2 uses
  %i.bl = add nuw nsw i64 %i.bk, 2                ; 4 uses
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #16
          to label %bb.h unwind label %bb.i       ; 6 uses

bb.h:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit
  store i8 0, ptr %i.bm, align 1, !tbaa !103
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bo = add nuw nsw i64 %i.bk, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bn, i8 0, i64 %i.bo, i1 false)
  %i.bp = load i16, ptr %i.i, align 8, !tbaa !78  ; 2 uses
  %.not77 = icmp eq i16 %i.bp, 0
  br i1 %.not77, label %_ZNSt6vectorI13p1_row_info_tSaIS0_EED2Ev.exit, label %.lr.ph75

_ZNSt6vectorI13p1_row_info_tSaIS0_EED2Ev.exit:    ; preds = %bb.r, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bl) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.m) #17
  ret void

bb.i:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI13p1_row_info_tSaIS0_EED2Ev.exit46

.lr.ph75:                                         ; preds = %bb.h, %bb.r
  %i.br = phi i16 [ %i.cx, %bb.r ], [ %i.bp, %bb.h ] ; 2 uses
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %bb.r ], [ 0, %bb.h ] ; 2 uses
  %i.bs = zext i16 %i.br to i32
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %indvars.iv82 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !189 ; 2 uses
  %.not31 = icmp ult i32 %i.bu, %i.bs
  br i1 %.not31, label %bb.j, label %bb.r

bb.j:                                             ; preds = %.lr.ph75
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.bw = load i16, ptr %i.bh, align 2, !tbaa !77
  %i.bx = zext i16 %i.bw to i32
  %i.by = mul nuw i32 %i.bu, %i.bx
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.bz
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !79  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !191
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !80
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = invoke noundef i32 %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i64 noundef %i.cd, i32 noundef 0)
          to label %bb.k unwind label %bb.m, !call_target !82 ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !191
  %i.ck = load i64, ptr %i.cc, align 8, !tbaa !191
  %i.cl = sub nsw i64 %i.cj, %i.ck                ; 3 uses
  %i.cm = icmp sgt i64 %i.cl, %i.bl
  br i1 %i.cm, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cn = tail call ptr @__cxa_allocate_exception(i64 4) #14 ; 2 uses
  store i32 5, ptr %i.cn, align 16, !tbaa !74
  invoke void @__cxa_throw(ptr nonnull %i.cn, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #15
          to label %bb.s unwind label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.j
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit44

.loopexit:                                        ; preds = %bb.n, %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit44

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit44

bb.n:                                             ; preds = %bb.k
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !79  ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !80
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = invoke noundef i32 %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull %i.bm, i64 noundef 1, i64 noundef %i.cl)
          to label %bb.o unwind label %.loopexit, !call_target !130

bb.o:                                             ; preds = %bb.n
  %i.cu = sext i32 %i.ct to i64
  %.not32 = icmp eq i64 %i.cl, %i.cu
  br i1 %.not32, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.q unwind label %.loopexit

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cv = load i16, ptr %i.bh, align 2, !tbaa !77
  %i.cw = zext i16 %i.cv to i32
  tail call void @_Z13decode_S_typeiPjPt(i32 noundef %i.cw, ptr noundef nonnull %i.bm, ptr noundef %i.ca)
  %.pre85 = load i16, ptr %i.i, align 8, !tbaa !78
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph75
  %i.cx = phi i16 [ %.pre85, %bb.q ], [ %i.br, %.lr.ph75 ] ; 2 uses
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %i.cy = zext i16 %i.cx to i64
  %i.cz = icmp samesign ult i64 %indvars.iv.next83, %i.cy
  br i1 %i.cz, label %.lr.ph75, label %_ZNSt6vectorI13p1_row_info_tSaIS0_EED2Ev.exit, !llvm.loop !198

_ZNSt6vectorIhSaIhEED2Ev.exit44:                  ; preds = %.loopexit, %.loopexit.split-lp, %bb.m
  %.pn = phi { ptr, i32 } [ %i.co, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bl) #17
  br label %_ZNSt6vectorI13p1_row_info_tSaIS0_EED2Ev.exit46

_ZNSt6vectorI13p1_row_info_tSaIS0_EED2Ev.exit46:  ; preds = %bb.i, %_ZNSt6vectorIhSaIhEED2Ev.exit44, %bb.g, %bb.e
  %.pn35 = phi { ptr, i32 } [ %i.bg, %bb.g ], [ %i.av, %bb.e ], [ %.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit44 ], [ %i.bq, %bb.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.m) #17
  resume { ptr, i32 } %.pn35

bb.s:                                             ; preds = %bb.l
  unreachable
}

declare noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #3

end_hunk_0
