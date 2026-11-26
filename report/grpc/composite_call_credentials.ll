Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/composite_call_credentials?download=true
inline.NumInlined: 983
inline.NumDeleted: 608
begin_hunk_0_@_ZN31grpc_composite_call_credentialsC2EN9grpc_core13RefCountedPtrI21grpc_call_credentialsEES3_:bb.a
  %i.y = invoke { i64, ptr } %i.x(ptr noundef nonnull align 8 dereferenceable(20) %i.u)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.z = extractvalue { i64, ptr } %i.y, 1
  %i.aa = load atomic i8, ptr @_ZGVZN31grpc_composite_call_credentials4TypeEvE8kFactory acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %bb.m, !prof !45

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN31grpc_composite_call_credentials4TypeEvE8kFactory) #28
  %.not.i26 = icmp eq i32 %i.ac, 0
  br i1 %.not.i26, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
          to label %bb.k unwind label %bb.l       ; 5 uses

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ae, ptr noundef nonnull align 1 dereferenceable(9) @.str, i64 9, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 9, ptr %i.af, align 8, !tbaa !53
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 25
  store i8 0, ptr %i.ag, align 1, !tbaa !56
  store ptr %i.ad, ptr @_ZZN31grpc_composite_call_credentials4TypeEvE8kFactory, align 8, !tbaa !48
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN31grpc_composite_call_credentials4TypeEvE8kFactory) #28
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN31grpc_composite_call_credentials4TypeEvE8kFactory) #28
  br label %.body

bb.m:                                             ; preds = %bb.k, %bb.i, %bb.h
  %i.ai = load ptr, ptr @_ZZN31grpc_composite_call_credentials4TypeEvE8kFactory, align 8, !tbaa !48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !52
  %i.ak = icmp eq ptr %i.z, %i.aj                 ; 2 uses
  br i1 %i.t, label %bb.n, label %_ZL20get_creds_array_sizePK21grpc_call_credentialsb.exit

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !63
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !65
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3
  br label %_ZL20get_creds_array_sizePK21grpc_call_credentialsb.exit

_ZL20get_creds_array_sizePK21grpc_call_credentialsb.exit: ; preds = %bb.m, %bb.n
  %i.au = phi i64 [ %i.at, %bb.n ], [ 1, %bb.m ]
  br i1 %i.ak, label %bb.o, label %_ZL20get_creds_array_sizePK21grpc_call_credentialsb.exit30

bb.o:                                             ; preds = %_ZL20get_creds_array_sizePK21grpc_call_credentialsb.exit
  %i.av = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !63
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !65
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3
  br label %_ZL20get_creds_array_sizePK21grpc_call_credentialsb.exit30

_ZL20get_creds_array_sizePK21grpc_call_credentialsb.exit30: ; preds = %_ZL20get_creds_array_sizePK21grpc_call_credentialsb.exit, %bb.o
  %i.be = phi i64 [ %i.bd, %bb.o ], [ 1, %_ZL20get_creds_array_sizePK21grpc_call_credentialsb.exit ]
  %i.bf = add nsw i64 %i.be, %i.au                ; 4 uses
  %i.bg = icmp ugt i64 %i.bf, 1152921504606846975
  br i1 %i.bg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZL20get_creds_array_sizePK21grpc_call_credentialsb.exit30
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #32
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %_ZL20get_creds_array_sizePK21grpc_call_credentialsb.exit30
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !64 ; 2 uses
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !65  ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 3
  %i.bo = icmp ult i64 %i.bn, %i.bf
  br i1 %i.bo, label %_ZNSt12_Vector_baseIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !63
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.bl
  %i.bt = shl nuw nsw i64 %i.bf, 3
  %i.bu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #31
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc31:                                         ; preds = %_ZNSt12_Vector_baseIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE11_M_allocateEm.exit.i
  %i.bv = load ptr, ptr %i.c, align 8, !tbaa !65  ; 11 uses
  %i.bw = load ptr, ptr %i.bp, align 8, !tbaa !63 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bv, %i.bw
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc31
  %i.bx = ptrtoaddr ptr %i.bw to i64
  %i.by = ptrtoaddr ptr %i.bv to i64
  %i.bz = add i64 %i.bx, -8
  %i.ca = sub i64 %i.bz, %i.by                    ; 3 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ca, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader217, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cd = and i64 %i.ca, -8
  %i.ce = add i64 %i.cd, 8                        ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bu, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.bv, i64 %i.ce
  %bound0 = icmp ult ptr %i.bu, %i.cg
  %bound1 = icmp ult ptr %i.bv, %i.cf
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader217, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cc, 4611686018427387900     ; 3 uses
  %i.ch = shl i64 %n.vec, 3                       ; 2 uses
  %i.ci = getelementptr i8, ptr %i.bu, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.bv, i64 %i.ch
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ck = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bu, i64 %i.ck ; 2 uses
  %next.gep165 = getelementptr i8, ptr %i.bv, i64 %i.ck ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.cl = getelementptr i8, ptr %next.gep165, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep165, align 8, !tbaa !17, !alias.scope !176
  %wide.load166 = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !17, !alias.scope !176
  %i.cm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !17, !alias.scope !177, !noalias !178
  store <2 x ptr> %wide.load166, ptr %i.cm, align 8, !tbaa !17, !alias.scope !177, !noalias !178
  store <2 x ptr> splat (ptr null), ptr %next.gep165, align 8, !tbaa !17, !alias.scope !176
  store <2 x ptr> splat (ptr null), ptr %i.cl, align 8, !tbaa !17, !alias.scope !176
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i.preheader217

