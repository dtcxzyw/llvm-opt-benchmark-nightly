inline.NumInlined: 804
inline.NumDeleted: 359
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN18expr_pattern_match16match_quantifierEjP10quantifierR10ref_vectorI3app11ast_managerERj:bb.a
  store ptr null, ptr %i.ab, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  store ptr null, ptr %i.ac, align 8, !tbaa !41
  store ptr %i.v, ptr %5, align 8, !tbaa !44
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !45
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.c
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !15
  %i.ah = invoke noundef zeroext i1 @_ZN18expr_pattern_match5matchEP4exprjR7obj_mapI9func_decljE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr poison, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  br i1 %i.ah, label %.preheader, label %bb.o

.preheader:                                       ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !48
  %.not30 = icmp eq i32 %i.aj, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !49
  store i32 %i.ao, ptr %4, align 4, !tbaa !15
  br label %bb.o

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.e:                                             ; preds = %.lr.ph, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN7obj_refI4expr11ast_managerED2Ev.exit ] ; 2 uses
  %i.aq = load i32, ptr %i.o, align 4, !tbaa !35
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ar
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.aw = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !64, !align !65
  store ptr null, ptr %6, align 8, !tbaa !66
  store ptr %i.aw, ptr %i.al, align 8, !tbaa !8
  %i.ax = load i32, ptr %i.q, align 4, !tbaa !35
  invoke void @_ZN18expr_pattern_match11instantiateEP4exprjR7obj_mapI9func_decljER7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.av, i32 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.ay = load ptr, ptr %6, align 8, !tbaa !66    ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.ay, null         ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !68
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !68
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.g, %bb.f
  %i.bc = load ptr, ptr %i.am, align 8, !tbaa !69 ; 4 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !15 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bc, i64 -8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !15
  %i.bi = icmp eq i32 %i.bf, %i.bh
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.i
  %.pre.i.i = load ptr, ptr %i.am, align 8, !tbaa !69 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !15
  br label %bb.j

bb.j:                                             ; preds = %.noexc, %bb.h
  %i.bj = phi i32 [ %.pre2.i.i, %.noexc ], [ %i.bf, %bb.h ] ; 2 uses
  %i.bk = phi ptr [ %.pre.i.i, %.noexc ], [ %i.bc, %bb.h ] ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -4
  %i.bm = zext i32 %i.bj to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bm
  store ptr %i.ay, ptr %i.bn, align 8, !tbaa !72
  %i.bo = add i32 %i.bj, 1
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !15
  br i1 %.not.i.i.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = load ptr, ptr %i.al, align 8, !tbaa !74, !nonnull !64, !align !65
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !68
  %i.bs = add i32 %i.br, -1                       ; 2 uses
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !68
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.l, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bp, ptr noundef nonnull %i.ay)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #19
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bw = load i32, ptr %i.ai, align 8, !tbaa !48
  %i.bx = zext i32 %i.bw to i64
  %i.by = icmp samesign ult i64 %indvars.iv.next, %i.bx
  br i1 %i.by, label %bb.e, label %._crit_edge, !llvm.loop !75

bb.n:                                             ; preds = %bb.i, %bb.e
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.r

bb.o:                                             ; preds = %bb.c, %._crit_edge
  %i.ca = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_ZN7obj_mapI9func_decljED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ca)
          to label %_ZN7obj_mapI9func_decljED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #19
  unreachable

_ZN7obj_mapI9func_decljED2Ev.exit:                ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.s

bb.r:                                             ; preds = %bb.n, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.d ], [ %i.bz, %bb.n ]
  call void @_ZN7obj_mapI9func_decljED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn.pn

bb.s:                                             ; preds = %bb.b, %_Z9is_lambdaPK3ast.exit.thread, %bb.a, %_ZN7obj_mapI9func_decljED2Ev.exit
  %.125 = phi i1 [ %i.ah, %_ZN7obj_mapI9func_decljED2Ev.exit ], [ false, %bb.a ], [ false, %bb.b ], [ false, %_Z9is_lambdaPK3ast.exit.thread ]
  ret i1 %.125
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN18expr_pattern_match5matchEP4exprjR7obj_mapI9func_decljE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.obj_map<func_decl, unsigned int>::key_data", align 8 ; 5 uses
  %5 = alloca %class.svector.1, align 8           ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr null, ptr %5, align 8, !tbaa !76
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %i.c ; 5 uses
  %.sroa.0117.0.copyload = load i32, ptr %i.d, align 8, !tbaa !77
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.e = load <2 x i32>, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !15
  %.sroa.27156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.27156.0.copyload = load ptr, ptr %.sroa.27156.0..sroa_idx, align 8, !tbaa !72
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.31.0.copyload = load ptr, ptr %.sroa.31.0..sroa_idx, align 8, !tbaa !26
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load <4 x i32>, ptr %.sroa.35.0..sroa_idx, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.sroa.31.0 = phi ptr [ %.sroa.31.0.copyload, %bb.a ], [ %.sroa.31.0.be, %.backedge ] ; 6 uses
  %.sroa.27156.0 = phi ptr [ %.sroa.27156.0.copyload, %bb.a ], [ %.sroa.27156.0.be, %.backedge ] ; 6 uses
  %.sroa.0117.0 = phi i32 [ %.sroa.0117.0.copyload, %bb.a ], [ %.sroa.0117.0.be, %.backedge ] ; 4 uses
  %i.k = phi <2 x i32> [ %i.e, %bb.a ], [ %.be, %.backedge ] ; 5 uses
  %i.l = phi <4 x i32> [ %i.f, %bb.a ], [ %.be339, %.backedge ] ; 10 uses
  %i.m = extractelement <2 x i32> %i.k, i64 0     ; 31 uses
  %.sroa.27156.0325 = ptrtoaddr ptr %.sroa.27156.0 to i64
  switch i32 %.sroa.0117.0, label %.thread [
    i32 11, label %split
    i32 8, label %bb.ap
    i32 6, label %bb.c
    i32 7, label %bb.c
    i32 9, label %bb.j
    i32 10, label %.split
    i32 1, label %bb.l
    i32 2, label %bb.l
    i32 3, label %bb.l
    i32 5, label %bb.ah
    i32 4, label %.preheader232
    i32 0, label %bb.ao
  ]

