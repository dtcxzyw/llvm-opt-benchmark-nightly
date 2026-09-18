Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/cff?download=true
inline.NumInlined: 81
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@cff_charset_load:bb.a

thread-pre-split:                                 ; preds = %.lr.ph118, %bb.i, %bb.j, %bb.c, %bb.f, %bb.d, %bb.l, %bb.b, %bb.w, %.loopexit112
  %.pr = load i32, ptr %i.b, align 4, !tbaa !67
  br label %bb.z

bb.z:                                             ; preds = %thread-pre-split, %cff_charset_compute_cids.exit
  %i.do = phi i32 [ %.pr, %thread-pre-split ], [ %i.dn, %cff_charset_compute_cids.exit ]
  %.not102 = icmp eq i32 %i.do, 0
  br i1 %.not102, label %bb.aa, label %.thread110

.thread110.sink.split:                            ; preds = %bb.t, %bb.q, %bb.n
  store i32 3, ptr %i.b, align 4, !tbaa !67
  br label %.thread110

.thread110:                                       ; preds = %.thread110.sink.split, %bb.o, %bb.r, %bb.u, %bb.z
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !71
  call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.dq) #18
  store ptr null, ptr %i.dp, align 8, !tbaa !71
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !146
  call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.ds) #18
  store ptr null, ptr %i.dr, align 8, !tbaa !146
  store i32 0, ptr %0, align 8, !tbaa !148
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.dt, align 8, !tbaa !620
  %.pre = load i32, ptr %i.b, align 4, !tbaa !67
  br label %bb.aa

