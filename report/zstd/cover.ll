inline.NumInlined: 67
inline.NumDeleted: 20
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@COVER_ctx_init:bb.a
  %i.n = select i1 %i.j, i32 %i.m, i32 0          ; 2 uses
  %i.o = select i1 %i.j, i32 %i.m, i32 %3         ; 4 uses
  %i.p = sub i32 %3, %i.n                         ; 4 uses
  br i1 %i.j, label %bb.b, label %COVER_sum.exit114

bb.b:                                             ; preds = %COVER_sum.exit
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i108 = zext i32 %i.m to i64    ; 5 uses
  %min.iters.check179 = icmp ult i32 %i.m, 4
  br i1 %min.iters.check179, label %.lr.ph.i109.preheader, label %vector.ph180

vector.ph180:                                     ; preds = %.lr.ph.preheader.i
  %n.vec181 = and i64 %wide.trip.count.i108, 4294967292 ; 3 uses
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph180
  %index183 = phi i64 [ 0, %vector.ph180 ], [ %index.next188, %vector.body182 ] ; 2 uses
  %vec.phi184 = phi <2 x i64> [ zeroinitializer, %vector.ph180 ], [ %i.s, %vector.body182 ]
  %vec.phi185 = phi <2 x i64> [ zeroinitializer, %vector.ph180 ], [ %i.t, %vector.body182 ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index183 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load186 = load <2 x i64>, ptr %i.q, align 8, !tbaa !8
  %wide.load187 = load <2 x i64>, ptr %i.r, align 8, !tbaa !8
  %i.s = add <2 x i64> %wide.load186, %vec.phi184 ; 2 uses
  %i.t = add <2 x i64> %wide.load187, %vec.phi185 ; 2 uses
  %index.next188 = add nuw i64 %index183, 4       ; 2 uses
  %i.u = icmp eq i64 %index.next188, %n.vec181
  br i1 %i.u, label %middle.block189, label %vector.body182, !llvm.loop !41

middle.block189:                                  ; preds = %vector.body182
  %bin.rdx190 = add <2 x i64> %i.t, %i.s
  %i.v = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx190) ; 2 uses
  %cmp.n191 = icmp eq i64 %n.vec181, %wide.trip.count.i108
  br i1 %cmp.n191, label %.loopexit, label %.lr.ph.i109.preheader

