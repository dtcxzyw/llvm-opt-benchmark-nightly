Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/format_output?download=true
inline.NumInlined: 31
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@test_fail_string_common:bb.a
test_string_null_empty.exit134:                   ; preds = %bb.g, %bb.h
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %test_string_null_empty.exit134
  %i.s = tail call i32 (ptr, ...) @test_printf_stderr(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.6, i32 noundef 43) #9 ; 0 uses
  br label %test_string_null_empty.exit

bb.j:                                             ; preds = %test_string_null_empty.exit134
  %i.t = tail call i32 (ptr, ...) @test_printf_stderr(ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 43) #9 ; 0 uses
  br label %test_string_null_empty.exit

bb.k:                                             ; preds = %bb.a
  %.not = icmp eq i64 %spec.select, %.0113
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.u = tail call i32 @strncmp(ptr noundef %7, ptr noundef %9, i64 noundef %spec.select) #10
  %.not126 = icmp eq i32 %i.u, 0
  br i1 %.not126, label %.lr.ph161, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.v = tail call i32 (ptr, ...) @test_printf_stderr(ptr noundef nonnull @.str.15, ptr noundef %4) #9 ; 0 uses
  %i.w = tail call i32 (ptr, ...) @test_printf_stderr(ptr noundef nonnull @.str.16, ptr noundef %5) #9 ; 0 uses
  br label %.lr.ph161

.lr.ph161:                                        ; preds = %bb.l, %bb.m
  %i.x = icmp ne i64 %.0113, 0
  %i.y = icmp ne i64 %spec.select, 0
  %notsub = add i64 %i.e, -84
  %i.z = icmp ult i64 %notsub, -31                ; 4 uses
  %i.aa = trunc i64 %i.h to i32
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph161, %bb.af
  %i.ab = phi i1 [ %i.x, %.lr.ph161 ], [ %i.ek, %bb.af ]
  %i.ac = phi i1 [ %i.y, %.lr.ph161 ], [ %i.ej, %bb.af ]
  %.0107155 = phi i32 [ 0, %.lr.ph161 ], [ %i.ei, %bb.af ] ; 5 uses
  %.1114154 = phi i64 [ %.0113, %.lr.ph161 ], [ %i.eh, %bb.af ] ; 2 uses
  %.0115153 = phi ptr [ %9, %.lr.ph161 ], [ %.1116, %bb.af ] ; 9 uses
  %.1118152 = phi i64 [ %spec.select, %.lr.ph161 ], [ %i.eg, %bb.af ] ; 2 uses
  %.0119151 = phi ptr [ %7, %.lr.ph161 ], [ %spec.select133, %bb.af ] ; 9 uses
  br i1 %i.ac, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.ad = call i64 @llvm.umin.i64(i64 %.1118152, i64 %i.h) ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ad
  store i8 0, ptr %i.ae, align 1, !tbaa !11
  %.not163 = icmp eq i64 %i.ad, 0
  br i1 %.not163, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.af = tail call ptr @__ctype_b_loc() #11      ; 3 uses
  %xtraiter = and i64 %i.ad, 1
  %i.ag = icmp eq i64 %i.ad, 1
  br i1 %i.ag, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ad, -2
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.new
  %.0108142 = phi i64 [ 0, %.lr.ph.new ], [ %i.ay, %bb.p ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.p ]
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %.0119151, i64 %.0108142
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !11  ; 2 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !tbaa !14
  %i.an = and i16 %i.am, 16384
  %.not130 = icmp eq i16 %i.an, 0
  %spec.select131 = select i1 %.not130, i8 46, i8 %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0108142
  store i8 %spec.select131, ptr %i.ao, align 2, !tbaa !11
  %i.ap = or disjoint i64 %.0108142, 1            ; 2 uses
  %i.aq = load ptr, ptr %i.af, align 8, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %.0119151, i64 %i.ap
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !11  ; 2 uses
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !14
  %i.aw = and i16 %i.av, 16384
  %.not130.1 = icmp eq i16 %i.aw, 0
  %spec.select131.1 = select i1 %.not130.1, i8 46, i8 %i.as
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ap
  store i8 %spec.select131.1, ptr %i.ax, align 1, !tbaa !11
  %i.ay = add nuw i64 %.0108142, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.p, !llvm.loop !16

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.0108142.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ay, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod182 = trunc i64 %i.ad to i1
  call void @llvm.assume(i1 %lcmp.mod182)
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !12
  %i.ba = getelementptr inbounds nuw i8, ptr %.0119151, i64 %.0108142.epil.init
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !11  ; 2 uses
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !14
  %i.bf = and i16 %i.be, 16384
  %.not130.epil = icmp eq i16 %i.bf, 0
  %spec.select131.epil = select i1 %.not130.epil, i8 46, i8 %i.bb
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0108142.epil.init
  store i8 %spec.select131.epil, ptr %i.bg, align 1, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.o, %bb.n
  %.0112 = phi i64 [ 0, %bb.n ], [ 0, %bb.o ], [ %i.ad, %.loopexit.loopexit.unr-lcssa ], [ %i.ad, %.epil.preheader ] ; 7 uses
  br i1 %i.ab, label %bb.q, label %.thread

