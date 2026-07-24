inline.NumInlined: 6503
inline.NumDeleted: 1932
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_111NotFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(64) %i.av)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit unwind label %bb.m, !inline_history !223

bb.m:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #35
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit: ; preds = %bb.l, %.noexc.i.i
  %.pr = load ptr, ptr %13, align 8, !tbaa !150   ; 7 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.bk = atomicrmw sub ptr %i.bj, i32 1 acq_rel, align 4
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.n
  %i.bm = load ptr, ptr %.pr, align 8, !tbaa !45
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8
  invoke void %i.bo(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i unwind label %bb.o, !inline_history !223

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !224
  %.not.i.i54 = icmp eq ptr %i.bq, null
  %i.br = load ptr, ptr %.pr, align 8, !tbaa !45
  %..i.i = select i1 %.not.i.i54, i64 8, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %..i.i
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.o, !inline_history !223

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
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !176
  %i.bz = load ptr, ptr %4, align 8, !tbaa !182
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !197
  %i.cb = sext i32 %i.by to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32, !noalias !229
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 0, ptr %i.cc, align 1, !tbaa !221, !noalias !229
  %i.cd = add nsw i64 %i.cb, 7
  %i.ce = lshr i64 %i.cd, 3
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %14, i64 noundef %i.ce, ptr noundef %i.ca, ptr noundef nonnull align 1 dereferenceable(2) %6, i1 noundef zeroext false)
          to label %bb.r unwind label %bb.aa

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32, !noalias !229
  %i.cf = load ptr, ptr %14, align 8, !tbaa !150
  store ptr null, ptr %14, align 8, !tbaa !150
  %i.cg = load ptr, ptr %12, align 8, !tbaa !150  ; 7 uses
  store ptr %i.cf, ptr %12, align 8, !tbaa !150
  %.not.i.i57 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i57, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit68, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = atomicrmw sub ptr %i.ch, i32 1 acq_rel, align 4
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %.sink.split.i.i.i58, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit62

.sink.split.i.i.i58:                              ; preds = %bb.s
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !45
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.cm = load ptr, ptr %i.cl, align 8
  invoke void %i.cm(ptr noundef nonnull align 8 dereferenceable(64) %i.cg)
          to label %.noexc.i.i59 unwind label %bb.t, !inline_history !223

.noexc.i.i59:                                     ; preds = %.sink.split.i.i.i58
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !224
  %.not.i.i.i60 = icmp eq ptr %i.co, null
  %i.cp = load ptr, ptr %i.cg, align 8, !tbaa !45
  %..i.i.i61 = select i1 %.not.i.i.i60, i64 8, i64 48
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %..i.i.i61
  %i.cr = load ptr, ptr %i.cq, align 8
  invoke void %i.cr(ptr noundef nonnull align 8 dereferenceable(64) %i.cg)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit62 unwind label %bb.t, !inline_history !223

bb.t:                                             ; preds = %.noexc.i.i59, %.sink.split.i.i.i58
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #35
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit62: ; preds = %bb.s, %.noexc.i.i59
  %.pr99 = load ptr, ptr %14, align 8, !tbaa !150 ; 7 uses
  %.not.i63 = icmp eq ptr %.pr99, null
  br i1 %.not.i63, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit68, label %bb.u

bb.u:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit62
  %i.cu = getelementptr inbounds nuw i8, ptr %.pr99, i64 40
  %i.cv = atomicrmw sub ptr %i.cu, i32 1 acq_rel, align 4
  %i.cw = icmp eq i32 %i.cv, 1
  br i1 %i.cw, label %.sink.split.i.i64, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit68

.sink.split.i.i64:                                ; preds = %bb.u
  %i.cx = load ptr, ptr %.pr99, align 8, !tbaa !45
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %i.cz = load ptr, ptr %i.cy, align 8
  invoke void %i.cz(ptr noundef nonnull align 8 dereferenceable(64) %.pr99)
          to label %.noexc.i65 unwind label %bb.v, !inline_history !223

.noexc.i65:                                       ; preds = %.sink.split.i.i64
  %i.da = getelementptr inbounds nuw i8, ptr %.pr99, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !224
  %.not.i.i66 = icmp eq ptr %i.db, null
  %i.dc = load ptr, ptr %.pr99, align 8, !tbaa !45
  %..i.i67 = select i1 %.not.i.i66, i64 8, i64 48
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %..i.i67
  %i.de = load ptr, ptr %i.dd, align 8
  invoke void %i.de(ptr noundef nonnull align 8 dereferenceable(64) %.pr99)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit68 unwind label %bb.v, !inline_history !223

bb.v:                                             ; preds = %.noexc.i65, %.sink.split.i.i64
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #35
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit68: ; preds = %bb.r, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit62, %bb.u, %.noexc.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.dh = load ptr, ptr %12, align 8, !tbaa !150  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 44
  %i.dj = load i8, ptr %i.di, align 4, !tbaa !232
  %i.dk = and i8 %i.dj, 2
  %.not.i69 = icmp eq i8 %i.dk, 0
  br i1 %.not.i69, label %bb.x, label %bb.w, !prof !121

