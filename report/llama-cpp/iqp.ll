Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/iqp?download=true
inline.NumInlined: 70
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZL20iqp_supported_commonPK11ggml_tensor:bb.a
  %i.o = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZZL20iqp_supported_commonPK11ggml_tensorE8disabled) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL20iqp_supported_commonPK11ggml_tensorE8disabled) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.p = load i8, ptr @_ZZL20iqp_supported_commonPK11ggml_tensorE8disabled, align 1, !tbaa !37, !range !38, !noundef !39
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZL18iqp_type_supported9ggml_type.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = tail call i32 @ggml_cpu_has_avx2()
  %.not14 = icmp eq i32 %i.r, 0
  br i1 %.not14, label %_ZL18iqp_type_supported9ggml_type.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load i32, ptr %i.d, align 8, !tbaa !20
  %.not15 = icmp eq i32 %i.s, 0
  br i1 %.not15, label %bb.i, label %_ZL18iqp_type_supported9ggml_type.exit

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !15
  %i.v = and i64 %i.u, 255
  %.not16 = icmp eq i64 %i.v, 0
  br i1 %.not16, label %bb.j, label %_ZL18iqp_type_supported9ggml_type.exit

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !15
  %i.y = and i64 %i.x, 7
  %.not17 = icmp eq i64 %i.y, 0
  br i1 %.not17, label %bb.k, label %_ZL18iqp_type_supported9ggml_type.exit

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !15
  %.not18 = icmp eq i64 %i.aa, 1
  br i1 %.not18, label %bb.l, label %_ZL18iqp_type_supported9ggml_type.exit

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !15
  %.not19 = icmp eq i64 %i.ac, 1
  br i1 %.not19, label %bb.m, label %_ZL18iqp_type_supported9ggml_type.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = tail call zeroext i1 @ggml_is_contiguous(ptr noundef nonnull %i.b)
  br i1 %i.ad, label %bb.n, label %_ZL18iqp_type_supported9ggml_type.exit

bb.n:                                             ; preds = %bb.m
  %i.ae = load i32, ptr %0, align 8, !tbaa !20
  %.not20 = icmp eq i32 %i.ae, 0
  br i1 %.not20, label %bb.o, label %_ZL18iqp_type_supported9ggml_type.exit

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !15
  %.not21 = icmp eq i64 %i.ag, 4
  br label %_ZL18iqp_type_supported9ggml_type.exit

