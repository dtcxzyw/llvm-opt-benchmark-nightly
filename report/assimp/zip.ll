Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/zip?download=true
inline.NumInlined: 193
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 56
begin_hunk_0_@mz_zip_reader_locate_file_v2:bb.a
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 28
  %i.ao = load i16, ptr %i.an, align 1
  %i.ap = zext i16 %i.ao to i32                   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 46 ; 3 uses
  %i.ar = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 %i.x) ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.as ; 2 uses
  %.not62.i = icmp eq i32 %i.ar, 0
  br i1 %.not62.i, label %mz_zip_filename_compare.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.m
  %.030.i51.i = phi ptr [ %i.az, %bb.m ], [ %i.aq, %bb.l ] ; 3 uses
  %.031.i50.i = phi ptr [ %i.ba, %bb.m ], [ %1, %bb.l ] ; 2 uses
  %i.au = load i8, ptr %.030.i51.i, align 1       ; 3 uses
  %i.av = add i8 %i.au, -65
  %or.cond.i.i = icmp ult i8 %i.av, 26
  %narrow.i.i = add nuw nsw i8 %i.au, 32
  %spec.select.i = select i1 %or.cond.i.i, i8 %narrow.i.i, i8 %i.au ; 3 uses
  %i.aw = load i8, ptr %.031.i50.i, align 1       ; 3 uses
  %i.ax = add i8 %i.aw, -65
  %or.cond36.i.i = icmp ult i8 %i.ax, 26
  %narrow35.i.i = add nuw nsw i8 %i.aw, 32
  %i.ay = select i1 %or.cond36.i.i, i8 %narrow35.i.i, i8 %i.aw ; 2 uses
  %.not.i.i = icmp eq i8 %spec.select.i, %i.ay
  br i1 %.not.i.i, label %bb.m, label %mz_zip_filename_compare.exit.loopexit.i

bb.m:                                             ; preds = %.lr.ph.i
  %i.az = getelementptr inbounds nuw i8, ptr %.030.i51.i, i64 1 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.031.i50.i, i64 1
  %i.bb = icmp ult ptr %i.az, %i.at
  br i1 %i.bb, label %.lr.ph.i, label %mz_zip_filename_compare.exit.loopexit.i

mz_zip_filename_compare.exit.loopexit.i:          ; preds = %bb.m, %.lr.ph.i
  %.lcssa.i = phi i8 [ %spec.select.i, %bb.m ], [ %i.ay, %.lr.ph.i ]
  %.030.i.lcssa.ph.i = phi ptr [ %i.az, %bb.m ], [ %.030.i51.i, %.lr.ph.i ]
  %i.bc = zext i8 %spec.select.i to i32
  %i.bd = zext i8 %.lcssa.i to i32
  %i.be = sub nsw i32 %i.bc, %i.bd
  br label %mz_zip_filename_compare.exit.i

mz_zip_filename_compare.exit.i:                   ; preds = %mz_zip_filename_compare.exit.loopexit.i, %bb.l
  %.030.i.lcssa.i = phi ptr [ %i.aq, %bb.l ], [ %.030.i.lcssa.ph.i, %mz_zip_filename_compare.exit.loopexit.i ]
  %i.bf = phi i32 [ 0, %bb.l ], [ %i.be, %mz_zip_filename_compare.exit.loopexit.i ]
  %i.bg = icmp eq ptr %.030.i.lcssa.i, %i.at
  %i.bh = sub i32 %i.ap, %i.x
  %i.bi = select i1 %i.bg, i32 %i.bh, i32 %i.bf   ; 2 uses
  %.not47.not.i = icmp eq i32 %i.bi, 0
  br i1 %.not47.not.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %mz_zip_filename_compare.exit.i
  br i1 %.not, label %.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.ah, ptr %4, align 4
  br label %.split

bb.p:                                             ; preds = %mz_zip_filename_compare.exit.i
  %i.bj = icmp slt i32 %i.bi, 0                   ; 2 uses
  %i.bk = add nuw nsw i64 %i.ae, 1
  %i.bl = add nsw i64 %i.ae, -1
  %.136.i = select i1 %i.bj, i64 %i.bk, i64 %.03559.i ; 2 uses
  %.134.i = select i1 %i.bj, i64 %.03360.i, i64 %i.bl ; 2 uses
  %.not46.i = icmp sgt i64 %.136.i, %.134.i
  br i1 %.not46.i, label %.critedge.i, label %bb.l

