Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_write_set_format_gnutar?download=true
inline.NumInlined: 10
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@archive_write_gnutar_data:bb.a
  %i.g = sext i32 %i.d to i64
  %.012 = select i1 %.not, i64 %spec.select, i64 %i.g
  ret i64 %.012
}

; Function Attrs: nounwind uwtable
define internal i32 @archive_write_gnutar_close(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @__archive_write_nulls(ptr noundef %0, i64 noundef 1024) #11
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal noundef i32 @archive_write_gnutar_free(ptr nofree noundef captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.b) #11
  store ptr null, ptr %i.a, align 8, !tbaa !18
  ret i32 0
}

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
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 103
  %5 = tail call i32 @archive_entry_mode(ptr noundef %2) #11 ; 4 uses
  %i.ae = trunc i32 %5 to i8
  %i.af = trunc i32 %5 to i8
  %i.ag = lshr i8 %i.af, 3
  %i.ah = lshr i32 %5, 6
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = lshr i32 %5, 9
  %i.ak = trunc i32 %i.aj to i8
  %i.al = insertelement <4 x i8> poison, i8 %i.ak, i64 0
  %i.am = insertelement <4 x i8> %i.al, i8 %i.ai, i64 1
  %i.an = insertelement <4 x i8> %i.am, i8 %i.ag, i64 2
  %i.ao = insertelement <4 x i8> %i.an, i8 %i.ae, i64 3
  %i.ap = and <4 x i8> %i.ao, splat (i8 7)
  %i.aq = or disjoint <4 x i8> %i.ap, splat (i8 48)
  store <4 x i8> %i.aq, ptr %4, align 1, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 102
  store i8 48, ptr %i.ar, align 1, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 101
  store i8 48, ptr %i.as, align 1, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i8 48, ptr %i.at, align 1, !tbaa !20
  %i.au = tail call i64 @archive_entry_uid(ptr noundef %2) #11 ; 3 uses
  %i.av = icmp slt i64 %i.au, 2097152
  br i1 %i.av, label %bb.p, label %format_256.exit.i

bb.p:                                             ; preds = %format_octal.exit
  %spec.store.select.i.i = tail call i64 @llvm.smax.i64(i64 %i.au, i64 0) ; 7 uses
  %i.aw = trunc i64 %spec.store.select.i.i to i8
  %i.ax = and i8 %i.aw, 7
  %i.ay = or disjoint i8 %i.ax, 48
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 114
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !20
  %i.ba = trunc i64 %spec.store.select.i.i to i8
  %i.bb = lshr i8 %i.ba, 3
  %i.bc = and i8 %i.bb, 7
  %i.bd = or disjoint i8 %i.bc, 48
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 113
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !20
  %i.bf = lshr i64 %spec.store.select.i.i, 6
  %i.bg = trunc i64 %i.bf to i8
  %i.bh = and i8 %i.bg, 7
  %i.bi = or disjoint i8 %i.bh, 48
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !20
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bl = lshr i64 %spec.store.select.i.i, 9
  %i.bm = trunc i64 %i.bl to i8
  %i.bn = lshr i64 %spec.store.select.i.i, 12
  %i.bo = trunc i64 %i.bn to i8
  %i.bp = lshr i64 %spec.store.select.i.i, 15
  %i.bq = trunc nsw i64 %i.bp to i8
  %i.br = lshr i64 %spec.store.select.i.i, 18
  %i.bs = trunc nsw i64 %i.br to i8
  %i.bt = insertelement <4 x i8> poison, i8 %i.bs, i64 0
  %i.bu = insertelement <4 x i8> %i.bt, i8 %i.bq, i64 1
  %i.bv = insertelement <4 x i8> %i.bu, i8 %i.bo, i64 2
  %i.bw = insertelement <4 x i8> %i.bv, i8 %i.bm, i64 3
  %i.bx = and <4 x i8> %i.bw, <i8 -1, i8 7, i8 7, i8 7>
  %i.by = or disjoint <4 x i8> %i.bx, splat (i8 48)
  store <4 x i8> %i.by, ptr %i.bk, align 1, !tbaa !20
  br label %format_number.exit.thread

