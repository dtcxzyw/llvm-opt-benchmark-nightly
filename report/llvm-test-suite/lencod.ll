inline.NumInlined: 37
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@report_frame_statistic:bb.a
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 896
  %i.on = load i64, ptr %i.om, align 8, !tbaa !205
  %i.oo = load i64, ptr getelementptr inbounds nuw (i8, ptr @report_frame_statistic.last_mode_use, i64 136), align 8, !tbaa !205
  %i.op = sub nsw i64 %i.on, %i.oo
  %i.oq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0, ptr noundef nonnull @.str.26, i64 noundef %i.op) #23 ; 0 uses
  %i.or = load ptr, ptr @stats, align 8, !tbaa !8
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 904
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !205
  %i.ou = load i64, ptr getelementptr inbounds nuw (i8, ptr @report_frame_statistic.last_mode_use, i64 144), align 16, !tbaa !205
  %i.ov = sub nsw i64 %i.ot, %i.ou
  %i.ow = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0, ptr noundef nonnull @.str.26, i64 noundef %i.ov) #23 ; 0 uses
  %i.ox = load ptr, ptr @stats, align 8, !tbaa !8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 144
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !4
  %i.pa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0, ptr noundef nonnull @.str.27, i32 noundef %i.oz) #23 ; 0 uses
  %i.pb = load ptr, ptr @stats, align 8, !tbaa !8
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 444
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !4
  %i.pe = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0, ptr noundef nonnull @.str.27, i32 noundef %i.pd) #23 ; 0 uses
  %i.pf = load ptr, ptr @stats, align 8, !tbaa !8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 148
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !4
  %i.pi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0, ptr noundef nonnull @.str.27, i32 noundef %i.ph) #23 ; 0 uses
  %i.pj = load ptr, ptr @stats, align 8, !tbaa !8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 448
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !4
  %i.pm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0, ptr noundef nonnull @.str.27, i32 noundef %i.pl) #23 ; 0 uses
  %i.pn = load ptr, ptr @stats, align 8, !tbaa !8
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 152
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !4
  %i.pq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0, ptr noundef nonnull @.str.27, i32 noundef %i.pp) #23 ; 0 uses
  %i.pr = load ptr, ptr @stats, align 8, !tbaa !8
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 452
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !4
  %i.pu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0, ptr noundef nonnull @.str.27, i32 noundef %i.pt) #23 ; 0 uses
  %i.pv = load ptr, ptr @stats, align 8, !tbaa !8
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 156
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !4
  %i.py = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0, ptr noundef nonnull @.str.27, i32 noundef %i.px) #23 ; 0 uses
  %i.pz = load ptr, ptr @stats, align 8, !tbaa !8
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 456
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !4
  %i.qc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0, ptr noundef nonnull @.str.27, i32 noundef %i.qb) #23 ; 0 uses
  %i.qd = load ptr, ptr @stats, align 8, !tbaa !8
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 944
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !205
  %i.qg = load i64, ptr getelementptr inbounds nuw (i8, ptr @report_frame_statistic.last_mode_use, i64 184), align 8, !tbaa !205
  %i.qh = sub nsw i64 %i.qf, %i.qg
  %i.qi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0, ptr noundef nonnull @.str.26, i64 noundef %i.qh) #23 ; 0 uses
  %i.qj = load ptr, ptr @stats, align 8, !tbaa !8 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 52
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !4
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 56
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !4
  %i.qo = load i32, ptr getelementptr inbounds nuw (i8, ptr @report_frame_statistic.last_b8_mode_0, i64 8), align 8, !tbaa !4
  %i.qp = load i32, ptr getelementptr inbounds nuw (i8, ptr @report_frame_statistic.last_b8_mode_0, i64 12), align 4, !tbaa !4
  %.neg82 = add i32 %i.qn, %i.ql
  %i.qq = add i32 %i.qo, %i.qp
  %i.qr = sub i32 %.neg82, %i.qq
  %i.qs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0, ptr noundef nonnull @.str.28, i32 noundef %i.qr) #23 ; 0 uses
  %i.qt = load ptr, ptr @stats, align 8, !tbaa !8
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 56
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !4
  %i.qw = load i32, ptr getelementptr inbounds nuw (i8, ptr @report_frame_statistic.last_b8_mode_0, i64 12), align 4, !tbaa !4
  %i.qx = sub nsw i32 %i.qv, %i.qw
  %i.qy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0, ptr noundef nonnull @.str.27, i32 noundef %i.qx) #23 ; 0 uses
  %i.qz = load ptr, ptr @stats, align 8, !tbaa !8
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 52
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !4
  %i.rc = load i32, ptr getelementptr inbounds nuw (i8, ptr @report_frame_statistic.last_b8_mode_0, i64 8), align 8, !tbaa !4
  %i.rd = sub nsw i32 %i.rb, %i.rc
  %i.re = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0, ptr noundef nonnull @.str.27, i32 noundef %i.rd) #23 ; 0 uses
  %i.rf = load ptr, ptr @stats, align 8, !tbaa !8
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 912
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !205
  %i.ri = load i64, ptr getelementptr inbounds nuw (i8, ptr @report_frame_statistic.last_mode_use, i64 152), align 8, !tbaa !205
  %i.rj = sub nsw i64 %i.rh, %i.ri
  %i.rk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0, ptr noundef nonnull @.str.26, i64 noundef %i.rj) #23 ; 0 uses
  %i.rl = load ptr, ptr @stats, align 8, !tbaa !8
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 160
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !4
  %i.ro = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0, ptr noundef nonnull @.str.27, i32 noundef %i.rn) #23 ; 0 uses
  %i.rp = load ptr, ptr @stats, align 8, !tbaa !8
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 460
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !4
  %i.rs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0, ptr noundef nonnull @.str.27, i32 noundef %i.rr) #23 ; 0 uses
  %i.rt = load ptr, ptr @stats, align 8, !tbaa !8
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 920
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !205
  %i.rw = load i64, ptr getelementptr inbounds nuw (i8, ptr @report_frame_statistic.last_mode_use, i64 160), align 16, !tbaa !205
  %i.rx = sub nsw i64 %i.rv, %i.rw
  %i.ry = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0, ptr noundef nonnull @.str.26, i64 noundef %i.rx) #23 ; 0 uses
  %i.rz = load ptr, ptr @stats, align 8, !tbaa !8
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 928
  %i.sb = load i64, ptr %i.sa, align 8, !tbaa !205
  %i.sc = load i64, ptr getelementptr inbounds nuw (i8, ptr @report_frame_statistic.last_mode_use, i64 168), align 8, !tbaa !205
  %i.sd = sub nsw i64 %i.sb, %i.sc
  %i.se = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0, ptr noundef nonnull @.str.26, i64 noundef %i.sd) #23 ; 0 uses
  %i.sf = load ptr, ptr @stats, align 8, !tbaa !8
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 936
  %i.sh = load i64, ptr %i.sg, align 8, !tbaa !205
  %i.si = load i64, ptr getelementptr inbounds nuw (i8, ptr @report_frame_statistic.last_mode_use, i64 176), align 16, !tbaa !205
  %i.sj = sub nsw i64 %i.sh, %i.si
  %i.sk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0, ptr noundef nonnull @.str.26, i64 noundef %i.sj) #23 ; 0 uses
  %fputc = call i32 @fputc(i32 10, ptr %.0)       ; 0 uses
  %i.sl = load ptr, ptr @stats, align 8, !tbaa !8 ; 7 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 1000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) getelementptr inbounds nuw (i8, ptr @report_frame_statistic.last_mode_use, i64 240), ptr noundef nonnull align 8 dereferenceable(120) %i.sm, i64 120, i1 false)
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) @report_frame_statistic.last_mode_use, ptr noundef nonnull align 8 dereferenceable(120) %i.sn, i64 120, i1 false)
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 880
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) getelementptr inbounds nuw (i8, ptr @report_frame_statistic.last_mode_use, i64 120), ptr noundef nonnull align 8 dereferenceable(120) %i.so, i64 120, i1 false)
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sl, i64 84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.sp, i8 0, i64 120, i1 false)
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sl, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.sq, i8 0, i64 120, i1 false)
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sl, i64 52
  %i.ss = load i64, ptr %i.sr, align 4
  store i64 %i.ss, ptr getelementptr inbounds nuw (i8, ptr @report_frame_statistic.last_b8_mode_0, i64 8), align 8
  %i.st = getelementptr inbounds nuw i8, ptr %i.sl, i64 684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @report_frame_statistic.last_mode_chroma_use, ptr noundef nonnull align 4 dereferenceable(16) %i.st, i64 16, i1 false)
  store i32 0, ptr @frame_statistic_start, align 4, !tbaa !4
  %i.su = call i32 @fclose(ptr noundef %.0)       ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