bb.w:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit68
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #36
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit68
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !233 ; 9 uses
  %i.dn = load ptr, ptr %i.h, align 8, !tbaa !135
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 120
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !234
  %i.dq = load i32, ptr %i.bx, align 8, !tbaa !176
  %i.dr = sext i32 %i.dq to i64
  %i.ds = add nsw i64 %i.dr, 7
  %i.dt = lshr i64 %i.ds, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.dm, ptr align 8 %i.dp, i64 %i.dt, i1 false)
  %i.du = load i32, ptr %i.bx, align 8, !tbaa !176 ; 7 uses
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
  %i.ec = shl i64 %index, 3
  %19 = and i64 %i.ec, 2305843009213693824
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dm, i64 %19 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 64 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %i.ed, align 8, !tbaa !116
  %wide.load126 = load <4 x i64>, ptr %i.ee, align 8, !tbaa !116
  %wide.load127 = load <4 x i64>, ptr %i.ef, align 8, !tbaa !116
  %wide.load128 = load <4 x i64>, ptr %i.eg, align 8, !tbaa !116
  %i.eh = xor <4 x i64> %wide.load, splat (i64 -1)
  %i.ei = xor <4 x i64> %wide.load126, splat (i64 -1)
  %i.ej = xor <4 x i64> %wide.load127, splat (i64 -1)
  %i.ek = xor <4 x i64> %wide.load128, splat (i64 -1)
  store <4 x i64> %i.eh, ptr %i.ed, align 8, !tbaa !116
  store <4 x i64> %i.ei, ptr %i.ee, align 8, !tbaa !116
  store <4 x i64> %i.ej, ptr %i.ef, align 8, !tbaa !116
  store <4 x i64> %i.ek, ptr %i.eg, align 8, !tbaa !116
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !249

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dz, %n.vec
  br i1 %cmp.n, label %.preheader26.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !252

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec131 = and i64 %i.dz, 576460752303423484   ; 3 uses
  %i.em = shl i64 %n.vec131, 6                    ; 2 uses
  %i.en = or disjoint i64 %i.em, 64
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index132 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next134, %vec.epilog.vector.body ] ; 2 uses
  %i.eo = shl i64 %index132, 3
  %20 = and i64 %i.eo, 2305843009213693920
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dm, i64 %20 ; 2 uses
  %wide.load133 = load <4 x i64>, ptr %i.ep, align 8, !tbaa !116
  %i.eq = xor <4 x i64> %wide.load133, splat (i64 -1)
  store <4 x i64> %i.eq, ptr %i.ep, align 8, !tbaa !116
  %index.next134 = add nuw i64 %index132, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next134, %n.vec131
  br i1 %i.er, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !253

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n135 = icmp eq i64 %i.dz, %n.vec131
  br i1 %cmp.n135, label %.preheader26.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv36.i.ph = phi i64 [ 0, %iter.check ], [ %i.ea, %vec.epilog.iter.check ], [ %i.em, %vec.epilog.middle.block ]
  %indvars.iv.i.ph = phi i64 [ 64, %iter.check ], [ %i.eb, %vec.epilog.iter.check ], [ %i.en, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.preheader26.loopexit.i:                          ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.es = and i32 %i.du, 2147483584
  br label %.preheader26.i

.preheader26.i:                                   ; preds = %.preheader26.loopexit.i, %bb.x
  %.0.lcssa.i = phi i32 [ 0, %bb.x ], [ %i.es, %.preheader26.loopexit.i ] ; 3 uses
  %i.et = or disjoint i32 %.0.lcssa.i, 8
  %.not2429.i = icmp sgt i32 %i.et, %i.du
  br i1 %.not2429.i, label %.preheader.i, label %iter.check156

iter.check156:                                    ; preds = %.preheader26.i
  %i.eu = zext nneg i32 %.0.lcssa.i to i64        ; 8 uses
  %i.ev = or disjoint i64 %i.eu, 8                ; 3 uses
  %i.ew = zext nneg i32 %i.du to i64              ; 2 uses
  %i.ex = or disjoint i64 %i.eu, 16
  %i.ey = add nuw nsw i64 %i.ew, 1
  %umax138 = call i64 @llvm.umax.i64(i64 %i.ex, i64 %i.ey)
  %i.ez = add nsw i64 %umax138, -9
  %i.fa = sub nsw i64 %i.ez, %i.eu                ; 3 uses
  %i.fb = lshr i64 %i.fa, 3
  %i.fc = add nuw nsw i64 %i.fb, 1                ; 5 uses
  %min.iters.check139 = icmp ult i64 %i.fa, 120
  br i1 %min.iters.check139, label %.lr.ph31.i.preheader, label %vector.main.loop.iter.check140

vector.main.loop.iter.check140:                   ; preds = %iter.check156
  %min.iters.check141 = icmp ult i64 %i.fa, 1016
  br i1 %min.iters.check141, label %vec.epilog.ph160, label %vector.ph142

vector.ph142:                                     ; preds = %vector.main.loop.iter.check140
  %n.mod.vf143 = and i64 %i.fc, 112
  %n.vec144 = and i64 %i.fc, 4611686018427387776  ; 4 uses
  %i.fd = shl i64 %n.vec144, 3                    ; 2 uses
  %i.fe = add i64 %i.fd, %i.eu
  %i.ff = add i64 %i.ev, %i.fd                    ; 2 uses
  %i.fg = lshr exact i64 %i.eu, 3
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph142
  %index146 = phi i64 [ 0, %vector.ph142 ], [ %index.next151, %vector.body145 ] ; 2 uses
  %21 = add i64 %i.fg, %index146
  %22 = and i64 %21, 2305843009213693944
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dm, i64 %22 ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 64 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 96 ; 2 uses
  %wide.load147 = load <32 x i8>, ptr %i.fh, align 1, !tbaa !32
  %wide.load148 = load <32 x i8>, ptr %i.fi, align 1, !tbaa !32
  %wide.load149 = load <32 x i8>, ptr %i.fj, align 1, !tbaa !32
  %wide.load150 = load <32 x i8>, ptr %i.fk, align 1, !tbaa !32
  %i.fl = xor <32 x i8> %wide.load147, splat (i8 -1)
  %i.fm = xor <32 x i8> %wide.load148, splat (i8 -1)
  %i.fn = xor <32 x i8> %wide.load149, splat (i8 -1)
  %i.fo = xor <32 x i8> %wide.load150, splat (i8 -1)
  store <32 x i8> %i.fl, ptr %i.fh, align 1, !tbaa !32
  store <32 x i8> %i.fm, ptr %i.fi, align 1, !tbaa !32
  store <32 x i8> %i.fn, ptr %i.fj, align 1, !tbaa !32
  store <32 x i8> %i.fo, ptr %i.fk, align 1, !tbaa !32
  %index.next151 = add nuw i64 %index146, 128     ; 2 uses
  %i.fp = icmp eq i64 %index.next151, %n.vec144
  br i1 %i.fp, label %middle.block152, label %vector.body145, !llvm.loop !254

middle.block152:                                  ; preds = %vector.body145
  %ind.escape = add nsw i64 %i.ff, -8
  %cmp.n153 = icmp eq i64 %i.fc, %n.vec144
  br i1 %cmp.n153, label %.preheader.i.loopexit, label %vec.epilog.iter.check158

vec.epilog.iter.check158:                         ; preds = %middle.block152
  %min.epilog.iters.check159 = icmp eq i64 %n.mod.vf143, 0
  br i1 %min.epilog.iters.check159, label %.lr.ph31.i.preheader, label %vec.epilog.ph160, !prof !255

vec.epilog.ph160:                                 ; preds = %vector.main.loop.iter.check140, %vec.epilog.iter.check158
  %vec.epilog.resume.val154 = phi i64 [ %n.vec144, %vec.epilog.iter.check158 ], [ 0, %vector.main.loop.iter.check140 ]
  %n.vec162 = and i64 %i.fc, 4611686018427387888  ; 3 uses
  %i.fq = shl i64 %n.vec162, 3                    ; 2 uses
  %i.fr = add i64 %i.fq, %i.eu
  %i.fs = add i64 %i.ev, %i.fq                    ; 2 uses
  %i.ft = lshr exact i64 %i.eu, 3
  br label %vec.epilog.vector.body163

vec.epilog.vector.body163:                        ; preds = %vec.epilog.vector.body163, %vec.epilog.ph160
  %index164 = phi i64 [ %vec.epilog.resume.val154, %vec.epilog.ph160 ], [ %index.next166, %vec.epilog.vector.body163 ] ; 2 uses
  %23 = add i64 %i.ft, %index164
  %24 = and i64 %23, 2305843009213693944
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dm, i64 %24 ; 2 uses
  %wide.load165 = load <16 x i8>, ptr %i.fu, align 1, !tbaa !32
  %i.fv = xor <16 x i8> %wide.load165, splat (i8 -1)
  store <16 x i8> %i.fv, ptr %i.fu, align 1, !tbaa !32
  %index.next166 = add nuw i64 %index164, 16      ; 2 uses
  %i.fw = icmp eq i64 %index.next166, %n.vec162
  br i1 %i.fw, label %vec.epilog.middle.block167, label %vec.epilog.vector.body163, !llvm.loop !256

vec.epilog.middle.block167:                       ; preds = %vec.epilog.vector.body163
  %ind.escape168 = add nsw i64 %i.fs, -8
  %cmp.n169 = icmp eq i64 %i.fc, %n.vec162
  br i1 %cmp.n169, label %.preheader.i.loopexit, label %.lr.ph31.i.preheader

.lr.ph31.i.preheader:                             ; preds = %iter.check156, %vec.epilog.iter.check158, %vec.epilog.middle.block167
  %indvars.iv101.ph = phi i64 [ %i.eu, %iter.check156 ], [ %i.fe, %vec.epilog.iter.check158 ], [ %i.fr, %vec.epilog.middle.block167 ]
  %indvars.iv.ph = phi i64 [ %i.ev, %iter.check156 ], [ %i.ff, %vec.epilog.iter.check158 ], [ %i.fs, %vec.epilog.middle.block167 ]
  br label %.lr.ph31.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %.lr.ph.i ], [ %indvars.iv36.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ]
  %i.fx = lshr exact i64 %indvars.iv36.i, 3
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.fx ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !116
  %i.ga = xor i64 %i.fz, -1
  store i64 %i.ga, ptr %i.fy, align 8, !tbaa !116
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 64 ; 2 uses
  %.not.i70 = icmp samesign ugt i64 %indvars.iv.next.i, %i.dv
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 64
  br i1 %.not.i70, label %.preheader26.loopexit.i, label %.lr.ph.i, !llvm.loop !257