.preheader232:                                    ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.27156.0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !79   ; 6 uses
  %.not249 = icmp eq i32 %i.o, 0
  br i1 %.not249, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader232
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.27156.0, i64 32 ; 6 uses
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !11   ; 7 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %wide.trip.count = zext i32 %i.o to i64         ; 6 uses
  %min.iters.check328 = icmp ult i32 %i.o, 16
  br i1 %min.iters.check328, label %scalar.ph327.preheader, label %vector.scevcheck323

vector.scevcheck323:                              ; preds = %.lr.ph
  %i.s = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.t = trunc i64 %i.s to i32
  %i.u = xor i32 %i.m, -1
  %i.v = icmp ult i32 %i.u, %i.t
  %i.w = icmp ugt i64 %i.s, 4294967295
  %i.x = or i1 %i.v, %i.w
  br i1 %i.x, label %scalar.ph327.preheader, label %vector.memcheck324

vector.memcheck324:                               ; preds = %vector.scevcheck323
  %i.y = add i64 %i.r, -32
  %i.z = zext i32 %i.m to i64
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = add i64 %i.y, %i.aa
  %i.ac = sub i64 %.sroa.27156.0325, %i.ab
  %diff.check326 = icmp ugt i64 %i.ac, -32
  br i1 %diff.check326, label %scalar.ph327.preheader, label %vector.ph329

vector.ph329:                                     ; preds = %vector.memcheck324
  %n.vec330 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  br label %vector.body331

vector.body331:                                   ; preds = %vector.body331, %vector.ph329
  %index332 = phi i64 [ 0, %vector.ph329 ], [ %index.next335, %vector.body331 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index332 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load333 = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !26
  %wide.load334 = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !26
  %i.af = trunc nuw i64 %index332 to i32
  %i.ag = add i32 %i.m, %i.af
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <2 x ptr> %wide.load333, ptr %i.ai, align 8, !tbaa !26
  store <2 x ptr> %wide.load334, ptr %i.aj, align 8, !tbaa !26
  %index.next335 = add nuw i64 %index332, 4       ; 2 uses
  %i.ak = icmp eq i64 %index.next335, %n.vec330
  br i1 %i.ak, label %middle.block336, label %vector.body331, !llvm.loop !82

middle.block336:                                  ; preds = %vector.body331
  %cmp.n337 = icmp eq i64 %n.vec330, %wide.trip.count
  br i1 %cmp.n337, label %.preheader231, label %scalar.ph327.preheader

scalar.ph327.preheader:                           ; preds = %vector.memcheck324, %vector.scevcheck323, %.lr.ph, %middle.block336
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck324 ], [ 0, %vector.scevcheck323 ], [ 0, %.lr.ph ], [ %n.vec330, %middle.block336 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph327.prol.loopexit, label %scalar.ph327.prol

scalar.ph327.prol:                                ; preds = %scalar.ph327.preheader, %scalar.ph327.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph327.prol ], [ %indvars.iv.ph, %scalar.ph327.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph327.prol ], [ 0, %scalar.ph327.preheader ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.prol
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !26
  %i.an = trunc nuw i64 %indvars.iv.prol to i32
  %i.ao = add i32 %i.m, %i.an
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ap
  store ptr %i.am, ptr %i.aq, align 8, !tbaa !26
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph327.prol.loopexit, label %scalar.ph327.prol, !llvm.loop !85

scalar.ph327.prol.loopexit:                       ; preds = %scalar.ph327.prol, %scalar.ph327.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph327.preheader ], [ %indvars.iv.next.prol, %scalar.ph327.prol ]
  %i.ar = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.as = icmp ugt i64 %i.ar, -4
  br i1 %i.as, label %.preheader231, label %scalar.ph327

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !11  ; 9 uses
  %i.au = ptrtoaddr ptr %i.at to i64
  %i.av = extractelement <4 x i32> %i.l, i64 0    ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !26 ; 5 uses
  %i.az = ptrtoaddr ptr %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = and i32 %i.bb, 65535
  %.not84 = icmp eq i32 %i.bc, 0
  br i1 %.not84, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.31.0, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !79 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !79
  %.not85 = icmp eq i32 %i.be, %i.bg
  br i1 %.not85, label %bb.f, label %.thread

bb.e:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.f:                                             ; preds = %bb.d
  %i.bi = icmp eq i32 %.sroa.0117.0, 7
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !87
  %i.bl = extractelement <4 x i32> %i.l, i64 1
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !26
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !87
  %.not86 = icmp eq ptr %i.bk, %i.bq
  br i1 %.not86, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not252 = icmp eq i32 %i.be, 0
  br i1 %.not252, label %._crit_edge248, label %.lr.ph247

