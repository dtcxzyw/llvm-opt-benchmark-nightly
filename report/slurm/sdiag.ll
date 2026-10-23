Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/sdiag?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@main:bb.a
  %i.oe = load i32, ptr %i.od, align 8
  %.not105.i = icmp eq i32 %i.oe, 0
  br i1 %.not105.i, label %._crit_edge85.i, label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %bb.ai, %.lr.ph84.i
  %indvars.iv115.i = phi i64 [ %indvars.iv.next116.i, %.lr.ph84.i ], [ 0, %bb.ai ] ; 3 uses
  %i.of = trunc i64 %indvars.iv115.i to i16
  %i.og = tail call ptr @bf_exit2string(i16 noundef zeroext %i.of) #10
  %i.oh = load ptr, ptr @buf, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 152
  %i.oj = load ptr, ptr %i.oi, align 8
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %indvars.iv115.i
  %i.ol = load i32, ptr %i.ok, align 4
  %i.om = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef %i.og, i32 noundef %i.ol) ; 0 uses
  %indvars.iv.next116.i = add nuw nsw i64 %indvars.iv115.i, 1 ; 2 uses
  %i.on = load ptr, ptr @buf, align 8             ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 160
  %i.op = load i32, ptr %i.oo, align 8
  %i.oq = zext i32 %i.op to i64
  %i.or = icmp samesign ult i64 %indvars.iv.next116.i, %i.oq
  br i1 %i.or, label %.lr.ph84.i, label %._crit_edge85.i, !llvm.loop !11

._crit_edge85.i:                                  ; preds = %.lr.ph84.i, %bb.ai
  %.lcssa79.i = phi ptr [ %i.oc, %bb.ai ], [ %i.on, %.lr.ph84.i ]
  %i.os = getelementptr inbounds nuw i8, ptr %.lcssa79.i, i64 36
  %i.ot = load i32, ptr %i.os, align 4
  %i.ou = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.ot) ; 0 uses
  %puts69.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  %i.ov = load ptr, ptr @buf, align 8             ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 212
  %i.ox = load i32, ptr %i.ow, align 4
  %.not106.i = icmp eq i32 %i.ox, 0
  br i1 %.not106.i, label %._crit_edge90.thread.i, label %.lr.ph89.i

.lr.ph89.i:                                       ; preds = %._crit_edge85.i, %bb.al
  %indvars.iv118.i = phi i64 [ %indvars.iv.next119.i, %bb.al ], [ 0, %._crit_edge85.i ] ; 3 uses
  %i.oy = phi ptr [ %i.qc, %bb.al ], [ %i.ov, %._crit_edge85.i ]
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 240
  %i.pa = load i8, ptr %i.oz, align 8
  %.not.i33 = icmp eq i8 %i.pa, 0
  %i.pb = load ptr, ptr @types, align 8
  %i.pc = getelementptr inbounds nuw [48 x i8], ptr %i.pb, i64 %indvars.iv118.i
  %i.pd = load i32, ptr %i.pc, align 8
  %i.pe = trunc i32 %i.pd to i16
  %i.pf = tail call ptr @rpc_num2string(i16 noundef zeroext %i.pe) #10 ; 2 uses
  %i.pg = load ptr, ptr @types, align 8
  %i.ph = getelementptr inbounds nuw [48 x i8], ptr %i.pg, i64 %indvars.iv118.i ; 8 uses
  %i.pi = load i32, ptr %i.ph, align 8            ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ph, i64 4
  %i.pk = load i32, ptr %i.pj, align 4            ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %i.pm = load i64, ptr %i.pl, align 8            ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.po = load i64, ptr %i.pn, align 8            ; 2 uses
  br i1 %.not.i33, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph89.i
  %i.pp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef %i.pf, i32 noundef %i.pi, i32 noundef %i.pk, i64 noundef %i.pm, i64 noundef %i.po) ; 0 uses
  br label %bb.al