.lr.ph.i.i.i.i.preheader217:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bu, %vector.memcheck ], [ %i.bu, %.lr.ph.i.i.i.i.preheader ], [ %i.ci, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bv, %vector.memcheck ], [ %i.bv, %.lr.ph.i.i.i.i.preheader ], [ %i.cj, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader217, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader217 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader217 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.co = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !17, !alias.scope !175
  store ptr %i.co, ptr %.012.i.i.i.i, align 8, !tbaa !17, !alias.scope !174
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !17, !alias.scope !175
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.bw
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !157

_ZNSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc31
  %.not.i8.i = icmp eq ptr %i.bv, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.cr = load ptr, ptr %i.bh, align 8, !tbaa !64
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.bv to i64
  %i.cu = sub i64 %i.cs, %i.ct
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.cu) #29
  br label %_ZNSt12_Vector_baseIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.r, %_ZNSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.bu, ptr %i.c, align 8, !tbaa !65
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bs
  store ptr %i.cv, ptr %i.bp, align 8, !tbaa !63
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bf ; 2 uses
  store ptr %i.cw, ptr %i.bh, align 8, !tbaa !64
  br label %_ZNSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE13_M_deallocateEPS3_m.exit.i, %bb.q
  %i.cx = phi ptr [ %i.bu, %_ZNSt12_Vector_baseIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.bj, %bb.q ] ; 10 uses
  %i.cy = phi ptr [ %i.cw, %_ZNSt12_Vector_baseIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.bi, %bb.q ] ; 4 uses
  %5 = ptrtoaddr ptr %i.cy to i64
  %i.cz = load ptr, ptr %1, align 8, !tbaa !17    ; 10 uses
  store ptr %i.cz, ptr %3, align 8, !tbaa !17
  store ptr null, ptr %1, align 8, !tbaa !17
  br i1 %i.t, label %bb.w, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE7reserveEm.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !63 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.db, %i.cy
  br i1 %.not.i.i.i, label %bb.t, label %_ZN31grpc_composite_call_credentials13push_to_innerEN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEb.exit.thread

_ZN31grpc_composite_call_credentials13push_to_innerEN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEb.exit.thread: ; preds = %bb.s
  store ptr %i.cz, ptr %i.db, align 8, !tbaa !17
  store ptr null, ptr %3, align 8, !tbaa !17
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !63
  br label %_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsED2Ev.exit

bb.t:                                             ; preds = %bb.s
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %i.cx to i64               ; 3 uses
  %i.df = sub i64 %i.dd, %i.de                    ; 3 uses
  %i.dg = icmp eq i64 %i.df, 9223372036854775800
  br i1 %i.dg, label %bb.u, label %_ZNKSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #32
          to label %.noexc64 unwind label %.loopexit.split-lp104.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc64:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.t
  %i.dh = ashr exact i64 %i.df, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.dh, i64 1)
  %i.di = add nsw i64 %.sroa.speculated.i.i, %i.dh ; 2 uses
  %i.dj = icmp ult i64 %i.di, %i.dh
  %i.dk = tail call i64 @llvm.umin.i64(i64 %i.di, i64 1152921504606846975)
  %i.dl = select i1 %i.dj, i64 1152921504606846975, i64 %i.dk ; 3 uses
  %.not.i.i56 = icmp ne i64 %i.dl, 0
  tail call void @llvm.assume(i1 %.not.i.i56)
  %i.dm = shl nuw nsw i64 %i.dl, 3
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #31
          to label %.noexc65 unwind label %.loopexit.split-lp104.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc65:                                         ; preds = %_ZNKSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.df
  store ptr %i.cz, ptr %i.do, align 8, !tbaa !17
  store ptr null, ptr %3, align 8, !tbaa !17
  %.not10.i.i.i.i57 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not10.i.i.i.i57, label %_ZNSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i58.preheader

