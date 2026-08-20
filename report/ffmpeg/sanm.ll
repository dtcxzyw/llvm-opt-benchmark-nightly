inline.NumInlined: 57
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 76
begin_hunk_0_@init_buffers:bb.a
  tail call void @av_fast_padded_mallocz(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, i64 noundef %i.m) #14
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !36
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4216
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4244
  %i.r = load i64, ptr %i.c, align 8, !tbaa !46
  tail call void @av_fast_padded_mallocz(ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, i64 noundef %i.r) #14
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4240
  store i32 0, ptr %i.s, align 8, !tbaa !67
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !89
  %.not23 = icmp eq ptr %i.t, null
  br i1 %.not23, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !87
  %.not24 = icmp eq ptr %i.u, null
  br i1 %.not24, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !88
  %.not25 = icmp eq ptr %i.v, null
  br i1 %.not25, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4216
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !66
  %.not26 = icmp eq ptr %i.x, null
  br i1 %.not26, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr %i.n, align 8, !tbaa !36
  %.not27 = icmp eq i32 %i.y, 0
  br i1 %.not27, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.d, %bb.c
  tail call fastcc void @destroy_buffers(ptr noundef nonnull %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %.0 = phi i32 [ -12, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @make_glyphs(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 4, 9) %3) unnamed_addr #4 {
bb.a:
  %i.a = mul nuw nsw i32 %3, %3
  %i.b = add nsw i32 %3, -1                       ; 5 uses
  %i.c = zext nneg i32 %i.a to i64
  %i.d = zext nneg i32 %3 to i64                  ; 13 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.t
  %indvars.iv149 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next150, %bb.t ] ; 3 uses
  %.085132 = phi ptr [ %0, %bb.a ], [ %i.cn, %bb.t ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv149
  %i.f = load i8, ptr %i.e, align 1, !tbaa !49    ; 3 uses
  %i.g = sext i8 %i.f to i32                      ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv149
  %i.i = load i8, ptr %i.h, align 1, !tbaa !49    ; 3 uses
  %i.j = sext i8 %i.i to i32                      ; 3 uses
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %which_edge.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %i.b, %i.j
  br i1 %i.k, label %which_edge.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not11.i = icmp eq i8 %i.f, 0
  br i1 %.not11.i, label %which_edge.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp eq i32 %i.b, %i.g
  %..i = select i1 %i.l, i32 2, i32 4
  br label %which_edge.exit

which_edge.exit:                                  ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ 3, %bb.b ], [ %..i, %bb.e ], [ 0, %bb.d ], [ 1, %bb.c ] ; 7 uses
  %i.m = icmp eq i32 %.0.i, 0                     ; 2 uses
  %i.n = icmp eq i32 %.0.i, 2                     ; 2 uses
  %i.o = icmp eq i32 %.0.i, 3                     ; 2 uses
  %i.p = icmp ne i32 %.0.i, 1
  %i.q = icmp eq i32 %.0.i, 1                     ; 2 uses
  %i.r = icmp ne i32 %.0.i, 3
  %i.s = icmp ne i32 %.0.i, 0
  br label %bb.f

