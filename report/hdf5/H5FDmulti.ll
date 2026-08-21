Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5FDmulti?download=true
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumUnrolled: 39
begin_hunk_0_@H5Pget_fapl_multi:bb.a

bb.bj:                                            ; preds = %bb.bi
  %i.ez = call noalias ptr @strdup(ptr noundef nonnull %i.ey) #14
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %.sink76 = phi ptr [ %i.ez, %bb.bj ], [ null, %bb.bi ]
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %.sink76, ptr %i.fa, align 8, !tbaa !9
  %i.fb = getelementptr inbounds nuw i8, ptr %.039, i64 120
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !9  ; 2 uses
  %.not60.4 = icmp eq ptr %i.fc, null
  br i1 %.not60.4, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fd = call noalias ptr @strdup(ptr noundef nonnull %i.fc) #14
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %.sink77 = phi ptr [ %i.fd, %bb.bl ], [ null, %bb.bk ]
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %.sink77, ptr %i.fe, align 8, !tbaa !9
  %i.ff = getelementptr inbounds nuw i8, ptr %.039, i64 128
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !9  ; 2 uses
  %.not60.5 = icmp eq ptr %i.fg, null
  br i1 %.not60.5, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fh = call noalias ptr @strdup(ptr noundef nonnull %i.fg) #14
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %.sink78 = phi ptr [ %i.fh, %bb.bn ], [ null, %bb.bm ]
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %.sink78, ptr %i.fi, align 8, !tbaa !9
  %i.fj = getelementptr inbounds nuw i8, ptr %.039, i64 136
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !9  ; 2 uses
  %.not60.6 = icmp eq ptr %i.fk, null
  br i1 %.not60.6, label %.loopexit.loopexit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fl = call noalias ptr @strdup(ptr noundef nonnull %i.fk) #14
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.bo, %bb.bp
  %.sink79 = phi ptr [ %i.fl, %bb.bp ], [ null, %bb.bo ]
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %.sink79, ptr %i.fm, align 8, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit62
  %.not58 = icmp eq ptr %4, null
  br i1 %.not58, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.loopexit
  %i.fn = getelementptr inbounds nuw i8, ptr %.039, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.fn, i64 56, i1 false)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.loopexit
  %.not59 = icmp eq ptr %5, null
  br i1 %.not59, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fo = getelementptr inbounds nuw i8, ptr %.039, i64 200
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !23, !range !17, !noundef !18
  store i8 %i.fp, ptr %5, align 1, !tbaa !15
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs, %bb.am, %bb.u, %bb.k
  %.040 = phi i32 [ -1, %bb.k ], [ -1, %bb.u ], [ -1, %bb.am ], [ 0, %bb.bs ], [ 0, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret i32 %.040
}

declare i64 @H5Pget_driver(i64 noundef) local_unnamed_addr #4

