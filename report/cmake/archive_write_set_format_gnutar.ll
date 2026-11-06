Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_write_set_format_gnutar?download=true
inline.NumInlined: 10
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@strlen

declare ptr @archive_string_ensure(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @archive_string_free(ptr noundef) local_unnamed_addr #3

declare ptr @archive_strncat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @archive_strappend_char(ptr noundef, i8 noundef signext) local_unnamed_addr #3

declare void @archive_entry_copy_pathname(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @_archive_entry_pathname_l(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

declare ptr @archive_string_conversion_charset_name(ptr noundef) local_unnamed_addr #3

declare i32 @_archive_entry_uname_l(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @archive_entry_uname(ptr noundef) local_unnamed_addr #3

declare i32 @_archive_entry_gname_l(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @archive_entry_gname(ptr noundef) local_unnamed_addr #3

declare i32 @_archive_entry_hardlink_l(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @_archive_entry_symlink_l(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @archive_entry_new2(ptr noundef) local_unnamed_addr #3

declare void @archive_entry_set_uname(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @archive_entry_set_gname(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @archive_entry_set_pathname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -25, 1) i32 @archive_format_gnutar_header(ptr noundef %0, ptr nofree noundef nonnull captures(none) initializes((0, 512)) %1, ptr noundef %2, i8 noundef signext range(i8 48, 77) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %1, ptr noundef nonnull align 16 dereferenceable(512) @template_header, i64 512, i1 false)
  %i.c = add nsw i8 %3, -75
  %or.cond = icmp ult i8 %i.c, 2                  ; 3 uses
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @archive_entry_pathname(ptr noundef %2) #11 ; 2 uses
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.082 = phi i64 [ %i.e, %bb.b ], [ %i.i, %bb.c ]
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %.082, i64 100)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %.0, i64 %spec.store.select, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23   ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.store.select3 = tail call i64 @llvm.umin.i64(i64 %i.k, i64 100)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 157
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.n, i64 %spec.store.select3, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @archive_entry_uname(ptr noundef %2) #11 ; 2 uses
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #12
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.t = load i64, ptr %i.s, align 8, !tbaa !44
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.183 = phi i64 [ %i.p, %bb.g ], [ %i.t, %bb.h ] ; 2 uses
  %.1 = phi ptr [ %i.o, %bb.g ], [ %i.r, %bb.h ]
  %.not92 = icmp eq i64 %.183, 0
  br i1 %.not92, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %spec.store.select7 = tail call i64 @llvm.umin.i64(i64 %.183, i64 32)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 265
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %.1, i64 %spec.store.select7, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.v = tail call ptr @archive_entry_gname(ptr noundef %2) #11 ; 2 uses
  %i.w = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #12
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !46
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.284 = phi i64 [ %i.w, %bb.l ], [ %i.aa, %bb.m ] ; 2 uses
  %.2 = phi ptr [ %i.v, %bb.l ], [ %i.y, %bb.m ]  ; 2 uses
  %.not93 = icmp eq i64 %.284, 0
  br i1 %.not93, label %format_octal.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.2) #12
  %i.ac = icmp ugt i64 %i.ab, 32
  %spec.select = select i1 %i.ac, i64 32, i64 %.284
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 297
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %.2, i64 %spec.select, i1 false)
  br label %format_octal.exit

format_octal.exit:                                ; preds = %bb.n, %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 103
  %i.af = tail call i32 @archive_entry_mode(ptr noundef %2) #11 ; 4 uses
  %i.ag = trunc i32 %i.af to i8
  %i.ah = trunc i32 %i.af to i8
  %i.ai = lshr i8 %i.ah, 3
  %i.aj = lshr i32 %i.af, 6
  %i.ak = trunc i32 %i.aj to i8
  %i.al = lshr i32 %i.af, 9
  %i.am = trunc i32 %i.al to i8
  %i.an = insertelement <4 x i8> poison, i8 %i.am, i64 0
  %i.ao = insertelement <4 x i8> %i.an, i8 %i.ak, i64 1
  %i.ap = insertelement <4 x i8> %i.ao, i8 %i.ai, i64 2
  %i.aq = insertelement <4 x i8> %i.ap, i8 %i.ag, i64 3
  %i.ar = and <4 x i8> %i.aq, splat (i8 7)
  %i.as = or disjoint <4 x i8> %i.ar, splat (i8 48)
  store <4 x i8> %i.as, ptr %i.ae, align 1, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 102
  store i8 48, ptr %i.at, align 1, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 101
  store i8 48, ptr %i.au, align 1, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i8 48, ptr %i.av, align 1, !tbaa !20
  %i.aw = tail call i64 @archive_entry_uid(ptr noundef %2) #11 ; 3 uses
  %i.ax = icmp slt i64 %i.aw, 2097152
  br i1 %i.ax, label %bb.p, label %format_256.exit.i

bb.p:                                             ; preds = %format_octal.exit
  %spec.store.select.i.i = tail call i64 @llvm.smax.i64(i64 %i.aw, i64 0) ; 7 uses
  %i.ay = trunc i64 %spec.store.select.i.i to i8
  %i.az = and i8 %i.ay, 7
  %i.ba = or disjoint i8 %i.az, 48
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 114
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !20
  %i.bc = trunc i64 %spec.store.select.i.i to i8
  %i.bd = lshr i8 %i.bc, 3
  %i.be = and i8 %i.bd, 7
  %i.bf = or disjoint i8 %i.be, 48
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 113
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !20
  %i.bh = lshr i64 %spec.store.select.i.i, 6
  %i.bi = trunc i64 %i.bh to i8
  %i.bj = and i8 %i.bi, 7
  %i.bk = or disjoint i8 %i.bj, 48
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !20
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bn = lshr i64 %spec.store.select.i.i, 9
  %i.bo = trunc i64 %i.bn to i8
  %i.bp = lshr i64 %spec.store.select.i.i, 12
  %i.bq = trunc i64 %i.bp to i8
  %i.br = lshr i64 %spec.store.select.i.i, 15
  %i.bs = trunc nsw i64 %i.br to i8
  %i.bt = lshr i64 %spec.store.select.i.i, 18
  %i.bu = trunc nsw i64 %i.bt to i8
  %i.bv = insertelement <4 x i8> poison, i8 %i.bu, i64 0
  %i.bw = insertelement <4 x i8> %i.bv, i8 %i.bs, i64 1
  %i.bx = insertelement <4 x i8> %i.bw, i8 %i.bq, i64 2
  %i.by = insertelement <4 x i8> %i.bx, i8 %i.bo, i64 3
  %i.bz = and <4 x i8> %i.by, <i8 -1, i8 7, i8 7, i8 7>
  %i.ca = or disjoint <4 x i8> %i.bz, splat (i8 48)
  store <4 x i8> %i.ca, ptr %i.bm, align 1, !tbaa !20
  br label %format_number.exit.thread

format_256.exit.i:                                ; preds = %format_octal.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 108
  %4 = or disjoint i64 %i.aw, -9223372036854775808
  %.inner = tail call i64 @llvm.bswap.i64(i64 %4)
  store i64 %.inner, ptr %i.cb, align 1, !tbaa !20
  br label %format_number.exit.thread

format_number.exit.thread:                        ; preds = %bb.p, %format_256.exit.i
  %i.cc = tail call i64 @archive_entry_gid(ptr noundef %2) #11 ; 3 uses
  %i.cd = icmp slt i64 %i.cc, 2097152
  br i1 %i.cd, label %bb.q, label %format_256.exit.i102

bb.q:                                             ; preds = %format_number.exit.thread
  %spec.store.select.i.i104 = tail call i64 @llvm.smax.i64(i64 %i.cc, i64 0) ; 7 uses
  %i.ce = trunc i64 %spec.store.select.i.i104 to i8
  %i.cf = and i8 %i.ce, 7
  %i.cg = or disjoint i8 %i.cf, 48
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 122
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !20
  %i.ci = trunc i64 %spec.store.select.i.i104 to i8
  %i.cj = lshr i8 %i.ci, 3
  %i.ck = and i8 %i.cj, 7
  %i.cl = or disjoint i8 %i.ck, 48
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 121
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !20
  %i.cn = lshr i64 %spec.store.select.i.i104, 6
  %i.co = trunc i64 %i.cn to i8
  %i.cp = and i8 %i.co, 7
  %i.cq = or disjoint i8 %i.cp, 48
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !20
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.ct = lshr i64 %spec.store.select.i.i104, 9
  %i.cu = trunc i64 %i.ct to i8
  %i.cv = lshr i64 %spec.store.select.i.i104, 12
  %i.cw = trunc i64 %i.cv to i8
  %i.cx = lshr i64 %spec.store.select.i.i104, 15
  %i.cy = trunc nsw i64 %i.cx to i8
  %i.cz = lshr i64 %spec.store.select.i.i104, 18
  %i.da = trunc nsw i64 %i.cz to i8
  %i.db = insertelement <4 x i8> poison, i8 %i.da, i64 0
  %i.dc = insertelement <4 x i8> %i.db, i8 %i.cy, i64 1
  %i.dd = insertelement <4 x i8> %i.dc, i8 %i.cw, i64 2
  %i.de = insertelement <4 x i8> %i.dd, i8 %i.cu, i64 3
  %i.df = and <4 x i8> %i.de, <i8 -1, i8 7, i8 7, i8 7>
  %i.dg = or disjoint <4 x i8> %i.df, splat (i8 48)
  store <4 x i8> %i.dg, ptr %i.cs, align 1, !tbaa !20
  br label %format_number.exit109.thread

format_256.exit.i102:                             ; preds = %format_number.exit.thread
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 116
  %5 = or disjoint i64 %i.cc, -9223372036854775808
  %.inner214 = tail call i64 @llvm.bswap.i64(i64 %5)
  store i64 %.inner214, ptr %i.dh, align 1, !tbaa !20
  br label %format_number.exit109.thread

format_number.exit109.thread:                     ; preds = %bb.q, %format_256.exit.i102
  %i.di = tail call i64 @archive_entry_size(ptr noundef %2) #11 ; 3 uses
  %i.dj = icmp slt i64 %i.di, 8589934592
  br i1 %i.dj, label %bb.r, label %format_256.exit.i113

bb.r:                                             ; preds = %format_number.exit109.thread
  %spec.store.select.i.i115 = tail call i64 @llvm.smax.i64(i64 %i.di, i64 0) ; 8 uses
  %i.dk = trunc i64 %spec.store.select.i.i115 to i8
  %i.dl = and i8 %i.dk, 7
  %i.dm = or disjoint i8 %i.dl, 48
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 134
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !20
  %i.do = trunc i64 %spec.store.select.i.i115 to i8
  %i.dp = lshr i8 %i.do, 3
  %i.dq = and i8 %i.dp, 7
  %i.dr = or disjoint i8 %i.dq, 48
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 133
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !20
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 125
  %i.du = insertelement <4 x i64> poison, i64 %spec.store.select.i.i115, i64 0
  %i.dv = shufflevector <4 x i64> %i.du, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.dw = lshr <4 x i64> %i.dv, <i64 15, i64 12, i64 9, i64 6>
  %i.dx = trunc <4 x i64> %i.dw to <4 x i8>
  %i.dy = lshr i64 %spec.store.select.i.i115, 18
  %i.dz = trunc i64 %i.dy to i8
  %i.ea = lshr i64 %spec.store.select.i.i115, 21
  %i.eb = trunc i64 %i.ea to i8
  %i.ec = lshr i64 %spec.store.select.i.i115, 24
  %i.ed = trunc i64 %i.ec to i8
  %i.ee = lshr i64 %spec.store.select.i.i115, 27
  %i.ef = trunc nsw i64 %i.ee to i8
  %i.eg = insertelement <8 x i8> poison, i8 %i.ef, i64 0
  %i.eh = insertelement <8 x i8> %i.eg, i8 %i.ed, i64 1
  %i.ei = insertelement <8 x i8> %i.eh, i8 %i.eb, i64 2
  %i.ej = insertelement <8 x i8> %i.ei, i8 %i.dz, i64 3
  %i.ek = shufflevector <4 x i8> %i.dx, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.el = shufflevector <8 x i8> %i.ej, <8 x i8> %i.ek, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.em = and <8 x i8> %i.el, splat (i8 7)
  %i.en = or disjoint <8 x i8> %i.em, splat (i8 48)
  store <8 x i8> %i.en, ptr %i.dt, align 1, !tbaa !20
  %i.eo = lshr i64 %spec.store.select.i.i115, 30
  %i.ep = trunc nuw nsw i64 %i.eo to i8
  %i.eq = or disjoint i8 %i.ep, 48
  br label %format_number.exit120.thread

format_256.exit.i113:                             ; preds = %format_number.exit109.thread
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 128
  %6 = tail call i64 @llvm.bswap.i64(i64 %i.di)
  store i64 %6, ptr %i.er, align 1, !tbaa !20
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 127
  store i8 0, ptr %i.es, align 1, !tbaa !20
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 126
  store i8 0, ptr %i.et, align 1, !tbaa !20
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 125
  store i8 0, ptr %i.eu, align 1, !tbaa !20
  br label %format_number.exit120.thread

format_number.exit120.thread:                     ; preds = %bb.r, %format_256.exit.i113
  %.sink = phi i8 [ %i.eq, %bb.r ], [ -128, %format_256.exit.i113 ]
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 124
  store i8 %.sink, ptr %i.ev, align 1, !tbaa !20
  %i.ew = tail call i64 @archive_entry_mtime(ptr noundef %2) #11 ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.smax.i64(i64 %i.ew, i64 0) ; 8 uses
  %i.ex = trunc i64 %spec.store.select.i to i8
  %i.ey = and i8 %i.ex, 7
  %i.ez = or disjoint i8 %i.ey, 48
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 146
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !20
  %i.fb = trunc i64 %spec.store.select.i to i8
  %i.fc = lshr i8 %i.fb, 3
  %i.fd = and i8 %i.fc, 7
  %i.fe = or disjoint i8 %i.fd, 48
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 145
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !20
  %i.fg = lshr i64 %spec.store.select.i, 6
  %i.fh = trunc i64 %i.fg to i8
  %i.fi = and i8 %i.fh, 7
  %i.fj = or disjoint i8 %i.fi, 48
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !20
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.fm = insertelement <4 x i64> poison, i64 %spec.store.select.i, i64 0
  %i.fn = shufflevector <4 x i64> %i.fm, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.fo = lshr <4 x i64> %i.fn, <i64 18, i64 15, i64 12, i64 9>
  %i.fp = trunc <4 x i64> %i.fo to <4 x i8>
  %i.fq = lshr i64 %spec.store.select.i, 21
  %i.fr = trunc i64 %i.fq to i8
  %i.fs = lshr i64 %spec.store.select.i, 24
  %i.ft = trunc i64 %i.fs to i8
  %i.fu = lshr i64 %spec.store.select.i, 27
  %i.fv = trunc i64 %i.fu to i8
  %i.fw = lshr i64 %spec.store.select.i, 30
  %i.fx = trunc i64 %i.fw to i8
  %i.fy = insertelement <8 x i8> poison, i8 %i.fx, i64 0
  %i.fz = insertelement <8 x i8> %i.fy, i8 %i.fv, i64 1
  %i.ga = insertelement <8 x i8> %i.fz, i8 %i.ft, i64 2
  %i.gb = insertelement <8 x i8> %i.ga, i8 %i.fr, i64 3
  %i.gc = shufflevector <4 x i8> %i.fp, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gd = shufflevector <8 x i8> %i.gb, <8 x i8> %i.gc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ge = and <8 x i8> %i.gd, splat (i8 7)
  %i.gf = or disjoint <8 x i8> %i.ge, splat (i8 48)
  store <8 x i8> %i.gf, ptr %i.fl, align 1, !tbaa !20
  %i.gg = icmp slt i64 %i.ew, 8589934592
  br i1 %i.gg, label %format_octal.exit126, label %.preheader.preheader.i124

.preheader.preheader.i124:                        ; preds = %format_number.exit120.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.fl, i8 55, i64 range(i64 0, 12) 11, i1 false), !tbaa !20
  br label %format_octal.exit126

format_octal.exit126:                             ; preds = %format_number.exit120.thread, %.preheader.preheader.i124
  %i.gh = tail call i32 @archive_entry_filetype(ptr noundef %2) #11
  %i.gi = icmp eq i32 %i.gh, 24576
  br i1 %i.gi, label %bb.t, label %bb.s

bb.s:                                             ; preds = %format_octal.exit126
  %i.gj = tail call i32 @archive_entry_filetype(ptr noundef %2) #11
  %i.gk = icmp eq i32 %i.gj, 8192
  br i1 %i.gk, label %bb.t, label %format_octal.exit140.thread

bb.t:                                             ; preds = %bb.s, %format_octal.exit126
  %i.gl = tail call i64 @archive_entry_rdevmajor(ptr noundef %2) #11 ; 2 uses
  %spec.store.select.i127 = tail call i64 @llvm.smax.i64(i64 %i.gl, i64 0) ; 6 uses
  %i.gm = trunc i64 %spec.store.select.i127 to i8
  %i.gn = and i8 %i.gm, 7
  %i.go = or disjoint i8 %i.gn, 48
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 334
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !20
  %i.gq = trunc i64 %spec.store.select.i127 to i8
  %i.gr = lshr i8 %i.gq, 3
  %i.gs = and i8 %i.gr, 7
  %i.gt = or disjoint i8 %i.gs, 48
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 333
  store i8 %i.gt, ptr %i.gu, align 1, !tbaa !20
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 329 ; 2 uses
  %i.gw = lshr i64 %spec.store.select.i127, 6
  %i.gx = trunc i64 %i.gw to i8
  %i.gy = lshr i64 %spec.store.select.i127, 9
  %i.gz = trunc i64 %i.gy to i8
  %i.ha = lshr i64 %spec.store.select.i127, 12
  %i.hb = trunc i64 %i.ha to i8
  %i.hc = lshr i64 %spec.store.select.i127, 15
  %i.hd = trunc i64 %i.hc to i8
  %i.he = insertelement <4 x i8> poison, i8 %i.hd, i64 0
  %i.hf = insertelement <4 x i8> %i.he, i8 %i.hb, i64 1
  %i.hg = insertelement <4 x i8> %i.hf, i8 %i.gz, i64 2
  %i.hh = insertelement <4 x i8> %i.hg, i8 %i.gx, i64 3
  %i.hi = and <4 x i8> %i.hh, splat (i8 7)
  %i.hj = or disjoint <4 x i8> %i.hi, splat (i8 48)
  store <4 x i8> %i.hj, ptr %i.gv, align 1, !tbaa !20
  %i.hk = icmp slt i64 %i.gl, 262144
  br i1 %i.hk, label %format_octal.exit133.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.gv, i8 55, i64 range(i64 0, 12) 6, i1 false), !tbaa !20
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 34, ptr noundef nonnull @.str.23) #11
  br label %format_octal.exit133.thread

format_octal.exit133.thread:                      ; preds = %bb.t, %bb.u
  %.388 = phi i32 [ -25, %bb.u ], [ 0, %bb.t ]
  %i.hl = tail call i64 @archive_entry_rdevminor(ptr noundef %2) #11 ; 2 uses
  %spec.store.select.i134 = tail call i64 @llvm.smax.i64(i64 %i.hl, i64 0) ; 6 uses
  %i.hm = trunc i64 %spec.store.select.i134 to i8
  %i.hn = and i8 %i.hm, 7
  %i.ho = or disjoint i8 %i.hn, 48
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 342
  store i8 %i.ho, ptr %i.hp, align 1, !tbaa !20
  %i.hq = trunc i64 %spec.store.select.i134 to i8
  %i.hr = lshr i8 %i.hq, 3
  %i.hs = and i8 %i.hr, 7
  %i.ht = or disjoint i8 %i.hs, 48
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 341
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !20
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 337 ; 2 uses
  %i.hw = lshr i64 %spec.store.select.i134, 6
  %i.hx = trunc i64 %i.hw to i8
  %i.hy = lshr i64 %spec.store.select.i134, 9
  %i.hz = trunc i64 %i.hy to i8
  %i.ia = lshr i64 %spec.store.select.i134, 12
  %i.ib = trunc i64 %i.ia to i8
  %i.ic = lshr i64 %spec.store.select.i134, 15
  %i.id = trunc i64 %i.ic to i8
  %i.ie = insertelement <4 x i8> poison, i8 %i.id, i64 0
  %i.if = insertelement <4 x i8> %i.ie, i8 %i.ib, i64 1
  %i.ig = insertelement <4 x i8> %i.if, i8 %i.hz, i64 2
  %i.ih = insertelement <4 x i8> %i.ig, i8 %i.hx, i64 3
  %i.ii = and <4 x i8> %i.ih, splat (i8 7)
  %i.ij = or disjoint <4 x i8> %i.ii, splat (i8 48)
  store <4 x i8> %i.ij, ptr %i.hv, align 1, !tbaa !20
  %i.ik = icmp slt i64 %i.hl, 262144
  br i1 %i.ik, label %format_octal.exit140.thread, label %bb.v

bb.v:                                             ; preds = %format_octal.exit133.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.hv, i8 55, i64 range(i64 0, 12) 6, i1 false), !tbaa !20
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 34, ptr noundef nonnull @.str.24) #11
  br label %format_octal.exit140.thread