declare void @encode_enhancement_layer() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @process_2nd_IGOP() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !8  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !51   ; 3 uses
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4740
  %i.f = load i32, ptr %i.e, align 4, !tbaa !96   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @img, align 8, !tbaa !8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !76
  %i.j = icmp ne i32 %i.i, %i.d
  %i.k = load i32, ptr @In2ndIGOP, align 4
  %i.l = icmp ne i32 %i.k, 0
  %or.cond = select i1 %i.j, i1 true, i1 %i.l
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr @In2ndIGOP, align 4, !tbaa !4
  store i32 %i.c, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !70
  %i.o = add nsw i32 %i.n, 1
  %i.p = mul nsw i32 %i.o, %i.d
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr @start_tr_in_this_IGOP, align 4, !tbaa !4
  %i.r = add nsw i32 %i.f, %i.c
  store i32 %i.r, ptr %i.b, align 8, !tbaa !51
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

declare i32 @terminate_sequence() local_unnamed_addr #3

declare void @flush_dpb() local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #8

declare void @Clear_Motion_Search_Module() local_unnamed_addr #3

declare void @RandomIntraUninit() local_unnamed_addr #3

declare void @FmoUninit() local_unnamed_addr #3

declare void @clear_gop_structure() local_unnamed_addr #3

declare void @clear_rdopt() local_unnamed_addr #3

