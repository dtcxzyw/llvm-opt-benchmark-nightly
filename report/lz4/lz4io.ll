Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lz4/original/lz4io?download=true
inline.NumInlined: 97
inline.NumDeleted: 35
begin_hunk_0_@selectDecoder:bb.a

bb.ev:                                            ; preds = %.preheader.i62
  %i.ph = call i32 @ferror(ptr noundef nonnull %1) #25
  %.not16.i63 = icmp eq i32 %i.ph, 0
  br i1 %.not16.i63, label %LZ4IO_passThrough.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.pi = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.pj = icmp sgt i32 %i.pi, 0
  br i1 %i.pj, label %bb.ex, label %.thread26.i

bb.ex:                                            ; preds = %bb.ew
  %i.pk = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.pl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pk, ptr noundef nonnull @.str, i32 noundef 51) #27 ; 0 uses
  %i.pm = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.pn = icmp sgt i32 %i.pm, 3
  br i1 %i.pn, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.po = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.pp = call i32 @fflush(ptr noundef %i.po)     ; 0 uses
  %.pr22.i = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %i.pq = phi i32 [ %i.pm, %bb.ex ], [ %.pr22.i, %bb.ey ]
  %i.pr = icmp sgt i32 %i.pq, 0
  br i1 %i.pr, label %bb.fa, label %.thread26.i

bb.fa:                                            ; preds = %bb.ez
  %i.ps = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite.i64 = call i64 @fwrite(ptr nonnull @.str.110, i64 10, i64 1, ptr %i.ps) #28 ; 0 uses
  %i.pt = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.pu = icmp sgt i32 %i.pt, 3
  br i1 %i.pu, label %bb.fb, label %thread-pre-split24.i

bb.fb:                                            ; preds = %bb.fa
  %i.pv = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.pw = call i32 @fflush(ptr noundef %i.pv)     ; 0 uses
  %.pr25.pre.i = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %thread-pre-split24.i

thread-pre-split24.i:                             ; preds = %bb.fb, %bb.fa
  %i.px = phi i32 [ %i.pt, %bb.fa ], [ %.pr25.pre.i, %bb.fb ]
  %i.py = icmp sgt i32 %i.px, 0
  br i1 %i.py, label %bb.fc, label %.thread26.i

bb.fc:                                            ; preds = %thread-pre-split24.i
  %i.pz = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite17.i = call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.pz) #28 ; 0 uses
  %i.qa = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.qb = icmp sgt i32 %i.qa, 3
  br i1 %i.qb, label %bb.fd, label %.thread26.i

bb.fd:                                            ; preds = %bb.fc
  %i.qc = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.qd = call i32 @fflush(ptr noundef %i.qc)     ; 0 uses
  br label %.thread26.i

.thread26.i:                                      ; preds = %bb.fd, %bb.fc, %thread-pre-split24.i, %bb.ez, %bb.ew
  %i.qe = call i32 @fflush(ptr noundef null)      ; 0 uses
  call void @exit(i32 noundef 51) #29
  unreachable

LZ4IO_passThrough.exit:                           ; preds = %bb.ev
  call fastcc void @LZ4IO_fwriteSparseEnd(ptr noundef %2, i32 noundef %i.pg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %fseek_u32.exit.thread

bb.fe:                                            ; preds = %bb.el, %bb.ek, %bb.ej
  %i.qf = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.qg = icmp sgt i32 %i.qf, 0
  br i1 %i.qg, label %bb.ff, label %.thread89

bb.ff:                                            ; preds = %bb.fe
  %i.qh = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.qi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qh, ptr noundef nonnull @.str, i32 noundef 44) #27 ; 0 uses
  %i.qj = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.qk = icmp sgt i32 %i.qj, 3
  br i1 %i.qk, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.ql = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.qm = tail call i32 @fflush(ptr noundef %i.ql) ; 0 uses
  %.pr85 = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.fh

bb.fh:                                            ; preds = %bb.ff, %bb.fg
  %i.qn = phi i32 [ %i.qj, %bb.ff ], [ %.pr85, %bb.fg ]
  %i.qo = icmp sgt i32 %i.qn, 0
  br i1 %i.qo, label %bb.fi, label %.thread89

bb.fi:                                            ; preds = %bb.fh
  %i.qp = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite50 = tail call i64 @fwrite(ptr nonnull @.str.90, i64 44, i64 1, ptr %i.qp) #28 ; 0 uses
  %i.qq = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.qr = icmp sgt i32 %i.qq, 3
  br i1 %i.qr, label %bb.fj, label %thread-pre-split87

bb.fj:                                            ; preds = %bb.fi
  %i.qs = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.qt = tail call i32 @fflush(ptr noundef %i.qs) ; 0 uses
  %.pr88.pre = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %thread-pre-split87

thread-pre-split87:                               ; preds = %bb.fj, %bb.fi
  %i.qu = phi i32 [ %i.qq, %bb.fi ], [ %.pr88.pre, %bb.fj ]
  %i.qv = icmp sgt i32 %i.qu, 0
  br i1 %i.qv, label %bb.fk, label %.thread89

