Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vc1?download=true
inline.NumInlined: 199
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 15
begin_hunk_0_@vop_dquant_decoding:bb.a
  %i.l = zext i1 %i.k to i32
  %spec.select.i = add i32 %.pre, %i.l            ; 4 uses
  %i.m = zext i8 %i.h to i32
  %i.n = and i32 %.pre, 7
  %i.o = shl nuw nsw i32 %i.m, %i.n
  %i.p = lshr i32 %i.o, 7
  store i32 %spec.select.i, ptr %.phi.trans.insert, align 8, !tbaa !21
  %i.q = and i32 %i.p, 1                          ; 2 uses
  %i.r = trunc nuw nsw i32 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 6408
  store i8 %i.r, ptr %i.s, align 8, !tbaa !110
  %.not21 = icmp eq i32 %i.q, 0
  br i1 %.not21, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = lshr i32 %spec.select.i, 3
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u
  %i.w = load i32, ptr %i.v, align 1, !tbaa !19
  %i.x = tail call i32 @llvm.bswap.i32(i32 %i.w)
  %i.y = and i32 %spec.select.i, 7
  %i.z = shl i32 %i.x, %i.y
  %i.aa = lshr i32 %i.z, 30
  %i.ab = add i32 %spec.select.i, 2
  %i.ac = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.ab) ; 9 uses
  store i32 %i.ac, ptr %.phi.trans.insert, align 8, !tbaa !21
  %i.ad = trunc nuw nsw i32 %i.aa to i8           ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 6409
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !205
  switch i8 %i.ad, label %default.unreachable [
    i8 2, label %bb.d
    i8 1, label %bb.d
    i8 3, label %bb.e
    i8 0, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.af = lshr i32 %i.ac, 3
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 1, !tbaa !19
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ai)
  %i.ak = and i32 %i.ac, 7
  %i.al = shl i32 %i.aj, %i.ak
  %i.am = lshr i32 %i.al, 30
  %i.an = add i32 %i.ac, 2
  %i.ao = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.an) ; 2 uses
  store i32 %i.ao, ptr %.phi.trans.insert, align 8, !tbaa !21
  %i.ap = trunc nuw nsw i32 %i.am to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 6410
  store i8 %i.ap, ptr %i.aq, align 2, !tbaa !206
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.ar = lshr i32 %i.ac, 3
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !19
  %i.av = icmp slt i32 %i.ac, %i.j
  %i.aw = zext i1 %i.av to i32
  %spec.select.i23 = add i32 %i.ac, %i.aw         ; 2 uses
  %i.ax = zext i8 %i.au to i32
  %i.ay = and i32 %i.ac, 7
  %i.az = shl nuw nsw i32 %i.ax, %i.ay
  %i.ba = lshr i32 %i.az, 7
  store i32 %spec.select.i23, ptr %.phi.trans.insert, align 8, !tbaa !21
  %i.bb = and i32 %i.ba, 1                        ; 2 uses
  %i.bc = trunc nuw nsw i32 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 6411
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !207
  %.not22 = icmp eq i32 %i.bb, 0
  br i1 %.not22, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 6500
  store i8 0, ptr %i.be, align 4, !tbaa !108
  br label %bb.j

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %._crit_edge, %bb.c, %bb.d, %bb.e
  %i.bf = phi ptr [ %.pre26, %._crit_edge ], [ %i.d, %bb.c ], [ %i.d, %bb.d ], [ %i.d, %bb.e ] ; 2 uses
  %i.bg = phi i32 [ %.pre25, %._crit_edge ], [ %i.j, %bb.c ], [ %i.j, %bb.d ], [ %i.j, %bb.e ] ; 2 uses
  %i.bh = phi i32 [ %.pre, %._crit_edge ], [ %i.ac, %bb.c ], [ %i.ao, %bb.d ], [ %spec.select.i23, %bb.e ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4392 ; 2 uses
  %i.bj = lshr i32 %i.bh, 3
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 1, !tbaa !19
  %i.bn = tail call i32 @llvm.bswap.i32(i32 %i.bm)
  %i.bo = and i32 %i.bh, 7
  %i.bp = shl i32 %i.bn, %i.bo
  %i.bq = lshr i32 %i.bp, 29                      ; 2 uses
  %i.br = add i32 %i.bh, 3
  %i.bs = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 %i.br) ; 4 uses
  store i32 %i.bs, ptr %i.bi, align 8, !tbaa !21
  %i.bt = icmp eq i32 %i.bq, 7
  br i1 %i.bt, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bu = lshr i32 %i.bs, 3
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 1, !tbaa !19
  %i.by = tail call i32 @llvm.bswap.i32(i32 %i.bx)
  %i.bz = and i32 %i.bs, 7
  %i.ca = shl i32 %i.by, %i.bz
  %i.cb = lshr i32 %i.ca, 27
  %i.cc = add i32 %i.bs, 5
  %i.cd = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 %i.cc)
  store i32 %i.cd, ptr %i.bi, align 8, !tbaa !21
  %i.ce = trunc nuw nsw i32 %i.cb to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 6121
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !208
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 6120
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !106
  %i.ci = trunc nuw nsw i32 %i.bq to i8
  %i.cj = add nuw nsw i8 %i.ci, 1
  %i.ck = add i8 %i.cj, %i.ch
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 6121
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !208
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.b, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 3) i32 @decode012(ptr nofree noundef captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.d = lshr i32 %i.b, 3
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %i.j = icmp slt i32 %i.b, %i.i
  %i.k = zext i1 %i.j to i32
  %spec.select.i = add i32 %i.b, %i.k             ; 5 uses
  %i.l = zext i8 %i.g to i32
  %i.m = and i32 %i.b, 7
  store i32 %spec.select.i, ptr %i.a, align 8, !tbaa !21
  %i.n = lshr exact i32 128, %i.m
  %i.o = and i32 %i.n, %i.l
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = lshr i32 %spec.select.i, 3
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !19
  %i.u = icmp slt i32 %spec.select.i, %i.i
  %i.v = zext i1 %i.u to i32
  %spec.select.i3 = add i32 %spec.select.i, %i.v
  %i.w = zext i8 %i.t to i32
  %i.x = and i32 %spec.select.i, 7
  %i.y = shl nuw nsw i32 %i.w, %i.x
  %i.z = lshr i32 %i.y, 7
  store i32 %spec.select.i3, ptr %i.a, align 8, !tbaa !21
  %i.aa = and i32 %i.z, 1
  %i.ab = add nuw nsw i32 %i.aa, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.ab, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1094995529, 1) i32 @ff_vc1_parse_frame_header_adv(ptr noundef initializes((9968, 9972), (10104, 10108)) %0, ptr nofree noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x [256 x i8]], align 16        ; 4 uses
  %i.b = alloca [2 x [256 x i8]], align 16        ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9968 ; 4 uses
  store i32 0, ptr %i.c, align 16, !tbaa !217
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10104 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !218
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9960 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !219
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9700
  %i.h = load i32, ptr %i.g, align 4, !tbaa !97
  %.not787 = icmp eq i32 %i.h, 2
  br i1 %.not787, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9952
  %i.j = load i32, ptr %i.i, align 16, !tbaa !96
  %.not788 = icmp eq i32 %i.j, 1
  br i1 %.not788, label %2, label %.critedge

