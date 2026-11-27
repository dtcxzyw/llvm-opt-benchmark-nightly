Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/context?download=true
inline.NumInlined: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_glfwChooseFBConfig:bb.a
bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !157
  %i.bj = sub nsw i32 %i.bg, %i.bi                ; 2 uses
  %i.bk = mul nsw i32 %i.bj, %i.bj
  %i.bl = add nuw i32 %i.bk, %.0121
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1122 = phi i32 [ %i.bl, %bb.r ], [ %.0121, %bb.q ] ; 2 uses
  %i.bm = load i32, ptr %i.k, align 8, !tbaa !158 ; 2 uses
  %.not148 = icmp eq i32 %i.bm, -1
  br i1 %.not148, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !158
  %i.bp = sub nsw i32 %i.bm, %i.bo                ; 2 uses
  %i.bq = mul nsw i32 %i.bp, %i.bp
  %i.br = add i32 %i.bq, %.1122
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2123 = phi i32 [ %i.br, %bb.t ], [ %.1122, %bb.s ] ; 5 uses
  %.not149 = icmp eq i32 %i.u, -1
  br i1 %.not149, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !150
  %i.bu = sub nsw i32 %i.u, %i.bt                 ; 2 uses
  %i.bv = mul nsw i32 %i.bu, %i.bu
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0116 = phi i32 [ %i.bv, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %.not150 = icmp eq i32 %i.z, -1
  br i1 %.not150, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !151
  %i.by = sub nsw i32 %i.z, %i.bx                 ; 2 uses
  %i.bz = mul nsw i32 %i.by, %i.by
  %i.ca = add nuw i32 %i.bz, %.0116
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1117 = phi i32 [ %i.ca, %bb.x ], [ %.0116, %bb.w ] ; 2 uses
  %.not151 = icmp eq i32 %i.af, -1
  br i1 %.not151, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !152
  %i.cd = sub nsw i32 %i.af, %i.cc                ; 2 uses
  %i.ce = mul nsw i32 %i.cd, %i.cd
  %i.cf = add i32 %i.ce, %.1117
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.2118 = phi i32 [ %i.cf, %bb.z ], [ %.1117, %bb.y ] ; 2 uses
  %i.cg = load i32, ptr %i.l, align 8, !tbaa !159 ; 2 uses
  %.not152 = icmp eq i32 %i.cg, -1
  br i1 %.not152, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !159
  %i.cj = sub nsw i32 %i.cg, %i.ci                ; 2 uses
  %i.ck = mul nsw i32 %i.cj, %i.cj
  %i.cl = add i32 %i.ck, %.2118
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.3 = phi i32 [ %i.cl, %bb.ab ], [ %.2118, %bb.aa ] ; 2 uses
  %i.cm = load i32, ptr %i.m, align 4, !tbaa !160 ; 2 uses
  %.not153 = icmp eq i32 %i.cm, -1
  br i1 %.not153, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cn = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !160
  %i.cp = sub nsw i32 %i.cm, %i.co                ; 2 uses
  %i.cq = mul nsw i32 %i.cp, %i.cp
  %i.cr = add i32 %i.cq, %.3
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.4 = phi i32 [ %i.cr, %bb.ad ], [ %.3, %bb.ac ] ; 2 uses
  %i.cs = load i32, ptr %i.n, align 8, !tbaa !161 ; 2 uses
  %.not154 = icmp eq i32 %i.cs, -1
  br i1 %.not154, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ct = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !161
  %i.cv = sub nsw i32 %i.cs, %i.cu                ; 2 uses
  %i.cw = mul nsw i32 %i.cv, %i.cv
  %i.cx = add i32 %i.cw, %.4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.5 = phi i32 [ %i.cx, %bb.af ], [ %.4, %bb.ae ] ; 2 uses
  %i.cy = load i32, ptr %i.o, align 4, !tbaa !162 ; 2 uses
  %.not155 = icmp eq i32 %i.cy, -1
  br i1 %.not155, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cz = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !162
  %i.db = sub nsw i32 %i.cy, %i.da                ; 2 uses
  %i.dc = mul nsw i32 %i.db, %i.db
  %i.dd = add i32 %i.dc, %.5
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.6 = phi i32 [ %i.dd, %bb.ah ], [ %.5, %bb.ag ] ; 2 uses
  %.not156 = icmp eq i32 %i.as, -1
  br i1 %.not156, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.de = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.df = load i32, ptr %i.de, align 8, !tbaa !154
  %i.dg = sub nsw i32 %i.as, %i.df                ; 2 uses
  %i.dh = mul nsw i32 %i.dg, %i.dg
  %i.di = add i32 %i.dh, %.6
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.7 = phi i32 [ %i.di, %bb.aj ], [ %.6, %bb.ai ] ; 2 uses
  %i.dj = load i32, ptr %i.p, align 4, !tbaa !163
  %.not157 = icmp eq i32 %i.dj, 0
  br i1 %.not157, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dk = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !163
  %.not158 = icmp eq i32 %i.dl, 0
  %i.dm = zext i1 %.not158 to i32
  %spec.select163 = add i32 %.7, %i.dm
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.8 = phi i32 [ %spec.select163, %bb.al ], [ %.7, %bb.ak ] ; 5 uses
  %i.dn = icmp ult i32 %spec.select162, %.0124167
  br i1 %i.dn, label %.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.do = icmp eq i32 %spec.select162, %.0124167
  br i1 %i.do, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.dp = icmp ult i32 %.2123, %.0119168
  br i1 %i.dp, label %.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dq = icmp eq i32 %.2123, %.0119168
  %i.dr = icmp ult i32 %.8, %.0114169
  %or.cond = select i1 %i.dq, i1 %i.dr, i1 false
  br i1 %or.cond, label %.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.an, %bb.ap
  %i.ds = icmp eq ptr %i.q, %.0170
  br i1 %i.ds, label %bb.ar, label %.thread

bb.ar:                                            ; preds = %bb.aq
  br label %.thread

.thread:                                          ; preds = %bb.ao, %bb.ap, %bb.am, %bb.aq, %bb.ar, %bb.c
  %.1125 = phi i32 [ %.0124167, %bb.c ], [ %.0124167, %bb.aq ], [ %spec.select162, %bb.ar ], [ %spec.select162, %bb.am ], [ %.0124167, %bb.ap ], [ %.0124167, %bb.ao ]
  %.1120 = phi i32 [ %.0119168, %bb.c ], [ %.0119168, %bb.aq ], [ %.2123, %bb.ar ], [ %.2123, %bb.am ], [ %.0119168, %bb.ap ], [ %.2123, %bb.ao ]
  %.1115 = phi i32 [ %.0114169, %bb.c ], [ %.0114169, %bb.aq ], [ %.8, %bb.ar ], [ %.8, %bb.am ], [ %.8, %bb.ap ], [ %.8, %bb.ao ]
  %.2 = phi ptr [ %.0170, %bb.c ], [ %.0170, %bb.aq ], [ %.0170, %bb.ar ], [ %i.q, %bb.am ], [ %i.q, %bb.ap ], [ %i.q, %bb.ao ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.thread, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %.2, %.thread ]
  ret ptr %.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @_glfwRefreshContextAttribs(ptr noundef initializes((528, 536)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 2 uses
  store i32 %i.g, ptr %i.i, align 4, !tbaa !56
  store i32 196609, ptr %i.h, align 8, !tbaa !55
  %i.j = tail call ptr @_glfwPlatformGetTls(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_glfw, i64 133412)) #7 ; 26 uses
  %i.k = load i32, ptr @_glfw, align 8, !tbaa !134
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65537, ptr noundef null) #7
  br label %glfwMakeContextCurrent.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call ptr @_glfwPlatformGetTls(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_glfw, i64 133412)) #7 ; 3 uses
  %i.m = load i32, ptr %i.h, align 8, !tbaa !55
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65546, ptr noundef nonnull @.str.30) #7
  br label %glfwMakeContextCurrent.exit

