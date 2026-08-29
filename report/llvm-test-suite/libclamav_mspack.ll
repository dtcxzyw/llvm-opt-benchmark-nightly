Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_mspack?download=true
inline.NumInlined: 60
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 49
begin_hunk_0_@lzx_init:bb.a

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @cli_calloc(i64 noundef 1, i64 noundef 54896) #11 ; 92 uses
  %.not83 = icmp eq ptr %i.e, null
  br i1 %.not83, label %bb.j, label %.peel.next

.peel.next:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 22056 ; 4 uses
  store i8 0, ptr %i.f, align 1, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 22057
  store i8 0, ptr %i.g, align 1, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 22058
  store i8 0, ptr %i.h, align 1, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 22059
  store i8 0, ptr %i.i, align 1, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 22060
  store i8 1, ptr %i.j, align 1, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 22061
  store i8 1, ptr %i.k, align 1, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 22062
  store i8 2, ptr %i.l, align 1, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 22063
  store i8 2, ptr %i.m, align 1, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 22064
  store i8 3, ptr %i.n, align 1, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 22065
  store i8 3, ptr %i.o, align 1, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 22066
  store i8 4, ptr %i.p, align 1, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 22067
  store i8 4, ptr %i.q, align 1, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 22068
  store i8 5, ptr %i.r, align 1, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 22069
  store i8 5, ptr %i.s, align 1, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 22070
  store i8 6, ptr %i.t, align 1, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 22071
  store i8 6, ptr %i.u, align 1, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 22072
  store i8 7, ptr %i.v, align 1, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 22073
  store i8 7, ptr %i.w, align 1, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 22074
  store i8 8, ptr %i.x, align 1, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 22075
  store i8 8, ptr %i.y, align 1, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 22076
  store i8 9, ptr %i.z, align 1, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 22077
  store i8 9, ptr %i.aa, align 1, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 22078
  store i8 10, ptr %i.ab, align 1, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 22079
  store i8 10, ptr %i.ac, align 1, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 22080
  store i8 11, ptr %i.ad, align 1, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 22081
  store i8 11, ptr %i.ae, align 1, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 22082
  store i8 12, ptr %i.af, align 1, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 22083
  store i8 12, ptr %i.ag, align 1, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 22084
  store i8 13, ptr %i.ah, align 1, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 22085
  store i8 13, ptr %i.ai, align 1, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 22086
  store i8 14, ptr %i.aj, align 1, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 22087
  store i8 14, ptr %i.ak, align 1, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 22088
  store i8 15, ptr %i.al, align 1, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 22089
  store i8 15, ptr %i.am, align 1, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 22090
  store i8 16, ptr %i.an, align 1, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 22091
  store i8 16, ptr %i.ao, align 1, !tbaa !31
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 22092
  store i8 17, ptr %i.ap, align 1, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 22093
  store i8 17, ptr %i.aq, align 1, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 22094
  store i8 17, ptr %i.ar, align 1, !tbaa !31
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 22095
  store i8 17, ptr %i.as, align 1, !tbaa !31
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 22096
  store i8 17, ptr %i.at, align 1, !tbaa !31
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 22097
  store i8 17, ptr %i.au, align 1, !tbaa !31
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 22098
  store i8 17, ptr %i.av, align 1, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 22099
  store i8 17, ptr %i.aw, align 1, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 22100
  store i8 17, ptr %i.ax, align 1, !tbaa !31
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 22101
  store i8 17, ptr %i.ay, align 1, !tbaa !31
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 22102
  store i8 17, ptr %i.az, align 1, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 22103
  store i8 17, ptr %i.ba, align 1, !tbaa !31
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 22104
  store i8 17, ptr %i.bb, align 1, !tbaa !31
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 22105
  store i8 17, ptr %i.bc, align 1, !tbaa !31
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 22106
  store i8 17, ptr %i.bd, align 1, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 21852 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.peel.next
  %indvars.iv94 = phi i64 [ 0, %.peel.next ], [ %indvars.iv.next95.2, %bb.d ] ; 5 uses
  %.291 = phi i32 [ 0, %.peel.next ], [ %i.bw, %bb.d ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv94
  store i32 %.291, ptr %i.bf, align 4, !tbaa !4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv94
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !31
  %i.bi = zext nneg i8 %i.bh to i32
  %i.bj = shl nuw i32 1, %i.bi
  %i.bk = add nsw i32 %i.bj, %.291                ; 2 uses
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next95
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.next95
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !31
  %i.bo = zext nneg i8 %i.bn to i32
  %i.bp = shl nuw i32 1, %i.bo
  %i.bq = add nsw i32 %i.bp, %i.bk                ; 2 uses
  %indvars.iv.next95.1 = add nuw nsw i64 %indvars.iv94, 2 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next95.1
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.next95.1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !31
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = shl nuw i32 1, %i.bu
  %i.bw = add nsw i32 %i.bv, %i.bq
  %indvars.iv.next95.2 = add nuw nsw i64 %indvars.iv94, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next95.2, 51
  br i1 %exitcond.not.2, label %bb.e, label %bb.d, !llvm.loop !75

bb.e:                                             ; preds = %bb.d
  %i.bx = zext i32 %i.a to i64
  %i.by = tail call ptr @cli_calloc(i64 noundef 1, i64 noundef %i.bx) #11 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !76
  %.not84 = icmp eq ptr %i.by, null
  br i1 %.not84, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.e) #11
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.ca = sext i32 %i.d to i64
  %i.cb = tail call ptr @cli_calloc(i64 noundef 1, i64 noundef %i.ca) #11 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !79
  %.not85 = icmp eq ptr %i.cb, null
  br i1 %.not85, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cd = load ptr, ptr %i.bz, align 8, !tbaa !76
  tail call void @free(ptr noundef %i.cd) #11
  tail call void @free(ptr noundef nonnull %i.e) #11
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i32 %0, ptr %i.e, align 8, !tbaa !80
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %1, ptr %i.ce, align 4, !tbaa !81
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 1, ptr %i.cf, align 8, !tbaa !82
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.cg, align 8, !tbaa !83
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %5, ptr %i.ch, align 8, !tbaa !84
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 54880
  store ptr %6, ptr %i.ci, align 8, !tbaa !85
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 54888
  store ptr %7, ptr %i.cj, align 8, !tbaa !86
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  store i32 %i.d, ptr %i.ck, align 8, !tbaa !87
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i32 %i.a, ptr %i.cl, align 8, !tbaa !88
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  store i32 0, ptr %i.cm, align 4, !tbaa !89
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i32 0, ptr %i.cn, align 8, !tbaa !90
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  store i32 0, ptr %i.co, align 4, !tbaa !91
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i32 %3, ptr %i.cp, align 8, !tbaa !92
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i32 0, ptr %i.cq, align 8, !tbaa !93
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  store i32 0, ptr %i.cr, align 4, !tbaa !94
  %i.cs = icmp eq i32 %2, 21
  %i.ct = icmp eq i32 %2, 20
  %.tr = trunc nuw nsw i32 %2 to i8
  %i.cu = shl nuw nsw i8 %.tr, 1
  %i.cv = select i1 %i.ct, i8 42, i8 %i.cu
  %i.cw = select i1 %i.cs, i8 50, i8 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 91
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !95
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i8 0, ptr %i.cy, align 8, !tbaa !96
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 92
  store i8 0, ptr %i.cz, align 4, !tbaa !97
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i32 0, ptr %i.da, align 8, !tbaa !98
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store ptr %i.cb, ptr %i.db, align 8, !tbaa !99
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store ptr %i.cb, ptr %i.dc, align 8, !tbaa !100
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 22107 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !101
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store ptr %i.dd, ptr %i.df, align 8, !tbaa !102
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 148
  store i32 0, ptr %i.dg, align 4, !tbaa !103
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  store i32 0, ptr %i.dh, align 8, !tbaa !104
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store i32 1, ptr %i.di, align 4, !tbaa !105
  %i.dj = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i32 1, ptr %i.dj, align 8, !tbaa !106
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  store i32 1, ptr %i.dk, align 4, !tbaa !107
  %i.dl = getelementptr inbounds nuw i8, ptr %i.e, i64 90
  store i8 0, ptr %i.dl, align 2, !tbaa !108
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store i32 0, ptr %i.dm, align 4, !tbaa !109
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 89
  store i8 0, ptr %i.dn, align 1, !tbaa !110
  %i.do = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(656) %i.do, i8 0, i64 656, i1 false), !tbaa !31
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 960
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(250) %i.dp, i8 0, i64 250, i1 false), !tbaa !31
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.i, %bb.h, %bb.f
  %.079 = phi ptr [ null, %bb.a ], [ %i.e, %bb.i ], [ null, %bb.h ], [ null, %bb.f ], [ null, %bb.b ], [ null, %bb.c ]
  ret ptr %.079
}

