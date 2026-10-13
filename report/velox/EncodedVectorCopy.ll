Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/EncodedVectorCopy?download=true
inline.NumInlined: 11502
inline.NumDeleted: 2542
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN8facebook5velox12_GLOBAL__N_110newFlatMapERKNS0_24EncodedVectorCopyOptionsERKNS0_13FlatMapVectorERKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE:bb.a
  store i32 0, ptr %15, align 4, !tbaa !154
  %i.dk = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 0, ptr %i.dk, align 4, !tbaa !128
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dm = load ptr, ptr %i.cm, align 8, !tbaa !67 ; 3 uses
  %.not.i.i57 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i57, label %_ZNK8facebook5velox13FlatMapVector15numDistinctKeysEv.exit58, label %bb.u

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !102
  br label %_ZNK8facebook5velox13FlatMapVector15numDistinctKeysEv.exit58

_ZNK8facebook5velox13FlatMapVector15numDistinctKeysEv.exit58: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.u
  %i.dp = phi i32 [ %i.do, %bb.u ], [ 0, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  store i32 %i.dp, ptr %i.dl, align 4, !tbaa !129
  %i.dq = load ptr, ptr %13, align 16, !tbaa !67  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  store ptr %15, ptr %16, align 8, !tbaa !94
  %i.dr = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %15, i64 12
  store ptr %i.ds, ptr %i.dr, align 8, !tbaa !95
  %i.dt = load ptr, ptr %i.dq, align 8, !tbaa !88
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 216
  %i.dv = load ptr, ptr %i.du, align 8
  invoke void %i.dv(ptr noundef nonnull align 8 dereferenceable(94) %i.dq, ptr noundef %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.v unwind label %bb.af

bb.v:                                             ; preds = %_ZNK8facebook5velox13FlatMapVector15numDistinctKeysEv.exit58
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.dw = load ptr, ptr %13, align 16, !tbaa !67
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 56
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !102 ; 3 uses
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %i.ea = icmp slt i32 %i.dy, 0
  br i1 %i.ea, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.206) #33
          to label %.noexc60 unwind label %bb.ag

.noexc60:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.eb = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %.not283 = icmp eq i32 %i.dy, 0
  br i1 %.not283, label %.thread, label %_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.x
  %i.ec = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.ed = shl nuw nsw i64 %i.dz, 4
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #36
          to label %.noexc61 unwind label %bb.ag  ; 11 uses

.noexc61:                                         ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_M_allocateEm.exit.i
  %i.ef = load ptr, ptr %17, align 8, !tbaa !166  ; 13 uses
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !165 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ef, %i.eg
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc61
  %i.eh = ptrtoaddr ptr %i.eg to i64
  %i.ei = ptrtoaddr ptr %i.ef to i64
  %i.ej = add i64 %i.eh, -16
  %i.ek = sub i64 %i.ej, %i.ei                    ; 3 uses
  %i.el = lshr i64 %i.ek, 4
  %i.em = add nuw nsw i64 %i.el, 1                ; 2 uses
  %min.iters.check363 = icmp ult i64 %i.ek, 304
  br i1 %min.iters.check363, label %.lr.ph.i.i.i.i.preheader521, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.en = and i64 %i.ek, -16                      ; 2 uses
  %i.eo = or disjoint i64 %i.en, 8                ; 2 uses
  %i.ep = getelementptr i8, ptr %i.ee, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ef, i64 %i.eo
  %i.er = getelementptr i8, ptr %i.ef, i64 8
  %i.es = add i64 %i.en, 16                       ; 2 uses
  %i.et = getelementptr i8, ptr %i.ef, i64 %i.es
  %i.eu = getelementptr i8, ptr %i.ee, i64 8
  %i.ev = getelementptr i8, ptr %i.ee, i64 %i.es
  %bound0 = icmp ult ptr %i.ee, %i.eq
  %bound1 = icmp ult ptr %i.ef, %i.ep
  %found.conflict = and i1 %bound0, %bound1
  %bound0364 = icmp ult ptr %i.er, %i.ev
  %bound1365 = icmp ult ptr %i.eu, %i.et
  %found.conflict366 = and i1 %bound0364, %bound1365
  %conflict.rdx = or i1 %found.conflict, %found.conflict366
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.preheader521, label %vector.ph367

vector.ph367:                                     ; preds = %vector.memcheck
  %n.vec368 = and i64 %i.em, 2305843009213693948  ; 3 uses
  %i.ew = shl i64 %n.vec368, 4                    ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ee, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.ef, i64 %i.ew
  br label %vector.body369

vector.body369:                                   ; preds = %vector.body369, %vector.ph367
  %index370 = phi i64 [ 0, %vector.ph367 ], [ %index.next376, %vector.body369 ] ; 2 uses
  %i.ez = shl i64 %index370, 4                    ; 2 uses
  %next.gep371 = getelementptr i8, ptr %i.ee, i64 %i.ez
  %next.gep372 = getelementptr i8, ptr %i.ef, i64 %i.ez ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  %wide.vec373 = load <8 x ptr>, ptr %next.gep372, align 8, !tbaa !96, !alias.scope !1042, !noalias !1041
  store <8 x ptr> %wide.vec373, ptr %next.gep371, align 8, !tbaa !96, !alias.scope !1041, !noalias !1042
  store <8 x ptr> splat (ptr null), ptr %next.gep372, align 8, !tbaa !96, !alias.scope !1042, !noalias !1041
  %index.next376 = add nuw i64 %index370, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next376, %n.vec368
  br i1 %i.fa, label %middle.block377, label %vector.body369, !llvm.loop !985

middle.block377:                                  ; preds = %vector.body369
  %cmp.n = icmp eq i64 %i.em, %n.vec368
  br i1 %cmp.n, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i.preheader521

.lr.ph.i.i.i.i.preheader521:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block377
  %.012.i.i.i.i.ph = phi ptr [ %i.ee, %vector.memcheck ], [ %i.ee, %.lr.ph.i.i.i.i.preheader ], [ %i.ex, %middle.block377 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ef, %vector.memcheck ], [ %i.ef, %.lr.ph.i.i.i.i.preheader ], [ %i.ey, %middle.block377 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader521, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.fe, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader521 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.fd, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader521 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  %i.fb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.fc = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !96, !alias.scope !1042, !noalias !1041
  store ptr null, ptr %i.fb, align 8, !tbaa !91, !alias.scope !1042, !noalias !1041
  store <2 x ptr> %i.fc, ptr %.012.i.i.i.i, align 8, !tbaa !96, !alias.scope !1041, !noalias !1042
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !67, !alias.scope !1042, !noalias !1041
  %i.fd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i59 = icmp eq ptr %i.fd, %i.eg
  br i1 %.not.i.i.i.i59, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !986

_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block377, %.noexc61
  %.not.i8.i = icmp eq ptr %i.ef, null
  br i1 %.not.i8.i, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE7reserveEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  %i.ff = load ptr, ptr %i.eb, align 8, !tbaa !178
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = ptrtoint ptr %i.ef to i64
  %i.fi = sub i64 %i.fg, %i.fh
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.fi) #34
  br label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE7reserveEm.exit

_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE7reserveEm.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, %bb.y
  store ptr %i.ee, ptr %17, align 8, !tbaa !166
  store ptr %i.ee, ptr %i.ec, align 8, !tbaa !165
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.dz
  store ptr %i.fj, ptr %i.eb, align 8, !tbaa !178
  %.pre = load ptr, ptr %13, align 16, !tbaa !67
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %.pre231 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !102
  %i.fk = icmp eq i32 %.pre231, 0
  br i1 %i.fk, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE7reserveEm.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.fn = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  br label %bb.ah

.thread:                                          ; preds = %bb.x, %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  %i.fq = getelementptr inbounds nuw i8, ptr %20, i64 16
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE7reserveEm.exit

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit106
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  %i.fr = zext nneg i32 %i.kw to i64              ; 2 uses
  %i.fs = icmp slt i32 %i.kw, 0
  br i1 %i.fs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.206) #33
          to label %.noexc68 unwind label %bb.bq

