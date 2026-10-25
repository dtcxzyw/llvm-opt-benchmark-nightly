Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/modpost?download=true
inline.NumInlined: 205
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@main:bb.a
  br i1 %.not23.i138, label %bb.dg, label %.loopexit.i139

bb.dg:                                            ; preds = %.lr.ph31.i137
  %i.li = getelementptr inbounds nuw i8, ptr %.030.i, i64 16 ; 3 uses
  %.pn25.i = load ptr, ptr %i.li, align 8, !tbaa !45 ; 2 uses
  %.not2426.i = icmp eq ptr %.pn25.i, %i.li
  br i1 %.not2426.i, label %.loopexit.i139, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %bb.dg
  %i.lj = getelementptr inbounds nuw i8, ptr %.030.i, i64 148
  %.b.pre32.i = load i1, ptr @trim_unused_exports, align 1
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dk, %.lr.ph.i144
  %.b.i145 = phi i1 [ %.b.pre32.i, %.lr.ph.i144 ], [ %.b33.i, %bb.dk ]
  %.pn27.i = phi ptr [ %.pn25.i, %.lr.ph.i144 ], [ %.pn.i146, %bb.dk ] ; 6 uses
  br i1 %.b.i145, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.lk = getelementptr inbounds nuw i8, ptr %.pn27.i, i64 40
  %i.ll = load i8, ptr %i.lk, align 8, !tbaa !48, !range !51, !noundef !52
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.ln = getelementptr inbounds nuw i8, ptr %.pn27.i, i64 32
  %i.lo = load i32, ptr %i.ln, align 8, !tbaa !33
  %i.lp = getelementptr inbounds nuw i8, ptr %.pn27.i, i64 41
  %i.lq = getelementptr inbounds nuw i8, ptr %.pn27.i, i64 39
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !48, !range !51, !noundef !52
  %i.ls = trunc nuw i8 %i.lr to i1
  %i.lt = select i1 %i.ls, ptr @.str.222, ptr @.str.15
  %i.lu = getelementptr inbounds nuw i8, ptr %.pn27.i, i64 24
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !24
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %2, ptr noundef nonnull @.str.221, i32 noundef %i.lo, ptr noundef nonnull %i.lp, ptr noundef nonnull %i.lj, ptr noundef nonnull %i.lt, ptr noundef %i.lv)
  %.b.pre.i = load i1, ptr @trim_unused_exports, align 1
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.b33.i = phi i1 [ true, %bb.di ], [ %.b.pre.i, %bb.dj ]
  %.pn.i146 = load ptr, ptr %.pn27.i, align 8, !tbaa !45 ; 2 uses
  %.not24.i = icmp eq ptr %.pn.i146, %i.li
  br i1 %.not24.i, label %.loopexit.i139, label %bb.dh, !llvm.loop !87

.loopexit.i139:                                   ; preds = %bb.dk, %bb.dg, %.lr.ph31.i137
  %.0.i140 = load ptr, ptr %.030.i, align 8, !tbaa !45 ; 2 uses
  %.not.i141 = icmp eq ptr %.0.i140, @modules
  br i1 %.not.i141, label %._crit_edge.loopexit.i, label %.lr.ph31.i137, !llvm.loop !88

._crit_edge.loopexit.i:                           ; preds = %.loopexit.i139
  %.pre.i142 = load ptr, ptr %2, align 8, !tbaa !42
  br label %write_dump.exit

write_dump.exit:                                  ; preds = %bb.df, %._crit_edge.loopexit.i
  %i.lw = phi ptr [ %.pre.i142, %._crit_edge.loopexit.i ], [ null, %bb.df ]
  call fastcc void @write_buf(ptr noundef %2, ptr noundef nonnull readonly %.053)
  call void @free(ptr noundef %i.lw) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.dl

bb.dl:                                            ; preds = %write_dump.exit, %bb.de
  %i.lx = load i32, ptr @sec_mismatch_count, align 4, !tbaa !33
  %i.ly = icmp ne i32 %i.lx, 0
  %.b62 = load i1, ptr @sec_mismatch_warn_only, align 1
  %or.cond.not = select i1 %i.ly, i1 %.b62, i1 false
  br i1 %or.cond.not, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  call void (i1, ptr, ...) @modpost_log(i1 noundef zeroext true, ptr noundef nonnull @.str.6)
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.lz = load i32, ptr @nr_unresolved, align 4, !tbaa !33 ; 2 uses
  %i.ma = icmp ugt i32 %i.lz, 10
  br i1 %i.ma, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.mb = add i32 %i.lz, -10
  call void (i1, ptr, ...) @modpost_log(i1 noundef zeroext false, ptr noundef nonnull @.str.7, i32 noundef %i.mb)
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.b = load i1, ptr @error_occurred, align 1
  %i.mc = zext i1 %.b to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret i32 %i.mc
}