.thread:                                          ; preds = %.loopexit
  %i.bh = icmp ne i64 %.0112, 0
  br label %bb.s

bb.q:                                             ; preds = %.loopexit
  %i.bi = call i64 @llvm.umin.i64(i64 %.1114154, i64 %i.h) ; 10 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bi
  store i8 0, ptr %i.bj, align 1, !tbaa !11
  %.not164 = icmp eq i64 %i.bi, 0
  br i1 %.not164, label %._crit_edge, label %.lr.ph144

.lr.ph144:                                        ; preds = %bb.q
  %i.bk = tail call ptr @__ctype_b_loc() #11      ; 3 uses
  %xtraiter184 = and i64 %i.bi, 1
  %i.bl = icmp eq i64 %i.bi, 1
  br i1 %i.bl, label %.epil.preheader183, label %.lr.ph144.new

.lr.ph144.new:                                    ; preds = %.lr.ph144
  %unroll_iter187 = and i64 %i.bi, -2
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph144.new
  %.1109143 = phi i64 [ 0, %.lr.ph144.new ], [ %i.cd, %bb.r ] ; 4 uses
  %niter188 = phi i64 [ 0, %.lr.ph144.new ], [ %niter188.next.1, %bb.r ]
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %.0115153, i64 %.1109143
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !11  ; 2 uses
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !14
  %i.bs = and i16 %i.br, 16384
  %.not129 = icmp eq i16 %i.bs, 0
  %spec.select132 = select i1 %.not129, i8 46, i8 %i.bo
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1109143
  store i8 %spec.select132, ptr %i.bt, align 2, !tbaa !11
  %i.bu = or disjoint i64 %.1109143, 1            ; 2 uses
  %i.bv = load ptr, ptr %i.bk, align 8, !tbaa !12
  %i.bw = getelementptr inbounds nuw i8, ptr %.0115153, i64 %i.bu
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !11  ; 2 uses
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !14
  %i.cb = and i16 %i.ca, 16384
  %.not129.1 = icmp eq i16 %i.cb, 0
  %spec.select132.1 = select i1 %.not129.1, i8 46, i8 %i.bx
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bu
  store i8 %spec.select132.1, ptr %i.cc, align 1, !tbaa !11
  %i.cd = add nuw i64 %.1109143, 2                ; 2 uses
  %niter188.next.1 = add i64 %niter188, 2         ; 2 uses
  %niter188.ncmp.1 = icmp eq i64 %niter188.next.1, %unroll_iter187
  br i1 %niter188.ncmp.1, label %._crit_edge.thread.unr-lcssa, label %bb.r, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.q
  %i.ce = icmp ne i64 %.0112, 0                   ; 2 uses
  %or.cond3 = and i1 %i.z, %i.ce
  br i1 %or.cond3, label %._crit_edge149, label %bb.s

._crit_edge.thread.unr-lcssa:                     ; preds = %bb.r
  %lcmp.mod185.not = icmp eq i64 %xtraiter184, 0
  br i1 %lcmp.mod185.not, label %._crit_edge.thread, label %.epil.preheader183

.epil.preheader183:                               ; preds = %._crit_edge.thread.unr-lcssa, %.lr.ph144
  %.1109143.epil.init = phi i64 [ 0, %.lr.ph144 ], [ %i.cd, %._crit_edge.thread.unr-lcssa ] ; 2 uses
  %lcmp.mod186 = trunc i64 %i.bi to i1
  call void @llvm.assume(i1 %lcmp.mod186)
  %i.cf = load ptr, ptr %i.bk, align 8, !tbaa !12
  %i.cg = getelementptr inbounds nuw i8, ptr %.0115153, i64 %.1109143.epil.init
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !11  ; 2 uses
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !14
  %i.cl = and i16 %i.ck, 16384
  %.not129.epil = icmp eq i16 %i.cl, 0
  %spec.select132.epil = select i1 %.not129.epil, i8 46, i8 %i.ch
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1109143.epil.init
  store i8 %spec.select132.epil, ptr %i.cm, align 1, !tbaa !11
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge.thread.unr-lcssa, %.epil.preheader183
  %i.cn = icmp ne i64 %.0112, 0                   ; 2 uses
  %or.cond3171 = and i1 %i.z, %i.cn
  br i1 %or.cond3171, label %.lr.ph148.preheader, label %bb.s

