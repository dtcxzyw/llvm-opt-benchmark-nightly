Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/yolodetectionoutput?download=true
inline.NumInlined: 658
inline.NumDeleted: 335
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4ncnn19YoloDetectionOutputC2Ev:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 0, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.d, align 8, !tbaa !114
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.b, i8 0, i64 28, i1 false)
  store i8 1, ptr %i.e, align 1, !tbaa !115
  ret void
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nofpclass(nan inf) float @_ZNK4ncnn9ParamDict3getEif(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @_ZNK4ncnn9ParamDict3getEiRKNS_3MatE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #9 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

declare noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef) local_unnamed_addr #2

declare void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn19YoloDetectionOutput15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %10) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 212
  %i.f = load i32, ptr %i.e, align 4, !tbaa !40   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.h, ptr %i.b, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !46
  %i.i = load i32, ptr %0, align 4, !tbaa !46     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !46
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 2 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !46
  %i.l = load i32, ptr %i.a, align 4, !tbaa !46   ; 2 uses
  %.not295 = icmp sgt i32 %i.l, %i.k
  br i1 %.not295, label %._crit_edge297, label %.noexc148.lr.ph

.noexc148.lr.ph:                                  ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.ae = sext i32 %i.l to i64
  br label %.noexc148

.noexc148:                                        ; preds = %.noexc148.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv310 = phi i64 [ %i.ae, %.noexc148.lr.ph ], [ %indvars.iv.next311, %_ZN4ncnn3MatD2Ev.exit ] ; 7 uses
  %i.af = load i32, ptr %3, align 4, !tbaa !46
  %i.ag = trunc nsw i64 %indvars.iv310 to i32
  %i.ah = mul nsw i32 %i.af, %i.ag                ; 6 uses
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !18
  %.idx = shl i64 %indvars.iv310, 3
  %i.aj = getelementptr i8, ptr %i.ai, i64 %.idx
  %i.ak = load <2 x float>, ptr %i.aj, align 4, !tbaa !88
  %i.al = load ptr, ptr %4, align 8, !tbaa !18, !noalias !116 ; 6 uses
  %i.am = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !116 ; 3 uses
  %i.an = load i64, ptr %i.p, align 8, !tbaa !44, !noalias !116 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.ao = add nsw i32 %i.ah, 5
  %i.ap = load i32, ptr %i.t, align 8, !tbaa !22
  %i.aq = sext i32 %i.ao to i64
  %i.ar = mul i64 %i.am, %i.aq
  %i.as = mul i64 %i.ar, %i.an
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.as
  %i.au = load i32, ptr %i.q, align 8, !tbaa !45, !noalias !119
  %i.av = load ptr, ptr %i.r, align 8, !tbaa !17, !noalias !119
  store ptr %i.at, ptr %11, align 8, !tbaa !18
  store ptr null, ptr %i.u, align 8, !tbaa !11
  store i64 %i.an, ptr %i.v, align 8, !tbaa !44
  store i32 %i.au, ptr %i.w, align 8, !tbaa !45
  store ptr %i.av, ptr %i.x, align 8, !tbaa !17
  store i32 %i.ap, ptr %i.aa, align 8, !tbaa !47
  %i.aw = load <4 x i32>, ptr %i.s, align 8, !tbaa !46, !noalias !119 ; 3 uses
  %i.ax = load i32, ptr %i.n, align 4, !tbaa !53, !noalias !119
  %i.ay = sext i32 %i.ax to i64
  %i.az = extractelement <4 x i32> %i.aw, i64 2
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.ba, %i.ay
  %i.bc = extractelement <4 x i32> %i.aw, i64 3
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul i64 %i.bb, %i.bd
  %i.bf = mul i64 %i.be, %i.an
  %i.bg = add i64 %i.bf, 15
  %i.bh = and i64 %i.bg, -16
  %i.bi = udiv i64 %i.bh, %i.an
  store i64 %i.bi, ptr %i.ab, align 8, !tbaa !20
  store <4 x i32> %i.aw, ptr %i.y, align 8, !tbaa !46
  %i.bj = load ptr, ptr %i.ac, align 8, !tbaa !48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke noundef i32 %i.bm(ptr noundef nonnull align 8 dereferenceable(208) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit

bb.c:                                             ; preds = %.noexc148
  %i.bo = load ptr, ptr %5, align 8, !tbaa !77
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv310
  store i32 %i.bn, ptr %i.bp, align 4, !tbaa !46
  %i.bq = load i32, ptr %7, align 4, !tbaa !46    ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.preheader.lr.ph, label %._crit_edge294

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.bs = fmul fast <2 x float> %i.ak, splat (float 5.000000e-01)
  %i.bt = load i32, ptr %8, align 4, !tbaa !46    ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.preheader.preheader, label %._crit_edge294

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bv = mul i64 %i.am, %i.an                    ; 4 uses
  %i.bw = add nsw i32 %i.ah, 4
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %i.bv, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.by
  %i.ca = add nsw i32 %i.ah, 3
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul i64 %i.bv, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.cc
  %i.ce = add nsw i32 %i.ah, 2
  %i.cf = sext i32 %i.ce to i64
  %i.cg = mul i64 %i.bv, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.cg
  %i.ci = add nsw i32 %i.ah, 1
  %i.cj = sext i32 %i.ci to i64
  %i.ck = mul i64 %i.bv, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ck
  %i.cm = sext i32 %i.ah to i64
  %i.cn = mul i64 %i.am, %i.cm
  %i.co = mul i64 %i.cn, %i.an
  %i.cp = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.co
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge282
  %i.cq = phi i32 [ %i.bq, %.preheader.preheader ], [ %i.di, %._crit_edge282 ]
  %i.cr = phi i32 [ %i.bt, %.preheader.preheader ], [ %i.dj, %._crit_edge282 ] ; 3 uses
  %indvars.iv307 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next308, %._crit_edge282 ] ; 3 uses
  %.084292 = phi ptr [ %i.cp, %.preheader.preheader ], [ %.185.lcssa, %._crit_edge282 ] ; 2 uses
  %.086291 = phi ptr [ %i.cl, %.preheader.preheader ], [ %.187.lcssa, %._crit_edge282 ] ; 2 uses
  %.088290 = phi ptr [ %i.ch, %.preheader.preheader ], [ %.189.lcssa, %._crit_edge282 ] ; 2 uses
  %.090289 = phi ptr [ %i.cd, %.preheader.preheader ], [ %.191.lcssa, %._crit_edge282 ] ; 2 uses
  %.092288 = phi ptr [ %i.bz, %.preheader.preheader ], [ %.193.lcssa, %._crit_edge282 ] ; 2 uses
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph, label %._crit_edge282

