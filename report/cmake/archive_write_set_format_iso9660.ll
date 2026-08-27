Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_write_set_format_iso9660?download=true
inline.NumInlined: 294
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@iso9660_write_header:bb.a
  store i32 %i.co, ptr %i.cl, align 8, !tbaa !38
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cq = tail call ptr @__errno_location() #26
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !104
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef %i.cr, ptr noundef nonnull @.str.46) #23
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.cs = load ptr, ptr %i.b, align 8, !tbaa !72  ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 66288
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !111
  %i.cv = add nsw i64 %i.cu, 65536
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 66272
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !53
  %i.cy = sub i64 %i.cv, %i.cx
  store i64 %i.cy, ptr %i.aa, align 8, !tbaa !112
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !87
  %i.cz = tail call fastcc i32 @zisofs_init(ptr noundef nonnull %0, ptr noundef %i.u)
  %spec.select76 = tail call i32 @llvm.smin.i32(i32 %i.cz, i32 %i.ac)
  %i.da = load ptr, ptr %i.y, align 8, !tbaa !81
  %i.db = tail call i64 @archive_entry_size(ptr noundef %i.da) #23
  store i64 %i.db, ptr %i.e, align 8, !tbaa !105
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ae, %bb.ac, %bb.ab, %bb.aa, %bb.ai, %bb.ah, %bb.x, %isofile_free.exit82, %isofile_free.exit, %bb.o, %bb.g, %bb.c
  %.065 = phi i32 [ -20, %bb.c ], [ -20, %bb.g ], [ -30, %bb.o ], [ %i.ac, %isofile_free.exit ], [ %i.ac, %isofile_free.exit82 ], [ -30, %bb.x ], [ %spec.select76, %bb.ai ], [ %i.cb, %bb.aa ], [ 0, %bb.ab ], [ %i.ac, %bb.ac ], [ -30, %bb.ah ], [ -30, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.065
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @iso9660_write_data(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.h = tail call i32 @archive_entry_filetype(ptr noundef %i.g) #23
  %.not = icmp eq i32 %i.h, 32768
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !105
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.j) ; 2 uses
  %i.k = icmp eq i64 %spec.select, 0
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call fastcc i64 @write_iso9660_data(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %spec.select) ; 4 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load i64, ptr %i.i, align 8, !tbaa !105
  %i.o = sub i64 %i.n, %i.l
  store i64 %i.o, ptr %i.i, align 8, !tbaa !105
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b, %bb.a
  %.014 = phi i64 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ %i.l, %bb.e ], [ %i.l, %bb.d ]
  ret i64 %.014
}

; Function Attrs: nounwind uwtable
define internal range(i32 -30, 1) i32 @iso9660_finish_entry(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.i = tail call i32 @archive_entry_filetype(ptr noundef %i.h) #23
  %.not = icmp eq i32 %i.i, 32768
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  %i.l = load i64, ptr %i.k, align 8, !tbaa !113
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !105  ; 2 uses
  %.not2740 = icmp eq i64 %i.o, 0
  br i1 %.not2740, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %i.r = phi i64 [ %i.o, %.lr.ph ], [ %i.x, %bb.e ]
  %i.s = load i64, ptr %i.p, align 8, !tbaa !114
  %. = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.s) ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !115
  %i.u = tail call fastcc i64 @write_iso9660_data(ptr noundef nonnull %0, ptr noundef %i.t, i64 noundef %.)
  %i.v = icmp sgt i64 %i.u, -1
  br i1 %i.v, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.n, align 8, !tbaa !105
  %i.x = sub i64 %i.w, %.                         ; 3 uses
  store i64 %i.x, ptr %i.n, align 8, !tbaa !105
  %.not27 = icmp eq i64 %i.x, 0
  br i1 %.not27, label %._crit_edge, label %bb.d, !llvm.loop !116

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = and i8 %i.z, 2
  %.not28 = icmp eq i8 %i.aa, 0
  br i1 %.not28, label %bb.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !72  ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !39 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !81
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 568
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !117
  tail call void @archive_entry_set_size(ptr noundef %i.af, i64 noundef %i.ah) #23
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !72  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 66288
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !111
  %i.al = add nsw i64 %i.ak, 65536
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 66272
  %i.an = load i64, ptr %i.am, align 8, !tbaa !53
  %i.ao = sub i64 %i.al, %i.an
  store i64 564880462138565687, ptr %i.a, align 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 192
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 196
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !118
  store i32 %i.as, ptr %i.ap, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.au = load <2 x i8>, ptr %i.aq, align 8, !tbaa !71
  %i.av = shufflevector <2 x i8> %i.au, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aw = shufflevector <4 x i8> %i.av, <4 x i8> <i8 poison, i8 poison, i8 0, i8 0>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i8> %i.aw, ptr %i.at, align 4, !tbaa !71
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !112
  %i.az = tail call fastcc i32 @wb_set_offset(ptr noundef nonnull %0, i64 noundef %i.ay) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.backedge.i.i, %bb.f
  %.137.i24.i = phi i64 [ 16, %bb.f ], [ %.137.be.i.i, %.backedge.i.i ] ; 2 uses
  %.240.i23.i = phi ptr [ %i.a, %bb.f ], [ %.240.be.i.i, %.backedge.i.i ] ; 2 uses
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !72  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 66272
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !53 ; 2 uses
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %.137.i24.i, i64 %i.bc) ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 732
  %i.be = sub i64 65536, %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr align 1 %.240.i23.i, i64 %spec.select.i.i, i1 false)
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !72
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 66272 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !53 ; 4 uses
  %i.bj = icmp ugt i64 %spec.select.i.i, %i.bi
  %i.bk = icmp eq i64 %i.bi, 0
  %or.cond.i.i.i = or i1 %i.bj, %i.bk
  br i1 %or.cond.i.i.i, label %wb_consume.exit.thread.i.i, label %bb.h

wb_consume.exit.thread.i.i:                       ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.57, i64 noundef %spec.select.i.i, i64 noundef %i.bi) #23
  br label %zisofs_finish_entry.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.bl = sub nuw i64 %i.bi, %spec.select.i.i     ; 2 uses
  store i64 %i.bl, ptr %i.bh, align 8, !tbaa !53
  %i.bm = icmp ult i64 %i.bl, 2048
  br i1 %i.bm, label %.split.i.i, label %.backedge.i.i

.split.i.i:                                       ; preds = %bb.h
  %i.bn = tail call fastcc i32 @wb_write_out(ptr noundef nonnull %0)
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.backedge.i.i, label %zisofs_finish_entry.exit.thread

.backedge.i.i:                                    ; preds = %.split.i.i, %bb.h
  %.137.be.i.i = sub nuw nsw i64 %.137.i24.i, %spec.select.i.i ; 2 uses
  %.240.be.i.i = getelementptr inbounds nuw i8, ptr %.240.i23.i, i64 %spec.select.i.i
  %.not47.i.i = icmp eq i64 %.137.be.i.i, 0
  br i1 %.not47.i.i, label %wb_write_to_temp.exit.i, label %bb.g, !llvm.loop !119

wb_write_to_temp.exit.i:                          ; preds = %.backedge.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ab, i64 560
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !120
  %i.br = sext i32 %i.bq to i64
  %i.bs = shl nsw i64 %i.br, 2
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ab, i64 544
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !121
  %i.bv = tail call fastcc i32 @wb_write_to_temp(ptr noundef nonnull %0, ptr noundef %i.bu, i64 noundef %i.bs)
  %.not18.i = icmp eq i32 %i.bv, 0
  br i1 %.not18.i, label %zisofs_finish_entry.exit, label %zisofs_finish_entry.exit.thread

zisofs_finish_entry.exit.thread:                  ; preds = %.split.i.i, %wb_write_to_temp.exit.i, %wb_consume.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.critedge

zisofs_finish_entry.exit:                         ; preds = %wb_write_to_temp.exit.i
  %i.bw = tail call fastcc i32 @wb_set_offset(ptr noundef nonnull %0, i64 noundef %i.ao) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.i

bb.i:                                             ; preds = %zisofs_finish_entry.exit, %._crit_edge
  %i.bx = load ptr, ptr %i.d, align 8, !tbaa !39  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 176
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !87 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !122 ; 2 uses
  %i.cc = srem i64 %i.cb, 2048                    ; 2 uses
  %.not.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i, label %wb_write_padding_to_temp.exit.thread, label %wb_write_padding_to_temp.exit

wb_write_padding_to_temp.exit:                    ; preds = %bb.i
  %i.cd = sub nsw i64 2048, %i.cc
  %i.ce = tail call fastcc i32 @write_null(ptr noundef nonnull %0, i64 noundef %i.cd)
  %.not30 = icmp eq i32 %i.ce, 0
  br i1 %.not30, label %wb_write_padding_to_temp.exit.wb_write_padding_to_temp.exit.thread_crit_edge, label %.critedge

wb_write_padding_to_temp.exit.wb_write_padding_to_temp.exit.thread_crit_edge: ; preds = %wb_write_padding_to_temp.exit
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !39  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 176
  %.pre45 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !87 ; 2 uses
  %.phi.trans.insert46 = getelementptr inbounds nuw i8, ptr %.pre45, i64 8
  %.pre47 = load i64, ptr %.phi.trans.insert46, align 8, !tbaa !122
  br label %wb_write_padding_to_temp.exit.thread

