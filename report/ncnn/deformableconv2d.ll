Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deformableconv2d?download=true
inline.NumInlined: 7
inline.NumDeleted: 5
begin_hunk_0_@_ZN4ncnn16DeformableConv2DC2Ev:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.i, align 1, !tbaa !67
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.b, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.c, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.d, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.e, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.f, i8 0, i64 28, i1 false)
  ret void
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #9 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

declare void @_ZNK4ncnn9ParamDict3getEiRKNS_3MatE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn16DeformableConv2D7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %14) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !52     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !52
  %i.h = load i32, ptr %0, align 4, !tbaa !52     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !52
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !52
  %i.k = load i32, ptr %i.a, align 4, !tbaa !52   ; 2 uses
  %.not453 = icmp sgt i32 %i.k, %i.j
  br i1 %.not453, label %._crit_edge455.split, label %.preheader424.lr.ph

.preheader424.lr.ph:                              ; preds = %bb.b
  %i.l = load i32, ptr %3, align 4, !tbaa !52     ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 252
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 220
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 260
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 264 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 16
  br i1 %i.m, label %.preheader424.lr.ph.split, label %._crit_edge455.split

.preheader424.lr.ph.split:                        ; preds = %.preheader424.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 236
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 244
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !45
  %i.ah = load i32, ptr %i.ae, align 4, !tbaa !44
  %i.ai = load i32, ptr %i.ad, align 8, !tbaa !37 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.preheader424.lr.ph.split.split, label %._crit_edge455.split

.preheader424.lr.ph.split.split:                  ; preds = %.preheader424.lr.ph.split
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.an = load i32, ptr %i.am, align 8, !tbaa !43
  %i.ao = load i32, ptr %i.n, align 4, !tbaa !46
  %.not170 = icmp eq i32 %i.ao, 0
  %i.ap = load i32, ptr %i.o, align 8, !tbaa !39  ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  %i.ar = load i32, ptr %i.y, align 4, !tbaa !48
  %i.as = load i32, ptr %i.aa, align 4, !tbaa !87, !noalias !88
  %i.at = load ptr, ptr %14, align 8, !tbaa !20, !noalias !88
  %i.au = load i64, ptr %i.ab, align 8, !tbaa !21, !noalias !88
  %i.av = load i64, ptr %i.ac, align 8, !tbaa !50, !noalias !88 ; 2 uses
  %factor.op.mul = mul i64 %i.au, %i.av
  %i.aw = sext i32 %i.as to i64
  %factor.op.mul457 = mul i64 %i.av, %i.aw
  %i.ax = sext i32 %i.k to i64
  %i.ay = add nsw i32 %i.j, 1
  %wide.trip.count480 = zext nneg i32 %i.l to i64
  %wide.trip.count475 = zext nneg i32 %i.ai to i64
  %wide.trip.count470 = zext nneg i32 %i.ap to i64
  %i.az = zext nneg i32 %i.ap to i64
  br label %.preheader424

.preheader424:                                    ; preds = %.preheader424.lr.ph.split.split, %._crit_edge452
  %indvars.iv482 = phi i64 [ %i.ax, %.preheader424.lr.ph.split.split ], [ %indvars.iv.next483, %._crit_edge452 ] ; 5 uses
  %i.ba = trunc i64 %indvars.iv482 to i32
  %i.bb = mul i32 %i.an, %i.ba
  %i.bc = sub i32 %i.bb, %i.ag
  %.reass458 = mul i64 %factor.op.mul457, %indvars.iv482
  %invariant.gep = getelementptr i8, ptr %i.at, i64 %.reass458
  br label %.lr.ph

._crit_edge452:                                   ; preds = %._crit_edge
  %indvars.iv.next483 = add nsw i64 %indvars.iv482, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next483 to i32
  %exitcond485.not = icmp eq i32 %i.ay, %lftr.wideiv
  br i1 %exitcond485.not, label %._crit_edge455.split, label %.preheader424

.lr.ph:                                           ; preds = %.preheader424, %._crit_edge
  %indvars.iv477 = phi i64 [ 0, %.preheader424 ], [ %indvars.iv.next478, %._crit_edge ] ; 5 uses
  %i.bd = trunc i64 %indvars.iv477 to i32
  %i.be = mul i32 %i.al, %i.bd
  %i.bf = sub i32 %i.be, %i.ah
  %invariant.gep448 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv477
  br label %bb.c

