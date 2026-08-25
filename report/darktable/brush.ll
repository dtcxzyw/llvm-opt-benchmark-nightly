Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/brush?download=true
inline.NumInlined: 210
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_brush_modify_property:bb.a
  %.0136 = load ptr, ptr %0, align 8, !tbaa !92   ; 2 uses
  %.not122137 = icmp eq ptr %.0136, null
  br i1 %.not122137, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader134
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  br label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !93
  %i.ce = and i32 %i.cd, 136
  %.not123 = icmp eq i32 %i.ce, 0
  %i.cf = select i1 %.not123, ptr @.str.9, ptr @.str.8
  %i.cg = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.cf) #18
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, %i.d ; 2 uses
  %i.ci = fcmp reassoc nsz arcp contract afn olt float %i.ch, 1.000000e+00
  %i.cj = select reassoc nsz arcp contract afn i1 %i.ci, float %i.ch, float 1.000000e+00 ; 2 uses
  %i.ck = fcmp reassoc nsz arcp contract afn olt float %i.cj, 5.000000e-04
  %i.cl = select reassoc nsz arcp contract afn i1 %i.ck, float 5.000000e-04, float %i.cj ; 5 uses
  %i.cm = load i32, ptr %i.cc, align 8, !tbaa !93
  %i.cn = and i32 %i.cm, 136
  %.not124 = icmp eq i32 %i.cn, 0
  %i.co = select i1 %.not124, ptr @.str.9, ptr @.str.8
  tail call void @dt_conf_set_float(ptr noundef nonnull %i.co, float noundef %i.cl) #18
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !96
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !97 ; 2 uses
  %.val = load ptr, ptr %i.ct, align 8, !tbaa !98
  %i.cu = getelementptr i8, ptr %i.ct, i64 136
  %.val131 = load i64, ptr %i.cu, align 8, !tbaa !101
  %i.cv = getelementptr [4 x i8], ptr %.val, i64 %.val131
  %i.cw = getelementptr i8, ptr %i.cv, i64 -12
  store float %i.cl, ptr %i.cw, align 4, !tbaa !102
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cx = load float, ptr %4, align 4, !tbaa !102
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cx, %i.cl
  store float %i.cy, ptr %4, align 4, !tbaa !102
  %i.cz = load float, ptr %7, align 4, !tbaa !102
  %i.da = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.cl
  %i.db = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.cz, float %i.da)
  store float %i.db, ptr %7, align 4, !tbaa !102
  %i.dc = load float, ptr %6, align 4, !tbaa !102
  %i.dd = fdiv reassoc nsz arcp contract afn float 5.000000e-04, %i.cl
  %i.de = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dc, float %i.dd)
  br label %.loopexit.sink.split

bb.s:                                             ; preds = %.lr.ph, %bb.x
  %.0139 = phi ptr [ %.0136, %.lr.ph ], [ %.0, %bb.x ] ; 2 uses
  %.1138 = phi i32 [ 0, %.lr.ph ], [ %i.eb, %bb.x ] ; 2 uses
  %i.df = load i32, ptr %i.cb, align 4, !tbaa !103 ; 2 uses
  %i.dg = icmp eq i32 %i.df, -1
  %i.dh = icmp eq i32 %i.df, %.1138
  %or.cond130 = select i1 %i.dg, i1 true, i1 %i.dh
  br i1 %or.cond130, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.di = load ptr, ptr %.0139, align 8, !tbaa !104
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 36 ; 4 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !107
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dk, %i.d ; 3 uses
  %i.dm = fcmp reassoc nsz arcp contract afn ogt float %i.dl, 1.000000e+00
  br i1 %i.dm, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dn = fcmp reassoc nsz arcp contract afn olt float %i.dl, 5.000000e-04
  br i1 %i.dn, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.do = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.t ], [ %i.dl, %bb.v ], [ 5.000000e-04, %bb.u ] ; 2 uses
  store float %i.do, ptr %i.dj, align 4, !tbaa !107
  %i.dp = load float, ptr %4, align 4, !tbaa !102
  %i.dq = fadd reassoc nsz arcp contract afn float %i.dp, %i.do
  store float %i.dq, ptr %4, align 4, !tbaa !102
  %i.dr = load float, ptr %7, align 4, !tbaa !102
  %i.ds = load float, ptr %i.dj, align 4, !tbaa !107
  %i.dt = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ds
  %i.du = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.dr, float %i.dt)
  store float %i.du, ptr %7, align 4, !tbaa !102
  %i.dv = load float, ptr %6, align 4, !tbaa !102
  %i.dw = load float, ptr %i.dj, align 4, !tbaa !107
  %i.dx = fdiv reassoc nsz arcp contract afn float 5.000000e-04, %i.dw
  %i.dy = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dv, float %i.dx)
  store float %i.dy, ptr %6, align 4, !tbaa !102
  %i.dz = load i32, ptr %5, align 4, !tbaa !106
  %i.ea = add nsw i32 %i.dz, 1
  store i32 %i.ea, ptr %5, align 4, !tbaa !106
  br label %bb.x