format_256.exit.i:                                ; preds = %format_octal.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ca = bitcast i64 %i.au to <8 x i8>
  %i.cb = or disjoint <8 x i8> %i.ca, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -128>
  %i.cc = shufflevector <8 x i8> %i.cb, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.cc, ptr %i.bz, align 1, !tbaa !20
  br label %format_number.exit.thread

format_number.exit.thread:                        ; preds = %bb.p, %format_256.exit.i
  %i.cd = tail call i64 @archive_entry_gid(ptr noundef %2) #11 ; 3 uses
  %i.ce = icmp slt i64 %i.cd, 2097152
  br i1 %i.ce, label %bb.q, label %format_256.exit.i102

bb.q:                                             ; preds = %format_number.exit.thread
  %spec.store.select.i.i104 = tail call i64 @llvm.smax.i64(i64 %i.cd, i64 0) ; 7 uses
  %i.cf = trunc i64 %spec.store.select.i.i104 to i8
  %i.cg = and i8 %i.cf, 7
  %i.ch = or disjoint i8 %i.cg, 48
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 122
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !20
  %i.cj = trunc i64 %spec.store.select.i.i104 to i8
  %i.ck = lshr i8 %i.cj, 3
  %i.cl = and i8 %i.ck, 7
  %i.cm = or disjoint i8 %i.cl, 48
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 121
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !20
  %i.co = lshr i64 %spec.store.select.i.i104, 6
  %i.cp = trunc i64 %i.co to i8
  %i.cq = and i8 %i.cp, 7
  %i.cr = or disjoint i8 %i.cq, 48
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !20
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.cu = lshr i64 %spec.store.select.i.i104, 9
  %i.cv = trunc i64 %i.cu to i8
  %i.cw = lshr i64 %spec.store.select.i.i104, 12
  %i.cx = trunc i64 %i.cw to i8
  %i.cy = lshr i64 %spec.store.select.i.i104, 15
  %i.cz = trunc nsw i64 %i.cy to i8
  %i.da = lshr i64 %spec.store.select.i.i104, 18
  %i.db = trunc nsw i64 %i.da to i8
  %i.dc = insertelement <4 x i8> poison, i8 %i.db, i64 0
  %i.dd = insertelement <4 x i8> %i.dc, i8 %i.cz, i64 1
  %i.de = insertelement <4 x i8> %i.dd, i8 %i.cx, i64 2
  %i.df = insertelement <4 x i8> %i.de, i8 %i.cv, i64 3
  %i.dg = and <4 x i8> %i.df, <i8 -1, i8 7, i8 7, i8 7>
  %i.dh = or disjoint <4 x i8> %i.dg, splat (i8 48)
  store <4 x i8> %i.dh, ptr %i.ct, align 1, !tbaa !20
  br label %format_number.exit109.thread

format_256.exit.i102:                             ; preds = %format_number.exit.thread
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.dj = bitcast i64 %i.cd to <8 x i8>
  %i.dk = or disjoint <8 x i8> %i.dj, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -128>
  %i.dl = shufflevector <8 x i8> %i.dk, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.dl, ptr %i.di, align 1, !tbaa !20
  br label %format_number.exit109.thread

format_number.exit109.thread:                     ; preds = %bb.q, %format_256.exit.i102
  %i.dm = tail call i64 @archive_entry_size(ptr noundef %2) #11 ; 3 uses
  %i.dn = icmp slt i64 %i.dm, 8589934592
  br i1 %i.dn, label %bb.r, label %format_256.exit.i113

