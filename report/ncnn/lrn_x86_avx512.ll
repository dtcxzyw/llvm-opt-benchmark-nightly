inline.NumInlined: 35
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4ncnn14LRN_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined:bb.a
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
  br i1 %i.cy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !72

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
  br i1 %prol.iter.cmp.not, label %.lr.ph78.prol.loopexit, label %.lr.ph78.prol, !llvm.loop !73

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
  br i1 %i.do, label %.lr.ph, label %.preheader, !llvm.loop !75

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
  br i1 %exitcond91.not.3, label %._crit_edge, label %.lr.ph78, !llvm.loop !76

._crit_edge:                                      ; preds = %.lr.ph78.prol.loopexit, %.lr.ph78, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, 1 ; 2 uses
  %lftr.wideiv95 = trunc i64 %indvars.iv.next93 to i32
  %exitcond96.not = icmp eq i32 %i.s, %lftr.wideiv95
  br i1 %exitcond96.not, label %._crit_edge81, label %.noexc37, !llvm.loop !77

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
declare !callback !79 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn14LRN_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
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
  %.not269 = icmp sgt i32 %i.k, %i.j
  br i1 %.not269, label %._crit_edge273, label %.lr.ph272

.lr.ph272:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 212 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 6 uses
  %i.t = getelementptr i8, ptr %3, i64 220        ; 7 uses
  %i.u = sext i32 %i.k to i64
  %i.v = add nsw i32 %i.j, 1
  %scevgep309 = getelementptr i8, ptr %3, i64 228
  %scevgep310 = getelementptr inbounds nuw i8, ptr %8, i64 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph272, %._crit_edge
  %indvars.iv.a = phi i64 [ %i.u, %.lr.ph272 ], [ %indvars.iv.next.a, %._crit_edge ] ; 5 uses
  %indvars283 = trunc i64 %indvars.iv.a to i32    ; 3 uses
  %i.w = load i32, ptr %i.l, align 4, !tbaa !48   ; 2 uses
  %.neg = sdiv i32 %i.w, -2
  %i.x = add i32 %.neg, %indvars283               ; 2 uses
  %i.y = sdiv i32 %i.w, 2
  %i.z = add nsw i32 %i.y, %indvars283
  %.not73254 = icmp sgt i32 %i.x, %i.z
  br i1 %.not73254, label %.noexc75, label %.lr.ph256

.lr.ph256:                                        ; preds = %bb.c
  %9 = zext i32 %i.x to i64
  br label %.lr.ph256.a

.noexc75:                                         ; preds = %.loopexit, %bb.c
  %i.aa = load ptr, ptr %7, align 8, !tbaa !23, !noalias !81
  %i.ab = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !81
  %i.ac = mul i64 %i.ab, %indvars.iv.a
  %i.ad = load i64, ptr %i.r, align 8, !tbaa !18, !noalias !81
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae ; 2 uses
  %i.ag = load ptr, ptr %5, align 8, !tbaa !23, !noalias !84
  %i.ah = load i64, ptr %i.o, align 8, !tbaa !19, !noalias !84
  %i.ai = mul i64 %i.ah, %indvars.iv.a
  %i.aj = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !84
  %i.ak = mul i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ak ; 2 uses
  %i.am = load float, ptr %i.s, align 8, !tbaa !87
  %i.an = insertelement <8 x float> poison, float %i.am, i64 0
  %i.ao = shufflevector <8 x float> %i.an, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ap = load float, ptr %8, align 4, !tbaa !46
  %i.aq = insertelement <8 x float> poison, float %i.ap, i64 0
  %i.ar = shufflevector <8 x float> %i.aq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.as = load float, ptr %i.t, align 4, !tbaa !88
  %i.at = fneg fast float %i.as
  %i.au = insertelement <8 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <8 x float> %i.au, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aw = load i32, ptr %6, align 4, !tbaa !17    ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 7
  br i1 %i.ax, label %.lr.ph260, label %.preheader242

