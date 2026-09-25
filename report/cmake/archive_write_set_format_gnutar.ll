Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_write_set_format_gnutar?download=true
inline.NumInlined: 10
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@archive_write_gnutar_free:bb.a
; Function Attrs: nounwind uwtable
define internal i32 @archive_write_gnutar_finish_entry(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !28
  %i.f = add i64 %i.e, %i.c
  %i.g = tail call i32 @__archive_write_nulls(ptr noundef %0, i64 noundef %i.f) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  ret i32 %i.g
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @archive_string_conversion_to_charset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @__archive_write_nulls(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare i32 @__archive_write_output(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @archive_string_default_conversion_for_write(ptr noundef) local_unnamed_addr #3

declare ptr @archive_entry_pathname(ptr noundef) local_unnamed_addr #3

declare ptr @archive_entry_hardlink(ptr noundef) local_unnamed_addr #3

declare ptr @archive_entry_symlink(ptr noundef) local_unnamed_addr #3

declare i32 @archive_entry_filetype(ptr noundef) local_unnamed_addr #3

declare void @archive_entry_set_size(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

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
  %i.ag = lshr i32 %i.af, 6
  %i.ah = lshr i32 %i.af, 9
  %i.ai = trunc i32 %i.af to i8
  %i.aj = trunc i32 %i.af to i8
  %i.ak = trunc i32 %i.ag to i8
  %i.al = trunc i32 %i.ah to i8
  %i.am = lshr i8 %i.aj, 3
  %i.an = insertelement <4 x i8> poison, i8 %i.al, i64 0
  %i.ao = insertelement <4 x i8> %i.an, i8 %i.ak, i64 1
  %i.ap = insertelement <4 x i8> %i.ao, i8 %i.am, i64 2
  %i.aq = insertelement <4 x i8> %i.ap, i8 %i.ai, i64 3
  %i.ar = and <4 x i8> %i.aq, splat (i8 7)
  %i.as = or disjoint <4 x i8> %i.ar, splat (i8 48)
  store <4 x i8> %i.as, ptr %i.ae, align 1, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 102
  store i8 48, ptr %i.at, align 1, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 101
  store i8 48, ptr %i.au, align 1, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i8 48, ptr %i.av, align 1, !tbaa !20
  %i.aw = tail call i64 @archive_entry_uid(ptr noundef %2) #11 ; 10 uses
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
  %i.bo = lshr i64 %spec.store.select.i.i, 12
  %i.bp = lshr i64 %spec.store.select.i.i, 15
  %i.bq = lshr i64 %spec.store.select.i.i, 18
  %i.br = trunc i64 %i.bn to i8
  %i.bs = trunc i64 %i.bo to i8
  %i.bt = trunc nsw i64 %i.bp to i8
  %i.bu = trunc nsw i64 %i.bq to i8
  %i.bv = insertelement <4 x i8> poison, i8 %i.bu, i64 0
  %i.bw = insertelement <4 x i8> %i.bv, i8 %i.bt, i64 1
  %i.bx = insertelement <4 x i8> %i.bw, i8 %i.bs, i64 2
  %i.by = insertelement <4 x i8> %i.bx, i8 %i.br, i64 3
  %i.bz = and <4 x i8> %i.by, <i8 -1, i8 7, i8 7, i8 7>
  %i.ca = or disjoint <4 x i8> %i.bz, splat (i8 48)
  store <4 x i8> %i.ca, ptr %i.bm, align 1, !tbaa !20
  br label %format_number.exit.thread

format_256.exit.i:                                ; preds = %format_octal.exit
  %4 = trunc i64 %i.aw to i8
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 115
  store i8 %4, ptr %5, align 1, !tbaa !20
  %6 = lshr i64 %i.aw, 8
  %7 = trunc i64 %6 to i8
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 114
  store i8 %7, ptr %8, align 1, !tbaa !20
  %9 = lshr i64 %i.aw, 16
  %10 = trunc i64 %9 to i8
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 113
  store i8 %10, ptr %11, align 1, !tbaa !20
  %12 = lshr i64 %i.aw, 24
  %13 = trunc i64 %12 to i8
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i8 %13, ptr %14, align 1, !tbaa !20
  %15 = lshr i64 %i.aw, 32
  %16 = trunc i64 %15 to i8
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 111
  store i8 %16, ptr %17, align 1, !tbaa !20
  %18 = lshr i64 %i.aw, 40
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 110
  store i8 %19, ptr %20, align 1, !tbaa !20
  %21 = lshr i64 %i.aw, 48
  %22 = trunc i64 %21 to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 109
  store i8 %22, ptr %i.cb, align 1, !tbaa !20
  %23 = lshr i64 %i.aw, 56
  %24 = trunc nuw nsw i64 %23 to i8
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 108
  %26 = or disjoint i8 %24, -128
  store i8 %26, ptr %25, align 1, !tbaa !20
  br label %format_number.exit.thread

format_number.exit.thread:                        ; preds = %bb.p, %format_256.exit.i
  %i.cc = tail call i64 @archive_entry_gid(ptr noundef %2) #11 ; 10 uses
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
  %i.cu = lshr i64 %spec.store.select.i.i104, 12
  %i.cv = lshr i64 %spec.store.select.i.i104, 15
  %i.cw = lshr i64 %spec.store.select.i.i104, 18
  %i.cx = trunc i64 %i.ct to i8
  %i.cy = trunc i64 %i.cu to i8
  %i.cz = trunc nsw i64 %i.cv to i8
  %i.da = trunc nsw i64 %i.cw to i8
  %i.db = insertelement <4 x i8> poison, i8 %i.da, i64 0
  %i.dc = insertelement <4 x i8> %i.db, i8 %i.cz, i64 1
  %i.dd = insertelement <4 x i8> %i.dc, i8 %i.cy, i64 2
  %i.de = insertelement <4 x i8> %i.dd, i8 %i.cx, i64 3
  %i.df = and <4 x i8> %i.de, <i8 -1, i8 7, i8 7, i8 7>
  %i.dg = or disjoint <4 x i8> %i.df, splat (i8 48)
  store <4 x i8> %i.dg, ptr %i.cs, align 1, !tbaa !20
  br label %format_number.exit109.thread

format_256.exit.i102:                             ; preds = %format_number.exit.thread
  %27 = trunc i64 %i.cc to i8
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 123
  store i8 %27, ptr %28, align 1, !tbaa !20
  %29 = lshr i64 %i.cc, 8
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 122
  store i8 %30, ptr %31, align 1, !tbaa !20
  %32 = lshr i64 %i.cc, 16
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 121
  store i8 %33, ptr %34, align 1, !tbaa !20
  %35 = lshr i64 %i.cc, 24
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 %36, ptr %37, align 1, !tbaa !20
  %38 = lshr i64 %i.cc, 32
  %39 = trunc i64 %38 to i8
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 119
  store i8 %39, ptr %40, align 1, !tbaa !20
  %41 = lshr i64 %i.cc, 40
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 118
  store i8 %42, ptr %43, align 1, !tbaa !20
  %44 = lshr i64 %i.cc, 48
  %45 = trunc i64 %44 to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 117
  store i8 %45, ptr %i.dh, align 1, !tbaa !20
  %46 = lshr i64 %i.cc, 56
  %47 = trunc nuw nsw i64 %46 to i8
  %48 = getelementptr inbounds nuw i8, ptr %1, i64 116
  %49 = or disjoint i8 %47, -128
  store i8 %49, ptr %48, align 1, !tbaa !20
  br label %format_number.exit109.thread

format_number.exit109.thread:                     ; preds = %bb.q, %format_256.exit.i102
  %i.di = tail call i64 @archive_entry_size(ptr noundef %2) #11 ; 10 uses
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
  %i.du = lshr i64 %spec.store.select.i.i115, 18
  %i.dv = lshr i64 %spec.store.select.i.i115, 21
  %i.dw = lshr i64 %spec.store.select.i.i115, 24
  %i.dx = lshr i64 %spec.store.select.i.i115, 27
  %i.dy = insertelement <4 x i64> poison, i64 %spec.store.select.i.i115, i64 0
  %i.dz = shufflevector <4 x i64> %i.dy, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ea = lshr <4 x i64> %i.dz, <i64 15, i64 12, i64 9, i64 6>
  %i.eb = trunc <4 x i64> %i.ea to <4 x i8>
  %i.ec = trunc i64 %i.du to i8
  %i.ed = trunc i64 %i.dv to i8
  %i.ee = trunc i64 %i.dw to i8
  %i.ef = trunc nsw i64 %i.dx to i8
  %i.eg = insertelement <8 x i8> poison, i8 %i.ef, i64 0
  %i.eh = insertelement <8 x i8> %i.eg, i8 %i.ee, i64 1
  %i.ei = insertelement <8 x i8> %i.eh, i8 %i.ed, i64 2
  %i.ej = insertelement <8 x i8> %i.ei, i8 %i.ec, i64 3
  %i.ek = shufflevector <4 x i8> %i.eb, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.el = shufflevector <8 x i8> %i.ej, <8 x i8> %i.ek, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.em = and <8 x i8> %i.el, splat (i8 7)
  %i.en = or disjoint <8 x i8> %i.em, splat (i8 48)
  store <8 x i8> %i.en, ptr %i.dt, align 1, !tbaa !20
  %i.eo = lshr i64 %spec.store.select.i.i115, 30
  %i.ep = trunc nuw nsw i64 %i.eo to i8
  %i.eq = or disjoint i8 %i.ep, 48
  br label %format_number.exit120.thread

format_256.exit.i113:                             ; preds = %format_number.exit109.thread
  %50 = trunc i64 %i.di to i8
  %51 = getelementptr inbounds nuw i8, ptr %1, i64 135
  store i8 %50, ptr %51, align 1, !tbaa !20
  %52 = lshr i64 %i.di, 8
  %53 = trunc i64 %52 to i8
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 134
  store i8 %53, ptr %54, align 1, !tbaa !20
  %55 = lshr i64 %i.di, 16
  %56 = trunc i64 %55 to i8
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 133
  store i8 %56, ptr %57, align 1, !tbaa !20
  %58 = lshr i64 %i.di, 24
  %59 = trunc i64 %58 to i8
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 132
  store i8 %59, ptr %60, align 1, !tbaa !20
  %61 = lshr i64 %i.di, 32
  %62 = trunc i64 %61 to i8
  %63 = getelementptr inbounds nuw i8, ptr %1, i64 131
  store i8 %62, ptr %63, align 1, !tbaa !20
  %64 = lshr i64 %i.di, 40
  %65 = trunc i64 %64 to i8
  %66 = getelementptr inbounds nuw i8, ptr %1, i64 130
  store i8 %65, ptr %66, align 1, !tbaa !20
  %67 = lshr i64 %i.di, 48
  %68 = trunc i64 %67 to i8
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 129
  store i8 %68, ptr %i.er, align 1, !tbaa !20
  %69 = lshr i64 %i.di, 56
  %70 = trunc nuw nsw i64 %69 to i8
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i8 %70, ptr %71, align 1, !tbaa !20
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
  %i.fm = lshr i64 %spec.store.select.i, 21
  %i.fn = lshr i64 %spec.store.select.i, 24
  %i.fo = lshr i64 %spec.store.select.i, 27
  %i.fp = lshr i64 %spec.store.select.i, 30
  %i.fq = insertelement <4 x i64> poison, i64 %spec.store.select.i, i64 0
  %i.fr = shufflevector <4 x i64> %i.fq, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.fs = lshr <4 x i64> %i.fr, <i64 18, i64 15, i64 12, i64 9>
  %i.ft = trunc <4 x i64> %i.fs to <4 x i8>
  %i.fu = trunc i64 %i.fm to i8
  %i.fv = trunc i64 %i.fn to i8
  %i.fw = trunc i64 %i.fo to i8
  %i.fx = trunc i64 %i.fp to i8
  %i.fy = insertelement <8 x i8> poison, i8 %i.fx, i64 0
  %i.fz = insertelement <8 x i8> %i.fy, i8 %i.fw, i64 1
  %i.ga = insertelement <8 x i8> %i.fz, i8 %i.fv, i64 2
  %i.gb = insertelement <8 x i8> %i.ga, i8 %i.fu, i64 3
  %i.gc = shufflevector <4 x i8> %i.ft, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gd = shufflevector <8 x i8> %i.gb, <8 x i8> %i.gc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ge = and <8 x i8> %i.gd, splat (i8 7)
  %i.gf = or disjoint <8 x i8> %i.ge, splat (i8 48)
  store <8 x i8> %i.gf, ptr %i.fl, align 1, !tbaa !20
  %i.gg = icmp slt i64 %i.ew, 8589934592
  br i1 %i.gg, label %format_octal.exit126, label %.preheader.preheader.i124

.preheader.preheader.i124:                        ; preds = %format_number.exit120.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.fl, i8 55, i64 11, i1 false), !tbaa !20
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
  %i.gx = lshr i64 %spec.store.select.i127, 9
  %i.gy = lshr i64 %spec.store.select.i127, 12
  %i.gz = lshr i64 %spec.store.select.i127, 15
  %i.ha = trunc i64 %i.gw to i8
  %i.hb = trunc i64 %i.gx to i8
  %i.hc = trunc i64 %i.gy to i8
  %i.hd = trunc i64 %i.gz to i8
  %i.he = insertelement <4 x i8> poison, i8 %i.hd, i64 0
  %i.hf = insertelement <4 x i8> %i.he, i8 %i.hc, i64 1
  %i.hg = insertelement <4 x i8> %i.hf, i8 %i.hb, i64 2
  %i.hh = insertelement <4 x i8> %i.hg, i8 %i.ha, i64 3
  %i.hi = and <4 x i8> %i.hh, splat (i8 7)
  %i.hj = or disjoint <4 x i8> %i.hi, splat (i8 48)
  store <4 x i8> %i.hj, ptr %i.gv, align 1, !tbaa !20
  %i.hk = icmp slt i64 %i.gl, 262144
  br i1 %i.hk, label %format_octal.exit133.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.gv, i8 55, i64 6, i1 false), !tbaa !20
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
  %i.hx = lshr i64 %spec.store.select.i134, 9
  %i.hy = lshr i64 %spec.store.select.i134, 12
  %i.hz = lshr i64 %spec.store.select.i134, 15
  %i.ia = trunc i64 %i.hw to i8
  %i.ib = trunc i64 %i.hx to i8
  %i.ic = trunc i64 %i.hy to i8
  %i.id = trunc i64 %i.hz to i8
  %i.ie = insertelement <4 x i8> poison, i8 %i.id, i64 0
  %i.if = insertelement <4 x i8> %i.ie, i8 %i.ic, i64 1
  %i.ig = insertelement <4 x i8> %i.if, i8 %i.ib, i64 2
  %i.ih = insertelement <4 x i8> %i.ig, i8 %i.ia, i64 3
  %i.ii = and <4 x i8> %i.ih, splat (i8 7)
  %i.ij = or disjoint <4 x i8> %i.ii, splat (i8 48)
  store <4 x i8> %i.ij, ptr %i.hv, align 1, !tbaa !20
  %i.ik = icmp slt i64 %i.hl, 262144
  br i1 %i.ik, label %format_octal.exit140.thread, label %bb.v

bb.v:                                             ; preds = %format_octal.exit133.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.hv, i8 55, i64 6, i1 false), !tbaa !20
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
  %i.jn = lshr i32 %i.ja, 9
  %i.jo = lshr i32 %i.ja, 12
  %i.jp = lshr i32 %i.ja, 15
  %i.jq = trunc i32 %i.jm to i8
end_hunk_0
