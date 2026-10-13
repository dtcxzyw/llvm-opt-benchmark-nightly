Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_write_set_format_v7tar?download=true
inline.NumInlined: 8
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@archive_write_v7tar_header:bb.a
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.5) #10
  br label %bb.az

bb.f:                                             ; preds = %bb.d
  %i.p = tail call ptr @archive_entry_hardlink(ptr noundef %1) #10
  %.not58 = icmp eq ptr %i.p, null
  br i1 %.not58, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.q = tail call ptr @archive_entry_symlink(ptr noundef %1) #10
  %.not59 = icmp eq ptr %i.q, null
  br i1 %.not59, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = tail call i32 @archive_entry_filetype(ptr noundef %1) #10
  %.not60 = icmp eq i32 %i.r, 32768
  br i1 %.not60, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  tail call void @archive_entry_set_size(ptr noundef %1, i64 noundef 0) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = tail call i32 @archive_entry_filetype(ptr noundef %1) #10
  %i.t = icmp eq i32 %i.s, 16384
  br i1 %i.t, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.u = tail call ptr @archive_entry_pathname(ptr noundef %1) #10 ; 6 uses
  %.not61 = icmp eq ptr %i.u, null
  br i1 %.not61, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = load i8, ptr %i.u, align 1, !tbaa !20
  %.not62 = icmp eq i8 %i.v, 0
  br i1 %.not62, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #12
  %i.x = getelementptr i8, ptr %i.u, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !20
  %.not63 = icmp eq i8 %i.z, 47
  br i1 %.not63, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.aa = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #12 ; 2 uses
  %i.ab = add i64 %i.aa, 2
  %i.ac = call ptr @archive_string_ensure(ptr noundef nonnull %2, i64 noundef %i.ab) #10
  %.not64 = icmp eq ptr %i.ac, null
  br i1 %.not64, label %.thread, label %bb.o

.thread:                                          ; preds = %bb.n
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str.1) #10
  call void @archive_string_free(ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.az

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !36
  %i.ae = call ptr @archive_strncat(ptr noundef nonnull %2, ptr noundef nonnull %i.u, i64 noundef %i.aa) #10 ; 0 uses
  %i.af = call ptr @archive_strappend_char(ptr noundef nonnull %2, i8 noundef signext 47) #10 ; 0 uses
  %i.ag = load ptr, ptr %2, align 8, !tbaa !37
  call void @archive_entry_copy_pathname(ptr noundef %1, ptr noundef %i.ag) #10
  call void @archive_string_free(ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.k, %bb.l, %bb.m, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.d, ptr noundef nonnull align 16 dereferenceable(512) @template_header, i64 512, i1 false)
  %i.ah = call i32 @_archive_entry_pathname_l(ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef %.048) #10
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.u, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.ai = tail call ptr @__errno_location() #13
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !38
  %i.ak = icmp eq i32 %i.aj, 12
  br i1 %i.ak, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str.6) #10
  br label %format_header_v7tar.exit.thread

bb.r:                                             ; preds = %bb.p
  %i.al = call ptr @archive_entry_pathname(ptr noundef %1) #10 ; 2 uses
  %.not81.i = icmp eq ptr %i.al, null
  %i.am = call ptr @archive_string_conversion_charset_name(ptr noundef %.048) #10 ; 2 uses
  br i1 %.not81.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.8, ptr noundef %i.am) #10
  br label %format_header_v7tar.exit.thread

bb.t:                                             ; preds = %bb.r
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.al, ptr noundef %i.am) #10
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.critedge
  %.1.i = phi i32 [ -20, %bb.t ], [ 0, %.critedge ]
  %i.an = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ao = icmp ult i64 %i.an, 100
  br i1 %i.ao, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr align 1 %i.ap, i64 %i.an, i1 false)
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 36, ptr noundef nonnull @.str.9) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.2.i = phi i32 [ %.1.i, %bb.v ], [ -25, %bb.w ]
  %i.aq = call i32 @_archive_entry_hardlink_l(ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %.048) #10
  %.not82.i = icmp eq i32 %i.aq, 0
  br i1 %.not82.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ar = tail call ptr @__errno_location() #13
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !38
  %i.at = icmp eq i32 %i.as, 12
  br i1 %i.at, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str.10) #10
  br label %format_header_v7tar.exit.thread