.lr.ph:                                           ; preds = %.preheader
  %i.ct = trunc nuw nsw i64 %indvars.iv307 to i32
  %i.cu = uitofp nneg i32 %i.ct to float
  %i.cv = insertelement <4 x float> poison, float %i.cu, i64 1
  br label %bb.j

._crit_edge294:                                   ; preds = %._crit_edge282, %.preheader.lr.ph, %bb.c
  %i.cw = load ptr, ptr %i.u, align 8, !tbaa !11  ; 2 uses
  %.not.i122 = icmp eq ptr %i.cw, null
  br i1 %.not.i122, label %_ZN4ncnn3MatD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge294
  %i.cx = atomicrmw add ptr %i.cw, i32 -1 acq_rel, align 4
  %i.cy = icmp eq i32 %i.cx, 1
  br i1 %i.cy, label %bb.e, label %_ZN4ncnn3MatD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.cz = load ptr, ptr %i.x, align 8, !tbaa !17  ; 3 uses
  %.not3.i123 = icmp eq ptr %i.cz, null
  %i.da = load ptr, ptr %11, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i123, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !9
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  invoke void %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef %i.da)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.i, !inline_history !19

bb.g:                                             ; preds = %bb.e
  %.not.i126 = icmp eq ptr %i.da, null
  br i1 %.not.i126, label %_ZN4ncnn3MatD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.da) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.i:                                             ; preds = %bb.f
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #19
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.d, %._crit_edge294, %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  %indvars.iv.next311 = add nsw i64 %indvars.iv310, 1
  %i.dg = load i32, ptr %i.b, align 4, !tbaa !46
  %i.dh = sext i32 %i.dg to i64
  %.not.not = icmp slt i64 %indvars.iv310, %i.dh
  br i1 %.not.not, label %.noexc148, label %._crit_edge297

._crit_edge282.loopexit:                          ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %.pre = load i32, ptr %7, align 4, !tbaa !46
  br label %._crit_edge282

._crit_edge282:                                   ; preds = %._crit_edge282.loopexit, %.preheader
  %i.di = phi i32 [ %i.cq, %.preheader ], [ %.pre, %._crit_edge282.loopexit ] ; 2 uses
  %i.dj = phi i32 [ %i.cr, %.preheader ], [ %i.hp, %._crit_edge282.loopexit ]
  %.193.lcssa = phi ptr [ %.092288, %.preheader ], [ %i.ho, %._crit_edge282.loopexit ]
  %.191.lcssa = phi ptr [ %.090289, %.preheader ], [ %i.hn, %._crit_edge282.loopexit ]
  %.189.lcssa = phi ptr [ %.088290, %.preheader ], [ %i.hm, %._crit_edge282.loopexit ]
  %.187.lcssa = phi ptr [ %.086291, %.preheader ], [ %i.hl, %._crit_edge282.loopexit ]
  %.185.lcssa = phi ptr [ %.084292, %.preheader ], [ %i.hk, %._crit_edge282.loopexit ]
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1 ; 2 uses
  %i.dk = sext i32 %i.di to i64
  %i.dl = icmp slt i64 %indvars.iv.next308, %i.dk
  br i1 %i.dl, label %.preheader, label %._crit_edge294, !llvm.loop !122