.lr.ph247:                                        ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 6 uses
  %wide.trip.count271 = zext i32 %i.be to i64     ; 6 uses
  %min.iters.check = icmp ult i32 %i.be, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph247
  %i.bs = add nsw i64 %wide.trip.count271, -1     ; 2 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = xor i32 %i.m, -1
  %i.bv = icmp ult i32 %i.bu, %i.bt
  %i.bw = icmp ugt i64 %i.bs, 4294967295
  %i.bx = or i1 %i.bv, %i.bw
  br i1 %i.bx, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.by = add i64 %i.au, -32
  %i.bz = zext i32 %i.m to i64
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = add i64 %i.by, %i.ca
  %i.cc = sub i64 %i.az, %i.cb
  %diff.check = icmp ugt i64 %i.cc, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count271, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load = load <2 x ptr>, ptr %i.cd, align 8, !tbaa !26
  %wide.load307 = load <2 x ptr>, ptr %i.ce, align 8, !tbaa !26
  %i.cf = trunc nuw i64 %index to i32
  %i.cg = add i32 %i.m, %i.cf
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <2 x ptr> %wide.load, ptr %i.ci, align 8, !tbaa !26
  store <2 x ptr> %wide.load307, ptr %i.cj, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count271
  br i1 %cmp.n, label %._crit_edge248, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph247, %middle.block
  %indvars.iv268.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph247 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter346 = and i64 %wide.trip.count271, 3   ; 2 uses
  %lcmp.mod347.not = icmp eq i64 %xtraiter346, 0
end_hunk_0
begin_hunk_1_@_ZN18expr_pattern_match5matchEP4exprjR7obj_mapI9func_decljE:bb.a
  %i.hl = ptrtoaddr ptr %i.hk to i64
  %wide.trip.count263 = zext i32 %i.hi to i64     ; 6 uses
  %min.iters.check312 = icmp ult i32 %i.hi, 16
  br i1 %min.iters.check312, label %scalar.ph311.preheader, label %vector.scevcheck308

vector.scevcheck308:                              ; preds = %.lr.ph240
  %i.hm = add nsw i64 %wide.trip.count263, -1     ; 2 uses
  %i.hn = trunc i64 %i.hm to i32
  %i.ho = xor i32 %i.m, -1
  %i.hp = icmp ult i32 %i.ho, %i.hn
  %i.hq = icmp ugt i64 %i.hm, 4294967295
  %i.hr = or i1 %i.hp, %i.hq
  br i1 %i.hr, label %scalar.ph311.preheader, label %vector.memcheck309

vector.memcheck309:                               ; preds = %vector.scevcheck308
  %i.hs = add i64 %i.hl, -32
  %i.ht = zext i32 %i.m to i64
  %i.hu = shl nuw nsw i64 %i.ht, 3
  %i.hv = add i64 %i.hs, %i.hu
  %i.hw = sub i64 %i.fc, %i.hv
  %diff.check310 = icmp ugt i64 %i.hw, -32
  br i1 %diff.check310, label %scalar.ph311.preheader, label %vector.ph313

vector.ph313:                                     ; preds = %vector.memcheck309
  %n.vec314 = and i64 %wide.trip.count263, 4294967292 ; 3 uses
  br label %vector.body315

vector.body315:                                   ; preds = %vector.body315, %vector.ph313
  %index316 = phi i64 [ 0, %vector.ph313 ], [ %index.next319, %vector.body315 ] ; 3 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %index316 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %wide.load317 = load <2 x ptr>, ptr %i.hx, align 8, !tbaa !26
  %wide.load318 = load <2 x ptr>, ptr %i.hy, align 8, !tbaa !26
  %i.hz = trunc nuw i64 %index316 to i32
  %i.ia = add i32 %i.m, %i.hz
  %i.ib = zext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.ib ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store <2 x ptr> %wide.load317, ptr %i.ic, align 8, !tbaa !26
  store <2 x ptr> %wide.load318, ptr %i.id, align 8, !tbaa !26
  %index.next319 = add nuw i64 %index316, 4       ; 2 uses
  %i.ie = icmp eq i64 %index.next319, %n.vec314
  br i1 %i.ie, label %middle.block320, label %vector.body315, !llvm.loop !108

middle.block320:                                  ; preds = %vector.body315
  %cmp.n321 = icmp eq i64 %n.vec314, %wide.trip.count263
  br i1 %cmp.n321, label %.thread210, label %scalar.ph311.preheader

scalar.ph311.preheader:                           ; preds = %vector.memcheck309, %vector.scevcheck308, %.lr.ph240, %middle.block320
  %indvars.iv260.ph = phi i64 [ 0, %vector.memcheck309 ], [ 0, %vector.scevcheck308 ], [ 0, %.lr.ph240 ], [ %n.vec314, %middle.block320 ] ; 3 uses
  %xtraiter343 = and i64 %wide.trip.count263, 3   ; 2 uses
  %lcmp.mod344.not = icmp eq i64 %xtraiter343, 0
  br i1 %lcmp.mod344.not, label %scalar.ph311.prol.loopexit, label %scalar.ph311.prol

