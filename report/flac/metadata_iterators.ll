Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/metadata_iterators?download=true
inline.NumInlined: 207
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 89
loop-unroll.NumUnrolled: 109
begin_hunk_0_@rewrite_whole_file_:bb.a

bb.an:                                            ; preds = %bb.am
  %i.fq = call i32 @fclose(ptr noundef nonnull %i.dw) ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fr = load ptr, ptr %i.h, align 8, !tbaa !122 ; 3 uses
  %.not8.i.i51 = icmp eq ptr %i.fr, null
  br i1 %.not8.i.i51, label %cleanup_tempfile_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fs = call i32 @unlink(ptr noundef nonnull %i.fr) #32 ; 0 uses
  call void @free(ptr noundef nonnull %i.fr) #32
  br label %cleanup_tempfile_.exit.i

cleanup_tempfile_.exit.i:                         ; preds = %bb.ap, %bb.ao
  store i32 7, ptr %i.dp, align 8, !tbaa !73
  br label %simple_iterator_pop_.exit

bb.aq:                                            ; preds = %bb.al
  %i.ft = load ptr, ptr %0, align 8, !tbaa !67    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.fu = call i32 @feof(ptr noundef %i.ft) #32
  %.not14.i.i = icmp eq i32 %i.fu, 0
  br i1 %.not14.i.i, label %fread.inline.exit.i.i52, label %.loopexit.i

fread.inline.exit.i.i52:                          ; preds = %bb.aq, %bb.at
  %i.fv = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 8192, ptr noundef nonnull %i.ft) ; 3 uses
  %cond.i.i = icmp eq i64 %i.fv, 0
  br i1 %cond.i.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %fread.inline.exit.i.i52
  %i.fw = call i32 @feof(ptr noundef nonnull %i.ft) #32
  %.not11.i.i = icmp eq i32 %i.fw, 0
  br i1 %.not11.i.i, label %bb.au, label %bb.at

bb.as:                                            ; preds = %fread.inline.exit.i.i52
  %i.fx = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %i.fv, ptr noundef %i.dw)
  %.not13.i.i = icmp eq i64 %i.fx, %i.fv
  br i1 %.not13.i.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.fy = call i32 @feof(ptr noundef nonnull %i.ft) #32
  %.not.i70.i = icmp eq i32 %i.fy, 0
  br i1 %.not.i70.i, label %fread.inline.exit.i.i52, label %.loopexit.i, !llvm.loop !10

bb.au:                                            ; preds = %bb.as, %bb.ar
  %.sink.i.i53 = phi i32 [ 6, %bb.ar ], [ 8, %bb.as ]
  store i32 %.sink.i.i53, ptr %i.dp, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %.not.i71.i = icmp eq ptr %i.dw, null
  br i1 %.not.i71.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fz = call i32 @fclose(ptr noundef nonnull %i.dw) ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ga = load ptr, ptr %i.h, align 8, !tbaa !122 ; 3 uses
  %.not8.i72.i = icmp eq ptr %i.ga, null
  br i1 %.not8.i72.i, label %simple_iterator_pop_.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gb = call i32 @unlink(ptr noundef nonnull %i.ga) #32 ; 0 uses
  call void @free(ptr noundef nonnull %i.ga) #32
  br label %simple_iterator_pop_.exit

.loopexit.i:                                      ; preds = %bb.at, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %.not57.i = icmp eq i32 %.02459, 0
  br i1 %.not57.i, label %bb.bk, label %bb.ay

bb.ay:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.gc = call i32 @fseeko64(ptr noundef %i.dw, i64 noundef %.060, i32 noundef 0)
  %.not58.i = icmp eq i32 %i.gc, 0
  br i1 %.not58.i, label %fread.inline.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not.i74.i = icmp eq ptr %i.dw, null
  br i1 %.not.i74.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gd = call i32 @fclose(ptr noundef nonnull %i.dw) ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ge = load ptr, ptr %i.h, align 8, !tbaa !122 ; 3 uses
  %.not8.i75.i = icmp eq ptr %i.ge, null
  br i1 %.not8.i75.i, label %.critedge.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gf = call i32 @unlink(ptr noundef nonnull %i.ge) #32 ; 0 uses
  call void @free(ptr noundef nonnull %i.ge) #32
  br label %.critedge.i