bb.j:                                             ; preds = %.lr.ph, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %indvars.iv304 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next305, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 3 uses
  %i.dm = phi i32 [ %i.cr, %.lr.ph ], [ %i.hp, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ]
  %.185280 = phi ptr [ %.084292, %.lr.ph ], [ %i.hk, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 2 uses
  %.187279 = phi ptr [ %.086291, %.lr.ph ], [ %i.hl, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 2 uses
  %.189278 = phi ptr [ %.088290, %.lr.ph ], [ %i.hm, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 2 uses
  %.191277 = phi ptr [ %.090289, %.lr.ph ], [ %i.hn, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 2 uses
  %.193276 = phi ptr [ %.092288, %.lr.ph ], [ %i.ho, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 2 uses
  %i.dn = trunc nuw nsw i64 %indvars.iv304 to i32
  %i.do = uitofp nneg i32 %i.dn to float
  %i.dp = load float, ptr %.185280, align 4, !tbaa !88
  %i.dq = load float, ptr %.187279, align 4, !tbaa !88
  %i.dr = load i32, ptr %7, align 4, !tbaa !46
  %i.ds = load float, ptr %.189278, align 4, !tbaa !88
  %i.dt = load float, ptr %.191277, align 4, !tbaa !88
  %12 = fneg fast float %i.dq
  %13 = fneg fast float %i.dp
  %14 = call fast float @llvm.exp.f32(float %12)
  %15 = call fast float @llvm.exp.f32(float %13)
  %16 = insertelement <2 x float> poison, float %15, i64 0
  %17 = insertelement <2 x float> %16, float %14, i64 1
  %18 = fadd fast <2 x float> %17, splat (float 1.000000e+00)
  %19 = fdiv fast <2 x float> splat (float 1.000000e+00), %18
  %20 = insertelement <2 x i32> poison, i32 %i.dm, i64 0
  %21 = insertelement <2 x i32> %20, i32 %i.dr, i64 1
  %22 = call fast float @llvm.exp.f32(float %i.dt)
  %23 = call fast float @llvm.exp.f32(float %i.ds)
  %24 = shufflevector <2 x float> %19, <2 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %25 = insertelement <4 x float> poison, float %23, i64 0
  %i.du = insertelement <4 x float> %25, float %22, i64 1
  %26 = insertelement <4 x float> %i.cv, float %i.do, i64 0
  %i.dv = shufflevector <4 x float> %26, <4 x float> %i.du, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.dw = fadd fast <4 x float> %24, %i.dv
  %i.dx = fmul fast <4 x float> %24, %i.dv
  %i.dy = shufflevector <4 x float> %i.dw, <4 x float> %i.dx, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %27 = shufflevector <2 x i32> %21, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %28 = sitofp <4 x i32> %27 to <4 x float>
  %i.dz = fdiv fast <4 x float> %i.dy, %28        ; 3 uses
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.eb = fsub fast <4 x float> %i.dz, %i.ea
  %i.ec = fadd fast <4 x float> %i.dz, %i.ea
  %i.ed = shufflevector <4 x float> %i.eb, <4 x float> %i.ec, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.ee = load float, ptr %.193276, align 4, !tbaa !88
  %i.ef = fneg fast float %i.ee
  %i.eg = call fast float @llvm.exp.f32(float %i.ef)
  %i.eh = fadd fast float %i.eg, 1.000000e+00
  %i.ei = load i32, ptr %i.t, align 8, !tbaa !22  ; 3 uses
  %i.ej = icmp sgt i32 %i.ei, 0
  br i1 %i.ej, label %.noexc139.lr.ph, label %._crit_edge

.noexc139.lr.ph:                                  ; preds = %bb.j
  %i.ek = load i32, ptr %i.z, align 4, !tbaa !53, !noalias !124
  %i.el = load ptr, ptr %11, align 8, !tbaa !18, !noalias !124
  %i.em = load i64, ptr %i.ab, align 8, !tbaa !20, !noalias !124
  %i.en = load i64, ptr %i.v, align 8, !tbaa !44, !noalias !124 ; 2 uses
  %factor.op.mul = mul i64 %i.em, %i.en           ; 5 uses
  %i.eo = sext i32 %i.ek to i64
  %i.ep = mul nsw i64 %indvars.iv307, %i.eo
  %i.eq = mul i64 %i.ep, %i.en
  %invariant.gep = getelementptr i8, ptr %i.el, i64 %i.eq
  %invariant.gep274 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv304 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.ei to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.er = icmp ult i32 %i.ei, 4
  br i1 %i.er, label %.noexc139.epil.preheader, label %.noexc139.lr.ph.new

.noexc139.lr.ph.new:                              ; preds = %.noexc139.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.noexc139

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.noexc139
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.noexc139.epil.preheader

.noexc139.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.noexc139.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.noexc139.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.079271.epil.init = phi float [ 0.000000e+00, %.noexc139.lr.ph ], [ %.1.3, %._crit_edge.loopexit.unr-lcssa ]
  %.080270.epil.init = phi i32 [ 0, %.noexc139.lr.ph ], [ %.181.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod348 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod348)
  br label %.noexc139.epil

.noexc139.epil:                                   ; preds = %.noexc139.epil, %.noexc139.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.noexc139.epil.preheader ], [ %indvars.iv.next.epil, %.noexc139.epil ] ; 3 uses
  %.079271.epil = phi float [ %.079271.epil.init, %.noexc139.epil.preheader ], [ %.1.epil, %.noexc139.epil ] ; 2 uses
  %.080270.epil = phi i32 [ %.080270.epil.init, %.noexc139.epil.preheader ], [ %.181.epil, %.noexc139.epil ]
  %epil.iter = phi i64 [ 0, %.noexc139.epil.preheader ], [ %epil.iter.next, %.noexc139.epil ]
  %.reass.epil = mul i64 %factor.op.mul, %indvars.iv.epil
  %gep275.epil = getelementptr i8, ptr %invariant.gep274, i64 %.reass.epil
  %i.es = load float, ptr %gep275.epil, align 4, !tbaa !88 ; 2 uses
  %i.et = fcmp fast ogt float %i.es, %.079271.epil
  %i.eu = trunc nuw nsw i64 %indvars.iv.epil to i32
  %.181.epil = select i1 %i.et, i32 %i.eu, i32 %.080270.epil ; 2 uses
  %.1.epil = call nnan ninf nsz float @llvm.maxnum.f32(float %i.es, float %.079271.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.noexc139.epil, !llvm.loop !127

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.noexc139.epil, %bb.j
  %.080.lcssa.a = phi i32 [ 0, %bb.j ], [ %.181.3, %._crit_edge.loopexit.unr-lcssa ], [ %.181.epil, %.noexc139.epil ] ; 2 uses
  %.079.lcssa = phi float [ 0.000000e+00, %bb.j ], [ %.1.3, %._crit_edge.loopexit.unr-lcssa ], [ %.1.epil, %.noexc139.epil ]
  %i.ev = fdiv fast float %.079.lcssa, %i.eh      ; 3 uses
  %i.ew = load float, ptr %i.ad, align 8, !tbaa !41
  %i.ex = fcmp fast ult float %i.ev, %i.ew
  br i1 %i.ex, label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit, label %bb.k

.noexc139:                                        ; preds = %.noexc139, %.noexc139.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.noexc139.lr.ph.new ], [ %indvars.iv.next.3, %.noexc139 ] ; 6 uses
  %.079271 = phi float [ 0.000000e+00, %.noexc139.lr.ph.new ], [ %.1.3, %.noexc139 ] ; 2 uses
  %.080270 = phi i32 [ 0, %.noexc139.lr.ph.new ], [ %.181.3, %.noexc139 ]
  %niter = phi i64 [ 0, %.noexc139.lr.ph.new ], [ %niter.next.3, %.noexc139 ]
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %gep275 = getelementptr i8, ptr %invariant.gep274, i64 %.reass
  %i.ey = load float, ptr %gep275, align 4, !tbaa !88 ; 2 uses
  %i.ez = fcmp fast ogt float %i.ey, %.079271
  %i.fa = trunc nuw nsw i64 %indvars.iv to i32
  %.181 = select i1 %i.ez, i32 %i.fa, i32 %.080270
  %.1 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.ey, float %.079271) ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.reass.1 = mul i64 %factor.op.mul, %indvars.iv.next
  %gep275.1 = getelementptr i8, ptr %invariant.gep274, i64 %.reass.1
  %i.fb = load float, ptr %gep275.1, align 4, !tbaa !88 ; 2 uses
  %i.fc = fcmp fast ogt float %i.fb, %.1
  %i.fd = trunc nuw nsw i64 %indvars.iv.next to i32
  %.181.1 = select i1 %i.fc, i32 %i.fd, i32 %.181
  %.1.1 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fb, float %.1) ; 2 uses
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %.reass.2 = mul i64 %factor.op.mul, %indvars.iv.next.1
  %gep275.2 = getelementptr i8, ptr %invariant.gep274, i64 %.reass.2
  %i.fe = load float, ptr %gep275.2, align 4, !tbaa !88 ; 2 uses
  %i.ff = fcmp fast ogt float %i.fe, %.1.1
  %i.fg = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %.181.2 = select i1 %i.ff, i32 %i.fg, i32 %.181.1
  %.1.2 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fe, float %.1.1) ; 2 uses
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %.reass.3 = mul i64 %factor.op.mul, %indvars.iv.next.2
  %gep275.3 = getelementptr i8, ptr %invariant.gep274, i64 %.reass.3
  %i.fh = load float, ptr %gep275.3, align 4, !tbaa !88 ; 2 uses
  %i.fi = fcmp fast ogt float %i.fh, %.1.2
  %i.fj = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %.181.3 = select i1 %i.fi, i32 %i.fj, i32 %.181.2 ; 3 uses
  %.1.3 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fh, float %.1.2) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.noexc139, !llvm.loop !129