2:                                                ; preds = %bb.c
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 9956
  %4 = load i32, ptr %3, align 4, !tbaa !220      ; 3 uses
  %5 = and i32 %4, 4
  %.not789 = icmp eq i32 %5, 0
  br i1 %.not789, label %10, label %6

6:                                                ; preds = %2
  %7 = shl i32 %4, 2
  %8 = and i32 %7, 4
  %9 = or disjoint i32 %8, 3
  br label %bb.d

10:                                               ; preds = %2
  %11 = and i32 %4, 1
  %12 = add nuw nsw i32 %11, 1
  br label %bb.d

bb.d:                                             ; preds = %10, %6
  %.sink = phi i32 [ %12, %10 ], [ %9, %6 ]       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1280
  store i32 %.sink, ptr %i.k, align 16, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !221
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !224
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  store i32 %.sink, ptr %i.o, align 8, !tbaa !229
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 10016
  %i.q = load i32, ptr %i.p, align 16, !tbaa !230
  %.not792 = icmp eq i32 %i.q, 0
  br i1 %.not792, label %bb.ay, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 6004 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !60
  %.not793 = icmp eq i32 %i.s, 0                  ; 2 uses
  br i1 %.not793, label %decode012.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !21   ; 4 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.w = lshr i32 %i.u, 3
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !22 ; 2 uses
  %i.ac = icmp slt i32 %i.u, %i.ab
  %i.ad = zext i1 %i.ac to i32
  %spec.select.i.i = add i32 %i.u, %i.ad          ; 5 uses
  %i.ae = zext i8 %i.z to i32
  %i.af = and i32 %i.u, 7
  store i32 %spec.select.i.i, ptr %i.t, align 8, !tbaa !21
  %i.ag = lshr exact i32 128, %i.af
  %i.ah = and i32 %i.ag, %i.ae
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %decode012.exit.thread, label %decode012.exit

