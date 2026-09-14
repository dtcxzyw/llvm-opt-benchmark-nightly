Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMUnwindOpAsm?download=true
inline.NumInlined: 193
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm21UnwindOpcodeAssembler12EmitSPOffsetEl:bb.a
  %i.dz = add i32 %i.dy, 1                        ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !19
  %.not.i1.i24 = icmp ult i32 %i.du, %i.eb
  br i1 %.not.i1.i24, label %bb.aa, label %bb.z, !prof !13

bb.z:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i23
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i32 noundef %i.dz)
  br label %_ZN4llvm21UnwindOpcodeAssembler8EmitInt8Ej.exit17

bb.aa:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE9push_backEh.exit.i23
  store i32 %i.dz, ptr %i.dw, align 4
  %i.ec = load i32, ptr %i.dt, align 8, !tbaa !17
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.dt, align 8, !tbaa !17
  br label %_ZN4llvm21UnwindOpcodeAssembler8EmitInt8Ej.exit17

_ZN4llvm21UnwindOpcodeAssembler8EmitInt8Ej.exit17: ; preds = %bb.aa, %bb.z, %bb.q, %bb.p, %bb.r, %_ZN4llvm21UnwindOpcodeAssembler9emitBytesEPKhm.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm21UnwindOpcodeAssembler8FinalizeERjRNS_15SmallVectorImplIhEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !40, !range !41, !noundef !42
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store i32 3, ptr %1, align 4, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %i.f = and i64 %i.e, -4
  %i.g = add i64 %i.f, 4                          ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11   ; 3 uses
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult i64 %i.g, %i.i
  br i1 %i.k, label %.sink.split.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !12
  %i.n = icmp ult i64 %i.m, %i.g
  br i1 %i.n, label %bb.e, label %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.o, i64 noundef %i.g, i64 noundef 1) #6
  %.pre.i.i = load i64, ptr %i.h, align 8, !tbaa !11
  br label %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i:  ; preds = %bb.e, %bb.d
  %i.p = phi i64 [ %i.i, %bb.d ], [ %.pre.i.i, %bb.e ] ; 3 uses
  %.not11.i.i = icmp samesign eq i64 %i.p, %i.g
  br i1 %.not11.i.i, label %.sink.split.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i
  %i.q = load ptr, ptr %2, align 8, !tbaa !14
  %i.r = getelementptr i8, ptr %i.q, i64 %i.p
  %i.s = sub i64 %i.g, %i.p
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 0, i64 %i.s, i1 false), !tbaa !21
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i, %bb.c
  store i64 %i.g, ptr %i.h, align 8, !tbaa !11
  br label %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit

_ZN4llvm15SmallVectorImplIhE6resizeEm.exit:       ; preds = %bb.b, %.sink.split.i.i
  %i.t = add i64 %i.e, 4
  %i.u = lshr i64 %i.t, 2
  %i.v = trunc i64 %i.u to i8
  %i.w = add i8 %i.v, -1
  br label %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit30

bb.f:                                             ; preds = %bb.a
  %i.x = load i32, ptr %1, align 4, !tbaa !18     ; 2 uses
  %i.y = icmp eq i32 %i.x, 3
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !11
  %i.ab = icmp ugt i64 %i.aa, 3
  %i.ac = zext i1 %i.ab to i32                    ; 2 uses
  store i32 %i.ac, ptr %1, align 4, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = phi i32 [ %i.ac, %bb.g ], [ %i.x, %bb.f ] ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !11 ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 4
  br i1 %i.ah, label %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit30, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp ugt i64 %i.ag, 4
  br i1 %i.ai, label %.sink.split.i.i28, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !12
  %i.al = icmp ult i64 %i.ak, 4
  br i1 %i.al, label %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i25, label %.lr.ph.preheader.i.i27

_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i25: ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.am, i64 noundef 4, i64 noundef 1) #6
  %.pre.i.i29 = load i64, ptr %i.af, align 8, !tbaa !11 ; 2 uses
  %.not11.i.i26 = icmp samesign eq i64 %.pre.i.i29, 4
  br i1 %.not11.i.i26, label %.sink.split.i.i28, label %.lr.ph.preheader.i.i27

.lr.ph.preheader.i.i27:                           ; preds = %bb.k, %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i25
  %i.an = phi i64 [ %.pre.i.i29, %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i25 ], [ %i.ag, %bb.k ] ; 2 uses
  %i.ao = load ptr, ptr %2, align 8, !tbaa !14
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.an
  %i.aq = sub i64 4, %i.an
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ap, i8 0, i64 %i.aq, i1 false), !tbaa !21
  br label %.sink.split.i.i28

