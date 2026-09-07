Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coremark/original/core_main?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a
  %i.x = icmp eq i16 %i.s, 0
  %or.cond14 = select i1 %i.w, i1 %i.x, i1 false
  %i.y = icmp eq i16 %i.u, 0
  %or.cond19 = select i1 %or.cond14, i1 %i.y, i1 false
  br i1 %or.cond19, label %.preheader187.sink.split, label %.preheader187

.preheader187.sink.split:                         ; preds = %bb.b, %bb.a
  %.sink238 = phi i16 [ 0, %bb.a ], [ 13333, %bb.b ] ; 3 uses
  store i16 %.sink238, ptr %2, align 16, !tbaa !30
  store i16 %.sink238, ptr %i.h, align 2, !tbaa !31
  store i16 102, ptr %i.k, align 4, !tbaa !32
  br label %.preheader187

.preheader187:                                    ; preds = %.preheader187.sink.split, %bb.b
  %i.z = phi i16 [ %i.q, %bb.b ], [ %.sink238, %.preheader187.sink.split ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.b, ptr %i.aa, align 8, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i16 0, ptr %i.ac, align 8, !tbaa !35
  %i.ad = and i32 %spec.select, 1
  %i.ae = lshr i32 %spec.select, 1
  %i.af = and i32 %i.ae, 1
  %spec.select173.1 = add nuw nsw i32 %i.af, %i.ad
  %i.ag = lshr i32 %spec.select, 2
  %i.ah = and i32 %i.ag, 1
  %spec.select173.2 = add nuw nsw i32 %i.ah, %spec.select173.1
  %.rhs.trunc = trunc nuw nsw i32 %spec.select173.2 to i16
  %i.ai = udiv i16 2000, %.rhs.trunc              ; 2 uses
  %.zext = zext nneg i16 %i.ai to i32             ; 3 uses
  store i32 %.zext, ptr %i.ab, align 8, !tbaa !36
  %i.aj = and i32 %spec.select, 1
  %.not171 = icmp eq i32 %i.aj, 0                 ; 2 uses
  br i1 %.not171, label %bb.c, label %.preheader184

.preheader184:                                    ; preds = %.preheader187
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.b, ptr %i.ak, align 16, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %.preheader184, %.preheader187
  %.1133 = phi i16 [ 1, %.preheader184 ], [ 0, %.preheader187 ] ; 3 uses
  %i.al = and i32 %spec.select, 2                 ; 2 uses
  %.not171.1 = icmp eq i32 %i.al, 0
  br i1 %.not171.1, label %bb.d, label %.preheader184.1

.preheader184.1:                                  ; preds = %bb.c
  %narrow = mul nuw nsw i16 %i.ai, %.1133
  %i.am = zext nneg i16 %narrow to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !34
  %i.ap = add nuw nsw i16 %.1133, 1
  br label %bb.d

bb.d:                                             ; preds = %.preheader184.1, %bb.c
  %.1133.1 = phi i16 [ %i.ap, %.preheader184.1 ], [ %.1133, %bb.c ]
  %i.aq = and i32 %spec.select, 4
  %.not171.2 = icmp eq i32 %i.aq, 0
  br i1 %.not171.2, label %.preheader183, label %.preheader184.2

.preheader184.2:                                  ; preds = %bb.d
  %i.ar = zext nneg i16 %.1133.1 to i32
  %i.as = mul nuw nsw i32 %.zext, %i.ar
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.au, ptr %i.av, align 16, !tbaa !34
  br label %.preheader183

.preheader183:                                    ; preds = %.preheader184.2, %bb.d
  br i1 %.not171, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader183
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = load ptr, ptr %i.aw, align 16, !tbaa !34
  %i.ay = call ptr @core_list_init(i32 noundef %.zext, ptr noundef %i.ax, i16 noundef signext %i.z) #6
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !37
  %.pre = load i32, ptr %i.o, align 16, !tbaa !33 ; 2 uses
  %.pre220 = and i32 %.pre, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader183
  %.pre-phi = phi i32 [ %.pre220, %bb.e ], [ %i.al, %.preheader183 ]
  %i.ba = phi i32 [ %.pre, %bb.e ], [ %spec.select, %.preheader183 ]
  %.not169 = icmp eq i32 %.pre-phi, 0
  br i1 %.not169, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = load i32, ptr %i.ab, align 8, !tbaa !36
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !34
  %i.be = load i16, ptr %2, align 16, !tbaa !30
  %i.bf = sext i16 %i.be to i32
  %i.bg = load i16, ptr %i.h, align 2, !tbaa !31
  %i.bh = sext i16 %i.bg to i32
  %i.bi = shl nsw i32 %i.bh, 16
  %i.bj = or i32 %i.bi, %i.bf
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bl = call i32 @core_init_matrix(i32 noundef %i.bb, ptr noundef %i.bd, i32 noundef %i.bj, ptr noundef nonnull %i.bk) #6 ; 0 uses
  %.pre215 = load i32, ptr %i.o, align 16, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bm = phi i32 [ %.pre215, %bb.g ], [ %i.ba, %bb.f ]
  %i.bn = and i32 %i.bm, 4
  %.not170 = icmp eq i32 %i.bn, 0
  br i1 %.not170, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = load i32, ptr %i.ab, align 8, !tbaa !36
  %i.bp = load i16, ptr %2, align 16, !tbaa !30
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.br = load ptr, ptr %i.bq, align 16, !tbaa !34
  call void @core_init_state(i32 noundef %i.bo, i16 noundef signext %i.bp, ptr noundef %i.br) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bs = load i32, ptr %i.m, align 4, !tbaa !17
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.m, align 4, !tbaa !17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.l
  %i.bu = load i32, ptr %i.m, align 4, !tbaa !17
  %i.bv = mul i32 %i.bu, 10
  store i32 %i.bv, ptr %i.m, align 4, !tbaa !17
  call void @start_time() #6
  %i.bw = call ptr @iterate(ptr noundef nonnull %2) ; 0 uses
  call void @stop_time() #6
  %i.bx = call i64 @get_time() #6
  %i.by = call double @time_in_secs(i64 noundef %i.bx) #6 ; 2 uses
  %i.bz = fcmp olt double %i.by, 1.000000e+00
  br i1 %i.bz, label %bb.l, label %bb.m, !llvm.loop !23

bb.m:                                             ; preds = %bb.l
  %i.ca = fptoui double %i.by to i32
  %spec.store.select = call i32 @llvm.umax.i32(i32 %i.ca, i32 1)
  %i.cb = udiv i32 10, %spec.store.select
  %i.cc = add nuw nsw i32 %i.cb, 1
  %i.cd = load i32, ptr %i.m, align 4, !tbaa !17
  %i.ce = mul i32 %i.cd, %i.cc
  store i32 %i.ce, ptr %i.m, align 4, !tbaa !17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  call void @start_time() #6
  %i.cf = call ptr @iterate(ptr noundef nonnull %2) ; 0 uses
  call void @stop_time() #6
  %i.cg = call i64 @get_time() #6                 ; 6 uses
  %i.ch = load i16, ptr %2, align 16, !tbaa !30
  %i.ci = call zeroext i16 @crc16(i16 noundef signext %i.ch, i16 noundef zeroext 0) #6
  %i.cj = load i16, ptr %i.h, align 2, !tbaa !31
  %i.ck = call zeroext i16 @crc16(i16 noundef signext %i.cj, i16 noundef zeroext %i.ci) #6
  %i.cl = load i16, ptr %i.k, align 4, !tbaa !32
  %i.cm = call zeroext i16 @crc16(i16 noundef signext %i.cl, i16 noundef zeroext %i.ck) #6
  %i.cn = load i32, ptr %i.ab, align 8, !tbaa !36
  %i.co = trunc i32 %i.cn to i16
  %i.cp = call zeroext i16 @crc16(i16 noundef signext %i.co, i16 noundef zeroext %i.cm) #6 ; 2 uses
  %i.cq = zext i16 %i.cp to i32
  switch i16 %i.cp, label %.thread [
    i16 -30206, label %bb.s
    i16 31493, label %bb.o
    i16 20143, label %bb.p
    i16 -5643, label %bb.q
    i16 6386, label %bb.r
  ]

bb.o:                                             ; preds = %bb.n
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  br label %bb.s

bb.q:                                             ; preds = %bb.n
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.r, %bb.q, %bb.p, %bb.o
  %str.sink = phi ptr [ @str, %bb.r ], [ @str.1, %bb.q ], [ @str.2, %bb.p ], [ @str.3, %bb.o ], [ @str.4, %bb.n ]
  %i.cr = phi i1 [ false, %bb.r ], [ true, %bb.q ], [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.n ] ; 2 uses
  %.0129 = phi i64 [ 4, %bb.r ], [ 3, %bb.q ], [ 2, %bb.p ], [ 1, %bb.o ], [ 0, %bb.n ] ; 3 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %str.sink) ; 0 uses
  %i.cs = load i32, ptr @default_num_contexts, align 4, !tbaa !29
  %.not210 = icmp eq i32 %i.cs, 0
  br i1 %.not210, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr @list_known_crc, i64 %.0129
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr @matrix_known_crc, i64 %.0129
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr @state_known_crc, i64 %.0129
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.ac
  %3 = phi i32 [ 0, %.lr.ph ], [ %6, %bb.ac ]     ; 3 uses
  %.1195 = phi i16 [ 0, %.lr.ph ], [ %i.eg, %bb.ac ]
  %.5194 = phi i16 [ 0, %.lr.ph ], [ %5, %bb.ac ] ; 2 uses
  %4 = zext i16 %.5194 to i64
  %i.cw = getelementptr inbounds nuw [112 x i8], ptr %2, i64 %4 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 104 ; 7 uses
  store i16 0, ptr %i.cx, align 8, !tbaa !35
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 48 ; 3 uses
  %i.cz = load i32, ptr %i.cy, align 16, !tbaa !33 ; 3 uses
  %i.da = and i32 %i.cz, 1
  %.not162 = icmp eq i32 %i.da, 0
  br i1 %.not162, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 98
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !19 ; 2 uses
  %i.dd = load i16, ptr %i.ct, align 2, !tbaa !38 ; 2 uses
  %.not163 = icmp eq i16 %i.dc, %i.dd
  br i1 %.not163, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.de = zext i16 %i.dd to i32
  %i.df = zext i16 %i.dc to i32
  %i.dg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %3, i32 noundef %i.df, i32 noundef %i.de) ; 0 uses
  %i.dh = load i16, ptr %i.cx, align 8, !tbaa !35
  %i.di = add i16 %i.dh, 1                        ; 2 uses
  store i16 %i.di, ptr %i.cx, align 8, !tbaa !35
  %.pre216 = load i32, ptr %i.cy, align 16, !tbaa !33
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.dj = phi i16 [ %i.di, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %i.dk = phi i32 [ %.pre216, %bb.v ], [ %i.cz, %bb.u ], [ %i.cz, %bb.t ] ; 3 uses
  %i.dl = and i32 %i.dk, 2
  %.not164 = icmp eq i32 %i.dl, 0
  br i1 %.not164, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cw, i64 100
  %i.dn = load i16, ptr %i.dm, align 4, !tbaa !39 ; 2 uses
  %i.do = load i16, ptr %i.cu, align 2, !tbaa !38 ; 2 uses
  %.not165 = icmp eq i16 %i.dn, %i.do
  br i1 %.not165, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = zext i16 %i.do to i32
  %i.dq = zext i16 %i.dn to i32
  %i.dr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %3, i32 noundef %i.dq, i32 noundef %i.dp) ; 0 uses
  %i.ds = load i16, ptr %i.cx, align 8, !tbaa !35
  %i.dt = add i16 %i.ds, 1                        ; 2 uses
  store i16 %i.dt, ptr %i.cx, align 8, !tbaa !35
  %.pre217 = load i32, ptr %i.cy, align 16, !tbaa !33
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.du = phi i16 [ %i.dt, %bb.y ], [ %i.dj, %bb.x ], [ %i.dj, %bb.w ] ; 2 uses
  %i.dv = phi i32 [ %.pre217, %bb.y ], [ %i.dk, %bb.x ], [ %i.dk, %bb.w ]
  %i.dw = and i32 %i.dv, 4
  %.not166 = icmp eq i32 %i.dw, 0
  br i1 %.not166, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cw, i64 102
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !40 ; 2 uses
  %i.dz = load i16, ptr %i.cv, align 2, !tbaa !38 ; 2 uses
  %.not167 = icmp eq i16 %i.dy, %i.dz
  br i1 %.not167, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ea = zext i16 %i.dz to i32
  %i.eb = zext i16 %i.dy to i32
  %i.ec = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %3, i32 noundef %i.eb, i32 noundef %i.ea) ; 0 uses
  %i.ed = load i16, ptr %i.cx, align 8, !tbaa !35
  %i.ee = add i16 %i.ed, 1                        ; 2 uses
  store i16 %i.ee, ptr %i.cx, align 8, !tbaa !35
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.ef = phi i16 [ %i.ee, %bb.ab ], [ %i.du, %bb.aa ], [ %i.du, %bb.z ]
  %i.eg = add i16 %i.ef, %.1195                   ; 2 uses
  %5 = add i16 %.5194, 1                          ; 2 uses
  %6 = zext i16 %5 to i32                         ; 2 uses
  %i.eh = load i32, ptr @default_num_contexts, align 4, !tbaa !29
  %i.ei = icmp ugt i32 %i.eh, %6
  br i1 %i.ei, label %bb.t, label %.thread, !llvm.loop !24

