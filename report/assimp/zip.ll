Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/zip?download=true
inline.NumInlined: 193
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 56
begin_hunk_0_@zip_entry_header_offset:bb.a
  %i.c = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define range(i32 -12, 1) i32 @zip_entry_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #9 !guid !291 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne ptr %1, null
  %i.c = icmp ne i64 %2, 0
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, %2
  store i64 %i.f, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = xor i32 %i.h, -1                         ; 2 uses
  %i.j = icmp ugt i64 %2, 3
  br i1 %i.j, label %.lr.ph.i, label %.lr.ph42.i.preheader

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not38.i = icmp eq i64 %i.av, 0
  br i1 %.not38.i, label %mz_crc32.exit, label %.lr.ph42.i.preheader

.lr.ph42.i.preheader:                             ; preds = %bb.c, %.preheader.i
  %.141.i.ph = phi ptr [ %1, %bb.c ], [ %i.au, %.preheader.i ] ; 3 uses
  %.12440.i.ph = phi i32 [ %i.i, %bb.c ], [ %i.at, %.preheader.i ] ; 3 uses
  %.12639.i.ph = phi i64 [ %2, %bb.c ], [ %i.av, %.preheader.i ] ; 4 uses
  %xtraiter = and i64 %.12639.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph42.i.prol.loopexit, label %.lr.ph42.i.prol

.lr.ph42.i.prol:                                  ; preds = %.lr.ph42.i.preheader
  %i.k = lshr i32 %.12440.i.ph, 8
  %i.l = load i8, ptr %.141.i.ph, align 1
  %.124.tr.i.prol = trunc i32 %.12440.i.ph to i8
  %.narrow.i.prol = xor i8 %i.l, %.124.tr.i.prol
  %i.m = zext i8 %.narrow.i.prol to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4
  %i.p = xor i32 %i.o, %i.k                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.141.i.ph, i64 1
  %i.r = add nsw i64 %.12639.i.ph, -1
  br label %.lr.ph42.i.prol.loopexit

.lr.ph42.i.prol.loopexit:                         ; preds = %.lr.ph42.i.prol, %.lr.ph42.i.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph42.i.preheader ], [ %i.p, %.lr.ph42.i.prol ]
  %.141.i.unr = phi ptr [ %.141.i.ph, %.lr.ph42.i.preheader ], [ %i.q, %.lr.ph42.i.prol ]
  %.12440.i.unr = phi i32 [ %.12440.i.ph, %.lr.ph42.i.preheader ], [ %i.p, %.lr.ph42.i.prol ]
  %.12639.i.unr = phi i64 [ %.12639.i.ph, %.lr.ph42.i.preheader ], [ %i.r, %.lr.ph42.i.prol ]
  %i.s = icmp eq i64 %.12639.i.ph, 1
  br i1 %i.s, label %mz_crc32.exit, label %.lr.ph42.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.035.i = phi ptr [ %i.au, %.lr.ph.i ], [ %1, %bb.c ] ; 5 uses
  %.02334.i = phi i32 [ %i.at, %.lr.ph.i ], [ %i.i, %bb.c ] ; 2 uses
  %.02533.i = phi i64 [ %i.av, %.lr.ph.i ], [ %2, %bb.c ]
  %i.t = lshr i32 %.02334.i, 8
  %i.u = load i8, ptr %.035.i, align 1
  %.023.tr.i = trunc i32 %.02334.i to i8
  %.narrow27.i = xor i8 %i.u, %.023.tr.i
  %i.v = zext i8 %.narrow27.i to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4
  %i.y = xor i32 %i.x, %i.t                       ; 2 uses
  %i.z = lshr i32 %i.y, 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.035.i, i64 1
  %i.ab = load i8, ptr %i.aa, align 1
  %.tr.i = trunc i32 %i.y to i8
  %.narrow28.i = xor i8 %i.ab, %.tr.i
  %i.ac = zext i8 %.narrow28.i to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = xor i32 %i.z, %i.ae                     ; 2 uses
  %i.ag = lshr i32 %i.af, 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.035.i, i64 2
  %i.ai = load i8, ptr %i.ah, align 1
  %.tr29.i = trunc i32 %i.af to i8
  %.narrow30.i = xor i8 %i.ai, %.tr29.i
  %i.aj = zext i8 %.narrow30.i to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = xor i32 %i.ag, %i.al                    ; 2 uses
  %i.an = lshr i32 %i.am, 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.035.i, i64 3
  %i.ap = load i8, ptr %i.ao, align 1
  %.tr31.i = trunc i32 %i.am to i8
  %.narrow32.i = xor i8 %i.ap, %.tr31.i
  %i.aq = zext i8 %.narrow32.i to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = xor i32 %i.an, %i.as                    ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.035.i, i64 4 ; 2 uses
  %i.av = add i64 %.02533.i, -4                   ; 4 uses
  %i.aw = icmp ugt i64 %i.av, 3
  br i1 %i.aw, label %.lr.ph.i, label %.preheader.i