bb.k:                                             ; preds = %._crit_edge
  %i.fk = load ptr, ptr %9, align 8, !tbaa !55
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fk, i64 %indvars.iv310 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 3 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !89 ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 3 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !84
  %.not.i150 = icmp eq ptr %i.fn, %i.fp
  br i1 %.not.i150, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store <4 x float> %i.ed, ptr %i.fn, align 4, !tbaa !88
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store i32 %.080.lcssa.a, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !46
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 20
  store ptr %i.fq, ptr %i.fm, align 8, !tbaa !89
  br label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE9push_backERKS1_.exit

bb.m:                                             ; preds = %bb.k
  %i.fr = load ptr, ptr %i.fl, align 8, !tbaa !91 ; 4 uses
  %i.fs = ptrtoint ptr %i.fn to i64
  %i.ft = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.fu = sub i64 %i.fs, %i.ft                    ; 5 uses
  %i.fv = icmp eq i64 %i.fu, 9223372036854775800
  br i1 %i.fv, label %.invoke, label %_ZNKSt6vectorIN4ncnn8BBoxRectESaIS1_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIN4ncnn8BBoxRectESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.fw = sdiv exact i64 %i.fu, 20                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fw, i64 1)
  %i.fx = add nsw i64 %.sroa.speculated.i.i.i, %i.fw ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %i.fw
  %i.fz = call i64 @llvm.umin.i64(i64 %i.fx, i64 461168601842738790)
  %i.ga = select i1 %i.fy, i64 461168601842738790, i64 %i.fz ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ga, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.gb = mul nuw nsw i64 %i.ga, 20
  %i.gc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gb) #22
          to label %.noexc152 unwind label %.loopexit ; 4 uses

