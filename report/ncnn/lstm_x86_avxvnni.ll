Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lstm_x86_avxvnni?download=true
inline.NumInlined: 10
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4ncnnL26lstm_transform_weight_int8ERKNS_3MatES2_S2_S2_S2_RS0_S3_S3_iiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.auu = getelementptr inbounds nuw i8, ptr %i.agr, i64 %indvars.iv1651
  %i.auv = load i8, ptr %i.auu, align 1, !tbaa !26
  %i.auw = getelementptr inbounds nuw i8, ptr %.89441516, i64 2
  store i8 %i.auv, ptr %i.auw, align 1, !tbaa !26
  %i.aux = getelementptr inbounds nuw i8, ptr %i.agr, i64 %i.auo
  %i.auy = load i8, ptr %i.aux, align 1, !tbaa !26
  %i.auz = getelementptr inbounds nuw i8, ptr %.89441516, i64 3
  store i8 %i.auy, ptr %i.auz, align 1, !tbaa !26
  %i.ava = getelementptr inbounds nuw i8, ptr %i.agt, i64 %indvars.iv1651
  %i.avb = load i8, ptr %i.ava, align 1, !tbaa !26
  %i.avc = getelementptr inbounds nuw i8, ptr %.89441516, i64 4
  store i8 %i.avb, ptr %i.avc, align 1, !tbaa !26
  %i.avd = getelementptr inbounds nuw i8, ptr %i.agt, i64 %i.auo
  %i.ave = load i8, ptr %i.avd, align 1, !tbaa !26
  %i.avf = getelementptr inbounds nuw i8, ptr %.89441516, i64 5
  store i8 %i.ave, ptr %i.avf, align 1, !tbaa !26
  %i.avg = getelementptr inbounds nuw i8, ptr %i.agv, i64 %indvars.iv1651
  %i.avh = load i8, ptr %i.avg, align 1, !tbaa !26
  %i.avi = getelementptr inbounds nuw i8, ptr %.89441516, i64 6
  store i8 %i.avh, ptr %i.avi, align 1, !tbaa !26
  %i.avj = getelementptr inbounds nuw i8, ptr %i.agv, i64 %i.auo
  %i.avk = load i8, ptr %i.avj, align 1, !tbaa !26
  %i.avl = getelementptr inbounds nuw i8, ptr %.89441516, i64 7
  store i8 %i.avk, ptr %i.avl, align 1, !tbaa !26
  %i.avm = getelementptr inbounds nuw i8, ptr %.89441516, i64 8 ; 2 uses
  %indvars.iv.next1652 = add nuw nsw i64 %indvars.iv1651, 2 ; 3 uses
  %i.avn = or disjoint i64 %indvars.iv.next1652, 1 ; 2 uses
  %i.avo = load i32, ptr %13, align 4, !tbaa !11  ; 2 uses
  %i.avp = trunc nuw i64 %i.avn to i32
  %i.avq = icmp sgt i32 %i.avo, %i.avp
  br i1 %i.avq, label %.lr.ph1519, label %.preheader.loopexit, !llvm.loop !67

.lr.ph1524:                                       ; preds = %.lr.ph1524.preheader, %.lr.ph1524
  %indvars.iv1654 = phi i64 [ %i.aun, %.lr.ph1524.preheader ], [ %indvars.iv.next1655, %.lr.ph1524 ] ; 5 uses
  %.99451522 = phi ptr [ %.8944.lcssa, %.lr.ph1524.preheader ], [ %i.awc, %.lr.ph1524 ] ; 5 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %i.agp, i64 %indvars.iv1654
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !26
  store i8 %i.avs, ptr %.99451522, align 1, !tbaa !26
  %i.avt = getelementptr inbounds nuw i8, ptr %i.agr, i64 %indvars.iv1654
  %i.avu = load i8, ptr %i.avt, align 1, !tbaa !26
  %i.avv = getelementptr inbounds nuw i8, ptr %.99451522, i64 1
  store i8 %i.avu, ptr %i.avv, align 1, !tbaa !26
  %i.avw = getelementptr inbounds nuw i8, ptr %i.agt, i64 %indvars.iv1654
  %i.avx = load i8, ptr %i.avw, align 1, !tbaa !26
  %i.avy = getelementptr inbounds nuw i8, ptr %.99451522, i64 2
  store i8 %i.avx, ptr %i.avy, align 1, !tbaa !26
  %i.avz = getelementptr inbounds nuw i8, ptr %i.agv, i64 %indvars.iv1654
  %i.awa = load i8, ptr %i.avz, align 1, !tbaa !26
  %i.awb = getelementptr inbounds nuw i8, ptr %.99451522, i64 3
  store i8 %i.awa, ptr %i.awb, align 1, !tbaa !26
  %i.awc = getelementptr inbounds nuw i8, ptr %.99451522, i64 4
  %indvars.iv.next1655 = add nuw nsw i64 %indvars.iv1654, 1 ; 2 uses
  %i.awd = load i32, ptr %13, align 4, !tbaa !11
  %i.awe = trunc nuw i64 %indvars.iv.next1655 to i32
  %i.awf = icmp sgt i32 %i.awd, %i.awe
  br i1 %i.awf, label %.lr.ph1524, label %._crit_edge1525, !llvm.loop !68

._crit_edge1525:                                  ; preds = %.lr.ph1524, %.preheader
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv1657
  %i.awh = load float, ptr %i.awg, align 4, !tbaa !25
  %i.awi = fdiv fast float 1.000000e+00, %i.awh
  store float %i.awi, ptr %i.ahd, align 4, !tbaa !25
  %i.awj = load i32, ptr %11, align 4, !tbaa !11  ; 6 uses
  %i.awk = add nsw i32 %i.awj, %i.afz
  %i.awl = sext i32 %i.awk to i64                 ; 2 uses
  %i.awm = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.awl
  %i.awn = load float, ptr %i.awm, align 4, !tbaa !25
  %i.awo = fdiv fast float 1.000000e+00, %i.awn
  %i.awp = getelementptr inbounds nuw i8, ptr %i.ahd, i64 4
  store float %i.awo, ptr %i.awp, align 4, !tbaa !25
  %i.awq = shl nsw i32 %i.awj, 1
  %i.awr = add nsw i32 %i.awq, %i.afz
  %i.aws = sext i32 %i.awr to i64                 ; 2 uses
  %i.awt = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.aws
  %i.awu = load float, ptr %i.awt, align 4, !tbaa !25
  %i.awv = fdiv fast float 1.000000e+00, %i.awu
  %i.aww = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  store float %i.awv, ptr %i.aww, align 4, !tbaa !25
  %i.awx = mul nsw i32 %i.awj, 3
  %i.awy = add nsw i32 %i.awx, %i.afz
  %i.awz = sext i32 %i.awy to i64                 ; 2 uses
  %i.axa = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.awz
  %i.axb = load float, ptr %i.axa, align 4, !tbaa !25
  %i.axc = fdiv fast float 1.000000e+00, %i.axb
  %i.axd = getelementptr inbounds nuw i8, ptr %i.ahd, i64 12
  store float %i.axc, ptr %i.axd, align 4, !tbaa !25
  %i.axe = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv1657
  %i.axf = load float, ptr %i.axe, align 4, !tbaa !25
  %i.axg = fdiv fast float 1.000000e+00, %i.axf
  %i.axh = getelementptr inbounds nuw i8, ptr %i.ahd, i64 16
  store float %i.axg, ptr %i.axh, align 4, !tbaa !25
  %i.axi = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.awl
  %i.axj = load float, ptr %i.axi, align 4, !tbaa !25
  %i.axk = fdiv fast float 1.000000e+00, %i.axj
  %i.axl = getelementptr inbounds nuw i8, ptr %i.ahd, i64 20
  store float %i.axk, ptr %i.axl, align 4, !tbaa !25
  %i.axm = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.aws
  %i.axn = load float, ptr %i.axm, align 4, !tbaa !25
  %i.axo = fdiv fast float 1.000000e+00, %i.axn
  %i.axp = getelementptr inbounds nuw i8, ptr %i.ahd, i64 24
  store float %i.axo, ptr %i.axp, align 4, !tbaa !25
  %i.axq = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.awz
  %i.axr = load float, ptr %i.axq, align 4, !tbaa !25
  %i.axs = fdiv fast float 1.000000e+00, %i.axr
  %i.axt = getelementptr inbounds nuw i8, ptr %i.ahd, i64 28
  store float %i.axs, ptr %i.axt, align 4, !tbaa !25
  %indvars.iv.next1658 = add nuw nsw i64 %indvars.iv1657, 1 ; 2 uses
  %i.axu = sext i32 %i.awj to i64
  %i.axv = icmp slt i64 %indvars.iv.next1658, %i.axu
  br i1 %i.axv, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !69

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge1525, %.preheader1347
  %i.axw = phi i32 [ %i.dc, %.preheader1347 ], [ %i.awj, %._crit_edge1525 ]
  %indvars.iv.next1661 = add nsw i64 %indvars.iv1660, 1
  %i.axx = load i32, ptr %i.b, align 4, !tbaa !11
  %i.axy = sext i32 %i.axx to i64
  %.not.not = icmp slt i64 %indvars.iv1660, %i.axy
  br i1 %.not.not, label %.noexc981, label %._crit_edge1531

._crit_edge1531:                                  ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge1531, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #4 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare !callback !29 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32>, <32 x i8>, <32 x i8>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32>, <8 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32>, <16 x i8>, <16 x i8>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32>, <4 x i32>) #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4ncnn40lstm_dynamic_quantize_scale2int8_avxvnniEPKfifPa(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, float noundef nofpclass(nan inf) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #9 {
bb.a:
  %i.a = insertelement <8 x float> poison, float %2, i64 0
  %i.b = shufflevector <8 x float> %i.a, <8 x float> poison, <8 x i32> zeroinitializer
  %i.c = icmp sgt i32 %1, 7
  br i1 %i.c, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.049.i = phi i32 [ %i.r, %.lr.ph.i ], [ 0, %bb.a ]
  %.03548.i = phi ptr [ %i.q, %.lr.ph.i ], [ %3, %bb.a ] ; 2 uses
  %.03847.i = phi ptr [ %i.p, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.d = load <8 x float>, ptr %.03847.i, align 1, !tbaa !26
  %i.e = fmul fast <8 x float> %i.d, %i.b         ; 2 uses
  %i.f = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.e)
  %i.g = fadd fast <8 x float> %i.f, %i.e
  %i.h = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.g)
  %i.i = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.h, <8 x i32> poison)
  %4 = bitcast <16 x i16> %i.i to <8 x i32>
  %5 = shufflevector <8 x i32> %4, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.j = bitcast <4 x i32> %5 to <8 x i16>
  %i.k = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.j, <8 x i16> splat (i16 -127))
  %i.l = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.k, <8 x i16> splat (i16 127))
  %i.m = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.l, <8 x i16> poison)
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.o = add <8 x i8> %i.n, splat (i8 127)
  store <8 x i8> %i.o, ptr %.03548.i, align 1, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %.03847.i, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.03548.i, i64 8 ; 2 uses
  %i.r = add nuw nsw i32 %.049.i, 8               ; 2 uses
  %i.s = or disjoint i32 %i.r, 7
  %i.t = icmp slt i32 %i.s, %1
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.u = and i32 %1, 2147483640
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.a
  %.038.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.p, %._crit_edge.loopexit.i ] ; 2 uses
  %.035.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.q, %._crit_edge.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.u, %._crit_edge.loopexit.i ] ; 3 uses
  %i.v = insertelement <4 x float> poison, float %2, i64 0
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> zeroinitializer
  %i.x = or disjoint i32 %.0.lcssa.i, 3
  %i.y = icmp slt i32 %i.x, %1
  br i1 %i.y, label %.lr.ph56.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph56.i, %._crit_edge.i
  %.139.lcssa.i = phi ptr [ %.038.lcssa.i, %._crit_edge.i ], [ %i.df, %.lr.ph56.i ] ; 8 uses
  %.136.lcssa.i = phi ptr [ %.035.lcssa.i, %._crit_edge.i ], [ %i.dg, %.lr.ph56.i ] ; 8 uses
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %._crit_edge.i ], [ %i.dh, %.lr.ph56.i ] ; 7 uses
  %i.z = icmp slt i32 %.1.lcssa.i, %1
  br i1 %i.z, label %iter.check, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit

iter.check:                                       ; preds = %.preheader.i
  %i.aa = xor i32 %.1.lcssa.i, -1
  %i.ab = add i32 %1, %i.aa                       ; 3 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ab, 3
  br i1 %min.iters.check, label %.lr.ph63.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ae = xor i32 %.1.lcssa.i, -1
  %i.af = add i32 %1, %i.ae
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr i8, ptr %.136.lcssa.i, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 1
  %i.aj = shl nuw nsw i64 %i.ag, 2
  %i.ak = getelementptr i8, ptr %.139.lcssa.i, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  %bound0 = icmp ult ptr %.136.lcssa.i, %i.al
  %bound1 = icmp ult ptr %.139.lcssa.i, %i.ai
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph63.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check20 = icmp ult i32 %i.ab, 31
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.am = and i64 %i.ad, 28
  %n.vec = and i64 %i.ad, 8589934560              ; 6 uses
  %i.an = trunc i64 %n.vec to i32
  %i.ao = add i32 %.1.lcssa.i, %i.an
  %i.ap = getelementptr i8, ptr %.136.lcssa.i, i64 %n.vec
  %i.aq = shl nuw nsw i64 %n.vec, 2
  %i.ar = getelementptr i8, ptr %.139.lcssa.i, i64 %i.aq
  %broadcast.splatinsert = insertelement <8 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.136.lcssa.i, i64 %index ; 4 uses
  %i.as = shl i64 %index, 2
  %next.gep21 = getelementptr i8, ptr %.139.lcssa.i, i64 %i.as ; 4 uses
  %i.at = getelementptr i8, ptr %next.gep21, i64 32
  %i.au = getelementptr i8, ptr %next.gep21, i64 64
  %i.av = getelementptr i8, ptr %next.gep21, i64 96
  %wide.load = load <8 x float>, ptr %next.gep21, align 4, !tbaa !25, !alias.scope !82
  %wide.load22 = load <8 x float>, ptr %i.at, align 4, !tbaa !25, !alias.scope !82
  %wide.load23 = load <8 x float>, ptr %i.au, align 4, !tbaa !25, !alias.scope !82
  %wide.load24 = load <8 x float>, ptr %i.av, align 4, !tbaa !25, !alias.scope !82
  %i.aw = fmul fast <8 x float> %wide.load, %broadcast.splat
  %i.ax = fmul fast <8 x float> %wide.load22, %broadcast.splat
  %i.ay = fmul fast <8 x float> %wide.load23, %broadcast.splat
  %i.az = fmul fast <8 x float> %wide.load24, %broadcast.splat
  %i.ba = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.aw)
  %i.bb = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.ax)
  %i.bc = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.ay)
  %i.bd = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.az)
  %i.be = fptosi <8 x float> %i.ba to <8 x i32>
  %i.bf = fptosi <8 x float> %i.bb to <8 x i32>
  %i.bg = fptosi <8 x float> %i.bc to <8 x i32>
  %i.bh = fptosi <8 x float> %i.bd to <8 x i32>
  %i.bi = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.be, <8 x i32> splat (i32 -127))
  %i.bj = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bf, <8 x i32> splat (i32 -127))
  %i.bk = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bg, <8 x i32> splat (i32 -127))
  %i.bl = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bh, <8 x i32> splat (i32 -127))
  %i.bm = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.bi, <8 x i32> splat (i32 127))
  %i.bn = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.bj, <8 x i32> splat (i32 127))
  %i.bo = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.bk, <8 x i32> splat (i32 127))
  %i.bp = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.bl, <8 x i32> splat (i32 127))
  %i.bq = trunc nsw <8 x i32> %i.bm to <8 x i8>
  %i.br = trunc nsw <8 x i32> %i.bn to <8 x i8>
  %i.bs = trunc nsw <8 x i32> %i.bo to <8 x i8>
  %i.bt = trunc nsw <8 x i32> %i.bp to <8 x i8>
  %i.bu = getelementptr i8, ptr %next.gep, i64 8
  %i.bv = getelementptr i8, ptr %next.gep, i64 16
  %i.bw = getelementptr i8, ptr %next.gep, i64 24
  store <8 x i8> %i.bq, ptr %next.gep, align 1, !tbaa !26, !alias.scope !83, !noalias !82
  store <8 x i8> %i.br, ptr %i.bu, align 1, !tbaa !26, !alias.scope !83, !noalias !82
  store <8 x i8> %i.bs, ptr %i.bv, align 1, !tbaa !26, !alias.scope !83, !noalias !82
  store <8 x i8> %i.bt, ptr %i.bw, align 1, !tbaa !26, !alias.scope !83, !noalias !82
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.am, 0
  br i1 %min.epilog.iters.check, label %.lr.ph63.i.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec25 = and i64 %i.ad, 8589934588            ; 5 uses
  %i.by = trunc i64 %n.vec25 to i32
  %i.bz = add i32 %.1.lcssa.i, %i.by
  %i.ca = getelementptr i8, ptr %.136.lcssa.i, i64 %n.vec25
  %i.cb = shl nuw nsw i64 %n.vec25, 2
  %i.cc = getelementptr i8, ptr %.139.lcssa.i, i64 %i.cb
  %broadcast.splatinsert26 = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat27 = shufflevector <4 x float> %broadcast.splatinsert26, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next32, %vec.epilog.vector.body ] ; 3 uses
  %next.gep29 = getelementptr i8, ptr %.136.lcssa.i, i64 %index28
  %i.cd = shl i64 %index28, 2
  %next.gep30 = getelementptr i8, ptr %.139.lcssa.i, i64 %i.cd
  %wide.load31 = load <4 x float>, ptr %next.gep30, align 4, !tbaa !25, !alias.scope !82
  %i.ce = fmul fast <4 x float> %wide.load31, %broadcast.splat27
  %i.cf = tail call fast <4 x float> @llvm.round.v4f32(<4 x float> %i.ce)
  %i.cg = fptosi <4 x float> %i.cf to <4 x i32>
  %i.ch = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cg, <4 x i32> splat (i32 -127))
  %i.ci = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ch, <4 x i32> splat (i32 127))
  %i.cj = trunc nsw <4 x i32> %i.ci to <4 x i8>
  store <4 x i8> %i.cj, ptr %next.gep29, align 1, !tbaa !26, !alias.scope !83, !noalias !82
  %index.next32 = add nuw i64 %index28, 4         ; 2 uses
  %i.ck = icmp eq i64 %index.next32, %n.vec25
  br i1 %i.ck, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !80

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n33 = icmp eq i64 %i.ad, %n.vec25
  br i1 %cmp.n33, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit, label %.lr.ph63.i.preheader

