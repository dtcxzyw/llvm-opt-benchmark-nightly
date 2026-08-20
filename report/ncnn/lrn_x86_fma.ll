inline.NumInlined: 35
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK4ncnn11LRN_x86_fma15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.ct = shl nuw nsw i64 %n.vec120, 2            ; 2 uses
  %i.cu = getelementptr i8, ptr %.033.lcssa, i64 %i.ct
  %i.cv = getelementptr i8, ptr %.035.lcssa, i64 %i.ct
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index121 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 2 uses
  %i.cw = shl i64 %index121, 2                    ; 2 uses
  %next.gep122 = getelementptr i8, ptr %.033.lcssa, i64 %i.cw
  %next.gep123 = getelementptr i8, ptr %.035.lcssa, i64 %i.cw
  %wide.load124 = load <8 x float>, ptr %next.gep123, align 4, !tbaa !46 ; 2 uses
  %i.cx = fmul fast <8 x float> %wide.load124, %wide.load124
  store <8 x float> %i.cx, ptr %next.gep122, align 4, !tbaa !46
  %index.next125 = add nuw i64 %index121, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next125, %n.vec120
  br i1 %i.cy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !73

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n126 = icmp eq i64 %i.bx, %n.vec120
  br i1 %cmp.n126, label %._crit_edge, label %.lr.ph78.preheader

.lr.ph78.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.177.ph = phi i32 [ %.032.lcssa, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.cs, %vec.epilog.middle.block ] ; 4 uses
  %.13476.ph = phi ptr [ %.033.lcssa, %iter.check ], [ %i.cd, %vec.epilog.iter.check ], [ %i.cu, %vec.epilog.middle.block ] ; 2 uses
  %.13675.ph = phi ptr [ %.035.lcssa, %iter.check ], [ %i.ce, %vec.epilog.iter.check ], [ %i.cv, %vec.epilog.middle.block ] ; 2 uses
  %i.cz = sub i32 %i.bs, %.177.ph
  %xtraiter = and i32 %i.cz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph78.prol.loopexit, label %.lr.ph78.prol

.lr.ph78.prol:                                    ; preds = %.lr.ph78.preheader, %.lr.ph78.prol
  %.177.prol = phi i32 [ %i.de, %.lr.ph78.prol ], [ %.177.ph, %.lr.ph78.preheader ]
  %.13476.prol = phi ptr [ %i.dd, %.lr.ph78.prol ], [ %.13476.ph, %.lr.ph78.preheader ] ; 2 uses
  %.13675.prol = phi ptr [ %i.dc, %.lr.ph78.prol ], [ %.13675.ph, %.lr.ph78.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph78.prol ], [ 0, %.lr.ph78.preheader ]
  %i.da = load float, ptr %.13675.prol, align 4, !tbaa !46 ; 2 uses
  %i.db = fmul fast float %i.da, %i.da
  store float %i.db, ptr %.13476.prol, align 4, !tbaa !46
  %i.dc = getelementptr inbounds nuw i8, ptr %.13675.prol, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.13476.prol, i64 4 ; 2 uses
  %i.de = add nuw nsw i32 %.177.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph78.prol.loopexit, label %.lr.ph78.prol, !llvm.loop !74

.lr.ph78.prol.loopexit:                           ; preds = %.lr.ph78.prol, %.lr.ph78.preheader
  %.177.unr = phi i32 [ %.177.ph, %.lr.ph78.preheader ], [ %i.de, %.lr.ph78.prol ]
  %.13476.unr = phi ptr [ %.13476.ph, %.lr.ph78.preheader ], [ %i.dd, %.lr.ph78.prol ]
  %.13675.unr = phi ptr [ %.13675.ph, %.lr.ph78.preheader ], [ %i.dc, %.lr.ph78.prol ]
  %i.df = sub i32 %.177.ph, %i.bs
  %i.dg = icmp ugt i32 %i.df, -4
  br i1 %i.dg, label %._crit_edge, label %.lr.ph78

.lr.ph:                                           ; preds = %.noexc37, %.lr.ph
  %.03271 = phi i32 [ %i.dl, %.lr.ph ], [ 0, %.noexc37 ]
  %.03370 = phi ptr [ %i.dk, %.lr.ph ], [ %i.bq, %.noexc37 ] ; 2 uses
  %.03569 = phi ptr [ %i.dj, %.lr.ph ], [ %i.bk, %.noexc37 ] ; 2 uses
  %i.dh = load <8 x float>, ptr %.03569, align 1, !tbaa !54 ; 2 uses
  %i.di = fmul fast <8 x float> %i.dh, %i.dh
  store <8 x float> %i.di, ptr %.03370, align 1, !tbaa !54
  %i.dj = getelementptr inbounds nuw i8, ptr %.03569, i64 32 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.03370, i64 32 ; 2 uses
  %i.dl = add nuw nsw i32 %.03271, 8              ; 3 uses
  %i.dm = or disjoint i32 %i.dl, 7
  %i.dn = load i32, ptr %5, align 4, !tbaa !17    ; 2 uses
  %i.do = icmp slt i32 %i.dm, %i.dn
  br i1 %i.do, label %.lr.ph, label %.preheader, !llvm.loop !76

.lr.ph78:                                         ; preds = %.lr.ph78.prol.loopexit, %.lr.ph78
  %.177 = phi i32 [ %i.ef, %.lr.ph78 ], [ %.177.unr, %.lr.ph78.prol.loopexit ]
  %.13476 = phi ptr [ %i.ee, %.lr.ph78 ], [ %.13476.unr, %.lr.ph78.prol.loopexit ] ; 5 uses
  %.13675 = phi ptr [ %i.ed, %.lr.ph78 ], [ %.13675.unr, %.lr.ph78.prol.loopexit ] ; 5 uses
  %i.dp = load float, ptr %.13675, align 4, !tbaa !46 ; 2 uses
  %i.dq = fmul fast float %i.dp, %i.dp
  store float %i.dq, ptr %.13476, align 4, !tbaa !46
  %i.dr = getelementptr inbounds nuw i8, ptr %.13675, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %.13476, i64 4
  %i.dt = load float, ptr %i.dr, align 4, !tbaa !46 ; 2 uses
  %i.du = fmul fast float %i.dt, %i.dt
  store float %i.du, ptr %i.ds, align 4, !tbaa !46
  %i.dv = getelementptr inbounds nuw i8, ptr %.13675, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %.13476, i64 8
  %i.dx = load float, ptr %i.dv, align 4, !tbaa !46 ; 2 uses
  %i.dy = fmul fast float %i.dx, %i.dx
  store float %i.dy, ptr %i.dw, align 4, !tbaa !46
  %i.dz = getelementptr inbounds nuw i8, ptr %.13675, i64 12
  %i.ea = getelementptr inbounds nuw i8, ptr %.13476, i64 12
  %i.eb = load float, ptr %i.dz, align 4, !tbaa !46 ; 2 uses
  %i.ec = fmul fast float %i.eb, %i.eb
  store float %i.ec, ptr %i.ea, align 4, !tbaa !46
  %i.ed = getelementptr inbounds nuw i8, ptr %.13675, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %.13476, i64 16
  %i.ef = add nuw nsw i32 %.177, 4                ; 2 uses
  %exitcond91.not.3 = icmp eq i32 %i.ef, %i.bs
  br i1 %exitcond91.not.3, label %._crit_edge, label %.lr.ph78, !llvm.loop !77