_ZL18iqp_type_supported9ggml_type.exit:           ; preds = %bb.a, %bb.o, %bb.n, %bb.k, %bb.l, %bb.m, %bb.i, %bb.j, %bb.h, %bb.g, %bb.f, %bb.b
  %.0 = phi i1 [ %.not21, %bb.o ], [ false, %bb.b ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.k ], [ false, %bb.n ], [ false, %bb.f ], [ false, %bb.j ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @ggml_get_type_traits_cpu(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #4

declare i32 @ggml_cpu_has_avx2() local_unnamed_addr #3

declare zeroext i1 @ggml_is_contiguous(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define zeroext i1 @ggml_cpu_iqp_supports_mul_mat_id(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = tail call fastcc noundef zeroext i1 @_ZL20iqp_supported_commonPK11ggml_tensor(ptr noundef %0)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15
  %i.h = mul nsw i64 %i.g, %i.e
  %i.i = icmp sgt i64 %i.h, 7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.i, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_mul_mat_id_iqp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread142, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !15
  %i.i = sdiv i64 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !15
  %i.n = mul i64 %i.m, %2
  br label %.thread142

.thread142:                                       ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]    ; 4 uses
  %i.p = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.q = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.r = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ]
  %.not139 = icmp eq ptr %i.d, null
  br i1 %.not139, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread142
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %.thread142, %bb.c
  %i.u = phi i64 [ %i.t, %bb.c ], [ 0, %.thread142 ] ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !15   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load i64, ptr %i.x, align 8, !tbaa !15   ; 4 uses
  %i.z = load i32, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !25
  %i.ac = sdiv i64 %i.p, 256                      ; 2 uses
  %i.ad = getelementptr i8, ptr %i.d, i64 16
  %.val.val = load i64, ptr %i.ad, align 8, !tbaa !15
  %i.ae = tail call noundef i64 @ggml_row_size(i32 noundef 15, i64 noundef %.val.val) ; 4 uses
  %i.af = sext i32 %i.z to i64                    ; 2 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !15
  %i.aj = sdiv i64 %i.ai, 256
  %i.ak = mul nsw i64 %i.af, 2240
  %i.al = mul i64 %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 %i.al ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.r ; 2 uses
  %i.aq = mul nsw i64 %i.q, %i.af
  %i.ar = sext i32 %i.ab to i64                   ; 2 uses
  %i.as = sdiv i64 %i.aq, %i.ar                   ; 3 uses
  %i.at = add nsw i32 %i.z, 1
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.q, %i.au
  %i.aw = sdiv i64 %i.av, %i.ar                   ; 3 uses
  %i.ax = icmp slt i64 %i.as, %i.aw
  br i1 %i.ax, label %.lr.ph160, label %._crit_edge161

.lr.ph160:                                        ; preds = %bb.d
  %i.ay = icmp sgt i64 %3, 0
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = trunc i64 %i.p to i32
  %i.bb = icmp sgt i32 %i.ba, 255
  %i.bc = lshr i64 %i.p, 8
  %wide.trip.count.i.i = and i64 %i.bc, 8388607
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 4 uses
  br i1 %i.ay, label %.lr.ph156.us, label %.lr.ph160.split

.lr.ph156.us:                                     ; preds = %.lr.ph160, %._crit_edge157.us
  %.0120158.us = phi i64 [ %i.ke, %._crit_edge157.us ], [ %i.as, %.lr.ph160 ] ; 2 uses
  %i.be = shl nsw i64 %.0120158.us, 3             ; 5 uses
  %i.bf = load i32, ptr %i.b, align 8, !tbaa !20
  %i.bg = mul i64 %i.be, %i.o
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bg
  tail call fastcc void @_ZL18iqp_decode_panel_89ggml_typePKcmlP12block_iqp_x8(i32 noundef %i.bf, ptr noundef %i.bh, i64 noundef %i.o, i64 noundef %i.ac, ptr noundef %i.am)
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph156.us, %._crit_edge.us
  %indvars.iv = phi i64 [ %3, %.lr.ph156.us ], [ %indvars.iv.next, %._crit_edge.us ] ; 4 uses
  %.0119154.us = phi i64 [ 0, %.lr.ph156.us ], [ %i.kc, %._crit_edge.us ] ; 10 uses
  %i.bi = sub nuw nsw i64 %3, %.0119154.us
  %i.bj = tail call i64 @llvm.smin.i64(i64 %i.bi, i64 4)
  %i.bk = add nsw i64 %i.bj, -1                   ; 4 uses
  %i.bl = load ptr, ptr %i.az, align 8, !tbaa !27 ; 4 uses
  %i.bm = tail call i64 @llvm.smin.i64(i64 %i.bk, i64 0)
  %i.bn = add nsw i64 %i.bm, %.0119154.us
  %.idx144.us = shl nsw i64 %i.bn, 3
  %i.bo = getelementptr inbounds i8, ptr %4, i64 %.idx144.us ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !28
  %i.bq = sext i32 %i.bp to i64
  %i.br = srem i64 %i.bq, %i.u
  %i.bs = getelementptr i8, ptr %i.bo, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !28
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul nsw i64 %i.u, %i.bu
  %i.bw = add nsw i64 %i.bv, %i.br
  %i.bx = mul i64 %i.bw, %i.ae
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bx
  %i.bz = tail call i64 @llvm.smin.i64(i64 %i.bk, i64 1)
  %i.ca = add nsw i64 %i.bz, %.0119154.us
  %.idx144.us.1 = shl nsw i64 %i.ca, 3
  %i.cb = getelementptr inbounds i8, ptr %4, i64 %.idx144.us.1 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !28
  %i.cd = sext i32 %i.cc to i64
  %i.ce = srem i64 %i.cd, %i.u
  %i.cf = getelementptr i8, ptr %i.cb, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !28
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul nsw i64 %i.u, %i.ch
  %i.cj = add nsw i64 %i.ci, %i.ce
  %i.ck = mul i64 %i.cj, %i.ae
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ck
  %i.cm = tail call i64 @llvm.smin.i64(i64 %i.bk, i64 2)
  %i.cn = add nsw i64 %i.cm, %.0119154.us
  %.idx144.us.2 = shl nsw i64 %i.cn, 3
  %i.co = getelementptr inbounds i8, ptr %4, i64 %.idx144.us.2 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !28
  %i.cq = sext i32 %i.cp to i64
  %i.cr = srem i64 %i.cq, %i.u
  %i.cs = getelementptr i8, ptr %i.co, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !28
  %i.cu = sext i32 %i.ct to i64
  %i.cv = mul nsw i64 %i.u, %i.cu
  %i.cw = add nsw i64 %i.cv, %i.cr
  %i.cx = mul i64 %i.cw, %i.ae
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cx
  %i.cz = add nsw i64 %i.bk, %.0119154.us
  %.idx144.us.3 = shl nsw i64 %i.cz, 3
  %i.da = getelementptr inbounds i8, ptr %4, i64 %.idx144.us.3 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !28
  %i.dc = sext i32 %i.db to i64
  %i.dd = srem i64 %i.dc, %i.u
  %i.de = getelementptr i8, ptr %i.da, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !28
  %i.dg = sext i32 %i.df to i64
  %i.dh = mul nsw i64 %i.u, %i.dg
  %i.di = add nsw i64 %i.dh, %i.dd
  %i.dj = mul i64 %i.di, %i.ae
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.dj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  br i1 %i.bb, label %.preheader96.us.i.i.us, label %.lr.ph.us

.preheader96.us.i.i.us:                           ; preds = %bb.e, %bb.g
  %.sroa.18159.0.i.i.us = phi <8 x float> [ %i.hz, %bb.g ], [ zeroinitializer, %bb.e ]
  %.sroa.14.0.i.i.us = phi <8 x float> [ %i.ht, %bb.g ], [ zeroinitializer, %bb.e ]
  %.sroa.10.0.i.i.us = phi <8 x float> [ %i.hn, %bb.g ], [ zeroinitializer, %bb.e ]
  %.sroa.0149.0.i.i.us = phi <8 x float> [ %i.hh, %bb.g ], [ zeroinitializer, %bb.e ]
  %indvars.iv125.i.i.us = phi i64 [ %indvars.iv.next126.i.i.us, %bb.g ], [ 0, %bb.e ] ; 6 uses
  %i.dl = getelementptr inbounds nuw [2240 x i8], ptr %i.am, i64 %indvars.iv125.i.i.us ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 192
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  %i.do = getelementptr inbounds nuw [292 x i8], ptr %i.by, i64 %indvars.iv125.i.i.us ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = getelementptr inbounds nuw [292 x i8], ptr %i.cl, i64 %indvars.iv125.i.i.us ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ds = getelementptr inbounds nuw [292 x i8], ptr %i.cy, i64 %indvars.iv125.i.i.us ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.du = getelementptr inbounds nuw [292 x i8], ptr %i.dk, i64 %indvars.iv125.i.i.us ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader96.us.i.i.us
  %.sroa.18.0.i.i.us = phi <8 x i32> [ zeroinitializer, %.preheader96.us.i.i.us ], [ %i.gu, %bb.f ]
  %.sroa.13.0.i.i.us = phi <8 x i32> [ zeroinitializer, %.preheader96.us.i.i.us ], [ %i.gs, %bb.f ]
  %.sroa.8142.0.i.i.us = phi <8 x i32> [ zeroinitializer, %.preheader96.us.i.i.us ], [ %i.gq, %bb.f ]
  %.sroa.0139.0.i.i.us = phi <8 x i32> [ zeroinitializer, %.preheader96.us.i.i.us ], [ %i.go, %bb.f ]
  %indvars.iv.i.i.us = phi i64 [ 0, %.preheader96.us.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.f ] ; 4 uses
  %i.dw = shl nuw nsw i64 %indvars.iv.i.i.us, 4   ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dw
  %.val.us.i.i.us = load <2 x i64>, ptr %i.dx, align 1, !tbaa !29, !noalias !51
  %i.dy = xor <2 x i64> %.val.us.i.i.us, splat (i64 -9187201950435737472) ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dw
  %.val.us.1.i.i.us = load <2 x i64>, ptr %i.dz, align 1, !tbaa !29, !noalias !51
  %i.ea = xor <2 x i64> %.val.us.1.i.i.us, splat (i64 -9187201950435737472) ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dw
  %.val.us.2.i.i.us = load <2 x i64>, ptr %i.eb, align 1, !tbaa !29, !noalias !51
  %i.ec = xor <2 x i64> %.val.us.2.i.i.us, splat (i64 -9187201950435737472) ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dw
  %.val.us.3.i.i.us = load <2 x i64>, ptr %i.ed, align 1, !tbaa !29, !noalias !51
  %i.ee = xor <2 x i64> %.val.us.3.i.i.us, splat (i64 -9187201950435737472) ; 4 uses
  %i.ef = shl nuw nsw i64 %indvars.iv.i.i.us, 7
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.ef ; 4 uses
  %i.eh = load <32 x i8>, ptr %i.eg, align 1, !tbaa !29, !alias.scope !52, !noalias !53 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ej = load <32 x i8>, ptr %i.ei, align 1, !tbaa !29, !alias.scope !52, !noalias !53 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 64
  %i.el = load <32 x i8>, ptr %i.ek, align 1, !tbaa !29, !alias.scope !52, !noalias !53 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 96
  %i.en = load <32 x i8>, ptr %i.em, align 1, !tbaa !29, !alias.scope !52, !noalias !53 ; 4 uses
  %i.eo = bitcast <2 x i64> %i.dy to <16 x i8>
  %i.ep = shufflevector <16 x i8> %i.eo, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.eq = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.ep, <32 x i8> %i.eh)
  %i.er = bitcast <2 x i64> %i.dy to <16 x i8>
  %i.es = shufflevector <16 x i8> %i.er, <16 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  %i.et = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.eq, <32 x i8> %i.es, <32 x i8> %i.ej)
  %i.eu = bitcast <2 x i64> %i.dy to <16 x i8>
  %i.ev = shufflevector <16 x i8> %i.eu, <16 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11>
  %i.ew = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.et, <32 x i8> %i.ev, <32 x i8> %i.el)
  %i.ex = bitcast <2 x i64> %i.dy to <16 x i8>
  %i.ey = shufflevector <16 x i8> %i.ex, <16 x i8> poison, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15>
  %i.ez = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ew, <32 x i8> %i.ey, <32 x i8> %i.en)
  %i.fa = bitcast <2 x i64> %i.ea to <16 x i8>
  %i.fb = shufflevector <16 x i8> %i.fa, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fc = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.fb, <32 x i8> %i.eh)
  %i.fd = bitcast <2 x i64> %i.ea to <16 x i8>
  %i.fe = shufflevector <16 x i8> %i.fd, <16 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  %i.ff = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.fc, <32 x i8> %i.fe, <32 x i8> %i.ej)
  %i.fg = bitcast <2 x i64> %i.ea to <16 x i8>
  %i.fh = shufflevector <16 x i8> %i.fg, <16 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11>
  %i.fi = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ff, <32 x i8> %i.fh, <32 x i8> %i.el)
  %i.fj = bitcast <2 x i64> %i.ea to <16 x i8>
  %i.fk = shufflevector <16 x i8> %i.fj, <16 x i8> poison, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15>
  %i.fl = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.fi, <32 x i8> %i.fk, <32 x i8> %i.en)
  %i.fm = bitcast <2 x i64> %i.ec to <16 x i8>
  %i.fn = shufflevector <16 x i8> %i.fm, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fo = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.fn, <32 x i8> %i.eh)
  %i.fp = bitcast <2 x i64> %i.ec to <16 x i8>
  %i.fq = shufflevector <16 x i8> %i.fp, <16 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  %i.fr = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.fo, <32 x i8> %i.fq, <32 x i8> %i.ej)
  %i.fs = bitcast <2 x i64> %i.ec to <16 x i8>
  %i.ft = shufflevector <16 x i8> %i.fs, <16 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11>
  %i.fu = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.fr, <32 x i8> %i.ft, <32 x i8> %i.el)
  %i.fv = bitcast <2 x i64> %i.ec to <16 x i8>
  %i.fw = shufflevector <16 x i8> %i.fv, <16 x i8> poison, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15>
  %i.fx = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.fu, <32 x i8> %i.fw, <32 x i8> %i.en)
  %i.fy = bitcast <2 x i64> %i.ee to <16 x i8>
  %i.fz = shufflevector <16 x i8> %i.fy, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ga = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.fz, <32 x i8> %i.eh)
  %i.gb = bitcast <2 x i64> %i.ee to <16 x i8>
  %i.gc = shufflevector <16 x i8> %i.gb, <16 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  %i.gd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ga, <32 x i8> %i.gc, <32 x i8> %i.ej)
  %i.ge = bitcast <2 x i64> %i.ee to <16 x i8>
  %i.gf = shufflevector <16 x i8> %i.ge, <16 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11>
  %i.gg = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.gd, <32 x i8> %i.gf, <32 x i8> %i.el)
  %i.gh = bitcast <2 x i64> %i.ee to <16 x i8>
  %i.gi = shufflevector <16 x i8> %i.gh, <16 x i8> poison, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15>
  %i.gj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.gg, <32 x i8> %i.gi, <32 x i8> %i.en)
  %i.gk = shl nuw nsw i64 %indvars.iv.i.i.us, 3
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.gk
  %.val9394.us.i.i.us = load <8 x i8>, ptr %i.gl, align 1, !tbaa !29, !alias.scope !52, !noalias !53
  %i.gm = sext <8 x i8> %.val9394.us.i.i.us to <8 x i32> ; 4 uses
  %i.gn = mul <8 x i32> %i.ez, %i.gm
  %i.go = add <8 x i32> %i.gn, %.sroa.0139.0.i.i.us ; 2 uses
  %i.gp = mul <8 x i32> %i.fl, %i.gm
  %i.gq = add <8 x i32> %i.gp, %.sroa.8142.0.i.i.us ; 2 uses
  %i.gr = mul <8 x i32> %i.fx, %i.gm
  %i.gs = add <8 x i32> %i.gr, %.sroa.13.0.i.i.us ; 2 uses
  %i.gt = mul <8 x i32> %i.gj, %i.gm
  %i.gu = add <8 x i32> %i.gt, %.sroa.18.0.i.i.us ; 2 uses
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, 16
  br i1 %exitcond.not.i.i.us, label %bb.g, label %bb.f, !llvm.loop !0