scalar.ph311.prol:                                ; preds = %scalar.ph311.preheader, %scalar.ph311.prol
  %indvars.iv260.prol = phi i64 [ %indvars.iv.next261.prol, %scalar.ph311.prol ], [ %indvars.iv260.ph, %scalar.ph311.preheader ] ; 3 uses
  %prol.iter345 = phi i64 [ %prol.iter345.next, %scalar.ph311.prol ], [ 0, %scalar.ph311.preheader ]
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %indvars.iv260.prol
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !26
  %i.ih = trunc nuw i64 %indvars.iv260.prol to i32
  %i.ii = add i32 %i.m, %i.ih
  %i.ij = zext i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.ij
  store ptr %i.ig, ptr %i.ik, align 8, !tbaa !26
  %indvars.iv.next261.prol = add nuw nsw i64 %indvars.iv260.prol, 1 ; 2 uses
  %prol.iter345.next = add i64 %prol.iter345, 1   ; 2 uses
  %prol.iter345.cmp.not = icmp eq i64 %prol.iter345.next, %xtraiter343
  br i1 %prol.iter345.cmp.not, label %scalar.ph311.prol.loopexit, label %scalar.ph311.prol, !llvm.loop !109

scalar.ph311.prol.loopexit:                       ; preds = %scalar.ph311.prol, %scalar.ph311.preheader
  %indvars.iv260.unr = phi i64 [ %indvars.iv260.ph, %scalar.ph311.preheader ], [ %indvars.iv.next261.prol, %scalar.ph311.prol ]
  %i.il = sub nsw i64 %indvars.iv260.ph, %wide.trip.count263
  %i.im = icmp ugt i64 %i.il, -4
  br i1 %i.im, label %.thread210, label %scalar.ph311

scalar.ph311:                                     ; preds = %scalar.ph311.prol.loopexit, %scalar.ph311
  %indvars.iv260 = phi i64 [ %indvars.iv.next261.3, %scalar.ph311 ], [ %indvars.iv260.unr, %scalar.ph311.prol.loopexit ] ; 6 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %indvars.iv260
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !26
  %i.ip = trunc nuw i64 %indvars.iv260 to i32
  %i.iq = add i32 %i.m, %i.ip
  %i.ir = zext i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.ir
  store ptr %i.io, ptr %i.is, align 8, !tbaa !26
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %indvars.iv.next261
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !26
  %i.iv = trunc nuw i64 %indvars.iv.next261 to i32
  %i.iw = add i32 %i.m, %i.iv
  %i.ix = zext i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.ix
  store ptr %i.iu, ptr %i.iy, align 8, !tbaa !26
  %indvars.iv.next261.1 = add nuw nsw i64 %indvars.iv260, 2 ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %indvars.iv.next261.1
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !26
  %i.jb = trunc nuw i64 %indvars.iv.next261.1 to i32
  %i.jc = add i32 %i.m, %i.jb
  %i.jd = zext i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.jd
  store ptr %i.ja, ptr %i.je, align 8, !tbaa !26
  %indvars.iv.next261.2 = add nuw nsw i64 %indvars.iv260, 3 ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %indvars.iv.next261.2
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !26
  %i.jh = trunc nuw i64 %indvars.iv.next261.2 to i32
  %i.ji = add i32 %i.m, %i.jh
  %i.jj = zext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.jj
  store ptr %i.jg, ptr %i.jk, align 8, !tbaa !26
  %indvars.iv.next261.3 = add nuw nsw i64 %indvars.iv260, 4 ; 2 uses
  %exitcond264.not.3 = icmp eq i64 %indvars.iv.next261.3, %wide.trip.count263
  br i1 %exitcond264.not.3, label %.thread210, label %scalar.ph311, !llvm.loop !110

bb.x:                                             ; preds = %_ZNK18expr_pattern_match10match_declEPK9func_declS2_.exit
  %i.jl = load ptr, ptr %5, align 8, !tbaa !76    ; 4 uses
  %i.jm = icmp eq ptr %i.jl, null
  br i1 %i.jm, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.jn = getelementptr inbounds i8, ptr %i.jl, i64 -4
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !15 ; 2 uses
  %i.jp = getelementptr inbounds i8, ptr %i.jl, i64 -8
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !15
  %i.jr = icmp eq i32 %i.jo, %i.jq
  br i1 %i.jr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x
  invoke void @_ZN6vectorIN18expr_pattern_match5instrELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc89 unwind label %bb.ab

.noexc89:                                         ; preds = %bb.z
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !76  ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !15
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc89, %bb.y
  %i.js = phi i32 [ %.pre2.i, %.noexc89 ], [ %i.jo, %bb.y ] ; 2 uses
  %i.jt = phi ptr [ %.pre.i, %.noexc89 ], [ %i.jl, %bb.y ] ; 2 uses
  %i.ju = zext i32 %i.js to i64
  %i.jv = getelementptr inbounds nuw [48 x i8], ptr %i.jt, i64 %i.ju ; 6 uses
  store i32 4, ptr %i.jv, align 8, !tbaa !77
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  store <2 x i32> %i.k, ptr %.sroa.5110.0..sroa_idx, align 4, !tbaa !15
  %.sroa.7113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store ptr %i.fb, ptr %.sroa.7113.0..sroa_idx, align 8, !tbaa !72
  %.sroa.8114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8114.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jv, i64 40
  store i32 1, ptr %.sroa.9115.0..sroa_idx, align 8, !tbaa !15
  %.sroa.10116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jv, i64 44
  store i32 0, ptr %.sroa.10116.0..sroa_idx, align 4, !tbaa !15
  %i.jw = getelementptr inbounds i8, ptr %i.jt, i64 -4
  %i.jx = add i32 %i.js, 1
  store i32 %i.jx, ptr %i.jw, align 4, !tbaa !15
  br label %.thread

