inline.NumInlined: 6986
inline.NumDeleted: 3568
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN6duckdb16PipelineExecutorC2ERNS_13ClientContextERNS_8PipelineE:bb.a
  br i1 %.not.i.i.i.i.i44, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1011

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc45
  %.not.i8.i = icmp eq ptr %i.cp, null
  br i1 %.not.i8.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.cp) #36
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !884
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, %bb.aa
  %.pre = phi ptr [ %.pre.pre, %bb.aa ], [ %i.ce, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i ] ; 3 uses
  store ptr %i.cy, ptr %i.e, align 8, !tbaa !996
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx
  store ptr %i.ds, ptr %i.cu, align 8, !tbaa !997
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cl
  store ptr %i.dt, ptr %i.cn, align 8, !tbaa !995
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %.pre150 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !330 ; 2 uses
  %.phi.trans.insert151 = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre152 = load ptr, ptr %.phi.trans.insert151, align 8, !tbaa !334 ; 2 uses
  %.pre160 = ptrtoint ptr %.pre150 to i64
  %.pre161 = ptrtoint ptr %.pre152 to i64
  %.pre163 = sub i64 %.pre160, %.pre161           ; 2 uses
  %i.du = icmp ugt i64 %.pre163, 9223372036854775800
  br i1 %i.du, label %.invoke, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit.thread

.invoke:                                          ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, %_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #35
          to label %.cont unwind label %bb.q

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit.thread: ; preds = %bb.z, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.dv = phi ptr [ %.pre, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ], [ %i.ce, %bb.z ] ; 2 uses
  %i.dw = phi ptr [ %.pre150, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ], [ %i.ch, %bb.z ]
  %i.dx = phi ptr [ %.pre152, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ], [ %i.ci, %bb.z ]
  %.pre-phi164193 = phi i64 [ %.pre163, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ], [ %i.cl, %bb.z ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !1012
  %i.ea = load ptr, ptr %i.f, align 8, !tbaa !1013 ; 10 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64               ; 4 uses
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = icmp ult i64 %i.ed, %.pre-phi164193
  br i1 %i.ee, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit.thread
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !1014 ; 3 uses
  %i.eh = ptrtoint ptr %i.eg to i64               ; 3 uses
  %i.ei = sub i64 %i.eh, %i.ec
  %i.ej = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.pre-phi164193) #37
          to label %.noexc53 unwind label %bb.q   ; 9 uses

.noexc53:                                         ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i.i46 = icmp eq ptr %i.ea, %i.eg
  br i1 %.not10.i.i.i.i.i46, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i47.preheader

.lr.ph.i.i.i.i.i47.preheader:                     ; preds = %.noexc53
  %i.ek = add i64 %i.eh, -8
  %i.el = sub i64 %i.ek, %i.ec                    ; 2 uses
  %i.em = lshr i64 %i.el, 3
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %min.iters.check233 = icmp ult i64 %i.el, 136
  br i1 %min.iters.check233, label %.lr.ph.i.i.i.i.i47.preheader307, label %vector.memcheck226

vector.memcheck226:                               ; preds = %.lr.ph.i.i.i.i.i47.preheader
  %i.eo = add i64 %i.eh, -8
  %i.ep = sub i64 %i.eo, %i.ec
  %i.eq = and i64 %i.ep, -8
  %i.er = add i64 %i.eq, 8                        ; 2 uses
  %scevgep227 = getelementptr i8, ptr %i.ej, i64 %i.er
  %scevgep228 = getelementptr i8, ptr %i.ea, i64 %i.er
  %bound0229 = icmp ult ptr %i.ej, %scevgep228
  %bound1230 = icmp ult ptr %i.ea, %scevgep227
  %found.conflict231 = and i1 %bound0229, %bound1230
  br i1 %found.conflict231, label %.lr.ph.i.i.i.i.i47.preheader307, label %vector.ph234