wb_write_padding_to_temp.exit.thread:             ; preds = %wb_write_padding_to_temp.exit.wb_write_padding_to_temp.exit.thread_crit_edge, %bb.i
  %i.cf = phi i64 [ %.pre47, %wb_write_padding_to_temp.exit.wb_write_padding_to_temp.exit.thread_crit_edge ], [ %i.cb, %bb.i ]
  %i.cg = phi ptr [ %.pre45, %wb_write_padding_to_temp.exit.wb_write_padding_to_temp.exit.thread_crit_edge ], [ %i.bz, %bb.i ]
  %i.ch = phi ptr [ %.pre, %wb_write_padding_to_temp.exit.wb_write_padding_to_temp.exit.thread_crit_edge ], [ %i.bx, %bb.i ] ; 2 uses
  %i.ci = add nsw i64 %i.cf, 2047
  %i.cj = lshr i64 %i.ci, 11
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i32 %i.ck, ptr %i.cl, align 8, !tbaa !123
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  store ptr null, ptr %i.cm, align 8, !tbaa !124
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 160 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !50
  store ptr %i.ch, ptr %i.co, align 8, !tbaa !93
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !50
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %zisofs_finish_entry.exit.thread, %wb_write_padding_to_temp.exit, %bb.c, %bb.b, %bb.a, %wb_write_padding_to_temp.exit.thread
  %.2 = phi i32 [ 0, %wb_write_padding_to_temp.exit.thread ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ -30, %wb_write_padding_to_temp.exit ], [ -30, %zisofs_finish_entry.exit.thread ], [ -30, %bb.d ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal i32 @iso9660_close(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 12 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %1 = alloca %struct.zisofs_extract, align 8     ; 26 uses
  %i.d = alloca [256 x i8], align 16              ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 13 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 37 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 66272 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !53
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call fastcc i32 @wb_write_out(ptr noundef nonnull %0) ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.ie, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = tail call i64 @time(ptr noundef nonnull %i.f) #23 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 66416 ; 16 uses
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %i.n = and i32 %i.m, 16
  %.not160 = icmp eq i32 %i.n, 0
  br i1 %.not160, label %bb.cb, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !72   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 66344 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %.013.i.i = phi ptr [ %i.s, %bb.d ], [ %spec.select.i.i, %bb.j ] ; 5 uses
  %.012.i.i = phi ptr [ %i.p, %bb.d ], [ %i.ah, %bb.j ]
  %i.t = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.013.i.i, i32 noundef 47) #25 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.013.i.i) #25 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %isoent_find_out_boot_file.exit.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = ptrtoint ptr %.013.i.i to i64
  %i.z = sub i64 %i.x, %i.y
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi i64 [ %i.v, %bb.f ], [ %i.z, %bb.g ] ; 5 uses
  %i.aa = icmp ugt i64 %.0.i.i.i, 255
  br i1 %i.aa, label %get_path_component.exit.thread18.i.i, label %get_path_component.exit.i.i

get_path_component.exit.i.i:                      ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull align 1 %.013.i.i, i64 %.0.i.i.i, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.i.i.i
  store i8 0, ptr %i.ab, align 1, !tbaa !71
  %i.ac = icmp eq i64 %.0.i.i.i, 0
  br i1 %i.ac, label %isoent_find_out_boot_file.exit.thread, label %get_path_component.exit.thread18.i.i

get_path_component.exit.thread18.i.i:             ; preds = %get_path_component.exit.i.i, %bb.h
  %.013.i20.i.i = phi i64 [ %.0.i.i.i, %get_path_component.exit.i.i ], [ -1, %bb.h ]
  %i.ad = getelementptr inbounds i8, ptr %.013.i.i, i64 %.013.i20.i.i ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !71
  %i.af = icmp eq i8 %i.ae, 47
  %spec.select.idx.i.i = zext i1 %i.af to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 %spec.select.idx.i.i ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 64
  %i.ah = call ptr @__archive_rb_tree_find_node(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.d) #23 ; 5 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %isoent_find_out_boot_file.exit.thread, label %bb.i

bb.i:                                             ; preds = %get_path_component.exit.thread18.i.i
  %i.aj = load i8, ptr %spec.select.i.i, align 1, !tbaa !71
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 232
  %i.am = load i8, ptr %i.al, align 8
  %i.an = and i8 %i.am, 2
  %.not.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i, label %isoent_find_out_boot_file.exit.thread, label %bb.e

isoent_find_out_boot_file.exit.thread:            ; preds = %bb.f, %get_path_component.exit.i.i, %get_path_component.exit.thread18.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 66368
  store ptr null, ptr %i.ao, align 8, !tbaa !126
  %i.ap = load ptr, ptr %i.r, align 8, !tbaa !125
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.63, ptr noundef %i.ap) #23
  br label %bb.ie

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 66368
  store ptr %i.ah, ptr %i.aq, align 8, !tbaa !126
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !94
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 188
  store i32 2, ptr %i.at, align 4, !tbaa !127
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !72  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 66368
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !126
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !94 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 192 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !128
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %zisofs_rewind_boot_file.exit.thread243, label %bb.l

zisofs_rewind_boot_file.exit.thread243:           ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.ay

bb.l:                                             ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %1, i8 0, i64 192, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 196 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !118
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !129
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 193 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !131
  %i.bi = zext i8 %i.bh to i32
  store i32 %i.bi, ptr %1, align 8, !tbaa !132
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !38 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.au, i64 66288
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !111
  %i.bn = add nsw i64 %i.bm, 65536
  %i.bo = getelementptr inbounds nuw i8, ptr %i.au, i64 66272
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !53
  %i.bq = sub i64 %i.bn, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.ay, i64 144 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !112
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ay, i64 152 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !113 ; 3 uses
  %..i = call i64 @llvm.umin.i64(i64 %i.bu, i64 32768) ; 2 uses
  %i.bv = call noalias ptr @malloc(i64 noundef %..i) #27 ; 11 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.m, label %.preheader.i

.preheader.i:                                     ; preds = %bb.l
  %.not122.i = icmp eq i64 %i.bu, 0
  br i1 %.not122.i, label %.thread.thread178.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 13
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str.5) #23
  br label %zisofs_rewind_boot_file.exit.thread

bb.n:                                             ; preds = %bb.av, %.lr.ph.i
  %.059124.i = phi i64 [ %i.bs, %.lr.ph.i ], [ %i.cy, %bb.av ] ; 2 uses
  %.062123.i = phi i64 [ %i.bu, %.lr.ph.i ], [ %i.cx, %bb.av ] ; 2 uses
  %i.cq = call i64 @lseek(i32 noundef %i.bk, i64 noundef 0, i32 noundef 1) #23
  %i.cr = call i64 @lseek(i32 noundef %i.bk, i64 noundef %.059124.i, i32 noundef 0) #23 ; 0 uses
  %spec.select.i = call i64 @llvm.umin.i64(i64 %..i, i64 %.062123.i)
  %i.cs = load i32, ptr %i.bj, align 8, !tbaa !38
  %i.ct = call i64 @read(i32 noundef %i.cs, ptr noundef nonnull %i.bv, i64 noundef %spec.select.i) #23 ; 13 uses
  %i.cu = icmp slt i64 %i.ct, 1
  br i1 %i.cu, label %.thread.thread.i.a, label %bb.o

.thread.thread.i.a:                               ; preds = %bb.n
  %i.cv = tail call ptr @__errno_location() #26
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !104
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef %i.cw, ptr noundef nonnull @.str.64, i64 noundef %i.ct) #23
  br label %wb_write_padding_to_temp.exit.thread.i

bb.o:                                             ; preds = %bb.n
  %i.cx = sub i64 %.062123.i, %i.ct               ; 2 uses
  %i.cy = add nsw i64 %i.ct, %.059124.i
  %i.cz = call i64 @lseek(i32 noundef %i.bk, i64 noundef %i.cq, i32 noundef 0) #23 ; 0 uses
  %i.da = load i8, ptr %i.bx, align 8             ; 4 uses
  %i.db = and i8 %i.da, 1
  %.not.i.i194 = icmp eq i8 %i.db, 0
  br i1 %.not.i.i194, label %bb.p, label %bb.ad

bb.p:                                             ; preds = %bb.o
  %i.dc = load i64, ptr %i.bf, align 8, !tbaa !129 ; 2 uses
  %i.dd = load i32, ptr %1, align 8, !tbaa !132   ; 2 uses
  %i.de = zext i32 %i.dd to i64                   ; 2 uses
  %i.df = shl nuw i64 1, %i.de                    ; 2 uses
  %i.dg = add i64 %i.dc, -1
  %i.dh = add i64 %i.dg, %i.df
  %i.di = lshr i64 %i.dh, %i.de
  %i.dj = shl i64 %i.di, 2
  %i.dk = add i64 %i.dj, 4                        ; 4 uses
  %i.dl = load ptr, ptr %i.by, align 8, !tbaa !133 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.q, label %.critedge.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.dn = and i64 %i.dk, -1024
  %i.do = add i64 %i.dn, 1024
  %i.dp = call noalias ptr @malloc(i64 noundef %i.do) #27 ; 3 uses
  store ptr %i.dp, ptr %i.by, align 8, !tbaa !133
  %.not.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i, label %bb.r, label %.critedge.i.i.i

bb.r:                                             ; preds = %bb.q
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 12, ptr noundef nonnull @.str.70) #23
  br label %wb_write_padding_to_temp.exit.thread.i

.critedge.i.i.i:                                  ; preds = %bb.q, %bb.p
  %i.dq = phi ptr [ %i.dl, %bb.p ], [ %i.dp, %bb.q ]
  store i64 %i.dk, ptr %i.bz, align 8, !tbaa !134
  store i64 %i.df, ptr %i.ca, align 8, !tbaa !135
  %i.dr = and i8 %i.da, 2
  %.not68.i.i.i = icmp eq i8 %i.dr, 0
  br i1 %.not68.i.i.i, label %bb.s, label %bb.z

