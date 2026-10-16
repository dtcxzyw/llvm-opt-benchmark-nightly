Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Cimage?download=true
inline.NumInlined: 20
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@H5C__load_cache_image:bb.a
  br i1 %i.asx, label %._crit_edge716.i, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.ato = getelementptr inbounds nuw i8, ptr %.pre718.i, i64 32
  %i.atp = load i64, ptr %i.ato, align 8, !tbaa !134
  %i.atq = getelementptr inbounds i8, ptr %i.ass, i64 %i.atp
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atq, i64 8
  store ptr %i.asv, ptr %i.atr, align 8, !tbaa !158
  br label %._crit_edge716.i

._crit_edge716.i:                                 ; preds = %bb.ja, %bb.iz
  %i.ats = getelementptr inbounds nuw i8, ptr %.sink904.i, i64 68
  %i.att = load i32, ptr %i.ats, align 4, !tbaa !156
  %i.atu = getelementptr inbounds nuw i8, ptr %.pre718.i, i64 8
  %i.atv = load i32, ptr %i.atu, align 8, !tbaa !130
  %i.atw = add i32 %i.atv, -1
  %i.atx = and i32 %i.atw, %i.att
  %i.aty = load ptr, ptr %.pre718.i, align 8, !tbaa !131
  %i.atz = zext i32 %i.atx to i64
  %i.aua = getelementptr inbounds nuw [16 x i8], ptr %i.aty, i64 %i.atz ; 3 uses
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aua, i64 8 ; 2 uses
  %i.auc = load i32, ptr %i.aub, align 8, !tbaa !148
  %i.aud = add i32 %i.auc, -1
  store i32 %i.aud, ptr %i.aub, align 8, !tbaa !148
  %i.aue = load ptr, ptr %i.aua, align 8, !tbaa !133
  %i.auf = icmp eq ptr %i.aue, %i.ast
  %i.aug = getelementptr inbounds nuw i8, ptr %.sink904.i, i64 48
  %i.auh = load ptr, ptr %i.aug, align 8, !tbaa !155 ; 4 uses
  br i1 %i.auf, label %bb.jb, label %._crit_edge716.i._crit_edge

bb.jb:                                            ; preds = %._crit_edge716.i
  store ptr %i.auh, ptr %i.aua, align 8, !tbaa !133
  br label %._crit_edge716.i._crit_edge

._crit_edge716.i._crit_edge:                      ; preds = %._crit_edge716.i, %bb.jb
  %i.aui = getelementptr inbounds nuw i8, ptr %.sink904.i, i64 40
  %i.auj = load ptr, ptr %i.aui, align 8, !tbaa !150 ; 3 uses
  %.not409.i = icmp eq ptr %i.auj, null
  br i1 %.not409.i, label %._crit_edge719.i, label %bb.jc

bb.jc:                                            ; preds = %._crit_edge716.i._crit_edge
  %i.auk = getelementptr inbounds nuw i8, ptr %i.auj, i64 32
  store ptr %i.auh, ptr %i.auk, align 8, !tbaa !155
  br label %._crit_edge719.i

._crit_edge719.i:                                 ; preds = %bb.jc, %._crit_edge716.i._crit_edge
  %.not410.i = icmp eq ptr %i.auh, null
  br i1 %.not410.i, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %._crit_edge719.i
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auh, i64 24
  store ptr %i.auj, ptr %i.aul, align 8, !tbaa !150
  br label %bb.je

bb.je:                                            ; preds = %._crit_edge719.i, %bb.jd
  %i.aum = getelementptr inbounds nuw i8, ptr %.pre718.i, i64 16 ; 2 uses
  %i.aun = load i32, ptr %i.aum, align 8, !tbaa !147
  %i.auo = add i32 %i.aun, -1
  store i32 %i.auo, ptr %i.aum, align 8, !tbaa !147
  %i.aup = call ptr @H5MM_xfree(ptr noundef nonnull %.sink904.i) #15 ; 0 uses
  br i1 %i.asx, label %.loopexit, label %.preheader, !llvm.loop !118

H5C__reconstruct_cache_contents.exit:             ; preds = %bb.iu, %.thread481.i, %.thread481.thread.i
  %i.auq = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.aur = load i64, ptr @H5E_CANTDECODE_g, align 8, !tbaa !56
  %i.aus = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__load_cache_image, i32 noundef 653, i64 noundef %i.auq, i64 noundef %i.aur, ptr noundef nonnull @.str.9) #15 ; 0 uses
  br label %.critedge

.loopexit:                                        ; preds = %bb.je, %H5C__read_cache_image.exit, %.thread485.i, %.thread
  %i.aut = load ptr, ptr %i.t, align 8, !tbaa !55
  %i.auu = call ptr @H5MM_xfree(ptr noundef %i.aut) #15
  store ptr %i.auu, ptr %i.t, align 8, !tbaa !55
  %i.auv = getelementptr inbounds nuw i8, ptr %i.m, i64 527634
  store i8 1, ptr %i.auv, align 2, !tbaa !27
  br label %bb.jf

bb.jf:                                            ; preds = %.loopexit, %bb.b
  %i.auw = getelementptr inbounds nuw i8, ptr %i.m, i64 527635
  %i.aux = load i8, ptr %i.auw, align 1, !tbaa !78, !range !10, !noundef !11
  %i.auy = trunc nuw i8 %i.aux to i1
  br i1 %i.auy, label %bb.jg, label %bb.jk

bb.jg:                                            ; preds = %bb.jf
  %i.auz = call i32 @H5F__super_ext_remove_msg(ptr noundef %0, i32 noundef 24) #15
  %i.ava = icmp slt i32 %i.auz, 0
  br i1 %i.ava, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  %i.avb = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.avc = load i64, ptr @H5E_CANTREMOVE_g, align 8, !tbaa !56
  %i.avd = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__load_cache_image, i32 noundef 670, i64 noundef %i.avb, i64 noundef %i.avc, ptr noundef nonnull @.str.10) #15 ; 0 uses
  br label %.critedge

bb.ji:                                            ; preds = %bb.jg
  %i.ave = getelementptr inbounds nuw i8, ptr %i.m, i64 527648
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ave, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.n, align 8, !tbaa !75
  br label %bb.jk

.critedge:                                        ; preds = %bb.jh, %H5C__reconstruct_cache_contents.exit, %bb.f, %bb.d
  %i.avf = load i64, ptr %i.n, align 8, !tbaa !75
  %.not24 = icmp eq i64 %i.avf, -1
  br i1 %.not24, label %bb.jk, label %bb.jj

bb.jj:                                            ; preds = %.critedge
  %i.avg = getelementptr inbounds nuw i8, ptr %i.m, i64 527712 ; 2 uses
  %i.avh = load ptr, ptr %i.avg, align 8, !tbaa !55
  %i.avi = call ptr @H5MM_xfree(ptr noundef %i.avh) #15
  store ptr %i.avi, ptr %i.avg, align 8, !tbaa !55
  br label %bb.jk

bb.jk:                                            ; preds = %bb.ji, %bb.jf, %bb.jj, %.critedge, %bb.a
  %.1 = phi i32 [ -1, %bb.jj ], [ -1, %.critedge ], [ 0, %bb.a ], [ 0, %bb.jf ], [ 0, %bb.ji ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

declare i32 @H5F__super_ext_remove_msg(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @H5C_load_cache_image_on_next_protect(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr @H5C_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = zext i1 %3 to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 527640
  store i64 %1, ptr %i.l, align 8, !tbaa !75
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 527648
  store i64 %2, ptr %i.m, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 527633
  store i8 1, ptr %i.n, align 1, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 527635
  store i8 %i.g, ptr %i.o, align 1, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5C__prep_image_for_file_close(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.H5O_mdci_t, align 16        ; 5 uses
  %3 = alloca %struct.H5O_mdci_t, align 16        ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 -1, ptr %i.a, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 0, ptr %i.b, align 8, !tbaa !56
  %i.c = load i8, ptr @H5C_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = xor i1 %i.f, true
  %i.h = select i1 %i.d, i1 true, i1 %i.g
  br i1 %i.h, label %bb.b, label %bb.cx, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52   ; 17 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 527633 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !26, !range !10, !noundef !11
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.m, align 1, !tbaa !26
  %i.p = tail call i32 @H5C__load_cache_image(ptr noundef nonnull %0)
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !33
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.s = load i64, ptr @H5E_CANTLOAD_g, align 8, !tbaa !56
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__prep_image_for_file_close, i32 noundef 855, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.11) #15 ; 0 uses
  br label %bb.cx

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %i.u = phi ptr [ %.pre, %._crit_edge ], [ %i.j, %bb.b ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !212  ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 248
  %i.z = load i32, ptr %i.y, align 8, !tbaa !215
  %i.aa = icmp ult i32 %i.z, 2
  br i1 %i.aa, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 1432
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !216
  %i.ad = icmp slt i32 %i.ac, 2
  br i1 %i.ad, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.e, %bb.f, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 527616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 4 dereferenceable(16) @__const.H5C_set_cache_image_config.default_image_ctl, i64 16, i1 false), !tbaa.struct !77
  br label %bb.cx

bb.h:                                             ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 527620
  %.pre60 = load i8, ptr %.phi.trans.insert, align 4, !tbaa !53, !range !10
  %i.af = trunc nuw i8 %.pre60 to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 527620
  br i1 %i.af, label %bb.i, label %bb.cx

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 527628 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !74
  %i.aj = and i32 %i.ai, 1
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.ak = load i8, ptr @H5C_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = xor i1 %i.an, true
  %i.ap = select i1 %i.al, i1 true, i1 %i.ao
  br i1 %i.ap, label %bb.k, label %H5C__write_cache_image_superblock_msg.exit.thread, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !52
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 527640
  %i.au = load <2 x i64>, ptr %i.at, align 8, !tbaa !56
  store <2 x i64> %i.au, ptr %3, align 16, !tbaa !56
  %i.av = call i32 @H5F__super_ext_write_msg(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull %3, i1 noundef zeroext true, i32 noundef 128) #15
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.l, label %H5C__write_cache_image_superblock_msg.exit.thread

H5C__write_cache_image_superblock_msg.exit.thread: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.ay = load i64, ptr @H5E_WRITEERROR_g, align 8, !tbaa !56
  %i.az = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__write_cache_image_superblock_msg, i32 noundef 2955, i64 noundef %i.ax, i64 noundef %i.ay, ptr noundef nonnull @.str.71) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.ba = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.bb = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !56
  %i.bc = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__prep_image_for_file_close, i32 noundef 898, i64 noundef %i.ba, i64 noundef %i.bb, ptr noundef nonnull @.str.12) #15 ; 0 uses
  br label %bb.cx

bb.m:                                             ; preds = %H5C__write_cache_image_superblock_msg.exit.thread, %bb.i
  %i.bd = call i32 @H5C__serialize_cache(ptr noundef nonnull %0) #15
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bf = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.bg = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !56
  %i.bh = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__prep_image_for_file_close, i32 noundef 902, i64 noundef %i.bf, i64 noundef %i.bg, ptr noundef nonnull @.str.13) #15 ; 0 uses
  br label %bb.cx

bb.o:                                             ; preds = %bb.m
  %i.bi = load i8, ptr @H5C_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = xor i1 %i.bl, true
  %i.bn = select i1 %i.bj, i1 true, i1 %i.bm
  br i1 %i.bn, label %H5C__cache_image_block_header_size.exit.i, label %.H5C__prep_for_file_close__scan_entries.exit_crit_edge, !prof !12

.H5C__prep_for_file_close__scan_entries.exit_crit_edge: ; preds = %bb.o
  %.phi.trans.insert61 = getelementptr inbounds nuw i8, ptr %i.l, i64 527656
  %.pre62 = load i64, ptr %.phi.trans.insert61, align 8, !tbaa !58
  br label %H5C__prep_for_file_close__scan_entries.exit