vector.ph234:                                     ; preds = %vector.memcheck226
  %n.vec235 = and i64 %i.en, 4611686018427387900  ; 3 uses
  %i.es = shl i64 %n.vec235, 3                    ; 2 uses
  %i.et = getelementptr i8, ptr %i.ej, i64 %i.es
  %i.eu = getelementptr i8, ptr %i.ea, i64 %i.es
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body236, %vector.ph234
  %index237 = phi i64 [ 0, %vector.ph234 ], [ %index.next242, %vector.body236 ] ; 2 uses
  %i.ev = shl i64 %index237, 3                    ; 2 uses
  %next.gep238 = getelementptr i8, ptr %i.ej, i64 %i.ev ; 2 uses
  %next.gep239 = getelementptr i8, ptr %i.ea, i64 %i.ev ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  %i.ew = getelementptr i8, ptr %next.gep239, i64 16
  %wide.load240 = load <2 x i64>, ptr %next.gep239, align 8, !tbaa !1020, !alias.scope !1022, !noalias !1015
  %wide.load241 = load <2 x i64>, ptr %i.ew, align 8, !tbaa !1020, !alias.scope !1022, !noalias !1015
  %i.ex = getelementptr i8, ptr %next.gep238, i64 16
  store <2 x i64> %wide.load240, ptr %next.gep238, align 8, !tbaa !1020, !alias.scope !1025, !noalias !1022
  store <2 x i64> %wide.load241, ptr %i.ex, align 8, !tbaa !1020, !alias.scope !1025, !noalias !1022
  %i.ey = getelementptr i8, ptr %next.gep239, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep239, align 8, !tbaa !1020, !alias.scope !1022, !noalias !1015
  store <2 x ptr> splat (ptr null), ptr %i.ey, align 8, !tbaa !1020, !alias.scope !1022, !noalias !1015
  %index.next242 = add nuw i64 %index237, 4       ; 2 uses
  %i.ez = icmp eq i64 %index.next242, %n.vec235
  br i1 %i.ez, label %middle.block243, label %vector.body236, !llvm.loop !1027

middle.block243:                                  ; preds = %vector.body236
  %cmp.n244 = icmp eq i64 %i.en, %n.vec235
  br i1 %cmp.n244, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i47.preheader307

.lr.ph.i.i.i.i.i47.preheader307:                  ; preds = %vector.memcheck226, %.lr.ph.i.i.i.i.i47.preheader, %middle.block243
  %.012.i.i.i.i.i48.ph = phi ptr [ %i.ej, %vector.memcheck226 ], [ %i.ej, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.et, %middle.block243 ]
  %.0911.i.i.i.i.i49.ph = phi ptr [ %i.ea, %vector.memcheck226 ], [ %i.ea, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.eu, %middle.block243 ]
  br label %.lr.ph.i.i.i.i.i47

.lr.ph.i.i.i.i.i47:                               ; preds = %.lr.ph.i.i.i.i.i47.preheader307, %.lr.ph.i.i.i.i.i47
  %.012.i.i.i.i.i48 = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i47 ], [ %.012.i.i.i.i.i48.ph, %.lr.ph.i.i.i.i.i47.preheader307 ] ; 2 uses
  %.0911.i.i.i.i.i49 = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i47 ], [ %.0911.i.i.i.i.i49.ph, %.lr.ph.i.i.i.i.i47.preheader307 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  %i.fa = load i64, ptr %.0911.i.i.i.i.i49, align 8, !tbaa !1020, !alias.scope !1018, !noalias !1015
  store i64 %i.fa, ptr %.012.i.i.i.i.i48, align 8, !tbaa !1020, !alias.scope !1015, !noalias !1018
  store ptr null, ptr %.0911.i.i.i.i.i49, align 8, !tbaa !1020, !alias.scope !1018, !noalias !1015
  %i.fb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i49, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i48, i64 8
  %.not.i.i.i.i.i50 = icmp eq ptr %i.fb, %i.eg
  br i1 %.not.i.i.i.i.i50, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i47, !llvm.loop !1028

_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i47, %middle.block243, %.noexc53
  %.not.i8.i51 = icmp eq ptr %i.ea, null
  br i1 %.not.i8.i51, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ea) #36
  %.pre153.pre = load ptr, ptr %0, align 8, !tbaa !884
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.ab, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %.pre153 = phi ptr [ %.pre153.pre, %bb.ab ], [ %i.dv, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i ] ; 3 uses
  store ptr %i.ej, ptr %i.f, align 8, !tbaa !1013
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ei
  store ptr %i.fd, ptr %i.ef, align 8, !tbaa !1014
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.pre-phi164193
  store ptr %i.fe, ptr %i.dy, align 8, !tbaa !1012
  %.phi.trans.insert154 = getelementptr inbounds nuw i8, ptr %.pre153, i64 48
  %.pre155 = load ptr, ptr %.phi.trans.insert154, align 8, !tbaa !330
  %.phi.trans.insert156 = getelementptr inbounds nuw i8, ptr %.pre153, i64 40
  %.pre157 = load ptr, ptr %.phi.trans.insert156, align 8, !tbaa !334
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit.thread, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i
  %i.ff = phi ptr [ %i.dx, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit.thread ], [ %.pre157, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ]
  %i.fg = phi ptr [ %i.dw, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit.thread ], [ %.pre155, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ]
  %i.fh = phi ptr [ %i.dv, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit.thread ], [ %.pre153, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ] ; 3 uses
  %.not138 = icmp eq ptr %i.fg, %i.ff
  br i1 %.not138, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  br label %bb.ae

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit
  %i.fl = icmp eq ptr %i.kl, %i.kk
  br i1 %i.fl, label %._crit_edge.thread, label %bb.ac

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, %._crit_edge
  %.lcssa119197 = phi ptr [ %i.kh, %._crit_edge ], [ %i.fh, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.lcssa119197, i64 32 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fm)
          to label %.noexc54 unwind label %bb.q