decode012.exit:                                   ; preds = %bb.f
  %i.aj = lshr i32 %spec.select.i.i, 3
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !19
  %i.an = icmp slt i32 %spec.select.i.i, %i.ab
  %i.ao = zext i1 %i.an to i32
  %spec.select.i3.i = add i32 %spec.select.i.i, %i.ao
  %i.ap = zext i8 %i.am to i32
  %i.aq = and i32 %spec.select.i.i, 7
  %i.ar = shl nuw nsw i32 %i.ap, %i.aq
  %.fr945 = freeze i32 %i.ar
  %i.as = lshr i32 %.fr945, 7
  store i32 %spec.select.i3.i, ptr %i.t, align 8, !tbaa !21
  %i.at = and i32 %i.as, 1
  %i.au = add nuw nsw i32 %i.at, 1                ; 2 uses
  %i.av = icmp eq i32 %i.au, 2
  %spec.select = zext i1 %i.av to i32
  br label %decode012.exit.thread

decode012.exit.thread:                            ; preds = %decode012.exit, %bb.f, %bb.e
  %.0720 = phi i32 [ 0, %bb.e ], [ 0, %bb.f ], [ %i.au, %decode012.exit ]
  %.0719 = phi i32 [ 0, %bb.e ], [ 0, %bb.f ], [ %spec.select, %decode012.exit ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 10012
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !116
  %.not794 = icmp eq i32 %i.ax, 0
  br i1 %.not794, label %bb.g, label %bb.h

bb.g:                                             ; preds = %decode012.exit.thread
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 9952
  %i.az = load i32, ptr %i.ay, align 16, !tbaa !96
  %.not795 = icmp eq i32 %i.az, %.0719
  br i1 %.not795, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g, %decode012.exit.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 9952 ; 2 uses
  store i32 %.0719, ptr %i.ba, align 16, !tbaa !96
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 9700 ; 2 uses
  store i32 %.0720, ptr %i.bb, align 4, !tbaa !97
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !133 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !231
  %i.bg = add nsw i32 %i.bf, 15
  %i.bh = ashr i32 %i.bg, 4                       ; 4 uses
  %i.bi = icmp eq i32 %i.bd, %i.bh
  br i1 %i.bi, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = add nsw i32 %i.bh, 1
  %i.bk = and i32 %i.bj, -2
  %i.bl = icmp eq i32 %i.bd, %i.bk
  br i1 %i.bl, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 873) #11
  tail call void @abort() #12
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.h
  %.not796 = icmp eq i32 %.0719, 0
  br i1 %.not796, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = add nsw i32 %i.bh, 1
  %i.bn = and i32 %i.bm, -2
  store i32 %i.bn, ptr %i.bc, align 8, !tbaa !133
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !21 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !22 ; 3 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !23    ; 3 uses
  %i.bt = lshr i32 %i.bp, 3
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 1, !tbaa !19
  %i.bx = tail call i32 @llvm.bswap.i32(i32 %i.bw)
  %i.by = and i32 %i.bp, 7
  %i.bz = shl i32 %i.bx, %i.by                    ; 3 uses
  %i.ca = lshr i32 %i.bz, 29                      ; 2 uses
  %i.cb = add i32 %i.bp, 3
  %i.cc = tail call i32 @llvm.umin.i32(i32 %i.br, i32 %i.cb) ; 3 uses
  store i32 %i.cc, ptr %i.bo, align 8, !tbaa !21
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 9956
  store i32 %i.ca, ptr %i.cd, align 4, !tbaa !220
  %.not797 = icmp sgt i32 %i.bz, -1
  br i1 %.not797, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %13 = shl nuw nsw i32 %i.ca, 1
  %14 = and i32 %13, 4
  %15 = or disjoint i32 %14, 3
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1280
  store i32 %15, ptr %i.ce, align 16, !tbaa !99
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  %.not798 = icmp samesign ult i32 %i.bz, 1073741824
  %i.cf = select i1 %.not798, i32 1, i32 2
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1280
  store i32 %i.cf, ptr %i.cg, align 16, !tbaa !99
  br label %bb.v