bb.fk:                                            ; preds = %thread-pre-split87
  %i.qw = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite51 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.qw) #28 ; 0 uses
  %i.qx = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.qy = icmp sgt i32 %i.qx, 3
  br i1 %i.qy, label %bb.fl, label %.thread89

bb.fl:                                            ; preds = %bb.fk
  %i.qz = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ra = tail call i32 @fflush(ptr noundef %i.qz) ; 0 uses
  br label %.thread89

.thread89:                                        ; preds = %bb.fh, %bb.fe, %bb.fk, %bb.fl, %thread-pre-split87
  %i.rb = tail call i32 @fflush(ptr noundef null) ; 0 uses
  tail call void @exit(i32 noundef 44) #29
  unreachable

bb.fm:                                            ; preds = %bb.ei
  %i.rc = tail call i64 @ftell(ptr noundef nonnull %1) ; 2 uses
  %i.rd = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.re = icmp sgt i32 %i.rd, 1
  br i1 %i.re, label %bb.fn, label %fseek_u32.exit.thread

bb.fn:                                            ; preds = %bb.fm
  %i.rf = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite45 = tail call i64 @fwrite(ptr nonnull @.str.91, i64 36, i64 1, ptr %i.rf) #28 ; 0 uses
  %i.rg = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.rh = icmp sgt i32 %i.rg, 3
  br i1 %i.rh, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.ri = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.rj = tail call i32 @fflush(ptr noundef %i.ri) ; 0 uses
  %.pre = load i32, ptr @g_displayLevel, align 4
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fn, %bb.fo
  %i.rk = phi i32 [ %i.rg, %bb.fn ], [ %.pre, %bb.fo ] ; 2 uses
  %i.rl = icmp ne i64 %i.rc, -1
  %i.rm = icmp sgt i32 %i.rk, 1
  %or.cond = select i1 %i.rl, i1 %i.rm, i1 false
  br i1 %or.cond, label %bb.fq, label %bb.fs

bb.fq:                                            ; preds = %bb.fp
  %i.rn = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ro = trunc i64 %i.rc to i32
  %i.rp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rn, ptr noundef nonnull @.str.92, i32 noundef %i.ro) #27 ; 0 uses
  %i.rq = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.rr = icmp sgt i32 %i.rq, 3
  br i1 %i.rr, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.rs = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.rt = tail call i32 @fflush(ptr noundef %i.rs) ; 0 uses
  %.pr90 = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq, %bb.fp
  %i.ru = phi i32 [ %.pr90, %bb.fr ], [ %i.rq, %bb.fq ], [ %i.rk, %bb.fp ]
  %i.rv = icmp sgt i32 %i.ru, 1
  br i1 %i.rv, label %bb.ft, label %fseek_u32.exit.thread

bb.ft:                                            ; preds = %bb.fs
  %i.rw = load ptr, ptr @stderr, align 8, !tbaa !14
  %fputc = tail call i32 @fputc(i32 10, ptr %i.rw) ; 0 uses
  %i.rx = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.ry = icmp sgt i32 %i.rx, 3
  br i1 %i.ry, label %bb.fu, label %fseek_u32.exit.thread

bb.fu:                                            ; preds = %bb.ft
  %i.rz = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.sa = tail call i32 @fflush(ptr noundef %i.rz) ; 0 uses
  br label %fseek_u32.exit.thread

fseek_u32.exit.thread:                            ; preds = %bb.dz, %bb.fm, %bb.dv, %fseek_u32.exit.thread77, %.thread68, %bb.fs, %bb.fu, %bb.ft, %LZ4IO_passThrough.exit, %LZ4IO_decodeLegacyStream.exit, %LZ4IO_decompressLZ4F.exit
  %.129 = phi i64 [ %i.pf, %LZ4IO_passThrough.exit ], [ 0, %fseek_u32.exit.thread77 ], [ %.088.i, %LZ4IO_decompressLZ4F.exit ], [ %.035.i, %LZ4IO_decodeLegacyStream.exit ], [ -1, %.thread68 ], [ -2, %bb.ft ], [ -2, %bb.fu ], [ -2, %bb.fs ], [ 0, %bb.dv ], [ -2, %bb.fm ], [ 0, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  ret i64 %.129
}

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #6

declare i64 @LZ4F_decompress_usingDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LZ4IO_fwriteSparse(ptr nofree noundef captures(address) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #11 {
bb.a:
  %i.a = lshr i64 %2, 3
  %.idx = and i64 %2, -8                          ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 4 uses
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.d = icmp eq ptr %0, %i.c
  %.neg = sext i1 %i.d to i32
  %i.e = add i32 %3, %.neg
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %0)
  %.not = icmp eq i64 %i.g, %2
  br i1 %.not, label %bb.bj, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %.thread108

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str, i32 noundef 70) #27 ; 0 uses
  %i.l = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.m = icmp sgt i32 %i.l, 3
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.o = tail call i32 @fflush(ptr noundef %i.n)  ; 0 uses
  %.pr = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.p = phi i32 [ %i.l, %bb.d ], [ %.pr, %bb.e ]
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %.thread108

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.98, i64 40, i64 1, ptr %i.r) #28 ; 0 uses
  %i.s = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.t = icmp sgt i32 %i.s, 3
  br i1 %i.t, label %bb.h, label %thread-pre-split

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.v = tail call i32 @fflush(ptr noundef %i.u)  ; 0 uses
  %.pr107.pre = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.h, %bb.g
  %i.w = phi i32 [ %i.s, %bb.g ], [ %.pr107.pre, %bb.h ]
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.i, label %.thread108