H5C__cache_image_block_header_size.exit.i:        ; preds = %bb.o
  %i.bo = call zeroext i8 @H5F_sizeof_size(ptr noundef nonnull %0) #15
  %i.bp = zext i8 %i.bo to i64
  %i.bq = add nuw nsw i64 %i.bp, 10               ; 5 uses
  %i.br = load i8, ptr @H5C_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = xor i1 %i.bu, true
  %i.bw = select i1 %i.bs, i1 true, i1 %i.bv
  br i1 %i.bw, label %bb.p, label %H5C__cache_image_block_entry_header_size.exit.i, !prof !12

bb.p:                                             ; preds = %H5C__cache_image_block_header_size.exit.i
  %i.bx = call zeroext i8 @H5F_sizeof_addr(ptr noundef nonnull %0) #15
  %i.by = zext i8 %i.bx to i64
  %i.bz = add nuw nsw i64 %i.by, 14
  %i.ca = call zeroext i8 @H5F_sizeof_size(ptr noundef nonnull %0) #15
  %i.cb = zext i8 %i.ca to i64
  %i.cc = add nuw nsw i64 %i.bz, %i.cb
  br label %H5C__cache_image_block_entry_header_size.exit.i

H5C__cache_image_block_entry_header_size.exit.i:  ; preds = %bb.p, %H5C__cache_image_block_header_size.exit.i
  %.0.i90.i = phi i64 [ %i.cc, %bb.p ], [ 0, %H5C__cache_image_block_header_size.exit.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 524584 ; 4 uses
  %.07895.i = load ptr, ptr %i.cd, align 8, !tbaa !95 ; 2 uses
  %.not96.i = icmp eq ptr %.07895.i, null
  br i1 %.not96.i, label %._crit_edge107.i, label %.lr.ph100.i

.lr.ph100.i:                                      ; preds = %H5C__cache_image_block_entry_header_size.exit.i, %bb.ac
  %.07897.i = phi ptr [ %.078.i, %bb.ac ], [ %.07895.i, %H5C__cache_image_block_entry_header_size.exit.i ] ; 18 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.07897.i, i64 64
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !84
  %i.cg = icmp slt i32 %i.cf, 4                   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.07897.i, i64 152
  %i.ci = zext i1 %i.cg to i8
  store i8 %i.ci, ptr %i.ch, align 8, !tbaa !97
  br i1 %i.cg, label %bb.q, label %bb.ac

bb.q:                                             ; preds = %.lr.ph100.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.07897.i, i64 156
  store i32 -1, ptr %i.cj, align 4, !tbaa !89
  %i.ck = getelementptr inbounds nuw i8, ptr %.07897.i, i64 48
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !83, !range !10, !noundef !11
  %i.cm = getelementptr inbounds nuw i8, ptr %.07897.i, i64 160
  store i8 %i.cl, ptr %i.cm, align 8, !tbaa !217
  %i.cn = getelementptr inbounds nuw i8, ptr %.07897.i, i64 200
  store i32 0, ptr %i.cn, align 8, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %.07897.i, i64 80 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !99 ; 3 uses
  %.not86.i = icmp eq i32 %i.cp, 0
  br i1 %.not86.i, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.07897.i, i64 168 ; 3 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !88 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, %i.cq
  %.not88.i = icmp eq i64 %i.cs, 0
  %or.cond.i = or i1 %i.ct, %.not88.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.07897.i, i64 176 ; 3 uses
  %.pre119.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !92 ; 2 uses
  br i1 %or.cond.i, label %._crit_edge118.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cu = call ptr @H5MM_xfree(ptr noundef %.pre119.i) #15 ; 2 uses
  store ptr %i.cu, ptr %.phi.trans.insert.i, align 8, !tbaa !92
  %.pre.i = load i32, ptr %i.co, align 8, !tbaa !99 ; 2 uses
  %.pre123.i = zext i32 %.pre.i to i64
  br label %._crit_edge118.i

._crit_edge118.i:                                 ; preds = %bb.s, %bb.r
  %.pre-phi.i = phi i64 [ %.pre123.i, %bb.s ], [ %i.cq, %bb.r ] ; 2 uses
  %i.cv = phi ptr [ %i.cu, %bb.s ], [ %.pre119.i, %bb.r ] ; 2 uses
  %i.cw = phi i32 [ %.pre.i, %bb.s ], [ %i.cp, %bb.r ]
  store i64 %.pre-phi.i, ptr %i.cr, align 8, !tbaa !88
  %i.cx = icmp eq ptr %i.cv, null
  br i1 %i.cx, label %bb.t, label %bb.v

bb.t:                                             ; preds = %._crit_edge118.i
  %i.cy = shl nuw nsw i64 %.pre-phi.i, 3
  %i.cz = call noalias ptr @malloc(i64 noundef %i.cy) #14 ; 3 uses
  store ptr %i.cz, ptr %.phi.trans.insert.i, align 8, !tbaa !92
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.db = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.dc = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !56
  %i.dd = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__prep_for_file_close__scan_entries, i32 noundef 2241, i64 noundef %i.db, i64 noundef %i.dc, ptr noundef nonnull @.str.36) #15 ; 0 uses
  br label %bb.cb

bb.v:                                             ; preds = %bb.t, %._crit_edge118.i
  %i.de = phi ptr [ %i.cz, %bb.t ], [ %i.cv, %._crit_edge118.i ]
  %i.df = icmp sgt i32 %i.cw, 0
  br i1 %i.df, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %.07897.i, i64 72
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !100
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.w ] ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv.i
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !95
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !90
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.i
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !56
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dn = load i64, ptr %i.cr, align 8, !tbaa !88
  %i.do = shl i64 %i.dn, 32
  %i.dp = ashr exact i64 %i.do, 32
  %i.dq = icmp slt i64 %indvars.iv.next.i, %i.dp
  br i1 %i.dq, label %bb.w, label %.loopexit.i, !llvm.loop !197

bb.x:                                             ; preds = %bb.q
  %i.dr = getelementptr inbounds nuw i8, ptr %.07897.i, i64 168
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !88
  %.not87.i = icmp eq i64 %i.ds, 0
  br i1 %.not87.i, label %.loopexit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dt = getelementptr inbounds nuw i8, ptr %.07897.i, i64 176 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !92
  %i.dv = call ptr @H5MM_xfree(ptr noundef %i.du) #15
  store ptr %i.dv, ptr %i.dt, align 8, !tbaa !92
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.w, %bb.y, %bb.x, %bb.v
  %i.dw = getelementptr inbounds nuw i8, ptr %.07897.i, i64 88
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !218 ; 2 uses
  %.not89.i = icmp eq i32 %i.dx, 0
  br i1 %.not89.i, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %.loopexit.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.07897.i, i64 56
  %i.dz = load i8, ptr %i.dy, align 8, !tbaa !96, !range !10, !noundef !11
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eb = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.ec = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !56
  %i.ed = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__prep_for_file_close__scan_entries, i32 noundef 2262, i64 noundef %i.eb, i64 noundef %i.ec, ptr noundef nonnull @.str.37) #15 ; 0 uses
  br label %bb.cb

bb.ab:                                            ; preds = %bb.z
  %i.ee = zext i32 %i.dx to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %.07897.i, i64 184
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !86
  %i.eg = getelementptr inbounds nuw i8, ptr %.07897.i, i64 92
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !219
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %.07897.i, i64 192
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !87
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.loopexit.i, %.lr.ph100.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.07897.i, i64 120
  %.078.i = load ptr, ptr %i.ek, align 8, !tbaa !95 ; 2 uses
  %.not.i = icmp eq ptr %.078.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph100.i, !llvm.loop !198

._crit_edge.i:                                    ; preds = %bb.ac
  %.179101.pre120.pre.i = load ptr, ptr %i.cd, align 8, !tbaa !95 ; 4 uses
  %i.el = load i8, ptr @H5C_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.em = trunc nuw i8 %i.el to i1
  %i.en = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.eo = trunc nuw i8 %i.en to i1
  %i.ep = xor i1 %i.eo, true
  %i.eq = select i1 %i.em, i1 true, i1 %i.ep
  br i1 %i.eq, label %.preheader111.i.i, label %H5C__prep_for_file_close__compute_fd_heights.exit.i, !prof !12

.preheader111.i.i:                                ; preds = %._crit_edge.i
  %.not97114.i.i = icmp eq ptr %.179101.pre120.pre.i, null
  br i1 %.not97114.i.i, label %._crit_edge107.i, label %.lr.ph117.i.i

.lr.ph117.i.i:                                    ; preds = %.preheader111.i.i, %.loopexit109.i.i
  %.084115.i.i = phi ptr [ %.084.i.i, %.loopexit109.i.i ], [ %.179101.pre120.pre.i, %.preheader111.i.i ] ; 6 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.084115.i.i, i64 160
  %i.es = load i8, ptr %i.er, align 8, !tbaa !217, !range !10, !noundef !11
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.ad, label %.loopexit109.i.i

bb.ad:                                            ; preds = %.lr.ph117.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.084115.i.i, i64 152 ; 4 uses
  %i.ev = load i8, ptr %i.eu, align 8, !tbaa !97, !range !10, !noundef !11
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.ae, label %.loopexit109.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.ex = getelementptr inbounds nuw i8, ptr %.084115.i.i, i64 168
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !88
  %.not98.i.i = icmp eq i64 %i.ey, 0
  br i1 %.not98.i.i, label %.loopexit109.i.i, label %.preheader108.i.i

.preheader108.i.i:                                ; preds = %bb.ae
  %i.ez = getelementptr inbounds nuw i8, ptr %.084115.i.i, i64 80
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !99 ; 4 uses
  %.not133.i.i = icmp eq i32 %i.fa, 0
  br i1 %.not133.i.i, label %.loopexit109.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader108.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %.084115.i.i, i64 72
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !100 ; 3 uses
  %wide.trip.count.i.i = zext i32 %i.fa to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.fd = icmp eq i32 %i.fa, 1
  br i1 %i.fd, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 4294967294
  br label %bb.af

bb.af:                                            ; preds = %bb.al, %.lr.ph.i.i.new
  %i.fe = phi i1 [ true, %.lr.ph.i.i.new ], [ %i.fx, %bb.al ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.al ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.al ]
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv.i.i
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !95 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !83, !range !10, !noundef !11
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 152
  %i.fl = load i8, ptr %i.fk, align 8, !tbaa !97, !range !10, !noundef !11
  %i.fm = trunc nuw i8 %i.fl to i1                ; 2 uses
  %.not92.i = xor i1 %i.fe, true
  %brmerge.i = select i1 %i.fm, i1 true, i1 %.not92.i
  %.mux.i = select i1 %i.fm, i1 %i.fe, i1 false
  br i1 %brmerge.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i8 0, ptr %i.eu, align 8, !tbaa !97
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.fn = phi i1 [ %i.fe, %bb.af ], [ %.mux.i, %bb.ag ], [ false, %bb.ah ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !95 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  %i.fs = load i8, ptr %i.fr, align 8, !tbaa !83, !range !10, !noundef !11
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 152
  %i.fv = load i8, ptr %i.fu, align 8, !tbaa !97, !range !10, !noundef !11
  %i.fw = trunc nuw i8 %i.fv to i1                ; 2 uses
  %.not92.i.1 = xor i1 %i.fn, true
  %brmerge.i.1 = select i1 %i.fw, i1 true, i1 %.not92.i.1
  %.mux.i.1 = select i1 %i.fw, i1 %i.fn, i1 false
  br i1 %brmerge.i.1, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.eu, align 8, !tbaa !97
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.fx = phi i1 [ %i.fn, %bb.ai ], [ %.mux.i.1, %bb.aj ], [ false, %bb.ak ] ; 2 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit109.i.i.loopexit.unr-lcssa, label %bb.af, !llvm.loop !199

.loopexit109.i.i.loopexit.unr-lcssa:              ; preds = %bb.al
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit109.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit109.i.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %.epil.init = phi i1 [ true, %.lr.ph.i.i ], [ %i.fx, %.loopexit109.i.i.loopexit.unr-lcssa ]
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %.loopexit109.i.i.loopexit.unr-lcssa ]
  %lcmp.mod87 = trunc i32 %i.fa to i1
  call void @llvm.assume(i1 %lcmp.mod87)
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv.i.i.epil.init
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !95 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 48
  %i.gb = load i8, ptr %i.ga, align 8, !tbaa !83, !range !10, !noundef !11
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %bb.am, label %.loopexit109.i.i

