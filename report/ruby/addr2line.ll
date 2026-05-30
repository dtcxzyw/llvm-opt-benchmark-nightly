inline.NumInlined: 199
inline.NumDeleted: 47
begin_hunk_0_@fill_lines:bb.a
  %or.cond.i101.i = select i1 %i.zc, i1 true, i1 %i.zd
  br i1 %or.cond.i101.i, label %.lr.ph.i.i, label %.thread143.i

bb.dm:                                            ; preds = %bb.co
  %i.ze = icmp eq i64 %.sroa.0.0.i269, %i.un
  %or.cond153.i = select i1 %.sroa.14.0.i, i1 %i.ze, i1 false
  br i1 %or.cond153.i, label %ranges_include.exit.i, label %.thread143.i

ranges_include.exit.i:                            ; preds = %bb.dk, %read_dw_form_addr.exit.i.i, %bb.dm, %bb.cn
  %.5.i.i = phi i64 [ %.sroa.0.0.i269, %bb.cn ], [ %.077.i.i, %read_dw_form_addr.exit.i.i ], [ %.sroa.0.0.i269, %bb.dm ], [ %i.yy, %bb.dk ] ; 2 uses
  switch i64 %.5.i.i, label %bb.dn [
    i64 -1, label %.critedge.thread.i
    i64 0, label %.thread143.i
  ]

bb.dn:                                            ; preds = %ranges_include.exit.i
  %i.zf = getelementptr [64 x i8], ptr %4, i64 %indvars.iv.i ; 6 uses
  %i.zg = getelementptr i8, ptr %i.zf, i64 48     ; 2 uses
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !29
  %.not74.i = icmp eq ptr %i.zh, null
  br i1 %.not74.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.zi = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #18 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.zi, ptr noundef nonnull align 1 dereferenceable(64) %i.zf, i64 noundef 64, i1 noundef false) #15
  %i.zj = getelementptr i8, ptr %i.zf, i64 56
  store ptr %i.zi, ptr %i.zj, align 8, !tbaa !41
  store <2 x ptr> %i.tw, ptr %i.zi, align 8, !tbaa !64
  %i.zk = getelementptr i8, ptr %i.zi, i64 24
  store i32 %i.tx, ptr %i.zk, align 8, !tbaa !21
  %i.zl = getelementptr i8, ptr %i.zi, i64 40
  store i64 0, ptr %i.zl, align 8, !tbaa !35
  %.pre226.i = load i64, ptr %i.ts, align 8, !tbaa !33
  %.pre227.i = load i64, ptr %i.tt, align 8, !tbaa !118
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.zm = phi i64 [ %.pre227.i, %bb.do ], [ %i.uf, %bb.dn ] ; 3 uses
  %i.zn = phi i64 [ %.pre226.i, %bb.do ], [ %i.ug, %bb.dn ] ; 3 uses
  %i.zo = load ptr, ptr %i.tr, align 8, !tbaa !15
  %i.zp = getelementptr i8, ptr %i.zf, i64 16
  store ptr %i.zo, ptr %i.zp, align 8, !tbaa !27
  %i.zq = getelementptr i8, ptr %i.zf, i64 32
  store i64 %i.ty, ptr %i.zq, align 8, !tbaa !40
  store ptr %i.tz, ptr %i.zg, align 8, !tbaa !29
  %i.zr = sub i64 %.5.i.i, %i.zm
  %i.zs = add i64 %i.zr, %i.zn
  %i.zt = getelementptr i8, ptr %i.zf, i64 40
  store i64 %i.zs, ptr %i.zt, align 8, !tbaa !35
  br label %.thread143.i