bb.i:                                             ; preds = %thread-pre-split
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite89 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.y) #28 ; 0 uses
  %i.z = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.aa = icmp sgt i32 %i.z, 3
  br i1 %i.aa, label %bb.j, label %.thread108

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ac = tail call i32 @fflush(ptr noundef %i.ab) ; 0 uses
  br label %.thread108

.thread108:                                       ; preds = %bb.f, %bb.c, %bb.i, %bb.j, %thread-pre-split
  %i.ad = tail call i32 @fflush(ptr noundef null) ; 0 uses
  tail call void @exit(i32 noundef 70) #29
  unreachable

bb.k:                                             ; preds = %bb.a
  %i.ae = icmp ugt i32 %4, 1073741824
  br i1 %i.ae, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.af = tail call i32 @fseek(ptr noundef %0, i64 noundef 1073741824, i32 noundef 1)
  %.not90 = icmp eq i32 %i.af, 0
  br i1 %.not90, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.n, label %.thread113

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ai, ptr noundef nonnull @.str, i32 noundef 71) #27 ; 0 uses
  %i.ak = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 3
  br i1 %i.al, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.am = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.an = tail call i32 @fflush(ptr noundef %i.am) ; 0 uses
  %.pr109 = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ao = phi i32 [ %i.ak, %bb.n ], [ %.pr109, %bb.o ]
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %bb.q, label %.thread113

bb.q:                                             ; preds = %bb.p
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite105 = tail call i64 @fwrite(ptr nonnull @.str.99, i64 37, i64 1, ptr %i.aq) #28 ; 0 uses
  %i.ar = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 3
  br i1 %i.as, label %bb.r, label %thread-pre-split111

bb.r:                                             ; preds = %bb.q
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.au = tail call i32 @fflush(ptr noundef %i.at) ; 0 uses
  %.pr112.pre = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %thread-pre-split111

thread-pre-split111:                              ; preds = %bb.r, %bb.q
  %i.av = phi i32 [ %i.ar, %bb.q ], [ %.pr112.pre, %bb.r ]
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %bb.s, label %.thread113

bb.s:                                             ; preds = %thread-pre-split111
  %i.ax = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite106 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.ax) #28 ; 0 uses
  %i.ay = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.az = icmp sgt i32 %i.ay, 3
  br i1 %i.az, label %bb.t, label %.thread113

bb.t:                                             ; preds = %bb.s
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.bb = tail call i32 @fflush(ptr noundef %i.ba) ; 0 uses
  br label %.thread113

.thread113:                                       ; preds = %bb.p, %bb.m, %bb.s, %bb.t, %thread-pre-split111
  %i.bc = tail call i32 @fflush(ptr noundef null) ; 0 uses
  tail call void @exit(i32 noundef 71) #29
  unreachable

bb.u:                                             ; preds = %bb.l
  %i.bd = add i32 %4, -1073741824
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.k
  %.080 = phi i32 [ %i.bd, %bb.u ], [ %4, %bb.k ] ; 2 uses
  %.not151 = icmp eq i64 %.idx, 0
  br i1 %.not151, label %._crit_edge, label %.lr.ph143

.lr.ph143:                                        ; preds = %bb.v, %bb.ap
  %.077142 = phi i64 [ %i.be, %bb.ap ], [ %i.a, %bb.v ] ; 3 uses
  %.078141 = phi ptr [ %i.dq, %bb.ap ], [ %1, %bb.v ] ; 4 uses
  %.181140 = phi i32 [ %.2, %bb.ap ], [ %.080, %bb.v ] ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.077142, i64 4096) ; 7 uses
  %i.be = sub nuw nsw i64 %.077142, %spec.select
  %.not152 = icmp eq i64 %.077142, 0
  br i1 %.not152, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph143, %bb.w
  %.075137 = phi i64 [ %i.bi, %bb.w ], [ 0, %.lr.ph143 ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.078141, i64 %.075137
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !29
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.w, label %.critedge

bb.w:                                             ; preds = %.lr.ph
  %i.bi = add nuw nsw i64 %.075137, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bi, %spec.select
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph, !llvm.loop !165

.critedge.thread:                                 ; preds = %bb.w
  %.075.tr187 = trunc nuw nsw i64 %spec.select to i32
  %i.bj = shl nuw nsw i32 %.075.tr187, 3
  %i.bk = add i32 %i.bj, %.181140
  br label %bb.ap

.critedge:                                        ; preds = %.lr.ph, %.lr.ph143
  %.075.lcssa = phi i64 [ 0, %.lr.ph143 ], [ %.075137, %.lr.ph ] ; 4 uses
  %.075.tr = trunc i64 %.075.lcssa to i32
  %i.bl = shl i32 %.075.tr, 3
  %i.bm = add i32 %i.bl, %.181140                 ; 2 uses
  %.not99 = icmp eq i64 %.075.lcssa, %spec.select
  br i1 %.not99, label %bb.ap, label %bb.x

bb.x:                                             ; preds = %.critedge
  %i.bn = tail call ptr @__errno_location() #32   ; 2 uses
  store i32 0, ptr %i.bn, align 4, !tbaa !11
  %i.bo = zext i32 %i.bm to i64
  %i.bp = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.bo, i32 noundef 1)
  %.not100 = icmp eq i32 %i.bp, 0
  br i1 %.not100, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %bb.z, label %.thread118

