Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/rotaryembed?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn11RotaryEmbedD0Ev(ptr noundef nonnull align 8 dereferenceable(212) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(212) dereferenceable(212) %0) #6
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #9
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn11RotaryEmbed10load_paramERKNS_9ParamDictE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(212) initializes((208, 212)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0, i32 noundef 0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %i.a, ptr %i.b, align 8, !tbaa !27
  ret i32 0
}

declare noundef i32 @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn11RotaryEmbed7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(212) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  %i.e = load ptr, ptr %1, align 8, !tbaa !36     ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !30
  store i32 %i.i, ptr %i.a, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !37
  store i32 %i.k, ptr %i.b, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !38
  store i32 %i.m, ptr %i.c, align 4, !tbaa !31
  %i.n = load ptr, ptr %2, align 8, !tbaa !36     ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40
  tail call void @_ZN4ncnn3Mat11create_likeERKS0_PNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef %i.p)
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !32
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.t = load i64, ptr %i.s, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.v = load i32, ptr %i.u, align 8, !tbaa !38
  %i.w = sext i32 %i.v to i64
  %i.x = mul i64 %i.t, %i.w
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !41
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.d, i32 %i.aa)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZNK4ncnn11RotaryEmbed7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.e, ptr nonnull %i.n, ptr nonnull %i.b, ptr nonnull %0, ptr nonnull %i.f, ptr nonnull %i.g, ptr nonnull %i.a)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.a, %_ZNK4ncnn3Mat5emptyEv.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn11RotaryEmbedC2Ev(ptr noundef nonnull align 8 dereferenceable(212) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn11RotaryEmbedE, i64 16), ptr %0, align 8, !tbaa !43
  ret void
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @_ZN4ncnn3Mat11create_likeERKS0_PNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11RotaryEmbed7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !31     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !31
  %i.h = load i32, ptr %0, align 4, !tbaa !31     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !31
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !31
  %i.k = load i32, ptr %i.a, align 4, !tbaa !31   ; 3 uses
  %.not148 = icmp sgt i32 %i.k, %i.j
  br i1 %.not148, label %._crit_edge.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !30, !noalias !65
  %i.n = load ptr, ptr %3, align 8, !tbaa !32, !noalias !65 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !33, !noalias !65 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !66, !noalias !65 ; 9 uses
  %factor.op.mul150 = mul i64 %i.p, %i.r          ; 2 uses
  %i.s = sext i32 %i.m to i64                     ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !30, !noalias !67
  %i.v = load ptr, ptr %4, align 8, !tbaa !32, !noalias !67 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !33, !noalias !67 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !66, !noalias !67 ; 8 uses
  %factor.op.mul152 = mul i64 %i.x, %i.z          ; 2 uses
  %i.aa = sext i32 %i.u to i64                    ; 5 uses
  %i.ab = load i32, ptr %5, align 4, !tbaa !31    ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = mul i64 %i.r, %i.s                      ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ai = mul i64 %i.z, %i.aa                     ; 2 uses
  br i1 %i.ac, label %.noexc.lr.ph.split, label %._crit_edge.split

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 208
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !27
  %.not84 = icmp eq i32 %i.ak, 0
  br i1 %.not84, label %.noexc.lr.ph.split.split.us, label %.noexc.lr.ph.split.split