._crit_edge:                                      ; preds = %.noexc242
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 1 ; 2 uses
  %exitcond481.not = icmp eq i64 %indvars.iv.next478, %wide.trip.count480
  br i1 %exitcond481.not, label %._crit_edge452, label %.lr.ph, !llvm.loop !70

bb.c:                                             ; preds = %.lr.ph, %.noexc242
  %indvars.iv472 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next473, %.noexc242 ] ; 4 uses
  br i1 %.not170, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bg = load ptr, ptr %5, align 8, !tbaa !57
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv472
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !91
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0164 = phi nsz float [ %i.bi, %bb.d ], [ 0.000000e+00, %bb.c ] ; 3 uses
  br i1 %i.aq, label %.preheader.lr.ph, label %._crit_edge439

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.bj = load i32, ptr %i.p, align 4, !tbaa !38  ; 4 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.preheader.lr.ph.split.us, label %._crit_edge439

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.bl = load i32, ptr %i.q, align 4, !tbaa !87, !noalias !92
  %i.bm = load ptr, ptr %6, align 8, !tbaa !20, !noalias !92
  %i.bn = load i64, ptr %i.r, align 8, !tbaa !21, !noalias !92
  %i.bo = load i64, ptr %i.s, align 8, !tbaa !50, !noalias !92 ; 2 uses
  %factor.op.mul.us = mul i64 %i.bn, %i.bo        ; 2 uses
  %i.bp = sext i32 %i.bl to i64
  %i.bq = mul nsw i64 %indvars.iv482, %i.bp
  %i.br = mul i64 %i.bq, %i.bo
  %invariant.gep.us = getelementptr i8, ptr %i.bm, i64 %i.br
  %invariant.gep432.us = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %indvars.iv477 ; 2 uses
  %i.bs = load i8, ptr %7, align 1, !tbaa !55, !range !93, !noundef !94
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = load i32, ptr %i.t, align 8, !tbaa !41
  %i.bv = load i32, ptr %i.u, align 4, !tbaa !40
  %i.bw = load i32, ptr %11, align 4, !tbaa !52   ; 3 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  %i.by = zext nneg i32 %i.bj to i64              ; 2 uses
  %wide.trip.count465 = zext nneg i32 %i.bj to i64
  %i.bz = zext nneg i32 %i.bj to i64
  %i.ca = trunc nuw nsw i64 %indvars.iv472 to i32
  %i.cb = mul nuw nsw i32 %i.bw, %i.ca
  %15 = zext nneg i32 %i.cb to i64
  %wide.trip.count = zext nneg i32 %i.bw to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge431.us, %.preheader.lr.ph.split.us
  %indvars.iv467 = phi i64 [ %indvars.iv.next468, %._crit_edge431.us ], [ 0, %.preheader.lr.ph.split.us ] ; 5 uses
  %.1437.us = phi float [ %.3.lcssa.us, %._crit_edge431.us ], [ %.0164, %.preheader.lr.ph.split.us ]
  %i.cc = mul nuw nsw i64 %indvars.iv467, %i.by
  %i.cd = trunc i64 %indvars.iv467 to i32
  %i.ce = mul i32 %i.bu, %i.cd
  %i.cf = add i32 %i.ce, %i.bc
  %i.cg = sitofp fast i32 %i.cf to float
  %i.ch = mul nuw nsw i64 %indvars.iv467, %i.bz
  br label %.noexc240.us

.noexc240.us:                                     ; preds = %.preheader.us, %._crit_edge.us
  %indvars.iv462 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next463, %._crit_edge.us ] ; 5 uses
  %.2428.us = phi float [ %.1437.us, %.preheader.us ], [ %.3.lcssa.us, %._crit_edge.us ] ; 5 uses
  %i.ci = add nuw nsw i64 %i.cc, %indvars.iv462
  %i.cj = shl nuw nsw i64 %i.ci, 1                ; 2 uses
  %.reass.us = mul i64 %factor.op.mul.us, %i.cj
  %gep433.us = getelementptr i8, ptr %invariant.gep432.us, i64 %.reass.us
  %i.ck = load float, ptr %gep433.us, align 4, !tbaa !91
  %i.cl = or disjoint i64 %i.cj, 1
  %i.cm = mul i64 %factor.op.mul.us, %i.cl
  %gep436.us = getelementptr i8, ptr %invariant.gep432.us, i64 %i.cm
  %i.cn = load float, ptr %gep436.us, align 4, !tbaa !91
  br i1 %i.bt, label %.noexc236.us, label %.critedge.us