.noexc68:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %._crit_edge
  %i.ft = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %.not284 = icmp eq i32 %i.kw, 0
  br i1 %.not284, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.aa
  %i.fu = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.fv = shl nuw nsw i64 %i.fr, 3
  %i.fw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fv) #36
          to label %.noexc69 unwind label %bb.bq  ; 11 uses

.noexc69:                                         ; preds = %_ZNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_M_allocateEm.exit.i
  %i.fx = load ptr, ptr %20, align 8, !tbaa !181  ; 13 uses
  %23 = ptrtoaddr ptr %i.fx to i64                ; 2 uses
  %i.fy = load ptr, ptr %i.fu, align 8, !tbaa !182 ; 3 uses
  %24 = ptrtoaddr ptr %i.fy to i64                ; 2 uses
  %.not10.i.i.i.i62 = icmp eq ptr %i.fx, %i.fy
  br i1 %.not10.i.i.i.i62, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %iter.check407

iter.check407:                                    ; preds = %.noexc69
  %i.fz = add i64 %24, -8
  %i.ga = sub i64 %i.fz, %23                      ; 3 uses
  %i.gb = lshr i64 %i.ga, 3
  %i.gc = add nuw nsw i64 %i.gb, 1                ; 5 uses
  %min.iters.check385 = icmp ult i64 %i.ga, 24
  br i1 %min.iters.check385, label %.lr.ph.i.i.i.i63.preheader, label %vector.memcheck386

