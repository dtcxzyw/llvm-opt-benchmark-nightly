Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_rar5?download=true
inline.NumInlined: 224
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0_@uncompress_file:bb.a
  %i.alx = add nsw i64 %i.alv, -3
  %i.aly = icmp slt i64 %i.alw, %i.alx
  br i1 %i.aly, label %.lr.ph.i34.i.i, label %run_delta_filter.exit.i.i, !llvm.loop !128

bb.eu:                                            ; preds = %bb.dy
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.63, i32 noundef %i.agn) #14
  br label %do_uncompress_file.exit.thread

run_delta_filter.exit.i.i:                        ; preds = %bb.et, %bb.em, %._crit_edge.i.i.i, %circular_memcpy.exit.i32.i.i, %circular_memcpy.exit.i.i.i, %bb.dz
  %i.alz = phi i64 [ %.pre.i3151.i.i, %bb.em ], [ %i.ahq, %._crit_edge.i.i.i ], [ %i.agl, %bb.dz ], [ %i.agl, %circular_memcpy.exit.i32.i.i ], [ %i.agl, %circular_memcpy.exit.i.i.i ], [ %i.alv, %bb.et ]
  %i.ama = load ptr, ptr %i.agj, align 8, !tbaa !66
  %i.amb = getelementptr inbounds nuw i8, ptr %.val.val.i.i, i64 120 ; 3 uses
  %i.amc = load i64, ptr %i.amb, align 8, !tbaa !55
  %i.amd = call fastcc i32 @push_data_ready(ptr noundef %0, ptr noundef %.val.val.i.i, ptr noundef %i.ama, i64 noundef %i.alz, i64 noundef %i.amc)
  %.not28.i.i = icmp eq i32 %i.amd, 0
  br i1 %.not28.i.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %run_delta_filter.exit.i.i
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 22, ptr noundef nonnull @.str.64) #14
  br label %do_uncompress_file.exit.thread

bb.ew:                                            ; preds = %run_delta_filter.exit.i.i
  %i.ame = load i64, ptr %i.age, align 8, !tbaa !137
  %i.amf = load i64, ptr %i.amb, align 8, !tbaa !55
  %i.amg = add nsw i64 %i.amf, %i.ame
  store i64 %i.amg, ptr %i.amb, align 8, !tbaa !55
  %i.amh = load i16, ptr %i.agb, align 2, !tbaa !68 ; 2 uses
  %i.ami = icmp eq i16 %i.amh, 0
  br i1 %i.ami, label %cdeque_pop_front.exit.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.amj = load ptr, ptr %i.agc, align 8, !tbaa !18
  %i.amk = load i16, ptr %i.afl, align 8, !tbaa !69 ; 2 uses
  %i.aml = zext i16 %i.amk to i64
  %i.amm = getelementptr inbounds nuw [8 x i8], ptr %i.amj, i64 %i.aml
  %i.amn = load i64, ptr %i.amm, align 8, !tbaa !33
  %i.amo = inttoptr i64 %i.amn to ptr
  %i.amp = add i16 %i.amk, 1
  %i.amq = getelementptr inbounds nuw i8, ptr %.val.val.i5, i64 19260
  %i.amr = load i16, ptr %i.amq, align 4, !tbaa !17
  %i.ams = and i16 %i.amr, %i.amp
  store i16 %i.ams, ptr %i.afl, align 8, !tbaa !69
  %i.amt = add i16 %i.amh, -1
  store i16 %i.amt, ptr %i.agb, align 2, !tbaa !68
  br label %cdeque_pop_front.exit.i

cdeque_pop_front.exit.i:                          ; preds = %bb.ex, %bb.ew
  %.1.i8 = phi ptr [ %i.afs, %bb.ew ], [ %i.amo, %bb.ex ]
  call void @free(ptr noundef %.1.i8) #14
  br label %do_uncompress_file.exit.thread