bb.o:                                             ; preds = %bb.k
  store i32 %i.bh, ptr %i.bc, align 8, !tbaa !133
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ci = load ptr, ptr %1, align 8, !tbaa !23    ; 9 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !22 ; 9 uses
  %.promoted.i = load i32, ptr %i.ch, align 8, !tbaa !21 ; 4 uses
  %i.cl = lshr i32 %.promoted.i, 3
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !19
  %i.cp = icmp slt i32 %.promoted.i, %i.ck
  %i.cq = zext i1 %i.cp to i32
  %spec.select.i.i903 = add i32 %.promoted.i, %i.cq ; 6 uses
  %i.cr = zext i8 %i.co to i32
  %i.cs = and i32 %.promoted.i, 7
  store i32 %spec.select.i.i903, ptr %i.ch, align 8, !tbaa !21
  %i.ct = lshr exact i32 128, %i.cs
  %i.cu = and i32 %i.ct, %i.cr
  %.not.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cv = lshr i32 %spec.select.i.i903, 3
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !19
  %i.cz = icmp slt i32 %spec.select.i.i903, %i.ck
  %i.da = zext i1 %i.cz to i32
  %spec.select.i.i903.1 = add i32 %spec.select.i.i903, %i.da ; 6 uses
  %i.db = zext i8 %i.cy to i32
  %i.dc = and i32 %spec.select.i.i903, 7
  store i32 %spec.select.i.i903.1, ptr %i.ch, align 8, !tbaa !21
  %i.dd = lshr exact i32 128, %i.dc
  %i.de = and i32 %i.dd, %i.db
  %.not.i.1 = icmp eq i32 %i.de, 0
  br i1 %.not.i.1, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.df = lshr i32 %spec.select.i.i903.1, 3
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !19
  %i.dj = icmp slt i32 %spec.select.i.i903.1, %i.ck
  %i.dk = zext i1 %i.dj to i32
  %spec.select.i.i903.2 = add i32 %spec.select.i.i903.1, %i.dk ; 6 uses
  %i.dl = zext i8 %i.di to i32
  %i.dm = and i32 %spec.select.i.i903.1, 7
  store i32 %spec.select.i.i903.2, ptr %i.ch, align 8, !tbaa !21
  %i.dn = lshr exact i32 128, %i.dm
  %i.do = and i32 %i.dn, %i.dl
  %.not.i.2 = icmp eq i32 %i.do, 0
  br i1 %.not.i.2, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dp = lshr i32 %spec.select.i.i903.2, 3
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !19
  %i.dt = icmp slt i32 %spec.select.i.i903.2, %i.ck
  %i.du = zext i1 %i.dt to i32
  %spec.select.i.i903.3 = add i32 %spec.select.i.i903.2, %i.du ; 3 uses
  %i.dv = zext i8 %i.ds to i32
  %i.dw = and i32 %spec.select.i.i903.2, 7
  store i32 %spec.select.i.i903.3, ptr %i.ch, align 8, !tbaa !21
  %i.dx = lshr exact i32 128, %i.dw
  %i.dy = and i32 %i.dx, %i.dv
  %.not.i.3 = icmp eq i32 %i.dy, 0
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  br i1 %.not.i.3, label %get_unary.exit, label %get_unary.exit.thread

bb.s:                                             ; preds = %bb.o
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1280
  store i32 2, ptr %i.ea, align 16, !tbaa !99
  br label %bb.v

bb.t:                                             ; preds = %bb.p
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1280
  store i32 3, ptr %i.eb, align 16, !tbaa !99
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1280
  store i32 1, ptr %i.ec, align 16, !tbaa !99
  br label %bb.v

get_unary.exit:                                   ; preds = %bb.r
  store i32 7, ptr %i.dz, align 16, !tbaa !99
  br label %bb.v