.lr.ph.i.i.i.i58.preheader:                       ; preds = %.noexc65
  %i.dp = add i64 %5, -8
  %i.dq = sub i64 %i.dp, %i.de                    ; 3 uses
  %i.dr = lshr i64 %i.dq, 3
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 2 uses
  %min.iters.check174 = icmp ult i64 %i.dq, 136
  br i1 %min.iters.check174, label %.lr.ph.i.i.i.i58.preheader215, label %vector.memcheck175

vector.memcheck175:                               ; preds = %.lr.ph.i.i.i.i58.preheader
  %i.dt = and i64 %i.dq, -8
  %i.du = add i64 %i.dt, 8                        ; 2 uses
  %i.dv = getelementptr i8, ptr %i.dn, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.cx, i64 %i.du
  %bound0176 = icmp ult ptr %i.dn, %i.dw
  %bound1177 = icmp ult ptr %i.cx, %i.dv
  %found.conflict178 = and i1 %bound0176, %bound1177
  br i1 %found.conflict178, label %.lr.ph.i.i.i.i58.preheader215, label %vector.ph179

vector.ph179:                                     ; preds = %vector.memcheck175
  %n.vec180 = and i64 %i.ds, 4611686018427387900  ; 3 uses
  %i.dx = shl i64 %n.vec180, 3                    ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dn, i64 %i.dx  ; 2 uses
  %i.dz = getelementptr i8, ptr %i.cx, i64 %i.dx
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph179
  %index182 = phi i64 [ 0, %vector.ph179 ], [ %index.next187, %vector.body181 ] ; 2 uses
  %i.ea = shl i64 %index182, 3                    ; 2 uses
  %next.gep183 = getelementptr i8, ptr %i.dn, i64 %i.ea ; 2 uses
  %next.gep184 = getelementptr i8, ptr %i.cx, i64 %i.ea ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.eb = getelementptr i8, ptr %next.gep184, i64 16 ; 2 uses
  %wide.load185 = load <2 x ptr>, ptr %next.gep184, align 8, !tbaa !17, !alias.scope !181
  %wide.load186 = load <2 x ptr>, ptr %i.eb, align 8, !tbaa !17, !alias.scope !181
  %i.ec = getelementptr i8, ptr %next.gep183, i64 16
  store <2 x ptr> %wide.load185, ptr %next.gep183, align 8, !tbaa !17, !alias.scope !182, !noalias !183
  store <2 x ptr> %wide.load186, ptr %i.ec, align 8, !tbaa !17, !alias.scope !182, !noalias !183
  store <2 x ptr> splat (ptr null), ptr %next.gep184, align 8, !tbaa !17, !alias.scope !181
  store <2 x ptr> splat (ptr null), ptr %i.eb, align 8, !tbaa !17, !alias.scope !181
  %index.next187 = add nuw i64 %index182, 4       ; 2 uses
  %i.ed = icmp eq i64 %index.next187, %n.vec180
  br i1 %i.ed, label %middle.block188, label %vector.body181, !llvm.loop !164

middle.block188:                                  ; preds = %vector.body181
  %cmp.n189 = icmp eq i64 %i.ds, %n.vec180
  br i1 %cmp.n189, label %_ZNSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i58.preheader215

.lr.ph.i.i.i.i58.preheader215:                    ; preds = %vector.memcheck175, %.lr.ph.i.i.i.i58.preheader, %middle.block188
  %.012.i.i.i.i59.ph = phi ptr [ %i.dn, %vector.memcheck175 ], [ %i.dn, %.lr.ph.i.i.i.i58.preheader ], [ %i.dy, %middle.block188 ]
  %.0911.i.i.i.i60.ph = phi ptr [ %i.cx, %vector.memcheck175 ], [ %i.cx, %.lr.ph.i.i.i.i58.preheader ], [ %i.dz, %middle.block188 ]
  br label %.lr.ph.i.i.i.i58