bb.aa:                                            ; preds = %bb.y
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.av = call ptr @archive_string_conversion_charset_name(ptr noundef %.048) #10
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.11, ptr noundef %i.au, ptr noundef %i.av) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.3.i = phi i32 [ -20, %bb.aa ], [ %.2.i, %bb.x ] ; 2 uses
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %.not83.not.i = icmp eq i64 %i.aw, 0            ; 2 uses
  br i1 %.not83.not.i, label %bb.ac, label %.thread121.i

bb.ac:                                            ; preds = %bb.ab
  %i.ax = call i32 @_archive_entry_symlink_l(ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %.048) #10
  %.not84.i = icmp eq i32 %i.ax, 0
  br i1 %.not84.i, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ay = tail call ptr @__errno_location() #13
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !38
  %i.ba = icmp eq i32 %i.az, 12
  br i1 %i.ba, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str.10) #10
  br label %format_header_v7tar.exit.thread

bb.af:                                            ; preds = %bb.ad
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.bc = call ptr @archive_string_conversion_charset_name(ptr noundef %.048) #10
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.11, ptr noundef %i.bb, ptr noundef %i.bc) #10
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac
  %.4.ph.i = phi i32 [ -20, %bb.af ], [ %.3.i, %bb.ac ] ; 2 uses
  %.pr.i = load i64, ptr %i.a, align 8, !tbaa !40 ; 2 uses
  %.not85.i = icmp eq i64 %.pr.i, 0
  br i1 %.not85.i, label %format_number.exit.thread.i, label %.thread121.i

.thread121.i:                                     ; preds = %bb.ag, %bb.ab
  %.071126.i = phi i8 [ -1, %bb.ag ], [ 49, %bb.ab ]
  %.4125.i = phi i32 [ %.4.ph.i, %bb.ag ], [ %.3.i, %bb.ab ]
  %i.bd = phi i64 [ %.pr.i, %bb.ag ], [ %i.aw, %bb.ab ] ; 2 uses
  %i.be = icmp ugt i64 %i.bd, 99
  br i1 %i.be, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.thread121.i
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 36, ptr noundef nonnull @.str.12) #10
  store i64 100, ptr %i.a, align 8, !tbaa !40
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.thread121.i
  %i.bf = phi i64 [ 100, %bb.ah ], [ %i.bd, %.thread121.i ]
  %.5.i = phi i32 [ -25, %bb.ah ], [ %.4125.i, %.thread121.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 157
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bg, ptr noundef nonnull align 1 dereferenceable(1) %i.bh, i64 %i.bf, i1 false)
  br label %format_number.exit.thread.i

format_number.exit.thread.i:                      ; preds = %bb.ai, %bb.ag
  %.071127.i = phi i8 [ %.071126.i, %bb.ai ], [ -1, %bb.ag ]
  %.6.i = phi i32 [ %.5.i, %bb.ai ], [ %.4.ph.i, %bb.ag ]
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 102
  %4 = call i32 @archive_entry_mode(ptr noundef %1) #10 ; 3 uses
  %i.bi = trunc i32 %4 to i8                      ; 2 uses
  %i.bj = lshr i8 %i.bi, 3
  %i.bk = lshr i32 %4, 6
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = lshr i32 %4, 9
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = insertelement <4 x i8> poison, i8 %i.bn, i64 0
  %i.bp = insertelement <4 x i8> %i.bo, i8 %i.bl, i64 1
  %i.bq = insertelement <4 x i8> %i.bp, i8 %i.bj, i64 2
  %i.br = insertelement <4 x i8> %i.bq, i8 %i.bi, i64 3
  %i.bs = and <4 x i8> %i.br, splat (i8 7)
  %i.bt = or disjoint <4 x i8> %i.bs, splat (i8 48)
  store <4 x i8> %i.bt, ptr %3, align 2, !tbaa !20
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 101
  store i8 48, ptr %i.bu, align 1, !tbaa !20
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  store i8 48, ptr %i.bv, align 4, !tbaa !20
  %i.bw = call i64 @archive_entry_uid(ptr noundef %1) #10 ; 7 uses
  %i.bx = icmp slt i64 %i.bw, 0
  br i1 %i.bx, label %.preheader.preheader.i.i.i, label %bb.aj