bb.z:                                             ; preds = %bb.y
  %i.bs = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.bt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bs, ptr noundef nonnull @.str, i32 noundef 72) #27 ; 0 uses
  %i.bu = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 3
  br i1 %i.bv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bw = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.bx = tail call i32 @fflush(ptr noundef %i.bw) ; 0 uses
  %.pr114 = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.by = phi i32 [ %i.bu, %bb.z ], [ %.pr114, %bb.aa ]
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %bb.ac, label %.thread118

bb.ac:                                            ; preds = %bb.ab
  %i.ca = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.cb = load i32, ptr %i.bn, align 4, !tbaa !11 ; 2 uses
  %i.cc = tail call ptr @strerror(i32 noundef %i.cb) #25
  %i.cd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ca, ptr noundef nonnull @.str.100, i32 noundef %i.cb, ptr noundef %i.cc) #27 ; 0 uses
  %i.ce = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 3
  br i1 %i.cf, label %bb.ad, label %thread-pre-split116

bb.ad:                                            ; preds = %bb.ac
  %i.cg = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ch = tail call i32 @fflush(ptr noundef %i.cg) ; 0 uses
  %.pr117.pre = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %thread-pre-split116

thread-pre-split116:                              ; preds = %bb.ad, %bb.ac
  %i.ci = phi i32 [ %i.ce, %bb.ac ], [ %.pr117.pre, %bb.ad ]
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %bb.ae, label %.thread118

bb.ae:                                            ; preds = %thread-pre-split116
  %i.ck = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite104 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.ck) #28 ; 0 uses
  %i.cl = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.cm = icmp sgt i32 %i.cl, 3
  br i1 %i.cm, label %bb.af, label %.thread118

bb.af:                                            ; preds = %bb.ae
  %i.cn = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.co = tail call i32 @fflush(ptr noundef %i.cn) ; 0 uses
  br label %.thread118

.thread118:                                       ; preds = %bb.ab, %bb.y, %bb.ae, %bb.af, %thread-pre-split116
  %i.cp = tail call i32 @fflush(ptr noundef null) ; 0 uses
  tail call void @exit(i32 noundef 72) #29
  unreachable

bb.ag:                                            ; preds = %bb.x
  %i.cq = sub nuw nsw i64 %spec.select, %.075.lcssa ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.078141, i64 %.075.lcssa ; 2 uses
  %i.cs = tail call i64 @fwrite(ptr noundef %i.cr, i64 noundef 8, i64 noundef %i.cq, ptr noundef %0)
  %.not101 = icmp eq i64 %i.cs, %i.cq
  br i1 %.not101, label %bb.ap, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ct = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %bb.ai, label %.thread123

bb.ai:                                            ; preds = %bb.ah
  %i.cv = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.cw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cv, ptr noundef nonnull @.str, i32 noundef 73) #27 ; 0 uses
  %i.cx = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, 3
  br i1 %i.cy, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cz = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.da = tail call i32 @fflush(ptr noundef %i.cz) ; 0 uses
  %.pr119 = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.db = phi i32 [ %i.cx, %bb.ai ], [ %.pr119, %bb.aj ]
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %bb.al, label %.thread123

bb.al:                                            ; preds = %bb.ak
  %i.dd = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite102 = tail call i64 @fwrite(ptr nonnull @.str.98, i64 40, i64 1, ptr %i.dd) #28 ; 0 uses
  %i.de = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.df = icmp sgt i32 %i.de, 3
  br i1 %i.df, label %bb.am, label %thread-pre-split121

bb.am:                                            ; preds = %bb.al
  %i.dg = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.dh = tail call i32 @fflush(ptr noundef %i.dg) ; 0 uses
  %.pr122.pre = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %thread-pre-split121

thread-pre-split121:                              ; preds = %bb.am, %bb.al
  %i.di = phi i32 [ %i.de, %bb.al ], [ %.pr122.pre, %bb.am ]
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %bb.an, label %.thread123

bb.an:                                            ; preds = %thread-pre-split121
  %i.dk = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite103 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.dk) #28 ; 0 uses
  %i.dl = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.dm = icmp sgt i32 %i.dl, 3
  br i1 %i.dm, label %bb.ao, label %.thread123

bb.ao:                                            ; preds = %bb.an
  %i.dn = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.do = tail call i32 @fflush(ptr noundef %i.dn) ; 0 uses
  br label %.thread123

.thread123:                                       ; preds = %bb.ak, %bb.ah, %bb.an, %bb.ao, %thread-pre-split121
  %i.dp = tail call i32 @fflush(ptr noundef null) ; 0 uses
  tail call void @exit(i32 noundef 73) #29
  unreachable