bb.s:                                             ; preds = %.critedge.i.i.i
  %i.ds = icmp samesign ult i64 %i.ct, 16
  br i1 %i.ds, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.71) #23
  br label %wb_write_padding_to_temp.exit.thread.i

bb.u:                                             ; preds = %bb.s
  %i.dt = load i64, ptr %i.bv, align 1
  %i.du = icmp ne i64 %i.dt, 564880462138565687
  %i.dv = zext i1 %i.du to i32
  %.not69.i.i.i = icmp eq i32 %i.dv, 0
  br i1 %.not69.i.i.i, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.dw = load i32, ptr %i.cb, align 1
  %i.dx = zext i32 %i.dw to i64
  %.not70.i.i.i = icmp eq i64 %i.dc, %i.dx
  br i1 %.not70.i.i.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dy = load i8, ptr %i.cc, align 1, !tbaa !71
  %.not71.i.i.i = icmp eq i8 %i.dy, 4
  br i1 %.not71.i.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dz = load i8, ptr %i.cd, align 1, !tbaa !71
  %i.ea = zext i8 %i.dz to i32
  %.not72.i.i.i = icmp eq i32 %i.dd, %i.ea
  br i1 %.not72.i.i.i, label %.critedge76.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.71) #23
  br label %wb_write_padding_to_temp.exit.thread.i

.critedge76.i.i.i:                                ; preds = %bb.x
  %i.eb = add nsw i64 %i.ct, -16
  %i.ec = or disjoint i8 %i.da, 2                 ; 2 uses
  store i8 %i.ec, ptr %i.bx, align 8
  br label %bb.z

bb.z:                                             ; preds = %.critedge76.i.i.i, %.critedge.i.i.i
  %i.ed = phi i8 [ %i.ec, %.critedge76.i.i.i ], [ %i.da, %.critedge.i.i.i ]
  %.162.i.i.i = phi ptr [ %i.ce, %.critedge76.i.i.i ], [ %i.bv, %.critedge.i.i.i ]
  %.157.i.i.i = phi i64 [ %i.eb, %.critedge76.i.i.i ], [ %i.ct, %.critedge.i.i.i ] ; 3 uses
  %i.ee = load i64, ptr %i.cf, align 8, !tbaa !136 ; 3 uses
  %i.ef = icmp ult i64 %i.ee, %i.dk
  br i1 %i.ef, label %bb.aa, label %zisofs_extract_init.exit.thread126.i.i

bb.aa:                                            ; preds = %bb.z
  %i.eg = sub nuw i64 %i.dk, %i.ee
  %spec.select.i.i.i = call i64 @llvm.umin.i64(i64 %.157.i.i.i, i64 %i.eg) ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ee
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eh, ptr nonnull align 1 %.162.i.i.i, i64 %spec.select.i.i.i, i1 false)
  %i.ei = load i64, ptr %i.cf, align 8, !tbaa !136
  %i.ej = add i64 %i.ei, %spec.select.i.i.i       ; 2 uses
  store i64 %i.ej, ptr %i.cf, align 8, !tbaa !136
  %i.ek = sub nuw nsw i64 %.157.i.i.i, %spec.select.i.i.i ; 2 uses
  %i.el = load i64, ptr %i.bz, align 8, !tbaa !134
  %i.em = icmp eq i64 %i.ej, %i.el
  %.pre156.i.i = load i8, ptr %i.bx, align 8      ; 2 uses
  br i1 %i.em, label %bb.ab, label %zisofs_extract_init.exit.thread126.i.i

bb.ab:                                            ; preds = %bb.aa
  store i64 0, ptr %i.cg, align 8, !tbaa !137
  store i32 0, ptr %i.ch, align 8, !tbaa !138
  %i.en = or i8 %.pre156.i.i, 1                   ; 2 uses
  store i8 %i.en, ptr %i.bx, align 8
  br label %zisofs_extract_init.exit.thread126.i.i

zisofs_extract_init.exit.thread126.i.i:           ; preds = %bb.ab, %bb.aa, %bb.z
  %2 = phi i8 [ %.pre156.i.i, %bb.aa ], [ %i.ed, %bb.z ], [ %i.en, %bb.ab ]
  %.3.i.i.i = phi i64 [ %i.ek, %bb.aa ], [ %.157.i.i.i, %bb.z ], [ %i.ek, %bb.ab ] ; 2 uses
  %i.eo = and i8 %2, 1
  %.not114.i.i = icmp eq i8 %i.eo, 0
  br i1 %.not114.i.i, label %zisofs_extract.exit.thread84.i, label %bb.ac

zisofs_extract.exit.thread84.i:                   ; preds = %zisofs_extract_init.exit.thread126.i.i
  %i.ep = trunc i64 %i.ct to i32
  %i.eq = load i32, ptr %i.ci, align 4, !tbaa !139
  %i.er = add i32 %i.eq, %i.ep
  store i32 %i.er, ptr %i.ci, align 4, !tbaa !139
  br label %bb.av

bb.ac:                                            ; preds = %zisofs_extract_init.exit.thread126.i.i
  %i.es = sub nsw i64 %i.ct, %.3.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.es
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.o
  %.1106.i.i = phi ptr [ %i.et, %bb.ac ], [ %i.bv, %bb.o ] ; 2 uses
  %.1100.i.i = phi i64 [ %.3.i.i.i, %bb.ac ], [ %i.ct, %bb.o ] ; 5 uses
  %i.eu = load i32, ptr %i.ch, align 8, !tbaa !138 ; 2 uses
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.ae, label %.thread137.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.ew = load i64, ptr %i.cg, align 8, !tbaa !137 ; 2 uses
  %i.ex = add i64 %i.ew, 4                        ; 2 uses
  %i.ey = load i64, ptr %i.bz, align 8, !tbaa !134
  %.not115.i.i = icmp ult i64 %i.ex, %i.ey
  br i1 %.not115.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.66) #23
  br label %wb_write_padding_to_temp.exit.thread.i

bb.ag:                                            ; preds = %bb.ae
  %i.ez = load ptr, ptr %i.by, align 8, !tbaa !133
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ew ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 1            ; 3 uses
  %i.fc = zext i32 %i.fb to i64
  %i.fd = load i32, ptr %i.ci, align 4, !tbaa !139
  %i.fe = zext i32 %i.fd to i64
  %i.ff = sub nsw i64 %i.ct, %.1100.i.i
  %i.fg = add i64 %i.ff, %i.fe
  %.not116.i.i = icmp eq i64 %i.fg, %i.fc
  br i1 %.not116.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.67) #23
  br label %wb_write_padding_to_temp.exit.thread.i

bb.ai:                                            ; preds = %bb.ag
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fi = load i32, ptr %i.fh, align 1            ; 2 uses
  %i.fj = icmp ult i32 %i.fi, %i.fb
  br i1 %i.fj, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.66) #23
  br label %wb_write_padding_to_temp.exit.thread.i

bb.ak:                                            ; preds = %bb.ai
  %i.fk = sub nuw i32 %i.fi, %i.fb
  store i32 %i.fk, ptr %i.ch, align 8, !tbaa !138
  store i64 %i.ex, ptr %i.cg, align 8, !tbaa !137
  %i.fl = load i32, ptr %i.cj, align 8, !tbaa !140
  %.not117.i.i = icmp eq i32 %i.fl, 0
  br i1 %.not117.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fm = call i32 @cm_zlib_inflateReset(ptr noundef nonnull %i.ck) #23
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.fn = call i32 @cm_zlib_inflateInit_(ptr noundef nonnull %i.ck, ptr noundef nonnull @.str.53, i32 noundef 112) #23
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.098.i.i = phi i32 [ %i.fm, %bb.al ], [ %i.fn, %bb.am ]
  %.not118.i.i = icmp eq i32 %.098.i.i, 0
  br i1 %.not118.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.68) #23
  br label %wb_write_padding_to_temp.exit.thread.i

bb.ap:                                            ; preds = %bb.an
  store i32 1, ptr %i.cj, align 8, !tbaa !140
  store i64 0, ptr %i.cl, align 8, !tbaa !141
  store i64 0, ptr %i.cm, align 8, !tbaa !142
  %.pr.i.i = load i32, ptr %i.ch, align 8, !tbaa !138 ; 2 uses
  %i.fo = icmp eq i32 %.pr.i.i, 0
  br i1 %i.fo, label %bb.aq, label %.thread137.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.fp = load i64, ptr %i.ca, align 8, !tbaa !135 ; 2 uses
  %.not119152.i.i = icmp eq i64 %i.fp, 0
  br i1 %.not119152.i.i, label %zisofs_extract.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aq, %wb_consume.exit.thread141.i.i
  %.096153.i.i = phi i64 [ %i.ge, %wb_consume.exit.thread141.i.i ], [ %i.fp, %bb.aq ] ; 2 uses
  %.val120.i.i = load ptr, ptr %i.e, align 8, !tbaa !72 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.val120.i.i, i64 732
  %i.fr = getelementptr inbounds nuw i8, ptr %.val120.i.i, i64 66272
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !53 ; 2 uses
  %i.ft = sub i64 65536, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.ft
  %..096.i.i = call i64 @llvm.umin.i64(i64 %.096153.i.i, i64 %i.fs) ; 5 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fu, i8 0, i64 %..096.i.i, i1 false)
  %i.fv = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 66272 ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !53 ; 4 uses
  %i.fy = icmp ugt i64 %..096.i.i, %i.fx
  %i.fz = icmp eq i64 %i.fx, 0
  %or.cond.i.i.i = or i1 %i.fy, %i.fz
  br i1 %or.cond.i.i.i, label %wb_consume.exit.thread.i.i, label %bb.ar