.noexc152:                                        ; preds = %_ZNKSt6vectorIN4ncnn8BBoxRectESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 %i.fu ; 3 uses
  store <4 x float> %i.ed, ptr %i.gd, align 4, !tbaa !88
  %.sroa.8.0..sroa_idx166 = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store i32 %.080.lcssa.a, ptr %.sroa.8.0..sroa_idx166, align 4, !tbaa !46
  %i.ge = icmp sgt i64 %i.fu, 0
  br i1 %i.ge, label %bb.n, label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.n:                                             ; preds = %.noexc152
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gc, ptr align 4 %i.fr, i64 %i.fu, i1 false)
  br label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.n, %.noexc152
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 20
  %.not.i17.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.gg = load ptr, ptr %i.fo, align 8, !tbaa !84
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = sub i64 %i.gh, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.gi) #20
  br label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.gc, ptr %i.fl, align 8, !tbaa !91
  store ptr %i.gf, ptr %i.fm, align 8, !tbaa !89
  %i.gj = getelementptr inbounds nuw [20 x i8], ptr %i.gc, i64 %i.ga
  store ptr %i.gj, ptr %i.fo, align 8, !tbaa !84
  br label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.l
  %i.gk = load ptr, ptr %10, align 8, !tbaa !63
  %i.gl = getelementptr inbounds nuw [24 x i8], ptr %i.gk, i64 %indvars.iv310 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 3 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !130 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 3 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !72
  %.not.i153 = icmp eq ptr %i.gn, %i.gp
  br i1 %.not.i153, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE9push_backERKS1_.exit
  store float %i.ev, ptr %i.gn, align 4, !tbaa !88
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  store ptr %i.gq, ptr %i.gm, align 8, !tbaa !130
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.q:                                             ; preds = %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE9push_backERKS1_.exit
  %i.gr = load ptr, ptr %i.gl, align 8, !tbaa !75 ; 4 uses
  %i.gs = ptrtoint ptr %i.gn to i64
  %i.gt = ptrtoint ptr %i.gr to i64               ; 2 uses
  %i.gu = sub i64 %i.gs, %i.gt                    ; 5 uses
  %i.gv = icmp eq i64 %i.gu, 9223372036854775804
  br i1 %i.gv, label %.invoke, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.q, %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.gw = ashr exact i64 %i.gu, 2                 ; 3 uses
  %.sroa.speculated.i.i.i154 = call i64 @llvm.umax.i64(i64 %i.gw, i64 1)
  %i.gx = add nsw i64 %.sroa.speculated.i.i.i154, %i.gw ; 2 uses
  %i.gy = icmp ult i64 %i.gx, %i.gw
  %i.gz = call i64 @llvm.umin.i64(i64 %i.gx, i64 2305843009213693951)
  %i.ha = select i1 %i.gy, i64 2305843009213693951, i64 %i.gz ; 3 uses
  %.not.i.i.i155 = icmp ne i64 %i.ha, 0
  call void @llvm.assume(i1 %.not.i.i.i155)
  %i.hb = shl nuw nsw i64 %i.ha, 2
  %i.hc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hb) #22
          to label %.noexc158 unwind label %.loopexit ; 4 uses

.noexc158:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 %i.gu ; 2 uses
  store float %i.ev, ptr %i.hd, align 4, !tbaa !88
  %i.he = icmp sgt i64 %i.gu, 0
  br i1 %i.he, label %bb.r, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.r:                                             ; preds = %.noexc158
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hc, ptr align 4 %i.gr, i64 %i.gu, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.r, %.noexc158
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %.not.i17.i.i156 = icmp eq ptr %i.gr, null
  br i1 %.not.i17.i.i156, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  %i.hg = load ptr, ptr %i.go, align 8, !tbaa !72
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = sub i64 %i.hh, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef %i.hi) #20
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  store ptr %i.hc, ptr %i.gl, align 8, !tbaa !75
  store ptr %i.hf, ptr %i.gm, align 8, !tbaa !130
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.ha
  store ptr %i.hj, ptr %i.go, align 8, !tbaa !72
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %bb.p, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %._crit_edge
  %i.hk = getelementptr inbounds nuw i8, ptr %.185280, i64 4 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.187279, i64 4 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.189278, i64 4 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.191277, i64 4 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.193276, i64 4 ; 2 uses
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1 ; 2 uses
  %i.hp = load i32, ptr %8, align 4, !tbaa !46    ; 3 uses
  %i.hq = sext i32 %i.hp to i64
  %i.hr = icmp slt i64 %indvars.iv.next305, %i.hq
  br i1 %i.hr, label %bb.j, label %._crit_edge282.loopexit, !llvm.loop !131

._crit_edge297:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge297, %bb.a
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4ncnn8BBoxRectESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.noexc148
  %lpad.loopexit252 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke
  %lpad.loopexit.split-lp253 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit252, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp253, %.loopexit.split-lp.loopexit.split-lp ]
  %i.hs = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.hs) #19
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #10

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare !callback !132 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !63     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !75 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #20
  br label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !76

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !63
  br label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !64
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #20
  br label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN4ncnn8BBoxRectESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN4ncnn8BBoxRectESaIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIN4ncnn8BBoxRectESaIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !91 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN4ncnn8BBoxRectESaIS2_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #20
  br label %_ZSt8_DestroyISt6vectorIN4ncnn8BBoxRectESaIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN4ncnn8BBoxRectESaIS2_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !92

_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIN4ncnn8BBoxRectESaIS2_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIN4ncnn8BBoxRectESaIS2_EESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #20
  br label %_ZNSt12_Vector_baseISt6vectorIN4ncnn8BBoxRectESaIS2_EESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIN4ncnn8BBoxRectESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exit, %bb.c
  ret void
}

declare void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfSaIfEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEvNS4_IPfS1_EET_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not70 = icmp eq ptr %2, %3
  br i1 %.not70, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !130  ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.w, label %bb.c

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIfSaIfEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEvNS4_IPfS1_EET_SA_St20forward_iterator_tag:bb.a
  %i.ae = load float, ptr %1, align 4, !tbaa !88
  store float %i.ae, ptr %i.ad, align 4, !tbaa !88
  br label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !86