.lr.ph63.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.262.i.ph = phi i32 [ %.1.lcssa.i, %iter.check ], [ %.1.lcssa.i, %vector.memcheck ], [ %i.ao, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ] ; 4 uses
  %.23761.i.ph = phi ptr [ %.136.lcssa.i, %iter.check ], [ %.136.lcssa.i, %vector.memcheck ], [ %i.ap, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ] ; 3 uses
  %.24060.i.ph = phi ptr [ %.139.lcssa.i, %iter.check ], [ %.139.lcssa.i, %vector.memcheck ], [ %i.ar, %vec.epilog.iter.check ], [ %i.cc, %vec.epilog.middle.block ] ; 3 uses
  %i.cl = sub i32 %1, %.262.i.ph
  %.neg = add i32 %.262.i.ph, 1
  %xtraiter = and i32 %i.cl, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph63.i.prol.loopexit, label %.lr.ph63.i.prol

.lr.ph63.i.prol:                                  ; preds = %.lr.ph63.i.preheader
  %i.cm = getelementptr inbounds nuw i8, ptr %.24060.i.ph, i64 4
  %i.cn = load float, ptr %.24060.i.ph, align 4, !tbaa !25
  %i.co = fmul fast float %i.cn, %2
  %i.cp = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.co)
  %i.cq = fptosi float %i.cp to i32
  %spec.select.i45.i.prol = tail call i32 @llvm.smax.i32(i32 %i.cq, i32 -127)
  %.0.i46.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i45.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i46.i.prol to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %.23761.i.ph, i64 1
  store i8 %.0.i.i.prol, ptr %.23761.i.ph, align 1, !tbaa !26
  %i.cs = add nuw nsw i32 %.262.i.ph, 1
  br label %.lr.ph63.i.prol.loopexit

.lr.ph63.i.prol.loopexit:                         ; preds = %.lr.ph63.i.prol, %.lr.ph63.i.preheader
  %.262.i.unr = phi i32 [ %.262.i.ph, %.lr.ph63.i.preheader ], [ %i.cs, %.lr.ph63.i.prol ]
  %.23761.i.unr = phi ptr [ %.23761.i.ph, %.lr.ph63.i.preheader ], [ %i.cr, %.lr.ph63.i.prol ]
  %.24060.i.unr = phi ptr [ %.24060.i.ph, %.lr.ph63.i.preheader ], [ %i.cm, %.lr.ph63.i.prol ]
  %i.ct = icmp eq i32 %1, %.neg
  br i1 %i.ct, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit, label %.lr.ph63.i

.lr.ph56.i:                                       ; preds = %._crit_edge.i, %.lr.ph56.i
  %.154.i = phi i32 [ %i.dh, %.lr.ph56.i ], [ %.0.lcssa.i, %._crit_edge.i ]
  %.13653.i = phi ptr [ %i.dg, %.lr.ph56.i ], [ %.035.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.13952.i = phi ptr [ %i.df, %.lr.ph56.i ], [ %.038.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.cu = load <4 x float>, ptr %.13952.i, align 1, !tbaa !26
  %i.cv = fmul fast <4 x float> %i.cu, %i.w       ; 2 uses
  %i.cw = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.cv)
  %i.cx = fadd fast <4 x float> %i.cw, %i.cv
  %i.cy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cx)
end_hunk_0
begin_hunk_1_@_ZN4ncnn17lstm_int8_avxvnniERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE:bb.a
  br i1 %min.iters.check112, label %vec.epilog.ph138, label %vector.ph113

vector.ph113:                                     ; preds = %vector.main.loop.iter.check111
  %i.ee = and i64 %i.ed, 24
  %n.vec114 = and i64 %i.ed, 8589934560           ; 5 uses
  %i.ef = trunc i64 %n.vec114 to i32
  %i.eg = add i32 %.1.lcssa.i.i, %i.ef
  %i.eh = shl nuw nsw i64 %n.vec114, 2
  %i.ei = getelementptr i8, ptr %.115.lcssa.i.i, i64 %i.eh
  %broadcast.splatinsert115 = insertelement <8 x float> poison, float %.sroa.speculated21.i.i, i64 0
  %broadcast.splat116 = shufflevector <8 x float> %broadcast.splatinsert115, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.ph113, %vector.body117
  %index118 = phi i64 [ 0, %vector.ph113 ], [ %index.next127, %vector.body117 ] ; 2 uses
  %vec.phi = phi <8 x float> [ %broadcast.splat116, %vector.ph113 ], [ %i.er, %vector.body117 ]
  %vec.phi119 = phi <8 x float> [ %broadcast.splat116, %vector.ph113 ], [ %i.es, %vector.body117 ]
  %vec.phi120 = phi <8 x float> [ %broadcast.splat116, %vector.ph113 ], [ %i.et, %vector.body117 ]
  %vec.phi121 = phi <8 x float> [ %broadcast.splat116, %vector.ph113 ], [ %i.eu, %vector.body117 ]
  %i.ej = shl i64 %index118, 2
  %next.gep122 = getelementptr i8, ptr %.115.lcssa.i.i, i64 %i.ej ; 4 uses
  %i.ek = getelementptr i8, ptr %next.gep122, i64 32
  %i.el = getelementptr i8, ptr %next.gep122, i64 64
  %i.em = getelementptr i8, ptr %next.gep122, i64 96
  %wide.load123 = load <8 x float>, ptr %next.gep122, align 4, !tbaa !25
  %wide.load124 = load <8 x float>, ptr %i.ek, align 4, !tbaa !25
  %wide.load125 = load <8 x float>, ptr %i.el, align 4, !tbaa !25
  %wide.load126 = load <8 x float>, ptr %i.em, align 4, !tbaa !25
  %i.en = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load123)
  %i.eo = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load124)
  %i.ep = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load125)
  %i.eq = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load126)
  %i.er = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi, <8 x float> %i.en) ; 2 uses
  %i.es = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi119, <8 x float> %i.eo) ; 2 uses
  %i.et = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi120, <8 x float> %i.ep) ; 2 uses
  %i.eu = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi121, <8 x float> %i.eq) ; 2 uses
  %index.next127 = add nuw i64 %index118, 32      ; 2 uses
  %i.ev = icmp eq i64 %index.next127, %n.vec114
  br i1 %i.ev, label %middle.block128, label %vector.body117, !llvm.loop !88

middle.block128:                                  ; preds = %vector.body117
  %rdx.minmax.select = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.er, <8 x float> %i.es)
  %rdx.minmax.select130 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select, <8 x float> %i.et)
  %rdx.minmax.select132 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select130, <8 x float> %i.eu)
  %i.ew = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax.select132) ; 3 uses
  %cmp.n133 = icmp eq i64 %i.ed, %n.vec114
  br i1 %cmp.n133, label %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i, label %vec.epilog.iter.check135

vec.epilog.iter.check135:                         ; preds = %middle.block128
  %min.epilog.iters.check137 = icmp eq i64 %i.ee, 0
  br i1 %min.epilog.iters.check137, label %.lr.ph57.i.i.preheader, label %vec.epilog.ph138, !prof !33

vec.epilog.ph138:                                 ; preds = %vector.main.loop.iter.check111, %vec.epilog.iter.check135
  %vec.epilog.resume.val139 = phi i64 [ %n.vec114, %vec.epilog.iter.check135 ], [ 0, %vector.main.loop.iter.check111 ]
  %bc.merge.rdx = phi float [ %i.ew, %vec.epilog.iter.check135 ], [ %.sroa.speculated21.i.i, %vector.main.loop.iter.check111 ]
  %broadcast.splatinsert143 = insertelement <8 x float> poison, float %bc.merge.rdx, i64 0
  %broadcast.splat144 = shufflevector <8 x float> %broadcast.splatinsert143, <8 x float> poison, <8 x i32> zeroinitializer
  %n.vec140 = and i64 %i.ed, 8589934584           ; 4 uses
  %i.ex = trunc i64 %n.vec140 to i32
  %i.ey = add i32 %.1.lcssa.i.i, %i.ex
  %i.ez = shl nuw nsw i64 %n.vec140, 2
  %i.fa = getelementptr i8, ptr %.115.lcssa.i.i, i64 %i.ez
  br label %vec.epilog.vector.body141

vec.epilog.vector.body141:                        ; preds = %vec.epilog.vector.body141, %vec.epilog.ph138
  %index142 = phi i64 [ %vec.epilog.resume.val139, %vec.epilog.ph138 ], [ %index.next148, %vec.epilog.vector.body141 ] ; 2 uses
  %vec.phi145 = phi <8 x float> [ %broadcast.splat144, %vec.epilog.ph138 ], [ %i.fd, %vec.epilog.vector.body141 ]
  %i.fb = shl i64 %index142, 2
  %next.gep146 = getelementptr i8, ptr %.115.lcssa.i.i, i64 %i.fb
  %wide.load147 = load <8 x float>, ptr %next.gep146, align 4, !tbaa !25
  %i.fc = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load147)
  %i.fd = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi145, <8 x float> %i.fc) ; 2 uses
  %index.next148 = add nuw i64 %index142, 8       ; 2 uses
  %i.fe = icmp eq i64 %index.next148, %n.vec140
  br i1 %i.fe, label %vec.epilog.middle.block149, label %vec.epilog.vector.body141, !llvm.loop !89

vec.epilog.middle.block149:                       ; preds = %vec.epilog.vector.body141
  %i.ff = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.fd) ; 2 uses
  %cmp.n150 = icmp eq i64 %i.ed, %n.vec140
  br i1 %cmp.n150, label %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i, label %.lr.ph57.i.i.preheader

.lr.ph57.i.i.preheader:                           ; preds = %iter.check134, %vec.epilog.iter.check135, %vec.epilog.middle.block149
  %.255.i.i.ph = phi i32 [ %.1.lcssa.i.i, %iter.check134 ], [ %i.eg, %vec.epilog.iter.check135 ], [ %i.ey, %vec.epilog.middle.block149 ]
  %.21654.i.i.ph = phi ptr [ %.115.lcssa.i.i, %iter.check134 ], [ %i.ei, %vec.epilog.iter.check135 ], [ %i.fa, %vec.epilog.middle.block149 ]
  %.03653.i.i.ph = phi float [ %.sroa.speculated21.i.i, %iter.check134 ], [ %i.ew, %vec.epilog.iter.check135 ], [ %i.ff, %vec.epilog.middle.block149 ]
  br label %.lr.ph57.i.i

.lr.ph57.i.i:                                     ; preds = %.lr.ph57.i.i.preheader, %.lr.ph57.i.i
  %.255.i.i = phi i32 [ %i.fj, %.lr.ph57.i.i ], [ %.255.i.i.ph, %.lr.ph57.i.i.preheader ]
  %.21654.i.i = phi ptr [ %i.fi, %.lr.ph57.i.i ], [ %.21654.i.i.ph, %.lr.ph57.i.i.preheader ] ; 2 uses
  %.03653.i.i = phi float [ %.sroa.speculated.i.i, %.lr.ph57.i.i ], [ %.03653.i.i.ph, %.lr.ph57.i.i.preheader ]
  %i.fg = load float, ptr %.21654.i.i, align 4, !tbaa !25
  %i.fh = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.fg)
  %.sroa.speculated.i.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.03653.i.i, float %i.fh) ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.21654.i.i, i64 4
  %i.fj = add nuw nsw i32 %.255.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.fj, %i.bs
  br i1 %exitcond.not.i.i, label %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i, label %.lr.ph57.i.i, !llvm.loop !90

_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i: ; preds = %.lr.ph57.i.i, %middle.block128, %vec.epilog.middle.block149, %._crit_edge49.i.i
  %.036.lcssa.i.i = phi float [ %.sroa.speculated21.i.i, %._crit_edge49.i.i ], [ %i.ff, %vec.epilog.middle.block149 ], [ %i.ew, %middle.block128 ], [ %.sroa.speculated.i.i, %.lr.ph57.i.i ] ; 3 uses
  %i.fk = fcmp fast oeq float %.036.lcssa.i.i, 0.000000e+00
  br i1 %i.fk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i
  %i.fl = load ptr, ptr %13, align 8, !tbaa !21   ; 3 uses
  %i.fm = icmp sgt i32 %i.bs, 15
  br i1 %i.fm, label %.lr.ph.preheader.i, label %.preheader134.i

.lr.ph.preheader.i:                               ; preds = %bb.y
  %i.fn = add nsw i32 %i.bs, -16                  ; 2 uses
  %i.fo = and i32 %i.fn, 2147483632
  %i.fp = zext nneg i32 %i.fo to i64              ; 2 uses
  %i.fq = add nuw nsw i64 %i.fp, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fl, i8 127, i64 %i.fq, i1 false), !tbaa !26
  %scevgep.i = getelementptr i8, ptr %i.fl, i64 16
  %scevgep179.i = getelementptr i8, ptr %scevgep.i, i64 %i.fp
  %i.fr = and i32 %i.fn, -16
  %i.fs = add nuw nsw i32 %i.fr, 16
  %.pre183.i = load i32, ptr %i.b, align 4, !tbaa !11
  br label %.preheader134.i

.preheader134.i:                                  ; preds = %.lr.ph.preheader.i, %bb.y
  %i.ft = phi i32 [ %i.bs, %bb.y ], [ %.pre183.i, %.lr.ph.preheader.i ] ; 4 uses
  %.070.lcssa.i = phi ptr [ %i.fl, %bb.y ], [ %scevgep179.i, %.lr.ph.preheader.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.y ], [ %i.fs, %.lr.ph.preheader.i ] ; 5 uses
  %i.fu = or disjoint i32 %.0.lcssa.i, 7
  %i.fv = icmp slt i32 %i.fu, %i.ft
  br i1 %i.fv, label %.lr.ph150.preheader.i, label %.preheader133.i

.lr.ph150.preheader.i:                            ; preds = %.preheader134.i
  %i.fw = add nuw nsw i32 %.0.lcssa.i, 15
  %i.fx = call i32 @llvm.umax.i32(i32 %i.ft, i32 %i.fw)
  %i.fy = add nsw i32 %i.fx, -8
  %i.fz = sub nsw i32 %i.fy, %.0.lcssa.i          ; 2 uses
  %i.ga = and i32 %i.fz, -8
  %i.gb = zext i32 %i.ga to i64                   ; 2 uses
  %i.gc = add nuw nsw i64 %i.gb, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.070.lcssa.i, i8 127, i64 %i.gc, i1 false)
  %scevgep = getelementptr i8, ptr %.070.lcssa.i, i64 8
  %scevgep41 = getelementptr i8, ptr %scevgep, i64 %i.gb
  %i.gd = add nuw i32 %.0.lcssa.i, 8
  %i.ge = and i32 %i.fz, -8
  %i.gf = add i32 %i.gd, %i.ge
  br label %.preheader133.i

.preheader133.i:                                  ; preds = %.lr.ph150.preheader.i, %.preheader134.i
  %.171.lcssa.i = phi ptr [ %.070.lcssa.i, %.preheader134.i ], [ %scevgep41, %.lr.ph150.preheader.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader134.i ], [ %i.gf, %.lr.ph150.preheader.i ] ; 3 uses
  %i.gg = or disjoint i32 %.1.lcssa.i, 3
  %i.gh = icmp slt i32 %i.gg, %i.ft
  br i1 %i.gh, label %.lr.ph155.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph155.i, %.preheader133.i
  %i.gi = phi i32 [ %i.ft, %.preheader133.i ], [ %i.gn, %.lr.ph155.i ]
  %.272.lcssa.i = phi ptr [ %.171.lcssa.i, %.preheader133.i ], [ %i.gk, %.lr.ph155.i ]
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader133.i ], [ %i.gl, %.lr.ph155.i ] ; 2 uses
  %i.gj = icmp slt i32 %.2.lcssa.i, %i.gi
  br i1 %i.gj, label %.lr.ph160.i, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i

.lr.ph155.i:                                      ; preds = %.preheader133.i, %.lr.ph155.i
  %.2154.i = phi i32 [ %i.gl, %.lr.ph155.i ], [ %.1.lcssa.i, %.preheader133.i ]
  %.272153.i = phi ptr [ %i.gk, %.lr.ph155.i ], [ %.171.lcssa.i, %.preheader133.i ] ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.272153.i, i64 4 ; 2 uses
  %i.gl = add nuw nsw i32 %.2154.i, 4             ; 3 uses
  %i.gm = or disjoint i32 %i.gl, 3
  store i32 2139062143, ptr %.272153.i, align 1
  %i.gn = load i32, ptr %i.b, align 4, !tbaa !11  ; 2 uses
  %i.go = icmp slt i32 %i.gm, %i.gn
  br i1 %i.go, label %.lr.ph155.i, label %.preheader.i, !llvm.loop !91

.lr.ph160.i:                                      ; preds = %.preheader.i, %.lr.ph160.i
  %.3159.i = phi i32 [ %i.gq, %.lr.ph160.i ], [ %.2.lcssa.i, %.preheader.i ]
  %.373158.i = phi ptr [ %i.gp, %.lr.ph160.i ], [ %.272.lcssa.i, %.preheader.i ] ; 2 uses
  store i8 0, ptr %.373158.i, align 1, !tbaa !26
  %i.gp = getelementptr inbounds nuw i8, ptr %.373158.i, i64 1
  %i.gq = add nuw nsw i32 %.3159.i, 1             ; 2 uses
  %i.gr = load i32, ptr %i.b, align 4, !tbaa !11
  %i.gs = icmp slt i32 %i.gq, %i.gr
  br i1 %i.gs, label %.lr.ph160.i, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i, !llvm.loop !92