fread.inline.exit.i:                              ; preds = %bb.ay
  %i.gg = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %i.dw)
  %i.gh = icmp eq i64 %i.gg, 1
  br i1 %i.gh, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %fread.inline.exit.i
  %i.gi = call i32 @fclose(ptr noundef nonnull %i.dw) ; 0 uses
  %i.gj = load ptr, ptr %i.h, align 8, !tbaa !122 ; 3 uses
  %.not8.i78.i = icmp eq ptr %i.gj, null
  br i1 %.not8.i78.i, label %.critedge.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gk = call i32 @unlink(ptr noundef nonnull %i.gj) #32 ; 0 uses
  call void @free(ptr noundef nonnull %i.gj) #32
  br label %.critedge.i

bb.bf:                                            ; preds = %fread.inline.exit.i
  %i.gl = icmp sgt i32 %.02459, 0
  %i.gm = load i8, ptr %i.b, align 1
  %i.gn = and i8 %i.gm, 127
  %masksel.i = select i1 %i.gl, i8 0, i8 -128
  %storemerge.i = or disjoint i8 %i.gn, %masksel.i
  store i8 %storemerge.i, ptr %i.b, align 1, !tbaa !52
  %i.go = call i32 @fseeko64(ptr noundef nonnull %i.dw, i64 noundef %.060, i32 noundef 0)
  %.not60.i = icmp eq i32 %i.go, 0
  br i1 %.not60.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call fastcc void @cleanup_tempfile_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h)
  br label %.critedge.i

bb.bh:                                            ; preds = %bb.bf
  %i.gp = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %i.dw)
  %.not61.i = icmp eq i64 %i.gp, 1
  br i1 %.not61.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call fastcc void @cleanup_tempfile_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h)
  br label %.critedge.i

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.loopexit.i
  %i.gq = load ptr, ptr %0, align 8, !tbaa !67
  %i.gr = call i32 @fclose(ptr noundef %i.gq)     ; 0 uses
  %i.gs = load ptr, ptr %i.dl, align 8, !tbaa !69
  %i.gt = call fastcc i32 @transport_tempfile_(ptr noundef %i.gs, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.dp)
  %.not62.i = icmp eq i32 %i.gt, 0
  br i1 %.not62.i, label %simple_iterator_pop_.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !68
  %.not63.i = icmp eq i32 %i.gv, 0
  br i1 %.not63.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gw = load ptr, ptr %i.dl, align 8, !tbaa !69
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call fastcc void @set_file_stats_(ptr noundef %i.gw, ptr noundef nonnull %i.gx)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !131
  %.not64.i = icmp eq i32 %i.gz, 0
  %i.ha = zext i1 %.not64.i to i32
  %i.hb = call fastcc i32 @simple_iterator_prime_input_(ptr noundef nonnull %0, i32 noundef %i.ha)
  %.not65.i = icmp eq i32 %i.hb, 0
  br i1 %.not65.i, label %simple_iterator_pop_.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  br i1 %.not31.not, label %.preheader.i, label %simple_iterator_copy_file_postfix_.exit

.preheader.i:                                     ; preds = %bb.bo, %bb.bp
  %i.hc = load i32, ptr %i.df, align 8, !tbaa !130
  %i.hd = zext i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.hd
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !60
  %i.hg = add nsw i64 %i.hf, 4
  %i.hh = load i32, ptr %i.fl, align 4, !tbaa !77
  %i.hi = zext i32 %i.hh to i64
  %i.hj = add nsw i64 %i.hg, %i.hi
  %i.hk = icmp slt i64 %i.hj, %i.fi
  br i1 %i.hk, label %bb.bp, label %simple_iterator_copy_file_postfix_.exit.thread75

bb.bp:                                            ; preds = %.preheader.i
  %i.hl = call i32 @FLAC__metadata_simple_iterator_next(ptr noundef nonnull %0)
  %.not67.i = icmp eq i32 %i.hl, 0
  br i1 %.not67.i, label %simple_iterator_pop_.exit, label %.preheader.i, !llvm.loop !192

