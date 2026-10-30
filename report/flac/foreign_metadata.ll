Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/foreign_metadata?download=true
inline.NumInlined: 37
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@flac__foreign_metadata_read_from_aiff:bb.a
bb.at:                                            ; preds = %bb.b, %bb.c, %read_from_aiff_.exit
  %.0 = phi i32 [ %.2.i, %read_from_aiff_.exit ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @flac__foreign_metadata_read_from_wave(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 14 uses
  %i.b = alloca [28 x i8], align 16               ; 8 uses
  %i.c = tail call noalias ptr @fopen64(ptr noundef %1, ptr noundef nonnull @.str.3) ; 13 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not11 = icmp eq ptr %2, null
  br i1 %.not11, label %bb.ch, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.5, ptr %2, align 8, !tbaa !16
  br label %bb.ch

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.d = tail call i64 @ftello64(ptr noundef nonnull %i.c) ; 2 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.e, label %fread.inline.exit202.i

bb.e:                                             ; preds = %bb.d
  %.not187.i = icmp eq ptr %2, null
  br i1 %.not187.i, label %read_from_wave_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr @.str.17, ptr %2, align 8, !tbaa !16
  br label %read_from_wave_.exit

fread.inline.exit202.i:                           ; preds = %bb.d
  %i.f = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 12, ptr noundef nonnull %i.c)
  %i.g = icmp ult i64 %i.f, 12
  br i1 %i.g, label %bb.j, label %bb.g

bb.g:                                             ; preds = %fread.inline.exit202.i
  %i.h = load i32, ptr %i.a, align 1
  %i.i = icmp ne i32 %i.h, 1179011410
  %i.j = zext i1 %i.i to i32
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = load i32, ptr %i.a, align 1
  %i.l = icmp ne i32 %i.k, 875972178
  %i.m = zext i1 %i.l to i32
  %.not129.i = icmp eq i32 %i.m, 0
  br i1 %.not129.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i32, ptr %i.n, align 1
  %i.p = icmp ne i32 %i.o, 1163280727
  %i.q = zext i1 %i.p to i32
  %.not131.i = icmp eq i32 %i.q, 0
  br i1 %.not131.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %fread.inline.exit202.i
  %.not186.i = icmp eq ptr %2, null
  br i1 %.not186.i, label %read_from_wave_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr @.str.41, ptr %2, align 8, !tbaa !16
  br label %read_from_wave_.exit

bb.l:                                             ; preds = %bb.i
  %i.r = load i32, ptr %i.a, align 1
  %i.s = icmp ne i32 %i.r, 875972178
  %i.t = zext i1 %i.s to i32
  %.not133.i = icmp eq i32 %i.t, 0
  br i1 %.not133.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.u, align 8, !tbaa !26
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.w = load i32, ptr @FLAC__STREAM_METADATA_LENGTH_LEN, align 4, !tbaa !17
  %i.x = shl nuw i32 1, %i.w
  %i.y = load i32, ptr @FLAC__STREAM_METADATA_APPLICATION_ID_LEN, align 4, !tbaa !17
  %i.z = lshr i32 %i.y, 3
  %i.aa = sub i32 %i.x, %i.z                      ; 2 uses
  %.not.i203.i = icmp ugt i32 %i.aa, 12
  br i1 %.not.i203.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not22.i.i = icmp eq ptr %2, null
  br i1 %.not22.i.i, label %read_from_wave_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr @.str.36, ptr %2, align 8, !tbaa !16
  br label %read_from_wave_.exit

bb.q:                                             ; preds = %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !18 ; 2 uses
  %or.cond.i.i.i = icmp ugt i64 %i.ad, 1152921504606846974
  br i1 %or.cond.i.i.i, label %safe_realloc_nofree_muladd2_.exit.thread.i.i, label %safe_realloc_nofree_muladd2_.exit.i.i

safe_realloc_nofree_muladd2_.exit.i.i:            ; preds = %bb.q
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !14
  %i.af = shl nuw i64 %i.ad, 4
  %i.ag = add nuw i64 %i.af, 16
  %i.ah = call ptr @realloc(ptr noundef %i.ae, i64 noundef %i.ag) #15 ; 3 uses
  %.not20.i.i = icmp eq ptr %i.ah, null
  br i1 %.not20.i.i, label %safe_realloc_nofree_muladd2_.exit.thread.i.i, label %bb.s

safe_realloc_nofree_muladd2_.exit.thread.i.i:     ; preds = %safe_realloc_nofree_muladd2_.exit.i.i, %bb.q
  %.not21.i.i = icmp eq ptr %2, null
  br i1 %.not21.i.i, label %read_from_wave_.exit, label %bb.r

bb.r:                                             ; preds = %safe_realloc_nofree_muladd2_.exit.thread.i.i
  store ptr @.str.37, ptr %2, align 8, !tbaa !16
  br label %read_from_wave_.exit

bb.s:                                             ; preds = %safe_realloc_nofree_muladd2_.exit.i.i
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !18 ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ai ; 2 uses
  store i64 %i.d, ptr %i.aj, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 12, ptr %i.ak, align 8, !tbaa !21
  %i.al = add i64 %i.ai, 1
  store i64 %i.al, ptr %i.ac, align 8, !tbaa !18
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !14
  %i.am = load i32, ptr %i.v, align 8, !tbaa !26
  %.not135.i = icmp ne i32 %i.am, 0
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.ao = load i32, ptr %i.an, align 1            ; 2 uses
  %.not136.i = icmp eq i32 %i.ao, -1
  %or.cond234.i.a = select i1 %.not135.i, i1 %.not136.i, i1 false
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = and i64 %i.ap, 1
  %spec.select.v.i = add nuw nsw i64 %i.ap, 8
  %spec.select.i = add nuw nsw i64 %spec.select.v.i, %i.aq
  %.0105.i = select i1 %or.cond234.i.a, i64 -1, i64 %spec.select.i ; 2 uses
  %i.ar = call i32 @feof(ptr noundef nonnull %i.c) #14
  %.not138275.i = icmp eq i32 %i.ar, 0
  br i1 %.not138275.i, label %.lr.ph.i, label %.thread229.i

.lr.ph.i:                                         ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.t

bb.t:                                             ; preds = %bb.bv, %.lr.ph.i
  %.0103277.i = phi i64 [ -1, %.lr.ph.i ], [ %.4.i, %bb.bv ] ; 3 uses
  %.1106276.i = phi i64 [ %.0105.i, %.lr.ph.i ], [ %.4109.i, %bb.bv ] ; 3 uses
  %i.ax = call i64 @ftello64(ptr noundef nonnull %i.c) ; 2 uses
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.u, label %fread.inline.exit196.i

bb.u:                                             ; preds = %bb.t
  %.not178.i = icmp eq ptr %2, null
  br i1 %.not178.i, label %read_from_wave_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr @.str.22, ptr %2, align 8, !tbaa !16
  br label %read_from_wave_.exit

fread.inline.exit196.i:                           ; preds = %bb.t
  %i.az = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 8, ptr noundef nonnull %i.c) ; 2 uses
  %i.ba = icmp slt i64 %i.az, 8
  br i1 %i.ba, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %fread.inline.exit196.i
  %i.bb = icmp eq i64 %i.az, 0
  br i1 %i.bb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bc = call i32 @feof(ptr noundef nonnull %i.c) #14
  %.not176.i = icmp eq i32 %i.bc, 0
  br i1 %.not176.i, label %bb.y, label %.thread229.i