bb.am:                                            ; preds = %.epil.preheader
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 152
  %i.ge = load i8, ptr %i.gd, align 8, !tbaa !97, !range !10, !noundef !11
  %i.gf = trunc nuw i8 %i.ge to i1
  %.not92.i.epil = xor i1 %.epil.init, true
  %brmerge.i.epil = select i1 %i.gf, i1 true, i1 %.not92.i.epil
  br i1 %brmerge.i.epil, label %.loopexit109.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 0, ptr %i.eu, align 8, !tbaa !97
  br label %.loopexit109.i.i

.loopexit109.i.i:                                 ; preds = %.loopexit109.i.i.loopexit.unr-lcssa, %bb.an, %bb.am, %.epil.preheader, %.preheader108.i.i, %bb.ae, %bb.ad, %.lr.ph117.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.084115.i.i, i64 120
  %.084.i.i = load ptr, ptr %i.gg, align 8, !tbaa !95 ; 2 uses
  %.not97.i.i = icmp eq ptr %.084.i.i, null
  br i1 %.not97.i.i, label %.lr.ph125.i.i.a, label %.lr.ph117.i.i, !llvm.loop !200

.preheader102.i.i:                                ; preds = %.thread99.i.i
  %.286128.pre.i.i = load ptr, ptr %i.cd, align 8, !tbaa !95 ; 2 uses
  %.not92129.i.i = icmp eq ptr %.286128.pre.i.i, null
  br i1 %.not92129.i.i, label %._crit_edge107.i, label %.lr.ph132.i.i

.lr.ph125.i.i.a:                                  ; preds = %.loopexit109.i.i, %.thread99.i.i
  %.185124.i.i = phi ptr [ %.185.i.i, %.thread99.i.i ], [ %.179101.pre120.pre.i, %.loopexit109.i.i ] ; 8 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.185124.i.i, i64 152
  %i.gi = load i8, ptr %i.gh, align 8, !tbaa !97, !range !10, !noundef !11
  %i.gj = trunc nuw i8 %i.gi to i1
  %i.gk = getelementptr inbounds nuw i8, ptr %.185124.i.i, i64 80
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !99 ; 7 uses
  %.not95.i.i = icmp eq i32 %i.gl, 0              ; 2 uses
  br i1 %i.gj, label %bb.aw, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph125.i.i.a
  br i1 %.not95.i.i, label %.thread99.i.i, label %.preheader106.i.i

.preheader106.i.i:                                ; preds = %bb.ao
  %i.gm = getelementptr inbounds nuw i8, ptr %.185124.i.i, i64 72
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !100 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.185124.i.i, i64 48 ; 3 uses
  %wide.trip.count140.i.i = zext i32 %i.gl to i64 ; 2 uses
  %xtraiter89 = and i64 %wide.trip.count140.i.i, 1
  %i.gp = icmp eq i32 %i.gl, 1
  br i1 %i.gp, label %.epil.preheader88, label %.preheader106.i.i.new

.preheader106.i.i.new:                            ; preds = %.preheader106.i.i
  %unroll_iter92 = and i64 %wide.trip.count140.i.i, 4294967294
  br label %bb.ap

bb.ap:                                            ; preds = %bb.av, %.preheader106.i.i.new
  %indvars.iv137.i.i = phi i64 [ 0, %.preheader106.i.i.new ], [ %indvars.iv.next138.i.i.1, %bb.av ] ; 3 uses
  %niter93 = phi i64 [ 0, %.preheader106.i.i.new ], [ %niter93.next.1, %bb.av ]
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv137.i.i
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !95 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 152
  %i.gt = load i8, ptr %i.gs, align 8, !tbaa !97, !range !10, !noundef !11
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 184 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !86
  %i.gx = add i64 %i.gw, -1
  store i64 %i.gx, ptr %i.gv, align 8, !tbaa !86
  %i.gy = load i8, ptr %i.go, align 8, !tbaa !83, !range !10, !noundef !11
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gr, i64 192 ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !87
  %i.hc = add i64 %i.hb, -1
  store i64 %i.hc, ptr %i.ha, align 8, !tbaa !87
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv137.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !95 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 152
  %i.hh = load i8, ptr %i.hg, align 8, !tbaa !97, !range !10, !noundef !11
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 184 ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !86
  %i.hl = add i64 %i.hk, -1
  store i64 %i.hl, ptr %i.hj, align 8, !tbaa !86
  %i.hm = load i8, ptr %i.go, align 8, !tbaa !83, !range !10, !noundef !11
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hf, i64 192 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !87
  %i.hq = add i64 %i.hp, -1
  store i64 %i.hq, ptr %i.ho, align 8, !tbaa !87
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %indvars.iv.next138.i.i.1 = add nuw nsw i64 %indvars.iv137.i.i, 2 ; 2 uses
  %niter93.next.1 = add i64 %niter93, 2           ; 2 uses
  %niter93.ncmp.1 = icmp eq i64 %niter93.next.1, %unroll_iter92
  br i1 %niter93.ncmp.1, label %.thread99.i.i.loopexit86.unr-lcssa, label %bb.ap, !llvm.loop !201

bb.aw:                                            ; preds = %.lr.ph125.i.i.a
  br i1 %.not95.i.i, label %.thread99.i.i, label %.preheader105.i.i

.preheader105.i.i:                                ; preds = %bb.aw
  %i.hr = getelementptr inbounds nuw i8, ptr %.185124.i.i, i64 72
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !100 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.185124.i.i, i64 176 ; 7 uses
  %wide.trip.count145.i.i = zext i32 %i.gl to i64 ; 6 uses
  %i.hu = add nsw i64 %wide.trip.count145.i.i, -1 ; 2 uses
  %xtraiter95 = and i64 %wide.trip.count145.i.i, 1
  %i.hv = icmp eq i64 %i.hu, 0
  br i1 %i.hv, label %.epil.preheader94, label %.preheader105.i.i.new

.preheader105.i.i.new:                            ; preds = %.preheader105.i.i
  %unroll_iter98 = and i64 %wide.trip.count145.i.i, 4294967294
  br label %bb.ax

bb.ax:                                            ; preds = %bb.bb, %.preheader105.i.i.new
  %indvars.iv142.i.i = phi i64 [ 0, %.preheader105.i.i.new ], [ %indvars.iv.next143.i.i.1, %bb.bb ] ; 4 uses
  %niter99 = phi i64 [ 0, %.preheader105.i.i.new ], [ %niter99.next.1, %bb.bb ]
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv142.i.i
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !95 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 152
  %i.hz = load i8, ptr %i.hy, align 8, !tbaa !97, !range !10, !noundef !11
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 184 ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !86
  %i.id = add i64 %i.ic, -1
  store i64 %i.id, ptr %i.ib, align 8, !tbaa !86
  %i.ie = load ptr, ptr %i.ht, align 8, !tbaa !92
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv142.i.i
  store i64 -1, ptr %i.if, align 8, !tbaa !56
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %indvars.iv.next143.i.i = or disjoint i64 %indvars.iv142.i.i, 1 ; 2 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next143.i.i
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !95 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 152
  %i.ij = load i8, ptr %i.ii, align 8, !tbaa !97, !range !10, !noundef !11
  %i.ik = trunc nuw i8 %i.ij to i1
  br i1 %i.ik, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 184 ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !86
  %i.in = add i64 %i.im, -1
  store i64 %i.in, ptr %i.il, align 8, !tbaa !86
  %i.io = load ptr, ptr %i.ht, align 8, !tbaa !92
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %indvars.iv.next143.i.i
  store i64 -1, ptr %i.ip, align 8, !tbaa !56
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %indvars.iv.next143.i.i.1 = add nuw nsw i64 %indvars.iv142.i.i, 2 ; 2 uses
  %niter99.next.1 = add i64 %niter99, 2           ; 2 uses
  %niter99.ncmp.1 = icmp eq i64 %niter99.next.1, %unroll_iter98
  br i1 %niter99.ncmp.1, label %.unr-lcssa, label %bb.ax, !llvm.loop !202

.unr-lcssa:                                       ; preds = %bb.bb
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %.epilog-lcssa, label %.epil.preheader94

.epil.preheader94:                                ; preds = %.unr-lcssa, %.preheader105.i.i
  %indvars.iv142.i.i.epil.init = phi i64 [ 0, %.preheader105.i.i ], [ %indvars.iv.next143.i.i.1, %.unr-lcssa ] ; 2 uses
  %lcmp.mod97 = trunc i32 %i.gl to i1
  call void @llvm.assume(i1 %lcmp.mod97)
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv142.i.i.epil.init
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !95 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 152
  %i.it = load i8, ptr %i.is, align 8, !tbaa !97, !range !10, !noundef !11
  %i.iu = trunc nuw i8 %i.it to i1
  br i1 %i.iu, label %.epilog-lcssa, label %bb.bc

bb.bc:                                            ; preds = %.epil.preheader94
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 184 ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !86
  %i.ix = add i64 %i.iw, -1
  store i64 %i.ix, ptr %i.iv, align 8, !tbaa !86
  %i.iy = load ptr, ptr %i.ht, align 8, !tbaa !92
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %indvars.iv142.i.i.epil.init
  store i64 -1, ptr %i.iz, align 8, !tbaa !56
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader94, %bb.bc, %.unr-lcssa
  %i.ja = getelementptr inbounds nuw i8, ptr %.185124.i.i, i64 168
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !88 ; 2 uses
  %i.jc = icmp eq i64 %i.jb, 0
  br i1 %i.jc, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.epilog-lcssa
  %i.jd = load ptr, ptr %i.ht, align 8, !tbaa !92
  %i.je = call ptr @H5MM_xfree(ptr noundef %i.jd) #15 ; 0 uses
  store ptr null, ptr %i.ht, align 8, !tbaa !92
  br label %.thread99.i.i

bb.be:                                            ; preds = %.epilog-lcssa
  %i.jf = icmp ult i64 %i.jb, %wide.trip.count145.i.i
  br i1 %i.jf, label %bb.bf, label %.thread99.i.i

bb.bf:                                            ; preds = %bb.be
  %i.jg = load ptr, ptr %i.ht, align 8, !tbaa !92 ; 4 uses
  %i.jh = ptrtoint ptr %i.jg to i64
  %i.ji = shl i64 %i.jh, 3
  %i.jj = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.ji) #16 ; 5 uses
  store ptr %i.jj, ptr %i.ht, align 8, !tbaa !92
  %i.jk = icmp eq ptr %i.jj, null
  br i1 %i.jk, label %bb.bs, label %.preheader104.i.i.preheader

.preheader104.i.i.preheader:                      ; preds = %bb.bf
  %xtraiter100 = and i64 %wide.trip.count145.i.i, 1
  %i.jl = icmp eq i64 %i.hu, 0
  br i1 %i.jl, label %.preheader104.i.i.epil.preheader, label %.preheader104.i.i.preheader.new

.preheader104.i.i.preheader.new:                  ; preds = %.preheader104.i.i.preheader
  %unroll_iter103 = and i64 %wide.trip.count145.i.i, 4294967294
  br label %.preheader104.i.i