.preheader.i.loopexit:                            ; preds = %.lr.ph31.i, %vec.epilog.middle.block167, %middle.block152
  %indvars.iv.lcssa = phi i64 [ %ind.escape168, %vec.epilog.middle.block167 ], [ %ind.escape, %middle.block152 ], [ %indvars.iv, %.lr.ph31.i ]
  %i.gb = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.loopexit, %.preheader26.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader26.i ], [ %i.gb, %.preheader.i.loopexit ] ; 2 uses
  %i.gc = icmp slt i32 %.1.lcssa.i, %i.du
  br i1 %i.gc, label %.lr.ph34.preheader.i, label %.loopexit

.lr.ph34.preheader.i:                             ; preds = %.preheader.i
  %i.gd = zext nneg i32 %.1.lcssa.i to i64
  %wide.trip.count = zext nneg i32 %i.du to i64
  br label %.lr.ph34.i

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.preheader, %.lr.ph31.i
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %.lr.ph31.i ], [ %indvars.iv101.ph, %.lr.ph31.i.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph31.i ], [ %indvars.iv.ph, %.lr.ph31.i.preheader ] ; 2 uses
  %i.ge = lshr exact i64 %indvars.iv101, 3
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.ge ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !32
  %i.gh = xor i8 %i.gg, -1
  store i8 %i.gh, ptr %i.gf, align 1, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not24.i = icmp samesign ugt i64 %indvars.iv.next, %i.ew
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 8
  br i1 %.not24.i, label %.preheader.i.loopexit, label %.lr.ph31.i, !llvm.loop !258

.lr.ph34.i:                                       ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i, %.lr.ph34.preheader.i
  %indvars.iv41.i = phi i64 [ %i.gd, %.lr.ph34.preheader.i ], [ %indvars.iv.next42.i, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i ] ; 6 uses
  %i.gi = lshr i64 %indvars.iv41.i, 6
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.gi
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !116
  %i.gl = and i64 %indvars.iv41.i, 63
  %i.gm = shl nuw i64 1, %i.gl
  %i.gn = and i64 %i.gm, %i.gk
  %.not25.i = icmp eq i64 %i.gn, 0
  %i.go = lshr i64 %indvars.iv41.i, 3
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.go ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !32  ; 2 uses
  br i1 %.not25.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph34.i
  %i.gr = trunc i64 %indvars.iv41.i to i8
  %i.gs = and i8 %i.gr, 7
  %i.gt = shl nuw i8 1, %i.gs
  %i.gu = or i8 %i.gt, %i.gq
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i

bb.z:                                             ; preds = %.lr.ph34.i
  %i.gv = and i64 %indvars.iv41.i, 7
  %i.gw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !32
  %i.gy = and i8 %i.gx, %i.gq
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i:  ; preds = %bb.z, %bb.y
  %.sink.i.i = phi i8 [ %i.gy, %bb.z ], [ %i.gu, %bb.y ]
  store i8 %.sink.i.i, ptr %i.gp, align 1, !tbaa !32
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph34.i, !llvm.loop !259

bb.aa:                                            ; preds = %bb.q
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %bb.bk

bb.ab:                                            ; preds = %bb.w
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.loopexit:                                        ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %i.hb = load ptr, ptr %4, align 8, !tbaa !182
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !197
  store ptr %i.hc, ptr %i.c, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  invoke void @_ZN8facebook5velox7BOOLEANEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.114") align 8 %16)
          to label %bb.ac unwind label %bb.bf

bb.ac:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store ptr null, ptr %i.d, align 8, !tbaa !261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !176
  store i32 %i.he, ptr %i.e, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.hf = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #33
          to label %.noexc71 unwind label %bb.bg  ; 6 uses

.noexc71:                                         ; preds = %bb.ac
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store i32 1, ptr %i.hg, align 8, !tbaa !42, !noalias !263
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  store i32 1, ptr %i.hh, align 4, !tbaa !44, !noalias !263
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox10FlatVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.hf, align 8, !tbaa !45, !noalias !263
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox10FlatVectorIbEEJPNS1_6memory10MemoryPoolESt10shared_ptrIKNS1_10ScalarTypeILNS1_8TypeKindE0EEEEDniRN5boost13intrusive_ptrINS1_6BufferEEESt6vectorISG_SaISG_EEEEvPT_DpOT0_(ptr noundef nonnull %i.hi, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.ad unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox10FlatVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i, !noalias !263

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox10FlatVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i: ; preds = %.noexc71
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef 192) #34, !noalias !263
  br label %.body

bb.ad:                                            ; preds = %.noexc71
  %i.hk = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store ptr %i.hf, ptr %i.hk, align 8, !tbaa !37, !alias.scope !263
  store ptr %i.hi, ptr %15, align 16, !tbaa !266, !alias.scope !263
  %i.hl = load ptr, ptr %17, align 8, !tbaa !268  ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !269 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.hl, %i.hn
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ad, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ic, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.hl, %bb.ad ] ; 2 uses
  %i.ho = load ptr, ptr %.05.i.i.i, align 8, !tbaa !150 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %i.hq = atomicrmw sub ptr %i.hp, i32 1 acq_rel, align 4
  %i.hr = icmp eq i32 %i.hq, 1
  br i1 %i.hr, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.ae
  %i.hs = load ptr, ptr %i.ho, align 8, !tbaa !45
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 64
  %i.hu = load ptr, ptr %i.ht, align 8
  invoke void %i.hu(ptr noundef nonnull align 8 dereferenceable(64) %i.ho)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.af, !inline_history !223

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !224
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hw, null
  %i.hx = load ptr, ptr %i.ho, align 8, !tbaa !45
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %..i.i.i.i.i.i.i
  %i.hz = load ptr, ptr %i.hy, align 8
  invoke void %i.hz(ptr noundef nonnull align 8 dereferenceable(64) %i.ho)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.af, !inline_history !223

bb.af:                                            ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  %i.ib = extractvalue { ptr, i32 } %i.ia, 0
  call void @__clang_call_terminate(ptr %i.ib) #35
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.ae, %.lr.ph.i.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %i.ic, %i.hn
  br i1 %.not.i.i.i72, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !270

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 8, !tbaa !268
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.ad
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10FlatVectorImEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsImEESt8optionalIiESP_SO_IbESP_SP_:bb.a
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i34 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i34, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.k ], [ %i.am, %bb.l ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !48

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #32
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorImEE, i64 16), ptr %0, align 8, !tbaa !45
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !150
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !150
  store ptr null, ptr %5, align 8, !tbaa !150
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !150 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !233
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n
  %i.au = phi ptr [ %i.at, %bb.n ], [ null, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !993
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.aw, align 8, !tbaa !783
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.ay = load <2 x ptr>, ptr %6, align 8, !tbaa !829
  store <2 x ptr> %i.ay, ptr %17, align 16, !tbaa !829
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !271
  store ptr %i.bb, ptr %i.az, align 16, !tbaa !271
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN8facebook5velox10FlatVectorImE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %17)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bd = load ptr, ptr %17, align 16, !tbaa !268 ; 3 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !269 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bt, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.bd, %bb.p ] ; 2 uses
  %i.bf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !150 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = atomicrmw sub ptr %i.bg, i32 1 acq_rel, align 4
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.q
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !45
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.r, !inline_history !223

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !224
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !45
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %..i.i.i.i.i.i.i
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.r, !inline_history !223

bb.r:                                             ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #35
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.q, %.lr.ph.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bt, %i.be
  br i1 %.not.i.i.i35, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !270

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 16, !tbaa !268
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.p
  %i.bu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bd, %bb.p ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bv = load ptr, ptr %i.az, align 16, !tbaa !271
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #34
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.s
  %i.bz = load ptr, ptr %i.ao, align 8, !tbaa !150 ; 5 uses
  %.not53 = icmp eq ptr %i.bz, null
  br i1 %.not53, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !150
  %.not54 = icmp eq ptr %i.cb, null
  br i1 %.not54, label %bb.u, label %bb.z, !prof !48

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorImEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsImEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_0, ptr noundef nonnull @.str.142) #36
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #32
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #32
  br label %bb.aq

bb.x:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #32
  br label %bb.ap