bb.y:                                             ; preds = %bb.x, %bb.w
  %.not177.i = icmp eq ptr %2, null
  br i1 %.not177.i, label %read_from_wave_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr @.str.43, ptr %2, align 8, !tbaa !16
  br label %read_from_wave_.exit

bb.aa:                                            ; preds = %fread.inline.exit196.i
  %i.bd = load i32, ptr %i.an, align 1
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %i.bf = and i64 %i.be, 1
  %spec.select188.i.a = add nuw nsw i64 %i.bf, %i.be ; 2 uses
  %i.bg = load i32, ptr %i.a, align 1
  %i.bh = icmp ne i32 %i.bg, 544501094
  %i.bi = zext i1 %i.bh to i32
  %.not141.i = icmp eq i32 %i.bi, 0
  br i1 %.not141.i, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %i.bj = load i64, ptr %i.at, align 8, !tbaa !23
  %.not142.i = icmp eq i64 %i.bj, 0
  br i1 %.not142.i, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not145.i = icmp eq ptr %2, null
  br i1 %.not145.i, label %read_from_wave_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr @.str.45, ptr %2, align 8, !tbaa !16
  br label %read_from_wave_.exit

bb.ae:                                            ; preds = %bb.ab
  %i.bk = load i64, ptr %i.as, align 8, !tbaa !24
  %.not143.i = icmp eq i64 %i.bk, 0
  br i1 %.not143.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not144.i = icmp eq ptr %2, null
  br i1 %.not144.i, label %read_from_wave_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr @.str.46, ptr %2, align 8, !tbaa !16
  br label %read_from_wave_.exit

