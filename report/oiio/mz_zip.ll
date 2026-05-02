inline.NumInlined: 69
inline.NumDeleted: 11
begin_hunk_0_@mz_zip_entry_read_header:bb.a
  ]

bb.c:                                             ; preds = %bb.b
  %5 = icmp ne i8 %1, 0
  %i.n = icmp ne i32 %i.m, 67324752
  %or.cond3 = and i1 %5, %i.n
  br i1 %or.cond3, label %.thread287, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@mz_zip_entry_write_header:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i16, ptr %i.f, align 4, !tbaa !31
  %i.h = and i16 %i.g, 8192
  %.not276 = icmp eq i16 %i.h, 0
  br i1 %.not276, label %bb.c, label %4

4:                                                ; preds = %bb.b
  br label %bb.c

bb.c:                                             ; preds = %4, %bb.b, %bb.a
  %5 = phi i1 [ true, %4 ], [ false, %bb.b ], [ false, %bb.a ] ; 2 uses
  %.not288 = phi i1 [ false, %4 ], [ true, %bb.b ], [ true, %bb.a ] ; 4 uses
  %.0235 = phi i8 [ 1, %4 ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.not.i = icmp ne i8 %1, 0                      ; 8 uses
  %.024.i = select i1 %.not.i, i64 4292870143, i64 4294967295
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !36   ; 2 uses
end_hunk_1
begin_hunk_2_@mz_zip_entry_write_header:bb.a

bb.j:                                             ; preds = %bb.i
  %i.aa = icmp eq i64 %i.j, 0
  %or.cond33.i = and i1 %.not.i, %i.aa
  br i1 %or.cond33.i, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
end_hunk_2
begin_hunk_3_@mz_zip_entry_write_header:bb.a
  br label %.thread332

.thread332:                                       ; preds = %bb.o, %.thread.thread, %bb.p
  %.not278331 = phi i1 [ false, %.thread.thread ], [ true, %bb.p ], [ true, %bb.o ] ; 2 uses
  %i.au = phi i1 [ true, %.thread.thread ], [ false, %bb.p ], [ false, %bb.o ]
  %.1.ph329 = phi i8 [ 1, %.thread.thread ], [ %.0235, %bb.p ], [ %.0235, %bb.o ]
  %.1254 = phi i16 [ %.0253, %.thread.thread ], [ 0, %bb.p ], [ 0, %bb.o ]
  %.0246 = phi i16 [ %i.at, %.thread.thread ], [ 0, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 58 ; 3 uses
end_hunk_3
begin_hunk_4_@mz_zip_entry_write_header:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !82
  %i.bx = icmp eq i64 %i.bw, 0
  %or.cond7 = or i1 %5, %i.bx
  br i1 %or.cond7, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
end_hunk_4
begin_hunk_5_@mz_zip_entry_write_header:bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !83 ; 2 uses
  %i.cs = icmp eq i16 %i.cr, 0
  %spec.store.select = select i1 %.not278331, i16 20, i16 45
  %.0242 = select i1 %i.cs, i16 %spec.store.select, i16 %i.cr
  %i.ct = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %.0242) #24 ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.ai, label %mz_zip_entry_write_crc_sizes.exit
end_hunk_5
begin_hunk_6_@mz_zip_entry_write_header:bb.a
bb.ak:                                            ; preds = %bb.aj
  %i.dd = load i64, ptr %i.br, align 8, !tbaa !57 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 0
  %or.cond9 = or i1 %5, %i.de
  br i1 %or.cond9, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
end_hunk_6
begin_hunk_7_@mz_zip_entry_write_header:bb.a
  br i1 %i.dy, label %bb.ap, label %mz_zip_entry_write_crc_sizes.exit

bb.ap:                                            ; preds = %bb.ao
  br i1 %.not288, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 32
end_hunk_7
begin_hunk_8_@mz_zip_entry_write_header:bb.a
  br i1 %i.ec, label %bb.as, label %mz_zip_entry_write_crc_sizes.exit

bb.as:                                            ; preds = %bb.ar
  br i1 %.not278331, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 40
end_hunk_8
begin_hunk_9_@mz_zip_entry_write_header:bb.a
  br i1 %i.eh, label %bb.av, label %mz_zip_entry_write_crc_sizes.exit

bb.av:                                            ; preds = %bb.au
  %brmerge.not.i = icmp eq i8 %.1.ph329, 0
  %.mux.i = sext i1 %.not288 to i32
  br i1 %brmerge.not.i, label %bb.aw, label %.thread.sink.split.i

bb.aw:                                            ; preds = %bb.av
  %i.ei = load i64, ptr %i.i, align 8, !tbaa !36
end_hunk_9
begin_hunk_10_@mz_zip_entry_write_header:bb.a
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !35
  %i.hf = call i32 @mz_stream_write_int64(ptr noundef %0, i64 noundef %i.he) #24 ; 2 uses
  %i.hg = icmp ne i32 %i.hf, 0
  %or.cond20 = or i1 %.not.i, %i.hg
  br i1 %or.cond20, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
end_hunk_10
begin_hunk_11_@mz_zip_entry_write_header:bb.a
bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by
  %.18 = phi i32 [ %i.hf, %bb.by ], [ %i.hk, %bb.ca ], [ 0, %bb.bz ] ; 2 uses
  %i.hl = icmp ne i32 %.18, 0
  %or.cond22 = or i1 %.not.i, %i.hl
  br i1 %or.cond22, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
end_hunk_11
begin_hunk_12_@mz_zip_entry_write_header:bb.a
bb.da:                                            ; preds = %.critedge303, %.thread402
  %.34 = phi i32 [ %.31.lcssa, %.critedge303 ], [ %.30, %.thread402 ] ; 2 uses
  %i.ko = icmp ne i32 %.34, 0
  %or.cond39 = or i1 %.not.i, %i.ko
  br i1 %or.cond39, label %mz_zip_entry_needs_zip64.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
end_hunk_12
begin_hunk_13_@mz_stream_set_base
; Function Attrs: nounwind uwtable
define internal fastcc i32 @mz_zip_entry_write_crc_sizes(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext range(i8 0, 2) %2, ptr noundef nonnull readonly captures(none) %3) unnamed_addr #5 {
bb.a:
  %.not.not = icmp eq i8 %2, 0                    ; 2 uses
  br i1 %.not.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
end_hunk_13
begin_hunk_14_@mz_zip_entry_write_crc_sizes:bb.a
  br i1 %i.d, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %.not16.not = icmp eq i8 %1, 0
  br i1 %.not16.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
end_hunk_14
begin_hunk_15_@mz_zip_entry_write_crc_sizes:bb.a
  br i1 %i.i, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %4 = or i8 %2, %1
  %brmerge.not = icmp eq i8 %4, 0
  %.mux = sext i1 %.not.not to i32
  br i1 %brmerge.not, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48
end_hunk_15