bb.y:                                             ; preds = %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.z:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !566 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !401 ; 5 uses
  %.not.i.i.i36 = icmp sgt i32 %i.ci, 0
  br i1 %.not.i.i.i36, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.cj = and i32 %i.ci, 2147483584               ; 3 uses
  %.not3342.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not3342.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.aa
  %i.ck = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cl = add nsw i64 %i.ck, -64                  ; 3 uses
  %i.cm = lshr exact i64 %i.cl, 6
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.cl, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.i37.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check78 = icmp ult i64 %i.cl, 960
  br i1 %min.iters.check78, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cn, 12
  %n.vec = and i64 %i.cn, 576460752303423472      ; 4 uses
  %i.co = shl i64 %n.vec, 6                       ; 2 uses
  %i.cp = or disjoint i64 %i.co, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dd, %vector.body ]
  %vec.phi79 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.de, %vector.body ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.df, %vector.body ]
  %vec.phi81 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dg, %vector.body ]
  %i.cq = shl i64 %index, 3
  %20 = and i64 %i.cq, 2305843009213693824
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %20 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %wide.load = load <4 x i64>, ptr %i.cr, align 8, !tbaa !116
  %wide.load82 = load <4 x i64>, ptr %i.cs, align 8, !tbaa !116
  %wide.load83 = load <4 x i64>, ptr %i.ct, align 8, !tbaa !116
  %wide.load84 = load <4 x i64>, ptr %i.cu, align 8, !tbaa !116
  %i.cv = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load)
  %i.cw = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load82)
  %i.cx = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load83)
  %i.cy = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load84)
  %i.cz = trunc nuw nsw <4 x i64> %i.cv to <4 x i32>
  %i.da = trunc nuw nsw <4 x i64> %i.cw to <4 x i32>
  %i.db = trunc nuw nsw <4 x i64> %i.cx to <4 x i32>
  %i.dc = trunc nuw nsw <4 x i64> %i.cy to <4 x i32>
  %i.dd = add <4 x i32> %vec.phi, %i.cz           ; 2 uses
  %i.de = add <4 x i32> %vec.phi79, %i.da         ; 2 uses
  %i.df = add <4 x i32> %vec.phi80, %i.db         ; 2 uses
  %i.dg = add <4 x i32> %vec.phi81, %i.dc         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !995

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.de, %i.dd
  %bin.rdx85 = add <4 x i32> %i.df, %bin.rdx
  %bin.rdx86 = add <4 x i32> %i.dg, %bin.rdx85
  %i.di = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx86) ; 3 uses
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i37.preheader, label %vec.epilog.ph, !prof !252

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.di, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %i.cn, 576460752303423484    ; 3 uses
  %i.dj = shl i64 %n.vec89, 6                     ; 2 uses
  %i.dk = or disjoint i64 %i.dj, 64
  %i.dl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi91 = phi <4 x i32> [ %i.dl, %vec.epilog.ph ], [ %i.dq, %vec.epilog.vector.body ]
  %i.dm = shl i64 %index90, 3
  %21 = and i64 %i.dm, 2305843009213693920
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %21
  %wide.load92 = load <4 x i64>, ptr %i.dn, align 8, !tbaa !116
  %i.do = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load92)
  %i.dp = trunc nuw nsw <4 x i64> %i.do to <4 x i32>
  %i.dq = add <4 x i32> %vec.phi91, %i.dp         ; 2 uses
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.dr = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !996

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ds = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dq) ; 2 uses
  %cmp.n94 = icmp eq i64 %i.cn, %n.vec89
  br i1 %cmp.n94, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i37.preheader

.lr.ph.i.i.i37.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv55.ph = phi i64 [ 0, %iter.check ], [ %i.co, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ %i.cp, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.di, %vec.epilog.iter.check ], [ %i.ds, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i37

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i37, %middle.block, %vec.epilog.middle.block, %bb.aa
  %.1.i.i = phi i32 [ 0, %bb.aa ], [ %i.ds, %vec.epilog.middle.block ], [ %i.di, %middle.block ], [ %i.dz, %.lr.ph.i.i.i37 ] ; 2 uses
  %.not34.i.i.i = icmp eq i32 %i.ci, %i.cj
  br i1 %.not34.i.i.i, label %bb.ab, label %.sink.split.i.i.i

.lr.ph.i.i.i37:                                   ; preds = %.lr.ph.i.i.i37.preheader, %.lr.ph.i.i.i37
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %.lr.ph.i.i.i37 ], [ %indvars.iv55.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i.i37 ], [ %indvars.iv.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %i.dt = phi i32 [ %i.dz, %.lr.ph.i.i.i37 ], [ %.ph, %.lr.ph.i.i.i37.preheader ]
  %i.du = lshr exact i64 %indvars.iv55, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !116
  %i.dx = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dw)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = add nuw nsw i32 %i.dt, %i.dy            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.i.not = icmp samesign ult i64 %indvars.iv, %i.ck
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 64
  br i1 %.not33.i.i.i.not, label %.lr.ph.i.i.i37, label %._crit_edge.i.i.i, !llvm.loop !997

