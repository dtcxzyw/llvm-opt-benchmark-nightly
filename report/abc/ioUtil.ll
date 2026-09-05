Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ioUtil?download=true
inline.NumInlined: 115
inline.NumDeleted: 51
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Io_TransformROM2PLA:bb.a
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %Abc_TtOr.exit.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.i.preheader ], [ %indvars.iv.next, %Abc_TtOr.exit.loopexit ] ; 2 uses
  %i.ch = mul nuw nsw i64 %indvars.iv, %wide.trip.count.i
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.val57.ph, i64 %i.ch ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.lr.ph.i.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %index ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.cj, align 8, !tbaa !78, !alias.scope !79, !noalias !80
  %wide.load193 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !78, !alias.scope !79, !noalias !80
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load194 = load <2 x i64>, ptr %i.cl, align 8, !tbaa !78, !alias.scope !80
  %wide.load195 = load <2 x i64>, ptr %i.cm, align 8, !tbaa !78, !alias.scope !80
  %i.cn = or <2 x i64> %wide.load194, %wide.load
  %i.co = or <2 x i64> %wide.load195, %wide.load193
  store <2 x i64> %i.cn, ptr %i.cj, align 8, !tbaa !78, !alias.scope !79, !noalias !80
  store <2 x i64> %i.co, ptr %i.ck, align 8, !tbaa !78, !alias.scope !79, !noalias !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Abc_TtOr.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.i.prol ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !78
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.i.prol
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !78
  %i.cu = or i64 %i.ct, %i.cr
  store i64 %i.cu, ptr %i.cq, align 8, !tbaa !78
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !70

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.cv = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.cw = icmp ugt i64 %i.cv, -4
  br i1 %i.cw, label %Abc_TtOr.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.i ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !78
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.i
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !78
  %i.db = or i64 %i.da, %i.cy
  store i64 %i.db, ptr %i.cx, align 8, !tbaa !78
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next.i ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !78
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next.i
  %i.df = load i64, ptr %i.de, align 8, !tbaa !78
  %i.dg = or i64 %i.df, %i.dd
  store i64 %i.dg, ptr %i.dc, align 8, !tbaa !78
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !78
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next.i.1
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !78
  %i.dl = or i64 %i.dk, %i.di
  store i64 %i.dl, ptr %i.dh, align 8, !tbaa !78
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !78
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next.i.2
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !78
  %i.dq = or i64 %i.dp, %i.dn
  store i64 %i.dq, ptr %i.dm, align 8, !tbaa !78
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %Abc_TtOr.exit.loopexit, label %.lr.ph.i, !llvm.loop !71

Abc_TtOr.exit.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %.lr.ph.preheader.i, !llvm.loop !72

._crit_edge.split:                                ; preds = %Abc_TtOr.exit.loopexit, %.lr.ph, %Vec_WrdReadHex.exit
  %i.dr = shl i32 %.034.ph.i, 6                   ; 3 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.dr, i32 0) ; 2 uses
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %.lr.ph191, label %._crit_edge

.lr.ph191.1:                                      ; preds = %.lr.ph191
  %i.dt = add nsw i32 %.0190, -2                  ; 3 uses
  %i.du = lshr i32 %i.dt, 6
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !78
  %i.dy = and i32 %i.dt, 62
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = shl nuw nsw i64 1, %i.dz
  %i.eb = and i64 %i.dx, %i.ea
  %.not.1 = icmp eq i64 %i.eb, 0
  br i1 %.not.1, label %bb.ad, label %.thread, !llvm.loop !73

bb.ad:                                            ; preds = %.lr.ph191.1
  %i.ec = icmp sgt i32 %.0190, 2
  br i1 %i.ec, label %.lr.ph191, label %._crit_edge, !llvm.loop !73

.lr.ph191:                                        ; preds = %._crit_edge.split, %bb.ad
  %.0190 = phi i32 [ %i.dt, %bb.ad ], [ %i.dr, %._crit_edge.split ] ; 4 uses
  %i.ed = add nsw i32 %.0190, -1                  ; 3 uses
  %i.ee = lshr i32 %i.ed, 6
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !78
  %i.ei = and i32 %i.ed, 63
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = shl nuw i64 1, %i.ej
  %i.el = and i64 %i.eh, %i.ek
  %.not = icmp eq i64 %i.el, 0
  br i1 %.not, label %.lr.ph191.1, label %.thread, !llvm.loop !73

