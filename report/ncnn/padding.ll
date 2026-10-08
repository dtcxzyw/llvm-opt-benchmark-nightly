Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/padding?download=true
inline.NumInlined: 1
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZNK4ncnn7Padding7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  %i.fu = load i32, ptr %i.ah, align 8, !tbaa !41
  %i.fv = load i8, ptr %i.bc, align 1, !tbaa !57, !range !58, !noundef !59
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.fx = load i8, ptr %i.bd, align 2, !tbaa !60, !range !58, !noundef !59
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fz = invoke noundef zeroext i16 @_ZN4ncnn18float32_to_float16Ef(float noundef nofpclass(nan inf) %i.ce)
          to label %bb.w unwind label %bb.aa

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.ga = bitcast float %i.ce to i32
  %i.gb = lshr i32 %i.ga, 16
  %i.gc = trunc nuw i32 %i.gb to i16
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.gd = phi i16 [ %i.gc, %bb.v ], [ %i.fz, %bb.u ]
  call fastcc void @_ZN4ncnnL22copy_make_border_imageItEEvRKNS_3MatERS1_iiiT_(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %i.fs, i32 noundef %i.ft, i32 noundef %i.fu, i16 noundef zeroext %i.gd)
  %.pre77 = load i64, ptr %6, align 8, !tbaa !55
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.r
  %i.ge = phi i64 [ %.pre77, %bb.w ], [ %i.fq, %bb.r ]
  %i.gf = icmp eq i64 %i.ge, 4
  br i1 %i.gf, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit47

bb.y:                                             ; preds = %bb.x
  %i.gg = load i32, ptr %i.ba, align 8, !tbaa !37
  %i.gh = load i32, ptr %i.bb, align 8, !tbaa !39
  %i.gi = load i32, ptr %i.ah, align 8, !tbaa !41
  call fastcc void @_ZN4ncnnL22copy_make_border_imageIfEEvRKNS_3MatERS1_iiiT_(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %i.gg, i32 noundef %i.gh, i32 noundef %i.gi, float noundef nofpclass(nan inf) %i.ce)
  br label %_ZN4ncnn3MatD2Ev.exit47

_ZN4ncnn3MatD2Ev.exit47:                          ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph66, %middle.block, %bb.o, %_ZN4ncnn3Mat4fillItEEvT_.exit, %_ZN4ncnn3MatD2Ev.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, 1
  %i.gj = load i32, ptr %i.b, align 4, !tbaa !49
  %i.gk = sext i32 %i.gj to i64
  %.not.not = icmp slt i64 %indvars.iv73, %i.gk
  br i1 %.not.not, label %.noexc55, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.aa:                                            ; preds = %bb.u, %bb.l
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  call void @__clang_call_terminate(ptr %i.gm) #16
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare !callback !71 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #10

declare void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn7Padding7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.ncnn::Mat", align 8        ; 13 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 13 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !49     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !49
  %i.h = load i32, ptr %0, align 4, !tbaa !49     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !49
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !49
  %i.k = load i32, ptr %i.a, align 4, !tbaa !49   ; 2 uses
  %.not122 = icmp sgt i32 %i.k, %i.j
  br i1 %.not122, label %._crit_edge126, label %.lr.ph125

.lr.ph125:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 228
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 44 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 216 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 13 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 34 ; 2 uses
  %i.au = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph125, %._crit_edge
  %i.av = phi i32 [ %i.j, %.lr.ph125 ], [ %i.bg, %._crit_edge ]
  %indvars.iv133 = phi i64 [ %i.au, %.lr.ph125 ], [ %indvars.iv.next134, %._crit_edge ] ; 5 uses
  %i.aw = load i32, ptr %i.l, align 8, !tbaa !43
  %.not50 = icmp eq i32 %i.aw, 0
  br i1 %.not50, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv133
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.in = phi ptr [ %i.ay, %bb.d ], [ %i.n, %bb.c ]
  %i.az = load float, ptr %.in, align 4, !tbaa !69 ; 7 uses
  %i.ba = load i32, ptr %4, align 4, !tbaa !49
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.noexc75.lr.ph, label %._crit_edge