.preheader.preheader.i.i.i:                       ; preds = %format_number.exit.thread.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.by, i8 48, i64 6, i1 false), !tbaa !20
  br label %bb.ak

bb.aj:                                            ; preds = %format_number.exit.thread.i
  %i.bz = trunc i64 %i.bw to i8                   ; 2 uses
  %i.ca = and i8 %i.bz, 7
  %i.cb = or disjoint i8 %i.ca, 48
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 113
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !20
  %i.cd = lshr i8 %i.bz, 3
  %i.ce = and i8 %i.cd, 7
  %i.cf = or disjoint i8 %i.ce, 48
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i8 %i.cf, ptr %i.cg, align 16, !tbaa !20
  %i.ch = lshr i64 %i.bw, 6
  %i.ci = lshr i64 %i.bw, 9
  %i.cj = lshr i64 %i.bw, 12
  %i.ck = lshr i64 %i.bw, 15
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 108 ; 2 uses
  %i.cm = trunc i64 %i.ch to i8
  %i.cn = trunc i64 %i.ci to i8
  %i.co = trunc i64 %i.cj to i8
  %i.cp = trunc i64 %i.ck to i8
  %i.cq = insertelement <4 x i8> poison, i8 %i.cp, i64 0
  %i.cr = insertelement <4 x i8> %i.cq, i8 %i.co, i64 1
  %i.cs = insertelement <4 x i8> %i.cr, i8 %i.cn, i64 2
  %i.ct = insertelement <4 x i8> %i.cs, i8 %i.cm, i64 3
  %i.cu = and <4 x i8> %i.ct, splat (i8 7)
  %i.cv = or disjoint <4 x i8> %i.cu, splat (i8 48)
  store <4 x i8> %i.cv, ptr %i.cl, align 4, !tbaa !20
  %i.cw = icmp samesign ult i64 %i.bw, 262144
  br i1 %i.cw, label %format_number.exit96.i, label %.preheader19.preheader.i.i94.i

.preheader19.preheader.i.i94.i:                   ; preds = %bb.aj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.cl, i8 55, i64 6, i1 false), !tbaa !20
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader19.preheader.i.i94.i, %.preheader.preheader.i.i.i
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 34, ptr noundef nonnull @.str.14) #10
  br label %format_number.exit96.i

format_number.exit96.i:                           ; preds = %bb.ak, %bb.aj
  %.8.i = phi i32 [ -25, %bb.ak ], [ %.6.i, %bb.aj ]
  %i.cx = call i64 @archive_entry_gid(ptr noundef %1) #10 ; 7 uses
  %i.cy = icmp slt i64 %i.cx, 0
  br i1 %i.cy, label %.preheader.preheader.i.i102.i, label %bb.al

.preheader.preheader.i.i102.i:                    ; preds = %format_number.exit96.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.cz, i8 48, i64 6, i1 false), !tbaa !20
  br label %bb.am