; Function Attrs: nounwind
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define internal fastcc void @read_symbols(ptr noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca [4096 x i8], align 16             ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %struct.stat, align 8               ; 5 uses
  %2 = alloca %struct.elf_info, align 8           ; 35 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, i8 0, i64 120, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.e = tail call i32 (ptr, i32, ...) @open(ptr noundef readonly %0, i32 noundef 0) #25 ; 5 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %grab_file.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @fstat(i32 noundef %i.e, ptr noundef nonnull %1) #25
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.c, label %.thread389.i

.thread389.i:                                     ; preds = %bb.b
  %i.h = tail call i32 @close(i32 noundef %i.e) #25 ; 0 uses
  br label %grab_file.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20   ; 6 uses
  store i64 %i.j, ptr %2, align 8, !tbaa !107
  %i.k = tail call ptr @mmap(ptr noundef null, i64 noundef %i.j, i32 noundef 3, i32 noundef 2, i32 noundef %i.e, i64 noundef 0) #25 ; 29 uses
  %i.l = tail call i32 @close(i32 noundef %i.e) #25 ; 0 uses
  %i.m = icmp eq ptr %i.k, inttoptr (i64 -1 to ptr)
  br i1 %i.m, label %grab_file.exit.thread.i, label %grab_file.exit.i

grab_file.exit.thread.i:                          ; preds = %bb.c, %.thread389.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.d

grab_file.exit.i:                                 ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %grab_file.exit.i, %grab_file.exit.thread.i
  %.b.i = load i1, ptr @ignore_missing_files, align 1
  br i1 %.b.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.o = tail call ptr @__errno_location() #32
  %i.p = load i32, ptr %i.o, align 4, !tbaa !33
  %i.q = tail call ptr @strerror(i32 noundef %i.p) #25
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.28, ptr noundef %0, ptr noundef %i.q) #27 ; 0 uses
  br label %parse_elf.exit.thread

bb.f:                                             ; preds = %bb.d
  tail call void @perror(ptr noundef %0) #26
  tail call void @exit(i32 noundef 1) #29
  unreachable