bb.ab:                                            ; preds = %bb.z
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ac:                                            ; preds = %_ZNK18expr_pattern_match10match_declEPK9func_declS2_.exit
  %i.jz = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !26
  %i.kb = load ptr, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %i.kc = zext i32 %i.m to i64
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.kc
  store ptr %i.ka, ptr %i.kd, align 8, !tbaa !26
  %i.ke = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !26
  %i.kg = add i32 %i.m, 1
  %i.kh = zext i32 %i.kg to i64
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.kh
  store ptr %i.kf, ptr %i.ki, align 8, !tbaa !26
  %i.kj = load ptr, ptr %5, align 8, !tbaa !76    ; 4 uses
  %i.kk = icmp eq ptr %i.kj, null
  br i1 %i.kk, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kl = getelementptr inbounds i8, ptr %i.kj, i64 -4
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !15 ; 2 uses
  %i.kn = getelementptr inbounds i8, ptr %i.kj, i64 -8
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !15
  %i.kp = icmp eq i32 %i.km, %i.ko
  br i1 %i.kp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  invoke void @_ZN6vectorIN18expr_pattern_match5instrELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc93 unwind label %bb.ag

.noexc93:                                         ; preds = %bb.ae
  %.pre.i90 = load ptr, ptr %5, align 8, !tbaa !76 ; 2 uses
  %.phi.trans.insert.i91 = getelementptr inbounds i8, ptr %.pre.i90, i64 -4
  %.pre2.i92 = load i32, ptr %.phi.trans.insert.i91, align 4, !tbaa !15
  br label %bb.af

bb.af:                                            ; preds = %.noexc93, %bb.ad
  %i.kq = phi i32 [ %.pre2.i92, %.noexc93 ], [ %i.km, %bb.ad ] ; 2 uses
  %i.kr = phi ptr [ %.pre.i90, %.noexc93 ], [ %i.kj, %bb.ad ] ; 2 uses
  %i.ks = zext i32 %i.kq to i64
  %i.kt = getelementptr inbounds nuw [48 x i8], ptr %i.kr, i64 %i.ks ; 7 uses
  store i32 5, ptr %i.kt, align 8, !tbaa !77
  %.sroa.5102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  store i32 %i.m, ptr %.sroa.5102.0..sroa_idx, align 4, !tbaa !15
  %.sroa.5102.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %6 = extractelement <2 x i32> %i.k, i64 1
  store i32 %6, ptr %.sroa.5102.0..sroa_idx.a, align 8, !tbaa !15
  %.sroa.7105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  store ptr %i.fb, ptr %.sroa.7105.0..sroa_idx, align 8, !tbaa !72
  %.sroa.8106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8106.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kt, i64 40
  store i32 2, ptr %.sroa.9107.0..sroa_idx, align 8, !tbaa !15
  %.sroa.10108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kt, i64 44
  store i32 0, ptr %.sroa.10108.0..sroa_idx, align 4, !tbaa !15
  %i.ku = getelementptr inbounds i8, ptr %i.kr, i64 -4
  %i.kv = add i32 %i.kq, 1
  store i32 %i.kv, ptr %i.ku, align 4, !tbaa !15
  br label %.thread210

bb.ag:                                            ; preds = %bb.ae
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ah:                                            ; preds = %bb.b
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.27156.0, i64 32
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !26
  %i.kz = add i32 %i.m, 1
  %i.la = load ptr, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %i.lb = zext i32 %i.kz to i64
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.lb
  store ptr %i.ky, ptr %i.lc, align 8, !tbaa !26
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.27156.0, i64 40
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !26
  %i.lf = zext i32 %i.m to i64
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.lf
  store ptr %i.le, ptr %i.lg, align 8, !tbaa !26
  br label %.thread210

.preheader231:                                    ; preds = %scalar.ph327.prol.loopexit, %scalar.ph327, %middle.block336
  %.not234 = icmp eq i32 %i.o, 1
  br i1 %.not234, label %._crit_edge, label %.lr.ph237

.lr.ph237:                                        ; preds = %.preheader231
  %i.lh = load ptr, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %i.li = add i32 %i.o, 1
  %umax = call i32 @llvm.umax.i32(i32 %i.li, i32 3)
  %wide.trip.count258 = zext i32 %umax to i64
  %i.lj = extractelement <4 x i32> %i.l, i64 2
  br label %bb.ai

scalar.ph327:                                     ; preds = %scalar.ph327.prol.loopexit, %scalar.ph327
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph327 ], [ %indvars.iv.unr, %scalar.ph327.prol.loopexit ] ; 6 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !26
  %i.lm = trunc nuw i64 %indvars.iv to i32
  %i.ln = add i32 %i.m, %i.lm
  %i.lo = zext i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.lo
  store ptr %i.ll, ptr %i.lp, align 8, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !26
  %i.ls = trunc nuw i64 %indvars.iv.next to i32
  %i.lt = add i32 %i.m, %i.ls
  %i.lu = zext i32 %i.lt to i64
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.lu
  store ptr %i.lr, ptr %i.lv, align 8, !tbaa !26
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.1
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !26
  %i.ly = trunc nuw i64 %indvars.iv.next.1 to i32
  %i.lz = add i32 %i.m, %i.ly
  %i.ma = zext i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ma
  store ptr %i.lx, ptr %i.mb, align 8, !tbaa !26
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.2
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !26
  %i.me = trunc nuw i64 %indvars.iv.next.2 to i32
  %i.mf = add i32 %i.m, %i.me
  %i.mg = zext i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.mg
  store ptr %i.md, ptr %i.mh, align 8, !tbaa !26
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader231, label %scalar.ph327, !llvm.loop !111