.lr.ph.i109.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block189
  %indvars.iv.i110.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec181, %middle.block189 ]
  %.067.i111.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.v, %middle.block189 ]
  br label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %.lr.ph.i109.preheader, %.lr.ph.i109
  %indvars.iv.i110 = phi i64 [ %indvars.iv.next.i112, %.lr.ph.i109 ], [ %indvars.iv.i110.ph, %.lr.ph.i109.preheader ] ; 2 uses
  %.067.i111 = phi i64 [ %i.y, %.lr.ph.i109 ], [ %.067.i111.ph, %.lr.ph.i109.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i110
  %i.x = load i64, ptr %i.w, align 8, !tbaa !8
  %i.y = add i64 %i.x, %.067.i111                 ; 2 uses
  %indvars.iv.next.i112 = add nuw nsw i64 %indvars.iv.i110, 1 ; 2 uses
  %exitcond.not.i113 = icmp eq i64 %indvars.iv.next.i112, %wide.trip.count.i108
  br i1 %exitcond.not.i113, label %.loopexit, label %.lr.ph.i109, !llvm.loop !42

.loopexit:                                        ; preds = %.lr.ph.i109, %middle.block189, %bb.b
  %.pre-phi = phi i64 [ 0, %bb.b ], [ %wide.trip.count.i108, %middle.block189 ], [ %wide.trip.count.i108, %.lr.ph.i109 ]
  %.ph = phi i64 [ 0, %bb.b ], [ %i.v, %middle.block189 ], [ %i.y, %.lr.ph.i109 ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.pre-phi ; 2 uses
  %.not.i115 = icmp eq i32 %3, %i.m
  br i1 %.not.i115, label %COVER_sum.exit114, label %.lr.ph.preheader.i116

.lr.ph.preheader.i116:                            ; preds = %.loopexit
  %wide.trip.count.i117 = zext i32 %i.p to i64    ; 3 uses
  %min.iters.check195 = icmp ult i32 %i.p, 4
  br i1 %min.iters.check195, label %.lr.ph.i118.preheader, label %vector.ph196

vector.ph196:                                     ; preds = %.lr.ph.preheader.i116
  %n.vec197 = and i64 %wide.trip.count.i117, 4294967292 ; 3 uses
  br label %vector.body198

vector.body198:                                   ; preds = %vector.body198, %vector.ph196
  %index199 = phi i64 [ 0, %vector.ph196 ], [ %index.next204, %vector.body198 ] ; 2 uses
  %vec.phi200 = phi <2 x i64> [ zeroinitializer, %vector.ph196 ], [ %i.ac, %vector.body198 ]
  %vec.phi201 = phi <2 x i64> [ zeroinitializer, %vector.ph196 ], [ %i.ad, %vector.body198 ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index199 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load202 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !8
  %wide.load203 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !8
  %i.ac = add <2 x i64> %wide.load202, %vec.phi200 ; 2 uses
  %i.ad = add <2 x i64> %wide.load203, %vec.phi201 ; 2 uses
  %index.next204 = add nuw i64 %index199, 4       ; 2 uses
  %i.ae = icmp eq i64 %index.next204, %n.vec197
  br i1 %i.ae, label %middle.block205, label %vector.body198, !llvm.loop !43

middle.block205:                                  ; preds = %vector.body198
  %bin.rdx206 = add <2 x i64> %i.ad, %i.ac
  %i.af = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx206) ; 2 uses
  %cmp.n207 = icmp eq i64 %n.vec197, %wide.trip.count.i117
  br i1 %cmp.n207, label %COVER_sum.exit114, label %.lr.ph.i118.preheader

.lr.ph.i118.preheader:                            ; preds = %.lr.ph.preheader.i116, %middle.block205
  %indvars.iv.i119.ph = phi i64 [ 0, %.lr.ph.preheader.i116 ], [ %n.vec197, %middle.block205 ]
  %.067.i120.ph = phi i64 [ 0, %.lr.ph.preheader.i116 ], [ %i.af, %middle.block205 ]
  br label %.lr.ph.i118

.lr.ph.i118:                                      ; preds = %.lr.ph.i118.preheader, %.lr.ph.i118
  %indvars.iv.i119 = phi i64 [ %indvars.iv.next.i121, %.lr.ph.i118 ], [ %indvars.iv.i119.ph, %.lr.ph.i118.preheader ] ; 2 uses
  %.067.i120 = phi i64 [ %i.ai, %.lr.ph.i118 ], [ %.067.i120.ph, %.lr.ph.i118.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i119
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !8
  %i.ai = add i64 %i.ah, %.067.i120               ; 2 uses
  %indvars.iv.next.i121 = add nuw nsw i64 %indvars.iv.i119, 1 ; 2 uses
  %exitcond.not.i122 = icmp eq i64 %indvars.iv.next.i121, %wide.trip.count.i117
  br i1 %exitcond.not.i122, label %COVER_sum.exit114, label %.lr.ph.i118, !llvm.loop !44

COVER_sum.exit114:                                ; preds = %.lr.ph.i118, %middle.block205, %.loopexit, %COVER_sum.exit
  %i.aj = phi i64 [ %.lcssa163, %COVER_sum.exit ], [ %.ph, %.loopexit ], [ %.ph, %middle.block205 ], [ %.ph, %.lr.ph.i118 ] ; 2 uses
  %i.ak = phi i64 [ %.lcssa163, %COVER_sum.exit ], [ 0, %.loopexit ], [ %i.af, %middle.block205 ], [ %i.ai, %.lr.ph.i118 ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %6, ptr %i.al, align 4, !tbaa !45
  %i.am = tail call i32 @llvm.umax.i32(i32 %4, i32 8)
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = icmp ult i64 %.lcssa163, %i.an
  %i.ap = icmp ugt i64 %.lcssa163, 4294967294
  %or.cond = or i1 %i.ao, %i.ap
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %COVER_sum.exit114
  %i.aq = icmp sgt i32 %6, 0
  br i1 %i.aq, label %bb.d, label %COVER_ctx_destroy.exit

bb.d:                                             ; preds = %bb.c
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.as = lshr i64 %.lcssa163, 20
  %i.at = trunc i64 %i.as to i32
  %i.au = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ar, ptr noundef nonnull @.str.16, i32 noundef %i.at, i32 noundef 4095) #20 ; 0 uses
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.aw = tail call i32 @fflush(ptr noundef %i.av) ; 0 uses
  br label %COVER_ctx_destroy.exit

bb.e:                                             ; preds = %COVER_sum.exit114
  %i.ax = icmp ult i32 %i.o, 5
  br i1 %i.ax, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ay = icmp sgt i32 %6, 0
  br i1 %i.ay, label %bb.g, label %COVER_ctx_destroy.exit

bb.g:                                             ; preds = %bb.f
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ba = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.az, ptr noundef nonnull @.str.17, i32 noundef %i.o) #20 ; 0 uses
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bc = tail call i32 @fflush(ptr noundef %i.bb) ; 0 uses
  br label %COVER_ctx_destroy.exit

bb.h:                                             ; preds = %bb.e
  %i.bd = icmp eq i32 %3, %i.n
  br i1 %i.bd, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.be = icmp sgt i32 %6, 0
  br i1 %i.be, label %bb.j, label %COVER_ctx_destroy.exit

bb.j:                                             ; preds = %bb.i
  %i.bf = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bf, ptr noundef nonnull @.str.18, i32 noundef 0) #20 ; 0 uses
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bi = tail call i32 @fflush(ptr noundef %i.bh) ; 0 uses
  br label %COVER_ctx_destroy.exit

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false)
  %i.bj = icmp sgt i32 %6, 1                      ; 3 uses
  br i1 %i.bj, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bl = trunc i64 %i.aj to i32
  %i.bm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bk, ptr noundef nonnull @.str.19, i32 noundef %i.o, i32 noundef %i.bl) #20 ; 0 uses
  %i.bn = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bo = tail call i32 @fflush(ptr noundef %i.bn) ; 0 uses
  %i.bp = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bq = trunc i64 %i.ak to i32
  %i.br = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bp, ptr noundef nonnull @.str.20, i32 noundef %i.p, i32 noundef %i.bq) #20 ; 0 uses
  %i.bs = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bt = tail call i32 @fflush(ptr noundef %i.bs) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.l
  store ptr %1, ptr %0, align 8, !tbaa !46
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.bu, align 8, !tbaa !47
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i64 %wide.trip.count.i, ptr %i.bv, align 8, !tbaa !48
  %i.bw = zext i32 %i.o to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !49
  %i.by = zext i32 %i.p to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !50
  %i.ca = sub i64 %i.aj, %i.an
  %i.cb = add i64 %i.ca, 1                        ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !24
  %i.cd = shl i64 %i.cb, 2                        ; 2 uses
  %i.ce = tail call noalias ptr @malloc(i64 noundef %i.cd) #23 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !35
  %i.cg = tail call noalias ptr @malloc(i64 noundef %i.cd) #23 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !37
  %i.ci = add i32 %3, 1                           ; 2 uses
  %i.cj = zext i32 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 3
  %i.cl = tail call noalias ptr @malloc(i64 noundef %i.ck) #23 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !38
  %.not = icmp eq ptr %i.ce, null
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge
  %.not104 = icmp eq ptr %i.cg, null
  %.not105 = icmp eq ptr %i.cl, null
  %or.cond107 = or i1 %.not104, %.not105
  br i1 %or.cond107, label %bb.n, label %bb.x