bb.ak:                                            ; preds = %.lr.ph89.i
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.pr = load i16, ptr %i.pq, align 8
  %i.ps = zext i16 %i.pr to i32
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ph, i64 40
  %i.pu = load i16, ptr %i.pt, align 8
  %i.pv = zext i16 %i.pu to i32
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ph, i64 42
  %i.px = load i16, ptr %i.pw, align 2
  %i.py = zext i16 %i.px to i32
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ph, i64 32
  %i.qa = load i64, ptr %i.pz, align 8
  %i.qb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, ptr noundef %i.pf, i32 noundef %i.pi, i32 noundef %i.pk, i64 noundef %i.pm, i64 noundef %i.po, i32 noundef %i.ps, i32 noundef %i.pv, i32 noundef %i.py, i64 noundef %i.qa) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %indvars.iv.next119.i = add nuw nsw i64 %indvars.iv118.i, 1 ; 2 uses
  %i.qc = load ptr, ptr @buf, align 8             ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 212
  %i.qe = load i32, ptr %i.qd, align 4            ; 2 uses
  %i.qf = zext i32 %i.qe to i64
  %i.qg = icmp samesign ult i64 %indvars.iv.next119.i, %i.qf
  br i1 %i.qg, label %.lr.ph89.i, label %._crit_edge90.i, !llvm.loop !12

._crit_edge90.i:                                  ; preds = %bb.al
  %i.qh = icmp eq i32 %i.qe, 0
  br i1 %i.qh, label %._crit_edge90.thread.i, label %bb.am

._crit_edge90.thread.i:                           ; preds = %._crit_edge90.i, %._crit_edge85.i
  %puts71.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge90.thread.i, %._crit_edge90.i
  %puts72.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  %i.qi = load ptr, ptr @buf, align 8
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 280
  %i.qk = load i32, ptr %i.qj, align 8
  %.not107.i = icmp eq i32 %i.qk, 0
  br i1 %.not107.i, label %._crit_edge95.i, label %.lr.ph94.i

.lr.ph94.i:                                       ; preds = %bb.am, %.lr.ph94.i
  %indvars.iv121.i = phi i64 [ %indvars.iv.next122.i, %.lr.ph94.i ], [ 0, %bb.am ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ql = load ptr, ptr @users, align 8
  %i.qm = getelementptr inbounds nuw [48 x i8], ptr %i.ql, i64 %indvars.iv121.i
  %i.qn = load i32, ptr %i.qm, align 8
  %i.qo = call ptr @uid_to_string(i32 noundef %i.qn) #10 ; 2 uses
  store ptr %i.qo, ptr %i.a, align 8
  %i.qp = load ptr, ptr @users, align 8
  %i.qq = getelementptr inbounds nuw [48 x i8], ptr %i.qp, i64 %indvars.iv121.i ; 4 uses
  %i.qr = load i32, ptr %i.qq, align 8
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qq, i64 4
  %i.qt = load i32, ptr %i.qs, align 4
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %i.qv = load i64, ptr %i.qu, align 8
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qx = load i64, ptr %i.qw, align 8
  %i.qy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef %i.qo, i32 noundef %i.qr, i32 noundef %i.qt, i64 noundef %i.qv, i64 noundef %i.qx) ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %indvars.iv.next122.i = add nuw nsw i64 %indvars.iv121.i, 1 ; 2 uses
  %i.qz = load ptr, ptr @buf, align 8
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 280
  %i.rb = load i32, ptr %i.ra, align 8
  %i.rc = zext i32 %i.rb to i64
  %i.rd = icmp samesign ult i64 %indvars.iv.next122.i, %i.rc
  br i1 %i.rd, label %.lr.ph94.i, label %._crit_edge95.i, !llvm.loop !13

._crit_edge95.i:                                  ; preds = %.lr.ph94.i, %bb.am
  %puts73.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.re = load ptr, ptr @buf, align 8             ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 312
  %i.rg = load i32, ptr %i.rf, align 8
  %i.rh = icmp eq i32 %i.rg, 0
  br i1 %i.rh, label %bb.an, label %.lr.ph98.i.preheader

bb.an:                                            ; preds = %._crit_edge95.i
  %puts74.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  %.pre134.i = load ptr, ptr @buf, align 8        ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre134.i, i64 312
  %.pre135.i = load i32, ptr %.phi.trans.insert.i, align 8
  %i.ri = icmp eq i32 %.pre135.i, 0
  br i1 %i.ri, label %._crit_edge99.i, label %.lr.ph98.i.preheader