bb.k:                                             ; preds = %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit
  %i.af = icmp eq i64 %i.c, 4
  br i1 %i.af, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load float, ptr %2, align 4, !tbaa !88
  store float %i.ag, ptr %1, align 4, !tbaa !88
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 4
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 4
  br i1 %i.al, label %bb.n, label %bb.o, !prof !86

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %i.ai, i64 %i.ak, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !130
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPffET0_T_SA_S9_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 4
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPffET0_T_SA_S9_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load float, ptr %i.ai, align 4, !tbaa !88
  store float %i.an, ptr %i.h, align 4, !tbaa !88
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPffET0_T_SA_S9_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPffET0_T_SA_S9_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ao = phi ptr [ %.pre, %bb.n ], [ %i.h, %bb.o ], [ %i.h, %bb.p ]
  %i.ap = sub nuw nsw i64 %i.d, %i.n
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap ; 5 uses
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !130
  %i.ar = icmp sgt i64 %i.m, 4
  br i1 %i.ar, label %bb.q, label %bb.r, !prof !86

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPffET0_T_SA_S9_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aq, ptr align 4 %1, i64 %i.m, i1 false)
  %.pre71 = load ptr, ptr %i.g, align 8, !tbaa !130
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit51

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPffET0_T_SA_S9_RSaIT1_E.exit
  br i1 %i.ah, label %bb.s, label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit51

bb.s:                                             ; preds = %bb.r
  %i.as = load float, ptr %1, align 4, !tbaa !88
  store float %i.as, ptr %i.aq, align 4, !tbaa !88
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit51

_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit51: ; preds = %bb.q, %bb.r, %bb.s
  %i.at = phi ptr [ %.pre71, %bb.q ], [ %i.aq, %bb.r ], [ %i.aq, %bb.s ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.m
  store ptr %i.au, ptr %i.g, align 8, !tbaa !130
  %i.av = icmp sgt i64 %i.m, 4
  br i1 %i.av, label %bb.t, label %bb.u, !prof !86

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit51
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit51
  %i.aw = icmp eq i64 %i.m, 4
  br i1 %i.aw, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = load float, ptr %2, align 4, !tbaa !88
  store float %i.ax, ptr %1, align 4, !tbaa !88
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.w:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8, !tbaa !75    ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.j, %i.az
  %i.bb = ashr exact i64 %i.ba, 2                 ; 4 uses
  %i.bc = sub nsw i64 2305843009213693951, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.d
  br i1 %i.bd, label %bb.x, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.d)
  %i.be = add nsw i64 %.sroa.speculated.i, %i.bb  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 2305843009213693951)
  %i.bh = select i1 %i.bf, i64 2305843009213693951, i64 %i.bg ; 3 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.bi = shl nuw nsw i64 %i.bh, 2
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #22
  br label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bk = phi ptr [ %i.bj, %bb.y ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.az                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 4
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !86

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bk, ptr align 4 %i.ay, i64 %i.bm, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit
  %i.bo = icmp eq i64 %i.bm, 4
  br i1 %i.bo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load float, ptr %i.ay, align 4, !tbaa !88
  store float %i.bp, ptr %i.bk, align 4, !tbaa !88
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  %i.br = icmp sgt i64 %i.c, 4
  br i1 %i.br, label %bb.ad, label %bb.ae, !prof !86

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bq, ptr align 4 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bs = icmp eq i64 %i.c, 4
  br i1 %i.bs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bt = load float, ptr %2, align 4, !tbaa !88
  store float %i.bt, ptr %i.bq, align 4, !tbaa !88
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 4
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !86

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr align 4 %1, i64 %i.bv, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bx = icmp eq i64 %i.bv, 4
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.by = load float, ptr %1, align 4, !tbaa !88
  store float %i.by, ptr %i.bu, align 4, !tbaa !88
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i55 = icmp eq ptr %i.ay, null
  br i1 %.not.i55, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.cc) #20
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bk, ptr %0, align 8, !tbaa !75
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !130
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cd, ptr %i.e, align 8, !tbaa !72
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL21qsort_descent_inplaceINS_8BBoxRectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #16 {
bb.a:
  %4 = alloca %"struct.ncnn::BBoxRect", align 4   ; 4 uses
  %.pre59 = load ptr, ptr %1, align 8, !tbaa !75  ; 2 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.h, %bb.a
  %i.a = phi ptr [ %.pre59, %bb.a ], [ %i.ag, %bb.h ] ; 2 uses
  %i.b = phi ptr [ %.pre59, %bb.a ], [ %i.ah, %bb.h ] ; 2 uses
  %.tr45 = phi i32 [ %2, %bb.a ], [ %.0.lcssa, %bb.h ] ; 6 uses
  %i.c = add nsw i32 %.tr45, %3
  %i.d = sdiv i32 %i.c, 2
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.e
  %i.g = load float, ptr %i.f, align 4, !tbaa !88 ; 2 uses
  %.not50 = icmp sgt i32 %.tr45, %3
  br i1 %.not50, label %._crit_edge, label %.preheader47

.preheader47:                                     ; preds = %tailrecurse, %bb.f
  %i.h = phi ptr [ %i.ac, %bb.f ], [ %i.a, %tailrecurse ] ; 3 uses
  %.052 = phi i32 [ %.2, %bb.f ], [ %.tr45, %tailrecurse ]
  %.03851 = phi i32 [ %.240, %bb.f ], [ %3, %tailrecurse ]
  %i.i = sext i32 %.052 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader47
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %i.i, %.preheader47 ] ; 6 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.k = load float, ptr %i.j, align 4, !tbaa !88
  %i.l = fcmp fast ogt float %i.k, %i.g
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %i.l, label %bb.b, label %.preheader, !llvm.loop !134