.noexc236.us:                                     ; preds = %.noexc240.us
  %i.co = load ptr, ptr %8, align 8, !tbaa !54    ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 144
  %i.cq = add nuw nsw i64 %i.ch, %indvars.iv462
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 188
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !87, !noalias !95
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !20, !noalias !95
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 208
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !21, !noalias !95
  %i.cw = mul i64 %i.cv, %i.cq
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 160
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !50, !noalias !95 ; 2 uses
  %i.cz = mul i64 %i.cw, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cz
  %i.db = sext i32 %i.cs to i64
  %i.dc = mul nsw i64 %indvars.iv482, %i.db
  %i.dd = mul i64 %i.dc, %i.cy
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dd
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv477
  %i.dg = load float, ptr %i.df, align 4, !tbaa !91
  br label %.critedge.us

.critedge.us:                                     ; preds = %.noexc236.us, %.noexc240.us
  %i.dh = phi float [ %i.dg, %.noexc236.us ], [ 1.000000e+00, %.noexc240.us ]
  %i.di = fadd fast float %i.ck, %i.cg            ; 4 uses
  %i.dj = trunc i64 %indvars.iv462 to i32
  %i.dk = mul i32 %i.bv, %i.dj
  %i.dl = add i32 %i.dk, %i.bf
  %i.dm = sitofp fast i32 %i.dl to float
  %i.dn = fadd fast float %i.cn, %i.dm            ; 4 uses
  %i.do = fcmp fast ogt float %i.di, -1.000000e+00
  %i.dp = fcmp fast ogt float %i.dn, -1.000000e+00
  %or.cond.us = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %or.cond.us, label %bb.f, label %._crit_edge.us

bb.f:                                             ; preds = %.critedge.us
  %i.dq = load i32, ptr %9, align 4, !tbaa !52    ; 2 uses
  %i.dr = sitofp fast i32 %i.dq to float
  %i.ds = fcmp fast olt float %i.di, %i.dr
  br i1 %i.ds, label %bb.g, label %._crit_edge.us

bb.g:                                             ; preds = %bb.f
  %i.dt = load i32, ptr %10, align 4, !tbaa !52   ; 3 uses
  %i.du = sitofp fast i32 %i.dt to float
  %i.dv = fcmp fast olt float %i.dn, %i.du
  br i1 %i.dv, label %.thread394.us.thread, label %._crit_edge.us

.thread394.us.thread:                             ; preds = %bb.g
  %i.dw = call fast float @llvm.floor.f32(float %i.di)
  %i.dx = fptosi float %i.dw to i32               ; 5 uses
  %i.dy = call fast float @llvm.floor.f32(float %i.dn)
  %i.dz = fptosi float %i.dy to i32               ; 6 uses
  %i.ea = add nsw i32 %i.dx, 1
  %i.eb = add nsw i32 %i.dz, 1
  %i.ec = sitofp fast i32 %i.dx to float
  %i.ed = fsub fast float %i.di, %i.ec            ; 3 uses
  %i.ee = sitofp fast i32 %i.dz to float
  %i.ef = fsub fast float %i.dn, %i.ee            ; 3 uses
  %i.eg = fsub fast float 1.000000e+00, %i.ed     ; 2 uses
  %i.eh = fsub fast float 1.000000e+00, %i.ef     ; 2 uses
  %i.ei = icmp sgt i32 %i.dx, -1                  ; 2 uses
  %i.ej = icmp sgt i32 %i.dz, -1                  ; 2 uses
  %i.ek = select i1 %i.ei, i1 %i.ej, i1 false
  %i.el = add nsw i32 %i.dt, -1
  %i.em = icmp sgt i32 %i.el, %i.dz
  %i.en = select i1 %i.ei, i1 %i.em, i1 false
  %i.eo = add nsw i32 %i.dq, -1
  %i.ep = icmp sgt i32 %i.eo, %i.dx               ; 2 uses
  %i.eq = select i1 %i.ep, i1 %i.ej, i1 false
  %i.er = add nsw i32 %i.dt, -1
  %i.es = icmp sgt i32 %i.er, %i.dz
  %i.et = select i1 %i.ep, i1 %i.es, i1 false
  %i.eu = fmul fast float %i.eh, %i.eg
  %i.ev = fmul fast float %i.eg, %i.ef
  %i.ew = fmul fast float %i.eh, %i.ed
  %i.ex = fmul fast float %i.ef, %i.ed
  %i.ey = sext i32 %i.dz to i64                   ; 2 uses
  %i.ez = sext i32 %i.eb to i64                   ; 2 uses
  %i.fa = sext i32 %i.dx to i64                   ; 2 uses
  %i.fb = sext i32 %i.ea to i64                   ; 2 uses
  br i1 %i.bx, label %.lr.ph.split.us.us.preheader, label %._crit_edge.us