wb_consume.exit.thread.i.i:                       ; preds = %.lr.ph.i.i
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.57, i64 noundef %..096.i.i, i64 noundef %i.fx) #23
  br label %wb_write_padding_to_temp.exit.thread.i

bb.ar:                                            ; preds = %.lr.ph.i.i
  %i.ga = sub nuw i64 %i.fx, %..096.i.i           ; 2 uses
  store i64 %i.ga, ptr %i.fw, align 8, !tbaa !53
  %i.gb = icmp ult i64 %i.ga, 2048
  br i1 %i.gb, label %wb_consume.exit.i.i, label %wb_consume.exit.thread141.i.i

wb_consume.exit.i.i:                              ; preds = %bb.ar
  %i.gc = call fastcc i32 @wb_write_out(ptr noundef nonnull %0) ; 2 uses
  %i.gd = icmp slt i32 %i.gc, 0
  br i1 %i.gd, label %wb_write_padding_to_temp.exit.thread.i, label %wb_consume.exit.thread141.i.i

wb_consume.exit.thread141.i.i:                    ; preds = %wb_consume.exit.i.i, %bb.ar
  %i.ge = sub nuw i64 %.096153.i.i, %..096.i.i    ; 2 uses
  %.not119.i.i = icmp eq i64 %i.ge, 0
  br i1 %.not119.i.i, label %zisofs_extract.exit.i, label %.lr.ph.i.i, !llvm.loop !143

.thread137.i.i:                                   ; preds = %bb.ap, %bb.ad
  %i.gf = phi i32 [ %.pr.i.i, %bb.ap ], [ %i.eu, %bb.ad ]
  store ptr %.1106.i.i, ptr %i.ck, align 8, !tbaa !144
  %i.gg = zext i32 %i.gf to i64
  %spec.select181.i.i = call i64 @llvm.umin.i64(i64 %.1100.i.i, i64 %i.gg)
  %spec.select.i.i195 = trunc nuw i64 %spec.select181.i.i to i32
  store i32 %spec.select.i.i195, ptr %i.cn, align 8, !tbaa !145
  %.val.i.i = load ptr, ptr %i.e, align 8, !tbaa !72 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 732
  %i.gi = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 66272
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !53 ; 2 uses
  %i.gk = sub i64 65536, %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gk
  store ptr %i.gl, ptr %i.co, align 8, !tbaa !146
  %i.gm = trunc i64 %i.gj to i32
  store i32 %i.gm, ptr %i.cp, align 8, !tbaa !147
  %i.gn = call i32 @cm_zlib_inflate(ptr noundef nonnull %i.ck, i32 noundef 0) #23 ; 2 uses
  %switch.i.i = icmp ult i32 %i.gn, 2
  br i1 %switch.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.thread137.i.i
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.69, i32 noundef %i.gn) #23
  br label %wb_write_padding_to_temp.exit.thread.i

bb.at:                                            ; preds = %.thread137.i.i
  %i.go = ptrtoint ptr %.1106.i.i to i64
  %i.gp = load ptr, ptr %i.ck, align 8, !tbaa !144
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = sub i64 %i.gq, %i.go                    ; 2 uses
  %i.gs = sub i64 %.1100.i.i, %i.gr               ; 2 uses
  %i.gt = trunc i64 %i.gr to i32
  %i.gu = load i32, ptr %i.ch, align 8, !tbaa !138
  %i.gv = sub i32 %i.gu, %i.gt
  store i32 %i.gv, ptr %i.ch, align 8, !tbaa !138
  %i.gw = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 66272 ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !53 ; 4 uses
  %i.gz = load i32, ptr %i.cp, align 8, !tbaa !147 ; 2 uses
  %i.ha = zext i32 %i.gz to i64                   ; 3 uses
  %i.hb = icmp ult i64 %i.gy, %i.ha
  %i.hc = icmp eq i64 %i.gy, 0
  %or.cond.i121.i.i = or i1 %i.hc, %i.hb
  br i1 %or.cond.i121.i.i, label %wb_consume.exit123.thread.i.i, label %bb.au

wb_consume.exit123.thread.i.i:                    ; preds = %bb.at
  %i.hd = sub nsw i64 %i.gy, %i.ha
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.57, i64 noundef %i.hd, i64 noundef %i.gy) #23
  br label %wb_write_padding_to_temp.exit.thread.i

bb.au:                                            ; preds = %bb.at
  store i64 %i.ha, ptr %i.gx, align 8, !tbaa !53
  %i.he = icmp ult i32 %i.gz, 2048
  br i1 %i.he, label %wb_consume.exit123.i.i, label %zisofs_extract.exit.i

wb_consume.exit123.i.i:                           ; preds = %bb.au
  %i.hf = call fastcc i32 @wb_write_out(ptr noundef nonnull %0) ; 2 uses
  %i.hg = icmp slt i32 %i.hf, 0
  br i1 %i.hg, label %wb_write_padding_to_temp.exit.thread.i, label %zisofs_extract.exit.i

zisofs_extract.exit.i:                            ; preds = %wb_consume.exit.thread141.i.i, %wb_consume.exit123.i.i, %bb.au, %bb.aq
  %.2101.i.i = phi i64 [ %i.gs, %bb.au ], [ %i.gs, %wb_consume.exit123.i.i ], [ %.1100.i.i, %bb.aq ], [ %.1100.i.i, %wb_consume.exit.thread141.i.i ]
  %i.hh = trunc i64 %i.ct to i32
  %i.hi = load i32, ptr %i.ci, align 4, !tbaa !139
  %i.hj = add i32 %i.hi, %i.hh
  store i32 %i.hj, ptr %i.ci, align 4, !tbaa !139
  %i.hk = sub i64 %i.ct, %.2101.i.i               ; 2 uses
  %i.hl = icmp slt i64 %i.hk, 0
  br i1 %i.hl, label %.thread.i, label %bb.av

bb.av:                                            ; preds = %zisofs_extract.exit.i, %zisofs_extract.exit.thread84.i
  %.not.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i, label %.thread.thread178.i, label %bb.n

.thread.i:                                        ; preds = %zisofs_extract.exit.i
  %i.hm = trunc i64 %i.hk to i32                  ; 2 uses
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %.thread.thread178.i, label %wb_write_padding_to_temp.exit.thread.i

.thread.thread178.i:                              ; preds = %bb.av, %.thread.i, %.preheader.i
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !112
  %i.ho = load i32, ptr %i.bc, align 4, !tbaa !118
  %i.hp = zext i32 %i.ho to i64                   ; 2 uses
  store i64 %i.hp, ptr %i.bt, align 8, !tbaa !113
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !81
  call void @archive_entry_set_size(ptr noundef %i.hr, i64 noundef %i.hp) #23
  store i8 0, ptr %i.az, align 8, !tbaa !128
  store i8 0, ptr %i.bg, align 1, !tbaa !131
  store i32 0, ptr %i.bc, align 4, !tbaa !118
  %i.hs = load i64, ptr %i.bt, align 8, !tbaa !113
  %i.ht = srem i64 %i.hs, 2048                    ; 2 uses
  %.not.i74.i = icmp eq i64 %i.ht, 0
  br i1 %.not.i74.i, label %wb_write_padding_to_temp.exit.thread.i, label %wb_write_padding_to_temp.exit.i

wb_write_padding_to_temp.exit.i:                  ; preds = %.thread.thread178.i
  %i.hu = sub nsw i64 2048, %i.ht
  %i.hv = call fastcc i32 @write_null(ptr noundef %0, i64 noundef %i.hu)
  %.fr.i = freeze i32 %i.hv
  %i.hw = icmp slt i32 %.fr.i, 0
  %spec.select89.i = select i1 %i.hw, i32 -30, i32 0
  br label %wb_write_padding_to_temp.exit.thread.i

wb_write_padding_to_temp.exit.thread.i:           ; preds = %wb_consume.exit123.i.i, %wb_consume.exit.i.i, %wb_write_padding_to_temp.exit.i, %.thread.thread178.i, %.thread.i, %wb_consume.exit123.thread.i.i, %bb.as, %wb_consume.exit.thread.i.i, %bb.ao, %bb.aj, %bb.ah, %bb.af, %bb.y, %bb.t, %bb.r, %.thread.thread.i.a
  %.3.i = phi i32 [ %i.hm, %.thread.i ], [ -30, %.thread.thread.i.a ], [ %spec.select89.i, %wb_write_padding_to_temp.exit.i ], [ 0, %.thread.thread178.i ], [ -30, %bb.ao ], [ -30, %wb_consume.exit.thread.i.i ], [ -30, %bb.aj ], [ -30, %bb.ah ], [ -30, %bb.af ], [ -30, %bb.t ], [ -30, %bb.r ], [ -30, %bb.y ], [ %i.gc, %wb_consume.exit.i.i ], [ -30, %bb.as ], [ -30, %wb_consume.exit123.thread.i.i ], [ %i.hf, %wb_consume.exit123.i.i ] ; 2 uses
  call void @free(ptr noundef %i.bv) #23
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !133
  call void @free(ptr noundef %i.hy) #23
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !140
  %.not69.i = icmp eq i32 %i.ia, 0
  br i1 %.not69.i, label %zisofs_rewind_boot_file.exit, label %bb.aw

bb.aw:                                            ; preds = %wb_write_padding_to_temp.exit.thread.i
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ic = call i32 @cm_zlib_inflateEnd(ptr noundef nonnull %i.ib) #23
  %.not70.i = icmp eq i32 %i.ic, 0
  br i1 %.not70.i, label %zisofs_rewind_boot_file.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.65) #23
  br label %zisofs_rewind_boot_file.exit.thread

