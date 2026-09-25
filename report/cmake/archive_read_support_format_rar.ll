Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_rar?download=true
inline.NumInlined: 106
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@read_header:bb.a
  %i.ro = getelementptr inbounds nuw i8, ptr %i.c, i64 944
  store i64 9223372036854775807, ptr %i.ro, align 8, !tbaa !125
  br i1 %i.ci, label %.critedge, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.rp = load i64, ptr %i.x, align 8, !tbaa !113
  %i.rq = load i64, ptr %i.ae, align 8, !tbaa !126
  tail call void @archive_entry_set_mtime(ptr noundef %1, i64 noundef %i.rp, i64 noundef %i.rq) #20
  %i.rr = load i64, ptr %i.y, align 8, !tbaa !127
  %i.rs = load i64, ptr %i.ad, align 8, !tbaa !128
  tail call void @archive_entry_set_ctime(ptr noundef %1, i64 noundef %i.rr, i64 noundef %i.rs) #20
  %i.rt = load i64, ptr %i.z, align 8, !tbaa !129
  %i.ru = load i64, ptr %i.ac, align 8, !tbaa !130
  tail call void @archive_entry_set_atime(ptr noundef %1, i64 noundef %i.rt, i64 noundef %i.ru) #20
  %i.rv = load i64, ptr %i.w, align 8, !tbaa !63
  tail call void @archive_entry_set_size(ptr noundef %1, i64 noundef %i.rv) #20
  %i.rw = load i32, ptr %i.aa, align 8, !tbaa !197
  tail call void @archive_entry_set_mode(ptr noundef %1, i32 noundef %i.rw) #20
  %i.rx = tail call i32 @_archive_entry_copy_pathname_l(ptr noundef %1, ptr noundef %i.di, i64 noundef %i.pp, ptr noundef %.1396) #20
  %.not463 = icmp eq i32 %i.rx, 0
  br i1 %.not463, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ry = tail call ptr @__errno_location() #24
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !131
  %i.sa = icmp eq i32 %i.rz, 12
  br i1 %i.sa, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str.32) #20
  br label %.critedge

bb.cl:                                            ; preds = %bb.cj
  %i.sb = tail call ptr @archive_string_conversion_charset_name(ptr noundef %.1396) #20
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.33, ptr noundef %i.sb) #20
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ci
  %.0393 = phi i32 [ -20, %bb.cl ], [ 0, %bb.ci ] ; 2 uses
  %i.sc = load i32, ptr %i.aa, align 8, !tbaa !197
  %i.sd = and i32 %i.sc, 61440
  %i.se = icmp eq i32 %i.sd, 40960
  br i1 %i.se, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  store i64 0, ptr %i.ch, align 8, !tbaa !66
  tail call void @archive_entry_set_size(ptr noundef %1, i64 noundef 0) #20
  %i.sf = tail call fastcc i32 @read_symlink_stored(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %.0397) ; 3 uses
  %i.sg = icmp slt i32 %i.sf, -20
  br i1 %i.sg, label %.critedge, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %spec.select = tail call i32 @llvm.smin.i32(i32 %.0393, i32 %i.sf)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cm
  %.1394 = phi i32 [ %.0393, %bb.cm ], [ %spec.select, %bb.co ] ; 2 uses
  %i.sh = load i64, ptr %i.ch, align 8, !tbaa !66
  %i.si = icmp eq i64 %i.sh, 0
  br i1 %i.si, label %bb.cq, label %.critedge

bb.cq:                                            ; preds = %bb.cp
  store i8 1, ptr %i.rb, align 1, !tbaa !61
  br label %.critedge

