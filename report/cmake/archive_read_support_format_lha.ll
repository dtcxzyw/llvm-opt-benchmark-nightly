Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_lha?download=true
inline.NumInlined: 100
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@lha_replace_path_separator:bb.a

pred.store.continue80:                            ; preds = %pred.store.if79, %pred.store.continue78
  %i.bl = extractelement <4 x i1> %i.au, i64 2
  br i1 %i.bl, label %pred.store.if81, label %pred.store.continue82

pred.store.if81:                                  ; preds = %pred.store.continue80
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.pre40, i64 %index66
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i32 47, ptr %i.bn, align 4, !tbaa !92
  br label %pred.store.continue82

pred.store.continue82:                            ; preds = %pred.store.if81, %pred.store.continue80
  %i.bo = extractelement <4 x i1> %i.au, i64 3
  br i1 %i.bo, label %pred.store.if83, label %pred.store.continue84

pred.store.if83:                                  ; preds = %pred.store.continue82
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.pre40, i64 %index66
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 28
  store i32 47, ptr %i.bq, align 4, !tbaa !92
  br label %pred.store.continue84

pred.store.continue84:                            ; preds = %pred.store.if83, %pred.store.continue82
  %index.next85 = add nuw i64 %index66, 8         ; 2 uses
  %i.br = icmp eq i64 %index.next85, %n.vec64
  br i1 %i.br, label %middle.block86, label %vector.body65, !llvm.loop !167

middle.block86:                                   ; preds = %pred.store.continue84
  %cmp.n87 = icmp eq i64 %i.aq, %n.vec64
  br i1 %cmp.n87, label %._crit_edge36, label %.lr.ph35.preheader89

.lr.ph35.preheader89:                             ; preds = %.lr.ph35.preheader, %middle.block86
  %.133.ph = phi i64 [ 0, %.lr.ph35.preheader ], [ %n.vec64, %middle.block86 ]
  br label %.lr.ph35

.lr.ph35:                                         ; preds = %.lr.ph35.preheader89, %bb.h
  %.133 = phi i64 [ %i.bv, %bb.h ], [ %.133.ph, %.lr.ph35.preheader89 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.pre40, i64 %.133 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !92
  %i.bu = icmp eq i32 %i.bt, 92
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph35
  store i32 47, ptr %i.bs, align 4, !tbaa !92
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph35, %bb.g
  %i.bv = add nuw i64 %.133, 1                    ; 2 uses
  %exitcond39.not = icmp eq i64 %i.bv, %i.aq
  br i1 %exitcond39.not, label %._crit_edge36, label %.lr.ph35, !llvm.loop !168

._crit_edge36:                                    ; preds = %bb.h, %middle.block86, %bb.f
  tail call void @archive_entry_copy_symlink_w(ptr noundef %1, ptr noundef %.pre40) #16
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge36, %bb.e
  ret void
}