bb.ac:                                            ; preds = %._crit_edge
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_16PhysicalOperatorEELb1ESaIS3_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ki)
          to label %.noexc54 unwind label %bb.q

.noexc54:                                         ; preds = %bb.ac, %._crit_edge.thread
  %.in.i = phi ptr [ %i.fm, %._crit_edge.thread ], [ %i.fn, %bb.ac ]
  %i.fo = load ptr, ptr %.in.i, align 8, !tbaa !195
  %i.fp = load ptr, ptr %i.b, align 8, !tbaa !888, !nonnull !132, !align !133
  %i.fq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.fp)
          to label %.noexc56 unwind label %bb.q

.noexc56:                                         ; preds = %.noexc54
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.fq, ptr noundef nonnull align 8 dereferenceable(24) %i.fr, i64 noundef 2048)
          to label %_ZN6duckdb16PipelineExecutor15InitializeChunkERNS_9DataChunkE.exit unwind label %bb.q

bb.ad:                                            ; preds = %bb.v, %bb.x, %bb.w
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.bh

bb.ae:                                            ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit
  %i.ft = phi ptr [ %i.fi, %.lr.ph ], [ %i.ki, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit ]
  %i.fu = phi ptr [ %i.fh, %.lr.ph ], [ %i.kh, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit ]
  %.0135 = phi i64 [ 0, %.lr.ph ], [ %i.kg, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit ] ; 4 uses
  %i.fv = icmp eq i64 %.0135, 0
  br i1 %i.fv, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 32 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fw)
          to label %_ZN6duckdb12optional_ptrINS_16PhysicalOperatorELb1EEdeEv.exit unwind label %bb.ba

bb.ag:                                            ; preds = %bb.ae
  %9 = add i64 %.0135, -1
  %i.fx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_16PhysicalOperatorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ft, i64 noundef %9)
          to label %_ZN6duckdb12optional_ptrINS_16PhysicalOperatorELb1EEdeEv.exit unwind label %bb.ba

_ZN6duckdb12optional_ptrINS_16PhysicalOperatorELb1EEdeEv.exit: ; preds = %bb.ag, %bb.af
  %.in = phi ptr [ %i.fw, %bb.af ], [ %i.fx, %bb.ag ]
  %i.fy = load ptr, ptr %.in, align 8, !tbaa !195
  %i.fz = load ptr, ptr %0, align 8, !tbaa !884, !nonnull !132, !align !133
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %i.gb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_16PhysicalOperatorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ga, i64 noundef %.0135)
          to label %bb.ah unwind label %bb.bb

bb.ah:                                            ; preds = %_ZN6duckdb12optional_ptrINS_16PhysicalOperatorELb1EEdeEv.exit
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !680 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  %i.gd = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37
          to label %.noexc59 unwind label %bb.bc  ; 3 uses

.noexc59:                                         ; preds = %bb.ah
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.gd)
          to label %bb.aj unwind label %bb.ai, !noalias !1029

bb.ai:                                            ; preds = %.noexc59
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.gd) #36, !noalias !1029
  br label %.body

bb.aj:                                            ; preds = %.noexc59
  store ptr %i.gd, ptr %7, align 8, !tbaa !1003, !alias.scope !1029
  %i.gf = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ak unwind label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.gg = load ptr, ptr %i.b, align 8, !tbaa !888, !nonnull !132, !align !133
  %i.gh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.gg)
          to label %bb.al unwind label %.loopexit

bb.al:                                            ; preds = %bb.ak
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %i.gf, ptr noundef nonnull align 8 dereferenceable(32) %i.gh, ptr noundef nonnull align 8 dereferenceable(24) %i.gi, i64 noundef 2048)
          to label %bb.am unwind label %.loopexit

bb.am:                                            ; preds = %bb.al
  %i.gj = load ptr, ptr %i.fj, align 8, !tbaa !997 ; 6 uses
  %i.gk = load ptr, ptr %i.cn, align 8, !tbaa !995
  %.not.i.i = icmp eq ptr %i.gj, %i.gk
  br i1 %.not.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gl = load i64, ptr %7, align 8, !tbaa !1003
  store i64 %i.gl, ptr %i.gj, align 8, !tbaa !1003
  store ptr null, ptr %7, align 8, !tbaa !1003
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store ptr %i.gm, ptr %i.fj, align 8, !tbaa !997
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.ao:                                            ; preds = %bb.am
  %i.gn = load ptr, ptr %i.e, align 8, !tbaa !996 ; 10 uses
  %i.go = ptrtoint ptr %i.gj to i64               ; 3 uses
  %i.gp = ptrtoint ptr %i.gn to i64               ; 3 uses
  %i.gq = sub i64 %i.go, %i.gp                    ; 3 uses
  %i.gr = icmp eq i64 %i.gq, 9223372036854775800
  br i1 %i.gr, label %bb.ap, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #35
          to label %.noexc62 unwind label %.loopexit.split-lp