.lr.ph.i.i.i.i58:                                 ; preds = %.lr.ph.i.i.i.i58.preheader215, %.lr.ph.i.i.i.i58
  %.012.i.i.i.i59 = phi ptr [ %i.eg, %.lr.ph.i.i.i.i58 ], [ %.012.i.i.i.i59.ph, %.lr.ph.i.i.i.i58.preheader215 ] ; 2 uses
  %.0911.i.i.i.i60 = phi ptr [ %i.ef, %.lr.ph.i.i.i.i58 ], [ %.0911.i.i.i.i60.ph, %.lr.ph.i.i.i.i58.preheader215 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.ee = load ptr, ptr %.0911.i.i.i.i60, align 8, !tbaa !17, !alias.scope !180
  store ptr %i.ee, ptr %.012.i.i.i.i59, align 8, !tbaa !17, !alias.scope !179
  store ptr null, ptr %.0911.i.i.i.i60, align 8, !tbaa !17, !alias.scope !180
  %i.ef = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i60, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i59, i64 8 ; 2 uses
  %.not.i.i.i.i61 = icmp eq ptr %i.ef, %i.cy
  br i1 %.not.i.i.i.i61, label %_ZNSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i58, !llvm.loop !165

_ZNSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i: ; preds = %.lr.ph.i.i.i.i58, %middle.block188, %.noexc65
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dn, %.noexc65 ], [ %i.dy, %middle.block188 ], [ %i.eg, %.lr.ph.i.i.i.i58 ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cx, null
  br i1 %.not.i23.i, label %_ZN31grpc_composite_call_credentials13push_to_innerEN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEb.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  %i.ei = load ptr, ptr %i.bh, align 8, !tbaa !64
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = sub i64 %i.ej, %i.de
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.ek) #29
  br label %_ZN31grpc_composite_call_credentials13push_to_innerEN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEb.exit

bb.w:                                             ; preds = %_ZNSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE7reserveEm.exit
  %i.el = getelementptr inbounds nuw i8, ptr %i.cz, i64 24 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.cz, i64 32 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !63
  %i.eo = load ptr, ptr %i.el, align 8, !tbaa !65 ; 2 uses
  %.not.i32 = icmp eq ptr %i.en, %i.eo
  br i1 %.not.i32, label %.loopexit155, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE9push_backERKS3_.exit.i, %.lr.ph.i
  %i.eq = phi ptr [ %i.eo, %.lr.ph.i ], [ %i.fc, %_ZNSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE9push_backERKS3_.exit.i ]
  %.07.i = phi i64 [ 0, %.lr.ph.i ], [ %i.fa, %_ZNSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE9push_backERKS3_.exit.i ] ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %.07.i ; 3 uses
  %i.es = load ptr, ptr %i.ep, align 8, !tbaa !63 ; 5 uses
  %i.et = load ptr, ptr %i.bh, align 8, !tbaa !64
  %.not.i.i = icmp eq ptr %i.es, %i.et
  br i1 %.not.i.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr null, ptr %i.es, align 8, !tbaa !17
  %i.eu = load ptr, ptr %i.er, align 8, !tbaa !17 ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i6.i, label %_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsEC2ERKS2_.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = atomicrmw add ptr %i.ev, i64 4294967296 monotonic, align 8 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.er, align 8, !tbaa !17
  %.pre.i.i = load ptr, ptr %i.ep, align 8, !tbaa !63
  br label %_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsEC2ERKS2_.exit.i.i

_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsEC2ERKS2_.exit.i.i: ; preds = %bb.z, %bb.y
  %i.ex = phi ptr [ %.pre.i.i, %bb.z ], [ %i.es, %bb.y ]
  %i.ey = phi ptr [ %.pre.i.i.i, %bb.z ], [ null, %bb.y ]
  store ptr %i.ey, ptr %i.es, align 8, !tbaa !17
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr %i.ez, ptr %i.ep, align 8, !tbaa !63
  br label %_ZNSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE9push_backERKS3_.exit.i

bb.aa:                                            ; preds = %bb.x
  invoke void @_ZNSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.es, ptr noundef nonnull align 8 dereferenceable(8) %i.er)
          to label %_ZNSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE9push_backERKS3_.exit.i unwind label %.loopexit.split-lp104.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE9push_backERKS3_.exit.i: ; preds = %bb.aa, %_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsEC2ERKS2_.exit.i.i
  %i.fa = add nuw i64 %.07.i, 1                   ; 2 uses
  %i.fb = load ptr, ptr %i.em, align 8, !tbaa !63
  %i.fc = load ptr, ptr %i.el, align 8, !tbaa !65 ; 2 uses
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = ashr exact i64 %i.ff, 3
  %i.fh = icmp ult i64 %i.fa, %i.fg
  br i1 %i.fh, label %bb.x, label %.loopexit155, !llvm.loop !3