.noexc.lr.ph.split.split.us:                      ; preds = %.noexc.lr.ph.split
  %i.al = load i32, ptr %9, align 4, !tbaa !31    ; 2 uses
  %i.am = sdiv i32 %i.al, 2                       ; 6 uses
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = load ptr, ptr %8, align 8, !tbaa !32    ; 4 uses
  %i.ap = load i32, ptr %i.ag, align 4, !tbaa !30
  %i.aq = sext i32 %i.ap to i64                   ; 3 uses
  %i.ar = load i64, ptr %i.ah, align 8, !tbaa !66 ; 3 uses
  %factor.op.mul144.us = mul i64 %i.ar, %i.aq
  %i.as = load ptr, ptr %7, align 8, !tbaa !32    ; 4 uses
  %i.at = load i32, ptr %i.ae, align 4, !tbaa !30
  %i.au = sext i32 %i.at to i64                   ; 3 uses
  %i.av = load i64, ptr %i.af, align 8, !tbaa !66 ; 3 uses
  %factor.op.mul146.us = mul i64 %i.av, %i.au
  %i.aw = icmp sgt i32 %i.al, 1
  br i1 %i.aw, label %.noexc.us.preheader, label %._crit_edge.split

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.split.us
  %i.ax = sext i32 %i.k to i64                    ; 5 uses
  %i.ay = add nsw i32 %i.j, 1
  %wide.trip.count167 = zext nneg i32 %i.ab to i64 ; 2 uses
  %i.az = add nsw i64 %wide.trip.count167, -1     ; 4 uses
  %i.ba = mul nsw i64 %i.az, %i.aa
  %i.bb = mul i64 %i.x, %i.ax
  %i.bc = add i64 %i.ba, %i.bb
  %i.bd = mul i64 %i.z, %i.bc                     ; 2 uses
  %i.be = add nsw i32 %i.am, -1
  %i.bf = zext i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 2                ; 6 uses
  %i.bh = mul i64 %i.x, %i.z                      ; 2 uses
  %i.bi = mul i64 %i.z, %i.aa                     ; 9 uses
  %i.bj = mul i64 %i.bh, %i.ax
  %i.bk = shl nuw nsw i64 %i.an, 2                ; 4 uses
  %i.bl = mul i64 %i.p, %i.r
  %i.bm = mul i64 %i.bl, %i.ax
  %i.bn = mul i64 %i.p, %i.r
  %i.bo = mul nsw i64 %i.az, %i.s
  %i.bp = mul i64 %i.p, %i.ax
  %i.bq = add i64 %i.bo, %i.bp
  %i.br = mul i64 %i.r, %i.bq                     ; 2 uses
  %i.bs = mul i64 %i.r, %i.s                      ; 4 uses
  %i.bt = mul i64 %i.av, %i.az
  %i.bu = mul i64 %i.bt, %i.au
  %i.bv = getelementptr i8, ptr %i.as, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.bg
  %scevgep212 = getelementptr i8, ptr %i.bw, i64 4 ; 2 uses
  %i.bx = mul i64 %i.av, %i.au                    ; 2 uses
  %i.by = mul i64 %i.ar, %i.az
  %i.bz = mul i64 %i.by, %i.aq
  %i.ca = getelementptr i8, ptr %i.ao, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.bg
  %scevgep213 = getelementptr i8, ptr %i.cb, i64 4 ; 2 uses
  %i.cc = mul i64 %i.ar, %i.aq                    ; 2 uses
  %i.cd = getelementptr i8, ptr %i.v, i64 %i.bd
  %i.ce = getelementptr i8, ptr %i.cd, i64 %i.bg
  %i.cf = getelementptr i8, ptr %i.ce, i64 4
  %i.cg = getelementptr i8, ptr %i.v, i64 %i.bj
  %i.ch = getelementptr i8, ptr %i.cg, i64 %i.bk
  %i.ci = getelementptr i8, ptr %i.v, i64 %i.bd
  %i.cj = getelementptr i8, ptr %i.ci, i64 %i.bk
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.bg
  %i.cl = getelementptr i8, ptr %i.ck, i64 4
  %i.cm = getelementptr i8, ptr %i.n, i64 %i.bm
  %i.cn = getelementptr i8, ptr %i.cm, i64 %i.bk
  %i.co = getelementptr i8, ptr %i.n, i64 %i.br
  %i.cp = getelementptr i8, ptr %i.co, i64 %i.bk
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.bg
  %i.cr = getelementptr i8, ptr %i.cq, i64 4
  %i.cs = getelementptr i8, ptr %i.n, i64 %i.br
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.bg
  %i.cu = getelementptr i8, ptr %i.ct, i64 4
  %i.cv = add nsw i32 %i.am, -1                   ; 2 uses
  %i.cw = zext i32 %i.cv to i64
  %i.cx = add nuw nsw i64 %i.cw, 1                ; 2 uses
  %min.iters.check268 = icmp ult i32 %i.cv, 19
  %stride.check217 = icmp slt i64 %i.bi, 0
  %10 = or i64 %i.bs, %i.bi
  %11 = icmp slt i64 %10, 0
  %12 = or i64 %i.bs, %i.bi
  %13 = icmp slt i64 %12, 0
  %14 = or i64 %i.bx, %i.bi
  %15 = icmp slt i64 %14, 0
  %16 = or i64 %i.cc, %i.bi
  %17 = icmp slt i64 %16, 0
  %18 = or i64 %i.bs, %i.bi
  %i.cy = icmp slt i64 %18, 0
  %19 = or i64 %i.bs, %i.bi
  %i.cz = icmp slt i64 %19, 0
  %20 = or i64 %i.bx, %i.bi
  %i.da = icmp slt i64 %20, 0
  %21 = or i64 %i.cc, %i.bi
  %i.db = icmp slt i64 %21, 0
  %n.vec270 = and i64 %i.cx, 8589934588           ; 4 uses
  %i.dc = trunc i64 %n.vec270 to i32
  %i.dd = shl nuw nsw i64 %n.vec270, 2            ; 6 uses
  %cmp.n285 = icmp eq i64 %i.cx, %n.vec270
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split.us.us
  %indvar204 = phi i64 [ 0, %.noexc.us.preheader ], [ %indvar.next205, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split.us.us ] ; 3 uses
  %indvars.iv169 = phi i64 [ %i.ax, %.noexc.us.preheader ], [ %indvars.iv.next170, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split.us.us ] ; 3 uses
  %i.de = mul i64 %i.bh, %indvar204               ; 3 uses
  %scevgep206.a = getelementptr i8, ptr %i.cf, i64 %i.de ; 5 uses
  %scevgep207.a = getelementptr i8, ptr %i.ch, i64 %i.de ; 5 uses
  %scevgep208.a = getelementptr i8, ptr %i.cl, i64 %i.de ; 5 uses
  %i.df = mul i64 %i.bn, %indvar204               ; 3 uses
  %scevgep209.a = getelementptr i8, ptr %i.cn, i64 %i.df ; 2 uses
  %scevgep210 = getelementptr i8, ptr %i.cr, i64 %i.df ; 2 uses
  %scevgep211 = getelementptr i8, ptr %i.cu, i64 %i.df ; 2 uses
  %.reass151.us = mul i64 %factor.op.mul150, %indvars.iv169
  %i.dg = getelementptr i8, ptr %i.n, i64 %.reass151.us ; 3 uses
  %.reass153.us = mul i64 %factor.op.mul152, %indvars.iv169
  %i.dh = getelementptr i8, ptr %i.v, i64 %.reass153.us ; 6 uses
  %bound0214 = icmp ult ptr %i.dh, %scevgep208.a
  %bound1215 = icmp ult ptr %scevgep207.a, %scevgep206.a
  %found.conflict216 = and i1 %bound0214, %bound1215
  %i.di = or i1 %found.conflict216, %stride.check217
  %bound0219 = icmp ult ptr %i.dh, %scevgep210
  %bound1220 = icmp ult ptr %scevgep209.a, %scevgep206.a
  %found.conflict221 = and i1 %bound0219, %bound1220
  %i.dj = or i1 %found.conflict221, %11
  %conflict.rdx224.a = or i1 %i.di, %i.dj
  %bound0225.a = icmp ult ptr %i.dh, %scevgep211
  %bound1226.a = icmp ult ptr %i.dg, %scevgep206.a
  %found.conflict227.a = and i1 %bound0225.a, %bound1226.a
  %22 = or i1 %found.conflict227.a, %13
  %conflict.rdx230 = or i1 %conflict.rdx224.a, %22
  %bound0231 = icmp ult ptr %i.dh, %scevgep212
  %bound1232 = icmp ult ptr %i.as, %scevgep206.a
  %found.conflict233 = and i1 %bound0231, %bound1232
  %i.dk = or i1 %found.conflict233, %15
  %conflict.rdx236 = or i1 %conflict.rdx230, %i.dk
  %bound0237 = icmp ult ptr %i.dh, %scevgep213
  %bound1238 = icmp ult ptr %i.ao, %scevgep206.a
  %found.conflict239 = and i1 %bound0237, %bound1238
  %i.dl = or i1 %found.conflict239, %17
  %conflict.rdx242.a = or i1 %conflict.rdx236, %i.dl
  %bound0243.a = icmp ult ptr %scevgep207.a, %scevgep210
  %bound1244.a = icmp ult ptr %scevgep209.a, %scevgep208.a
  %found.conflict245.a = and i1 %bound0243.a, %bound1244.a
  %23 = or i1 %found.conflict245.a, %i.cy
  %conflict.rdx248 = or i1 %conflict.rdx242.a, %23
  %bound0249 = icmp ult ptr %scevgep207.a, %scevgep211
  %bound1250 = icmp ult ptr %i.dg, %scevgep208.a
  %found.conflict251 = and i1 %bound0249, %bound1250
  %24 = or i1 %found.conflict251, %i.cz
  %conflict.rdx254 = or i1 %conflict.rdx248, %24
  %bound0255 = icmp ult ptr %scevgep207.a, %scevgep212
  %bound1256 = icmp ult ptr %i.as, %scevgep208.a
  %found.conflict257 = and i1 %bound0255, %bound1256
  %25 = or i1 %found.conflict257, %i.da
  %conflict.rdx260 = or i1 %conflict.rdx254, %25
  %bound0261 = icmp ult ptr %scevgep207.a, %scevgep213
  %bound1262 = icmp ult ptr %i.ao, %scevgep208.a
  %found.conflict263 = and i1 %bound0261, %bound1262
  %26 = or i1 %found.conflict263, %i.db
  %conflict.rdx266 = or i1 %conflict.rdx260, %26
  br label %.lr.ph139.us.us