bb.g:                                             ; preds = %grab_file.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  store ptr %i.k, ptr %i.s, align 8, !tbaa !35
  %i.t = icmp ult i64 %i.j, 64
  br i1 %i.t, label %parse_elf.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load i8, ptr %i.k, align 8, !tbaa !22
  %.not288.i = icmp eq i8 %i.u, 127
  br i1 %.not288.i, label %bb.i, label %parse_elf.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !22
  %.not289.i = icmp eq i8 %i.w, 69
  br i1 %.not289.i, label %bb.j, label %parse_elf.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.y = load i8, ptr %i.x, align 2, !tbaa !22
  %.not290.i = icmp eq i8 %i.y, 76
  br i1 %.not290.i, label %bb.k, label %parse_elf.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !22
  %.not291.i = icmp eq i8 %i.aa, 70
  br i1 %.not291.i, label %bb.l, label %parse_elf.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !22
  switch i8 %i.ac, label %bb.n [
    i8 1, label %bb.o
    i8 2, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  tail call void (i1, ptr, ...) @modpost_log(i1 noundef zeroext true, ptr noundef nonnull @.str.29)
  tail call void @exit(i32 noundef 1) #29
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.l
  %storemerge.i = phi i8 [ 1, %bb.m ], [ 0, %bb.l ] ; 2 uses
  store i8 %storemerge.i, ptr @target_is_big_endian, align 1, !tbaa !48
  %i.ad = load i8, ptr @host_is_big_endian, align 1, !tbaa !48, !range !51, !noundef !52
  %i.ae = icmp eq i8 %storemerge.i, %i.ad         ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !108 ; 2 uses
  br i1 %i.ae, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !109
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 60
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !110
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 62
  %i.am = load i16, ptr %i.al, align 2, !tbaa !111
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.ag) ; 2 uses
  store i16 %rev.i.i, ptr %i.af, align 8, !tbaa !108
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 18 ; 2 uses
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !56
  %rev.i306.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.ao)
  store i16 %rev.i306.i, ptr %i.an, align 2, !tbaa !56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !112
  %i.ar = tail call noundef i32 @llvm.bswap.i32(i32 %i.aq)
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !112
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !113
  %i.au = tail call noundef i64 @llvm.bswap.i64(i64 %i.at)
  store i64 %i.au, ptr %i.as, align 8, !tbaa !113
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !114
  %i.ax = tail call noundef i64 @llvm.bswap.i64(i64 %i.aw)
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !114
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !109
  %i.ba = tail call noundef i64 @llvm.bswap.i64(i64 %i.az) ; 2 uses
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !109
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !115
  %i.bd = tail call noundef i32 @llvm.bswap.i32(i32 %i.bc)
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !115
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 52 ; 2 uses
  %i.bf = load <4 x i16>, ptr %i.be, align 4, !tbaa !116
  %i.bg = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.bf)
  store <4 x i16> %i.bg, ptr %i.be, align 4, !tbaa !116
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 60 ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 4, !tbaa !110
  %rev.i311.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.bi) ; 2 uses
  store i16 %rev.i311.i, ptr %i.bh, align 4, !tbaa !110
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 62
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !111
  %rev.i312.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.bk)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.in297369.i = phi i16 [ %i.ak, %bb.p ], [ %rev.i311.i, %bb.q ] ; 2 uses
  %i.bl = phi i64 [ %i.ai, %bb.p ], [ %i.ba, %bb.q ] ; 3 uses
  %.in317322326330334338342347352357362367.i = phi i16 [ %i.ag, %bb.p ], [ %rev.i.i, %bb.q ]
  %.in298.i = phi i16 [ %i.am, %bb.p ], [ %rev.i312.i, %bb.q ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 62
  store i16 %.in298.i, ptr %i.bm, align 2, !tbaa !111
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bl ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !36
  %.not299.i = icmp eq i16 %.in317322326330334338342347352357362367.i, 1
  br i1 %.not299.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (i1, ptr, ...) @modpost_log(i1 noundef zeroext true, ptr noundef nonnull @.str.30, ptr noundef %0)
  tail call void @exit(i32 noundef 1) #29
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bp = icmp ugt i64 %i.bl, %i.j
  br i1 %i.bp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void (i1, ptr, ...) @modpost_log(i1 noundef zeroext true, ptr noundef nonnull @.str.31, i64 noundef %i.bl, ptr noundef %0, i64 noundef %i.j)
  tail call void @exit(i32 noundef 1) #29
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bq = icmp eq i16 %.in297369.i, 0
  br i1 %i.bq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !117 ; 2 uses
  %i.bt = tail call i64 @llvm.bswap.i64(i64 %i.bs)
  %i.bu = select i1 %i.ae, i64 %i.bs, i64 %i.bt
  %i.bv = trunc i64 %i.bu to i32
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bw = zext i16 %.in297369.i to i32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink.i = phi i32 [ %i.bw, %bb.x ], [ %i.bv, %bb.w ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 4 uses
  store i32 %.sink.i, ptr %i.bx, align 4, !tbaa !57
  %i.by = icmp eq i16 %.in298.i, -1
  br i1 %i.by, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !118 ; 2 uses
  %i.cb = tail call i32 @llvm.bswap.i32(i32 %i.ca)
  %i.cc = select i1 %i.ae, i32 %i.ca, i32 %i.cb
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.cd = zext i16 %.in298.i to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink440.i = phi i32 [ %i.cd, %bb.aa ], [ %i.cc, %bb.z ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  store i32 %.sink440.i, ptr %i.ce, align 8, !tbaa !58
  %.not411.i = icmp eq i32 %.sink.i, 0
  br i1 %.not411.i, label %._crit_edge402.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ab
  %wide.trip.count419.i = zext i32 %.sink.i to i64 ; 2 uses
  br i1 %i.ae, label %._crit_edge.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.split.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [64 x i8], ptr %i.bn, i64 %indvars.iv.i ; 11 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !59
  %i.ch = tail call noundef i32 @llvm.bswap.i32(i32 %i.cg)
  store i32 %i.ch, ptr %i.cf, align 8, !tbaa !59
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 4 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !119
  %i.ck = tail call noundef i32 @llvm.bswap.i32(i32 %i.cj)
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !119
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !60
  %i.cn = tail call noundef i64 @llvm.bswap.i64(i64 %i.cm)
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !60
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !120
  %i.cq = tail call noundef i64 @llvm.bswap.i64(i64 %i.cp)
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !120
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 24 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !38
  %i.ct = tail call noundef i64 @llvm.bswap.i64(i64 %i.cs)
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !38
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cf, i64 32 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !117
  %i.cw = tail call noundef i64 @llvm.bswap.i64(i64 %i.cv)
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !117
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cf, i64 40 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !118
  %i.cz = tail call noundef i32 @llvm.bswap.i32(i32 %i.cy)
  store i32 %i.cz, ptr %i.cx, align 8, !tbaa !118
  %i.da = getelementptr inbounds nuw i8, ptr %i.cf, i64 44 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !121
  %i.dc = tail call noundef i32 @llvm.bswap.i32(i32 %i.db)
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !121
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cf, i64 48 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !122
  %i.df = tail call noundef i64 @llvm.bswap.i64(i64 %i.de)
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !122
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cf, i64 56 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !123
  %i.di = tail call noundef i64 @llvm.bswap.i64(i64 %i.dh)
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !123
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count419.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !93

._crit_edge.i:                                    ; preds = %.lr.ph.split.i, %.lr.ph.i
  %i.dj = zext i32 %.sink440.i to i64
  %i.dk = getelementptr inbounds nuw [64 x i8], ptr %i.bn, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !38
  %i.dn = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.dm ; 2 uses
  %.not445.i = icmp eq i32 %.sink.i, 1
  br i1 %.not445.i, label %._crit_edge402.i, label %.lr.ph401.i

.lr.ph401.i:                                      ; preds = %._crit_edge.i
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ao, %.lr.ph401.i
  %indvars.iv421.i = phi i64 [ 1, %.lr.ph401.i ], [ %indvars.iv.next422.i, %bb.ao ] ; 5 uses
  %.0276398.i = phi i32 [ -1, %.lr.ph401.i ], [ %.1277384.i, %bb.ao ] ; 2 uses
  %.0278397.i = phi i32 [ -1, %.lr.ph401.i ], [ %.1279.i, %bb.ao ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [64 x i8], ptr %i.bn, i64 %indvars.iv421.i ; 12 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !119 ; 2 uses
  %i.eb = icmp eq i32 %i.ea, 8
  br i1 %i.eb, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !38 ; 3 uses
  %i.ee = icmp ugt i64 %i.ed, %i.j
  br i1 %i.ee, label %bb.ae, label %.thread380.i

bb.ae:                                            ; preds = %bb.ad
  tail call void (i1, ptr, ...) @modpost_log(i1 noundef zeroext true, ptr noundef nonnull @.str.32, ptr noundef %0, i64 noundef %i.ed, i64 noundef 64)
  tail call void @exit(i32 noundef 1) #29
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.ef = load i32, ptr %i.dy, align 8, !tbaa !59
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.eg ; 2 uses
  %i.ei = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eh, ptr noundef nonnull dereferenceable(9) @.str.33) #28
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.ag, label %bb.ai

.thread380.i:                                     ; preds = %bb.ad
  %i.ek = load i32, ptr %i.dy, align 8, !tbaa !59
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.el ; 2 uses
  %i.en = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.em, ptr noundef nonnull dereferenceable(9) @.str.33) #28
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  tail call void (i1, ptr, ...) @modpost_log(i1 noundef zeroext true, ptr noundef nonnull @.str.34, ptr noundef %0)
  tail call void @exit(i32 noundef 1) #29
  unreachable

bb.ah:                                            ; preds = %.thread380.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ed
  store ptr %i.ep, ptr %i.do, align 8, !tbaa !124
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !117
  %i.es = trunc i64 %i.er to i32
  store i32 %i.es, ptr %i.dp, align 8, !tbaa !125
  br label %bb.am

bb.ai:                                            ; preds = %.thread380.i, %bb.af
  %i.et = phi ptr [ %i.em, %.thread380.i ], [ %i.eh, %bb.af ] ; 2 uses
  %i.eu = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.et, ptr noundef nonnull dereferenceable(15) @.str.35) #28
  %.not304.i = icmp eq i32 %i.eu, 0
  br i1 %.not304.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ev = trunc nuw i64 %indvars.iv421.i to i32
  store i32 %i.ev, ptr %i.ds, align 8, !tbaa !61
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.ew = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.et, ptr noundef nonnull dereferenceable(16) @.str.36) #28
  %.not305.i = icmp eq i32 %i.ew, 0
  br i1 %.not305.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !38
  %i.ez = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ey
  store ptr %i.ez, ptr %i.dq, align 8, !tbaa !126
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !117
  %i.fc = trunc i64 %i.fb to i32
  store i32 %i.fc, ptr %i.dr, align 8, !tbaa !127
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ah
  switch i32 %i.ea, label %bb.ao [
    i32 2, label %.thread382.i
    i32 18, label %bb.an
  ]