._crit_edge:                                      ; preds = %.lr.ph78.prol.loopexit, %.lr.ph78, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, 1 ; 2 uses
  %lftr.wideiv95 = trunc i64 %indvars.iv.next93 to i32
  %exitcond96.not = icmp eq i32 %i.s, %lftr.wideiv95
  br i1 %exitcond96.not, label %._crit_edge81, label %.noexc37, !llvm.loop !78

._crit_edge81:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc37.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge81, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #6 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !80 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11LRN_x86_fma15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !17     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !17
  %i.h = load i32, ptr %0, align 4, !tbaa !17     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !17
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !17
  %i.k = load i32, ptr %i.a, align 4, !tbaa !17   ; 2 uses
  %.not282 = icmp sgt i32 %i.k, %i.j
  br i1 %.not282, label %._crit_edge286, label %.lr.ph285

.lr.ph285:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 212 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 5 uses
  %i.t = getelementptr i8, ptr %3, i64 220        ; 6 uses
  %i.u = sext i32 %i.k to i64
  %i.v = add nsw i32 %i.j, 1
  %scevgep322 = getelementptr i8, ptr %3, i64 228
  %scevgep323 = getelementptr inbounds nuw i8, ptr %8, i64 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph285, %._crit_edge
  %indvars.iv.a = phi i64 [ %i.u, %.lr.ph285 ], [ %indvars.iv.next.a, %._crit_edge ] ; 5 uses
  %indvars296 = trunc i64 %indvars.iv.a to i32    ; 3 uses
  %i.w = load i32, ptr %i.l, align 4, !tbaa !48   ; 2 uses
  %.neg = sdiv i32 %i.w, -2
  %i.x = add i32 %.neg, %indvars296               ; 2 uses
  %i.y = sdiv i32 %i.w, 2
  %i.z = add nsw i32 %i.y, %indvars296
  %.not73267 = icmp sgt i32 %i.x, %i.z
  br i1 %.not73267, label %.noexc75, label %.lr.ph269.a

.noexc75:                                         ; preds = %.loopexit, %bb.c
  %i.aa = load ptr, ptr %7, align 8, !tbaa !23, !noalias !82
  %i.ab = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !82
  %i.ac = mul i64 %i.ab, %indvars.iv.a
  %i.ad = load i64, ptr %i.r, align 8, !tbaa !18, !noalias !82
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae ; 2 uses
  %i.ag = load ptr, ptr %5, align 8, !tbaa !23, !noalias !85
  %i.ah = load i64, ptr %i.o, align 8, !tbaa !19, !noalias !85
  %i.ai = mul i64 %i.ah, %indvars.iv.a
  %i.aj = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !85
  %i.ak = mul i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ak ; 2 uses
  %i.am = load float, ptr %i.s, align 8, !tbaa !88
  %i.an = insertelement <8 x float> poison, float %i.am, i64 0
  %i.ao = shufflevector <8 x float> %i.an, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ap = load float, ptr %8, align 4, !tbaa !46
  %i.aq = insertelement <8 x float> poison, float %i.ap, i64 0
  %i.ar = shufflevector <8 x float> %i.aq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.as = load float, ptr %i.t, align 4, !tbaa !89
  %i.at = fneg fast float %i.as
  %i.au = insertelement <8 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <8 x float> %i.au, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aw = load i32, ptr %6, align 4, !tbaa !17    ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 7
  br i1 %i.ax, label %.lr.ph273, label %.preheader255

.lr.ph269.a:                                      ; preds = %bb.c, %.loopexit
  %.072268 = phi i32 [ %10, %.loopexit ], [ %i.x, %bb.c ] ; 5 uses
  %i.ay = icmp slt i32 %.072268, 0
  br i1 %i.ay, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph269.a
  %i.az = load i32, ptr %2, align 4, !tbaa !17
  %.not74 = icmp slt i32 %.072268, %i.az
  br i1 %.not74, label %.noexc79, label %.loopexit

.noexc79:                                         ; preds = %bb.d
  %i.ba = load ptr, ptr %4, align 8, !tbaa !23, !noalias !90
  %i.bb = load i64, ptr %i.m, align 8, !tbaa !19, !noalias !90
  %9 = zext nneg i32 %.072268 to i64
  %i.bc = mul i64 %i.bb, %9
  %i.bd = load i64, ptr %i.n, align 8, !tbaa !18, !noalias !90
  %i.be = mul i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.be ; 2 uses
  %i.bg = load ptr, ptr %5, align 8, !tbaa !23, !noalias !93
  %i.bh = load i64, ptr %i.o, align 8, !tbaa !19, !noalias !93
  %i.bi = mul i64 %i.bh, %indvars.iv.a
  %i.bj = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !93
  %i.bk = mul i64 %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %6, align 4, !tbaa !17    ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 7
  br i1 %i.bn, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc79
  %.070.lcssa = phi ptr [ %i.bf, %.noexc79 ], [ %i.dj, %.lr.ph ] ; 8 uses
  %.068.lcssa = phi ptr [ %i.bl, %.noexc79 ], [ %i.dk, %.lr.ph ] ; 8 uses
  %.066.lcssa = phi i32 [ 0, %.noexc79 ], [ %i.dl, %.lr.ph ] ; 7 uses
  %.lcssa = phi i32 [ %i.bm, %.noexc79 ], [ %i.dn, %.lr.ph ] ; 6 uses
  %i.bo = icmp slt i32 %.066.lcssa, %.lcssa
  br i1 %i.bo, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.bp = xor i32 %.066.lcssa, -1
  %i.bq = add i32 %.lcssa, %i.bp                  ; 3 uses
  %i.br = zext i32 %i.bq to i64
  %i.bs = add nuw nsw i64 %i.br, 1                ; 5 uses
  %min.iters.check350 = icmp ult i32 %i.bq, 7
  br i1 %min.iters.check350, label %.lr.ph266.preheader, label %vector.memcheck341

vector.memcheck341:                               ; preds = %iter.check
  %scevgep342 = getelementptr i8, ptr %.068.lcssa, i64 4
  %i.bt = xor i32 %.066.lcssa, -1
  %i.bu = add i32 %.lcssa, %i.bt
  %i.bv = zext i32 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 2                ; 2 uses
  %scevgep343 = getelementptr i8, ptr %scevgep342, i64 %i.bw
  %scevgep344 = getelementptr i8, ptr %.070.lcssa, i64 4
  %scevgep345 = getelementptr i8, ptr %scevgep344, i64 %i.bw
  %bound0346 = icmp ult ptr %.068.lcssa, %scevgep345
  %bound1347 = icmp ult ptr %.070.lcssa, %scevgep343
  %found.conflict348 = and i1 %bound0346, %bound1347
  br i1 %found.conflict348, label %.lr.ph266.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck341
  %min.iters.check351 = icmp ult i32 %i.bq, 31
  br i1 %min.iters.check351, label %vec.epilog.ph, label %vector.ph352

vector.ph352:                                     ; preds = %vector.main.loop.iter.check
  %i.bx = and i64 %i.bs, 24
  %n.vec353 = and i64 %i.bs, 8589934560           ; 5 uses
  %i.by = trunc i64 %n.vec353 to i32
  %i.bz = add i32 %.066.lcssa, %i.by
  %i.ca = shl nuw nsw i64 %n.vec353, 2            ; 2 uses
  %i.cb = getelementptr i8, ptr %.068.lcssa, i64 %i.ca
  %i.cc = getelementptr i8, ptr %.070.lcssa, i64 %i.ca
  br label %vector.body354