.lr.ph42.i:                                       ; preds = %.lr.ph42.i.prol.loopexit, %.lr.ph42.i
  %.141.i = phi ptr [ %i.bk, %.lr.ph42.i ], [ %.141.i.unr, %.lr.ph42.i.prol.loopexit ] ; 3 uses
  %.12440.i = phi i32 [ %i.bj, %.lr.ph42.i ], [ %.12440.i.unr, %.lr.ph42.i.prol.loopexit ] ; 2 uses
  %.12639.i = phi i64 [ %i.bl, %.lr.ph42.i ], [ %.12639.i.unr, %.lr.ph42.i.prol.loopexit ]
  %i.ax = lshr i32 %.12440.i, 8
  %i.ay = load i8, ptr %.141.i, align 1
  %.124.tr.i = trunc i32 %.12440.i to i8
  %.narrow.i = xor i8 %i.ay, %.124.tr.i
  %i.az = zext i8 %.narrow.i to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = xor i32 %i.bb, %i.ax                    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.141.i, i64 1
  %i.be = lshr i32 %i.bc, 8
  %i.bf = load i8, ptr %i.bd, align 1
  %.124.tr.i.1 = trunc i32 %i.bc to i8
  %.narrow.i.1 = xor i8 %i.bf, %.124.tr.i.1
  %i.bg = zext i8 %.narrow.i.1 to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = xor i32 %i.bi, %i.be                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.141.i, i64 2
  %i.bl = add nsw i64 %.12639.i, -2               ; 2 uses
  %.not.i.1 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.1, label %mz_crc32.exit, label %.lr.ph42.i

mz_crc32.exit:                                    ; preds = %.lr.ph42.i.prol.loopexit, %.lr.ph42.i, %.preheader.i
  %.124.lcssa.i = phi i32 [ %i.at, %.preheader.i ], [ %.lcssa.unr, %.lr.ph42.i.prol.loopexit ], [ %i.bj, %.lr.ph42.i ]
  %i.bm = xor i32 %.124.lcssa.i, -1
  store i32 %i.bm, ptr %i.g, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = and i32 %i.bo, 15
  %.not33 = icmp eq i32 %i.bp, 0
  br i1 %.not33, label %bb.d, label %bb.f

bb.d:                                             ; preds = %mz_crc32.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = tail call i64 %i.br(ptr noundef %i.bt, i64 noundef %i.bv, ptr noundef nonnull %1, i64 noundef %2) #36
  %.not34 = icmp eq i64 %i.bw, %2
  br i1 %.not34, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.bx = load i64, ptr %i.bu, align 8
  %i.by = add i64 %i.bx, %2
  store i64 %i.by, ptr %i.bu, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = add i64 %i.ca, %2
  store i64 %i.cb, ptr %i.bz, align 8
  br label %bb.g