.lr.ph139.us.us:                                  ; preds = %.noexc.us, %..loopexit_crit_edge.us.us
  %indvars.iv164 = phi i64 [ 0, %.noexc.us ], [ %indvars.iv.next165, %..loopexit_crit_edge.us.us ] ; 5 uses
  %i.dm = mul i64 %i.ad, %indvars.iv164
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dm ; 5 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.an ; 4 uses
  %.reass145.us = mul i64 %factor.op.mul144.us, %indvars.iv164
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.reass145.us ; 4 uses
  %.reass147.us = mul i64 %factor.op.mul146.us, %indvars.iv164
  %i.dq = getelementptr inbounds nuw i8, ptr %i.as, i64 %.reass147.us ; 4 uses
  %i.dr = mul i64 %i.ai, %indvars.iv164
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dr ; 5 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.an ; 4 uses
  br i1 %min.iters.check268, label %scalar.ph267.preheader, label %vector.memcheck203

vector.memcheck203:                               ; preds = %.lr.ph139.us.us
  br i1 %conflict.rdx266, label %scalar.ph267.preheader, label %vector.ph269

vector.ph269:                                     ; preds = %vector.memcheck203
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.dd
  %i.dv = getelementptr i8, ptr %i.ds, i64 %i.dd
  %i.dw = getelementptr i8, ptr %i.dq, i64 %i.dd
  %i.dx = getelementptr i8, ptr %i.dp, i64 %i.dd
  %i.dy = getelementptr i8, ptr %i.do, i64 %i.dd
  %i.dz = getelementptr i8, ptr %i.dn, i64 %i.dd
  br label %vector.body271

