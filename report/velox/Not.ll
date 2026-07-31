inline.NumInlined: 6503
inline.NumDeleted: 1932
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_111NotFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %i.av = load ptr, ptr %12, align 8, !tbaa !152  ; 7 uses
  store ptr %i.au, ptr %12, align 8, !tbaa !152
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = atomicrmw sub ptr %i.aw, i32 1 acq_rel, align 4
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.l
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !47
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(64) %i.av)
          to label %.noexc.i.i unwind label %bb.m, !inline_history !225

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !226
  %.not.i.i.i = icmp eq ptr %i.bd, null
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !47
  %..i.i.i = select i1 %.not.i.i.i, i64 8, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %..i.i.i
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(64) %i.av)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit unwind label %bb.m, !inline_history !225

bb.m:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #35
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit: ; preds = %bb.l, %.noexc.i.i
  %.pr = load ptr, ptr %13, align 8, !tbaa !152   ; 7 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.bk = atomicrmw sub ptr %i.bj, i32 1 acq_rel, align 4
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.n
  %i.bm = load ptr, ptr %.pr, align 8, !tbaa !47
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8
  invoke void %i.bo(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i unwind label %bb.o, !inline_history !225

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !226
  %.not.i.i54 = icmp eq ptr %i.bq, null
  %i.br = load ptr, ptr %.pr, align 8, !tbaa !47
  %..i.i = select i1 %.not.i.i54, i64 8, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %..i.i
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.o, !inline_history !225

bb.o:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #35
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.k, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, %bb.n, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %.loopexit

bb.p:                                             ; preds = %bb.j
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.bk

bb.q:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !178
  %i.bz = load ptr, ptr %4, align 8, !tbaa !184
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !199
  %i.cb = sext i32 %i.by to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32, !noalias !231
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 0, ptr %i.cc, align 1, !tbaa !223, !noalias !231
  %i.cd = add nsw i64 %i.cb, 7
  %i.ce = lshr i64 %i.cd, 3
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %14, i64 noundef %i.ce, ptr noundef %i.ca, ptr noundef nonnull align 1 dereferenceable(2) %6, i1 noundef zeroext false)
          to label %bb.r unwind label %bb.aa

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32, !noalias !231
  %i.cf = load ptr, ptr %14, align 8, !tbaa !152
  store ptr null, ptr %14, align 8, !tbaa !152
  %i.cg = load ptr, ptr %12, align 8, !tbaa !152  ; 7 uses
  store ptr %i.cf, ptr %12, align 8, !tbaa !152
  %.not.i.i57 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i57, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit68, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = atomicrmw sub ptr %i.ch, i32 1 acq_rel, align 4
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %.sink.split.i.i.i58, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit62

.sink.split.i.i.i58:                              ; preds = %bb.s
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !47
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.cm = load ptr, ptr %i.cl, align 8
  invoke void %i.cm(ptr noundef nonnull align 8 dereferenceable(64) %i.cg)
          to label %.noexc.i.i59 unwind label %bb.t, !inline_history !225

.noexc.i.i59:                                     ; preds = %.sink.split.i.i.i58
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !226
  %.not.i.i.i60 = icmp eq ptr %i.co, null
  %i.cp = load ptr, ptr %i.cg, align 8, !tbaa !47
  %..i.i.i61 = select i1 %.not.i.i.i60, i64 8, i64 48
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %..i.i.i61
  %i.cr = load ptr, ptr %i.cq, align 8
  invoke void %i.cr(ptr noundef nonnull align 8 dereferenceable(64) %i.cg)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit62 unwind label %bb.t, !inline_history !225

bb.t:                                             ; preds = %.noexc.i.i59, %.sink.split.i.i.i58
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #35
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit62: ; preds = %bb.s, %.noexc.i.i59
  %.pr99 = load ptr, ptr %14, align 8, !tbaa !152 ; 7 uses
  %.not.i63 = icmp eq ptr %.pr99, null
  br i1 %.not.i63, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit68, label %bb.u

bb.u:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit62
  %i.cu = getelementptr inbounds nuw i8, ptr %.pr99, i64 40
  %i.cv = atomicrmw sub ptr %i.cu, i32 1 acq_rel, align 4
  %i.cw = icmp eq i32 %i.cv, 1
  br i1 %i.cw, label %.sink.split.i.i64, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit68

.sink.split.i.i64:                                ; preds = %bb.u
  %i.cx = load ptr, ptr %.pr99, align 8, !tbaa !47
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %i.cz = load ptr, ptr %i.cy, align 8
  invoke void %i.cz(ptr noundef nonnull align 8 dereferenceable(64) %.pr99)
          to label %.noexc.i65 unwind label %bb.v, !inline_history !225

.noexc.i65:                                       ; preds = %.sink.split.i.i64
  %i.da = getelementptr inbounds nuw i8, ptr %.pr99, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !226
  %.not.i.i66 = icmp eq ptr %i.db, null
  %i.dc = load ptr, ptr %.pr99, align 8, !tbaa !47
  %..i.i67 = select i1 %.not.i.i66, i64 8, i64 48
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %..i.i67
  %i.de = load ptr, ptr %i.dd, align 8
  invoke void %i.de(ptr noundef nonnull align 8 dereferenceable(64) %.pr99)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit68 unwind label %bb.v, !inline_history !225

bb.v:                                             ; preds = %.noexc.i65, %.sink.split.i.i64
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #35
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit68: ; preds = %bb.r, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit62, %bb.u, %.noexc.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.dh = load ptr, ptr %12, align 8, !tbaa !152  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 44
  %i.dj = load i8, ptr %i.di, align 4, !tbaa !234
  %i.dk = and i8 %i.dj, 2
  %.not.i69 = icmp eq i8 %i.dk, 0
  br i1 %.not.i69, label %bb.x, label %bb.w, !prof !123

bb.w:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit68
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #36
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit68
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !235 ; 9 uses
  %i.dn = load ptr, ptr %i.h, align 8, !tbaa !137
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 120
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !236
  %i.dq = load i32, ptr %i.bx, align 8, !tbaa !178
  %i.dr = sext i32 %i.dq to i64
  %i.ds = add nsw i64 %i.dr, 7
  %i.dt = lshr i64 %i.ds, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.dm, ptr align 8 %i.dp, i64 %i.dt, i1 false)
  %i.du = load i32, ptr %i.bx, align 8, !tbaa !178 ; 9 uses
  %.not27.i = icmp slt i32 %i.du, 64
  br i1 %.not27.i, label %.preheader26.i, label %iter.check