bb.ap:                                            ; preds = %.critedge.thread, %bb.ag, %.critedge
  %.2 = phi i32 [ %i.bm, %.critedge ], [ 0, %bb.ag ], [ %i.bk, %.critedge.thread ] ; 2 uses
  %.179 = phi ptr [ %.078141, %.critedge ], [ %i.cr, %bb.ag ], [ %.078141, %.critedge.thread ]
  %.1 = phi i64 [ %spec.select, %.critedge ], [ %i.cq, %bb.ag ], [ %spec.select, %.critedge.thread ]
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.179, i64 %.1 ; 2 uses
  %i.dr = icmp ult ptr %i.dq, %i.b
  br i1 %i.dr, label %.lr.ph143, label %._crit_edge, !llvm.loop !166

._crit_edge:                                      ; preds = %bb.ap, %bb.v
  %.181.lcssa = phi i32 [ %.080, %bb.v ], [ %.2, %bb.ap ] ; 2 uses
  %i.ds = and i64 %2, 7                           ; 2 uses
  %.not91 = icmp eq i64 %i.ds, 0
  br i1 %.not91, label %bb.bj, label %.lr.ph147.preheader.a

.lr.ph147.preheader.a:                            ; preds = %._crit_edge
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ds ; 3 uses
  br label %.lr.ph147

.lr.ph147:                                        ; preds = %.lr.ph147.preheader.a, %bb.aq
  %.0145 = phi ptr [ %i.dw, %bb.aq ], [ %i.b, %.lr.ph147.preheader.a ] ; 3 uses
  %i.du = load i8, ptr %.0145, align 1, !tbaa !66
  %i.dv = icmp eq i8 %i.du, 0
  br i1 %i.dv, label %bb.aq, label %.critedge2

bb.aq:                                            ; preds = %.lr.ph147
  %i.dw = getelementptr inbounds nuw i8, ptr %.0145, i64 1 ; 3 uses
  %5 = icmp ult ptr %i.dw, %i.dt
  br i1 %5, label %.lr.ph147, label %.critedge2, !llvm.loop !167

.critedge2:                                       ; preds = %.lr.ph147, %bb.aq
  %.0.lcssa.ph = phi ptr [ %.0145, %.lr.ph147 ], [ %i.dw, %bb.aq ] ; 3 uses
  %i.dx = ptrtoint ptr %.0.lcssa.ph to i64        ; 2 uses
  %i.dy = ptrtoint ptr %i.b to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = add i32 %.181.lcssa, %i.ea              ; 2 uses
  %.not92 = icmp eq ptr %.0.lcssa.ph, %i.dt
  br i1 %.not92, label %bb.bj, label %bb.ar

bb.ar:                                            ; preds = %.critedge2
  %i.ec = zext i32 %i.eb to i64
  %i.ed = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.ec, i32 noundef 1)
  %.not93 = icmp eq i32 %i.ed, 0
  br i1 %.not93, label %bb.ba, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ee = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.ef = icmp sgt i32 %i.ee, 0
  br i1 %i.ef, label %bb.at, label %.thread128

bb.at:                                            ; preds = %bb.as
  %i.eg = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.eh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eg, ptr noundef nonnull @.str, i32 noundef 74) #27 ; 0 uses
  %i.ei = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.ej = icmp sgt i32 %i.ei, 3
  br i1 %i.ej, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ek = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.el = tail call i32 @fflush(ptr noundef %i.ek) ; 0 uses
  %.pr124 = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.em = phi i32 [ %i.ei, %bb.at ], [ %.pr124, %bb.au ]
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %bb.aw, label %.thread128

bb.aw:                                            ; preds = %bb.av
  %i.eo = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite97 = tail call i64 @fwrite(ptr nonnull @.str.101, i64 35, i64 1, ptr %i.eo) #28 ; 0 uses
  %i.ep = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, 3
  br i1 %i.eq, label %bb.ax, label %thread-pre-split126

bb.ax:                                            ; preds = %bb.aw
  %i.er = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.es = tail call i32 @fflush(ptr noundef %i.er) ; 0 uses
  %.pr127.pre = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %thread-pre-split126

thread-pre-split126:                              ; preds = %bb.ax, %bb.aw
  %i.et = phi i32 [ %i.ep, %bb.aw ], [ %.pr127.pre, %bb.ax ]
  %i.eu = icmp sgt i32 %i.et, 0
  br i1 %i.eu, label %bb.ay, label %.thread128

bb.ay:                                            ; preds = %thread-pre-split126
  %i.ev = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite98 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.ev) #28 ; 0 uses
  %i.ew = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.ex = icmp sgt i32 %i.ew, 3
  br i1 %i.ex, label %bb.az, label %.thread128

bb.az:                                            ; preds = %bb.ay
  %i.ey = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ez = tail call i32 @fflush(ptr noundef %i.ey) ; 0 uses
  br label %.thread128

.thread128:                                       ; preds = %bb.av, %bb.as, %bb.ay, %bb.az, %thread-pre-split126
  %i.fa = tail call i32 @fflush(ptr noundef null) ; 0 uses
  tail call void @exit(i32 noundef 74) #29
  unreachable