.critedge.i:                                      ; preds = %bb.p, %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 28, ptr %i.bm, align 4
  br label %.split

bb.q:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.bn = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #39 ; 3 uses
  %i.bo = icmp ugt i64 %i.bn, 65535
  br i1 %i.bo, label %mz_zip_set_error.exit112, label %bb.r

.thread:                                          ; preds = %bb.h
  %i.bp = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #39 ; 2 uses
  %i.bq = icmp ugt i64 %i.bp, 65535
  br i1 %i.bq, label %mz_zip_set_error.exit112, label %.preheader152

mz_zip_set_error.exit112:                         ; preds = %.thread, %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 24, ptr %i.br, align 4
  br label %.split

bb.r:                                             ; preds = %bb.q
  %.not101 = icmp eq ptr %2, null
  br i1 %.not101, label %.preheader152, label %.thread124

.thread124:                                       ; preds = %bb.r
  %i.bs = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39 ; 2 uses
  %i.bt = icmp ugt i64 %i.bs, 65535
  br i1 %i.bt, label %mz_zip_set_error.exit110, label %.preheader152

.preheader152:                                    ; preds = %.thread, %bb.r, %.thread124
  %i.bu = phi i64 [ %i.bs, %.thread124 ], [ 0, %bb.r ], [ 0, %.thread ] ; 3 uses
  %i.bv = phi i64 [ %i.bn, %.thread124 ], [ %i.bn, %bb.r ], [ %i.bp, %.thread ] ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bx = load i32, ptr %i.bw, align 8            ; 2 uses
  %.not162 = icmp eq i32 %i.bx, 0
  br i1 %.not162, label %mz_zip_set_error.exit108, label %.lr.ph161

.lr.ph161:                                        ; preds = %.preheader152
  %i.by = load ptr, ptr %i.b, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8
  %.not102 = icmp eq i64 %i.bu, 0
  %i.cb = and i32 %3, 256
  %.not.i114 = icmp eq i32 %i.cb, 0               ; 2 uses
  %i.cc = and i32 %3, 512
  %i.cd = icmp ne i32 %i.cc, 0
  %wide.trip.count181 = zext i32 %i.bx to i64
  br label %bb.s

mz_zip_set_error.exit110:                         ; preds = %.thread124
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 24, ptr %i.ce, align 4
  br label %.split