bb.f:                                             ; preds = %which_edge.exit, %bb.s
  %indvars.iv145 = phi i64 [ 0, %which_edge.exit ], [ %indvars.iv.next146, %bb.s ] ; 3 uses
  %.186130 = phi ptr [ %.085132, %which_edge.exit ], [ %i.cn, %bb.s ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv145
  %i.u = load i8, ptr %i.t, align 1, !tbaa !49    ; 2 uses
  %i.v = sext i8 %i.u to i32                      ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv145
  %i.x = load i8, ptr %i.w, align 1, !tbaa !49    ; 2 uses
  %i.y = sext i8 %i.x to i32                      ; 3 uses
  %.not.i97 = icmp eq i8 %i.x, 0
  br i1 %.not.i97, label %.thread116, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp eq i32 %i.b, %i.y
  br i1 %i.z, label %.thread164, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not11.i98 = icmp eq i8 %i.u, 0
  br i1 %.not11.i98, label %bb.i, label %which_edge.exit101

which_edge.exit101:                               ; preds = %bb.h
  %i.aa = icmp eq i32 %i.b, %i.v                  ; 3 uses
  %or.cond.i = and i1 %i.m, %i.aa
  br i1 %or.cond.i, label %which_direction.exit, label %.thread

.thread:                                          ; preds = %which_edge.exit101
  %..i99 = select i1 %i.aa, i32 2, i32 4
  %i.ab = and i1 %i.s, %i.aa
  br label %.thread116

bb.i:                                             ; preds = %bb.h
  br i1 %i.n, label %which_direction.exit, label %.thread116

.thread116:                                       ; preds = %bb.f, %.thread, %bb.i
  %or.cond15.i = phi i1 [ false, %.thread ], [ true, %bb.i ], [ false, %bb.f ]
  %.0.i100112115 = phi i32 [ %..i99, %.thread ], [ 0, %bb.i ], [ 3, %bb.f ] ; 2 uses
  %or.cond23.i = phi i1 [ %i.ab, %.thread ], [ false, %bb.i ], [ false, %bb.f ]
  %i.ac = icmp eq i32 %.0.i100112115, 3           ; 2 uses
  %or.cond7.i = and i1 %i.p, %i.ac
  %or.cond = or i1 %i.o, %or.cond7.i
  br i1 %or.cond, label %which_direction.exit, label %.thread164

.thread164:                                       ; preds = %.thread116, %bb.g
  %i.ad = phi i1 [ %i.ac, %.thread116 ], [ false, %bb.g ]
  %or.cond15.i161171 = phi i1 [ %or.cond15.i, %.thread116 ], [ false, %bb.g ]
  %.0.i100112115162170 = phi i32 [ %.0.i100112115, %.thread116 ], [ 1, %bb.g ] ; 4 uses
  %or.cond23.i163169 = phi i1 [ %or.cond23.i, %.thread116 ], [ false, %bb.g ]
  %i.ae = icmp ne i32 %.0.i100112115162170, 3
  %or.cond9.i = and i1 %i.q, %i.ae
  br i1 %or.cond9.i, label %which_direction.exit, label %bb.j

bb.j:                                             ; preds = %.thread164
  %i.af = icmp eq i32 %.0.i100112115162170, 1     ; 2 uses
  %or.cond11.i = and i1 %i.r, %i.af
  br i1 %or.cond11.i, label %which_direction.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = icmp ne i32 %.0.i100112115162170, 2
  %or.cond13.i = and i1 %i.m, %i.ag
  %or.cond48.i = or i1 %or.cond15.i161171, %or.cond13.i
  br i1 %or.cond48.i, label %which_direction.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %or.cond17.i = and i1 %i.q, %i.ad
  %or.cond19.i = and i1 %i.o, %i.af
  %or.cond49.i = or i1 %or.cond17.i, %or.cond19.i
  %i.ah = icmp ne i32 %.0.i100112115162170, 0
  %or.cond21.i = and i1 %i.n, %i.ah
  %or.cond50.i = or i1 %or.cond21.i, %or.cond49.i
  %or.cond51.i = or i1 %or.cond23.i163169, %or.cond50.i
  %spec.select = select i1 %or.cond51.i, i32 2, i32 4
  br label %which_direction.exit

which_direction.exit:                             ; preds = %bb.l, %which_edge.exit101, %bb.i, %.thread116, %.thread164, %bb.j, %bb.k
  %.0.i102 = phi i32 [ %spec.select, %bb.l ], [ 1, %which_edge.exit101 ], [ 3, %.thread164 ], [ 0, %bb.k ], [ 3, %bb.j ], [ 1, %.thread116 ], [ 1, %bb.i ]
  %i.ai = sub nsw i32 %i.v, %i.g
  %i.aj = tail call i32 @llvm.abs.i32(i32 %i.ai, i1 true)
  %i.ak = sub nsw i32 %i.y, %i.j
  %i.al = tail call i32 @llvm.abs.i32(i32 %i.ak, i1 true)
  %i.am = tail call i32 @llvm.umax.i32(i32 %i.aj, i32 %i.al) ; 6 uses
  %.not.i103 = icmp eq i32 %i.am, 0
  %i.an = lshr i32 %i.am, 1                       ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %which_direction.exit, %.loopexit
  %.082129 = phi i32 [ 0, %which_direction.exit ], [ %i.cm, %.loopexit ] ; 5 uses
  br i1 %.not.i103, label %interp_point.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = mul nsw i32 %.082129, %i.g
  %i.ap = sub nsw i32 %i.am, %.082129             ; 2 uses
  %i.aq = mul nsw i32 %i.ap, %i.v
  %i.ar = add i32 %i.ao, %i.an
  %i.as = add i32 %i.ar, %i.aq
  %i.at = sdiv i32 %i.as, %i.am
  %i.au = mul nsw i32 %.082129, %i.j
  %i.av = mul nsw i32 %i.ap, %i.y
  %i.aw = add i32 %i.au, %i.an
  %i.ax = add i32 %i.aw, %i.av
  %i.ay = sdiv i32 %i.ax, %i.am
  %i.az = trunc i32 %i.ay to i8
  %i.ba = trunc i32 %i.at to i8
  br label %interp_point.exit

interp_point.exit:                                ; preds = %bb.m, %bb.n
  %.sink20.in.i = phi i8 [ %i.ba, %bb.n ], [ %i.f, %bb.m ] ; 8 uses
  %.sink.in.i = phi i8 [ %i.az, %bb.n ], [ %i.i, %bb.m ] ; 7 uses
  switch i32 %.0.i102, label %.loopexit [
    i32 1, label %bb.o
    i32 3, label %bb.p
    i32 0, label %bb.q
    i32 2, label %bb.r
  ]

bb.o:                                             ; preds = %interp_point.exit
  %i.bb = icmp sgt i8 %.sink.in.i, -1
  br i1 %i.bb, label %.lr.ph128, label %.loopexit

.lr.ph128:                                        ; preds = %bb.o
  %i.bc = zext nneg i8 %.sink.in.i to i64         ; 3 uses
  %i.bd = sext i8 %.sink20.in.i to i64
  %invariant.gep173 = getelementptr i8, ptr %.186130, i64 %i.bd ; 5 uses
  %i.be = add nuw nsw i64 %i.bc, 1
  %xtraiter179 = and i64 %i.be, 3                 ; 2 uses
  %lcmp.mod180.not = icmp eq i64 %xtraiter179, 0
  br i1 %lcmp.mod180.not, label %.prol.loopexit178, label %.prol.preheader177

.prol.preheader177:                               ; preds = %.lr.ph128, %.prol.preheader177
  %indvars.iv141.prol = phi i64 [ %indvars.iv.next142.prol, %.prol.preheader177 ], [ %i.bc, %.lr.ph128 ] ; 2 uses
  %prol.iter181 = phi i64 [ %prol.iter181.next, %.prol.preheader177 ], [ 0, %.lr.ph128 ]
  %i.bf = mul nuw nsw i64 %indvars.iv141.prol, %i.d
  %gep174.prol = getelementptr i8, ptr %invariant.gep173, i64 %i.bf
  store i8 1, ptr %gep174.prol, align 1, !tbaa !49
  %indvars.iv.next142.prol = add nsw i64 %indvars.iv141.prol, -1 ; 2 uses
  %prol.iter181.next = add i64 %prol.iter181, 1   ; 2 uses
  %prol.iter181.cmp.not = icmp eq i64 %prol.iter181.next, %xtraiter179
  br i1 %prol.iter181.cmp.not, label %.prol.loopexit178, label %.prol.preheader177, !llvm.loop !93

.prol.loopexit178:                                ; preds = %.prol.preheader177, %.lr.ph128
  %indvars.iv141.unr = phi i64 [ %i.bc, %.lr.ph128 ], [ %indvars.iv.next142.prol, %.prol.preheader177 ]
  %i.bg = icmp ult i8 %.sink.in.i, 3
  br i1 %i.bg, label %.loopexit, label %.lr.ph128.new

.lr.ph128.new:                                    ; preds = %.prol.loopexit178, %.lr.ph128.new
  %indvars.iv141 = phi i64 [ %indvars.iv.next142.3, %.lr.ph128.new ], [ %indvars.iv141.unr, %.prol.loopexit178 ] ; 5 uses
  %i.bh = mul nuw nsw i64 %indvars.iv141, %i.d
  %gep174 = getelementptr i8, ptr %invariant.gep173, i64 %i.bh
  store i8 1, ptr %gep174, align 1, !tbaa !49
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, -1
  %i.bi = mul nuw nsw i64 %indvars.iv.next142, %i.d
  %gep174.1 = getelementptr i8, ptr %invariant.gep173, i64 %i.bi
  store i8 1, ptr %gep174.1, align 1, !tbaa !49
  %indvars.iv.next142.1 = add nsw i64 %indvars.iv141, -2
  %i.bj = mul nuw nsw i64 %indvars.iv.next142.1, %i.d
  %gep174.2 = getelementptr i8, ptr %invariant.gep173, i64 %i.bj
  store i8 1, ptr %gep174.2, align 1, !tbaa !49
  %indvars.iv.next142.2 = add nsw i64 %indvars.iv141, -3 ; 2 uses
  %i.bk = mul nuw nsw i64 %indvars.iv.next142.2, %i.d
  %gep174.3 = getelementptr i8, ptr %invariant.gep173, i64 %i.bk
  store i8 1, ptr %gep174.3, align 1, !tbaa !49
  %indvars.iv.next142.3 = add nsw i64 %indvars.iv141, -4
  %.not.3 = icmp eq i64 %indvars.iv.next142.2, 0
  br i1 %.not.3, label %.loopexit, label %.lr.ph128.new, !llvm.loop !94

bb.p:                                             ; preds = %interp_point.exit
  %i.bl = sext i8 %.sink.in.i to i32
  %i.bm = icmp sgt i32 %3, %i.bl
  br i1 %i.bm, label %.lr.ph126, label %.loopexit

.lr.ph126:                                        ; preds = %bb.p
  %i.bn = sext i8 %.sink.in.i to i64              ; 4 uses
  %i.bo = sext i8 %.sink20.in.i to i64
  %invariant.gep = getelementptr i8, ptr %.186130, i64 %i.bo ; 5 uses
  %i.bp = sub nsw i64 %i.d, %i.bn
  %xtraiter = and i64 %i.bp, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph126, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.bn, %.lr.ph126 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph126 ]
  %i.bq = mul nsw i64 %indvars.iv.prol, %i.d
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %i.bq
  store i8 1, ptr %gep.prol, align 1, !tbaa !49
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !95

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph126
  %indvars.iv.unr = phi i64 [ %i.bn, %.lr.ph126 ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.br = sub nsw i64 %i.bn, %i.d
  %i.bs = icmp ugt i64 %i.br, -4
  br i1 %i.bs, label %.loopexit, label %.lr.ph126.new

.lr.ph126.new:                                    ; preds = %.prol.loopexit, %.lr.ph126.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph126.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %i.bt = mul nsw i64 %indvars.iv, %i.d
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.bt
  store i8 1, ptr %gep, align 1, !tbaa !49
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.bu = mul nsw i64 %indvars.iv.next, %i.d
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.bu
  store i8 1, ptr %gep.1, align 1, !tbaa !49
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %i.bv = mul nsw i64 %indvars.iv.next.1, %i.d
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.bv
  store i8 1, ptr %gep.2, align 1, !tbaa !49
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3
  %i.bw = mul nsw i64 %indvars.iv.next.2, %i.d
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.bw
  store i8 1, ptr %gep.3, align 1, !tbaa !49
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.d
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph126.new, !llvm.loop !96

bb.q:                                             ; preds = %interp_point.exit
  %i.bx = icmp sgt i8 %.sink20.in.i, -1
  br i1 %i.bx, label %.lr.ph124, label %.loopexit

.lr.ph124:                                        ; preds = %bb.q
  %i.by = sext i8 %.sink.in.i to i32
  %i.bz = mul nsw i32 %3, %i.by
  %4 = zext nneg i8 %.sink20.in.i to i64
  %i.ca = sext i32 %i.bz to i64
  %5 = add nsw i64 %4, %i.ca
  %i.cb = zext nneg i8 %.sink20.in.i to i64
  %i.cc = sub nsw i64 %5, %i.cb
  %scevgep138 = getelementptr i8, ptr %.186130, i64 %i.cc
  %narrow = add nuw i8 %.sink20.in.i, 1
  %i.cd = zext i8 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep138, i8 1, i64 %i.cd, i1 false), !tbaa !49
  br label %.loopexit