bb.ey:                                            ; preds = %bb.dv
  %i.amu = getelementptr inbounds nuw i8, ptr %.val.val.i5, i64 80
  %i.amv = load ptr, ptr %i.amu, align 8, !tbaa !65 ; 3 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %.val.val.i5, i64 104
  %i.amx = load i64, ptr %i.amw, align 8, !tbaa !79 ; 3 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %.val.val.i5, i64 136
  %i.amz = load i64, ptr %i.amy, align 8, !tbaa !77 ; 2 uses
  %i.ana = add nsw i64 %i.amz, %i.agg
  %i.anb = and i64 %i.ana, %i.amx                 ; 4 uses
  %i.anc = add nsw i64 %i.amz, %i.afw
  %i.and = and i64 %i.anc, %i.amx                 ; 3 uses
  %i.ane = icmp sgt i64 %i.anb, %i.and
  br i1 %i.ane, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.anf = getelementptr inbounds nuw i8, ptr %.val.val.i5, i64 72
  %i.ang = load i64, ptr %i.anf, align 8, !tbaa !78
  %i.anh = sub nsw i64 %i.ang, %i.anb             ; 3 uses
  %i.ani = getelementptr inbounds i8, ptr %i.amv, i64 %i.anb
  %i.anj = call fastcc i32 @push_data_ready(ptr noundef nonnull %0, ptr noundef nonnull %.val.val.i5, ptr noundef %i.ani, i64 noundef %i.anh, i64 noundef %i.agg) ; 0 uses
  %i.ank = load i64, ptr %i.agf, align 8, !tbaa !55
  %i.anl = add nsw i64 %i.ank, %i.anh
  %i.anm = call fastcc i32 @push_data_ready(ptr noundef nonnull %0, ptr noundef nonnull %.val.val.i5, ptr noundef %i.amv, i64 noundef %i.and, i64 noundef %i.anl) ; 0 uses
  %i.ann = add nsw i64 %i.anh, %i.and
  %i.ano = load i64, ptr %i.agf, align 8, !tbaa !55
  %i.anp = add nsw i64 %i.ann, %i.ano
  br label %push_window_data.exit.i

bb.fa:                                            ; preds = %bb.ey
  %i.anq = getelementptr inbounds i8, ptr %i.amv, i64 %i.anb
  %i.anr = sub nsw i64 %i.afw, %i.agg             ; 2 uses
  %i.ans = and i64 %i.amx, %i.anr
  %i.ant = call fastcc i32 @push_data_ready(ptr noundef nonnull %0, ptr noundef nonnull %.val.val.i5, ptr noundef %i.anq, i64 noundef %i.ans, i64 noundef %i.agg) ; 0 uses
  %i.anu = load i64, ptr %i.agf, align 8, !tbaa !55
  %i.anv = add nsw i64 %i.anu, %i.anr
  br label %push_window_data.exit.i

push_window_data.exit.i:                          ; preds = %bb.fa, %bb.ez
  %storemerge.i.i.i = phi i64 [ %i.anv, %bb.fa ], [ %i.anp, %bb.ez ]
  store i64 %storemerge.i.i.i, ptr %i.agf, align 8, !tbaa !55
  br label %do_uncompress_file.exit.thread

bb.fb:                                            ; preds = %bb.du, %bb.dt, %.loopexit193
  %i.anw = or i8 %i.afj, 2
  store i8 %i.anw, ptr %i.afi, align 8
  %i.anx = getelementptr i8, ptr %.val.val.i, i64 19262
  %.val48.i = load i16, ptr %i.anx, align 2, !tbaa !68
  %.not45.i = icmp eq i16 %.val48.i, 0
  br i1 %.not45.i, label %bb.fc, label %.thread151