bb.ah:                                            ; preds = %bb.ae
  %i.bl = load i64, ptr %i.ac, align 8, !tbaa !18
  store i64 %i.bl, ptr %i.at, align 8, !tbaa !23
  br label %bb.as

bb.ai:                                            ; preds = %bb.aa
  %i.bm = load i32, ptr %i.a, align 1
  %i.bn = icmp ne i32 %i.bm, 1635017060
  %i.bo = zext i1 %i.bn to i32
  %.not147.i = icmp eq i32 %i.bo, 0
  br i1 %.not147.i, label %bb.aj, label %bb.as

bb.aj:                                            ; preds = %bb.ai
  %i.bp = load i64, ptr %i.as, align 8, !tbaa !24
  %.not148.i = icmp eq i64 %i.bp, 0
  br i1 %.not148.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not153.i = icmp eq ptr %2, null
  br i1 %.not153.i, label %read_from_wave_.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr @.str.48, ptr %2, align 8, !tbaa !16
  br label %read_from_wave_.exit

bb.am:                                            ; preds = %bb.aj
  %i.bq = load i64, ptr %i.at, align 8, !tbaa !23
  %.not149.i = icmp eq i64 %i.bq, 0
  br i1 %.not149.i, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %.not150.i = icmp eq ptr %2, null
  br i1 %.not150.i, label %read_from_wave_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store ptr @.str.49, ptr %2, align 8, !tbaa !16
  br label %read_from_wave_.exit

bb.ap:                                            ; preds = %bb.am
  %i.br = load i64, ptr %i.ac, align 8, !tbaa !18 ; 2 uses
  store i64 %i.br, ptr %i.as, align 8, !tbaa !24
  %i.bs = load i32, ptr %i.v, align 8, !tbaa !26
  %.not151.i = icmp ne i32 %i.bs, 0
  %i.bt = icmp ult i64 %i.br, 2
  %or.cond235.i = select i1 %.not151.i, i1 %i.bt, i1 false
  br i1 %or.cond235.i, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %.not152.i = icmp eq ptr %2, null
  br i1 %.not152.i, label %read_from_wave_.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store ptr @.str.50, ptr %2, align 8, !tbaa !16
  br label %read_from_wave_.exit

bb.as:                                            ; preds = %bb.ap, %bb.ai, %bb.ah
  %i.bu = load i32, ptr %i.a, align 1
  %i.bv = icmp ne i32 %i.bu, 1635017060
  %i.bw = zext i1 %i.bv to i32
  %.not155.i = icmp eq i32 %i.bw, 0
  %3 = trunc i64 %spec.select188.i.a to i32
  %i.bx = add i32 %3, 8
  %i.by = select i1 %.not155.i, i32 8, i32 %i.bx  ; 2 uses
  %.not.i205.i = icmp ult i32 %i.by, %i.aa
  br i1 %.not.i205.i, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not22.i206.i = icmp eq ptr %2, null
  br i1 %.not22.i206.i, label %read_from_wave_.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  store ptr @.str.36, ptr %2, align 8, !tbaa !16
  br label %read_from_wave_.exit

bb.av:                                            ; preds = %bb.as
  %i.bz = load i64, ptr %i.ac, align 8, !tbaa !18 ; 2 uses
  %or.cond.i.i208.i = icmp ugt i64 %i.bz, 1152921504606846974
  br i1 %or.cond.i.i208.i, label %safe_realloc_nofree_muladd2_.exit.thread.i211.i, label %safe_realloc_nofree_muladd2_.exit.i209.i

safe_realloc_nofree_muladd2_.exit.i209.i:         ; preds = %bb.av
  %i.ca = load ptr, ptr %i.ab, align 8, !tbaa !14
  %i.cb = shl nuw i64 %i.bz, 4
  %i.cc = add nuw i64 %i.cb, 16
  %i.cd = call ptr @realloc(ptr noundef %i.ca, i64 noundef %i.cc) #15 ; 3 uses
  %.not20.i210.i = icmp eq ptr %i.cd, null
  br i1 %.not20.i210.i, label %safe_realloc_nofree_muladd2_.exit.thread.i211.i, label %bb.ax