bb.al:                                            ; preds = %format_number.exit96.i
  %i.da = trunc i64 %i.cx to i8                   ; 2 uses
  %i.db = and i8 %i.da, 7
  %i.dc = or disjoint i8 %i.db, 48
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 121
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !20
  %i.de = lshr i8 %i.da, 3
  %i.df = and i8 %i.de, 7
  %i.dg = or disjoint i8 %i.df, 48
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i8 %i.dg, ptr %i.dh, align 8, !tbaa !20
  %i.di = lshr i64 %i.cx, 6
  %i.dj = lshr i64 %i.cx, 9
  %i.dk = lshr i64 %i.cx, 12
  %i.dl = lshr i64 %i.cx, 15
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 116 ; 2 uses
  %i.dn = trunc i64 %i.di to i8
  %i.do = trunc i64 %i.dj to i8
  %i.dp = trunc i64 %i.dk to i8
  %i.dq = trunc i64 %i.dl to i8
  %i.dr = insertelement <4 x i8> poison, i8 %i.dq, i64 0
  %i.ds = insertelement <4 x i8> %i.dr, i8 %i.dp, i64 1
  %i.dt = insertelement <4 x i8> %i.ds, i8 %i.do, i64 2
  %i.du = insertelement <4 x i8> %i.dt, i8 %i.dn, i64 3
  %i.dv = and <4 x i8> %i.du, splat (i8 7)
  %i.dw = or disjoint <4 x i8> %i.dv, splat (i8 48)
  store <4 x i8> %i.dw, ptr %i.dm, align 4, !tbaa !20
  %i.dx = icmp samesign ult i64 %i.cx, 262144
  br i1 %i.dx, label %format_number.exit103.i, label %.preheader19.preheader.i.i100.i

.preheader19.preheader.i.i100.i:                  ; preds = %bb.al
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.dm, i8 55, i64 6, i1 false), !tbaa !20
  br label %bb.am

bb.am:                                            ; preds = %.preheader19.preheader.i.i100.i, %.preheader.preheader.i.i102.i
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 34, ptr noundef nonnull @.str.15) #10
  br label %format_number.exit103.i

format_number.exit103.i:                          ; preds = %bb.am, %bb.al
  %.9.i = phi i32 [ -25, %bb.am ], [ %.8.i, %bb.al ]
  %i.dy = call i64 @archive_entry_size(ptr noundef %1) #10 ; 9 uses
  %i.dz = icmp slt i64 %i.dy, 0
  br i1 %i.dz, label %.preheader.preheader.i.i109.i, label %bb.an

.preheader.preheader.i.i109.i:                    ; preds = %format_number.exit103.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.ea, i8 48, i64 11, i1 false), !tbaa !20
  br label %bb.ao

bb.an:                                            ; preds = %format_number.exit103.i
  %i.eb = trunc i64 %i.dy to i8                   ; 2 uses
  %i.ec = and i8 %i.eb, 7
  %i.ed = or disjoint i8 %i.ec, 48
  %i.ee = getelementptr inbounds nuw i8, ptr %i.d, i64 134
  store i8 %i.ed, ptr %i.ee, align 2, !tbaa !20
  %i.ef = lshr i8 %i.eb, 3
  %i.eg = and i8 %i.ef, 7
  %i.eh = or disjoint i8 %i.eg, 48
  %i.ei = getelementptr inbounds nuw i8, ptr %i.d, i64 133
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !20
  %i.ej = lshr i64 %i.dy, 6
  %i.ek = trunc i64 %i.ej to i8
  %i.el = and i8 %i.ek, 7
  %i.em = or disjoint i8 %i.el, 48
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 132
  store i8 %i.em, ptr %i.en, align 4, !tbaa !20
  %i.eo = insertelement <4 x i64> poison, i64 %i.dy, i64 0
  %i.ep = shufflevector <4 x i64> %i.eo, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.eq = lshr <4 x i64> %i.ep, <i64 18, i64 15, i64 12, i64 9>
  %i.er = lshr i64 %i.dy, 21
  %i.es = lshr i64 %i.dy, 24
  %i.et = lshr i64 %i.dy, 27
  %i.eu = lshr i64 %i.dy, 30
  %i.ev = getelementptr inbounds nuw i8, ptr %i.d, i64 124 ; 2 uses
  %i.ew = trunc <4 x i64> %i.eq to <4 x i8>
  %i.ex = trunc i64 %i.er to i8
  %i.ey = trunc i64 %i.es to i8
  %i.ez = trunc i64 %i.et to i8
  %i.fa = trunc i64 %i.eu to i8
  %i.fb = insertelement <8 x i8> poison, i8 %i.fa, i64 0
  %i.fc = insertelement <8 x i8> %i.fb, i8 %i.ez, i64 1
  %i.fd = insertelement <8 x i8> %i.fc, i8 %i.ey, i64 2
  %i.fe = insertelement <8 x i8> %i.fd, i8 %i.ex, i64 3
  %i.ff = shufflevector <4 x i8> %i.ew, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fg = shufflevector <8 x i8> %i.fe, <8 x i8> %i.ff, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fh = and <8 x i8> %i.fg, splat (i8 7)
  %i.fi = or disjoint <8 x i8> %i.fh, splat (i8 48)
  store <8 x i8> %i.fi, ptr %i.ev, align 4, !tbaa !20
  %i.fj = icmp samesign ult i64 %i.dy, 8589934592
  br i1 %i.fj, label %format_number.exit110.i, label %.preheader19.preheader.i.i107.i