vector.body271:                                   ; preds = %vector.body271, %vector.ph269
  %index272 = phi i64 [ 0, %vector.ph269 ], [ %index.next283, %vector.body271 ] ; 2 uses
  %i.ea = shl i64 %index272, 2                    ; 6 uses
  %next.gep273 = getelementptr i8, ptr %i.dt, i64 %i.ea
  %next.gep274 = getelementptr i8, ptr %i.ds, i64 %i.ea
  %next.gep275 = getelementptr i8, ptr %i.dq, i64 %i.ea
  %next.gep276 = getelementptr i8, ptr %i.dp, i64 %i.ea
  %next.gep277 = getelementptr i8, ptr %i.do, i64 %i.ea
  %next.gep278 = getelementptr i8, ptr %i.dn, i64 %i.ea
  %wide.load279 = load <4 x float>, ptr %next.gep278, align 4, !tbaa !69, !alias.scope !70 ; 2 uses
  %wide.load280 = load <4 x float>, ptr %next.gep277, align 4, !tbaa !69, !alias.scope !71 ; 2 uses
  %wide.load281 = load <4 x float>, ptr %next.gep275, align 4, !tbaa !69, !alias.scope !72 ; 2 uses
  %wide.load282 = load <4 x float>, ptr %next.gep276, align 4, !tbaa !69, !alias.scope !73 ; 2 uses
  %i.eb = fmul fast <4 x float> %wide.load281, %wide.load279
  %i.ec = fmul fast <4 x float> %wide.load282, %wide.load280
  %i.ed = fsub fast <4 x float> %i.eb, %i.ec
  store <4 x float> %i.ed, ptr %next.gep274, align 4, !tbaa !69, !alias.scope !74, !noalias !75
  %i.ee = fmul fast <4 x float> %wide.load282, %wide.load279
  %i.ef = fmul fast <4 x float> %wide.load281, %wide.load280
  %i.eg = fadd fast <4 x float> %i.ee, %i.ef
  store <4 x float> %i.eg, ptr %next.gep273, align 4, !tbaa !69, !alias.scope !76, !noalias !77
  %index.next283 = add nuw i64 %index272, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next283, %n.vec270
  br i1 %i.eh, label %middle.block284, label %vector.body271, !llvm.loop !55

middle.block284:                                  ; preds = %vector.body271
  br i1 %cmp.n285, label %..loopexit_crit_edge.us.us, label %scalar.ph267.preheader

scalar.ph267.preheader:                           ; preds = %vector.memcheck203, %.lr.ph139.us.us, %middle.block284
  %.071138.us.us.ph = phi i32 [ 0, %vector.memcheck203 ], [ 0, %.lr.ph139.us.us ], [ %i.dc, %middle.block284 ] ; 4 uses
  %.072137.us.us.ph = phi ptr [ %i.dt, %vector.memcheck203 ], [ %i.dt, %.lr.ph139.us.us ], [ %i.du, %middle.block284 ] ; 3 uses
  %.073136.us.us.ph = phi ptr [ %i.ds, %vector.memcheck203 ], [ %i.ds, %.lr.ph139.us.us ], [ %i.dv, %middle.block284 ] ; 3 uses
  %.074135.us.us.ph = phi ptr [ %i.dq, %vector.memcheck203 ], [ %i.dq, %.lr.ph139.us.us ], [ %i.dw, %middle.block284 ] ; 3 uses
  %.075134.us.us.ph = phi ptr [ %i.dp, %vector.memcheck203 ], [ %i.dp, %.lr.ph139.us.us ], [ %i.dx, %middle.block284 ] ; 3 uses
  %.076133.us.us.ph = phi ptr [ %i.do, %vector.memcheck203 ], [ %i.do, %.lr.ph139.us.us ], [ %i.dy, %middle.block284 ] ; 3 uses
  %.077132.us.us.ph = phi ptr [ %i.dn, %vector.memcheck203 ], [ %i.dn, %.lr.ph139.us.us ], [ %i.dz, %middle.block284 ] ; 3 uses
  %i.ei = sub i32 %i.am, %.071138.us.us.ph
  %.neg296 = add i32 %.071138.us.us.ph, 1
  %xtraiter294 = and i32 %i.ei, 1
  %lcmp.mod295.not = icmp eq i32 %xtraiter294, 0
  br i1 %lcmp.mod295.not, label %scalar.ph267.prol.loopexit, label %scalar.ph267.prol

scalar.ph267.prol:                                ; preds = %scalar.ph267.preheader
  %i.ej = getelementptr inbounds nuw i8, ptr %.077132.us.us.ph, i64 4
  %i.ek = load float, ptr %.077132.us.us.ph, align 4, !tbaa !69 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.076133.us.us.ph, i64 4
  %i.em = load float, ptr %.076133.us.us.ph, align 4, !tbaa !69 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.074135.us.us.ph, i64 4
  %i.eo = load float, ptr %.074135.us.us.ph, align 4, !tbaa !69 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.075134.us.us.ph, i64 4
  %i.eq = load float, ptr %.075134.us.us.ph, align 4, !tbaa !69 ; 2 uses
  %i.er = fmul fast float %i.eo, %i.ek
  %i.es = fmul fast float %i.eq, %i.em
  %i.et = fsub fast float %i.er, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %.073136.us.us.ph, i64 4
  store float %i.et, ptr %.073136.us.us.ph, align 4, !tbaa !69
  %i.ev = fmul fast float %i.eq, %i.ek
  %i.ew = fmul fast float %i.eo, %i.em
  %i.ex = fadd fast float %i.ev, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %.072137.us.us.ph, i64 4
  store float %i.ex, ptr %.072137.us.us.ph, align 4, !tbaa !69
  %i.ez = add nuw nsw i32 %.071138.us.us.ph, 1
  br label %scalar.ph267.prol.loopexit