.noexc75.lr.ph:                                   ; preds = %bb.e
  %i.bc = fptosi float %i.az to i8                ; 2 uses
  %i.bd = bitcast float %i.az to i32
  %i.be = lshr i32 %i.bd, 16
  %i.bf = trunc nuw i32 %i.be to i16              ; 4 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.az, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.noexc75

._crit_edge.loopexit:                             ; preds = %_ZN4ncnn3MatD2Ev.exit
  %.pre139 = load i32, ptr %i.b, align 4, !tbaa !49
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.bg = phi i32 [ %.pre139, %._crit_edge.loopexit ], [ %i.av, %bb.e ] ; 2 uses
  %indvars.iv.next134 = add nsw i64 %indvars.iv133, 1
  %i.bh = sext i32 %i.bg to i64
  %.not.not = icmp slt i64 %indvars.iv133, %i.bh
  br i1 %.not.not, label %bb.c, label %._crit_edge126

.noexc75:                                         ; preds = %.noexc75.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv130 = phi i64 [ 0, %.noexc75.lr.ph ], [ %indvars.iv.next131, %_ZN4ncnn3MatD2Ev.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.bi = load ptr, ptr %5, align 8, !tbaa !19, !noalias !382 ; 2 uses
  %i.bj = load i64, ptr %i.q, align 8, !tbaa !20, !noalias !382
  %i.bk = mul i64 %i.bj, %indvars.iv133           ; 2 uses
  %i.bl = load i64, ptr %i.r, align 8, !tbaa !47, !noalias !382 ; 4 uses
  %i.bm = mul i64 %i.bk, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bm
  %i.bo = load i32, ptr %i.s, align 8, !tbaa !48, !noalias !382
  %i.bp = load ptr, ptr %i.t, align 8, !tbaa !18, !noalias !382
  store ptr null, ptr %i.u, align 8, !tbaa !17
  store i64 %i.bl, ptr %i.v, align 8, !tbaa !47
  store i32 %i.bo, ptr %i.w, align 8, !tbaa !48
  store ptr %i.bp, ptr %i.x, align 8, !tbaa !18
  store i32 2, ptr %i.y, align 8, !tbaa !54
  %i.bq = load <2 x i32>, ptr %i.o, align 4, !tbaa !49, !noalias !382
  %i.br = load i32, ptr %i.p, align 8, !tbaa !52, !noalias !382
  %i.bs = load i32, ptr %i.o, align 4, !tbaa !51, !noalias !382
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  %i.bu = sext i32 %i.br to i64                   ; 2 uses
  %i.bv = mul nsw i64 %i.bu, %i.bt                ; 12 uses
  %i.bw = mul i64 %i.bv, %indvars.iv130
  %i.bx = mul i64 %i.bw, %i.bl
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bx ; 7 uses
  store ptr %i.by, ptr %10, align 8, !tbaa !19
  %i.bz = shufflevector <2 x i32> %i.bq, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ca = shufflevector <4 x i32> %i.bz, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ca, ptr %i.z, align 4, !tbaa !49
  store i64 %i.bv, ptr %i.aa, align 8, !tbaa !20, !alias.scope !383
  %i.cb = load i32, ptr %i.ab, align 8, !tbaa !44 ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = icmp slt i64 %indvars.iv130, %i.cc
  br i1 %i.cd, label %.noexc75._crit_edge, label %bb.f

.noexc75._crit_edge:                              ; preds = %.noexc75
  %.pre140 = load i32, ptr %i.ac, align 8, !tbaa !41
  br label %bb.g

bb.f:                                             ; preds = %.noexc75
  %i.ce = load i32, ptr %6, align 4, !tbaa !49
  %i.cf = add nsw i32 %i.ce, %i.cb
  %i.cg = sext i32 %i.cf to i64
  %.not51 = icmp slt i64 %indvars.iv130, %i.cg
  %.pre141 = load i32, ptr %i.ac, align 8, !tbaa !41 ; 2 uses
  br i1 %.not51, label %._crit_edge136, label %bb.g

bb.g:                                             ; preds = %.noexc75._crit_edge, %bb.f
  %i.ch = phi i32 [ %.pre140, %.noexc75._crit_edge ], [ %.pre141, %bb.f ] ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.h, label %._crit_edge136

bb.h:                                             ; preds = %bb.g
  %i.cj = load i64, ptr %7, align 8, !tbaa !55    ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 1
  br i1 %i.ck, label %bb.i, label %_ZN4ncnn3Mat4fillIaEEvT_.exit

bb.i:                                             ; preds = %bb.h
  %i.cl = trunc i64 %i.bv to i32
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %bb.i
  %12 = mul i64 %indvars.iv130, %i.bu
  %13 = mul i64 %12, %i.bt
  %14 = add i64 %13, %i.bk
  %15 = mul i64 %i.bl, %14
  %scevgep = getelementptr i8, ptr %i.bi, i64 %15
  %i.cn = and i64 %i.bv, 2147483647
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 %i.bc, i64 %i.cn, i1 false), !tbaa !61
  %.pr.pre = load i64, ptr %7, align 8, !tbaa !55
  br label %_ZN4ncnn3Mat4fillIaEEvT_.exit