.lr.ph98.i.preheader:                             ; preds = %bb.an, %._crit_edge95.i
  %.ph = phi ptr [ %i.re, %._crit_edge95.i ], [ %.pre134.i, %bb.an ]
  br label %.lr.ph98.i

.lr.ph98.i:                                       ; preds = %.lr.ph98.i.preheader, %.lr.ph98.i
  %indvars.iv124.i = phi i64 [ %indvars.iv.next125.i, %.lr.ph98.i ], [ 0, %.lr.ph98.i.preheader ] ; 4 uses
  %i.rj = phi ptr [ %i.sa, %.lr.ph98.i ], [ %.ph, %.lr.ph98.i.preheader ]
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 320
  %i.rl = load ptr, ptr %i.rk, align 8
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %indvars.iv124.i
  %i.rn = load i32, ptr %i.rm, align 4
  %i.ro = trunc i32 %i.rn to i16
  %i.rp = call ptr @rpc_num2string(i16 noundef zeroext %i.ro) #10
  %i.rq = load ptr, ptr @buf, align 8             ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 320
  %i.rs = load ptr, ptr %i.rr, align 8
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %indvars.iv124.i
  %i.ru = load i32, ptr %i.rt, align 4
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rq, i64 328
  %i.rw = load ptr, ptr %i.rv, align 8
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %indvars.iv124.i
  %i.ry = load i32, ptr %i.rx, align 4
  %i.rz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.58, ptr noundef %i.rp, i32 noundef %i.ru, i32 noundef %i.ry) ; 0 uses
  %indvars.iv.next125.i = add nuw nsw i64 %indvars.iv124.i, 1 ; 2 uses
  %i.sa = load ptr, ptr @buf, align 8             ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 312
  %i.sc = load i32, ptr %i.sb, align 8
  %i.sd = zext i32 %i.sc to i64
  %i.se = icmp samesign ult i64 %indvars.iv.next125.i, %i.sd
  br i1 %i.se, label %.lr.ph98.i, label %._crit_edge99.i, !llvm.loop !14

._crit_edge99.i:                                  ; preds = %.lr.ph98.i, %bb.an
  %.lcssa.i34 = phi ptr [ %.pre134.i, %bb.an ], [ %i.sa, %.lr.ph98.i ]
  %i.sf = getelementptr inbounds nuw i8, ptr %.lcssa.i34, i64 336
  %i.sg = load i32, ptr %i.sf, align 8
  %.not75.i = icmp eq i32 %i.sg, 0
  br i1 %.not75.i, label %_print_stats.exit, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge99.i
  %puts76.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  %.pre136.i = load ptr, ptr @buf, align 8        ; 2 uses
  %.phi.trans.insert137.i = getelementptr inbounds nuw i8, ptr %.pre136.i, i64 336
  %.pre138.i = load i32, ptr %.phi.trans.insert137.i, align 8
  %i.sh = icmp eq i32 %.pre138.i, 0
  br i1 %i.sh, label %_print_stats.exit, label %.lr.ph103.i

.lr.ph103.i:                                      ; preds = %bb.ao, %.lr.ph103.i
  %indvars.iv127.i = phi i64 [ %indvars.iv.next128.i, %.lr.ph103.i ], [ 0, %bb.ao ] ; 4 uses
  %i.si = phi ptr [ %i.td, %.lr.ph103.i ], [ %.pre136.i, %bb.ao ] ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 352
  %i.sk = load ptr, ptr %i.sj, align 8
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.sk, i64 %indvars.iv127.i
  %i.sm = load ptr, ptr %i.sl, align 8
  %i.sn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.sm) #11
  %i.so = trunc i64 %i.sn to i32                  ; 2 uses
  %i.sp = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 8), align 8, !range !18, !noundef !19
  %4 = trunc nuw i8 %i.sp to i1
  %5 = icmp slt i32 %i.so, 81
  %or.cond.not.i = select i1 %4, i1 true, i1 %5
  %spec.store.select.i = select i1 %or.cond.not.i, i32 %i.so, i32 80
  %indvars.iv.next128.i = add nuw nsw i64 %indvars.iv127.i, 1 ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.si, i64 344
  %i.sr = load ptr, ptr %i.sq, align 8
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.sr, i64 %indvars.iv127.i
  %i.st = load i32, ptr %i.ss, align 4
  %i.su = trunc i32 %i.st to i16
  %i.sv = call ptr @rpc_num2string(i16 noundef zeroext %i.su) #10
  %i.sw = load ptr, ptr @buf, align 8
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 352
  %i.sy = load ptr, ptr %i.sx, align 8
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %indvars.iv127.i
  %i.ta = load ptr, ptr %i.sz, align 8
  %i.tb = trunc nuw i64 %indvars.iv.next128.i to i32
  %i.tc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %i.tb, ptr noundef %i.sv, i32 noundef %spec.store.select.i, ptr noundef %i.ta) ; 0 uses
  %i.td = load ptr, ptr @buf, align 8             ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 336
  %i.tf = load i32, ptr %i.te, align 8
  %i.tg = zext i32 %i.tf to i64
  %i.th = icmp samesign ult i64 %indvars.iv.next128.i, %i.tg
  br i1 %i.th, label %.lr.ph103.i, label %_print_stats.exit, !llvm.loop !15