.thread:                                          ; preds = %bb.ac, %bb.s, %bb.n
  %i.ej = phi i1 [ false, %bb.n ], [ %i.cr, %bb.s ], [ %i.cr, %bb.ac ]
  %.2 = phi i16 [ -1, %bb.n ], [ 0, %bb.s ], [ %i.eg, %bb.ac ]
  %i.ek = call zeroext i8 @check_data_types() #6
  %i.el = zext i8 %i.ek to i16
  %i.em = add i16 %.2, %i.el                      ; 2 uses
  %i.en = load i32, ptr %i.ab, align 8, !tbaa !36
  %i.eo = zext i32 %i.en to i64
  %i.ep = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i64 noundef %i.eo) ; 0 uses
  %i.eq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i64 noundef %i.cg) ; 0 uses
  %i.er = call double @time_in_secs(i64 noundef %i.cg) #6
  %i.es = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %i.er) ; 0 uses
  %i.et = call double @time_in_secs(i64 noundef %i.cg) #6
  %i.eu = fcmp ogt double %i.et, 0.000000e+00
  br i1 %i.eu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.thread
  %i.ev = load i32, ptr @default_num_contexts, align 4, !tbaa !29
  %i.ew = load i32, ptr %i.m, align 4, !tbaa !17
  %i.ex = mul i32 %i.ew, %i.ev
  %i.ey = uitofp i32 %i.ex to double
  %i.ez = call double @time_in_secs(i64 noundef %i.cg) #6
  %i.fa = fdiv double %i.ey, %i.ez
  %i.fb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %i.fa) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.thread
  %i.fc = call double @time_in_secs(i64 noundef %i.cg) #6
  %i.fd = fcmp olt double %i.fc, 1.000000e+01
  br i1 %i.fd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %puts156 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %i.fe = add i16 %i.em, 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.3 = phi i16 [ %i.fe, %bb.af ], [ %i.em, %bb.ae ] ; 2 uses
  %i.ff = load i32, ptr @default_num_contexts, align 4, !tbaa !29
  %i.fg = zext i32 %i.ff to i64
  %i.fh = load i32, ptr %i.m, align 4, !tbaa !17
  %i.fi = zext i32 %i.fh to i64
  %i.fj = mul nuw i64 %i.fi, %i.fg
  %i.fk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i64 noundef %i.fj) ; 0 uses
  %i.fl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull @.str.18) ; 0 uses
  %i.fm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, ptr noundef nonnull @.str.20) ; 0 uses
  %i.fn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef nonnull @.str.22) ; 0 uses
  %i.fo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.cq) ; 0 uses
  %i.fp = load i32, ptr %i.o, align 16, !tbaa !33 ; 2 uses
  %.not = trunc i32 %i.fp to i1
  %i.fq = load i32, ptr @default_num_contexts, align 4 ; 2 uses
  %i.fr = icmp ne i32 %i.fq, 0
  %or.cond205 = select i1 %.not, i1 %i.fr, i1 false
  br i1 %or.cond205, label %.lr.ph197, label %.loopexit182