.sink.split.i.i.i:                                ; preds = %._crit_edge.i.i.i
  %i.ea = lshr i32 %i.ci, 6
  %i.eb = and i32 %i.ci, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.ec
  %i.ed = xor i64 %notmask.i36.i.i.i, -1
  %i.ee = zext nneg i32 %i.ea to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !116
  %i.eh = and i64 %i.eg, %i.ed
  %i.ei = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.eh)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = add nsw i32 %.1.i.i, %i.ej
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i.i.i, %._crit_edge.i.i.i
  %.3.i.i = phi i32 [ %i.ek, %.sink.split.i.i.i ], [ %.1.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.not26 = icmp eq i32 %.3.i.i, 0
  br i1 %.not26, label %.thread, label %bb.ac, !prof !998

bb.ac:                                            ; preds = %bb.ab
  %i.el = sext i32 %.3.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32, !noalias !999
  store i32 0, ptr %14, align 16, !tbaa !32, !alias.scope !1002, !noalias !999
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.el, ptr %i.em, align 16, !tbaa !32, !alias.scope !1002, !noalias !999
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull @.str.144, i64 77, i64 65, ptr nonnull %14)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32, !noalias !999
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorImEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsImEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr nonnull @.str.144) #36
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ag:                                            ; preds = %bb.ad
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %18, align 8, !tbaa !49   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !32
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.af
  %.pn27 = phi { ptr, i32 } [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.en, %bb.af ], [ %i.eo, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  br label %bb.ap

.critedge:                                        ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !401
  %i.ew = sext i32 %i.ev to i64
  %i.ex = shl nsw i64 %i.ew, 3                    ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !668 ; 2 uses
  %.not23 = icmp ult i64 %i.ez, %i.ex
  br i1 %.not23, label %bb.ah, label %bb.an, !prof !48

bb.ah:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32, !noalias !1005
  store i64 %i.ez, ptr %13, align 16, !tbaa !32, !alias.scope !1008, !noalias !1005
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.ex, ptr %i.fa, align 16, !tbaa !32, !alias.scope !1008, !noalias !1005
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.93, i64 11, i64 68, ptr nonnull %13)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32, !noalias !1005
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorImEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsImEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_4, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr nonnull @.str.93) #36
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ao
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.al:                                            ; preds = %bb.ah
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.am:                                            ; preds = %bb.ai
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fe = load ptr, ptr %19, align 8, !tbaa !49   ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.am
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !32
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.al
  %.pn = phi { ptr, i32 } [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.fc, %bb.al ], [ %i.fd, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %bb.ap

bb.an:                                            ; preds = %.critedge
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !670
  %i.fl = icmp ult i64 %i.fk, %i.ex
  br i1 %i.fl, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %bb.an
  %i.fm = load ptr, ptr %i.bz, align 8, !tbaa !45
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  invoke void %i.fo(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.ex)
          to label %.thread unwind label %bb.ak

.thread:                                          ; preds = %bb.z, %bb.an, %bb.ao, %bb.ab
  ret void

bb.ap:                                            ; preds = %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %bb.x
  %.pn30 = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %i.cd, %bb.x ], [ %i.fb, %bb.ak ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #32
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #32
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #32
  call void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) #32
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.ap ], [ %i.cc, %bb.w ]
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10FlatVectorImE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.355", align 8    ; 3 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !268  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !269  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !271
  %i.h = load <2 x ptr>, ptr %1, align 8, !tbaa !829
  store <2 x ptr> %i.h, ptr %i.b, align 8, !tbaa !829
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_:bb.a
  %.not10.i46 = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1377

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.423) align 8 %2, ptr noundef byval(%class.anon.424) align 8 %3) local_unnamed_addr #8 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1311, !range !69, !noundef !70
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1314
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !116
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1381
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1382, !nonnull !70, !align !301
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !308
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !993
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !116
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !116
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1383

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !1311, !range !69, !noundef !70
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1314
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !116
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !1381
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1382, !nonnull !70, !align !301
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !308
  %i.bo = sext i32 %i.bj to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !993
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !116
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !116
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1383

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !1315, !range !69, !noundef !70
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1317
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !70, !align !301 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eg, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !116
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !308
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !993
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 2 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 6 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !308 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !993 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax, %i.cx                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.de, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %n.mod.vf72 = and i64 %umax, 1                  ; 3 uses
  %n.vec73 = sub nuw i64 %i.db, %n.mod.vf72       ; 3 uses
  %i.df = add i64 %n.vec73, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dg = add i64 %index, %i.cx                   ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dg ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  %wide.load = load <4 x i64>, ptr %i.dh, align 8, !tbaa !116
  %wide.load69 = load <4 x i64>, ptr %i.di, align 8, !tbaa !116
  %wide.load70 = load <4 x i64>, ptr %i.dj, align 8, !tbaa !116
  %wide.load71 = load <4 x i64>, ptr %i.dk, align 8, !tbaa !116
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dg ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 96
  store <4 x i64> %wide.load, ptr %i.dl, align 8, !tbaa !116
  store <4 x i64> %wide.load69, ptr %i.dm, align 8, !tbaa !116
  store <4 x i64> %wide.load70, ptr %i.dn, align 8, !tbaa !116
  store <4 x i64> %wide.load71, ptr %i.do, align 8, !tbaa !116
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec73
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !1384

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index74 = phi i64 [ %index.next76, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dq = add i64 %index74, %i.cx                 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dq
  %wide.load75 = load <4 x i64>, ptr %i.dr, align 8, !tbaa !116
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dq
  store <4 x i64> %wide.load75, ptr %i.ds, align 8, !tbaa !116
  %index.next76 = add nuw i64 %index74, 4         ; 2 uses
  %i.dt = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.dt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1385

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.df, %middle.block ], [ %i.cx, %iter.check ], [ %i.df, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dx, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.020.i
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !116
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.020.i
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !116
  %i.dx = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.cw
  br i1 %i.dy, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !1386

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.ef, %bb.j ] ; 3 uses
  %i.dz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.ea = or disjoint i64 %i.dz, %i.cs            ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !116
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.ea
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !116
  %i.ee = add i64 %.01519.i, -1
  %i.ef = and i64 %i.ee, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.ef, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1387

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eg = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eg, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1388

bb.k:                                             ; preds = %._crit_edge
  %i.eh = ashr i32 %1, 6
  %i.ei = and i32 %1, 63
  %i.ej = zext nneg i32 %i.ei to i64
  %notmask.i42 = shl nsw i64 -1, %i.ej
  %i.ek = xor i64 %notmask.i42, -1
  %i.el = load i8, ptr %2, align 8, !tbaa !1311, !range !69, !noundef !70
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !1314
  %i.eo = sext i32 %i.eh to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !116
  %i.er = xor i8 %i.el, 1
  %i.es = zext nneg i8 %i.er to i64
  %i.et = sub nsw i64 0, %i.es
  %i.eu = xor i64 %i.eq, %i.et
  %i.ev = and i64 %i.eu, %i.ek                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ev, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !1381
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !1382, !nonnull !70, !align !301
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !308
  %i.fb = sext i32 %i.d to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 144
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !993
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ev, %.preheader.i44 ], [ %i.fk, %bb.l ] ; 3 uses
  %i.fe = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.ff = or disjoint i64 %i.fe, %i.fb            ; 2 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !116
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.ff
  store i64 %i.fh, ptr %i.fi, align 8, !tbaa !116
  %i.fj = add nsw i64 %.011.i45, -1
  %i.fk = and i64 %i.fj, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fk, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1383

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.427) align 8 %2, ptr noundef byval(%class.anon.428) align 8 %3) local_unnamed_addr #8 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1341, !range !69, !noundef !70
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1343
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !116
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !1336, !nonnull !70, !align !301
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !1338, !nonnull !70, !align !301
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !1339, !nonnull !70, !align !301
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !402
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !308
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !308
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !116
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !32  ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = trunc nuw nsw i64 %i.ah to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = or i8 %i.ba, %i.bd
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bf = and i64 %i.ax, 7
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !32
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !32
  %i.bj = add nsw i64 %.011.i, -1
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1389

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sdiv i32 %0, 64                         ; 2 uses
  %i.bm = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.i35, -1
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_EUlimE_ZNS3_ISE_EEvSG_iibSH_EUliE_EEviiSH_T0_:bb.a
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1321, !range !69, !noundef !70
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1324
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !116
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1393
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1394, !nonnull !70, !align !301
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !993
  %i.ah = sext i32 %i.d to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah
  %.pre.i = load i64, ptr %i.ae, align 8, !tbaa !116
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ai
  store i64 %.pre.i, ptr %gep.i, align 8, !tbaa !116
  %i.aj = add nsw i64 %.011.i, -1
  %i.ak = and i64 %i.aj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ak, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1395

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sdiv i32 %0, 64                         ; 2 uses
  %i.am = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask.i.i35, -1
  %i.ap = sub nsw i32 64, %i.am
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.ao, %i.aq
  %i.as = load i8, ptr %2, align 8, !tbaa !1321, !range !69, !noundef !70
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1324
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !116
  %i.ay = xor i8 %i.as, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ax, %i.ba
  %i.bc = and i64 %i.bb, %i.ar                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = shl nsw i32 %i.al, 6
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !1393
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1394, !nonnull !70, !align !301
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !993
  %i.bk = sext i32 %i.be to i64
  %invariant.gep.i38 = getelementptr [8 x i8], ptr %i.bj, i64 %i.bk
  %.pre.i39 = load i64, ptr %i.bh, align 8, !tbaa !116
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i40 = phi i64 [ %i.bc, %.preheader.i37 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i40, i1 true)
  %gep.i41 = getelementptr [8 x i8], ptr %invariant.gep.i38, i64 %i.bl
  store i64 %.pre.i39, ptr %gep.i41, align 8, !tbaa !116
  %i.bm = add i64 %.011.i40, -1
  %i.bn = and i64 %i.bm, %.011.i40                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.bn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.g, !llvm.loop !1395

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43: ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3359 = icmp sgt i32 %i.bo, %i.d
  br i1 %.not3359, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %i.bp = load i8, ptr %3, align 8, !tbaa !1325, !range !69, !noundef !70
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1327
  %i.bs = xor i8 %i.bp, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !70, !align !301 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ca = phi i32 [ %i.bo, %.lr.ph ], [ %i.dw, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.060 = phi i32 [ %i.c, %.lr.ph ], [ %i.ca, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cb = sdiv i32 %.060, 64                      ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !116
  %i.cf = xor i64 %i.ce, %i.bu                    ; 2 uses
  switch i64 %i.cf, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cg = shl nsw i32 %i.cb, 6
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !993
  %i.ci = sext i32 %i.cg to i64
  %invariant.gep.i45 = getelementptr [8 x i8], ptr %i.ch, i64 %i.ci
  %.pre24.i = load i64, ptr %i.by, align 8, !tbaa !116
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = shl nsw i32 %i.cb, 6                    ; 3 uses
  %i.ck = add i32 %i.cj, 64
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %.0.off = add i32 %.060, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cm = sext i32 %i.cj to i64                   ; 9 uses
  %i.cn = load ptr, ptr %i.bz, align 8, !tbaa !993 ; 3 uses
  %.pre.i44 = load i64, ptr %i.by, align 8, !tbaa !116 ; 2 uses
  %i.co = or disjoint i64 %i.cm, 1
  %umax76 = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %i.cl) ; 2 uses
  %i.cp = sub i64 %umax76, %i.cm                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cp, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cq = or disjoint i64 %i.cm, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.cl)
  %i.cr = xor i64 %i.cm, -1
  %i.cs = add i64 %umax, %i.cr                    ; 2 uses
  %i.ct = sext i32 %i.cj to i35                   ; 2 uses
  %i.cu = shl nsw i35 %i.ct, 3
  %i.cv = trunc i64 %i.cs to i35
  %i.cw = add i35 %i.ct, %i.cv
  %i.cx = shl i35 %i.cw, 3
  %i.cy = icmp slt i35 %i.cx, %i.cu
  %i.cz = icmp ugt i64 %i.cs, 4294967295
  %i.da = or i1 %i.cy, %i.cz
  br i1 %i.da, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check77 = icmp ult i64 %i.cp, 16
  %n.mod.vf78 = and i64 %umax76, 1                ; 3 uses
  %n.vec79 = sub i64 %i.cp, %n.mod.vf78           ; 3 uses
  %i.db = add i64 %n.vec79, %i.cm                 ; 2 uses
  %broadcast.splatinsert80 = insertelement <4 x i64> poison, i64 %.pre.i44, i64 0
  %broadcast.splat81 = shufflevector <4 x i64> %broadcast.splatinsert80, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check77, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dc = add i64 %index, %i.cm
  %i.dd = shl i64 %i.dc, 32
  %i.de = ashr exact i64 %i.dd, 29
  %i.df = getelementptr inbounds i8, ptr %i.cn, i64 %i.de ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  store <4 x i64> %broadcast.splat81, ptr %i.df, align 8, !tbaa !116
  store <4 x i64> %broadcast.splat81, ptr %i.dg, align 8, !tbaa !116
  store <4 x i64> %broadcast.splat81, ptr %i.dh, align 8, !tbaa !116
  store <4 x i64> %broadcast.splat81, ptr %i.di, align 8, !tbaa !116
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec79
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !1396

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf78, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index82 = phi i64 [ %index.next83, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dk = add i64 %index82, %i.cm
  %i.dl = shl i64 %i.dk, 32
  %i.dm = ashr exact i64 %i.dl, 29
  %i.dn = getelementptr inbounds i8, ptr %i.cn, i64 %i.dm
  store <4 x i64> %broadcast.splat81, ptr %i.dn, align 8, !tbaa !116
  %index.next83 = add nuw i64 %index82, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next83, %n.vec79
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1397

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n84 = icmp eq i64 %n.mod.vf78, 0
  br i1 %cmp.n84, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.db, %middle.block ], [ %i.cm, %vector.scevcheck ], [ %i.cm, %iter.check ], [ %i.db, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dr, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.dp = ashr exact i64 %sext.i, 29
  %i.dq = getelementptr inbounds i8, ptr %i.cn, i64 %i.dp
  store i64 %.pre.i44, ptr %i.dq, align 8, !tbaa !116
  %i.dr = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.cl
  br i1 %i.ds, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1398

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %i.dv, %bb.j ] ; 3 uses
  %i.dt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %gep.i46 = getelementptr [8 x i8], ptr %invariant.gep.i45, i64 %i.dt
  store i64 %.pre24.i, ptr %gep.i46, align 8, !tbaa !116
  %i.du = add i64 %.01519.i, -1
  %i.dv = and i64 %i.du, %.01519.i                ; 2 uses
  %.not.i47 = icmp eq i64 %i.dv, 0
  br i1 %.not.i47, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1399

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.dw = add nsw i32 %i.ca, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dw, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1400