zisofs_rewind_boot_file.exit.thread:              ; preds = %bb.m, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.ie

zisofs_rewind_boot_file.exit:                     ; preds = %wb_write_padding_to_temp.exit.thread.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.id = icmp slt i32 %.3.i, 0
  br i1 %i.id, label %bb.ie, label %zisofs_rewind_boot_file.exit._crit_edge

zisofs_rewind_boot_file.exit._crit_edge:          ; preds = %zisofs_rewind_boot_file.exit
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !72
  br label %bb.ay

bb.ay:                                            ; preds = %zisofs_rewind_boot_file.exit._crit_edge, %zisofs_rewind_boot_file.exit.thread243
  %i.ie = phi ptr [ %.pre, %zisofs_rewind_boot_file.exit._crit_edge ], [ %i.au, %zisofs_rewind_boot_file.exit.thread243 ] ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 66272
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !53
  %.not161 = icmp eq i64 %i.ig, 0
  br i1 %.not161, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ih = call fastcc i32 @wb_write_out(ptr noundef nonnull %0) ; 2 uses
  %i.ii = icmp slt i32 %i.ih, 0
  br i1 %i.ii, label %bb.ie, label %._crit_edge

._crit_edge:                                      ; preds = %bb.az
  %.pre335 = load ptr, ptr %i.e, align 8, !tbaa !72
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge, %bb.ay
  %i.ij = phi ptr [ %.pre335, %._crit_edge ], [ %i.ie, %bb.ay ] ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.ik = call noalias dereferenceable_or_null(200) ptr @calloc(i64 noundef 1, i64 noundef 200) #24 ; 18 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.im = call ptr @archive_entry_new2(ptr noundef nonnull %0) #23 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 32 ; 11 uses
  store ptr %i.im, ptr %i.in, align 8, !tbaa !81
  %i.io = icmp eq ptr %i.im, null
  br i1 %i.io, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef nonnull %i.ik) #23
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str.5) #23
  br label %isoent_create_boot_catalog.exit.thread

bb.be:                                            ; preds = %bb.bb
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 144
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ik, i64 176
  store ptr %i.ip, ptr %i.iq, align 8, !tbaa !87
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ij, i64 66312
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !148
  call void @archive_entry_set_pathname(ptr noundef nonnull %i.im, ptr noundef %i.is) #23
  %i.it = load ptr, ptr %i.in, align 8, !tbaa !81
  call void @archive_entry_set_size(ptr noundef %i.it, i64 noundef 2048) #23
  %i.iu = load ptr, ptr %i.in, align 8, !tbaa !81
  %i.iv = load i64, ptr %i.ij, align 8, !tbaa !19
  call void @archive_entry_set_mtime(ptr noundef %i.iu, i64 noundef %i.iv, i64 noundef 0) #23
  %i.iw = load ptr, ptr %i.in, align 8, !tbaa !81
  %i.ix = load i64, ptr %i.ij, align 8, !tbaa !19
  call void @archive_entry_set_atime(ptr noundef %i.iw, i64 noundef %i.ix, i64 noundef 0) #23
  %i.iy = load ptr, ptr %i.in, align 8, !tbaa !81
  %i.iz = load i64, ptr %i.ij, align 8, !tbaa !19
  call void @archive_entry_set_ctime(ptr noundef %i.iy, i64 noundef %i.iz, i64 noundef 0) #23
  %i.ja = load ptr, ptr %i.in, align 8, !tbaa !81
  %i.jb = call i32 @getuid() #23
  %i.jc = zext i32 %i.jb to i64
  call void @archive_entry_set_uid(ptr noundef %i.ja, i64 noundef %i.jc) #23
  %i.jd = load ptr, ptr %i.in, align 8, !tbaa !81
  %i.je = call i32 @getgid() #23
  %i.jf = zext i32 %i.je to i64
  call void @archive_entry_set_gid(ptr noundef %i.jd, i64 noundef %i.jf) #23
  %i.jg = load ptr, ptr %i.in, align 8, !tbaa !81
  call void @archive_entry_set_mode(ptr noundef %i.jg, i32 noundef 33060) #23
  %i.jh = load ptr, ptr %i.in, align 8, !tbaa !81
  call void @archive_entry_set_nlink(ptr noundef %i.jh, i32 noundef 1) #23
  %i.ji = call fastcc i32 @isofile_gen_utility_names(ptr noundef nonnull %0, ptr noundef %i.ik)
  %i.jj = icmp slt i32 %i.ji, -20
  br i1 %i.jj, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ik, i64 168
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !88 ; 2 uses
  %.not11.i.i = icmp eq ptr %i.jl, null
  br i1 %.not11.i.i, label %isofile_free.exit.i, label %.lr.ph.i.i198

.lr.ph.i.i198:                                    ; preds = %bb.bf, %.lr.ph.i.i198
  %.012.i.i199 = phi ptr [ %i.jn, %.lr.ph.i.i198 ], [ %i.jl, %bb.bf ] ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.012.i.i199, i64 24
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !89 ; 2 uses
  call void @free(ptr noundef nonnull %.012.i.i199) #23
  %.not.i.i200 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i200, label %isofile_free.exit.i, label %.lr.ph.i.i198, !llvm.loop !90

isofile_free.exit.i:                              ; preds = %.lr.ph.i.i198, %bb.bf
  %i.jo = load ptr, ptr %i.in, align 8, !tbaa !81
  call void @archive_entry_free(ptr noundef %i.jo) #23
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ik, i64 40
  call void @archive_string_free(ptr noundef nonnull %i.jp) #23
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ik, i64 64
  call void @archive_string_free(ptr noundef nonnull %i.jq) #23
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ik, i64 88
  call void @archive_string_free(ptr noundef nonnull %i.jr) #23
  %i.js = getelementptr inbounds nuw i8, ptr %i.ik, i64 112
  call void @archive_string_free(ptr noundef nonnull %i.js) #23
  call void @free(ptr noundef nonnull %i.ik) #23
  br label %isoent_create_boot_catalog.exit.thread

bb.bg:                                            ; preds = %bb.be
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ik, i64 188
  store i32 1, ptr %i.jt, align 4, !tbaa !127
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ik, i64 152
  store i64 2048, ptr %i.ju, align 8, !tbaa !113
  store ptr null, ptr %i.ik, align 8, !tbaa !92
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ij, i64 144 ; 2 uses
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !48
  store ptr %i.ik, ptr %i.jw, align 8, !tbaa !93
  store ptr %i.ik, ptr %i.jv, align 8, !tbaa !48
  %i.jx = call noalias dereferenceable_or_null(240) ptr @calloc(i64 noundef 1, i64 noundef 240) #24 ; 12 uses
  %i.jy = icmp eq ptr %i.jx, null
  br i1 %i.jy, label %bb.bh, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.bg
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  store ptr %i.ik, ptr %i.jz, align 8, !tbaa !94
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 40
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 48
  store ptr %i.ka, ptr %i.kb, align 8, !tbaa !95
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 64
  call void @__archive_rb_tree_init(ptr noundef nonnull %i.kc, ptr noundef nonnull @isoent_new.rb_ops) #23
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jx, i64 80 ; 2 uses
  store ptr null, ptr %i.kd, align 8, !tbaa !96
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jx, i64 88
  store ptr %i.kd, ptr %i.ke, align 8, !tbaa !97
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jx, i64 208 ; 2 uses
  store ptr null, ptr %i.kf, align 8, !tbaa !98
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jx, i64 216
  store ptr %i.kf, ptr %i.kg, align 8, !tbaa !99
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jx, i64 224
  store ptr null, ptr %i.kh, align 8, !tbaa !100
  %i.ki = load ptr, ptr %i.in, align 8, !tbaa !81
  %i.kj = call i32 @archive_entry_filetype(ptr noundef %i.ki) #23
  %i.kk = icmp eq i32 %i.kj, 16384
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jx, i64 232 ; 2 uses
  %i.km = load i8, ptr %i.kl, align 8
  store ptr %i.jx, ptr %i.c, align 8, !tbaa !109
  %i.kn = select i1 %i.kk, i8 3, i8 1
  %i.ko = or i8 %i.kn, %i.km
  store i8 %i.ko, ptr %i.kl, align 8
  %i.kp = call fastcc i32 @isoent_tree(ptr noundef nonnull %0, ptr noundef %i.c)
  %.not.i196 = icmp eq i32 %i.kp, 0
  br i1 %.not.i196, label %bb.bi, label %isoent_create_boot_catalog.exit.thread

bb.bh:                                            ; preds = %bb.bg
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str.5) #23
  br label %isoent_create_boot_catalog.exit.thread

bb.bi:                                            ; preds = %._crit_edge.i
  %i.kq = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ij, i64 66336
  store ptr %i.kq, ptr %i.kr, align 8, !tbaa !149
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ij, i64 66416 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 8
  %i.ku = lshr i32 %i.kt, 9
  %i.kv = and i32 %i.ku, 3
  switch i32 %i.kv, label %default.unreachable [
    i32 0, label %bb.bj
    i32 1, label %bb.bq
    i32 3, label %bb.br
    i32 2, label %bb.bs
  ]

default.unreachable:                              ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %bb.bi
end_hunk_0
begin_hunk_1_@archive_entry_clone
declare ptr @archive_entry_clone(ptr noundef) local_unnamed_addr #2

declare ptr @archive_entry_new2(ptr noundef) local_unnamed_addr #2

declare ptr @archive_entry_pathname(ptr noundef) local_unnamed_addr #2