bb.x:                                             ; preds = %bb.s, %bb.w
  %i.eb = add nuw nsw i32 %.1138, 1
  %i.ec = getelementptr inbounds nuw i8, ptr %.0139, i64 8
  %.0 = load ptr, ptr %i.ec, align 8, !tbaa !92   ; 2 uses
  %.not122 = icmp eq ptr %.0, null
  br i1 %.not122, label %.loopexit, label %bb.s

.loopexit.sink.split:                             ; preds = %bb.e, %bb.r
  %.sink = phi float [ %i.de, %bb.r ], [ %i.an, %bb.e ]
  store float %.sink, ptr %6, align 4, !tbaa !102
  %i.ed = load i32, ptr %5, align 4, !tbaa !106
  %i.ee = add nsw i32 %i.ed, 1
  store i32 %i.ee, ptr %5, align 4, !tbaa !106
  br label %.loopexit

.loopexit:                                        ; preds = %bb.x, %bb.n, %.loopexit.sink.split, %.preheader134, %.preheader, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_brush_duplicate_points(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) #1 {
bb.a:
  %.010 = load ptr, ptr %1, align 8, !tbaa !92    ; 2 uses
  %.not11 = icmp eq ptr %.010, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load ptr, ptr %2, align 8, !tbaa !109
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.a = phi ptr [ %i.d, %.lr.ph ], [ %.pre, %.lr.ph.preheader ]
  %.012 = phi ptr [ %.0, %.lr.ph ], [ %.010, %.lr.ph.preheader ] ; 2 uses
  %i.b = load ptr, ptr %.012, align 8, !tbaa !104
  %i.c = tail call noalias dereferenceable_or_null(44) ptr @malloc(i64 noundef 44) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.c, ptr noundef nonnull align 4 dereferenceable(44) %i.b, i64 44, i1 false)
  %i.d = tail call ptr @g_list_append(ptr noundef %i.a, ptr noundef nonnull %i.c) #18 ; 2 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %.012, i64 8
  %.0 = load ptr, ptr %i.e, align 8, !tbaa !92    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_brush_initial_source_pos(float noundef %0, float noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) #2 {