bb.k:                                             ; preds = %._crit_edge
  %i.dx = ashr i32 %1, 6
  %i.dy = and i32 %1, 63
  %i.dz = zext nneg i32 %i.dy to i64
  %notmask.i48 = shl nsw i64 -1, %i.dz
  %i.ea = xor i64 %notmask.i48, -1
  %i.eb = load i8, ptr %2, align 8, !tbaa !1321, !range !69, !noundef !70
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1324
  %i.ee = sext i32 %i.dx to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !116
  %i.eh = xor i8 %i.eb, 1
  %i.ei = zext nneg i8 %i.eh to i64
  %i.ej = sub nsw i64 0, %i.ei
  %i.ek = xor i64 %i.eg, %i.ej
  %i.el = and i64 %i.ek, %i.ea                    ; 2 uses
  %.not.i49 = icmp eq i64 %i.el, 0
  br i1 %.not.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i50

.preheader.i50:                                   ; preds = %bb.k
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !1393
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1394, !nonnull !70, !align !301
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 144
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !993
  %i.es = sext i32 %i.d to i64
  %invariant.gep.i51 = getelementptr [8 x i8], ptr %i.er, i64 %i.es
  %.pre.i52 = load i64, ptr %i.ep, align 8, !tbaa !116
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i50
  %.011.i53 = phi i64 [ %i.el, %.preheader.i50 ], [ %i.ev, %bb.l ] ; 3 uses
  %i.et = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i53, i1 true)
  %gep.i54 = getelementptr [8 x i8], ptr %invariant.gep.i51, i64 %i.et
  store i64 %.pre.i52, ptr %gep.i54, align 8, !tbaa !116
  %i.eu = add nsw i64 %.011.i53, -1
  %i.ev = and i64 %i.eu, %.011.i53                ; 2 uses
  %.not10.i55 = icmp eq i64 %i.ev, 0
  br i1 %.not10.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1395

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %class.anon.432, align 8            ; 7 uses
  %7 = alloca %class.anon.431, align 8            ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1401

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1402, !range !69, !noundef !70
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1405
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !116
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 6 uses
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_IS9_EEvSB_iibSC_EUliE_EEviiSC_T0_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1068, !range !69, !noundef !70
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1071
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !116
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1463
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !993
  %i.ag = sext i32 %i.d to i64
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !1464, !nonnull !70, !align !301
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !308
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !116
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !116
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1465

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !1068, !range !69, !noundef !70
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1071
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !116
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1463
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !993
  %i.bo = sext i32 %i.bj to i64
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !1464, !nonnull !70, !align !301
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !308
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !116
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !116
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1465

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !1072, !range !69, !noundef !70
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1074
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 144 ; 2 uses
  %i.cj = load ptr, ptr %i.cf, align 8, !nonnull !70, !align !301 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.et, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !116
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !993
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !308
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 4 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 9 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !993 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !308 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax67 = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax67, %i.cx                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %i.cw)
  %i.df = xor i64 %i.cx, -1
  %i.dg = add i64 %umax, %i.df                    ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  %i.di = add i32 %i.cu, %i.dh
  %i.dj = icmp slt i32 %i.di, %i.cu
  %i.dk = icmp ugt i64 %i.dg, 4294967295
  %i.dl = or i1 %i.dj, %i.dk
  %i.dm = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.dm, -128
  %or.cond = select i1 %i.dl, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %n.mod.vf72 = and i64 %umax67, 1                ; 3 uses
  %n.vec73 = sub i64 %i.db, %n.mod.vf72           ; 3 uses
  %i.dn = add i64 %n.vec73, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.do = add i64 %index, %i.cx
  %i.dp = shl i64 %i.do, 32
  %i.dq = ashr exact i64 %i.dp, 32                ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.dq ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  %wide.load = load <4 x i64>, ptr %i.dr, align 8, !tbaa !116
  %wide.load69 = load <4 x i64>, ptr %i.ds, align 8, !tbaa !116
  %wide.load70 = load <4 x i64>, ptr %i.dt, align 8, !tbaa !116
  %wide.load71 = load <4 x i64>, ptr %i.du, align 8, !tbaa !116
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.dq ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  store <4 x i64> %wide.load, ptr %i.dv, align 8, !tbaa !116
  store <4 x i64> %wide.load69, ptr %i.dw, align 8, !tbaa !116
  store <4 x i64> %wide.load70, ptr %i.dx, align 8, !tbaa !116
  store <4 x i64> %wide.load71, ptr %i.dy, align 8, !tbaa !116
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec73
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !1466

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index74 = phi i64 [ %index.next76, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ea = add i64 %index74, %i.cx
  %i.eb = shl i64 %i.ea, 32
  %i.ec = ashr exact i64 %i.eb, 32                ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.ec
  %wide.load75 = load <4 x i64>, ptr %i.ed, align 8, !tbaa !116
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.ec
  store <4 x i64> %wide.load75, ptr %i.ee, align 8, !tbaa !116
  %index.next76 = add nuw i64 %index74, 4         ; 2 uses
  %i.ef = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.ef, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1467

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dn, %middle.block ], [ %i.cx, %iter.check ], [ %i.cx, %vector.scevcheck ], [ %i.dn, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.ek, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.eg = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.eg
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !116
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.eg
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !116
  %i.ek = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.el = icmp ult i64 %i.ek, %i.cw
  br i1 %i.el, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1468

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.es, %bb.j ] ; 3 uses
  %i.em = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.en = or disjoint i64 %i.em, %i.cs            ; 2 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !116
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.en
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !116
  %i.er = add i64 %.01519.i, -1
  %i.es = and i64 %i.er, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.es, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1469

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.et = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.et, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1470