bb.ba:                                            ; preds = %bb.ar
  %i.fb = ptrtoint ptr %i.dt to i64
  %i.fc = sub i64 %i.fb, %i.dx                    ; 2 uses
  %i.fd = tail call i64 @fwrite(ptr noundef nonnull %.0.lcssa.ph, i64 noundef 1, i64 noundef %i.fc, ptr noundef %0)
  %.not94 = icmp eq i64 %i.fd, %i.fc
  br i1 %.not94, label %bb.bj, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fe = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.ff = icmp sgt i32 %i.fe, 0
  br i1 %i.ff, label %bb.bc, label %.thread133

bb.bc:                                            ; preds = %bb.bb
  %i.fg = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.fh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fg, ptr noundef nonnull @.str, i32 noundef 75) #27 ; 0 uses
  %i.fi = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.fj = icmp sgt i32 %i.fi, 3
  br i1 %i.fj, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.fk = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.fl = tail call i32 @fflush(ptr noundef %i.fk) ; 0 uses
  %.pr129 = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %i.fm = phi i32 [ %i.fi, %bb.bc ], [ %.pr129, %bb.bd ]
  %i.fn = icmp sgt i32 %i.fm, 0
  br i1 %i.fn, label %bb.bf, label %.thread133

bb.bf:                                            ; preds = %bb.be
  %i.fo = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite95 = tail call i64 @fwrite(ptr nonnull @.str.102, i64 47, i64 1, ptr %i.fo) #28 ; 0 uses
  %i.fp = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.fq = icmp sgt i32 %i.fp, 3
  br i1 %i.fq, label %bb.bg, label %thread-pre-split131

bb.bg:                                            ; preds = %bb.bf
  %i.fr = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.fs = tail call i32 @fflush(ptr noundef %i.fr) ; 0 uses
  %.pr132.pre = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %thread-pre-split131

thread-pre-split131:                              ; preds = %bb.bg, %bb.bf
  %i.ft = phi i32 [ %i.fp, %bb.bf ], [ %.pr132.pre, %bb.bg ]
  %i.fu = icmp sgt i32 %i.ft, 0
  br i1 %i.fu, label %bb.bh, label %.thread133

bb.bh:                                            ; preds = %thread-pre-split131
  %i.fv = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite96 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.fv) #28 ; 0 uses
  %i.fw = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.fx = icmp sgt i32 %i.fw, 3
  br i1 %i.fx, label %bb.bi, label %.thread133

bb.bi:                                            ; preds = %bb.bh
  %i.fy = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.fz = tail call i32 @fflush(ptr noundef %i.fy) ; 0 uses
  br label %.thread133

.thread133:                                       ; preds = %bb.be, %bb.bb, %bb.bh, %bb.bi, %thread-pre-split131
  %i.ga = tail call i32 @fflush(ptr noundef null) ; 0 uses
  tail call void @exit(i32 noundef 75) #29
  unreachable

bb.bj:                                            ; preds = %._crit_edge, %bb.ba, %.critedge2, %bb.b
  %.082 = phi i32 [ 0, %bb.b ], [ %.181.lcssa, %._crit_edge ], [ %i.eb, %.critedge2 ], [ 0, %bb.ba ]
  ret i32 %.082
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @LZ4IO_fwriteSparseEnd(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 0, ptr %i.a, align 1
  %i.b = add i32 %1, -1
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.c, i32 noundef 1)
  %.not3 = icmp eq i32 %i.d, 0
  br i1 %.not3, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %.thread9

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str, i32 noundef 69) #27 ; 0 uses
  %i.i = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.j = icmp sgt i32 %i.i, 3
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.l = tail call i32 @fflush(ptr noundef %i.k)  ; 0 uses
  %.pr = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.m = phi i32 [ %i.i, %bb.d ], [ %.pr, %bb.e ]
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %.thread9

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite6 = tail call i64 @fwrite(ptr nonnull @.str.103, i64 31, i64 1, ptr %i.o) #28 ; 0 uses
  %i.p = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.q = icmp sgt i32 %i.p, 3
  br i1 %i.q, label %bb.h, label %thread-pre-split

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.s = tail call i32 @fflush(ptr noundef %i.r)  ; 0 uses
  %.pr8.pre = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.h, %bb.g
  %i.t = phi i32 [ %i.p, %bb.g ], [ %.pr8.pre, %bb.h ]
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.i, label %.thread9

bb.i:                                             ; preds = %thread-pre-split
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite7 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.v) #28 ; 0 uses
  %i.w = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.x = icmp sgt i32 %i.w, 3
  br i1 %i.x, label %bb.j, label %.thread9

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.z = tail call i32 @fflush(ptr noundef %i.y)  ; 0 uses
  br label %.thread9

.thread9:                                         ; preds = %bb.f, %bb.c, %bb.i, %bb.j, %thread-pre-split
  %i.aa = tail call i32 @fflush(ptr noundef null) ; 0 uses
  tail call void @exit(i32 noundef 69) #29
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.ab = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %0)
  %.not4 = icmp eq i64 %i.ab, 1
  br i1 %.not4, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %.thread14

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str, i32 noundef 69) #27 ; 0 uses
  %i.ag = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 3
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.aj = tail call i32 @fflush(ptr noundef %i.ai) ; 0 uses
  %.pr10 = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ak = phi i32 [ %i.ag, %bb.m ], [ %.pr10, %bb.n ]
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %bb.p, label %.thread14