bb.z:                                             ; preds = %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i
  %i.gt = fmul fast float %.036.lcssa.i.i, f0x3C010204
  store float %i.gt, ptr %i.d, align 4, !tbaa !25
  %i.gu = load ptr, ptr %13, align 8, !tbaa !21   ; 2 uses
  %i.gv = fdiv fast float 1.270000e+02, %.036.lcssa.i.i ; 7 uses
  %i.gw = insertelement <8 x float> poison, float %i.gv, i64 0
  %i.gx = shufflevector <8 x float> %i.gw, <8 x float> poison, <8 x i32> zeroinitializer
  br i1 %i.bx, label %.lr.ph.i131.i, label %._crit_edge.i126.i

.lr.ph.i131.i:                                    ; preds = %bb.z, %.lr.ph.i131.i
  %.049.i.i = phi i32 [ %i.hm, %.lr.ph.i131.i ], [ 0, %bb.z ]
  %.03548.i.i = phi ptr [ %i.hl, %.lr.ph.i131.i ], [ %i.gu, %bb.z ] ; 2 uses
  %.03847.i.i = phi ptr [ %i.hk, %.lr.ph.i131.i ], [ %i.bw, %bb.z ] ; 2 uses
  %i.gy = load <8 x float>, ptr %.03847.i.i, align 1, !tbaa !26
  %i.gz = fmul fast <8 x float> %i.gy, %i.gx      ; 2 uses
  %i.ha = call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.gz)
  %i.hb = fadd fast <8 x float> %i.ha, %i.gz
  %i.hc = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hb)
  %i.hd = call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.hc, <8 x i32> poison)
  %14 = bitcast <16 x i16> %i.hd to <8 x i32>
  %15 = shufflevector <8 x i32> %14, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.he = bitcast <4 x i32> %15 to <8 x i16>
  %i.hf = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.he, <8 x i16> splat (i16 -127))
  %i.hg = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.hf, <8 x i16> splat (i16 127))
  %i.hh = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.hg, <8 x i16> poison)
  %i.hi = shufflevector <16 x i8> %i.hh, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hj = add <8 x i8> %i.hi, splat (i8 127)
  store <8 x i8> %i.hj, ptr %.03548.i.i, align 1, !tbaa !26
  %i.hk = getelementptr inbounds nuw i8, ptr %.03847.i.i, i64 32 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.03548.i.i, i64 8 ; 2 uses
  %i.hm = add nuw nsw i32 %.049.i.i, 8            ; 2 uses
  %i.hn = or disjoint i32 %i.hm, 7
  %i.ho = icmp slt i32 %i.hn, %i.bs
  br i1 %i.ho, label %.lr.ph.i131.i, label %._crit_edge.loopexit.i132.i, !llvm.loop !0

._crit_edge.loopexit.i132.i:                      ; preds = %.lr.ph.i131.i
  %i.hp = and i32 %i.bs, 2147483640
  br label %._crit_edge.i126.i

._crit_edge.i126.i:                               ; preds = %._crit_edge.loopexit.i132.i, %bb.z
  %.038.lcssa.i127.i = phi ptr [ %i.bw, %bb.z ], [ %i.hk, %._crit_edge.loopexit.i132.i ] ; 2 uses
  %.035.lcssa.i.i = phi ptr [ %i.gu, %bb.z ], [ %i.hl, %._crit_edge.loopexit.i132.i ] ; 2 uses
  %.0.lcssa.i128.i = phi i32 [ 0, %bb.z ], [ %i.hp, %._crit_edge.loopexit.i132.i ] ; 3 uses
  %i.hq = insertelement <4 x float> poison, float %i.gv, i64 0
  %i.hr = shufflevector <4 x float> %i.hq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hs = or disjoint i32 %.0.lcssa.i128.i, 3
  %i.ht = icmp slt i32 %i.hs, %i.bs
  br i1 %i.ht, label %.lr.ph56.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph56.i.i, %._crit_edge.i126.i
  %.139.lcssa.i.i = phi ptr [ %.038.lcssa.i127.i, %._crit_edge.i126.i ], [ %i.la, %.lr.ph56.i.i ] ; 8 uses
  %.136.lcssa.i.i = phi ptr [ %.035.lcssa.i.i, %._crit_edge.i126.i ], [ %i.lb, %.lr.ph56.i.i ] ; 8 uses
  %.1.lcssa.i129.i = phi i32 [ %.0.lcssa.i128.i, %._crit_edge.i126.i ], [ %i.lc, %.lr.ph56.i.i ] ; 7 uses
  %i.hu = icmp slt i32 %.1.lcssa.i129.i, %i.bs
  br i1 %i.hu, label %iter.check, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i

iter.check:                                       ; preds = %.preheader.i.i
  %i.hv = xor i32 %.1.lcssa.i129.i, -1
  %i.hw = add i32 %i.bs, %i.hv                    ; 3 uses
  %i.hx = zext i32 %i.hw to i64
  %i.hy = add nuw nsw i64 %i.hx, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.hw, 3
  br i1 %min.iters.check, label %.lr.ph63.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.hz = xor i32 %.1.lcssa.i129.i, -1
  %i.ia = add i32 %i.bs, %i.hz
  %i.ib = zext i32 %i.ia to i64                   ; 2 uses
  %i.ic = getelementptr i8, ptr %.136.lcssa.i.i, i64 %i.ib
  %i.id = getelementptr i8, ptr %i.ic, i64 1
  %i.ie = shl nuw nsw i64 %i.ib, 2
  %i.if = getelementptr i8, ptr %.139.lcssa.i.i, i64 %i.ie
  %i.ig = getelementptr i8, ptr %i.if, i64 4
  %bound0 = icmp ult ptr %.136.lcssa.i.i, %i.ig
  %bound1 = icmp ult ptr %.139.lcssa.i.i, %i.id
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph63.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check94 = icmp ult i32 %i.hw, 31
  br i1 %min.iters.check94, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ih = and i64 %i.hy, 28
  %n.vec = and i64 %i.hy, 8589934560              ; 6 uses
  %i.ii = trunc i64 %n.vec to i32
  %i.ij = add i32 %.1.lcssa.i129.i, %i.ii
  %i.ik = getelementptr i8, ptr %.136.lcssa.i.i, i64 %n.vec
  %i.il = shl nuw nsw i64 %n.vec, 2
  %i.im = getelementptr i8, ptr %.139.lcssa.i.i, i64 %i.il
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.gv, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.136.lcssa.i.i, i64 %index ; 4 uses
  %i.in = shl i64 %index, 2
  %next.gep95 = getelementptr i8, ptr %.139.lcssa.i.i, i64 %i.in ; 4 uses
  %i.io = getelementptr i8, ptr %next.gep95, i64 32
  %i.ip = getelementptr i8, ptr %next.gep95, i64 64
  %i.iq = getelementptr i8, ptr %next.gep95, i64 96
  %wide.load = load <8 x float>, ptr %next.gep95, align 4, !tbaa !25, !alias.scope !107
  %wide.load96 = load <8 x float>, ptr %i.io, align 4, !tbaa !25, !alias.scope !107
  %wide.load97 = load <8 x float>, ptr %i.ip, align 4, !tbaa !25, !alias.scope !107
  %wide.load98 = load <8 x float>, ptr %i.iq, align 4, !tbaa !25, !alias.scope !107
  %i.ir = fmul fast <8 x float> %wide.load, %broadcast.splat
  %i.is = fmul fast <8 x float> %wide.load96, %broadcast.splat
  %i.it = fmul fast <8 x float> %wide.load97, %broadcast.splat
  %i.iu = fmul fast <8 x float> %wide.load98, %broadcast.splat
  %i.iv = call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.ir)
  %i.iw = call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.is)
  %i.ix = call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.it)
  %i.iy = call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.iu)
  %i.iz = fptosi <8 x float> %i.iv to <8 x i32>
  %i.ja = fptosi <8 x float> %i.iw to <8 x i32>
  %i.jb = fptosi <8 x float> %i.ix to <8 x i32>
  %i.jc = fptosi <8 x float> %i.iy to <8 x i32>
  %i.jd = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.iz, <8 x i32> splat (i32 -127))
  %i.je = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ja, <8 x i32> splat (i32 -127))
  %i.jf = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.jb, <8 x i32> splat (i32 -127))
  %i.jg = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.jc, <8 x i32> splat (i32 -127))
  %i.jh = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.jd, <8 x i32> splat (i32 127))
  %i.ji = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.je, <8 x i32> splat (i32 127))
  %i.jj = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.jf, <8 x i32> splat (i32 127))
  %i.jk = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.jg, <8 x i32> splat (i32 127))
  %i.jl = trunc nsw <8 x i32> %i.jh to <8 x i8>
  %i.jm = trunc nsw <8 x i32> %i.ji to <8 x i8>
  %i.jn = trunc nsw <8 x i32> %i.jj to <8 x i8>
  %i.jo = trunc nsw <8 x i32> %i.jk to <8 x i8>
  %i.jp = getelementptr i8, ptr %next.gep, i64 8
  %i.jq = getelementptr i8, ptr %next.gep, i64 16
  %i.jr = getelementptr i8, ptr %next.gep, i64 24
  store <8 x i8> %i.jl, ptr %next.gep, align 1, !tbaa !26, !alias.scope !108, !noalias !107
  store <8 x i8> %i.jm, ptr %i.jp, align 1, !tbaa !26, !alias.scope !108, !noalias !107
  store <8 x i8> %i.jn, ptr %i.jq, align 1, !tbaa !26, !alias.scope !108, !noalias !107
  store <8 x i8> %i.jo, ptr %i.jr, align 1, !tbaa !26, !alias.scope !108, !noalias !107
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.js = icmp eq i64 %index.next, %n.vec
  br i1 %i.js, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hy, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ih, 0
  br i1 %min.epilog.iters.check, label %.lr.ph63.i.i.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec99 = and i64 %i.hy, 8589934588            ; 5 uses
  %i.jt = trunc i64 %n.vec99 to i32
  %i.ju = add i32 %.1.lcssa.i129.i, %i.jt
  %i.jv = getelementptr i8, ptr %.136.lcssa.i.i, i64 %n.vec99
  %i.jw = shl nuw nsw i64 %n.vec99, 2
  %i.jx = getelementptr i8, ptr %.139.lcssa.i.i, i64 %i.jw
  %broadcast.splatinsert100 = insertelement <4 x float> poison, float %i.gv, i64 0
  %broadcast.splat101 = shufflevector <4 x float> %broadcast.splatinsert100, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next106, %vec.epilog.vector.body ] ; 3 uses
  %next.gep103 = getelementptr i8, ptr %.136.lcssa.i.i, i64 %index102
  %i.jy = shl i64 %index102, 2
  %next.gep104 = getelementptr i8, ptr %.139.lcssa.i.i, i64 %i.jy
  %wide.load105 = load <4 x float>, ptr %next.gep104, align 4, !tbaa !25, !alias.scope !107
  %i.jz = fmul fast <4 x float> %wide.load105, %broadcast.splat101
  %i.ka = call fast <4 x float> @llvm.round.v4f32(<4 x float> %i.jz)
  %i.kb = fptosi <4 x float> %i.ka to <4 x i32>
  %i.kc = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.kb, <4 x i32> splat (i32 -127))
  %i.kd = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.kc, <4 x i32> splat (i32 127))
  %i.ke = trunc nsw <4 x i32> %i.kd to <4 x i8>
  store <4 x i8> %i.ke, ptr %next.gep103, align 1, !tbaa !26, !alias.scope !108, !noalias !107
  %index.next106 = add nuw i64 %index102, 4       ; 2 uses
  %i.kf = icmp eq i64 %index.next106, %n.vec99
  br i1 %i.kf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !97

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n107 = icmp eq i64 %i.hy, %n.vec99
  br i1 %cmp.n107, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i, label %.lr.ph63.i.i.preheader

.lr.ph63.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.262.i.i.ph = phi i32 [ %.1.lcssa.i129.i, %iter.check ], [ %.1.lcssa.i129.i, %vector.memcheck ], [ %i.ij, %vec.epilog.iter.check ], [ %i.ju, %vec.epilog.middle.block ] ; 4 uses
  %.23761.i.i.ph = phi ptr [ %.136.lcssa.i.i, %iter.check ], [ %.136.lcssa.i.i, %vector.memcheck ], [ %i.ik, %vec.epilog.iter.check ], [ %i.jv, %vec.epilog.middle.block ] ; 3 uses
  %.24060.i.i.ph = phi ptr [ %.139.lcssa.i.i, %iter.check ], [ %.139.lcssa.i.i, %vector.memcheck ], [ %i.im, %vec.epilog.iter.check ], [ %i.jx, %vec.epilog.middle.block ] ; 3 uses
  %i.kg = sub i32 %i.bs, %.262.i.i.ph
  %.neg = add i32 %.262.i.i.ph, 1
  %xtraiter175 = and i32 %i.kg, 1
  %lcmp.mod176.not = icmp eq i32 %xtraiter175, 0
  br i1 %lcmp.mod176.not, label %.lr.ph63.i.i.prol.loopexit, label %.lr.ph63.i.i.prol

.lr.ph63.i.i.prol:                                ; preds = %.lr.ph63.i.i.preheader
  %i.kh = getelementptr inbounds nuw i8, ptr %.24060.i.i.ph, i64 4
  %i.ki = load float, ptr %.24060.i.i.ph, align 4, !tbaa !25
  %i.kj = fmul fast float %i.ki, %i.gv
  %i.kk = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.kj)
  %i.kl = fptosi float %i.kk to i32
  %spec.select.i45.i.i.prol = call i32 @llvm.smax.i32(i32 %i.kl, i32 -127)
  %.0.i46.i.i.prol = call i32 @llvm.smin.i32(i32 %spec.select.i45.i.i.prol, i32 127)
  %.0.i.i.i.prol = trunc nsw i32 %.0.i46.i.i.prol to i8
  %i.km = getelementptr inbounds nuw i8, ptr %.23761.i.i.ph, i64 1
  store i8 %.0.i.i.i.prol, ptr %.23761.i.i.ph, align 1, !tbaa !26
  %i.kn = add nuw nsw i32 %.262.i.i.ph, 1
  br label %.lr.ph63.i.i.prol.loopexit

.lr.ph63.i.i.prol.loopexit:                       ; preds = %.lr.ph63.i.i.prol, %.lr.ph63.i.i.preheader
  %.262.i.i.unr = phi i32 [ %.262.i.i.ph, %.lr.ph63.i.i.preheader ], [ %i.kn, %.lr.ph63.i.i.prol ]
  %.23761.i.i.unr = phi ptr [ %.23761.i.i.ph, %.lr.ph63.i.i.preheader ], [ %i.km, %.lr.ph63.i.i.prol ]
  %.24060.i.i.unr = phi ptr [ %.24060.i.i.ph, %.lr.ph63.i.i.preheader ], [ %i.kh, %.lr.ph63.i.i.prol ]
  %i.ko = icmp eq i32 %i.bs, %.neg
  br i1 %i.ko, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i, label %.lr.ph63.i.i

.lr.ph56.i.i:                                     ; preds = %._crit_edge.i126.i, %.lr.ph56.i.i
  %.154.i.i = phi i32 [ %i.lc, %.lr.ph56.i.i ], [ %.0.lcssa.i128.i, %._crit_edge.i126.i ]
  %.13653.i.i = phi ptr [ %i.lb, %.lr.ph56.i.i ], [ %.035.lcssa.i.i, %._crit_edge.i126.i ] ; 2 uses
  %.13952.i.i = phi ptr [ %i.la, %.lr.ph56.i.i ], [ %.038.lcssa.i127.i, %._crit_edge.i126.i ] ; 2 uses
  %i.kp = load <4 x float>, ptr %.13952.i.i, align 1, !tbaa !26
  %i.kq = fmul fast <4 x float> %i.kp, %i.hr      ; 2 uses
  %i.kr = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.kq)
  %i.ks = fadd fast <4 x float> %i.kr, %i.kq
  %i.kt = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ks)
end_hunk_1
begin_hunk_2_@_ZN4ncnn17lstm_int8_avxvnniERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE:bb.a

bb.ac:                                            ; preds = %bb.w, %bb.c
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.br, %bb.w ], [ %i.ae, %bb.c ]
  %i.nh = load ptr, ptr %i.aa, align 8, !tbaa !102 ; 2 uses
  %.not.i106.i = icmp eq ptr %i.nh, null
  br i1 %.not.i106.i, label %_ZN4ncnn3MatD2Ev.exit89.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ni = atomicrmw add ptr %i.nh, i32 -1 acq_rel, align 4
  %i.nj = icmp eq i32 %i.ni, 1
  br i1 %i.nj, label %bb.ae, label %_ZN4ncnn3MatD2Ev.exit89.i

bb.ae:                                            ; preds = %bb.ad
  %i.nk = load ptr, ptr %i.ab, align 8, !tbaa !103 ; 3 uses
  %.not3.i107.i = icmp eq ptr %i.nk, null
  %i.nl = load ptr, ptr %12, align 8, !tbaa !21   ; 3 uses
  br i1 %.not3.i107.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.nm = load ptr, ptr %i.nk, align 8, !tbaa !105
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.no = load ptr, ptr %i.nn, align 8
  invoke void %i.no(ptr noundef nonnull align 8 dereferenceable(8) %i.nk, ptr noundef %i.nl)
          to label %_ZN4ncnn3MatD2Ev.exit89.i unwind label %bb.ai, !inline_history !84

bb.ag:                                            ; preds = %bb.ae
  %.not.i115.i = icmp eq ptr %i.nl, null
  br i1 %.not.i115.i, label %_ZN4ncnn3MatD2Ev.exit89.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef nonnull %i.nl) #4
  br label %_ZN4ncnn3MatD2Ev.exit89.i

