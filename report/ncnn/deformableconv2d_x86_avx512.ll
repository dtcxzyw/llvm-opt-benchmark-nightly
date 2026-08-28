Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deformableconv2d_x86_avx512?download=true
inline.NumInlined: 22
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4ncnn16DeformableConv2DD2Ev:bb.a
}

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #9 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

declare noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

declare void @_ZN4ncnn20ModelBinFromMatArrayC1EPKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

declare void @_ZN4ncnn9ParamDict3setEif(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #1

declare void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn27DeformableConv2D_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !77     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !77
  %i.h = load i32, ptr %0, align 4, !tbaa !77     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !77
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !77
  %i.k = load i32, ptr %i.a, align 4, !tbaa !77   ; 2 uses
  %.not213 = icmp sgt i32 %i.k, %i.j
  br i1 %.not213, label %._crit_edge215, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph

_ZNK4ncnn3Mat7channelEi.exit.lr.ph:               ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 216 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 212 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 44 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 52
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 228
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 236
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 220
  %i.aq = load i32, ptr %i.q, align 8, !tbaa !45  ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %_ZNK4ncnn3Mat7channelEi.exit.preheader, label %._crit_edge215

_ZNK4ncnn3Mat7channelEi.exit.preheader:           ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph
  %i.as = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.at = phi i32 [ %i.j, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.bw, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.au = phi i32 [ %i.aq, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.bx, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.av = phi i32 [ %i.aq, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.by, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv224 = phi i64 [ %i.as, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %indvars.iv.next225, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !18, !noalias !112
  %i.ax = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !112
  %i.ay = mul i64 %i.ax, %indvars.iv224
  %i.az = load i64, ptr %i.n, align 8, !tbaa !56, !noalias !112 ; 2 uses
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ba ; 4 uses
  %i.bc = icmp sgt i32 %i.av, 0
  br i1 %i.bc, label %.preheader197.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader197.lr.ph:                              ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.bd = load i32, ptr %i.l, align 4, !tbaa !55, !noalias !112
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul i64 %i.az, %i.be                    ; 4 uses
  %i.bg = load i32, ptr %i.r, align 4, !tbaa !44  ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.preheader197.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader197.preheader:                          ; preds = %.preheader197.lr.ph
  %i.bi = load ptr, ptr %4, align 8, !tbaa !18
  %i.bj = load i32, ptr %5, align 4, !tbaa !77
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul nsw i64 %indvars.iv224, %i.bk
  %i.bm = load i32, ptr %i.o, align 4, !tbaa !55
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul nsw i64 %i.bl, %i.bn
  %i.bp = load i64, ptr %i.p, align 8, !tbaa !56
  %i.bq = mul i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bq
  br label %.preheader197

.preheader197:                                    ; preds = %.preheader197.preheader, %._crit_edge209
  %i.bs = phi i32 [ %i.ca, %._crit_edge209 ], [ %i.au, %.preheader197.preheader ]
  %i.bt = phi i32 [ %i.cb, %._crit_edge209 ], [ %i.bg, %.preheader197.preheader ] ; 3 uses
  %.0115212 = phi i32 [ %i.cc, %._crit_edge209 ], [ 0, %.preheader197.preheader ] ; 3 uses
  %.0116211 = phi ptr [ %.1117.lcssa, %._crit_edge209 ], [ %i.br, %.preheader197.preheader ] ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.noexc150.preheader, label %._crit_edge209

.noexc150.preheader:                              ; preds = %.preheader197
  %i.bv = insertelement <2 x i32> poison, i32 %.0115212, i64 1
  br label %.noexc150

_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %._crit_edge209
  %.pre228 = load i32, ptr %i.b, align 4, !tbaa !77
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.preheader197.lr.ph, %_ZN4ncnn3MatD2Ev.exit.loopexit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.bw = phi i32 [ %i.at, %_ZNK4ncnn3Mat7channelEi.exit ], [ %.pre228, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.at, %.preheader197.lr.ph ] ; 2 uses
  %i.bx = phi i32 [ %i.au, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.ca, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.au, %.preheader197.lr.ph ]
  %i.by = phi i32 [ %i.av, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.ca, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.av, %.preheader197.lr.ph ]
  %indvars.iv.next225 = add nsw i64 %indvars.iv224, 1
  %i.bz = sext i32 %i.bw to i64
  %.not.not = icmp slt i64 %indvars.iv224, %i.bz
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge215, !llvm.loop !115

._crit_edge209.loopexit:                          ; preds = %_ZN4ncnn3MatD2Ev.exit125
  %.pre227 = load i32, ptr %i.q, align 8, !tbaa !45
  br label %._crit_edge209

._crit_edge209:                                   ; preds = %._crit_edge209.loopexit, %.preheader197
  %i.ca = phi i32 [ %i.bs, %.preheader197 ], [ %.pre227, %._crit_edge209.loopexit ] ; 4 uses
  %i.cb = phi i32 [ %i.bt, %.preheader197 ], [ %i.es, %._crit_edge209.loopexit ]
  %.1117.lcssa = phi ptr [ %.0116211, %.preheader197 ], [ %.2.lcssa, %._crit_edge209.loopexit ]
  %i.cc = add nuw nsw i32 %.0115212, 1            ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.ca
  br i1 %i.cd, label %.preheader197, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !117

.noexc150:                                        ; preds = %.noexc150.preheader, %_ZN4ncnn3MatD2Ev.exit125
  %i.ce = phi i32 [ %i.es, %_ZN4ncnn3MatD2Ev.exit125 ], [ %i.bt, %.noexc150.preheader ]
  %.0114207 = phi i32 [ %i.er, %_ZN4ncnn3MatD2Ev.exit125 ], [ 0, %.noexc150.preheader ] ; 3 uses
  %.1117206 = phi ptr [ %.2.lcssa, %_ZN4ncnn3MatD2Ev.exit125 ], [ %.0116211, %.noexc150.preheader ] ; 3 uses
  %i.cf = mul nuw nsw i32 %i.ce, %.0115212
  %i.cg = add nsw i32 %i.cf, %.0114207            ; 2 uses
  %i.ch = shl nsw i32 %i.cg, 1                    ; 2 uses
  %i.ci = load i32, ptr %i.s, align 4, !tbaa !55, !noalias !118
  %i.cj = load ptr, ptr %7, align 8, !tbaa !18, !noalias !118 ; 2 uses
  %i.ck = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !118
  %i.cl = sext i32 %i.ch to i64
  %i.cm = load i64, ptr %i.u, align 8, !tbaa !56, !noalias !118 ; 2 uses
  %i.cn = mul i64 %i.cm, %i.ck                    ; 2 uses
  %i.co = mul i64 %i.cn, %i.cl
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.co
  %i.cq = sext i32 %i.ci to i64
  %i.cr = or disjoint i32 %i.ch, 1
  %i.cs = sext i32 %i.cr to i64
  %i.ct = mul i64 %i.cn, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.cv = load i8, ptr %8, align 1, !tbaa !93, !range !50, !noundef !51
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %.noexc147, label %bb.d

.noexc147:                                        ; preds = %.noexc150
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.cx = load i32, ptr %i.af, align 4, !tbaa !55, !noalias !121 ; 2 uses
  %i.cy = load i32, ptr %i.ag, align 8, !tbaa !94, !noalias !121 ; 2 uses
  %i.cz = load i32, ptr %i.ah, align 4, !tbaa !124, !noalias !121
  %i.da = load ptr, ptr %9, align 8, !tbaa !18, !noalias !121
  %i.db = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !121
  %i.dc = sext i32 %i.cg to i64
  %i.dd = mul i64 %i.db, %i.dc
  %i.de = load i64, ptr %i.aj, align 8, !tbaa !56, !noalias !121 ; 4 uses
  %i.df = mul i64 %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.df
  %i.dh = load i32, ptr %i.ak, align 8, !tbaa !76, !noalias !121
  %i.di = load ptr, ptr %i.al, align 8, !tbaa !17, !noalias !121
  store ptr %i.dg, ptr %14, align 8, !tbaa !18
  store ptr null, ptr %i.v, align 8, !tbaa !11
  store i64 %i.de, ptr %i.w, align 8, !tbaa !56
  store i32 %i.dh, ptr %i.x, align 8, !tbaa !76
  store ptr %i.di, ptr %i.y, align 8, !tbaa !17
  store i32 %i.cx, ptr %i.aa, align 4, !tbaa !55
  store i32 %i.cy, ptr %i.ab, align 8, !tbaa !94
  store i32 1, ptr %i.ac, align 4, !tbaa !124
  store i32 %i.cz, ptr %i.ad, align 8, !tbaa !78
  %i.dj = sext i32 %i.cx to i64
  %i.dk = sext i32 %i.cy to i64
  %i.dl = mul nsw i64 %i.dk, %i.dj                ; 2 uses
  %i.dm = mul i64 %i.de, %i.dl
  %i.dn = add i64 %i.dm, 15
  %i.do = and i64 %i.dn, -16
  %i.dp = udiv i64 %i.do, %i.de
  store i64 %i.dp, ptr %i.ae, align 8, !tbaa !20
  %i.dq = load i32, ptr %i.am, align 8, !tbaa !125, !noalias !121 ; 2 uses
  %i.dr = add nsw i32 %i.dq, -1
  store i32 %i.dr, ptr %i.z, align 8, !tbaa !125, !alias.scope !121
  %i.ds = icmp eq i32 %i.dq, 4
  br i1 %i.ds, label %bb.c, label %_ZN4ncnn3Mat7channelEi.exit

bb.c:                                             ; preds = %.noexc147
  store i64 %i.dl, ptr %i.ae, align 8, !tbaa !20, !alias.scope !121
  br label %_ZN4ncnn3Mat7channelEi.exit

bb.d:                                             ; preds = %.noexc150
  store i64 0, ptr %i.ae, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %14, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.y, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef 0, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3Mat7channelEi.exit unwind label %bb.y

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %bb.d, %bb.c, %.noexc147
  %i.dt = load i32, ptr %10, align 4, !tbaa !77   ; 2 uses
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %.preheader.lr.ph, label %._crit_edge204

.preheader.lr.ph:                                 ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %i.dv = mul i64 %i.cm, %i.cq
  %i.dw = load i32, ptr %11, align 4, !tbaa !77   ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.preheader.preheader, label %._crit_edge204

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.dy = insertelement <2 x i32> %i.bv, i32 %.0114207, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.dz = phi i32 [ %i.eu, %._crit_edge ], [ %i.dt, %.preheader.preheader ]
  %i.ea = phi i32 [ %i.ev, %._crit_edge ], [ %i.dw, %.preheader.preheader ] ; 2 uses
  %indvars.iv221 = phi i64 [ %indvars.iv.next222, %._crit_edge ], [ 0, %.preheader.preheader ] ; 4 uses
  %.2202 = phi ptr [ %.3.lcssa, %._crit_edge ], [ %.1117206, %.preheader.preheader ] ; 2 uses
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ec = mul i64 %i.dv, %indvars.iv221           ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ec
  %i.ef = trunc nsw i64 %indvars.iv221 to i32
  %i.eg = insertelement <2 x i32> poison, i32 %i.ef, i64 1
  br label %bb.k

._crit_edge204:                                   ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN4ncnn3Mat7channelEi.exit
  %.2.lcssa = phi ptr [ %.1117206, %_ZN4ncnn3Mat7channelEi.exit ], [ %.1117206, %.preheader.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.eh = load ptr, ptr %i.v, align 8, !tbaa !11  ; 2 uses
  %.not.i = icmp eq ptr %i.eh, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit125, label %bb.e

bb.e:                                             ; preds = %._crit_edge204
  %i.ei = atomicrmw add ptr %i.eh, i32 -1 acq_rel, align 4
  %i.ej = icmp eq i32 %i.ei, 1
  br i1 %i.ej, label %bb.f, label %_ZN4ncnn3MatD2Ev.exit125

bb.f:                                             ; preds = %bb.e
  %i.ek = load ptr, ptr %i.y, align 8, !tbaa !17  ; 3 uses
  %.not3.i = icmp eq ptr %i.ek, null
  %i.el = load ptr, ptr %14, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !9
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef %i.el)
          to label %_ZN4ncnn3MatD2Ev.exit125 unwind label %bb.j, !inline_history !19

bb.h:                                             ; preds = %bb.f
  %.not.i145 = icmp eq ptr %i.el, null
  br i1 %.not.i145, label %_ZN4ncnn3MatD2Ev.exit125, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.el) #9
  br label %_ZN4ncnn3MatD2Ev.exit125

bb.j:                                             ; preds = %bb.g
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit125:                         ; preds = %bb.e, %._crit_edge204, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  %i.er = add nuw nsw i32 %.0114207, 1            ; 2 uses
  %i.es = load i32, ptr %i.r, align 4, !tbaa !44  ; 3 uses
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %.noexc150, label %._crit_edge209.loopexit, !llvm.loop !126

._crit_edge.loopexit:                             ; preds = %.critedge
  %.pre = load i32, ptr %10, align 4, !tbaa !77
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.eu = phi i32 [ %i.dz, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.ev = phi i32 [ %i.ea, %.preheader ], [ %i.ji, %._crit_edge.loopexit ]
  %.3.lcssa = phi ptr [ %.2202, %.preheader ], [ %i.jh, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %i.ew = sext i32 %i.eu to i64
  %i.ex = icmp slt i64 %indvars.iv.next222, %i.ew
  br i1 %i.ex, label %.preheader, label %._crit_edge204, !llvm.loop !127

bb.k:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 5 uses
  %.3200 = phi ptr [ %.2202, %.lr.ph ], [ %i.jh, %.critedge ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !38
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !38
  %i.fc = trunc nsw i64 %indvars.iv to i32
  %i.fd = load <2 x i32>, ptr %i.an, align 4, !tbaa !77
  %i.fe = insertelement <2 x i32> %i.eg, i32 %i.fc, i64 0
  %i.ff = mul nsw <2 x i32> %i.fd, %i.fe
  %i.fg = call <3 x i32> @llvm.masked.load.v3i32.p0(ptr nonnull align 4 %i.ao, <3 x i1> <i1 true, i1 false, i1 true>, <3 x i32> poison), !tbaa !77
  %i.fh = shufflevector <3 x i32> %i.fg, <3 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.fi = sub <2 x i32> %i.ff, %i.fh
  %i.fj = load <2 x i32>, ptr %i.ap, align 4, !tbaa !77
  %i.fk = mul nsw <2 x i32> %i.fj, %i.dy
  %i.fl = add nsw <2 x i32> %i.fi, %i.fk
  %i.fm = sitofp <2 x i32> %i.fl to <2 x float>
  %i.fn = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fo = insertelement <2 x float> %i.fn, float %i.ez, i64 1
  %i.fp = fadd fast <2 x float> %i.fo, %i.fm      ; 3 uses
  %i.fq = extractelement <2 x float> %i.fp, i64 1 ; 3 uses
  %i.fr = fcmp fast ogt float %i.fq, -1.000000e+00
  %i.fs = extractelement <2 x float> %i.fp, i64 0 ; 3 uses
  %i.ft = fcmp fast ogt float %i.fs, -1.000000e+00
  %or.cond = select i1 %i.fr, i1 %i.ft, i1 false
  br i1 %or.cond, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.fu = load i32, ptr %12, align 4, !tbaa !77   ; 2 uses
  %i.fv = sitofp fast i32 %i.fu to float
  %i.fw = fcmp fast olt float %i.fq, %i.fv
  br i1 %i.fw, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.fx = load i32, ptr %13, align 4, !tbaa !77   ; 2 uses
  %i.fy = sitofp fast i32 %i.fx to float
  %i.fz = fcmp fast olt float %i.fs, %i.fy
  br i1 %i.fz, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.ga = call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.fp)
  %i.gb = fptosi <2 x float> %i.ga to <2 x i32>   ; 3 uses
  %i.gc = extractelement <2 x i32> %i.gb, i64 1   ; 5 uses
  %i.gd = add nsw i32 %i.gc, 1                    ; 2 uses
  %i.ge = extractelement <2 x i32> %i.gb, i64 0   ; 5 uses
  %i.gf = add nsw i32 %i.ge, 1                    ; 2 uses
  %i.gg = sitofp fast i32 %i.gc to float
  %i.gh = fsub fast float %i.fq, %i.gg            ; 3 uses
  %i.gi = sitofp fast i32 %i.ge to float
  %i.gj = fsub fast float %i.fs, %i.gi            ; 3 uses
  %i.gk = fsub fast float 1.000000e+00, %i.gh     ; 2 uses
  %i.gl = fsub fast float 1.000000e+00, %i.gj     ; 2 uses
  %i.gm = icmp sgt <2 x i32> %i.gb, splat (i32 -1) ; 2 uses
  %i.gn = extractelement <2 x i1> %i.gm, i64 0    ; 2 uses
  %i.go = extractelement <2 x i1> %i.gm, i64 1    ; 2 uses
  %i.gp = select i1 %i.go, i1 %i.gn, i1 false
  %i.gq = add nsw i32 %i.fx, -1
  %i.gr = icmp sgt i32 %i.gq, %i.ge               ; 2 uses
  %i.gs = select i1 %i.go, i1 %i.gr, i1 false
  %i.gt = add nsw i32 %i.fu, -1
  %i.gu = icmp sgt i32 %i.gt, %i.gc               ; 2 uses
  %i.gv = select i1 %i.gu, i1 %i.gn, i1 false
  %i.gw = select i1 %i.gu, i1 %i.gr, i1 false
  %i.gx = fmul fast float %i.gl, %i.gk
  %i.gy = fmul fast float %i.gk, %i.gj
  %i.gz = fmul fast float %i.gl, %i.gh
  %i.ha = fmul fast float %i.gj, %i.gh
  br i1 %i.gp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hb = zext nneg i32 %i.gc to i64
  %i.hc = mul i64 %i.bf, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.hc
  %i.he = shl nuw nsw i32 %i.ge, 4
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.hf
  %i.hh = load <16 x float>, ptr %i.hg, align 64, !tbaa !106
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.hi = phi fast <16 x float> [ %i.hh, %bb.o ], [ zeroinitializer, %bb.n ]
  br i1 %i.gs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hj = zext nneg i32 %i.gc to i64
  %i.hk = mul i64 %i.bf, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.hk
  %i.hm = shl nsw i32 %i.gf, 4
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.hn
  %i.hp = load <16 x float>, ptr %i.ho, align 64, !tbaa !106
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.hq = phi fast <16 x float> [ %i.hp, %bb.q ], [ zeroinitializer, %bb.p ]
  br i1 %i.gv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hr = sext i32 %i.gd to i64
  %i.hs = mul i64 %i.bf, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.hs
  %i.hu = shl nuw nsw i32 %i.ge, 4
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hv
  %i.hx = load <16 x float>, ptr %i.hw, align 64, !tbaa !106
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.hy = phi fast <16 x float> [ %i.hx, %bb.s ], [ zeroinitializer, %bb.r ]
  br i1 %i.gw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hz = sext i32 %i.gd to i64
  %i.ia = mul i64 %i.bf, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ia
  %i.ic = shl nsw i32 %i.gf, 4
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.id
  %i.if = load <16 x float>, ptr %i.ie, align 64, !tbaa !106
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ig = phi fast <16 x float> [ %i.if, %bb.u ], [ zeroinitializer, %bb.t ]
  %i.ih = insertelement <16 x float> poison, float %i.gx, i64 0
  %i.ii = shufflevector <16 x float> %i.ih, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ij = fmul fast <16 x float> %i.hi, %i.ii
  %i.ik = insertelement <16 x float> poison, float %i.gy, i64 0
  %i.il = shufflevector <16 x float> %i.ik, <16 x float> poison, <16 x i32> zeroinitializer
  %i.im = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hq, <16 x float> nofpclass(nan inf) %i.il, <16 x float> nofpclass(nan inf) %i.ij)
  %i.in = insertelement <16 x float> poison, float %i.gz, i64 0
  %i.io = shufflevector <16 x float> %i.in, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ip = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hy, <16 x float> nofpclass(nan inf) %i.io, <16 x float> nofpclass(nan inf) %i.im)
  %i.iq = insertelement <16 x float> poison, float %i.ha, i64 0
  %i.ir = shufflevector <16 x float> %i.iq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.is = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ig, <16 x float> nofpclass(nan inf) %i.ir, <16 x float> nofpclass(nan inf) %i.ip) ; 2 uses
  %i.it = load i8, ptr %8, align 1, !tbaa !93, !range !50, !noundef !51
  %i.iu = trunc nuw i8 %i.it to i1
  br i1 %i.iu, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.iv = load ptr, ptr %14, align 8, !tbaa !18
  %i.iw = load i32, ptr %i.aa, align 4, !tbaa !55
  %i.ix = sext i32 %i.iw to i64
  %i.iy = mul nsw i64 %indvars.iv221, %i.ix
  %i.iz = load i64, ptr %i.w, align 8, !tbaa !56
  %i.ja = mul i64 %i.iy, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.ja
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !38
  %i.je = insertelement <16 x float> poison, float %i.jd, i64 0
  %i.jf = shufflevector <16 x float> %i.je, <16 x float> poison, <16 x i32> zeroinitializer
  %i.jg = fmul fast <16 x float> %i.jf, %i.is
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.k, %bb.v, %bb.w, %bb.m
  %.1 = phi nsz <16 x float> [ %i.is, %bb.v ], [ zeroinitializer, %bb.m ], [ %i.jg, %bb.w ], [ zeroinitializer, %bb.k ], [ zeroinitializer, %bb.l ]
  store <16 x float> %.1, ptr %.3200, align 64, !tbaa !106
  %i.jh = getelementptr inbounds nuw i8, ptr %.3200, i64 64 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ji = load i32, ptr %11, align 4, !tbaa !77   ; 2 uses
  %i.jj = sext i32 %i.ji to i64
  %i.jk = icmp slt i64 %indvars.iv.next, %i.jj
  br i1 %i.jk, label %bb.k, label %._crit_edge.loopexit, !llvm.loop !128

._crit_edge215:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge215, %bb.a
  ret void

bb.y:                                             ; preds = %bb.d
  %i.jl = landingpad { ptr, i32 }
          catch ptr null
  %i.jm = extractvalue { ptr, i32 } %i.jl, 0
  call void @__clang_call_terminate(ptr %i.jm) #22
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare !callback !129 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn27DeformableConv2D_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !77     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !77
  %i.h = load i32, ptr %0, align 4, !tbaa !77     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !77
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !77
  %i.k = load i32, ptr %i.a, align 4, !tbaa !77   ; 2 uses
  %.not216 = icmp sgt i32 %i.k, %i.j
  br i1 %.not216, label %._crit_edge218, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph

_ZNK4ncnn3Mat7channelEi.exit.lr.ph:               ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 216 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 212 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 44 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 52
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 228
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 236
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 220
  %i.aq = load i32, ptr %i.q, align 8, !tbaa !45  ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %_ZNK4ncnn3Mat7channelEi.exit.preheader, label %._crit_edge218

_ZNK4ncnn3Mat7channelEi.exit.preheader:           ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph
  %i.as = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.at = phi i32 [ %i.j, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.bw, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.au = phi i32 [ %i.aq, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.bx, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.av = phi i32 [ %i.aq, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.by, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv227 = phi i64 [ %i.as, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %indvars.iv.next228, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !18, !noalias !131
  %i.ax = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !131
  %i.ay = mul i64 %i.ax, %indvars.iv227
  %i.az = load i64, ptr %i.n, align 8, !tbaa !56, !noalias !131 ; 2 uses
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ba ; 4 uses
  %i.bc = icmp sgt i32 %i.av, 0
  br i1 %i.bc, label %.preheader200.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader200.lr.ph:                              ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.bd = load i32, ptr %i.l, align 4, !tbaa !55, !noalias !131
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul i64 %i.az, %i.be                    ; 4 uses
  %i.bg = load i32, ptr %i.r, align 4, !tbaa !44  ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.preheader200.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader200.preheader:                          ; preds = %.preheader200.lr.ph
  %i.bi = load ptr, ptr %4, align 8, !tbaa !18
  %i.bj = load i32, ptr %5, align 4, !tbaa !77
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul nsw i64 %indvars.iv227, %i.bk
  %i.bm = load i32, ptr %i.o, align 4, !tbaa !55
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul nsw i64 %i.bl, %i.bn
  %i.bp = load i64, ptr %i.p, align 8, !tbaa !56
  %i.bq = mul i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bq
  br label %.preheader200

.preheader200:                                    ; preds = %.preheader200.preheader, %._crit_edge212
  %i.bs = phi i32 [ %i.ca, %._crit_edge212 ], [ %i.au, %.preheader200.preheader ]
  %i.bt = phi i32 [ %i.cb, %._crit_edge212 ], [ %i.bg, %.preheader200.preheader ] ; 3 uses
  %.0104215 = phi i32 [ %i.cc, %._crit_edge212 ], [ 0, %.preheader200.preheader ] ; 3 uses
  %.0105214 = phi ptr [ %.1.lcssa, %._crit_edge212 ], [ %i.br, %.preheader200.preheader ] ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.noexc138.preheader, label %._crit_edge212

.noexc138.preheader:                              ; preds = %.preheader200
  %i.bv = insertelement <2 x i32> poison, i32 %.0104215, i64 1
  br label %.noexc138

_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %._crit_edge212
  %.pre231 = load i32, ptr %i.b, align 4, !tbaa !77
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.preheader200.lr.ph, %_ZN4ncnn3MatD2Ev.exit.loopexit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.bw = phi i32 [ %i.at, %_ZNK4ncnn3Mat7channelEi.exit ], [ %.pre231, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.at, %.preheader200.lr.ph ] ; 2 uses
  %i.bx = phi i32 [ %i.au, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.ca, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.au, %.preheader200.lr.ph ]
  %i.by = phi i32 [ %i.av, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.ca, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.av, %.preheader200.lr.ph ]
  %indvars.iv.next228 = add nsw i64 %indvars.iv227, 1
  %i.bz = sext i32 %i.bw to i64
  %.not.not = icmp slt i64 %indvars.iv227, %i.bz
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge218, !llvm.loop !134

._crit_edge212.loopexit:                          ; preds = %_ZN4ncnn3MatD2Ev.exit113
  %.pre230 = load i32, ptr %i.q, align 8, !tbaa !45
  br label %._crit_edge212

._crit_edge212:                                   ; preds = %._crit_edge212.loopexit, %.preheader200
  %i.ca = phi i32 [ %i.bs, %.preheader200 ], [ %.pre230, %._crit_edge212.loopexit ] ; 4 uses
  %i.cb = phi i32 [ %i.bt, %.preheader200 ], [ %i.es, %._crit_edge212.loopexit ]
  %.1.lcssa = phi ptr [ %.0105214, %.preheader200 ], [ %.2.lcssa, %._crit_edge212.loopexit ]
  %i.cc = add nuw nsw i32 %.0104215, 1            ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.ca
  br i1 %i.cd, label %.preheader200, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !135

.noexc138:                                        ; preds = %.noexc138.preheader, %_ZN4ncnn3MatD2Ev.exit113
  %i.ce = phi i32 [ %i.es, %_ZN4ncnn3MatD2Ev.exit113 ], [ %i.bt, %.noexc138.preheader ]
  %.0103210 = phi i32 [ %i.er, %_ZN4ncnn3MatD2Ev.exit113 ], [ 0, %.noexc138.preheader ] ; 3 uses
  %.1209 = phi ptr [ %.2.lcssa, %_ZN4ncnn3MatD2Ev.exit113 ], [ %.0105214, %.noexc138.preheader ] ; 3 uses
  %i.cf = mul nuw nsw i32 %i.ce, %.0104215
  %i.cg = add nsw i32 %i.cf, %.0103210            ; 2 uses
  %i.ch = shl nsw i32 %i.cg, 1                    ; 2 uses
  %i.ci = load i32, ptr %i.s, align 4, !tbaa !55, !noalias !136
  %i.cj = load ptr, ptr %7, align 8, !tbaa !18, !noalias !136 ; 2 uses
  %i.ck = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !136
  %i.cl = sext i32 %i.ch to i64
  %i.cm = load i64, ptr %i.u, align 8, !tbaa !56, !noalias !136 ; 2 uses
  %i.cn = mul i64 %i.cm, %i.ck                    ; 2 uses
  %i.co = mul i64 %i.cn, %i.cl
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.co
  %i.cq = sext i32 %i.ci to i64
  %i.cr = or disjoint i32 %i.ch, 1
  %i.cs = sext i32 %i.cr to i64
  %i.ct = mul i64 %i.cn, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.cv = load i8, ptr %8, align 1, !tbaa !93, !range !50, !noundef !51
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %.noexc135, label %bb.d

.noexc135:                                        ; preds = %.noexc138
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.cx = load i32, ptr %i.af, align 4, !tbaa !55, !noalias !139 ; 2 uses
  %i.cy = load i32, ptr %i.ag, align 8, !tbaa !94, !noalias !139 ; 2 uses
  %i.cz = load i32, ptr %i.ah, align 4, !tbaa !124, !noalias !139
  %i.da = load ptr, ptr %9, align 8, !tbaa !18, !noalias !139
  %i.db = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !139
  %i.dc = sext i32 %i.cg to i64
  %i.dd = mul i64 %i.db, %i.dc
  %i.de = load i64, ptr %i.aj, align 8, !tbaa !56, !noalias !139 ; 4 uses
  %i.df = mul i64 %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.df
  %i.dh = load i32, ptr %i.ak, align 8, !tbaa !76, !noalias !139
  %i.di = load ptr, ptr %i.al, align 8, !tbaa !17, !noalias !139
  store ptr %i.dg, ptr %14, align 8, !tbaa !18
  store ptr null, ptr %i.v, align 8, !tbaa !11
  store i64 %i.de, ptr %i.w, align 8, !tbaa !56
  store i32 %i.dh, ptr %i.x, align 8, !tbaa !76
  store ptr %i.di, ptr %i.y, align 8, !tbaa !17
  store i32 %i.cx, ptr %i.aa, align 4, !tbaa !55
  store i32 %i.cy, ptr %i.ab, align 8, !tbaa !94
  store i32 1, ptr %i.ac, align 4, !tbaa !124
  store i32 %i.cz, ptr %i.ad, align 8, !tbaa !78
  %i.dj = sext i32 %i.cx to i64
  %i.dk = sext i32 %i.cy to i64
  %i.dl = mul nsw i64 %i.dk, %i.dj                ; 2 uses
  %i.dm = mul i64 %i.de, %i.dl
  %i.dn = add i64 %i.dm, 15
  %i.do = and i64 %i.dn, -16
  %i.dp = udiv i64 %i.do, %i.de
  store i64 %i.dp, ptr %i.ae, align 8, !tbaa !20
  %i.dq = load i32, ptr %i.am, align 8, !tbaa !125, !noalias !139 ; 2 uses
  %i.dr = add nsw i32 %i.dq, -1
  store i32 %i.dr, ptr %i.z, align 8, !tbaa !125, !alias.scope !139
  %i.ds = icmp eq i32 %i.dq, 4
  br i1 %i.ds, label %bb.c, label %_ZN4ncnn3Mat7channelEi.exit

bb.c:                                             ; preds = %.noexc135
  store i64 %i.dl, ptr %i.ae, align 8, !tbaa !20, !alias.scope !139
  br label %_ZN4ncnn3Mat7channelEi.exit

bb.d:                                             ; preds = %.noexc138
  store i64 0, ptr %i.ae, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %14, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.y, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef 0, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3Mat7channelEi.exit unwind label %bb.y

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %bb.d, %bb.c, %.noexc135
  %i.dt = load i32, ptr %10, align 4, !tbaa !77   ; 2 uses
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %.preheader.lr.ph, label %._crit_edge207

.preheader.lr.ph:                                 ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %i.dv = mul i64 %i.cm, %i.cq
  %i.dw = load i32, ptr %11, align 4, !tbaa !77   ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.preheader.preheader, label %._crit_edge207

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.dy = insertelement <2 x i32> %i.bv, i32 %.0103210, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.dz = phi i32 [ %i.eu, %._crit_edge ], [ %i.dt, %.preheader.preheader ]
  %i.ea = phi i32 [ %i.ev, %._crit_edge ], [ %i.dw, %.preheader.preheader ] ; 2 uses
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %._crit_edge ], [ 0, %.preheader.preheader ] ; 4 uses
  %.2205 = phi ptr [ %.3.lcssa, %._crit_edge ], [ %.1209, %.preheader.preheader ] ; 2 uses
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ec = mul i64 %i.dv, %indvars.iv224           ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ec
  %i.ef = trunc nsw i64 %indvars.iv224 to i32
  %i.eg = insertelement <2 x i32> poison, i32 %i.ef, i64 1
  br label %bb.k

._crit_edge207:                                   ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN4ncnn3Mat7channelEi.exit
  %.2.lcssa = phi ptr [ %.1209, %_ZN4ncnn3Mat7channelEi.exit ], [ %.1209, %.preheader.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.eh = load ptr, ptr %i.v, align 8, !tbaa !11  ; 2 uses
  %.not.i = icmp eq ptr %i.eh, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit113, label %bb.e

bb.e:                                             ; preds = %._crit_edge207
  %i.ei = atomicrmw add ptr %i.eh, i32 -1 acq_rel, align 4
  %i.ej = icmp eq i32 %i.ei, 1
  br i1 %i.ej, label %bb.f, label %_ZN4ncnn3MatD2Ev.exit113

bb.f:                                             ; preds = %bb.e
  %i.ek = load ptr, ptr %i.y, align 8, !tbaa !17  ; 3 uses
  %.not3.i = icmp eq ptr %i.ek, null
  %i.el = load ptr, ptr %14, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !9
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef %i.el)
          to label %_ZN4ncnn3MatD2Ev.exit113 unwind label %bb.j, !inline_history !19

bb.h:                                             ; preds = %bb.f
  %.not.i133 = icmp eq ptr %i.el, null
  br i1 %.not.i133, label %_ZN4ncnn3MatD2Ev.exit113, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.el) #9
  br label %_ZN4ncnn3MatD2Ev.exit113

bb.j:                                             ; preds = %bb.g
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit113:                         ; preds = %bb.e, %._crit_edge207, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  %i.er = add nuw nsw i32 %.0103210, 1            ; 2 uses
  %i.es = load i32, ptr %i.r, align 4, !tbaa !44  ; 3 uses
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %.noexc138, label %._crit_edge212.loopexit, !llvm.loop !142

._crit_edge.loopexit:                             ; preds = %.critedge
  %.pre = load i32, ptr %10, align 4, !tbaa !77
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.eu = phi i32 [ %i.dz, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.ev = phi i32 [ %i.ea, %.preheader ], [ %i.ji, %._crit_edge.loopexit ]
  %.3.lcssa = phi ptr [ %.2205, %.preheader ], [ %i.jh, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %i.ew = sext i32 %i.eu to i64
  %i.ex = icmp slt i64 %indvars.iv.next225, %i.ew
  br i1 %i.ex, label %.preheader, label %._crit_edge207, !llvm.loop !143

bb.k:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 5 uses
  %.3203 = phi ptr [ %.2205, %.lr.ph ], [ %i.jh, %.critedge ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !38
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !38
  %i.fc = trunc nsw i64 %indvars.iv to i32
  %i.fd = load <2 x i32>, ptr %i.an, align 4, !tbaa !77
  %i.fe = insertelement <2 x i32> %i.eg, i32 %i.fc, i64 0
  %i.ff = mul nsw <2 x i32> %i.fd, %i.fe
  %i.fg = call <3 x i32> @llvm.masked.load.v3i32.p0(ptr nonnull align 4 %i.ao, <3 x i1> <i1 true, i1 false, i1 true>, <3 x i32> poison), !tbaa !77
  %i.fh = shufflevector <3 x i32> %i.fg, <3 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.fi = sub <2 x i32> %i.ff, %i.fh
  %i.fj = load <2 x i32>, ptr %i.ap, align 4, !tbaa !77
  %i.fk = mul nsw <2 x i32> %i.fj, %i.dy
  %i.fl = add nsw <2 x i32> %i.fi, %i.fk
  %i.fm = sitofp <2 x i32> %i.fl to <2 x float>
  %i.fn = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fo = insertelement <2 x float> %i.fn, float %i.ez, i64 1
  %i.fp = fadd fast <2 x float> %i.fo, %i.fm      ; 3 uses
  %i.fq = extractelement <2 x float> %i.fp, i64 1 ; 3 uses
  %i.fr = fcmp fast ogt float %i.fq, -1.000000e+00
  %i.fs = extractelement <2 x float> %i.fp, i64 0 ; 3 uses
  %i.ft = fcmp fast ogt float %i.fs, -1.000000e+00
  %or.cond = select i1 %i.fr, i1 %i.ft, i1 false
  br i1 %or.cond, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.fu = load i32, ptr %12, align 4, !tbaa !77   ; 2 uses
  %i.fv = sitofp fast i32 %i.fu to float
  %i.fw = fcmp fast olt float %i.fq, %i.fv
  br i1 %i.fw, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.fx = load i32, ptr %13, align 4, !tbaa !77   ; 2 uses
  %i.fy = sitofp fast i32 %i.fx to float
  %i.fz = fcmp fast olt float %i.fs, %i.fy
  br i1 %i.fz, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.ga = call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.fp)
  %i.gb = fptosi <2 x float> %i.ga to <2 x i32>   ; 3 uses
  %i.gc = extractelement <2 x i32> %i.gb, i64 1   ; 5 uses
  %i.gd = add nsw i32 %i.gc, 1                    ; 2 uses
  %i.ge = extractelement <2 x i32> %i.gb, i64 0   ; 5 uses
  %i.gf = add nsw i32 %i.ge, 1                    ; 2 uses
  %i.gg = sitofp fast i32 %i.gc to float
  %i.gh = fsub fast float %i.fq, %i.gg            ; 3 uses
  %i.gi = sitofp fast i32 %i.ge to float
  %i.gj = fsub fast float %i.fs, %i.gi            ; 3 uses
  %i.gk = fsub fast float 1.000000e+00, %i.gh     ; 2 uses
  %i.gl = fsub fast float 1.000000e+00, %i.gj     ; 2 uses
  %i.gm = icmp sgt <2 x i32> %i.gb, splat (i32 -1) ; 2 uses
  %i.gn = extractelement <2 x i1> %i.gm, i64 0    ; 2 uses
  %i.go = extractelement <2 x i1> %i.gm, i64 1    ; 2 uses
  %i.gp = select i1 %i.go, i1 %i.gn, i1 false
  %i.gq = add nsw i32 %i.fx, -1
  %i.gr = icmp sgt i32 %i.gq, %i.ge               ; 2 uses
  %i.gs = select i1 %i.go, i1 %i.gr, i1 false
  %i.gt = add nsw i32 %i.fu, -1
  %i.gu = icmp sgt i32 %i.gt, %i.gc               ; 2 uses
  %i.gv = select i1 %i.gu, i1 %i.gn, i1 false
  %i.gw = select i1 %i.gu, i1 %i.gr, i1 false
  %i.gx = fmul fast float %i.gl, %i.gk
  %i.gy = fmul fast float %i.gk, %i.gj
  %i.gz = fmul fast float %i.gl, %i.gh
  %i.ha = fmul fast float %i.gj, %i.gh
  br i1 %i.gp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hb = zext nneg i32 %i.gc to i64
  %i.hc = mul i64 %i.bf, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.hc
  %i.he = shl nuw nsw i32 %i.ge, 3
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.hf
  %i.hh = load <8 x float>, ptr %i.hg, align 32, !tbaa !106
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.hi = phi fast <8 x float> [ %i.hh, %bb.o ], [ zeroinitializer, %bb.n ]
  br i1 %i.gs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hj = zext nneg i32 %i.gc to i64
  %i.hk = mul i64 %i.bf, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.hk
  %i.hm = shl nsw i32 %i.gf, 3
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.hn
  %i.hp = load <8 x float>, ptr %i.ho, align 32, !tbaa !106
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.hq = phi fast <8 x float> [ %i.hp, %bb.q ], [ zeroinitializer, %bb.p ]
  br i1 %i.gv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hr = sext i32 %i.gd to i64
  %i.hs = mul i64 %i.bf, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.hs
  %i.hu = shl nuw nsw i32 %i.ge, 3
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hv
  %i.hx = load <8 x float>, ptr %i.hw, align 32, !tbaa !106
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.hy = phi fast <8 x float> [ %i.hx, %bb.s ], [ zeroinitializer, %bb.r ]
  br i1 %i.gw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hz = sext i32 %i.gd to i64
  %i.ia = mul i64 %i.bf, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ia
  %i.ic = shl nsw i32 %i.gf, 3
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.id
  %i.if = load <8 x float>, ptr %i.ie, align 32, !tbaa !106
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ig = phi fast <8 x float> [ %i.if, %bb.u ], [ zeroinitializer, %bb.t ]
  %i.ih = insertelement <8 x float> poison, float %i.gx, i64 0
  %i.ii = shufflevector <8 x float> %i.ih, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ij = fmul fast <8 x float> %i.hi, %i.ii
  %i.ik = insertelement <8 x float> poison, float %i.gy, i64 0
  %i.il = shufflevector <8 x float> %i.ik, <8 x float> poison, <8 x i32> zeroinitializer
  %i.im = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hq, <8 x float> nofpclass(nan inf) %i.il, <8 x float> nofpclass(nan inf) %i.ij)
  %i.in = insertelement <8 x float> poison, float %i.gz, i64 0
  %i.io = shufflevector <8 x float> %i.in, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ip = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hy, <8 x float> nofpclass(nan inf) %i.io, <8 x float> nofpclass(nan inf) %i.im)
  %i.iq = insertelement <8 x float> poison, float %i.ha, i64 0
  %i.ir = shufflevector <8 x float> %i.iq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.is = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ig, <8 x float> nofpclass(nan inf) %i.ir, <8 x float> nofpclass(nan inf) %i.ip) ; 2 uses
  %i.it = load i8, ptr %8, align 1, !tbaa !93, !range !50, !noundef !51
  %i.iu = trunc nuw i8 %i.it to i1
  br i1 %i.iu, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.iv = load ptr, ptr %14, align 8, !tbaa !18
  %i.iw = load i32, ptr %i.aa, align 4, !tbaa !55
  %i.ix = sext i32 %i.iw to i64
  %i.iy = mul nsw i64 %indvars.iv224, %i.ix
  %i.iz = load i64, ptr %i.w, align 8, !tbaa !56
  %i.ja = mul i64 %i.iy, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.ja
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !38
  %i.je = insertelement <8 x float> poison, float %i.jd, i64 0
  %i.jf = shufflevector <8 x float> %i.je, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jg = fmul fast <8 x float> %i.jf, %i.is
  br label %.critedge

.critedge:                                        ; preds = %bb.v, %bb.w, %bb.l, %bb.k, %bb.m
  %.1198 = phi nsz <8 x float> [ zeroinitializer, %bb.k ], [ zeroinitializer, %bb.m ], [ zeroinitializer, %bb.l ], [ %i.jg, %bb.w ], [ %i.is, %bb.v ]
  store <8 x float> %.1198, ptr %.3203, align 32, !tbaa !106
  %i.jh = getelementptr inbounds nuw i8, ptr %.3203, i64 32 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ji = load i32, ptr %11, align 4, !tbaa !77   ; 2 uses
  %i.jj = sext i32 %i.ji to i64
  %i.jk = icmp slt i64 %indvars.iv.next, %i.jj
  br i1 %i.jk, label %bb.k, label %._crit_edge.loopexit, !llvm.loop !144

._crit_edge218:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge218, %bb.a
  ret void

bb.y:                                             ; preds = %bb.d
  %i.jl = landingpad { ptr, i32 }
          catch ptr null
  %i.jm = extractvalue { ptr, i32 } %i.jl, 0
  call void @__clang_call_terminate(ptr %i.jm) #22
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn27DeformableConv2D_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !77     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !77
  %i.h = load i32, ptr %0, align 4, !tbaa !77     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !77
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !77
  %i.k = load i32, ptr %i.a, align 4, !tbaa !77   ; 2 uses
  %.not216 = icmp sgt i32 %i.k, %i.j
  br i1 %.not216, label %._crit_edge218, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph

_ZNK4ncnn3Mat7channelEi.exit.lr.ph:               ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 216 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 212 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 44 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 52
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 228
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 236
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 220
  %i.aq = load i32, ptr %i.q, align 8, !tbaa !45  ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %_ZNK4ncnn3Mat7channelEi.exit.preheader, label %._crit_edge218

_ZNK4ncnn3Mat7channelEi.exit.preheader:           ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph
  %i.as = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.at = phi i32 [ %i.j, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.bw, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.au = phi i32 [ %i.aq, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.bx, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.av = phi i32 [ %i.aq, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.by, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv227 = phi i64 [ %i.as, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %indvars.iv.next228, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !18, !noalias !145
  %i.ax = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !145
  %i.ay = mul i64 %i.ax, %indvars.iv227
  %i.az = load i64, ptr %i.n, align 8, !tbaa !56, !noalias !145 ; 2 uses
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ba ; 4 uses
  %i.bc = icmp sgt i32 %i.av, 0
  br i1 %i.bc, label %.preheader200.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader200.lr.ph:                              ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.bd = load i32, ptr %i.l, align 4, !tbaa !55, !noalias !145
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul i64 %i.az, %i.be                    ; 4 uses
  %i.bg = load i32, ptr %i.r, align 4, !tbaa !44  ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.preheader200.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader200.preheader:                          ; preds = %.preheader200.lr.ph
  %i.bi = load ptr, ptr %4, align 8, !tbaa !18
  %i.bj = load i32, ptr %5, align 4, !tbaa !77
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul nsw i64 %indvars.iv227, %i.bk
  %i.bm = load i32, ptr %i.o, align 4, !tbaa !55
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul nsw i64 %i.bl, %i.bn
  %i.bp = load i64, ptr %i.p, align 8, !tbaa !56
  %i.bq = mul i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bq
  br label %.preheader200

.preheader200:                                    ; preds = %.preheader200.preheader, %._crit_edge212
  %i.bs = phi i32 [ %i.ca, %._crit_edge212 ], [ %i.au, %.preheader200.preheader ]
  %i.bt = phi i32 [ %i.cb, %._crit_edge212 ], [ %i.bg, %.preheader200.preheader ] ; 3 uses
  %.0104215 = phi i32 [ %i.cc, %._crit_edge212 ], [ 0, %.preheader200.preheader ] ; 3 uses
  %.0105214 = phi ptr [ %.1.lcssa, %._crit_edge212 ], [ %i.br, %.preheader200.preheader ] ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.noexc138.preheader, label %._crit_edge212

.noexc138.preheader:                              ; preds = %.preheader200
  %i.bv = insertelement <2 x i32> poison, i32 %.0104215, i64 1
  br label %.noexc138

_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %._crit_edge212
  %.pre231 = load i32, ptr %i.b, align 4, !tbaa !77
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.preheader200.lr.ph, %_ZN4ncnn3MatD2Ev.exit.loopexit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.bw = phi i32 [ %i.at, %_ZNK4ncnn3Mat7channelEi.exit ], [ %.pre231, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.at, %.preheader200.lr.ph ] ; 2 uses
  %i.bx = phi i32 [ %i.au, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.ca, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.au, %.preheader200.lr.ph ]
  %i.by = phi i32 [ %i.av, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.ca, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.av, %.preheader200.lr.ph ]
  %indvars.iv.next228 = add nsw i64 %indvars.iv227, 1
  %i.bz = sext i32 %i.bw to i64
  %.not.not = icmp slt i64 %indvars.iv227, %i.bz
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge218, !llvm.loop !148

._crit_edge212.loopexit:                          ; preds = %_ZN4ncnn3MatD2Ev.exit113
  %.pre230 = load i32, ptr %i.q, align 8, !tbaa !45
  br label %._crit_edge212

._crit_edge212:                                   ; preds = %._crit_edge212.loopexit, %.preheader200
  %i.ca = phi i32 [ %i.bs, %.preheader200 ], [ %.pre230, %._crit_edge212.loopexit ] ; 4 uses
  %i.cb = phi i32 [ %i.bt, %.preheader200 ], [ %i.es, %._crit_edge212.loopexit ]
  %.1.lcssa = phi ptr [ %.0105214, %.preheader200 ], [ %.2.lcssa, %._crit_edge212.loopexit ]
  %i.cc = add nuw nsw i32 %.0104215, 1            ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.ca
  br i1 %i.cd, label %.preheader200, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !149

.noexc138:                                        ; preds = %.noexc138.preheader, %_ZN4ncnn3MatD2Ev.exit113
  %i.ce = phi i32 [ %i.es, %_ZN4ncnn3MatD2Ev.exit113 ], [ %i.bt, %.noexc138.preheader ]
  %.0103210 = phi i32 [ %i.er, %_ZN4ncnn3MatD2Ev.exit113 ], [ 0, %.noexc138.preheader ] ; 3 uses
  %.1209 = phi ptr [ %.2.lcssa, %_ZN4ncnn3MatD2Ev.exit113 ], [ %.0105214, %.noexc138.preheader ] ; 3 uses
  %i.cf = mul nuw nsw i32 %i.ce, %.0104215
  %i.cg = add nsw i32 %i.cf, %.0103210            ; 2 uses
  %i.ch = shl nsw i32 %i.cg, 1                    ; 2 uses
  %i.ci = load i32, ptr %i.s, align 4, !tbaa !55, !noalias !150
  %i.cj = load ptr, ptr %7, align 8, !tbaa !18, !noalias !150 ; 2 uses
  %i.ck = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !150
  %i.cl = sext i32 %i.ch to i64
  %i.cm = load i64, ptr %i.u, align 8, !tbaa !56, !noalias !150 ; 2 uses
  %i.cn = mul i64 %i.cm, %i.ck                    ; 2 uses
  %i.co = mul i64 %i.cn, %i.cl
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.co
  %i.cq = sext i32 %i.ci to i64
  %i.cr = or disjoint i32 %i.ch, 1
  %i.cs = sext i32 %i.cr to i64
  %i.ct = mul i64 %i.cn, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.cv = load i8, ptr %8, align 1, !tbaa !93, !range !50, !noundef !51
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %.noexc135, label %bb.d

.noexc135:                                        ; preds = %.noexc138
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.cx = load i32, ptr %i.af, align 4, !tbaa !55, !noalias !153 ; 2 uses
  %i.cy = load i32, ptr %i.ag, align 8, !tbaa !94, !noalias !153 ; 2 uses
  %i.cz = load i32, ptr %i.ah, align 4, !tbaa !124, !noalias !153
  %i.da = load ptr, ptr %9, align 8, !tbaa !18, !noalias !153
  %i.db = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !153
  %i.dc = sext i32 %i.cg to i64
  %i.dd = mul i64 %i.db, %i.dc
  %i.de = load i64, ptr %i.aj, align 8, !tbaa !56, !noalias !153 ; 4 uses
  %i.df = mul i64 %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.df
  %i.dh = load i32, ptr %i.ak, align 8, !tbaa !76, !noalias !153
  %i.di = load ptr, ptr %i.al, align 8, !tbaa !17, !noalias !153
  store ptr %i.dg, ptr %14, align 8, !tbaa !18
  store ptr null, ptr %i.v, align 8, !tbaa !11
  store i64 %i.de, ptr %i.w, align 8, !tbaa !56
  store i32 %i.dh, ptr %i.x, align 8, !tbaa !76
  store ptr %i.di, ptr %i.y, align 8, !tbaa !17
  store i32 %i.cx, ptr %i.aa, align 4, !tbaa !55
  store i32 %i.cy, ptr %i.ab, align 8, !tbaa !94
  store i32 1, ptr %i.ac, align 4, !tbaa !124
  store i32 %i.cz, ptr %i.ad, align 8, !tbaa !78
  %i.dj = sext i32 %i.cx to i64
  %i.dk = sext i32 %i.cy to i64
  %i.dl = mul nsw i64 %i.dk, %i.dj                ; 2 uses
  %i.dm = mul i64 %i.de, %i.dl
  %i.dn = add i64 %i.dm, 15
  %i.do = and i64 %i.dn, -16
  %i.dp = udiv i64 %i.do, %i.de
  store i64 %i.dp, ptr %i.ae, align 8, !tbaa !20
  %i.dq = load i32, ptr %i.am, align 8, !tbaa !125, !noalias !153 ; 2 uses
  %i.dr = add nsw i32 %i.dq, -1
  store i32 %i.dr, ptr %i.z, align 8, !tbaa !125, !alias.scope !153
  %i.ds = icmp eq i32 %i.dq, 4
  br i1 %i.ds, label %bb.c, label %_ZN4ncnn3Mat7channelEi.exit

bb.c:                                             ; preds = %.noexc135
  store i64 %i.dl, ptr %i.ae, align 8, !tbaa !20, !alias.scope !153
  br label %_ZN4ncnn3Mat7channelEi.exit

bb.d:                                             ; preds = %.noexc138
  store i64 0, ptr %i.ae, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %14, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.y, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef 0, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3Mat7channelEi.exit unwind label %bb.y

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %bb.d, %bb.c, %.noexc135
  %i.dt = load i32, ptr %10, align 4, !tbaa !77   ; 2 uses
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %.preheader.lr.ph, label %._crit_edge207

.preheader.lr.ph:                                 ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %i.dv = mul i64 %i.cm, %i.cq
  %i.dw = load i32, ptr %11, align 4, !tbaa !77   ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.preheader.preheader, label %._crit_edge207

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.dy = insertelement <2 x i32> %i.bv, i32 %.0103210, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.dz = phi i32 [ %i.eu, %._crit_edge ], [ %i.dt, %.preheader.preheader ]
  %i.ea = phi i32 [ %i.ev, %._crit_edge ], [ %i.dw, %.preheader.preheader ] ; 2 uses
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %._crit_edge ], [ 0, %.preheader.preheader ] ; 4 uses
  %.2205 = phi ptr [ %.3.lcssa, %._crit_edge ], [ %.1209, %.preheader.preheader ] ; 2 uses
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ec = mul i64 %i.dv, %indvars.iv224           ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ec
  %i.ef = trunc nsw i64 %indvars.iv224 to i32
  %i.eg = insertelement <2 x i32> poison, i32 %i.ef, i64 1
  br label %bb.k

._crit_edge207:                                   ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN4ncnn3Mat7channelEi.exit
  %.2.lcssa = phi ptr [ %.1209, %_ZN4ncnn3Mat7channelEi.exit ], [ %.1209, %.preheader.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.eh = load ptr, ptr %i.v, align 8, !tbaa !11  ; 2 uses
  %.not.i = icmp eq ptr %i.eh, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit113, label %bb.e

bb.e:                                             ; preds = %._crit_edge207
  %i.ei = atomicrmw add ptr %i.eh, i32 -1 acq_rel, align 4
  %i.ej = icmp eq i32 %i.ei, 1
  br i1 %i.ej, label %bb.f, label %_ZN4ncnn3MatD2Ev.exit113

bb.f:                                             ; preds = %bb.e
  %i.ek = load ptr, ptr %i.y, align 8, !tbaa !17  ; 3 uses
  %.not3.i = icmp eq ptr %i.ek, null
  %i.el = load ptr, ptr %14, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !9
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef %i.el)
          to label %_ZN4ncnn3MatD2Ev.exit113 unwind label %bb.j, !inline_history !19

bb.h:                                             ; preds = %bb.f
  %.not.i133 = icmp eq ptr %i.el, null
  br i1 %.not.i133, label %_ZN4ncnn3MatD2Ev.exit113, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.el) #9
  br label %_ZN4ncnn3MatD2Ev.exit113

bb.j:                                             ; preds = %bb.g
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit113:                         ; preds = %bb.e, %._crit_edge207, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  %i.er = add nuw nsw i32 %.0103210, 1            ; 2 uses
  %i.es = load i32, ptr %i.r, align 4, !tbaa !44  ; 3 uses
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %.noexc138, label %._crit_edge212.loopexit, !llvm.loop !156

._crit_edge.loopexit:                             ; preds = %.critedge
  %.pre = load i32, ptr %10, align 4, !tbaa !77
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.eu = phi i32 [ %i.dz, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.ev = phi i32 [ %i.ea, %.preheader ], [ %i.ji, %._crit_edge.loopexit ]
  %.3.lcssa = phi ptr [ %.2205, %.preheader ], [ %i.jh, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %i.ew = sext i32 %i.eu to i64
  %i.ex = icmp slt i64 %indvars.iv.next225, %i.ew
  br i1 %i.ex, label %.preheader, label %._crit_edge207, !llvm.loop !157

bb.k:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 5 uses
  %.3203 = phi ptr [ %.2205, %.lr.ph ], [ %i.jh, %.critedge ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !38
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !38
  %i.fc = trunc nsw i64 %indvars.iv to i32
  %i.fd = load <2 x i32>, ptr %i.an, align 4, !tbaa !77
  %i.fe = insertelement <2 x i32> %i.eg, i32 %i.fc, i64 0
  %i.ff = mul nsw <2 x i32> %i.fd, %i.fe
  %i.fg = call <3 x i32> @llvm.masked.load.v3i32.p0(ptr nonnull align 4 %i.ao, <3 x i1> <i1 true, i1 false, i1 true>, <3 x i32> poison), !tbaa !77
  %i.fh = shufflevector <3 x i32> %i.fg, <3 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.fi = sub <2 x i32> %i.ff, %i.fh
  %i.fj = load <2 x i32>, ptr %i.ap, align 4, !tbaa !77
  %i.fk = mul nsw <2 x i32> %i.fj, %i.dy
  %i.fl = add nsw <2 x i32> %i.fi, %i.fk
  %i.fm = sitofp <2 x i32> %i.fl to <2 x float>
  %i.fn = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fo = insertelement <2 x float> %i.fn, float %i.ez, i64 1
  %i.fp = fadd fast <2 x float> %i.fo, %i.fm      ; 3 uses
  %i.fq = extractelement <2 x float> %i.fp, i64 1 ; 3 uses
  %i.fr = fcmp fast ogt float %i.fq, -1.000000e+00
  %i.fs = extractelement <2 x float> %i.fp, i64 0 ; 3 uses
  %i.ft = fcmp fast ogt float %i.fs, -1.000000e+00
  %or.cond = select i1 %i.fr, i1 %i.ft, i1 false
  br i1 %or.cond, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.fu = load i32, ptr %12, align 4, !tbaa !77   ; 2 uses
  %i.fv = sitofp fast i32 %i.fu to float
  %i.fw = fcmp fast olt float %i.fq, %i.fv
  br i1 %i.fw, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.fx = load i32, ptr %13, align 4, !tbaa !77   ; 2 uses
  %i.fy = sitofp fast i32 %i.fx to float
  %i.fz = fcmp fast olt float %i.fs, %i.fy
  br i1 %i.fz, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.ga = call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.fp)
  %i.gb = fptosi <2 x float> %i.ga to <2 x i32>   ; 3 uses
  %i.gc = extractelement <2 x i32> %i.gb, i64 1   ; 5 uses
  %i.gd = add nsw i32 %i.gc, 1                    ; 2 uses
  %i.ge = extractelement <2 x i32> %i.gb, i64 0   ; 5 uses
  %i.gf = add nsw i32 %i.ge, 1                    ; 2 uses
  %i.gg = sitofp fast i32 %i.gc to float
  %i.gh = fsub fast float %i.fq, %i.gg            ; 3 uses
  %i.gi = sitofp fast i32 %i.ge to float
  %i.gj = fsub fast float %i.fs, %i.gi            ; 3 uses
  %i.gk = fsub fast float 1.000000e+00, %i.gh     ; 2 uses
  %i.gl = fsub fast float 1.000000e+00, %i.gj     ; 2 uses
  %i.gm = icmp sgt <2 x i32> %i.gb, splat (i32 -1) ; 2 uses
  %i.gn = extractelement <2 x i1> %i.gm, i64 0    ; 2 uses
  %i.go = extractelement <2 x i1> %i.gm, i64 1    ; 2 uses
  %i.gp = select i1 %i.go, i1 %i.gn, i1 false
  %i.gq = add nsw i32 %i.fx, -1
  %i.gr = icmp sgt i32 %i.gq, %i.ge               ; 2 uses
  %i.gs = select i1 %i.go, i1 %i.gr, i1 false
  %i.gt = add nsw i32 %i.fu, -1
  %i.gu = icmp sgt i32 %i.gt, %i.gc               ; 2 uses
  %i.gv = select i1 %i.gu, i1 %i.gn, i1 false
  %i.gw = select i1 %i.gu, i1 %i.gr, i1 false
  %i.gx = fmul fast float %i.gl, %i.gk
  %i.gy = fmul fast float %i.gk, %i.gj
  %i.gz = fmul fast float %i.gl, %i.gh
  %i.ha = fmul fast float %i.gj, %i.gh
  br i1 %i.gp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hb = zext nneg i32 %i.gc to i64
  %i.hc = mul i64 %i.bf, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.hc
  %i.he = shl nuw nsw i32 %i.ge, 2
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.hf
  %i.hh = load <4 x float>, ptr %i.hg, align 16, !tbaa !106
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.hi = phi fast <4 x float> [ %i.hh, %bb.o ], [ zeroinitializer, %bb.n ]
  br i1 %i.gs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hj = zext nneg i32 %i.gc to i64
  %i.hk = mul i64 %i.bf, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.hk
  %i.hm = shl nsw i32 %i.gf, 2
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.hn
  %i.hp = load <4 x float>, ptr %i.ho, align 16, !tbaa !106
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.hq = phi fast <4 x float> [ %i.hp, %bb.q ], [ zeroinitializer, %bb.p ]
  br i1 %i.gv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hr = sext i32 %i.gd to i64
  %i.hs = mul i64 %i.bf, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.hs
  %i.hu = shl nuw nsw i32 %i.ge, 2
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hv
  %i.hx = load <4 x float>, ptr %i.hw, align 16, !tbaa !106
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.hy = phi fast <4 x float> [ %i.hx, %bb.s ], [ zeroinitializer, %bb.r ]
  br i1 %i.gw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hz = sext i32 %i.gd to i64
  %i.ia = mul i64 %i.bf, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ia
  %i.ic = shl nsw i32 %i.gf, 2
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.id
  %i.if = load <4 x float>, ptr %i.ie, align 16, !tbaa !106
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ig = phi fast <4 x float> [ %i.if, %bb.u ], [ zeroinitializer, %bb.t ]
  %i.ih = insertelement <4 x float> poison, float %i.gx, i64 0
  %i.ii = shufflevector <4 x float> %i.ih, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ij = fmul fast <4 x float> %i.hi, %i.ii
  %i.ik = insertelement <4 x float> poison, float %i.gy, i64 0
  %i.il = shufflevector <4 x float> %i.ik, <4 x float> poison, <4 x i32> zeroinitializer
  %i.im = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hq, <4 x float> nofpclass(nan inf) %i.il, <4 x float> nofpclass(nan inf) %i.ij)
  %i.in = insertelement <4 x float> poison, float %i.gz, i64 0
  %i.io = shufflevector <4 x float> %i.in, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ip = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hy, <4 x float> nofpclass(nan inf) %i.io, <4 x float> nofpclass(nan inf) %i.im)
  %i.iq = insertelement <4 x float> poison, float %i.ha, i64 0
  %i.ir = shufflevector <4 x float> %i.iq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.is = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ig, <4 x float> nofpclass(nan inf) %i.ir, <4 x float> nofpclass(nan inf) %i.ip) ; 2 uses
  %i.it = load i8, ptr %8, align 1, !tbaa !93, !range !50, !noundef !51
  %i.iu = trunc nuw i8 %i.it to i1
  br i1 %i.iu, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.iv = load ptr, ptr %14, align 8, !tbaa !18
  %i.iw = load i32, ptr %i.aa, align 4, !tbaa !55
  %i.ix = sext i32 %i.iw to i64
  %i.iy = mul nsw i64 %indvars.iv224, %i.ix
  %i.iz = load i64, ptr %i.w, align 8, !tbaa !56
  %i.ja = mul i64 %i.iy, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.ja
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !38
  %i.je = insertelement <4 x float> poison, float %i.jd, i64 0
  %i.jf = shufflevector <4 x float> %i.je, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jg = fmul fast <4 x float> %i.jf, %i.is
  br label %.critedge

.critedge:                                        ; preds = %bb.v, %bb.w, %bb.l, %bb.k, %bb.m
  %.1198 = phi nsz <4 x float> [ zeroinitializer, %bb.k ], [ zeroinitializer, %bb.m ], [ zeroinitializer, %bb.l ], [ %i.jg, %bb.w ], [ %i.is, %bb.v ]
  store <4 x float> %.1198, ptr %.3203, align 16, !tbaa !106
  %i.jh = getelementptr inbounds nuw i8, ptr %.3203, i64 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ji = load i32, ptr %11, align 4, !tbaa !77   ; 2 uses
  %i.jj = sext i32 %i.ji to i64
  %i.jk = icmp slt i64 %indvars.iv.next, %i.jj
  br i1 %i.jk, label %bb.k, label %._crit_edge.loopexit, !llvm.loop !158

._crit_edge218:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge218, %bb.a
  ret void

bb.y:                                             ; preds = %bb.d
  %i.jl = landingpad { ptr, i32 }
          catch ptr null
  %i.jm = extractvalue { ptr, i32 } %i.jl, 0
  call void @__clang_call_terminate(ptr %i.jm) #22
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #12

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn27DeformableConv2D_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !77     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !77
  %i.h = load i32, ptr %0, align 4, !tbaa !77     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !77
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !77
  %i.k = load i32, ptr %i.a, align 4, !tbaa !77   ; 2 uses
  %.not207 = icmp sgt i32 %i.k, %i.j
  br i1 %.not207, label %._crit_edge209, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph

_ZNK4ncnn3Mat7channelEi.exit.lr.ph:               ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 216 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 212 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 44 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 52
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 232
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 244
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 228
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 236
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 224
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 220
  %i.at = load i32, ptr %i.q, align 8, !tbaa !45  ; 3 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %_ZNK4ncnn3Mat7channelEi.exit.preheader, label %._crit_edge209

_ZNK4ncnn3Mat7channelEi.exit.preheader:           ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph
  %i.av = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.aw = phi i32 [ %i.j, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.by, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.ax = phi i32 [ %i.at, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.bz, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.ay = phi i32 [ %i.at, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.ca, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv220 = phi i64 [ %i.av, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %indvars.iv.next221, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !18, !noalias !159
  %i.ba = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !159
  %i.bb = mul i64 %i.ba, %indvars.iv220
  %i.bc = load i64, ptr %i.n, align 8, !tbaa !56, !noalias !159 ; 2 uses
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 4 uses
  %i.bf = icmp sgt i32 %i.ay, 0
  br i1 %i.bf, label %.preheader193.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader193.lr.ph:                              ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.bg = load i32, ptr %i.l, align 4, !tbaa !55, !noalias !159
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul i64 %i.bc, %i.bh                    ; 4 uses
  %i.bj = load i32, ptr %i.r, align 4, !tbaa !44  ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.preheader193.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader193.preheader:                          ; preds = %.preheader193.lr.ph
  %i.bl = load ptr, ptr %4, align 8, !tbaa !18
  %i.bm = load i32, ptr %5, align 4, !tbaa !77
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul nsw i64 %indvars.iv220, %i.bn
  %i.bp = load i32, ptr %i.o, align 4, !tbaa !55
  %i.bq = sext i32 %i.bp to i64
  %i.br = mul nsw i64 %i.bo, %i.bq
  %i.bs = load i64, ptr %i.p, align 8, !tbaa !56
  %i.bt = mul i64 %i.br, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bt
  br label %.preheader193

.preheader193:                                    ; preds = %.preheader193.preheader, %._crit_edge
  %i.bv = phi i32 [ %i.cc, %._crit_edge ], [ %i.ax, %.preheader193.preheader ]
  %i.bw = phi i32 [ %i.cd, %._crit_edge ], [ %i.bj, %.preheader193.preheader ] ; 3 uses
  %.0111206 = phi i32 [ %i.ce, %._crit_edge ], [ 0, %.preheader193.preheader ] ; 3 uses
  %.0112205 = phi ptr [ %.1113.lcssa, %._crit_edge ], [ %i.bu, %.preheader193.preheader ] ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.noexc146, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %._crit_edge
  %.pre223 = load i32, ptr %i.b, align 4, !tbaa !77
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.preheader193.lr.ph, %_ZN4ncnn3MatD2Ev.exit.loopexit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.by = phi i32 [ %i.aw, %_ZNK4ncnn3Mat7channelEi.exit ], [ %.pre223, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.aw, %.preheader193.lr.ph ] ; 2 uses
  %i.bz = phi i32 [ %i.ax, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.cc, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.ax, %.preheader193.lr.ph ]
  %i.ca = phi i32 [ %i.ay, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.cc, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.ay, %.preheader193.lr.ph ]
  %indvars.iv.next221 = add nsw i64 %indvars.iv220, 1
  %i.cb = sext i32 %i.by to i64
  %.not.not = icmp slt i64 %indvars.iv220, %i.cb
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge209, !llvm.loop !162

._crit_edge.loopexit:                             ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %.pre = load i32, ptr %i.q, align 8, !tbaa !45
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader193
  %i.cc = phi i32 [ %i.bv, %.preheader193 ], [ %.pre, %._crit_edge.loopexit ] ; 4 uses
  %i.cd = phi i32 [ %i.bw, %.preheader193 ], [ %i.im, %._crit_edge.loopexit ]
  %.1113.lcssa = phi ptr [ %.0112205, %.preheader193 ], [ %.2.lcssa, %._crit_edge.loopexit ]
  %i.ce = add nuw nsw i32 %.0111206, 1            ; 2 uses
  %i.cf = icmp slt i32 %i.ce, %i.cc
  br i1 %i.cf, label %.preheader193, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !163

.noexc146:                                        ; preds = %.preheader193, %_ZN4ncnn3MatD2Ev.exit121
  %i.cg = phi i32 [ %i.im, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.bw, %.preheader193 ]
  %.0110203 = phi i32 [ %i.il, %_ZN4ncnn3MatD2Ev.exit121 ], [ 0, %.preheader193 ] ; 3 uses
  %.1113202 = phi ptr [ %.2.lcssa, %_ZN4ncnn3MatD2Ev.exit121 ], [ %.0112205, %.preheader193 ] ; 3 uses
  %i.ch = mul nuw nsw i32 %i.cg, %.0111206
  %i.ci = add nsw i32 %i.ch, %.0110203            ; 2 uses
  %i.cj = shl nsw i32 %i.ci, 1                    ; 2 uses
  %i.ck = load i32, ptr %i.s, align 4, !tbaa !55, !noalias !164
  %i.cl = load ptr, ptr %7, align 8, !tbaa !18, !noalias !164 ; 2 uses
  %i.cm = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !164
  %i.cn = sext i32 %i.cj to i64
  %i.co = load i64, ptr %i.u, align 8, !tbaa !56, !noalias !164 ; 2 uses
  %i.cp = mul i64 %i.co, %i.cm                    ; 2 uses
  %i.cq = mul i64 %i.cp, %i.cn
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cq
  %i.cs = sext i32 %i.ck to i64
  %i.ct = or disjoint i32 %i.cj, 1
  %i.cu = sext i32 %i.ct to i64
  %i.cv = mul i64 %i.cp, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.cx = load i8, ptr %8, align 1, !tbaa !93, !range !50, !noundef !51
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %.noexc143, label %bb.d

.noexc143:                                        ; preds = %.noexc146
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.cz = load i32, ptr %i.af, align 4, !tbaa !55, !noalias !167 ; 2 uses
  %i.da = load i32, ptr %i.ag, align 8, !tbaa !94, !noalias !167 ; 2 uses
  %i.db = load i32, ptr %i.ah, align 4, !tbaa !124, !noalias !167
  %i.dc = load ptr, ptr %9, align 8, !tbaa !18, !noalias !167
  %i.dd = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !167
  %i.de = sext i32 %i.ci to i64
  %i.df = mul i64 %i.dd, %i.de
  %i.dg = load i64, ptr %i.aj, align 8, !tbaa !56, !noalias !167 ; 4 uses
  %i.dh = mul i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dh
  %i.dj = load i32, ptr %i.ak, align 8, !tbaa !76, !noalias !167
  %i.dk = load ptr, ptr %i.al, align 8, !tbaa !17, !noalias !167
  store ptr %i.di, ptr %14, align 8, !tbaa !18
  store ptr null, ptr %i.v, align 8, !tbaa !11
  store i64 %i.dg, ptr %i.w, align 8, !tbaa !56
  store i32 %i.dj, ptr %i.x, align 8, !tbaa !76
  store ptr %i.dk, ptr %i.y, align 8, !tbaa !17
  store i32 %i.cz, ptr %i.aa, align 4, !tbaa !55
  store i32 %i.da, ptr %i.ab, align 8, !tbaa !94
  store i32 1, ptr %i.ac, align 4, !tbaa !124
  store i32 %i.db, ptr %i.ad, align 8, !tbaa !78
  %i.dl = sext i32 %i.cz to i64
  %i.dm = sext i32 %i.da to i64
  %i.dn = mul nsw i64 %i.dm, %i.dl                ; 2 uses
  %i.do = mul i64 %i.dg, %i.dn
  %i.dp = add i64 %i.do, 15
  %i.dq = and i64 %i.dp, -16
  %i.dr = udiv i64 %i.dq, %i.dg
  store i64 %i.dr, ptr %i.ae, align 8, !tbaa !20
  %i.ds = load i32, ptr %i.am, align 8, !tbaa !125, !noalias !167 ; 2 uses
  %i.dt = add nsw i32 %i.ds, -1
  store i32 %i.dt, ptr %i.z, align 8, !tbaa !125, !alias.scope !167
  %i.du = icmp eq i32 %i.ds, 4
  br i1 %i.du, label %bb.c, label %_ZN4ncnn3Mat7channelEi.exit

bb.c:                                             ; preds = %.noexc143
  store i64 %i.dn, ptr %i.ae, align 8, !tbaa !20, !alias.scope !167
  br label %_ZN4ncnn3Mat7channelEi.exit

bb.d:                                             ; preds = %.noexc146
  store i64 0, ptr %i.ae, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %14, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.y, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef 0, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3Mat7channelEi.exit unwind label %bb.y

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %bb.d, %bb.c, %.noexc143
  %i.dv = load i32, ptr %10, align 4, !tbaa !77   ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, 0
  br i1 %i.dw, label %.preheader.lr.ph, label %._crit_edge200

.preheader.lr.ph:                                 ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %i.dx = load i32, ptr %11, align 4, !tbaa !77   ; 2 uses
  %i.dy = icmp sgt i32 %i.dx, 0
  %i.dz = mul i64 %i.co, %i.cs
  br i1 %i.dy, label %.preheader.lr.ph.split.us, label %._crit_edge200

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.ea = load i32, ptr %i.an, align 8, !tbaa !100
  %i.eb = load i32, ptr %i.ao, align 4, !tbaa !98
  %i.ec = load i32, ptr %i.ap, align 4, !tbaa !97
  %i.ed = load i32, ptr %i.aq, align 4, !tbaa !95
  %i.ee = load i32, ptr %i.ar, align 8, !tbaa !108
  %i.ef = mul nsw i32 %i.ee, %.0111206
  %invariant.op = sub i32 %i.ef, %i.eb
  %i.eg = load i32, ptr %i.as, align 4, !tbaa !107
  %i.eh = mul nsw i32 %i.eg, %.0110203
  %invariant.op.us = sub i32 %i.eh, %i.ed
  %wide.trip.count218 = zext nneg i32 %i.dv to i64
  %wide.trip.count = zext nneg i32 %i.dx to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %._crit_edge.us ], [ 0, %.preheader.lr.ph.split.us ] ; 4 uses
  %.2198.us = phi ptr [ %i.ia, %._crit_edge.us ], [ %.1113202, %.preheader.lr.ph.split.us ]
  %i.ei = mul i64 %i.dz, %indvars.iv215           ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.ei
  %i.el = trunc i64 %indvars.iv215 to i32
  %i.em = mul i32 %i.ea, %i.el
  %.reass = add i32 %i.em, %invariant.op
  %i.en = sitofp fast i32 %.reass to float
  %i.eo = load ptr, ptr %14, align 8
  %i.ep = load i32, ptr %i.aa, align 4
  %i.eq = sext i32 %i.ep to i64
  %i.er = mul nsw i64 %indvars.iv215, %i.eq
  %i.es = load i64, ptr %i.w, align 8
  %i.et = mul i64 %i.er, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.et
  br label %bb.e

bb.e:                                             ; preds = %.preheader.us, %.critedge.us
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %.critedge.us ] ; 5 uses
  %.3196.us = phi ptr [ %.2198.us, %.preheader.us ], [ %i.ia, %.critedge.us ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !38
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !38
  %i.ez = fadd fast float %i.ew, %i.en            ; 4 uses
  %i.fa = trunc i64 %indvars.iv to i32
  %i.fb = mul i32 %i.ec, %i.fa
  %.reass.us = add i32 %i.fb, %invariant.op.us
  %i.fc = sitofp fast i32 %.reass.us to float
  %i.fd = fadd fast float %i.ey, %i.fc            ; 4 uses
  %i.fe = fcmp fast ogt float %i.ez, -1.000000e+00
  %i.ff = fcmp fast ogt float %i.fd, -1.000000e+00
  %or.cond.us = select i1 %i.fe, i1 %i.ff, i1 false
  br i1 %or.cond.us, label %bb.f, label %.critedge.us

bb.f:                                             ; preds = %bb.e
  %i.fg = load i32, ptr %12, align 4, !tbaa !77   ; 2 uses
  %i.fh = sitofp fast i32 %i.fg to float
  %i.fi = fcmp fast olt float %i.ez, %i.fh
  br i1 %i.fi, label %bb.g, label %.critedge.us

bb.g:                                             ; preds = %bb.f
  %i.fj = load i32, ptr %13, align 4, !tbaa !77   ; 2 uses
  %i.fk = sitofp fast i32 %i.fj to float
  %i.fl = fcmp fast olt float %i.fd, %i.fk
  br i1 %i.fl, label %bb.h, label %.critedge.us

bb.h:                                             ; preds = %bb.g
  %i.fm = call fast float @llvm.floor.f32(float %i.ez)
  %i.fn = fptosi float %i.fm to i32               ; 6 uses
  %i.fo = call fast float @llvm.floor.f32(float %i.fd)
  %i.fp = fptosi float %i.fo to i32               ; 6 uses
  %i.fq = add nsw i32 %i.fn, 1                    ; 2 uses
  %i.fr = add nsw i32 %i.fp, 1                    ; 2 uses
  %i.fs = sitofp fast i32 %i.fn to float
  %i.ft = fsub fast float %i.ez, %i.fs            ; 3 uses
  %i.fu = sitofp fast i32 %i.fp to float
  %i.fv = fsub fast float %i.fd, %i.fu            ; 3 uses
  %i.fw = fsub fast float 1.000000e+00, %i.ft     ; 2 uses
  %i.fx = fsub fast float 1.000000e+00, %i.fv     ; 2 uses
  %i.fy = icmp sgt i32 %i.fn, -1                  ; 2 uses
  %i.fz = icmp sgt i32 %i.fp, -1                  ; 2 uses
  %i.ga = select i1 %i.fy, i1 %i.fz, i1 false
  %i.gb = add nsw i32 %i.fj, -1
  %i.gc = icmp sgt i32 %i.gb, %i.fp               ; 2 uses
  %i.gd = select i1 %i.fy, i1 %i.gc, i1 false
  %i.ge = add nsw i32 %i.fg, -1
  %i.gf = icmp sgt i32 %i.ge, %i.fn               ; 2 uses
  %i.gg = select i1 %i.gf, i1 %i.fz, i1 false
  %i.gh = select i1 %i.gf, i1 %i.gc, i1 false
  %i.gi = fmul fast float %i.fw, %i.fv
  %i.gj = fmul fast float %i.fx, %i.ft
  %i.gk = fmul fast float %i.fv, %i.ft
  br i1 %i.ga, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.gl = fmul fast float %i.fx, %i.fw
  %i.gm = zext nneg i32 %i.fn to i64
  %i.gn = mul i64 %i.bi, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.gn
  %i.gp = zext nneg i32 %i.fp to i64
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.gp
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !38
  %i.gs = fmul fast float %i.gl, %i.gr
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.gt = phi float [ %i.gs, %bb.i ], [ 0.000000e+00, %bb.h ] ; 2 uses
  br i1 %i.gd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.gu = zext nneg i32 %i.fn to i64
  %i.gv = mul i64 %i.bi, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.gv
  %i.gx = sext i32 %i.fr to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %i.gx
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !38
  %i.ha = fmul fast float %i.gi, %i.gz
  %i.hb = fadd fast float %i.ha, %i.gt
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.hc = phi float [ %i.hb, %bb.k ], [ %i.gt, %bb.j ] ; 2 uses
  br i1 %i.gg, label %bb.m, label %bb.n
end_hunk_0