bb.aa:                                            ; preds = %.thread110, %bb.z
  %i.du = phi i32 [ %.pre, %.thread110 ], [ 0, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %i.du
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cff_encoding_load(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit151, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %5, 1
  br i1 %i.e, label %bb.c, label %bb.ad

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 7 uses
  %i.h = add i64 %5, %4                           ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.f, i8 0, i64 1024, i1 false)
  store i64 %i.h, ptr %i.i, align 8, !tbaa !136
  %i.j = tail call i32 @FT_Stream_Seek(ptr noundef %3, i64 noundef %i.h) #18 ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %.not130 = icmp eq i32 %i.j, 0
  br i1 %.not130, label %bb.d, label %.loopexit151

bb.d:                                             ; preds = %bb.c
  %i.k = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18
  %i.l = zext i8 %i.k to i32
  store i32 %i.l, ptr %0, align 8, !tbaa !144
  %i.m = load i32, ptr %i.b, align 4, !tbaa !67   ; 2 uses
  %.not131 = icmp eq i32 %i.m, 0
  br i1 %.not131, label %bb.e, label %.loopexit151

bb.e:                                             ; preds = %bb.d
  %i.n = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18 ; 7 uses
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %i.p = load i32, ptr %i.b, align 4, !tbaa !67   ; 2 uses
  %.not132 = icmp eq i32 %i.p, 0
  br i1 %.not132, label %bb.f, label %.loopexit151

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %0, align 8, !tbaa !144
  %i.r = and i32 %i.q, 127
  switch i32 %i.r, label %.loopexit151 [
    i32 0, label %bb.g
    i32 1, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = add nuw nsw i32 %i.o, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.s, ptr %i.t, align 8, !tbaa !135
  %i.u = zext i8 %i.n to i64
  %i.v = call i32 @FT_Stream_EnterFrame(ptr noundef %3, i64 noundef %i.u) #18 ; 3 uses
  store i32 %i.v, ptr %i.b, align 4, !tbaa !67
  %.not136 = icmp eq i32 %i.v, 0
  br i1 %.not136, label %bb.h, label %.loopexit151

bb.h:                                             ; preds = %bb.g
  %.not137164 = icmp eq i8 %i.n, 0
  br i1 %.not137164, label %.thread, label %.lr.ph168.preheader

.lr.ph168.preheader:                              ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !254  ; 2 uses
  %i.y = zext i32 %2 to i64                       ; 3 uses
  %i.z = zext i8 %i.n to i64                      ; 2 uses
  %xtraiter244 = and i64 %i.z, 1
  %i.aa = icmp eq i8 %i.n, 1
  br i1 %i.aa, label %.lr.ph168.epil.preheader, label %.lr.ph168.preheader.new

.lr.ph168.preheader.new:                          ; preds = %.lr.ph168.preheader
  %unroll_iter = and i64 %i.z, 254
  br label %.lr.ph168

.lr.ph168:                                        ; preds = %bb.k, %.lr.ph168.preheader.new
  %indvars.iv188 = phi i64 [ 1, %.lr.ph168.preheader.new ], [ %indvars.iv.next189.1, %bb.k ] ; 5 uses
  %.0116166 = phi ptr [ %i.x, %.lr.ph168.preheader.new ], [ %i.al, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph168.preheader.new ], [ %niter.next.1, %bb.k ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0116166, i64 1
  %i.ac = icmp samesign ult i64 %indvars.iv188, %i.y
  br i1 %i.ac, label %bb.i, label %.lr.ph168.1

bb.i:                                             ; preds = %.lr.ph168
  %i.ad = load i8, ptr %.0116166, align 1, !tbaa !130
  %i.ae = trunc i64 %indvars.iv188 to i16
  %i.af = zext i8 %i.ad to i64                    ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.af
  store i16 %i.ae, ptr %i.ag, align 2, !tbaa !66
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %indvars.iv188
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !66
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.af
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !66
  br label %.lr.ph168.1

.lr.ph168.1:                                      ; preds = %.lr.ph168, %bb.i
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0116166, i64 2 ; 2 uses
  %i.am = icmp samesign ult i64 %indvars.iv.next189, %i.y
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph168.1
  %i.an = load i8, ptr %i.ab, align 1, !tbaa !130
  %i.ao = trunc i64 %indvars.iv.next189 to i16
  %i.ap = zext i8 %i.an to i64                    ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ap
  store i16 %i.ao, ptr %i.aq, align 2, !tbaa !66
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next189
  %i.at = load i16, ptr %i.as, align 2, !tbaa !66
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ap
  store i16 %i.at, ptr %i.au, align 2, !tbaa !66
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph168.1
  %indvars.iv.next189.1 = add nuw nsw i64 %indvars.iv188, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread.loopexit.unr-lcssa, label %.lr.ph168, !llvm.loop !621

.thread.loopexit.unr-lcssa:                       ; preds = %bb.k
  %lcmp.mod245.not = icmp eq i64 %xtraiter244, 0
  br i1 %lcmp.mod245.not, label %.thread, label %.lr.ph168.epil.preheader

.lr.ph168.epil.preheader:                         ; preds = %.thread.loopexit.unr-lcssa, %.lr.ph168.preheader
  %indvars.iv188.epil.init = phi i64 [ 1, %.lr.ph168.preheader ], [ %indvars.iv.next189.1, %.thread.loopexit.unr-lcssa ] ; 3 uses
  %.0116166.epil.init = phi ptr [ %i.x, %.lr.ph168.preheader ], [ %i.al, %.thread.loopexit.unr-lcssa ]
  %lcmp.mod246 = trunc i8 %i.n to i1
  call void @llvm.assume(i1 %lcmp.mod246)
  %i.av = icmp samesign ult i64 %indvars.iv188.epil.init, %i.y
  br i1 %i.av, label %bb.l, label %.thread

bb.l:                                             ; preds = %.lr.ph168.epil.preheader
  %i.aw = load i8, ptr %.0116166.epil.init, align 1, !tbaa !130
  %i.ax = trunc i64 %indvars.iv188.epil.init to i16
  %i.ay = zext i8 %i.aw to i64                    ; 2 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ay
  store i16 %i.ax, ptr %i.az, align 2, !tbaa !66
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv188.epil.init
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !66
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ay
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !66
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit.unr-lcssa, %bb.l, %.lr.ph168.epil.preheader, %bb.h
  call void @FT_Stream_ExitFrame(ptr noundef %3) #18
  br label %.thread146

bb.m:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 0, ptr %i.be, align 8, !tbaa !135
  %.not177 = icmp eq i8 %i.n, 0
  br i1 %.not177, label %.thread146, label %.lr.ph162.preheader

.lr.ph162.preheader:                              ; preds = %bb.m
  %i.bf = zext i32 %2 to i64                      ; 2 uses
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph162.preheader, %._crit_edge
  %.0114160 = phi i32 [ %i.bo, %._crit_edge ], [ 1, %.lr.ph162.preheader ] ; 5 uses
  %.1119159 = phi i32 [ %i.cq, %._crit_edge ], [ 0, %.lr.ph162.preheader ]
  %i.bg = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18
  %i.bh = load i32, ptr %i.b, align 4, !tbaa !67  ; 2 uses
  %.not133 = icmp eq i32 %i.bh, 0
  br i1 %.not133, label %bb.n, label %.loopexit151

bb.n:                                             ; preds = %.lr.ph162
  %i.bi = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18
  %i.bj = load i32, ptr %i.b, align 4, !tbaa !67  ; 2 uses
  %.not134 = icmp eq i32 %i.bj, 0
  br i1 %.not134, label %bb.o, label %.loopexit151

bb.o:                                             ; preds = %bb.n
  %i.bk = zext i8 %i.bi to i32                    ; 2 uses
  %i.bl = add nuw nsw i32 %i.bk, 1                ; 3 uses
  %i.bm = load i32, ptr %i.be, align 8, !tbaa !135 ; 2 uses
  %.not135 = icmp ugt i32 %i.bm, %i.bk
  br i1 %.not135, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.bl, ptr %i.be, align 8, !tbaa !135
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bn = phi i32 [ %i.bl, %bb.p ], [ %i.bm, %bb.o ]
  %i.bo = add i32 %i.bl, %.0114160                ; 3 uses
  %i.bp = icmp ult i32 %.0114160, %i.bo
  br i1 %i.bp, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = zext i32 %.0114160 to i64               ; 5 uses
  %6 = zext i8 %i.bg to i64                       ; 4 uses
  %wide.trip.count = zext i32 %i.bo to i64        ; 3 uses
  %i.br = sub nsw i64 %wide.trip.count, %i.bq
  %xtraiter = and i64 %i.br, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.bs = icmp ult i32 %.0114160, %2
  br i1 %i.bs, label %bb.r, label %.lr.ph.prol.loopexit.unr-lcssa

bb.r:                                             ; preds = %.lr.ph.prol
  %i.bt = trunc i32 %.0114160 to i16
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %6
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !66
  %i.bv = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.bq
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !66
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %6
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !66
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.r, %.lr.ph.prol
  %indvars.iv.next184.prol = add nuw nsw i64 %i.bq, 1
  %indvars.iv.next186.prol = add nuw nsw i64 %6, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv183.unr.a = phi i64 [ %6, %.lr.ph.preheader ], [ %indvars.iv.next186.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %indvars.iv183.unr = phi i64 [ %i.bq, %.lr.ph.preheader ], [ %indvars.iv.next184.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.bz = add nsw i64 %wide.trip.count, -1
  %i.ca = icmp eq i64 %i.bz, %i.bq
  br i1 %i.ca, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.u
  %indvars.iv183.a = phi i64 [ %indvars.iv.next186.1, %bb.u ], [ %indvars.iv183.unr.a, %.lr.ph.prol.loopexit ] ; 6 uses
  %indvars.iv183 = phi i64 [ %indvars.iv.next184.1, %bb.u ], [ %indvars.iv183.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.cb = icmp samesign ult i64 %indvars.iv183, %i.bf
  %i.cc = icmp samesign ult i64 %indvars.iv183.a, 256
  %or.cond = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %or.cond, label %bb.s, label %.lr.ph.1

bb.s:                                             ; preds = %.lr.ph
  %i.cd = trunc i64 %indvars.iv183 to i16
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv183.a
  store i16 %i.cd, ptr %i.ce, align 2, !tbaa !66
  %i.cf = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %indvars.iv183
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !66
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv183.a
  store i16 %i.ch, ptr %i.ci, align 2, !tbaa !66
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.s
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 3 uses
  %i.cj = icmp samesign ult i64 %indvars.iv.next184, %i.bf
  %i.ck = icmp ult i64 %indvars.iv183.a, 255
  %or.cond.1 = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %or.cond.1, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.1
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv183.a, 1 ; 2 uses
  %7 = trunc i64 %indvars.iv.next184 to i16
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next186
  store i16 %7, ptr %i.cl, align 2, !tbaa !66
  %i.cm = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv.next184
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !66
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next186
  store i16 %i.co, ptr %i.cp, align 2, !tbaa !66
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.1
  %indvars.iv.next184.1 = add nuw nsw i64 %indvars.iv183, 2 ; 2 uses
  %indvars.iv.next186.1 = add nuw nsw i64 %indvars.iv183.a, 2
  %exitcond186.not.1 = icmp eq i64 %indvars.iv.next184.1, %wide.trip.count
  br i1 %exitcond186.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !622

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.u, %bb.q
  %i.cq = add nuw nsw i32 %.1119159, 1            ; 2 uses
  %exitcond187.not = icmp eq i32 %i.cq, %i.o
  br i1 %exitcond187.not, label %._crit_edge163, label %.lr.ph162, !llvm.loop !623

._crit_edge163:                                   ; preds = %._crit_edge
  %i.cr = icmp ugt i32 %i.bn, 256
  br i1 %i.cr, label %bb.v, label %.thread146

bb.v:                                             ; preds = %._crit_edge163
  store i32 256, ptr %i.be, align 8, !tbaa !135
  br label %.thread146

.thread146:                                       ; preds = %bb.m, %._crit_edge163, %bb.v, %.thread
  %i.cs = load i32, ptr %0, align 8, !tbaa !144
  %i.ct = and i32 %i.cs, 128
  %.not138 = icmp eq i32 %i.ct, 0
  br i1 %.not138, label %.thread146..loopexit151_crit_edge, label %bb.w

.thread146..loopexit151_crit_edge:                ; preds = %.thread146
  %.pre = load i32, ptr %i.b, align 4, !tbaa !67
  br label %.loopexit151

bb.w:                                             ; preds = %.thread146
  %i.cu = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.cv = zext i8 %i.cu to i32
  %i.cw = load i32, ptr %i.b, align 4, !tbaa !67  ; 2 uses
  %.not139 = icmp eq i32 %i.cw, 0
  %i.cx = icmp ne i8 %i.cu, 0
  %or.cond176 = select i1 %.not139, i1 %i.cx, i1 false
  br i1 %or.cond176, label %.lr.ph173, label %.loopexit151

.lr.ph173:                                        ; preds = %bb.w
  %.not178 = icmp eq i32 %2, 0
  %wide.trip.count196 = zext i32 %2 to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph173, %.loopexit
  %.2120172 = phi i32 [ 0, %.lr.ph173 ], [ %i.dk, %.loopexit ]
  %i.cy = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18
  %i.cz = load i32, ptr %i.b, align 4, !tbaa !67  ; 2 uses
  %.not140 = icmp eq i32 %i.cz, 0
  br i1 %.not140, label %bb.y, label %.loopexit151

bb.y:                                             ; preds = %bb.x
  %i.da = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %3, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.db = load i32, ptr %i.b, align 4, !tbaa !67  ; 2 uses
  %.not141 = icmp eq i32 %i.db, 0
  br i1 %.not141, label %bb.z, label %.loopexit151

bb.z:                                             ; preds = %bb.y
  %i.dc = zext i8 %i.cy to i64                    ; 2 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.dc
  store i16 %i.da, ptr %i.dd, align 2, !tbaa !66
  br i1 %.not178, label %.loopexit, label %.lr.ph171

.lr.ph171:                                        ; preds = %bb.z
  %i.de = load ptr, ptr %i.c, align 8, !tbaa !71
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph171, %bb.ac
  %indvars.iv193 = phi i64 [ 0, %.lr.ph171 ], [ %indvars.iv.next194, %bb.ac ] ; 3 uses
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %indvars.iv193
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !66
  %i.dh = icmp eq i16 %i.dg, %i.da
  br i1 %i.dh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.di = trunc i64 %indvars.iv193 to i16
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.dc
  store i16 %i.di, ptr %i.dj, align 2, !tbaa !66
  br label %.loopexit

bb.ac:                                            ; preds = %bb.aa
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %exitcond197.not = icmp eq i64 %indvars.iv.next194, %wide.trip.count196
  br i1 %exitcond197.not, label %.loopexit, label %bb.aa, !llvm.loop !624

.loopexit:                                        ; preds = %bb.ac, %bb.z, %bb.ab
  %i.dk = add nuw nsw i32 %.2120172, 1            ; 2 uses
  %exitcond198.not = icmp eq i32 %i.dk, %i.cv
  br i1 %exitcond198.not, label %.loopexit151, label %bb.x, !llvm.loop !625

bb.ad:                                            ; preds = %bb.b
  %trunc = trunc nuw i64 %5 to i1
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  br i1 %trunc, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.dl, ptr noundef nonnull align 16 dereferenceable(512) @cff_standard_encoding, i64 512, i1 false)
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.dl, ptr noundef nonnull align 16 dereferenceable(512) @cff_expert_encoding, i64 512, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %i.dm, align 8, !tbaa !136
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.dn, align 8, !tbaa !135
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !67
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !147 ; 2 uses
  %.not.i = icmp eq i32 %i.dr, 0
  br i1 %.not.i, label %.preheader27.i, label %cff_charset_compute_cids.exit

.preheader27.i:                                   ; preds = %bb.ag
  %.not34.i = icmp eq i32 %2, 0                   ; 2 uses
  br i1 %.not34.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader27.i
  %i.ds = load ptr, ptr %i.c, align 8, !tbaa !71  ; 3 uses
  %wide.trip.count.i = zext i32 %2 to i64         ; 6 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check227 = icmp ult i32 %2, 16
  br i1 %min.iters.check227, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dt = and i64 %wide.trip.count.i, 12
  %n.vec = and i64 %wide.trip.count.i, 4294967280 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.dw, %vector.body ]
  %vec.phi228 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.dx, %vector.body ]
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %index ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %wide.load = load <8 x i16>, ptr %i.du, align 2, !tbaa !66
  %wide.load229 = load <8 x i16>, ptr %i.dv, align 2, !tbaa !66
  %i.dw = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load, <8 x i16> %vec.phi) ; 2 uses
  %i.dx = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load229, <8 x i16> %vec.phi228) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !626

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.dw, <8 x i16> %i.dx)
  %i.dz = tail call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dt, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !292

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.dz, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec230 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index231 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next234, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi232 = phi <4 x i16> [ %broadcast.splat, %vec.epilog.ph ], [ %i.eb, %vec.epilog.vector.body ]
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %index231
  %wide.load233 = load <4 x i16>, ptr %i.ea, align 2, !tbaa !66
  %i.eb = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.load233, <4 x i16> %vec.phi232) ; 2 uses
  %index.next234 = add nuw i64 %index231, 4       ; 2 uses
  %i.ec = icmp eq i64 %index.next234, %n.vec230
  br i1 %i.ec, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !627

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ed = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.eb) ; 2 uses
  %cmp.n235 = icmp eq i64 %n.vec230, %wide.trip.count.i
  br i1 %cmp.n235, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec230, %vec.epilog.middle.block ]
  %.029.i.ph = phi i16 [ 0, %iter.check ], [ %i.dz, %vec.epilog.iter.check ], [ %i.ed, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.029.i = phi i16 [ %spec.select.i, %vec.epilog.scalar.ph ], [ %.029.i.ph, %vec.epilog.scalar.ph.preheader ]
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %indvars.iv.i
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !66
  %spec.select.i = tail call i16 @llvm.umax.i16(i16 %i.ef, i16 %.029.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !628

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader27.i
  %.0.lcssa.i = phi i16 [ 0, %.preheader27.i ], [ %i.ed, %vec.epilog.middle.block ], [ %i.dz, %middle.block ], [ %spec.select.i, %vec.epilog.scalar.ph ] ; 2 uses
  %i.eg = zext i16 %.0.lcssa.i to i64
  %i.eh = add nuw nsw i64 %i.eg, 1
  %i.ei = call ptr @ft_mem_realloc(ptr noundef %i.dp, i64 noundef 2, i64 noundef 0, i64 noundef %i.eh, ptr noundef null, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_0