declare i32 @H5Eauto_is_v2(i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @H5Eget_auto2(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @H5Eset_auto2(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @H5Eget_auto1(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @H5Eset_auto1(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @H5Pget_driver_info(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i64 @H5Pcopy(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare i64 @H5Pcreate(i64 noundef) local_unnamed_addr #4

declare i32 @H5Pset_fapl_sec2(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare i64 @H5FDget_eoa(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @H5Tconvert(i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @H5FDclose(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_next(ptr nofree noundef captures(none) initializes((288, 344)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [7 x i32], align 16               ; 4 uses
  %i.b = alloca [7 x i32], align 16               ; 10 uses
  %i.c = tail call i32 @H5Eclear2(i64 noundef 0) #14 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i8 -1, i64 56, i1 false), !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.ac
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %bb.ac ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !8    ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.o, i32 %i.p, i32 %i.n
  %i.q = sext i32 %spec.select to i64             ; 3 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !8    ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !8
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.c, label %bb.ac

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.b, i8 0, i64 28, i1 false)
  %i.u = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.q ; 6 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.q ; 14 uses
  %i.w = load i32, ptr %i.g, align 4, !tbaa !8
  %spec.select44 = tail call i32 @llvm.umax.i32(i32 %i.w, i32 1)
  %i.x = sext i32 %spec.select44 to i64           ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !8    ; 2 uses
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !8
  %.not43 = icmp eq i32 %i.z, 0
  br i1 %.not43, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ab = load i64, ptr %i.u, align 8, !tbaa !20
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.x
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !20 ; 3 uses
  %i.ae = icmp ult i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.af = load i64, ptr %i.v, align 8, !tbaa !20  ; 2 uses
  %i.ag = icmp eq i64 %i.af, -1
  %i.ah = icmp ugt i64 %i.af, %i.ad
  %or.cond = or i1 %i.ag, %i.ah
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f, %bb.c
  %i.ai = load i32, ptr %i.h, align 8, !tbaa !8   ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  %spec.select44.1 = select i1 %i.aj, i32 2, i32 %i.ai
  %i.ak = sext i32 %spec.select44.1 to i64        ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !8  ; 2 uses
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !8
  %.not43.1 = icmp eq i32 %i.am, 0
  br i1 %.not43.1, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ao = load i64, ptr %i.u, align 8, !tbaa !20
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ak
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !20 ; 3 uses
  %i.ar = icmp ult i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.as = load i64, ptr %i.v, align 8, !tbaa !20  ; 2 uses
  %i.at = icmp eq i64 %i.as, -1
  %i.au = icmp ugt i64 %i.as, %i.aq
  %or.cond.1 = or i1 %i.at, %i.au
  br i1 %or.cond.1, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %i.aq, ptr %i.v, align 8, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.av = load i32, ptr %i.i, align 4, !tbaa !8   ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  %spec.select44.2 = select i1 %i.aw, i32 3, i32 %i.av
  %i.ax = sext i32 %spec.select44.2 to i64        ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !8  ; 2 uses
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !8
  %.not43.2 = icmp eq i32 %i.az, 0
  br i1 %.not43.2, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bb = load i64, ptr %i.u, align 8, !tbaa !20
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !20 ; 3 uses
  %i.be = icmp ult i64 %i.bb, %i.bd
  br i1 %i.be, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bf = load i64, ptr %i.v, align 8, !tbaa !20  ; 2 uses
  %i.bg = icmp eq i64 %i.bf, -1
  %i.bh = icmp ugt i64 %i.bf, %i.bd
  %or.cond.2 = or i1 %i.bg, %i.bh
  br i1 %or.cond.2, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 %i.bd, ptr %i.v, align 8, !tbaa !20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.bi = load i32, ptr %i.j, align 8, !tbaa !8   ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  %spec.select44.3 = select i1 %i.bj, i32 4, i32 %i.bi
  %i.bk = sext i32 %spec.select44.3 to i64        ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !8  ; 2 uses
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !8
  %.not43.3 = icmp eq i32 %i.bm, 0
  br i1 %.not43.3, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bo = load i64, ptr %i.u, align 8, !tbaa !20
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bk
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !20 ; 3 uses
  %i.br = icmp ult i64 %i.bo, %i.bq
  br i1 %i.br, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bs = load i64, ptr %i.v, align 8, !tbaa !20  ; 2 uses
  %i.bt = icmp eq i64 %i.bs, -1
  %i.bu = icmp ugt i64 %i.bs, %i.bq
  %or.cond.3 = or i1 %i.bt, %i.bu
  br i1 %or.cond.3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i64 %i.bq, ptr %i.v, align 8, !tbaa !20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.bv = load i32, ptr %i.k, align 4, !tbaa !8   ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  %spec.select44.4 = select i1 %i.bw, i32 5, i32 %i.bv
  %i.bx = sext i32 %spec.select44.4 to i64        ; 2 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bx ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !8  ; 2 uses
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !8
  %.not43.4 = icmp eq i32 %i.bz, 0
  br i1 %.not43.4, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.cb = load i64, ptr %i.u, align 8, !tbaa !20
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bx
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !20 ; 3 uses
  %i.ce = icmp ult i64 %i.cb, %i.cd
  br i1 %i.ce, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cf = load i64, ptr %i.v, align 8, !tbaa !20  ; 2 uses
  %i.cg = icmp eq i64 %i.cf, -1
  %i.ch = icmp ugt i64 %i.cf, %i.cd
  %or.cond.4 = or i1 %i.cg, %i.ch
  br i1 %or.cond.4, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i64 %i.cd, ptr %i.v, align 8, !tbaa !20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %i.ci = load i32, ptr %i.l, align 8, !tbaa !8   ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  %spec.select44.5 = select i1 %i.cj, i32 6, i32 %i.ci
  %i.ck = sext i32 %spec.select44.5 to i64        ; 2 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !8
  %.not43.5 = icmp eq i32 %i.cm, 0
  br i1 %.not43.5, label %bb.x, label %._crit_edge

._crit_edge:                                      ; preds = %bb.w
  %.pre = load i64, ptr %i.v, align 8, !tbaa !20
  br label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cn = load i64, ptr %i.u, align 8, !tbaa !20
  %i.co = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ck
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !20 ; 4 uses
  %i.cq = icmp ult i64 %i.cn, %i.cp
  %.pre51 = load i64, ptr %i.v, align 8, !tbaa !20 ; 3 uses
  br i1 %i.cq, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cr = icmp eq i64 %.pre51, -1
  %i.cs = icmp ugt i64 %.pre51, %i.cp
  %or.cond.5 = or i1 %i.cr, %i.cs
  br i1 %or.cond.5, label %bb.z, label %.thread

.thread:                                          ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.ac

bb.z:                                             ; preds = %bb.y
  store i64 %i.cp, ptr %i.v, align 8, !tbaa !20
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge, %bb.z, %bb.x
  %i.ct = phi i64 [ %.pre, %._crit_edge ], [ %i.cp, %bb.z ], [ %.pre51, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.cu = icmp eq i64 %i.ct, -1
  br i1 %i.cu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i64 -2, ptr %i.v, align 8, !tbaa !20
  br label %bb.ac

bb.ac:                                            ; preds = %.thread, %bb.aa, %bb.ab, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %bb.ad, label %bb.b, !llvm.loop !38

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @open_members(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %i.b = alloca [7 x i32], align 16               ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %1 = alloca %union.anon.0, align 8              ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.e = tail call i32 @H5Eclear2(i64 noundef 0) #14 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.b, i8 0, i64 28, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.v
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %bb.v ] ; 3 uses
  %.02940 = phi i32 [ 0, %bb.a ], [ %.1, %bb.v ]  ; 5 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !8    ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.o, i32 %i.p, i32 %i.n
  %i.q = sext i32 %spec.select to i64             ; 4 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !8    ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !8
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.q ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !13
  %.not33 = icmp eq ptr %i.v, null
  br i1 %.not33, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.q
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !9
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.z = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef %i.x, ptr noundef %i.y) #14
  %or.cond = icmp ugt i32 %i.z, 1023
  br i1 %or.cond, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.aa = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17, !noundef !18 ; 2 uses
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = load i8, ptr @H5_libterm_g, align 1, !range !17 ; 2 uses
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = select i1 %i.ab, i1 true, i1 %i.ad
  br i1 %i.ae, label %bb.g, label %bb.f, !prof !19

bb.f:                                             ; preds = %bb.e
  %i.af = call i32 @H5open() #14                  ; 0 uses
  %.pre46 = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17
  %.pre47 = load i8, ptr @H5_libterm_g, align 1, !range !17
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ag = phi i8 [ %i.ac, %bb.e ], [ %.pre47, %bb.f ] ; 2 uses
  %i.ah = phi i8 [ %i.aa, %bb.e ], [ %.pre46, %bb.f ] ; 2 uses
  %i.ai = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !20
  %i.aj = trunc nuw i8 %i.ah to i1
  %i.ak = trunc nuw i8 %i.ag to i1
  %i.al = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %i.al, label %bb.i, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  %i.am = call i32 @H5open() #14                  ; 0 uses
  %.pre48 = load i8, ptr @H5_libinit_g, align 1, !tbaa !15, !range !17
  %.pre49 = load i8, ptr @H5_libterm_g, align 1, !range !17
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.an = phi i8 [ %i.ag, %bb.g ], [ %.pre49, %bb.h ]
  %i.ao = phi i8 [ %i.ah, %bb.g ], [ %.pre48, %bb.h ]
  %i.ap = load i64, ptr @H5E_VFL_g, align 8, !tbaa !20
  %i.aq = trunc nuw i8 %i.ao to i1
  %i.ar = trunc nuw i8 %i.an to i1
  %i.as = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %i.as, label %bb.k, label %bb.j, !prof !19

bb.j:                                             ; preds = %bb.i
  %i.at = call i32 @H5open() #14                  ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.au = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !20
  %i.av = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.open_members, i32 noundef 1921, i64 noundef %i.ai, i64 noundef %i.ap, i64 noundef %i.au, ptr noundef nonnull @.str.23) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.ae

bb.l:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.aw = call i32 @H5Eauto_is_v2(i64 noundef 0, ptr noundef nonnull %i.c) #14 ; 0 uses
  %i.ax = load i32, ptr %i.c, align 4, !tbaa !8
  %.not34 = icmp eq i32 %i.ax, 0
  br i1 %.not34, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = call i32 @H5Eget_auto2(i64 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %i.d) #14 ; 0 uses
  %i.az = call i32 @H5Eset_auto2(i64 noundef 0, ptr noundef null, ptr noundef null) #14 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ba = call i32 @H5Eget_auto1(ptr noundef nonnull %1, ptr noundef nonnull %i.d) #14 ; 0 uses
  %i.bb = call i32 @H5Eset_auto1(ptr noundef null, ptr noundef null) #14 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bc = load i32, ptr %i.j, align 8, !tbaa !29
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.q
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !20
  %i.bf = call ptr @H5FDopen(ptr noundef nonnull %i.a, i32 noundef %i.bc, i64 noundef %i.be, i64 noundef -1) #14
  store ptr %i.bf, ptr %i.u, align 8, !tbaa !13
  %i.bg = load i32, ptr %i.c, align 4, !tbaa !8
  %.not35 = icmp eq i32 %i.bg, 0
  %i.bh = load ptr, ptr %1, align 8, !tbaa !12    ; 2 uses
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !22  ; 2 uses
  br i1 %.not35, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = call i32 @H5Eset_auto2(i64 noundef 0, ptr noundef %i.bh, ptr noundef %i.bi) #14 ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bk = call i32 @H5Eset_auto1(ptr noundef %i.bh, ptr noundef %i.bi) #14 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.bl = load ptr, ptr %i.u, align 8, !tbaa !13
  %.not36 = icmp eq ptr %i.bl, null
  br i1 %.not36, label %bb.s, label %bb.v

end_hunk_0