bb.r:                                             ; preds = %format_number.exit109.thread
  %spec.store.select.i.i115 = tail call i64 @llvm.smax.i64(i64 %i.dm, i64 0) ; 8 uses
  %i.do = trunc i64 %spec.store.select.i.i115 to i8
  %i.dp = and i8 %i.do, 7
  %i.dq = or disjoint i8 %i.dp, 48
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 134
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !20
  %i.ds = trunc i64 %spec.store.select.i.i115 to i8
  %i.dt = lshr i8 %i.ds, 3
  %i.du = and i8 %i.dt, 7
  %i.dv = or disjoint i8 %i.du, 48
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 133
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !20
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 125
  %i.dy = insertelement <4 x i64> poison, i64 %spec.store.select.i.i115, i64 0
  %i.dz = shufflevector <4 x i64> %i.dy, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ea = lshr <4 x i64> %i.dz, <i64 15, i64 12, i64 9, i64 6>
  %i.eb = trunc <4 x i64> %i.ea to <4 x i8>
  %i.ec = lshr i64 %spec.store.select.i.i115, 18
  %i.ed = trunc i64 %i.ec to i8
  %i.ee = lshr i64 %spec.store.select.i.i115, 21
  %i.ef = trunc i64 %i.ee to i8
  %i.eg = lshr i64 %spec.store.select.i.i115, 24
  %i.eh = trunc i64 %i.eg to i8
  %i.ei = lshr i64 %spec.store.select.i.i115, 27
  %i.ej = trunc nsw i64 %i.ei to i8
  %i.ek = insertelement <8 x i8> poison, i8 %i.ej, i64 0
  %i.el = insertelement <8 x i8> %i.ek, i8 %i.eh, i64 1
  %i.em = insertelement <8 x i8> %i.el, i8 %i.ef, i64 2
  %i.en = insertelement <8 x i8> %i.em, i8 %i.ed, i64 3
  %i.eo = shufflevector <4 x i8> %i.eb, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ep = shufflevector <8 x i8> %i.en, <8 x i8> %i.eo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.eq = and <8 x i8> %i.ep, splat (i8 7)
  %i.er = or disjoint <8 x i8> %i.eq, splat (i8 48)
  store <8 x i8> %i.er, ptr %i.dx, align 1, !tbaa !20
  %i.es = lshr i64 %spec.store.select.i.i115, 30
  %i.et = trunc nuw nsw i64 %i.es to i8
  %i.eu = or disjoint i8 %i.et, 48
  br label %format_number.exit120.thread

format_256.exit.i113:                             ; preds = %format_number.exit109.thread
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ew = bitcast i64 %i.dm to <8 x i8>
  %i.ex = shufflevector <8 x i8> %i.ew, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.ex, ptr %i.ev, align 1, !tbaa !20
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 127
  store i8 0, ptr %i.ey, align 1, !tbaa !20
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 126
  store i8 0, ptr %i.ez, align 1, !tbaa !20
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 125
  store i8 0, ptr %i.fa, align 1, !tbaa !20
  br label %format_number.exit120.thread

format_number.exit120.thread:                     ; preds = %bb.r, %format_256.exit.i113
  %.sink = phi i8 [ %i.eu, %bb.r ], [ -128, %format_256.exit.i113 ]
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 124
  store i8 %.sink, ptr %i.fb, align 1, !tbaa !20
  %i.fc = tail call i64 @archive_entry_mtime(ptr noundef %2) #11 ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.smax.i64(i64 %i.fc, i64 0) ; 8 uses
  %i.fd = trunc i64 %spec.store.select.i to i8
  %i.fe = and i8 %i.fd, 7
  %i.ff = or disjoint i8 %i.fe, 48
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 146
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !20
  %i.fh = trunc i64 %spec.store.select.i to i8
  %i.fi = lshr i8 %i.fh, 3
  %i.fj = and i8 %i.fi, 7
  %i.fk = or disjoint i8 %i.fj, 48
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 145
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !20
  %i.fm = lshr i64 %spec.store.select.i, 6
  %i.fn = trunc i64 %i.fm to i8
  %i.fo = and i8 %i.fn, 7
  %i.fp = or disjoint i8 %i.fo, 48
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !20
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.fs = insertelement <4 x i64> poison, i64 %spec.store.select.i, i64 0
  %i.ft = shufflevector <4 x i64> %i.fs, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.fu = lshr <4 x i64> %i.ft, <i64 18, i64 15, i64 12, i64 9>
  %i.fv = trunc <4 x i64> %i.fu to <4 x i8>
  %i.fw = lshr i64 %spec.store.select.i, 21
  %i.fx = trunc i64 %i.fw to i8
  %i.fy = lshr i64 %spec.store.select.i, 24
  %i.fz = trunc i64 %i.fy to i8
  %i.ga = lshr i64 %spec.store.select.i, 27
  %i.gb = trunc i64 %i.ga to i8
  %i.gc = lshr i64 %spec.store.select.i, 30
  %i.gd = trunc i64 %i.gc to i8
  %i.ge = insertelement <8 x i8> poison, i8 %i.gd, i64 0
end_hunk_0
