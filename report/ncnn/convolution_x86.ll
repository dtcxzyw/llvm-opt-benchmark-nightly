Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86?download=true
inline.NumInlined: 399
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 220
begin_hunk_0_@_ZN4ncnnL39convolution_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii:bb.a

bb.r:                                             ; preds = %bb.o
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  call void @__clang_call_terminate(ptr %i.dd) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.m, %bb.h, %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  resume { ptr, i32 } %i.aj
}

declare void @_ZN4ncnn9ParamDict3setEif(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, i32 noundef %6) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %i.b = sext i32 %i.a to i64
  %i.c = icmp eq i32 %6, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.b ], [ %6, %bb.a ]    ; 3 uses
  %i.e = uitofp fast i64 %i.b to float            ; 2 uses
  %i.f = fmul fast float %i.e, 2.500000e-01       ; 2 uses
  %i.g = fmul fast float %i.e, f0x3DAAAAAB
  %i.h = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.g)
  %i.i = fptosi float %i.h to i32
  %i.j = sdiv i32 %i.i, 4
  %i.k = shl nsw i32 %i.j, 2
  %.sroa.speculated86 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 4)
  store i32 %.sroa.speculated86, ptr %3, align 4, !tbaa !67
  %i.l = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated82 = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %.0)
  %i.m = load i32, ptr %3, align 4, !tbaa !67
  %i.n = mul nsw i32 %i.m, %.sroa.speculated82    ; 3 uses
  %i.o = add i32 %0, -1                           ; 2 uses
  %i.p = add i32 %i.o, %i.n
  %i.q = sdiv i32 %i.p, %i.n                      ; 2 uses
  %i.r = add i32 %i.o, %i.q
  %i.s = sdiv i32 %i.r, %i.q
  %i.t = add nsw i32 %i.s, 3
  %i.u = sdiv i32 %i.t, 4
  %i.v = shl nsw i32 %i.u, 2
  %.sroa.speculated78 = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.n) ; 3 uses
  %i.w = icmp sgt i32 %.0, 1
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = sdiv i32 %.sroa.speculated78, %.0
  %.sroa.speculated68 = tail call i32 @llvm.smax.i32(i32 %i.x, i32 1)
  %i.y = add nuw nsw i32 %.sroa.speculated68, 3
  %i.z = and i32 %i.y, 2147483644
  %.sroa.speculated74 = tail call i32 @llvm.smin.i32(i32 %i.z, i32 %.sroa.speculated78)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %.sroa.speculated74, %bb.d ], [ %.sroa.speculated78, %bb.c ] ; 2 uses
  store i32 %storemerge, ptr %3, align 4, !tbaa !67
  %i.aa = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.f)
  %i.ab = sitofp fast i32 %storemerge to float
  %i.ac = fsub fast float %i.aa, %i.ab
  %i.ad = fptosi float %i.ac to i32
  %i.ae = sdiv i32 %i.ad, 4
  %i.af = shl nsw i32 %i.ae, 2
  %.sroa.speculated62 = tail call i32 @llvm.smax.i32(i32 %i.af, i32 4) ; 3 uses
  %i.ag = add i32 %2, -1                          ; 2 uses
  %i.ah = add i32 %i.ag, %.sroa.speculated62
  %i.ai = sdiv i32 %i.ah, %.sroa.speculated62     ; 2 uses
  %i.aj = add i32 %i.ag, %i.ai
  %i.ak = sdiv i32 %i.aj, %i.ai
  %i.al = add nsw i32 %i.ak, 3
  %i.am = sdiv i32 %i.al, 4
  %i.an = shl nsw i32 %i.am, 2
  %.sroa.speculated58 = tail call i32 @llvm.smin.i32(i32 %i.an, i32 %.sroa.speculated62) ; 3 uses
  store i32 %.sroa.speculated58, ptr %5, align 4, !tbaa !67
  %i.ao = icmp sgt i32 %1, 0
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.aq = mul nsw i32 %i.ap, %.sroa.speculated58
  %i.ar = sitofp fast i32 %i.aq to float
  %i.as = fsub fast float %i.f, %i.ar
  %i.at = add nsw i32 %i.ap, %.sroa.speculated58
  %i.au = sitofp fast i32 %i.at to float
  %i.av = fdiv fast float %i.as, %i.au
  %i.aw = fptosi float %i.av to i32
  %i.ax = sdiv i32 %i.aw, 4
  %i.ay = shl nsw i32 %i.ax, 2
  %.sroa.speculated52 = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 4) ; 3 uses
  %i.az = add nsw i32 %1, -1                      ; 2 uses
  %i.ba = add nuw i32 %i.az, %.sroa.speculated52
  %i.bb = udiv i32 %i.ba, %.sroa.speculated52     ; 2 uses
  %i.bc = add nuw i32 %i.az, %i.bb
  %i.bd = udiv i32 %i.bc, %i.bb
  %i.be = add nuw nsw i32 %i.bd, 3
  %i.bf = and i32 %i.be, -4
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.bf, i32 %.sroa.speculated52)
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL37conv3x3s1_winograd63_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 3 uses
  %.not124 = icmp sgt i32 %i.k, %i.j
  br i1 %.not124, label %._crit_edge, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph126, %_ZN4ncnn3MatD2Ev.exit
  %indvar158 = phi i32 [ 0, %.lr.ph126 ], [ %indvar.next159, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %.033125 = phi i32 [ %i.k, %.lr.ph126 ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.r = add i32 %i.k, %indvar158
  %i.s = mul i32 %i.r, 9
  %i.t = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.u = mul i32 %i.t, %.033125                   ; 3 uses
  %i.v = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.h

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.w = load ptr, ptr %4, align 8, !tbaa !18, !noalias !429 ; 2 uses
  %i.x = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !429
  %i.y = sext i32 %i.v to i64
  %i.z = mul i64 %i.x, %i.y
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !429
  %i.ab = mul i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = getelementptr i8, ptr %i.w, i64 %i.ab   ; 4 uses
  %i.ad = load i32, ptr %5, align 4, !tbaa !67    ; 6 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %i.af = load i32, ptr %7, align 4, !tbaa !67
  %i.ag = sub i32 %i.af, %i.u
  %i.ah = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %.sroa.speculated82 = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.ag) ; 9 uses
  %i.ai = load i32, ptr %6, align 4, !tbaa !67    ; 9 uses
  %i.aj = icmp sgt i32 %.sroa.speculated82, 0
  %wide.trip.count28.i = zext nneg i32 %.sroa.speculated82 to i64
  %i.ak = sdiv i32 %i.u, %i.ah
  %i.al = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !432
  %i.am = load i32, ptr %i.o, align 8, !tbaa !76, !noalias !432
  %i.an = load ptr, ptr %10, align 8, !tbaa !18, !noalias !432
  %i.ao = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !432
  %i.ap = sext i32 %i.ak to i64
  %i.aq = mul i64 %i.ao, %i.ap
  %i.ar = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !432 ; 2 uses
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.as
  %i.au = sext i32 %i.al to i64
  %i.av = sext i32 %i.am to i64
  %i.aw = mul i64 %i.ar, %i.au                    ; 2 uses
  %i.ax = mul i64 %i.aw, %i.av
  %i.ay = icmp sgt i32 %.sroa.speculated82, 3
  %i.az = and i32 %.sroa.speculated82, -4         ; 3 uses
  %i.ba = sext i32 %.sroa.speculated82 to i64     ; 4 uses
  %11 = add i32 %.sroa.speculated82, -2
  %i.bb = or disjoint i32 %i.az, 1
  %i.bc = icmp slt i32 %i.bb, %.sroa.speculated82
  %invariant.op.i = add nsw i64 %i.ba, -3
  %invariant.op71.i = add nsw i64 %i.ba, -1
  %i.bd = sext i32 %i.ai to i64                   ; 2 uses
  %i.be = zext nneg i32 %i.ad to i64
  %i.bf = shl nsw i64 %i.ba, 2
  %i.bg = add nsw i64 %i.bf, -4
  %i.bh = mul nsw i64 %i.bd, 36
  %i.bi = mul i32 %i.t, %i.s
  %i.bj = getelementptr i8, ptr %i.w, i64 %i.ab
  %i.bk = getelementptr i8, ptr %i.bj, i64 4
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit34, %_ZN4ncnn3Mat7channelEi.exit49
  %i.bl = add i32 %.033125, 1
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.033125, %i.bm
  %indvar.next159 = add i32 %indvar158, 1
  br i1 %.not.not, label %bb.c, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit34
  %indvar155 = phi i64 [ 0, %.lr.ph ], [ %indvar.next156, %_ZN4ncnn3MatD2Ev.exit34 ] ; 3 uses
  %indvar = phi i32 [ 0, %.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 8 uses
  %i.bn = trunc i64 %indvar155 to i32
  %i.bo = mul i32 %i.ai, %i.bn
  %i.bp = sub i32 %i.ad, %i.bo
  %smin188 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.bp)
  %i.bq = add i32 %smin188, -1                    ; 2 uses
  %i.br = mul i32 %i.ai, %indvar
  %i.bs = sub i32 %i.ad, %i.br
  %smin153 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.bs)
  %i.bt = zext i32 %smin153 to i64                ; 2 uses
  %i.bu = shl nuw nsw i64 %i.bt, 8
  %i.bv = mul i64 %i.bh, %indvar155               ; 2 uses
  %i.bw = mul nuw nsw i64 %i.bt, 36
  %i.bx = mul i32 %i.ai, %indvar
  %i.by = sub i32 %i.ad, %i.bx
  %smin = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.by) ; 2 uses
  %i.bz = add i32 %smin, -1
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = shl nuw nsw i64 %i.ca, 2
  %i.cc = shl i32 %smin, 6                        ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = mul i64 %i.bg, %i.cd
  %i.cf = shl nuw nsw i64 %i.ca, 8
  %i.cg = trunc i64 %indvars.iv to i32
  %i.ch = sub i32 %i.ad, %i.cg
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.ch) ; 17 uses
  %.val = load ptr, ptr %8, align 8               ; 3 uses
  br i1 %i.aj, label %.preheader12.lr.ph.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader12.lr.ph.i:                             ; preds = %bb.d
  %i.ci = load i32, ptr %9, align 4, !tbaa !67    ; 3 uses
  %i.cj = icmp sgt i32 %.sroa.speculated, 0
  %i.ck = mul i32 %i.ci, 9
  br i1 %i.cj, label %.preheader12.preheader.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader12.preheader.i:                         ; preds = %.preheader12.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 3 uses
  %scevgep157 = getelementptr i8, ptr %.val, i64 %i.bv
  %i.cl = mul i32 %i.bi, %i.ci
  %i.cm = mul i32 %i.ci, 9
  %i.cn = getelementptr i8, ptr %.val, i64 %i.bv
  %scevgep161 = getelementptr i8, ptr %i.cn, i64 %i.bw
  %min.iters.check167 = icmp ult i32 %.sroa.speculated, 4
  %n.vec169 = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.co = shl nuw nsw i64 %n.vec169, 8
  %cmp.n178 = icmp eq i64 %n.vec169, %wide.trip.count.i
  br label %.preheader12.i

.preheader12.i:                                   ; preds = %._crit_edge.i, %.preheader12.preheader.i
  %indvars.iv25.i = phi i64 [ 0, %.preheader12.preheader.i ], [ %indvars.iv.next26.i, %._crit_edge.i ] ; 3 uses
  %.020.i = phi ptr [ %i.ac, %.preheader12.preheader.i ], [ %.lcssa, %._crit_edge.i ] ; 9 uses
  %i.cp = trunc i64 %indvars.iv25.i to i32
  %i.cq = add i32 %i.u, %i.cp
  %i.cr = mul i32 %i.ck, %i.cq
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.cs ; 5 uses
  br i1 %min.iters.check167, label %.preheader.preheader.i.preheader, label %vector.memcheck152

vector.memcheck152:                               ; preds = %.preheader12.i
  %i.cu = trunc i64 %indvars.iv25.i to i32
  %i.cv = mul i32 %i.cm, %i.cu
  %i.cw = add i32 %i.cv, %i.cl
  %i.cx = sext i32 %i.cw to i64
  %i.cy = shl nsw i64 %i.cx, 2                    ; 2 uses
  %scevgep162 = getelementptr i8, ptr %scevgep161, i64 %i.cy
  %scevgep160 = getelementptr i8, ptr %scevgep157, i64 %i.cy
  %scevgep154 = getelementptr i8, ptr %.020.i, i64 %i.bu
  %bound0163 = icmp ult ptr %.020.i, %scevgep162
  %bound1164 = icmp ult ptr %scevgep160, %scevgep154
  %found.conflict165 = and i1 %bound0163, %bound1164
  br i1 %found.conflict165, label %.preheader.preheader.i.preheader, label %vector.ph168

vector.ph168:                                     ; preds = %vector.memcheck152
  %i.cz = getelementptr i8, ptr %.020.i, i64 %i.co ; 2 uses
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph168
  %index171 = phi i64 [ 0, %vector.ph168 ], [ %index.next176, %vector.body170 ] ; 6 uses
  %i.da = or disjoint i64 %index171, 1
  %i.db = or disjoint i64 %index171, 2
  %i.dc = or disjoint i64 %index171, 3
  %i.dd = shl i64 %index171, 8                    ; 4 uses
  %next.gep172 = getelementptr i8, ptr %.020.i, i64 %i.dd ; 64 uses
  %i.de = getelementptr i8, ptr %.020.i, i64 %i.dd ; 34 uses
  %next.gep173 = getelementptr i8, ptr %i.de, i64 256
  %i.df = getelementptr i8, ptr %.020.i, i64 %i.dd ; 34 uses
  %next.gep174 = getelementptr i8, ptr %i.df, i64 512
  %i.dg = getelementptr i8, ptr %.020.i, i64 %i.dd ; 34 uses
  %next.gep175 = getelementptr i8, ptr %i.dg, i64 768
  %i.dh = add nsw i64 %index171, %indvars.iv
  %i.di = add nsw i64 %i.da, %indvars.iv
  %i.dj = add nsw i64 %i.db, %indvars.iv
  %i.dk = add nsw i64 %i.dc, %indvars.iv
  %i.dl = mul nsw i64 %i.dh, 36
  %i.dm = mul nsw i64 %i.di, 36
  %i.dn = mul nsw i64 %i.dj, 36
  %i.do = mul nsw i64 %i.dk, 36
  %i.dp = getelementptr inbounds i8, ptr %i.ct, i64 %i.dl ; 9 uses
  %i.dq = getelementptr inbounds i8, ptr %i.ct, i64 %i.dm ; 9 uses
  %i.dr = getelementptr inbounds i8, ptr %i.ct, i64 %i.dn ; 9 uses
  %i.ds = getelementptr inbounds i8, ptr %i.ct, i64 %i.do ; 9 uses
  %i.dt = load float, ptr %i.dp, align 4, !tbaa !39, !alias.scope !435 ; 2 uses
  %i.du = load float, ptr %i.dq, align 4, !tbaa !39, !alias.scope !435 ; 2 uses
  %i.dv = load float, ptr %i.dr, align 4, !tbaa !39, !alias.scope !435 ; 2 uses
  %i.dw = load float, ptr %i.ds, align 4, !tbaa !39, !alias.scope !435 ; 2 uses
  %i.dx = insertelement <4 x float> poison, float %i.dt, i64 0
  %i.dy = insertelement <4 x float> %i.dx, float %i.du, i64 1
  %i.dz = insertelement <4 x float> %i.dy, float %i.dv, i64 2
  %i.ea = insertelement <4 x float> %i.dz, float %i.dw, i64 3 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.ef = load float, ptr %i.eb, align 4, !tbaa !39, !alias.scope !435
  %i.eg = load float, ptr %i.ec, align 4, !tbaa !39, !alias.scope !435
  %i.eh = load float, ptr %i.ed, align 4, !tbaa !39, !alias.scope !435
  %i.ei = load float, ptr %i.ee, align 4, !tbaa !39, !alias.scope !435
  %i.ej = insertelement <4 x float> poison, float %i.ef, i64 0
  %i.ek = insertelement <4 x float> %i.ej, float %i.eg, i64 1
  %i.el = insertelement <4 x float> %i.ek, float %i.eh, i64 2
  %i.em = insertelement <4 x float> %i.el, float %i.ei, i64 3 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.er = load float, ptr %i.en, align 4, !tbaa !39, !alias.scope !435 ; 2 uses
  %i.es = load float, ptr %i.eo, align 4, !tbaa !39, !alias.scope !435 ; 2 uses
  %i.et = load float, ptr %i.ep, align 4, !tbaa !39, !alias.scope !435 ; 2 uses
  %i.eu = load float, ptr %i.eq, align 4, !tbaa !39, !alias.scope !435 ; 2 uses
  %i.ev = insertelement <4 x float> poison, float %i.er, i64 0
  %i.ew = insertelement <4 x float> %i.ev, float %i.es, i64 1
  %i.ex = insertelement <4 x float> %i.ew, float %i.et, i64 2
  %i.ey = insertelement <4 x float> %i.ex, float %i.eu, i64 3 ; 5 uses
  %i.ez = fmul fast <4 x float> %i.ea, splat (float f0xBE638E39) ; 4 uses
  %i.fa = fmul fast <4 x float> %i.em, splat (float f0x3E638E39) ; 2 uses
  %i.fb = fmul fast <4 x float> %i.ey, splat (float f0xBE638E39) ; 4 uses
  %i.fc = fsub fast <4 x float> %i.ez, %i.fa
  %i.fd = fadd fast <4 x float> %i.fc, %i.fb      ; 7 uses
  %i.fe = fadd fast <4 x float> %i.fa, %i.ez
  %i.ff = fadd fast <4 x float> %i.fe, %i.fb      ; 7 uses
  %i.fg = fmul fast <4 x float> %i.ea, splat (float f0x3C360B61) ; 4 uses
  %i.fh = fmul fast <4 x float> %i.em, splat (float f0x3CB60B61) ; 2 uses
  %i.fi = fadd fast <4 x float> %i.fh, %i.fg
  %i.fj = fmul fast <4 x float> %i.ey, splat (float f0x3D360B61) ; 2 uses
  %i.fk = fadd fast <4 x float> %i.fi, %i.fj      ; 7 uses
  %i.fl = fsub fast <4 x float> %i.fg, %i.fh
  %i.fm = fadd fast <4 x float> %i.fl, %i.fj      ; 7 uses
  %i.fn = fmul fast <4 x float> %i.ea, splat (float f0x3CB60B61) ; 4 uses
  %i.fo = fmul fast <4 x float> %i.em, splat (float f0x3C360B61) ; 2 uses
  %i.fp = fadd fast <4 x float> %i.fo, %i.fn
  %i.fq = fmul fast <4 x float> %i.ey, splat (float f0x3BB60B61) ; 2 uses
  %i.fr = fadd fast <4 x float> %i.fp, %i.fq      ; 7 uses
  %i.fs = fsub fast <4 x float> %i.fn, %i.fo
  %i.ft = fadd fast <4 x float> %i.fs, %i.fq      ; 7 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %i.fy = load float, ptr %i.fu, align 4, !tbaa !39, !alias.scope !435
  %i.fz = load float, ptr %i.fv, align 4, !tbaa !39, !alias.scope !435
  %i.ga = load float, ptr %i.fw, align 4, !tbaa !39, !alias.scope !435
  %i.gb = load float, ptr %i.fx, align 4, !tbaa !39, !alias.scope !435
  %i.gc = insertelement <4 x float> poison, float %i.fy, i64 0
  %i.gd = insertelement <4 x float> %i.gc, float %i.fz, i64 1
  %i.ge = insertelement <4 x float> %i.gd, float %i.ga, i64 2
  %i.gf = insertelement <4 x float> %i.ge, float %i.gb, i64 3 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.gk = load float, ptr %i.gg, align 4, !tbaa !39, !alias.scope !435
  %i.gl = load float, ptr %i.gh, align 4, !tbaa !39, !alias.scope !435
  %i.gm = load float, ptr %i.gi, align 4, !tbaa !39, !alias.scope !435
  %i.gn = load float, ptr %i.gj, align 4, !tbaa !39, !alias.scope !435
  %i.go = insertelement <4 x float> poison, float %i.gk, i64 0
  %i.gp = insertelement <4 x float> %i.go, float %i.gl, i64 1
end_hunk_0
begin_hunk_1_@_ZN4ncnnL37conv3x3s1_winograd63_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a
  %i.alf = insertelement <4 x float> %i.ale, float %.neg4.7.i, i64 2
  %i.alg = insertelement <4 x float> %i.alf, float %i.aib, i64 3
  %i.alh = fadd reassoc nsz arcp contract afn <4 x float> %i.alg, %i.aie ; 3 uses
  %i.ali = extractelement <4 x float> %i.alh, i64 0
  %i.alj = fmul fast float %i.ali, f0x3BB60B61    ; 2 uses
  %i.alk = fadd fast <2 x float> %i.ahw, %i.akj   ; 3 uses
  %i.all = shufflevector <2 x float> %i.alk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.alm = fmul fast <4 x float> %i.all, <float f0xBE638E39, float f0x3E638E39, float f0x3CB60B61, float f0x3C360B61> ; 3 uses
  %i.aln = shufflevector <4 x float> %i.alh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alo = fmul fast <4 x float> %i.aln, <float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61>
  %i.alp = shufflevector <4 x float> %i.alm, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.alq = fsub fast <4 x float> %i.alm, %i.alp
  %i.alr = fadd fast <4 x float> %i.alm, %i.alp
  %i.als = shufflevector <4 x float> %i.alq, <4 x float> %i.alr, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.alt = fadd fast <4 x float> %i.als, %i.alo
  %i.alu = extractelement <2 x float> %i.alk, i64 0 ; 2 uses
  %i.alv = fmul fast float %i.alu, f0x3CB60B61    ; 2 uses
  %i.alw = extractelement <2 x float> %i.alk, i64 1
  %i.alx = fmul fast float %i.alw, f0x3C360B61    ; 2 uses
  %i.aly = fadd fast float %i.alx, %i.alv
  %i.alz = fadd fast float %i.aly, %i.alj
  %i.ama = fsub fast float %i.alv, %i.alx
  %i.amb = fadd fast float %i.ama, %i.alj
  store float %i.alu, ptr %i.ahu, align 4, !tbaa !39
  store <4 x float> %i.alt, ptr %i.ahv, align 4, !tbaa !39
  store float %i.alz, ptr %i.ahx, align 4, !tbaa !39
  store float %i.amb, ptr %i.ahy, align 4, !tbaa !39
  store <4 x float> %i.alh, ptr %i.ahz, align 4, !tbaa !39
  %i.amc = getelementptr inbounds nuw i8, ptr %.118.i, i64 236
  %i.amd = insertelement <4 x float> poison, float %i.aey, i64 0
  %i.ame = insertelement <4 x float> %i.amd, float %i.ail, i64 1
  %i.amf = shufflevector <4 x float> %i.ame, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.amg = fmul fast <4 x float> %i.amf, <float f0x3CB60B61, float f0x3C360B61, float f0x3C360B61, float f0x3CB60B61> ; 3 uses
  %i.amh = shufflevector <4 x float> %i.amg, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ami = fadd fast <4 x float> %i.amg, %i.amh
  %i.amj = fsub fast <4 x float> %i.amg, %i.amh
  %i.amk = shufflevector <4 x float> %i.ami, <4 x float> %i.amj, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.aml = insertelement <4 x float> poison, float %i.acu, i64 0
  %i.amm = shufflevector <4 x float> %i.aml, <4 x float> %i.aie, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  %i.amn = fadd fast <4 x float> %i.amk, %i.amm
  store <4 x float> %i.amn, ptr %i.amc, align 4, !tbaa !39
  %i.amo = getelementptr inbounds nuw i8, ptr %.118.i, i64 252
  store float %i.act, ptr %i.amo, align 4, !tbaa !39
  %i.amp = getelementptr inbounds nuw i8, ptr %.118.i, i64 256 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.preheader.preheader.i, !llvm.loop !441

._crit_edge.i:                                    ; preds = %.preheader.preheader.i, %middle.block177
  %.lcssa = phi ptr [ %i.cz, %middle.block177 ], [ %i.amp, %.preheader.preheader.i ]
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next26.i, %wide.trip.count28.i
  br i1 %exitcond29.not.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit, label %.preheader12.i, !llvm.loop !442

_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit: ; preds = %._crit_edge.i, %.preheader12.lr.ph.i, %bb.d
  %i.amq = trunc nsw i64 %indvars.iv to i32
  %i.amr = sdiv i32 %i.amq, %i.ai
  %i.ams = sext i32 %i.amr to i64
  %i.amt = mul i64 %i.ax, %i.ams
  %i.amu = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.amt
  %i.amv = shl i32 %.sroa.speculated, 6           ; 2 uses
  %i.amw = icmp sgt i32 %.sroa.speculated, 0      ; 3 uses
  %i.amx = sext i32 %i.amv to i64                 ; 11 uses
  %i.amy = shl nsw i32 %.sroa.speculated, 7
  %i.amz = sext i32 %i.amy to i64                 ; 3 uses
  %i.ana = mul nsw i32 %.sroa.speculated, 192
  %i.anb = sext i32 %i.ana to i64                 ; 3 uses
  %i.anc = zext i32 %i.amv to i64
  %i.and = shl nsw i64 %i.amx, 2
  %i.ane = getelementptr i8, ptr %i.bk, i64 %i.ce
  %i.anf = getelementptr i8, ptr %i.ane, i64 %i.cf
  %xtraiter = and i32 %.sroa.speculated, 1
  %i.ang = icmp eq i32 %i.bq, 0
  %unroll_iter = and i32 %.sroa.speculated, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod190 = trunc i32 %.sroa.speculated to i1
  %xtraiter192 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.anh = icmp ult i32 %i.bq, 3
  %unroll_iter196 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod193.not = icmp eq i32 %xtraiter192, 0
  %lcmp.mod195 = icmp ne i32 %xtraiter192, 0
  %i.ani = zext nneg i32 %.sroa.speculated to i64 ; 2 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  %stride.check = icmp slt i32 %i.cc, 0
  %n.vec = and i64 %i.ani, 2147483640             ; 5 uses
  %i.anj = trunc nuw nsw i64 %n.vec to i32
  %i.ank = shl nuw nsw i64 %n.vec, 8
  %i.anl = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %i.ani
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge33.split.i, %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit
  %indvars.iv54.i = phi i64 [ 0, %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit ], [ %indvars.iv.next55.i, %._crit_edge33.split.i ] ; 6 uses
  %i.anm = shl nuw nsw i64 %indvars.iv54.i, 2
  %scevgep141 = getelementptr i8, ptr %i.anf, i64 %i.anm
  %.reass.i = mul i64 %i.aw, %indvars.iv54.i
  %i.ann = getelementptr inbounds nuw i8, ptr %i.amu, i64 %.reass.i ; 4 uses
  br i1 %i.ay, label %.lr.ph8.i, label %.preheader1.i

.lr.ph8.i:                                        ; preds = %bb.e
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv54.i
  br i1 %i.amw, label %.lr.ph.us.i, label %.preheader1.thread.i

.lr.ph.us.i:                                      ; preds = %.lr.ph8.i, %._crit_edge.us.i
  %indvars.iv.i54 = phi i64 [ %indvars.iv.next.i56, %._crit_edge.us.i ], [ 0, %.lr.ph8.i ] ; 2 uses
  %.0695.us.i = phi ptr [ %.lcssa185, %._crit_edge.us.i ], [ %i.ann, %.lr.ph8.i ] ; 2 uses
  %i.ano = mul nuw nsw i64 %indvars.iv.i54, %i.anc
  %gep.us.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ano ; 2 uses
  br i1 %i.ang, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %.0673.us.i = phi ptr [ %i.aol, %.lr.ph.us.i.new ], [ %gep.us.i, %.lr.ph.us.i ] ; 6 uses
  %.1702.us.i = phi ptr [ %i.aom, %.lr.ph.us.i.new ], [ %.0695.us.i, %.lr.ph.us.i ] ; 9 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.anp = load float, ptr %.0673.us.i, align 4, !tbaa !39
  store float %i.anp, ptr %.1702.us.i, align 4, !tbaa !39
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i, i64 %i.amx
  %i.anr = load float, ptr %i.anq, align 4, !tbaa !39
  %i.ans = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 4
  store float %i.anr, ptr %i.ans, align 4, !tbaa !39
  %i.ant = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i, i64 %i.amz
  %i.anu = load float, ptr %i.ant, align 4, !tbaa !39
  %i.anv = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 8
  store float %i.anu, ptr %i.anv, align 4, !tbaa !39
  %i.anw = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i, i64 %i.anb
  %i.anx = load float, ptr %i.anw, align 4, !tbaa !39
  %i.any = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 12
  store float %i.anx, ptr %i.any, align 4, !tbaa !39
  %i.anz = getelementptr inbounds nuw i8, ptr %.0673.us.i, i64 256 ; 4 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 16
  %i.aob = load float, ptr %i.anz, align 4, !tbaa !39
  store float %i.aob, ptr %i.aoa, align 4, !tbaa !39
  %i.aoc = getelementptr inbounds nuw [4 x i8], ptr %i.anz, i64 %i.amx
  %i.aod = load float, ptr %i.aoc, align 4, !tbaa !39
  %i.aoe = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 20
  store float %i.aod, ptr %i.aoe, align 4, !tbaa !39
  %i.aof = getelementptr inbounds nuw [4 x i8], ptr %i.anz, i64 %i.amz
  %i.aog = load float, ptr %i.aof, align 4, !tbaa !39
  %i.aoh = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 24
  store float %i.aog, ptr %i.aoh, align 4, !tbaa !39
  %i.aoi = getelementptr inbounds nuw [4 x i8], ptr %i.anz, i64 %i.anb
  %i.aoj = load float, ptr %i.aoi, align 4, !tbaa !39
  %i.aok = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 28
  store float %i.aoj, ptr %i.aok, align 4, !tbaa !39
  %i.aol = getelementptr inbounds nuw i8, ptr %.0673.us.i, i64 512 ; 2 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 32 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !443

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.0673.us.i.epil.init = phi ptr [ %gep.us.i, %.lr.ph.us.i ], [ %i.aol, %._crit_edge.us.i.unr-lcssa ] ; 4 uses
  %.1702.us.i.epil.init = phi ptr [ %.0695.us.i, %.lr.ph.us.i ], [ %i.aom, %._crit_edge.us.i.unr-lcssa ] ; 5 uses
  call void @llvm.assume(i1 %lcmp.mod190)
  %i.aon = load float, ptr %.0673.us.i.epil.init, align 4, !tbaa !39
  store float %i.aon, ptr %.1702.us.i.epil.init, align 4, !tbaa !39
  %i.aoo = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i.epil.init, i64 %i.amx
  %i.aop = load float, ptr %i.aoo, align 4, !tbaa !39
  %i.aoq = getelementptr inbounds nuw i8, ptr %.1702.us.i.epil.init, i64 4
  store float %i.aop, ptr %i.aoq, align 4, !tbaa !39
  %i.aor = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i.epil.init, i64 %i.amz
  %i.aos = load float, ptr %i.aor, align 4, !tbaa !39
  %i.aot = getelementptr inbounds nuw i8, ptr %.1702.us.i.epil.init, i64 8
  store float %i.aos, ptr %i.aot, align 4, !tbaa !39
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i.epil.init, i64 %i.anb
  %i.aov = load float, ptr %i.aou, align 4, !tbaa !39
  %i.aow = getelementptr inbounds nuw i8, ptr %.1702.us.i.epil.init, i64 12
  store float %i.aov, ptr %i.aow, align 4, !tbaa !39
  %i.aox = getelementptr inbounds nuw i8, ptr %.1702.us.i.epil.init, i64 16
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %.lcssa185 = phi ptr [ %i.aom, %._crit_edge.us.i.unr-lcssa ], [ %i.aox, %.epil.preheader ] ; 2 uses
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i54, 4 ; 3 uses
  %i.aoy = icmp slt i64 %indvars.iv.next.i56, %invariant.op.i
  br i1 %i.aoy, label %.lr.ph.us.i, label %.preheader1.loopexit.i, !llvm.loop !444

.preheader1.loopexit.i:                           ; preds = %._crit_edge.us.i
  %i.aoz = trunc nuw nsw i64 %indvars.iv.next.i56 to i32
  br label %.preheader1.i

.preheader1.i:                                    ; preds = %.preheader1.loopexit.i, %bb.e
  %.069.lcssa.i = phi ptr [ %i.ann, %bb.e ], [ %.lcssa185, %.preheader1.loopexit.i ] ; 3 uses
  %.068.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.aoz, %.preheader1.loopexit.i ] ; 4 uses
  %i.apa = or disjoint i32 %.068.lcssa.i, 1
  %i.apb = icmp slt i32 %i.apa, %.sroa.speculated82
  br i1 %i.apb, label %.lr.ph17.i, label %.preheader.i

.preheader1.thread.i:                             ; preds = %.lr.ph8.i
  br i1 %i.bc, label %.lr.ph17.split.preheader.i, label %.preheader.i

.lr.ph17.i:                                       ; preds = %.preheader1.i
  %invariant.gep20.i = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv54.i
  br i1 %i.amw, label %.lr.ph.us22.preheader.i, label %.lr.ph17.split.preheader.i

.lr.ph17.split.preheader.i:                       ; preds = %.lr.ph17.i, %.preheader1.thread.i
  %.069.lcssa6268.i = phi ptr [ %.069.lcssa.i, %.lr.ph17.i ], [ %i.ann, %.preheader1.thread.i ]
  %.068.lcssa6367.i = phi i32 [ %.068.lcssa.i, %.lr.ph17.i ], [ %i.az, %.preheader1.thread.i ] ; 2 uses
  %i.apc = add i32 %.068.lcssa6367.i, 2
  %reass.sub = sub i32 %11, %.068.lcssa6367.i
  %i.apd = and i32 %reass.sub, -2
  %i.ape = add i32 %i.apc, %i.apd
  br label %.preheader.i

.lr.ph.us22.preheader.i:                          ; preds = %.lr.ph17.i
  %i.apf = sext i32 %.068.lcssa.i to i64
  br label %.lr.ph.us22.i

.lr.ph.us22.i:                                    ; preds = %._crit_edge.us23.i, %.lr.ph.us22.preheader.i
  %indvars.iv46.i = phi i64 [ %i.apf, %.lr.ph.us22.preheader.i ], [ %indvars.iv.next47.i, %._crit_edge.us23.i ] ; 2 uses
  %.27115.us.i = phi ptr [ %.069.lcssa.i, %.lr.ph.us22.preheader.i ], [ %.lcssa186, %._crit_edge.us23.i ] ; 2 uses
  %i.apg = mul nsw i64 %indvars.iv46.i, %i.amx
  %gep.us21.i = getelementptr [4 x i8], ptr %invariant.gep20.i, i64 %i.apg ; 2 uses
  br i1 %i.anh, label %.epil.preheader191, label %.lr.ph.us22.i.new

.lr.ph.us22.i.new:                                ; preds = %.lr.ph.us22.i, %.lr.ph.us22.i.new
  %.06513.us.i = phi ptr [ %i.aqd, %.lr.ph.us22.i.new ], [ %gep.us21.i, %.lr.ph.us22.i ] ; 6 uses
  %.312.us.i = phi ptr [ %i.aqe, %.lr.ph.us22.i.new ], [ %.27115.us.i, %.lr.ph.us22.i ] ; 9 uses
  %niter197 = phi i32 [ %niter197.next.3, %.lr.ph.us22.i.new ], [ 0, %.lr.ph.us22.i ]
  %i.aph = load float, ptr %.06513.us.i, align 4, !tbaa !39
  store float %i.aph, ptr %.312.us.i, align 4, !tbaa !39
  %i.api = getelementptr inbounds nuw [4 x i8], ptr %.06513.us.i, i64 %i.amx
  %i.apj = load float, ptr %i.api, align 4, !tbaa !39
  %i.apk = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 4
  store float %i.apj, ptr %i.apk, align 4, !tbaa !39
  %i.apl = getelementptr inbounds nuw i8, ptr %.06513.us.i, i64 256 ; 2 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 8
  %i.apn = load float, ptr %i.apl, align 4, !tbaa !39
  store float %i.apn, ptr %i.apm, align 4, !tbaa !39
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr %i.apl, i64 %i.amx
  %i.app = load float, ptr %i.apo, align 4, !tbaa !39
  %i.apq = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 12
  store float %i.app, ptr %i.apq, align 4, !tbaa !39
  %i.apr = getelementptr inbounds nuw i8, ptr %.06513.us.i, i64 512 ; 2 uses
  %i.aps = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 16
  %i.apt = load float, ptr %i.apr, align 4, !tbaa !39
  store float %i.apt, ptr %i.aps, align 4, !tbaa !39
  %i.apu = getelementptr inbounds nuw [4 x i8], ptr %i.apr, i64 %i.amx
  %i.apv = load float, ptr %i.apu, align 4, !tbaa !39
  %i.apw = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 20
  store float %i.apv, ptr %i.apw, align 4, !tbaa !39
  %i.apx = getelementptr inbounds nuw i8, ptr %.06513.us.i, i64 768 ; 2 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 24
  %i.apz = load float, ptr %i.apx, align 4, !tbaa !39
  store float %i.apz, ptr %i.apy, align 4, !tbaa !39
  %i.aqa = getelementptr inbounds nuw [4 x i8], ptr %i.apx, i64 %i.amx
  %i.aqb = load float, ptr %i.aqa, align 4, !tbaa !39
  %i.aqc = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 28
  store float %i.aqb, ptr %i.aqc, align 4, !tbaa !39
  %i.aqd = getelementptr inbounds nuw i8, ptr %.06513.us.i, i64 1024 ; 2 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 32 ; 3 uses
  %niter197.next.3 = add i32 %niter197, 4         ; 2 uses
  %niter197.ncmp.3 = icmp eq i32 %niter197.next.3, %unroll_iter196
  br i1 %niter197.ncmp.3, label %._crit_edge.us23.i.unr-lcssa, label %.lr.ph.us22.i.new, !llvm.loop !445

._crit_edge.us23.i.unr-lcssa:                     ; preds = %.lr.ph.us22.i.new
  br i1 %lcmp.mod193.not, label %._crit_edge.us23.i, label %.epil.preheader191

.epil.preheader191:                               ; preds = %._crit_edge.us23.i.unr-lcssa, %.lr.ph.us22.i
  %.06513.us.i.epil.init = phi ptr [ %gep.us21.i, %.lr.ph.us22.i ], [ %i.aqd, %._crit_edge.us23.i.unr-lcssa ]
  %.312.us.i.epil.init = phi ptr [ %.27115.us.i, %.lr.ph.us22.i ], [ %i.aqe, %._crit_edge.us23.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod195)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader191
  %.06513.us.i.epil = phi ptr [ %.06513.us.i.epil.init, %.epil.preheader191 ], [ %i.aqj, %bb.f ] ; 3 uses
  %.312.us.i.epil = phi ptr [ %.312.us.i.epil.init, %.epil.preheader191 ], [ %i.aqk, %bb.f ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader191 ], [ %epil.iter.next, %bb.f ]
  %i.aqf = load float, ptr %.06513.us.i.epil, align 4, !tbaa !39
  store float %i.aqf, ptr %.312.us.i.epil, align 4, !tbaa !39
  %i.aqg = getelementptr inbounds nuw [4 x i8], ptr %.06513.us.i.epil, i64 %i.amx
  %i.aqh = load float, ptr %i.aqg, align 4, !tbaa !39
  %i.aqi = getelementptr inbounds nuw i8, ptr %.312.us.i.epil, i64 4
  store float %i.aqh, ptr %i.aqi, align 4, !tbaa !39
  %i.aqj = getelementptr inbounds nuw i8, ptr %.06513.us.i.epil, i64 256
  %i.aqk = getelementptr inbounds nuw i8, ptr %.312.us.i.epil, i64 8 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter192
  br i1 %epil.iter.cmp.not, label %._crit_edge.us23.i, label %bb.f, !llvm.loop !446

._crit_edge.us23.i:                               ; preds = %bb.f, %._crit_edge.us23.i.unr-lcssa
  %.lcssa186 = phi ptr [ %i.aqe, %._crit_edge.us23.i.unr-lcssa ], [ %i.aqk, %bb.f ] ; 2 uses
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 2 ; 3 uses
  %i.aql = icmp slt i64 %indvars.iv.next47.i, %invariant.op71.i
  br i1 %i.aql, label %.lr.ph.us22.i, label %.preheader.loopexit.i, !llvm.loop !447

.preheader.loopexit.i:                            ; preds = %._crit_edge.us23.i
  %i.aqm = trunc nsw i64 %indvars.iv.next47.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph17.split.preheader.i, %.preheader1.thread.i, %.preheader1.i
  %.271.lcssa.i = phi ptr [ %.069.lcssa.i, %.preheader1.i ], [ %.lcssa186, %.preheader.loopexit.i ], [ %.069.lcssa6268.i, %.lr.ph17.split.preheader.i ], [ %i.ann, %.preheader1.thread.i ]
  %.1.lcssa.i = phi i32 [ %.068.lcssa.i, %.preheader1.i ], [ %i.aqm, %.preheader.loopexit.i ], [ %i.ape, %.lr.ph17.split.preheader.i ], [ %i.az, %.preheader1.thread.i ] ; 2 uses
  %i.aqn = icmp slt i32 %.1.lcssa.i, %.sroa.speculated82
  br i1 %i.aqn, label %.lr.ph32.i, label %._crit_edge33.split.i

.lr.ph32.i:                                       ; preds = %.preheader.i
  %invariant.gep34.i = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv54.i ; 2 uses
  br i1 %i.amw, label %.lr.ph.preheader.i, label %._crit_edge33.split.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph32.i
  %i.aqo = sext i32 %.1.lcssa.i to i64            ; 2 uses
  %i.aqp = mul i64 %i.and, %i.aqo
  %scevgep140 = getelementptr i8, ptr %invariant.gep34.i, i64 %i.aqp
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i53, %.lr.ph.preheader.i
  %indvars.iv50.i = phi i64 [ %i.aqo, %.lr.ph.preheader.i ], [ %indvars.iv.next51.i, %._crit_edge.i53 ] ; 2 uses
  %.430.i = phi ptr [ %.271.lcssa.i, %.lr.ph.preheader.i ], [ %.lcssa138, %._crit_edge.i53 ] ; 6 uses
  %i.aqq = mul nsw i64 %indvars.iv50.i, %i.amx
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep34.i, i64 %i.aqq ; 11 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %scevgep = getelementptr i8, ptr %.430.i, i64 4
  %scevgep139 = getelementptr i8, ptr %scevgep, i64 %i.cb
  %bound0 = icmp ult ptr %.430.i, %scevgep141
  %bound1 = icmp ult ptr %scevgep140, %scevgep139
  %found.conflict = and i1 %bound0, %bound1
  %i.aqr = or i1 %found.conflict, %stride.check
  br i1 %i.aqr, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aqs = getelementptr i8, ptr %gep.i, i64 %i.ank
  %i.aqt = getelementptr i8, ptr %.430.i, i64 %i.anl ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aqu = shl i64 %index, 8                      ; 8 uses
  %next.gep = getelementptr i8, ptr %gep.i, i64 %i.aqu
  %i.aqv = getelementptr i8, ptr %gep.i, i64 %i.aqu
  %next.gep142 = getelementptr i8, ptr %i.aqv, i64 256
  %i.aqw = getelementptr i8, ptr %gep.i, i64 %i.aqu
  %next.gep143 = getelementptr i8, ptr %i.aqw, i64 512
  %i.aqx = getelementptr i8, ptr %gep.i, i64 %i.aqu
  %next.gep144 = getelementptr i8, ptr %i.aqx, i64 768
  %i.aqy = getelementptr i8, ptr %gep.i, i64 %i.aqu
  %next.gep145 = getelementptr i8, ptr %i.aqy, i64 1024
  %i.aqz = getelementptr i8, ptr %gep.i, i64 %i.aqu
  %next.gep146 = getelementptr i8, ptr %i.aqz, i64 1280
  %i.ara = getelementptr i8, ptr %gep.i, i64 %i.aqu
  %next.gep147 = getelementptr i8, ptr %i.ara, i64 1536
  %i.arb = getelementptr i8, ptr %gep.i, i64 %i.aqu
  %next.gep148 = getelementptr i8, ptr %i.arb, i64 1792
  %i.arc = shl i64 %index, 2
  %next.gep149 = getelementptr i8, ptr %.430.i, i64 %i.arc ; 2 uses
  %i.ard = load float, ptr %next.gep, align 4, !tbaa !39, !alias.scope !448
  %i.are = load float, ptr %next.gep142, align 4, !tbaa !39, !alias.scope !448
  %i.arf = load float, ptr %next.gep143, align 4, !tbaa !39, !alias.scope !448
  %i.arg = load float, ptr %next.gep144, align 4, !tbaa !39, !alias.scope !448
  %i.arh = insertelement <4 x float> poison, float %i.ard, i64 0
  %i.ari = insertelement <4 x float> %i.arh, float %i.are, i64 1
  %i.arj = insertelement <4 x float> %i.ari, float %i.arf, i64 2
  %i.ark = insertelement <4 x float> %i.arj, float %i.arg, i64 3
  %i.arl = load float, ptr %next.gep145, align 4, !tbaa !39, !alias.scope !448
  %i.arm = load float, ptr %next.gep146, align 4, !tbaa !39, !alias.scope !448
  %i.arn = load float, ptr %next.gep147, align 4, !tbaa !39, !alias.scope !448
  %i.aro = load float, ptr %next.gep148, align 4, !tbaa !39, !alias.scope !448
  %i.arp = insertelement <4 x float> poison, float %i.arl, i64 0
  %i.arq = insertelement <4 x float> %i.arp, float %i.arm, i64 1
  %i.arr = insertelement <4 x float> %i.arq, float %i.arn, i64 2
  %i.ars = insertelement <4 x float> %i.arr, float %i.aro, i64 3
  %i.art = getelementptr i8, ptr %next.gep149, i64 16
  store <4 x float> %i.ark, ptr %next.gep149, align 4, !tbaa !39, !alias.scope !451, !noalias !448
  store <4 x float> %i.ars, ptr %i.art, align 4, !tbaa !39, !alias.scope !451, !noalias !448
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aru = icmp eq i64 %index.next, %n.vec
  br i1 %i.aru, label %middle.block, label %vector.body, !llvm.loop !453

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i53, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.029.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.anj, %middle.block ] ; 4 uses
  %.06328.i.ph = phi ptr [ %gep.i, %vector.memcheck ], [ %gep.i, %.lr.ph.i ], [ %i.aqs, %middle.block ] ; 2 uses
  %.527.i.ph = phi ptr [ %.430.i, %vector.memcheck ], [ %.430.i, %.lr.ph.i ], [ %i.aqt, %middle.block ] ; 2 uses
  %i.arv = sub i32 %.sroa.speculated, %.029.i.ph
  %xtraiter198 = and i32 %i.arv, 7                ; 2 uses
  %lcmp.mod199.not = icmp eq i32 %xtraiter198, 0
  br i1 %lcmp.mod199.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.029.i.prol = phi i32 [ %i.arz, %scalar.ph.prol ], [ %.029.i.ph, %scalar.ph.preheader ]
  %.06328.i.prol = phi ptr [ %i.arx, %scalar.ph.prol ], [ %.06328.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.527.i.prol = phi ptr [ %i.ary, %scalar.ph.prol ], [ %.527.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.arw = load float, ptr %.06328.i.prol, align 4, !tbaa !39
  store float %i.arw, ptr %.527.i.prol, align 4, !tbaa !39
  %i.arx = getelementptr inbounds nuw i8, ptr %.06328.i.prol, i64 256 ; 2 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %.527.i.prol, i64 4 ; 3 uses
  %i.arz = add nuw nsw i32 %.029.i.prol, 1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter198
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !454

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa187.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.ary, %scalar.ph.prol ]
  %.029.i.unr = phi i32 [ %.029.i.ph, %scalar.ph.preheader ], [ %i.arz, %scalar.ph.prol ]
  %.06328.i.unr = phi ptr [ %.06328.i.ph, %scalar.ph.preheader ], [ %i.arx, %scalar.ph.prol ]
  %.527.i.unr = phi ptr [ %.527.i.ph, %scalar.ph.preheader ], [ %i.ary, %scalar.ph.prol ]
  %i.asa = sub i32 %.029.i.ph, %.sroa.speculated
  %i.asb = icmp ugt i32 %i.asa, -8
  br i1 %i.asb, label %._crit_edge.i53, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.029.i = phi i32 [ %i.ata, %scalar.ph ], [ %.029.i.unr, %scalar.ph.prol.loopexit ]
  %.06328.i = phi ptr [ %i.asy, %scalar.ph ], [ %.06328.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.527.i = phi ptr [ %i.asz, %scalar.ph ], [ %.527.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.asc = load float, ptr %.06328.i, align 4, !tbaa !39
  store float %i.asc, ptr %.527.i, align 4, !tbaa !39
  %i.asd = getelementptr inbounds nuw i8, ptr %.06328.i, i64 256
  %i.ase = getelementptr inbounds nuw i8, ptr %.527.i, i64 4
  %i.asf = load float, ptr %i.asd, align 4, !tbaa !39
  store float %i.asf, ptr %i.ase, align 4, !tbaa !39
  %i.asg = getelementptr inbounds nuw i8, ptr %.06328.i, i64 512
  %i.ash = getelementptr inbounds nuw i8, ptr %.527.i, i64 8
  %i.asi = load float, ptr %i.asg, align 4, !tbaa !39
  store float %i.asi, ptr %i.ash, align 4, !tbaa !39
  %i.asj = getelementptr inbounds nuw i8, ptr %.06328.i, i64 768
  %i.ask = getelementptr inbounds nuw i8, ptr %.527.i, i64 12
  %i.asl = load float, ptr %i.asj, align 4, !tbaa !39
  store float %i.asl, ptr %i.ask, align 4, !tbaa !39
  %i.asm = getelementptr inbounds nuw i8, ptr %.06328.i, i64 1024
  %i.asn = getelementptr inbounds nuw i8, ptr %.527.i, i64 16
  %i.aso = load float, ptr %i.asm, align 4, !tbaa !39
  store float %i.aso, ptr %i.asn, align 4, !tbaa !39
  %i.asp = getelementptr inbounds nuw i8, ptr %.06328.i, i64 1280
  %i.asq = getelementptr inbounds nuw i8, ptr %.527.i, i64 20
  %i.asr = load float, ptr %i.asp, align 4, !tbaa !39
  store float %i.asr, ptr %i.asq, align 4, !tbaa !39
  %i.ass = getelementptr inbounds nuw i8, ptr %.06328.i, i64 1536
  %i.ast = getelementptr inbounds nuw i8, ptr %.527.i, i64 24
  %i.asu = load float, ptr %i.ass, align 4, !tbaa !39
  store float %i.asu, ptr %i.ast, align 4, !tbaa !39
  %i.asv = getelementptr inbounds nuw i8, ptr %.06328.i, i64 1792
  %i.asw = getelementptr inbounds nuw i8, ptr %.527.i, i64 28
  %i.asx = load float, ptr %i.asv, align 4, !tbaa !39
  store float %i.asx, ptr %i.asw, align 4, !tbaa !39
  %i.asy = getelementptr inbounds nuw i8, ptr %.06328.i, i64 2048
  %i.asz = getelementptr inbounds nuw i8, ptr %.527.i, i64 32 ; 2 uses
  %i.ata = add nuw nsw i32 %.029.i, 8             ; 2 uses
  %exitcond49.not.i.7 = icmp eq i32 %i.ata, %.sroa.speculated
  br i1 %exitcond49.not.i.7, label %._crit_edge.i53, label %scalar.ph, !llvm.loop !455

._crit_edge.i53:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa138 = phi ptr [ %i.aqt, %middle.block ], [ %.lcssa187.unr, %scalar.ph.prol.loopexit ], [ %i.asz, %scalar.ph ]
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next51.i, %i.ba
  br i1 %exitcond53.not.i, label %._crit_edge33.split.i, label %.lr.ph.i, !llvm.loop !456

._crit_edge33.split.i:                            ; preds = %._crit_edge.i53, %.lr.ph32.i, %.preheader.i
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next55.i, 64
  br i1 %exitcond58.not.i, label %_ZN4ncnn3MatD2Ev.exit34, label %bb.e, !llvm.loop !457

_ZN4ncnn3MatD2Ev.exit34:                          ; preds = %._crit_edge33.split.i
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.bd ; 2 uses
  %i.atb = icmp slt i64 %indvars.iv.next, %i.be
  %indvar.next = add i32 %indvar, 1
  %indvar.next156 = add i64 %indvar155, 1
  br i1 %i.atb, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !458

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.h:                                             ; preds = %bb.c
  %i.atc = landingpad { ptr, i32 }
          catch ptr null
  %i.atd = extractvalue { ptr, i32 } %i.atc, 0
  call void @__clang_call_terminate(ptr %i.atd) #27
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #12

declare noundef i32 @_ZN4ncnn18get_omp_thread_numEv() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare !callback !459 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #12

declare noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv() local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn22get_physical_cpu_countEv() local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #13

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL37conv3x3s1_winograd43_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 3 uses
  %.not132 = icmp sgt i32 %i.k, %i.j
  br i1 %.not132, label %._crit_edge, label %.lr.ph134

.lr.ph134:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph134, %_ZN4ncnn3MatD2Ev.exit
  %indvar166 = phi i32 [ 0, %.lr.ph134 ], [ %indvar.next167, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %.033133 = phi i32 [ %i.k, %.lr.ph134 ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.r = add i32 %i.k, %indvar166
  %i.s = mul i32 %i.r, 9
  %i.t = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.u = mul i32 %i.t, %.033133                   ; 3 uses
  %i.v = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.h

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.w = load ptr, ptr %4, align 8, !tbaa !18, !noalias !461 ; 2 uses
  %i.x = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !461
  %i.y = sext i32 %i.v to i64
  %i.z = mul i64 %i.x, %i.y
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !461
  %i.ab = mul i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = getelementptr i8, ptr %i.w, i64 %i.ab   ; 4 uses
  %i.ad = load i32, ptr %5, align 4, !tbaa !67    ; 6 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %i.af = load i32, ptr %7, align 4, !tbaa !67
  %i.ag = sub i32 %i.af, %i.u
  %i.ah = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %.sroa.speculated82 = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.ag) ; 9 uses
  %i.ai = load i32, ptr %6, align 4, !tbaa !67    ; 9 uses
  %i.aj = icmp sgt i32 %.sroa.speculated82, 0
  %wide.trip.count26.i = zext nneg i32 %.sroa.speculated82 to i64
  %i.ak = sdiv i32 %i.u, %i.ah
  %i.al = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !464
  %i.am = load i32, ptr %i.o, align 8, !tbaa !76, !noalias !464
  %i.an = load ptr, ptr %10, align 8, !tbaa !18, !noalias !464
  %i.ao = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !464
  %i.ap = sext i32 %i.ak to i64
  %i.aq = mul i64 %i.ao, %i.ap
  %i.ar = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !464 ; 2 uses
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.as
  %i.au = sext i32 %i.al to i64
  %i.av = sext i32 %i.am to i64
  %i.aw = mul i64 %i.ar, %i.au                    ; 2 uses
  %i.ax = mul i64 %i.aw, %i.av
  %i.ay = icmp sgt i32 %.sroa.speculated82, 3
  %i.az = and i32 %.sroa.speculated82, -4         ; 3 uses
  %i.ba = sext i32 %.sroa.speculated82 to i64     ; 4 uses
  %11 = add i32 %.sroa.speculated82, -2
  %i.bb = or disjoint i32 %i.az, 1
  %i.bc = icmp slt i32 %i.bb, %.sroa.speculated82
  %invariant.op.i = add nsw i64 %i.ba, -3
  %invariant.op71.i = add nsw i64 %i.ba, -1
  %i.bd = sext i32 %i.ai to i64                   ; 2 uses
  %i.be = zext nneg i32 %i.ad to i64
  %i.bf = shl nsw i64 %i.ba, 2
  %i.bg = add nsw i64 %i.bf, -4
  %i.bh = mul nsw i64 %i.bd, 36
  %i.bi = mul i32 %i.t, %i.s
  %i.bj = getelementptr i8, ptr %i.w, i64 %i.ab
  %i.bk = getelementptr i8, ptr %i.bj, i64 4
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit34, %_ZN4ncnn3Mat7channelEi.exit49
  %i.bl = add i32 %.033133, 1
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.033133, %i.bm
  %indvar.next167 = add i32 %indvar166, 1
  br i1 %.not.not, label %bb.c, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit34
  %indvar163 = phi i64 [ 0, %.lr.ph ], [ %indvar.next164, %_ZN4ncnn3MatD2Ev.exit34 ] ; 3 uses
  %indvar = phi i32 [ 0, %.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 8 uses
  %i.bn = trunc i64 %indvar163 to i32
  %i.bo = mul i32 %i.ai, %i.bn
  %i.bp = sub i32 %i.ad, %i.bo
  %smin198 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.bp)
  %i.bq = add i32 %smin198, -1                    ; 2 uses
  %i.br = mul i32 %i.ai, %indvar
  %i.bs = sub i32 %i.ad, %i.br
  %smin161 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.bs)
  %i.bt = zext i32 %smin161 to i64                ; 2 uses
  %i.bu = mul nuw nsw i64 %i.bt, 144
  %i.bv = mul i64 %i.bh, %indvar163               ; 2 uses
  %i.bw = mul nuw nsw i64 %i.bt, 36
  %i.bx = mul i32 %i.ai, %indvar
  %i.by = sub i32 %i.ad, %i.bx
  %smin = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.by) ; 2 uses
  %i.bz = add i32 %smin, -1
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = shl nuw nsw i64 %i.ca, 2
  %i.cc = mul i32 %smin, 36                       ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = mul i64 %i.bg, %i.cd
  %i.cf = mul nuw nsw i64 %i.ca, 144
  %i.cg = trunc i64 %indvars.iv to i32
  %i.ch = sub i32 %i.ad, %i.cg
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.ch) ; 17 uses
  %.val50 = load ptr, ptr %8, align 8             ; 3 uses
  br i1 %i.aj, label %.preheader10.lr.ph.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader10.lr.ph.i:                             ; preds = %bb.d
  %i.ci = load i32, ptr %9, align 4, !tbaa !67    ; 3 uses
  %i.cj = icmp sgt i32 %.sroa.speculated, 0
  %i.ck = mul i32 %i.ci, 9
  br i1 %i.cj, label %.preheader10.preheader.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader10.preheader.i:                         ; preds = %.preheader10.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 3 uses
  %scevgep165 = getelementptr i8, ptr %.val50, i64 %i.bv
  %i.cl = mul i32 %i.bi, %i.ci
  %i.cm = mul i32 %i.ci, 9
  %i.cn = getelementptr i8, ptr %.val50, i64 %i.bv
  %scevgep169 = getelementptr i8, ptr %i.cn, i64 %i.bw
  %min.iters.check175 = icmp ult i32 %.sroa.speculated, 4
  %n.vec177 = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.co = mul nuw nsw i64 %n.vec177, 144
  %cmp.n186 = icmp eq i64 %n.vec177, %wide.trip.count.i
  br label %.preheader10.i

.preheader10.i:                                   ; preds = %._crit_edge.i, %.preheader10.preheader.i
  %indvars.iv23.i = phi i64 [ 0, %.preheader10.preheader.i ], [ %indvars.iv.next24.i, %._crit_edge.i ] ; 3 uses
  %.018.i = phi ptr [ %i.ac, %.preheader10.preheader.i ], [ %.lcssa, %._crit_edge.i ] ; 9 uses
  %i.cp = trunc i64 %indvars.iv23.i to i32
  %i.cq = add i32 %i.u, %i.cp
  %i.cr = mul i32 %i.ck, %i.cq
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %.val50, i64 %i.cs ; 5 uses
  br i1 %min.iters.check175, label %.preheader.preheader.i.preheader, label %vector.memcheck160

vector.memcheck160:                               ; preds = %.preheader10.i
  %i.cu = trunc i64 %indvars.iv23.i to i32
  %i.cv = mul i32 %i.cm, %i.cu
  %i.cw = add i32 %i.cv, %i.cl
  %i.cx = sext i32 %i.cw to i64
  %i.cy = shl nsw i64 %i.cx, 2                    ; 2 uses
  %scevgep170 = getelementptr i8, ptr %scevgep169, i64 %i.cy
  %scevgep168 = getelementptr i8, ptr %scevgep165, i64 %i.cy
  %scevgep162 = getelementptr i8, ptr %.018.i, i64 %i.bu
  %bound0171 = icmp ult ptr %.018.i, %scevgep170
  %bound1172 = icmp ult ptr %scevgep168, %scevgep162
  %found.conflict173 = and i1 %bound0171, %bound1172
  br i1 %found.conflict173, label %.preheader.preheader.i.preheader, label %vector.ph176

vector.ph176:                                     ; preds = %vector.memcheck160
  %i.cz = getelementptr i8, ptr %.018.i, i64 %i.co ; 2 uses
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph176
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next184, %vector.body178 ] ; 6 uses
  %i.da = or disjoint i64 %index179, 1
  %i.db = or disjoint i64 %index179, 2
  %i.dc = or disjoint i64 %index179, 3
  %i.dd = mul i64 %index179, 144                  ; 4 uses
  %next.gep180 = getelementptr i8, ptr %.018.i, i64 %i.dd ; 36 uses
  %i.de = getelementptr i8, ptr %.018.i, i64 %i.dd ; 19 uses
  %i.df = getelementptr i8, ptr %.018.i, i64 %i.dd ; 20 uses
  %next.gep182 = getelementptr i8, ptr %i.df, i64 288
  %i.dg = getelementptr i8, ptr %.018.i, i64 %i.dd ; 20 uses
  %next.gep183 = getelementptr i8, ptr %i.dg, i64 432
  %i.dh = add nsw i64 %index179, %indvars.iv
  %i.di = add nsw i64 %i.da, %indvars.iv
  %i.dj = add nsw i64 %i.db, %indvars.iv
  %i.dk = add nsw i64 %i.dc, %indvars.iv
  %i.dl = mul nsw i64 %i.dh, 36
  %i.dm = mul nsw i64 %i.di, 36
  %i.dn = mul nsw i64 %i.dj, 36
  %i.do = mul nsw i64 %i.dk, 36
  %i.dp = getelementptr inbounds i8, ptr %i.ct, i64 %i.dl ; 9 uses
  %i.dq = getelementptr inbounds i8, ptr %i.ct, i64 %i.dm ; 8 uses
  %i.dr = getelementptr inbounds i8, ptr %i.ct, i64 %i.dn ; 9 uses
  %i.ds = getelementptr inbounds i8, ptr %i.ct, i64 %i.do ; 9 uses
  %i.dt = load float, ptr %i.dp, align 4, !tbaa !39, !alias.scope !467 ; 2 uses
  %i.du = load float, ptr %i.dr, align 4, !tbaa !39, !alias.scope !467 ; 2 uses
  %i.dv = load float, ptr %i.ds, align 4, !tbaa !39, !alias.scope !467 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.ea = load float, ptr %i.dw, align 4, !tbaa !39, !alias.scope !467
  %i.eb = load float, ptr %i.dx, align 4, !tbaa !39, !alias.scope !467
  %i.ec = load float, ptr %i.dy, align 4, !tbaa !39, !alias.scope !467
  %i.ed = load float, ptr %i.dz, align 4, !tbaa !39, !alias.scope !467
  %i.ee = insertelement <4 x float> poison, float %i.ea, i64 0
  %i.ef = insertelement <4 x float> %i.ee, float %i.eb, i64 1
  %i.eg = insertelement <4 x float> %i.ef, float %i.ec, i64 2
  %i.eh = insertelement <4 x float> %i.eg, float %i.ed, i64 3 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.em = load float, ptr %i.ei, align 4, !tbaa !39, !alias.scope !467 ; 2 uses
  %i.en = load float, ptr %i.ej, align 4, !tbaa !39, !alias.scope !467 ; 2 uses
  %i.eo = load float, ptr %i.ek, align 4, !tbaa !39, !alias.scope !467 ; 2 uses
  %i.ep = load float, ptr %i.el, align 4, !tbaa !39, !alias.scope !467 ; 2 uses
  %i.eq = insertelement <4 x float> poison, float %i.em, i64 0
  %i.er = insertelement <4 x float> %i.eq, float %i.en, i64 1
  %i.es = insertelement <4 x float> %i.er, float %i.eo, i64 2
  %i.et = insertelement <4 x float> %i.es, float %i.ep, i64 3 ; 3 uses
  %i.eu = fmul fast <4 x float> %i.eh, splat (float f0x3EF15BEF) ; 2 uses
  %i.ev = fmul fast <4 x float> %i.et, splat (float f0x3EAAAAAB) ; 4 uses
  %i.ew = fadd fast <4 x float> %i.eu, %i.ev
  %i.ex = fmul fast <4 x float> %i.eh, splat (float f0x3E715BEF) ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %i.fc = load float, ptr %i.ey, align 4, !tbaa !39, !alias.scope !467
  %i.fd = load float, ptr %i.ez, align 4, !tbaa !39, !alias.scope !467
  %i.fe = load float, ptr %i.fa, align 4, !tbaa !39, !alias.scope !467
  %i.ff = load float, ptr %i.fb, align 4, !tbaa !39, !alias.scope !467
  %i.fg = insertelement <4 x float> poison, float %i.fc, i64 0
  %i.fh = insertelement <4 x float> %i.fg, float %i.fd, i64 1
  %i.fi = insertelement <4 x float> %i.fh, float %i.fe, i64 2
  %i.fj = insertelement <4 x float> %i.fi, float %i.ff, i64 3 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.fo = load float, ptr %i.fk, align 4, !tbaa !39, !alias.scope !467
  %i.fp = load float, ptr %i.fl, align 4, !tbaa !39, !alias.scope !467
  %i.fq = load float, ptr %i.fm, align 4, !tbaa !39, !alias.scope !467
  %i.fr = load float, ptr %i.fn, align 4, !tbaa !39, !alias.scope !467
  %i.fs = insertelement <4 x float> poison, float %i.fo, i64 0
  %i.ft = insertelement <4 x float> %i.fs, float %i.fp, i64 1
  %i.fu = insertelement <4 x float> %i.ft, float %i.fq, i64 2
  %i.fv = insertelement <4 x float> %i.fu, float %i.fr, i64 3 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dq, i64 20
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ds, i64 20
  %i.ga = load float, ptr %i.fw, align 4, !tbaa !39, !alias.scope !467
  %i.gb = load float, ptr %i.fx, align 4, !tbaa !39, !alias.scope !467
  %i.gc = load float, ptr %i.fy, align 4, !tbaa !39, !alias.scope !467
  %i.gd = load float, ptr %i.fz, align 4, !tbaa !39, !alias.scope !467
  %i.ge = insertelement <4 x float> poison, float %i.ga, i64 0
  %i.gf = insertelement <4 x float> %i.ge, float %i.gb, i64 1
  %i.gg = insertelement <4 x float> %i.gf, float %i.gc, i64 2
  %i.gh = insertelement <4 x float> %i.gg, float %i.gd, i64 3 ; 3 uses
  %i.gi = fmul fast <4 x float> %i.fj, splat (float f0xBF2AAAAB) ; 2 uses
  %i.gj = fmul fast <4 x float> %i.fv, splat (float f0x3EF15BEF) ; 2 uses
  %i.gk = fmul fast <4 x float> %i.gh, splat (float f0x3EAAAAAB) ; 4 uses
  %i.gl = fadd fast <4 x float> %i.gj, %i.gk
  %i.gm = fsub fast <4 x float> %i.gi, %i.gl      ; 2 uses
  %i.gn = fadd fast <4 x float> %i.gj, %i.gi
  %i.go = fsub fast <4 x float> %i.gn, %i.gk      ; 2 uses
  %i.gp = fmul fast <4 x float> %i.fj, splat (float f0x3E2AAAAB) ; 2 uses
  %i.gq = fmul fast <4 x float> %i.fv, splat (float f0x3E715BEF) ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnnL37conv3x3s1_winograd43_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a
  %i.yk = fsub fast <2 x float> %i.yh, %i.yj
  %i.yl = fadd fast <2 x float> %i.yh, %i.yj
  %i.ym = shufflevector <2 x float> %i.yk, <2 x float> %i.yl, <2 x i32> <i32 0, i32 3>
  %i.yn = shufflevector <2 x float> %i.xc, <2 x float> %i.yb, <2 x i32> <i32 0, i32 3>
  %i.yo = shufflevector <2 x float> %i.xg, <2 x float> %i.ye, <2 x i32> <i32 1, i32 3>
  %i.yp = fsub fast <2 x float> %i.yn, %i.yo      ; 2 uses
  %i.yq = extractelement <2 x float> %i.yp, i64 0
  %i.yr = fadd fast float %i.yq, %i.wo
  store float %i.yr, ptr %i.xq, align 4, !tbaa !39
  %i.ys = extractelement <2 x float> %i.yp, i64 1
  %i.yt = fadd fast float %i.ys, %i.xt
  %i.yu = extractelement <2 x float> %i.xz, i64 0
  store float %i.yu, ptr %i.xs, align 4, !tbaa !39
  store float %i.yg, ptr %i.xu, align 4, !tbaa !39
  store <2 x float> %i.ym, ptr %i.xv, align 4, !tbaa !39
  %i.yv = getelementptr inbounds nuw i8, ptr %.116.i, i64 112
  store float %i.yt, ptr %i.yv, align 4, !tbaa !39
  %i.yw = getelementptr inbounds nuw i8, ptr %.116.i, i64 116
  store float %i.to, ptr %i.yw, align 4, !tbaa !39
  %i.yx = getelementptr inbounds nuw i8, ptr %.116.i, i64 120
  %i.yy = fmul fast float %i.ub, f0xBF2AAAAB      ; 2 uses
  %i.yz = fmul fast float %i.ue, f0x3EF15BEF      ; 2 uses
  %i.za = fadd fast float %i.yz, %i.td
  %i.zb = fsub fast float %i.yy, %i.za
  %i.zc = fadd fast float %i.yz, %i.yy
  %i.zd = fsub fast float %i.zc, %i.td
  %i.ze = fmul fast float %i.ub, f0x3E2AAAAB      ; 2 uses
  %i.zf = fmul fast float %i.ue, f0x3E715BEF      ; 2 uses
  %i.zg = fadd fast float %i.zf, %i.ze
  %i.zh = fadd fast float %i.zg, %i.td
  %i.zi = fsub fast float %i.ze, %i.zf
  %i.zj = fadd fast float %i.zi, %i.td
  store float %i.ub, ptr %i.yx, align 4, !tbaa !39
  %i.zk = getelementptr inbounds nuw i8, ptr %.116.i, i64 124
  store float %i.zb, ptr %i.zk, align 4, !tbaa !39
  %i.zl = getelementptr inbounds nuw i8, ptr %.116.i, i64 128
  store float %i.zd, ptr %i.zl, align 4, !tbaa !39
  %i.zm = getelementptr inbounds nuw i8, ptr %.116.i, i64 132
  store float %i.zh, ptr %i.zm, align 4, !tbaa !39
  %i.zn = getelementptr inbounds nuw i8, ptr %.116.i, i64 136
  store float %i.zj, ptr %i.zn, align 4, !tbaa !39
  %i.zo = getelementptr inbounds nuw i8, ptr %.116.i, i64 140
  store float %i.ta, ptr %i.zo, align 4, !tbaa !39
  %i.zp = getelementptr inbounds nuw i8, ptr %.116.i, i64 144 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.preheader.preheader.i, !llvm.loop !473

._crit_edge.i:                                    ; preds = %.preheader.preheader.i, %middle.block185
  %.lcssa = phi ptr [ %i.cz, %middle.block185 ], [ %i.zp, %.preheader.preheader.i ]
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %exitcond27.not.i = icmp eq i64 %indvars.iv.next24.i, %wide.trip.count26.i
  br i1 %exitcond27.not.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit, label %.preheader10.i, !llvm.loop !474

_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit: ; preds = %._crit_edge.i, %bb.d, %.preheader10.lr.ph.i
  %i.zq = trunc nsw i64 %indvars.iv to i32
  %i.zr = sdiv i32 %i.zq, %i.ai
  %i.zs = sext i32 %i.zr to i64
  %i.zt = mul i64 %i.ax, %i.zs
  %i.zu = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.zt
  %i.zv = mul i32 %.sroa.speculated, 36           ; 2 uses
  %i.zw = icmp sgt i32 %.sroa.speculated, 0       ; 3 uses
  %i.zx = sext i32 %i.zv to i64                   ; 11 uses
  %i.zy = mul i32 %.sroa.speculated, 72
  %i.zz = sext i32 %i.zy to i64                   ; 3 uses
  %i.aaa = mul nsw i32 %.sroa.speculated, 108
  %i.aab = sext i32 %i.aaa to i64                 ; 3 uses
  %i.aac = zext i32 %i.zv to i64
  %i.aad = shl nsw i64 %i.zx, 2
  %i.aae = getelementptr i8, ptr %i.bk, i64 %i.ce
  %i.aaf = getelementptr i8, ptr %i.aae, i64 %i.cf
  %xtraiter = and i32 %.sroa.speculated, 1
  %i.aag = icmp eq i32 %i.bq, 0
  %unroll_iter = and i32 %.sroa.speculated, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod200 = trunc i32 %.sroa.speculated to i1
  %xtraiter202 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.aah = icmp ult i32 %i.bq, 3
  %unroll_iter206 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod203.not = icmp eq i32 %xtraiter202, 0
  %lcmp.mod205 = icmp ne i32 %xtraiter202, 0
  %i.aai = zext nneg i32 %.sroa.speculated to i64 ; 2 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  %stride.check = icmp slt i32 %i.cc, 0
  %n.vec = and i64 %i.aai, 2147483640             ; 5 uses
  %i.aaj = trunc nuw nsw i64 %n.vec to i32
  %i.aak = mul nuw nsw i64 %n.vec, 144
  %i.aal = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %i.aai
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge33.split.i, %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit
  %indvars.iv54.i = phi i64 [ 0, %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit ], [ %indvars.iv.next55.i, %._crit_edge33.split.i ] ; 6 uses
  %i.aam = shl nuw nsw i64 %indvars.iv54.i, 2
  %scevgep149 = getelementptr i8, ptr %i.aaf, i64 %i.aam
  %.reass.i = mul i64 %i.aw, %indvars.iv54.i
  %i.aan = getelementptr inbounds nuw i8, ptr %i.zu, i64 %.reass.i ; 4 uses
  br i1 %i.ay, label %.lr.ph8.i, label %.preheader1.i

.lr.ph8.i:                                        ; preds = %bb.e
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv54.i
  br i1 %i.zw, label %.lr.ph.us.i, label %.preheader1.thread.i

.lr.ph.us.i:                                      ; preds = %.lr.ph8.i, %._crit_edge.us.i
  %indvars.iv.i54 = phi i64 [ %indvars.iv.next.i56, %._crit_edge.us.i ], [ 0, %.lr.ph8.i ] ; 2 uses
  %.0695.us.i = phi ptr [ %.lcssa195, %._crit_edge.us.i ], [ %i.aan, %.lr.ph8.i ] ; 2 uses
  %i.aao = mul nuw nsw i64 %indvars.iv.i54, %i.aac
  %gep.us.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.aao ; 2 uses
  br i1 %i.aag, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %.0673.us.i = phi ptr [ %i.abl, %.lr.ph.us.i.new ], [ %gep.us.i, %.lr.ph.us.i ] ; 6 uses
  %.1702.us.i = phi ptr [ %i.abm, %.lr.ph.us.i.new ], [ %.0695.us.i, %.lr.ph.us.i ] ; 9 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.aap = load float, ptr %.0673.us.i, align 4, !tbaa !39
  store float %i.aap, ptr %.1702.us.i, align 4, !tbaa !39
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i, i64 %i.zx
  %i.aar = load float, ptr %i.aaq, align 4, !tbaa !39
  %i.aas = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 4
  store float %i.aar, ptr %i.aas, align 4, !tbaa !39
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i, i64 %i.zz
  %i.aau = load float, ptr %i.aat, align 4, !tbaa !39
  %i.aav = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 8
  store float %i.aau, ptr %i.aav, align 4, !tbaa !39
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i, i64 %i.aab
  %i.aax = load float, ptr %i.aaw, align 4, !tbaa !39
  %i.aay = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 12
  store float %i.aax, ptr %i.aay, align 4, !tbaa !39
  %i.aaz = getelementptr inbounds nuw i8, ptr %.0673.us.i, i64 144 ; 4 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 16
  %i.abb = load float, ptr %i.aaz, align 4, !tbaa !39
  store float %i.abb, ptr %i.aba, align 4, !tbaa !39
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %i.zx
  %i.abd = load float, ptr %i.abc, align 4, !tbaa !39
  %i.abe = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 20
  store float %i.abd, ptr %i.abe, align 4, !tbaa !39
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %i.zz
  %i.abg = load float, ptr %i.abf, align 4, !tbaa !39
  %i.abh = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 24
  store float %i.abg, ptr %i.abh, align 4, !tbaa !39
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %i.aab
  %i.abj = load float, ptr %i.abi, align 4, !tbaa !39
  %i.abk = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 28
  store float %i.abj, ptr %i.abk, align 4, !tbaa !39
  %i.abl = getelementptr inbounds nuw i8, ptr %.0673.us.i, i64 288 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 32 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !443

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.0673.us.i.epil.init = phi ptr [ %gep.us.i, %.lr.ph.us.i ], [ %i.abl, %._crit_edge.us.i.unr-lcssa ] ; 4 uses
  %.1702.us.i.epil.init = phi ptr [ %.0695.us.i, %.lr.ph.us.i ], [ %i.abm, %._crit_edge.us.i.unr-lcssa ] ; 5 uses
  call void @llvm.assume(i1 %lcmp.mod200)
  %i.abn = load float, ptr %.0673.us.i.epil.init, align 4, !tbaa !39
  store float %i.abn, ptr %.1702.us.i.epil.init, align 4, !tbaa !39
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i.epil.init, i64 %i.zx
  %i.abp = load float, ptr %i.abo, align 4, !tbaa !39
  %i.abq = getelementptr inbounds nuw i8, ptr %.1702.us.i.epil.init, i64 4
  store float %i.abp, ptr %i.abq, align 4, !tbaa !39
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i.epil.init, i64 %i.zz
  %i.abs = load float, ptr %i.abr, align 4, !tbaa !39
  %i.abt = getelementptr inbounds nuw i8, ptr %.1702.us.i.epil.init, i64 8
  store float %i.abs, ptr %i.abt, align 4, !tbaa !39
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i.epil.init, i64 %i.aab
  %i.abv = load float, ptr %i.abu, align 4, !tbaa !39
  %i.abw = getelementptr inbounds nuw i8, ptr %.1702.us.i.epil.init, i64 12
  store float %i.abv, ptr %i.abw, align 4, !tbaa !39
  %i.abx = getelementptr inbounds nuw i8, ptr %.1702.us.i.epil.init, i64 16
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %.lcssa195 = phi ptr [ %i.abm, %._crit_edge.us.i.unr-lcssa ], [ %i.abx, %.epil.preheader ] ; 2 uses
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i54, 4 ; 3 uses
  %i.aby = icmp slt i64 %indvars.iv.next.i56, %invariant.op.i
  br i1 %i.aby, label %.lr.ph.us.i, label %.preheader1.loopexit.i, !llvm.loop !444

.preheader1.loopexit.i:                           ; preds = %._crit_edge.us.i
  %i.abz = trunc nuw nsw i64 %indvars.iv.next.i56 to i32
  br label %.preheader1.i

.preheader1.i:                                    ; preds = %.preheader1.loopexit.i, %bb.e
  %.069.lcssa.i = phi ptr [ %i.aan, %bb.e ], [ %.lcssa195, %.preheader1.loopexit.i ] ; 3 uses
  %.068.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.abz, %.preheader1.loopexit.i ] ; 4 uses
  %i.aca = or disjoint i32 %.068.lcssa.i, 1
  %i.acb = icmp slt i32 %i.aca, %.sroa.speculated82
  br i1 %i.acb, label %.lr.ph17.i, label %.preheader.i

.preheader1.thread.i:                             ; preds = %.lr.ph8.i
  br i1 %i.bc, label %.lr.ph17.split.preheader.i, label %.preheader.i

.lr.ph17.i:                                       ; preds = %.preheader1.i
  %invariant.gep20.i = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv54.i
  br i1 %i.zw, label %.lr.ph.us22.preheader.i, label %.lr.ph17.split.preheader.i

.lr.ph17.split.preheader.i:                       ; preds = %.lr.ph17.i, %.preheader1.thread.i
  %.069.lcssa6268.i = phi ptr [ %.069.lcssa.i, %.lr.ph17.i ], [ %i.aan, %.preheader1.thread.i ]
  %.068.lcssa6367.i = phi i32 [ %.068.lcssa.i, %.lr.ph17.i ], [ %i.az, %.preheader1.thread.i ] ; 2 uses
  %i.acc = add i32 %.068.lcssa6367.i, 2
  %reass.sub = sub i32 %11, %.068.lcssa6367.i
  %i.acd = and i32 %reass.sub, -2
  %i.ace = add i32 %i.acc, %i.acd
  br label %.preheader.i

.lr.ph.us22.preheader.i:                          ; preds = %.lr.ph17.i
  %i.acf = sext i32 %.068.lcssa.i to i64
  br label %.lr.ph.us22.i

.lr.ph.us22.i:                                    ; preds = %._crit_edge.us23.i, %.lr.ph.us22.preheader.i
  %indvars.iv46.i = phi i64 [ %i.acf, %.lr.ph.us22.preheader.i ], [ %indvars.iv.next47.i, %._crit_edge.us23.i ] ; 2 uses
  %.27115.us.i = phi ptr [ %.069.lcssa.i, %.lr.ph.us22.preheader.i ], [ %.lcssa196, %._crit_edge.us23.i ] ; 2 uses
  %i.acg = mul nsw i64 %indvars.iv46.i, %i.zx
  %gep.us21.i = getelementptr [4 x i8], ptr %invariant.gep20.i, i64 %i.acg ; 2 uses
  br i1 %i.aah, label %.epil.preheader201, label %.lr.ph.us22.i.new

.lr.ph.us22.i.new:                                ; preds = %.lr.ph.us22.i, %.lr.ph.us22.i.new
  %.06513.us.i = phi ptr [ %i.add, %.lr.ph.us22.i.new ], [ %gep.us21.i, %.lr.ph.us22.i ] ; 6 uses
  %.312.us.i = phi ptr [ %i.ade, %.lr.ph.us22.i.new ], [ %.27115.us.i, %.lr.ph.us22.i ] ; 9 uses
  %niter207 = phi i32 [ %niter207.next.3, %.lr.ph.us22.i.new ], [ 0, %.lr.ph.us22.i ]
  %i.ach = load float, ptr %.06513.us.i, align 4, !tbaa !39
  store float %i.ach, ptr %.312.us.i, align 4, !tbaa !39
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %.06513.us.i, i64 %i.zx
  %i.acj = load float, ptr %i.aci, align 4, !tbaa !39
  %i.ack = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 4
  store float %i.acj, ptr %i.ack, align 4, !tbaa !39
  %i.acl = getelementptr inbounds nuw i8, ptr %.06513.us.i, i64 144 ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 8
  %i.acn = load float, ptr %i.acl, align 4, !tbaa !39
  store float %i.acn, ptr %i.acm, align 4, !tbaa !39
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.acl, i64 %i.zx
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !39
  %i.acq = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 12
  store float %i.acp, ptr %i.acq, align 4, !tbaa !39
  %i.acr = getelementptr inbounds nuw i8, ptr %.06513.us.i, i64 288 ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 16
  %i.act = load float, ptr %i.acr, align 4, !tbaa !39
  store float %i.act, ptr %i.acs, align 4, !tbaa !39
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.acr, i64 %i.zx
  %i.acv = load float, ptr %i.acu, align 4, !tbaa !39
  %i.acw = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 20
  store float %i.acv, ptr %i.acw, align 4, !tbaa !39
  %i.acx = getelementptr inbounds nuw i8, ptr %.06513.us.i, i64 432 ; 2 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 24
  %i.acz = load float, ptr %i.acx, align 4, !tbaa !39
  store float %i.acz, ptr %i.acy, align 4, !tbaa !39
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.acx, i64 %i.zx
  %i.adb = load float, ptr %i.ada, align 4, !tbaa !39
  %i.adc = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 28
  store float %i.adb, ptr %i.adc, align 4, !tbaa !39
  %i.add = getelementptr inbounds nuw i8, ptr %.06513.us.i, i64 576 ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 32 ; 3 uses
  %niter207.next.3 = add i32 %niter207, 4         ; 2 uses
  %niter207.ncmp.3 = icmp eq i32 %niter207.next.3, %unroll_iter206
  br i1 %niter207.ncmp.3, label %._crit_edge.us23.i.unr-lcssa, label %.lr.ph.us22.i.new, !llvm.loop !445

._crit_edge.us23.i.unr-lcssa:                     ; preds = %.lr.ph.us22.i.new
  br i1 %lcmp.mod203.not, label %._crit_edge.us23.i, label %.epil.preheader201

.epil.preheader201:                               ; preds = %._crit_edge.us23.i.unr-lcssa, %.lr.ph.us22.i
  %.06513.us.i.epil.init = phi ptr [ %gep.us21.i, %.lr.ph.us22.i ], [ %i.add, %._crit_edge.us23.i.unr-lcssa ]
  %.312.us.i.epil.init = phi ptr [ %.27115.us.i, %.lr.ph.us22.i ], [ %i.ade, %._crit_edge.us23.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod205)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader201
  %.06513.us.i.epil = phi ptr [ %.06513.us.i.epil.init, %.epil.preheader201 ], [ %i.adj, %bb.f ] ; 3 uses
  %.312.us.i.epil = phi ptr [ %.312.us.i.epil.init, %.epil.preheader201 ], [ %i.adk, %bb.f ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader201 ], [ %epil.iter.next, %bb.f ]
  %i.adf = load float, ptr %.06513.us.i.epil, align 4, !tbaa !39
  store float %i.adf, ptr %.312.us.i.epil, align 4, !tbaa !39
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %.06513.us.i.epil, i64 %i.zx
  %i.adh = load float, ptr %i.adg, align 4, !tbaa !39
  %i.adi = getelementptr inbounds nuw i8, ptr %.312.us.i.epil, i64 4
  store float %i.adh, ptr %i.adi, align 4, !tbaa !39
  %i.adj = getelementptr inbounds nuw i8, ptr %.06513.us.i.epil, i64 144
  %i.adk = getelementptr inbounds nuw i8, ptr %.312.us.i.epil, i64 8 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter202
  br i1 %epil.iter.cmp.not, label %._crit_edge.us23.i, label %bb.f, !llvm.loop !475

._crit_edge.us23.i:                               ; preds = %bb.f, %._crit_edge.us23.i.unr-lcssa
  %.lcssa196 = phi ptr [ %i.ade, %._crit_edge.us23.i.unr-lcssa ], [ %i.adk, %bb.f ] ; 2 uses
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 2 ; 3 uses
  %i.adl = icmp slt i64 %indvars.iv.next47.i, %invariant.op71.i
  br i1 %i.adl, label %.lr.ph.us22.i, label %.preheader.loopexit.i, !llvm.loop !447

.preheader.loopexit.i:                            ; preds = %._crit_edge.us23.i
  %i.adm = trunc nsw i64 %indvars.iv.next47.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph17.split.preheader.i, %.preheader1.thread.i, %.preheader1.i
  %.271.lcssa.i = phi ptr [ %.069.lcssa.i, %.preheader1.i ], [ %.lcssa196, %.preheader.loopexit.i ], [ %.069.lcssa6268.i, %.lr.ph17.split.preheader.i ], [ %i.aan, %.preheader1.thread.i ]
  %.1.lcssa.i = phi i32 [ %.068.lcssa.i, %.preheader1.i ], [ %i.adm, %.preheader.loopexit.i ], [ %i.ace, %.lr.ph17.split.preheader.i ], [ %i.az, %.preheader1.thread.i ] ; 2 uses
  %i.adn = icmp slt i32 %.1.lcssa.i, %.sroa.speculated82
  br i1 %i.adn, label %.lr.ph32.i, label %._crit_edge33.split.i

.lr.ph32.i:                                       ; preds = %.preheader.i
  %invariant.gep34.i = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv54.i ; 2 uses
  br i1 %i.zw, label %.lr.ph.preheader.i, label %._crit_edge33.split.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph32.i
  %i.ado = sext i32 %.1.lcssa.i to i64            ; 2 uses
  %i.adp = mul i64 %i.aad, %i.ado
  %scevgep148 = getelementptr i8, ptr %invariant.gep34.i, i64 %i.adp
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i53, %.lr.ph.preheader.i
  %indvars.iv50.i = phi i64 [ %i.ado, %.lr.ph.preheader.i ], [ %indvars.iv.next51.i, %._crit_edge.i53 ] ; 2 uses
  %.430.i = phi ptr [ %.271.lcssa.i, %.lr.ph.preheader.i ], [ %.lcssa146, %._crit_edge.i53 ] ; 6 uses
  %i.adq = mul nsw i64 %indvars.iv50.i, %i.zx
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep34.i, i64 %i.adq ; 11 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %scevgep = getelementptr i8, ptr %.430.i, i64 4
  %scevgep147 = getelementptr i8, ptr %scevgep, i64 %i.cb
  %bound0 = icmp ult ptr %.430.i, %scevgep149
  %bound1 = icmp ult ptr %scevgep148, %scevgep147
  %found.conflict = and i1 %bound0, %bound1
  %i.adr = or i1 %found.conflict, %stride.check
  br i1 %i.adr, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ads = getelementptr i8, ptr %gep.i, i64 %i.aak
  %i.adt = getelementptr i8, ptr %.430.i, i64 %i.aal ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.adu = mul i64 %index, 144                    ; 8 uses
  %next.gep = getelementptr i8, ptr %gep.i, i64 %i.adu
  %i.adv = getelementptr i8, ptr %gep.i, i64 %i.adu
  %next.gep150 = getelementptr i8, ptr %i.adv, i64 144
  %i.adw = getelementptr i8, ptr %gep.i, i64 %i.adu
  %next.gep151 = getelementptr i8, ptr %i.adw, i64 288
  %i.adx = getelementptr i8, ptr %gep.i, i64 %i.adu
  %next.gep152 = getelementptr i8, ptr %i.adx, i64 432
  %i.ady = getelementptr i8, ptr %gep.i, i64 %i.adu
  %next.gep153 = getelementptr i8, ptr %i.ady, i64 576
  %i.adz = getelementptr i8, ptr %gep.i, i64 %i.adu
  %next.gep154 = getelementptr i8, ptr %i.adz, i64 720
  %i.aea = getelementptr i8, ptr %gep.i, i64 %i.adu
  %next.gep155 = getelementptr i8, ptr %i.aea, i64 864
  %i.aeb = getelementptr i8, ptr %gep.i, i64 %i.adu
  %next.gep156 = getelementptr i8, ptr %i.aeb, i64 1008
  %i.aec = shl i64 %index, 2
  %next.gep157 = getelementptr i8, ptr %.430.i, i64 %i.aec ; 2 uses
  %i.aed = load float, ptr %next.gep, align 4, !tbaa !39, !alias.scope !476
  %i.aee = load float, ptr %next.gep150, align 4, !tbaa !39, !alias.scope !476
  %i.aef = load float, ptr %next.gep151, align 4, !tbaa !39, !alias.scope !476
  %i.aeg = load float, ptr %next.gep152, align 4, !tbaa !39, !alias.scope !476
  %i.aeh = insertelement <4 x float> poison, float %i.aed, i64 0
  %i.aei = insertelement <4 x float> %i.aeh, float %i.aee, i64 1
  %i.aej = insertelement <4 x float> %i.aei, float %i.aef, i64 2
  %i.aek = insertelement <4 x float> %i.aej, float %i.aeg, i64 3
  %i.ael = load float, ptr %next.gep153, align 4, !tbaa !39, !alias.scope !476
  %i.aem = load float, ptr %next.gep154, align 4, !tbaa !39, !alias.scope !476
  %i.aen = load float, ptr %next.gep155, align 4, !tbaa !39, !alias.scope !476
  %i.aeo = load float, ptr %next.gep156, align 4, !tbaa !39, !alias.scope !476
  %i.aep = insertelement <4 x float> poison, float %i.ael, i64 0
  %i.aeq = insertelement <4 x float> %i.aep, float %i.aem, i64 1
  %i.aer = insertelement <4 x float> %i.aeq, float %i.aen, i64 2
  %i.aes = insertelement <4 x float> %i.aer, float %i.aeo, i64 3
  %i.aet = getelementptr i8, ptr %next.gep157, i64 16
  store <4 x float> %i.aek, ptr %next.gep157, align 4, !tbaa !39, !alias.scope !479, !noalias !476
  store <4 x float> %i.aes, ptr %i.aet, align 4, !tbaa !39, !alias.scope !479, !noalias !476
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aeu = icmp eq i64 %index.next, %n.vec
  br i1 %i.aeu, label %middle.block, label %vector.body, !llvm.loop !481

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i53, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.029.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.aaj, %middle.block ] ; 4 uses
  %.06328.i.ph = phi ptr [ %gep.i, %vector.memcheck ], [ %gep.i, %.lr.ph.i ], [ %i.ads, %middle.block ] ; 2 uses
  %.527.i.ph = phi ptr [ %.430.i, %vector.memcheck ], [ %.430.i, %.lr.ph.i ], [ %i.adt, %middle.block ] ; 2 uses
  %i.aev = sub i32 %.sroa.speculated, %.029.i.ph
  %xtraiter208 = and i32 %i.aev, 7                ; 2 uses
  %lcmp.mod209.not = icmp eq i32 %xtraiter208, 0
  br i1 %lcmp.mod209.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.029.i.prol = phi i32 [ %i.aez, %scalar.ph.prol ], [ %.029.i.ph, %scalar.ph.preheader ]
  %.06328.i.prol = phi ptr [ %i.aex, %scalar.ph.prol ], [ %.06328.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.527.i.prol = phi ptr [ %i.aey, %scalar.ph.prol ], [ %.527.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aew = load float, ptr %.06328.i.prol, align 4, !tbaa !39
  store float %i.aew, ptr %.527.i.prol, align 4, !tbaa !39
  %i.aex = getelementptr inbounds nuw i8, ptr %.06328.i.prol, i64 144 ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %.527.i.prol, i64 4 ; 3 uses
  %i.aez = add nuw nsw i32 %.029.i.prol, 1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter208
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !482

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa197.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.aey, %scalar.ph.prol ]
  %.029.i.unr = phi i32 [ %.029.i.ph, %scalar.ph.preheader ], [ %i.aez, %scalar.ph.prol ]
  %.06328.i.unr = phi ptr [ %.06328.i.ph, %scalar.ph.preheader ], [ %i.aex, %scalar.ph.prol ]
  %.527.i.unr = phi ptr [ %.527.i.ph, %scalar.ph.preheader ], [ %i.aey, %scalar.ph.prol ]
  %i.afa = sub i32 %.029.i.ph, %.sroa.speculated
  %i.afb = icmp ugt i32 %i.afa, -8
  br i1 %i.afb, label %._crit_edge.i53, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.029.i = phi i32 [ %i.aga, %scalar.ph ], [ %.029.i.unr, %scalar.ph.prol.loopexit ]
  %.06328.i = phi ptr [ %i.afy, %scalar.ph ], [ %.06328.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.527.i = phi ptr [ %i.afz, %scalar.ph ], [ %.527.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.afc = load float, ptr %.06328.i, align 4, !tbaa !39
  store float %i.afc, ptr %.527.i, align 4, !tbaa !39
  %i.afd = getelementptr inbounds nuw i8, ptr %.06328.i, i64 144
  %i.afe = getelementptr inbounds nuw i8, ptr %.527.i, i64 4
  %i.aff = load float, ptr %i.afd, align 4, !tbaa !39
  store float %i.aff, ptr %i.afe, align 4, !tbaa !39
  %i.afg = getelementptr inbounds nuw i8, ptr %.06328.i, i64 288
  %i.afh = getelementptr inbounds nuw i8, ptr %.527.i, i64 8
  %i.afi = load float, ptr %i.afg, align 4, !tbaa !39
  store float %i.afi, ptr %i.afh, align 4, !tbaa !39
  %i.afj = getelementptr inbounds nuw i8, ptr %.06328.i, i64 432
  %i.afk = getelementptr inbounds nuw i8, ptr %.527.i, i64 12
  %i.afl = load float, ptr %i.afj, align 4, !tbaa !39
  store float %i.afl, ptr %i.afk, align 4, !tbaa !39
  %i.afm = getelementptr inbounds nuw i8, ptr %.06328.i, i64 576
  %i.afn = getelementptr inbounds nuw i8, ptr %.527.i, i64 16
  %i.afo = load float, ptr %i.afm, align 4, !tbaa !39
  store float %i.afo, ptr %i.afn, align 4, !tbaa !39
  %i.afp = getelementptr inbounds nuw i8, ptr %.06328.i, i64 720
  %i.afq = getelementptr inbounds nuw i8, ptr %.527.i, i64 20
  %i.afr = load float, ptr %i.afp, align 4, !tbaa !39
  store float %i.afr, ptr %i.afq, align 4, !tbaa !39
  %i.afs = getelementptr inbounds nuw i8, ptr %.06328.i, i64 864
  %i.aft = getelementptr inbounds nuw i8, ptr %.527.i, i64 24
  %i.afu = load float, ptr %i.afs, align 4, !tbaa !39
  store float %i.afu, ptr %i.aft, align 4, !tbaa !39
  %i.afv = getelementptr inbounds nuw i8, ptr %.06328.i, i64 1008
  %i.afw = getelementptr inbounds nuw i8, ptr %.527.i, i64 28
  %i.afx = load float, ptr %i.afv, align 4, !tbaa !39
  store float %i.afx, ptr %i.afw, align 4, !tbaa !39
  %i.afy = getelementptr inbounds nuw i8, ptr %.06328.i, i64 1152
  %i.afz = getelementptr inbounds nuw i8, ptr %.527.i, i64 32 ; 2 uses
  %i.aga = add nuw nsw i32 %.029.i, 8             ; 2 uses
  %exitcond49.not.i.7 = icmp eq i32 %i.aga, %.sroa.speculated
  br i1 %exitcond49.not.i.7, label %._crit_edge.i53, label %scalar.ph, !llvm.loop !483

._crit_edge.i53:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa146 = phi ptr [ %i.adt, %middle.block ], [ %.lcssa197.unr, %scalar.ph.prol.loopexit ], [ %i.afz, %scalar.ph ]
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next51.i, %i.ba
  br i1 %exitcond53.not.i, label %._crit_edge33.split.i, label %.lr.ph.i, !llvm.loop !456

._crit_edge33.split.i:                            ; preds = %._crit_edge.i53, %.lr.ph32.i, %.preheader.i
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next55.i, 36
  br i1 %exitcond58.not.i, label %_ZN4ncnn3MatD2Ev.exit34, label %bb.e, !llvm.loop !457

_ZN4ncnn3MatD2Ev.exit34:                          ; preds = %._crit_edge33.split.i
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.bd ; 2 uses
  %i.agb = icmp slt i64 %indvars.iv.next, %i.be
  %indvar.next = add i32 %indvar, 1
  %indvar.next164 = add i64 %indvar163, 1
  br i1 %i.agb, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !484

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.h:                                             ; preds = %bb.c
  %i.agc = landingpad { ptr, i32 }
          catch ptr null
  %i.agd = extractvalue { ptr, i32 } %i.agc, 0
  call void @__clang_call_terminate(ptr %i.agd) #27
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL37conv3x3s1_winograd23_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 3 uses
  %.not105 = icmp sgt i32 %i.k, %i.j
  br i1 %.not105, label %._crit_edge, label %.lr.ph107

.lr.ph107:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph107, %_ZN4ncnn3MatD2Ev.exit
  %indvar139 = phi i32 [ 0, %.lr.ph107 ], [ %indvar.next140, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %.033106 = phi i32 [ %i.k, %.lr.ph107 ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.r = add i32 %i.k, %indvar139
  %i.s = mul i32 %i.r, 9
  %i.t = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.u = mul i32 %i.t, %.033106                   ; 3 uses
  %i.v = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.h

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.w = load ptr, ptr %4, align 8, !tbaa !18, !noalias !485 ; 2 uses
  %i.x = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !485
  %i.y = sext i32 %i.v to i64
  %i.z = mul i64 %i.x, %i.y
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !485
  %i.ab = mul i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = getelementptr i8, ptr %i.w, i64 %i.ab   ; 4 uses
  %i.ad = load i32, ptr %5, align 4, !tbaa !67    ; 6 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %i.af = load i32, ptr %7, align 4, !tbaa !67
  %i.ag = sub i32 %i.af, %i.u
  %i.ah = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %.sroa.speculated82 = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.ag) ; 9 uses
  %i.ai = load i32, ptr %6, align 4, !tbaa !67    ; 9 uses
  %i.aj = icmp sgt i32 %.sroa.speculated82, 0
  %wide.trip.count20.i = zext nneg i32 %.sroa.speculated82 to i64
  %i.ak = sdiv i32 %i.u, %i.ah
  %i.al = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !488
  %i.am = load i32, ptr %i.o, align 8, !tbaa !76, !noalias !488
  %i.an = load ptr, ptr %10, align 8, !tbaa !18, !noalias !488
  %i.ao = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !488
  %i.ap = sext i32 %i.ak to i64
  %i.aq = mul i64 %i.ao, %i.ap
  %i.ar = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !488 ; 2 uses
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.as
  %i.au = sext i32 %i.al to i64
  %i.av = sext i32 %i.am to i64
  %i.aw = mul i64 %i.ar, %i.au                    ; 2 uses
  %i.ax = mul i64 %i.aw, %i.av
  %i.ay = icmp sgt i32 %.sroa.speculated82, 3
  %i.az = and i32 %.sroa.speculated82, -4         ; 3 uses
  %i.ba = sext i32 %.sroa.speculated82 to i64     ; 4 uses
  %11 = add i32 %.sroa.speculated82, -2
  %i.bb = or disjoint i32 %i.az, 1
  %i.bc = icmp slt i32 %i.bb, %.sroa.speculated82
  %invariant.op.i = add nsw i64 %i.ba, -3
  %invariant.op71.i = add nsw i64 %i.ba, -1
  %i.bd = sext i32 %i.ai to i64                   ; 2 uses
  %i.be = zext nneg i32 %i.ad to i64
  %i.bf = shl nsw i64 %i.ba, 2
  %i.bg = add nsw i64 %i.bf, -4
  %i.bh = mul nsw i64 %i.bd, 36
  %i.bi = mul i32 %i.t, %i.s
  %i.bj = getelementptr i8, ptr %i.w, i64 %i.ab
  %i.bk = getelementptr i8, ptr %i.bj, i64 4
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit34, %_ZN4ncnn3Mat7channelEi.exit49
  %i.bl = add i32 %.033106, 1
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.033106, %i.bm
  %indvar.next140 = add i32 %indvar139, 1
  br i1 %.not.not, label %bb.c, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit34
  %indvar136 = phi i64 [ 0, %.lr.ph ], [ %indvar.next137, %_ZN4ncnn3MatD2Ev.exit34 ] ; 3 uses
  %indvar = phi i32 [ 0, %.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 8 uses
  %i.bn = trunc i64 %indvar136 to i32
  %i.bo = mul i32 %i.ai, %i.bn
  %i.bp = sub i32 %i.ad, %i.bo
  %smin167 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.bp)
  %i.bq = add i32 %smin167, -1                    ; 2 uses
  %i.br = mul i32 %i.ai, %indvar
  %i.bs = sub i32 %i.ad, %i.br
  %smin134 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.bs)
  %i.bt = zext i32 %smin134 to i64                ; 2 uses
  %i.bu = shl nuw nsw i64 %i.bt, 6
  %i.bv = mul i64 %i.bh, %indvar136               ; 2 uses
  %i.bw = mul nuw nsw i64 %i.bt, 36
  %i.bx = mul i32 %i.ai, %indvar
  %i.by = sub i32 %i.ad, %i.bx
  %smin = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.by) ; 2 uses
  %i.bz = add i32 %smin, -1
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = shl nuw nsw i64 %i.ca, 2
  %i.cc = shl i32 %smin, 4                        ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = mul i64 %i.bg, %i.cd
  %i.cf = shl nuw nsw i64 %i.ca, 6
  %i.cg = trunc i64 %indvars.iv to i32
  %i.ch = sub i32 %i.ad, %i.cg
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.ch) ; 17 uses
  %.val50 = load ptr, ptr %8, align 8             ; 3 uses
  br i1 %i.aj, label %.preheader4.lr.ph.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader4.lr.ph.i:                              ; preds = %bb.d
  %i.ci = load i32, ptr %9, align 4, !tbaa !67    ; 3 uses
  %i.cj = icmp sgt i32 %.sroa.speculated, 0
  %i.ck = mul i32 %i.ci, 9
  br i1 %i.cj, label %.preheader4.preheader.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader4.preheader.i:                          ; preds = %.preheader4.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 3 uses
  %scevgep138 = getelementptr i8, ptr %.val50, i64 %i.bv
  %i.cl = mul i32 %i.bi, %i.ci
  %i.cm = mul i32 %i.ci, 9
  %i.cn = getelementptr i8, ptr %.val50, i64 %i.bv
  %scevgep142 = getelementptr i8, ptr %i.cn, i64 %i.bw
  %min.iters.check148 = icmp ult i32 %.sroa.speculated, 4
  %n.vec150 = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.co = shl nuw nsw i64 %n.vec150, 6
  %cmp.n159 = icmp eq i64 %n.vec150, %wide.trip.count.i
  br label %.preheader4.i

.preheader4.i:                                    ; preds = %._crit_edge.i, %.preheader4.preheader.i
  %indvars.iv17.i = phi i64 [ 0, %.preheader4.preheader.i ], [ %indvars.iv.next18.i, %._crit_edge.i ] ; 3 uses
  %.012.i = phi ptr [ %i.ac, %.preheader4.preheader.i ], [ %.lcssa, %._crit_edge.i ] ; 9 uses
  %i.cp = trunc i64 %indvars.iv17.i to i32
  %i.cq = add i32 %i.u, %i.cp
  %i.cr = mul i32 %i.ck, %i.cq
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %.val50, i64 %i.cs ; 5 uses
  br i1 %min.iters.check148, label %.preheader.preheader.i.preheader, label %vector.memcheck133

vector.memcheck133:                               ; preds = %.preheader4.i
  %i.cu = trunc i64 %indvars.iv17.i to i32
  %i.cv = mul i32 %i.cm, %i.cu
  %i.cw = add i32 %i.cv, %i.cl
  %i.cx = sext i32 %i.cw to i64
  %i.cy = shl nsw i64 %i.cx, 2                    ; 2 uses
  %scevgep143 = getelementptr i8, ptr %scevgep142, i64 %i.cy
  %scevgep141 = getelementptr i8, ptr %scevgep138, i64 %i.cy
  %scevgep135 = getelementptr i8, ptr %.012.i, i64 %i.bu
  %bound0144 = icmp ult ptr %.012.i, %scevgep143
  %bound1145 = icmp ult ptr %scevgep141, %scevgep135
  %found.conflict146 = and i1 %bound0144, %bound1145
  br i1 %found.conflict146, label %.preheader.preheader.i.preheader, label %vector.ph149

vector.ph149:                                     ; preds = %vector.memcheck133
  %i.cz = getelementptr i8, ptr %.012.i, i64 %i.co ; 2 uses
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph149
  %index152 = phi i64 [ 0, %vector.ph149 ], [ %index.next157, %vector.body151 ] ; 6 uses
  %i.da = or disjoint i64 %index152, 1
  %i.db = or disjoint i64 %index152, 2
  %i.dc = or disjoint i64 %index152, 3
  %i.dd = shl i64 %index152, 6                    ; 4 uses
  %next.gep153 = getelementptr i8, ptr %.012.i, i64 %i.dd ; 16 uses
  %i.de = getelementptr i8, ptr %.012.i, i64 %i.dd ; 9 uses
  %i.df = getelementptr i8, ptr %.012.i, i64 %i.dd ; 10 uses
  %next.gep155 = getelementptr i8, ptr %i.df, i64 128
  %i.dg = getelementptr i8, ptr %.012.i, i64 %i.dd ; 10 uses
  %next.gep156 = getelementptr i8, ptr %i.dg, i64 192
  %i.dh = add nsw i64 %index152, %indvars.iv
  %i.di = add nsw i64 %i.da, %indvars.iv
  %i.dj = add nsw i64 %i.db, %indvars.iv
  %i.dk = add nsw i64 %i.dc, %indvars.iv
  %i.dl = mul nsw i64 %i.dh, 36
  %i.dm = mul nsw i64 %i.di, 36
  %i.dn = mul nsw i64 %i.dj, 36
  %i.do = mul nsw i64 %i.dk, 36
  %i.dp = getelementptr inbounds i8, ptr %i.ct, i64 %i.dl ; 9 uses
  %i.dq = getelementptr inbounds i8, ptr %i.ct, i64 %i.dm ; 8 uses
  %i.dr = getelementptr inbounds i8, ptr %i.ct, i64 %i.dn ; 9 uses
  %i.ds = getelementptr inbounds i8, ptr %i.ct, i64 %i.do ; 9 uses
  %i.dt = load float, ptr %i.dp, align 4, !tbaa !39, !alias.scope !491 ; 2 uses
  %i.du = load float, ptr %i.dr, align 4, !tbaa !39, !alias.scope !491 ; 2 uses
  %i.dv = load float, ptr %i.ds, align 4, !tbaa !39, !alias.scope !491 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.ea = load float, ptr %i.dw, align 4, !tbaa !39, !alias.scope !491
  %i.eb = load float, ptr %i.dx, align 4, !tbaa !39, !alias.scope !491
  %i.ec = load float, ptr %i.dy, align 4, !tbaa !39, !alias.scope !491
  %i.ed = load float, ptr %i.dz, align 4, !tbaa !39, !alias.scope !491
  %i.ee = insertelement <4 x float> poison, float %i.ea, i64 0
  %i.ef = insertelement <4 x float> %i.ee, float %i.eb, i64 1
  %i.eg = insertelement <4 x float> %i.ef, float %i.ec, i64 2
  %i.eh = insertelement <4 x float> %i.eg, float %i.ed, i64 3
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.em = load float, ptr %i.ei, align 4, !tbaa !39, !alias.scope !491 ; 2 uses
  %i.en = load float, ptr %i.ej, align 4, !tbaa !39, !alias.scope !491 ; 2 uses
  %i.eo = load float, ptr %i.ek, align 4, !tbaa !39, !alias.scope !491 ; 2 uses
  %i.ep = load float, ptr %i.el, align 4, !tbaa !39, !alias.scope !491 ; 2 uses
  %i.eq = insertelement <4 x float> poison, float %i.em, i64 0
  %i.er = insertelement <4 x float> %i.eq, float %i.en, i64 1
  %i.es = insertelement <4 x float> %i.er, float %i.eo, i64 2
  %i.et = insertelement <4 x float> %i.es, float %i.ep, i64 3
  %i.eu = fmul fast <4 x float> %i.eh, splat (float 5.000000e-01) ; 2 uses
  %i.ev = fmul fast <4 x float> %i.et, splat (float 5.000000e-01) ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %i.fa = load float, ptr %i.ew, align 4, !tbaa !39, !alias.scope !491
  %i.fb = load float, ptr %i.ex, align 4, !tbaa !39, !alias.scope !491
  %i.fc = load float, ptr %i.ey, align 4, !tbaa !39, !alias.scope !491
  %i.fd = load float, ptr %i.ez, align 4, !tbaa !39, !alias.scope !491
  %i.fe = insertelement <4 x float> poison, float %i.fa, i64 0
  %i.ff = insertelement <4 x float> %i.fe, float %i.fb, i64 1
  %i.fg = insertelement <4 x float> %i.ff, float %i.fc, i64 2
  %i.fh = insertelement <4 x float> %i.fg, float %i.fd, i64 3
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.fm = load float, ptr %i.fi, align 4, !tbaa !39, !alias.scope !491
  %i.fn = load float, ptr %i.fj, align 4, !tbaa !39, !alias.scope !491
  %i.fo = load float, ptr %i.fk, align 4, !tbaa !39, !alias.scope !491
  %i.fp = load float, ptr %i.fl, align 4, !tbaa !39, !alias.scope !491
  %i.fq = insertelement <4 x float> poison, float %i.fm, i64 0
  %i.fr = insertelement <4 x float> %i.fq, float %i.fn, i64 1
  %i.fs = insertelement <4 x float> %i.fr, float %i.fo, i64 2
  %i.ft = insertelement <4 x float> %i.fs, float %i.fp, i64 3
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dq, i64 20
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ds, i64 20
  %i.fy = load float, ptr %i.fu, align 4, !tbaa !39, !alias.scope !491
  %i.fz = load float, ptr %i.fv, align 4, !tbaa !39, !alias.scope !491
  %i.ga = load float, ptr %i.fw, align 4, !tbaa !39, !alias.scope !491
  %i.gb = load float, ptr %i.fx, align 4, !tbaa !39, !alias.scope !491
  %i.gc = insertelement <4 x float> poison, float %i.fy, i64 0
  %i.gd = insertelement <4 x float> %i.gc, float %i.fz, i64 1
  %i.ge = insertelement <4 x float> %i.gd, float %i.ga, i64 2
  %i.gf = insertelement <4 x float> %i.ge, float %i.gb, i64 3
  %i.gg = fmul fast <4 x float> %i.fh, splat (float 5.000000e-01) ; 4 uses
  %i.gh = fmul fast <4 x float> %i.ft, splat (float 5.000000e-01) ; 2 uses
  %i.gi = fadd fast <4 x float> %i.gh, %i.gg
  %i.gj = fmul fast <4 x float> %i.gf, splat (float 5.000000e-01) ; 4 uses
  %i.gk = fadd fast <4 x float> %i.gi, %i.gj
  %i.gl = fsub fast <4 x float> %i.gg, %i.gh
  %i.gm = fadd fast <4 x float> %i.gl, %i.gj
  %i.gn = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.go = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
end_hunk_2
begin_hunk_3_@_ZN4ncnnL37conv3x3s1_winograd23_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a
  %i.ny = fadd fast float %i.nx, %i.ml
  %i.nz = fsub fast float %i.no, %i.nw
  %i.oa = fadd fast float %i.nz, %i.ml
  %i.ob = fmul fast float %i.nv, 5.000000e-01     ; 2 uses
  %i.oc = extractelement <4 x float> %i.ns, i64 2
  %i.od = fmul fast float %i.oc, 5.000000e-01     ; 2 uses
  %i.oe = extractelement <4 x float> %i.ns, i64 0
  %i.of = extractelement <4 x float> %i.nn, i64 3 ; 3 uses
  %i.og = fadd fast float %i.oe, %i.of            ; 2 uses
  %i.oh = fadd fast float %i.np, %i.of            ; 2 uses
  %i.oi = extractelement <4 x float> %i.ni, i64 0
  store float %i.oi, ptr %.110.i, align 4, !tbaa !39
  store float %i.ny, ptr %i.mp, align 4, !tbaa !39
  store float %i.oa, ptr %i.mq, align 4, !tbaa !39
  store float %i.nf, ptr %i.mr, align 4, !tbaa !39
  %i.oj = fmul fast float %i.og, 5.000000e-01     ; 2 uses
  %i.ok = fadd fast float %i.ob, %i.oj
  %i.ol = fadd fast float %i.ok, %i.ng
  %i.om = fsub fast float %i.oj, %i.ob
  %i.on = fadd fast float %i.om, %i.ng
  store float %i.og, ptr %i.ms, align 4, !tbaa !39
  store float %i.ol, ptr %i.mt, align 4, !tbaa !39
  store float %i.on, ptr %i.mu, align 4, !tbaa !39
  store float %i.ne, ptr %i.mv, align 4, !tbaa !39
  %i.oo = fmul fast float %i.oh, 5.000000e-01     ; 2 uses
  %i.op = fadd fast float %i.od, %i.oo
  %i.oq = fsub fast float %i.of, %i.nu
  %i.or = insertelement <4 x float> poison, float %i.mo, i64 0
  %i.os = shufflevector <4 x float> %i.or, <4 x float> %i.ns, <4 x i32> <i32 0, i32 poison, i32 7, i32 poison>
  %i.ot = shufflevector <4 x float> %i.os, <4 x float> %i.ni, <4 x i32> <i32 0, i32 6, i32 2, i32 poison>
  %i.ou = insertelement <4 x float> %i.ot, float %i.oq, i64 3
  %i.ov = fadd reassoc nsz arcp contract afn <4 x float> %i.ou, %i.nc ; 2 uses
  %i.ow = extractelement <4 x float> %i.ov, i64 0
  %i.ox = fmul fast float %i.ow, 5.000000e-01     ; 2 uses
  %i.oy = fadd fast float %i.op, %i.ox
  %i.oz = fsub fast float %i.oo, %i.od
  %i.pa = fadd fast float %i.oz, %i.ox
  store float %i.oh, ptr %i.mw, align 4, !tbaa !39
  store float %i.oy, ptr %i.mx, align 4, !tbaa !39
  store float %i.pa, ptr %i.my, align 4, !tbaa !39
  store <4 x float> %i.ov, ptr %i.mz, align 4, !tbaa !39
  %i.pb = getelementptr inbounds nuw i8, ptr %.110.i, i64 60
  store float %i.mi, ptr %i.pb, align 4, !tbaa !39
  %i.pc = getelementptr inbounds nuw i8, ptr %.110.i, i64 64 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.preheader.preheader.i, !llvm.loop !497

._crit_edge.i:                                    ; preds = %.preheader.preheader.i, %middle.block158
  %.lcssa = phi ptr [ %i.cz, %middle.block158 ], [ %i.pc, %.preheader.preheader.i ]
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 2 uses
  %exitcond21.not.i = icmp eq i64 %indvars.iv.next18.i, %wide.trip.count20.i
  br i1 %exitcond21.not.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_tileERKNS_3MatERS0_iiiii.exit, label %.preheader4.i, !llvm.loop !498

_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_tileERKNS_3MatERS0_iiiii.exit: ; preds = %._crit_edge.i, %bb.d, %.preheader4.lr.ph.i
  %i.pd = trunc nsw i64 %indvars.iv to i32
  %i.pe = sdiv i32 %i.pd, %i.ai
  %i.pf = sext i32 %i.pe to i64
  %i.pg = mul i64 %i.ax, %i.pf
  %i.ph = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.pg
  %i.pi = shl i32 %.sroa.speculated, 4            ; 2 uses
  %i.pj = icmp sgt i32 %.sroa.speculated, 0       ; 3 uses
  %i.pk = sext i32 %i.pi to i64                   ; 11 uses
  %i.pl = shl nsw i32 %.sroa.speculated, 5
  %i.pm = sext i32 %i.pl to i64                   ; 3 uses
  %i.pn = mul nsw i32 %.sroa.speculated, 48
  %i.po = sext i32 %i.pn to i64                   ; 3 uses
  %i.pp = zext i32 %i.pi to i64
  %i.pq = shl nsw i64 %i.pk, 2
  %i.pr = getelementptr i8, ptr %i.bk, i64 %i.ce
  %i.ps = getelementptr i8, ptr %i.pr, i64 %i.cf
  %xtraiter = and i32 %.sroa.speculated, 1
  %i.pt = icmp eq i32 %i.bq, 0
  %unroll_iter = and i32 %.sroa.speculated, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod169 = trunc i32 %.sroa.speculated to i1
  %xtraiter171 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.pu = icmp ult i32 %i.bq, 3
  %unroll_iter175 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod172.not = icmp eq i32 %xtraiter171, 0
  %lcmp.mod174 = icmp ne i32 %xtraiter171, 0
  %i.pv = zext nneg i32 %.sroa.speculated to i64  ; 2 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  %stride.check = icmp slt i32 %i.cc, 0
  %n.vec = and i64 %i.pv, 2147483640              ; 5 uses
  %i.pw = trunc nuw nsw i64 %n.vec to i32
  %i.px = shl nuw nsw i64 %n.vec, 6
  %i.py = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %i.pv
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge33.split.i, %_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_tileERKNS_3MatERS0_iiiii.exit
  %indvars.iv54.i = phi i64 [ 0, %_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_tileERKNS_3MatERS0_iiiii.exit ], [ %indvars.iv.next55.i, %._crit_edge33.split.i ] ; 6 uses
  %i.pz = shl nuw nsw i64 %indvars.iv54.i, 2
  %scevgep122 = getelementptr i8, ptr %i.ps, i64 %i.pz
  %.reass.i = mul i64 %i.aw, %indvars.iv54.i
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ph, i64 %.reass.i ; 4 uses
  br i1 %i.ay, label %.lr.ph8.i, label %.preheader1.i

.lr.ph8.i:                                        ; preds = %bb.e
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv54.i
  br i1 %i.pj, label %.lr.ph.us.i, label %.preheader1.thread.i

.lr.ph.us.i:                                      ; preds = %.lr.ph8.i, %._crit_edge.us.i
  %indvars.iv.i54 = phi i64 [ %indvars.iv.next.i56, %._crit_edge.us.i ], [ 0, %.lr.ph8.i ] ; 2 uses
  %.0695.us.i = phi ptr [ %.lcssa164, %._crit_edge.us.i ], [ %i.qa, %.lr.ph8.i ] ; 2 uses
  %i.qb = mul nuw nsw i64 %indvars.iv.i54, %i.pp
  %gep.us.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.qb ; 2 uses
  br i1 %i.pt, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %.0673.us.i = phi ptr [ %i.qy, %.lr.ph.us.i.new ], [ %gep.us.i, %.lr.ph.us.i ] ; 6 uses
  %.1702.us.i = phi ptr [ %i.qz, %.lr.ph.us.i.new ], [ %.0695.us.i, %.lr.ph.us.i ] ; 9 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.qc = load float, ptr %.0673.us.i, align 4, !tbaa !39
  store float %i.qc, ptr %.1702.us.i, align 4, !tbaa !39
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i, i64 %i.pk
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !39
  %i.qf = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 4
  store float %i.qe, ptr %i.qf, align 4, !tbaa !39
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i, i64 %i.pm
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !39
  %i.qi = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 8
  store float %i.qh, ptr %i.qi, align 4, !tbaa !39
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i, i64 %i.po
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !39
  %i.ql = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 12
  store float %i.qk, ptr %i.ql, align 4, !tbaa !39
  %i.qm = getelementptr inbounds nuw i8, ptr %.0673.us.i, i64 64 ; 4 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 16
  %i.qo = load float, ptr %i.qm, align 4, !tbaa !39
  store float %i.qo, ptr %i.qn, align 4, !tbaa !39
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.pk
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !39
  %i.qr = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 20
  store float %i.qq, ptr %i.qr, align 4, !tbaa !39
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.pm
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !39
  %i.qu = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 24
  store float %i.qt, ptr %i.qu, align 4, !tbaa !39
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.po
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !39
  %i.qx = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 28
  store float %i.qw, ptr %i.qx, align 4, !tbaa !39
  %i.qy = getelementptr inbounds nuw i8, ptr %.0673.us.i, i64 128 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 32 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !443

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.0673.us.i.epil.init = phi ptr [ %gep.us.i, %.lr.ph.us.i ], [ %i.qy, %._crit_edge.us.i.unr-lcssa ] ; 4 uses
  %.1702.us.i.epil.init = phi ptr [ %.0695.us.i, %.lr.ph.us.i ], [ %i.qz, %._crit_edge.us.i.unr-lcssa ] ; 5 uses
  call void @llvm.assume(i1 %lcmp.mod169)
  %i.ra = load float, ptr %.0673.us.i.epil.init, align 4, !tbaa !39
  store float %i.ra, ptr %.1702.us.i.epil.init, align 4, !tbaa !39
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i.epil.init, i64 %i.pk
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !39
  %i.rd = getelementptr inbounds nuw i8, ptr %.1702.us.i.epil.init, i64 4
  store float %i.rc, ptr %i.rd, align 4, !tbaa !39
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i.epil.init, i64 %i.pm
  %i.rf = load float, ptr %i.re, align 4, !tbaa !39
  %i.rg = getelementptr inbounds nuw i8, ptr %.1702.us.i.epil.init, i64 8
  store float %i.rf, ptr %i.rg, align 4, !tbaa !39
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i.epil.init, i64 %i.po
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !39
  %i.rj = getelementptr inbounds nuw i8, ptr %.1702.us.i.epil.init, i64 12
  store float %i.ri, ptr %i.rj, align 4, !tbaa !39
  %i.rk = getelementptr inbounds nuw i8, ptr %.1702.us.i.epil.init, i64 16
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %.lcssa164 = phi ptr [ %i.qz, %._crit_edge.us.i.unr-lcssa ], [ %i.rk, %.epil.preheader ] ; 2 uses
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i54, 4 ; 3 uses
  %i.rl = icmp slt i64 %indvars.iv.next.i56, %invariant.op.i
  br i1 %i.rl, label %.lr.ph.us.i, label %.preheader1.loopexit.i, !llvm.loop !444

.preheader1.loopexit.i:                           ; preds = %._crit_edge.us.i
  %i.rm = trunc nuw nsw i64 %indvars.iv.next.i56 to i32
  br label %.preheader1.i

.preheader1.i:                                    ; preds = %.preheader1.loopexit.i, %bb.e
  %.069.lcssa.i = phi ptr [ %i.qa, %bb.e ], [ %.lcssa164, %.preheader1.loopexit.i ] ; 3 uses
  %.068.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.rm, %.preheader1.loopexit.i ] ; 4 uses
  %i.rn = or disjoint i32 %.068.lcssa.i, 1
  %i.ro = icmp slt i32 %i.rn, %.sroa.speculated82
  br i1 %i.ro, label %.lr.ph17.i, label %.preheader.i

.preheader1.thread.i:                             ; preds = %.lr.ph8.i
  br i1 %i.bc, label %.lr.ph17.split.preheader.i, label %.preheader.i

.lr.ph17.i:                                       ; preds = %.preheader1.i
  %invariant.gep20.i = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv54.i
  br i1 %i.pj, label %.lr.ph.us22.preheader.i, label %.lr.ph17.split.preheader.i

.lr.ph17.split.preheader.i:                       ; preds = %.lr.ph17.i, %.preheader1.thread.i
  %.069.lcssa6268.i = phi ptr [ %.069.lcssa.i, %.lr.ph17.i ], [ %i.qa, %.preheader1.thread.i ]
  %.068.lcssa6367.i = phi i32 [ %.068.lcssa.i, %.lr.ph17.i ], [ %i.az, %.preheader1.thread.i ] ; 2 uses
  %i.rp = add i32 %.068.lcssa6367.i, 2
  %reass.sub = sub i32 %11, %.068.lcssa6367.i
  %i.rq = and i32 %reass.sub, -2
  %i.rr = add i32 %i.rp, %i.rq
  br label %.preheader.i

.lr.ph.us22.preheader.i:                          ; preds = %.lr.ph17.i
  %i.rs = sext i32 %.068.lcssa.i to i64
  br label %.lr.ph.us22.i

.lr.ph.us22.i:                                    ; preds = %._crit_edge.us23.i, %.lr.ph.us22.preheader.i
  %indvars.iv46.i = phi i64 [ %i.rs, %.lr.ph.us22.preheader.i ], [ %indvars.iv.next47.i, %._crit_edge.us23.i ] ; 2 uses
  %.27115.us.i = phi ptr [ %.069.lcssa.i, %.lr.ph.us22.preheader.i ], [ %.lcssa165, %._crit_edge.us23.i ] ; 2 uses
  %i.rt = mul nsw i64 %indvars.iv46.i, %i.pk
  %gep.us21.i = getelementptr [4 x i8], ptr %invariant.gep20.i, i64 %i.rt ; 2 uses
  br i1 %i.pu, label %.epil.preheader170, label %.lr.ph.us22.i.new

.lr.ph.us22.i.new:                                ; preds = %.lr.ph.us22.i, %.lr.ph.us22.i.new
  %.06513.us.i = phi ptr [ %i.sq, %.lr.ph.us22.i.new ], [ %gep.us21.i, %.lr.ph.us22.i ] ; 6 uses
  %.312.us.i = phi ptr [ %i.sr, %.lr.ph.us22.i.new ], [ %.27115.us.i, %.lr.ph.us22.i ] ; 9 uses
  %niter176 = phi i32 [ %niter176.next.3, %.lr.ph.us22.i.new ], [ 0, %.lr.ph.us22.i ]
  %i.ru = load float, ptr %.06513.us.i, align 4, !tbaa !39
  store float %i.ru, ptr %.312.us.i, align 4, !tbaa !39
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %.06513.us.i, i64 %i.pk
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !39
  %i.rx = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 4
  store float %i.rw, ptr %i.rx, align 4, !tbaa !39
  %i.ry = getelementptr inbounds nuw i8, ptr %.06513.us.i, i64 64 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 8
  %i.sa = load float, ptr %i.ry, align 4, !tbaa !39
  store float %i.sa, ptr %i.rz, align 4, !tbaa !39
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %i.pk
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !39
  %i.sd = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 12
  store float %i.sc, ptr %i.sd, align 4, !tbaa !39
  %i.se = getelementptr inbounds nuw i8, ptr %.06513.us.i, i64 128 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 16
  %i.sg = load float, ptr %i.se, align 4, !tbaa !39
  store float %i.sg, ptr %i.sf, align 4, !tbaa !39
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %i.pk
  %i.si = load float, ptr %i.sh, align 4, !tbaa !39
  %i.sj = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 20
  store float %i.si, ptr %i.sj, align 4, !tbaa !39
  %i.sk = getelementptr inbounds nuw i8, ptr %.06513.us.i, i64 192 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 24
  %i.sm = load float, ptr %i.sk, align 4, !tbaa !39
  store float %i.sm, ptr %i.sl, align 4, !tbaa !39
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %i.pk
  %i.so = load float, ptr %i.sn, align 4, !tbaa !39
  %i.sp = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 28
  store float %i.so, ptr %i.sp, align 4, !tbaa !39
  %i.sq = getelementptr inbounds nuw i8, ptr %.06513.us.i, i64 256 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 32 ; 3 uses
  %niter176.next.3 = add i32 %niter176, 4         ; 2 uses
  %niter176.ncmp.3 = icmp eq i32 %niter176.next.3, %unroll_iter175
  br i1 %niter176.ncmp.3, label %._crit_edge.us23.i.unr-lcssa, label %.lr.ph.us22.i.new, !llvm.loop !445

._crit_edge.us23.i.unr-lcssa:                     ; preds = %.lr.ph.us22.i.new
  br i1 %lcmp.mod172.not, label %._crit_edge.us23.i, label %.epil.preheader170

.epil.preheader170:                               ; preds = %._crit_edge.us23.i.unr-lcssa, %.lr.ph.us22.i
  %.06513.us.i.epil.init = phi ptr [ %gep.us21.i, %.lr.ph.us22.i ], [ %i.sq, %._crit_edge.us23.i.unr-lcssa ]
  %.312.us.i.epil.init = phi ptr [ %.27115.us.i, %.lr.ph.us22.i ], [ %i.sr, %._crit_edge.us23.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod174)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader170
  %.06513.us.i.epil = phi ptr [ %.06513.us.i.epil.init, %.epil.preheader170 ], [ %i.sw, %bb.f ] ; 3 uses
  %.312.us.i.epil = phi ptr [ %.312.us.i.epil.init, %.epil.preheader170 ], [ %i.sx, %bb.f ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader170 ], [ %epil.iter.next, %bb.f ]
  %i.ss = load float, ptr %.06513.us.i.epil, align 4, !tbaa !39
  store float %i.ss, ptr %.312.us.i.epil, align 4, !tbaa !39
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %.06513.us.i.epil, i64 %i.pk
  %i.su = load float, ptr %i.st, align 4, !tbaa !39
  %i.sv = getelementptr inbounds nuw i8, ptr %.312.us.i.epil, i64 4
  store float %i.su, ptr %i.sv, align 4, !tbaa !39
  %i.sw = getelementptr inbounds nuw i8, ptr %.06513.us.i.epil, i64 64
  %i.sx = getelementptr inbounds nuw i8, ptr %.312.us.i.epil, i64 8 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter171
  br i1 %epil.iter.cmp.not, label %._crit_edge.us23.i, label %bb.f, !llvm.loop !499

._crit_edge.us23.i:                               ; preds = %bb.f, %._crit_edge.us23.i.unr-lcssa
  %.lcssa165 = phi ptr [ %i.sr, %._crit_edge.us23.i.unr-lcssa ], [ %i.sx, %bb.f ] ; 2 uses
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 2 ; 3 uses
  %i.sy = icmp slt i64 %indvars.iv.next47.i, %invariant.op71.i
  br i1 %i.sy, label %.lr.ph.us22.i, label %.preheader.loopexit.i, !llvm.loop !447

.preheader.loopexit.i:                            ; preds = %._crit_edge.us23.i
  %i.sz = trunc nsw i64 %indvars.iv.next47.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph17.split.preheader.i, %.preheader1.thread.i, %.preheader1.i
  %.271.lcssa.i = phi ptr [ %.069.lcssa.i, %.preheader1.i ], [ %.lcssa165, %.preheader.loopexit.i ], [ %.069.lcssa6268.i, %.lr.ph17.split.preheader.i ], [ %i.qa, %.preheader1.thread.i ]
  %.1.lcssa.i = phi i32 [ %.068.lcssa.i, %.preheader1.i ], [ %i.sz, %.preheader.loopexit.i ], [ %i.rr, %.lr.ph17.split.preheader.i ], [ %i.az, %.preheader1.thread.i ] ; 2 uses
  %i.ta = icmp slt i32 %.1.lcssa.i, %.sroa.speculated82
  br i1 %i.ta, label %.lr.ph32.i, label %._crit_edge33.split.i

.lr.ph32.i:                                       ; preds = %.preheader.i
  %invariant.gep34.i = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv54.i ; 2 uses
  br i1 %i.pj, label %.lr.ph.preheader.i, label %._crit_edge33.split.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph32.i
  %i.tb = sext i32 %.1.lcssa.i to i64             ; 2 uses
  %i.tc = mul i64 %i.pq, %i.tb
  %scevgep121 = getelementptr i8, ptr %invariant.gep34.i, i64 %i.tc
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i53, %.lr.ph.preheader.i
  %indvars.iv50.i = phi i64 [ %i.tb, %.lr.ph.preheader.i ], [ %indvars.iv.next51.i, %._crit_edge.i53 ] ; 2 uses
  %.430.i = phi ptr [ %.271.lcssa.i, %.lr.ph.preheader.i ], [ %.lcssa119, %._crit_edge.i53 ] ; 6 uses
  %i.td = mul nsw i64 %indvars.iv50.i, %i.pk
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep34.i, i64 %i.td ; 11 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %scevgep = getelementptr i8, ptr %.430.i, i64 4
  %scevgep120 = getelementptr i8, ptr %scevgep, i64 %i.cb
  %bound0 = icmp ult ptr %.430.i, %scevgep122
  %bound1 = icmp ult ptr %scevgep121, %scevgep120
  %found.conflict = and i1 %bound0, %bound1
  %i.te = or i1 %found.conflict, %stride.check
  br i1 %i.te, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.tf = getelementptr i8, ptr %gep.i, i64 %i.px
  %i.tg = getelementptr i8, ptr %.430.i, i64 %i.py ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.th = shl i64 %index, 6                       ; 8 uses
  %next.gep = getelementptr i8, ptr %gep.i, i64 %i.th
  %i.ti = getelementptr i8, ptr %gep.i, i64 %i.th
  %next.gep123 = getelementptr i8, ptr %i.ti, i64 64
  %i.tj = getelementptr i8, ptr %gep.i, i64 %i.th
  %next.gep124 = getelementptr i8, ptr %i.tj, i64 128
  %i.tk = getelementptr i8, ptr %gep.i, i64 %i.th
  %next.gep125 = getelementptr i8, ptr %i.tk, i64 192
  %i.tl = getelementptr i8, ptr %gep.i, i64 %i.th
  %next.gep126 = getelementptr i8, ptr %i.tl, i64 256
  %i.tm = getelementptr i8, ptr %gep.i, i64 %i.th
  %next.gep127 = getelementptr i8, ptr %i.tm, i64 320
  %i.tn = getelementptr i8, ptr %gep.i, i64 %i.th
  %next.gep128 = getelementptr i8, ptr %i.tn, i64 384
  %i.to = getelementptr i8, ptr %gep.i, i64 %i.th
  %next.gep129 = getelementptr i8, ptr %i.to, i64 448
  %i.tp = shl i64 %index, 2
  %next.gep130 = getelementptr i8, ptr %.430.i, i64 %i.tp ; 2 uses
  %i.tq = load float, ptr %next.gep, align 4, !tbaa !39, !alias.scope !500
  %i.tr = load float, ptr %next.gep123, align 4, !tbaa !39, !alias.scope !500
  %i.ts = load float, ptr %next.gep124, align 4, !tbaa !39, !alias.scope !500
  %i.tt = load float, ptr %next.gep125, align 4, !tbaa !39, !alias.scope !500
  %i.tu = insertelement <4 x float> poison, float %i.tq, i64 0
  %i.tv = insertelement <4 x float> %i.tu, float %i.tr, i64 1
  %i.tw = insertelement <4 x float> %i.tv, float %i.ts, i64 2
  %i.tx = insertelement <4 x float> %i.tw, float %i.tt, i64 3
  %i.ty = load float, ptr %next.gep126, align 4, !tbaa !39, !alias.scope !500
  %i.tz = load float, ptr %next.gep127, align 4, !tbaa !39, !alias.scope !500
  %i.ua = load float, ptr %next.gep128, align 4, !tbaa !39, !alias.scope !500
  %i.ub = load float, ptr %next.gep129, align 4, !tbaa !39, !alias.scope !500
  %i.uc = insertelement <4 x float> poison, float %i.ty, i64 0
  %i.ud = insertelement <4 x float> %i.uc, float %i.tz, i64 1
  %i.ue = insertelement <4 x float> %i.ud, float %i.ua, i64 2
  %i.uf = insertelement <4 x float> %i.ue, float %i.ub, i64 3
  %i.ug = getelementptr i8, ptr %next.gep130, i64 16
  store <4 x float> %i.tx, ptr %next.gep130, align 4, !tbaa !39, !alias.scope !503, !noalias !500
  store <4 x float> %i.uf, ptr %i.ug, align 4, !tbaa !39, !alias.scope !503, !noalias !500
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.uh = icmp eq i64 %index.next, %n.vec
  br i1 %i.uh, label %middle.block, label %vector.body, !llvm.loop !505

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i53, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.029.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.pw, %middle.block ] ; 4 uses
  %.06328.i.ph = phi ptr [ %gep.i, %vector.memcheck ], [ %gep.i, %.lr.ph.i ], [ %i.tf, %middle.block ] ; 2 uses
  %.527.i.ph = phi ptr [ %.430.i, %vector.memcheck ], [ %.430.i, %.lr.ph.i ], [ %i.tg, %middle.block ] ; 2 uses
  %i.ui = sub i32 %.sroa.speculated, %.029.i.ph
  %xtraiter177 = and i32 %i.ui, 7                 ; 2 uses
  %lcmp.mod178.not = icmp eq i32 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.029.i.prol = phi i32 [ %i.um, %scalar.ph.prol ], [ %.029.i.ph, %scalar.ph.preheader ]
  %.06328.i.prol = phi ptr [ %i.uk, %scalar.ph.prol ], [ %.06328.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.527.i.prol = phi ptr [ %i.ul, %scalar.ph.prol ], [ %.527.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.uj = load float, ptr %.06328.i.prol, align 4, !tbaa !39
  store float %i.uj, ptr %.527.i.prol, align 4, !tbaa !39
  %i.uk = getelementptr inbounds nuw i8, ptr %.06328.i.prol, i64 64 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %.527.i.prol, i64 4 ; 3 uses
  %i.um = add nuw nsw i32 %.029.i.prol, 1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter177
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !506

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa166.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.ul, %scalar.ph.prol ]
  %.029.i.unr = phi i32 [ %.029.i.ph, %scalar.ph.preheader ], [ %i.um, %scalar.ph.prol ]
  %.06328.i.unr = phi ptr [ %.06328.i.ph, %scalar.ph.preheader ], [ %i.uk, %scalar.ph.prol ]
  %.527.i.unr = phi ptr [ %.527.i.ph, %scalar.ph.preheader ], [ %i.ul, %scalar.ph.prol ]
  %i.un = sub i32 %.029.i.ph, %.sroa.speculated
end_hunk_3
begin_hunk_4_@_ZN4ncnnL37conv3x3s1_winograd23_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a
  %i.vk = load float, ptr %i.vi, align 4, !tbaa !39
  store float %i.vk, ptr %i.vj, align 4, !tbaa !39
  %i.vl = getelementptr inbounds nuw i8, ptr %.06328.i, i64 512
  %i.vm = getelementptr inbounds nuw i8, ptr %.527.i, i64 32 ; 2 uses
  %i.vn = add nuw nsw i32 %.029.i, 8              ; 2 uses
  %exitcond49.not.i.7 = icmp eq i32 %i.vn, %.sroa.speculated
  br i1 %exitcond49.not.i.7, label %._crit_edge.i53, label %scalar.ph, !llvm.loop !507

._crit_edge.i53:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa119 = phi ptr [ %i.tg, %middle.block ], [ %.lcssa166.unr, %scalar.ph.prol.loopexit ], [ %i.vm, %scalar.ph ]
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next51.i, %i.ba
  br i1 %exitcond53.not.i, label %._crit_edge33.split.i, label %.lr.ph.i, !llvm.loop !456

._crit_edge33.split.i:                            ; preds = %._crit_edge.i53, %.lr.ph32.i, %.preheader.i
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next55.i, 16
  br i1 %exitcond58.not.i, label %_ZN4ncnn3MatD2Ev.exit34, label %bb.e, !llvm.loop !457

_ZN4ncnn3MatD2Ev.exit34:                          ; preds = %._crit_edge33.split.i
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.bd ; 2 uses
  %i.vo = icmp slt i64 %indvars.iv.next, %i.be
  %indvar.next = add i32 %indvar, 1
  %indvar.next137 = add i64 %indvar136, 1
  br i1 %i.vo, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !508

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.h:                                             ; preds = %bb.c
  %i.vp = landingpad { ptr, i32 }
          catch ptr null
  %i.vq = extractvalue { ptr, i32 } %i.vp, 0
  call void @__clang_call_terminate(ptr %i.vq) #27
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL44convolution_im2col_gemm_get_optimal_tile_mnkEiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, i32 noundef %6) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %i.b = ashr i32 %i.a, 2                         ; 2 uses
  %i.c = icmp eq i32 %6, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0120 = phi i32 [ %i.d, %bb.b ], [ %6, %bb.a ] ; 3 uses
  %i.e = add nsw i32 %i.b, -16
  %i.f = sdiv i32 %i.e, 32
  %i.g = shl nsw i32 %i.f, 2
  %.sroa.speculated110 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 4) ; 3 uses
  %i.h = add i32 %2, -1                           ; 2 uses
  %i.i = add i32 %i.h, %.sroa.speculated110
  %i.j = sdiv i32 %i.i, %.sroa.speculated110      ; 2 uses
  %i.k = add i32 %i.h, %i.j
  %i.l = sdiv i32 %i.k, %i.j
  %i.m = add nsw i32 %i.l, 3
  %i.n = sdiv i32 %i.m, 4
  %i.o = shl nsw i32 %i.n, 2
  %.sroa.speculated105 = tail call i32 @llvm.smin.i32(i32 %i.o, i32 %.sroa.speculated110)
  store i32 %.sroa.speculated105, ptr %5, align 4, !tbaa !67
  %i.p = add nsw i32 %0, 15
  %i.q = sdiv i32 %i.p, 16                        ; 2 uses
  %i.r = add i32 %0, -1                           ; 3 uses
  %i.s = add i32 %i.r, %i.q
  %i.t = sdiv i32 %i.s, %i.q
  %i.u = add nsw i32 %i.t, 3
  %i.v = sdiv i32 %i.u, 4
  %i.w = shl nsw i32 %i.v, 2
  %.sroa.speculated98 = tail call i32 @llvm.smax.i32(i32 %i.w, i32 4)
  store i32 %.sroa.speculated98, ptr %3, align 4, !tbaa !67
  %i.x = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated93 = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %.0120)
  %i.y = load i32, ptr %3, align 4, !tbaa !67
  %i.z = mul nsw i32 %i.y, %.sroa.speculated93    ; 3 uses
  %i.aa = add i32 %i.r, %i.z
  %i.ab = sdiv i32 %i.aa, %i.z                    ; 2 uses
  %i.ac = add i32 %i.r, %i.ab
  %i.ad = sdiv i32 %i.ac, %i.ab
  %i.ae = add nsw i32 %i.ad, 3
  %i.af = sdiv i32 %i.ae, 4
  %i.ag = shl nsw i32 %i.af, 2
  %.sroa.speculated88 = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.z) ; 3 uses
  %i.ah = icmp sgt i32 %.0120, 1
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = sdiv i32 %.sroa.speculated88, %.0120
  %.sroa.speculated76 = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 1)
  %i.aj = add nuw nsw i32 %.sroa.speculated76, 3
  %i.ak = and i32 %i.aj, 2147483644
  %.sroa.speculated83 = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %.sroa.speculated88)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.al = phi i32 [ %.sroa.speculated83, %bb.d ], [ %.sroa.speculated88, %bb.c ] ; 3 uses
  store i32 %i.al, ptr %3, align 4, !tbaa !67
  %i.am = icmp sgt i32 %1, 0
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = load i32, ptr %5, align 4, !tbaa !67    ; 3 uses
  %.not = icmp slt i32 %i.an, %2
  %i.ao = mul nsw i32 %i.al, %i.an
  %i.ap = sub nsw i32 %i.b, %i.ao
  %i.aq = select i1 %.not, i32 %i.al, i32 0
  %.sink = add nsw i32 %i.an, %i.aq
  %i.ar = sdiv i32 %i.ap, %.sink
  %i.as = sdiv i32 %i.ar, 4
  %i.at = shl nsw i32 %i.as, 2
  %.sroa.speculated69 = tail call i32 @llvm.smax.i32(i32 %i.at, i32 4) ; 3 uses
  %i.au = add nsw i32 %1, -1                      ; 2 uses
  %i.av = add nuw i32 %i.au, %.sroa.speculated69
  %i.aw = udiv i32 %i.av, %.sroa.speculated69     ; 2 uses
  %i.ax = add nuw i32 %i.au, %i.aw
  %i.ay = udiv i32 %i.ax, %i.aw
  %i.az = add nuw nsw i32 %i.ay, 3
  %i.ba = and i32 %i.az, -4
  %.sroa.speculated64 = tail call i32 @llvm.umin.i32(i32 %i.ba, i32 %.sroa.speculated69)
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated64, i32 4)
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL40convolution_im2col_gemm_transform_kernelERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not77 = icmp sgt i32 %i.k, %i.j
  br i1 %.not77, label %._crit_edge80, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = load i32, ptr %5, align 4, !tbaa !67     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.split, label %._crit_edge80

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.r = phi i32 [ %i.ak, %._crit_edge ], [ %i.p, %.lr.ph ] ; 3 uses
  %.02878 = phi i32 [ %i.al, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.s = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.t = mul i32 %i.s, %.02878                    ; 3 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !67
  %i.v = sub nsw i32 %i.u, %i.t
  %.sroa.speculated57 = call i32 @llvm.smin.i32(i32 %i.s, i32 %i.v) ; 7 uses
  %i.w = icmp sgt i32 %i.r, 0
  br i1 %i.w, label %_ZN4ncnn3MatD2Ev.exit29.lr.ph, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit29.lr.ph:                    ; preds = %.lr.ph.split
  %i.x = icmp sgt i32 %.sroa.speculated57, 3
  %i.y = and i32 %.sroa.speculated57, 2147483644
  %i.z = sext i32 %i.t to i64                     ; 11 uses
  %i.aa = zext nneg i32 %.sroa.speculated57 to i64 ; 2 uses
  %9 = add i32 %.sroa.speculated57, -2
  %i.ab = sext i32 %.sroa.speculated57 to i64     ; 2 uses
  %invariant.op.i = add nsw i64 %i.ab, -1         ; 2 uses
  %.pre = load i32, ptr %6, align 4, !tbaa !67
  %i.ac = add nsw i64 %i.z, 1
  %i.ad = shl nsw i64 %i.z, 2
  %i.ae = add nsw i64 %i.ad, 12
  %i.af = shl nsw i64 %i.z, 2
  %i.ag = add nsw i64 %i.af, 8
  %i.ah = shl nsw i64 %i.z, 2
  %i.ai = add nsw i64 %i.ah, 4
  %i.aj = shl nsw i64 %i.z, 2
  br label %_ZN4ncnn3MatD2Ev.exit29

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %.lr.ph.split
  %i.ak = phi i32 [ %i.r, %.lr.ph.split ], [ %i.pp, %_ZN4ncnn3MatD2Ev.exit ]
  %i.al = add i32 %.02878, 1
  %exitcond.not = icmp eq i32 %.02878, %i.j
  br i1 %exitcond.not, label %._crit_edge80, label %.lr.ph.split, !llvm.loop !509

_ZN4ncnn3MatD2Ev.exit29:                          ; preds = %_ZN4ncnn3MatD2Ev.exit29.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %i.am = phi i32 [ %.pre, %_ZN4ncnn3MatD2Ev.exit29.lr.ph ], [ %i.pn, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.an = phi i32 [ %i.r, %_ZN4ncnn3MatD2Ev.exit29.lr.ph ], [ %i.pp, %_ZN4ncnn3MatD2Ev.exit ]
  %.076 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit29.lr.ph ], [ %i.po, %_ZN4ncnn3MatD2Ev.exit ] ; 6 uses
  %i.ao = sub i32 %i.an, %.076
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.am, i32 %i.ao) ; 28 uses
  %i.ap = load i32, ptr %3, align 4, !tbaa !67
  %i.aq = sdiv i32 %i.t, %i.ap
  %i.ar = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !511
  %i.as = load ptr, ptr %7, align 8, !tbaa !18, !noalias !511
  %i.at = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !511
  %i.au = sext i32 %i.aq to i64
  %i.av = mul i64 %i.at, %i.au
  %i.aw = load i64, ptr %i.n, align 8, !tbaa !65, !noalias !511 ; 2 uses
  %i.ax = mul i64 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ax
  %i.az = sext i32 %i.ar to i64
  %i.ba = sdiv i32 %.076, %i.am
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul i64 %i.aw, %i.az
  %i.bd = mul i64 %i.bc, %i.bb
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bd ; 4 uses
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !75  ; 5 uses
  br i1 %i.x, label %.lr.ph27.i, label %.preheader3.i

.lr.ph27.i:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit29
  %i.bg = sext i32 %.076 to i64                   ; 6 uses
  %i.bh = icmp sgt i32 %.sroa.speculated, 3
  br i1 %i.bh, label %.lr.ph.us.preheader.i, label %.lr.ph27.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph27.i
  %i.bi = and i32 %.sroa.speculated, 2147483644   ; 8 uses
  %i.bj = sext i32 %i.bf to i64                   ; 9 uses
  %.not60 = icmp eq i32 %i.bi, %.sroa.speculated
  %i.bk = or disjoint i32 %i.bi, 1
  %smax174 = call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 %i.bk)
  %i.bl = xor i32 %i.bi, -1
  %i.bm = add nsw i32 %smax174, %i.bl
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 4
  %i.bp = mul i64 %i.ae, %i.bj
  %i.bq = shl nsw i64 %i.bg, 2                    ; 4 uses
  %i.br = shl nuw nsw i64 %i.bn, 2                ; 4 uses
  %i.bs = shl nsw i64 %i.bj, 4
  %i.bt = mul i64 %i.ag, %i.bj
  %i.bu = mul i64 %i.ai, %i.bj
  %i.bv = mul i64 %i.aj, %i.bj
  %i.bw = or disjoint i32 %i.bi, 1
  %i.bx = call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 %i.bw)
  %i.by = xor i32 %i.bi, -1
  %i.bz = add nsw i32 %i.bx, %i.by                ; 2 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check201 = icmp ult i32 %i.bz, 47
  %n.vec203 = and i64 %i.cb, 8589934588           ; 5 uses
  %i.cc = shl nuw nsw i64 %n.vec203, 4
  %i.cd = shl nuw nsw i64 %n.vec203, 2            ; 4 uses
  %i.ce = trunc i64 %n.vec203 to i32
  %i.cf = add i32 %i.bi, %i.ce
  %cmp.n218 = icmp eq i64 %i.cb, %n.vec203
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvar177 = phi i64 [ %indvar.next178, %._crit_edge.us.i ], [ 0, %.lr.ph.us.preheader.i ] ; 2 uses
  %indvars.iv138.i = phi i64 [ %indvars.iv.next139.i, %._crit_edge.us.i ], [ 0, %.lr.ph.us.preheader.i ] ; 2 uses
  %.013925.us.i = phi ptr [ %.2.lcssa.us.i, %._crit_edge.us.i ], [ %i.be, %.lr.ph.us.preheader.i ] ; 3 uses
  %.013925.us.i175 = ptrtoaddr ptr %.013925.us.i to i64
  %i.cg = mul i64 %i.bs, %indvar177               ; 4 uses
  %i.ch = load ptr, ptr %8, align 8, !tbaa !18    ; 8 uses
  %i.ci = add nsw i64 %indvars.iv138.i, %i.z      ; 4 uses
  %i.cj = mul nsw i64 %i.ci, %i.bj
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.cj
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.bg
  %i.cm = add nsw i64 %i.ci, 1
  %i.cn = mul nsw i64 %i.cm, %i.bj
  %i.co = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.cn
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.bg
  %i.cq = add nsw i64 %i.ci, 2
  %i.cr = mul nsw i64 %i.cq, %i.bj
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.cr
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.bg
  %i.cu = add nsw i64 %i.ci, 3
  %i.cv = mul nsw i64 %i.cu, %i.bj
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.cv
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.bg
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.us.i
  %indvar179 = phi i64 [ %indvar.next180, %bb.c ], [ 0, %.lr.ph.us.i ] ; 2 uses
  %.114010.us.i = phi ptr [ %i.dn, %bb.c ], [ %.013925.us.i, %.lr.ph.us.i ] ; 5 uses
  %.01449.us.i = phi ptr [ %i.do, %bb.c ], [ %i.cl, %.lr.ph.us.i ] ; 2 uses
  %.01528.us.i = phi ptr [ %i.dp, %bb.c ], [ %i.cp, %.lr.ph.us.i ] ; 2 uses
  %.01547.us.i = phi ptr [ %i.dq, %bb.c ], [ %i.ct, %.lr.ph.us.i ] ; 2 uses
  %.01566.us.i = phi ptr [ %i.dr, %bb.c ], [ %i.cx, %.lr.ph.us.i ] ; 2 uses
  %.01585.us.i = phi i32 [ %i.ds, %bb.c ], [ 0, %.lr.ph.us.i ]
  %i.cy = load <4 x float>, ptr %.01449.us.i, align 1, !tbaa !254 ; 2 uses
  %i.cz = load <4 x float>, ptr %.01528.us.i, align 1, !tbaa !254 ; 2 uses
  %i.da = load <4 x float>, ptr %.01547.us.i, align 1, !tbaa !254 ; 2 uses
  %i.db = load <4 x float>, ptr %.01566.us.i, align 1, !tbaa !254 ; 2 uses
  %i.dc = shufflevector <4 x float> %i.cy, <4 x float> %i.cz, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dd = shufflevector <4 x float> %i.da, <4 x float> %i.db, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.de = shufflevector <4 x float> %i.cy, <4 x float> %i.cz, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.df = shufflevector <4 x float> %i.da, <4 x float> %i.db, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dg = shufflevector <4 x float> %i.dc, <4 x float> %i.dd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dh = shufflevector <4 x float> %i.dd, <4 x float> %i.dc, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.di = shufflevector <4 x float> %i.de, <4 x float> %i.df, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dj = shufflevector <4 x float> %i.df, <4 x float> %i.de, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.dg, ptr %.114010.us.i, align 16, !tbaa !254
  %i.dk = getelementptr inbounds nuw i8, ptr %.114010.us.i, i64 16
  store <4 x float> %i.dh, ptr %i.dk, align 16, !tbaa !254
  %i.dl = getelementptr inbounds nuw i8, ptr %.114010.us.i, i64 32
  store <4 x float> %i.di, ptr %i.dl, align 16, !tbaa !254
  %i.dm = getelementptr inbounds nuw i8, ptr %.114010.us.i, i64 48
  store <4 x float> %i.dj, ptr %i.dm, align 16, !tbaa !254
  %i.dn = getelementptr i8, ptr %.114010.us.i, i64 64 ; 11 uses
  %i.do = getelementptr i8, ptr %.01449.us.i, i64 16 ; 6 uses
  %i.dp = getelementptr i8, ptr %.01528.us.i, i64 16 ; 6 uses
  %i.dq = getelementptr i8, ptr %.01547.us.i, i64 16 ; 6 uses
  %i.dr = getelementptr i8, ptr %.01566.us.i, i64 16 ; 6 uses
  %i.ds = add nuw nsw i32 %.01585.us.i, 4         ; 2 uses
  %i.dt = or disjoint i32 %i.ds, 3
  %i.du = icmp slt i32 %i.dt, %.sroa.speculated
  %indvar.next180 = add i64 %indvar179, 1
  br i1 %i.du, label %bb.c, label %..preheader4_crit_edge.us.i, !llvm.loop !514

.lr.ph22.us.i:                                    ; preds = %.lr.ph22.us.i.preheader229, %.lr.ph22.us.i
  %.221.us.i = phi ptr [ %i.ec, %.lr.ph22.us.i ], [ %.221.us.i.ph, %.lr.ph22.us.i.preheader229 ] ; 5 uses
  %.114520.us.i = phi ptr [ %i.ed, %.lr.ph22.us.i ], [ %.114520.us.i.ph, %.lr.ph22.us.i.preheader229 ] ; 2 uses
  %.115319.us.i = phi ptr [ %i.ee, %.lr.ph22.us.i ], [ %.115319.us.i.ph, %.lr.ph22.us.i.preheader229 ] ; 2 uses
  %.115518.us.i = phi ptr [ %i.ef, %.lr.ph22.us.i ], [ %.115518.us.i.ph, %.lr.ph22.us.i.preheader229 ] ; 2 uses
  %.115717.us.i = phi ptr [ %i.eg, %.lr.ph22.us.i ], [ %.115717.us.i.ph, %.lr.ph22.us.i.preheader229 ] ; 2 uses
  %.115916.us.i = phi i32 [ %i.eh, %.lr.ph22.us.i ], [ %.115916.us.i.ph, %.lr.ph22.us.i.preheader229 ]
  %i.dv = load float, ptr %.114520.us.i, align 4, !tbaa !39
  store float %i.dv, ptr %.221.us.i, align 4, !tbaa !39
  %i.dw = load float, ptr %.115319.us.i, align 4, !tbaa !39
  %i.dx = getelementptr inbounds nuw i8, ptr %.221.us.i, i64 4
  store float %i.dw, ptr %i.dx, align 4, !tbaa !39
  %i.dy = load float, ptr %.115518.us.i, align 4, !tbaa !39
  %i.dz = getelementptr inbounds nuw i8, ptr %.221.us.i, i64 8
  store float %i.dy, ptr %i.dz, align 4, !tbaa !39
  %i.ea = load float, ptr %.115717.us.i, align 4, !tbaa !39
  %i.eb = getelementptr inbounds nuw i8, ptr %.221.us.i, i64 12
  store float %i.ea, ptr %i.eb, align 4, !tbaa !39
  %i.ec = getelementptr inbounds nuw i8, ptr %.221.us.i, i64 16 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.114520.us.i, i64 4
  %i.ee = getelementptr inbounds nuw i8, ptr %.115319.us.i, i64 4
  %i.ef = getelementptr inbounds nuw i8, ptr %.115518.us.i, i64 4
  %i.eg = getelementptr inbounds nuw i8, ptr %.115717.us.i, i64 4
  %i.eh = add nuw nsw i32 %.115916.us.i, 1        ; 2 uses
  %i.ei = icmp slt i32 %i.eh, %.sroa.speculated
  br i1 %i.ei, label %.lr.ph22.us.i, label %._crit_edge.us.i, !llvm.loop !515

._crit_edge.us.i:                                 ; preds = %.lr.ph22.us.i, %middle.block217, %..preheader4_crit_edge.us.i
  %.2.lcssa.us.i = phi ptr [ %i.dn, %..preheader4_crit_edge.us.i ], [ %i.fj, %middle.block217 ], [ %i.ec, %.lr.ph22.us.i ] ; 2 uses
  %indvars.iv.next139.i = add nuw nsw i64 %indvars.iv138.i, 4 ; 3 uses
  %i.ej = or disjoint i64 %indvars.iv.next139.i, 3
  %i.ek = icmp samesign ult i64 %i.ej, %i.aa
  %indvar.next178 = add i64 %indvar177, 1
  br i1 %i.ek, label %.lr.ph.us.i, label %.preheader3.loopexit.i, !llvm.loop !516

..preheader4_crit_edge.us.i:                      ; preds = %bb.c
  br i1 %.not60, label %._crit_edge.us.i, label %.lr.ph22.us.i.preheader

.lr.ph22.us.i.preheader:                          ; preds = %..preheader4_crit_edge.us.i
  br i1 %min.iters.check201, label %.lr.ph22.us.i.preheader229, label %vector.memcheck173

vector.memcheck173:                               ; preds = %.lr.ph22.us.i.preheader
  %i.el = ptrtoaddr ptr %i.dn to i64
  %reass.sub225.a = sub i64 %i.el, %.013925.us.i175
  %i.em = getelementptr i8, ptr %.013925.us.i, i64 %i.bo
  %i.en = getelementptr i8, ptr %i.em, i64 %reass.sub225.a
  %scevgep176 = getelementptr i8, ptr %i.en, i64 16 ; 4 uses
  %i.eo = shl nuw nsw i64 %indvar179, 4           ; 4 uses
  %i.ep = getelementptr i8, ptr %i.ch, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 %i.bp
  %i.er = getelementptr i8, ptr %i.eq, i64 20
  %i.es = getelementptr i8, ptr %i.er, i64 %i.bq
  %i.et = getelementptr i8, ptr %i.es, i64 %i.br
  %scevgep181 = getelementptr i8, ptr %i.et, i64 %i.cg
  %i.eu = getelementptr i8, ptr %i.ch, i64 %i.eo
  %i.ev = getelementptr i8, ptr %i.eu, i64 %i.bt
  %i.ew = getelementptr i8, ptr %i.ev, i64 20
  %i.ex = getelementptr i8, ptr %i.ew, i64 %i.bq
  %i.ey = getelementptr i8, ptr %i.ex, i64 %i.br
  %scevgep182 = getelementptr i8, ptr %i.ey, i64 %i.cg
  %i.ez = getelementptr i8, ptr %i.ch, i64 %i.eo
  %i.fa = getelementptr i8, ptr %i.ez, i64 %i.bu
  %i.fb = getelementptr i8, ptr %i.fa, i64 20
  %i.fc = getelementptr i8, ptr %i.fb, i64 %i.bq
  %i.fd = getelementptr i8, ptr %i.fc, i64 %i.br
  %scevgep183 = getelementptr i8, ptr %i.fd, i64 %i.cg
  %i.fe = getelementptr i8, ptr %i.ch, i64 %i.eo
  %i.ff = getelementptr i8, ptr %i.fe, i64 %i.bv
  %i.fg = getelementptr i8, ptr %i.ff, i64 20
  %i.fh = getelementptr i8, ptr %i.fg, i64 %i.bq
  %i.fi = getelementptr i8, ptr %i.fh, i64 %i.br
  %scevgep184 = getelementptr i8, ptr %i.fi, i64 %i.cg
  %bound0185 = icmp ult ptr %i.dn, %scevgep181
  %bound1186 = icmp ult ptr %i.dr, %scevgep176
  %found.conflict187 = and i1 %bound0185, %bound1186
  %bound0188 = icmp ult ptr %i.dn, %scevgep182
  %bound1189 = icmp ult ptr %i.dq, %scevgep176
  %found.conflict190 = and i1 %bound0188, %bound1189
  %conflict.rdx191 = or i1 %found.conflict187, %found.conflict190
  %bound0192 = icmp ult ptr %i.dn, %scevgep183
  %bound1193 = icmp ult ptr %i.dp, %scevgep176
  %found.conflict194 = and i1 %bound0192, %bound1193
  %conflict.rdx195 = or i1 %conflict.rdx191, %found.conflict194
  %bound0196 = icmp ult ptr %i.dn, %scevgep184
  %bound1197 = icmp ult ptr %i.do, %scevgep176
  %found.conflict198 = and i1 %bound0196, %bound1197
  %conflict.rdx199 = or i1 %conflict.rdx195, %found.conflict198
  br i1 %conflict.rdx199, label %.lr.ph22.us.i.preheader229, label %vector.ph202

vector.ph202:                                     ; preds = %vector.memcheck173
  %i.fj = getelementptr i8, ptr %i.dn, i64 %i.cc  ; 2 uses
  %i.fk = getelementptr i8, ptr %i.do, i64 %i.cd
  %i.fl = getelementptr i8, ptr %i.dp, i64 %i.cd
  %i.fm = getelementptr i8, ptr %i.dq, i64 %i.cd
  %i.fn = getelementptr i8, ptr %i.dr, i64 %i.cd
  br label %vector.body204

vector.body204:                                   ; preds = %vector.body204, %vector.ph202
  %index205 = phi i64 [ 0, %vector.ph202 ], [ %index.next216, %vector.body204 ] ; 3 uses
  %i.fo = shl i64 %index205, 4
  %next.gep206 = getelementptr i8, ptr %i.dn, i64 %i.fo
  %i.fp = shl i64 %index205, 2                    ; 4 uses
  %next.gep207 = getelementptr i8, ptr %i.do, i64 %i.fp
  %next.gep208 = getelementptr i8, ptr %i.dp, i64 %i.fp
  %next.gep209 = getelementptr i8, ptr %i.dq, i64 %i.fp
  %next.gep210 = getelementptr i8, ptr %i.dr, i64 %i.fp
  %wide.load211 = load <4 x float>, ptr %next.gep207, align 4, !tbaa !39, !alias.scope !517
  %wide.load212 = load <4 x float>, ptr %next.gep208, align 4, !tbaa !39, !alias.scope !520
  %wide.load213 = load <4 x float>, ptr %next.gep209, align 4, !tbaa !39, !alias.scope !522
  %wide.load214 = load <4 x float>, ptr %next.gep210, align 4, !tbaa !39, !alias.scope !524
  %i.fq = shufflevector <4 x float> %wide.load211, <4 x float> %wide.load212, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fr = shufflevector <4 x float> %wide.load213, <4 x float> %wide.load214, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec215 = shufflevector <8 x float> %i.fq, <8 x float> %i.fr, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec215, ptr %next.gep206, align 4, !tbaa !39, !alias.scope !526, !noalias !528
  %index.next216 = add nuw i64 %index205, 4       ; 2 uses
  %i.fs = icmp eq i64 %index.next216, %n.vec203
  br i1 %i.fs, label %middle.block217, label %vector.body204, !llvm.loop !529

middle.block217:                                  ; preds = %vector.body204
  br i1 %cmp.n218, label %._crit_edge.us.i, label %.lr.ph22.us.i.preheader229

.lr.ph22.us.i.preheader229:                       ; preds = %vector.memcheck173, %.lr.ph22.us.i.preheader, %middle.block217
  %.221.us.i.ph = phi ptr [ %i.dn, %vector.memcheck173 ], [ %i.dn, %.lr.ph22.us.i.preheader ], [ %i.fj, %middle.block217 ]
  %.114520.us.i.ph = phi ptr [ %i.do, %vector.memcheck173 ], [ %i.do, %.lr.ph22.us.i.preheader ], [ %i.fk, %middle.block217 ]
  %.115319.us.i.ph = phi ptr [ %i.dp, %vector.memcheck173 ], [ %i.dp, %.lr.ph22.us.i.preheader ], [ %i.fl, %middle.block217 ]
  %.115518.us.i.ph = phi ptr [ %i.dq, %vector.memcheck173 ], [ %i.dq, %.lr.ph22.us.i.preheader ], [ %i.fm, %middle.block217 ]
  %.115717.us.i.ph = phi ptr [ %i.dr, %vector.memcheck173 ], [ %i.dr, %.lr.ph22.us.i.preheader ], [ %i.fn, %middle.block217 ]
  %.115916.us.i.ph = phi i32 [ %i.bi, %vector.memcheck173 ], [ %i.bi, %.lr.ph22.us.i.preheader ], [ %i.cf, %middle.block217 ]
  br label %.lr.ph22.us.i

.lr.ph27.split.i:                                 ; preds = %.lr.ph27.i
  %i.ft = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.ft, label %.lr.ph27.split.split.us.i, label %.preheader3.i

.lr.ph27.split.split.us.i:                        ; preds = %.lr.ph27.split.i
  %i.fu = load ptr, ptr %8, align 8, !tbaa !18
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.fu, i64 %i.bg ; 4 uses
  %i.fv = sext i32 %i.bf to i64                   ; 4 uses
  %exitcond.not.i = icmp eq i32 %.sroa.speculated, 1
  %exitcond.not.i.1 = icmp eq i32 %.sroa.speculated, 2
  br label %.preheader4.us31.i

.preheader4.us31.i:                               ; preds = %._crit_edge.us42.i, %.lr.ph27.split.split.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.us42.i ], [ 0, %.lr.ph27.split.split.us.i ] ; 2 uses
  %.013925.us32.i = phi ptr [ %.lcssa, %._crit_edge.us42.i ], [ %i.be, %.lr.ph27.split.split.us.i ] ; 13 uses
  %i.fw = add nsw i64 %indvars.iv.i, %i.z         ; 4 uses
  %i.fx = add nsw i64 %i.fw, 3
  %i.fy = mul nsw i64 %i.fx, %i.fv
  %gep53.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.fy ; 3 uses
  %i.fz = add nsw i64 %i.fw, 2
  %i.ga = mul nsw i64 %i.fz, %i.fv
  %gep51.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ga ; 3 uses
  %i.gb = add nsw i64 %i.fw, 1
  %i.gc = mul nsw i64 %i.gb, %i.fv
  %gep49.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.gc ; 3 uses
  %i.gd = mul nsw i64 %i.fw, %i.fv
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.gd ; 3 uses
  %i.ge = load float, ptr %gep.i, align 4, !tbaa !39
  store float %i.ge, ptr %.013925.us32.i, align 4, !tbaa !39
  %i.gf = load float, ptr %gep49.i, align 4, !tbaa !39
  %i.gg = getelementptr inbounds nuw i8, ptr %.013925.us32.i, i64 4
  store float %i.gf, ptr %i.gg, align 4, !tbaa !39
  %i.gh = load float, ptr %gep51.i, align 4, !tbaa !39
  %i.gi = getelementptr inbounds nuw i8, ptr %.013925.us32.i, i64 8
  store float %i.gh, ptr %i.gi, align 4, !tbaa !39
  %i.gj = load float, ptr %gep53.i, align 4, !tbaa !39
  %i.gk = getelementptr inbounds nuw i8, ptr %.013925.us32.i, i64 12
  store float %i.gj, ptr %i.gk, align 4, !tbaa !39
  %i.gl = getelementptr inbounds nuw i8, ptr %.013925.us32.i, i64 16 ; 2 uses
  br i1 %exitcond.not.i, label %._crit_edge.us42.i, label %bb.d

bb.d:                                             ; preds = %.preheader4.us31.i
  %i.gm = getelementptr inbounds nuw i8, ptr %gep53.i, i64 4
  %i.gn = getelementptr inbounds nuw i8, ptr %gep51.i, i64 4
  %i.go = getelementptr inbounds nuw i8, ptr %gep49.i, i64 4
  %i.gp = getelementptr inbounds nuw i8, ptr %gep.i, i64 4
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !39
  store float %i.gq, ptr %i.gl, align 4, !tbaa !39
  %i.gr = load float, ptr %i.go, align 4, !tbaa !39
  %i.gs = getelementptr inbounds nuw i8, ptr %.013925.us32.i, i64 20
  store float %i.gr, ptr %i.gs, align 4, !tbaa !39
  %i.gt = load float, ptr %i.gn, align 4, !tbaa !39
  %i.gu = getelementptr inbounds nuw i8, ptr %.013925.us32.i, i64 24
  store float %i.gt, ptr %i.gu, align 4, !tbaa !39
  %i.gv = load float, ptr %i.gm, align 4, !tbaa !39
  %i.gw = getelementptr inbounds nuw i8, ptr %.013925.us32.i, i64 28
  store float %i.gv, ptr %i.gw, align 4, !tbaa !39
  %i.gx = getelementptr inbounds nuw i8, ptr %.013925.us32.i, i64 32 ; 2 uses
  br i1 %exitcond.not.i.1, label %._crit_edge.us42.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gy = getelementptr inbounds nuw i8, ptr %gep53.i, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %gep51.i, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %gep49.i, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !39
  store float %i.hc, ptr %i.gx, align 4, !tbaa !39
  %i.hd = load float, ptr %i.ha, align 4, !tbaa !39
  %i.he = getelementptr inbounds nuw i8, ptr %.013925.us32.i, i64 36
  store float %i.hd, ptr %i.he, align 4, !tbaa !39
  %i.hf = load float, ptr %i.gz, align 4, !tbaa !39
  %i.hg = getelementptr inbounds nuw i8, ptr %.013925.us32.i, i64 40
  store float %i.hf, ptr %i.hg, align 4, !tbaa !39
  %i.hh = load float, ptr %i.gy, align 4, !tbaa !39
  %i.hi = getelementptr inbounds nuw i8, ptr %.013925.us32.i, i64 44
  store float %i.hh, ptr %i.hi, align 4, !tbaa !39
  %i.hj = getelementptr inbounds nuw i8, ptr %.013925.us32.i, i64 48
  br label %._crit_edge.us42.i

._crit_edge.us42.i:                               ; preds = %bb.e, %bb.d, %.preheader4.us31.i
  %.lcssa = phi ptr [ %i.gl, %.preheader4.us31.i ], [ %i.gx, %bb.d ], [ %i.hj, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 3 uses
  %i.hk = or disjoint i64 %indvars.iv.next.i, 3
  %i.hl = icmp samesign ult i64 %i.hk, %i.aa
  br i1 %i.hl, label %.preheader4.us31.i, label %.preheader3.loopexit112.i, !llvm.loop !516

.preheader3.loopexit.i:                           ; preds = %._crit_edge.us.i
  %i.hm = trunc nuw nsw i64 %indvars.iv.next139.i to i32
  br label %.preheader3.i

.preheader3.loopexit112.i:                        ; preds = %._crit_edge.us42.i
  %i.hn = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader3.i

.preheader3.i:                                    ; preds = %.lr.ph27.split.i, %.preheader3.loopexit112.i, %.preheader3.loopexit.i, %_ZN4ncnn3MatD2Ev.exit29
  %.0141.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit29 ], [ %i.hn, %.preheader3.loopexit112.i ], [ %i.hm, %.preheader3.loopexit.i ], [ %i.y, %.lr.ph27.split.i ] ; 6 uses
  %.0139.lcssa.i = phi ptr [ %i.be, %_ZN4ncnn3MatD2Ev.exit29 ], [ %.lcssa, %.preheader3.loopexit112.i ], [ %.2.lcssa.us.i, %.preheader3.loopexit.i ], [ %i.be, %.lr.ph27.split.i ] ; 4 uses
  %i.ho = or disjoint i32 %.0141.lcssa.i, 1
  %i.hp = icmp slt i32 %i.ho, %.sroa.speculated57
  br i1 %i.hp, label %.lr.ph69.i, label %.preheader1.i

.lr.ph69.i:                                       ; preds = %.preheader3.i
  %i.hq = sext i32 %.076 to i64                   ; 4 uses
  %i.hr = icmp sgt i32 %.sroa.speculated, 3
  br i1 %i.hr, label %.lr.ph.us72.preheader.i, label %.lr.ph69.split.i

.lr.ph.us72.preheader.i:                          ; preds = %.lr.ph69.i
  %i.hs = and i32 %.sroa.speculated, 2147483644   ; 8 uses
  %i.ht = sext i32 %.0141.lcssa.i to i64          ; 3 uses
  %i.hu = sext i32 %i.bf to i64                   ; 5 uses
  %.not61 = icmp eq i32 %i.hs, %.sroa.speculated
  %i.hv = or disjoint i32 %i.hs, 1
  %smax = call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 %i.hv)
  %i.hw = xor i32 %i.hs, -1
  %i.hx = add nsw i32 %smax, %i.hw
  %i.hy = zext i32 %i.hx to i64                   ; 2 uses
  %i.hz = shl nuw nsw i64 %i.hy, 3
  %i.ia = add nsw i64 %i.ac, %i.ht
  %i.ib = shl nsw i64 %i.ia, 2
  %i.ic = mul i64 %i.ib, %i.hu
  %i.id = shl nsw i64 %i.hq, 2                    ; 2 uses
  %i.ie = shl nuw nsw i64 %i.hy, 2                ; 2 uses
  %i.if = shl nsw i64 %i.hu, 3
  %i.ig = add nsw i64 %i.z, %i.ht
  %i.ih = shl nsw i64 %i.ig, 2
  %i.ii = mul i64 %i.ih, %i.hu
  %i.ij = add nsw i32 %.sroa.speculated, -4       ; 2 uses
  %i.ik = lshr i32 %i.ij, 2                       ; 2 uses
  %i.il = add nuw nsw i32 %i.ik, 1                ; 2 uses
  %i.im = icmp eq i32 %i.ik, 0
  %unroll_iter = and i32 %i.il, 2147483646
  %i.in = and i32 %i.ij, 4
  %lcmp.mod.not.not = icmp eq i32 %i.in, 0
  %lcmp.mod249 = trunc i32 %i.il to i1
  %i.io = or disjoint i32 %i.hs, 1
  %i.ip = call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 %i.io)
  %i.iq = xor i32 %i.hs, -1
  %i.ir = add nsw i32 %i.ip, %i.iq                ; 2 uses
  %i.is = zext i32 %i.ir to i64
  %i.it = add nuw nsw i64 %i.is, 1                ; 2 uses
  %min.iters.check152 = icmp ult i32 %i.ir, 9
  %n.vec154 = and i64 %i.it, 8589934588           ; 5 uses
  %i.iu = shl nuw nsw i64 %n.vec154, 3
  %i.iv = trunc i64 %n.vec154 to i32
  %i.iw = add i32 %i.hs, %i.iv
  %i.ix = shl nuw nsw i64 %n.vec154, 2            ; 2 uses
  %cmp.n168 = icmp eq i64 %i.it, %n.vec154
  br label %.lr.ph.us72.i

.lr.ph.us72.i:                                    ; preds = %._crit_edge.us74.i, %.lr.ph.us72.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us74.i ], [ 0, %.lr.ph.us72.preheader.i ] ; 2 uses
  %indvars.iv145.i = phi i64 [ %indvars.iv.next146.i, %._crit_edge.us74.i ], [ %i.ht, %.lr.ph.us72.preheader.i ] ; 2 uses
  %.368.us.i = phi ptr [ %.5.lcssa.us.i, %._crit_edge.us74.i ], [ %.0139.lcssa.i, %.lr.ph.us72.preheader.i ] ; 4 uses
  %.368.us.i143 = ptrtoaddr ptr %.368.us.i to i64
  %i.iy = mul i64 %i.if, %indvar                  ; 2 uses
  %i.iz = load ptr, ptr %8, align 8, !tbaa !18    ; 4 uses
  %i.ja = add nsw i64 %indvars.iv145.i, %i.z      ; 2 uses
  %i.jb = mul nsw i64 %i.ja, %i.hu
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.iz, i64 %i.jb
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.jc, i64 %i.hq ; 2 uses
  %i.je = add nsw i64 %i.ja, 1
  %i.jf = mul nsw i64 %i.je, %i.hu
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.iz, i64 %i.jf
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %i.hq ; 2 uses
  br i1 %i.im, label %.epil.preheader, label %.lr.ph.us72.i.new

.lr.ph.us72.i.new:                                ; preds = %.lr.ph.us72.i, %.lr.ph.us72.i.new
  %indvar144 = phi i64 [ %indvar.next145.1, %.lr.ph.us72.i.new ], [ 0, %.lr.ph.us72.i ] ; 2 uses
  %.457.us.i = phi ptr [ %i.jv, %.lr.ph.us72.i.new ], [ %.368.us.i, %.lr.ph.us72.i ] ; 5 uses
  %.014855.us.i = phi ptr [ %i.jx, %.lr.ph.us72.i.new ], [ %i.jh, %.lr.ph.us72.i ] ; 3 uses
  %.015054.us.i = phi ptr [ %i.jw, %.lr.ph.us72.i.new ], [ %i.jd, %.lr.ph.us72.i ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph.us72.i.new ], [ 0, %.lr.ph.us72.i ]
  %i.ji = load <4 x float>, ptr %.015054.us.i, align 1, !tbaa !254 ; 2 uses
  %i.jj = load <4 x float>, ptr %.014855.us.i, align 1, !tbaa !254 ; 2 uses
  %i.jk = shufflevector <4 x float> %i.ji, <4 x float> %i.jj, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.jl = shufflevector <4 x float> %i.ji, <4 x float> %i.jj, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.jk, ptr %.457.us.i, align 16, !tbaa !254
  %i.jm = getelementptr inbounds nuw i8, ptr %.457.us.i, i64 16
  store <4 x float> %i.jl, ptr %i.jm, align 16, !tbaa !254
  %i.jn = getelementptr i8, ptr %.457.us.i, i64 32
  %i.jo = getelementptr i8, ptr %.015054.us.i, i64 16
  %i.jp = getelementptr i8, ptr %.014855.us.i, i64 16
  %i.jq = load <4 x float>, ptr %i.jo, align 1, !tbaa !254 ; 2 uses
  %i.jr = load <4 x float>, ptr %i.jp, align 1, !tbaa !254 ; 2 uses
  %i.js = shufflevector <4 x float> %i.jq, <4 x float> %i.jr, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.jt = shufflevector <4 x float> %i.jq, <4 x float> %i.jr, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.js, ptr %i.jn, align 16, !tbaa !254
  %i.ju = getelementptr i8, ptr %.457.us.i, i64 48
  store <4 x float> %i.jt, ptr %i.ju, align 16, !tbaa !254
  %i.jv = getelementptr i8, ptr %.457.us.i, i64 64 ; 3 uses
  %i.jw = getelementptr i8, ptr %.015054.us.i, i64 32 ; 3 uses
  %i.jx = getelementptr i8, ptr %.014855.us.i, i64 32 ; 3 uses
  %indvar.next145.1 = add nuw nsw i64 %indvar144, 2 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %..preheader2_crit_edge.us.i.unr-lcssa, label %.lr.ph.us72.i.new, !llvm.loop !530

.lr.ph65.us.i:                                    ; preds = %.lr.ph65.us.i.preheader228, %.lr.ph65.us.i
  %.564.us.i = phi ptr [ %i.kb, %.lr.ph65.us.i ], [ %.564.us.i.ph, %.lr.ph65.us.i.preheader228 ] ; 3 uses
  %.114763.us.i = phi i32 [ %i.ke, %.lr.ph65.us.i ], [ %.114763.us.i.ph, %.lr.ph65.us.i.preheader228 ]
  %.114962.us.i = phi ptr [ %i.kd, %.lr.ph65.us.i ], [ %.114962.us.i.ph, %.lr.ph65.us.i.preheader228 ] ; 2 uses
  %.115161.us.i = phi ptr [ %i.kc, %.lr.ph65.us.i ], [ %.115161.us.i.ph, %.lr.ph65.us.i.preheader228 ] ; 2 uses
  %i.jy = load float, ptr %.115161.us.i, align 4, !tbaa !39
  store float %i.jy, ptr %.564.us.i, align 4, !tbaa !39
  %i.jz = load float, ptr %.114962.us.i, align 4, !tbaa !39
  %i.ka = getelementptr inbounds nuw i8, ptr %.564.us.i, i64 4
  store float %i.jz, ptr %i.ka, align 4, !tbaa !39
  %i.kb = getelementptr inbounds nuw i8, ptr %.564.us.i, i64 8 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.115161.us.i, i64 4
  %i.kd = getelementptr inbounds nuw i8, ptr %.114962.us.i, i64 4
  %i.ke = add nuw nsw i32 %.114763.us.i, 1        ; 2 uses
  %i.kf = icmp slt i32 %i.ke, %.sroa.speculated
  br i1 %i.kf, label %.lr.ph65.us.i, label %._crit_edge.us74.i, !llvm.loop !531

._crit_edge.us74.i:                               ; preds = %.lr.ph65.us.i, %middle.block167, %..preheader2_crit_edge.us.i
  %.5.lcssa.us.i = phi ptr [ %.lcssa239, %..preheader2_crit_edge.us.i ], [ %i.ld, %middle.block167 ], [ %i.kb, %.lr.ph65.us.i ] ; 2 uses
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 2 ; 3 uses
  %i.kg = icmp slt i64 %indvars.iv.next146.i, %invariant.op.i
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kg, label %.lr.ph.us72.i, label %.preheader1.loopexit.i, !llvm.loop !532

..preheader2_crit_edge.us.i.unr-lcssa:            ; preds = %.lr.ph.us72.i.new
  %indvar.next145 = or disjoint i64 %indvar144, 1
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %..preheader2_crit_edge.us.i

.epil.preheader:                                  ; preds = %..preheader2_crit_edge.us.i.unr-lcssa, %.lr.ph.us72.i
  %indvar144.epil.init = phi i64 [ 0, %.lr.ph.us72.i ], [ %indvar.next145.1, %..preheader2_crit_edge.us.i.unr-lcssa ]
  %.457.us.i.epil.init = phi ptr [ %.368.us.i, %.lr.ph.us72.i ], [ %i.jv, %..preheader2_crit_edge.us.i.unr-lcssa ] ; 3 uses
  %.014855.us.i.epil.init = phi ptr [ %i.jh, %.lr.ph.us72.i ], [ %i.jx, %..preheader2_crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.015054.us.i.epil.init = phi ptr [ %i.jd, %.lr.ph.us72.i ], [ %i.jw, %..preheader2_crit_edge.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod249)
  %i.kh = load <4 x float>, ptr %.015054.us.i.epil.init, align 1, !tbaa !254 ; 2 uses
  %i.ki = load <4 x float>, ptr %.014855.us.i.epil.init, align 1, !tbaa !254 ; 2 uses
  %i.kj = shufflevector <4 x float> %i.kh, <4 x float> %i.ki, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.kk = shufflevector <4 x float> %i.kh, <4 x float> %i.ki, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.kj, ptr %.457.us.i.epil.init, align 16, !tbaa !254
  %i.kl = getelementptr inbounds nuw i8, ptr %.457.us.i.epil.init, i64 16
  store <4 x float> %i.kk, ptr %i.kl, align 16, !tbaa !254
  %i.km = getelementptr i8, ptr %.457.us.i.epil.init, i64 32
  %i.kn = getelementptr i8, ptr %.015054.us.i.epil.init, i64 16
  %i.ko = getelementptr i8, ptr %.014855.us.i.epil.init, i64 16
  br label %..preheader2_crit_edge.us.i

..preheader2_crit_edge.us.i:                      ; preds = %..preheader2_crit_edge.us.i.unr-lcssa, %.epil.preheader
  %indvar144.lcssa = phi i64 [ %indvar.next145, %..preheader2_crit_edge.us.i.unr-lcssa ], [ %indvar144.epil.init, %.epil.preheader ]
  %.lcssa239 = phi ptr [ %i.jv, %..preheader2_crit_edge.us.i.unr-lcssa ], [ %i.km, %.epil.preheader ] ; 9 uses
  %.lcssa238 = phi ptr [ %i.jw, %..preheader2_crit_edge.us.i.unr-lcssa ], [ %i.kn, %.epil.preheader ] ; 5 uses
  %.lcssa237 = phi ptr [ %i.jx, %..preheader2_crit_edge.us.i.unr-lcssa ], [ %i.ko, %.epil.preheader ] ; 5 uses
  br i1 %.not61, label %._crit_edge.us74.i, label %.lr.ph65.us.i.preheader

.lr.ph65.us.i.preheader:                          ; preds = %..preheader2_crit_edge.us.i
  br i1 %min.iters.check152, label %.lr.ph65.us.i.preheader228, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph65.us.i.preheader
  %i.kp = ptrtoaddr ptr %.lcssa239 to i64
  %reass.sub226 = sub i64 %i.kp, %.368.us.i143
  %i.kq = getelementptr i8, ptr %.368.us.i, i64 %i.hz
  %i.kr = getelementptr i8, ptr %i.kq, i64 %reass.sub226
  %scevgep = getelementptr i8, ptr %i.kr, i64 8   ; 2 uses
  %i.ks = shl nuw nsw i64 %indvar144.lcssa, 4     ; 2 uses
  %i.kt = getelementptr i8, ptr %i.iz, i64 %i.ks
  %i.ku = getelementptr i8, ptr %i.kt, i64 %i.ic
  %i.kv = getelementptr i8, ptr %i.ku, i64 20
  %i.kw = getelementptr i8, ptr %i.kv, i64 %i.id
  %i.kx = getelementptr i8, ptr %i.kw, i64 %i.ie
  %scevgep146 = getelementptr i8, ptr %i.kx, i64 %i.iy
  %i.ky = getelementptr i8, ptr %i.iz, i64 %i.ks
  %i.kz = getelementptr i8, ptr %i.ky, i64 %i.ii
  %i.la = getelementptr i8, ptr %i.kz, i64 20
  %i.lb = getelementptr i8, ptr %i.la, i64 %i.id
  %i.lc = getelementptr i8, ptr %i.lb, i64 %i.ie
  %scevgep147 = getelementptr i8, ptr %i.lc, i64 %i.iy
  %bound0 = icmp ult ptr %.lcssa239, %scevgep146
  %bound1 = icmp ult ptr %.lcssa237, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0148 = icmp ult ptr %.lcssa239, %scevgep147
  %bound1149 = icmp ult ptr %.lcssa238, %scevgep
  %found.conflict150 = and i1 %bound0148, %bound1149
  %conflict.rdx = or i1 %found.conflict, %found.conflict150
  br i1 %conflict.rdx, label %.lr.ph65.us.i.preheader228, label %vector.ph153

vector.ph153:                                     ; preds = %vector.memcheck142
  %i.ld = getelementptr i8, ptr %.lcssa239, i64 %i.iu ; 2 uses
  %i.le = getelementptr i8, ptr %.lcssa237, i64 %i.ix
  %i.lf = getelementptr i8, ptr %.lcssa238, i64 %i.ix
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph153
  %index156 = phi i64 [ 0, %vector.ph153 ], [ %index.next166, %vector.body155 ] ; 3 uses
  %i.lg = shl i64 %index156, 3                    ; 2 uses
  %next.gep157 = getelementptr i8, ptr %.lcssa239, i64 %i.lg
  %i.lh = getelementptr i8, ptr %.lcssa239, i64 %i.lg
  %next.gep158 = getelementptr i8, ptr %i.lh, i64 16
  %i.li = shl i64 %index156, 2                    ; 2 uses
  %next.gep159 = getelementptr i8, ptr %.lcssa237, i64 %i.li ; 2 uses
  %next.gep160 = getelementptr i8, ptr %.lcssa238, i64 %i.li ; 2 uses
  %i.lj = getelementptr i8, ptr %next.gep160, i64 8
  %wide.load161 = load <2 x float>, ptr %next.gep160, align 4, !tbaa !39, !alias.scope !533
  %wide.load162 = load <2 x float>, ptr %i.lj, align 4, !tbaa !39, !alias.scope !533
  %i.lk = getelementptr i8, ptr %next.gep159, i64 8
  %wide.load163 = load <2 x float>, ptr %next.gep159, align 4, !tbaa !39, !alias.scope !536
  %wide.load164 = load <2 x float>, ptr %i.lk, align 4, !tbaa !39, !alias.scope !536
  %interleaved.vec = shufflevector <2 x float> %wide.load161, <2 x float> %wide.load163, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec, ptr %next.gep157, align 4, !tbaa !39, !alias.scope !538, !noalias !540
  %interleaved.vec165 = shufflevector <2 x float> %wide.load162, <2 x float> %wide.load164, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec165, ptr %next.gep158, align 4, !tbaa !39, !alias.scope !538, !noalias !540
  %index.next166 = add nuw i64 %index156, 4       ; 2 uses
  %i.ll = icmp eq i64 %index.next166, %n.vec154
  br i1 %i.ll, label %middle.block167, label %vector.body155, !llvm.loop !541

middle.block167:                                  ; preds = %vector.body155
  br i1 %cmp.n168, label %._crit_edge.us74.i, label %.lr.ph65.us.i.preheader228

.lr.ph65.us.i.preheader228:                       ; preds = %vector.memcheck142, %.lr.ph65.us.i.preheader, %middle.block167
  %.564.us.i.ph = phi ptr [ %.lcssa239, %vector.memcheck142 ], [ %.lcssa239, %.lr.ph65.us.i.preheader ], [ %i.ld, %middle.block167 ]
  %.114763.us.i.ph = phi i32 [ %i.hs, %vector.memcheck142 ], [ %i.hs, %.lr.ph65.us.i.preheader ], [ %i.iw, %middle.block167 ]
  %.114962.us.i.ph = phi ptr [ %.lcssa237, %vector.memcheck142 ], [ %.lcssa237, %.lr.ph65.us.i.preheader ], [ %i.le, %middle.block167 ]
  %.115161.us.i.ph = phi ptr [ %.lcssa238, %vector.memcheck142 ], [ %.lcssa238, %.lr.ph65.us.i.preheader ], [ %i.lf, %middle.block167 ]
  br label %.lr.ph65.us.i

.lr.ph69.split.i:                                 ; preds = %.lr.ph69.i
  %i.lm = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.lm, label %.lr.ph69.split.split.us.i, label %.preheader2.preheader.i

.preheader2.preheader.i:                          ; preds = %.lr.ph69.split.i
  %10 = sub i32 %9, %.0141.lcssa.i
  %11 = and i32 %10, -2
  %12 = add i32 %.0141.lcssa.i, 2
  %i.ln = add i32 %12, %11
  br label %.preheader1.i

.lr.ph69.split.split.us.i:                        ; preds = %.lr.ph69.split.i
  %i.lo = load ptr, ptr %8, align 8, !tbaa !18
  %invariant.gep92.i = getelementptr [4 x i8], ptr %i.lo, i64 %i.hq ; 2 uses
  %i.lp = sext i32 %.0141.lcssa.i to i64
  %i.lq = sext i32 %i.bf to i64                   ; 2 uses
  %exitcond141.not.i = icmp eq i32 %.sroa.speculated, 1
  %exitcond141.not.i.1 = icmp eq i32 %.sroa.speculated, 2
  br label %.preheader2.us77.i

.preheader2.us77.i:                               ; preds = %._crit_edge.us86.i, %.lr.ph69.split.split.us.i
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i, %._crit_edge.us86.i ], [ %i.lp, %.lr.ph69.split.split.us.i ] ; 2 uses
  %.368.us78.i = phi ptr [ %.lcssa236, %._crit_edge.us86.i ], [ %.0139.lcssa.i, %.lr.ph69.split.split.us.i ] ; 7 uses
  %i.lr = add nsw i64 %indvars.iv142.i, %i.z      ; 2 uses
  %i.ls = add nsw i64 %i.lr, 1
  %i.lt = mul nsw i64 %i.ls, %i.lq
  %gep95.i = getelementptr [4 x i8], ptr %invariant.gep92.i, i64 %i.lt ; 3 uses
  %i.lu = mul nsw i64 %i.lr, %i.lq
  %gep93.i = getelementptr [4 x i8], ptr %invariant.gep92.i, i64 %i.lu ; 3 uses
  %i.lv = load float, ptr %gep93.i, align 4, !tbaa !39
  store float %i.lv, ptr %.368.us78.i, align 4, !tbaa !39
  %i.lw = load float, ptr %gep95.i, align 4, !tbaa !39
  %i.lx = getelementptr inbounds nuw i8, ptr %.368.us78.i, i64 4
  store float %i.lw, ptr %i.lx, align 4, !tbaa !39
  %i.ly = getelementptr inbounds nuw i8, ptr %.368.us78.i, i64 8 ; 2 uses
  br i1 %exitcond141.not.i, label %._crit_edge.us86.i, label %bb.f

bb.f:                                             ; preds = %.preheader2.us77.i
  %i.lz = getelementptr inbounds nuw i8, ptr %gep95.i, i64 4
  %i.ma = getelementptr inbounds nuw i8, ptr %gep93.i, i64 4
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !39
  store float %i.mb, ptr %i.ly, align 4, !tbaa !39
  %i.mc = load float, ptr %i.lz, align 4, !tbaa !39
  %i.md = getelementptr inbounds nuw i8, ptr %.368.us78.i, i64 12
  store float %i.mc, ptr %i.md, align 4, !tbaa !39
  %i.me = getelementptr inbounds nuw i8, ptr %.368.us78.i, i64 16 ; 2 uses
  br i1 %exitcond141.not.i.1, label %._crit_edge.us86.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.mf = getelementptr inbounds nuw i8, ptr %gep95.i, i64 8
  %i.mg = getelementptr inbounds nuw i8, ptr %gep93.i, i64 8
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !39
  store float %i.mh, ptr %i.me, align 4, !tbaa !39
  %i.mi = load float, ptr %i.mf, align 4, !tbaa !39
  %i.mj = getelementptr inbounds nuw i8, ptr %.368.us78.i, i64 20
  store float %i.mi, ptr %i.mj, align 4, !tbaa !39
  %i.mk = getelementptr inbounds nuw i8, ptr %.368.us78.i, i64 24
  br label %._crit_edge.us86.i

._crit_edge.us86.i:                               ; preds = %bb.g, %bb.f, %.preheader2.us77.i
  %.lcssa236 = phi ptr [ %i.ly, %.preheader2.us77.i ], [ %i.me, %bb.f ], [ %i.mk, %bb.g ] ; 2 uses
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 2 ; 3 uses
  %i.ml = icmp slt i64 %indvars.iv.next143.i, %invariant.op.i
  br i1 %i.ml, label %.preheader2.us77.i, label %.preheader1.loopexit110.i, !llvm.loop !532

.preheader1.loopexit.i:                           ; preds = %._crit_edge.us74.i
  %i.mm = trunc nsw i64 %indvars.iv.next146.i to i32
  br label %.preheader1.i

.preheader1.loopexit110.i:                        ; preds = %._crit_edge.us86.i
  %i.mn = trunc nsw i64 %indvars.iv.next143.i to i32
  br label %.preheader1.i

.preheader1.i:                                    ; preds = %.preheader1.loopexit110.i, %.preheader1.loopexit.i, %.preheader2.preheader.i, %.preheader3.i
  %.1142.lcssa.i = phi i32 [ %.0141.lcssa.i, %.preheader3.i ], [ %i.mn, %.preheader1.loopexit110.i ], [ %i.mm, %.preheader1.loopexit.i ], [ %i.ln, %.preheader2.preheader.i ] ; 2 uses
  %.3.lcssa.i = phi ptr [ %.0139.lcssa.i, %.preheader3.i ], [ %.lcssa236, %.preheader1.loopexit110.i ], [ %.5.lcssa.us.i, %.preheader1.loopexit.i ], [ %.0139.lcssa.i, %.preheader2.preheader.i ]
  %i.mo = icmp slt i32 %.1142.lcssa.i, %.sroa.speculated57
  br i1 %i.mo, label %.lr.ph108.i, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph108.i:                                      ; preds = %.preheader1.i
  %i.mp = sext i32 %.076 to i64
  %i.mq = icmp sgt i32 %.sroa.speculated, 3
  %i.mr = and i32 %.sroa.speculated, -4           ; 2 uses
  %i.ms = sext i32 %.1142.lcssa.i to i64
  %i.mt = sext i32 %i.bf to i64
  %i.mu = add i32 %.sroa.speculated, -4           ; 2 uses
  %i.mv = lshr i32 %i.mu, 2
  %i.mw = add nuw nsw i32 %i.mv, 1                ; 2 uses
  %xtraiter250 = and i32 %i.mw, 3                 ; 3 uses
  %i.mx = icmp ult i32 %i.mu, 12
  %unroll_iter255 = and i32 %i.mw, 2147483644
  %lcmp.mod251.not = icmp eq i32 %xtraiter250, 0
  %lcmp.mod254 = icmp ne i32 %xtraiter250, 0
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %.lr.ph108.i
  %indvars.iv149.i = phi i64 [ %i.ms, %.lr.ph108.i ], [ %indvars.iv.next150.i, %._crit_edge.i ] ; 2 uses
  %.6107.i = phi ptr [ %.3.lcssa.i, %.lr.ph108.i ], [ %.8.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.my = load ptr, ptr %8, align 8, !tbaa !18
  %i.mz = add nsw i64 %indvars.iv149.i, %i.z
  %i.na = mul nsw i64 %i.mz, %i.mt
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.my, i64 %i.na
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.nb, i64 %i.mp ; 3 uses
  br i1 %i.mq, label %.lr.ph.i.preheader, label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %bb.h
  br i1 %i.mx, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  br i1 %lcmp.mod251.not, label %.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.013797.i.epil.init = phi ptr [ %i.nc, %.lr.ph.i.preheader ], [ %i.on, %.preheader.i.loopexit.unr-lcssa ]
  %.796.i.epil.init = phi ptr [ %.6107.i, %.lr.ph.i.preheader ], [ %i.om, %.preheader.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod254)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.013797.i.epil = phi ptr [ %i.nf, %.lr.ph.i.epil ], [ %.013797.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.796.i.epil = phi ptr [ %i.ne, %.lr.ph.i.epil ], [ %.796.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.nd = load <4 x float>, ptr %.013797.i.epil, align 1, !tbaa !254
  store <4 x float> %i.nd, ptr %.796.i.epil, align 1, !tbaa !254
  %i.ne = getelementptr inbounds nuw i8, ptr %.796.i.epil, i64 16 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.013797.i.epil, i64 16 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter250
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph.i.epil, !llvm.loop !542

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.h
  %.7.lcssa.i = phi ptr [ %.6107.i, %bb.h ], [ %i.om, %.preheader.i.loopexit.unr-lcssa ], [ %i.ne, %.lr.ph.i.epil ] ; 5 uses
  %.0137.lcssa.i = phi ptr [ %i.nc, %bb.h ], [ %i.on, %.preheader.i.loopexit.unr-lcssa ], [ %i.nf, %.lr.ph.i.epil ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.mr, %.lr.ph.i.epil ], [ %i.mr, %.preheader.i.loopexit.unr-lcssa ] ; 4 uses
  %i.ng = icmp slt i32 %.0.lcssa.i, %.sroa.speculated
  br i1 %i.ng, label %.lr.ph104.i.preheader, label %._crit_edge.i

.lr.ph104.i.preheader:                            ; preds = %.preheader.i
  %.0137.lcssa.i137 = ptrtoaddr ptr %.0137.lcssa.i to i64
  %.7.lcssa.i136 = ptrtoaddr ptr %.7.lcssa.i to i64
  %i.nh = xor i32 %.0.lcssa.i, -1
  %i.ni = add i32 %.sroa.speculated, %i.nh        ; 2 uses
  %i.nj = zext i32 %i.ni to i64
  %i.nk = add nuw nsw i64 %i.nj, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ni, 7
  %i.nl = sub i64 %.0137.lcssa.i137, %.7.lcssa.i136
  %diff.check = icmp ugt i64 %i.nl, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph104.i.preheader227, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph104.i.preheader
  %n.vec = and i64 %i.nk, 8589934584              ; 4 uses
  %i.nm = trunc i64 %n.vec to i32
  %i.nn = add i32 %.0.lcssa.i, %i.nm
  %i.no = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.np = getelementptr i8, ptr %.0137.lcssa.i, i64 %i.no
  %i.nq = getelementptr i8, ptr %.7.lcssa.i, i64 %i.no ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nr = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0137.lcssa.i, i64 %i.nr ; 2 uses
  %next.gep138 = getelementptr i8, ptr %.7.lcssa.i, i64 %i.nr ; 2 uses
  %i.ns = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !39
  %wide.load139 = load <4 x float>, ptr %i.ns, align 4, !tbaa !39
  %i.nt = getelementptr i8, ptr %next.gep138, i64 16
  store <4 x float> %wide.load, ptr %next.gep138, align 4, !tbaa !39
  store <4 x float> %wide.load139, ptr %i.nt, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.nu = icmp eq i64 %index.next, %n.vec
  br i1 %i.nu, label %middle.block, label %vector.body, !llvm.loop !543

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.nk, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph104.i.preheader227

.lr.ph104.i.preheader227:                         ; preds = %.lr.ph104.i.preheader, %middle.block
  %.1103.i.ph = phi i32 [ %.0.lcssa.i, %.lr.ph104.i.preheader ], [ %i.nn, %middle.block ] ; 4 uses
  %.1138102.i.ph = phi ptr [ %.0137.lcssa.i, %.lr.ph104.i.preheader ], [ %i.np, %middle.block ] ; 2 uses
  %.8101.i.ph = phi ptr [ %.7.lcssa.i, %.lr.ph104.i.preheader ], [ %i.nq, %middle.block ] ; 2 uses
  %i.nv = sub i32 %.sroa.speculated, %.1103.i.ph
  %xtraiter257 = and i32 %i.nv, 7                 ; 2 uses
  %lcmp.mod258.not = icmp eq i32 %xtraiter257, 0
  br i1 %lcmp.mod258.not, label %.lr.ph104.i.prol.loopexit, label %.lr.ph104.i.prol

.lr.ph104.i.prol:                                 ; preds = %.lr.ph104.i.preheader227, %.lr.ph104.i.prol
  %.1103.i.prol = phi i32 [ %i.nz, %.lr.ph104.i.prol ], [ %.1103.i.ph, %.lr.ph104.i.preheader227 ]
  %.1138102.i.prol = phi ptr [ %i.ny, %.lr.ph104.i.prol ], [ %.1138102.i.ph, %.lr.ph104.i.preheader227 ] ; 2 uses
  %.8101.i.prol = phi ptr [ %i.nx, %.lr.ph104.i.prol ], [ %.8101.i.ph, %.lr.ph104.i.preheader227 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph104.i.prol ], [ 0, %.lr.ph104.i.preheader227 ]
  %i.nw = load float, ptr %.1138102.i.prol, align 4, !tbaa !39
  store float %i.nw, ptr %.8101.i.prol, align 4, !tbaa !39
  %i.nx = getelementptr inbounds nuw i8, ptr %.8101.i.prol, i64 4 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.1138102.i.prol, i64 4 ; 2 uses
  %i.nz = add nuw nsw i32 %.1103.i.prol, 1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter257
  br i1 %prol.iter.cmp.not, label %.lr.ph104.i.prol.loopexit, label %.lr.ph104.i.prol, !llvm.loop !544

.lr.ph104.i.prol.loopexit:                        ; preds = %.lr.ph104.i.prol, %.lr.ph104.i.preheader227
  %.lcssa243.unr = phi ptr [ poison, %.lr.ph104.i.preheader227 ], [ %i.nx, %.lr.ph104.i.prol ]
  %.1103.i.unr = phi i32 [ %.1103.i.ph, %.lr.ph104.i.preheader227 ], [ %i.nz, %.lr.ph104.i.prol ]
  %.1138102.i.unr = phi ptr [ %.1138102.i.ph, %.lr.ph104.i.preheader227 ], [ %i.ny, %.lr.ph104.i.prol ]
  %.8101.i.unr = phi ptr [ %.8101.i.ph, %.lr.ph104.i.preheader227 ], [ %i.nx, %.lr.ph104.i.prol ]
  %i.oa = sub i32 %.1103.i.ph, %.sroa.speculated
  %i.ob = icmp ugt i32 %i.oa, -8
  br i1 %i.ob, label %._crit_edge.i, label %.lr.ph104.i

end_hunk_4
begin_hunk_5_@_ZNK4ncnn15Convolution_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %.211563127.us.i = phi i32 [ %.01154.lcssa.i, %.noexc1310.us.preheader.i ], [ %i.arg, %._crit_edge3121.us.i ]
  %.reass3139.us.i = mul i64 %factor.op.mul3063.i, %indvars.iv3697.i ; 2 uses
  %gep3142.us.i = getelementptr i8, ptr %invariant.gep3141.i, i64 %.reass3139.us.i
  %gep3147.us.i = getelementptr i8, ptr %invariant.gep3146.i, i64 %.reass3139.us.i
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ce, %.noexc1310.us.i
  %indvars.iv3690.i = phi i64 [ 0, %.noexc1310.us.i ], [ %indvars.iv.next3691.i, %bb.ce ] ; 2 uses
  %.511413118.us.i = phi ptr [ %.411403131.us.i, %.noexc1310.us.i ], [ %i.ars, %bb.ce ] ; 3 uses
  %.311453117.us.i = phi i32 [ %.211443130.us.i, %.noexc1310.us.i ], [ %i.arr, %bb.ce ]
  %.311493116.us.i = phi i32 [ %.211483129.us.i, %.noexc1310.us.i ], [ %i.arl, %bb.ce ]
  %.311533115.us.i = phi i32 [ %.211523128.us.i, %.noexc1310.us.i ], [ %i.arp, %bb.ce ]
  %.311573114.us.i = phi i32 [ %.211563127.us.i, %.noexc1310.us.i ], [ %i.arg, %bb.ce ]
  %i.aqw = getelementptr inbounds nuw [4 x i8], ptr %i.aqr, i64 %indvars.iv3690.i
  %i.aqx = load i32, ptr %i.aqw, align 4, !tbaa !67
  %i.aqy = sext i32 %i.aqx to i64                 ; 2 uses
  %i.aqz = getelementptr inbounds i8, ptr %gep3142.us.i, i64 %i.aqy
  %i.ara = getelementptr inbounds i8, ptr %gep3147.us.i, i64 %i.aqy
  %i.arb = load i8, ptr %i.aqz, align 1, !tbaa !254
  %i.arc = sext i8 %i.arb to i32                  ; 2 uses
  %i.ard = load i8, ptr %.511413118.us.i, align 1, !tbaa !254
  %i.are = sext i8 %i.ard to i32                  ; 2 uses
  %i.arf = mul nsw i32 %i.are, %i.arc
  %i.arg = add nsw i32 %i.arf, %.311573114.us.i   ; 3 uses
  %i.arh = getelementptr inbounds nuw i8, ptr %.511413118.us.i, i64 1
  %i.ari = load i8, ptr %i.arh, align 1, !tbaa !254
  %i.arj = sext i8 %i.ari to i32                  ; 2 uses
  %i.ark = mul nsw i32 %i.arj, %i.arc
  %i.arl = add nsw i32 %i.ark, %.311493116.us.i   ; 3 uses
  %i.arm = load i8, ptr %i.ara, align 1, !tbaa !254
  %i.arn = sext i8 %i.arm to i32                  ; 2 uses
  %i.aro = mul nsw i32 %i.arn, %i.are
  %i.arp = add nsw i32 %i.aro, %.311533115.us.i   ; 3 uses
  %i.arq = mul nsw i32 %i.arn, %i.arj
  %i.arr = add nsw i32 %i.arq, %.311453117.us.i   ; 3 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %.511413118.us.i, i64 2
  %indvars.iv.next3691.i = add nuw nsw i64 %indvars.iv3690.i, 1 ; 2 uses
  %exitcond3696.not.i = icmp eq i64 %indvars.iv.next3691.i, %wide.trip.count3695.i
  br i1 %exitcond3696.not.i, label %._crit_edge3121.us.i, label %bb.ce, !llvm.loop !596

._crit_edge3121.us.i:                             ; preds = %bb.ce
  %scevgep3692.i = getelementptr i8, ptr %.411403131.us.i, i64 2
  %scevgep3693.i = getelementptr i8, ptr %scevgep3692.i, i64 %i.aqu
  %indvars.iv.next3698.i = add nuw nsw i64 %indvars.iv3697.i, 1 ; 2 uses
  %i.art = trunc nuw i64 %indvars.iv.next3698.i to i32
  %i.aru = icmp sgt i32 %i.aij, %i.art
  br i1 %i.aru, label %.noexc1310.us.i, label %._crit_edge3133.i, !llvm.loop !597

._crit_edge3133.i:                                ; preds = %._crit_edge3121.us.i, %.noexc1310.lr.ph.i, %.preheader2859.i
  %.21156.lcssa.i = phi i32 [ %.01154.lcssa.i, %.preheader2859.i ], [ %.01154.lcssa.i, %.noexc1310.lr.ph.i ], [ %i.arg, %._crit_edge3121.us.i ]
  %.21152.lcssa.i = phi i32 [ %.01150.lcssa.i, %.preheader2859.i ], [ %.01150.lcssa.i, %.noexc1310.lr.ph.i ], [ %i.arp, %._crit_edge3121.us.i ]
  %.21148.lcssa.i = phi i32 [ %.01146.lcssa.i, %.preheader2859.i ], [ %.01146.lcssa.i, %.noexc1310.lr.ph.i ], [ %i.arl, %._crit_edge3121.us.i ]
  %.21144.lcssa.i = phi i32 [ %.01142.lcssa.i, %.preheader2859.i ], [ %.01142.lcssa.i, %.noexc1310.lr.ph.i ], [ %i.arr, %._crit_edge3121.us.i ]
  store i32 %.21156.lcssa.i, ptr %.111263154.i, align 4, !tbaa !67
  %i.arv = getelementptr inbounds nuw i8, ptr %.111263154.i, i64 4
  store i32 %.21152.lcssa.i, ptr %i.arv, align 4, !tbaa !67
  store i32 %.21148.lcssa.i, ptr %.111293153.i, align 4, !tbaa !67
  %i.arw = getelementptr inbounds nuw i8, ptr %.111293153.i, i64 4
  store i32 %.21144.lcssa.i, ptr %i.arw, align 4, !tbaa !67
  %i.arx = getelementptr inbounds nuw i8, ptr %.111263154.i, i64 8 ; 2 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %.111293153.i, i64 8 ; 2 uses
  %i.arz = add nuw nsw i32 %.111593152.i, 2       ; 3 uses
  %i.asa = or disjoint i32 %i.arz, 1              ; 2 uses
  %i.asb = icmp slt i32 %i.asa, %i.ph
  br i1 %i.asb, label %.noexc1320.i, label %.preheader2861.i, !llvm.loop !598

.noexc1306.i:                                     ; preds = %._crit_edge3224.i, %.noexc1306.lr.ph.i
  %.211273236.i = phi ptr [ %.11126.lcssa.i, %.noexc1306.lr.ph.i ], [ %i.azv, %._crit_edge3224.i ] ; 2 uses
  %.211303235.i = phi ptr [ %.11129.lcssa.i, %.noexc1306.lr.ph.i ], [ %i.azw, %._crit_edge3224.i ] ; 2 uses
  %.211603234.i = phi i32 [ %.11159.lcssa.i, %.noexc1306.lr.ph.i ], [ %i.azx, %._crit_edge3224.i ] ; 3 uses
  %i.asc = sdiv i32 %.211603234.i, %i.oq          ; 3 uses
  %i.asd = srem i32 %.211603234.i, %i.oq          ; 3 uses
  %i.ase = load i32, ptr %i.d, align 4, !tbaa !67 ; 9 uses
  %i.asf = icmp sgt i32 %i.ase, 7
  br i1 %i.asf, label %.noexc1304.lr.ph.i, label %._crit_edge3171.i

.noexc1304.lr.ph.i:                               ; preds = %.noexc1306.i
  %i.asg = load i32, ptr %i.c, align 4, !tbaa !67 ; 3 uses
  %i.ash = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !599
  %i.asi = sext i32 %i.ash to i64
  %i.asj = load i32, ptr %i.b, align 4, !tbaa !67
  %i.ask = mul nsw i32 %i.asj, %i.asc
  %i.asl = sext i32 %i.ask to i64
  %i.asm = mul i64 %i.aid, %i.asi
  %i.asn = mul i64 %i.asm, %i.asl
  %invariant.gep3178.i = getelementptr i8, ptr %i.aib, i64 %i.asn
  %i.aso = load i32, ptr %i.a, align 4, !tbaa !67
  %i.asp = mul i32 %i.asg, %i.asd
  %i.asq = mul i32 %i.asp, %i.aso
  %i.asr = sext i32 %i.asq to i64
  %invariant.gep3179.i = getelementptr i8, ptr %invariant.gep3178.i, i64 %i.asr
  %i.ass = load i32, ptr %i.f, align 4, !tbaa !67 ; 3 uses
  %i.ast = icmp sgt i32 %i.ass, 0
  %i.asu = load ptr, ptr %i.g, align 8
  %i.asv = icmp eq i32 %i.asg, 8
  br i1 %i.ast, label %.noexc1304.us.preheader.i, label %.noexc1304.preheader.i

.noexc1304.preheader.i:                           ; preds = %.noexc1304.lr.ph.i
  %i.asw = and i32 %i.ase, 2147483640
  br label %._crit_edge3171.i

.noexc1304.us.preheader.i:                        ; preds = %.noexc1304.lr.ph.i
  %i.asx = add nsw i32 %i.ass, -1
  %i.asy = zext nneg i32 %i.asx to i64
  %i.asz = shl nuw nsw i64 %i.asy, 4
  %wide.trip.count3705.i = zext nneg i32 %i.ass to i64
  br label %.noexc1304.us.i

.noexc1304.us.i:                                  ; preds = %._crit_edge3163.us.i, %.noexc1304.us.preheader.i
  %.011073170.us.i = phi i32 [ %i.auu, %._crit_edge3163.us.i ], [ 0, %.noexc1304.us.preheader.i ] ; 2 uses
  %.011103169.us.i = phi ptr [ %scevgep3703.i, %._crit_edge3163.us.i ], [ %i.ahu, %.noexc1304.us.preheader.i ] ; 2 uses
  %i.ata = phi <4 x i32> [ %i.aus, %._crit_edge3163.us.i ], [ zeroinitializer, %.noexc1304.us.preheader.i ]
  %i.atb = phi <4 x i32> [ %i.aup, %._crit_edge3163.us.i ], [ zeroinitializer, %.noexc1304.us.preheader.i ]
  %i.atc = sdiv i32 %.011073170.us.i, %i.asg
  %i.atd = sext i32 %i.atc to i64
  %.reass3177.us.i = mul i64 %factor.op.mul3176.i, %i.atd
  %gep3180.us.i = getelementptr i8, ptr %invariant.gep3179.i, i64 %.reass3177.us.i
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ci, %.noexc1304.us.i
  %indvars.iv3700.i = phi i64 [ 0, %.noexc1304.us.i ], [ %indvars.iv.next3701.i, %bb.ci ] ; 2 uses
  %.111113160.us.i = phi ptr [ %.011103169.us.i, %.noexc1304.us.i ], [ %i.aut, %bb.ci ] ; 2 uses
  %.128293159.us.i = phi <4 x i32> [ %i.ata, %.noexc1304.us.i ], [ %i.aus, %bb.ci ]
  %.128313158.us.i = phi <4 x i32> [ %i.atb, %.noexc1304.us.i ], [ %i.aup, %bb.ci ]
  %i.ate = getelementptr inbounds nuw [4 x i8], ptr %i.asu, i64 %indvars.iv3700.i
  %i.atf = load i32, ptr %i.ate, align 4, !tbaa !67
  %i.atg = sext i32 %i.atf to i64
  %i.ath = getelementptr inbounds i8, ptr %gep3180.us.i, i64 %i.atg ; 9 uses
  br i1 %i.asv, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ati = load i8, ptr %i.ath, align 1, !tbaa !254
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ath, i64 %i.ov
  %i.atk = load i8, ptr %i.atj, align 1, !tbaa !254
  %i.atl = getelementptr inbounds nuw i8, ptr %i.ath, i64 %i.ahv
  %i.atm = load i8, ptr %i.atl, align 1, !tbaa !254
  %i.atn = getelementptr inbounds nuw i8, ptr %i.ath, i64 %i.ahw
  %i.ato = load i8, ptr %i.atn, align 1, !tbaa !254
  %i.atp = getelementptr inbounds nuw i8, ptr %i.ath, i64 %i.ahx
  %i.atq = load i8, ptr %i.atp, align 1, !tbaa !254
  %i.atr = getelementptr inbounds nuw i8, ptr %i.ath, i64 %i.ahy
  %i.ats = load i8, ptr %i.atr, align 1, !tbaa !254
  %i.att = getelementptr inbounds nuw i8, ptr %i.ath, i64 %i.ahz
  %i.atu = load i8, ptr %i.att, align 1, !tbaa !254
  %i.atv = getelementptr inbounds nuw i8, ptr %i.ath, i64 %i.aia
  %i.atw = load i8, ptr %i.atv, align 1, !tbaa !254
  %i.atx = insertelement <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %i.ati, i64 0
  %i.aty = insertelement <16 x i8> %i.atx, i8 %i.atk, i64 1
  %i.atz = insertelement <16 x i8> %i.aty, i8 %i.atm, i64 2
  %i.aua = insertelement <16 x i8> %i.atz, i8 %i.ato, i64 3
  %i.aub = insertelement <16 x i8> %i.aua, i8 %i.atq, i64 4
  %i.auc = insertelement <16 x i8> %i.aub, i8 %i.ats, i64 5
  %i.aud = insertelement <16 x i8> %i.auc, i8 %i.atu, i64 6
  %i.aue = insertelement <16 x i8> %i.aud, i8 %i.atw, i64 7
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.auf = load i64, ptr %i.ath, align 1, !tbaa !254
  %i.aug = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.auf, i64 0
  %i.auh = bitcast <2 x i64> %i.aug to <16 x i8>
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %storemerge1214.us.i = phi <16 x i8> [ %i.auh, %bb.ch ], [ %i.aue, %bb.cg ] ; 2 uses
  %.lobit.i1712.us.i = ashr <16 x i8> %storemerge1214.us.i, splat (i8 7)
  %i.aui = shufflevector <16 x i8> %storemerge1214.us.i, <16 x i8> %.lobit.i1712.us.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.auj = load <16 x i8>, ptr %.111113160.us.i, align 16, !tbaa !254 ; 3 uses
  %.lobit.i1711.us.i = ashr <16 x i8> %i.auj, splat (i8 7) ; 2 uses
  %i.auk = shufflevector <16 x i8> %i.auj, <16 x i8> %.lobit.i1711.us.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.aul = shufflevector <16 x i8> %i.auj, <16 x i8> %.lobit.i1711.us.i, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.aum = bitcast <16 x i8> %i.aui to <8 x i16>  ; 2 uses
  %i.aun = bitcast <16 x i8> %i.auk to <8 x i16>
  %i.auo = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aum, <8 x i16> %i.aun)
  %i.aup = add <4 x i32> %i.auo, %.128313158.us.i ; 3 uses
  %i.auq = bitcast <16 x i8> %i.aul to <8 x i16>
  %i.aur = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aum, <8 x i16> %i.auq)
  %i.aus = add <4 x i32> %i.aur, %.128293159.us.i ; 3 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %.111113160.us.i, i64 16
  %indvars.iv.next3701.i = add nuw nsw i64 %indvars.iv3700.i, 1 ; 2 uses
  %exitcond3706.not.i = icmp eq i64 %indvars.iv.next3701.i, %wide.trip.count3705.i
  br i1 %exitcond3706.not.i, label %._crit_edge3163.us.i, label %bb.cf, !llvm.loop !602

._crit_edge3163.us.i:                             ; preds = %bb.ci
  %scevgep3702.i = getelementptr i8, ptr %.011103169.us.i, i64 16
  %scevgep3703.i = getelementptr i8, ptr %scevgep3702.i, i64 %i.asz ; 2 uses
  %i.auu = add nuw nsw i32 %.011073170.us.i, 8    ; 2 uses
  %i.auv = or disjoint i32 %i.auu, 7
  %i.auw = icmp slt i32 %i.auv, %i.ase
  br i1 %i.auw, label %.noexc1304.us.i, label %._crit_edge3171.loopexit.i, !llvm.loop !603

._crit_edge3171.loopexit.i:                       ; preds = %._crit_edge3163.us.i
  %i.aux = and i32 %i.ase, 2147483640
  %i.auy = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aup)
  %i.auz = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aus)
  br label %._crit_edge3171.i

._crit_edge3171.i:                                ; preds = %._crit_edge3171.loopexit.i, %.noexc1304.preheader.i, %.noexc1306.i
  %i.ava = phi i32 [ 0, %.noexc1306.i ], [ %i.auy, %._crit_edge3171.loopexit.i ], [ 0, %.noexc1304.preheader.i ] ; 3 uses
  %i.avb = phi i32 [ 0, %.noexc1306.i ], [ %i.auz, %._crit_edge3171.loopexit.i ], [ 0, %.noexc1304.preheader.i ] ; 3 uses
  %.01110.lcssa.i = phi ptr [ %i.ahu, %.noexc1306.i ], [ %scevgep3703.i, %._crit_edge3171.loopexit.i ], [ %i.ahu, %.noexc1304.preheader.i ] ; 3 uses
  %.01107.lcssa.i = phi i32 [ 0, %.noexc1306.i ], [ %i.aux, %._crit_edge3171.loopexit.i ], [ %i.asw, %.noexc1304.preheader.i ] ; 5 uses
  %i.avc = or disjoint i32 %.01107.lcssa.i, 1
  %i.avd = icmp slt i32 %i.avc, %i.ase
  br i1 %i.avd, label %.noexc1302.lr.ph.i, label %.preheader2858.i

.noexc1302.lr.ph.i:                               ; preds = %._crit_edge3171.i
  %i.ave = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !604
  %i.avf = sext i32 %i.ave to i64
  %i.avg = load i32, ptr %i.b, align 4, !tbaa !67
  %i.avh = mul nsw i32 %i.avg, %i.asc
  %i.avi = sext i32 %i.avh to i64
  %i.avj = mul i64 %i.aid, %i.avf
  %i.avk = mul i64 %i.avj, %i.avi
  %invariant.gep3204.i = getelementptr i8, ptr %i.aib, i64 %i.avk
  %i.avl = load i32, ptr %i.a, align 4, !tbaa !67
  %i.avm = mul nsw i32 %i.avl, %i.asd
  %i.avn = sext i32 %i.avm to i64
  %invariant.gep3205.i = getelementptr i8, ptr %invariant.gep3204.i, i64 %i.avn
  %i.avo = load i32, ptr %i.f, align 4, !tbaa !67 ; 3 uses
  %i.avp = icmp sgt i32 %i.avo, 0
  %i.avq = load ptr, ptr %i.g, align 8
  br i1 %i.avp, label %.noexc1302.us.preheader.i, label %.noexc1302.preheader.i

.noexc1302.preheader.i:                           ; preds = %.noexc1302.lr.ph.i
  %i.avr = or disjoint i32 %.01107.lcssa.i, 2
  %12 = add nsw i32 %i.ase, -2
  %reass.sub = sub nsw i32 %12, %.01107.lcssa.i
  %i.avs = and i32 %reass.sub, -2
  %i.avt = add i32 %i.avr, %i.avs
  br label %.preheader2858.i

.noexc1302.us.preheader.i:                        ; preds = %.noexc1302.lr.ph.i
  %i.avu = add nsw i32 %i.avo, -1
  %i.avv = zext nneg i32 %i.avu to i64
  %i.avw = shl nuw nsw i64 %i.avv, 2
  %i.avx = zext nneg i32 %.01107.lcssa.i to i64
  %wide.trip.count3712.i = zext nneg i32 %i.avo to i64
  br label %.noexc1302.us.i

.noexc1302.us.i:                                  ; preds = %._crit_edge3190.us.i, %.noexc1302.us.preheader.i
  %indvars.iv3714.i = phi i64 [ %i.avx, %.noexc1302.us.preheader.i ], [ %indvars.iv.next3715.i, %._crit_edge3190.us.i ] ; 2 uses
  %.211123196.us.i = phi ptr [ %.01110.lcssa.i, %.noexc1302.us.preheader.i ], [ %scevgep3710.i, %._crit_edge3190.us.i ] ; 2 uses
  %.011163195.us.i = phi i32 [ %i.avb, %.noexc1302.us.preheader.i ], [ %i.awz, %._crit_edge3190.us.i ]
  %.011203194.us.i = phi i32 [ %i.ava, %.noexc1302.us.preheader.i ], [ %i.awu, %._crit_edge3190.us.i ]
  %.reass3203.us.i = mul i64 %factor.op.mul3176.i, %indvars.iv3714.i
  %gep3206.us.i = getelementptr i8, ptr %invariant.gep3205.i, i64 %.reass3203.us.i
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cj, %.noexc1302.us.i
  %indvars.iv3707.i = phi i64 [ 0, %.noexc1302.us.i ], [ %indvars.iv.next3708.i, %bb.cj ] ; 2 uses
  %.311133187.us.i = phi ptr [ %.211123196.us.i, %.noexc1302.us.i ], [ %i.axa, %bb.cj ] ; 5 uses
  %.111173186.us.i = phi i32 [ %.011163195.us.i, %.noexc1302.us.i ], [ %i.awz, %bb.cj ]
  %.111213185.us.i = phi i32 [ %.011203194.us.i, %.noexc1302.us.i ], [ %i.awu, %bb.cj ]
  %i.avy = getelementptr inbounds nuw [4 x i8], ptr %i.avq, i64 %indvars.iv3707.i
  %i.avz = load i32, ptr %i.avy, align 4, !tbaa !67
  %i.awa = sext i32 %i.avz to i64
  %i.awb = getelementptr inbounds i8, ptr %gep3206.us.i, i64 %i.awa ; 2 uses
  %i.awc = load i8, ptr %i.awb, align 1, !tbaa !254
  %i.awd = sext i8 %i.awc to i32                  ; 2 uses
  %i.awe = load i8, ptr %.311133187.us.i, align 1, !tbaa !254
  %i.awf = sext i8 %i.awe to i32
  %i.awg = mul nsw i32 %i.awf, %i.awd
  %i.awh = add nsw i32 %i.awg, %.111213185.us.i
  %i.awi = getelementptr inbounds nuw i8, ptr %.311133187.us.i, i64 1
  %i.awj = load i8, ptr %i.awi, align 1, !tbaa !254
  %i.awk = sext i8 %i.awj to i32
  %i.awl = mul nsw i32 %i.awk, %i.awd
  %i.awm = add nsw i32 %i.awl, %.111173186.us.i
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awb, i64 %i.ov
  %i.awo = load i8, ptr %i.awn, align 1, !tbaa !254
  %i.awp = sext i8 %i.awo to i32                  ; 2 uses
  %i.awq = getelementptr inbounds nuw i8, ptr %.311133187.us.i, i64 2
  %i.awr = load i8, ptr %i.awq, align 1, !tbaa !254
  %i.aws = sext i8 %i.awr to i32
  %i.awt = mul nsw i32 %i.aws, %i.awp
  %i.awu = add nsw i32 %i.awh, %i.awt             ; 3 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %.311133187.us.i, i64 3
  %i.aww = load i8, ptr %i.awv, align 1, !tbaa !254
  %i.awx = sext i8 %i.aww to i32
  %i.awy = mul nsw i32 %i.awx, %i.awp
  %i.awz = add nsw i32 %i.awm, %i.awy             ; 3 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %.311133187.us.i, i64 4
  %indvars.iv.next3708.i = add nuw nsw i64 %indvars.iv3707.i, 1 ; 2 uses
  %exitcond3713.not.i = icmp eq i64 %indvars.iv.next3708.i, %wide.trip.count3712.i
  br i1 %exitcond3713.not.i, label %._crit_edge3190.us.i, label %bb.cj, !llvm.loop !607

._crit_edge3190.us.i:                             ; preds = %bb.cj
  %scevgep3709.i = getelementptr i8, ptr %.211123196.us.i, i64 4
  %scevgep3710.i = getelementptr i8, ptr %scevgep3709.i, i64 %i.avw ; 2 uses
  %indvars.iv.next3715.i = add nuw nsw i64 %indvars.iv3714.i, 2 ; 2 uses
  %i.axb = trunc i64 %indvars.iv.next3715.i to i32 ; 2 uses
  %i.axc = or i32 %i.axb, 1
  %i.axd = icmp slt i32 %i.axc, %i.ase
  br i1 %i.axd, label %.noexc1302.us.i, label %.preheader2858.i, !llvm.loop !608

.preheader2858.i:                                 ; preds = %._crit_edge3190.us.i, %.noexc1302.preheader.i, %._crit_edge3171.i
  %.01120.lcssa.i = phi i32 [ %i.ava, %._crit_edge3171.i ], [ %i.ava, %.noexc1302.preheader.i ], [ %i.awu, %._crit_edge3190.us.i ] ; 3 uses
  %.01116.lcssa.i = phi i32 [ %i.avb, %._crit_edge3171.i ], [ %i.avb, %.noexc1302.preheader.i ], [ %i.awz, %._crit_edge3190.us.i ] ; 3 uses
  %.21112.lcssa.i = phi ptr [ %.01110.lcssa.i, %._crit_edge3171.i ], [ %.01110.lcssa.i, %.noexc1302.preheader.i ], [ %scevgep3710.i, %._crit_edge3190.us.i ]
  %.11108.lcssa.i = phi i32 [ %.01107.lcssa.i, %._crit_edge3171.i ], [ %i.avt, %.noexc1302.preheader.i ], [ %i.axb, %._crit_edge3190.us.i ] ; 2 uses
  %i.axe = icmp slt i32 %.11108.lcssa.i, %i.ase
  br i1 %i.axe, label %.noexc1300.lr.ph.i, label %._crit_edge3224.i

.noexc1300.lr.ph.i:                               ; preds = %.preheader2858.i
  %i.axf = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !609
  %i.axg = sext i32 %i.axf to i64
  %i.axh = load i32, ptr %i.b, align 4, !tbaa !67
  %i.axi = mul nsw i32 %i.axh, %i.asc
  %i.axj = sext i32 %i.axi to i64
  %i.axk = mul i64 %i.aid, %i.axg
  %i.axl = mul i64 %i.axk, %i.axj
  %invariant.gep3229.i = getelementptr i8, ptr %i.aib, i64 %i.axl
  %i.axm = load i32, ptr %i.a, align 4, !tbaa !67
  %i.axn = mul nsw i32 %i.axm, %i.asd
  %i.axo = sext i32 %i.axn to i64
  %invariant.gep3230.i = getelementptr i8, ptr %invariant.gep3229.i, i64 %i.axo
  %i.axp = load i32, ptr %i.f, align 4, !tbaa !67 ; 5 uses
  %i.axq = icmp sgt i32 %i.axp, 0
  %i.axr = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.axq, label %.noexc1300.us.preheader.i, label %._crit_edge3224.i

.noexc1300.us.preheader.i:                        ; preds = %.noexc1300.lr.ph.i
  %i.axs = add nsw i32 %i.axp, -1
  %i.axt = zext nneg i32 %i.axs to i64
  %i.axu = shl nuw nsw i64 %i.axt, 1
  %i.axv = zext i32 %.11108.lcssa.i to i64
  %wide.trip.count3722.i = zext nneg i32 %i.axp to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count3722.i, 1
  %i.axw = icmp eq i32 %i.axp, 1
  %unroll_iter = and i64 %wide.trip.count3722.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod663 = trunc i32 %i.axp to i1
  br label %.noexc1300.us.i

.noexc1300.us.i:                                  ; preds = %._crit_edge3216.us.i, %.noexc1300.us.preheader.i
  %indvars.iv3724.i = phi i64 [ %i.axv, %.noexc1300.us.preheader.i ], [ %indvars.iv.next3725.i, %._crit_edge3216.us.i ] ; 2 uses
  %.411143222.us.i = phi ptr [ %.21112.lcssa.i, %.noexc1300.us.preheader.i ], [ %scevgep3720.i, %._crit_edge3216.us.i ] ; 3 uses
  %.211183221.us.i = phi i32 [ %.01116.lcssa.i, %.noexc1300.us.preheader.i ], [ %.lcssa657, %._crit_edge3216.us.i ] ; 2 uses
  %.211223220.us.i = phi i32 [ %.01120.lcssa.i, %.noexc1300.us.preheader.i ], [ %.lcssa658, %._crit_edge3216.us.i ] ; 2 uses
  %.reass3228.us.i = mul i64 %factor.op.mul3176.i, %indvars.iv3724.i
  %gep3231.us.i = getelementptr i8, ptr %invariant.gep3230.i, i64 %.reass3228.us.i ; 3 uses
  br i1 %i.axw, label %.epil.preheader, label %.noexc1300.us.i.new

.noexc1300.us.i.new:                              ; preds = %.noexc1300.us.i, %.noexc1300.us.i.new
  %indvars.iv3717.i = phi i64 [ %indvars.iv.next3718.i.1, %.noexc1300.us.i.new ], [ 0, %.noexc1300.us.i ] ; 3 uses
  %.511153213.us.i = phi ptr [ %i.azd, %.noexc1300.us.i.new ], [ %.411143222.us.i, %.noexc1300.us.i ] ; 5 uses
  %.311193212.us.i = phi i32 [ %i.azc, %.noexc1300.us.i.new ], [ %.211183221.us.i, %.noexc1300.us.i ]
  %.311233211.us.i = phi i32 [ %i.ayx, %.noexc1300.us.i.new ], [ %.211223220.us.i, %.noexc1300.us.i ]
  %niter = phi i64 [ %niter.next.1, %.noexc1300.us.i.new ], [ 0, %.noexc1300.us.i ]
  %i.axx = getelementptr inbounds nuw [4 x i8], ptr %i.axr, i64 %indvars.iv3717.i
  %i.axy = load i32, ptr %i.axx, align 4, !tbaa !67
  %i.axz = sext i32 %i.axy to i64
  %i.aya = getelementptr inbounds i8, ptr %gep3231.us.i, i64 %i.axz
  %i.ayb = load i8, ptr %i.aya, align 1, !tbaa !254
  %i.ayc = sext i8 %i.ayb to i32                  ; 2 uses
  %i.ayd = load i8, ptr %.511153213.us.i, align 1, !tbaa !254
  %i.aye = sext i8 %i.ayd to i32
  %i.ayf = mul nsw i32 %i.aye, %i.ayc
  %i.ayg = add nsw i32 %i.ayf, %.311233211.us.i
  %i.ayh = getelementptr inbounds nuw i8, ptr %.511153213.us.i, i64 1
  %i.ayi = load i8, ptr %i.ayh, align 1, !tbaa !254
  %i.ayj = sext i8 %i.ayi to i32
  %i.ayk = mul nsw i32 %i.ayj, %i.ayc
  %i.ayl = add nsw i32 %i.ayk, %.311193212.us.i
  %i.aym = getelementptr inbounds nuw i8, ptr %.511153213.us.i, i64 2
  %i.ayn = getelementptr inbounds nuw [4 x i8], ptr %i.axr, i64 %indvars.iv3717.i
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ayn, i64 4
  %i.ayp = load i32, ptr %i.ayo, align 4, !tbaa !67
  %i.ayq = sext i32 %i.ayp to i64
  %i.ayr = getelementptr inbounds i8, ptr %gep3231.us.i, i64 %i.ayq
  %i.ays = load i8, ptr %i.ayr, align 1, !tbaa !254
  %i.ayt = sext i8 %i.ays to i32                  ; 2 uses
  %i.ayu = load i8, ptr %i.aym, align 1, !tbaa !254
  %i.ayv = sext i8 %i.ayu to i32
  %i.ayw = mul nsw i32 %i.ayv, %i.ayt
  %i.ayx = add nsw i32 %i.ayw, %i.ayg             ; 3 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %.511153213.us.i, i64 3
  %i.ayz = load i8, ptr %i.ayy, align 1, !tbaa !254
  %i.aza = sext i8 %i.ayz to i32
  %i.azb = mul nsw i32 %i.aza, %i.ayt
  %i.azc = add nsw i32 %i.azb, %i.ayl             ; 3 uses
  %i.azd = getelementptr inbounds nuw i8, ptr %.511153213.us.i, i64 4 ; 2 uses
  %indvars.iv.next3718.i.1 = add nuw nsw i64 %indvars.iv3717.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge3216.us.i.unr-lcssa, label %.noexc1300.us.i.new, !llvm.loop !612

._crit_edge3216.us.i.unr-lcssa:                   ; preds = %.noexc1300.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge3216.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge3216.us.i.unr-lcssa, %.noexc1300.us.i
  %indvars.iv3717.i.epil.init = phi i64 [ 0, %.noexc1300.us.i ], [ %indvars.iv.next3718.i.1, %._crit_edge3216.us.i.unr-lcssa ]
  %.511153213.us.i.epil.init = phi ptr [ %.411143222.us.i, %.noexc1300.us.i ], [ %i.azd, %._crit_edge3216.us.i.unr-lcssa ] ; 2 uses
  %.311193212.us.i.epil.init = phi i32 [ %.211183221.us.i, %.noexc1300.us.i ], [ %i.azc, %._crit_edge3216.us.i.unr-lcssa ]
  %.311233211.us.i.epil.init = phi i32 [ %.211223220.us.i, %.noexc1300.us.i ], [ %i.ayx, %._crit_edge3216.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod663)
  %i.aze = getelementptr inbounds nuw [4 x i8], ptr %i.axr, i64 %indvars.iv3717.i.epil.init
  %i.azf = load i32, ptr %i.aze, align 4, !tbaa !67
  %i.azg = sext i32 %i.azf to i64
  %i.azh = getelementptr inbounds i8, ptr %gep3231.us.i, i64 %i.azg
  %i.azi = load i8, ptr %i.azh, align 1, !tbaa !254
  %i.azj = sext i8 %i.azi to i32                  ; 2 uses
  %i.azk = load i8, ptr %.511153213.us.i.epil.init, align 1, !tbaa !254
  %i.azl = sext i8 %i.azk to i32
  %i.azm = mul nsw i32 %i.azl, %i.azj
  %i.azn = add nsw i32 %i.azm, %.311233211.us.i.epil.init
  %i.azo = getelementptr inbounds nuw i8, ptr %.511153213.us.i.epil.init, i64 1
  %i.azp = load i8, ptr %i.azo, align 1, !tbaa !254
  %i.azq = sext i8 %i.azp to i32
  %i.azr = mul nsw i32 %i.azq, %i.azj
  %i.azs = add nsw i32 %i.azr, %.311193212.us.i.epil.init
  br label %._crit_edge3216.us.i

._crit_edge3216.us.i:                             ; preds = %._crit_edge3216.us.i.unr-lcssa, %.epil.preheader
  %.lcssa658 = phi i32 [ %i.ayx, %._crit_edge3216.us.i.unr-lcssa ], [ %i.azn, %.epil.preheader ] ; 2 uses
  %.lcssa657 = phi i32 [ %i.azc, %._crit_edge3216.us.i.unr-lcssa ], [ %i.azs, %.epil.preheader ] ; 2 uses
  %scevgep3719.i = getelementptr i8, ptr %.411143222.us.i, i64 2
  %scevgep3720.i = getelementptr i8, ptr %scevgep3719.i, i64 %i.axu
  %indvars.iv.next3725.i = add nuw nsw i64 %indvars.iv3724.i, 1 ; 2 uses
  %i.azt = trunc nuw i64 %indvars.iv.next3725.i to i32
  %i.azu = icmp sgt i32 %i.ase, %i.azt
  br i1 %i.azu, label %.noexc1300.us.i, label %._crit_edge3224.i, !llvm.loop !613

._crit_edge3224.i:                                ; preds = %._crit_edge3216.us.i, %.noexc1300.lr.ph.i, %.preheader2858.i
  %.21122.lcssa.i = phi i32 [ %.01120.lcssa.i, %.preheader2858.i ], [ %.01120.lcssa.i, %.noexc1300.lr.ph.i ], [ %.lcssa658, %._crit_edge3216.us.i ]
  %.21118.lcssa.i = phi i32 [ %.01116.lcssa.i, %.preheader2858.i ], [ %.01116.lcssa.i, %.noexc1300.lr.ph.i ], [ %.lcssa657, %._crit_edge3216.us.i ]
  store i32 %.21122.lcssa.i, ptr %.211273236.i, align 4, !tbaa !67
  store i32 %.21118.lcssa.i, ptr %.211303235.i, align 4, !tbaa !67
  %i.azv = getelementptr inbounds nuw i8, ptr %.211273236.i, i64 4
end_hunk_5
begin_hunk_6_@_ZNK4ncnn15Convolution_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.bzd = getelementptr inbounds i8, ptr %gep3436.us.i, i64 %i.bzc
  %i.bze = getelementptr inbounds i8, ptr %gep3441.us.i, i64 %i.bzc
  %i.bzf = load i8, ptr %i.bzd, align 1, !tbaa !254
  %i.bzg = sext i8 %i.bzf to i32
  %i.bzh = load i8, ptr %.510113418.us.i.epil.init, align 1, !tbaa !254
  %i.bzi = sext i8 %i.bzh to i32                  ; 2 uses
  %i.bzj = mul nsw i32 %i.bzi, %i.bzg
  %i.bzk = add nsw i32 %i.bzj, %.310193416.us.i.epil.init
  %i.bzl = load i8, ptr %i.bze, align 1, !tbaa !254
  %i.bzm = sext i8 %i.bzl to i32
  %i.bzn = mul nsw i32 %i.bzm, %i.bzi
  %i.bzo = add nsw i32 %i.bzn, %.310153417.us.i.epil.init
  br label %._crit_edge3421.us.i

._crit_edge3421.us.i:                             ; preds = %._crit_edge3421.us.i.unr-lcssa, %.epil.preheader664
  %.lcssa612 = phi i32 [ %i.byu, %._crit_edge3421.us.i.unr-lcssa ], [ %i.bzk, %.epil.preheader664 ] ; 2 uses
  %.lcssa611 = phi i32 [ %i.byy, %._crit_edge3421.us.i.unr-lcssa ], [ %i.bzo, %.epil.preheader664 ] ; 2 uses
  %i.bzp = getelementptr i8, ptr %.410103427.us.i, i64 %i.bxr
  %indvars.iv.next3780.i = add nuw nsw i64 %indvars.iv3779.i, 1 ; 2 uses
  %i.bzq = trunc nuw i64 %indvars.iv.next3780.i to i32
  %i.bzr = icmp sgt i32 %i.bqh, %i.bzq
  br i1 %i.bzr, label %.noexc1262.us.i, label %._crit_edge3429.i, !llvm.loop !658

._crit_edge3429.i:                                ; preds = %._crit_edge3421.us.i, %.noexc1262.lr.ph.i, %.preheader2854.i
  %.21018.lcssa.i = phi i32 [ %.01016.lcssa.i, %.preheader2854.i ], [ %.01016.lcssa.i, %.noexc1262.lr.ph.i ], [ %.lcssa612, %._crit_edge3421.us.i ]
  %.21014.lcssa.i = phi i32 [ %.01012.lcssa.i, %.preheader2854.i ], [ %.01012.lcssa.i, %.noexc1262.lr.ph.i ], [ %.lcssa611, %._crit_edge3421.us.i ]
  store i32 %.21018.lcssa.i, ptr %.111013444.i, align 4, !tbaa !67
  %i.bzs = getelementptr inbounds nuw i8, ptr %.111013444.i, i64 4
  store i32 %.21014.lcssa.i, ptr %i.bzs, align 4, !tbaa !67
  %i.bzt = getelementptr inbounds nuw i8, ptr %.111013444.i, i64 8 ; 2 uses
  %i.bzu = add nuw nsw i32 %.110983445.i, 2       ; 3 uses
  %i.bzv = or disjoint i32 %i.bzu, 1              ; 2 uses
  %i.bzw = icmp slt i32 %i.bzv, %i.nz
  br i1 %i.bzw, label %.noexc1272.i, label %.preheader2856.i, !llvm.loop !659

.noexc1258.i:                                     ; preds = %._crit_edge3515.i, %.noexc1258.lr.ph.i
  %.210993524.i = phi i32 [ %.11098.lcssa.i, %.noexc1258.lr.ph.i ], [ %i.cjs, %._crit_edge3515.i ] ; 3 uses
  %.211023523.i = phi ptr [ %.11101.lcssa.i, %.noexc1258.lr.ph.i ], [ %i.cjr, %._crit_edge3515.i ] ; 2 uses
  %i.bzx = sdiv i32 %.210993524.i, %i.ly          ; 3 uses
  %i.bzy = srem i32 %.210993524.i, %i.ly          ; 3 uses
  %i.bzz = load i32, ptr %i.d, align 4, !tbaa !67 ; 11 uses
  %i.caa = icmp sgt i32 %i.bzz, 7
  br i1 %i.caa, label %.noexc1256.lr.ph.i, label %._crit_edge3460.i

.noexc1256.lr.ph.i:                               ; preds = %.noexc1258.i
  %i.cab = load i32, ptr %i.c, align 4, !tbaa !67 ; 3 uses
  %i.cac = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !660
  %i.cad = sext i32 %i.cac to i64
  %i.cae = load i32, ptr %i.b, align 4, !tbaa !67
  %i.caf = mul nsw i32 %i.cae, %i.bzx
  %i.cag = sext i32 %i.caf to i64
  %i.cah = mul i64 %i.bqb, %i.cad
  %i.cai = mul i64 %i.cah, %i.cag
  %invariant.gep3466.i = getelementptr i8, ptr %i.bpz, i64 %i.cai
  %i.caj = load i32, ptr %i.a, align 4, !tbaa !67
  %i.cak = mul i32 %i.cab, %i.bzy
  %i.cal = mul i32 %i.cak, %i.caj
  %i.cam = sext i32 %i.cal to i64
  %invariant.gep3467.i = getelementptr i8, ptr %invariant.gep3466.i, i64 %i.cam ; 2 uses
  %i.can = load i32, ptr %i.f, align 4, !tbaa !67 ; 3 uses
  %i.cao = icmp sgt i32 %i.can, 0
  %i.cap = load ptr, ptr %i.g, align 8            ; 2 uses
  br i1 %i.cao, label %.noexc1256.lr.ph.split.us.i, label %.noexc1256.preheader.i

.noexc1256.preheader.i:                           ; preds = %.noexc1256.lr.ph.i
  %i.caq = and i32 %i.bzz, 2147483640
  br label %._crit_edge3460.i

.noexc1256.lr.ph.split.us.i:                      ; preds = %.noexc1256.lr.ph.i
  %i.car = icmp eq i32 %i.cab, 8
  %i.cas = add nsw i32 %i.can, -1
  %i.cat = zext nneg i32 %i.cas to i64
  %i.cau = shl nuw nsw i64 %i.cat, 3              ; 2 uses
  %wide.trip.count3794.i = zext nneg i32 %i.can to i64 ; 2 uses
  br i1 %i.car, label %.noexc1256.us.us.i.preheader, label %.noexc1256.us.i

.noexc1256.us.us.i.preheader:                     ; preds = %.noexc1256.lr.ph.split.us.i
  %i.cav = zext nneg i32 %i.bzz to i64
  br label %.noexc1256.us.us.i

.noexc1256.us.us.i:                               ; preds = %.noexc1256.us.us.i.preheader, %._crit_edge3452.split.us.us.us.i
  %indvars.iv = phi i64 [ 0, %.noexc1256.us.us.i.preheader ], [ %indvars.iv.next, %._crit_edge3452.split.us.us.us.i ] ; 2 uses
  %.09873458.us.us.i = phi ptr [ %i.bpy, %.noexc1256.us.us.i.preheader ], [ %scevgep3792.i, %._crit_edge3452.split.us.us.us.i ] ; 2 uses
  %i.caw = phi <4 x i32> [ zeroinitializer, %.noexc1256.us.us.i.preheader ], [ %i.cbn, %._crit_edge3452.split.us.us.us.i ]
  %i.cax = lshr exact i64 %indvars.iv, 3
  %.reass3465.us.us.i = mul i64 %factor.op.mul3464.i, %i.cax
  %gep3468.us.us.i = getelementptr i8, ptr %invariant.gep3467.i, i64 %.reass3465.us.us.i
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cu, %.noexc1256.us.us.i
  %indvars.iv3789.i = phi i64 [ %indvars.iv.next3790.i, %bb.cu ], [ 0, %.noexc1256.us.us.i ] ; 2 uses
  %.19883449.us.us.us.i = phi ptr [ %i.cbo, %bb.cu ], [ %.09873458.us.us.i, %.noexc1256.us.us.i ] ; 2 uses
  %.127833448.us.us.us.i = phi <4 x i32> [ %i.cbn, %bb.cu ], [ %i.caw, %.noexc1256.us.us.i ]
  %i.cay = getelementptr inbounds nuw [4 x i8], ptr %i.cap, i64 %indvars.iv3789.i
  %i.caz = load i32, ptr %i.cay, align 4, !tbaa !67
  %i.cba = sext i32 %i.caz to i64
  %i.cbb = getelementptr inbounds i8, ptr %gep3468.us.us.i, i64 %i.cba
  %i.cbc = load i64, ptr %i.cbb, align 1, !tbaa !254
  %i.cbd = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.cbc, i64 0
  %i.cbe = bitcast <2 x i64> %i.cbd to <16 x i8>  ; 2 uses
  %.lobit.i1702.us.us.us.i = ashr <16 x i8> %i.cbe, splat (i8 7)
  %i.cbf = shufflevector <16 x i8> %i.cbe, <16 x i8> %.lobit.i1702.us.us.us.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cbg = load i64, ptr %.19883449.us.us.us.i, align 1, !tbaa !254
  %i.cbh = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.cbg, i64 0
  %i.cbi = bitcast <2 x i64> %i.cbh to <16 x i8>  ; 2 uses
  %.lobit.i.us.us.us.i = ashr <16 x i8> %i.cbi, splat (i8 7)
  %i.cbj = shufflevector <16 x i8> %i.cbi, <16 x i8> %.lobit.i.us.us.us.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cbk = bitcast <16 x i8> %i.cbf to <8 x i16>
  %i.cbl = bitcast <16 x i8> %i.cbj to <8 x i16>
  %i.cbm = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cbk, <8 x i16> %i.cbl)
  %i.cbn = add <4 x i32> %i.cbm, %.127833448.us.us.us.i ; 3 uses
  %i.cbo = getelementptr inbounds nuw i8, ptr %.19883449.us.us.us.i, i64 8
  %indvars.iv.next3790.i = add nuw nsw i64 %indvars.iv3789.i, 1 ; 2 uses
  %exitcond3795.not.i = icmp eq i64 %indvars.iv.next3790.i, %wide.trip.count3794.i
  br i1 %exitcond3795.not.i, label %._crit_edge3452.split.us.us.us.i, label %bb.cu, !llvm.loop !663

._crit_edge3452.split.us.us.us.i:                 ; preds = %bb.cu
  %scevgep3791.i = getelementptr i8, ptr %.09873458.us.us.i, i64 8
  %scevgep3792.i = getelementptr i8, ptr %scevgep3791.i, i64 %i.cau ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.cbp = or disjoint i64 %indvars.iv.next, 7
  %i.cbq = icmp samesign ult i64 %i.cbp, %i.cav
  br i1 %i.cbq, label %.noexc1256.us.us.i, label %._crit_edge3460.loopexit.i, !llvm.loop !664

.noexc1256.us.i:                                  ; preds = %.noexc1256.lr.ph.split.us.i, %._crit_edge3452.split.us3474.i
  %.09863459.us.i = phi i32 [ %i.cdf, %._crit_edge3452.split.us3474.i ], [ 0, %.noexc1256.lr.ph.split.us.i ] ; 2 uses
  %.09873458.us.i = phi ptr [ %scevgep3785.i, %._crit_edge3452.split.us3474.i ], [ %i.bpy, %.noexc1256.lr.ph.split.us.i ] ; 2 uses
  %i.cbr = phi <4 x i32> [ %i.cdd, %._crit_edge3452.split.us3474.i ], [ zeroinitializer, %.noexc1256.lr.ph.split.us.i ]
  %i.cbs = sdiv i32 %.09863459.us.i, %i.cab
  %i.cbt = sext i32 %i.cbs to i64
  %.reass3465.us.i = mul i64 %factor.op.mul3464.i, %i.cbt
  %gep3468.us.i = getelementptr i8, ptr %invariant.gep3467.i, i64 %.reass3465.us.i
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %.noexc1256.us.i
  %indvars.iv3782.i = phi i64 [ 0, %.noexc1256.us.i ], [ %indvars.iv.next3783.i, %bb.cv ] ; 2 uses
  %.19883449.us3470.i = phi ptr [ %.09873458.us.i, %.noexc1256.us.i ], [ %i.cde, %bb.cv ] ; 2 uses
  %.127833448.us3471.i = phi <4 x i32> [ %i.cbr, %.noexc1256.us.i ], [ %i.cdd, %bb.cv ]
  %i.cbu = getelementptr inbounds nuw [4 x i8], ptr %i.cap, i64 %indvars.iv3782.i
  %i.cbv = load i32, ptr %i.cbu, align 4, !tbaa !67
  %i.cbw = sext i32 %i.cbv to i64
  %i.cbx = getelementptr inbounds i8, ptr %gep3468.us.i, i64 %i.cbw ; 8 uses
  %i.cby = load i8, ptr %i.cbx, align 1, !tbaa !254
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.cbx, i64 %i.lx
  %i.cca = load i8, ptr %i.cbz, align 1, !tbaa !254
  %i.ccb = getelementptr inbounds nuw i8, ptr %i.cbx, i64 %i.od
  %i.ccc = load i8, ptr %i.ccb, align 1, !tbaa !254
  %i.ccd = getelementptr inbounds nuw i8, ptr %i.cbx, i64 %i.oe
  %i.cce = load i8, ptr %i.ccd, align 1, !tbaa !254
  %i.ccf = getelementptr inbounds nuw i8, ptr %i.cbx, i64 %i.of
  %i.ccg = load i8, ptr %i.ccf, align 1, !tbaa !254
  %i.cch = getelementptr inbounds nuw i8, ptr %i.cbx, i64 %i.og
  %i.cci = load i8, ptr %i.cch, align 1, !tbaa !254
  %i.ccj = getelementptr inbounds nuw i8, ptr %i.cbx, i64 %i.oh
  %i.cck = load i8, ptr %i.ccj, align 1, !tbaa !254
  %i.ccl = getelementptr inbounds nuw i8, ptr %i.cbx, i64 %i.oi
  %i.ccm = load i8, ptr %i.ccl, align 1, !tbaa !254
  %i.ccn = insertelement <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %i.cby, i64 0
  %i.cco = insertelement <16 x i8> %i.ccn, i8 %i.cca, i64 1
  %i.ccp = insertelement <16 x i8> %i.cco, i8 %i.ccc, i64 2
  %i.ccq = insertelement <16 x i8> %i.ccp, i8 %i.cce, i64 3
  %i.ccr = insertelement <16 x i8> %i.ccq, i8 %i.ccg, i64 4
  %i.ccs = insertelement <16 x i8> %i.ccr, i8 %i.cci, i64 5
  %i.cct = insertelement <16 x i8> %i.ccs, i8 %i.cck, i64 6
  %i.ccu = insertelement <16 x i8> %i.cct, i8 %i.ccm, i64 7 ; 2 uses
  %.lobit.i1702.us3472.i = ashr <16 x i8> %i.ccu, splat (i8 7)
  %i.ccv = shufflevector <16 x i8> %i.ccu, <16 x i8> %.lobit.i1702.us3472.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ccw = load i64, ptr %.19883449.us3470.i, align 1, !tbaa !254
  %i.ccx = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ccw, i64 0
  %i.ccy = bitcast <2 x i64> %i.ccx to <16 x i8>  ; 2 uses
  %.lobit.i.us3473.i = ashr <16 x i8> %i.ccy, splat (i8 7)
  %i.ccz = shufflevector <16 x i8> %i.ccy, <16 x i8> %.lobit.i.us3473.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cda = bitcast <16 x i8> %i.ccv to <8 x i16>
  %i.cdb = bitcast <16 x i8> %i.ccz to <8 x i16>
  %i.cdc = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cda, <8 x i16> %i.cdb)
  %i.cdd = add <4 x i32> %i.cdc, %.127833448.us3471.i ; 3 uses
  %i.cde = getelementptr inbounds nuw i8, ptr %.19883449.us3470.i, i64 8
  %indvars.iv.next3783.i = add nuw nsw i64 %indvars.iv3782.i, 1 ; 2 uses
  %exitcond3788.not.i = icmp eq i64 %indvars.iv.next3783.i, %wide.trip.count3794.i
  br i1 %exitcond3788.not.i, label %._crit_edge3452.split.us3474.i, label %bb.cv, !llvm.loop !663

._crit_edge3452.split.us3474.i:                   ; preds = %bb.cv
  %scevgep3784.i = getelementptr i8, ptr %.09873458.us.i, i64 8
  %scevgep3785.i = getelementptr i8, ptr %scevgep3784.i, i64 %i.cau ; 2 uses
  %i.cdf = add nuw nsw i32 %.09863459.us.i, 8     ; 2 uses
  %i.cdg = or disjoint i32 %i.cdf, 7
  %i.cdh = icmp slt i32 %i.cdg, %i.bzz
  br i1 %i.cdh, label %.noexc1256.us.i, label %._crit_edge3460.loopexit3530.i, !llvm.loop !664

._crit_edge3460.loopexit.i:                       ; preds = %._crit_edge3452.split.us.us.us.i
  %i.cdi = and i32 %i.bzz, 2147483640
  br label %._crit_edge3460.i

._crit_edge3460.loopexit3530.i:                   ; preds = %._crit_edge3452.split.us3474.i
  %i.cdj = and i32 %i.bzz, 2147483640
  br label %._crit_edge3460.i

._crit_edge3460.i:                                ; preds = %._crit_edge3460.loopexit3530.i, %._crit_edge3460.loopexit.i, %.noexc1256.preheader.i, %.noexc1258.i
  %i.cdk = phi <4 x i32> [ zeroinitializer, %.noexc1258.i ], [ %i.cbn, %._crit_edge3460.loopexit.i ], [ %i.cdd, %._crit_edge3460.loopexit3530.i ], [ zeroinitializer, %.noexc1256.preheader.i ]
  %.0987.lcssa.i = phi ptr [ %i.bpy, %.noexc1258.i ], [ %scevgep3792.i, %._crit_edge3460.loopexit.i ], [ %scevgep3785.i, %._crit_edge3460.loopexit3530.i ], [ %i.bpy, %.noexc1256.preheader.i ] ; 3 uses
  %.0986.lcssa.i = phi i32 [ 0, %.noexc1258.i ], [ %i.cdi, %._crit_edge3460.loopexit.i ], [ %i.cdj, %._crit_edge3460.loopexit3530.i ], [ %i.caq, %.noexc1256.preheader.i ] ; 5 uses
  %i.cdl = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cdk) ; 3 uses
  %i.cdm = or disjoint i32 %.0986.lcssa.i, 1
  %i.cdn = icmp slt i32 %i.cdm, %i.bzz
  br i1 %i.cdn, label %.noexc1254.lr.ph.i, label %.preheader.i

.noexc1254.lr.ph.i:                               ; preds = %._crit_edge3460.i
  %i.cdo = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !665
  %i.cdp = sext i32 %i.cdo to i64
  %i.cdq = load i32, ptr %i.b, align 4, !tbaa !67
  %i.cdr = mul nsw i32 %i.cdq, %i.bzx
  %i.cds = sext i32 %i.cdr to i64
  %i.cdt = mul i64 %i.bqb, %i.cdp
  %i.cdu = mul i64 %i.cdt, %i.cds
  %invariant.gep3499.i = getelementptr i8, ptr %i.bpz, i64 %i.cdu
  %i.cdv = load i32, ptr %i.a, align 4, !tbaa !67
  %i.cdw = mul nsw i32 %i.cdv, %i.bzy
  %i.cdx = sext i32 %i.cdw to i64
  %invariant.gep3500.i = getelementptr i8, ptr %invariant.gep3499.i, i64 %i.cdx
  %i.cdy = load i32, ptr %i.f, align 4, !tbaa !67 ; 5 uses
  %i.cdz = icmp sgt i32 %i.cdy, 0
  %i.cea = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.cdz, label %.noexc1254.us.preheader.i, label %.noexc1254.preheader.i

.noexc1254.preheader.i:                           ; preds = %.noexc1254.lr.ph.i
  %i.ceb = or disjoint i32 %.0986.lcssa.i, 2
  %13 = add nsw i32 %i.bzz, -2
  %reass.sub285 = sub nsw i32 %13, %.0986.lcssa.i
  %i.cec = and i32 %reass.sub285, -2
  %i.ced = add i32 %i.ceb, %i.cec
  br label %.preheader.i

.noexc1254.us.preheader.i:                        ; preds = %.noexc1254.lr.ph.i
  %i.cee = add nsw i32 %i.cdy, -1
  %i.cef = zext nneg i32 %i.cee to i64
  %i.ceg = shl nuw nsw i64 %i.cef, 1
  %i.ceh = zext nneg i32 %.0986.lcssa.i to i64
  %wide.trip.count3802.i = zext nneg i32 %i.cdy to i64 ; 2 uses
  %xtraiter673 = and i64 %wide.trip.count3802.i, 1
  %i.cei = icmp eq i32 %i.cdy, 1
  %unroll_iter677 = and i64 %wide.trip.count3802.i, 2147483646
  %lcmp.mod674.not = icmp eq i64 %xtraiter673, 0
  %lcmp.mod676 = trunc i32 %i.cdy to i1
  br label %.noexc1254.us.i

.noexc1254.us.i:                                  ; preds = %._crit_edge3488.us.i, %.noexc1254.us.preheader.i
  %indvars.iv3804.i = phi i64 [ %i.ceh, %.noexc1254.us.preheader.i ], [ %indvars.iv.next3805.i, %._crit_edge3488.us.i ] ; 2 uses
  %.29893492.us.i = phi ptr [ %.0987.lcssa.i, %.noexc1254.us.preheader.i ], [ %scevgep3800.i, %._crit_edge3488.us.i ] ; 3 uses
  %.09903491.us.i = phi i32 [ %i.cdl, %.noexc1254.us.preheader.i ], [ %.lcssa617, %._crit_edge3488.us.i ] ; 2 uses
  %.reass3498.us.i = mul i64 %factor.op.mul3464.i, %indvars.iv3804.i
  %gep3501.us.i = getelementptr i8, ptr %invariant.gep3500.i, i64 %.reass3498.us.i ; 3 uses
  br i1 %i.cei, label %.epil.preheader672, label %.noexc1254.us.i.new

.noexc1254.us.i.new:                              ; preds = %.noexc1254.us.i, %.noexc1254.us.i.new
  %indvars.iv3797.i = phi i64 [ %indvars.iv.next3798.i.1, %.noexc1254.us.i.new ], [ 0, %.noexc1254.us.i ] ; 3 uses
  %.33485.us.i = phi ptr [ %i.cfv, %.noexc1254.us.i.new ], [ %.29893492.us.i, %.noexc1254.us.i ] ; 5 uses
  %.19913484.us.i = phi i32 [ %i.cfu, %.noexc1254.us.i.new ], [ %.09903491.us.i, %.noexc1254.us.i ]
  %niter678 = phi i64 [ %niter678.next.1, %.noexc1254.us.i.new ], [ 0, %.noexc1254.us.i ]
  %i.cej = getelementptr inbounds nuw [4 x i8], ptr %i.cea, i64 %indvars.iv3797.i
  %i.cek = load i32, ptr %i.cej, align 4, !tbaa !67
  %i.cel = sext i32 %i.cek to i64
  %i.cem = getelementptr inbounds i8, ptr %gep3501.us.i, i64 %i.cel ; 2 uses
  %i.cen = load i8, ptr %i.cem, align 1, !tbaa !254
  %i.ceo = sext i8 %i.cen to i32
  %i.cep = load i8, ptr %.33485.us.i, align 1, !tbaa !254
  %i.ceq = sext i8 %i.cep to i32
  %i.cer = mul nsw i32 %i.ceq, %i.ceo
  %i.ces = add nsw i32 %i.cer, %.19913484.us.i
  %i.cet = getelementptr inbounds nuw i8, ptr %i.cem, i64 %i.lx
  %i.ceu = load i8, ptr %i.cet, align 1, !tbaa !254
  %i.cev = sext i8 %i.ceu to i32
  %i.cew = getelementptr inbounds nuw i8, ptr %.33485.us.i, i64 1
  %i.cex = load i8, ptr %i.cew, align 1, !tbaa !254
  %i.cey = sext i8 %i.cex to i32
  %i.cez = mul nsw i32 %i.cey, %i.cev
  %i.cfa = add nsw i32 %i.ces, %i.cez
  %i.cfb = getelementptr inbounds nuw i8, ptr %.33485.us.i, i64 2
  %i.cfc = getelementptr inbounds nuw [4 x i8], ptr %i.cea, i64 %indvars.iv3797.i
  %i.cfd = getelementptr inbounds nuw i8, ptr %i.cfc, i64 4
  %i.cfe = load i32, ptr %i.cfd, align 4, !tbaa !67
  %i.cff = sext i32 %i.cfe to i64
  %i.cfg = getelementptr inbounds i8, ptr %gep3501.us.i, i64 %i.cff ; 2 uses
  %i.cfh = load i8, ptr %i.cfg, align 1, !tbaa !254
  %i.cfi = sext i8 %i.cfh to i32
  %i.cfj = load i8, ptr %i.cfb, align 1, !tbaa !254
  %i.cfk = sext i8 %i.cfj to i32
  %i.cfl = mul nsw i32 %i.cfk, %i.cfi
  %i.cfm = add nsw i32 %i.cfl, %i.cfa
  %i.cfn = getelementptr inbounds nuw i8, ptr %i.cfg, i64 %i.lx
  %i.cfo = load i8, ptr %i.cfn, align 1, !tbaa !254
  %i.cfp = sext i8 %i.cfo to i32
  %i.cfq = getelementptr inbounds nuw i8, ptr %.33485.us.i, i64 3
  %i.cfr = load i8, ptr %i.cfq, align 1, !tbaa !254
  %i.cfs = sext i8 %i.cfr to i32
  %i.cft = mul nsw i32 %i.cfs, %i.cfp
  %i.cfu = add nsw i32 %i.cfm, %i.cft             ; 3 uses
  %i.cfv = getelementptr inbounds nuw i8, ptr %.33485.us.i, i64 4 ; 2 uses
  %indvars.iv.next3798.i.1 = add nuw nsw i64 %indvars.iv3797.i, 2 ; 2 uses
  %niter678.next.1 = add i64 %niter678, 2         ; 2 uses
  %niter678.ncmp.1 = icmp eq i64 %niter678.next.1, %unroll_iter677
  br i1 %niter678.ncmp.1, label %._crit_edge3488.us.i.unr-lcssa, label %.noexc1254.us.i.new, !llvm.loop !668

._crit_edge3488.us.i.unr-lcssa:                   ; preds = %.noexc1254.us.i.new
  br i1 %lcmp.mod674.not, label %._crit_edge3488.us.i, label %.epil.preheader672

.epil.preheader672:                               ; preds = %._crit_edge3488.us.i.unr-lcssa, %.noexc1254.us.i
  %indvars.iv3797.i.epil.init = phi i64 [ 0, %.noexc1254.us.i ], [ %indvars.iv.next3798.i.1, %._crit_edge3488.us.i.unr-lcssa ]
  %.33485.us.i.epil.init = phi ptr [ %.29893492.us.i, %.noexc1254.us.i ], [ %i.cfv, %._crit_edge3488.us.i.unr-lcssa ] ; 2 uses
  %.19913484.us.i.epil.init = phi i32 [ %.09903491.us.i, %.noexc1254.us.i ], [ %i.cfu, %._crit_edge3488.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod676)
  %i.cfw = getelementptr inbounds nuw [4 x i8], ptr %i.cea, i64 %indvars.iv3797.i.epil.init
  %i.cfx = load i32, ptr %i.cfw, align 4, !tbaa !67
  %i.cfy = sext i32 %i.cfx to i64
  %i.cfz = getelementptr inbounds i8, ptr %gep3501.us.i, i64 %i.cfy ; 2 uses
  %i.cga = load i8, ptr %i.cfz, align 1, !tbaa !254
  %i.cgb = sext i8 %i.cga to i32
  %i.cgc = load i8, ptr %.33485.us.i.epil.init, align 1, !tbaa !254
  %i.cgd = sext i8 %i.cgc to i32
  %i.cge = mul nsw i32 %i.cgd, %i.cgb
  %i.cgf = add nsw i32 %i.cge, %.19913484.us.i.epil.init
  %i.cgg = getelementptr inbounds nuw i8, ptr %i.cfz, i64 %i.lx
  %i.cgh = load i8, ptr %i.cgg, align 1, !tbaa !254
  %i.cgi = sext i8 %i.cgh to i32
  %i.cgj = getelementptr inbounds nuw i8, ptr %.33485.us.i.epil.init, i64 1
  %i.cgk = load i8, ptr %i.cgj, align 1, !tbaa !254
  %i.cgl = sext i8 %i.cgk to i32
  %i.cgm = mul nsw i32 %i.cgl, %i.cgi
  %i.cgn = add nsw i32 %i.cgf, %i.cgm
  br label %._crit_edge3488.us.i

._crit_edge3488.us.i:                             ; preds = %._crit_edge3488.us.i.unr-lcssa, %.epil.preheader672
  %.lcssa617 = phi i32 [ %i.cfu, %._crit_edge3488.us.i.unr-lcssa ], [ %i.cgn, %.epil.preheader672 ] ; 2 uses
  %scevgep3799.i.a = getelementptr i8, ptr %.29893492.us.i, i64 2
  %scevgep3800.i = getelementptr i8, ptr %scevgep3799.i.a, i64 %i.ceg ; 2 uses
  %indvars.iv.next3805.i = add nuw nsw i64 %indvars.iv3804.i, 2 ; 2 uses
  %i.cgo = trunc i64 %indvars.iv.next3805.i to i32 ; 2 uses
  %i.cgp = or i32 %i.cgo, 1
  %i.cgq = icmp slt i32 %i.cgp, %i.bzz
  br i1 %i.cgq, label %.noexc1254.us.i, label %.preheader.i, !llvm.loop !669

.preheader.i:                                     ; preds = %._crit_edge3488.us.i, %.noexc1254.preheader.i, %._crit_edge3460.i
  %.0990.lcssa.i = phi i32 [ %i.cdl, %._crit_edge3460.i ], [ %i.cdl, %.noexc1254.preheader.i ], [ %.lcssa617, %._crit_edge3488.us.i ] ; 3 uses
  %.2989.lcssa.i = phi ptr [ %.0987.lcssa.i, %._crit_edge3460.i ], [ %.0987.lcssa.i, %.noexc1254.preheader.i ], [ %scevgep3800.i, %._crit_edge3488.us.i ]
  %.1.lcssa.i = phi i32 [ %.0986.lcssa.i, %._crit_edge3460.i ], [ %i.ced, %.noexc1254.preheader.i ], [ %i.cgo, %._crit_edge3488.us.i ] ; 2 uses
  %i.cgr = icmp slt i32 %.1.lcssa.i, %i.bzz
  br i1 %i.cgr, label %.noexc.lr.ph.i, label %._crit_edge3515.i

.noexc.lr.ph.i:                                   ; preds = %.preheader.i
  %i.cgs = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !670
  %i.cgt = sext i32 %i.cgs to i64
  %i.cgu = load i32, ptr %i.b, align 4, !tbaa !67
  %i.cgv = mul nsw i32 %i.cgu, %i.bzx
  %i.cgw = sext i32 %i.cgv to i64
  %i.cgx = mul i64 %i.bqb, %i.cgt
  %i.cgy = mul i64 %i.cgx, %i.cgw
  %invariant.gep3519.i = getelementptr i8, ptr %i.bpz, i64 %i.cgy
  %i.cgz = load i32, ptr %i.a, align 4, !tbaa !67
  %i.cha = mul nsw i32 %i.cgz, %i.bzy
  %i.chb = sext i32 %i.cha to i64
  %invariant.gep3520.i = getelementptr i8, ptr %invariant.gep3519.i, i64 %i.chb
  %i.chc = load i32, ptr %i.f, align 4, !tbaa !67 ; 3 uses
  %i.chd = icmp sgt i32 %i.chc, 0
  %i.che = load ptr, ptr %i.g, align 8            ; 5 uses
  br i1 %i.chd, label %.noexc.us.preheader.i, label %._crit_edge3515.i

.noexc.us.preheader.i:                            ; preds = %.noexc.lr.ph.i
  %i.chf = zext i32 %.1.lcssa.i to i64
  %i.chg = zext nneg i32 %i.chc to i64            ; 3 uses
  %xtraiter680 = and i64 %i.chg, 3                ; 3 uses
  %i.chh = icmp ult i32 %i.chc, 4
  %unroll_iter684 = and i64 %i.chg, 2147483644
  %lcmp.mod681.not = icmp eq i64 %xtraiter680, 0
  %lcmp.mod683 = icmp ne i64 %xtraiter680, 0
  br label %.noexc.us.i

.noexc.us.i:                                      ; preds = %._crit_edge3509.us.i, %.noexc.us.preheader.i
  %indvars.iv3814.i = phi i64 [ %i.chf, %.noexc.us.preheader.i ], [ %indvars.iv.next3815.i, %._crit_edge3509.us.i ] ; 2 uses
  %.43513.us.i = phi ptr [ %.2989.lcssa.i, %.noexc.us.preheader.i ], [ %i.cjo, %._crit_edge3509.us.i ] ; 3 uses
  %.29923512.us.i = phi i32 [ %.0990.lcssa.i, %.noexc.us.preheader.i ], [ %.lcssa619, %._crit_edge3509.us.i ] ; 2 uses
  %.reass3518.us.i = mul i64 %factor.op.mul3464.i, %indvars.iv3814.i
  %gep3521.us.i = getelementptr i8, ptr %invariant.gep3520.i, i64 %.reass3518.us.i ; 5 uses
  br i1 %i.chh, label %.epil.preheader679, label %.noexc.us.i.new

.noexc.us.i.new:                                  ; preds = %.noexc.us.i, %.noexc.us.i.new
  %indvars.iv3807.i = phi i64 [ %indvars.iv.next3808.i.3, %.noexc.us.i.new ], [ 0, %.noexc.us.i ] ; 5 uses
  %.53506.us.i = phi ptr [ %i.cjc, %.noexc.us.i.new ], [ %.43513.us.i, %.noexc.us.i ] ; 5 uses
  %.39933505.us.i = phi i32 [ %i.cjb, %.noexc.us.i.new ], [ %.29923512.us.i, %.noexc.us.i ]
  %niter685 = phi i64 [ %niter685.next.3, %.noexc.us.i.new ], [ 0, %.noexc.us.i ]
  %i.chi = getelementptr inbounds nuw [4 x i8], ptr %i.che, i64 %indvars.iv3807.i
  %i.chj = load i32, ptr %i.chi, align 4, !tbaa !67
  %i.chk = sext i32 %i.chj to i64
  %i.chl = getelementptr inbounds i8, ptr %gep3521.us.i, i64 %i.chk
  %i.chm = load i8, ptr %i.chl, align 1, !tbaa !254
  %i.chn = sext i8 %i.chm to i32
  %i.cho = load i8, ptr %.53506.us.i, align 1, !tbaa !254
  %i.chp = sext i8 %i.cho to i32
  %i.chq = mul nsw i32 %i.chp, %i.chn
  %i.chr = add nsw i32 %i.chq, %.39933505.us.i
  %i.chs = getelementptr inbounds nuw i8, ptr %.53506.us.i, i64 1
  %i.cht = getelementptr inbounds nuw [4 x i8], ptr %i.che, i64 %indvars.iv3807.i
  %i.chu = getelementptr inbounds nuw i8, ptr %i.cht, i64 4
  %i.chv = load i32, ptr %i.chu, align 4, !tbaa !67
  %i.chw = sext i32 %i.chv to i64
  %i.chx = getelementptr inbounds i8, ptr %gep3521.us.i, i64 %i.chw
  %i.chy = load i8, ptr %i.chx, align 1, !tbaa !254
  %i.chz = sext i8 %i.chy to i32
  %i.cia = load i8, ptr %i.chs, align 1, !tbaa !254
  %i.cib = sext i8 %i.cia to i32
  %i.cic = mul nsw i32 %i.cib, %i.chz
  %i.cid = add nsw i32 %i.cic, %i.chr
  %i.cie = getelementptr inbounds nuw i8, ptr %.53506.us.i, i64 2
  %i.cif = getelementptr inbounds nuw [4 x i8], ptr %i.che, i64 %indvars.iv3807.i
  %i.cig = getelementptr inbounds nuw i8, ptr %i.cif, i64 8
  %i.cih = load i32, ptr %i.cig, align 4, !tbaa !67
  %i.cii = sext i32 %i.cih to i64
  %i.cij = getelementptr inbounds i8, ptr %gep3521.us.i, i64 %i.cii
  %i.cik = load i8, ptr %i.cij, align 1, !tbaa !254
  %i.cil = sext i8 %i.cik to i32
  %i.cim = load i8, ptr %i.cie, align 1, !tbaa !254
  %i.cin = sext i8 %i.cim to i32
  %i.cio = mul nsw i32 %i.cin, %i.cil
  %i.cip = add nsw i32 %i.cio, %i.cid
  %i.ciq = getelementptr inbounds nuw i8, ptr %.53506.us.i, i64 3
  %i.cir = getelementptr inbounds nuw [4 x i8], ptr %i.che, i64 %indvars.iv3807.i
  %i.cis = getelementptr inbounds nuw i8, ptr %i.cir, i64 12
  %i.cit = load i32, ptr %i.cis, align 4, !tbaa !67
  %i.ciu = sext i32 %i.cit to i64
  %i.civ = getelementptr inbounds i8, ptr %gep3521.us.i, i64 %i.ciu
  %i.ciw = load i8, ptr %i.civ, align 1, !tbaa !254
  %i.cix = sext i8 %i.ciw to i32
end_hunk_6
begin_hunk_7_@_ZN4ncnnL20conv3x3s1_winograd23ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.db = load ptr, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %.not.i35 = icmp eq ptr %i.db, null
  br i1 %.not.i35, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.f

bb.f:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit48
  %i.dc = atomicrmw add ptr %i.db, i32 -1 acq_rel, align 4
  %i.dd = icmp eq i32 %i.dc, 1
  br i1 %i.dd, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit33

bb.g:                                             ; preds = %bb.f
  %i.de = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 3 uses
  %.not3.i36 = icmp eq ptr %i.de, null
  %i.df = load ptr, ptr %12, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !9
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  invoke void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef %i.df)
          to label %_ZN4ncnn3MatD2Ev.exit33 unwind label %bb.k, !inline_history !19

bb.i:                                             ; preds = %bb.g
  %.not.i44 = icmp eq ptr %i.df, null
  br i1 %.not.i44, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.df) #12
  br label %_ZN4ncnn3MatD2Ev.exit33

bb.k:                                             ; preds = %bb.h
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit33:                          ; preds = %bb.f, %_ZN4ncnn3Mat7channelEi.exit48, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.dl = load ptr, ptr %i.v, align 8, !tbaa !11  ; 2 uses
  %.not.i39 = icmp eq ptr %i.dl, null
  br i1 %.not.i39, label %_ZN4ncnn3MatD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit33
  %i.dm = atomicrmw add ptr %i.dl, i32 -1 acq_rel, align 4
  %i.dn = icmp eq i32 %i.dm, 1
  br i1 %i.dn, label %bb.m, label %_ZN4ncnn3MatD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.do = load ptr, ptr %i.y, align 8, !tbaa !17  ; 3 uses
  %.not3.i40 = icmp eq ptr %i.do, null
  %i.dp = load ptr, ptr %11, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !9
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.dp)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.q, !inline_history !19

bb.o:                                             ; preds = %bb.m
  %.not.i43 = icmp eq ptr %i.dp, null
  br i1 %.not.i43, label %_ZN4ncnn3MatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.dp) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.q:                                             ; preds = %bb.n
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.l, %_ZN4ncnn3MatD2Ev.exit33, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.dv = add nsw i32 %.067, 1
  %i.dw = load i32, ptr %i.e, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.067, %i.dw
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.s:                                             ; preds = %bb.c
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #27
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20conv3x3s1_winograd23ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ah

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not148 = icmp sgt i32 %i.k, %i.j
  br i1 %.not148, label %._crit_edge152, label %.lr.ph151

.lr.ph151:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 44
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph151, %_ZN4ncnn3MatD2Ev.exit
  %.045149 = phi i32 [ %i.k, %.lr.ph151 ], [ %i.bm, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.as = load i32, ptr %3, align 4, !tbaa !67
  %i.at = mul nsw i32 %i.as, %.045149             ; 4 uses
  %i.au = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit76 unwind label %bb.ai

_ZN4ncnn3Mat7channelEi.exit76:                    ; preds = %bb.c
  %i.av = load ptr, ptr %4, align 8, !tbaa !18, !noalias !756
  %i.aw = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !756
  %i.ax = sext i32 %i.au to i64
  %i.ay = mul i64 %i.aw, %i.ax
  %i.az = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !756
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba ; 4 uses
  %i.bc = load i32, ptr %5, align 4, !tbaa !67
  %i.bd = sub nsw i32 %i.bc, %i.at
  %i.be = load i32, ptr %3, align 4, !tbaa !67
  %.sroa.speculated121 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bd) ; 8 uses
  %i.bf = load i32, ptr %6, align 4, !tbaa !67    ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit76
  %i.bh = icmp sgt i32 %.sroa.speculated121, 3
  %i.bi = sext i32 %i.at to i64                   ; 3 uses
  %i.bj = and i32 %.sroa.speculated121, 2147483644
  %i.bk = zext nneg i32 %.sroa.speculated121 to i64
  %16 = add i32 %.sroa.speculated121, -2
  %i.bl = sext i32 %.sroa.speculated121 to i64    ; 2 uses
  %invariant.op.i = add nsw i64 %i.bl, -1
  %.pre = load i32, ptr %7, align 4, !tbaa !67
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit, %_ZN4ncnn3Mat7channelEi.exit76
  %i.bm = add nsw i32 %.045149, 1
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.045149, %i.bn
  br i1 %.not.not, label %bb.c, label %._crit_edge152

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit
  %i.bo = phi i32 [ %.pre, %.lr.ph ], [ %i.rg, %_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit ]
  %i.bp = phi i32 [ %i.bf, %.lr.ph ], [ %i.ri, %_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit ]
  %.044147 = phi i32 [ 0, %.lr.ph ], [ %i.rh, %_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit ] ; 6 uses
  %i.bq = sub nsw i32 %i.bp, %.044147
  %.sroa.speculated117 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.bq) ; 19 uses
  %i.br = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %bb.d
  %.pre153 = load i32, ptr %9, align 4, !tbaa !67
  br label %.noexc

._crit_edge:                                      ; preds = %.noexc, %bb.d
  %.val78 = load ptr, ptr %13, align 8, !tbaa !18 ; 6 uses
  %i.bt = load i32, ptr %i.an, align 4, !tbaa !75 ; 7 uses
  %i.bu = load i32, ptr %i.ao, align 8, !tbaa !76 ; 7 uses
  %i.bv = load i32, ptr %i.ap, align 8, !tbaa !66 ; 6 uses
  %i.bw = load i64, ptr %i.aq, align 8, !tbaa !20
  %i.bx = sext i32 %i.bv to i64
  %i.by = mul i64 %i.bw, %i.bx                    ; 6 uses
  %i.bz = add nsw i32 %i.bt, 1
  %i.ca = sdiv i32 %i.bz, 2                       ; 6 uses
  %factor.op.mul64.i = shl i32 %.sroa.speculated117, 4 ; 4 uses
  br i1 %i.bh, label %.lr.ph67.i, label %.preheader55.i

.lr.ph67.i:                                       ; preds = %._crit_edge
  %.not333.i = icmp eq ptr %.val78, null
  %i.cb = getelementptr inbounds [4 x i8], ptr %.val78, i64 %i.bi
  %i.cc = icmp sgt i32 %.sroa.speculated117, 0
  %i.cd = shl nsw i32 %.sroa.speculated117, 2
  %i.ce = sext i32 %i.cd to i64
  %i.cf = shl nsw i32 %.sroa.speculated117, 3
  %i.cg = sext i32 %i.cf to i64
  %i.ch = mul nsw i32 %.sroa.speculated117, 12
  %i.ci = sext i32 %i.ch to i64
  %i.cj = sext i32 %factor.op.mul64.i to i64      ; 12 uses
  %.idx.i = shl i64 %i.by, 3                      ; 2 uses
  %.idx335.i = mul i64 %i.by, 12                  ; 2 uses
  %i.ck = mul nsw i32 %i.bv, %i.bt
  %i.cl = sext i32 %i.ck to i64
  br i1 %i.cc, label %.lr.ph67.split.us.preheader.i, label %.preheader55.i

.lr.ph67.split.us.preheader.i:                    ; preds = %.lr.ph67.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %.lr.ph67.split.us.i

.lr.ph67.split.us.i:                              ; preds = %._crit_edge.us.i, %.lr.ph67.split.us.preheader.i
  %indvars.iv135.i = phi i64 [ 0, %.lr.ph67.split.us.preheader.i ], [ %indvars.iv.next136.i, %._crit_edge.us.i ] ; 3 uses
  br i1 %.not333.i, label %.lr.ph.us.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph67.split.us.i
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv135.i
  %i.cn = load <4 x float>, ptr %i.cm, align 1, !tbaa !254
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.e, %.lr.ph67.split.us.i
  %i.co = phi fast <4 x float> [ %i.cn, %bb.e ], [ zeroinitializer, %.lr.ph67.split.us.i ] ; 3 uses
  %i.cp = trunc nuw nsw i64 %indvars.iv135.i to i32 ; 2 uses
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul64.i, %i.cp
  %i.cq = sext i32 %factor.op.mul.reass.us.i to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.cq
  %i.cs = add i32 %i.at, %i.cp
  %i.ct = sdiv i32 %i.cs, %i.bv
  %i.cu = sext i32 %i.ct to i64
  br label %_ZN4ncnn3MatD2Ev.exit337.us.i

_ZN4ncnn3MatD2Ev.exit337.us.i:                    ; preds = %bb.r, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.r ] ; 3 uses
  %.idx197.i.a = shl nuw nsw i64 %indvars.iv.i, 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx197.i.a ; 5 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.ce ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cg ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.ci ; 2 uses
  %i.cz = load <4 x float>, ptr %i.cw, align 16, !tbaa !254 ; 2 uses
  %i.da = load <4 x float>, ptr %i.cx, align 16, !tbaa !254 ; 2 uses
  %i.db = load <4 x float>, ptr %i.cy, align 16, !tbaa !254
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cj ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cj ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.cj ; 2 uses
  %i.df = load <4 x float>, ptr %i.dc, align 16, !tbaa !254 ; 2 uses
  %i.dg = load <4 x float>, ptr %i.dd, align 16, !tbaa !254 ; 2 uses
  %i.dh = load <4 x float>, ptr %i.de, align 16, !tbaa !254
  %i.di = fsub fast <4 x float> %i.df, %i.dg
  %i.dj = fadd fast <4 x float> %i.di, %i.dh
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.cj ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.cj ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.cj ; 2 uses
  %i.dn = load <4 x float>, ptr %i.dk, align 16, !tbaa !254 ; 2 uses
  %i.do = load <4 x float>, ptr %i.dl, align 16, !tbaa !254 ; 2 uses
  %i.dp = load <4 x float>, ptr %i.dm, align 16, !tbaa !254
  %i.dq = fsub fast <4 x float> %i.dn, %i.do
  %i.dr = fadd fast <4 x float> %i.dq, %i.dp      ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.cj
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.cj
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.cj
  %i.dv = load <4 x float>, ptr %i.ds, align 16, !tbaa !254 ; 2 uses
  %i.dw = load <4 x float>, ptr %i.dt, align 16, !tbaa !254 ; 2 uses
  %i.dx = load <4 x float>, ptr %i.du, align 16, !tbaa !254
  %i.dy = trunc i64 %indvars.iv.i to i32
  %i.dz = add i32 %.044147, %i.dy                 ; 2 uses
  %i.ea = sdiv i32 %i.dz, %i.ca
  %i.eb = srem i32 %i.dz, %i.ca
  %i.ec = load i32, ptr %i.an, align 4, !tbaa !75, !noalias !759
  %i.ed = load ptr, ptr %12, align 8, !tbaa !18, !noalias !759
  %i.ee = load i64, ptr %i.aq, align 8, !tbaa !20, !noalias !759
  %i.ef = mul i64 %i.ee, %i.cu
  %i.eg = load i64, ptr %i.ar, align 8, !tbaa !65, !noalias !759 ; 2 uses
  %i.eh = mul i64 %i.ef, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.eh
  %i.ej = sext i32 %i.ec to i64
  %i.ek = shl nsw i32 %i.ea, 1                    ; 3 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = mul nsw i64 %i.ej, %i.el
  %i.en = mul i64 %i.em, %i.eg
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.en
  %i.ep = shl nsw i32 %i.eb, 1                    ; 2 uses
  %i.eq = mul nsw i32 %i.ep, %i.bv
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.er ; 9 uses
  %i.et = or disjoint i32 %i.ep, 1
  %i.eu = icmp slt i32 %i.et, %i.bt               ; 4 uses
  %.not334.us.i = icmp slt i32 %i.ek, %i.bu
  br i1 %.not334.us.i, label %bb.f, label %bb.l

bb.f:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit337.us.i
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cj ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.cj ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.cj
  %i.ey = load <4 x float>, ptr %i.ex, align 16, !tbaa !254
  %i.ez = load <4 x float>, ptr %i.ew, align 16, !tbaa !254
  %i.fa = fadd fast <4 x float> %i.do, %i.dn
  %i.fb = fadd fast <4 x float> %i.fa, %i.ez      ; 2 uses
  %i.fc = load <4 x float>, ptr %i.ev, align 16, !tbaa !254
  %i.fd = fadd fast <4 x float> %i.dg, %i.df
  %i.fe = fadd fast <4 x float> %i.fd, %i.fc      ; 2 uses
  %i.ff = load <4 x float>, ptr %i.cv, align 16, !tbaa !254
  %i.fg = fadd fast <4 x float> %i.cz, %i.co
  %i.fh = fadd fast <4 x float> %i.fg, %i.da
  %i.fi = fadd fast <4 x float> %i.fh, %i.ff
  %i.fj = fadd fast <4 x float> %i.fi, %i.fb
  %i.fk = fadd fast <4 x float> %i.fj, %i.fe      ; 5 uses
  %i.fl = fadd fast <4 x float> %i.dv, %i.co
  %i.fm = fadd fast <4 x float> %i.fl, %i.dw
  %i.fn = fadd fast <4 x float> %i.fm, %i.ey
  %i.fo = fsub fast <4 x float> %i.fn, %i.fb
  %i.fp = fadd fast <4 x float> %i.fo, %i.fe      ; 5 uses
  switch i32 %i.bv, label %bb.k [
    i32 4, label %bb.i
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.by ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.es, i64 %.idx.i ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.es, i64 %.idx335.i ; 2 uses
  %.sroa.028.0.vec.extract.us.i = extractelement <4 x float> %i.fk, i64 0
  store float %.sroa.028.0.vec.extract.us.i, ptr %i.es, align 4, !tbaa !39
  %.sroa.028.4.vec.extract.us.i = extractelement <4 x float> %i.fk, i64 1
  store float %.sroa.028.4.vec.extract.us.i, ptr %i.fq, align 4, !tbaa !39
  %.sroa.028.8.vec.extract.us.i = extractelement <4 x float> %i.fk, i64 2
  store float %.sroa.028.8.vec.extract.us.i, ptr %i.fr, align 4, !tbaa !39
  %.sroa.028.12.vec.extract.us.i = extractelement <4 x float> %i.fk, i64 3
  store float %.sroa.028.12.vec.extract.us.i, ptr %i.fs, align 4, !tbaa !39
  br i1 %i.eu, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.sroa.729.16.vec.extract.us.i = extractelement <4 x float> %i.fp, i64 0
  %i.ft = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store float %.sroa.729.16.vec.extract.us.i, ptr %i.ft, align 4, !tbaa !39
  %.sroa.729.20.vec.extract.us.i = extractelement <4 x float> %i.fp, i64 1
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store float %.sroa.729.20.vec.extract.us.i, ptr %i.fu, align 4, !tbaa !39
  %.sroa.729.24.vec.extract.us.i = extractelement <4 x float> %i.fp, i64 2
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store float %.sroa.729.24.vec.extract.us.i, ptr %i.fv, align 4, !tbaa !39
  %.sroa.729.28.vec.extract.us.i = extractelement <4 x float> %i.fp, i64 3
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  store float %.sroa.729.28.vec.extract.us.i, ptr %i.fw, align 4, !tbaa !39
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  store <4 x float> %i.fk, ptr %i.es, align 16, !tbaa !254
  br i1 %i.eu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store <4 x float> %i.fp, ptr %i.fx, align 16, !tbaa !254
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.cl
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN4ncnn3MatD2Ev.exit337.us.i
  %.1315.us.i = phi ptr [ %i.es, %_ZN4ncnn3MatD2Ev.exit337.us.i ], [ %i.fy, %bb.k ] ; 7 uses
  %i.fz = or disjoint i32 %i.ek, 1
  %.not334.us.1.i = icmp slt i32 %i.fz, %i.bu
  br i1 %.not334.us.1.i, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.ga = fadd fast <4 x float> %i.dj, %i.co      ; 2 uses
  %i.gb = fadd fast <4 x float> %i.ga, %i.cz
  %i.gc = fsub fast <4 x float> %i.gb, %i.da
  %i.gd = fadd fast <4 x float> %i.gc, %i.db
  %i.ge = fadd fast <4 x float> %i.gd, %i.dr      ; 5 uses
  %i.gf = fadd fast <4 x float> %i.ga, %i.dv
  %i.gg = fadd fast <4 x float> %i.dr, %i.dw
  %i.gh = fsub fast <4 x float> %i.gf, %i.gg
  %i.gi = fadd fast <4 x float> %i.gh, %i.dx      ; 5 uses
  switch i32 %i.bv, label %bb.r [
    i32 4, label %bb.p
    i32 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.1315.us.i, i64 %i.by ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.1315.us.i, i64 %.idx.i ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.1315.us.i, i64 %.idx335.i ; 2 uses
  %.sroa.028.0.vec.extract.us.1.i = extractelement <4 x float> %i.ge, i64 0
  store float %.sroa.028.0.vec.extract.us.1.i, ptr %.1315.us.i, align 4, !tbaa !39
  %.sroa.028.4.vec.extract.us.1.i = extractelement <4 x float> %i.ge, i64 1
  store float %.sroa.028.4.vec.extract.us.1.i, ptr %i.gj, align 4, !tbaa !39
  %.sroa.028.8.vec.extract.us.1.i = extractelement <4 x float> %i.ge, i64 2
  store float %.sroa.028.8.vec.extract.us.1.i, ptr %i.gk, align 4, !tbaa !39
  %.sroa.028.12.vec.extract.us.1.i = extractelement <4 x float> %i.ge, i64 3
  store float %.sroa.028.12.vec.extract.us.1.i, ptr %i.gl, align 4, !tbaa !39
  br i1 %i.eu, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.sroa.729.16.vec.extract.us.1.i = extractelement <4 x float> %i.gi, i64 0
  %i.gm = getelementptr inbounds nuw i8, ptr %.1315.us.i, i64 4
  store float %.sroa.729.16.vec.extract.us.1.i, ptr %i.gm, align 4, !tbaa !39
  %.sroa.729.20.vec.extract.us.1.i = extractelement <4 x float> %i.gi, i64 1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  store float %.sroa.729.20.vec.extract.us.1.i, ptr %i.gn, align 4, !tbaa !39
  %.sroa.729.24.vec.extract.us.1.i = extractelement <4 x float> %i.gi, i64 2
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  store float %.sroa.729.24.vec.extract.us.1.i, ptr %i.go, align 4, !tbaa !39
  %.sroa.729.28.vec.extract.us.1.i = extractelement <4 x float> %i.gi, i64 3
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store float %.sroa.729.28.vec.extract.us.1.i, ptr %i.gp, align 4, !tbaa !39
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  store <4 x float> %i.ge, ptr %.1315.us.i, align 16, !tbaa !254
  br i1 %i.eu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gq = getelementptr inbounds nuw i8, ptr %.1315.us.i, i64 16
  store <4 x float> %i.gi, ptr %i.gq, align 16, !tbaa !254
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %_ZN4ncnn3MatD2Ev.exit337.us.i, !llvm.loop !762

._crit_edge.us.i:                                 ; preds = %bb.r
  %indvars.iv.next136.i = add nuw nsw i64 %indvars.iv135.i, 4 ; 3 uses
  %i.gr = or disjoint i64 %indvars.iv.next136.i, 3
  %i.gs = icmp samesign ult i64 %i.gr, %i.bk
  br i1 %i.gs, label %.lr.ph67.split.us.i, label %.preheader55.loopexit.i, !llvm.loop !763

.preheader55.loopexit.i:                          ; preds = %._crit_edge.us.i
  %i.gt = trunc nuw nsw i64 %indvars.iv.next136.i to i32
  br label %.preheader55.i

.preheader55.i:                                   ; preds = %.lr.ph67.i, %.preheader55.loopexit.i, %._crit_edge
  %.0322.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.gt, %.preheader55.loopexit.i ], [ %i.bj, %.lr.ph67.i ] ; 5 uses
  %i.gu = or disjoint i32 %.0322.lcssa.i, 1
  %i.gv = icmp slt i32 %i.gu, %.sroa.speculated121
  br i1 %i.gv, label %.lr.ph83.i, label %.preheader.i

.lr.ph83.i:                                       ; preds = %.preheader55.i
  %.not331.i = icmp eq ptr %.val78, null
  %i.gw = icmp sgt i32 %.sroa.speculated117, 0
  %i.gx = shl nsw i32 %.sroa.speculated117, 1
  %i.gy = sext i32 %i.gx to i64
  %i.gz = shl nsw i32 %.sroa.speculated117, 2
  %i.ha = sext i32 %i.gz to i64
  %i.hb = mul nsw i32 %.sroa.speculated117, 6
  %i.hc = sext i32 %i.hb to i64
  %i.hd = shl nsw i32 %.sroa.speculated117, 3
  %i.he = sext i32 %i.hd to i64                   ; 12 uses
  %i.hf = sext i32 %i.bt to i64
  br i1 %i.gw, label %.lr.ph83.split.us.i, label %.lr.ph83.split.i

.lr.ph83.split.us.i:                              ; preds = %.lr.ph83.i
  %i.hg = load i32, ptr %i.an, align 4, !tbaa !75, !noalias !764
  %i.hh = load ptr, ptr %12, align 8, !tbaa !18, !noalias !764
  %i.hi = load i64, ptr %i.aq, align 8, !tbaa !20, !noalias !764
  %i.hj = load i64, ptr %i.ar, align 8, !tbaa !65, !noalias !764 ; 2 uses
  %factor.op.mul.i = mul i64 %i.hj, %i.hi
  %i.hk = sext i32 %i.hg to i64
  %factor.op.mul79.us.i = mul i64 %i.hj, %i.hk
  %i.hl = sext i32 %.0322.lcssa.i to i64
  %wide.trip.count149.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.us87.i, %.lr.ph83.split.us.i
  %indvars.iv151.i = phi i64 [ %indvars.iv.next152.i, %._crit_edge.us87.i ], [ %i.hl, %.lr.ph83.split.us.i ] ; 3 uses
  %.pre.i = add nsw i64 %indvars.iv151.i, %i.bi   ; 2 uses
  br i1 %.not331.i, label %.thread.us.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hm = getelementptr [4 x i8], ptr %.val78, i64 %.pre.i
  %i.hn = load <2 x float>, ptr %i.hm, align 4, !tbaa !39
  br label %.thread.us.i

.thread.us.i:                                     ; preds = %bb.t, %bb.s
  %i.ho = phi <2 x float> [ %i.hn, %bb.t ], [ zeroinitializer, %bb.s ] ; 2 uses
  %i.hp = trunc nsw i64 %indvars.iv151.i to i32
  %factor.op.mul.reass.us85.i = mul i32 %factor.op.mul64.i, %i.hp
  %i.hq = sext i32 %factor.op.mul.reass.us85.i to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.hq
  %.reass.i = mul i64 %factor.op.mul.i, %.pre.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hh, i64 %.reass.i
  br label %_ZN4ncnn3MatD2Ev.exit336.us.i

_ZN4ncnn3MatD2Ev.exit336.us.i:                    ; preds = %bb.aa, %.thread.us.i
  %indvars.iv146.i = phi i64 [ 0, %.thread.us.i ], [ %indvars.iv.next147.i, %bb.aa ] ; 3 uses
  %.idx198.i = shl nuw nsw i64 %indvars.iv146.i, 3
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.idx198.i ; 5 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.gy ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.ha ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hc ; 2 uses
  %i.hx = load <2 x float>, ptr %i.hu, align 4, !tbaa !39 ; 2 uses
  %i.hy = load <2 x float>, ptr %i.hv, align 4, !tbaa !39 ; 2 uses
  %i.hz = fsub fast <2 x float> %i.hx, %i.hy
  %i.ia = load <2 x float>, ptr %i.hw, align 4, !tbaa !39
  %i.ib = fadd fast <2 x float> %i.hz, %i.ia
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.he ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.he ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.he ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.he ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.he ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.he ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.he ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.he ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.he
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.he
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.he
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.he
  %i.io = load <2 x float>, ptr %i.id, align 4, !tbaa !39 ; 2 uses
  %i.ip = load <2 x float>, ptr %i.ie, align 4, !tbaa !39 ; 2 uses
  %i.iq = load <2 x float>, ptr %i.if, align 4, !tbaa !39
  %i.ir = load <2 x float>, ptr %i.ih, align 4, !tbaa !39 ; 2 uses
  %i.is = load <2 x float>, ptr %i.ii, align 4, !tbaa !39 ; 2 uses
  %i.it = load <2 x float>, ptr %i.ig, align 4, !tbaa !39
  %i.iu = load <2 x float>, ptr %i.ik, align 4, !tbaa !39
  %i.iv = fadd fast <2 x float> %i.ir, %i.it
  %i.iw = fadd fast <2 x float> %i.iv, %i.is      ; 2 uses
  %i.ix = fsub fast <2 x float> %i.ir, %i.is
  %i.iy = load <2 x float>, ptr %i.ij, align 4, !tbaa !39
  %i.iz = fadd fast <2 x float> %i.iy, %i.ix      ; 2 uses
  %i.ja = load <2 x float>, ptr %i.il, align 4, !tbaa !39 ; 2 uses
  %i.jb = load <2 x float>, ptr %i.im, align 4, !tbaa !39 ; 2 uses
  %i.jc = load <2 x float>, ptr %i.in, align 4, !tbaa !39
  %i.jd = trunc i64 %indvars.iv146.i to i32
  %i.je = add i32 %.044147, %i.jd                 ; 2 uses
  %i.jf = sdiv i32 %i.je, %i.ca
  %i.jg = srem i32 %i.je, %i.ca
  %i.jh = shl nsw i32 %i.jf, 1                    ; 3 uses
  %i.ji = sext i32 %i.jh to i64
  %.reass80.us.i = mul i64 %factor.op.mul79.us.i, %i.ji
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.reass80.us.i
  %i.jk = shl nsw i32 %i.jg, 1                    ; 2 uses
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [4 x i8], ptr %i.jj, i64 %i.jl ; 5 uses
  %i.jn = or disjoint i32 %i.jk, 1
  %i.jo = icmp slt i32 %i.jn, %i.bt               ; 2 uses
  %.not332.us.i = icmp slt i32 %i.jh, %i.bu
  br i1 %.not332.us.i, label %bb.u, label %bb.x

bb.u:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit336.us.i
  %i.jp = load <2 x float>, ptr %i.ic, align 4, !tbaa !39
  %i.jq = fadd fast <2 x float> %i.io, %i.ho
  %i.jr = fadd fast <2 x float> %i.jq, %i.ip
  %i.js = fadd fast <2 x float> %i.jr, %i.jp      ; 2 uses
  %i.jt = load <2 x float>, ptr %i.ht, align 4, !tbaa !39
  %i.ju = fadd fast <2 x float> %i.hy, %i.hx
  %i.jv = fadd fast <2 x float> %i.ju, %i.iw
  %i.jw = fadd fast <2 x float> %i.jv, %i.jt
  %i.jx = fadd fast <2 x float> %i.jw, %i.js      ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.by ; 2 uses
  %i.jz = extractelement <2 x float> %i.jx, i64 0
  store float %i.jz, ptr %i.jm, align 4, !tbaa !39
  %i.ka = extractelement <2 x float> %i.jx, i64 1
  store float %i.ka, ptr %i.jy, align 4, !tbaa !39
  br i1 %i.jo, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.kb = fsub fast <2 x float> %i.iu, %i.iw
  %i.kc = fadd fast <2 x float> %i.kb, %i.ja
  %i.kd = fadd fast <2 x float> %i.kc, %i.jb
  %i.ke = fadd fast <2 x float> %i.kd, %i.js      ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  %i.kg = extractelement <2 x float> %i.ke, i64 0
  store float %i.kg, ptr %i.kf, align 4, !tbaa !39
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  %i.ki = extractelement <2 x float> %i.ke, i64 1
  store float %i.ki, ptr %i.kh, align 4, !tbaa !39
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.jm, i64 %i.hf
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN4ncnn3MatD2Ev.exit336.us.i
  %.1306.us.i = phi ptr [ %i.jm, %_ZN4ncnn3MatD2Ev.exit336.us.i ], [ %i.kj, %bb.w ] ; 3 uses
  %i.kk = or disjoint i32 %i.jh, 1
  %.not332.us.1.i = icmp slt i32 %i.kk, %i.bu
  br i1 %.not332.us.1.i, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.kl = fadd fast <2 x float> %i.io, %i.ho
  %i.km = fsub fast <2 x float> %i.kl, %i.ip
  %i.kn = fadd fast <2 x float> %i.km, %i.iq      ; 2 uses
  %i.ko = fadd fast <2 x float> %i.ib, %i.kn
  %i.kp = fadd fast <2 x float> %i.ko, %i.iz      ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.1306.us.i, i64 %i.by ; 2 uses
  %i.kr = extractelement <2 x float> %i.kp, i64 0
  store float %i.kr, ptr %.1306.us.i, align 4, !tbaa !39
  %i.ks = extractelement <2 x float> %i.kp, i64 1
  store float %i.ks, ptr %i.kq, align 4, !tbaa !39
  br i1 %i.jo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.kt = fadd fast <2 x float> %i.kn, %i.ja
  %i.ku = fadd fast <2 x float> %i.iz, %i.jb
  %i.kv = fsub fast <2 x float> %i.kt, %i.ku
  %i.kw = fadd fast <2 x float> %i.kv, %i.jc      ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.1306.us.i, i64 4
  %i.ky = extractelement <2 x float> %i.kw, i64 0
  store float %i.ky, ptr %i.kx, align 4, !tbaa !39
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  %i.la = extractelement <2 x float> %i.kw, i64 1
  store float %i.la, ptr %i.kz, align 4, !tbaa !39
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %indvars.iv.next147.i = add nuw nsw i64 %indvars.iv146.i, 1 ; 2 uses
  %exitcond150.not.i = icmp eq i64 %indvars.iv.next147.i, %wide.trip.count149.i
  br i1 %exitcond150.not.i, label %._crit_edge.us87.i, label %_ZN4ncnn3MatD2Ev.exit336.us.i, !llvm.loop !767

._crit_edge.us87.i:                               ; preds = %bb.aa
  %indvars.iv.next152.i = add nuw nsw i64 %indvars.iv151.i, 2 ; 3 uses
  %i.lb = icmp slt i64 %indvars.iv.next152.i, %invariant.op.i
  br i1 %i.lb, label %bb.s, label %.preheader.loopexit.i, !llvm.loop !768

.lr.ph83.split.i:                                 ; preds = %.lr.ph83.i
  %17 = sub i32 %16, %.0322.lcssa.i
  %18 = and i32 %17, -2
  %19 = add i32 %.0322.lcssa.i, 2
  %i.lc = add i32 %19, %18
  br label %.preheader.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.us87.i
  %i.ld = trunc nsw i64 %indvars.iv.next152.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph83.split.i, %.preheader55.i
  %.1323.lcssa.i = phi i32 [ %.0322.lcssa.i, %.preheader55.i ], [ %i.lc, %.lr.ph83.split.i ], [ %i.ld, %.preheader.loopexit.i ] ; 2 uses
  %i.le = icmp slt i32 %.1323.lcssa.i, %.sroa.speculated121
  br i1 %i.le, label %.lr.ph107.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit

.lr.ph107.i:                                      ; preds = %.preheader.i
  %.not.i80 = icmp eq ptr %.val78, null
  %i.lf = icmp sgt i32 %.sroa.speculated117, 0
  %i.lg = sext i32 %.sroa.speculated117 to i64
  %i.lh = shl nsw i32 %.sroa.speculated117, 1
  %i.li = sext i32 %i.lh to i64
  %i.lj = mul nsw i32 %.sroa.speculated117, 3
  %i.lk = sext i32 %i.lj to i64
  %i.ll = shl nsw i32 %.sroa.speculated117, 2
  %i.lm = sext i32 %i.ll to i64                   ; 12 uses
  %i.ln = sext i32 %i.bt to i64                   ; 2 uses
  br i1 %i.lf, label %.lr.ph107.split.us.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit

.lr.ph107.split.us.i:                             ; preds = %.lr.ph107.i
  %i.lo = load i32, ptr %i.an, align 4, !tbaa !75, !noalias !769
  %i.lp = load ptr, ptr %12, align 8, !tbaa !18, !noalias !769
  %i.lq = load i64, ptr %i.aq, align 8, !tbaa !20, !noalias !769
  %i.lr = load i64, ptr %i.ar, align 8, !tbaa !65, !noalias !769 ; 2 uses
  %factor.op.mul118.i = mul i64 %i.lr, %i.lq
  %i.ls = sext i32 %i.lo to i64
  %factor.op.mul103.us.i = mul i64 %i.lr, %i.ls
  %i.lt = sext i32 %.1323.lcssa.i to i64
  %wide.trip.count167.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.us116.i, %.lr.ph107.split.us.i
  %indvars.iv169.i = phi i64 [ %indvars.iv.next170.i, %._crit_edge.us116.i ], [ %i.lt, %.lr.ph107.split.us.i ] ; 3 uses
  %.pre192.i = add nsw i64 %indvars.iv169.i, %i.bi ; 2 uses
  br i1 %.not.i80, label %.lr.ph.us115.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.lu = getelementptr inbounds [4 x i8], ptr %.val78, i64 %.pre192.i
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !39
  br label %.lr.ph.us115.i

.lr.ph.us115.i:                                   ; preds = %bb.ac, %bb.ab
  %i.lw = phi fast float [ %i.lv, %bb.ac ], [ 0.000000e+00, %bb.ab ] ; 4 uses
  %i.lx = trunc nsw i64 %indvars.iv169.i to i32
  %factor.op.mul100.reass.us.i = mul i32 %factor.op.mul64.i, %i.lx
  %i.ly = sext i32 %factor.op.mul100.reass.us.i to i64
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ly
  %.reass119.i = mul i64 %factor.op.mul118.i, %.pre192.i
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lp, i64 %.reass119.i
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %.split.us113.i, %.lr.ph.us115.i
  %indvars.iv164.i = phi i64 [ 0, %.lr.ph.us115.i ], [ %indvars.iv.next165.i, %.split.us113.i ] ; 3 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %indvars.iv164.i ; 5 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.lg ; 2 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.li ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.lk ; 2 uses
  %i.mf = load float, ptr %i.mb, align 4, !tbaa !39
  %i.mg = load float, ptr %i.mc, align 4, !tbaa !39 ; 2 uses
  %i.mh = fadd fast float %i.mg, %i.mf
  %i.mi = load float, ptr %i.md, align 4, !tbaa !39 ; 2 uses
  %i.mj = fadd fast float %i.mh, %i.mi            ; 2 uses
  %i.mk = fsub fast float %i.mg, %i.mi
  %i.ml = load float, ptr %i.me, align 4, !tbaa !39
  %i.mm = fadd fast float %i.mk, %i.ml            ; 2 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.lm ; 2 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.lm ; 2 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.lm ; 2 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.lm ; 2 uses
  %i.mr = load float, ptr %i.mn, align 4, !tbaa !39
  %i.ms = load float, ptr %i.mo, align 4, !tbaa !39 ; 2 uses
  %i.mt = fadd fast float %i.ms, %i.mr
  %i.mu = load float, ptr %i.mp, align 4, !tbaa !39 ; 2 uses
  %i.mv = fadd fast float %i.mt, %i.mu            ; 2 uses
  %i.mw = fsub fast float %i.ms, %i.mu
  %i.mx = load float, ptr %i.mq, align 4, !tbaa !39
  %i.my = fadd fast float %i.mw, %i.mx            ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.lm ; 2 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.lm ; 2 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.lm ; 2 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.lm ; 2 uses
  %i.nd = load float, ptr %i.mz, align 4, !tbaa !39
  %i.ne = load float, ptr %i.na, align 4, !tbaa !39 ; 2 uses
  %i.nf = fadd fast float %i.ne, %i.nd
  %i.ng = load float, ptr %i.nb, align 4, !tbaa !39 ; 2 uses
  %i.nh = fadd fast float %i.nf, %i.ng            ; 3 uses
  %i.ni = fsub fast float %i.ne, %i.ng
  %i.nj = load float, ptr %i.nc, align 4, !tbaa !39
  %i.nk = fadd fast float %i.ni, %i.nj            ; 3 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %i.lm
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %i.lm
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %i.lm
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.lm
  %i.np = load float, ptr %i.nl, align 4, !tbaa !39
  %i.nq = load float, ptr %i.nm, align 4, !tbaa !39 ; 2 uses
  %i.nr = load float, ptr %i.nn, align 4, !tbaa !39 ; 2 uses
  %i.ns = load float, ptr %i.no, align 4, !tbaa !39
  %i.nt = trunc i64 %indvars.iv164.i to i32
  %i.nu = add i32 %.044147, %i.nt                 ; 2 uses
  %i.nv = sdiv i32 %i.nu, %i.ca
  %i.nw = srem i32 %i.nu, %i.ca
  %i.nx = shl nsw i32 %i.nv, 1                    ; 4 uses
  %i.ny = sext i32 %i.nx to i64
  %.reass104.us.i = mul i64 %factor.op.mul103.us.i, %i.ny
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ma, i64 %.reass104.us.i
  %i.oa = shl nsw i32 %i.nw, 1                    ; 2 uses
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.nz, i64 %i.ob ; 7 uses
  %i.od = or disjoint i32 %i.oa, 1
  %i.oe = icmp slt i32 %i.od, %i.bt
  %.fr.us.i = freeze i1 %i.oe
  %.not330.us.us.i = icmp slt i32 %i.nx, %i.bu    ; 2 uses
  br i1 %.fr.us.i, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit.split.us114.preheader.i

_ZN4ncnn3MatD2Ev.exit.split.us114.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not330.us.us.i, label %bb.ad, label %_ZN4ncnn3MatD2Ev.exit.split.us114.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not330.us.us.i, label %bb.af, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

bb.ad:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us114.preheader.i
  %i.of = fadd fast float %i.mv, %i.lw
  %i.og = fadd fast float %i.of, %i.mj
  %i.oh = fadd fast float %i.og, %i.nh
  store float %i.oh, ptr %i.oc, align 4, !tbaa !39
  %i.oi = getelementptr inbounds [4 x i8], ptr %i.oc, i64 %i.ln
  br label %_ZN4ncnn3MatD2Ev.exit.split.us114.1.i

_ZN4ncnn3MatD2Ev.exit.split.us114.1.i:            ; preds = %bb.ad, %_ZN4ncnn3MatD2Ev.exit.split.us114.preheader.i
  %.1.us112.i = phi ptr [ %i.oc, %_ZN4ncnn3MatD2Ev.exit.split.us114.preheader.i ], [ %i.oi, %bb.ad ]
  %i.oj = or disjoint i32 %i.nx, 1
  %.not330.us111.1.i = icmp slt i32 %i.oj, %i.bu
  br i1 %.not330.us111.1.i, label %bb.ae, label %.split.us113.i

bb.ae:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us114.1.i
  %i.ok = fadd fast float %i.my, %i.lw
  %i.ol = fadd fast float %i.ok, %i.mm
  %i.om = fadd fast float %i.ol, %i.nk
  store float %i.om, ptr %.1.us112.i, align 4, !tbaa !39
  br label %.split.us113.i

.split.us113.i:                                   ; preds = %bb.ag, %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i, %bb.ae, %_ZN4ncnn3MatD2Ev.exit.split.us114.1.i
  %indvars.iv.next165.i = add nuw nsw i64 %indvars.iv164.i, 1 ; 2 uses
  %exitcond168.not.i = icmp eq i64 %indvars.iv.next165.i, %wide.trip.count167.i
  br i1 %exitcond168.not.i, label %._crit_edge.us116.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !772

bb.af:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %i.on = fadd fast float %i.mv, %i.lw            ; 2 uses
  %i.oo = fadd fast float %i.on, %i.mj
  %i.op = fadd fast float %i.oo, %i.nh
  store float %i.op, ptr %i.oc, align 4, !tbaa !39
  %i.oq = fsub fast float %i.on, %i.nh
  %i.or = fadd fast float %i.oq, %i.np
  %i.os = fadd fast float %i.or, %i.nq
  %i.ot = fadd fast float %i.os, %i.nr
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  store float %i.ot, ptr %i.ou, align 4, !tbaa !39
  %i.ov = getelementptr inbounds [4 x i8], ptr %i.oc, i64 %i.ln
  br label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i:            ; preds = %bb.af, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %.1.us.us.i = phi ptr [ %i.oc, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i ], [ %i.ov, %bb.af ] ; 2 uses
  %i.ow = or disjoint i32 %i.nx, 1
  %.not330.us.us.1.i = icmp slt i32 %i.ow, %i.bu
  br i1 %.not330.us.us.1.i, label %bb.ag, label %.split.us113.i

bb.ag:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i
  %i.ox = fadd fast float %i.my, %i.lw            ; 2 uses
  %i.oy = fadd fast float %i.ox, %i.mm
  %i.oz = fadd fast float %i.oy, %i.nk
  store float %i.oz, ptr %.1.us.us.i, align 4, !tbaa !39
  %i.pa = fadd fast float %i.ox, %i.nq
  %i.pb = fadd fast float %i.nk, %i.nr
  %i.pc = fsub fast float %i.pa, %i.pb
  %i.pd = fadd fast float %i.pc, %i.ns
  %i.pe = getelementptr inbounds nuw i8, ptr %.1.us.us.i, i64 4
  store float %i.pd, ptr %i.pe, align 4, !tbaa !39
  br label %.split.us113.i

._crit_edge.us116.i:                              ; preds = %.split.us113.i
  %indvars.iv.next170.i = add nuw nsw i64 %indvars.iv169.i, 1 ; 2 uses
  %exitcond173.not.i = icmp eq i64 %indvars.iv.next170.i, %i.bl
  br i1 %exitcond173.not.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit, label %bb.ab, !llvm.loop !773

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.pf = phi i32 [ %i.rc, %.noexc ], [ %.pre153, %.noexc.preheader ] ; 2 uses
  %i.pg = phi i32 [ %i.re, %.noexc ], [ %i.br, %.noexc.preheader ]
  %.0146 = phi i32 [ %i.rd, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.ph = sub nsw i32 %i.pg, %.0146
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.pf, i32 %i.ph)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.pi = load i32, ptr %3, align 4, !tbaa !67
  %i.pj = sdiv i32 %i.at, %i.pi
  %i.pk = load ptr, ptr %10, align 8, !tbaa !18, !noalias !774
  %i.pl = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !774
end_hunk_7
begin_hunk_8_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii:bb.a
  %niter1182.next.3 = add nuw nsw i32 %niter1182, 4 ; 2 uses
  %niter1182.ncmp.3 = icmp eq i32 %niter1182.next.3, %unroll_iter1181
  br i1 %niter1182.ncmp.3, label %._crit_edge398.us.unr-lcssa, label %.lr.ph397.us, !llvm.loop !795

._crit_edge398.us.unr-lcssa:                      ; preds = %.lr.ph397.us
  br i1 %lcmp.mod1178.not, label %._crit_edge398.us, label %.lr.ph397.us.epil.preheader

.lr.ph397.us.epil.preheader:                      ; preds = %._crit_edge398.us.unr-lcssa, %.lr.ph397.us.preheader
  %.9497395.us.epil.init = phi ptr [ %.8496402.us, %.lr.ph397.us.preheader ], [ %i.mg, %._crit_edge398.us.unr-lcssa ]
  %.0513394.us.epil.init = phi ptr [ %i.bm, %.lr.ph397.us.preheader ], [ %i.mf, %._crit_edge398.us.unr-lcssa ]
  %.0266392.us.epil.init = phi <4 x float> [ %.0266392.us.ph, %.lr.ph397.us.preheader ], [ %i.me, %._crit_edge398.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1180)
  br label %.lr.ph397.us.epil

.lr.ph397.us.epil:                                ; preds = %.lr.ph397.us.epil, %.lr.ph397.us.epil.preheader
  %.9497395.us.epil = phi ptr [ %i.mo, %.lr.ph397.us.epil ], [ %.9497395.us.epil.init, %.lr.ph397.us.epil.preheader ] ; 2 uses
  %.0513394.us.epil = phi ptr [ %i.mn, %.lr.ph397.us.epil ], [ %.0513394.us.epil.init, %.lr.ph397.us.epil.preheader ] ; 2 uses
  %.0266392.us.epil = phi <4 x float> [ %i.mm, %.lr.ph397.us.epil ], [ %.0266392.us.epil.init, %.lr.ph397.us.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph397.us.epil ], [ 0, %.lr.ph397.us.epil.preheader ]
  %i.mh = load <4 x float>, ptr %.0513394.us.epil, align 16, !tbaa !254
  %i.mi = load float, ptr %.9497395.us.epil, align 4, !tbaa !39
  %i.mj = insertelement <4 x float> poison, float %i.mi, i64 0
  %i.mk = shufflevector <4 x float> %i.mj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ml = fmul fast <4 x float> %i.mk, %i.mh
  %i.mm = fadd fast <4 x float> %i.ml, %.0266392.us.epil ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.0513394.us.epil, i64 16
  %i.mo = getelementptr inbounds nuw i8, ptr %.9497395.us.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1177
  br i1 %epil.iter.cmp.not, label %._crit_edge398.us, label %.lr.ph397.us.epil, !llvm.loop !796

._crit_edge398.us:                                ; preds = %.lr.ph397.us.epil, %._crit_edge398.us.unr-lcssa
  %.lcssa1172 = phi <4 x float> [ %i.me, %._crit_edge398.us.unr-lcssa ], [ %i.mm, %.lr.ph397.us.epil ]
  %i.mp = getelementptr i8, ptr %.8496402.us, i64 %i.s
  %scevgep751 = getelementptr i8, ptr %i.mp, i64 4
  store <4 x float> %.lcssa1172, ptr %.6478403.us, align 16, !tbaa !254
  %i.mq = getelementptr inbounds nuw i8, ptr %.6478403.us, i64 16 ; 2 uses
  %i.mr = add nuw nsw i32 %.4502401.us, 1         ; 2 uses
  %exitcond753.not = icmp eq i32 %i.mr, %4
  br i1 %exitcond753.not, label %._crit_edge405, label %.lr.ph404.split.us, !llvm.loop !797

.lr.ph404.split:                                  ; preds = %.lr.ph404
  br i1 %i.g, label %.lr.ph404.split.split.us.preheader, label %.lr.ph404.split.split.preheader

.lr.ph404.split.split.preheader:                  ; preds = %.lr.ph404.split
  %scevgep747 = getelementptr i8, ptr %.5477.lcssa, i64 16
  %i.ms = sub i32 %i.r, %.3501.lcssa
  %i.mt = zext i32 %i.ms to i64
  %i.mu = shl nuw nsw i64 %i.mt, 4
  %scevgep748 = getelementptr i8, ptr %scevgep747, i64 %i.mu
  br label %._crit_edge405

.lr.ph404.split.split.us.preheader:               ; preds = %.lr.ph404.split
  %i.mv = sub i32 %i.r, %.3501.lcssa
  %i.mw = zext i32 %i.mv to i64
  %i.mx = shl nuw nsw i64 %i.mw, 4                ; 2 uses
  %i.my = add nuw nsw i64 %i.mx, 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %.5477.lcssa, i8 0, i64 %i.my, i1 false), !tbaa !254
  %scevgep749 = getelementptr i8, ptr %.5477.lcssa, i64 16
  %scevgep750 = getelementptr i8, ptr %scevgep749, i64 %i.mx
  br label %._crit_edge405

.lr.ph388:                                        ; preds = %.preheader283, %._crit_edge381
  %.5477387 = phi ptr [ %i.os, %._crit_edge381 ], [ %.4476.lcssa, %.preheader283 ] ; 5 uses
  %.6494386 = phi ptr [ %.7495.lcssa, %._crit_edge381 ], [ %.4492.lcssa, %.preheader283 ] ; 4 uses
  %.3501385 = phi i32 [ %i.ot, %._crit_edge381 ], [ %.2500.lcssa, %.preheader283 ]
  br i1 %i.g, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph388
  %i.mz = load <4 x float>, ptr %.5477387, align 16, !tbaa !254
  %i.na = getelementptr inbounds nuw i8, ptr %.5477387, i64 16
  %i.nb = load <4 x float>, ptr %i.na, align 16, !tbaa !254
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph388, %bb.k
  %.0268 = phi nsz <4 x float> [ %i.mz, %bb.k ], [ zeroinitializer, %.lr.ph388 ] ; 3 uses
  %storemerge539 = phi <4 x float> [ %i.nb, %bb.k ], [ zeroinitializer, %.lr.ph388 ] ; 3 uses
  br i1 %i.h, label %.lr.ph380.preheader, label %._crit_edge381

.lr.ph380.preheader:                              ; preds = %bb.l
  br i1 %i.v, label %.lr.ph380.epil.preheader, label %.lr.ph380

.lr.ph380:                                        ; preds = %.lr.ph380.preheader, %.lr.ph380
  %.7495378 = phi ptr [ %i.od, %.lr.ph380 ], [ %.6494386, %.lr.ph380.preheader ] ; 5 uses
  %.0511377 = phi ptr [ %i.oc, %.lr.ph380 ], [ %i.bm, %.lr.ph380.preheader ] ; 3 uses
  %.1269375 = phi <4 x float> [ %i.nv, %.lr.ph380 ], [ %.0268, %.lr.ph380.preheader ]
  %.0270374 = phi <4 x float> [ %i.ob, %.lr.ph380 ], [ %storemerge539, %.lr.ph380.preheader ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph380 ], [ 0, %.lr.ph380.preheader ]
  %i.nc = load <4 x float>, ptr %.0511377, align 16, !tbaa !254 ; 2 uses
  %i.nd = load float, ptr %.7495378, align 4, !tbaa !39
  %i.ne = insertelement <4 x float> poison, float %i.nd, i64 0
  %i.nf = shufflevector <4 x float> %i.ne, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ng = fmul fast <4 x float> %i.nf, %i.nc
  %i.nh = fadd fast <4 x float> %i.ng, %.1269375
  %i.ni = getelementptr inbounds nuw i8, ptr %.7495378, i64 4
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !39
  %i.nk = insertelement <4 x float> poison, float %i.nj, i64 0
  %i.nl = shufflevector <4 x float> %i.nk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nm = fmul fast <4 x float> %i.nl, %i.nc
  %i.nn = fadd fast <4 x float> %i.nm, %.0270374
  %i.no = getelementptr inbounds nuw i8, ptr %.0511377, i64 16
  %i.np = getelementptr inbounds nuw i8, ptr %.7495378, i64 8
  %i.nq = load <4 x float>, ptr %i.no, align 16, !tbaa !254 ; 2 uses
  %i.nr = load float, ptr %i.np, align 4, !tbaa !39
  %i.ns = insertelement <4 x float> poison, float %i.nr, i64 0
  %i.nt = shufflevector <4 x float> %i.ns, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nu = fmul fast <4 x float> %i.nt, %i.nq
  %i.nv = fadd fast <4 x float> %i.nu, %i.nh      ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.7495378, i64 12
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !39
  %i.ny = insertelement <4 x float> poison, float %i.nx, i64 0
  %i.nz = shufflevector <4 x float> %i.ny, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oa = fmul fast <4 x float> %i.nz, %i.nq
  %i.ob = fadd fast <4 x float> %i.oa, %i.nn      ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.0511377, i64 32 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.7495378, i64 16 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge381.loopexit.unr-lcssa, label %.lr.ph380, !llvm.loop !798

._crit_edge381.loopexit.unr-lcssa:                ; preds = %.lr.ph380
  br i1 %lcmp.mod.not, label %._crit_edge381.loopexit, label %.lr.ph380.epil.preheader

.lr.ph380.epil.preheader:                         ; preds = %._crit_edge381.loopexit.unr-lcssa, %.lr.ph380.preheader
  %.7495378.epil.init = phi ptr [ %.6494386, %.lr.ph380.preheader ], [ %i.od, %._crit_edge381.loopexit.unr-lcssa ] ; 2 uses
  %.0511377.epil.init = phi ptr [ %i.bm, %.lr.ph380.preheader ], [ %i.oc, %._crit_edge381.loopexit.unr-lcssa ]
  %.1269375.epil.init = phi <4 x float> [ %.0268, %.lr.ph380.preheader ], [ %i.nv, %._crit_edge381.loopexit.unr-lcssa ]
  %.0270374.epil.init = phi <4 x float> [ %storemerge539, %.lr.ph380.preheader ], [ %i.ob, %._crit_edge381.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1176)
  %i.oe = load <4 x float>, ptr %.0511377.epil.init, align 16, !tbaa !254 ; 2 uses
  %i.of = load float, ptr %.7495378.epil.init, align 4, !tbaa !39
  %i.og = insertelement <4 x float> poison, float %i.of, i64 0
  %i.oh = shufflevector <4 x float> %i.og, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oi = fmul fast <4 x float> %i.oh, %i.oe
  %i.oj = fadd fast <4 x float> %i.oi, %.1269375.epil.init
  %i.ok = getelementptr inbounds nuw i8, ptr %.7495378.epil.init, i64 4
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !39
  %i.om = insertelement <4 x float> poison, float %i.ol, i64 0
  %i.on = shufflevector <4 x float> %i.om, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oo = fmul fast <4 x float> %i.on, %i.oe
  %i.op = fadd fast <4 x float> %i.oo, %.0270374.epil.init
  br label %._crit_edge381.loopexit

._crit_edge381.loopexit:                          ; preds = %._crit_edge381.loopexit.unr-lcssa, %.lr.ph380.epil.preheader
  %.lcssa1169 = phi <4 x float> [ %i.nv, %._crit_edge381.loopexit.unr-lcssa ], [ %i.oj, %.lr.ph380.epil.preheader ]
  %.lcssa1168 = phi <4 x float> [ %i.ob, %._crit_edge381.loopexit.unr-lcssa ], [ %i.op, %.lr.ph380.epil.preheader ]
  %i.oq = getelementptr i8, ptr %.6494386, i64 %i.q
  %scevgep745 = getelementptr i8, ptr %i.oq, i64 8
  br label %._crit_edge381

._crit_edge381:                                   ; preds = %._crit_edge381.loopexit, %bb.l
  %.0270.lcssa = phi <4 x float> [ %storemerge539, %bb.l ], [ %.lcssa1168, %._crit_edge381.loopexit ]
  %.1269.lcssa = phi <4 x float> [ %.0268, %bb.l ], [ %.lcssa1169, %._crit_edge381.loopexit ]
  %.7495.lcssa = phi ptr [ %.6494386, %bb.l ], [ %scevgep745, %._crit_edge381.loopexit ] ; 2 uses
  store <4 x float> %.1269.lcssa, ptr %.5477387, align 16, !tbaa !254
  %i.or = getelementptr inbounds nuw i8, ptr %.5477387, i64 16
  store <4 x float> %.0270.lcssa, ptr %i.or, align 16, !tbaa !254
  %i.os = getelementptr inbounds nuw i8, ptr %.5477387, i64 32 ; 2 uses
  %i.ot = add nuw nsw i32 %.3501385, 2            ; 3 uses
  %i.ou = or disjoint i32 %i.ot, 1
  %i.ov = icmp slt i32 %i.ou, %4
  br i1 %i.ov, label %.lr.ph388, label %.preheader282, !llvm.loop !799

._crit_edge405:                                   ; preds = %._crit_edge398.us, %.lr.ph404.split.split.preheader, %.lr.ph404.split.split.us.preheader, %.preheader282
  %.6478.lcssa = phi ptr [ %.5477.lcssa, %.preheader282 ], [ %scevgep750, %.lr.ph404.split.split.us.preheader ], [ %scevgep748, %.lr.ph404.split.split.preheader ], [ %i.mq, %._crit_edge398.us ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond755.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond755.not, label %bb.b, label %bb.c, !llvm.loop !800

.preheader280:                                    ; preds = %.preheader280.lr.ph, %bb.m
  %indvars.iv774 = phi i64 [ %i.as, %.preheader280.lr.ph ], [ %indvars.iv.next775, %bb.m ] ; 2 uses
  %.7479527 = phi ptr [ %.0472.lcssa, %.preheader280.lr.ph ], [ %.13.lcssa, %bb.m ]
  %i.ow = mul nsw i64 %indvars.iv774, %i.au
  br label %bb.n

.preheader275.loopexit:                           ; preds = %bb.m
  %i.ox = trunc nuw nsw i64 %indvars.iv.next775 to i32
  br label %.preheader275

.preheader275:                                    ; preds = %.preheader275.loopexit, %.preheader281
  %.1483.lcssa = phi i32 [ %.0482.lcssa, %.preheader281 ], [ %i.ox, %.preheader275.loopexit ] ; 2 uses
  %.7479.lcssa = phi ptr [ %.0472.lcssa, %.preheader281 ], [ %.13.lcssa, %.preheader275.loopexit ]
  %i.oy = icmp slt i32 %.1483.lcssa, %3
  br i1 %i.oy, label %.preheader274.lr.ph, label %._crit_edge634

.preheader274.lr.ph:                              ; preds = %.preheader275
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.pd = icmp sgt i32 %4, 11
  %i.pe = icmp eq i32 %5, 0                       ; 6 uses
  %i.pf = icmp sgt i32 %6, 0                      ; 5 uses
  %i.pg = add i32 %4, -12                         ; 2 uses
  %i.ph = urem i32 %i.pg, 12
  %i.pi = sub nuw i32 %i.pg, %i.ph
  %i.pj = add i32 %i.pi, 12
  %i.pk = add i32 %6, -1
  %i.pl = zext i32 %i.pk to i64                   ; 4 uses
  %i.pm = shl nuw nsw i64 %i.pl, 5
  %7 = add i32 %4, -4                             ; 2 uses
  %i.pn = shl nuw nsw i64 %i.pl, 4
  %i.po = shl nuw nsw i64 %i.pl, 3
  %i.pp = shl nuw nsw i64 %i.pl, 2
  %i.pq = zext nneg i32 %.1483.lcssa to i64
  %i.pr = sext i32 %6 to i64
  %wide.trip.count801 = zext i32 %3 to i64
  %wide.trip.count796 = zext nneg i32 %2 to i64
  %i.ps = add i32 %6, -1                          ; 3 uses
  %xtraiter1191 = and i32 %6, 1
  %i.pt = icmp eq i32 %i.ps, 0
  %unroll_iter1199 = and i32 %6, 2147483646
  %lcmp.mod1193.not = icmp eq i32 %xtraiter1191, 0
  %lcmp.mod1198 = trunc i32 %6 to i1
  %xtraiter1201 = and i32 %6, 1
  %i.pu = icmp eq i32 %i.ps, 0
  %unroll_iter1207 = and i32 %6, 2147483646
  %lcmp.mod1203.not = icmp eq i32 %xtraiter1201, 0
  %lcmp.mod1206 = trunc i32 %6 to i1
  %xtraiter1209 = and i32 %6, 3                   ; 3 uses
  %i.pv = icmp ult i32 %i.ps, 3
  %unroll_iter1214 = and i32 %6, 2147483644
  %lcmp.mod1211.not = icmp eq i32 %xtraiter1209, 0
  %lcmp.mod1213 = icmp ne i32 %xtraiter1209, 0
  %i.pw = zext nneg i32 %6 to i64                 ; 2 uses
  %min.iters.check1049 = icmp ult i32 %6, 8
  %n.vec1051 = and i64 %i.pw, 2147483640          ; 5 uses
  %i.px = trunc nuw nsw i64 %n.vec1051 to i32
  %i.py = shl nuw nsw i64 %n.vec1051, 2
  %i.pz = shl nuw nsw i64 %n.vec1051, 3
  %cmp.n1073 = icmp eq i64 %n.vec1051, %i.pw
  %i.qa = zext nneg i32 %6 to i64                 ; 2 uses
  %min.iters.check1027 = icmp ult i32 %6, 8
  %n.vec1029 = and i64 %i.qa, 2147483640          ; 4 uses
  %i.qb = trunc nuw nsw i64 %n.vec1029 to i32
  %i.qc = shl nuw nsw i64 %n.vec1029, 2           ; 2 uses
  %cmp.n1043 = icmp eq i64 %n.vec1029, %i.qa
  br label %.preheader274

bb.m:                                             ; preds = %._crit_edge522
  %indvars.iv.next775 = add nuw nsw i64 %indvars.iv774, 2 ; 3 uses
  %i.qd = icmp slt i64 %indvars.iv.next775, %invariant.op
  br i1 %i.qd, label %.preheader280, label %.preheader275.loopexit, !llvm.loop !801

bb.n:                                             ; preds = %.preheader280, %._crit_edge522
  %indvars.iv769 = phi i64 [ 0, %.preheader280 ], [ %indvars.iv.next770, %._crit_edge522 ] ; 3 uses
  %.8480525 = phi ptr [ %.7479527, %.preheader280 ], [ %.13.lcssa, %._crit_edge522 ] ; 2 uses
  %i.qe = load ptr, ptr %0, align 8, !tbaa !18
  %i.qf = load i32, ptr %i.ab, align 4, !tbaa !75
  %i.qg = sext i32 %i.qf to i64
  %i.qh = mul nsw i64 %indvars.iv769, %i.qg
  %i.qi = load i64, ptr %i.ac, align 8, !tbaa !65
  %i.qj = mul i64 %i.qh, %i.qi
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qj
  %i.ql = getelementptr inbounds [4 x i8], ptr %i.qk, i64 %i.ow ; 11 uses
  %i.qm = load ptr, ptr %1, align 8, !tbaa !18
  %i.qn = load i32, ptr %i.ad, align 4, !tbaa !75
  %i.qo = sext i32 %i.qn to i64
  %i.qp = mul nsw i64 %indvars.iv769, %i.qo
  %i.qq = load i64, ptr %i.ae, align 8, !tbaa !65
  %i.qr = mul i64 %i.qp, %i.qq
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qm, i64 %i.qr ; 2 uses
  br i1 %i.af, label %.lr.ph441, label %.preheader279

.preheader279:                                    ; preds = %._crit_edge429, %bb.n
  %.0527.lcssa = phi i32 [ 0, %bb.n ], [ %i.al, %._crit_edge429 ] ; 3 uses
  %.0517.lcssa = phi ptr [ %i.qs, %bb.n ], [ %.1518.lcssa, %._crit_edge429 ] ; 2 uses
  %.9481.lcssa = phi ptr [ %.8480525, %bb.n ], [ %i.sy, %._crit_edge429 ] ; 2 uses
  %i.qt = add nuw nsw i32 %.0527.lcssa, 7
  %i.qu = icmp slt i32 %i.qt, %4
  br i1 %i.qu, label %.lr.ph463, label %.preheader278

.lr.ph441:                                        ; preds = %bb.n, %._crit_edge429
  %.9481439 = phi ptr [ %i.sy, %._crit_edge429 ], [ %.8480525, %bb.n ] ; 13 uses
  %.0517438 = phi ptr [ %.1518.lcssa, %._crit_edge429 ], [ %i.qs, %bb.n ] ; 2 uses
  %.0527437 = phi i32 [ %i.sz, %._crit_edge429 ], [ 0, %bb.n ] ; 2 uses
  br i1 %i.ag, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph441
  %i.qv = load <4 x float>, ptr %.9481439, align 1, !tbaa !254 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.9481439, i64 16
  %i.qx = load <4 x float>, ptr %i.qw, align 1, !tbaa !254 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.9481439, i64 32
  %i.qz = load <4 x float>, ptr %i.qy, align 1, !tbaa !254 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.9481439, i64 48
  %i.rb = load <4 x float>, ptr %i.ra, align 1, !tbaa !254 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.9481439, i64 64
  %i.rd = load <4 x float>, ptr %i.rc, align 1, !tbaa !254 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.9481439, i64 80
  %i.rf = load <4 x float>, ptr %i.re, align 1, !tbaa !254 ; 2 uses
  %i.rg = shufflevector <4 x float> %i.qv, <4 x float> %i.qx, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.rh = shufflevector <4 x float> %i.qz, <4 x float> %i.rb, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ri = shufflevector <4 x float> %i.rd, <4 x float> %i.rf, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.rj = shufflevector <4 x float> %i.qv, <4 x float> %i.qx, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.rk = shufflevector <4 x float> %i.qz, <4 x float> %i.rb, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.rl = shufflevector <4 x float> %i.rd, <4 x float> %i.rf, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph441, %bb.o
  %.0260 = phi nsz <4 x float> [ %i.rg, %bb.o ], [ zeroinitializer, %.lr.ph441 ] ; 2 uses
  %.0258 = phi nsz <4 x float> [ %i.rh, %bb.o ], [ zeroinitializer, %.lr.ph441 ] ; 2 uses
  %.0256 = phi nsz <4 x float> [ %i.ri, %bb.o ], [ zeroinitializer, %.lr.ph441 ] ; 2 uses
  %.0254 = phi nsz <4 x float> [ %i.rj, %bb.o ], [ zeroinitializer, %.lr.ph441 ] ; 2 uses
  %.0252 = phi nsz <4 x float> [ %i.rk, %bb.o ], [ zeroinitializer, %.lr.ph441 ] ; 2 uses
  %storemerge537 = phi <4 x float> [ %i.rl, %bb.o ], [ zeroinitializer, %.lr.ph441 ] ; 2 uses
  br i1 %i.ah, label %.lr.ph428, label %._crit_edge429

.lr.ph428:                                        ; preds = %bb.p, %.lr.ph428
  %.0516426 = phi i32 [ %i.sm, %.lr.ph428 ], [ 0, %bb.p ]
  %.1518425 = phi ptr [ %i.sl, %.lr.ph428 ], [ %.0517438, %bb.p ] ; 4 uses
  %.0532424 = phi ptr [ %i.sk, %.lr.ph428 ], [ %i.ql, %bb.p ] ; 3 uses
  %.0251423 = phi <4 x float> [ %i.sj, %.lr.ph428 ], [ %storemerge537, %bb.p ]
  %.1253422 = phi <4 x float> [ %i.sh, %.lr.ph428 ], [ %.0252, %bb.p ]
  %.1255421 = phi <4 x float> [ %i.sf, %.lr.ph428 ], [ %.0254, %bb.p ]
  %.1257420 = phi <4 x float> [ %i.sd, %.lr.ph428 ], [ %.0256, %bb.p ]
  %.1259419 = phi <4 x float> [ %i.sb, %.lr.ph428 ], [ %.0258, %bb.p ]
  %.1261418 = phi <4 x float> [ %i.rz, %.lr.ph428 ], [ %.0260, %bb.p ]
  %i.rm = load float, ptr %.0532424, align 4, !tbaa !39
  %i.rn = insertelement <4 x float> poison, float %i.rm, i64 0
  %i.ro = shufflevector <4 x float> %i.rn, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.0532424, i64 4
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !39
  %i.rr = insertelement <4 x float> poison, float %i.rq, i64 0
  %i.rs = shufflevector <4 x float> %i.rr, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.rt = load <4 x float>, ptr %.1518425, align 16, !tbaa !254 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %.1518425, i64 16
  %i.rv = load <4 x float>, ptr %i.ru, align 16, !tbaa !254 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.1518425, i64 32
  %i.rx = load <4 x float>, ptr %i.rw, align 16, !tbaa !254 ; 2 uses
  %i.ry = fmul fast <4 x float> %i.ro, %i.rt
  %i.rz = fadd fast <4 x float> %i.ry, %.1261418  ; 2 uses
  %i.sa = fmul fast <4 x float> %i.rv, %i.ro
  %i.sb = fadd fast <4 x float> %i.sa, %.1259419  ; 2 uses
  %i.sc = fmul fast <4 x float> %i.rx, %i.ro
  %i.sd = fadd fast <4 x float> %i.sc, %.1257420  ; 2 uses
  %i.se = fmul fast <4 x float> %i.rs, %i.rt
  %i.sf = fadd fast <4 x float> %i.se, %.1255421  ; 2 uses
  %i.sg = fmul fast <4 x float> %i.rs, %i.rv
  %i.sh = fadd fast <4 x float> %i.sg, %.1253422  ; 2 uses
  %i.si = fmul fast <4 x float> %i.rx, %i.rs
  %i.sj = fadd fast <4 x float> %i.si, %.0251423  ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.0532424, i64 8
  %i.sl = getelementptr inbounds nuw i8, ptr %.1518425, i64 48 ; 2 uses
  %i.sm = add nuw nsw i32 %.0516426, 1            ; 2 uses
  %exitcond759.not = icmp eq i32 %i.sm, %6
  br i1 %exitcond759.not, label %._crit_edge429, label %.lr.ph428, !llvm.loop !802

._crit_edge429:                                   ; preds = %.lr.ph428, %bb.p
  %.1261.lcssa = phi <4 x float> [ %.0260, %bb.p ], [ %i.rz, %.lr.ph428 ] ; 2 uses
  %.1259.lcssa = phi <4 x float> [ %.0258, %bb.p ], [ %i.sb, %.lr.ph428 ] ; 2 uses
  %.1257.lcssa = phi <4 x float> [ %.0256, %bb.p ], [ %i.sd, %.lr.ph428 ] ; 2 uses
  %.1255.lcssa = phi <4 x float> [ %.0254, %bb.p ], [ %i.sf, %.lr.ph428 ] ; 2 uses
  %.1253.lcssa = phi <4 x float> [ %.0252, %bb.p ], [ %i.sh, %.lr.ph428 ] ; 2 uses
  %.0251.lcssa = phi <4 x float> [ %storemerge537, %bb.p ], [ %i.sj, %.lr.ph428 ] ; 2 uses
  %.1518.lcssa = phi ptr [ %.0517438, %bb.p ], [ %i.sl, %.lr.ph428 ] ; 2 uses
  %i.sn = shufflevector <4 x float> %.1261.lcssa, <4 x float> %.1255.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.so = shufflevector <4 x float> %.1261.lcssa, <4 x float> %.1255.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.sp = shufflevector <4 x float> %.1259.lcssa, <4 x float> %.1253.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.sq = shufflevector <4 x float> %.1259.lcssa, <4 x float> %.1253.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.sr = shufflevector <4 x float> %.1257.lcssa, <4 x float> %.0251.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ss = shufflevector <4 x float> %.1257.lcssa, <4 x float> %.0251.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.sn, ptr %.9481439, align 1, !tbaa !254
  %i.st = getelementptr inbounds nuw i8, ptr %.9481439, i64 16
  store <4 x float> %i.so, ptr %i.st, align 1, !tbaa !254
  %i.su = getelementptr inbounds nuw i8, ptr %.9481439, i64 32
  store <4 x float> %i.sp, ptr %i.su, align 1, !tbaa !254
  %i.sv = getelementptr inbounds nuw i8, ptr %.9481439, i64 48
  store <4 x float> %i.sq, ptr %i.sv, align 1, !tbaa !254
  %i.sw = getelementptr inbounds nuw i8, ptr %.9481439, i64 64
  store <4 x float> %i.sr, ptr %i.sw, align 1, !tbaa !254
  %i.sx = getelementptr inbounds nuw i8, ptr %.9481439, i64 80
  store <4 x float> %i.ss, ptr %i.sx, align 1, !tbaa !254
  %i.sy = getelementptr inbounds nuw i8, ptr %.9481439, i64 96 ; 2 uses
  %i.sz = add nuw nsw i32 %.0527437, 12
  %i.ta = add nuw nsw i32 %.0527437, 23
  %i.tb = icmp slt i32 %i.ta, %4
  br i1 %i.tb, label %.lr.ph441, label %.preheader279, !llvm.loop !803

.preheader278:                                    ; preds = %._crit_edge454, %.preheader279
  %.1528.lcssa = phi i32 [ %.0527.lcssa, %.preheader279 ], [ %i.ut, %._crit_edge454 ] ; 3 uses
  %.2519.lcssa = phi ptr [ %.0517.lcssa, %.preheader279 ], [ %.3520.lcssa, %._crit_edge454 ] ; 2 uses
  %.10.lcssa = phi ptr [ %.9481.lcssa, %.preheader279 ], [ %i.us, %._crit_edge454 ] ; 2 uses
  %i.tc = or disjoint i32 %.1528.lcssa, 3
  %i.td = icmp slt i32 %i.tc, %4
  br i1 %i.td, label %.lr.ph481, label %.preheader277

.lr.ph463:                                        ; preds = %.preheader279, %._crit_edge454
  %.10462 = phi ptr [ %i.us, %._crit_edge454 ], [ %.9481.lcssa, %.preheader279 ] ; 9 uses
  %.2519461 = phi ptr [ %.3520.lcssa, %._crit_edge454 ], [ %.0517.lcssa, %.preheader279 ] ; 3 uses
  %.1528460 = phi i32 [ %i.ut, %._crit_edge454 ], [ %.0527.lcssa, %.preheader279 ] ; 2 uses
  br i1 %i.ag, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph463
  %i.te = load <4 x float>, ptr %.10462, align 1, !tbaa !254 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.10462, i64 16
  %i.tg = load <4 x float>, ptr %i.tf, align 1, !tbaa !254 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.10462, i64 32
  %i.ti = load <4 x float>, ptr %i.th, align 1, !tbaa !254 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %.10462, i64 48
  %i.tk = load <4 x float>, ptr %i.tj, align 1, !tbaa !254 ; 2 uses
  %i.tl = shufflevector <4 x float> %i.te, <4 x float> %i.tg, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
end_hunk_8
begin_hunk_9_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii:bb.a
  %i.zn = insertelement <2 x float> poison, float %i.zm, i64 0
  %i.zo = insertelement <2 x float> %i.zn, float %i.zl, i64 1 ; 2 uses
  br i1 %cmp.n, label %._crit_edge514.loopexit, label %.lr.ph513.preheader1103

.lr.ph513.preheader1103:                          ; preds = %.lr.ph513.preheader, %middle.block
  %.0456511.ph = phi i32 [ 0, %.lr.ph513.preheader ], [ %i.ba, %middle.block ]
  %.0461508.ph = phi ptr [ %i.ql, %.lr.ph513.preheader ], [ %i.xb, %middle.block ]
  %.9526507.ph = phi ptr [ %.8525519, %.lr.ph513.preheader ], [ %i.yu, %middle.block ]
  %.ph1104 = phi <2 x float> [ %i.yt, %.lr.ph513.preheader ], [ %i.zo, %middle.block ]
  br label %.lr.ph513

.lr.ph513:                                        ; preds = %.lr.ph513.preheader1103, %.lr.ph513
  %.0456511 = phi i32 [ %i.zy, %.lr.ph513 ], [ %.0456511.ph, %.lr.ph513.preheader1103 ]
  %.0461508 = phi ptr [ %i.zw, %.lr.ph513 ], [ %.0461508.ph, %.lr.ph513.preheader1103 ] ; 2 uses
  %.9526507 = phi ptr [ %i.zx, %.lr.ph513 ], [ %.9526507.ph, %.lr.ph513.preheader1103 ] ; 2 uses
  %i.zp = phi <2 x float> [ %i.zv, %.lr.ph513 ], [ %.ph1104, %.lr.ph513.preheader1103 ]
  %i.zq = load float, ptr %.9526507, align 4, !tbaa !39
  %i.zr = load <2 x float>, ptr %.0461508, align 4, !tbaa !39
  %i.zs = insertelement <2 x float> poison, float %i.zq, i64 0
  %i.zt = shufflevector <2 x float> %i.zs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zu = fmul fast <2 x float> %i.zr, %i.zt
  %i.zv = fadd fast <2 x float> %i.zu, %i.zp      ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %.0461508, i64 8
  %i.zx = getelementptr inbounds nuw i8, ptr %.9526507, i64 4
  %i.zy = add nuw nsw i32 %.0456511, 1            ; 2 uses
  %exitcond767.not = icmp eq i32 %i.zy, %6
  br i1 %exitcond767.not, label %._crit_edge514.loopexit, label %.lr.ph513, !llvm.loop !812

._crit_edge514.loopexit:                          ; preds = %.lr.ph513, %middle.block
  %i.zz = phi <2 x float> [ %i.zo, %middle.block ], [ %i.zv, %.lr.ph513 ]
  %i.aaa = getelementptr i8, ptr %.8525519, i64 %i.ar
  %scevgep766 = getelementptr i8, ptr %i.aaa, i64 4
  br label %._crit_edge514

._crit_edge514:                                   ; preds = %._crit_edge514.loopexit, %bb.x
  %.9526.lcssa = phi ptr [ %.8525519, %bb.x ], [ %scevgep766, %._crit_edge514.loopexit ]
  %i.aab = phi <2 x float> [ %i.yt, %bb.x ], [ %i.zz, %._crit_edge514.loopexit ]
  store <2 x float> %i.aab, ptr %.13520, align 4, !tbaa !39
  %i.aac = getelementptr inbounds nuw i8, ptr %.13520, i64 8 ; 2 uses
  %i.aad = add nuw nsw i32 %.4531518, 1           ; 2 uses
  %exitcond768.not = icmp eq i32 %i.aad, %4
  br i1 %exitcond768.not, label %._crit_edge522, label %.lr.ph521, !llvm.loop !813

._crit_edge522:                                   ; preds = %._crit_edge514, %.preheader276
  %.13.lcssa = phi ptr [ %.12.lcssa, %.preheader276 ], [ %i.aac, %._crit_edge514 ] ; 3 uses
  %indvars.iv.next770 = add nuw nsw i64 %indvars.iv769, 1 ; 2 uses
  %exitcond773.not = icmp eq i64 %indvars.iv.next770, %wide.trip.count772
  br i1 %exitcond773.not, label %bb.m, label %bb.n, !llvm.loop !814

.preheader274:                                    ; preds = %.preheader274.lr.ph, %bb.y
  %indvars.iv798 = phi i64 [ %i.pq, %.preheader274.lr.ph ], [ %indvars.iv.next799, %bb.y ] ; 2 uses
  %.14633 = phi ptr [ %.7479.lcssa, %.preheader274.lr.ph ], [ %.20.lcssa, %bb.y ]
  %i.aae = mul nsw i64 %indvars.iv798, %i.pr
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge628
  %indvars.iv.next799 = add nuw nsw i64 %indvars.iv798, 1 ; 2 uses
  %exitcond802.not = icmp eq i64 %indvars.iv.next799, %wide.trip.count801
  br i1 %exitcond802.not, label %._crit_edge634, label %.preheader274, !llvm.loop !815

bb.z:                                             ; preds = %.preheader274, %._crit_edge628
  %indvars.iv793 = phi i64 [ 0, %.preheader274 ], [ %indvars.iv.next794, %._crit_edge628 ] ; 3 uses
  %.15630 = phi ptr [ %.14633, %.preheader274 ], [ %.20.lcssa, %._crit_edge628 ] ; 2 uses
  %i.aaf = load ptr, ptr %0, align 8, !tbaa !18
  %i.aag = load i32, ptr %i.oz, align 4, !tbaa !75
  %i.aah = sext i32 %i.aag to i64
  %i.aai = mul nsw i64 %indvars.iv793, %i.aah
  %i.aaj = load i64, ptr %i.pa, align 8, !tbaa !65
  %i.aak = mul i64 %i.aai, %i.aaj
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaf, i64 %i.aak
  %i.aam = getelementptr inbounds [4 x i8], ptr %i.aal, i64 %i.aae ; 12 uses
  %i.aan = load ptr, ptr %1, align 8, !tbaa !18
  %i.aao = load i32, ptr %i.pb, align 4, !tbaa !75
  %i.aap = sext i32 %i.aao to i64
  %i.aaq = mul nsw i64 %indvars.iv793, %i.aap
  %i.aar = load i64, ptr %i.pc, align 8, !tbaa !65
  %i.aas = mul i64 %i.aaq, %i.aar
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.aas ; 2 uses
  br i1 %i.pd, label %.lr.ph547, label %.preheader273

.preheader273:                                    ; preds = %._crit_edge538, %bb.z
  %.16.lcssa = phi ptr [ %.15630, %bb.z ], [ %i.acy, %._crit_edge538 ] ; 2 uses
  %.0450.lcssa = phi ptr [ %i.aat, %bb.z ], [ %.1451.lcssa, %._crit_edge538 ] ; 2 uses
  %.0448.lcssa = phi i32 [ 0, %bb.z ], [ %i.pj, %._crit_edge538 ] ; 3 uses
  %i.aau = add nuw nsw i32 %.0448.lcssa, 7
  %i.aav = icmp slt i32 %i.aau, %4
  br i1 %i.aav, label %.lr.ph565, label %.preheader272

.lr.ph547:                                        ; preds = %bb.z, %._crit_edge538
  %.0448545 = phi i32 [ %i.acz, %._crit_edge538 ], [ 0, %bb.z ] ; 2 uses
  %.0450544 = phi ptr [ %.1451.lcssa, %._crit_edge538 ], [ %i.aat, %bb.z ] ; 3 uses
  %.16543 = phi ptr [ %i.acy, %._crit_edge538 ], [ %.15630, %bb.z ] ; 7 uses
  br i1 %i.pe, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph547
  %i.aaw = load <4 x float>, ptr %.16543, align 1, !tbaa !254
  %i.aax = getelementptr inbounds nuw i8, ptr %.16543, i64 16
  %i.aay = load <4 x float>, ptr %i.aax, align 1, !tbaa !254
  %i.aaz = getelementptr inbounds nuw i8, ptr %.16543, i64 32
  %i.aba = load <4 x float>, ptr %i.aaz, align 1, !tbaa !254
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph547, %bb.aa
  %.0217 = phi nsz <4 x float> [ %i.aaw, %bb.aa ], [ zeroinitializer, %.lr.ph547 ] ; 3 uses
  %.0215 = phi nsz <4 x float> [ %i.aay, %bb.aa ], [ zeroinitializer, %.lr.ph547 ] ; 3 uses
  %storemerge534 = phi <4 x float> [ %i.aba, %bb.aa ], [ zeroinitializer, %.lr.ph547 ] ; 3 uses
  br i1 %i.pf, label %.lr.ph537.preheader, label %._crit_edge538

.lr.ph537.preheader:                              ; preds = %bb.ab
  br i1 %i.pt, label %.lr.ph537.epil.preheader, label %.lr.ph537

.lr.ph537:                                        ; preds = %.lr.ph537.preheader, %.lr.ph537
  %.0447534 = phi ptr [ %i.acf, %.lr.ph537 ], [ %i.aam, %.lr.ph537.preheader ] ; 3 uses
  %.1451533 = phi ptr [ %i.acg, %.lr.ph537 ], [ %.0450544, %.lr.ph537.preheader ] ; 7 uses
  %.0214532 = phi <4 x float> [ %i.ace, %.lr.ph537 ], [ %storemerge534, %.lr.ph537.preheader ]
  %.1216531 = phi <4 x float> [ %i.acc, %.lr.ph537 ], [ %.0215, %.lr.ph537.preheader ]
  %.1218530 = phi <4 x float> [ %i.aca, %.lr.ph537 ], [ %.0217, %.lr.ph537.preheader ]
  %niter1200 = phi i32 [ %niter1200.next.1, %.lr.ph537 ], [ 0, %.lr.ph537.preheader ]
  %i.abb = load float, ptr %.0447534, align 4, !tbaa !39
  %i.abc = insertelement <4 x float> poison, float %i.abb, i64 0
  %i.abd = shufflevector <4 x float> %i.abc, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.abe = load <4 x float>, ptr %.1451533, align 16, !tbaa !254
  %i.abf = getelementptr inbounds nuw i8, ptr %.1451533, i64 16
  %i.abg = load <4 x float>, ptr %i.abf, align 16, !tbaa !254
  %i.abh = getelementptr inbounds nuw i8, ptr %.1451533, i64 32
  %i.abi = load <4 x float>, ptr %i.abh, align 16, !tbaa !254
  %i.abj = fmul fast <4 x float> %i.abd, %i.abe
  %i.abk = fadd fast <4 x float> %i.abj, %.1218530
  %i.abl = fmul fast <4 x float> %i.abd, %i.abg
  %i.abm = fadd fast <4 x float> %i.abl, %.1216531
  %i.abn = fmul fast <4 x float> %i.abi, %i.abd
  %i.abo = fadd fast <4 x float> %i.abn, %.0214532
  %i.abp = getelementptr inbounds nuw i8, ptr %.0447534, i64 4
  %i.abq = getelementptr inbounds nuw i8, ptr %.1451533, i64 48
  %i.abr = load float, ptr %i.abp, align 4, !tbaa !39
  %i.abs = insertelement <4 x float> poison, float %i.abr, i64 0
  %i.abt = shufflevector <4 x float> %i.abs, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.abu = load <4 x float>, ptr %i.abq, align 16, !tbaa !254
  %i.abv = getelementptr inbounds nuw i8, ptr %.1451533, i64 64
  %i.abw = load <4 x float>, ptr %i.abv, align 16, !tbaa !254
  %i.abx = getelementptr inbounds nuw i8, ptr %.1451533, i64 80
  %i.aby = load <4 x float>, ptr %i.abx, align 16, !tbaa !254
  %i.abz = fmul fast <4 x float> %i.abt, %i.abu
  %i.aca = fadd fast <4 x float> %i.abz, %i.abk   ; 3 uses
  %i.acb = fmul fast <4 x float> %i.abt, %i.abw
  %i.acc = fadd fast <4 x float> %i.acb, %i.abm   ; 3 uses
  %i.acd = fmul fast <4 x float> %i.aby, %i.abt
  %i.ace = fadd fast <4 x float> %i.acd, %i.abo   ; 3 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %.0447534, i64 8 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %.1451533, i64 96 ; 3 uses
  %niter1200.next.1 = add nuw nsw i32 %niter1200, 2 ; 2 uses
  %niter1200.ncmp.1 = icmp eq i32 %niter1200.next.1, %unroll_iter1199
  br i1 %niter1200.ncmp.1, label %._crit_edge538.loopexit.unr-lcssa, label %.lr.ph537, !llvm.loop !816

._crit_edge538.loopexit.unr-lcssa:                ; preds = %.lr.ph537
  br i1 %lcmp.mod1193.not, label %._crit_edge538, label %.lr.ph537.epil.preheader

.lr.ph537.epil.preheader:                         ; preds = %._crit_edge538.loopexit.unr-lcssa, %.lr.ph537.preheader
  %.0447534.epil.init = phi ptr [ %i.aam, %.lr.ph537.preheader ], [ %i.acf, %._crit_edge538.loopexit.unr-lcssa ]
  %.1451533.epil.init = phi ptr [ %.0450544, %.lr.ph537.preheader ], [ %i.acg, %._crit_edge538.loopexit.unr-lcssa ] ; 4 uses
  %.0214532.epil.init = phi <4 x float> [ %storemerge534, %.lr.ph537.preheader ], [ %i.ace, %._crit_edge538.loopexit.unr-lcssa ]
  %.1216531.epil.init = phi <4 x float> [ %.0215, %.lr.ph537.preheader ], [ %i.acc, %._crit_edge538.loopexit.unr-lcssa ]
  %.1218530.epil.init = phi <4 x float> [ %.0217, %.lr.ph537.preheader ], [ %i.aca, %._crit_edge538.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1198)
  %i.ach = load float, ptr %.0447534.epil.init, align 4, !tbaa !39
  %i.aci = insertelement <4 x float> poison, float %i.ach, i64 0
  %i.acj = shufflevector <4 x float> %i.aci, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ack = load <4 x float>, ptr %.1451533.epil.init, align 16, !tbaa !254
  %i.acl = getelementptr inbounds nuw i8, ptr %.1451533.epil.init, i64 16
  %i.acm = load <4 x float>, ptr %i.acl, align 16, !tbaa !254
  %i.acn = getelementptr inbounds nuw i8, ptr %.1451533.epil.init, i64 32
  %i.aco = load <4 x float>, ptr %i.acn, align 16, !tbaa !254
  %i.acp = fmul fast <4 x float> %i.acj, %i.ack
  %i.acq = fadd fast <4 x float> %i.acp, %.1218530.epil.init
  %i.acr = fmul fast <4 x float> %i.acj, %i.acm
  %i.acs = fadd fast <4 x float> %i.acr, %.1216531.epil.init
  %i.act = fmul fast <4 x float> %i.aco, %i.acj
  %i.acu = fadd fast <4 x float> %i.act, %.0214532.epil.init
  %i.acv = getelementptr inbounds nuw i8, ptr %.1451533.epil.init, i64 48
  br label %._crit_edge538

._crit_edge538:                                   ; preds = %.lr.ph537.epil.preheader, %._crit_edge538.loopexit.unr-lcssa, %bb.ab
  %.1218.lcssa = phi <4 x float> [ %.0217, %bb.ab ], [ %i.aca, %._crit_edge538.loopexit.unr-lcssa ], [ %i.acq, %.lr.ph537.epil.preheader ]
  %.1216.lcssa = phi <4 x float> [ %.0215, %bb.ab ], [ %i.acc, %._crit_edge538.loopexit.unr-lcssa ], [ %i.acs, %.lr.ph537.epil.preheader ]
  %.0214.lcssa = phi <4 x float> [ %storemerge534, %bb.ab ], [ %i.ace, %._crit_edge538.loopexit.unr-lcssa ], [ %i.acu, %.lr.ph537.epil.preheader ]
  %.1451.lcssa = phi ptr [ %.0450544, %bb.ab ], [ %i.acg, %._crit_edge538.loopexit.unr-lcssa ], [ %i.acv, %.lr.ph537.epil.preheader ] ; 2 uses
  store <4 x float> %.1218.lcssa, ptr %.16543, align 1, !tbaa !254
  %i.acw = getelementptr inbounds nuw i8, ptr %.16543, i64 16
  store <4 x float> %.1216.lcssa, ptr %i.acw, align 1, !tbaa !254
  %i.acx = getelementptr inbounds nuw i8, ptr %.16543, i64 32
  store <4 x float> %.0214.lcssa, ptr %i.acx, align 1, !tbaa !254
  %i.acy = getelementptr inbounds nuw i8, ptr %.16543, i64 48 ; 2 uses
  %i.acz = add nuw nsw i32 %.0448545, 12
  %i.ada = add nuw nsw i32 %.0448545, 23
  %i.adb = icmp slt i32 %i.ada, %4
  br i1 %i.adb, label %.lr.ph547, label %.preheader273, !llvm.loop !817

.preheader272:                                    ; preds = %._crit_edge558, %.preheader273
  %.17.lcssa = phi ptr [ %.16.lcssa, %.preheader273 ], [ %i.aha, %._crit_edge558 ] ; 5 uses
  %.2452.lcssa = phi ptr [ %.0450.lcssa, %.preheader273 ], [ %.3453.lcssa, %._crit_edge558 ] ; 4 uses
  %.1449.lcssa = phi i32 [ %.0448.lcssa, %.preheader273 ], [ %i.ahb, %._crit_edge558 ] ; 7 uses
  %i.adc = or disjoint i32 %.1449.lcssa, 3
  %i.add = icmp slt i32 %i.adc, %4
  br i1 %i.add, label %.lr.ph581, label %.preheader271

.lr.ph581:                                        ; preds = %.preheader272
  br i1 %i.pf, label %.lr.ph581.split.us, label %.lr.ph581.split

.lr.ph581.split.us:                               ; preds = %.lr.ph581, %._crit_edge575.us
  %.2580.us = phi i32 [ %i.aev, %._crit_edge575.us ], [ %.1449.lcssa, %.lr.ph581 ]
  %.4454579.us = phi ptr [ %scevgep786.a, %._crit_edge575.us ], [ %.2452.lcssa, %.lr.ph581 ] ; 3 uses
  %.18578.us = phi ptr [ %i.aeu, %._crit_edge575.us ], [ %.17.lcssa, %.lr.ph581 ] ; 3 uses
  br i1 %i.pe, label %.lr.ph574.us.preheader, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph581.split.us
  %i.ade = load <4 x float>, ptr %.18578.us, align 1, !tbaa !254
  br label %.lr.ph574.us.preheader

.lr.ph574.us.preheader:                           ; preds = %bb.ac, %.lr.ph581.split.us
  %.0196569.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph581.split.us ], [ %i.ade, %bb.ac ] ; 2 uses
  br i1 %i.pv, label %.lr.ph574.us.epil.preheader, label %.lr.ph574.us

.lr.ph574.us:                                     ; preds = %.lr.ph574.us.preheader, %.lr.ph574.us
  %.0443571.us = phi ptr [ %i.aej, %.lr.ph574.us ], [ %i.aam, %.lr.ph574.us.preheader ] ; 5 uses
  %.5570.us = phi ptr [ %i.aek, %.lr.ph574.us ], [ %.4454579.us, %.lr.ph574.us.preheader ] ; 5 uses
  %.0196569.us = phi <4 x float> [ %i.aei, %.lr.ph574.us ], [ %.0196569.us.ph, %.lr.ph574.us.preheader ]
  %niter1215 = phi i32 [ %niter1215.next.3, %.lr.ph574.us ], [ 0, %.lr.ph574.us.preheader ]
  %i.adf = load float, ptr %.0443571.us, align 4, !tbaa !39
  %i.adg = insertelement <4 x float> poison, float %i.adf, i64 0
  %i.adh = shufflevector <4 x float> %i.adg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.adi = load <4 x float>, ptr %.5570.us, align 16, !tbaa !254
  %i.adj = fmul fast <4 x float> %i.adh, %i.adi
  %i.adk = fadd fast <4 x float> %i.adj, %.0196569.us
  %i.adl = getelementptr inbounds nuw i8, ptr %.0443571.us, i64 4
  %i.adm = getelementptr inbounds nuw i8, ptr %.5570.us, i64 16
  %i.adn = load float, ptr %i.adl, align 4, !tbaa !39
  %i.ado = insertelement <4 x float> poison, float %i.adn, i64 0
  %i.adp = shufflevector <4 x float> %i.ado, <4 x float> poison, <4 x i32> zeroinitializer
  %i.adq = load <4 x float>, ptr %i.adm, align 16, !tbaa !254
  %i.adr = fmul fast <4 x float> %i.adp, %i.adq
  %i.ads = fadd fast <4 x float> %i.adr, %i.adk
  %i.adt = getelementptr inbounds nuw i8, ptr %.0443571.us, i64 8
  %i.adu = getelementptr inbounds nuw i8, ptr %.5570.us, i64 32
  %i.adv = load float, ptr %i.adt, align 4, !tbaa !39
  %i.adw = insertelement <4 x float> poison, float %i.adv, i64 0
  %i.adx = shufflevector <4 x float> %i.adw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ady = load <4 x float>, ptr %i.adu, align 16, !tbaa !254
  %i.adz = fmul fast <4 x float> %i.adx, %i.ady
  %i.aea = fadd fast <4 x float> %i.adz, %i.ads
  %i.aeb = getelementptr inbounds nuw i8, ptr %.0443571.us, i64 12
  %i.aec = getelementptr inbounds nuw i8, ptr %.5570.us, i64 48
  %i.aed = load float, ptr %i.aeb, align 4, !tbaa !39
  %i.aee = insertelement <4 x float> poison, float %i.aed, i64 0
  %i.aef = shufflevector <4 x float> %i.aee, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aeg = load <4 x float>, ptr %i.aec, align 16, !tbaa !254
  %i.aeh = fmul fast <4 x float> %i.aef, %i.aeg
  %i.aei = fadd fast <4 x float> %i.aeh, %i.aea   ; 3 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %.0443571.us, i64 16 ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %.5570.us, i64 64 ; 2 uses
  %niter1215.next.3 = add nuw nsw i32 %niter1215, 4 ; 2 uses
  %niter1215.ncmp.3 = icmp eq i32 %niter1215.next.3, %unroll_iter1214
  br i1 %niter1215.ncmp.3, label %._crit_edge575.us.unr-lcssa, label %.lr.ph574.us, !llvm.loop !818

._crit_edge575.us.unr-lcssa:                      ; preds = %.lr.ph574.us
  br i1 %lcmp.mod1211.not, label %._crit_edge575.us, label %.lr.ph574.us.epil.preheader

.lr.ph574.us.epil.preheader:                      ; preds = %._crit_edge575.us.unr-lcssa, %.lr.ph574.us.preheader
  %.0443571.us.epil.init = phi ptr [ %i.aam, %.lr.ph574.us.preheader ], [ %i.aej, %._crit_edge575.us.unr-lcssa ]
  %.5570.us.epil.init = phi ptr [ %.4454579.us, %.lr.ph574.us.preheader ], [ %i.aek, %._crit_edge575.us.unr-lcssa ]
  %.0196569.us.epil.init = phi <4 x float> [ %.0196569.us.ph, %.lr.ph574.us.preheader ], [ %i.aei, %._crit_edge575.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1213)
  br label %.lr.ph574.us.epil

.lr.ph574.us.epil:                                ; preds = %.lr.ph574.us.epil, %.lr.ph574.us.epil.preheader
  %.0443571.us.epil = phi ptr [ %i.aer, %.lr.ph574.us.epil ], [ %.0443571.us.epil.init, %.lr.ph574.us.epil.preheader ] ; 2 uses
  %.5570.us.epil = phi ptr [ %i.aes, %.lr.ph574.us.epil ], [ %.5570.us.epil.init, %.lr.ph574.us.epil.preheader ] ; 2 uses
  %.0196569.us.epil = phi <4 x float> [ %i.aeq, %.lr.ph574.us.epil ], [ %.0196569.us.epil.init, %.lr.ph574.us.epil.preheader ]
  %epil.iter1210 = phi i32 [ %epil.iter1210.next, %.lr.ph574.us.epil ], [ 0, %.lr.ph574.us.epil.preheader ]
  %i.ael = load float, ptr %.0443571.us.epil, align 4, !tbaa !39
  %i.aem = insertelement <4 x float> poison, float %i.ael, i64 0
  %i.aen = shufflevector <4 x float> %i.aem, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aeo = load <4 x float>, ptr %.5570.us.epil, align 16, !tbaa !254
  %i.aep = fmul fast <4 x float> %i.aen, %i.aeo
  %i.aeq = fadd fast <4 x float> %i.aep, %.0196569.us.epil ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %.0443571.us.epil, i64 4
  %i.aes = getelementptr inbounds nuw i8, ptr %.5570.us.epil, i64 16
  %epil.iter1210.next = add i32 %epil.iter1210, 1 ; 2 uses
  %epil.iter1210.cmp.not = icmp eq i32 %epil.iter1210.next, %xtraiter1209
  br i1 %epil.iter1210.cmp.not, label %._crit_edge575.us, label %.lr.ph574.us.epil, !llvm.loop !819

._crit_edge575.us:                                ; preds = %.lr.ph574.us.epil, %._crit_edge575.us.unr-lcssa
  %.lcssa1089 = phi <4 x float> [ %i.aei, %._crit_edge575.us.unr-lcssa ], [ %i.aeq, %.lr.ph574.us.epil ]
  %i.aet = getelementptr i8, ptr %.4454579.us, i64 %i.pn
  %scevgep786.a = getelementptr i8, ptr %i.aet, i64 16 ; 2 uses
  store <4 x float> %.lcssa1089, ptr %.18578.us, align 1, !tbaa !254
  %i.aeu = getelementptr inbounds nuw i8, ptr %.18578.us, i64 16 ; 2 uses
  %i.aev = add nuw nsw i32 %.2580.us, 4           ; 3 uses
  %i.aew = or disjoint i32 %i.aev, 3
  %i.aex = icmp slt i32 %i.aew, %4
  br i1 %i.aex, label %.lr.ph581.split.us, label %.preheader271, !llvm.loop !820

.lr.ph581.split:                                  ; preds = %.lr.ph581
  br i1 %i.pe, label %.lr.ph581.split.split.us.preheader, label %.lr.ph581.split.split.preheader

.lr.ph581.split.split.preheader:                  ; preds = %.lr.ph581.split
  %scevgep780 = getelementptr i8, ptr %.17.lcssa, i64 16
  %i.aey = sub i32 %7, %.1449.lcssa               ; 2 uses
  %i.aez = lshr i32 %i.aey, 2
  %i.afa = zext nneg i32 %i.aez to i64
  %i.afb = shl nuw nsw i64 %i.afa, 4
  %scevgep781 = getelementptr i8, ptr %scevgep780, i64 %i.afb
  %i.afc = add i32 %.1449.lcssa, 4
  %i.afd = and i32 %i.aey, -4
  %i.afe = add i32 %i.afc, %i.afd
  br label %.preheader271

.lr.ph581.split.split.us.preheader:               ; preds = %.lr.ph581.split
  %i.aff = sub i32 %7, %.1449.lcssa               ; 2 uses
  %i.afg = lshr i32 %i.aff, 2
  %i.afh = zext nneg i32 %i.afg to i64
  %i.afi = shl nuw nsw i64 %i.afh, 4              ; 2 uses
  %i.afj = add nuw nsw i64 %i.afi, 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.17.lcssa, i8 0, i64 %i.afj, i1 false), !tbaa !254
  %scevgep783.a = getelementptr i8, ptr %.17.lcssa, i64 16
  %scevgep785 = getelementptr i8, ptr %scevgep783.a, i64 %i.afi
  %i.afk = add i32 %.1449.lcssa, 4
  %i.afl = and i32 %i.aff, -4
  %i.afm = add i32 %i.afk, %i.afl
  br label %.preheader271

.lr.ph565:                                        ; preds = %.preheader273, %._crit_edge558
  %.1449564 = phi i32 [ %i.ahb, %._crit_edge558 ], [ %.0448.lcssa, %.preheader273 ] ; 2 uses
  %.2452563 = phi ptr [ %.3453.lcssa, %._crit_edge558 ], [ %.0450.lcssa, %.preheader273 ] ; 4 uses
  %.17562 = phi ptr [ %i.aha, %._crit_edge558 ], [ %.16.lcssa, %.preheader273 ] ; 5 uses
  br i1 %i.pe, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph565
  %i.afn = load <4 x float>, ptr %.17562, align 1, !tbaa !254
  %i.afo = getelementptr inbounds nuw i8, ptr %.17562, i64 16
  %i.afp = load <4 x float>, ptr %i.afo, align 1, !tbaa !254
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph565, %bb.ad
  %.0204 = phi nsz <4 x float> [ %i.afn, %bb.ad ], [ zeroinitializer, %.lr.ph565 ] ; 3 uses
  %storemerge533 = phi <4 x float> [ %i.afp, %bb.ad ], [ zeroinitializer, %.lr.ph565 ] ; 3 uses
  br i1 %i.pf, label %.lr.ph557.preheader, label %._crit_edge558

.lr.ph557.preheader:                              ; preds = %bb.ae
  br i1 %i.pu, label %.lr.ph557.epil.preheader, label %.lr.ph557

.lr.ph557:                                        ; preds = %.lr.ph557.preheader, %.lr.ph557
  %.0445554 = phi ptr [ %i.agm, %.lr.ph557 ], [ %i.aam, %.lr.ph557.preheader ] ; 3 uses
  %.3453553 = phi ptr [ %i.agn, %.lr.ph557 ], [ %.2452563, %.lr.ph557.preheader ] ; 5 uses
  %.0203552 = phi <4 x float> [ %i.agl, %.lr.ph557 ], [ %storemerge533, %.lr.ph557.preheader ]
  %.1205551 = phi <4 x float> [ %i.agj, %.lr.ph557 ], [ %.0204, %.lr.ph557.preheader ]
  %niter1208 = phi i32 [ %niter1208.next.1, %.lr.ph557 ], [ 0, %.lr.ph557.preheader ]
  %i.afq = load float, ptr %.0445554, align 4, !tbaa !39
  %i.afr = insertelement <4 x float> poison, float %i.afq, i64 0
  %i.afs = shufflevector <4 x float> %i.afr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aft = load <4 x float>, ptr %.3453553, align 16, !tbaa !254
  %i.afu = getelementptr inbounds nuw i8, ptr %.3453553, i64 16
  %i.afv = load <4 x float>, ptr %i.afu, align 16, !tbaa !254
  %i.afw = fmul fast <4 x float> %i.afs, %i.aft
  %i.afx = fadd fast <4 x float> %i.afw, %.1205551
  %i.afy = fmul fast <4 x float> %i.afs, %i.afv
  %i.afz = fadd fast <4 x float> %i.afy, %.0203552
  %i.aga = getelementptr inbounds nuw i8, ptr %.0445554, i64 4
  %i.agb = getelementptr inbounds nuw i8, ptr %.3453553, i64 32
  %i.agc = load float, ptr %i.aga, align 4, !tbaa !39
  %i.agd = insertelement <4 x float> poison, float %i.agc, i64 0
  %i.age = shufflevector <4 x float> %i.agd, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.agf = load <4 x float>, ptr %i.agb, align 16, !tbaa !254
  %i.agg = getelementptr inbounds nuw i8, ptr %.3453553, i64 48
  %i.agh = load <4 x float>, ptr %i.agg, align 16, !tbaa !254
  %i.agi = fmul fast <4 x float> %i.age, %i.agf
  %i.agj = fadd fast <4 x float> %i.agi, %i.afx   ; 3 uses
  %i.agk = fmul fast <4 x float> %i.age, %i.agh
  %i.agl = fadd fast <4 x float> %i.agk, %i.afz   ; 3 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %.0445554, i64 8 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %.3453553, i64 64 ; 2 uses
  %niter1208.next.1 = add nuw nsw i32 %niter1208, 2 ; 2 uses
  %niter1208.ncmp.1 = icmp eq i32 %niter1208.next.1, %unroll_iter1207
  br i1 %niter1208.ncmp.1, label %._crit_edge558.loopexit.unr-lcssa, label %.lr.ph557, !llvm.loop !821

._crit_edge558.loopexit.unr-lcssa:                ; preds = %.lr.ph557
  br i1 %lcmp.mod1203.not, label %._crit_edge558.loopexit, label %.lr.ph557.epil.preheader

.lr.ph557.epil.preheader:                         ; preds = %._crit_edge558.loopexit.unr-lcssa, %.lr.ph557.preheader
  %.0445554.epil.init = phi ptr [ %i.aam, %.lr.ph557.preheader ], [ %i.agm, %._crit_edge558.loopexit.unr-lcssa ]
  %.3453553.epil.init = phi ptr [ %.2452563, %.lr.ph557.preheader ], [ %i.agn, %._crit_edge558.loopexit.unr-lcssa ] ; 2 uses
  %.0203552.epil.init = phi <4 x float> [ %storemerge533, %.lr.ph557.preheader ], [ %i.agl, %._crit_edge558.loopexit.unr-lcssa ]
  %.1205551.epil.init = phi <4 x float> [ %.0204, %.lr.ph557.preheader ], [ %i.agj, %._crit_edge558.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1206)
  %i.ago = load float, ptr %.0445554.epil.init, align 4, !tbaa !39
  %i.agp = insertelement <4 x float> poison, float %i.ago, i64 0
  %i.agq = shufflevector <4 x float> %i.agp, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.agr = load <4 x float>, ptr %.3453553.epil.init, align 16, !tbaa !254
  %i.ags = getelementptr inbounds nuw i8, ptr %.3453553.epil.init, i64 16
  %i.agt = load <4 x float>, ptr %i.ags, align 16, !tbaa !254
  %i.agu = fmul fast <4 x float> %i.agq, %i.agr
  %i.agv = fadd fast <4 x float> %i.agu, %.1205551.epil.init
  %i.agw = fmul fast <4 x float> %i.agq, %i.agt
  %i.agx = fadd fast <4 x float> %i.agw, %.0203552.epil.init
  br label %._crit_edge558.loopexit

._crit_edge558.loopexit:                          ; preds = %._crit_edge558.loopexit.unr-lcssa, %.lr.ph557.epil.preheader
  %.lcssa1086 = phi <4 x float> [ %i.agj, %._crit_edge558.loopexit.unr-lcssa ], [ %i.agv, %.lr.ph557.epil.preheader ]
  %.lcssa1085 = phi <4 x float> [ %i.agl, %._crit_edge558.loopexit.unr-lcssa ], [ %i.agx, %.lr.ph557.epil.preheader ]
  %i.agy = getelementptr i8, ptr %.2452563, i64 %i.pm
  %scevgep778 = getelementptr i8, ptr %i.agy, i64 32
  br label %._crit_edge558

._crit_edge558:                                   ; preds = %._crit_edge558.loopexit, %bb.ae
  %.1205.lcssa = phi <4 x float> [ %.0204, %bb.ae ], [ %.lcssa1086, %._crit_edge558.loopexit ]
  %.0203.lcssa = phi <4 x float> [ %storemerge533, %bb.ae ], [ %.lcssa1085, %._crit_edge558.loopexit ]
  %.3453.lcssa = phi ptr [ %.2452563, %bb.ae ], [ %scevgep778, %._crit_edge558.loopexit ] ; 2 uses
  store <4 x float> %.1205.lcssa, ptr %.17562, align 1, !tbaa !254
  %i.agz = getelementptr inbounds nuw i8, ptr %.17562, i64 16
  store <4 x float> %.0203.lcssa, ptr %i.agz, align 1, !tbaa !254
  %i.aha = getelementptr inbounds nuw i8, ptr %.17562, i64 32 ; 2 uses
  %i.ahb = add nuw nsw i32 %.1449564, 8           ; 2 uses
  %i.ahc = add nuw nsw i32 %.1449564, 15
  %i.ahd = icmp slt i32 %i.ahc, %4
  br i1 %i.ahd, label %.lr.ph565, label %.preheader272, !llvm.loop !822

.preheader271:                                    ; preds = %._crit_edge575.us, %.lr.ph581.split.split.preheader, %.lr.ph581.split.split.us.preheader, %.preheader272
  %.18.lcssa = phi ptr [ %.17.lcssa, %.preheader272 ], [ %scevgep785, %.lr.ph581.split.split.us.preheader ], [ %scevgep781, %.lr.ph581.split.split.preheader ], [ %i.aeu, %._crit_edge575.us ] ; 2 uses
  %.4454.lcssa = phi ptr [ %.2452.lcssa, %.preheader272 ], [ %.2452.lcssa, %.lr.ph581.split.split.us.preheader ], [ %.2452.lcssa, %.lr.ph581.split.split.preheader ], [ %scevgep786.a, %._crit_edge575.us ] ; 2 uses
  %.2.lcssa = phi i32 [ %.1449.lcssa, %.preheader272 ], [ %i.afm, %.lr.ph581.split.split.us.preheader ], [ %i.afe, %.lr.ph581.split.split.preheader ], [ %i.aev, %._crit_edge575.us ] ; 3 uses
  %i.ahe = or disjoint i32 %.2.lcssa, 1
  %i.ahf = icmp slt i32 %i.ahe, %4
  br i1 %i.ahf, label %.lr.ph611.preheader, label %.preheader

.lr.ph611.preheader:                              ; preds = %.preheader271
  %i.ahg = getelementptr i8, ptr %i.aam, i64 %i.py
  br label %.lr.ph611

.preheader:                                       ; preds = %._crit_edge604, %.preheader271
  %.19.lcssa = phi ptr [ %.18.lcssa, %.preheader271 ], [ %i.ait, %._crit_edge604 ] ; 2 uses
  %.6.lcssa = phi ptr [ %.4454.lcssa, %.preheader271 ], [ %.7.lcssa, %._crit_edge604 ]
  %.3.lcssa = phi i32 [ %.2.lcssa, %.preheader271 ], [ %i.aiu, %._crit_edge604 ] ; 2 uses
  %i.ahh = icmp slt i32 %.3.lcssa, %4
  br i1 %i.ahh, label %.lr.ph627.preheader, label %._crit_edge628

.lr.ph627.preheader:                              ; preds = %.preheader
  %i.ahi = getelementptr i8, ptr %i.aam, i64 %i.qc
  br label %.lr.ph627

.lr.ph611:                                        ; preds = %.lr.ph611.preheader, %._crit_edge604
  %.3610 = phi i32 [ %i.aiu, %._crit_edge604 ], [ %.2.lcssa, %.lr.ph611.preheader ]
  %.6609 = phi ptr [ %.7.lcssa, %._crit_edge604 ], [ %.4454.lcssa, %.lr.ph611.preheader ] ; 6 uses
  %.19608 = phi ptr [ %i.ait, %._crit_edge604 ], [ %.18.lcssa, %.lr.ph611.preheader ] ; 3 uses
  br i1 %i.pe, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph611
  %i.ahj = load <2 x float>, ptr %.19608, align 4, !tbaa !39
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph611, %bb.af
  %i.ahk = phi <2 x float> [ %i.ahj, %bb.af ], [ zeroinitializer, %.lr.ph611 ] ; 3 uses
  br i1 %i.pf, label %.lr.ph603.preheader, label %._crit_edge604

.lr.ph603.preheader:                              ; preds = %bb.ag
  br i1 %min.iters.check1049, label %.lr.ph603.preheader1080, label %vector.ph1050

vector.ph1050:                                    ; preds = %.lr.ph603.preheader
  %i.ahl = getelementptr i8, ptr %.6609, i64 %i.pz
  %i.ahm = shufflevector <2 x float> %i.ahk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ahn = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.ahm, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.aho = shufflevector <4 x float> %i.ahm, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body1052

vector.body1052:                                  ; preds = %vector.body1052, %vector.ph1050
  %index1053 = phi i64 [ 0, %vector.ph1050 ], [ %index.next1069, %vector.body1052 ] ; 3 uses
  %vec.phi1054.a = phi <4 x float> [ %i.ahn, %vector.ph1050 ], [ %i.ahz, %vector.body1052 ]
  %vec.phi1055.a = phi <4 x float> [ zeroinitializer, %vector.ph1050 ], [ %i.aia, %vector.body1052 ]
  %vec.phi1056 = phi <4 x float> [ %i.aho, %vector.ph1050 ], [ %i.ahv, %vector.body1052 ]
  %vec.phi1057 = phi <4 x float> [ zeroinitializer, %vector.ph1050 ], [ %i.ahw, %vector.body1052 ]
  %i.ahp = shl i64 %index1053, 2
  %next.gep1058.a = getelementptr i8, ptr %i.aam, i64 %i.ahp ; 2 uses
  %i.ahq = shl i64 %index1053, 3                  ; 2 uses
  %next.gep1059 = getelementptr i8, ptr %.6609, i64 %i.ahq
  %i.ahr = getelementptr i8, ptr %.6609, i64 %i.ahq
  %next.gep1060 = getelementptr i8, ptr %i.ahr, i64 32
  %i.ahs = getelementptr i8, ptr %next.gep1058.a, i64 16
  %wide.load1061 = load <4 x float>, ptr %next.gep1058.a, align 4, !tbaa !39 ; 2 uses
  %wide.load1062 = load <4 x float>, ptr %i.ahs, align 4, !tbaa !39 ; 2 uses
  %wide.vec1063 = load <8 x float>, ptr %next.gep1059, align 4, !tbaa !39 ; 2 uses
  %strided.vec1064 = shufflevector <8 x float> %wide.vec1063, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1065.a = shufflevector <8 x float> %wide.vec1063, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec1066 = load <8 x float>, ptr %next.gep1060, align 4, !tbaa !39 ; 2 uses
  %strided.vec1067 = shufflevector <8 x float> %wide.vec1066, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1068 = shufflevector <8 x float> %wide.vec1066, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aht = fmul fast <4 x float> %strided.vec1064, %wide.load1061
  %i.ahu = fmul fast <4 x float> %strided.vec1067, %wide.load1062
  %i.ahv = fadd fast <4 x float> %i.aht, %vec.phi1056 ; 2 uses
  %i.ahw = fadd fast <4 x float> %i.ahu, %vec.phi1057 ; 2 uses
  %i.ahx = fmul fast <4 x float> %strided.vec1065.a, %wide.load1061
  %i.ahy = fmul fast <4 x float> %strided.vec1068, %wide.load1062
  %i.ahz = fadd fast <4 x float> %i.ahx, %vec.phi1054.a ; 2 uses
  %i.aia = fadd fast <4 x float> %i.ahy, %vec.phi1055.a ; 2 uses
  %index.next1069 = add nuw i64 %index1053, 8     ; 2 uses
  %i.aib = icmp eq i64 %index.next1069, %n.vec1051
  br i1 %i.aib, label %middle.block1070, label %vector.body1052, !llvm.loop !823

middle.block1070:                                 ; preds = %vector.body1052
  %bin.rdx1071 = fadd fast <4 x float> %i.aia, %i.ahz
  %i.aic = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1071)
  %bin.rdx1072 = fadd fast <4 x float> %i.ahw, %i.ahv
  %i.aid = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1072)
  %i.aie = insertelement <2 x float> poison, float %i.aid, i64 0
  %i.aif = insertelement <2 x float> %i.aie, float %i.aic, i64 1 ; 2 uses
  br i1 %cmp.n1073, label %._crit_edge604.loopexit, label %.lr.ph603.preheader1080

.lr.ph603.preheader1080:                          ; preds = %.lr.ph603.preheader, %middle.block1070
  %.0436601.ph = phi i32 [ 0, %.lr.ph603.preheader ], [ %i.px, %middle.block1070 ]
  %.0441598.ph = phi ptr [ %i.aam, %.lr.ph603.preheader ], [ %i.ahg, %middle.block1070 ]
  %.7597.ph = phi ptr [ %.6609, %.lr.ph603.preheader ], [ %i.ahl, %middle.block1070 ]
end_hunk_9
begin_hunk_10_@_ZN4ncnnL20conv3x3s1_winograd43ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.db = load ptr, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %.not.i35 = icmp eq ptr %i.db, null
  br i1 %.not.i35, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.f

bb.f:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit48
  %i.dc = atomicrmw add ptr %i.db, i32 -1 acq_rel, align 4
  %i.dd = icmp eq i32 %i.dc, 1
  br i1 %i.dd, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit33

bb.g:                                             ; preds = %bb.f
  %i.de = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 3 uses
  %.not3.i36 = icmp eq ptr %i.de, null
  %i.df = load ptr, ptr %12, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !9
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  invoke void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef %i.df)
          to label %_ZN4ncnn3MatD2Ev.exit33 unwind label %bb.k, !inline_history !19

bb.i:                                             ; preds = %bb.g
  %.not.i44 = icmp eq ptr %i.df, null
  br i1 %.not.i44, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.df) #12
  br label %_ZN4ncnn3MatD2Ev.exit33

bb.k:                                             ; preds = %bb.h
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit33:                          ; preds = %bb.f, %_ZN4ncnn3Mat7channelEi.exit48, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.dl = load ptr, ptr %i.v, align 8, !tbaa !11  ; 2 uses
  %.not.i39 = icmp eq ptr %i.dl, null
  br i1 %.not.i39, label %_ZN4ncnn3MatD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit33
  %i.dm = atomicrmw add ptr %i.dl, i32 -1 acq_rel, align 4
  %i.dn = icmp eq i32 %i.dm, 1
  br i1 %i.dn, label %bb.m, label %_ZN4ncnn3MatD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.do = load ptr, ptr %i.y, align 8, !tbaa !17  ; 3 uses
  %.not3.i40 = icmp eq ptr %i.do, null
  %i.dp = load ptr, ptr %11, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !9
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.dp)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.q, !inline_history !19

bb.o:                                             ; preds = %bb.m
  %.not.i43 = icmp eq ptr %i.dp, null
  br i1 %.not.i43, label %_ZN4ncnn3MatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.dp) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.q:                                             ; preds = %bb.n
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.l, %_ZN4ncnn3MatD2Ev.exit33, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.dv = add nsw i32 %.067, 1
  %i.dw = load i32, ptr %i.e, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.067, %i.dw
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.s:                                             ; preds = %bb.c
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #27
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20conv3x3s1_winograd43ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ea

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not138 = icmp sgt i32 %i.k, %i.j
  br i1 %.not138, label %._crit_edge142, label %.lr.ph141

.lr.ph141:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 44
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph141, %_ZN4ncnn3MatD2Ev.exit
  %.045139 = phi i32 [ %i.k, %.lr.ph141 ], [ %i.bm, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.as = load i32, ptr %3, align 4, !tbaa !67
  %i.at = mul nsw i32 %i.as, %.045139             ; 4 uses
  %i.au = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit76 unwind label %bb.eb

_ZN4ncnn3Mat7channelEi.exit76:                    ; preds = %bb.c
  %i.av = load ptr, ptr %4, align 8, !tbaa !18, !noalias !876
  %i.aw = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !876
  %i.ax = sext i32 %i.au to i64
  %i.ay = mul i64 %i.aw, %i.ax
  %i.az = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !876
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba ; 4 uses
  %i.bc = load i32, ptr %5, align 4, !tbaa !67
  %i.bd = sub nsw i32 %i.bc, %i.at
  %i.be = load i32, ptr %3, align 4, !tbaa !67
  %.sroa.speculated121 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bd) ; 8 uses
  %i.bf = load i32, ptr %6, align 4, !tbaa !67    ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit76
  %i.bh = icmp sgt i32 %.sroa.speculated121, 3
  %i.bi = sext i32 %i.at to i64                   ; 3 uses
  %i.bj = and i32 %.sroa.speculated121, 2147483644
  %i.bk = zext nneg i32 %.sroa.speculated121 to i64
  %16 = add i32 %.sroa.speculated121, -2
  %i.bl = sext i32 %.sroa.speculated121 to i64    ; 2 uses
  %invariant.op.i = add nsw i64 %i.bl, -1
  %.pre = load i32, ptr %7, align 4, !tbaa !67
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL42conv3x3s1_winograd43_transform_output_tileERKNS_3MatERS0_S2_iiii.exit, %_ZN4ncnn3Mat7channelEi.exit76
  %i.bm = add nsw i32 %.045139, 1
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.045139, %i.bn
  br i1 %.not.not, label %bb.c, label %._crit_edge142

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnnL42conv3x3s1_winograd43_transform_output_tileERKNS_3MatERS0_S2_iiii.exit
  %i.bo = phi i32 [ %.pre, %.lr.ph ], [ %i.atm, %_ZN4ncnnL42conv3x3s1_winograd43_transform_output_tileERKNS_3MatERS0_S2_iiii.exit ]
  %i.bp = phi i32 [ %i.bf, %.lr.ph ], [ %i.ato, %_ZN4ncnnL42conv3x3s1_winograd43_transform_output_tileERKNS_3MatERS0_S2_iiii.exit ]
  %.044137 = phi i32 [ 0, %.lr.ph ], [ %i.atn, %_ZN4ncnnL42conv3x3s1_winograd43_transform_output_tileERKNS_3MatERS0_S2_iiii.exit ] ; 6 uses
  %i.bq = sub nsw i32 %i.bp, %.044137
  %.sroa.speculated117 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.bq) ; 26 uses
  %i.br = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %bb.d
  %.pre143 = load i32, ptr %9, align 4, !tbaa !67
  br label %.noexc

._crit_edge:                                      ; preds = %.noexc, %bb.d
  %.val78 = load ptr, ptr %13, align 8, !tbaa !18 ; 6 uses
  %i.bt = load i32, ptr %i.an, align 4, !tbaa !75 ; 13 uses
  %i.bu = load i32, ptr %i.ao, align 8, !tbaa !76 ; 12 uses
  %i.bv = load i32, ptr %i.ap, align 8, !tbaa !66 ; 8 uses
  %i.bw = load i64, ptr %i.aq, align 8, !tbaa !20
  %i.bx = sext i32 %i.bv to i64
  %i.by = mul i64 %i.bw, %i.bx                    ; 10 uses
  %i.bz = add nsw i32 %i.bt, 3
  %i.ca = sdiv i32 %i.bz, 4                       ; 6 uses
  %factor.op.mul97.i = mul i32 %.sroa.speculated117, 36 ; 3 uses
  br i1 %i.bh, label %.lr.ph100.i, label %.preheader86.i

.lr.ph100.i:                                      ; preds = %._crit_edge
  %.not520.i = icmp eq ptr %.val78, null
  %i.cb = getelementptr inbounds [4 x i8], ptr %.val78, i64 %i.bi
  %i.cc = icmp sgt i32 %.sroa.speculated117, 0
  %i.cd = shl nsw i32 %.sroa.speculated117, 2
  %i.ce = sext i32 %i.cd to i64
  %i.cf = shl nsw i32 %.sroa.speculated117, 3
  %i.cg = sext i32 %i.cf to i64
  %i.ch = mul nsw i32 %.sroa.speculated117, 12
  %i.ci = sext i32 %i.ch to i64
  %i.cj = shl nsw i32 %.sroa.speculated117, 4
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i32 %.sroa.speculated117, 20
  %i.cm = sext i32 %i.cl to i64
  %i.cn = mul nsw i32 %.sroa.speculated117, 24
  %i.co = sext i32 %i.cn to i64                   ; 30 uses
  %.idx.i = shl i64 %i.by, 3                      ; 4 uses
  %.idx522.i = mul i64 %i.by, 12                  ; 4 uses
  %i.cp = mul nsw i32 %i.bv, %i.bt
  %i.cq = sext i32 %i.cp to i64                   ; 3 uses
  br i1 %i.cc, label %.lr.ph100.split.us.preheader.i, label %.preheader86.i

.lr.ph100.split.us.preheader.i:                   ; preds = %.lr.ph100.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %.lr.ph100.split.us.i

.lr.ph100.split.us.i:                             ; preds = %._crit_edge.us.i, %.lr.ph100.split.us.preheader.i
  %indvars.iv165.i = phi i64 [ 0, %.lr.ph100.split.us.preheader.i ], [ %indvars.iv.next166.i, %._crit_edge.us.i ] ; 3 uses
  br i1 %.not520.i, label %.lr.ph.us.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph100.split.us.i
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv165.i
  %i.cs = load <4 x float>, ptr %i.cr, align 1, !tbaa !254
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.e, %.lr.ph100.split.us.i
  %i.ct = phi fast <4 x float> [ %i.cs, %bb.e ], [ zeroinitializer, %.lr.ph100.split.us.i ] ; 16 uses
  %i.cu = trunc nuw nsw i64 %indvars.iv165.i to i32 ; 2 uses
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul97.i, %i.cu
  %i.cv = sext i32 %factor.op.mul.reass.us.i to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.cv
  %i.cx = add i32 %i.at, %i.cu
  %i.cy = sdiv i32 %i.cx, %i.bv
  %i.cz = sext i32 %i.cy to i64
  br label %_ZN4ncnn3MatD2Ev.exit524.us.i

_ZN4ncnn3MatD2Ev.exit524.us.i:                    ; preds = %bb.bl, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.bl ] ; 3 uses
  %.idx232.i.a = shl nuw nsw i64 %indvars.iv.i, 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx232.i.a ; 7 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.ce ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cg ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.ci ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.ck ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cm ; 2 uses
  %i.dg = load <4 x float>, ptr %i.db, align 16, !tbaa !254 ; 2 uses
  %i.dh = load <4 x float>, ptr %i.dc, align 16, !tbaa !254 ; 2 uses
  %i.di = load <4 x float>, ptr %i.dd, align 16, !tbaa !254 ; 2 uses
  %i.dj = load <4 x float>, ptr %i.de, align 16, !tbaa !254 ; 2 uses
  %i.dk = load <4 x float>, ptr %i.df, align 16, !tbaa !254
  %i.dl = fadd fast <4 x float> %i.dh, %i.dg      ; 2 uses
  %i.dm = fadd fast <4 x float> %i.dj, %i.di      ; 2 uses
  %i.dn = fsub fast <4 x float> %i.dg, %i.dh      ; 2 uses
  %i.do = fsub fast <4 x float> %i.di, %i.dj      ; 2 uses
  %i.dp = fmul fast <4 x float> %i.dn, splat (float f0x3F3504F3)
  %i.dq = fmul fast <4 x float> %i.do, splat (float f0x3FB504F3)
  %i.dr = fmul fast <4 x float> %i.dl, splat (float 5.000000e-01)
  %i.ds = fmul fast <4 x float> %i.dm, splat (float 2.000000e+00)
  %i.dt = fmul fast <4 x float> %i.dn, splat (float f0x3EB504F3)
  %i.du = fadd fast <4 x float> %i.dt, %i.dk
  %i.dv = fmul fast <4 x float> %i.do, splat (float f0x403504F3)
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.co ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.co ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.co ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.co ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.co ; 2 uses
  %i.eb = load <4 x float>, ptr %i.dw, align 16, !tbaa !254 ; 2 uses
  %i.ec = load <4 x float>, ptr %i.dx, align 16, !tbaa !254 ; 2 uses
  %i.ed = load <4 x float>, ptr %i.dy, align 16, !tbaa !254 ; 2 uses
  %i.ee = load <4 x float>, ptr %i.dz, align 16, !tbaa !254 ; 2 uses
  %i.ef = load <4 x float>, ptr %i.ea, align 16, !tbaa !254
  %i.eg = fadd fast <4 x float> %i.ec, %i.eb      ; 2 uses
  %i.eh = fadd fast <4 x float> %i.ee, %i.ed      ; 2 uses
  %i.ei = fsub fast <4 x float> %i.eb, %i.ec      ; 2 uses
  %i.ej = fsub fast <4 x float> %i.ed, %i.ee      ; 2 uses
  %i.ek = fmul fast <4 x float> %i.ei, splat (float f0x3F3504F3)
  %i.el = fmul fast <4 x float> %i.ej, splat (float f0x3FB504F3)
  %i.em = fadd fast <4 x float> %i.el, %i.ek      ; 2 uses
  %i.en = fmul fast <4 x float> %i.eg, splat (float 5.000000e-01)
  %i.eo = fmul fast <4 x float> %i.eh, splat (float 2.000000e+00)
  %i.ep = fadd fast <4 x float> %i.eo, %i.en      ; 2 uses
  %i.eq = fmul fast <4 x float> %i.ei, splat (float f0x3EB504F3)
  %i.er = fadd fast <4 x float> %i.eq, %i.ef
  %i.es = fmul fast <4 x float> %i.ej, splat (float f0x403504F3)
  %i.et = fadd fast <4 x float> %i.es, %i.er      ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.co ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.co ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.co ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.co ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.co ; 2 uses
  %i.ez = load <4 x float>, ptr %i.eu, align 16, !tbaa !254 ; 2 uses
  %i.fa = load <4 x float>, ptr %i.ev, align 16, !tbaa !254 ; 2 uses
  %i.fb = load <4 x float>, ptr %i.ew, align 16, !tbaa !254 ; 2 uses
  %i.fc = load <4 x float>, ptr %i.ex, align 16, !tbaa !254 ; 2 uses
  %i.fd = load <4 x float>, ptr %i.ey, align 16, !tbaa !254
  %i.fe = fadd fast <4 x float> %i.fa, %i.ez      ; 2 uses
  %i.ff = fadd fast <4 x float> %i.fc, %i.fb      ; 2 uses
  %i.fg = fsub fast <4 x float> %i.ez, %i.fa      ; 2 uses
  %i.fh = fsub fast <4 x float> %i.fb, %i.fc      ; 2 uses
  %i.fi = fmul fast <4 x float> %i.fg, splat (float f0x3F3504F3)
  %i.fj = fmul fast <4 x float> %i.fh, splat (float f0x3FB504F3)
  %i.fk = fadd fast <4 x float> %i.fj, %i.fi      ; 2 uses
  %i.fl = fmul fast <4 x float> %i.fe, splat (float 5.000000e-01)
  %i.fm = fmul fast <4 x float> %i.ff, splat (float 2.000000e+00)
  %i.fn = fadd fast <4 x float> %i.fm, %i.fl      ; 2 uses
  %i.fo = fmul fast <4 x float> %i.fg, splat (float f0x3EB504F3)
  %i.fp = fadd fast <4 x float> %i.fo, %i.fd
  %i.fq = fmul fast <4 x float> %i.fh, splat (float f0x403504F3)
  %i.fr = fadd fast <4 x float> %i.fq, %i.fp      ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.co ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.co ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.co ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.co ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.co ; 2 uses
  %i.fx = load <4 x float>, ptr %i.fs, align 16, !tbaa !254 ; 2 uses
  %i.fy = load <4 x float>, ptr %i.ft, align 16, !tbaa !254 ; 2 uses
  %i.fz = load <4 x float>, ptr %i.fu, align 16, !tbaa !254 ; 2 uses
  %i.ga = load <4 x float>, ptr %i.fv, align 16, !tbaa !254 ; 2 uses
  %i.gb = load <4 x float>, ptr %i.fw, align 16, !tbaa !254
  %i.gc = fadd fast <4 x float> %i.fy, %i.fx      ; 2 uses
  %i.gd = fadd fast <4 x float> %i.ga, %i.fz      ; 2 uses
  %i.ge = fsub fast <4 x float> %i.fx, %i.fy      ; 2 uses
  %i.gf = fsub fast <4 x float> %i.fz, %i.ga      ; 2 uses
  %i.gg = fmul fast <4 x float> %i.ge, splat (float f0x3F3504F3)
  %i.gh = fmul fast <4 x float> %i.gf, splat (float f0x3FB504F3)
  %i.gi = fadd fast <4 x float> %i.gh, %i.gg      ; 2 uses
  %i.gj = fmul fast <4 x float> %i.gc, splat (float 5.000000e-01)
  %i.gk = fmul fast <4 x float> %i.gd, splat (float 2.000000e+00)
  %i.gl = fadd fast <4 x float> %i.gk, %i.gj      ; 2 uses
  %i.gm = fmul fast <4 x float> %i.ge, splat (float f0x3EB504F3)
  %i.gn = fadd fast <4 x float> %i.gm, %i.gb
  %i.go = fmul fast <4 x float> %i.gf, splat (float f0x403504F3)
  %i.gp = fadd fast <4 x float> %i.go, %i.gn      ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.co ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.co ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.co ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.co ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.co ; 2 uses
  %i.gv = load <4 x float>, ptr %i.gq, align 16, !tbaa !254 ; 2 uses
  %i.gw = load <4 x float>, ptr %i.gr, align 16, !tbaa !254 ; 2 uses
  %i.gx = load <4 x float>, ptr %i.gs, align 16, !tbaa !254 ; 2 uses
  %i.gy = load <4 x float>, ptr %i.gt, align 16, !tbaa !254 ; 2 uses
  %i.gz = load <4 x float>, ptr %i.gu, align 16, !tbaa !254
  %i.ha = fadd fast <4 x float> %i.gw, %i.gv      ; 2 uses
  %i.hb = fadd fast <4 x float> %i.gy, %i.gx      ; 2 uses
  %i.hc = fsub fast <4 x float> %i.gv, %i.gw      ; 2 uses
  %i.hd = fsub fast <4 x float> %i.gx, %i.gy      ; 2 uses
  %i.he = fmul fast <4 x float> %i.hc, splat (float f0x3F3504F3)
  %i.hf = fmul fast <4 x float> %i.hd, splat (float f0x3FB504F3)
  %i.hg = fadd fast <4 x float> %i.hf, %i.he      ; 2 uses
  %i.hh = fmul fast <4 x float> %i.ha, splat (float 5.000000e-01)
  %i.hi = fmul fast <4 x float> %i.hb, splat (float 2.000000e+00)
end_hunk_10
begin_hunk_11_@_ZN4ncnnL20conv3x3s1_winograd43ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.4:bb.a
  store float %.sroa.12.32.vec.extract.us.2.i, ptr %i.ol, align 4, !tbaa !39
  %.sroa.12.36.vec.extract.us.2.i = extractelement <4 x float> %i.nx, i64 1
  %i.om = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  store float %.sroa.12.36.vec.extract.us.2.i, ptr %i.om, align 4, !tbaa !39
  %.sroa.12.40.vec.extract.us.2.i = extractelement <4 x float> %i.nx, i64 2
  %i.on = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  store float %.sroa.12.40.vec.extract.us.2.i, ptr %i.on, align 4, !tbaa !39
  %.sroa.12.44.vec.extract.us.2.i = extractelement <4 x float> %i.nx, i64 3
  %i.oo = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  store float %.sroa.12.44.vec.extract.us.2.i, ptr %i.oo, align 4, !tbaa !39
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  br i1 %i.jg, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  %.sroa.1730.48.vec.extract.us.2.i = extractelement <4 x float> %i.od, i64 0
  %i.op = getelementptr inbounds nuw i8, ptr %.1503.us.1.i, i64 12
  store float %.sroa.1730.48.vec.extract.us.2.i, ptr %i.op, align 4, !tbaa !39
  %.sroa.1730.52.vec.extract.us.2.i = extractelement <4 x float> %i.od, i64 1
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oe, i64 12
  store float %.sroa.1730.52.vec.extract.us.2.i, ptr %i.oq, align 4, !tbaa !39
  %.sroa.1730.56.vec.extract.us.2.i = extractelement <4 x float> %i.od, i64 2
  %i.or = getelementptr inbounds nuw i8, ptr %i.of, i64 12
  store float %.sroa.1730.56.vec.extract.us.2.i, ptr %i.or, align 4, !tbaa !39
  %.sroa.1730.60.vec.extract.us.2.i = extractelement <4 x float> %i.od, i64 3
  %i.os = getelementptr inbounds nuw i8, ptr %i.og, i64 12
  store float %.sroa.1730.60.vec.extract.us.2.i, ptr %i.os, align 4, !tbaa !39
  br label %bb.aw

bb.aq:                                            ; preds = %bb.aj
  store <4 x float> %i.np, ptr %.1503.us.1.i, align 16, !tbaa !254
  br i1 %i.jc, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ot = getelementptr inbounds nuw i8, ptr %.1503.us.1.i, i64 16
  store <4 x float> %i.nt, ptr %i.ot, align 16, !tbaa !254
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  br i1 %i.je, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ou = getelementptr inbounds nuw i8, ptr %.1503.us.1.i, i64 32
  store <4 x float> %i.nx, ptr %i.ou, align 16, !tbaa !254
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  br i1 %i.jg, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ov = getelementptr inbounds nuw i8, ptr %.1503.us.1.i, i64 48
  store <4 x float> %i.od, ptr %i.ov, align 16, !tbaa !254
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.ap, %bb.ao, %bb.aj
  %i.ow = getelementptr inbounds [4 x i8], ptr %.1503.us.1.i, i64 %i.cq
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ai
  %.1503.us.2.i = phi ptr [ %.1503.us.1.i, %bb.ai ], [ %i.ow, %bb.aw ] ; 11 uses
  %i.ox = or disjoint i32 %i.is, 3
  %.not521.us.3.i = icmp slt i32 %i.ox, %i.bu
  br i1 %.not521.us.3.i, label %bb.ay, label %bb.bl

bb.ay:                                            ; preds = %bb.ax
  %i.oy = fadd fast <4 x float> %i.fr, %i.et      ; 2 uses
  %i.oz = fadd fast <4 x float> %i.hn, %i.gp      ; 2 uses
  %i.pa = fsub fast <4 x float> %i.et, %i.fr      ; 2 uses
  %i.pb = fsub fast <4 x float> %i.gp, %i.hn      ; 2 uses
  %i.pc = fadd fast <4 x float> %i.du, %i.ct
  %i.pd = fadd fast <4 x float> %i.pc, %i.dv
  %i.pe = fadd fast <4 x float> %i.pd, %i.oy
  %i.pf = fadd fast <4 x float> %i.pe, %i.oz      ; 5 uses
  %i.pg = fmul fast <4 x float> %i.pa, splat (float f0x3F3504F3)
  %i.ph = fadd fast <4 x float> %i.ct, %i.pg
  %i.pi = fmul fast <4 x float> %i.pb, splat (float f0x3FB504F3)
  %i.pj = fadd fast <4 x float> %i.pi, %i.ph      ; 5 uses
  %i.pk = fmul fast <4 x float> %i.oy, splat (float 5.000000e-01)
  %i.pl = fadd fast <4 x float> %i.ct, %i.pk
  %i.pm = fmul fast <4 x float> %i.oz, splat (float 2.000000e+00)
  %i.pn = fadd fast <4 x float> %i.pm, %i.pl      ; 5 uses
  %reass.add = fadd fast <4 x float> %i.ib, %i.pb
  %reass.mul = fmul fast <4 x float> %reass.add, splat (float f0x403504F3)
  %reass.add130 = fadd fast <4 x float> %i.ia, %i.pa
  %reass.mul131 = fmul fast <4 x float> %reass.add130, splat (float f0x3EB504F3)
  %i.po = fadd fast <4 x float> %i.hx, %i.ct
  %i.pp = fadd fast <4 x float> %i.po, %reass.mul131
  %i.pq = fadd fast <4 x float> %i.pp, %reass.mul ; 5 uses
  switch i32 %i.bv, label %bb.bl [
    i32 4, label %bb.bf
    i32 1, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %.1503.us.2.i, i64 %i.by ; 4 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.1503.us.2.i, i64 %.idx.i ; 4 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.1503.us.2.i, i64 %.idx522.i ; 4 uses
  %.sroa.028.0.vec.extract.us.3.i = extractelement <4 x float> %i.pf, i64 0
  store float %.sroa.028.0.vec.extract.us.3.i, ptr %.1503.us.2.i, align 4, !tbaa !39
  %.sroa.028.4.vec.extract.us.3.i = extractelement <4 x float> %i.pf, i64 1
  store float %.sroa.028.4.vec.extract.us.3.i, ptr %i.pr, align 4, !tbaa !39
  %.sroa.028.8.vec.extract.us.3.i = extractelement <4 x float> %i.pf, i64 2
  store float %.sroa.028.8.vec.extract.us.3.i, ptr %i.ps, align 4, !tbaa !39
  %.sroa.028.12.vec.extract.us.3.i = extractelement <4 x float> %i.pf, i64 3
  store float %.sroa.028.12.vec.extract.us.3.i, ptr %i.pt, align 4, !tbaa !39
  br i1 %i.jc, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %.sroa.729.16.vec.extract.us.3.i = extractelement <4 x float> %i.pj, i64 0
  %i.pu = getelementptr inbounds nuw i8, ptr %.1503.us.2.i, i64 4
  store float %.sroa.729.16.vec.extract.us.3.i, ptr %i.pu, align 4, !tbaa !39
  %.sroa.729.20.vec.extract.us.3.i = extractelement <4 x float> %i.pj, i64 1
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pr, i64 4
  store float %.sroa.729.20.vec.extract.us.3.i, ptr %i.pv, align 4, !tbaa !39
  %.sroa.729.24.vec.extract.us.3.i = extractelement <4 x float> %i.pj, i64 2
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ps, i64 4
  store float %.sroa.729.24.vec.extract.us.3.i, ptr %i.pw, align 4, !tbaa !39
  %.sroa.729.28.vec.extract.us.3.i = extractelement <4 x float> %i.pj, i64 3
  %i.px = getelementptr inbounds nuw i8, ptr %i.pt, i64 4
  store float %.sroa.729.28.vec.extract.us.3.i, ptr %i.px, align 4, !tbaa !39
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  br i1 %i.je, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %.sroa.12.32.vec.extract.us.3.i = extractelement <4 x float> %i.pn, i64 0
  %i.py = getelementptr inbounds nuw i8, ptr %.1503.us.2.i, i64 8
  store float %.sroa.12.32.vec.extract.us.3.i, ptr %i.py, align 4, !tbaa !39
  %.sroa.12.36.vec.extract.us.3.i = extractelement <4 x float> %i.pn, i64 1
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  store float %.sroa.12.36.vec.extract.us.3.i, ptr %i.pz, align 4, !tbaa !39
  %.sroa.12.40.vec.extract.us.3.i = extractelement <4 x float> %i.pn, i64 2
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  store float %.sroa.12.40.vec.extract.us.3.i, ptr %i.qa, align 4, !tbaa !39
  %.sroa.12.44.vec.extract.us.3.i = extractelement <4 x float> %i.pn, i64 3
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  store float %.sroa.12.44.vec.extract.us.3.i, ptr %i.qb, align 4, !tbaa !39
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  br i1 %i.jg, label %bb.be, label %bb.bl

bb.be:                                            ; preds = %bb.bd
  %.sroa.1730.48.vec.extract.us.3.i = extractelement <4 x float> %i.pq, i64 0
  %i.qc = getelementptr inbounds nuw i8, ptr %.1503.us.2.i, i64 12
  store float %.sroa.1730.48.vec.extract.us.3.i, ptr %i.qc, align 4, !tbaa !39
  %.sroa.1730.52.vec.extract.us.3.i = extractelement <4 x float> %i.pq, i64 1
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pr, i64 12
  store float %.sroa.1730.52.vec.extract.us.3.i, ptr %i.qd, align 4, !tbaa !39
  %.sroa.1730.56.vec.extract.us.3.i = extractelement <4 x float> %i.pq, i64 2
  %i.qe = getelementptr inbounds nuw i8, ptr %i.ps, i64 12
  store float %.sroa.1730.56.vec.extract.us.3.i, ptr %i.qe, align 4, !tbaa !39
  %.sroa.1730.60.vec.extract.us.3.i = extractelement <4 x float> %i.pq, i64 3
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pt, i64 12
  store float %.sroa.1730.60.vec.extract.us.3.i, ptr %i.qf, align 4, !tbaa !39
  br label %bb.bl

bb.bf:                                            ; preds = %bb.ay
  store <4 x float> %i.pf, ptr %.1503.us.2.i, align 16, !tbaa !254
  br i1 %i.jc, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.qg = getelementptr inbounds nuw i8, ptr %.1503.us.2.i, i64 16
  store <4 x float> %i.pj, ptr %i.qg, align 16, !tbaa !254
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  br i1 %i.je, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.qh = getelementptr inbounds nuw i8, ptr %.1503.us.2.i, i64 32
  store <4 x float> %i.pn, ptr %i.qh, align 16, !tbaa !254
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  br i1 %i.jg, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.qi = getelementptr inbounds nuw i8, ptr %.1503.us.2.i, i64 48
  store <4 x float> %i.pq, ptr %i.qi, align 16, !tbaa !254
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.be, %bb.bd, %bb.ay, %bb.ax
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %_ZN4ncnn3MatD2Ev.exit524.us.i, !llvm.loop !882

._crit_edge.us.i:                                 ; preds = %bb.bl
  %indvars.iv.next166.i = add nuw nsw i64 %indvars.iv165.i, 4 ; 3 uses
  %i.qj = or disjoint i64 %indvars.iv.next166.i, 3
  %i.qk = icmp samesign ult i64 %i.qj, %i.bk
  br i1 %i.qk, label %.lr.ph100.split.us.i, label %.preheader86.loopexit.i, !llvm.loop !883

.preheader86.loopexit.i:                          ; preds = %._crit_edge.us.i
  %i.ql = trunc nuw nsw i64 %indvars.iv.next166.i to i32
  br label %.preheader86.i

.preheader86.i:                                   ; preds = %.lr.ph100.i, %.preheader86.loopexit.i, %._crit_edge
  %.0490.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.ql, %.preheader86.loopexit.i ], [ %i.bj, %.lr.ph100.i ] ; 5 uses
  %i.qm = or disjoint i32 %.0490.lcssa.i, 1
  %i.qn = icmp slt i32 %i.qm, %.sroa.speculated121
  br i1 %i.qn, label %.lr.ph118.i, label %.preheader.i

.lr.ph118.i:                                      ; preds = %.preheader86.i
  %.not518.i = icmp eq ptr %.val78, null
  %i.qo = icmp sgt i32 %.sroa.speculated117, 0
  %i.qp = shl nsw i32 %.sroa.speculated117, 1
  %i.qq = sext i32 %i.qp to i64
  %i.qr = shl nsw i32 %.sroa.speculated117, 2
  %i.qs = sext i32 %i.qr to i64
  %i.qt = mul nsw i32 %.sroa.speculated117, 6
  %i.qu = sext i32 %i.qt to i64
  %i.qv = shl nsw i32 %.sroa.speculated117, 3
  %i.qw = sext i32 %i.qv to i64
  %i.qx = mul nsw i32 %.sroa.speculated117, 10
  %i.qy = sext i32 %i.qx to i64
  %i.qz = mul nsw i32 %.sroa.speculated117, 12
  %i.ra = sext i32 %i.qz to i64                   ; 30 uses
  %i.rb = sext i32 %i.bt to i64                   ; 3 uses
  br i1 %i.qo, label %.lr.ph118.split.us.i, label %.lr.ph118.split.i

.lr.ph118.split.us.i:                             ; preds = %.lr.ph118.i
  %i.rc = load i32, ptr %i.an, align 4, !tbaa !75, !noalias !884
  %i.rd = load ptr, ptr %12, align 8, !tbaa !18, !noalias !884
  %i.re = load i64, ptr %i.aq, align 8, !tbaa !20, !noalias !884
  %i.rf = load i64, ptr %i.ar, align 8, !tbaa !65, !noalias !884 ; 2 uses
  %factor.op.mul.i = mul i64 %i.rf, %i.re
  %i.rg = sext i32 %i.rc to i64
  %factor.op.mul114.us.i = mul i64 %i.rf, %i.rg
  %i.rh = sext i32 %.0490.lcssa.i to i64
  %wide.trip.count180.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge.us122.i, %.lr.ph118.split.us.i
  %indvars.iv182.i = phi i64 [ %indvars.iv.next183.i, %._crit_edge.us122.i ], [ %i.rh, %.lr.ph118.split.us.i ] ; 3 uses
  %.pre.i = add nsw i64 %indvars.iv182.i, %i.bi   ; 2 uses
  br i1 %.not518.i, label %.thread.us.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ri = getelementptr [4 x i8], ptr %.val78, i64 %.pre.i
  %i.rj = load <2 x float>, ptr %i.ri, align 4, !tbaa !39
  br label %.thread.us.i

.thread.us.i:                                     ; preds = %bb.bn, %bb.bm
  %i.rk = phi <2 x float> [ %i.rj, %bb.bn ], [ zeroinitializer, %bb.bm ] ; 10 uses
  %i.rl = trunc nsw i64 %indvars.iv182.i to i32
  %factor.op.mul.reass.us120.i = mul i32 %factor.op.mul97.i, %i.rl
  %i.rm = sext i32 %factor.op.mul.reass.us120.i to i64
  %i.rn = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.rm
  %.reass.i = mul i64 %factor.op.mul.i, %.pre.i
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rd, i64 %.reass.i
  %i.rp = extractelement <2 x float> %i.rk, i64 1 ; 4 uses
  %i.rq = shufflevector <2 x float> %i.rk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 8 uses
  br label %_ZN4ncnn3MatD2Ev.exit523.us.i

_ZN4ncnn3MatD2Ev.exit523.us.i:                    ; preds = %bb.cs, %.thread.us.i
  %indvars.iv177.i = phi i64 [ 0, %.thread.us.i ], [ %indvars.iv.next178.i, %bb.cs ] ; 3 uses
  %.idx233.i = shl nuw nsw i64 %indvars.iv177.i, 3
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rn, i64 %.idx233.i ; 7 uses
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %i.qy ; 2 uses
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %i.qw ; 2 uses
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %i.qu ; 2 uses
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %i.qs ; 2 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %i.qq ; 2 uses
  %i.rx = load <2 x float>, ptr %i.rw, align 4, !tbaa !39 ; 2 uses
  %i.ry = load <2 x float>, ptr %i.rv, align 4, !tbaa !39 ; 2 uses
  %i.rz = fadd fast <2 x float> %i.ry, %i.rx      ; 2 uses
  %i.sa = load <2 x float>, ptr %i.ru, align 4, !tbaa !39 ; 2 uses
  %i.sb = load <2 x float>, ptr %i.rt, align 4, !tbaa !39 ; 2 uses
  %i.sc = fadd fast <2 x float> %i.sb, %i.sa      ; 2 uses
  %i.sd = fsub fast <2 x float> %i.rx, %i.ry      ; 2 uses
  %i.se = fsub fast <2 x float> %i.sa, %i.sb      ; 2 uses
  %i.sf = fmul fast <2 x float> %i.sd, splat (float f0x3F3504F3)
  %i.sg = fmul fast <2 x float> %i.se, splat (float f0x3FB504F3)
  %i.sh = fadd fast <2 x float> %i.sg, %i.sf
  %i.si = fmul fast <2 x float> %i.rz, splat (float 5.000000e-01)
  %i.sj = fmul fast <2 x float> %i.sc, splat (float 2.000000e+00)
  %i.sk = fadd fast <2 x float> %i.sj, %i.si
  %i.sl = load <2 x float>, ptr %i.rs, align 4, !tbaa !39
  %i.sm = fmul fast <2 x float> %i.sd, splat (float f0x3EB504F3)
  %i.sn = fadd fast <2 x float> %i.sm, %i.sl
  %i.so = fmul fast <2 x float> %i.se, splat (float f0x403504F3)
  %i.sp = fadd fast <2 x float> %i.sn, %i.so
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.ra ; 2 uses
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %i.ra ; 2 uses
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %i.ra ; 2 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %i.ra ; 2 uses
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %i.ra ; 2 uses
  %i.sv = load <2 x float>, ptr %i.sq, align 4, !tbaa !39 ; 2 uses
  %i.sw = load <2 x float>, ptr %i.sr, align 4, !tbaa !39 ; 2 uses
  %i.sx = fadd fast <2 x float> %i.sw, %i.sv      ; 2 uses
  %i.sy = load <2 x float>, ptr %i.ss, align 4, !tbaa !39 ; 2 uses
  %i.sz = load <2 x float>, ptr %i.st, align 4, !tbaa !39 ; 2 uses
  %i.ta = fadd fast <2 x float> %i.sz, %i.sy      ; 2 uses
  %i.tb = fsub fast <2 x float> %i.sv, %i.sw      ; 2 uses
  %i.tc = fsub fast <2 x float> %i.sy, %i.sz      ; 2 uses
  %i.td = fmul fast <2 x float> %i.tb, splat (float f0x3F3504F3)
  %i.te = fmul fast <2 x float> %i.tc, splat (float f0x3FB504F3)
  %i.tf = fadd fast <2 x float> %i.te, %i.td      ; 2 uses
  %i.tg = fmul fast <2 x float> %i.sx, splat (float 5.000000e-01)
  %i.th = fmul fast <2 x float> %i.ta, splat (float 2.000000e+00)
  %i.ti = fadd fast <2 x float> %i.th, %i.tg      ; 2 uses
  %i.tj = load <2 x float>, ptr %i.su, align 4, !tbaa !39
  %i.tk = fmul fast <2 x float> %i.tb, splat (float f0x3EB504F3)
  %i.tl = fadd fast <2 x float> %i.tk, %i.tj
  %i.tm = fmul fast <2 x float> %i.tc, splat (float f0x403504F3)
  %i.tn = fadd fast <2 x float> %i.tl, %i.tm      ; 2 uses
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %i.ra ; 2 uses
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.sr, i64 %i.ra ; 2 uses
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %i.ra ; 2 uses
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.st, i64 %i.ra ; 2 uses
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %i.ra ; 2 uses
  %i.tt = load <2 x float>, ptr %i.to, align 4, !tbaa !39 ; 2 uses
  %i.tu = load <2 x float>, ptr %i.tp, align 4, !tbaa !39 ; 2 uses
  %i.tv = fadd fast <2 x float> %i.tu, %i.tt      ; 2 uses
  %i.tw = load <2 x float>, ptr %i.tq, align 4, !tbaa !39 ; 2 uses
  %i.tx = load <2 x float>, ptr %i.tr, align 4, !tbaa !39 ; 2 uses
  %i.ty = fadd fast <2 x float> %i.tx, %i.tw      ; 2 uses
  %i.tz = fsub fast <2 x float> %i.tt, %i.tu      ; 2 uses
  %i.ua = fsub fast <2 x float> %i.tw, %i.tx      ; 2 uses
  %i.ub = fmul fast <2 x float> %i.tz, splat (float f0x3F3504F3)
  %i.uc = fmul fast <2 x float> %i.ua, splat (float f0x3FB504F3)
  %i.ud = fadd fast <2 x float> %i.uc, %i.ub      ; 2 uses
  %i.ue = fmul fast <2 x float> %i.tv, splat (float 5.000000e-01)
  %i.uf = fmul fast <2 x float> %i.ty, splat (float 2.000000e+00)
  %i.ug = fadd fast <2 x float> %i.uf, %i.ue      ; 2 uses
  %i.uh = load <2 x float>, ptr %i.ts, align 4, !tbaa !39
  %i.ui = fmul fast <2 x float> %i.tz, splat (float f0x3EB504F3)
  %i.uj = fadd fast <2 x float> %i.ui, %i.uh
  %i.uk = fmul fast <2 x float> %i.ua, splat (float f0x403504F3)
  %i.ul = fadd fast <2 x float> %i.uj, %i.uk      ; 2 uses
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %i.ra ; 2 uses
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %i.ra ; 2 uses
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %i.ra ; 2 uses
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %i.ra ; 2 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %i.ra ; 2 uses
  %i.ur = load <2 x float>, ptr %i.um, align 4, !tbaa !39 ; 2 uses
  %i.us = load <2 x float>, ptr %i.un, align 4, !tbaa !39 ; 2 uses
  %i.ut = fadd fast <2 x float> %i.us, %i.ur      ; 2 uses
  %i.uu = load <2 x float>, ptr %i.uo, align 4, !tbaa !39 ; 2 uses
  %i.uv = load <2 x float>, ptr %i.up, align 4, !tbaa !39 ; 2 uses
  %i.uw = fadd fast <2 x float> %i.uv, %i.uu      ; 2 uses
  %i.ux = fsub fast <2 x float> %i.ur, %i.us      ; 2 uses
  %i.uy = fsub fast <2 x float> %i.uu, %i.uv      ; 2 uses
  %i.uz = fmul fast <2 x float> %i.ux, splat (float f0x3F3504F3)
  %i.va = fmul fast <2 x float> %i.uy, splat (float f0x3FB504F3)
  %i.vb = fadd fast <2 x float> %i.va, %i.uz      ; 2 uses
  %i.vc = fmul fast <2 x float> %i.ut, splat (float 5.000000e-01)
  %i.vd = fmul fast <2 x float> %i.uw, splat (float 2.000000e+00)
  %i.ve = fadd fast <2 x float> %i.vd, %i.vc      ; 2 uses
  %i.vf = load <2 x float>, ptr %i.uq, align 4, !tbaa !39
  %i.vg = fmul fast <2 x float> %i.ux, splat (float f0x3EB504F3)
  %i.vh = fadd fast <2 x float> %i.vg, %i.vf
  %i.vi = fmul fast <2 x float> %i.uy, splat (float f0x403504F3)
  %i.vj = fadd fast <2 x float> %i.vh, %i.vi      ; 2 uses
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.um, i64 %i.ra ; 2 uses
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %i.ra ; 2 uses
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %i.ra ; 2 uses
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.up, i64 %i.ra ; 2 uses
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %i.ra ; 2 uses
  %i.vp = load <2 x float>, ptr %i.vk, align 4, !tbaa !39 ; 2 uses
  %i.vq = load <2 x float>, ptr %i.vl, align 4, !tbaa !39 ; 2 uses
  %i.vr = fadd fast <2 x float> %i.vq, %i.vp      ; 2 uses
  %i.vs = load <2 x float>, ptr %i.vm, align 4, !tbaa !39 ; 2 uses
  %i.vt = load <2 x float>, ptr %i.vn, align 4, !tbaa !39 ; 2 uses
  %i.vu = fadd fast <2 x float> %i.vt, %i.vs      ; 2 uses
  %i.vv = fsub fast <2 x float> %i.vp, %i.vq      ; 2 uses
  %i.vw = fsub fast <2 x float> %i.vs, %i.vt      ; 2 uses
  %i.vx = fmul fast <2 x float> %i.vv, splat (float f0x3F3504F3)
  %i.vy = fmul fast <2 x float> %i.vw, splat (float f0x3FB504F3)
  %i.vz = fadd fast <2 x float> %i.vy, %i.vx      ; 2 uses
  %i.wa = fmul fast <2 x float> %i.vr, splat (float 5.000000e-01)
  %i.wb = fmul fast <2 x float> %i.vu, splat (float 2.000000e+00)
  %i.wc = fadd fast <2 x float> %i.wb, %i.wa      ; 2 uses
  %i.wd = load <2 x float>, ptr %i.vo, align 4, !tbaa !39
  %i.we = fmul fast <2 x float> %i.vv, splat (float f0x3EB504F3)
  %i.wf = fadd fast <2 x float> %i.we, %i.wd
  %i.wg = fmul fast <2 x float> %i.vw, splat (float f0x403504F3)
  %i.wh = fadd fast <2 x float> %i.wf, %i.wg      ; 2 uses
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %i.ra
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %i.ra
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.vm, i64 %i.ra
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.vn, i64 %i.ra
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %i.ra
  %i.wn = load <2 x float>, ptr %i.wi, align 4, !tbaa !39 ; 2 uses
  %i.wo = load <2 x float>, ptr %i.wj, align 4, !tbaa !39 ; 2 uses
  %i.wp = fadd fast <2 x float> %i.wo, %i.wn      ; 2 uses
  %i.wq = load <2 x float>, ptr %i.wk, align 4, !tbaa !39 ; 2 uses
  %i.wr = load <2 x float>, ptr %i.wl, align 4, !tbaa !39 ; 2 uses
  %i.ws = fadd fast <2 x float> %i.wr, %i.wq      ; 2 uses
  %i.wt = fsub fast <2 x float> %i.wn, %i.wo      ; 2 uses
  %i.wu = fsub fast <2 x float> %i.wq, %i.wr      ; 2 uses
  %i.wv = fmul fast <2 x float> %i.wt, splat (float f0x3F3504F3)
  %i.ww = fmul fast <2 x float> %i.wu, splat (float f0x3FB504F3)
  %i.wx = fadd fast <2 x float> %i.ww, %i.wv      ; 2 uses
  %i.wy = fmul fast <2 x float> %i.wp, splat (float 5.000000e-01)
  %i.wz = fmul fast <2 x float> %i.ws, splat (float 2.000000e+00)
  %i.xa = fadd fast <2 x float> %i.wz, %i.wy      ; 2 uses
  %i.xb = load <2 x float>, ptr %i.wm, align 4, !tbaa !39
end_hunk_11
begin_hunk_12_@_ZN4ncnnL20conv3x3s1_winograd43ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.4:bb.a
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abf, i64 4
  %i.abp = extractelement <2 x float> %i.abl, i64 1
  store float %i.abp, ptr %i.abo, align 4, !tbaa !39
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  br i1 %i.xt, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.abq = getelementptr inbounds nuw i8, ptr %.1489.us.i, i64 8
  store float %i.aax, ptr %i.abq, align 4, !tbaa !39
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  store float %i.aay, ptr %i.abr, align 4, !tbaa !39
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  br i1 %i.xv, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.abs = getelementptr inbounds nuw i8, ptr %.1489.us.i, i64 12
  store float %i.aaz, ptr %i.abs, align 4, !tbaa !39
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abf, i64 12
  store float %i.abe, ptr %i.abt, align 4, !tbaa !39
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.abu = getelementptr inbounds [4 x i8], ptr %.1489.us.i, i64 %i.rb
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bv
  %.1489.us.1.i = phi ptr [ %.1489.us.i, %bb.bv ], [ %i.abu, %bb.cc ] ; 7 uses
  %i.abv = or disjoint i32 %i.xk, 2
  %.not519.us.2.i = icmp slt i32 %i.abv, %i.bu
  br i1 %.not519.us.2.i, label %bb.ce, label %bb.cl

bb.ce:                                            ; preds = %bb.cd
  %.sroa.38.136.vec.extract = extractelement <2 x float> %i.xa, i64 0
  %.sroa.38.140.vec.extract = extractelement <2 x float> %i.xa, i64 1
  %i.abw = fsub fast <2 x float> %i.ti, %i.ug     ; 2 uses
  %i.abx = fsub fast <2 x float> %i.ve, %i.wc     ; 2 uses
  %i.aby = fadd fast <2 x float> %i.ug, %i.ti     ; 2 uses
  %i.abz = fadd fast <2 x float> %i.wc, %i.ve     ; 2 uses
  %i.aca = fadd fast <2 x float> %i.sk, %i.rk
  %i.acb = fadd fast <2 x float> %i.aca, %i.aby
  %i.acc = fadd fast <2 x float> %i.acb, %i.abz   ; 2 uses
  %i.acd = shufflevector <2 x float> %i.aby, <2 x float> %i.abz, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ace = fmul fast <4 x float> %i.acd, <float 5.000000e-01, float 2.000000e+00, float 5.000000e-01, float 2.000000e+00> ; 3 uses
  %i.acf = shufflevector <2 x float> %i.abw, <2 x float> %i.abx, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.acg = fmul fast <4 x float> %i.acf, <float f0x3EB504F3, float f0x403504F3, float f0x3EB504F3, float f0x403504F3> ; 3 uses
  %i.ach = shufflevector <4 x float> %i.rq, <4 x float> %i.acg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aci = shufflevector <4 x float> %i.ace, <4 x float> %i.rq, <4 x i32> <i32 0, i32 2, i32 4, i32 poison>
  %i.acj = insertelement <4 x float> %i.aci, float %.sroa.38.136.vec.extract, i64 3
  %i.ack = fadd fast <4 x float> %i.ach, %i.acj   ; 4 uses
  %shift166 = shufflevector <4 x float> %i.ace, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop167 = fadd fast <4 x float> %shift166, %i.ack
  %i.acl = extractelement <4 x float> %foldExtExtBinop167, i64 0
  %shift169 = shufflevector <4 x float> %i.ace, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop170 = fadd fast <4 x float> %shift169, %i.ack
  %i.acm = extractelement <4 x float> %foldExtExtBinop170, i64 1
  %shift172 = shufflevector <4 x float> %i.ack, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop173 = fadd fast <4 x float> %shift172, %i.ack
  %i.acn = extractelement <4 x float> %foldExtExtBinop173, i64 2
  %i.aco = extractelement <4 x float> %i.acg, i64 2
  %i.acp = fadd fast float %i.rp, %i.aco
  %i.acq = extractelement <4 x float> %i.acg, i64 3
  %i.acr = fadd fast float %i.acq, %.sroa.38.140.vec.extract
  %i.acs = fadd fast float %i.acr, %i.acp
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %.1489.us.1.i, i64 %i.by ; 4 uses
  %i.acu = extractelement <2 x float> %i.acc, i64 0
  store float %i.acu, ptr %.1489.us.1.i, align 4, !tbaa !39
  %i.acv = extractelement <2 x float> %i.acc, i64 1
  store float %i.acv, ptr %i.act, align 4, !tbaa !39
  br i1 %i.xr, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.acw = fmul fast <2 x float> %i.abw, splat (float f0x3F3504F3)
  %i.acx = fmul fast <2 x float> %i.abx, splat (float f0x3FB504F3)
  %i.acy = fadd fast <2 x float> %i.rk, %i.acw
  %i.acz = fadd fast <2 x float> %i.acx, %i.acy   ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %.1489.us.1.i, i64 4
  %i.adb = extractelement <2 x float> %i.acz, i64 0
  store float %i.adb, ptr %i.ada, align 4, !tbaa !39
  %i.adc = getelementptr inbounds nuw i8, ptr %i.act, i64 4
  %i.add = extractelement <2 x float> %i.acz, i64 1
  store float %i.add, ptr %i.adc, align 4, !tbaa !39
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  br i1 %i.xt, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.ade = getelementptr inbounds nuw i8, ptr %.1489.us.1.i, i64 8
  store float %i.acl, ptr %i.ade, align 4, !tbaa !39
  %i.adf = getelementptr inbounds nuw i8, ptr %i.act, i64 8
  store float %i.acm, ptr %i.adf, align 4, !tbaa !39
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  br i1 %i.xv, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.adg = getelementptr inbounds nuw i8, ptr %.1489.us.1.i, i64 12
  store float %i.acn, ptr %i.adg, align 4, !tbaa !39
  %i.adh = getelementptr inbounds nuw i8, ptr %i.act, i64 12
  store float %i.acs, ptr %i.adh, align 4, !tbaa !39
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.adi = getelementptr inbounds [4 x i8], ptr %.1489.us.1.i, i64 %i.rb
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cd
  %.1489.us.2.i = phi ptr [ %.1489.us.1.i, %bb.cd ], [ %i.adi, %bb.ck ] ; 5 uses
  %i.adj = or disjoint i32 %i.xk, 3
  %.not519.us.3.i = icmp slt i32 %i.adj, %i.bu
  br i1 %.not519.us.3.i, label %bb.cm, label %bb.cs

bb.cm:                                            ; preds = %bb.cl
  %.sroa.51.184.vec.extract = extractelement <2 x float> %i.xf, i64 0
  %.sroa.51.188.vec.extract = extractelement <2 x float> %i.xf, i64 1
  %i.adk = fsub fast <2 x float> %i.tn, %i.ul     ; 2 uses
  %i.adl = fsub fast <2 x float> %i.vj, %i.wh     ; 2 uses
  %i.adm = fadd fast <2 x float> %i.ul, %i.tn     ; 2 uses
  %i.adn = fadd fast <2 x float> %i.wh, %i.vj     ; 2 uses
  %i.ado = fadd fast <2 x float> %i.sp, %i.rk
  %i.adp = fadd fast <2 x float> %i.ado, %i.adm
  %i.adq = fadd fast <2 x float> %i.adp, %i.adn   ; 2 uses
  %i.adr = shufflevector <2 x float> %i.adm, <2 x float> %i.adn, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ads = fmul fast <4 x float> %i.adr, <float 5.000000e-01, float 2.000000e+00, float 5.000000e-01, float 2.000000e+00> ; 3 uses
  %i.adt = shufflevector <2 x float> %i.adk, <2 x float> %i.adl, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.adu = fmul fast <4 x float> %i.adt, <float f0x3EB504F3, float f0x403504F3, float f0x3EB504F3, float f0x403504F3> ; 3 uses
  %i.adv = shufflevector <4 x float> %i.rq, <4 x float> %i.adu, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.adw = shufflevector <4 x float> %i.ads, <4 x float> %i.rq, <4 x i32> <i32 0, i32 2, i32 4, i32 poison>
  %i.adx = insertelement <4 x float> %i.adw, float %.sroa.51.184.vec.extract, i64 3
  %i.ady = fadd fast <4 x float> %i.adv, %i.adx   ; 4 uses
  %shift175 = shufflevector <4 x float> %i.ads, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop176 = fadd fast <4 x float> %shift175, %i.ady
  %i.adz = extractelement <4 x float> %foldExtExtBinop176, i64 0
  %shift178 = shufflevector <4 x float> %i.ads, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop179 = fadd fast <4 x float> %shift178, %i.ady
  %i.aea = extractelement <4 x float> %foldExtExtBinop179, i64 1
  %shift181 = shufflevector <4 x float> %i.ady, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop182 = fadd fast <4 x float> %shift181, %i.ady
  %i.aeb = extractelement <4 x float> %foldExtExtBinop182, i64 2
  %i.aec = extractelement <4 x float> %i.adu, i64 2
  %i.aed = fadd fast float %i.rp, %i.aec
  %i.aee = extractelement <4 x float> %i.adu, i64 3
  %i.aef = fadd fast float %i.aee, %.sroa.51.188.vec.extract
  %i.aeg = fadd fast float %i.aef, %i.aed
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %.1489.us.2.i, i64 %i.by ; 4 uses
  %i.aei = extractelement <2 x float> %i.adq, i64 0
  store float %i.aei, ptr %.1489.us.2.i, align 4, !tbaa !39
  %i.aej = extractelement <2 x float> %i.adq, i64 1
  store float %i.aej, ptr %i.aeh, align 4, !tbaa !39
  br i1 %i.xr, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.aek = fmul fast <2 x float> %i.adk, splat (float f0x3F3504F3)
  %i.ael = fmul fast <2 x float> %i.adl, splat (float f0x3FB504F3)
  %i.aem = fadd fast <2 x float> %i.rk, %i.aek
  %i.aen = fadd fast <2 x float> %i.ael, %i.aem   ; 2 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %.1489.us.2.i, i64 4
  %i.aep = extractelement <2 x float> %i.aen, i64 0
  store float %i.aep, ptr %i.aeo, align 4, !tbaa !39
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aeh, i64 4
  %i.aer = extractelement <2 x float> %i.aen, i64 1
  store float %i.aer, ptr %i.aeq, align 4, !tbaa !39
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  br i1 %i.xt, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.aes = getelementptr inbounds nuw i8, ptr %.1489.us.2.i, i64 8
  store float %i.adz, ptr %i.aes, align 4, !tbaa !39
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aeh, i64 8
  store float %i.aea, ptr %i.aet, align 4, !tbaa !39
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  br i1 %i.xv, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.aeu = getelementptr inbounds nuw i8, ptr %.1489.us.2.i, i64 12
  store float %i.aeb, ptr %i.aeu, align 4, !tbaa !39
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeh, i64 12
  store float %i.aeg, ptr %i.aev, align 4, !tbaa !39
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %bb.cl
  %indvars.iv.next178.i = add nuw nsw i64 %indvars.iv177.i, 1 ; 2 uses
  %exitcond181.not.i = icmp eq i64 %indvars.iv.next178.i, %wide.trip.count180.i
  br i1 %exitcond181.not.i, label %._crit_edge.us122.i, label %_ZN4ncnn3MatD2Ev.exit523.us.i, !llvm.loop !887

._crit_edge.us122.i:                              ; preds = %bb.cs
  %indvars.iv.next183.i = add nuw nsw i64 %indvars.iv182.i, 2 ; 3 uses
  %i.aew = icmp slt i64 %indvars.iv.next183.i, %invariant.op.i
  br i1 %i.aew, label %bb.bm, label %.preheader.loopexit.i, !llvm.loop !888

.lr.ph118.split.i:                                ; preds = %.lr.ph118.i
  %17 = sub i32 %16, %.0490.lcssa.i
  %18 = and i32 %17, -2
  %19 = add i32 %.0490.lcssa.i, 2
  %i.aex = add i32 %19, %18
  br label %.preheader.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.us122.i
  %i.aey = trunc nsw i64 %indvars.iv.next183.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph118.split.i, %.preheader86.i
  %.1491.lcssa.i = phi i32 [ %.0490.lcssa.i, %.preheader86.i ], [ %i.aex, %.lr.ph118.split.i ], [ %i.aey, %.preheader.loopexit.i ] ; 2 uses
  %i.aez = icmp slt i32 %.1491.lcssa.i, %.sroa.speculated121
  br i1 %i.aez, label %.lr.ph144.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_output_tileERKNS_3MatERS0_S2_iiii.exit

.lr.ph144.i:                                      ; preds = %.preheader.i
  %.not.i80 = icmp eq ptr %.val78, null
  %i.afa = icmp sgt i32 %.sroa.speculated117, 0
  %i.afb = sext i32 %.sroa.speculated117 to i64
  %i.afc = shl nsw i32 %.sroa.speculated117, 1
  %i.afd = sext i32 %i.afc to i64
  %i.afe = mul nsw i32 %.sroa.speculated117, 3
  %i.aff = sext i32 %i.afe to i64
  %i.afg = shl nsw i32 %.sroa.speculated117, 2
  %i.afh = sext i32 %i.afg to i64
  %i.afi = mul nsw i32 %.sroa.speculated117, 5
  %i.afj = sext i32 %i.afi to i64
  %i.afk = mul nsw i32 %.sroa.speculated117, 6
  %i.afl = sext i32 %i.afk to i64                 ; 30 uses
  %i.afm = sext i32 %i.bt to i64                  ; 3 uses
  br i1 %i.afa, label %.lr.ph144.split.us.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_output_tileERKNS_3MatERS0_S2_iiii.exit

.lr.ph144.split.us.i:                             ; preds = %.lr.ph144.i
  %i.afn = load i32, ptr %i.an, align 4, !tbaa !75, !noalias !889
  %i.afo = load ptr, ptr %12, align 8, !tbaa !18, !noalias !889
  %i.afp = load i64, ptr %i.aq, align 8, !tbaa !20, !noalias !889
  %i.afq = load i64, ptr %i.ar, align 8, !tbaa !65, !noalias !889 ; 2 uses
  %factor.op.mul149.i = mul i64 %i.afq, %i.afp
  %i.afr = sext i32 %i.afn to i64
  %factor.op.mul140.us.i = mul i64 %i.afq, %i.afr
  %i.afs = sext i32 %.1491.lcssa.i to i64
  %wide.trip.count196.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %bb.ct

bb.ct:                                            ; preds = %._crit_edge.us147.i, %.lr.ph144.split.us.i
  %indvars.iv198.i = phi i64 [ %indvars.iv.next199.i, %._crit_edge.us147.i ], [ %i.afs, %.lr.ph144.split.us.i ] ; 3 uses
  %.pre227.i = add nsw i64 %indvars.iv198.i, %i.bi ; 2 uses
  br i1 %.not.i80, label %.lr.ph.us146.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.aft = getelementptr inbounds [4 x i8], ptr %.val78, i64 %.pre227.i
  %i.afu = load float, ptr %i.aft, align 4, !tbaa !39
  br label %.lr.ph.us146.i

.lr.ph.us146.i:                                   ; preds = %bb.cu, %bb.ct
  %i.afv = phi fast float [ %i.afu, %bb.cu ], [ 0.000000e+00, %bb.ct ] ; 16 uses
  %i.afw = trunc nsw i64 %indvars.iv198.i to i32
  %factor.op.mul137.reass.us.i = mul i32 %factor.op.mul97.i, %i.afw
  %i.afx = sext i32 %factor.op.mul137.reass.us.i to i64
  %i.afy = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.afx
  %.reass150.i = mul i64 %factor.op.mul149.i, %.pre227.i
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afo, i64 %.reass150.i
  %i.aga = insertelement <4 x float> poison, float %i.afv, i64 3
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %bb.dz, %.lr.ph.us146.i
  %indvars.iv193.i = phi i64 [ 0, %.lr.ph.us146.i ], [ %indvars.iv.next194.i, %bb.dz ] ; 3 uses
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %i.afy, i64 %indvars.iv193.i ; 7 uses
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %i.agb, i64 %i.afb ; 2 uses
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %i.agb, i64 %i.afd ; 2 uses
  %i.age = getelementptr inbounds nuw [4 x i8], ptr %i.agb, i64 %i.aff ; 2 uses
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %i.agb, i64 %i.afh ; 2 uses
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.agb, i64 %i.afj ; 2 uses
  %i.agh = load float, ptr %i.agc, align 4, !tbaa !39 ; 2 uses
  %i.agi = load float, ptr %i.agd, align 4, !tbaa !39 ; 2 uses
  %i.agj = fadd fast float %i.agi, %i.agh         ; 2 uses
  %i.agk = load float, ptr %i.age, align 4, !tbaa !39 ; 2 uses
  %i.agl = load float, ptr %i.agf, align 4, !tbaa !39 ; 2 uses
  %i.agm = fadd fast float %i.agl, %i.agk         ; 2 uses
  %i.agn = fsub fast float %i.agh, %i.agi         ; 2 uses
  %i.ago = fsub fast float %i.agk, %i.agl         ; 2 uses
  %i.agp = fmul fast float %i.agn, f0x3F3504F3
  %i.agq = fmul fast float %i.ago, f0x3FB504F3
  %i.agr = fmul fast float %i.agj, 5.000000e-01
  %i.ags = fmul fast float %i.agm, 2.000000e+00
  %i.agt = load float, ptr %i.agg, align 4, !tbaa !39
  %i.agu = insertelement <4 x float> %i.aga, float %i.ago, i64 0
  %i.agv = insertelement <4 x float> %i.agu, float %i.agn, i64 1
  %i.agw = insertelement <4 x float> %i.agv, float %i.agt, i64 2
  %i.agx = fmul reassoc nsz arcp contract afn <4 x float> %i.agw, <float f0x403504F3, float f0x3EB504F3, float 1.000000e+00, float 1.000000e+00>
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %i.agc, i64 %i.afl ; 2 uses
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.agd, i64 %i.afl ; 2 uses
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %i.age, i64 %i.afl ; 2 uses
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.agf, i64 %i.afl ; 2 uses
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %i.afl ; 2 uses
  %i.ahd = load float, ptr %i.agy, align 4, !tbaa !39 ; 2 uses
  %i.ahe = load float, ptr %i.agz, align 4, !tbaa !39 ; 2 uses
  %i.ahf = load float, ptr %i.aha, align 4, !tbaa !39 ; 2 uses
  %i.ahg = load float, ptr %i.ahb, align 4, !tbaa !39 ; 2 uses
  %i.ahh = load float, ptr %i.ahc, align 4, !tbaa !39
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %i.afl ; 2 uses
  %i.ahj = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %i.afl ; 2 uses
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %i.afl ; 2 uses
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.ahb, i64 %i.afl ; 2 uses
  %i.ahm = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %i.afl ; 2 uses
  %i.ahn = load float, ptr %i.ahi, align 4, !tbaa !39 ; 2 uses
  %i.aho = load float, ptr %i.ahj, align 4, !tbaa !39 ; 2 uses
  %i.ahp = load float, ptr %i.ahk, align 4, !tbaa !39 ; 2 uses
  %i.ahq = load float, ptr %i.ahl, align 4, !tbaa !39 ; 2 uses
  %i.ahr = load float, ptr %i.ahm, align 4, !tbaa !39
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %i.ahi, i64 %i.afl ; 2 uses
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.ahj, i64 %i.afl ; 2 uses
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.ahk, i64 %i.afl ; 2 uses
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %i.afl ; 2 uses
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %i.afl ; 2 uses
  %i.ahx = load float, ptr %i.ahs, align 4, !tbaa !39 ; 2 uses
  %i.ahy = load float, ptr %i.aht, align 4, !tbaa !39 ; 2 uses
  %i.ahz = load float, ptr %i.ahu, align 4, !tbaa !39 ; 2 uses
  %i.aia = load float, ptr %i.ahv, align 4, !tbaa !39 ; 2 uses
  %i.aib = load float, ptr %i.ahw, align 4, !tbaa !39
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.ahs, i64 %i.afl ; 2 uses
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.aht, i64 %i.afl ; 2 uses
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.ahu, i64 %i.afl ; 2 uses
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.ahv, i64 %i.afl ; 2 uses
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.ahw, i64 %i.afl ; 2 uses
  %i.aih = load float, ptr %i.aic, align 4, !tbaa !39 ; 2 uses
  %i.aii = load float, ptr %i.aid, align 4, !tbaa !39 ; 2 uses
  %i.aij = load float, ptr %i.aie, align 4, !tbaa !39 ; 2 uses
  %i.aik = load float, ptr %i.aif, align 4, !tbaa !39 ; 2 uses
  %i.ail = insertelement <4 x float> poison, float %i.aho, i64 0
  %i.aim = insertelement <4 x float> %i.ail, float %i.aii, i64 1
  %i.ain = insertelement <4 x float> %i.aim, float %i.ahe, i64 2
  %i.aio = insertelement <4 x float> %i.ain, float %i.ahy, i64 3
  %i.aip = insertelement <4 x float> poison, float %i.ahn, i64 0
  %i.aiq = insertelement <4 x float> %i.aip, float %i.aih, i64 1
  %i.air = insertelement <4 x float> %i.aiq, float %i.ahd, i64 2
  %i.ais = insertelement <4 x float> %i.air, float %i.ahx, i64 3
  %i.ait = fadd fast <4 x float> %i.aio, %i.ais   ; 3 uses
  %i.aiu = insertelement <4 x float> poison, float %i.ahq, i64 0
  %i.aiv = insertelement <4 x float> %i.aiu, float %i.aik, i64 1
  %i.aiw = insertelement <4 x float> %i.aiv, float %i.ahg, i64 2
  %i.aix = insertelement <4 x float> %i.aiw, float %i.aia, i64 3
  %i.aiy = insertelement <4 x float> poison, float %i.ahp, i64 0
  %i.aiz = insertelement <4 x float> %i.aiy, float %i.aij, i64 1
  %i.aja = insertelement <4 x float> %i.aiz, float %i.ahf, i64 2
  %i.ajb = insertelement <4 x float> %i.aja, float %i.ahz, i64 3
  %i.ajc = fadd fast <4 x float> %i.aix, %i.ajb   ; 3 uses
  %i.ajd = fmul fast <4 x float> %i.ait, splat (float 5.000000e-01)
  %i.aje = fmul fast <4 x float> %i.ajc, splat (float 2.000000e+00)
  %i.ajf = fadd fast <4 x float> %i.aje, %i.ajd   ; 3 uses
  %i.ajg = load float, ptr %i.aig, align 4, !tbaa !39
  %i.ajh = insertelement <4 x float> poison, float %i.aih, i64 0
  %i.aji = insertelement <4 x float> %i.ajh, float %i.ahx, i64 1
  %i.ajj = insertelement <4 x float> %i.aji, float %i.ahn, i64 2
  %i.ajk = insertelement <4 x float> %i.ajj, float %i.ahd, i64 3
  %i.ajl = insertelement <4 x float> poison, float %i.aii, i64 0
  %i.ajm = insertelement <4 x float> %i.ajl, float %i.ahy, i64 1
  %i.ajn = insertelement <4 x float> %i.ajm, float %i.aho, i64 2
  %i.ajo = insertelement <4 x float> %i.ajn, float %i.ahe, i64 3
  %i.ajp = fsub fast <4 x float> %i.ajk, %i.ajo   ; 3 uses
  %i.ajq = insertelement <4 x float> poison, float %i.aij, i64 0
  %i.ajr = insertelement <4 x float> %i.ajq, float %i.ahz, i64 1
  %i.ajs = insertelement <4 x float> %i.ajr, float %i.ahp, i64 2
  %i.ajt = insertelement <4 x float> %i.ajs, float %i.ahf, i64 3
  %i.aju = insertelement <4 x float> poison, float %i.aik, i64 0
  %i.ajv = insertelement <4 x float> %i.aju, float %i.aia, i64 1
  %i.ajw = insertelement <4 x float> %i.ajv, float %i.ahq, i64 2
  %i.ajx = insertelement <4 x float> %i.ajw, float %i.ahg, i64 3
  %i.ajy = fsub fast <4 x float> %i.ajt, %i.ajx   ; 3 uses
  %i.ajz = fmul fast <4 x float> %i.ajp, splat (float f0x3EB504F3)
  %i.aka = insertelement <4 x float> poison, float %i.ajg, i64 0
  %i.akb = insertelement <4 x float> %i.aka, float %i.aib, i64 1
  %i.akc = insertelement <4 x float> %i.akb, float %i.ahr, i64 2
  %i.akd = insertelement <4 x float> %i.akc, float %i.ahh, i64 3
  %i.ake = fadd fast <4 x float> %i.ajz, %i.akd
  %i.akf = fmul fast <4 x float> %i.ajy, splat (float f0x403504F3)
  %i.akg = shufflevector <4 x float> %i.ajp, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.akh = fmul fast <2 x float> %i.akg, splat (float f0x3F3504F3)
  %i.aki = shufflevector <4 x float> %i.ajy, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.akj = fmul fast <2 x float> %i.aki, splat (float f0x3FB504F3)
  %i.akk = shufflevector <4 x float> %i.ajp, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.akl = fmul fast <2 x float> %i.akk, splat (float f0x3F3504F3)
  %i.akm = shufflevector <4 x float> %i.ajy, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.akn = fmul fast <2 x float> %i.akm, splat (float f0x3FB504F3)
  %i.ako = fadd fast <2 x float> %i.akj, %i.akh   ; 2 uses
  %i.akp = fadd fast <2 x float> %i.akn, %i.akl   ; 2 uses
  %i.akq = fadd fast <4 x float> %i.ake, %i.akf   ; 4 uses
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.aic, i64 %i.afl
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %i.afl
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %i.aie, i64 %i.afl
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %i.aif, i64 %i.afl
  %i.akv = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %i.afl
  %i.akw = load float, ptr %i.akr, align 4, !tbaa !39 ; 2 uses
  %i.akx = load float, ptr %i.aks, align 4, !tbaa !39 ; 2 uses
  %i.aky = fadd fast float %i.akx, %i.akw         ; 2 uses
  %i.akz = load float, ptr %i.akt, align 4, !tbaa !39 ; 2 uses
  %i.ala = load float, ptr %i.aku, align 4, !tbaa !39 ; 2 uses
  %i.alb = fadd fast float %i.ala, %i.akz         ; 2 uses
  %i.alc = fsub fast float %i.akw, %i.akx         ; 2 uses
  %i.ald = fsub fast float %i.akz, %i.ala         ; 2 uses
  %i.ale = fmul fast float %i.alc, f0x3F3504F3
  %i.alf = fmul fast float %i.ald, f0x3FB504F3
  %i.alg = fmul fast float %i.aky, 5.000000e-01
  %i.alh = fmul fast float %i.alb, 2.000000e+00
end_hunk_12
begin_hunk_13_@_ZN4ncnnL20conv3x3s1_winograd63ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined:bb.a
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !9
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  invoke void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef %i.df)
          to label %_ZN4ncnn3MatD2Ev.exit33 unwind label %bb.k, !inline_history !19

bb.i:                                             ; preds = %bb.g
  %.not.i44 = icmp eq ptr %i.df, null
  br i1 %.not.i44, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.df) #12
  br label %_ZN4ncnn3MatD2Ev.exit33

bb.k:                                             ; preds = %bb.h
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit33:                          ; preds = %bb.f, %_ZN4ncnn3Mat7channelEi.exit48, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.dl = load ptr, ptr %i.v, align 8, !tbaa !11  ; 2 uses
  %.not.i39 = icmp eq ptr %i.dl, null
  br i1 %.not.i39, label %_ZN4ncnn3MatD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit33
  %i.dm = atomicrmw add ptr %i.dl, i32 -1 acq_rel, align 4
  %i.dn = icmp eq i32 %i.dm, 1
  br i1 %i.dn, label %bb.m, label %_ZN4ncnn3MatD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.do = load ptr, ptr %i.y, align 8, !tbaa !17  ; 3 uses
  %.not3.i40 = icmp eq ptr %i.do, null
  %i.dp = load ptr, ptr %11, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !9
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.dp)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.q, !inline_history !19

bb.o:                                             ; preds = %bb.m
  %.not.i43 = icmp eq ptr %i.dp, null
  br i1 %.not.i43, label %_ZN4ncnn3MatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.dp) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.q:                                             ; preds = %bb.n
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.l, %_ZN4ncnn3MatD2Ev.exit33, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.dv = add nsw i32 %.067, 1
  %i.dw = load i32, ptr %i.e, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.067, %i.dw
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.s:                                             ; preds = %bb.c
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #27
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20conv3x3s1_winograd63ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [6 x [8 x [4 x float]]], align 16 ; 9 uses
  %i.b = alloca [6 x [8 x [2 x float]]], align 16 ; 9 uses
  %i.c = alloca [6 x [8 x float]], align 16       ; 9 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.bq

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 %i.j, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 1, ptr %i.f, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.k = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !67
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !67
  %i.n = load i32, ptr %i.d, align 4, !tbaa !67   ; 2 uses
  %.not132 = icmp sgt i32 %i.n, %i.m
  br i1 %.not132, label %._crit_edge136, label %.lr.ph135

.lr.ph135:                                        ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 44
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph135, %_ZN4ncnn3MatD2Ev.exit
  %.045133 = phi i32 [ %i.n, %.lr.ph135 ], [ %i.ce, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.bk = load i32, ptr %3, align 4, !tbaa !67
  %i.bl = mul nsw i32 %i.bk, %.045133             ; 4 uses
  %i.bm = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit76 unwind label %bb.br

_ZN4ncnn3Mat7channelEi.exit76:                    ; preds = %bb.c
  %i.bn = load ptr, ptr %4, align 8, !tbaa !18, !noalias !936
  %i.bo = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !936
  %i.bp = sext i32 %i.bm to i64
  %i.bq = mul i64 %i.bo, %i.bp
  %i.br = load i64, ptr %i.p, align 8, !tbaa !65, !noalias !936
  %i.bs = mul i64 %i.bq, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bs ; 4 uses
  %i.bu = load i32, ptr %5, align 4, !tbaa !67
  %i.bv = sub nsw i32 %i.bu, %i.bl
  %i.bw = load i32, ptr %3, align 4, !tbaa !67
  %.sroa.speculated121 = call i32 @llvm.smin.i32(i32 %i.bw, i32 %i.bv) ; 8 uses
  %i.bx = load i32, ptr %6, align 4, !tbaa !67    ; 2 uses
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit76
  %i.bz = icmp sgt i32 %.sroa.speculated121, 3
  %i.ca = sext i32 %i.bl to i64                   ; 3 uses
  %i.cb = and i32 %.sroa.speculated121, 2147483644
  %i.cc = zext nneg i32 %.sroa.speculated121 to i64
  %16 = add i32 %.sroa.speculated121, -2
  %i.cd = sext i32 %.sroa.speculated121 to i64    ; 2 uses
  %invariant.op261.i.a = add nsw i64 %i.cd, -1
  %.pre = load i32, ptr %7, align 4, !tbaa !67
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL42conv3x3s1_winograd63_transform_output_tileERKNS_3MatERS0_S2_iiii.exit, %_ZN4ncnn3Mat7channelEi.exit76
  %i.ce = add nsw i32 %.045133, 1
  %i.cf = load i32, ptr %i.e, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.045133, %i.cf
  br i1 %.not.not, label %bb.c, label %._crit_edge136

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnnL42conv3x3s1_winograd63_transform_output_tileERKNS_3MatERS0_S2_iiii.exit
  %i.cg = phi i32 [ %.pre, %.lr.ph ], [ %i.aar, %_ZN4ncnnL42conv3x3s1_winograd63_transform_output_tileERKNS_3MatERS0_S2_iiii.exit ]
  %i.ch = phi i32 [ %i.bx, %.lr.ph ], [ %i.aat, %_ZN4ncnnL42conv3x3s1_winograd63_transform_output_tileERKNS_3MatERS0_S2_iiii.exit ]
  %.044131 = phi i32 [ 0, %.lr.ph ], [ %i.aas, %_ZN4ncnnL42conv3x3s1_winograd63_transform_output_tileERKNS_3MatERS0_S2_iiii.exit ] ; 6 uses
  %i.ci = sub nsw i32 %i.ch, %.044131
  %.sroa.speculated117 = call i32 @llvm.smin.i32(i32 %i.cg, i32 %i.ci) ; 32 uses
  %i.cj = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %bb.d
  %.pre137 = load i32, ptr %9, align 4, !tbaa !67
  br label %.noexc

._crit_edge:                                      ; preds = %.noexc, %bb.d
  %.val78 = load ptr, ptr %13, align 8, !tbaa !18 ; 6 uses
  %i.cl = load i32, ptr %i.aq, align 4, !tbaa !75 ; 19 uses
  %i.cm = load i32, ptr %i.ar, align 8, !tbaa !76 ; 3 uses
  %i.cn = load i32, ptr %i.as, align 8, !tbaa !66 ; 5 uses
  %i.co = load i64, ptr %i.at, align 8, !tbaa !20
  %i.cp = sext i32 %i.cn to i64
  %i.cq = mul i64 %i.co, %i.cp                    ; 4 uses
  %i.cr = add nsw i32 %i.cl, 5
  %i.cs = sdiv i32 %i.cr, 6                       ; 6 uses
  %factor.op.mul137.i = shl i32 %.sroa.speculated117, 6 ; 3 uses
  br i1 %i.bz, label %.lr.ph140.i, label %.preheader124.i

.lr.ph140.i:                                      ; preds = %._crit_edge
  %.not737.i = icmp eq ptr %.val78, null
  %i.ct = getelementptr inbounds [4 x i8], ptr %.val78, i64 %i.ca
  %i.cu = icmp sgt i32 %.sroa.speculated117, 0
  %i.cv = shl nsw i32 %.sroa.speculated117, 2
  %i.cw = sext i32 %i.cv to i64
  %i.cx = shl nsw i32 %.sroa.speculated117, 3
  %i.cy = sext i32 %i.cx to i64
  %i.cz = mul nsw i32 %.sroa.speculated117, 12
  %i.da = sext i32 %i.cz to i64
  %i.db = shl nsw i32 %.sroa.speculated117, 4
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i32 %.sroa.speculated117, 20
  %i.de = sext i32 %i.dd to i64
  %i.df = mul nsw i32 %.sroa.speculated117, 24
  %i.dg = sext i32 %i.df to i64
  %i.dh = mul nsw i32 %.sroa.speculated117, 28
  %i.di = sext i32 %i.dh to i64
  %i.dj = shl nsw i32 %.sroa.speculated117, 5
  %i.dk = sext i32 %i.dj to i64                   ; 8 uses
  %.idx.i = shl i64 %i.cq, 3
  %.idx739.i = mul i64 %i.cq, 12
  %i.dl = mul nsw i32 %i.cn, %i.cl
  %i.dm = sext i32 %i.dl to i64
  br i1 %i.cu, label %.lr.ph140.split.us.preheader.i, label %.preheader124.i

.lr.ph140.split.us.preheader.i:                   ; preds = %.lr.ph140.i
  %i.dn = sext i32 %i.cm to i64
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %.lr.ph140.split.us.i

.lr.ph140.split.us.i:                             ; preds = %._crit_edge.us.i, %.lr.ph140.split.us.preheader.i
  %indvars.iv215.i = phi i64 [ 0, %.lr.ph140.split.us.preheader.i ], [ %indvars.iv.next216.i, %._crit_edge.us.i ] ; 3 uses
  br i1 %.not737.i, label %.lr.ph.us.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph140.split.us.i
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv215.i
  %i.dp = load <4 x float>, ptr %i.do, align 1, !tbaa !254
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.e, %.lr.ph140.split.us.i
  %i.dq = phi fast <4 x float> [ %i.dp, %bb.e ], [ zeroinitializer, %.lr.ph140.split.us.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.dr = trunc i64 %indvars.iv215.i to i32       ; 2 uses
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul137.i, %i.dr
  %i.ds = sext i32 %factor.op.mul.reass.us.i to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.ds
  %i.du = add i32 %i.bl, %i.dr
  %i.dv = sdiv i32 %i.du, %i.cn
  %i.dw = sext i32 %i.dv to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.af, %.lr.ph.us.i
  %indvars.iv211.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next212.i, %bb.af ] ; 3 uses
  %.idx258.i.a = shl nuw nsw i64 %indvars.iv211.i, 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx258.i.a ; 8 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.cw
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.cy
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.da
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dc
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.de
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dg
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.di
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %bb.f ] ; 7 uses
  %.0706133.us.i = phi ptr [ %i.fx, %bb.g ], [ %i.dx, %bb.f ] ; 2 uses
  %.0707132.us.i = phi ptr [ %i.fy, %bb.g ], [ %i.dy, %bb.f ] ; 2 uses
  %.0708131.us.i = phi ptr [ %i.fz, %bb.g ], [ %i.dz, %bb.f ] ; 2 uses
  %.0709130.us.i = phi ptr [ %i.ga, %bb.g ], [ %i.ea, %bb.f ] ; 2 uses
  %.0710129.us.i = phi ptr [ %i.gb, %bb.g ], [ %i.eb, %bb.f ] ; 2 uses
  %.0711128.us.i = phi ptr [ %i.gc, %bb.g ], [ %i.ec, %bb.f ] ; 2 uses
  %.0712127.us.i = phi ptr [ %i.gd, %bb.g ], [ %i.ed, %bb.f ] ; 2 uses
  %.0726126.us.i = phi ptr [ %i.ge, %bb.g ], [ %i.ee, %bb.f ] ; 2 uses
  %i.ef = load <4 x float>, ptr %.0706133.us.i, align 16, !tbaa !254
  %i.eg = load <4 x float>, ptr %.0707132.us.i, align 16, !tbaa !254 ; 2 uses
  %i.eh = load <4 x float>, ptr %.0708131.us.i, align 16, !tbaa !254 ; 2 uses
  %i.ei = load <4 x float>, ptr %.0709130.us.i, align 16, !tbaa !254 ; 2 uses
  %i.ej = load <4 x float>, ptr %.0710129.us.i, align 16, !tbaa !254 ; 2 uses
  %i.ek = load <4 x float>, ptr %.0711128.us.i, align 16, !tbaa !254 ; 2 uses
  %i.el = load <4 x float>, ptr %.0712127.us.i, align 16, !tbaa !254 ; 2 uses
  %i.em = load <4 x float>, ptr %.0726126.us.i, align 16, !tbaa !254
  %i.en = fadd fast <4 x float> %i.eh, %i.eg      ; 3 uses
  %i.eo = fsub fast <4 x float> %i.eg, %i.eh      ; 3 uses
  %i.ep = fadd fast <4 x float> %i.ej, %i.ei      ; 3 uses
  %i.eq = fsub fast <4 x float> %i.ei, %i.ej      ; 3 uses
  %i.er = fadd fast <4 x float> %i.el, %i.ek      ; 3 uses
  %i.es = fsub fast <4 x float> %i.ek, %i.el      ; 3 uses
  %i.et = fadd fast <4 x float> %i.en, %i.ef
  %i.eu = fmul fast <4 x float> %i.er, splat (float 3.200000e+01)
  %i.ev = fadd fast <4 x float> %i.ep, %i.eu
  %i.ew = fadd fast <4 x float> %i.et, %i.ev
  %i.ex = fmul fast <4 x float> %i.eq, splat (float 2.000000e+00)
  %i.ey = fadd fast <4 x float> %i.eo, %i.ex
  %i.ez = fmul fast <4 x float> %i.es, splat (float 1.600000e+01)
  %i.fa = fadd fast <4 x float> %i.ez, %i.ey
  %i.fb = fmul fast <4 x float> %i.ep, splat (float 4.000000e+00)
  %i.fc = fadd fast <4 x float> %i.en, %i.fb
  %i.fd = fmul fast <4 x float> %i.er, splat (float 8.000000e+00)
  %i.fe = fadd fast <4 x float> %i.fd, %i.fc
  %i.ff = fmul fast <4 x float> %i.eq, splat (float 8.000000e+00)
  %i.fg = fadd fast <4 x float> %i.eo, %i.ff
  %i.fh = fmul fast <4 x float> %i.es, splat (float 4.000000e+00)
  %i.fi = fadd fast <4 x float> %i.fh, %i.fg
  %i.fj = fmul fast <4 x float> %i.ep, splat (float 1.600000e+01)
  %i.fk = fadd fast <4 x float> %i.en, %i.fj
  %i.fl = fmul fast <4 x float> %i.er, splat (float 2.000000e+00)
  %i.fm = fadd fast <4 x float> %i.fl, %i.fk
  %i.fn = fadd fast <4 x float> %i.em, %i.eo
  %i.fo = fmul fast <4 x float> %i.eq, splat (float 3.200000e+01)
  %i.fp = fadd fast <4 x float> %i.fo, %i.es
  %i.fq = fadd fast <4 x float> %i.fn, %i.fp
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv.i
  store <4 x float> %i.ew, ptr %i.fr, align 16, !tbaa !254
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %indvars.iv.i
  store <4 x float> %i.fa, ptr %i.fs, align 16, !tbaa !254
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %indvars.iv.i
  store <4 x float> %i.fe, ptr %i.ft, align 16, !tbaa !254
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %indvars.iv.i
  store <4 x float> %i.fi, ptr %i.fu, align 16, !tbaa !254
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %indvars.iv.i
  store <4 x float> %i.fm, ptr %i.fv, align 16, !tbaa !254
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %indvars.iv.i
  store <4 x float> %i.fq, ptr %i.fw, align 16, !tbaa !254
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.0706133.us.i, i64 %i.dk
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.0707132.us.i, i64 %i.dk
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.0708131.us.i, i64 %i.dk
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.0709130.us.i, i64 %i.dk
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.0710129.us.i, i64 %i.dk
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.0711128.us.i, i64 %i.dk
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.0712127.us.i, i64 %i.dk
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.0726126.us.i, i64 %i.dk
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %_ZN4ncnn3MatD2Ev.exit741.us.i, label %bb.g, !llvm.loop !939

_ZN4ncnn3MatD2Ev.exit741.us.i:                    ; preds = %bb.g
  %i.gf = trunc i64 %indvars.iv211.i to i32
  %i.gg = add i32 %.044131, %i.gf                 ; 2 uses
  %i.gh = sdiv i32 %i.gg, %i.cs
  %i.gi = srem i32 %i.gg, %i.cs
  %i.gj = load i32, ptr %i.aq, align 4, !tbaa !75, !noalias !940
  %i.gk = load ptr, ptr %12, align 8, !tbaa !18, !noalias !940
  %i.gl = load i64, ptr %i.at, align 8, !tbaa !20, !noalias !940
  %i.gm = mul i64 %i.gl, %i.dw
  %i.gn = load i64, ptr %i.az, align 8, !tbaa !65, !noalias !940 ; 2 uses
  %i.go = mul i64 %i.gm, %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.go
  %i.gq = sext i32 %i.gj to i64
  %i.gr = mul nsw i32 %i.gh, 6
  %i.gs = sext i32 %i.gr to i64                   ; 2 uses
  %i.gt = mul nsw i64 %i.gq, %i.gs
  %i.gu = mul i64 %i.gt, %i.gn
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gu
  %i.gw = mul nsw i32 %i.gi, 6                    ; 6 uses
  %i.gx = mul nsw i32 %i.gw, %i.cn
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.gy
  %i.ha = or disjoint i32 %i.gw, 1
  %i.hb = icmp slt i32 %i.ha, %i.cl               ; 2 uses
  %i.hc = add nsw i32 %i.gw, 2
end_hunk_13
begin_hunk_14_@_ZN4ncnnL20conv3x3s1_winograd63ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.5:bb.a
  %i.ik = fadd fast <4 x float> %i.ij, %i.ih      ; 5 uses
  %i.il = fmul fast <4 x float> %i.id, splat (float 2.000000e+00)
  %i.im = fadd fast <4 x float> %i.ib, %i.il
  %i.in = fmul fast <4 x float> %i.if, splat (float 1.600000e+01)
  %i.io = fadd fast <4 x float> %i.im, %i.dq
  %i.ip = fadd fast <4 x float> %i.io, %i.in      ; 5 uses
  %i.iq = fmul fast <4 x float> %i.ic, splat (float 4.000000e+00)
  %i.ir = fadd fast <4 x float> %i.ia, %i.iq
  %i.is = fmul fast <4 x float> %i.ie, splat (float 8.000000e+00)
  %i.it = fadd fast <4 x float> %i.ir, %i.dq
  %i.iu = fadd fast <4 x float> %i.it, %i.is      ; 5 uses
  %i.iv = fmul fast <4 x float> %i.id, splat (float 8.000000e+00)
  %i.iw = fadd fast <4 x float> %i.ib, %i.iv
  %i.ix = fmul fast <4 x float> %i.if, splat (float 4.000000e+00)
  %i.iy = fadd fast <4 x float> %i.iw, %i.dq
  %i.iz = fadd fast <4 x float> %i.iy, %i.ix      ; 5 uses
  %i.ja = fmul fast <4 x float> %i.ic, splat (float 1.600000e+01)
  %i.jb = fadd fast <4 x float> %i.ia, %i.ja
  %i.jc = fmul fast <4 x float> %i.ie, splat (float 2.000000e+00)
  %i.jd = fadd fast <4 x float> %i.jb, %i.dq
  %i.je = fadd fast <4 x float> %i.jd, %i.jc      ; 5 uses
  %i.jf = fmul fast <4 x float> %i.id, splat (float 3.200000e+01)
  %i.jg = fadd fast <4 x float> %i.jf, %i.if
  %i.jh = fadd fast <4 x float> %i.ib, %i.dq
  %i.ji = fadd fast <4 x float> %i.jh, %i.hz
  %i.jj = fadd fast <4 x float> %i.ji, %i.jg      ; 5 uses
  switch i32 %i.cn, label %bb.ad [
    i32 4, label %bb.t
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %.0724134.us.i, i64 %i.cq ; 6 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.0724134.us.i, i64 %.idx.i ; 6 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.0724134.us.i, i64 %.idx739.i ; 6 uses
  %.sroa.028.0.vec.extract.us.i = extractelement <4 x float> %i.ik, i64 0
  store float %.sroa.028.0.vec.extract.us.i, ptr %.0724134.us.i, align 4, !tbaa !39
  %.sroa.028.4.vec.extract.us.i = extractelement <4 x float> %i.ik, i64 1
  store float %.sroa.028.4.vec.extract.us.i, ptr %i.jk, align 4, !tbaa !39
  %.sroa.028.8.vec.extract.us.i = extractelement <4 x float> %i.ik, i64 2
  store float %.sroa.028.8.vec.extract.us.i, ptr %i.jl, align 4, !tbaa !39
  %.sroa.028.12.vec.extract.us.i = extractelement <4 x float> %i.ik, i64 3
  store float %.sroa.028.12.vec.extract.us.i, ptr %i.jm, align 4, !tbaa !39
  br i1 %i.hb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.729.16.vec.extract.us.i = extractelement <4 x float> %i.ip, i64 0
  %i.jn = getelementptr inbounds nuw i8, ptr %.0724134.us.i, i64 4
  store float %.sroa.729.16.vec.extract.us.i, ptr %i.jn, align 4, !tbaa !39
  %.sroa.729.20.vec.extract.us.i = extractelement <4 x float> %i.ip, i64 1
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jk, i64 4
  store float %.sroa.729.20.vec.extract.us.i, ptr %i.jo, align 4, !tbaa !39
  %.sroa.729.24.vec.extract.us.i = extractelement <4 x float> %i.ip, i64 2
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  store float %.sroa.729.24.vec.extract.us.i, ptr %i.jp, align 4, !tbaa !39
  %.sroa.729.28.vec.extract.us.i = extractelement <4 x float> %i.ip, i64 3
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  store float %.sroa.729.28.vec.extract.us.i, ptr %i.jq, align 4, !tbaa !39
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %i.hd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.12.32.vec.extract.us.i = extractelement <4 x float> %i.iu, i64 0
  %i.jr = getelementptr inbounds nuw i8, ptr %.0724134.us.i, i64 8
  store float %.sroa.12.32.vec.extract.us.i, ptr %i.jr, align 4, !tbaa !39
  %.sroa.12.36.vec.extract.us.i = extractelement <4 x float> %i.iu, i64 1
  %i.js = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  store float %.sroa.12.36.vec.extract.us.i, ptr %i.js, align 4, !tbaa !39
  %.sroa.12.40.vec.extract.us.i = extractelement <4 x float> %i.iu, i64 2
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store float %.sroa.12.40.vec.extract.us.i, ptr %i.jt, align 4, !tbaa !39
  %.sroa.12.44.vec.extract.us.i = extractelement <4 x float> %i.iu, i64 3
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store float %.sroa.12.44.vec.extract.us.i, ptr %i.ju, align 4, !tbaa !39
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %i.hf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.1730.48.vec.extract.us.i = extractelement <4 x float> %i.iz, i64 0
  %i.jv = getelementptr inbounds nuw i8, ptr %.0724134.us.i, i64 12
  store float %.sroa.1730.48.vec.extract.us.i, ptr %i.jv, align 4, !tbaa !39
  %.sroa.1730.52.vec.extract.us.i = extractelement <4 x float> %i.iz, i64 1
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jk, i64 12
  store float %.sroa.1730.52.vec.extract.us.i, ptr %i.jw, align 4, !tbaa !39
  %.sroa.1730.56.vec.extract.us.i = extractelement <4 x float> %i.iz, i64 2
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jl, i64 12
  store float %.sroa.1730.56.vec.extract.us.i, ptr %i.jx, align 4, !tbaa !39
  %.sroa.1730.60.vec.extract.us.i = extractelement <4 x float> %i.iz, i64 3
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jm, i64 12
  store float %.sroa.1730.60.vec.extract.us.i, ptr %i.jy, align 4, !tbaa !39
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %i.hh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.sroa.2231.64.vec.extract.us.i = extractelement <4 x float> %i.je, i64 0
  %i.jz = getelementptr inbounds nuw i8, ptr %.0724134.us.i, i64 16
  store float %.sroa.2231.64.vec.extract.us.i, ptr %i.jz, align 4, !tbaa !39
  %.sroa.2231.68.vec.extract.us.i = extractelement <4 x float> %i.je, i64 1
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  store float %.sroa.2231.68.vec.extract.us.i, ptr %i.ka, align 4, !tbaa !39
  %.sroa.2231.72.vec.extract.us.i = extractelement <4 x float> %i.je, i64 2
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  store float %.sroa.2231.72.vec.extract.us.i, ptr %i.kb, align 4, !tbaa !39
  %.sroa.2231.76.vec.extract.us.i = extractelement <4 x float> %i.je, i64 3
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  store float %.sroa.2231.76.vec.extract.us.i, ptr %i.kc, align 4, !tbaa !39
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %i.hj, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %bb.r
  %.sroa.27.80.vec.extract.us.i = extractelement <4 x float> %i.jj, i64 0
  %i.kd = getelementptr inbounds nuw i8, ptr %.0724134.us.i, i64 20
  store float %.sroa.27.80.vec.extract.us.i, ptr %i.kd, align 4, !tbaa !39
  %.sroa.27.84.vec.extract.us.i = extractelement <4 x float> %i.jj, i64 1
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jk, i64 20
  store float %.sroa.27.84.vec.extract.us.i, ptr %i.ke, align 4, !tbaa !39
  %.sroa.27.88.vec.extract.us.i = extractelement <4 x float> %i.jj, i64 2
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jl, i64 20
  store float %.sroa.27.88.vec.extract.us.i, ptr %i.kf, align 4, !tbaa !39
  %.sroa.27.92.vec.extract.us.i = extractelement <4 x float> %i.jj, i64 3
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jm, i64 20
  store float %.sroa.27.92.vec.extract.us.i, ptr %i.kg, align 4, !tbaa !39
  br label %bb.ad

bb.t:                                             ; preds = %bb.i
  store <4 x float> %i.ik, ptr %.0724134.us.i, align 16, !tbaa !254
  br i1 %i.hb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.kh = getelementptr inbounds nuw i8, ptr %.0724134.us.i, i64 16
  store <4 x float> %i.ip, ptr %i.kh, align 16, !tbaa !254
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %i.hd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ki = getelementptr inbounds nuw i8, ptr %.0724134.us.i, i64 32
  store <4 x float> %i.iu, ptr %i.ki, align 16, !tbaa !254
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %i.hf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.kj = getelementptr inbounds nuw i8, ptr %.0724134.us.i, i64 48
  store <4 x float> %i.iz, ptr %i.kj, align 16, !tbaa !254
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  br i1 %i.hh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.kk = getelementptr inbounds nuw i8, ptr %.0724134.us.i, i64 64
  store <4 x float> %i.je, ptr %i.kk, align 16, !tbaa !254
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %i.hj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.kl = getelementptr inbounds nuw i8, ptr %.0724134.us.i, i64 80
  store <4 x float> %i.jj, ptr %i.kl, align 16, !tbaa !254
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.s, %bb.r, %bb.i
  %i.km = getelementptr inbounds [4 x i8], ptr %.0724134.us.i, i64 %i.dm
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.h
  %.1725.us.i = phi ptr [ %.0724134.us.i, %bb.h ], [ %i.km, %bb.ad ]
  %indvars.iv.next208.i = add nuw nsw i64 %indvars.iv207.i, 1 ; 2 uses
  %exitcond210.not.i = icmp eq i64 %indvars.iv.next208.i, 6
  br i1 %exitcond210.not.i, label %bb.af, label %bb.h, !llvm.loop !943

bb.af:                                            ; preds = %bb.ae
  %indvars.iv.next212.i = add nuw nsw i64 %indvars.iv211.i, 1 ; 2 uses
  %exitcond214.not.i = icmp eq i64 %indvars.iv.next212.i, %wide.trip.count.i
  br i1 %exitcond214.not.i, label %._crit_edge.us.i, label %bb.f, !llvm.loop !944

._crit_edge.us.i:                                 ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %indvars.iv.next216.i = add nuw nsw i64 %indvars.iv215.i, 4 ; 3 uses
  %i.kn = or disjoint i64 %indvars.iv.next216.i, 3
  %i.ko = icmp samesign ult i64 %i.kn, %i.cc
  br i1 %i.ko, label %.lr.ph140.split.us.i, label %.preheader124.loopexit.i, !llvm.loop !945

.preheader124.loopexit.i:                         ; preds = %._crit_edge.us.i
  %i.kp = trunc nuw nsw i64 %indvars.iv.next216.i to i32
  br label %.preheader124.i

.preheader124.i:                                  ; preds = %.lr.ph140.i, %.preheader124.loopexit.i, %._crit_edge
  %.0703.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.kp, %.preheader124.loopexit.i ], [ %i.cb, %.lr.ph140.i ] ; 5 uses
  %i.kq = or disjoint i32 %.0703.lcssa.i, 1
  %i.kr = icmp slt i32 %i.kq, %.sroa.speculated121
  br i1 %i.kr, label %.lr.ph160.i, label %.preheader.i

.lr.ph160.i:                                      ; preds = %.preheader124.i
  %.not735.i = icmp eq ptr %.val78, null
  %i.ks = icmp sgt i32 %.sroa.speculated117, 0
  %i.kt = shl nsw i32 %.sroa.speculated117, 1
  %i.ku = sext i32 %i.kt to i64
  %i.kv = shl nsw i32 %.sroa.speculated117, 2
  %i.kw = sext i32 %i.kv to i64
  %i.kx = mul nsw i32 %.sroa.speculated117, 6
  %i.ky = sext i32 %i.kx to i64
  %i.kz = shl nsw i32 %.sroa.speculated117, 3
  %i.la = sext i32 %i.kz to i64
  %i.lb = mul nsw i32 %.sroa.speculated117, 10
  %i.lc = sext i32 %i.lb to i64
  %i.ld = mul nsw i32 %.sroa.speculated117, 12
  %i.le = sext i32 %i.ld to i64
  %i.lf = mul nsw i32 %.sroa.speculated117, 14
  %i.lg = sext i32 %i.lf to i64
  %i.lh = shl nsw i32 %.sroa.speculated117, 4
  %i.li = sext i32 %i.lh to i64                   ; 8 uses
  %i.lj = sext i32 %i.cl to i64
  br i1 %i.ks, label %.lr.ph160.split.us.i, label %.lr.ph160.split.i

.lr.ph160.split.us.i:                             ; preds = %.lr.ph160.i
  %i.lk = load i32, ptr %i.aq, align 4, !tbaa !75, !noalias !946
  %i.ll = load ptr, ptr %12, align 8, !tbaa !18, !noalias !946
  %i.lm = load i64, ptr %i.at, align 8, !tbaa !20, !noalias !946
  %i.ln = load i64, ptr %i.az, align 8, !tbaa !65, !noalias !946 ; 2 uses
  %factor.op.mul.i = mul i64 %i.ln, %i.lm
  %i.lo = sext i32 %i.lk to i64
  %factor.op.mul156.us.i = mul i64 %i.ln, %i.lo
  %i.lp = sext i32 %i.cm to i64
  %i.lq = sext i32 %.0703.lcssa.i to i64
  %wide.trip.count230.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.us164.i, %.lr.ph160.split.us.i
  %indvars.iv232.i = phi i64 [ %indvars.iv.next233.i, %._crit_edge.us164.i ], [ %i.lq, %.lr.ph160.split.us.i ] ; 3 uses
  %.pre.i = add nsw i64 %indvars.iv232.i, %i.ca   ; 2 uses
  br i1 %.not735.i, label %.thread.us.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.lr = getelementptr [4 x i8], ptr %.val78, i64 %.pre.i
  %i.ls = load <2 x float>, ptr %i.lr, align 4, !tbaa !39
  br label %.thread.us.i

.thread.us.i:                                     ; preds = %bb.ah, %bb.ag
  %i.lt = phi <2 x float> [ %i.ls, %bb.ah ], [ zeroinitializer, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.lu = trunc nsw i64 %indvars.iv232.i to i32
  %factor.op.mul.reass.us162.i = mul i32 %factor.op.mul137.i, %i.lu
  %i.lv = sext i32 %factor.op.mul.reass.us162.i to i64
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.lv
  %.reass.i = mul i64 %factor.op.mul.i, %.pre.i
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ll, i64 %.reass.i
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ax, %.thread.us.i
  %indvars.iv227.i = phi i64 [ 0, %.thread.us.i ], [ %indvars.iv.next228.i, %bb.ax ] ; 3 uses
  %.idx259.i = shl nuw nsw i64 %indvars.iv227.i, 3
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 %.idx259.i ; 8 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.ku
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.kw
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.ky
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.la
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.lc
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.le
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.lg
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %indvars.iv219.i = phi i64 [ %indvars.iv.next220.i, %bb.aj ], [ 0, %bb.ai ] ; 7 uses
  %.0714151.us.i = phi ptr [ %i.of, %bb.aj ], [ %i.mf, %bb.ai ] ; 2 uses
  %.0715150.us.i = phi ptr [ %i.oe, %bb.aj ], [ %i.me, %bb.ai ] ; 2 uses
  %.0716149.us.i = phi ptr [ %i.od, %bb.aj ], [ %i.md, %bb.ai ] ; 2 uses
  %.0717148.us.i = phi ptr [ %i.oc, %bb.aj ], [ %i.mc, %bb.ai ] ; 2 uses
  %.0718147.us.i = phi ptr [ %i.ob, %bb.aj ], [ %i.mb, %bb.ai ] ; 2 uses
  %.0719146.us.i = phi ptr [ %i.oa, %bb.aj ], [ %i.ma, %bb.ai ] ; 2 uses
  %.0720145.us.i = phi ptr [ %i.nz, %bb.aj ], [ %i.lz, %bb.ai ] ; 2 uses
  %.0721144.us.i = phi ptr [ %i.ny, %bb.aj ], [ %i.ly, %bb.ai ] ; 2 uses
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv219.i
  %i.mh = load <2 x float>, ptr %.0720145.us.i, align 4, !tbaa !39 ; 2 uses
  %i.mi = load <2 x float>, ptr %.0719146.us.i, align 4, !tbaa !39 ; 2 uses
  %i.mj = fadd fast <2 x float> %i.mi, %i.mh      ; 3 uses
  %i.mk = load <2 x float>, ptr %.0718147.us.i, align 4, !tbaa !39 ; 2 uses
  %i.ml = load <2 x float>, ptr %.0717148.us.i, align 4, !tbaa !39 ; 2 uses
  %i.mm = fadd fast <2 x float> %i.ml, %i.mk      ; 3 uses
  %i.mn = load <2 x float>, ptr %.0716149.us.i, align 4, !tbaa !39 ; 2 uses
  %i.mo = load <2 x float>, ptr %.0715150.us.i, align 4, !tbaa !39 ; 2 uses
  %i.mp = fadd fast <2 x float> %i.mo, %i.mn      ; 3 uses
  %i.mq = load <2 x float>, ptr %.0721144.us.i, align 4, !tbaa !39
  %i.mr = fmul fast <2 x float> %i.mp, splat (float 3.200000e+01)
  %i.ms = fadd fast <2 x float> %i.mm, %i.mj
  %i.mt = fadd fast <2 x float> %i.ms, %i.mr
  %i.mu = fadd fast <2 x float> %i.mt, %i.mq
  store <2 x float> %i.mu, ptr %i.mg, align 8, !tbaa !39
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv219.i
  %i.mw = fsub fast <2 x float> %i.mh, %i.mi      ; 3 uses
  %i.mx = fsub fast <2 x float> %i.mk, %i.ml      ; 3 uses
  %i.my = fsub fast <2 x float> %i.mn, %i.mo      ; 3 uses
  %i.mz = fmul fast <2 x float> %i.my, splat (float 1.600000e+01)
  %i.na = fmul fast <2 x float> %i.mx, splat (float 2.000000e+00)
  %i.nb = fadd fast <2 x float> %i.mw, %i.mz
  %i.nc = fadd fast <2 x float> %i.nb, %i.na
  store <2 x float> %i.nc, ptr %i.mv, align 8, !tbaa !39
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv219.i
  %i.ne = fmul fast <2 x float> %i.mm, splat (float 4.000000e+00)
  %i.nf = fadd fast <2 x float> %i.mj, %i.ne
  %i.ng = fmul fast <2 x float> %i.mp, splat (float 8.000000e+00)
  %i.nh = fadd fast <2 x float> %i.ng, %i.nf
  store <2 x float> %i.nh, ptr %i.nd, align 8, !tbaa !39
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv219.i
  %i.nj = fmul fast <2 x float> %i.mx, splat (float 8.000000e+00)
  %i.nk = fadd fast <2 x float> %i.mw, %i.nj
  %i.nl = fmul fast <2 x float> %i.my, splat (float 4.000000e+00)
  %i.nm = fadd fast <2 x float> %i.nl, %i.nk
  store <2 x float> %i.nm, ptr %i.ni, align 8, !tbaa !39
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv219.i
  %i.no = fmul fast <2 x float> %i.mm, splat (float 1.600000e+01)
  %i.np = fadd fast <2 x float> %i.mj, %i.no
  %i.nq = fmul fast <2 x float> %i.mp, splat (float 2.000000e+00)
  %i.nr = fadd fast <2 x float> %i.nq, %i.np
  store <2 x float> %i.nr, ptr %i.nn, align 8, !tbaa !39
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv219.i
  %i.nt = load <2 x float>, ptr %.0714151.us.i, align 4, !tbaa !39
  %i.nu = fmul fast <2 x float> %i.mx, splat (float 3.200000e+01)
  %i.nv = fadd fast <2 x float> %i.mw, %i.nu
  %i.nw = fadd fast <2 x float> %i.my, %i.nv
  %i.nx = fadd fast <2 x float> %i.nw, %i.nt
  store <2 x float> %i.nx, ptr %i.ns, align 8, !tbaa !39
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %.0721144.us.i, i64 %i.li
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %.0720145.us.i, i64 %i.li
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %.0719146.us.i, i64 %i.li
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %.0718147.us.i, i64 %i.li
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %.0717148.us.i, i64 %i.li
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %.0716149.us.i, i64 %i.li
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %.0715150.us.i, i64 %i.li
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %.0714151.us.i, i64 %i.li
  %indvars.iv.next220.i = add nuw nsw i64 %indvars.iv219.i, 1 ; 2 uses
  %exitcond222.not.i = icmp eq i64 %indvars.iv.next220.i, 8
  br i1 %exitcond222.not.i, label %_ZN4ncnn3MatD2Ev.exit740.us.i, label %bb.aj, !llvm.loop !949

_ZN4ncnn3MatD2Ev.exit740.us.i:                    ; preds = %bb.aj
  %i.og = trunc i64 %indvars.iv227.i to i32
  %i.oh = add i32 %.044131, %i.og                 ; 2 uses
  %i.oi = sdiv i32 %i.oh, %i.cs
  %i.oj = srem i32 %i.oh, %i.cs
  %i.ok = mul nsw i32 %i.oi, 6
  %i.ol = sext i32 %i.ok to i64                   ; 2 uses
  %.reass157.us.i = mul i64 %factor.op.mul156.us.i, %i.ol
  %i.om = getelementptr inbounds nuw i8, ptr %i.lx, i64 %.reass157.us.i
  %i.on = mul nsw i32 %i.oj, 6                    ; 6 uses
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds [4 x i8], ptr %i.om, i64 %i.oo
  %i.oq = or disjoint i32 %i.on, 1
  %i.or = icmp slt i32 %i.oq, %i.cl
  %i.os = add nsw i32 %i.on, 2
  %i.ot = icmp slt i32 %i.os, %i.cl
  %i.ou = add nsw i32 %i.on, 3
  %i.ov = icmp slt i32 %i.ou, %i.cl
  %i.ow = add nsw i32 %i.on, 4
  %i.ox = icmp slt i32 %i.ow, %i.cl
  %i.oy = add nsw i32 %i.on, 5
  %i.oz = icmp slt i32 %i.oy, %i.cl
  %invariant.op260.i = sub nsw i64 %i.lp, %i.ol
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aw, %_ZN4ncnn3MatD2Ev.exit740.us.i
  %indvars.iv223.i = phi i64 [ %indvars.iv.next224.i, %bb.aw ], [ 0, %_ZN4ncnn3MatD2Ev.exit740.us.i ] ; 3 uses
  %.0701153.us.i = phi ptr [ %.1702.us.i, %bb.aw ], [ %i.op, %_ZN4ncnn3MatD2Ev.exit740.us.i ] ; 9 uses
  %.not736.us.i = icmp slt i64 %indvars.iv223.i, %invariant.op260.i
  br i1 %.not736.us.i, label %bb.al, label %bb.aw

bb.al:                                            ; preds = %bb.ak
  %i.pa = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %indvars.iv223.i ; 9 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 24
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pa, i64 32
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pa, i64 40
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pa, i64 48
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pa, i64 56
  %i.pi = load float, ptr %i.ph, align 8, !tbaa !39
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pa, i64 60
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !39
  %i.pl = load <2 x float>, ptr %i.pb, align 8, !tbaa !39 ; 2 uses
  %i.pm = load <2 x float>, ptr %i.pc, align 16, !tbaa !39 ; 2 uses
  %i.pn = load <2 x float>, ptr %i.pd, align 8, !tbaa !39 ; 2 uses
  %i.po = load <2 x float>, ptr %i.pe, align 16, !tbaa !39 ; 2 uses
  %i.pp = load <2 x float>, ptr %i.pf, align 8, !tbaa !39 ; 2 uses
  %i.pq = load <2 x float>, ptr %i.pg, align 16, !tbaa !39 ; 2 uses
  %i.pr = fsub fast <2 x float> %i.pl, %i.pm
  %i.ps = fsub fast <2 x float> %i.pn, %i.po      ; 3 uses
  %i.pt = fsub fast <2 x float> %i.pp, %i.pq      ; 4 uses
  %i.pu = load <2 x float>, ptr %i.pa, align 16, !tbaa !39
  %i.pv = fadd fast <2 x float> %i.po, %i.pn      ; 2 uses
  %i.pw = fadd fast <2 x float> %i.pq, %i.pp      ; 2 uses
  %i.px = fmul fast <2 x float> %i.pw, splat (float 3.200000e+01)
  %i.py = fadd fast <2 x float> %i.pl, %i.lt
  %i.pz = fadd fast <2 x float> %i.py, %i.pm      ; 3 uses
  %i.qa = fadd fast <2 x float> %i.pz, %i.pu
  %i.qb = fadd fast <2 x float> %i.qa, %i.pv
  %i.qc = fadd fast <2 x float> %i.qb, %i.px      ; 2 uses
  %i.qd = fadd fast <2 x float> %i.pr, %i.lt      ; 4 uses
  %i.qe = shufflevector <2 x float> %i.pv, <2 x float> %i.pw, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  %i.qf = fmul fast <4 x float> %i.qe, <float 4.000000e+00, float 8.000000e+00, float 4.000000e+00, float 8.000000e+00> ; 3 uses
  %i.qg = shufflevector <2 x float> %i.ps, <2 x float> %i.pt, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.qh = fmul fast <4 x float> %i.qg, <float 8.000000e+00, float 4.000000e+00, float 8.000000e+00, float 4.000000e+00> ; 2 uses
  %i.qi = shufflevector <2 x float> %i.pz, <2 x float> %i.qd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.qj = shufflevector <4 x float> %i.qf, <4 x float> %i.qh, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.qk = fadd fast <4 x float> %i.qi, %i.qj      ; 3 uses
  %shift = shufflevector <4 x float> %i.qf, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd fast <4 x float> %shift, %i.qk
  %i.ql = extractelement <4 x float> %foldExtExtBinop, i64 0
  %shift144 = shufflevector <4 x float> %i.qf, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop145 = fadd fast <4 x float> %shift144, %i.qk
  %i.qm = extractelement <4 x float> %foldExtExtBinop145, i64 1
  %i.qn = fmul fast <4 x float> %i.qe, <float 1.600000e+01, float 2.000000e+00, float 1.600000e+01, float 2.000000e+00> ; 3 uses
  %i.qo = shufflevector <2 x float> %i.pz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qp = shufflevector <4 x float> %i.qh, <4 x float> %i.qo, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.qq = shufflevector <4 x float> %i.qk, <4 x float> %i.qn, <4 x i32> <i32 2, i32 3, i32 4, i32 6>
  %i.qr = fadd fast <4 x float> %i.qp, %i.qq      ; 4 uses
  %shift147 = shufflevector <4 x float> %i.qr, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop148 = fadd fast <4 x float> %i.qn, %shift147
  %i.qs = extractelement <4 x float> %foldExtExtBinop148, i64 1
  %foldExtExtBinop150 = fadd fast <4 x float> %i.qn, %i.qr
  %i.qt = extractelement <4 x float> %foldExtExtBinop150, i64 3
  %i.qu = fmul fast <2 x float> %i.ps, splat (float 3.200000e+01) ; 2 uses
  %foldExtExtBinop152 = fadd fast <2 x float> %i.qd, %i.qu
  %foldExtExtBinop154 = fadd fast <2 x float> %i.pt, %foldExtExtBinop152
  %i.qv = extractelement <2 x float> %foldExtExtBinop154, i64 0
  %i.qw = fadd fast float %i.qv, %i.pi
  %foldExtExtBinop156 = fadd fast <2 x float> %i.qd, %i.qu
  %foldExtExtBinop158 = fadd fast <2 x float> %i.pt, %foldExtExtBinop156
  %i.qx = extractelement <2 x float> %foldExtExtBinop158, i64 1
  %i.qy = fadd fast float %i.qx, %i.pk
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %.0701153.us.i, i64 %i.cq ; 6 uses
  %i.ra = extractelement <2 x float> %i.qc, i64 0
  store float %i.ra, ptr %.0701153.us.i, align 4, !tbaa !39
  %i.rb = extractelement <2 x float> %i.qc, i64 1
  store float %i.rb, ptr %i.qz, align 4, !tbaa !39
  br i1 %i.or, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.rc = fmul fast <2 x float> %i.pt, splat (float 1.600000e+01)
  %i.rd = fmul fast <2 x float> %i.ps, splat (float 2.000000e+00)
  %i.re = fadd fast <2 x float> %i.qd, %i.rc
  %i.rf = fadd fast <2 x float> %i.re, %i.rd      ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %.0701153.us.i, i64 4
  %i.rh = extractelement <2 x float> %i.rf, i64 0
  store float %i.rh, ptr %i.rg, align 4, !tbaa !39
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qz, i64 4
  %i.rj = extractelement <2 x float> %i.rf, i64 1
  store float %i.rj, ptr %i.ri, align 4, !tbaa !39
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  br i1 %i.ot, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.rk = getelementptr inbounds nuw i8, ptr %.0701153.us.i, i64 8
  store float %i.ql, ptr %i.rk, align 4, !tbaa !39
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  store float %i.qm, ptr %i.rl, align 4, !tbaa !39
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  br i1 %i.ov, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.rm = getelementptr inbounds nuw i8, ptr %.0701153.us.i, i64 12
  %i.rn = extractelement <4 x float> %i.qr, i64 0
  store float %i.rn, ptr %i.rm, align 4, !tbaa !39
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qz, i64 12
  %i.rp = extractelement <4 x float> %i.qr, i64 1
  store float %i.rp, ptr %i.ro, align 4, !tbaa !39
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  br i1 %i.ox, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.rq = getelementptr inbounds nuw i8, ptr %.0701153.us.i, i64 16
  store float %i.qs, ptr %i.rq, align 4, !tbaa !39
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  store float %i.qt, ptr %i.rr, align 4, !tbaa !39
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  br i1 %i.oz, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.rs = getelementptr inbounds nuw i8, ptr %.0701153.us.i, i64 20
  store float %i.qw, ptr %i.rs, align 4, !tbaa !39
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qz, i64 20
  store float %i.qy, ptr %i.rt, align 4, !tbaa !39
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ru = getelementptr inbounds [4 x i8], ptr %.0701153.us.i, i64 %i.lj
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ak
  %.1702.us.i = phi ptr [ %.0701153.us.i, %bb.ak ], [ %i.ru, %bb.av ]
  %indvars.iv.next224.i = add nuw nsw i64 %indvars.iv223.i, 1 ; 2 uses
  %exitcond226.not.i = icmp eq i64 %indvars.iv.next224.i, 6
  br i1 %exitcond226.not.i, label %bb.ax, label %bb.ak, !llvm.loop !950

bb.ax:                                            ; preds = %bb.aw
  %indvars.iv.next228.i = add nuw nsw i64 %indvars.iv227.i, 1 ; 2 uses
  %exitcond231.not.i = icmp eq i64 %indvars.iv.next228.i, %wide.trip.count230.i
  br i1 %exitcond231.not.i, label %._crit_edge.us164.i, label %bb.ai, !llvm.loop !951

._crit_edge.us164.i:                              ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 2 ; 3 uses
  %i.rv = icmp slt i64 %indvars.iv.next233.i, %invariant.op261.i.a
  br i1 %i.rv, label %bb.ag, label %.preheader.loopexit.i, !llvm.loop !952

.lr.ph160.split.i:                                ; preds = %.lr.ph160.i
  %17 = sub i32 %16, %.0703.lcssa.i
  %18 = and i32 %17, -2
  %19 = add i32 %.0703.lcssa.i, 2
  %i.rw = add i32 %19, %18
  br label %.preheader.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.us164.i
  %i.rx = trunc nsw i64 %indvars.iv.next233.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph160.split.i, %.preheader124.i
  %.1704.lcssa.i = phi i32 [ %.0703.lcssa.i, %.preheader124.i ], [ %i.rw, %.lr.ph160.split.i ], [ %i.rx, %.preheader.loopexit.i ] ; 2 uses
  %i.ry = icmp slt i32 %.1704.lcssa.i, %.sroa.speculated121
  br i1 %i.ry, label %.lr.ph188.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_output_tileERKNS_3MatERS0_S2_iiii.exit

.lr.ph188.i:                                      ; preds = %.preheader.i
  %.not.i80 = icmp eq ptr %.val78, null
  %i.rz = icmp sgt i32 %.sroa.speculated117, 0
  %i.sa = sext i32 %.sroa.speculated117 to i64
  %i.sb = shl nsw i32 %.sroa.speculated117, 1
  %i.sc = sext i32 %i.sb to i64
  %i.sd = mul nsw i32 %.sroa.speculated117, 3
  %i.se = sext i32 %i.sd to i64
  %i.sf = shl nsw i32 %.sroa.speculated117, 2
  %i.sg = sext i32 %i.sf to i64
  %i.sh = mul nsw i32 %.sroa.speculated117, 5
  %i.si = sext i32 %i.sh to i64
  %i.sj = mul nsw i32 %.sroa.speculated117, 6
  %i.sk = sext i32 %i.sj to i64
  %i.sl = mul nsw i32 %.sroa.speculated117, 7
  %i.sm = sext i32 %i.sl to i64
  %i.sn = shl nsw i32 %.sroa.speculated117, 3
  %i.so = sext i32 %i.sn to i64                   ; 8 uses
  %i.sp = sext i32 %i.cl to i64
  br i1 %i.rz, label %.lr.ph188.split.us.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_output_tileERKNS_3MatERS0_S2_iiii.exit

.lr.ph188.split.us.i:                             ; preds = %.lr.ph188.i
  %i.sq = load i32, ptr %i.aq, align 4, !tbaa !75, !noalias !953
  %i.sr = load ptr, ptr %12, align 8, !tbaa !18, !noalias !953
  %i.ss = load i64, ptr %i.at, align 8, !tbaa !20, !noalias !953
  %i.st = load i64, ptr %i.az, align 8, !tbaa !65, !noalias !953 ; 2 uses
  %factor.op.mul193.i = mul i64 %i.st, %i.ss
  %i.su = sext i32 %i.sq to i64
  %factor.op.mul184.us.i = mul i64 %i.st, %i.su
  %i.sv = sext i32 %i.cm to i64
  %i.sw = sext i32 %.1704.lcssa.i to i64
  %wide.trip.count246.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.us191.i, %.lr.ph188.split.us.i
  %indvars.iv248.i = phi i64 [ %indvars.iv.next249.i, %._crit_edge.us191.i ], [ %i.sw, %.lr.ph188.split.us.i ] ; 3 uses
  %.pre253.i = add nsw i64 %indvars.iv248.i, %i.ca ; 2 uses
  br i1 %.not.i80, label %.lr.ph.us190.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.sx = getelementptr inbounds [4 x i8], ptr %.val78, i64 %.pre253.i
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !39
  br label %.lr.ph.us190.i

.lr.ph.us190.i:                                   ; preds = %bb.az, %bb.ay
  %i.sz = phi fast float [ %i.sy, %bb.az ], [ 0.000000e+00, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.ta = trunc nsw i64 %indvars.iv248.i to i32
  %factor.op.mul181.reass.us.i = mul i32 %factor.op.mul137.i, %i.ta
  %i.tb = sext i32 %factor.op.mul181.reass.us.i to i64
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.tb
  %.reass194.i = mul i64 %factor.op.mul193.i, %.pre253.i
  %i.td = getelementptr inbounds nuw i8, ptr %i.sr, i64 %.reass194.i
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bp, %.lr.ph.us190.i
  %indvars.iv243.i = phi i64 [ 0, %.lr.ph.us190.i ], [ %indvars.iv.next244.i, %bb.bp ] ; 3 uses
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %indvars.iv243.i ; 8 uses
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.sa
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.sc
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.se
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.sg
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.si
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.sk
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.sm
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %bb.ba
  %indvars.iv235.i = phi i64 [ %indvars.iv.next236.i, %bb.bb ], [ 0, %bb.ba ] ; 7 uses
  %.0691177.us.i = phi ptr [ %i.vp, %bb.bb ], [ %i.tl, %bb.ba ] ; 2 uses
  %.0692176.us.i = phi ptr [ %i.vo, %bb.bb ], [ %i.tk, %bb.ba ] ; 2 uses
  %.0693175.us.i = phi ptr [ %i.vn, %bb.bb ], [ %i.tj, %bb.ba ] ; 2 uses
  %.0694174.us.i = phi ptr [ %i.vm, %bb.bb ], [ %i.ti, %bb.ba ] ; 2 uses
  %.0695173.us.i = phi ptr [ %i.vl, %bb.bb ], [ %i.th, %bb.ba ] ; 2 uses
  %.0696172.us.i = phi ptr [ %i.vk, %bb.bb ], [ %i.tg, %bb.ba ] ; 2 uses
  %.0697171.us.i = phi ptr [ %i.vj, %bb.bb ], [ %i.tf, %bb.ba ] ; 2 uses
  %.0698170.us.i = phi ptr [ %i.vi, %bb.bb ], [ %i.te, %bb.ba ] ; 2 uses
  %i.tm = load float, ptr %.0697171.us.i, align 4, !tbaa !39 ; 2 uses
  %i.tn = load float, ptr %.0696172.us.i, align 4, !tbaa !39 ; 2 uses
  %i.to = load float, ptr %.0695173.us.i, align 4, !tbaa !39 ; 2 uses
  %i.tp = load float, ptr %.0694174.us.i, align 4, !tbaa !39 ; 2 uses
  %i.tq = load float, ptr %.0693175.us.i, align 4, !tbaa !39 ; 2 uses
  %i.tr = load float, ptr %.0692176.us.i, align 4, !tbaa !39 ; 2 uses
  %i.ts = fadd fast float %i.tr, %i.tq            ; 3 uses
  %i.tt = fsub fast float %i.tq, %i.tr            ; 3 uses
  %i.tu = load float, ptr %.0698170.us.i, align 4, !tbaa !39
  %i.tv = fmul fast float %i.ts, 3.200000e+01
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv235.i
  %i.tx = fmul fast float %i.tt, 1.600000e+01
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv235.i
  %i.tz = fmul fast float %i.ts, 8.000000e+00
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv235.i
  %i.ub = fmul fast float %i.tt, 4.000000e+00
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv235.i
  %i.ud = fsub fast float %i.tm, %i.tn            ; 3 uses
  %i.ue = fadd fast float %i.tp, %i.to            ; 2 uses
  %i.uf = fsub fast float %i.to, %i.tp            ; 2 uses
  %i.ug = fadd fast float %i.tn, %i.tm            ; 2 uses
  %i.uh = fadd fast float %i.ud, %i.tx
  %i.ui = fadd fast float %i.ue, %i.ug
  %i.uj = fadd fast float %i.ui, %i.tu
  %i.uk = fadd fast float %i.uj, %i.tv
  store float %i.uk, ptr %i.tw, align 4, !tbaa !39
  %i.ul = insertelement <4 x float> poison, float %i.uf, i64 0
  %i.um = insertelement <4 x float> %i.ul, float %i.ue, i64 1
  %i.un = shufflevector <4 x float> %i.um, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.uo = fmul fast <4 x float> %i.un, <float 2.000000e+00, float 4.000000e+00, float 8.000000e+00, float 1.600000e+01>
  %i.up = insertelement <4 x float> poison, float %i.uh, i64 0
  %i.uq = insertelement <4 x float> %i.up, float %i.ug, i64 1
  %i.ur = insertelement <4 x float> %i.uq, float %i.ud, i64 2
  %i.us = shufflevector <4 x float> %i.ur, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ut = fadd fast <4 x float> %i.us, %i.uo      ; 4 uses
  %i.uu = extractelement <4 x float> %i.ut, i64 0
  store float %i.uu, ptr %i.ty, align 4, !tbaa !39
  %i.uv = extractelement <4 x float> %i.ut, i64 1
  %i.uw = fadd fast float %i.tz, %i.uv
  store float %i.uw, ptr %i.ua, align 4, !tbaa !39
  %i.ux = extractelement <4 x float> %i.ut, i64 2
  %i.uy = fadd fast float %i.ub, %i.ux
  store float %i.uy, ptr %i.uc, align 4, !tbaa !39
  %factor115.us.i = fmul fast float %i.ts, 2.000000e+00
  %i.uz = extractelement <4 x float> %i.ut, i64 3
  %i.va = fadd fast float %factor115.us.i, %i.uz
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv235.i
  store float %i.va, ptr %i.vb, align 4, !tbaa !39
  %i.vc = load float, ptr %.0691177.us.i, align 4, !tbaa !39
  %i.vd = fmul fast float %i.uf, 3.200000e+01
  %i.ve = fadd fast float %i.ud, %i.vd
  %i.vf = fadd fast float %i.ve, %i.tt
  %i.vg = fadd fast float %i.vf, %i.vc
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv235.i
  store float %i.vg, ptr %i.vh, align 4, !tbaa !39
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %.0698170.us.i, i64 %i.so
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %.0697171.us.i, i64 %i.so
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %.0696172.us.i, i64 %i.so
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %.0695173.us.i, i64 %i.so
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %.0694174.us.i, i64 %i.so
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %.0693175.us.i, i64 %i.so
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %.0692176.us.i, i64 %i.so
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %.0691177.us.i, i64 %i.so
  %indvars.iv.next236.i = add nuw nsw i64 %indvars.iv235.i, 1 ; 2 uses
  %exitcond238.not.i = icmp eq i64 %indvars.iv.next236.i, 8
  br i1 %exitcond238.not.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, label %bb.bb, !llvm.loop !956

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %bb.bb
  %i.vq = trunc i64 %indvars.iv243.i to i32
  %i.vr = add i32 %.044131, %i.vq                 ; 2 uses
  %i.vs = sdiv i32 %i.vr, %i.cs
  %i.vt = srem i32 %i.vr, %i.cs
  %i.vu = mul nsw i32 %i.vs, 6
  %i.vv = sext i32 %i.vu to i64                   ; 2 uses
  %.reass185.us.i = mul i64 %factor.op.mul184.us.i, %i.vv
  %i.vw = getelementptr inbounds nuw i8, ptr %i.td, i64 %.reass185.us.i
  %i.vx = mul nsw i32 %i.vt, 6                    ; 6 uses
  %i.vy = sext i32 %i.vx to i64
  %i.vz = getelementptr inbounds [4 x i8], ptr %i.vw, i64 %i.vy
  %i.wa = or disjoint i32 %i.vx, 1
  %i.wb = icmp slt i32 %i.wa, %i.cl
  %i.wc = add nsw i32 %i.vx, 2
  %i.wd = icmp slt i32 %i.wc, %i.cl
  %i.we = add nsw i32 %i.vx, 3
  %i.wf = icmp slt i32 %i.we, %i.cl
  %i.wg = add nsw i32 %i.vx, 4
  %i.wh = icmp slt i32 %i.wg, %i.cl
  %i.wi = add nsw i32 %i.vx, 5
  %i.wj = icmp slt i32 %i.wi, %i.cl
  %invariant.op262.i = sub nsw i64 %i.sv, %i.vv
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bo, %_ZN4ncnn3MatD2Ev.exit.us.i
  %indvars.iv239.i = phi i64 [ %indvars.iv.next240.i, %bb.bo ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us.i ] ; 3 uses
  %.0689179.us.i = phi ptr [ %.1.us.i, %bb.bo ], [ %i.vz, %_ZN4ncnn3MatD2Ev.exit.us.i ] ; 8 uses
  %.not734.us.i = icmp slt i64 %indvars.iv239.i, %invariant.op262.i
  br i1 %.not734.us.i, label %bb.bd, label %bb.bo

bb.bd:                                            ; preds = %bb.bc
  %i.wk = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv239.i ; 8 uses
  %i.wl = load float, ptr %i.wk, align 16, !tbaa !39
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wk, i64 4
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !39 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wk, i64 8
  %i.wp = load float, ptr %i.wo, align 8, !tbaa !39 ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wk, i64 12
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wk, i64 20
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wk, i64 24
  %i.wu = load float, ptr %i.wt, align 8, !tbaa !39 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wk, i64 28
  %i.ww = load float, ptr %i.wv, align 4, !tbaa !39
end_hunk_14
begin_hunk_15_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined:bb.a
bb.q:                                             ; preds = %bb.n
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.l, %_ZN4ncnn3MatD2Ev.exit33, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.dv = add nsw i32 %.067, 1
  %i.dw = load i32, ptr %i.e, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.067, %i.dw
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.s:                                             ; preds = %bb.c
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #27
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.10(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x [6 x [4 x i32]]], align 16   ; 27 uses
  %i.b = alloca [4 x [6 x [2 x i32]]], align 16   ; 51 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.g = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.bk

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 0, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 %i.i, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 1, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 0, ptr %i.f, align 4, !tbaa !67
  %i.j = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.f, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %i.e, i32 1, i32 1)
  %i.k = load i32, ptr %i.d, align 4, !tbaa !67
  %i.l = call i32 @llvm.smin.i32(i32 %i.k, i32 %i.i) ; 2 uses
  store i32 %i.l, ptr %i.d, align 4, !tbaa !67
  %i.m = load i32, ptr %i.c, align 4, !tbaa !67   ; 2 uses
  %.not135 = icmp sgt i32 %i.m, %i.l
  br i1 %.not135, label %._crit_edge139, label %.lr.ph138

.lr.ph138:                                        ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph138, %_ZN4ncnn3MatD2Ev.exit
  %.045136 = phi i32 [ %i.m, %.lr.ph138 ], [ %i.eg, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.dm = load i32, ptr %3, align 4, !tbaa !67
  %i.dn = mul nsw i32 %i.dm, %.045136             ; 4 uses
  %i.do = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit76 unwind label %bb.bl

_ZN4ncnn3Mat7channelEi.exit76:                    ; preds = %bb.c
  %i.dp = load ptr, ptr %4, align 8, !tbaa !18, !noalias !1269
  %i.dq = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !1269
  %i.dr = sext i32 %i.do to i64
  %i.ds = mul i64 %i.dq, %i.dr
  %i.dt = load i64, ptr %i.o, align 8, !tbaa !65, !noalias !1269
  %i.du = mul i64 %i.ds, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.du ; 4 uses
  %i.dw = load i32, ptr %5, align 4, !tbaa !67
  %i.dx = sub nsw i32 %i.dw, %i.dn
  %i.dy = load i32, ptr %3, align 4, !tbaa !67
  %.sroa.speculated118 = call i32 @llvm.smin.i32(i32 %i.dy, i32 %i.dx) ; 8 uses
  %i.dz = load i32, ptr %6, align 4, !tbaa !67    ; 2 uses
  %i.ea = icmp sgt i32 %i.dz, 0
  br i1 %i.ea, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit76
  %i.eb = icmp sgt i32 %.sroa.speculated118, 3
  %i.ec = and i32 %.sroa.speculated118, 2147483644
  %i.ed = zext nneg i32 %.sroa.speculated118 to i64
  %15 = add i32 %.sroa.speculated118, -2
  %i.ee = sext i32 %.sroa.speculated118 to i64    ; 2 uses
  %i.ef = sext i32 %i.dn to i64                   ; 2 uses
  %invariant.op.i = add nsw i64 %i.ee, -1
  %.pre = load i32, ptr %7, align 4, !tbaa !67
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, %_ZN4ncnn3Mat7channelEi.exit76
  %i.eg = add nsw i32 %.045136, 1
  %i.eh = load i32, ptr %i.d, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.045136, %i.eh
  br i1 %.not.not, label %bb.c, label %._crit_edge139

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit
  %i.ei = phi i32 [ %.pre, %.lr.ph ], [ %i.asx, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %i.ej = phi i32 [ %i.dz, %.lr.ph ], [ %i.asz, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %.044134 = phi i32 [ 0, %.lr.ph ], [ %i.asy, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ] ; 6 uses
  %i.ek = sub nsw i32 %i.ej, %.044134
  %.sroa.speculated114 = call i32 @llvm.smin.i32(i32 %i.ei, i32 %i.ek) ; 26 uses
  %i.el = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %bb.d
  %.pre140 = load i32, ptr %9, align 4, !tbaa !67
  br label %.noexc

._crit_edge:                                      ; preds = %.noexc, %bb.d
  %i.en = load i32, ptr %i.ap, align 4, !tbaa !75 ; 13 uses
  %i.eo = load i32, ptr %i.aq, align 8, !tbaa !76 ; 6 uses
  %i.ep = load i32, ptr %i.ar, align 8, !tbaa !66 ; 5 uses
  %i.eq = load i64, ptr %i.as, align 8, !tbaa !20
  %i.er = sext i32 %i.ep to i64
  %i.es = mul i64 %i.eq, %i.er                    ; 4 uses
  %i.et = add nsw i32 %i.en, 3
  %i.eu = sdiv i32 %i.et, 4                       ; 6 uses
  %factor.op.mul796.i = mul i32 %.sroa.speculated114, 36 ; 3 uses
  br i1 %i.eb, label %.lr.ph799.i, label %.preheader775.i

.lr.ph799.i:                                      ; preds = %._crit_edge
  %i.ev = icmp sgt i32 %.sroa.speculated114, 0
  %i.ew = shl nsw i32 %.sroa.speculated114, 2
  %i.ex = sext i32 %i.ew to i64
  %i.ey = shl nsw i32 %.sroa.speculated114, 3
  %i.ez = sext i32 %i.ey to i64
  %i.fa = mul nsw i32 %.sroa.speculated114, 12
  %i.fb = sext i32 %i.fa to i64
  %i.fc = shl nsw i32 %.sroa.speculated114, 4
  %i.fd = sext i32 %i.fc to i64
  %i.fe = mul nsw i32 %.sroa.speculated114, 20
  %i.ff = sext i32 %i.fe to i64
  %i.fg = mul nsw i32 %.sroa.speculated114, 24
  %i.fh = sext i32 %i.fg to i64                   ; 30 uses
  %.idx.i = shl i64 %i.es, 3
  %.idx705.i = mul i64 %i.es, 12
  %i.fi = mul nsw i32 %i.ep, %i.en
  %i.fj = sext i32 %i.fi to i64
  br i1 %i.ev, label %.lr.ph.us.preheader.i, label %.preheader775.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph799.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated114 to i64
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv999.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next1000.i, %._crit_edge.us.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.fk = trunc nuw nsw i64 %indvars.iv999.i to i32 ; 2 uses
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul796.i, %i.fk
  %i.fl = sext i32 %factor.op.mul.reass.us.i to i64
  %i.fm = add i32 %i.dn, %i.fk
  %i.fn = sdiv i32 %i.fm, %i.ep
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.fl
  br label %.preheader776.us.i

.preheader776.us.i:                               ; preds = %bb.u, %.lr.ph.us.i
  %indvars.iv995.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next996.i, %bb.u ] ; 3 uses
  %.idx1039.i = shl nuw nsw i64 %indvars.iv995.i, 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.idx1039.i ; 7 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.ex ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.ez ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fb ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fd ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.ff ; 2 uses
  %i.fw = load <4 x i32>, ptr %i.fq, align 16, !tbaa !254
  %i.fx = load <4 x i32>, ptr %i.fr, align 16, !tbaa !254 ; 2 uses
  %i.fy = load <4 x i32>, ptr %i.fs, align 16, !tbaa !254 ; 2 uses
  %i.fz = load <4 x i32>, ptr %i.ft, align 16, !tbaa !254 ; 2 uses
  %i.ga = load <4 x i32>, ptr %i.fu, align 16, !tbaa !254 ; 2 uses
  %i.gb = load <4 x i32>, ptr %i.fv, align 16, !tbaa !254
  %i.gc = add <4 x i32> %i.fy, %i.fx              ; 2 uses
  %i.gd = add <4 x i32> %i.ga, %i.fz              ; 2 uses
  %i.ge = sub <4 x i32> %i.fx, %i.fy              ; 2 uses
  %i.gf = sub <4 x i32> %i.fz, %i.ga              ; 2 uses
  %i.gg = add <4 x i32> %i.gc, %i.fw
  %i.gh = add <4 x i32> %i.gg, %i.gd
  %i.gi = shl <4 x i32> %i.gf, splat (i32 1)
  %i.gj = add <4 x i32> %i.gi, %i.ge
  %i.gk = shl <4 x i32> %i.gd, splat (i32 2)
  %i.gl = add <4 x i32> %i.gk, %i.gc
  %i.gm = shl <4 x i32> %i.gf, splat (i32 3)
  %i.gn = add <4 x i32> %i.gm, %i.ge
  %i.go = shl <4 x i32> %i.gb, splat (i32 2)
  %i.gp = add <4 x i32> %i.gn, %i.go
  store <4 x i32> %i.gh, ptr %i.a, align 16, !tbaa !254
  store <4 x i32> %i.gj, ptr %i.at, align 16, !tbaa !254
  store <4 x i32> %i.gl, ptr %i.au, align 16, !tbaa !254
  store <4 x i32> %i.gp, ptr %i.av, align 16, !tbaa !254
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fh ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fh ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fh ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.fh ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.fh ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.fh ; 2 uses
  %i.gw = load <4 x i32>, ptr %i.gq, align 16, !tbaa !254
  %i.gx = load <4 x i32>, ptr %i.gr, align 16, !tbaa !254 ; 2 uses
  %i.gy = load <4 x i32>, ptr %i.gs, align 16, !tbaa !254 ; 2 uses
  %i.gz = load <4 x i32>, ptr %i.gt, align 16, !tbaa !254 ; 2 uses
  %i.ha = load <4 x i32>, ptr %i.gu, align 16, !tbaa !254 ; 2 uses
  %i.hb = load <4 x i32>, ptr %i.gv, align 16, !tbaa !254
  %i.hc = add <4 x i32> %i.gy, %i.gx              ; 2 uses
  %i.hd = add <4 x i32> %i.ha, %i.gz              ; 2 uses
  %i.he = sub <4 x i32> %i.gx, %i.gy              ; 2 uses
  %i.hf = sub <4 x i32> %i.gz, %i.ha              ; 2 uses
  %i.hg = add <4 x i32> %i.hc, %i.gw
  %i.hh = add <4 x i32> %i.hg, %i.hd
  %i.hi = shl <4 x i32> %i.hf, splat (i32 1)
  %i.hj = add <4 x i32> %i.hi, %i.he
  %i.hk = shl <4 x i32> %i.hd, splat (i32 2)
  %i.hl = add <4 x i32> %i.hk, %i.hc
  %i.hm = shl <4 x i32> %i.hf, splat (i32 3)
  %i.hn = add <4 x i32> %i.hm, %i.he
  %i.ho = shl <4 x i32> %i.hb, splat (i32 2)
  %i.hp = add <4 x i32> %i.hn, %i.ho
  store <4 x i32> %i.hh, ptr %i.bb, align 16, !tbaa !254
  store <4 x i32> %i.hj, ptr %i.bc, align 16, !tbaa !254
  store <4 x i32> %i.hl, ptr %i.bd, align 16, !tbaa !254
  store <4 x i32> %i.hp, ptr %i.be, align 16, !tbaa !254
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.fh ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.fh ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.fh ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.fh ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.fh ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.fh ; 2 uses
  %i.hw = load <4 x i32>, ptr %i.hq, align 16, !tbaa !254
  %i.hx = load <4 x i32>, ptr %i.hr, align 16, !tbaa !254 ; 2 uses
  %i.hy = load <4 x i32>, ptr %i.hs, align 16, !tbaa !254 ; 2 uses
  %i.hz = load <4 x i32>, ptr %i.ht, align 16, !tbaa !254 ; 2 uses
  %i.ia = load <4 x i32>, ptr %i.hu, align 16, !tbaa !254 ; 2 uses
  %i.ib = load <4 x i32>, ptr %i.hv, align 16, !tbaa !254
  %i.ic = add <4 x i32> %i.hy, %i.hx              ; 2 uses
  %i.id = add <4 x i32> %i.ia, %i.hz              ; 2 uses
  %i.ie = sub <4 x i32> %i.hx, %i.hy              ; 2 uses
  %i.if = sub <4 x i32> %i.hz, %i.ia              ; 2 uses
  %i.ig = add <4 x i32> %i.ic, %i.hw
  %i.ih = add <4 x i32> %i.ig, %i.id
  %i.ii = shl <4 x i32> %i.if, splat (i32 1)
  %i.ij = add <4 x i32> %i.ii, %i.ie
  %i.ik = shl <4 x i32> %i.id, splat (i32 2)
  %i.il = add <4 x i32> %i.ik, %i.ic
  %i.im = shl <4 x i32> %i.if, splat (i32 3)
  %i.in = add <4 x i32> %i.im, %i.ie
  %i.io = shl <4 x i32> %i.ib, splat (i32 2)
  %i.ip = add <4 x i32> %i.in, %i.io
  store <4 x i32> %i.ih, ptr %i.bf, align 16, !tbaa !254
  store <4 x i32> %i.ij, ptr %i.bg, align 16, !tbaa !254
  store <4 x i32> %i.il, ptr %i.bh, align 16, !tbaa !254
  store <4 x i32> %i.ip, ptr %i.bi, align 16, !tbaa !254
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.fh ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.fh ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.fh ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.fh ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.fh ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.fh ; 2 uses
  %i.iw = load <4 x i32>, ptr %i.iq, align 16, !tbaa !254
  %i.ix = load <4 x i32>, ptr %i.ir, align 16, !tbaa !254 ; 2 uses
  %i.iy = load <4 x i32>, ptr %i.is, align 16, !tbaa !254 ; 2 uses
  %i.iz = load <4 x i32>, ptr %i.it, align 16, !tbaa !254 ; 2 uses
  %i.ja = load <4 x i32>, ptr %i.iu, align 16, !tbaa !254 ; 2 uses
  %i.jb = load <4 x i32>, ptr %i.iv, align 16, !tbaa !254
  %i.jc = add <4 x i32> %i.iy, %i.ix              ; 2 uses
  %i.jd = add <4 x i32> %i.ja, %i.iz              ; 2 uses
  %i.je = sub <4 x i32> %i.ix, %i.iy              ; 2 uses
  %i.jf = sub <4 x i32> %i.iz, %i.ja              ; 2 uses
  %i.jg = add <4 x i32> %i.jc, %i.iw
  %i.jh = add <4 x i32> %i.jg, %i.jd
  %i.ji = shl <4 x i32> %i.jf, splat (i32 1)
  %i.jj = add <4 x i32> %i.ji, %i.je
  %i.jk = shl <4 x i32> %i.jd, splat (i32 2)
  %i.jl = add <4 x i32> %i.jk, %i.jc
  %i.jm = shl <4 x i32> %i.jf, splat (i32 3)
  %i.jn = add <4 x i32> %i.jm, %i.je
  %i.jo = shl <4 x i32> %i.jb, splat (i32 2)
  %i.jp = add <4 x i32> %i.jn, %i.jo
  store <4 x i32> %i.jh, ptr %i.bj, align 16, !tbaa !254
  store <4 x i32> %i.jj, ptr %i.bk, align 16, !tbaa !254
  store <4 x i32> %i.jl, ptr %i.bl, align 16, !tbaa !254
  store <4 x i32> %i.jp, ptr %i.bm, align 16, !tbaa !254
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.fh ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.fh ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.fh ; 2 uses
end_hunk_15
begin_hunk_16_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.10:bb.a
  %i.lu = shl <4 x i32> %i.lj, splat (i32 5)
  %i.lv = add <4 x i32> %i.lu, %i.lo
  %i.lw = add <4 x i32> %i.lv, %i.lt
  store <4 x i32> %i.lm, ptr %i.aw, align 16, !tbaa !254
  store <4 x i32> %i.lp, ptr %i.ax, align 16, !tbaa !254
  store <4 x i32> %i.ls, ptr %i.ay, align 16, !tbaa !254
  store <4 x i32> %i.lw, ptr %i.az, align 16, !tbaa !254
  %i.lx = load i32, ptr %i.ap, align 4, !tbaa !75, !noalias !1272
  %i.ly = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1272
  %i.lz = load i64, ptr %i.as, align 8, !tbaa !20, !noalias !1272
  %i.ma = mul i64 %i.lz, %i.fo
  %i.mb = load i64, ptr %i.ba, align 8, !tbaa !65, !noalias !1272 ; 2 uses
  %i.mc = mul i64 %i.ma, %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.mc
  %i.me = sext i32 %i.lx to i64
  %i.mf = shl nsw i32 %i.ky, 2                    ; 2 uses
  %i.mg = sext i32 %i.mf to i64
  %i.mh = mul nsw i64 %i.me, %i.mg
  %i.mi = mul i64 %i.mh, %i.mb
  %i.mj = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.mi
  %i.mk = shl nsw i32 %i.kz, 2                    ; 4 uses
  %i.ml = mul nsw i32 %i.mk, %i.ep
  %i.mm = sext i32 %i.ml to i64
  %i.mn = getelementptr inbounds [4 x i8], ptr %i.mj, i64 %i.mm
  %i.mo = or disjoint i32 %i.mk, 1
  %i.mp = icmp slt i32 %i.mo, %i.en               ; 2 uses
  %i.mq = or disjoint i32 %i.mk, 2
  %i.mr = icmp slt i32 %i.mq, %i.en               ; 2 uses
  %i.ms = or disjoint i32 %i.mk, 3
  %i.mt = icmp slt i32 %i.ms, %i.en               ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.t, %.preheader776.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.t ], [ 0, %.preheader776.us.i ] ; 3 uses
  %.0682794.us.i = phi ptr [ %.1683.us.i, %bb.t ], [ %i.mn, %.preheader776.us.i ] ; 13 uses
  %i.mu = trunc i64 %indvars.iv.i to i32
  %i.mv = or i32 %i.mf, %i.mu
  %.not704.us.i = icmp slt i32 %i.mv, %i.eo
  br i1 %.not704.us.i, label %bb.f, label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.mw = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %indvars.iv.i ; 6 uses
  %i.mx = load <4 x i32>, ptr %i.mw, align 16, !tbaa !254
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.mz = load <4 x i32>, ptr %i.my, align 16, !tbaa !254 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mw, i64 32
  %i.nb = load <4 x i32>, ptr %i.na, align 16, !tbaa !254 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mw, i64 48
  %i.nd = load <4 x i32>, ptr %i.nc, align 16, !tbaa !254 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mw, i64 64
  %i.nf = load <4 x i32>, ptr %i.ne, align 16, !tbaa !254 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mw, i64 80
  %i.nh = load <4 x i32>, ptr %i.ng, align 16, !tbaa !254
  %i.ni = add <4 x i32> %i.nb, %i.mz              ; 2 uses
  %i.nj = add <4 x i32> %i.nf, %i.nd              ; 2 uses
  %i.nk = sub <4 x i32> %i.mz, %i.nb              ; 2 uses
  %i.nl = sub <4 x i32> %i.nd, %i.nf              ; 2 uses
  %i.nm = add <4 x i32> %i.ni, %i.mx
  %i.nn = add <4 x i32> %i.nm, %i.nj
  %i.no = shl <4 x i32> %i.nl, splat (i32 1)
  %i.np = add <4 x i32> %i.no, %i.nk
  %i.nq = shl <4 x i32> %i.nj, splat (i32 2)
  %i.nr = add <4 x i32> %i.nq, %i.ni
  %i.ns = shl <4 x i32> %i.nl, splat (i32 3)
  %i.nt = add <4 x i32> %i.nh, %i.nk
  %i.nu = add <4 x i32> %i.nt, %i.ns
  %i.nv = sitofp fast <4 x i32> %i.nn to <4 x float>
  %i.nw = fmul fast <4 x float> %i.nv, splat (float f0x3AE38E39)
  %i.nx = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nw) ; 5 uses
  %i.ny = sitofp fast <4 x i32> %i.np to <4 x float>
  %i.nz = fmul fast <4 x float> %i.ny, splat (float f0x3AE38E39)
  %i.oa = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nz) ; 5 uses
  %i.ob = sitofp fast <4 x i32> %i.nr to <4 x float>
  %i.oc = fmul fast <4 x float> %i.ob, splat (float f0x3AE38E39)
  %i.od = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.oc) ; 5 uses
  %i.oe = sitofp fast <4 x i32> %i.nu to <4 x float>
  %i.of = fmul fast <4 x float> %i.oe, splat (float f0x3AE38E39)
  %i.og = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.of) ; 5 uses
  switch i32 %i.ep, label %bb.s [
    i32 4, label %bb.m
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %.0682794.us.i, i64 %i.es ; 4 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.0682794.us.i, i64 %.idx.i ; 4 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.0682794.us.i, i64 %.idx705.i ; 4 uses
  %.sroa.0748.0.vec.extract.us.i = extractelement <4 x i32> %i.nx, i64 0
  store i32 %.sroa.0748.0.vec.extract.us.i, ptr %.0682794.us.i, align 4, !tbaa !67
  %.sroa.0748.4.vec.extract.us.i = extractelement <4 x i32> %i.nx, i64 1
  store i32 %.sroa.0748.4.vec.extract.us.i, ptr %i.oh, align 4, !tbaa !67
  %.sroa.0748.8.vec.extract.us.i = extractelement <4 x i32> %i.nx, i64 2
  store i32 %.sroa.0748.8.vec.extract.us.i, ptr %i.oi, align 4, !tbaa !67
  %.sroa.0748.12.vec.extract.us.i = extractelement <4 x i32> %i.nx, i64 3
  store i32 %.sroa.0748.12.vec.extract.us.i, ptr %i.oj, align 4, !tbaa !67
  br i1 %i.mp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.7750.16.vec.extract.us.i = extractelement <4 x i32> %i.oa, i64 0
  %i.ok = getelementptr inbounds nuw i8, ptr %.0682794.us.i, i64 4
  store i32 %.sroa.7750.16.vec.extract.us.i, ptr %i.ok, align 4, !tbaa !67
  %.sroa.7750.20.vec.extract.us.i = extractelement <4 x i32> %i.oa, i64 1
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  store i32 %.sroa.7750.20.vec.extract.us.i, ptr %i.ol, align 4, !tbaa !67
  %.sroa.7750.24.vec.extract.us.i = extractelement <4 x i32> %i.oa, i64 2
  %i.om = getelementptr inbounds nuw i8, ptr %i.oi, i64 4
  store i32 %.sroa.7750.24.vec.extract.us.i, ptr %i.om, align 4, !tbaa !67
  %.sroa.7750.28.vec.extract.us.i = extractelement <4 x i32> %i.oa, i64 3
  %i.on = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  store i32 %.sroa.7750.28.vec.extract.us.i, ptr %i.on, align 4, !tbaa !67
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.mr, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.12.32.vec.extract.us.i = extractelement <4 x i32> %i.od, i64 0
  %i.oo = getelementptr inbounds nuw i8, ptr %.0682794.us.i, i64 8
  store i32 %.sroa.12.32.vec.extract.us.i, ptr %i.oo, align 4, !tbaa !67
  %.sroa.12.36.vec.extract.us.i = extractelement <4 x i32> %i.od, i64 1
  %i.op = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  store i32 %.sroa.12.36.vec.extract.us.i, ptr %i.op, align 4, !tbaa !67
  %.sroa.12.40.vec.extract.us.i = extractelement <4 x i32> %i.od, i64 2
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  store i32 %.sroa.12.40.vec.extract.us.i, ptr %i.oq, align 4, !tbaa !67
  %.sroa.12.44.vec.extract.us.i = extractelement <4 x i32> %i.od, i64 3
  %i.or = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  store i32 %.sroa.12.44.vec.extract.us.i, ptr %i.or, align 4, !tbaa !67
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %i.mt, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %.sroa.17753.48.vec.extract.us.i = extractelement <4 x i32> %i.og, i64 0
  %i.os = getelementptr inbounds nuw i8, ptr %.0682794.us.i, i64 12
  store i32 %.sroa.17753.48.vec.extract.us.i, ptr %i.os, align 4, !tbaa !67
  %.sroa.17753.52.vec.extract.us.i = extractelement <4 x i32> %i.og, i64 1
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oh, i64 12
  store i32 %.sroa.17753.52.vec.extract.us.i, ptr %i.ot, align 4, !tbaa !67
  %.sroa.17753.56.vec.extract.us.i = extractelement <4 x i32> %i.og, i64 2
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oi, i64 12
  store i32 %.sroa.17753.56.vec.extract.us.i, ptr %i.ou, align 4, !tbaa !67
  %.sroa.17753.60.vec.extract.us.i = extractelement <4 x i32> %i.og, i64 3
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oj, i64 12
  store i32 %.sroa.17753.60.vec.extract.us.i, ptr %i.ov, align 4, !tbaa !67
  br label %bb.s

bb.m:                                             ; preds = %bb.f
  store <4 x i32> %i.nx, ptr %.0682794.us.i, align 16, !tbaa !254
  br i1 %i.mp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ow = getelementptr inbounds nuw i8, ptr %.0682794.us.i, i64 16
  store <4 x i32> %i.oa, ptr %i.ow, align 16, !tbaa !254
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %i.mr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ox = getelementptr inbounds nuw i8, ptr %.0682794.us.i, i64 32
  store <4 x i32> %i.od, ptr %i.ox, align 16, !tbaa !254
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %i.mt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.oy = getelementptr inbounds nuw i8, ptr %.0682794.us.i, i64 48
  store <4 x i32> %i.og, ptr %i.oy, align 16, !tbaa !254
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.l, %bb.k, %bb.f
  %i.oz = getelementptr inbounds [4 x i8], ptr %.0682794.us.i, i64 %i.fj
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.e
  %.1683.us.i = phi ptr [ %.0682794.us.i, %bb.e ], [ %i.oz, %bb.s ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %bb.u, label %bb.e, !llvm.loop !1275

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next996.i = add nuw nsw i64 %indvars.iv995.i, 1 ; 2 uses
  %exitcond998.not.i = icmp eq i64 %indvars.iv.next996.i, %wide.trip.count.i
  br i1 %exitcond998.not.i, label %._crit_edge.us.i, label %.preheader776.us.i, !llvm.loop !1276

._crit_edge.us.i:                                 ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %indvars.iv.next1000.i = add nuw nsw i64 %indvars.iv999.i, 4 ; 3 uses
  %i.pa = or disjoint i64 %indvars.iv.next1000.i, 3
  %i.pb = icmp samesign ult i64 %i.pa, %i.ed
  br i1 %i.pb, label %.lr.ph.us.i, label %.preheader775.loopexit.i, !llvm.loop !1277

.preheader775.loopexit.i:                         ; preds = %._crit_edge.us.i
  %i.pc = trunc nuw nsw i64 %indvars.iv.next1000.i to i32
  br label %.preheader775.i

.preheader775.i:                                  ; preds = %.lr.ph799.i, %.preheader775.loopexit.i, %._crit_edge
  %.0647.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.pc, %.preheader775.loopexit.i ], [ %i.ec, %.lr.ph799.i ] ; 5 uses
  %i.pd = or disjoint i32 %.0647.lcssa.i, 1
  %i.pe = icmp slt i32 %i.pd, %.sroa.speculated118
  br i1 %i.pe, label %.lr.ph850.i, label %.preheader773.i

.lr.ph850.i:                                      ; preds = %.preheader775.i
  %i.pf = icmp sgt i32 %.sroa.speculated114, 0
  %i.pg = shl nsw i32 %.sroa.speculated114, 1
  %i.ph = sext i32 %i.pg to i64
  %i.pi = shl nsw i32 %.sroa.speculated114, 2
  %i.pj = sext i32 %i.pi to i64
  %i.pk = mul nsw i32 %.sroa.speculated114, 6
  %i.pl = sext i32 %i.pk to i64
  %i.pm = shl nsw i32 %.sroa.speculated114, 3
  %i.pn = sext i32 %i.pm to i64
  %i.po = mul nsw i32 %.sroa.speculated114, 10
  %i.pp = sext i32 %i.po to i64
  %i.pq = mul nsw i32 %.sroa.speculated114, 12
  %i.pr = sext i32 %i.pq to i64                   ; 30 uses
  %i.ps = sext i32 %i.en to i64
  br i1 %i.pf, label %.lr.ph850.split.us.i, label %.lr.ph850.split.preheader.i

.lr.ph850.split.preheader.i:                      ; preds = %.lr.ph850.i
  %16 = sub i32 %15, %.0647.lcssa.i
  %17 = and i32 %16, -2
  %18 = add i32 %.0647.lcssa.i, 2
  %i.pt = add i32 %18, %17
  br label %.preheader773.i

.lr.ph850.split.us.i:                             ; preds = %.lr.ph850.i
  %i.pu = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1278
  %i.pv = load i64, ptr %i.as, align 8, !tbaa !20, !noalias !1278
  %i.pw = load i64, ptr %i.ba, align 8, !tbaa !65, !noalias !1278 ; 2 uses
  %factor.op.mul.i = mul i64 %i.pw, %i.pv
  %i.px = sext i32 %.0647.lcssa.i to i64
  %wide.trip.count1013.i = zext nneg i32 %.sroa.speculated114 to i64
  br label %.lr.ph.us853.i

.lr.ph.us853.i:                                   ; preds = %._crit_edge.us854.i, %.lr.ph850.split.us.i
  %indvars.iv1015.i = phi i64 [ %indvars.iv.next1016.i, %._crit_edge.us854.i ], [ %i.px, %.lr.ph850.split.us.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.py = trunc nsw i64 %indvars.iv1015.i to i32
  %factor.op.mul.reass.us852.i = mul i32 %factor.op.mul796.i, %i.py
  %i.pz = sext i32 %factor.op.mul.reass.us852.i to i64
  %i.qa = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.pz
  %i.qb = add nsw i64 %indvars.iv1015.i, %i.ef
  %.reass.i = mul i64 %factor.op.mul.i, %i.qb
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pu, i64 %.reass.i
  br label %.preheader774.us.i

.preheader774.us.i:                               ; preds = %bb.ae, %.lr.ph.us853.i
  %indvars.iv1010.i = phi i64 [ 0, %.lr.ph.us853.i ], [ %indvars.iv.next1011.i, %bb.ae ] ; 3 uses
  %.idx1040.i = shl nuw nsw i64 %indvars.iv1010.i, 3
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 %.idx1040.i ; 8 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %i.ph ; 3 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %i.pj ; 3 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %i.pl ; 3 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %i.pn ; 3 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %i.pp ; 3 uses
  %i.qj = load i32, ptr %i.qe, align 4, !tbaa !67 ; 2 uses
  %i.qk = load i32, ptr %i.qf, align 4, !tbaa !67 ; 2 uses
  %i.ql = add nsw i32 %i.qk, %i.qj                ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qe, i64 4
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !67 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qf, i64 4
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !67 ; 2 uses
  %i.qq = add nsw i32 %i.qp, %i.qn                ; 2 uses
  %i.qr = load i32, ptr %i.qg, align 4, !tbaa !67 ; 2 uses
  %i.qs = load i32, ptr %i.qh, align 4, !tbaa !67 ; 2 uses
  %i.qt = add nsw i32 %i.qs, %i.qr                ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qg, i64 4
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !67 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qh, i64 4
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !67 ; 2 uses
  %i.qy = add nsw i32 %i.qx, %i.qv                ; 2 uses
  %i.qz = sub nsw i32 %i.qj, %i.qk                ; 2 uses
  %i.ra = sub nsw i32 %i.qn, %i.qp                ; 2 uses
  %i.rb = sub nsw i32 %i.qr, %i.qs                ; 2 uses
  %i.rc = sub nsw i32 %i.qv, %i.qx                ; 2 uses
  %i.rd = add nsw i32 %i.qt, %i.ql
  %i.re = load i32, ptr %i.qd, align 4, !tbaa !67
  %i.rf = add nsw i32 %i.rd, %i.re
  %i.rg = add nsw i32 %i.qy, %i.qq
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qd, i64 4
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !67
  %i.rj = add nsw i32 %i.rg, %i.ri
  %i.rk = shl nsw i32 %i.rb, 1
  %i.rl = add nsw i32 %i.rk, %i.qz
  %i.rm = shl nsw i32 %i.rc, 1
  %i.rn = add nsw i32 %i.rm, %i.ra
  %i.ro = shl nsw i32 %i.qt, 2
  %i.rp = add nsw i32 %i.ro, %i.ql
  %i.rq = shl nsw i32 %i.qy, 2
  %i.rr = add nsw i32 %i.rq, %i.qq
  %i.rs = shl nsw i32 %i.rb, 3
  %i.rt = add nsw i32 %i.rs, %i.qz
  %i.ru = load i32, ptr %i.qi, align 4, !tbaa !67
  %i.rv = shl nsw i32 %i.ru, 2
  %i.rw = add nsw i32 %i.rt, %i.rv
  %i.rx = shl nsw i32 %i.rc, 3
  %i.ry = add nsw i32 %i.rx, %i.ra
  %i.rz = getelementptr inbounds nuw i8, ptr %i.qi, i64 4
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !67
  %i.sb = shl nsw i32 %i.sa, 2
  %i.sc = add nsw i32 %i.ry, %i.sb
  store i32 %i.rf, ptr %i.b, align 16, !tbaa !67
  store i32 %i.rj, ptr %i.cc, align 4, !tbaa !67
  store i32 %i.rl, ptr %i.br, align 16, !tbaa !67
  store i32 %i.rn, ptr %i.cd, align 4, !tbaa !67
  store i32 %i.rp, ptr %i.bs, align 16, !tbaa !67
  store i32 %i.rr, ptr %i.ce, align 4, !tbaa !67
  store i32 %i.rw, ptr %i.bt, align 16, !tbaa !67
  store i32 %i.sc, ptr %i.cf, align 4, !tbaa !67
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %i.pr ; 3 uses
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %i.pr ; 3 uses
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.qf, i64 %i.pr ; 3 uses
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.qg, i64 %i.pr ; 3 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %i.pr ; 3 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %i.pr ; 3 uses
  %i.sj = load i32, ptr %i.se, align 4, !tbaa !67 ; 2 uses
  %i.sk = load i32, ptr %i.sf, align 4, !tbaa !67 ; 2 uses
  %i.sl = add nsw i32 %i.sk, %i.sj                ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.se, i64 4
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !67 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sf, i64 4
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !67 ; 2 uses
  %i.sq = add nsw i32 %i.sp, %i.sn                ; 2 uses
  %i.sr = load i32, ptr %i.sg, align 4, !tbaa !67 ; 2 uses
  %i.ss = load i32, ptr %i.sh, align 4, !tbaa !67 ; 2 uses
  %i.st = add nsw i32 %i.ss, %i.sr                ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.sg, i64 4
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !67 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sh, i64 4
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !67 ; 2 uses
  %i.sy = add nsw i32 %i.sx, %i.sv                ; 2 uses
  %i.sz = sub nsw i32 %i.sj, %i.sk                ; 2 uses
  %i.ta = sub nsw i32 %i.sn, %i.sp                ; 2 uses
  %i.tb = sub nsw i32 %i.sr, %i.ss                ; 2 uses
  %i.tc = sub nsw i32 %i.sv, %i.sx                ; 2 uses
  %i.td = add nsw i32 %i.st, %i.sl
  %i.te = load i32, ptr %i.sd, align 4, !tbaa !67
  %i.tf = add nsw i32 %i.td, %i.te
  %i.tg = add nsw i32 %i.sy, %i.sq
  %i.th = getelementptr inbounds nuw i8, ptr %i.sd, i64 4
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !67
  %i.tj = add nsw i32 %i.tg, %i.ti
  %i.tk = shl nsw i32 %i.tb, 1
  %i.tl = add nsw i32 %i.tk, %i.sz
  %i.tm = shl nsw i32 %i.tc, 1
  %i.tn = add nsw i32 %i.tm, %i.ta
  %i.to = shl nsw i32 %i.st, 2
  %i.tp = add nsw i32 %i.to, %i.sl
  %i.tq = shl nsw i32 %i.sy, 2
  %i.tr = add nsw i32 %i.tq, %i.sq
  %i.ts = shl nsw i32 %i.tb, 3
  %i.tt = add nsw i32 %i.ts, %i.sz
  %i.tu = load i32, ptr %i.si, align 4, !tbaa !67
  %i.tv = shl nsw i32 %i.tu, 2
  %i.tw = add nsw i32 %i.tt, %i.tv
  %i.tx = shl nsw i32 %i.tc, 3
  %i.ty = add nsw i32 %i.tx, %i.ta
  %i.tz = getelementptr inbounds nuw i8, ptr %i.si, i64 4
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !67
  %i.ub = shl nsw i32 %i.ua, 2
  %i.uc = add nsw i32 %i.ty, %i.ub
  store i32 %i.tf, ptr %i.cg, align 8, !tbaa !67
  store i32 %i.tj, ptr %i.ch, align 4, !tbaa !67
  store i32 %i.tl, ptr %i.ci, align 8, !tbaa !67
  store i32 %i.tn, ptr %i.cj, align 4, !tbaa !67
  store i32 %i.tp, ptr %i.ck, align 8, !tbaa !67
  store i32 %i.tr, ptr %i.cl, align 4, !tbaa !67
  store i32 %i.tw, ptr %i.cm, align 8, !tbaa !67
  store i32 %i.uc, ptr %i.cn, align 4, !tbaa !67
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %i.pr ; 3 uses
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %i.pr ; 3 uses
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %i.pr ; 3 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %i.pr ; 3 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %i.pr ; 3 uses
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %i.pr ; 3 uses
  %i.uj = load i32, ptr %i.ue, align 4, !tbaa !67 ; 2 uses
  %i.uk = load i32, ptr %i.uf, align 4, !tbaa !67 ; 2 uses
  %i.ul = add nsw i32 %i.uk, %i.uj                ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ue, i64 4
  %i.un = load i32, ptr %i.um, align 4, !tbaa !67 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uf, i64 4
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !67 ; 2 uses
  %i.uq = add nsw i32 %i.up, %i.un                ; 2 uses
  %i.ur = load i32, ptr %i.ug, align 4, !tbaa !67 ; 2 uses
  %i.us = load i32, ptr %i.uh, align 4, !tbaa !67 ; 2 uses
  %i.ut = add nsw i32 %i.us, %i.ur                ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ug, i64 4
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !67 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !67 ; 2 uses
  %i.uy = add nsw i32 %i.ux, %i.uv                ; 2 uses
  %i.uz = sub nsw i32 %i.uj, %i.uk                ; 2 uses
  %i.va = sub nsw i32 %i.un, %i.up                ; 2 uses
  %i.vb = sub nsw i32 %i.ur, %i.us                ; 2 uses
  %i.vc = sub nsw i32 %i.uv, %i.ux                ; 2 uses
  %i.vd = add nsw i32 %i.ut, %i.ul
  %i.ve = load i32, ptr %i.ud, align 4, !tbaa !67
  %i.vf = add nsw i32 %i.vd, %i.ve
  %i.vg = add nsw i32 %i.uy, %i.uq
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ud, i64 4
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !67
  %i.vj = add nsw i32 %i.vg, %i.vi
  %i.vk = shl nsw i32 %i.vb, 1
  %i.vl = add nsw i32 %i.vk, %i.uz
  %i.vm = shl nsw i32 %i.vc, 1
  %i.vn = add nsw i32 %i.vm, %i.va
  %i.vo = shl nsw i32 %i.ut, 2
  %i.vp = add nsw i32 %i.vo, %i.ul
  %i.vq = shl nsw i32 %i.uy, 2
  %i.vr = add nsw i32 %i.vq, %i.uq
  %i.vs = shl nsw i32 %i.vb, 3
  %i.vt = add nsw i32 %i.vs, %i.uz
  %i.vu = load i32, ptr %i.ui, align 4, !tbaa !67
  %i.vv = shl nsw i32 %i.vu, 2
  %i.vw = add nsw i32 %i.vt, %i.vv
  %i.vx = shl nsw i32 %i.vc, 3
  %i.vy = add nsw i32 %i.vx, %i.va
  %i.vz = getelementptr inbounds nuw i8, ptr %i.ui, i64 4
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !67
  %i.wb = shl nsw i32 %i.wa, 2
  %i.wc = add nsw i32 %i.vy, %i.wb
  store i32 %i.vf, ptr %i.co, align 16, !tbaa !67
  store i32 %i.vj, ptr %i.cp, align 4, !tbaa !67
end_hunk_16
begin_hunk_17_@_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.db = load ptr, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %.not.i35 = icmp eq ptr %i.db, null
  br i1 %.not.i35, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.f

bb.f:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit48
  %i.dc = atomicrmw add ptr %i.db, i32 -1 acq_rel, align 4
  %i.dd = icmp eq i32 %i.dc, 1
  br i1 %i.dd, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit33

bb.g:                                             ; preds = %bb.f
  %i.de = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 3 uses
  %.not3.i36 = icmp eq ptr %i.de, null
  %i.df = load ptr, ptr %12, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !9
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  invoke void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef %i.df)
          to label %_ZN4ncnn3MatD2Ev.exit33 unwind label %bb.k, !inline_history !19

bb.i:                                             ; preds = %bb.g
  %.not.i44 = icmp eq ptr %i.df, null
  br i1 %.not.i44, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.df) #12
  br label %_ZN4ncnn3MatD2Ev.exit33

bb.k:                                             ; preds = %bb.h
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit33:                          ; preds = %bb.f, %_ZN4ncnn3Mat7channelEi.exit48, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.dl = load ptr, ptr %i.v, align 8, !tbaa !11  ; 2 uses
  %.not.i39 = icmp eq ptr %i.dl, null
  br i1 %.not.i39, label %_ZN4ncnn3MatD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit33
  %i.dm = atomicrmw add ptr %i.dl, i32 -1 acq_rel, align 4
  %i.dn = icmp eq i32 %i.dm, 1
  br i1 %i.dn, label %bb.m, label %_ZN4ncnn3MatD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.do = load ptr, ptr %i.y, align 8, !tbaa !17  ; 3 uses
  %.not3.i40 = icmp eq ptr %i.do, null
  %i.dp = load ptr, ptr %11, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !9
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.dp)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.q, !inline_history !19

bb.o:                                             ; preds = %bb.m
  %.not.i43 = icmp eq ptr %i.dp, null
  br i1 %.not.i43, label %_ZN4ncnn3MatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.dp) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.q:                                             ; preds = %bb.n
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.l, %_ZN4ncnn3MatD2Ev.exit33, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.dv = add nsw i32 %.067, 1
  %i.dw = load i32, ptr %i.e, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.067, %i.dw
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.s:                                             ; preds = %bb.c
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #27
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.11(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not144 = icmp sgt i32 %i.k, %i.j
  br i1 %.not144, label %._crit_edge148, label %.lr.ph147

.lr.ph147:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph147, %_ZN4ncnn3MatD2Ev.exit
  %.045145 = phi i32 [ %i.k, %.lr.ph147 ], [ %i.bm, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.as = load i32, ptr %3, align 4, !tbaa !67
  %i.at = mul nsw i32 %i.as, %.045145             ; 4 uses
  %i.au = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit76 unwind label %bb.ad

_ZN4ncnn3Mat7channelEi.exit76:                    ; preds = %bb.c
  %i.av = load ptr, ptr %4, align 8, !tbaa !18, !noalias !1393
  %i.aw = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !1393
  %i.ax = sext i32 %i.au to i64
  %i.ay = mul i64 %i.aw, %i.ax
  %i.az = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !1393
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba ; 4 uses
  %i.bc = load i32, ptr %5, align 4, !tbaa !67
  %i.bd = sub nsw i32 %i.bc, %i.at
  %i.be = load i32, ptr %3, align 4, !tbaa !67
  %.sroa.speculated119 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bd) ; 8 uses
  %i.bf = load i32, ptr %6, align 4, !tbaa !67    ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit76
  %i.bh = icmp sgt i32 %.sroa.speculated119, 3
  %i.bi = and i32 %.sroa.speculated119, 2147483644
  %i.bj = zext nneg i32 %.sroa.speculated119 to i64
  %15 = add i32 %.sroa.speculated119, -2
  %i.bk = sext i32 %.sroa.speculated119 to i64    ; 2 uses
  %i.bl = sext i32 %i.at to i64                   ; 2 uses
  %invariant.op.i = add nsw i64 %i.bk, -1
  %.pre = load i32, ptr %7, align 4, !tbaa !67
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, %_ZN4ncnn3Mat7channelEi.exit76
  %i.bm = add nsw i32 %.045145, 1
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.045145, %i.bn
  br i1 %.not.not, label %bb.c, label %._crit_edge148

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit
  %i.bo = phi i32 [ %.pre, %.lr.ph ], [ %i.tj, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %i.bp = phi i32 [ %i.bf, %.lr.ph ], [ %i.tl, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %.044143 = phi i32 [ 0, %.lr.ph ], [ %i.tk, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ] ; 6 uses
  %i.bq = sub nsw i32 %i.bp, %.044143
  %.sroa.speculated115 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.bq) ; 19 uses
  %i.br = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %bb.d
  %.pre149 = load i32, ptr %9, align 4, !tbaa !67
  br label %.noexc

._crit_edge:                                      ; preds = %.noexc, %bb.d
  %i.bt = load i32, ptr %i.an, align 4, !tbaa !75 ; 7 uses
  %i.bu = load i32, ptr %i.ao, align 8, !tbaa !76 ; 7 uses
  %i.bv = load i32, ptr %i.ap, align 8, !tbaa !66 ; 6 uses
  %i.bw = load i64, ptr %i.aq, align 8, !tbaa !20
  %i.bx = sext i32 %i.bv to i64
  %i.by = mul i64 %i.bw, %i.bx                    ; 6 uses
  %i.bz = add nsw i32 %i.bt, 1
  %i.ca = sdiv i32 %i.bz, 2                       ; 6 uses
  %factor.op.mul64.i = shl i32 %.sroa.speculated115, 4 ; 4 uses
  br i1 %i.bh, label %.lr.ph67.i, label %.preheader55.i

.lr.ph67.i:                                       ; preds = %._crit_edge
  %i.cb = icmp sgt i32 %.sroa.speculated115, 0
  %i.cc = shl nsw i32 %.sroa.speculated115, 2
  %i.cd = sext i32 %i.cc to i64
  %i.ce = shl nsw i32 %.sroa.speculated115, 3
  %i.cf = sext i32 %i.ce to i64
  %i.cg = mul nsw i32 %.sroa.speculated115, 12
  %i.ch = sext i32 %i.cg to i64
  %i.ci = sext i32 %factor.op.mul64.i to i64      ; 12 uses
  %.idx.i = shl i64 %i.by, 3                      ; 2 uses
  %.idx300.i = mul i64 %i.by, 12                  ; 2 uses
  %i.cj = mul nsw i32 %i.bv, %i.bt
  %i.ck = sext i32 %i.cj to i64
  br i1 %i.cb, label %.lr.ph.us.preheader.i, label %.preheader55.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph67.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated115 to i64
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv118.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next119.i, %._crit_edge.us.i ] ; 2 uses
  %i.cl = trunc nuw nsw i64 %indvars.iv118.i to i32 ; 2 uses
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul64.i, %i.cl
  %i.cm = sext i32 %factor.op.mul.reass.us.i to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.cm
  %i.co = add i32 %i.at, %i.cl
  %i.cp = sdiv i32 %i.co, %i.bv
  %i.cq = sext i32 %i.cp to i64
  br label %_ZN4ncnn3MatD2Ev.exit302.us.i

_ZN4ncnn3MatD2Ev.exit302.us.i:                    ; preds = %bb.q, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.q ] ; 3 uses
  %.idx177.i = shl nuw nsw i64 %indvars.iv.i, 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx177.i ; 5 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cd ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cf ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.ch ; 2 uses
  %i.cv = load <4 x i32>, ptr %i.cs, align 16, !tbaa !254 ; 2 uses
  %i.cw = load <4 x i32>, ptr %i.ct, align 16, !tbaa !254 ; 2 uses
  %i.cx = load <4 x i32>, ptr %i.cu, align 16, !tbaa !254
  %i.cy = sub <4 x i32> %i.cv, %i.cw
  %i.cz = add <4 x i32> %i.cy, %i.cx
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ci ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.ci ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ci ; 2 uses
  %i.dd = load <4 x i32>, ptr %i.da, align 16, !tbaa !254 ; 2 uses
  %i.de = load <4 x i32>, ptr %i.db, align 16, !tbaa !254 ; 2 uses
  %i.df = load <4 x i32>, ptr %i.dc, align 16, !tbaa !254
  %i.dg = sub <4 x i32> %i.dd, %i.de
  %i.dh = add <4 x i32> %i.dg, %i.df              ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.ci ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.ci ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.ci ; 2 uses
  %i.dl = load <4 x i32>, ptr %i.di, align 16, !tbaa !254 ; 2 uses
  %i.dm = load <4 x i32>, ptr %i.dj, align 16, !tbaa !254 ; 2 uses
  %i.dn = load <4 x i32>, ptr %i.dk, align 16, !tbaa !254
  %i.do = sub <4 x i32> %i.dl, %i.dm
  %i.dp = add <4 x i32> %i.do, %i.dn              ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.ci
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.ci
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.ci
  %i.dt = load <4 x i32>, ptr %i.dq, align 16, !tbaa !254 ; 2 uses
  %i.du = load <4 x i32>, ptr %i.dr, align 16, !tbaa !254 ; 2 uses
  %i.dv = load <4 x i32>, ptr %i.ds, align 16, !tbaa !254
  %i.dw = trunc i64 %indvars.iv.i to i32
  %i.dx = add i32 %.044143, %i.dw                 ; 2 uses
  %i.dy = sdiv i32 %i.dx, %i.ca
  %i.dz = srem i32 %i.dx, %i.ca
  %i.ea = load i32, ptr %i.an, align 4, !tbaa !75, !noalias !1396
  %i.eb = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1396
  %i.ec = load i64, ptr %i.aq, align 8, !tbaa !20, !noalias !1396
  %i.ed = mul i64 %i.ec, %i.cq
  %i.ee = load i64, ptr %i.ar, align 8, !tbaa !65, !noalias !1396 ; 2 uses
  %i.ef = mul i64 %i.ed, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ef
  %i.eh = sext i32 %i.ea to i64
  %i.ei = shl nsw i32 %i.dy, 1                    ; 3 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = mul nsw i64 %i.eh, %i.ej
  %i.el = mul i64 %i.ek, %i.ee
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.el
  %i.en = shl nsw i32 %i.dz, 1                    ; 2 uses
  %i.eo = mul nsw i32 %i.en, %i.bv
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.ep ; 9 uses
  %i.er = or disjoint i32 %i.en, 1
  %i.es = icmp slt i32 %i.er, %i.bt               ; 4 uses
  %.not299.us.i = icmp slt i32 %i.ei, %i.bu
  br i1 %.not299.us.i, label %bb.e, label %bb.k

bb.e:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit302.us.i
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.ci ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.ci ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.ci
  %i.ew = load <4 x i32>, ptr %i.ev, align 16, !tbaa !254
  %i.ex = load <4 x i32>, ptr %i.eu, align 16, !tbaa !254
  %i.ey = add <4 x i32> %i.dm, %i.dl
  %i.ez = add <4 x i32> %i.ey, %i.ex              ; 2 uses
  %i.fa = load <4 x i32>, ptr %i.et, align 16, !tbaa !254
  %i.fb = add <4 x i32> %i.de, %i.dd
  %i.fc = add <4 x i32> %i.fb, %i.fa              ; 2 uses
  %i.fd = load <4 x i32>, ptr %i.cr, align 16, !tbaa !254
  %i.fe = add <4 x i32> %i.cw, %i.cv
  %i.ff = add <4 x i32> %i.fe, %i.fd
  %i.fg = add <4 x i32> %i.ff, %i.ez
  %i.fh = add <4 x i32> %i.fg, %i.fc
  %i.fi = add <4 x i32> %i.du, %i.dt
  %i.fj = add <4 x i32> %i.fi, %i.ew
  %i.fk = sub <4 x i32> %i.fj, %i.ez
  %i.fl = add <4 x i32> %i.fk, %i.fc
  %i.fm = ashr <4 x i32> %i.fh, splat (i32 2)     ; 5 uses
  %i.fn = ashr <4 x i32> %i.fl, splat (i32 2)     ; 5 uses
  switch i32 %i.bv, label %bb.j [
    i32 4, label %bb.h
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.by ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.idx.i ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.idx300.i ; 2 uses
  %.sroa.026.0.vec.extract.us.i = extractelement <4 x i32> %i.fm, i64 0
  store i32 %.sroa.026.0.vec.extract.us.i, ptr %i.eq, align 4, !tbaa !67
  %.sroa.026.4.vec.extract.us.i = extractelement <4 x i32> %i.fm, i64 1
  store i32 %.sroa.026.4.vec.extract.us.i, ptr %i.fo, align 4, !tbaa !67
  %.sroa.026.8.vec.extract.us.i = extractelement <4 x i32> %i.fm, i64 2
  store i32 %.sroa.026.8.vec.extract.us.i, ptr %i.fp, align 4, !tbaa !67
  %.sroa.026.12.vec.extract.us.i = extractelement <4 x i32> %i.fm, i64 3
  store i32 %.sroa.026.12.vec.extract.us.i, ptr %i.fq, align 4, !tbaa !67
  br i1 %i.es, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.sroa.728.16.vec.extract.us.i = extractelement <4 x i32> %i.fn, i64 0
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  store i32 %.sroa.728.16.vec.extract.us.i, ptr %i.fr, align 4, !tbaa !67
  %.sroa.728.20.vec.extract.us.i = extractelement <4 x i32> %i.fn, i64 1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  store i32 %.sroa.728.20.vec.extract.us.i, ptr %i.fs, align 4, !tbaa !67
  %.sroa.728.24.vec.extract.us.i = extractelement <4 x i32> %i.fn, i64 2
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store i32 %.sroa.728.24.vec.extract.us.i, ptr %i.ft, align 4, !tbaa !67
  %.sroa.728.28.vec.extract.us.i = extractelement <4 x i32> %i.fn, i64 3
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store i32 %.sroa.728.28.vec.extract.us.i, ptr %i.fu, align 4, !tbaa !67
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  store <4 x i32> %i.fm, ptr %i.eq, align 16, !tbaa !254
  br i1 %i.es, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <4 x i32> %i.fn, ptr %i.fv, align 16, !tbaa !254
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.ck
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4ncnn3MatD2Ev.exit302.us.i
  %.1286.us.i = phi ptr [ %i.eq, %_ZN4ncnn3MatD2Ev.exit302.us.i ], [ %i.fw, %bb.j ] ; 7 uses
  %i.fx = or disjoint i32 %i.ei, 1
  %.not299.us.1.i = icmp slt i32 %i.fx, %i.bu
  br i1 %.not299.us.1.i, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.fy = add <4 x i32> %i.cz, %i.dh
  %i.fz = add <4 x i32> %i.fy, %i.dp
  %i.ga = add <4 x i32> %i.dh, %i.dt
  %i.gb = add <4 x i32> %i.dp, %i.du
  %i.gc = sub <4 x i32> %i.ga, %i.gb
  %i.gd = add <4 x i32> %i.gc, %i.dv
  %i.ge = ashr <4 x i32> %i.fz, splat (i32 2)     ; 5 uses
  %i.gf = ashr <4 x i32> %i.gd, splat (i32 2)     ; 5 uses
  switch i32 %i.bv, label %bb.q [
    i32 4, label %bb.o
    i32 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.1286.us.i, i64 %i.by ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.1286.us.i, i64 %.idx.i ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.1286.us.i, i64 %.idx300.i ; 2 uses
  %.sroa.026.0.vec.extract.us.1.i = extractelement <4 x i32> %i.ge, i64 0
  store i32 %.sroa.026.0.vec.extract.us.1.i, ptr %.1286.us.i, align 4, !tbaa !67
  %.sroa.026.4.vec.extract.us.1.i = extractelement <4 x i32> %i.ge, i64 1
  store i32 %.sroa.026.4.vec.extract.us.1.i, ptr %i.gg, align 4, !tbaa !67
  %.sroa.026.8.vec.extract.us.1.i = extractelement <4 x i32> %i.ge, i64 2
  store i32 %.sroa.026.8.vec.extract.us.1.i, ptr %i.gh, align 4, !tbaa !67
  %.sroa.026.12.vec.extract.us.1.i = extractelement <4 x i32> %i.ge, i64 3
  store i32 %.sroa.026.12.vec.extract.us.1.i, ptr %i.gi, align 4, !tbaa !67
  br i1 %i.es, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.sroa.728.16.vec.extract.us.1.i = extractelement <4 x i32> %i.gf, i64 0
  %i.gj = getelementptr inbounds nuw i8, ptr %.1286.us.i, i64 4
  store i32 %.sroa.728.16.vec.extract.us.1.i, ptr %i.gj, align 4, !tbaa !67
  %.sroa.728.20.vec.extract.us.1.i = extractelement <4 x i32> %i.gf, i64 1
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store i32 %.sroa.728.20.vec.extract.us.1.i, ptr %i.gk, align 4, !tbaa !67
  %.sroa.728.24.vec.extract.us.1.i = extractelement <4 x i32> %i.gf, i64 2
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store i32 %.sroa.728.24.vec.extract.us.1.i, ptr %i.gl, align 4, !tbaa !67
  %.sroa.728.28.vec.extract.us.1.i = extractelement <4 x i32> %i.gf, i64 3
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  store i32 %.sroa.728.28.vec.extract.us.1.i, ptr %i.gm, align 4, !tbaa !67
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  store <4 x i32> %i.ge, ptr %.1286.us.i, align 16, !tbaa !254
  br i1 %i.es, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.gn = getelementptr inbounds nuw i8, ptr %.1286.us.i, i64 16
  store <4 x i32> %i.gf, ptr %i.gn, align 16, !tbaa !254
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %_ZN4ncnn3MatD2Ev.exit302.us.i, !llvm.loop !1399

._crit_edge.us.i:                                 ; preds = %bb.q
  %indvars.iv.next119.i = add nuw nsw i64 %indvars.iv118.i, 4 ; 3 uses
  %i.go = or disjoint i64 %indvars.iv.next119.i, 3
  %i.gp = icmp samesign ult i64 %i.go, %i.bj
  br i1 %i.gp, label %.lr.ph.us.i, label %.preheader55.loopexit.i, !llvm.loop !1400

.preheader55.loopexit.i:                          ; preds = %._crit_edge.us.i
  %i.gq = trunc nuw nsw i64 %indvars.iv.next119.i to i32
  br label %.preheader55.i

.preheader55.i:                                   ; preds = %.lr.ph67.i, %.preheader55.loopexit.i, %._crit_edge
  %.0287.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.gq, %.preheader55.loopexit.i ], [ %i.bi, %.lr.ph67.i ] ; 5 uses
  %i.gr = or disjoint i32 %.0287.lcssa.i, 1
  %i.gs = icmp slt i32 %i.gr, %.sroa.speculated119
  br i1 %i.gs, label %.lr.ph78.i, label %.preheader.i

.lr.ph78.i:                                       ; preds = %.preheader55.i
  %i.gt = icmp sgt i32 %.sroa.speculated115, 0
  %i.gu = shl nsw i32 %.sroa.speculated115, 1
  %i.gv = sext i32 %i.gu to i64
  %i.gw = shl nsw i32 %.sroa.speculated115, 2
  %i.gx = sext i32 %i.gw to i64
  %i.gy = mul nsw i32 %.sroa.speculated115, 6
  %i.gz = sext i32 %i.gy to i64
  %i.ha = shl nsw i32 %.sroa.speculated115, 3
  %i.hb = sext i32 %i.ha to i64                   ; 12 uses
  %i.hc = sext i32 %i.bt to i64
  br i1 %i.gt, label %.lr.ph78.split.us.i, label %.lr.ph78.split.preheader.i

.lr.ph78.split.preheader.i:                       ; preds = %.lr.ph78.i
  %16 = sub i32 %15, %.0287.lcssa.i
  %17 = and i32 %16, -2
  %18 = add i32 %.0287.lcssa.i, 2
  %i.hd = add i32 %18, %17
  br label %.preheader.i

.lr.ph78.split.us.i:                              ; preds = %.lr.ph78.i
  %i.he = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1401
  %i.hf = load i64, ptr %i.aq, align 8, !tbaa !20, !noalias !1401
  %i.hg = load i64, ptr %i.ar, align 8, !tbaa !65, !noalias !1401 ; 2 uses
  %factor.op.mul.i = mul i64 %i.hg, %i.hf
  %i.hh = sext i32 %.0287.lcssa.i to i64
  %wide.trip.count131.i = zext nneg i32 %.sroa.speculated115 to i64
  br label %.lr.ph.us81.i

.lr.ph.us81.i:                                    ; preds = %._crit_edge.us82.i, %.lr.ph78.split.us.i
  %indvars.iv133.i = phi i64 [ %indvars.iv.next134.i, %._crit_edge.us82.i ], [ %i.hh, %.lr.ph78.split.us.i ] ; 3 uses
  %i.hi = trunc nsw i64 %indvars.iv133.i to i32
  %factor.op.mul.reass.us80.i = mul i32 %factor.op.mul64.i, %i.hi
  %i.hj = sext i32 %factor.op.mul.reass.us80.i to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.hj
  %i.hl = add nsw i64 %indvars.iv133.i, %i.bl
  %.reass.i = mul i64 %factor.op.mul.i, %i.hl
  %i.hm = getelementptr inbounds nuw i8, ptr %i.he, i64 %.reass.i
  br label %_ZN4ncnn3MatD2Ev.exit301.us.i

_ZN4ncnn3MatD2Ev.exit301.us.i:                    ; preds = %bb.x, %.lr.ph.us81.i
  %indvars.iv128.i = phi i64 [ 0, %.lr.ph.us81.i ], [ %indvars.iv.next129.i, %bb.x ] ; 3 uses
  %.idx178.i = shl nuw nsw i64 %indvars.iv128.i, 3
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 %.idx178.i ; 6 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.gv ; 3 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.gx ; 3 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.gz ; 3 uses
  %i.hr = load i32, ptr %i.ho, align 4, !tbaa !67 ; 2 uses
  %i.hs = load i32, ptr %i.hp, align 4, !tbaa !67 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !67 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !67 ; 2 uses
  %i.hx = sub i32 %i.hr, %i.hs
  %i.hy = load i32, ptr %i.hq, align 4, !tbaa !67
  %i.hz = add nsw i32 %i.hx, %i.hy
  %i.ia = sub i32 %i.hu, %i.hw
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !67
  %i.id = add nsw i32 %i.ia, %i.ic
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hb ; 3 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.hb ; 3 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.hb ; 3 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.hb ; 3 uses
  %i.ii = load i32, ptr %i.ie, align 4, !tbaa !67
  %i.ij = load i32, ptr %i.if, align 4, !tbaa !67 ; 2 uses
  %i.ik = add nsw i32 %i.ij, %i.ii
  %i.il = load i32, ptr %i.ig, align 4, !tbaa !67 ; 2 uses
  %i.im = add nsw i32 %i.ik, %i.il                ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.io = load i32, ptr %i.in, align 4, !tbaa !67
  %i.ip = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !67 ; 2 uses
  %i.ir = add nsw i32 %i.iq, %i.io
  %i.is = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  %i.it = load i32, ptr %i.is, align 4, !tbaa !67 ; 2 uses
  %i.iu = add nsw i32 %i.ir, %i.it                ; 2 uses
  %i.iv = sub i32 %i.ij, %i.il
  %i.iw = load i32, ptr %i.ih, align 4, !tbaa !67
  %i.ix = add nsw i32 %i.iw, %i.iv                ; 2 uses
  %i.iy = sub i32 %i.iq, %i.it
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !67
  %i.jb = add nsw i32 %i.ja, %i.iy                ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.hb ; 3 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.hb ; 3 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.hb ; 3 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.hb ; 3 uses
  %i.jg = load i32, ptr %i.jc, align 4, !tbaa !67
  %i.jh = load i32, ptr %i.jd, align 4, !tbaa !67 ; 2 uses
  %i.ji = add nsw i32 %i.jh, %i.jg
  %i.jj = load i32, ptr %i.je, align 4, !tbaa !67 ; 2 uses
  %i.jk = add nsw i32 %i.ji, %i.jj                ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !67
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !67 ; 2 uses
  %i.jp = add nsw i32 %i.jo, %i.jm
  %i.jq = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !67 ; 2 uses
  %i.js = add nsw i32 %i.jp, %i.jr                ; 2 uses
  %i.jt = sub i32 %i.jh, %i.jj
  %i.ju = load i32, ptr %i.jf, align 4, !tbaa !67
  %i.jv = add nsw i32 %i.ju, %i.jt                ; 2 uses
  %i.jw = sub i32 %i.jo, %i.jr
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !67
  %i.jz = add nsw i32 %i.jy, %i.jw                ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.hb ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.hb ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.hb ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.hb ; 2 uses
  %i.ke = load i32, ptr %i.ka, align 4, !tbaa !67
  %i.kf = load i32, ptr %i.kb, align 4, !tbaa !67 ; 2 uses
  %i.kg = load i32, ptr %i.kc, align 4, !tbaa !67 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !67
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !67 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !67 ; 2 uses
  %i.kn = load i32, ptr %i.kd, align 4, !tbaa !67
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !67
  %i.kq = trunc i64 %indvars.iv128.i to i32
  %i.kr = add i32 %.044143, %i.kq                 ; 2 uses
  %i.ks = sdiv i32 %i.kr, %i.ca
  %i.kt = srem i32 %i.kr, %i.ca
  %i.ku = load i32, ptr %i.an, align 4, !tbaa !75, !noalias !1401
  %i.kv = sext i32 %i.ku to i64
  %i.kw = shl nsw i32 %i.ks, 1                    ; 3 uses
  %i.kx = sext i32 %i.kw to i64
  %i.ky = mul i64 %i.hg, %i.kx
  %i.kz = mul i64 %i.ky, %i.kv
  %i.la = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.kz
  %i.lb = shl nsw i32 %i.kt, 1                    ; 2 uses
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds [4 x i8], ptr %i.la, i64 %i.lc ; 5 uses
  %i.le = or disjoint i32 %i.lb, 1
  %i.lf = icmp slt i32 %i.le, %i.bt               ; 2 uses
  %.not298.us.i = icmp slt i32 %i.kw, %i.bu
  br i1 %.not298.us.i, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit301.us.i
  %i.lg = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !67
  %i.li = load i32, ptr %i.hn, align 4, !tbaa !67
  %i.lj = add i32 %i.hs, %i.hr
  %i.lk = add i32 %i.lj, %i.im
  %i.ll = add i32 %i.lk, %i.jk
  %i.lm = add i32 %i.ll, %i.li
  %i.ln = add i32 %i.hw, %i.hu
  %i.lo = add i32 %i.ln, %i.iu
  %i.lp = add i32 %i.lo, %i.js
  %i.lq = add i32 %i.lp, %i.lh
  %i.lr = ashr i32 %i.lm, 2
  %i.ls = ashr i32 %i.lq, 2
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.by ; 2 uses
  store i32 %i.lr, ptr %i.ld, align 4, !tbaa !67
  store i32 %i.ls, ptr %i.lt, align 4, !tbaa !67
  br i1 %i.lf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.lu = sub i32 %i.iu, %i.js
  %i.lv = add i32 %i.lu, %i.ki
  %i.lw = add i32 %i.lv, %i.kk
  %i.lx = add i32 %i.lw, %i.km
  %i.ly = ashr i32 %i.lx, 2
  %i.lz = sub i32 %i.im, %i.jk
  %i.ma = add i32 %i.lz, %i.ke
  %i.mb = add i32 %i.ma, %i.kf
  %i.mc = add i32 %i.mb, %i.kg
  %i.md = ashr i32 %i.mc, 2
  %i.me = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  store i32 %i.md, ptr %i.me, align 4, !tbaa !67
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  store i32 %i.ly, ptr %i.mf, align 4, !tbaa !67
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.ld, i64 %i.hc
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN4ncnn3MatD2Ev.exit301.us.i
  %.1277.us.i = phi ptr [ %i.ld, %_ZN4ncnn3MatD2Ev.exit301.us.i ], [ %i.mg, %bb.t ] ; 3 uses
  %i.mh = or disjoint i32 %i.kw, 1
  %.not298.us.1.i = icmp slt i32 %i.mh, %i.bu
  br i1 %.not298.us.1.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.mi = add nsw i32 %i.hz, %i.ix
  %i.mj = add nsw i32 %i.mi, %i.jv
  %i.mk = add nsw i32 %i.id, %i.jb
  %i.ml = add nsw i32 %i.mk, %i.jz
  %i.mm = ashr i32 %i.mj, 2
  %i.mn = ashr i32 %i.ml, 2
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %.1277.us.i, i64 %i.by ; 2 uses
  store i32 %i.mm, ptr %.1277.us.i, align 4, !tbaa !67
  store i32 %i.mn, ptr %i.mo, align 4, !tbaa !67
  br i1 %i.lf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.mp = add i32 %i.jb, %i.kk
  %i.mq = add i32 %i.jz, %i.km
  %i.mr = sub i32 %i.mp, %i.mq
  %i.ms = add i32 %i.mr, %i.kp
  %i.mt = ashr i32 %i.ms, 2
  %i.mu = add i32 %i.ix, %i.kf
  %i.mv = add i32 %i.jv, %i.kg
  %i.mw = sub i32 %i.mu, %i.mv
  %i.mx = add i32 %i.mw, %i.kn
  %i.my = ashr i32 %i.mx, 2
  %i.mz = getelementptr inbounds nuw i8, ptr %.1277.us.i, i64 4
  store i32 %i.my, ptr %i.mz, align 4, !tbaa !67
  %i.na = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  store i32 %i.mt, ptr %i.na, align 4, !tbaa !67
  br label %bb.x

end_hunk_17
begin_hunk_18_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.ahi = getelementptr inbounds nuw i8, ptr %.36901879, i64 16
  store <4 x i32> %i.ahf, ptr %i.ahi, align 16, !tbaa !254
  %i.ahj = getelementptr inbounds nuw i8, ptr %.36901879, i64 32
  %.pr1618 = load i32, ptr %7, align 4, !tbaa !67
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge1863
  %i.ahk = phi i32 [ %.pr1618, %bb.s ], [ %i.ahg, %._crit_edge1863 ]
  %.4691 = phi ptr [ %i.ahj, %bb.s ], [ %.36901879, %._crit_edge1863 ] ; 6 uses
  %i.ahl = icmp eq i32 %i.ahk, 1
  br i1 %i.ahl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ahm = shufflevector <4 x i32> %i.ahe, <4 x i32> %i.ahf, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.ahm, ptr %.4691, align 4, !tbaa !67
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %.4691, i64 %i.ag
  %i.aho = shufflevector <4 x i32> %i.ahe, <4 x i32> %i.ahf, <2 x i32> <i32 1, i32 5>
  store <2 x i32> %i.aho, ptr %i.ahn, align 4, !tbaa !67
  %i.ahp = getelementptr inbounds nuw i8, ptr %.4691, i64 %.idx1620
  %i.ahq = shufflevector <4 x i32> %i.ahe, <4 x i32> %i.ahf, <2 x i32> <i32 2, i32 6>
  store <2 x i32> %i.ahq, ptr %i.ahp, align 4, !tbaa !67
  %i.ahr = getelementptr inbounds nuw i8, ptr %.4691, i64 %.idx1621
  %i.ahs = shufflevector <4 x i32> %i.ahe, <4 x i32> %i.ahf, <2 x i32> <i32 3, i32 7>
  store <2 x i32> %i.ahs, ptr %i.ahr, align 4, !tbaa !67
  %i.aht = getelementptr inbounds nuw i8, ptr %.4691, i64 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.5692 = phi ptr [ %i.aht, %bb.u ], [ %.4691, %bb.t ] ; 2 uses
  %i.ahu = add nuw nsw i32 %.16941878, 2          ; 3 uses
  %i.ahv = or disjoint i32 %i.ahu, 1              ; 2 uses
  %i.ahw = icmp slt i32 %i.ahv, %i.ao
  br i1 %i.ahw, label %.noexc747, label %.preheader1628, !llvm.loop !1603

.noexc733:                                        ; preds = %.noexc733.lr.ph, %bb.af
  %.61947 = phi ptr [ %.3690.lcssa, %.noexc733.lr.ph ], [ %.8, %bb.af ] ; 3 uses
  %.26951946 = phi i32 [ %.1694.lcssa, %.noexc733.lr.ph ], [ %i.aqk, %bb.af ] ; 3 uses
  %i.ahx = sdiv i32 %.26951946, %i.x              ; 3 uses
  %i.ahy = srem i32 %.26951946, %i.x              ; 3 uses
  %i.ahz = load ptr, ptr %8, align 8, !tbaa !18, !noalias !1604
  %i.aia = load i64, ptr %i.q, align 8, !tbaa !20, !noalias !1604
  %i.aib = mul i64 %i.aia, %i.vh
  %i.aic = load i64, ptr %i.r, align 8, !tbaa !65, !noalias !1604
  %i.aid = mul i64 %i.aib, %i.aic
  %i.aie = getelementptr inbounds nuw i8, ptr %i.ahz, i64 %i.aid ; 3 uses
  %i.aif = load i32, ptr %9, align 4, !tbaa !67   ; 9 uses
  %i.aig = icmp sgt i32 %i.aif, 7
  br i1 %i.aig, label %.noexc731.lr.ph, label %._crit_edge1893

.noexc731.lr.ph:                                  ; preds = %.noexc733
  %i.aih = load i32, ptr %6, align 4, !tbaa !67   ; 3 uses
  %i.aii = load i32, ptr %i.s, align 4, !tbaa !75, !noalias !1607
  %i.aij = load ptr, ptr %5, align 8, !tbaa !18, !noalias !1607
  %i.aik = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !1607
  %i.ail = load i64, ptr %i.t, align 8, !tbaa !65, !noalias !1607 ; 2 uses
  %factor.op.mul1900 = mul i64 %i.aik, %i.ail
  %i.aim = sext i32 %i.aii to i64
  %i.ain = load i32, ptr %10, align 4, !tbaa !67
  %i.aio = mul nsw i32 %i.ain, %i.ahx
  %i.aip = sext i32 %i.aio to i64
  %i.aiq = mul i64 %i.ail, %i.aim
  %i.air = mul i64 %i.aiq, %i.aip
  %invariant.gep1902 = getelementptr i8, ptr %i.aij, i64 %i.air
  %i.ais = load i32, ptr %11, align 4, !tbaa !67
  %i.ait = mul i32 %i.aih, %i.ahy
  %i.aiu = mul i32 %i.ait, %i.ais
  %i.aiv = sext i32 %i.aiu to i64
  %invariant.gep1903 = getelementptr i8, ptr %invariant.gep1902, i64 %i.aiv
  %i.aiw = load i32, ptr %12, align 4, !tbaa !67  ; 3 uses
  %i.aix = icmp sgt i32 %i.aiw, 0
  br i1 %i.aix, label %.noexc731.lr.ph.split.us, label %.noexc731.preheader

.noexc731.preheader:                              ; preds = %.noexc731.lr.ph
  %i.aiy = and i32 %i.aif, 2147483640
  br label %._crit_edge1893

.noexc731.lr.ph.split.us:                         ; preds = %.noexc731.lr.ph
  %i.aiz = load ptr, ptr %13, align 8, !tbaa !234
  %i.aja = icmp eq i32 %i.aih, 8
  %i.ajb = add nsw i32 %i.aiw, -1
  %i.ajc = zext nneg i32 %i.ajb to i64
  %i.ajd = shl nuw nsw i64 %i.ajc, 5
  %wide.trip.count2060 = zext nneg i32 %i.aiw to i64
  br label %.noexc731.us

.noexc731.us:                                     ; preds = %._crit_edge1885.us, %.noexc731.lr.ph.split.us
  %.06831892.us = phi i32 [ 0, %.noexc731.lr.ph.split.us ], [ %i.alw, %._crit_edge1885.us ] ; 2 uses
  %.06841891.us = phi ptr [ %i.aie, %.noexc731.lr.ph.split.us ], [ %scevgep2058, %._crit_edge1885.us ] ; 2 uses
  %i.aje = phi <4 x i32> [ zeroinitializer, %.noexc731.lr.ph.split.us ], [ %i.alu, %._crit_edge1885.us ]
  %i.ajf = phi <4 x i32> [ zeroinitializer, %.noexc731.lr.ph.split.us ], [ %i.alp, %._crit_edge1885.us ]
  %i.ajg = phi <4 x i32> [ zeroinitializer, %.noexc731.lr.ph.split.us ], [ %i.alk, %._crit_edge1885.us ]
  %i.ajh = phi <4 x i32> [ zeroinitializer, %.noexc731.lr.ph.split.us ], [ %i.alf, %._crit_edge1885.us ]
  %i.aji = sdiv i32 %.06831892.us, %i.aih
  %i.ajj = sext i32 %i.aji to i64
  %.reass1901.us = mul i64 %factor.op.mul1900, %i.ajj
  %gep1904.us = getelementptr i8, ptr %invariant.gep1903, i64 %.reass1901.us
  br label %bb.w

bb.w:                                             ; preds = %.noexc731.us, %bb.z
  %indvars.iv2055 = phi i64 [ 0, %.noexc731.us ], [ %indvars.iv.next2056, %bb.z ] ; 2 uses
  %.16851882.us = phi ptr [ %.06841891.us, %.noexc731.us ], [ %i.alv, %bb.z ] ; 3 uses
  %i.ajk = phi <4 x i32> [ %i.aje, %.noexc731.us ], [ %i.alu, %bb.z ]
  %i.ajl = phi <4 x i32> [ %i.ajf, %.noexc731.us ], [ %i.alp, %bb.z ]
  %i.ajm = phi <4 x i32> [ %i.ajg, %.noexc731.us ], [ %i.alk, %bb.z ]
  %i.ajn = phi <4 x i32> [ %i.ajh, %.noexc731.us ], [ %i.alf, %bb.z ]
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.aiz, i64 %indvars.iv2055
  %i.ajp = load i32, ptr %i.ajo, align 4, !tbaa !67
  %i.ajq = sext i32 %i.ajp to i64
  %i.ajr = getelementptr inbounds i8, ptr %gep1904.us, i64 %i.ajq ; 9 uses
  br i1 %i.aja, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ajs = load i8, ptr %i.ajr, align 1, !tbaa !254
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajr, i64 %i.ac
  %i.aju = load i8, ptr %i.ajt, align 1, !tbaa !254
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajr, i64 %i.vi
  %i.ajw = load i8, ptr %i.ajv, align 1, !tbaa !254
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajr, i64 %i.vj
  %i.ajy = load i8, ptr %i.ajx, align 1, !tbaa !254
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajr, i64 %i.vk
  %i.aka = load i8, ptr %i.ajz, align 1, !tbaa !254
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajr, i64 %i.vl
  %i.akc = load i8, ptr %i.akb, align 1, !tbaa !254
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajr, i64 %i.vm
  %i.ake = load i8, ptr %i.akd, align 1, !tbaa !254
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ajr, i64 %i.vn
  %i.akg = load i8, ptr %i.akf, align 1, !tbaa !254
  %i.akh = insertelement <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %i.ajs, i64 0
  %i.aki = insertelement <16 x i8> %i.akh, i8 %i.aju, i64 1
  %i.akj = insertelement <16 x i8> %i.aki, i8 %i.ajw, i64 2
  %i.akk = insertelement <16 x i8> %i.akj, i8 %i.ajy, i64 3
  %i.akl = insertelement <16 x i8> %i.akk, i8 %i.aka, i64 4
  %i.akm = insertelement <16 x i8> %i.akl, i8 %i.akc, i64 5
  %i.akn = insertelement <16 x i8> %i.akm, i8 %i.ake, i64 6
  %i.ako = insertelement <16 x i8> %i.akn, i8 %i.akg, i64 7
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.akp = load i64, ptr %i.ajr, align 1, !tbaa !254
  %i.akq = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.akp, i64 0
  %i.akr = bitcast <2 x i64> %i.akq to <16 x i8>
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0681.us = phi <16 x i8> [ %i.akr, %bb.y ], [ %i.ako, %bb.x ] ; 2 uses
  %.lobit.i948.us = ashr <16 x i8> %.0681.us, splat (i8 7)
  %i.aks = shufflevector <16 x i8> %.0681.us, <16 x i8> %.lobit.i948.us, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.akt = load <16 x i8>, ptr %.16851882.us, align 16, !tbaa !254 ; 3 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %.16851882.us, i64 16
  %i.akv = load <16 x i8>, ptr %i.aku, align 16, !tbaa !254 ; 3 uses
  %.lobit.i947.us = ashr <16 x i8> %i.akt, splat (i8 7) ; 2 uses
  %.lobit.i946.us = ashr <16 x i8> %i.akv, splat (i8 7) ; 2 uses
  %i.akw = shufflevector <16 x i8> %i.akt, <16 x i8> %.lobit.i947.us, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.akx = shufflevector <16 x i8> %i.akt, <16 x i8> %.lobit.i947.us, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.aky = shufflevector <16 x i8> %i.akv, <16 x i8> %.lobit.i946.us, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.akz = shufflevector <16 x i8> %i.akv, <16 x i8> %.lobit.i946.us, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ala = bitcast <16 x i8> %i.aks to <4 x i32>  ; 4 uses
  %i.alb = shufflevector <4 x i32> %i.ala, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.alc = bitcast <4 x i32> %i.alb to <8 x i16>
  %i.ald = bitcast <16 x i8> %i.akw to <8 x i16>
  %i.ale = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.alc, <8 x i16> %i.ald)
  %i.alf = add <4 x i32> %i.ale, %i.ajn           ; 3 uses
  %i.alg = shufflevector <4 x i32> %i.ala, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.alh = bitcast <4 x i32> %i.alg to <8 x i16>
  %i.ali = bitcast <16 x i8> %i.akx to <8 x i16>
  %i.alj = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.alh, <8 x i16> %i.ali)
  %i.alk = add <4 x i32> %i.alj, %i.ajm           ; 3 uses
  %i.all = shufflevector <4 x i32> %i.ala, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.alm = bitcast <4 x i32> %i.all to <8 x i16>
  %i.aln = bitcast <16 x i8> %i.aky to <8 x i16>
  %i.alo = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.alm, <8 x i16> %i.aln)
  %i.alp = add <4 x i32> %i.alo, %i.ajl           ; 3 uses
  %i.alq = shufflevector <4 x i32> %i.ala, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.alr = bitcast <4 x i32> %i.alq to <8 x i16>
  %i.als = bitcast <16 x i8> %i.akz to <8 x i16>
  %i.alt = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.alr, <8 x i16> %i.als)
  %i.alu = add <4 x i32> %i.alt, %i.ajk           ; 3 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %.16851882.us, i64 32
  %indvars.iv.next2056 = add nuw nsw i64 %indvars.iv2055, 1 ; 2 uses
  %exitcond2061.not = icmp eq i64 %indvars.iv.next2056, %wide.trip.count2060
  br i1 %exitcond2061.not, label %._crit_edge1885.us, label %bb.w, !llvm.loop !1610

._crit_edge1885.us:                               ; preds = %bb.z
  %scevgep2057 = getelementptr i8, ptr %.06841891.us, i64 32
  %scevgep2058 = getelementptr i8, ptr %scevgep2057, i64 %i.ajd ; 2 uses
  %i.alw = add nuw nsw i32 %.06831892.us, 8       ; 2 uses
  %i.alx = or disjoint i32 %i.alw, 7
  %i.aly = icmp slt i32 %i.alx, %i.aif
  br i1 %i.aly, label %.noexc731.us, label %._crit_edge1893.loopexit, !llvm.loop !1611

._crit_edge1893.loopexit:                         ; preds = %._crit_edge1885.us
  %i.alz = and i32 %i.aif, 2147483640
  br label %._crit_edge1893

._crit_edge1893:                                  ; preds = %.noexc731.preheader, %._crit_edge1893.loopexit, %.noexc733
  %.lcssa1677 = phi <4 x i32> [ zeroinitializer, %.noexc733 ], [ %i.alf, %._crit_edge1893.loopexit ], [ zeroinitializer, %.noexc731.preheader ]
  %.lcssa1676 = phi <4 x i32> [ zeroinitializer, %.noexc733 ], [ %i.alk, %._crit_edge1893.loopexit ], [ zeroinitializer, %.noexc731.preheader ]
  %.lcssa1675 = phi <4 x i32> [ zeroinitializer, %.noexc733 ], [ %i.alp, %._crit_edge1893.loopexit ], [ zeroinitializer, %.noexc731.preheader ]
  %.lcssa1674 = phi <4 x i32> [ zeroinitializer, %.noexc733 ], [ %i.alu, %._crit_edge1893.loopexit ], [ zeroinitializer, %.noexc731.preheader ]
  %.0684.lcssa = phi ptr [ %i.aie, %.noexc733 ], [ %scevgep2058, %._crit_edge1893.loopexit ], [ %i.aie, %.noexc731.preheader ] ; 3 uses
  %.0683.lcssa = phi i32 [ 0, %.noexc733 ], [ %i.alz, %._crit_edge1893.loopexit ], [ %i.aiy, %.noexc731.preheader ] ; 5 uses
  %i.ama = add <4 x i32> %.lcssa1676, %.lcssa1677
  %i.amb = add <4 x i32> %i.ama, %.lcssa1675
  %i.amc = add <4 x i32> %i.amb, %.lcssa1674      ; 3 uses
  %i.amd = or disjoint i32 %.0683.lcssa, 1
  %i.ame = icmp slt i32 %i.amd, %i.aif
  br i1 %i.ame, label %.noexc729.lr.ph, label %.preheader

.noexc729.lr.ph:                                  ; preds = %._crit_edge1893
  %i.amf = load i32, ptr %i.s, align 4, !tbaa !75, !noalias !1612
  %i.amg = load ptr, ptr %5, align 8, !tbaa !18, !noalias !1612
  %i.amh = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !1612
  %i.ami = load i64, ptr %i.t, align 8, !tbaa !65, !noalias !1612 ; 2 uses
  %factor.op.mul1922 = mul i64 %i.amh, %i.ami
  %i.amj = sext i32 %i.amf to i64
  %i.amk = load i32, ptr %10, align 4, !tbaa !67
  %i.aml = mul nsw i32 %i.amk, %i.ahx
  %i.amm = sext i32 %i.aml to i64
  %i.amn = mul i64 %i.ami, %i.amj
  %i.amo = mul i64 %i.amn, %i.amm
  %invariant.gep1924 = getelementptr i8, ptr %i.amg, i64 %i.amo
  %i.amp = load i32, ptr %11, align 4, !tbaa !67
  %i.amq = mul nsw i32 %i.amp, %i.ahy
  %i.amr = sext i32 %i.amq to i64
  %invariant.gep1925 = getelementptr i8, ptr %invariant.gep1924, i64 %i.amr
  %i.ams = load i32, ptr %12, align 4, !tbaa !67  ; 3 uses
  %i.amt = icmp sgt i32 %i.ams, 0
  br i1 %i.amt, label %.noexc729.lr.ph.split.us, label %.noexc729.preheader

.noexc729.preheader:                              ; preds = %.noexc729.lr.ph
  %i.amu = or disjoint i32 %.0683.lcssa, 2
  %i.amv = add nsw i32 %i.aif, -2
  %i.amw = sub nsw i32 %i.amv, %.0683.lcssa
  %i.amx = and i32 %i.amw, -2
  %i.amy = add i32 %i.amu, %i.amx
  br label %.preheader

.noexc729.lr.ph.split.us:                         ; preds = %.noexc729.lr.ph
  %i.amz = load ptr, ptr %13, align 8, !tbaa !234
  %i.ana = add nsw i32 %i.ams, -1
  %i.anb = zext nneg i32 %i.ana to i64
  %i.anc = shl nuw nsw i64 %i.anb, 3
  %i.and = zext nneg i32 %.0683.lcssa to i64
  %wide.trip.count2067 = zext nneg i32 %i.ams to i64
  br label %.noexc729.us

.noexc729.us:                                     ; preds = %._crit_edge1914.us, %.noexc729.lr.ph.split.us
  %indvars.iv2069 = phi i64 [ %indvars.iv.next2070, %._crit_edge1914.us ], [ %i.and, %.noexc729.lr.ph.split.us ] ; 2 uses
  %.26861917.us = phi ptr [ %scevgep2065, %._crit_edge1914.us ], [ %.0684.lcssa, %.noexc729.lr.ph.split.us ] ; 2 uses
  %i.ane = phi <4 x i32> [ %i.aod, %._crit_edge1914.us ], [ %i.amc, %.noexc729.lr.ph.split.us ]
  %.reass1923.us = mul i64 %factor.op.mul1922, %indvars.iv2069
  %gep1926.us = getelementptr i8, ptr %invariant.gep1925, i64 %.reass1923.us
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc729.us, %bb.aa
  %indvars.iv2062 = phi i64 [ 0, %.noexc729.us ], [ %indvars.iv.next2063, %bb.aa ] ; 2 uses
  %.31911.us = phi ptr [ %.26861917.us, %.noexc729.us ], [ %i.aoe, %bb.aa ] ; 2 uses
  %i.anf = phi <4 x i32> [ %i.ane, %.noexc729.us ], [ %i.aod, %bb.aa ]
  %i.ang = getelementptr inbounds nuw [4 x i8], ptr %i.amz, i64 %indvars.iv2062
  %i.anh = load i32, ptr %i.ang, align 4, !tbaa !67
  %i.ani = sext i32 %i.anh to i64
  %i.anj = getelementptr inbounds i8, ptr %gep1926.us, i64 %i.ani ; 2 uses
  %i.ank = load i8, ptr %i.anj, align 1, !tbaa !254
  %i.anl = sext i8 %i.ank to i16                  ; 4 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anj, i64 %i.ac
  %i.ann = load i8, ptr %i.anm, align 1, !tbaa !254
  %i.ano = sext i8 %i.ann to i16                  ; 4 uses
  %i.anp = insertelement <8 x i16> poison, i16 %i.anl, i64 0
  %i.anq = insertelement <8 x i16> %i.anp, i16 %i.ano, i64 1
  %i.anr = insertelement <8 x i16> %i.anq, i16 %i.anl, i64 2
  %i.ans = insertelement <8 x i16> %i.anr, i16 %i.ano, i64 3
  %i.ant = insertelement <8 x i16> %i.ans, i16 %i.anl, i64 4
  %i.anu = insertelement <8 x i16> %i.ant, i16 %i.ano, i64 5
  %i.anv = insertelement <8 x i16> %i.anu, i16 %i.anl, i64 6
  %i.anw = insertelement <8 x i16> %i.anv, i16 %i.ano, i64 7
  %i.anx = load i64, ptr %.31911.us, align 1, !tbaa !254
  %i.any = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.anx, i64 0
  %i.anz = bitcast <2 x i64> %i.any to <16 x i8>  ; 2 uses
  %.lobit.i945.us = ashr <16 x i8> %i.anz, splat (i8 7)
  %i.aoa = shufflevector <16 x i8> %i.anz, <16 x i8> %.lobit.i945.us, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.aob = bitcast <16 x i8> %i.aoa to <8 x i16>
  %i.aoc = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.anw, <8 x i16> %i.aob)
  %i.aod = add <4 x i32> %i.aoc, %i.anf           ; 3 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %.31911.us, i64 8
  %indvars.iv.next2063 = add nuw nsw i64 %indvars.iv2062, 1 ; 2 uses
  %exitcond2068.not = icmp eq i64 %indvars.iv.next2063, %wide.trip.count2067
  br i1 %exitcond2068.not, label %._crit_edge1914.us, label %bb.aa, !llvm.loop !1615

._crit_edge1914.us:                               ; preds = %bb.aa
  %scevgep2064 = getelementptr i8, ptr %.26861917.us, i64 8
  %scevgep2065 = getelementptr i8, ptr %scevgep2064, i64 %i.anc ; 2 uses
  %indvars.iv.next2070 = add nuw nsw i64 %indvars.iv2069, 2 ; 3 uses
  %i.aof = trunc i64 %indvars.iv.next2070 to i32
  %i.aog = or i32 %i.aof, 1
  %i.aoh = icmp slt i32 %i.aog, %i.aif
  br i1 %i.aoh, label %.noexc729.us, label %.preheader.loopexit, !llvm.loop !1616

.preheader.loopexit:                              ; preds = %._crit_edge1914.us
  %i.aoi = trunc nuw i64 %indvars.iv.next2070 to i32
  br label %.preheader

.preheader:                                       ; preds = %.noexc729.preheader, %.preheader.loopexit, %._crit_edge1893
  %.lcssa1679 = phi <4 x i32> [ %i.amc, %._crit_edge1893 ], [ %i.aod, %.preheader.loopexit ], [ %i.amc, %.noexc729.preheader ] ; 3 uses
  %.2686.lcssa = phi ptr [ %.0684.lcssa, %._crit_edge1893 ], [ %scevgep2065, %.preheader.loopexit ], [ %.0684.lcssa, %.noexc729.preheader ]
  %.1.lcssa = phi i32 [ %.0683.lcssa, %._crit_edge1893 ], [ %i.aoi, %.preheader.loopexit ], [ %i.amy, %.noexc729.preheader ] ; 2 uses
  %i.aoj = icmp slt i32 %.1.lcssa, %i.aif
  br i1 %i.aoj, label %.noexc.lr.ph, label %._crit_edge1938

.noexc.lr.ph:                                     ; preds = %.preheader
  %i.aok = load i32, ptr %i.s, align 4, !tbaa !75, !noalias !1617
  %i.aol = load ptr, ptr %5, align 8, !tbaa !18, !noalias !1617
  %i.aom = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !1617
  %i.aon = load i64, ptr %i.t, align 8, !tbaa !65, !noalias !1617 ; 2 uses
  %factor.op.mul1940 = mul i64 %i.aom, %i.aon
  %i.aoo = sext i32 %i.aok to i64
  %i.aop = load i32, ptr %10, align 4, !tbaa !67
  %i.aoq = mul nsw i32 %i.aop, %i.ahx
  %i.aor = sext i32 %i.aoq to i64
  %i.aos = mul i64 %i.aon, %i.aoo
  %i.aot = mul i64 %i.aos, %i.aor
  %invariant.gep1942 = getelementptr i8, ptr %i.aol, i64 %i.aot
  %i.aou = load i32, ptr %11, align 4, !tbaa !67
  %i.aov = mul nsw i32 %i.aou, %i.ahy
  %i.aow = sext i32 %i.aov to i64
  %invariant.gep1943 = getelementptr i8, ptr %invariant.gep1942, i64 %i.aow
  %i.aox = load i32, ptr %12, align 4, !tbaa !67  ; 3 uses
  %i.aoy = icmp sgt i32 %i.aox, 0
  br i1 %i.aoy, label %.noexc.lr.ph.split.us, label %._crit_edge1938

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.aoz = load ptr, ptr %13, align 8, !tbaa !234
  %i.apa = add nsw i32 %i.aox, -1
  %i.apb = zext nneg i32 %i.apa to i64
  %i.apc = shl nuw nsw i64 %i.apb, 2
  %i.apd = zext i32 %.1.lcssa to i64
  %wide.trip.count2077 = zext nneg i32 %i.aox to i64
  br label %.noexc.us

.noexc.us:                                        ; preds = %._crit_edge1933.us, %.noexc.lr.ph.split.us
  %indvars.iv2079 = phi i64 [ %indvars.iv.next2080, %._crit_edge1933.us ], [ %i.apd, %.noexc.lr.ph.split.us ] ; 2 uses
  %.41936.us = phi ptr [ %scevgep2075, %._crit_edge1933.us ], [ %.2686.lcssa, %.noexc.lr.ph.split.us ] ; 2 uses
  %i.ape = phi <4 x i32> [ %i.apx, %._crit_edge1933.us ], [ %.lcssa1679, %.noexc.lr.ph.split.us ]
  %.reass1941.us = mul i64 %factor.op.mul1940, %indvars.iv2079
  %gep1944.us = getelementptr i8, ptr %invariant.gep1943, i64 %.reass1941.us
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc.us, %bb.ab
  %indvars.iv2072 = phi i64 [ 0, %.noexc.us ], [ %indvars.iv.next2073, %bb.ab ] ; 2 uses
  %.51930.us = phi ptr [ %.41936.us, %.noexc.us ], [ %i.apy, %bb.ab ] ; 2 uses
  %i.apf = phi <4 x i32> [ %i.ape, %.noexc.us ], [ %i.apx, %bb.ab ]
  %i.apg = getelementptr inbounds nuw [4 x i8], ptr %i.aoz, i64 %indvars.iv2072
  %i.aph = load i32, ptr %i.apg, align 4, !tbaa !67
  %i.api = sext i32 %i.aph to i64
  %i.apj = getelementptr inbounds i8, ptr %gep1944.us, i64 %i.api
  %i.apk = load i8, ptr %i.apj, align 1, !tbaa !254
  %i.apl = sext i8 %i.apk to i16
  %i.apm = insertelement <8 x i16> poison, i16 %i.apl, i64 0
  %i.apn = shufflevector <8 x i16> %i.apm, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.apo = load i64, ptr %.51930.us, align 1, !tbaa !254
  %i.app = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.apo, i64 0
  %i.apq = bitcast <2 x i64> %i.app to <16 x i8>  ; 2 uses
  %.lobit.i.us = ashr <16 x i8> %i.apq, splat (i8 7)
  %i.apr = shufflevector <16 x i8> %i.apq, <16 x i8> %.lobit.i.us, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.aps = bitcast <16 x i8> %i.apr to <8 x i16>  ; 2 uses
  %i.apt = mul <8 x i16> %i.apn, %i.aps
  %i.apu = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.apn, <8 x i16> %i.aps)
  %i.apv = shufflevector <8 x i16> %i.apt, <8 x i16> %i.apu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.apw = bitcast <8 x i16> %i.apv to <4 x i32>
  %i.apx = add <4 x i32> %i.apf, %i.apw           ; 3 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %.51930.us, i64 4
  %indvars.iv.next2073 = add nuw nsw i64 %indvars.iv2072, 1 ; 2 uses
  %exitcond2078.not = icmp eq i64 %indvars.iv.next2073, %wide.trip.count2077
  br i1 %exitcond2078.not, label %._crit_edge1933.us, label %bb.ab, !llvm.loop !1620

._crit_edge1933.us:                               ; preds = %bb.ab
  %scevgep2074 = getelementptr i8, ptr %.41936.us, i64 4
  %scevgep2075 = getelementptr i8, ptr %scevgep2074, i64 %i.apc
  %indvars.iv.next2080 = add nuw nsw i64 %indvars.iv2079, 1 ; 2 uses
  %i.apz = trunc nuw i64 %indvars.iv.next2080 to i32
  %i.aqa = icmp sgt i32 %i.aif, %i.apz
  br i1 %i.aqa, label %.noexc.us, label %._crit_edge1938, !llvm.loop !1621

._crit_edge1938:                                  ; preds = %._crit_edge1933.us, %.noexc.lr.ph, %.preheader
  %.lcssa1681 = phi <4 x i32> [ %.lcssa1679, %.preheader ], [ %.lcssa1679, %.noexc.lr.ph ], [ %i.apx, %._crit_edge1933.us ] ; 5 uses
  %i.aqb = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.aqc = icmp eq i32 %i.aqb, 4
  br i1 %i.aqc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %._crit_edge1938
  store <4 x i32> %.lcssa1681, ptr %.61947, align 16, !tbaa !254
  %i.aqd = getelementptr inbounds nuw i8, ptr %.61947, i64 16
  %.pr1619 = load i32, ptr %7, align 4, !tbaa !67
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge1938
  %i.aqe = phi i32 [ %.pr1619, %bb.ac ], [ %i.aqb, %._crit_edge1938 ]
  %.7 = phi ptr [ %i.aqd, %bb.ac ], [ %.61947, %._crit_edge1938 ] ; 6 uses
  %i.aqf = icmp eq i32 %i.aqe, 1
  br i1 %i.aqf, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %.lcssa1681, i64 0
  store i32 %.sroa.0.0.vec.extract, ptr %.7, align 4, !tbaa !67
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %.lcssa1681, i64 1
  %i.aqg = getelementptr inbounds nuw [4 x i8], ptr %.7, i64 %i.ag
  store i32 %.sroa.0.4.vec.extract, ptr %i.aqg, align 4, !tbaa !67
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %.lcssa1681, i64 2
  %i.aqh = getelementptr inbounds nuw i8, ptr %.7, i64 %.idx
  store i32 %.sroa.0.8.vec.extract, ptr %i.aqh, align 4, !tbaa !67
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %.lcssa1681, i64 3
  %i.aqi = getelementptr inbounds nuw i8, ptr %.7, i64 %.idx728
  store i32 %.sroa.0.12.vec.extract, ptr %i.aqi, align 4, !tbaa !67
  %i.aqj = getelementptr inbounds nuw i8, ptr %.7, i64 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.8 = phi ptr [ %i.aqj, %bb.ae ], [ %.7, %bb.ad ]
  %i.aqk = add nuw nsw i32 %.26951946, 1          ; 2 uses
  %exitcond2082.not = icmp eq i32 %i.aqk, %i.ao
  br i1 %exitcond2082.not, label %._crit_edge1948, label %.noexc733, !llvm.loop !1622

._crit_edge1948:                                  ; preds = %bb.af, %.preheader1628
  %i.aql = add nsw i32 %.01950, 1
  %i.aqm = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.01950, %i.aqm
  br i1 %.not.not, label %_ZN4ncnn3MatD2Ev.exit798, label %._crit_edge1951

._crit_edge1951:                                  ; preds = %._crit_edge1948, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
end_hunk_18
begin_hunk_19_@_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.dd = icmp eq i32 %i.dc, 1
  br i1 %i.dd, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit33

bb.g:                                             ; preds = %bb.f
  %i.de = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 3 uses
  %.not3.i36 = icmp eq ptr %i.de, null
  %i.df = load ptr, ptr %12, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !9
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  invoke void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef %i.df)
          to label %_ZN4ncnn3MatD2Ev.exit33 unwind label %bb.k, !inline_history !19

bb.i:                                             ; preds = %bb.g
  %.not.i44 = icmp eq ptr %i.df, null
  br i1 %.not.i44, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.df) #12
  br label %_ZN4ncnn3MatD2Ev.exit33

bb.k:                                             ; preds = %bb.h
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit33:                          ; preds = %bb.f, %_ZN4ncnn3Mat7channelEi.exit48, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.dl = load ptr, ptr %i.v, align 8, !tbaa !11  ; 2 uses
  %.not.i39 = icmp eq ptr %i.dl, null
  br i1 %.not.i39, label %_ZN4ncnn3MatD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit33
  %i.dm = atomicrmw add ptr %i.dl, i32 -1 acq_rel, align 4
  %i.dn = icmp eq i32 %i.dm, 1
  br i1 %i.dn, label %bb.m, label %_ZN4ncnn3MatD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.do = load ptr, ptr %i.y, align 8, !tbaa !17  ; 3 uses
  %.not3.i40 = icmp eq ptr %i.do, null
  %i.dp = load ptr, ptr %11, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !9
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.dp)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.q, !inline_history !19

bb.o:                                             ; preds = %bb.m
  %.not.i43 = icmp eq ptr %i.dp, null
  br i1 %.not.i43, label %_ZN4ncnn3MatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.dp) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.q:                                             ; preds = %bb.n
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.l, %_ZN4ncnn3MatD2Ev.exit33, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.dv = add nsw i32 %.067, 1
  %i.dw = load i32, ptr %i.e, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.067, %i.dw
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.s:                                             ; preds = %bb.c
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #27
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.14(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %15) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x [4 x [4 x float]]], align 16 ; 11 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %17 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  %indvars.iv.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.bm

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 %i.h, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 1, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 0, ptr %i.e, align 4, !tbaa !67
  %i.i = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.e, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.d, i32 1, i32 1)
  %i.j = load i32, ptr %i.c, align 4, !tbaa !67
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 2 uses
  store i32 %i.k, ptr %i.c, align 4, !tbaa !67
  %i.l = load i32, ptr %i.b, align 4, !tbaa !67   ; 2 uses
  %.not154 = icmp sgt i32 %i.l, %i.k
  br i1 %.not154, label %._crit_edge158, label %.lr.ph157

.lr.ph157:                                        ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 44
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 44
  %i.an = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph157, %_ZN4ncnn3MatD2Ev.exit
  %.048155 = phi i32 [ %i.l, %.lr.ph157 ], [ %i.bt, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.az = load i32, ptr %3, align 4, !tbaa !67
  %i.ba = mul nsw i32 %i.az, %.048155             ; 4 uses
  %i.bb = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit79 unwind label %bb.bn

_ZN4ncnn3Mat7channelEi.exit79:                    ; preds = %bb.c
  %i.bc = load ptr, ptr %4, align 8, !tbaa !18, !noalias !1704
  %i.bd = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !1704
  %i.be = sext i32 %i.bb to i64
  %i.bf = mul i64 %i.bd, %i.be
  %i.bg = load i64, ptr %i.n, align 8, !tbaa !65, !noalias !1704
  %i.bh = mul i64 %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bh ; 4 uses
  %i.bj = load i32, ptr %5, align 4, !tbaa !67
  %i.bk = sub nsw i32 %i.bj, %i.ba
  %i.bl = load i32, ptr %3, align 4, !tbaa !67
  %.sroa.speculated123 = call i32 @llvm.smin.i32(i32 %i.bl, i32 %i.bk) ; 8 uses
  %i.bm = load i32, ptr %6, align 4, !tbaa !67    ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit79
  %i.bo = icmp sgt i32 %.sroa.speculated123, 3
  %i.bp = sext i32 %i.ba to i64                   ; 3 uses
  %i.bq = and i32 %.sroa.speculated123, 2147483644
  %i.br = zext nneg i32 %.sroa.speculated123 to i64
  %18 = add i32 %.sroa.speculated123, -2
  %i.bs = sext i32 %.sroa.speculated123 to i64    ; 2 uses
  %invariant.op.i = add nsw i64 %i.bs, -1
  %.pre = load i32, ptr %7, align 4, !tbaa !67
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit, %_ZN4ncnn3Mat7channelEi.exit79
  %i.bt = add nsw i32 %.048155, 1
  %i.bu = load i32, ptr %i.c, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.048155, %i.bu
  br i1 %.not.not, label %bb.c, label %._crit_edge158

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit
  %i.bv = phi i32 [ %.pre, %.lr.ph ], [ %i.arz, %_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit ]
  %i.bw = phi i32 [ %i.bm, %.lr.ph ], [ %i.asb, %_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit ]
  %.047153 = phi i32 [ 0, %.lr.ph ], [ %i.asa, %_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit ] ; 6 uses
  %i.bx = sub nsw i32 %i.bw, %.047153
  %.sroa.speculated119 = call i32 @llvm.smin.i32(i32 %i.bv, i32 %i.bx) ; 19 uses
  %i.by = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %bb.d
  %.pre159 = load i32, ptr %9, align 4, !tbaa !67
  br label %.noexc

._crit_edge:                                      ; preds = %.noexc, %bb.d
  %i.ca = load i32, ptr %14, align 4, !tbaa !67   ; 5 uses
  %.val = load ptr, ptr %13, align 8, !tbaa !18   ; 6 uses
  %i.cb = load i32, ptr %i.ao, align 4, !tbaa !75 ; 7 uses
  %i.cc = load i32, ptr %i.ap, align 8, !tbaa !76 ; 5 uses
  %i.cd = load i32, ptr %i.aq, align 8, !tbaa !66 ; 5 uses
  %i.ce = load i64, ptr %i.ar, align 8, !tbaa !20
  %i.cf = sext i32 %i.cd to i64
  %i.cg = mul i64 %i.ce, %i.cf                    ; 5 uses
  %i.ch = add nsw i32 %i.cb, 1
  %i.ci = sdiv i32 %i.ch, 2                       ; 6 uses
  %factor.op.mul517.i = shl i32 %.sroa.speculated119, 4 ; 4 uses
  br i1 %i.bo, label %.lr.ph520.i, label %.preheader508.i

.lr.ph520.i:                                      ; preds = %._crit_edge
  %.not351.i = icmp eq ptr %.val, null
  %i.cj = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.bp
  %i.ck = icmp sgt i32 %.sroa.speculated119, 0
  %i.cl = shl nsw i32 %.sroa.speculated119, 2
  %i.cm = sext i32 %i.cl to i64
  %i.cn = shl nsw i32 %.sroa.speculated119, 3
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i32 %.sroa.speculated119, 12
  %i.cq = sext i32 %i.cp to i64
  %i.cr = sext i32 %factor.op.mul517.i to i64     ; 12 uses
  %.idx.i = shl i64 %i.cg, 2
  %.idx353.i = mul i64 %i.cg, 6
  %i.cs = mul nsw i32 %i.cd, %i.cb
  %i.ct = sext i32 %i.cs to i64
  br i1 %i.ck, label %.lr.ph520.split.us.preheader.i, label %.preheader508.i

.lr.ph520.split.us.preheader.i:                   ; preds = %.lr.ph520.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated119 to i64
  br label %.lr.ph520.split.us.i

.lr.ph520.split.us.i:                             ; preds = %._crit_edge.us.i, %.lr.ph520.split.us.preheader.i
  %indvars.iv583.i = phi i64 [ 0, %.lr.ph520.split.us.preheader.i ], [ %indvars.iv.next584.i, %._crit_edge.us.i ] ; 3 uses
  br i1 %.not351.i, label %.lr.ph.us.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph520.split.us.i
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv583.i
  %i.cv = load <4 x float>, ptr %i.cu, align 1, !tbaa !254
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.e, %.lr.ph520.split.us.i
  %i.cw = phi fast <4 x float> [ %i.cv, %bb.e ], [ zeroinitializer, %.lr.ph520.split.us.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.cx = trunc nuw nsw i64 %indvars.iv583.i to i32 ; 2 uses
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul517.i, %i.cx
  %i.cy = sext i32 %factor.op.mul.reass.us.i to i64
  %i.cz = add i32 %i.ba, %i.cx
  %i.da = sdiv i32 %i.cz, %i.cd
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.cy
  br label %_ZN4ncnn3MatD2Ev.exit355.us.i

_ZN4ncnn3MatD2Ev.exit355.us.i:                    ; preds = %bb.n, %.lr.ph.us.i
  %indvars.iv580.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next581.i, %bb.n ] ; 3 uses
  %.idx659.i.a = shl nuw nsw i64 %indvars.iv580.i, 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.idx659.i.a ; 5 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.cm ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.co ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.cq ; 2 uses
  %i.dh = load <4 x float>, ptr %i.dd, align 16, !tbaa !254
  %i.di = load <4 x float>, ptr %i.de, align 16, !tbaa !254 ; 2 uses
  %i.dj = load <4 x float>, ptr %i.df, align 16, !tbaa !254 ; 2 uses
  %i.dk = load <4 x float>, ptr %i.dg, align 16, !tbaa !254
  %i.dl = fadd fast <4 x float> %i.di, %i.dh
  %i.dm = fadd fast <4 x float> %i.dl, %i.dj
  %i.dn = fsub fast <4 x float> %i.di, %i.dj
  %i.do = fadd fast <4 x float> %i.dn, %i.dk
  store <4 x float> %i.dm, ptr %i.a, align 16, !tbaa !254
  store <4 x float> %i.do, ptr %indvars.iv.i.sroa.gep, align 16, !tbaa !254
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.cr ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.cr ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.cr ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.cr ; 2 uses
  %i.dt = load <4 x float>, ptr %i.dp, align 16, !tbaa !254
  %i.du = load <4 x float>, ptr %i.dq, align 16, !tbaa !254 ; 2 uses
  %i.dv = load <4 x float>, ptr %i.dr, align 16, !tbaa !254 ; 2 uses
  %i.dw = load <4 x float>, ptr %i.ds, align 16, !tbaa !254
  %i.dx = fadd fast <4 x float> %i.du, %i.dt
  %i.dy = fadd fast <4 x float> %i.dx, %i.dv
  %i.dz = fsub fast <4 x float> %i.du, %i.dv
  %i.ea = fadd fast <4 x float> %i.dz, %i.dw
  store <4 x float> %i.dy, ptr %i.at, align 16, !tbaa !254
  store <4 x float> %i.ea, ptr %i.au, align 16, !tbaa !254
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.cr ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.cr ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.cr ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.cr ; 2 uses
  %i.ef = load <4 x float>, ptr %i.eb, align 16, !tbaa !254
  %i.eg = load <4 x float>, ptr %i.ec, align 16, !tbaa !254 ; 2 uses
  %i.eh = load <4 x float>, ptr %i.ed, align 16, !tbaa !254 ; 2 uses
  %i.ei = load <4 x float>, ptr %i.ee, align 16, !tbaa !254
  %i.ej = fadd fast <4 x float> %i.eg, %i.ef
  %i.ek = fadd fast <4 x float> %i.ej, %i.eh
  %i.el = fsub fast <4 x float> %i.eg, %i.eh
  %i.em = fadd fast <4 x float> %i.el, %i.ei
  store <4 x float> %i.ek, ptr %i.av, align 16, !tbaa !254
  store <4 x float> %i.em, ptr %i.aw, align 16, !tbaa !254
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.cr
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.cr
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.cr
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.cr
  %i.er = load <4 x float>, ptr %i.en, align 16, !tbaa !254
  %i.es = load <4 x float>, ptr %i.eo, align 16, !tbaa !254 ; 2 uses
  %i.et = load <4 x float>, ptr %i.ep, align 16, !tbaa !254 ; 2 uses
  %i.eu = load <4 x float>, ptr %i.eq, align 16, !tbaa !254
  %i.ev = fadd fast <4 x float> %i.es, %i.er
  %i.ew = fadd fast <4 x float> %i.ev, %i.et
  %i.ex = fsub fast <4 x float> %i.es, %i.et
  %i.ey = fadd fast <4 x float> %i.ex, %i.eu
  store <4 x float> %i.ew, ptr %i.ax, align 16, !tbaa !254
  store <4 x float> %i.ey, ptr %i.ay, align 16, !tbaa !254
  %i.ez = trunc i64 %indvars.iv580.i to i32
  %i.fa = add i32 %.047153, %i.ez                 ; 2 uses
  %i.fb = sdiv i32 %i.fa, %i.ci
  %i.fc = srem i32 %i.fa, %i.ci
  %i.fd = load i32, ptr %i.ao, align 4, !tbaa !75, !noalias !1707
  %i.fe = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1707
  %i.ff = load i64, ptr %i.ar, align 8, !tbaa !20, !noalias !1707
  %i.fg = mul i64 %i.ff, %i.db
  %i.fh = load i64, ptr %i.as, align 8, !tbaa !65, !noalias !1707 ; 2 uses
  %i.fi = mul i64 %i.fg, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fi
  %i.fk = sext i32 %i.fd to i64
  %i.fl = shl nsw i32 %i.fb, 1                    ; 2 uses
  %i.fm = sext i32 %i.fl to i64
  %i.fn = mul nsw i64 %i.fk, %i.fm
  %i.fo = mul i64 %i.fn, %i.fh
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fo
  %i.fq = shl nsw i32 %i.fc, 1                    ; 2 uses
  %i.fr = mul nsw i32 %i.fq, %i.cd
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [2 x i8], ptr %i.fp, i64 %i.fs
  %i.fu = or disjoint i32 %i.fq, 1
  %i.fv = icmp slt i32 %i.fu, %i.cb               ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.m, %_ZN4ncnn3MatD2Ev.exit355.us.i
  %i.fw = phi i1 [ false, %bb.m ], [ true, %_ZN4ncnn3MatD2Ev.exit355.us.i ]
  %indvars.iv.i.sroa.phi = phi ptr [ %indvars.iv.i.sroa.gep, %bb.m ], [ %i.a, %_ZN4ncnn3MatD2Ev.exit355.us.i ] ; 4 uses
  %indvars.iv.i = phi i32 [ 1, %bb.m ], [ 0, %_ZN4ncnn3MatD2Ev.exit355.us.i ]
  %.0332514.us.i = phi ptr [ %.1333.us.i, %bb.m ], [ %i.ft, %_ZN4ncnn3MatD2Ev.exit355.us.i ] ; 9 uses
  %i.fx = or disjoint i32 %indvars.iv.i, %i.fl
  %.not352.us.i = icmp slt i32 %i.fx, %i.cc
  br i1 %.not352.us.i, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.fy = load <4 x float>, ptr %indvars.iv.i.sroa.phi, align 1, !tbaa !254
  %i.fz = getelementptr inbounds nuw i8, ptr %indvars.iv.i.sroa.phi, i64 16
  %i.ga = load <4 x float>, ptr %i.fz, align 1, !tbaa !254
  %i.gb = getelementptr inbounds nuw i8, ptr %indvars.iv.i.sroa.phi, i64 32
  %i.gc = load <4 x float>, ptr %i.gb, align 1, !tbaa !254 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %indvars.iv.i.sroa.phi, i64 48
  %i.ge = load <4 x float>, ptr %i.gd, align 1, !tbaa !254
  %i.gf = fadd fast <4 x float> %i.ga, %i.cw      ; 2 uses
  %i.gg = fadd fast <4 x float> %i.gf, %i.fy
  %i.gh = fadd fast <4 x float> %i.gg, %i.gc      ; 10 uses
  %i.gi = fsub fast <4 x float> %i.gf, %i.gc
  %i.gj = fadd fast <4 x float> %i.gi, %i.ge      ; 10 uses
  switch i32 %i.ca, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread.us.i
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread357.us.i
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread360.us.i
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread363.us.i
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread366.us.i
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread369.us.i
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread369.us.i: ; preds = %bb.g
  %i.gk = load ptr, ptr %15, align 8, !tbaa !18   ; 2 uses
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !39
  %i.gm = insertelement <4 x float> poison, float %i.gl, i64 0
end_hunk_19
begin_hunk_20_@_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.14:bb.a
  %i.on = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nw)
  %i.oo = shl <4 x i32> %i.on, splat (i32 23)
  %i.op = add <4 x i32> %i.oo, splat (i32 1065353216)
  %i.oq = bitcast <4 x i32> %i.op to <4 x float>
  %i.or = fmul fast <4 x float> %i.om, %i.oq
  %i.os = fadd fast <4 x float> %i.or, splat (float 1.000000e+00)
  %i.ot = fdiv fast <4 x float> splat (float 2.000000e+00), %i.os
  %i.ou = fadd fast <4 x float> %i.ot, splat (float -1.000000e+00)
  %i.ov = fmul fast <4 x float> %i.ou, %i.gj
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread363.us.i: ; preds = %bb.g
  %i.ow = fneg fast <4 x float> %i.gh
  %i.ox = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ow, <4 x float> splat (float f0x42B0C0A5))
  %i.oy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ox, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.oz = fmul fast <4 x float> %i.oy, splat (float f0x3FB8AA3B)
  %i.pa = fadd fast <4 x float> %i.oz, splat (float 5.000000e-01) ; 2 uses
  %i.pb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pa)
  %i.pc = sitofp fast <4 x i32> %i.pb to <4 x float> ; 2 uses
  %i.pd = fcmp fast olt <4 x float> %i.pa, %i.pc
  %i.pe = select <4 x i1> %i.pd, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.pf = fsub fast <4 x float> %i.pc, %i.pe      ; 2 uses
  %i.pg = fmul fast <4 x float> %i.pf, splat (float f0x3F317218)
  %i.ph = fsub fast <4 x float> %i.oy, %i.pg      ; 8 uses
  %i.pi = fmul fast <4 x float> %i.ph, %i.ph
  %i.pj = fmul fast <4 x float> %i.ph, splat (float f0x39506967)
  %i.pk = fadd fast <4 x float> %i.pj, splat (float f0x3AB743CE)
  %i.pl = fmul fast <4 x float> %i.pk, %i.ph
  %i.pm = fadd fast <4 x float> %i.pl, splat (float f0x3C088908)
  %i.pn = fmul fast <4 x float> %i.pm, %i.ph
  %i.po = fadd fast <4 x float> %i.pn, splat (float f0x3D2AA9C1)
  %i.pp = fmul fast <4 x float> %i.po, %i.ph
  %i.pq = fadd fast <4 x float> %i.pp, splat (float f0x3E2AAAAA)
  %i.pr = fmul fast <4 x float> %i.pq, %i.ph
  %i.ps = fadd fast <4 x float> %i.pr, splat (float 5.000000e-01)
  %i.pt = fmul fast <4 x float> %i.pi, %i.ps
  %i.pu = fadd fast <4 x float> %i.ph, %i.pt
  %i.pv = fadd fast <4 x float> %i.pu, splat (float 1.000000e+00)
  %i.pw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pf)
  %i.px = shl <4 x i32> %i.pw, splat (i32 23)
  %i.py = add <4 x i32> %i.px, splat (i32 1065353216)
  %i.pz = bitcast <4 x i32> %i.py to <4 x float>
  %i.qa = fmul fast <4 x float> %i.pv, %i.pz
  %i.qb = fadd fast <4 x float> %i.qa, splat (float 1.000000e+00)
  %i.qc = fdiv fast <4 x float> splat (float 1.000000e+00), %i.qb
  %i.qd = fneg fast <4 x float> %i.gj
  %i.qe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.qd, <4 x float> splat (float f0x42B0C0A5))
  %i.qf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.qe, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.qg = fmul fast <4 x float> %i.qf, splat (float f0x3FB8AA3B)
  %i.qh = fadd fast <4 x float> %i.qg, splat (float 5.000000e-01) ; 2 uses
  %i.qi = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qh)
  %i.qj = sitofp fast <4 x i32> %i.qi to <4 x float> ; 2 uses
  %i.qk = fcmp fast olt <4 x float> %i.qh, %i.qj
  %i.ql = select <4 x i1> %i.qk, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.qm = fsub fast <4 x float> %i.qj, %i.ql      ; 2 uses
  %i.qn = fmul fast <4 x float> %i.qm, splat (float f0x3F317218)
  %i.qo = fsub fast <4 x float> %i.qf, %i.qn      ; 8 uses
  %i.qp = fmul fast <4 x float> %i.qo, %i.qo
  %i.qq = fmul fast <4 x float> %i.qo, splat (float f0x39506967)
  %i.qr = fadd fast <4 x float> %i.qq, splat (float f0x3AB743CE)
  %i.qs = fmul fast <4 x float> %i.qr, %i.qo
  %i.qt = fadd fast <4 x float> %i.qs, splat (float f0x3C088908)
  %i.qu = fmul fast <4 x float> %i.qt, %i.qo
  %i.qv = fadd fast <4 x float> %i.qu, splat (float f0x3D2AA9C1)
  %i.qw = fmul fast <4 x float> %i.qv, %i.qo
  %i.qx = fadd fast <4 x float> %i.qw, splat (float f0x3E2AAAAA)
  %i.qy = fmul fast <4 x float> %i.qx, %i.qo
  %i.qz = fadd fast <4 x float> %i.qy, splat (float 5.000000e-01)
  %i.ra = fmul fast <4 x float> %i.qp, %i.qz
  %i.rb = fadd fast <4 x float> %i.qo, %i.ra
  %i.rc = fadd fast <4 x float> %i.rb, splat (float 1.000000e+00)
  %i.rd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qm)
  %i.re = shl <4 x i32> %i.rd, splat (i32 23)
  %i.rf = add <4 x i32> %i.re, splat (i32 1065353216)
  %i.rg = bitcast <4 x i32> %i.rf to <4 x float>
  %i.rh = fmul fast <4 x float> %i.rc, %i.rg
  %i.ri = fadd fast <4 x float> %i.rh, splat (float 1.000000e+00)
  %i.rj = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ri
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread360.us.i: ; preds = %bb.g
  %i.rk = load ptr, ptr %15, align 8, !tbaa !18   ; 2 uses
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !39
  %i.rm = insertelement <4 x float> poison, float %i.rl, i64 0
  %i.rn = shufflevector <4 x float> %i.rm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rk, i64 4
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !39
  %i.rq = insertelement <4 x float> poison, float %i.rp, i64 0
  %i.rr = shufflevector <4 x float> %i.rq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.rs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gh, <4 x float> nofpclass(nan inf) %i.rn)
  %i.rt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.rs, <4 x float> nofpclass(nan inf) %i.rr)
  %i.ru = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gj, <4 x float> nofpclass(nan inf) %i.rn)
  %i.rv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ru, <4 x float> nofpclass(nan inf) %i.rr)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread357.us.i: ; preds = %bb.g
  %i.rw = load ptr, ptr %15, align 8, !tbaa !18
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !39
  %i.ry = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.gh)
  %i.rz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.gh)
  %i.sa = insertelement <4 x float> poison, float %i.rx, i64 0
  %i.sb = shufflevector <4 x float> %i.sa, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.sc = fmul fast <4 x float> %i.sb, %i.rz
  %i.sd = fadd fast <4 x float> %i.sc, %i.ry
  %i.se = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.gj)
  %i.sf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.gj)
  %i.sg = fmul fast <4 x float> %i.sf, %i.sb
  %i.sh = fadd fast <4 x float> %i.sg, %i.se
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread.us.i: ; preds = %bb.g
  %i.si = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gh, <4 x float> zeroinitializer)
  %i.sj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gj, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i: ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread357.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread360.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread363.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread366.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread369.us.i, %bb.g
  %.0.i371356.us.i = phi <4 x float> [ %i.gw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread369.us.i ], [ %i.si, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread.us.i ], [ %i.sd, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread357.us.i ], [ %i.rt, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread360.us.i ], [ %i.qc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread363.us.i ], [ %i.ky, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread366.us.i ], [ %i.gh, %bb.g ] ; 2 uses
  %.0.i.us.i = phi nsz <4 x float> [ %i.hb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread369.us.i ], [ %i.sj, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread.us.i ], [ %i.sh, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread357.us.i ], [ %i.rv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread360.us.i ], [ %i.rj, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread363.us.i ], [ %i.ov, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread366.us.i ], [ %i.gj, %bb.g ] ; 2 uses
  switch i32 %i.cd, label %bb.l [
    i32 4, label %bb.j
    i32 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i
  %i.sk = getelementptr inbounds nuw [2 x i8], ptr %.0332514.us.i, i64 %i.cg ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %.0332514.us.i, i64 %.idx.i ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %.0332514.us.i, i64 %.idx353.i ; 2 uses
  %i.sn = bitcast <4 x float> %.0.i371356.us.i to <8 x i16> ; 4 uses
  %i.so = extractelement <8 x i16> %i.sn, i64 1
  store i16 %i.so, ptr %.0332514.us.i, align 2, !tbaa !394
  %i.sp = extractelement <8 x i16> %i.sn, i64 3
  store i16 %i.sp, ptr %i.sk, align 2, !tbaa !394
  %i.sq = extractelement <8 x i16> %i.sn, i64 5
  store i16 %i.sq, ptr %i.sl, align 2, !tbaa !394
  %i.sr = extractelement <8 x i16> %i.sn, i64 7
  store i16 %i.sr, ptr %i.sm, align 2, !tbaa !394
  br i1 %i.fv, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ss = bitcast <4 x float> %.0.i.us.i to <8 x i16> ; 4 uses
  %i.st = extractelement <8 x i16> %i.ss, i64 1
  %i.su = getelementptr inbounds nuw i8, ptr %.0332514.us.i, i64 2
  store i16 %i.st, ptr %i.su, align 2, !tbaa !394
  %i.sv = extractelement <8 x i16> %i.ss, i64 3
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sk, i64 2
  store i16 %i.sv, ptr %i.sw, align 2, !tbaa !394
  %i.sx = extractelement <8 x i16> %i.ss, i64 5
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sl, i64 2
  store i16 %i.sx, ptr %i.sy, align 2, !tbaa !394
  %i.sz = extractelement <8 x i16> %i.ss, i64 7
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sm, i64 2
  store i16 %i.sz, ptr %i.ta, align 2, !tbaa !394
  br label %bb.l

bb.j:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i
  %i.tb = bitcast <4 x float> %.0.i371356.us.i to <8 x i16>
  %i.tc = shufflevector <8 x i16> %i.tb, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.td = bitcast <8 x i16> %i.tc to <4 x float>
  %i.te = shufflevector <4 x float> %i.td, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.tf = bitcast <4 x float> %i.te to <2 x i64>
  %i.tg = extractelement <2 x i64> %i.tf, i64 0
  store i64 %i.tg, ptr %.0332514.us.i, align 1, !tbaa !254
  br i1 %i.fv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.th = getelementptr inbounds nuw i8, ptr %.0332514.us.i, i64 8
  %i.ti = bitcast <4 x float> %.0.i.us.i to <8 x i16>
  %i.tj = shufflevector <8 x i16> %i.ti, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.tk = bitcast <8 x i16> %i.tj to <4 x float>
  %i.tl = shufflevector <4 x float> %i.tk, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.tm = bitcast <4 x float> %i.tl to <2 x i64>
  %i.tn = extractelement <2 x i64> %i.tm, i64 0
  store i64 %i.tn, ptr %i.th, align 1, !tbaa !254
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i
  %i.to = getelementptr inbounds [2 x i8], ptr %.0332514.us.i, i64 %i.ct
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %.1333.us.i = phi ptr [ %.0332514.us.i, %bb.f ], [ %i.to, %bb.l ]
  br i1 %i.fw, label %bb.f, label %bb.n, !llvm.loop !1710

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next581.i = add nuw nsw i64 %indvars.iv580.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next581.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %_ZN4ncnn3MatD2Ev.exit355.us.i, !llvm.loop !1711

._crit_edge.us.i:                                 ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %indvars.iv.next584.i = add nuw nsw i64 %indvars.iv583.i, 4 ; 3 uses
  %i.tp = or disjoint i64 %indvars.iv.next584.i, 3
  %i.tq = icmp samesign ult i64 %i.tp, %i.br
  br i1 %i.tq, label %.lr.ph520.split.us.i, label %.preheader508.loopexit.i, !llvm.loop !1712

.preheader508.loopexit.i:                         ; preds = %._crit_edge.us.i
  %i.tr = trunc nuw nsw i64 %indvars.iv.next584.i to i32
  br label %.preheader508.i

.preheader508.i:                                  ; preds = %.lr.ph520.i, %.preheader508.loopexit.i, %._crit_edge
  %.0340.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.tr, %.preheader508.loopexit.i ], [ %i.bq, %.lr.ph520.i ] ; 5 uses
  %i.ts = or disjoint i32 %.0340.lcssa.i, 1
  %i.tt = icmp slt i32 %i.ts, %.sroa.speculated123
  br i1 %i.tt, label %.lr.ph536.i, label %.preheader.i

.lr.ph536.i:                                      ; preds = %.preheader508.i
  %.not349.i = icmp eq ptr %.val, null
  %i.tu = icmp sgt i32 %.sroa.speculated119, 0
  %i.tv = shl nsw i32 %.sroa.speculated119, 1
  %i.tw = sext i32 %i.tv to i64
  %i.tx = shl nsw i32 %.sroa.speculated119, 2
  %i.ty = sext i32 %i.tx to i64
  %i.tz = mul nsw i32 %.sroa.speculated119, 6
  %i.ua = sext i32 %i.tz to i64
  %i.ub = shl nsw i32 %.sroa.speculated119, 3
  %i.uc = sext i32 %i.ub to i64                   ; 12 uses
  %i.ud = sext i32 %i.cb to i64
  br i1 %i.tu, label %.lr.ph536.split.us.i, label %.lr.ph536.split.i

.lr.ph536.split.us.i:                             ; preds = %.lr.ph536.i
  %i.ue = load i32, ptr %i.ao, align 4, !tbaa !75, !noalias !1713
  %i.uf = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1713
  %i.ug = load i64, ptr %i.ar, align 8, !tbaa !20, !noalias !1713
  %i.uh = load i64, ptr %i.as, align 8, !tbaa !65, !noalias !1713 ; 2 uses
  %factor.op.mul.i = mul i64 %i.uh, %i.ug
  %i.ui = sext i32 %i.ue to i64
  %factor.op.mul532.us.i = mul i64 %i.uh, %i.ui
  %i.uj = sext i32 %.0340.lcssa.i to i64
  %wide.trip.count597.i = zext nneg i32 %.sroa.speculated119 to i64
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.us540.i, %.lr.ph536.split.us.i
  %indvars.iv599.i = phi i64 [ %indvars.iv.next600.i, %._crit_edge.us540.i ], [ %i.uj, %.lr.ph536.split.us.i ] ; 3 uses
  %.pre.i = add nsw i64 %indvars.iv599.i, %i.bp   ; 2 uses
  br i1 %.not349.i, label %.thread.us.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.uk = getelementptr [4 x i8], ptr %.val, i64 %.pre.i
  %i.ul = load <2 x float>, ptr %i.uk, align 4, !tbaa !39
  br label %.thread.us.i

.thread.us.i:                                     ; preds = %bb.p, %bb.o
  %i.um = phi <2 x float> [ %i.ul, %bb.p ], [ zeroinitializer, %bb.o ] ; 2 uses
  %i.un = trunc nsw i64 %indvars.iv599.i to i32
  %factor.op.mul.reass.us538.i = mul i32 %factor.op.mul517.i, %i.un
  %i.uo = sext i32 %factor.op.mul.reass.us538.i to i64
  %i.up = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.uo
  %.reass.i = mul i64 %factor.op.mul.i, %.pre.i
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uf, i64 %.reass.i
  br label %_ZN4ncnn3MatD2Ev.exit354.us.i

_ZN4ncnn3MatD2Ev.exit354.us.i:                    ; preds = %bb.aq, %.thread.us.i
  %indvars.iv594.i = phi i64 [ 0, %.thread.us.i ], [ %indvars.iv.next595.i, %bb.aq ] ; 3 uses
  %.idx660.i = shl nuw nsw i64 %indvars.iv594.i, 3
  %i.ur = getelementptr inbounds nuw i8, ptr %i.up, i64 %.idx660.i ; 5 uses
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %i.tw ; 2 uses
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %i.ty ; 2 uses
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %i.ua ; 2 uses
  %i.uv = load <2 x float>, ptr %i.us, align 4, !tbaa !39 ; 2 uses
  %i.uw = load <2 x float>, ptr %i.ut, align 4, !tbaa !39 ; 2 uses
  %i.ux = fsub fast <2 x float> %i.uv, %i.uw
  %i.uy = load <2 x float>, ptr %i.uu, align 4, !tbaa !39
  %i.uz = fadd fast <2 x float> %i.ux, %i.uy
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %i.uc ; 2 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %i.uc ; 2 uses
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %i.uc ; 2 uses
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %i.uc ; 2 uses
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %i.uc ; 2 uses
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %i.uc ; 2 uses
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %i.uc
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.ve, i64 %i.uc
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.vf, i64 %i.uc
  %i.vj = load <2 x float>, ptr %i.va, align 4, !tbaa !39 ; 2 uses
  %i.vk = load <2 x float>, ptr %i.vb, align 4, !tbaa !39 ; 2 uses
  %i.vl = load <2 x float>, ptr %i.vc, align 4, !tbaa !39
  %i.vm = load <2 x float>, ptr %i.vd, align 4, !tbaa !39 ; 2 uses
  %i.vn = load <2 x float>, ptr %i.ve, align 4, !tbaa !39 ; 2 uses
  %i.vo = fsub fast <2 x float> %i.vm, %i.vn
  %i.vp = load <2 x float>, ptr %i.vf, align 4, !tbaa !39
  %i.vq = fadd fast <2 x float> %i.vp, %i.vo      ; 2 uses
  %i.vr = load <2 x float>, ptr %i.vg, align 4, !tbaa !39 ; 2 uses
  %i.vs = load <2 x float>, ptr %i.vh, align 4, !tbaa !39 ; 2 uses
  %i.vt = load <2 x float>, ptr %i.vi, align 4, !tbaa !39
  %i.vu = trunc i64 %indvars.iv594.i to i32
  %i.vv = add i32 %.047153, %i.vu                 ; 2 uses
  %i.vw = sdiv i32 %i.vv, %i.ci
  %i.vx = srem i32 %i.vv, %i.ci
  %i.vy = shl nsw i32 %i.vw, 1                    ; 3 uses
  %i.vz = sext i32 %i.vy to i64
  %.reass533.us.i = mul i64 %factor.op.mul532.us.i, %i.vz
  %i.wa = getelementptr inbounds nuw i8, ptr %i.uq, i64 %.reass533.us.i
  %i.wb = shl nsw i32 %i.vx, 1                    ; 2 uses
  %i.wc = sext i32 %i.wb to i64
  %i.wd = getelementptr inbounds [2 x i8], ptr %i.wa, i64 %i.wc ; 5 uses
  %i.we = or disjoint i32 %i.wb, 1
  %i.wf = icmp slt i32 %i.we, %i.cb               ; 2 uses
  %.not350.us.i = icmp slt i32 %i.vy, %i.cc
  br i1 %.not350.us.i, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit354.us.i
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %i.uc ; 2 uses
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.wg, i64 %i.uc ; 2 uses
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %i.uc
  %i.wj = load <2 x float>, ptr %i.wi, align 4, !tbaa !39
  %i.wk = load <2 x float>, ptr %i.wh, align 4, !tbaa !39
  %i.wl = fadd fast <2 x float> %i.vn, %i.vm
  %i.wm = fadd fast <2 x float> %i.wl, %i.wk      ; 2 uses
  %i.wn = load <2 x float>, ptr %i.wg, align 4, !tbaa !39
  %i.wo = fadd fast <2 x float> %i.vj, %i.um
  %i.wp = fadd fast <2 x float> %i.wo, %i.vk
  %i.wq = fadd fast <2 x float> %i.wp, %i.wn      ; 2 uses
  %i.wr = load <2 x float>, ptr %i.ur, align 4, !tbaa !39
  %i.ws = fadd fast <2 x float> %i.uw, %i.uv
  %i.wt = fadd fast <2 x float> %i.ws, %i.wm
  %i.wu = fadd fast <2 x float> %i.wt, %i.wr
  %i.wv = fadd fast <2 x float> %i.wu, %i.wq      ; 10 uses
  %i.ww = fsub fast <2 x float> %i.wq, %i.wm
  %i.wx = fadd fast <2 x float> %i.vs, %i.vr
  %i.wy = fadd fast <2 x float> %i.wx, %i.wj
  %i.wz = fadd fast <2 x float> %i.wy, %i.ww      ; 13 uses
  switch i32 %i.ca, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread380.us.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread383.us.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread377.us.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread386.us.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread389.us.i
    i32 6, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.xa = load ptr, ptr %15, align 8, !tbaa !18   ; 2 uses
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !39 ; 9 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xa, i64 4
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !39 ; 5 uses
  %i.xe = fneg fast float %i.xd
  %i.xf = fdiv fast float %i.xe, %i.xb            ; 8 uses
  %i.xg = extractelement <2 x float> %i.wv, i64 0 ; 5 uses
  %i.xh = fcmp fast olt float %i.xg, %i.xf
  br i1 %i.xh, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.xi = fdiv fast float 1.000000e+00, %i.xb
  %i.xj = fadd fast float %i.xf, %i.xi
  %i.xk = fcmp fast ogt float %i.xg, %i.xj
  br i1 %i.xk, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.xl = fmul fast float %i.xb, %i.xg
  %i.xm = fadd fast float %i.xl, %i.xd
  %i.xn = fmul fast float %i.xm, %i.xg
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.i: ; preds = %bb.t, %bb.s, %bb.r
  %.1343373.us.i = phi float [ %i.xn, %bb.t ], [ 0.000000e+00, %bb.r ], [ %i.xg, %bb.s ]
  %i.xo = extractelement <2 x float> %i.wv, i64 1 ; 5 uses
  %i.xp = fcmp fast olt float %i.xo, %i.xf
  br i1 %i.xp, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.i, label %bb.u

bb.u:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.i
  %i.xq = fdiv fast float 1.000000e+00, %i.xb
  %i.xr = fadd fast float %i.xf, %i.xq
  %i.xs = fcmp fast ogt float %i.xo, %i.xr
  br i1 %i.xs, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.xt = fmul fast float %i.xb, %i.xo
  %i.xu = fadd fast float %i.xt, %i.xd
  %i.xv = fmul fast float %i.xu, %i.xo
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.i: ; preds = %bb.v, %bb.u, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.i
  %.1345396.us.i = phi float [ %i.xv, %bb.v ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.i ], [ %i.xo, %bb.u ]
  %i.xw = extractelement <2 x float> %i.wz, i64 0 ; 5 uses
  %i.xx = fcmp fast olt float %i.xw, %i.xf
  br i1 %i.xx, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.i, label %bb.w

bb.w:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.i
  %i.xy = fdiv fast float 1.000000e+00, %i.xb
  %i.xz = fadd fast float %i.xf, %i.xy
  %i.ya = fcmp fast ogt float %i.xw, %i.xz
  br i1 %i.ya, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.yb = fmul fast float %i.xb, %i.xw
  %i.yc = fadd fast float %i.yb, %i.xd
  %i.yd = fmul fast float %i.yc, %i.xw
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.i: ; preds = %bb.x, %bb.w, %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.i
  %.1347432.us.i = phi float [ %i.yd, %bb.x ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.i ], [ %i.xw, %bb.w ] ; 2 uses
  %i.ye = extractelement <2 x float> %i.wz, i64 1 ; 4 uses
  %i.yf = fcmp fast olt float %i.ye, %i.xf
  %i.yg = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.1347432.us.i, i64 0 ; 2 uses
  %i.yh = insertelement <2 x float> poison, float %.1343373.us.i, i64 0
  %i.yi = insertelement <2 x float> %i.yh, float %.1345396.us.i, i64 1 ; 3 uses
  br i1 %i.yf, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.i, label %bb.y

bb.y:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.i
  %i.yj = fdiv fast float 1.000000e+00, %i.xb
  %i.yk = fadd fast float %i.xf, %i.yj
  %i.yl = fcmp fast ogt float %i.ye, %i.yk
end_hunk_20
begin_hunk_21_@_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.14:bb.a

bb.af:                                            ; preds = %bb.ae
  %i.abz = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.aca = load float, ptr %i.abz, align 4, !tbaa !39 ; 9 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abz, i64 4
  %i.acc = load float, ptr %i.acb, align 4, !tbaa !39 ; 5 uses
  %i.acd = fneg fast float %i.acc
  %i.ace = fdiv fast float %i.acd, %i.aca         ; 8 uses
  %i.acf = extractelement <2 x float> %i.abv, i64 0 ; 5 uses
  %i.acg = fcmp fast olt float %i.acf, %i.ace
  br i1 %i.acg, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.1.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ach = fdiv fast float 1.000000e+00, %i.aca
  %i.aci = fadd fast float %i.ace, %i.ach
  %i.acj = fcmp fast ogt float %i.acf, %i.aci
  br i1 %i.acj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.1.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ack = fmul fast float %i.aca, %i.acf
  %i.acl = fadd fast float %i.ack, %i.acc
  %i.acm = fmul fast float %i.acl, %i.acf
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.1.i: ; preds = %bb.ah, %bb.ag, %bb.af
  %.1343373.us.1.i = phi float [ %i.acm, %bb.ah ], [ 0.000000e+00, %bb.af ], [ %i.acf, %bb.ag ]
  %i.acn = extractelement <2 x float> %i.abv, i64 1 ; 5 uses
  %i.aco = fcmp fast olt float %i.acn, %i.ace
  br i1 %i.aco, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.1.i, label %bb.ai

bb.ai:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.1.i
  %i.acp = fdiv fast float 1.000000e+00, %i.aca
  %i.acq = fadd fast float %i.ace, %i.acp
  %i.acr = fcmp fast ogt float %i.acn, %i.acq
  br i1 %i.acr, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.1.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.acs = fmul fast float %i.aca, %i.acn
  %i.act = fadd fast float %i.acs, %i.acc
  %i.acu = fmul fast float %i.act, %i.acn
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.1.i: ; preds = %bb.aj, %bb.ai, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.1.i
  %.1345396.us.1.i = phi float [ %i.acu, %bb.aj ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.1.i ], [ %i.acn, %bb.ai ]
  %i.acv = extractelement <2 x float> %i.aby, i64 0 ; 5 uses
  %i.acw = fcmp fast olt float %i.acv, %i.ace
  br i1 %i.acw, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.1.i, label %bb.ak

bb.ak:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.1.i
  %i.acx = fdiv fast float 1.000000e+00, %i.aca
  %i.acy = fadd fast float %i.ace, %i.acx
  %i.acz = fcmp fast ogt float %i.acv, %i.acy
  br i1 %i.acz, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.1.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ada = fmul fast float %i.aca, %i.acv
  %i.adb = fadd fast float %i.ada, %i.acc
  %i.adc = fmul fast float %i.adb, %i.acv
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.1.i: ; preds = %bb.al, %bb.ak, %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.1.i
  %.1347432.us.1.i = phi float [ %i.adc, %bb.al ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.1.i ], [ %i.acv, %bb.ak ] ; 2 uses
  %i.add = extractelement <2 x float> %i.aby, i64 1 ; 4 uses
  %i.ade = fcmp fast olt float %i.add, %i.ace
  %i.adf = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.1347432.us.1.i, i64 0 ; 2 uses
  %i.adg = insertelement <2 x float> poison, float %.1343373.us.1.i, i64 0
  %i.adh = insertelement <2 x float> %i.adg, float %.1345396.us.1.i, i64 1 ; 3 uses
  br i1 %i.ade, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i, label %bb.am

bb.am:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.1.i
  %i.adi = fdiv fast float 1.000000e+00, %i.aca
  %i.adj = fadd fast float %i.ace, %i.adi
  %i.adk = fcmp fast ogt float %i.add, %i.adj
  %i.adl = insertelement <2 x float> %i.aby, float %.1347432.us.1.i, i64 0
  br i1 %i.adk, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.adm = fmul fast float %i.aca, %i.add
  %i.adn = fadd fast float %i.adm, %i.acc
  %i.ado = fmul fast float %i.adn, %i.add
  %i.adp = insertelement <2 x float> %i.adf, float %i.ado, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread389.us.1.i: ; preds = %bb.ae
  %i.adq = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.abv)
  %i.adr = fadd fast <2 x float> %i.adq, splat (float 1.000000e+00)
  %i.ads = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.adr)
  %i.adt = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.ads)
  %i.adu = fmul fast <2 x float> %i.adt, %i.abv
  %i.adv = extractelement <2 x float> %i.aby, i64 0
  %i.adw = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.adv)
  %i.adx = extractelement <2 x float> %i.aby, i64 1
  %i.ady = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.adx)
  %i.adz = fadd fast float %i.ady, 1.000000e+00
  %i.aea = fadd fast float %i.adw, 1.000000e+00
  %i.aeb = call fast float @llvm.log.f32(float %i.adz)
  %i.aec = call fast float @llvm.log.f32(float %i.aea)
  %i.aed = call fast float @llvm.tanh.f32(float %i.aeb)
  %i.aee = call fast float @llvm.tanh.f32(float %i.aec)
  %i.aef = insertelement <2 x float> poison, float %i.aee, i64 0
  %i.aeg = insertelement <2 x float> %i.aef, float %i.aed, i64 1
  %i.aeh = fmul fast <2 x float> %i.aeg, %i.aby
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread386.us.1.i: ; preds = %bb.ae
  %i.aei = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.abv, <2 x float> splat (float f0x42B0C0A5))
  %i.aej = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.aei, <2 x float> splat (float f0xC2B0C0A5))
  %i.aek = fneg fast <2 x float> %i.aej
  %i.ael = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.aek)
  %i.aem = fadd fast <2 x float> %i.ael, splat (float 1.000000e+00)
  %i.aen = fdiv fast <2 x float> splat (float 1.000000e+00), %i.aem
  %i.aeo = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.aby, <2 x float> splat (float f0x42B0C0A5))
  %i.aep = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.aeo, <2 x float> splat (float f0xC2B0C0A5))
  %i.aeq = fneg fast <2 x float> %i.aep
  %i.aer = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.aeq)
  %i.aes = fadd fast <2 x float> %i.aer, splat (float 1.000000e+00)
  %i.aet = fdiv fast <2 x float> splat (float 1.000000e+00), %i.aes
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread377.us.1.i: ; preds = %bb.ae
  %i.aeu = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.aev = load float, ptr %i.aeu, align 4, !tbaa !39 ; 3 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aeu, i64 4
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !39 ; 5 uses
  %i.aey = insertelement <2 x float> poison, float %i.aev, i64 0
  %i.aez = shufflevector <2 x float> %i.aey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afa = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.abv, <2 x float> %i.aez) ; 2 uses
  %i.afb = insertelement <2 x float> poison, float %i.aex, i64 0
  %i.afc = shufflevector <2 x float> %i.afb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.afd = fcmp fast ogt <2 x float> %i.afa, %i.afc
  %i.afe = select <2 x i1> %i.afd, <2 x float> %i.afc, <2 x float> %i.afa ; 2 uses
  %i.aff = extractelement <2 x float> %i.aby, i64 0
  %.0346.us.1.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.aff, float %i.aev) ; 2 uses
  %i.afg = fcmp fast ogt float %.0346.us.1.i, %i.aex
  %.1347442.us.1.i = select i1 %i.afg, float %i.aex, float %.0346.us.1.i
  %i.afh = extractelement <2 x float> %i.aby, i64 1
  %.0348.us.1.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.afh, float %i.aev) ; 2 uses
  %i.afi = fcmp fast ogt float %.0348.us.1.i, %i.aex
  %i.afj = insertelement <2 x float> poison, float %.1347442.us.1.i, i64 0
  %i.afk = insertelement <2 x float> %i.afj, float %.0348.us.1.i, i64 1 ; 2 uses
  br i1 %i.afi, label %bb.ao, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i

bb.ao:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread377.us.1.i
  %i.afl = insertelement <2 x float> %i.afk, float %i.aex, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread383.us.1.i: ; preds = %bb.ae
  %i.afm = load ptr, ptr %15, align 8, !tbaa !18
  %i.afn = load float, ptr %i.afm, align 4, !tbaa !39
  %i.afo = fcmp fast ogt <2 x float> %i.abv, zeroinitializer
  %i.afp = insertelement <2 x float> poison, float %i.afn, i64 0
  %i.afq = shufflevector <2 x float> %i.afp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.afr = select <2 x i1> %i.afo, <2 x float> splat (float 1.000000e+00), <2 x float> %i.afq
  %i.afs = fmul fast <2 x float> %i.afr, %i.abv
  %i.aft = fcmp fast ogt <2 x float> %i.aby, zeroinitializer
  %i.afu = select <2 x i1> %i.aft, <2 x float> splat (float 1.000000e+00), <2 x float> %i.afq
  %i.afv = fmul fast <2 x float> %i.afu, %i.aby
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread380.us.1.i: ; preds = %bb.ae
  %i.afw = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.abv, <2 x float> zeroinitializer)
  %i.afx = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.aby, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i: ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread380.us.1.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread383.us.1.i, %bb.ao, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread377.us.1.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread386.us.1.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread389.us.1.i, %bb.an, %bb.am, %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.1.i, %bb.ae
  %i.afy = phi <2 x float> [ %i.adf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.1.i ], [ %i.afx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread380.us.1.i ], [ %i.afv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread383.us.1.i ], [ %i.afl, %bb.ao ], [ %i.afk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread377.us.1.i ], [ %i.aet, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread386.us.1.i ], [ %i.aeh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread389.us.1.i ], [ %i.adp, %bb.an ], [ %i.adl, %bb.am ], [ %i.aby, %bb.ae ]
  %i.afz = phi <2 x float> [ %i.adh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.1.i ], [ %i.afw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread380.us.1.i ], [ %i.afs, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread383.us.1.i ], [ %i.afe, %bb.ao ], [ %i.afe, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread377.us.1.i ], [ %i.aen, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread386.us.1.i ], [ %i.adu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread389.us.1.i ], [ %i.adh, %bb.an ], [ %i.adh, %bb.am ], [ %i.abv, %bb.ae ]
  %i.aga = getelementptr inbounds nuw [2 x i8], ptr %.1324.us.i, i64 %i.cg ; 2 uses
  %i.agb = bitcast <2 x float> %i.afz to <2 x i32>
  %i.agc = lshr <2 x i32> %i.agb, splat (i32 16)
  %i.agd = trunc nuw <2 x i32> %i.agc to <2 x i16> ; 2 uses
  %i.age = extractelement <2 x i16> %i.agd, i64 0
  store i16 %i.age, ptr %.1324.us.i, align 2, !tbaa !394
  %i.agf = extractelement <2 x i16> %i.agd, i64 1
  store i16 %i.agf, ptr %i.aga, align 2, !tbaa !394
  br i1 %i.wf, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i
  %i.agg = bitcast <2 x float> %i.afy to <2 x i32>
  %i.agh = getelementptr inbounds nuw i8, ptr %.1324.us.i, i64 2
  %i.agi = lshr <2 x i32> %i.agg, splat (i32 16)
  %i.agj = trunc nuw <2 x i32> %i.agi to <2 x i16> ; 2 uses
  %i.agk = extractelement <2 x i16> %i.agj, i64 0
  store i16 %i.agk, ptr %i.agh, align 2, !tbaa !394
  %i.agl = getelementptr inbounds nuw i8, ptr %i.aga, i64 2
  %i.agm = extractelement <2 x i16> %i.agj, i64 1
  store i16 %i.agm, ptr %i.agl, align 2, !tbaa !394
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i, %bb.ad
  %indvars.iv.next595.i = add nuw nsw i64 %indvars.iv594.i, 1 ; 2 uses
  %exitcond598.not.i = icmp eq i64 %indvars.iv.next595.i, %wide.trip.count597.i
  br i1 %exitcond598.not.i, label %._crit_edge.us540.i, label %_ZN4ncnn3MatD2Ev.exit354.us.i, !llvm.loop !1716

._crit_edge.us540.i:                              ; preds = %bb.aq
  %indvars.iv.next600.i = add nuw nsw i64 %indvars.iv599.i, 2 ; 3 uses
  %i.agn = icmp slt i64 %indvars.iv.next600.i, %invariant.op.i
  br i1 %i.agn, label %bb.o, label %.preheader.loopexit.i, !llvm.loop !1717

.lr.ph536.split.i:                                ; preds = %.lr.ph536.i
  %19 = sub i32 %18, %.0340.lcssa.i
  %20 = and i32 %19, -2
  %21 = add i32 %.0340.lcssa.i, 2
  %i.ago = add i32 %21, %20
  br label %.preheader.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.us540.i
  %i.agp = trunc nsw i64 %indvars.iv.next600.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph536.split.i, %.preheader508.i
  %.1341.lcssa.i = phi i32 [ %.0340.lcssa.i, %.preheader508.i ], [ %i.ago, %.lr.ph536.split.i ], [ %i.agp, %.preheader.loopexit.i ] ; 2 uses
  %i.agq = icmp slt i32 %.1341.lcssa.i, %.sroa.speculated123
  br i1 %i.agq, label %.lr.ph560.i, label %_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit

.lr.ph560.i:                                      ; preds = %.preheader.i
  %.not.i82 = icmp eq ptr %.val, null
  %i.agr = icmp sgt i32 %.sroa.speculated119, 0
  %i.ags = sext i32 %.sroa.speculated119 to i64
  %i.agt = shl nsw i32 %.sroa.speculated119, 1
  %i.agu = sext i32 %i.agt to i64
  %i.agv = mul nsw i32 %.sroa.speculated119, 3
  %i.agw = sext i32 %i.agv to i64
  %i.agx = shl nsw i32 %.sroa.speculated119, 2
  %i.agy = sext i32 %i.agx to i64                 ; 12 uses
  %i.agz = sext i32 %i.cb to i64
  br i1 %i.agr, label %.lr.ph560.split.us.i, label %_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit

.lr.ph560.split.us.i:                             ; preds = %.lr.ph560.i
  %i.aha = load i32, ptr %i.ao, align 4, !tbaa !75, !noalias !1718
  %i.ahb = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1718
  %i.ahc = load i64, ptr %i.ar, align 8, !tbaa !20, !noalias !1718
  %i.ahd = load i64, ptr %i.as, align 8, !tbaa !65, !noalias !1718 ; 2 uses
  %factor.op.mul565.i = mul i64 %i.ahd, %i.ahc
  %i.ahe = sext i32 %i.aha to i64
  %factor.op.mul556.us.i = mul i64 %i.ahd, %i.ahe
  %i.ahf = sext i32 %.1341.lcssa.i to i64
  %wide.trip.count612.i = zext nneg i32 %.sroa.speculated119 to i64
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.us563.i, %.lr.ph560.split.us.i
  %indvars.iv614.i = phi i64 [ %indvars.iv.next615.i, %._crit_edge.us563.i ], [ %i.ahf, %.lr.ph560.split.us.i ] ; 3 uses
  %.pre627.i = add nsw i64 %indvars.iv614.i, %i.bp ; 2 uses
  br i1 %.not.i82, label %.lr.ph.us562.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ahg = getelementptr inbounds [4 x i8], ptr %.val, i64 %.pre627.i
  %i.ahh = load float, ptr %i.ahg, align 4, !tbaa !39
  br label %.lr.ph.us562.i

.lr.ph.us562.i:                                   ; preds = %bb.as, %bb.ar
  %i.ahi = phi fast float [ %i.ahh, %bb.as ], [ 0.000000e+00, %bb.ar ] ; 2 uses
  %i.ahj = trunc nsw i64 %indvars.iv614.i to i32
  %factor.op.mul553.reass.us.i = mul i32 %factor.op.mul517.i, %i.ahj
  %i.ahk = sext i32 %factor.op.mul553.reass.us.i to i64
  %i.ahl = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.ahk
  %.reass566.i = mul i64 %factor.op.mul565.i, %.pre627.i
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahb, i64 %.reass566.i
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %bb.bl, %.lr.ph.us562.i
  %indvars.iv609.i = phi i64 [ 0, %.lr.ph.us562.i ], [ %indvars.iv.next610.i, %bb.bl ] ; 3 uses
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %indvars.iv609.i ; 5 uses
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.ahn, i64 %i.ags ; 2 uses
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.ahn, i64 %i.agu ; 2 uses
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.ahn, i64 %i.agw ; 2 uses
  %i.ahr = load float, ptr %i.aho, align 4, !tbaa !39 ; 2 uses
  %i.ahs = load float, ptr %i.ahp, align 4, !tbaa !39 ; 2 uses
  %i.aht = fsub fast float %i.ahr, %i.ahs
  %i.ahu = load float, ptr %i.ahq, align 4, !tbaa !39
  %i.ahv = fadd fast float %i.aht, %i.ahu
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %i.agy ; 2 uses
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %i.agy ; 2 uses
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.ahq, i64 %i.agy ; 2 uses
  %i.ahz = load float, ptr %i.ahw, align 4, !tbaa !39 ; 2 uses
  %i.aia = load float, ptr %i.ahx, align 4, !tbaa !39 ; 2 uses
  %i.aib = load float, ptr %i.ahy, align 4, !tbaa !39
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.ahw, i64 %i.agy ; 2 uses
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.ahx, i64 %i.agy ; 2 uses
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.ahy, i64 %i.agy ; 2 uses
  %i.aif = load float, ptr %i.aic, align 4, !tbaa !39 ; 2 uses
  %i.aig = load float, ptr %i.aid, align 4, !tbaa !39 ; 2 uses
  %i.aih = fsub fast float %i.aif, %i.aig
  %i.aii = load float, ptr %i.aie, align 4, !tbaa !39
  %i.aij = fadd fast float %i.aih, %i.aii         ; 2 uses
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.aic, i64 %i.agy
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %i.agy
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.aie, i64 %i.agy
  %i.ain = load float, ptr %i.aik, align 4, !tbaa !39 ; 2 uses
  %i.aio = load float, ptr %i.ail, align 4, !tbaa !39 ; 2 uses
  %i.aip = fsub fast float %i.ain, %i.aio
  %i.aiq = load float, ptr %i.aim, align 4, !tbaa !39
  %i.air = trunc i64 %indvars.iv609.i to i32
  %i.ais = add i32 %.047153, %i.air               ; 2 uses
  %i.ait = sdiv i32 %i.ais, %i.ci
  %i.aiu = srem i32 %i.ais, %i.ci
  %i.aiv = shl nsw i32 %i.ait, 1                  ; 3 uses
  %i.aiw = sext i32 %i.aiv to i64
  %.reass557.us.i = mul i64 %factor.op.mul556.us.i, %i.aiw
  %i.aix = getelementptr inbounds nuw i8, ptr %i.ahm, i64 %.reass557.us.i
  %i.aiy = shl nsw i32 %i.aiu, 1                  ; 2 uses
  %i.aiz = sext i32 %i.aiy to i64
  %i.aja = getelementptr inbounds [2 x i8], ptr %i.aix, i64 %i.aiz ; 4 uses
  %i.ajb = or disjoint i32 %i.aiy, 1
  %i.ajc = icmp slt i32 %i.ajb, %i.cb             ; 2 uses
  %.not348.us.i = icmp slt i32 %i.aiv, %i.cc
  br i1 %.not348.us.i, label %bb.at, label %bb.bc

bb.at:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.ahn, i64 %i.agy ; 2 uses
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %i.ajd, i64 %i.agy ; 2 uses
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.aje, i64 %i.agy
  %i.ajg = load float, ptr %i.ajf, align 4, !tbaa !39
  %i.ajh = load float, ptr %i.aje, align 4, !tbaa !39
  %i.aji = fadd fast float %i.aig, %i.aif
  %i.ajj = fadd fast float %i.aji, %i.ajh         ; 2 uses
  %i.ajk = load float, ptr %i.ajd, align 4, !tbaa !39
  %i.ajl = load float, ptr %i.ahn, align 4, !tbaa !39
  %i.ajm = fadd fast float %i.ahz, %i.ahi
  %i.ajn = fadd fast float %i.ajm, %i.aia
  %i.ajo = fadd fast float %i.ajn, %i.ajk         ; 2 uses
  %i.ajp = fadd fast float %i.ahs, %i.ahr
  %i.ajq = fsub fast float %i.ajo, %i.ajj
  %i.ajr = insertelement <2 x float> poison, float %i.ajp, i64 0
  %i.ajs = insertelement <2 x float> %i.ajr, float %i.aio, i64 1
  %i.ajt = insertelement <2 x float> poison, float %i.ajl, i64 0
  %i.aju = insertelement <2 x float> %i.ajt, float %i.ain, i64 1
  %i.ajv = fadd fast <2 x float> %i.ajs, %i.aju
  %i.ajw = insertelement <2 x float> poison, float %i.ajj, i64 0
  %i.ajx = insertelement <2 x float> %i.ajw, float %i.ajg, i64 1
  %i.ajy = fadd fast <2 x float> %i.ajv, %i.ajx
  %i.ajz = insertelement <2 x float> poison, float %i.ajo, i64 0
  %i.aka = insertelement <2 x float> %i.ajz, float %i.ajq, i64 1
  %i.akb = fadd fast <2 x float> %i.ajy, %i.aka   ; 13 uses
  switch i32 %i.ca, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread479.us.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread482.us.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread476.us.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread485.us.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread488.us.i
    i32 6, label %bb.au
  ]

bb.au:                                            ; preds = %bb.at
  %i.akc = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.akd = load float, ptr %i.akc, align 4, !tbaa !39 ; 5 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akc, i64 4
  %i.akf = load float, ptr %i.ake, align 4, !tbaa !39 ; 3 uses
  %i.akg = fneg fast float %i.akf
  %i.akh = fdiv fast float %i.akg, %i.akd         ; 4 uses
  %i.aki = extractelement <2 x float> %i.akb, i64 0 ; 5 uses
  %i.akj = fcmp fast olt float %i.aki, %i.akh
  br i1 %i.akj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread.us.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.akk = fdiv fast float 1.000000e+00, %i.akd
  %i.akl = fadd fast float %i.akh, %i.akk
  %i.akm = fcmp fast ogt float %i.aki, %i.akl
  br i1 %i.akm, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread.us.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.akn = fmul fast float %i.akd, %i.aki
  %i.ako = fadd fast float %i.akn, %i.akf
  %i.akp = fmul fast float %i.ako, %i.aki
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread.us.i: ; preds = %bb.aw, %bb.av, %bb.au
  %.1351472.us.i = phi float [ %i.akp, %bb.aw ], [ 0.000000e+00, %bb.au ], [ %i.aki, %bb.av ] ; 2 uses
  %i.akq = extractelement <2 x float> %i.akb, i64 1 ; 4 uses
  %i.akr = fcmp fast olt float %i.akq, %i.akh
  %i.aks = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.1351472.us.i, i64 0 ; 2 uses
  br i1 %i.akr, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i, label %bb.ax

bb.ax:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread.us.i
  %i.akt = fdiv fast float 1.000000e+00, %i.akd
  %i.aku = fadd fast float %i.akh, %i.akt
  %i.akv = fcmp fast ogt float %i.akq, %i.aku
  %i.akw = insertelement <2 x float> %i.akb, float %.1351472.us.i, i64 0
  br i1 %i.akv, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.akx = fmul fast float %i.akd, %i.akq
  %i.aky = fadd fast float %i.akx, %i.akf
  %i.akz = fmul fast float %i.aky, %i.akq
  %i.ala = insertelement <2 x float> %i.aks, float %i.akz, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread488.us.i: ; preds = %bb.at
  %i.alb = extractelement <2 x float> %i.akb, i64 0
  %i.alc = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.alb)
  %i.ald = extractelement <2 x float> %i.akb, i64 1
  %i.ale = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.ald)
  %i.alf = fadd fast float %i.ale, 1.000000e+00
  %i.alg = fadd fast float %i.alc, 1.000000e+00
  %i.alh = call fast float @llvm.log.f32(float %i.alf)
  %i.ali = call fast float @llvm.log.f32(float %i.alg)
  %i.alj = call fast float @llvm.tanh.f32(float %i.alh)
  %i.alk = call fast float @llvm.tanh.f32(float %i.ali)
  %i.all = insertelement <2 x float> poison, float %i.alk, i64 0
  %i.alm = insertelement <2 x float> %i.all, float %i.alj, i64 1
  %i.aln = fmul fast <2 x float> %i.alm, %i.akb
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread485.us.i: ; preds = %bb.at
end_hunk_21
begin_hunk_22_@_ZN4ncnnL26conv3x3s1_winograd43_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined:bb.a
  br i1 %i.dn, label %bb.m, label %_ZN4ncnn3MatD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.do = load ptr, ptr %i.y, align 8, !tbaa !17  ; 3 uses
  %.not3.i40 = icmp eq ptr %i.do, null
  %i.dp = load ptr, ptr %11, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !9
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.dp)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.q, !inline_history !19

bb.o:                                             ; preds = %bb.m
  %.not.i43 = icmp eq ptr %i.dp, null
  br i1 %.not.i43, label %_ZN4ncnn3MatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.dp) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.q:                                             ; preds = %bb.n
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.l, %_ZN4ncnn3MatD2Ev.exit33, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.dv = add nsw i32 %.067, 1
  %i.dw = load i32, ptr %i.e, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.067, %i.dw
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.s:                                             ; preds = %bb.c
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #27
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26conv3x3s1_winograd43_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.15(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %15) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x [6 x [4 x float]]], align 16 ; 27 uses
  %i.b = alloca [4 x [6 x [2 x float]]], align 16 ; 27 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %17 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.g = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.dv

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 0, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 %i.i, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 1, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 0, ptr %i.f, align 4, !tbaa !67
  %i.j = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.f, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %i.e, i32 1, i32 1)
  %i.k = load i32, ptr %i.d, align 4, !tbaa !67
  %i.l = call i32 @llvm.smin.i32(i32 %i.k, i32 %i.i) ; 2 uses
  store i32 %i.l, ptr %i.d, align 4, !tbaa !67
  %i.m = load i32, ptr %i.c, align 4, !tbaa !67   ; 2 uses
  %.not135 = icmp sgt i32 %i.m, %i.l
  br i1 %.not135, label %._crit_edge139, label %.lr.ph138

.lr.ph138:                                        ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %17, i64 44
  %i.ao = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph138, %_ZN4ncnn3MatD2Ev.exit
  %.048136 = phi i32 [ %i.m, %.lr.ph138 ], [ %i.di, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.co = load i32, ptr %3, align 4, !tbaa !67
  %i.cp = mul nsw i32 %i.co, %.048136             ; 4 uses
  %i.cq = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit79 unwind label %bb.dw

_ZN4ncnn3Mat7channelEi.exit79:                    ; preds = %bb.c
  %i.cr = load ptr, ptr %4, align 8, !tbaa !18, !noalias !1761
  %i.cs = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !1761
  %i.ct = sext i32 %i.cq to i64
  %i.cu = mul i64 %i.cs, %i.ct
  %i.cv = load i64, ptr %i.o, align 8, !tbaa !65, !noalias !1761
  %i.cw = mul i64 %i.cu, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cw ; 4 uses
  %i.cy = load i32, ptr %5, align 4, !tbaa !67
  %i.cz = sub nsw i32 %i.cy, %i.cp
  %i.da = load i32, ptr %3, align 4, !tbaa !67
  %.sroa.speculated124 = call i32 @llvm.smin.i32(i32 %i.da, i32 %i.cz) ; 8 uses
  %i.db = load i32, ptr %6, align 4, !tbaa !67    ; 2 uses
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit79
  %i.dd = icmp sgt i32 %.sroa.speculated124, 3
  %i.de = sext i32 %i.cp to i64                   ; 3 uses
  %i.df = and i32 %.sroa.speculated124, 2147483644
  %i.dg = zext nneg i32 %.sroa.speculated124 to i64
  %18 = add i32 %.sroa.speculated124, -2
  %i.dh = sext i32 %.sroa.speculated124 to i64    ; 2 uses
  %invariant.op.i = add nsw i64 %i.dh, -1
  %.pre = load i32, ptr %7, align 4, !tbaa !67
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit, %_ZN4ncnn3Mat7channelEi.exit79
  %i.di = add nsw i32 %.048136, 1
  %i.dj = load i32, ptr %i.d, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.048136, %i.dj
  br i1 %.not.not, label %bb.c, label %._crit_edge139

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit
  %i.dk = phi i32 [ %.pre, %.lr.ph ], [ %i.ckq, %_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit ]
  %i.dl = phi i32 [ %i.db, %.lr.ph ], [ %i.cks, %_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit ]
  %.047134 = phi i32 [ 0, %.lr.ph ], [ %i.ckr, %_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit ] ; 6 uses
  %i.dm = sub nsw i32 %i.dl, %.047134
  %.sroa.speculated120 = call i32 @llvm.smin.i32(i32 %i.dk, i32 %i.dm) ; 26 uses
  %i.dn = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %bb.d
  %.pre140 = load i32, ptr %9, align 4, !tbaa !67
  br label %.noexc

._crit_edge:                                      ; preds = %.noexc, %bb.d
  %i.dp = load i32, ptr %14, align 4, !tbaa !67   ; 6 uses
  %.val81 = load ptr, ptr %13, align 8, !tbaa !18 ; 6 uses
  %i.dq = load i32, ptr %i.ap, align 4, !tbaa !75 ; 13 uses
  %i.dr = load i32, ptr %i.aq, align 8, !tbaa !76 ; 6 uses
  %i.ds = load i32, ptr %i.ar, align 8, !tbaa !66 ; 5 uses
  %i.dt = load i64, ptr %i.as, align 8, !tbaa !20
  %i.du = sext i32 %i.ds to i64
  %i.dv = mul i64 %i.dt, %i.du                    ; 4 uses
  %i.dw = add nsw i32 %i.dq, 3
  %i.dx = sdiv i32 %i.dw, 4                       ; 6 uses
  %factor.op.mul1348.i = mul i32 %.sroa.speculated120, 36 ; 3 uses
  br i1 %i.dd, label %.lr.ph1351.i, label %.preheader1337.i

.lr.ph1351.i:                                     ; preds = %._crit_edge
  %.not556.i = icmp eq ptr %.val81, null
  %i.dy = getelementptr inbounds [4 x i8], ptr %.val81, i64 %i.de
  %i.dz = icmp sgt i32 %.sroa.speculated120, 0
  %i.ea = shl nsw i32 %.sroa.speculated120, 2
  %i.eb = sext i32 %i.ea to i64
  %i.ec = shl nsw i32 %.sroa.speculated120, 3
  %i.ed = sext i32 %i.ec to i64
  %i.ee = mul nsw i32 %.sroa.speculated120, 12
  %i.ef = sext i32 %i.ee to i64
  %i.eg = shl nsw i32 %.sroa.speculated120, 4
  %i.eh = sext i32 %i.eg to i64
  %i.ei = mul nsw i32 %.sroa.speculated120, 20
  %i.ej = sext i32 %i.ei to i64
  %i.ek = mul nsw i32 %.sroa.speculated120, 24
  %i.el = sext i32 %i.ek to i64                   ; 30 uses
  %.idx.i = shl i64 %i.dv, 2
  %.idx558.i = mul i64 %i.dv, 6
  %i.em = mul nsw i32 %i.ds, %i.dq
  %i.en = sext i32 %i.em to i64
  br i1 %i.dz, label %.lr.ph1351.split.us.preheader.i, label %.preheader1337.i

.lr.ph1351.split.us.preheader.i:                  ; preds = %.lr.ph1351.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated120 to i64
  br label %.lr.ph1351.split.us.i

.lr.ph1351.split.us.i:                            ; preds = %._crit_edge.us.i, %.lr.ph1351.split.us.preheader.i
  %indvars.iv1419.i = phi i64 [ 0, %.lr.ph1351.split.us.preheader.i ], [ %indvars.iv.next1420.i, %._crit_edge.us.i ] ; 3 uses
  br i1 %.not556.i, label %.lr.ph.us.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph1351.split.us.i
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv1419.i
  %i.ep = load <4 x float>, ptr %i.eo, align 1, !tbaa !254
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.e, %.lr.ph1351.split.us.i
  %i.eq = phi fast <4 x float> [ %i.ep, %bb.e ], [ zeroinitializer, %.lr.ph1351.split.us.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.er = trunc nuw nsw i64 %indvars.iv1419.i to i32 ; 2 uses
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul1348.i, %i.er
  %i.es = sext i32 %factor.op.mul.reass.us.i to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.es
  %i.eu = add i32 %i.cp, %i.er
  %i.ev = sdiv i32 %i.eu, %i.ds
  %i.ew = sext i32 %i.ev to i64
  br label %_ZN4ncnn3MatD2Ev.exit560.us.i

_ZN4ncnn3MatD2Ev.exit560.us.i:                    ; preds = %bb.v, %.lr.ph.us.i
  %indvars.iv1415.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next1416.i, %bb.v ] ; 3 uses
  %.idx1483.i.a = shl nuw nsw i64 %indvars.iv1415.i, 4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 %.idx1483.i.a ; 7 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.eb ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.ed ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.ef ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.eh ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.ej ; 2 uses
  %i.fd = load <4 x float>, ptr %i.ex, align 16, !tbaa !254
  %i.fe = load <4 x float>, ptr %i.ey, align 16, !tbaa !254 ; 2 uses
  %i.ff = load <4 x float>, ptr %i.ez, align 16, !tbaa !254 ; 2 uses
  %i.fg = load <4 x float>, ptr %i.fa, align 16, !tbaa !254 ; 2 uses
  %i.fh = load <4 x float>, ptr %i.fb, align 16, !tbaa !254 ; 2 uses
  %i.fi = load <4 x float>, ptr %i.fc, align 16, !tbaa !254
  %i.fj = fadd fast <4 x float> %i.ff, %i.fe      ; 2 uses
  %i.fk = fadd fast <4 x float> %i.fh, %i.fg      ; 2 uses
  %i.fl = fsub fast <4 x float> %i.fe, %i.ff      ; 2 uses
  %i.fm = fsub fast <4 x float> %i.fg, %i.fh      ; 2 uses
  %i.fn = fadd fast <4 x float> %i.fj, %i.fd
  %i.fo = fadd fast <4 x float> %i.fn, %i.fk
  %i.fp = fmul fast <4 x float> %i.fl, splat (float f0x3F3504F3)
  %i.fq = fmul fast <4 x float> %i.fm, splat (float f0x3FB504F3)
  %i.fr = fadd fast <4 x float> %i.fq, %i.fp
  %i.fs = fmul fast <4 x float> %i.fj, splat (float 5.000000e-01)
  %i.ft = fmul fast <4 x float> %i.fk, splat (float 2.000000e+00)
  %i.fu = fadd fast <4 x float> %i.ft, %i.fs
  %i.fv = fmul fast <4 x float> %i.fl, splat (float f0x3EB504F3)
  %i.fw = fadd fast <4 x float> %i.fv, %i.fi
  %i.fx = fmul fast <4 x float> %i.fm, splat (float f0x403504F3)
  %i.fy = fadd fast <4 x float> %i.fx, %i.fw
  store <4 x float> %i.fo, ptr %i.a, align 16, !tbaa !254
  store <4 x float> %i.fr, ptr %i.at, align 16, !tbaa !254
  store <4 x float> %i.fu, ptr %i.au, align 16, !tbaa !254
  store <4 x float> %i.fy, ptr %i.av, align 16, !tbaa !254
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.el ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.el ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.el ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.el ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.el ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.el ; 2 uses
  %i.gf = load <4 x float>, ptr %i.fz, align 16, !tbaa !254
  %i.gg = load <4 x float>, ptr %i.ga, align 16, !tbaa !254 ; 2 uses
  %i.gh = load <4 x float>, ptr %i.gb, align 16, !tbaa !254 ; 2 uses
  %i.gi = load <4 x float>, ptr %i.gc, align 16, !tbaa !254 ; 2 uses
  %i.gj = load <4 x float>, ptr %i.gd, align 16, !tbaa !254 ; 2 uses
  %i.gk = load <4 x float>, ptr %i.ge, align 16, !tbaa !254
  %i.gl = fadd fast <4 x float> %i.gh, %i.gg      ; 2 uses
  %i.gm = fadd fast <4 x float> %i.gj, %i.gi      ; 2 uses
  %i.gn = fsub fast <4 x float> %i.gg, %i.gh      ; 2 uses
  %i.go = fsub fast <4 x float> %i.gi, %i.gj      ; 2 uses
  %i.gp = fadd fast <4 x float> %i.gl, %i.gf
  %i.gq = fadd fast <4 x float> %i.gp, %i.gm
  %i.gr = fmul fast <4 x float> %i.gn, splat (float f0x3F3504F3)
  %i.gs = fmul fast <4 x float> %i.go, splat (float f0x3FB504F3)
  %i.gt = fadd fast <4 x float> %i.gs, %i.gr
  %i.gu = fmul fast <4 x float> %i.gl, splat (float 5.000000e-01)
  %i.gv = fmul fast <4 x float> %i.gm, splat (float 2.000000e+00)
  %i.gw = fadd fast <4 x float> %i.gv, %i.gu
  %i.gx = fmul fast <4 x float> %i.gn, splat (float f0x3EB504F3)
  %i.gy = fadd fast <4 x float> %i.gx, %i.gk
  %i.gz = fmul fast <4 x float> %i.go, splat (float f0x403504F3)
  %i.ha = fadd fast <4 x float> %i.gz, %i.gy
  store <4 x float> %i.gq, ptr %i.ax, align 16, !tbaa !254
  store <4 x float> %i.gt, ptr %i.ay, align 16, !tbaa !254
  store <4 x float> %i.gw, ptr %i.az, align 16, !tbaa !254
  store <4 x float> %i.ha, ptr %i.ba, align 16, !tbaa !254
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.el ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.el ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.el ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.el ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.el ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.el ; 2 uses
  %i.hh = load <4 x float>, ptr %i.hb, align 16, !tbaa !254
  %i.hi = load <4 x float>, ptr %i.hc, align 16, !tbaa !254 ; 2 uses
  %i.hj = load <4 x float>, ptr %i.hd, align 16, !tbaa !254 ; 2 uses
  %i.hk = load <4 x float>, ptr %i.he, align 16, !tbaa !254 ; 2 uses
  %i.hl = load <4 x float>, ptr %i.hf, align 16, !tbaa !254 ; 2 uses
  %i.hm = load <4 x float>, ptr %i.hg, align 16, !tbaa !254
  %i.hn = fadd fast <4 x float> %i.hj, %i.hi      ; 2 uses
  %i.ho = fadd fast <4 x float> %i.hl, %i.hk      ; 2 uses
  %i.hp = fsub fast <4 x float> %i.hi, %i.hj      ; 2 uses
  %i.hq = fsub fast <4 x float> %i.hk, %i.hl      ; 2 uses
  %i.hr = fadd fast <4 x float> %i.hn, %i.hh
  %i.hs = fadd fast <4 x float> %i.hr, %i.ho
  %i.ht = fmul fast <4 x float> %i.hp, splat (float f0x3F3504F3)
  %i.hu = fmul fast <4 x float> %i.hq, splat (float f0x3FB504F3)
  %i.hv = fadd fast <4 x float> %i.hu, %i.ht
  %i.hw = fmul fast <4 x float> %i.hn, splat (float 5.000000e-01)
  %i.hx = fmul fast <4 x float> %i.ho, splat (float 2.000000e+00)
  %i.hy = fadd fast <4 x float> %i.hx, %i.hw
  %i.hz = fmul fast <4 x float> %i.hp, splat (float f0x3EB504F3)
  %i.ia = fadd fast <4 x float> %i.hz, %i.hm
  %i.ib = fmul fast <4 x float> %i.hq, splat (float f0x403504F3)
  %i.ic = fadd fast <4 x float> %i.ib, %i.ia
  store <4 x float> %i.hs, ptr %i.bb, align 16, !tbaa !254
  store <4 x float> %i.hv, ptr %i.bc, align 16, !tbaa !254
  store <4 x float> %i.hy, ptr %i.bd, align 16, !tbaa !254
  store <4 x float> %i.ic, ptr %i.be, align 16, !tbaa !254
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.el ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.el ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.el ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.el ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.el ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.el ; 2 uses
  %i.ij = load <4 x float>, ptr %i.id, align 16, !tbaa !254
  %i.ik = load <4 x float>, ptr %i.ie, align 16, !tbaa !254 ; 2 uses
  %i.il = load <4 x float>, ptr %i.if, align 16, !tbaa !254 ; 2 uses
  %i.im = load <4 x float>, ptr %i.ig, align 16, !tbaa !254 ; 2 uses
  %i.in = load <4 x float>, ptr %i.ih, align 16, !tbaa !254 ; 2 uses
  %i.io = load <4 x float>, ptr %i.ii, align 16, !tbaa !254
  %i.ip = fadd fast <4 x float> %i.il, %i.ik      ; 2 uses
  %i.iq = fadd fast <4 x float> %i.in, %i.im      ; 2 uses
  %i.ir = fsub fast <4 x float> %i.ik, %i.il      ; 2 uses
end_hunk_22
begin_hunk_23_@_ZN4ncnnL26conv3x3s1_winograd43_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.15:bb.a
  %i.ajn = shufflevector <4 x float> %i.ajm, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajk, i64 4
  %i.ajp = load float, ptr %i.ajo, align 4, !tbaa !39
  %i.ajq = insertelement <4 x float> poison, float %i.ajp, i64 0
  %i.ajr = shufflevector <4 x float> %i.ajq, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ajs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ne, <4 x float> nofpclass(nan inf) %i.ajn)
  %i.ajt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ajs, <4 x float> nofpclass(nan inf) %i.ajr)
  %i.aju = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ni, <4 x float> nofpclass(nan inf) %i.ajn)
  %i.ajv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aju, <4 x float> nofpclass(nan inf) %i.ajr)
  %i.ajw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nm, <4 x float> nofpclass(nan inf) %i.ajn)
  %i.ajx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ajw, <4 x float> nofpclass(nan inf) %i.ajr)
  %i.ajy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nr, <4 x float> nofpclass(nan inf) %i.ajn)
  %i.ajz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ajy, <4 x float> nofpclass(nan inf) %i.ajr)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread712.us.i: ; preds = %bb.g
  %i.aka = load ptr, ptr %15, align 8, !tbaa !18
  %i.akb = load float, ptr %i.aka, align 4, !tbaa !39
  %i.akc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ne)
  %i.akd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ne)
  %i.ake = insertelement <4 x float> poison, float %i.akb, i64 0
  %i.akf = shufflevector <4 x float> %i.ake, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.akg = fmul fast <4 x float> %i.akf, %i.akd
  %i.akh = fadd fast <4 x float> %i.akg, %i.akc
  %i.aki = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ni)
  %i.akj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ni)
  %i.akk = fmul fast <4 x float> %i.akj, %i.akf
  %i.akl = fadd fast <4 x float> %i.akk, %i.aki
  %i.akm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.nm)
  %i.akn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.nm)
  %i.ako = fmul fast <4 x float> %i.akn, %i.akf
  %i.akp = fadd fast <4 x float> %i.ako, %i.akm
  %i.akq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.nr)
  %i.akr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.nr)
  %i.aks = fmul fast <4 x float> %i.akr, %i.akf
  %i.akt = fadd fast <4 x float> %i.aks, %i.akq
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread.us.i: ; preds = %bb.g
  %i.aku = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ne, <4 x float> zeroinitializer)
  %i.akv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ni, <4 x float> zeroinitializer)
  %i.akw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nm, <4 x float> zeroinitializer)
  %i.akx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nr, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i: ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread712.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread715.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread718.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread721.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread724.us.i, %bb.g
  %.0.i576767.us.i = phi <4 x float> [ %i.oo, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread724.us.i ], [ %i.akw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread.us.i ], [ %i.akp, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread712.us.i ], [ %i.ajx, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread715.us.i ], [ %i.aic, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread718.us.i ], [ %i.aak, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread721.us.i ], [ %i.nm, %bb.g ] ; 2 uses
  %.0.i580711730765.us.i = phi <4 x float> [ %i.oe, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread724.us.i ], [ %i.aku, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread.us.i ], [ %i.akh, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread712.us.i ], [ %i.ajt, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread715.us.i ], [ %i.afo, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread718.us.i ], [ %i.sq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread721.us.i ], [ %i.ne, %bb.g ] ; 2 uses
  %.0.i578732763.us.i = phi <4 x float> [ %i.oj, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread724.us.i ], [ %i.akv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread.us.i ], [ %i.akl, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread712.us.i ], [ %i.ajv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread715.us.i ], [ %i.agv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread718.us.i ], [ %i.wn, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread721.us.i ], [ %i.ni, %bb.g ] ; 2 uses
  %.0.i.us.i = phi nsz <4 x float> [ %i.ot, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread724.us.i ], [ %i.akx, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread.us.i ], [ %i.akt, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread712.us.i ], [ %i.ajz, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread715.us.i ], [ %i.ajj, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread718.us.i ], [ %i.aeh, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread721.us.i ], [ %i.nr, %bb.g ] ; 2 uses
  switch i32 %i.ds, label %bb.t [
    i32 4, label %bb.n
    i32 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i
  %i.aky = getelementptr inbounds nuw [2 x i8], ptr %.05381345.us.i, i64 %i.dv ; 4 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %.05381345.us.i, i64 %.idx.i ; 4 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %.05381345.us.i, i64 %.idx558.i ; 4 uses
  %i.alb = bitcast <4 x float> %.0.i580711730765.us.i to <8 x i16> ; 4 uses
  %i.alc = extractelement <8 x i16> %i.alb, i64 1
  store i16 %i.alc, ptr %.05381345.us.i, align 2, !tbaa !394
  %i.ald = extractelement <8 x i16> %i.alb, i64 3
  store i16 %i.ald, ptr %i.aky, align 2, !tbaa !394
  %i.ale = extractelement <8 x i16> %i.alb, i64 5
  store i16 %i.ale, ptr %i.akz, align 2, !tbaa !394
  %i.alf = extractelement <8 x i16> %i.alb, i64 7
  store i16 %i.alf, ptr %i.ala, align 2, !tbaa !394
  br i1 %i.mf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.alg = bitcast <4 x float> %.0.i578732763.us.i to <8 x i16> ; 4 uses
  %i.alh = extractelement <8 x i16> %i.alg, i64 1
  %i.ali = getelementptr inbounds nuw i8, ptr %.05381345.us.i, i64 2
  store i16 %i.alh, ptr %i.ali, align 2, !tbaa !394
  %i.alj = extractelement <8 x i16> %i.alg, i64 3
  %i.alk = getelementptr inbounds nuw i8, ptr %i.aky, i64 2
  store i16 %i.alj, ptr %i.alk, align 2, !tbaa !394
  %i.all = extractelement <8 x i16> %i.alg, i64 5
  %i.alm = getelementptr inbounds nuw i8, ptr %i.akz, i64 2
  store i16 %i.all, ptr %i.alm, align 2, !tbaa !394
  %i.aln = extractelement <8 x i16> %i.alg, i64 7
  %i.alo = getelementptr inbounds nuw i8, ptr %i.ala, i64 2
  store i16 %i.aln, ptr %i.alo, align 2, !tbaa !394
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %i.mh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.alp = bitcast <4 x float> %.0.i576767.us.i to <8 x i16> ; 4 uses
  %i.alq = extractelement <8 x i16> %i.alp, i64 1
  %i.alr = getelementptr inbounds nuw i8, ptr %.05381345.us.i, i64 4
  store i16 %i.alq, ptr %i.alr, align 2, !tbaa !394
  %i.als = extractelement <8 x i16> %i.alp, i64 3
  %i.alt = getelementptr inbounds nuw i8, ptr %i.aky, i64 4
  store i16 %i.als, ptr %i.alt, align 2, !tbaa !394
  %i.alu = extractelement <8 x i16> %i.alp, i64 5
  %i.alv = getelementptr inbounds nuw i8, ptr %i.akz, i64 4
  store i16 %i.alu, ptr %i.alv, align 2, !tbaa !394
  %i.alw = extractelement <8 x i16> %i.alp, i64 7
  %i.alx = getelementptr inbounds nuw i8, ptr %i.ala, i64 4
  store i16 %i.alw, ptr %i.alx, align 2, !tbaa !394
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %i.mj, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.aly = bitcast <4 x float> %.0.i.us.i to <8 x i16> ; 4 uses
  %i.alz = extractelement <8 x i16> %i.aly, i64 1
  %i.ama = getelementptr inbounds nuw i8, ptr %.05381345.us.i, i64 6
  store i16 %i.alz, ptr %i.ama, align 2, !tbaa !394
  %i.amb = extractelement <8 x i16> %i.aly, i64 3
  %i.amc = getelementptr inbounds nuw i8, ptr %i.aky, i64 6
  store i16 %i.amb, ptr %i.amc, align 2, !tbaa !394
  %i.amd = extractelement <8 x i16> %i.aly, i64 5
  %i.ame = getelementptr inbounds nuw i8, ptr %i.akz, i64 6
  store i16 %i.amd, ptr %i.ame, align 2, !tbaa !394
  %i.amf = extractelement <8 x i16> %i.aly, i64 7
  %i.amg = getelementptr inbounds nuw i8, ptr %i.ala, i64 6
  store i16 %i.amf, ptr %i.amg, align 2, !tbaa !394
  br label %bb.t

bb.n:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i
  %i.amh = bitcast <4 x float> %.0.i580711730765.us.i to <8 x i16>
  %i.ami = shufflevector <8 x i16> %i.amh, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.amj = bitcast <8 x i16> %i.ami to <4 x float>
  %i.amk = shufflevector <4 x float> %i.amj, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.aml = bitcast <4 x float> %i.amk to <2 x i64>
  %i.amm = extractelement <2 x i64> %i.aml, i64 0
  store i64 %i.amm, ptr %.05381345.us.i, align 1, !tbaa !254
  br i1 %i.mf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.amn = getelementptr inbounds nuw i8, ptr %.05381345.us.i, i64 8
  %i.amo = bitcast <4 x float> %.0.i578732763.us.i to <8 x i16>
  %i.amp = shufflevector <8 x i16> %i.amo, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.amq = bitcast <8 x i16> %i.amp to <4 x float>
  %i.amr = shufflevector <4 x float> %i.amq, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ams = bitcast <4 x float> %i.amr to <2 x i64>
  %i.amt = extractelement <2 x i64> %i.ams, i64 0
  store i64 %i.amt, ptr %i.amn, align 1, !tbaa !254
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %i.mh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.amu = getelementptr inbounds nuw i8, ptr %.05381345.us.i, i64 16
  %i.amv = bitcast <4 x float> %.0.i576767.us.i to <8 x i16>
  %i.amw = shufflevector <8 x i16> %i.amv, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.amx = bitcast <8 x i16> %i.amw to <4 x float>
  %i.amy = shufflevector <4 x float> %i.amx, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.amz = bitcast <4 x float> %i.amy to <2 x i64>
  %i.ana = extractelement <2 x i64> %i.amz, i64 0
  store i64 %i.ana, ptr %i.amu, align 1, !tbaa !254
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %i.mj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.anb = getelementptr inbounds nuw i8, ptr %.05381345.us.i, i64 24
  %i.anc = bitcast <4 x float> %.0.i.us.i to <8 x i16>
  %i.and = shufflevector <8 x i16> %i.anc, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ane = bitcast <8 x i16> %i.and to <4 x float>
  %i.anf = shufflevector <4 x float> %i.ane, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ang = bitcast <4 x float> %i.anf to <2 x i64>
  %i.anh = extractelement <2 x i64> %i.ang, i64 0
  store i64 %i.anh, ptr %i.anb, align 1, !tbaa !254
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.m, %bb.l, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i
  %i.ani = getelementptr inbounds [2 x i8], ptr %.05381345.us.i, i64 %i.en
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.f
  %.1539.us.i = phi ptr [ %.05381345.us.i, %bb.f ], [ %i.ani, %bb.t ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %bb.v, label %bb.f, !llvm.loop !1767

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next1416.i = add nuw nsw i64 %indvars.iv1415.i, 1 ; 2 uses
  %exitcond1418.not.i = icmp eq i64 %indvars.iv.next1416.i, %wide.trip.count.i
  br i1 %exitcond1418.not.i, label %._crit_edge.us.i, label %_ZN4ncnn3MatD2Ev.exit560.us.i, !llvm.loop !1768

._crit_edge.us.i:                                 ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %indvars.iv.next1420.i = add nuw nsw i64 %indvars.iv1419.i, 4 ; 3 uses
  %i.anj = or disjoint i64 %indvars.iv.next1420.i, 3
  %i.ank = icmp samesign ult i64 %i.anj, %i.dg
  br i1 %i.ank, label %.lr.ph1351.split.us.i, label %.preheader1337.loopexit.i, !llvm.loop !1769

.preheader1337.loopexit.i:                        ; preds = %._crit_edge.us.i
  %i.anl = trunc nuw nsw i64 %indvars.iv.next1420.i to i32
  br label %.preheader1337.i

.preheader1337.i:                                 ; preds = %.lr.ph1351.i, %.preheader1337.loopexit.i, %._crit_edge
  %.0526.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.anl, %.preheader1337.loopexit.i ], [ %i.df, %.lr.ph1351.i ] ; 5 uses
  %i.anm = or disjoint i32 %.0526.lcssa.i, 1
  %i.ann = icmp slt i32 %i.anm, %.sroa.speculated124
  br i1 %i.ann, label %.lr.ph1369.i, label %.preheader.i

.lr.ph1369.i:                                     ; preds = %.preheader1337.i
  %.not554.i = icmp eq ptr %.val81, null
  %i.ano = icmp sgt i32 %.sroa.speculated120, 0
  %i.anp = shl nsw i32 %.sroa.speculated120, 1
  %i.anq = sext i32 %i.anp to i64
  %i.anr = shl nsw i32 %.sroa.speculated120, 2
  %i.ans = sext i32 %i.anr to i64
  %i.ant = mul nsw i32 %.sroa.speculated120, 6
  %i.anu = sext i32 %i.ant to i64
  %i.anv = shl nsw i32 %.sroa.speculated120, 3
  %i.anw = sext i32 %i.anv to i64
  %i.anx = mul nsw i32 %.sroa.speculated120, 10
  %i.any = sext i32 %i.anx to i64
  %i.anz = mul nsw i32 %.sroa.speculated120, 12
  %i.aoa = sext i32 %i.anz to i64                 ; 30 uses
  %i.aob = sext i32 %i.dq to i64
  br i1 %i.ano, label %.lr.ph1369.split.us.i, label %.lr.ph1369.split.i

.lr.ph1369.split.us.i:                            ; preds = %.lr.ph1369.i
  %i.aoc = load i32, ptr %i.ap, align 4, !tbaa !75, !noalias !1770
  %i.aod = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1770
  %i.aoe = load i64, ptr %i.as, align 8, !tbaa !20, !noalias !1770
  %i.aof = load i64, ptr %i.aw, align 8, !tbaa !65, !noalias !1770 ; 2 uses
  %factor.op.mul.i = mul i64 %i.aof, %i.aoe
  %i.aog = sext i32 %i.aoc to i64
  %factor.op.mul1365.us.i = mul i64 %i.aof, %i.aog
  %i.aoh = sext i32 %.0526.lcssa.i to i64
  %wide.trip.count1434.i = zext nneg i32 %.sroa.speculated120 to i64
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.us1373.i, %.lr.ph1369.split.us.i
  %indvars.iv1436.i = phi i64 [ %indvars.iv.next1437.i, %._crit_edge.us1373.i ], [ %i.aoh, %.lr.ph1369.split.us.i ] ; 3 uses
  %.pre.i = add nsw i64 %indvars.iv1436.i, %i.de  ; 2 uses
  br i1 %.not554.i, label %.thread.us.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aoi = getelementptr [4 x i8], ptr %.val81, i64 %.pre.i
  %i.aoj = load <2 x float>, ptr %i.aoi, align 4, !tbaa !39
  br label %.thread.us.i

.thread.us.i:                                     ; preds = %bb.x, %bb.w
  %i.aok = phi <2 x float> [ %i.aoj, %bb.x ], [ zeroinitializer, %bb.w ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.aol = trunc nsw i64 %indvars.iv1436.i to i32
  %factor.op.mul.reass.us1371.i = mul i32 %factor.op.mul1348.i, %i.aol
  %i.aom = sext i32 %factor.op.mul.reass.us1371.i to i64
  %i.aon = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.aom
  %.reass.i = mul i64 %factor.op.mul.i, %.pre.i
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aod, i64 %.reass.i
  br label %_ZN4ncnn3MatD2Ev.exit559.us.i

_ZN4ncnn3MatD2Ev.exit559.us.i:                    ; preds = %bb.az, %.thread.us.i
  %indvars.iv1431.i = phi i64 [ 0, %.thread.us.i ], [ %indvars.iv.next1432.i, %bb.az ] ; 3 uses
  %.idx1484.i = shl nuw nsw i64 %indvars.iv1431.i, 3
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aon, i64 %.idx1484.i ; 7 uses
  %i.aoq = getelementptr inbounds nuw [4 x i8], ptr %i.aop, i64 %i.any ; 2 uses
  %i.aor = getelementptr inbounds nuw [4 x i8], ptr %i.aop, i64 %i.anw ; 2 uses
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %i.aop, i64 %i.anu ; 2 uses
  %i.aot = getelementptr inbounds nuw [4 x i8], ptr %i.aop, i64 %i.ans ; 2 uses
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr %i.aop, i64 %i.anq ; 2 uses
  %i.aov = load <2 x float>, ptr %i.aou, align 4, !tbaa !39 ; 2 uses
  %i.aow = load <2 x float>, ptr %i.aot, align 4, !tbaa !39 ; 2 uses
  %i.aox = fadd fast <2 x float> %i.aow, %i.aov   ; 2 uses
  %i.aoy = load <2 x float>, ptr %i.aos, align 4, !tbaa !39 ; 2 uses
  %i.aoz = load <2 x float>, ptr %i.aor, align 4, !tbaa !39 ; 2 uses
  %i.apa = fadd fast <2 x float> %i.aoz, %i.aoy   ; 2 uses
  %i.apb = load <2 x float>, ptr %i.aop, align 4, !tbaa !39
  %i.apc = fadd fast <2 x float> %i.apa, %i.aox
  %i.apd = fadd fast <2 x float> %i.apc, %i.apb
  store <2 x float> %i.apd, ptr %i.b, align 16, !tbaa !39
  %i.ape = fsub fast <2 x float> %i.aov, %i.aow   ; 2 uses
  %i.apf = fsub fast <2 x float> %i.aoy, %i.aoz   ; 2 uses
  %i.apg = fmul fast <2 x float> %i.ape, splat (float f0x3F3504F3)
  %i.aph = fmul fast <2 x float> %i.apf, splat (float f0x3FB504F3)
  %i.api = fadd fast <2 x float> %i.aph, %i.apg
  store <2 x float> %i.api, ptr %i.br, align 16, !tbaa !39
  %i.apj = fmul fast <2 x float> %i.aox, splat (float 5.000000e-01)
  %i.apk = fmul fast <2 x float> %i.apa, splat (float 2.000000e+00)
  %i.apl = fadd fast <2 x float> %i.apk, %i.apj
  store <2 x float> %i.apl, ptr %i.bs, align 16, !tbaa !39
  %i.apm = load <2 x float>, ptr %i.aoq, align 4, !tbaa !39
  %i.apn = fmul fast <2 x float> %i.ape, splat (float f0x3EB504F3)
  %i.apo = fadd fast <2 x float> %i.apn, %i.apm
  %i.app = fmul fast <2 x float> %i.apf, splat (float f0x403504F3)
  %i.apq = fadd fast <2 x float> %i.apo, %i.app
  store <2 x float> %i.apq, ptr %i.bt, align 16, !tbaa !39
  %i.apr = getelementptr inbounds nuw [4 x i8], ptr %i.aop, i64 %i.aoa ; 2 uses
  %i.aps = getelementptr inbounds nuw [4 x i8], ptr %i.aou, i64 %i.aoa ; 2 uses
  %i.apt = getelementptr inbounds nuw [4 x i8], ptr %i.aot, i64 %i.aoa ; 2 uses
  %i.apu = getelementptr inbounds nuw [4 x i8], ptr %i.aos, i64 %i.aoa ; 2 uses
  %i.apv = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %i.aoa ; 2 uses
  %i.apw = getelementptr inbounds nuw [4 x i8], ptr %i.aoq, i64 %i.aoa ; 2 uses
  %i.apx = load <2 x float>, ptr %i.aps, align 4, !tbaa !39 ; 2 uses
  %i.apy = load <2 x float>, ptr %i.apt, align 4, !tbaa !39 ; 2 uses
  %i.apz = fadd fast <2 x float> %i.apy, %i.apx   ; 2 uses
  %i.aqa = load <2 x float>, ptr %i.apu, align 4, !tbaa !39 ; 2 uses
  %i.aqb = load <2 x float>, ptr %i.apv, align 4, !tbaa !39 ; 2 uses
  %i.aqc = fadd fast <2 x float> %i.aqb, %i.aqa   ; 2 uses
  %i.aqd = load <2 x float>, ptr %i.apr, align 4, !tbaa !39
  %i.aqe = fadd fast <2 x float> %i.aqc, %i.apz
  %i.aqf = fadd fast <2 x float> %i.aqe, %i.aqd
  store <2 x float> %i.aqf, ptr %i.bu, align 8, !tbaa !39
  %i.aqg = fsub fast <2 x float> %i.apx, %i.apy   ; 2 uses
  %i.aqh = fsub fast <2 x float> %i.aqa, %i.aqb   ; 2 uses
  %i.aqi = fmul fast <2 x float> %i.aqg, splat (float f0x3F3504F3)
  %i.aqj = fmul fast <2 x float> %i.aqh, splat (float f0x3FB504F3)
  %i.aqk = fadd fast <2 x float> %i.aqj, %i.aqi
  store <2 x float> %i.aqk, ptr %i.bv, align 8, !tbaa !39
  %i.aql = fmul fast <2 x float> %i.apz, splat (float 5.000000e-01)
  %i.aqm = fmul fast <2 x float> %i.aqc, splat (float 2.000000e+00)
  %i.aqn = fadd fast <2 x float> %i.aqm, %i.aql
  store <2 x float> %i.aqn, ptr %i.bw, align 8, !tbaa !39
  %i.aqo = load <2 x float>, ptr %i.apw, align 4, !tbaa !39
  %i.aqp = fmul fast <2 x float> %i.aqg, splat (float f0x3EB504F3)
  %i.aqq = fadd fast <2 x float> %i.aqp, %i.aqo
  %i.aqr = fmul fast <2 x float> %i.aqh, splat (float f0x403504F3)
  %i.aqs = fadd fast <2 x float> %i.aqq, %i.aqr
  store <2 x float> %i.aqs, ptr %i.bx, align 8, !tbaa !39
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %i.apr, i64 %i.aoa ; 2 uses
  %i.aqu = getelementptr inbounds nuw [4 x i8], ptr %i.aps, i64 %i.aoa ; 2 uses
  %i.aqv = getelementptr inbounds nuw [4 x i8], ptr %i.apt, i64 %i.aoa ; 2 uses
  %i.aqw = getelementptr inbounds nuw [4 x i8], ptr %i.apu, i64 %i.aoa ; 2 uses
  %i.aqx = getelementptr inbounds nuw [4 x i8], ptr %i.apv, i64 %i.aoa ; 2 uses
  %i.aqy = getelementptr inbounds nuw [4 x i8], ptr %i.apw, i64 %i.aoa ; 2 uses
  %i.aqz = load <2 x float>, ptr %i.aqu, align 4, !tbaa !39 ; 2 uses
  %i.ara = load <2 x float>, ptr %i.aqv, align 4, !tbaa !39 ; 2 uses
  %i.arb = fadd fast <2 x float> %i.ara, %i.aqz   ; 2 uses
  %i.arc = load <2 x float>, ptr %i.aqw, align 4, !tbaa !39 ; 2 uses
  %i.ard = load <2 x float>, ptr %i.aqx, align 4, !tbaa !39 ; 2 uses
  %i.are = fadd fast <2 x float> %i.ard, %i.arc   ; 2 uses
  %i.arf = load <2 x float>, ptr %i.aqt, align 4, !tbaa !39
  %i.arg = fadd fast <2 x float> %i.are, %i.arb
  %i.arh = fadd fast <2 x float> %i.arg, %i.arf
  store <2 x float> %i.arh, ptr %i.by, align 16, !tbaa !39
  %i.ari = fsub fast <2 x float> %i.aqz, %i.ara   ; 2 uses
  %i.arj = fsub fast <2 x float> %i.arc, %i.ard   ; 2 uses
  %i.ark = fmul fast <2 x float> %i.ari, splat (float f0x3F3504F3)
  %i.arl = fmul fast <2 x float> %i.arj, splat (float f0x3FB504F3)
  %i.arm = fadd fast <2 x float> %i.arl, %i.ark
  store <2 x float> %i.arm, ptr %i.bz, align 16, !tbaa !39
  %i.arn = fmul fast <2 x float> %i.arb, splat (float 5.000000e-01)
  %i.aro = fmul fast <2 x float> %i.are, splat (float 2.000000e+00)
  %i.arp = fadd fast <2 x float> %i.aro, %i.arn
  store <2 x float> %i.arp, ptr %i.ca, align 16, !tbaa !39
  %i.arq = load <2 x float>, ptr %i.aqy, align 4, !tbaa !39
  %i.arr = fmul fast <2 x float> %i.ari, splat (float f0x3EB504F3)
  %i.ars = fadd fast <2 x float> %i.arr, %i.arq
  %i.art = fmul fast <2 x float> %i.arj, splat (float f0x403504F3)
  %i.aru = fadd fast <2 x float> %i.ars, %i.art
  store <2 x float> %i.aru, ptr %i.cb, align 16, !tbaa !39
  %i.arv = getelementptr inbounds nuw [4 x i8], ptr %i.aqt, i64 %i.aoa ; 2 uses
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %i.aqu, i64 %i.aoa ; 2 uses
  %i.arx = getelementptr inbounds nuw [4 x i8], ptr %i.aqv, i64 %i.aoa ; 2 uses
  %i.ary = getelementptr inbounds nuw [4 x i8], ptr %i.aqw, i64 %i.aoa ; 2 uses
  %i.arz = getelementptr inbounds nuw [4 x i8], ptr %i.aqx, i64 %i.aoa ; 2 uses
  %i.asa = getelementptr inbounds nuw [4 x i8], ptr %i.aqy, i64 %i.aoa ; 2 uses
  %i.asb = load <2 x float>, ptr %i.arw, align 4, !tbaa !39 ; 2 uses
  %i.asc = load <2 x float>, ptr %i.arx, align 4, !tbaa !39 ; 2 uses
  %i.asd = fadd fast <2 x float> %i.asc, %i.asb   ; 2 uses
  %i.ase = load <2 x float>, ptr %i.ary, align 4, !tbaa !39 ; 2 uses
  %i.asf = load <2 x float>, ptr %i.arz, align 4, !tbaa !39 ; 2 uses
  %i.asg = fadd fast <2 x float> %i.asf, %i.ase   ; 2 uses
  %i.ash = load <2 x float>, ptr %i.arv, align 4, !tbaa !39
  %i.asi = fadd fast <2 x float> %i.asg, %i.asd
  %i.asj = fadd fast <2 x float> %i.asi, %i.ash
  store <2 x float> %i.asj, ptr %i.cc, align 8, !tbaa !39
  %i.ask = fsub fast <2 x float> %i.asb, %i.asc   ; 2 uses
  %i.asl = fsub fast <2 x float> %i.ase, %i.asf   ; 2 uses
  %i.asm = fmul fast <2 x float> %i.ask, splat (float f0x3F3504F3)
  %i.asn = fmul fast <2 x float> %i.asl, splat (float f0x3FB504F3)
  %i.aso = fadd fast <2 x float> %i.asn, %i.asm
  store <2 x float> %i.aso, ptr %i.cd, align 8, !tbaa !39
  %i.asp = fmul fast <2 x float> %i.asd, splat (float 5.000000e-01)
  %i.asq = fmul fast <2 x float> %i.asg, splat (float 2.000000e+00)
  %i.asr = fadd fast <2 x float> %i.asq, %i.asp
  store <2 x float> %i.asr, ptr %i.ce, align 8, !tbaa !39
  %i.ass = load <2 x float>, ptr %i.asa, align 4, !tbaa !39
  %i.ast = fmul fast <2 x float> %i.ask, splat (float f0x3EB504F3)
  %i.asu = fadd fast <2 x float> %i.ast, %i.ass
  %i.asv = fmul fast <2 x float> %i.asl, splat (float f0x403504F3)
  %i.asw = fadd fast <2 x float> %i.asu, %i.asv
  store <2 x float> %i.asw, ptr %i.cf, align 8, !tbaa !39
  %i.asx = getelementptr inbounds nuw [4 x i8], ptr %i.arv, i64 %i.aoa ; 2 uses
  %i.asy = getelementptr inbounds nuw [4 x i8], ptr %i.arw, i64 %i.aoa ; 2 uses
  %i.asz = getelementptr inbounds nuw [4 x i8], ptr %i.arx, i64 %i.aoa ; 2 uses
  %i.ata = getelementptr inbounds nuw [4 x i8], ptr %i.ary, i64 %i.aoa ; 2 uses
  %i.atb = getelementptr inbounds nuw [4 x i8], ptr %i.arz, i64 %i.aoa ; 2 uses
  %i.atc = getelementptr inbounds nuw [4 x i8], ptr %i.asa, i64 %i.aoa ; 2 uses
  %i.atd = load <2 x float>, ptr %i.asy, align 4, !tbaa !39 ; 2 uses
  %i.ate = load <2 x float>, ptr %i.asz, align 4, !tbaa !39 ; 2 uses
  %i.atf = fadd fast <2 x float> %i.ate, %i.atd   ; 2 uses
  %i.atg = load <2 x float>, ptr %i.ata, align 4, !tbaa !39 ; 2 uses
  %i.ath = load <2 x float>, ptr %i.atb, align 4, !tbaa !39 ; 2 uses
  %i.ati = fadd fast <2 x float> %i.ath, %i.atg   ; 2 uses
  %i.atj = load <2 x float>, ptr %i.asx, align 4, !tbaa !39
  %i.atk = fadd fast <2 x float> %i.ati, %i.atf
end_hunk_23
begin_hunk_24_@_ZN4ncnnL26conv3x3s1_winograd43_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.15:bb.a
  %i.azy = fmul fast float %i.azx, %i.azj
  %i.azz = insertelement <2 x float> %i.azl, float %i.azy, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread821.us.i: ; preds = %bb.z
  %i.baa = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.awp)
  %i.bab = fadd fast <2 x float> %i.baa, splat (float 1.000000e+00)
  %i.bac = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.bab)
  %i.bad = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.bac)
  %i.bae = fmul fast <2 x float> %i.bad, %i.awp
  %i.baf = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.awj)
  %i.bag = fadd fast <2 x float> %i.baf, splat (float 1.000000e+00)
  %i.bah = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.bag)
  %i.bai = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.bah)
  %i.baj = fmul fast <2 x float> %i.bai, %i.awj
  %i.bak = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.awt)
  %i.bal = fadd fast <2 x float> %i.bak, splat (float 1.000000e+00)
  %i.bam = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.bal)
  %i.ban = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.bam)
  %i.bao = fmul fast <2 x float> %i.ban, %i.awt
  %i.bap = extractelement <2 x float> %i.awy, i64 0
  %i.baq = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bap)
  %i.bar = extractelement <2 x float> %i.awy, i64 1
  %i.bas = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bar)
  %i.bat = fadd fast float %i.bas, 1.000000e+00
  %i.bau = fadd fast float %i.baq, 1.000000e+00
  %i.bav = call fast float @llvm.log.f32(float %i.bat)
  %i.baw = call fast float @llvm.log.f32(float %i.bau)
  %i.bax = call fast float @llvm.tanh.f32(float %i.bav)
  %i.bay = call fast float @llvm.tanh.f32(float %i.baw)
  %i.baz = insertelement <2 x float> poison, float %i.bay, i64 0
  %i.bba = insertelement <2 x float> %i.baz, float %i.bax, i64 1
  %i.bbb = fmul fast <2 x float> %i.bba, %i.awy
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread818.us.i: ; preds = %bb.z
  %i.bbc = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.awp, <2 x float> splat (float f0x42B0C0A5))
  %i.bbd = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbc, <2 x float> splat (float f0xC2B0C0A5))
  %i.bbe = fneg fast <2 x float> %i.bbd
  %i.bbf = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bbe)
  %i.bbg = fadd fast <2 x float> %i.bbf, splat (float 1.000000e+00)
  %i.bbh = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bbg
  %i.bbi = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.awj, <2 x float> splat (float f0x42B0C0A5))
  %i.bbj = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbi, <2 x float> splat (float f0xC2B0C0A5))
  %i.bbk = fneg fast <2 x float> %i.bbj
  %i.bbl = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bbk)
  %i.bbm = fadd fast <2 x float> %i.bbl, splat (float 1.000000e+00)
  %i.bbn = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bbm
  %i.bbo = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.awt, <2 x float> splat (float f0x42B0C0A5))
  %i.bbp = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbo, <2 x float> splat (float f0xC2B0C0A5))
  %i.bbq = fneg fast <2 x float> %i.bbp
  %i.bbr = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bbq)
  %i.bbs = fadd fast <2 x float> %i.bbr, splat (float 1.000000e+00)
  %i.bbt = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bbs
  %i.bbu = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.awy, <2 x float> splat (float f0x42B0C0A5))
  %i.bbv = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbu, <2 x float> splat (float f0xC2B0C0A5))
  %i.bbw = fneg fast <2 x float> %i.bbv
  %i.bbx = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bbw)
  %i.bby = fadd fast <2 x float> %i.bbx, splat (float 1.000000e+00)
  %i.bbz = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bby
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread809.us.i: ; preds = %bb.z
  %i.bca = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.bcb = load float, ptr %i.bca, align 4, !tbaa !39 ; 3 uses
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bca, i64 4
  %i.bcd = load float, ptr %i.bcc, align 4, !tbaa !39 ; 5 uses
  %i.bce = insertelement <2 x float> poison, float %i.bcb, i64 0
  %i.bcf = shufflevector <2 x float> %i.bce, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bcg = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.awp, <2 x float> %i.bcf) ; 2 uses
  %i.bch = insertelement <2 x float> poison, float %i.bcd, i64 0
  %i.bci = shufflevector <2 x float> %i.bch, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.bcj = fcmp fast ogt <2 x float> %i.bcg, %i.bci
  %i.bck = select <2 x i1> %i.bcj, <2 x float> %i.bci, <2 x float> %i.bcg ; 2 uses
  %i.bcl = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.awj, <2 x float> %i.bcf) ; 2 uses
  %i.bcm = fcmp fast ogt <2 x float> %i.bcl, %i.bci
  %i.bcn = select <2 x i1> %i.bcm, <2 x float> %i.bci, <2 x float> %i.bcl ; 2 uses
  %i.bco = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.awt, <2 x float> %i.bcf) ; 2 uses
  %i.bcp = fcmp fast ogt <2 x float> %i.bco, %i.bci
  %i.bcq = select <2 x i1> %i.bcp, <2 x float> %i.bci, <2 x float> %i.bco ; 2 uses
  %i.bcr = extractelement <2 x float> %i.awy, i64 0
  %.0697.us.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bcr, float %i.bcb) ; 2 uses
  %i.bcs = fcmp fast ogt float %.0697.us.i, %i.bcd
  %.16981156.us.i = select i1 %i.bcs, float %i.bcd, float %.0697.us.i
  %i.bct = extractelement <2 x float> %i.awy, i64 1
  %.0699.us.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bct, float %i.bcb) ; 2 uses
  %i.bcu = fcmp fast ogt float %.0699.us.i, %i.bcd
  %i.bcv = insertelement <2 x float> poison, float %.16981156.us.i, i64 0
  %i.bcw = insertelement <2 x float> %i.bcv, float %.0699.us.i, i64 1 ; 2 uses
  br i1 %i.bcu, label %bb.ar, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i

bb.ar:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread809.us.i
  %i.bcx = insertelement <2 x float> %i.bcw, float %i.bcd, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread815.us.i: ; preds = %bb.z
  %i.bcy = load ptr, ptr %15, align 8, !tbaa !18
  %i.bcz = load float, ptr %i.bcy, align 4, !tbaa !39
  %i.bda = fcmp fast ogt <2 x float> %i.awp, zeroinitializer
  %i.bdb = insertelement <2 x float> poison, float %i.bcz, i64 0
  %i.bdc = shufflevector <2 x float> %i.bdb, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bdd = select <2 x i1> %i.bda, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bdc
  %i.bde = fmul fast <2 x float> %i.bdd, %i.awp
  %i.bdf = fcmp fast ogt <2 x float> %i.awj, zeroinitializer
  %i.bdg = select <2 x i1> %i.bdf, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bdc
  %i.bdh = fmul fast <2 x float> %i.bdg, %i.awj
  %i.bdi = fcmp fast ogt <2 x float> %i.awt, zeroinitializer
  %i.bdj = select <2 x i1> %i.bdi, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bdc
  %i.bdk = fmul fast <2 x float> %i.bdj, %i.awt
  %i.bdl = fcmp fast ogt <2 x float> %i.awy, zeroinitializer
  %i.bdm = select <2 x i1> %i.bdl, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bdc
  %i.bdn = fmul fast <2 x float> %i.bdm, %i.awy
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread812.us.i: ; preds = %bb.z
  %i.bdo = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.awp, <2 x float> zeroinitializer)
  %i.bdp = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.awj, <2 x float> zeroinitializer)
  %i.bdq = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.awt, <2 x float> zeroinitializer)
  %i.bdr = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.awy, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i:   ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread812.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread815.us.i, %bb.ar, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread809.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread818.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread821.us.i, %bb.aq, %bb.ap, %_ZL13activation_ssfiRKN4ncnn3MatE.exit586.thread.us.i, %bb.z
  %i.bds = phi <2 x float> [ %i.azl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit586.thread.us.i ], [ %i.bdr, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread812.us.i ], [ %i.bdn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread815.us.i ], [ %i.bcx, %bb.ar ], [ %i.bcw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread809.us.i ], [ %i.bbz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread818.us.i ], [ %i.bbb, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread821.us.i ], [ %i.azz, %bb.aq ], [ %i.azv, %bb.ap ], [ %i.awy, %bb.z ]
  %i.bdt = phi <2 x float> [ %i.azn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit586.thread.us.i ], [ %i.bdq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread812.us.i ], [ %i.bdk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread815.us.i ], [ %i.bcq, %bb.ar ], [ %i.bcq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread809.us.i ], [ %i.bbt, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread818.us.i ], [ %i.bao, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread821.us.i ], [ %i.azn, %bb.aq ], [ %i.azn, %bb.ap ], [ %i.awt, %bb.z ]
  %i.bdu = phi <2 x float> [ %i.azp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit586.thread.us.i ], [ %i.bdp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread812.us.i ], [ %i.bdh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread815.us.i ], [ %i.bcn, %bb.ar ], [ %i.bcn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread809.us.i ], [ %i.bbn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread818.us.i ], [ %i.baj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread821.us.i ], [ %i.azp, %bb.aq ], [ %i.azp, %bb.ap ], [ %i.awj, %bb.z ]
  %i.bdv = phi <2 x float> [ %i.azr, %_ZL13activation_ssfiRKN4ncnn3MatE.exit586.thread.us.i ], [ %i.bdo, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread812.us.i ], [ %i.bde, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread815.us.i ], [ %i.bck, %bb.ar ], [ %i.bck, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread809.us.i ], [ %i.bbh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread818.us.i ], [ %i.bae, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread821.us.i ], [ %i.azr, %bb.aq ], [ %i.azr, %bb.ap ], [ %i.awp, %bb.z ]
  %i.bdw = getelementptr inbounds nuw [2 x i8], ptr %.05241362.us.i, i64 %i.dv ; 4 uses
  %i.bdx = bitcast <2 x float> %i.bdv to <2 x i32>
  %i.bdy = lshr <2 x i32> %i.bdx, splat (i32 16)
  %i.bdz = trunc nuw <2 x i32> %i.bdy to <2 x i16> ; 2 uses
  %i.bea = extractelement <2 x i16> %i.bdz, i64 0
  store i16 %i.bea, ptr %.05241362.us.i, align 2, !tbaa !394
  %i.beb = extractelement <2 x i16> %i.bdz, i64 1
  store i16 %i.beb, ptr %i.bdw, align 2, !tbaa !394
  br i1 %i.avm, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i
  %i.bec = bitcast <2 x float> %i.bdu to <2 x i32>
  %i.bed = getelementptr inbounds nuw i8, ptr %.05241362.us.i, i64 2
  %i.bee = lshr <2 x i32> %i.bec, splat (i32 16)
  %i.bef = trunc nuw <2 x i32> %i.bee to <2 x i16> ; 2 uses
  %i.beg = extractelement <2 x i16> %i.bef, i64 0
  store i16 %i.beg, ptr %i.bed, align 2, !tbaa !394
  %i.beh = getelementptr inbounds nuw i8, ptr %i.bdw, i64 2
  %i.bei = extractelement <2 x i16> %i.bef, i64 1
  store i16 %i.bei, ptr %i.beh, align 2, !tbaa !394
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i
  br i1 %i.avo, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.bej = bitcast <2 x float> %i.bdt to <2 x i32>
  %i.bek = getelementptr inbounds nuw i8, ptr %.05241362.us.i, i64 4
  %i.bel = lshr <2 x i32> %i.bej, splat (i32 16)
  %i.bem = trunc nuw <2 x i32> %i.bel to <2 x i16> ; 2 uses
  %i.ben = extractelement <2 x i16> %i.bem, i64 0
  store i16 %i.ben, ptr %i.bek, align 2, !tbaa !394
  %i.beo = getelementptr inbounds nuw i8, ptr %i.bdw, i64 4
  %i.bep = extractelement <2 x i16> %i.bem, i64 1
  store i16 %i.bep, ptr %i.beo, align 2, !tbaa !394
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  br i1 %i.avq, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.beq = bitcast <2 x float> %i.bds to <2 x i32>
  %i.ber = getelementptr inbounds nuw i8, ptr %.05241362.us.i, i64 6
  %i.bes = lshr <2 x i32> %i.beq, splat (i32 16)
  %i.bet = trunc nuw <2 x i32> %i.bes to <2 x i16> ; 2 uses
  %i.beu = extractelement <2 x i16> %i.bet, i64 0
  store i16 %i.beu, ptr %i.ber, align 2, !tbaa !394
  %i.bev = getelementptr inbounds nuw i8, ptr %i.bdw, i64 6
  %i.bew = extractelement <2 x i16> %i.bet, i64 1
  store i16 %i.bew, ptr %i.bev, align 2, !tbaa !394
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.bex = getelementptr inbounds [2 x i8], ptr %.05241362.us.i, i64 %i.aob
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.y
  %.1525.us.i = phi ptr [ %.05241362.us.i, %bb.y ], [ %i.bex, %bb.ax ]
  %indvars.iv.next1428.i = add nuw nsw i64 %indvars.iv1427.i, 1 ; 2 uses
  %exitcond1430.not.i = icmp eq i64 %indvars.iv.next1428.i, 4
  br i1 %exitcond1430.not.i, label %bb.az, label %bb.y, !llvm.loop !1773

bb.az:                                            ; preds = %bb.ay
  %indvars.iv.next1432.i = add nuw nsw i64 %indvars.iv1431.i, 1 ; 2 uses
  %exitcond1435.not.i = icmp eq i64 %indvars.iv.next1432.i, %wide.trip.count1434.i
  br i1 %exitcond1435.not.i, label %._crit_edge.us1373.i, label %_ZN4ncnn3MatD2Ev.exit559.us.i, !llvm.loop !1774

._crit_edge.us1373.i:                             ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %indvars.iv.next1437.i = add nuw nsw i64 %indvars.iv1436.i, 2 ; 3 uses
  %i.bey = icmp slt i64 %indvars.iv.next1437.i, %invariant.op.i
  br i1 %i.bey, label %bb.w, label %.preheader.loopexit.i, !llvm.loop !1775

.lr.ph1369.split.i:                               ; preds = %.lr.ph1369.i
  %19 = sub i32 %18, %.0526.lcssa.i
  %20 = and i32 %19, -2
  %21 = add i32 %.0526.lcssa.i, 2
  %i.bez = add i32 %21, %20
  br label %.preheader.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.us1373.i
  %i.bfa = trunc nsw i64 %indvars.iv.next1437.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph1369.split.i, %.preheader1337.i
  %.1527.lcssa.i = phi i32 [ %.0526.lcssa.i, %.preheader1337.i ], [ %i.bez, %.lr.ph1369.split.i ], [ %i.bfa, %.preheader.loopexit.i ] ; 2 uses
  %i.bfb = icmp slt i32 %.1527.lcssa.i, %.sroa.speculated124
  br i1 %i.bfb, label %.lr.ph1395.i, label %_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit

.lr.ph1395.i:                                     ; preds = %.preheader.i
  %.not.i83 = icmp eq ptr %.val81, null
  %i.bfc = icmp sgt i32 %.sroa.speculated120, 0
  %i.bfd = sext i32 %.sroa.speculated120 to i64
  %i.bfe = shl nsw i32 %.sroa.speculated120, 1
  %i.bff = sext i32 %i.bfe to i64
  %i.bfg = mul nsw i32 %.sroa.speculated120, 3
  %i.bfh = sext i32 %i.bfg to i64
  %i.bfi = shl nsw i32 %.sroa.speculated120, 2
  %i.bfj = sext i32 %i.bfi to i64
  %i.bfk = mul nsw i32 %.sroa.speculated120, 5
  %i.bfl = sext i32 %i.bfk to i64
  %i.bfm = mul nsw i32 %.sroa.speculated120, 6
  %i.bfn = sext i32 %i.bfm to i64                 ; 30 uses
  %i.bfo = sext i32 %i.dq to i64                  ; 3 uses
  br i1 %i.bfc, label %.lr.ph1395.split.us.i, label %_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit

.lr.ph1395.split.us.i:                            ; preds = %.lr.ph1395.i
  %i.bfp = load i32, ptr %i.ap, align 4, !tbaa !75, !noalias !1776
  %i.bfq = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1776
  %i.bfr = load i64, ptr %i.as, align 8, !tbaa !20, !noalias !1776
  %i.bfs = load i64, ptr %i.aw, align 8, !tbaa !65, !noalias !1776 ; 2 uses
  %factor.op.mul1400.i = mul i64 %i.bfs, %i.bfr
  %i.bft = sext i32 %i.bfp to i64
  %factor.op.mul1391.us.i = mul i64 %i.bfs, %i.bft
  %i.bfu = sext i32 %.1527.lcssa.i to i64
  %wide.trip.count1450.i = zext nneg i32 %.sroa.speculated120 to i64
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.us1398.i, %.lr.ph1395.split.us.i
  %indvars.iv1452.i = phi i64 [ %indvars.iv.next1453.i, %._crit_edge.us1398.i ], [ %i.bfu, %.lr.ph1395.split.us.i ] ; 3 uses
  %.pre1457.i = add nsw i64 %indvars.iv1452.i, %i.de ; 2 uses
  br i1 %.not.i83, label %.lr.ph.us1397.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.bfv = getelementptr inbounds [4 x i8], ptr %.val81, i64 %.pre1457.i
  %i.bfw = load float, ptr %i.bfv, align 4, !tbaa !39
  br label %.lr.ph.us1397.i

.lr.ph.us1397.i:                                  ; preds = %bb.bb, %bb.ba
  %i.bfx = phi fast float [ %i.bfw, %bb.bb ], [ 0.000000e+00, %bb.ba ] ; 2 uses
  %i.bfy = trunc nsw i64 %indvars.iv1452.i to i32
  %factor.op.mul1388.reass.us.i = mul i32 %factor.op.mul1348.i, %i.bfy
  %i.bfz = sext i32 %factor.op.mul1388.reass.us.i to i64
  %i.bga = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.bfz
  %.reass1401.i = mul i64 %factor.op.mul1400.i, %.pre1457.i
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bfq, i64 %.reass1401.i
  %i.bgc = insertelement <4 x float> poison, float %i.bfx, i64 0 ; 4 uses
  %i.bgd = insertelement <2 x float> poison, float %i.bfx, i64 0 ; 4 uses
  %i.bge = shufflevector <2 x float> %i.bgd, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bgf = shufflevector <2 x float> %i.bgd, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bgg = shufflevector <2 x float> %i.bgd, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bgh = shufflevector <2 x float> %i.bgd, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %bb.du, %.lr.ph.us1397.i
  %indvars.iv1447.i = phi i64 [ 0, %.lr.ph.us1397.i ], [ %indvars.iv.next1448.i, %bb.du ] ; 3 uses
  %i.bgi = getelementptr inbounds nuw [4 x i8], ptr %i.bga, i64 %indvars.iv1447.i ; 7 uses
  %i.bgj = getelementptr inbounds nuw [4 x i8], ptr %i.bgi, i64 %i.bfd ; 2 uses
  %i.bgk = getelementptr inbounds nuw [4 x i8], ptr %i.bgi, i64 %i.bff ; 2 uses
  %i.bgl = getelementptr inbounds nuw [4 x i8], ptr %i.bgi, i64 %i.bfh ; 2 uses
  %i.bgm = getelementptr inbounds nuw [4 x i8], ptr %i.bgi, i64 %i.bfj ; 2 uses
  %i.bgn = getelementptr inbounds nuw [4 x i8], ptr %i.bgi, i64 %i.bfl ; 2 uses
  %i.bgo = load float, ptr %i.bgj, align 4, !tbaa !39 ; 2 uses
  %i.bgp = load float, ptr %i.bgk, align 4, !tbaa !39 ; 2 uses
  %i.bgq = load float, ptr %i.bgl, align 4, !tbaa !39 ; 2 uses
  %i.bgr = load float, ptr %i.bgi, align 4, !tbaa !39
  %i.bgs = load float, ptr %i.bgn, align 4, !tbaa !39
  %i.bgt = getelementptr inbounds nuw [4 x i8], ptr %i.bgi, i64 %i.bfn ; 2 uses
  %i.bgu = getelementptr inbounds nuw [4 x i8], ptr %i.bgj, i64 %i.bfn ; 2 uses
  %i.bgv = getelementptr inbounds nuw [4 x i8], ptr %i.bgk, i64 %i.bfn ; 2 uses
  %i.bgw = getelementptr inbounds nuw [4 x i8], ptr %i.bgl, i64 %i.bfn ; 2 uses
  %i.bgx = getelementptr inbounds nuw [4 x i8], ptr %i.bgm, i64 %i.bfn ; 2 uses
  %i.bgy = getelementptr inbounds nuw [4 x i8], ptr %i.bgn, i64 %i.bfn ; 2 uses
  %i.bgz = load float, ptr %i.bgu, align 4, !tbaa !39 ; 2 uses
  %i.bha = load float, ptr %i.bgv, align 4, !tbaa !39 ; 2 uses
  %i.bhb = load float, ptr %i.bgw, align 4, !tbaa !39 ; 2 uses
  %i.bhc = load float, ptr %i.bgt, align 4, !tbaa !39
  %i.bhd = load float, ptr %i.bgy, align 4, !tbaa !39
  %i.bhe = getelementptr inbounds nuw [4 x i8], ptr %i.bgt, i64 %i.bfn ; 2 uses
  %i.bhf = getelementptr inbounds nuw [4 x i8], ptr %i.bgu, i64 %i.bfn ; 2 uses
  %i.bhg = getelementptr inbounds nuw [4 x i8], ptr %i.bgv, i64 %i.bfn ; 2 uses
  %i.bhh = getelementptr inbounds nuw [4 x i8], ptr %i.bgw, i64 %i.bfn ; 2 uses
  %i.bhi = getelementptr inbounds nuw [4 x i8], ptr %i.bgx, i64 %i.bfn ; 2 uses
  %i.bhj = getelementptr inbounds nuw [4 x i8], ptr %i.bgy, i64 %i.bfn ; 2 uses
  %i.bhk = load float, ptr %i.bhf, align 4, !tbaa !39 ; 2 uses
  %i.bhl = load float, ptr %i.bhg, align 4, !tbaa !39 ; 2 uses
  %i.bhm = load float, ptr %i.bhh, align 4, !tbaa !39 ; 2 uses
  %i.bhn = load float, ptr %i.bhe, align 4, !tbaa !39
  %i.bho = load float, ptr %i.bhj, align 4, !tbaa !39
  %i.bhp = getelementptr inbounds nuw [4 x i8], ptr %i.bhe, i64 %i.bfn ; 2 uses
  %i.bhq = getelementptr inbounds nuw [4 x i8], ptr %i.bhf, i64 %i.bfn ; 2 uses
  %i.bhr = getelementptr inbounds nuw [4 x i8], ptr %i.bhg, i64 %i.bfn ; 2 uses
  %i.bhs = getelementptr inbounds nuw [4 x i8], ptr %i.bhh, i64 %i.bfn ; 2 uses
  %i.bht = getelementptr inbounds nuw [4 x i8], ptr %i.bhi, i64 %i.bfn ; 2 uses
  %i.bhu = getelementptr inbounds nuw [4 x i8], ptr %i.bhj, i64 %i.bfn ; 2 uses
  %i.bhv = load float, ptr %i.bhq, align 4, !tbaa !39 ; 2 uses
  %i.bhw = load float, ptr %i.bhr, align 4, !tbaa !39 ; 2 uses
  %i.bhx = load float, ptr %i.bhs, align 4, !tbaa !39 ; 2 uses
  %i.bhy = load float, ptr %i.bht, align 4, !tbaa !39 ; 2 uses
  %i.bhz = load float, ptr %i.bhp, align 4, !tbaa !39
  %i.bia = insertelement <4 x float> poison, float %i.bgp, i64 0
  %i.bib = insertelement <4 x float> %i.bia, float %i.bha, i64 1
  %i.bic = insertelement <4 x float> %i.bib, float %i.bhl, i64 2
  %i.bid = insertelement <4 x float> %i.bic, float %i.bhw, i64 3
  %i.bie = insertelement <4 x float> poison, float %i.bgo, i64 0
  %i.bif = insertelement <4 x float> %i.bie, float %i.bgz, i64 1
  %i.big = insertelement <4 x float> %i.bif, float %i.bhk, i64 2
  %i.bih = insertelement <4 x float> %i.big, float %i.bhv, i64 3
  %i.bii = fadd fast <4 x float> %i.bid, %i.bih   ; 3 uses
  %i.bij = insertelement <4 x float> poison, float %i.bgq, i64 0
  %i.bik = insertelement <4 x float> %i.bij, float %i.bhb, i64 1
  %i.bil = insertelement <4 x float> %i.bik, float %i.bhm, i64 2
  %i.bim = insertelement <4 x float> %i.bil, float %i.bhx, i64 3
  %i.bin = insertelement <4 x float> poison, float %i.bgr, i64 0
  %i.bio = insertelement <4 x float> %i.bin, float %i.bhc, i64 1
  %i.bip = insertelement <4 x float> %i.bio, float %i.bhn, i64 2
  %i.biq = insertelement <4 x float> %i.bip, float %i.bhz, i64 3
  %i.bir = fadd fast <4 x float> %i.biq, %i.bii
  %i.bis = load float, ptr %i.bhu, align 4, !tbaa !39
  %i.bit = getelementptr inbounds nuw [4 x i8], ptr %i.bhp, i64 %i.bfn ; 2 uses
  %i.biu = getelementptr inbounds nuw [4 x i8], ptr %i.bhq, i64 %i.bfn ; 2 uses
  %i.biv = getelementptr inbounds nuw [4 x i8], ptr %i.bhr, i64 %i.bfn ; 2 uses
  %i.biw = getelementptr inbounds nuw [4 x i8], ptr %i.bhs, i64 %i.bfn ; 2 uses
  %i.bix = getelementptr inbounds nuw [4 x i8], ptr %i.bht, i64 %i.bfn ; 2 uses
  %i.biy = getelementptr inbounds nuw [4 x i8], ptr %i.bhu, i64 %i.bfn ; 2 uses
  %i.biz = load float, ptr %i.biu, align 4, !tbaa !39 ; 2 uses
  %i.bja = load float, ptr %i.biv, align 4, !tbaa !39 ; 2 uses
  %i.bjb = load float, ptr %i.biw, align 4, !tbaa !39 ; 2 uses
  %i.bjc = load float, ptr %i.bix, align 4, !tbaa !39 ; 2 uses
  %i.bjd = load float, ptr %i.bit, align 4, !tbaa !39
  %i.bje = load float, ptr %i.biy, align 4, !tbaa !39
  %i.bjf = getelementptr inbounds nuw [4 x i8], ptr %i.bit, i64 %i.bfn
  %i.bjg = getelementptr inbounds nuw [4 x i8], ptr %i.biu, i64 %i.bfn
  %i.bjh = getelementptr inbounds nuw [4 x i8], ptr %i.biv, i64 %i.bfn
  %i.bji = getelementptr inbounds nuw [4 x i8], ptr %i.biw, i64 %i.bfn
  %i.bjj = getelementptr inbounds nuw [4 x i8], ptr %i.bix, i64 %i.bfn
  %i.bjk = getelementptr inbounds nuw [4 x i8], ptr %i.biy, i64 %i.bfn
  %i.bjl = load float, ptr %i.bjg, align 4, !tbaa !39 ; 2 uses
  %i.bjm = load float, ptr %i.bjh, align 4, !tbaa !39 ; 2 uses
  %i.bjn = load float, ptr %i.bji, align 4, !tbaa !39 ; 2 uses
  %i.bjo = load float, ptr %i.bjj, align 4, !tbaa !39 ; 2 uses
  %i.bjp = load float, ptr %i.bjf, align 4, !tbaa !39
  %i.bjq = load float, ptr %i.bgm, align 4, !tbaa !39 ; 2 uses
  %i.bjr = load float, ptr %i.bgx, align 4, !tbaa !39 ; 2 uses
  %i.bjs = load float, ptr %i.bhi, align 4, !tbaa !39 ; 2 uses
  %i.bjt = insertelement <4 x float> poison, float %i.bjq, i64 0
  %i.bju = insertelement <4 x float> %i.bjt, float %i.bjr, i64 1
  %i.bjv = insertelement <4 x float> %i.bju, float %i.bjs, i64 2
  %i.bjw = insertelement <4 x float> %i.bjv, float %i.bhy, i64 3
  %i.bjx = fadd fast <4 x float> %i.bjw, %i.bim   ; 3 uses
  %i.bjy = fadd fast <4 x float> %i.bir, %i.bjx   ; 4 uses
  %i.bjz = fadd fast float %i.bja, %i.biz         ; 2 uses
  %i.bka = fadd fast float %i.bjc, %i.bjb         ; 2 uses
  %i.bkb = fadd fast float %i.bjd, %i.bjz
  %i.bkc = fadd fast float %i.bkb, %i.bka         ; 2 uses
  %i.bkd = insertelement <4 x float> %i.bii, float %i.bjz, i64 0
  %i.bke = fmul fast <4 x float> %i.bkd, splat (float 5.000000e-01)
  %i.bkf = insertelement <4 x float> %i.bjx, float %i.bka, i64 0
  %i.bkg = fmul fast <4 x float> %i.bkf, splat (float 2.000000e+00)
  %i.bkh = fadd fast <4 x float> %i.bkg, %i.bke   ; 4 uses
  %i.bki = fsub fast float %i.bjl, %i.bjm         ; 2 uses
  %i.bkj = fsub fast float %i.biz, %i.bja         ; 2 uses
  %i.bkk = fsub fast float %i.bhv, %i.bhw         ; 2 uses
  %i.bkl = fmul fast float %i.bkk, f0x3EB504F3
  %i.bkm = fadd fast float %i.bkl, %i.bis
  %i.bkn = fsub fast float %i.bjn, %i.bjo         ; 2 uses
  %i.bko = fsub fast float %i.bjb, %i.bjc         ; 2 uses
  %i.bkp = fsub fast float %i.bhx, %i.bhy         ; 2 uses
  %i.bkq = fmul fast float %i.bkp, f0x403504F3
  %i.bkr = fadd fast float %i.bkm, %i.bkq         ; 2 uses
  %i.bks = fmul fast float %i.bkj, f0x3EB504F3
  %i.bkt = fadd fast float %i.bks, %i.bje
  %i.bku = fmul fast float %i.bko, f0x403504F3
  %i.bkv = fadd fast float %i.bkt, %i.bku         ; 2 uses
  %i.bkw = shufflevector <4 x float> %i.bii, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.bkx = insertelement <4 x float> %i.bkw, float %i.bkk, i64 0
  %i.bky = insertelement <4 x float> %i.bkx, float %i.bkj, i64 1
  %i.bkz = insertelement <4 x float> %i.bky, float %i.bki, i64 2
  %i.bla = fmul fast <4 x float> %i.bkz, <float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3, float 5.000000e-01>
  %i.blb = shufflevector <4 x float> %i.bjx, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.blc = insertelement <4 x float> %i.blb, float %i.bkp, i64 0
  %i.bld = insertelement <4 x float> %i.blc, float %i.bko, i64 1
  %i.ble = insertelement <4 x float> %i.bld, float %i.bkn, i64 2
  %i.blf = fmul fast <4 x float> %i.ble, <float f0x3FB504F3, float f0x3FB504F3, float f0x3FB504F3, float 2.000000e+00>
  %i.blg = fadd fast <4 x float> %i.blf, %i.bla   ; 4 uses
  %i.blh = insertelement <4 x float> poison, float %i.bjm, i64 0
  %i.bli = insertelement <4 x float> %i.blh, float %i.bgo, i64 1
  %i.blj = insertelement <4 x float> %i.bli, float %i.bgz, i64 2
end_hunk_24
begin_hunk_25_@_ZN4ncnnL26conv3x3s1_winograd63_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !9
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  invoke void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef %i.df)
          to label %_ZN4ncnn3MatD2Ev.exit33 unwind label %bb.k, !inline_history !19

bb.i:                                             ; preds = %bb.g
  %.not.i44 = icmp eq ptr %i.df, null
  br i1 %.not.i44, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.df) #12
  br label %_ZN4ncnn3MatD2Ev.exit33

bb.k:                                             ; preds = %bb.h
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit33:                          ; preds = %bb.f, %_ZN4ncnn3Mat7channelEi.exit48, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.dl = load ptr, ptr %i.v, align 8, !tbaa !11  ; 2 uses
  %.not.i39 = icmp eq ptr %i.dl, null
  br i1 %.not.i39, label %_ZN4ncnn3MatD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit33
  %i.dm = atomicrmw add ptr %i.dl, i32 -1 acq_rel, align 4
  %i.dn = icmp eq i32 %i.dm, 1
  br i1 %i.dn, label %bb.m, label %_ZN4ncnn3MatD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.do = load ptr, ptr %i.y, align 8, !tbaa !17  ; 3 uses
  %.not3.i40 = icmp eq ptr %i.do, null
  %i.dp = load ptr, ptr %11, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !9
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.dp)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.q, !inline_history !19

bb.o:                                             ; preds = %bb.m
  %.not.i43 = icmp eq ptr %i.dp, null
  br i1 %.not.i43, label %_ZN4ncnn3MatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.dp) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.q:                                             ; preds = %bb.n
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.l, %_ZN4ncnn3MatD2Ev.exit33, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.dv = add nsw i32 %.067, 1
  %i.dw = load i32, ptr %i.e, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.067, %i.dw
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.s:                                             ; preds = %bb.c
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #27
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26conv3x3s1_winograd63_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.16(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %15) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [6 x [8 x [4 x float]]], align 16 ; 9 uses
  %i.b = alloca [6 x [8 x [2 x float]]], align 16 ; 9 uses
  %i.c = alloca [6 x [8 x float]], align 16       ; 9 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %17 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.de

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 %i.j, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 1, ptr %i.f, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.k = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !67
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !67
  %i.n = load i32, ptr %i.d, align 4, !tbaa !67   ; 2 uses
  %.not135 = icmp sgt i32 %i.n, %i.m
  br i1 %.not135, label %._crit_edge139, label %.lr.ph138

.lr.ph138:                                        ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %17, i64 44
  %i.ap = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph138, %_ZN4ncnn3MatD2Ev.exit
  %.048136 = phi i32 [ %i.n, %.lr.ph138 ], [ %i.ce, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.bk = load i32, ptr %3, align 4, !tbaa !67
  %i.bl = mul nsw i32 %i.bk, %.048136             ; 4 uses
  %i.bm = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit79 unwind label %bb.df

_ZN4ncnn3Mat7channelEi.exit79:                    ; preds = %bb.c
  %i.bn = load ptr, ptr %4, align 8, !tbaa !18, !noalias !1823
  %i.bo = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !1823
  %i.bp = sext i32 %i.bm to i64
  %i.bq = mul i64 %i.bo, %i.bp
  %i.br = load i64, ptr %i.p, align 8, !tbaa !65, !noalias !1823
  %i.bs = mul i64 %i.bq, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bs ; 4 uses
  %i.bu = load i32, ptr %5, align 4, !tbaa !67
  %i.bv = sub nsw i32 %i.bu, %i.bl
  %i.bw = load i32, ptr %3, align 4, !tbaa !67
  %.sroa.speculated124 = call i32 @llvm.smin.i32(i32 %i.bw, i32 %i.bv) ; 8 uses
  %i.bx = load i32, ptr %6, align 4, !tbaa !67    ; 2 uses
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit79
  %i.bz = icmp sgt i32 %.sroa.speculated124, 3
  %i.ca = sext i32 %i.bl to i64                   ; 3 uses
  %i.cb = and i32 %.sroa.speculated124, 2147483644
  %i.cc = zext nneg i32 %.sroa.speculated124 to i64
  %18 = add i32 %.sroa.speculated124, -2
  %i.cd = sext i32 %.sroa.speculated124 to i64    ; 2 uses
  %invariant.op2649.i.a = add nsw i64 %i.cd, -1
  %.pre = load i32, ptr %7, align 4, !tbaa !67
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit, %_ZN4ncnn3Mat7channelEi.exit79
  %i.ce = add nsw i32 %.048136, 1
  %i.cf = load i32, ptr %i.e, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.048136, %i.cf
  br i1 %.not.not, label %bb.c, label %._crit_edge139

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit
  %i.cg = phi i32 [ %.pre, %.lr.ph ], [ %i.ccc, %_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit ]
  %i.ch = phi i32 [ %i.bx, %.lr.ph ], [ %i.cce, %_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit ]
  %.047134 = phi i32 [ 0, %.lr.ph ], [ %i.ccd, %_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit ] ; 6 uses
  %i.ci = sub nsw i32 %i.ch, %.047134
  %.sroa.speculated120 = call i32 @llvm.smin.i32(i32 %i.cg, i32 %i.ci) ; 32 uses
  %i.cj = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %bb.d
  %.pre140 = load i32, ptr %9, align 4, !tbaa !67
  br label %.noexc

._crit_edge:                                      ; preds = %.noexc, %bb.d
  %i.cl = load i32, ptr %14, align 4, !tbaa !67   ; 3 uses
  %.val81 = load ptr, ptr %13, align 8, !tbaa !18 ; 6 uses
  %i.cm = load i32, ptr %i.aq, align 4, !tbaa !75 ; 19 uses
  %i.cn = load i32, ptr %i.ar, align 8, !tbaa !76 ; 3 uses
  %i.co = load i32, ptr %i.as, align 8, !tbaa !66 ; 5 uses
  %i.cp = load i64, ptr %i.at, align 8, !tbaa !20
  %i.cq = sext i32 %i.co to i64
  %i.cr = mul i64 %i.cp, %i.cq                    ; 4 uses
  %i.cs = add nsw i32 %i.cm, 5
  %i.ct = sdiv i32 %i.cs, 6                       ; 6 uses
  %factor.op.mul2496.i = shl i32 %.sroa.speculated120, 6 ; 3 uses
  br i1 %i.bz, label %.lr.ph2499.i, label %.preheader2483.i

.lr.ph2499.i:                                     ; preds = %._crit_edge
  %.not791.i = icmp eq ptr %.val81, null
  %i.cu = getelementptr inbounds [4 x i8], ptr %.val81, i64 %i.ca
  %i.cv = icmp sgt i32 %.sroa.speculated120, 0
  %i.cw = shl nsw i32 %.sroa.speculated120, 2
  %i.cx = sext i32 %i.cw to i64
  %i.cy = shl nsw i32 %.sroa.speculated120, 3
  %i.cz = sext i32 %i.cy to i64
  %i.da = mul nsw i32 %.sroa.speculated120, 12
  %i.db = sext i32 %i.da to i64
  %i.dc = shl nsw i32 %.sroa.speculated120, 4
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i32 %.sroa.speculated120, 20
  %i.df = sext i32 %i.de to i64
  %i.dg = mul nsw i32 %.sroa.speculated120, 24
  %i.dh = sext i32 %i.dg to i64
  %i.di = mul nsw i32 %.sroa.speculated120, 28
  %i.dj = sext i32 %i.di to i64
  %i.dk = shl nsw i32 %.sroa.speculated120, 5
  %i.dl = sext i32 %i.dk to i64                   ; 8 uses
  %.idx.i = shl i64 %i.cr, 2
  %.idx793.i = mul i64 %i.cr, 6
  %i.dm = mul nsw i32 %i.co, %i.cm
  %i.dn = sext i32 %i.dm to i64
  br i1 %i.cv, label %.lr.ph2499.split.us.preheader.i, label %.preheader2483.i

.lr.ph2499.split.us.preheader.i:                  ; preds = %.lr.ph2499.i
  %i.do = sext i32 %i.cn to i64
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated120 to i64
  br label %.lr.ph2499.split.us.i

.lr.ph2499.split.us.i:                            ; preds = %._crit_edge.us.i, %.lr.ph2499.split.us.preheader.i
  %indvars.iv2574.i = phi i64 [ 0, %.lr.ph2499.split.us.preheader.i ], [ %indvars.iv.next2575.i, %._crit_edge.us.i ] ; 3 uses
  br i1 %.not791.i, label %.lr.ph.us.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph2499.split.us.i
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv2574.i
  %i.dq = load <4 x float>, ptr %i.dp, align 1, !tbaa !254
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.e, %.lr.ph2499.split.us.i
  %i.dr = phi fast <4 x float> [ %i.dq, %bb.e ], [ zeroinitializer, %.lr.ph2499.split.us.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ds = trunc i64 %indvars.iv2574.i to i32      ; 2 uses
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul2496.i, %i.ds
  %i.dt = sext i32 %factor.op.mul.reass.us.i to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.dt
  %i.dv = add i32 %i.bl, %i.ds
  %i.dw = sdiv i32 %i.dv, %i.co
  %i.dx = sext i32 %i.dw to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.af, %.lr.ph.us.i
  %indvars.iv2570.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next2571.i, %bb.af ] ; 3 uses
  %.idx2646.i.a = shl nuw nsw i64 %indvars.iv2570.i, 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 %.idx2646.i.a ; 8 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.cx
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.cz
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.db
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dd
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.df
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dh
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dj
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %bb.f ] ; 7 uses
  %.07602492.us.i = phi ptr [ %i.fy, %bb.g ], [ %i.dy, %bb.f ] ; 2 uses
  %.07612491.us.i = phi ptr [ %i.fz, %bb.g ], [ %i.dz, %bb.f ] ; 2 uses
  %.07622490.us.i = phi ptr [ %i.ga, %bb.g ], [ %i.ea, %bb.f ] ; 2 uses
  %.07632489.us.i = phi ptr [ %i.gb, %bb.g ], [ %i.eb, %bb.f ] ; 2 uses
  %.07642488.us.i = phi ptr [ %i.gc, %bb.g ], [ %i.ec, %bb.f ] ; 2 uses
  %.07652487.us.i = phi ptr [ %i.gd, %bb.g ], [ %i.ed, %bb.f ] ; 2 uses
  %.07662486.us.i = phi ptr [ %i.ge, %bb.g ], [ %i.ee, %bb.f ] ; 2 uses
  %.07802485.us.i = phi ptr [ %i.gf, %bb.g ], [ %i.ef, %bb.f ] ; 2 uses
  %i.eg = load <4 x float>, ptr %.07602492.us.i, align 16, !tbaa !254
  %i.eh = load <4 x float>, ptr %.07612491.us.i, align 16, !tbaa !254 ; 2 uses
  %i.ei = load <4 x float>, ptr %.07622490.us.i, align 16, !tbaa !254 ; 2 uses
  %i.ej = load <4 x float>, ptr %.07632489.us.i, align 16, !tbaa !254 ; 2 uses
  %i.ek = load <4 x float>, ptr %.07642488.us.i, align 16, !tbaa !254 ; 2 uses
  %i.el = load <4 x float>, ptr %.07652487.us.i, align 16, !tbaa !254 ; 2 uses
  %i.em = load <4 x float>, ptr %.07662486.us.i, align 16, !tbaa !254 ; 2 uses
  %i.en = load <4 x float>, ptr %.07802485.us.i, align 16, !tbaa !254
  %i.eo = fadd fast <4 x float> %i.ei, %i.eh      ; 3 uses
  %i.ep = fsub fast <4 x float> %i.eh, %i.ei      ; 3 uses
  %i.eq = fadd fast <4 x float> %i.ek, %i.ej      ; 3 uses
  %i.er = fsub fast <4 x float> %i.ej, %i.ek      ; 3 uses
  %i.es = fadd fast <4 x float> %i.em, %i.el      ; 3 uses
  %i.et = fsub fast <4 x float> %i.el, %i.em      ; 3 uses
  %i.eu = fadd fast <4 x float> %i.eo, %i.eg
  %i.ev = fmul fast <4 x float> %i.es, splat (float 3.200000e+01)
  %i.ew = fadd fast <4 x float> %i.eq, %i.ev
  %i.ex = fadd fast <4 x float> %i.eu, %i.ew
  %i.ey = fmul fast <4 x float> %i.er, splat (float 2.000000e+00)
  %i.ez = fadd fast <4 x float> %i.ep, %i.ey
  %i.fa = fmul fast <4 x float> %i.et, splat (float 1.600000e+01)
  %i.fb = fadd fast <4 x float> %i.fa, %i.ez
  %i.fc = fmul fast <4 x float> %i.eq, splat (float 4.000000e+00)
  %i.fd = fadd fast <4 x float> %i.eo, %i.fc
  %i.fe = fmul fast <4 x float> %i.es, splat (float 8.000000e+00)
  %i.ff = fadd fast <4 x float> %i.fe, %i.fd
  %i.fg = fmul fast <4 x float> %i.er, splat (float 8.000000e+00)
  %i.fh = fadd fast <4 x float> %i.ep, %i.fg
  %i.fi = fmul fast <4 x float> %i.et, splat (float 4.000000e+00)
  %i.fj = fadd fast <4 x float> %i.fi, %i.fh
  %i.fk = fmul fast <4 x float> %i.eq, splat (float 1.600000e+01)
  %i.fl = fadd fast <4 x float> %i.eo, %i.fk
  %i.fm = fmul fast <4 x float> %i.es, splat (float 2.000000e+00)
  %i.fn = fadd fast <4 x float> %i.fm, %i.fl
  %i.fo = fadd fast <4 x float> %i.en, %i.ep
  %i.fp = fmul fast <4 x float> %i.er, splat (float 3.200000e+01)
  %i.fq = fadd fast <4 x float> %i.fp, %i.et
  %i.fr = fadd fast <4 x float> %i.fo, %i.fq
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv.i
  store <4 x float> %i.ex, ptr %i.fs, align 16, !tbaa !254
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %indvars.iv.i
  store <4 x float> %i.fb, ptr %i.ft, align 16, !tbaa !254
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %indvars.iv.i
  store <4 x float> %i.ff, ptr %i.fu, align 16, !tbaa !254
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %indvars.iv.i
  store <4 x float> %i.fj, ptr %i.fv, align 16, !tbaa !254
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %indvars.iv.i
  store <4 x float> %i.fn, ptr %i.fw, align 16, !tbaa !254
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %indvars.iv.i
  store <4 x float> %i.fr, ptr %i.fx, align 16, !tbaa !254
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.07602492.us.i, i64 %i.dl
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.07612491.us.i, i64 %i.dl
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.07622490.us.i, i64 %i.dl
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.07632489.us.i, i64 %i.dl
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.07642488.us.i, i64 %i.dl
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.07652487.us.i, i64 %i.dl
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.07662486.us.i, i64 %i.dl
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.07802485.us.i, i64 %i.dl
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %_ZN4ncnn3MatD2Ev.exit795.us.i, label %bb.g, !llvm.loop !1826

_ZN4ncnn3MatD2Ev.exit795.us.i:                    ; preds = %bb.g
  %i.gg = trunc i64 %indvars.iv2570.i to i32
  %i.gh = add i32 %.047134, %i.gg                 ; 2 uses
  %i.gi = sdiv i32 %i.gh, %i.ct
  %i.gj = srem i32 %i.gh, %i.ct
  %i.gk = load i32, ptr %i.aq, align 4, !tbaa !75, !noalias !1827
  %i.gl = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1827
  %i.gm = load i64, ptr %i.at, align 8, !tbaa !20, !noalias !1827
  %i.gn = mul i64 %i.gm, %i.dx
  %i.go = load i64, ptr %i.az, align 8, !tbaa !65, !noalias !1827 ; 2 uses
  %i.gp = mul i64 %i.gn, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gp
  %i.gr = sext i32 %i.gk to i64
  %i.gs = mul nsw i32 %i.gi, 6
  %i.gt = sext i32 %i.gs to i64                   ; 2 uses
  %i.gu = mul nsw i64 %i.gr, %i.gt
  %i.gv = mul i64 %i.gu, %i.go
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gv
  %i.gx = mul nsw i32 %i.gj, 6                    ; 6 uses
  %i.gy = mul nsw i32 %i.gx, %i.co
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [2 x i8], ptr %i.gw, i64 %i.gz
  %i.hb = or disjoint i32 %i.gx, 1
  %i.hc = icmp slt i32 %i.hb, %i.cm               ; 2 uses
end_hunk_25
begin_hunk_26_@_ZN4ncnnL26conv3x3s1_winograd63_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.16:bb.a
  %i.ase = extractelement <8 x i16> %i.asa, i64 7
  store i16 %i.ase, ptr %i.arz, align 2, !tbaa !394
  br i1 %i.hc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.asf = bitcast <4 x float> %.0.i8171073110411541211.us.i to <8 x i16> ; 4 uses
  %i.asg = extractelement <8 x i16> %i.asf, i64 1
  %i.ash = getelementptr inbounds nuw i8, ptr %.07782493.us.i, i64 2
  store i16 %i.asg, ptr %i.ash, align 2, !tbaa !394
  %i.asi = extractelement <8 x i16> %i.asf, i64 3
  %i.asj = getelementptr inbounds nuw i8, ptr %i.arx, i64 2
  store i16 %i.asi, ptr %i.asj, align 2, !tbaa !394
  %i.ask = extractelement <8 x i16> %i.asf, i64 5
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ary, i64 2
  store i16 %i.ask, ptr %i.asl, align 2, !tbaa !394
  %i.asm = extractelement <8 x i16> %i.asf, i64 7
  %i.asn = getelementptr inbounds nuw i8, ptr %i.arz, i64 2
  store i16 %i.asm, ptr %i.asn, align 2, !tbaa !394
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %i.he, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aso = bitcast <4 x float> %.0.i815110811501215.us.i to <8 x i16> ; 4 uses
  %i.asp = extractelement <8 x i16> %i.aso, i64 1
  %i.asq = getelementptr inbounds nuw i8, ptr %.07782493.us.i, i64 4
  store i16 %i.asp, ptr %i.asq, align 2, !tbaa !394
  %i.asr = extractelement <8 x i16> %i.aso, i64 3
  %i.ass = getelementptr inbounds nuw i8, ptr %i.arx, i64 4
  store i16 %i.asr, ptr %i.ass, align 2, !tbaa !394
  %i.ast = extractelement <8 x i16> %i.aso, i64 5
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ary, i64 4
  store i16 %i.ast, ptr %i.asu, align 2, !tbaa !394
  %i.asv = extractelement <8 x i16> %i.aso, i64 7
  %i.asw = getelementptr inbounds nuw i8, ptr %i.arz, i64 4
  store i16 %i.asv, ptr %i.asw, align 2, !tbaa !394
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %i.hg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.asx = bitcast <4 x float> %.0.i81311561209.us.i to <8 x i16> ; 4 uses
  %i.asy = extractelement <8 x i16> %i.asx, i64 1
  %i.asz = getelementptr inbounds nuw i8, ptr %.07782493.us.i, i64 6
  store i16 %i.asy, ptr %i.asz, align 2, !tbaa !394
  %i.ata = extractelement <8 x i16> %i.asx, i64 3
  %i.atb = getelementptr inbounds nuw i8, ptr %i.arx, i64 6
  store i16 %i.ata, ptr %i.atb, align 2, !tbaa !394
  %i.atc = extractelement <8 x i16> %i.asx, i64 5
  %i.atd = getelementptr inbounds nuw i8, ptr %i.ary, i64 6
  store i16 %i.atc, ptr %i.atd, align 2, !tbaa !394
  %i.ate = extractelement <8 x i16> %i.asx, i64 7
  %i.atf = getelementptr inbounds nuw i8, ptr %i.arz, i64 6
  store i16 %i.ate, ptr %i.atf, align 2, !tbaa !394
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %i.hi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.atg = bitcast <4 x float> %.0.i8111217.us.i to <8 x i16> ; 4 uses
  %i.ath = extractelement <8 x i16> %i.atg, i64 1
  %i.ati = getelementptr inbounds nuw i8, ptr %.07782493.us.i, i64 8
  store i16 %i.ath, ptr %i.ati, align 2, !tbaa !394
  %i.atj = extractelement <8 x i16> %i.atg, i64 3
  %i.atk = getelementptr inbounds nuw i8, ptr %i.arx, i64 8
  store i16 %i.atj, ptr %i.atk, align 2, !tbaa !394
  %i.atl = extractelement <8 x i16> %i.atg, i64 5
  %i.atm = getelementptr inbounds nuw i8, ptr %i.ary, i64 8
  store i16 %i.atl, ptr %i.atm, align 2, !tbaa !394
  %i.atn = extractelement <8 x i16> %i.atg, i64 7
  %i.ato = getelementptr inbounds nuw i8, ptr %i.arz, i64 8
  store i16 %i.atn, ptr %i.ato, align 2, !tbaa !394
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %i.hk, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %bb.r
  %i.atp = bitcast <4 x float> %.0.i.us.i to <8 x i16> ; 4 uses
  %i.atq = extractelement <8 x i16> %i.atp, i64 1
  %i.atr = getelementptr inbounds nuw i8, ptr %.07782493.us.i, i64 10
  store i16 %i.atq, ptr %i.atr, align 2, !tbaa !394
  %i.ats = extractelement <8 x i16> %i.atp, i64 3
  %i.att = getelementptr inbounds nuw i8, ptr %i.arx, i64 10
  store i16 %i.ats, ptr %i.att, align 2, !tbaa !394
  %i.atu = extractelement <8 x i16> %i.atp, i64 5
  %i.atv = getelementptr inbounds nuw i8, ptr %i.ary, i64 10
  store i16 %i.atu, ptr %i.atv, align 2, !tbaa !394
  %i.atw = extractelement <8 x i16> %i.atp, i64 7
  %i.atx = getelementptr inbounds nuw i8, ptr %i.arz, i64 10
  store i16 %i.atw, ptr %i.atx, align 2, !tbaa !394
  br label %bb.ad

bb.t:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i
  %i.aty = bitcast <4 x float> %.0.i81910521071110611521213.us.i to <8 x i16>
  %i.atz = shufflevector <8 x i16> %i.aty, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.aua = bitcast <8 x i16> %i.atz to <4 x float>
  %i.aub = shufflevector <4 x float> %i.aua, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.auc = bitcast <4 x float> %i.aub to <2 x i64>
  %i.aud = extractelement <2 x i64> %i.auc, i64 0
  store i64 %i.aud, ptr %.07782493.us.i, align 1, !tbaa !254
  br i1 %i.hc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.aue = getelementptr inbounds nuw i8, ptr %.07782493.us.i, i64 8
  %i.auf = bitcast <4 x float> %.0.i8171073110411541211.us.i to <8 x i16>
  %i.aug = shufflevector <8 x i16> %i.auf, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.auh = bitcast <8 x i16> %i.aug to <4 x float>
  %i.aui = shufflevector <4 x float> %i.auh, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.auj = bitcast <4 x float> %i.aui to <2 x i64>
  %i.auk = extractelement <2 x i64> %i.auj, i64 0
  store i64 %i.auk, ptr %i.aue, align 1, !tbaa !254
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %i.he, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.aul = getelementptr inbounds nuw i8, ptr %.07782493.us.i, i64 16
  %i.aum = bitcast <4 x float> %.0.i815110811501215.us.i to <8 x i16>
  %i.aun = shufflevector <8 x i16> %i.aum, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.auo = bitcast <8 x i16> %i.aun to <4 x float>
  %i.aup = shufflevector <4 x float> %i.auo, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.auq = bitcast <4 x float> %i.aup to <2 x i64>
  %i.aur = extractelement <2 x i64> %i.auq, i64 0
  store i64 %i.aur, ptr %i.aul, align 1, !tbaa !254
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %i.hg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.aus = getelementptr inbounds nuw i8, ptr %.07782493.us.i, i64 24
  %i.aut = bitcast <4 x float> %.0.i81311561209.us.i to <8 x i16>
  %i.auu = shufflevector <8 x i16> %i.aut, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.auv = bitcast <8 x i16> %i.auu to <4 x float>
  %i.auw = shufflevector <4 x float> %i.auv, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.aux = bitcast <4 x float> %i.auw to <2 x i64>
  %i.auy = extractelement <2 x i64> %i.aux, i64 0
  store i64 %i.auy, ptr %i.aus, align 1, !tbaa !254
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  br i1 %i.hi, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.auz = getelementptr inbounds nuw i8, ptr %.07782493.us.i, i64 32
  %i.ava = bitcast <4 x float> %.0.i8111217.us.i to <8 x i16>
  %i.avb = shufflevector <8 x i16> %i.ava, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.avc = bitcast <8 x i16> %i.avb to <4 x float>
  %i.avd = shufflevector <4 x float> %i.avc, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ave = bitcast <4 x float> %i.avd to <2 x i64>
  %i.avf = extractelement <2 x i64> %i.ave, i64 0
  store i64 %i.avf, ptr %i.auz, align 1, !tbaa !254
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %i.hk, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.avg = getelementptr inbounds nuw i8, ptr %.07782493.us.i, i64 40
  %i.avh = bitcast <4 x float> %.0.i.us.i to <8 x i16>
  %i.avi = shufflevector <8 x i16> %i.avh, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.avj = bitcast <8 x i16> %i.avi to <4 x float>
  %i.avk = shufflevector <4 x float> %i.avj, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.avl = bitcast <4 x float> %i.avk to <2 x i64>
  %i.avm = extractelement <2 x i64> %i.avl, i64 0
  store i64 %i.avm, ptr %i.avg, align 1, !tbaa !254
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.s, %bb.r, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i
  %i.avn = getelementptr inbounds [2 x i8], ptr %.07782493.us.i, i64 %i.dn
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.h
  %.1779.us.i = phi ptr [ %.07782493.us.i, %bb.h ], [ %i.avn, %bb.ad ]
  %indvars.iv.next2567.i = add nuw nsw i64 %indvars.iv2566.i, 1 ; 2 uses
  %exitcond2569.not.i = icmp eq i64 %indvars.iv.next2567.i, 6
  br i1 %exitcond2569.not.i, label %bb.af, label %bb.h, !llvm.loop !1830

bb.af:                                            ; preds = %bb.ae
  %indvars.iv.next2571.i = add nuw nsw i64 %indvars.iv2570.i, 1 ; 2 uses
  %exitcond2573.not.i = icmp eq i64 %indvars.iv.next2571.i, %wide.trip.count.i
  br i1 %exitcond2573.not.i, label %._crit_edge.us.i, label %bb.f, !llvm.loop !1831

._crit_edge.us.i:                                 ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %indvars.iv.next2575.i = add nuw nsw i64 %indvars.iv2574.i, 4 ; 3 uses
  %i.avo = or disjoint i64 %indvars.iv.next2575.i, 3
  %i.avp = icmp samesign ult i64 %i.avo, %i.cc
  br i1 %i.avp, label %.lr.ph2499.split.us.i, label %.preheader2483.loopexit.i, !llvm.loop !1832

.preheader2483.loopexit.i:                        ; preds = %._crit_edge.us.i
  %i.avq = trunc nuw nsw i64 %indvars.iv.next2575.i to i32
  br label %.preheader2483.i

.preheader2483.i:                                 ; preds = %.lr.ph2499.i, %.preheader2483.loopexit.i, %._crit_edge
  %.0757.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.avq, %.preheader2483.loopexit.i ], [ %i.cb, %.lr.ph2499.i ] ; 5 uses
  %i.avr = or disjoint i32 %.0757.lcssa.i, 1
  %i.avs = icmp slt i32 %i.avr, %.sroa.speculated124
  br i1 %i.avs, label %.lr.ph2519.i, label %.preheader.i

.lr.ph2519.i:                                     ; preds = %.preheader2483.i
  %.not789.i = icmp eq ptr %.val81, null
  %i.avt = icmp sgt i32 %.sroa.speculated120, 0
  %i.avu = shl nsw i32 %.sroa.speculated120, 1
  %i.avv = sext i32 %i.avu to i64
  %i.avw = shl nsw i32 %.sroa.speculated120, 2
  %i.avx = sext i32 %i.avw to i64
  %i.avy = mul nsw i32 %.sroa.speculated120, 6
  %i.avz = sext i32 %i.avy to i64
  %i.awa = shl nsw i32 %.sroa.speculated120, 3
  %i.awb = sext i32 %i.awa to i64
  %i.awc = mul nsw i32 %.sroa.speculated120, 10
  %i.awd = sext i32 %i.awc to i64
  %i.awe = mul nsw i32 %.sroa.speculated120, 12
  %i.awf = sext i32 %i.awe to i64
  %i.awg = mul nsw i32 %.sroa.speculated120, 14
  %i.awh = sext i32 %i.awg to i64
  %i.awi = shl nsw i32 %.sroa.speculated120, 4
  %i.awj = sext i32 %i.awi to i64                 ; 8 uses
  %i.awk = sext i32 %i.cm to i64
  br i1 %i.avt, label %.lr.ph2519.split.us.i, label %.lr.ph2519.split.i

.lr.ph2519.split.us.i:                            ; preds = %.lr.ph2519.i
  %i.awl = load i32, ptr %i.aq, align 4, !tbaa !75, !noalias !1833
  %i.awm = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1833
  %i.awn = load i64, ptr %i.at, align 8, !tbaa !20, !noalias !1833
  %i.awo = load i64, ptr %i.az, align 8, !tbaa !65, !noalias !1833 ; 2 uses
  %factor.op.mul.i = mul i64 %i.awo, %i.awn
  %i.awp = sext i32 %i.awl to i64
  %factor.op.mul2515.us.i = mul i64 %i.awo, %i.awp
  %i.awq = sext i32 %i.cn to i64
  %i.awr = sext i32 %.0757.lcssa.i to i64
  %wide.trip.count2589.i = zext nneg i32 %.sroa.speculated120 to i64
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.us2523.i, %.lr.ph2519.split.us.i
  %indvars.iv2591.i = phi i64 [ %indvars.iv.next2592.i, %._crit_edge.us2523.i ], [ %i.awr, %.lr.ph2519.split.us.i ] ; 3 uses
  %.pre.i = add nsw i64 %indvars.iv2591.i, %i.ca  ; 2 uses
  br i1 %.not789.i, label %.thread.us.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.aws = getelementptr [4 x i8], ptr %.val81, i64 %.pre.i
  %i.awt = load <2 x float>, ptr %i.aws, align 4, !tbaa !39
  br label %.thread.us.i

.thread.us.i:                                     ; preds = %bb.ah, %bb.ag
  %i.awu = phi <2 x float> [ %i.awt, %bb.ah ], [ zeroinitializer, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.awv = trunc nsw i64 %indvars.iv2591.i to i32
  %factor.op.mul.reass.us2521.i = mul i32 %factor.op.mul2496.i, %i.awv
  %i.aww = sext i32 %factor.op.mul.reass.us2521.i to i64
  %i.awx = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.aww
  %.reass.i = mul i64 %factor.op.mul.i, %.pre.i
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awm, i64 %.reass.i
  br label %bb.ai

bb.ai:                                            ; preds = %bb.bx, %.thread.us.i
  %indvars.iv2586.i = phi i64 [ 0, %.thread.us.i ], [ %indvars.iv.next2587.i, %bb.bx ] ; 3 uses
  %.idx2647.i = shl nuw nsw i64 %indvars.iv2586.i, 3
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awx, i64 %.idx2647.i ; 8 uses
  %i.axa = getelementptr inbounds nuw [4 x i8], ptr %i.awz, i64 %i.avv
  %i.axb = getelementptr inbounds nuw [4 x i8], ptr %i.awz, i64 %i.avx
  %i.axc = getelementptr inbounds nuw [4 x i8], ptr %i.awz, i64 %i.avz
  %i.axd = getelementptr inbounds nuw [4 x i8], ptr %i.awz, i64 %i.awb
  %i.axe = getelementptr inbounds nuw [4 x i8], ptr %i.awz, i64 %i.awd
  %i.axf = getelementptr inbounds nuw [4 x i8], ptr %i.awz, i64 %i.awf
  %i.axg = getelementptr inbounds nuw [4 x i8], ptr %i.awz, i64 %i.awh
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %indvars.iv2578.i = phi i64 [ %indvars.iv.next2579.i, %bb.aj ], [ 0, %bb.ai ] ; 7 uses
  %.07682510.us.i = phi ptr [ %i.azg, %bb.aj ], [ %i.axg, %bb.ai ] ; 2 uses
  %.07692509.us.i = phi ptr [ %i.azf, %bb.aj ], [ %i.axf, %bb.ai ] ; 2 uses
  %.07702508.us.i = phi ptr [ %i.aze, %bb.aj ], [ %i.axe, %bb.ai ] ; 2 uses
  %.07712507.us.i = phi ptr [ %i.azd, %bb.aj ], [ %i.axd, %bb.ai ] ; 2 uses
  %.07722506.us.i = phi ptr [ %i.azc, %bb.aj ], [ %i.axc, %bb.ai ] ; 2 uses
  %.07732505.us.i = phi ptr [ %i.azb, %bb.aj ], [ %i.axb, %bb.ai ] ; 2 uses
  %.07742504.us.i = phi ptr [ %i.aza, %bb.aj ], [ %i.axa, %bb.ai ] ; 2 uses
  %.07752503.us.i = phi ptr [ %i.ayz, %bb.aj ], [ %i.awz, %bb.ai ] ; 2 uses
  %i.axh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv2578.i
  %i.axi = load <2 x float>, ptr %.07742504.us.i, align 4, !tbaa !39 ; 2 uses
  %i.axj = load <2 x float>, ptr %.07732505.us.i, align 4, !tbaa !39 ; 2 uses
  %i.axk = fadd fast <2 x float> %i.axj, %i.axi   ; 3 uses
  %i.axl = load <2 x float>, ptr %.07722506.us.i, align 4, !tbaa !39 ; 2 uses
  %i.axm = load <2 x float>, ptr %.07712507.us.i, align 4, !tbaa !39 ; 2 uses
  %i.axn = fadd fast <2 x float> %i.axm, %i.axl   ; 3 uses
  %i.axo = load <2 x float>, ptr %.07702508.us.i, align 4, !tbaa !39 ; 2 uses
  %i.axp = load <2 x float>, ptr %.07692509.us.i, align 4, !tbaa !39 ; 2 uses
  %i.axq = fadd fast <2 x float> %i.axp, %i.axo   ; 3 uses
  %i.axr = load <2 x float>, ptr %.07752503.us.i, align 4, !tbaa !39
  %i.axs = fmul fast <2 x float> %i.axq, splat (float 3.200000e+01)
  %i.axt = fadd fast <2 x float> %i.axn, %i.axk
  %i.axu = fadd fast <2 x float> %i.axt, %i.axs
  %i.axv = fadd fast <2 x float> %i.axu, %i.axr
  store <2 x float> %i.axv, ptr %i.axh, align 8, !tbaa !39
  %i.axw = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv2578.i
  %i.axx = fsub fast <2 x float> %i.axi, %i.axj   ; 3 uses
  %i.axy = fsub fast <2 x float> %i.axl, %i.axm   ; 3 uses
  %i.axz = fsub fast <2 x float> %i.axo, %i.axp   ; 3 uses
  %i.aya = fmul fast <2 x float> %i.axz, splat (float 1.600000e+01)
  %i.ayb = fmul fast <2 x float> %i.axy, splat (float 2.000000e+00)
  %i.ayc = fadd fast <2 x float> %i.axx, %i.aya
  %i.ayd = fadd fast <2 x float> %i.ayc, %i.ayb
  store <2 x float> %i.ayd, ptr %i.axw, align 8, !tbaa !39
  %i.aye = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv2578.i
  %i.ayf = fmul fast <2 x float> %i.axn, splat (float 4.000000e+00)
  %i.ayg = fadd fast <2 x float> %i.axk, %i.ayf
  %i.ayh = fmul fast <2 x float> %i.axq, splat (float 8.000000e+00)
  %i.ayi = fadd fast <2 x float> %i.ayh, %i.ayg
  store <2 x float> %i.ayi, ptr %i.aye, align 8, !tbaa !39
  %i.ayj = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv2578.i
  %i.ayk = fmul fast <2 x float> %i.axy, splat (float 8.000000e+00)
  %i.ayl = fadd fast <2 x float> %i.axx, %i.ayk
  %i.aym = fmul fast <2 x float> %i.axz, splat (float 4.000000e+00)
  %i.ayn = fadd fast <2 x float> %i.aym, %i.ayl
  store <2 x float> %i.ayn, ptr %i.ayj, align 8, !tbaa !39
  %i.ayo = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv2578.i
  %i.ayp = fmul fast <2 x float> %i.axn, splat (float 1.600000e+01)
  %i.ayq = fadd fast <2 x float> %i.axk, %i.ayp
  %i.ayr = fmul fast <2 x float> %i.axq, splat (float 2.000000e+00)
  %i.ays = fadd fast <2 x float> %i.ayr, %i.ayq
  store <2 x float> %i.ays, ptr %i.ayo, align 8, !tbaa !39
  %i.ayt = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv2578.i
  %i.ayu = load <2 x float>, ptr %.07682510.us.i, align 4, !tbaa !39
  %i.ayv = fmul fast <2 x float> %i.axy, splat (float 3.200000e+01)
  %i.ayw = fadd fast <2 x float> %i.axx, %i.ayv
  %i.ayx = fadd fast <2 x float> %i.axz, %i.ayw
  %i.ayy = fadd fast <2 x float> %i.ayx, %i.ayu
  store <2 x float> %i.ayy, ptr %i.ayt, align 8, !tbaa !39
  %i.ayz = getelementptr inbounds nuw [4 x i8], ptr %.07752503.us.i, i64 %i.awj
  %i.aza = getelementptr inbounds nuw [4 x i8], ptr %.07742504.us.i, i64 %i.awj
  %i.azb = getelementptr inbounds nuw [4 x i8], ptr %.07732505.us.i, i64 %i.awj
  %i.azc = getelementptr inbounds nuw [4 x i8], ptr %.07722506.us.i, i64 %i.awj
  %i.azd = getelementptr inbounds nuw [4 x i8], ptr %.07712507.us.i, i64 %i.awj
  %i.aze = getelementptr inbounds nuw [4 x i8], ptr %.07702508.us.i, i64 %i.awj
  %i.azf = getelementptr inbounds nuw [4 x i8], ptr %.07692509.us.i, i64 %i.awj
  %i.azg = getelementptr inbounds nuw [4 x i8], ptr %.07682510.us.i, i64 %i.awj
  %indvars.iv.next2579.i = add nuw nsw i64 %indvars.iv2578.i, 1 ; 2 uses
  %exitcond2581.not.i = icmp eq i64 %indvars.iv.next2579.i, 8
  br i1 %exitcond2581.not.i, label %_ZN4ncnn3MatD2Ev.exit794.us.i, label %bb.aj, !llvm.loop !1836

_ZN4ncnn3MatD2Ev.exit794.us.i:                    ; preds = %bb.aj
  %i.azh = trunc i64 %indvars.iv2586.i to i32
  %i.azi = add i32 %.047134, %i.azh               ; 2 uses
  %i.azj = sdiv i32 %i.azi, %i.ct
  %i.azk = srem i32 %i.azi, %i.ct
  %i.azl = mul nsw i32 %i.azj, 6
  %i.azm = sext i32 %i.azl to i64                 ; 2 uses
  %.reass2516.us.i = mul i64 %factor.op.mul2515.us.i, %i.azm
  %i.azn = getelementptr inbounds nuw i8, ptr %i.awy, i64 %.reass2516.us.i
  %i.azo = mul nsw i32 %i.azk, 6                  ; 6 uses
  %i.azp = sext i32 %i.azo to i64
  %i.azq = getelementptr inbounds [2 x i8], ptr %i.azn, i64 %i.azp
  %i.azr = or disjoint i32 %i.azo, 1
  %i.azs = icmp slt i32 %i.azr, %i.cm
  %i.azt = add nsw i32 %i.azo, 2
  %i.azu = icmp slt i32 %i.azt, %i.cm
  %i.azv = add nsw i32 %i.azo, 3
  %i.azw = icmp slt i32 %i.azv, %i.cm
  %i.azx = add nsw i32 %i.azo, 4
  %i.azy = icmp slt i32 %i.azx, %i.cm
  %i.azz = add nsw i32 %i.azo, 5
  %i.baa = icmp slt i32 %i.azz, %i.cm
  %invariant.op2648.i = sub nsw i64 %i.awq, %i.azm
  br label %bb.ak

bb.ak:                                            ; preds = %bb.bw, %_ZN4ncnn3MatD2Ev.exit794.us.i
  %indvars.iv2582.i = phi i64 [ %indvars.iv.next2583.i, %bb.bw ], [ 0, %_ZN4ncnn3MatD2Ev.exit794.us.i ] ; 3 uses
  %.07552512.us.i = phi ptr [ %.1756.us.i, %bb.bw ], [ %i.azq, %_ZN4ncnn3MatD2Ev.exit794.us.i ] ; 9 uses
  %.not790.us.i = icmp slt i64 %indvars.iv2582.i, %invariant.op2648.i
  br i1 %.not790.us.i, label %bb.al, label %bb.bw

bb.al:                                            ; preds = %bb.ak
  %i.bab = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %indvars.iv2582.i ; 8 uses
  %i.bac = getelementptr inbounds nuw i8, ptr %i.bab, i64 8
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bab, i64 16
  %i.bae = getelementptr inbounds nuw i8, ptr %i.bab, i64 24
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bab, i64 32
  %i.bag = getelementptr inbounds nuw i8, ptr %i.bab, i64 40
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bab, i64 48
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bab, i64 56
  %i.baj = load <2 x float>, ptr %i.bac, align 8, !tbaa !39 ; 2 uses
  %i.bak = load <2 x float>, ptr %i.bad, align 16, !tbaa !39 ; 2 uses
  %i.bal = load <2 x float>, ptr %i.bae, align 8, !tbaa !39 ; 2 uses
  %i.bam = load <2 x float>, ptr %i.baf, align 16, !tbaa !39 ; 2 uses
  %i.ban = load <2 x float>, ptr %i.bag, align 8, !tbaa !39 ; 2 uses
  %i.bao = load <2 x float>, ptr %i.bah, align 16, !tbaa !39 ; 2 uses
  %i.bap = load <2 x float>, ptr %i.bai, align 8, !tbaa !39
  %i.baq = fsub fast <2 x float> %i.baj, %i.bak
  %i.bar = fsub fast <2 x float> %i.bal, %i.bam   ; 3 uses
  %i.bas = fsub fast <2 x float> %i.ban, %i.bao   ; 3 uses
  %i.bat = fadd fast <2 x float> %i.baq, %i.awu   ; 3 uses
  %i.bau = fmul fast <2 x float> %i.bas, splat (float 1.600000e+01)
  %i.bav = fmul fast <2 x float> %i.bar, splat (float 2.000000e+00)
  %i.baw = fadd fast <2 x float> %i.bat, %i.bau
  %i.bax = fadd fast <2 x float> %i.baw, %i.bav   ; 10 uses
end_hunk_26
begin_hunk_27_@_ZN4ncnnL26conv3x3s1_winograd63_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.16:bb.a
  %i.biq = fadd fast <2 x float> %i.bip, splat (float 1.000000e+00)
  %i.bir = fdiv fast <2 x float> splat (float 1.000000e+00), %i.biq
  %i.bis = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bbs, <2 x float> splat (float f0x42B0C0A5))
  %i.bit = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bis, <2 x float> splat (float f0xC2B0C0A5))
  %i.biu = fneg fast <2 x float> %i.bit
  %i.biv = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.biu)
  %i.biw = fadd fast <2 x float> %i.biv, splat (float 1.000000e+00)
  %i.bix = fdiv fast <2 x float> splat (float 1.000000e+00), %i.biw
  %i.biy = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bbw, <2 x float> splat (float f0x42B0C0A5))
  %i.biz = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.biy, <2 x float> splat (float f0xC2B0C0A5))
  %i.bja = fneg fast <2 x float> %i.biz
  %i.bjb = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bja)
  %i.bjc = fadd fast <2 x float> %i.bjb, splat (float 1.000000e+00)
  %i.bjd = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bjc
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit826.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i: ; preds = %bb.al
  %i.bje = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.bjf = load float, ptr %i.bje, align 4, !tbaa !39 ; 3 uses
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bje, i64 4
  %i.bjh = load float, ptr %i.bjg, align 4, !tbaa !39 ; 5 uses
  %i.bji = insertelement <2 x float> poison, float %i.bjf, i64 0
  %i.bjj = shufflevector <2 x float> %i.bji, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.bjk = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbk, <2 x float> %i.bjj) ; 2 uses
  %i.bjl = insertelement <2 x float> poison, float %i.bjh, i64 0
  %i.bjm = shufflevector <2 x float> %i.bjl, <2 x float> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.bjn = fcmp fast ogt <2 x float> %i.bjk, %i.bjm
  %i.bjo = select <2 x i1> %i.bjn, <2 x float> %i.bjm, <2 x float> %i.bjk ; 2 uses
  %i.bjp = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bax, <2 x float> %i.bjj) ; 2 uses
  %i.bjq = fcmp fast ogt <2 x float> %i.bjp, %i.bjm
  %i.bjr = select <2 x i1> %i.bjq, <2 x float> %i.bjm, <2 x float> %i.bjp ; 2 uses
  %i.bjs = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbo, <2 x float> %i.bjj) ; 2 uses
  %i.bjt = fcmp fast ogt <2 x float> %i.bjs, %i.bjm
  %i.bju = select <2 x i1> %i.bjt, <2 x float> %i.bjm, <2 x float> %i.bjs ; 2 uses
  %i.bjv = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbb, <2 x float> %i.bjj) ; 2 uses
  %i.bjw = fcmp fast ogt <2 x float> %i.bjv, %i.bjm
  %i.bjx = select <2 x i1> %i.bjw, <2 x float> %i.bjm, <2 x float> %i.bjv ; 2 uses
  %i.bjy = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbs, <2 x float> %i.bjj) ; 2 uses
  %i.bjz = fcmp fast ogt <2 x float> %i.bjy, %i.bjm
  %i.bka = select <2 x i1> %i.bjz, <2 x float> %i.bjm, <2 x float> %i.bjy ; 2 uses
  %i.bkb = extractelement <2 x float> %i.bbw, i64 0
  %.01034.us.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bkb, float %i.bjf) ; 2 uses
  %i.bkc = fcmp fast ogt float %.01034.us.i, %i.bjh
  %.110352116.us.i = select i1 %i.bkc, float %i.bjh, float %.01034.us.i
  %i.bkd = extractelement <2 x float> %i.bbw, i64 1
  %.01036.us.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bkd, float %i.bjf) ; 2 uses
  %i.bke = fcmp fast ogt float %.01036.us.i, %i.bjh
  %i.bkf = insertelement <2 x float> poison, float %.110352116.us.i, i64 0
  %i.bkg = insertelement <2 x float> %i.bkf, float %.01036.us.i, i64 1 ; 2 uses
  br i1 %i.bke, label %bb.bl, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit826.us.i

bb.bl:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i
  %i.bkh = insertelement <2 x float> %i.bkg, float %i.bjh, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit826.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1285.us.i: ; preds = %bb.al
  %i.bki = load ptr, ptr %15, align 8, !tbaa !18
  %i.bkj = load float, ptr %i.bki, align 4, !tbaa !39
  %i.bkk = fcmp fast ogt <2 x float> %i.bbk, zeroinitializer
  %i.bkl = insertelement <2 x float> poison, float %i.bkj, i64 0
  %i.bkm = shufflevector <2 x float> %i.bkl, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.bkn = select <2 x i1> %i.bkk, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bkm
  %i.bko = fmul fast <2 x float> %i.bkn, %i.bbk
  %i.bkp = fcmp fast ogt <2 x float> %i.bax, zeroinitializer
  %i.bkq = select <2 x i1> %i.bkp, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bkm
  %i.bkr = fmul fast <2 x float> %i.bkq, %i.bax
  %i.bks = fcmp fast ogt <2 x float> %i.bbo, zeroinitializer
  %i.bkt = select <2 x i1> %i.bks, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bkm
  %i.bku = fmul fast <2 x float> %i.bkt, %i.bbo
  %i.bkv = fcmp fast ogt <2 x float> %i.bbb, zeroinitializer
  %i.bkw = select <2 x i1> %i.bkv, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bkm
  %i.bkx = fmul fast <2 x float> %i.bkw, %i.bbb
  %i.bky = fcmp fast ogt <2 x float> %i.bbs, zeroinitializer
  %i.bkz = select <2 x i1> %i.bky, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bkm
  %i.bla = fmul fast <2 x float> %i.bkz, %i.bbs
  %i.blb = fcmp fast ogt <2 x float> %i.bbw, zeroinitializer
  %i.blc = select <2 x i1> %i.blb, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bkm
  %i.bld = fmul fast <2 x float> %i.blc, %i.bbw
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit826.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1282.us.i: ; preds = %bb.al
  %i.ble = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbk, <2 x float> zeroinitializer)
  %i.blf = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bax, <2 x float> zeroinitializer)
  %i.blg = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbo, <2 x float> zeroinitializer)
  %i.blh = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbb, <2 x float> zeroinitializer)
  %i.bli = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbs, <2 x float> zeroinitializer)
  %i.blj = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbw, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit826.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit826.us.i:   ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1282.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1285.us.i, %bb.bl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1288.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1291.us.i, %bb.bk, %bb.bj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit827.thread.us.i, %bb.al
  %i.blk = phi <2 x float> [ %i.bfp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit827.thread.us.i ], [ %i.blj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1282.us.i ], [ %i.bld, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1285.us.i ], [ %i.bkh, %bb.bl ], [ %i.bkg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i ], [ %i.bjd, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1288.us.i ], [ %i.bht, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1291.us.i ], [ %i.bgh, %bb.bk ], [ %i.bgd, %bb.bj ], [ %i.bbw, %bb.al ]
  %i.bll = phi <2 x float> [ %i.bfr, %_ZL13activation_ssfiRKN4ncnn3MatE.exit827.thread.us.i ], [ %i.bli, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1282.us.i ], [ %i.bla, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1285.us.i ], [ %i.bka, %bb.bl ], [ %i.bka, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i ], [ %i.bix, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1288.us.i ], [ %i.bhg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1291.us.i ], [ %i.bfr, %bb.bk ], [ %i.bfr, %bb.bj ], [ %i.bbs, %bb.al ]
  %i.blm = phi <2 x float> [ %i.bft, %_ZL13activation_ssfiRKN4ncnn3MatE.exit827.thread.us.i ], [ %i.blh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1282.us.i ], [ %i.bkx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1285.us.i ], [ %i.bjx, %bb.bl ], [ %i.bjx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i ], [ %i.bir, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1288.us.i ], [ %i.bhb, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1291.us.i ], [ %i.bft, %bb.bk ], [ %i.bft, %bb.bj ], [ %i.bbb, %bb.al ]
  %i.bln = phi <2 x float> [ %i.bfv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit827.thread.us.i ], [ %i.blg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1282.us.i ], [ %i.bku, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1285.us.i ], [ %i.bju, %bb.bl ], [ %i.bju, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i ], [ %i.bil, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1288.us.i ], [ %i.bgw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1291.us.i ], [ %i.bfv, %bb.bk ], [ %i.bfv, %bb.bj ], [ %i.bbo, %bb.al ]
  %i.blo = phi <2 x float> [ %i.bfx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit827.thread.us.i ], [ %i.blf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1282.us.i ], [ %i.bkr, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1285.us.i ], [ %i.bjr, %bb.bl ], [ %i.bjr, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i ], [ %i.bif, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1288.us.i ], [ %i.bgr, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1291.us.i ], [ %i.bfx, %bb.bk ], [ %i.bfx, %bb.bj ], [ %i.bax, %bb.al ]
  %i.blp = phi <2 x float> [ %i.bfz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit827.thread.us.i ], [ %i.ble, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1282.us.i ], [ %i.bko, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1285.us.i ], [ %i.bjo, %bb.bl ], [ %i.bjo, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i ], [ %i.bhz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1288.us.i ], [ %i.bgm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1291.us.i ], [ %i.bfz, %bb.bk ], [ %i.bfz, %bb.bj ], [ %i.bbk, %bb.al ]
  %i.blq = getelementptr inbounds nuw [2 x i8], ptr %.07552512.us.i, i64 %i.cr ; 6 uses
  %i.blr = bitcast <2 x float> %i.blp to <2 x i32>
  %i.bls = lshr <2 x i32> %i.blr, splat (i32 16)
  %i.blt = trunc nuw <2 x i32> %i.bls to <2 x i16> ; 2 uses
  %i.blu = extractelement <2 x i16> %i.blt, i64 0
  store i16 %i.blu, ptr %.07552512.us.i, align 2, !tbaa !394
  %i.blv = extractelement <2 x i16> %i.blt, i64 1
  store i16 %i.blv, ptr %i.blq, align 2, !tbaa !394
  br i1 %i.azs, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit826.us.i
  %i.blw = bitcast <2 x float> %i.blo to <2 x i32>
  %i.blx = getelementptr inbounds nuw i8, ptr %.07552512.us.i, i64 2
  %i.bly = lshr <2 x i32> %i.blw, splat (i32 16)
  %i.blz = trunc nuw <2 x i32> %i.bly to <2 x i16> ; 2 uses
  %i.bma = extractelement <2 x i16> %i.blz, i64 0
  store i16 %i.bma, ptr %i.blx, align 2, !tbaa !394
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.blq, i64 2
  %i.bmc = extractelement <2 x i16> %i.blz, i64 1
  store i16 %i.bmc, ptr %i.bmb, align 2, !tbaa !394
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit826.us.i
  br i1 %i.azu, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.bmd = bitcast <2 x float> %i.bln to <2 x i32>
  %i.bme = getelementptr inbounds nuw i8, ptr %.07552512.us.i, i64 4
  %i.bmf = lshr <2 x i32> %i.bmd, splat (i32 16)
  %i.bmg = trunc nuw <2 x i32> %i.bmf to <2 x i16> ; 2 uses
  %i.bmh = extractelement <2 x i16> %i.bmg, i64 0
  store i16 %i.bmh, ptr %i.bme, align 2, !tbaa !394
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.blq, i64 4
  %i.bmj = extractelement <2 x i16> %i.bmg, i64 1
  store i16 %i.bmj, ptr %i.bmi, align 2, !tbaa !394
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  br i1 %i.azw, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.bmk = bitcast <2 x float> %i.blm to <2 x i32>
  %i.bml = getelementptr inbounds nuw i8, ptr %.07552512.us.i, i64 6
  %i.bmm = lshr <2 x i32> %i.bmk, splat (i32 16)
  %i.bmn = trunc nuw <2 x i32> %i.bmm to <2 x i16> ; 2 uses
  %i.bmo = extractelement <2 x i16> %i.bmn, i64 0
  store i16 %i.bmo, ptr %i.bml, align 2, !tbaa !394
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.blq, i64 6
  %i.bmq = extractelement <2 x i16> %i.bmn, i64 1
  store i16 %i.bmq, ptr %i.bmp, align 2, !tbaa !394
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  br i1 %i.azy, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.bmr = bitcast <2 x float> %i.bll to <2 x i32>
  %i.bms = getelementptr inbounds nuw i8, ptr %.07552512.us.i, i64 8
  %i.bmt = lshr <2 x i32> %i.bmr, splat (i32 16)
  %i.bmu = trunc nuw <2 x i32> %i.bmt to <2 x i16> ; 2 uses
  %i.bmv = extractelement <2 x i16> %i.bmu, i64 0
  store i16 %i.bmv, ptr %i.bms, align 2, !tbaa !394
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.blq, i64 8
  %i.bmx = extractelement <2 x i16> %i.bmu, i64 1
  store i16 %i.bmx, ptr %i.bmw, align 2, !tbaa !394
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  br i1 %i.baa, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.bmy = bitcast <2 x float> %i.blk to <2 x i32>
  %i.bmz = getelementptr inbounds nuw i8, ptr %.07552512.us.i, i64 10
  %i.bna = lshr <2 x i32> %i.bmy, splat (i32 16)
  %i.bnb = trunc nuw <2 x i32> %i.bna to <2 x i16> ; 2 uses
  %i.bnc = extractelement <2 x i16> %i.bnb, i64 0
  store i16 %i.bnc, ptr %i.bmz, align 2, !tbaa !394
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.blq, i64 10
  %i.bne = extractelement <2 x i16> %i.bnb, i64 1
  store i16 %i.bne, ptr %i.bnd, align 2, !tbaa !394
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.bnf = getelementptr inbounds [2 x i8], ptr %.07552512.us.i, i64 %i.awk
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.ak
  %.1756.us.i = phi ptr [ %.07552512.us.i, %bb.ak ], [ %i.bnf, %bb.bv ]
  %indvars.iv.next2583.i = add nuw nsw i64 %indvars.iv2582.i, 1 ; 2 uses
  %exitcond2585.not.i = icmp eq i64 %indvars.iv.next2583.i, 6
  br i1 %exitcond2585.not.i, label %bb.bx, label %bb.ak, !llvm.loop !1837

bb.bx:                                            ; preds = %bb.bw
  %indvars.iv.next2587.i = add nuw nsw i64 %indvars.iv2586.i, 1 ; 2 uses
  %exitcond2590.not.i = icmp eq i64 %indvars.iv.next2587.i, %wide.trip.count2589.i
  br i1 %exitcond2590.not.i, label %._crit_edge.us2523.i, label %bb.ai, !llvm.loop !1838

._crit_edge.us2523.i:                             ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %indvars.iv.next2592.i = add nuw nsw i64 %indvars.iv2591.i, 2 ; 3 uses
  %i.bng = icmp slt i64 %indvars.iv.next2592.i, %invariant.op2649.i.a
  br i1 %i.bng, label %bb.ag, label %.preheader.loopexit.i, !llvm.loop !1839

.lr.ph2519.split.i:                               ; preds = %.lr.ph2519.i
  %19 = sub i32 %18, %.0757.lcssa.i
  %20 = and i32 %19, -2
  %21 = add i32 %.0757.lcssa.i, 2
  %i.bnh = add i32 %21, %20
  br label %.preheader.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.us2523.i
  %i.bni = trunc nsw i64 %indvars.iv.next2592.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph2519.split.i, %.preheader2483.i
  %.1758.lcssa.i = phi i32 [ %.0757.lcssa.i, %.preheader2483.i ], [ %i.bnh, %.lr.ph2519.split.i ], [ %i.bni, %.preheader.loopexit.i ] ; 2 uses
  %i.bnj = icmp slt i32 %.1758.lcssa.i, %.sroa.speculated124
  br i1 %i.bnj, label %.lr.ph2547.i, label %_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit

.lr.ph2547.i:                                     ; preds = %.preheader.i
  %.not.i83 = icmp eq ptr %.val81, null
  %i.bnk = icmp sgt i32 %.sroa.speculated120, 0
  %i.bnl = sext i32 %.sroa.speculated120 to i64
  %i.bnm = shl nsw i32 %.sroa.speculated120, 1
  %i.bnn = sext i32 %i.bnm to i64
  %i.bno = mul nsw i32 %.sroa.speculated120, 3
  %i.bnp = sext i32 %i.bno to i64
  %i.bnq = shl nsw i32 %.sroa.speculated120, 2
  %i.bnr = sext i32 %i.bnq to i64
  %i.bns = mul nsw i32 %.sroa.speculated120, 5
  %i.bnt = sext i32 %i.bns to i64
  %i.bnu = mul nsw i32 %.sroa.speculated120, 6
  %i.bnv = sext i32 %i.bnu to i64
  %i.bnw = mul nsw i32 %.sroa.speculated120, 7
  %i.bnx = sext i32 %i.bnw to i64
  %i.bny = shl nsw i32 %.sroa.speculated120, 3
  %i.bnz = sext i32 %i.bny to i64                 ; 8 uses
  %i.boa = sext i32 %i.cm to i64
  br i1 %i.bnk, label %.lr.ph2547.split.us.i, label %_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit

.lr.ph2547.split.us.i:                            ; preds = %.lr.ph2547.i
  %i.bob = load i32, ptr %i.aq, align 4, !tbaa !75, !noalias !1840
  %i.boc = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1840
  %i.bod = load i64, ptr %i.at, align 8, !tbaa !20, !noalias !1840
  %i.boe = load i64, ptr %i.az, align 8, !tbaa !65, !noalias !1840 ; 2 uses
  %factor.op.mul2552.i = mul i64 %i.boe, %i.bod
  %i.bof = sext i32 %i.bob to i64
  %factor.op.mul2543.us.i = mul i64 %i.boe, %i.bof
  %i.bog = sext i32 %i.cn to i64
  %i.boh = sext i32 %.1758.lcssa.i to i64
  %wide.trip.count2605.i = zext nneg i32 %.sroa.speculated120 to i64
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge.us2550.i, %.lr.ph2547.split.us.i
  %indvars.iv2607.i = phi i64 [ %indvars.iv.next2608.i, %._crit_edge.us2550.i ], [ %i.boh, %.lr.ph2547.split.us.i ] ; 3 uses
  %.pre2612.i = add nsw i64 %indvars.iv2607.i, %i.ca ; 2 uses
  br i1 %.not.i83, label %.lr.ph.us2549.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.boi = getelementptr inbounds [4 x i8], ptr %.val81, i64 %.pre2612.i
  %i.boj = load float, ptr %i.boi, align 4, !tbaa !39
  br label %.lr.ph.us2549.i

.lr.ph.us2549.i:                                  ; preds = %bb.bz, %bb.by
  %i.bok = phi fast float [ %i.boj, %bb.bz ], [ 0.000000e+00, %bb.by ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.bol = trunc nsw i64 %indvars.iv2607.i to i32
  %factor.op.mul2540.reass.us.i = mul i32 %factor.op.mul2496.i, %i.bol
  %i.bom = sext i32 %factor.op.mul2540.reass.us.i to i64
  %i.bon = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bom
  %.reass2553.i = mul i64 %factor.op.mul2552.i, %.pre2612.i
  %i.boo = getelementptr inbounds nuw i8, ptr %i.boc, i64 %.reass2553.i
  %i.bop = insertelement <2 x float> poison, float %i.bok, i64 0
  br label %bb.ca

bb.ca:                                            ; preds = %bb.dd, %.lr.ph.us2549.i
  %indvars.iv2602.i = phi i64 [ 0, %.lr.ph.us2549.i ], [ %indvars.iv.next2603.i, %bb.dd ] ; 3 uses
  %i.boq = getelementptr inbounds nuw [4 x i8], ptr %i.bon, i64 %indvars.iv2602.i ; 8 uses
  %i.bor = getelementptr inbounds nuw [4 x i8], ptr %i.boq, i64 %i.bnl
  %i.bos = getelementptr inbounds nuw [4 x i8], ptr %i.boq, i64 %i.bnn
  %i.bot = getelementptr inbounds nuw [4 x i8], ptr %i.boq, i64 %i.bnp
  %i.bou = getelementptr inbounds nuw [4 x i8], ptr %i.boq, i64 %i.bnr
  %i.bov = getelementptr inbounds nuw [4 x i8], ptr %i.boq, i64 %i.bnt
  %i.bow = getelementptr inbounds nuw [4 x i8], ptr %i.boq, i64 %i.bnv
  %i.box = getelementptr inbounds nuw [4 x i8], ptr %i.boq, i64 %i.bnx
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %bb.ca
  %indvars.iv2594.i = phi i64 [ %indvars.iv.next2595.i, %bb.cb ], [ 0, %bb.ca ] ; 7 uses
  %.07452536.us.i = phi ptr [ %i.brb, %bb.cb ], [ %i.box, %bb.ca ] ; 2 uses
  %.07462535.us.i = phi ptr [ %i.bra, %bb.cb ], [ %i.bow, %bb.ca ] ; 2 uses
  %.07472534.us.i = phi ptr [ %i.bqz, %bb.cb ], [ %i.bov, %bb.ca ] ; 2 uses
  %.07482533.us.i = phi ptr [ %i.bqy, %bb.cb ], [ %i.bou, %bb.ca ] ; 2 uses
  %.07492532.us.i = phi ptr [ %i.bqx, %bb.cb ], [ %i.bot, %bb.ca ] ; 2 uses
  %.07502531.us.i = phi ptr [ %i.bqw, %bb.cb ], [ %i.bos, %bb.ca ] ; 2 uses
  %.07512530.us.i = phi ptr [ %i.bqv, %bb.cb ], [ %i.bor, %bb.ca ] ; 2 uses
  %.07522529.us.i = phi ptr [ %i.bqu, %bb.cb ], [ %i.boq, %bb.ca ] ; 2 uses
  %i.boy = load float, ptr %.07512530.us.i, align 4, !tbaa !39 ; 2 uses
  %i.boz = load float, ptr %.07502531.us.i, align 4, !tbaa !39 ; 2 uses
  %i.bpa = load float, ptr %.07492532.us.i, align 4, !tbaa !39 ; 2 uses
  %i.bpb = load float, ptr %.07482533.us.i, align 4, !tbaa !39 ; 2 uses
  %i.bpc = load float, ptr %.07472534.us.i, align 4, !tbaa !39 ; 2 uses
  %i.bpd = load float, ptr %.07462535.us.i, align 4, !tbaa !39 ; 2 uses
  %i.bpe = fadd fast float %i.bpd, %i.bpc         ; 3 uses
  %i.bpf = fsub fast float %i.bpc, %i.bpd         ; 3 uses
  %i.bpg = load float, ptr %.07522529.us.i, align 4, !tbaa !39
  %i.bph = fmul fast float %i.bpe, 3.200000e+01
  %i.bpi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv2594.i
  %i.bpj = fmul fast float %i.bpf, 1.600000e+01
  %i.bpk = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv2594.i
  %i.bpl = fmul fast float %i.bpe, 8.000000e+00
  %i.bpm = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv2594.i
  %i.bpn = fmul fast float %i.bpf, 4.000000e+00
  %i.bpo = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv2594.i
  %i.bpp = fsub fast float %i.boy, %i.boz         ; 3 uses
  %i.bpq = fadd fast float %i.bpb, %i.bpa         ; 2 uses
  %i.bpr = fsub fast float %i.bpa, %i.bpb         ; 2 uses
  %i.bps = fadd fast float %i.boz, %i.boy         ; 2 uses
  %i.bpt = fadd fast float %i.bpp, %i.bpj
  %i.bpu = fadd fast float %i.bpq, %i.bps
  %i.bpv = fadd fast float %i.bpu, %i.bpg
  %i.bpw = fadd fast float %i.bpv, %i.bph
  store float %i.bpw, ptr %i.bpi, align 4, !tbaa !39
  %i.bpx = insertelement <4 x float> poison, float %i.bpr, i64 0
  %i.bpy = insertelement <4 x float> %i.bpx, float %i.bpq, i64 1
  %i.bpz = shufflevector <4 x float> %i.bpy, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bqa = fmul fast <4 x float> %i.bpz, <float 2.000000e+00, float 4.000000e+00, float 8.000000e+00, float 1.600000e+01>
  %i.bqb = insertelement <4 x float> poison, float %i.bpt, i64 0
  %i.bqc = insertelement <4 x float> %i.bqb, float %i.bps, i64 1
  %i.bqd = insertelement <4 x float> %i.bqc, float %i.bpp, i64 2
  %i.bqe = shufflevector <4 x float> %i.bqd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.bqf = fadd fast <4 x float> %i.bqe, %i.bqa   ; 4 uses
  %i.bqg = extractelement <4 x float> %i.bqf, i64 0
  store float %i.bqg, ptr %i.bpk, align 4, !tbaa !39
  %i.bqh = extractelement <4 x float> %i.bqf, i64 1
  %i.bqi = fadd fast float %i.bpl, %i.bqh
  store float %i.bqi, ptr %i.bpm, align 4, !tbaa !39
  %i.bqj = extractelement <4 x float> %i.bqf, i64 2
  %i.bqk = fadd fast float %i.bpn, %i.bqj
  store float %i.bqk, ptr %i.bpo, align 4, !tbaa !39
  %factor2446.us.i = fmul fast float %i.bpe, 2.000000e+00
  %i.bql = extractelement <4 x float> %i.bqf, i64 3
  %i.bqm = fadd fast float %factor2446.us.i, %i.bql
  %i.bqn = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv2594.i
  store float %i.bqm, ptr %i.bqn, align 4, !tbaa !39
  %i.bqo = load float, ptr %.07452536.us.i, align 4, !tbaa !39
  %i.bqp = fmul fast float %i.bpr, 3.200000e+01
  %i.bqq = fadd fast float %i.bpp, %i.bqp
  %i.bqr = fadd fast float %i.bqq, %i.bpf
  %i.bqs = fadd fast float %i.bqr, %i.bqo
  %i.bqt = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv2594.i
  store float %i.bqs, ptr %i.bqt, align 4, !tbaa !39
  %i.bqu = getelementptr inbounds nuw [4 x i8], ptr %.07522529.us.i, i64 %i.bnz
  %i.bqv = getelementptr inbounds nuw [4 x i8], ptr %.07512530.us.i, i64 %i.bnz
  %i.bqw = getelementptr inbounds nuw [4 x i8], ptr %.07502531.us.i, i64 %i.bnz
  %i.bqx = getelementptr inbounds nuw [4 x i8], ptr %.07492532.us.i, i64 %i.bnz
  %i.bqy = getelementptr inbounds nuw [4 x i8], ptr %.07482533.us.i, i64 %i.bnz
  %i.bqz = getelementptr inbounds nuw [4 x i8], ptr %.07472534.us.i, i64 %i.bnz
  %i.bra = getelementptr inbounds nuw [4 x i8], ptr %.07462535.us.i, i64 %i.bnz
  %i.brb = getelementptr inbounds nuw [4 x i8], ptr %.07452536.us.i, i64 %i.bnz
  %indvars.iv.next2595.i = add nuw nsw i64 %indvars.iv2594.i, 1 ; 2 uses
  %exitcond2597.not.i = icmp eq i64 %indvars.iv.next2595.i, 8
  br i1 %exitcond2597.not.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, label %bb.cb, !llvm.loop !1843

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %bb.cb
  %i.brc = trunc i64 %indvars.iv2602.i to i32
  %i.brd = add i32 %.047134, %i.brc               ; 2 uses
  %i.bre = sdiv i32 %i.brd, %i.ct
  %i.brf = srem i32 %i.brd, %i.ct
  %i.brg = mul nsw i32 %i.bre, 6
  %i.brh = sext i32 %i.brg to i64                 ; 2 uses
  %.reass2544.us.i = mul i64 %factor.op.mul2543.us.i, %i.brh
  %i.bri = getelementptr inbounds nuw i8, ptr %i.boo, i64 %.reass2544.us.i
  %i.brj = mul nsw i32 %i.brf, 6                  ; 6 uses
  %i.brk = sext i32 %i.brj to i64
  %i.brl = getelementptr inbounds [2 x i8], ptr %i.bri, i64 %i.brk
  %i.brm = or disjoint i32 %i.brj, 1
  %i.brn = icmp slt i32 %i.brm, %i.cm
  %i.bro = add nsw i32 %i.brj, 2
  %i.brp = icmp slt i32 %i.bro, %i.cm
  %i.brq = add nsw i32 %i.brj, 3
  %i.brr = icmp slt i32 %i.brq, %i.cm
  %i.brs = add nsw i32 %i.brj, 4
  %i.brt = icmp slt i32 %i.brs, %i.cm
  %i.bru = add nsw i32 %i.brj, 5
  %i.brv = icmp slt i32 %i.bru, %i.cm
  %invariant.op2650.i = sub nsw i64 %i.bog, %i.brh
  br label %bb.cc

bb.cc:                                            ; preds = %bb.dc, %_ZN4ncnn3MatD2Ev.exit.us.i
  %indvars.iv2598.i = phi i64 [ %indvars.iv.next2599.i, %bb.dc ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us.i ] ; 3 uses
  %.07432538.us.i = phi ptr [ %.1.us.i, %bb.dc ], [ %i.brl, %_ZN4ncnn3MatD2Ev.exit.us.i ] ; 8 uses
  %.not788.us.i = icmp slt i64 %indvars.iv2598.i, %invariant.op2650.i
  br i1 %.not788.us.i, label %bb.cd, label %bb.dc

bb.cd:                                            ; preds = %bb.cc
  %i.brw = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv2598.i ; 8 uses
  %i.brx = load float, ptr %i.brw, align 16, !tbaa !39
  %i.bry = getelementptr inbounds nuw i8, ptr %i.brw, i64 4
  %i.brz = load float, ptr %i.bry, align 4, !tbaa !39 ; 2 uses
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.brw, i64 8
  %i.bsb = load float, ptr %i.bsa, align 8, !tbaa !39 ; 2 uses
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.brw, i64 12
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.brw, i64 16
  %i.bse = getelementptr inbounds nuw i8, ptr %i.brw, i64 20
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.brw, i64 24
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.brw, i64 28
  %i.bsh = load float, ptr %i.bsg, align 4, !tbaa !39
end_hunk_27
begin_hunk_28_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.ne = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.lc, <4 x float> splat (float f0x42B0C0A5))
  %i.nf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ne, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ng = fmul fast <4 x float> %i.nf, splat (float f0x3FB8AA3B)
  %i.nh = fadd fast <4 x float> %i.ng, splat (float 5.000000e-01) ; 2 uses
  %i.ni = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nh)
  %i.nj = sitofp fast <4 x i32> %i.ni to <4 x float> ; 2 uses
  %i.nk = fcmp fast olt <4 x float> %i.nh, %i.nj
  %i.nl = select <4 x i1> %i.nk, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.nm = fsub fast <4 x float> %i.nj, %i.nl      ; 2 uses
  %i.nn = fmul fast <4 x float> %i.nm, splat (float f0x3F317218)
  %i.no = fsub fast <4 x float> %i.nf, %i.nn      ; 8 uses
  %i.np = fmul fast <4 x float> %i.no, %i.no
  %i.nq = fmul fast <4 x float> %i.no, splat (float f0x39506967)
  %i.nr = fadd fast <4 x float> %i.nq, splat (float f0x3AB743CE)
  %i.ns = fmul fast <4 x float> %i.nr, %i.no
  %i.nt = fadd fast <4 x float> %i.ns, splat (float f0x3C088908)
  %i.nu = fmul fast <4 x float> %i.nt, %i.no
  %i.nv = fadd fast <4 x float> %i.nu, splat (float f0x3D2AA9C1)
  %i.nw = fmul fast <4 x float> %i.nv, %i.no
  %i.nx = fadd fast <4 x float> %i.nw, splat (float f0x3E2AAAAA)
  %i.ny = fmul fast <4 x float> %i.nx, %i.no
  %i.nz = fadd fast <4 x float> %i.ny, splat (float 5.000000e-01)
  %i.oa = fmul fast <4 x float> %i.np, %i.nz
  %i.ob = fadd fast <4 x float> %i.no, %i.oa
  %i.oc = fadd fast <4 x float> %i.ob, splat (float 1.000000e+00)
  %i.od = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nm)
  %i.oe = shl <4 x i32> %i.od, splat (i32 23)
  %i.of = add <4 x i32> %i.oe, splat (i32 1065353216)
  %i.og = bitcast <4 x i32> %i.of to <4 x float>
  %i.oh = fmul fast <4 x float> %i.oc, %i.og
  %i.oi = fadd fast <4 x float> %i.oh, splat (float 1.000000e+00) ; 2 uses
  %i.oj = fcmp fast ole <4 x float> %i.oi, zeroinitializer
  %i.ok = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.oi, <4 x float> splat (float f0x00800000))
  %i.ol = bitcast <4 x float> %i.ok to <4 x i32>  ; 2 uses
  %i.om = lshr <4 x i32> %i.ol, splat (i32 23)
  %i.on = and <4 x i32> %i.ol, splat (i32 -2139095041)
  %i.oo = or disjoint <4 x i32> %i.on, splat (i32 1056964608)
  %i.op = bitcast <4 x i32> %i.oo to <4 x float>  ; 3 uses
  %i.oq = add nsw <4 x i32> %i.om, splat (i32 -127)
  %i.or = sitofp fast <4 x i32> %i.oq to <4 x float> ; 2 uses
  %i.os = fadd fast <4 x float> %i.or, splat (float 1.000000e+00)
  %i.ot = fcmp fast olt <4 x float> %i.op, splat (float f0x3F3504F3) ; 2 uses
  %i.ou = select <4 x i1> %i.ot, <4 x float> %i.op, <4 x float> zeroinitializer
  %i.ov = fadd fast <4 x float> %i.op, splat (float -1.000000e+00)
  %i.ow = select fast <4 x i1> %i.ot, <4 x float> %i.or, <4 x float> %i.os
  %i.ox = fadd fast <4 x float> %i.ov, %i.ou      ; 12 uses
  %i.oy = fmul fast <4 x float> %i.ox, %i.ox
  %i.oz = fmul fast <4 x float> %i.ox, splat (float f0x3D9021BB)
  %i.pa = fadd fast <4 x float> %i.oz, splat (float f0xBDEBD1B8)
  %i.pb = fmul fast <4 x float> %i.pa, %i.ox
  %i.pc = fadd fast <4 x float> %i.pb, splat (float f0x3DEF251A)
  %i.pd = fmul fast <4 x float> %i.pc, %i.ox
  %i.pe = fadd fast <4 x float> %i.pd, splat (float f0xBDFE5D4F)
  %i.pf = fmul fast <4 x float> %i.pe, %i.ox
  %i.pg = fadd fast <4 x float> %i.pf, splat (float f0x3E11E9BF)
  %i.ph = fmul fast <4 x float> %i.pg, %i.ox
  %i.pi = fadd fast <4 x float> %i.ph, splat (float f0xBE2AAE50)
  %i.pj = fmul fast <4 x float> %i.pi, %i.ox
  %i.pk = fadd fast <4 x float> %i.pj, splat (float f0x3E4CCEAC)
  %i.pl = fmul fast <4 x float> %i.pk, %i.ox
  %i.pm = fadd fast <4 x float> %i.pl, splat (float f0xBE7FFFFC)
  %i.pn = fmul fast <4 x float> %i.pm, %i.ox
  %i.po = fadd fast <4 x float> %i.pn, splat (float f0x3EAAAAAA)
  %i.pp = fmul fast <4 x float> %i.po, %i.ox
  %reass.mul = fmul fast <4 x float> %i.ow, splat (float f0x3F317218)
  %reass.add434 = fadd fast <4 x float> %i.pp, splat (float -5.000000e-01)
  %reass.mul435 = fmul fast <4 x float> %i.oy, %reass.add434
  %i.pq = fadd fast <4 x float> %reass.mul, %i.ox
  %i.pr = fadd fast <4 x float> %i.pq, %reass.mul435
  %.neg = fmul fast <4 x float> %i.pr, splat (float -2.000000e+00)
  %i.ps = select fast <4 x i1> %i.oj, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.pt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ps, <4 x float> splat (float f0x42B0C0A5))
  %i.pu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.pt, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.pv = fmul fast <4 x float> %i.pu, splat (float f0x3FB8AA3B)
  %i.pw = fadd fast <4 x float> %i.pv, splat (float 5.000000e-01) ; 2 uses
  %i.px = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pw)
  %i.py = sitofp fast <4 x i32> %i.px to <4 x float> ; 2 uses
  %i.pz = fcmp fast olt <4 x float> %i.pw, %i.py
  %i.qa = select <4 x i1> %i.pz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.qb = fsub fast <4 x float> %i.py, %i.qa      ; 2 uses
  %i.qc = fmul fast <4 x float> %i.qb, splat (float f0x3F317218)
  %i.qd = fsub fast <4 x float> %i.pu, %i.qc      ; 8 uses
  %i.qe = fmul fast <4 x float> %i.qd, %i.qd
  %i.qf = fmul fast <4 x float> %i.qd, splat (float f0x39506967)
  %i.qg = fadd fast <4 x float> %i.qf, splat (float f0x3AB743CE)
  %i.qh = fmul fast <4 x float> %i.qg, %i.qd
  %i.qi = fadd fast <4 x float> %i.qh, splat (float f0x3C088908)
  %i.qj = fmul fast <4 x float> %i.qi, %i.qd
  %i.qk = fadd fast <4 x float> %i.qj, splat (float f0x3D2AA9C1)
  %i.ql = fmul fast <4 x float> %i.qk, %i.qd
  %i.qm = fadd fast <4 x float> %i.ql, splat (float f0x3E2AAAAA)
  %i.qn = fmul fast <4 x float> %i.qm, %i.qd
  %i.qo = fadd fast <4 x float> %i.qn, splat (float 5.000000e-01)
  %i.qp = fmul fast <4 x float> %i.qe, %i.qo
  %i.qq = fadd fast <4 x float> %i.qd, %i.qp
  %i.qr = fadd fast <4 x float> %i.qq, splat (float 1.000000e+00)
  %i.qs = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qb)
  %i.qt = shl <4 x i32> %i.qs, splat (i32 23)
  %i.qu = add <4 x i32> %i.qt, splat (i32 1065353216)
  %i.qv = bitcast <4 x i32> %i.qu to <4 x float>
  %i.qw = fmul fast <4 x float> %i.qr, %i.qv
  %i.qx = fadd fast <4 x float> %i.qw, splat (float 1.000000e+00)
  %i.qy = fdiv fast <4 x float> splat (float 2.000000e+00), %i.qx
  %i.qz = fadd fast <4 x float> %i.qy, splat (float -1.000000e+00)
  %i.ra = fmul fast <4 x float> %i.qz, %i.lc
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.k:                                             ; preds = %._crit_edge510
  %i.rb = load ptr, ptr %14, align 8, !tbaa !18   ; 2 uses
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !39
  %i.rd = insertelement <4 x float> poison, float %i.rc, i64 0
  %i.re = shufflevector <4 x float> %i.rd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rb, i64 4
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !39
  %i.rh = insertelement <4 x float> poison, float %i.rg, i64 0
  %i.ri = shufflevector <4 x float> %i.rh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rj = fmul fast <4 x float> %i.re, %i.lc
  %i.rk = fadd fast <4 x float> %i.rj, %i.ri
  %i.rl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.rk, <4 x float> zeroinitializer)
  %i.rm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.rl, <4 x float> splat (float 1.000000e+00))
  %i.rn = fmul fast <4 x float> %i.rm, %i.lc
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.k, %.noexc179, %.noexc178, %bb.j, %.noexc177, %bb.i, %._crit_edge510
  %.0.i = phi nsz <4 x float> [ %i.rn, %bb.k ], [ %i.le, %bb.i ], [ %i.lm, %.noexc177 ], [ %i.lw, %bb.j ], [ %i.nd, %.noexc178 ], [ %i.ra, %.noexc179 ], [ %i.lc, %._crit_edge510 ] ; 2 uses
  switch i32 %i.af, label %bb.m [
    i32 4, label %.thread
    i32 1, label %bb.l
  ]

.thread:                                          ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.ro = bitcast <4 x float> %.0.i to <8 x i16>
  %i.rp = shufflevector <8 x i16> %i.ro, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.rq = bitcast <8 x i16> %i.rp to <4 x float>
  %i.rr = shufflevector <4 x float> %i.rq, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.rs = bitcast <4 x float> %i.rr to <2 x i64>
  %i.rt = extractelement <2 x i64> %i.rs, i64 0
  store i64 %i.rt, ptr %.1132519, align 1, !tbaa !254
  %i.ru = getelementptr inbounds nuw i8, ptr %.1132519, i64 8
  br label %bb.m

bb.l:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.rv = bitcast <4 x float> %.0.i to <8 x i16>  ; 4 uses
  %i.rw = extractelement <8 x i16> %i.rv, i64 1
  store i16 %i.rw, ptr %.1132519, align 2, !tbaa !394
  %i.rx = extractelement <8 x i16> %i.rv, i64 3
  %i.ry = load i64, ptr %15, align 8, !tbaa !233  ; 3 uses
  %i.rz = getelementptr inbounds nuw [2 x i8], ptr %.1132519, i64 %i.ry
  store i16 %i.rx, ptr %i.rz, align 2, !tbaa !394
  %i.sa = extractelement <8 x i16> %i.rv, i64 5
  %.idx = shl i64 %i.ry, 2
  %i.sb = getelementptr inbounds nuw i8, ptr %.1132519, i64 %.idx
  store i16 %i.sa, ptr %i.sb, align 2, !tbaa !394
  %i.sc = extractelement <8 x i16> %i.rv, i64 7
  %.idx138 = mul i64 %i.ry, 6
  %i.sd = getelementptr inbounds nuw i8, ptr %.1132519, i64 %.idx138
  store i16 %i.sc, ptr %i.sd, align 2, !tbaa !394
  %i.se = getelementptr inbounds nuw i8, ptr %.1132519, i64 2
  br label %bb.m

bb.m:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.thread, %bb.l
  %.3134 = phi ptr [ %i.se, %bb.l ], [ %.1132519, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.ru, %.thread ] ; 2 uses
  %i.sf = add nuw nsw i32 %.0129520, 1            ; 2 uses
  %exitcond578.not = icmp eq i32 %i.sf, %i.ae
  br i1 %exitcond578.not, label %._crit_edge, label %bb.c, !llvm.loop !1985

._crit_edge528:                                   ; preds = %._crit_edge525.split, %_ZN4ncnn3MatD2Ev.exit150.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge528, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tanh.v2f32(<2 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.minnum.v8f32(<8 x float>, <8 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.log.v8f32(<8 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.tanh.v8f32(<8 x float>) #22

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nofree nounwind }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { cold nounwind }
attributes #30 = { noreturn }
attributes #31 = { builtin allocsize(0) }

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
!21 = !{!22, !6, i64 344}
!22 = !{!"_ZTSN4ncnn11ConvolutionE", !23, i64 0, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !37, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !12, i64 272, !6, i64 344, !12, i64 352, !12, i64 424, !12, i64 496, !12, i64 568, !12, i64 640}
!23 = !{!"_ZTSN4ncnn5LayerE", !24, i64 8, !24, i64 9, !24, i64 10, !24, i64 11, !24, i64 12, !24, i64 13, !24, i64 14, !24, i64 15, !24, i64 16, !24, i64 17, !24, i64 18, !24, i64 19, !24, i64 20, !24, i64 21, !24, i64 22, !24, i64 23, !24, i64 24, !24, i64 25, !24, i64 26, !24, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !25, i64 48, !25, i64 80, !28, i64 112, !28, i64 136, !32, i64 160, !32, i64 184}
!24 = !{!"bool", !7, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !15, i64 8, !7, i64 16}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !27, i64 0}
!27 = !{!"p1 omnipotent char", !13, i64 0}
!28 = !{!"_ZTSSt6vectorIiSaIiEE", !29, i64 0}
!29 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!32 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !33, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !34, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!36 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!37 = !{!"float", !7, i64 0}
!38 = !{!22, !6, i64 268}
!39 = !{!37, !37, i64 0}
!40 = distinct !{null}
!41 = !{!42, !43, i64 712}
!42 = !{!"_ZTSN4ncnn15Convolution_x86E", !22, i64 0, !43, i64 712, !6, i64 720, !12, i64 728, !12, i64 800, !12, i64 872, !12, i64 944, !12, i64 1016, !43, i64 1088, !12, i64 1096}
!43 = !{!"p1 _ZTSN4ncnn5LayerE", !13, i64 0}
!44 = !{!45, !6, i64 4}
!45 = !{!"_ZTSN4ncnn6OptionE", !24, i64 0, !24, i64 1, !24, i64 2, !24, i64 3, !6, i64 4, !16, i64 8, !16, i64 16, !6, i64 24, !24, i64 28, !24, i64 29, !24, i64 30, !24, i64 31, !24, i64 32, !24, i64 33, !24, i64 34, !24, i64 35, !24, i64 36, !24, i64 37, !24, i64 38, !24, i64 39, !6, i64 40, !24, i64 44, !24, i64 45, !24, i64 46, !24, i64 47, !7, i64 48, !24, i64 49, !24, i64 50, !24, i64 51, !24, i64 52, !24, i64 53, !24, i64 54, !24, i64 55, !24, i64 56, !24, i64 57, !24, i64 58, !24, i64 59, !24, i64 60, !24, i64 61, !24, i64 62, !24, i64 63}
!46 = !{!42, !6, i64 720}
!47 = !{!45, !24, i64 30}
!48 = !{i8 0, i8 2}
!49 = !{}
!50 = !{!22, !15, i64 368}
!51 = !{!45, !24, i64 32}
!52 = !{!22, !6, i64 212}
!53 = !{!22, !6, i64 216}
!54 = !{!22, !6, i64 260}
!55 = !{!22, !6, i64 208}
!56 = !{!45, !24, i64 39}
!57 = !{!22, !6, i64 220}
!58 = !{!22, !6, i64 224}
!59 = !{!22, !6, i64 228}
!60 = !{!22, !6, i64 232}
!61 = !{!42, !43, i64 1088}
!62 = !{!22, !6, i64 256}
!63 = distinct !{null}
!64 = !{!13, !13, i64 0}
!65 = !{!12, !15, i64 16}
!66 = !{!12, !6, i64 24}
!67 = !{!6, !6, i64 0}
!68 = !{!12, !6, i64 56}
!69 = !{!45, !24, i64 0}
!70 = !{!45, !24, i64 55}
!71 = !{!45, !24, i64 56}
!72 = !{!45, !24, i64 57}
!73 = !{!45, !24, i64 28}
!74 = !{!36, !36, i64 0}
!75 = !{!12, !6, i64 44}
!76 = !{!12, !6, i64 48}
!77 = !{!22, !6, i64 236}
!78 = !{!22, !6, i64 240}
!79 = !{!22, !6, i64 244}
!80 = !{!22, !6, i64 248}
!81 = !{!45, !24, i64 29}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.mustprogress"}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = distinct !{!86, !83}
!87 = distinct !{!87, !83}
!88 = distinct !{!88, !83}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!91 = distinct !{!91, !"_ZN4ncnn3Mat7channelEi"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!94 = distinct !{!94, !"_ZN4ncnn3Mat7channelEi"}
!95 = distinct !{!95, !83}
!96 = distinct !{!96, !83}
!97 = !{!98}
!98 = distinct !{!98, !99}
!99 = distinct !{!99, !"LVerDomain"}
!100 = !{!101}
!101 = distinct !{!101, !99}
!102 = !{!103}
!103 = distinct !{!103, !99}
!104 = !{!105}
!105 = distinct !{!105, !99}
!106 = !{!107}
!107 = distinct !{!107, !99}
!108 = !{!109}
!109 = distinct !{!109, !99}
!110 = !{!111}
end_hunk_28