.thread382.i:                                     ; preds = %bb.am
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !38
  %i.ff = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.fe ; 2 uses
  store ptr %i.ff, ptr %i.dv, align 8, !tbaa !32
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !117
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fh
  store ptr %i.fi, ptr %i.dw, align 8, !tbaa !128
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !118
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [64 x i8], ptr %i.bn, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !38
  %i.fp = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.fo
  store ptr %i.fp, ptr %i.dx, align 8, !tbaa !62
  %i.fq = trunc nuw i64 %indvars.iv421.i to i32
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fr = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !38
  %i.ft = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.fs ; 2 uses
  store ptr %i.ft, ptr %i.dt, align 8, !tbaa !31
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !117
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fv
  store ptr %i.fw, ptr %i.du, align 8, !tbaa !129
  %i.fx = trunc nuw i64 %indvars.iv421.i to i32
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.thread382.i, %bb.am
  %.1277384.i = phi i32 [ %.0276398.i, %bb.an ], [ %.0276398.i, %bb.am ], [ %i.fq, %.thread382.i ] ; 2 uses
  %.1279.i = phi i32 [ %i.fx, %bb.an ], [ %.0278397.i, %bb.am ], [ %.0278397.i, %.thread382.i ] ; 2 uses
  %indvars.iv.next422.i = add nuw nsw i64 %indvars.iv421.i, 1 ; 2 uses
  %exitcond425.not.i = icmp eq i64 %indvars.iv.next422.i, %wide.trip.count419.i
  br i1 %exitcond425.not.i, label %._crit_edge402.i, label %bb.ac, !llvm.loop !94