.thread151:                                       ; preds = %bb.fb
  %i.any = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 19256
  %.val.i3 = load i16, ptr %i.any, align 8, !tbaa !69
  %i.anz = getelementptr i8, ptr %.val.val.i, i64 19264
  %.val3.i = load ptr, ptr %i.anz, align 8, !tbaa !18
  %i.aoa = zext i16 %.val.i3 to i64
  %i.aob = getelementptr inbounds nuw [8 x i8], ptr %.val3.i, i64 %i.aoa
  %i.aoc = load i64, ptr %i.aob, align 8, !tbaa !33
  %i.aod = inttoptr i64 %i.aoc to ptr
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 16
  %i.aof = load i64, ptr %i.aoe, align 8, !tbaa !136
  %i.aog = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 112
  %i.aoh = load i64, ptr %i.aog, align 8, !tbaa !76
  %..i = call i64 @llvm.smin.i64(i64 %i.aof, i64 %i.aoh)
  br label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.aoi = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 112
  %i.aoj = load i64, ptr %i.aoi, align 8, !tbaa !76
  br label %bb.fd

bb.fd:                                            ; preds = %.thread151, %bb.fc
  %.1.i = phi i64 [ %..i, %.thread151 ], [ %i.aoj, %bb.fc ] ; 4 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 120
  %i.aol = load i64, ptr %i.aok, align 8, !tbaa !55 ; 5 uses
  %i.aom = icmp eq i64 %.1.i, %i.aol
  br i1 %i.aom, label %do_uncompress_file.exit, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.aon = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 120 ; 2 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 80
  %i.aop = load ptr, ptr %i.aoo, align 8, !tbaa !65 ; 3 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 104
  %i.aor = load i64, ptr %i.aoq, align 8, !tbaa !79 ; 3 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 136
  %i.aot = load i64, ptr %i.aos, align 8, !tbaa !77 ; 2 uses
  %i.aou = add nsw i64 %i.aot, %i.aol
  %i.aov = and i64 %i.aou, %i.aor                 ; 4 uses
  %i.aow = add nsw i64 %i.aot, %.1.i
  %i.aox = and i64 %i.aow, %i.aor                 ; 2 uses
  %i.aoy = icmp sgt i64 %i.aov, %i.aox
  br i1 %i.aoy, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.aoz = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 72
  %i.apa = load i64, ptr %i.aoz, align 8, !tbaa !78
  %i.apb = sub nsw i64 %i.apa, %i.aov             ; 2 uses
  %i.apc = getelementptr inbounds i8, ptr %i.aop, i64 %i.aov
  %i.apd = call fastcc i32 @push_data_ready(ptr noundef nonnull %0, ptr noundef nonnull %.val.val.i, ptr noundef %i.apc, i64 noundef %i.apb, i64 noundef %i.aol) ; 0 uses
  %i.ape = load i64, ptr %i.aon, align 8, !tbaa !55
  %i.apf = add nsw i64 %i.ape, %i.apb
  %i.apg = call fastcc i32 @push_data_ready(ptr noundef nonnull %0, ptr noundef nonnull %.val.val.i, ptr noundef %i.aop, i64 noundef %i.aox, i64 noundef %i.apf) ; 0 uses
  br label %push_window_data.exit

bb.fg:                                            ; preds = %bb.fe
  %i.aph = getelementptr inbounds i8, ptr %i.aop, i64 %i.aov
  %i.api = sub nsw i64 %.1.i, %i.aol
  %i.apj = and i64 %i.aor, %i.api
  %i.apk = call fastcc i32 @push_data_ready(ptr noundef nonnull %0, ptr noundef nonnull %.val.val.i, ptr noundef %i.aph, i64 noundef %i.apj, i64 noundef %i.aol) ; 0 uses
  br label %push_window_data.exit

push_window_data.exit:                            ; preds = %bb.ff, %bb.fg
  store i64 %.1.i, ptr %i.aon, align 8, !tbaa !55
  br label %do_uncompress_file.exit.thread