vector.memcheck386:                               ; preds = %iter.check407
  %i.gd = add i64 %24, -8
  %i.ge = sub i64 %i.gd, %23
  %i.gf = and i64 %i.ge, -8
  %i.gg = add i64 %i.gf, 8                        ; 2 uses
  %i.gh = getelementptr i8, ptr %i.fw, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.fx, i64 %i.gg
  %bound0387 = icmp ult ptr %i.fw, %i.gi
  %bound1388 = icmp ult ptr %i.fx, %i.gh
  %found.conflict389 = and i1 %bound0387, %bound1388
  br i1 %found.conflict389, label %.lr.ph.i.i.i.i63.preheader, label %vector.main.loop.iter.check390

vector.main.loop.iter.check390:                   ; preds = %vector.memcheck386
  %min.iters.check391 = icmp ult i64 %i.ga, 120
  br i1 %min.iters.check391, label %vec.epilog.ph411, label %vector.ph392

vector.ph392:                                     ; preds = %vector.main.loop.iter.check390
  %i.gj = and i64 %i.gc, 12
  %n.vec393 = and i64 %i.gc, 4611686018427387888  ; 4 uses
  %i.gk = shl i64 %n.vec393, 3                    ; 2 uses
  %i.gl = getelementptr i8, ptr %i.fw, i64 %i.gk
  %i.gm = getelementptr i8, ptr %i.fx, i64 %i.gk
  br label %vector.body394

vector.body394:                                   ; preds = %vector.ph392, %vector.body394
  %index395 = phi i64 [ 0, %vector.ph392 ], [ %index.next401, %vector.body394 ] ; 2 uses
  %i.gn = shl i64 %index395, 3                    ; 2 uses
  %next.gep396 = getelementptr i8, ptr %i.fw, i64 %i.gn ; 4 uses
  %next.gep397 = getelementptr i8, ptr %i.fx, i64 %i.gn ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  %i.go = getelementptr i8, ptr %next.gep397, i64 32 ; 2 uses
  %i.gp = getelementptr i8, ptr %next.gep397, i64 64 ; 2 uses
  %i.gq = getelementptr i8, ptr %next.gep397, i64 96 ; 2 uses
  %wide.load = load <4 x ptr>, ptr %next.gep397, align 8, !tbaa !132, !alias.scope !1045, !noalias !1043
  %wide.load398 = load <4 x ptr>, ptr %i.go, align 8, !tbaa !132, !alias.scope !1045, !noalias !1043
  %wide.load399 = load <4 x ptr>, ptr %i.gp, align 8, !tbaa !132, !alias.scope !1045, !noalias !1043
  %wide.load400 = load <4 x ptr>, ptr %i.gq, align 8, !tbaa !132, !alias.scope !1045, !noalias !1043
  %i.gr = getelementptr i8, ptr %next.gep396, i64 32
  %i.gs = getelementptr i8, ptr %next.gep396, i64 64
  %i.gt = getelementptr i8, ptr %next.gep396, i64 96
  store <4 x ptr> %wide.load, ptr %next.gep396, align 8, !tbaa !132, !alias.scope !1046, !noalias !1045
  store <4 x ptr> %wide.load398, ptr %i.gr, align 8, !tbaa !132, !alias.scope !1046, !noalias !1045
  store <4 x ptr> %wide.load399, ptr %i.gs, align 8, !tbaa !132, !alias.scope !1046, !noalias !1045
  store <4 x ptr> %wide.load400, ptr %i.gt, align 8, !tbaa !132, !alias.scope !1046, !noalias !1045
  store <4 x ptr> splat (ptr null), ptr %next.gep397, align 8, !tbaa !132, !alias.scope !1045, !noalias !1043
  store <4 x ptr> splat (ptr null), ptr %i.go, align 8, !tbaa !132, !alias.scope !1045, !noalias !1043
  store <4 x ptr> splat (ptr null), ptr %i.gp, align 8, !tbaa !132, !alias.scope !1045, !noalias !1043
  store <4 x ptr> splat (ptr null), ptr %i.gq, align 8, !tbaa !132, !alias.scope !1045, !noalias !1043
  %index.next401 = add nuw i64 %index395, 16      ; 2 uses
  %i.gu = icmp eq i64 %index.next401, %n.vec393
  br i1 %i.gu, label %middle.block402, label %vector.body394, !llvm.loop !993