iter.check:                                       ; preds = %bb.x
  %i.dv = zext nneg i32 %i.du to i64              ; 2 uses
  %i.dw = call i64 @llvm.umax.i64(i64 %i.dv, i64 127)
  %i.dx = add nsw i64 %i.dw, -64                  ; 3 uses
  %i.dy = lshr i64 %i.dx, 6
  %i.dz = add nuw nsw i64 %i.dy, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.dx, 192
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check125 = icmp ult i64 %i.dx, 960
  br i1 %min.iters.check125, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.dz, 12
  %n.vec = and i64 %i.dz, 576460752303423472      ; 4 uses
  %i.ea = shl i64 %n.vec, 6                       ; 2 uses
  %i.eb = or disjoint i64 %i.ea, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ec = shl nuw nsw i64 %index, 3
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.ec ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 64 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %i.ed, align 8, !tbaa !118
  %wide.load126 = load <4 x i64>, ptr %i.ee, align 8, !tbaa !118
  %wide.load127 = load <4 x i64>, ptr %i.ef, align 8, !tbaa !118
  %wide.load128 = load <4 x i64>, ptr %i.eg, align 8, !tbaa !118
  %i.eh = xor <4 x i64> %wide.load, splat (i64 -1)
  %i.ei = xor <4 x i64> %wide.load126, splat (i64 -1)
  %i.ej = xor <4 x i64> %wide.load127, splat (i64 -1)
  %i.ek = xor <4 x i64> %wide.load128, splat (i64 -1)
  store <4 x i64> %i.eh, ptr %i.ed, align 8, !tbaa !118
  store <4 x i64> %i.ei, ptr %i.ee, align 8, !tbaa !118
  store <4 x i64> %i.ej, ptr %i.ef, align 8, !tbaa !118
  store <4 x i64> %i.ek, ptr %i.eg, align 8, !tbaa !118
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !251

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dz, %n.vec
  br i1 %cmp.n, label %.preheader26.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !254

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec131 = and i64 %i.dz, 576460752303423484   ; 3 uses
  %i.em = shl i64 %n.vec131, 6                    ; 2 uses
  %i.en = or disjoint i64 %i.em, 64
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index132 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next134, %vec.epilog.vector.body ] ; 2 uses
  %i.eo = shl nuw nsw i64 %index132, 3
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.eo ; 2 uses
  %wide.load133 = load <4 x i64>, ptr %i.ep, align 8, !tbaa !118
  %i.eq = xor <4 x i64> %wide.load133, splat (i64 -1)
  store <4 x i64> %i.eq, ptr %i.ep, align 8, !tbaa !118
  %index.next134 = add nuw i64 %index132, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next134, %n.vec131
  br i1 %i.er, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !255

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n135 = icmp eq i64 %i.dz, %n.vec131
  br i1 %cmp.n135, label %.preheader26.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv36.i.ph = phi i64 [ 0, %iter.check ], [ %i.ea, %vec.epilog.iter.check ], [ %i.em, %vec.epilog.middle.block ]
  %indvars.iv.i.ph = phi i64 [ 64, %iter.check ], [ %i.eb, %vec.epilog.iter.check ], [ %i.en, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.preheader26.loopexit.i:                          ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %19 = add nuw i32 %i.du, 2147483584
  %i.es = and i32 %19, 2147483584
  %narrow.i = add nuw i32 %i.es, 64
  br label %.preheader26.i

.preheader26.i:                                   ; preds = %.preheader26.loopexit.i, %bb.x
  %.0.lcssa.i = phi i32 [ 0, %bb.x ], [ %narrow.i, %.preheader26.loopexit.i ] ; 11 uses
  %i.et = or disjoint i32 %.0.lcssa.i, 8          ; 5 uses
  %.not2429.i = icmp sgt i32 %i.et, %i.du
  br i1 %.not2429.i, label %.preheader.i, label %iter.check156

iter.check156:                                    ; preds = %.preheader26.i
  %20 = add i32 %i.du, -8
  %21 = sub i32 %20, %.0.lcssa.i                  ; 3 uses
  %22 = lshr i32 %21, 3
  %23 = add nuw nsw i32 %22, 1                    ; 5 uses
  %min.iters.check139 = icmp ult i32 %21, 120
  br i1 %min.iters.check139, label %.lr.ph31.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check156
  %reass.sub = sub i32 %.0.lcssa.i, %i.du
  %24 = add i32 %reass.sub, 7
  %25 = or i32 %24, 7
  %26 = icmp ult i32 %25, %.0.lcssa.i
  br i1 %26, label %.lr.ph31.i.preheader, label %vector.main.loop.iter.check140

vector.main.loop.iter.check140:                   ; preds = %vector.scevcheck
  %min.iters.check141 = icmp ult i32 %21, 1016
  br i1 %min.iters.check141, label %vec.epilog.ph160, label %vector.ph142

vector.ph142:                                     ; preds = %vector.main.loop.iter.check140
  %n.mod.vf138 = and i32 %23, 112
  %n.vec139 = and i32 %23, 1073741696             ; 4 uses
  %27 = shl i32 %n.vec139, 3                      ; 2 uses
  %28 = add i32 %i.et, %27
  %29 = add i32 %.0.lcssa.i, %27                  ; 2 uses
  %30 = lshr i32 %.0.lcssa.i, 3
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph142
  %index141 = phi i32 [ 0, %vector.ph142 ], [ %index.next146, %vector.body145 ] ; 2 uses
  %31 = add i32 %30, %index141
  %32 = and i32 %31, 536870911
  %33 = zext nneg i32 %32 to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dm, i64 %33 ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 64 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 96 ; 2 uses
  %wide.load147 = load <32 x i8>, ptr %i.eu, align 1, !tbaa !33
  %wide.load148 = load <32 x i8>, ptr %i.ev, align 1, !tbaa !33
  %wide.load149 = load <32 x i8>, ptr %i.ew, align 1, !tbaa !33
  %wide.load150 = load <32 x i8>, ptr %i.ex, align 1, !tbaa !33
  %i.ey = xor <32 x i8> %wide.load147, splat (i8 -1)
  %i.ez = xor <32 x i8> %wide.load148, splat (i8 -1)
  %i.fa = xor <32 x i8> %wide.load149, splat (i8 -1)
  %i.fb = xor <32 x i8> %wide.load150, splat (i8 -1)
  store <32 x i8> %i.ey, ptr %i.eu, align 1, !tbaa !33
  store <32 x i8> %i.ez, ptr %i.ev, align 1, !tbaa !33
  store <32 x i8> %i.fa, ptr %i.ew, align 1, !tbaa !33
  store <32 x i8> %i.fb, ptr %i.ex, align 1, !tbaa !33
  %index.next146 = add nuw i32 %index141, 128     ; 2 uses
  %i.fc = icmp eq i32 %index.next146, %n.vec139
  br i1 %i.fc, label %middle.block152, label %vector.body145, !llvm.loop !256

middle.block152:                                  ; preds = %vector.body145
  %cmp.n153 = icmp eq i32 %23, %n.vec139
  br i1 %cmp.n153, label %.preheader.i, label %vec.epilog.iter.check158

vec.epilog.iter.check158:                         ; preds = %middle.block152
  %min.epilog.iters.check159 = icmp eq i32 %n.mod.vf138, 0
  br i1 %min.epilog.iters.check159, label %.lr.ph31.i.preheader, label %vec.epilog.ph160, !prof !257

vec.epilog.ph160:                                 ; preds = %vector.main.loop.iter.check140, %vec.epilog.iter.check158
  %vec.epilog.resume.val149 = phi i32 [ %n.vec139, %vec.epilog.iter.check158 ], [ 0, %vector.main.loop.iter.check140 ]
  %n.vec157 = and i32 %23, 1073741808             ; 3 uses
  %34 = shl i32 %n.vec157, 3                      ; 2 uses
  %35 = add i32 %i.et, %34
  %36 = add i32 %.0.lcssa.i, %34                  ; 2 uses
  %37 = lshr i32 %.0.lcssa.i, 3
  br label %vec.epilog.vector.body163

vec.epilog.vector.body163:                        ; preds = %vec.epilog.vector.body163, %vec.epilog.ph160
  %index159 = phi i32 [ %vec.epilog.resume.val149, %vec.epilog.ph160 ], [ %index.next161, %vec.epilog.vector.body163 ] ; 2 uses
  %38 = add i32 %37, %index159
  %39 = and i32 %38, 536870911
  %40 = zext nneg i32 %39 to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dm, i64 %40 ; 2 uses
  %wide.load165 = load <16 x i8>, ptr %i.fd, align 1, !tbaa !33
  %i.fe = xor <16 x i8> %wide.load165, splat (i8 -1)
  store <16 x i8> %i.fe, ptr %i.fd, align 1, !tbaa !33
  %index.next161 = add nuw i32 %index159, 16      ; 2 uses
  %i.ff = icmp eq i32 %index.next161, %n.vec157
  br i1 %i.ff, label %vec.epilog.middle.block167, label %vec.epilog.vector.body163, !llvm.loop !258

vec.epilog.middle.block167:                       ; preds = %vec.epilog.vector.body163
  %cmp.n169 = icmp eq i32 %23, %n.vec157
  br i1 %cmp.n169, label %.preheader.i, label %.lr.ph31.i.preheader

.lr.ph31.i.preheader:                             ; preds = %vector.scevcheck, %iter.check156, %vec.epilog.iter.check158, %vec.epilog.middle.block167
  %.ph = phi i32 [ %i.et, %iter.check156 ], [ %i.et, %vector.scevcheck ], [ %28, %vec.epilog.iter.check158 ], [ %35, %vec.epilog.middle.block167 ]
  %.130.i.ph = phi i32 [ %.0.lcssa.i, %iter.check156 ], [ %.0.lcssa.i, %vector.scevcheck ], [ %29, %vec.epilog.iter.check158 ], [ %36, %vec.epilog.middle.block167 ]
  br label %.lr.ph31.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %.lr.ph.i ], [ %indvars.iv36.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ]
  %i.fg = lshr exact i64 %indvars.iv36.i, 3
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.fg ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !118
  %i.fj = xor i64 %i.fi, -1
  store i64 %i.fj, ptr %i.fh, align 8, !tbaa !118
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 64 ; 2 uses
  %.not.i70 = icmp samesign ugt i64 %indvars.iv.next.i, %i.dv
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 64
  br i1 %.not.i70, label %.preheader26.loopexit.i, label %.lr.ph.i, !llvm.loop !259