do_uncompress_file.exit:                          ; preds = %process_block.exit, %process_block.exit, %bb.fd
  %.137.i = phi i32 [ -10, %bb.fd ], [ %.1.i12, %process_block.exit ], [ %.1.i12, %process_block.exit ] ; 2 uses
  %.not = icmp eq i32 %.137.i, -10
  br i1 %.not, label %bb.b, label %do_uncompress_file.exit.thread

do_uncompress_file.exit.thread:                   ; preds = %do_uncompress_file.exit, %bb.ap, %parse_block_header.exit.i, %bb.p, %bb.do, %bb.ds, %._crit_edge, %.lr.ph, %skip_base_block.exit67.thread83, %bb.af, %.lr.ph372, %bb.de, %bb.x, %parse_tables.exit.thread, %bb.r, %bb.ae, %.split._crit_edge, %bb.aa, %decode_number.exit, %.thread223.i.i, %.thread210.i.i, %.thread226.i.i, %.thread207.i.i, %push_window_data.exit.i, %cdeque_pop_front.exit.i, %bb.ev, %bb.dx, %bb.eu, %push_window_data.exit, %bb.h
  %.137.i156 = phi i32 [ -30, %bb.do ], [ -30, %bb.ev ], [ -30, %bb.dx ], [ -30, %bb.eu ], [ 0, %push_window_data.exit ], [ -30, %bb.de ], [ -30, %bb.h ], [ -30, %parse_tables.exit.thread ], [ -30, %skip_base_block.exit67.thread83 ], [ 0, %cdeque_pop_front.exit.i ], [ 0, %push_window_data.exit.i ], [ -30, %.thread207.i.i ], [ -30, %.thread226.i.i ], [ -30, %.thread210.i.i ], [ -30, %.thread223.i.i ], [ 1, %decode_number.exit ], [ -30, %.lr.ph ], [ -30, %bb.aa ], [ -30, %.split._crit_edge ], [ 1, %bb.af ], [ -30, %bb.x ], [ -30, %bb.r ], [ -30, %bb.ae ], [ 1, %.lr.ph372 ], [ 1, %bb.ap ], [ 1, %parse_block_header.exit.i ], [ 1, %bb.p ], [ -30, %._crit_edge ], [ 1, %bb.ds ], [ %.137.i, %do_uncompress_file.exit ]
  ret i32 %.137.i156
}

declare ptr @archive_entry_new() local_unnamed_addr #3

declare void @archive_entry_free(ptr noundef) local_unnamed_addr #3