bb.ai:                                            ; preds = %bb.af
  %i.np = landingpad { ptr, i32 }
          catch ptr null
  %i.nq = extractvalue { ptr, i32 } %i.np, 0
  call void @__clang_call_terminate(ptr %i.nq) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit89.i:                        ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #4
  %i.nr = load ptr, ptr %i.x, align 8, !tbaa !102 ; 2 uses
  %.not.i110.i = icmp eq ptr %i.nr, null
  br i1 %.not.i110.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit89.i
  %i.ns = atomicrmw add ptr %i.nr, i32 -1 acq_rel, align 4
  %i.nt = icmp eq i32 %i.ns, 1
  br i1 %i.nt, label %bb.ak, label %_ZN4ncnn3MatD2Ev.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.nu = load ptr, ptr %i.y, align 8, !tbaa !103 ; 3 uses
  %.not3.i111.i = icmp eq ptr %i.nu, null
  %i.nv = load ptr, ptr %11, align 8, !tbaa !21   ; 3 uses
  br i1 %.not3.i111.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.nw = load ptr, ptr %i.nu, align 8, !tbaa !105
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 24
  %i.ny = load ptr, ptr %i.nx, align 8
  invoke void %i.ny(ptr noundef nonnull align 8 dereferenceable(8) %i.nu, ptr noundef %i.nv)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.ao, !inline_history !84

bb.am:                                            ; preds = %bb.ak
  %.not.i114.i = icmp eq ptr %i.nv, null
  br i1 %.not.i114.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @free(ptr noundef nonnull %i.nv) #4
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.ao:                                            ; preds = %bb.al
  %i.nz = landingpad { ptr, i32 }
          catch ptr null
  %i.oa = extractvalue { ptr, i32 } %i.nz, 0
  call void @__clang_call_terminate(ptr %i.oa) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.an, %bb.am, %bb.al, %bb.aj, %_ZN4ncnn3MatD2Ev.exit89.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  resume { ptr, i32 } %.pn.pn.pn.i

_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit91.i, %bb.q, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

declare void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !11     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !11
  %i.h = load i32, ptr %0, align 4, !tbaa !11     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !11
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !11
  %i.k = load i32, ptr %i.a, align 4, !tbaa !11   ; 2 uses
  %.not345 = icmp sgt i32 %i.k, %i.j
  br i1 %.not345, label %._crit_edge349, label %.lr.ph348

.lr.ph348:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph348, %._crit_edge343
  %.0346 = phi i32 [ %i.k, %.lr.ph348 ], [ %i.ls, %._crit_edge343 ] ; 3 uses
  %i.t = load i32, ptr %3, align 4, !tbaa !11
  %i.u = shl nsw i32 %.0346, 1
  %i.v = add nsw i32 %i.t, %i.u                   ; 3 uses
  %i.w = load i32, ptr %5, align 4, !tbaa !11
  %i.x = load ptr, ptr %4, align 8, !tbaa !21
  %i.y = load i32, ptr %i.l, align 4, !tbaa !20
  %i.z = sext i32 %i.y to i64
  %i.aa = sext i32 %i.w to i64                    ; 2 uses
  %i.ab = mul nsw i64 %i.z, %i.aa
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !23
  %i.ad = mul i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ad ; 7 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !21    ; 7 uses
  %i.ag = load ptr, ptr %7, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.aa
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !25
  %i.aj = load float, ptr %8, align 4, !tbaa !25
  %i.ak = load ptr, ptr %9, align 8, !tbaa !21
  %i.al = shl nsw i32 %i.v, 2
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.am
  %i.ao = sdiv i32 %i.v, 2
  %i.ap = load ptr, ptr %10, align 8, !tbaa !21
  %i.aq = load i32, ptr %i.n, align 4, !tbaa !20
  %i.ar = sext i32 %i.aq to i64
  %i.as = sext i32 %i.ao to i64                   ; 2 uses
  %i.at = mul nsw i64 %i.ar, %i.as
  %i.au = load i64, ptr %i.o, align 8, !tbaa !23
  %i.av = mul i64 %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.av ; 2 uses
  %i.ax = load ptr, ptr %11, align 8, !tbaa !21
  %i.ay = load i32, ptr %i.p, align 4, !tbaa !20
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.az, %i.as
  %i.bb = load i64, ptr %i.q, align 8, !tbaa !23
  %i.bc = mul i64 %i.ba, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bc ; 2 uses
  %i.be = load ptr, ptr %12, align 8, !tbaa !21
  %i.bf = load i32, ptr %i.r, align 4, !tbaa !20
  %i.bg = sext i32 %i.bf to i64
  %i.bh = sext i32 %i.v to i64
  %i.bi = mul nsw i64 %i.bg, %i.bh
  %i.bj = load i64, ptr %i.s, align 8, !tbaa !23
  %i.bk = mul i64 %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bk
  %i.bm = load i32, ptr %13, align 4, !tbaa !11   ; 13 uses
  %i.bn = icmp sgt i32 %i.bm, 15
  br i1 %i.bn, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.bo = zext nneg i32 %i.bm to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.0140264 = phi ptr [ %i.aw, %.lr.ph.preheader ], [ %i.cf, %.lr.ph ] ; 5 uses
  %i.bp = phi <8 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ce, %.lr.ph ]
  %i.bq = phi <8 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.cd, %.lr.ph ]
  %i.br = phi <8 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.cc, %.lr.ph ]
  %i.bs = phi <8 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.cb, %.lr.ph ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv
  %15 = load <16 x i8>, ptr %i.bt, align 1, !tbaa !26
  %i.bu = load <32 x i8>, ptr %.0140264, align 1, !tbaa !26
  %i.bv = getelementptr inbounds nuw i8, ptr %.0140264, i64 32
  %i.bw = load <32 x i8>, ptr %i.bv, align 1, !tbaa !26
  %i.bx = getelementptr inbounds nuw i8, ptr %.0140264, i64 64
  %i.by = load <32 x i8>, ptr %i.bx, align 1, !tbaa !26
  %i.bz = getelementptr inbounds nuw i8, ptr %.0140264, i64 96
  %i.ca = load <32 x i8>, ptr %i.bz, align 1, !tbaa !26
  %16 = shufflevector <16 x i8> %15, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.cb = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.bs, <32 x i8> %16, <32 x i8> %i.bu) ; 2 uses
  %i.cc = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.br, <32 x i8> %16, <32 x i8> %i.bw) ; 2 uses
  %i.cd = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.bq, <32 x i8> %16, <32 x i8> %i.by) ; 2 uses
  %i.ce = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.bp, <32 x i8> %16, <32 x i8> %i.ca) ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0140264, i64 128 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %i.cg = or disjoint i64 %indvars.iv.next, 15
  %i.ch = icmp samesign ult i64 %i.cg, %i.bo
  br i1 %i.ch, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !109

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ci = add nuw i32 %i.bm, 2147483632
  %i.cj = and i32 %i.ci, 2147483632
  %narrow = add nuw i32 %i.cj, 16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.lcssa252 = phi <8 x i32> [ zeroinitializer, %bb.c ], [ %i.cb, %._crit_edge.loopexit ]
  %.lcssa251 = phi <8 x i32> [ zeroinitializer, %bb.c ], [ %i.cc, %._crit_edge.loopexit ]
  %.lcssa250 = phi <8 x i32> [ zeroinitializer, %bb.c ], [ %i.cd, %._crit_edge.loopexit ]
  %.lcssa249 = phi <8 x i32> [ zeroinitializer, %bb.c ], [ %i.ce, %._crit_edge.loopexit ]
  %.0140.lcssa = phi ptr [ %i.aw, %bb.c ], [ %i.cf, %._crit_edge.loopexit ] ; 2 uses
  %.0139.lcssa = phi i32 [ 0, %bb.c ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %i.ck = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %.lcssa252, <8 x i32> %.lcssa251)
  %i.cl = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %.lcssa250, <8 x i32> %.lcssa249)
  %i.cm = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %i.ck, <8 x i32> %i.cl)
  %i.cn = or disjoint i32 %.0139.lcssa, 7
  %i.co = icmp slt i32 %i.cn, %i.bm
  br i1 %i.co, label %.lr.ph275.preheader, label %._crit_edge276

.lr.ph275.preheader:                              ; preds = %._crit_edge
  %i.cp = zext nneg i32 %.0139.lcssa to i64
  br label %.lr.ph275

.lr.ph275:                                        ; preds = %.lr.ph275.preheader, %.lr.ph275
  %indvars.iv385 = phi i64 [ %i.cp, %.lr.ph275.preheader ], [ %indvars.iv.next386, %.lr.ph275 ] ; 2 uses
  %.1141272 = phi ptr [ %.0140.lcssa, %.lr.ph275.preheader ], [ %i.dd, %.lr.ph275 ] ; 3 uses
  %i.cq = phi <8 x i32> [ zeroinitializer, %.lr.ph275.preheader ], [ %i.dc, %.lr.ph275 ]
  %i.cr = phi <8 x i32> [ zeroinitializer, %.lr.ph275.preheader ], [ %i.db, %.lr.ph275 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv385
  %i.ct = load double, ptr %i.cs, align 1, !tbaa !26
  %i.cu = insertelement <4 x double> poison, double %i.ct, i64 0
  %i.cv = bitcast <4 x double> %i.cu to <4 x i64>
  %i.cw = shufflevector <4 x i64> %i.cv, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cx = load <32 x i8>, ptr %.1141272, align 1, !tbaa !26
  %i.cy = getelementptr inbounds nuw i8, ptr %.1141272, i64 32
  %i.cz = load <32 x i8>, ptr %i.cy, align 1, !tbaa !26
  %i.da = bitcast <4 x i64> %i.cw to <32 x i8>    ; 2 uses
  %i.db = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cr, <32 x i8> %i.da, <32 x i8> %i.cx) ; 2 uses
  %i.dc = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cq, <32 x i8> %i.da, <32 x i8> %i.cz) ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.1141272, i64 64 ; 2 uses
  %indvars.iv.next386 = add nuw nsw i64 %indvars.iv385, 8 ; 3 uses
  %i.de = trunc i64 %indvars.iv.next386 to i32
  %i.df = or i32 %i.de, 7
  %i.dg = icmp slt i32 %i.df, %i.bm
  br i1 %i.dg, label %.lr.ph275, label %._crit_edge276.loopexit, !llvm.loop !110

._crit_edge276.loopexit:                          ; preds = %.lr.ph275
  %i.dh = trunc nuw i64 %indvars.iv.next386 to i32
  br label %._crit_edge276

._crit_edge276:                                   ; preds = %._crit_edge276.loopexit, %._crit_edge
  %.lcssa254 = phi <8 x i32> [ zeroinitializer, %._crit_edge ], [ %i.db, %._crit_edge276.loopexit ]
  %.lcssa253 = phi <8 x i32> [ zeroinitializer, %._crit_edge ], [ %i.dc, %._crit_edge276.loopexit ]
  %.1141.lcssa = phi ptr [ %.0140.lcssa, %._crit_edge ], [ %i.dd, %._crit_edge276.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0139.lcssa, %._crit_edge ], [ %i.dh, %._crit_edge276.loopexit ] ; 3 uses
  %i.di = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %.lcssa254, <8 x i32> %.lcssa253)
  %i.dj = add <8 x i32> %i.di, %i.cm              ; 2 uses
  %i.dk = or disjoint i32 %.1.lcssa, 3
  %i.dl = icmp slt i32 %i.dk, %i.bm
  br i1 %i.dl, label %.lr.ph285.preheader, label %._crit_edge286

.lr.ph285.preheader:                              ; preds = %._crit_edge276
  %i.dm = zext i32 %.1.lcssa to i64
  br label %.lr.ph285

.lr.ph285:                                        ; preds = %.lr.ph285.preheader, %.lr.ph285
  %indvars.iv388 = phi i64 [ %i.dm, %.lr.ph285.preheader ], [ %indvars.iv.next389, %.lr.ph285 ] ; 2 uses
  %.2142282 = phi ptr [ %.1141.lcssa, %.lr.ph285.preheader ], [ %i.du, %.lr.ph285 ] ; 2 uses
  %.0244.in281 = phi <8 x i32> [ %i.dj, %.lr.ph285.preheader ], [ %i.dt, %.lr.ph285 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv388
  %i.do = load float, ptr %i.dn, align 1, !tbaa !26
  %i.dp = insertelement <8 x float> poison, float %i.do, i64 0
  %i.dq = shufflevector <8 x float> %i.dp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dr = load <32 x i8>, ptr %.2142282, align 1, !tbaa !26
  %i.ds = bitcast <8 x float> %i.dq to <32 x i8>
  %i.dt = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.0244.in281, <32 x i8> %i.ds, <32 x i8> %i.dr) ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.2142282, i64 32 ; 2 uses
  %indvars.iv.next389 = add nuw nsw i64 %indvars.iv388, 4 ; 3 uses
  %i.dv = trunc i64 %indvars.iv.next389 to i32
  %i.dw = or i32 %i.dv, 3
  %i.dx = icmp slt i32 %i.dw, %i.bm
  br i1 %i.dx, label %.lr.ph285, label %._crit_edge286.loopexit, !llvm.loop !111

._crit_edge286.loopexit:                          ; preds = %.lr.ph285
  %i.dy = trunc nuw i64 %indvars.iv.next389 to i32
  br label %._crit_edge286

._crit_edge286:                                   ; preds = %._crit_edge286.loopexit, %._crit_edge276
  %.0244.in.lcssa = phi <8 x i32> [ %i.dj, %._crit_edge276 ], [ %i.dt, %._crit_edge286.loopexit ]
  %.2142.lcssa = phi ptr [ %.1141.lcssa, %._crit_edge276 ], [ %i.du, %._crit_edge286.loopexit ] ; 2 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %._crit_edge276 ], [ %i.dy, %._crit_edge286.loopexit ] ; 3 uses
  %i.dz = load <8 x i32>, ptr %.2142.lcssa, align 1, !tbaa !26
  %i.ea = sub <8 x i32> %.0244.in.lcssa, %i.dz    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.2142.lcssa, i64 32 ; 2 uses
  %i.ec = or disjoint i32 %.2.lcssa, 1
  %i.ed = icmp slt i32 %i.ec, %i.bm
  br i1 %i.ed, label %.lr.ph294.preheader, label %.preheader248

.lr.ph294.preheader:                              ; preds = %._crit_edge286
  %i.ee = zext i32 %.2.lcssa to i64
  br label %.lr.ph294

.preheader248.loopexit:                           ; preds = %.lr.ph294
  %i.ef = trunc nuw i64 %indvars.iv.next392 to i32
  br label %.preheader248

.preheader248:                                    ; preds = %.preheader248.loopexit, %._crit_edge286
  %.1245.in.lcssa = phi <8 x i32> [ %i.ea, %._crit_edge286 ], [ %i.fd, %.preheader248.loopexit ] ; 3 uses
  %.3143.lcssa = phi ptr [ %i.eb, %._crit_edge286 ], [ %i.fe, %.preheader248.loopexit ] ; 4 uses
  %.3.lcssa = phi i32 [ %.2.lcssa, %._crit_edge286 ], [ %i.ef, %.preheader248.loopexit ] ; 4 uses
  %i.eg = icmp slt i32 %.3.lcssa, %i.bm
  br i1 %i.eg, label %.lr.ph300.preheader, label %.preheader247

.lr.ph300.preheader:                              ; preds = %.preheader248
  %i.eh = zext i32 %.3.lcssa to i64               ; 3 uses
  %i.ei = sub i32 %i.bm, %.3.lcssa
  %.neg = add i32 %.3.lcssa, 1
  %xtraiter = and i32 %i.ei, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph300.prol.loopexit, label %.lr.ph300.prol

.lr.ph300.prol:                                   ; preds = %.lr.ph300.preheader
  %i.ej = load <8 x i8>, ptr %.3143.lcssa, align 1, !tbaa !26
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.eh
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !26
  %i.em = sext i8 %i.el to i16
  %i.en = insertelement <8 x i16> poison, i16 %i.em, i64 0
  %i.eo = shufflevector <8 x i16> %i.en, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ep = sext <8 x i8> %i.ej to <8 x i16>
  %i.eq = mul <8 x i16> %i.eo, %i.ep
  %i.er = sext <8 x i16> %i.eq to <8 x i32>
  %i.es = add <8 x i32> %.1245.in.lcssa, %i.er    ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.3143.lcssa, i64 8 ; 2 uses
  %indvars.iv.next395.prol = add nuw nsw i64 %i.eh, 1
  br label %.lr.ph300.prol.loopexit

.lr.ph300.prol.loopexit:                          ; preds = %.lr.ph300.prol, %.lr.ph300.preheader
  %indvars.iv394.unr = phi i64 [ %i.eh, %.lr.ph300.preheader ], [ %indvars.iv.next395.prol, %.lr.ph300.prol ]
  %.4144298.unr = phi ptr [ %.3143.lcssa, %.lr.ph300.preheader ], [ %i.et, %.lr.ph300.prol ]
  %.unr = phi <8 x i32> [ %.1245.in.lcssa, %.lr.ph300.preheader ], [ %i.es, %.lr.ph300.prol ]
  %.lcssa486.unr = phi <8 x i32> [ poison, %.lr.ph300.preheader ], [ %i.es, %.lr.ph300.prol ]
  %.lcssa485.unr = phi ptr [ poison, %.lr.ph300.preheader ], [ %i.et, %.lr.ph300.prol ]
  %i.eu = icmp eq i32 %i.bm, %.neg
  br i1 %i.eu, label %.preheader247, label %.lr.ph300