bb.a:
  %i.a = fmul reassoc nsz arcp contract afn float %0, f0x3C23D70A
  store float %i.a, ptr %2, align 4, !tbaa !102
  %i.b = fmul reassoc nsz arcp contract afn float %1, f0x3C23D70A
  store float %i.b, ptr %3, align 4, !tbaa !102
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_brush_get_distance(float noundef %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef captures(none) initializes((0, 4)) %6, ptr nofree noundef captures(none) initializes((0, 4)) %7, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %8, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %9, ptr nofree noundef captures(none) initializes((0, 4)) %10) #1 {
bb.a:
  store i32 0, ptr %9, align 4, !tbaa !106
  store i32 0, ptr %6, align 4, !tbaa !106
  store i32 0, ptr %7, align 4, !tbaa !106
  store i32 -1, ptr %8, align 4, !tbaa !106
  store float f0x7F7FFFFF, ptr %10, align 4, !tbaa !102
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !110
  %i.b = tail call ptr @g_list_nth_data(ptr noundef %i.a, i32 noundef %4) #18 ; 8 uses
  %.not155 = icmp eq ptr %i.b, null
  br i1 %.not155, label %bb.ac, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = fmul reassoc nsz arcp contract afn float %2, %2 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !111
  %i.f = mul nsw i32 %5, 3                        ; 5 uses
  %i.g = add nsw i32 %i.f, 2                      ; 4 uses
  %i.h = icmp sgt i32 %i.e, %i.g
  br i1 %i.h, label %bb.d, label %.loopexit178

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !113
  %i.k = icmp sgt i32 %i.j, %i.g
  br i1 %i.k, label %.lr.ph, label %.loopexit178

.lr.ph:                                           ; preds = %bb.d
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !114  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !115
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.p = load float, ptr %i.o, align 4, !tbaa !102
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 4, !tbaa !102
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !102
  %.neg171 = fadd reassoc nsz arcp contract afn float %i.t, %0
  %.neg175 = fadd reassoc nsz arcp contract afn float %i.p, %1
  %i.u = sext i32 %i.f to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ %i.u, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.0147179 = phi i32 [ 1, %.lr.ph ], [ %.1148, %bb.l ] ; 4 uses
  %.idx = shl i64 %indvars.iv, 3
  %i.v = getelementptr i8, ptr %i.l, i64 %.idx
  %i.w = mul nsw i32 %.0147179, 6
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [4 x i8], ptr %i.l, i64 %i.x ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 12
  %i.aa = load float, ptr %i.z, align 4, !tbaa !102
  %i.ab = load <2 x float>, ptr %i.v, align 4, !tbaa !102 ; 3 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 1
  %i.ad = fcmp reassoc nsz arcp contract afn oeq float %i.ac, %i.aa
  br i1 %i.ad, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr i8, ptr %i.y, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !102
  %i.ag = extractelement <2 x float> %i.ab, i64 0
  %i.ah = fcmp reassoc nsz arcp contract afn oeq float %i.ag, %i.af
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = add nsw i32 %.0147179, 1
  %i.aj = srem i32 %i.ai, %5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.1148 = phi i32 [ %i.aj, %bb.g ], [ %.0147179, %bb.f ], [ %.0147179, %bb.e ] ; 3 uses
  %i.ak = fadd reassoc nsz arcp contract afn <2 x float> %i.r, %i.ab ; 2 uses
  %i.al = extractelement <2 x float> %i.ak, i64 0
  %i.am = fsub reassoc nsz arcp contract afn float %.neg171, %i.al ; 2 uses
  %i.an = extractelement <2 x float> %i.ak, i64 1
  %i.ao = fsub reassoc nsz arcp contract afn float %.neg175, %i.an ; 2 uses
  %i.ap = fmul reassoc nsz arcp contract afn float %i.am, %i.am
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ao, %i.ao
  %i.ar = fadd reassoc nsz arcp contract afn float %i.ap, %i.aq ; 3 uses
  %11 = load float, ptr %10, align 4, !tbaa !102
  %i.as = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %11, float %i.ar) ; 2 uses
  store float %i.as, ptr %10, align 4, !tbaa !102
  %i.at = fcmp reassoc nsz arcp contract afn oeq float %i.as, %i.ar
  %i.au = fcmp reassoc nsz arcp contract afn olt float %i.ar, %i.c
  %or.cond161 = and i1 %i.au, %i.at
  br i1 %or.cond161, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.av = load i32, ptr %6, align 4, !tbaa !106
  %.not160 = icmp eq i32 %i.av, 0
  br i1 %.not160, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aw = icmp eq i32 %.1148, 0
  %..1148 = select i1 %i.aw, i32 %5, i32 %.1148
  %storemerge.in = icmp sgt i32 %..1148, 1        ; 2 uses
  %storemerge = zext i1 %storemerge.in to i32
  store i32 %storemerge, ptr %9, align 4, !tbaa !106
  br i1 %storemerge.in, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %6, align 4, !tbaa !106
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j, %bb.h
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ax = load i32, ptr %i.d, align 8, !tbaa !111
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %bb.e, label %.loopexit178