declare i32 @blake2sp_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @create_decode_tables(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 4), (132, 136), (3208, 3820)) %1, i32 noundef range(i32 16, 307) %2) unnamed_addr #11 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 21 uses
  %i.b = alloca [16 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 3208 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(612) %i.c, i8 0, i64 612, i1 false)
  store i32 %2, ptr %1, align 4, !tbaa !89
  %i.d = icmp eq i32 %2, 306
  %i.e = select i1 %i.d, i32 10, i32 7
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 132 ; 2 uses
  store i32 %i.e, ptr %i.f, align 4, !tbaa !88
  %wide.trip.count = zext nneg i32 %2 to i64      ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %unroll_iter = and i64 %wide.trip.count, 510
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %bb.a ], [ %niter.next.1, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.h = load i8, ptr %i.g, align 1, !tbaa !32
  %i.i = and i8 %i.h, 15
  %i.j = zext nneg i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !75
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !32
  %i.q = and i8 %i.p, 15
  %i.r = zext nneg i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !75
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !75
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.b, !llvm.loop !139

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  %lcmp.mod1 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !32
  %i.x = and i8 %i.w, 15
  %i.y = zext nneg i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !75
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !75
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 3 uses
  store i32 0, ptr %i.ac, align 4, !tbaa !75
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 0, ptr %i.ad, align 4, !tbaa !75
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !75 ; 4 uses
  %i.ag = shl i32 %i.af, 15
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !75
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 0, ptr %i.ai, align 4, !tbaa !75
  %i.aj = shl i32 %i.af, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !75 ; 2 uses
  %i.am = add nsw i32 %i.al, %i.aj                ; 2 uses
  %i.an = shl i32 %i.am, 14
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !75
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 %i.af, ptr %i.ap, align 4, !tbaa !75
  %i.aq = shl i32 %i.am, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !75 ; 2 uses
  %i.at = add nsw i32 %i.as, %i.aq                ; 2 uses
  %i.au = shl i32 %i.at, 13
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.au, ptr %i.av, align 4, !tbaa !75
  %i.aw = add i32 %i.al, %i.af                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !75
  %i.ay = shl i32 %i.at, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ba = load i32, ptr %i.az, align 16, !tbaa !75 ; 2 uses
  %i.bb = add nsw i32 %i.ba, %i.ay                ; 2 uses
  %i.bc = shl i32 %i.bb, 12
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !75
  %i.be = add i32 %i.as, %i.aw                    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !75
  %i.bg = shl i32 %i.bb, 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !75 ; 2 uses
  %i.bj = add nsw i32 %i.bi, %i.bg                ; 2 uses
  %i.bk = shl i32 %i.bj, 11
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !75
  %i.bm = add i32 %i.ba, %i.be                    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !75
  %i.bo = shl i32 %i.bj, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !75 ; 2 uses
  %i.br = add nsw i32 %i.bq, %i.bo                ; 2 uses
  %i.bs = shl i32 %i.br, 10
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !75
  %i.bu = add i32 %i.bi, %i.bm                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !75
  %i.bw = shl i32 %i.br, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !75 ; 2 uses
  %i.bz = add nsw i32 %i.by, %i.bw                ; 2 uses
  %i.ca = shl i32 %i.bz, 9
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !75
  %i.cc = add i32 %i.bq, %i.bu                    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !75
  %i.ce = shl i32 %i.bz, 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cg = load i32, ptr %i.cf, align 16, !tbaa !75 ; 2 uses
  %i.ch = add nsw i32 %i.cg, %i.ce                ; 2 uses
  %i.ci = shl i32 %i.ch, 8
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !75
  %i.ck = add i32 %i.by, %i.cc                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !75
  %i.cm = shl i32 %i.ch, 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !75 ; 2 uses
  %i.cp = add nsw i32 %i.co, %i.cm                ; 2 uses
  %i.cq = shl i32 %i.cp, 7
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !75
  %i.cs = add i32 %i.cg, %i.ck                    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !75
  %i.cu = shl i32 %i.cp, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !75 ; 2 uses
  %i.cx = add nsw i32 %i.cw, %i.cu                ; 2 uses
  %i.cy = shl i32 %i.cx, 6
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !75
  %i.da = add i32 %i.co, %i.cs                    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 108
  store i32 %i.da, ptr %i.db, align 4, !tbaa !75
  %i.dc = shl i32 %i.cx, 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !75 ; 2 uses
  %i.df = add nsw i32 %i.de, %i.dc                ; 2 uses
  %i.dg = shl i32 %i.df, 5
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !75
  %i.di = add i32 %i.cw, %i.da                    ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !75
  %i.dk = shl i32 %i.df, 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.dm = load i32, ptr %i.dl, align 16, !tbaa !75 ; 2 uses
  %i.dn = add nsw i32 %i.dm, %i.dk                ; 2 uses
  %i.do = shl i32 %i.dn, 4
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !75
  %i.dq = add i32 %i.de, %i.di                    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !75
  %i.ds = shl i32 %i.dn, 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !75 ; 2 uses
  %i.dv = add nsw i32 %i.du, %i.ds                ; 2 uses
  %i.dw = shl i32 %i.dv, 3
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !75
  %i.dy = add i32 %i.dm, %i.dq                    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !75
  %i.ea = shl i32 %i.dv, 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !75 ; 2 uses
  %i.ed = add nsw i32 %i.ec, %i.ea                ; 2 uses
  %i.ee = shl i32 %i.ed, 2
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !75
  %i.eg = add i32 %i.du, %i.dy                    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 124
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !75
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !75
  %i.ek = shl i32 %i.ed, 2
  %i.el = shl i32 %i.ej, 1
  %i.em = add i32 %i.ek, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 %i.em, ptr %i.en, align 4, !tbaa !75
  %i.eo = add i32 %i.ec, %i.eg
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 4 dereferenceable(64) %i.ac, i64 64, i1 false)
  %xtraiter5 = and i64 %wide.trip.count, 1
  %unroll_iter9 = and i64 %wide.trip.count, 510
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %indvars.iv94 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next95.1, %bb.h ] ; 4 uses
  %niter10 = phi i64 [ 0, %bb.c ], [ %niter10.next.1, %bb.h ]
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv94
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !32
  %i.es = and i8 %i.er, 15                        ; 2 uses
  %.not75 = icmp eq i8 %i.es, 0
  br i1 %.not75, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.et = zext nneg i8 %i.es to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !75 ; 2 uses
  %i.ew = trunc i64 %indvars.iv94 to i16
  %i.ex = sext i32 %i.ev to i64
  %i.ey = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.ex
  store i16 %i.ew, ptr %i.ey, align 2, !tbaa !87
  %i.ez = add i32 %i.ev, 1
  store i32 %i.ez, ptr %i.eu, align 4, !tbaa !75
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next95 = or disjoint i64 %indvars.iv94, 1 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next95
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !32
  %i.fc = and i8 %i.fb, 15                        ; 2 uses
  %.not75.1 = icmp eq i8 %i.fc, 0
  br i1 %.not75.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fd = zext nneg i8 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fd ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !75 ; 2 uses
  %i.fg = trunc i64 %indvars.iv.next95 to i16
  %i.fh = sext i32 %i.ff to i64
  %i.fi = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.fh
  store i16 %i.fg, ptr %i.fi, align 2, !tbaa !87
  %i.fj = add i32 %i.ff, 1
  store i32 %i.fj, ptr %i.fe, align 4, !tbaa !75
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.next95.1 = add nuw nsw i64 %indvars.iv94, 2 ; 3 uses
  %niter10.next.1 = add nuw nsw i64 %niter10, 2   ; 2 uses
  %niter10.ncmp.1 = icmp eq i64 %niter10.next.1, %unroll_iter9
  br i1 %niter10.ncmp.1, label %.unr-lcssa3, label %bb.d, !llvm.loop !140