bb.n:                                             ; preds = %bb.m, %.critedge
  %i.cn = icmp sgt i32 %6, 0
  br i1 %i.cn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.cp = tail call i64 @fwrite(ptr nonnull @.str.21, i64 35, i64 1, ptr %i.co) #22 ; 0 uses
  %i.cq = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.cr = tail call i32 @fflush(ptr noundef %i.cq) ; 0 uses
  %.pre141 = load ptr, ptr %i.cf, align 8, !tbaa !35
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cs = phi ptr [ %.pre141, %bb.o ], [ %i.ce, %bb.n ] ; 2 uses
  %.not.i125 = icmp eq ptr %i.cs, null
  br i1 %.not.i125, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.cs) #21
  store ptr null, ptr %i.cf, align 8, !tbaa !35
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !36 ; 2 uses
  %.not17.i = icmp eq ptr %i.cu, null
  br i1 %.not17.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.cu) #21
  store ptr null, ptr %i.ct, align 8, !tbaa !36
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cv = load ptr, ptr %i.ch, align 8, !tbaa !37 ; 2 uses
  %.not18.i = icmp eq ptr %i.cv, null
  br i1 %.not18.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.cv) #21
  store ptr null, ptr %i.ch, align 8, !tbaa !37
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cw = load ptr, ptr %i.cm, align 8, !tbaa !38 ; 2 uses
  %.not19.i = icmp eq ptr %i.cw, null
  br i1 %.not19.i, label %COVER_ctx_destroy.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef nonnull %i.cw) #21
  store ptr null, ptr %i.cm, align 8, !tbaa !38
  br label %COVER_ctx_destroy.exit