_ZN4ncnn3Mat4fillIaEEvT_.exit:                    ; preds = %.lr.ph.preheader, %bb.h
  %i.co = phi i64 [ %i.cj, %bb.h ], [ %.pr.pre, %.lr.ph.preheader ]
  %i.cp = icmp eq i64 %i.co, 2
  br i1 %i.cp, label %bb.j, label %_ZN4ncnn3Mat4fillItEEvT_.exit

bb.j:                                             ; preds = %_ZN4ncnn3Mat4fillIaEEvT_.exit
  %i.cq = load i8, ptr %i.as, align 1, !tbaa !57, !range !58, !noundef !59
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cs = load i8, ptr %i.at, align 2, !tbaa !60, !range !58, !noundef !59
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cu = invoke noundef zeroext i16 @_ZN4ncnn18float32_to_float16Ef(float noundef nofpclass(nan inf) %i.az)
          to label %bb.m unwind label %bb.x

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %i.cv = phi i16 [ %i.cu, %bb.l ], [ %i.bf, %bb.k ], [ %i.bf, %bb.j ] ; 3 uses
  %i.cw = trunc i64 %i.bv to i32
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %iter.check, label %_ZN4ncnn3Mat4fillItEEvT_.exit

iter.check:                                       ; preds = %bb.m
  %wide.trip.count = and i64 %i.bv, 2147483647    ; 5 uses
  %min.iters.check153 = icmp samesign ult i64 %wide.trip.count, 4
  br i1 %min.iters.check153, label %.lr.ph116.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check154 = icmp samesign ult i64 %wide.trip.count, 16
  br i1 %min.iters.check154, label %vec.epilog.ph, label %vector.ph155

vector.ph155:                                     ; preds = %vector.main.loop.iter.check
  %i.cy = and i64 %i.bv, 12
  %n.vec156 = and i64 %i.bv, 2147483632           ; 4 uses
  %broadcast.splatinsert157 = insertelement <8 x i16> poison, i16 %i.cv, i64 0
  %broadcast.splat158 = shufflevector <8 x i16> %broadcast.splatinsert157, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body159