._crit_edge:                                      ; preds = %bb.ad, %._crit_edge.split
  %.not55 = icmp eq ptr %i.cb, null
  br i1 %.not55, label %bb.ae, label %.thread

.thread:                                          ; preds = %.lr.ph191, %.lr.ph191.1, %._crit_edge
  %.0111 = phi i32 [ %smin, %._crit_edge ], [ %.0190, %.lr.ph191 ], [ %i.ed, %.lr.ph191.1 ]
  tail call void @free(ptr noundef nonnull %i.cb) #17
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge, %.thread
  %.0112 = phi i32 [ %smin, %._crit_edge ], [ %.0111, %.thread ] ; 3 uses
  %i.em = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.62, i32 noundef %.09.i) #17 ; 0 uses
  %i.en = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.63, i32 noundef %.0112) #17 ; 0 uses
  %i.eo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.64, i32 noundef %i.bv) #17 ; 0 uses
  %i.ep = tail call i64 @fwrite(ptr nonnull @.str.67, i64 9, i64 1, ptr nonnull %i.a) ; 0 uses
  br i1 %i.cc, label %.lr.ph100, label %._crit_edge101

.lr.ph100:                                        ; preds = %bb.ae
  %i.eq = icmp sgt i32 %.0112, 0
  br i1 %i.eq, label %.lr.ph100.split.us.preheader, label %.lr.ph92.us106

.lr.ph100.split.us.preheader:                     ; preds = %.lr.ph100
  %wide.trip.count140 = zext nneg i32 %i.bv to i64
  br label %.lr.ph92.us.preheader

.lr.ph92.us.preheader:                            ; preds = %._crit_edge97.us, %.lr.ph100.split.us.preheader
  %indvars.iv137 = phi i64 [ 0, %.lr.ph100.split.us.preheader ], [ %indvars.iv.next138, %._crit_edge97.us ] ; 3 uses
  %i.er = mul nsw i64 %indvars.iv137, %i.ca
  %i.es = getelementptr inbounds [8 x i8], ptr %.val57.ph, i64 %i.er
  %i.et = trunc nuw nsw i64 %indvars.iv137 to i32
  br label %.lr.ph92.us

.lr.ph92.us:                                      ; preds = %.lr.ph92.us.preheader, %.lr.ph92.us
  %.04990.us = phi i32 [ %i.ex, %.lr.ph92.us ], [ 0, %.lr.ph92.us.preheader ] ; 2 uses
  %i.eu = lshr i32 %i.et, %.04990.us
  %i.ev = and i32 %i.eu, 1
  %i.ew = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.68, i32 noundef %i.ev) #17 ; 0 uses
  %i.ex = add nuw nsw i32 %.04990.us, 1           ; 2 uses
  %exitcond135.not = icmp eq i32 %i.ex, %.09.i
  br i1 %exitcond135.not, label %.lr.ph96.us, label %.lr.ph92.us, !llvm.loop !74

.lr.ph96.us:                                      ; preds = %.lr.ph92.us
  %fputc.us = tail call i32 @fputc(i32 32, ptr nonnull %i.a) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph96.us, %bb.af
  %.15094.us = phi i32 [ 0, %.lr.ph96.us ], [ %i.fi, %bb.af ] ; 3 uses
  %i.ey = lshr i32 %.15094.us, 6
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !78
  %i.fc = and i32 %.15094.us, 63
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = lshr i64 %i.fb, %i.fd
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = and i32 %i.ff, 1
  %i.fh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.68, i32 noundef %i.fg) #17 ; 0 uses
  %i.fi = add nuw nsw i32 %.15094.us, 1           ; 2 uses
  %exitcond136.not = icmp eq i32 %i.fi, %.0112
  br i1 %exitcond136.not, label %._crit_edge97.us, label %bb.af, !llvm.loop !75

._crit_edge97.us:                                 ; preds = %bb.af
  %fputc56.us = tail call i32 @fputc(i32 10, ptr nonnull %i.a) ; 0 uses
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count140
  br i1 %exitcond141.not, label %._crit_edge101, label %.lr.ph92.us.preheader, !llvm.loop !76