.lr.ph197:                                        ; preds = %bb.ag, %.lr.ph197
  %7 = phi i32 [ %10, %.lr.ph197 ], [ 0, %bb.ag ]
  %.6196 = phi i16 [ %9, %.lr.ph197 ], [ 0, %bb.ag ] ; 2 uses
  %8 = zext i16 %.6196 to i64
  %i.fs = getelementptr inbounds nuw [112 x i8], ptr %2, i64 %8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 98
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !19
  %i.fv = zext i16 %i.fu to i32
  %i.fw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %7, i32 noundef %i.fv) ; 0 uses
  %9 = add i16 %.6196, 1                          ; 2 uses
  %10 = zext i16 %9 to i32                        ; 2 uses
  %i.fx = load i32, ptr @default_num_contexts, align 4, !tbaa !29 ; 2 uses
  %i.fy = icmp ugt i32 %i.fx, %10
  br i1 %i.fy, label %.lr.ph197, label %.loopexit182.loopexit, !llvm.loop !25

.loopexit182.loopexit:                            ; preds = %.lr.ph197
  %.pre218 = load i32, ptr %i.o, align 16, !tbaa !33
  br label %.loopexit182

.loopexit182:                                     ; preds = %.loopexit182.loopexit, %bb.ag
  %i.fz = phi i32 [ %i.fx, %.loopexit182.loopexit ], [ %i.fq, %bb.ag ] ; 2 uses
  %i.ga = phi i32 [ %.pre218, %.loopexit182.loopexit ], [ %i.fp, %bb.ag ] ; 2 uses
  %i.gb = and i32 %i.ga, 2
  %.not157 = icmp ne i32 %i.gb, 0
  %i.gc = icmp ne i32 %i.fz, 0
  %or.cond207 = select i1 %.not157, i1 %i.gc, i1 false
  br i1 %or.cond207, label %.lr.ph199, label %.loopexit180