.unr-lcssa3:                                      ; preds = %bb.h
  %lcmp.mod6.not = icmp eq i64 %xtraiter5, 0
  br i1 %lcmp.mod6.not, label %.epilog-lcssa7, label %.epil.preheader4

.epil.preheader4:                                 ; preds = %.unr-lcssa3
  %lcmp.mod8 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next95.1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !32
  %i.fm = and i8 %i.fl, 15                        ; 2 uses
  %.not75.epil = icmp eq i8 %i.fm, 0
  br i1 %.not75.epil, label %.epilog-lcssa7, label %bb.i

bb.i:                                             ; preds = %.epil.preheader4
  %i.fn = zext nneg i8 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fn ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !75 ; 2 uses
  %i.fq = trunc i64 %indvars.iv.next95.1 to i16
  %i.fr = sext i32 %i.fp to i64
  %i.fs = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.fr
  store i16 %i.fq, ptr %i.fs, align 2, !tbaa !87
  %i.ft = add i32 %i.fp, 1
  store i32 %i.ft, ptr %i.fo, align 4, !tbaa !75
  br label %.epilog-lcssa7

.epilog-lcssa7:                                   ; preds = %.epil.preheader4, %bb.i, %.unr-lcssa3
  %i.fu = load i32, ptr %i.f, align 4, !tbaa !88  ; 3 uses
  %.not88 = icmp eq i32 %i.fu, 63
  br i1 %.not88, label %._crit_edge, label %.lr.ph87