._crit_edge.loopexit:                             ; preds = %bb.ai
  %i.mi = mul i32 %i.mn, %i.o
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader232, %._crit_edge.loopexit, %.preheader231
  %.065.lcssa = phi i32 [ 1, %.preheader231 ], [ %i.mi, %._crit_edge.loopexit ], [ 0, %.preheader232 ]
  %i.mj = extractelement <4 x i32> %i.l, i64 2    ; 2 uses
  %i.mk = icmp ult i32 %i.mj, %.065.lcssa
  br i1 %i.mk, label %bb.aj, label %.thread210

bb.ai:                                            ; preds = %.lr.ph237, %bb.ai
  %indvars.iv255 = phi i64 [ 2, %.lr.ph237 ], [ %indvars.iv.next256, %bb.ai ] ; 3 uses
  %.065235 = phi i32 [ 1, %.lr.ph237 ], [ %i.mn, %bb.ai ]
  %i.ml = trunc i64 %indvars.iv255 to i32
  %i.mm = add i32 %i.ml, -1
  %i.mn = mul i32 %i.mm, %.065235                 ; 3 uses
  %i.mo = trunc nuw i64 %indvars.iv255 to i32     ; 2 uses
  %i.mp = add i32 %i.m, %i.mo                     ; 2 uses
  %i.mq = add i32 %i.mp, -1
  %i.mr = zext i32 %i.mq to i64
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %i.mr ; 2 uses
  %i.mt = udiv i32 %i.lj, %i.mn
  %i.mu = urem i32 %i.mt, %i.mo
  %i.mv = xor i32 %i.mu, -1
  %i.mw = add i32 %i.mp, %i.mv
  %i.mx = zext i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %i.mx ; 2 uses
  %i.mz = load ptr, ptr %i.ms, align 8, !tbaa !26
  %i.na = load ptr, ptr %i.my, align 8, !tbaa !26
  store ptr %i.na, ptr %i.ms, align 8, !tbaa !26
  store ptr %i.mz, ptr %i.my, align 8, !tbaa !26
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1 ; 2 uses
  %exitcond259 = icmp eq i64 %indvars.iv.next256, %wide.trip.count258
  br i1 %exitcond259, label %._crit_edge.loopexit, label %bb.ai, !llvm.loop !112

bb.aj:                                            ; preds = %._crit_edge
  %i.nb = add nuw i32 %i.mj, 1
  %i.nc = load ptr, ptr %5, align 8, !tbaa !76    ; 4 uses
  %i.nd = icmp eq ptr %i.nc, null
  br i1 %i.nd, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ne = getelementptr inbounds i8, ptr %i.nc, i64 -4
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !15 ; 2 uses
  %i.ng = getelementptr inbounds i8, ptr %i.nc, i64 -8
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !15
  %i.ni = icmp eq i32 %i.nf, %i.nh
  br i1 %i.ni, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.aj
  invoke void @_ZN6vectorIN18expr_pattern_match5instrELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc98 unwind label %bb.an

.noexc98:                                         ; preds = %bb.al
  %.pre.i95 = load ptr, ptr %5, align 8, !tbaa !76 ; 2 uses
  %.phi.trans.insert.i96 = getelementptr inbounds i8, ptr %.pre.i95, i64 -4
  %.pre2.i97 = load i32, ptr %.phi.trans.insert.i96, align 4, !tbaa !15
  br label %bb.am

bb.am:                                            ; preds = %.noexc98, %bb.ak
  %i.nj = phi i32 [ %.pre2.i97, %.noexc98 ], [ %i.nf, %bb.ak ] ; 2 uses
  %i.nk = phi ptr [ %.pre.i95, %.noexc98 ], [ %i.nc, %bb.ak ] ; 2 uses
  %i.nl = zext i32 %i.nj to i64
  %i.nm = getelementptr inbounds nuw [48 x i8], ptr %i.nk, i64 %i.nl ; 7 uses
  store i32 4, ptr %i.nm, align 8, !tbaa !77
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nm, i64 4
  store i32 %i.m, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !15
  %.sroa.5.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %7 = extractelement <2 x i32> %i.k, i64 1
  store i32 %7, ptr %.sroa.5.0..sroa_idx.a, align 8, !tbaa !15
  %.sroa.7100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  store ptr %.sroa.27156.0, ptr %.sroa.7100.0..sroa_idx, align 8, !tbaa !72
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nm, i64 40
  store i32 %i.nb, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !15
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nm, i64 44
  store i32 0, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !15
  %i.nn = getelementptr inbounds i8, ptr %i.nk, i64 -4
  %i.no = add i32 %i.nj, 1
  store i32 %i.no, ptr %i.nn, align 4, !tbaa !15
  br label %.thread210

bb.an:                                            ; preds = %bb.al
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ao:                                            ; preds = %bb.b
  %i.nq = load ptr, ptr %5, align 8, !tbaa !76    ; 4 uses
  %i.nr = icmp eq ptr %i.nq, null
  br i1 %i.nr, label %_ZN6vectorIN18expr_pattern_match5instrELb0EjED2Ev.exit, label %_ZNK6vectorIN18expr_pattern_match5instrELb0EjE5emptyEv.exit