bb.r:                                             ; preds = %interp_point.exit
  %i.ce = sext i8 %.sink20.in.i to i32            ; 2 uses
  %i.cf = icmp sgt i32 %3, %i.ce
  br i1 %i.cf, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.r
  %i.cg = sext i8 %.sink.in.i to i32
  %i.ch = mul nsw i32 %3, %i.cg
  %6 = sext i8 %.sink20.in.i to i64
  %i.ci = sext i32 %i.ch to i64
  %7 = getelementptr i8, ptr %.186130, i64 %6
  %scevgep = getelementptr i8, ptr %7, i64 %i.ci
  %i.cj = sub nsw i32 %i.b, %i.ce
  %i.ck = zext i32 %i.cj to i64
  %i.cl = add nuw nsw i64 %i.ck, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 1, i64 %i.cl, i1 false), !tbaa !49
  br label %.loopexit

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph126.new, %.prol.loopexit178, %.lr.ph128.new, %.lr.ph, %.lr.ph124, %bb.r, %bb.q, %bb.p, %bb.o, %interp_point.exit
  %i.cm = add nuw i32 %.082129, 1
  %exitcond144.not = icmp eq i32 %.082129, %i.am
  br i1 %exitcond144.not, label %bb.s, label %bb.m, !llvm.loop !97