.lr.ph87:                                         ; preds = %.epilog-lcssa7
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = shl nuw i64 1, %i.fv
  %i.fx = sub i32 16, %i.fu
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 1160
  %smax = tail call i64 @llvm.smax.i64(i64 %i.fw, i64 1)
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph87, %bb.m
  %indvars.iv100 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next101, %bb.m ] ; 4 uses
  %.06885 = phi i64 [ 1, %.lr.ph87 ], [ %.1.lcssa, %bb.m ] ; 3 uses
  %i.ga = trunc nuw nsw i64 %indvars.iv100 to i32
  %i.gb = shl i32 %i.ga, %i.fx                    ; 2 uses
  %i.gc = icmp slt i64 %.06885, 16
  br i1 %i.gc, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %.180 = phi i64 [ %i.gf, %bb.k ], [ %.06885, %bb.j ] ; 3 uses
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %.180
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !75
  %.not = icmp slt i32 %i.gb, %i.ge               ; 3 uses
  br i1 %.not, label %.critedge, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.gf = add i64 %.180, 1                        ; 2 uses
  %exitcond99.not = icmp eq i64 %i.gf, 16
  br i1 %exitcond99.not, label %.critedge, label %.lr.ph, !llvm.loop !141

.critedge:                                        ; preds = %.lr.ph, %bb.k, %bb.j
  %.1.lcssa = phi i64 [ %.06885, %bb.j ], [ 16, %bb.k ], [ %.180, %.lr.ph ] ; 5 uses
  %.lcssa = phi i1 [ false, %bb.j ], [ %.not, %bb.k ], [ %.not, %.lr.ph ]
  %i.gg = trunc i64 %.1.lcssa to i8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 %indvars.iv100
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !32
  %i.gi = getelementptr [4 x i8], ptr %1, i64 %.1.lcssa
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !75
  %i.gk = sub nsw i32 %i.gb, %i.gj
  %i.gl = trunc i64 %.1.lcssa to i32
  %i.gm = sub i32 16, %i.gl
  %i.gn = ashr i32 %i.gk, %i.gm
  %i.go = and i64 %.1.lcssa, 15
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !75
  %i.gr = add i32 %i.gn, %i.gq                    ; 2 uses
  %i.gs = icmp slt i32 %i.gr, %2
  %or.cond = select i1 %.lcssa, i1 %i.gs, i1 false
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge
  %i.gt = sext i32 %i.gr to i64
  %i.gu = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !87
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %bb.l
  %.sink = phi i16 [ %i.gv, %bb.l ], [ 0, %.critedge ]
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.fz, i64 %indvars.iv100
  store i16 %.sink, ptr %i.gw, align 2, !tbaa !87
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next101, %smax
  br i1 %exitcond103.not, label %._crit_edge, label %bb.j, !llvm.loop !142