format_octal.exit140.thread:                      ; preds = %format_octal.exit133.thread, %bb.v, %bb.s
  %.4 = phi i32 [ -25, %bb.v ], [ 0, %bb.s ], [ %.388, %format_octal.exit133.thread ]
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 156
  store i8 %3, ptr %i.il, align 1, !tbaa !20
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %format_octal.exit140.thread
  %index = phi i64 [ 0, %format_octal.exit140.thread ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %format_octal.exit140.thread ], [ %i.ix, %vector.body ]
  %vec.phi212 = phi <4 x i32> [ zeroinitializer, %format_octal.exit140.thread ], [ %i.iy, %vector.body ]
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  %wide.load = load <4 x i8>, ptr %i.im, align 1, !tbaa !20
  %wide.load213 = load <4 x i8>, ptr %i.in, align 1, !tbaa !20
  %i.io = zext <4 x i8> %wide.load to <4 x i32>
  %i.ip = zext <4 x i8> %wide.load213 to <4 x i32>
  %i.iq = add <4 x i32> %vec.phi, %i.io
  %i.ir = add <4 x i32> %vec.phi212, %i.ip
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 12
  %wide.load.1 = load <4 x i8>, ptr %i.it, align 1, !tbaa !20
  %wide.load213.1 = load <4 x i8>, ptr %i.iu, align 1, !tbaa !20
  %i.iv = zext <4 x i8> %wide.load.1 to <4 x i32>
  %i.iw = zext <4 x i8> %wide.load213.1 to <4 x i32>
  %i.ix = add <4 x i32> %i.iq, %i.iv              ; 2 uses
  %i.iy = add <4 x i32> %i.ir, %i.iw              ; 2 uses
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.iz = icmp eq i64 %index.next.1, 512
  br i1 %i.iz, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.iy, %i.ix
  %i.ja = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 7 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 154
  store i8 0, ptr %i.jb, align 1, !tbaa !20
  %i.jc = trunc i32 %i.ja to i8
  %i.jd = and i8 %i.jc, 7
  %i.je = or disjoint i8 %i.jd, 48
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 153
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !20
  %i.jg = trunc i32 %i.ja to i8
  %i.jh = lshr i8 %i.jg, 3
  %i.ji = and i8 %i.jh, 7
  %i.jj = or disjoint i8 %i.ji, 48
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i8 %i.jj, ptr %i.jk, align 1, !tbaa !20
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 148 ; 2 uses
  %i.jm = lshr i32 %i.ja, 6
  %i.jn = trunc i32 %i.jm to i8
  %i.jo = lshr i32 %i.ja, 9
  %i.jp = trunc i32 %i.jo to i8
  %i.jq = lshr i32 %i.ja, 12
  %i.jr = trunc i32 %i.jq to i8
  %i.js = lshr i32 %i.ja, 15
  %i.jt = trunc i32 %i.js to i8
  %i.ju = insertelement <4 x i8> poison, i8 %i.jt, i64 0
  %i.jv = insertelement <4 x i8> %i.ju, i8 %i.jr, i64 1
  %i.jw = insertelement <4 x i8> %i.jv, i8 %i.jp, i64 2
  %i.jx = insertelement <4 x i8> %i.jw, i8 %i.jn, i64 3
  %i.jy = and <4 x i8> %i.jx, splat (i8 7)
  %i.jz = or disjoint <4 x i8> %i.jy, splat (i8 48)
  store <4 x i8> %i.jz, ptr %i.jl, align 1, !tbaa !20
  %i.ka = icmp ult i32 %i.ja, 262144
  br i1 %i.ka, label %format_octal.exit147, label %.preheader.preheader.i145