vector.body354:                                   ; preds = %vector.body354, %vector.ph352
  %index355 = phi i64 [ 0, %vector.ph352 ], [ %index.next366, %vector.body354 ] ; 2 uses
  %i.cd = shl i64 %index355, 2                    ; 2 uses
  %next.gep356 = getelementptr i8, ptr %.068.lcssa, i64 %i.cd ; 5 uses
  %next.gep357 = getelementptr i8, ptr %.070.lcssa, i64 %i.cd ; 4 uses
  %i.ce = getelementptr i8, ptr %next.gep357, i64 32
  %i.cf = getelementptr i8, ptr %next.gep357, i64 64
  %i.cg = getelementptr i8, ptr %next.gep357, i64 96
  %wide.load358 = load <8 x float>, ptr %next.gep357, align 4, !tbaa !46, !alias.scope !96
  %wide.load359 = load <8 x float>, ptr %i.ce, align 4, !tbaa !46, !alias.scope !96
  %wide.load360 = load <8 x float>, ptr %i.cf, align 4, !tbaa !46, !alias.scope !96
  %wide.load361 = load <8 x float>, ptr %i.cg, align 4, !tbaa !46, !alias.scope !96
  %i.ch = getelementptr i8, ptr %next.gep356, i64 32 ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep356, i64 64 ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep356, i64 96 ; 2 uses
  %wide.load362 = load <8 x float>, ptr %next.gep356, align 4, !tbaa !46, !alias.scope !99, !noalias !96
  %wide.load363 = load <8 x float>, ptr %i.ch, align 4, !tbaa !46, !alias.scope !99, !noalias !96
  %wide.load364 = load <8 x float>, ptr %i.ci, align 4, !tbaa !46, !alias.scope !99, !noalias !96
  %wide.load365 = load <8 x float>, ptr %i.cj, align 4, !tbaa !46, !alias.scope !99, !noalias !96
  %i.ck = fadd fast <8 x float> %wide.load362, %wide.load358
  %i.cl = fadd fast <8 x float> %wide.load363, %wide.load359
  %i.cm = fadd fast <8 x float> %wide.load364, %wide.load360
  %i.cn = fadd fast <8 x float> %wide.load365, %wide.load361
  store <8 x float> %i.ck, ptr %next.gep356, align 4, !tbaa !46, !alias.scope !99, !noalias !96
  store <8 x float> %i.cl, ptr %i.ch, align 4, !tbaa !46, !alias.scope !99, !noalias !96
  store <8 x float> %i.cm, ptr %i.ci, align 4, !tbaa !46, !alias.scope !99, !noalias !96
  store <8 x float> %i.cn, ptr %i.cj, align 4, !tbaa !46, !alias.scope !99, !noalias !96
  %index.next366 = add nuw i64 %index355, 32      ; 2 uses
  %i.co = icmp eq i64 %index.next366, %n.vec353
  br i1 %i.co, label %middle.block367, label %vector.body354, !llvm.loop !101

middle.block367:                                  ; preds = %vector.body354
  %cmp.n368 = icmp eq i64 %i.bs, %n.vec353
  br i1 %cmp.n368, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block367
  %min.epilog.iters.check = icmp eq i64 %i.bx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph266.preheader, label %vec.epilog.ph, !prof !72

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec353, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec372 = and i64 %i.bs, 8589934584           ; 4 uses
  %i.cp = trunc i64 %n.vec372 to i32
  %i.cq = add i32 %.066.lcssa, %i.cp
  %i.cr = shl nuw nsw i64 %n.vec372, 2            ; 2 uses
  %i.cs = getelementptr i8, ptr %.068.lcssa, i64 %i.cr
  %i.ct = getelementptr i8, ptr %.070.lcssa, i64 %i.cr
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index373 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next378, %vec.epilog.vector.body ] ; 2 uses
  %i.cu = shl i64 %index373, 2                    ; 2 uses
  %next.gep374 = getelementptr i8, ptr %.068.lcssa, i64 %i.cu ; 2 uses
  %next.gep375 = getelementptr i8, ptr %.070.lcssa, i64 %i.cu
  %wide.load376 = load <8 x float>, ptr %next.gep375, align 4, !tbaa !46, !alias.scope !96
  %wide.load377 = load <8 x float>, ptr %next.gep374, align 4, !tbaa !46, !alias.scope !99, !noalias !96
  %i.cv = fadd fast <8 x float> %wide.load377, %wide.load376
  store <8 x float> %i.cv, ptr %next.gep374, align 4, !tbaa !46, !alias.scope !99, !noalias !96
  %index.next378 = add nuw i64 %index373, 8       ; 2 uses
  %i.cw = icmp eq i64 %index.next378, %n.vec372
  br i1 %i.cw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !102

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n379 = icmp eq i64 %i.bs, %n.vec372
  br i1 %cmp.n379, label %.loopexit, label %.lr.ph266.preheader

.lr.ph266.preheader:                              ; preds = %vector.memcheck341, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.167265.ph = phi i32 [ %.066.lcssa, %iter.check ], [ %.066.lcssa, %vector.memcheck341 ], [ %i.bz, %vec.epilog.iter.check ], [ %i.cq, %vec.epilog.middle.block ] ; 4 uses
  %.169264.ph = phi ptr [ %.068.lcssa, %iter.check ], [ %.068.lcssa, %vector.memcheck341 ], [ %i.cb, %vec.epilog.iter.check ], [ %i.cs, %vec.epilog.middle.block ] ; 2 uses
  %.171263.ph = phi ptr [ %.070.lcssa, %iter.check ], [ %.070.lcssa, %vector.memcheck341 ], [ %i.cc, %vec.epilog.iter.check ], [ %i.ct, %vec.epilog.middle.block ] ; 2 uses
  %i.cx = sub i32 %.lcssa, %.167265.ph
  %xtraiter = and i32 %i.cx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph266.prol.loopexit, label %.lr.ph266.prol

.lr.ph266.prol:                                   ; preds = %.lr.ph266.preheader, %.lr.ph266.prol
  %.167265.prol = phi i32 [ %i.dd, %.lr.ph266.prol ], [ %.167265.ph, %.lr.ph266.preheader ]
  %.169264.prol = phi ptr [ %i.dc, %.lr.ph266.prol ], [ %.169264.ph, %.lr.ph266.preheader ] ; 3 uses
  %.171263.prol = phi ptr [ %i.db, %.lr.ph266.prol ], [ %.171263.ph, %.lr.ph266.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph266.prol ], [ 0, %.lr.ph266.preheader ]
  %i.cy = load float, ptr %.171263.prol, align 4, !tbaa !46
  %i.cz = load float, ptr %.169264.prol, align 4, !tbaa !46
  %i.da = fadd fast float %i.cz, %i.cy
  store float %i.da, ptr %.169264.prol, align 4, !tbaa !46
  %i.db = getelementptr inbounds nuw i8, ptr %.171263.prol, i64 4 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.169264.prol, i64 4 ; 2 uses
  %i.dd = add nuw nsw i32 %.167265.prol, 1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph266.prol.loopexit, label %.lr.ph266.prol, !llvm.loop !103

.lr.ph266.prol.loopexit:                          ; preds = %.lr.ph266.prol, %.lr.ph266.preheader
  %.167265.unr = phi i32 [ %.167265.ph, %.lr.ph266.preheader ], [ %i.dd, %.lr.ph266.prol ]
  %.169264.unr = phi ptr [ %.169264.ph, %.lr.ph266.preheader ], [ %i.dc, %.lr.ph266.prol ]
  %.171263.unr = phi ptr [ %.171263.ph, %.lr.ph266.preheader ], [ %i.db, %.lr.ph266.prol ]
  %i.de = sub i32 %.167265.ph, %.lcssa
  %i.df = icmp ugt i32 %i.de, -4
  br i1 %i.df, label %.loopexit, label %.lr.ph266