._crit_edge:                                      ; preds = %bb.m, %.epilog-lcssa7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @decode_number(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2072
  %.val = load ptr, ptr %i.a, align 8, !tbaa !50
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !52 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val.val, i64 21276 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !85   ; 3 uses
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 144
  %i.f = load i64, ptr %i.e, align 8, !tbaa !84
  %.not.i = icmp sgt i64 %i.f, %i.d
  br i1 %.not.i, label %bb.b, label %read_bits_16.exit

read_bits_16.exit:                                ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 22, ptr noundef nonnull @.str.55) #14
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val.val, i64 21272 ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %2, i64 %i.d ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !32
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 16
  %i.l = getelementptr i8, ptr %i.h, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !32
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 8
  %i.p = or disjoint i32 %i.o, %i.k
  %i.q = getelementptr i8, ptr %i.h, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !32
  %i.s = zext i8 %i.r to i32
  %i.t = or disjoint i32 %i.p, %i.s
  %i.u = load i8, ptr %i.g, align 8, !tbaa !86
  %i.v = sext i8 %i.u to i32                      ; 3 uses
  %i.w = sub nsw i32 8, %i.v
  %i.x = lshr i32 %i.t, %i.w
  %i.y = and i32 %i.x, 65534                      ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !88 ; 3 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75
  %i.af = icmp sgt i32 %i.ae, %i.y
  br i1 %i.af, label %bb.c, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %.03548 = add i32 %i.ab, 1                      ; 2 uses
  %i.ag = icmp slt i32 %.03548, 15
  br i1 %i.ag, label %.lr.ph, label %.preheader._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.ah = sub i32 16, %i.ab
  %i.ai = lshr i32 %i.y, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ak = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !32
  %i.an = zext i8 %i.am to i32
  %i.ao = add nsw i32 %i.v, %i.an                 ; 2 uses
  %i.ap = ashr i32 %i.ao, 3
  %i.aq = add nsw i32 %i.ap, %i.c
  store i32 %i.aq, ptr %i.b, align 4, !tbaa !85
  %i.ar = trunc i32 %i.ao to i8
  %i.as = and i8 %i.ar, 7
  store i8 %i.as, ptr %i.g, align 8, !tbaa !86
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 1160
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ak
  %i.av = load i16, ptr %i.au, align 2, !tbaa !87
  store i16 %i.av, ptr %3, align 2, !tbaa !87
  br label %bb.d

.preheader:                                       ; preds = %.lr.ph
  %.035 = add i32 %.03549, 1                      ; 2 uses
  %i.aw = icmp slt i32 %.035, 15
  br i1 %i.aw, label %.lr.ph, label %.preheader._crit_edge, !llvm.loop !3

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %.03549 = phi i32 [ %.035, %.preheader ], [ %.03548, %.preheader.preheader ] ; 3 uses
  %i.ax = sext i32 %.03549 to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !75
  %i.ba = icmp sgt i32 %i.az, %i.y
  br i1 %i.ba, label %..preheader._crit_edge_crit_edge, label %.preheader, !llvm.loop !3

..preheader._crit_edge_crit_edge:                 ; preds = %.lr.ph
  br label %.preheader._crit_edge, !llvm.loop !3

.preheader._crit_edge:                            ; preds = %.preheader, %..preheader._crit_edge_crit_edge, %.preheader.preheader
  %.034 = phi i32 [ 15, %.preheader.preheader ], [ %.03549, %..preheader._crit_edge_crit_edge ], [ 15, %.preheader ] ; 3 uses
  %i.bb = add nsw i32 %.034, %i.v                 ; 2 uses
  %i.bc = ashr i32 %i.bb, 3
  %i.bd = add nsw i32 %i.bc, %i.c
  store i32 %i.bd, ptr %i.b, align 4, !tbaa !85
  %i.be = trunc i32 %i.bb to i8
  %i.bf = and i8 %i.be, 7
  store i8 %i.bf, ptr %i.g, align 8, !tbaa !86
  %i.bg = sext i32 %.034 to i64                   ; 2 uses
  %i.bh = getelementptr [4 x i8], ptr %i.z, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !75
  %i.bk = sub nsw i32 %i.y, %i.bj
  %i.bl = sub nsw i32 16, %.034
  %i.bm = ashr i32 %i.bk, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bg
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !75
  %i.bq = add i32 %i.bm, %i.bp                    ; 2 uses
  %i.br = load i32, ptr %1, align 4, !tbaa !89
  %.not38 = icmp ult i32 %i.bq, %i.br
  %spec.store.select = select i1 %.not38, i32 %i.bq, i32 0
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 3208
  %i.bt = zext i32 %spec.store.select to i64
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !87
  store i16 %i.bv, ptr %3, align 2, !tbaa !87
  br label %bb.d

end_hunk_0