bb.k:                                             ; preds = %._crit_edge
  %i.eu = ashr i32 %1, 6
  %i.ev = and i32 %1, 63
  %i.ew = zext nneg i32 %i.ev to i64
  %notmask.i42 = shl nsw i64 -1, %i.ew
  %i.ex = xor i64 %notmask.i42, -1
  %i.ey = load i8, ptr %2, align 8, !tbaa !1068, !range !69, !noundef !70
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1071
  %i.fb = sext i32 %i.eu to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !116
  %i.fe = xor i8 %i.ey, 1
  %i.ff = zext nneg i8 %i.fe to i64
  %i.fg = sub nsw i64 0, %i.ff
  %i.fh = xor i64 %i.fd, %i.fg
  %i.fi = and i64 %i.fh, %i.ex                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fi, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !1463
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 144
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !993
  %i.fo = sext i32 %i.d to i64
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !1464, !nonnull !70, !align !301
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !308
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fi, %.preheader.i44 ], [ %i.fx, %bb.l ] ; 3 uses
  %i.fr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fs = or disjoint i64 %i.fr, %i.fo            ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !116
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.fs
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !116
  %i.fw = add nsw i64 %.011.i45, -1
  %i.fx = and i64 %i.fw, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fx, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1465

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN8facebook5velox10FlatVectorIbE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::optional.256", align 1 ; 4 uses
  %2 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i8, ptr %i.c, align 4, !tbaa !232
  %i.e = and i8 %i.d, 2
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit, label %_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit

_ZNK8facebook5velox6Buffer9isMutableEv.exit:      ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load atomic i32, ptr %i.f acquire, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.r, label %_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit

_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit: ; preds = %bb.b, %bb.a, %_ZNK8facebook5velox6Buffer9isMutableEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !401
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !278
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32, !noalias !1471
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.n, align 1, !tbaa !221, !noalias !1471
  %i.o = add nsw i64 %i.k, 7
  %i.p = lshr i64 %i.o, 3
  call void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %2, i64 noundef %i.p, ptr noundef %i.m, ptr noundef nonnull align 1 dereferenceable(2) %1, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32, !noalias !1471
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !150
  %.not10 = icmp eq ptr %i.q, null
  br i1 %.not10, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit
  %i.r = load i32, ptr %i.i, align 8, !tbaa !401
  %i.s = invoke noundef i64 @_ZN8facebook5velox10BaseVector8byteSizeIbEEmi(i32 noundef %i.r)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %2, align 8, !tbaa !150    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  %i.v = load i8, ptr %i.u, align 4, !tbaa !232
  %i.w = and i8 %i.v, 2
  %.not.i5 = icmp eq i8 %i.w, 0
  br i1 %.not.i5, label %bb.f, label %bb.e, !prof !121

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIhEEPT_vE18veloxCheckFailArgs) #36
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !233
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !234
  %sext = shl i64 %i.s, 32
  %i.ab = ashr exact i64 %sext, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.aa, i64 %i.ab, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.h:                                             ; preds = %bb.f, %_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit
  %i.ad = load ptr, ptr %2, align 8, !tbaa !150   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = atomicrmw add ptr %i.ae, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i: ; preds = %bb.i, %bb.h
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !150 ; 7 uses
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !150
  %.not.i2.i = icmp eq ptr %i.ag, null
  br i1 %.not.i2.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = atomicrmw sub ptr %i.ah, i32 1 acq_rel, align 4
  %i.aj = icmp eq i32 %i.ai, 1
  br i1 %i.aj, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.j
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !45
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(64) %i.ag)
          to label %.noexc.i.i unwind label %bb.k, !inline_history !223
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox10FlatVectorIbEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIbEESt8optionalIiESP_SO_IbESP_SP_:bb.a
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i34 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i34, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.k ], [ %i.am, %bb.l ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !48

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #32
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorIbEE, i64 16), ptr %0, align 8, !tbaa !45
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !150
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !150
  store ptr null, ptr %5, align 8, !tbaa !150
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !150 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !233
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n
  %i.au = phi ptr [ %i.at, %bb.n ], [ null, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !234
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.aw, align 8, !tbaa !783
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.ay = load <2 x ptr>, ptr %6, align 8, !tbaa !829
  store <2 x ptr> %i.ay, ptr %17, align 16, !tbaa !829
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !271
  store ptr %i.bb, ptr %i.az, align 16, !tbaa !271
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN8facebook5velox10FlatVectorIbE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %17)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bd = load ptr, ptr %17, align 16, !tbaa !268 ; 3 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !269 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bt, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.bd, %bb.p ] ; 2 uses
  %i.bf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !150 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = atomicrmw sub ptr %i.bg, i32 1 acq_rel, align 4
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.q
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !45
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.r, !inline_history !223

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !224
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !45
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %..i.i.i.i.i.i.i
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.r, !inline_history !223

bb.r:                                             ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #35
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.q, %.lr.ph.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bt, %i.be
  br i1 %.not.i.i.i35, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !270

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 16, !tbaa !268
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.p
  %i.bu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bd, %bb.p ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bv = load ptr, ptr %i.az, align 16, !tbaa !271
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #34
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.s
  %i.bz = load ptr, ptr %i.ao, align 8, !tbaa !150
  %.not53 = icmp eq ptr %i.bz, null
  br i1 %.not53, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !150
  %.not54 = icmp eq ptr %i.cb, null
  br i1 %.not54, label %bb.u, label %bb.z, !prof !48

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIbEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIbEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_0, ptr noundef nonnull @.str.142) #36
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #32
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #32
  br label %bb.ar

bb.x:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #32
  br label %bb.aq