.lr.ph:                                           ; preds = %.noexc79, %.lr.ph
  %.066259 = phi i32 [ %i.dl, %.lr.ph ], [ 0, %.noexc79 ]
  %.068258 = phi ptr [ %i.dk, %.lr.ph ], [ %i.bl, %.noexc79 ] ; 3 uses
  %.070257 = phi ptr [ %i.dj, %.lr.ph ], [ %i.bf, %.noexc79 ] ; 2 uses
  %i.dg = load <8 x float>, ptr %.070257, align 1, !tbaa !54
  %i.dh = load <8 x float>, ptr %.068258, align 1, !tbaa !54
  %i.di = fadd fast <8 x float> %i.dh, %i.dg
  store <8 x float> %i.di, ptr %.068258, align 1, !tbaa !54
  %i.dj = getelementptr inbounds nuw i8, ptr %.070257, i64 32 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.068258, i64 32 ; 2 uses
  %i.dl = add nuw nsw i32 %.066259, 8             ; 3 uses
  %i.dm = or disjoint i32 %i.dl, 7
  %i.dn = load i32, ptr %6, align 4, !tbaa !17    ; 2 uses
  %i.do = icmp slt i32 %i.dm, %i.dn
  br i1 %i.do, label %.lr.ph, label %.preheader, !llvm.loop !104

.lr.ph266:                                        ; preds = %.lr.ph266.prol.loopexit, %.lr.ph266
  %.167265 = phi i32 [ %i.ej, %.lr.ph266 ], [ %.167265.unr, %.lr.ph266.prol.loopexit ]
  %.169264 = phi ptr [ %i.ei, %.lr.ph266 ], [ %.169264.unr, %.lr.ph266.prol.loopexit ] ; 6 uses
  %.171263 = phi ptr [ %i.eh, %.lr.ph266 ], [ %.171263.unr, %.lr.ph266.prol.loopexit ] ; 5 uses
  %i.dp = load float, ptr %.171263, align 4, !tbaa !46
  %i.dq = load float, ptr %.169264, align 4, !tbaa !46
  %i.dr = fadd fast float %i.dq, %i.dp
  store float %i.dr, ptr %.169264, align 4, !tbaa !46
  %i.ds = getelementptr inbounds nuw i8, ptr %.171263, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %.169264, i64 4 ; 2 uses
  %i.du = load float, ptr %i.ds, align 4, !tbaa !46
  %i.dv = load float, ptr %i.dt, align 4, !tbaa !46
  %i.dw = fadd fast float %i.dv, %i.du
  store float %i.dw, ptr %i.dt, align 4, !tbaa !46
  %i.dx = getelementptr inbounds nuw i8, ptr %.171263, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %.169264, i64 8 ; 2 uses
  %i.dz = load float, ptr %i.dx, align 4, !tbaa !46
  %i.ea = load float, ptr %i.dy, align 4, !tbaa !46
  %i.eb = fadd fast float %i.ea, %i.dz
  store float %i.eb, ptr %i.dy, align 4, !tbaa !46
  %i.ec = getelementptr inbounds nuw i8, ptr %.171263, i64 12
  %i.ed = getelementptr inbounds nuw i8, ptr %.169264, i64 12 ; 2 uses
  %i.ee = load float, ptr %i.ec, align 4, !tbaa !46
  %i.ef = load float, ptr %i.ed, align 4, !tbaa !46
  %i.eg = fadd fast float %i.ef, %i.ee
  store float %i.eg, ptr %i.ed, align 4, !tbaa !46
  %i.eh = getelementptr inbounds nuw i8, ptr %.171263, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %.169264, i64 16
  %i.ej = add nuw nsw i32 %.167265, 4             ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.ej, %.lcssa
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph266, !llvm.loop !105

.loopexit:                                        ; preds = %.lr.ph266.prol.loopexit, %.lr.ph266, %middle.block367, %vec.epilog.middle.block, %.preheader, %.lr.ph269.a, %bb.d
  %10 = add nsw i32 %.072268, 1
  %i.ek = load i32, ptr %i.l, align 4, !tbaa !48
  %i.el = sdiv i32 %i.ek, 2
  %i.em = add nsw i32 %i.el, %indvars296
  %.not73.not = icmp slt i32 %.072268, %i.em
  br i1 %.not73.not, label %.lr.ph269.a, label %.noexc75, !llvm.loop !106

.preheader255:                                    ; preds = %.lr.ph273, %.noexc75
  %.063.lcssa = phi ptr [ %i.af, %.noexc75 ], [ %i.ik, %.lr.ph273 ] ; 8 uses
  %.061.lcssa = phi ptr [ %i.al, %.noexc75 ], [ %i.ij, %.lr.ph273 ] ; 6 uses
  %.0.lcssa = phi i32 [ 0, %.noexc75 ], [ %i.il, %.lr.ph273 ] ; 6 uses
  %.lcssa256 = phi i32 [ %i.aw, %.noexc75 ], [ %i.in, %.lr.ph273 ] ; 6 uses
  %i.en = icmp slt i32 %.0.lcssa, %.lcssa256
  br i1 %i.en, label %.lr.ph281.preheader, label %._crit_edge

.lr.ph281.preheader:                              ; preds = %.preheader255
  %i.eo = xor i32 %.0.lcssa, -1
  %i.ep = add i32 %.lcssa256, %i.eo               ; 2 uses
  %i.eq = zext i32 %i.ep to i64
  %i.er = add nuw nsw i64 %i.eq, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ep, 7
  br i1 %min.iters.check, label %.lr.ph281.preheader383, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph281.preheader
  %scevgep = getelementptr i8, ptr %.063.lcssa, i64 4
  %i.es = xor i32 %.0.lcssa, -1
  %i.et = add i32 %.lcssa256, %i.es
  %i.eu = zext i32 %i.et to i64
  %i.ev = shl nuw nsw i64 %i.eu, 2                ; 2 uses
  %scevgep321 = getelementptr i8, ptr %scevgep, i64 %i.ev ; 3 uses
  %scevgep324 = getelementptr i8, ptr %.061.lcssa, i64 4
  %scevgep325 = getelementptr i8, ptr %scevgep324, i64 %i.ev
  %bound0 = icmp ult ptr %.063.lcssa, %scevgep322
  %bound1 = icmp ult ptr %i.t, %scevgep321
  %found.conflict = and i1 %bound0, %bound1
  %bound0326 = icmp ult ptr %.063.lcssa, %scevgep323
  %bound1327 = icmp ult ptr %8, %scevgep321
  %found.conflict328 = and i1 %bound0326, %bound1327
  %conflict.rdx = or i1 %found.conflict, %found.conflict328
  %bound0329 = icmp ult ptr %.063.lcssa, %scevgep325
  %bound1330 = icmp ult ptr %.061.lcssa, %scevgep321
  %found.conflict331 = and i1 %bound0329, %bound1330
  %conflict.rdx332 = or i1 %conflict.rdx, %found.conflict331
  br i1 %conflict.rdx332, label %.lr.ph281.preheader383, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.er, 8589934584              ; 4 uses
  %i.ew = trunc i64 %n.vec to i32
  %i.ex = add i32 %.0.lcssa, %i.ew
  %i.ey = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.ez = getelementptr i8, ptr %.061.lcssa, i64 %i.ey
  %i.fa = getelementptr i8, ptr %.063.lcssa, i64 %i.ey
  %i.fb = load float, ptr %i.s, align 8, !tbaa !88, !alias.scope !107
  %broadcast.splatinsert337 = insertelement <8 x float> poison, float %i.fb, i64 0
  %broadcast.splat338 = shufflevector <8 x float> %broadcast.splatinsert337, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fc = load float, ptr %8, align 4, !tbaa !46, !alias.scope !110
  %broadcast.splatinsert335 = insertelement <8 x float> poison, float %i.fc, i64 0
  %broadcast.splat336 = shufflevector <8 x float> %broadcast.splatinsert335, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fd = load float, ptr %i.t, align 4, !tbaa !89, !alias.scope !107
  %.scalar = fneg fast float %i.fd
  %i.fe = insertelement <8 x float> poison, float %.scalar, i64 0
  %i.ff = shufflevector <8 x float> %i.fe, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fg = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.061.lcssa, i64 %i.fg
  %next.gep333 = getelementptr i8, ptr %.063.lcssa, i64 %i.fg ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep333, align 4, !tbaa !46, !alias.scope !112, !noalias !114
  %wide.load334 = load <8 x float>, ptr %next.gep, align 4, !tbaa !46, !alias.scope !116
  %i.fh = fmul fast <8 x float> %wide.load334, %broadcast.splat336
  %i.fi = fadd fast <8 x float> %i.fh, %broadcast.splat338
  %i.fj = call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.fi, <8 x float> %i.ff)
  %i.fk = fmul fast <8 x float> %i.fj, %wide.load
  store <8 x float> %i.fk, ptr %next.gep333, align 4, !tbaa !46, !alias.scope !112, !noalias !114
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fl = icmp eq i64 %index.next, %n.vec
  br i1 %i.fl, label %middle.block, label %vector.body, !llvm.loop !117

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.er, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph281.preheader383