.preheader19.preheader.i.i107.i:                  ; preds = %bb.an
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.ev, i8 55, i64 11, i1 false), !tbaa !20
  br label %bb.ao

bb.ao:                                            ; preds = %.preheader19.preheader.i.i107.i, %.preheader.preheader.i.i109.i
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 34, ptr noundef nonnull @.str.16) #10
  br label %format_number.exit110.i

format_number.exit110.i:                          ; preds = %bb.ao, %bb.an
  %.10.i = phi i32 [ -25, %bb.ao ], [ %.9.i, %bb.an ]
  %i.fk = call i64 @archive_entry_mtime(ptr noundef %1) #10 ; 9 uses
  %i.fl = icmp slt i64 %i.fk, 0
  br i1 %i.fl, label %.preheader.preheader.i.i116.i, label %bb.ap

.preheader.preheader.i.i116.i:                    ; preds = %format_number.exit110.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.fm, i8 48, i64 11, i1 false), !tbaa !20
  br label %bb.aq

bb.ap:                                            ; preds = %format_number.exit110.i
  %i.fn = trunc i64 %i.fk to i8                   ; 2 uses
  %i.fo = and i8 %i.fn, 7
  %i.fp = or disjoint i8 %i.fo, 48
  %i.fq = getelementptr inbounds nuw i8, ptr %i.d, i64 146
  store i8 %i.fp, ptr %i.fq, align 2, !tbaa !20
  %i.fr = lshr i8 %i.fn, 3
  %i.fs = and i8 %i.fr, 7
  %i.ft = or disjoint i8 %i.fs, 48
  %i.fu = getelementptr inbounds nuw i8, ptr %i.d, i64 145
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !20
  %i.fv = lshr i64 %i.fk, 6
  %i.fw = trunc i64 %i.fv to i8
  %i.fx = and i8 %i.fw, 7
  %i.fy = or disjoint i8 %i.fx, 48
  %i.fz = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store i8 %i.fy, ptr %i.fz, align 16, !tbaa !20
  %i.ga = insertelement <4 x i64> poison, i64 %i.fk, i64 0
  %i.gb = shufflevector <4 x i64> %i.ga, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.gc = lshr <4 x i64> %i.gb, <i64 18, i64 15, i64 12, i64 9>
  %i.gd = lshr i64 %i.fk, 21
  %i.ge = lshr i64 %i.fk, 24
  %i.gf = lshr i64 %i.fk, 27
  %i.gg = lshr i64 %i.fk, 30
  %i.gh = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 2 uses
  %i.gi = trunc <4 x i64> %i.gc to <4 x i8>
  %i.gj = trunc i64 %i.gd to i8
  %i.gk = trunc i64 %i.ge to i8
end_hunk_0