.lr.ph199:                                        ; preds = %.loopexit182, %.lr.ph199
  %11 = phi i32 [ %14, %.lr.ph199 ], [ 0, %.loopexit182 ]
  %.7198 = phi i16 [ %13, %.lr.ph199 ], [ 0, %.loopexit182 ] ; 2 uses
  %12 = zext i16 %.7198 to i64
  %i.gd = getelementptr inbounds nuw [112 x i8], ptr %2, i64 %12
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 100
  %i.gf = load i16, ptr %i.ge, align 4, !tbaa !39
  %i.gg = zext i16 %i.gf to i32
  %i.gh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %11, i32 noundef %i.gg) ; 0 uses
  %13 = add i16 %.7198, 1                         ; 2 uses
  %14 = zext i16 %13 to i32                       ; 2 uses
  %i.gi = load i32, ptr @default_num_contexts, align 4, !tbaa !29 ; 2 uses
  %i.gj = icmp ugt i32 %i.gi, %14
  br i1 %i.gj, label %.lr.ph199, label %.loopexit180.loopexit, !llvm.loop !26

.loopexit180.loopexit:                            ; preds = %.lr.ph199
  %.pre219 = load i32, ptr %i.o, align 16, !tbaa !33
  br label %.loopexit180

.loopexit180:                                     ; preds = %.loopexit180.loopexit, %.loopexit182
  %i.gk = phi i32 [ %i.gi, %.loopexit180.loopexit ], [ %i.fz, %.loopexit182 ] ; 2 uses
  %i.gl = phi i32 [ %.pre219, %.loopexit180.loopexit ], [ %i.ga, %.loopexit182 ]
  %i.gm = and i32 %i.gl, 4
  %.not158 = icmp ne i32 %i.gm, 0
  %i.gn = icmp ne i32 %i.gk, 0
  %or.cond209 = select i1 %.not158, i1 %i.gn, i1 false
  br i1 %or.cond209, label %.lr.ph201, label %.loopexit