.preheader104.i.i:                                ; preds = %bb.bi, %.preheader104.i.i.preheader.new
  %indvars.iv147.i.i = phi i64 [ 0, %.preheader104.i.i.preheader.new ], [ %indvars.iv.next148.i.i.1, %bb.bi ] ; 3 uses
  %.076121.i.i = phi i32 [ 0, %.preheader104.i.i.preheader.new ], [ %.1.i.i.1, %bb.bi ] ; 3 uses
  %niter104 = phi i64 [ 0, %.preheader104.i.i.preheader.new ], [ %niter104.next.1, %bb.bi ]
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv147.i.i
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !56 ; 2 uses
  %.not96.i.i = icmp eq i64 %i.jn, -1
  br i1 %.not96.i.i, label %.preheader104.i.i.1, label %bb.bg

bb.bg:                                            ; preds = %.preheader104.i.i
  %i.jo = zext i32 %.076121.i.i to i64
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jo
  store i64 %i.jn, ptr %i.jp, align 8, !tbaa !56
  %i.jq = add i32 %.076121.i.i, 1
  br label %.preheader104.i.i.1

.preheader104.i.i.1:                              ; preds = %bb.bg, %.preheader104.i.i
  %.1.i.i = phi i32 [ %i.jq, %bb.bg ], [ %.076121.i.i, %.preheader104.i.i ] ; 3 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv147.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !56 ; 2 uses
  %.not96.i.i.1 = icmp eq i64 %i.jt, -1
  br i1 %.not96.i.i.1, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.preheader104.i.i.1
  %i.ju = zext i32 %.1.i.i to i64
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.ju
  store i64 %i.jt, ptr %i.jv, align 8, !tbaa !56
  %i.jw = add i32 %.1.i.i, 1
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.preheader104.i.i.1
  %.1.i.i.1 = phi i32 [ %i.jw, %bb.bh ], [ %.1.i.i, %.preheader104.i.i.1 ] ; 2 uses
  %indvars.iv.next148.i.i.1 = add nuw nsw i64 %indvars.iv147.i.i, 2 ; 2 uses
  %niter104.next.1 = add i64 %niter104, 2         ; 2 uses
  %niter104.ncmp.1 = icmp eq i64 %niter104.next.1, %unroll_iter103
  br i1 %niter104.ncmp.1, label %.thread99.i.i.loopexit.unr-lcssa, label %.preheader104.i.i, !llvm.loop !203

.thread99.i.i.loopexit.unr-lcssa:                 ; preds = %bb.bi
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.thread99.i.i, label %.preheader104.i.i.epil.preheader

.preheader104.i.i.epil.preheader:                 ; preds = %.thread99.i.i.loopexit.unr-lcssa, %.preheader104.i.i.preheader
  %indvars.iv147.i.i.epil.init = phi i64 [ 0, %.preheader104.i.i.preheader ], [ %indvars.iv.next148.i.i.1, %.thread99.i.i.loopexit.unr-lcssa ]
  %.076121.i.i.epil.init = phi i32 [ 0, %.preheader104.i.i.preheader ], [ %.1.i.i.1, %.thread99.i.i.loopexit.unr-lcssa ]
  %lcmp.mod102 = trunc i32 %i.gl to i1
  call void @llvm.assume(i1 %lcmp.mod102)
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv147.i.i.epil.init
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !56 ; 2 uses
  %.not96.i.i.epil = icmp eq i64 %i.jy, -1
  br i1 %.not96.i.i.epil, label %.thread99.i.i, label %bb.bj

bb.bj:                                            ; preds = %.preheader104.i.i.epil.preheader
  %i.jz = zext i32 %.076121.i.i.epil.init to i64
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jz
  store i64 %i.jy, ptr %i.ka, align 8, !tbaa !56
  br label %.thread99.i.i

.thread99.i.i.loopexit86.unr-lcssa:               ; preds = %bb.av
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.thread99.i.i, label %.epil.preheader88

.epil.preheader88:                                ; preds = %.thread99.i.i.loopexit86.unr-lcssa, %.preheader106.i.i
  %indvars.iv137.i.i.epil.init = phi i64 [ 0, %.preheader106.i.i ], [ %indvars.iv.next138.i.i.1, %.thread99.i.i.loopexit86.unr-lcssa ]
  %lcmp.mod91 = trunc i32 %i.gl to i1
  call void @llvm.assume(i1 %lcmp.mod91)
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv137.i.i.epil.init
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !95 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 152
  %i.ke = load i8, ptr %i.kd, align 8, !tbaa !97, !range !10, !noundef !11
  %i.kf = trunc nuw i8 %i.ke to i1
  br i1 %i.kf, label %bb.bk, label %.thread99.i.i

bb.bk:                                            ; preds = %.epil.preheader88
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 184 ; 2 uses
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !86
  %i.ki = add i64 %i.kh, -1
  store i64 %i.ki, ptr %i.kg, align 8, !tbaa !86
  %i.kj = load i8, ptr %i.go, align 8, !tbaa !83, !range !10, !noundef !11
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %bb.bl, label %.thread99.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kc, i64 192 ; 2 uses
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !87
  %i.kn = add i64 %i.km, -1
  store i64 %i.kn, ptr %i.kl, align 8, !tbaa !87
  br label %.thread99.i.i

.thread99.i.i:                                    ; preds = %.thread99.i.i.loopexit86.unr-lcssa, %bb.bl, %bb.bk, %.epil.preheader88, %.thread99.i.i.loopexit.unr-lcssa, %bb.bj, %.preheader104.i.i.epil.preheader, %bb.be, %bb.bd, %bb.aw, %bb.ao
  %i.ko = getelementptr inbounds nuw i8, ptr %.185124.i.i, i64 120
  %.185.i.i = load ptr, ptr %i.ko, align 8, !tbaa !95 ; 2 uses
  %.not.i.i = icmp eq ptr %.185.i.i, null
  br i1 %.not.i.i, label %.preheader102.i.i, label %.lr.ph125.i.i.a, !llvm.loop !204

.lr.ph132.i.i:                                    ; preds = %.preheader102.i.i, %.loopexit.i.i
  %.286130.i.i = phi ptr [ %.286.i.i, %.loopexit.i.i ], [ %.286128.pre.i.i, %.preheader102.i.i ] ; 5 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.286130.i.i, i64 152
  %i.kq = load i8, ptr %i.kp, align 8, !tbaa !97, !range !10, !noundef !11
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %bb.bm, label %.loopexit.i.i

bb.bm:                                            ; preds = %.lr.ph132.i.i
  %i.ks = getelementptr inbounds nuw i8, ptr %.286130.i.i, i64 184
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !86
  %i.ku = icmp eq i64 %i.kt, 0
  br i1 %i.ku, label %bb.bn, label %.loopexit.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.kv = getelementptr inbounds nuw i8, ptr %.286130.i.i, i64 168 ; 2 uses
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !88 ; 2 uses
  %.not93.i.i = icmp eq i64 %i.kw, 0
  br i1 %.not93.i.i, label %.loopexit.i.i, label %.lr.ph127.i.i

.lr.ph127.i.i:                                    ; preds = %bb.bn
  %i.kx = getelementptr inbounds nuw i8, ptr %.286130.i.i, i64 72 ; 2 uses
  %.pre153.i.i = load ptr, ptr %i.kx, align 8, !tbaa !100
  br label %bb.bo

bb.bo:                                            ; preds = %bb.br, %.lr.ph127.i.i
  %i.ky = phi i64 [ %i.kw, %.lr.ph127.i.i ], [ %i.lj, %bb.br ] ; 2 uses
  %i.kz = phi ptr [ %.pre153.i.i, %.lr.ph127.i.i ], [ %i.lk, %bb.br ] ; 3 uses
  %i.la = phi i64 [ 0, %.lr.ph127.i.i ], [ %i.lm, %bb.br ]
  %.4126.i.i = phi i32 [ 0, %.lr.ph127.i.i ], [ %i.ll, %bb.br ]
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %i.la
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !95 ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 152
  %i.le = load i8, ptr %i.ld, align 8, !tbaa !97, !range !10, !noundef !11
  %i.lf = trunc nuw i8 %i.le to i1
  br i1 %i.lf, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 200
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !98
  %i.li = icmp eq i32 %i.lh, 0
  br i1 %i.li, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  call fastcc void @H5C__prep_for_file_close__compute_fd_heights_real(ptr noundef nonnull %i.lc, i32 noundef 1)
  %.pre.i.i = load ptr, ptr %i.kx, align 8, !tbaa !100
  %.pre154.i.i = load i64, ptr %i.kv, align 8, !tbaa !88
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.lj = phi i64 [ %i.ky, %bb.bo ], [ %i.ky, %bb.bp ], [ %.pre154.i.i, %bb.bq ] ; 2 uses
  %i.lk = phi ptr [ %i.kz, %bb.bo ], [ %i.kz, %bb.bp ], [ %.pre.i.i, %bb.bq ]
  %i.ll = add i32 %.4126.i.i, 1                   ; 2 uses
  %i.lm = zext i32 %i.ll to i64                   ; 2 uses
  %i.ln = icmp ugt i64 %i.lj, %i.lm
  br i1 %i.ln, label %bb.bo, label %.loopexit.i.i, !llvm.loop !205

.loopexit.i.i:                                    ; preds = %bb.br, %bb.bn, %bb.bm, %.lr.ph132.i.i
  %i.lo = getelementptr inbounds nuw i8, ptr %.286130.i.i, i64 120
  %.286.i.i = load ptr, ptr %i.lo, align 8, !tbaa !95 ; 2 uses
  %.not92.i.i = icmp eq ptr %.286.i.i, null
  br i1 %.not92.i.i, label %H5C__prep_for_file_close__compute_fd_heights.exit.loopexit.i, label %.lr.ph132.i.i, !llvm.loop !206

H5C__prep_for_file_close__compute_fd_heights.exit.loopexit.i: ; preds = %.loopexit.i.i
  %.179101.pre.i = load ptr, ptr %i.cd, align 8, !tbaa !95
  br label %H5C__prep_for_file_close__compute_fd_heights.exit.i

H5C__prep_for_file_close__compute_fd_heights.exit.i: ; preds = %H5C__prep_for_file_close__compute_fd_heights.exit.loopexit.i, %._crit_edge.i
  %.179101.i = phi ptr [ %.179101.pre.i, %H5C__prep_for_file_close__compute_fd_heights.exit.loopexit.i ], [ %.179101.pre120.pre.i, %._crit_edge.i ] ; 2 uses
  %.not83102.i = icmp eq ptr %.179101.i, null
  br i1 %.not83102.i, label %._crit_edge107.i, label %.lr.ph106.i

bb.bs:                                            ; preds = %bb.bf
  %i.lp = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.lq = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !56
  %i.lr = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__prep_for_file_close__compute_fd_heights, i32 noundef 1883, i64 noundef %i.lp, i64 noundef %i.lq, ptr noundef nonnull @.str.39) #15 ; 0 uses
  %i.ls = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.lt = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !56
  %i.lu = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__prep_for_file_close__scan_entries, i32 noundef 2304, i64 noundef %i.ls, i64 noundef %i.lt, ptr noundef nonnull @.str.38) #15 ; 0 uses
  br label %bb.cb