bb.s:                                             ; preds = %.loopexit
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %i.cn = getelementptr i8, ptr %.186130, i64 %i.c ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next146, 16
  br i1 %exitcond148.not, label %bb.t, label %bb.f, !llvm.loop !98

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next150, 16
  br i1 %exitcond152.not, label %bb.u, label %bb.b, !llvm.loop !99

bb.u:                                             ; preds = %bb.t
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @av_fast_padded_mallocz(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @destroy_buffers(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4184
  tail call void @av_freep(ptr noundef nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4192
  tail call void @av_freep(ptr noundef nonnull %i.b) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4200
  tail call void @av_freep(ptr noundef nonnull %i.c) #14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4208
  tail call void @av_freep(ptr noundef nonnull %i.d) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4216
  tail call void @av_freep(ptr noundef nonnull %i.e) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4248
  tail call void @av_freep(ptr noundef nonnull %i.f) #14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4236
  store i32 0, ptr %i.g, align 4, !tbaa !90
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4232
  store i32 0, ptr %i.h, align 8, !tbaa !91
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4228
  store i32 0, ptr %i.i, align 4, !tbaa !100
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4264
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  ret void
}

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @process_frame_obj(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !63     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !63
  %i.c = load i8, ptr %i.a, align 1, !tbaa !49    ; 11 uses
  %i.d = zext i8 %i.c to i32                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !63
  %i.f = load i8, ptr %i.b, align 1, !tbaa !49    ; 30 uses
  %i.g = zext i8 %i.f to i32                      ; 34 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !63
  %i.i = load i16, ptr %i.e, align 1, !tbaa !49   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  store ptr %i.j, ptr %1, align 8, !tbaa !63
  %i.k = load i16, ptr %i.h, align 1, !tbaa !49   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !63
  %i.m = load i16, ptr %i.j, align 1, !tbaa !49   ; 5 uses
  %i.n = zext i16 %i.m to i32                     ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 3 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !63
  %i.p = load i16, ptr %i.l, align 1, !tbaa !49
  %.fr571 = freeze i16 %i.p                       ; 5 uses
  %i.q = zext i16 %.fr571 to i32                  ; 18 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 14 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !61
  %i.t = ptrtoint ptr %i.s to i64                 ; 4 uses
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = sub i64 %i.t, %i.u
  %..i = tail call i64 @llvm.smin.i64(i64 %i.v, i64 2)
  %i.w = getelementptr inbounds i8, ptr %i.o, i64 %..i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 3 uses
  store ptr %i.x, ptr %1, align 8, !tbaa !63
  %i.y = load i16, ptr %i.w, align 1, !tbaa !49   ; 4 uses
  %i.z = add i16 %i.m, -641
  %i.aa = icmp ult i16 %i.z, -640
  %i.ab = add i16 %.fr571, -481
  %i.ac = icmp ult i16 %i.ab, -480
  %or.cond9 = or i1 %i.aa, %i.ac
  %i.ad = sext i16 %i.i to i32                    ; 2 uses
  %i.ae = icmp sgt i16 %i.i, 640
  %or.cond12 = select i1 %or.cond9, i1 true, i1 %i.ae
  %i.af = sext i16 %i.k to i32                    ; 2 uses
  %i.ag = icmp sgt i16 %i.k, 480
  %or.cond15 = select i1 %or.cond12, i1 true, i1 %i.ag
  %i.ah = add nsw i32 %i.n, %i.ad
  %i.ai = icmp slt i32 %i.ah, 1
  %or.cond250 = select i1 %or.cond15, i1 true, i1 %i.ai
  %i.aj = add nsw i32 %i.q, %i.af
  %i.ak = icmp slt i32 %i.aj, 1
  %or.cond252 = select i1 %or.cond250, i1 true, i1 %i.ak
  br i1 %or.cond252, label %bb.b, label %switch.edge

bb.b:                                             ; preds = %bb.a
  %i.al = icmp eq i8 %i.c, 45
  br i1 %i.al, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.am = ptrtoint ptr %i.x to i64
  %i.an = sub i64 %i.t, %i.am                     ; 2 uses
  %i.ao = trunc i64 %i.an to i32
  %i.ap = icmp slt i32 %i.ao, 6
  br i1 %i.ap, label %old_codec45.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %..i91.i = tail call i64 @llvm.smin.i64(i64 %i.an, i64 2)
  %i.aq = getelementptr inbounds i8, ptr %i.x, i64 %..i91.i ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2 ; 2 uses
  store ptr %i.ar, ptr %1, align 8, !tbaa !63
  %i.as = load i16, ptr %i.aq, align 1, !tbaa !49
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 3 ; 3 uses
  store ptr %i.at, ptr %1, align 8, !tbaa !63
  %i.au = load i8, ptr %i.ar, align 1, !tbaa !49
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.t, %i.av
  %..i.i = tail call i64 @llvm.smin.i64(i64 %i.aw, i64 1)
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %..i.i ; 3 uses
  store ptr %i.ax, ptr %1, align 8, !tbaa !59
  %.not.i = icmp ne i8 %i.au, 1
  %i.ay = icmp ne i16 %i.as, 0
  %or.cond.not345 = select i1 %.not.i, i1 true, i1 %i.ay
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.t, %i.az
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = icmp slt i32 %i.bb, 768
  %or.cond306 = select i1 %or.cond.not345, i1 true, i1 %i.bc
  br i1 %or.cond306, label %old_codec45.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 99270
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(768) %i.bd, ptr noundef nonnull align 1 dereferenceable(768) %i.ax, i64 768, i1 false)
  %i.be = load ptr, ptr %1, align 8, !tbaa !59
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 768 ; 3 uses
  store ptr %i.bf, ptr %1, align 8, !tbaa !59
  %i.bg = load ptr, ptr %i.r, align 8, !tbaa !61
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = icmp sgt i32 %i.bk, 1
  br i1 %i.bl, label %.lr.ph.i, label %old_codec45.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 100038
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %i.bn = phi ptr [ %i.bf, %.lr.ph.i ], [ %i.cd, %bb.f ] ; 3 uses
  %.08495.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cb, %bb.f ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 2 uses
  store ptr %i.bo, ptr %1, align 8, !tbaa !63
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !49  ; 2 uses
  %i.bq = zext i8 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  store ptr %i.br, ptr %1, align 8, !tbaa !63
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !49
  %i.bt = add nuw nsw i32 %.08495.i, %i.bq
  %i.bu = icmp samesign ugt i32 %i.bt, 32768
  %i.bv = trunc i32 %.08495.i to i8
  %i.bw = sub i8 0, %i.bv
  %.087.i = select i1 %i.bu, i8 %i.bw, i8 %i.bp   ; 2 uses
  %i.bx = zext nneg i32 %.08495.i to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bx
  %i.bz = zext i8 %.087.i to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.by, i8 %i.bs, i64 %i.bz, i1 false)
  %i.ca = zext i8 %.087.i to i32
  %i.cb = add nuw nsw i32 %.08495.i, %i.ca        ; 2 uses
  %i.cc = load ptr, ptr %i.r, align 8, !tbaa !61
  %i.cd = load ptr, ptr %1, align 8, !tbaa !59    ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = trunc i64 %i.cg to i32
end_hunk_0