.critedge.i:                                      ; preds = %bb.bi, %bb.bg, %bb.be, %bb.bd, %bb.bc, %bb.bb
  %.sink.i = phi i32 [ 8, %bb.bi ], [ 7, %bb.bg ], [ 7, %bb.bc ], [ 7, %bb.bb ], [ 6, %bb.bd ], [ 6, %bb.be ]
  store i32 %.sink.i, ptr %i.dp, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %simple_iterator_pop_.exit

simple_iterator_copy_file_postfix_.exit:          ; preds = %bb.bo
  store i64 %i.fi, ptr %i.dg, align 8, !tbaa !60
  %i.hm = load i32, ptr %i.df, align 8, !tbaa !130
  %i.hn = add i32 %i.hm, 1
  store i32 %i.hn, ptr %i.df, align 8, !tbaa !130
  %i.ho = call fastcc i32 @simple_iterator_pop_(ptr noundef nonnull %0) ; 2 uses
  %.not34 = icmp eq i32 %i.ho, 0
  %brmerge = or i1 %.not.i4261, %.not34
  br i1 %brmerge, label %simple_iterator_pop_.exit, label %bb.bq

simple_iterator_copy_file_postfix_.exit.thread75: ; preds = %.preheader.i
  br i1 %.not.i4261, label %simple_iterator_pop_.exit, label %bb.bq

bb.bq:                                            ; preds = %simple_iterator_copy_file_postfix_.exit, %simple_iterator_copy_file_postfix_.exit.thread75
  %i.hp = call i32 @FLAC__metadata_simple_iterator_next(ptr noundef nonnull %0)
  br label %simple_iterator_pop_.exit