.lr.ph106.i:                                      ; preds = %H5C__prep_for_file_close__compute_fd_heights.exit.i, %bb.bw
  %.179105.i = phi ptr [ %.179.i, %bb.bw ], [ %.179101.i, %H5C__prep_for_file_close__compute_fd_heights.exit.i ] ; 4 uses
  %.072104.i = phi i64 [ %.1.i, %bb.bw ], [ %i.bq, %H5C__prep_for_file_close__compute_fd_heights.exit.i ] ; 2 uses
  %.073103.i = phi i32 [ %.174.i, %bb.bw ], [ 0, %H5C__prep_for_file_close__compute_fd_heights.exit.i ] ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.179105.i, i64 152
  %i.lw = load i8, ptr %i.lv, align 8, !tbaa !97, !range !10, !noundef !11
  %i.lx = trunc nuw i8 %i.lw to i1
  br i1 %i.lx, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %.lr.ph106.i
  %i.ly = getelementptr inbounds nuw i8, ptr %.179105.i, i64 168 ; 2 uses
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !88
  %.not85.i = icmp eq i64 %i.lz, 0
  br i1 %.not85.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ma = call zeroext i8 @H5F_sizeof_addr(ptr noundef nonnull %0) #15
  %i.mb = zext i8 %i.ma to i64
  %i.mc = load i64, ptr %i.ly, align 8, !tbaa !88
  %i.md = mul i64 %i.mc, %i.mb
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.071.i = phi i64 [ %i.md, %bb.bu ], [ 0, %bb.bt ]
  %i.me = getelementptr inbounds nuw i8, ptr %.179105.i, i64 16
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !91
  %i.mg = add i64 %.072104.i, %.0.i90.i
  %i.mh = add i64 %i.mg, %.071.i
  %i.mi = add i64 %i.mh, %i.mf
  %i.mj = add i32 %.073103.i, 1
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %.lr.ph106.i
  %.174.i = phi i32 [ %i.mj, %bb.bv ], [ %.073103.i, %.lr.ph106.i ] ; 2 uses
  %.1.i = phi i64 [ %i.mi, %bb.bv ], [ %.072104.i, %.lr.ph106.i ] ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.179105.i, i64 120
  %.179.i = load ptr, ptr %i.mk, align 8, !tbaa !95 ; 2 uses
  %.not83.i = icmp eq ptr %.179.i, null
  br i1 %.not83.i, label %._crit_edge107.i, label %.lr.ph106.i, !llvm.loop !207

._crit_edge107.i:                                 ; preds = %bb.bw, %H5C__prep_for_file_close__compute_fd_heights.exit.i, %.preheader102.i.i, %.preheader111.i.i, %H5C__cache_image_block_entry_header_size.exit.i
  %.073.lcssa.i = phi i32 [ 0, %H5C__prep_for_file_close__compute_fd_heights.exit.i ], [ 0, %H5C__cache_image_block_entry_header_size.exit.i ], [ 0, %.preheader111.i.i ], [ 0, %.preheader102.i.i ], [ %.174.i, %bb.bw ]
  %.072.lcssa.i = phi i64 [ %i.bq, %H5C__prep_for_file_close__compute_fd_heights.exit.i ], [ %i.bq, %H5C__cache_image_block_entry_header_size.exit.i ], [ %i.bq, %.preheader111.i.i ], [ %i.bq, %.preheader102.i.i ], [ %.1.i, %bb.bw ]
  %i.ml = getelementptr inbounds nuw i8, ptr %i.l, i64 527696
  store i32 %.073.lcssa.i, ptr %i.ml, align 8, !tbaa !59
  %i.mm = getelementptr inbounds nuw i8, ptr %i.l, i64 524824
  %.2109.i = load ptr, ptr %i.mm, align 8, !tbaa !95 ; 2 uses
  %.not84110.i = icmp eq ptr %.2109.i, null
  br i1 %.not84110.i, label %._crit_edge115.i, label %.lr.ph114.i

.lr.ph114.i:                                      ; preds = %._crit_edge107.i, %bb.ca
  %.2112.i = phi ptr [ %.2.i, %bb.ca ], [ %.2109.i, %._crit_edge107.i ] ; 4 uses
  %.075111.i = phi i32 [ %.176.i, %bb.ca ], [ 1, %._crit_edge107.i ] ; 4 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.2112.i, i64 40
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !94
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !221
  %i.mq = icmp eq i32 %i.mp, 27
  br i1 %i.mq, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.lr.ph114.i
  %i.mr = add nsw i32 %.075111.i, 1
  br label %bb.ca

bb.by:                                            ; preds = %.lr.ph114.i
  %i.ms = getelementptr inbounds nuw i8, ptr %.2112.i, i64 152
  %i.mt = load i8, ptr %i.ms, align 8, !tbaa !97, !range !10, !noundef !11
  %i.mu = trunc nuw i8 %i.mt to i1
  br i1 %i.mu, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.mv = getelementptr inbounds nuw i8, ptr %.2112.i, i64 156
  store i32 %.075111.i, ptr %i.mv, align 4, !tbaa !89
  %i.mw = add nsw i32 %.075111.i, 1
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bx
  %.176.i = phi i32 [ %i.mr, %bb.bx ], [ %i.mw, %bb.bz ], [ %.075111.i, %bb.by ]
  %i.mx = getelementptr inbounds nuw i8, ptr %.2112.i, i64 136
  %.2.i = load ptr, ptr %i.mx, align 8, !tbaa !95 ; 2 uses
  %.not84.i = icmp eq ptr %.2.i, null
  br i1 %.not84.i, label %._crit_edge115.i, label %.lr.ph114.i, !llvm.loop !208

._crit_edge115.i:                                 ; preds = %bb.ca, %._crit_edge107.i
  %i.my = add i64 %.072.lcssa.i, 4                ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.l, i64 527656
  store i64 %i.my, ptr %i.mz, align 8, !tbaa !58
  br label %H5C__prep_for_file_close__scan_entries.exit

bb.cb:                                            ; preds = %bb.u, %bb.aa, %bb.bs
  %i.na = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.nb = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !56
  %i.nc = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__prep_image_for_file_close, i32 noundef 921, i64 noundef %i.na, i64 noundef %i.nb, ptr noundef nonnull @.str.14) #15 ; 0 uses
  br label %bb.cx

H5C__prep_for_file_close__scan_entries.exit:      ; preds = %.H5C__prep_for_file_close__scan_entries.exit_crit_edge, %._crit_edge115.i
  %i.nd = phi i64 [ %.pre62, %.H5C__prep_for_file_close__scan_entries.exit_crit_edge ], [ %i.my, %._crit_edge115.i ]
  %i.ne = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !222
  %i.ng = getelementptr inbounds nuw i8, ptr %i.l, i64 527656
  %i.nh = call i64 @H5FD_alloc(ptr noundef %i.nf, i32 noundef 1, ptr noundef nonnull %0, i64 noundef %i.nd, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #15 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.l, i64 527640
  store i64 %i.nh, ptr %i.ni, align 8, !tbaa !75
  %i.nj = icmp eq i64 %i.nh, -1
  br i1 %i.nj, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %H5C__prep_for_file_close__scan_entries.exit
  %i.nk = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.nl = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !56
  %i.nm = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__prep_image_for_file_close, i32 noundef 977, i64 noundef %i.nk, i64 noundef %i.nl, ptr noundef nonnull @.str.15) #15 ; 0 uses
  br label %bb.cx

bb.cd:                                            ; preds = %H5C__prep_for_file_close__scan_entries.exit
  %i.nn = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !222
  %i.np = call i64 @H5FD_get_eoa(ptr noundef %i.no, i32 noundef 0) #15 ; 2 uses
  %i.nq = load ptr, ptr %i.i, align 8, !tbaa !33  ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 1832
  store i64 %i.np, ptr %i.nr, align 8, !tbaa !223
  %i.ns = icmp eq i64 %i.np, -1
  br i1 %i.ns, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.nt = load i64, ptr @H5E_FILE_g, align 8, !tbaa !56
  %i.nu = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !56
  %i.nv = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__prep_image_for_file_close, i32 noundef 986, i64 noundef %i.nt, i64 noundef %i.nu, ptr noundef nonnull @.str.16) #15 ; 0 uses
  br label %bb.cx

bb.cf:                                            ; preds = %bb.cd
  %i.nw = load i64, ptr %i.ng, align 8, !tbaa !58
  %i.nx = getelementptr inbounds nuw i8, ptr %i.l, i64 527648
  store i64 %i.nw, ptr %i.nx, align 8, !tbaa !54
  %i.ny = load i32, ptr %i.ah, align 4, !tbaa !74
  %i.nz = and i32 %i.ny, 2
  %.not42 = icmp eq i32 %i.nz, 0
  br i1 %.not42, label %bb.cj, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.oa = load i8, ptr @H5C_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.ob = trunc nuw i8 %i.oa to i1
  %i.oc = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.od = trunc nuw i8 %i.oc to i1
  %i.oe = xor i1 %i.od, true
  %i.of = select i1 %i.ob, i1 true, i1 %i.oe
  br i1 %i.of, label %bb.ch, label %H5C__write_cache_image_superblock_msg.exit46.thread, !prof !12

bb.ch:                                            ; preds = %bb.cg
  %i.og = getelementptr inbounds nuw i8, ptr %i.nq, i64 112
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !52
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 527640
  %i.oj = load <2 x i64>, ptr %i.oi, align 8, !tbaa !56
  store <2 x i64> %i.oj, ptr %2, align 16, !tbaa !56
  %i.ok = call i32 @H5F__super_ext_write_msg(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull %2, i1 noundef zeroext false, i32 noundef 128) #15
  %i.ol = icmp slt i32 %i.ok, 0
  br i1 %i.ol, label %bb.ci, label %H5C__write_cache_image_superblock_msg.exit46.thread

H5C__write_cache_image_superblock_msg.exit46.thread: ; preds = %bb.ch, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.om = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.on = load i64, ptr @H5E_WRITEERROR_g, align 8, !tbaa !56
  %i.oo = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__write_cache_image_superblock_msg, i32 noundef 2955, i64 noundef %i.om, i64 noundef %i.on, ptr noundef nonnull @.str.71) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.op = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.oq = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !56
  %i.or = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__prep_image_for_file_close, i32 noundef 1019, i64 noundef %i.op, i64 noundef %i.oq, ptr noundef nonnull @.str.17) #15 ; 0 uses
  br label %bb.cx

bb.cj:                                            ; preds = %H5C__write_cache_image_superblock_msg.exit46.thread, %bb.cf
  %i.os = getelementptr inbounds nuw i8, ptr %i.l, i64 527696 ; 2 uses
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !59 ; 4 uses
  %.not43 = icmp eq i32 %i.ot, 0
  br i1 %.not43, label %bb.cs, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ou = load i8, ptr @H5C_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.ov = trunc nuw i8 %i.ou to i1
  %i.ow = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.ox = trunc nuw i8 %i.ow to i1
  %i.oy = xor i1 %i.ox, true
  %i.oz = select i1 %i.ov, i1 true, i1 %i.oy
  br i1 %i.oz, label %bb.cl, label %._crit_edge63, !prof !12

._crit_edge63:                                    ; preds = %bb.ck
  %.phi.trans.insert64 = getelementptr inbounds nuw i8, ptr %i.l, i64 527704
  %.pre65 = load ptr, ptr %.phi.trans.insert64, align 8, !tbaa !60
  br label %bb.cr

bb.cl:                                            ; preds = %bb.ck
  %i.pa = add i32 %i.ot, 1                        ; 3 uses
  %i.pb = zext i32 %i.pa to i64
  %i.pc = mul nuw nsw i64 %i.pb, 80
  %i.pd = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.pc) #16 ; 9 uses
  %i.pe = icmp eq ptr %i.pd, null
  br i1 %i.pe, label %bb.cq, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.cl
  %umax.i = call i32 @llvm.umax.i32(i32 %i.pa, i32 1)
  %wide.trip.count.i = zext i32 %umax.i to i64    ; 2 uses
  %xtraiter106 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.pf = icmp ult i32 %i.pa, 4
  br i1 %i.pf, label %.preheader.i.epil.preheader, label %.preheader.preheader.i.new