.lr.ph256.a:                                      ; preds = %.lr.ph256, %.loopexit
  %indvars.iv = phi i64 [ %9, %.lr.ph256 ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %10 = trunc nuw i64 %indvars.iv to i32          ; 3 uses
  %i.ay = icmp slt i32 %10, 0
  br i1 %i.ay, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph256.a
  %i.az = load i32, ptr %2, align 4, !tbaa !17
  %.not74 = icmp sgt i32 %i.az, %10
  br i1 %.not74, label %.noexc79, label %.loopexit

.noexc79:                                         ; preds = %bb.d
  %i.ba = load ptr, ptr %4, align 8, !tbaa !23, !noalias !89
  %i.bb = load i64, ptr %i.m, align 8, !tbaa !19, !noalias !89
  %i.bc = mul i64 %i.bb, %indvars.iv
  %i.bd = load i64, ptr %i.n, align 8, !tbaa !18, !noalias !89
  %i.be = mul i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.be ; 2 uses
  %i.bg = load ptr, ptr %5, align 8, !tbaa !23, !noalias !92
  %i.bh = load i64, ptr %i.o, align 8, !tbaa !19, !noalias !92
  %i.bi = mul i64 %i.bh, %indvars.iv.a
  %i.bj = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !92
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
  br i1 %i.bo, label %iter.check377, label %.loopexit

iter.check377:                                    ; preds = %.preheader
  %i.bp = xor i32 %.066.lcssa, -1
  %i.bq = add i32 %.lcssa, %i.bp                  ; 3 uses
  %i.br = zext i32 %i.bq to i64
  %i.bs = add nuw nsw i64 %i.br, 1                ; 5 uses
  %min.iters.check354 = icmp ult i32 %i.bq, 7
  br i1 %min.iters.check354, label %.lr.ph253.preheader, label %vector.memcheck346

vector.memcheck346:                               ; preds = %iter.check377
  %scevgep347 = getelementptr i8, ptr %.068.lcssa, i64 4
  %i.bt = xor i32 %.066.lcssa, -1
  %i.bu = add i32 %.lcssa, %i.bt
  %i.bv = zext i32 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 2                ; 2 uses
  %scevgep348 = getelementptr i8, ptr %scevgep347, i64 %i.bw
  %scevgep349 = getelementptr i8, ptr %.070.lcssa, i64 4
  %scevgep350 = getelementptr i8, ptr %scevgep349, i64 %i.bw
  %bound0351 = icmp ult ptr %.068.lcssa, %scevgep350
  %bound1352 = icmp ult ptr %.070.lcssa, %scevgep348
  %found.conflict353 = and i1 %bound0351, %bound1352
  br i1 %found.conflict353, label %.lr.ph253.preheader, label %vector.main.loop.iter.check355

vector.main.loop.iter.check355:                   ; preds = %vector.memcheck346
  %min.iters.check356 = icmp ult i32 %i.bq, 63
  br i1 %min.iters.check356, label %vec.epilog.ph381, label %vector.ph357

vector.ph357:                                     ; preds = %vector.main.loop.iter.check355
  %i.bx = and i64 %i.bs, 56
  %n.vec358 = and i64 %i.bs, 8589934528           ; 5 uses
  %i.by = trunc i64 %n.vec358 to i32
  %i.bz = add i32 %.066.lcssa, %i.by
  %i.ca = shl nuw nsw i64 %n.vec358, 2            ; 2 uses
  %i.cb = getelementptr i8, ptr %.068.lcssa, i64 %i.ca
  %i.cc = getelementptr i8, ptr %.070.lcssa, i64 %i.ca
  br label %vector.body359

vector.body359:                                   ; preds = %vector.body359, %vector.ph357
  %index360 = phi i64 [ 0, %vector.ph357 ], [ %index.next371, %vector.body359 ] ; 2 uses
  %i.cd = shl i64 %index360, 2                    ; 2 uses
  %next.gep361 = getelementptr i8, ptr %.068.lcssa, i64 %i.cd ; 5 uses
  %next.gep362 = getelementptr i8, ptr %.070.lcssa, i64 %i.cd ; 4 uses
  %i.ce = getelementptr i8, ptr %next.gep362, i64 64
  %i.cf = getelementptr i8, ptr %next.gep362, i64 128
  %i.cg = getelementptr i8, ptr %next.gep362, i64 192
  %wide.load363 = load <16 x float>, ptr %next.gep362, align 4, !tbaa !46, !alias.scope !95
  %wide.load364 = load <16 x float>, ptr %i.ce, align 4, !tbaa !46, !alias.scope !95
  %wide.load365 = load <16 x float>, ptr %i.cf, align 4, !tbaa !46, !alias.scope !95
  %wide.load366 = load <16 x float>, ptr %i.cg, align 4, !tbaa !46, !alias.scope !95
  %i.ch = getelementptr i8, ptr %next.gep361, i64 64 ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep361, i64 128 ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep361, i64 192 ; 2 uses
  %wide.load367 = load <16 x float>, ptr %next.gep361, align 4, !tbaa !46, !alias.scope !98, !noalias !95
  %wide.load368 = load <16 x float>, ptr %i.ch, align 4, !tbaa !46, !alias.scope !98, !noalias !95
  %wide.load369 = load <16 x float>, ptr %i.ci, align 4, !tbaa !46, !alias.scope !98, !noalias !95
  %wide.load370 = load <16 x float>, ptr %i.cj, align 4, !tbaa !46, !alias.scope !98, !noalias !95
  %i.ck = fadd fast <16 x float> %wide.load367, %wide.load363
  %i.cl = fadd fast <16 x float> %wide.load368, %wide.load364
  %i.cm = fadd fast <16 x float> %wide.load369, %wide.load365
  %i.cn = fadd fast <16 x float> %wide.load370, %wide.load366
  store <16 x float> %i.ck, ptr %next.gep361, align 4, !tbaa !46, !alias.scope !98, !noalias !95
  store <16 x float> %i.cl, ptr %i.ch, align 4, !tbaa !46, !alias.scope !98, !noalias !95
  store <16 x float> %i.cm, ptr %i.ci, align 4, !tbaa !46, !alias.scope !98, !noalias !95
  store <16 x float> %i.cn, ptr %i.cj, align 4, !tbaa !46, !alias.scope !98, !noalias !95
  %index.next371 = add nuw i64 %index360, 64      ; 2 uses
  %i.co = icmp eq i64 %index.next371, %n.vec358
  br i1 %i.co, label %middle.block372, label %vector.body359, !llvm.loop !100

middle.block372:                                  ; preds = %vector.body359
  %cmp.n373 = icmp eq i64 %i.bs, %n.vec358
  br i1 %cmp.n373, label %.loopexit, label %vec.epilog.iter.check379

vec.epilog.iter.check379:                         ; preds = %middle.block372
  %min.epilog.iters.check380 = icmp eq i64 %i.bx, 0
  br i1 %min.epilog.iters.check380, label %.lr.ph253.preheader, label %vec.epilog.ph381, !prof !61

vec.epilog.ph381:                                 ; preds = %vector.main.loop.iter.check355, %vec.epilog.iter.check379
  %vec.epilog.resume.val374 = phi i64 [ %n.vec358, %vec.epilog.iter.check379 ], [ 0, %vector.main.loop.iter.check355 ]
  %n.vec382 = and i64 %i.bs, 8589934584           ; 4 uses
  %i.cp = trunc i64 %n.vec382 to i32
  %i.cq = add i32 %.066.lcssa, %i.cp
  %i.cr = shl nuw nsw i64 %n.vec382, 2            ; 2 uses
  %i.cs = getelementptr i8, ptr %.068.lcssa, i64 %i.cr
  %i.ct = getelementptr i8, ptr %.070.lcssa, i64 %i.cr
  br label %vec.epilog.vector.body383

vec.epilog.vector.body383:                        ; preds = %vec.epilog.vector.body383, %vec.epilog.ph381
  %index384 = phi i64 [ %vec.epilog.resume.val374, %vec.epilog.ph381 ], [ %index.next389, %vec.epilog.vector.body383 ] ; 2 uses
  %i.cu = shl i64 %index384, 2                    ; 2 uses
  %next.gep385 = getelementptr i8, ptr %.068.lcssa, i64 %i.cu ; 2 uses
  %next.gep386 = getelementptr i8, ptr %.070.lcssa, i64 %i.cu
  %wide.load387 = load <8 x float>, ptr %next.gep386, align 4, !tbaa !46, !alias.scope !95
  %wide.load388 = load <8 x float>, ptr %next.gep385, align 4, !tbaa !46, !alias.scope !98, !noalias !95
  %i.cv = fadd fast <8 x float> %wide.load388, %wide.load387
  store <8 x float> %i.cv, ptr %next.gep385, align 4, !tbaa !46, !alias.scope !98, !noalias !95
  %index.next389 = add nuw i64 %index384, 8       ; 2 uses
  %i.cw = icmp eq i64 %index.next389, %n.vec382
  br i1 %i.cw, label %vec.epilog.middle.block390, label %vec.epilog.vector.body383, !llvm.loop !101

vec.epilog.middle.block390:                       ; preds = %vec.epilog.vector.body383
  %cmp.n391 = icmp eq i64 %i.bs, %n.vec382
  br i1 %cmp.n391, label %.loopexit, label %.lr.ph253.preheader

.lr.ph253.preheader:                              ; preds = %vector.memcheck346, %iter.check377, %vec.epilog.iter.check379, %vec.epilog.middle.block390
  %.167252.ph = phi i32 [ %.066.lcssa, %iter.check377 ], [ %.066.lcssa, %vector.memcheck346 ], [ %i.bz, %vec.epilog.iter.check379 ], [ %i.cq, %vec.epilog.middle.block390 ] ; 4 uses
  %.169251.ph = phi ptr [ %.068.lcssa, %iter.check377 ], [ %.068.lcssa, %vector.memcheck346 ], [ %i.cb, %vec.epilog.iter.check379 ], [ %i.cs, %vec.epilog.middle.block390 ] ; 2 uses
  %.171250.ph = phi ptr [ %.070.lcssa, %iter.check377 ], [ %.070.lcssa, %vector.memcheck346 ], [ %i.cc, %vec.epilog.iter.check379 ], [ %i.ct, %vec.epilog.middle.block390 ] ; 2 uses
  %i.cx = sub i32 %.lcssa, %.167252.ph
  %xtraiter = and i32 %i.cx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph253.prol.loopexit, label %.lr.ph253.prol

.lr.ph253.prol:                                   ; preds = %.lr.ph253.preheader, %.lr.ph253.prol
  %.167252.prol = phi i32 [ %i.dd, %.lr.ph253.prol ], [ %.167252.ph, %.lr.ph253.preheader ]
  %.169251.prol = phi ptr [ %i.dc, %.lr.ph253.prol ], [ %.169251.ph, %.lr.ph253.preheader ] ; 3 uses
  %.171250.prol = phi ptr [ %i.db, %.lr.ph253.prol ], [ %.171250.ph, %.lr.ph253.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph253.prol ], [ 0, %.lr.ph253.preheader ]
  %i.cy = load float, ptr %.171250.prol, align 4, !tbaa !46
  %i.cz = load float, ptr %.169251.prol, align 4, !tbaa !46
  %i.da = fadd fast float %i.cz, %i.cy
  store float %i.da, ptr %.169251.prol, align 4, !tbaa !46
  %i.db = getelementptr inbounds nuw i8, ptr %.171250.prol, i64 4 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.169251.prol, i64 4 ; 2 uses
  %i.dd = add nuw nsw i32 %.167252.prol, 1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph253.prol.loopexit, label %.lr.ph253.prol, !llvm.loop !102

.lr.ph253.prol.loopexit:                          ; preds = %.lr.ph253.prol, %.lr.ph253.preheader
  %.167252.unr = phi i32 [ %.167252.ph, %.lr.ph253.preheader ], [ %i.dd, %.lr.ph253.prol ]
  %.169251.unr = phi ptr [ %.169251.ph, %.lr.ph253.preheader ], [ %i.dc, %.lr.ph253.prol ]
  %.171250.unr = phi ptr [ %.171250.ph, %.lr.ph253.preheader ], [ %i.db, %.lr.ph253.prol ]
  %i.de = sub i32 %.167252.ph, %.lcssa
  %i.df = icmp ugt i32 %i.de, -4
  br i1 %i.df, label %.loopexit, label %.lr.ph253

.lr.ph:                                           ; preds = %.noexc79, %.lr.ph
  %.066246 = phi i32 [ %i.dl, %.lr.ph ], [ 0, %.noexc79 ]
  %.068245 = phi ptr [ %i.dk, %.lr.ph ], [ %i.bl, %.noexc79 ] ; 3 uses
  %.070244 = phi ptr [ %i.dj, %.lr.ph ], [ %i.bf, %.noexc79 ] ; 2 uses
  %i.dg = load <8 x float>, ptr %.070244, align 1, !tbaa !54
  %i.dh = load <8 x float>, ptr %.068245, align 1, !tbaa !54
  %i.di = fadd fast <8 x float> %i.dh, %i.dg
  store <8 x float> %i.di, ptr %.068245, align 1, !tbaa !54
  %i.dj = getelementptr inbounds nuw i8, ptr %.070244, i64 32 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.068245, i64 32 ; 2 uses
  %i.dl = add nuw nsw i32 %.066246, 8             ; 3 uses
  %i.dm = or disjoint i32 %i.dl, 7
  %i.dn = load i32, ptr %6, align 4, !tbaa !17    ; 2 uses
  %i.do = icmp slt i32 %i.dm, %i.dn
  br i1 %i.do, label %.lr.ph, label %.preheader, !llvm.loop !103

.lr.ph253:                                        ; preds = %.lr.ph253.prol.loopexit, %.lr.ph253
  %.167252 = phi i32 [ %i.ej, %.lr.ph253 ], [ %.167252.unr, %.lr.ph253.prol.loopexit ]
  %.169251 = phi ptr [ %i.ei, %.lr.ph253 ], [ %.169251.unr, %.lr.ph253.prol.loopexit ] ; 6 uses
  %.171250 = phi ptr [ %i.eh, %.lr.ph253 ], [ %.171250.unr, %.lr.ph253.prol.loopexit ] ; 5 uses
  %i.dp = load float, ptr %.171250, align 4, !tbaa !46
  %i.dq = load float, ptr %.169251, align 4, !tbaa !46
  %i.dr = fadd fast float %i.dq, %i.dp
  store float %i.dr, ptr %.169251, align 4, !tbaa !46
  %i.ds = getelementptr inbounds nuw i8, ptr %.171250, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %.169251, i64 4 ; 2 uses
  %i.du = load float, ptr %i.ds, align 4, !tbaa !46
  %i.dv = load float, ptr %i.dt, align 4, !tbaa !46
  %i.dw = fadd fast float %i.dv, %i.du
  store float %i.dw, ptr %i.dt, align 4, !tbaa !46
  %i.dx = getelementptr inbounds nuw i8, ptr %.171250, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %.169251, i64 8 ; 2 uses
  %i.dz = load float, ptr %i.dx, align 4, !tbaa !46
  %i.ea = load float, ptr %i.dy, align 4, !tbaa !46
  %i.eb = fadd fast float %i.ea, %i.dz
  store float %i.eb, ptr %i.dy, align 4, !tbaa !46
  %i.ec = getelementptr inbounds nuw i8, ptr %.171250, i64 12
  %i.ed = getelementptr inbounds nuw i8, ptr %.169251, i64 12 ; 2 uses
  %i.ee = load float, ptr %i.ec, align 4, !tbaa !46
  %i.ef = load float, ptr %i.ed, align 4, !tbaa !46
  %i.eg = fadd fast float %i.ef, %i.ee
  store float %i.eg, ptr %i.ed, align 4, !tbaa !46
  %i.eh = getelementptr inbounds nuw i8, ptr %.171250, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %.169251, i64 16
  %i.ej = add nuw nsw i32 %.167252, 4             ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.ej, %.lcssa
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph253, !llvm.loop !104

.loopexit:                                        ; preds = %.lr.ph253.prol.loopexit, %.lr.ph253, %middle.block372, %vec.epilog.middle.block390, %.preheader, %.lr.ph256.a, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ek = load i32, ptr %i.l, align 4, !tbaa !48
  %i.el = sdiv i32 %i.ek, 2
  %i.em = add nsw i32 %i.el, %indvars283
  %.not73.not = icmp sgt i32 %i.em, %10
  br i1 %.not73.not, label %.lr.ph256.a, label %.noexc75, !llvm.loop !105

.preheader242:                                    ; preds = %.lr.ph260, %.noexc75
  %.063.lcssa = phi ptr [ %i.af, %.noexc75 ], [ %i.ja, %.lr.ph260 ] ; 10 uses
  %.061.lcssa = phi ptr [ %i.al, %.noexc75 ], [ %i.iz, %.lr.ph260 ] ; 8 uses
  %.0.lcssa = phi i32 [ 0, %.noexc75 ], [ %i.jb, %.lr.ph260 ] ; 7 uses
  %.lcssa243 = phi i32 [ %i.aw, %.noexc75 ], [ %i.jd, %.lr.ph260 ] ; 6 uses
  %i.en = icmp slt i32 %.0.lcssa, %.lcssa243
  br i1 %i.en, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader242
  %i.eo = xor i32 %.0.lcssa, -1
  %i.ep = add i32 %.lcssa243, %i.eo               ; 3 uses
  %i.eq = zext i32 %i.ep to i64
  %i.er = add nuw nsw i64 %i.eq, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ep, 3
  br i1 %min.iters.check, label %.lr.ph268.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.063.lcssa, i64 4
  %i.es = xor i32 %.0.lcssa, -1
  %i.et = add i32 %.lcssa243, %i.es
  %i.eu = zext i32 %i.et to i64
  %i.ev = shl nuw nsw i64 %i.eu, 2                ; 2 uses
  %scevgep308 = getelementptr i8, ptr %scevgep, i64 %i.ev ; 3 uses
  %scevgep311 = getelementptr i8, ptr %.061.lcssa, i64 4
  %scevgep312 = getelementptr i8, ptr %scevgep311, i64 %i.ev
  %bound0 = icmp ult ptr %.063.lcssa, %scevgep309
  %bound1 = icmp ult ptr %i.t, %scevgep308
  %found.conflict = and i1 %bound0, %bound1
  %bound0313 = icmp ult ptr %.063.lcssa, %scevgep310
  %bound1314 = icmp ult ptr %8, %scevgep308
  %found.conflict315 = and i1 %bound0313, %bound1314
  %conflict.rdx = or i1 %found.conflict, %found.conflict315
  %bound0316 = icmp ult ptr %.063.lcssa, %scevgep312
  %bound1317 = icmp ult ptr %.061.lcssa, %scevgep308
  %found.conflict318 = and i1 %bound0316, %bound1317
  %conflict.rdx319 = or i1 %conflict.rdx, %found.conflict318
  br i1 %conflict.rdx319, label %.lr.ph268.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check320 = icmp ult i32 %i.ep, 15
  br i1 %min.iters.check320, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ew = and i64 %i.er, 12
  %n.vec = and i64 %i.er, 8589934576              ; 5 uses
  %i.ex = trunc i64 %n.vec to i32
  %i.ey = add i32 %.0.lcssa, %i.ex
  %i.ez = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.fa = getelementptr i8, ptr %.061.lcssa, i64 %i.ez
  %i.fb = getelementptr i8, ptr %.063.lcssa, i64 %i.ez
  %i.fc = load float, ptr %i.s, align 8, !tbaa !87, !alias.scope !106
  %broadcast.splatinsert325 = insertelement <16 x float> poison, float %i.fc, i64 0
  %broadcast.splat326 = shufflevector <16 x float> %broadcast.splatinsert325, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fd = load float, ptr %8, align 4, !tbaa !46, !alias.scope !109
  %broadcast.splatinsert323 = insertelement <16 x float> poison, float %i.fd, i64 0
  %broadcast.splat324 = shufflevector <16 x float> %broadcast.splatinsert323, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fe = load float, ptr %i.t, align 4, !tbaa !88, !alias.scope !106
  %.scalar = fneg fast float %i.fe
  %i.ff = insertelement <16 x float> poison, float %.scalar, i64 0
  %i.fg = shufflevector <16 x float> %i.ff, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fh = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.061.lcssa, i64 %i.fh
  %next.gep321 = getelementptr i8, ptr %.063.lcssa, i64 %i.fh ; 2 uses
  %wide.load = load <16 x float>, ptr %next.gep321, align 4, !tbaa !46, !alias.scope !111, !noalias !113
  %wide.load322 = load <16 x float>, ptr %next.gep, align 4, !tbaa !46, !alias.scope !115
  %i.fi = fmul fast <16 x float> %wide.load322, %broadcast.splat324
  %i.fj = fadd fast <16 x float> %i.fi, %broadcast.splat326
  %i.fk = call fast <16 x float> @llvm.pow.v16f32(<16 x float> %i.fj, <16 x float> %i.fg)
  %i.fl = fmul fast <16 x float> %i.fk, %wide.load
  store <16 x float> %i.fl, ptr %next.gep321, align 4, !tbaa !46, !alias.scope !111, !noalias !113
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fm = icmp eq i64 %index.next, %n.vec
  br i1 %i.fm, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.er, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ew, 0
  br i1 %min.epilog.iters.check, label %.lr.ph268.preheader, label %vec.epilog.ph, !prof !117

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec329 = and i64 %i.er, 8589934588           ; 4 uses
  %i.fn = trunc i64 %n.vec329 to i32
  %i.fo = add i32 %.0.lcssa, %i.fn
  %i.fp = shl nuw nsw i64 %n.vec329, 2            ; 2 uses
  %i.fq = getelementptr i8, ptr %.061.lcssa, i64 %i.fp
  %i.fr = getelementptr i8, ptr %.063.lcssa, i64 %i.fp
  %i.fs = load float, ptr %i.s, align 8, !tbaa !87, !alias.scope !106
  %broadcast.splatinsert339 = insertelement <4 x float> poison, float %i.fs, i64 0
  %broadcast.splat340 = shufflevector <4 x float> %broadcast.splatinsert339, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ft = load float, ptr %8, align 4, !tbaa !46, !alias.scope !109
  %broadcast.splatinsert337 = insertelement <4 x float> poison, float %i.ft, i64 0
  %broadcast.splat338 = shufflevector <4 x float> %broadcast.splatinsert337, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fu = load float, ptr %i.t, align 4, !tbaa !88, !alias.scope !106
  %.scalar395 = fneg fast float %i.fu
  %i.fv = insertelement <4 x float> poison, float %.scalar395, i64 0
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index332 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next341, %vec.epilog.vector.body ] ; 2 uses
  %i.fx = shl i64 %index332, 2                    ; 2 uses
  %next.gep333 = getelementptr i8, ptr %.061.lcssa, i64 %i.fx
  %next.gep334 = getelementptr i8, ptr %.063.lcssa, i64 %i.fx ; 2 uses
  %wide.load335 = load <4 x float>, ptr %next.gep334, align 4, !tbaa !46, !alias.scope !111, !noalias !113
  %wide.load336 = load <4 x float>, ptr %next.gep333, align 4, !tbaa !46, !alias.scope !115
  %i.fy = fmul fast <4 x float> %wide.load336, %broadcast.splat338
  %i.fz = fadd fast <4 x float> %i.fy, %broadcast.splat340
  %i.ga = call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.fz, <4 x float> %i.fw)
  %i.gb = fmul fast <4 x float> %i.ga, %wide.load335
  store <4 x float> %i.gb, ptr %next.gep334, align 4, !tbaa !46, !alias.scope !111, !noalias !113
  %index.next341 = add nuw i64 %index332, 4       ; 2 uses
  %i.gc = icmp eq i64 %index.next341, %n.vec329
  br i1 %i.gc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !118

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n342 = icmp eq i64 %i.er, %n.vec329
  br i1 %cmp.n342, label %._crit_edge, label %.lr.ph268.preheader