.lr.ph294:                                        ; preds = %.lr.ph294.preheader, %.lr.ph294
  %indvars.iv391 = phi i64 [ %i.ee, %.lr.ph294.preheader ], [ %indvars.iv.next392, %.lr.ph294 ] ; 2 uses
  %.3143291 = phi ptr [ %i.eb, %.lr.ph294.preheader ], [ %i.fe, %.lr.ph294 ] ; 2 uses
  %.1245.in290 = phi <8 x i32> [ %i.ea, %.lr.ph294.preheader ], [ %i.fd, %.lr.ph294 ]
  %i.ev = load <16 x i8>, ptr %.3143291, align 1, !tbaa !26
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv391
  %i.ex = load float, ptr %i.ew, align 1, !tbaa !26
  %i.ey = insertelement <4 x float> poison, float %i.ex, i64 0
  %i.ez = sext <16 x i8> %i.ev to <16 x i16>
  %i.fa = bitcast <4 x float> %i.ey to <16 x i8>
  %i.fb = shufflevector <16 x i8> %i.fa, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.fc = sext <16 x i8> %i.fb to <16 x i16>
  %i.fd = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.1245.in290, <16 x i16> %i.ez, <16 x i16> %i.fc) ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.3143291, i64 16 ; 2 uses
  %indvars.iv.next392 = add nuw nsw i64 %indvars.iv391, 2 ; 3 uses
  %i.ff = trunc i64 %indvars.iv.next392 to i32
  %i.fg = or i32 %i.ff, 1
  %i.fh = icmp slt i32 %i.fg, %i.bm
  br i1 %i.fh, label %.lr.ph294, label %.preheader248.loopexit, !llvm.loop !112

.preheader247:                                    ; preds = %.lr.ph300.prol.loopexit, %.lr.ph300, %.preheader248
  %.lcssa255 = phi <8 x i32> [ %.1245.in.lcssa, %.preheader248 ], [ %.lcssa486.unr, %.lr.ph300.prol.loopexit ], [ %i.gh, %.lr.ph300 ]
  %.4144.lcssa = phi ptr [ %.3143.lcssa, %.preheader248 ], [ %.lcssa485.unr, %.lr.ph300.prol.loopexit ], [ %i.gi, %.lr.ph300 ] ; 2 uses
  %i.fi = load i32, ptr %14, align 4, !tbaa !11   ; 13 uses
  %i.fj = icmp sgt i32 %i.fi, 15
  br i1 %i.fj, label %.lr.ph305.preheader, label %._crit_edge306

.lr.ph305.preheader:                              ; preds = %.preheader247
  %i.fk = zext nneg i32 %i.fi to i64
  br label %.lr.ph305

.lr.ph300:                                        ; preds = %.lr.ph300.prol.loopexit, %.lr.ph300
  %indvars.iv394 = phi i64 [ %indvars.iv.next395.1, %.lr.ph300 ], [ %indvars.iv394.unr, %.lr.ph300.prol.loopexit ] ; 3 uses
  %.4144298 = phi ptr [ %i.gi, %.lr.ph300 ], [ %.4144298.unr, %.lr.ph300.prol.loopexit ] ; 3 uses
  %i.fl = phi <8 x i32> [ %i.gh, %.lr.ph300 ], [ %.unr, %.lr.ph300.prol.loopexit ]
  %i.fm = load <8 x i8>, ptr %.4144298, align 1, !tbaa !26
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv394
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !26
  %i.fp = sext i8 %i.fo to i16
  %i.fq = insertelement <8 x i16> poison, i16 %i.fp, i64 0
  %i.fr = shufflevector <8 x i16> %i.fq, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.fs = sext <8 x i8> %i.fm to <8 x i16>
  %i.ft = mul <8 x i16> %i.fr, %i.fs
  %i.fu = sext <8 x i16> %i.ft to <8 x i32>
  %i.fv = add <8 x i32> %i.fl, %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %.4144298, i64 8
  %i.fx = load <8 x i8>, ptr %i.fw, align 1, !tbaa !26
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv394
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 1
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !26
  %i.gb = sext i8 %i.ga to i16
  %i.gc = insertelement <8 x i16> poison, i16 %i.gb, i64 0
  %i.gd = shufflevector <8 x i16> %i.gc, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ge = sext <8 x i8> %i.fx to <8 x i16>
  %i.gf = mul <8 x i16> %i.gd, %i.ge
  %i.gg = sext <8 x i16> %i.gf to <8 x i32>
  %i.gh = add <8 x i32> %i.fv, %i.gg              ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.4144298, i64 16 ; 2 uses
  %indvars.iv.next395.1 = add nuw nsw i64 %indvars.iv394, 2 ; 2 uses
  %i.gj = trunc nuw i64 %indvars.iv.next395.1 to i32
  %i.gk = icmp sgt i32 %i.bm, %i.gj
  br i1 %i.gk, label %.lr.ph300, label %.preheader247, !llvm.loop !113

.lr.ph305:                                        ; preds = %.lr.ph305.preheader, %.lr.ph305
  %indvars.iv397 = phi i64 [ 0, %.lr.ph305.preheader ], [ %indvars.iv.next398, %.lr.ph305 ] ; 2 uses
  %.5145303 = phi ptr [ %.4144.lcssa, %.lr.ph305.preheader ], [ %i.hb, %.lr.ph305 ] ; 5 uses
  %i.gl = phi <8 x i32> [ zeroinitializer, %.lr.ph305.preheader ], [ %i.ha, %.lr.ph305 ]
  %i.gm = phi <8 x i32> [ zeroinitializer, %.lr.ph305.preheader ], [ %i.gz, %.lr.ph305 ]
  %i.gn = phi <8 x i32> [ zeroinitializer, %.lr.ph305.preheader ], [ %i.gy, %.lr.ph305 ]
  %i.go = phi <8 x i32> [ zeroinitializer, %.lr.ph305.preheader ], [ %i.gx, %.lr.ph305 ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv397
  %17 = load <16 x i8>, ptr %i.gp, align 1, !tbaa !26
  %i.gq = load <32 x i8>, ptr %.5145303, align 1, !tbaa !26
  %i.gr = getelementptr inbounds nuw i8, ptr %.5145303, i64 32
  %i.gs = load <32 x i8>, ptr %i.gr, align 1, !tbaa !26
  %i.gt = getelementptr inbounds nuw i8, ptr %.5145303, i64 64
  %i.gu = load <32 x i8>, ptr %i.gt, align 1, !tbaa !26
  %i.gv = getelementptr inbounds nuw i8, ptr %.5145303, i64 96
  %i.gw = load <32 x i8>, ptr %i.gv, align 1, !tbaa !26
  %18 = shufflevector <16 x i8> %17, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.gx = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.go, <32 x i8> %18, <32 x i8> %i.gq) ; 2 uses
  %i.gy = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.gn, <32 x i8> %18, <32 x i8> %i.gs) ; 2 uses
  %i.gz = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.gm, <32 x i8> %18, <32 x i8> %i.gu) ; 2 uses
  %i.ha = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.gl, <32 x i8> %18, <32 x i8> %i.gw) ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.5145303, i64 128 ; 2 uses
  %indvars.iv.next398 = add nuw nsw i64 %indvars.iv397, 16 ; 2 uses
  %i.hc = or disjoint i64 %indvars.iv.next398, 15
  %i.hd = icmp samesign ult i64 %i.hc, %i.fk
  br i1 %i.hd, label %.lr.ph305, label %._crit_edge306.loopexit, !llvm.loop !114

._crit_edge306.loopexit:                          ; preds = %.lr.ph305
  %i.he = add nuw i32 %i.fi, 2147483632
  %i.hf = and i32 %i.he, 2147483632
  %narrow421 = add nuw i32 %i.hf, 16
  br label %._crit_edge306

._crit_edge306:                                   ; preds = %._crit_edge306.loopexit, %.preheader247
  %.lcssa260 = phi <8 x i32> [ zeroinitializer, %.preheader247 ], [ %i.gx, %._crit_edge306.loopexit ]
  %.lcssa259 = phi <8 x i32> [ zeroinitializer, %.preheader247 ], [ %i.gy, %._crit_edge306.loopexit ]
  %.lcssa258 = phi <8 x i32> [ zeroinitializer, %.preheader247 ], [ %i.gz, %._crit_edge306.loopexit ]
  %.lcssa257 = phi <8 x i32> [ zeroinitializer, %.preheader247 ], [ %i.ha, %._crit_edge306.loopexit ]
  %.5145.lcssa = phi ptr [ %.4144.lcssa, %.preheader247 ], [ %i.hb, %._crit_edge306.loopexit ] ; 2 uses
  %.5.lcssa = phi i32 [ 0, %.preheader247 ], [ %narrow421, %._crit_edge306.loopexit ] ; 3 uses
  %i.hg = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %.lcssa260, <8 x i32> %.lcssa259)
  %i.hh = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %.lcssa258, <8 x i32> %.lcssa257)
  %i.hi = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %i.hg, <8 x i32> %i.hh)
  %i.hj = or disjoint i32 %.5.lcssa, 7
  %i.hk = icmp slt i32 %i.hj, %i.fi
  br i1 %i.hk, label %.lr.ph317.preheader, label %._crit_edge318

.lr.ph317.preheader:                              ; preds = %._crit_edge306
  %i.hl = zext nneg i32 %.5.lcssa to i64
  br label %.lr.ph317

.lr.ph317:                                        ; preds = %.lr.ph317.preheader, %.lr.ph317
  %indvars.iv400 = phi i64 [ %i.hl, %.lr.ph317.preheader ], [ %indvars.iv.next401, %.lr.ph317 ] ; 2 uses
  %.6146314 = phi ptr [ %.5145.lcssa, %.lr.ph317.preheader ], [ %i.hz, %.lr.ph317 ] ; 3 uses
  %i.hm = phi <8 x i32> [ zeroinitializer, %.lr.ph317.preheader ], [ %i.hy, %.lr.ph317 ]
  %i.hn = phi <8 x i32> [ zeroinitializer, %.lr.ph317.preheader ], [ %i.hx, %.lr.ph317 ]
  %i.ho = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv400
  %i.hp = load double, ptr %i.ho, align 1, !tbaa !26
  %i.hq = insertelement <4 x double> poison, double %i.hp, i64 0
  %i.hr = bitcast <4 x double> %i.hq to <4 x i64>
  %i.hs = shufflevector <4 x i64> %i.hr, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ht = load <32 x i8>, ptr %.6146314, align 1, !tbaa !26
  %i.hu = getelementptr inbounds nuw i8, ptr %.6146314, i64 32
  %i.hv = load <32 x i8>, ptr %i.hu, align 1, !tbaa !26
  %i.hw = bitcast <4 x i64> %i.hs to <32 x i8>    ; 2 uses
  %i.hx = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.hn, <32 x i8> %i.hw, <32 x i8> %i.ht) ; 2 uses
  %i.hy = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.hm, <32 x i8> %i.hw, <32 x i8> %i.hv) ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.6146314, i64 64 ; 2 uses
  %indvars.iv.next401 = add nuw nsw i64 %indvars.iv400, 8 ; 3 uses
  %i.ia = trunc i64 %indvars.iv.next401 to i32
  %i.ib = or i32 %i.ia, 7
  %i.ic = icmp slt i32 %i.ib, %i.fi
  br i1 %i.ic, label %.lr.ph317, label %._crit_edge318.loopexit, !llvm.loop !115

._crit_edge318.loopexit:                          ; preds = %.lr.ph317
  %i.id = trunc nuw i64 %indvars.iv.next401 to i32
  br label %._crit_edge318

._crit_edge318:                                   ; preds = %._crit_edge318.loopexit, %._crit_edge306
  %.lcssa262 = phi <8 x i32> [ zeroinitializer, %._crit_edge306 ], [ %i.hx, %._crit_edge318.loopexit ]
  %.lcssa261 = phi <8 x i32> [ zeroinitializer, %._crit_edge306 ], [ %i.hy, %._crit_edge318.loopexit ]
  %.6146.lcssa = phi ptr [ %.5145.lcssa, %._crit_edge306 ], [ %i.hz, %._crit_edge318.loopexit ] ; 2 uses
  %.6.lcssa = phi i32 [ %.5.lcssa, %._crit_edge306 ], [ %i.id, %._crit_edge318.loopexit ] ; 3 uses
  %i.ie = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %.lcssa262, <8 x i32> %.lcssa261)
  %i.if = add <8 x i32> %i.ie, %i.hi              ; 2 uses
  %i.ig = or disjoint i32 %.6.lcssa, 3
  %i.ih = icmp slt i32 %i.ig, %i.fi
  br i1 %i.ih, label %.lr.ph327.preheader, label %._crit_edge328

.lr.ph327.preheader:                              ; preds = %._crit_edge318
  %i.ii = zext i32 %.6.lcssa to i64
  br label %.lr.ph327

.lr.ph327:                                        ; preds = %.lr.ph327.preheader, %.lr.ph327
  %indvars.iv403 = phi i64 [ %i.ii, %.lr.ph327.preheader ], [ %indvars.iv.next404, %.lr.ph327 ] ; 2 uses
  %.7147324 = phi ptr [ %.6146.lcssa, %.lr.ph327.preheader ], [ %i.iq, %.lr.ph327 ] ; 2 uses
  %.0229.in323 = phi <8 x i32> [ %i.if, %.lr.ph327.preheader ], [ %i.ip, %.lr.ph327 ]
  %i.ij = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv403
  %i.ik = load float, ptr %i.ij, align 1, !tbaa !26
  %i.il = insertelement <8 x float> poison, float %i.ik, i64 0
  %i.im = shufflevector <8 x float> %i.il, <8 x float> poison, <8 x i32> zeroinitializer
  %i.in = load <32 x i8>, ptr %.7147324, align 1, !tbaa !26
  %i.io = bitcast <8 x float> %i.im to <32 x i8>
  %i.ip = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.0229.in323, <32 x i8> %i.io, <32 x i8> %i.in) ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.7147324, i64 32 ; 2 uses
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 4 ; 3 uses
  %i.ir = trunc i64 %indvars.iv.next404 to i32
  %i.is = or i32 %i.ir, 3
  %i.it = icmp slt i32 %i.is, %i.fi
  br i1 %i.it, label %.lr.ph327, label %._crit_edge328.loopexit, !llvm.loop !116

._crit_edge328.loopexit:                          ; preds = %.lr.ph327
  %i.iu = trunc nuw i64 %indvars.iv.next404 to i32
  br label %._crit_edge328

._crit_edge328:                                   ; preds = %._crit_edge328.loopexit, %._crit_edge318
  %.0229.in.lcssa = phi <8 x i32> [ %i.if, %._crit_edge318 ], [ %i.ip, %._crit_edge328.loopexit ]
  %.7147.lcssa = phi ptr [ %.6146.lcssa, %._crit_edge318 ], [ %i.iq, %._crit_edge328.loopexit ] ; 2 uses
  %.7.lcssa = phi i32 [ %.6.lcssa, %._crit_edge318 ], [ %i.iu, %._crit_edge328.loopexit ] ; 3 uses
  %i.iv = load <8 x i32>, ptr %.7147.lcssa, align 1, !tbaa !26
  %i.iw = sub <8 x i32> %.0229.in.lcssa, %i.iv    ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.7147.lcssa, i64 32 ; 2 uses
  %i.iy = or disjoint i32 %.7.lcssa, 1
  %i.iz = icmp slt i32 %i.iy, %i.fi
  br i1 %i.iz, label %.lr.ph336.preheader, label %.preheader

.lr.ph336.preheader:                              ; preds = %._crit_edge328
  %i.ja = zext i32 %.7.lcssa to i64
  br label %.lr.ph336

.preheader.loopexit:                              ; preds = %.lr.ph336
  %i.jb = trunc nuw i64 %indvars.iv.next407 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge328
  %.1230.in.lcssa = phi <8 x i32> [ %i.iw, %._crit_edge328 ], [ %i.jz, %.preheader.loopexit ] ; 3 uses
  %.8148.lcssa = phi ptr [ %i.ix, %._crit_edge328 ], [ %i.ka, %.preheader.loopexit ] ; 3 uses
  %.8.lcssa = phi i32 [ %.7.lcssa, %._crit_edge328 ], [ %i.jb, %.preheader.loopexit ] ; 4 uses
  %i.jc = icmp slt i32 %.8.lcssa, %i.fi
  br i1 %i.jc, label %.lr.ph342.preheader, label %._crit_edge343

.lr.ph342.preheader:                              ; preds = %.preheader
  %i.jd = zext i32 %.8.lcssa to i64               ; 3 uses
  %i.je = sub i32 %i.fi, %.8.lcssa
  %.neg503 = add i32 %.8.lcssa, 1
  %xtraiter500 = and i32 %i.je, 1
  %lcmp.mod501.not = icmp eq i32 %xtraiter500, 0
  br i1 %lcmp.mod501.not, label %.lr.ph342.prol.loopexit, label %.lr.ph342.prol

.lr.ph342.prol:                                   ; preds = %.lr.ph342.preheader
  %i.jf = load <8 x i8>, ptr %.8148.lcssa, align 1, !tbaa !26
  %i.jg = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.jd
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !26
  %i.ji = sext i8 %i.jh to i16
  %i.jj = insertelement <8 x i16> poison, i16 %i.ji, i64 0
  %i.jk = shufflevector <8 x i16> %i.jj, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.jl = sext <8 x i8> %i.jf to <8 x i16>
  %i.jm = mul <8 x i16> %i.jk, %i.jl
  %i.jn = sext <8 x i16> %i.jm to <8 x i32>
  %i.jo = add <8 x i32> %.1230.in.lcssa, %i.jn    ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.8148.lcssa, i64 8
  %indvars.iv.next410.prol = add nuw nsw i64 %i.jd, 1
  br label %.lr.ph342.prol.loopexit

.lr.ph342.prol.loopexit:                          ; preds = %.lr.ph342.prol, %.lr.ph342.preheader
  %indvars.iv409.unr = phi i64 [ %i.jd, %.lr.ph342.preheader ], [ %indvars.iv.next410.prol, %.lr.ph342.prol ]
  %.9149340.unr = phi ptr [ %.8148.lcssa, %.lr.ph342.preheader ], [ %i.jp, %.lr.ph342.prol ]
  %.unr502 = phi <8 x i32> [ %.1230.in.lcssa, %.lr.ph342.preheader ], [ %i.jo, %.lr.ph342.prol ]
  %.lcssa499.unr = phi <8 x i32> [ poison, %.lr.ph342.preheader ], [ %i.jo, %.lr.ph342.prol ]
  %i.jq = icmp eq i32 %i.fi, %.neg503
  br i1 %i.jq, label %._crit_edge343, label %.lr.ph342