scalar.ph267.prol.loopexit:                       ; preds = %scalar.ph267.prol, %scalar.ph267.preheader
  %.071138.us.us.unr = phi i32 [ %.071138.us.us.ph, %scalar.ph267.preheader ], [ %i.ez, %scalar.ph267.prol ]
  %.072137.us.us.unr = phi ptr [ %.072137.us.us.ph, %scalar.ph267.preheader ], [ %i.ey, %scalar.ph267.prol ]
  %.073136.us.us.unr = phi ptr [ %.073136.us.us.ph, %scalar.ph267.preheader ], [ %i.eu, %scalar.ph267.prol ]
  %.074135.us.us.unr = phi ptr [ %.074135.us.us.ph, %scalar.ph267.preheader ], [ %i.en, %scalar.ph267.prol ]
  %.075134.us.us.unr = phi ptr [ %.075134.us.us.ph, %scalar.ph267.preheader ], [ %i.ep, %scalar.ph267.prol ]
  %.076133.us.us.unr = phi ptr [ %.076133.us.us.ph, %scalar.ph267.preheader ], [ %i.el, %scalar.ph267.prol ]
  %.077132.us.us.unr = phi ptr [ %.077132.us.us.ph, %scalar.ph267.preheader ], [ %i.ej, %scalar.ph267.prol ]
  %i.fa = icmp eq i32 %i.am, %.neg296
  br i1 %i.fa, label %..loopexit_crit_edge.us.us, label %scalar.ph267

scalar.ph267:                                     ; preds = %scalar.ph267.prol.loopexit, %scalar.ph267
  %.071138.us.us = phi i32 [ %i.gh, %scalar.ph267 ], [ %.071138.us.us.unr, %scalar.ph267.prol.loopexit ]
  %.072137.us.us = phi ptr [ %i.gg, %scalar.ph267 ], [ %.072137.us.us.unr, %scalar.ph267.prol.loopexit ] ; 3 uses
  %.073136.us.us = phi ptr [ %i.gc, %scalar.ph267 ], [ %.073136.us.us.unr, %scalar.ph267.prol.loopexit ] ; 3 uses
  %.074135.us.us = phi ptr [ %i.fv, %scalar.ph267 ], [ %.074135.us.us.unr, %scalar.ph267.prol.loopexit ] ; 3 uses
  %.075134.us.us = phi ptr [ %i.fx, %scalar.ph267 ], [ %.075134.us.us.unr, %scalar.ph267.prol.loopexit ] ; 3 uses
  %.076133.us.us = phi ptr [ %i.ft, %scalar.ph267 ], [ %.076133.us.us.unr, %scalar.ph267.prol.loopexit ] ; 3 uses
  %.077132.us.us = phi ptr [ %i.fr, %scalar.ph267 ], [ %.077132.us.us.unr, %scalar.ph267.prol.loopexit ] ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.077132.us.us, i64 4
  %i.fc = load float, ptr %.077132.us.us, align 4, !tbaa !69 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.076133.us.us, i64 4
  %i.fe = load float, ptr %.076133.us.us, align 4, !tbaa !69 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.074135.us.us, i64 4
  %i.fg = load float, ptr %.074135.us.us, align 4, !tbaa !69 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.075134.us.us, i64 4
  %i.fi = load float, ptr %.075134.us.us, align 4, !tbaa !69 ; 2 uses
  %i.fj = fmul fast float %i.fg, %i.fc
  %i.fk = fmul fast float %i.fi, %i.fe
  %i.fl = fsub fast float %i.fj, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %.073136.us.us, i64 4
  store float %i.fl, ptr %.073136.us.us, align 4, !tbaa !69
  %i.fn = fmul fast float %i.fi, %i.fc
  %i.fo = fmul fast float %i.fg, %i.fe
  %i.fp = fadd fast float %i.fn, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %.072137.us.us, i64 4
  store float %i.fp, ptr %.072137.us.us, align 4, !tbaa !69
  %i.fr = getelementptr inbounds nuw i8, ptr %.077132.us.us, i64 8
  %i.fs = load float, ptr %i.fb, align 4, !tbaa !69 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.076133.us.us, i64 8
  %i.fu = load float, ptr %i.fd, align 4, !tbaa !69 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.074135.us.us, i64 8
  %i.fw = load float, ptr %i.ff, align 4, !tbaa !69 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.075134.us.us, i64 8
  %i.fy = load float, ptr %i.fh, align 4, !tbaa !69 ; 2 uses
  %i.fz = fmul fast float %i.fw, %i.fs
  %i.ga = fmul fast float %i.fy, %i.fu
  %i.gb = fsub fast float %i.fz, %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %.073136.us.us, i64 8
  store float %i.gb, ptr %i.fm, align 4, !tbaa !69
  %i.gd = fmul fast float %i.fy, %i.fs
  %i.ge = fmul fast float %i.fw, %i.fu
  %i.gf = fadd fast float %i.gd, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %.072137.us.us, i64 8
  store float %i.gf, ptr %i.fq, align 4, !tbaa !69
  %i.gh = add nuw nsw i32 %.071138.us.us, 2       ; 2 uses
  %exitcond163.not.1 = icmp eq i32 %i.gh, %i.am
  br i1 %exitcond163.not.1, label %..loopexit_crit_edge.us.us, label %scalar.ph267, !llvm.loop !56

..loopexit_crit_edge.us.us:                       ; preds = %scalar.ph267.prol.loopexit, %scalar.ph267, %middle.block284
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count167
  br i1 %exitcond168.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split.us.us, label %.lr.ph139.us.us, !llvm.loop !57

