Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deformableconv2d_x86_avx?download=true
inline.NumInlined: 20
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4ncnn16DeformableConv2DD2Ev:bb.a

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #9 ; 0 uses
  tail call void @_ZSt9terminatev() #20
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
define internal void @_ZNK4ncnn24DeformableConv2D_x86_avx7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !68     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !68
  %i.h = load i32, ptr %0, align 4, !tbaa !68     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !68
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !68
  %i.k = load i32, ptr %i.a, align 4, !tbaa !68   ; 2 uses
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
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 244
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 228
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 236
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 220
  %i.ar = load i32, ptr %i.q, align 8, !tbaa !45  ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %_ZNK4ncnn3Mat7channelEi.exit.preheader, label %._crit_edge218

_ZNK4ncnn3Mat7channelEi.exit.preheader:           ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph
  %i.at = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.au = phi i32 [ %i.j, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.bx, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.av = phi i32 [ %i.ar, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.by, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.aw = phi i32 [ %i.ar, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.bz, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv227 = phi i64 [ %i.at, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %indvars.iv.next228, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.ax = load ptr, ptr %3, align 8, !tbaa !18, !noalias !103
  %i.ay = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !103
  %i.az = mul i64 %i.ay, %indvars.iv227
  %i.ba = load i64, ptr %i.n, align 8, !tbaa !56, !noalias !103 ; 2 uses
  %i.bb = mul i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bb ; 4 uses
  %i.bd = icmp sgt i32 %i.aw, 0
  br i1 %i.bd, label %.preheader200.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader200.lr.ph:                              ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.be = load i32, ptr %i.l, align 4, !tbaa !55, !noalias !103
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul i64 %i.ba, %i.bf                    ; 4 uses
  %i.bh = load i32, ptr %i.r, align 4, !tbaa !44  ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.preheader200.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader200.preheader:                          ; preds = %.preheader200.lr.ph
  %i.bj = load ptr, ptr %4, align 8, !tbaa !18
  %i.bk = load i32, ptr %5, align 4, !tbaa !68
  %i.bl = sext i32 %i.bk to i64
  %i.bm = mul nsw i64 %indvars.iv227, %i.bl
  %i.bn = load i32, ptr %i.o, align 4, !tbaa !55
  %i.bo = sext i32 %i.bn to i64
  %i.bp = mul nsw i64 %i.bm, %i.bo
  %i.bq = load i64, ptr %i.p, align 8, !tbaa !56
  %i.br = mul i64 %i.bp, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.br
  br label %.preheader200

.preheader200:                                    ; preds = %.preheader200.preheader, %._crit_edge212
  %i.bt = phi i32 [ %i.cb, %._crit_edge212 ], [ %i.av, %.preheader200.preheader ]
  %i.bu = phi i32 [ %i.cc, %._crit_edge212 ], [ %i.bh, %.preheader200.preheader ] ; 3 uses
  %.0104215 = phi i32 [ %i.cd, %._crit_edge212 ], [ 0, %.preheader200.preheader ] ; 3 uses
  %.0105214 = phi ptr [ %.1.lcssa, %._crit_edge212 ], [ %i.bs, %.preheader200.preheader ] ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.noexc138.preheader, label %._crit_edge212

.noexc138.preheader:                              ; preds = %.preheader200
  %i.bw = insertelement <2 x i32> poison, i32 %.0104215, i64 1
  br label %.noexc138

_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %._crit_edge212
  %.pre231 = load i32, ptr %i.b, align 4, !tbaa !68
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.preheader200.lr.ph, %_ZN4ncnn3MatD2Ev.exit.loopexit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.bx = phi i32 [ %i.au, %_ZNK4ncnn3Mat7channelEi.exit ], [ %.pre231, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.au, %.preheader200.lr.ph ] ; 2 uses
  %i.by = phi i32 [ %i.av, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.cb, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.av, %.preheader200.lr.ph ]
  %i.bz = phi i32 [ %i.aw, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.cb, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.aw, %.preheader200.lr.ph ]
  %indvars.iv.next228 = add nsw i64 %indvars.iv227, 1
  %i.ca = sext i32 %i.bx to i64
  %.not.not = icmp slt i64 %indvars.iv227, %i.ca
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge218, !llvm.loop !106

._crit_edge212.loopexit:                          ; preds = %_ZN4ncnn3MatD2Ev.exit113
  %.pre230 = load i32, ptr %i.q, align 8, !tbaa !45
  br label %._crit_edge212

._crit_edge212:                                   ; preds = %._crit_edge212.loopexit, %.preheader200
  %i.cb = phi i32 [ %i.bt, %.preheader200 ], [ %.pre230, %._crit_edge212.loopexit ] ; 4 uses
  %i.cc = phi i32 [ %i.bu, %.preheader200 ], [ %i.et, %._crit_edge212.loopexit ]
  %.1.lcssa = phi ptr [ %.0105214, %.preheader200 ], [ %.2.lcssa, %._crit_edge212.loopexit ]
  %i.cd = add nuw nsw i32 %.0104215, 1            ; 2 uses
  %i.ce = icmp slt i32 %i.cd, %i.cb
  br i1 %i.ce, label %.preheader200, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !108

.noexc138:                                        ; preds = %.noexc138.preheader, %_ZN4ncnn3MatD2Ev.exit113
  %i.cf = phi i32 [ %i.et, %_ZN4ncnn3MatD2Ev.exit113 ], [ %i.bu, %.noexc138.preheader ]
  %.0103210 = phi i32 [ %i.es, %_ZN4ncnn3MatD2Ev.exit113 ], [ 0, %.noexc138.preheader ] ; 3 uses
  %.1209 = phi ptr [ %.2.lcssa, %_ZN4ncnn3MatD2Ev.exit113 ], [ %.0105214, %.noexc138.preheader ] ; 3 uses
  %i.cg = mul nsw i32 %i.cf, %.0104215
  %i.ch = add nsw i32 %i.cg, %.0103210            ; 2 uses
  %i.ci = shl nsw i32 %i.ch, 1                    ; 2 uses
  %i.cj = load i32, ptr %i.s, align 4, !tbaa !55, !noalias !109
  %i.ck = load ptr, ptr %7, align 8, !tbaa !18, !noalias !109 ; 2 uses
  %i.cl = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !109
  %i.cm = sext i32 %i.ci to i64
  %i.cn = load i64, ptr %i.u, align 8, !tbaa !56, !noalias !109 ; 2 uses
  %i.co = mul i64 %i.cn, %i.cl                    ; 2 uses
  %i.cp = mul i64 %i.co, %i.cm
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cp
  %i.cr = sext i32 %i.cj to i64
  %i.cs = or disjoint i32 %i.ci, 1
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul i64 %i.co, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.cw = load i8, ptr %8, align 1, !tbaa !84, !range !50, !noundef !51
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %.noexc135, label %bb.d

.noexc135:                                        ; preds = %.noexc138
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.cy = load i32, ptr %i.af, align 4, !tbaa !55, !noalias !112 ; 2 uses
  %i.cz = load i32, ptr %i.ag, align 8, !tbaa !85, !noalias !112 ; 2 uses
  %i.da = load i32, ptr %i.ah, align 4, !tbaa !115, !noalias !112
  %i.db = load ptr, ptr %9, align 8, !tbaa !18, !noalias !112
  %i.dc = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !112
  %i.dd = sext i32 %i.ch to i64
  %i.de = mul i64 %i.dc, %i.dd
  %i.df = load i64, ptr %i.aj, align 8, !tbaa !56, !noalias !112 ; 4 uses
  %i.dg = mul i64 %i.de, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dg
  %i.di = load i32, ptr %i.ak, align 8, !tbaa !67, !noalias !112
  %i.dj = load ptr, ptr %i.al, align 8, !tbaa !17, !noalias !112
  store ptr %i.dh, ptr %14, align 8, !tbaa !18
  store ptr null, ptr %i.v, align 8, !tbaa !11
  store i64 %i.df, ptr %i.w, align 8, !tbaa !56
  store i32 %i.di, ptr %i.x, align 8, !tbaa !67
  store ptr %i.dj, ptr %i.y, align 8, !tbaa !17
  store i32 %i.cy, ptr %i.aa, align 4, !tbaa !55
  store i32 %i.cz, ptr %i.ab, align 8, !tbaa !85
  store i32 1, ptr %i.ac, align 4, !tbaa !115
  store i32 %i.da, ptr %i.ad, align 8, !tbaa !69
  %i.dk = sext i32 %i.cy to i64
  %i.dl = sext i32 %i.cz to i64
  %i.dm = mul nsw i64 %i.dl, %i.dk                ; 2 uses
  %i.dn = mul i64 %i.df, %i.dm
  %i.do = add i64 %i.dn, 15
  %i.dp = and i64 %i.do, -16
  %i.dq = udiv i64 %i.dp, %i.df
  store i64 %i.dq, ptr %i.ae, align 8, !tbaa !20
  %i.dr = load i32, ptr %i.am, align 8, !tbaa !116, !noalias !112 ; 2 uses
  %i.ds = add nsw i32 %i.dr, -1
  store i32 %i.ds, ptr %i.z, align 8, !tbaa !116, !alias.scope !112
  %i.dt = icmp eq i32 %i.dr, 4
  br i1 %i.dt, label %bb.c, label %_ZN4ncnn3Mat7channelEi.exit

bb.c:                                             ; preds = %.noexc135
  store i64 %i.dm, ptr %i.ae, align 8, !tbaa !20, !alias.scope !112
  br label %_ZN4ncnn3Mat7channelEi.exit

bb.d:                                             ; preds = %.noexc138
  store i64 0, ptr %i.ae, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %14, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.y, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef 0, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3Mat7channelEi.exit unwind label %bb.y

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %bb.d, %bb.c, %.noexc135
  %i.du = load i32, ptr %10, align 4, !tbaa !68   ; 2 uses
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.preheader.lr.ph, label %._crit_edge207

.preheader.lr.ph:                                 ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %i.dw = mul i64 %i.cn, %i.cr
  %i.dx = load i32, ptr %11, align 4, !tbaa !68   ; 2 uses
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %.preheader.preheader, label %._crit_edge207

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.dz = insertelement <2 x i32> %i.bw, i32 %.0103210, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.ea = phi i32 [ %i.ev, %._crit_edge ], [ %i.du, %.preheader.preheader ]
  %i.eb = phi i32 [ %i.ew, %._crit_edge ], [ %i.dx, %.preheader.preheader ] ; 2 uses
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %._crit_edge ], [ 0, %.preheader.preheader ] ; 4 uses
  %.2205 = phi ptr [ %.3.lcssa, %._crit_edge ], [ %.1209, %.preheader.preheader ] ; 2 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ed = mul i64 %i.dw, %indvars.iv224           ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.ed
  %i.eg = trunc nsw i64 %indvars.iv224 to i32
  %i.eh = insertelement <2 x i32> poison, i32 %i.eg, i64 1
  br label %bb.k

._crit_edge207:                                   ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN4ncnn3Mat7channelEi.exit
  %.2.lcssa = phi ptr [ %.1209, %_ZN4ncnn3Mat7channelEi.exit ], [ %.1209, %.preheader.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.ei = load ptr, ptr %i.v, align 8, !tbaa !11  ; 2 uses
  %.not.i = icmp eq ptr %i.ei, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit113, label %bb.e

bb.e:                                             ; preds = %._crit_edge207
  %i.ej = atomicrmw add ptr %i.ei, i32 -1 acq_rel, align 4
  %i.ek = icmp eq i32 %i.ej, 1
  br i1 %i.ek, label %bb.f, label %_ZN4ncnn3MatD2Ev.exit113

bb.f:                                             ; preds = %bb.e
  %i.el = load ptr, ptr %i.y, align 8, !tbaa !17  ; 3 uses
  %.not3.i = icmp eq ptr %i.el, null
  %i.em = load ptr, ptr %14, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !9
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  invoke void %i.ep(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef %i.em)
          to label %_ZN4ncnn3MatD2Ev.exit113 unwind label %bb.j, !inline_history !19

bb.h:                                             ; preds = %bb.f
  %.not.i133 = icmp eq ptr %i.em, null
  br i1 %.not.i133, label %_ZN4ncnn3MatD2Ev.exit113, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.em) #9
  br label %_ZN4ncnn3MatD2Ev.exit113

bb.j:                                             ; preds = %bb.g
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit113:                         ; preds = %bb.e, %._crit_edge207, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  %i.es = add nuw nsw i32 %.0103210, 1            ; 2 uses
  %i.et = load i32, ptr %i.r, align 4, !tbaa !44  ; 3 uses
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %.noexc138, label %._crit_edge212.loopexit, !llvm.loop !117

._crit_edge.loopexit:                             ; preds = %.critedge
  %.pre = load i32, ptr %10, align 4, !tbaa !68
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ev = phi i32 [ %i.ea, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.ew = phi i32 [ %i.eb, %.preheader ], [ %i.jm, %._crit_edge.loopexit ]
  %.3.lcssa = phi ptr [ %.2205, %.preheader ], [ %i.jl, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %i.ex = sext i32 %i.ev to i64
  %i.ey = icmp slt i64 %indvars.iv.next225, %i.ex
  br i1 %i.ey, label %.preheader, label %._crit_edge207, !llvm.loop !118

bb.k:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 5 uses
  %.3203 = phi ptr [ %.2205, %.lr.ph ], [ %i.jl, %.critedge ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !38
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !38
  %i.fd = load i32, ptr %i.an, align 4, !tbaa !89
  %i.fe = trunc nsw i64 %indvars.iv to i32
  %i.ff = load i32, ptr %i.ap, align 4, !tbaa !86
  %i.fg = load <2 x i32>, ptr %i.ao, align 4, !tbaa !68
  %i.fh = insertelement <2 x i32> %i.eh, i32 %i.fe, i64 0
  %i.fi = mul nsw <2 x i32> %i.fg, %i.fh
  %i.fj = insertelement <2 x i32> poison, i32 %i.ff, i64 0
  %i.fk = insertelement <2 x i32> %i.fj, i32 %i.fd, i64 1
  %i.fl = sub <2 x i32> %i.fi, %i.fk
  %i.fm = load <2 x i32>, ptr %i.aq, align 4, !tbaa !68
  %i.fn = mul nsw <2 x i32> %i.fm, %i.dz
  %i.fo = add nsw <2 x i32> %i.fl, %i.fn
  %i.fp = sitofp <2 x i32> %i.fo to <2 x float>
  %i.fq = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.fr = insertelement <2 x float> %i.fq, float %i.fa, i64 1
  %i.fs = fadd fast <2 x float> %i.fr, %i.fp      ; 5 uses
  %i.ft = extractelement <2 x float> %i.fs, i64 1 ; 2 uses
  %i.fu = fcmp fast ogt float %i.ft, -1.000000e+00
  %i.fv = extractelement <2 x float> %i.fs, i64 0 ; 2 uses
  %i.fw = fcmp fast ogt float %i.fv, -1.000000e+00
  %or.cond = select i1 %i.fu, i1 %i.fw, i1 false
  br i1 %or.cond, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.fx = load i32, ptr %12, align 4, !tbaa !68   ; 2 uses
  %i.fy = sitofp fast i32 %i.fx to float
  %i.fz = fcmp fast olt float %i.ft, %i.fy
  br i1 %i.fz, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ga = load i32, ptr %13, align 4, !tbaa !68   ; 2 uses
  %i.gb = sitofp fast i32 %i.ga to float
  %i.gc = fcmp fast olt float %i.fv, %i.gb
  br i1 %i.gc, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.gd = call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.fs)
  %i.ge = fptosi <2 x float> %i.gd to <2 x i32>   ; 3 uses
  %i.gf = extractelement <2 x i32> %i.ge, i64 1   ; 5 uses
  %i.gg = add nsw i32 %i.gf, 1                    ; 2 uses
  %i.gh = extractelement <2 x i32> %i.ge, i64 0   ; 5 uses
  %i.gi = add nsw i32 %i.gh, 1                    ; 2 uses
  %i.gj = sitofp <2 x i32> %i.ge to <2 x float>   ; 2 uses
  %foldExtExtBinop = fsub fast <2 x float> %i.fs, %i.gj
  %i.gk = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 3 uses
  %foldExtExtBinop266 = fsub fast <2 x float> %i.fs, %i.gj
  %i.gl = extractelement <2 x float> %foldExtExtBinop266, i64 0 ; 3 uses
  %i.gm = fsub fast float 1.000000e+00, %i.gk     ; 2 uses
  %i.gn = fsub fast float 1.000000e+00, %i.gl     ; 2 uses
  %i.go = icmp sgt i32 %i.gf, -1                  ; 2 uses
  %i.gp = icmp sgt i32 %i.gh, -1                  ; 2 uses
  %i.gq = select i1 %i.go, i1 %i.gp, i1 false
  %i.gr = add nsw i32 %i.ga, -1
  %i.gs = icmp sgt i32 %i.gr, %i.gh               ; 2 uses
  %i.gt = select i1 %i.go, i1 %i.gs, i1 false
  %i.gu = add nsw i32 %i.fx, -1
  %i.gv = icmp sgt i32 %i.gu, %i.gf               ; 2 uses
  %i.gw = select i1 %i.gv, i1 %i.gp, i1 false
  %i.gx = select i1 %i.gv, i1 %i.gs, i1 false
  %i.gy = fmul fast float %i.gn, %i.gm
  %i.gz = fmul fast float %i.gm, %i.gl
  %i.ha = fmul fast float %i.gn, %i.gk
  %i.hb = fmul fast float %i.gl, %i.gk
  br i1 %i.gq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hc = zext nneg i32 %i.gf to i64
  %i.hd = mul i64 %i.bg, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.hd
  %i.hf = shl nsw i32 %i.gh, 3
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.hg
  %i.hi = load <8 x float>, ptr %i.hh, align 32, !tbaa !97
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.hj = phi fast <8 x float> [ %i.hi, %bb.o ], [ zeroinitializer, %bb.n ]
  br i1 %i.gt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hk = zext nneg i32 %i.gf to i64
  %i.hl = mul i64 %i.bg, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.hl
  %i.hn = shl nsw i32 %i.gi, 3
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.ho
  %i.hq = load <8 x float>, ptr %i.hp, align 32, !tbaa !97
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.hr = phi fast <8 x float> [ %i.hq, %bb.q ], [ zeroinitializer, %bb.p ]
  br i1 %i.gw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hs = sext i32 %i.gg to i64
  %i.ht = mul i64 %i.bg, %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ht
  %i.hv = shl nsw i32 %i.gh, 3
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.hw
  %i.hy = load <8 x float>, ptr %i.hx, align 32, !tbaa !97
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.hz = phi fast <8 x float> [ %i.hy, %bb.s ], [ zeroinitializer, %bb.r ]
  br i1 %i.gx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ia = sext i32 %i.gg to i64
  %i.ib = mul i64 %i.bg, %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ib
  %i.id = shl nsw i32 %i.gi, 3
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %i.ie
  %i.ig = load <8 x float>, ptr %i.if, align 32, !tbaa !97
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ih = phi fast <8 x float> [ %i.ig, %bb.u ], [ zeroinitializer, %bb.t ]
  %i.ii = insertelement <8 x float> poison, float %i.gy, i64 0
  %i.ij = shufflevector <8 x float> %i.ii, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ik = fmul fast <8 x float> %i.hj, %i.ij
  %i.il = insertelement <8 x float> poison, float %i.gz, i64 0
  %i.im = shufflevector <8 x float> %i.il, <8 x float> poison, <8 x i32> zeroinitializer
  %i.in = fmul fast <8 x float> %i.hr, %i.im
  %i.io = fadd fast <8 x float> %i.ik, %i.in
  %i.ip = insertelement <8 x float> poison, float %i.ha, i64 0
  %i.iq = shufflevector <8 x float> %i.ip, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ir = fmul fast <8 x float> %i.hz, %i.iq
  %i.is = fadd fast <8 x float> %i.io, %i.ir
  %i.it = insertelement <8 x float> poison, float %i.hb, i64 0
  %i.iu = shufflevector <8 x float> %i.it, <8 x float> poison, <8 x i32> zeroinitializer
  %i.iv = fmul fast <8 x float> %i.ih, %i.iu
  %i.iw = fadd fast <8 x float> %i.iv, %i.is      ; 2 uses
  %i.ix = load i8, ptr %8, align 1, !tbaa !84, !range !50, !noundef !51
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.iz = load ptr, ptr %14, align 8, !tbaa !18
  %i.ja = load i32, ptr %i.aa, align 4, !tbaa !55
  %i.jb = sext i32 %i.ja to i64
  %i.jc = mul nsw i64 %indvars.iv224, %i.jb
  %i.jd = load i64, ptr %i.w, align 8, !tbaa !56
  %i.je = mul i64 %i.jc, %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.je
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %indvars.iv
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !38
  %i.ji = insertelement <8 x float> poison, float %i.jh, i64 0
  %i.jj = shufflevector <8 x float> %i.ji, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jk = fmul fast <8 x float> %i.jj, %i.iw
  br label %.critedge

.critedge:                                        ; preds = %bb.v, %bb.w, %bb.l, %bb.k, %bb.m
  %.1198 = phi nsz <8 x float> [ zeroinitializer, %bb.k ], [ zeroinitializer, %bb.m ], [ zeroinitializer, %bb.l ], [ %i.jk, %bb.w ], [ %i.iw, %bb.v ]
  store <8 x float> %.1198, ptr %.3203, align 32, !tbaa !97
  %i.jl = getelementptr inbounds nuw i8, ptr %.3203, i64 32 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jm = load i32, ptr %11, align 4, !tbaa !68   ; 2 uses
  %i.jn = sext i32 %i.jm to i64
  %i.jo = icmp slt i64 %indvars.iv.next, %i.jn
  br i1 %i.jo, label %bb.k, label %._crit_edge.loopexit, !llvm.loop !119

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
  %i.jp = landingpad { ptr, i32 }
          catch ptr null
  %i.jq = extractvalue { ptr, i32 } %i.jp, 0
  call void @__clang_call_terminate(ptr %i.jq) #20
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
declare !callback !120 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn24DeformableConv2D_x86_avx7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !68     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !68
  %i.h = load i32, ptr %0, align 4, !tbaa !68     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !68
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !68
  %i.k = load i32, ptr %i.a, align 4, !tbaa !68   ; 2 uses
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
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 244
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 228
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 236
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 220
  %i.ar = load i32, ptr %i.q, align 8, !tbaa !45  ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %_ZNK4ncnn3Mat7channelEi.exit.preheader, label %._crit_edge218

_ZNK4ncnn3Mat7channelEi.exit.preheader:           ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph
  %i.at = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.au = phi i32 [ %i.j, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.bx, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.av = phi i32 [ %i.ar, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.by, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.aw = phi i32 [ %i.ar, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.bz, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv227 = phi i64 [ %i.at, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %indvars.iv.next228, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.ax = load ptr, ptr %3, align 8, !tbaa !18, !noalias !122
  %i.ay = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !122
  %i.az = mul i64 %i.ay, %indvars.iv227
  %i.ba = load i64, ptr %i.n, align 8, !tbaa !56, !noalias !122 ; 2 uses
  %i.bb = mul i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bb ; 4 uses
  %i.bd = icmp sgt i32 %i.aw, 0
  br i1 %i.bd, label %.preheader200.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader200.lr.ph:                              ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.be = load i32, ptr %i.l, align 4, !tbaa !55, !noalias !122
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul i64 %i.ba, %i.bf                    ; 4 uses
  %i.bh = load i32, ptr %i.r, align 4, !tbaa !44  ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.preheader200.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader200.preheader:                          ; preds = %.preheader200.lr.ph
  %i.bj = load ptr, ptr %4, align 8, !tbaa !18
  %i.bk = load i32, ptr %5, align 4, !tbaa !68
  %i.bl = sext i32 %i.bk to i64
  %i.bm = mul nsw i64 %indvars.iv227, %i.bl
  %i.bn = load i32, ptr %i.o, align 4, !tbaa !55
  %i.bo = sext i32 %i.bn to i64
  %i.bp = mul nsw i64 %i.bm, %i.bo
  %i.bq = load i64, ptr %i.p, align 8, !tbaa !56
  %i.br = mul i64 %i.bp, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.br
  br label %.preheader200

.preheader200:                                    ; preds = %.preheader200.preheader, %._crit_edge212
  %i.bt = phi i32 [ %i.cb, %._crit_edge212 ], [ %i.av, %.preheader200.preheader ]
  %i.bu = phi i32 [ %i.cc, %._crit_edge212 ], [ %i.bh, %.preheader200.preheader ] ; 3 uses
  %.0104215 = phi i32 [ %i.cd, %._crit_edge212 ], [ 0, %.preheader200.preheader ] ; 3 uses
  %.0105214 = phi ptr [ %.1.lcssa, %._crit_edge212 ], [ %i.bs, %.preheader200.preheader ] ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.noexc138.preheader, label %._crit_edge212

.noexc138.preheader:                              ; preds = %.preheader200
  %i.bw = insertelement <2 x i32> poison, i32 %.0104215, i64 1
  br label %.noexc138

_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %._crit_edge212
  %.pre231 = load i32, ptr %i.b, align 4, !tbaa !68
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.preheader200.lr.ph, %_ZN4ncnn3MatD2Ev.exit.loopexit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.bx = phi i32 [ %i.au, %_ZNK4ncnn3Mat7channelEi.exit ], [ %.pre231, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.au, %.preheader200.lr.ph ] ; 2 uses
  %i.by = phi i32 [ %i.av, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.cb, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.av, %.preheader200.lr.ph ]
  %i.bz = phi i32 [ %i.aw, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.cb, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.aw, %.preheader200.lr.ph ]
  %indvars.iv.next228 = add nsw i64 %indvars.iv227, 1
  %i.ca = sext i32 %i.bx to i64
  %.not.not = icmp slt i64 %indvars.iv227, %i.ca
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge218, !llvm.loop !125

._crit_edge212.loopexit:                          ; preds = %_ZN4ncnn3MatD2Ev.exit113
  %.pre230 = load i32, ptr %i.q, align 8, !tbaa !45
  br label %._crit_edge212

._crit_edge212:                                   ; preds = %._crit_edge212.loopexit, %.preheader200
  %i.cb = phi i32 [ %i.bt, %.preheader200 ], [ %.pre230, %._crit_edge212.loopexit ] ; 4 uses
  %i.cc = phi i32 [ %i.bu, %.preheader200 ], [ %i.et, %._crit_edge212.loopexit ]
  %.1.lcssa = phi ptr [ %.0105214, %.preheader200 ], [ %.2.lcssa, %._crit_edge212.loopexit ]
  %i.cd = add nuw nsw i32 %.0104215, 1            ; 2 uses
  %i.ce = icmp slt i32 %i.cd, %i.cb
  br i1 %i.ce, label %.preheader200, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !126

.noexc138:                                        ; preds = %.noexc138.preheader, %_ZN4ncnn3MatD2Ev.exit113
  %i.cf = phi i32 [ %i.et, %_ZN4ncnn3MatD2Ev.exit113 ], [ %i.bu, %.noexc138.preheader ]
  %.0103210 = phi i32 [ %i.es, %_ZN4ncnn3MatD2Ev.exit113 ], [ 0, %.noexc138.preheader ] ; 3 uses
  %.1209 = phi ptr [ %.2.lcssa, %_ZN4ncnn3MatD2Ev.exit113 ], [ %.0105214, %.noexc138.preheader ] ; 3 uses
  %i.cg = mul nsw i32 %i.cf, %.0104215
  %i.ch = add nsw i32 %i.cg, %.0103210            ; 2 uses
  %i.ci = shl nsw i32 %i.ch, 1                    ; 2 uses
  %i.cj = load i32, ptr %i.s, align 4, !tbaa !55, !noalias !127
  %i.ck = load ptr, ptr %7, align 8, !tbaa !18, !noalias !127 ; 2 uses
  %i.cl = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !127
  %i.cm = sext i32 %i.ci to i64
  %i.cn = load i64, ptr %i.u, align 8, !tbaa !56, !noalias !127 ; 2 uses
  %i.co = mul i64 %i.cn, %i.cl                    ; 2 uses
  %i.cp = mul i64 %i.co, %i.cm
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cp
  %i.cr = sext i32 %i.cj to i64
  %i.cs = or disjoint i32 %i.ci, 1
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul i64 %i.co, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.cw = load i8, ptr %8, align 1, !tbaa !84, !range !50, !noundef !51
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %.noexc135, label %bb.d

.noexc135:                                        ; preds = %.noexc138
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.cy = load i32, ptr %i.af, align 4, !tbaa !55, !noalias !130 ; 2 uses
  %i.cz = load i32, ptr %i.ag, align 8, !tbaa !85, !noalias !130 ; 2 uses
  %i.da = load i32, ptr %i.ah, align 4, !tbaa !115, !noalias !130
  %i.db = load ptr, ptr %9, align 8, !tbaa !18, !noalias !130
  %i.dc = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !130
  %i.dd = sext i32 %i.ch to i64
  %i.de = mul i64 %i.dc, %i.dd
  %i.df = load i64, ptr %i.aj, align 8, !tbaa !56, !noalias !130 ; 4 uses
  %i.dg = mul i64 %i.de, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dg
  %i.di = load i32, ptr %i.ak, align 8, !tbaa !67, !noalias !130
  %i.dj = load ptr, ptr %i.al, align 8, !tbaa !17, !noalias !130
  store ptr %i.dh, ptr %14, align 8, !tbaa !18
  store ptr null, ptr %i.v, align 8, !tbaa !11
  store i64 %i.df, ptr %i.w, align 8, !tbaa !56
  store i32 %i.di, ptr %i.x, align 8, !tbaa !67
  store ptr %i.dj, ptr %i.y, align 8, !tbaa !17
  store i32 %i.cy, ptr %i.aa, align 4, !tbaa !55
  store i32 %i.cz, ptr %i.ab, align 8, !tbaa !85
  store i32 1, ptr %i.ac, align 4, !tbaa !115
  store i32 %i.da, ptr %i.ad, align 8, !tbaa !69
  %i.dk = sext i32 %i.cy to i64
  %i.dl = sext i32 %i.cz to i64
  %i.dm = mul nsw i64 %i.dl, %i.dk                ; 2 uses
  %i.dn = mul i64 %i.df, %i.dm
  %i.do = add i64 %i.dn, 15
  %i.dp = and i64 %i.do, -16
  %i.dq = udiv i64 %i.dp, %i.df
  store i64 %i.dq, ptr %i.ae, align 8, !tbaa !20
  %i.dr = load i32, ptr %i.am, align 8, !tbaa !116, !noalias !130 ; 2 uses
  %i.ds = add nsw i32 %i.dr, -1
  store i32 %i.ds, ptr %i.z, align 8, !tbaa !116, !alias.scope !130
  %i.dt = icmp eq i32 %i.dr, 4
  br i1 %i.dt, label %bb.c, label %_ZN4ncnn3Mat7channelEi.exit

bb.c:                                             ; preds = %.noexc135
  store i64 %i.dm, ptr %i.ae, align 8, !tbaa !20, !alias.scope !130
  br label %_ZN4ncnn3Mat7channelEi.exit

bb.d:                                             ; preds = %.noexc138
  store i64 0, ptr %i.ae, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %14, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.y, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef 0, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3Mat7channelEi.exit unwind label %bb.y

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %bb.d, %bb.c, %.noexc135
  %i.du = load i32, ptr %10, align 4, !tbaa !68   ; 2 uses
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.preheader.lr.ph, label %._crit_edge207

.preheader.lr.ph:                                 ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %i.dw = mul i64 %i.cn, %i.cr
  %i.dx = load i32, ptr %11, align 4, !tbaa !68   ; 2 uses
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %.preheader.preheader, label %._crit_edge207

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.dz = insertelement <2 x i32> %i.bw, i32 %.0103210, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.ea = phi i32 [ %i.ev, %._crit_edge ], [ %i.du, %.preheader.preheader ]
  %i.eb = phi i32 [ %i.ew, %._crit_edge ], [ %i.dx, %.preheader.preheader ] ; 2 uses
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %._crit_edge ], [ 0, %.preheader.preheader ] ; 4 uses
  %.2205 = phi ptr [ %.3.lcssa, %._crit_edge ], [ %.1209, %.preheader.preheader ] ; 2 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ed = mul i64 %i.dw, %indvars.iv224           ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.ed
  %i.eg = trunc nsw i64 %indvars.iv224 to i32
  %i.eh = insertelement <2 x i32> poison, i32 %i.eg, i64 1
  br label %bb.k

._crit_edge207:                                   ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN4ncnn3Mat7channelEi.exit
  %.2.lcssa = phi ptr [ %.1209, %_ZN4ncnn3Mat7channelEi.exit ], [ %.1209, %.preheader.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.ei = load ptr, ptr %i.v, align 8, !tbaa !11  ; 2 uses
  %.not.i = icmp eq ptr %i.ei, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit113, label %bb.e

bb.e:                                             ; preds = %._crit_edge207
  %i.ej = atomicrmw add ptr %i.ei, i32 -1 acq_rel, align 4
  %i.ek = icmp eq i32 %i.ej, 1
  br i1 %i.ek, label %bb.f, label %_ZN4ncnn3MatD2Ev.exit113

bb.f:                                             ; preds = %bb.e
  %i.el = load ptr, ptr %i.y, align 8, !tbaa !17  ; 3 uses
  %.not3.i = icmp eq ptr %i.el, null
  %i.em = load ptr, ptr %14, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !9
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  invoke void %i.ep(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef %i.em)
          to label %_ZN4ncnn3MatD2Ev.exit113 unwind label %bb.j, !inline_history !19

bb.h:                                             ; preds = %bb.f
  %.not.i133 = icmp eq ptr %i.em, null
  br i1 %.not.i133, label %_ZN4ncnn3MatD2Ev.exit113, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.em) #9
  br label %_ZN4ncnn3MatD2Ev.exit113

bb.j:                                             ; preds = %bb.g
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit113:                         ; preds = %bb.e, %._crit_edge207, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  %i.es = add nuw nsw i32 %.0103210, 1            ; 2 uses
  %i.et = load i32, ptr %i.r, align 4, !tbaa !44  ; 3 uses
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %.noexc138, label %._crit_edge212.loopexit, !llvm.loop !133

._crit_edge.loopexit:                             ; preds = %.critedge
  %.pre = load i32, ptr %10, align 4, !tbaa !68
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ev = phi i32 [ %i.ea, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.ew = phi i32 [ %i.eb, %.preheader ], [ %i.jm, %._crit_edge.loopexit ]
  %.3.lcssa = phi ptr [ %.2205, %.preheader ], [ %i.jl, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %i.ex = sext i32 %i.ev to i64
  %i.ey = icmp slt i64 %indvars.iv.next225, %i.ex
  br i1 %i.ey, label %.preheader, label %._crit_edge207, !llvm.loop !134

bb.k:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 5 uses
  %.3203 = phi ptr [ %.2205, %.lr.ph ], [ %i.jl, %.critedge ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !38
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !38
  %i.fd = load i32, ptr %i.an, align 4, !tbaa !89
  %i.fe = trunc nsw i64 %indvars.iv to i32
  %i.ff = load i32, ptr %i.ap, align 4, !tbaa !86
  %i.fg = load <2 x i32>, ptr %i.ao, align 4, !tbaa !68
  %i.fh = insertelement <2 x i32> %i.eh, i32 %i.fe, i64 0
  %i.fi = mul nsw <2 x i32> %i.fg, %i.fh
  %i.fj = insertelement <2 x i32> poison, i32 %i.ff, i64 0
  %i.fk = insertelement <2 x i32> %i.fj, i32 %i.fd, i64 1
  %i.fl = sub <2 x i32> %i.fi, %i.fk
  %i.fm = load <2 x i32>, ptr %i.aq, align 4, !tbaa !68
  %i.fn = mul nsw <2 x i32> %i.fm, %i.dz
  %i.fo = add nsw <2 x i32> %i.fl, %i.fn
  %i.fp = sitofp <2 x i32> %i.fo to <2 x float>
  %i.fq = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.fr = insertelement <2 x float> %i.fq, float %i.fa, i64 1
  %i.fs = fadd fast <2 x float> %i.fr, %i.fp      ; 5 uses
  %i.ft = extractelement <2 x float> %i.fs, i64 1 ; 2 uses
  %i.fu = fcmp fast ogt float %i.ft, -1.000000e+00
  %i.fv = extractelement <2 x float> %i.fs, i64 0 ; 2 uses
  %i.fw = fcmp fast ogt float %i.fv, -1.000000e+00
  %or.cond = select i1 %i.fu, i1 %i.fw, i1 false
  br i1 %or.cond, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.fx = load i32, ptr %12, align 4, !tbaa !68   ; 2 uses
  %i.fy = sitofp fast i32 %i.fx to float
  %i.fz = fcmp fast olt float %i.ft, %i.fy
  br i1 %i.fz, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ga = load i32, ptr %13, align 4, !tbaa !68   ; 2 uses
  %i.gb = sitofp fast i32 %i.ga to float
  %i.gc = fcmp fast olt float %i.fv, %i.gb
  br i1 %i.gc, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.gd = call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.fs)
  %i.ge = fptosi <2 x float> %i.gd to <2 x i32>   ; 3 uses
  %i.gf = extractelement <2 x i32> %i.ge, i64 1   ; 5 uses
  %i.gg = add nsw i32 %i.gf, 1                    ; 2 uses
  %i.gh = extractelement <2 x i32> %i.ge, i64 0   ; 5 uses
  %i.gi = add nsw i32 %i.gh, 1                    ; 2 uses
  %i.gj = sitofp <2 x i32> %i.ge to <2 x float>   ; 2 uses
  %foldExtExtBinop = fsub fast <2 x float> %i.fs, %i.gj
  %i.gk = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 3 uses
  %foldExtExtBinop266 = fsub fast <2 x float> %i.fs, %i.gj
  %i.gl = extractelement <2 x float> %foldExtExtBinop266, i64 0 ; 3 uses
  %i.gm = fsub fast float 1.000000e+00, %i.gk     ; 2 uses
  %i.gn = fsub fast float 1.000000e+00, %i.gl     ; 2 uses
  %i.go = icmp sgt i32 %i.gf, -1                  ; 2 uses
  %i.gp = icmp sgt i32 %i.gh, -1                  ; 2 uses
  %i.gq = select i1 %i.go, i1 %i.gp, i1 false
  %i.gr = add nsw i32 %i.ga, -1
  %i.gs = icmp sgt i32 %i.gr, %i.gh               ; 2 uses
  %i.gt = select i1 %i.go, i1 %i.gs, i1 false
  %i.gu = add nsw i32 %i.fx, -1
  %i.gv = icmp sgt i32 %i.gu, %i.gf               ; 2 uses
  %i.gw = select i1 %i.gv, i1 %i.gp, i1 false
  %i.gx = select i1 %i.gv, i1 %i.gs, i1 false
  %i.gy = fmul fast float %i.gn, %i.gm
  %i.gz = fmul fast float %i.gm, %i.gl
  %i.ha = fmul fast float %i.gn, %i.gk
  %i.hb = fmul fast float %i.gl, %i.gk
  br i1 %i.gq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hc = zext nneg i32 %i.gf to i64
  %i.hd = mul i64 %i.bg, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.hd
  %i.hf = shl nsw i32 %i.gh, 2
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.hg
  %i.hi = load <4 x float>, ptr %i.hh, align 16, !tbaa !97
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.hj = phi fast <4 x float> [ %i.hi, %bb.o ], [ zeroinitializer, %bb.n ]
  br i1 %i.gt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hk = zext nneg i32 %i.gf to i64
  %i.hl = mul i64 %i.bg, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.hl
  %i.hn = shl nsw i32 %i.gi, 2
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.ho
  %i.hq = load <4 x float>, ptr %i.hp, align 16, !tbaa !97
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.hr = phi fast <4 x float> [ %i.hq, %bb.q ], [ zeroinitializer, %bb.p ]
  br i1 %i.gw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hs = sext i32 %i.gg to i64
  %i.ht = mul i64 %i.bg, %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ht
  %i.hv = shl nsw i32 %i.gh, 2
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.hw
  %i.hy = load <4 x float>, ptr %i.hx, align 16, !tbaa !97
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.hz = phi fast <4 x float> [ %i.hy, %bb.s ], [ zeroinitializer, %bb.r ]
  br i1 %i.gx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ia = sext i32 %i.gg to i64
  %i.ib = mul i64 %i.bg, %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ib
  %i.id = shl nsw i32 %i.gi, 2
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %i.ie
  %i.ig = load <4 x float>, ptr %i.if, align 16, !tbaa !97
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ih = phi fast <4 x float> [ %i.ig, %bb.u ], [ zeroinitializer, %bb.t ]
  %i.ii = insertelement <4 x float> poison, float %i.gy, i64 0
  %i.ij = shufflevector <4 x float> %i.ii, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ik = fmul fast <4 x float> %i.hj, %i.ij
  %i.il = insertelement <4 x float> poison, float %i.gz, i64 0
  %i.im = shufflevector <4 x float> %i.il, <4 x float> poison, <4 x i32> zeroinitializer
  %i.in = fmul fast <4 x float> %i.hr, %i.im
  %i.io = fadd fast <4 x float> %i.ik, %i.in
  %i.ip = insertelement <4 x float> poison, float %i.ha, i64 0
  %i.iq = shufflevector <4 x float> %i.ip, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ir = fmul fast <4 x float> %i.hz, %i.iq
  %i.is = fadd fast <4 x float> %i.io, %i.ir
  %i.it = insertelement <4 x float> poison, float %i.hb, i64 0
  %i.iu = shufflevector <4 x float> %i.it, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iv = fmul fast <4 x float> %i.ih, %i.iu
  %i.iw = fadd fast <4 x float> %i.iv, %i.is      ; 2 uses
  %i.ix = load i8, ptr %8, align 1, !tbaa !84, !range !50, !noundef !51
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.iz = load ptr, ptr %14, align 8, !tbaa !18
  %i.ja = load i32, ptr %i.aa, align 4, !tbaa !55
  %i.jb = sext i32 %i.ja to i64
  %i.jc = mul nsw i64 %indvars.iv224, %i.jb
  %i.jd = load i64, ptr %i.w, align 8, !tbaa !56
  %i.je = mul i64 %i.jc, %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.je
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %indvars.iv
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !38
  %i.ji = insertelement <4 x float> poison, float %i.jh, i64 0
  %i.jj = shufflevector <4 x float> %i.ji, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jk = fmul fast <4 x float> %i.jj, %i.iw
  br label %.critedge

.critedge:                                        ; preds = %bb.v, %bb.w, %bb.l, %bb.k, %bb.m
  %.1198 = phi nsz <4 x float> [ zeroinitializer, %bb.k ], [ zeroinitializer, %bb.m ], [ zeroinitializer, %bb.l ], [ %i.jk, %bb.w ], [ %i.iw, %bb.v ]
  store <4 x float> %.1198, ptr %.3203, align 16, !tbaa !97
  %i.jl = getelementptr inbounds nuw i8, ptr %.3203, i64 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jm = load i32, ptr %11, align 4, !tbaa !68   ; 2 uses
  %i.jn = sext i32 %i.jm to i64
  %i.jo = icmp slt i64 %indvars.iv.next, %i.jn
  br i1 %i.jo, label %bb.k, label %._crit_edge.loopexit, !llvm.loop !135

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
  %i.jp = landingpad { ptr, i32 }
          catch ptr null
  %i.jq = extractvalue { ptr, i32 } %i.jp, 0
  call void @__clang_call_terminate(ptr %i.jq) #20
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #11

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn24DeformableConv2D_x86_avx7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !68     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !68
  %i.h = load i32, ptr %0, align 4, !tbaa !68     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !68
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !68
  %i.k = load i32, ptr %i.a, align 4, !tbaa !68   ; 2 uses
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
  %i.az = load ptr, ptr %3, align 8, !tbaa !18, !noalias !136
  %i.ba = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !136
  %i.bb = mul i64 %i.ba, %indvars.iv220
  %i.bc = load i64, ptr %i.n, align 8, !tbaa !56, !noalias !136 ; 2 uses
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 4 uses
  %i.bf = icmp sgt i32 %i.ay, 0
  br i1 %i.bf, label %.preheader193.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader193.lr.ph:                              ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.bg = load i32, ptr %i.l, align 4, !tbaa !55, !noalias !136
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul i64 %i.bc, %i.bh                    ; 4 uses
  %i.bj = load i32, ptr %i.r, align 4, !tbaa !44  ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.preheader193.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader193.preheader:                          ; preds = %.preheader193.lr.ph
  %i.bl = load ptr, ptr %4, align 8, !tbaa !18
  %i.bm = load i32, ptr %5, align 4, !tbaa !68
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
  %.pre223 = load i32, ptr %i.b, align 4, !tbaa !68
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.preheader193.lr.ph, %_ZN4ncnn3MatD2Ev.exit.loopexit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.by = phi i32 [ %i.aw, %_ZNK4ncnn3Mat7channelEi.exit ], [ %.pre223, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.aw, %.preheader193.lr.ph ] ; 2 uses
  %i.bz = phi i32 [ %i.ax, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.cc, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.ax, %.preheader193.lr.ph ]
  %i.ca = phi i32 [ %i.ay, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.cc, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.ay, %.preheader193.lr.ph ]
  %indvars.iv.next221 = add nsw i64 %indvars.iv220, 1
  %i.cb = sext i32 %i.by to i64
  %.not.not = icmp slt i64 %indvars.iv220, %i.cb
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge209, !llvm.loop !139

._crit_edge.loopexit:                             ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %.pre = load i32, ptr %i.q, align 8, !tbaa !45
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader193
  %i.cc = phi i32 [ %i.bv, %.preheader193 ], [ %.pre, %._crit_edge.loopexit ] ; 4 uses
  %i.cd = phi i32 [ %i.bw, %.preheader193 ], [ %i.im, %._crit_edge.loopexit ]
  %.1113.lcssa = phi ptr [ %.0112205, %.preheader193 ], [ %.2.lcssa, %._crit_edge.loopexit ]
  %i.ce = add nuw nsw i32 %.0111206, 1            ; 2 uses
  %i.cf = icmp slt i32 %i.ce, %i.cc
  br i1 %i.cf, label %.preheader193, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !140

.noexc146:                                        ; preds = %.preheader193, %_ZN4ncnn3MatD2Ev.exit121
  %i.cg = phi i32 [ %i.im, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.bw, %.preheader193 ]
  %.0110203 = phi i32 [ %i.il, %_ZN4ncnn3MatD2Ev.exit121 ], [ 0, %.preheader193 ] ; 3 uses
  %.1113202 = phi ptr [ %.2.lcssa, %_ZN4ncnn3MatD2Ev.exit121 ], [ %.0112205, %.preheader193 ] ; 3 uses
  %i.ch = mul nsw i32 %i.cg, %.0111206
  %i.ci = add nsw i32 %i.ch, %.0110203            ; 2 uses
  %i.cj = shl nsw i32 %i.ci, 1                    ; 2 uses
  %i.ck = load i32, ptr %i.s, align 4, !tbaa !55, !noalias !141
  %i.cl = load ptr, ptr %7, align 8, !tbaa !18, !noalias !141 ; 2 uses
  %i.cm = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !141
  %i.cn = sext i32 %i.cj to i64
  %i.co = load i64, ptr %i.u, align 8, !tbaa !56, !noalias !141 ; 2 uses
  %i.cp = mul i64 %i.co, %i.cm                    ; 2 uses
  %i.cq = mul i64 %i.cp, %i.cn
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cq
  %i.cs = sext i32 %i.ck to i64
  %i.ct = or disjoint i32 %i.cj, 1
  %i.cu = sext i32 %i.ct to i64
  %i.cv = mul i64 %i.cp, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.cx = load i8, ptr %8, align 1, !tbaa !84, !range !50, !noundef !51
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %.noexc143, label %bb.d

.noexc143:                                        ; preds = %.noexc146
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.cz = load i32, ptr %i.af, align 4, !tbaa !55, !noalias !144 ; 2 uses
  %i.da = load i32, ptr %i.ag, align 8, !tbaa !85, !noalias !144 ; 2 uses
  %i.db = load i32, ptr %i.ah, align 4, !tbaa !115, !noalias !144
  %i.dc = load ptr, ptr %9, align 8, !tbaa !18, !noalias !144
  %i.dd = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !144
  %i.de = sext i32 %i.ci to i64
  %i.df = mul i64 %i.dd, %i.de
  %i.dg = load i64, ptr %i.aj, align 8, !tbaa !56, !noalias !144 ; 4 uses
  %i.dh = mul i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dh
  %i.dj = load i32, ptr %i.ak, align 8, !tbaa !67, !noalias !144
  %i.dk = load ptr, ptr %i.al, align 8, !tbaa !17, !noalias !144
  store ptr %i.di, ptr %14, align 8, !tbaa !18
  store ptr null, ptr %i.v, align 8, !tbaa !11
  store i64 %i.dg, ptr %i.w, align 8, !tbaa !56
  store i32 %i.dj, ptr %i.x, align 8, !tbaa !67
  store ptr %i.dk, ptr %i.y, align 8, !tbaa !17
  store i32 %i.cz, ptr %i.aa, align 4, !tbaa !55
  store i32 %i.da, ptr %i.ab, align 8, !tbaa !85
  store i32 1, ptr %i.ac, align 4, !tbaa !115
  store i32 %i.db, ptr %i.ad, align 8, !tbaa !69
  %i.dl = sext i32 %i.cz to i64
  %i.dm = sext i32 %i.da to i64
  %i.dn = mul nsw i64 %i.dm, %i.dl                ; 2 uses
  %i.do = mul i64 %i.dg, %i.dn
  %i.dp = add i64 %i.do, 15
  %i.dq = and i64 %i.dp, -16
  %i.dr = udiv i64 %i.dq, %i.dg
  store i64 %i.dr, ptr %i.ae, align 8, !tbaa !20
  %i.ds = load i32, ptr %i.am, align 8, !tbaa !116, !noalias !144 ; 2 uses
  %i.dt = add nsw i32 %i.ds, -1
  store i32 %i.dt, ptr %i.z, align 8, !tbaa !116, !alias.scope !144
  %i.du = icmp eq i32 %i.ds, 4
  br i1 %i.du, label %bb.c, label %_ZN4ncnn3Mat7channelEi.exit

bb.c:                                             ; preds = %.noexc143
  store i64 %i.dn, ptr %i.ae, align 8, !tbaa !20, !alias.scope !144
  br label %_ZN4ncnn3Mat7channelEi.exit

bb.d:                                             ; preds = %.noexc146
  store i64 0, ptr %i.ae, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %14, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.y, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef 0, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3Mat7channelEi.exit unwind label %bb.y

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %bb.d, %bb.c, %.noexc143
  %i.dv = load i32, ptr %10, align 4, !tbaa !68   ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, 0
  br i1 %i.dw, label %.preheader.lr.ph, label %._crit_edge200

.preheader.lr.ph:                                 ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %i.dx = load i32, ptr %11, align 4, !tbaa !68   ; 2 uses
  %i.dy = icmp sgt i32 %i.dx, 0
  %i.dz = mul i64 %i.co, %i.cs
  br i1 %i.dy, label %.preheader.lr.ph.split.us, label %._crit_edge200

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.ea = load i32, ptr %i.an, align 8, !tbaa !91
  %i.eb = load i32, ptr %i.ao, align 4, !tbaa !89
  %i.ec = load i32, ptr %i.ap, align 4, !tbaa !88
  %i.ed = load i32, ptr %i.aq, align 4, !tbaa !86
  %i.ee = load i32, ptr %i.ar, align 8, !tbaa !99
  %i.ef = mul nsw i32 %i.ee, %.0111206
  %invariant.op = sub i32 %i.ef, %i.eb
  %i.eg = load i32, ptr %i.as, align 4, !tbaa !98
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
  %i.fg = load i32, ptr %12, align 4, !tbaa !68   ; 2 uses
  %i.fh = sitofp fast i32 %i.fg to float
  %i.fi = fcmp fast olt float %i.ez, %i.fh
  br i1 %i.fi, label %bb.g, label %.critedge.us

bb.g:                                             ; preds = %bb.f
  %i.fj = load i32, ptr %13, align 4, !tbaa !68   ; 2 uses
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