.preheader.preheader.i.new:                       ; preds = %.preheader.preheader.i
  %unroll_iter110 = and i64 %wide.trip.count.i, 4294967292
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i.new
  %indvars.iv.i48 = phi i64 [ 0, %.preheader.preheader.i.new ], [ %indvars.iv.next.i49.3, %.preheader.i ] ; 5 uses
  %niter111 = phi i64 [ 0, %.preheader.preheader.i.new ], [ %niter111.next.3, %.preheader.i ]
  %i.pg = getelementptr inbounds nuw [80 x i8], ptr %i.pd, i64 %indvars.iv.i48 ; 3 uses
  store i64 -1, ptr %i.pg, align 8, !tbaa !70
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  store i32 0, ptr %i.ph, align 8, !tbaa !67
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pg, i64 24
  store i32 -1, ptr %i.pi, align 8, !tbaa !63
  %i.pj = getelementptr inbounds nuw [80 x i8], ptr %i.pd, i64 %indvars.iv.i48 ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 80
  store i64 -1, ptr %i.pk, align 8, !tbaa !70
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pj, i64 96
  store i32 0, ptr %i.pl, align 8, !tbaa !67
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pj, i64 104
  store i32 -1, ptr %i.pm, align 8, !tbaa !63
  %i.pn = getelementptr inbounds nuw [80 x i8], ptr %i.pd, i64 %indvars.iv.i48 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 160
  store i64 -1, ptr %i.po, align 8, !tbaa !70
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 176
  store i32 0, ptr %i.pp, align 8, !tbaa !67
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pn, i64 184
  store i32 -1, ptr %i.pq, align 8, !tbaa !63
  %i.pr = getelementptr inbounds nuw [80 x i8], ptr %i.pd, i64 %indvars.iv.i48 ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 240
  store i64 -1, ptr %i.ps, align 8, !tbaa !70
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pr, i64 256
  store i32 0, ptr %i.pt, align 8, !tbaa !67
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 264
  store i32 -1, ptr %i.pu, align 8, !tbaa !63
  %indvars.iv.next.i49.3 = add nuw nsw i64 %indvars.iv.i48, 4 ; 2 uses
  %niter111.next.3 = add i64 %niter111, 4         ; 2 uses
  %niter111.ncmp.3 = icmp eq i64 %niter111.next.3, %unroll_iter110
  br i1 %niter111.ncmp.3, label %.unr-lcssa105, label %.preheader.i, !llvm.loop !209

.unr-lcssa105:                                    ; preds = %.preheader.i
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.epilog-lcssa108, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.unr-lcssa105, %.preheader.preheader.i
  %indvars.iv.i48.epil.init = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i49.3, %.unr-lcssa105 ]
  %lcmp.mod109 = icmp ne i64 %xtraiter106, 0
  call void @llvm.assume(i1 %lcmp.mod109)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %indvars.iv.i48.epil = phi i64 [ %indvars.iv.i48.epil.init, %.preheader.i.epil.preheader ], [ %indvars.iv.next.i49.epil, %.preheader.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.i.epil.preheader ], [ %epil.iter.next, %.preheader.i.epil ]
  %i.pv = getelementptr inbounds nuw [80 x i8], ptr %i.pd, i64 %indvars.iv.i48.epil ; 3 uses
  store i64 -1, ptr %i.pv, align 8, !tbaa !70
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  store i32 0, ptr %i.pw, align 8, !tbaa !67
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 24
  store i32 -1, ptr %i.px, align 8, !tbaa !63
  %indvars.iv.next.i49.epil = add nuw nsw i64 %indvars.iv.i48.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter106
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa108, label %.preheader.i.epil, !llvm.loop !210

.epilog-lcssa108:                                 ; preds = %.preheader.i.epil, %.unr-lcssa105
  %i.py = getelementptr inbounds nuw i8, ptr %i.l, i64 524584
  %.06975.i = load ptr, ptr %i.py, align 8, !tbaa !95 ; 2 uses
  %.not7376.i = icmp eq ptr %.06975.i, null
  br i1 %.not7376.i, label %._crit_edge.i52, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.epilog-lcssa108, %bb.cp
  %.06978.i = phi ptr [ %.069.i, %bb.cp ], [ %.06975.i, %.epilog-lcssa108 ] ; 14 uses
  %.177.i = phi i32 [ %.2.i51, %bb.cp ], [ 0, %.epilog-lcssa108 ] ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.06978.i, i64 152
  %i.qa = load i8, ptr %i.pz, align 8, !tbaa !97, !range !10, !noundef !11
  %i.qb = trunc nuw i8 %i.qa to i1
  br i1 %i.qb, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %.lr.ph.i50
  %i.qc = getelementptr inbounds nuw i8, ptr %.06978.i, i64 8
  %i.qd = zext i32 %.177.i to i64
  %i.qe = getelementptr inbounds nuw [80 x i8], ptr %i.pd, i64 %i.qd ; 11 uses
  %i.qf = load <2 x i64>, ptr %i.qc, align 8, !tbaa !56
  store <2 x i64> %i.qf, ptr %i.qe, align 8, !tbaa !56
  %i.qg = getelementptr inbounds nuw i8, ptr %.06978.i, i64 64
  %i.qh = load i32, ptr %i.qg, align 8, !tbaa !84
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  store i32 %i.qh, ptr %i.qi, align 8, !tbaa !67
  %i.qj = getelementptr inbounds nuw i8, ptr %.06978.i, i64 40
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !94
  %i.ql = load i32, ptr %i.qk, align 8, !tbaa !221 ; 2 uses
  %i.qm = icmp eq i32 %i.ql, 29
  br i1 %i.qm, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.qn = getelementptr inbounds nuw i8, ptr %.06978.i, i64 208
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !82
  %i.qp = getelementptr inbounds nuw i8, ptr %.06978.i, i64 212
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !85
  %i.qr = call i32 @llvm.smin.i32(i32 %i.qq, i32 99)
  %spec.select.i = add nsw i32 %i.qr, 1
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %.sink = phi i32 [ %i.qo, %bb.cn ], [ %i.ql, %bb.cm ]
  %.sink.i = phi i32 [ %spec.select.i, %bb.cn ], [ 0, %bb.cm ]
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qe, i64 24
  store i32 %.sink, ptr %i.qs, align 8, !tbaa !63
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qe, i64 20
  store i32 %.sink.i, ptr %i.qt, align 4, !tbaa !68
  %i.qu = getelementptr inbounds nuw i8, ptr %.06978.i, i64 156
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !89
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qe, i64 28
  store i32 %i.qv, ptr %i.qw, align 4, !tbaa !65
  %i.qx = getelementptr inbounds nuw i8, ptr %.06978.i, i64 48
  %i.qy = load i8, ptr %i.qx, align 8, !tbaa !83, !range !10, !noundef !11
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qe, i64 32
  store i8 %i.qy, ptr %i.qz, align 8, !tbaa !64
  %i.ra = getelementptr inbounds nuw i8, ptr %.06978.i, i64 200
  %i.rb = load i32, ptr %i.ra, align 8, !tbaa !98
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qe, i64 36
  store i32 %i.rb, ptr %i.rc, align 4, !tbaa !101
  %i.rd = getelementptr inbounds nuw i8, ptr %.06978.i, i64 168 ; 2 uses
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !88
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qe, i64 40
  store i64 %i.re, ptr %i.rf, align 8, !tbaa !66
  %i.rg = getelementptr inbounds nuw i8, ptr %.06978.i, i64 176
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !92
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qe, i64 48
  store ptr %i.rh, ptr %i.ri, align 8, !tbaa !71
  %i.rj = getelementptr inbounds nuw i8, ptr %.06978.i, i64 184
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qe, i64 56
  %i.rl = load <2 x i64>, ptr %i.rj, align 8, !tbaa !56
  store <2 x i64> %i.rl, ptr %i.rk, align 8, !tbaa !56
  %i.rm = getelementptr inbounds nuw i8, ptr %.06978.i, i64 24
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !93
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qe, i64 72
  store ptr %i.rn, ptr %i.ro, align 8, !tbaa !73
  %i.rp = add i32 %.177.i, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rd, i8 0, i64 16, i1 false)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %.lr.ph.i50
  %.2.i51 = phi i32 [ %i.rp, %bb.co ], [ %.177.i, %.lr.ph.i50 ]
  %i.rq = getelementptr inbounds nuw i8, ptr %.06978.i, i64 120
  %.069.i = load ptr, ptr %i.rq, align 8, !tbaa !95 ; 2 uses
  %.not73.i = icmp eq ptr %.069.i, null
  br i1 %.not73.i, label %._crit_edge.i52.loopexit, label %.lr.ph.i50, !llvm.loop !211

._crit_edge.i52.loopexit:                         ; preds = %bb.cp
  %.pre66.pre = load i32, ptr %i.os, align 8, !tbaa !59
  br label %._crit_edge.i52

._crit_edge.i52:                                  ; preds = %._crit_edge.i52.loopexit, %.epilog-lcssa108
  %.pre66 = phi i32 [ %.pre66.pre, %._crit_edge.i52.loopexit ], [ %i.ot, %.epilog-lcssa108 ]
  %i.rr = getelementptr inbounds nuw i8, ptr %i.l, i64 527704
  store ptr %i.pd, ptr %i.rr, align 8, !tbaa !60
  br label %bb.cr

bb.cq:                                            ; preds = %bb.cl
  %i.rs = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.rt = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !56
  %i.ru = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__prep_for_file_close__setup_image_entries_array, i32 noundef 2044, i64 noundef %i.rs, i64 noundef %i.rt, ptr noundef nonnull @.str.35) #15 ; 0 uses
  %i.rv = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.rw = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !56
  %i.rx = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__prep_image_for_file_close, i32 noundef 1057, i64 noundef %i.rv, i64 noundef %i.rw, ptr noundef nonnull @.str.18) #15 ; 0 uses
  br label %bb.cx

bb.cr:                                            ; preds = %._crit_edge63, %._crit_edge.i52
  %i.ry = phi i32 [ %i.ot, %._crit_edge63 ], [ %.pre66, %._crit_edge.i52 ]
  %i.rz = phi ptr [ %.pre65, %._crit_edge63 ], [ %i.pd, %._crit_edge.i52 ]
  %i.sa = zext i32 %i.ry to i64
  call void @qsort(ptr noundef %i.rz, i64 noundef %i.sa, i64 noundef 80, ptr noundef nonnull @H5C__image_entry_cmp) #15
  br label %bb.cw

bb.cs:                                            ; preds = %bb.cj
  %i.sb = load i32, ptr %i.ah, align 4, !tbaa !74
  %i.sc = and i32 %i.sb, 2
  %.not44 = icmp eq i32 %i.sc, 0
  br i1 %.not44, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.sd = call i32 @H5F__super_ext_remove_msg(ptr noundef nonnull %0, i32 noundef 24) #15
  %i.se = icmp slt i32 %i.sd, 0
  br i1 %i.se, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.sf = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.sg = load i64, ptr @H5E_CANTREMOVE_g, align 8, !tbaa !56
  %i.sh = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C__prep_image_for_file_close, i32 noundef 1074, i64 noundef %i.sf, i64 noundef %i.sg, ptr noundef nonnull @.str.19) #15 ; 0 uses
  br label %bb.cx

bb.cv:                                            ; preds = %bb.ct, %bb.cs
  store i8 0, ptr %i.ag, align 4, !tbaa !53
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cr
  store i8 1, ptr %1, align 1, !tbaa !9
  br label %bb.cx

bb.cx:                                            ; preds = %.thread, %bb.d, %bb.l, %bb.n, %bb.cb, %bb.cc, %bb.ce, %bb.ci, %bb.cq, %bb.cu, %bb.cw, %bb.h, %bb.a
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.l ], [ -1, %bb.n ], [ -1, %bb.cb ], [ -1, %bb.cc ], [ -1, %bb.ce ], [ -1, %bb.ci ], [ -1, %bb.cq ], [ 0, %bb.cw ], [ -1, %bb.cu ], [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
}