.preheader.preheader.i145:                        ; preds = %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.jl, i8 55, i64 range(i64 0, 12) 6, i1 false), !tbaa !20
  br label %format_octal.exit147

format_octal.exit147:                             ; preds = %middle.block, %.preheader.preheader.i145
  ret i32 %.4
}

declare void @archive_entry_free(ptr noundef) local_unnamed_addr #3

declare i32 @archive_entry_hardlink_is_set(ptr noundef) local_unnamed_addr #3

declare void @__archive_write_entry_filetype_unsupported(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @archive_entry_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @archive_entry_mode(ptr noundef) local_unnamed_addr #3

declare i64 @archive_entry_uid(ptr noundef) local_unnamed_addr #3

declare i64 @archive_entry_gid(ptr noundef) local_unnamed_addr #3

declare i64 @archive_entry_mtime(ptr noundef) local_unnamed_addr #3

declare i64 @archive_entry_rdevmajor(ptr noundef) local_unnamed_addr #3

declare i64 @archive_entry_rdevminor(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS14archive_vtable", !9, i64 0}
!11 = !{!"p1 omnipotent char", !9, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"archive_string", !11, i64 0, !12, i64 8, !12, i64 16}
!14 = !{!"p1 _ZTS19archive_string_conv", !9, i64 0}
!15 = !{!"archive", !6, i64 0, !6, i64 4, !10, i64 8, !6, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !11, i64 40, !13, i64 48, !11, i64 72, !6, i64 80, !6, i64 84, !14, i64 88, !11, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !5, i64 128, !12, i64 136}
!16 = !{!"p1 _ZTS20archive_write_filter", !9, i64 0}
!17 = !{!"archive_write", !15, i64 0, !6, i64 144, !12, i64 152, !12, i64 160, !11, i64 168, !12, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !6, i64 224, !6, i64 228, !16, i64 232, !16, i64 240, !9, i64 248, !11, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !9, i64 312, !11, i64 320, !9, i64 328, !9, i64 336}
!18 = !{!17, !9, i64 248}
!19 = !{!17, !11, i64 256}
!20 = !{!5, !5, i64 0}
!21 = !{!"gnutar", !12, i64 0, !12, i64 8, !11, i64 16, !12, i64 24, !11, i64 32, !12, i64 40, !11, i64 48, !12, i64 56, !11, i64 64, !12, i64 72, !14, i64 80, !14, i64 88, !6, i64 96}
!22 = !{!21, !14, i64 80}
!23 = !{!21, !12, i64 24}
!24 = !{!21, !11, i64 16}
!25 = !{!21, !12, i64 40}
!26 = !{!21, !11, i64 32}
!27 = !{!21, !12, i64 0}
!28 = !{!21, !12, i64 8}
!29 = !{!17, !9, i64 272}
!30 = !{!17, !9, i64 288}
!31 = !{!17, !9, i64 296}
!32 = !{!17, !9, i64 304}
!33 = !{!17, !9, i64 312}
!34 = !{!17, !9, i64 280}
!35 = !{!17, !6, i64 16}
!36 = !{!17, !11, i64 24}
!37 = !{!21, !6, i64 96}
!38 = !{!21, !14, i64 88}
!39 = !{!13, !12, i64 8}
!40 = !{!13, !11, i64 0}
!41 = !{!6, !6, i64 0}
!42 = distinct !{!42, !47, !48, !49}
!43 = !{!21, !11, i64 48}
!44 = !{!21, !12, i64 56}
!45 = !{!21, !11, i64 64}
!46 = !{!21, !12, i64 72}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