bb.g:                                             ; preds = %bb.f
  %i.gv = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.gw = load <8 x i32>, ptr %i.gv, align 1, !tbaa !29, !alias.scope !52, !noalias !53 ; 4 uses
  %i.gx = sub <8 x i32> %i.go, %i.gw
  %i.gy = sub <8 x i32> %i.gq, %i.gw
  %i.gz = sub <8 x i32> %i.gs, %i.gw
  %i.ha = sub <8 x i32> %i.gu, %i.gw
  %i.hb = load <8 x float>, ptr %i.dl, align 1, !tbaa !29, !alias.scope !52, !noalias !53 ; 4 uses
  %i.hc = sitofp <8 x i32> %i.gx to <8 x float>
  %i.hd = load float, ptr %i.do, align 4, !tbaa !33, !noalias !51
  %i.he = insertelement <8 x float> poison, float %i.hd, i64 0
  %i.hf = shufflevector <8 x float> %i.he, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hg = fmul <8 x float> %i.hb, %i.hf
  %i.hh = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.hc, <8 x float> %i.hg, <8 x float> %.sroa.0149.0.i.i.us) ; 2 uses
  %i.hi = sitofp <8 x i32> %i.gy to <8 x float>
  %i.hj = load float, ptr %i.dq, align 4, !tbaa !33, !noalias !51
  %i.hk = insertelement <8 x float> poison, float %i.hj, i64 0
  %i.hl = shufflevector <8 x float> %i.hk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hm = fmul <8 x float> %i.hb, %i.hl
  %i.hn = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.hi, <8 x float> %i.hm, <8 x float> %.sroa.10.0.i.i.us) ; 2 uses
  %i.ho = sitofp <8 x i32> %i.gz to <8 x float>
  %i.hp = load float, ptr %i.ds, align 4, !tbaa !33, !noalias !51
  %i.hq = insertelement <8 x float> poison, float %i.hp, i64 0
  %i.hr = shufflevector <8 x float> %i.hq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hs = fmul <8 x float> %i.hb, %i.hr
  %i.ht = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ho, <8 x float> %i.hs, <8 x float> %.sroa.14.0.i.i.us) ; 2 uses
  %i.hu = sitofp <8 x i32> %i.ha to <8 x float>
  %i.hv = load float, ptr %i.du, align 4, !tbaa !33, !noalias !51
  %i.hw = insertelement <8 x float> poison, float %i.hv, i64 0
  %i.hx = shufflevector <8 x float> %i.hw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hy = fmul <8 x float> %i.hb, %i.hx
  %i.hz = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.hu, <8 x float> %i.hy, <8 x float> %.sroa.18159.0.i.i.us) ; 2 uses
  %indvars.iv.next126.i.i.us = add nuw nsw i64 %indvars.iv125.i.i.us, 1 ; 2 uses
  %exitcond128.not.i.i.us = icmp eq i64 %indvars.iv.next126.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond128.not.i.i.us, label %.lr.ph.us, label %.preheader96.us.i.i.us, !llvm.loop !1