get_unary.exit.thread:                            ; preds = %bb.r
  store i32 2, ptr %i.dz, align 16, !tbaa !99
  store i32 1, ptr %i.d, align 8, !tbaa !218
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u, %get_unary.exit, %get_unary.exit.thread, %bb.m, %bb.n
  %i.ed = phi i32 [ 0, %bb.n ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %get_unary.exit ], [ 1, %get_unary.exit.thread ], [ 0, %bb.m ]
  %i.ee = phi ptr [ %i.bs, %bb.n ], [ %i.ci, %bb.s ], [ %i.ci, %bb.t ], [ %i.ci, %bb.u ], [ %i.ci, %get_unary.exit ], [ %i.ci, %get_unary.exit.thread ], [ %i.bs, %bb.m ] ; 3 uses
  %i.ef = phi i32 [ %i.br, %bb.n ], [ %i.ck, %bb.s ], [ %i.ck, %bb.t ], [ %i.ck, %bb.u ], [ %i.ck, %get_unary.exit ], [ %i.ck, %get_unary.exit.thread ], [ %i.br, %bb.m ] ; 4 uses
  %i.eg = phi i32 [ %i.cc, %bb.n ], [ %spec.select.i.i903, %bb.s ], [ %spec.select.i.i903.1, %bb.t ], [ %spec.select.i.i903.2, %bb.u ], [ %spec.select.i.i903.3, %get_unary.exit ], [ %spec.select.i.i903.3, %get_unary.exit.thread ], [ %i.cc, %bb.m ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 6008
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !61
  %.not800 = icmp eq i32 %i.ei, 0
  br i1 %.not800, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ek = add i32 %i.eg, 8
  %i.el = tail call i32 @llvm.umin.i32(i32 %i.ef, i32 %i.ek) ; 2 uses
  store i32 %i.el, ptr %i.ej, align 8, !tbaa !21
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.em = phi i32 [ %i.el, %bb.w ], [ %i.eg, %bb.v ] ; 7 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 6000
  %i.eo = load i32, ptr %i.en, align 16, !tbaa !59
  %.not801 = icmp eq i32 %i.eo, 0
  br i1 %.not801, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not793, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 6040
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !64
  %.not803 = icmp eq i32 %i.eq, 0
  br i1 %.not803, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.es = lshr i32 %i.em, 3
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 1, !tbaa !19
  %i.ew = tail call i32 @llvm.bswap.i32(i32 %i.ev)
  %i.ex = and i32 %i.em, 7
  %i.ey = shl i32 %i.ew, %i.ex
  %i.ez = lshr i32 %i.ey, 30
  %i.fa = add i32 %i.em, 2
  %i.fb = tail call i32 @llvm.umin.i32(i32 %i.ef, i32 %i.fa)
  store i32 %i.fb, ptr %i.er, align 8, !tbaa !21
  %i.fc = trunc nuw nsw i32 %i.ez to i8
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 9706
  store i8 %i.fc, ptr %i.fd, align 2, !tbaa !232
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ff = lshr i32 %i.em, 3
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !19
  %i.fj = icmp slt i32 %i.em, %i.ef
  %i.fk = zext i1 %i.fj to i32
  %spec.select.i = add i32 %i.em, %i.fk           ; 5 uses
  %i.fl = zext i8 %i.fi to i32
  %i.fm = and i32 %i.em, 7
  %i.fn = shl nuw nsw i32 %i.fl, %i.fm
  store i32 %spec.select.i, ptr %i.fe, align 8, !tbaa !21
  %i.fo = trunc i32 %i.fn to i8
  %i.fp = lshr i8 %i.fo, 7
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 9707
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !233
  %i.fr = lshr i32 %spec.select.i, 3
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !19
  %i.fv = icmp slt i32 %spec.select.i, %i.ef
  %i.fw = zext i1 %i.fv to i32
  %spec.select.i904 = add i32 %spec.select.i, %i.fw
  %i.fx = zext i8 %i.fu to i32
  %i.fy = and i32 %spec.select.i, 7
  %i.fz = shl nuw nsw i32 %i.fx, %i.fy
  store i32 %spec.select.i904, ptr %i.fe, align 8, !tbaa !21
  %i.ga = trunc i32 %i.fz to i8
  %i.gb = lshr i8 %i.ga, 7
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 9708
  store i8 %i.gb, ptr %i.gc, align 4, !tbaa !234
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 9707
  store i8 1, ptr %i.gd, align 1, !tbaa !233
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 6012
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !92
  %.not804 = icmp eq i32 %i.gf, 0
  br i1 %.not804, label %bb.af, label %bb.ae

end_hunk_0