.thread143.i:                                     ; preds = %bb.dl, %read_dw_form_addr.exit.thread.i.i, %bb.dp, %ranges_include.exit.i, %bb.dm, %bb.dj, %bb.cn
  %i.zu = phi i64 [ %i.uf, %read_dw_form_addr.exit.thread.i.i ], [ %i.zm, %bb.dp ], [ %i.uf, %ranges_include.exit.i ], [ %i.uf, %bb.dm ], [ %i.uf, %bb.dj ], [ %i.uf, %bb.cn ], [ %i.uf, %bb.dl ]
  %i.zv = phi i64 [ %i.ug, %read_dw_form_addr.exit.thread.i.i ], [ %i.zn, %bb.dp ], [ %i.ug, %ranges_include.exit.i ], [ %i.ug, %bb.dm ], [ %i.ug, %bb.dj ], [ %i.ug, %bb.cn ], [ %i.ug, %bb.dl ]
  %i.zw = phi i64 [ %i.uh, %read_dw_form_addr.exit.thread.i.i ], [ %i.zm, %bb.dp ], [ %i.uh, %ranges_include.exit.i ], [ %i.uh, %bb.dm ], [ %i.uh, %bb.dj ], [ %i.uh, %bb.cn ], [ %i.uh, %bb.dl ]
  %i.zx = phi i64 [ %i.ui, %read_dw_form_addr.exit.thread.i.i ], [ %i.zn, %bb.dp ], [ %i.ui, %ranges_include.exit.i ], [ %i.ui, %bb.dm ], [ %i.ui, %bb.dj ], [ %i.ui, %bb.cn ], [ %i.ui, %bb.dl ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.i282, label %bb.cl, !llvm.loop !120

select.unfold146.i:                               ; preds = %uleb128.exit21.i.i316
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %.critedge.i282, !llvm.loop !113

.critedge.thread.i:                               ; preds = %ranges_include.exit.i, %bb.cm, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %.thread356

.critedge.i282:                                   ; preds = %.thread143.i, %select.unfold146.i, %.preheader.i, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.zy = load ptr, ptr %i.ec, align 8, !tbaa !81 ; 2 uses
  %i.zz = load ptr, ptr %i.eo, align 8, !tbaa !88
  %i.aaa = icmp ult ptr %i.zy, %i.zz
  br i1 %i.aaa, label %bb.bq, label %debug_info_read.exit

debug_info_read.exit:                             ; preds = %.critedge.i282, %rnglists_header_init.exit.i
  %i.aab = phi ptr [ %i.oc, %rnglists_header_init.exit.i ], [ %i.zy, %.critedge.i282 ] ; 2 uses
  %i.aac = load ptr, ptr %i.eg, align 8, !tbaa !83
  %i.aad = icmp ult ptr %i.aab, %i.aac
  br i1 %i.aad, label %bb.ad, label %._crit_edge476, !llvm.loop !121

.thread356:                                       ; preds = %bb.af, %di_read_debug_line_cu.exit.i, %bb.an, %di_skip_records.exit.i, %addr_header_init.exit.i, %.critedge.thread.i, %rnglists_header_init.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  br label %bb.dq

._crit_edge476:                                   ; preds = %debug_info_read.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  br label %.loopexit359

bb.dq:                                            ; preds = %.thread356, %bb.aa, %bb.ab
  %.not249 = icmp eq ptr %.0214.lcssa, null       ; 2 uses
  %spec.select263 = select i1 %.not249, ptr %.0224.lcssa, ptr %.0217.lcssa ; 2 uses
  %spec.select264 = select i1 %.not249, ptr %.0221.lcssa, ptr %.0214.lcssa ; 3 uses
  %i.aae = icmp ne ptr %spec.select264, null
  %i.aaf = icmp ne ptr %spec.select263, null
  %or.cond5 = select i1 %i.aae, i1 %i.aaf, i1 false
  br i1 %or.cond5, label %bb.dr, label %.loopexit359

bb.dr:                                            ; preds = %bb.dq
  %i.aag = getelementptr i8, ptr %spec.select263, i64 24
  %i.aah = load i64, ptr %i.aag, align 8, !tbaa !56
  %i.aai = getelementptr i8, ptr %i.n, i64 %i.aah
  %i.aaj = getelementptr i8, ptr %spec.select264, i64 24
  %i.aak = load i64, ptr %i.aaj, align 8, !tbaa !56
  %i.aal = getelementptr i8, ptr %i.n, i64 %i.aak
  %i.aam = getelementptr i8, ptr %spec.select264, i64 32
  %i.aan = load i64, ptr %i.aam, align 8, !tbaa !61
  %i.aao = udiv i64 %i.aan, 24                    ; 2 uses
  %i.aap = trunc i64 %i.aao to i32
  %i.aaq = icmp sgt i32 %i.aap, 0
  br i1 %i.aaq, label %.lr.ph481, label %.loopexit359

.lr.ph481:                                        ; preds = %bb.dr
  %i.aar = getelementptr i8, ptr %i.c, i64 32
  %i.aas = load i64, ptr %i.aar, align 8, !tbaa !33 ; 2 uses
  %i.aat = icmp slt i32 %5, %0
  br i1 %i.aat, label %.lr.ph481.split.us.preheader, label %.loopexit359

.lr.ph481.split.us.preheader:                     ; preds = %.lr.ph481
  %i.aau = sext i32 %5 to i64
  %wide.trip.count576 = and i64 %i.aao, 2147483647
  %wide.trip.count571 = sext i32 %0 to i64
  br label %.lr.ph481.split.us

.lr.ph481.split.us:                               ; preds = %.lr.ph481.split.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv573 = phi i64 [ 0, %.lr.ph481.split.us.preheader ], [ %indvars.iv.next574, %..loopexit_crit_edge.us ] ; 2 uses
  %i.aav = getelementptr [24 x i8], ptr %i.aal, i64 %indvars.iv573 ; 4 uses
  %i.aaw = getelementptr i8, ptr %i.aav, i64 8
  %i.aax = load i64, ptr %i.aaw, align 8, !tbaa !122
  %i.aay = add i64 %i.aas, %i.aax                 ; 2 uses
  %i.aaz = getelementptr i8, ptr %i.aav, i64 4
  %i.aba = load i8, ptr %i.aaz, align 4, !tbaa !70
  %i.abb = and i8 %i.aba, 15
  %.not250.us = icmp eq i8 %i.abb, 2
  br i1 %.not250.us, label %.preheader.us, label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %bb.dx, %.lr.ph481.split.us
  %indvars.iv.next574 = add nuw nsw i64 %indvars.iv573, 1 ; 2 uses
  %exitcond577.not = icmp eq i64 %indvars.iv.next574, %wide.trip.count576
  br i1 %exitcond577.not, label %.loopexit359, label %.lr.ph481.split.us, !llvm.loop !123

bb.ds:                                            ; preds = %.preheader.us, %bb.dx
  %indvars.iv568 = phi i64 [ %i.aau, %.preheader.us ], [ %indvars.iv.next569, %bb.dx ] ; 3 uses
  %i.abc = getelementptr [64 x i8], ptr %4, i64 %indvars.iv568 ; 5 uses
  %i.abd = getelementptr i8, ptr %i.abc, i64 24
  %i.abe = load i32, ptr %i.abd, align 8, !tbaa !21
  %i.abf = icmp sgt i32 %i.abe, 0
  br i1 %i.abf, label %bb.dx, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.abg = getelementptr [8 x i8], ptr %1, i64 %indvars.iv568
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !20
  %i.abi = ptrtoint ptr %i.abh to i64
  %i.abj = sub i64 %i.abi, %i.aay
  %i.abk = load i64, ptr %i.abv, align 8, !tbaa !72
  %i.abl = icmp ugt i64 %i.abj, %i.abk
  br i1 %i.abl, label %bb.dx, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.abm = getelementptr i8, ptr %i.abc, i64 48   ; 2 uses
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !29
  %.not251.us = icmp eq ptr %i.abn, null
  br i1 %.not251.us, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.abo = load i32, ptr %i.aav, align 8, !tbaa !73
  %i.abp = zext i32 %i.abo to i64
  %i.abq = getelementptr i8, ptr %i.aai, i64 %i.abp
  store ptr %i.abq, ptr %i.abm, align 8, !tbaa !29
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.abr = getelementptr i8, ptr %i.abc, i64 40
  store i64 %i.aay, ptr %i.abr, align 8, !tbaa !35
  %i.abs = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.abt = getelementptr i8, ptr %i.abc, i64 16
  store ptr %i.abs, ptr %i.abt, align 8, !tbaa !27
  %i.abu = getelementptr i8, ptr %i.abc, i64 32
  store i64 %i.aas, ptr %i.abu, align 8, !tbaa !40
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dt, %bb.ds
  %indvars.iv.next569 = add nsw i64 %indvars.iv568, 1 ; 2 uses
  %exitcond572.not = icmp eq i64 %indvars.iv.next569, %wide.trip.count571
  br i1 %exitcond572.not, label %..loopexit_crit_edge.us, label %bb.ds, !llvm.loop !124

.preheader.us:                                    ; preds = %.lr.ph481.split.us
  %i.abv = getelementptr i8, ptr %i.aav, i64 16
  br label %bb.ds

.loopexit359:                                     ; preds = %..loopexit_crit_edge.us, %.lr.ph481, %bb.dr, %._crit_edge476, %bb.dq
  %i.abw = getelementptr i8, ptr %i.c, i64 96
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !84 ; 2 uses
  %.not252 = icmp eq ptr %i.abx, null
  br i1 %.not252, label %bb.dy, label %bb.ec

bb.dy:                                            ; preds = %.loopexit359
  %i.aby = icmp ne ptr %.0208.lcssa, null
  %20 = icmp ne i32 %2, 0                         ; 2 uses
  %or.cond7 = and i1 %20, %i.aby
  br i1 %or.cond7, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.abz = getelementptr i8, ptr %.0208.lcssa, i64 24
  %i.aca = load i64, ptr %i.abz, align 8, !tbaa !56
  %i.acb = getelementptr i8, ptr %i.n, i64 %i.aca
  call fastcc void @follow_debuglink(ptr noundef %i.acb, i32 noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.acc = icmp ne ptr %.0211.lcssa, null
  %or.cond9 = and i1 %20, %i.acc
  br i1 %or.cond9, label %bb.eb, label %bb.ed

bb.eb:                                            ; preds = %bb.ea
  %i.acd = getelementptr i8, ptr %.0211.lcssa, i64 24
  %i.ace = load i64, ptr %i.acd, align 8, !tbaa !56
  %i.acf = getelementptr i8, ptr %i.n, i64 %i.ace ; 3 uses
  %i.acg = getelementptr i8, ptr %i.acf, i64 12
  %i.ach = load i32, ptr %i.acf, align 4, !tbaa !125
  %i.aci = zext i32 %i.ach to i64
  %i.acj = getelementptr i8, ptr %i.acg, i64 %i.aci
  %i.ack = getelementptr i8, ptr %i.acf, i64 4
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !127
  %i.acm = zext i32 %i.acl to i64
  call fastcc void @follow_debuglink_build_id(ptr noundef %i.acj, i64 noundef %i.acm, i32 noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  br label %bb.ed

bb.ec:                                            ; preds = %.loopexit359
  %i.acn = getelementptr i8, ptr %i.c, i64 104
  %i.aco = load i64, ptr %i.acn, align 8, !tbaa !128
  %i.acp = call fastcc i32 @parse_debug_line(i32 noundef %0, ptr noundef %1, ptr noundef %i.abx, i64 noundef %i.aco, ptr noundef nonnull %i.c, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  %i.acq = icmp eq i32 %i.acp, -1
  br i1 %i.acq, label %.loopexit368, label %bb.ed

.loopexit368:                                     ; preds = %uncompress_debug_section.exit, %uncompress_debug_section.exit.thread, %bb.e, %bb.c, %bb.ec, %bb.f, %bb.a
  br label %bb.ed

bb.ed:                                            ; preds = %bb.eb, %bb.ea, %bb.ec, %.loopexit368
  %.0 = phi i64 [ -1, %.loopexit368 ], [ %.4, %bb.eb ], [ %.4, %bb.ec ], [ %.4, %bb.ea ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @dladdr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr noundef readonly captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

declare i32 @close(i32 noundef) local_unnamed_addr #9

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare ptr @dlopen(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @dlsym(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @dlclose(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @follow_debuglink(ptr noundef %0, i32 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef nonnull captures(none) %3, ptr noundef captures(none) %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) @binary_filename, i32 noundef 47) #16 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !11     ; 2 uses
  %i.c = getelementptr i8, ptr %i.a, i64 1
  store i8 0, ptr %i.c, align 1, !tbaa !14
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @binary_filename) #16
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.d, i64 4081) ; 3 uses
  %i.e = tail call ptr @__memmove_chk(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @binary_filename, i64 14), ptr noundef nonnull @binary_filename, i64 noundef %spec.store.select, i64 noundef 4083) #15 ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(14) @binary_filename, ptr noundef nonnull align 1 dereferenceable(14) @follow_debuglink.global_debug_dir, i64 noundef 14, i1 noundef false) #15
  %i.f = getelementptr i8, ptr @binary_filename, i64 %spec.store.select
  %i.g = getelementptr i8, ptr %i.f, i64 14
  %i.h = sub nuw nsw i64 4082, %spec.store.select
  %i.i = tail call i64 @strlcpy(ptr noundef %i.g, ptr noundef nonnull dereferenceable(1) %0, i64 noundef %i.h) #15 ; 0 uses
  %i.j = tail call noalias dereferenceable_or_null(272) ptr @calloc(i64 noundef 1, i64 noundef 272) #14 ; 4 uses
  %i.k = load ptr, ptr %3, align 8, !tbaa !11     ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %append_obj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.k, i64 264
  store ptr %i.j, ptr %i.l, align 8, !tbaa !32
  br label %append_obj.exit

append_obj.exit:                                  ; preds = %bb.b, %bb.c
  store ptr %i.j, ptr %3, align 8, !tbaa !11
  %i.m = getelementptr i8, ptr %i.b, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !33
  %i.o = getelementptr i8, ptr %i.j, i64 32
  store i64 %i.n, ptr %i.o, align 8, !tbaa !33
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !15
  store ptr %i.p, ptr %i.j, align 8, !tbaa !15
  %i.q = tail call fastcc i64 @fill_lines(i32 noundef %1, ptr noundef %2, i32 noundef 0, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %append_obj.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @follow_debuglink_build_id(ptr noundef readonly captures(none) %0, i64 noundef range(i64 0, 4294967296) %1, i32 noundef %2, ptr noundef readonly captures(none) %3, ptr noundef nonnull captures(none) %4, ptr noundef captures(none) %5, i32 noundef %6, ptr noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !11     ; 2 uses
  %i.b = icmp samesign ugt i64 %1, 2032
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) @binary_filename, ptr noundef nonnull align 16 dereferenceable(25) @follow_debuglink_build_id.global_debug_dir, i64 noundef 25, i1 noundef false) #15
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i8, ptr %0, align 1, !tbaa !14
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  %i.e = lshr i32 %i.d, 4
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr i8, ptr @follow_debuglink_build_id.tbl, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  store i8 %i.h, ptr getelementptr inbounds nuw (i8, ptr @binary_filename, i64 25), align 1, !tbaa !14
  %i.i = and i32 %i.d, 15
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr i8, ptr @follow_debuglink_build_id.tbl, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  store i8 %i.l, ptr getelementptr inbounds nuw (i8, ptr @binary_filename, i64 26), align 2, !tbaa !14
  store i8 47, ptr getelementptr inbounds nuw (i8, ptr @binary_filename, i64 27), align 1, !tbaa !14
  %exitcond.peel.not = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.peel.next.preheader

.lr.ph.peel.next.preheader:                       ; preds = %bb.c
  %i.m = add nsw i64 %1, -1                       ; 3 uses
  %xtraiter = and i64 %i.m, 1
  %i.n = icmp eq i64 %1, 2
  br i1 %i.n, label %.lr.ph.peel.next.epil.preheader, label %.lr.ph.peel.next.preheader.new

.lr.ph.peel.next.preheader.new:                   ; preds = %.lr.ph.peel.next.preheader
  %unroll_iter = and i64 %i.m, -2
  br label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %.lr.ph.peel.next, %.lr.ph.peel.next.preheader.new
  %.027 = phi ptr [ getelementptr inbounds nuw (i8, ptr @binary_filename, i64 28), %.lr.ph.peel.next.preheader.new ], [ %i.ao, %.lr.ph.peel.next ] ; 5 uses
  %.02526 = phi i64 [ 1, %.lr.ph.peel.next.preheader.new ], [ %i.ap, %.lr.ph.peel.next ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.peel.next.preheader.new ], [ %niter.next.1, %.lr.ph.peel.next ]
  %i.o = getelementptr i8, ptr %0, i64 %.02526
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = lshr i32 %i.q, 4
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr i8, ptr @follow_debuglink_build_id.tbl, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !14
  %i.v = getelementptr i8, ptr %.027, i64 1
  store i8 %i.u, ptr %.027, align 1, !tbaa !14
  %i.w = and i32 %i.q, 15
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr i8, ptr @follow_debuglink_build_id.tbl, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14
  %i.aa = getelementptr i8, ptr %.027, i64 2
  store i8 %i.z, ptr %i.v, align 1, !tbaa !14
  %i.ab = getelementptr i8, ptr %0, i64 %.02526
  %i.ac = getelementptr i8, ptr %i.ab, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14
  %i.ae = zext i8 %i.ad to i32                    ; 2 uses
  %i.af = lshr i32 %i.ae, 4
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr i8, ptr @follow_debuglink_build_id.tbl, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !14
  %i.aj = getelementptr i8, ptr %.027, i64 3
  store i8 %i.ai, ptr %i.aa, align 1, !tbaa !14
  %i.ak = and i32 %i.ae, 15
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr i8, ptr @follow_debuglink_build_id.tbl, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !14
  %i.ao = getelementptr i8, ptr %.027, i64 4      ; 3 uses
end_hunk_0