.lr.ph148.preheader:                              ; preds = %._crit_edge.thread
  %i.co = call i64 @llvm.umin.i64(i64 %.0112, i64 %i.bi) ; 4 uses
  %min.iters.check = icmp ult i64 %i.co, 8
  br i1 %min.iters.check, label %.lr.ph148.preheader180, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph148.preheader
  %n.vec = and i64 %i.co, -8                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.cx, %vector.body ]
  %vec.phi175 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.cy, %vector.body ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.0119151, i64 %index ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %wide.load = load <4 x i8>, ptr %i.cp, align 1, !tbaa !11
  %wide.load176.a = load <4 x i8>, ptr %i.cq, align 1, !tbaa !11
  %i.cr = getelementptr inbounds nuw i8, ptr %.0115153, i64 %index ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %wide.load177 = load <4 x i8>, ptr %i.cr, align 1, !tbaa !11
  %wide.load178 = load <4 x i8>, ptr %i.cs, align 1, !tbaa !11
  %i.ct = icmp ne <4 x i8> %wide.load, %wide.load177 ; 2 uses
  %i.cu = icmp ne <4 x i8> %wide.load176.a, %wide.load178 ; 2 uses
  %i.cv = select <4 x i1> %i.ct, <4 x i8> splat (i8 94), <4 x i8> splat (i8 32)
  %i.cw = select <4 x i1> %i.cu, <4 x i8> splat (i8 94), <4 x i8> splat (i8 32)
  %i.cx = or <4 x i1> %vec.phi, %i.ct             ; 2 uses
  %i.cy = or <4 x i1> %vec.phi175, %i.cu          ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 %index ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store <4 x i8> %i.cv, ptr %i.cz, align 8, !tbaa !11
  store <4 x i8> %i.cw, ptr %i.da, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.cy, %i.cx
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.dc = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not179 = icmp ne i4 %i.dc, 0                  ; 2 uses
  %rdx.select = zext i1 %.not179 to i32
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %._crit_edge149, label %.lr.ph148.preheader180