._ZN4ncnn3MatD2Ev.exit_crit_edge.split.us.us:     ; preds = %..loopexit_crit_edge.us.us
  %indvars.iv.next170 = add nsw i64 %indvars.iv169, 1 ; 2 uses
  %lftr.wideiv172 = trunc i64 %indvars.iv.next170 to i32
  %exitcond173.not = icmp eq i32 %i.ay, %lftr.wideiv172
  %indvar.next205 = add i64 %indvar204, 1
  br i1 %exitcond173.not, label %._crit_edge.split, label %.noexc.us

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.gi = load ptr, ptr %7, align 8, !tbaa !32    ; 3 uses
  %i.gj = load i32, ptr %i.ae, align 4, !tbaa !30
  %i.gk = sext i32 %i.gj to i64                   ; 3 uses
  %i.gl = load i64, ptr %i.af, align 8, !tbaa !66 ; 3 uses
  %factor.op.mul = mul i64 %i.gl, %i.gk
  %i.gm = load ptr, ptr %8, align 8, !tbaa !32    ; 3 uses
  %i.gn = load i32, ptr %i.ag, align 4, !tbaa !30
  %i.go = sext i32 %i.gn to i64                   ; 3 uses
  %i.gp = load i64, ptr %i.ah, align 8, !tbaa !66 ; 3 uses
  %factor.op.mul142 = mul i64 %i.gp, %i.go
  %i.gq = load i32, ptr %9, align 4, !tbaa !31    ; 2 uses
  %i.gr = sdiv i32 %i.gq, 2                       ; 5 uses
  %i.gs = icmp sgt i32 %i.gq, 1
  br i1 %i.gs, label %.noexc.preheader, label %._crit_edge.split

.noexc.preheader:                                 ; preds = %.noexc.lr.ph.split.split
  %i.gt = sext i32 %i.k to i64                    ; 3 uses
  %i.gu = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.ab to i64   ; 2 uses
  %i.gv = add nsw i64 %wide.trip.count, -1        ; 4 uses
  %i.gw = mul nsw i64 %i.gv, %i.aa
  %i.gx = mul i64 %i.x, %i.gt
  %i.gy = add i64 %i.gw, %i.gx
  %i.gz = mul i64 %i.z, %i.gy
  %i.ha = add nsw i32 %i.gr, -1
  %i.hb = zext i32 %i.ha to i64                   ; 2 uses
  %i.hc = shl nuw nsw i64 %i.hb, 3                ; 2 uses
  %i.hd = mul i64 %i.x, %i.z
  %i.he = mul i64 %i.z, %i.aa                     ; 3 uses
  %i.hf = mul nsw i64 %i.gv, %i.s
  %i.hg = mul i64 %i.p, %i.gt
  %i.hh = add i64 %i.hf, %i.hg
  %i.hi = mul i64 %i.r, %i.hh
  %i.hj = mul i64 %i.p, %i.r
  %i.hk = mul i64 %i.r, %i.s
  %i.hl = mul i64 %i.gl, %i.gv
  %i.hm = mul i64 %i.hl, %i.gk
  %i.hn = shl nuw nsw i64 %i.hb, 2                ; 2 uses
  %i.ho = getelementptr i8, ptr %i.gi, i64 %i.hm
  %i.hp = getelementptr i8, ptr %i.ho, i64 %i.hn
  %scevgep180 = getelementptr i8, ptr %i.hp, i64 4
  %i.hq = mul i64 %i.gl, %i.gk
  %i.hr = mul i64 %i.gp, %i.gv
  %i.hs = mul i64 %i.hr, %i.go
  %i.ht = getelementptr i8, ptr %i.gm, i64 %i.hs
  %i.hu = getelementptr i8, ptr %i.ht, i64 %i.hn
  %scevgep181 = getelementptr i8, ptr %i.hu, i64 4
  %i.hv = mul i64 %i.gp, %i.go
  %i.hw = getelementptr i8, ptr %i.v, i64 %i.gz
  %i.hx = getelementptr i8, ptr %i.hw, i64 %i.hc
  %i.hy = getelementptr i8, ptr %i.hx, i64 8
  %i.hz = getelementptr i8, ptr %i.n, i64 %i.hi
  %i.ia = getelementptr i8, ptr %i.hz, i64 %i.hc
  %i.ib = getelementptr i8, ptr %i.ia, i64 8
  %i.ic = add nsw i32 %i.gr, -1                   ; 2 uses
  %i.id = zext i32 %i.ic to i64
  %i.ie = add nuw nsw i64 %i.id, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ic, 7
  %i.if = or i64 %i.hk, %i.he
  %i.ig = icmp slt i64 %i.if, 0
  %27 = or i64 %i.hq, %i.he
  %i.ih = icmp slt i64 %27, 0
  %28 = or i64 %i.hv, %i.he
  %i.ii = icmp slt i64 %28, 0
  %n.vec = and i64 %i.ie, 8589934588              ; 5 uses
  %i.ij = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.ik = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.il = trunc i64 %n.vec to i32
  %cmp.n = icmp eq i64 %i.ie, %n.vec
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split
  %indvar = phi i64 [ 0, %.noexc.preheader ], [ %indvar.next, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split ] ; 3 uses
  %indvars.iv159 = phi i64 [ %i.gt, %.noexc.preheader ], [ %indvars.iv.next160, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split ] ; 3 uses
  %i.im = mul i64 %i.hd, %indvar
  %scevgep = getelementptr i8, ptr %i.hy, i64 %i.im ; 3 uses
  %i.in = mul i64 %i.hj, %indvar
  %scevgep179 = getelementptr i8, ptr %i.ib, i64 %i.in
  %.reass151 = mul i64 %factor.op.mul150, %indvars.iv159
  %i.io = getelementptr i8, ptr %i.n, i64 %.reass151 ; 2 uses
  %.reass153 = mul i64 %factor.op.mul152, %indvars.iv159
  %i.ip = getelementptr i8, ptr %i.v, i64 %.reass153 ; 4 uses
  %bound0 = icmp ult ptr %i.ip, %scevgep179
  %bound1 = icmp ult ptr %i.io, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.iq = or i1 %found.conflict, %i.ig
  %bound0183 = icmp ult ptr %i.ip, %scevgep180
  %bound1184 = icmp ult ptr %i.gi, %scevgep
  %found.conflict185 = and i1 %bound0183, %bound1184
  %i.ir = or i1 %found.conflict185, %i.ih
  %conflict.rdx = or i1 %i.iq, %i.ir
  %bound0188 = icmp ult ptr %i.ip, %scevgep181
  %bound1189 = icmp ult ptr %i.gm, %scevgep
  %found.conflict190 = and i1 %bound0188, %bound1189
  %i.is = or i1 %found.conflict190, %i.ii
  %conflict.rdx193 = or i1 %conflict.rdx, %i.is
  br label %.lr.ph