.lr.ph92.us106:                                   ; preds = %.lr.ph100, %._crit_edge93.us107
  %.198.us102 = phi i32 [ %i.fn, %._crit_edge93.us107 ], [ 0, %.lr.ph100 ] ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph92.us106
  %.04990.us103 = phi i32 [ 0, %.lr.ph92.us106 ], [ %i.fm, %bb.ag ] ; 2 uses
  %i.fj = lshr i32 %.198.us102, %.04990.us103
  %i.fk = and i32 %i.fj, 1
  %i.fl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.68, i32 noundef %i.fk) #17 ; 0 uses
  %i.fm = add nuw nsw i32 %.04990.us103, 1        ; 2 uses
  %exitcond132.not = icmp eq i32 %i.fm, %.09.i
  br i1 %exitcond132.not, label %._crit_edge93.us107, label %bb.ag, !llvm.loop !74

._crit_edge93.us107:                              ; preds = %bb.ag
  %fputc.us104 = tail call i32 @fputc(i32 32, ptr nonnull %i.a) ; 0 uses
  %fputc56.us105 = tail call i32 @fputc(i32 10, ptr nonnull %i.a) ; 0 uses
  %i.fn = add nuw nsw i32 %.198.us102, 1          ; 2 uses
  %exitcond133.not = icmp eq i32 %i.fn, %i.bv
  br i1 %exitcond133.not, label %._crit_edge101, label %.lr.ph92.us106, !llvm.loop !76

._crit_edge101:                                   ; preds = %._crit_edge93.us107, %._crit_edge97.us, %bb.ae
  %i.fo = tail call i64 @fwrite(ptr nonnull @.str.70, i64 4, i64 1, ptr nonnull %i.a) ; 0 uses
  %i.fp = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %Vec_WrdReadHex.exit.thread, %._crit_edge101, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define noalias noundef ptr @Io_ConvertNumsToSop(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 4 uses
  store i32 8, ptr %i.a, align 8, !tbaa !40
  %i.b = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !36
  %i.d = add nsw i32 %1, 3                        ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val34 = load i32, ptr %i.e, align 4, !tbaa !47 ; 3 uses
  %i.f = mul nsw i32 %.val34, %i.d                ; 2 uses
  %i.g = add nsw i32 %i.f, 1
  %i.h = sext i32 %i.g to i64
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #20 ; 4 uses
  %i.j = sext i32 %i.f to i64                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.i, i8 45, i64 %i.j, i1 false)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.k, align 1, !tbaa !45
  %i.l = icmp sgt i32 %.val34, 0
  br i1 %i.l, label %.lr.ph41, label %Vec_PtrPush.exit

.lr.ph41:                                         ; preds = %bb.a
  %i.m = getelementptr i8, ptr %0, i64 8
  %.val35 = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.n = sext i32 %1 to i64
  %i.o = sext i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %.val34 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph41, %.critedge2
  %indvars.iv43 = phi i64 [ 0, %.lr.ph41 ], [ %indvars.iv.next44, %.critedge2 ] ; 3 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.val35, i64 %indvars.iv43 ; 2 uses
  %i.q = mul nsw i64 %indvars.iv43, %i.o
  %i.r = getelementptr inbounds i8, ptr %i.i, i64 %i.q ; 4 uses
  %i.s = getelementptr i8, ptr %i.p, i64 4
  %.val3638 = load i32, ptr %i.s, align 4, !tbaa !49 ; 4 uses
  %i.t = icmp sgt i32 %.val3638, 0
  br i1 %i.t, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.b
  %i.u = getelementptr i8, ptr %i.p, i64 8
  %.val37.pre = load ptr, ptr %i.u, align 8, !tbaa !50 ; 3 uses
  %i.v = zext nneg i32 %.val3638 to i64           ; 2 uses
  %xtraiter = and i64 %i.v, 1
  %i.w = icmp eq i32 %.val3638, 1
  br i1 %i.w, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.v, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.val37.pre, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !12   ; 2 uses
  %i.z = trunc i32 %i.y to i8
  %i.aa = and i8 %i.z, 1
  %i.ab = or disjoint i8 %i.aa, 48
  %i.ac = ashr i32 %i.y, 1
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.r, i64 %i.ad
  store i8 %i.ab, ptr %i.ae, align 1, !tbaa !45
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val37.pre, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !12 ; 2 uses
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = and i8 %i.ai, 1
  %i.ak = or disjoint i8 %i.aj, 48
  %i.al = ashr i32 %i.ah, 1
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %i.r, i64 %i.am
  store i8 %i.ak, ptr %i.an, align 1, !tbaa !45
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.critedge2.loopexit.unr-lcssa, label %bb.c, !llvm.loop !84