bb.s:                                             ; preds = %.lr.ph161, %.thread143
  %indvars.iv178 = phi i64 [ 0, %.lr.ph161 ], [ %indvars.iv.next179, %.thread143 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv178
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ch ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 28
  %i.ck = load i16, ptr %i.cj, align 1            ; 3 uses
  %i.cl = zext i16 %i.ck to i32                   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 46 ; 4 uses
  %i.cn = zext i16 %i.ck to i64                   ; 3 uses
  %i.co = icmp ugt i64 %i.bv, %i.cn
  br i1 %i.co, label %.thread143, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %.not102, label %.thread129, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.cq = load i16, ptr %i.cp, align 1            ; 3 uses
  %i.cr = zext i16 %i.cq to i64
  %.not103 = icmp eq i64 %i.bu, %i.cr
  br i1 %.not103, label %bb.v, label %.thread143

bb.v:                                             ; preds = %bb.u
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cn
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 30
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = zext i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ci, i64 31
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = zext i8 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cv ; 2 uses
  br i1 %.not.i114, label %.preheader150, label %bb.x

.preheader150:                                    ; preds = %bb.v
  %.not163 = icmp eq i16 %i.cq, 0
  br i1 %.not163, label %.thread129, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader150
  %wide.trip.count = zext i16 %i.cq to i64
  br label %.lr.ph

bb.w:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread129, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.w ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.dd = load i8, ptr %i.dc, align 1             ; 3 uses
  %i.de = add i8 %i.dd, -65
  %or.cond.i117 = icmp ult i8 %i.de, 26
  %narrow.i121 = add nuw nsw i8 %i.dd, 32
  %i.df = zext nneg i8 %narrow.i121 to i32
  %i.dg = sext i8 %i.dd to i32
  %i.dh = select i1 %or.cond.i117, i32 %i.df, i32 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 %indvars.iv
  %i.dj = load i8, ptr %i.di, align 1             ; 3 uses
  %i.dk = add i8 %i.dj, -65
  %or.cond29.i118 = icmp ult i8 %i.dk, 26
  %narrow27.i120 = add nuw nsw i8 %i.dj, 32
  %i.dl = zext nneg i8 %narrow27.i120 to i32
  %i.dm = sext i8 %i.dj to i32
  %i.dn = select i1 %or.cond29.i118, i32 %i.dl, i32 %i.dm
  %.not28.i119 = icmp eq i32 %i.dh, %i.dn
  br i1 %.not28.i119, label %bb.w, label %.thread143

bb.x:                                             ; preds = %bb.v
  %bcmp = tail call i32 @bcmp(ptr %2, ptr nonnull %i.db, i64 %i.bu)
  %.not147 = icmp eq i32 %bcmp, 0
  br i1 %.not147, label %.thread129, label %.thread143

.thread129:                                       ; preds = %bb.w, %.preheader150, %bb.x, %bb.t
  %i.do = icmp ne i16 %i.ck, 0
  %or.cond5 = and i1 %i.cd, %i.do
  br i1 %or.cond5, label %.preheader149, label %bb.z

.preheader149:                                    ; preds = %.thread129, %bb.y
  %indvars.iv170 = phi i64 [ %indvars.iv.next171, %bb.y ], [ %i.cn, %.thread129 ] ; 3 uses
  %indvars.iv.next171 = add nsw i64 %indvars.iv170, -1 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv.next171
  %i.dq = load i8, ptr %i.dp, align 1
  switch i8 %i.dq, label %bb.y [
    i8 47, label %.split.loop.exit
    i8 92, label %.split.loop.exit
    i8 58, label %.split.loop.exit
  ]

bb.y:                                             ; preds = %.preheader149
  %i.dr = icmp samesign ugt i64 %indvars.iv170, 1
  br i1 %i.dr, label %.preheader149, label %.split.loop.exit204

.split.loop.exit:                                 ; preds = %.preheader149, %.preheader149, %.preheader149
  %i.ds = trunc nuw nsw i64 %indvars.iv170 to i32
  br label %.split.loop.exit204

.split.loop.exit204:                              ; preds = %bb.y, %.split.loop.exit
  %.1 = phi i32 [ %i.ds, %.split.loop.exit ], [ 0, %bb.y ] ; 2 uses
  %i.dt = zext nneg i32 %.1 to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.dt
  %i.dv = sub nsw i32 %i.cl, %.1
  br label %bb.z

bb.z:                                             ; preds = %.split.loop.exit204, %.thread129
  %.079 = phi i32 [ %i.dv, %.split.loop.exit204 ], [ %i.cl, %.thread129 ] ; 2 uses
  %.078 = phi ptr [ %i.du, %.split.loop.exit204 ], [ %i.cm, %.thread129 ] ; 2 uses
  %i.dw = zext i32 %.079 to i64
  %i.dx = icmp eq i64 %i.bv, %i.dw
  br i1 %i.dx, label %bb.aa, label %.thread143

bb.aa:                                            ; preds = %bb.z
  br i1 %.not.i114, label %.preheader, label %bb.ab

.preheader:                                       ; preds = %bb.aa
  %.not164 = icmp eq i32 %.079, 0
  br i1 %.not164, label %mz_zip_string_equal.exit, label %.lr.ph158

bb.ab:                                            ; preds = %bb.aa
  %bcmp148 = tail call i32 @bcmp(ptr nonnull %1, ptr nonnull %.078, i64 %i.bv)
  %i.dy = icmp ne i32 %bcmp148, 0
  br label %mz_zip_string_equal.exit

bb.ac:                                            ; preds = %.lr.ph158
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %exitcond177.not = icmp eq i64 %indvars.iv.next174, %i.bv
  br i1 %exitcond177.not, label %mz_zip_string_equal.exit, label %.lr.ph158

.lr.ph158:                                        ; preds = %.preheader, %bb.ac
  %indvars.iv173 = phi i64 [ %indvars.iv.next174, %bb.ac ], [ 0, %.preheader ] ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv173
  %i.ea = load i8, ptr %i.dz, align 1             ; 3 uses
  %i.eb = add i8 %i.ea, -65
  %or.cond.i = icmp ult i8 %i.eb, 26
  %narrow.i = add nuw nsw i8 %i.ea, 32
  %i.ec = zext nneg i8 %narrow.i to i32
  %i.ed = sext i8 %i.ea to i32
  %i.ee = select i1 %or.cond.i, i32 %i.ec, i32 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %.078, i64 %indvars.iv173
  %i.eg = load i8, ptr %i.ef, align 1             ; 3 uses
  %i.eh = add i8 %i.eg, -65
  %or.cond29.i = icmp ult i8 %i.eh, 26
  %narrow27.i = add nuw nsw i8 %i.eg, 32
  %i.ei = zext nneg i8 %narrow27.i to i32
  %i.ej = sext i8 %i.eg to i32
  %i.ek = select i1 %or.cond29.i, i32 %i.ei, i32 %i.ej
  %.not28.i = icmp eq i32 %i.ee, %i.ek
  br i1 %.not28.i, label %bb.ac, label %.thread143

mz_zip_string_equal.exit:                         ; preds = %bb.ac, %.preheader, %bb.ab
  %.023.i = phi i1 [ %i.dy, %bb.ab ], [ false, %.preheader ], [ false, %bb.ac ] ; 2 uses
  %brmerge = or i1 %.not, %.023.i
  br i1 %brmerge, label %bb.ad, label %.thread145

.thread145:                                       ; preds = %mz_zip_string_equal.exit
  %i.el = trunc nuw i64 %indvars.iv178 to i32
  store i32 %i.el, ptr %4, align 4
  br label %.split

bb.ad:                                            ; preds = %mz_zip_string_equal.exit
  br i1 %.023.i, label %.thread143, label %.split

.thread143:                                       ; preds = %.lr.ph, %.lr.ph158, %bb.ad, %bb.x, %bb.u, %bb.z, %bb.s
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next179, %wide.trip.count181
  br i1 %exitcond182.not, label %mz_zip_set_error.exit108, label %bb.s

mz_zip_set_error.exit108:                         ; preds = %.thread143, %.preheader152
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 28, ptr %i.em, align 4
  br label %.split

.split:                                           ; preds = %bb.ad, %.thread145, %.critedge.i, %bb.o, %bb.n, %bb.c, %mz_zip_set_error.exit, %mz_zip_set_error.exit108, %mz_zip_set_error.exit110, %mz_zip_set_error.exit112
  %.2 = phi i32 [ 0, %mz_zip_set_error.exit112 ], [ 0, %mz_zip_set_error.exit110 ], [ 1, %.thread145 ], [ 0, %mz_zip_set_error.exit108 ], [ 0, %bb.c ], [ 0, %mz_zip_set_error.exit ], [ 0, %.critedge.i ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.ad ]
  ret i32 %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mz_zip_reader_extract_to_mem_no_alloc(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call fastcc i32 @mz_zip_reader_extract_to_mem_no_alloc1(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @mz_zip_reader_extract_to_mem_no_alloc1(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6, ptr nofree noundef readonly captures(address_is_null) %7) unnamed_addr #9 {
bb.a:
  %8 = alloca %struct.mz_zip_archive_file_stat, align 8 ; 12 uses
  %i.a = alloca [8 x i32], align 16               ; 6 uses
  %9 = alloca %struct.tinfl_decompressor_tag, align 8 ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %mz_zip_set_error.exit190, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not148 = icmp eq ptr %i.e, null
  br i1 %.not148, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %3, 0
  %i.g = icmp ne ptr %2, null
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %6, 0                        ; 2 uses
  %i.i = icmp ne ptr %5, null                     ; 3 uses
  %or.cond3 = or i1 %i.i, %i.h
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8
  %.not149 = icmp eq ptr %i.k, null
  br i1 %.not149, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 24, ptr %i.l, align 4
  br label %mz_zip_set_error.exit190

bb.g:                                             ; preds = %bb.e
  %.not150 = icmp eq ptr %7, null
  br i1 %.not150, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1112) %8, ptr noundef nonnull align 8 dereferenceable(1112) %7, i64 1112, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 8
  %.not11.i.i = icmp ult i32 %1, %i.n
  br i1 %.not11.i.i, label %bb.j, label %mz_zip_reader_file_stat.exit

bb.j:                                             ; preds = %bb.i
  %i.o = load ptr, ptr %i.e, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = zext i32 %1 to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.u
  br label %mz_zip_reader_file_stat.exit

mz_zip_reader_file_stat.exit:                     ; preds = %bb.i, %bb.j
  %.0.i.i = phi ptr [ %i.v, %bb.j ], [ null, %bb.i ]
  %i.w = call fastcc range(i32 0, 2) i32 @mz_zip_file_stat_internal(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %.0.i.i, ptr noundef nonnull %8, ptr noundef null)
  %.not151 = icmp eq i32 %i.w, 0
  br i1 %.not151, label %mz_zip_set_error.exit190, label %bb.k

bb.k:                                             ; preds = %mz_zip_reader_file_stat.exit, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 68
  %i.y = load i32, ptr %i.x, align 4
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ab = load i64, ptr %i.aa, align 8            ; 8 uses
  %i.ac = icmp ne i64 %i.ab, 0
  %or.cond6 = select i1 %i.z, i1 %i.ac, i1 false
  br i1 %or.cond6, label %bb.l, label %mz_zip_set_error.exit190

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.ae = load i16, ptr %i.ad, align 4
  %i.af = and i16 %i.ae, 97
  %.not152 = icmp eq i16 %i.af, 0
  br i1 %.not152, label %bb.m, label %mz_zip_set_error.exit188

mz_zip_set_error.exit188:                         ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 5, ptr %i.ag, align 4
  br label %mz_zip_set_error.exit190

bb.m:                                             ; preds = %bb.l
  %i.ah = and i32 %4, 1024
  %i.ai = icmp eq i32 %i.ah, 0                    ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 22
  %i.ak = load i16, ptr %i.aj, align 2            ; 2 uses
  %i.al = and i16 %i.ak, -9
  %i.am = icmp ne i16 %i.al, 0
  %or.cond14 = select i1 %i.ai, i1 %i.am, i1 false
  br i1 %or.cond14, label %mz_zip_set_error.exit186, label %bb.n

mz_zip_set_error.exit186:                         ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 4, ptr %i.an, align 4
  br label %mz_zip_set_error.exit190

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ap = load i64, ptr %i.ao, align 8            ; 5 uses
  %i.aq = select i1 %i.ai, i64 %i.ap, i64 %i.ab   ; 3 uses
  %i.ar = icmp ult i64 %3, %i.aq
  br i1 %i.ar, label %mz_zip_set_error.exit184, label %bb.o

mz_zip_set_error.exit184:                         ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 26, ptr %i.as, align 4
  br label %mz_zip_set_error.exit190

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = load ptr, ptr %i.j, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call i64 %i.av(ptr noundef %i.ax, i64 noundef %i.au, ptr noundef nonnull %i.a, i64 noundef 30) #36
  %.not154 = icmp eq i64 %i.ay, 30
  br i1 %.not154, label %bb.p, label %mz_zip_set_error.exit182

mz_zip_set_error.exit182:                         ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 20, ptr %i.az, align 4
  br label %mz_zip_set_error.exit190

bb.p:                                             ; preds = %bb.o
  %i.ba = load i32, ptr %i.a, align 16
  %.not155 = icmp eq i32 %i.ba, 67324752
  br i1 %.not155, label %bb.q, label %mz_zip_set_error.exit180

mz_zip_set_error.exit180:                         ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 9, ptr %i.bb, align 4
  br label %mz_zip_set_error.exit190

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = zext i16 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.bg = load i16, ptr %i.bf, align 4
  %i.bh = zext i16 %i.bg to i64
  %i.bi = add i64 %i.au, 30
  %i.bj = add i64 %i.bi, %i.be
  %i.bk = add i64 %i.bj, %i.bh                    ; 4 uses
  %i.bl = add i64 %i.bk, %i.ab
  %i.bm = load i64, ptr %0, align 8
  %i.bn = icmp ugt i64 %i.bl, %i.bm
  br i1 %i.bn, label %mz_zip_set_error.exit178, label %bb.r

mz_zip_set_error.exit178:                         ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 9, ptr %i.bo, align 4
  br label %mz_zip_set_error.exit190

bb.r:                                             ; preds = %bb.q
  %i.bp = icmp ne i16 %i.ak, 0
  %or.cond17 = select i1 %i.ai, i1 %i.bp, i1 false
  br i1 %or.cond17, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = load ptr, ptr %i.j, align 8
  %i.br = load ptr, ptr %i.aw, align 8
end_hunk_0