declare void @calc_buffer(...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @report() local_unnamed_addr #1 {
.preheader150:
  %i.a = alloca [30 x i8], align 16               ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [1000 x i8], align 16             ; 6 uses
  %i.d = alloca [80 x i8], align 16               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @frame_ctr, i64 8), align 8, !tbaa !4
  %i.f = load i32, ptr @frame_ctr, align 16, !tbaa !4
  %0 = load i32, ptr getelementptr inbounds nuw (i8, ptr @frame_ctr, i64 12), align 4, !tbaa !4
  %1 = add nsw i32 %0, %i.f
  %i.g = tail call noundef i32 @llvm.smax.i32(i32 %1, i32 1) ; 2 uses
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @frame_ctr, i64 4), align 4, !tbaa !4 ; 3 uses
  %i.i = load ptr, ptr @stats, align 8, !tbaa !8  ; 66 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1360
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 2040
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 2000
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 2080
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 2120
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 2160
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 2200
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 1960
  %i.r = load i64, ptr %i.j, align 8, !tbaa !205
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 1368
  %i.t = load i64, ptr %i.s, align 8, !tbaa !205
  %i.u = add nsw i64 %i.r, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 1376
  %i.w = load i64, ptr %i.v, align 8, !tbaa !205
  %i.x = add nsw i64 %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 1384
  %i.z = load i64, ptr %i.y, align 8, !tbaa !205
  %i.aa = add nsw i64 %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 1392
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !205
  %i.ad = add nsw i64 %i.aa, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1400
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !205
  %i.ag = add nsw i64 %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 1408
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !205
  %i.aj = add nsw i64 %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 1416
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !205
  %i.am = add nsw i64 %i.aj, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 1424
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !205
  %i.ap = add nsw i64 %i.am, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 1432
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !205
  %i.as = add nsw i64 %i.ap, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 1440
  %i.au = load i64, ptr %i.at, align 8, !tbaa !205
  %i.av = add nsw i64 %i.as, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 1448
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !205
  %i.ay = add nsw i64 %i.av, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 1456
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !205
  %i.bb = add nsw i64 %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 1464
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !205
  %i.be = add nsw i64 %i.bb, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 1472
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !205
  %i.bh = add nsw i64 %i.be, %i.bg
  %i.bi = load i64, ptr %i.k, align 8, !tbaa !205
  %i.bj = add nsw i64 %i.bh, %i.bi
  %i.bk = load i64, ptr %i.l, align 8, !tbaa !205
  %i.bl = add nsw i64 %i.bk, %i.bj
  %i.bm = load i64, ptr %i.m, align 8, !tbaa !205
  %i.bn = add nsw i64 %i.bm, %i.bl
  %i.bo = load i64, ptr %i.n, align 8, !tbaa !205
  %i.bp = add nsw i64 %i.bo, %i.bn
  %i.bq = load i64, ptr %i.o, align 8, !tbaa !205
  %i.br = add nsw i64 %i.bq, %i.bp
  %i.bs = load i64, ptr %i.p, align 8, !tbaa !205
  %i.bt = add nsw i64 %i.bs, %i.br
  %i.bu = load i64, ptr %i.q, align 8, !tbaa !205
  %i.bv = add nsw i64 %i.bu, %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 1480
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !205
  %i.by = getelementptr inbounds nuw i8, ptr %i.i, i64 1488
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !205
  %i.ca = add nsw i64 %i.bx, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 1496
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !205
  %i.cd = add nsw i64 %i.ca, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 1504
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !205
  %i.cg = add nsw i64 %i.cd, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.i, i64 1512
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !205
  %i.cj = add nsw i64 %i.cg, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.i, i64 1520
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !205
  %i.cm = add nsw i64 %i.cj, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.i, i64 1528
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !205
  %i.cp = add nsw i64 %i.cm, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 1536
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !205
  %i.cs = add nsw i64 %i.cp, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.i, i64 1544
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !205
  %i.cv = add nsw i64 %i.cs, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.i, i64 1552
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !205
  %i.cy = add nsw i64 %i.cv, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.i, i64 1560
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !205
  %i.db = add nsw i64 %i.cy, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.i, i64 1568
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !205
  %i.de = add nsw i64 %i.db, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.i, i64 1576
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !205
  %i.dh = add nsw i64 %i.de, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.i, i64 1584
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !205
  %i.dk = add nsw i64 %i.dh, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 1592
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !205
  %i.dn = add nsw i64 %i.dk, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 2048
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !205
  %i.dq = add nsw i64 %i.dn, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 2008
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !205
  %i.dt = add nsw i64 %i.ds, %i.dq
  %i.du = getelementptr inbounds nuw i8, ptr %i.i, i64 2088
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !205
  %i.dw = add nsw i64 %i.dv, %i.dt
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 2128
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !205
  %i.dz = add nsw i64 %i.dy, %i.dw
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 2168
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !205
  %i.ec = add nsw i64 %i.eb, %i.dz
  %i.ed = getelementptr inbounds nuw i8, ptr %i.i, i64 2208
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !205
  %i.ef = add nsw i64 %i.ee, %i.ec
  %i.eg = getelementptr inbounds nuw i8, ptr %i.i, i64 1968
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !205
  %i.ei = add nsw i64 %i.eh, %i.ef
  %i.ej = getelementptr inbounds nuw i8, ptr %i.i, i64 1600
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !205
  %i.el = getelementptr inbounds nuw i8, ptr %i.i, i64 1608
  %i.em = load i64, ptr %i.el, align 8, !tbaa !205
  %i.en = add nsw i64 %i.ek, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.i, i64 1616
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !205
  %i.eq = add nsw i64 %i.en, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.i, i64 1624
  %i.es = load i64, ptr %i.er, align 8, !tbaa !205
  %i.et = add nsw i64 %i.eq, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.i, i64 1632
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !205
  %i.ew = add nsw i64 %i.et, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.i, i64 1640
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !205
  %i.ez = add nsw i64 %i.ew, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.i, i64 1648
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !205
  %i.fc = add nsw i64 %i.ez, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.i, i64 1656
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !205
  %i.ff = add nsw i64 %i.fc, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.i, i64 1664
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !205
  %i.fi = add nsw i64 %i.ff, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.i, i64 1672
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !205
  %i.fl = add nsw i64 %i.fi, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.i, i64 1680
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !205
  %i.fo = add nsw i64 %i.fl, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.i, i64 1688
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !205
  %i.fr = add nsw i64 %i.fo, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.i, i64 1696
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !205
  %i.fu = add nsw i64 %i.fr, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.i, i64 1704
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !205
  %i.fx = add nsw i64 %i.fu, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.i, i64 1712
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !205
  %i.ga = add nsw i64 %i.fx, %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.i, i64 2056
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !205
  %i.gd = add nsw i64 %i.ga, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.i, i64 2016
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !205
  %i.gg = add nsw i64 %i.gf, %i.gd
  %i.gh = getelementptr inbounds nuw i8, ptr %i.i, i64 2096
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !205
  %i.gj = add nsw i64 %i.gi, %i.gg
  %i.gk = getelementptr inbounds nuw i8, ptr %i.i, i64 2136
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !205
  %i.gm = add nsw i64 %i.gl, %i.gj
  %i.gn = getelementptr inbounds nuw i8, ptr %i.i, i64 2176
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !205
  %i.gp = add nsw i64 %i.go, %i.gm
  %i.gq = getelementptr inbounds nuw i8, ptr %i.i, i64 2216
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !205
  %i.gs = add nsw i64 %i.gr, %i.gp
  %i.gt = getelementptr inbounds nuw i8, ptr %i.i, i64 1976
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !205
  %i.gv = add nsw i64 %i.gu, %i.gs
  %i.gw = load ptr, ptr @img, align 8, !tbaa !8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 48
  %i.gy = load float, ptr %i.gx, align 8, !tbaa !142