declare ptr @cli_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @lzx_set_output_length(ptr nofree noundef writeonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %i.a, align 8, !tbaa !84
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzx_decompress(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i64 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.nr, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 53 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.nr

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 11 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !102  ; 3 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %sext = shl i64 %i.k, 32
  %i.l = ashr exact i64 %sext, 32
  %i.m = icmp sgt i64 %i.l, %1
  %spec.select = select i1 %i.m, i64 %1, i64 %i.k ; 2 uses
  %.01013 = trunc i64 %spec.select to i32         ; 3 uses
  %.not1156 = icmp eq i32 %.01013, 0
  br i1 %.not1156, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i8, ptr %i.n, align 8, !tbaa !82
  %.not1157 = icmp eq i8 %i.o, 0
  br i1 %.not1157, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !81
  %i.r = tail call i32 @cli_writen(i32 noundef %i.q, ptr noundef %i.h, i32 noundef %.01013) #11
  %.not1158 = icmp eq i32 %i.r, %.01013
  br i1 %.not1158, label %._crit_edge3325, label %bb.f

._crit_edge3325:                                  ; preds = %bb.e
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !102
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 -123, ptr %i.c, align 8, !tbaa !98
  br label %bb.nr

bb.g:                                             ; preds = %._crit_edge3325, %bb.d
  %i.s = phi ptr [ %.pre, %._crit_edge3325 ], [ %i.h, %bb.d ]
  %sext1159 = shl i64 %spec.select, 32
  %i.t = ashr exact i64 %sext1159, 32             ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 %i.t
  store ptr %i.u, ptr %i.g, align 8, !tbaa !102
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !83
  %i.x = add nsw i64 %i.w, %i.t
  store i64 %i.x, ptr %i.v, align 8, !tbaa !83
  %i.y = sub nsw i64 %1, %i.t
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.01104 = phi i64 [ %i.y, %bb.g ], [ %1, %bb.c ] ; 3 uses
  %i.z = icmp eq i64 %.01104, 0
  br i1 %i.z, label %bb.nr, label %.split3128

.split3128:                                       ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 38 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 36 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !76 ; 15 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !83
  %i.am = add nsw i64 %i.al, %.01104
  %i.an = sdiv i64 %i.am, 32768
  %i.ao = trunc i64 %i.an to i32
  %i.ap = add i32 %i.ao, 1                        ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !91 ; 2 uses
  %i.as = icmp ult i32 %i.ar, %i.ap
  br i1 %i.as, label %.lr.ph3138, label %._crit_edge3139.thread

.lr.ph3138:                                       ; preds = %.split3128
  %i.at = load i32, ptr %i.aj, align 4, !tbaa !107
  %i.au = load i32, ptr %i.ai, align 8, !tbaa !106
  %i.av = load i32, ptr %i.ah, align 4, !tbaa !105
  %i.aw = load i32, ptr %i.ag, align 4, !tbaa !89
  %i.ax = load i32, ptr %i.ad, align 4, !tbaa !103
  %i.ay = load i32, ptr %i.ac, align 8, !tbaa !104
  %i.az = load ptr, ptr %i.ab, align 8, !tbaa !99
  %i.ba = load ptr, ptr %i.aa, align 8, !tbaa !100
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 89 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 54888 ; 13 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 54880 ; 13 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 52 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 13 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 26 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1274 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 21562 ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 91
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1554 ; 43 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 12370 ; 43 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 22056 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 21852 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 22107 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph3138, %bb.np
  %i.ce = phi i32 [ %i.ar, %.lr.ph3138 ], [ %i.bvw, %bb.np ]
  %.08663137 = phi i32 [ %i.at, %.lr.ph3138 ], [ %.1.lcssa, %bb.np ] ; 2 uses
  %.08673136 = phi i32 [ %i.au, %.lr.ph3138 ], [ %.1868.lcssa, %bb.np ] ; 2 uses
  %.08773135 = phi i32 [ %i.av, %.lr.ph3138 ], [ %.1878.lcssa, %bb.np ] ; 2 uses
end_hunk_0
