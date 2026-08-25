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
  %i.aml = shufflevector <4 x float> %i.aie, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.amm = insertelement <2 x float> %i.aml, float %i.acu, i64 0
  %i.amn = shufflevector <2 x float> %i.amm, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.amo = fadd fast <4 x float> %i.amk, %i.amn
  store <4 x float> %i.amo, ptr %i.amc, align 4, !tbaa !39
  %i.amp = getelementptr inbounds nuw i8, ptr %.118.i, i64 252
  store float %i.act, ptr %i.amp, align 4, !tbaa !39
  %i.amq = getelementptr inbounds nuw i8, ptr %.118.i, i64 256 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.preheader.preheader.i, !llvm.loop !441

._crit_edge.i:                                    ; preds = %.preheader.preheader.i, %middle.block177
  %.lcssa = phi ptr [ %i.cz, %middle.block177 ], [ %i.amq, %.preheader.preheader.i ]
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next26.i, %wide.trip.count28.i
  br i1 %exitcond29.not.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit, label %.preheader12.i, !llvm.loop !442

_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit: ; preds = %._crit_edge.i, %.preheader12.lr.ph.i, %bb.d
  %i.amr = trunc nsw i64 %indvars.iv to i32
  %i.ams = sdiv i32 %i.amr, %i.ai
  %i.amt = sext i32 %i.ams to i64
  %i.amu = mul i64 %i.ax, %i.amt
  %i.amv = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.amu
  %i.amw = shl i32 %.sroa.speculated, 6           ; 2 uses
  %i.amx = icmp sgt i32 %.sroa.speculated, 0      ; 3 uses
  %i.amy = sext i32 %i.amw to i64                 ; 11 uses
  %i.amz = shl nsw i32 %.sroa.speculated, 7
  %i.ana = sext i32 %i.amz to i64                 ; 3 uses
  %i.anb = mul nsw i32 %.sroa.speculated, 192
  %i.anc = sext i32 %i.anb to i64                 ; 3 uses
  %i.and = zext i32 %i.amw to i64
  %i.ane = shl nsw i64 %i.amy, 2
  %i.anf = getelementptr i8, ptr %i.bk, i64 %i.ce
  %i.ang = getelementptr i8, ptr %i.anf, i64 %i.cf
  %xtraiter = and i32 %.sroa.speculated, 1
  %i.anh = icmp eq i32 %i.bq, 0
  %unroll_iter = and i32 %.sroa.speculated, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod190 = trunc i32 %.sroa.speculated to i1
  %xtraiter192 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.ani = icmp ult i32 %i.bq, 3
  %unroll_iter196 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod193.not = icmp eq i32 %xtraiter192, 0
  %lcmp.mod195 = icmp ne i32 %xtraiter192, 0
  %i.anj = zext nneg i32 %.sroa.speculated to i64 ; 2 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  %stride.check = icmp slt i32 %i.cc, 0
  %n.vec = and i64 %i.anj, 2147483640             ; 5 uses
  %i.ank = trunc nuw nsw i64 %n.vec to i32
  %i.anl = shl nuw nsw i64 %n.vec, 8
  %i.anm = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %i.anj
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge33.split.i, %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit
  %indvars.iv54.i = phi i64 [ 0, %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit ], [ %indvars.iv.next55.i, %._crit_edge33.split.i ] ; 6 uses
  %i.ann = shl nuw nsw i64 %indvars.iv54.i, 2
  %scevgep141 = getelementptr i8, ptr %i.ang, i64 %i.ann
  %.reass.i = mul i64 %i.aw, %indvars.iv54.i
  %i.ano = getelementptr inbounds nuw i8, ptr %i.amv, i64 %.reass.i ; 4 uses
  br i1 %i.ay, label %.lr.ph8.i, label %.preheader1.i

.lr.ph8.i:                                        ; preds = %bb.e
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv54.i
  br i1 %i.amx, label %.lr.ph.us.i, label %.preheader1.thread.i

.lr.ph.us.i:                                      ; preds = %.lr.ph8.i, %._crit_edge.us.i
  %indvars.iv.i54 = phi i64 [ %indvars.iv.next.i56, %._crit_edge.us.i ], [ 0, %.lr.ph8.i ] ; 2 uses
  %.0695.us.i = phi ptr [ %.lcssa185, %._crit_edge.us.i ], [ %i.ano, %.lr.ph8.i ] ; 2 uses
  %i.anp = mul nuw nsw i64 %indvars.iv.i54, %i.and
  %gep.us.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.anp ; 2 uses
  br i1 %i.anh, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %.0673.us.i = phi ptr [ %i.aom, %.lr.ph.us.i.new ], [ %gep.us.i, %.lr.ph.us.i ] ; 6 uses
  %.1702.us.i = phi ptr [ %i.aon, %.lr.ph.us.i.new ], [ %.0695.us.i, %.lr.ph.us.i ] ; 9 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.anq = load float, ptr %.0673.us.i, align 4, !tbaa !39
  store float %i.anq, ptr %.1702.us.i, align 4, !tbaa !39
  %i.anr = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i, i64 %i.amy
  %i.ans = load float, ptr %i.anr, align 4, !tbaa !39
  %i.ant = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 4
  store float %i.ans, ptr %i.ant, align 4, !tbaa !39
  %i.anu = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i, i64 %i.ana
  %i.anv = load float, ptr %i.anu, align 4, !tbaa !39
  %i.anw = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 8
  store float %i.anv, ptr %i.anw, align 4, !tbaa !39
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i, i64 %i.anc
  %i.any = load float, ptr %i.anx, align 4, !tbaa !39
  %i.anz = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 12
  store float %i.any, ptr %i.anz, align 4, !tbaa !39
  %i.aoa = getelementptr inbounds nuw i8, ptr %.0673.us.i, i64 256 ; 4 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 16
  %i.aoc = load float, ptr %i.aoa, align 4, !tbaa !39
  store float %i.aoc, ptr %i.aob, align 4, !tbaa !39
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %i.aoa, i64 %i.amy
  %i.aoe = load float, ptr %i.aod, align 4, !tbaa !39
  %i.aof = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 20
  store float %i.aoe, ptr %i.aof, align 4, !tbaa !39
  %i.aog = getelementptr inbounds nuw [4 x i8], ptr %i.aoa, i64 %i.ana
  %i.aoh = load float, ptr %i.aog, align 4, !tbaa !39
  %i.aoi = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 24
  store float %i.aoh, ptr %i.aoi, align 4, !tbaa !39
  %i.aoj = getelementptr inbounds nuw [4 x i8], ptr %i.aoa, i64 %i.anc
  %i.aok = load float, ptr %i.aoj, align 4, !tbaa !39
  %i.aol = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 28
  store float %i.aok, ptr %i.aol, align 4, !tbaa !39
  %i.aom = getelementptr inbounds nuw i8, ptr %.0673.us.i, i64 512 ; 2 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 32 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !443

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.0673.us.i.epil.init = phi ptr [ %gep.us.i, %.lr.ph.us.i ], [ %i.aom, %._crit_edge.us.i.unr-lcssa ] ; 4 uses
  %.1702.us.i.epil.init = phi ptr [ %.0695.us.i, %.lr.ph.us.i ], [ %i.aon, %._crit_edge.us.i.unr-lcssa ] ; 5 uses
  call void @llvm.assume(i1 %lcmp.mod190)
  %i.aoo = load float, ptr %.0673.us.i.epil.init, align 4, !tbaa !39
  store float %i.aoo, ptr %.1702.us.i.epil.init, align 4, !tbaa !39
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i.epil.init, i64 %i.amy
  %i.aoq = load float, ptr %i.aop, align 4, !tbaa !39
  %i.aor = getelementptr inbounds nuw i8, ptr %.1702.us.i.epil.init, i64 4
  store float %i.aoq, ptr %i.aor, align 4, !tbaa !39
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i.epil.init, i64 %i.ana
  %i.aot = load float, ptr %i.aos, align 4, !tbaa !39
  %i.aou = getelementptr inbounds nuw i8, ptr %.1702.us.i.epil.init, i64 8
  store float %i.aot, ptr %i.aou, align 4, !tbaa !39
  %i.aov = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i.epil.init, i64 %i.anc
  %i.aow = load float, ptr %i.aov, align 4, !tbaa !39
  %i.aox = getelementptr inbounds nuw i8, ptr %.1702.us.i.epil.init, i64 12
  store float %i.aow, ptr %i.aox, align 4, !tbaa !39
  %i.aoy = getelementptr inbounds nuw i8, ptr %.1702.us.i.epil.init, i64 16
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %.lcssa185 = phi ptr [ %i.aon, %._crit_edge.us.i.unr-lcssa ], [ %i.aoy, %.epil.preheader ] ; 2 uses
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i54, 4 ; 3 uses
  %i.aoz = icmp slt i64 %indvars.iv.next.i56, %invariant.op.i
  br i1 %i.aoz, label %.lr.ph.us.i, label %.preheader1.loopexit.i, !llvm.loop !444

.preheader1.loopexit.i:                           ; preds = %._crit_edge.us.i
  %i.apa = trunc nuw nsw i64 %indvars.iv.next.i56 to i32
  br label %.preheader1.i

.preheader1.i:                                    ; preds = %.preheader1.loopexit.i, %bb.e
  %.069.lcssa.i = phi ptr [ %i.ano, %bb.e ], [ %.lcssa185, %.preheader1.loopexit.i ] ; 3 uses
  %.068.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.apa, %.preheader1.loopexit.i ] ; 4 uses
  %i.apb = or disjoint i32 %.068.lcssa.i, 1
  %i.apc = icmp slt i32 %i.apb, %.sroa.speculated82
  br i1 %i.apc, label %.lr.ph17.i, label %.preheader.i

.preheader1.thread.i:                             ; preds = %.lr.ph8.i
  br i1 %i.bc, label %.lr.ph17.split.preheader.i, label %.preheader.i

.lr.ph17.i:                                       ; preds = %.preheader1.i
  %invariant.gep20.i = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv54.i
  br i1 %i.amx, label %.lr.ph.us22.preheader.i, label %.lr.ph17.split.preheader.i

.lr.ph17.split.preheader.i:                       ; preds = %.lr.ph17.i, %.preheader1.thread.i
  %.069.lcssa6268.i = phi ptr [ %.069.lcssa.i, %.lr.ph17.i ], [ %i.ano, %.preheader1.thread.i ]
  %.068.lcssa6367.i = phi i32 [ %.068.lcssa.i, %.lr.ph17.i ], [ %i.az, %.preheader1.thread.i ] ; 2 uses
  %i.apd = add i32 %.068.lcssa6367.i, 2
  %reass.sub = sub i32 %11, %.068.lcssa6367.i
  %i.ape = and i32 %reass.sub, -2
  %i.apf = add i32 %i.apd, %i.ape
  br label %.preheader.i

.lr.ph.us22.preheader.i:                          ; preds = %.lr.ph17.i
  %i.apg = sext i32 %.068.lcssa.i to i64
  br label %.lr.ph.us22.i

.lr.ph.us22.i:                                    ; preds = %._crit_edge.us23.i, %.lr.ph.us22.preheader.i
  %indvars.iv46.i = phi i64 [ %i.apg, %.lr.ph.us22.preheader.i ], [ %indvars.iv.next47.i, %._crit_edge.us23.i ] ; 2 uses
  %.27115.us.i = phi ptr [ %.069.lcssa.i, %.lr.ph.us22.preheader.i ], [ %.lcssa186, %._crit_edge.us23.i ] ; 2 uses
  %i.aph = mul nsw i64 %indvars.iv46.i, %i.amy
  %gep.us21.i = getelementptr [4 x i8], ptr %invariant.gep20.i, i64 %i.aph ; 2 uses
  br i1 %i.ani, label %.epil.preheader191, label %.lr.ph.us22.i.new

.lr.ph.us22.i.new:                                ; preds = %.lr.ph.us22.i, %.lr.ph.us22.i.new
  %.06513.us.i = phi ptr [ %i.aqe, %.lr.ph.us22.i.new ], [ %gep.us21.i, %.lr.ph.us22.i ] ; 6 uses
  %.312.us.i = phi ptr [ %i.aqf, %.lr.ph.us22.i.new ], [ %.27115.us.i, %.lr.ph.us22.i ] ; 9 uses
  %niter197 = phi i32 [ %niter197.next.3, %.lr.ph.us22.i.new ], [ 0, %.lr.ph.us22.i ]
  %i.api = load float, ptr %.06513.us.i, align 4, !tbaa !39
  store float %i.api, ptr %.312.us.i, align 4, !tbaa !39
  %i.apj = getelementptr inbounds nuw [4 x i8], ptr %.06513.us.i, i64 %i.amy
  %i.apk = load float, ptr %i.apj, align 4, !tbaa !39
  %i.apl = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 4
  store float %i.apk, ptr %i.apl, align 4, !tbaa !39
  %i.apm = getelementptr inbounds nuw i8, ptr %.06513.us.i, i64 256 ; 2 uses
  %i.apn = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 8
  %i.apo = load float, ptr %i.apm, align 4, !tbaa !39
  store float %i.apo, ptr %i.apn, align 4, !tbaa !39
  %i.app = getelementptr inbounds nuw [4 x i8], ptr %i.apm, i64 %i.amy
  %i.apq = load float, ptr %i.app, align 4, !tbaa !39
  %i.apr = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 12
  store float %i.apq, ptr %i.apr, align 4, !tbaa !39
  %i.aps = getelementptr inbounds nuw i8, ptr %.06513.us.i, i64 512 ; 2 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 16
  %i.apu = load float, ptr %i.aps, align 4, !tbaa !39
  store float %i.apu, ptr %i.apt, align 4, !tbaa !39
  %i.apv = getelementptr inbounds nuw [4 x i8], ptr %i.aps, i64 %i.amy
  %i.apw = load float, ptr %i.apv, align 4, !tbaa !39
  %i.apx = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 20
  store float %i.apw, ptr %i.apx, align 4, !tbaa !39
  %i.apy = getelementptr inbounds nuw i8, ptr %.06513.us.i, i64 768 ; 2 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 24
  %i.aqa = load float, ptr %i.apy, align 4, !tbaa !39
  store float %i.aqa, ptr %i.apz, align 4, !tbaa !39
  %i.aqb = getelementptr inbounds nuw [4 x i8], ptr %i.apy, i64 %i.amy
  %i.aqc = load float, ptr %i.aqb, align 4, !tbaa !39
  %i.aqd = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 28
  store float %i.aqc, ptr %i.aqd, align 4, !tbaa !39
  %i.aqe = getelementptr inbounds nuw i8, ptr %.06513.us.i, i64 1024 ; 2 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 32 ; 3 uses
  %niter197.next.3 = add i32 %niter197, 4         ; 2 uses
  %niter197.ncmp.3 = icmp eq i32 %niter197.next.3, %unroll_iter196
  br i1 %niter197.ncmp.3, label %._crit_edge.us23.i.unr-lcssa, label %.lr.ph.us22.i.new, !llvm.loop !445

._crit_edge.us23.i.unr-lcssa:                     ; preds = %.lr.ph.us22.i.new
  br i1 %lcmp.mod193.not, label %._crit_edge.us23.i, label %.epil.preheader191

.epil.preheader191:                               ; preds = %._crit_edge.us23.i.unr-lcssa, %.lr.ph.us22.i
  %.06513.us.i.epil.init = phi ptr [ %gep.us21.i, %.lr.ph.us22.i ], [ %i.aqe, %._crit_edge.us23.i.unr-lcssa ]
  %.312.us.i.epil.init = phi ptr [ %.27115.us.i, %.lr.ph.us22.i ], [ %i.aqf, %._crit_edge.us23.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod195)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader191
  %.06513.us.i.epil = phi ptr [ %.06513.us.i.epil.init, %.epil.preheader191 ], [ %i.aqk, %bb.f ] ; 3 uses
  %.312.us.i.epil = phi ptr [ %.312.us.i.epil.init, %.epil.preheader191 ], [ %i.aql, %bb.f ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader191 ], [ %epil.iter.next, %bb.f ]
  %i.aqg = load float, ptr %.06513.us.i.epil, align 4, !tbaa !39
  store float %i.aqg, ptr %.312.us.i.epil, align 4, !tbaa !39
  %i.aqh = getelementptr inbounds nuw [4 x i8], ptr %.06513.us.i.epil, i64 %i.amy
  %i.aqi = load float, ptr %i.aqh, align 4, !tbaa !39
  %i.aqj = getelementptr inbounds nuw i8, ptr %.312.us.i.epil, i64 4
  store float %i.aqi, ptr %i.aqj, align 4, !tbaa !39
  %i.aqk = getelementptr inbounds nuw i8, ptr %.06513.us.i.epil, i64 256
  %i.aql = getelementptr inbounds nuw i8, ptr %.312.us.i.epil, i64 8 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter192
  br i1 %epil.iter.cmp.not, label %._crit_edge.us23.i, label %bb.f, !llvm.loop !446

._crit_edge.us23.i:                               ; preds = %bb.f, %._crit_edge.us23.i.unr-lcssa
  %.lcssa186 = phi ptr [ %i.aqf, %._crit_edge.us23.i.unr-lcssa ], [ %i.aql, %bb.f ] ; 2 uses
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 2 ; 3 uses
  %i.aqm = icmp slt i64 %indvars.iv.next47.i, %invariant.op71.i
  br i1 %i.aqm, label %.lr.ph.us22.i, label %.preheader.loopexit.i, !llvm.loop !447

.preheader.loopexit.i:                            ; preds = %._crit_edge.us23.i
  %i.aqn = trunc nsw i64 %indvars.iv.next47.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph17.split.preheader.i, %.preheader1.thread.i, %.preheader1.i
  %.271.lcssa.i = phi ptr [ %.069.lcssa.i, %.preheader1.i ], [ %.lcssa186, %.preheader.loopexit.i ], [ %.069.lcssa6268.i, %.lr.ph17.split.preheader.i ], [ %i.ano, %.preheader1.thread.i ]
  %.1.lcssa.i = phi i32 [ %.068.lcssa.i, %.preheader1.i ], [ %i.aqn, %.preheader.loopexit.i ], [ %i.apf, %.lr.ph17.split.preheader.i ], [ %i.az, %.preheader1.thread.i ] ; 2 uses
  %i.aqo = icmp slt i32 %.1.lcssa.i, %.sroa.speculated82
  br i1 %i.aqo, label %.lr.ph32.i, label %._crit_edge33.split.i

.lr.ph32.i:                                       ; preds = %.preheader.i
  %invariant.gep34.i = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv54.i ; 2 uses
  br i1 %i.amx, label %.lr.ph.preheader.i, label %._crit_edge33.split.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph32.i
  %i.aqp = sext i32 %.1.lcssa.i to i64            ; 2 uses
  %i.aqq = mul i64 %i.ane, %i.aqp
  %scevgep140 = getelementptr i8, ptr %invariant.gep34.i, i64 %i.aqq
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i53, %.lr.ph.preheader.i
  %indvars.iv50.i = phi i64 [ %i.aqp, %.lr.ph.preheader.i ], [ %indvars.iv.next51.i, %._crit_edge.i53 ] ; 2 uses
  %.430.i = phi ptr [ %.271.lcssa.i, %.lr.ph.preheader.i ], [ %.lcssa138, %._crit_edge.i53 ] ; 6 uses
  %i.aqr = mul nsw i64 %indvars.iv50.i, %i.amy
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep34.i, i64 %i.aqr ; 11 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %scevgep = getelementptr i8, ptr %.430.i, i64 4
  %scevgep139 = getelementptr i8, ptr %scevgep, i64 %i.cb
  %bound0 = icmp ult ptr %.430.i, %scevgep141
  %bound1 = icmp ult ptr %scevgep140, %scevgep139
  %found.conflict = and i1 %bound0, %bound1
  %i.aqs = or i1 %found.conflict, %stride.check
  br i1 %i.aqs, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aqt = getelementptr i8, ptr %gep.i, i64 %i.anl
  %i.aqu = getelementptr i8, ptr %.430.i, i64 %i.anm ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aqv = shl i64 %index, 8                      ; 8 uses
  %next.gep = getelementptr i8, ptr %gep.i, i64 %i.aqv
  %i.aqw = getelementptr i8, ptr %gep.i, i64 %i.aqv
  %next.gep142 = getelementptr i8, ptr %i.aqw, i64 256
  %i.aqx = getelementptr i8, ptr %gep.i, i64 %i.aqv
  %next.gep143 = getelementptr i8, ptr %i.aqx, i64 512
  %i.aqy = getelementptr i8, ptr %gep.i, i64 %i.aqv
  %next.gep144 = getelementptr i8, ptr %i.aqy, i64 768
  %i.aqz = getelementptr i8, ptr %gep.i, i64 %i.aqv
  %next.gep145 = getelementptr i8, ptr %i.aqz, i64 1024
  %i.ara = getelementptr i8, ptr %gep.i, i64 %i.aqv
  %next.gep146 = getelementptr i8, ptr %i.ara, i64 1280
  %i.arb = getelementptr i8, ptr %gep.i, i64 %i.aqv
  %next.gep147 = getelementptr i8, ptr %i.arb, i64 1536
  %i.arc = getelementptr i8, ptr %gep.i, i64 %i.aqv
  %next.gep148 = getelementptr i8, ptr %i.arc, i64 1792
  %i.ard = shl i64 %index, 2
  %next.gep149 = getelementptr i8, ptr %.430.i, i64 %i.ard ; 2 uses
  %i.are = load float, ptr %next.gep, align 4, !tbaa !39, !alias.scope !448
  %i.arf = load float, ptr %next.gep142, align 4, !tbaa !39, !alias.scope !448
  %i.arg = load float, ptr %next.gep143, align 4, !tbaa !39, !alias.scope !448
  %i.arh = load float, ptr %next.gep144, align 4, !tbaa !39, !alias.scope !448
  %i.ari = insertelement <4 x float> poison, float %i.are, i64 0
  %i.arj = insertelement <4 x float> %i.ari, float %i.arf, i64 1
  %i.ark = insertelement <4 x float> %i.arj, float %i.arg, i64 2
  %i.arl = insertelement <4 x float> %i.ark, float %i.arh, i64 3
  %i.arm = load float, ptr %next.gep145, align 4, !tbaa !39, !alias.scope !448
  %i.arn = load float, ptr %next.gep146, align 4, !tbaa !39, !alias.scope !448
  %i.aro = load float, ptr %next.gep147, align 4, !tbaa !39, !alias.scope !448
  %i.arp = load float, ptr %next.gep148, align 4, !tbaa !39, !alias.scope !448
  %i.arq = insertelement <4 x float> poison, float %i.arm, i64 0
  %i.arr = insertelement <4 x float> %i.arq, float %i.arn, i64 1
  %i.ars = insertelement <4 x float> %i.arr, float %i.aro, i64 2
  %i.art = insertelement <4 x float> %i.ars, float %i.arp, i64 3
  %i.aru = getelementptr i8, ptr %next.gep149, i64 16
  store <4 x float> %i.arl, ptr %next.gep149, align 4, !tbaa !39, !alias.scope !451, !noalias !448
  store <4 x float> %i.art, ptr %i.aru, align 4, !tbaa !39, !alias.scope !451, !noalias !448
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.arv = icmp eq i64 %index.next, %n.vec
  br i1 %i.arv, label %middle.block, label %vector.body, !llvm.loop !453

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i53, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.029.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.ank, %middle.block ] ; 4 uses
  %.06328.i.ph = phi ptr [ %gep.i, %vector.memcheck ], [ %gep.i, %.lr.ph.i ], [ %i.aqt, %middle.block ] ; 2 uses
  %.527.i.ph = phi ptr [ %.430.i, %vector.memcheck ], [ %.430.i, %.lr.ph.i ], [ %i.aqu, %middle.block ] ; 2 uses
  %i.arw = sub i32 %.sroa.speculated, %.029.i.ph
  %xtraiter198 = and i32 %i.arw, 7                ; 2 uses
  %lcmp.mod199.not = icmp eq i32 %xtraiter198, 0
  br i1 %lcmp.mod199.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.029.i.prol = phi i32 [ %i.asa, %scalar.ph.prol ], [ %.029.i.ph, %scalar.ph.preheader ]
  %.06328.i.prol = phi ptr [ %i.ary, %scalar.ph.prol ], [ %.06328.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.527.i.prol = phi ptr [ %i.arz, %scalar.ph.prol ], [ %.527.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.arx = load float, ptr %.06328.i.prol, align 4, !tbaa !39
  store float %i.arx, ptr %.527.i.prol, align 4, !tbaa !39
  %i.ary = getelementptr inbounds nuw i8, ptr %.06328.i.prol, i64 256 ; 2 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %.527.i.prol, i64 4 ; 3 uses
  %i.asa = add nuw nsw i32 %.029.i.prol, 1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter198
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !454

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa187.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.arz, %scalar.ph.prol ]
  %.029.i.unr = phi i32 [ %.029.i.ph, %scalar.ph.preheader ], [ %i.asa, %scalar.ph.prol ]
  %.06328.i.unr = phi ptr [ %.06328.i.ph, %scalar.ph.preheader ], [ %i.ary, %scalar.ph.prol ]
  %.527.i.unr = phi ptr [ %.527.i.ph, %scalar.ph.preheader ], [ %i.arz, %scalar.ph.prol ]
  %i.asb = sub i32 %.029.i.ph, %.sroa.speculated
  %i.asc = icmp ugt i32 %i.asb, -8
  br i1 %i.asc, label %._crit_edge.i53, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.029.i = phi i32 [ %i.atb, %scalar.ph ], [ %.029.i.unr, %scalar.ph.prol.loopexit ]
  %.06328.i = phi ptr [ %i.asz, %scalar.ph ], [ %.06328.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.527.i = phi ptr [ %i.ata, %scalar.ph ], [ %.527.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.asd = load float, ptr %.06328.i, align 4, !tbaa !39
  store float %i.asd, ptr %.527.i, align 4, !tbaa !39
  %i.ase = getelementptr inbounds nuw i8, ptr %.06328.i, i64 256
  %i.asf = getelementptr inbounds nuw i8, ptr %.527.i, i64 4
  %i.asg = load float, ptr %i.ase, align 4, !tbaa !39
  store float %i.asg, ptr %i.asf, align 4, !tbaa !39
  %i.ash = getelementptr inbounds nuw i8, ptr %.06328.i, i64 512
  %i.asi = getelementptr inbounds nuw i8, ptr %.527.i, i64 8
  %i.asj = load float, ptr %i.ash, align 4, !tbaa !39
  store float %i.asj, ptr %i.asi, align 4, !tbaa !39
  %i.ask = getelementptr inbounds nuw i8, ptr %.06328.i, i64 768
  %i.asl = getelementptr inbounds nuw i8, ptr %.527.i, i64 12
  %i.asm = load float, ptr %i.ask, align 4, !tbaa !39
  store float %i.asm, ptr %i.asl, align 4, !tbaa !39
  %i.asn = getelementptr inbounds nuw i8, ptr %.06328.i, i64 1024
  %i.aso = getelementptr inbounds nuw i8, ptr %.527.i, i64 16
  %i.asp = load float, ptr %i.asn, align 4, !tbaa !39
  store float %i.asp, ptr %i.aso, align 4, !tbaa !39
  %i.asq = getelementptr inbounds nuw i8, ptr %.06328.i, i64 1280
  %i.asr = getelementptr inbounds nuw i8, ptr %.527.i, i64 20
  %i.ass = load float, ptr %i.asq, align 4, !tbaa !39
  store float %i.ass, ptr %i.asr, align 4, !tbaa !39
  %i.ast = getelementptr inbounds nuw i8, ptr %.06328.i, i64 1536
  %i.asu = getelementptr inbounds nuw i8, ptr %.527.i, i64 24
  %i.asv = load float, ptr %i.ast, align 4, !tbaa !39
  store float %i.asv, ptr %i.asu, align 4, !tbaa !39
  %i.asw = getelementptr inbounds nuw i8, ptr %.06328.i, i64 1792
  %i.asx = getelementptr inbounds nuw i8, ptr %.527.i, i64 28
  %i.asy = load float, ptr %i.asw, align 4, !tbaa !39
  store float %i.asy, ptr %i.asx, align 4, !tbaa !39
  %i.asz = getelementptr inbounds nuw i8, ptr %.06328.i, i64 2048
  %i.ata = getelementptr inbounds nuw i8, ptr %.527.i, i64 32 ; 2 uses
  %i.atb = add nuw nsw i32 %.029.i, 8             ; 2 uses
  %exitcond49.not.i.7 = icmp eq i32 %i.atb, %.sroa.speculated
  br i1 %exitcond49.not.i.7, label %._crit_edge.i53, label %scalar.ph, !llvm.loop !455

._crit_edge.i53:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa138 = phi ptr [ %i.aqu, %middle.block ], [ %.lcssa187.unr, %scalar.ph.prol.loopexit ], [ %i.ata, %scalar.ph ]
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next51.i, %i.ba
  br i1 %exitcond53.not.i, label %._crit_edge33.split.i, label %.lr.ph.i, !llvm.loop !456

._crit_edge33.split.i:                            ; preds = %._crit_edge.i53, %.lr.ph32.i, %.preheader.i
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next55.i, 64
  br i1 %exitcond58.not.i, label %_ZN4ncnn3MatD2Ev.exit34, label %bb.e, !llvm.loop !457

_ZN4ncnn3MatD2Ev.exit34:                          ; preds = %._crit_edge33.split.i
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.bd ; 2 uses
  %i.atc = icmp slt i64 %indvars.iv.next, %i.be
  %indvar.next = add i32 %indvar, 1
  %indvar.next156 = add i64 %indvar155, 1
  br i1 %i.atc, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !458

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
  %i.atd = landingpad { ptr, i32 }
          catch ptr null
  %i.ate = extractvalue { ptr, i32 } %i.atd, 0
  call void @__clang_call_terminate(ptr %i.ate) #27
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
  %i.nw = fadd fast float %i.nv, %i.ml
  %i.nx = fsub fast float %i.nm, %i.nu
  %i.ny = fadd fast float %i.nx, %i.ml
  %i.nz = fmul fast float %i.nt, 5.000000e-01     ; 2 uses
  %i.oa = extractelement <4 x float> %i.nq, i64 2
  %i.ob = fmul fast float %i.oa, 5.000000e-01     ; 2 uses
  %i.oc = extractelement <4 x float> %i.nq, i64 0
  %i.od = extractelement <4 x float> %i.nl, i64 3 ; 3 uses
  %i.oe = fadd fast float %i.oc, %i.od            ; 2 uses
  %i.of = fadd fast float %i.nn, %i.od            ; 2 uses
  %i.og = extractelement <4 x float> %i.ng, i64 0
  store float %i.og, ptr %.110.i, align 4, !tbaa !39
  store float %i.nw, ptr %i.mp, align 4, !tbaa !39
  store float %i.ny, ptr %i.mq, align 4, !tbaa !39
  store float %i.nd, ptr %i.mr, align 4, !tbaa !39
  %i.oh = fmul fast float %i.oe, 5.000000e-01     ; 2 uses
  %i.oi = fadd fast float %i.nz, %i.oh
  %i.oj = fadd fast float %i.oi, %i.ne
  %i.ok = fsub fast float %i.oh, %i.nz
  %i.ol = fadd fast float %i.ok, %i.ne
  store float %i.oe, ptr %i.ms, align 4, !tbaa !39
  store float %i.oj, ptr %i.mt, align 4, !tbaa !39
  store float %i.ol, ptr %i.mu, align 4, !tbaa !39
  store float %i.nc, ptr %i.mv, align 4, !tbaa !39
  %i.om = fmul fast float %i.of, 5.000000e-01     ; 2 uses
  %i.on = fadd fast float %i.ob, %i.om
  %i.oo = fsub fast float %i.od, %i.ns
  %i.op = insertelement <4 x float> poison, float %i.mo, i64 0
  %i.oq = shufflevector <4 x float> %i.op, <4 x float> %i.nq, <4 x i32> <i32 0, i32 poison, i32 7, i32 poison>
  %i.or = shufflevector <4 x float> %i.oq, <4 x float> %i.ng, <4 x i32> <i32 0, i32 6, i32 2, i32 poison>
  %i.os = insertelement <4 x float> %i.or, float %i.oo, i64 3
  %i.ot = fadd reassoc nsz arcp contract afn <4 x float> %i.os, %i.nb ; 2 uses
  %i.ou = extractelement <4 x float> %i.ot, i64 0
  %i.ov = fmul fast float %i.ou, 5.000000e-01     ; 2 uses
  %i.ow = fadd fast float %i.on, %i.ov
  %i.ox = fsub fast float %i.om, %i.ob
  %i.oy = fadd fast float %i.ox, %i.ov
  store float %i.of, ptr %i.mw, align 4, !tbaa !39
  store float %i.ow, ptr %i.mx, align 4, !tbaa !39
  store float %i.oy, ptr %i.my, align 4, !tbaa !39
  store <4 x float> %i.ot, ptr %i.mz, align 4, !tbaa !39
  %i.oz = getelementptr inbounds nuw i8, ptr %.110.i, i64 60
  store float %i.mi, ptr %i.oz, align 4, !tbaa !39
  %i.pa = getelementptr inbounds nuw i8, ptr %.110.i, i64 64 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.preheader.preheader.i, !llvm.loop !497

._crit_edge.i:                                    ; preds = %.preheader.preheader.i, %middle.block158
  %.lcssa = phi ptr [ %i.cz, %middle.block158 ], [ %i.pa, %.preheader.preheader.i ]
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 2 uses
  %exitcond21.not.i = icmp eq i64 %indvars.iv.next18.i, %wide.trip.count20.i
  br i1 %exitcond21.not.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_tileERKNS_3MatERS0_iiiii.exit, label %.preheader4.i, !llvm.loop !498

_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_tileERKNS_3MatERS0_iiiii.exit: ; preds = %._crit_edge.i, %bb.d, %.preheader4.lr.ph.i
  %i.pb = trunc nsw i64 %indvars.iv to i32
  %i.pc = sdiv i32 %i.pb, %i.ai
  %i.pd = sext i32 %i.pc to i64
  %i.pe = mul i64 %i.ax, %i.pd
  %i.pf = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.pe
  %i.pg = shl i32 %.sroa.speculated, 4            ; 2 uses
  %i.ph = icmp sgt i32 %.sroa.speculated, 0       ; 3 uses
  %i.pi = sext i32 %i.pg to i64                   ; 11 uses
  %i.pj = shl nsw i32 %.sroa.speculated, 5
  %i.pk = sext i32 %i.pj to i64                   ; 3 uses
  %i.pl = mul nsw i32 %.sroa.speculated, 48
  %i.pm = sext i32 %i.pl to i64                   ; 3 uses
  %i.pn = zext i32 %i.pg to i64
  %i.po = shl nsw i64 %i.pi, 2
  %i.pp = getelementptr i8, ptr %i.bk, i64 %i.ce
  %i.pq = getelementptr i8, ptr %i.pp, i64 %i.cf
  %xtraiter = and i32 %.sroa.speculated, 1
  %i.pr = icmp eq i32 %i.bq, 0
  %unroll_iter = and i32 %.sroa.speculated, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod169 = trunc i32 %.sroa.speculated to i1
  %xtraiter171 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.ps = icmp ult i32 %i.bq, 3
  %unroll_iter175 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod172.not = icmp eq i32 %xtraiter171, 0
  %lcmp.mod174 = icmp ne i32 %xtraiter171, 0
  %i.pt = zext nneg i32 %.sroa.speculated to i64  ; 2 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  %stride.check = icmp slt i32 %i.cc, 0
  %n.vec = and i64 %i.pt, 2147483640              ; 5 uses
  %i.pu = trunc nuw nsw i64 %n.vec to i32
  %i.pv = shl nuw nsw i64 %n.vec, 6
  %i.pw = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %i.pt
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge33.split.i, %_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_tileERKNS_3MatERS0_iiiii.exit
  %indvars.iv54.i = phi i64 [ 0, %_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_tileERKNS_3MatERS0_iiiii.exit ], [ %indvars.iv.next55.i, %._crit_edge33.split.i ] ; 6 uses
  %i.px = shl nuw nsw i64 %indvars.iv54.i, 2
  %scevgep122 = getelementptr i8, ptr %i.pq, i64 %i.px
  %.reass.i = mul i64 %i.aw, %indvars.iv54.i
  %i.py = getelementptr inbounds nuw i8, ptr %i.pf, i64 %.reass.i ; 4 uses
  br i1 %i.ay, label %.lr.ph8.i, label %.preheader1.i

.lr.ph8.i:                                        ; preds = %bb.e
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv54.i
  br i1 %i.ph, label %.lr.ph.us.i, label %.preheader1.thread.i

.lr.ph.us.i:                                      ; preds = %.lr.ph8.i, %._crit_edge.us.i
  %indvars.iv.i54 = phi i64 [ %indvars.iv.next.i56, %._crit_edge.us.i ], [ 0, %.lr.ph8.i ] ; 2 uses
  %.0695.us.i = phi ptr [ %.lcssa164, %._crit_edge.us.i ], [ %i.py, %.lr.ph8.i ] ; 2 uses
  %i.pz = mul nuw nsw i64 %indvars.iv.i54, %i.pn
  %gep.us.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.pz ; 2 uses
  br i1 %i.pr, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %.0673.us.i = phi ptr [ %i.qw, %.lr.ph.us.i.new ], [ %gep.us.i, %.lr.ph.us.i ] ; 6 uses
  %.1702.us.i = phi ptr [ %i.qx, %.lr.ph.us.i.new ], [ %.0695.us.i, %.lr.ph.us.i ] ; 9 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.qa = load float, ptr %.0673.us.i, align 4, !tbaa !39
  store float %i.qa, ptr %.1702.us.i, align 4, !tbaa !39
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i, i64 %i.pi
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !39
  %i.qd = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 4
  store float %i.qc, ptr %i.qd, align 4, !tbaa !39
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i, i64 %i.pk
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !39
  %i.qg = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 8
  store float %i.qf, ptr %i.qg, align 4, !tbaa !39
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i, i64 %i.pm
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !39
  %i.qj = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 12
  store float %i.qi, ptr %i.qj, align 4, !tbaa !39
  %i.qk = getelementptr inbounds nuw i8, ptr %.0673.us.i, i64 64 ; 4 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 16
  %i.qm = load float, ptr %i.qk, align 4, !tbaa !39
  store float %i.qm, ptr %i.ql, align 4, !tbaa !39
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %i.pi
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !39
  %i.qp = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 20
  store float %i.qo, ptr %i.qp, align 4, !tbaa !39
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %i.pk
  %i.qr = load float, ptr %i.qq, align 4, !tbaa !39
  %i.qs = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 24
  store float %i.qr, ptr %i.qs, align 4, !tbaa !39
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %i.pm
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !39
  %i.qv = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 28
  store float %i.qu, ptr %i.qv, align 4, !tbaa !39
  %i.qw = getelementptr inbounds nuw i8, ptr %.0673.us.i, i64 128 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.1702.us.i, i64 32 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !443

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.0673.us.i.epil.init = phi ptr [ %gep.us.i, %.lr.ph.us.i ], [ %i.qw, %._crit_edge.us.i.unr-lcssa ] ; 4 uses
  %.1702.us.i.epil.init = phi ptr [ %.0695.us.i, %.lr.ph.us.i ], [ %i.qx, %._crit_edge.us.i.unr-lcssa ] ; 5 uses
  call void @llvm.assume(i1 %lcmp.mod169)
  %i.qy = load float, ptr %.0673.us.i.epil.init, align 4, !tbaa !39
  store float %i.qy, ptr %.1702.us.i.epil.init, align 4, !tbaa !39
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i.epil.init, i64 %i.pi
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !39
  %i.rb = getelementptr inbounds nuw i8, ptr %.1702.us.i.epil.init, i64 4
  store float %i.ra, ptr %i.rb, align 4, !tbaa !39
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i.epil.init, i64 %i.pk
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !39
  %i.re = getelementptr inbounds nuw i8, ptr %.1702.us.i.epil.init, i64 8
  store float %i.rd, ptr %i.re, align 4, !tbaa !39
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %.0673.us.i.epil.init, i64 %i.pm
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !39
  %i.rh = getelementptr inbounds nuw i8, ptr %.1702.us.i.epil.init, i64 12
  store float %i.rg, ptr %i.rh, align 4, !tbaa !39
  %i.ri = getelementptr inbounds nuw i8, ptr %.1702.us.i.epil.init, i64 16
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %.lcssa164 = phi ptr [ %i.qx, %._crit_edge.us.i.unr-lcssa ], [ %i.ri, %.epil.preheader ] ; 2 uses
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i54, 4 ; 3 uses
  %i.rj = icmp slt i64 %indvars.iv.next.i56, %invariant.op.i
  br i1 %i.rj, label %.lr.ph.us.i, label %.preheader1.loopexit.i, !llvm.loop !444

.preheader1.loopexit.i:                           ; preds = %._crit_edge.us.i
  %i.rk = trunc nuw nsw i64 %indvars.iv.next.i56 to i32
  br label %.preheader1.i

.preheader1.i:                                    ; preds = %.preheader1.loopexit.i, %bb.e
  %.069.lcssa.i = phi ptr [ %i.py, %bb.e ], [ %.lcssa164, %.preheader1.loopexit.i ] ; 3 uses
  %.068.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.rk, %.preheader1.loopexit.i ] ; 4 uses
  %i.rl = or disjoint i32 %.068.lcssa.i, 1
  %i.rm = icmp slt i32 %i.rl, %.sroa.speculated82
  br i1 %i.rm, label %.lr.ph17.i, label %.preheader.i

.preheader1.thread.i:                             ; preds = %.lr.ph8.i
  br i1 %i.bc, label %.lr.ph17.split.preheader.i, label %.preheader.i

.lr.ph17.i:                                       ; preds = %.preheader1.i
  %invariant.gep20.i = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv54.i
  br i1 %i.ph, label %.lr.ph.us22.preheader.i, label %.lr.ph17.split.preheader.i

.lr.ph17.split.preheader.i:                       ; preds = %.lr.ph17.i, %.preheader1.thread.i
  %.069.lcssa6268.i = phi ptr [ %.069.lcssa.i, %.lr.ph17.i ], [ %i.py, %.preheader1.thread.i ]
  %.068.lcssa6367.i = phi i32 [ %.068.lcssa.i, %.lr.ph17.i ], [ %i.az, %.preheader1.thread.i ] ; 2 uses
  %i.rn = add i32 %.068.lcssa6367.i, 2
  %reass.sub = sub i32 %11, %.068.lcssa6367.i
  %i.ro = and i32 %reass.sub, -2
  %i.rp = add i32 %i.rn, %i.ro
  br label %.preheader.i

.lr.ph.us22.preheader.i:                          ; preds = %.lr.ph17.i
  %i.rq = sext i32 %.068.lcssa.i to i64
  br label %.lr.ph.us22.i

.lr.ph.us22.i:                                    ; preds = %._crit_edge.us23.i, %.lr.ph.us22.preheader.i
  %indvars.iv46.i = phi i64 [ %i.rq, %.lr.ph.us22.preheader.i ], [ %indvars.iv.next47.i, %._crit_edge.us23.i ] ; 2 uses
  %.27115.us.i = phi ptr [ %.069.lcssa.i, %.lr.ph.us22.preheader.i ], [ %.lcssa165, %._crit_edge.us23.i ] ; 2 uses
  %i.rr = mul nsw i64 %indvars.iv46.i, %i.pi
  %gep.us21.i = getelementptr [4 x i8], ptr %invariant.gep20.i, i64 %i.rr ; 2 uses
  br i1 %i.ps, label %.epil.preheader170, label %.lr.ph.us22.i.new

.lr.ph.us22.i.new:                                ; preds = %.lr.ph.us22.i, %.lr.ph.us22.i.new
  %.06513.us.i = phi ptr [ %i.so, %.lr.ph.us22.i.new ], [ %gep.us21.i, %.lr.ph.us22.i ] ; 6 uses
  %.312.us.i = phi ptr [ %i.sp, %.lr.ph.us22.i.new ], [ %.27115.us.i, %.lr.ph.us22.i ] ; 9 uses
  %niter176 = phi i32 [ %niter176.next.3, %.lr.ph.us22.i.new ], [ 0, %.lr.ph.us22.i ]
  %i.rs = load float, ptr %.06513.us.i, align 4, !tbaa !39
  store float %i.rs, ptr %.312.us.i, align 4, !tbaa !39
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %.06513.us.i, i64 %i.pi
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !39
  %i.rv = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 4
  store float %i.ru, ptr %i.rv, align 4, !tbaa !39
  %i.rw = getelementptr inbounds nuw i8, ptr %.06513.us.i, i64 64 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 8
  %i.ry = load float, ptr %i.rw, align 4, !tbaa !39
  store float %i.ry, ptr %i.rx, align 4, !tbaa !39
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.pi
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !39
  %i.sb = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 12
  store float %i.sa, ptr %i.sb, align 4, !tbaa !39
  %i.sc = getelementptr inbounds nuw i8, ptr %.06513.us.i, i64 128 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 16
  %i.se = load float, ptr %i.sc, align 4, !tbaa !39
  store float %i.se, ptr %i.sd, align 4, !tbaa !39
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %i.pi
  %i.sg = load float, ptr %i.sf, align 4, !tbaa !39
  %i.sh = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 20
  store float %i.sg, ptr %i.sh, align 4, !tbaa !39
  %i.si = getelementptr inbounds nuw i8, ptr %.06513.us.i, i64 192 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 24
  %i.sk = load float, ptr %i.si, align 4, !tbaa !39
  store float %i.sk, ptr %i.sj, align 4, !tbaa !39
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %i.pi
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !39
  %i.sn = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 28
  store float %i.sm, ptr %i.sn, align 4, !tbaa !39
  %i.so = getelementptr inbounds nuw i8, ptr %.06513.us.i, i64 256 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.312.us.i, i64 32 ; 3 uses
  %niter176.next.3 = add i32 %niter176, 4         ; 2 uses
  %niter176.ncmp.3 = icmp eq i32 %niter176.next.3, %unroll_iter175
  br i1 %niter176.ncmp.3, label %._crit_edge.us23.i.unr-lcssa, label %.lr.ph.us22.i.new, !llvm.loop !445

._crit_edge.us23.i.unr-lcssa:                     ; preds = %.lr.ph.us22.i.new
  br i1 %lcmp.mod172.not, label %._crit_edge.us23.i, label %.epil.preheader170

.epil.preheader170:                               ; preds = %._crit_edge.us23.i.unr-lcssa, %.lr.ph.us22.i
  %.06513.us.i.epil.init = phi ptr [ %gep.us21.i, %.lr.ph.us22.i ], [ %i.so, %._crit_edge.us23.i.unr-lcssa ]
  %.312.us.i.epil.init = phi ptr [ %.27115.us.i, %.lr.ph.us22.i ], [ %i.sp, %._crit_edge.us23.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod174)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader170
  %.06513.us.i.epil = phi ptr [ %.06513.us.i.epil.init, %.epil.preheader170 ], [ %i.su, %bb.f ] ; 3 uses
  %.312.us.i.epil = phi ptr [ %.312.us.i.epil.init, %.epil.preheader170 ], [ %i.sv, %bb.f ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader170 ], [ %epil.iter.next, %bb.f ]
  %i.sq = load float, ptr %.06513.us.i.epil, align 4, !tbaa !39
  store float %i.sq, ptr %.312.us.i.epil, align 4, !tbaa !39
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %.06513.us.i.epil, i64 %i.pi
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !39
  %i.st = getelementptr inbounds nuw i8, ptr %.312.us.i.epil, i64 4
  store float %i.ss, ptr %i.st, align 4, !tbaa !39
  %i.su = getelementptr inbounds nuw i8, ptr %.06513.us.i.epil, i64 64
  %i.sv = getelementptr inbounds nuw i8, ptr %.312.us.i.epil, i64 8 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter171
  br i1 %epil.iter.cmp.not, label %._crit_edge.us23.i, label %bb.f, !llvm.loop !499

._crit_edge.us23.i:                               ; preds = %bb.f, %._crit_edge.us23.i.unr-lcssa
  %.lcssa165 = phi ptr [ %i.sp, %._crit_edge.us23.i.unr-lcssa ], [ %i.sv, %bb.f ] ; 2 uses
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 2 ; 3 uses
  %i.sw = icmp slt i64 %indvars.iv.next47.i, %invariant.op71.i
  br i1 %i.sw, label %.lr.ph.us22.i, label %.preheader.loopexit.i, !llvm.loop !447

.preheader.loopexit.i:                            ; preds = %._crit_edge.us23.i
  %i.sx = trunc nsw i64 %indvars.iv.next47.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph17.split.preheader.i, %.preheader1.thread.i, %.preheader1.i
  %.271.lcssa.i = phi ptr [ %.069.lcssa.i, %.preheader1.i ], [ %.lcssa165, %.preheader.loopexit.i ], [ %.069.lcssa6268.i, %.lr.ph17.split.preheader.i ], [ %i.py, %.preheader1.thread.i ]
  %.1.lcssa.i = phi i32 [ %.068.lcssa.i, %.preheader1.i ], [ %i.sx, %.preheader.loopexit.i ], [ %i.rp, %.lr.ph17.split.preheader.i ], [ %i.az, %.preheader1.thread.i ] ; 2 uses
  %i.sy = icmp slt i32 %.1.lcssa.i, %.sroa.speculated82
  br i1 %i.sy, label %.lr.ph32.i, label %._crit_edge33.split.i

.lr.ph32.i:                                       ; preds = %.preheader.i
  %invariant.gep34.i = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv54.i ; 2 uses
  br i1 %i.ph, label %.lr.ph.preheader.i, label %._crit_edge33.split.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph32.i
  %i.sz = sext i32 %.1.lcssa.i to i64             ; 2 uses
  %i.ta = mul i64 %i.po, %i.sz
  %scevgep121 = getelementptr i8, ptr %invariant.gep34.i, i64 %i.ta
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i53, %.lr.ph.preheader.i
  %indvars.iv50.i = phi i64 [ %i.sz, %.lr.ph.preheader.i ], [ %indvars.iv.next51.i, %._crit_edge.i53 ] ; 2 uses
  %.430.i = phi ptr [ %.271.lcssa.i, %.lr.ph.preheader.i ], [ %.lcssa119, %._crit_edge.i53 ] ; 6 uses
  %i.tb = mul nsw i64 %indvars.iv50.i, %i.pi
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep34.i, i64 %i.tb ; 11 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %scevgep = getelementptr i8, ptr %.430.i, i64 4
  %scevgep120 = getelementptr i8, ptr %scevgep, i64 %i.cb
  %bound0 = icmp ult ptr %.430.i, %scevgep122
  %bound1 = icmp ult ptr %scevgep121, %scevgep120
  %found.conflict = and i1 %bound0, %bound1
  %i.tc = or i1 %found.conflict, %stride.check
  br i1 %i.tc, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.td = getelementptr i8, ptr %gep.i, i64 %i.pv
  %i.te = getelementptr i8, ptr %.430.i, i64 %i.pw ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.tf = shl i64 %index, 6                       ; 8 uses
  %next.gep = getelementptr i8, ptr %gep.i, i64 %i.tf
  %i.tg = getelementptr i8, ptr %gep.i, i64 %i.tf
  %next.gep123 = getelementptr i8, ptr %i.tg, i64 64
  %i.th = getelementptr i8, ptr %gep.i, i64 %i.tf
  %next.gep124 = getelementptr i8, ptr %i.th, i64 128
  %i.ti = getelementptr i8, ptr %gep.i, i64 %i.tf
  %next.gep125 = getelementptr i8, ptr %i.ti, i64 192
  %i.tj = getelementptr i8, ptr %gep.i, i64 %i.tf
  %next.gep126 = getelementptr i8, ptr %i.tj, i64 256
  %i.tk = getelementptr i8, ptr %gep.i, i64 %i.tf
  %next.gep127 = getelementptr i8, ptr %i.tk, i64 320
  %i.tl = getelementptr i8, ptr %gep.i, i64 %i.tf
  %next.gep128 = getelementptr i8, ptr %i.tl, i64 384
  %i.tm = getelementptr i8, ptr %gep.i, i64 %i.tf
  %next.gep129 = getelementptr i8, ptr %i.tm, i64 448
  %i.tn = shl i64 %index, 2
  %next.gep130 = getelementptr i8, ptr %.430.i, i64 %i.tn ; 2 uses
  %i.to = load float, ptr %next.gep, align 4, !tbaa !39, !alias.scope !500
  %i.tp = load float, ptr %next.gep123, align 4, !tbaa !39, !alias.scope !500
  %i.tq = load float, ptr %next.gep124, align 4, !tbaa !39, !alias.scope !500
  %i.tr = load float, ptr %next.gep125, align 4, !tbaa !39, !alias.scope !500
  %i.ts = insertelement <4 x float> poison, float %i.to, i64 0
  %i.tt = insertelement <4 x float> %i.ts, float %i.tp, i64 1
  %i.tu = insertelement <4 x float> %i.tt, float %i.tq, i64 2
  %i.tv = insertelement <4 x float> %i.tu, float %i.tr, i64 3
  %i.tw = load float, ptr %next.gep126, align 4, !tbaa !39, !alias.scope !500
  %i.tx = load float, ptr %next.gep127, align 4, !tbaa !39, !alias.scope !500
  %i.ty = load float, ptr %next.gep128, align 4, !tbaa !39, !alias.scope !500
  %i.tz = load float, ptr %next.gep129, align 4, !tbaa !39, !alias.scope !500
  %i.ua = insertelement <4 x float> poison, float %i.tw, i64 0
  %i.ub = insertelement <4 x float> %i.ua, float %i.tx, i64 1
  %i.uc = insertelement <4 x float> %i.ub, float %i.ty, i64 2
  %i.ud = insertelement <4 x float> %i.uc, float %i.tz, i64 3
  %i.ue = getelementptr i8, ptr %next.gep130, i64 16
  store <4 x float> %i.tv, ptr %next.gep130, align 4, !tbaa !39, !alias.scope !503, !noalias !500
  store <4 x float> %i.ud, ptr %i.ue, align 4, !tbaa !39, !alias.scope !503, !noalias !500
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.uf = icmp eq i64 %index.next, %n.vec
  br i1 %i.uf, label %middle.block, label %vector.body, !llvm.loop !505

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i53, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.029.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.pu, %middle.block ] ; 4 uses
  %.06328.i.ph = phi ptr [ %gep.i, %vector.memcheck ], [ %gep.i, %.lr.ph.i ], [ %i.td, %middle.block ] ; 2 uses
  %.527.i.ph = phi ptr [ %.430.i, %vector.memcheck ], [ %.430.i, %.lr.ph.i ], [ %i.te, %middle.block ] ; 2 uses
  %i.ug = sub i32 %.sroa.speculated, %.029.i.ph
  %xtraiter177 = and i32 %i.ug, 7                 ; 2 uses
  %lcmp.mod178.not = icmp eq i32 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.029.i.prol = phi i32 [ %i.uk, %scalar.ph.prol ], [ %.029.i.ph, %scalar.ph.preheader ]
  %.06328.i.prol = phi ptr [ %i.ui, %scalar.ph.prol ], [ %.06328.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.527.i.prol = phi ptr [ %i.uj, %scalar.ph.prol ], [ %.527.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.uh = load float, ptr %.06328.i.prol, align 4, !tbaa !39
  store float %i.uh, ptr %.527.i.prol, align 4, !tbaa !39
  %i.ui = getelementptr inbounds nuw i8, ptr %.06328.i.prol, i64 64 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %.527.i.prol, i64 4 ; 3 uses
  %i.uk = add nuw nsw i32 %.029.i.prol, 1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter177
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !506

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa166.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.uj, %scalar.ph.prol ]
  %.029.i.unr = phi i32 [ %.029.i.ph, %scalar.ph.preheader ], [ %i.uk, %scalar.ph.prol ]
  %.06328.i.unr = phi ptr [ %.06328.i.ph, %scalar.ph.preheader ], [ %i.ui, %scalar.ph.prol ]
  %.527.i.unr = phi ptr [ %.527.i.ph, %scalar.ph.preheader ], [ %i.uj, %scalar.ph.prol ]
  %i.ul = sub i32 %.029.i.ph, %.sroa.speculated
end_hunk_3
begin_hunk_4_@_ZN4ncnnL37conv3x3s1_winograd23_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a
  %i.vi = load float, ptr %i.vg, align 4, !tbaa !39
  store float %i.vi, ptr %i.vh, align 4, !tbaa !39
  %i.vj = getelementptr inbounds nuw i8, ptr %.06328.i, i64 512
  %i.vk = getelementptr inbounds nuw i8, ptr %.527.i, i64 32 ; 2 uses
  %i.vl = add nuw nsw i32 %.029.i, 8              ; 2 uses
  %exitcond49.not.i.7 = icmp eq i32 %i.vl, %.sroa.speculated
  br i1 %exitcond49.not.i.7, label %._crit_edge.i53, label %scalar.ph, !llvm.loop !507

._crit_edge.i53:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa119 = phi ptr [ %i.te, %middle.block ], [ %.lcssa166.unr, %scalar.ph.prol.loopexit ], [ %i.vk, %scalar.ph ]
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next51.i, %i.ba
  br i1 %exitcond53.not.i, label %._crit_edge33.split.i, label %.lr.ph.i, !llvm.loop !456

._crit_edge33.split.i:                            ; preds = %._crit_edge.i53, %.lr.ph32.i, %.preheader.i
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next55.i, 16
  br i1 %exitcond58.not.i, label %_ZN4ncnn3MatD2Ev.exit34, label %bb.e, !llvm.loop !457

_ZN4ncnn3MatD2Ev.exit34:                          ; preds = %._crit_edge33.split.i
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.bd ; 2 uses
  %i.vm = icmp slt i64 %indvars.iv.next, %i.be
  %indvar.next = add i32 %indvar, 1
  %indvar.next137 = add i64 %indvar136, 1
  br i1 %i.vm, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !508

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
  %i.vn = landingpad { ptr, i32 }
          catch ptr null
  %i.vo = extractvalue { ptr, i32 } %i.vn, 0
  call void @__clang_call_terminate(ptr %i.vo) #27
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
  %.not132 = icmp sgt i32 %i.k, %i.j
  br i1 %.not132, label %._crit_edge136, label %.lr.ph135

.lr.ph135:                                        ; preds = %bb.b
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

bb.c:                                             ; preds = %.lr.ph135, %_ZN4ncnn3MatD2Ev.exit
  %.045133 = phi i32 [ %i.k, %.lr.ph135 ], [ %i.bm, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.as = load i32, ptr %3, align 4, !tbaa !67
  %i.at = mul nsw i32 %i.as, %.045133             ; 4 uses
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
  %i.bm = add nsw i32 %.045133, 1
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.045133, %i.bn
  br i1 %.not.not, label %bb.c, label %._crit_edge136

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnnL42conv3x3s1_winograd43_transform_output_tileERKNS_3MatERS0_S2_iiii.exit
  %i.bo = phi i32 [ %.pre, %.lr.ph ], [ %i.auw, %_ZN4ncnnL42conv3x3s1_winograd43_transform_output_tileERKNS_3MatERS0_S2_iiii.exit ]
  %i.bp = phi i32 [ %i.bf, %.lr.ph ], [ %i.auy, %_ZN4ncnnL42conv3x3s1_winograd43_transform_output_tileERKNS_3MatERS0_S2_iiii.exit ]
  %.044131 = phi i32 [ 0, %.lr.ph ], [ %i.aux, %_ZN4ncnnL42conv3x3s1_winograd43_transform_output_tileERKNS_3MatERS0_S2_iiii.exit ] ; 6 uses
  %i.bq = sub nsw i32 %i.bp, %.044131
  %.sroa.speculated117 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.bq) ; 26 uses
  %i.br = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %bb.d
  %.pre137 = load i32, ptr %9, align 4, !tbaa !67
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
  %i.dw = fadd fast <4 x float> %i.dv, %i.du
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.co ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.co ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.co ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.co ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.co ; 2 uses
  %i.ec = load <4 x float>, ptr %i.dx, align 16, !tbaa !254 ; 2 uses
  %i.ed = load <4 x float>, ptr %i.dy, align 16, !tbaa !254 ; 2 uses
  %i.ee = load <4 x float>, ptr %i.dz, align 16, !tbaa !254 ; 2 uses
  %i.ef = load <4 x float>, ptr %i.ea, align 16, !tbaa !254 ; 2 uses
  %i.eg = load <4 x float>, ptr %i.eb, align 16, !tbaa !254
  %i.eh = fadd fast <4 x float> %i.ed, %i.ec      ; 2 uses
  %i.ei = fadd fast <4 x float> %i.ef, %i.ee      ; 2 uses
  %i.ej = fsub fast <4 x float> %i.ec, %i.ed      ; 2 uses
  %i.ek = fsub fast <4 x float> %i.ee, %i.ef      ; 2 uses
  %i.el = fmul fast <4 x float> %i.ej, splat (float f0x3F3504F3)
  %i.em = fmul fast <4 x float> %i.ek, splat (float f0x3FB504F3)
  %i.en = fadd fast <4 x float> %i.em, %i.el      ; 2 uses
  %i.eo = fmul fast <4 x float> %i.eh, splat (float 5.000000e-01)
  %i.ep = fmul fast <4 x float> %i.ei, splat (float 2.000000e+00)
  %i.eq = fadd fast <4 x float> %i.ep, %i.eo      ; 2 uses
  %i.er = fmul fast <4 x float> %i.ej, splat (float f0x3EB504F3)
  %i.es = fadd fast <4 x float> %i.er, %i.eg
  %i.et = fmul fast <4 x float> %i.ek, splat (float f0x403504F3)
  %i.eu = fadd fast <4 x float> %i.et, %i.es      ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.co ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.co ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.co ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.co ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.co ; 2 uses
  %i.fa = load <4 x float>, ptr %i.ev, align 16, !tbaa !254 ; 2 uses
  %i.fb = load <4 x float>, ptr %i.ew, align 16, !tbaa !254 ; 2 uses
  %i.fc = load <4 x float>, ptr %i.ex, align 16, !tbaa !254 ; 2 uses
  %i.fd = load <4 x float>, ptr %i.ey, align 16, !tbaa !254 ; 2 uses
  %i.fe = load <4 x float>, ptr %i.ez, align 16, !tbaa !254
  %i.ff = fadd fast <4 x float> %i.fb, %i.fa      ; 2 uses
  %i.fg = fadd fast <4 x float> %i.fd, %i.fc      ; 2 uses
  %i.fh = fsub fast <4 x float> %i.fa, %i.fb      ; 2 uses
  %i.fi = fsub fast <4 x float> %i.fc, %i.fd      ; 2 uses
  %i.fj = fmul fast <4 x float> %i.fh, splat (float f0x3F3504F3)
  %i.fk = fmul fast <4 x float> %i.fi, splat (float f0x3FB504F3)
  %i.fl = fadd fast <4 x float> %i.fk, %i.fj      ; 2 uses
  %i.fm = fmul fast <4 x float> %i.ff, splat (float 5.000000e-01)
  %i.fn = fmul fast <4 x float> %i.fg, splat (float 2.000000e+00)
  %i.fo = fadd fast <4 x float> %i.fn, %i.fm      ; 2 uses
  %i.fp = fmul fast <4 x float> %i.fh, splat (float f0x3EB504F3)
  %i.fq = fadd fast <4 x float> %i.fp, %i.fe
  %i.fr = fmul fast <4 x float> %i.fi, splat (float f0x403504F3)
  %i.fs = fadd fast <4 x float> %i.fr, %i.fq      ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.co ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.co ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.co ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.co ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.co ; 2 uses
  %i.fy = load <4 x float>, ptr %i.ft, align 16, !tbaa !254 ; 2 uses
  %i.fz = load <4 x float>, ptr %i.fu, align 16, !tbaa !254 ; 2 uses
  %i.ga = load <4 x float>, ptr %i.fv, align 16, !tbaa !254 ; 2 uses
  %i.gb = load <4 x float>, ptr %i.fw, align 16, !tbaa !254 ; 2 uses
  %i.gc = load <4 x float>, ptr %i.fx, align 16, !tbaa !254
  %i.gd = fadd fast <4 x float> %i.fz, %i.fy      ; 2 uses
  %i.ge = fadd fast <4 x float> %i.gb, %i.ga      ; 2 uses
  %i.gf = fsub fast <4 x float> %i.fy, %i.fz      ; 2 uses
  %i.gg = fsub fast <4 x float> %i.ga, %i.gb      ; 2 uses
  %i.gh = fmul fast <4 x float> %i.gf, splat (float f0x3F3504F3)
  %i.gi = fmul fast <4 x float> %i.gg, splat (float f0x3FB504F3)
  %i.gj = fadd fast <4 x float> %i.gi, %i.gh      ; 2 uses
  %i.gk = fmul fast <4 x float> %i.gd, splat (float 5.000000e-01)
  %i.gl = fmul fast <4 x float> %i.ge, splat (float 2.000000e+00)
  %i.gm = fadd fast <4 x float> %i.gl, %i.gk      ; 2 uses
  %i.gn = fmul fast <4 x float> %i.gf, splat (float f0x3EB504F3)
  %i.go = fadd fast <4 x float> %i.gn, %i.gc
  %i.gp = fmul fast <4 x float> %i.gg, splat (float f0x403504F3)
  %i.gq = fadd fast <4 x float> %i.gp, %i.go      ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.co ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.co ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.co ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.co ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.co ; 2 uses
  %i.gw = load <4 x float>, ptr %i.gr, align 16, !tbaa !254 ; 2 uses
  %i.gx = load <4 x float>, ptr %i.gs, align 16, !tbaa !254 ; 2 uses
  %i.gy = load <4 x float>, ptr %i.gt, align 16, !tbaa !254 ; 2 uses
  %i.gz = load <4 x float>, ptr %i.gu, align 16, !tbaa !254 ; 2 uses
  %i.ha = load <4 x float>, ptr %i.gv, align 16, !tbaa !254
  %i.hb = fadd fast <4 x float> %i.gx, %i.gw      ; 2 uses
  %i.hc = fadd fast <4 x float> %i.gz, %i.gy      ; 2 uses
  %i.hd = fsub fast <4 x float> %i.gw, %i.gx      ; 2 uses
  %i.he = fsub fast <4 x float> %i.gy, %i.gz      ; 2 uses
  %i.hf = fmul fast <4 x float> %i.hd, splat (float f0x3F3504F3)
  %i.hg = fmul fast <4 x float> %i.he, splat (float f0x3FB504F3)
  %i.hh = fadd fast <4 x float> %i.hg, %i.hf      ; 2 uses
  %i.hi = fmul fast <4 x float> %i.hb, splat (float 5.000000e-01)
end_hunk_10
begin_hunk_11_@_ZN4ncnnL20conv3x3s1_winograd43ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.4:bb.a
bb.an:                                            ; preds = %bb.am
  %.sroa.12.32.vec.extract.us.2.i = extractelement <4 x float> %i.od, i64 0
  %i.oq = getelementptr inbounds nuw i8, ptr %.1503.us.1.i, i64 8
  store float %.sroa.12.32.vec.extract.us.2.i, ptr %i.oq, align 4, !tbaa !39
  %.sroa.12.36.vec.extract.us.2.i = extractelement <4 x float> %i.od, i64 1
  %i.or = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  store float %.sroa.12.36.vec.extract.us.2.i, ptr %i.or, align 4, !tbaa !39
  %.sroa.12.40.vec.extract.us.2.i = extractelement <4 x float> %i.od, i64 2
  %i.os = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  store float %.sroa.12.40.vec.extract.us.2.i, ptr %i.os, align 4, !tbaa !39
  %.sroa.12.44.vec.extract.us.2.i = extractelement <4 x float> %i.od, i64 3
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  store float %.sroa.12.44.vec.extract.us.2.i, ptr %i.ot, align 4, !tbaa !39
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  br i1 %i.jn, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  %.sroa.1730.48.vec.extract.us.2.i = extractelement <4 x float> %i.oi, i64 0
  %i.ou = getelementptr inbounds nuw i8, ptr %.1503.us.1.i, i64 12
  store float %.sroa.1730.48.vec.extract.us.2.i, ptr %i.ou, align 4, !tbaa !39
  %.sroa.1730.52.vec.extract.us.2.i = extractelement <4 x float> %i.oi, i64 1
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oj, i64 12
  store float %.sroa.1730.52.vec.extract.us.2.i, ptr %i.ov, align 4, !tbaa !39
  %.sroa.1730.56.vec.extract.us.2.i = extractelement <4 x float> %i.oi, i64 2
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ok, i64 12
  store float %.sroa.1730.56.vec.extract.us.2.i, ptr %i.ow, align 4, !tbaa !39
  %.sroa.1730.60.vec.extract.us.2.i = extractelement <4 x float> %i.oi, i64 3
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ol, i64 12
  store float %.sroa.1730.60.vec.extract.us.2.i, ptr %i.ox, align 4, !tbaa !39
  br label %bb.aw

bb.aq:                                            ; preds = %bb.aj
  store <4 x float> %i.nv, ptr %.1503.us.1.i, align 16, !tbaa !254
  br i1 %i.jj, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.oy = getelementptr inbounds nuw i8, ptr %.1503.us.1.i, i64 16
  store <4 x float> %i.nz, ptr %i.oy, align 16, !tbaa !254
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  br i1 %i.jl, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.oz = getelementptr inbounds nuw i8, ptr %.1503.us.1.i, i64 32
  store <4 x float> %i.od, ptr %i.oz, align 16, !tbaa !254
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  br i1 %i.jn, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.pa = getelementptr inbounds nuw i8, ptr %.1503.us.1.i, i64 48
  store <4 x float> %i.oi, ptr %i.pa, align 16, !tbaa !254
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.ap, %bb.ao, %bb.aj
  %i.pb = getelementptr inbounds [4 x i8], ptr %.1503.us.1.i, i64 %i.cq
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ai
  %.1503.us.2.i = phi ptr [ %.1503.us.1.i, %bb.ai ], [ %i.pb, %bb.aw ] ; 11 uses
  %i.pc = or disjoint i32 %i.iz, 3
  %.not521.us.3.i = icmp slt i32 %i.pc, %i.bu
  br i1 %.not521.us.3.i, label %bb.ay, label %bb.bl

bb.ay:                                            ; preds = %bb.ax
  %i.pd = fadd fast <4 x float> %i.fs, %i.eu      ; 2 uses
  %i.pe = fadd fast <4 x float> %i.ho, %i.gq      ; 2 uses
  %i.pf = fsub fast <4 x float> %i.eu, %i.fs      ; 2 uses
  %i.pg = fsub fast <4 x float> %i.gq, %i.ho      ; 2 uses
  %i.ph = fadd fast <4 x float> %i.dw, %i.ct
  %i.pi = fadd fast <4 x float> %i.ph, %i.pd
  %i.pj = fadd fast <4 x float> %i.pi, %i.pe      ; 5 uses
  %i.pk = fmul fast <4 x float> %i.pf, splat (float f0x3F3504F3)
  %i.pl = fadd fast <4 x float> %i.ct, %i.pk
  %i.pm = fmul fast <4 x float> %i.pg, splat (float f0x3FB504F3)
  %i.pn = fadd fast <4 x float> %i.pm, %i.pl      ; 5 uses
  %i.po = fmul fast <4 x float> %i.pd, splat (float 5.000000e-01)
  %i.pp = fadd fast <4 x float> %i.ct, %i.po
  %i.pq = fmul fast <4 x float> %i.pe, splat (float 2.000000e+00)
  %i.pr = fadd fast <4 x float> %i.pq, %i.pp      ; 5 uses
  %i.ps = fadd fast <4 x float> %i.ct, %i.im
  %i.pt = fmul fast <4 x float> %i.pf, splat (float f0x3EB504F3)
  %i.pu = fadd fast <4 x float> %i.pt, %i.ps
  %i.pv = fmul fast <4 x float> %i.pg, splat (float f0x403504F3)
  %i.pw = fadd fast <4 x float> %i.pu, %i.pv      ; 5 uses
  switch i32 %i.bv, label %bb.bl [
    i32 4, label %bb.bf
    i32 1, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %.1503.us.2.i, i64 %i.by ; 4 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.1503.us.2.i, i64 %.idx.i ; 4 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.1503.us.2.i, i64 %.idx522.i ; 4 uses
  %.sroa.028.0.vec.extract.us.3.i = extractelement <4 x float> %i.pj, i64 0
  store float %.sroa.028.0.vec.extract.us.3.i, ptr %.1503.us.2.i, align 4, !tbaa !39
  %.sroa.028.4.vec.extract.us.3.i = extractelement <4 x float> %i.pj, i64 1
  store float %.sroa.028.4.vec.extract.us.3.i, ptr %i.px, align 4, !tbaa !39
  %.sroa.028.8.vec.extract.us.3.i = extractelement <4 x float> %i.pj, i64 2
  store float %.sroa.028.8.vec.extract.us.3.i, ptr %i.py, align 4, !tbaa !39
  %.sroa.028.12.vec.extract.us.3.i = extractelement <4 x float> %i.pj, i64 3
  store float %.sroa.028.12.vec.extract.us.3.i, ptr %i.pz, align 4, !tbaa !39
  br i1 %i.jj, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %.sroa.729.16.vec.extract.us.3.i = extractelement <4 x float> %i.pn, i64 0
  %i.qa = getelementptr inbounds nuw i8, ptr %.1503.us.2.i, i64 4
  store float %.sroa.729.16.vec.extract.us.3.i, ptr %i.qa, align 4, !tbaa !39
  %.sroa.729.20.vec.extract.us.3.i = extractelement <4 x float> %i.pn, i64 1
  %i.qb = getelementptr inbounds nuw i8, ptr %i.px, i64 4
  store float %.sroa.729.20.vec.extract.us.3.i, ptr %i.qb, align 4, !tbaa !39
  %.sroa.729.24.vec.extract.us.3.i = extractelement <4 x float> %i.pn, i64 2
  %i.qc = getelementptr inbounds nuw i8, ptr %i.py, i64 4
  store float %.sroa.729.24.vec.extract.us.3.i, ptr %i.qc, align 4, !tbaa !39
  %.sroa.729.28.vec.extract.us.3.i = extractelement <4 x float> %i.pn, i64 3
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pz, i64 4
  store float %.sroa.729.28.vec.extract.us.3.i, ptr %i.qd, align 4, !tbaa !39
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  br i1 %i.jl, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %.sroa.12.32.vec.extract.us.3.i = extractelement <4 x float> %i.pr, i64 0
  %i.qe = getelementptr inbounds nuw i8, ptr %.1503.us.2.i, i64 8
  store float %.sroa.12.32.vec.extract.us.3.i, ptr %i.qe, align 4, !tbaa !39
  %.sroa.12.36.vec.extract.us.3.i = extractelement <4 x float> %i.pr, i64 1
  %i.qf = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  store float %.sroa.12.36.vec.extract.us.3.i, ptr %i.qf, align 4, !tbaa !39
  %.sroa.12.40.vec.extract.us.3.i = extractelement <4 x float> %i.pr, i64 2
  %i.qg = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  store float %.sroa.12.40.vec.extract.us.3.i, ptr %i.qg, align 4, !tbaa !39
  %.sroa.12.44.vec.extract.us.3.i = extractelement <4 x float> %i.pr, i64 3
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  store float %.sroa.12.44.vec.extract.us.3.i, ptr %i.qh, align 4, !tbaa !39
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  br i1 %i.jn, label %bb.be, label %bb.bl

bb.be:                                            ; preds = %bb.bd
  %.sroa.1730.48.vec.extract.us.3.i = extractelement <4 x float> %i.pw, i64 0
  %i.qi = getelementptr inbounds nuw i8, ptr %.1503.us.2.i, i64 12
  store float %.sroa.1730.48.vec.extract.us.3.i, ptr %i.qi, align 4, !tbaa !39
  %.sroa.1730.52.vec.extract.us.3.i = extractelement <4 x float> %i.pw, i64 1
  %i.qj = getelementptr inbounds nuw i8, ptr %i.px, i64 12
  store float %.sroa.1730.52.vec.extract.us.3.i, ptr %i.qj, align 4, !tbaa !39
  %.sroa.1730.56.vec.extract.us.3.i = extractelement <4 x float> %i.pw, i64 2
  %i.qk = getelementptr inbounds nuw i8, ptr %i.py, i64 12
  store float %.sroa.1730.56.vec.extract.us.3.i, ptr %i.qk, align 4, !tbaa !39
  %.sroa.1730.60.vec.extract.us.3.i = extractelement <4 x float> %i.pw, i64 3
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pz, i64 12
  store float %.sroa.1730.60.vec.extract.us.3.i, ptr %i.ql, align 4, !tbaa !39
  br label %bb.bl

bb.bf:                                            ; preds = %bb.ay
  store <4 x float> %i.pj, ptr %.1503.us.2.i, align 16, !tbaa !254
  br i1 %i.jj, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.qm = getelementptr inbounds nuw i8, ptr %.1503.us.2.i, i64 16
  store <4 x float> %i.pn, ptr %i.qm, align 16, !tbaa !254
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  br i1 %i.jl, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.qn = getelementptr inbounds nuw i8, ptr %.1503.us.2.i, i64 32
  store <4 x float> %i.pr, ptr %i.qn, align 16, !tbaa !254
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  br i1 %i.jn, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.qo = getelementptr inbounds nuw i8, ptr %.1503.us.2.i, i64 48
  store <4 x float> %i.pw, ptr %i.qo, align 16, !tbaa !254
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.be, %bb.bd, %bb.ay, %bb.ax
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %_ZN4ncnn3MatD2Ev.exit524.us.i, !llvm.loop !882

._crit_edge.us.i:                                 ; preds = %bb.bl
  %indvars.iv.next166.i = add nuw nsw i64 %indvars.iv165.i, 4 ; 3 uses
  %i.qp = or disjoint i64 %indvars.iv.next166.i, 3
  %i.qq = icmp samesign ult i64 %i.qp, %i.bk
  br i1 %i.qq, label %.lr.ph100.split.us.i, label %.preheader86.loopexit.i, !llvm.loop !883

.preheader86.loopexit.i:                          ; preds = %._crit_edge.us.i
  %i.qr = trunc nuw nsw i64 %indvars.iv.next166.i to i32
  br label %.preheader86.i

.preheader86.i:                                   ; preds = %.lr.ph100.i, %.preheader86.loopexit.i, %._crit_edge
  %.0490.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.qr, %.preheader86.loopexit.i ], [ %i.bj, %.lr.ph100.i ] ; 5 uses
  %i.qs = or disjoint i32 %.0490.lcssa.i, 1
  %i.qt = icmp slt i32 %i.qs, %.sroa.speculated121
  br i1 %i.qt, label %.lr.ph118.i, label %.preheader.i

.lr.ph118.i:                                      ; preds = %.preheader86.i
  %.not518.i = icmp eq ptr %.val78, null
  %i.qu = icmp sgt i32 %.sroa.speculated117, 0
  %i.qv = shl nsw i32 %.sroa.speculated117, 1
  %i.qw = sext i32 %i.qv to i64
  %i.qx = shl nsw i32 %.sroa.speculated117, 2
  %i.qy = sext i32 %i.qx to i64
  %i.qz = mul nsw i32 %.sroa.speculated117, 6
  %i.ra = sext i32 %i.qz to i64
  %i.rb = shl nsw i32 %.sroa.speculated117, 3
  %i.rc = sext i32 %i.rb to i64
  %i.rd = mul nsw i32 %.sroa.speculated117, 10
  %i.re = sext i32 %i.rd to i64
  %i.rf = mul nsw i32 %.sroa.speculated117, 12
  %i.rg = sext i32 %i.rf to i64                   ; 30 uses
  %i.rh = sext i32 %i.bt to i64                   ; 3 uses
  br i1 %i.qu, label %.lr.ph118.split.us.i, label %.lr.ph118.split.i

.lr.ph118.split.us.i:                             ; preds = %.lr.ph118.i
  %i.ri = load i32, ptr %i.an, align 4, !tbaa !75, !noalias !884
  %i.rj = load ptr, ptr %12, align 8, !tbaa !18, !noalias !884
  %i.rk = load i64, ptr %i.aq, align 8, !tbaa !20, !noalias !884
  %i.rl = load i64, ptr %i.ar, align 8, !tbaa !65, !noalias !884 ; 2 uses
  %factor.op.mul.i = mul i64 %i.rl, %i.rk
  %i.rm = sext i32 %i.ri to i64
  %factor.op.mul114.us.i = mul i64 %i.rl, %i.rm
  %i.rn = sext i32 %.0490.lcssa.i to i64
  %wide.trip.count180.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge.us122.i, %.lr.ph118.split.us.i
  %indvars.iv182.i = phi i64 [ %indvars.iv.next183.i, %._crit_edge.us122.i ], [ %i.rn, %.lr.ph118.split.us.i ] ; 3 uses
  %.pre.i = add nsw i64 %indvars.iv182.i, %i.bi   ; 2 uses
  br i1 %.not518.i, label %.thread.us.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ro = getelementptr [4 x i8], ptr %.val78, i64 %.pre.i
  %i.rp = load <2 x float>, ptr %i.ro, align 4, !tbaa !39
  br label %.thread.us.i

.thread.us.i:                                     ; preds = %bb.bn, %bb.bm
  %i.rq = phi <2 x float> [ %i.rp, %bb.bn ], [ zeroinitializer, %bb.bm ] ; 10 uses
  %i.rr = trunc nsw i64 %indvars.iv182.i to i32
  %factor.op.mul.reass.us120.i = mul i32 %factor.op.mul97.i, %i.rr
  %i.rs = sext i32 %factor.op.mul.reass.us120.i to i64
  %i.rt = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.rs
  %.reass.i = mul i64 %factor.op.mul.i, %.pre.i
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rj, i64 %.reass.i
  %i.rv = extractelement <2 x float> %i.rq, i64 0 ; 8 uses
  %i.rw = extractelement <2 x float> %i.rq, i64 1 ; 8 uses
  br label %_ZN4ncnn3MatD2Ev.exit523.us.i

_ZN4ncnn3MatD2Ev.exit523.us.i:                    ; preds = %bb.cs, %.thread.us.i
  %indvars.iv177.i = phi i64 [ 0, %.thread.us.i ], [ %indvars.iv.next178.i, %bb.cs ] ; 3 uses
  %.idx233.i = shl nuw nsw i64 %indvars.iv177.i, 3
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rt, i64 %.idx233.i ; 7 uses
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %i.re ; 2 uses
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %i.rc ; 2 uses
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %i.ra ; 2 uses
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %i.qy ; 2 uses
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %i.qw ; 2 uses
  %i.sd = load <2 x float>, ptr %i.sc, align 4, !tbaa !39 ; 2 uses
  %i.se = load <2 x float>, ptr %i.sb, align 4, !tbaa !39 ; 2 uses
  %i.sf = fadd fast <2 x float> %i.se, %i.sd      ; 2 uses
  %i.sg = load <2 x float>, ptr %i.sa, align 4, !tbaa !39 ; 2 uses
  %i.sh = load <2 x float>, ptr %i.rz, align 4, !tbaa !39 ; 2 uses
  %i.si = fadd fast <2 x float> %i.sh, %i.sg      ; 2 uses
  %i.sj = fsub fast <2 x float> %i.sd, %i.se      ; 2 uses
  %i.sk = fsub fast <2 x float> %i.sg, %i.sh      ; 2 uses
  %i.sl = fmul fast <2 x float> %i.sj, splat (float f0x3F3504F3)
  %i.sm = fmul fast <2 x float> %i.sk, splat (float f0x3FB504F3)
  %i.sn = fadd fast <2 x float> %i.sm, %i.sl
  %i.so = fmul fast <2 x float> %i.sf, splat (float 5.000000e-01)
  %i.sp = fmul fast <2 x float> %i.si, splat (float 2.000000e+00)
  %i.sq = fadd fast <2 x float> %i.sp, %i.so
  %i.sr = load <2 x float>, ptr %i.ry, align 4, !tbaa !39
  %i.ss = fmul fast <2 x float> %i.sj, splat (float f0x3EB504F3)
  %i.st = fadd fast <2 x float> %i.ss, %i.sr
  %i.su = fmul fast <2 x float> %i.sk, splat (float f0x403504F3)
  %i.sv = fadd fast <2 x float> %i.st, %i.su
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %i.rg ; 2 uses
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.rg ; 2 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.sa, i64 %i.rg ; 2 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %i.rg ; 2 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %i.rg ; 2 uses
  %i.tb = load <2 x float>, ptr %i.sw, align 4, !tbaa !39 ; 2 uses
  %i.tc = load <2 x float>, ptr %i.sx, align 4, !tbaa !39 ; 2 uses
  %i.td = fadd fast <2 x float> %i.tc, %i.tb      ; 2 uses
  %i.te = load <2 x float>, ptr %i.sy, align 4, !tbaa !39 ; 2 uses
  %i.tf = load <2 x float>, ptr %i.sz, align 4, !tbaa !39 ; 2 uses
  %i.tg = fadd fast <2 x float> %i.tf, %i.te      ; 2 uses
  %i.th = fsub fast <2 x float> %i.tb, %i.tc      ; 2 uses
  %i.ti = fsub fast <2 x float> %i.te, %i.tf      ; 2 uses
  %i.tj = fmul fast <2 x float> %i.th, splat (float f0x3F3504F3)
  %i.tk = fmul fast <2 x float> %i.ti, splat (float f0x3FB504F3)
  %i.tl = fadd fast <2 x float> %i.tk, %i.tj      ; 2 uses
  %i.tm = fmul fast <2 x float> %i.td, splat (float 5.000000e-01)
  %i.tn = fmul fast <2 x float> %i.tg, splat (float 2.000000e+00)
  %i.to = fadd fast <2 x float> %i.tn, %i.tm      ; 2 uses
  %i.tp = load <2 x float>, ptr %i.ta, align 4, !tbaa !39
  %i.tq = fmul fast <2 x float> %i.th, splat (float f0x3EB504F3)
  %i.tr = fadd fast <2 x float> %i.tq, %i.tp
  %i.ts = fmul fast <2 x float> %i.ti, splat (float f0x403504F3)
  %i.tt = fadd fast <2 x float> %i.tr, %i.ts      ; 2 uses
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %i.rg ; 2 uses
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %i.rg ; 2 uses
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %i.rg ; 2 uses
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.sz, i64 %i.rg ; 2 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %i.rg ; 2 uses
  %i.tz = load <2 x float>, ptr %i.tu, align 4, !tbaa !39 ; 2 uses
  %i.ua = load <2 x float>, ptr %i.tv, align 4, !tbaa !39 ; 2 uses
  %i.ub = fadd fast <2 x float> %i.ua, %i.tz      ; 2 uses
  %i.uc = load <2 x float>, ptr %i.tw, align 4, !tbaa !39 ; 2 uses
  %i.ud = load <2 x float>, ptr %i.tx, align 4, !tbaa !39 ; 2 uses
  %i.ue = fadd fast <2 x float> %i.ud, %i.uc      ; 2 uses
  %i.uf = fsub fast <2 x float> %i.tz, %i.ua      ; 2 uses
  %i.ug = fsub fast <2 x float> %i.uc, %i.ud      ; 2 uses
  %i.uh = fmul fast <2 x float> %i.uf, splat (float f0x3F3504F3)
  %i.ui = fmul fast <2 x float> %i.ug, splat (float f0x3FB504F3)
  %i.uj = fadd fast <2 x float> %i.ui, %i.uh      ; 2 uses
  %i.uk = fmul fast <2 x float> %i.ub, splat (float 5.000000e-01)
  %i.ul = fmul fast <2 x float> %i.ue, splat (float 2.000000e+00)
  %i.um = fadd fast <2 x float> %i.ul, %i.uk      ; 2 uses
  %i.un = load <2 x float>, ptr %i.ty, align 4, !tbaa !39
  %i.uo = fmul fast <2 x float> %i.uf, splat (float f0x3EB504F3)
  %i.up = fadd fast <2 x float> %i.uo, %i.un
  %i.uq = fmul fast <2 x float> %i.ug, splat (float f0x403504F3)
  %i.ur = fadd fast <2 x float> %i.up, %i.uq      ; 2 uses
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.rg ; 2 uses
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %i.rg ; 2 uses
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.tw, i64 %i.rg ; 2 uses
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.rg ; 2 uses
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %i.rg ; 2 uses
  %i.ux = load <2 x float>, ptr %i.us, align 4, !tbaa !39 ; 2 uses
  %i.uy = load <2 x float>, ptr %i.ut, align 4, !tbaa !39 ; 2 uses
  %i.uz = fadd fast <2 x float> %i.uy, %i.ux      ; 2 uses
  %i.va = load <2 x float>, ptr %i.uu, align 4, !tbaa !39 ; 2 uses
  %i.vb = load <2 x float>, ptr %i.uv, align 4, !tbaa !39 ; 2 uses
  %i.vc = fadd fast <2 x float> %i.vb, %i.va      ; 2 uses
  %i.vd = fsub fast <2 x float> %i.ux, %i.uy      ; 2 uses
  %i.ve = fsub fast <2 x float> %i.va, %i.vb      ; 2 uses
  %i.vf = fmul fast <2 x float> %i.vd, splat (float f0x3F3504F3)
  %i.vg = fmul fast <2 x float> %i.ve, splat (float f0x3FB504F3)
  %i.vh = fadd fast <2 x float> %i.vg, %i.vf      ; 2 uses
  %i.vi = fmul fast <2 x float> %i.uz, splat (float 5.000000e-01)
  %i.vj = fmul fast <2 x float> %i.vc, splat (float 2.000000e+00)
  %i.vk = fadd fast <2 x float> %i.vj, %i.vi      ; 2 uses
  %i.vl = load <2 x float>, ptr %i.uw, align 4, !tbaa !39
  %i.vm = fmul fast <2 x float> %i.vd, splat (float f0x3EB504F3)
  %i.vn = fadd fast <2 x float> %i.vm, %i.vl
  %i.vo = fmul fast <2 x float> %i.ve, splat (float f0x403504F3)
  %i.vp = fadd fast <2 x float> %i.vn, %i.vo      ; 2 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %i.rg ; 2 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %i.rg ; 2 uses
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %i.rg ; 2 uses
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.uv, i64 %i.rg ; 2 uses
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %i.rg ; 2 uses
  %i.vv = load <2 x float>, ptr %i.vq, align 4, !tbaa !39 ; 2 uses
  %i.vw = load <2 x float>, ptr %i.vr, align 4, !tbaa !39 ; 2 uses
  %i.vx = fadd fast <2 x float> %i.vw, %i.vv      ; 2 uses
  %i.vy = load <2 x float>, ptr %i.vs, align 4, !tbaa !39 ; 2 uses
  %i.vz = load <2 x float>, ptr %i.vt, align 4, !tbaa !39 ; 2 uses
  %i.wa = fadd fast <2 x float> %i.vz, %i.vy      ; 2 uses
  %i.wb = fsub fast <2 x float> %i.vv, %i.vw      ; 2 uses
  %i.wc = fsub fast <2 x float> %i.vy, %i.vz      ; 2 uses
  %i.wd = fmul fast <2 x float> %i.wb, splat (float f0x3F3504F3)
  %i.we = fmul fast <2 x float> %i.wc, splat (float f0x3FB504F3)
  %i.wf = fadd fast <2 x float> %i.we, %i.wd      ; 2 uses
  %i.wg = fmul fast <2 x float> %i.vx, splat (float 5.000000e-01)
  %i.wh = fmul fast <2 x float> %i.wa, splat (float 2.000000e+00)
  %i.wi = fadd fast <2 x float> %i.wh, %i.wg      ; 2 uses
  %i.wj = load <2 x float>, ptr %i.vu, align 4, !tbaa !39
  %i.wk = fmul fast <2 x float> %i.wb, splat (float f0x3EB504F3)
  %i.wl = fadd fast <2 x float> %i.wk, %i.wj
  %i.wm = fmul fast <2 x float> %i.wc, splat (float f0x403504F3)
  %i.wn = fadd fast <2 x float> %i.wl, %i.wm      ; 2 uses
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.vq, i64 %i.rg
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.vr, i64 %i.rg
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %i.rg
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %i.rg
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.vu, i64 %i.rg
  %i.wt = load <2 x float>, ptr %i.wo, align 4, !tbaa !39 ; 2 uses
  %i.wu = load <2 x float>, ptr %i.wp, align 4, !tbaa !39 ; 2 uses
  %i.wv = fadd fast <2 x float> %i.wu, %i.wt      ; 2 uses
  %i.ww = load <2 x float>, ptr %i.wq, align 4, !tbaa !39 ; 2 uses
  %i.wx = load <2 x float>, ptr %i.wr, align 4, !tbaa !39 ; 2 uses
  %i.wy = fadd fast <2 x float> %i.wx, %i.ww      ; 2 uses
  %i.wz = fsub fast <2 x float> %i.wt, %i.wu      ; 2 uses
  %i.xa = fsub fast <2 x float> %i.ww, %i.wx      ; 2 uses
  %i.xb = fmul fast <2 x float> %i.wz, splat (float f0x3F3504F3)
  %i.xc = fmul fast <2 x float> %i.xa, splat (float f0x3FB504F3)
  %i.xd = fadd fast <2 x float> %i.xc, %i.xb      ; 2 uses
  %i.xe = fmul fast <2 x float> %i.wv, splat (float 5.000000e-01)
  %i.xf = fmul fast <2 x float> %i.wy, splat (float 2.000000e+00)
  %i.xg = fadd fast <2 x float> %i.xf, %i.xe      ; 2 uses
  %i.xh = load <2 x float>, ptr %i.ws, align 4, !tbaa !39
end_hunk_11
begin_hunk_12_@_ZN4ncnnL20conv3x3s1_winograd43ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.4:bb.a
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abw, i64 4
  %i.acg = extractelement <2 x float> %i.acc, i64 1
  store float %i.acg, ptr %i.acf, align 4, !tbaa !39
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  br i1 %i.xz, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ach = getelementptr inbounds nuw i8, ptr %.1489.us.i, i64 8
  store float %i.abf, ptr %i.ach, align 4, !tbaa !39
  %i.aci = getelementptr inbounds nuw i8, ptr %i.abw, i64 8
  store float %i.abj, ptr %i.aci, align 4, !tbaa !39
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  br i1 %i.yb, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.acj = getelementptr inbounds nuw i8, ptr %.1489.us.i, i64 12
  store float %i.abr, ptr %i.acj, align 4, !tbaa !39
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abw, i64 12
  store float %i.abv, ptr %i.ack, align 4, !tbaa !39
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.acl = getelementptr inbounds [4 x i8], ptr %.1489.us.i, i64 %i.rh
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bv
  %.1489.us.1.i = phi ptr [ %.1489.us.i, %bb.bv ], [ %i.acl, %bb.cc ] ; 7 uses
  %i.acm = or disjoint i32 %i.xq, 2
  %.not519.us.2.i = icmp slt i32 %i.acm, %i.bu
  br i1 %.not519.us.2.i, label %bb.ce, label %bb.cl

bb.ce:                                            ; preds = %bb.cd
  %.sroa.38.136.vec.extract = extractelement <2 x float> %i.xg, i64 0
  %.sroa.38.140.vec.extract = extractelement <2 x float> %i.xg, i64 1
  %i.acn = fsub fast <2 x float> %i.to, %i.um     ; 2 uses
  %i.aco = fsub fast <2 x float> %i.vk, %i.wi     ; 2 uses
  %i.acp = fadd fast <2 x float> %i.um, %i.to     ; 2 uses
  %i.acq = fadd fast <2 x float> %i.wi, %i.vk     ; 2 uses
  %i.acr = fadd fast <2 x float> %i.sq, %i.rq
  %i.acs = fadd fast <2 x float> %i.acr, %i.acp
  %i.act = fadd fast <2 x float> %i.acs, %i.acq   ; 2 uses
  %i.acu = shufflevector <2 x float> %i.acp, <2 x float> %i.acq, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.acv = fmul fast <4 x float> %i.acu, <float 5.000000e-01, float 2.000000e+00, float 5.000000e-01, float 2.000000e+00> ; 4 uses
  %i.acw = extractelement <4 x float> %i.acv, i64 0
  %i.acx = fadd fast float %i.rv, %i.acw
  %i.acy = extractelement <4 x float> %i.acv, i64 1
  %i.acz = fadd fast float %i.acy, %i.acx
  %i.ada = extractelement <4 x float> %i.acv, i64 2
  %i.adb = fadd fast float %i.rw, %i.ada
  %i.adc = extractelement <4 x float> %i.acv, i64 3
  %i.add = fadd fast float %i.adc, %i.adb
  %i.ade = fadd fast float %i.rv, %.sroa.38.136.vec.extract
  %i.adf = fadd fast float %i.rw, %.sroa.38.140.vec.extract
  %i.adg = shufflevector <2 x float> %i.acn, <2 x float> %i.aco, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.adh = fmul fast <4 x float> %i.adg, <float f0x3EB504F3, float f0x403504F3, float f0x3EB504F3, float f0x403504F3> ; 4 uses
  %i.adi = extractelement <4 x float> %i.adh, i64 0
  %i.adj = fadd fast float %i.adi, %i.ade
  %i.adk = extractelement <4 x float> %i.adh, i64 1
  %i.adl = fadd fast float %i.adj, %i.adk
  %i.adm = extractelement <4 x float> %i.adh, i64 2
  %i.adn = fadd fast float %i.adm, %i.adf
  %i.ado = extractelement <4 x float> %i.adh, i64 3
  %i.adp = fadd fast float %i.adn, %i.ado
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %.1489.us.1.i, i64 %i.by ; 4 uses
  %i.adr = extractelement <2 x float> %i.act, i64 0
  store float %i.adr, ptr %.1489.us.1.i, align 4, !tbaa !39
  %i.ads = extractelement <2 x float> %i.act, i64 1
  store float %i.ads, ptr %i.adq, align 4, !tbaa !39
  br i1 %i.xx, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.adt = fmul fast <2 x float> %i.acn, splat (float f0x3F3504F3)
  %i.adu = fmul fast <2 x float> %i.aco, splat (float f0x3FB504F3)
  %i.adv = fadd fast <2 x float> %i.rq, %i.adt
  %i.adw = fadd fast <2 x float> %i.adu, %i.adv   ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %.1489.us.1.i, i64 4
  %i.ady = extractelement <2 x float> %i.adw, i64 0
  store float %i.ady, ptr %i.adx, align 4, !tbaa !39
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adq, i64 4
  %i.aea = extractelement <2 x float> %i.adw, i64 1
  store float %i.aea, ptr %i.adz, align 4, !tbaa !39
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  br i1 %i.xz, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.aeb = getelementptr inbounds nuw i8, ptr %.1489.us.1.i, i64 8
  store float %i.acz, ptr %i.aeb, align 4, !tbaa !39
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adq, i64 8
  store float %i.add, ptr %i.aec, align 4, !tbaa !39
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  br i1 %i.yb, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.aed = getelementptr inbounds nuw i8, ptr %.1489.us.1.i, i64 12
  store float %i.adl, ptr %i.aed, align 4, !tbaa !39
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adq, i64 12
  store float %i.adp, ptr %i.aee, align 4, !tbaa !39
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.aef = getelementptr inbounds [4 x i8], ptr %.1489.us.1.i, i64 %i.rh
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cd
  %.1489.us.2.i = phi ptr [ %.1489.us.1.i, %bb.cd ], [ %i.aef, %bb.ck ] ; 5 uses
  %i.aeg = or disjoint i32 %i.xq, 3
  %.not519.us.3.i = icmp slt i32 %i.aeg, %i.bu
  br i1 %.not519.us.3.i, label %bb.cm, label %bb.cs

bb.cm:                                            ; preds = %bb.cl
  %.sroa.51.184.vec.extract = extractelement <2 x float> %i.xl, i64 0
  %.sroa.51.188.vec.extract = extractelement <2 x float> %i.xl, i64 1
  %i.aeh = fsub fast <2 x float> %i.tt, %i.ur     ; 2 uses
  %i.aei = fsub fast <2 x float> %i.vp, %i.wn     ; 2 uses
  %i.aej = fadd fast <2 x float> %i.ur, %i.tt     ; 2 uses
  %i.aek = fadd fast <2 x float> %i.wn, %i.vp     ; 2 uses
  %i.ael = fadd fast <2 x float> %i.sv, %i.rq
  %i.aem = fadd fast <2 x float> %i.ael, %i.aej
  %i.aen = fadd fast <2 x float> %i.aem, %i.aek   ; 2 uses
  %i.aeo = shufflevector <2 x float> %i.aej, <2 x float> %i.aek, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.aep = fmul fast <4 x float> %i.aeo, <float 5.000000e-01, float 2.000000e+00, float 5.000000e-01, float 2.000000e+00> ; 4 uses
  %i.aeq = extractelement <4 x float> %i.aep, i64 0
  %i.aer = fadd fast float %i.rv, %i.aeq
  %i.aes = extractelement <4 x float> %i.aep, i64 1
  %i.aet = fadd fast float %i.aes, %i.aer
  %i.aeu = extractelement <4 x float> %i.aep, i64 2
  %i.aev = fadd fast float %i.rw, %i.aeu
  %i.aew = extractelement <4 x float> %i.aep, i64 3
  %i.aex = fadd fast float %i.aew, %i.aev
  %i.aey = fadd fast float %i.rv, %.sroa.51.184.vec.extract
  %i.aez = fadd fast float %i.rw, %.sroa.51.188.vec.extract
  %i.afa = shufflevector <2 x float> %i.aeh, <2 x float> %i.aei, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.afb = fmul fast <4 x float> %i.afa, <float f0x3EB504F3, float f0x403504F3, float f0x3EB504F3, float f0x403504F3> ; 4 uses
  %i.afc = extractelement <4 x float> %i.afb, i64 0
  %i.afd = fadd fast float %i.afc, %i.aey
  %i.afe = extractelement <4 x float> %i.afb, i64 1
  %i.aff = fadd fast float %i.afd, %i.afe
  %i.afg = extractelement <4 x float> %i.afb, i64 2
  %i.afh = fadd fast float %i.afg, %i.aez
  %i.afi = extractelement <4 x float> %i.afb, i64 3
  %i.afj = fadd fast float %i.afh, %i.afi
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %.1489.us.2.i, i64 %i.by ; 4 uses
  %i.afl = extractelement <2 x float> %i.aen, i64 0
  store float %i.afl, ptr %.1489.us.2.i, align 4, !tbaa !39
  %i.afm = extractelement <2 x float> %i.aen, i64 1
  store float %i.afm, ptr %i.afk, align 4, !tbaa !39
  br i1 %i.xx, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.afn = fmul fast <2 x float> %i.aeh, splat (float f0x3F3504F3)
  %i.afo = fmul fast <2 x float> %i.aei, splat (float f0x3FB504F3)
  %i.afp = fadd fast <2 x float> %i.rq, %i.afn
  %i.afq = fadd fast <2 x float> %i.afo, %i.afp   ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %.1489.us.2.i, i64 4
  %i.afs = extractelement <2 x float> %i.afq, i64 0
  store float %i.afs, ptr %i.afr, align 4, !tbaa !39
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afk, i64 4
  %i.afu = extractelement <2 x float> %i.afq, i64 1
  store float %i.afu, ptr %i.aft, align 4, !tbaa !39
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  br i1 %i.xz, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.afv = getelementptr inbounds nuw i8, ptr %.1489.us.2.i, i64 8
  store float %i.aet, ptr %i.afv, align 4, !tbaa !39
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afk, i64 8
  store float %i.aex, ptr %i.afw, align 4, !tbaa !39
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  br i1 %i.yb, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.afx = getelementptr inbounds nuw i8, ptr %.1489.us.2.i, i64 12
  store float %i.aff, ptr %i.afx, align 4, !tbaa !39
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afk, i64 12
  store float %i.afj, ptr %i.afy, align 4, !tbaa !39
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %bb.cl
  %indvars.iv.next178.i = add nuw nsw i64 %indvars.iv177.i, 1 ; 2 uses
  %exitcond181.not.i = icmp eq i64 %indvars.iv.next178.i, %wide.trip.count180.i
  br i1 %exitcond181.not.i, label %._crit_edge.us122.i, label %_ZN4ncnn3MatD2Ev.exit523.us.i, !llvm.loop !887

._crit_edge.us122.i:                              ; preds = %bb.cs
  %indvars.iv.next183.i = add nuw nsw i64 %indvars.iv182.i, 2 ; 3 uses
  %i.afz = icmp slt i64 %indvars.iv.next183.i, %invariant.op.i
  br i1 %i.afz, label %bb.bm, label %.preheader.loopexit.i, !llvm.loop !888

.lr.ph118.split.i:                                ; preds = %.lr.ph118.i
  %17 = sub i32 %16, %.0490.lcssa.i
  %18 = and i32 %17, -2
  %19 = add i32 %.0490.lcssa.i, 2
  %i.aga = add i32 %19, %18
  br label %.preheader.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.us122.i
  %i.agb = trunc nsw i64 %indvars.iv.next183.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph118.split.i, %.preheader86.i
  %.1491.lcssa.i = phi i32 [ %.0490.lcssa.i, %.preheader86.i ], [ %i.aga, %.lr.ph118.split.i ], [ %i.agb, %.preheader.loopexit.i ] ; 2 uses
  %i.agc = icmp slt i32 %.1491.lcssa.i, %.sroa.speculated121
  br i1 %i.agc, label %.lr.ph144.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_output_tileERKNS_3MatERS0_S2_iiii.exit

.lr.ph144.i:                                      ; preds = %.preheader.i
  %.not.i80 = icmp eq ptr %.val78, null
  %i.agd = icmp sgt i32 %.sroa.speculated117, 0
  %i.age = sext i32 %.sroa.speculated117 to i64
  %i.agf = shl nsw i32 %.sroa.speculated117, 1
  %i.agg = sext i32 %i.agf to i64
  %i.agh = mul nsw i32 %.sroa.speculated117, 3
  %i.agi = sext i32 %i.agh to i64
  %i.agj = shl nsw i32 %.sroa.speculated117, 2
  %i.agk = sext i32 %i.agj to i64
  %i.agl = mul nsw i32 %.sroa.speculated117, 5
  %i.agm = sext i32 %i.agl to i64
  %i.agn = mul nsw i32 %.sroa.speculated117, 6
  %i.ago = sext i32 %i.agn to i64                 ; 30 uses
  %i.agp = sext i32 %i.bt to i64                  ; 3 uses
  br i1 %i.agd, label %.lr.ph144.split.us.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_output_tileERKNS_3MatERS0_S2_iiii.exit

.lr.ph144.split.us.i:                             ; preds = %.lr.ph144.i
  %i.agq = load i32, ptr %i.an, align 4, !tbaa !75, !noalias !889
  %i.agr = load ptr, ptr %12, align 8, !tbaa !18, !noalias !889
  %i.ags = load i64, ptr %i.aq, align 8, !tbaa !20, !noalias !889
  %i.agt = load i64, ptr %i.ar, align 8, !tbaa !65, !noalias !889 ; 2 uses
  %factor.op.mul149.i = mul i64 %i.agt, %i.ags
  %i.agu = sext i32 %i.agq to i64
  %factor.op.mul140.us.i = mul i64 %i.agt, %i.agu
  %i.agv = sext i32 %.1491.lcssa.i to i64
  %wide.trip.count196.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %bb.ct

bb.ct:                                            ; preds = %._crit_edge.us147.i, %.lr.ph144.split.us.i
  %indvars.iv198.i = phi i64 [ %indvars.iv.next199.i, %._crit_edge.us147.i ], [ %i.agv, %.lr.ph144.split.us.i ] ; 3 uses
  %.pre227.i = add nsw i64 %indvars.iv198.i, %i.bi ; 2 uses
  br i1 %.not.i80, label %.lr.ph.us146.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.agw = getelementptr inbounds [4 x i8], ptr %.val78, i64 %.pre227.i
  %i.agx = load float, ptr %i.agw, align 4, !tbaa !39
  br label %.lr.ph.us146.i

.lr.ph.us146.i:                                   ; preds = %bb.cu, %bb.ct
  %i.agy = phi fast float [ %i.agx, %bb.cu ], [ 0.000000e+00, %bb.ct ] ; 16 uses
  %i.agz = trunc nsw i64 %indvars.iv198.i to i32
  %factor.op.mul137.reass.us.i = mul i32 %factor.op.mul97.i, %i.agz
  %i.aha = sext i32 %factor.op.mul137.reass.us.i to i64
  %i.ahb = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.aha
  %.reass150.i = mul i64 %factor.op.mul149.i, %.pre227.i
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agr, i64 %.reass150.i
  %i.ahd = insertelement <4 x float> poison, float %i.agy, i64 2
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %bb.dz, %.lr.ph.us146.i
  %indvars.iv193.i = phi i64 [ 0, %.lr.ph.us146.i ], [ %indvars.iv.next194.i, %bb.dz ] ; 3 uses
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %i.ahb, i64 %indvars.iv193.i ; 7 uses
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %i.ahe, i64 %i.age ; 2 uses
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.ahe, i64 %i.agg ; 2 uses
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.ahe, i64 %i.agi ; 2 uses
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.ahe, i64 %i.agk ; 2 uses
  %i.ahj = getelementptr inbounds nuw [4 x i8], ptr %i.ahe, i64 %i.agm ; 2 uses
  %i.ahk = load float, ptr %i.ahf, align 4, !tbaa !39 ; 2 uses
  %i.ahl = load float, ptr %i.ahg, align 4, !tbaa !39 ; 2 uses
  %i.ahm = fadd fast float %i.ahl, %i.ahk         ; 2 uses
  %i.ahn = load float, ptr %i.ahh, align 4, !tbaa !39 ; 2 uses
  %i.aho = load float, ptr %i.ahi, align 4, !tbaa !39 ; 2 uses
  %i.ahp = fadd fast float %i.aho, %i.ahn         ; 2 uses
  %i.ahq = fsub fast float %i.ahk, %i.ahl         ; 2 uses
  %i.ahr = fsub fast float %i.ahn, %i.aho         ; 2 uses
  %i.ahs = fmul fast float %i.ahq, f0x3F3504F3
  %i.aht = fmul fast float %i.ahr, f0x3FB504F3
  %i.ahu = fmul fast float %i.ahm, 5.000000e-01
  %i.ahv = fmul fast float %i.ahp, 2.000000e+00
  %i.ahw = load float, ptr %i.ahj, align 4, !tbaa !39
  %i.ahx = insertelement <4 x float> %i.ahd, float %i.ahq, i64 0
  %i.ahy = insertelement <4 x float> %i.ahx, float %i.ahr, i64 1
  %i.ahz = insertelement <4 x float> %i.ahy, float %i.ahw, i64 3
  %i.aia = fmul reassoc nsz arcp contract afn <4 x float> %i.ahz, <float f0x3EB504F3, float f0x403504F3, float 1.000000e+00, float 1.000000e+00>
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %i.ago ; 2 uses
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %i.ago ; 2 uses
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %i.ago ; 2 uses
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.ahi, i64 %i.ago ; 2 uses
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.ahj, i64 %i.ago ; 2 uses
  %i.aig = load float, ptr %i.aib, align 4, !tbaa !39 ; 2 uses
  %i.aih = load float, ptr %i.aic, align 4, !tbaa !39 ; 2 uses
  %i.aii = load float, ptr %i.aid, align 4, !tbaa !39 ; 2 uses
  %i.aij = load float, ptr %i.aie, align 4, !tbaa !39 ; 2 uses
  %i.aik = load float, ptr %i.aif, align 4, !tbaa !39
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %i.aib, i64 %i.ago ; 2 uses
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.aic, i64 %i.ago ; 2 uses
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %i.ago ; 2 uses
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %i.aie, i64 %i.ago ; 2 uses
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %i.aif, i64 %i.ago ; 2 uses
  %i.aiq = load float, ptr %i.ail, align 4, !tbaa !39 ; 2 uses
  %i.air = load float, ptr %i.aim, align 4, !tbaa !39 ; 2 uses
  %i.ais = load float, ptr %i.ain, align 4, !tbaa !39 ; 2 uses
  %i.ait = load float, ptr %i.aio, align 4, !tbaa !39 ; 2 uses
  %i.aiu = load float, ptr %i.aip, align 4, !tbaa !39
  %i.aiv = getelementptr inbounds nuw [4 x i8], ptr %i.ail, i64 %i.ago ; 2 uses
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %i.aim, i64 %i.ago ; 2 uses
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.ain, i64 %i.ago ; 2 uses
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %i.aio, i64 %i.ago ; 2 uses
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %i.aip, i64 %i.ago ; 2 uses
  %i.aja = load float, ptr %i.aiv, align 4, !tbaa !39 ; 2 uses
  %i.ajb = load float, ptr %i.aiw, align 4, !tbaa !39 ; 2 uses
  %i.ajc = load float, ptr %i.aix, align 4, !tbaa !39 ; 2 uses
  %i.ajd = load float, ptr %i.aiy, align 4, !tbaa !39 ; 2 uses
  %i.aje = load float, ptr %i.aiz, align 4, !tbaa !39
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.aiv, i64 %i.ago ; 2 uses
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %i.aiw, i64 %i.ago ; 2 uses
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %i.aix, i64 %i.ago ; 2 uses
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %i.aiy, i64 %i.ago ; 2 uses
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.aiz, i64 %i.ago ; 2 uses
  %i.ajk = load float, ptr %i.ajf, align 4, !tbaa !39 ; 2 uses
  %i.ajl = load float, ptr %i.ajg, align 4, !tbaa !39 ; 2 uses
  %i.ajm = load float, ptr %i.ajh, align 4, !tbaa !39 ; 2 uses
  %i.ajn = load float, ptr %i.aji, align 4, !tbaa !39 ; 2 uses
  %i.ajo = insertelement <4 x float> poison, float %i.air, i64 0
  %i.ajp = insertelement <4 x float> %i.ajo, float %i.ajl, i64 1
  %i.ajq = insertelement <4 x float> %i.ajp, float %i.aih, i64 2
  %i.ajr = insertelement <4 x float> %i.ajq, float %i.ajb, i64 3
  %i.ajs = insertelement <4 x float> poison, float %i.aiq, i64 0
  %i.ajt = insertelement <4 x float> %i.ajs, float %i.ajk, i64 1
  %i.aju = insertelement <4 x float> %i.ajt, float %i.aig, i64 2
  %i.ajv = insertelement <4 x float> %i.aju, float %i.aja, i64 3
  %i.ajw = fadd fast <4 x float> %i.ajr, %i.ajv   ; 3 uses
  %i.ajx = insertelement <4 x float> poison, float %i.ait, i64 0
  %i.ajy = insertelement <4 x float> %i.ajx, float %i.ajn, i64 1
  %i.ajz = insertelement <4 x float> %i.ajy, float %i.aij, i64 2
  %i.aka = insertelement <4 x float> %i.ajz, float %i.ajd, i64 3
  %i.akb = insertelement <4 x float> poison, float %i.ais, i64 0
  %i.akc = insertelement <4 x float> %i.akb, float %i.ajm, i64 1
  %i.akd = insertelement <4 x float> %i.akc, float %i.aii, i64 2
  %i.ake = insertelement <4 x float> %i.akd, float %i.ajc, i64 3
  %i.akf = fadd fast <4 x float> %i.aka, %i.ake   ; 3 uses
  %i.akg = fmul fast <4 x float> %i.ajw, splat (float 5.000000e-01)
  %i.akh = fmul fast <4 x float> %i.akf, splat (float 2.000000e+00)
  %i.aki = fadd fast <4 x float> %i.akh, %i.akg   ; 3 uses
  %i.akj = load float, ptr %i.ajj, align 4, !tbaa !39
  %i.akk = insertelement <4 x float> poison, float %i.ajk, i64 0
  %i.akl = insertelement <4 x float> %i.akk, float %i.aja, i64 1
  %i.akm = insertelement <4 x float> %i.akl, float %i.aiq, i64 2
  %i.akn = insertelement <4 x float> %i.akm, float %i.aig, i64 3
  %i.ako = insertelement <4 x float> poison, float %i.ajl, i64 0
  %i.akp = insertelement <4 x float> %i.ako, float %i.ajb, i64 1
  %i.akq = insertelement <4 x float> %i.akp, float %i.air, i64 2
  %i.akr = insertelement <4 x float> %i.akq, float %i.aih, i64 3
  %i.aks = fsub fast <4 x float> %i.akn, %i.akr   ; 3 uses
  %i.akt = insertelement <4 x float> poison, float %i.ajm, i64 0
  %i.aku = insertelement <4 x float> %i.akt, float %i.ajc, i64 1
  %i.akv = insertelement <4 x float> %i.aku, float %i.ais, i64 2
  %i.akw = insertelement <4 x float> %i.akv, float %i.aii, i64 3
  %i.akx = insertelement <4 x float> poison, float %i.ajn, i64 0
  %i.aky = insertelement <4 x float> %i.akx, float %i.ajd, i64 1
  %i.akz = insertelement <4 x float> %i.aky, float %i.ait, i64 2
  %i.ala = insertelement <4 x float> %i.akz, float %i.aij, i64 3
  %i.alb = fsub fast <4 x float> %i.akw, %i.ala   ; 3 uses
  %i.alc = fmul fast <4 x float> %i.aks, splat (float f0x3EB504F3)
  %i.ald = insertelement <4 x float> poison, float %i.akj, i64 0
  %i.ale = insertelement <4 x float> %i.ald, float %i.aje, i64 1
  %i.alf = insertelement <4 x float> %i.ale, float %i.aiu, i64 2
  %i.alg = insertelement <4 x float> %i.alf, float %i.aik, i64 3
  %i.alh = fadd fast <4 x float> %i.alc, %i.alg
  %i.ali = fmul fast <4 x float> %i.alb, splat (float f0x403504F3)
  %i.alj = shufflevector <4 x float> %i.aks, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.alk = fmul fast <2 x float> %i.alj, splat (float f0x3F3504F3)
  %i.all = shufflevector <4 x float> %i.alb, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.alm = fmul fast <2 x float> %i.all, splat (float f0x3FB504F3)
  %i.aln = shufflevector <4 x float> %i.aks, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.alo = fmul fast <2 x float> %i.aln, splat (float f0x3F3504F3)
  %i.alp = shufflevector <4 x float> %i.alb, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.alq = fmul fast <2 x float> %i.alp, splat (float f0x3FB504F3)
  %i.alr = fadd fast <2 x float> %i.alm, %i.alk   ; 2 uses
  %i.als = fadd fast <2 x float> %i.alq, %i.alo   ; 2 uses
  %i.alt = fadd fast <4 x float> %i.alh, %i.ali   ; 3 uses
  %i.alu = getelementptr inbounds nuw [4 x i8], ptr %i.ajf, i64 %i.ago
  %i.alv = getelementptr inbounds nuw [4 x i8], ptr %i.ajg, i64 %i.ago
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr %i.ajh, i64 %i.ago
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %i.aji, i64 %i.ago
  %i.aly = getelementptr inbounds nuw [4 x i8], ptr %i.ajj, i64 %i.ago
  %i.alz = load float, ptr %i.alu, align 4, !tbaa !39 ; 2 uses
  %i.ama = load float, ptr %i.alv, align 4, !tbaa !39 ; 2 uses
  %i.amb = fadd fast float %i.ama, %i.alz         ; 2 uses
  %i.amc = load float, ptr %i.alw, align 4, !tbaa !39 ; 2 uses
  %i.amd = load float, ptr %i.alx, align 4, !tbaa !39 ; 2 uses
  %i.ame = fadd fast float %i.amd, %i.amc         ; 2 uses
  %i.amf = fsub fast float %i.alz, %i.ama         ; 2 uses
  %i.amg = fsub fast float %i.amc, %i.amd         ; 2 uses
  %i.amh = fmul fast float %i.amf, f0x3F3504F3
  %i.ami = fmul fast float %i.amg, f0x3FB504F3
  %i.amj = fadd fast float %i.amh, %i.ami
  %i.amk = fmul fast float %i.amb, 5.000000e-01
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
  %i.cg = phi i32 [ %.pre, %.lr.ph ], [ %i.aax, %_ZN4ncnnL42conv3x3s1_winograd63_transform_output_tileERKNS_3MatERS0_S2_iiii.exit ]
  %i.ch = phi i32 [ %i.bx, %.lr.ph ], [ %i.aaz, %_ZN4ncnnL42conv3x3s1_winograd63_transform_output_tileERKNS_3MatERS0_S2_iiii.exit ]
  %.044131 = phi i32 [ 0, %.lr.ph ], [ %i.aay, %_ZN4ncnnL42conv3x3s1_winograd63_transform_output_tileERKNS_3MatERS0_S2_iiii.exit ] ; 6 uses
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
  %i.io = fadd fast <4 x float> %i.im, %i.in
  %i.ip = fadd fast <4 x float> %i.io, %i.dq      ; 5 uses
  %i.iq = fmul fast <4 x float> %i.ic, splat (float 4.000000e+00)
  %i.ir = fadd fast <4 x float> %i.ia, %i.iq
  %i.is = fmul fast <4 x float> %i.ie, splat (float 8.000000e+00)
  %i.it = fadd fast <4 x float> %i.ir, %i.is
  %i.iu = fadd fast <4 x float> %i.it, %i.dq      ; 5 uses
  %i.iv = fmul fast <4 x float> %i.id, splat (float 8.000000e+00)
  %i.iw = fadd fast <4 x float> %i.ib, %i.iv
  %i.ix = fmul fast <4 x float> %i.if, splat (float 4.000000e+00)
  %i.iy = fadd fast <4 x float> %i.iw, %i.ix
  %i.iz = fadd fast <4 x float> %i.iy, %i.dq      ; 5 uses
  %i.ja = fmul fast <4 x float> %i.ic, splat (float 1.600000e+01)
  %i.jb = fadd fast <4 x float> %i.ia, %i.ja
  %i.jc = fmul fast <4 x float> %i.ie, splat (float 2.000000e+00)
  %i.jd = fadd fast <4 x float> %i.jb, %i.jc
  %i.je = fadd fast <4 x float> %i.jd, %i.dq      ; 5 uses
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
  %i.lt = phi <2 x float> [ %i.ls, %bb.ah ], [ zeroinitializer, %bb.ag ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.lu = trunc nsw i64 %indvars.iv232.i to i32
  %factor.op.mul.reass.us162.i = mul i32 %factor.op.mul137.i, %i.lu
  %i.lv = sext i32 %factor.op.mul.reass.us162.i to i64
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.lv
  %.reass.i = mul i64 %factor.op.mul.i, %.pre.i
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ll, i64 %.reass.i
  %i.ly = extractelement <2 x float> %i.lt, i64 0
  %i.lz = extractelement <2 x float> %i.lt, i64 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ax, %.thread.us.i
  %indvars.iv227.i = phi i64 [ 0, %.thread.us.i ], [ %indvars.iv.next228.i, %bb.ax ] ; 3 uses
  %.idx259.i = shl nuw nsw i64 %indvars.iv227.i, 3
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 %.idx259.i ; 8 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.ku
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.kw
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.ky
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.la
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.lc
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.le
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.lg
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %indvars.iv219.i = phi i64 [ %indvars.iv.next220.i, %bb.aj ], [ 0, %bb.ai ] ; 7 uses
  %.0714151.us.i = phi ptr [ %i.oh, %bb.aj ], [ %i.mh, %bb.ai ] ; 2 uses
  %.0715150.us.i = phi ptr [ %i.og, %bb.aj ], [ %i.mg, %bb.ai ] ; 2 uses
  %.0716149.us.i = phi ptr [ %i.of, %bb.aj ], [ %i.mf, %bb.ai ] ; 2 uses
  %.0717148.us.i = phi ptr [ %i.oe, %bb.aj ], [ %i.me, %bb.ai ] ; 2 uses
  %.0718147.us.i = phi ptr [ %i.od, %bb.aj ], [ %i.md, %bb.ai ] ; 2 uses
  %.0719146.us.i = phi ptr [ %i.oc, %bb.aj ], [ %i.mc, %bb.ai ] ; 2 uses
  %.0720145.us.i = phi ptr [ %i.ob, %bb.aj ], [ %i.mb, %bb.ai ] ; 2 uses
  %.0721144.us.i = phi ptr [ %i.oa, %bb.aj ], [ %i.ma, %bb.ai ] ; 2 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv219.i
  %i.mj = load <2 x float>, ptr %.0720145.us.i, align 4, !tbaa !39 ; 2 uses
  %i.mk = load <2 x float>, ptr %.0719146.us.i, align 4, !tbaa !39 ; 2 uses
  %i.ml = fadd fast <2 x float> %i.mk, %i.mj      ; 3 uses
  %i.mm = load <2 x float>, ptr %.0718147.us.i, align 4, !tbaa !39 ; 2 uses
  %i.mn = load <2 x float>, ptr %.0717148.us.i, align 4, !tbaa !39 ; 2 uses
  %i.mo = fadd fast <2 x float> %i.mn, %i.mm      ; 3 uses
  %i.mp = load <2 x float>, ptr %.0716149.us.i, align 4, !tbaa !39 ; 2 uses
  %i.mq = load <2 x float>, ptr %.0715150.us.i, align 4, !tbaa !39 ; 2 uses
  %i.mr = fadd fast <2 x float> %i.mq, %i.mp      ; 3 uses
  %i.ms = load <2 x float>, ptr %.0721144.us.i, align 4, !tbaa !39
  %i.mt = fmul fast <2 x float> %i.mr, splat (float 3.200000e+01)
  %i.mu = fadd fast <2 x float> %i.ml, %i.mo
  %i.mv = fadd fast <2 x float> %i.mu, %i.mt
  %i.mw = fadd fast <2 x float> %i.mv, %i.ms
  store <2 x float> %i.mw, ptr %i.mi, align 8, !tbaa !39
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv219.i
  %i.my = fsub fast <2 x float> %i.mj, %i.mk      ; 3 uses
  %i.mz = fsub fast <2 x float> %i.mm, %i.mn      ; 3 uses
  %i.na = fsub fast <2 x float> %i.mp, %i.mq      ; 3 uses
  %i.nb = fmul fast <2 x float> %i.na, splat (float 1.600000e+01)
  %i.nc = fmul fast <2 x float> %i.mz, splat (float 2.000000e+00)
  %i.nd = fadd fast <2 x float> %i.my, %i.nb
  %i.ne = fadd fast <2 x float> %i.nd, %i.nc
  store <2 x float> %i.ne, ptr %i.mx, align 8, !tbaa !39
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv219.i
  %i.ng = fmul fast <2 x float> %i.mo, splat (float 4.000000e+00)
  %i.nh = fadd fast <2 x float> %i.ml, %i.ng
  %i.ni = fmul fast <2 x float> %i.mr, splat (float 8.000000e+00)
  %i.nj = fadd fast <2 x float> %i.ni, %i.nh
  store <2 x float> %i.nj, ptr %i.nf, align 8, !tbaa !39
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv219.i
  %i.nl = fmul fast <2 x float> %i.mz, splat (float 8.000000e+00)
  %i.nm = fadd fast <2 x float> %i.my, %i.nl
  %i.nn = fmul fast <2 x float> %i.na, splat (float 4.000000e+00)
  %i.no = fadd fast <2 x float> %i.nn, %i.nm
  store <2 x float> %i.no, ptr %i.nk, align 8, !tbaa !39
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv219.i
  %i.nq = fmul fast <2 x float> %i.mo, splat (float 1.600000e+01)
  %i.nr = fadd fast <2 x float> %i.ml, %i.nq
  %i.ns = fmul fast <2 x float> %i.mr, splat (float 2.000000e+00)
  %i.nt = fadd fast <2 x float> %i.ns, %i.nr
  store <2 x float> %i.nt, ptr %i.np, align 8, !tbaa !39
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv219.i
  %i.nv = load <2 x float>, ptr %.0714151.us.i, align 4, !tbaa !39
  %i.nw = fadd fast <2 x float> %i.my, %i.nv
  %i.nx = fmul fast <2 x float> %i.mz, splat (float 3.200000e+01)
  %i.ny = fadd fast <2 x float> %i.nx, %i.nw
  %i.nz = fadd fast <2 x float> %i.ny, %i.na
  store <2 x float> %i.nz, ptr %i.nu, align 8, !tbaa !39
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %.0721144.us.i, i64 %i.li
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %.0720145.us.i, i64 %i.li
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %.0719146.us.i, i64 %i.li
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %.0718147.us.i, i64 %i.li
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %.0717148.us.i, i64 %i.li
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %.0716149.us.i, i64 %i.li
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %.0715150.us.i, i64 %i.li
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %.0714151.us.i, i64 %i.li
  %indvars.iv.next220.i = add nuw nsw i64 %indvars.iv219.i, 1 ; 2 uses
  %exitcond222.not.i = icmp eq i64 %indvars.iv.next220.i, 8
  br i1 %exitcond222.not.i, label %_ZN4ncnn3MatD2Ev.exit740.us.i, label %bb.aj, !llvm.loop !949

_ZN4ncnn3MatD2Ev.exit740.us.i:                    ; preds = %bb.aj
  %i.oi = trunc i64 %indvars.iv227.i to i32
  %i.oj = add i32 %.044131, %i.oi                 ; 2 uses
  %i.ok = sdiv i32 %i.oj, %i.cs
  %i.ol = srem i32 %i.oj, %i.cs
  %i.om = mul nsw i32 %i.ok, 6
  %i.on = sext i32 %i.om to i64                   ; 2 uses
  %.reass157.us.i = mul i64 %factor.op.mul156.us.i, %i.on
  %i.oo = getelementptr inbounds nuw i8, ptr %i.lx, i64 %.reass157.us.i
  %i.op = mul nsw i32 %i.ol, 6                    ; 6 uses
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr inbounds [4 x i8], ptr %i.oo, i64 %i.oq
  %i.os = or disjoint i32 %i.op, 1
  %i.ot = icmp slt i32 %i.os, %i.cl
  %i.ou = add nsw i32 %i.op, 2
  %i.ov = icmp slt i32 %i.ou, %i.cl
  %i.ow = add nsw i32 %i.op, 3
  %i.ox = icmp slt i32 %i.ow, %i.cl
  %i.oy = add nsw i32 %i.op, 4
  %i.oz = icmp slt i32 %i.oy, %i.cl
  %i.pa = add nsw i32 %i.op, 5
  %i.pb = icmp slt i32 %i.pa, %i.cl
  %invariant.op260.i = sub nsw i64 %i.lp, %i.on
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aw, %_ZN4ncnn3MatD2Ev.exit740.us.i
  %indvars.iv223.i = phi i64 [ %indvars.iv.next224.i, %bb.aw ], [ 0, %_ZN4ncnn3MatD2Ev.exit740.us.i ] ; 3 uses
  %.0701153.us.i = phi ptr [ %.1702.us.i, %bb.aw ], [ %i.or, %_ZN4ncnn3MatD2Ev.exit740.us.i ] ; 9 uses
  %.not736.us.i = icmp slt i64 %indvars.iv223.i, %invariant.op260.i
  br i1 %.not736.us.i, label %bb.al, label %bb.aw

bb.al:                                            ; preds = %bb.ak
  %i.pc = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %indvars.iv223.i ; 9 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pc, i64 24
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pc, i64 32
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pc, i64 40
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pc, i64 48
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pc, i64 56
  %i.pk = load float, ptr %i.pj, align 8, !tbaa !39
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pc, i64 60
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !39
  %i.pn = load <2 x float>, ptr %i.pd, align 8, !tbaa !39 ; 2 uses
  %i.po = load <2 x float>, ptr %i.pe, align 16, !tbaa !39 ; 2 uses
  %i.pp = load <2 x float>, ptr %i.pf, align 8, !tbaa !39 ; 2 uses
  %i.pq = load <2 x float>, ptr %i.pg, align 16, !tbaa !39 ; 2 uses
  %i.pr = load <2 x float>, ptr %i.ph, align 8, !tbaa !39 ; 2 uses
  %i.ps = load <2 x float>, ptr %i.pi, align 16, !tbaa !39 ; 2 uses
  %i.pt = fsub fast <2 x float> %i.pn, %i.po      ; 3 uses
  %i.pu = fsub fast <2 x float> %i.pp, %i.pq      ; 3 uses
  %i.pv = fsub fast <2 x float> %i.pr, %i.ps      ; 4 uses
  %i.pw = load <2 x float>, ptr %i.pc, align 16, !tbaa !39
  %i.px = fadd fast <2 x float> %i.pq, %i.pp      ; 2 uses
  %i.py = fadd fast <2 x float> %i.ps, %i.pr      ; 2 uses
  %i.pz = fmul fast <2 x float> %i.py, splat (float 3.200000e+01)
  %i.qa = fadd fast <2 x float> %i.pn, %i.lt
  %i.qb = fadd fast <2 x float> %i.qa, %i.po      ; 3 uses
  %i.qc = fadd fast <2 x float> %i.qb, %i.pw
  %i.qd = fadd fast <2 x float> %i.qc, %i.px
  %i.qe = fadd fast <2 x float> %i.qd, %i.pz      ; 2 uses
  %i.qf = fadd fast <2 x float> %i.pt, %i.lt      ; 2 uses
  %i.qg = shufflevector <2 x float> %i.px, <2 x float> %i.py, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  %i.qh = fmul fast <4 x float> %i.qg, <float 4.000000e+00, float 8.000000e+00, float 4.000000e+00, float 8.000000e+00> ; 3 uses
  %i.qi = extractelement <2 x float> %i.pv, i64 0
  %i.qj = extractelement <2 x float> %i.pv, i64 1
  %i.qk = shufflevector <2 x float> %i.pu, <2 x float> %i.pv, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ql = fmul fast <4 x float> %i.qk, <float 8.000000e+00, float 4.000000e+00, float 8.000000e+00, float 4.000000e+00> ; 2 uses
  %i.qm = shufflevector <2 x float> %i.qb, <2 x float> %i.qf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.qn = shufflevector <4 x float> %i.qh, <4 x float> %i.ql, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.qo = fadd fast <4 x float> %i.qm, %i.qn      ; 3 uses
  %shift = shufflevector <4 x float> %i.qh, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd fast <4 x float> %shift, %i.qo
  %i.qp = extractelement <4 x float> %foldExtExtBinop, i64 0
  %shift144 = shufflevector <4 x float> %i.qh, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop145 = fadd fast <4 x float> %shift144, %i.qo
  %i.qq = extractelement <4 x float> %foldExtExtBinop145, i64 1
  %i.qr = fmul fast <4 x float> %i.qg, <float 1.600000e+01, float 2.000000e+00, float 1.600000e+01, float 2.000000e+00> ; 3 uses
  %i.qs = shufflevector <2 x float> %i.qb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qt = shufflevector <4 x float> %i.ql, <4 x float> %i.qs, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.qu = shufflevector <4 x float> %i.qo, <4 x float> %i.qr, <4 x i32> <i32 2, i32 3, i32 4, i32 6>
  %i.qv = fadd fast <4 x float> %i.qt, %i.qu      ; 4 uses
  %shift147 = shufflevector <4 x float> %i.qv, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop148 = fadd fast <4 x float> %i.qr, %shift147
  %i.qw = extractelement <4 x float> %foldExtExtBinop148, i64 1
  %foldExtExtBinop150 = fadd fast <4 x float> %i.qr, %i.qv
  %i.qx = extractelement <4 x float> %foldExtExtBinop150, i64 3
  %i.qy = fadd fast float %i.ly, %i.pk
  %i.qz = extractelement <2 x float> %i.pt, i64 0
  %i.ra = fadd fast float %i.qz, %i.qy
  %i.rb = fadd fast float %i.lz, %i.pm
  %i.rc = extractelement <2 x float> %i.pt, i64 1
  %i.rd = fadd fast float %i.rc, %i.rb
  %i.re = fmul fast <2 x float> %i.pu, splat (float 3.200000e+01) ; 2 uses
  %i.rf = extractelement <2 x float> %i.re, i64 0
  %i.rg = fadd fast float %i.rf, %i.ra
  %i.rh = fadd fast float %i.rg, %i.qi
  %i.ri = extractelement <2 x float> %i.re, i64 1
  %i.rj = fadd fast float %i.ri, %i.rd
  %i.rk = fadd fast float %i.rj, %i.qj
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %.0701153.us.i, i64 %i.cq ; 6 uses
  %i.rm = extractelement <2 x float> %i.qe, i64 0
  store float %i.rm, ptr %.0701153.us.i, align 4, !tbaa !39
  %i.rn = extractelement <2 x float> %i.qe, i64 1
  store float %i.rn, ptr %i.rl, align 4, !tbaa !39
  br i1 %i.ot, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ro = fmul fast <2 x float> %i.pv, splat (float 1.600000e+01)
  %i.rp = fmul fast <2 x float> %i.pu, splat (float 2.000000e+00)
  %i.rq = fadd fast <2 x float> %i.qf, %i.ro
  %i.rr = fadd fast <2 x float> %i.rq, %i.rp      ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.0701153.us.i, i64 4
  %i.rt = extractelement <2 x float> %i.rr, i64 0
  store float %i.rt, ptr %i.rs, align 4, !tbaa !39
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rl, i64 4
  %i.rv = extractelement <2 x float> %i.rr, i64 1
  store float %i.rv, ptr %i.ru, align 4, !tbaa !39
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  br i1 %i.ov, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.rw = getelementptr inbounds nuw i8, ptr %.0701153.us.i, i64 8
  store float %i.qp, ptr %i.rw, align 4, !tbaa !39
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  store float %i.qq, ptr %i.rx, align 4, !tbaa !39
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  br i1 %i.ox, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ry = getelementptr inbounds nuw i8, ptr %.0701153.us.i, i64 12
  %i.rz = extractelement <4 x float> %i.qv, i64 0
  store float %i.rz, ptr %i.ry, align 4, !tbaa !39
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rl, i64 12
  %i.sb = extractelement <4 x float> %i.qv, i64 1
  store float %i.sb, ptr %i.sa, align 4, !tbaa !39
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  br i1 %i.oz, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.sc = getelementptr inbounds nuw i8, ptr %.0701153.us.i, i64 16
  store float %i.qw, ptr %i.sc, align 4, !tbaa !39
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rl, i64 16
  store float %i.qx, ptr %i.sd, align 4, !tbaa !39
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  br i1 %i.pb, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.se = getelementptr inbounds nuw i8, ptr %.0701153.us.i, i64 20
  store float %i.rh, ptr %i.se, align 4, !tbaa !39
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rl, i64 20
  store float %i.rk, ptr %i.sf, align 4, !tbaa !39
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.sg = getelementptr inbounds [4 x i8], ptr %.0701153.us.i, i64 %i.lj
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ak
  %.1702.us.i = phi ptr [ %.0701153.us.i, %bb.ak ], [ %i.sg, %bb.av ]
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
  %i.sh = icmp slt i64 %indvars.iv.next233.i, %invariant.op261.i.a
  br i1 %i.sh, label %bb.ag, label %.preheader.loopexit.i, !llvm.loop !952

.lr.ph160.split.i:                                ; preds = %.lr.ph160.i
  %17 = sub i32 %16, %.0703.lcssa.i
  %18 = and i32 %17, -2
  %19 = add i32 %.0703.lcssa.i, 2
  %i.si = add i32 %19, %18
  br label %.preheader.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.us164.i
  %i.sj = trunc nsw i64 %indvars.iv.next233.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph160.split.i, %.preheader124.i
  %.1704.lcssa.i = phi i32 [ %.0703.lcssa.i, %.preheader124.i ], [ %i.si, %.lr.ph160.split.i ], [ %i.sj, %.preheader.loopexit.i ] ; 2 uses
  %i.sk = icmp slt i32 %.1704.lcssa.i, %.sroa.speculated121
  br i1 %i.sk, label %.lr.ph188.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_output_tileERKNS_3MatERS0_S2_iiii.exit

.lr.ph188.i:                                      ; preds = %.preheader.i
  %.not.i80 = icmp eq ptr %.val78, null
  %i.sl = icmp sgt i32 %.sroa.speculated117, 0
  %i.sm = sext i32 %.sroa.speculated117 to i64
  %i.sn = shl nsw i32 %.sroa.speculated117, 1
  %i.so = sext i32 %i.sn to i64
  %i.sp = mul nsw i32 %.sroa.speculated117, 3
  %i.sq = sext i32 %i.sp to i64
  %i.sr = shl nsw i32 %.sroa.speculated117, 2
  %i.ss = sext i32 %i.sr to i64
  %i.st = mul nsw i32 %.sroa.speculated117, 5
  %i.su = sext i32 %i.st to i64
  %i.sv = mul nsw i32 %.sroa.speculated117, 6
  %i.sw = sext i32 %i.sv to i64
  %i.sx = mul nsw i32 %.sroa.speculated117, 7
  %i.sy = sext i32 %i.sx to i64
  %i.sz = shl nsw i32 %.sroa.speculated117, 3
  %i.ta = sext i32 %i.sz to i64                   ; 8 uses
  %i.tb = sext i32 %i.cl to i64
  br i1 %i.sl, label %.lr.ph188.split.us.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_output_tileERKNS_3MatERS0_S2_iiii.exit

.lr.ph188.split.us.i:                             ; preds = %.lr.ph188.i
  %i.tc = load i32, ptr %i.aq, align 4, !tbaa !75, !noalias !953
  %i.td = load ptr, ptr %12, align 8, !tbaa !18, !noalias !953
  %i.te = load i64, ptr %i.at, align 8, !tbaa !20, !noalias !953
  %i.tf = load i64, ptr %i.az, align 8, !tbaa !65, !noalias !953 ; 2 uses
  %factor.op.mul193.i = mul i64 %i.tf, %i.te
  %i.tg = sext i32 %i.tc to i64
  %factor.op.mul184.us.i = mul i64 %i.tf, %i.tg
  %i.th = sext i32 %i.cm to i64
  %i.ti = sext i32 %.1704.lcssa.i to i64
  %wide.trip.count246.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.us191.i, %.lr.ph188.split.us.i
  %indvars.iv248.i = phi i64 [ %indvars.iv.next249.i, %._crit_edge.us191.i ], [ %i.ti, %.lr.ph188.split.us.i ] ; 3 uses
  %.pre253.i = add nsw i64 %indvars.iv248.i, %i.ca ; 2 uses
  br i1 %.not.i80, label %.lr.ph.us190.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.tj = getelementptr inbounds [4 x i8], ptr %.val78, i64 %.pre253.i
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !39
  br label %.lr.ph.us190.i

.lr.ph.us190.i:                                   ; preds = %bb.az, %bb.ay
  %i.tl = phi fast float [ %i.tk, %bb.az ], [ 0.000000e+00, %bb.ay ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.tm = trunc nsw i64 %indvars.iv248.i to i32
  %factor.op.mul181.reass.us.i = mul i32 %factor.op.mul137.i, %i.tm
  %i.tn = sext i32 %factor.op.mul181.reass.us.i to i64
  %i.to = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.tn
  %.reass194.i = mul i64 %factor.op.mul193.i, %.pre253.i
  %i.tp = getelementptr inbounds nuw i8, ptr %i.td, i64 %.reass194.i
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bp, %.lr.ph.us190.i
  %indvars.iv243.i = phi i64 [ 0, %.lr.ph.us190.i ], [ %indvars.iv.next244.i, %bb.bp ] ; 3 uses
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %indvars.iv243.i ; 8 uses
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %i.sm
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %i.so
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %i.sq
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %i.ss
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %i.su
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %i.sw
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %i.sy
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %bb.ba
  %indvars.iv235.i = phi i64 [ %indvars.iv.next236.i, %bb.bb ], [ 0, %bb.ba ] ; 7 uses
  %.0691177.us.i = phi ptr [ %i.wb, %bb.bb ], [ %i.tx, %bb.ba ] ; 2 uses
  %.0692176.us.i = phi ptr [ %i.wa, %bb.bb ], [ %i.tw, %bb.ba ] ; 2 uses
  %.0693175.us.i = phi ptr [ %i.vz, %bb.bb ], [ %i.tv, %bb.ba ] ; 2 uses
  %.0694174.us.i = phi ptr [ %i.vy, %bb.bb ], [ %i.tu, %bb.ba ] ; 2 uses
  %.0695173.us.i = phi ptr [ %i.vx, %bb.bb ], [ %i.tt, %bb.ba ] ; 2 uses
  %.0696172.us.i = phi ptr [ %i.vw, %bb.bb ], [ %i.ts, %bb.ba ] ; 2 uses
  %.0697171.us.i = phi ptr [ %i.vv, %bb.bb ], [ %i.tr, %bb.ba ] ; 2 uses
  %.0698170.us.i = phi ptr [ %i.vu, %bb.bb ], [ %i.tq, %bb.ba ] ; 2 uses
  %i.ty = load float, ptr %.0697171.us.i, align 4, !tbaa !39 ; 2 uses
  %i.tz = load float, ptr %.0696172.us.i, align 4, !tbaa !39 ; 2 uses
  %i.ua = load float, ptr %.0695173.us.i, align 4, !tbaa !39 ; 2 uses
  %i.ub = load float, ptr %.0694174.us.i, align 4, !tbaa !39 ; 2 uses
  %i.uc = load float, ptr %.0693175.us.i, align 4, !tbaa !39 ; 2 uses
  %i.ud = load float, ptr %.0692176.us.i, align 4, !tbaa !39 ; 2 uses
  %i.ue = fadd fast float %i.ud, %i.uc            ; 3 uses
  %i.uf = fsub fast float %i.uc, %i.ud            ; 3 uses
  %i.ug = load float, ptr %.0698170.us.i, align 4, !tbaa !39
  %i.uh = fmul fast float %i.ue, 3.200000e+01
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv235.i
  %i.uj = fmul fast float %i.uf, 1.600000e+01
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv235.i
  %i.ul = fmul fast float %i.ue, 8.000000e+00
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv235.i
  %i.un = fmul fast float %i.uf, 4.000000e+00
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv235.i
  %i.up = fsub fast float %i.ty, %i.tz            ; 3 uses
  %i.uq = fadd fast float %i.ub, %i.ua            ; 2 uses
  %i.ur = fsub fast float %i.ua, %i.ub            ; 2 uses
  %i.us = fadd fast float %i.tz, %i.ty            ; 2 uses
  %i.ut = fadd fast float %i.up, %i.uj
  %i.uu = fadd fast float %i.uq, %i.us
  %i.uv = fadd fast float %i.uu, %i.ug
  %i.uw = fadd fast float %i.uv, %i.uh
  store float %i.uw, ptr %i.ui, align 4, !tbaa !39
  %i.ux = insertelement <4 x float> poison, float %i.ur, i64 0
  %i.uy = insertelement <4 x float> %i.ux, float %i.uq, i64 1
  %i.uz = shufflevector <4 x float> %i.uy, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.va = fmul fast <4 x float> %i.uz, <float 2.000000e+00, float 4.000000e+00, float 8.000000e+00, float 1.600000e+01>
  %i.vb = insertelement <4 x float> poison, float %i.ut, i64 0
  %i.vc = insertelement <4 x float> %i.vb, float %i.us, i64 1
  %i.vd = insertelement <4 x float> %i.vc, float %i.up, i64 2
  %i.ve = shufflevector <4 x float> %i.vd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.vf = fadd fast <4 x float> %i.ve, %i.va      ; 4 uses
  %i.vg = extractelement <4 x float> %i.vf, i64 0
  store float %i.vg, ptr %i.uk, align 4, !tbaa !39
  %i.vh = extractelement <4 x float> %i.vf, i64 1
  %i.vi = fadd fast float %i.ul, %i.vh
  store float %i.vi, ptr %i.um, align 4, !tbaa !39
  %i.vj = extractelement <4 x float> %i.vf, i64 2
  %i.vk = fadd fast float %i.un, %i.vj
  store float %i.vk, ptr %i.uo, align 4, !tbaa !39
  %factor115.us.i = fmul fast float %i.ue, 2.000000e+00
  %i.vl = extractelement <4 x float> %i.vf, i64 3
  %i.vm = fadd fast float %factor115.us.i, %i.vl
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv235.i
  store float %i.vm, ptr %i.vn, align 4, !tbaa !39
  %i.vo = load float, ptr %.0691177.us.i, align 4, !tbaa !39
  %i.vp = fadd fast float %i.up, %i.vo
  %i.vq = fmul fast float %i.ur, 3.200000e+01
  %i.vr = fadd fast float %i.vq, %i.vp
  %i.vs = fadd fast float %i.vr, %i.uf
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv235.i
  store float %i.vs, ptr %i.vt, align 4, !tbaa !39
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %.0698170.us.i, i64 %i.ta
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %.0697171.us.i, i64 %i.ta
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %.0696172.us.i, i64 %i.ta
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %.0695173.us.i, i64 %i.ta
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %.0694174.us.i, i64 %i.ta
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %.0693175.us.i, i64 %i.ta
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %.0692176.us.i, i64 %i.ta
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %.0691177.us.i, i64 %i.ta
  %indvars.iv.next236.i = add nuw nsw i64 %indvars.iv235.i, 1 ; 2 uses
  %exitcond238.not.i = icmp eq i64 %indvars.iv.next236.i, 8
  br i1 %exitcond238.not.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, label %bb.bb, !llvm.loop !956

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %bb.bb
  %i.wc = trunc i64 %indvars.iv243.i to i32
  %i.wd = add i32 %.044131, %i.wc                 ; 2 uses
  %i.we = sdiv i32 %i.wd, %i.cs
  %i.wf = srem i32 %i.wd, %i.cs
  %i.wg = mul nsw i32 %i.we, 6
  %i.wh = sext i32 %i.wg to i64                   ; 2 uses
  %.reass185.us.i = mul i64 %factor.op.mul184.us.i, %i.wh
  %i.wi = getelementptr inbounds nuw i8, ptr %i.tp, i64 %.reass185.us.i
  %i.wj = mul nsw i32 %i.wf, 6                    ; 6 uses
  %i.wk = sext i32 %i.wj to i64
  %i.wl = getelementptr inbounds [4 x i8], ptr %i.wi, i64 %i.wk
  %i.wm = or disjoint i32 %i.wj, 1
  %i.wn = icmp slt i32 %i.wm, %i.cl
  %i.wo = add nsw i32 %i.wj, 2
  %i.wp = icmp slt i32 %i.wo, %i.cl
  %i.wq = add nsw i32 %i.wj, 3
  %i.wr = icmp slt i32 %i.wq, %i.cl
  %i.ws = add nsw i32 %i.wj, 4
  %i.wt = icmp slt i32 %i.ws, %i.cl
  %i.wu = add nsw i32 %i.wj, 5
  %i.wv = icmp slt i32 %i.wu, %i.cl
  %invariant.op262.i = sub nsw i64 %i.th, %i.wh
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bo, %_ZN4ncnn3MatD2Ev.exit.us.i
  %indvars.iv239.i = phi i64 [ %indvars.iv.next240.i, %bb.bo ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us.i ] ; 3 uses
  %.0689179.us.i = phi ptr [ %.1.us.i, %bb.bo ], [ %i.wl, %_ZN4ncnn3MatD2Ev.exit.us.i ] ; 8 uses
  %.not734.us.i = icmp slt i64 %indvars.iv239.i, %invariant.op262.i
  br i1 %.not734.us.i, label %bb.bd, label %bb.bo

bb.bd:                                            ; preds = %bb.bc
  %i.ww = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv239.i ; 5 uses
  %i.wx = load float, ptr %i.ww, align 16, !tbaa !39
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ww, i64 4
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !39 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.ww, i64 8
  %i.xb = load float, ptr %i.xa, align 8, !tbaa !39 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ww, i64 12
  %i.xd = getelementptr inbounds nuw i8, ptr %i.ww, i64 28
  %i.xe = load float, ptr %i.xd, align 4, !tbaa !39
  %i.xf = fsub fast float %i.wz, %i.xb            ; 2 uses
  %i.xg = fadd fast float %i.wz, %i.tl
  %i.xh = fadd fast float %i.xg, %i.xb            ; 3 uses
  %i.xi = fadd fast float %i.xh, %i.wx
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
  %i.bv = phi i32 [ %.pre, %.lr.ph ], [ %i.asd, %_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit ]
  %i.bw = phi i32 [ %i.bm, %.lr.ph ], [ %i.asf, %_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit ]
  %.047153 = phi i32 [ 0, %.lr.ph ], [ %i.ase, %_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit ] ; 6 uses
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
  %factor.op.mul513.i = shl i32 %.sroa.speculated119, 4 ; 4 uses
  br i1 %i.bo, label %.lr.ph516.i, label %.preheader504.i

.lr.ph516.i:                                      ; preds = %._crit_edge
  %.not351.i = icmp eq ptr %.val, null
  %i.cj = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.bp
  %i.ck = icmp sgt i32 %.sroa.speculated119, 0
  %i.cl = shl nsw i32 %.sroa.speculated119, 2
  %i.cm = sext i32 %i.cl to i64
  %i.cn = shl nsw i32 %.sroa.speculated119, 3
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i32 %.sroa.speculated119, 12
  %i.cq = sext i32 %i.cp to i64
  %i.cr = sext i32 %factor.op.mul513.i to i64     ; 12 uses
  %.idx.i = shl i64 %i.cg, 2
  %.idx353.i = mul i64 %i.cg, 6
  %i.cs = mul nsw i32 %i.cd, %i.cb
  %i.ct = sext i32 %i.cs to i64
  br i1 %i.ck, label %.lr.ph516.split.us.preheader.i, label %.preheader504.i

.lr.ph516.split.us.preheader.i:                   ; preds = %.lr.ph516.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated119 to i64
  br label %.lr.ph516.split.us.i

.lr.ph516.split.us.i:                             ; preds = %._crit_edge.us.i, %.lr.ph516.split.us.preheader.i
  %indvars.iv579.i = phi i64 [ 0, %.lr.ph516.split.us.preheader.i ], [ %indvars.iv.next580.i, %._crit_edge.us.i ] ; 3 uses
  br i1 %.not351.i, label %.lr.ph.us.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph516.split.us.i
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv579.i
  %i.cv = load <4 x float>, ptr %i.cu, align 1, !tbaa !254
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.e, %.lr.ph516.split.us.i
  %i.cw = phi fast <4 x float> [ %i.cv, %bb.e ], [ zeroinitializer, %.lr.ph516.split.us.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.cx = trunc nuw nsw i64 %indvars.iv579.i to i32 ; 2 uses
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul513.i, %i.cx
  %i.cy = sext i32 %factor.op.mul.reass.us.i to i64
  %i.cz = add i32 %i.ba, %i.cx
  %i.da = sdiv i32 %i.cz, %i.cd
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.cy
  br label %_ZN4ncnn3MatD2Ev.exit355.us.i

_ZN4ncnn3MatD2Ev.exit355.us.i:                    ; preds = %bb.n, %.lr.ph.us.i
  %indvars.iv576.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next577.i, %bb.n ] ; 3 uses
  %.idx655.i.a = shl nuw nsw i64 %indvars.iv576.i, 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.idx655.i.a ; 5 uses
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
  %i.ez = trunc i64 %indvars.iv576.i to i32
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
  %.0332510.us.i = phi ptr [ %.1333.us.i, %bb.m ], [ %i.ft, %_ZN4ncnn3MatD2Ev.exit355.us.i ] ; 9 uses
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
  %i.or = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.oa)
  %i.os = shl <4 x i32> %i.or, splat (i32 23)
  %i.ot = add <4 x i32> %i.os, splat (i32 1065353216)
  %i.ou = bitcast <4 x i32> %i.ot to <4 x float>
  %i.ov = fmul fast <4 x float> %i.oq, %i.ou
  %i.ow = fadd fast <4 x float> %i.ov, splat (float 1.000000e+00)
  %i.ox = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ow
  %i.oy = fadd fast <4 x float> %i.ox, splat (float -1.000000e+00)
  %i.oz = fmul fast <4 x float> %i.oy, %i.gj
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread363.us.i: ; preds = %bb.g
  %i.pa = fneg fast <4 x float> %i.gh
  %i.pb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.pa, <4 x float> splat (float f0x42B0C0A5))
  %i.pc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.pb, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.pd = fmul fast <4 x float> %i.pc, splat (float f0x3FB8AA3B)
  %i.pe = fadd fast <4 x float> %i.pd, splat (float 5.000000e-01) ; 2 uses
  %i.pf = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pe)
  %i.pg = sitofp fast <4 x i32> %i.pf to <4 x float> ; 2 uses
  %i.ph = fcmp fast olt <4 x float> %i.pe, %i.pg
  %i.pi = select <4 x i1> %i.ph, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.pj = fsub fast <4 x float> %i.pg, %i.pi      ; 2 uses
  %i.pk = fmul fast <4 x float> %i.pj, splat (float f0x3F317218)
  %i.pl = fsub fast <4 x float> %i.pc, %i.pk      ; 8 uses
  %i.pm = fmul fast <4 x float> %i.pl, %i.pl
  %i.pn = fmul fast <4 x float> %i.pl, splat (float f0x39506967)
  %i.po = fadd fast <4 x float> %i.pn, splat (float f0x3AB743CE)
  %i.pp = fmul fast <4 x float> %i.po, %i.pl
  %i.pq = fadd fast <4 x float> %i.pp, splat (float f0x3C088908)
  %i.pr = fmul fast <4 x float> %i.pq, %i.pl
  %i.ps = fadd fast <4 x float> %i.pr, splat (float f0x3D2AA9C1)
  %i.pt = fmul fast <4 x float> %i.ps, %i.pl
  %i.pu = fadd fast <4 x float> %i.pt, splat (float f0x3E2AAAAA)
  %i.pv = fmul fast <4 x float> %i.pu, %i.pl
  %i.pw = fadd fast <4 x float> %i.pv, splat (float 5.000000e-01)
  %i.px = fmul fast <4 x float> %i.pm, %i.pw
  %i.py = fadd fast <4 x float> %i.pl, %i.px
  %i.pz = fadd fast <4 x float> %i.py, splat (float 1.000000e+00)
  %i.qa = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pj)
  %i.qb = shl <4 x i32> %i.qa, splat (i32 23)
  %i.qc = add <4 x i32> %i.qb, splat (i32 1065353216)
  %i.qd = bitcast <4 x i32> %i.qc to <4 x float>
  %i.qe = fmul fast <4 x float> %i.pz, %i.qd
  %i.qf = fadd fast <4 x float> %i.qe, splat (float 1.000000e+00)
  %i.qg = fdiv fast <4 x float> splat (float 1.000000e+00), %i.qf
  %i.qh = fneg fast <4 x float> %i.gj
  %i.qi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.qh, <4 x float> splat (float f0x42B0C0A5))
  %i.qj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.qi, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.qk = fmul fast <4 x float> %i.qj, splat (float f0x3FB8AA3B)
  %i.ql = fadd fast <4 x float> %i.qk, splat (float 5.000000e-01) ; 2 uses
  %i.qm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ql)
  %i.qn = sitofp fast <4 x i32> %i.qm to <4 x float> ; 2 uses
  %i.qo = fcmp fast olt <4 x float> %i.ql, %i.qn
  %i.qp = select <4 x i1> %i.qo, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.qq = fsub fast <4 x float> %i.qn, %i.qp      ; 2 uses
  %i.qr = fmul fast <4 x float> %i.qq, splat (float f0x3F317218)
  %i.qs = fsub fast <4 x float> %i.qj, %i.qr      ; 8 uses
  %i.qt = fmul fast <4 x float> %i.qs, %i.qs
  %i.qu = fmul fast <4 x float> %i.qs, splat (float f0x39506967)
  %i.qv = fadd fast <4 x float> %i.qu, splat (float f0x3AB743CE)
  %i.qw = fmul fast <4 x float> %i.qv, %i.qs
  %i.qx = fadd fast <4 x float> %i.qw, splat (float f0x3C088908)
  %i.qy = fmul fast <4 x float> %i.qx, %i.qs
  %i.qz = fadd fast <4 x float> %i.qy, splat (float f0x3D2AA9C1)
  %i.ra = fmul fast <4 x float> %i.qz, %i.qs
  %i.rb = fadd fast <4 x float> %i.ra, splat (float f0x3E2AAAAA)
  %i.rc = fmul fast <4 x float> %i.rb, %i.qs
  %i.rd = fadd fast <4 x float> %i.rc, splat (float 5.000000e-01)
  %i.re = fmul fast <4 x float> %i.qt, %i.rd
  %i.rf = fadd fast <4 x float> %i.qs, %i.re
  %i.rg = fadd fast <4 x float> %i.rf, splat (float 1.000000e+00)
  %i.rh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qq)
  %i.ri = shl <4 x i32> %i.rh, splat (i32 23)
  %i.rj = add <4 x i32> %i.ri, splat (i32 1065353216)
  %i.rk = bitcast <4 x i32> %i.rj to <4 x float>
  %i.rl = fmul fast <4 x float> %i.rg, %i.rk
  %i.rm = fadd fast <4 x float> %i.rl, splat (float 1.000000e+00)
  %i.rn = fdiv fast <4 x float> splat (float 1.000000e+00), %i.rm
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread360.us.i: ; preds = %bb.g
  %i.ro = load ptr, ptr %15, align 8, !tbaa !18   ; 2 uses
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !39
  %i.rq = insertelement <4 x float> poison, float %i.rp, i64 0
  %i.rr = shufflevector <4 x float> %i.rq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ro, i64 4
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !39
  %i.ru = insertelement <4 x float> poison, float %i.rt, i64 0
  %i.rv = shufflevector <4 x float> %i.ru, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.rw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gh, <4 x float> nofpclass(nan inf) %i.rr)
  %i.rx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.rw, <4 x float> nofpclass(nan inf) %i.rv)
  %i.ry = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gj, <4 x float> nofpclass(nan inf) %i.rr)
  %i.rz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ry, <4 x float> nofpclass(nan inf) %i.rv)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread357.us.i: ; preds = %bb.g
  %i.sa = load ptr, ptr %15, align 8, !tbaa !18
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !39
  %i.sc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.gh)
  %i.sd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.gh)
  %i.se = insertelement <4 x float> poison, float %i.sb, i64 0
  %i.sf = shufflevector <4 x float> %i.se, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.sg = fmul fast <4 x float> %i.sf, %i.sd
  %i.sh = fadd fast <4 x float> %i.sg, %i.sc
  %i.si = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.gj)
  %i.sj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.gj)
  %i.sk = fmul fast <4 x float> %i.sj, %i.sf
  %i.sl = fadd fast <4 x float> %i.sk, %i.si
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread.us.i: ; preds = %bb.g
  %i.sm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gh, <4 x float> zeroinitializer)
  %i.sn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gj, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i: ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread357.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread360.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread363.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread366.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread369.us.i, %bb.g
  %.0.i371356.us.i = phi <4 x float> [ %i.gw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread369.us.i ], [ %i.sm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread.us.i ], [ %i.sh, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread357.us.i ], [ %i.rx, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread360.us.i ], [ %i.qg, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread363.us.i ], [ %i.la, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread366.us.i ], [ %i.gh, %bb.g ] ; 2 uses
  %.0.i.us.i = phi nsz <4 x float> [ %i.hb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread369.us.i ], [ %i.sn, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread.us.i ], [ %i.sl, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread357.us.i ], [ %i.rz, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread360.us.i ], [ %i.rn, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread363.us.i ], [ %i.oz, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit372.thread366.us.i ], [ %i.gj, %bb.g ] ; 2 uses
  switch i32 %i.cd, label %bb.l [
    i32 4, label %bb.j
    i32 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i
  %i.so = getelementptr inbounds nuw [2 x i8], ptr %.0332510.us.i, i64 %i.cg ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.0332510.us.i, i64 %.idx.i ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.0332510.us.i, i64 %.idx353.i ; 2 uses
  %i.sr = bitcast <4 x float> %.0.i371356.us.i to <8 x i16> ; 4 uses
  %i.ss = extractelement <8 x i16> %i.sr, i64 1
  store i16 %i.ss, ptr %.0332510.us.i, align 2, !tbaa !394
  %i.st = extractelement <8 x i16> %i.sr, i64 3
  store i16 %i.st, ptr %i.so, align 2, !tbaa !394
  %i.su = extractelement <8 x i16> %i.sr, i64 5
  store i16 %i.su, ptr %i.sp, align 2, !tbaa !394
  %i.sv = extractelement <8 x i16> %i.sr, i64 7
  store i16 %i.sv, ptr %i.sq, align 2, !tbaa !394
  br i1 %i.fv, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.sw = bitcast <4 x float> %.0.i.us.i to <8 x i16> ; 4 uses
  %i.sx = extractelement <8 x i16> %i.sw, i64 1
  %i.sy = getelementptr inbounds nuw i8, ptr %.0332510.us.i, i64 2
  store i16 %i.sx, ptr %i.sy, align 2, !tbaa !394
  %i.sz = extractelement <8 x i16> %i.sw, i64 3
  %i.ta = getelementptr inbounds nuw i8, ptr %i.so, i64 2
  store i16 %i.sz, ptr %i.ta, align 2, !tbaa !394
  %i.tb = extractelement <8 x i16> %i.sw, i64 5
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sp, i64 2
  store i16 %i.tb, ptr %i.tc, align 2, !tbaa !394
  %i.td = extractelement <8 x i16> %i.sw, i64 7
  %i.te = getelementptr inbounds nuw i8, ptr %i.sq, i64 2
  store i16 %i.td, ptr %i.te, align 2, !tbaa !394
  br label %bb.l

bb.j:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i
  %i.tf = bitcast <4 x float> %.0.i371356.us.i to <8 x i16>
  %i.tg = shufflevector <8 x i16> %i.tf, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.th = bitcast <8 x i16> %i.tg to <4 x float>
  %i.ti = shufflevector <4 x float> %i.th, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.tj = bitcast <4 x float> %i.ti to <2 x i64>
  %i.tk = extractelement <2 x i64> %i.tj, i64 0
  store i64 %i.tk, ptr %.0332510.us.i, align 1, !tbaa !254
  br i1 %i.fv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.tl = getelementptr inbounds nuw i8, ptr %.0332510.us.i, i64 8
  %i.tm = bitcast <4 x float> %.0.i.us.i to <8 x i16>
  %i.tn = shufflevector <8 x i16> %i.tm, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.to = bitcast <8 x i16> %i.tn to <4 x float>
  %i.tp = shufflevector <4 x float> %i.to, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.tq = bitcast <4 x float> %i.tp to <2 x i64>
  %i.tr = extractelement <2 x i64> %i.tq, i64 0
  store i64 %i.tr, ptr %i.tl, align 1, !tbaa !254
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i
  %i.ts = getelementptr inbounds [2 x i8], ptr %.0332510.us.i, i64 %i.ct
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %.1333.us.i = phi ptr [ %.0332510.us.i, %bb.f ], [ %i.ts, %bb.l ]
  br i1 %i.fw, label %bb.f, label %bb.n, !llvm.loop !1710

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next577.i = add nuw nsw i64 %indvars.iv576.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next577.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %_ZN4ncnn3MatD2Ev.exit355.us.i, !llvm.loop !1711

._crit_edge.us.i:                                 ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %indvars.iv.next580.i = add nuw nsw i64 %indvars.iv579.i, 4 ; 3 uses
  %i.tt = or disjoint i64 %indvars.iv.next580.i, 3
  %i.tu = icmp samesign ult i64 %i.tt, %i.br
  br i1 %i.tu, label %.lr.ph516.split.us.i, label %.preheader504.loopexit.i, !llvm.loop !1712

.preheader504.loopexit.i:                         ; preds = %._crit_edge.us.i
  %i.tv = trunc nuw nsw i64 %indvars.iv.next580.i to i32
  br label %.preheader504.i

.preheader504.i:                                  ; preds = %.lr.ph516.i, %.preheader504.loopexit.i, %._crit_edge
  %.0340.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.tv, %.preheader504.loopexit.i ], [ %i.bq, %.lr.ph516.i ] ; 5 uses
  %i.tw = or disjoint i32 %.0340.lcssa.i, 1
  %i.tx = icmp slt i32 %i.tw, %.sroa.speculated123
  br i1 %i.tx, label %.lr.ph532.i, label %.preheader.i

.lr.ph532.i:                                      ; preds = %.preheader504.i
  %.not349.i = icmp eq ptr %.val, null
  %i.ty = icmp sgt i32 %.sroa.speculated119, 0
  %i.tz = shl nsw i32 %.sroa.speculated119, 1
  %i.ua = sext i32 %i.tz to i64
  %i.ub = shl nsw i32 %.sroa.speculated119, 2
  %i.uc = sext i32 %i.ub to i64
  %i.ud = mul nsw i32 %.sroa.speculated119, 6
  %i.ue = sext i32 %i.ud to i64
  %i.uf = shl nsw i32 %.sroa.speculated119, 3
  %i.ug = sext i32 %i.uf to i64                   ; 12 uses
  %i.uh = sext i32 %i.cb to i64
  br i1 %i.ty, label %.lr.ph532.split.us.i, label %.lr.ph532.split.i

.lr.ph532.split.us.i:                             ; preds = %.lr.ph532.i
  %i.ui = load i32, ptr %i.ao, align 4, !tbaa !75, !noalias !1713
  %i.uj = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1713
  %i.uk = load i64, ptr %i.ar, align 8, !tbaa !20, !noalias !1713
  %i.ul = load i64, ptr %i.as, align 8, !tbaa !65, !noalias !1713 ; 2 uses
  %factor.op.mul.i = mul i64 %i.ul, %i.uk
  %i.um = sext i32 %i.ui to i64
  %factor.op.mul528.us.i = mul i64 %i.ul, %i.um
  %i.un = sext i32 %.0340.lcssa.i to i64
  %wide.trip.count593.i = zext nneg i32 %.sroa.speculated119 to i64
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.us536.i, %.lr.ph532.split.us.i
  %indvars.iv595.i = phi i64 [ %indvars.iv.next596.i, %._crit_edge.us536.i ], [ %i.un, %.lr.ph532.split.us.i ] ; 3 uses
  %.pre.i = add nsw i64 %indvars.iv595.i, %i.bp   ; 2 uses
  br i1 %.not349.i, label %.thread.us.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.uo = getelementptr [4 x i8], ptr %.val, i64 %.pre.i
  %i.up = load <2 x float>, ptr %i.uo, align 4, !tbaa !39
  br label %.thread.us.i

.thread.us.i:                                     ; preds = %bb.p, %bb.o
  %i.uq = phi <2 x float> [ %i.up, %bb.p ], [ zeroinitializer, %bb.o ] ; 2 uses
  %i.ur = trunc nsw i64 %indvars.iv595.i to i32
  %factor.op.mul.reass.us534.i = mul i32 %factor.op.mul513.i, %i.ur
  %i.us = sext i32 %factor.op.mul.reass.us534.i to i64
  %i.ut = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.us
  %.reass.i = mul i64 %factor.op.mul.i, %.pre.i
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uj, i64 %.reass.i
  br label %_ZN4ncnn3MatD2Ev.exit354.us.i

_ZN4ncnn3MatD2Ev.exit354.us.i:                    ; preds = %bb.aq, %.thread.us.i
  %indvars.iv590.i = phi i64 [ 0, %.thread.us.i ], [ %indvars.iv.next591.i, %bb.aq ] ; 3 uses
  %.idx656.i = shl nuw nsw i64 %indvars.iv590.i, 3
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ut, i64 %.idx656.i ; 5 uses
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.uv, i64 %i.ua ; 2 uses
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.uv, i64 %i.uc ; 2 uses
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.uv, i64 %i.ue ; 2 uses
  %i.uz = load <2 x float>, ptr %i.uw, align 4, !tbaa !39 ; 2 uses
  %i.va = load <2 x float>, ptr %i.ux, align 4, !tbaa !39 ; 2 uses
  %i.vb = fsub fast <2 x float> %i.uz, %i.va
  %i.vc = load <2 x float>, ptr %i.uy, align 4, !tbaa !39
  %i.vd = fadd fast <2 x float> %i.vb, %i.vc
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %i.ug ; 2 uses
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %i.ug ; 2 uses
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.ug ; 2 uses
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.ve, i64 %i.ug ; 2 uses
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.vf, i64 %i.ug ; 2 uses
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.vg, i64 %i.ug ; 2 uses
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %i.ug
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %i.ug
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %i.ug
  %i.vn = load <2 x float>, ptr %i.ve, align 4, !tbaa !39 ; 2 uses
  %i.vo = load <2 x float>, ptr %i.vf, align 4, !tbaa !39 ; 2 uses
  %i.vp = load <2 x float>, ptr %i.vg, align 4, !tbaa !39
  %i.vq = load <2 x float>, ptr %i.vh, align 4, !tbaa !39 ; 2 uses
  %i.vr = load <2 x float>, ptr %i.vi, align 4, !tbaa !39 ; 2 uses
  %i.vs = fsub fast <2 x float> %i.vq, %i.vr
  %i.vt = load <2 x float>, ptr %i.vj, align 4, !tbaa !39
  %i.vu = fadd fast <2 x float> %i.vt, %i.vs      ; 2 uses
  %i.vv = load <2 x float>, ptr %i.vk, align 4, !tbaa !39 ; 2 uses
  %i.vw = load <2 x float>, ptr %i.vl, align 4, !tbaa !39 ; 2 uses
  %i.vx = load <2 x float>, ptr %i.vm, align 4, !tbaa !39
  %i.vy = trunc i64 %indvars.iv590.i to i32
  %i.vz = add i32 %.047153, %i.vy                 ; 2 uses
  %i.wa = sdiv i32 %i.vz, %i.ci
  %i.wb = srem i32 %i.vz, %i.ci
  %i.wc = shl nsw i32 %i.wa, 1                    ; 3 uses
  %i.wd = sext i32 %i.wc to i64
  %.reass529.us.i = mul i64 %factor.op.mul528.us.i, %i.wd
  %i.we = getelementptr inbounds nuw i8, ptr %i.uu, i64 %.reass529.us.i
  %i.wf = shl nsw i32 %i.wb, 1                    ; 2 uses
  %i.wg = sext i32 %i.wf to i64
  %i.wh = getelementptr inbounds [2 x i8], ptr %i.we, i64 %i.wg ; 5 uses
  %i.wi = or disjoint i32 %i.wf, 1
  %i.wj = icmp slt i32 %i.wi, %i.cb               ; 2 uses
  %.not350.us.i = icmp slt i32 %i.wc, %i.cc
  br i1 %.not350.us.i, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit354.us.i
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.uv, i64 %i.ug ; 2 uses
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %i.ug ; 2 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.wl, i64 %i.ug
  %i.wn = load <2 x float>, ptr %i.wm, align 4, !tbaa !39
  %i.wo = load <2 x float>, ptr %i.wl, align 4, !tbaa !39
  %i.wp = fadd fast <2 x float> %i.vr, %i.vq
  %i.wq = fadd fast <2 x float> %i.wp, %i.wo      ; 2 uses
  %i.wr = load <2 x float>, ptr %i.wk, align 4, !tbaa !39
  %i.ws = fadd fast <2 x float> %i.vn, %i.uq
  %i.wt = fadd fast <2 x float> %i.ws, %i.vo
  %i.wu = fadd fast <2 x float> %i.wt, %i.wr      ; 2 uses
  %i.wv = load <2 x float>, ptr %i.uv, align 4, !tbaa !39
  %i.ww = fadd fast <2 x float> %i.va, %i.uz
  %i.wx = fadd fast <2 x float> %i.ww, %i.wq
  %i.wy = fadd fast <2 x float> %i.wx, %i.wv
  %i.wz = fadd fast <2 x float> %i.wy, %i.wu      ; 10 uses
  %i.xa = fsub fast <2 x float> %i.wu, %i.wq
  %i.xb = fadd fast <2 x float> %i.vw, %i.vv
  %i.xc = fadd fast <2 x float> %i.xb, %i.wn
  %i.xd = fadd fast <2 x float> %i.xc, %i.xa      ; 13 uses
  switch i32 %i.ca, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread380.us.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread383.us.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread377.us.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread386.us.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread389.us.i
    i32 6, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.xe = load ptr, ptr %15, align 8, !tbaa !18   ; 2 uses
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !39 ; 9 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xe, i64 4
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !39 ; 5 uses
  %i.xi = fneg fast float %i.xh
  %i.xj = fdiv fast float %i.xi, %i.xf            ; 8 uses
  %i.xk = extractelement <2 x float> %i.wz, i64 0 ; 5 uses
  %i.xl = fcmp fast olt float %i.xk, %i.xj
  br i1 %i.xl, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.xm = fdiv fast float 1.000000e+00, %i.xf
  %i.xn = fadd fast float %i.xj, %i.xm
  %i.xo = fcmp fast ogt float %i.xk, %i.xn
  br i1 %i.xo, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.xp = fmul fast float %i.xf, %i.xk
  %i.xq = fadd fast float %i.xp, %i.xh
  %i.xr = fmul fast float %i.xq, %i.xk
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.i: ; preds = %bb.t, %bb.s, %bb.r
  %.1343373.us.i = phi float [ %i.xr, %bb.t ], [ 0.000000e+00, %bb.r ], [ %i.xk, %bb.s ]
  %i.xs = extractelement <2 x float> %i.wz, i64 1 ; 5 uses
  %i.xt = fcmp fast olt float %i.xs, %i.xj
  br i1 %i.xt, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.i, label %bb.u

bb.u:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.i
  %i.xu = fdiv fast float 1.000000e+00, %i.xf
  %i.xv = fadd fast float %i.xj, %i.xu
  %i.xw = fcmp fast ogt float %i.xs, %i.xv
  br i1 %i.xw, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.xx = fmul fast float %i.xf, %i.xs
  %i.xy = fadd fast float %i.xx, %i.xh
  %i.xz = fmul fast float %i.xy, %i.xs
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.i: ; preds = %bb.v, %bb.u, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.i
  %.1345396.us.i = phi float [ %i.xz, %bb.v ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.i ], [ %i.xs, %bb.u ]
  %i.ya = extractelement <2 x float> %i.xd, i64 0 ; 5 uses
  %i.yb = fcmp fast olt float %i.ya, %i.xj
  br i1 %i.yb, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.i, label %bb.w

bb.w:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.i
  %i.yc = fdiv fast float 1.000000e+00, %i.xf
  %i.yd = fadd fast float %i.xj, %i.yc
  %i.ye = fcmp fast ogt float %i.ya, %i.yd
  br i1 %i.ye, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.yf = fmul fast float %i.xf, %i.ya
  %i.yg = fadd fast float %i.yf, %i.xh
  %i.yh = fmul fast float %i.yg, %i.ya
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.i: ; preds = %bb.x, %bb.w, %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.i
  %.1347432.us.i = phi float [ %i.yh, %bb.x ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.i ], [ %i.ya, %bb.w ] ; 2 uses
  %i.yi = extractelement <2 x float> %i.xd, i64 1 ; 4 uses
  %i.yj = fcmp fast olt float %i.yi, %i.xj
  %i.yk = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.1347432.us.i, i64 0 ; 2 uses
  %i.yl = insertelement <2 x float> poison, float %.1343373.us.i, i64 0
  %i.ym = insertelement <2 x float> %i.yl, float %.1345396.us.i, i64 1 ; 3 uses
  br i1 %i.yj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.i, label %bb.y

bb.y:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.i
  %i.yn = fdiv fast float 1.000000e+00, %i.xf
  %i.yo = fadd fast float %i.xj, %i.yn
  %i.yp = fcmp fast ogt float %i.yi, %i.yo
end_hunk_20
begin_hunk_21_@_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.14:bb.a

bb.af:                                            ; preds = %bb.ae
  %i.acd = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.ace = load float, ptr %i.acd, align 4, !tbaa !39 ; 9 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acd, i64 4
  %i.acg = load float, ptr %i.acf, align 4, !tbaa !39 ; 5 uses
  %i.ach = fneg fast float %i.acg
  %i.aci = fdiv fast float %i.ach, %i.ace         ; 8 uses
  %i.acj = extractelement <2 x float> %i.abz, i64 0 ; 5 uses
  %i.ack = fcmp fast olt float %i.acj, %i.aci
  br i1 %i.ack, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.1.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.acl = fdiv fast float 1.000000e+00, %i.ace
  %i.acm = fadd fast float %i.aci, %i.acl
  %i.acn = fcmp fast ogt float %i.acj, %i.acm
  br i1 %i.acn, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.1.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.aco = fmul fast float %i.ace, %i.acj
  %i.acp = fadd fast float %i.aco, %i.acg
  %i.acq = fmul fast float %i.acp, %i.acj
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.1.i: ; preds = %bb.ah, %bb.ag, %bb.af
  %.1343373.us.1.i = phi float [ %i.acq, %bb.ah ], [ 0.000000e+00, %bb.af ], [ %i.acj, %bb.ag ]
  %i.acr = extractelement <2 x float> %i.abz, i64 1 ; 5 uses
  %i.acs = fcmp fast olt float %i.acr, %i.aci
  br i1 %i.acs, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.1.i, label %bb.ai

bb.ai:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.1.i
  %i.act = fdiv fast float 1.000000e+00, %i.ace
  %i.acu = fadd fast float %i.aci, %i.act
  %i.acv = fcmp fast ogt float %i.acr, %i.acu
  br i1 %i.acv, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.1.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.acw = fmul fast float %i.ace, %i.acr
  %i.acx = fadd fast float %i.acw, %i.acg
  %i.acy = fmul fast float %i.acx, %i.acr
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.1.i: ; preds = %bb.aj, %bb.ai, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.1.i
  %.1345396.us.1.i = phi float [ %i.acy, %bb.aj ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.1.i ], [ %i.acr, %bb.ai ]
  %i.acz = extractelement <2 x float> %i.acc, i64 0 ; 5 uses
  %i.ada = fcmp fast olt float %i.acz, %i.aci
  br i1 %i.ada, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.1.i, label %bb.ak

bb.ak:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.1.i
  %i.adb = fdiv fast float 1.000000e+00, %i.ace
  %i.adc = fadd fast float %i.aci, %i.adb
  %i.add = fcmp fast ogt float %i.acz, %i.adc
  br i1 %i.add, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.1.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ade = fmul fast float %i.ace, %i.acz
  %i.adf = fadd fast float %i.ade, %i.acg
  %i.adg = fmul fast float %i.adf, %i.acz
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.1.i: ; preds = %bb.al, %bb.ak, %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.1.i
  %.1347432.us.1.i = phi float [ %i.adg, %bb.al ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.1.i ], [ %i.acz, %bb.ak ] ; 2 uses
  %i.adh = extractelement <2 x float> %i.acc, i64 1 ; 4 uses
  %i.adi = fcmp fast olt float %i.adh, %i.aci
  %i.adj = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.1347432.us.1.i, i64 0 ; 2 uses
  %i.adk = insertelement <2 x float> poison, float %.1343373.us.1.i, i64 0
  %i.adl = insertelement <2 x float> %i.adk, float %.1345396.us.1.i, i64 1 ; 3 uses
  br i1 %i.adi, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i, label %bb.am

bb.am:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.1.i
  %i.adm = fdiv fast float 1.000000e+00, %i.ace
  %i.adn = fadd fast float %i.aci, %i.adm
  %i.ado = fcmp fast ogt float %i.adh, %i.adn
  %i.adp = insertelement <2 x float> %i.acc, float %.1347432.us.1.i, i64 0
  br i1 %i.ado, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.adq = fmul fast float %i.ace, %i.adh
  %i.adr = fadd fast float %i.adq, %i.acg
  %i.ads = fmul fast float %i.adr, %i.adh
  %i.adt = insertelement <2 x float> %i.adj, float %i.ads, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread389.us.1.i: ; preds = %bb.ae
  %i.adu = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.abz)
  %i.adv = fadd fast <2 x float> %i.adu, splat (float 1.000000e+00)
  %i.adw = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.adv)
  %i.adx = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.adw)
  %i.ady = fmul fast <2 x float> %i.adx, %i.abz
  %i.adz = extractelement <2 x float> %i.acc, i64 0
  %i.aea = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.adz)
  %i.aeb = extractelement <2 x float> %i.acc, i64 1
  %i.aec = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.aeb)
  %i.aed = fadd fast float %i.aec, 1.000000e+00
  %i.aee = fadd fast float %i.aea, 1.000000e+00
  %i.aef = call fast float @llvm.log.f32(float %i.aed)
  %i.aeg = call fast float @llvm.log.f32(float %i.aee)
  %i.aeh = call fast float @llvm.tanh.f32(float %i.aef)
  %i.aei = call fast float @llvm.tanh.f32(float %i.aeg)
  %i.aej = insertelement <2 x float> poison, float %i.aei, i64 0
  %i.aek = insertelement <2 x float> %i.aej, float %i.aeh, i64 1
  %i.ael = fmul fast <2 x float> %i.aek, %i.acc
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread386.us.1.i: ; preds = %bb.ae
  %i.aem = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.abz, <2 x float> splat (float f0x42B0C0A5))
  %i.aen = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.aem, <2 x float> splat (float f0xC2B0C0A5))
  %i.aeo = fneg fast <2 x float> %i.aen
  %i.aep = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.aeo)
  %i.aeq = fadd fast <2 x float> %i.aep, splat (float 1.000000e+00)
  %i.aer = fdiv fast <2 x float> splat (float 1.000000e+00), %i.aeq
  %i.aes = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.acc, <2 x float> splat (float f0x42B0C0A5))
  %i.aet = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.aes, <2 x float> splat (float f0xC2B0C0A5))
  %i.aeu = fneg fast <2 x float> %i.aet
  %i.aev = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.aeu)
  %i.aew = fadd fast <2 x float> %i.aev, splat (float 1.000000e+00)
  %i.aex = fdiv fast <2 x float> splat (float 1.000000e+00), %i.aew
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread377.us.1.i: ; preds = %bb.ae
  %i.aey = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.aez = load float, ptr %i.aey, align 4, !tbaa !39 ; 3 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aey, i64 4
  %i.afb = load float, ptr %i.afa, align 4, !tbaa !39 ; 5 uses
  %i.afc = insertelement <2 x float> poison, float %i.aez, i64 0
  %i.afd = shufflevector <2 x float> %i.afc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afe = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.abz, <2 x float> %i.afd) ; 2 uses
  %i.aff = insertelement <2 x float> poison, float %i.afb, i64 0
  %i.afg = shufflevector <2 x float> %i.aff, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.afh = fcmp fast ogt <2 x float> %i.afe, %i.afg
  %i.afi = select <2 x i1> %i.afh, <2 x float> %i.afg, <2 x float> %i.afe ; 2 uses
  %i.afj = extractelement <2 x float> %i.acc, i64 0
  %.0346.us.1.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.afj, float %i.aez) ; 2 uses
  %i.afk = fcmp fast ogt float %.0346.us.1.i, %i.afb
  %.1347442.us.1.i = select i1 %i.afk, float %i.afb, float %.0346.us.1.i
  %i.afl = extractelement <2 x float> %i.acc, i64 1
  %.0348.us.1.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.afl, float %i.aez) ; 2 uses
  %i.afm = fcmp fast ogt float %.0348.us.1.i, %i.afb
  %i.afn = insertelement <2 x float> poison, float %.1347442.us.1.i, i64 0
  %i.afo = insertelement <2 x float> %i.afn, float %.0348.us.1.i, i64 1 ; 2 uses
  br i1 %i.afm, label %bb.ao, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i

bb.ao:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread377.us.1.i
  %i.afp = insertelement <2 x float> %i.afo, float %i.afb, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread383.us.1.i: ; preds = %bb.ae
  %i.afq = load ptr, ptr %15, align 8, !tbaa !18
  %i.afr = load float, ptr %i.afq, align 4, !tbaa !39
  %i.afs = fcmp fast ogt <2 x float> %i.abz, zeroinitializer
  %i.aft = insertelement <2 x float> poison, float %i.afr, i64 0
  %i.afu = shufflevector <2 x float> %i.aft, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.afv = select <2 x i1> %i.afs, <2 x float> splat (float 1.000000e+00), <2 x float> %i.afu
  %i.afw = fmul fast <2 x float> %i.afv, %i.abz
  %i.afx = fcmp fast ogt <2 x float> %i.acc, zeroinitializer
  %i.afy = select <2 x i1> %i.afx, <2 x float> splat (float 1.000000e+00), <2 x float> %i.afu
  %i.afz = fmul fast <2 x float> %i.afy, %i.acc
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread380.us.1.i: ; preds = %bb.ae
  %i.aga = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.abz, <2 x float> zeroinitializer)
  %i.agb = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.acc, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i: ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread380.us.1.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread383.us.1.i, %bb.ao, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread377.us.1.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread386.us.1.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread389.us.1.i, %bb.an, %bb.am, %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.1.i, %bb.ae
  %i.agc = phi <2 x float> [ %i.adj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.1.i ], [ %i.agb, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread380.us.1.i ], [ %i.afz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread383.us.1.i ], [ %i.afp, %bb.ao ], [ %i.afo, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread377.us.1.i ], [ %i.aex, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread386.us.1.i ], [ %i.ael, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread389.us.1.i ], [ %i.adt, %bb.an ], [ %i.adp, %bb.am ], [ %i.acc, %bb.ae ]
  %i.agd = phi <2 x float> [ %i.adl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.1.i ], [ %i.aga, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread380.us.1.i ], [ %i.afw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread383.us.1.i ], [ %i.afi, %bb.ao ], [ %i.afi, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread377.us.1.i ], [ %i.aer, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread386.us.1.i ], [ %i.ady, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread389.us.1.i ], [ %i.adl, %bb.an ], [ %i.adl, %bb.am ], [ %i.abz, %bb.ae ]
  %i.age = getelementptr inbounds nuw [2 x i8], ptr %.1324.us.i, i64 %i.cg ; 2 uses
  %i.agf = bitcast <2 x float> %i.agd to <2 x i32>
  %i.agg = lshr <2 x i32> %i.agf, splat (i32 16)
  %i.agh = trunc nuw <2 x i32> %i.agg to <2 x i16> ; 2 uses
  %i.agi = extractelement <2 x i16> %i.agh, i64 0
  store i16 %i.agi, ptr %.1324.us.i, align 2, !tbaa !394
  %i.agj = extractelement <2 x i16> %i.agh, i64 1
  store i16 %i.agj, ptr %i.age, align 2, !tbaa !394
  br i1 %i.wj, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i
  %i.agk = bitcast <2 x float> %i.agc to <2 x i32>
  %i.agl = getelementptr inbounds nuw i8, ptr %.1324.us.i, i64 2
  %i.agm = lshr <2 x i32> %i.agk, splat (i32 16)
  %i.agn = trunc nuw <2 x i32> %i.agm to <2 x i16> ; 2 uses
  %i.ago = extractelement <2 x i16> %i.agn, i64 0
  store i16 %i.ago, ptr %i.agl, align 2, !tbaa !394
  %i.agp = getelementptr inbounds nuw i8, ptr %i.age, i64 2
  %i.agq = extractelement <2 x i16> %i.agn, i64 1
  store i16 %i.agq, ptr %i.agp, align 2, !tbaa !394
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i, %bb.ad
  %indvars.iv.next591.i = add nuw nsw i64 %indvars.iv590.i, 1 ; 2 uses
  %exitcond594.not.i = icmp eq i64 %indvars.iv.next591.i, %wide.trip.count593.i
  br i1 %exitcond594.not.i, label %._crit_edge.us536.i, label %_ZN4ncnn3MatD2Ev.exit354.us.i, !llvm.loop !1716

._crit_edge.us536.i:                              ; preds = %bb.aq
  %indvars.iv.next596.i = add nuw nsw i64 %indvars.iv595.i, 2 ; 3 uses
  %i.agr = icmp slt i64 %indvars.iv.next596.i, %invariant.op.i
  br i1 %i.agr, label %bb.o, label %.preheader.loopexit.i, !llvm.loop !1717

.lr.ph532.split.i:                                ; preds = %.lr.ph532.i
  %19 = sub i32 %18, %.0340.lcssa.i
  %20 = and i32 %19, -2
  %21 = add i32 %.0340.lcssa.i, 2
  %i.ags = add i32 %21, %20
  br label %.preheader.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.us536.i
  %i.agt = trunc nsw i64 %indvars.iv.next596.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph532.split.i, %.preheader504.i
  %.1341.lcssa.i = phi i32 [ %.0340.lcssa.i, %.preheader504.i ], [ %i.ags, %.lr.ph532.split.i ], [ %i.agt, %.preheader.loopexit.i ] ; 2 uses
  %i.agu = icmp slt i32 %.1341.lcssa.i, %.sroa.speculated123
  br i1 %i.agu, label %.lr.ph556.i, label %_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit

.lr.ph556.i:                                      ; preds = %.preheader.i
  %.not.i82 = icmp eq ptr %.val, null
  %i.agv = icmp sgt i32 %.sroa.speculated119, 0
  %i.agw = sext i32 %.sroa.speculated119 to i64
  %i.agx = shl nsw i32 %.sroa.speculated119, 1
  %i.agy = sext i32 %i.agx to i64
  %i.agz = mul nsw i32 %.sroa.speculated119, 3
  %i.aha = sext i32 %i.agz to i64
  %i.ahb = shl nsw i32 %.sroa.speculated119, 2
  %i.ahc = sext i32 %i.ahb to i64                 ; 12 uses
  %i.ahd = sext i32 %i.cb to i64
  br i1 %i.agv, label %.lr.ph556.split.us.i, label %_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit

.lr.ph556.split.us.i:                             ; preds = %.lr.ph556.i
  %i.ahe = load i32, ptr %i.ao, align 4, !tbaa !75, !noalias !1718
  %i.ahf = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1718
  %i.ahg = load i64, ptr %i.ar, align 8, !tbaa !20, !noalias !1718
  %i.ahh = load i64, ptr %i.as, align 8, !tbaa !65, !noalias !1718 ; 2 uses
  %factor.op.mul561.i = mul i64 %i.ahh, %i.ahg
  %i.ahi = sext i32 %i.ahe to i64
  %factor.op.mul552.us.i = mul i64 %i.ahh, %i.ahi
  %i.ahj = sext i32 %.1341.lcssa.i to i64
  %wide.trip.count608.i = zext nneg i32 %.sroa.speculated119 to i64
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.us559.i, %.lr.ph556.split.us.i
  %indvars.iv610.i = phi i64 [ %indvars.iv.next611.i, %._crit_edge.us559.i ], [ %i.ahj, %.lr.ph556.split.us.i ] ; 3 uses
  %.pre623.i = add nsw i64 %indvars.iv610.i, %i.bp ; 2 uses
  br i1 %.not.i82, label %.lr.ph.us558.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ahk = getelementptr inbounds [4 x i8], ptr %.val, i64 %.pre623.i
  %i.ahl = load float, ptr %i.ahk, align 4, !tbaa !39
  br label %.lr.ph.us558.i

.lr.ph.us558.i:                                   ; preds = %bb.as, %bb.ar
  %i.ahm = phi fast float [ %i.ahl, %bb.as ], [ 0.000000e+00, %bb.ar ] ; 2 uses
  %i.ahn = trunc nsw i64 %indvars.iv610.i to i32
  %factor.op.mul549.reass.us.i = mul i32 %factor.op.mul513.i, %i.ahn
  %i.aho = sext i32 %factor.op.mul549.reass.us.i to i64
  %i.ahp = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.aho
  %.reass562.i = mul i64 %factor.op.mul561.i, %.pre623.i
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahf, i64 %.reass562.i
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %bb.bl, %.lr.ph.us558.i
  %indvars.iv605.i = phi i64 [ 0, %.lr.ph.us558.i ], [ %indvars.iv.next606.i, %bb.bl ] ; 3 uses
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %indvars.iv605.i ; 5 uses
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %i.agw ; 2 uses
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %i.agy ; 2 uses
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %i.aha ; 2 uses
  %i.ahv = load float, ptr %i.ahs, align 4, !tbaa !39 ; 2 uses
  %i.ahw = load float, ptr %i.aht, align 4, !tbaa !39 ; 2 uses
  %i.ahx = fsub fast float %i.ahv, %i.ahw
  %i.ahy = load float, ptr %i.ahu, align 4, !tbaa !39
  %i.ahz = fadd fast float %i.ahx, %i.ahy
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.ahs, i64 %i.ahc ; 2 uses
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.aht, i64 %i.ahc ; 2 uses
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.ahu, i64 %i.ahc ; 2 uses
  %i.aid = load float, ptr %i.aia, align 4, !tbaa !39 ; 2 uses
  %i.aie = load float, ptr %i.aib, align 4, !tbaa !39 ; 2 uses
  %i.aif = load float, ptr %i.aic, align 4, !tbaa !39
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.aia, i64 %i.ahc ; 2 uses
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %i.aib, i64 %i.ahc ; 2 uses
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.aic, i64 %i.ahc ; 2 uses
  %i.aij = load float, ptr %i.aig, align 4, !tbaa !39 ; 2 uses
  %i.aik = load float, ptr %i.aih, align 4, !tbaa !39 ; 2 uses
  %i.ail = fsub fast float %i.aij, %i.aik
  %i.aim = load float, ptr %i.aii, align 4, !tbaa !39
  %i.ain = fadd fast float %i.ail, %i.aim         ; 2 uses
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %i.ahc
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %i.aih, i64 %i.ahc
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.ahc
  %i.air = load float, ptr %i.aio, align 4, !tbaa !39 ; 2 uses
  %i.ais = load float, ptr %i.aip, align 4, !tbaa !39 ; 2 uses
  %i.ait = fsub fast float %i.air, %i.ais
  %i.aiu = load float, ptr %i.aiq, align 4, !tbaa !39
  %i.aiv = trunc i64 %indvars.iv605.i to i32
  %i.aiw = add i32 %.047153, %i.aiv               ; 2 uses
  %i.aix = sdiv i32 %i.aiw, %i.ci
  %i.aiy = srem i32 %i.aiw, %i.ci
  %i.aiz = shl nsw i32 %i.aix, 1                  ; 3 uses
  %i.aja = sext i32 %i.aiz to i64
  %.reass553.us.i = mul i64 %factor.op.mul552.us.i, %i.aja
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.ahq, i64 %.reass553.us.i
  %i.ajc = shl nsw i32 %i.aiy, 1                  ; 2 uses
  %i.ajd = sext i32 %i.ajc to i64
  %i.aje = getelementptr inbounds [2 x i8], ptr %i.ajb, i64 %i.ajd ; 4 uses
  %i.ajf = or disjoint i32 %i.ajc, 1
  %i.ajg = icmp slt i32 %i.ajf, %i.cb             ; 2 uses
  %.not348.us.i = icmp slt i32 %i.aiz, %i.cc
  br i1 %.not348.us.i, label %bb.at, label %bb.bc

bb.at:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %i.ahc ; 2 uses
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %i.ajh, i64 %i.ahc ; 2 uses
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.aji, i64 %i.ahc
  %i.ajk = load float, ptr %i.ajj, align 4, !tbaa !39
  %i.ajl = load float, ptr %i.aji, align 4, !tbaa !39
  %i.ajm = fadd fast float %i.aik, %i.aij
  %i.ajn = fadd fast float %i.ajm, %i.ajl         ; 2 uses
  %i.ajo = load float, ptr %i.ajh, align 4, !tbaa !39
  %i.ajp = load float, ptr %i.ahr, align 4, !tbaa !39
  %i.ajq = fadd fast float %i.aid, %i.ahm
  %i.ajr = fadd fast float %i.ajq, %i.aie
  %i.ajs = fadd fast float %i.ajr, %i.ajo         ; 2 uses
  %i.ajt = fadd fast float %i.ahw, %i.ahv
  %i.aju = fsub fast float %i.ajs, %i.ajn
  %i.ajv = insertelement <2 x float> poison, float %i.ajt, i64 0
  %i.ajw = insertelement <2 x float> %i.ajv, float %i.ais, i64 1
  %i.ajx = insertelement <2 x float> poison, float %i.ajp, i64 0
  %i.ajy = insertelement <2 x float> %i.ajx, float %i.air, i64 1
  %i.ajz = fadd fast <2 x float> %i.ajw, %i.ajy
  %i.aka = insertelement <2 x float> poison, float %i.ajn, i64 0
  %i.akb = insertelement <2 x float> %i.aka, float %i.ajk, i64 1
  %i.akc = fadd fast <2 x float> %i.ajz, %i.akb
  %i.akd = insertelement <2 x float> poison, float %i.ajs, i64 0
  %i.ake = insertelement <2 x float> %i.akd, float %i.aju, i64 1
  %i.akf = fadd fast <2 x float> %i.akc, %i.ake   ; 13 uses
  switch i32 %i.ca, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread479.us.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread482.us.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread476.us.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread485.us.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread488.us.i
    i32 6, label %bb.au
  ]

bb.au:                                            ; preds = %bb.at
  %i.akg = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.akh = load float, ptr %i.akg, align 4, !tbaa !39 ; 5 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akg, i64 4
  %i.akj = load float, ptr %i.aki, align 4, !tbaa !39 ; 3 uses
  %i.akk = fneg fast float %i.akj
  %i.akl = fdiv fast float %i.akk, %i.akh         ; 4 uses
  %i.akm = extractelement <2 x float> %i.akf, i64 0 ; 5 uses
  %i.akn = fcmp fast olt float %i.akm, %i.akl
  br i1 %i.akn, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread.us.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ako = fdiv fast float 1.000000e+00, %i.akh
  %i.akp = fadd fast float %i.akl, %i.ako
  %i.akq = fcmp fast ogt float %i.akm, %i.akp
  br i1 %i.akq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread.us.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.akr = fmul fast float %i.akh, %i.akm
  %i.aks = fadd fast float %i.akr, %i.akj
  %i.akt = fmul fast float %i.aks, %i.akm
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread.us.i: ; preds = %bb.aw, %bb.av, %bb.au
  %.1351472.us.i = phi float [ %i.akt, %bb.aw ], [ 0.000000e+00, %bb.au ], [ %i.akm, %bb.av ] ; 2 uses
  %i.aku = extractelement <2 x float> %i.akf, i64 1 ; 4 uses
  %i.akv = fcmp fast olt float %i.aku, %i.akl
  %i.akw = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.1351472.us.i, i64 0 ; 2 uses
  br i1 %i.akv, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i, label %bb.ax

bb.ax:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread.us.i
  %i.akx = fdiv fast float 1.000000e+00, %i.akh
  %i.aky = fadd fast float %i.akl, %i.akx
  %i.akz = fcmp fast ogt float %i.aku, %i.aky
  %i.ala = insertelement <2 x float> %i.akf, float %.1351472.us.i, i64 0
  br i1 %i.akz, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.alb = fmul fast float %i.akh, %i.aku
  %i.alc = fadd fast float %i.alb, %i.akj
  %i.ald = fmul fast float %i.alc, %i.aku
  %i.ale = insertelement <2 x float> %i.akw, float %i.ald, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread488.us.i: ; preds = %bb.at
  %i.alf = extractelement <2 x float> %i.akf, i64 0
  %i.alg = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.alf)
  %i.alh = extractelement <2 x float> %i.akf, i64 1
  %i.ali = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.alh)
  %i.alj = fadd fast float %i.ali, 1.000000e+00
  %i.alk = fadd fast float %i.alg, 1.000000e+00
  %i.all = call fast float @llvm.log.f32(float %i.alj)
  %i.alm = call fast float @llvm.log.f32(float %i.alk)
  %i.aln = call fast float @llvm.tanh.f32(float %i.all)
  %i.alo = call fast float @llvm.tanh.f32(float %i.alm)
  %i.alp = insertelement <2 x float> poison, float %i.alo, i64 0
  %i.alq = insertelement <2 x float> %i.alp, float %i.aln, i64 1
  %i.alr = fmul fast <2 x float> %i.alq, %i.akf
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
  %i.dk = phi i32 [ %.pre, %.lr.ph ], [ %i.ckh, %_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit ]
  %i.dl = phi i32 [ %i.db, %.lr.ph ], [ %i.ckj, %_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit ]
  %.047134 = phi i32 [ 0, %.lr.ph ], [ %i.cki, %_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit ] ; 6 uses
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
  %factor.op.mul1340.i = mul i32 %.sroa.speculated120, 36 ; 3 uses
  br i1 %i.dd, label %.lr.ph1343.i, label %.preheader1329.i

.lr.ph1343.i:                                     ; preds = %._crit_edge
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
  br i1 %i.dz, label %.lr.ph1343.split.us.preheader.i, label %.preheader1329.i

.lr.ph1343.split.us.preheader.i:                  ; preds = %.lr.ph1343.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated120 to i64
  br label %.lr.ph1343.split.us.i

.lr.ph1343.split.us.i:                            ; preds = %._crit_edge.us.i, %.lr.ph1343.split.us.preheader.i
  %indvars.iv1411.i = phi i64 [ 0, %.lr.ph1343.split.us.preheader.i ], [ %indvars.iv.next1412.i, %._crit_edge.us.i ] ; 3 uses
  br i1 %.not556.i, label %.lr.ph.us.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph1343.split.us.i
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv1411.i
  %i.ep = load <4 x float>, ptr %i.eo, align 1, !tbaa !254
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.e, %.lr.ph1343.split.us.i
  %i.eq = phi fast <4 x float> [ %i.ep, %bb.e ], [ zeroinitializer, %.lr.ph1343.split.us.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.er = trunc nuw nsw i64 %indvars.iv1411.i to i32 ; 2 uses
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul1340.i, %i.er
  %i.es = sext i32 %factor.op.mul.reass.us.i to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.es
  %i.eu = add i32 %i.cp, %i.er
  %i.ev = sdiv i32 %i.eu, %i.ds
  %i.ew = sext i32 %i.ev to i64
  br label %_ZN4ncnn3MatD2Ev.exit560.us.i

_ZN4ncnn3MatD2Ev.exit560.us.i:                    ; preds = %bb.v, %.lr.ph.us.i
  %indvars.iv1407.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next1408.i, %bb.v ] ; 3 uses
  %.idx1475.i.a = shl nuw nsw i64 %indvars.iv1407.i, 4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 %.idx1475.i.a ; 7 uses
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
  %i.ajv = shufflevector <4 x float> %i.aju, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajs, i64 4
  %i.ajx = load float, ptr %i.ajw, align 4, !tbaa !39
  %i.ajy = insertelement <4 x float> poison, float %i.ajx, i64 0
  %i.ajz = shufflevector <4 x float> %i.ajy, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.aka = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ne, <4 x float> nofpclass(nan inf) %i.ajv)
  %i.akb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aka, <4 x float> nofpclass(nan inf) %i.ajz)
  %i.akc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ni, <4 x float> nofpclass(nan inf) %i.ajv)
  %i.akd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.akc, <4 x float> nofpclass(nan inf) %i.ajz)
  %i.ake = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nm, <4 x float> nofpclass(nan inf) %i.ajv)
  %i.akf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ake, <4 x float> nofpclass(nan inf) %i.ajz)
  %i.akg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nr, <4 x float> nofpclass(nan inf) %i.ajv)
  %i.akh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.akg, <4 x float> nofpclass(nan inf) %i.ajz)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread712.us.i: ; preds = %bb.g
  %i.aki = load ptr, ptr %15, align 8, !tbaa !18
  %i.akj = load float, ptr %i.aki, align 4, !tbaa !39
  %i.akk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ne)
  %i.akl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ne)
  %i.akm = insertelement <4 x float> poison, float %i.akj, i64 0
  %i.akn = shufflevector <4 x float> %i.akm, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ako = fmul fast <4 x float> %i.akn, %i.akl
  %i.akp = fadd fast <4 x float> %i.ako, %i.akk
  %i.akq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ni)
  %i.akr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ni)
  %i.aks = fmul fast <4 x float> %i.akr, %i.akn
  %i.akt = fadd fast <4 x float> %i.aks, %i.akq
  %i.aku = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.nm)
  %i.akv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.nm)
  %i.akw = fmul fast <4 x float> %i.akv, %i.akn
  %i.akx = fadd fast <4 x float> %i.akw, %i.aku
  %i.aky = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.nr)
  %i.akz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.nr)
  %i.ala = fmul fast <4 x float> %i.akz, %i.akn
  %i.alb = fadd fast <4 x float> %i.ala, %i.aky
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread.us.i: ; preds = %bb.g
  %i.alc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ne, <4 x float> zeroinitializer)
  %i.ald = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ni, <4 x float> zeroinitializer)
  %i.ale = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nm, <4 x float> zeroinitializer)
  %i.alf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nr, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i: ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread712.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread715.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread718.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread721.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread724.us.i, %bb.g
  %.0.i576767.us.i = phi <4 x float> [ %i.oo, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread724.us.i ], [ %i.ale, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread.us.i ], [ %i.akx, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread712.us.i ], [ %i.akf, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread715.us.i ], [ %i.aik, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread718.us.i ], [ %i.aaq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread721.us.i ], [ %i.nm, %bb.g ] ; 2 uses
  %.0.i580711730765.us.i = phi <4 x float> [ %i.oe, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread724.us.i ], [ %i.alc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread.us.i ], [ %i.akp, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread712.us.i ], [ %i.akb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread715.us.i ], [ %i.afw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread718.us.i ], [ %i.ss, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread721.us.i ], [ %i.ne, %bb.g ] ; 2 uses
  %.0.i578732763.us.i = phi <4 x float> [ %i.oj, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread724.us.i ], [ %i.ald, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread.us.i ], [ %i.akt, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread712.us.i ], [ %i.akd, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread715.us.i ], [ %i.ahd, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread718.us.i ], [ %i.wr, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread721.us.i ], [ %i.ni, %bb.g ] ; 2 uses
  %.0.i.us.i = phi nsz <4 x float> [ %i.ot, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread724.us.i ], [ %i.alf, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread.us.i ], [ %i.alb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread712.us.i ], [ %i.akh, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread715.us.i ], [ %i.ajr, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread718.us.i ], [ %i.aep, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit581.thread721.us.i ], [ %i.nr, %bb.g ] ; 2 uses
  switch i32 %i.ds, label %bb.t [
    i32 4, label %bb.n
    i32 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i
  %i.alg = getelementptr inbounds nuw [2 x i8], ptr %.05381337.us.i, i64 %i.dv ; 4 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %.05381337.us.i, i64 %.idx.i ; 4 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %.05381337.us.i, i64 %.idx558.i ; 4 uses
  %i.alj = bitcast <4 x float> %.0.i580711730765.us.i to <8 x i16> ; 4 uses
  %i.alk = extractelement <8 x i16> %i.alj, i64 1
  store i16 %i.alk, ptr %.05381337.us.i, align 2, !tbaa !394
  %i.all = extractelement <8 x i16> %i.alj, i64 3
  store i16 %i.all, ptr %i.alg, align 2, !tbaa !394
  %i.alm = extractelement <8 x i16> %i.alj, i64 5
  store i16 %i.alm, ptr %i.alh, align 2, !tbaa !394
  %i.aln = extractelement <8 x i16> %i.alj, i64 7
  store i16 %i.aln, ptr %i.ali, align 2, !tbaa !394
  br i1 %i.mf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.alo = bitcast <4 x float> %.0.i578732763.us.i to <8 x i16> ; 4 uses
  %i.alp = extractelement <8 x i16> %i.alo, i64 1
  %i.alq = getelementptr inbounds nuw i8, ptr %.05381337.us.i, i64 2
  store i16 %i.alp, ptr %i.alq, align 2, !tbaa !394
  %i.alr = extractelement <8 x i16> %i.alo, i64 3
  %i.als = getelementptr inbounds nuw i8, ptr %i.alg, i64 2
  store i16 %i.alr, ptr %i.als, align 2, !tbaa !394
  %i.alt = extractelement <8 x i16> %i.alo, i64 5
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alh, i64 2
  store i16 %i.alt, ptr %i.alu, align 2, !tbaa !394
  %i.alv = extractelement <8 x i16> %i.alo, i64 7
  %i.alw = getelementptr inbounds nuw i8, ptr %i.ali, i64 2
  store i16 %i.alv, ptr %i.alw, align 2, !tbaa !394
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %i.mh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.alx = bitcast <4 x float> %.0.i576767.us.i to <8 x i16> ; 4 uses
  %i.aly = extractelement <8 x i16> %i.alx, i64 1
  %i.alz = getelementptr inbounds nuw i8, ptr %.05381337.us.i, i64 4
  store i16 %i.aly, ptr %i.alz, align 2, !tbaa !394
  %i.ama = extractelement <8 x i16> %i.alx, i64 3
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alg, i64 4
  store i16 %i.ama, ptr %i.amb, align 2, !tbaa !394
  %i.amc = extractelement <8 x i16> %i.alx, i64 5
  %i.amd = getelementptr inbounds nuw i8, ptr %i.alh, i64 4
  store i16 %i.amc, ptr %i.amd, align 2, !tbaa !394
  %i.ame = extractelement <8 x i16> %i.alx, i64 7
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ali, i64 4
  store i16 %i.ame, ptr %i.amf, align 2, !tbaa !394
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %i.mj, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.amg = bitcast <4 x float> %.0.i.us.i to <8 x i16> ; 4 uses
  %i.amh = extractelement <8 x i16> %i.amg, i64 1
  %i.ami = getelementptr inbounds nuw i8, ptr %.05381337.us.i, i64 6
  store i16 %i.amh, ptr %i.ami, align 2, !tbaa !394
  %i.amj = extractelement <8 x i16> %i.amg, i64 3
  %i.amk = getelementptr inbounds nuw i8, ptr %i.alg, i64 6
  store i16 %i.amj, ptr %i.amk, align 2, !tbaa !394
  %i.aml = extractelement <8 x i16> %i.amg, i64 5
  %i.amm = getelementptr inbounds nuw i8, ptr %i.alh, i64 6
  store i16 %i.aml, ptr %i.amm, align 2, !tbaa !394
  %i.amn = extractelement <8 x i16> %i.amg, i64 7
  %i.amo = getelementptr inbounds nuw i8, ptr %i.ali, i64 6
  store i16 %i.amn, ptr %i.amo, align 2, !tbaa !394
  br label %bb.t

bb.n:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i
  %i.amp = bitcast <4 x float> %.0.i580711730765.us.i to <8 x i16>
  %i.amq = shufflevector <8 x i16> %i.amp, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.amr = bitcast <8 x i16> %i.amq to <4 x float>
  %i.ams = shufflevector <4 x float> %i.amr, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.amt = bitcast <4 x float> %i.ams to <2 x i64>
  %i.amu = extractelement <2 x i64> %i.amt, i64 0
  store i64 %i.amu, ptr %.05381337.us.i, align 1, !tbaa !254
  br i1 %i.mf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.amv = getelementptr inbounds nuw i8, ptr %.05381337.us.i, i64 8
  %i.amw = bitcast <4 x float> %.0.i578732763.us.i to <8 x i16>
  %i.amx = shufflevector <8 x i16> %i.amw, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.amy = bitcast <8 x i16> %i.amx to <4 x float>
  %i.amz = shufflevector <4 x float> %i.amy, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ana = bitcast <4 x float> %i.amz to <2 x i64>
  %i.anb = extractelement <2 x i64> %i.ana, i64 0
  store i64 %i.anb, ptr %i.amv, align 1, !tbaa !254
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %i.mh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.anc = getelementptr inbounds nuw i8, ptr %.05381337.us.i, i64 16
  %i.and = bitcast <4 x float> %.0.i576767.us.i to <8 x i16>
  %i.ane = shufflevector <8 x i16> %i.and, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.anf = bitcast <8 x i16> %i.ane to <4 x float>
  %i.ang = shufflevector <4 x float> %i.anf, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.anh = bitcast <4 x float> %i.ang to <2 x i64>
  %i.ani = extractelement <2 x i64> %i.anh, i64 0
  store i64 %i.ani, ptr %i.anc, align 1, !tbaa !254
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %i.mj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.anj = getelementptr inbounds nuw i8, ptr %.05381337.us.i, i64 24
  %i.ank = bitcast <4 x float> %.0.i.us.i to <8 x i16>
  %i.anl = shufflevector <8 x i16> %i.ank, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.anm = bitcast <8 x i16> %i.anl to <4 x float>
  %i.ann = shufflevector <4 x float> %i.anm, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ano = bitcast <4 x float> %i.ann to <2 x i64>
  %i.anp = extractelement <2 x i64> %i.ano, i64 0
  store i64 %i.anp, ptr %i.anj, align 1, !tbaa !254
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.m, %bb.l, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i
  %i.anq = getelementptr inbounds [2 x i8], ptr %.05381337.us.i, i64 %i.en
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.f
  %.1539.us.i = phi ptr [ %.05381337.us.i, %bb.f ], [ %i.anq, %bb.t ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %bb.v, label %bb.f, !llvm.loop !1767

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next1408.i = add nuw nsw i64 %indvars.iv1407.i, 1 ; 2 uses
  %exitcond1410.not.i = icmp eq i64 %indvars.iv.next1408.i, %wide.trip.count.i
  br i1 %exitcond1410.not.i, label %._crit_edge.us.i, label %_ZN4ncnn3MatD2Ev.exit560.us.i, !llvm.loop !1768

._crit_edge.us.i:                                 ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %indvars.iv.next1412.i = add nuw nsw i64 %indvars.iv1411.i, 4 ; 3 uses
  %i.anr = or disjoint i64 %indvars.iv.next1412.i, 3
  %i.ans = icmp samesign ult i64 %i.anr, %i.dg
  br i1 %i.ans, label %.lr.ph1343.split.us.i, label %.preheader1329.loopexit.i, !llvm.loop !1769

.preheader1329.loopexit.i:                        ; preds = %._crit_edge.us.i
  %i.ant = trunc nuw nsw i64 %indvars.iv.next1412.i to i32
  br label %.preheader1329.i

.preheader1329.i:                                 ; preds = %.lr.ph1343.i, %.preheader1329.loopexit.i, %._crit_edge
  %.0526.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.ant, %.preheader1329.loopexit.i ], [ %i.df, %.lr.ph1343.i ] ; 5 uses
  %i.anu = or disjoint i32 %.0526.lcssa.i, 1
  %i.anv = icmp slt i32 %i.anu, %.sroa.speculated124
  br i1 %i.anv, label %.lr.ph1361.i, label %.preheader.i

.lr.ph1361.i:                                     ; preds = %.preheader1329.i
  %.not554.i = icmp eq ptr %.val81, null
  %i.anw = icmp sgt i32 %.sroa.speculated120, 0
  %i.anx = shl nsw i32 %.sroa.speculated120, 1
  %i.any = sext i32 %i.anx to i64
  %i.anz = shl nsw i32 %.sroa.speculated120, 2
  %i.aoa = sext i32 %i.anz to i64
  %i.aob = mul nsw i32 %.sroa.speculated120, 6
  %i.aoc = sext i32 %i.aob to i64
  %i.aod = shl nsw i32 %.sroa.speculated120, 3
  %i.aoe = sext i32 %i.aod to i64
  %i.aof = mul nsw i32 %.sroa.speculated120, 10
  %i.aog = sext i32 %i.aof to i64
  %i.aoh = mul nsw i32 %.sroa.speculated120, 12
  %i.aoi = sext i32 %i.aoh to i64                 ; 30 uses
  %i.aoj = sext i32 %i.dq to i64
  br i1 %i.anw, label %.lr.ph1361.split.us.i, label %.lr.ph1361.split.i

.lr.ph1361.split.us.i:                            ; preds = %.lr.ph1361.i
  %i.aok = load i32, ptr %i.ap, align 4, !tbaa !75, !noalias !1770
  %i.aol = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1770
  %i.aom = load i64, ptr %i.as, align 8, !tbaa !20, !noalias !1770
  %i.aon = load i64, ptr %i.aw, align 8, !tbaa !65, !noalias !1770 ; 2 uses
  %factor.op.mul.i = mul i64 %i.aon, %i.aom
  %i.aoo = sext i32 %i.aok to i64
  %factor.op.mul1357.us.i = mul i64 %i.aon, %i.aoo
  %i.aop = sext i32 %.0526.lcssa.i to i64
  %wide.trip.count1426.i = zext nneg i32 %.sroa.speculated120 to i64
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.us1365.i, %.lr.ph1361.split.us.i
  %indvars.iv1428.i = phi i64 [ %indvars.iv.next1429.i, %._crit_edge.us1365.i ], [ %i.aop, %.lr.ph1361.split.us.i ] ; 3 uses
  %.pre.i = add nsw i64 %indvars.iv1428.i, %i.de  ; 2 uses
  br i1 %.not554.i, label %.thread.us.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aoq = getelementptr [4 x i8], ptr %.val81, i64 %.pre.i
  %i.aor = load <2 x float>, ptr %i.aoq, align 4, !tbaa !39
  br label %.thread.us.i

.thread.us.i:                                     ; preds = %bb.x, %bb.w
  %i.aos = phi <2 x float> [ %i.aor, %bb.x ], [ zeroinitializer, %bb.w ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.aot = trunc nsw i64 %indvars.iv1428.i to i32
  %factor.op.mul.reass.us1363.i = mul i32 %factor.op.mul1340.i, %i.aot
  %i.aou = sext i32 %factor.op.mul.reass.us1363.i to i64
  %i.aov = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.aou
  %.reass.i = mul i64 %factor.op.mul.i, %.pre.i
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aol, i64 %.reass.i
  br label %_ZN4ncnn3MatD2Ev.exit559.us.i

_ZN4ncnn3MatD2Ev.exit559.us.i:                    ; preds = %bb.az, %.thread.us.i
  %indvars.iv1423.i = phi i64 [ 0, %.thread.us.i ], [ %indvars.iv.next1424.i, %bb.az ] ; 3 uses
  %.idx1476.i = shl nuw nsw i64 %indvars.iv1423.i, 3
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aov, i64 %.idx1476.i ; 7 uses
  %i.aoy = getelementptr inbounds nuw [4 x i8], ptr %i.aox, i64 %i.aog ; 2 uses
  %i.aoz = getelementptr inbounds nuw [4 x i8], ptr %i.aox, i64 %i.aoe ; 2 uses
  %i.apa = getelementptr inbounds nuw [4 x i8], ptr %i.aox, i64 %i.aoc ; 2 uses
  %i.apb = getelementptr inbounds nuw [4 x i8], ptr %i.aox, i64 %i.aoa ; 2 uses
  %i.apc = getelementptr inbounds nuw [4 x i8], ptr %i.aox, i64 %i.any ; 2 uses
  %i.apd = load <2 x float>, ptr %i.apc, align 4, !tbaa !39 ; 2 uses
  %i.ape = load <2 x float>, ptr %i.apb, align 4, !tbaa !39 ; 2 uses
  %i.apf = fadd fast <2 x float> %i.ape, %i.apd   ; 2 uses
  %i.apg = load <2 x float>, ptr %i.apa, align 4, !tbaa !39 ; 2 uses
  %i.aph = load <2 x float>, ptr %i.aoz, align 4, !tbaa !39 ; 2 uses
  %i.api = fadd fast <2 x float> %i.aph, %i.apg   ; 2 uses
  %i.apj = load <2 x float>, ptr %i.aox, align 4, !tbaa !39
  %i.apk = fadd fast <2 x float> %i.api, %i.apf
  %i.apl = fadd fast <2 x float> %i.apk, %i.apj
  store <2 x float> %i.apl, ptr %i.b, align 16, !tbaa !39
  %i.apm = fsub fast <2 x float> %i.apd, %i.ape   ; 2 uses
  %i.apn = fsub fast <2 x float> %i.apg, %i.aph   ; 2 uses
  %i.apo = fmul fast <2 x float> %i.apm, splat (float f0x3F3504F3)
  %i.app = fmul fast <2 x float> %i.apn, splat (float f0x3FB504F3)
  %i.apq = fadd fast <2 x float> %i.app, %i.apo
  store <2 x float> %i.apq, ptr %i.br, align 16, !tbaa !39
  %i.apr = fmul fast <2 x float> %i.apf, splat (float 5.000000e-01)
  %i.aps = fmul fast <2 x float> %i.api, splat (float 2.000000e+00)
  %i.apt = fadd fast <2 x float> %i.aps, %i.apr
  store <2 x float> %i.apt, ptr %i.bs, align 16, !tbaa !39
  %i.apu = load <2 x float>, ptr %i.aoy, align 4, !tbaa !39
  %i.apv = fmul fast <2 x float> %i.apm, splat (float f0x3EB504F3)
  %i.apw = fadd fast <2 x float> %i.apv, %i.apu
  %i.apx = fmul fast <2 x float> %i.apn, splat (float f0x403504F3)
  %i.apy = fadd fast <2 x float> %i.apw, %i.apx
  store <2 x float> %i.apy, ptr %i.bt, align 16, !tbaa !39
  %i.apz = getelementptr inbounds nuw [4 x i8], ptr %i.aox, i64 %i.aoi ; 2 uses
  %i.aqa = getelementptr inbounds nuw [4 x i8], ptr %i.apc, i64 %i.aoi ; 2 uses
  %i.aqb = getelementptr inbounds nuw [4 x i8], ptr %i.apb, i64 %i.aoi ; 2 uses
  %i.aqc = getelementptr inbounds nuw [4 x i8], ptr %i.apa, i64 %i.aoi ; 2 uses
  %i.aqd = getelementptr inbounds nuw [4 x i8], ptr %i.aoz, i64 %i.aoi ; 2 uses
  %i.aqe = getelementptr inbounds nuw [4 x i8], ptr %i.aoy, i64 %i.aoi ; 2 uses
  %i.aqf = load <2 x float>, ptr %i.aqa, align 4, !tbaa !39 ; 2 uses
  %i.aqg = load <2 x float>, ptr %i.aqb, align 4, !tbaa !39 ; 2 uses
  %i.aqh = fadd fast <2 x float> %i.aqg, %i.aqf   ; 2 uses
  %i.aqi = load <2 x float>, ptr %i.aqc, align 4, !tbaa !39 ; 2 uses
  %i.aqj = load <2 x float>, ptr %i.aqd, align 4, !tbaa !39 ; 2 uses
  %i.aqk = fadd fast <2 x float> %i.aqj, %i.aqi   ; 2 uses
  %i.aql = load <2 x float>, ptr %i.apz, align 4, !tbaa !39
  %i.aqm = fadd fast <2 x float> %i.aqk, %i.aqh
  %i.aqn = fadd fast <2 x float> %i.aqm, %i.aql
  store <2 x float> %i.aqn, ptr %i.bu, align 8, !tbaa !39
  %i.aqo = fsub fast <2 x float> %i.aqf, %i.aqg   ; 2 uses
  %i.aqp = fsub fast <2 x float> %i.aqi, %i.aqj   ; 2 uses
  %i.aqq = fmul fast <2 x float> %i.aqo, splat (float f0x3F3504F3)
  %i.aqr = fmul fast <2 x float> %i.aqp, splat (float f0x3FB504F3)
  %i.aqs = fadd fast <2 x float> %i.aqr, %i.aqq
  store <2 x float> %i.aqs, ptr %i.bv, align 8, !tbaa !39
  %i.aqt = fmul fast <2 x float> %i.aqh, splat (float 5.000000e-01)
  %i.aqu = fmul fast <2 x float> %i.aqk, splat (float 2.000000e+00)
  %i.aqv = fadd fast <2 x float> %i.aqu, %i.aqt
  store <2 x float> %i.aqv, ptr %i.bw, align 8, !tbaa !39
  %i.aqw = load <2 x float>, ptr %i.aqe, align 4, !tbaa !39
  %i.aqx = fmul fast <2 x float> %i.aqo, splat (float f0x3EB504F3)
  %i.aqy = fadd fast <2 x float> %i.aqx, %i.aqw
  %i.aqz = fmul fast <2 x float> %i.aqp, splat (float f0x403504F3)
  %i.ara = fadd fast <2 x float> %i.aqy, %i.aqz
  store <2 x float> %i.ara, ptr %i.bx, align 8, !tbaa !39
  %i.arb = getelementptr inbounds nuw [4 x i8], ptr %i.apz, i64 %i.aoi ; 2 uses
  %i.arc = getelementptr inbounds nuw [4 x i8], ptr %i.aqa, i64 %i.aoi ; 2 uses
  %i.ard = getelementptr inbounds nuw [4 x i8], ptr %i.aqb, i64 %i.aoi ; 2 uses
  %i.are = getelementptr inbounds nuw [4 x i8], ptr %i.aqc, i64 %i.aoi ; 2 uses
  %i.arf = getelementptr inbounds nuw [4 x i8], ptr %i.aqd, i64 %i.aoi ; 2 uses
  %i.arg = getelementptr inbounds nuw [4 x i8], ptr %i.aqe, i64 %i.aoi ; 2 uses
  %i.arh = load <2 x float>, ptr %i.arc, align 4, !tbaa !39 ; 2 uses
  %i.ari = load <2 x float>, ptr %i.ard, align 4, !tbaa !39 ; 2 uses
  %i.arj = fadd fast <2 x float> %i.ari, %i.arh   ; 2 uses
  %i.ark = load <2 x float>, ptr %i.are, align 4, !tbaa !39 ; 2 uses
  %i.arl = load <2 x float>, ptr %i.arf, align 4, !tbaa !39 ; 2 uses
  %i.arm = fadd fast <2 x float> %i.arl, %i.ark   ; 2 uses
  %i.arn = load <2 x float>, ptr %i.arb, align 4, !tbaa !39
  %i.aro = fadd fast <2 x float> %i.arm, %i.arj
  %i.arp = fadd fast <2 x float> %i.aro, %i.arn
  store <2 x float> %i.arp, ptr %i.by, align 16, !tbaa !39
  %i.arq = fsub fast <2 x float> %i.arh, %i.ari   ; 2 uses
  %i.arr = fsub fast <2 x float> %i.ark, %i.arl   ; 2 uses
  %i.ars = fmul fast <2 x float> %i.arq, splat (float f0x3F3504F3)
  %i.art = fmul fast <2 x float> %i.arr, splat (float f0x3FB504F3)
  %i.aru = fadd fast <2 x float> %i.art, %i.ars
  store <2 x float> %i.aru, ptr %i.bz, align 16, !tbaa !39
  %i.arv = fmul fast <2 x float> %i.arj, splat (float 5.000000e-01)
  %i.arw = fmul fast <2 x float> %i.arm, splat (float 2.000000e+00)
  %i.arx = fadd fast <2 x float> %i.arw, %i.arv
  store <2 x float> %i.arx, ptr %i.ca, align 16, !tbaa !39
  %i.ary = load <2 x float>, ptr %i.arg, align 4, !tbaa !39
  %i.arz = fmul fast <2 x float> %i.arq, splat (float f0x3EB504F3)
  %i.asa = fadd fast <2 x float> %i.arz, %i.ary
  %i.asb = fmul fast <2 x float> %i.arr, splat (float f0x403504F3)
  %i.asc = fadd fast <2 x float> %i.asa, %i.asb
  store <2 x float> %i.asc, ptr %i.cb, align 16, !tbaa !39
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %i.arb, i64 %i.aoi ; 2 uses
  %i.ase = getelementptr inbounds nuw [4 x i8], ptr %i.arc, i64 %i.aoi ; 2 uses
  %i.asf = getelementptr inbounds nuw [4 x i8], ptr %i.ard, i64 %i.aoi ; 2 uses
  %i.asg = getelementptr inbounds nuw [4 x i8], ptr %i.are, i64 %i.aoi ; 2 uses
  %i.ash = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %i.aoi ; 2 uses
  %i.asi = getelementptr inbounds nuw [4 x i8], ptr %i.arg, i64 %i.aoi ; 2 uses
  %i.asj = load <2 x float>, ptr %i.ase, align 4, !tbaa !39 ; 2 uses
  %i.ask = load <2 x float>, ptr %i.asf, align 4, !tbaa !39 ; 2 uses
  %i.asl = fadd fast <2 x float> %i.ask, %i.asj   ; 2 uses
  %i.asm = load <2 x float>, ptr %i.asg, align 4, !tbaa !39 ; 2 uses
  %i.asn = load <2 x float>, ptr %i.ash, align 4, !tbaa !39 ; 2 uses
  %i.aso = fadd fast <2 x float> %i.asn, %i.asm   ; 2 uses
  %i.asp = load <2 x float>, ptr %i.asd, align 4, !tbaa !39
  %i.asq = fadd fast <2 x float> %i.aso, %i.asl
  %i.asr = fadd fast <2 x float> %i.asq, %i.asp
  store <2 x float> %i.asr, ptr %i.cc, align 8, !tbaa !39
  %i.ass = fsub fast <2 x float> %i.asj, %i.ask   ; 2 uses
  %i.ast = fsub fast <2 x float> %i.asm, %i.asn   ; 2 uses
  %i.asu = fmul fast <2 x float> %i.ass, splat (float f0x3F3504F3)
  %i.asv = fmul fast <2 x float> %i.ast, splat (float f0x3FB504F3)
  %i.asw = fadd fast <2 x float> %i.asv, %i.asu
  store <2 x float> %i.asw, ptr %i.cd, align 8, !tbaa !39
  %i.asx = fmul fast <2 x float> %i.asl, splat (float 5.000000e-01)
  %i.asy = fmul fast <2 x float> %i.aso, splat (float 2.000000e+00)
  %i.asz = fadd fast <2 x float> %i.asy, %i.asx
  store <2 x float> %i.asz, ptr %i.ce, align 8, !tbaa !39
  %i.ata = load <2 x float>, ptr %i.asi, align 4, !tbaa !39
  %i.atb = fmul fast <2 x float> %i.ass, splat (float f0x3EB504F3)
  %i.atc = fadd fast <2 x float> %i.atb, %i.ata
  %i.atd = fmul fast <2 x float> %i.ast, splat (float f0x403504F3)
  %i.ate = fadd fast <2 x float> %i.atc, %i.atd
  store <2 x float> %i.ate, ptr %i.cf, align 8, !tbaa !39
  %i.atf = getelementptr inbounds nuw [4 x i8], ptr %i.asd, i64 %i.aoi ; 2 uses
  %i.atg = getelementptr inbounds nuw [4 x i8], ptr %i.ase, i64 %i.aoi ; 2 uses
  %i.ath = getelementptr inbounds nuw [4 x i8], ptr %i.asf, i64 %i.aoi ; 2 uses
  %i.ati = getelementptr inbounds nuw [4 x i8], ptr %i.asg, i64 %i.aoi ; 2 uses
  %i.atj = getelementptr inbounds nuw [4 x i8], ptr %i.ash, i64 %i.aoi ; 2 uses
  %i.atk = getelementptr inbounds nuw [4 x i8], ptr %i.asi, i64 %i.aoi ; 2 uses
  %i.atl = load <2 x float>, ptr %i.atg, align 4, !tbaa !39 ; 2 uses
  %i.atm = load <2 x float>, ptr %i.ath, align 4, !tbaa !39 ; 2 uses
  %i.atn = fadd fast <2 x float> %i.atm, %i.atl   ; 2 uses
  %i.ato = load <2 x float>, ptr %i.ati, align 4, !tbaa !39 ; 2 uses
  %i.atp = load <2 x float>, ptr %i.atj, align 4, !tbaa !39 ; 2 uses
  %i.atq = fadd fast <2 x float> %i.atp, %i.ato   ; 2 uses
  %i.atr = load <2 x float>, ptr %i.atf, align 4, !tbaa !39
  %i.ats = fadd fast <2 x float> %i.atq, %i.atn
end_hunk_23
begin_hunk_24_@_ZN4ncnnL26conv3x3s1_winograd43_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.15:bb.a
  %i.bag = fmul fast float %i.baf, %i.azr
  %i.bah = insertelement <2 x float> %i.azt, float %i.bag, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread821.us.i: ; preds = %bb.z
  %i.bai = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.awx)
  %i.baj = fadd fast <2 x float> %i.bai, splat (float 1.000000e+00)
  %i.bak = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.baj)
  %i.bal = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.bak)
  %i.bam = fmul fast <2 x float> %i.bal, %i.awx
  %i.ban = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.awr)
  %i.bao = fadd fast <2 x float> %i.ban, splat (float 1.000000e+00)
  %i.bap = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.bao)
  %i.baq = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.bap)
  %i.bar = fmul fast <2 x float> %i.baq, %i.awr
  %i.bas = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.axb)
  %i.bat = fadd fast <2 x float> %i.bas, splat (float 1.000000e+00)
  %i.bau = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.bat)
  %i.bav = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.bau)
  %i.baw = fmul fast <2 x float> %i.bav, %i.axb
  %i.bax = extractelement <2 x float> %i.axg, i64 0
  %i.bay = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bax)
  %i.baz = extractelement <2 x float> %i.axg, i64 1
  %i.bba = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.baz)
  %i.bbb = fadd fast float %i.bba, 1.000000e+00
  %i.bbc = fadd fast float %i.bay, 1.000000e+00
  %i.bbd = call fast float @llvm.log.f32(float %i.bbb)
  %i.bbe = call fast float @llvm.log.f32(float %i.bbc)
  %i.bbf = call fast float @llvm.tanh.f32(float %i.bbd)
  %i.bbg = call fast float @llvm.tanh.f32(float %i.bbe)
  %i.bbh = insertelement <2 x float> poison, float %i.bbg, i64 0
  %i.bbi = insertelement <2 x float> %i.bbh, float %i.bbf, i64 1
  %i.bbj = fmul fast <2 x float> %i.bbi, %i.axg
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread818.us.i: ; preds = %bb.z
  %i.bbk = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.awx, <2 x float> splat (float f0x42B0C0A5))
  %i.bbl = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbk, <2 x float> splat (float f0xC2B0C0A5))
  %i.bbm = fneg fast <2 x float> %i.bbl
  %i.bbn = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bbm)
  %i.bbo = fadd fast <2 x float> %i.bbn, splat (float 1.000000e+00)
  %i.bbp = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bbo
  %i.bbq = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.awr, <2 x float> splat (float f0x42B0C0A5))
  %i.bbr = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbq, <2 x float> splat (float f0xC2B0C0A5))
  %i.bbs = fneg fast <2 x float> %i.bbr
  %i.bbt = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bbs)
  %i.bbu = fadd fast <2 x float> %i.bbt, splat (float 1.000000e+00)
  %i.bbv = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bbu
  %i.bbw = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.axb, <2 x float> splat (float f0x42B0C0A5))
  %i.bbx = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbw, <2 x float> splat (float f0xC2B0C0A5))
  %i.bby = fneg fast <2 x float> %i.bbx
  %i.bbz = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bby)
  %i.bca = fadd fast <2 x float> %i.bbz, splat (float 1.000000e+00)
  %i.bcb = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bca
  %i.bcc = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.axg, <2 x float> splat (float f0x42B0C0A5))
  %i.bcd = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bcc, <2 x float> splat (float f0xC2B0C0A5))
  %i.bce = fneg fast <2 x float> %i.bcd
  %i.bcf = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bce)
  %i.bcg = fadd fast <2 x float> %i.bcf, splat (float 1.000000e+00)
  %i.bch = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bcg
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread809.us.i: ; preds = %bb.z
  %i.bci = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.bcj = load float, ptr %i.bci, align 4, !tbaa !39 ; 3 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bci, i64 4
  %i.bcl = load float, ptr %i.bck, align 4, !tbaa !39 ; 5 uses
  %i.bcm = insertelement <2 x float> poison, float %i.bcj, i64 0
  %i.bcn = shufflevector <2 x float> %i.bcm, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bco = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.awx, <2 x float> %i.bcn) ; 2 uses
  %i.bcp = insertelement <2 x float> poison, float %i.bcl, i64 0
  %i.bcq = shufflevector <2 x float> %i.bcp, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.bcr = fcmp fast ogt <2 x float> %i.bco, %i.bcq
  %i.bcs = select <2 x i1> %i.bcr, <2 x float> %i.bcq, <2 x float> %i.bco ; 2 uses
  %i.bct = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.awr, <2 x float> %i.bcn) ; 2 uses
  %i.bcu = fcmp fast ogt <2 x float> %i.bct, %i.bcq
  %i.bcv = select <2 x i1> %i.bcu, <2 x float> %i.bcq, <2 x float> %i.bct ; 2 uses
  %i.bcw = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.axb, <2 x float> %i.bcn) ; 2 uses
  %i.bcx = fcmp fast ogt <2 x float> %i.bcw, %i.bcq
  %i.bcy = select <2 x i1> %i.bcx, <2 x float> %i.bcq, <2 x float> %i.bcw ; 2 uses
  %i.bcz = extractelement <2 x float> %i.axg, i64 0
  %.0697.us.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bcz, float %i.bcj) ; 2 uses
  %i.bda = fcmp fast ogt float %.0697.us.i, %i.bcl
  %.16981156.us.i = select i1 %i.bda, float %i.bcl, float %.0697.us.i
  %i.bdb = extractelement <2 x float> %i.axg, i64 1
  %.0699.us.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bdb, float %i.bcj) ; 2 uses
  %i.bdc = fcmp fast ogt float %.0699.us.i, %i.bcl
  %i.bdd = insertelement <2 x float> poison, float %.16981156.us.i, i64 0
  %i.bde = insertelement <2 x float> %i.bdd, float %.0699.us.i, i64 1 ; 2 uses
  br i1 %i.bdc, label %bb.ar, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i

bb.ar:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread809.us.i
  %i.bdf = insertelement <2 x float> %i.bde, float %i.bcl, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread815.us.i: ; preds = %bb.z
  %i.bdg = load ptr, ptr %15, align 8, !tbaa !18
  %i.bdh = load float, ptr %i.bdg, align 4, !tbaa !39
  %i.bdi = fcmp fast ogt <2 x float> %i.awx, zeroinitializer
  %i.bdj = insertelement <2 x float> poison, float %i.bdh, i64 0
  %i.bdk = shufflevector <2 x float> %i.bdj, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bdl = select <2 x i1> %i.bdi, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bdk
  %i.bdm = fmul fast <2 x float> %i.bdl, %i.awx
  %i.bdn = fcmp fast ogt <2 x float> %i.awr, zeroinitializer
  %i.bdo = select <2 x i1> %i.bdn, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bdk
  %i.bdp = fmul fast <2 x float> %i.bdo, %i.awr
  %i.bdq = fcmp fast ogt <2 x float> %i.axb, zeroinitializer
  %i.bdr = select <2 x i1> %i.bdq, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bdk
  %i.bds = fmul fast <2 x float> %i.bdr, %i.axb
  %i.bdt = fcmp fast ogt <2 x float> %i.axg, zeroinitializer
  %i.bdu = select <2 x i1> %i.bdt, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bdk
  %i.bdv = fmul fast <2 x float> %i.bdu, %i.axg
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread812.us.i: ; preds = %bb.z
  %i.bdw = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.awx, <2 x float> zeroinitializer)
  %i.bdx = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.awr, <2 x float> zeroinitializer)
  %i.bdy = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.axb, <2 x float> zeroinitializer)
  %i.bdz = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.axg, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i:   ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread812.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread815.us.i, %bb.ar, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread809.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread818.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread821.us.i, %bb.aq, %bb.ap, %_ZL13activation_ssfiRKN4ncnn3MatE.exit586.thread.us.i, %bb.z
  %i.bea = phi <2 x float> [ %i.azt, %_ZL13activation_ssfiRKN4ncnn3MatE.exit586.thread.us.i ], [ %i.bdz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread812.us.i ], [ %i.bdv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread815.us.i ], [ %i.bdf, %bb.ar ], [ %i.bde, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread809.us.i ], [ %i.bch, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread818.us.i ], [ %i.bbj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread821.us.i ], [ %i.bah, %bb.aq ], [ %i.bad, %bb.ap ], [ %i.axg, %bb.z ]
  %i.beb = phi <2 x float> [ %i.azv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit586.thread.us.i ], [ %i.bdy, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread812.us.i ], [ %i.bds, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread815.us.i ], [ %i.bcy, %bb.ar ], [ %i.bcy, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread809.us.i ], [ %i.bcb, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread818.us.i ], [ %i.baw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread821.us.i ], [ %i.azv, %bb.aq ], [ %i.azv, %bb.ap ], [ %i.axb, %bb.z ]
  %i.bec = phi <2 x float> [ %i.azx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit586.thread.us.i ], [ %i.bdx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread812.us.i ], [ %i.bdp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread815.us.i ], [ %i.bcv, %bb.ar ], [ %i.bcv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread809.us.i ], [ %i.bbv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread818.us.i ], [ %i.bar, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread821.us.i ], [ %i.azx, %bb.aq ], [ %i.azx, %bb.ap ], [ %i.awr, %bb.z ]
  %i.bed = phi <2 x float> [ %i.azz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit586.thread.us.i ], [ %i.bdw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread812.us.i ], [ %i.bdm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread815.us.i ], [ %i.bcs, %bb.ar ], [ %i.bcs, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread809.us.i ], [ %i.bbp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread818.us.i ], [ %i.bam, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread821.us.i ], [ %i.azz, %bb.aq ], [ %i.azz, %bb.ap ], [ %i.awx, %bb.z ]
  %i.bee = getelementptr inbounds nuw [2 x i8], ptr %.05241354.us.i, i64 %i.dv ; 4 uses
  %i.bef = bitcast <2 x float> %i.bed to <2 x i32>
  %i.beg = lshr <2 x i32> %i.bef, splat (i32 16)
  %i.beh = trunc nuw <2 x i32> %i.beg to <2 x i16> ; 2 uses
  %i.bei = extractelement <2 x i16> %i.beh, i64 0
  store i16 %i.bei, ptr %.05241354.us.i, align 2, !tbaa !394
  %i.bej = extractelement <2 x i16> %i.beh, i64 1
  store i16 %i.bej, ptr %i.bee, align 2, !tbaa !394
  br i1 %i.avu, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i
  %i.bek = bitcast <2 x float> %i.bec to <2 x i32>
  %i.bel = getelementptr inbounds nuw i8, ptr %.05241354.us.i, i64 2
  %i.bem = lshr <2 x i32> %i.bek, splat (i32 16)
  %i.ben = trunc nuw <2 x i32> %i.bem to <2 x i16> ; 2 uses
  %i.beo = extractelement <2 x i16> %i.ben, i64 0
  store i16 %i.beo, ptr %i.bel, align 2, !tbaa !394
  %i.bep = getelementptr inbounds nuw i8, ptr %i.bee, i64 2
  %i.beq = extractelement <2 x i16> %i.ben, i64 1
  store i16 %i.beq, ptr %i.bep, align 2, !tbaa !394
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i
  br i1 %i.avw, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ber = bitcast <2 x float> %i.beb to <2 x i32>
  %i.bes = getelementptr inbounds nuw i8, ptr %.05241354.us.i, i64 4
  %i.bet = lshr <2 x i32> %i.ber, splat (i32 16)
  %i.beu = trunc nuw <2 x i32> %i.bet to <2 x i16> ; 2 uses
  %i.bev = extractelement <2 x i16> %i.beu, i64 0
  store i16 %i.bev, ptr %i.bes, align 2, !tbaa !394
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bee, i64 4
  %i.bex = extractelement <2 x i16> %i.beu, i64 1
  store i16 %i.bex, ptr %i.bew, align 2, !tbaa !394
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  br i1 %i.avy, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.bey = bitcast <2 x float> %i.bea to <2 x i32>
  %i.bez = getelementptr inbounds nuw i8, ptr %.05241354.us.i, i64 6
  %i.bfa = lshr <2 x i32> %i.bey, splat (i32 16)
  %i.bfb = trunc nuw <2 x i32> %i.bfa to <2 x i16> ; 2 uses
  %i.bfc = extractelement <2 x i16> %i.bfb, i64 0
  store i16 %i.bfc, ptr %i.bez, align 2, !tbaa !394
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bee, i64 6
  %i.bfe = extractelement <2 x i16> %i.bfb, i64 1
  store i16 %i.bfe, ptr %i.bfd, align 2, !tbaa !394
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.bff = getelementptr inbounds [2 x i8], ptr %.05241354.us.i, i64 %i.aoj
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.y
  %.1525.us.i = phi ptr [ %.05241354.us.i, %bb.y ], [ %i.bff, %bb.ax ]
  %indvars.iv.next1420.i = add nuw nsw i64 %indvars.iv1419.i, 1 ; 2 uses
  %exitcond1422.not.i = icmp eq i64 %indvars.iv.next1420.i, 4
  br i1 %exitcond1422.not.i, label %bb.az, label %bb.y, !llvm.loop !1773

bb.az:                                            ; preds = %bb.ay
  %indvars.iv.next1424.i = add nuw nsw i64 %indvars.iv1423.i, 1 ; 2 uses
  %exitcond1427.not.i = icmp eq i64 %indvars.iv.next1424.i, %wide.trip.count1426.i
  br i1 %exitcond1427.not.i, label %._crit_edge.us1365.i, label %_ZN4ncnn3MatD2Ev.exit559.us.i, !llvm.loop !1774

._crit_edge.us1365.i:                             ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %indvars.iv.next1429.i = add nuw nsw i64 %indvars.iv1428.i, 2 ; 3 uses
  %i.bfg = icmp slt i64 %indvars.iv.next1429.i, %invariant.op.i
  br i1 %i.bfg, label %bb.w, label %.preheader.loopexit.i, !llvm.loop !1775

.lr.ph1361.split.i:                               ; preds = %.lr.ph1361.i
  %19 = sub i32 %18, %.0526.lcssa.i
  %20 = and i32 %19, -2
  %21 = add i32 %.0526.lcssa.i, 2
  %i.bfh = add i32 %21, %20
  br label %.preheader.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.us1365.i
  %i.bfi = trunc nsw i64 %indvars.iv.next1429.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph1361.split.i, %.preheader1329.i
  %.1527.lcssa.i = phi i32 [ %.0526.lcssa.i, %.preheader1329.i ], [ %i.bfh, %.lr.ph1361.split.i ], [ %i.bfi, %.preheader.loopexit.i ] ; 2 uses
  %i.bfj = icmp slt i32 %.1527.lcssa.i, %.sroa.speculated124
  br i1 %i.bfj, label %.lr.ph1387.i, label %_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit

.lr.ph1387.i:                                     ; preds = %.preheader.i
  %.not.i83 = icmp eq ptr %.val81, null
  %i.bfk = icmp sgt i32 %.sroa.speculated120, 0
  %i.bfl = sext i32 %.sroa.speculated120 to i64
  %i.bfm = shl nsw i32 %.sroa.speculated120, 1
  %i.bfn = sext i32 %i.bfm to i64
  %i.bfo = mul nsw i32 %.sroa.speculated120, 3
  %i.bfp = sext i32 %i.bfo to i64
  %i.bfq = shl nsw i32 %.sroa.speculated120, 2
  %i.bfr = sext i32 %i.bfq to i64
  %i.bfs = mul nsw i32 %.sroa.speculated120, 5
  %i.bft = sext i32 %i.bfs to i64
  %i.bfu = mul nsw i32 %.sroa.speculated120, 6
  %i.bfv = sext i32 %i.bfu to i64                 ; 30 uses
  %i.bfw = sext i32 %i.dq to i64                  ; 3 uses
  br i1 %i.bfk, label %.lr.ph1387.split.us.i, label %_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit

.lr.ph1387.split.us.i:                            ; preds = %.lr.ph1387.i
  %i.bfx = load i32, ptr %i.ap, align 4, !tbaa !75, !noalias !1776
  %i.bfy = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1776
  %i.bfz = load i64, ptr %i.as, align 8, !tbaa !20, !noalias !1776
  %i.bga = load i64, ptr %i.aw, align 8, !tbaa !65, !noalias !1776 ; 2 uses
  %factor.op.mul1392.i = mul i64 %i.bga, %i.bfz
  %i.bgb = sext i32 %i.bfx to i64
  %factor.op.mul1383.us.i = mul i64 %i.bga, %i.bgb
  %i.bgc = sext i32 %.1527.lcssa.i to i64
  %wide.trip.count1442.i = zext nneg i32 %.sroa.speculated120 to i64
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.us1390.i, %.lr.ph1387.split.us.i
  %indvars.iv1444.i = phi i64 [ %indvars.iv.next1445.i, %._crit_edge.us1390.i ], [ %i.bgc, %.lr.ph1387.split.us.i ] ; 3 uses
  %.pre1449.i = add nsw i64 %indvars.iv1444.i, %i.de ; 2 uses
  br i1 %.not.i83, label %.lr.ph.us1389.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.bgd = getelementptr inbounds [4 x i8], ptr %.val81, i64 %.pre1449.i
  %i.bge = load float, ptr %i.bgd, align 4, !tbaa !39
  br label %.lr.ph.us1389.i

.lr.ph.us1389.i:                                  ; preds = %bb.bb, %bb.ba
  %i.bgf = phi fast float [ %i.bge, %bb.bb ], [ 0.000000e+00, %bb.ba ] ; 2 uses
  %i.bgg = trunc nsw i64 %indvars.iv1444.i to i32
  %factor.op.mul1380.reass.us.i = mul i32 %factor.op.mul1340.i, %i.bgg
  %i.bgh = sext i32 %factor.op.mul1380.reass.us.i to i64
  %i.bgi = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.bgh
  %.reass1393.i = mul i64 %factor.op.mul1392.i, %.pre1449.i
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bfy, i64 %.reass1393.i
  %i.bgk = insertelement <4 x float> poison, float %i.bgf, i64 0 ; 4 uses
  %i.bgl = insertelement <2 x float> poison, float %i.bgf, i64 0 ; 4 uses
  %i.bgm = shufflevector <2 x float> %i.bgl, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bgn = shufflevector <2 x float> %i.bgl, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bgo = shufflevector <2 x float> %i.bgl, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bgp = shufflevector <2 x float> %i.bgl, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %bb.du, %.lr.ph.us1389.i
  %indvars.iv1439.i = phi i64 [ 0, %.lr.ph.us1389.i ], [ %indvars.iv.next1440.i, %bb.du ] ; 3 uses
  %i.bgq = getelementptr inbounds nuw [4 x i8], ptr %i.bgi, i64 %indvars.iv1439.i ; 7 uses
  %i.bgr = getelementptr inbounds nuw [4 x i8], ptr %i.bgq, i64 %i.bfl ; 2 uses
  %i.bgs = getelementptr inbounds nuw [4 x i8], ptr %i.bgq, i64 %i.bfn ; 2 uses
  %i.bgt = getelementptr inbounds nuw [4 x i8], ptr %i.bgq, i64 %i.bfp ; 2 uses
  %i.bgu = getelementptr inbounds nuw [4 x i8], ptr %i.bgq, i64 %i.bfr ; 2 uses
  %i.bgv = getelementptr inbounds nuw [4 x i8], ptr %i.bgq, i64 %i.bft ; 2 uses
  %i.bgw = load float, ptr %i.bgr, align 4, !tbaa !39 ; 2 uses
  %i.bgx = load float, ptr %i.bgs, align 4, !tbaa !39 ; 2 uses
  %i.bgy = load float, ptr %i.bgt, align 4, !tbaa !39 ; 2 uses
  %i.bgz = load float, ptr %i.bgq, align 4, !tbaa !39
  %i.bha = load float, ptr %i.bgv, align 4, !tbaa !39
  %i.bhb = getelementptr inbounds nuw [4 x i8], ptr %i.bgq, i64 %i.bfv ; 2 uses
  %i.bhc = getelementptr inbounds nuw [4 x i8], ptr %i.bgr, i64 %i.bfv ; 2 uses
  %i.bhd = getelementptr inbounds nuw [4 x i8], ptr %i.bgs, i64 %i.bfv ; 2 uses
  %i.bhe = getelementptr inbounds nuw [4 x i8], ptr %i.bgt, i64 %i.bfv ; 2 uses
  %i.bhf = getelementptr inbounds nuw [4 x i8], ptr %i.bgu, i64 %i.bfv ; 2 uses
  %i.bhg = getelementptr inbounds nuw [4 x i8], ptr %i.bgv, i64 %i.bfv ; 2 uses
  %i.bhh = load float, ptr %i.bhc, align 4, !tbaa !39 ; 2 uses
  %i.bhi = load float, ptr %i.bhd, align 4, !tbaa !39 ; 2 uses
  %i.bhj = load float, ptr %i.bhe, align 4, !tbaa !39 ; 2 uses
  %i.bhk = load float, ptr %i.bhb, align 4, !tbaa !39
  %i.bhl = load float, ptr %i.bhg, align 4, !tbaa !39
  %i.bhm = getelementptr inbounds nuw [4 x i8], ptr %i.bhb, i64 %i.bfv ; 2 uses
  %i.bhn = getelementptr inbounds nuw [4 x i8], ptr %i.bhc, i64 %i.bfv ; 2 uses
  %i.bho = getelementptr inbounds nuw [4 x i8], ptr %i.bhd, i64 %i.bfv ; 2 uses
  %i.bhp = getelementptr inbounds nuw [4 x i8], ptr %i.bhe, i64 %i.bfv ; 2 uses
  %i.bhq = getelementptr inbounds nuw [4 x i8], ptr %i.bhf, i64 %i.bfv ; 2 uses
  %i.bhr = getelementptr inbounds nuw [4 x i8], ptr %i.bhg, i64 %i.bfv ; 2 uses
  %i.bhs = load float, ptr %i.bhn, align 4, !tbaa !39 ; 2 uses
  %i.bht = load float, ptr %i.bho, align 4, !tbaa !39 ; 2 uses
  %i.bhu = load float, ptr %i.bhp, align 4, !tbaa !39 ; 2 uses
  %i.bhv = load float, ptr %i.bhm, align 4, !tbaa !39
  %i.bhw = load float, ptr %i.bhr, align 4, !tbaa !39
  %i.bhx = getelementptr inbounds nuw [4 x i8], ptr %i.bhm, i64 %i.bfv ; 2 uses
  %i.bhy = getelementptr inbounds nuw [4 x i8], ptr %i.bhn, i64 %i.bfv ; 2 uses
  %i.bhz = getelementptr inbounds nuw [4 x i8], ptr %i.bho, i64 %i.bfv ; 2 uses
  %i.bia = getelementptr inbounds nuw [4 x i8], ptr %i.bhp, i64 %i.bfv ; 2 uses
  %i.bib = getelementptr inbounds nuw [4 x i8], ptr %i.bhq, i64 %i.bfv ; 2 uses
  %i.bic = getelementptr inbounds nuw [4 x i8], ptr %i.bhr, i64 %i.bfv ; 2 uses
  %i.bid = load float, ptr %i.bhy, align 4, !tbaa !39 ; 2 uses
  %i.bie = load float, ptr %i.bhz, align 4, !tbaa !39 ; 2 uses
  %i.bif = load float, ptr %i.bia, align 4, !tbaa !39 ; 2 uses
  %i.big = load float, ptr %i.bib, align 4, !tbaa !39 ; 2 uses
  %i.bih = load float, ptr %i.bhx, align 4, !tbaa !39
  %i.bii = insertelement <4 x float> poison, float %i.bgx, i64 0
  %i.bij = insertelement <4 x float> %i.bii, float %i.bhi, i64 1
  %i.bik = insertelement <4 x float> %i.bij, float %i.bht, i64 2
  %i.bil = insertelement <4 x float> %i.bik, float %i.bie, i64 3
  %i.bim = insertelement <4 x float> poison, float %i.bgw, i64 0
  %i.bin = insertelement <4 x float> %i.bim, float %i.bhh, i64 1
  %i.bio = insertelement <4 x float> %i.bin, float %i.bhs, i64 2
  %i.bip = insertelement <4 x float> %i.bio, float %i.bid, i64 3
  %i.biq = fadd fast <4 x float> %i.bil, %i.bip   ; 3 uses
  %i.bir = insertelement <4 x float> poison, float %i.bgy, i64 0
  %i.bis = insertelement <4 x float> %i.bir, float %i.bhj, i64 1
  %i.bit = insertelement <4 x float> %i.bis, float %i.bhu, i64 2
  %i.biu = insertelement <4 x float> %i.bit, float %i.bif, i64 3
  %i.biv = insertelement <4 x float> poison, float %i.bgz, i64 0
  %i.biw = insertelement <4 x float> %i.biv, float %i.bhk, i64 1
  %i.bix = insertelement <4 x float> %i.biw, float %i.bhv, i64 2
  %i.biy = insertelement <4 x float> %i.bix, float %i.bih, i64 3
  %i.biz = fadd fast <4 x float> %i.biy, %i.biq
  %i.bja = load float, ptr %i.bic, align 4, !tbaa !39
  %i.bjb = getelementptr inbounds nuw [4 x i8], ptr %i.bhx, i64 %i.bfv ; 2 uses
  %i.bjc = getelementptr inbounds nuw [4 x i8], ptr %i.bhy, i64 %i.bfv ; 2 uses
  %i.bjd = getelementptr inbounds nuw [4 x i8], ptr %i.bhz, i64 %i.bfv ; 2 uses
  %i.bje = getelementptr inbounds nuw [4 x i8], ptr %i.bia, i64 %i.bfv ; 2 uses
  %i.bjf = getelementptr inbounds nuw [4 x i8], ptr %i.bib, i64 %i.bfv ; 2 uses
  %i.bjg = getelementptr inbounds nuw [4 x i8], ptr %i.bic, i64 %i.bfv ; 2 uses
  %i.bjh = load float, ptr %i.bjc, align 4, !tbaa !39 ; 2 uses
  %i.bji = load float, ptr %i.bjd, align 4, !tbaa !39 ; 2 uses
  %i.bjj = load float, ptr %i.bje, align 4, !tbaa !39 ; 2 uses
  %i.bjk = load float, ptr %i.bjf, align 4, !tbaa !39 ; 2 uses
  %i.bjl = load float, ptr %i.bjb, align 4, !tbaa !39
  %i.bjm = load float, ptr %i.bjg, align 4, !tbaa !39
  %i.bjn = getelementptr inbounds nuw [4 x i8], ptr %i.bjb, i64 %i.bfv
  %i.bjo = getelementptr inbounds nuw [4 x i8], ptr %i.bjc, i64 %i.bfv
  %i.bjp = getelementptr inbounds nuw [4 x i8], ptr %i.bjd, i64 %i.bfv
  %i.bjq = getelementptr inbounds nuw [4 x i8], ptr %i.bje, i64 %i.bfv
  %i.bjr = getelementptr inbounds nuw [4 x i8], ptr %i.bjf, i64 %i.bfv
  %i.bjs = getelementptr inbounds nuw [4 x i8], ptr %i.bjg, i64 %i.bfv
  %i.bjt = load float, ptr %i.bjo, align 4, !tbaa !39 ; 2 uses
  %i.bju = load float, ptr %i.bjp, align 4, !tbaa !39 ; 2 uses
  %i.bjv = load float, ptr %i.bjq, align 4, !tbaa !39 ; 2 uses
  %i.bjw = load float, ptr %i.bjr, align 4, !tbaa !39 ; 2 uses
  %i.bjx = load float, ptr %i.bjn, align 4, !tbaa !39
  %i.bjy = load float, ptr %i.bgu, align 4, !tbaa !39 ; 2 uses
  %i.bjz = load float, ptr %i.bhf, align 4, !tbaa !39 ; 2 uses
  %i.bka = load float, ptr %i.bhq, align 4, !tbaa !39 ; 2 uses
  %i.bkb = insertelement <4 x float> poison, float %i.bjy, i64 0
  %i.bkc = insertelement <4 x float> %i.bkb, float %i.bjz, i64 1
  %i.bkd = insertelement <4 x float> %i.bkc, float %i.bka, i64 2
  %i.bke = insertelement <4 x float> %i.bkd, float %i.big, i64 3
  %i.bkf = fadd fast <4 x float> %i.bke, %i.biu   ; 3 uses
  %i.bkg = fadd fast <4 x float> %i.biz, %i.bkf   ; 3 uses
  %i.bkh = fadd fast float %i.bji, %i.bjh         ; 2 uses
  %i.bki = fadd fast float %i.bjk, %i.bjj         ; 2 uses
  %i.bkj = fadd fast float %i.bjl, %i.bkh
  %i.bkk = fadd fast float %i.bkj, %i.bki         ; 2 uses
  %i.bkl = insertelement <4 x float> %i.biq, float %i.bkh, i64 0
  %i.bkm = fmul fast <4 x float> %i.bkl, splat (float 5.000000e-01)
  %i.bkn = insertelement <4 x float> %i.bkf, float %i.bki, i64 0
  %i.bko = fmul fast <4 x float> %i.bkn, splat (float 2.000000e+00)
  %i.bkp = fadd fast <4 x float> %i.bko, %i.bkm   ; 3 uses
  %i.bkq = shufflevector <4 x float> %i.bkp, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.bkr = fsub fast float %i.bjt, %i.bju         ; 2 uses
  %i.bks = fsub fast float %i.bjh, %i.bji         ; 2 uses
  %i.bkt = fsub fast float %i.bid, %i.bie         ; 2 uses
  %i.bku = fmul fast float %i.bkt, f0x3EB504F3
  %i.bkv = fadd fast float %i.bku, %i.bja
  %i.bkw = fsub fast float %i.bjv, %i.bjw         ; 2 uses
  %i.bkx = fsub fast float %i.bjj, %i.bjk         ; 2 uses
  %i.bky = fsub fast float %i.bif, %i.big         ; 2 uses
  %i.bkz = fmul fast float %i.bky, f0x403504F3
  %i.bla = fadd fast float %i.bkv, %i.bkz         ; 2 uses
  %i.blb = fmul fast float %i.bks, f0x3EB504F3
  %i.blc = fadd fast float %i.blb, %i.bjm
  %i.bld = fmul fast float %i.bkx, f0x403504F3
  %i.ble = fadd fast float %i.blc, %i.bld         ; 2 uses
  %i.blf = shufflevector <4 x float> %i.biq, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.blg = insertelement <4 x float> %i.blf, float %i.bkt, i64 0
  %i.blh = insertelement <4 x float> %i.blg, float %i.bks, i64 1
  %i.bli = insertelement <4 x float> %i.blh, float %i.bkr, i64 2
  %i.blj = fmul fast <4 x float> %i.bli, <float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3, float 5.000000e-01>
  %i.blk = shufflevector <4 x float> %i.bkf, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.bll = insertelement <4 x float> %i.blk, float %i.bky, i64 0
  %i.blm = insertelement <4 x float> %i.bll, float %i.bkx, i64 1
  %i.bln = insertelement <4 x float> %i.blm, float %i.bkw, i64 2
  %i.blo = fmul fast <4 x float> %i.bln, <float f0x3FB504F3, float f0x3FB504F3, float f0x3FB504F3, float 2.000000e+00>
  %i.blp = fadd fast <4 x float> %i.blo, %i.blj   ; 4 uses
  %i.blq = insertelement <4 x float> poison, float %i.bju, i64 0
  %i.blr = insertelement <4 x float> %i.blq, float %i.bgw, i64 1
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
  %invariant.op2637.i.a = add nsw i64 %i.cd, -1
  %.pre = load i32, ptr %7, align 4, !tbaa !67
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit, %_ZN4ncnn3Mat7channelEi.exit79
  %i.ce = add nsw i32 %.048136, 1
  %i.cf = load i32, ptr %i.e, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.048136, %i.cf
  br i1 %.not.not, label %bb.c, label %._crit_edge139

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit
  %i.cg = phi i32 [ %.pre, %.lr.ph ], [ %i.ccs, %_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit ]
  %i.ch = phi i32 [ %i.bx, %.lr.ph ], [ %i.ccu, %_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit ]
  %.047134 = phi i32 [ 0, %.lr.ph ], [ %i.cct, %_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit ] ; 6 uses
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
  %factor.op.mul2484.i = shl i32 %.sroa.speculated120, 6 ; 3 uses
  br i1 %i.bz, label %.lr.ph2487.i, label %.preheader2471.i

.lr.ph2487.i:                                     ; preds = %._crit_edge
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
  br i1 %i.cv, label %.lr.ph2487.split.us.preheader.i, label %.preheader2471.i

.lr.ph2487.split.us.preheader.i:                  ; preds = %.lr.ph2487.i
  %i.do = sext i32 %i.cn to i64
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated120 to i64
  br label %.lr.ph2487.split.us.i

.lr.ph2487.split.us.i:                            ; preds = %._crit_edge.us.i, %.lr.ph2487.split.us.preheader.i
  %indvars.iv2562.i = phi i64 [ 0, %.lr.ph2487.split.us.preheader.i ], [ %indvars.iv.next2563.i, %._crit_edge.us.i ] ; 3 uses
  br i1 %.not791.i, label %.lr.ph.us.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph2487.split.us.i
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv2562.i
  %i.dq = load <4 x float>, ptr %i.dp, align 1, !tbaa !254
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.e, %.lr.ph2487.split.us.i
  %i.dr = phi fast <4 x float> [ %i.dq, %bb.e ], [ zeroinitializer, %.lr.ph2487.split.us.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ds = trunc i64 %indvars.iv2562.i to i32      ; 2 uses
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul2484.i, %i.ds
  %i.dt = sext i32 %factor.op.mul.reass.us.i to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.dt
  %i.dv = add i32 %i.bl, %i.ds
  %i.dw = sdiv i32 %i.dv, %i.co
  %i.dx = sext i32 %i.dw to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.af, %.lr.ph.us.i
  %indvars.iv2558.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next2559.i, %bb.af ] ; 3 uses
  %.idx2634.i.a = shl nuw nsw i64 %indvars.iv2558.i, 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 %.idx2634.i.a ; 8 uses
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
  %.07602480.us.i = phi ptr [ %i.fy, %bb.g ], [ %i.dy, %bb.f ] ; 2 uses
  %.07612479.us.i = phi ptr [ %i.fz, %bb.g ], [ %i.dz, %bb.f ] ; 2 uses
  %.07622478.us.i = phi ptr [ %i.ga, %bb.g ], [ %i.ea, %bb.f ] ; 2 uses
  %.07632477.us.i = phi ptr [ %i.gb, %bb.g ], [ %i.eb, %bb.f ] ; 2 uses
  %.07642476.us.i = phi ptr [ %i.gc, %bb.g ], [ %i.ec, %bb.f ] ; 2 uses
  %.07652475.us.i = phi ptr [ %i.gd, %bb.g ], [ %i.ed, %bb.f ] ; 2 uses
  %.07662474.us.i = phi ptr [ %i.ge, %bb.g ], [ %i.ee, %bb.f ] ; 2 uses
  %.07802473.us.i = phi ptr [ %i.gf, %bb.g ], [ %i.ef, %bb.f ] ; 2 uses
  %i.eg = load <4 x float>, ptr %.07602480.us.i, align 16, !tbaa !254
  %i.eh = load <4 x float>, ptr %.07612479.us.i, align 16, !tbaa !254 ; 2 uses
  %i.ei = load <4 x float>, ptr %.07622478.us.i, align 16, !tbaa !254 ; 2 uses
  %i.ej = load <4 x float>, ptr %.07632477.us.i, align 16, !tbaa !254 ; 2 uses
  %i.ek = load <4 x float>, ptr %.07642476.us.i, align 16, !tbaa !254 ; 2 uses
  %i.el = load <4 x float>, ptr %.07652475.us.i, align 16, !tbaa !254 ; 2 uses
  %i.em = load <4 x float>, ptr %.07662474.us.i, align 16, !tbaa !254 ; 2 uses
  %i.en = load <4 x float>, ptr %.07802473.us.i, align 16, !tbaa !254
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
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.07602480.us.i, i64 %i.dl
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.07612479.us.i, i64 %i.dl
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.07622478.us.i, i64 %i.dl
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.07632477.us.i, i64 %i.dl
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.07642476.us.i, i64 %i.dl
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.07652475.us.i, i64 %i.dl
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.07662474.us.i, i64 %i.dl
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.07802473.us.i, i64 %i.dl
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %_ZN4ncnn3MatD2Ev.exit795.us.i, label %bb.g, !llvm.loop !1826

_ZN4ncnn3MatD2Ev.exit795.us.i:                    ; preds = %bb.g
  %i.gg = trunc i64 %indvars.iv2558.i to i32
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
  %i.asq = extractelement <8 x i16> %i.asm, i64 7
  store i16 %i.asq, ptr %i.asl, align 2, !tbaa !394
  br i1 %i.hc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.asr = bitcast <4 x float> %.0.i8171073110411541211.us.i to <8 x i16> ; 4 uses
  %i.ass = extractelement <8 x i16> %i.asr, i64 1
  %i.ast = getelementptr inbounds nuw i8, ptr %.07782481.us.i, i64 2
  store i16 %i.ass, ptr %i.ast, align 2, !tbaa !394
  %i.asu = extractelement <8 x i16> %i.asr, i64 3
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asj, i64 2
  store i16 %i.asu, ptr %i.asv, align 2, !tbaa !394
  %i.asw = extractelement <8 x i16> %i.asr, i64 5
  %i.asx = getelementptr inbounds nuw i8, ptr %i.ask, i64 2
  store i16 %i.asw, ptr %i.asx, align 2, !tbaa !394
  %i.asy = extractelement <8 x i16> %i.asr, i64 7
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asl, i64 2
  store i16 %i.asy, ptr %i.asz, align 2, !tbaa !394
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %i.he, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ata = bitcast <4 x float> %.0.i815110811501215.us.i to <8 x i16> ; 4 uses
  %i.atb = extractelement <8 x i16> %i.ata, i64 1
  %i.atc = getelementptr inbounds nuw i8, ptr %.07782481.us.i, i64 4
  store i16 %i.atb, ptr %i.atc, align 2, !tbaa !394
  %i.atd = extractelement <8 x i16> %i.ata, i64 3
  %i.ate = getelementptr inbounds nuw i8, ptr %i.asj, i64 4
  store i16 %i.atd, ptr %i.ate, align 2, !tbaa !394
  %i.atf = extractelement <8 x i16> %i.ata, i64 5
  %i.atg = getelementptr inbounds nuw i8, ptr %i.ask, i64 4
  store i16 %i.atf, ptr %i.atg, align 2, !tbaa !394
  %i.ath = extractelement <8 x i16> %i.ata, i64 7
  %i.ati = getelementptr inbounds nuw i8, ptr %i.asl, i64 4
  store i16 %i.ath, ptr %i.ati, align 2, !tbaa !394
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %i.hg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.atj = bitcast <4 x float> %.0.i81311561209.us.i to <8 x i16> ; 4 uses
  %i.atk = extractelement <8 x i16> %i.atj, i64 1
  %i.atl = getelementptr inbounds nuw i8, ptr %.07782481.us.i, i64 6
  store i16 %i.atk, ptr %i.atl, align 2, !tbaa !394
  %i.atm = extractelement <8 x i16> %i.atj, i64 3
  %i.atn = getelementptr inbounds nuw i8, ptr %i.asj, i64 6
  store i16 %i.atm, ptr %i.atn, align 2, !tbaa !394
  %i.ato = extractelement <8 x i16> %i.atj, i64 5
  %i.atp = getelementptr inbounds nuw i8, ptr %i.ask, i64 6
  store i16 %i.ato, ptr %i.atp, align 2, !tbaa !394
  %i.atq = extractelement <8 x i16> %i.atj, i64 7
  %i.atr = getelementptr inbounds nuw i8, ptr %i.asl, i64 6
  store i16 %i.atq, ptr %i.atr, align 2, !tbaa !394
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %i.hi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ats = bitcast <4 x float> %.0.i8111217.us.i to <8 x i16> ; 4 uses
  %i.att = extractelement <8 x i16> %i.ats, i64 1
  %i.atu = getelementptr inbounds nuw i8, ptr %.07782481.us.i, i64 8
  store i16 %i.att, ptr %i.atu, align 2, !tbaa !394
  %i.atv = extractelement <8 x i16> %i.ats, i64 3
  %i.atw = getelementptr inbounds nuw i8, ptr %i.asj, i64 8
  store i16 %i.atv, ptr %i.atw, align 2, !tbaa !394
  %i.atx = extractelement <8 x i16> %i.ats, i64 5
  %i.aty = getelementptr inbounds nuw i8, ptr %i.ask, i64 8
  store i16 %i.atx, ptr %i.aty, align 2, !tbaa !394
  %i.atz = extractelement <8 x i16> %i.ats, i64 7
  %i.aua = getelementptr inbounds nuw i8, ptr %i.asl, i64 8
  store i16 %i.atz, ptr %i.aua, align 2, !tbaa !394
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %i.hk, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %bb.r
  %i.aub = bitcast <4 x float> %.0.i.us.i to <8 x i16> ; 4 uses
  %i.auc = extractelement <8 x i16> %i.aub, i64 1
  %i.aud = getelementptr inbounds nuw i8, ptr %.07782481.us.i, i64 10
  store i16 %i.auc, ptr %i.aud, align 2, !tbaa !394
  %i.aue = extractelement <8 x i16> %i.aub, i64 3
  %i.auf = getelementptr inbounds nuw i8, ptr %i.asj, i64 10
  store i16 %i.aue, ptr %i.auf, align 2, !tbaa !394
  %i.aug = extractelement <8 x i16> %i.aub, i64 5
  %i.auh = getelementptr inbounds nuw i8, ptr %i.ask, i64 10
  store i16 %i.aug, ptr %i.auh, align 2, !tbaa !394
  %i.aui = extractelement <8 x i16> %i.aub, i64 7
  %i.auj = getelementptr inbounds nuw i8, ptr %i.asl, i64 10
  store i16 %i.aui, ptr %i.auj, align 2, !tbaa !394
  br label %bb.ad

bb.t:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i
  %i.auk = bitcast <4 x float> %.0.i81910521071110611521213.us.i to <8 x i16>
  %i.aul = shufflevector <8 x i16> %i.auk, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.aum = bitcast <8 x i16> %i.aul to <4 x float>
  %i.aun = shufflevector <4 x float> %i.aum, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.auo = bitcast <4 x float> %i.aun to <2 x i64>
  %i.aup = extractelement <2 x i64> %i.auo, i64 0
  store i64 %i.aup, ptr %.07782481.us.i, align 1, !tbaa !254
  br i1 %i.hc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.auq = getelementptr inbounds nuw i8, ptr %.07782481.us.i, i64 8
  %i.aur = bitcast <4 x float> %.0.i8171073110411541211.us.i to <8 x i16>
  %i.aus = shufflevector <8 x i16> %i.aur, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.aut = bitcast <8 x i16> %i.aus to <4 x float>
  %i.auu = shufflevector <4 x float> %i.aut, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.auv = bitcast <4 x float> %i.auu to <2 x i64>
  %i.auw = extractelement <2 x i64> %i.auv, i64 0
  store i64 %i.auw, ptr %i.auq, align 1, !tbaa !254
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %i.he, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.aux = getelementptr inbounds nuw i8, ptr %.07782481.us.i, i64 16
  %i.auy = bitcast <4 x float> %.0.i815110811501215.us.i to <8 x i16>
  %i.auz = shufflevector <8 x i16> %i.auy, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ava = bitcast <8 x i16> %i.auz to <4 x float>
  %i.avb = shufflevector <4 x float> %i.ava, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.avc = bitcast <4 x float> %i.avb to <2 x i64>
  %i.avd = extractelement <2 x i64> %i.avc, i64 0
  store i64 %i.avd, ptr %i.aux, align 1, !tbaa !254
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %i.hg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ave = getelementptr inbounds nuw i8, ptr %.07782481.us.i, i64 24
  %i.avf = bitcast <4 x float> %.0.i81311561209.us.i to <8 x i16>
  %i.avg = shufflevector <8 x i16> %i.avf, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.avh = bitcast <8 x i16> %i.avg to <4 x float>
  %i.avi = shufflevector <4 x float> %i.avh, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.avj = bitcast <4 x float> %i.avi to <2 x i64>
  %i.avk = extractelement <2 x i64> %i.avj, i64 0
  store i64 %i.avk, ptr %i.ave, align 1, !tbaa !254
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  br i1 %i.hi, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.avl = getelementptr inbounds nuw i8, ptr %.07782481.us.i, i64 32
  %i.avm = bitcast <4 x float> %.0.i8111217.us.i to <8 x i16>
  %i.avn = shufflevector <8 x i16> %i.avm, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.avo = bitcast <8 x i16> %i.avn to <4 x float>
  %i.avp = shufflevector <4 x float> %i.avo, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.avq = bitcast <4 x float> %i.avp to <2 x i64>
  %i.avr = extractelement <2 x i64> %i.avq, i64 0
  store i64 %i.avr, ptr %i.avl, align 1, !tbaa !254
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %i.hk, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.avs = getelementptr inbounds nuw i8, ptr %.07782481.us.i, i64 40
  %i.avt = bitcast <4 x float> %.0.i.us.i to <8 x i16>
  %i.avu = shufflevector <8 x i16> %i.avt, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.avv = bitcast <8 x i16> %i.avu to <4 x float>
  %i.avw = shufflevector <4 x float> %i.avv, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.avx = bitcast <4 x float> %i.avw to <2 x i64>
  %i.avy = extractelement <2 x i64> %i.avx, i64 0
  store i64 %i.avy, ptr %i.avs, align 1, !tbaa !254
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.s, %bb.r, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i
  %i.avz = getelementptr inbounds [2 x i8], ptr %.07782481.us.i, i64 %i.dn
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.h
  %.1779.us.i = phi ptr [ %.07782481.us.i, %bb.h ], [ %i.avz, %bb.ad ]
  %indvars.iv.next2555.i = add nuw nsw i64 %indvars.iv2554.i, 1 ; 2 uses
  %exitcond2557.not.i = icmp eq i64 %indvars.iv.next2555.i, 6
  br i1 %exitcond2557.not.i, label %bb.af, label %bb.h, !llvm.loop !1830

bb.af:                                            ; preds = %bb.ae
  %indvars.iv.next2559.i = add nuw nsw i64 %indvars.iv2558.i, 1 ; 2 uses
  %exitcond2561.not.i = icmp eq i64 %indvars.iv.next2559.i, %wide.trip.count.i
  br i1 %exitcond2561.not.i, label %._crit_edge.us.i, label %bb.f, !llvm.loop !1831

._crit_edge.us.i:                                 ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %indvars.iv.next2563.i = add nuw nsw i64 %indvars.iv2562.i, 4 ; 3 uses
  %i.awa = or disjoint i64 %indvars.iv.next2563.i, 3
  %i.awb = icmp samesign ult i64 %i.awa, %i.cc
  br i1 %i.awb, label %.lr.ph2487.split.us.i, label %.preheader2471.loopexit.i, !llvm.loop !1832

.preheader2471.loopexit.i:                        ; preds = %._crit_edge.us.i
  %i.awc = trunc nuw nsw i64 %indvars.iv.next2563.i to i32
  br label %.preheader2471.i

.preheader2471.i:                                 ; preds = %.lr.ph2487.i, %.preheader2471.loopexit.i, %._crit_edge
  %.0757.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.awc, %.preheader2471.loopexit.i ], [ %i.cb, %.lr.ph2487.i ] ; 5 uses
  %i.awd = or disjoint i32 %.0757.lcssa.i, 1
  %i.awe = icmp slt i32 %i.awd, %.sroa.speculated124
  br i1 %i.awe, label %.lr.ph2507.i, label %.preheader.i

.lr.ph2507.i:                                     ; preds = %.preheader2471.i
  %.not789.i = icmp eq ptr %.val81, null
  %i.awf = icmp sgt i32 %.sroa.speculated120, 0
  %i.awg = shl nsw i32 %.sroa.speculated120, 1
  %i.awh = sext i32 %i.awg to i64
  %i.awi = shl nsw i32 %.sroa.speculated120, 2
  %i.awj = sext i32 %i.awi to i64
  %i.awk = mul nsw i32 %.sroa.speculated120, 6
  %i.awl = sext i32 %i.awk to i64
  %i.awm = shl nsw i32 %.sroa.speculated120, 3
  %i.awn = sext i32 %i.awm to i64
  %i.awo = mul nsw i32 %.sroa.speculated120, 10
  %i.awp = sext i32 %i.awo to i64
  %i.awq = mul nsw i32 %.sroa.speculated120, 12
  %i.awr = sext i32 %i.awq to i64
  %i.aws = mul nsw i32 %.sroa.speculated120, 14
  %i.awt = sext i32 %i.aws to i64
  %i.awu = shl nsw i32 %.sroa.speculated120, 4
  %i.awv = sext i32 %i.awu to i64                 ; 8 uses
  %i.aww = sext i32 %i.cm to i64
  br i1 %i.awf, label %.lr.ph2507.split.us.i, label %.lr.ph2507.split.i

.lr.ph2507.split.us.i:                            ; preds = %.lr.ph2507.i
  %i.awx = load i32, ptr %i.aq, align 4, !tbaa !75, !noalias !1833
  %i.awy = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1833
  %i.awz = load i64, ptr %i.at, align 8, !tbaa !20, !noalias !1833
  %i.axa = load i64, ptr %i.az, align 8, !tbaa !65, !noalias !1833 ; 2 uses
  %factor.op.mul.i = mul i64 %i.axa, %i.awz
  %i.axb = sext i32 %i.awx to i64
  %factor.op.mul2503.us.i = mul i64 %i.axa, %i.axb
  %i.axc = sext i32 %i.cn to i64
  %i.axd = sext i32 %.0757.lcssa.i to i64
  %wide.trip.count2577.i = zext nneg i32 %.sroa.speculated120 to i64
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.us2511.i, %.lr.ph2507.split.us.i
  %indvars.iv2579.i = phi i64 [ %indvars.iv.next2580.i, %._crit_edge.us2511.i ], [ %i.axd, %.lr.ph2507.split.us.i ] ; 3 uses
  %.pre.i = add nsw i64 %indvars.iv2579.i, %i.ca  ; 2 uses
  br i1 %.not789.i, label %.thread.us.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.axe = getelementptr [4 x i8], ptr %.val81, i64 %.pre.i
  %i.axf = load <2 x float>, ptr %i.axe, align 4, !tbaa !39
  br label %.thread.us.i

.thread.us.i:                                     ; preds = %bb.ah, %bb.ag
  %i.axg = phi <2 x float> [ %i.axf, %bb.ah ], [ zeroinitializer, %bb.ag ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.axh = trunc nsw i64 %indvars.iv2579.i to i32
  %factor.op.mul.reass.us2509.i = mul i32 %factor.op.mul2484.i, %i.axh
  %i.axi = sext i32 %factor.op.mul.reass.us2509.i to i64
  %i.axj = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.axi
  %.reass.i = mul i64 %factor.op.mul.i, %.pre.i
  %i.axk = getelementptr inbounds nuw i8, ptr %i.awy, i64 %.reass.i
  br label %bb.ai

bb.ai:                                            ; preds = %bb.bx, %.thread.us.i
  %indvars.iv2574.i = phi i64 [ 0, %.thread.us.i ], [ %indvars.iv.next2575.i, %bb.bx ] ; 3 uses
  %.idx2635.i = shl nuw nsw i64 %indvars.iv2574.i, 3
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axj, i64 %.idx2635.i ; 8 uses
  %i.axm = getelementptr inbounds nuw [4 x i8], ptr %i.axl, i64 %i.awh
  %i.axn = getelementptr inbounds nuw [4 x i8], ptr %i.axl, i64 %i.awj
  %i.axo = getelementptr inbounds nuw [4 x i8], ptr %i.axl, i64 %i.awl
  %i.axp = getelementptr inbounds nuw [4 x i8], ptr %i.axl, i64 %i.awn
  %i.axq = getelementptr inbounds nuw [4 x i8], ptr %i.axl, i64 %i.awp
  %i.axr = getelementptr inbounds nuw [4 x i8], ptr %i.axl, i64 %i.awr
  %i.axs = getelementptr inbounds nuw [4 x i8], ptr %i.axl, i64 %i.awt
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %indvars.iv2566.i = phi i64 [ %indvars.iv.next2567.i, %bb.aj ], [ 0, %bb.ai ] ; 7 uses
  %.07682498.us.i = phi ptr [ %i.azs, %bb.aj ], [ %i.axs, %bb.ai ] ; 2 uses
  %.07692497.us.i = phi ptr [ %i.azr, %bb.aj ], [ %i.axr, %bb.ai ] ; 2 uses
  %.07702496.us.i = phi ptr [ %i.azq, %bb.aj ], [ %i.axq, %bb.ai ] ; 2 uses
  %.07712495.us.i = phi ptr [ %i.azp, %bb.aj ], [ %i.axp, %bb.ai ] ; 2 uses
  %.07722494.us.i = phi ptr [ %i.azo, %bb.aj ], [ %i.axo, %bb.ai ] ; 2 uses
  %.07732493.us.i = phi ptr [ %i.azn, %bb.aj ], [ %i.axn, %bb.ai ] ; 2 uses
  %.07742492.us.i = phi ptr [ %i.azm, %bb.aj ], [ %i.axm, %bb.ai ] ; 2 uses
  %.07752491.us.i = phi ptr [ %i.azl, %bb.aj ], [ %i.axl, %bb.ai ] ; 2 uses
  %i.axt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv2566.i
  %i.axu = load <2 x float>, ptr %.07742492.us.i, align 4, !tbaa !39 ; 2 uses
  %i.axv = load <2 x float>, ptr %.07732493.us.i, align 4, !tbaa !39 ; 2 uses
  %i.axw = fadd fast <2 x float> %i.axv, %i.axu   ; 3 uses
  %i.axx = load <2 x float>, ptr %.07722494.us.i, align 4, !tbaa !39 ; 2 uses
  %i.axy = load <2 x float>, ptr %.07712495.us.i, align 4, !tbaa !39 ; 2 uses
  %i.axz = fadd fast <2 x float> %i.axy, %i.axx   ; 3 uses
  %i.aya = load <2 x float>, ptr %.07702496.us.i, align 4, !tbaa !39 ; 2 uses
  %i.ayb = load <2 x float>, ptr %.07692497.us.i, align 4, !tbaa !39 ; 2 uses
  %i.ayc = fadd fast <2 x float> %i.ayb, %i.aya   ; 3 uses
  %i.ayd = load <2 x float>, ptr %.07752491.us.i, align 4, !tbaa !39
  %i.aye = fmul fast <2 x float> %i.ayc, splat (float 3.200000e+01)
  %i.ayf = fadd fast <2 x float> %i.axw, %i.axz
  %i.ayg = fadd fast <2 x float> %i.ayf, %i.aye
  %i.ayh = fadd fast <2 x float> %i.ayg, %i.ayd
  store <2 x float> %i.ayh, ptr %i.axt, align 8, !tbaa !39
  %i.ayi = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv2566.i
  %i.ayj = fsub fast <2 x float> %i.axu, %i.axv   ; 3 uses
  %i.ayk = fsub fast <2 x float> %i.axx, %i.axy   ; 3 uses
  %i.ayl = fsub fast <2 x float> %i.aya, %i.ayb   ; 3 uses
  %i.aym = fmul fast <2 x float> %i.ayl, splat (float 1.600000e+01)
  %i.ayn = fmul fast <2 x float> %i.ayk, splat (float 2.000000e+00)
  %i.ayo = fadd fast <2 x float> %i.ayj, %i.aym
  %i.ayp = fadd fast <2 x float> %i.ayo, %i.ayn
  store <2 x float> %i.ayp, ptr %i.ayi, align 8, !tbaa !39
  %i.ayq = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv2566.i
  %i.ayr = fmul fast <2 x float> %i.axz, splat (float 4.000000e+00)
  %i.ays = fadd fast <2 x float> %i.axw, %i.ayr
  %i.ayt = fmul fast <2 x float> %i.ayc, splat (float 8.000000e+00)
  %i.ayu = fadd fast <2 x float> %i.ayt, %i.ays
  store <2 x float> %i.ayu, ptr %i.ayq, align 8, !tbaa !39
  %i.ayv = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv2566.i
  %i.ayw = fmul fast <2 x float> %i.ayk, splat (float 8.000000e+00)
  %i.ayx = fadd fast <2 x float> %i.ayj, %i.ayw
  %i.ayy = fmul fast <2 x float> %i.ayl, splat (float 4.000000e+00)
  %i.ayz = fadd fast <2 x float> %i.ayy, %i.ayx
  store <2 x float> %i.ayz, ptr %i.ayv, align 8, !tbaa !39
  %i.aza = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv2566.i
  %i.azb = fmul fast <2 x float> %i.axz, splat (float 1.600000e+01)
  %i.azc = fadd fast <2 x float> %i.axw, %i.azb
  %i.azd = fmul fast <2 x float> %i.ayc, splat (float 2.000000e+00)
  %i.aze = fadd fast <2 x float> %i.azd, %i.azc
  store <2 x float> %i.aze, ptr %i.aza, align 8, !tbaa !39
  %i.azf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv2566.i
  %i.azg = load <2 x float>, ptr %.07682498.us.i, align 4, !tbaa !39
  %i.azh = fadd fast <2 x float> %i.ayj, %i.azg
  %i.azi = fmul fast <2 x float> %i.ayk, splat (float 3.200000e+01)
  %i.azj = fadd fast <2 x float> %i.azi, %i.azh
  %i.azk = fadd fast <2 x float> %i.azj, %i.ayl
  store <2 x float> %i.azk, ptr %i.azf, align 8, !tbaa !39
  %i.azl = getelementptr inbounds nuw [4 x i8], ptr %.07752491.us.i, i64 %i.awv
  %i.azm = getelementptr inbounds nuw [4 x i8], ptr %.07742492.us.i, i64 %i.awv
  %i.azn = getelementptr inbounds nuw [4 x i8], ptr %.07732493.us.i, i64 %i.awv
  %i.azo = getelementptr inbounds nuw [4 x i8], ptr %.07722494.us.i, i64 %i.awv
  %i.azp = getelementptr inbounds nuw [4 x i8], ptr %.07712495.us.i, i64 %i.awv
  %i.azq = getelementptr inbounds nuw [4 x i8], ptr %.07702496.us.i, i64 %i.awv
  %i.azr = getelementptr inbounds nuw [4 x i8], ptr %.07692497.us.i, i64 %i.awv
  %i.azs = getelementptr inbounds nuw [4 x i8], ptr %.07682498.us.i, i64 %i.awv
  %indvars.iv.next2567.i = add nuw nsw i64 %indvars.iv2566.i, 1 ; 2 uses
  %exitcond2569.not.i = icmp eq i64 %indvars.iv.next2567.i, 8
  br i1 %exitcond2569.not.i, label %_ZN4ncnn3MatD2Ev.exit794.us.i, label %bb.aj, !llvm.loop !1836

_ZN4ncnn3MatD2Ev.exit794.us.i:                    ; preds = %bb.aj
  %i.azt = trunc i64 %indvars.iv2574.i to i32
  %i.azu = add i32 %.047134, %i.azt               ; 2 uses
  %i.azv = sdiv i32 %i.azu, %i.ct
  %i.azw = srem i32 %i.azu, %i.ct
  %i.azx = mul nsw i32 %i.azv, 6
  %i.azy = sext i32 %i.azx to i64                 ; 2 uses
  %.reass2504.us.i = mul i64 %factor.op.mul2503.us.i, %i.azy
  %i.azz = getelementptr inbounds nuw i8, ptr %i.axk, i64 %.reass2504.us.i
  %i.baa = mul nsw i32 %i.azw, 6                  ; 6 uses
  %i.bab = sext i32 %i.baa to i64
  %i.bac = getelementptr inbounds [2 x i8], ptr %i.azz, i64 %i.bab
  %i.bad = or disjoint i32 %i.baa, 1
  %i.bae = icmp slt i32 %i.bad, %i.cm
  %i.baf = add nsw i32 %i.baa, 2
  %i.bag = icmp slt i32 %i.baf, %i.cm
  %i.bah = add nsw i32 %i.baa, 3
  %i.bai = icmp slt i32 %i.bah, %i.cm
  %i.baj = add nsw i32 %i.baa, 4
  %i.bak = icmp slt i32 %i.baj, %i.cm
  %i.bal = add nsw i32 %i.baa, 5
  %i.bam = icmp slt i32 %i.bal, %i.cm
  %invariant.op2636.i = sub nsw i64 %i.axc, %i.azy
  br label %bb.ak

bb.ak:                                            ; preds = %bb.bw, %_ZN4ncnn3MatD2Ev.exit794.us.i
  %indvars.iv2570.i = phi i64 [ %indvars.iv.next2571.i, %bb.bw ], [ 0, %_ZN4ncnn3MatD2Ev.exit794.us.i ] ; 3 uses
  %.07552500.us.i = phi ptr [ %.1756.us.i, %bb.bw ], [ %i.bac, %_ZN4ncnn3MatD2Ev.exit794.us.i ] ; 9 uses
  %.not790.us.i = icmp slt i64 %indvars.iv2570.i, %invariant.op2636.i
  br i1 %.not790.us.i, label %bb.al, label %bb.bw

bb.al:                                            ; preds = %bb.ak
  %i.ban = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %indvars.iv2570.i ; 8 uses
  %i.bao = getelementptr inbounds nuw i8, ptr %i.ban, i64 8
  %i.bap = getelementptr inbounds nuw i8, ptr %i.ban, i64 16
  %i.baq = getelementptr inbounds nuw i8, ptr %i.ban, i64 24
  %i.bar = getelementptr inbounds nuw i8, ptr %i.ban, i64 32
  %i.bas = getelementptr inbounds nuw i8, ptr %i.ban, i64 40
  %i.bat = getelementptr inbounds nuw i8, ptr %i.ban, i64 48
  %i.bau = getelementptr inbounds nuw i8, ptr %i.ban, i64 56
  %i.bav = load <2 x float>, ptr %i.bao, align 8, !tbaa !39 ; 2 uses
  %i.baw = load <2 x float>, ptr %i.bap, align 16, !tbaa !39 ; 2 uses
  %i.bax = load <2 x float>, ptr %i.baq, align 8, !tbaa !39 ; 2 uses
  %i.bay = load <2 x float>, ptr %i.bar, align 16, !tbaa !39 ; 2 uses
  %i.baz = load <2 x float>, ptr %i.bas, align 8, !tbaa !39 ; 2 uses
  %i.bba = load <2 x float>, ptr %i.bat, align 16, !tbaa !39 ; 2 uses
  %i.bbb = load <2 x float>, ptr %i.bau, align 8, !tbaa !39
  %i.bbc = fsub fast <2 x float> %i.bav, %i.baw   ; 2 uses
  %i.bbd = fsub fast <2 x float> %i.bax, %i.bay   ; 3 uses
  %i.bbe = fsub fast <2 x float> %i.baz, %i.bba   ; 3 uses
  %i.bbf = fadd fast <2 x float> %i.bbc, %i.axg   ; 2 uses
  %i.bbg = fmul fast <2 x float> %i.bbe, splat (float 1.600000e+01)
  %i.bbh = fmul fast <2 x float> %i.bbd, splat (float 2.000000e+00)
  %i.bbi = fadd fast <2 x float> %i.bbf, %i.bbg
  %i.bbj = fadd fast <2 x float> %i.bbi, %i.bbh   ; 10 uses
end_hunk_26
begin_hunk_27_@_ZN4ncnnL26conv3x3s1_winograd63_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.16:bb.a
  %i.bjd = fadd fast <2 x float> %i.bjc, splat (float 1.000000e+00)
  %i.bje = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bjd
  %i.bjf = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bce, <2 x float> splat (float f0x42B0C0A5))
  %i.bjg = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bjf, <2 x float> splat (float f0xC2B0C0A5))
  %i.bjh = fneg fast <2 x float> %i.bjg
  %i.bji = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bjh)
  %i.bjj = fadd fast <2 x float> %i.bji, splat (float 1.000000e+00)
  %i.bjk = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bjj
  %i.bjl = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bcj, <2 x float> splat (float f0x42B0C0A5))
  %i.bjm = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bjl, <2 x float> splat (float f0xC2B0C0A5))
  %i.bjn = fneg fast <2 x float> %i.bjm
  %i.bjo = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bjn)
  %i.bjp = fadd fast <2 x float> %i.bjo, splat (float 1.000000e+00)
  %i.bjq = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bjp
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit826.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i: ; preds = %bb.al
  %i.bjr = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.bjs = load float, ptr %i.bjr, align 4, !tbaa !39 ; 3 uses
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjr, i64 4
  %i.bju = load float, ptr %i.bjt, align 4, !tbaa !39 ; 5 uses
  %i.bjv = insertelement <2 x float> poison, float %i.bjs, i64 0
  %i.bjw = shufflevector <2 x float> %i.bjv, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.bjx = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbw, <2 x float> %i.bjw) ; 2 uses
  %i.bjy = insertelement <2 x float> poison, float %i.bju, i64 0
  %i.bjz = shufflevector <2 x float> %i.bjy, <2 x float> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.bka = fcmp fast ogt <2 x float> %i.bjx, %i.bjz
  %i.bkb = select <2 x i1> %i.bka, <2 x float> %i.bjz, <2 x float> %i.bjx ; 2 uses
  %i.bkc = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbj, <2 x float> %i.bjw) ; 2 uses
  %i.bkd = fcmp fast ogt <2 x float> %i.bkc, %i.bjz
  %i.bke = select <2 x i1> %i.bkd, <2 x float> %i.bjz, <2 x float> %i.bkc ; 2 uses
  %i.bkf = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bca, <2 x float> %i.bjw) ; 2 uses
  %i.bkg = fcmp fast ogt <2 x float> %i.bkf, %i.bjz
  %i.bkh = select <2 x i1> %i.bkg, <2 x float> %i.bjz, <2 x float> %i.bkf ; 2 uses
  %i.bki = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbn, <2 x float> %i.bjw) ; 2 uses
  %i.bkj = fcmp fast ogt <2 x float> %i.bki, %i.bjz
  %i.bkk = select <2 x i1> %i.bkj, <2 x float> %i.bjz, <2 x float> %i.bki ; 2 uses
  %i.bkl = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bce, <2 x float> %i.bjw) ; 2 uses
  %i.bkm = fcmp fast ogt <2 x float> %i.bkl, %i.bjz
  %i.bkn = select <2 x i1> %i.bkm, <2 x float> %i.bjz, <2 x float> %i.bkl ; 2 uses
  %i.bko = extractelement <2 x float> %i.bcj, i64 0
  %.01034.us.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bko, float %i.bjs) ; 2 uses
  %i.bkp = fcmp fast ogt float %.01034.us.i, %i.bju
  %.110352116.us.i = select i1 %i.bkp, float %i.bju, float %.01034.us.i
  %i.bkq = extractelement <2 x float> %i.bcj, i64 1
  %.01036.us.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bkq, float %i.bjs) ; 2 uses
  %i.bkr = fcmp fast ogt float %.01036.us.i, %i.bju
  %i.bks = insertelement <2 x float> poison, float %.110352116.us.i, i64 0
  %i.bkt = insertelement <2 x float> %i.bks, float %.01036.us.i, i64 1 ; 2 uses
  br i1 %i.bkr, label %bb.bl, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit826.us.i

bb.bl:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i
  %i.bku = insertelement <2 x float> %i.bkt, float %i.bju, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit826.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1285.us.i: ; preds = %bb.al
  %i.bkv = load ptr, ptr %15, align 8, !tbaa !18
  %i.bkw = load float, ptr %i.bkv, align 4, !tbaa !39
  %i.bkx = fcmp fast ogt <2 x float> %i.bbw, zeroinitializer
  %i.bky = insertelement <2 x float> poison, float %i.bkw, i64 0
  %i.bkz = shufflevector <2 x float> %i.bky, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.bla = select <2 x i1> %i.bkx, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bkz
  %i.blb = fmul fast <2 x float> %i.bla, %i.bbw
  %i.blc = fcmp fast ogt <2 x float> %i.bbj, zeroinitializer
  %i.bld = select <2 x i1> %i.blc, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bkz
  %i.ble = fmul fast <2 x float> %i.bld, %i.bbj
  %i.blf = fcmp fast ogt <2 x float> %i.bca, zeroinitializer
  %i.blg = select <2 x i1> %i.blf, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bkz
  %i.blh = fmul fast <2 x float> %i.blg, %i.bca
  %i.bli = fcmp fast ogt <2 x float> %i.bbn, zeroinitializer
  %i.blj = select <2 x i1> %i.bli, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bkz
  %i.blk = fmul fast <2 x float> %i.blj, %i.bbn
  %i.bll = fcmp fast ogt <2 x float> %i.bce, zeroinitializer
  %i.blm = select <2 x i1> %i.bll, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bkz
  %i.bln = fmul fast <2 x float> %i.blm, %i.bce
  %i.blo = fcmp fast ogt <2 x float> %i.bcj, zeroinitializer
  %i.blp = select <2 x i1> %i.blo, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bkz
  %i.blq = fmul fast <2 x float> %i.blp, %i.bcj
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit826.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1282.us.i: ; preds = %bb.al
  %i.blr = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbw, <2 x float> zeroinitializer)
  %i.bls = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbj, <2 x float> zeroinitializer)
  %i.blt = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bca, <2 x float> zeroinitializer)
  %i.blu = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbn, <2 x float> zeroinitializer)
  %i.blv = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bce, <2 x float> zeroinitializer)
  %i.blw = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bcj, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit826.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit826.us.i:   ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1282.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1285.us.i, %bb.bl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1288.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1291.us.i, %bb.bk, %bb.bj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit827.thread.us.i, %bb.al
  %i.blx = phi <2 x float> [ %i.bgc, %_ZL13activation_ssfiRKN4ncnn3MatE.exit827.thread.us.i ], [ %i.blw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1282.us.i ], [ %i.blq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1285.us.i ], [ %i.bku, %bb.bl ], [ %i.bkt, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i ], [ %i.bjq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1288.us.i ], [ %i.big, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1291.us.i ], [ %i.bgu, %bb.bk ], [ %i.bgq, %bb.bj ], [ %i.bcj, %bb.al ]
  %i.bly = phi <2 x float> [ %i.bge, %_ZL13activation_ssfiRKN4ncnn3MatE.exit827.thread.us.i ], [ %i.blv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1282.us.i ], [ %i.bln, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1285.us.i ], [ %i.bkn, %bb.bl ], [ %i.bkn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i ], [ %i.bjk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1288.us.i ], [ %i.bht, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1291.us.i ], [ %i.bge, %bb.bk ], [ %i.bge, %bb.bj ], [ %i.bce, %bb.al ]
  %i.blz = phi <2 x float> [ %i.bgg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit827.thread.us.i ], [ %i.blu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1282.us.i ], [ %i.blk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1285.us.i ], [ %i.bkk, %bb.bl ], [ %i.bkk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i ], [ %i.bje, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1288.us.i ], [ %i.bho, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1291.us.i ], [ %i.bgg, %bb.bk ], [ %i.bgg, %bb.bj ], [ %i.bbn, %bb.al ]
  %i.bma = phi <2 x float> [ %i.bgi, %_ZL13activation_ssfiRKN4ncnn3MatE.exit827.thread.us.i ], [ %i.blt, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1282.us.i ], [ %i.blh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1285.us.i ], [ %i.bkh, %bb.bl ], [ %i.bkh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i ], [ %i.biy, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1288.us.i ], [ %i.bhj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1291.us.i ], [ %i.bgi, %bb.bk ], [ %i.bgi, %bb.bj ], [ %i.bca, %bb.al ]
  %i.bmb = phi <2 x float> [ %i.bgk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit827.thread.us.i ], [ %i.bls, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1282.us.i ], [ %i.ble, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1285.us.i ], [ %i.bke, %bb.bl ], [ %i.bke, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i ], [ %i.bis, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1288.us.i ], [ %i.bhe, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1291.us.i ], [ %i.bgk, %bb.bk ], [ %i.bgk, %bb.bj ], [ %i.bbj, %bb.al ]
  %i.bmc = phi <2 x float> [ %i.bgm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit827.thread.us.i ], [ %i.blr, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1282.us.i ], [ %i.blb, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1285.us.i ], [ %i.bkb, %bb.bl ], [ %i.bkb, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i ], [ %i.bim, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1288.us.i ], [ %i.bgz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1291.us.i ], [ %i.bgm, %bb.bk ], [ %i.bgm, %bb.bj ], [ %i.bbw, %bb.al ]
  %i.bmd = getelementptr inbounds nuw [2 x i8], ptr %.07552500.us.i, i64 %i.cr ; 6 uses
  %i.bme = bitcast <2 x float> %i.bmc to <2 x i32>
  %i.bmf = lshr <2 x i32> %i.bme, splat (i32 16)
  %i.bmg = trunc nuw <2 x i32> %i.bmf to <2 x i16> ; 2 uses
  %i.bmh = extractelement <2 x i16> %i.bmg, i64 0
  store i16 %i.bmh, ptr %.07552500.us.i, align 2, !tbaa !394
  %i.bmi = extractelement <2 x i16> %i.bmg, i64 1
  store i16 %i.bmi, ptr %i.bmd, align 2, !tbaa !394
  br i1 %i.bae, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit826.us.i
  %i.bmj = bitcast <2 x float> %i.bmb to <2 x i32>
  %i.bmk = getelementptr inbounds nuw i8, ptr %.07552500.us.i, i64 2
  %i.bml = lshr <2 x i32> %i.bmj, splat (i32 16)
  %i.bmm = trunc nuw <2 x i32> %i.bml to <2 x i16> ; 2 uses
  %i.bmn = extractelement <2 x i16> %i.bmm, i64 0
  store i16 %i.bmn, ptr %i.bmk, align 2, !tbaa !394
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bmd, i64 2
  %i.bmp = extractelement <2 x i16> %i.bmm, i64 1
  store i16 %i.bmp, ptr %i.bmo, align 2, !tbaa !394
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit826.us.i
  br i1 %i.bag, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.bmq = bitcast <2 x float> %i.bma to <2 x i32>
  %i.bmr = getelementptr inbounds nuw i8, ptr %.07552500.us.i, i64 4
  %i.bms = lshr <2 x i32> %i.bmq, splat (i32 16)
  %i.bmt = trunc nuw <2 x i32> %i.bms to <2 x i16> ; 2 uses
  %i.bmu = extractelement <2 x i16> %i.bmt, i64 0
  store i16 %i.bmu, ptr %i.bmr, align 2, !tbaa !394
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bmd, i64 4
  %i.bmw = extractelement <2 x i16> %i.bmt, i64 1
  store i16 %i.bmw, ptr %i.bmv, align 2, !tbaa !394
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  br i1 %i.bai, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.bmx = bitcast <2 x float> %i.blz to <2 x i32>
  %i.bmy = getelementptr inbounds nuw i8, ptr %.07552500.us.i, i64 6
  %i.bmz = lshr <2 x i32> %i.bmx, splat (i32 16)
  %i.bna = trunc nuw <2 x i32> %i.bmz to <2 x i16> ; 2 uses
  %i.bnb = extractelement <2 x i16> %i.bna, i64 0
  store i16 %i.bnb, ptr %i.bmy, align 2, !tbaa !394
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bmd, i64 6
  %i.bnd = extractelement <2 x i16> %i.bna, i64 1
  store i16 %i.bnd, ptr %i.bnc, align 2, !tbaa !394
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  br i1 %i.bak, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.bne = bitcast <2 x float> %i.bly to <2 x i32>
  %i.bnf = getelementptr inbounds nuw i8, ptr %.07552500.us.i, i64 8
  %i.bng = lshr <2 x i32> %i.bne, splat (i32 16)
  %i.bnh = trunc nuw <2 x i32> %i.bng to <2 x i16> ; 2 uses
  %i.bni = extractelement <2 x i16> %i.bnh, i64 0
  store i16 %i.bni, ptr %i.bnf, align 2, !tbaa !394
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bmd, i64 8
  %i.bnk = extractelement <2 x i16> %i.bnh, i64 1
  store i16 %i.bnk, ptr %i.bnj, align 2, !tbaa !394
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  br i1 %i.bam, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.bnl = bitcast <2 x float> %i.blx to <2 x i32>
  %i.bnm = getelementptr inbounds nuw i8, ptr %.07552500.us.i, i64 10
  %i.bnn = lshr <2 x i32> %i.bnl, splat (i32 16)
  %i.bno = trunc nuw <2 x i32> %i.bnn to <2 x i16> ; 2 uses
  %i.bnp = extractelement <2 x i16> %i.bno, i64 0
  store i16 %i.bnp, ptr %i.bnm, align 2, !tbaa !394
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bmd, i64 10
  %i.bnr = extractelement <2 x i16> %i.bno, i64 1
  store i16 %i.bnr, ptr %i.bnq, align 2, !tbaa !394
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.bns = getelementptr inbounds [2 x i8], ptr %.07552500.us.i, i64 %i.aww
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.ak
  %.1756.us.i = phi ptr [ %.07552500.us.i, %bb.ak ], [ %i.bns, %bb.bv ]
  %indvars.iv.next2571.i = add nuw nsw i64 %indvars.iv2570.i, 1 ; 2 uses
  %exitcond2573.not.i = icmp eq i64 %indvars.iv.next2571.i, 6
  br i1 %exitcond2573.not.i, label %bb.bx, label %bb.ak, !llvm.loop !1837

bb.bx:                                            ; preds = %bb.bw
  %indvars.iv.next2575.i = add nuw nsw i64 %indvars.iv2574.i, 1 ; 2 uses
  %exitcond2578.not.i = icmp eq i64 %indvars.iv.next2575.i, %wide.trip.count2577.i
  br i1 %exitcond2578.not.i, label %._crit_edge.us2511.i, label %bb.ai, !llvm.loop !1838

._crit_edge.us2511.i:                             ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %indvars.iv.next2580.i = add nuw nsw i64 %indvars.iv2579.i, 2 ; 3 uses
  %i.bnt = icmp slt i64 %indvars.iv.next2580.i, %invariant.op2637.i.a
  br i1 %i.bnt, label %bb.ag, label %.preheader.loopexit.i, !llvm.loop !1839

.lr.ph2507.split.i:                               ; preds = %.lr.ph2507.i
  %19 = sub i32 %18, %.0757.lcssa.i
  %20 = and i32 %19, -2
  %21 = add i32 %.0757.lcssa.i, 2
  %i.bnu = add i32 %21, %20
  br label %.preheader.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.us2511.i
  %i.bnv = trunc nsw i64 %indvars.iv.next2580.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph2507.split.i, %.preheader2471.i
  %.1758.lcssa.i = phi i32 [ %.0757.lcssa.i, %.preheader2471.i ], [ %i.bnu, %.lr.ph2507.split.i ], [ %i.bnv, %.preheader.loopexit.i ] ; 2 uses
  %i.bnw = icmp slt i32 %.1758.lcssa.i, %.sroa.speculated124
  br i1 %i.bnw, label %.lr.ph2535.i, label %_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit

.lr.ph2535.i:                                     ; preds = %.preheader.i
  %.not.i83 = icmp eq ptr %.val81, null
  %i.bnx = icmp sgt i32 %.sroa.speculated120, 0
  %i.bny = sext i32 %.sroa.speculated120 to i64
  %i.bnz = shl nsw i32 %.sroa.speculated120, 1
  %i.boa = sext i32 %i.bnz to i64
  %i.bob = mul nsw i32 %.sroa.speculated120, 3
  %i.boc = sext i32 %i.bob to i64
  %i.bod = shl nsw i32 %.sroa.speculated120, 2
  %i.boe = sext i32 %i.bod to i64
  %i.bof = mul nsw i32 %.sroa.speculated120, 5
  %i.bog = sext i32 %i.bof to i64
  %i.boh = mul nsw i32 %.sroa.speculated120, 6
  %i.boi = sext i32 %i.boh to i64
  %i.boj = mul nsw i32 %.sroa.speculated120, 7
  %i.bok = sext i32 %i.boj to i64
  %i.bol = shl nsw i32 %.sroa.speculated120, 3
  %i.bom = sext i32 %i.bol to i64                 ; 8 uses
  %i.bon = sext i32 %i.cm to i64
  br i1 %i.bnx, label %.lr.ph2535.split.us.i, label %_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit

.lr.ph2535.split.us.i:                            ; preds = %.lr.ph2535.i
  %i.boo = load i32, ptr %i.aq, align 4, !tbaa !75, !noalias !1840
  %i.bop = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1840
  %i.boq = load i64, ptr %i.at, align 8, !tbaa !20, !noalias !1840
  %i.bor = load i64, ptr %i.az, align 8, !tbaa !65, !noalias !1840 ; 2 uses
  %factor.op.mul2540.i = mul i64 %i.bor, %i.boq
  %i.bos = sext i32 %i.boo to i64
  %factor.op.mul2531.us.i = mul i64 %i.bor, %i.bos
  %i.bot = sext i32 %i.cn to i64
  %i.bou = sext i32 %.1758.lcssa.i to i64
  %wide.trip.count2593.i = zext nneg i32 %.sroa.speculated120 to i64
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge.us2538.i, %.lr.ph2535.split.us.i
  %indvars.iv2595.i = phi i64 [ %indvars.iv.next2596.i, %._crit_edge.us2538.i ], [ %i.bou, %.lr.ph2535.split.us.i ] ; 3 uses
  %.pre2600.i = add nsw i64 %indvars.iv2595.i, %i.ca ; 2 uses
  br i1 %.not.i83, label %.lr.ph.us2537.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.bov = getelementptr inbounds [4 x i8], ptr %.val81, i64 %.pre2600.i
  %i.bow = load float, ptr %i.bov, align 4, !tbaa !39
  br label %.lr.ph.us2537.i

.lr.ph.us2537.i:                                  ; preds = %bb.bz, %bb.by
  %i.box = phi fast float [ %i.bow, %bb.bz ], [ 0.000000e+00, %bb.by ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.boy = trunc nsw i64 %indvars.iv2595.i to i32
  %factor.op.mul2528.reass.us.i = mul i32 %factor.op.mul2484.i, %i.boy
  %i.boz = sext i32 %factor.op.mul2528.reass.us.i to i64
  %i.bpa = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.boz
  %.reass2541.i = mul i64 %factor.op.mul2540.i, %.pre2600.i
  %i.bpb = getelementptr inbounds nuw i8, ptr %i.bop, i64 %.reass2541.i
  %i.bpc = insertelement <2 x float> poison, float %i.box, i64 1
  br label %bb.ca

bb.ca:                                            ; preds = %bb.dd, %.lr.ph.us2537.i
  %indvars.iv2590.i = phi i64 [ 0, %.lr.ph.us2537.i ], [ %indvars.iv.next2591.i, %bb.dd ] ; 3 uses
  %i.bpd = getelementptr inbounds nuw [4 x i8], ptr %i.bpa, i64 %indvars.iv2590.i ; 8 uses
  %i.bpe = getelementptr inbounds nuw [4 x i8], ptr %i.bpd, i64 %i.bny
  %i.bpf = getelementptr inbounds nuw [4 x i8], ptr %i.bpd, i64 %i.boa
  %i.bpg = getelementptr inbounds nuw [4 x i8], ptr %i.bpd, i64 %i.boc
  %i.bph = getelementptr inbounds nuw [4 x i8], ptr %i.bpd, i64 %i.boe
  %i.bpi = getelementptr inbounds nuw [4 x i8], ptr %i.bpd, i64 %i.bog
  %i.bpj = getelementptr inbounds nuw [4 x i8], ptr %i.bpd, i64 %i.boi
  %i.bpk = getelementptr inbounds nuw [4 x i8], ptr %i.bpd, i64 %i.bok
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %bb.ca
  %indvars.iv2582.i = phi i64 [ %indvars.iv.next2583.i, %bb.cb ], [ 0, %bb.ca ] ; 7 uses
  %.07452524.us.i = phi ptr [ %i.bro, %bb.cb ], [ %i.bpk, %bb.ca ] ; 2 uses
  %.07462523.us.i = phi ptr [ %i.brn, %bb.cb ], [ %i.bpj, %bb.ca ] ; 2 uses
  %.07472522.us.i = phi ptr [ %i.brm, %bb.cb ], [ %i.bpi, %bb.ca ] ; 2 uses
  %.07482521.us.i = phi ptr [ %i.brl, %bb.cb ], [ %i.bph, %bb.ca ] ; 2 uses
  %.07492520.us.i = phi ptr [ %i.brk, %bb.cb ], [ %i.bpg, %bb.ca ] ; 2 uses
  %.07502519.us.i = phi ptr [ %i.brj, %bb.cb ], [ %i.bpf, %bb.ca ] ; 2 uses
  %.07512518.us.i = phi ptr [ %i.bri, %bb.cb ], [ %i.bpe, %bb.ca ] ; 2 uses
  %.07522517.us.i = phi ptr [ %i.brh, %bb.cb ], [ %i.bpd, %bb.ca ] ; 2 uses
  %i.bpl = load float, ptr %.07512518.us.i, align 4, !tbaa !39 ; 2 uses
  %i.bpm = load float, ptr %.07502519.us.i, align 4, !tbaa !39 ; 2 uses
  %i.bpn = load float, ptr %.07492520.us.i, align 4, !tbaa !39 ; 2 uses
  %i.bpo = load float, ptr %.07482521.us.i, align 4, !tbaa !39 ; 2 uses
  %i.bpp = load float, ptr %.07472522.us.i, align 4, !tbaa !39 ; 2 uses
  %i.bpq = load float, ptr %.07462523.us.i, align 4, !tbaa !39 ; 2 uses
  %i.bpr = fadd fast float %i.bpq, %i.bpp         ; 3 uses
  %i.bps = fsub fast float %i.bpp, %i.bpq         ; 3 uses
  %i.bpt = load float, ptr %.07522517.us.i, align 4, !tbaa !39
  %i.bpu = fmul fast float %i.bpr, 3.200000e+01
  %i.bpv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv2582.i
  %i.bpw = fmul fast float %i.bps, 1.600000e+01
  %i.bpx = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv2582.i
  %i.bpy = fmul fast float %i.bpr, 8.000000e+00
  %i.bpz = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv2582.i
  %i.bqa = fmul fast float %i.bps, 4.000000e+00
  %i.bqb = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv2582.i
  %i.bqc = fsub fast float %i.bpl, %i.bpm         ; 3 uses
  %i.bqd = fadd fast float %i.bpo, %i.bpn         ; 2 uses
  %i.bqe = fsub fast float %i.bpn, %i.bpo         ; 2 uses
  %i.bqf = fadd fast float %i.bpm, %i.bpl         ; 2 uses
  %i.bqg = fadd fast float %i.bqc, %i.bpw
  %i.bqh = fadd fast float %i.bqd, %i.bqf
  %i.bqi = fadd fast float %i.bqh, %i.bpt
  %i.bqj = fadd fast float %i.bqi, %i.bpu
  store float %i.bqj, ptr %i.bpv, align 4, !tbaa !39
  %i.bqk = insertelement <4 x float> poison, float %i.bqe, i64 0
  %i.bql = insertelement <4 x float> %i.bqk, float %i.bqd, i64 1
  %i.bqm = shufflevector <4 x float> %i.bql, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bqn = fmul fast <4 x float> %i.bqm, <float 2.000000e+00, float 4.000000e+00, float 8.000000e+00, float 1.600000e+01>
  %i.bqo = insertelement <4 x float> poison, float %i.bqg, i64 0
  %i.bqp = insertelement <4 x float> %i.bqo, float %i.bqf, i64 1
  %i.bqq = insertelement <4 x float> %i.bqp, float %i.bqc, i64 2
  %i.bqr = shufflevector <4 x float> %i.bqq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.bqs = fadd fast <4 x float> %i.bqr, %i.bqn   ; 4 uses
  %i.bqt = extractelement <4 x float> %i.bqs, i64 0
  store float %i.bqt, ptr %i.bpx, align 4, !tbaa !39
  %i.bqu = extractelement <4 x float> %i.bqs, i64 1
  %i.bqv = fadd fast float %i.bpy, %i.bqu
  store float %i.bqv, ptr %i.bpz, align 4, !tbaa !39
  %i.bqw = extractelement <4 x float> %i.bqs, i64 2
  %i.bqx = fadd fast float %i.bqa, %i.bqw
  store float %i.bqx, ptr %i.bqb, align 4, !tbaa !39
  %factor2446.us.i = fmul fast float %i.bpr, 2.000000e+00
  %i.bqy = extractelement <4 x float> %i.bqs, i64 3
  %i.bqz = fadd fast float %factor2446.us.i, %i.bqy
  %i.bra = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv2582.i
  store float %i.bqz, ptr %i.bra, align 4, !tbaa !39
  %i.brb = load float, ptr %.07452524.us.i, align 4, !tbaa !39
  %i.brc = fadd fast float %i.bqc, %i.brb
  %i.brd = fmul fast float %i.bqe, 3.200000e+01
  %i.bre = fadd fast float %i.brd, %i.brc
  %i.brf = fadd fast float %i.bre, %i.bps
  %i.brg = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv2582.i
  store float %i.brf, ptr %i.brg, align 4, !tbaa !39
  %i.brh = getelementptr inbounds nuw [4 x i8], ptr %.07522517.us.i, i64 %i.bom
  %i.bri = getelementptr inbounds nuw [4 x i8], ptr %.07512518.us.i, i64 %i.bom
  %i.brj = getelementptr inbounds nuw [4 x i8], ptr %.07502519.us.i, i64 %i.bom
  %i.brk = getelementptr inbounds nuw [4 x i8], ptr %.07492520.us.i, i64 %i.bom
  %i.brl = getelementptr inbounds nuw [4 x i8], ptr %.07482521.us.i, i64 %i.bom
  %i.brm = getelementptr inbounds nuw [4 x i8], ptr %.07472522.us.i, i64 %i.bom
  %i.brn = getelementptr inbounds nuw [4 x i8], ptr %.07462523.us.i, i64 %i.bom
  %i.bro = getelementptr inbounds nuw [4 x i8], ptr %.07452524.us.i, i64 %i.bom
  %indvars.iv.next2583.i = add nuw nsw i64 %indvars.iv2582.i, 1 ; 2 uses
  %exitcond2585.not.i = icmp eq i64 %indvars.iv.next2583.i, 8
  br i1 %exitcond2585.not.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, label %bb.cb, !llvm.loop !1843

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %bb.cb
  %i.brp = trunc i64 %indvars.iv2590.i to i32
  %i.brq = add i32 %.047134, %i.brp               ; 2 uses
  %i.brr = sdiv i32 %i.brq, %i.ct
  %i.brs = srem i32 %i.brq, %i.ct
  %i.brt = mul nsw i32 %i.brr, 6
  %i.bru = sext i32 %i.brt to i64                 ; 2 uses
  %.reass2532.us.i = mul i64 %factor.op.mul2531.us.i, %i.bru
  %i.brv = getelementptr inbounds nuw i8, ptr %i.bpb, i64 %.reass2532.us.i
  %i.brw = mul nsw i32 %i.brs, 6                  ; 6 uses
  %i.brx = sext i32 %i.brw to i64
  %i.bry = getelementptr inbounds [2 x i8], ptr %i.brv, i64 %i.brx
  %i.brz = or disjoint i32 %i.brw, 1
  %i.bsa = icmp slt i32 %i.brz, %i.cm
  %i.bsb = add nsw i32 %i.brw, 2
  %i.bsc = icmp slt i32 %i.bsb, %i.cm
  %i.bsd = add nsw i32 %i.brw, 3
  %i.bse = icmp slt i32 %i.bsd, %i.cm
  %i.bsf = add nsw i32 %i.brw, 4
  %i.bsg = icmp slt i32 %i.bsf, %i.cm
  %i.bsh = add nsw i32 %i.brw, 5
  %i.bsi = icmp slt i32 %i.bsh, %i.cm
  %invariant.op2638.i = sub nsw i64 %i.bot, %i.bru
  br label %bb.cc

bb.cc:                                            ; preds = %bb.dc, %_ZN4ncnn3MatD2Ev.exit.us.i
  %indvars.iv2586.i = phi i64 [ %indvars.iv.next2587.i, %bb.dc ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us.i ] ; 3 uses
  %.07432526.us.i = phi ptr [ %.1.us.i, %bb.dc ], [ %i.bry, %_ZN4ncnn3MatD2Ev.exit.us.i ] ; 8 uses
  %.not788.us.i = icmp slt i64 %indvars.iv2586.i, %invariant.op2638.i
  br i1 %.not788.us.i, label %bb.cd, label %bb.dc

bb.cd:                                            ; preds = %bb.cc
  %i.bsj = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv2586.i ; 8 uses
  %i.bsk = load float, ptr %i.bsj, align 16, !tbaa !39
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.bsj, i64 4
  %i.bsm = load float, ptr %i.bsl, align 4, !tbaa !39 ; 2 uses
  %i.bsn = getelementptr inbounds nuw i8, ptr %i.bsj, i64 8
  %i.bso = load float, ptr %i.bsn, align 8, !tbaa !39 ; 2 uses
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.bsj, i64 12
  %i.bsq = getelementptr inbounds nuw i8, ptr %i.bsj, i64 16
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsj, i64 20
  %i.bss = getelementptr inbounds nuw i8, ptr %i.bsj, i64 24
  %i.bst = getelementptr inbounds nuw i8, ptr %i.bsj, i64 28
  %i.bsu = load float, ptr %i.bst, align 4, !tbaa !39
end_hunk_27
begin_hunk_28_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
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
  %i.oy = fmul fast <4 x float> %i.ox, %i.ox      ; 2 uses
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
  %i.pp = fmul fast <4 x float> %i.oy, %i.ox
  %i.pq = fmul fast <4 x float> %i.pp, %i.po
  %.neg433 = fmul fast <4 x float> %i.oy, splat (float -5.000000e-01)
  %reass.mul = fmul fast <4 x float> %i.ow, splat (float f0x3F317218)
  %i.pr = fadd fast <4 x float> %i.ox, %.neg433
  %i.ps = fadd fast <4 x float> %i.pq, %i.pr
  %i.pt = fadd fast <4 x float> %i.ps, %reass.mul
  %.neg = fmul fast <4 x float> %i.pt, splat (float -2.000000e+00)
  %i.pu = select fast <4 x i1> %i.oj, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.pv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.pu, <4 x float> splat (float f0x42B0C0A5))
  %i.pw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.pv, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.px = fmul fast <4 x float> %i.pw, splat (float f0x3FB8AA3B)
  %i.py = fadd fast <4 x float> %i.px, splat (float 5.000000e-01) ; 2 uses
  %i.pz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.py)
  %i.qa = sitofp fast <4 x i32> %i.pz to <4 x float> ; 2 uses
  %i.qb = fcmp fast olt <4 x float> %i.py, %i.qa
  %i.qc = select <4 x i1> %i.qb, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.qd = fsub fast <4 x float> %i.qa, %i.qc      ; 2 uses
  %i.qe = fmul fast <4 x float> %i.qd, splat (float f0x3F317218)
  %i.qf = fsub fast <4 x float> %i.pw, %i.qe      ; 8 uses
  %i.qg = fmul fast <4 x float> %i.qf, %i.qf
  %i.qh = fmul fast <4 x float> %i.qf, splat (float f0x39506967)
  %i.qi = fadd fast <4 x float> %i.qh, splat (float f0x3AB743CE)
  %i.qj = fmul fast <4 x float> %i.qi, %i.qf
  %i.qk = fadd fast <4 x float> %i.qj, splat (float f0x3C088908)
  %i.ql = fmul fast <4 x float> %i.qk, %i.qf
  %i.qm = fadd fast <4 x float> %i.ql, splat (float f0x3D2AA9C1)
  %i.qn = fmul fast <4 x float> %i.qm, %i.qf
  %i.qo = fadd fast <4 x float> %i.qn, splat (float f0x3E2AAAAA)
  %i.qp = fmul fast <4 x float> %i.qo, %i.qf
  %i.qq = fadd fast <4 x float> %i.qp, splat (float 5.000000e-01)
  %i.qr = fmul fast <4 x float> %i.qg, %i.qq
  %i.qs = fadd fast <4 x float> %i.qf, %i.qr
  %i.qt = fadd fast <4 x float> %i.qs, splat (float 1.000000e+00)
  %i.qu = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qd)
  %i.qv = shl <4 x i32> %i.qu, splat (i32 23)
  %i.qw = add <4 x i32> %i.qv, splat (i32 1065353216)
  %i.qx = bitcast <4 x i32> %i.qw to <4 x float>
  %i.qy = fmul fast <4 x float> %i.qt, %i.qx
  %i.qz = fadd fast <4 x float> %i.qy, splat (float 1.000000e+00)
  %i.ra = fdiv fast <4 x float> splat (float 2.000000e+00), %i.qz
  %i.rb = fadd fast <4 x float> %i.ra, splat (float -1.000000e+00)
  %i.rc = fmul fast <4 x float> %i.rb, %i.lc
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.k:                                             ; preds = %._crit_edge508
  %i.rd = load ptr, ptr %14, align 8, !tbaa !18   ; 2 uses
  %i.re = load float, ptr %i.rd, align 4, !tbaa !39
  %i.rf = insertelement <4 x float> poison, float %i.re, i64 0
  %i.rg = shufflevector <4 x float> %i.rf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rd, i64 4
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !39
  %i.rj = insertelement <4 x float> poison, float %i.ri, i64 0
  %i.rk = shufflevector <4 x float> %i.rj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rl = fmul fast <4 x float> %i.rg, %i.lc
  %i.rm = fadd fast <4 x float> %i.rl, %i.rk
  %i.rn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.rm, <4 x float> zeroinitializer)
  %i.ro = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.rn, <4 x float> splat (float 1.000000e+00))
  %i.rp = fmul fast <4 x float> %i.ro, %i.lc
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.k, %.noexc179, %.noexc178, %bb.j, %.noexc177, %bb.i, %._crit_edge508
  %.0.i = phi nsz <4 x float> [ %i.rp, %bb.k ], [ %i.le, %bb.i ], [ %i.lm, %.noexc177 ], [ %i.lw, %bb.j ], [ %i.nd, %.noexc178 ], [ %i.rc, %.noexc179 ], [ %i.lc, %._crit_edge508 ] ; 2 uses
  switch i32 %i.af, label %bb.m [
    i32 4, label %.thread
    i32 1, label %bb.l
  ]

.thread:                                          ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.rq = bitcast <4 x float> %.0.i to <8 x i16>
  %i.rr = shufflevector <8 x i16> %i.rq, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.rs = bitcast <8 x i16> %i.rr to <4 x float>
  %i.rt = shufflevector <4 x float> %i.rs, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ru = bitcast <4 x float> %i.rt to <2 x i64>
  %i.rv = extractelement <2 x i64> %i.ru, i64 0
  store i64 %i.rv, ptr %.1132517, align 1, !tbaa !254
  %i.rw = getelementptr inbounds nuw i8, ptr %.1132517, i64 8
  br label %bb.m

bb.l:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.rx = bitcast <4 x float> %.0.i to <8 x i16>  ; 4 uses
  %i.ry = extractelement <8 x i16> %i.rx, i64 1
  store i16 %i.ry, ptr %.1132517, align 2, !tbaa !394
  %i.rz = extractelement <8 x i16> %i.rx, i64 3
  %i.sa = load i64, ptr %15, align 8, !tbaa !233  ; 3 uses
  %i.sb = getelementptr inbounds nuw [2 x i8], ptr %.1132517, i64 %i.sa
  store i16 %i.rz, ptr %i.sb, align 2, !tbaa !394
  %i.sc = extractelement <8 x i16> %i.rx, i64 5
  %.idx = shl i64 %i.sa, 2
  %i.sd = getelementptr inbounds nuw i8, ptr %.1132517, i64 %.idx
  store i16 %i.sc, ptr %i.sd, align 2, !tbaa !394
  %i.se = extractelement <8 x i16> %i.rx, i64 7
  %.idx138 = mul i64 %i.sa, 6
  %i.sf = getelementptr inbounds nuw i8, ptr %.1132517, i64 %.idx138
  store i16 %i.se, ptr %i.sf, align 2, !tbaa !394
  %i.sg = getelementptr inbounds nuw i8, ptr %.1132517, i64 2
  br label %bb.m

bb.m:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.thread, %bb.l
  %.3134 = phi ptr [ %i.sg, %bb.l ], [ %.1132517, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.rw, %.thread ] ; 2 uses
  %i.sh = add nuw nsw i32 %.0129518, 1            ; 2 uses
  %exitcond576.not = icmp eq i32 %i.sh, %i.ae
  br i1 %exitcond576.not, label %._crit_edge, label %bb.c, !llvm.loop !1985

._crit_edge526:                                   ; preds = %._crit_edge523.split, %_ZN4ncnn3MatD2Ev.exit150.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge526, %bb.a
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