.lr.ph281.preheader383:                           ; preds = %vector.memcheck, %.lr.ph281.preheader, %middle.block
  %.1280.ph = phi i32 [ %.0.lcssa, %vector.memcheck ], [ %.0.lcssa, %.lr.ph281.preheader ], [ %i.ex, %middle.block ] ; 4 uses
  %.162279.ph = phi ptr [ %.061.lcssa, %vector.memcheck ], [ %.061.lcssa, %.lr.ph281.preheader ], [ %i.ez, %middle.block ] ; 3 uses
  %.164278.ph = phi ptr [ %.063.lcssa, %vector.memcheck ], [ %.063.lcssa, %.lr.ph281.preheader ], [ %i.fa, %middle.block ] ; 4 uses
  %i.fm = sub i32 %.lcssa256, %.1280.ph
  %.neg395 = add i32 %.1280.ph, 1
  %xtraiter392 = and i32 %i.fm, 1
  %lcmp.mod393.not = icmp eq i32 %xtraiter392, 0
  br i1 %lcmp.mod393.not, label %.lr.ph281.prol.loopexit, label %.lr.ph281.prol

.lr.ph281.prol:                                   ; preds = %.lr.ph281.preheader383
  %i.fn = load float, ptr %.164278.ph, align 4, !tbaa !46
  %i.fo = load float, ptr %i.s, align 8, !tbaa !88
  %i.fp = load float, ptr %8, align 4, !tbaa !46
  %i.fq = load float, ptr %.162279.ph, align 4, !tbaa !46
  %i.fr = fmul fast float %i.fq, %i.fp
  %i.fs = fadd fast float %i.fr, %i.fo
  %i.ft = load float, ptr %i.t, align 4, !tbaa !89
  %i.fu = fneg fast float %i.ft
  %i.fv = call fast float @llvm.pow.f32(float %i.fs, float %i.fu)
  %i.fw = fmul fast float %i.fv, %i.fn
  store float %i.fw, ptr %.164278.ph, align 4, !tbaa !46
  %i.fx = getelementptr inbounds nuw i8, ptr %.162279.ph, i64 4
  %i.fy = getelementptr inbounds nuw i8, ptr %.164278.ph, i64 4
  %i.fz = add nuw nsw i32 %.1280.ph, 1
  br label %.lr.ph281.prol.loopexit

.lr.ph281.prol.loopexit:                          ; preds = %.lr.ph281.prol, %.lr.ph281.preheader383
  %.1280.unr = phi i32 [ %.1280.ph, %.lr.ph281.preheader383 ], [ %i.fz, %.lr.ph281.prol ]
  %.162279.unr = phi ptr [ %.162279.ph, %.lr.ph281.preheader383 ], [ %i.fx, %.lr.ph281.prol ]
  %.164278.unr = phi ptr [ %.164278.ph, %.lr.ph281.preheader383 ], [ %i.fy, %.lr.ph281.prol ]
  %i.ga = icmp eq i32 %.lcssa256, %.neg395
  br i1 %i.ga, label %._crit_edge, label %.lr.ph281