declare ptr @archive_string_conversion_to_charset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @archive_string_conversion_from_charset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @_archive_entry_pathname_l(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #8

declare ptr @archive_entry_symlink(ptr noundef) local_unnamed_addr #2

declare void @archive_string_concat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @archive_entry_free(ptr noundef) local_unnamed_addr #2

declare void @archive_string_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @isoent_cmp_node(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !243
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !243
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.h) #25
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @isoent_cmp_key(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !243
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %1) #25
  ret i32 %i.e
}

declare void @__archive_rb_tree_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @__archive_rb_tree_find_node(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @archive_strappend_char(ptr noundef, i8 noundef signext) local_unnamed_addr #2

declare i32 @__archive_rb_tree_insert_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @archive_entry_set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @archive_entry_hardlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

declare void @archive_entry_unset_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @zisofs_init_zstream(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 584 ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !255
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  store i32 0, ptr %i.d, align 8, !tbaa !256
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 600
  store i64 0, ptr %i.e, align 8, !tbaa !257
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  store i64 0, ptr %i.f, align 8, !tbaa !258
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 696 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !57
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @cm_zlib_deflateReset(ptr noundef nonnull %i.c) #23
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 712
  %i.k = load i32, ptr %i.j, align 8, !tbaa !58
  %i.l = tail call i32 @cm_zlib_deflateInit_(ptr noundef nonnull %i.c, i32 noundef %i.k, ptr noundef nonnull @.str.53, i32 noundef 112) #23
  store i32 1, ptr %i.g, align 8, !tbaa !57
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ %i.l, %bb.c ]  ; 2 uses
  switch i32 %.0, label %bb.e [
    i32 0, label %bb.h
    i32 -6, label %bb.g
    i32 -4, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.54) #23
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str.55) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.56) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.e
  %.014 = phi i32 [ -30, %bb.e ], [ -30, %bb.f ], [ -30, %bb.g ], [ %.0, %bb.d ]
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @write_null(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 66272
  %i.d = load i64, ptr %i.c, align 8, !tbaa !53   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 732
  %i.f = sub i64 65536, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f ; 3 uses
  %.not = icmp ugt i64 %1, %i.d
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.g, i8 0, i64 %1, i1 false)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 66272 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !53   ; 4 uses
  %i.k = icmp ugt i64 %1, %i.j
  %i.l = icmp eq i64 %i.j, 0
  %or.cond.i = or i1 %i.k, %i.l
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.57, i64 noundef %1, i64 noundef %i.j) #23
  br label %wb_consume.exit

bb.d:                                             ; preds = %bb.b
  %i.m = sub nuw i64 %i.j, %1                     ; 2 uses
  store i64 %i.m, ptr %i.i, align 8, !tbaa !53
  %i.n = icmp ult i64 %i.m, 2048
  br i1 %i.n, label %bb.e, label %wb_consume.exit

bb.e:                                             ; preds = %bb.d
  %i.o = tail call fastcc i32 @wb_write_out(ptr noundef nonnull %0)
  br label %wb_consume.exit

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.g, i8 0, i64 %i.d, i1 false)
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 66272 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !53   ; 4 uses
  %i.s = icmp ugt i64 %i.d, %i.r
  %i.t = icmp eq i64 %i.r, 0
  %or.cond.i48 = or i1 %i.s, %i.t
  br i1 %or.cond.i48, label %wb_consume.exit50.thread56, label %bb.g

wb_consume.exit50.thread56:                       ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.57, i64 noundef %i.d, i64 noundef %i.r) #23
  br label %wb_consume.exit

bb.g:                                             ; preds = %bb.f
  %i.u = sub nuw i64 %i.r, %i.d                   ; 3 uses
  store i64 %i.u, ptr %i.q, align 8, !tbaa !53
  %i.v = icmp ult i64 %i.u, 2048
  br i1 %i.v, label %wb_consume.exit50, label %wb_consume.exit50.thread

wb_consume.exit50:                                ; preds = %bb.g
  %i.w = tail call fastcc i32 @wb_write_out(ptr noundef nonnull %0) ; 2 uses
  %.not44 = icmp eq i32 %i.w, 0
  br i1 %.not44, label %wb_consume.exit50.wb_consume.exit50.thread_crit_edge, label %wb_consume.exit

wb_consume.exit50.wb_consume.exit50.thread_crit_edge: ; preds = %wb_consume.exit50
  %.val.pre = load ptr, ptr %i.a, align 8, !tbaa !72 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.pre, i64 66272
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !53
  br label %wb_consume.exit50.thread

wb_consume.exit50.thread:                         ; preds = %wb_consume.exit50.wb_consume.exit50.thread_crit_edge, %bb.g
  %i.x = phi i64 [ %.pre, %wb_consume.exit50.wb_consume.exit50.thread_crit_edge ], [ %i.u, %bb.g ]
  %.val = phi ptr [ %.val.pre, %wb_consume.exit50.wb_consume.exit50.thread_crit_edge ], [ %i.p, %bb.g ]
  %i.y = sub nuw i64 %1, %i.d
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 732
  %i.aa = sub i64 65536, %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa ; 2 uses
  %i.ac = ptrtoint ptr %i.g to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ab, i8 0, i64 %i.ae, i1 false)
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 66272
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !53
  br label %bb.h

bb.h:                                             ; preds = %wb_consume.exit53, %wb_consume.exit50.thread
  %.035 = phi i64 [ %i.y, %wb_consume.exit50.thread ], [ %i.aq, %wb_consume.exit53 ] ; 3 uses
  %.not45 = icmp eq i64 %.035, 0
  br i1 %.not45, label %wb_consume.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.035, i64 %i.ah) ; 4 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 66272 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !53 ; 4 uses
  %i.al = icmp ugt i64 %spec.select, %i.ak
  %i.am = icmp eq i64 %i.ak, 0
  %or.cond.i51 = or i1 %i.al, %i.am
  br i1 %or.cond.i51, label %wb_consume.exit53.thread, label %bb.j

wb_consume.exit53.thread:                         ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.57, i64 noundef %spec.select, i64 noundef %i.ak) #23
  br label %wb_consume.exit

bb.j:                                             ; preds = %bb.i
  %i.an = sub nuw i64 %i.ak, %spec.select         ; 2 uses
  store i64 %i.an, ptr %i.aj, align 8, !tbaa !53
  %i.ao = icmp ult i64 %i.an, 2048
  br i1 %i.ao, label %bb.k, label %wb_consume.exit53

bb.k:                                             ; preds = %bb.j
  %i.ap = tail call fastcc i32 @wb_write_out(ptr noundef nonnull %0)
  br label %wb_consume.exit53

wb_consume.exit53:                                ; preds = %bb.j, %bb.k
  %.0.i52 = phi i32 [ 0, %bb.j ], [ %i.ap, %bb.k ] ; 2 uses
  %.not46 = icmp eq i32 %.0.i52, 0
  %i.aq = sub nuw i64 %.035, %spec.select
  br i1 %.not46, label %bb.h, label %wb_consume.exit, !llvm.loop !259

wb_consume.exit:                                  ; preds = %bb.h, %wb_consume.exit53, %wb_consume.exit53.thread, %wb_consume.exit50.thread56, %bb.e, %bb.d, %bb.c, %wb_consume.exit50
  %.2 = phi i32 [ -30, %wb_consume.exit50.thread56 ], [ %i.w, %wb_consume.exit50 ], [ -30, %wb_consume.exit53.thread ], [ -30, %bb.c ], [ %i.o, %bb.e ], [ 0, %bb.d ], [ %.0.i52, %wb_consume.exit53 ], [ 0, %bb.h ]
  ret i32 %.2
}

declare i32 @cm_zlib_deflateReset(ptr noundef) local_unnamed_addr #2

declare i32 @cm_zlib_deflateInit_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @wb_consume(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 66272 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !53   ; 4 uses
  %i.e = icmp ugt i64 %1, %i.d
  %i.f = icmp eq i64 %i.d, 0
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.57, i64 noundef %1, i64 noundef %i.d) #23
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = sub nuw i64 %i.d, %1                     ; 2 uses
  store i64 %i.g, ptr %i.c, align 8, !tbaa !53
  %i.h = icmp ult i64 %i.g, 2048
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call fastcc i32 @wb_write_out(ptr noundef nonnull %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ -30, %bb.b ], [ %i.i, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @wb_write_out(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 66272 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !53
  %i.e = sub i64 65536, %i.d                      ; 4 uses
  %i.f = and i64 %i.e, 2047                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 66280
  %i.h = load i32, ptr %i.g, align 8, !tbaa !54
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 732
  %i.k = and i64 %i.e, -2048                      ; 2 uses
  %i.l = tail call i32 @__archive_write_output(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i64 noundef %i.k) #23
  br label %write_to_temp.exit

bb.c:                                             ; preds = %bb.a
  %i.m = and i64 %i.e, -2048                      ; 4 uses
  %.not15.i = icmp eq i64 %i.m, 0
  br i1 %.not15.i, label %write_to_temp.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 732
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %.017.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.v, %bb.f ] ; 2 uses
  %.01216.i = phi i64 [ %i.m, %.lr.ph.i ], [ %i.u, %bb.f ] ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !38
  %i.q = tail call i64 @write(i32 noundef %i.p, ptr noundef %.017.i, i64 noundef %.01216.i) #23 ; 3 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = tail call ptr @__errno_location() #26
  %i.t = load i32, ptr %i.s, align 4, !tbaa !104
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef %i.t, ptr noundef nonnull @.str.58) #23
  br label %write_to_temp.exit