.critedge:                                        ; preds = %bb.ba, %bb.az, %.thread512, %bb.v, %bb.x, %bb.cp, %bb.cq, %bb.cn, %bb.ch, %bb.bl, %bb.bo, %bb.bf, %bb.d, %bb.ck, %bb.cg, %bb.cd, %bb.cb, %bb.bx, %bb.bu, %bb.bs, %bb.bq, %bb.bn, %bb.ad, %bb.aa, %bb.s, %bb.q, %bb.l, %bb.j, %bb.i, %bb.f
  %.5 = phi i32 [ %.1394, %bb.cp ], [ -30, %bb.f ], [ -30, %bb.i ], [ -30, %bb.j ], [ -30, %bb.l ], [ -30, %bb.q ], [ -30, %bb.s ], [ -30, %bb.aa ], [ -30, %bb.ad ], [ -30, %bb.bq ], [ -30, %bb.bs ], [ -30, %bb.bu ], [ -30, %bb.bx ], [ -30, %bb.cb ], [ -30, %bb.cd ], [ -30, %bb.cg ], [ 0, %bb.bl ], [ -30, %bb.ck ], [ 0, %bb.ch ], [ %i.sf, %bb.cn ], [ -30, %bb.bn ], [ -30, %bb.bf ], [ -30, %.thread512 ], [ -30, %bb.v ], [ -30, %bb.d ], [ 0, %bb.bo ], [ %.1394, %bb.cq ], [ -30, %bb.x ], [ -30, %bb.az ], [ -30, %bb.ba ]
  ret i32 %.5
}