.lr.ph.split.us.us.preheader:                     ; preds = %.thread394.us.thread
  %i.fc = load ptr, ptr %13, align 8, !tbaa !57
  %invariant.gep546 = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv462
  br label %.lr.ph.split.us.us

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %.critedge178.us.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us.us.preheader ], [ %indvars.iv.next, %.critedge178.us.us ] ; 6 uses
  %.3425.us.us = phi float [ %.2428.us, %.lr.ph.split.us.us.preheader ], [ %i.hv, %.critedge178.us.us ]
  br i1 %i.ek, label %.noexc234.us.us, label %.critedge172.us.us

.noexc234.us.us:                                  ; preds = %.lr.ph.split.us.us
  %i.fd = load i32, ptr %i.v, align 4, !tbaa !87, !noalias !96
  %i.fe = load ptr, ptr %12, align 8, !tbaa !20, !noalias !96
  %i.ff = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !96
  %i.fg = mul i64 %i.ff, %indvars.iv
  %i.fh = load i64, ptr %i.x, align 8, !tbaa !50, !noalias !96 ; 2 uses
  %i.fi = mul i64 %i.fg, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fi
  %i.fk = sext i32 %i.fd to i64
  %i.fl = mul nsw i64 %i.fa, %i.fk
  %i.fm = mul i64 %i.fl, %i.fh
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fm
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.ey
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !91
  %i.fq = fmul fast float %i.fp, %i.eu
  br label %.critedge172.us.us

.critedge172.us.us:                               ; preds = %.noexc234.us.us, %.lr.ph.split.us.us
  %i.fr = phi float [ %i.fq, %.noexc234.us.us ], [ 0.000000e+00, %.lr.ph.split.us.us ] ; 2 uses
  br i1 %i.en, label %.noexc232.us.us, label %.critedge174.us.us

.noexc232.us.us:                                  ; preds = %.critedge172.us.us
  %i.fs = load i32, ptr %i.v, align 4, !tbaa !87, !noalias !97
  %i.ft = load ptr, ptr %12, align 8, !tbaa !20, !noalias !97
  %i.fu = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !97
  %i.fv = mul i64 %i.fu, %indvars.iv
  %i.fw = load i64, ptr %i.x, align 8, !tbaa !50, !noalias !97 ; 2 uses
  %i.fx = mul i64 %i.fv, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fx
  %i.fz = sext i32 %i.fs to i64
  %i.ga = mul nsw i64 %i.fa, %i.fz
  %i.gb = mul i64 %i.ga, %i.fw
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.gb
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.ez
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !91
  %i.gf = fmul fast float %i.ge, %i.ev
  %i.gg = fadd fast float %i.gf, %i.fr
  br label %.critedge174.us.us

.critedge174.us.us:                               ; preds = %.noexc232.us.us, %.critedge172.us.us
  %i.gh = phi float [ %i.gg, %.noexc232.us.us ], [ %i.fr, %.critedge172.us.us ] ; 2 uses
  br i1 %i.eq, label %.noexc230.us.us, label %.critedge176.us.us

.noexc230.us.us:                                  ; preds = %.critedge174.us.us
  %i.gi = load i32, ptr %i.v, align 4, !tbaa !87, !noalias !98
  %i.gj = load ptr, ptr %12, align 8, !tbaa !20, !noalias !98
  %i.gk = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !98
  %i.gl = mul i64 %i.gk, %indvars.iv
  %i.gm = load i64, ptr %i.x, align 8, !tbaa !50, !noalias !98 ; 2 uses
  %i.gn = mul i64 %i.gl, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gn
  %i.gp = sext i32 %i.gi to i64
  %i.gq = mul nsw i64 %i.fb, %i.gp
  %i.gr = mul i64 %i.gq, %i.gm
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gr
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.ey
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !91
  %i.gv = fmul fast float %i.gu, %i.ew
  %i.gw = fadd fast float %i.gv, %i.gh
  br label %.critedge176.us.us