declare i32 @H5C__serialize_cache(ptr noundef) local_unnamed_addr #4

declare i64 @H5FD_alloc(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @H5FD_get_eoa(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @H5C__image_entry_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load i8, ptr @H5C_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.f, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !101  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !101  ; 2 uses
  %i.k = icmp ugt i32 %i.h, %i.j
  br i1 %i.k, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp ult i32 %i.h, %i.j
  br i1 %i.l, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !65   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !65   ; 2 uses
  %i.q = icmp slt i32 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp sgt i32 %i.n, %i.p
  %spec.select = zext i1 %i.r to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ 1, %bb.c ], [ -1, %bb.d ], [ %spec.select, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5C_set_cache_image_config(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5C_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !12

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5C_init_g, align 1, !tbaa !9
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.j, !prof !102

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.j = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !56
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_set_cache_image_config, i32 noundef 1124, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.5) #15 ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.l = tail call i32 @H5C_validate_cache_image_config(ptr noundef %2)
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !56
  %i.o = load i64, ptr @H5E_BADRANGE_g, align 8, !tbaa !56
  %i.p = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_set_cache_image_config, i32 noundef 1128, i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.20) #15 ; 0 uses
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.q = tail call i32 @H5F_get_intent(ptr noundef %0) #15
  %i.r = and i32 %i.q, 1
  %.not = icmp eq i32 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 527616 ; 2 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !77
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) @__const.H5C_set_cache_image_config.default_image_ctl, i64 16, i1 false), !tbaa.struct !77
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.f, %bb.i, %bb.h, %bb.b
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5C_validate_cache_image_config(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5C_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !12

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5C_init_g, align 1, !tbaa !9
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.m, !prof !102

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = icmp eq ptr %0, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.j = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !56
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_cache_image_config, i32 noundef 1192, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.21) #15 ; 0 uses
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.l = load i32, ptr %0, align 4, !tbaa !225
  %.not = icmp eq i32 %i.l, 1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.n = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !56
  %i.o = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_cache_image_config, i32 noundef 1194, i64 noundef %i.m, i64 noundef %i.n, ptr noundef nonnull @.str.22) #15 ; 0 uses
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.q = load i8, ptr %i.p, align 1, !tbaa !226, !range !10, !noundef !11
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.t = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !56
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_cache_image_config, i32 noundef 1201, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.23) #15 ; 0 uses
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !227
  %.not11 = icmp eq i32 %i.w, -1
  br i1 %.not11, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.y = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !56
  %i.z = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_cache_image_config, i32 noundef 1208, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.24) #15 ; 0 uses
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !228
  %.not12 = icmp ult i32 %i.ab, 16
  br i1 %.not12, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !56
  %i.ad = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !56
  %i.ae = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5C_validate_cache_image_config, i32 noundef 1211, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.25) #15 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.k, %bb.b
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.h ], [ -1, %bb.j ], [ -1, %bb.l ], [ 0, %bb.k ], [ 0, %bb.b ]
  ret i32 %.0
}

declare i32 @H5F_get_intent(ptr noundef) local_unnamed_addr #4