bb.y:                                             ; preds = %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.z:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !566 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !401 ; 5 uses
  %.not.i.i.i36 = icmp sgt i32 %i.ci, 0
  br i1 %.not.i.i.i36, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.cj = and i32 %i.ci, 2147483584               ; 3 uses
  %.not3342.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not3342.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.aa
  %i.ck = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cl = add nsw i64 %i.ck, -64                  ; 3 uses
  %i.cm = lshr exact i64 %i.cl, 6
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.cl, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.i37.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check77 = icmp ult i64 %i.cl, 960
  br i1 %min.iters.check77, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cn, 12
  %n.vec = and i64 %i.cn, 576460752303423472      ; 4 uses
  %i.co = shl i64 %n.vec, 6                       ; 2 uses
  %i.cp = or disjoint i64 %i.co, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dd, %vector.body ]
  %vec.phi78 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.de, %vector.body ]
  %vec.phi79 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.df, %vector.body ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dg, %vector.body ]
  %i.cq = shl i64 %index, 3
  %20 = and i64 %i.cq, 2305843009213693824
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %20 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %wide.load = load <4 x i64>, ptr %i.cr, align 8, !tbaa !116
  %wide.load81 = load <4 x i64>, ptr %i.cs, align 8, !tbaa !116
  %wide.load82 = load <4 x i64>, ptr %i.ct, align 8, !tbaa !116
  %wide.load83 = load <4 x i64>, ptr %i.cu, align 8, !tbaa !116
  %i.cv = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load)
  %i.cw = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load81)
  %i.cx = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load82)
  %i.cy = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load83)
  %i.cz = trunc nuw nsw <4 x i64> %i.cv to <4 x i32>
  %i.da = trunc nuw nsw <4 x i64> %i.cw to <4 x i32>
  %i.db = trunc nuw nsw <4 x i64> %i.cx to <4 x i32>
  %i.dc = trunc nuw nsw <4 x i64> %i.cy to <4 x i32>
  %i.dd = add <4 x i32> %vec.phi, %i.cz           ; 2 uses
  %i.de = add <4 x i32> %vec.phi78, %i.da         ; 2 uses
  %i.df = add <4 x i32> %vec.phi79, %i.db         ; 2 uses
  %i.dg = add <4 x i32> %vec.phi80, %i.dc         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !1594

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.de, %i.dd
  %bin.rdx84 = add <4 x i32> %i.df, %bin.rdx
  %bin.rdx85 = add <4 x i32> %i.dg, %bin.rdx84
  %i.di = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx85) ; 3 uses
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i37.preheader, label %vec.epilog.ph, !prof !252

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.di, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec88 = and i64 %i.cn, 576460752303423484    ; 3 uses
  %i.dj = shl i64 %n.vec88, 6                     ; 2 uses
  %i.dk = or disjoint i64 %i.dj, 64
  %i.dl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index89 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next92, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi90 = phi <4 x i32> [ %i.dl, %vec.epilog.ph ], [ %i.dq, %vec.epilog.vector.body ]
  %i.dm = shl i64 %index89, 3
  %21 = and i64 %i.dm, 2305843009213693920
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %21
  %wide.load91 = load <4 x i64>, ptr %i.dn, align 8, !tbaa !116
  %i.do = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load91)
  %i.dp = trunc nuw nsw <4 x i64> %i.do to <4 x i32>
  %i.dq = add <4 x i32> %vec.phi90, %i.dp         ; 2 uses
  %index.next92 = add nuw i64 %index89, 4         ; 2 uses
  %i.dr = icmp eq i64 %index.next92, %n.vec88
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1595

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ds = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dq) ; 2 uses
  %cmp.n93 = icmp eq i64 %i.cn, %n.vec88
  br i1 %cmp.n93, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i37.preheader

.lr.ph.i.i.i37.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv55.ph = phi i64 [ 0, %iter.check ], [ %i.co, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ %i.cp, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.di, %vec.epilog.iter.check ], [ %i.ds, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i37

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i37, %middle.block, %vec.epilog.middle.block, %bb.aa
  %.1.i.i = phi i32 [ 0, %bb.aa ], [ %i.ds, %vec.epilog.middle.block ], [ %i.di, %middle.block ], [ %i.dz, %.lr.ph.i.i.i37 ] ; 2 uses
  %.not34.i.i.i = icmp eq i32 %i.ci, %i.cj
  br i1 %.not34.i.i.i, label %bb.ab, label %.sink.split.i.i.i

.lr.ph.i.i.i37:                                   ; preds = %.lr.ph.i.i.i37.preheader, %.lr.ph.i.i.i37
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %.lr.ph.i.i.i37 ], [ %indvars.iv55.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i.i37 ], [ %indvars.iv.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %i.dt = phi i32 [ %i.dz, %.lr.ph.i.i.i37 ], [ %.ph, %.lr.ph.i.i.i37.preheader ]
  %i.du = lshr exact i64 %indvars.iv55, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !116
  %i.dx = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dw)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = add nuw nsw i32 %i.dt, %i.dy            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.i.not = icmp samesign ult i64 %indvars.iv, %i.ck
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 64
  br i1 %.not33.i.i.i.not, label %.lr.ph.i.i.i37, label %._crit_edge.i.i.i, !llvm.loop !1596

.sink.split.i.i.i:                                ; preds = %._crit_edge.i.i.i
  %i.ea = lshr i32 %i.ci, 6
  %i.eb = and i32 %i.ci, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.ec
  %i.ed = xor i64 %notmask.i36.i.i.i, -1
  %i.ee = zext nneg i32 %i.ea to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !116
  %i.eh = and i64 %i.eg, %i.ed
  %i.ei = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.eh)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = add nsw i32 %.1.i.i, %i.ej
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i.i.i, %._crit_edge.i.i.i
  %.3.i.i = phi i32 [ %i.ek, %.sink.split.i.i.i ], [ %.1.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.not26 = icmp eq i32 %.3.i.i, 0
  br i1 %.not26, label %.thread, label %bb.ac, !prof !998

bb.ac:                                            ; preds = %bb.ab
  %i.el = sext i32 %.3.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32, !noalias !1597
  store i32 0, ptr %14, align 16, !tbaa !32, !alias.scope !1600, !noalias !1597
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.el, ptr %i.em, align 16, !tbaa !32, !alias.scope !1600, !noalias !1597
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull @.str.144, i64 77, i64 65, ptr nonnull %14)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32, !noalias !1597
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIbEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIbEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr nonnull @.str.144) #36
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ag:                                            ; preds = %bb.ad
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %18, align 8, !tbaa !49   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !32
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.af
  %.pn27 = phi { ptr, i32 } [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.en, %bb.af ], [ %i.eo, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  br label %bb.aq

.critedge:                                        ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !401
  %i.ew = invoke noundef i64 @_ZN8facebook5velox10BaseVector8byteSizeIbEEmi(i32 noundef %i.ev)
          to label %bb.ah unwind label %bb.al     ; 4 uses

bb.ah:                                            ; preds = %.critedge
  %i.ex = load ptr, ptr %i.ao, align 8, !tbaa !150 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !668 ; 2 uses
  %.not23 = icmp ult i64 %i.ez, %i.ew
  br i1 %.not23, label %bb.ai, label %bb.ao, !prof !48

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32, !noalias !1603
  store i64 %i.ez, ptr %13, align 16, !tbaa !32, !alias.scope !1606, !noalias !1603
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.ew, ptr %i.fa, align 16, !tbaa !32, !alias.scope !1606, !noalias !1603
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.93, i64 11, i64 68, ptr nonnull %13)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32, !noalias !1603
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIbEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIbEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_4, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr nonnull @.str.93) #36
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %bb.aj
  unreachable

bb.al:                                            ; preds = %bb.ap, %.critedge
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.am:                                            ; preds = %bb.ai
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.an:                                            ; preds = %bb.aj
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fe = load ptr, ptr %19, align 8, !tbaa !49   ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.an
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !32
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.am
  %.pn = phi { ptr, i32 } [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.fc, %bb.am ], [ %i.fd, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %bb.aq

bb.ao:                                            ; preds = %bb.ah
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !670
  %i.fl = icmp ult i64 %i.fk, %i.ew
  br i1 %i.fl, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %bb.ao
  %i.fm = load ptr, ptr %i.ex, align 8, !tbaa !45
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  invoke void %i.fo(ptr noundef nonnull align 8 dereferenceable(64) %i.ex, i64 noundef %i.ew)
          to label %.thread unwind label %bb.al

.thread:                                          ; preds = %bb.z, %bb.ao, %bb.ap, %bb.ab
  ret void

bb.aq:                                            ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %bb.x
  %.pn30 = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %i.cd, %bb.x ], [ %i.fb, %bb.al ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #32
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #32
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #32
  call void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(108) %0) #32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.w
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.aq ], [ %i.cc, %bb.w ]
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10FlatVectorIbE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.355", align 8    ; 3 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !268  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !269  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !271
end_hunk_5