declare ptr @archive_string_default_conversion_for_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @read_exttime(ptr nofree noundef nonnull readonly captures(address) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readnone captures(address) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 14 uses
  %i.a = alloca i64, align 8                      ; 13 uses
  %4 = alloca %struct.tm, align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.c = icmp ugt ptr %i.b, %2
  br i1 %i.c, label %.loopexit, label %.peel.begin

.peel.begin:                                      ; preds = %bb.a
  %.val = load i16, ptr %0, align 1               ; 2 uses
  %i.d = zext i16 %.val to i32                    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 0, ptr %i.a, align 8, !tbaa !38
  %i.s = load i64, ptr %i.e, align 8, !tbaa !113  ; 2 uses
  store i64 %i.s, ptr %i.a, align 8, !tbaa !38
  %.not.peel = icmp sgt i16 %.val, -1
  br i1 %.not.peel, label %.peel.newph, label %bb.b

bb.b:                                             ; preds = %.peel.begin
  %i.t = lshr i32 %i.d, 12                        ; 2 uses
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %.thread72.peel, label %bb.d

.thread72.peel:                                   ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.w = icmp ugt ptr %i.v, %2
  br i1 %i.w, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.thread72.peel
  %i.x = load i32, ptr %i.b, align 1              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.y = shl i32 %i.x, 1
  %i.z = and i32 %i.y, 62
  store i32 %i.z, ptr %3, align 8, !tbaa !106
  %i.aa = lshr i32 %i.x, 5
  %i.ab = and i32 %i.aa, 63
  store i32 %i.ab, ptr %i.f, align 4, !tbaa !107
  %i.ac = lshr i32 %i.x, 11
  %i.ad = and i32 %i.ac, 31
  store i32 %i.ad, ptr %i.g, align 8, !tbaa !108
  %i.ae = lshr i32 %i.x, 16
  %i.af = and i32 %i.ae, 31
  store i32 %i.af, ptr %i.h, align 4, !tbaa !109
  %i.ag = lshr i32 %i.x, 21
  %i.ah = and i32 %i.ag, 15
  %i.ai = add nsw i32 %i.ah, -1
  store i32 %i.ai, ptr %i.i, align 8, !tbaa !110
  %i.aj = lshr i32 %i.x, 25
  %i.ak = add nuw nsw i32 %i.aj, 80
  store i32 %i.ak, ptr %i.j, align 4, !tbaa !111
  store i32 -1, ptr %i.k, align 8, !tbaa !112
  %i.al = call noundef i64 @mktime(ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  store i64 %i.al, ptr %i.a, align 8, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.am = phi i32 [ %i.t, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %.1.peel = phi ptr [ %i.b, %bb.b ], [ %i.v, %bb.c ] ; 6 uses
  %i.an = and i32 %i.am, 3                        ; 5 uses
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %.1.peel, i64 %i.ao
  %i.aq = icmp ugt ptr %i.ap, %2
  br i1 %i.aq, label %.loopexit, label %.preheader.peel

.preheader.peel:                                  ; preds = %bb.d
  %.not62.peel = icmp eq i32 %i.an, 0
  br i1 %.not62.peel, label %._crit_edge.peel, label %.lr.ph.peel

.lr.ph.peel:                                      ; preds = %.preheader.peel
  %i.ar = load i8, ptr %.1.peel, align 1, !tbaa !37
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %i.at = shl nuw nsw i32 %i.as, 16
  %exitcond.not.peel = icmp eq i32 %i.an, 1
  br i1 %exitcond.not.peel, label %._crit_edge.loopexit.peel, label %.lr.ph.1.peel

.lr.ph.1.peel:                                    ; preds = %.lr.ph.peel
  %i.au = getelementptr inbounds nuw i8, ptr %.1.peel, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !37
  %i.aw = zext i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 16
  %i.ay = shl nuw nsw i32 %i.as, 8
  %i.az = or disjoint i32 %i.ax, %i.ay            ; 2 uses
  %exitcond.not.1.peel = icmp eq i32 %i.an, 2
  br i1 %exitcond.not.1.peel, label %._crit_edge.loopexit.peel, label %.lr.ph.2.peel

.lr.ph.2.peel:                                    ; preds = %.lr.ph.1.peel
  %i.ba = getelementptr inbounds nuw i8, ptr %.1.peel, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !37
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 16
  %i.be = lshr exact i32 %i.az, 8
  %i.bf = or disjoint i32 %i.bd, %i.be
  br label %._crit_edge.loopexit.peel

._crit_edge.loopexit.peel:                        ; preds = %.lr.ph.2.peel, %.lr.ph.1.peel, %.lr.ph.peel
  %.lcssa.peel = phi i32 [ %i.at, %.lr.ph.peel ], [ %i.az, %.lr.ph.1.peel ], [ %i.bf, %.lr.ph.2.peel ]
  %i.bg = zext nneg i32 %i.an to i64
  %i.bh = getelementptr i8, ptr %.1.peel, i64 %i.bg
  %5 = udiv i32 %.lcssa.peel, 10000000
  br label %._crit_edge.peel

._crit_edge.peel:                                 ; preds = %._crit_edge.loopexit.peel, %.preheader.peel
  %.2.lcssa.peel = phi ptr [ %.1.peel, %.preheader.peel ], [ %i.bh, %._crit_edge.loopexit.peel ]
  %.047.lcssa.peel = phi i32 [ 0, %.preheader.peel ], [ %5, %._crit_edge.loopexit.peel ]
  %i.bi = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %4) #20 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !106 ; 2 uses
  %i.bk = add i32 %i.bj, %.047.lcssa.peel
  %i.bl = zext i32 %i.bk to i64
  %i.bm = and i32 %i.am, 4
  %.not54.peel = icmp eq i32 %i.bm, 0
  br i1 %.not54.peel, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.peel
  %i.bn = add nsw i32 %i.bj, 1
  store i32 %i.bn, ptr %i.bi, align 8, !tbaa !106
  %i.bo = call i64 @mktime(ptr noundef nonnull %i.bi) #20
  store i64 %i.bo, ptr %i.a, align 8, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.peel, %bb.e
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !38
  store i64 %i.bp, ptr %i.e, align 8, !tbaa !113
  store i64 %i.bl, ptr %i.r, align 8, !tbaa !126
  br label %.peel.newph

.peel.newph:                                      ; preds = %.peel.begin, %bb.f
  %.3.peel = phi ptr [ %.2.lcssa.peel, %bb.f ], [ %i.b, %.peel.begin ]
  br label %.thread

.thread:                                          ; preds = %.peel.newph, %bb.m
  %.061 = phi i32 [ 2, %.peel.newph ], [ %i.dn, %bb.m ] ; 4 uses
  %.04960 = phi ptr [ %.3.peel, %.peel.newph ], [ %.3, %bb.m ] ; 3 uses
  store i64 0, ptr %i.a, align 8, !tbaa !38
  %i.bq = shl nuw nsw i32 %.061, 2
  %i.br = lshr i32 %i.d, %i.bq                    ; 3 uses
  %i.bs = and i32 %i.br, 8
  %.not70 = icmp eq i32 %i.bs, 0
  br i1 %.not70, label %bb.m, label %.thread72

.thread72:                                        ; preds = %.thread
  %i.bt = getelementptr inbounds nuw i8, ptr %.04960, i64 4 ; 7 uses
  %i.bu = icmp ugt ptr %i.bt, %2
  br i1 %i.bu, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.thread72
  %i.bv = load i32, ptr %.04960, align 1          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.bw = shl i32 %i.bv, 1
  %i.bx = and i32 %i.bw, 62
  store i32 %i.bx, ptr %3, align 8, !tbaa !106
  %i.by = lshr i32 %i.bv, 5
  %i.bz = and i32 %i.by, 63
  store i32 %i.bz, ptr %i.f, align 4, !tbaa !107
  %i.ca = lshr i32 %i.bv, 11
  %i.cb = and i32 %i.ca, 31
  store i32 %i.cb, ptr %i.g, align 8, !tbaa !108
  %i.cc = lshr i32 %i.bv, 16
  %i.cd = and i32 %i.cc, 31
  store i32 %i.cd, ptr %i.h, align 4, !tbaa !109
  %i.ce = lshr i32 %i.bv, 21
  %i.cf = and i32 %i.ce, 15
  %i.cg = add nsw i32 %i.cf, -1
  store i32 %i.cg, ptr %i.i, align 8, !tbaa !110
  %i.ch = lshr i32 %i.bv, 25
  %i.ci = add nuw nsw i32 %i.ch, 80
  store i32 %i.ci, ptr %i.j, align 4, !tbaa !111
  store i32 -1, ptr %i.k, align 8, !tbaa !112
  %i.cj = call noundef i64 @mktime(ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  store i64 %i.cj, ptr %i.a, align 8, !tbaa !38
  %i.ck = and i32 %i.br, 3                        ; 5 uses
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cl
  %i.cn = icmp ugt ptr %i.cm, %2
  br i1 %i.cn, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.g
  %.not62 = icmp eq i32 %i.ck, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.co = load i8, ptr %i.bt, align 1, !tbaa !37
  %i.cp = zext i8 %i.co to i32                    ; 2 uses
  %i.cq = shl nuw nsw i32 %i.cp, 16
  %exitcond.not = icmp eq i32 %i.ck, 1
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !37
  %i.ct = zext i8 %i.cs to i32
  %i.cu = shl nuw nsw i32 %i.ct, 16
  %i.cv = shl nuw nsw i32 %i.cp, 8
  %i.cw = or disjoint i32 %i.cu, %i.cv            ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.ck, 2
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !37
  %i.cz = zext i8 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 16
  %i.db = lshr exact i32 %i.cw, 8
  %i.dc = or disjoint i32 %i.da, %i.db
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %.lcssa = phi i32 [ %i.cq, %.lr.ph ], [ %i.cw, %.lr.ph.1 ], [ %i.dc, %.lr.ph.2 ]
  %i.dd = zext nneg i32 %i.ck to i64
  %i.de = getelementptr i8, ptr %i.bt, i64 %i.dd
  %6 = udiv i32 %.lcssa, 10000000
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.2.lcssa = phi ptr [ %i.bt, %.preheader ], [ %i.de, %._crit_edge.loopexit ] ; 3 uses
  %.047.lcssa = phi i32 [ 0, %.preheader ], [ %6, %._crit_edge.loopexit ]
  %i.df = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %4) #20 ; 3 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !106 ; 2 uses
  %i.dh = add i32 %i.dg, %.047.lcssa
  %i.di = zext i32 %i.dh to i64                   ; 3 uses
  %i.dj = and i32 %i.br, 4
  %.not54 = icmp eq i32 %i.dj, 0
  br i1 %.not54, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.dk = add nsw i32 %i.dg, 1
  store i32 %i.dk, ptr %i.df, align 8, !tbaa !106
  %i.dl = call i64 @mktime(ptr noundef nonnull %i.df) #20
  store i64 %i.dl, ptr %i.a, align 8, !tbaa !38
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.dm = load i64, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  switch i32 %.061, label %bb.l [
    i32 2, label %bb.j
    i32 1, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  store i64 %i.dm, ptr %i.n, align 8, !tbaa !127
  store i64 %i.di, ptr %i.o, align 8, !tbaa !128
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  store i64 %i.dm, ptr %i.l, align 8, !tbaa !129
  store i64 %i.di, ptr %i.m, align 8, !tbaa !130
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  store i64 %i.dm, ptr %i.p, align 8, !tbaa !200
  store i64 %i.di, ptr %i.q, align 8, !tbaa !201
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.j, %bb.l, %bb.k
  %.3 = phi ptr [ %.04960, %.thread ], [ %.2.lcssa, %bb.j ], [ %.2.lcssa, %bb.k ], [ %.2.lcssa, %bb.l ]
  %i.dn = add nsw i32 %.061, -1
  %.not68 = icmp eq i32 %.061, 0
  br i1 %.not68, label %.loopexit, label %.thread, !llvm.loop !199

.loopexit:                                        ; preds = %.thread72.peel, %bb.d, %bb.m, %bb.g, %.thread72, %bb.a
  %.048 = phi i32 [ -1, %bb.a ], [ -1, %.thread72.peel ], [ -1, %bb.d ], [ -1, %bb.g ], [ -1, %.thread72 ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.048
}

declare void @archive_entry_set_mtime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_ctime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_atime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_size(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @_archive_entry_copy_pathname_l(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

declare ptr @archive_string_conversion_charset_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @read_symlink_stored(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !114
  %i.f = tail call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef %i.e, ptr noundef null) #20, !inline_history !203 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.35) #20
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.d, align 8, !tbaa !114
  %i.i = tail call i32 @_archive_entry_copy_symlink_l(ptr noundef %1, ptr noundef nonnull %i.f, i64 noundef %i.h, ptr noundef %2) #20
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__errno_location() #24
  %i.k = load i32, ptr %i.j, align 4, !tbaa !131
  %i.l = icmp eq i32 %i.k, 12
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str.36) #20
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.m = tail call ptr @archive_string_conversion_charset_name(ptr noundef %2) #20
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.37, ptr noundef %i.m) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.0 = phi i32 [ -20, %bb.f ], [ 0, %bb.c ]
  %i.n = load i64, ptr %i.d, align 8, !tbaa !114
  %i.o = tail call i64 @__archive_read_consume(ptr noundef nonnull %0, i64 noundef %i.n) #20 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.b
  %.017 = phi i32 [ %.0, %bb.g ], [ -30, %bb.b ], [ -30, %bb.e ]
  ret i32 %.017
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare noundef i64 @mktime(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind
declare ptr @localtime_r(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal fastcc ptr @rar_read_ahead(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.not = icmp eq ptr %2, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 280 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 252
  br i1 %.not, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  %i.k = tail call ptr @__archive_read_ahead(ptr noundef nonnull %0, i64 noundef %1, ptr noundef null) #20
  br label %.split39

.split:                                           ; preds = %bb.a, %bb.l
  %i.l = tail call ptr @__archive_read_ahead(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %2) #20 ; 3 uses
  %i.m = load i8, ptr %i.e, align 8, !tbaa !204
  %.not34 = icmp eq i8 %i.m, 0
  %.pre = load i64, ptr %2, align 8, !tbaa !38    ; 3 uses
  br i1 %.not34, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.split
  %i.n = load i64, ptr %i.f, align 8, !tbaa !205  ; 3 uses
  %i.o = icmp sgt i64 %.pre, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %i.n, ptr %2, align 8, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.split
  %i.p = phi i64 [ %i.n, %bb.c ], [ %.pre, %bb.b ], [ %.pre, %.split ] ; 2 uses
  %i.q = load i64, ptr %i.g, align 8, !tbaa !66   ; 3 uses
  %i.r = icmp sgt i64 %i.p, %i.q
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %i.q, ptr %2, align 8, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = phi i64 [ %i.q, %bb.e ], [ %i.p, %bb.d ] ; 2 uses
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %.split39, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %bb.h, label %.split39

bb.h:                                             ; preds = %bb.g
  %i.v = load i32, ptr %i.c, align 8, !tbaa !58
  %i.w = and i32 %i.v, 1
  %.not35 = icmp eq i32 %i.w, 0
  br i1 %.not35, label %.split39, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load i32, ptr %i.d, align 8, !tbaa !67
  %i.y = and i32 %i.x, 2
  %.not36 = icmp eq i32 %i.y, 0
  br i1 %.not36, label %.split39, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.h, align 8, !tbaa !117
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !74
  %i.aa = tail call i32 @archive_read_format_rar_read_header(ptr noundef nonnull %0, ptr noundef %i.z) ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.k, label %bb.l

end_hunk_0