._crit_edge402.i:                                 ; preds = %bb.ao, %._crit_edge.i, %bb.ab
  %.0278.lcssa.i = phi i32 [ -1, %._crit_edge.i ], [ -1, %bb.ab ], [ %.1279.i, %bb.ao ] ; 2 uses
  %.0276.lcssa.i = phi i32 [ -1, %._crit_edge.i ], [ -1, %bb.ab ], [ %.1277384.i, %bb.ao ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !32 ; 3 uses
  %.not300.i = icmp eq ptr %i.fz, null
  br i1 %.not300.i, label %bb.ap, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge402.i
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !128 ; 2 uses
  %i.gc = icmp uge ptr %i.fz, %i.gb
  %brmerge.i = or i1 %i.ae, %i.gc
  br i1 %brmerge.i, label %._crit_edge407.i, label %.lr.ph406.split.i

bb.ap:                                            ; preds = %._crit_edge402.i
  tail call void (i1, ptr, ...) @modpost_log(i1 noundef zeroext true, ptr noundef nonnull @.str.37, ptr noundef %0)
  tail call void @exit(i32 noundef 1) #29
  unreachable

.lr.ph406.split.i:                                ; preds = %.preheader.i, %.lr.ph406.split.i
  %.0275405.i = phi ptr [ %i.gn, %.lr.ph406.split.i ], [ %i.fz, %.preheader.i ] ; 6 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.0275405.i, i64 6 ; 2 uses
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !27
  %rev.i313.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.ge)
  store i16 %rev.i313.i, ptr %i.gd, align 2, !tbaa !27
  %i.gf = load i32, ptr %.0275405.i, align 8, !tbaa !63
  %i.gg = tail call noundef i32 @llvm.bswap.i32(i32 %i.gf)
  store i32 %i.gg, ptr %.0275405.i, align 8, !tbaa !63
  %i.gh = getelementptr inbounds nuw i8, ptr %.0275405.i, i64 8 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !34
  %i.gj = tail call noundef i64 @llvm.bswap.i64(i64 %i.gi)
  store i64 %i.gj, ptr %i.gh, align 8, !tbaa !34
  %i.gk = getelementptr inbounds nuw i8, ptr %.0275405.i, i64 16 ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !130
  %i.gm = tail call noundef i64 @llvm.bswap.i64(i64 %i.gl)
  store i64 %i.gm, ptr %i.gk, align 8, !tbaa !130
  %i.gn = getelementptr inbounds nuw i8, ptr %.0275405.i, i64 24 ; 2 uses
  %i.go = icmp ult ptr %i.gn, %i.gb
  br i1 %i.go, label %.lr.ph406.split.i, label %._crit_edge407.i, !llvm.loop !95