.preheader:                                       ; preds = %bb.b
  %i.m = sext i32 %.03851 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %bb.c ], [ %i.m, %.preheader ] ; 6 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv56
  %i.o = load float, ptr %i.n, align 4, !tbaa !88
  %i.p = fcmp fast olt float %i.o, %i.g
  %indvars.iv.next57 = add nsw i64 %indvars.iv56, -1
  br i1 %i.p, label %bb.c, label %bb.d, !llvm.loop !135

bb.d:                                             ; preds = %bb.c
  %i.q = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %i.r = trunc nsw i64 %indvars.iv56 to i32       ; 2 uses
  %.not43 = icmp sgt i64 %indvars.iv, %indvars.iv56
  br i1 %.not43, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %0, align 8, !tbaa !91     ; 2 uses
  %i.t = getelementptr inbounds nuw [20 x i8], ptr %i.s, i64 %indvars.iv ; 2 uses
  %i.u = getelementptr inbounds nuw [20 x i8], ptr %i.s, i64 %indvars.iv56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.t, i64 20, i1 false), !tbaa.struct !87
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.t, ptr noundef nonnull align 4 dereferenceable(20) %i.u, i64 20, i1 false), !tbaa.struct !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.u, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !87
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.v = load ptr, ptr %1, align 8, !tbaa !75     ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv56 ; 2 uses
  %i.y = load float, ptr %i.w, align 4, !tbaa !88
  %i.z = load float, ptr %i.x, align 4, !tbaa !88
  store float %i.z, ptr %i.w, align 4, !tbaa !88
  store float %i.y, ptr %i.x, align 4, !tbaa !88
  %i.aa = add nsw i32 %i.q, 1
  %i.ab = add nsw i32 %i.r, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = phi ptr [ %i.v, %bb.e ], [ %i.h, %bb.d ] ; 3 uses
  %.240 = phi i32 [ %i.ab, %bb.e ], [ %i.r, %bb.d ] ; 3 uses
  %.2 = phi i32 [ %i.aa, %bb.e ], [ %i.q, %bb.d ] ; 3 uses
  %.not = icmp sgt i32 %.2, %.240
  br i1 %.not, label %._crit_edge, label %.preheader47, !llvm.loop !136

._crit_edge:                                      ; preds = %bb.f, %tailrecurse
  %i.ad = phi ptr [ %i.a, %tailrecurse ], [ %i.ac, %bb.f ]
  %i.ae = phi ptr [ %i.b, %tailrecurse ], [ %i.ac, %bb.f ]
  %.038.lcssa = phi i32 [ %3, %tailrecurse ], [ %.240, %bb.f ] ; 2 uses
  %.0.lcssa = phi i32 [ %.tr45, %tailrecurse ], [ %.2, %bb.f ] ; 2 uses
  %i.af = icmp slt i32 %.tr45, %.038.lcssa
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  tail call fastcc void @_ZN4ncnnL21qsort_descent_inplaceINS_8BBoxRectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEEii(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %.tr45, i32 noundef %.038.lcssa)
  %.pre = load ptr, ptr %1, align 8, !tbaa !75    ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.ag = phi ptr [ %.pre, %bb.g ], [ %i.ad, %._crit_edge ]
  %i.ah = phi ptr [ %.pre, %bb.g ], [ %i.ae, %._crit_edge ]
  %i.ai = icmp slt i32 %.0.lcssa, %3
  br i1 %i.ai, label %tailrecurse, label %bb.i