simple_iterator_pop_.exit:                        ; preds = %bb.bp, %simple_iterator_copy_file_postfix_.exit, %.critedge.i, %bb.ax, %bb.bk, %bb.aw, %bb.bn, %cleanup_tempfile_.exit.i, %bb.ab, %bb.aa, %bb.t, %bb.u, %bb.p, %bb.l, %bb.j, %bb.ak, %bb.aj, %bb.ag, %bb.af, %bb.h, %read_metadata_block_header_cb_.exit.i.i, %bb.f, %simple_iterator_copy_file_postfix_.exit.thread75, %bb.bq
  %.025 = phi i32 [ %i.hp, %bb.bq ], [ %i.ho, %simple_iterator_copy_file_postfix_.exit ], [ 0, %bb.l ], [ 0, %bb.ag ], [ 0, %bb.h ], [ 0, %bb.ab ], [ 1, %simple_iterator_copy_file_postfix_.exit.thread75 ], [ 0, %bb.f ], [ 0, %read_metadata_block_header_cb_.exit.i.i ], [ 0, %bb.af ], [ 0, %bb.aj ], [ 0, %bb.ak ], [ 0, %bb.j ], [ 0, %bb.p ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.aa ], [ 0, %cleanup_tempfile_.exit.i ], [ 0, %bb.bn ], [ 0, %bb.aw ], [ 0, %bb.bk ], [ 0, %bb.ax ], [ 0, %.critedge.i ], [ 0, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #32
  ret i32 %.025
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @simple_iterator_pop_(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !130
  %i.d = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !130
  %i.e = load ptr, ptr %0, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !60
  %i.j = tail call i32 @fseeko64(ptr noundef %i.e, i64 noundef %i.i, i32 noundef 0)
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 7, ptr %i.k, align 8, !tbaa !73
  br label %read_metadata_block_header_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.m = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 4, ptr noundef %i.l) #32, !inline_history !7
  %.not.i.i = icmp eq i64 %i.m, 4
  br i1 %.not.i.i, label %read_metadata_block_header_cb_.exit.i, label %bb.d

read_metadata_block_header_cb_.exit.i:            ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.q = load i8, ptr %i.a, align 1, !tbaa !52    ; 2 uses
  %.lobit.i.i = lshr i8 %i.q, 7
  %i.r = zext nneg i8 %.lobit.i.i to i32
  store i32 %i.r, ptr %i.p, align 4, !tbaa !51
  %i.s = and i8 %i.q, 127
  %i.t = zext nneg i8 %i.s to i32
  store i32 %i.t, ptr %i.o, align 8, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.w = load i8, ptr %i.u, align 1, !tbaa !52
  %i.x = zext i8 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.z = load i8, ptr %i.v, align 1, !tbaa !52
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.x, 16
  %i.ac = shl nuw nsw i32 %i.aa, 8
  %i.ad = or disjoint i32 %i.ac, %i.ab
  %i.ae = load i8, ptr %i.y, align 1, !tbaa !52
  %i.af = zext i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af
  store i32 %i.ag, ptr %i.n, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %read_metadata_block_header_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 6, ptr %i.ah, align 8, !tbaa !73
  br label %read_metadata_block_header_.exit

read_metadata_block_header_.exit:                 ; preds = %bb.d, %read_metadata_block_header_cb_.exit.i, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %read_metadata_block_header_cb_.exit.i ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define range(i32 0, 12) i32 @FLAC__metadata_simple_iterator_insert_block_after(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 8 uses
  %i.b = alloca [4 x i8], align 1                 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.d = load i32, ptr %i.c, align 4, !tbaa !131
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 4, ptr %i.e, align 8, !tbaa !73
  br label %simple_iterator_pop_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 8, !tbaa !79
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 1, ptr %i.h, align 8, !tbaa !73
  br label %simple_iterator_pop_.exit

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 5 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !74   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 %i.j, ptr %i.k, align 4, !tbaa !76
  %.not46 = icmp ne i32 %2, 0
  %.not47 = icmp eq i32 %i.j, 0
  %or.cond = select i1 %.not46, i1 %.not47, i1 false
  br i1 %or.cond, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 6 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !130  ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !60
  %i.r = add i32 %i.n, 1                          ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.s
  store i64 %i.q, ptr %i.t, align 8, !tbaa !60
  store i32 %i.r, ptr %i.m, align 8, !tbaa !130
  %i.u = tail call i32 @FLAC__metadata_simple_iterator_next(ptr noundef nonnull %0)
  %.not48 = icmp eq i32 %i.u, 0
  br i1 %.not48, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %i.m, align 8, !tbaa !130
  %i.w = add i32 %i.v, -1                         ; 2 uses
  store i32 %i.w, ptr %i.m, align 8, !tbaa !130
  %i.x = load ptr, ptr %0, align 8, !tbaa !67
  %i.y = zext i32 %i.w to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !60
  %i.ab = tail call i32 @fseeko64(ptr noundef %i.x, i64 noundef %i.aa, i32 noundef 0)
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 7, ptr %i.ac, align 8, !tbaa !73
  br label %simple_iterator_pop_.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %0, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.ae = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 4, ptr noundef %i.ad) #32, !inline_history !7
  %.not.i.i.i = icmp eq i64 %i.ae, 4
  br i1 %.not.i.i.i, label %read_metadata_block_header_cb_.exit.i.i, label %bb.j

read_metadata_block_header_cb_.exit.i.i:          ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ah = load i8, ptr %i.b, align 1, !tbaa !52   ; 2 uses
  %.lobit.i.i.i = lshr i8 %i.ah, 7
  %i.ai = zext nneg i8 %.lobit.i.i.i to i32
  store i32 %i.ai, ptr %i.i, align 4, !tbaa !51
  %i.aj = and i8 %i.ah, 127
  %i.ak = zext nneg i8 %i.aj to i32
  store i32 %i.ak, ptr %i.ag, align 8, !tbaa !51
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.an = load i8, ptr %i.al, align 1, !tbaa !52
  %i.ao = zext i8 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.aq = load i8, ptr %i.am, align 1, !tbaa !52
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ao, 16
  %i.at = shl nuw nsw i32 %i.ar, 8
  %i.au = or disjoint i32 %i.at, %i.as
  %i.av = load i8, ptr %i.ap, align 1, !tbaa !52
  %i.aw = zext i8 %i.av to i32
  %i.ax = or disjoint i32 %i.au, %i.aw
  store i32 %i.ax, ptr %i.af, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %simple_iterator_pop_.exit

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 6, ptr %i.ay, align 8, !tbaa !73
  br label %simple_iterator_pop_.exit

bb.k:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !71
  %.not49 = icmp eq i32 %i.ba, 1
  br i1 %.not49, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !77 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !78 ; 3 uses
  %i.bf = icmp eq i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bg = load i32, ptr %i.i, align 4, !tbaa !74
  br label %.sink.split

bb.n:                                             ; preds = %bb.l
end_hunk_0