.preheader.i:                                     ; preds = %.lr.ph31.i, %middle.block152, %vec.epilog.middle.block167, %.preheader26.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader26.i ], [ %36, %vec.epilog.middle.block167 ], [ %29, %middle.block152 ], [ %41, %.lr.ph31.i ] ; 2 uses
  %i.fk = icmp slt i32 %.1.lcssa.i, %i.du
  br i1 %i.fk, label %.lr.ph34.preheader.i, label %.loopexit

.lr.ph34.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count = zext nneg i32 %.1.lcssa.i to i64
  br label %.lr.ph34.i

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.preheader, %.lr.ph31.i
  %41 = phi i32 [ %44, %.lr.ph31.i ], [ %.ph, %.lr.ph31.i.preheader ] ; 3 uses
  %.130.i = phi i32 [ %41, %.lr.ph31.i ], [ %.130.i.ph, %.lr.ph31.i.preheader ]
  %42 = lshr exact i32 %.130.i, 3
  %43 = zext nneg i32 %42 to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dm, i64 %43 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !33
  %i.fn = xor i8 %i.fm, -1
  store i8 %i.fn, ptr %i.fl, align 1, !tbaa !33
  %44 = add nuw nsw i32 %41, 8                    ; 2 uses
  %.not24.i = icmp sgt i32 %44, %i.du
  br i1 %.not24.i, label %.preheader.i, label %.lr.ph31.i, !llvm.loop !260

.lr.ph34.i:                                       ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i, %.lr.ph34.preheader.i
  %indvars.iv41.i = phi i64 [ %wide.trip.count, %.lr.ph34.preheader.i ], [ %indvars.iv.next42.i, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i ] ; 6 uses
  %i.fo = lshr i64 %indvars.iv41.i, 6
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.fo
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !118
  %i.fr = and i64 %indvars.iv41.i, 63
  %i.fs = shl nuw i64 1, %i.fr
  %i.ft = and i64 %i.fs, %i.fq
  %.not25.i = icmp eq i64 %i.ft, 0
  %i.fu = lshr i64 %indvars.iv41.i, 3
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.fu ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !33  ; 2 uses
  br i1 %.not25.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph34.i
  %i.fx = trunc i64 %indvars.iv41.i to i8
  %i.fy = and i8 %i.fx, 7
  %i.fz = shl nuw i8 1, %i.fy
  %i.ga = or i8 %i.fz, %i.fw
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i

bb.z:                                             ; preds = %.lr.ph34.i
  %i.gb = and i64 %indvars.iv41.i, 7
  %i.gc = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !33
  %i.ge = and i8 %i.gd, %i.fw
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i:  ; preds = %bb.z, %bb.y
  %.sink.i.i = phi i8 [ %i.ge, %bb.z ], [ %i.ga, %bb.y ]
  store i8 %.sink.i.i, ptr %i.fv, align 1, !tbaa !33
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %45 = trunc nuw i64 %indvars.iv.next42.i to i32
  %46 = icmp sgt i32 %i.du, %45
  br i1 %46, label %.lr.ph34.i, label %.loopexit, !llvm.loop !261

bb.aa:                                            ; preds = %bb.q
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %bb.bk

bb.ab:                                            ; preds = %bb.w
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.loopexit:                                        ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %i.gh = load ptr, ptr %4, align 8, !tbaa !184
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !199
  store ptr %i.gi, ptr %i.c, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  invoke void @_ZN8facebook5velox7BOOLEANEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.114") align 8 %16)
          to label %bb.ac unwind label %bb.bf