.critedge176.us.us:                               ; preds = %.noexc230.us.us, %.critedge174.us.us
  %i.gx = phi float [ %i.gw, %.noexc230.us.us ], [ %i.gh, %.critedge174.us.us ] ; 2 uses
  br i1 %i.et, label %.noexc229.us.us, label %.critedge178.us.us

.noexc229.us.us:                                  ; preds = %.critedge176.us.us
  %i.gy = load i32, ptr %i.v, align 4, !tbaa !87, !noalias !99
  %i.gz = load ptr, ptr %12, align 8, !tbaa !20, !noalias !99
  %i.ha = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !99
  %i.hb = mul i64 %i.ha, %indvars.iv
  %i.hc = load i64, ptr %i.x, align 8, !tbaa !50, !noalias !99 ; 2 uses
  %i.hd = mul i64 %i.hb, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.hd
  %i.hf = sext i32 %i.gy to i64
  %i.hg = mul nsw i64 %i.fb, %i.hf
  %i.hh = mul i64 %i.hg, %i.hc
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hh
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.hi, i64 %i.ez
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !91
  %i.hl = fmul fast float %i.hk, %i.ex
  %i.hm = fadd fast float %i.hl, %i.gx
  br label %.critedge178.us.us

.critedge178.us.us:                               ; preds = %.noexc229.us.us, %.critedge176.us.us
  %i.hn = phi float [ %i.hm, %.noexc229.us.us ], [ %i.gx, %.critedge176.us.us ]
  %i.ho = fmul fast float %i.hn, %i.dh
  %i.hp = add nuw nsw i64 %indvars.iv, %15
  %i.hq = mul nuw nsw i64 %i.hp, %i.az
  %i.hr = add nuw nsw i64 %i.hq, %indvars.iv467
  %i.hs = mul nuw nsw i64 %i.hr, %i.by
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep546, i64 %i.hs
  %i.ht = load float, ptr %gep, align 4, !tbaa !91
  %i.hu = fmul fast float %i.ht, %i.ho
  %i.hv = fadd fast float %i.hu, %.3425.us.us     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %.lr.ph.split.us.us, !llvm.loop !83

._crit_edge.us:                                   ; preds = %.critedge178.us.us, %.critedge.us, %bb.f, %bb.g, %.thread394.us.thread
  %.3.lcssa.us = phi float [ %.2428.us, %.critedge.us ], [ %.2428.us, %.thread394.us.thread ], [ %.2428.us, %bb.g ], [ %.2428.us, %bb.f ], [ %i.hv, %.critedge178.us.us ] ; 3 uses
  %indvars.iv.next463 = add nuw nsw i64 %indvars.iv462, 1 ; 2 uses
  %exitcond466.not = icmp eq i64 %indvars.iv.next463, %wide.trip.count465
  br i1 %exitcond466.not, label %._crit_edge431.us, label %.noexc240.us, !llvm.loop !84

._crit_edge431.us:                                ; preds = %._crit_edge.us
  %indvars.iv.next468 = add nuw nsw i64 %indvars.iv467, 1 ; 2 uses
  %exitcond471.not = icmp eq i64 %indvars.iv.next468, %wide.trip.count470
  br i1 %exitcond471.not, label %._crit_edge439, label %.preheader.us, !llvm.loop !85

._crit_edge439:                                   ; preds = %._crit_edge431.us, %.preheader.lr.ph, %bb.e
  %.1.lcssa = phi float [ %.0164, %bb.e ], [ %.0164, %.preheader.lr.ph ], [ %.3.lcssa.us, %._crit_edge431.us ] ; 13 uses
  switch i32 %i.ar, label %.noexc242 [
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.l
    i32 5, label %bb.m
    i32 6, label %bb.n
  ]

bb.h:                                             ; preds = %._crit_edge439
  %i.hw = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.1.lcssa, float 0.000000e+00)
  br label %.noexc242

bb.i:                                             ; preds = %._crit_edge439
  %i.hx = load ptr, ptr %i.z, align 8, !tbaa !20
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !91
  %i.hz = fcmp fast ogt float %.1.lcssa, 0.000000e+00
  %i.ia = select fast i1 %i.hz, float 1.000000e+00, float %i.hy
  %i.ib = fmul fast float %i.ia, %.1.lcssa
  br label %.noexc242