_ZN31grpc_composite_call_credentials13push_to_innerEN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEb.exit: ; preds = %_ZNSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, %bb.v
  store ptr %i.dn, ptr %i.c, align 8, !tbaa !65
  store ptr %i.eh, ptr %i.da, align 8, !tbaa !63
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dl
  store ptr %i.fi, ptr %i.bh, align 8, !tbaa !64
  br label %_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsED2Ev.exit

.loopexit155:                                     ; preds = %_ZNSt6vectorIN9grpc_core13RefCountedPtrI21grpc_call_credentialsEESaIS3_EE9push_backERKS3_.exit.i, %bb.w
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.fk = atomicrmw add ptr %i.fj, i64 -4294967295 acq_rel, align 8
  %.mask.i.i = and i64 %i.fk, -4294967296
  %i.fl = icmp eq i64 %.mask.i.i, 4294967296
  br i1 %i.fl, label %bb.ab, label %.noexc.i, !prof !43

bb.ab:                                            ; preds = %.loopexit155
  %i.fm = load ptr, ptr %i.cz, align 8, !tbaa !28
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  invoke void %i.fo(ptr noundef nonnull align 8 dereferenceable(16) %i.cz)
          to label %.noexc.i unwind label %bb.ad, !inline_history !0

.noexc.i:                                         ; preds = %bb.ab, %.loopexit155
  %i.fp = atomicrmw add ptr %i.fj, i64 -1 acq_rel, align 8
  %i.fq = icmp eq i64 %i.fp, 1
  br i1 %i.fq, label %bb.ac, label %_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsED2Ev.exit, !prof !43

bb.ac:                                            ; preds = %.noexc.i
  %i.fr = load ptr, ptr %i.cz, align 8, !tbaa !28
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  tail call void %i.ft(ptr noundef nonnull align 8 dereferenceable(20) %i.cz) #28, !inline_history !1
  br label %_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.fu = landingpad { ptr, i32 }
          catch ptr null
  %i.fv = extractvalue { ptr, i32 } %i.fu, 0
  tail call void @__clang_call_terminate(ptr %i.fv) #30
  unreachable

_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsED2Ev.exit: ; preds = %_ZN31grpc_composite_call_credentials13push_to_innerEN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEb.exit, %_ZN31grpc_composite_call_credentials13push_to_innerEN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEb.exit.thread, %.noexc.i, %bb.ac
  %i.fw = load ptr, ptr %2, align 8, !tbaa !17    ; 10 uses
  store ptr %i.fw, ptr %4, align 8, !tbaa !17
  store ptr null, ptr %2, align 8, !tbaa !17
  br i1 %i.ak, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsED2Ev.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !63 ; 6 uses
  %i.fz = load ptr, ptr %i.bh, align 8, !tbaa !64
  %.not.i.i.i36 = icmp eq ptr %i.fy, %i.fz
  br i1 %.not.i.i.i36, label %bb.af, label %_ZN31grpc_composite_call_credentials13push_to_innerEN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEb.exit48.thread

_ZN31grpc_composite_call_credentials13push_to_innerEN9grpc_core13RefCountedPtrI21grpc_call_credentialsEEb.exit48.thread: ; preds = %bb.ae
  store ptr %i.fw, ptr %i.fy, align 8, !tbaa !17
  store ptr null, ptr %4, align 8, !tbaa !17
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store ptr %i.ga, ptr %i.fx, align 8, !tbaa !63
  br label %_ZN9grpc_core13RefCountedPtrI21grpc_call_credentialsED2Ev.exit52

bb.af:                                            ; preds = %bb.ae
  %i.gb = load ptr, ptr %i.c, align 8, !tbaa !65  ; 7 uses
  %i.gc = ptrtoint ptr %i.fy to i64               ; 2 uses
  %i.gd = ptrtoint ptr %i.gb to i64               ; 3 uses
  %i.ge = sub i64 %i.gc, %i.gd                    ; 3 uses
  %i.gf = icmp eq i64 %i.ge, 9223372036854775800
end_hunk_0