bb.ac:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store ptr null, ptr %i.d, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !178
  store i32 %i.gk, ptr %i.e, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.gl = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #33
          to label %.noexc71 unwind label %bb.bg  ; 6 uses

.noexc71:                                         ; preds = %bb.ac
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store i32 1, ptr %i.gm, align 8, !tbaa !44, !noalias !265
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  store i32 1, ptr %i.gn, align 4, !tbaa !46, !noalias !265
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox10FlatVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.gl, align 8, !tbaa !47, !noalias !265
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox10FlatVectorIbEEJPNS1_6memory10MemoryPoolESt10shared_ptrIKNS1_10ScalarTypeILNS1_8TypeKindE0EEEEDniRN5boost13intrusive_ptrINS1_6BufferEEESt6vectorISG_SaISG_EEEEvPT_DpOT0_(ptr noundef nonnull %i.go, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.ad unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox10FlatVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i, !noalias !265

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox10FlatVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i: ; preds = %.noexc71
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef 192) #34, !noalias !265
  br label %.body

bb.ad:                                            ; preds = %.noexc71
  %i.gq = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store ptr %i.gl, ptr %i.gq, align 8, !tbaa !38, !alias.scope !265
  store ptr %i.go, ptr %15, align 16, !tbaa !268, !alias.scope !265
  %i.gr = load ptr, ptr %17, align 8, !tbaa !270  ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !271 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gr, %i.gt
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ad, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hi, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.gr, %bb.ad ] ; 2 uses
  %i.gu = load ptr, ptr %.05.i.i.i, align 8, !tbaa !152 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  %i.gw = atomicrmw sub ptr %i.gv, i32 1 acq_rel, align 4
  %i.gx = icmp eq i32 %i.gw, 1
  br i1 %i.gx, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.ae
  %i.gy = load ptr, ptr %i.gu, align 8, !tbaa !47
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  %i.ha = load ptr, ptr %i.gz, align 8
  invoke void %i.ha(ptr noundef nonnull align 8 dereferenceable(64) %i.gu)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.af, !inline_history !225

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !226
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hc, null
  %i.hd = load ptr, ptr %i.gu, align 8, !tbaa !47
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %..i.i.i.i.i.i.i
  %i.hf = load ptr, ptr %i.he, align 8
  invoke void %i.hf(ptr noundef nonnull align 8 dereferenceable(64) %i.gu)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.af, !inline_history !225

bb.af:                                            ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.hg = landingpad { ptr, i32 }
          catch ptr null
  %i.hh = extractvalue { ptr, i32 } %i.hg, 0
  call void @__clang_call_terminate(ptr %i.hh) #35
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.ae, %.lr.ph.i.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %i.hi, %i.gt
  br i1 %.not.i.i.i72, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !272

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 8, !tbaa !270
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.ad
  %i.hj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.gr, %bb.ad ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.hj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.hk = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !273
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = ptrtoint ptr %i.hj to i64
  %i.ho = sub i64 %i.hm, %i.hn
  call void @_ZdlPvm(ptr noundef nonnull %i.hj, i64 noundef %i.ho) #34
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  %i.hp = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !38 ; 8 uses
  %.not.i.i73 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i73, label %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 4 uses
  %i.hs = load atomic i64, ptr %i.hr acquire, align 8 ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 4294967297
  %i.hu = trunc i64 %i.hs to i32                  ; 2 uses
  br i1 %i.ht, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.hr, align 8, !tbaa !44
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  store i32 0, ptr %i.hv, align 4, !tbaa !46
  %i.hw = load ptr, ptr %i.hq, align 8, !tbaa !47
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #32, !inline_history !274
  %i.hz = load ptr, ptr %i.hq, align 8, !tbaa !47
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #32, !inline_history !274
  br label %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ic = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i74 = icmp eq i8 %i.ic, 0
  br i1 %.not.i.i.i74, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.id = add nsw i32 %i.hu, -1
  store i32 %i.id, ptr %i.hr, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.ie = atomicrmw volatile add ptr %i.hr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i = phi i32 [ %i.hu, %bb.ak ], [ %i.ie, %bb.al ]
  %i.if = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.if, label %bb.am, label %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #32
  br label %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  %i.ig = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ih = load ptr, ptr %i.gq, align 8, !tbaa !38 ; 2 uses
  %i.ii = load <2 x ptr>, ptr %15, align 16, !tbaa !41
  store <2 x ptr> %i.ii, ptr %18, align 16, !tbaa !41
  %.not.i.i.i75 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i75, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2INS1_10FlatVectorIbEEvEERKS_IT_E.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 8 ; 3 uses
  %i.ik = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i = icmp eq i8 %i.ik, 0
  br i1 %.not.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.il = load i32, ptr %i.ij, align 4, !tbaa !43
  %i.im = add nsw i32 %i.il, 1
  store i32 %i.im, ptr %i.ij, align 4, !tbaa !43
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2INS1_10FlatVectorIbEEvEERKS_IT_E.exit