bb.f:                                             ; preds = %bb.d
  %i.u = sub i64 %.01216.i, %i.q                  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.017.i, i64 %i.q
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %write_to_temp.exit, label %bb.d, !llvm.loop !222

write_to_temp.exit:                               ; preds = %bb.f, %bb.e, %bb.c, %bb.b
  %.pre-phi = phi i64 [ %i.k, %bb.b ], [ %i.m, %bb.e ], [ 0, %bb.c ], [ %i.m, %bb.f ]
  %.0 = phi i32 [ %i.l, %bb.b ], [ -30, %bb.e ], [ 0, %bb.c ], [ 0, %bb.f ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 66288 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !111
  %i.y = add i64 %i.x, %.pre-phi                  ; 3 uses
  store i64 %i.y, ptr %i.w, align 8, !tbaa !111
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 66296 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !260
  %i.ab = icmp sgt i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %write_to_temp.exit
  store i64 %i.y, ptr %i.z, align 8, !tbaa !260
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %write_to_temp.exit
  store i64 65536, ptr %i.c, align 8, !tbaa !53
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = sub nuw nsw i64 65536, %i.f
  store i64 %i.ac, ptr %i.c, align 8, !tbaa !53
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 732 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.e
  %i.af = sub nsw i64 0, %i.f
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 %i.af
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ad, ptr nonnull align 1 %i.ag, i64 %i.f, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret i32 %.0
}

declare i32 @__archive_write_output(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc noundef i64 @write_iso9660_data(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.46) #23
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.g = load i32, ptr %i.f, align 8, !tbaa !106
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !122  ; 2 uses
  %i.n = add i64 %i.m, %2
  %i.o = icmp ugt i64 %i.n, 4294965247
  br i1 %i.o, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.p = sub nsw i64 4294965248, %i.m             ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 472 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8               ; 2 uses
  %i.s = and i8 %i.r, 1
  %.not60 = icmp eq i8 %i.s, 0
  br i1 %.not60, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @zisofs_detect_magic(ptr nonnull %i.b, ptr noundef %1, i64 noundef %i.p)
  %.pre = load i8, ptr %i.q, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = phi i8 [ %.pre, %bb.f ], [ %i.r, %bb.e ]
  %i.u = and i8 %i.t, 2
  %.not61 = icmp eq i8 %i.u, 0
  br i1 %.not61, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = tail call fastcc i32 @zisofs_write_to_temp(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.p)
  %.not63 = icmp eq i32 %i.v, 0
  br i1 %.not63, label %._crit_edge, label %.critedge

._crit_edge:                                      ; preds = %bb.h
  %.pre72 = load ptr, ptr %i.h, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre72, i64 176
  %.pre73 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !87 ; 2 uses
  %.phi.trans.insert74 = getelementptr inbounds nuw i8, ptr %.pre73, i64 8
  %.pre75 = load i64, ptr %.phi.trans.insert74, align 8, !tbaa !122
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.w = tail call fastcc i32 @wb_write_to_temp(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.p)
  %.not62 = icmp eq i32 %i.w, 0
  br i1 %.not62, label %bb.j, label %.critedge

end_hunk_1
begin_hunk_2_@zisofs_write_to_temp:bb.a
._crit_edge.thread:                               ; preds = %.thread, %bb.f
  store i32 0, ptr %i.q, align 8, !tbaa !267
  br label %bb.l

bb.h:                                             ; preds = %.loopexit107
  %.not95115 = icmp eq i32 %i.ad, 0
  br i1 %.not95115, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %wb_consume.exit.thread
  %i.be = load i64, ptr %i.u, align 8, !tbaa !269
  %i.bf = tail call i32 @cm_zlib_deflate(ptr noundef nonnull %i.f, i32 noundef %.1) #23 ; 2 uses
  %switch = icmp ult i32 %i.bf, 2
  br i1 %switch, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph
  %i.bg = load i64, ptr %i.u, align 8, !tbaa !269
  %i.bh = sub i64 %i.bg, %i.be                    ; 5 uses
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !72  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 66272 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !53 ; 4 uses
  %i.bl = icmp ugt i64 %i.bh, %i.bk
  %i.bm = icmp eq i64 %i.bk, 0
  %or.cond.i = or i1 %i.bl, %i.bm
  br i1 %or.cond.i, label %wb_consume.exit.thread103, label %bb.j

wb_consume.exit.thread103:                        ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.57, i64 noundef %i.bh, i64 noundef %i.bk) #23
  br label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.bn = sub nuw i64 %i.bk, %i.bh                ; 3 uses
  store i64 %i.bn, ptr %i.bj, align 8, !tbaa !53
  %i.bo = icmp ult i64 %i.bn, 2048
  br i1 %i.bo, label %wb_consume.exit, label %wb_consume.exit.thread

wb_consume.exit:                                  ; preds = %bb.j
  %i.bp = tail call fastcc i32 @wb_write_out(ptr noundef nonnull %0)
  %.not98 = icmp eq i32 %i.bp, 0
  br i1 %.not98, label %wb_consume.exit.wb_consume.exit.thread_crit_edge, label %.loopexit

wb_consume.exit.wb_consume.exit.thread_crit_edge: ; preds = %wb_consume.exit
  %.val.pre = load ptr, ptr %i.a, align 8, !tbaa !72 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.pre, i64 66272
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !53
  br label %wb_consume.exit.thread

wb_consume.exit.thread:                           ; preds = %wb_consume.exit.wb_consume.exit.thread_crit_edge, %bb.j
  %i.bq = phi i64 [ %.pre, %wb_consume.exit.wb_consume.exit.thread_crit_edge ], [ %i.bn, %bb.j ] ; 2 uses
  %.val = phi ptr [ %.val.pre, %wb_consume.exit.wb_consume.exit.thread_crit_edge ], [ %i.bi, %bb.j ]
  %i.br = load i64, ptr %i.t, align 8, !tbaa !117
  %i.bs = add i64 %i.br, %i.bh
  store i64 %i.bs, ptr %i.t, align 8, !tbaa !117
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 176
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !87
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !122
  %i.by = add i64 %i.bx, %i.bh
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !122
  %i.bz = getelementptr inbounds nuw i8, ptr %.val, i64 732
  %i.ca = sub i64 65536, %i.bq
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  store ptr %i.cb, ptr %i.l, align 8, !tbaa !263
  %i.cc = trunc i64 %i.bq to i32
  store i32 %i.cc, ptr %i.n, align 8, !tbaa !264
  %i.cd = load i32, ptr %i.q, align 8, !tbaa !267
  %.not95 = icmp eq i32 %i.cd, 0
  br i1 %.not95, label %._crit_edge, label %.lr.ph, !llvm.loop !270

bb.k:                                             ; preds = %.lr.ph
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.60, i32 noundef %i.bf) #23
  br label %.loopexit

._crit_edge:                                      ; preds = %wb_consume.exit.thread, %bb.h
  br i1 %.not150.not154, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.ce = load i32, ptr %i.v, align 4, !tbaa !251
  %i.cf = add nsw i32 %i.ce, 1                    ; 2 uses
  store i32 %i.cf, ptr %i.v, align 4, !tbaa !251
  %i.cg = load ptr, ptr %i.w, align 8, !tbaa !121
  %i.ch = sext i32 %i.cf to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load i64, ptr %i.t, align 8, !tbaa !117
  %i.ck = trunc i64 %i.cj to i32
  store i32 %i.ck, ptr %i.ci, align 1
  %i.cl = tail call fastcc i32 @zisofs_init_zstream(ptr noundef %0)
  %.not96 = icmp eq i32 %i.cl, 0
  br i1 %.not96, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.cm = load i8, ptr %i.e, align 8
  %i.cn = or i8 %i.cm, 4
  store i8 %i.cn, ptr %i.e, align 8
  %i.co = load ptr, ptr %i.s, align 8, !tbaa !87
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !122
  store i64 %i.cq, ptr %i.r, align 8, !tbaa !254
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.m
  %.not97 = icmp eq i64 %i.an, 0
  br i1 %.not97, label %.loopexit, label %bb.b, !llvm.loop !271

.loopexit:                                        ; preds = %bb.g, %bb.n, %bb.l, %wb_consume.exit, %wb_consume.exit.thread103, %bb.k
  %.4 = phi i32 [ -30, %bb.k ], [ -30, %wb_consume.exit ], [ -30, %wb_consume.exit.thread103 ], [ %i.ax, %bb.g ], [ -30, %bb.l ], [ 0, %bb.n ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @wb_write_to_temp(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 66272
  %i.d = load i64, ptr %i.c, align 8, !tbaa !53
  %i.e = icmp eq i64 %i.d, 65536
  %i.f = icmp ugt i64 %2, 16384
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %.lr.ph.i, label %bb.f

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = and i64 %2, 2047                         ; 2 uses
  %i.h = and i64 %2, -2048                        ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 66288 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !111
  %i.k = add i64 %i.j, %i.h
  store i64 %i.k, ptr %i.i, align 8, !tbaa !111
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.017.i = phi ptr [ %1, %.lr.ph.i ], [ %i.q, %bb.c ] ; 2 uses
  %.01216.i = phi i64 [ %i.h, %.lr.ph.i ], [ %i.p, %bb.c ] ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !38
  %i.n = tail call i64 @write(i32 noundef %i.m, ptr noundef %.017.i, i64 noundef %.01216.i) #23 ; 3 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %write_to_temp.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = sub i64 %.01216.i, %i.n                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.017.i, i64 %i.n
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.d, label %bb.b, !llvm.loop !222

write_to_temp.exit:                               ; preds = %bb.b
  %i.r = tail call ptr @__errno_location() #26
  %i.s = load i32, ptr %i.r, align 4, !tbaa !104
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef %i.s, ptr noundef nonnull @.str.58) #23
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %i.t = icmp eq i64 %i.g, 0
  br i1 %i.t, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.139 = phi ptr [ %i.u, %bb.e ], [ %1, %bb.a ]
  %.036 = phi i64 [ %i.g, %bb.e ], [ %2, %bb.a ]  ; 2 uses
  %.not4763 = icmp eq i64 %.036, 0
  br i1 %.not4763, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.backedge
  %.13765 = phi i64 [ %.137.be, %.backedge ], [ %.036, %bb.f ] ; 2 uses
  %.24064 = phi ptr [ %.240.be, %.backedge ], [ %.139, %bb.f ] ; 2 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 66272
  %i.x = load i64, ptr %i.w, align 8, !tbaa !53   ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.13765, i64 %i.x) ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 732
  %i.z = sub i64 65536, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %.24064, i64 %spec.select, i1 false)
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 66272 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !53 ; 4 uses
  %i.ae = icmp ugt i64 %spec.select, %i.ad
  %i.af = icmp eq i64 %i.ad, 0
  %or.cond.i = or i1 %i.ae, %i.af
  br i1 %or.cond.i, label %wb_consume.exit.thread, label %bb.g