.thread.i:                                        ; preds = %bb.c
  %.not1315.i = icmp eq ptr %i.l, null
  br i1 %.not1315.i, label %.thread17.i, label %bb.e

bb.e:                                             ; preds = %.thread.i
  %i.o = load i32, ptr %i.i, align 4, !tbaa !56
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 532
  %i.q = load i32, ptr %i.p, align 4, !tbaa !56
  %.not14.i = icmp eq i32 %i.o, %i.q
  br i1 %.not14.i, label %.thread17.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 600
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !135
  tail call void %i.s(ptr noundef null) #7, !inline_history !164
  br label %.thread17.i

.thread17.i:                                      ; preds = %bb.f, %bb.e, %.thread.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !135
  tail call void %i.u(ptr noundef nonnull %0) #7, !inline_history !164
  br label %glfwMakeContextCurrent.exit

glfwMakeContextCurrent.exit:                      ; preds = %bb.b, %bb.d, %.thread17.i
  %i.v = tail call ptr @_glfwPlatformGetTls(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_glfw, i64 133412)) #7
  %.not = icmp eq ptr %i.v, %0
  br i1 %.not, label %bb.g, label %glfwMakeContextCurrent.exit122

bb.g:                                             ; preds = %glfwMakeContextCurrent.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !136
  %i.y = tail call ptr %i.x(ptr noundef nonnull @.str.13) #7
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 7 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !137
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !136
  %i.ab = tail call ptr %i.aa(ptr noundef nonnull @.str.14) #7 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !138
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !137
  %.not96 = icmp eq ptr %i.ad, null
  %.not97 = icmp eq ptr %i.ab, null
  %or.cond = select i1 %.not96, i1 true, i1 %.not97
  br i1 %or.cond, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.15) #7
  %i.ae = load i32, ptr @_glfw, align 8, !tbaa !134
  %.not.i114 = icmp eq i32 %i.ae, 0
  br i1 %.not.i114, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65537, ptr noundef null) #7
  br label %glfwMakeContextCurrent.exit122