bb.j:                                             ; preds = %._crit_edge439
  %i.ic = load ptr, ptr %i.z, align 8, !tbaa !20  ; 2 uses
  %i.id = load float, ptr %i.ic, align 4, !tbaa !91
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  %i.if = load float, ptr %i.ie, align 4, !tbaa !91 ; 2 uses
  %.0 = call nnan ninf nsz float @llvm.maxnum.f32(float %.1.lcssa, float %i.id) ; 2 uses
  %i.ig = fcmp fast ogt float %.0, %i.if
  br i1 %i.ig, label %bb.k, label %.noexc242

bb.k:                                             ; preds = %bb.j
  br label %.noexc242

bb.l:                                             ; preds = %._crit_edge439
  %.sroa.speculated378 = call nnan ninf nsz float @llvm.minnum.f32(float %.1.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated378, float f0xC2B0C0A5)
  %i.ih = fneg fast float %.sroa.speculated
  %i.ii = call fast float @llvm.exp.f32(float %i.ih)
  %i.ij = fadd fast float %i.ii, 1.000000e+00
  %i.ik = fdiv fast float 1.000000e+00, %i.ij
  br label %.noexc242

bb.m:                                             ; preds = %._crit_edge439
  %i.il = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.1.lcssa)
  %i.im = fadd fast float %i.il, 1.000000e+00
  %i.in = call fast float @llvm.log.f32(float %i.im)
  %i.io = call fast float @llvm.tanh.f32(float %i.in)
  %i.ip = fmul fast float %i.io, %.1.lcssa
  br label %.noexc242

bb.n:                                             ; preds = %._crit_edge439
  %i.iq = load ptr, ptr %i.z, align 8, !tbaa !20  ; 2 uses
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !91 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %i.it = load float, ptr %i.is, align 4, !tbaa !91 ; 2 uses
  %i.iu = fneg fast float %i.it
  %i.iv = fdiv fast float %i.iu, %i.ir            ; 2 uses
  %i.iw = fcmp fast olt float %.1.lcssa, %i.iv
  br i1 %i.iw, label %.noexc242, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ix = fdiv fast float 1.000000e+00, %i.ir
  %i.iy = fadd fast float %i.iv, %i.ix
  %i.iz = fcmp fast ogt float %.1.lcssa, %i.iy
  br i1 %i.iz, label %.noexc242, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ja = fmul fast float %i.ir, %.1.lcssa
  %i.jb = fadd fast float %i.ja, %i.it
  %i.jc = fmul fast float %i.jb, %.1.lcssa
  br label %.noexc242

.noexc242:                                        ; preds = %bb.n, %._crit_edge439, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.o, %bb.p
  %.1387 = phi nsz float [ %.1.lcssa, %._crit_edge439 ], [ %i.hw, %bb.h ], [ %i.ib, %bb.i ], [ %i.if, %bb.k ], [ %.0, %bb.j ], [ %i.ik, %bb.l ], [ %i.ip, %bb.m ], [ %i.jc, %bb.p ], [ %.1.lcssa, %bb.o ], [ 0.000000e+00, %bb.n ]
  %.reass = mul i64 %factor.op.mul, %indvars.iv472
  %gep449 = getelementptr i8, ptr %invariant.gep448, i64 %.reass
  store float %.1387, ptr %gep449, align 4, !tbaa !91
  %indvars.iv.next473 = add nuw nsw i64 %indvars.iv472, 1 ; 2 uses
  %exitcond476.not = icmp eq i64 %indvars.iv.next473, %wide.trip.count475
  br i1 %exitcond476.not, label %._crit_edge, label %bb.c, !llvm.loop !86

._crit_edge455.split:                             ; preds = %._crit_edge452, %.preheader424.lr.ph, %.preheader424.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge455.split, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #10

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare !callback !59 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"vtable pointer", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!17 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !14, i64 8, !15, i64 16, !8, i64 24, !16, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !15, i64 64}
!18 = !{!17, !14, i64 8}
!19 = !{!17, !16, i64 32}
!20 = !{!17, !13, i64 0}
!21 = !{!17, !15, i64 64}
!22 = !{!"bool", !7, i64 0}
!23 = !{!"p1 omnipotent char", !13, i64 0}
end_hunk_0