vector.body159:                                   ; preds = %vector.ph155, %vector.body159
  %index160 = phi i64 [ 0, %vector.ph155 ], [ %index.next161, %vector.body159 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %index160 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <8 x i16> %broadcast.splat158, ptr %i.cz, align 2, !tbaa !67
  store <8 x i16> %broadcast.splat158, ptr %i.da, align 2, !tbaa !67
  %index.next161 = add nuw i64 %index160, 16      ; 2 uses
  %i.db = icmp eq i64 %index.next161, %n.vec156
  br i1 %i.db, label %middle.block162, label %vector.body159, !llvm.loop !372

middle.block162:                                  ; preds = %vector.body159
  %cmp.n163 = icmp eq i64 %wide.trip.count, %n.vec156
  br i1 %cmp.n163, label %_ZN4ncnn3Mat4fillItEEvT_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block162
  %min.epilog.iters.check = icmp eq i64 %i.cy, 0
  br i1 %min.epilog.iters.check, label %.lr.ph116.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec156, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec164 = and i64 %i.bv, 2147483644           ; 3 uses
  %broadcast.splatinsert165 = insertelement <4 x i16> poison, i16 %i.cv, i64 0
  %broadcast.splat166 = shufflevector <4 x i16> %broadcast.splatinsert165, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index167 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next168, %vec.epilog.vector.body ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %index167
  store <4 x i16> %broadcast.splat166, ptr %i.dc, align 2, !tbaa !67
  %index.next168 = add nuw i64 %index167, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next168, %n.vec164
  br i1 %i.dd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !373

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n169 = icmp eq i64 %wide.trip.count, %n.vec164
  br i1 %cmp.n169, label %_ZN4ncnn3Mat4fillItEEvT_.exit, label %.lr.ph116.preheader

.lr.ph116.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec156, %vec.epilog.iter.check ], [ %n.vec164, %vec.epilog.middle.block ]
  br label %.lr.ph116

.lr.ph116:                                        ; preds = %.lr.ph116.preheader, %.lr.ph116
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph116 ], [ %indvars.iv.ph, %.lr.ph116.preheader ] ; 2 uses
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv
  store i16 %i.cv, ptr %i.de, align 2, !tbaa !67
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN4ncnn3Mat4fillItEEvT_.exit, label %.lr.ph116, !llvm.loop !374

_ZN4ncnn3Mat4fillItEEvT_.exit:                    ; preds = %.lr.ph116, %middle.block162, %vec.epilog.middle.block, %bb.m, %_ZN4ncnn3Mat4fillIaEEvT_.exit
  %.pr = load i64, ptr %7, align 8, !tbaa !55
  %i.df = icmp eq i64 %.pr, 4
  br i1 %i.df, label %bb.n, label %_ZN4ncnn3MatD2Ev.exit

bb.n:                                             ; preds = %_ZN4ncnn3Mat4fillItEEvT_.exit
  %i.dg = trunc i64 %i.bv to i32                  ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph119.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph119.preheader:                              ; preds = %bb.n
  %i.di = and i64 %i.bv, 2147483647               ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.di, 8
  br i1 %min.iters.check, label %.lr.ph119.preheader171, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph119.preheader
  %n.vec = and i64 %i.bv, 2147483640              ; 4 uses
  %i.dj = trunc nuw nsw i64 %n.vec to i32
  %i.dk = shl nuw nsw i64 %n.vec, 2
  %i.dl = getelementptr i8, ptr %i.by, i64 %i.dk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dm = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.by, i64 %i.dm ; 2 uses
  %i.dn = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !69
  store <4 x float> %broadcast.splat, ptr %i.dn, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !375

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.di, %n.vec
  br i1 %cmp.n, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph119.preheader171

.lr.ph119.preheader171:                           ; preds = %.lr.ph119.preheader, %middle.block
  %.0.i77118.ph = phi i32 [ 0, %.lr.ph119.preheader ], [ %i.dj, %middle.block ]
  %.05.i117.ph = phi ptr [ %i.by, %.lr.ph119.preheader ], [ %i.dl, %middle.block ]
  br label %.lr.ph119