safe_realloc_nofree_muladd2_.exit.thread.i211.i:  ; preds = %safe_realloc_nofree_muladd2_.exit.i209.i, %bb.av
  %.not21.i212.i = icmp eq ptr %2, null
  br i1 %.not21.i212.i, label %read_from_wave_.exit, label %bb.aw

bb.aw:                                            ; preds = %safe_realloc_nofree_muladd2_.exit.thread.i211.i
  store ptr @.str.37, ptr %2, align 8, !tbaa !16
  br label %read_from_wave_.exit

bb.ax:                                            ; preds = %safe_realloc_nofree_muladd2_.exit.i209.i
  %i.ce = load i64, ptr %i.ac, align 8, !tbaa !18 ; 2 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.ce ; 2 uses
  store i64 %i.ax, ptr %i.cf, align 8, !tbaa !20
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i32 %i.by, ptr %i.cg, align 8, !tbaa !21
  %i.ch = add i64 %i.ce, 1                        ; 2 uses
  store i64 %i.ch, ptr %i.ac, align 8, !tbaa !18
  store ptr %i.cd, ptr %i.ab, align 8, !tbaa !14
  %i.ci = load i32, ptr %i.v, align 8, !tbaa !26
  %.not157.i = icmp eq i32 %i.ci, 0
  br i1 %.not157.i, label %.thread223.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cj = icmp eq i64 %i.ch, 2
  br i1 %i.cj, label %bb.az, label %bb.bp

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.ck = load i32, ptr %i.a, align 1
  %i.cl = icmp ne i32 %i.ck, 875983716
  %i.cm = zext i1 %i.cl to i32
  %.not164.i = icmp eq i32 %i.cm, 0
  br i1 %.not164.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not175.i = icmp eq ptr %2, null
  br i1 %.not175.i, label %.thread.i, label %.thread.sink.split.i

bb.bb:                                            ; preds = %bb.az
  %i.cn = load i32, ptr %i.an, align 1            ; 2 uses
  %i.co = icmp ult i32 %i.cn, 28
  br i1 %i.co, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %.not174.i = icmp eq ptr %2, null
  br i1 %.not174.i, label %.thread.i, label %.thread.sink.split.i

bb.bd:                                            ; preds = %bb.bb
  %.not165.i = icmp eq i32 %i.cn, 28
  br i1 %.not165.i, label %fread.inline.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.not173.i = icmp eq ptr %2, null
  br i1 %.not173.i, label %.thread.i, label %.thread.sink.split.i

fread.inline.exit.i:                              ; preds = %bb.bd
  %i.cp = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 28, ptr noundef nonnull %i.c)
  %i.cq = icmp ult i64 %i.cp, 28
  br i1 %i.cq, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %fread.inline.exit.i
  %.not172.i = icmp eq ptr %2, null
  br i1 %.not172.i, label %.thread.i, label %.thread.sink.split.i

bb.bg:                                            ; preds = %fread.inline.exit.i
  %i.cr = load i32, ptr %i.au, align 8
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = load i32, ptr %i.av, align 4
  %i.cu = zext i32 %i.ct to i64
  %i.cv = shl nuw i64 %i.cu, 32
  %i.cw = or disjoint i64 %i.cv, %i.cs            ; 2 uses
  %i.cx = icmp eq i64 %i.cw, -1
  br i1 %i.cx, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %.not171.i = icmp eq ptr %2, null
  br i1 %.not171.i, label %.thread.i, label %.thread.sink.split.i

bb.bi:                                            ; preds = %bb.bg
  %i.cy = and i64 %i.cs, 1
  %spec.select189.i = add nuw nsw i64 %i.cw, %i.cy ; 2 uses
  %i.cz = icmp slt i64 %spec.select189.i, 0
  br i1 %i.cz, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %.not170.i = icmp eq ptr %2, null
  br i1 %.not170.i, label %.thread.i, label %.thread.sink.split.i

bb.bk:                                            ; preds = %bb.bi
  %i.da = load i32, ptr %i.aw, align 8
  %.not167.i = icmp eq i32 %i.da, 0
  br i1 %.not167.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.not169.i = icmp eq ptr %2, null
  br i1 %.not169.i, label %.thread.i, label %.thread.sink.split.i