._crit_edge407.i:                                 ; preds = %.lr.ph406.split.i, %.preheader.i
  %.not301.i = icmp eq i32 %.0278.lcssa.i, -1
  br i1 %.not301.i, label %.loopexit195, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge407.i
  %i.gp = zext i32 %.0278.lcssa.i to i64
  %i.gq = getelementptr inbounds nuw [64 x i8], ptr %i.bn, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 40
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !118 ; 2 uses
  %.not302.i = icmp eq i32 %.0276.lcssa.i, %i.gs
  br i1 %.not302.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void (i1, ptr, ...) @modpost_log(i1 noundef zeroext true, ptr noundef nonnull @.str.38, ptr noundef %0, i32 noundef %i.gs, i32 noundef %.0276.lcssa.i)
  tail call void @exit(i32 noundef 1) #29
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !31 ; 5 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !129 ; 3 uses
  %i.gx = icmp uge ptr %i.gu, %i.gw
  %brmerge444.i = or i1 %i.ae, %i.gx
  br i1 %brmerge444.i, label %.loopexit195, label %.lr.ph410.split.i.preheader

.lr.ph410.split.i.preheader:                      ; preds = %bb.as
  %i.gy = ptrtoaddr ptr %i.gw to i64
  %i.gz = ptrtoaddr ptr %i.gu to i64
  %i.ha = xor i64 %i.gz, -1
  %i.hb = add i64 %i.ha, %i.gy                    ; 2 uses
  %i.hc = lshr i64 %i.hb, 2
  %i.hd = add nuw nsw i64 %i.hc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.hb, 28
  br i1 %min.iters.check, label %.lr.ph410.split.i.preheader575, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph410.split.i.preheader
  %n.vec = and i64 %i.hd, 9223372036854775800     ; 3 uses
  %i.he = shl i64 %n.vec, 2
  %i.hf = getelementptr i8, ptr %i.gu, i64 %i.he
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hg = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.gu, i64 %i.hg ; 3 uses
  %i.hh = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !33
  %wide.load483 = load <4 x i32>, ptr %i.hh, align 4, !tbaa !33
  %i.hi = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.hj = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load483)
  store <4 x i32> %i.hi, ptr %next.gep, align 4, !tbaa !33
  store <4 x i32> %i.hj, ptr %i.hh, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hk = icmp eq i64 %index.next, %n.vec
  br i1 %i.hk, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hd, %n.vec
  br i1 %cmp.n, label %.loopexit195, label %.lr.ph410.split.i.preheader575

.lr.ph410.split.i.preheader575:                   ; preds = %.lr.ph410.split.i.preheader, %middle.block
  %.0273408.i.ph = phi ptr [ %i.gu, %.lr.ph410.split.i.preheader ], [ %i.hf, %middle.block ]
  br label %.lr.ph410.split.i

.lr.ph410.split.i:                                ; preds = %.lr.ph410.split.i.preheader575, %.lr.ph410.split.i
  %.0273408.i = phi ptr [ %i.hn, %.lr.ph410.split.i ], [ %.0273408.i.ph, %.lr.ph410.split.i.preheader575 ] ; 3 uses
  %i.hl = load i32, ptr %.0273408.i, align 4, !tbaa !33
  %i.hm = tail call noundef i32 @llvm.bswap.i32(i32 %i.hl)
  store i32 %i.hm, ptr %.0273408.i, align 4, !tbaa !33
  %i.hn = getelementptr inbounds nuw i8, ptr %.0273408.i, i64 4 ; 2 uses
  %i.ho = icmp ult ptr %i.hn, %i.gw
  br i1 %i.ho, label %.lr.ph410.split.i, label %.loopexit195, !llvm.loop !97