.noexc62:                                         ; preds = %bb.ap
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ao
  %i.gs = ashr exact i64 %i.gq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gs, i64 1)
  %i.gt = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gs ; 2 uses
  %i.gu = icmp ult i64 %i.gt, %i.gs
  %i.gv = call i64 @llvm.umin.i64(i64 %i.gt, i64 1152921504606846975)
  %i.gw = select i1 %i.gu, i64 1152921504606846975, i64 %i.gv ; 3 uses
  %.not.i.i.i.i60 = icmp ne i64 %i.gw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i60)
  %i.gx = shl nuw nsw i64 %i.gw, 3
  %i.gy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gx) #37
          to label %.noexc63 unwind label %.loopexit ; 10 uses

.noexc63:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gq
  %i.ha = load i64, ptr %7, align 8, !tbaa !1003
  store i64 %i.ha, ptr %i.gz, align 8, !tbaa !1003
  store ptr null, ptr %7, align 8, !tbaa !1003
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.gn, %i.gj
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc63
  %i.hb = add i64 %i.go, -8
  %i.hc = sub i64 %i.hb, %i.gp                    ; 2 uses
  %i.hd = lshr i64 %i.hc, 3
  %i.he = add nuw nsw i64 %i.hd, 1                ; 2 uses
  %min.iters.check279 = icmp ult i64 %i.hc, 56
  br i1 %min.iters.check279, label %.lr.ph.i.i.i.i.i.i.i.preheader294, label %vector.memcheck270

vector.memcheck270:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep271 = getelementptr i8, ptr %i.gy, i64 8
  %i.hf = add i64 %i.go, -8
  %i.hg = sub i64 %i.hf, %i.gp
  %i.hh = and i64 %i.hg, -8                       ; 2 uses
  %scevgep272 = getelementptr i8, ptr %scevgep271, i64 %i.hh
  %scevgep273 = getelementptr i8, ptr %i.gn, i64 8
  %scevgep274 = getelementptr i8, ptr %scevgep273, i64 %i.hh
  %bound0275 = icmp ult ptr %i.gy, %scevgep274
  %bound1276 = icmp ult ptr %i.gn, %scevgep272
  %found.conflict277 = and i1 %bound0275, %bound1276
  br i1 %found.conflict277, label %.lr.ph.i.i.i.i.i.i.i.preheader294, label %vector.ph280

vector.ph280:                                     ; preds = %vector.memcheck270
  %n.vec281 = and i64 %i.he, 4611686018427387900  ; 3 uses
  %i.hi = shl i64 %n.vec281, 3                    ; 2 uses
  %i.hj = getelementptr i8, ptr %i.gy, i64 %i.hi  ; 2 uses
  %i.hk = getelementptr i8, ptr %i.gn, i64 %i.hi
  br label %vector.body282

vector.body282:                                   ; preds = %vector.body282, %vector.ph280
  %index283 = phi i64 [ 0, %vector.ph280 ], [ %index.next288, %vector.body282 ] ; 2 uses
  %i.hl = shl i64 %index283, 3                    ; 2 uses
  %next.gep284 = getelementptr i8, ptr %i.gy, i64 %i.hl ; 2 uses
  %next.gep285 = getelementptr i8, ptr %i.gn, i64 %i.hl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  %i.hm = getelementptr i8, ptr %next.gep285, i64 16
  %wide.load286 = load <2 x i64>, ptr %next.gep285, align 8, !tbaa !1003, !alias.scope !1037, !noalias !1032
  %wide.load287 = load <2 x i64>, ptr %i.hm, align 8, !tbaa !1003, !alias.scope !1037, !noalias !1032
  %i.hn = getelementptr i8, ptr %next.gep284, i64 16
  store <2 x i64> %wide.load286, ptr %next.gep284, align 8, !tbaa !1003, !alias.scope !1040, !noalias !1037
  store <2 x i64> %wide.load287, ptr %i.hn, align 8, !tbaa !1003, !alias.scope !1040, !noalias !1037
  %i.ho = getelementptr i8, ptr %next.gep285, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep285, align 8, !tbaa !1003, !alias.scope !1037, !noalias !1032
  store <2 x ptr> splat (ptr null), ptr %i.ho, align 8, !tbaa !1003, !alias.scope !1037, !noalias !1032
  %index.next288 = add nuw i64 %index283, 4       ; 2 uses
  %i.hp = icmp eq i64 %index.next288, %n.vec281
  br i1 %i.hp, label %middle.block289, label %vector.body282, !llvm.loop !1042