bb.x:                                             ; preds = %bb.m
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr null, ptr %i.cx, align 8, !tbaa !36
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store i32 %4, ptr %i.cy, align 8, !tbaa !51
  store i64 0, ptr %i.cl, align 8, !tbaa !8
  %umax = tail call i32 @llvm.umax.i32(i32 %i.ci, i32 2) ; 2 uses
  %wide.trip.count = zext i32 %umax to i64
  %i.cz = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.cz, 3                    ; 3 uses
  %7 = add i32 %umax, -2
  %i.da = icmp ult i32 %7, 3
  br i1 %i.da, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.x
  %unroll_iter = and i64 %i.cz, -4
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.new
  %i.db = phi i64 [ 0, %.new ], [ %i.du, %bb.y ]
  %indvars.iv = phi i64 [ 1, %.new ], [ %indvars.iv.next.3, %bb.y ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.y ]
  %i.dc = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.dd = getelementptr i8, ptr %i.dc, i64 -8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !8
  %i.df = add i64 %i.de, %i.db                    ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dh = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.di = getelementptr i8, ptr %i.dh, i64 -8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !8
  %i.dk = add i64 %i.dj, %i.df                    ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.next
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dm = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.dn = getelementptr i8, ptr %i.dm, i64 -8
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !8
  %i.dp = add i64 %i.do, %i.dk                    ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.next.1
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dr = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.ds = getelementptr i8, ptr %i.dr, i64 -8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !8
  %i.du = add i64 %i.dt, %i.dp                    ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.next.2
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.y, !llvm.loop !52

.unr-lcssa:                                       ; preds = %bb.y
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.x
  %.epil.init = phi i64 [ 0, %bb.x ], [ %i.du, %.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %bb.x ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %lcmp.mod234 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod234)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader
  %i.dw = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.ea, %bb.z ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.z ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.z ]
  %i.dx = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.dy = getelementptr i8, ptr %i.dx, i64 -8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !8
  %i.ea = add i64 %i.dz, %i.dw                    ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.epil
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.z, !llvm.loop !53