.sink.split.i.i28:                                ; preds = %.lr.ph.preheader.i.i27, %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i25, %bb.j
  store i64 4, ptr %i.af, align 8, !tbaa !11
  %.pre64 = load i32, ptr %1, align 4, !tbaa !18
  %i.ar = trunc i32 %.pre64 to i8
  %i.as = or i8 %i.ar, -128
  br label %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit30

bb.l:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !11
  %i.av = add i64 %i.au, 5                        ; 2 uses
  %i.aw = and i64 %i.av, -4                       ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !11 ; 3 uses
  %i.az = icmp eq i64 %i.aw, %i.ay
  br i1 %i.az, label %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit36, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = icmp ult i64 %i.aw, %i.ay
  br i1 %i.ba, label %.sink.split.i.i34, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !12
  %i.bd = icmp ult i64 %i.bc, %i.aw
  br i1 %i.bd, label %bb.o, label %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i31

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.be, i64 noundef %i.aw, i64 noundef 1) #6
  %.pre.i.i35 = load i64, ptr %i.ax, align 8, !tbaa !11
  br label %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i31

_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i31: ; preds = %bb.o, %bb.n
  %i.bf = phi i64 [ %i.ay, %bb.n ], [ %.pre.i.i35, %bb.o ] ; 3 uses
  %.not11.i.i32 = icmp samesign eq i64 %i.bf, %i.aw
  br i1 %.not11.i.i32, label %.sink.split.i.i34, label %.lr.ph.preheader.i.i33

.lr.ph.preheader.i.i33:                           ; preds = %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i31
  %i.bg = load ptr, ptr %2, align 8, !tbaa !14
  %i.bh = getelementptr i8, ptr %i.bg, i64 %i.bf
  %i.bi = sub i64 %i.aw, %i.bf
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bh, i8 0, i64 %i.bi, i1 false), !tbaa !21
  br label %.sink.split.i.i34

.sink.split.i.i34:                                ; preds = %.lr.ph.preheader.i.i33, %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i.i31, %bb.m
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !11
  %.pre = load i32, ptr %1, align 4, !tbaa !18
  br label %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit36

_ZN4llvm15SmallVectorImplIhE6resizeEm.exit36:     ; preds = %bb.l, %.sink.split.i.i34
  %i.bj = phi i32 [ %i.ad, %bb.l ], [ %.pre, %.sink.split.i.i34 ]
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = or i8 %i.bk, -128
  %i.bm = load ptr, ptr %2, align 8, !tbaa !14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 3
  store i8 %i.bl, ptr %i.bn, align 1, !tbaa !21
  %i.bo = lshr i64 %i.av, 2
  %i.bp = trunc i64 %i.bo to i8
  %i.bq = add i8 %i.bp, -1
  br label %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit30

_ZN4llvm15SmallVectorImplIhE6resizeEm.exit30:     ; preds = %.sink.split.i.i28, %bb.i, %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit36, %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit
  %.sink75 = phi i64 [ 3, %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit ], [ 2, %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit36 ], [ 3, %bb.i ], [ 3, %.sink.split.i.i28 ]
  %.sink = phi i8 [ %i.w, %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit ], [ %i.bq, %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit36 ], [ -128, %bb.i ], [ %i.as, %.sink.split.i.i28 ]
  %.sroa.10.0 = phi i64 [ 2, %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit ], [ 1, %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit36 ], [ 2, %bb.i ], [ 2, %.sink.split.i.i28 ] ; 2 uses
  %i.br = load ptr, ptr %2, align 8, !tbaa !14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.sink75
  store i8 %.sink, ptr %i.bs, align 1, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !17
  %i.bw = zext i32 %i.bv to i64
  %.02457 = add nsw i64 %i.bw, -1                 ; 2 uses
  %.not58 = icmp eq i64 %.02457, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph62

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph62
  %.sroa.10.2.lcssa = phi i64 [ %.sroa.10.159, %.lr.ph62 ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.dx, %.lr.ph ] ; 2 uses
  %.024 = add i64 %.02461, -1                     ; 2 uses
  %.not = icmp eq i64 %.024, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph62, !llvm.loop !25