.lr.ph201:                                        ; preds = %.loopexit180, %.lr.ph201
  %15 = phi i32 [ %18, %.lr.ph201 ], [ 0, %.loopexit180 ]
  %.8200 = phi i16 [ %17, %.lr.ph201 ], [ 0, %.loopexit180 ] ; 2 uses
  %16 = zext i16 %.8200 to i64
  %i.go = getelementptr inbounds nuw [112 x i8], ptr %2, i64 %16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 102
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !40
  %i.gr = zext i16 %i.gq to i32
  %i.gs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %15, i32 noundef %i.gr) ; 0 uses
  %17 = add i16 %.8200, 1                         ; 2 uses
  %18 = zext i16 %17 to i32                       ; 2 uses
  %i.gt = load i32, ptr @default_num_contexts, align 4, !tbaa !29 ; 2 uses
  %i.gu = icmp ugt i32 %i.gt, %18
  br i1 %i.gu, label %.lr.ph201, label %.loopexit, !llvm.loop !27

.loopexit:                                        ; preds = %.lr.ph201, %.loopexit180
  %i.gv = phi i32 [ %i.gk, %.loopexit180 ], [ %i.gt, %.lr.ph201 ]
  %.not211 = icmp eq i32 %i.gv, 0
  br i1 %.not211, label %._crit_edge, label %.lr.ph203