.epilog-lcssa:                                    ; preds = %bb.z, %.unr-lcssa
  br i1 %i.bj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.epilog-lcssa
  %i.ec = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ed = tail call i64 @fwrite(ptr nonnull @.str.22, i64 34, i64 1, ptr %i.ec) #22 ; 0 uses
  %i.ee = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ef = tail call i32 @fflush(ptr noundef %i.ee) ; 0 uses
  %.pre = load i64, ptr %i.cc, align 8, !tbaa !24
  %.pre140.pre = load ptr, ptr %i.cf, align 8, !tbaa !35
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.epilog-lcssa
  %.pre140 = phi ptr [ %.pre140.pre, %bb.aa ], [ %i.ce, %.epilog-lcssa ] ; 3 uses
  %i.eg = phi i64 [ %.pre, %bb.aa ], [ %i.cb, %.epilog-lcssa ] ; 7 uses
  %.not133 = icmp eq i64 %i.eg, 0
  br i1 %.not133, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ab
  %min.iters.check211 = icmp ult i64 %i.eg, 16
  br i1 %min.iters.check211, label %.lr.ph.preheader224, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.eh = add i64 %i.eg, -1                       ; 2 uses
  %i.ei = and i64 %i.eh, 4294967295
  %i.ej = icmp eq i64 %i.ei, 4294967295
  %i.ek = icmp ugt i64 %i.eh, 4294967295
  %i.el = or i1 %i.ej, %i.ek
  br i1 %i.el, label %.lr.ph.preheader224, label %vector.ph212

vector.ph212:                                     ; preds = %vector.scevcheck
  %n.vec213 = and i64 %i.eg, 8589934584           ; 3 uses
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph212
  %index215 = phi i64 [ 0, %vector.ph212 ], [ %index.next216, %vector.body214 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph212 ], [ %vec.ind.next, %vector.body214 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.pre140, i64 %index215 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store <4 x i32> %vec.ind, ptr %i.em, align 4, !tbaa !55
  store <4 x i32> %step.add, ptr %i.en, align 4, !tbaa !55
  %index.next216 = add nuw i64 %index215, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.eo = icmp eq i64 %index.next216, %n.vec213
  br i1 %i.eo, label %middle.block217, label %vector.body214, !llvm.loop !56

middle.block217:                                  ; preds = %vector.body214
  %cmp.n218 = icmp eq i64 %i.eg, %n.vec213
  br i1 %cmp.n218, label %._crit_edge, label %.lr.ph.preheader224

.lr.ph.preheader224:                              ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block217
  %indvars.iv137.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec213, %middle.block217 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader224, %.lr.ph
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %.lr.ph ], [ %indvars.iv137.ph, %.lr.ph.preheader224 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.pre140, i64 %indvars.iv137
  %i.eq = trunc nuw i64 %indvars.iv137 to i32
  store i32 %i.eq, ptr %i.ep, align 4, !tbaa !55
  %indvars.iv.next138 = add i64 %indvars.iv137, 1 ; 2 uses
  %i.er = and i64 %indvars.iv.next138, 4294967295
  %i.es = icmp ugt i64 %i.eg, %i.er
  br i1 %i.es, label %.lr.ph, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %.lr.ph, %middle.block217, %bb.ab
  %i.et = load i32, ptr %i.cy, align 8, !tbaa !51
  %i.eu = icmp ult i32 %i.et, 9
  %i.ev = select i1 %i.eu, ptr @COVER_strict_cmp8, ptr @COVER_strict_cmp
  tail call void @qsort_r(ptr noundef %.pre140, i64 noundef %i.eg, i64 noundef 4, ptr noundef nonnull %i.ev, ptr noundef nonnull %0) #21
  br i1 %i.bj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %._crit_edge
  %i.ew = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ex = tail call i64 @fwrite(ptr nonnull @.str.23, i64 22, i64 1, ptr %i.ew) #22 ; 0 uses
  %i.ey = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ez = tail call i32 @fflush(ptr noundef %i.ey) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge
  %i.fa = load ptr, ptr %i.cf, align 8, !tbaa !35 ; 2 uses
  %i.fb = load i64, ptr %i.cc, align 8, !tbaa !24 ; 3 uses
  %i.fc = load i32, ptr %i.cy, align 8, !tbaa !51
  %i.fd = icmp ult i32 %i.fc, 9
  %i.fe = select i1 %i.fd, ptr @COVER_cmp8, ptr @COVER_cmp
  %.not.i126 = icmp eq i64 %i.fb, 0
  br i1 %.not.i126, label %COVER_groupBy.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ad, %COVER_group.exit.i
  %.0192.i = phi i64 [ %.1.lcssa.i, %COVER_group.exit.i ], [ 0, %bb.ad ] ; 3 uses
  %.0201.i = phi ptr [ %.0.i.lcssa, %COVER_group.exit.i ], [ %i.fa, %bb.ad ] ; 6 uses
  %i.ff = add nuw i64 %.0192.i, 1
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.fb, i64 %i.ff) ; 3 uses
  %i.fg = add i64 %umax.i, -1                     ; 2 uses
  %.0.i164 = getelementptr inbounds nuw i8, ptr %.0201.i, i64 4 ; 2 uses
  %exitcond.not.i127165 = icmp eq i64 %.0192.i, %i.fg
  br i1 %exitcond.not.i127165, label %.critedge.i, label %.lr.ph169