bb.p:                                             ; preds = %bb.o
  %i.am = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.104, i64 37, i64 1, ptr %i.am) #28 ; 0 uses
  %i.an = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 3
  br i1 %i.ao, label %bb.q, label %thread-pre-split12

bb.q:                                             ; preds = %bb.p
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.aq = tail call i32 @fflush(ptr noundef %i.ap) ; 0 uses
  %.pr13.pre = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %thread-pre-split12

thread-pre-split12:                               ; preds = %bb.q, %bb.p
  %i.ar = phi i32 [ %i.an, %bb.p ], [ %.pr13.pre, %bb.q ]
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %bb.r, label %.thread14

bb.r:                                             ; preds = %thread-pre-split12
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite5 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.at) #28 ; 0 uses
  %i.au = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.av = icmp sgt i32 %i.au, 3
  br i1 %i.av, label %bb.s, label %.thread14

bb.s:                                             ; preds = %bb.r
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ax = tail call i32 @fflush(ptr noundef %i.aw) ; 0 uses
  br label %.thread14

end_hunk_0
begin_hunk_1_@llvm.smin.i32
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nofree nounwind }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { cold nounwind }
attributes #28 = { cold }
attributes #29 = { cold noreturn nounwind }
attributes #30 = { nounwind allocsize(0,1) }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { nounwind willreturn memory(none) }
attributes #33 = { nounwind allocsize(1) }

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !30}
!1 = !{i32 1, !"long-double-type", !"x86_fp80"}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"LZ4IO_prefs_s", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !15, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !16, i64 56, !8, i64 64, !8, i64 68}
!18 = !{!17, !15, i64 16}
!19 = !{!17, !8, i64 40}
!20 = !{!17, !8, i64 44}
!21 = !{!17, !8, i64 48}
!22 = !{!17, !16, i64 56}
!23 = !{!17, !8, i64 64}
!24 = !{!17, !8, i64 68}
!25 = !{!17, !8, i64 0}
!26 = !{!17, !8, i64 4}
!27 = !{!17, !8, i64 8}
!28 = !{!17, !8, i64 12}
!29 = !{!15, !15, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!17, !8, i64 24}
!32 = !{!17, !8, i64 28}
!33 = !{!17, !8, i64 36}
!34 = !{!"long long", !7, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"", !34, i64 0, !12, i64 8, !15, i64 16, !15, i64 24, !34, i64 32}
!37 = !{!36, !12, i64 8}
!38 = !{!36, !15, i64 24}
!39 = !{!36, !34, i64 32}
!40 = !{!"", !8, i64 0}
!41 = !{!40, !8, i64 0}
!42 = !{!"p1 _ZTS7TPool_s", !12, i64 0}
!43 = !{!"p1 _ZTS13XXH32_state_s", !12, i64 0}
!44 = !{!"", !42, i64 0, !42, i64 8, !13, i64 16, !15, i64 24, !34, i64 32, !34, i64 40, !43, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !13, i64 80, !12, i64 88, !15, i64 96}
!45 = !{!44, !42, i64 0}
!46 = !{!44, !42, i64 8}
!47 = !{!44, !13, i64 16}
!48 = !{!44, !15, i64 24}
!49 = !{!44, !12, i64 56}
!50 = !{!44, !12, i64 64}
!51 = !{!44, !12, i64 72}
!52 = !{!44, !13, i64 80}
!53 = !{!44, !12, i64 88}
!54 = !{!44, !15, i64 96}
!55 = !{!44, !34, i64 32}
!56 = !{!16, !16, i64 0}
!57 = !{!"p1 _ZTS11LZ4F_cctx_s", !12, i64 0}
!58 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !34, i64 16, !8, i64 24, !8, i64 28}
!59 = !{!"", !58, i64 0, !8, i64 32, !8, i64 36, !8, i64 40, !7, i64 44}
!60 = !{!"p1 _ZTS12LZ4F_CDict_s", !12, i64 0}
!61 = !{!"", !12, i64 0, !15, i64 8, !12, i64 16, !15, i64 24, !57, i64 32, !59, i64 40, !60, i64 96, !42, i64 104, !42, i64 112}
!62 = !{!61, !12, i64 0}
!63 = !{!61, !12, i64 16}
!64 = !{!61, !15, i64 24}
!65 = !{!61, !57, i64 32}
!66 = !{!7, !7, i64 0}
!67 = !{i64 0, i64 4, !11, i64 4, i64 4, !11, i64 8, i64 4, !11, i64 12, i64 4, !11, i64 16, i64 8, !35, i64 24, i64 4, !11, i64 28, i64 4, !11, i64 32, i64 4, !11, i64 36, i64 4, !11, i64 40, i64 4, !11, i64 44, i64 12, !66}
!68 = !{!59, !8, i64 32}
!69 = !{!"timespec", !15, i64 0, !15, i64 8}
!70 = !{!"stat", !15, i64 0, !15, i64 8, !15, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !69, i64 72, !69, i64 88, !69, i64 104, !7, i64 120}
!71 = !{!70, !8, i64 24}
!72 = !{!70, !15, i64 48}
!73 = !{!59, !34, i64 16}
!74 = !{!61, !60, i64 96}
!75 = !{!61, !42, i64 104}
!76 = !{!61, !42, i64 112}
!77 = !{!"", !12, i64 0, !60, i64 8}
!78 = !{!77, !12, i64 0}
!79 = !{!77, !60, i64 8}
!80 = !{!44, !43, i64 48}
!81 = !{!"", !42, i64 0, !12, i64 8, !15, i64 16, !15, i64 24, !34, i64 32, !12, i64 40, !12, i64 48, !13, i64 56, !12, i64 64, !15, i64 72, !8, i64 80}
!82 = !{!81, !42, i64 0}
!83 = !{!81, !12, i64 8}
!84 = !{!81, !15, i64 16}
!85 = !{!81, !15, i64 24}
!86 = !{!81, !34, i64 32}
!87 = !{!81, !12, i64 40}
!88 = !{!81, !12, i64 48}
!89 = !{!81, !13, i64 56}
!90 = !{!81, !12, i64 64}
!91 = !{!81, !15, i64 72}
!92 = !{!81, !8, i64 80}
!93 = !{!44, !34, i64 40}
!94 = !{!"", !12, i64 0, !12, i64 8, !15, i64 16, !34, i64 24, !13, i64 32}
!95 = !{!94, !12, i64 8}
!96 = !{!94, !15, i64 16}
!97 = !{!94, !34, i64 24}
!98 = !{!94, !13, i64 32}
!99 = !{!94, !12, i64 0}
!100 = !{!12, !12, i64 0}
!101 = !{!69, !15, i64 8}
!102 = !{!70, !15, i64 88}
!103 = !{!69, !15, i64 0}
!104 = !{!70, !8, i64 28}
!105 = !{!70, !8, i64 32}
!106 = !{!"p1 _ZTS11LZ4F_dctx_s", !12, i64 0}
!107 = !{!"", !12, i64 0, !15, i64 8, !12, i64 16, !15, i64 24, !13, i64 32, !106, i64 40, !12, i64 48, !15, i64 56}
!108 = !{!107, !12, i64 0}
!109 = !{!107, !12, i64 16}
!110 = !{!107, !12, i64 48}
!111 = !{!107, !13, i64 32}
!112 = distinct !{!112, !30}
!113 = !{!17, !8, i64 32}
!114 = distinct !{!114, i1 false, !"WR_init"}
!115 = distinct !{!115, !114, !"WR_init: argument 0"}
!116 = !{!115}
!117 = distinct !{!117, !30}
!118 = distinct !{!118, i1 false, !"WR_init"}
!119 = distinct !{!119, !118, !"WR_init: argument 0"}
!120 = !{!119}
!121 = !{!59, !8, i64 8}
!122 = !{!59, !8, i64 4}
!123 = distinct !{null}
!124 = distinct !{!124, !30}
!125 = !{!57, !57, i64 0}
!126 = distinct !{!126, !30}
!127 = !{!61, !8, i64 76}
!128 = !{!61, !8, i64 40}
!129 = !{!61, !8, i64 68}
!130 = !{!61, !8, i64 80}
!131 = !{!61, !15, i64 8}
!132 = distinct !{!132, !30}
!133 = !{!107, !15, i64 8}
!134 = !{!107, !15, i64 24}
!135 = !{!107, !15, i64 56}
!136 = !{!107, !106, i64 40}
!137 = distinct !{!137, !30}
!138 = distinct !{!138, !30}
!139 = distinct !{!139, !30}
!140 = !{!106, !106, i64 0}
!141 = !{!"", !58, i64 0, !8, i64 32}
!142 = !{!141, !8, i64 0}
!143 = !{!141, !8, i64 28}
!144 = !{!141, !8, i64 8}
!145 = !{!141, !8, i64 4}
!146 = !{!141, !34, i64 16}
!147 = !{!141, !8, i64 32}
!148 = distinct !{!148, !30}
!149 = distinct !{!149, !30}
!150 = distinct !{!150, !30}
!151 = distinct !{!151, i1 false, !"WR_getBufID"}
!152 = distinct !{!152, !151, !"WR_getBufID: argument 0"}
!153 = distinct !{!153, !30}
!154 = distinct !{!154, !30}
!155 = distinct !{!155, !30}
!156 = !{!36, !34, i64 0}
!157 = !{!36, !15, i64 16}
!158 = !{!"", !12, i64 0, !15, i64 8, !34, i64 16}
!159 = !{!158, !12, i64 0}
!160 = !{!158, !34, i64 16}
!161 = !{!152}
!162 = !{i64 0, i64 8, !100, i64 8, i64 8, !29, i64 16, i64 8, !35}
!163 = distinct !{!163, !30}
!164 = distinct !{!164, !30}
!165 = distinct !{!165, !30}
!166 = distinct !{!166, !30}
!167 = distinct !{!167, !30}
end_hunk_1