.lr.ph203:                                        ; preds = %.loopexit, %.lr.ph203
  %19 = phi i32 [ %22, %.lr.ph203 ], [ 0, %.loopexit ]
  %.9202 = phi i16 [ %21, %.lr.ph203 ], [ 0, %.loopexit ] ; 2 uses
  %20 = zext i16 %.9202 to i64
  %i.gw = getelementptr inbounds nuw [112 x i8], ptr %2, i64 %20
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 96
  %i.gy = load i16, ptr %i.gx, align 16, !tbaa !18
  %i.gz = zext i16 %i.gy to i32
  %i.ha = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %19, i32 noundef %i.gz) ; 0 uses
  %21 = add i16 %.9202, 1                         ; 2 uses
  %22 = zext i16 %21 to i32                       ; 2 uses
  %i.hb = load i32, ptr @default_num_contexts, align 4, !tbaa !29
  %i.hc = icmp ugt i32 %i.hb, %22
  br i1 %i.hc, label %.lr.ph203, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph203, %.loopexit
  %i.hd = icmp eq i16 %.3, 0
  br i1 %i.hd, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %._crit_edge
  %puts159 = call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  br i1 %i.ej, label %bb.ai, label %.thread178

bb.ai:                                            ; preds = %bb.ah
  %i.he = load i32, ptr @default_num_contexts, align 4, !tbaa !29
  %i.hf = load i32, ptr %i.m, align 4, !tbaa !17
  %i.hg = mul i32 %i.hf, %i.he
  %i.hh = uitofp i32 %i.hg to double
  %i.hi = call double @time_in_secs(i64 noundef %i.cg) #6
  %i.hj = fdiv double %i.hh, %i.hi
  %i.hk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, double noundef %i.hj, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.20) ; 0 uses
  %i.hl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull @.str.22) ; 0 uses
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %.thread178

bb.aj:                                            ; preds = %._crit_edge
  %i.hm = icmp sgt i16 %.3, 0
  br i1 %i.hm, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %puts160 = call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  br label %.thread178

bb.al:                                            ; preds = %bb.aj
  %puts161 = call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  br label %.thread178

.thread178:                                       ; preds = %bb.ai, %bb.ah, %bb.ak, %bb.al
  call void @portable_fini(ptr noundef nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i32 0
}

declare void @portable_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @get_seed_32(i32 noundef) local_unnamed_addr #2

declare ptr @core_list_init(i32 noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare i32 @core_init_matrix(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @core_init_state(i32 noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @start_time() local_unnamed_addr #2

declare void @stop_time() local_unnamed_addr #2

declare double @time_in_secs(i64 noundef) local_unnamed_addr #2

declare i64 @get_time() local_unnamed_addr #2

declare zeroext i16 @crc16(i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare zeroext i8 @check_data_types() local_unnamed_addr #2

declare void @portable_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"short", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS11list_head_s", !10, i64 0}
!12 = !{!"p1 short", !10, i64 0}
!13 = !{!"p1 int", !10, i64 0}
!14 = !{!"MAT_PARAMS_S", !6, i64 0, !12, i64 8, !12, i64 16, !13, i64 24}
!15 = !{!"CORE_PORTABLE_S", !5, i64 0}
!16 = !{!"RESULTS_S", !9, i64 0, !9, i64 2, !9, i64 4, !5, i64 8, !6, i64 40, !6, i64 44, !6, i64 48, !11, i64 56, !14, i64 64, !9, i64 96, !9, i64 98, !9, i64 100, !9, i64 102, !9, i64 104, !15, i64 106}
!17 = !{!16, !6, i64 44}
!18 = !{!16, !9, i64 96}
!19 = !{!16, !9, i64 98}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20, !22}
!22 = !{!"llvm.loop.peeled.count", i32 1}
!23 = distinct !{!23, !20}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !20}
!26 = distinct !{!26, !20}
!27 = distinct !{!27, !20}
!28 = distinct !{!28, !20}
!29 = !{!6, !6, i64 0}
!30 = !{!16, !9, i64 0}
!31 = !{!16, !9, i64 2}
!32 = !{!16, !9, i64 4}
!33 = !{!16, !6, i64 48}
!34 = !{!10, !10, i64 0}
!35 = !{!16, !9, i64 104}
!36 = !{!16, !6, i64 40}
!37 = !{!16, !11, i64 56}
!38 = !{!9, !9, i64 0}
!39 = !{!16, !9, i64 100}
!40 = !{!16, !9, i64 102}
end_hunk_0