.loopexit195:                                     ; preds = %.lr.ph410.split.i, %middle.block, %bb.as, %._crit_edge407.i
  call void @symsearch_init(ptr noundef nonnull %2) #25
  %i.hp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28 ; 4 uses
  %i.hq = icmp ult i64 %i.hp, 2
  br i1 %i.hq, label %strends.exit.thread, label %strends.exit

strends.exit:                                     ; preds = %.loopexit195
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 %i.hp ; 3 uses
  %i.hs = getelementptr inbounds i8, ptr %i.hr, i64 -2
  %i.ht = load i8, ptr %i.hs, align 1
  %.not247 = icmp eq i8 %i.ht, 46
  br i1 %.not247, label %sub_1, label %strends.exit.thread

sub_1:                                            ; preds = %strends.exit
  %i.hu = getelementptr inbounds i8, ptr %i.hr, i64 -1
  %i.hv = load i8, ptr %i.hu, align 1
  %.not248 = icmp eq i8 %i.hv, 111
  br i1 %.not248, label %strends.exit.tail, label %strends.exit.thread

strends.exit.tail:                                ; preds = %sub_1
  %i.hw = load i8, ptr %i.hr, align 1
  %i.hx = icmp eq i8 %i.hw, 0
  br i1 %i.hx, label %bb.at, label %strends.exit.thread

strends.exit.thread:                              ; preds = %sub_1, %strends.exit, %.loopexit195, %strends.exit.tail
  call void (i1, ptr, ...) @modpost_log(i1 noundef zeroext true, ptr noundef nonnull @.str.18, ptr noundef nonnull %0)
  br label %parse_elf.exit.thread

bb.at:                                            ; preds = %strends.exit.tail
  %i.hy = add i64 %i.hp, 151
  %i.hz = call noalias ptr @malloc(i64 noundef %i.hy) #30 ; 28 uses
  %.not.i.i63 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i63, label %bb.au, label %new_module.exit

bb.au:                                            ; preds = %bb.at
  call void @exit(i32 noundef 1) #29
  unreachable

new_module.exit:                                  ; preds = %bb.at
  %i.ia = add i64 %i.hp, -2                       ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.hz, i8 0, i64 152, i1 false)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 16 ; 3 uses
  store ptr %i.ib, ptr %i.ib, align 8, !tbaa !45
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  store ptr %i.ib, ptr %i.ic, align 8, !tbaa !46
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 32 ; 5 uses
  store ptr %i.id, ptr %i.id, align 8, !tbaa !45
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 40 ; 5 uses
  store ptr %i.id, ptr %i.ie, align 8, !tbaa !46
  %i.if = getelementptr inbounds nuw i8, ptr %i.hz, i64 88 ; 3 uses
  store ptr %i.if, ptr %i.if, align 8, !tbaa !45
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hz, i64 96
  store ptr %i.if, ptr %i.ig, align 8, !tbaa !46
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hz, i64 104 ; 6 uses
  store ptr %i.ih, ptr %i.ih, align 8, !tbaa !45
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hz, i64 112 ; 3 uses
  store ptr %i.ih, ptr %i.ii, align 8, !tbaa !46
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hz, i64 120 ; 3 uses
  store ptr %i.ij, ptr %i.ij, align 8, !tbaa !45
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hz, i64 128
  store ptr %i.ij, ptr %i.ik, align 8, !tbaa !46
  %i.il = getelementptr inbounds nuw i8, ptr %i.hz, i64 148 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.il, ptr nonnull readonly align 1 %0, i64 %i.ia, i1 false)
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ia
  store i8 0, ptr %i.im, align 1, !tbaa !22
  %i.in = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.il, ptr noundef nonnull dereferenceable(8) @.str.13) #28
  %i.io = icmp eq i32 %i.in, 0                    ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hz, i64 57 ; 3 uses
  %i.iq = zext i1 %i.io to i8
  store i8 %i.iq, ptr %i.ip, align 1, !tbaa !48
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hz, i64 56 ; 2 uses
  store i8 1, ptr %i.ir, align 8, !tbaa !48
  %i.is = load ptr, ptr getelementptr inbounds nuw (i8, ptr @modules, i64 8), align 8, !tbaa !46 ; 2 uses
  store ptr %i.hz, ptr getelementptr inbounds nuw (i8, ptr @modules, i64 8), align 8, !tbaa !46
  store ptr @modules, ptr %i.hz, align 8, !tbaa !45
  %i.it = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store ptr %i.is, ptr %i.it, align 8, !tbaa !46
  store ptr %i.hz, ptr %i.is, align 8, !tbaa !45
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !127 ; 3 uses
  %.not44 = icmp eq i32 %i.iv, 0
  br i1 %.not44, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %new_module.exit
  %i.iw = zext i32 %i.iv to i64                   ; 2 uses
  %i.ix = call noalias ptr @malloc(i64 noundef %i.iw) #30 ; 3 uses
  %.not.i64 = icmp eq ptr %i.ix, null
  br i1 %.not.i64, label %bb.aw, label %xmalloc.exit