.lr.ph273:                                        ; preds = %.noexc75, %.lr.ph273
  %.0272 = phi i32 [ %i.il, %.lr.ph273 ], [ 0, %.noexc75 ]
  %.061271 = phi ptr [ %i.ij, %.lr.ph273 ], [ %i.al, %.noexc75 ] ; 2 uses
  %.063270 = phi ptr [ %i.ik, %.lr.ph273 ], [ %i.af, %.noexc75 ] ; 3 uses
  %i.gb = load <8 x float>, ptr %.063270, align 1, !tbaa !54
  %i.gc = load <8 x float>, ptr %.061271, align 1, !tbaa !54
  %i.gd = fmul fast <8 x float> %i.gc, %i.ar
  %i.ge = fadd fast <8 x float> %i.gd, %i.ao
  %i.gf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ge, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.gg = bitcast <8 x float> %i.gf to <8 x i32>
  %i.gh = bitcast <8 x float> %i.gf to <8 x i32>
  %i.gi = and <8 x i32> %i.gh, splat (i32 -2139095041)
  %i.gj = or disjoint <8 x i32> %i.gi, splat (i32 1056964608)
  %i.gk = bitcast <8 x i32> %i.gj to <8 x float>  ; 3 uses
  %i.gl = lshr <8 x i32> %i.gg, splat (i32 23)
  %i.gm = add nsw <8 x i32> %i.gl, splat (i32 -127)
  %i.gn = sitofp fast <8 x i32> %i.gm to <8 x float> ; 2 uses
  %i.go = fadd fast <8 x float> %i.gn, splat (float 1.000000e+00)
  %i.gp = fcmp fast olt <8 x float> %i.gk, splat (float f0x3F3504F3) ; 2 uses
  %i.gq = select <8 x i1> %i.gp, <8 x float> %i.gk, <8 x float> zeroinitializer
  %i.gr = fadd fast <8 x float> %i.gk, splat (float -1.000000e+00)
  %i.gs = select fast <8 x i1> %i.gp, <8 x float> %i.gn, <8 x float> %i.go ; 2 uses
  %i.gt = fadd fast <8 x float> %i.gr, %i.gq      ; 12 uses
  %i.gu = fmul fast <8 x float> %i.gt, %i.gt      ; 2 uses
  %i.gv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gt, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.gw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gv, <8 x float> nofpclass(nan inf) %i.gt, <8 x float> splat (float f0x3DEF251A))
  %i.gx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gw, <8 x float> nofpclass(nan inf) %i.gt, <8 x float> splat (float f0xBDFE5D4F))
  %i.gy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gx, <8 x float> nofpclass(nan inf) %i.gt, <8 x float> splat (float f0x3E11E9BF))
  %i.gz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gy, <8 x float> nofpclass(nan inf) %i.gt, <8 x float> splat (float f0xBE2AAE50))
  %i.ha = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gz, <8 x float> nofpclass(nan inf) %i.gt, <8 x float> splat (float f0x3E4CCEAC))
  %i.hb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ha, <8 x float> nofpclass(nan inf) %i.gt, <8 x float> splat (float f0xBE7FFFFC))
  %i.hc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hb, <8 x float> nofpclass(nan inf) %i.gt, <8 x float> splat (float f0x3EAAAAAA))
  %i.hd = fmul fast <8 x float> %i.gu, %i.gt
  %i.he = fmul fast <8 x float> %i.hd, %i.hc
  %i.hf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gs, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.he)
  %i.hg = fneg fast <8 x float> %i.gu
  %i.hh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hg, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.hf)
  %i.hi = fadd fast <8 x float> %i.hh, %i.gt
  %i.hj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gs, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.hi)
  %i.hk = fmul fast <8 x float> %i.hj, %i.av
  %i.hl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hk, <8 x float> splat (float f0x42B0C0A5))
  %i.hm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hl, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hm, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ho = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hn, i32 1) ; 2 uses
  %i.hp = fcmp fast ogt <8 x float> %i.ho, %i.hn
  %i.hq = select <8 x i1> %i.hp, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.hr = fsub fast <8 x float> %i.ho, %i.hq      ; 2 uses
  %i.hs = fneg fast <8 x float> %i.hr             ; 2 uses
  %i.ht = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hs, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.hm)
  %i.hu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hs, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ht) ; 8 uses
  %i.hv = fmul fast <8 x float> %i.hu, %i.hu
  %i.hw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hu, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.hx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hw, <8 x float> nofpclass(nan inf) %i.hu, <8 x float> splat (float f0x3C088908))
  %i.hy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hx, <8 x float> nofpclass(nan inf) %i.hu, <8 x float> splat (float f0x3D2AA9C1))
  %i.hz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hy, <8 x float> nofpclass(nan inf) %i.hu, <8 x float> splat (float f0x3E2AAAAA))
  %i.ia = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hz, <8 x float> nofpclass(nan inf) %i.hu, <8 x float> splat (float 5.000000e-01))
  %i.ib = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ia, <8 x float> nofpclass(nan inf) %i.hv, <8 x float> nofpclass(nan inf) %i.hu)
  %i.ic = fadd fast <8 x float> %i.ib, splat (float 1.000000e+00)
  %i.id = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hr)
  %i.ie = shl <8 x i32> %i.id, splat (i32 23)
  %i.if = add <8 x i32> %i.ie, splat (i32 1065353216)
  %i.ig = bitcast <8 x i32> %i.if to <8 x float>
  %i.ih = fmul fast <8 x float> %i.gb, %i.ig
  %i.ii = fmul fast <8 x float> %i.ih, %i.ic
  store <8 x float> %i.ii, ptr %.063270, align 1, !tbaa !54
  %i.ij = getelementptr inbounds nuw i8, ptr %.061271, i64 32 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.063270, i64 32 ; 2 uses
  %i.il = add nuw nsw i32 %.0272, 8               ; 3 uses
  %i.im = or disjoint i32 %i.il, 7
  %i.in = load i32, ptr %6, align 4, !tbaa !17    ; 2 uses
  %i.io = icmp slt i32 %i.im, %i.in
  br i1 %i.io, label %.lr.ph273, label %.preheader255, !llvm.loop !118

.lr.ph281:                                        ; preds = %.lr.ph281.prol.loopexit, %.lr.ph281
  %.1280 = phi i32 [ %i.jn, %.lr.ph281 ], [ %.1280.unr, %.lr.ph281.prol.loopexit ]
  %.162279 = phi ptr [ %i.jl, %.lr.ph281 ], [ %.162279.unr, %.lr.ph281.prol.loopexit ] ; 3 uses
  %.164278 = phi ptr [ %i.jm, %.lr.ph281 ], [ %.164278.unr, %.lr.ph281.prol.loopexit ] ; 4 uses
  %i.ip = load float, ptr %.164278, align 4, !tbaa !46
  %i.iq = load float, ptr %i.s, align 8, !tbaa !88
  %i.ir = load float, ptr %8, align 4, !tbaa !46
  %i.is = load float, ptr %.162279, align 4, !tbaa !46
  %i.it = fmul fast float %i.is, %i.ir
  %i.iu = fadd fast float %i.it, %i.iq
  %i.iv = load float, ptr %i.t, align 4, !tbaa !89
  %i.iw = fneg fast float %i.iv
  %i.ix = call fast float @llvm.pow.f32(float %i.iu, float %i.iw)
  %i.iy = fmul fast float %i.ix, %i.ip
end_hunk_0
begin_hunk_1_@_ZNK4ncnn11LRN_x86_fma15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.1:bb.a
  %i.jd = load float, ptr %8, align 4, !tbaa !46
  %i.je = load float, ptr %i.iz, align 4, !tbaa !46
  %i.jf = fmul fast float %i.je, %i.jd
  %i.jg = fadd fast float %i.jf, %i.jc
  %i.jh = load float, ptr %i.t, align 4, !tbaa !89
  %i.ji = fneg fast float %i.jh
  %i.jj = call fast float @llvm.pow.f32(float %i.jg, float %i.ji)
  %i.jk = fmul fast float %i.jj, %i.jb
  store float %i.jk, ptr %i.ja, align 4, !tbaa !46
  %i.jl = getelementptr inbounds nuw i8, ptr %.162279, i64 8
  %i.jm = getelementptr inbounds nuw i8, ptr %.164278, i64 8
  %i.jn = add nuw nsw i32 %.1280, 2               ; 2 uses
  %exitcond295.not.1 = icmp eq i32 %i.jn, %.lcssa256
  br i1 %exitcond295.not.1, label %._crit_edge, label %.lr.ph281, !llvm.loop !119

._crit_edge:                                      ; preds = %.lr.ph281.prol.loopexit, %.lr.ph281, %middle.block, %.preheader255
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.a to i32
  %exitcond297.not = icmp eq i32 %i.v, %lftr.wideiv
  br i1 %exitcond297.not, label %._crit_edge286, label %bb.c

._crit_edge286:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge286, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, float noundef nofpclass(nan inf), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11LRN_x86_fma15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !17     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !17
  %i.h = load i32, ptr %0, align 4, !tbaa !17     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !17
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !17
  %i.k = load i32, ptr %i.a, align 4, !tbaa !17   ; 3 uses
  %.not84 = icmp sgt i32 %i.k, %i.j
  br i1 %.not84, label %._crit_edge.split, label %.noexc45.lr.ph

.noexc45.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !23, !noalias !120 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19, !noalias !120 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !18, !noalias !120 ; 3 uses
  %factor.op.mul = mul i64 %i.n, %i.p             ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !9, !noalias !123
  %i.s = load ptr, ptr %4, align 8, !tbaa !23, !noalias !123
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.u = load i64, ptr %i.t, align 8, !tbaa !19, !noalias !123
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !18, !noalias !123 ; 2 uses
  %factor.op.mul86 = mul i64 %i.u, %i.w
  %i.x = sext i32 %i.r to i64
  %i.y = load i32, ptr %5, align 4, !tbaa !17     ; 4 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = mul i64 %i.w, %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 224 ; 6 uses
  %i.ac = getelementptr i8, ptr %9, i64 220       ; 7 uses
  br i1 %i.z, label %.noexc45.lr.ph.split, label %._crit_edge.split