.loopexit178:                                     ; preds = %bb.l, %bb.d, %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !116
  %i.bc = icmp sgt i32 %i.bb, %i.g
  br i1 %i.bc, label %bb.m, label %._crit_edge.thread

bb.m:                                             ; preds = %.loopexit178
  store i32 -1, ptr %8, align 4, !tbaa !106
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !117 ; 2 uses
  %i.bf = load i32, ptr %i.ba, align 8, !tbaa !116 ; 2 uses
  %i.bg = icmp slt i32 %i.f, %i.bf
  br i1 %i.bg, label %.lr.ph184.preheader, label %._crit_edge.thread

.lr.ph184.preheader:                              ; preds = %bb.m
  %i.bh = shl nsw i32 %i.bf, 1
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr [4 x i8], ptr %i.be, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -4
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !102
  %i.bm = sext i32 %i.f to i64
  br label %.lr.ph184

._crit_edge:                                      ; preds = %bb.s
  %i.bn = icmp eq i32 %i.ce, -1
  %i.bo = and i32 %.1144, 1
  %i.bp = icmp eq i32 %i.bo, 0
  %i.bq = select i1 %i.bn, i1 %i.bp, i1 false
  br i1 %i.bq, label %._crit_edge.thread, label %bb.t

.lr.ph184:                                        ; preds = %.lr.ph184.preheader, %bb.s
  %i.br = phi i32 [ -1, %.lr.ph184.preheader ], [ %i.ce, %bb.s ]
  %indvars.iv190 = phi i64 [ %i.bm, %.lr.ph184.preheader ], [ %indvars.iv.next191, %bb.s ] ; 2 uses
  %.0143182 = phi i32 [ 0, %.lr.ph184.preheader ], [ %.1144, %bb.s ] ; 3 uses
  %.0145181 = phi float [ %i.bl, %.lr.ph184.preheader ], [ %i.bw, %bb.s ] ; 2 uses
  %i.bs = shl nsw i64 %indvars.iv190, 1           ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bs ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !102 ; 3 uses
  %i.bv = getelementptr i8, ptr %i.bt, i64 4
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !102 ; 4 uses
  %i.bx = fsub reassoc nsz arcp contract afn float %i.bu, %0 ; 2 uses
  %i.by = fmul reassoc nsz arcp contract afn float %i.bx, %i.bx
  %i.bz = fsub reassoc nsz arcp contract afn float %i.bw, %1 ; 2 uses
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, %i.bz
  %i.cb = fadd reassoc nsz arcp contract afn float %i.ca, %i.by
  %i.cc = fcmp reassoc nsz arcp contract afn olt float %i.cb, %i.c
  br i1 %i.cc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph184
  %i.cd = trunc nsw i64 %i.bs to i32              ; 2 uses
  store i32 %i.cd, ptr %8, align 4, !tbaa !106
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph184
  %i.ce = phi i32 [ %i.cd, %bb.n ], [ %i.br, %.lr.ph184 ] ; 2 uses
  %i.cf = fcmp reassoc nsz arcp contract afn ole float %1, %i.bw
  %i.cg = fcmp reassoc nsz arcp contract afn ogt float %1, %.0145181
  %or.cond162 = select i1 %i.cf, i1 %i.cg, i1 false
  br i1 %or.cond162, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = fcmp reassoc nsz arcp contract afn oge float %1, %i.bw
  %i.ci = fcmp reassoc nsz arcp contract afn olt float %1, %.0145181
  %or.cond163 = select i1 %i.ch, i1 %i.ci, i1 false
  %i.cj = fcmp reassoc nsz arcp contract afn ogt float %i.bu, %0
  %or.cond164 = and i1 %i.cj, %or.cond163
  br i1 %or.cond164, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.o
  %.old = fcmp reassoc nsz arcp contract afn ogt float %i.bu, %0
  br i1 %.old, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ck = add nsw i32 %.0143182, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.1144 = phi i32 [ %i.ck, %bb.r ], [ %.0143182, %bb.q ], [ %.0143182, %bb.p ] ; 2 uses
  %indvars.iv.next191 = add nsw i64 %indvars.iv190, 1 ; 2 uses
  %i.cl = load i32, ptr %i.ba, align 8, !tbaa !116
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp slt i64 %indvars.iv.next191, %i.cm
  br i1 %i.cn, label %.lr.ph184, label %._crit_edge