.critedge2.loopexit.unr-lcssa:                    ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge2, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge2.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.critedge2.loopexit.unr-lcssa ]
  %lcmp.mod46 = trunc i32 %.val3638 to i1
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val37.pre, i64 %indvars.iv.epil.init
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !12 ; 2 uses
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = and i8 %i.aq, 1
  %i.as = or disjoint i8 %i.ar, 48
  %i.at = ashr i32 %i.ap, 1
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.r, i64 %i.au
  store i8 %i.as, ptr %i.av, align 1, !tbaa !45
  br label %.critedge2

.critedge2:                                       ; preds = %.epil.preheader, %.critedge2.loopexit.unr-lcssa, %bb.b
  %i.aw = getelementptr inbounds i8, ptr %i.r, i64 %i.n ; 3 uses
  store i8 32, ptr %i.aw, align 1, !tbaa !45
  %i.ax = getelementptr i8, ptr %i.aw, i64 1
  store i8 48, ptr %i.ax, align 1, !tbaa !45
  %i.ay = getelementptr i8, ptr %i.aw, i64 2
  store i8 10, ptr %i.ay, align 1, !tbaa !45
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count
  br i1 %exitcond.not, label %Vec_PtrPush.exit, label %bb.b, !llvm.loop !85

Vec_PtrPush.exit:                                 ; preds = %.critedge2, %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.az, align 4, !tbaa !35
  store ptr %i.i, ptr %i.b, align 8, !tbaa !37
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Io_ConvertNumsToSopMulti(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val30 = load i32, ptr %i.a, align 4, !tbaa !47 ; 3 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 5 uses
  %i.c = add i32 %.val30, -1
  %or.cond.i = icmp ult i32 %i.c, 7
  %spec.store.select.i = select i1 %or.cond.i, i32 8, i32 %.val30 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !35
  store i32 %spec.store.select.i, ptr %i.b, align 8, !tbaa !40
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_PtrAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %spec.store.select.i to i64
  %i.f = shl nsw i64 %i.e, 3
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #20
  br label %Vec_PtrAlloc.exit

Vec_PtrAlloc.exit:                                ; preds = %bb.a, %bb.b
  %.promoted42 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.promoted42, ptr %i.h, align 8, !tbaa !36
  %i.i = icmp sgt i32 %.val30, 0
  br i1 %i.i, label %.lr.ph38, label %.critedge

.lr.ph38:                                         ; preds = %Vec_PtrAlloc.exit
  %i.j = getelementptr i8, ptr %0, i64 8
  %i.k = add nsw i32 %1, 4
  %i.l = sext i32 %i.k to i64
  %i.m = sext i32 %1 to i64                       ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph38, %Vec_PtrPush.exit
  %indvars.iv48 = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next49, %Vec_PtrPush.exit ] ; 2 uses
  %indvars.iv46 = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next47, %Vec_PtrPush.exit ] ; 7 uses
  %storemerge43 = phi ptr [ %.promoted42, %.lr.ph38 ], [ %storemerge44, %Vec_PtrPush.exit ] ; 6 uses
  %spec.select.sink.i41 = phi i32 [ %spec.store.select.i, %.lr.ph38 ], [ %spec.select.sink.i40, %Vec_PtrPush.exit ] ; 3 uses
  %.val31 = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.val31, i64 %indvars.iv48 ; 2 uses
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.l) #20 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.o, i8 45, i64 %i.m, i1 false)
  %i.p = getelementptr i8, ptr %i.n, i64 4        ; 2 uses
  %.val3234 = load i32, ptr %i.p, align 4, !tbaa !49
  %i.q = icmp sgt i32 %.val3234, 0
  br i1 %i.q, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.n, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
end_hunk_0