bb.i:                                             ; preds = %bb.h
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmul.v2f32(float, <2 x float>) #10

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !14, i64 8}
!12 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !14, i64 8, !15, i64 16, !6, i64 24, !16, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !15, i64 64}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!17 = !{!12, !16, i64 32}
!18 = !{!12, !13, i64 0}
!19 = distinct !{null}
!20 = !{!12, !15, i64 64}
!21 = !{ptr @_ZN4ncnn19YoloDetectionOutputD2Ev}
!22 = !{!23, !6, i64 208}
!23 = !{!"_ZTSN4ncnn19YoloDetectionOutputE", !24, i64 0, !6, i64 208, !6, i64 212, !38, i64 216, !38, i64 220, !12, i64 224, !39, i64 296}
!24 = !{!"_ZTSN4ncnn5LayerE", !25, i64 8, !25, i64 9, !25, i64 10, !25, i64 11, !25, i64 12, !25, i64 13, !25, i64 14, !25, i64 15, !25, i64 16, !25, i64 17, !25, i64 18, !25, i64 19, !25, i64 20, !25, i64 21, !25, i64 22, !25, i64 23, !25, i64 24, !25, i64 25, !25, i64 26, !25, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !26, i64 48, !26, i64 80, !29, i64 112, !29, i64 136, !33, i64 160, !33, i64 184}
!25 = !{!"bool", !7, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !15, i64 8, !7, i64 16}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!28 = !{!"p1 omnipotent char", !13, i64 0}
!29 = !{!"_ZTSSt6vectorIiSaIiEE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!33 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!38 = !{!"float", !7, i64 0}
!39 = !{!"p1 _ZTSN4ncnn5LayerE", !13, i64 0}
!40 = !{!23, !6, i64 212}
!41 = !{!23, !38, i64 216}
!42 = !{!23, !38, i64 220}
!43 = !{!13, !13, i64 0}
!44 = !{!12, !15, i64 16}
!45 = !{!12, !6, i64 24}
!46 = !{!6, !6, i64 0}
!47 = !{!12, !6, i64 56}
!48 = !{!23, !39, i64 296}
!49 = !{!36, !37, i64 8}
!50 = !{!36, !37, i64 0}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!12, !6, i64 44}
!54 = !{!12, !6, i64 48}
!55 = !{!56, !57, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN4ncnn8BBoxRectESaIS2_EESaIS4_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!57 = !{!"p1 _ZTSSt6vectorIN4ncnn8BBoxRectESaIS1_EE", !13, i64 0}
!58 = !{!56, !57, i64 8}
!59 = !{!56, !57, i64 16}
!60 = !{!61, !62, i64 8}
!61 = !{!"_ZTSNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EE17_Vector_impl_dataE", !62, i64 0, !62, i64 8, !62, i64 16}
!62 = !{!"p1 _ZTSSt6vectorIfSaIfEE", !13, i64 0}
!63 = !{!61, !62, i64 0}
!64 = !{!61, !62, i64 16}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZSt19__relocate_object_aISt6vectorIfSaIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!67 = distinct !{!67, !"_ZSt19__relocate_object_aISt6vectorIfSaIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!68 = !{!69}
!69 = distinct !{!69, !67, !"_ZSt19__relocate_object_aISt6vectorIfSaIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!70 = !{!71, !71, i64 0}
!71 = !{!"p1 float", !13, i64 0}
!72 = !{!73, !71, i64 16}
!73 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!74 = distinct !{!74, !52}
!75 = !{!73, !71, i64 0}
!76 = distinct !{!76, !52}
!77 = !{!32, !14, i64 0}
!78 = !{!32, !14, i64 8}
!79 = !{!32, !14, i64 16}
!80 = !{!81, !6, i64 4}
!81 = !{!"_ZTSN4ncnn6OptionE", !25, i64 0, !25, i64 1, !25, i64 2, !25, i64 3, !6, i64 4, !16, i64 8, !16, i64 16, !6, i64 24, !25, i64 28, !25, i64 29, !25, i64 30, !25, i64 31, !25, i64 32, !25, i64 33, !25, i64 34, !25, i64 35, !25, i64 36, !25, i64 37, !25, i64 38, !25, i64 39, !6, i64 40, !25, i64 44, !25, i64 45, !25, i64 46, !25, i64 47, !7, i64 48, !25, i64 49, !25, i64 50, !25, i64 51, !25, i64 52, !25, i64 53, !25, i64 54, !25, i64 55, !25, i64 56, !25, i64 57, !25, i64 58, !25, i64 59, !25, i64 60, !25, i64 61, !25, i64 62, !25, i64 63}
!82 = !{!83, !83, i64 0}
!83 = !{!"p1 _ZTSN4ncnn8BBoxRectE", !13, i64 0}
!84 = !{!85, !83, i64 16}
!85 = !{!"_ZTSNSt12_Vector_baseIN4ncnn8BBoxRectESaIS1_EE17_Vector_impl_dataE", !83, i64 0, !83, i64 8, !83, i64 16}
!86 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!87 = !{i64 0, i64 4, !88, i64 4, i64 4, !88, i64 8, i64 4, !88, i64 12, i64 4, !88, i64 16, i64 4, !46}
!88 = !{!38, !38, i64 0}
!89 = !{!85, !83, i64 8}
!90 = distinct !{!90, !52}
!91 = !{!85, !83, i64 0}
!92 = distinct !{!92, !52}
!93 = !{!94, !38, i64 8}
!94 = !{!"_ZTSN4ncnn8BBoxRectE", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !6, i64 16}
!95 = !{!96}
!96 = distinct !{!96, !97}
!97 = distinct !{!97, !"LVerDomain"}
!98 = !{!94, !38, i64 0}
!99 = !{!94, !38, i64 12}
!100 = !{!94, !38, i64 4}
!101 = !{!102}
!102 = distinct !{!102, !97}
!103 = distinct !{!103, !52, !104, !105}
!104 = !{!"llvm.loop.isvectorized", i32 1}
!105 = !{!"llvm.loop.unroll.runtime.disable"}
!106 = distinct !{!106, !52, !104}
!107 = !{!15, !15, i64 0}
!108 = distinct !{!108, !52}
!109 = distinct !{!109, !52}
!110 = distinct !{!110, !52}
!111 = !{!81, !16, i64 8}
!112 = !{!94, !6, i64 16}
!113 = distinct !{!113, !52}
!114 = !{!24, !25, i64 8}
!115 = !{!24, !25, i64 9}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!118 = distinct !{!118, !"_ZN4ncnn3Mat7channelEi"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZN4ncnn3Mat13channel_rangeEii: argument 0"}
!121 = distinct !{!121, !"_ZN4ncnn3Mat13channel_rangeEii"}
!122 = distinct !{!122, !52, !123}
!123 = !{!"llvm.loop.unswitch.partial.disable"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!126 = distinct !{!126, !"_ZN4ncnn3Mat7channelEi"}
!127 = distinct !{!127, !128}
!128 = !{!"llvm.loop.unroll.disable"}
!129 = distinct !{!129, !52}
!130 = !{!73, !71, i64 8}
!131 = distinct !{!131, !52}
!132 = !{!133}
!133 = !{i64 2, i64 -1, i64 -1, i1 true}
!134 = distinct !{!134, !52}
!135 = distinct !{!135, !52}
!136 = distinct !{!136, !52}
end_hunk_1