bb.aw:                                            ; preds = %bb.av
  call void @exit(i32 noundef 1) #29
  unreachable

xmalloc.exit:                                     ; preds = %bb.av
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hz, i64 136
  store ptr %i.ix, ptr %i.iy, align 8, !tbaa !24
  %i.iz = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !126
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ix, ptr align 1 %i.ja, i64 %i.iw, i1 false)
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hz, i64 144
  store i32 %i.iv, ptr %i.jb, align 8, !tbaa !33
  br label %bb.ax

bb.ax:                                            ; preds = %xmalloc.exit, %new_module.exit
  br i1 %i.io, label %get_modinfo.exit131, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %.val59 = load ptr, ptr %i.jc, align 8, !tbaa !124 ; 10 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %.not2017.i.i = icmp eq ptr %.val59, null
  br i1 %.not2017.i.i, label %.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ay
  %.val60 = load i32, ptr %i.jd, align 8, !tbaa !125
  %i.je = zext i32 %.val60 to i64
  br label %next_string.exit30.i.i

next_string.exit30.i.loopexit.i:                  ; preds = %thread-pre-split.i27.i.i
  br label %next_string.exit30.i.i, !llvm.loop !98

next_string.exit30.i.i:                           ; preds = %next_string.exit30.i.loopexit.i, %.lr.ph.i.i
  %.01719.i.i = phi ptr [ %.val59, %.lr.ph.i.i ], [ %i.jr, %next_string.exit30.i.loopexit.i ] ; 4 uses
  %.318.i.i = phi i64 [ %i.je, %.lr.ph.i.i ], [ %i.jq, %next_string.exit30.i.loopexit.i ]
  %i.jf = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.01719.i.i, ptr noundef nonnull readonly dereferenceable(8) @.str.19, i64 noundef 7) #28
  %i.jg = icmp eq i32 %i.jf, 0
  br i1 %i.jg, label %bb.az, label %.preheader563

bb.az:                                            ; preds = %next_string.exit30.i.i
  %i.jh = getelementptr inbounds nuw i8, ptr %.01719.i.i, i64 7
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !22
  %i.jj = icmp eq i8 %i.ji, 61
  br i1 %i.jj, label %.lr.ph, label %.preheader563

.preheader563:                                    ; preds = %bb.az, %next_string.exit30.i.i
  br label %bb.ba

bb.ba:                                            ; preds = %.preheader563, %bb.bb
  %.4.i.i = phi i64 [ %i.jn, %bb.bb ], [ %.318.i.i, %.preheader563 ] ; 4 uses
  %.08.i21.i.i = phi ptr [ %i.jm, %bb.bb ], [ %.01719.i.i, %.preheader563 ] ; 3 uses
  %i.jk = load i8, ptr %.08.i21.i.i, align 1, !tbaa !22
  %.not.i22.i.i = icmp eq i8 %i.jk, 0
  br i1 %.not.i22.i.i, label %.preheader.i24.i.i.preheader, label %bb.bb

.preheader.i24.i.i.preheader:                     ; preds = %bb.ba
  %i.jl = icmp ult i64 %.4.i.i, 2
  br i1 %i.jl, label %.thread, label %thread-pre-split.i27.i.i.lr.ph, !llvm.loop !2

thread-pre-split.i27.i.i.lr.ph:                   ; preds = %.preheader.i24.i.i.preheader
  br label %thread-pre-split.i27.i.i, !llvm.loop !2
end_hunk_0