_ZNK6vectorIN18expr_pattern_match5instrELb0EjE5emptyEv.exit: ; preds = %bb.ao
  %i.ns = getelementptr inbounds i8, ptr %i.nq, i64 -4 ; 2 uses
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !15 ; 2 uses
  %i.nu = icmp eq i32 %i.nt, 0
  br i1 %i.nu, label %split.thread, label %_ZN6vectorIN18expr_pattern_match5instrELb0EjE4backEv.exit

_ZN6vectorIN18expr_pattern_match5instrELb0EjE4backEv.exit: ; preds = %_ZNK6vectorIN18expr_pattern_match5instrELb0EjE5emptyEv.exit
  %i.nv = add i32 %i.nt, -1                       ; 2 uses
  %i.nw = zext i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw [48 x i8], ptr %i.nq, i64 %i.nw ; 5 uses
  %.sroa.0117.0.copyload121 = load i32, ptr %i.nx, align 8, !tbaa !77
  %.sroa.11.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %i.nx, i64 4
  %i.ny = load <2 x i32>, ptr %.sroa.11.0..sroa_idx124, align 4, !tbaa !15
  %.sroa.27156.0..sroa_idx157 = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %.sroa.27156.0.copyload158 = load ptr, ptr %.sroa.27156.0..sroa_idx157, align 8, !tbaa !72
  %.sroa.31.0..sroa_idx166 = getelementptr inbounds nuw i8, ptr %i.nx, i64 24
  %.sroa.31.0.copyload167 = load ptr, ptr %.sroa.31.0..sroa_idx166, align 8, !tbaa !26
  %.sroa.35.0..sroa_idx175 = getelementptr inbounds nuw i8, ptr %i.nx, i64 32
  %i.nz = load <4 x i32>, ptr %.sroa.35.0..sroa_idx175, align 8, !tbaa !15
  store i32 %i.nv, ptr %i.ns, align 4, !tbaa !15
  br label %.backedge

bb.ap:                                            ; preds = %bb.b
  %i.oa = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.ob = extractelement <4 x i32> %i.l, i64 0
  %i.oc = zext i32 %i.ob to i64
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %i.oc
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !26
  %i.of = icmp eq ptr %.sroa.31.0, %i.oe
  br i1 %i.of, label %.thread210, label %.thread

.thread210:                                       ; preds = %scalar.ph311.prol.loopexit, %scalar.ph311, %middle.block320, %.split, %.preheader230, %bb.am, %._crit_edge, %bb.ah, %.critedge, %._crit_edge248, %_ZN7obj_mapI9func_decljE6insertEPS0_RKj.exit, %bb.af, %bb.ap
  %i.og = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.oh = extractelement <2 x i32> %i.k, i64 1
  %i.oi = zext i32 %i.oh to i64
  %i.oj = getelementptr inbounds nuw [48 x i8], ptr %i.og, i64 %i.oi ; 5 uses
  %.sroa.0117.0.copyload122 = load i32, ptr %i.oj, align 8, !tbaa !77
  %.sroa.11.0..sroa_idx126 = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  %i.ok = load <2 x i32>, ptr %.sroa.11.0..sroa_idx126, align 4, !tbaa !15
  %.sroa.27156.0..sroa_idx159 = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %.sroa.27156.0.copyload160 = load ptr, ptr %.sroa.27156.0..sroa_idx159, align 8, !tbaa !72
  %.sroa.31.0..sroa_idx168 = getelementptr inbounds nuw i8, ptr %i.oj, i64 24
  %.sroa.31.0.copyload169 = load ptr, ptr %.sroa.31.0..sroa_idx168, align 8, !tbaa !26
  %.sroa.35.0..sroa_idx177 = getelementptr inbounds nuw i8, ptr %i.oj, i64 32
  %i.ol = load <4 x i32>, ptr %.sroa.35.0..sroa_idx177, align 8, !tbaa !15
  br label %.backedge

.backedge:                                        ; preds = %.thread210, %.thread, %_ZN6vectorIN18expr_pattern_match5instrELb0EjE4backEv.exit
  %.sroa.31.0.be = phi ptr [ %.sroa.31.0.copyload169, %.thread210 ], [ %.sroa.31.0.copyload171, %.thread ], [ %.sroa.31.0.copyload167, %_ZN6vectorIN18expr_pattern_match5instrELb0EjE4backEv.exit ]
  %.sroa.27156.0.be = phi ptr [ %.sroa.27156.0.copyload160, %.thread210 ], [ %.sroa.27156.0.copyload162, %.thread ], [ %.sroa.27156.0.copyload158, %_ZN6vectorIN18expr_pattern_match5instrELb0EjE4backEv.exit ]
  %.sroa.0117.0.be = phi i32 [ %.sroa.0117.0.copyload122, %.thread210 ], [ %.sroa.0117.0.copyload123, %.thread ], [ %.sroa.0117.0.copyload121, %_ZN6vectorIN18expr_pattern_match5instrELb0EjE4backEv.exit ]
  %.be = phi <2 x i32> [ %i.ok, %.thread210 ], [ %i.on, %.thread ], [ %i.ny, %_ZN6vectorIN18expr_pattern_match5instrELb0EjE4backEv.exit ]
  %.be339 = phi <4 x i32> [ %i.ol, %.thread210 ], [ %i.oo, %.thread ], [ %i.nz, %_ZN6vectorIN18expr_pattern_match5instrELb0EjE4backEv.exit ]
  br label %bb.b, !llvm.loop !113