.lr.ph119:                                        ; preds = %.lr.ph119.preheader171, %.lr.ph119
  %.0.i77118 = phi i32 [ %i.dq, %.lr.ph119 ], [ %.0.i77118.ph, %.lr.ph119.preheader171 ]
  %.05.i117 = phi ptr [ %i.dp, %.lr.ph119 ], [ %.05.i117.ph, %.lr.ph119.preheader171 ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.05.i117, i64 4
  store float %i.az, ptr %.05.i117, align 4, !tbaa !69
  %i.dq = add nuw nsw i32 %.0.i77118, 1           ; 2 uses
  %exitcond129.not = icmp eq i32 %i.dq, %i.dg
  br i1 %exitcond129.not, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph119, !llvm.loop !376

._crit_edge136:                                   ; preds = %bb.f, %bb.g
  %i.dr = phi i32 [ %i.ch, %bb.g ], [ %.pre141, %bb.f ] ; 2 uses
  %i.ds = trunc nuw nsw i64 %indvars.iv130 to i32
  %i.dt = sub nsw i32 %i.ds, %i.cb                ; 3 uses
  switch i32 %i.dr, label %.noexc78 [
    i32 1, label %.thread
    i32 2, label %bb.o
  ]

.thread:                                          ; preds = %._crit_edge136
  %i.du = call i32 @llvm.smax.i32(i32 %i.dt, i32 0)
  %i.dv = load i32, ptr %6, align 4, !tbaa !49
  %i.dw = add nsw i32 %i.dv, -1
  %. = call i32 @llvm.smin.i32(i32 %i.du, i32 %i.dw)
  br label %.noexc78

bb.o:                                             ; preds = %._crit_edge136
  %i.dx = call i32 @llvm.abs.i32(i32 %i.dt, i1 true)
  %i.dy = load i32, ptr %6, align 4, !tbaa !49
  %i.dz = add nsw i32 %i.dy, -1                   ; 2 uses
  %i.ea = sub nsw i32 %i.dx, %i.dz
  %i.eb = call i32 @llvm.abs.i32(i32 %i.ea, i1 true)
  %i.ec = sub nsw i32 %i.dz, %i.eb
  br label %.noexc78

.noexc78:                                         ; preds = %._crit_edge136, %bb.o, %.thread
  %.1 = phi i32 [ %i.ec, %bb.o ], [ %i.dt, %._crit_edge136 ], [ %., %.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  %i.ed = load ptr, ptr %9, align 8, !tbaa !19, !noalias !384
  %i.ee = load i64, ptr %i.af, align 8, !tbaa !20, !noalias !384
  %i.ef = mul i64 %i.ee, %indvars.iv133
  %i.eg = load i64, ptr %i.ag, align 8, !tbaa !47, !noalias !384 ; 3 uses
  %i.eh = mul i64 %i.ef, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.eh
  %i.ej = load i32, ptr %i.ah, align 8, !tbaa !48, !noalias !384
  %i.ek = load ptr, ptr %i.ai, align 8, !tbaa !18, !noalias !384
  %i.el = sext i32 %.1 to i64
  store ptr null, ptr %i.aj, align 8, !tbaa !17
  store i64 %i.eg, ptr %i.ak, align 8, !tbaa !47
  store i32 %i.ej, ptr %i.al, align 8, !tbaa !48
  store ptr %i.ek, ptr %i.am, align 8, !tbaa !18
  store i32 2, ptr %i.an, align 8, !tbaa !54
  %i.em = load <2 x i32>, ptr %i.ad, align 4, !tbaa !49, !noalias !384
  %i.en = load i32, ptr %i.ae, align 8, !tbaa !52, !noalias !384
  %i.eo = load i32, ptr %i.ad, align 4, !tbaa !51, !noalias !384
  %i.ep = sext i32 %i.eo to i64
  %i.eq = sext i32 %i.en to i64
  %i.er = mul nsw i64 %i.eq, %i.ep                ; 2 uses
  %i.es = mul i64 %i.er, %i.el
  %i.et = mul i64 %i.es, %i.eg
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.et
  store ptr %i.eu, ptr %11, align 8, !tbaa !19
  %i.ev = shufflevector <2 x i32> %i.em, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ew = shufflevector <4 x i32> %i.ev, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ew, ptr %i.ao, align 4, !tbaa !49
  store i64 %i.er, ptr %i.ap, align 8, !tbaa !20, !alias.scope !385
end_hunk_0