._crit_edge:                                      ; preds = %.loopexit, %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit30
  %.sroa.10.1.lcssa = phi i64 [ %.sroa.10.0, %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit30 ], [ %.sroa.10.2.lcssa, %.loopexit ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !11
  %i.bz = icmp ult i64 %.sroa.10.1.lcssa, %i.by
  br i1 %i.bz, label %.lr.ph.i, label %_ZN12_GLOBAL__N_120UnwindOpcodeStreamer16FillFinishOpcodeEv.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.10.3 = phi i64 [ %i.ce, %.lr.ph.i ], [ %.sroa.10.1.lcssa, %._crit_edge ] ; 2 uses
  %i.ca = load ptr, ptr %2, align 8, !tbaa !14
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.10.3
  store i8 -80, ptr %i.cb, align 1, !tbaa !21
  %i.cc = xor i64 %.sroa.10.3, 3
  %i.cd = add i64 %i.cc, 1
  %i.ce = xor i64 %i.cd, 3                        ; 2 uses
  %i.cf = load i64, ptr %i.bx, align 8, !tbaa !11
  %i.cg = icmp ult i64 %i.ce, %i.cf
  br i1 %i.cg, label %.lr.ph.i, label %_ZN12_GLOBAL__N_120UnwindOpcodeStreamer16FillFinishOpcodeEv.exit, !llvm.loop !26

_ZN12_GLOBAL__N_120UnwindOpcodeStreamer16FillFinishOpcodeEv.exit: ; preds = %.lr.ph.i, %._crit_edge
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ch, align 8, !tbaa !11
  store i32 0, ptr %i.bu, align 8, !tbaa !17
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !19
  %.not.i.not.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i.not.i, label %bb.p, label %bb.q, !prof !43

bb.p:                                             ; preds = %_ZN12_GLOBAL__N_120UnwindOpcodeStreamer16FillFinishOpcodeEv.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i32 noundef 0)
  br label %_ZN4llvm21UnwindOpcodeAssembler5ResetEv.exit

bb.q:                                             ; preds = %_ZN12_GLOBAL__N_120UnwindOpcodeStreamer16FillFinishOpcodeEv.exit
  %i.ck = load ptr, ptr %i.bt, align 8, !tbaa !16
  store i32 0, ptr %i.ck, align 1
  %i.cl = load i32, ptr %i.bu, align 8, !tbaa !17
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.bu, align 8, !tbaa !17
  br label %_ZN4llvm21UnwindOpcodeAssembler5ResetEv.exit

_ZN4llvm21UnwindOpcodeAssembler5ResetEv.exit:     ; preds = %bb.p, %bb.q
  store i8 0, ptr %i.a, align 8, !tbaa !40
  ret void

.lr.ph62:                                         ; preds = %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit30, %.loopexit
  %.02461 = phi i64 [ %.024, %.loopexit ], [ %.02457, %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit30 ] ; 3 uses
  %.sroa.10.159 = phi i64 [ %.sroa.10.2.lcssa, %.loopexit ], [ %.sroa.10.0, %_ZN4llvm15SmallVectorImplIhE6resizeEm.exit30 ] ; 4 uses
  %i.cn = load ptr, ptr %i.bt, align 8, !tbaa !16 ; 2 uses
  %i.co = getelementptr [4 x i8], ptr %i.cn, i64 %.02461
  %i.cp = getelementptr i8, ptr %i.co, i64 -4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !18 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.02461
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !18 ; 2 uses
  %i.ct = zext i32 %i.cs to i64                   ; 3 uses
  %i.cu = icmp ult i32 %i.cq, %i.cs
  br i1 %i.cu, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.lr.ph62
  %i.cv = zext i32 %i.cq to i64                   ; 5 uses
  %i.cw = sub nsw i64 %i.ct, %i.cv
  %xtraiter = and i64 %i.cw, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.cx = load ptr, ptr %0, align 8, !tbaa !14
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cv
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !21
  %i.da = load ptr, ptr %2, align 8, !tbaa !14
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %.sroa.10.159
  store i8 %i.cz, ptr %i.db, align 1, !tbaa !21
  %i.dc = xor i64 %.sroa.10.159, 3
  %i.dd = add i64 %i.dc, 1
  %i.de = xor i64 %i.dd, 3                        ; 2 uses
  %i.df = add nuw nsw i64 %i.cv, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.de, %.lr.ph.prol ]
  %.056.unr = phi i64 [ %i.cv, %.lr.ph.preheader ], [ %i.df, %.lr.ph.prol ]
  %.sroa.10.255.unr = phi i64 [ %.sroa.10.159, %.lr.ph.preheader ], [ %i.de, %.lr.ph.prol ]
  %i.dg = add nsw i64 %i.ct, -1
  %i.dh = icmp eq i64 %i.dg, %i.cv
  br i1 %i.dh, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.056 = phi i64 [ %i.dy, %.lr.ph ], [ %.056.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.sroa.10.255 = phi i64 [ %i.dx, %.lr.ph ], [ %.sroa.10.255.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.di = load ptr, ptr %0, align 8, !tbaa !14
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %.056
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !21
  %i.dl = load ptr, ptr %2, align 8, !tbaa !14
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.10.255
  store i8 %i.dk, ptr %i.dm, align 1, !tbaa !21
  %i.dn = xor i64 %.sroa.10.255, 3                ; 2 uses
  %i.do = add i64 %i.dn, 1
  %i.dp = xor i64 %i.do, 3
  %i.dq = load ptr, ptr %0, align 8, !tbaa !14
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.056
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !21
  %i.du = load ptr, ptr %2, align 8, !tbaa !14
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dp
  store i8 %i.dt, ptr %i.dv, align 1, !tbaa !21
  %i.dw = add i64 %i.dn, 2
  %i.dx = xor i64 %i.dw, 3                        ; 2 uses
  %i.dy = add nuw nsw i64 %.056, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dy, %i.ct
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !27
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIhLb1EE15growAndPushBackEh(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = add i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.d, i64 noundef %i.c, i64 noundef 1) #6
  %i.e = load ptr, ptr %0, align 8, !tbaa !14
  %i.f = load i64, ptr %i.a, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 %1, ptr %i.g, align 1
  %i.h = load i64, ptr %i.a, align 8, !tbaa !11
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.a, align 8, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #6
  %i.f = load ptr, ptr %0, align 8, !tbaa !16
  %i.g = load i32, ptr %i.a, align 8, !tbaa !17
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !17
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !17
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm15SmallVectorImplIhE6insertIPKhvEEPhS5_T_S6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  %i.h = icmp eq ptr %1, %i.g
  %i.i = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.j = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 15 uses
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = add i64 %i.f, %i.k                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !12
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %bb.c, label %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.p, i64 noundef %i.l, i64 noundef 1) #6
  %.pre8.pre.i = load i64, ptr %i.e, align 8, !tbaa !11
  %.pre60.pre = load ptr, ptr %0, align 8, !tbaa !14
  br label %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i:    ; preds = %bb.c, %bb.b
  %.pre60 = phi ptr [ %i.a, %bb.b ], [ %.pre60.pre, %bb.c ] ; 2 uses
  %.pre8.i = phi i64 [ %i.f, %bb.b ], [ %.pre8.pre.i, %bb.c ] ; 2 uses
  %.not.i.i = icmp eq ptr %2, %3
  br i1 %.not.i.i, label %_ZN4llvm15SmallVectorImplIhE6appendIPKhvEEvT_S5_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %.pre60, i64 %.pre8.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %2, i64 %i.k, i1 false)
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !11
  %.pre59 = load ptr, ptr %0, align 8, !tbaa !14
  br label %_ZN4llvm15SmallVectorImplIhE6appendIPKhvEEvT_S5_.exit