declare i32 @H5_checksum_metadata(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i8 @H5F_sizeof_size(ptr noundef) local_unnamed_addr #4

declare void @H5F_addr_encode(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 0, 525) i64 @H5C__cache_image_block_entry_header_size(ptr noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5C_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #15
  %i.h = zext i8 %i.g to i64
  %i.i = add nuw nsw i64 %i.h, 14
  %i.j = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #15
  %i.k = zext i8 %i.j to i64
  %i.l = add nuw nsw i64 %i.i, %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.l, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

declare zeroext i8 @H5F_sizeof_addr(ptr noundef) local_unnamed_addr #4

declare i32 @H5F_block_read(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @H5C__prep_for_file_close__compute_fd_heights_real(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = load i8, ptr @H5C_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.loopexit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %1, ptr %i.g, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load i32, ptr %i.h, align 8, !tbaa !99
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !88   ; 2 uses
  %.not16 = icmp eq i64 %i.k, 0
  br i1 %.not16, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.m = add i32 %1, 1
  %.pre17 = load ptr, ptr %i.l, align 8, !tbaa !100
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %i.n = phi i64 [ %i.k, %.lr.ph ], [ %i.x, %bb.f ] ; 2 uses
  %i.o = phi ptr [ %.pre17, %.lr.ph ], [ %i.y, %bb.f ] ; 3 uses
  %i.p = phi i64 [ 0, %.lr.ph ], [ %i.aa, %bb.f ]
  %.015 = phi i32 [ 0, %.lr.ph ], [ %i.z, %bb.f ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !95   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  %i.t = load i8, ptr %i.s, align 8, !tbaa !97, !range !10, !noundef !11
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 200
  %i.w = load i32, ptr %i.v, align 8, !tbaa !98
  %.not14 = icmp ugt i32 %i.w, %1
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @H5C__prep_for_file_close__compute_fd_heights_real(ptr noundef nonnull %i.r, i32 noundef %i.m)
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !100
  %.pre18 = load i64, ptr %i.j, align 8, !tbaa !88
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.x = phi i64 [ %.pre18, %bb.e ], [ %i.n, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %i.y = phi ptr [ %.pre, %bb.e ], [ %i.o, %bb.d ], [ %i.o, %bb.c ]
  %i.z = add i32 %.015, 1                         ; 2 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = icmp ugt i64 %i.x, %i.aa
  br i1 %i.ab, label %bb.c, label %.loopexit, !llvm.loop !229

.loopexit:                                        ; preds = %bb.f, %.preheader, %bb.b, %bb.a
  ret void
}

declare ptr @H5FL_reg_free(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @H5SL_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @H5C_create_flush_dependency(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @H5C__make_space_in_cache(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare i32 @H5C_unprotect(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @H5C_unpin_entry(ptr noundef) local_unnamed_addr #4

declare i32 @H5AC_expunge_entry(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

declare noalias ptr @H5FL_reg_calloc(ptr noundef) local_unnamed_addr #4

declare void @H5F_addr_decode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @H5F_get_eoa(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare i32 @H5F__super_ext_write_msg(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

declare i32 @H5F_block_write(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_Bool", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTS14H5C_log_info_t", !13, i64 0}
!15 = !{!"any p2 pointer", !13, i64 0}
!16 = !{!"p2 _ZTS11H5C_class_t", !15, i64 0}
!17 = !{!"long", !4, i64 0}
!18 = !{!"p1 _ZTS17H5C_cache_entry_t", !13, i64 0}
!19 = !{!"p1 _ZTS6H5SL_t", !13, i64 0}
!20 = !{!"p1 _ZTS14H5C_tag_info_t", !13, i64 0}
!21 = !{!"double", !4, i64 0}
!22 = !{!"H5C_auto_size_ctl_t", !5, i64 0, !13, i64 8, !8, i64 16, !17, i64 24, !21, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !5, i64 64, !21, i64 72, !21, i64 80, !8, i64 88, !17, i64 96, !5, i64 104, !21, i64 112, !21, i64 120, !5, i64 128, !21, i64 136, !21, i64 144, !8, i64 152, !17, i64 160, !5, i64 168, !8, i64 172, !21, i64 176}
!23 = !{!"H5C_cache_image_ctl_t", !5, i64 0, !8, i64 4, !8, i64 5, !5, i64 8, !5, i64 12}
!24 = !{!"p1 _ZTS17H5C_image_entry_t", !13, i64 0}
!25 = !{!"H5C_t", !8, i64 0, !14, i64 8, !13, i64 16, !5, i64 24, !16, i64 32, !17, i64 40, !17, i64 48, !13, i64 56, !8, i64 64, !13, i64 72, !8, i64 80, !8, i64 81, !5, i64 84, !17, i64 88, !4, i64 96, !4, i64 120, !17, i64 168, !4, i64 176, !17, i64 224, !4, i64 232, !4, i64 280, !5, i64 524568, !17, i64 524576, !18, i64 524584, !18, i64 524592, !17, i64 524600, !18, i64 524608, !18, i64 524616, !8, i64 524624, !8, i64 524625, !5, i64 524628, !17, i64 524632, !4, i64 524640, !4, i64 524664, !19, i64 524712, !5, i64 524720, !20, i64 524728, !8, i64 524736, !5, i64 524740, !5, i64 524744, !17, i64 524752, !18, i64 524760, !18, i64 524768, !5, i64 524776, !17, i64 524784, !18, i64 524792, !18, i64 524800, !5, i64 524808, !17, i64 524816, !18, i64 524824, !18, i64 524832, !8, i64 524840, !8, i64 524841, !17, i64 524848, !8, i64 524856, !8, i64 524857, !8, i64 524858, !8, i64 524859, !8, i64 524860, !8, i64 524861, !22, i64 524864, !5, i64 525048, !4, i64 525052, !4, i64 525064, !5, i64 525108, !5, i64 525112, !5, i64 525116, !4, i64 525120, !17, i64 527600, !17, i64 527608, !23, i64 527616, !8, i64 527632, !8, i64 527633, !8, i64 527634, !8, i64 527635, !17, i64 527640, !17, i64 527648, !17, i64 527656, !17, i64 527664, !17, i64 527672, !17, i64 527680, !17, i64 527688, !5, i64 527696, !24, i64 527704, !13, i64 527712, !8, i64 527720, !8, i64 527721, !4, i64 527722}
!26 = !{!25, !8, i64 527633}
!27 = !{!25, !8, i64 527634}
!28 = !{!"p1 omnipotent char", !13, i64 0}
!29 = !{!"p1 _ZTS12H5F_shared_t", !13, i64 0}
!30 = !{!"p1 _ZTS13H5VL_object_t", !13, i64 0}
!31 = !{!"p1 _ZTS5H5F_t", !13, i64 0}
!32 = !{!"H5F_t", !28, i64 0, !28, i64 8, !29, i64 16, !30, i64 24, !5, i64 32, !19, i64 40, !8, i64 48, !8, i64 49, !31, i64 56, !5, i64 64}
!33 = !{!32, !29, i64 16}
!34 = !{!"p1 _ZTS6H5FD_t", !13, i64 0}
!35 = !{!"p1 _ZTS11H5F_super_t", !13, i64 0}
!36 = !{!"p1 _ZTS13H5O_drvinfo_t", !13, i64 0}
!37 = !{!"p1 _ZTS11H5F_mount_t", !13, i64 0}
!38 = !{!"H5F_mtab_t", !5, i64 0, !5, i64 4, !37, i64 8}
!39 = !{!"p1 _ZTS9H5F_efc_t", !13, i64 0}
!40 = !{!"p1 _ZTS6H5PB_t", !13, i64 0}
!41 = !{!"p1 _ZTS5H5C_t", !13, i64 0}
!42 = !{!"H5AC_cache_config_t", !5, i64 0, !8, i64 4, !8, i64 5, !8, i64 6, !4, i64 7, !8, i64 1032, !8, i64 1033, !17, i64 1040, !21, i64 1048, !17, i64 1056, !17, i64 1064, !17, i64 1072, !5, i64 1080, !21, i64 1088, !21, i64 1096, !8, i64 1104, !17, i64 1112, !5, i64 1120, !21, i64 1128, !21, i64 1136, !5, i64 1144, !21, i64 1152, !21, i64 1160, !8, i64 1168, !17, i64 1176, !5, i64 1184, !8, i64 1188, !21, i64 1192, !17, i64 1200, !5, i64 1208}
!43 = !{!"H5AC_cache_image_config_t", !5, i64 0, !8, i64 4, !8, i64 5, !5, i64 8}
!44 = !{!"p2 _ZTS11H5HG_heap_t", !15, i64 0}
!45 = !{!"p1 _ZTS5H5G_t", !13, i64 0}
!46 = !{!"p1 _ZTS6H5UC_t", !13, i64 0}
!47 = !{!"p1 _ZTS16H5VL_connector_t", !13, i64 0}
!48 = !{!"H5F_blk_aggr_t", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32}
!49 = !{!"H5F_meta_accum_t", !28, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !8, i64 48}
!50 = !{!"H5F_object_flush_t", !13, i64 0, !13, i64 8}
!51 = !{!"H5F_shared_t", !34, i64 0, !35, i64 8, !36, i64 16, !8, i64 24, !5, i64 28, !5, i64 32, !38, i64 40, !39, i64 56, !4, i64 64, !4, i64 65, !17, i64 72, !5, i64 80, !5, i64 84, !17, i64 88, !17, i64 96, !40, i64 104, !41, i64 112, !42, i64 120, !43, i64 1336, !8, i64 1348, !8, i64 1349, !28, i64 1352, !17, i64 1360, !5, i64 1368, !8, i64 1372, !17, i64 1376, !17, i64 1384, !21, i64 1392, !17, i64 1400, !17, i64 1408, !17, i64 1416, !5, i64 1424, !5, i64 1428, !5, i64 1432, !8, i64 1436, !5, i64 1440, !44, i64 1448, !45, i64 1456, !19, i64 1464, !46, i64 1472, !8, i64 1480, !8, i64 1481, !8, i64 1482, !17, i64 1488, !47, i64 1496, !13, i64 1504, !5, i64 1512, !17, i64 1520, !8, i64 1528, !5, i64 1532, !8, i64 1536, !17, i64 1544, !8, i64 1552, !4, i64 1556, !4, i64 1608, !4, i64 1712, !8, i64 1816, !17, i64 1824, !17, i64 1832, !4, i64 1840, !4, i64 1868, !48, i64 1896, !48, i64 1936, !17, i64 1976, !17, i64 1984, !49, i64 1992, !5, i64 2048, !5, i64 2052, !4, i64 2056, !50, i64 2296, !8, i64 2312, !28, i64 2320}
!52 = !{!51, !41, i64 112}
!53 = !{!25, !8, i64 527620}
!54 = !{!25, !17, i64 527648}
!55 = !{!25, !13, i64 527712}
!56 = !{!17, !17, i64 0}
!57 = !{!4, !4, i64 0}
!58 = !{!25, !17, i64 527656}
!59 = !{!25, !5, i64 527696}
!60 = !{!25, !24, i64 527704}
!61 = !{!"p1 long", !13, i64 0}
!62 = !{!"H5C_image_entry_t", !17, i64 0, !17, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !8, i64 32, !5, i64 36, !17, i64 40, !61, i64 48, !17, i64 56, !17, i64 64, !13, i64 72}
!63 = !{!62, !5, i64 24}
!64 = !{!62, !8, i64 32}
!65 = !{!62, !5, i64 28}
!66 = !{!62, !17, i64 40}
!67 = !{!62, !5, i64 16}
!68 = !{!62, !5, i64 20}
!69 = !{!28, !28, i64 0}
!70 = !{!62, !17, i64 0}
!71 = !{!62, !61, i64 48}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!62, !13, i64 72}
!74 = !{!25, !5, i64 527628}
!75 = !{!25, !17, i64 527640}
!76 = !{!5, !5, i64 0}
!77 = !{i64 0, i64 4, !76, i64 4, i64 1, !9, i64 5, i64 1, !9, i64 8, i64 4, !76, i64 12, i64 4, !76}
!78 = !{!25, !8, i64 527635}
!79 = !{!"p1 _ZTS11H5C_class_t", !13, i64 0}
!80 = !{!"p2 _ZTS17H5C_cache_entry_t", !15, i64 0}
!81 = !{!"H5C_cache_entry_t", !41, i64 0, !17, i64 8, !17, i64 16, !13, i64 24, !8, i64 32, !79, i64 40, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !5, i64 52, !8, i64 56, !8, i64 57, !8, i64 58, !8, i64 59, !8, i64 60, !5, i64 64, !80, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !8, i64 100, !8, i64 101, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144, !8, i64 152, !5, i64 156, !8, i64 160, !17, i64 168, !61, i64 176, !17, i64 184, !17, i64 192, !5, i64 200, !8, i64 204, !5, i64 208, !5, i64 212, !8, i64 216, !18, i64 224, !18, i64 232, !20, i64 240}
!82 = !{!81, !5, i64 208}
!83 = !{!81, !8, i64 48}
!84 = !{!81, !5, i64 64}
!85 = !{!81, !5, i64 212}
!86 = !{!81, !17, i64 184}
!87 = !{!81, !17, i64 192}
!88 = !{!81, !17, i64 168}
!89 = !{!81, !5, i64 156}
!90 = !{!81, !17, i64 8}
!91 = !{!81, !17, i64 16}
!92 = !{!81, !61, i64 176}
!93 = !{!81, !13, i64 24}
!94 = !{!81, !79, i64 40}
!95 = !{!18, !18, i64 0}
!96 = !{!81, !8, i64 56}
!97 = !{!81, !8, i64 152}
!98 = !{!81, !5, i64 200}
!99 = !{!81, !5, i64 80}
!100 = !{!81, !80, i64 72}
!101 = !{!62, !5, i64 36}
!102 = !{!"branch_weights", !"expected", i32 2146409906, i32 1073742}
!103 = distinct !{!103, !72}
!104 = distinct !{!104, !72}
!105 = distinct !{!105, !72}
!106 = !{!25, !8, i64 527621}
!107 = !{!62, !17, i64 56}
!108 = !{!62, !17, i64 64}
!109 = !{!62, !17, i64 8}
!110 = distinct !{!110, !72}
!111 = distinct !{!111, !72}
!112 = distinct !{!112, !72}
!113 = distinct !{!113, !72}
!114 = distinct !{!114, !72}
!115 = distinct !{!115, !72}
!116 = distinct !{null}
!117 = distinct !{!117, !72}
!118 = distinct !{!118, !72}
!119 = !{!81, !41, i64 0}
!120 = !{!81, !8, i64 32}
!121 = !{!81, !8, i64 204}
!122 = !{!81, !8, i64 216}
!123 = !{!"p1 _ZTS13UT_hash_table", !13, i64 0}
!124 = !{!"p1 _ZTS14UT_hash_handle", !13, i64 0}
!125 = !{!"UT_hash_handle", !123, i64 0, !13, i64 8, !13, i64 16, !124, i64 24, !124, i64 32, !13, i64 40, !5, i64 48, !5, i64 52}
!126 = !{!"H5C_recon_entry_t", !17, i64 0, !18, i64 8, !125, i64 16}
!127 = !{!126, !123, i64 16}
!128 = !{!"p1 _ZTS14UT_hash_bucket", !13, i64 0}
!129 = !{!"UT_hash_table", !128, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !124, i64 24, !17, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56}
!130 = !{!129, !5, i64 8}
!131 = !{!129, !128, i64 0}
!132 = !{!"UT_hash_bucket", !124, i64 0, !5, i64 8, !5, i64 12}
!133 = !{!132, !124, i64 0}
!134 = !{!129, !17, i64 32}
!135 = !{!126, !5, i64 68}
!136 = !{!126, !5, i64 64}
!137 = !{!126, !13, i64 56}
!138 = !{!126, !124, i64 48}
!139 = !{!126, !17, i64 0}
!140 = !{!126, !18, i64 8}
!141 = !{!129, !124, i64 24}
!142 = !{!129, !5, i64 12}
!143 = !{!129, !5, i64 56}
!144 = !{!126, !13, i64 32}
!145 = !{!126, !13, i64 24}
!146 = !{!125, !13, i64 16}
!147 = !{!129, !5, i64 16}
!148 = !{!132, !5, i64 8}
!149 = !{!126, !124, i64 40}
!150 = !{!125, !124, i64 24}
!151 = !{!132, !5, i64 12}
!152 = !{!129, !5, i64 52}
!153 = !{!129, !5, i64 40}
!154 = !{!129, !5, i64 44}
!155 = !{!125, !124, i64 32}
!156 = !{!125, !5, i64 52}
!157 = !{!129, !5, i64 48}
!158 = !{!125, !13, i64 8}
!159 = !{!81, !18, i64 104}
!160 = !{!81, !18, i64 112}
!161 = !{!25, !5, i64 84}
!162 = !{!25, !17, i64 88}
!163 = !{!25, !17, i64 224}
!164 = !{!25, !17, i64 168}
!165 = !{!81, !8, i64 58}
!166 = !{!25, !5, i64 524720}
!167 = !{!25, !18, i64 524584}
!168 = !{!25, !18, i64 524592}
!169 = !{!81, !18, i64 120}
!170 = !{!81, !18, i64 128}
!171 = !{!25, !5, i64 524568}
!172 = !{!25, !17, i64 524576}
!173 = !{!25, !8, i64 524624}
!174 = !{!25, !19, i64 524712}
!175 = !{!81, !8, i64 57}
!176 = !{!25, !8, i64 524625}
!177 = !{!25, !5, i64 524628}
!178 = !{!25, !17, i64 524632}
!179 = !{!25, !18, i64 524792}
!180 = !{!25, !18, i64 524800}
!181 = !{!81, !18, i64 144}
!182 = !{!81, !18, i64 136}
!183 = !{!25, !5, i64 524776}
!184 = !{!25, !17, i64 524784}
!185 = !{!25, !18, i64 524824}
!186 = !{!25, !18, i64 524832}
!187 = !{!25, !5, i64 524808}
!188 = !{!25, !17, i64 524816}
!189 = !{!25, !18, i64 524760}
!190 = !{!25, !18, i64 524768}
!191 = !{!25, !5, i64 524744}
!192 = !{!25, !17, i64 524752}
!193 = !{!81, !8, i64 50}
!194 = !{!25, !17, i64 40}
!195 = !{!25, !13, i64 56}
!196 = !{!25, !8, i64 64}
!197 = distinct !{!197, !72}
!198 = distinct !{!198, !72}
!199 = distinct !{!199, !72}
!200 = distinct !{!200, !72}
!201 = distinct !{!201, !72}
!202 = distinct !{!202, !72}
!203 = distinct !{!203, !72}
!204 = distinct !{!204, !72}
!205 = distinct !{!205, !72}
!206 = distinct !{!206, !72}
!207 = distinct !{!207, !72}
!208 = distinct !{!208, !72}
!209 = distinct !{!209, !72}
!210 = distinct !{!210, !224}
!211 = distinct !{!211, !72}
!212 = !{!51, !35, i64 8}
!213 = !{!"p1 _ZTS11H5G_entry_t", !13, i64 0}
!214 = !{!"H5F_super_t", !81, i64 0, !5, i64 248, !4, i64 252, !4, i64 253, !4, i64 254, !5, i64 256, !4, i64 260, !17, i64 272, !17, i64 280, !17, i64 288, !17, i64 296, !213, i64 304}
!215 = !{!214, !5, i64 248}
!216 = !{!51, !5, i64 1432}
!217 = !{!81, !8, i64 160}
!218 = !{!81, !5, i64 88}
!219 = !{!81, !5, i64 92}
!220 = !{!"H5C_class_t", !5, i64 0, !28, i64 8, !5, i64 16, !5, i64 20, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96}
!221 = !{!220, !5, i64 0}
!222 = !{!51, !34, i64 0}
!223 = !{!51, !17, i64 1832}
!224 = !{!"llvm.loop.unroll.disable"}
!225 = !{!23, !5, i64 0}
!226 = !{!23, !8, i64 5}
!227 = !{!23, !5, i64 8}
!228 = !{!23, !5, i64 12}
!229 = distinct !{!229, !72}
end_hunk_0