bb.f:                                             ; preds = %mz_crc32.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8
  %i.cd = call i32 @tdefl_compress(ptr noundef nonnull %i.cc, ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %or.cond3 = icmp ugt i32 %i.cd, 1
  br i1 %or.cond3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.a, %bb.g
  %.0 = phi i32 [ -8, %bb.d ], [ 0, %bb.g ], [ -1, %bb.a ], [ -12, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -16, 1) i32 @zip_entry_fwrite(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 !guid !292 {
bb.a:
  %i.a = alloca [65536 x i8], align 16            ; 5 uses
  %2 = alloca %struct.stat, align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) %i.a, i8 0, i64 65536, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %2, i8 0, i64 144, i1 false)
  %i.b = call i32 @stat(ptr noundef %1, ptr noundef nonnull %2) #36
  %.not23 = icmp eq i32 %i.b, 0
  br i1 %.not23, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = trunc i32 %i.d to i16                    ; 2 uses
  %i.f = and i16 %i.e, 4095
  %i.g = and i32 %i.d, 61440                      ; 7 uses
  %i.h = icmp eq i32 %i.g, 16384                  ; 2 uses
  %spec.select = select i1 %i.h, i16 %i.e, i16 %i.f ; 2 uses
  %i.i = icmp eq i32 %i.g, 32768
  %i.j = or i16 %spec.select, -32768
  %.1 = select i1 %i.i, i16 %i.j, i16 %spec.select ; 2 uses
  %i.k = icmp eq i32 %i.g, 40960
  %i.l = or i16 %.1, -24576
  %.2 = select i1 %i.k, i16 %i.l, i16 %.1         ; 2 uses
  %i.m = icmp eq i32 %i.g, 24576
  %i.n = or i16 %.2, 24576
  %.3 = select i1 %i.m, i16 %i.n, i16 %.2         ; 2 uses
  %i.o = icmp eq i32 %i.g, 8192
  %i.p = or i16 %.3, 8192
  %.4 = select i1 %i.o, i16 %i.p, i16 %.3         ; 2 uses
  %i.q = icmp eq i32 %i.g, 4096
  %i.r = or i16 %.4, 4096
  %.5 = select i1 %i.q, i16 %i.r, i16 %.4         ; 2 uses
  %i.s = icmp eq i32 %i.g, 49152
  %i.t = or i16 %.5, -16384
  %.6 = select i1 %i.s, i16 %i.t, i16 %.5
  %i.u = zext i16 %.6 to i32
  %i.v = shl nuw i32 %i.u, 16
  %i.w = lshr i32 %i.d, 7
  %.lobit = and i32 %i.w, 1
  %i.x = or disjoint i32 %i.v, %.lobit
  %i.y = xor i32 %i.x, 1                          ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 319592
  %i.aa = or disjoint i32 %i.y, 16
  %spec.select27 = select i1 %i.h, i32 %i.aa, i32 %i.y
  store i32 %spec.select27, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 319600
  store i64 %i.ac, ptr %i.ad, align 8
  %i.ae = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.15) ; 3 uses
  %.not25 = icmp eq ptr %i.ae, null
  br i1 %.not25, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.d
  %i.af = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 65536, ptr noundef nonnull %i.ae) ; 2 uses
  %.not26 = icmp eq i64 %i.af, 0
  br i1 %.not26, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.ag = call i32 @zip_entry_write(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.af)
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %.preheader