bb.t:                                             ; preds = %._crit_edge
  store i32 1, ptr %7, align 4, !tbaa !106
  store i32 1, ptr %6, align 4, !tbaa !106
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.m, %bb.t, %._crit_edge, %.loopexit178
  store i32 -1, ptr %8, align 4, !tbaa !106
  %i.co = load i32, ptr %i.d, align 8, !tbaa !111 ; 2 uses
  %i.cp = icmp sgt i32 %i.co, %i.g
  br i1 %i.cp, label %.lr.ph187, label %.loopexit

.lr.ph187:                                        ; preds = %._crit_edge.thread
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !114 ; 2 uses
  %i.cr = sext i32 %i.f to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph187, %bb.z
  %i.cs = phi i32 [ -1, %.lr.ph187 ], [ %i.ds, %bb.z ]
  %i.ct = phi i32 [ %i.co, %.lr.ph187 ], [ %i.dt, %bb.z ]
  %indvars.iv193 = phi i64 [ %i.cr, %.lr.ph187 ], [ %indvars.iv.next194, %bb.z ] ; 2 uses
  %.0141185 = phi i32 [ 1, %.lr.ph187 ], [ %.1, %bb.z ] ; 4 uses
  %.idx204 = shl i64 %indvars.iv193, 3
  %i.cu = getelementptr i8, ptr %i.cq, i64 %.idx204 ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 4
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !102 ; 2 uses
  %i.cx = mul nsw i32 %.0141185, 6
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr [4 x i8], ptr %i.cq, i64 %i.cy ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 12
  %i.db = load float, ptr %i.da, align 4, !tbaa !102
  %i.dc = fcmp reassoc nsz arcp contract afn oeq float %i.cw, %i.db
  %.pre196.a = load float, ptr %i.cu, align 4, !tbaa !102 ; 2 uses
  br i1 %i.dc, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dd = getelementptr i8, ptr %i.cz, i64 8
  %i.de = load float, ptr %i.dd, align 4, !tbaa !102
  %i.df = fcmp reassoc nsz arcp contract afn oeq float %.pre196.a, %i.de
  br i1 %i.df, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dg = add nsw i32 %.0141185, 1
  %i.dh = srem i32 %i.dg, %5
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.1 = phi i32 [ %i.dh, %bb.w ], [ %.0141185, %bb.v ], [ %.0141185, %bb.u ] ; 3 uses
  %i.di = fsub reassoc nsz arcp contract afn float %0, %.pre196.a ; 2 uses
  %i.dj = fsub reassoc nsz arcp contract afn float %1, %i.cw ; 2 uses
  %i.dk = fmul reassoc nsz arcp contract afn float %i.di, %i.di
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dj, %i.dj
  %i.dm = fadd reassoc nsz arcp contract afn float %i.dk, %i.dl ; 3 uses
  %12 = load float, ptr %10, align 4, !tbaa !102
  %i.dn = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %12, float %i.dm) ; 2 uses
  store float %i.dn, ptr %10, align 4, !tbaa !102
  %i.do = fcmp reassoc nsz arcp contract afn oeq float %i.dn, %i.dm
  %i.dp = icmp sgt i32 %.1, 0
  %or.cond = select i1 %i.do, i1 %i.dp, i1 false
  %i.dq = fcmp reassoc nsz arcp contract afn olt float %i.dm, %i.c
  %or.cond168 = and i1 %i.dq, %or.cond
  br i1 %or.cond168, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dr = add nsw i32 %.1, -1                     ; 2 uses
  store i32 %i.dr, ptr %8, align 4, !tbaa !106
  %.pre197 = load i32, ptr %i.d, align 8, !tbaa !111
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ds = phi i32 [ %i.dr, %bb.y ], [ %i.cs, %bb.x ] ; 2 uses
  %i.dt = phi i32 [ %.pre197, %bb.y ], [ %i.ct, %bb.x ] ; 2 uses
  %indvars.iv.next194 = add nsw i64 %indvars.iv193, 1 ; 2 uses
  %i.du = sext i32 %i.dt to i64
  %i.dv = icmp slt i64 %indvars.iv.next194, %i.du
  br i1 %i.dv, label %bb.u, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.z
  %i.dw = icmp ne i32 %i.ds, -1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge.thread
  %.not207 = phi i1 [ false, %._crit_edge.thread ], [ %i.dw, %.loopexit.loopexit ]
  %i.dx = load i32, ptr %6, align 4, !tbaa !106
  %.not158 = icmp eq i32 %i.dx, 0
  br i1 %.not158, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %i.dy = load i32, ptr %7, align 4, !tbaa !106
  %.not159 = icmp eq i32 %i.dy, 0
  %brmerge = select i1 %.not159, i1 true, i1 %.not207
  br i1 %brmerge, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store float 0.000000e+00, ptr %10, align 4, !tbaa !102
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.b, %bb.ab, %.loopexit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_brush_get_points_border(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef captures(none) %5, i32 noundef %6, ptr nofree noundef readonly captures(address_is_null) %7) #1 {
bb.a:
  %i.a = icmp eq i32 %6, 0
  %i.b = icmp ne ptr %7, null                     ; 2 uses
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 480
  %i.d = load i32, ptr %i.c, align 16, !tbaa !118
  %i.e = sitofp reassoc nsz arcp contract afn i32 %i.d to float
  %i.f = fpext reassoc nsz arcp contract afn float %i.e to double
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = phi double [ %i.f, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !129
  %i.j = tail call fastcc i32 @_brush_get_pts_border(ptr noundef %0, ptr noundef %1, double noundef %i.g, i32 noundef 0, ptr noundef %i.i, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef null, ptr noundef null, i32 noundef %6)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ %i.j, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_brush_get_mask(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7) #1 {
bb.a:
  %8 = alloca %struct.timeval, align 8            ; 5 uses
  %9 = alloca %struct.timeval, align 8            ; 5 uses
  %10 = alloca %struct.timeval, align 8           ; 5 uses
  %11 = alloca %struct.timeval, align 8           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %dt_get_debug_wtime.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.h = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #18 ; 0 uses
  %i.i = load i64, ptr %11, align 8, !tbaa !131
  %i.j = add nsw i64 %i.i, -1290608000
  %i.k = sitofp reassoc nsz arcp contract afn i64 %i.j to double
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !133
  %i.n = sitofp reassoc nsz arcp contract afn i64 %i.m to double
  %i.o = fmul reassoc nnan nsz arcp contract afn double %i.n, f0x3EB0C6F7A0B5ED8D
  %i.p = fadd reassoc nsz arcp contract afn double %i.o, %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %dt_get_debug_wtime.exit

dt_get_debug_wtime.exit:                          ; preds = %bb.b, %bb.c
  %i.q = phi reassoc nsz arcp contract afn double [ %i.p, %bb.c ], [ 0.000000e+00, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr null, ptr %i.b, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr null, ptr %i.c, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !135
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.u = load i32, ptr %i.t, align 16, !tbaa !118
  %i.v = sitofp reassoc nsz arcp contract afn i32 %i.u to double
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !136
  %i.y = call fastcc i32 @_brush_get_pts_border(ptr noundef %i.s, ptr noundef %2, double noundef %i.v, i32 noundef 3, ptr noundef %i.x, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f, i32 noundef 0)
  %.not34 = icmp eq i32 %i.y, 0
  br i1 %.not34, label %bb.d, label %bb.e

bb.d:                                             ; preds = %dt_get_debug_wtime.exit
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !134
  call void @free(ptr noundef %i.z) #18
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !134
  call void @free(ptr noundef %i.aa) #18
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !134
  call void @free(ptr noundef %i.ab) #18
  br label %bb.u

bb.e:                                             ; preds = %dt_get_debug_wtime.exit
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130
  %i.ad = and i32 %i.ac, 4112
  %or.cond.not = icmp eq i32 %i.ad, 4112
  br i1 %or.cond.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.af = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #18 ; 0 uses
  %i.ag = load i64, ptr %10, align 8, !tbaa !131
  %i.ah = add nsw i64 %i.ag, -1290608000
  %i.ai = sitofp reassoc nsz arcp contract afn i64 %i.ah to double
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !133
  %i.al = sitofp reassoc nsz arcp contract afn i64 %i.ak to double
  %i.am = fmul reassoc nnan nsz arcp contract afn double %i.al, f0x3EB0C6F7A0B5ED8D
  %i.an = fadd reassoc nsz arcp contract afn double %i.am, %i.ai ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.ao = fsub reassoc nsz arcp contract afn double %i.an, %i.q
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.21, ptr noundef nonnull %i.ae, double noundef %i.ao) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.052 = phi nsz double [ %i.q, %bb.e ], [ %i.an, %bb.f ]
  %i.ap = load ptr, ptr %2, align 8, !tbaa !109
  %i.aq = call i32 @g_list_length(ptr noundef %i.ap) #18
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !134 ; 11 uses
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !134 ; 7 uses
  %i.at = load i32, ptr %i.d, align 4, !tbaa !106 ; 2 uses
  %i.au = mul nsw i32 %i.aq, 3                    ; 4 uses
  %i.av = icmp slt i32 %i.au, %i.at
  br i1 %i.av, label %.lr.ph.i.i, label %_brush_bounding_box.exit

.lr.ph.i.i:                                       ; preds = %bb.g
  %.not.i.i = icmp eq ptr %i.as, null
  %i.aw = sext i32 %i.au to i64                   ; 9 uses
  %wide.trip.count83.i.i = sext i32 %i.at to i64  ; 6 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i.preheader, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %.lr.ph.i.i
  %i.ax = sub nsw i64 %wide.trip.count83.i.i, %i.aw
  %xtraiter = and i64 %i.ax, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.i.prol.loopexit, label %.lr.ph.split.i.i.prol

.lr.ph.split.i.i.prol:                            ; preds = %.lr.ph.split.i.i.preheader
  %i.ay = shl nsw i64 %i.aw, 1                    ; 2 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.ay
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.ay
  %i.bb = load <2 x float>, ptr %i.az, align 4, !tbaa !102
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.bd = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.bc, <float f0x00800000, float f0x00800000, float f0x7F7FFFFF, float f0x7F7FFFFF>
  %i.be = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.bc, <float f0x00800000, float f0x00800000, float f0x7F7FFFFF, float f0x7F7FFFFF>
  %i.bf = shufflevector <4 x i1> %i.bd, <4 x i1> %i.be, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bg = select <4 x i1> %i.bf, <4 x float> %i.bc, <4 x float> <float f0x00800000, float f0x00800000, float f0x7F7FFFFF, float f0x7F7FFFFF> ; 3 uses
  %i.bh = load <2 x float>, ptr %i.ba, align 4, !tbaa !102
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.bj = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.bi, %i.bg
end_hunk_0