.lr.ph268.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1267.ph = phi i32 [ %.0.lcssa, %iter.check ], [ %.0.lcssa, %vector.memcheck ], [ %i.ey, %vec.epilog.iter.check ], [ %i.fo, %vec.epilog.middle.block ] ; 4 uses
  %.162266.ph = phi ptr [ %.061.lcssa, %iter.check ], [ %.061.lcssa, %vector.memcheck ], [ %i.fa, %vec.epilog.iter.check ], [ %i.fq, %vec.epilog.middle.block ] ; 3 uses
  %.164265.ph = phi ptr [ %.063.lcssa, %iter.check ], [ %.063.lcssa, %vector.memcheck ], [ %i.fb, %vec.epilog.iter.check ], [ %i.fr, %vec.epilog.middle.block ] ; 4 uses
  %i.gd = sub i32 %.lcssa243, %.1267.ph
  %.neg407 = add i32 %.1267.ph, 1
  %xtraiter404 = and i32 %i.gd, 1
  %lcmp.mod405.not = icmp eq i32 %xtraiter404, 0
  br i1 %lcmp.mod405.not, label %.lr.ph268.prol.loopexit, label %.lr.ph268.prol

.lr.ph268.prol:                                   ; preds = %.lr.ph268.preheader
  %i.ge = load float, ptr %.164265.ph, align 4, !tbaa !46
  %i.gf = load float, ptr %i.s, align 8, !tbaa !87
  %i.gg = load float, ptr %8, align 4, !tbaa !46
  %i.gh = load float, ptr %.162266.ph, align 4, !tbaa !46
  %i.gi = fmul fast float %i.gh, %i.gg
  %i.gj = fadd fast float %i.gi, %i.gf
  %i.gk = load float, ptr %i.t, align 4, !tbaa !88
  %i.gl = fneg fast float %i.gk
  %i.gm = call fast float @llvm.pow.f32(float %i.gj, float %i.gl)
  %i.gn = fmul fast float %i.gm, %i.ge
  store float %i.gn, ptr %.164265.ph, align 4, !tbaa !46
  %i.go = getelementptr inbounds nuw i8, ptr %.162266.ph, i64 4
  %i.gp = getelementptr inbounds nuw i8, ptr %.164265.ph, i64 4
  %i.gq = add nuw nsw i32 %.1267.ph, 1
  br label %.lr.ph268.prol.loopexit