.lr.ph336:                                        ; preds = %.lr.ph336.preheader, %.lr.ph336
  %indvars.iv406 = phi i64 [ %i.ja, %.lr.ph336.preheader ], [ %indvars.iv.next407, %.lr.ph336 ] ; 2 uses
  %.8148333 = phi ptr [ %i.ix, %.lr.ph336.preheader ], [ %i.ka, %.lr.ph336 ] ; 2 uses
  %.1230.in332 = phi <8 x i32> [ %i.iw, %.lr.ph336.preheader ], [ %i.jz, %.lr.ph336 ]
  %i.jr = load <16 x i8>, ptr %.8148333, align 1, !tbaa !26
  %i.js = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv406
  %i.jt = load float, ptr %i.js, align 1, !tbaa !26
  %i.ju = insertelement <4 x float> poison, float %i.jt, i64 0
  %i.jv = sext <16 x i8> %i.jr to <16 x i16>
  %i.jw = bitcast <4 x float> %i.ju to <16 x i8>
  %i.jx = shufflevector <16 x i8> %i.jw, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.jy = sext <16 x i8> %i.jx to <16 x i16>
  %i.jz = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.1230.in332, <16 x i16> %i.jv, <16 x i16> %i.jy) ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.8148333, i64 16 ; 2 uses
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 2 ; 3 uses
  %i.kb = trunc i64 %indvars.iv.next407 to i32
  %i.kc = or i32 %i.kb, 1
  %i.kd = icmp slt i32 %i.kc, %i.fi
  br i1 %i.kd, label %.lr.ph336, label %.preheader.loopexit, !llvm.loop !117

.lr.ph342:                                        ; preds = %.lr.ph342.prol.loopexit, %.lr.ph342
  %indvars.iv409 = phi i64 [ %indvars.iv.next410.1, %.lr.ph342 ], [ %indvars.iv409.unr, %.lr.ph342.prol.loopexit ] ; 3 uses
  %.9149340 = phi ptr [ %i.lb, %.lr.ph342 ], [ %.9149340.unr, %.lr.ph342.prol.loopexit ] ; 3 uses
  %i.ke = phi <8 x i32> [ %i.la, %.lr.ph342 ], [ %.unr502, %.lr.ph342.prol.loopexit ]
  %i.kf = load <8 x i8>, ptr %.9149340, align 1, !tbaa !26
  %i.kg = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv409
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !26
  %i.ki = sext i8 %i.kh to i16
  %i.kj = insertelement <8 x i16> poison, i16 %i.ki, i64 0
  %i.kk = shufflevector <8 x i16> %i.kj, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kl = sext <8 x i8> %i.kf to <8 x i16>
  %i.km = mul <8 x i16> %i.kk, %i.kl
  %i.kn = sext <8 x i16> %i.km to <8 x i32>
  %i.ko = add <8 x i32> %i.ke, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %.9149340, i64 8
  %i.kq = load <8 x i8>, ptr %i.kp, align 1, !tbaa !26
  %i.kr = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv409
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 1
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !26
  %i.ku = sext i8 %i.kt to i16
  %i.kv = insertelement <8 x i16> poison, i16 %i.ku, i64 0
  %i.kw = shufflevector <8 x i16> %i.kv, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kx = sext <8 x i8> %i.kq to <8 x i16>
  %i.ky = mul <8 x i16> %i.kw, %i.kx
  %i.kz = sext <8 x i16> %i.ky to <8 x i32>
  %i.la = add <8 x i32> %i.ko, %i.kz              ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.9149340, i64 16
  %indvars.iv.next410.1 = add nuw nsw i64 %indvars.iv409, 2 ; 2 uses
  %i.lc = trunc nuw i64 %indvars.iv.next410.1 to i32
end_hunk_2
begin_hunk_3_@_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined:bb.a
  %i.ll = fmul fast <8 x float> %i.lj, %i.lf
  %i.lm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lk, <8 x float> nofpclass(nan inf) %i.ll, <8 x float> nofpclass(nan inf) %i.li)
  %i.ln = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.lo = load <8 x float>, ptr %i.ln, align 1, !tbaa !26
  %i.lp = sitofp fast <8 x i32> %.lcssa263 to <8 x float>
  %i.lq = fmul fast <8 x float> %i.lo, %i.lh
  %i.lr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lp, <8 x float> nofpclass(nan inf) %i.lq, <8 x float> nofpclass(nan inf) %i.lm)
  store <8 x float> %i.lr, ptr %i.bl, align 1, !tbaa !26
  %i.ls = add i32 %.0346, 1
  %exitcond.not = icmp eq i32 %.0346, %i.j
  br i1 %exitcond.not, label %._crit_edge349, label %bb.c

._crit_edge349:                                   ; preds = %._crit_edge343, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge349, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !11     ; 3 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !11     ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = xor i32 %i.e, -1
  %i.i = add i32 %i.f, %i.h                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.i, ptr %i.b, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !11
  %i.j = load i32, ptr %0, align 4, !tbaa !11     ; 2 uses
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !11
  %i.l = call i32 @llvm.umin.i32(i32 %i.k, i32 %i.i) ; 3 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !11
  %i.m = load i32, ptr %i.a, align 4, !tbaa !11   ; 2 uses
  %i.n = add i32 %i.l, 1
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %.lr.ph364, label %._crit_edge365

.lr.ph364:                                        ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph364, %._crit_edge360
  %.0362 = phi i32 [ %i.m, %.lr.ph364 ], [ %i.nc, %._crit_edge360 ] ; 3 uses
  %i.x = add i32 %.0362, %i.e                     ; 4 uses
  %i.y = load i32, ptr %5, align 4, !tbaa !11
  %i.z = load ptr, ptr %4, align 8, !tbaa !21
  %i.aa = load i32, ptr %i.p, align 4, !tbaa !20
  %i.ab = sext i32 %i.aa to i64
  %i.ac = sext i32 %i.y to i64                    ; 2 uses
  %i.ad = mul nsw i64 %i.ab, %i.ac
  %i.ae = load i64, ptr %i.q, align 8, !tbaa !23
  %i.af = mul i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.af ; 7 uses
  %i.ah = load ptr, ptr %6, align 8, !tbaa !21    ; 7 uses
  %i.ai = load ptr, ptr %7, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ac
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !25
  %i.al = load float, ptr %8, align 4, !tbaa !25
  %i.am = load ptr, ptr %9, align 8, !tbaa !21
  %i.an = shl nsw i32 %i.x, 2
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ao
  %i.aq = sdiv i32 %i.x, 2
  %i.ar = srem i32 %i.x, 2
  %i.as = add nsw i32 %i.aq, %i.ar
  %i.at = load ptr, ptr %10, align 8, !tbaa !21
  %i.au = load i32, ptr %i.r, align 4, !tbaa !20
  %i.av = sext i32 %i.au to i64
  %i.aw = sext i32 %i.as to i64                   ; 2 uses
  %i.ax = mul nsw i64 %i.av, %i.aw
  %i.ay = load i64, ptr %i.s, align 8, !tbaa !23
  %i.az = mul i64 %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.az ; 2 uses
  %i.bb = load ptr, ptr %11, align 8, !tbaa !21
  %i.bc = load i32, ptr %i.t, align 4, !tbaa !20
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul nsw i64 %i.bd, %i.aw
  %i.bf = load i64, ptr %i.u, align 8, !tbaa !23
  %i.bg = mul i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bg ; 2 uses
  %i.bi = load ptr, ptr %12, align 8, !tbaa !21
  %i.bj = load i32, ptr %i.v, align 4, !tbaa !20
  %i.bk = sext i32 %i.bj to i64
  %i.bl = sext i32 %i.x to i64
  %i.bm = mul nsw i64 %i.bk, %i.bl
  %i.bn = load i64, ptr %i.w, align 8, !tbaa !23
  %i.bo = mul i64 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bo
  %i.bq = load i32, ptr %13, align 4, !tbaa !11   ; 13 uses
  %i.br = icmp sgt i32 %i.bq, 15
  br i1 %i.br, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.bs = zext nneg i32 %i.bq to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.0140281 = phi ptr [ %i.ba, %.lr.ph.preheader ], [ %i.ck, %.lr.ph ] ; 5 uses
  %i.bt = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.cj, %.lr.ph ]
  %i.bu = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ci, %.lr.ph ]
  %i.bv = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ch, %.lr.ph ]
  %i.bw = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.cg, %.lr.ph ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv
  %i.by = load <16 x i8>, ptr %i.bx, align 1, !tbaa !26 ; 4 uses
  %i.bz = load <16 x i8>, ptr %.0140281, align 1, !tbaa !26
  %i.ca = getelementptr inbounds nuw i8, ptr %.0140281, i64 16
  %i.cb = load <16 x i8>, ptr %i.ca, align 1, !tbaa !26
  %i.cc = getelementptr inbounds nuw i8, ptr %.0140281, i64 32
  %i.cd = load <16 x i8>, ptr %i.cc, align 1, !tbaa !26
  %i.ce = getelementptr inbounds nuw i8, ptr %.0140281, i64 48
  %i.cf = load <16 x i8>, ptr %i.ce, align 1, !tbaa !26
  %i.cg = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.bw, <16 x i8> %i.by, <16 x i8> %i.bz) ; 2 uses
  %i.ch = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.bv, <16 x i8> %i.by, <16 x i8> %i.cb) ; 2 uses
  %i.ci = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.bu, <16 x i8> %i.by, <16 x i8> %i.cd) ; 2 uses
  %i.cj = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.bt, <16 x i8> %i.by, <16 x i8> %i.cf) ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0140281, i64 64 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %i.cl = or disjoint i64 %indvars.iv.next, 15
  %i.cm = icmp samesign ult i64 %i.cl, %i.bs
  br i1 %i.cm, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !119

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.cn = add nuw i32 %i.bq, 2147483632
  %i.co = and i32 %i.cn, 2147483632
  %narrow = add nuw i32 %i.co, 16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.lcssa269 = phi <4 x i32> [ zeroinitializer, %bb.c ], [ %i.cg, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa268 = phi <4 x i32> [ zeroinitializer, %bb.c ], [ %i.ch, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa267 = phi <4 x i32> [ zeroinitializer, %bb.c ], [ %i.ci, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa266 = phi <4 x i32> [ zeroinitializer, %bb.c ], [ %i.cj, %._crit_edge.loopexit ] ; 2 uses
  %.0140.lcssa = phi ptr [ %i.ba, %bb.c ], [ %i.ck, %._crit_edge.loopexit ] ; 2 uses
  %.0139.lcssa = phi i32 [ 0, %bb.c ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %i.cp = shufflevector <4 x i32> %.lcssa269, <4 x i32> %.lcssa268, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.cq = bitcast <4 x i32> %i.cp to <2 x i64>    ; 2 uses
  %i.cr = shufflevector <4 x i32> %.lcssa269, <4 x i32> %.lcssa268, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.cs = bitcast <4 x i32> %i.cr to <2 x i64>    ; 2 uses
  %i.ct = shufflevector <4 x i32> %.lcssa267, <4 x i32> %.lcssa266, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.cu = bitcast <4 x i32> %i.ct to <2 x i64>    ; 2 uses
  %i.cv = shufflevector <4 x i32> %.lcssa267, <4 x i32> %.lcssa266, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.cw = bitcast <4 x i32> %i.cv to <2 x i64>    ; 2 uses
  %i.cx = shufflevector <2 x i64> %i.cq, <2 x i64> %i.cu, <2 x i32> <i32 0, i32 2>
  %i.cy = shufflevector <2 x i64> %i.cq, <2 x i64> %i.cu, <2 x i32> <i32 1, i32 3>
  %i.cz = shufflevector <2 x i64> %i.cs, <2 x i64> %i.cw, <2 x i32> <i32 0, i32 2>
  %i.da = shufflevector <2 x i64> %i.cs, <2 x i64> %i.cw, <2 x i32> <i32 1, i32 3>
  %i.db = bitcast <2 x i64> %i.cx to <4 x i32>
  %i.dc = bitcast <2 x i64> %i.cy to <4 x i32>
  %i.dd = add <4 x i32> %i.db, %i.dc
  %i.de = bitcast <2 x i64> %i.cz to <4 x i32>
  %i.df = add <4 x i32> %i.dd, %i.de
  %i.dg = bitcast <2 x i64> %i.da to <4 x i32>
  %i.dh = add <4 x i32> %i.df, %i.dg
  %i.di = or disjoint i32 %.0139.lcssa, 7
  %i.dj = icmp slt i32 %i.di, %i.bq
  br i1 %i.dj, label %.lr.ph292.preheader, label %._crit_edge293

.lr.ph292.preheader:                              ; preds = %._crit_edge
  %i.dk = zext nneg i32 %.0139.lcssa to i64
  br label %.lr.ph292

.lr.ph292:                                        ; preds = %.lr.ph292.preheader, %.lr.ph292
  %indvars.iv401 = phi i64 [ %i.dk, %.lr.ph292.preheader ], [ %indvars.iv.next402, %.lr.ph292 ] ; 2 uses
  %.1141289 = phi ptr [ %.0140.lcssa, %.lr.ph292.preheader ], [ %i.dv, %.lr.ph292 ] ; 3 uses
  %i.dl = phi <4 x i32> [ zeroinitializer, %.lr.ph292.preheader ], [ %i.du, %.lr.ph292 ]
  %i.dm = phi <4 x i32> [ zeroinitializer, %.lr.ph292.preheader ], [ %i.dt, %.lr.ph292 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv401
  %i.do = load double, ptr %i.dn, align 1, !tbaa !26
  %i.dp = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dq = load <16 x i8>, ptr %.1141289, align 1, !tbaa !26
  %i.dr = getelementptr inbounds nuw i8, ptr %.1141289, i64 16
  %i.ds = load <16 x i8>, ptr %i.dr, align 1, !tbaa !26
  %15 = bitcast <2 x double> %i.dp to <16 x i8>
  %16 = shufflevector <16 x i8> %15, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.dt = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.dm, <16 x i8> %16, <16 x i8> %i.dq) ; 2 uses
  %i.du = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.dl, <16 x i8> %16, <16 x i8> %i.ds) ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.1141289, i64 32 ; 2 uses
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 8 ; 3 uses
  %i.dw = trunc i64 %indvars.iv.next402 to i32
  %i.dx = or i32 %i.dw, 7
  %i.dy = icmp slt i32 %i.dx, %i.bq
  br i1 %i.dy, label %.lr.ph292, label %._crit_edge293.loopexit, !llvm.loop !120

._crit_edge293.loopexit:                          ; preds = %.lr.ph292
  %i.dz = trunc nuw i64 %indvars.iv.next402 to i32
  br label %._crit_edge293

._crit_edge293:                                   ; preds = %._crit_edge293.loopexit, %._crit_edge
  %.lcssa271 = phi <4 x i32> [ zeroinitializer, %._crit_edge ], [ %i.dt, %._crit_edge293.loopexit ]
  %.lcssa270 = phi <4 x i32> [ zeroinitializer, %._crit_edge ], [ %i.du, %._crit_edge293.loopexit ]
  %.1141.lcssa = phi ptr [ %.0140.lcssa, %._crit_edge ], [ %i.dv, %._crit_edge293.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0139.lcssa, %._crit_edge ], [ %i.dz, %._crit_edge293.loopexit ] ; 3 uses
  %i.ea = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %.lcssa271, <4 x i32> %.lcssa270)
  %i.eb = add <4 x i32> %i.dh, %i.ea              ; 2 uses
  %i.ec = or disjoint i32 %.1.lcssa, 3
  %i.ed = icmp slt i32 %i.ec, %i.bq
  br i1 %i.ed, label %.lr.ph302.preheader, label %._crit_edge303

.lr.ph302.preheader:                              ; preds = %._crit_edge293
  %i.ee = zext i32 %.1.lcssa to i64
  br label %.lr.ph302

.lr.ph302:                                        ; preds = %.lr.ph302.preheader, %.lr.ph302
  %indvars.iv404 = phi i64 [ %i.ee, %.lr.ph302.preheader ], [ %indvars.iv.next405, %.lr.ph302 ] ; 2 uses
  %.2142299 = phi ptr [ %.1141.lcssa, %.lr.ph302.preheader ], [ %i.ek, %.lr.ph302 ] ; 2 uses
  %.0261.in298 = phi <4 x i32> [ %i.eb, %.lr.ph302.preheader ], [ %i.ej, %.lr.ph302 ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv404
  %i.eg = load float, ptr %i.ef, align 1, !tbaa !26
  %i.eh = insertelement <4 x float> poison, float %i.eg, i64 0
  %i.ei = load <16 x i8>, ptr %.2142299, align 1, !tbaa !26
  %17 = bitcast <4 x float> %i.eh to <16 x i8>
  %18 = shufflevector <16 x i8> %17, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ej = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %.0261.in298, <16 x i8> %18, <16 x i8> %i.ei) ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.2142299, i64 16 ; 2 uses
  %indvars.iv.next405 = add nuw nsw i64 %indvars.iv404, 4 ; 3 uses
  %i.el = trunc i64 %indvars.iv.next405 to i32
  %i.em = or i32 %i.el, 3
  %i.en = icmp slt i32 %i.em, %i.bq
  br i1 %i.en, label %.lr.ph302, label %._crit_edge303.loopexit, !llvm.loop !121

._crit_edge303.loopexit:                          ; preds = %.lr.ph302
  %i.eo = trunc nuw i64 %indvars.iv.next405 to i32
  br label %._crit_edge303

._crit_edge303:                                   ; preds = %._crit_edge303.loopexit, %._crit_edge293
  %.0261.in.lcssa = phi <4 x i32> [ %i.eb, %._crit_edge293 ], [ %i.ej, %._crit_edge303.loopexit ]
  %.2142.lcssa = phi ptr [ %.1141.lcssa, %._crit_edge293 ], [ %i.ek, %._crit_edge303.loopexit ] ; 2 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %._crit_edge293 ], [ %i.eo, %._crit_edge303.loopexit ] ; 3 uses
  %i.ep = load <4 x i32>, ptr %.2142.lcssa, align 1, !tbaa !26
  %i.eq = sub <4 x i32> %.0261.in.lcssa, %i.ep    ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.2142.lcssa, i64 16 ; 2 uses
  %i.es = or disjoint i32 %.2.lcssa, 1
  %i.et = icmp slt i32 %i.es, %i.bq
  br i1 %i.et, label %.lr.ph311.preheader, label %.preheader265

.lr.ph311.preheader:                              ; preds = %._crit_edge303
  %i.eu = zext i32 %.2.lcssa to i64
  br label %.lr.ph311

.preheader265.loopexit:                           ; preds = %.lr.ph311
  %i.ev = trunc nuw i64 %indvars.iv.next408 to i32
  br label %.preheader265

.preheader265:                                    ; preds = %.preheader265.loopexit, %._crit_edge303
  %.1262.in.lcssa = phi <4 x i32> [ %i.eq, %._crit_edge303 ], [ %i.ft, %.preheader265.loopexit ] ; 3 uses
  %.3143.lcssa = phi ptr [ %i.er, %._crit_edge303 ], [ %i.fu, %.preheader265.loopexit ] ; 4 uses
  %.3.lcssa = phi i32 [ %.2.lcssa, %._crit_edge303 ], [ %i.ev, %.preheader265.loopexit ] ; 4 uses
  %i.ew = icmp slt i32 %.3.lcssa, %i.bq
  br i1 %i.ew, label %.lr.ph317.preheader, label %.preheader264

.lr.ph317.preheader:                              ; preds = %.preheader265
  %i.ex = zext i32 %.3.lcssa to i64               ; 3 uses
  %i.ey = sub i32 %i.bq, %.3.lcssa
  %.neg = add i32 %.3.lcssa, 1
  %xtraiter = and i32 %i.ey, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph317.prol.loopexit, label %.lr.ph317.prol

.lr.ph317.prol:                                   ; preds = %.lr.ph317.preheader
  %i.ez = load <8 x i8>, ptr %.3143.lcssa, align 1, !tbaa !26
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ex
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !26
  %i.fc = sext i8 %i.fb to i16
  %i.fd = insertelement <8 x i16> poison, i16 %i.fc, i64 0
  %i.fe = shufflevector <8 x i16> %i.fd, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ff = sext <8 x i8> %i.ez to <8 x i16>        ; 2 uses
  %i.fg = mul <8 x i16> %i.fe, %i.ff
  %i.fh = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.ff, <8 x i16> %i.fe)
  %i.fi = shufflevector <8 x i16> %i.fg, <8 x i16> %i.fh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fj = bitcast <8 x i16> %i.fi to <4 x i32>
  %i.fk = add <4 x i32> %.1262.in.lcssa, %i.fj    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.3143.lcssa, i64 4 ; 2 uses
  %indvars.iv.next411.prol = add nuw nsw i64 %i.ex, 1
  br label %.lr.ph317.prol.loopexit