_ZN4llvm15SmallVectorImplIhE6appendIPKhvEEvT_S5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i, %bb.d
  %i.r = phi ptr [ %.pre60, %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i ], [ %.pre59, %bb.d ]
  %i.s = phi i64 [ %.pre8.i, %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i ], [ %.pre.i, %bb.d ]
  %i.t = add i64 %i.s, %i.k
  store i64 %i.t, ptr %i.e, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.d
  br label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit

bb.e:                                             ; preds = %bb.a
  %i.v = sub i64 0, %i.k
  %i.w = add i64 %i.f, %i.k                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !12
  %i.z = icmp ult i64 %i.y, %i.w
  br i1 %i.z, label %bb.f, label %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.aa, i64 noundef %i.w, i64 noundef 1) #6
  %.pre = load ptr, ptr %0, align 8, !tbaa !14
  %.pre57 = load i64, ptr %i.e, align 8, !tbaa !11
  br label %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit

_ZN4llvm15SmallVectorImplIhE7reserveEm.exit:      ; preds = %bb.e, %bb.f
  %i.ab = phi i64 [ %i.f, %bb.e ], [ %.pre57, %bb.f ] ; 7 uses
  %i.ac = phi ptr [ %i.a, %bb.e ], [ %.pre, %bb.f ] ; 5 uses
  %i.ad = ptrtoaddr ptr %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.d ; 16 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab ; 4 uses
  %gepdiff = sub nsw i64 %i.ab, %i.d              ; 14 uses
  %.not = icmp ult i64 %gepdiff, %i.k
  br i1 %.not, label %bb.r, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %i.v ; 2 uses
  %i.ah = add i64 %i.ab, %i.k                     ; 2 uses
  %i.ai = load i64, ptr %i.x, align 8, !tbaa !12
  %i.aj = icmp ult i64 %i.ai, %i.ah
  br i1 %i.aj, label %bb.h, label %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i46

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.ak, i64 noundef %i.ah, i64 noundef 1) #6
  %.pre.i47 = load i64, ptr %i.e, align 8, !tbaa !11
  %.pre58 = load ptr, ptr %0, align 8, !tbaa !14
  br label %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i46

_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i46:  ; preds = %bb.h, %bb.g
end_hunk_0