end_hunk_0
begin_hunk_1_@report:.preheader150
  %i.akd = load ptr, ptr @stats, align 8, !tbaa !8 ; 2 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 760
  %i.akf = load i64, ptr %i.ake, align 8, !tbaa !205
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akd, i64 1360
  %i.akh = load i64, ptr %i.akg, align 8, !tbaa !205
  %i.aki = sitofp i64 %i.akh to double
  %i.akj = uitofp nneg i32 %i.g to double         ; 6 uses
  %i.akk = fdiv double %i.aki, %i.akj
  %i.akl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.akc, ptr noundef nonnull @.str.143, i64 noundef %i.akf, double noundef %i.akk) #23 ; 0 uses
  %i.akm = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.akn = load ptr, ptr @stats, align 8, !tbaa !8 ; 2 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 768
  %i.akp = load i64, ptr %i.ako, align 8, !tbaa !205
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akn, i64 1368
  %i.akr = load i64, ptr %i.akq, align 8, !tbaa !205
  %i.aks = sitofp i64 %i.akr to double
  %i.akt = fdiv double %i.aks, %i.akj
  %i.aku = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.akm, ptr noundef nonnull @.str.144, i64 noundef %i.akp, double noundef %i.akt) #23 ; 0 uses
  %i.akv = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.akw = load ptr, ptr @stats, align 8, !tbaa !8 ; 2 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 776
  %i.aky = load i64, ptr %i.akx, align 8, !tbaa !205
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akw, i64 1376
  %i.ala = load i64, ptr %i.akz, align 8, !tbaa !205
  %i.alb = sitofp i64 %i.ala to double
  %i.alc = fdiv double %i.alb, %i.akj
  %i.ald = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.akv, ptr noundef nonnull @.str.145, i64 noundef %i.aky, double noundef %i.alc) #23 ; 0 uses
  %i.ale = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.alf = load ptr, ptr @stats, align 8, !tbaa !8 ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 784
  %i.alh = load i64, ptr %i.alg, align 8, !tbaa !205
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alf, i64 1384
  %i.alj = load i64, ptr %i.ali, align 8, !tbaa !205
  %i.alk = sitofp i64 %i.alj to double
  %i.all = fdiv double %i.alk, %i.akj
  %i.alm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ale, ptr noundef nonnull @.str.146, i64 noundef %i.alh, double noundef %i.all) #23 ; 0 uses
  %i.aln = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.alo = load ptr, ptr @stats, align 8, !tbaa !8 ; 2 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 824
  %i.alq = load i64, ptr %i.alp, align 8, !tbaa !205
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alo, i64 1424
  %i.als = load i64, ptr %i.alr, align 8, !tbaa !205
  %i.alt = sitofp i64 %i.als to double
  %i.alu = fdiv double %i.alt, %i.akj
  %i.alv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aln, ptr noundef nonnull @.str.147, i64 noundef %i.alq, double noundef %i.alu) #23 ; 0 uses
  %i.alw = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.alx = load ptr, ptr @stats, align 8, !tbaa !8
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 832
  %i.alz = load i64, ptr %i.aly, align 8, !tbaa !205
  %i.ama = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.alw, ptr noundef nonnull @.str.148, i64 noundef %i.alz) #23 ; 0 uses
  %i.amb = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.amc = load ptr, ptr @stats, align 8, !tbaa !8
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 864
  %i.ame = load i64, ptr %i.amd, align 8, !tbaa !205
  %i.amf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.amb, ptr noundef nonnull @.str.149, i64 noundef %i.ame) #23 ; 0 uses
  %i.amg = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.amh = load ptr, ptr @stats, align 8, !tbaa !8
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 840
  %i.amj = load i64, ptr %i.ami, align 8, !tbaa !205
  %i.amk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.amg, ptr noundef nonnull @.str.150, i64 noundef %i.amj) #23 ; 0 uses
  %i.aml = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.amm = load ptr, ptr @stats, align 8, !tbaa !8
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 872
  %i.amo = load i64, ptr %i.amn, align 8, !tbaa !205
  %i.amp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aml, ptr noundef nonnull @.str.151, i64 noundef %i.amo) #23 ; 0 uses
  %i.amq = load ptr, ptr @stats, align 8, !tbaa !8 ; 6 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amq, i64 1360
  %i.ams = load i64, ptr %i.amr, align 8, !tbaa !205
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amq, i64 1368
  %i.amu = load i64, ptr %i.amt, align 8, !tbaa !205
  %i.amv = add nsw i64 %i.amu, %i.ams
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amq, i64 1376
  %i.amx = load i64, ptr %i.amw, align 8, !tbaa !205
  %i.amy = add nsw i64 %i.amv, %i.amx
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amq, i64 1384
  %i.ana = load i64, ptr %i.amz, align 8, !tbaa !205
  %i.anb = add nsw i64 %i.amy, %i.ana
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amq, i64 1424
  %i.and = load i64, ptr %i.anc, align 8, !tbaa !205
  %i.ane = add nsw i64 %i.anb, %i.and
  %i.anf = sitofp i64 %i.ane to double
  %i.ang = fdiv double %i.anf, %i.akj
  %i.anh = getelementptr inbounds nuw i8, ptr %i.amq, i64 700
  %i.ani = load i32, ptr %i.anh, align 4, !tbaa !15
  %i.anj = icmp ne i32 %i.ani, 0
  %i.ank = load i32, ptr getelementptr inbounds nuw (i8, ptr @frame_ctr, i64 4), align 4
  %i.anl = icmp ne i32 %i.ank, 0
  %or.cond = select i1 %i.anj, i1 %i.anl, i1 false
  br i1 %or.cond, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.anm = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.ann = call i64 @fwrite(ptr nonnull @.str.152, i64 61, i64 1, ptr %i.anm) ; 0 uses
  %i.ano = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.anp = call i64 @fwrite(ptr nonnull @.str.153, i64 59, i64 1, ptr %i.ano) ; 0 uses
  %i.anq = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.anr = call i64 @fwrite(ptr nonnull @.str.142, i64 58, i64 1, ptr %i.anq) ; 0 uses
  %i.ans = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.ant = load ptr, ptr @stats, align 8, !tbaa !8 ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 880
  %i.anv = load i64, ptr %i.anu, align 8, !tbaa !205
  %i.anw = getelementptr inbounds nuw i8, ptr %i.ant, i64 1480
  %i.anx = load i64, ptr %i.anw, align 8, !tbaa !205
  %i.any = sitofp i64 %i.anx to double
  %i.anz = load i32, ptr getelementptr inbounds nuw (i8, ptr @frame_ctr, i64 4), align 4, !tbaa !4
  %i.aoa = sitofp i32 %i.anz to double
  %i.aob = fdiv double %i.any, %i.aoa
  %i.aoc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ans, ptr noundef nonnull @.str.143, i64 noundef %i.anv, double noundef %i.aob) #23 ; 0 uses
  %i.aod = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.aoe = load ptr, ptr @stats, align 8, !tbaa !8 ; 2 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoe, i64 888
  %i.aog = load i64, ptr %i.aof, align 8, !tbaa !205
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aoe, i64 1488
  %i.aoi = load i64, ptr %i.aoh, align 8, !tbaa !205
  %i.aoj = sitofp i64 %i.aoi to double
  %i.aok = load i32, ptr getelementptr inbounds nuw (i8, ptr @frame_ctr, i64 4), align 4, !tbaa !4
  %i.aol = sitofp i32 %i.aok to double
  %i.aom = fdiv double %i.aoj, %i.aol
  %i.aon = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aod, ptr noundef nonnull @.str.144, i64 noundef %i.aog, double noundef %i.aom) #23 ; 0 uses
  %i.aoo = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.aop = load ptr, ptr @stats, align 8, !tbaa !8 ; 2 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 896
  %i.aor = load i64, ptr %i.aoq, align 8, !tbaa !205
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aop, i64 1496
  %i.aot = load i64, ptr %i.aos, align 8, !tbaa !205
  %i.aou = sitofp i64 %i.aot to double
  %i.aov = load i32, ptr getelementptr inbounds nuw (i8, ptr @frame_ctr, i64 4), align 4, !tbaa !4
  %i.aow = sitofp i32 %i.aov to double
  %i.aox = fdiv double %i.aou, %i.aow
  %i.aoy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aoo, ptr noundef nonnull @.str.145, i64 noundef %i.aor, double noundef %i.aox) #23 ; 0 uses
  %i.aoz = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.apa = load ptr, ptr @stats, align 8, !tbaa !8 ; 2 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %i.apa, i64 904
  %i.apc = load i64, ptr %i.apb, align 8, !tbaa !205
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apa, i64 1504
  %i.ape = load i64, ptr %i.apd, align 8, !tbaa !205
  %i.apf = sitofp i64 %i.ape to double
  %i.apg = load i32, ptr getelementptr inbounds nuw (i8, ptr @frame_ctr, i64 4), align 4, !tbaa !4
  %i.aph = sitofp i32 %i.apg to double
  %i.api = fdiv double %i.apf, %i.aph
  %i.apj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aoz, ptr noundef nonnull @.str.146, i64 noundef %i.apc, double noundef %i.api) #23 ; 0 uses
  %i.apk = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.apl = load ptr, ptr @stats, align 8, !tbaa !8 ; 2 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 944
  %i.apn = load i64, ptr %i.apm, align 8, !tbaa !205
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apl, i64 1544
  %i.app = load i64, ptr %i.apo, align 8, !tbaa !205
  %i.apq = sitofp i64 %i.app to double
  %i.apr = load i32, ptr getelementptr inbounds nuw (i8, ptr @frame_ctr, i64 4), align 4, !tbaa !4
  %i.aps = sitofp i32 %i.apr to double
  %i.apt = fdiv double %i.apq, %i.aps
  %i.apu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.apk, ptr noundef nonnull @.str.147, i64 noundef %i.apn, double noundef %i.apt) #23 ; 0 uses
  %i.apv = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.apw = load ptr, ptr @stats, align 8, !tbaa !8
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apw, i64 952
  %i.apy = load i64, ptr %i.apx, align 8, !tbaa !205
  %i.apz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.apv, ptr noundef nonnull @.str.148, i64 noundef %i.apy) #23 ; 0 uses
  %i.aqa = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.aqb = load ptr, ptr @stats, align 8, !tbaa !8
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aqb, i64 984
  %i.aqd = load i64, ptr %i.aqc, align 8, !tbaa !205
  %i.aqe = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aqa, ptr noundef nonnull @.str.149, i64 noundef %i.aqd) #23 ; 0 uses
  %i.aqf = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.aqg = load ptr, ptr @stats, align 8, !tbaa !8
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 960
  %i.aqi = load i64, ptr %i.aqh, align 8, !tbaa !205
  %i.aqj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aqf, ptr noundef nonnull @.str.150, i64 noundef %i.aqi) #23 ; 0 uses
  %i.aqk = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.aql = load ptr, ptr @stats, align 8, !tbaa !8
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aql, i64 992
  %i.aqn = load i64, ptr %i.aqm, align 8, !tbaa !205
  %i.aqo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aqk, ptr noundef nonnull @.str.151, i64 noundef %i.aqn) #23 ; 0 uses
  %i.aqp = load ptr, ptr @stats, align 8, !tbaa !8 ; 2 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 1480
  %i.aqr = load <4 x i64>, ptr %i.aqq, align 8, !tbaa !205
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqp, i64 1544
  %i.aqt = load i64, ptr %i.aqs, align 8, !tbaa !205
  %i.aqu = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.aqr)
  %op.rdx = add i64 %i.aqu, %i.aqt
  %i.aqv = sitofp i64 %op.rdx to double
  %i.aqw = load i32, ptr getelementptr inbounds nuw (i8, ptr @frame_ctr, i64 4), align 4, !tbaa !4
  %i.aqx = sitofp i32 %i.aqw to double
  %i.aqy = fdiv double %i.aqv, %i.aqx
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.sroa.5.0 = phi double [ %i.aqy, %bb.cc ], [ 0.000000e+00, %bb.cb ]
  %i.aqz = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.ara = call i64 @fwrite(ptr nonnull @.str.154, i64 77, i64 1, ptr %i.aqz) ; 0 uses
  %i.arb = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.arc = call i64 @fwrite(ptr nonnull @.str.155, i64 75, i64 1, ptr %i.arb) ; 0 uses
  %i.ard = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.are = call i64 @fwrite(ptr nonnull @.str.156, i64 75, i64 1, ptr %i.ard) ; 0 uses
  %i.arf = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.arg = call i64 @fwrite(ptr nonnull @.str.157, i64 23, i64 1, ptr %i.arf) ; 0 uses
  %i.arh = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.ari = load ptr, ptr @stats, align 8, !tbaa !8
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 2056
  %i.ark = load i64, ptr %i.arj, align 8, !tbaa !205
  %i.arl = sitofp i64 %i.ark to float
  %i.arm = sitofp i32 %i.e to float               ; 5 uses
  %i.arn = fdiv float %i.arl, %i.arm
  %i.aro = fpext float %i.arn to double
  %i.arp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.arh, ptr noundef nonnull @.str.158, double noundef %i.aro) #23 ; 0 uses
  %i.arq = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.arr = load ptr, ptr @stats, align 8, !tbaa !8
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arr, i64 2040
  %i.art = load i64, ptr %i.ars, align 8, !tbaa !205
  %i.aru = sitofp i64 %i.art to float
  %i.arv = uitofp nneg i32 %i.g to float          ; 5 uses
  %i.arw = fdiv float %i.aru, %i.arv
  %i.arx = fpext float %i.arw to double
  %i.ary = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.arq, ptr noundef nonnull @.str.158, double noundef %i.arx) #23 ; 0 uses
  %i.arz = load ptr, ptr @stats, align 8, !tbaa !8 ; 2 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arz, i64 700
  %i.asb = load i32, ptr %i.asa, align 4, !tbaa !15
  %i.asc = icmp ne i32 %i.asb, 0
  %i.asd = load i32, ptr getelementptr inbounds nuw (i8, ptr @frame_ctr, i64 4), align 4 ; 2 uses
  %i.ase = icmp ne i32 %i.asd, 0
  %or.cond4 = select i1 %i.asc, i1 %i.ase, i1 false
  %i.asf = load ptr, ptr @p_stat, align 8, !tbaa !19
  br i1 %or.cond4, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.asg = getelementptr inbounds nuw i8, ptr %i.arz, i64 2048
  %i.ash = load i64, ptr %i.asg, align 8, !tbaa !205
  %i.asi = sitofp i64 %i.ash to float
  %i.asj = sitofp i32 %i.asd to float
  %i.ask = fdiv float %i.asi, %i.asj
  %i.asl = fpext float %i.ask to double
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cd, %bb.ce
  %.sink217 = phi double [ %i.asl, %bb.ce ], [ 0.000000e+00, %bb.cd ]
  %i.asm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.asf, ptr noundef nonnull @.str.158, double noundef %.sink217) #23 ; 0 uses
  %i.asn = load ptr, ptr @p_stat, align 8, !tbaa !19
  %fputc141 = call i32 @fputc(i32 10, ptr %i.asn) ; 0 uses
  %i.aso = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.asp = call i64 @fwrite(ptr nonnull @.str.159, i64 23, i64 1, ptr %i.aso) ; 0 uses
  %i.asq = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.asr = load ptr, ptr @stats, align 8, !tbaa !8
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asr, i64 2016
  %i.ast = load i64, ptr %i.ass, align 8, !tbaa !205
  %i.asu = sitofp i64 %i.ast to float
  %i.asv = fdiv float %i.asu, %i.arm
  %i.asw = fpext float %i.asv to double
  %i.asx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.asq, ptr noundef nonnull @.str.158, double noundef %i.asw) #23 ; 0 uses
  %i.asy = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.asz = load ptr, ptr @stats, align 8, !tbaa !8
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asz, i64 2000
  %i.atb = load i64, ptr %i.ata, align 8, !tbaa !205
  %i.atc = sitofp i64 %i.atb to float
  %i.atd = fdiv float %i.atc, %i.arv
  %i.ate = fpext float %i.atd to double
  %i.atf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.asy, ptr noundef nonnull @.str.158, double noundef %i.ate) #23 ; 0 uses
  %i.atg = load ptr, ptr @stats, align 8, !tbaa !8 ; 2 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atg, i64 700
  %i.ati = load i32, ptr %i.ath, align 4, !tbaa !15
  %i.atj = icmp ne i32 %i.ati, 0
  %i.atk = load i32, ptr getelementptr inbounds nuw (i8, ptr @frame_ctr, i64 4), align 4 ; 2 uses
  %i.atl = icmp ne i32 %i.atk, 0
  %or.cond6 = select i1 %i.atj, i1 %i.atl, i1 false
  %i.atm = load ptr, ptr @p_stat, align 8, !tbaa !19
  br i1 %or.cond6, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atg, i64 2008
  %i.ato = load i64, ptr %i.atn, align 8, !tbaa !205
  %i.atp = sitofp i64 %i.ato to float
  %i.atq = sitofp i32 %i.atk to float
  %i.atr = fdiv float %i.atp, %i.atq
  %i.ats = fpext float %i.atr to double
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cf, %bb.cg
  %.sink225 = phi double [ %i.ats, %bb.cg ], [ 0.000000e+00, %bb.cf ]
  %i.att = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.atm, ptr noundef nonnull @.str.158, double noundef %.sink225) #23 ; 0 uses
  %i.atu = load ptr, ptr @p_stat, align 8, !tbaa !19
  %fputc142 = call i32 @fputc(i32 10, ptr %i.atu) ; 0 uses
  %i.atv = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.atw = call i64 @fwrite(ptr nonnull @.str.160, i64 23, i64 1, ptr %i.atv) ; 0 uses
  %i.atx = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.aty = call i64 @fwrite(ptr nonnull @.str.161, i64 17, i64 1, ptr %i.atx) ; 0 uses
  %i.atz = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.aua = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.atz, ptr noundef nonnull @.str.158, double noundef %i.ang) #23 ; 0 uses
  %i.aub = load ptr, ptr @stats, align 8, !tbaa !8
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aub, i64 700
  %i.aud = load i32, ptr %i.auc, align 4, !tbaa !15
  %i.aue = icmp ne i32 %i.aud, 0
  %i.auf = load i32, ptr getelementptr inbounds nuw (i8, ptr @frame_ctr, i64 4), align 4
  %i.aug = icmp ne i32 %i.auf, 0
  %or.cond8 = select i1 %i.aue, i1 %i.aug, i1 false
  %i.auh = load ptr, ptr @p_stat, align 8, !tbaa !19
  %.sink218 = select i1 %or.cond8, double %.sroa.5.0, double 0.000000e+00
  %i.aui = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.auh, ptr noundef nonnull @.str.158, double noundef %.sink218) #23 ; 0 uses
  %i.auj = load ptr, ptr @p_stat, align 8, !tbaa !19
  %fputc143 = call i32 @fputc(i32 10, ptr %i.auj) ; 0 uses
  %i.auk = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.aul = call i64 @fwrite(ptr nonnull @.str.162, i64 23, i64 1, ptr %i.auk) ; 0 uses
  %i.aum = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.aun = load ptr, ptr @stats, align 8, !tbaa !8
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aun, i64 2096
  %i.aup = load i64, ptr %i.auo, align 8, !tbaa !205
  %i.auq = sitofp i64 %i.aup to float
  %i.aur = fdiv float %i.auq, %i.arm
  %i.aus = fpext float %i.aur to double
  %i.aut = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aum, ptr noundef nonnull @.str.158, double noundef %i.aus) #23 ; 0 uses
  %i.auu = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.auv = load ptr, ptr @stats, align 8, !tbaa !8
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auv, i64 2080
  %i.aux = load i64, ptr %i.auw, align 8, !tbaa !205
  %i.auy = sitofp i64 %i.aux to float
  %i.auz = fdiv float %i.auy, %i.arv
  %i.ava = fpext float %i.auz to double
  %i.avb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.auu, ptr noundef nonnull @.str.158, double noundef %i.ava) #23 ; 0 uses
  %i.avc = load ptr, ptr @stats, align 8, !tbaa !8 ; 2 uses
  %i.avd = getelementptr inbounds nuw i8, ptr %i.avc, i64 700
  %i.ave = load i32, ptr %i.avd, align 4, !tbaa !15
  %i.avf = icmp ne i32 %i.ave, 0
  %i.avg = icmp ne i32 %i.h, 0
  %or.cond12 = select i1 %i.avf, i1 %i.avg, i1 false
  %i.avh = load ptr, ptr @p_stat, align 8, !tbaa !19
  br i1 %or.cond12, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avc, i64 2088
  %i.avj = load i64, ptr %i.avi, align 8, !tbaa !205
  %i.avk = sitofp i64 %i.avj to float
  %i.avl = sitofp i32 %i.h to float
  %i.avm = fdiv float %i.avk, %i.avl
  %i.avn = fpext float %i.avm to double
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ch, %bb.ci
  %.sink228 = phi double [ %i.avn, %bb.ci ], [ 0.000000e+00, %bb.ch ]
  %i.avo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.avh, ptr noundef nonnull @.str.158, double noundef %.sink228) #23 ; 0 uses
  %i.avp = load ptr, ptr @p_stat, align 8, !tbaa !19
  %fputc144 = call i32 @fputc(i32 10, ptr %i.avp) ; 0 uses
  %i.avq = load ptr, ptr @stats, align 8, !tbaa !8 ; 4 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avq, i64 700
  %i.avs = load i32, ptr %i.avr, align 4, !tbaa !15
  %i.avt = icmp ne i32 %i.avs, 0
  %i.avu = load i32, ptr getelementptr inbounds nuw (i8, ptr @frame_ctr, i64 4), align 4 ; 2 uses
  %i.avv = icmp ne i32 %i.avu, 0
  %or.cond14 = select i1 %i.avt, i1 %i.avv, i1 false
  %i.avw = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avq, i64 2120
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avq, i64 2136
  %i.avz = load i64, ptr %i.avy, align 8, !tbaa !205
  %i.awa = load i64, ptr %i.avx, align 8, !tbaa !205
  %i.awb = sitofp i64 %i.awa to float
  %i.awc = sitofp i64 %i.avz to float
  %i.awd = insertelement <2 x float> poison, float %i.awc, i64 0
  %i.awe = insertelement <2 x float> %i.awd, float %i.awb, i64 1
  %i.awf = insertelement <2 x float> poison, float %i.arm, i64 0
  %i.awg = insertelement <2 x float> %i.awf, float %i.arv, i64 1 ; 4 uses
  %i.awh = fdiv <2 x float> %i.awe, %i.awg        ; 2 uses
  %i.awi = extractelement <2 x float> %i.awh, i64 0
  %i.awj = fpext float %i.awi to double
  %i.awk = extractelement <2 x float> %i.awh, i64 1
  %i.awl = fpext float %i.awk to double
  br i1 %or.cond14, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.awm = getelementptr inbounds nuw i8, ptr %i.avq, i64 2128
  %i.awn = load i64, ptr %i.awm, align 8, !tbaa !205
  %i.awo = sitofp i64 %i.awn to float
  %i.awp = sitofp i32 %i.avu to float
  %i.awq = fdiv float %i.awo, %i.awp
  %i.awr = fpext float %i.awq to double
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ck
  %.sink219 = phi double [ %i.awr, %bb.ck ], [ 0.000000e+00, %bb.cj ]
  %i.aws = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.avw, ptr noundef nonnull @.str.163, double noundef %i.awj, double noundef %i.awl, double noundef %.sink219) #23 ; 0 uses
  %i.awt = load ptr, ptr @stats, align 8, !tbaa !8 ; 4 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 700
  %i.awv = load i32, ptr %i.awu, align 4, !tbaa !15
  %i.aww = icmp ne i32 %i.awv, 0
  %i.awx = load i32, ptr getelementptr inbounds nuw (i8, ptr @frame_ctr, i64 4), align 4 ; 2 uses
  %i.awy = icmp ne i32 %i.awx, 0
  %or.cond16 = select i1 %i.aww, i1 %i.awy, i1 false
  %i.awz = load ptr, ptr @p_stat, align 8, !tbaa !19
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awt, i64 2160
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awt, i64 2176
  %i.axc = load i64, ptr %i.axb, align 8, !tbaa !205
  %i.axd = load i64, ptr %i.axa, align 8, !tbaa !205
  %i.axe = sitofp i64 %i.axd to float
  %i.axf = sitofp i64 %i.axc to float
  %i.axg = insertelement <2 x float> poison, float %i.axf, i64 0
  %i.axh = insertelement <2 x float> %i.axg, float %i.axe, i64 1
  %i.axi = fdiv <2 x float> %i.axh, %i.awg        ; 2 uses
  %i.axj = extractelement <2 x float> %i.axi, i64 0
  %i.axk = fpext float %i.axj to double
  %i.axl = extractelement <2 x float> %i.axi, i64 1
  %i.axm = fpext float %i.axl to double
  br i1 %or.cond16, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.axn = getelementptr inbounds nuw i8, ptr %i.awt, i64 2168
  %i.axo = load i64, ptr %i.axn, align 8, !tbaa !205
end_hunk_1