middle.block289:                                  ; preds = %vector.body282
  %cmp.n290 = icmp eq i64 %i.he, %n.vec281
  br i1 %cmp.n290, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader294

.lr.ph.i.i.i.i.i.i.i.preheader294:                ; preds = %vector.memcheck270, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block289
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.gy, %vector.memcheck270 ], [ %i.gy, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.hj, %middle.block289 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.gn, %vector.memcheck270 ], [ %i.gn, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.hk, %middle.block289 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader294, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.hs, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader294 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.hr, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader294 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  %i.hq = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1003, !alias.scope !1035, !noalias !1032
  store i64 %i.hq, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1003, !alias.scope !1032, !noalias !1035
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1003, !alias.scope !1035, !noalias !1032
  %i.hr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i61 = icmp eq ptr %i.hr, %i.gj
  br i1 %.not.i.i.i.i.i.i.i61, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1043

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block289, %.noexc63
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.gy, %.noexc63 ], [ %i.hj, %middle.block289 ], [ %i.hs, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ht = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.gn) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.aq, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.gy, ptr %i.e, align 8, !tbaa !996
  store ptr %i.ht, ptr %i.fj, align 8, !tbaa !997
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.gw
  store ptr %i.hu, ptr %i.cn, align 8, !tbaa !995
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.hv = load ptr, ptr %i.gc, align 8, !tbaa !28
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 64
  %i.hx = load ptr, ptr %i.hw, align 8
  invoke void %i.hx(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.891") align 8 %8, ptr noundef nonnull align 8 dereferenceable(136) %i.gc, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.ar unwind label %bb.bd

bb.ar:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.hy = load ptr, ptr %i.fk, align 8, !tbaa !1014 ; 6 uses
  %i.hz = load ptr, ptr %i.dy, align 8, !tbaa !1012
  %.not.i.i64 = icmp eq ptr %i.hy, %i.hz
  br i1 %.not.i.i64, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ia = load i64, ptr %8, align 8, !tbaa !1020
  store i64 %i.ia, ptr %i.hy, align 8, !tbaa !1020
  store ptr null, ptr %8, align 8, !tbaa !1020
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store ptr %i.ib, ptr %i.fk, align 8, !tbaa !1014
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
end_hunk_0
begin_hunk_1_@_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEEC2Em:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.e, align 8, !tbaa !1916
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.f, align 8, !tbaa !1916
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.g, align 8, !tbaa !1916
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr null, ptr %i.h, align 8, !tbaa !1916
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.i, align 8, !tbaa !1916
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr null, ptr %i.j, align 8, !tbaa !1916
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr null, ptr %i.k, align 8, !tbaa !1916
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.l, align 8, !tbaa !1916
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr null, ptr %i.m, align 8, !tbaa !1916
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr null, ptr %i.n, align 8, !tbaa !1916
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr null, ptr %i.o, align 8, !tbaa !1916
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr null, ptr %i.p, align 8, !tbaa !1916
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr null, ptr %i.q, align 8, !tbaa !1916
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr null, ptr %i.r, align 8, !tbaa !1916
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr null, ptr %i.s, align 8, !tbaa !1916
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr null, ptr %i.t, align 8, !tbaa !1916
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr null, ptr %i.u, align 8, !tbaa !1916
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %i.v, align 8, !tbaa !1916
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr null, ptr %i.w, align 8, !tbaa !1916
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr null, ptr %i.x, align 8, !tbaa !1916
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr null, ptr %i.y, align 8, !tbaa !1916
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr null, ptr %i.z, align 8, !tbaa !1916
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr null, ptr %i.aa, align 8, !tbaa !1916
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr null, ptr %i.ab, align 8, !tbaa !1916
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 480
  store ptr null, ptr %i.ac, align 8, !tbaa !1916
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr null, ptr %i.ad, align 8, !tbaa !1916
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr null, ptr %i.ae, align 8, !tbaa !1916
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 528
  store ptr null, ptr %i.af, align 8, !tbaa !1916
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr null, ptr %i.ag, align 8, !tbaa !1916
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr null, ptr %i.ah, align 8, !tbaa !1916
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 576
  store ptr null, ptr %i.ai, align 8, !tbaa !1916
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr null, ptr %i.aj, align 8, !tbaa !1916
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 604
  store i32 0, ptr %i.ak, align 4, !tbaa !1891
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i32 0, ptr %i.al, align 8, !tbaa !1891
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 600
  store atomic i8 0, ptr %i.am monotonic, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i64 0, ptr %i.an monotonic, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i64 32, ptr %i.ao, align 8, !tbaa !1919
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.d, ptr %i.ap, align 8, !tbaa !1920
  store atomic i64 0, ptr %i.d monotonic, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104
  store atomic i64 0, ptr %i.aq monotonic, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  store atomic i64 0, ptr %i.ar monotonic, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 136
  store atomic i64 0, ptr %i.as monotonic, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 152
  store atomic i64 0, ptr %i.at monotonic, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 168
  store atomic i64 0, ptr %i.au monotonic, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 184
  store atomic i64 0, ptr %i.av monotonic, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 200
  store atomic i64 0, ptr %i.aw monotonic, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 216
  store atomic i64 0, ptr %i.ax monotonic, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 232
  store atomic i64 0, ptr %i.ay monotonic, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 248
  store atomic i64 0, ptr %i.az monotonic, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 264
  store atomic i64 0, ptr %i.ba monotonic, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 280
  store atomic i64 0, ptr %i.bb monotonic, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 296
  store atomic i64 0, ptr %i.bc monotonic, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 312
  store atomic i64 0, ptr %i.bd monotonic, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 328
  store atomic i64 0, ptr %i.be monotonic, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 344
  store atomic i64 0, ptr %i.bf monotonic, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 360
  store atomic i64 0, ptr %i.bg monotonic, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 376
  store atomic i64 0, ptr %i.bh monotonic, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 392
  store atomic i64 0, ptr %i.bi monotonic, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 408
  store atomic i64 0, ptr %i.bj monotonic, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 424
  store atomic i64 0, ptr %i.bk monotonic, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 440
  store atomic i64 0, ptr %i.bl monotonic, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 456
  store atomic i64 0, ptr %i.bm monotonic, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 472
  store atomic i64 0, ptr %i.bn monotonic, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 488
  store atomic i64 0, ptr %i.bo monotonic, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 504
  store atomic i64 0, ptr %i.bp monotonic, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 520
  store atomic i64 0, ptr %i.bq monotonic, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 536
  store atomic i64 0, ptr %i.br monotonic, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 552
  store atomic i64 0, ptr %i.bs monotonic, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 568
  store atomic i64 0, ptr %i.bt monotonic, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 584
  store atomic i64 0, ptr %i.bu monotonic, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.bv, align 8, !tbaa !1647
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store atomic ptr %i.ao, ptr %i.bw monotonic, align 8
  %i.bx = lshr i64 %1, 5                          ; 2 uses
  %i.by = and i64 %1, 31
  %i.bz = icmp ne i64 %i.by, 0
  %i.ca = zext i1 %i.bz to i64                    ; 2 uses
  %i.cb = add nuw nsw i64 %i.bx, %i.ca            ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !1888
  %i.cd = icmp eq i64 %1, 0
  br i1 %i.cd, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.ce, align 8, !tbaa !1658
  br label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit

bb.c:                                             ; preds = %bb.a
  %i.cf = mul i64 %i.cb, 584
  %i.cg = tail call noalias noundef ptr @malloc(i64 noundef %i.cf) #40 ; 14 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %.thread.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.ci = add nuw nsw i64 %i.bx, %i.ca            ; 2 uses
  %xtraiter = and i64 %i.cb, 1
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.cb, 1152921504606846974
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.011.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.cw, %.lr.ph.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.ck = getelementptr inbounds nuw [584 x i8], ptr %i.cg, i64 %.011.i.i ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 512
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 560
  store i32 0, ptr %i.cm, align 4, !tbaa !1891
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 568
  store ptr null, ptr %i.cn, align 8, !tbaa !1892
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 576
  store i8 0, ptr %i.co, align 8, !tbaa !897
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 577
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.cp, align 1, !tbaa !1651
  %i.cq = getelementptr inbounds nuw [584 x i8], ptr %i.cg, i64 %.011.i.i ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1096
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 1144
  store i32 0, ptr %i.cs, align 4, !tbaa !1891
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 1152
  store ptr null, ptr %i.ct, align 8, !tbaa !1892
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 1160
  store i8 0, ptr %i.cu, align 8, !tbaa !897
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 1161
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.cv, align 1, !tbaa !1651
  %i.cw = add nuw i64 %.011.i.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !1921

.thread.i:                                        ; preds = %bb.c
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i8 0, i64 16, i1 false)
  br label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit

.lr.ph.preheader.i.unr-lcssa:                     ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.lr.ph.preheader.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.011.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.cw, %.lr.ph.preheader.i.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.cb to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.cy = getelementptr inbounds nuw [584 x i8], ptr %i.cg, i64 %.011.i.i.epil.init ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 512
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 560
  store i32 0, ptr %i.da, align 4, !tbaa !1891
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 568
  store ptr null, ptr %i.db, align 8, !tbaa !1892
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 576
  store i8 0, ptr %i.dc, align 8, !tbaa !897
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 577
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.dd, align 1, !tbaa !1651
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cg, ptr %i.de, align 8, !tbaa !1658
  %xtraiter4 = and i64 %i.cb, 7                   ; 3 uses
  %i.df = icmp samesign ult i64 %i.ci, 8
  br i1 %i.df, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter7 = and i64 %i.cb, 1152921504606846968
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.06.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.dw, %.lr.ph.i ] ; 9 uses
  %niter8 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter8.next.7, %.lr.ph.i ]
  %i.dg = getelementptr inbounds nuw [584 x i8], ptr %i.cg, i64 %.06.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 577
  store i8 0, ptr %i.dh, align 1, !tbaa !1651
  %i.di = getelementptr inbounds nuw [584 x i8], ptr %i.cg, i64 %.06.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1161
  store i8 0, ptr %i.dj, align 1, !tbaa !1651
  %i.dk = getelementptr inbounds nuw [584 x i8], ptr %i.cg, i64 %.06.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1745
  store i8 0, ptr %i.dl, align 1, !tbaa !1651
  %i.dm = getelementptr inbounds nuw [584 x i8], ptr %i.cg, i64 %.06.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 2329
  store i8 0, ptr %i.dn, align 1, !tbaa !1651
  %i.do = getelementptr inbounds nuw [584 x i8], ptr %i.cg, i64 %.06.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 2913
  store i8 0, ptr %i.dp, align 1, !tbaa !1651
  %i.dq = getelementptr inbounds nuw [584 x i8], ptr %i.cg, i64 %.06.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 3497
  store i8 0, ptr %i.dr, align 1, !tbaa !1651
  %i.ds = getelementptr inbounds nuw [584 x i8], ptr %i.cg, i64 %.06.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4081
  store i8 0, ptr %i.dt, align 1, !tbaa !1651
  %i.du = getelementptr inbounds nuw [584 x i8], ptr %i.cg, i64 %.06.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4665
  store i8 0, ptr %i.dv, align 1, !tbaa !1651
  %i.dw = add nuw i64 %.06.i, 8                   ; 2 uses
  %niter8.next.7 = add i64 %niter8, 8             ; 2 uses
  %niter8.ncmp.7 = icmp eq i64 %niter8.next.7, %unroll_iter7
  br i1 %niter8.ncmp.7, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1922

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod5.not = icmp eq i64 %xtraiter4, 0
  br i1 %lcmp.mod5.not, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.06.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.dw, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa ]
  %lcmp.mod6 = icmp ne i64 %xtraiter4, 0
  tail call void @llvm.assume(i1 %lcmp.mod6)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.06.i.epil = phi i64 [ %i.dz, %.lr.ph.i.epil ], [ %.06.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.dx = getelementptr inbounds nuw [584 x i8], ptr %i.cg, i64 %.06.i.epil
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 577
  store i8 0, ptr %i.dy, align 1, !tbaa !1651
  %i.dz = add nuw i64 %.06.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter4
  br i1 %epil.iter.cmp.not, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit, label %.lr.ph.i.epil, !llvm.loop !1923

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit: ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE27populate_initial_block_listEm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b, %.thread.i
  ret void
}