.noexc45.lr.ph.split:                             ; preds = %.noexc45.lr.ph
  %i.ad = load i32, ptr %6, align 4, !tbaa !17    ; 6 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = sext i32 %i.ad to i64                   ; 3 uses
  br i1 %i.ae, label %.noexc45.lr.ph.split.split, label %._crit_edge.split

.noexc45.lr.ph.split.split:                       ; preds = %.noexc45.lr.ph.split
  %i.ag = load i32, ptr %7, align 4, !tbaa !17    ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.noexc45.lr.ph.split.split.split.us, label %.noexc45.preheader

.noexc45.preheader:                               ; preds = %.noexc45.lr.ph.split.split
  %i.ai = sext i32 %i.k to i64                    ; 2 uses
  %i.aj = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.ad to i64   ; 9 uses
  %i.ak = mul i64 %i.n, %i.p
  %i.al = mul i64 %i.ak, %i.ai                    ; 2 uses
  %i.am = mul i64 %i.n, %i.p
  %i.an = add nsw i32 %i.y, -1
  %i.ao = zext i32 %i.an to i64
  %i.ap = mul nuw nsw i64 %i.af, %i.ao
  %i.aq = add nuw i64 %i.ap, %wide.trip.count
  %i.ar = shl i64 %i.aq, 2
  %scevgep127 = getelementptr i8, ptr %9, i64 228
  %i.as = getelementptr i8, ptr %i.l, i64 %i.al
  %i.at = getelementptr i8, ptr %i.l, i64 %i.ar
  %i.au = getelementptr i8, ptr %i.at, i64 %i.al
  %min.iters.check = icmp ult i32 %i.ad, 4
  %min.iters.check128 = icmp ult i32 %i.ad, 32
  %i.av = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.av, 0
  %n.vec132 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n138 = icmp eq i64 %n.vec132, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.aw = add nsw i64 %wide.trip.count, -1
  br label %.noexc45

.noexc45.lr.ph.split.split.split.us:              ; preds = %.noexc45.lr.ph.split.split
  %i.ax = load ptr, ptr %8, align 8, !tbaa !56    ; 5 uses
  %i.ay = sext i32 %i.k to i64
  %i.az = add nsw i32 %i.j, 1
  %wide.trip.count111 = zext nneg i32 %i.y to i64
  %wide.trip.count106 = zext nneg i32 %i.ad to i64
  %wide.trip.count101 = zext nneg i32 %i.ag to i64 ; 2 uses
  %xtraiter141 = and i64 %wide.trip.count101, 3   ; 3 uses
  %i.ba = icmp ult i32 %i.ag, 4
  %unroll_iter = and i64 %wide.trip.count101, 2147483644
  %lcmp.mod142.not = icmp eq i64 %xtraiter141, 0
  %lcmp.mod144 = icmp ne i64 %xtraiter141, 0
  br label %.noexc45.us