middle.block402:                                  ; preds = %vector.body394
  %cmp.n403 = icmp eq i64 %i.gc, %n.vec393
  br i1 %cmp.n403, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %vec.epilog.iter.check409

vec.epilog.iter.check409:                         ; preds = %middle.block402
  %min.epilog.iters.check410 = icmp eq i64 %i.gj, 0
  br i1 %min.epilog.iters.check410, label %.lr.ph.i.i.i.i63.preheader, label %vec.epilog.ph411, !prof !150

vec.epilog.ph411:                                 ; preds = %vector.main.loop.iter.check390, %vec.epilog.iter.check409
  %vec.epilog.resume.val404 = phi i64 [ %n.vec393, %vec.epilog.iter.check409 ], [ 0, %vector.main.loop.iter.check390 ]
  %n.vec412 = and i64 %i.gc, 4611686018427387900  ; 3 uses
  %i.gv = shl i64 %n.vec412, 3                    ; 2 uses
  %i.gw = getelementptr i8, ptr %i.fw, i64 %i.gv
  %i.gx = getelementptr i8, ptr %i.fx, i64 %i.gv
  br label %vec.epilog.vector.body413

vec.epilog.vector.body413:                        ; preds = %vec.epilog.vector.body413, %vec.epilog.ph411
  %index414 = phi i64 [ %vec.epilog.resume.val404, %vec.epilog.ph411 ], [ %index.next418, %vec.epilog.vector.body413 ] ; 2 uses
  %i.gy = shl i64 %index414, 3                    ; 2 uses
  %next.gep415 = getelementptr i8, ptr %i.fw, i64 %i.gy
  %next.gep416 = getelementptr i8, ptr %i.fx, i64 %i.gy ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  %wide.load417 = load <4 x ptr>, ptr %next.gep416, align 8, !tbaa !132, !alias.scope !1045, !noalias !1043
  store <4 x ptr> %wide.load417, ptr %next.gep415, align 8, !tbaa !132, !alias.scope !1046, !noalias !1045
  store <4 x ptr> splat (ptr null), ptr %next.gep416, align 8, !tbaa !132, !alias.scope !1045, !noalias !1043
  %index.next418 = add nuw i64 %index414, 4       ; 2 uses
  %i.gz = icmp eq i64 %index.next418, %n.vec412
  br i1 %i.gz, label %vec.epilog.middle.block419, label %vec.epilog.vector.body413, !llvm.loop !994

vec.epilog.middle.block419:                       ; preds = %vec.epilog.vector.body413
  %cmp.n420 = icmp eq i64 %i.gc, %n.vec412
  br i1 %cmp.n420, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i63.preheader

.lr.ph.i.i.i.i63.preheader:                       ; preds = %iter.check407, %vector.memcheck386, %vec.epilog.iter.check409, %vec.epilog.middle.block419
  %.012.i.i.i.i64.ph = phi ptr [ %i.fw, %iter.check407 ], [ %i.fw, %vector.memcheck386 ], [ %i.gl, %vec.epilog.iter.check409 ], [ %i.gw, %vec.epilog.middle.block419 ]
  %.0911.i.i.i.i65.ph = phi ptr [ %i.fx, %iter.check407 ], [ %i.fx, %vector.memcheck386 ], [ %i.gm, %vec.epilog.iter.check409 ], [ %i.gx, %vec.epilog.middle.block419 ]
  br label %.lr.ph.i.i.i.i63