bb.bm:                                            ; preds = %bb.bk
  %i.db = load i64, ptr %i.b, align 16
  %i.dc = add i64 %i.db, 8                        ; 2 uses
  %i.dd = icmp slt i64 %i.dc, 0
  br i1 %i.dd, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %.not168.i = icmp eq ptr %2, null
  br i1 %.not168.i, label %.thread.i, label %.thread.sink.split.i

.thread.sink.split.i:                             ; preds = %bb.bn, %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.be, %bb.bc, %bb.ba
  %.str.52.sink.i = phi ptr [ @.str.58, %bb.bl ], [ @.str.52, %bb.ba ], [ @.str.53, %bb.bc ], [ @.str.54, %bb.be ], [ @.str.55, %bb.bf ], [ @.str.56, %bb.bh ], [ @.str.57, %bb.bj ], [ @.str.59, %bb.bn ]
  store ptr %.str.52.sink.i, ptr %2, align 8, !tbaa !16
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.sink.split.i, %bb.bn, %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.be, %bb.bc, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %read_from_wave_.exit

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.bv

bb.bp:                                            ; preds = %bb.ay
  %i.de = load i32, ptr %i.a, align 1
  %i.df = icmp ne i32 %i.de, 1635017060
  %i.dg = zext i1 %i.df to i32
  %.not160.i = icmp eq i32 %i.dg, 0
  %i.dh = load i32, ptr %i.an, align 1
  %i.di = icmp eq i32 %i.dh, -1
  %or.cond237.i = select i1 %.not160.i, i1 %i.di, i1 false
  br i1 %or.cond237.i, label %bb.bq, label %.thread223.i

bb.bq:                                            ; preds = %bb.bp
  %i.dj = call i32 @fseeko64(ptr noundef nonnull %i.c, i64 noundef %.0103277.i, i32 noundef 1)
  %i.dk = icmp slt i32 %i.dj, 0
  br i1 %i.dk, label %bb.br, label %bb.bv

bb.br:                                            ; preds = %bb.bq
  %.not161.i = icmp eq ptr %2, null
  br i1 %.not161.i, label %read_from_wave_.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  store ptr @.str.60, ptr %2, align 8, !tbaa !16
  br label %read_from_wave_.exit

.thread223.i:                                     ; preds = %bb.bp, %bb.ax
  %i.dl = call i32 @fseeko64(ptr noundef nonnull %i.c, i64 noundef %spec.select188.i.a, i32 noundef 1)
  %i.dm = icmp slt i32 %i.dl, 0
  br i1 %i.dm, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %.thread223.i
  %.not162.i = icmp eq ptr %2, null
  br i1 %.not162.i, label %read_from_wave_.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store ptr @.str.61, ptr %2, align 8, !tbaa !16
  br label %read_from_wave_.exit

bb.bv:                                            ; preds = %.thread223.i, %bb.bq, %bb.bo
  %.4109.i = phi i64 [ %.1106276.i, %bb.bq ], [ %.1106276.i, %.thread223.i ], [ %i.dc, %bb.bo ] ; 2 uses
  %.4.i = phi i64 [ %.0103277.i, %bb.bq ], [ %.0103277.i, %.thread223.i ], [ %spec.select189.i, %bb.bo ]
  %i.dn = call i32 @feof(ptr noundef nonnull %i.c) #14
  %.not138.i = icmp eq i32 %i.dn, 0
  br i1 %.not138.i, label %bb.t, label %.thread229.i

.thread229.i:                                     ; preds = %bb.bv, %bb.x, %bb.s
  %.1106257.i = phi i64 [ %.1106276.i, %bb.x ], [ %.0105.i, %bb.s ], [ %.4109.i, %bb.bv ] ; 2 uses
  %i.do = load i32, ptr %i.v, align 8, !tbaa !26
  %i.dp = icmp ne i32 %i.do, 0
  %i.dq = icmp eq i64 %.1106257.i, -1
  %or.cond.i = select i1 %i.dp, i1 %i.dq, i1 false
  br i1 %or.cond.i, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %.thread229.i
  %.not185.i = icmp eq ptr %2, null
  br i1 %.not185.i, label %read_from_wave_.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
end_hunk_0