.thread:                                          ; preds = %.noexc, %.split, %_ZNK4decl13get_decl_kindEv.exit28.thread.i, %_ZNK4decl18get_num_parametersEv.exit29.i, %bb.q, %_ZNK4decl13get_family_idEv.exit27.thread.i, %_ZNK4decl13get_family_idEv.exit.i, %bb.p, %bb.r, %bb.aa, %_ZNK18expr_pattern_match10match_declEPK9func_declS2_.exit, %bb.m, %bb.l, %._crit_edge243, %bb.d, %bb.g, %bb.c, %bb.j, %bb.b, %bb.ap
  %i.om = load ptr, ptr %i.a, align 8, !tbaa !76  ; 5 uses
  %.sroa.0117.0.copyload123 = load i32, ptr %i.om, align 8, !tbaa !77
  %.sroa.11.0..sroa_idx128 = getelementptr inbounds nuw i8, ptr %i.om, i64 4
  %i.on = load <2 x i32>, ptr %.sroa.11.0..sroa_idx128, align 4, !tbaa !15
  %.sroa.27156.0..sroa_idx161 = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %.sroa.27156.0.copyload162 = load ptr, ptr %.sroa.27156.0..sroa_idx161, align 8, !tbaa !72
  %.sroa.31.0..sroa_idx170 = getelementptr inbounds nuw i8, ptr %i.om, i64 24
  %.sroa.31.0.copyload171 = load ptr, ptr %.sroa.31.0..sroa_idx170, align 8, !tbaa !26
  %.sroa.35.0..sroa_idx179 = getelementptr inbounds nuw i8, ptr %i.om, i64 32
  %i.oo = load <4 x i32>, ptr %.sroa.35.0..sroa_idx179, align 8, !tbaa !15
  br label %.backedge

bb.aq:                                            ; preds = %bb.n, %bb.ab, %bb.ag, %bb.an, %bb.e
  %.pn87 = phi { ptr, i32 } [ %i.bh, %bb.e ], [ %i.np, %bb.an ], [ %i.jy, %bb.ab ], [ %i.kw, %bb.ag ], [ %i.fk, %bb.n ]
  call void @_ZN6vectorIN18expr_pattern_match5instrELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn87

split:                                            ; preds = %bb.b
  %.pr.pre = load ptr, ptr %5, align 8, !tbaa !76 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i, label %_ZN6vectorIN18expr_pattern_match5instrELb0EjED2Ev.exit, label %split.thread

split.thread:                                     ; preds = %_ZNK6vectorIN18expr_pattern_match5instrELb0EjE5emptyEv.exit, %split
  %.177.ph.ph300 = phi i1 [ true, %split ], [ false, %_ZNK6vectorIN18expr_pattern_match5instrELb0EjE5emptyEv.exit ]
  %.pr299 = phi ptr [ %.pr.pre, %split ], [ %i.nq, %_ZNK6vectorIN18expr_pattern_match5instrELb0EjE5emptyEv.exit ]
  %i.op = getelementptr inbounds i8, ptr %.pr299, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.op)
          to label %_ZN6vectorIN18expr_pattern_match5instrELb0EjED2Ev.exit unwind label %bb.ar

bb.ar:                                            ; preds = %split.thread
  %i.oq = landingpad { ptr, i32 }
          catch ptr null
  %i.or = extractvalue { ptr, i32 } %i.oq, 0
  call void @__clang_call_terminate(ptr %i.or) #19
  unreachable

_ZN6vectorIN18expr_pattern_match5instrELb0EjED2Ev.exit: ; preds = %bb.ao, %split, %split.thread
  %.177.ph229 = phi i1 [ %.177.ph.ph300, %split.thread ], [ true, %split ], [ false, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret i1 %.177.ph229
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define hidden void @_ZN18expr_pattern_match11instantiateEP4exprjR7obj_mapI9func_decljER7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
.lr.ph.i.i.i.i.i.i.i:
  %5 = alloca %"struct.obj_map<var, var *>::key_data", align 8 ; 5 uses
  %6 = alloca %class.obj_map.39, align 8          ; 11 uses
  %7 = alloca %"struct.expr_pattern_match::inst_proc", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 8, ptr %i.a, align 8, !tbaa !114
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.b, align 4, !tbaa !117
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !118
  %i.d = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 128) ; 9 uses
  store ptr null, ptr %i.d, align 8, !tbaa !119
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.e, align 8, !tbaa !119
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.f, align 8, !tbaa !119
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr null, ptr %i.g, align 8, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr null, ptr %i.h, align 8, !tbaa !119
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr null, ptr %i.i, align 8, !tbaa !119
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr null, ptr %i.j, align 8, !tbaa !119
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store ptr null, ptr %i.k, align 8, !tbaa !119
  store ptr %i.d, ptr %6, align 8, !tbaa !121
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %wide.trip.count = zext i32 %2 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.o = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !64, !align !65 ; 2 uses
  store ptr %i.o, ptr %7, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64
  store i64 %i.q, ptr %i.p, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr null, ptr %i.r, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %3, ptr %i.s, align 8, !tbaa !122
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %6, ptr %i.t, align 8, !tbaa !124
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store i32 8, ptr %i.u, align 8, !tbaa !126
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 52
  store i32 0, ptr %i.v, align 4, !tbaa !129
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i32 0, ptr %i.w, align 8, !tbaa !130
  %i.x = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 128)
          to label %bb.e unwind label %bb.a       ; 9 uses

bb.a:                                             ; preds = %._crit_edge
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.p) #18
  br label %.body

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !92
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !93
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !92
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
end_hunk_1