bb.e:                                             ; preds = %bb.d, %.preheader
  %.019 = phi i32 [ 0, %.preheader ], [ -8, %bb.d ]
  %i.ai = call i32 @fclose(ptr noundef nonnull %i.ae) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.e
  %.020 = phi i32 [ -1, %bb.a ], [ %.019, %bb.e ], [ -3, %bb.b ], [ -16, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %.020
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define noundef i64 @zip_entry_read(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #9 !guid !293 {
bb.a:
  %3 = alloca %struct.mz_zip_archive_file_stat, align 8 ; 7 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %mz_zip_reader_is_file_a_directory.exit.thread25, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4
  %.not17 = icmp eq i32 %i.b, 1
  br i1 %.not17, label %bb.c, label %mz_zip_reader_is_file_a_directory.exit.thread25

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %mz_zip_reader_is_file_a_directory.exit.thread25, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = trunc i64 %i.d to i32                    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8              ; 5 uses
  %.not10.i.i = icmp eq ptr %i.h, null
  br i1 %.not10.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %.not11.i.i = icmp ugt i32 %i.j, %i.f
  br i1 %.not11.i.i, label %mz_zip_get_cdh.exit.i, label %.thread39

mz_zip_get_cdh.exit.i:                            ; preds = %bb.e
  %i.k = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = and i64 %i.d, 4294967295
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.q ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.thread39, label %bb.f

bb.f:                                             ; preds = %mz_zip_get_cdh.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.t = load i16, ptr %i.s, align 1              ; 2 uses
  %.not18.i = icmp eq i16 %i.t, 0
  br i1 %.not18.i, label %mz_zip_reader_is_file_a_directory.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 45
  %i.x = load i8, ptr %i.w, align 1
  %i.y = icmp eq i8 %i.x, 47
  br i1 %i.y, label %mz_zip_reader_is_file_a_directory.exit.thread25, label %mz_zip_reader_is_file_a_directory.exit

mz_zip_reader_is_file_a_directory.exit:           ; preds = %bb.f, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 38
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = and i8 %i.aa, 16
  %.not18 = icmp eq i8 %i.ab, 0
  br i1 %.not18, label %.thread, label %mz_zip_reader_is_file_a_directory.exit.thread25

.thread39:                                        ; preds = %mz_zip_get_cdh.exit.i, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 24, ptr %i.ac, align 4
  br label %.thread

bb.h:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 24, ptr %i.ad, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  br label %mz_zip_reader_file_stat.exit.i

.thread:                                          ; preds = %mz_zip_reader_is_file_a_directory.exit, %.thread39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i32, ptr %i.ae, align 8
  %.not11.i.i.i = icmp ugt i32 %i.af, %i.f
  br i1 %.not11.i.i.i, label %bb.i, label %mz_zip_reader_file_stat.exit.i

bb.i:                                             ; preds = %.thread
  %i.ag = load ptr, ptr %i.h, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = and i64 %i.d, 4294967295
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.am
  br label %mz_zip_reader_file_stat.exit.i

mz_zip_reader_file_stat.exit.i:                   ; preds = %bb.h, %bb.i, %.thread
  %.0.i.i.i = phi ptr [ %i.an, %bb.i ], [ null, %.thread ], [ null, %bb.h ]
  %i.ao = call fastcc range(i32 0, 2) i32 @mz_zip_file_stat_internal(ptr noundef nonnull %0, i32 noundef %i.f, ptr noundef %.0.i.i.i, ptr noundef nonnull %3, ptr noundef null)
  %.not23.i = icmp eq i32 %i.ao, 0
  br i1 %.not23.i, label %mz_zip_reader_extract_to_heap.exit.thread, label %bb.j

bb.j:                                             ; preds = %mz_zip_reader_file_stat.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aq = load i64, ptr %i.ap, align 8            ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call ptr %i.as(ptr noundef %i.au, i64 noundef 1, i64 noundef %i.aq) #36, !inline_history !294 ; 4 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %mz_zip_set_error.exit.i, label %bb.k

mz_zip_set_error.exit.i:                          ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 16, ptr %i.ax, align 4
  br label %mz_zip_reader_extract_to_heap.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ay = call fastcc i32 @mz_zip_reader_extract_to_mem_no_alloc1(ptr noundef nonnull %0, i32 noundef %i.f, ptr noundef nonnull %i.av, i64 noundef %i.aq, i32 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef nonnull %3)
  %.not25.i = icmp eq i32 %i.ay, 0
  br i1 %.not25.i, label %bb.l, label %mz_zip_reader_extract_to_heap.exit

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load ptr, ptr %i.at, align 8
  call void %i.ba(ptr noundef %i.bb, ptr noundef nonnull %i.av) #36, !inline_history !294
  br label %mz_zip_reader_extract_to_heap.exit.thread

mz_zip_reader_extract_to_heap.exit.thread:        ; preds = %mz_zip_set_error.exit.i, %mz_zip_reader_file_stat.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  store ptr null, ptr %1, align 8
  br label %mz_zip_reader_is_file_a_directory.exit.thread25

mz_zip_reader_extract_to_heap.exit:               ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  store ptr %i.av, ptr %1, align 8
  %.not32 = icmp eq ptr %2, null
  br i1 %.not32, label %mz_zip_reader_is_file_a_directory.exit.thread25, label %bb.m

bb.m:                                             ; preds = %mz_zip_reader_extract_to_heap.exit
  store i64 %i.aq, ptr %2, align 8
  br label %mz_zip_reader_is_file_a_directory.exit.thread25

mz_zip_reader_is_file_a_directory.exit.thread25:  ; preds = %bb.g, %mz_zip_reader_extract_to_heap.exit, %bb.m, %mz_zip_reader_extract_to_heap.exit.thread, %mz_zip_reader_is_file_a_directory.exit, %bb.b, %bb.c, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ -3, %bb.b ], [ %i.aq, %mz_zip_reader_extract_to_heap.exit ], [ -3, %bb.c ], [ -17, %mz_zip_reader_is_file_a_directory.exit ], [ 0, %mz_zip_reader_extract_to_heap.exit.thread ], [ %i.aq, %bb.m ], [ -17, %bb.g ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @zip_entry_noallocread(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #9 !guid !295 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
end_hunk_0
begin_hunk_1_@zip_stream_close:bb.a
  %i.ac = load ptr, ptr %i.f, align 8
  %i.ad = load ptr, ptr %i.j, align 8
  tail call void %i.ac(ptr noundef %i.ad, ptr noundef nonnull %i.c) #36, !inline_history !111
  br label %mz_zip_reader_end_internal.exit

mz_zip_reader_end_internal.exit:                  ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.k
  tail call void @free(ptr noundef nonnull %0) #36
  br label %bb.l

bb.l:                                             ; preds = %mz_zip_reader_end_internal.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -22, 1) i32 @zip_create(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #9 !guid !310 {
bb.a:
  %3 = alloca %struct.mz_zip_archive, align 8     ; 18 uses
  %4 = alloca %struct.stat, align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %mz_zip_writer_end_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %char0 = load i8, ptr %0, align 1
  %i.a = icmp eq i8 %char0, 0
  br i1 %i.a, label %mz_zip_writer_end_internal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  store ptr @mz_zip_file_write_func, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 96
  store ptr %3, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store ptr @miniz_def_alloc_func, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 10 uses
  store ptr @miniz_def_free_func, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr @miniz_def_realloc_func, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  %calloc = call dereferenceable_or_null(152) ptr @calloc(i64 1, i64 152) ; 5 uses
  store ptr %calloc, ptr %i.f, align 8
  %i.l = icmp eq ptr %calloc, null
  br i1 %i.l, label %mz_zip_writer_end_internal.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %calloc, i64 24
  store i32 1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %calloc, i64 56
  store i32 4, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %calloc, i64 88
  store i32 4, ptr %i.o, align 8
  store i32 1, ptr %i.b, align 8
  store i32 2, ptr %i.g, align 4
  %i.p = call noalias ptr @fopen(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.17) ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  %i.r = load ptr, ptr %i.f, align 8              ; 11 uses
  br i1 %i.q, label %mz_zip_set_error.exit48.i, label %bb.o

mz_zip_set_error.exit48.i:                        ; preds = %bb.d
  %.not38.i45 = icmp eq ptr %i.r, null
  %i.s = load ptr, ptr %i.h, align 8
  %.not39.i46 = icmp eq ptr %i.s, null
  %or.cond = select i1 %.not38.i45, i1 true, i1 %.not39.i46
  br i1 %or.cond, label %mz_zip_writer_end_internal.exit, label %bb.e

bb.e:                                             ; preds = %mz_zip_set_error.exit48.i
  %i.t = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not40.i47 = icmp eq ptr %i.t, null
  br i1 %.not40.i47, label %mz_zip_writer_end_internal.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %i.g, align 4
  %i.v = and i32 %i.u, -2
  %switch.i48 = icmp eq i32 %i.v, 2
  br i1 %switch.i48, label %bb.g, label %mz_zip_writer_end_internal.exit

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.f, align 8
  %i.w = load ptr, ptr %i.k, align 8
  %i.x = load ptr, ptr %i.r, align 8
  call void %i.t(ptr noundef %i.w, ptr noundef %i.x) #36, !inline_history !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.i, align 8
  %i.aa = load ptr, ptr %i.k, align 8
  %i.ab = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef %i.aa, ptr noundef %i.ab) #36, !inline_history !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i8 0, i64 32, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  %i.ad = load ptr, ptr %i.i, align 8
  %i.ae = load ptr, ptr %i.k, align 8
  %i.af = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef %i.ae, ptr noundef %i.af) #36, !inline_history !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 112 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not43.i51 = icmp eq ptr %i.ah, null
  br i1 %.not43.i51, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load i32, ptr %i.b, align 8
  %i.aj = icmp eq i32 %i.ai, 4
  br i1 %i.aj, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ak = call i32 @fclose(ptr noundef nonnull %i.ah)
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 21, ptr %i.am, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  store ptr null, ptr %i.ag, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %i.an = load ptr, ptr %i.c, align 8
  %i.ao = icmp eq ptr %i.an, @mz_zip_heap_write_func
  br i1 %i.ao, label %bb.m, label %mz_zip_writer_end_internal.exit.sink.split

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 128 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not45.i54 = icmp eq ptr %i.aq, null
  br i1 %.not45.i54, label %mz_zip_writer_end_internal.exit.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %i.i, align 8
  %i.as = load ptr, ptr %i.k, align 8
  call void %i.ar(ptr noundef %i.as, ptr noundef nonnull %i.aq) #36, !inline_history !114
  store ptr null, ptr %i.ap, align 8
  br label %mz_zip_writer_end_internal.exit.sink.split

bb.o:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  store ptr %i.p, ptr %i.at, align 8
  store i32 4, ptr %i.b, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 144, i1 false)
  %.not73 = icmp eq i64 %2, 0
  br i1 %.not73, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.q