.lr.ph.us:                                        ; preds = %bb.e, %bb.g
  %.lcssa179.sink.i.i.us = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.hh, %bb.g ]
  %.lcssa178.sink.i.i.us = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.hn, %bb.g ]
  %.lcssa177.sink.i.i.us = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.ht, %bb.g ]
  %.lcssa176.sink.i.i.us = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.hz, %bb.g ]
  %i.ia = load ptr, ptr %i.bd, align 8, !tbaa !26
  %.idx143.us = shl nuw nsw i64 %.0119154.us, 3
  %i.ib = getelementptr inbounds nuw i8, ptr %4, i64 %.idx143.us ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !28
  %i.id = sext i32 %i.ic to i64
  %i.ie = mul i64 %i.w, %i.id
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !28
  %i.ii = sext i32 %i.ih to i64
  %i.ij = mul i64 %i.y, %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ij
  %i.il = getelementptr inbounds [4 x i8], ptr %i.ik, i64 %i.be
  store <8 x float> %.lcssa179.sink.i.i.us, ptr %i.il, align 4
  %exitcond171.not = icmp slt i64 %indvars.iv, 2
  br i1 %exitcond171.not, label %._crit_edge.us, label %.lr.ph.us.1

.lr.ph.us.1:                                      ; preds = %.lr.ph.us
  %i.im = load ptr, ptr %i.bd, align 8, !tbaa !26
  %i.in = shl i64 %.0119154.us, 3
  %i.io = getelementptr inbounds nuw i8, ptr %4, i64 %i.in ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !28
  %i.ir = sext i32 %i.iq to i64
  %i.is = mul i64 %i.w, %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.io, i64 12
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !28
  %i.iw = sext i32 %i.iv to i64
  %i.ix = mul i64 %i.y, %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ix
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.be
  store <8 x float> %.lcssa178.sink.i.i.us, ptr %i.iz, align 4
  %exitcond171.not.1 = icmp eq i64 %indvars.iv, 2
  br i1 %exitcond171.not.1, label %._crit_edge.us, label %.lr.ph.us.2