.noexc45.us:                                      ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us, %.noexc45.lr.ph.split.split.split.us
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us ], [ %i.ay, %.noexc45.lr.ph.split.split.split.us ] ; 3 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv113
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.us
  %.reass87.us = mul i64 %factor.op.mul86, %indvars.iv113
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 %.reass87.us
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge77.split.us.us.us, %.noexc45.us
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %._crit_edge77.split.us.us.us ], [ 0, %.noexc45.us ] ; 2 uses
  %.04379.us.us = phi ptr [ %i.cx, %._crit_edge77.split.us.us.us ], [ %i.bb, %.noexc45.us ] ; 2 uses
  %i.bd = mul i64 %i.aa, %indvars.iv108
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %._crit_edge.us.us.us, %.preheader.us.us
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %._crit_edge.us.us.us ], [ 0, %.preheader.us.us ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv103 ; 5 uses
  br i1 %i.ba, label %.epil.preheader, label %.lr.ph.us.us.us.new

.lr.ph.us.us.us.new:                              ; preds = %.lr.ph.us.us.us, %.lr.ph.us.us.us.new
  %indvars.iv98 = phi i64 [ %indvars.iv.next99.3, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ] ; 5 uses
  %.04073.us.us.us = phi float [ %i.cg, %.lr.ph.us.us.us.new ], [ 0.000000e+00, %.lr.ph.us.us.us ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv98
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !17
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !46
  %i.bl = fadd fast float %i.bk, %.04073.us.us.us
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv98
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !17
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !46
  %i.bs = fadd fast float %i.br, %i.bl
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv98
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !17
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !46
  %i.bz = fadd fast float %i.by, %i.bs
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv98
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !17
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.cd
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !46
  %i.cg = fadd fast float %i.cf, %i.bz            ; 3 uses
  %indvars.iv.next99.3 = add nuw nsw i64 %indvars.iv98, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.new, !llvm.loop !126

._crit_edge.us.us.us.unr-lcssa:                   ; preds = %.lr.ph.us.us.us.new
  br i1 %lcmp.mod142.not, label %._crit_edge.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.unr-lcssa, %.lr.ph.us.us.us
  %indvars.iv98.epil.init = phi i64 [ 0, %.lr.ph.us.us.us ], [ %indvars.iv.next99.3, %._crit_edge.us.us.us.unr-lcssa ]
  %.04073.us.us.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.us.us.us ], [ %i.cg, %._crit_edge.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod144)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv98.epil = phi i64 [ %indvars.iv.next99.epil, %bb.c ], [ %indvars.iv98.epil.init, %.epil.preheader ] ; 2 uses
  %.04073.us.us.us.epil = phi float [ %i.cm, %bb.c ], [ %.04073.us.us.us.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv98.epil
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !17
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !46
  %i.cm = fadd fast float %i.cl, %.04073.us.us.us.epil ; 2 uses
  %indvars.iv.next99.epil = add nuw nsw i64 %indvars.iv98.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter141
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.us, label %bb.c, !llvm.loop !127

._crit_edge.us.us.us:                             ; preds = %bb.c, %._crit_edge.us.us.us.unr-lcssa
  %.lcssa = phi float [ %i.cg, %._crit_edge.us.us.us.unr-lcssa ], [ %i.cm, %bb.c ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.04379.us.us, i64 %indvars.iv103 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !46
  %i.cp = load float, ptr %i.ab, align 8, !tbaa !88
  %i.cq = load float, ptr %10, align 4, !tbaa !46
  %i.cr = fmul fast float %i.cq, %.lcssa
  %i.cs = fadd fast float %i.cr, %i.cp
  %i.ct = load float, ptr %i.ac, align 4, !tbaa !89
  %i.cu = fneg fast float %i.ct
  %i.cv = call fast float @llvm.pow.f32(float %i.cs, float %i.cu)
  %i.cw = fmul fast float %i.cv, %i.co
  store float %i.cw, ptr %i.cn, align 4, !tbaa !46
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %._crit_edge77.split.us.us.us, label %.lr.ph.us.us.us, !llvm.loop !128

._crit_edge77.split.us.us.us:                     ; preds = %._crit_edge.us.us.us
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.04379.us.us, i64 %i.af
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us, label %.preheader.us.us, !llvm.loop !129

._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us:   ; preds = %._crit_edge77.split.us.us.us
  %indvars.iv.next114 = add nsw i64 %indvars.iv113, 1 ; 2 uses
  %lftr.wideiv116 = trunc i64 %indvars.iv.next114 to i32
  %exitcond117.not = icmp eq i32 %i.az, %lftr.wideiv116
  br i1 %exitcond117.not, label %._crit_edge.split, label %.noexc45.us

.noexc45:                                         ; preds = %.noexc45.preheader, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83
  %indvar = phi i64 [ 0, %.noexc45.preheader ], [ %indvar.next, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83 ] ; 2 uses
  %indvars.iv94 = phi i64 [ %i.ai, %.noexc45.preheader ], [ %indvars.iv.next95, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83 ] ; 2 uses
  %i.cy = mul i64 %i.am, %indvar                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.as, i64 %i.cy
  %scevgep126 = getelementptr i8, ptr %i.au, i64 %i.cy
  %.reass = mul i64 %factor.op.mul, %indvars.iv94
  %i.cz = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass
  %bound0 = icmp ult ptr %scevgep, %scevgep127
  %bound1 = icmp ult ptr %i.ac, %scevgep126
  %found.conflict = and i1 %bound0, %bound1
  br label %iter.check

iter.check:                                       ; preds = %.noexc45, %._crit_edge77.split
  %.04281 = phi i32 [ 0, %.noexc45 ], [ %i.ex, %._crit_edge77.split ]
  %.04379 = phi ptr [ %i.cz, %.noexc45 ], [ %i.ew, %._crit_edge77.split ] ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check128, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.da = load float, ptr %i.ab, align 8, !tbaa !88, !alias.scope !130 ; 8 uses
  %i.db = load float, ptr %i.ac, align 4, !tbaa !89, !alias.scope !130
  %.scalar = fneg fast float %i.db                ; 8 uses
  %i.dc = call fast float @llvm.pow.f32(float %i.da, float %.scalar)
  %i.dd = call fast float @llvm.pow.f32(float %i.da, float %.scalar)
  %i.de = call fast float @llvm.pow.f32(float %i.da, float %.scalar)
  %i.df = call fast float @llvm.pow.f32(float %i.da, float %.scalar)
  %i.dg = call fast float @llvm.pow.f32(float %i.da, float %.scalar)
  %i.dh = call fast float @llvm.pow.f32(float %i.da, float %.scalar)
  %i.di = call fast float @llvm.pow.f32(float %i.da, float %.scalar)
  %i.dj = call fast float @llvm.pow.f32(float %i.da, float %.scalar)
  %i.dk = insertelement <8 x float> poison, float %i.dc, i64 0
  %i.dl = insertelement <8 x float> %i.dk, float %i.dd, i64 1
  %i.dm = insertelement <8 x float> %i.dl, float %i.de, i64 2
  %i.dn = insertelement <8 x float> %i.dm, float %i.df, i64 3
  %i.do = insertelement <8 x float> %i.dn, float %i.dg, i64 4
  %i.dp = insertelement <8 x float> %i.do, float %i.dh, i64 5
  %i.dq = insertelement <8 x float> %i.dp, float %i.di, i64 6
  %i.dr = insertelement <8 x float> %i.dq, float %i.dj, i64 7 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.04379, i64 %index ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 64 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.ds, align 4, !tbaa !46, !alias.scope !133, !noalias !130
  %wide.load129 = load <8 x float>, ptr %i.dt, align 4, !tbaa !46, !alias.scope !133, !noalias !130
  %wide.load130 = load <8 x float>, ptr %i.du, align 4, !tbaa !46, !alias.scope !133, !noalias !130
  %wide.load131 = load <8 x float>, ptr %i.dv, align 4, !tbaa !46, !alias.scope !133, !noalias !130
  %i.dw = fmul fast <8 x float> %i.dr, %wide.load
  %i.dx = fmul fast <8 x float> %i.dr, %wide.load129
  %i.dy = fmul fast <8 x float> %i.dr, %wide.load130
  %i.dz = fmul fast <8 x float> %i.dr, %wide.load131
  store <8 x float> %i.dw, ptr %i.ds, align 4, !tbaa !46, !alias.scope !133, !noalias !130
  store <8 x float> %i.dx, ptr %i.dt, align 4, !tbaa !46, !alias.scope !133, !noalias !130
  store <8 x float> %i.dy, ptr %i.du, align 4, !tbaa !46, !alias.scope !133, !noalias !130
  store <8 x float> %i.dz, ptr %i.dv, align 4, !tbaa !46, !alias.scope !133, !noalias !130
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !135

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge77.split, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !61

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.eb = load float, ptr %i.ab, align 8, !tbaa !88, !alias.scope !130 ; 4 uses
  %i.ec = load float, ptr %i.ac, align 4, !tbaa !89, !alias.scope !130
  %.scalar139 = fneg fast float %i.ec             ; 4 uses
  %i.ed = call fast float @llvm.pow.f32(float %i.eb, float %.scalar139)
  %i.ee = call fast float @llvm.pow.f32(float %i.eb, float %.scalar139)
  %i.ef = call fast float @llvm.pow.f32(float %i.eb, float %.scalar139)
  %i.eg = call fast float @llvm.pow.f32(float %i.eb, float %.scalar139)
  %i.eh = insertelement <4 x float> poison, float %i.ed, i64 0
  %i.ei = insertelement <4 x float> %i.eh, float %i.ee, i64 1
  %i.ej = insertelement <4 x float> %i.ei, float %i.ef, i64 2
  %i.ek = insertelement <4 x float> %i.ej, float %i.eg, i64 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index135 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next137, %vec.epilog.vector.body ] ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.04379, i64 %index135 ; 2 uses
  %wide.load136 = load <4 x float>, ptr %i.el, align 4, !tbaa !46, !alias.scope !133, !noalias !130
  %i.em = fmul fast <4 x float> %i.ek, %wide.load136
  store <4 x float> %i.em, ptr %i.el, align 4, !tbaa !46, !alias.scope !133, !noalias !130
  %index.next137 = add nuw i64 %index135, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next137, %n.vec132
  br i1 %i.en, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !136

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n138, label %._crit_edge77.split, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec132, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 4 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.04379, i64 %indvars.iv.ph ; 2 uses
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !46
  %i.eq = load float, ptr %i.ab, align 8, !tbaa !88
  %i.er = load float, ptr %i.ac, align 4, !tbaa !89
  %i.es = fneg fast float %i.er
  %i.et = call fast float @llvm.pow.f32(float %i.eq, float %i.es)
  %i.eu = fmul fast float %i.et, %i.ep
  store float %i.eu, ptr %i.eo, align 4, !tbaa !46
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.ev = icmp eq i64 %indvars.iv.ph, %i.aw
  br i1 %i.ev, label %._crit_edge77.split, label %vec.epilog.scalar.ph

._ZN4ncnn3MatD2Ev.exit_crit_edge.split83:         ; preds = %._crit_edge77.split
  %indvars.iv.next95 = add nsw i64 %indvars.iv94, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next95 to i32
  %exitcond97.not = icmp eq i32 %i.aj, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond97.not, label %._crit_edge.split, label %.noexc45

._crit_edge77.split:                              ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.04379, i64 %i.af
  %i.ex = add nuw nsw i32 %.04281, 1              ; 2 uses
  %exitcond93.not = icmp eq i32 %i.ex, %i.y
  br i1 %exitcond93.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83, label %iter.check, !llvm.loop !129

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.04379, i64 %indvars.iv ; 2 uses
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !46
  %i.fa = load float, ptr %i.ab, align 8, !tbaa !88
  %i.fb = load float, ptr %i.ac, align 4, !tbaa !89
  %i.fc = fneg fast float %i.fb
  %i.fd = call fast float @llvm.pow.f32(float %i.fa, float %i.fc)
  %i.fe = fmul fast float %i.fd, %i.ez
  store float %i.fe, ptr %i.ey, align 4, !tbaa !46
end_hunk_1