declare void @archive_entry_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @archive_entry_set_uid(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_gid(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_uname(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @archive_entry_set_gname(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @archive_entry_set_birthtime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_ctime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_unset_birthtime(ptr noundef) local_unnamed_addr #2

declare void @archive_entry_unset_ctime(ptr noundef) local_unnamed_addr #2

declare void @archive_entry_set_mtime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_atime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_unset_atime(ptr noundef) local_unnamed_addr #2

declare ptr @archive_entry_symlink(ptr noundef) local_unnamed_addr #2

declare void @archive_entry_unset_size(ptr noundef) local_unnamed_addr #2

declare void @archive_entry_set_size(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

declare i64 @__archive_read_consume(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @dos_to_unix(i32 noundef) local_unnamed_addr #2

declare ptr @archive_strncat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @lha_read_file_extended_header(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef range(i32 2, 5) %3, i64 noundef %4, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.archive_string, align 8     ; 7 uses
  %i.a = zext nneg i32 %3 to i64                  ; 7 uses
  store i64 %i.a, ptr %5, align 8, !tbaa !13
  %i.b = tail call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef %i.a, ptr noundef null) #16 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %._crit_edge282, label %.lr.ph281

.lr.ph281:                                        ; preds = %bb.a
  %i.d = icmp eq i32 %3, 2
  %i.e = add nuw nsw i32 %3, 1
  %i.f = zext nneg i32 %i.e to i64                ; 9 uses
  %i.g = icmp ne ptr %2, null                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.af = and i64 ptrtoint (ptr @lha_read_file_extended_header.zeros to i64), 1
  %.not.i.not = icmp eq i64 %i.af, 0              ; 2 uses
  br label %bb.b

._crit_edge282:                                   ; preds = %bb.bl, %bb.a
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.14) #16
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph281, %bb.bl
  %i.ag = phi ptr [ %i.b, %.lr.ph281 ], [ %i.jk, %bb.bl ] ; 3 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val251 = load i16, ptr %i.ag, align 1
  %i.ah = zext i16 %.val251 to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ai = load i32, ptr %i.ag, align 1
  %i.aj = zext i32 %i.ai to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0205 = phi i64 [ %i.ah, %bb.c ], [ %i.aj, %bb.d ] ; 14 uses
  %i.ak = icmp eq i64 %.0205, 0
  br i1 %i.ak, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not228 = icmp eq ptr %2, null
  br i1 %.not228, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load i16, ptr %2, align 2, !tbaa !41
  %i.am = call fastcc zeroext i16 @lha_crc16(i16 noundef zeroext %i.al, ptr noundef nonnull %i.ag, i64 noundef %i.a)
  store i16 %i.am, ptr %2, align 2, !tbaa !41
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.an = call i64 @__archive_read_consume(ptr noundef %0, i64 noundef %i.a) #16 ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.e
  %i.ao = load i64, ptr %5, align 8, !tbaa !13
  %i.ap = add i64 %i.ao, %.0205
  %i.aq = icmp ule i64 %i.ap, %4
  %.not = icmp samesign ugt i64 %.0205, %i.a
  %or.cond229 = select i1 %i.aq, i1 %.not, i1 false
  br i1 %or.cond229, label %bb.j, label %bb.bm

bb.j:                                             ; preds = %bb.i
  %i.ar = call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef %.0205, ptr noundef null) #16 ; 5 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.14) #16
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.at = load i64, ptr %5, align 8, !tbaa !13
  %i.au = add i64 %i.at, %.0205
  store i64 %i.au, ptr %5, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.a
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !10  ; 2 uses
  %i.ax = sub nuw nsw i64 %.0205, %i.f            ; 19 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f ; 36 uses
  %i.az = icmp ne i8 %i.aw, 0
  %or.cond = select i1 %i.g, i1 %i.az, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ba = load i16, ptr %2, align 2, !tbaa !41
  %i.bb = call fastcc zeroext i16 @lha_crc16(i16 noundef zeroext %i.ba, ptr noundef nonnull %i.ar, i64 noundef %.0205)
  store i16 %i.bb, ptr %2, align 2, !tbaa !41
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  switch i8 %i.aw, label %bb.bl [
    i8 0, label %bb.o
    i8 1, label %bb.s
    i8 68, label %bb.w
    i8 2, label %bb.ab
    i8 69, label %bb.ag
    i8 64, label %bb.am
    i8 65, label %bb.ao
    i8 66, label %bb.aq
    i8 70, label %bb.as
    i8 80, label %bb.ax
    i8 81, label %bb.az
    i8 82, label %bb.bb
    i8 83, label %bb.bd
    i8 84, label %bb.bf
    i8 127, label %bb.bh
    i8 -1, label %bb.bj
  ]

bb.o:                                             ; preds = %bb.n
  %i.bc = icmp samesign ugt i64 %i.ax, 1
  br i1 %i.bc, label %bb.p, label %bb.bl

bb.p:                                             ; preds = %bb.o
  %.val249 = load i16, ptr %i.ay, align 1
  store i16 %.val249, ptr %i.ae, align 8, !tbaa !64
  br i1 %i.g, label %bb.q, label %bb.bl

bb.q:                                             ; preds = %bb.p
  %i.bd = load i16, ptr %2, align 2, !tbaa !41
  %i.be = call fastcc zeroext i16 @lha_crc16(i16 noundef zeroext %i.bd, ptr noundef nonnull %i.ar, i64 noundef %i.f) ; 3 uses
  br i1 %.not.i.not, label %.lr.ph73.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = lshr i16 %i.be, 8
  %i.bg = and i16 %i.be, 255
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr @crc16tbl, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !41
  %i.bk = xor i16 %i.bj, %i.bf
  br label %.lr.ph73.i

.lr.ph73.i:                                       ; preds = %bb.q, %bb.r
  %.15072.i.ph = phi ptr [ @lha_read_file_extended_header.zeros, %bb.q ], [ getelementptr inbounds nuw (i8, ptr @lha_read_file_extended_header.zeros, i64 1), %bb.r ] ; 2 uses
  %.670.i.ph = phi i16 [ %i.be, %bb.q ], [ %i.bk, %bb.r ] ; 2 uses
  %i.bl = lshr i16 %.670.i.ph, 8
  %i.bm = load i8, ptr %.15072.i.ph, align 1, !tbaa !10
  %.tr62.i = trunc i16 %.670.i.ph to i8
  %.narrow63.i = xor i8 %i.bm, %.tr62.i
  %i.bn = zext i8 %.narrow63.i to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr @crc16tbl, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !41 ; 2 uses
  %i.bq = xor i16 %i.bp, %i.bl                    ; 2 uses
  br i1 %.not.i.not, label %.lr.ph73.i.1, label %lha_crc16.exit

.lr.ph73.i.1:                                     ; preds = %.lr.ph73.i
  %i.br = getelementptr inbounds nuw i8, ptr %.15072.i.ph, i64 1
  %i.bs = lshr i16 %i.bp, 8
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !10
  %.tr62.i.1 = trunc i16 %i.bq to i8
  %.narrow63.i.1 = xor i8 %i.bt, %.tr62.i.1
  %i.bu = zext i8 %.narrow63.i.1 to i64
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr @crc16tbl, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !41
  %i.bx = xor i16 %i.bw, %i.bs
  br label %lha_crc16.exit

lha_crc16.exit:                                   ; preds = %.lr.ph73.i.1, %.lr.ph73.i
  %.lcssa364 = phi i16 [ %i.bq, %.lr.ph73.i ], [ %i.bx, %.lr.ph73.i.1 ] ; 2 uses
  store i16 %.lcssa364, ptr %2, align 2, !tbaa !41
  %i.by = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.bz = add nsw i64 %i.ax, -2
  %i.ca = call fastcc zeroext i16 @lha_crc16(i16 noundef zeroext %.lcssa364, ptr noundef nonnull %i.by, i64 noundef %i.bz)
  store i16 %i.ca, ptr %2, align 2, !tbaa !41
  br label %bb.bl

bb.s:                                             ; preds = %bb.n
  %i.cb = icmp eq i64 %.0205, %i.f
  br i1 %i.cb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i64 0, ptr %i.ad, align 8, !tbaa !54
  br label %bb.bl

bb.u:                                             ; preds = %bb.s
  %i.cc = load i8, ptr %i.ay, align 1, !tbaa !10
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.bm, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 0, ptr %i.ad, align 8, !tbaa !54
  %i.ce = call ptr @archive_strncat(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ay, i64 noundef %i.ax) #16 ; 0 uses
  br label %bb.bl

bb.w:                                             ; preds = %bb.n
  %i.cf = icmp eq i64 %.0205, %i.f
  br i1 %i.cf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i64 0, ptr %i.ad, align 8, !tbaa !54
  br label %bb.bl

bb.y:                                             ; preds = %bb.w
  %i.cg = and i64 %i.ax, 1
  %.not227 = icmp eq i64 %i.cg, 0
  br i1 %.not227, label %bb.z, label %bb.bm

bb.z:                                             ; preds = %bb.y
  %i.ch = load i8, ptr %i.ay, align 1, !tbaa !10
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.bm, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i64 0, ptr %i.ad, align 8, !tbaa !54
  %i.cj = call ptr @archive_array_append(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ay, i64 noundef %i.ax) #16 ; 0 uses
  %i.ck = call ptr @archive_string_conversion_from_charset(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef 1) #16 ; 2 uses
  store ptr %i.ck, ptr %i.u, align 8, !tbaa !57
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %.loopexit, label %bb.bl

bb.ab:                                            ; preds = %bb.n
  %i.cm = icmp eq i64 %.0205, %i.f
  br i1 %i.cm, label %bb.bm, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cn = load i8, ptr %i.ay, align 1, !tbaa !10
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.bm, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i64 0, ptr %i.ab, align 8, !tbaa !53
  %i.cp = call ptr @archive_strncat(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ay, i64 noundef %i.ax) #16 ; 0 uses
  %i.cq = load i64, ptr %i.ab, align 8, !tbaa !53 ; 2 uses
  %.not284 = icmp eq i64 %i.cq, 0
  br i1 %.not284, label %._crit_edge278, label %.lr.ph277

.lr.ph277:                                        ; preds = %bb.ad, %bb.af
  %i.cr = phi i64 [ %i.cx, %bb.af ], [ %i.cq, %bb.ad ]
  %i.cs = phi i64 [ %i.cz, %bb.af ], [ 0, %bb.ad ]
  %.0203275 = phi i32 [ %i.cy, %bb.af ], [ 0, %bb.ad ]
  %i.ct = load ptr, ptr %i.aa, align 8, !tbaa !65
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cs ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !10
  %i.cw = icmp eq i8 %i.cv, -1
  br i1 %i.cw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph277
  store i8 47, ptr %i.cu, align 1, !tbaa !10
  %.pre = load i64, ptr %i.ab, align 8, !tbaa !53
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph277, %bb.ae
  %i.cx = phi i64 [ %i.cr, %.lr.ph277 ], [ %.pre, %bb.ae ] ; 3 uses
  %i.cy = add i32 %.0203275, 1                    ; 2 uses
  %i.cz = zext i32 %i.cy to i64                   ; 2 uses
  %i.da = icmp ugt i64 %i.cx, %i.cz
  br i1 %i.da, label %.lr.ph277, label %._crit_edge278, !llvm.loop !171

._crit_edge278:                                   ; preds = %bb.af, %bb.ad
  %.lcssa266 = phi i64 [ 0, %bb.ad ], [ %i.cx, %bb.af ]
  %i.db = load ptr, ptr %i.aa, align 8, !tbaa !65
  %i.dc = getelementptr i8, ptr %i.db, i64 %.lcssa266
  %i.dd = getelementptr i8, ptr %i.dc, i64 -1
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !10
  %.not226 = icmp eq i8 %i.de, 47
  br i1 %.not226, label %bb.bl, label %bb.bm

bb.ag:                                            ; preds = %bb.n
  %i.df = icmp ne i64 %.0205, %i.f
  %i.dg = and i64 %i.ax, 1
  %.not224 = icmp eq i64 %i.dg, 0
  %or.cond230 = select i1 %i.df, i1 %.not224, i1 false
  br i1 %or.cond230, label %bb.ah, label %bb.bm

bb.ah:                                            ; preds = %bb.ag
  %i.dh = load i8, ptr %i.ay, align 1, !tbaa !10
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %bb.bm, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i64 0, ptr %i.ab, align 8, !tbaa !53
  %i.dj = call ptr @archive_array_append(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ay, i64 noundef %i.ax) #16 ; 0 uses
  %i.dk = call ptr @archive_string_conversion_from_charset(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef 1) #16 ; 2 uses
  store ptr %i.dk, ptr %i.t, align 8, !tbaa !56
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dm = load ptr, ptr %i.aa, align 8, !tbaa !65 ; 22 uses
  %i.dn = load i64, ptr %i.ab, align 8, !tbaa !53 ; 4 uses
  %i.do = lshr i64 %i.dn, 1                       ; 8 uses
  %.not283 = icmp eq i64 %i.do, 0
  br i1 %.not283, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.aj
  %min.iters.check = icmp ult i64 %i.dn, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dp = add nsw i64 %i.do, -1                   ; 2 uses
  %i.dq = and i64 %i.dp, 4294967295
  %i.dr = icmp eq i64 %i.dq, 4294967295
  %i.ds = icmp ugt i64 %i.dp, 4294967295
  %i.dt = or i1 %i.dr, %i.ds
  br i1 %i.dt, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check319 = icmp ult i64 %i.dn, 32
  br i1 %min.iters.check319, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.do, 8589934576              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue350, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue350 ] ; 17 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %index ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %wide.load = load <8 x i16>, ptr %i.du, align 2, !tbaa !41
  %wide.load320 = load <8 x i16>, ptr %i.dv, align 2, !tbaa !41
  %i.dw = icmp eq <8 x i16> %wide.load, splat (i16 -1) ; 8 uses
end_hunk_0