; Function Attrs: nounwind
declare i32 @sem_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #19

declare noundef zeroext i1 @_ZN6duckdb8Settings21TryGetSettingInternalERKNS_16DatabaseInstanceEmRNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1560), i64 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE26recycle_or_create_producerEbRb(ptr noundef nonnull align 8 dereferenceable(612) %0, i1 noundef zeroext %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %.not29 = icmp eq ptr %i.a, null
  br i1 %.not29, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = zext i1 %1 to i8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit
  %.01330 = phi ptr [ %i.a, %.lr.ph ], [ %i.n, %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01330, i64 16 ; 2 uses
  %i.d = load atomic i8, ptr %i.c monotonic, align 1, !range !268, !noundef !132
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.01330, i64 72
  %i.g = load i8, ptr %i.f, align 8, !tbaa !1195, !range !268, !noundef !132
  %i.h = icmp eq i8 %i.g, %i.b
  br i1 %i.h, label %bb.d, label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.i = cmpxchg ptr %i.c, i8 1, i8 0 acquire monotonic, align 1
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %bb.e, label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit

_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit: ; preds = %bb.d, %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.01330, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1193 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -8
  br i1 %i.m, label %select.unfold._crit_edge, label %bb.b

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %2, align 1, !tbaa !440
  br label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE12add_producerEPNS6_12ProducerBaseE.exit

select.unfold._crit_edge:                         ; preds = %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit, %bb.a
  store i8 0, ptr %2, align 1, !tbaa !440
  br i1 %1, label %bb.f, label %bb.i

bb.f:                                             ; preds = %select.unfold._crit_edge
  %i.o = tail call noalias noundef dereferenceable_or_null(136) ptr @malloc(i64 noundef 136) #40 ; 14 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE12add_producerEPNS6_12ProducerBaseE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !1193
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i8 0, ptr %i.q, align 8, !tbaa !897
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.s, align 8, !tbaa !1195
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store ptr %0, ptr %i.t, align 8, !tbaa !1887
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE16ExplicitProducerE, i64 16), ptr %i.o, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 88 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 112 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1888
  %i.z = add i64 %i.y, -1                         ; 2 uses
  %i.aa = lshr i64 %i.z, 1
  %i.ab = or i64 %i.aa, %i.z                      ; 2 uses
  %i.ac = lshr i64 %i.ab, 2
  %i.ad = or i64 %i.ac, %i.ab                     ; 2 uses
  %i.ae = lshr i64 %i.ad, 4
  %i.af = or i64 %i.ae, %i.ad                     ; 2 uses
  %i.ag = lshr i64 %i.af, 8
  %i.ah = or i64 %i.ag, %i.af                     ; 2 uses
  %i.ai = lshr i64 %i.ah, 16
  %i.aj = or i64 %i.ai, %i.ah                     ; 2 uses
  %i.ak = lshr i64 %i.aj, 32
  %i.al = or i64 %i.ak, %i.aj
  %i.am = add i64 %i.al, 1
  %i.an = tail call i64 @llvm.umax.i64(i64 %i.am, i64 33) ; 2 uses
  %spec.select.i.i = lshr i64 %i.an, 1            ; 2 uses
  %i.ao = and i64 %i.an, -2                       ; 2 uses
  store i64 %i.ao, ptr %i.v, align 8, !tbaa !1877
  %i.ap = shl i64 %spec.select.i.i, 5
  %i.aq = add i64 %i.ap, 39
  %i.ar = tail call noalias noundef ptr @malloc(i64 noundef %i.aq) #40 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %bb.h, label %.loopexit.i.i.i

bb.h:                                             ; preds = %bb.g
  store i64 %spec.select.i.i, ptr %i.v, align 8, !tbaa !1877
  br label %bb.r

.loopexit.i.i.i:                                  ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 0, %i.av
  %i.ax = and i64 %i.aw, 7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ax ; 2 uses
  store i64 %i.ao, ptr %i.ar, align 8, !tbaa !1883
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store atomic i64 -1, ptr %i.az monotonic, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !1885
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr null, ptr %i.bb, align 8, !tbaa !1886
  store i64 0, ptr %i.w, align 8, !tbaa !1878
  store ptr %i.ay, ptr %i.at, align 8, !tbaa !1879
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !1870
  store atomic ptr %i.ar, ptr %i.u release, align 8
  br label %bb.r

bb.i:                                             ; preds = %select.unfold._crit_edge
  %i.bc = tail call noalias noundef dereferenceable_or_null(104) ptr @malloc(i64 noundef 104) #40 ; 10 uses
  %.not.i16 = icmp eq ptr %i.bc, null
  br i1 %.not.i16, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE12add_producerEPNS6_12ProducerBaseE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr null, ptr %i.bd, align 8, !tbaa !1193
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i8 0, ptr %i.be, align 8, !tbaa !897
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.bf, i8 0, i64 49, i1 false)
  store ptr %0, ptr %i.bg, align 8, !tbaa !1887
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE16ImplicitProducerE, i64 16), ptr %i.bc, align 8, !tbaa !28
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 88 ; 2 uses
  store i64 32, ptr %i.bh, align 8, !tbaa !1925
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 96 ; 3 uses
  store ptr null, ptr %i.bi, align 8, !tbaa !1929
  %i.bj = load atomic ptr, ptr %i.bi monotonic, align 8 ; 6 uses
  %i.bk = icmp eq ptr %i.bj, null                 ; 2 uses
  br i1 %i.bk, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !1914 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bm = phi i64 [ %i.bl, %bb.k ], [ 0, %bb.j ]  ; 2 uses
  %i.bn = phi i64 [ %i.bl, %bb.k ], [ 32, %bb.j ] ; 5 uses
  %i.bo = shl i64 %i.bn, 4                        ; 2 uses
  %i.bp = add i64 %i.bo, 310
  %i.bq = tail call noalias noundef ptr @malloc(i64 noundef %i.bp) #40 ; 8 uses
  %.not.i.i17 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i17, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40 ; 2 uses
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 0, %i.bs
  %i.bu = and i64 %i.bt, 7
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bu ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bo ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 0, %i.bx
  %i.bz = and i64 %i.by, 7
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bz ; 3 uses
  br i1 %i.bk, label %.loopexit.i.i.i18, label %bb.n

bb.n:                                             ; preds = %bb.m
end_hunk_1