.lr.ph317.prol.loopexit:                          ; preds = %.lr.ph317.prol, %.lr.ph317.preheader
  %indvars.iv410.unr = phi i64 [ %i.ex, %.lr.ph317.preheader ], [ %indvars.iv.next411.prol, %.lr.ph317.prol ]
  %.4144315.unr = phi ptr [ %.3143.lcssa, %.lr.ph317.preheader ], [ %i.fl, %.lr.ph317.prol ]
  %.unr = phi <4 x i32> [ %.1262.in.lcssa, %.lr.ph317.preheader ], [ %i.fk, %.lr.ph317.prol ]
  %.lcssa503.unr = phi <4 x i32> [ poison, %.lr.ph317.preheader ], [ %i.fk, %.lr.ph317.prol ]
  %.lcssa502.unr = phi ptr [ poison, %.lr.ph317.preheader ], [ %i.fl, %.lr.ph317.prol ]
  %i.fm = icmp eq i32 %i.bq, %.neg
  br i1 %i.fm, label %.preheader264, label %.lr.ph317

.lr.ph311:                                        ; preds = %.lr.ph311.preheader, %.lr.ph311
  %indvars.iv407 = phi i64 [ %i.eu, %.lr.ph311.preheader ], [ %indvars.iv.next408, %.lr.ph311 ] ; 2 uses
  %.3143308 = phi ptr [ %i.er, %.lr.ph311.preheader ], [ %i.fu, %.lr.ph311 ] ; 2 uses
  %.1262.in307 = phi <4 x i32> [ %i.eq, %.lr.ph311.preheader ], [ %i.ft, %.lr.ph311 ]
  %i.fn = load <8 x i8>, ptr %.3143308, align 1, !tbaa !26
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv407
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !130
  %i.fq = insertelement <8 x i16> poison, i16 %i.fp, i64 0
  %i.fr = sext <8 x i8> %i.fn to <8 x i16>
  %19 = bitcast <8 x i16> %i.fq to <16 x i8>
  %20 = shufflevector <16 x i8> %19, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.fs = sext <8 x i8> %20 to <8 x i16>
  %i.ft = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.1262.in307, <8 x i16> %i.fr, <8 x i16> %i.fs) ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.3143308, i64 8 ; 2 uses
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 2 ; 3 uses
  %i.fv = trunc i64 %indvars.iv.next408 to i32
  %i.fw = or i32 %i.fv, 1
  %i.fx = icmp slt i32 %i.fw, %i.bq
  br i1 %i.fx, label %.lr.ph311, label %.preheader265.loopexit, !llvm.loop !122

.preheader264:                                    ; preds = %.lr.ph317.prol.loopexit, %.lr.ph317, %.preheader265
  %.lcssa272 = phi <4 x i32> [ %.1262.in.lcssa, %.preheader265 ], [ %.lcssa503.unr, %.lr.ph317.prol.loopexit ], [ %i.hb, %.lr.ph317 ]
  %.4144.lcssa = phi ptr [ %.3143.lcssa, %.preheader265 ], [ %.lcssa502.unr, %.lr.ph317.prol.loopexit ], [ %i.hc, %.lr.ph317 ] ; 2 uses
  %i.fy = load i32, ptr %14, align 4, !tbaa !11   ; 13 uses
  %i.fz = icmp sgt i32 %i.fy, 15
  br i1 %i.fz, label %.lr.ph322.preheader, label %._crit_edge323

.lr.ph322.preheader:                              ; preds = %.preheader264
  %i.ga = zext nneg i32 %i.fy to i64
  br label %.lr.ph322

.lr.ph317:                                        ; preds = %.lr.ph317.prol.loopexit, %.lr.ph317
  %indvars.iv410 = phi i64 [ %indvars.iv.next411.1, %.lr.ph317 ], [ %indvars.iv410.unr, %.lr.ph317.prol.loopexit ] ; 3 uses
  %.4144315 = phi ptr [ %i.hc, %.lr.ph317 ], [ %.4144315.unr, %.lr.ph317.prol.loopexit ] ; 3 uses
  %i.gb = phi <4 x i32> [ %i.hb, %.lr.ph317 ], [ %.unr, %.lr.ph317.prol.loopexit ]
  %i.gc = load <8 x i8>, ptr %.4144315, align 1, !tbaa !26
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv410
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !26
  %i.gf = sext i8 %i.ge to i16
  %i.gg = insertelement <8 x i16> poison, i16 %i.gf, i64 0
  %i.gh = shufflevector <8 x i16> %i.gg, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.gi = sext <8 x i8> %i.gc to <8 x i16>        ; 2 uses
  %i.gj = mul <8 x i16> %i.gh, %i.gi
  %i.gk = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.gi, <8 x i16> %i.gh)
  %i.gl = shufflevector <8 x i16> %i.gj, <8 x i16> %i.gk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gm = bitcast <8 x i16> %i.gl to <4 x i32>
  %i.gn = add <4 x i32> %i.gb, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %.4144315, i64 4
  %i.gp = load <8 x i8>, ptr %i.go, align 1, !tbaa !26
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv410
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !26
  %i.gt = sext i8 %i.gs to i16
  %i.gu = insertelement <8 x i16> poison, i16 %i.gt, i64 0
  %i.gv = shufflevector <8 x i16> %i.gu, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.gw = sext <8 x i8> %i.gp to <8 x i16>        ; 2 uses
  %i.gx = mul <8 x i16> %i.gv, %i.gw
  %i.gy = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.gw, <8 x i16> %i.gv)
  %i.gz = shufflevector <8 x i16> %i.gx, <8 x i16> %i.gy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ha = bitcast <8 x i16> %i.gz to <4 x i32>
  %i.hb = add <4 x i32> %i.gn, %i.ha              ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.4144315, i64 8 ; 2 uses
  %indvars.iv.next411.1 = add nuw nsw i64 %indvars.iv410, 2 ; 2 uses
  %i.hd = trunc nuw i64 %indvars.iv.next411.1 to i32
  %i.he = icmp sgt i32 %i.bq, %i.hd
  br i1 %i.he, label %.lr.ph317, label %.preheader264, !llvm.loop !123

.lr.ph322:                                        ; preds = %.lr.ph322.preheader, %.lr.ph322
  %indvars.iv413 = phi i64 [ 0, %.lr.ph322.preheader ], [ %indvars.iv.next414, %.lr.ph322 ] ; 2 uses
  %.5145320 = phi ptr [ %.4144.lcssa, %.lr.ph322.preheader ], [ %i.hw, %.lr.ph322 ] ; 5 uses
  %i.hf = phi <4 x i32> [ zeroinitializer, %.lr.ph322.preheader ], [ %i.hv, %.lr.ph322 ]
  %i.hg = phi <4 x i32> [ zeroinitializer, %.lr.ph322.preheader ], [ %i.hu, %.lr.ph322 ]
  %i.hh = phi <4 x i32> [ zeroinitializer, %.lr.ph322.preheader ], [ %i.ht, %.lr.ph322 ]
  %i.hi = phi <4 x i32> [ zeroinitializer, %.lr.ph322.preheader ], [ %i.hs, %.lr.ph322 ]
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv413
  %i.hk = load <16 x i8>, ptr %i.hj, align 1, !tbaa !26 ; 4 uses
  %i.hl = load <16 x i8>, ptr %.5145320, align 1, !tbaa !26
  %i.hm = getelementptr inbounds nuw i8, ptr %.5145320, i64 16
  %i.hn = load <16 x i8>, ptr %i.hm, align 1, !tbaa !26
  %i.ho = getelementptr inbounds nuw i8, ptr %.5145320, i64 32
  %i.hp = load <16 x i8>, ptr %i.ho, align 1, !tbaa !26
  %i.hq = getelementptr inbounds nuw i8, ptr %.5145320, i64 48
  %i.hr = load <16 x i8>, ptr %i.hq, align 1, !tbaa !26
  %i.hs = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.hi, <16 x i8> %i.hk, <16 x i8> %i.hl) ; 2 uses
  %i.ht = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.hh, <16 x i8> %i.hk, <16 x i8> %i.hn) ; 2 uses
  %i.hu = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.hg, <16 x i8> %i.hk, <16 x i8> %i.hp) ; 2 uses
  %i.hv = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.hf, <16 x i8> %i.hk, <16 x i8> %i.hr) ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.5145320, i64 64 ; 2 uses
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 16 ; 2 uses
  %i.hx = or disjoint i64 %indvars.iv.next414, 15
  %i.hy = icmp samesign ult i64 %i.hx, %i.ga
  br i1 %i.hy, label %.lr.ph322, label %._crit_edge323.loopexit, !llvm.loop !124

._crit_edge323.loopexit:                          ; preds = %.lr.ph322
  %i.hz = add nuw i32 %i.fy, 2147483632
  %i.ia = and i32 %i.hz, 2147483632
  %narrow438 = add nuw i32 %i.ia, 16
  br label %._crit_edge323

._crit_edge323:                                   ; preds = %._crit_edge323.loopexit, %.preheader264
  %.lcssa277 = phi <4 x i32> [ zeroinitializer, %.preheader264 ], [ %i.hs, %._crit_edge323.loopexit ] ; 2 uses
  %.lcssa276 = phi <4 x i32> [ zeroinitializer, %.preheader264 ], [ %i.ht, %._crit_edge323.loopexit ] ; 2 uses
  %.lcssa275 = phi <4 x i32> [ zeroinitializer, %.preheader264 ], [ %i.hu, %._crit_edge323.loopexit ] ; 2 uses
  %.lcssa274 = phi <4 x i32> [ zeroinitializer, %.preheader264 ], [ %i.hv, %._crit_edge323.loopexit ] ; 2 uses
  %.5145.lcssa = phi ptr [ %.4144.lcssa, %.preheader264 ], [ %i.hw, %._crit_edge323.loopexit ] ; 2 uses
  %.5.lcssa = phi i32 [ 0, %.preheader264 ], [ %narrow438, %._crit_edge323.loopexit ] ; 3 uses
  %i.ib = shufflevector <4 x i32> %.lcssa277, <4 x i32> %.lcssa276, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ic = bitcast <4 x i32> %i.ib to <2 x i64>    ; 2 uses
  %i.id = shufflevector <4 x i32> %.lcssa277, <4 x i32> %.lcssa276, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ie = bitcast <4 x i32> %i.id to <2 x i64>    ; 2 uses
  %i.if = shufflevector <4 x i32> %.lcssa275, <4 x i32> %.lcssa274, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ig = bitcast <4 x i32> %i.if to <2 x i64>    ; 2 uses
  %i.ih = shufflevector <4 x i32> %.lcssa275, <4 x i32> %.lcssa274, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ii = bitcast <4 x i32> %i.ih to <2 x i64>    ; 2 uses
  %i.ij = shufflevector <2 x i64> %i.ic, <2 x i64> %i.ig, <2 x i32> <i32 0, i32 2>
  %i.ik = shufflevector <2 x i64> %i.ic, <2 x i64> %i.ig, <2 x i32> <i32 1, i32 3>
  %i.il = shufflevector <2 x i64> %i.ie, <2 x i64> %i.ii, <2 x i32> <i32 0, i32 2>
  %i.im = shufflevector <2 x i64> %i.ie, <2 x i64> %i.ii, <2 x i32> <i32 1, i32 3>
  %i.in = bitcast <2 x i64> %i.ij to <4 x i32>
  %i.io = bitcast <2 x i64> %i.ik to <4 x i32>
  %i.ip = add <4 x i32> %i.in, %i.io
  %i.iq = bitcast <2 x i64> %i.il to <4 x i32>
  %i.ir = add <4 x i32> %i.ip, %i.iq
  %i.is = bitcast <2 x i64> %i.im to <4 x i32>
  %i.it = add <4 x i32> %i.ir, %i.is
  %i.iu = or disjoint i32 %.5.lcssa, 7
  %i.iv = icmp slt i32 %i.iu, %i.fy
  br i1 %i.iv, label %.lr.ph334.preheader, label %._crit_edge335

.lr.ph334.preheader:                              ; preds = %._crit_edge323
  %i.iw = zext nneg i32 %.5.lcssa to i64
  br label %.lr.ph334

.lr.ph334:                                        ; preds = %.lr.ph334.preheader, %.lr.ph334
  %indvars.iv416 = phi i64 [ %i.iw, %.lr.ph334.preheader ], [ %indvars.iv.next417, %.lr.ph334 ] ; 2 uses
  %.6146331 = phi ptr [ %.5145.lcssa, %.lr.ph334.preheader ], [ %i.jh, %.lr.ph334 ] ; 3 uses
  %i.ix = phi <4 x i32> [ zeroinitializer, %.lr.ph334.preheader ], [ %i.jg, %.lr.ph334 ]
  %i.iy = phi <4 x i32> [ zeroinitializer, %.lr.ph334.preheader ], [ %i.jf, %.lr.ph334 ]
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv416
  %i.ja = load double, ptr %i.iz, align 1, !tbaa !26
  %i.jb = insertelement <2 x double> poison, double %i.ja, i64 0
  %i.jc = load <16 x i8>, ptr %.6146331, align 1, !tbaa !26
  %i.jd = getelementptr inbounds nuw i8, ptr %.6146331, i64 16
  %i.je = load <16 x i8>, ptr %i.jd, align 1, !tbaa !26
  %21 = bitcast <2 x double> %i.jb to <16 x i8>
  %22 = shufflevector <16 x i8> %21, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.jf = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.iy, <16 x i8> %22, <16 x i8> %i.jc) ; 2 uses
  %i.jg = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.ix, <16 x i8> %22, <16 x i8> %i.je) ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.6146331, i64 32 ; 2 uses
  %indvars.iv.next417 = add nuw nsw i64 %indvars.iv416, 8 ; 3 uses
  %i.ji = trunc i64 %indvars.iv.next417 to i32
  %i.jj = or i32 %i.ji, 7
  %i.jk = icmp slt i32 %i.jj, %i.fy
  br i1 %i.jk, label %.lr.ph334, label %._crit_edge335.loopexit, !llvm.loop !125

._crit_edge335.loopexit:                          ; preds = %.lr.ph334
  %i.jl = trunc nuw i64 %indvars.iv.next417 to i32
  br label %._crit_edge335

._crit_edge335:                                   ; preds = %._crit_edge335.loopexit, %._crit_edge323
  %.lcssa279 = phi <4 x i32> [ zeroinitializer, %._crit_edge323 ], [ %i.jf, %._crit_edge335.loopexit ]
  %.lcssa278 = phi <4 x i32> [ zeroinitializer, %._crit_edge323 ], [ %i.jg, %._crit_edge335.loopexit ]
  %.6146.lcssa = phi ptr [ %.5145.lcssa, %._crit_edge323 ], [ %i.jh, %._crit_edge335.loopexit ] ; 2 uses
  %.6.lcssa = phi i32 [ %.5.lcssa, %._crit_edge323 ], [ %i.jl, %._crit_edge335.loopexit ] ; 3 uses
  %i.jm = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %.lcssa279, <4 x i32> %.lcssa278)
  %i.jn = add <4 x i32> %i.it, %i.jm              ; 2 uses
  %i.jo = or disjoint i32 %.6.lcssa, 3
  %i.jp = icmp slt i32 %i.jo, %i.fy
  br i1 %i.jp, label %.lr.ph344.preheader, label %._crit_edge345

.lr.ph344.preheader:                              ; preds = %._crit_edge335
  %i.jq = zext i32 %.6.lcssa to i64
  br label %.lr.ph344