wb_consume.exit.thread:                           ; preds = %.lr.ph
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.57, i64 noundef %spec.select, i64 noundef %i.ad) #23
  br label %.thread

bb.g:                                             ; preds = %.lr.ph
  %i.ag = sub nuw i64 %i.ad, %spec.select         ; 2 uses
  store i64 %i.ag, ptr %i.ac, align 8, !tbaa !53
  %i.ah = icmp ult i64 %i.ag, 2048
  br i1 %i.ah, label %.split, label %.backedge

.split:                                           ; preds = %bb.g
  %i.ai = tail call fastcc i32 @wb_write_out(ptr noundef nonnull %0)
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %.backedge, label %.thread

.backedge:                                        ; preds = %bb.g, %.split
  %.137.be = sub nuw i64 %.13765, %spec.select    ; 2 uses
  %.240.be = getelementptr inbounds nuw i8, ptr %.24064, i64 %spec.select
  %.not47 = icmp eq i64 %.137.be, 0
  br i1 %.not47, label %.thread, label %.lr.ph, !llvm.loop !119

.thread:                                          ; preds = %.split, %.backedge, %bb.f, %bb.d, %write_to_temp.exit, %wb_consume.exit.thread
  %.4 = phi i32 [ 0, %bb.d ], [ -30, %wb_consume.exit.thread ], [ -30, %write_to_temp.exit ], [ 0, %bb.f ], [ 0, %.backedge ], [ -30, %.split ]
  ret i32 %.4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @wb_set_offset(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 66280
  %i.d = load i32, ptr %i.c, align 8, !tbaa !54
  %.not = icmp eq i32 %i.d, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.61) #23
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 66272 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !53
  %i.g = sub i64 65536, %i.f                      ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 66288 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !111  ; 4 uses
  %i.j = add nsw i64 %i.i, %i.g                   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 66304 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !272  ; 2 uses
  %i.m = icmp sgt i64 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 %i.j, ptr %i.k, align 8, !tbaa !272
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi i64 [ %i.j, %bb.d ], [ %i.l, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 66296 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !260  ; 2 uses
  %i.q = icmp slt i64 %i.i, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = icmp sgt i64 %i.g, 0
  br i1 %i.r, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 732
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i
  %.017.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.y, %bb.h ] ; 2 uses
  %.01216.i = phi i64 [ %i.g, %.lr.ph.i ], [ %i.x, %bb.h ] ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !38
  %i.v = tail call i64 @write(i32 noundef %i.u, ptr noundef %.017.i, i64 noundef %.01216.i) #23 ; 3 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %write_to_temp.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = sub i64 %.01216.i, %i.v                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.017.i, i64 %i.v
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %.thread.loopexit, label %bb.g, !llvm.loop !222

write_to_temp.exit:                               ; preds = %bb.g
  %i.z = tail call ptr @__errno_location() #26
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !104
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef %i.aa, ptr noundef nonnull @.str.58) #23
  br label %.loopexit

bb.i:                                             ; preds = %bb.e
  %i.ab = icmp slt i64 %1, %i.i
  br i1 %i.ab, label %bb.j, label %bb.l

.thread.loopexit:                                 ; preds = %bb.h
  %.pre = load i64, ptr %i.o, align 8, !tbaa !260
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.f
  %i.ac = phi i64 [ %.pre, %.thread.loopexit ], [ %i.p, %bb.f ] ; 2 uses
  store i64 %i.ac, ptr %i.h, align 8, !tbaa !111
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !38
  %i.af = tail call i64 @lseek(i32 noundef %i.ae, i64 noundef %i.ac, i32 noundef 0) #23 ; 0 uses
  store i64 65536, ptr %i.e, align 8, !tbaa !53
  %i.ag = load i64, ptr %i.h, align 8, !tbaa !111 ; 2 uses
  %i.ah = icmp slt i64 %1, %i.ag
  br i1 %i.ah, label %.thread68, label %.thread._crit_edge

.thread._crit_edge:                               ; preds = %.thread
  %.pre75 = load i64, ptr %i.k, align 8, !tbaa !272
  br label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp sgt i64 %i.g, 0
  br i1 %i.ai, label %bb.k, label %.thread68

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call fastcc i32 @wb_write_out(ptr noundef nonnull %0)
  %.not63 = icmp eq i32 %i.aj, 0
  br i1 %.not63, label %.thread68, label %.loopexit

.thread68:                                        ; preds = %.thread, %bb.k, %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !38
  %i.am = tail call i64 @lseek(i32 noundef %i.al, i64 noundef %1, i32 noundef 0) #23 ; 0 uses
  store i64 %1, ptr %i.h, align 8, !tbaa !111
  br label %.sink.split

bb.l:                                             ; preds = %.thread._crit_edge, %bb.i
  %i.an = phi i64 [ %.pre75, %.thread._crit_edge ], [ %i.n, %bb.i ] ; 3 uses
  %i.ao = phi i64 [ %i.ag, %.thread._crit_edge ], [ %i.i, %bb.i ] ; 2 uses
  %.not58 = icmp sgt i64 %1, %i.an
  br i1 %.not58, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %reass.sub = sub i64 %i.ao, %1
  %i.ap = add i64 %reass.sub, 65536
  br label %.sink.split

bb.n:                                             ; preds = %bb.l
  %i.aq = sub nsw i64 %1, %i.an                   ; 3 uses
  %.neg = add i64 %i.ao, 65536
  %i.ar = sub i64 %.neg, %i.an                    ; 3 uses
  store i64 %i.ar, ptr %i.e, align 8, !tbaa !53
  %.not5973 = icmp slt i64 %i.aq, %i.ar
  br i1 %.not5973, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %bb.o
  %i.as = phi i64 [ %i.au, %bb.o ], [ %i.ar, %bb.n ]
  %.074 = phi i64 [ %i.av, %bb.o ], [ %i.aq, %bb.n ]
  %i.at = tail call fastcc i32 @write_null(ptr noundef %0, i64 noundef %i.as)
  %.not61 = icmp eq i32 %i.at, 0
  br i1 %.not61, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %.lr.ph
  %i.au = load i64, ptr %i.e, align 8, !tbaa !53  ; 3 uses
  %i.av = sub i64 %.074, %i.au                    ; 3 uses
  %.not59 = icmp slt i64 %i.av, %i.au
  br i1 %.not59, label %._crit_edge, label %.lr.ph, !llvm.loop !273

._crit_edge:                                      ; preds = %bb.o, %bb.n
  %.0.lcssa = phi i64 [ %i.aq, %bb.n ], [ %i.av, %bb.o ] ; 2 uses
  %i.aw = icmp sgt i64 %.0.lcssa, 0
  br i1 %i.aw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge
  %i.ax = tail call fastcc i32 @write_null(ptr noundef %0, i64 noundef %.0.lcssa)
  %.not60 = icmp eq i32 %i.ax, 0
  br i1 %.not60, label %bb.q, label %.loopexit

.sink.split:                                      ; preds = %.thread68, %bb.m
  %.sink = phi i64 [ %i.ap, %bb.m ], [ 65536, %.thread68 ]
  store i64 %.sink, ptr %i.e, align 8, !tbaa !53
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.p, %._crit_edge
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %write_to_temp.exit, %bb.p, %bb.k, %bb.q, %bb.b
  %.050 = phi i32 [ -30, %bb.b ], [ -30, %bb.p ], [ -30, %write_to_temp.exit ], [ 0, %bb.q ], [ -30, %bb.k ], [ -30, %.lr.ph ]
  ret i32 %.050
}

declare i32 @cm_zlib_deflate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #12

declare void @archive_entry_set_size(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal fastcc void @isoent_setup_directory_location(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) initializes((44, 48)) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !274
  %i.b = load ptr, ptr %2, align 8, !tbaa !170
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 66416
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.034 = phi i32 [ %1, %bb.a ], [ %i.bb, %.loopexit ] ; 2 uses
  %.031 = phi ptr [ %i.b, %bb.a ], [ %.3, %.loopexit ] ; 13 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %.2, %.loopexit ] ; 4 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !275
  %i.g = tail call fastcc i32 @set_directory_record(ptr noundef null, i64 noundef -1, ptr noundef %.031, ptr noundef readonly %0, i32 noundef 1, i32 noundef %i.f)
  %i.h = load i32, ptr %i.c, align 8, !tbaa !275
end_hunk_2