_print_stats.exit:                                ; preds = %.lr.ph103.i, %bb.ao, %._crit_edge99.i, %bb.s, %bb.q
  %.0 = phi i32 [ %i.fm, %bb.q ], [ -1, %bb.s ], [ 0, %bb.ao ], [ 0, %._crit_edge99.i ], [ 0, %.lr.ph103.i ]
  %i.ti = load ptr, ptr @buf, align 8
  call void @slurm_free_stats_response_msg(ptr noundef %i.ti) #10
  call void @slurm_xfree(ptr noundef nonnull @types) #10
  call void @slurm_xfree(ptr noundef nonnull @users) #10
  br label %bb.aq

bb.ap:                                            ; preds = %bb.e
  tail call void @slurm_perror(ptr noundef nonnull @.str.2) #10
  br label %bb.aq

bb.aq:                                            ; preds = %_print_stats.exit, %bb.ap, %bb.c, %bb.d
  %.1 = phi i32 [ 0, %bb.c ], [ %i.d, %bb.d ], [ %.0, %_print_stats.exit ], [ %i.f, %bb.ap ]
  call void @exit(i32 noundef %.1) #12
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @slurm_init(ptr noundef) local_unnamed_addr #2

declare void @parse_command_line(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @slurm_reset_statistics(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare void @slurm_perror(ptr noundef) local_unnamed_addr #2

declare i32 @slurm_get_statistics(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @data_parser_cli_meta(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @list_create(ptr noundef) local_unnamed_addr #2

declare void @free_openapi_resp_error(ptr noundef) #2

declare void @free_openapi_resp_warning(ptr noundef) #2

declare i32 @data_parser_dump_cli_stdout(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @list_destroy(ptr noundef) local_unnamed_addr #2

declare void @free_openapi_resp_meta(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @slurm_free_stats_response_msg(ptr noundef) local_unnamed_addr #2

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

declare ptr @slurm_ctime2(ptr noundef) local_unnamed_addr #2

declare ptr @schedule_exit2string(i16 noundef zeroext) local_unnamed_addr #2

declare ptr @bf_exit2string(i16 noundef zeroext) local_unnamed_addr #2

declare ptr @rpc_num2string(i16 noundef zeroext) local_unnamed_addr #2

declare ptr @uid_to_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @_sort_count(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %.0 = tail call i32 @llvm.ucmp.i32.i32(i32 %i.d, i32 %i.b)
  ret i32 %.0
}

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @_sort_id(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = load i32, ptr %1, align 8
  %.0 = tail call i32 @llvm.ucmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @_sort_time(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.0 = tail call i32 @llvm.ucmp.i32.i64(i64 %i.d, i64 %i.b)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @_sort_average_time(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %.0 = tail call i32 @llvm.ucmp.i32.i64(i64 %i.d, i64 %i.b)
  ret i32 %.0
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #9

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = distinct !{!8, !16, !17}
!9 = distinct !{!9, !16, !17}
!10 = distinct !{!10, !16, !17}
!11 = distinct !{!11, !16, !17}
!12 = distinct !{!12, !16, !17}
!13 = distinct !{!13, !16, !17}
!14 = distinct !{!14, !16, !17}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = !{i8 0, i8 2}
!19 = !{}
end_hunk_0