.lr.ph.us.2:                                      ; preds = %.lr.ph.us.1
  %i.ja = load ptr, ptr %i.bd, align 8, !tbaa !26
  %i.jb = shl i64 %.0119154.us, 3
  %i.jc = getelementptr inbounds nuw i8, ptr %4, i64 %i.jb ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !28
  %i.jf = sext i32 %i.je to i64
  %i.jg = mul i64 %i.w, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jc, i64 20
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !28
  %i.jk = sext i32 %i.jj to i64
  %i.jl = mul i64 %i.y, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.jl
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.jm, i64 %i.be
  store <8 x float> %.lcssa177.sink.i.i.us, ptr %i.jn, align 4
  %exitcond171.not.2 = icmp eq i64 %indvars.iv, 3
  br i1 %exitcond171.not.2, label %._crit_edge.us, label %.lr.ph.us.3

.lr.ph.us.3:                                      ; preds = %.lr.ph.us.2
  %i.jo = load ptr, ptr %i.bd, align 8, !tbaa !26
  %i.jp = shl i64 %.0119154.us, 3
  %i.jq = getelementptr inbounds nuw i8, ptr %4, i64 %i.jp ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !28
  %i.jt = sext i32 %i.js to i64
  %i.ju = mul i64 %i.w, %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.ju
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jq, i64 28
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !28
  %i.jy = sext i32 %i.jx to i64
  %i.jz = mul i64 %i.y, %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.jz
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %i.be
  store <8 x float> %.lcssa176.sink.i.i.us, ptr %i.kb, align 4
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.lr.ph.us.3, %.lr.ph.us.2, %.lr.ph.us.1, %.lr.ph.us
  %i.kc = add nuw nsw i64 %.0119154.us, 4         ; 2 uses
  %i.kd = icmp slt i64 %i.kc, %3
  %indvars.iv.next = add i64 %indvars.iv, -4
  br i1 %i.kd, label %bb.e, label %._crit_edge157.us, !llvm.loop !47

