Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aadec?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@aa_read_header:bb.a
  %indvars.iv.next235.2 = add nuw nsw i64 %indvars.iv234, 3 ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next235.2
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !59
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  %i.fp = icmp samesign ult i64 %spec.select176.2, %i.fo
  %i.fq = trunc nuw nsw i64 %indvars.iv.next235.2 to i32
  %spec.select.3 = select i1 %i.fp, i32 %i.fq, i32 %spec.select.2 ; 3 uses
  %spec.select176.3 = call i64 @llvm.smax.i64(i64 %spec.select176.2, i64 %i.fo) ; 3 uses
  %indvars.iv.next235.3 = add nuw nsw i64 %indvars.iv234, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge220.loopexit.unr-lcssa, label %.lr.ph219, !llvm.loop !56

bb.t:                                             ; preds = %bb.x, %._crit_edge220
  %i.fr = call i64 @avio_seek(ptr noundef %i.k, i64 noundef 0, i32 noundef 1) #10 ; 3 uses
  %i.fs = icmp sgt i64 %i.fr, -1
  br i1 %i.fs, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.ft = load i64, ptr %i.eq, align 8, !tbaa !45
  %i.fu = icmp slt i64 %i.fr, %i.ft
  br i1 %i.fu, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.fv = load i32, ptr %i.er, align 8, !tbaa !46 ; 2 uses
  %i.fw = call i32 @avio_rb32(ptr noundef %i.k) #10 ; 3 uses
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fy = call i32 @avio_feof(ptr noundef %i.k) #10
  %.not172 = icmp eq i32 %i.fy, 0
  br i1 %.not172, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.fz = shl i32 %i.fv, 3
  %i.ga = add i32 %i.fz, %i.ek
  %i.gb = zext i32 %i.ga to i64
  %i.gc = sub nsw i64 %i.fr, %i.gb                ; 2 uses
  %i.gd = add i32 %i.fw, 4
  %i.ge = zext i32 %i.gd to i64
  %i.gf = call i64 @avio_skip(ptr noundef %i.k, i64 noundef %i.ge) #10 ; 0 uses
  %i.gg = zext i32 %i.fv to i64
  %i.gh = mul nsw i64 %i.gc, 1000
  %i.gi = zext i32 %i.fw to i64
  %i.gj = add nsw i64 %i.gc, %i.gi
  %i.gk = mul nsw i64 %i.gj, 1000
  %i.gl = load i64, ptr %i.es, align 8
  %i.gm = call ptr @avpriv_new_chapter(ptr noundef nonnull %0, i64 noundef %i.gg, i64 %i.gl, i64 noundef %i.gh, i64 noundef %i.gk, ptr noundef null) #10
  %.not173 = icmp eq ptr %i.gm, null
  br i1 %.not173, label %.thread195, label %bb.t

.critedge:                                        ; preds = %bb.w, %bb.v, %bb.t, %bb.u
  %i.gn = load i32, ptr %i.er, align 8, !tbaa !46
  %i.go = shl i32 %i.gn, 3
  %i.gp = zext i32 %i.go to i64
  %i.gq = sub nsw i64 %.0137.lcssa, %i.gp
  %i.gr = mul nsw i64 %i.gq, 1000
  %i.gs = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  store i64 %i.gr, ptr %i.gs, align 8, !tbaa !83
  call void @avpriv_update_cur_dts(ptr noundef %0, ptr noundef nonnull %i.cz, i64 noundef 0) #10
  %i.gt = call i64 @avio_seek(ptr noundef %i.k, i64 noundef %i.el, i32 noundef 0) #10 ; 0 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 0, ptr %i.gu, align 8, !tbaa !47
  %i.gv = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store i32 0, ptr %i.gv, align 8, !tbaa !48
  br label %.thread195

.thread195:                                       ; preds = %bb.x, %.thread184, %bb.m, %select.unfold, %._crit_edge, %bb.a, %.critedge, %bb.l, %bb.i
  %.7 = phi i32 [ -12, %bb.m ], [ -1094995529, %bb.a ], [ -22, %bb.i ], [ -22, %bb.l ], [ -1094995529, %.thread184 ], [ 0, %.critedge ], [ -12, %select.unfold ], [ -1094995529, %._crit_edge ], [ -12, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.7
}