.lr.ph.i.i.i.i63:                                 ; preds = %.lr.ph.i.i.i.i63.preheader, %.lr.ph.i.i.i.i63
  %.012.i.i.i.i64 = phi ptr [ %i.hc, %.lr.ph.i.i.i.i63 ], [ %.012.i.i.i.i64.ph, %.lr.ph.i.i.i.i63.preheader ] ; 2 uses
  %.0911.i.i.i.i65 = phi ptr [ %i.hb, %.lr.ph.i.i.i.i63 ], [ %.0911.i.i.i.i65.ph, %.lr.ph.i.i.i.i63.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  %i.ha = load ptr, ptr %.0911.i.i.i.i65, align 8, !tbaa !132, !alias.scope !1044, !noalias !1043
  store ptr %i.ha, ptr %.012.i.i.i.i64, align 8, !tbaa !132, !alias.scope !1043, !noalias !1044
  store ptr null, ptr %.0911.i.i.i.i65, align 8, !tbaa !132, !alias.scope !1044, !noalias !1043
  %i.hb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i65, i64 8 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i64, i64 8
  %.not.i.i.i.i66 = icmp eq ptr %i.hb, %i.fy
  br i1 %.not.i.i.i.i66, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i63, !llvm.loop !995

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i63, %middle.block402, %vec.epilog.middle.block419, %.noexc69
  %.not.i8.i67 = icmp eq ptr %i.fx, null
  br i1 %.not.i8.i67, label %_ZNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %i.hd = load ptr, ptr %i.ft, align 8, !tbaa !183
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = ptrtoint ptr %i.fx to i64
  %i.hg = sub i64 %i.he, %i.hf
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.hg) #34
  br label %_ZNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.ab, %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.fw, ptr %20, align 8, !tbaa !181
  store ptr %i.fw, ptr %i.fu, align 8, !tbaa !182
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fr
  store ptr %i.hh, ptr %i.ft, align 8, !tbaa !183
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE7reserveEm.exit

bb.ac:                                            ; preds = %bb.i
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %_ZNK8facebook5velox13FlatMapVector15numDistinctKeysEv.exit
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #30
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.hj, %bb.ad ], [ %i.hi, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.dh

bb.af:                                            ; preds = %_ZNK8facebook5velox13FlatMapVector15numDistinctKeysEv.exit58
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %bb.dg

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_M_allocateEm.exit.i, %bb.w
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.ah:                                            ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit106
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit106 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %i.hm = load ptr, ptr %i.fm, align 8, !tbaa !165
  %i.hn = load ptr, ptr %i.fl, align 8, !tbaa !166 ; 2 uses
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = ashr exact i64 %i.hq, 4                 ; 2 uses
  %.not.i70 = icmp ugt i64 %i.hr, %indvars.iv
  br i1 %.not.i70, label %bb.al, label %bb.ai, !prof !85

bb.ai:                                            ; preds = %bb.ah
  %i.hs = trunc nuw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !1047
  store i32 %i.hs, ptr %6, align 16, !tbaa !100, !alias.scope !1048, !noalias !1047
  %i.ht = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.hr, ptr %i.ht, align 16, !tbaa !100, !alias.scope !1048, !noalias !1047
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.210, i64 71, i64 66, ptr nonnull %6)
          to label %.noexc74 unwind label %.body80.loopexit.split-lp

.noexc74:                                         ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !1047
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox13FlatMapVector11mapValuesAtEjE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr nonnull @.str.210) #33
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %.noexc74
  unreachable

bb.ak:                                            ; preds = %.noexc74
  %i.hu = landingpad { ptr, i32 }
          cleanup
  %i.hv = load ptr, ptr %7, align 8, !tbaa !107   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71: ; preds = %bb.ak
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !100
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hz) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i72: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %.body

bb.al:                                            ; preds = %bb.ah
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %i.hn, i64 %indvars.iv ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !67
end_hunk_0