._ZN4ncnn3MatD2Ev.exit_crit_edge.split:           ; preds = %..loopexit126_crit_edge
  %indvars.iv.next160 = add nsw i64 %indvars.iv159, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next160 to i32
  %exitcond162.not = icmp eq i32 %i.gu, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond162.not, label %._crit_edge.split, label %.noexc

.lr.ph:                                           ; preds = %.noexc, %..loopexit126_crit_edge
  %indvars.iv = phi i64 [ 0, %.noexc ], [ %indvars.iv.next, %..loopexit126_crit_edge ] ; 5 uses
  %i.it = mul i64 %i.ad, %indvars.iv
  %i.iu = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.it ; 4 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.reass ; 4 uses
  %.reass143 = mul i64 %factor.op.mul142, %indvars.iv
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gm, i64 %.reass143 ; 4 uses
  %i.ix = mul i64 %i.ai, %indvars.iv
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.ix ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  br i1 %conflict.rdx193, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.iz = getelementptr i8, ptr %i.iu, i64 %i.ij
  %i.ja = getelementptr i8, ptr %i.iv, i64 %i.ik
  %i.jb = getelementptr i8, ptr %i.iy, i64 %i.ij
  %i.jc = getelementptr i8, ptr %i.iw, i64 %i.ik
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.iu, i64 %i.jd
  %i.je = shl i64 %index, 2                       ; 2 uses
  %next.gep194.a = getelementptr i8, ptr %i.iv, i64 %i.je
  %next.gep195 = getelementptr i8, ptr %i.iy, i64 %i.jd
  %next.gep196 = getelementptr i8, ptr %i.iw, i64 %i.je
  %wide.vec = load <8 x float>, ptr %next.gep, align 4, !tbaa !69, !alias.scope !81 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec197 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep194.a, align 4, !tbaa !69, !alias.scope !82 ; 2 uses
  %wide.load198 = load <4 x float>, ptr %next.gep196, align 4, !tbaa !69, !alias.scope !83 ; 2 uses
  %i.jf = fmul fast <4 x float> %wide.load, %strided.vec
  %i.jg = fmul fast <4 x float> %wide.load198, %strided.vec197
  %i.jh = fsub fast <4 x float> %i.jf, %i.jg
  %i.ji = fmul fast <4 x float> %wide.load198, %strided.vec
  %i.jj = fmul fast <4 x float> %wide.load, %strided.vec197
  %i.jk = fadd fast <4 x float> %i.ji, %i.jj
  %interleaved.vec = shufflevector <4 x float> %i.jh, <4 x float> %i.jk, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %next.gep195, align 4, !tbaa !69, !alias.scope !84, !noalias !85
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jl = icmp eq i64 %index.next, %n.vec
  br i1 %i.jl, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit126_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.079131.ph = phi ptr [ %i.iu, %vector.memcheck ], [ %i.iu, %.lr.ph ], [ %i.iz, %middle.block ] ; 3 uses
  %.080130.ph = phi ptr [ %i.iv, %vector.memcheck ], [ %i.iv, %.lr.ph ], [ %i.ja, %middle.block ] ; 3 uses
  %.081129.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.il, %middle.block ] ; 4 uses
  %.082128.ph = phi ptr [ %i.iy, %vector.memcheck ], [ %i.iy, %.lr.ph ], [ %i.jb, %middle.block ] ; 3 uses
  %.083127.ph = phi ptr [ %i.iw, %vector.memcheck ], [ %i.iw, %.lr.ph ], [ %i.jc, %middle.block ] ; 3 uses
  %i.jm = sub i32 %i.gr, %.081129.ph
  %.neg = add i32 %.081129.ph, 1
  %xtraiter = and i32 %i.jm, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jn = getelementptr inbounds nuw i8, ptr %.080130.ph, i64 4
  %i.jo = load float, ptr %.080130.ph, align 4, !tbaa !69
  %i.jp = getelementptr inbounds nuw i8, ptr %.083127.ph, i64 4
  %i.jq = load float, ptr %.083127.ph, align 4, !tbaa !69
  %i.jr = load <2 x float>, ptr %.079131.ph, align 4, !tbaa !69 ; 2 uses
  %i.js = insertelement <2 x float> poison, float %i.jq, i64 0
  %i.jt = shufflevector <2 x float> %i.js, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ju = shufflevector <2 x float> %i.jr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jv = fmul fast <2 x float> %i.jt, %i.ju      ; 2 uses
  %i.jw = insertelement <2 x float> poison, float %i.jo, i64 0
  %i.jx = shufflevector <2 x float> %i.jw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jy = fmul fast <2 x float> %i.jx, %i.jr      ; 2 uses
  %i.jz = fsub fast <2 x float> %i.jy, %i.jv
  %i.ka = fadd fast <2 x float> %i.jy, %i.jv
  %i.kb = shufflevector <2 x float> %i.jz, <2 x float> %i.ka, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.kb, ptr %.082128.ph, align 4, !tbaa !69
  %i.kc = getelementptr inbounds nuw i8, ptr %.079131.ph, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %.082128.ph, i64 8
  %i.ke = add nuw nsw i32 %.081129.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.079131.unr = phi ptr [ %.079131.ph, %scalar.ph.preheader ], [ %i.kc, %scalar.ph.prol ]
  %.080130.unr = phi ptr [ %.080130.ph, %scalar.ph.preheader ], [ %i.jn, %scalar.ph.prol ]
  %.081129.unr = phi i32 [ %.081129.ph, %scalar.ph.preheader ], [ %i.ke, %scalar.ph.prol ]
  %.082128.unr = phi ptr [ %.082128.ph, %scalar.ph.preheader ], [ %i.kd, %scalar.ph.prol ]
  %.083127.unr = phi ptr [ %.083127.ph, %scalar.ph.preheader ], [ %i.jp, %scalar.ph.prol ]
  %i.kf = icmp eq i32 %i.gr, %.neg
  br i1 %i.kf, label %..loopexit126_crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.079131 = phi ptr [ %i.lm, %scalar.ph ], [ %.079131.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.080130 = phi ptr [ %i.kx, %scalar.ph ], [ %.080130.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.081129 = phi i32 [ %i.lo, %scalar.ph ], [ %.081129.unr, %scalar.ph.prol.loopexit ]
  %.082128 = phi ptr [ %i.ln, %scalar.ph ], [ %.082128.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.083127 = phi ptr [ %i.kz, %scalar.ph ], [ %.083127.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.080130, i64 4
  %i.kh = load float, ptr %.080130, align 4, !tbaa !69
  %i.ki = getelementptr inbounds nuw i8, ptr %.083127, i64 4
  %i.kj = load float, ptr %.083127, align 4, !tbaa !69
  %i.kk = load <2 x float>, ptr %.079131, align 4, !tbaa !69 ; 2 uses
  %i.kl = insertelement <2 x float> poison, float %i.kj, i64 0
  %i.km = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kn = shufflevector <2 x float> %i.kk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ko = fmul fast <2 x float> %i.km, %i.kn      ; 2 uses
  %i.kp = insertelement <2 x float> poison, float %i.kh, i64 0
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kr = fmul fast <2 x float> %i.kq, %i.kk      ; 2 uses
  %i.ks = fsub fast <2 x float> %i.kr, %i.ko
  %i.kt = fadd fast <2 x float> %i.kr, %i.ko
  %i.ku = shufflevector <2 x float> %i.ks, <2 x float> %i.kt, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.ku, ptr %.082128, align 4, !tbaa !69
  %i.kv = getelementptr inbounds nuw i8, ptr %.079131, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %.082128, i64 8
  %i.kx = getelementptr inbounds nuw i8, ptr %.080130, i64 8
  %i.ky = load float, ptr %i.kg, align 4, !tbaa !69
  %i.kz = getelementptr inbounds nuw i8, ptr %.083127, i64 8
  %i.la = load float, ptr %i.ki, align 4, !tbaa !69
  %i.lb = load <2 x float>, ptr %i.kv, align 4, !tbaa !69 ; 2 uses
  %i.lc = insertelement <2 x float> poison, float %i.la, i64 0
  %i.ld = shufflevector <2 x float> %i.lc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.le = shufflevector <2 x float> %i.lb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lf = fmul fast <2 x float> %i.ld, %i.le      ; 2 uses
  %i.lg = insertelement <2 x float> poison, float %i.ky, i64 0
  %i.lh = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.li = fmul fast <2 x float> %i.lh, %i.lb      ; 2 uses
  %i.lj = fsub fast <2 x float> %i.li, %i.lf
  %i.lk = fadd fast <2 x float> %i.li, %i.lf
  %i.ll = shufflevector <2 x float> %i.lj, <2 x float> %i.lk, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.ll, ptr %i.kw, align 4, !tbaa !69
  %i.lm = getelementptr inbounds nuw i8, ptr %.079131, i64 16
  %i.ln = getelementptr inbounds nuw i8, ptr %.082128, i64 16
  %i.lo = add nuw nsw i32 %.081129, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.lo, %i.gr
  br i1 %exitcond.not.1, label %..loopexit126_crit_edge, label %scalar.ph, !llvm.loop !64

..loopexit126_crit_edge:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond158.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split, label %.lr.ph, !llvm.loop !57

._crit_edge.split:                                ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split.us.us, %.noexc.lr.ph, %.noexc.lr.ph.split.split, %.noexc.lr.ph.split.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.split, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

end_hunk_0