.lr.ph344:                                        ; preds = %.lr.ph344.preheader, %.lr.ph344
  %indvars.iv419 = phi i64 [ %i.jq, %.lr.ph344.preheader ], [ %indvars.iv.next420, %.lr.ph344 ] ; 2 uses
  %.7147341 = phi ptr [ %.6146.lcssa, %.lr.ph344.preheader ], [ %i.jw, %.lr.ph344 ] ; 2 uses
  %.0246.in340 = phi <4 x i32> [ %i.jn, %.lr.ph344.preheader ], [ %i.jv, %.lr.ph344 ]
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv419
  %i.js = load float, ptr %i.jr, align 1, !tbaa !26
  %i.jt = insertelement <4 x float> poison, float %i.js, i64 0
  %i.ju = load <16 x i8>, ptr %.7147341, align 1, !tbaa !26
  %23 = bitcast <4 x float> %i.jt to <16 x i8>
  %24 = shufflevector <16 x i8> %23, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.jv = call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %.0246.in340, <16 x i8> %24, <16 x i8> %i.ju) ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.7147341, i64 16 ; 2 uses
  %indvars.iv.next420 = add nuw nsw i64 %indvars.iv419, 4 ; 3 uses
  %i.jx = trunc i64 %indvars.iv.next420 to i32
  %i.jy = or i32 %i.jx, 3
  %i.jz = icmp slt i32 %i.jy, %i.fy
  br i1 %i.jz, label %.lr.ph344, label %._crit_edge345.loopexit, !llvm.loop !126

._crit_edge345.loopexit:                          ; preds = %.lr.ph344
  %i.ka = trunc nuw i64 %indvars.iv.next420 to i32
  br label %._crit_edge345

._crit_edge345:                                   ; preds = %._crit_edge345.loopexit, %._crit_edge335
  %.0246.in.lcssa = phi <4 x i32> [ %i.jn, %._crit_edge335 ], [ %i.jv, %._crit_edge345.loopexit ]
  %.7147.lcssa = phi ptr [ %.6146.lcssa, %._crit_edge335 ], [ %i.jw, %._crit_edge345.loopexit ] ; 2 uses
  %.7.lcssa = phi i32 [ %.6.lcssa, %._crit_edge335 ], [ %i.ka, %._crit_edge345.loopexit ] ; 3 uses
  %i.kb = load <4 x i32>, ptr %.7147.lcssa, align 1, !tbaa !26
  %i.kc = sub <4 x i32> %.0246.in.lcssa, %i.kb    ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.7147.lcssa, i64 16 ; 2 uses
  %i.ke = or disjoint i32 %.7.lcssa, 1
  %i.kf = icmp slt i32 %i.ke, %i.fy
  br i1 %i.kf, label %.lr.ph353.preheader, label %.preheader

.lr.ph353.preheader:                              ; preds = %._crit_edge345
  %i.kg = zext i32 %.7.lcssa to i64
  br label %.lr.ph353

.preheader.loopexit:                              ; preds = %.lr.ph353
  %i.kh = trunc nuw i64 %indvars.iv.next423 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge345
  %.1247.in.lcssa = phi <4 x i32> [ %i.kc, %._crit_edge345 ], [ %i.lf, %.preheader.loopexit ] ; 3 uses
  %.8148.lcssa = phi ptr [ %i.kd, %._crit_edge345 ], [ %i.lg, %.preheader.loopexit ] ; 3 uses
  %.8.lcssa = phi i32 [ %.7.lcssa, %._crit_edge345 ], [ %i.kh, %.preheader.loopexit ] ; 4 uses
  %i.ki = icmp slt i32 %.8.lcssa, %i.fy
  br i1 %i.ki, label %.lr.ph359.preheader, label %._crit_edge360

.lr.ph359.preheader:                              ; preds = %.preheader
  %i.kj = zext i32 %.8.lcssa to i64               ; 3 uses
  %i.kk = sub i32 %i.fy, %.8.lcssa
  %.neg520 = add i32 %.8.lcssa, 1
  %xtraiter517 = and i32 %i.kk, 1
  %lcmp.mod518.not = icmp eq i32 %xtraiter517, 0
  br i1 %lcmp.mod518.not, label %.lr.ph359.prol.loopexit, label %.lr.ph359.prol

.lr.ph359.prol:                                   ; preds = %.lr.ph359.preheader
  %i.kl = load <8 x i8>, ptr %.8148.lcssa, align 1, !tbaa !26
  %i.km = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.kj
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !26
  %i.ko = sext i8 %i.kn to i16
  %i.kp = insertelement <8 x i16> poison, i16 %i.ko, i64 0
  %i.kq = shufflevector <8 x i16> %i.kp, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.kr = sext <8 x i8> %i.kl to <8 x i16>        ; 2 uses
  %i.ks = mul <8 x i16> %i.kq, %i.kr
  %i.kt = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.kr, <8 x i16> %i.kq)
  %i.ku = shufflevector <8 x i16> %i.ks, <8 x i16> %i.kt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kv = bitcast <8 x i16> %i.ku to <4 x i32>
  %i.kw = add <4 x i32> %.1247.in.lcssa, %i.kv    ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.8148.lcssa, i64 4
  %indvars.iv.next426.prol = add nuw nsw i64 %i.kj, 1
  br label %.lr.ph359.prol.loopexit

.lr.ph359.prol.loopexit:                          ; preds = %.lr.ph359.prol, %.lr.ph359.preheader
  %indvars.iv425.unr = phi i64 [ %i.kj, %.lr.ph359.preheader ], [ %indvars.iv.next426.prol, %.lr.ph359.prol ]
  %.9149357.unr = phi ptr [ %.8148.lcssa, %.lr.ph359.preheader ], [ %i.kx, %.lr.ph359.prol ]
  %.unr519 = phi <4 x i32> [ %.1247.in.lcssa, %.lr.ph359.preheader ], [ %i.kw, %.lr.ph359.prol ]
  %.lcssa516.unr = phi <4 x i32> [ poison, %.lr.ph359.preheader ], [ %i.kw, %.lr.ph359.prol ]
  %i.ky = icmp eq i32 %i.fy, %.neg520
  br i1 %i.ky, label %._crit_edge360, label %.lr.ph359

.lr.ph353:                                        ; preds = %.lr.ph353.preheader, %.lr.ph353
  %indvars.iv422 = phi i64 [ %i.kg, %.lr.ph353.preheader ], [ %indvars.iv.next423, %.lr.ph353 ] ; 2 uses
  %.8148350 = phi ptr [ %i.kd, %.lr.ph353.preheader ], [ %i.lg, %.lr.ph353 ] ; 2 uses
  %.1247.in349 = phi <4 x i32> [ %i.kc, %.lr.ph353.preheader ], [ %i.lf, %.lr.ph353 ]
  %i.kz = load <8 x i8>, ptr %.8148350, align 1, !tbaa !26
  %i.la = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv422
  %i.lb = load i16, ptr %i.la, align 2, !tbaa !130
  %i.lc = insertelement <8 x i16> poison, i16 %i.lb, i64 0
  %i.ld = sext <8 x i8> %i.kz to <8 x i16>
  %25 = bitcast <8 x i16> %i.lc to <16 x i8>
  %26 = shufflevector <16 x i8> %25, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.le = sext <8 x i8> %26 to <8 x i16>
  %i.lf = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.1247.in349, <8 x i16> %i.ld, <8 x i16> %i.le) ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.8148350, i64 8 ; 2 uses
  %indvars.iv.next423 = add nuw nsw i64 %indvars.iv422, 2 ; 3 uses
  %i.lh = trunc i64 %indvars.iv.next423 to i32
  %i.li = or i32 %i.lh, 1
  %i.lj = icmp slt i32 %i.li, %i.fy
  br i1 %i.lj, label %.lr.ph353, label %.preheader.loopexit, !llvm.loop !127

.lr.ph359:                                        ; preds = %.lr.ph359.prol.loopexit, %.lr.ph359
  %indvars.iv425 = phi i64 [ %indvars.iv.next426.1, %.lr.ph359 ], [ %indvars.iv425.unr, %.lr.ph359.prol.loopexit ] ; 3 uses
  %.9149357 = phi ptr [ %i.ml, %.lr.ph359 ], [ %.9149357.unr, %.lr.ph359.prol.loopexit ] ; 3 uses
  %i.lk = phi <4 x i32> [ %i.mk, %.lr.ph359 ], [ %.unr519, %.lr.ph359.prol.loopexit ]
  %i.ll = load <8 x i8>, ptr %.9149357, align 1, !tbaa !26
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv425
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !26
  %i.lo = sext i8 %i.ln to i16
  %i.lp = insertelement <8 x i16> poison, i16 %i.lo, i64 0
  %i.lq = shufflevector <8 x i16> %i.lp, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.lr = sext <8 x i8> %i.ll to <8 x i16>        ; 2 uses
  %i.ls = mul <8 x i16> %i.lq, %i.lr
  %i.lt = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.lr, <8 x i16> %i.lq)
  %i.lu = shufflevector <8 x i16> %i.ls, <8 x i16> %i.lt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lv = bitcast <8 x i16> %i.lu to <4 x i32>
  %i.lw = add <4 x i32> %i.lk, %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %.9149357, i64 4
  %i.ly = load <8 x i8>, ptr %i.lx, align 1, !tbaa !26
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv425
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 1
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !26
  %i.mc = sext i8 %i.mb to i16
  %i.md = insertelement <8 x i16> poison, i16 %i.mc, i64 0
  %i.me = shufflevector <8 x i16> %i.md, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.mf = sext <8 x i8> %i.ly to <8 x i16>        ; 2 uses
  %i.mg = mul <8 x i16> %i.me, %i.mf
  %i.mh = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.mf, <8 x i16> %i.me)
  %i.mi = shufflevector <8 x i16> %i.mg, <8 x i16> %i.mh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mj = bitcast <8 x i16> %i.mi to <4 x i32>
  %i.mk = add <4 x i32> %i.lw, %i.mj              ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.9149357, i64 8
  %indvars.iv.next426.1 = add nuw nsw i64 %indvars.iv425, 2 ; 2 uses
  %i.mm = trunc nuw i64 %indvars.iv.next426.1 to i32
  %i.mn = icmp sgt i32 %i.fy, %i.mm
  br i1 %i.mn, label %.lr.ph359, label %._crit_edge360, !llvm.loop !128

._crit_edge360:                                   ; preds = %.lr.ph359.prol.loopexit, %.lr.ph359, %.preheader
  %.lcssa280 = phi <4 x i32> [ %.1247.in.lcssa, %.preheader ], [ %.lcssa516.unr, %.lr.ph359.prol.loopexit ], [ %i.mk, %.lr.ph359 ]
  %i.mo = insertelement <4 x float> poison, float %i.ak, i64 0
  %i.mp = shufflevector <4 x float> %i.mo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mq = insertelement <4 x float> poison, float %i.al, i64 0
  %i.mr = shufflevector <4 x float> %i.mq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ms = load <4 x float>, ptr %i.ap, align 1, !tbaa !26
  %i.mt = load <4 x float>, ptr %i.bh, align 1, !tbaa !26
  %i.mu = sitofp fast <4 x i32> %.lcssa272 to <4 x float>
  %i.mv = fmul fast <4 x float> %i.mt, %i.mp
  %i.mw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mu, <4 x float> nofpclass(nan inf) %i.mv, <4 x float> nofpclass(nan inf) %i.ms)
  %i.mx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.my = load <4 x float>, ptr %i.mx, align 1, !tbaa !26
  %i.mz = sitofp fast <4 x i32> %.lcssa280 to <4 x float>
  %i.na = fmul fast <4 x float> %i.my, %i.mr
  %i.nb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mz, <4 x float> nofpclass(nan inf) %i.na, <4 x float> nofpclass(nan inf) %i.mw)
  store <4 x float> %i.nb, ptr %i.bp, align 1, !tbaa !26
  %i.nc = add nuw i32 %.0362, 1
  %exitcond.not = icmp eq i32 %.0362, %i.l
  br i1 %exitcond.not, label %._crit_edge365, label %bb.c

._crit_edge365:                                   ; preds = %._crit_edge360, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge365, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #4

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !11     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !11
  %i.h = load i32, ptr %0, align 4, !tbaa !11     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !11
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !11
  %i.k = load i32, ptr %i.a, align 4, !tbaa !11   ; 2 uses
  %.not211 = icmp sgt i32 %i.k, %i.j
  br i1 %.not211, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.0212 = phi i32 [ %i.k, %.lr.ph ], [ %i.ge, %bb.e ] ; 3 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !11
  %i.o = shl nsw i32 %.0212, 3
  %i.p = add nsw i32 %i.n, %i.o
  %i.q = load ptr, ptr %4, align 8, !tbaa !21
  %i.r = load i32, ptr %i.l, align 4, !tbaa !20
  %i.s = sext i32 %i.r to i64
  %i.t = sext i32 %i.p to i64                     ; 4 uses
  %i.u = mul nsw i64 %i.s, %i.t
  %i.v = load i64, ptr %i.m, align 8, !tbaa !23
  %i.w = mul i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.w ; 4 uses
  %i.y = load <8 x float>, ptr %i.x, align 1, !tbaa !26 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !26 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.ac = load <8 x float>, ptr %i.ab, align 1, !tbaa !26 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.ae = load <8 x float>, ptr %i.ad, align 1, !tbaa !26 ; 2 uses
  %i.af = shufflevector <8 x float> %i.y, <8 x float> %i.ac, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ag = shufflevector <8 x float> %i.aa, <8 x float> %i.ae, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ah = shufflevector <8 x float> %i.y, <8 x float> %i.ac, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ai = shufflevector <8 x float> %i.aa, <8 x float> %i.ae, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.aj = shufflevector <8 x float> %i.af, <8 x float> %i.ag, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ak = shufflevector <8 x float> %i.ah, <8 x float> %i.ai, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.al = shufflevector <8 x float> %i.af, <8 x float> %i.ag, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.am = shufflevector <8 x float> %i.ah, <8 x float> %i.ai, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.an = shufflevector <8 x float> %i.aj, <8 x float> %i.ak, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.ao = shufflevector <8 x float> %i.aj, <8 x float> %i.ak, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.ap = shufflevector <8 x float> %i.al, <8 x float> %i.am, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.aq = shufflevector <8 x float> %i.al, <8 x float> %i.am, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.ar = fneg fast <8 x float> %i.an
  %i.as = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ar, <8 x float> splat (float f0x42B0C0A5))
  %i.at = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.as, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.au = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.at, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.av = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.au, i32 1) ; 2 uses
  %i.aw = fcmp fast ogt <8 x float> %i.av, %i.au
  %i.ax = select <8 x i1> %i.aw, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ay = fsub fast <8 x float> %i.av, %i.ax      ; 2 uses
  %i.az = fneg fast <8 x float> %i.ay             ; 2 uses
  %i.ba = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.az, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.at)
  %i.bb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.az, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ba) ; 8 uses
  %i.bc = fmul fast <8 x float> %i.bb, %i.bb
  %i.bd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bb, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.be = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bd, <8 x float> nofpclass(nan inf) %i.bb, <8 x float> splat (float f0x3C088908))
  %i.bf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.be, <8 x float> nofpclass(nan inf) %i.bb, <8 x float> splat (float f0x3D2AA9C1))
  %i.bg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bf, <8 x float> nofpclass(nan inf) %i.bb, <8 x float> splat (float f0x3E2AAAAA))
  %i.bh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bg, <8 x float> nofpclass(nan inf) %i.bb, <8 x float> splat (float 5.000000e-01))
  %i.bi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bh, <8 x float> nofpclass(nan inf) %i.bc, <8 x float> nofpclass(nan inf) %i.bb)
  %i.bj = fadd fast <8 x float> %i.bi, splat (float 1.000000e+00)
  %i.bk = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ay)
  %i.bl = shl <8 x i32> %i.bk, splat (i32 23)
  %i.bm = add <8 x i32> %i.bl, splat (i32 1065353216)
  %i.bn = bitcast <8 x i32> %i.bm to <8 x float>
  %i.bo = fmul fast <8 x float> %i.bj, %i.bn
  %i.bp = fadd fast <8 x float> %i.bo, splat (float 1.000000e+00)
  %i.bq = fneg fast <8 x float> %i.ao
  %i.br = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bq, <8 x float> splat (float f0x42B0C0A5))
  %i.bs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.br, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bs, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.bu = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bt, i32 1) ; 2 uses
  %i.bv = fcmp fast ogt <8 x float> %i.bu, %i.bt
  %i.bw = select <8 x i1> %i.bv, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bx = fsub fast <8 x float> %i.bu, %i.bw      ; 2 uses
  %i.by = fneg fast <8 x float> %i.bx             ; 2 uses
  %i.bz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.by, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.bs)
  %i.ca = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.by, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.bz) ; 8 uses
  %i.cb = fmul fast <8 x float> %i.ca, %i.ca
  %i.cc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ca, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.cd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cc, <8 x float> nofpclass(nan inf) %i.ca, <8 x float> splat (float f0x3C088908))
  %i.ce = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cd, <8 x float> nofpclass(nan inf) %i.ca, <8 x float> splat (float f0x3D2AA9C1))
  %i.cf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ce, <8 x float> nofpclass(nan inf) %i.ca, <8 x float> splat (float f0x3E2AAAAA))
  %i.cg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cf, <8 x float> nofpclass(nan inf) %i.ca, <8 x float> splat (float 5.000000e-01))
  %i.ch = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cg, <8 x float> nofpclass(nan inf) %i.cb, <8 x float> nofpclass(nan inf) %i.ca)
  %i.ci = fadd fast <8 x float> %i.ch, splat (float 1.000000e+00)
  %i.cj = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bx)
  %i.ck = shl <8 x i32> %i.cj, splat (i32 23)
  %i.cl = add <8 x i32> %i.ck, splat (i32 1065353216)
  %i.cm = bitcast <8 x i32> %i.cl to <8 x float>
  %i.cn = fmul fast <8 x float> %i.ci, %i.cm
  %i.co = fadd fast <8 x float> %i.cn, splat (float 1.000000e+00)
  %i.cp = fneg fast <8 x float> %i.ap
  %i.cq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cp, <8 x float> splat (float f0x42B0C0A5))
end_hunk_3