._crit_edge157.us:                                ; preds = %._crit_edge.us
  %i.ke = add i64 %.0120158.us, 1                 ; 2 uses
  %exitcond172.not = icmp eq i64 %i.ke, %i.aw
  br i1 %exitcond172.not, label %._crit_edge161, label %.lr.ph156.us, !llvm.loop !48

._crit_edge161:                                   ; preds = %.lr.ph160.split, %._crit_edge157.us, %bb.d
  ret void

.lr.ph160.split:                                  ; preds = %.lr.ph160, %.lr.ph160.split
  %.0120158 = phi i64 [ %i.kj, %.lr.ph160.split ], [ %i.as, %.lr.ph160 ] ; 2 uses
  %i.kf = shl nsw i64 %.0120158, 3
  %i.kg = load i32, ptr %i.b, align 8, !tbaa !20
  %i.kh = mul i64 %i.kf, %i.o
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.kh
  tail call fastcc void @_ZL18iqp_decode_panel_89ggml_typePKcmlP12block_iqp_x8(i32 noundef %i.kg, ptr noundef %i.ki, i64 noundef %i.o, i64 noundef %i.ac, ptr noundef %i.am)
  %i.kj = add i64 %.0120158, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.kj, %i.aw
  br i1 %exitcond.not, label %._crit_edge161, label %.lr.ph160.split, !llvm.loop !48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 0, -63) i64 @ggml_cpu_iqp_scratch_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15
  %i.e = sdiv i64 %i.d, 256
  %i.f = mul i64 %i.e, 2240
  ret i64 %i.f
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL18iqp_decode_panel_89ggml_typePKcmlP12block_iqp_x8(i32 noundef %0, ptr noalias nofree noundef readonly %1, i64 noundef %2, i64 noundef range(i64 -36028797018963968, 36028797018963968) %3, ptr noalias nofree noundef writeonly captures(none) %4) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x [256 x i8]], align 16        ; 68 uses
  %i.b = alloca [8 x [16 x i8]], align 16         ; 4 uses
  %i.c = alloca [8 x float], align 16             ; 4 uses
  %i.d = tail call i64 @ggml_type_size(i32 noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.e = icmp sgt i64 %3, 0
  br i1 %i.e, label %.preheader51.preheader, label %._crit_edge

.preheader51.preheader:                           ; preds = %bb.a
  %gep.1.i = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %gep.2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %gep.3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %gep.4.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  %gep.5.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  %gep.6.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1536
  %gep.7.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1792
  %invariant.gep.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %gep.1.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %gep.2.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  %gep.3.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  %gep.4.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 1056
  %gep.5.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 1312
  %gep.6.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 1568
  %gep.7.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 1824
  %invariant.gep.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %gep.1.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %gep.2.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %gep.3.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %gep.4.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %gep.5.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 1344
  %gep.6.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 1600
  %gep.7.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 1856
  %invariant.gep.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %gep.1.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %gep.2.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %gep.3.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 864
  %gep.4.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 1120
  %gep.5.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 1376
  %gep.6.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 1632
  %gep.7.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 1888
  %invariant.gep.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %gep.1.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %gep.2.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %gep.3.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  %gep.4.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 1152
  %gep.5.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 1408
  %gep.6.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 1664
  %gep.7.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 1920
  %invariant.gep.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %gep.1.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %gep.2.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  %gep.3.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 928
  %gep.4.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 1184
  %gep.5.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 1440
  %gep.6.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 1696
  %gep.7.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 1952
  %invariant.gep.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %gep.1.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %gep.2.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %gep.3.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 960
  %gep.4.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 1216
  %gep.5.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 1472
  %gep.6.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 1728
  %gep.7.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 1984
  %invariant.gep.i.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %gep.1.i.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %gep.2.i.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  %gep.3.i.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  %gep.4.i.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 1248
  %gep.5.i.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 1504
  %gep.6.i.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 1760
  %gep.7.i.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 2016
  br label %.preheader51

.preheader51:                                     ; preds = %.preheader51.preheader, %.preheader
  %.04157 = phi i64 [ %i.bjk, %.preheader ], [ 0, %.preheader51.preheader ] ; 2 uses
  %.04256 = phi ptr [ %i.bjj, %.preheader ], [ %4, %.preheader51.preheader ] ; 68 uses
  %i.f = mul i64 %.04157, %i.d
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.f
  br label %bb.b

._crit_edge:                                      ; preds = %.preheader, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

.preheader50:                                     ; preds = %.loopexit
  %i.g = getelementptr inbounds nuw i8, ptr %.04256, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %.04256, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.04256, ptr noundef nonnull align 16 dereferenceable(32) %i.c, i64 32, i1 false), !tbaa !133
  br label %bb.j