.lr.ph148.preheader180:                           ; preds = %.lr.ph148.preheader, %middle.block
  %.0146.ph = phi i32 [ 0, %.lr.ph148.preheader ], [ %rdx.select, %middle.block ]
  %.2110145.ph = phi i64 [ 0, %.lr.ph148.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph148

.lr.ph148:                                        ; preds = %.lr.ph148.preheader180, %.lr.ph148
  %.0146 = phi i32 [ %spec.select174, %.lr.ph148 ], [ %.0146.ph, %.lr.ph148.preheader180 ]
  %.2110145 = phi i64 [ %i.dj, %.lr.ph148 ], [ %.2110145.ph, %.lr.ph148.preheader180 ] ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0119151, i64 %.2110145
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !11
  %i.df = getelementptr inbounds nuw i8, ptr %.0115153, i64 %.2110145
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !11
  %i.dh = icmp eq i8 %i.de, %i.dg                 ; 2 uses
  %spec.select173 = select i1 %i.dh, i8 32, i8 94
  %spec.select174 = select i1 %i.dh, i32 %.0146, i32 1 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 %.2110145
  store i8 %spec.select173, ptr %i.di, align 1, !tbaa !11
  %i.dj = add nuw i64 %.2110145, 1                ; 3 uses
  %11 = icmp ult i64 %i.dj, %i.co
  br i1 %11, label %.lr.ph148, label %._crit_edge149.loopexit.loopexit, !llvm.loop !22

._crit_edge149.loopexit.loopexit:                 ; preds = %.lr.ph148
  %i.dk = icmp ne i32 %spec.select174, 0
  br label %._crit_edge149

._crit_edge149:                                   ; preds = %middle.block, %._crit_edge149.loopexit.loopexit, %._crit_edge
  %.2110.lcssa = phi i64 [ 0, %._crit_edge ], [ %n.vec, %middle.block ], [ %i.dj, %._crit_edge149.loopexit.loopexit ]
  %.0.lcssa = phi i1 [ false, %._crit_edge ], [ %.not179, %middle.block ], [ %i.dk, %._crit_edge149.loopexit.loopexit ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 %.2110.lcssa
  store i8 0, ptr %i.dl, align 1, !tbaa !11
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.thread, %.thread, %._crit_edge149, %._crit_edge
  %i.dm = phi i1 [ true, %._crit_edge149 ], [ %i.z, %._crit_edge ], [ false, %.thread ], [ %i.z, %._crit_edge.thread ]
  %i.dn = phi i1 [ true, %._crit_edge149 ], [ %i.ce, %._crit_edge ], [ %i.bh, %.thread ], [ %i.cn, %._crit_edge.thread ]
  %.0111140 = phi i64 [ %i.bi, %._crit_edge149 ], [ %i.bi, %._crit_edge ], [ 0, %.thread ], [ %i.bi, %._crit_edge.thread ] ; 3 uses
  %.3 = phi i1 [ %.0.lcssa, %._crit_edge149 ], [ false, %._crit_edge ], [ false, %.thread ], [ false, %._crit_edge.thread ] ; 2 uses
  %i.do = icmp ne i64 %.0112, %.0111140
  %or.cond5 = select i1 %i.do, i1 true, i1 %.3
  br i1 %or.cond5, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dp = call i32 (ptr, ...) @test_printf_stderr(ptr noundef nonnull @.str.9, i32 noundef %.0107155, ptr noundef nonnull %i.a) #9 ; 0 uses
  br label %bb.af

bb.u:                                             ; preds = %bb.s
  %i.dq = icmp eq i32 %.0107155, 0                ; 2 uses
  br i1 %i.dq, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dr = icmp eq ptr %.0119151, null
  br i1 %i.dr, label %.split, label %bb.w

.split:                                           ; preds = %bb.v
  %i.ds = call i32 (ptr, ...) @test_printf_stderr(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.6, i32 noundef 45) #9 ; 0 uses
  br label %.thread141

bb.w:                                             ; preds = %bb.v
  %i.dt = load i8, ptr %.0119151, align 1, !tbaa !11
  %i.du = icmp eq i8 %i.dt, 0
  br i1 %i.du, label %test_string_null_empty.exit136, label %bb.x

test_string_null_empty.exit136:                   ; preds = %bb.w
  %i.dv = call i32 (ptr, ...) @test_printf_stderr(ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 45) #9 ; 0 uses
  br label %.thread141

bb.x:                                             ; preds = %bb.w, %bb.u
  br i1 %i.dn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dw = call i32 (ptr, ...) @test_printf_stderr(ptr noundef nonnull @.str.10, i32 noundef %.0107155, ptr noundef nonnull %i.a) #9 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  br i1 %i.dq, label %.thread141, label %bb.ab

.thread141:                                       ; preds = %test_string_null_empty.exit136, %.split, %bb.z
  %i.dx = icmp eq ptr %.0115153, null
  br i1 %i.dx, label %.split122, label %bb.aa

.split122:                                        ; preds = %.thread141
  %i.dy = call i32 (ptr, ...) @test_printf_stderr(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.6, i32 noundef 43) #9 ; 0 uses
  br label %bb.ad

bb.aa:                                            ; preds = %.thread141
  %i.dz = load i8, ptr %.0115153, align 1, !tbaa !11
  %i.ea = icmp eq i8 %i.dz, 0
  br i1 %i.ea, label %test_string_null_empty.exit137, label %bb.ab

test_string_null_empty.exit137:                   ; preds = %bb.aa
  %i.eb = call i32 (ptr, ...) @test_printf_stderr(ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 43) #9 ; 0 uses
  br label %bb.ad

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %i.dm, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ec = call i32 (ptr, ...) @test_printf_stderr(ptr noundef nonnull @.str.11, i32 noundef %.0107155, ptr noundef nonnull %i.b) #9 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.split122, %test_string_null_empty.exit137, %bb.ab, %bb.ac
  br i1 %.3, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ed = call i32 (ptr, ...) @test_printf_stderr(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.c) #9 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.t
  %.not127 = icmp eq ptr %.0119151, null
  %i.ee = getelementptr inbounds nuw i8, ptr %.0119151, i64 %.0112
  %spec.select133 = select i1 %.not127, ptr null, ptr %i.ee
  %.not128 = icmp eq ptr %.0115153, null
  %i.ef = getelementptr inbounds nuw i8, ptr %.0115153, i64 %.0111140
  %.1116 = select i1 %.not128, ptr null, ptr %i.ef
  %i.eg = sub i64 %.1118152, %.0112               ; 2 uses
  %i.eh = sub i64 %.1114154, %.0111140            ; 2 uses
  %i.ei = add i32 %.0107155, %i.aa
  %i.ej = icmp ne i64 %i.eg, 0                    ; 2 uses
  %i.ek = icmp ne i64 %i.eh, 0                    ; 2 uses
  %i.el = select i1 %i.ej, i1 true, i1 %i.ek
  br i1 %i.el, label %bb.n, label %test_string_null_empty.exit, !llvm.loop !23

test_string_null_empty.exit:                      ; preds = %bb.af, %bb.j, %bb.i, %bb.e, %bb.d
  %i.em = call i32 @test_flush_stderr() #9        ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

declare i32 @test_printf_stderr(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @test_output_string(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @test_fail_string_common(ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @test_fail_bignum_message(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @test_fail_bignum_common(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8)
  %i.a = tail call i32 (ptr, ...) @test_printf_stderr(ptr noundef nonnull @.str) #9 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @test_fail_bignum_common(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca [81 x i8], align 16               ; 8 uses
  %i.b = alloca [81 x i8], align 16               ; 7 uses
  %i.c = alloca [81 x i8], align 16               ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca [4000 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 1, ptr %i.d, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store i32 1, ptr %i.e, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  tail call void @test_fail_message_prefix(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #9
  %i.g = icmp eq ptr %7, null                     ; 9 uses
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @BN_num_bits(ptr noundef nonnull %7) #9
  %i.i = add nsw i32 %i.h, 7
  %i.j = sdiv i32 %i.i, 8
  %i.k = tail call i32 @BN_is_negative(ptr noundef nonnull %7) #9
  %.not = icmp ne i32 %i.k, 0
  %i.l = zext i1 %.not to i32
  %i.m = add nsw i32 %i.j, %i.l
  %i.n = sext i32 %i.m to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.p = icmp eq ptr %8, null                     ; 8 uses
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i32 @BN_num_bits(ptr noundef nonnull %8) #9
  %i.r = add nsw i32 %i.q, 7
  %i.s = sdiv i32 %i.r, 8
  %i.t = tail call i32 @BN_is_negative(ptr noundef nonnull %8) #9
  %.not133 = icmp ne i32 %i.t, 0
  %i.u = zext i1 %.not133 to i32
  %i.v = add nsw i32 %i.s, %i.u
  %i.w = sext i32 %i.v to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.x = phi i64 [ %i.w, %bb.d ], [ 0, %bb.c ]    ; 3 uses
  %i.y = icmp eq i64 %i.o, 0
  %i.z = icmp eq i64 %i.x, 0
  %or.cond = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.aa = xor i1 %i.g, %i.p
  br i1 %i.aa, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call i32 (ptr, ...) @test_printf_stderr(ptr noundef nonnull @.str.25, i32 noundef 73, ptr noundef nonnull @.str.26) #9 ; 0 uses
  br i1 %i.g, label %test_bignum_zero_print.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call i32 @BN_is_negative(ptr noundef nonnull %7) #9
  %.not4.i.i = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not4.i.i, ptr @.str.31, ptr @.str.30
  br label %test_bignum_zero_print.exit

test_bignum_zero_print.exit:                      ; preds = %bb.g, %bb.h
  %i.ae = phi ptr [ @.str.27, %bb.h ], [ @.str.6, %bb.g ]
  %.0.i.i = phi ptr [ %i.ad, %bb.h ], [ @.str.29, %bb.g ]
  %i.af = tail call i32 (ptr, ...) @test_printf_stderr(ptr noundef nonnull @.str.28, i32 noundef 32, i32 noundef 67, ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.ae) #9 ; 0 uses
  br label %.thread156

bb.i:                                             ; preds = %bb.f
  %i.ag = tail call i32 (ptr, ...) @test_printf_stderr(ptr noundef nonnull @.str.15, ptr noundef %4) #9 ; 0 uses
  %i.ah = tail call i32 (ptr, ...) @test_printf_stderr(ptr noundef nonnull @.str.16, ptr noundef %5) #9 ; 0 uses
  %i.ai = tail call i32 (ptr, ...) @test_printf_stderr(ptr noundef nonnull @.str.25, i32 noundef 73, ptr noundef nonnull @.str.26) #9 ; 0 uses
  br i1 %i.g, label %test_bignum_zero_print.exit150, label %bb.j

end_hunk_0