bb.ap:                                            ; preds = %bb.an
  %i.in = atomicrmw volatile add ptr %i.ij, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2INS1_10FlatVectorIbEEvEERKS_IT_E.exit
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v4i32
!60 = !{!61, !16, i64 0}
!61 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !16, i64 0, !30, i64 8}
!62 = !{!61, !30, i64 8}
!63 = !{!57, !57, i64 0}
!64 = distinct !{null, null}
!65 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.mustprogress"}
!68 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!69 = !{!70, !59, i64 104}
!70 = !{!"_ZTSSt22_Optional_payload_baseIN8facebook5velox4exec13TypeSignatureEE", !6, i64 0, !59, i64 104}
!71 = !{i8 0, i8 2}
!72 = !{}
!73 = !{!74, !59, i64 32}
!74 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !6, i64 0, !59, i64 32}
!75 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev}
!76 = !{!77, !78, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE17_Vector_impl_dataE", !78, i64 0, !78, i64 8, !78, i64 16}
!78 = !{!"p1 _ZTSN8facebook5velox4exec13TypeSignatureE", !15, i64 0}
!79 = !{!77, !78, i64 8}
!80 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!81 = distinct !{!81, !67}
!82 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!83 = !{!77, !78, i64 16}
!84 = distinct !{null, null}
!85 = !{!26, !27, i64 0}
!86 = distinct !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev, null}
!87 = !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!88 = distinct !{null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!89 = !{!90, !59, i64 96}
!90 = !{!"_ZTSN8facebook5velox4exec13TypeSignatureE", !32, i64 0, !91, i64 32, !94, i64 56, !59, i64 96}
!91 = !{!"_ZTSSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !92, i64 0}
!92 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !93, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE12_Vector_implE", !77, i64 0}
!94 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !95, i64 0}
!95 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !96, i64 0}
!96 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !97, i64 0}
!97 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !74, i64 0}
!98 = !{!78, !78, i64 0}
!99 = distinct !{null, null, null, null}
!100 = distinct !{!100, !67}
!101 = distinct !{null, null, null}
!102 = distinct !{null, null, null, null}
!103 = distinct !{null}
!104 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_}
!105 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!106 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!107 = !{!108, !59, i64 232}
!108 = !{!"_ZTSN8facebook5velox4exec24FunctionSignatureBuilderE", !109, i64 0, !110, i64 56, !91, i64 168, !114, i64 192, !59, i64 232}
!109 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE", !12, i64 0}
!110 = !{!"_ZTSSt8optionalIN8facebook5velox4exec13TypeSignatureEE", !111, i64 0}
!111 = !{!"_ZTSSt14_Optional_baseIN8facebook5velox4exec13TypeSignatureELb0ELb0EE", !112, i64 0}
!112 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox4exec13TypeSignatureELb0ELb0ELb0EE", !113, i64 0}
!113 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox4exec13TypeSignatureELb1ELb0ELb0EE", !70, i64 0}
!114 = !{!"_ZTSSt6vectorIbSaIbEE", !115, i64 0}
!115 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !116, i64 0}
!116 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !24, i64 0}
!117 = !{!26, !5, i64 8}
!118 = !{!16, !16, i64 0}
!119 = distinct !{null}
!120 = distinct !{!120, !67}
!121 = distinct !{null, null}
!122 = distinct !{!122, !67}
!123 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!124 = distinct !{!124, !67}
!125 = distinct !{!125, !67}
!126 = distinct !{null}
!127 = !{!12, !18, i64 16}
!128 = !{!17, !18, i64 0}
!129 = distinct !{!129, !67}
!130 = !{!131, !132, i64 8}
!131 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_Vector_impl_dataE", !132, i64 0, !132, i64 8, !132, i64 16}
!132 = !{!"p1 _ZTSSt10shared_ptrIN8facebook5velox10BaseVectorEE", !15, i64 0}
!133 = !{!131, !132, i64 0}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZN8facebook5velox12errorMessageIJmiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!136 = distinct !{!136, !"_ZN8facebook5velox12errorMessageIJmiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!137 = !{!138, !139, i64 0}
!138 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE", !139, i64 0, !39, i64 8}
!139 = !{!"p1 _ZTSN8facebook5velox10BaseVectorE", !15, i64 0}
!140 = !{!141, !142, i64 0}
!141 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EE", !142, i64 0, !39, i64 8}
!142 = !{!"p1 _ZTSN8facebook5velox4TypeE", !15, i64 0}
!143 = !{!144, !147, i64 16}
!144 = !{!"_ZTSN8facebook5velox4TypeE", !145, i64 0, !146, i64 8, !147, i64 16, !59, i64 17}
!145 = !{!"_ZTSN8facebook5velox4TreeIKSt10shared_ptrIKNS0_4TypeEEEE"}
!146 = !{!"_ZTSN8facebook5velox13ISerializableE"}
!147 = !{!"_ZTSN8facebook5velox8TypeKindE", !6, i64 0}
!148 = !{!147, !147, i64 0}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZN8facebook5velox12errorMessageIJNS0_8TypeKindES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!151 = distinct !{!151, !"_ZN8facebook5velox12errorMessageIJNS0_8TypeKindES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!152 = !{!153, !154, i64 0}
!153 = !{!"_ZTSN5boost13intrusive_ptrIN8facebook5velox6BufferEEE", !154, i64 0}
!154 = !{!"p1 _ZTSN8facebook5velox6BufferE", !15, i64 0}
!155 = !{!156, !158, i64 28}
!156 = !{!"_ZTSN8facebook5velox10BaseVectorE", !157, i64 8, !147, i64 24, !59, i64 25, !158, i64 28, !153, i64 32, !27, i64 40, !159, i64 48, !5, i64 56, !160, i64 60, !160, i64 68, !160, i64 76, !160, i64 84, !164, i64 92, !59, i64 93}
!157 = !{!"_ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !141, i64 0}
!158 = !{!"_ZTSN8facebook5velox14VectorEncoding6SimpleE", !6, i64 0}
!159 = !{!"p1 _ZTSN8facebook5velox6memory10MemoryPoolE", !15, i64 0}
!160 = !{!"_ZTSSt8optionalIiE", !161, i64 0}
!161 = !{!"_ZTSSt14_Optional_baseIiLb1ELb1EE", !162, i64 0}
!162 = !{!"_ZTSSt17_Optional_payloadIiLb1ELb1ELb1EE", !163, i64 0}
!163 = !{!"_ZTSSt22_Optional_payload_baseIiE", !6, i64 0, !59, i64 4}
!164 = !{!"_ZTSSt6atomicIbE", !165, i64 0}
!165 = !{!"_ZTSSt13__atomic_baseIbE", !59, i64 0}
!166 = !{!167, !59, i64 144}
!167 = !{!"_ZTSN8facebook5velox14ConstantVectorIbEE", !168, i64 0, !174, i64 112, !5, i64 128, !153, i64 136, !59, i64 144, !59, i64 145, !59, i64 146, !175, i64 152}
!168 = !{!"_ZTSN8facebook5velox12SimpleVectorIbEE", !156, i64 0, !169, i64 94, !6, i64 96, !5, i64 100, !173, i64 104}
!169 = !{!"_ZTSSt8optionalIbE", !170, i64 0}
!170 = !{!"_ZTSSt14_Optional_baseIbLb1ELb1EE", !171, i64 0}
!171 = !{!"_ZTSSt17_Optional_payloadIbLb1ELb1ELb1EE", !172, i64 0}
!172 = !{!"_ZTSSt22_Optional_payload_baseIbE", !6, i64 0, !59, i64 1}
!173 = !{!"_ZTSN8facebook5velox17SimpleVectorStatsIbEE", !169, i64 0, !169, i64 2}
!174 = !{!"_ZTSSt10shared_ptrIN8facebook5velox10BaseVectorEE", !138, i64 0}
!175 = !{!"_ZTSSt6atomicIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEEE", !176, i64 0}
!176 = !{!"_ZTSSt13__atomic_baseIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEEE", !177, i64 0}
!177 = !{!"p1 _ZTSN5boost13intrusive_ptrIN8facebook5velox6BufferEEE", !15, i64 0}
!178 = !{!179, !5, i64 32}
!179 = !{!"_ZTSN8facebook5velox17SelectivityVectorE", !180, i64 0, !5, i64 24, !5, i64 28, !5, i64 32, !169, i64 36}
!180 = !{!"_ZTSSt6vectorImSaImEE", !181, i64 0}
!181 = !{!"_ZTSSt12_Vector_baseImSaImEE", !182, i64 0}
!182 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !183, i64 0}
!183 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!184 = !{!185, !186, i64 0}
!185 = !{!"_ZTSN8facebook5velox4exec7EvalCtxE", !186, i64 0, !187, i64 8, !188, i64 16, !59, i64 24, !59, i64 25, !189, i64 32, !192, i64 56, !59, i64 72, !59, i64 73, !59, i64 74, !59, i64 75, !195, i64 80, !196, i64 88}
!186 = !{!"p1 _ZTSN8facebook5velox4core7ExecCtxE", !15, i64 0}
!187 = !{!"p1 _ZTSN8facebook5velox4exec7ExprSetE", !15, i64 0}
!188 = !{!"p1 _ZTSN8facebook5velox9RowVectorE", !15, i64 0}
!189 = !{!"_ZTSSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE", !190, i64 0}
!190 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE", !191, i64 0}
!191 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12_Vector_implE", !131, i64 0}
!192 = !{!"_ZTSSt10shared_ptrIN8facebook5velox4exec14PeeledEncodingEE", !193, i64 0}
!193 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox4exec14PeeledEncodingELN9__gnu_cxx12_Lock_policyE2EE", !194, i64 0, !39, i64 8}
!194 = !{!"p1 _ZTSN8facebook5velox4exec14PeeledEncodingE", !15, i64 0}
!195 = !{!"p1 _ZTSN8facebook5velox17SelectivityVectorE", !15, i64 0}
!196 = !{!"_ZTSSt10shared_ptrIN8facebook5velox4exec10EvalErrorsEE", !197, i64 0}
!197 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox4exec10EvalErrorsELN9__gnu_cxx12_Lock_policyE2EE", !198, i64 0, !39, i64 8}
!198 = !{!"p1 _ZTSN8facebook5velox4exec10EvalErrorsE", !15, i64 0}
!199 = !{!200, !159, i64 0}
!200 = !{!"_ZTSN8facebook5velox4core7ExecCtxE", !159, i64 0, !201, i64 8, !202, i64 16, !203, i64 32, !208, i64 56, !213, i64 80}
!201 = !{!"p1 _ZTSN8facebook5velox4core8QueryCtxE", !15, i64 0}
!202 = !{!"_ZTSN8facebook5velox4core7ExecCtx18OptimizationParamsE", !59, i64 0, !59, i64 1, !59, i64 2, !59, i64 3, !59, i64 4, !5, i64 8}
!203 = !{!"_ZTSSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE", !204, i64 0}
!204 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE", !205, i64 0}
!205 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !206, i64 0}
!206 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !207, i64 0, !207, i64 8, !207, i64 16}
!207 = !{!"p1 _ZTSSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EE", !15, i64 0}
!208 = !{!"_ZTSSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE", !209, i64 0}
!209 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE", !210, i64 0}
!210 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !211, i64 0}
!211 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !212, i64 0, !212, i64 8, !212, i64 16}
!212 = !{!"p1 _ZTSSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EE", !15, i64 0}
!213 = !{!"_ZTSSt10unique_ptrIN8facebook5velox10VectorPoolESt14default_deleteIS2_EE", !214, i64 0}
!214 = !{!"_ZTSSt15__uniq_ptr_dataIN8facebook5velox10VectorPoolESt14default_deleteIS2_ELb1ELb1EE", !215, i64 0}
!215 = !{!"_ZTSSt15__uniq_ptr_implIN8facebook5velox10VectorPoolESt14default_deleteIS2_EE", !216, i64 0}
!216 = !{!"_ZTSSt5tupleIJPN8facebook5velox10VectorPoolESt14default_deleteIS2_EEE", !217, i64 0}
!217 = !{!"_ZTSSt11_Tuple_implILm0EJPN8facebook5velox10VectorPoolESt14default_deleteIS2_EEE", !218, i64 0}
!218 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox10VectorPoolELb0EE", !219, i64 0}
!219 = !{!"p1 _ZTSN8facebook5velox10VectorPoolE", !15, i64 0}
!220 = !{!221}
!221 = distinct !{!221, !222, !"_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb: argument 0"}
!222 = distinct !{!222, !"_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb"}
!223 = !{!224, !59, i64 1}
!224 = !{!"_ZTSSt22_Optional_payload_baseIcE", !6, i64 0, !59, i64 1}
!225 = distinct !{null}
!226 = !{!227, !159, i64 8}
!227 = !{!"_ZTSN8facebook5velox6BufferE", !159, i64 8, !30, i64 16, !16, i64 24, !16, i64 32, !228, i64 40, !230, i64 44, !6, i64 48}
!228 = !{!"_ZTSSt6atomicIiE", !229, i64 0}
!229 = !{!"_ZTSSt13__atomic_baseIiE", !5, i64 0}
!230 = !{!"_ZTSN8facebook5velox6Buffer4TypeE", !6, i64 0}
!231 = !{!232}
!232 = distinct !{!232, !233, !"_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb: argument 0"}
!233 = distinct !{!233, !"_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb"}
!234 = !{!227, !230, i64 44}
!235 = !{!227, !30, i64 16}
!236 = !{!237, !238, i64 120}
!237 = !{!"_ZTSN8facebook5velox10FlatVectorIbEE", !168, i64 0, !153, i64 112, !238, i64 120, !239, i64 128, !243, i64 152}
!238 = !{!"p1 bool", !15, i64 0}
!239 = !{!"_ZTSSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE", !240, i64 0}
!240 = !{!"_ZTSSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE", !241, i64 0}
!241 = !{!"_ZTSNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE12_Vector_implE", !242, i64 0}
!242 = !{!"_ZTSNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE17_Vector_impl_dataE", !177, i64 0, !177, i64 8, !177, i64 16}
!243 = !{!"_ZTSN5folly10F14FastSetIPKN8facebook5velox6BufferENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaIS5_EEE", !244, i64 0}
!244 = !{!"_ZTSN5folly11F14ValueSetIPKN8facebook5velox6BufferENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaIS5_EEE", !245, i64 0}
!245 = !{!"_ZTSN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEEE", !246, i64 0}
!246 = !{!"_ZTSN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEEE", !247, i64 0, !248, i64 8}
!247 = !{!"p1 _ZTSN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEEE", !15, i64 0}
!248 = !{!"_ZTSN5folly3f146detail31SizeAndChunkShiftAndPackedBeginINS1_11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEEELb1EEE", !249, i64 0, !250, i64 8}
!249 = !{!"_ZTSN5folly3f146detail23PackedSizeAndChunkShiftE", !16, i64 0}
!250 = !{!"_ZTSN5folly3f146detail18PackedChunkItemPtrIPPKN8facebook5velox6BufferEEE", !16, i64 0}
!251 = distinct !{!251, !67, !252, !253}
!252 = !{!"llvm.loop.isvectorized", i32 1}
!253 = !{!"llvm.loop.unroll.runtime.disable"}
!254 = !{!"branch_weights", i32 4, i32 12}
!255 = distinct !{!255, !67, !252, !253}
!256 = distinct !{!256, !67, !252, !253}
!257 = !{!"branch_weights", i32 16, i32 112}
!258 = distinct !{!258, !67, !252, !253}
!259 = distinct !{!259, !67, !253, !252}
!260 = distinct !{!260, !67, !252}
!261 = distinct !{!261, !67}
!262 = !{!159, !159, i64 0}
!263 = !{!264, !264, i64 0}
!264 = !{!"std::nullptr_t", !6, i64 0}
!265 = !{!266}
!266 = distinct !{!266, !267, !"_ZSt11make_sharedIN8facebook5velox10FlatVectorIbEEJPNS1_6memory10MemoryPoolESt10shared_ptrIKNS1_10ScalarTypeILNS1_8TypeKindE0EEEEDniRN5boost13intrusive_ptrINS1_6BufferEEESt6vectorISG_SaISG_EEEES7_IT_EDpOT0_: argument 0"}
!267 = distinct !{!267, !"_ZSt11make_sharedIN8facebook5velox10FlatVectorIbEEJPNS1_6memory10MemoryPoolESt10shared_ptrIKNS1_10ScalarTypeILNS1_8TypeKindE0EEEEDniRN5boost13intrusive_ptrINS1_6BufferEEESt6vectorISG_SaISG_EEEES7_IT_EDpOT0_"}
!268 = !{!269, !269, i64 0}
!269 = !{!"p1 _ZTSN8facebook5velox10FlatVectorIbEE", !15, i64 0}
!270 = !{!242, !177, i64 0}
!271 = !{!242, !177, i64 8}
!272 = distinct !{!272, !67}
!273 = !{!242, !177, i64 16}
!274 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!275 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!276 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!277 = !{!278, !59, i64 24}
!278 = !{!"_ZTSSt22_Optional_payload_baseISt6vectorImSaImEEE", !6, i64 0, !59, i64 24}
!279 = !{!185, !195, i64 80}
!280 = !{!156, !159, i64 48}
!281 = distinct !{null, null, null, null}
!282 = !{!283, !5, i64 0}
!283 = !{!"_ZTSN3fmt3v1111basic_specsE", !5, i64 0, !6, i64 4}
!284 = !{!285, !5, i64 12}
!285 = !{!"_ZTSN3fmt3v1112format_specsE", !283, i64 0, !5, i64 8, !5, i64 12}
!286 = !{!287, !30, i64 0}
!287 = !{!"_ZTSN3fmt3v1117basic_string_viewIcEE", !30, i64 0, !16, i64 8}
!288 = !{!287, !16, i64 8}
!289 = !{!290, !290, i64 0}
!290 = !{!"p1 _ZTSN3fmt3v116detail6bufferIcEE", !15, i64 0}
!291 = distinct !{!291, !67}
!292 = !{!293, !293, i64 0}
!293 = !{!"_ZTSN3fmt3v1111arg_id_kindE", !6, i64 0}
!294 = distinct !{!294, !67}
!295 = !{!296, !5, i64 16}
!296 = !{!"_ZTSN3fmt3v1113parse_contextIcEE", !287, i64 0, !5, i64 16}
!297 = !{!298, !298, i64 0}
!298 = !{!"p1 _ZTSN3fmt3v1113parse_contextIcEE", !15, i64 0}
!299 = !{!300, !300, i64 0}
!300 = !{!"p1 _ZTSN3fmt3v116detail7arg_refIcEE", !15, i64 0}
!301 = !{!302, !300, i64 8}
!302 = !{!"_ZTSN3fmt3v116detail20dynamic_spec_handlerIcEE", !298, i64 0, !300, i64 8, !15, i64 16}
!303 = !{i64 8}
!304 = !{!302, !15, i64 16}
!305 = !{i64 4}
!306 = !{!302, !298, i64 0}
!307 = distinct !{!307, !67}
!308 = !{!309, !30, i64 0}
!309 = !{!"_ZTSZN3fmt3v116detail16code_point_indexENS0_17basic_string_viewIcEEmEUljS3_E_", !30, i64 0, !27, i64 8, !27, i64 16}
!310 = !{!27, !27, i64 0}
!311 = !{!312, !30, i64 0}
!312 = !{!"_ZTSN3fmt3v116detail6bufferIcEE", !30, i64 0, !16, i64 8, !16, i64 16, !15, i64 24}
!313 = !{!312, !16, i64 8}
!314 = !{!312, !16, i64 16}
!315 = !{!312, !15, i64 24}
!316 = !{!317, !16, i64 288}
!317 = !{!"_ZTSN3fmt3v116detail15counting_bufferIcEE", !312, i64 0, !6, i64 32, !16, i64 288}
!318 = !{!285, !5, i64 8}
!319 = distinct !{!319, !67}
!320 = distinct !{!320, !67, !252, !253}
!321 = !{!"branch_weights", i32 8, i32 120}
!322 = distinct !{!322, !67, !252, !253}
!323 = distinct !{!323, !324}
!324 = !{!"llvm.loop.unroll.disable"}
!325 = distinct !{!325, !67, !252}
!326 = distinct !{!326, !67}
!327 = !{!328, !59, i64 0}
!328 = !{!"_ZTSZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEEUlS4_E_", !59, i64 0, !287, i64 8, !30, i64 24, !16, i64 32}
!329 = !{!30, !30, i64 0}
!330 = !{!328, !30, i64 24}
!331 = !{!328, !16, i64 32}
!332 = distinct !{null, null, null}
!333 = !{!334, !30, i64 0}
!334 = !{!"_ZTSN3fmt3v116detail18find_escape_resultIcEE", !30, i64 0, !30, i64 8, !5, i64 16}
!335 = !{!336}
!336 = distinct !{!336, !337, !"_ZN3fmt3v116detail11find_escapeEPKcS3_: argument 0"}
!337 = distinct !{!337, !"_ZN3fmt3v116detail11find_escapeEPKcS3_"}
!338 = !{!334, !30, i64 8}
!339 = !{!334, !5, i64 16}
!340 = distinct !{null, null, null}
!341 = distinct !{!341, !67, !252, !253}
!342 = distinct !{!342, !67, !252, !253}
!343 = distinct !{!343, !324}
!344 = distinct !{!344, !67}
!345 = distinct !{!345, !67, !252}
!346 = distinct !{!346, !67}
!347 = distinct !{null, null}
!348 = distinct !{null, null, null, null}
!349 = distinct !{!349, !67, !252, !253}
!350 = distinct !{!350, !67, !252, !253}
!351 = distinct !{!351, !324}
!352 = distinct !{!352, !67, !252}
!353 = distinct !{!353, !67}
!354 = distinct !{!354, !67, !252, !253}
!355 = distinct !{!355, !67, !252, !253}
!356 = distinct !{!356, !324}
!357 = distinct !{!357, !67, !252}
!358 = distinct !{!358, !67}
!359 = distinct !{!359, !67}
!360 = distinct !{!360, !67, !252, !253}
!361 = distinct !{!361, !67, !252, !253}
!362 = distinct !{!362, !324}
!363 = distinct !{!363, !67, !252}
!364 = distinct !{!364, !67}
!365 = distinct !{!365, !67}
!366 = distinct !{null, null, null}
!367 = !{!368, !27, i64 0}
!368 = !{!"_ZTSZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEE17count_code_points", !27, i64 0}
!369 = distinct !{null, null, null, null}
!370 = distinct !{!370, !67}
!371 = distinct !{!371, !67, !252, !253}
!372 = distinct !{!372, !67, !252, !253}
!373 = distinct !{!373, !324}
!374 = distinct !{!374, !67, !252}
!375 = distinct !{!375, !67}
!376 = !{!377, !378, i64 0}
!377 = !{!"_ZTSN3fmt3v1117basic_format_argsINS0_7contextEEE", !378, i64 0, !6, i64 8}
!378 = !{!"long long", !6, i64 0}
!379 = !{!380, !382}
!380 = distinct !{!380, !381, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi: argument 0"}
!381 = distinct !{!381, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi"}
!382 = distinct !{!382, !383, !"_ZNK3fmt3v117context3argEi: argument 0"}
!383 = distinct !{!383, !"_ZNK3fmt3v117context3argEi"}
!384 = !{!385, !387}
!385 = distinct !{!385, !386, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE: argument 0"}
!386 = distinct !{!386, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE"}
!387 = distinct !{!387, !388, !"_ZNK3fmt3v117context3argENS0_17basic_string_viewIcEE: argument 0"}
!388 = distinct !{!388, !"_ZNK3fmt3v117context3argENS0_17basic_string_viewIcEE"}
!389 = !{!390, !16, i64 8}
!390 = !{!"_ZTSN3fmt3v116detail15named_arg_valueIcEE", !391, i64 0, !16, i64 8}
!391 = !{!"p1 _ZTSN3fmt3v116detail14named_arg_infoIcEE", !15, i64 0}
!392 = !{!390, !391, i64 0}
!393 = distinct !{!393, !67}
!394 = !{!395, !30, i64 0}
!395 = !{!"_ZTSN3fmt3v116detail14named_arg_infoIcEE", !30, i64 0, !5, i64 8}
!396 = !{!395, !5, i64 8}
!397 = !{!398, !398, i64 0}
!398 = !{!"_ZTSN3fmt3v116detail4typeE", !6, i64 0}
!399 = !{!400}
!400 = distinct !{!400, !401, !"_ZN8facebook5velox12errorMessageIJSt10shared_ptrIKNS0_4TypeEES5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!401 = distinct !{!401, !"_ZN8facebook5velox12errorMessageIJSt10shared_ptrIKNS0_4TypeEES5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!402 = distinct !{null, null, null, null}
!403 = !{!156, !5, i64 56}
!404 = !{!405, !405, i64 0}
!405 = !{!"p1 int", !15, i64 0}
!406 = !{!144, !59, i64 17}
!407 = !{!408, !408, i64 0}
!408 = !{!"p1 _ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !15, i64 0}
!409 = !{!238, !238, i64 0}
!410 = !{!411, !5, i64 0}
!411 = !{!"_ZTSN8facebook5velox10BaseVector9CopyRangeE", !5, i64 0, !5, i64 4, !5, i64 8}
!412 = !{!411, !5, i64 4}
!413 = !{!411, !5, i64 8}
!414 = !{!415, !416, i64 0}
!415 = !{!"_ZTSN5folly5RangeIPKN8facebook5velox10BaseVector9CopyRangeEEE", !416, i64 0, !416, i64 8}
!416 = !{!"p1 _ZTSN8facebook5velox10BaseVector9CopyRangeE", !15, i64 0}
!417 = !{!415, !416, i64 8}
!418 = !{!163, !59, i64 4}
!419 = !{!172, !59, i64 1}
!420 = !{!168, !6, i64 96}
!421 = !{!156, !59, i64 25}
!422 = !{!142, !142, i64 0}
!423 = !{!424, !424, i64 0}
!424 = !{!"p2 _ZTSN8facebook5velox4TypeE", !14, i64 0}
!425 = !{!426, !424, i64 0}
!426 = !{!"_ZTSZN8facebook5velox12SimpleVectorIbE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKbS7_EUlvE_", !424, i64 0, !238, i64 8, !238, i64 16}
!427 = !{!426, !238, i64 8}
!428 = !{!426, !238, i64 16}
!429 = distinct !{null}
!430 = !{!431, !30, i64 8}
!431 = !{!"_ZTSSt9type_info", !30, i64 8}
!432 = !{!433}
!433 = distinct !{!433, !434, !"_ZN8facebook5velox12errorMessageIJPKcS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!434 = distinct !{!434, !"_ZN8facebook5velox12errorMessageIJPKcS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!435 = !{!436}
!436 = distinct !{!436, !437, !"_ZN8facebook5velox12errorMessageIJPKcS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!437 = distinct !{!437, !"_ZN8facebook5velox12errorMessageIJPKcS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!438 = !{!439}
!439 = distinct !{!439, !440, !"_ZN8facebook5velox12errorMessageIJPKcS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!440 = distinct !{!440, !"_ZN8facebook5velox12errorMessageIJPKcS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!441 = !{!442}
!442 = distinct !{!442, !443, !"_ZN8facebook5velox12errorMessageIJPKcS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!443 = distinct !{!443, !"_ZN8facebook5velox12errorMessageIJPKcS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!444 = !{!445}
!445 = distinct !{!445, !446, !"_ZN8facebook5velox12errorMessageIJPKcS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!446 = distinct !{!446, !"_ZN8facebook5velox12errorMessageIJPKcS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!447 = !{!448}
!448 = distinct !{!448, !449, !"_ZN8facebook5velox12errorMessageIJPKcS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!449 = distinct !{!449, !"_ZN8facebook5velox12errorMessageIJPKcS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!450 = !{!451}
!451 = distinct !{!451, !452, !"_ZN8facebook5velox12errorMessageIJPKcS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!452 = distinct !{!452, !"_ZN8facebook5velox12errorMessageIJPKcS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!453 = !{!454}
!454 = distinct !{!454, !455, !"_ZN8facebook5velox12errorMessageIJPKcS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!455 = distinct !{!455, !"_ZN8facebook5velox12errorMessageIJPKcS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!456 = !{!457}
!457 = distinct !{!457, !458, !"_ZN8facebook5velox12errorMessageIJPKcS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!458 = distinct !{!458, !"_ZN8facebook5velox12errorMessageIJPKcS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!459 = !{!460}
!460 = distinct !{!460, !461, !"_ZN8facebook5velox12errorMessageIJPKcS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
end_hunk_1