; Function Attrs: nounwind uwtable
define internal range(i32 -541478725, 1) i32 @aa_read_packet(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.e = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef 0, i32 noundef 1) #10
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !45
  %.not = icmp ult i64 %i.e, %i.g
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !47   ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.pre46 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !49
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.l = tail call i32 @avio_rb32(ptr noundef %i.k) #10 ; 2 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  store i64 %i.m, ptr %i.h, align 8, !tbaa !47
  %i.n = icmp eq i32 %i.l, 0
  br i1 %i.n, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !50
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.21, i32 noundef %i.p, i64 noundef %i.m) #10
  %i.q = load i32, ptr %i.o, align 4, !tbaa !50
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !50
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.t = tail call i64 @avio_skip(ptr noundef %i.s, i64 noundef 4) #10 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !32   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.v, ptr %i.w, align 8, !tbaa !49
  %.pre = load i64, ptr %i.h, align 8, !tbaa !47
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.x = phi i32 [ %i.v, %bb.d ], [ %.pre46, %._crit_edge ] ; 2 uses
  %i.y = phi i64 [ %.pre, %bb.d ], [ %i.i, %._crit_edge ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.aa = sext i32 %i.x to i64                    ; 2 uses
  %i.ab = sdiv i64 %i.y, %i.aa
  %i.ac = srem i64 %i.y, %i.aa
  %i.ad = icmp eq i64 %i.ab, 0
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = trunc nsw i64 %i.ac to i32              ; 2 uses
  store i32 %i.ae, ptr %i.z, align 8, !tbaa !49
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.af = phi i32 [ %i.ae, %bb.f ], [ %i.x, %bb.e ]
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.ah = tail call i32 @av_get_packet(ptr noundef %i.ag, ptr noundef %1, i32 noundef %i.af) #10 ; 2 uses
  %i.ai = load i32, ptr %i.z, align 8, !tbaa !49
  %.not45 = icmp eq i32 %i.ah, %i.ai
  br i1 %.not45, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !84 ; 2 uses
  %i.an = sdiv i32 %i.ah, 8
  tail call void @av_tea_crypt(ptr noundef %i.ak, ptr noundef %i.am, ptr noundef %i.am, i32 noundef %i.an, ptr noundef null, i32 noundef 1) #10
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !47
  %i.ap = load i32, ptr %i.z, align 8, !tbaa !49  ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = sub nsw i64 %i.ao, %i.aq
  %spec.select = tail call i64 @llvm.smax.i64(i64 %i.ar, i64 0)
  store i64 %spec.select, ptr %i.h, align 8, !tbaa !47
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !48 ; 2 uses
  %i.au = icmp sgt i32 %i.at, %i.ap
  %spec.select50 = select i1 %i.au, i32 0, i32 %i.at ; 2 uses
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !84
  %i.aw = sext i32 %spec.select50 to i64
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %i.aw
  store ptr %i.ax, ptr %i.al, align 8, !tbaa !84
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !85
  %i.ba = sub nsw i32 %i.az, %spec.select50
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !85
  store i32 0, ptr %i.as, align 8, !tbaa !48
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.c, %bb.a, %bb.h
  %.0 = phi i32 [ 0, %bb.h ], [ -541478725, %bb.a ], [ -541478725, %bb.c ], [ -541478725, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @aa_read_close(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @av_freep(ptr noundef nonnull %i.c) #10
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @aa_read_seek(ptr noundef %0, i32 %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 7 uses
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %2, i64 0) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 5 uses
  %.not60 = icmp eq i32 %i.d, 0
  br i1 %.not60, label %.critedge.thread66, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !87
  %wide.trip.count = zext i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !89   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !91   ; 2 uses
  %.not = icmp slt i64 %spec.store.select, %i.j
  br i1 %.not, label %.critedge.thread.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !86

.critedge:                                        ; preds = %bb.c
  %i.k = icmp slt i32 %i.d, 1
  br i1 %i.k, label %.critedge.thread66, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !87
  %i.n = zext nneg i32 %i.d to i64
  %i.o = getelementptr [8 x i8], ptr %i.m, i64 %i.n
  %4 = getelementptr i8, ptr %i.o, i64 -8
  %i.p = load ptr, ptr %4, align 8, !tbaa !89     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !91   ; 2 uses
  br label %.critedge.thread

.critedge.thread.loopexit:                        ; preds = %bb.b
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  %i.t = add nuw nsw i32 %i.s, 1
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.loopexit, %bb.d
  %i.u = phi i64 [ %i.j, %.critedge.thread.loopexit ], [ %i.r, %bb.d ]
  %i.v = phi ptr [ %i.h, %.critedge.thread.loopexit ], [ %i.p, %bb.d ]
  %.049 = phi i64 [ %spec.store.select, %.critedge.thread.loopexit ], [ %i.r, %bb.d ]
  %.1 = phi i32 [ %i.t, %.critedge.thread.loopexit ], [ %i.d, %bb.d ] ; 2 uses
  %i.w = sdiv i64 %i.u, 1000
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !92   ; 3 uses
  %.neg = sdiv i64 %i.y, -1000
  %i.z = add nsw i64 %.neg, %i.w                  ; 2 uses
  %i.aa = sub nsw i64 %.049, %i.y
  %i.ab = sdiv i64 %i.aa, 1000
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !32
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = and i32 %3, 1
  %i.ag = xor i32 %i.af, 3
  %i.ah = tail call i64 @av_rescale_rnd(i64 noundef %i.ab, i64 noundef 1, i64 noundef %i.ae, i32 noundef %i.ag) #11
  %i.ai = mul nsw i64 %i.ah, %i.ae
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.ai, i64 %i.z)
  %spec.select.fr = freeze i64 %spec.select       ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !44
  %i.al = sdiv i64 %i.y, 1000
  %i.am = shl nsw i32 %.1, 3
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !28
  %i.aq = add nsw i64 %i.al, %i.an
  %i.ar = add i64 %i.aq, %i.ak
  %i.as = add nsw i64 %i.ar, %spec.select.fr
  %i.at = tail call i64 @avio_seek(ptr noundef %i.ap, i64 noundef %i.as, i32 noundef 0) #10 ; 0 uses
  %i.au = load i32, ptr %i.ac, align 4, !tbaa !32
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.au, ptr %i.av, align 8, !tbaa !49
  %i.aw = sub nsw i64 %i.z, %spec.select.fr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !47
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %.1, ptr %i.ay, align 4, !tbaa !50
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !93
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !95 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !40
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !43
  %i.bg = icmp eq i32 %i.bf, 86017
  br i1 %i.bg, label %bb.e, label %.critedge.thread._crit_edge

.critedge.thread._crit_edge:                      ; preds = %.critedge.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.pre63 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !48
  %i.bh = sext i32 %.pre63 to i64
  br label %bb.f

bb.e:                                             ; preds = %.critedge.thread
  %i.bi = srem i64 %spec.select.fr, 104           ; 2 uses
  %i.bj = sub nsw i64 104, %i.bi                  ; 2 uses
  %.urem = sub nsw i64 0, %i.bi
  %.cmp = icmp samesign ult i64 %i.bj, 104
  %i.bk = select i1 %.cmp, i64 %i.bj, i64 %.urem  ; 2 uses
  %i.bl = trunc nuw nsw i64 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !48
  br label %bb.f

bb.f:                                             ; preds = %.critedge.thread._crit_edge, %bb.e
  %i.bn = phi i64 [ %i.bh, %.critedge.thread._crit_edge ], [ %i.bk, %bb.e ]
  %i.bo = load i64, ptr %i.x, align 8, !tbaa !92
  %i.bp = add nsw i64 %spec.select.fr, %i.bn
  %i.bq = mul nsw i64 %i.bp, 1000
  %i.br = add nsw i64 %i.bq, %i.bo
  tail call void @avpriv_update_cur_dts(ptr noundef nonnull %0, ptr noundef nonnull %i.bb, i64 noundef %i.br) #10
  br label %.critedge.thread66

.critedge.thread66:                               ; preds = %bb.a, %.critedge, %bb.f
  %.048 = phi i32 [ 1, %bb.f ], [ -1, %.critedge ], [ -1, %bb.a ]
  ret i32 %.048
}

declare ptr @av_default_item_name(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i64 @avio_skip(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @avio_rb32(ptr noundef) local_unnamed_addr #2

declare i32 @avio_get_str(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @av_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare ptr @ff_data_to_hex(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_dict_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @av_tea_alloc() local_unnamed_addr #2

declare void @av_tea_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @av_tea_crypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @avformat_new_stream(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @avpriv_set_pts_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @avio_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @avio_feof(ptr noundef) local_unnamed_addr #2

declare ptr @avpriv_new_chapter(ptr noundef, i64 noundef, i64, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @avpriv_update_cur_dts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #6

declare i32 @av_get_packet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_rnd(i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"AVProbeData", !10, i64 0, !10, i64 8, !6, i64 16, !10, i64 24}
!12 = !{!5, !5, i64 0}
!13 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!14 = !{!"p1 _ZTS13AVInputFormat", !9, i64 0}
!15 = !{!"p1 _ZTS14AVOutputFormat", !9, i64 0}
!16 = !{!"p1 _ZTS11AVIOContext", !9, i64 0}
!17 = !{!"any p2 pointer", !9, i64 0}
!18 = !{!"p2 _ZTS8AVStream", !17, i64 0}
!19 = !{!"p2 _ZTS13AVStreamGroup", !17, i64 0}
!20 = !{!"p2 _ZTS9AVChapter", !17, i64 0}
!21 = !{!"long", !5, i64 0}
end_hunk_0