bb.p:                                             ; preds = %zip_basename.exit
  %i.av = add nuw i64 %.02667, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.av, %2
  br i1 %exitcond.not, label %.thread, label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.p
  %.02667 = phi i64 [ 0, %.lr.ph ], [ %i.av, %bb.p ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02667
  %i.ax = load ptr, ptr %i.aw, align 8            ; 6 uses
  %.not34 = icmp eq ptr %i.ax, null
  br i1 %.not34, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = call i32 @stat(ptr noundef nonnull %i.ax, ptr noundef nonnull %4) #36
  %.not35 = icmp eq i32 %i.ay, 0
  br i1 %.not35, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.az = load i32, ptr %i.au, align 8            ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %bb.s
  %.016.i = phi ptr [ %i.ax, %bb.s ], [ %i.bc, %bb.v ] ; 3 uses
  %.014.i = phi ptr [ %i.ax, %bb.s ], [ %.115.i, %bb.v ] ; 6 uses
  %.0.i = phi i32 [ 1, %bb.s ], [ %.1.i, %bb.v ]  ; 3 uses
  %i.ba = load i8, ptr %.016.i, align 1
  switch i8 %i.ba, label %bb.v [
    i8 0, label %bb.w
    i8 47, label %bb.u
    i8 92, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %.016.i, i64 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.115.i = phi ptr [ %i.bb, %bb.u ], [ %.014.i, %bb.t ]
  %.1.i = phi i32 [ %.0.i, %bb.u ], [ 0, %bb.t ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.016.i, i64 1
  br label %bb.t

bb.w:                                             ; preds = %bb.t
  %i.bd = trunc i32 %i.az to i16                  ; 2 uses
  %i.be = and i16 %i.bd, 4095
  %i.bf = and i32 %i.az, 61440                    ; 7 uses
  %i.bg = icmp eq i32 %i.bf, 16384                ; 2 uses
  %spec.select = select i1 %i.bg, i16 %i.bd, i16 %i.be ; 2 uses
  %i.bh = icmp eq i32 %i.bf, 32768
  %i.bi = or i16 %spec.select, -32768
  %.1 = select i1 %i.bh, i16 %i.bi, i16 %spec.select ; 2 uses
  %i.bj = icmp eq i32 %i.bf, 40960
  %i.bk = or i16 %.1, -24576
  %.2 = select i1 %i.bj, i16 %i.bk, i16 %.1       ; 2 uses
  %i.bl = icmp eq i32 %i.bf, 24576
  %i.bm = or i16 %.2, 24576
  %.3 = select i1 %i.bl, i16 %i.bm, i16 %.2       ; 2 uses
  %i.bn = icmp eq i32 %i.bf, 8192
  %i.bo = or i16 %.3, 8192
  %.4 = select i1 %i.bn, i16 %i.bo, i16 %.3       ; 2 uses
  %i.bp = icmp eq i32 %i.bf, 4096
  %i.bq = or i16 %.4, 4096
  %.5 = select i1 %i.bp, i16 %i.bq, i16 %.4       ; 2 uses
  %i.br = icmp eq i32 %i.bf, 49152
  %i.bs = or i16 %.5, -16384
  %.6 = select i1 %i.br, i16 %i.bs, i16 %.5
  %i.bt = zext i16 %.6 to i32
  %i.bu = shl nuw i32 %i.bt, 16
  %i.bv = lshr i32 %i.az, 7
  %.lobit = and i32 %i.bv, 1
  %i.bw = or disjoint i32 %i.bu, %.lobit
  %i.bx = xor i32 %i.bw, 1                        ; 2 uses
  %i.by = or disjoint i32 %i.bx, 16
  %.025 = select i1 %i.bg, i32 %i.by, i32 %i.bx
  %i.bz = load i8, ptr %.014.i, align 1
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.x, label %zip_basename.exit

bb.x:                                             ; preds = %bb.w
  %i.cb = load i8, ptr %i.ax, align 1             ; 2 uses
  %i.cc = icmp eq i8 %i.cb, 47
  br i1 %i.cc, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cd = icmp eq i8 %i.cb, 92
  %i.ce = icmp ne i32 %.0.i, 0
  %or.cond.i = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond.i, label %bb.aa, label %zip_basename.exit

bb.z:                                             ; preds = %bb.x
  %.old1.not.i = icmp eq i32 %.0.i, 0
  br i1 %.old1.not.i, label %zip_basename.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cf = getelementptr inbounds i8, ptr %.014.i, i64 -1
  br label %zip_basename.exit

zip_basename.exit:                                ; preds = %bb.w, %bb.y, %bb.z, %bb.aa
  %.2.i = phi ptr [ %i.cf, %bb.aa ], [ %.014.i, %bb.z ], [ %.014.i, %bb.y ], [ %.014.i, %bb.w ]
  %i.cg = call i32 @mz_zip_writer_add_file(ptr noundef nonnull %3, ptr noundef nonnull %.2.i, ptr noundef nonnull %i.ax, ptr noundef nonnull @.str.1, i16 noundef zeroext 0, i32 noundef 6, i32 noundef %.025)
  %.not37 = icmp eq i32 %i.cg, 0
  br i1 %.not37, label %.thread, label %bb.p

.thread:                                          ; preds = %bb.p, %bb.q, %bb.r, %zip_basename.exit, %bb.o
  %.229 = phi i32 [ 0, %bb.o ], [ 0, %bb.p ], [ -19, %zip_basename.exit ], [ -19, %bb.r ], [ -2, %bb.q ] ; 6 uses
  %i.ch = call i32 @mz_zip_writer_finalize_archive(ptr noundef nonnull %3) ; 0 uses
  %i.ci = load ptr, ptr %i.f, align 8             ; 10 uses
  %.not38.i = icmp eq ptr %i.ci, null
  %i.cj = load ptr, ptr %i.h, align 8
  %.not39.i = icmp eq ptr %i.cj, null
  %or.cond66 = select i1 %.not38.i, i1 true, i1 %.not39.i
  br i1 %or.cond66, label %mz_zip_writer_end_internal.exit, label %bb.ab

bb.ab:                                            ; preds = %.thread
  %i.ck = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not40.i = icmp eq ptr %i.ck, null
  br i1 %.not40.i, label %mz_zip_writer_end_internal.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i32, ptr %i.g, align 4
  %i.cm = and i32 %i.cl, -2
  %switch.i = icmp eq i32 %i.cm, 2
  br i1 %switch.i, label %bb.ad, label %mz_zip_writer_end_internal.exit

bb.ad:                                            ; preds = %bb.ac
  store ptr null, ptr %i.f, align 8
  %i.cn = load ptr, ptr %i.k, align 8
  %i.co = load ptr, ptr %i.ci, align 8
  call void %i.ck(ptr noundef %i.cn, ptr noundef %i.co) #36, !inline_history !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, i8 0, i64 32, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 32 ; 2 uses
  %i.cq = load ptr, ptr %i.i, align 8
  %i.cr = load ptr, ptr %i.k, align 8
  %i.cs = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef %i.cr, ptr noundef %i.cs) #36, !inline_history !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cp, i8 0, i64 32, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 64 ; 2 uses
  %i.cu = load ptr, ptr %i.i, align 8
  %i.cv = load ptr, ptr %i.k, align 8
  %i.cw = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef %i.cv, ptr noundef %i.cw) #36, !inline_history !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i8 0, i64 32, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ci, i64 112 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %.not43.i42 = icmp eq ptr %i.cy, null
  br i1 %.not43.i42, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cz = load i32, ptr %i.b, align 8
  %i.da = icmp eq i32 %i.cz, 4
  br i1 %i.da, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.db = call i32 @fclose(ptr noundef nonnull %i.cy)
  %i.dc = icmp eq i32 %i.db, -1
  br i1 %i.dc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 21, ptr %i.dd, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  store ptr null, ptr %i.cx, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ad
  %i.de = load ptr, ptr %i.c, align 8
  %i.df = icmp eq ptr %i.de, @mz_zip_heap_write_func
  br i1 %i.df, label %bb.aj, label %mz_zip_writer_end_internal.exit.sink.split

bb.aj:                                            ; preds = %bb.ai
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ci, i64 128 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %.not45.i = icmp eq ptr %i.dh, null
  br i1 %.not45.i, label %mz_zip_writer_end_internal.exit.sink.split, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.di = load ptr, ptr %i.i, align 8
  %i.dj = load ptr, ptr %i.k, align 8
  call void %i.di(ptr noundef %i.dj, ptr noundef nonnull %i.dh) #36, !inline_history !114
  store ptr null, ptr %i.dg, align 8
  br label %mz_zip_writer_end_internal.exit.sink.split

mz_zip_writer_end_internal.exit.sink.split:       ; preds = %bb.ai, %bb.aj, %bb.ak, %bb.l, %bb.m, %bb.n
  %.sink92 = phi ptr [ %i.r, %bb.l ], [ %i.r, %bb.n ], [ %i.r, %bb.m ], [ %i.ci, %bb.ak ], [ %i.ci, %bb.aj ], [ %i.ci, %bb.ai ]
  %.030.ph = phi i32 [ -1, %bb.l ], [ -1, %bb.n ], [ -1, %bb.m ], [ %.229, %bb.ak ], [ %.229, %bb.aj ], [ %.229, %bb.ai ]
  %i.dk = load ptr, ptr %i.i, align 8
  %i.dl = load ptr, ptr %i.k, align 8
  call void %i.dk(ptr noundef %i.dl, ptr noundef nonnull %.sink92) #36
  br label %mz_zip_writer_end_internal.exit

mz_zip_writer_end_internal.exit:                  ; preds = %mz_zip_writer_end_internal.exit.sink.split, %.thread, %bb.ab, %bb.ac, %bb.f, %bb.e, %mz_zip_set_error.exit48.i, %bb.c, %bb.a, %bb.b
  %.030 = phi i32 [ -22, %bb.a ], [ %.229, %bb.ab ], [ -22, %bb.b ], [ %.229, %.thread ], [ -1, %bb.c ], [ -1, %mz_zip_set_error.exit48.i ], [ -1, %bb.e ], [ -1, %bb.f ], [ %.229, %bb.ac ], [ %.030.ph, %mz_zip_writer_end_internal.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret i32 %.030
}

; Function Attrs: nounwind uwtable
define range(i32 -25, 1) i32 @zip_extract(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #9 !guid !311 {
bb.a:
  %4 = alloca %struct.mz_zip_archive, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %4, i8 0, i64 112, i1 false)
  %i.c = call range(i32 0, 2) i32 @mz_zip_reader_init_file_v2(ptr noundef nonnull %4, ptr noundef nonnull readonly %0, i32 noundef 0, i64 noundef 0, i64 noundef 0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call fastcc i32 @zip_archive_extract(ptr noundef %4, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ -22, %bb.a ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tdefl_compress_block(ptr nofree noundef nonnull %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #15 !guid !321 {
bb.a:
  %i.a = alloca [320 x i8], align 16              ; 5 uses
  %i.b = alloca [320 x i8], align 16              ; 24 uses
  %i.c = alloca [33 x i32], align 16              ; 49 uses
  %i.d = alloca [33 x i32], align 16              ; 18 uses
  %i.e = alloca [33 x i32], align 16              ; 21 uses
  %i.f = alloca [33 x i32], align 16              ; 18 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 36682      ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %i.g, i8 8, i64 144, i1 false)
  %scevgep.i = getelementptr i8, ptr %0, i64 36826
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %scevgep.i, i8 9, i64 112, i1 false)
  %scevgep73.i = getelementptr i8, ptr %0, i64 36938
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %scevgep73.i, i8 7, i64 24, i1 false)
  %scevgep74.i = getelementptr i8, ptr %0, i64 36962
  store i64 578721382704613384, ptr %scevgep74.i, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36970 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.h, i8 5, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %i.e, i8 0, i64 132, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.i.3, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1
end_hunk_1