bb.j:                                             ; preds = %bb.h
  %i.af = tail call ptr @_glfwPlatformGetTls(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_glfw, i64 133412)) #7 ; 5 uses
  %.not12.i115 = icmp eq ptr %i.j, null
  br i1 %.not12.i115, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 528
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !55
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %.thread.i116

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65546, ptr noundef nonnull @.str.30) #7
  br label %glfwMakeContextCurrent.exit122

bb.m:                                             ; preds = %bb.j
  %.not13.i120 = icmp eq ptr %i.af, null
  br i1 %.not13.i120, label %glfwMakeContextCurrent.exit122, label %.thread20.i121

.thread20.i121:                                   ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 600
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !135
  tail call void %i.ak(ptr noundef null) #7, !inline_history !164
  br label %glfwMakeContextCurrent.exit122

.thread.i116:                                     ; preds = %bb.k
  %.not1315.i117 = icmp eq ptr %i.af, null
  br i1 %.not1315.i117, label %.thread17.i119, label %bb.n

bb.n:                                             ; preds = %.thread.i116
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 532
  %i.am = load i32, ptr %i.al, align 4, !tbaa !56
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 532
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !56
  %.not14.i118 = icmp eq i32 %i.am, %i.ao
  br i1 %.not14.i118, label %.thread17.i119, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 600
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !135
  tail call void %i.aq(ptr noundef null) #7, !inline_history !164
  br label %.thread17.i119

.thread17.i119:                                   ; preds = %bb.o, %bb.n, %.thread.i116
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 600
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !135
  tail call void %i.as(ptr noundef nonnull %i.j) #7, !inline_history !164
  br label %glfwMakeContextCurrent.exit122

bb.p:                                             ; preds = %bb.g
  %i.at = tail call ptr %i.ab(i32 noundef 7938) #7 ; 6 uses
  %.not98 = icmp eq ptr %i.at, null
  br i1 %.not98, label %bb.q, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.p
  %i.au = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.at, ptr noundef nonnull dereferenceable(14) @.str.10, i64 noundef 13) #8
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.y, label %.preheader.1

bb.q:                                             ; preds = %bb.p
  %i.aw = load i32, ptr %1, align 8, !tbaa !13
  %i.ax = icmp eq i32 %i.aw, 196609
  %.str.16..str.17 = select i1 %i.ax, ptr @.str.16, ptr @.str.17
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull %.str.16..str.17) #7
  %i.ay = load i32, ptr @_glfw, align 8, !tbaa !134
  %.not.i123 = icmp eq i32 %i.ay, 0
  br i1 %.not.i123, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65537, ptr noundef null) #7
  br label %glfwMakeContextCurrent.exit122

bb.s:                                             ; preds = %bb.q
  %i.az = tail call ptr @_glfwPlatformGetTls(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_glfw, i64 133412)) #7 ; 5 uses
  %.not12.i124 = icmp eq ptr %i.j, null
  br i1 %.not12.i124, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 528
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !55
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.u, label %.thread.i125

bb.u:                                             ; preds = %bb.t
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65546, ptr noundef nonnull @.str.30) #7
  br label %glfwMakeContextCurrent.exit122

bb.v:                                             ; preds = %bb.s
  %.not13.i129 = icmp eq ptr %i.az, null
  br i1 %.not13.i129, label %glfwMakeContextCurrent.exit122, label %.thread20.i130

.thread20.i130:                                   ; preds = %bb.v
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 600
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !135
  tail call void %i.be(ptr noundef null) #7, !inline_history !164
  br label %glfwMakeContextCurrent.exit122

.thread.i125:                                     ; preds = %bb.t
  %.not1315.i126 = icmp eq ptr %i.az, null
  br i1 %.not1315.i126, label %.thread17.i128, label %bb.w

bb.w:                                             ; preds = %.thread.i125
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 532
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !56
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 532
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !56
  %.not14.i127 = icmp eq i32 %i.bg, %i.bi
  br i1 %.not14.i127, label %.thread17.i128, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 600
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !135
  tail call void %i.bk(ptr noundef null) #7, !inline_history !164
  br label %.thread17.i128

.thread17.i128:                                   ; preds = %bb.x, %bb.w, %.thread.i125
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 600
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !135
  tail call void %i.bm(ptr noundef nonnull %i.j) #7, !inline_history !164
  br label %glfwMakeContextCurrent.exit122

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.bn = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.at, ptr noundef nonnull dereferenceable(14) @.str.11, i64 noundef 13) #8
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.y, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
end_hunk_0