.lr.ph268.prol.loopexit:                          ; preds = %.lr.ph268.prol, %.lr.ph268.preheader
  %.1267.unr = phi i32 [ %.1267.ph, %.lr.ph268.preheader ], [ %i.gq, %.lr.ph268.prol ]
  %.162266.unr = phi ptr [ %.162266.ph, %.lr.ph268.preheader ], [ %i.go, %.lr.ph268.prol ]
  %.164265.unr = phi ptr [ %.164265.ph, %.lr.ph268.preheader ], [ %i.gp, %.lr.ph268.prol ]
  %i.gr = icmp eq i32 %.lcssa243, %.neg407
  br i1 %i.gr, label %._crit_edge, label %.lr.ph268

.lr.ph260:                                        ; preds = %.noexc75, %.lr.ph260
  %.0259 = phi i32 [ %i.jb, %.lr.ph260 ], [ 0, %.noexc75 ]
  %.061258 = phi ptr [ %i.iz, %.lr.ph260 ], [ %i.al, %.noexc75 ] ; 2 uses
  %.063257 = phi ptr [ %i.ja, %.lr.ph260 ], [ %i.af, %.noexc75 ] ; 3 uses
  %i.gs = load <8 x float>, ptr %.063257, align 1, !tbaa !54
  %i.gt = load <8 x float>, ptr %.061258, align 1, !tbaa !54
  %i.gu = fmul fast <8 x float> %i.gt, %i.ar
  %i.gv = fadd fast <8 x float> %i.gu, %i.ao
  %i.gw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gv, <8 x float> splat (float f0x00800000))
  %i.gx = bitcast <8 x float> %i.gw to <8 x i32>  ; 2 uses
  %i.gy = lshr <8 x i32> %i.gx, splat (i32 23)
  %i.gz = and <8 x i32> %i.gx, splat (i32 -2139095041)
  %i.ha = or disjoint <8 x i32> %i.gz, splat (i32 1056964608)
  %i.hb = bitcast <8 x i32> %i.ha to <8 x float>  ; 3 uses
  %i.hc = add nsw <8 x i32> %i.gy, splat (i32 -127)
  %i.hd = sitofp fast <8 x i32> %i.hc to <8 x float> ; 2 uses
  %i.he = fadd fast <8 x float> %i.hd, splat (float 1.000000e+00)
  %i.hf = fcmp fast olt <8 x float> %i.hb, splat (float f0x3F3504F3) ; 2 uses
  %i.hg = select <8 x i1> %i.hf, <8 x float> %i.hb, <8 x float> zeroinitializer
  %i.hh = fadd fast <8 x float> %i.hb, splat (float -1.000000e+00)
  %i.hi = select fast <8 x i1> %i.hf, <8 x float> %i.hd, <8 x float> %i.he ; 2 uses
  %i.hj = fadd fast <8 x float> %i.hh, %i.hg      ; 12 uses
  %i.hk = fmul fast <8 x float> %i.hj, %i.hj      ; 2 uses
  %i.hl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hj, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.hm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hl, <8 x float> nofpclass(nan inf) %i.hj, <8 x float> splat (float f0x3DEF251A))
  %i.hn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hm, <8 x float> nofpclass(nan inf) %i.hj, <8 x float> splat (float f0xBDFE5D4F))
  %i.ho = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hn, <8 x float> nofpclass(nan inf) %i.hj, <8 x float> splat (float f0x3E11E9BF))
  %i.hp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ho, <8 x float> nofpclass(nan inf) %i.hj, <8 x float> splat (float f0xBE2AAE50))
  %i.hq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hp, <8 x float> nofpclass(nan inf) %i.hj, <8 x float> splat (float f0x3E4CCEAC))
  %i.hr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hq, <8 x float> nofpclass(nan inf) %i.hj, <8 x float> splat (float f0xBE7FFFFC))
  %i.hs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hr, <8 x float> nofpclass(nan inf) %i.hj, <8 x float> splat (float f0x3EAAAAAA))
  %i.ht = fmul fast <8 x float> %i.hk, %i.hj
  %i.hu = fmul fast <8 x float> %i.ht, %i.hs
  %i.hv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hi, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.hu)
  %i.hw = fneg fast <8 x float> %i.hk
  %i.hx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hw, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.hv)
  %i.hy = fadd fast <8 x float> %i.hx, %i.hj
  %i.hz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hi, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.hy)
end_hunk_0