bb.b:                                             ; preds = %.preheader51, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader51 ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %i.i = mul i64 %2, %indvars.iv
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.i ; 116 uses
  %i.j = getelementptr inbounds nuw [256 x i8], ptr %i.a, i64 %indvars.iv ; 51 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %indvars.iv ; 56 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  switch i32 %0, label %_ZL21iqp_decode_superblock9ggml_typePKvPaS2_Pf.exit [
    i32 16, label %.loopexit.loopexit
    i32 17, label %bb.c
    i32 22, label %.loopexit.loopexit113
    i32 18, label %bb.e
    i32 21, label %.loopexit.loopexit115
    i32 19, label %.loopexit.loopexit116
    i32 29, label %bb.g
    i32 23, label %bb.i
  ]

.loopexit.loopexit:                               ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.m = load i16, ptr %gep, align 2, !tbaa !144, !alias.scope !145, !noalias !146
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !133, !noalias !147
  %i.q = fmul float %i.p, 1.250000e-01
  store float %i.q, ptr %i.l, align 4, !tbaa !133, !alias.scope !148, !noalias !149
  %i.r = getelementptr inbounds nuw i8, ptr %gep, i64 2
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %gep, i64 6
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.sroa.7.0.copyload.i.i = load i32, ptr %.sroa.7.0..sroa_idx.i.i, align 2, !alias.scope !145, !noalias !146 ; 3 uses
  %i.t = lshr i32 %.sroa.7.0.copyload.i.i, 27
  %i.u = trunc nuw nsw i32 %i.t to i8
  %i.v = or i8 %i.u, 1                            ; 2 uses
  store i8 %i.v, ptr %i.k, align 16, !tbaa !29, !alias.scope !150, !noalias !151
  store i8 %i.v, ptr %i.s, align 1, !tbaa !29, !alias.scope !150, !noalias !151
  %i.w = insertelement <4 x i32> poison, i32 %.sroa.7.0.copyload.i.i, i64 0
  %i.x = shufflevector <4 x i32> %i.w, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.y = lshr <4 x i32> %i.x, <i32 7, i32 14, i32 21, i32 0>
  %i.z = and i32 %.sroa.7.0.copyload.i.i, 127
  %i.aa = and <4 x i32> %i.y, splat (i32 127)     ; 3 uses
  %i.ab = lshr <4 x i32> %i.aa, splat (i32 4)
  %i.ac = xor <4 x i32> %i.ab, %i.aa              ; 2 uses
  %i.ad = lshr <4 x i32> %i.ac, splat (i32 2)
  %i.ae = xor <4 x i32> %i.ad, %i.ac              ; 2 uses
  %i.af = lshr <4 x i32> %i.ae, splat (i32 1)
  %i.ag = xor <4 x i32> %i.af, %i.ae
  %i.ah = shl nuw nsw <4 x i32> %i.ag, splat (i32 7)
  %i.ai = and <4 x i32> %i.ah, splat (i32 128)
  %i.aj = insertelement <4 x i32> %i.aa, i32 0, i64 3
  %i.ak = or disjoint <4 x i32> %i.ai, %i.aj
  %i.al = shl nuw <4 x i32> %i.ak, <i32 8, i32 16, i32 24, i32 0>
  %i.am = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.al)
  %op.rdx = or disjoint i32 %i.am, %i.z
  %i.an = load <4 x i8>, ptr %i.r, align 2, !alias.scope !145, !noalias !146
  %i.ao = zext <4 x i8> %i.an to <4 x i64>
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_ZL11iq2xxs_grid, <4 x i64> %i.ao
  %i.aq = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %i.ap, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !15, !noalias !147
  %i.ar = insertelement <8 x i32> poison, i32 %op.rdx, i64 0
end_hunk_0