bb.ae:                                            ; preds = %.lr.ph169
  %.0.i = getelementptr inbounds nuw i8, ptr %.0.i168, i64 4 ; 2 uses
  %exitcond.not.i127 = icmp eq i64 %.1.i, %i.fg
  br i1 %exitcond.not.i127, label %.critedge.i, label %.lr.ph169, !llvm.loop !58

.lr.ph169:                                        ; preds = %.preheader.i, %bb.ae
  %.0.i168 = phi ptr [ %.0.i, %bb.ae ], [ %.0.i164, %.preheader.i ] ; 5 uses
  %.020.pn.i167 = phi ptr [ %.0.i168, %bb.ae ], [ %.0201.i, %.preheader.i ]
  %.1.in.i166 = phi i64 [ %.1.i, %bb.ae ], [ %.0192.i, %.preheader.i ]
  %.1.i = add i64 %.1.in.i166, 1                  ; 3 uses
  %i.fh = tail call i32 %i.fe(ptr noundef nonnull %0, ptr noundef %.0201.i, ptr noundef nonnull %.0.i168) #21, !callees !59, !inline_history !60
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.ae, label %..critedge.i_crit_edge, !llvm.loop !58

..critedge.i_crit_edge:                           ; preds = %.lr.ph169
  br label %.critedge.i, !llvm.loop !58

.critedge.i:                                      ; preds = %bb.ae, %..critedge.i_crit_edge, %.preheader.i
  %.020.pn.i.lcssa = phi ptr [ %.020.pn.i167, %..critedge.i_crit_edge ], [ %.0201.i, %.preheader.i ], [ %.0.i168, %bb.ae ] ; 2 uses
  %.0.i.lcssa = phi ptr [ %.0.i168, %..critedge.i_crit_edge ], [ %.0.i164, %.preheader.i ], [ %.0.i, %bb.ae ]
  %.1.lcssa.i = phi i64 [ %.1.i, %..critedge.i_crit_edge ], [ %umax.i, %.preheader.i ], [ %umax.i, %bb.ae ] ; 2 uses
  %i.fj = load ptr, ptr %i.cf, align 8, !tbaa !35 ; 3 uses
  %i.fk = ptrtoint ptr %.0201.i to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = lshr exact i64 %i.fm, 2                 ; 2 uses
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = load ptr, ptr %i.cm, align 8, !tbaa !38 ; 3 uses
  %i.fq = load i64, ptr %i.bv, align 8, !tbaa !48
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fq ; 3 uses
  %i.fs = load i64, ptr %i.fp, align 8, !tbaa !8
  %i.ft = load ptr, ptr %i.ch, align 8, !tbaa !37
  %i.fu = ptrtoint ptr %i.fr to i64
  br label %bb.af
end_hunk_0
