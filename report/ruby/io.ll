Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/io?download=true
inline.NumInlined: 1500
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@argf_next_argv:bb.a
  br label %bb.ay

.thread:                                          ; preds = %RSTRING_PTR.exit131, %bb.al
  %.095 = phi i64 [ %i.de, %bb.al ], [ %i.dj, %RSTRING_PTR.exit131 ]
  %i.es = load i64, ptr %i.b, align 8, !tbaa !19
  %i.et = call fastcc i32 @rb_sysopen(i64 noundef %i.es, i32 noundef 577, i32 noundef 438) ; 5 uses
  %i.eu = call i32 @fstat(i32 noundef %i.et, ptr noundef nonnull %2) #28 ; 0 uses
  %i.ev = load i32, ptr %i.be, align 8, !tbaa !156
  %i.ew = call i32 @fchmod(i32 noundef %i.et, i32 noundef %i.ev) #28 ; 0 uses
  %i.ex = load i32, ptr %i.bf, align 4, !tbaa !319 ; 2 uses
  %i.ey = load i32, ptr %i.bg, align 4, !tbaa !319 ; 2 uses
  %.not106 = icmp eq i32 %i.ex, %i.ey
  %.pre187 = load i32, ptr %i.bh, align 8, !tbaa !320 ; 2 uses
  %i.ez = load i32, ptr %i.bi, align 8
  %.not107 = icmp eq i32 %.pre187, %i.ez
  %or.cond217 = select i1 %.not106, i1 %.not107, i1 false
  br i1 %or.cond217, label %.thread155, label %bb.an

bb.an:                                            ; preds = %.thread
  %i.fa = call i32 @fchown(i32 noundef %i.et, i32 noundef %i.ex, i32 noundef %.pre187) #28
  %.not108 = icmp eq i32 %i.fa, 0
  br i1 %.not108, label %.thread155, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fb = call i32 @getuid() #28
  %i.fc = or i32 %i.fb, %i.ey
  %or.cond = icmp eq i32 %i.fc, 0
  br i1 %or.cond, label %bb.ap, label %.thread155

bb.ap:                                            ; preds = %bb.ao
  %i.fd = load i64, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %i.fe = inttoptr i64 %i.fd to ptr               ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !22
  %i.fg = and i64 %i.ff, 8192
  %.not.i132 = icmp eq i64 %i.fg, 0
  %i.fh = getelementptr i8, ptr %i.fe, i64 24     ; 2 uses
  br i1 %.not.i132, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !90
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.fj = phi ptr [ %i.fi, %bb.aq ], [ %i.fh, %bb.ap ]
  %i.fk = call ptr @rb_errno_ptr() #28
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !16
  %i.fm = call ptr @strerror(i32 noundef %i.fl) #28
  call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.224, i64 noundef %i.fd, i64 noundef %.095, ptr noundef %i.fm) #34
  %i.fn = call i32 @close(i32 noundef %i.cq) #28  ; 0 uses
  %i.fo = call i32 @close(i32 noundef %i.et) #28  ; 0 uses
  %i.fp = call i32 @unlink(ptr noundef %i.fj) #28 ; 0 uses
  br label %bb.ay

.thread155:                                       ; preds = %.thread, %bb.an, %bb.ao
  %i.fq = load i64, ptr @rb_cFile, align 8, !tbaa !19
  %i.fr = call fastcc i64 @prep_io(i32 noundef %i.et, i32 noundef 2, i64 noundef %i.fq, ptr noundef %i.cd) ; 2 uses
  call void @rb_ractor_stdout_set(i64 noundef %i.fr) #28
  br i1 %.not109, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.thread155
  %i.fs = load i64, ptr @rb_stdout, align 8, !tbaa !19
  %i.ft = call i64 @rb_io_binmode(i64 noundef %i.fs) ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %.thread155, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aa, %bb.at
  %.1 = phi i64 [ %i.fr, %bb.at ], [ 4, %bb.aa ]  ; 4 uses
  %i.fu = load i64, ptr @rb_cFile, align 8, !tbaa !19
  %i.fv = call fastcc i64 @prep_io(i32 noundef %i.cq, i32 noundef 1, i64 noundef %i.fu, ptr noundef %i.cd) ; 2 uses
  %i.fw = load ptr, ptr %i.x, align 8, !tbaa !80
  %i.fx = getelementptr i8, ptr %i.fw, i64 8
  store i64 %i.fv, ptr %i.fx, align 8, !tbaa !82
  %i.fy = icmp eq i64 %.1, 4
  br i1 %i.fy, label %.thread163, label %bb.au

bb.au:                                            ; preds = %.loopexit
  %i.fz = inttoptr i64 %i.fv to ptr
  %i.ga = getelementptr i8, ptr %i.fz, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !41 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i, label %bb.av, label %rb_io_get_fptr.exit.i

bb.av:                                            ; preds = %bb.au
  %i.gc = load i64, ptr @rb_eIOError, align 8, !tbaa !19
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gc, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_get_fptr.exit.i:                            ; preds = %bb.au
  %i.gd = and i64 %.1, -5
  %.not7.i = icmp eq i64 %i.gd, 0
  br i1 %.not7.i, label %rb_io_set_write_io.exit, label %bb.aw

bb.aw:                                            ; preds = %rb_io_get_fptr.exit.i
  %i.ge = inttoptr i64 %.1 to ptr
  %i.gf = getelementptr i8, ptr %i.ge, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !41
  %.not.i.i.i.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i.i, label %bb.ax, label %rb_io_set_write_io.exit

bb.ax:                                            ; preds = %bb.aw
  %i.gh = load i64, ptr @rb_eIOError, align 8, !tbaa !19
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gh, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_set_write_io.exit:                          ; preds = %rb_io_get_fptr.exit.i, %bb.aw
  %.0.i134 = phi i64 [ 0, %rb_io_get_fptr.exit.i ], [ %.1, %bb.aw ]
  %i.gi = getelementptr i8, ptr %i.gb, i64 88
  store i64 %.0.i134, ptr %i.gi, align 8, !tbaa !42
  br label %.thread163

.thread163:                                       ; preds = %.loopexit, %rb_io_set_write_io.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store ptr %i.b, ptr %i.d, align 8, !tbaa !128
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #28, !srcloc !321
  %i.gj = load ptr, ptr %i.d, align 8, !tbaa !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.gk = load volatile i64, ptr %i.gj, align 8, !tbaa !19 ; 0 uses
  %.pre188 = load ptr, ptr %i.x, align 8, !tbaa !80
  br label %.loopexit168

bb.ay:                                            ; preds = %bb.am, %bb.ak, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.bk

.loopexit168:                                     ; preds = %bb.y, %.thread163
  %i.gl = phi ptr [ %.pre188, %.thread163 ], [ %i.cm, %bb.y ] ; 3 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 82
  %i.gn = load i8, ptr %i.gm, align 2, !tbaa !157
  %.not112 = icmp eq i8 %i.gn, 0
  br i1 %.not112, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.loopexit168
  %i.go = getelementptr i8, ptr %i.gl, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !82
  %i.gq = call i64 @rb_io_ascii8bit_binmode(i64 noundef %i.gp) ; 0 uses
  %.pre189 = load ptr, ptr %i.x, align 8, !tbaa !80
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.loopexit168
  %i.gr = phi ptr [ %.pre189, %bb.az ], [ %i.gl, %.loopexit168 ]
  %i.gs = getelementptr i8, ptr %i.gr, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !82 ; 5 uses
  %i.gu = icmp ne i64 %i.gt, 0
  %i.gv = and i64 %i.gt, 7
  %i.gw = icmp eq i64 %i.gv, 0
  %.not3.i.i.i136 = and i1 %i.gu, %i.gw
  br i1 %.not3.i.i.i136, label %RB_OBJ_FROZEN.exit.i.i138, label %RB_OBJ_FROZEN.exit.thread.i.i137, !prof !20

RB_OBJ_FROZEN.exit.i.i138:                        ; preds = %bb.ba
  %i.gx = inttoptr i64 %i.gt to ptr               ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !22 ; 3 uses
  %i.gz = and i64 %i.gy, 2048
  %.not.i.i139 = icmp eq i64 %i.gz, 0
  br i1 %.not.i.i139, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i140, label %RB_OBJ_FROZEN.exit.thread.i.i137, !prof !23

RB_OBJ_FROZEN.exit.thread.i.i137:                 ; preds = %RB_OBJ_FROZEN.exit.i.i138, %bb.ba
  call void @rb_error_frozen_object(i64 noundef %i.gt) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i140:            ; preds = %RB_OBJ_FROZEN.exit.i.i138
  %i.ha = and i64 %i.gy, 31
  %i.hb = icmp ne i64 %i.ha, 5
  %i.hc = and i64 %i.gy, 49152
  %.not8.i.i141 = icmp eq i64 %i.hc, 0
  %or.cond.i.i142 = or i1 %i.hb, %.not8.i.i141
  br i1 %or.cond.i.i142, label %rb_io_taint_check.exit143, label %bb.bb, !prof !24

bb.bb:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i140
  call void @rb_str_modify(i64 noundef %i.gt) #28
  br label %rb_io_taint_check.exit143

rb_io_taint_check.exit143:                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i140, %bb.bb
  %i.hd = getelementptr i8, ptr %i.gx, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !41 ; 8 uses
  %.not.i.i144 = icmp eq ptr %i.he, null
  br i1 %.not.i.i144, label %bb.bc, label %rb_io_check_initialized.exit.i145

bb.bc:                                            ; preds = %rb_io_taint_check.exit143
  %i.hf = load i64, ptr @rb_eIOError, align 8, !tbaa !19
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.hf, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i145:                ; preds = %rb_io_taint_check.exit143
  %i.hg = getelementptr i8, ptr %i.he, i64 16
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !38
  %i.hi = icmp slt i32 %i.hh, 0
  br i1 %i.hi, label %bb.bd, label %rb_io_check_closed.exit146

bb.bd:                                            ; preds = %rb_io_check_initialized.exit.i145
  call void @rb_thread_check_ints() #28
  %i.hj = load i64, ptr @rb_eIOError, align 8, !tbaa !19
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.hj, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit146:                       ; preds = %rb_io_check_initialized.exit.i145
  %i.hk = load ptr, ptr %i.x, align 8, !tbaa !80
  %i.hl = getelementptr i8, ptr %i.hk, i64 48     ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !322
  %.not113 = icmp eq ptr %i.hm, null
  br i1 %.not113, label %bb.bj, label %bb.be

bb.be:                                            ; preds = %rb_io_check_closed.exit146
  %i.hn = getelementptr i8, ptr %i.he, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hn, ptr noundef nonnull align 8 dereferenceable(32) %i.hl, i64 32, i1 false), !tbaa.struct !134
  %i.ho = getelementptr i8, ptr %i.he, i64 128    ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !52 ; 2 uses
  %.not.i.i147 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i147, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @rb_econv_close(ptr noundef nonnull %i.hp) #28
  store ptr null, ptr %i.ho, align 8, !tbaa !52
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.hq = getelementptr i8, ptr %i.he, i64 136    ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i148 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i148, label %clear_readconv.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @ruby_xfree(ptr noundef nonnull %i.hr) #28
  store ptr null, ptr %i.hq, align 8, !tbaa !53
  br label %clear_readconv.exit.i

clear_readconv.exit.i:                            ; preds = %bb.bh, %bb.bg
  %i.hs = getelementptr i8, ptr %i.he, i64 160    ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !54 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.ht, null
  br i1 %.not.i2.i, label %clear_codeconv.exit, label %bb.bi

bb.bi:                                            ; preds = %clear_readconv.exit.i
  call void @rb_econv_close(ptr noundef nonnull %i.ht) #28
  store ptr null, ptr %i.hs, align 8, !tbaa !54
  br label %clear_codeconv.exit

clear_codeconv.exit:                              ; preds = %clear_readconv.exit.i, %bb.bi
  %i.hu = getelementptr i8, ptr %i.he, i64 176
  store i32 0, ptr %i.hu, align 8, !tbaa !55
  br label %.thread166

bb.bj:                                            ; preds = %rb_io_check_closed.exit146
  %i.hv = getelementptr i8, ptr %i.he, i64 112    ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !94
  %i.hx = and i32 %i.hw, -32513
  store i32 %i.hx, ptr %i.hv, align 8
  br label %.thread166

.thread166:                                       ; preds = %clear_codeconv.exit, %bb.bj
  %3 = load ptr, ptr %i.x, align 8, !tbaa !80
  %i.hy = getelementptr i8, ptr %3, i64 81
  store i8 0, ptr %i.hy, align 1, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.bn

bb.bk:                                            ; preds = %bb.ay, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.t

bb.bl:                                            ; preds = %rb_array_len.exit126
  %i.hz = getelementptr i8, ptr %i.bj, i64 81
  store i8 1, ptr %i.hz, align 1, !tbaa !149
  br label %bb.bp

.thread204:                                       ; preds = %rb_array_len.exit123, %bb.k, %bb.p
  %i.ia = load i64, ptr @rb_stdin, align 8, !tbaa !19
  %i.ib = getelementptr i8, ptr %i.y, i64 8
  store i64 %i.ia, ptr %i.ib, align 8, !tbaa !82
  %i.ic = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.26, i64 noundef 1) #28
  %i.id = load ptr, ptr %i.x, align 8, !tbaa !80  ; 2 uses
  store i64 %i.ic, ptr %i.id, align 8, !tbaa !152
  %i.ie = getelementptr i8, ptr %i.id, i64 40
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !153
  %.not103 = icmp eq i64 %i.if, 0
  br i1 %.not103, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.thread204
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.225) #34
  %i.ig = load i64, ptr @orig_stdout, align 8, !tbaa !19
  tail call void @rb_ractor_stdout_set(i64 noundef %i.ig) #28
  br label %bb.bn

bb.bn:                                            ; preds = %.thread166, %bb.p, %bb.bm, %.thread204
  %i.ih = load ptr, ptr %i.x, align 8, !tbaa !80
  %i.ii = getelementptr i8, ptr %i.ih, i64 80     ; 2 uses
  %i.ij = load i8, ptr %i.ii, align 8, !tbaa !150
  %i.ik = icmp eq i8 %i.ij, -1
  br i1 %i.ik, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i8 1, ptr %i.ii, align 8, !tbaa !150
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo, %bb.bl
  %.0 = phi i32 [ 0, %bb.bl ], [ 1, %bb.bo ], [ 1, %bb.bn ]
  ret i32 %.0
}

declare void @rb_lastline_set(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_stdio_set_default_encoding() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 4, ptr %i.a, align 8, !tbaa !19
  %i.b = load i64, ptr @rb_stdin, align 8, !tbaa !19
  %i.c = call i64 @rb_io_set_encoding(i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %i.b) ; 0 uses
  %i.d = load i64, ptr @rb_stdout, align 8, !tbaa !19
  %i.e = call i64 @rb_io_set_encoding(i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %i.d) ; 0 uses
  %i.f = load i64, ptr @rb_stderr, align 8, !tbaa !19
  %i.g = call i64 @rb_io_set_encoding(i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_set_encoding(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  %i.b = and i64 %2, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.e = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !22
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 11
  br i1 %i.h, label %rb_scan_args_n_opt.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.i = load i64, ptr @id_set_encoding, align 8, !tbaa !19
  %i.j = tail call i32 @rb_keyword_given_p() #28
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = tail call i64 @rb_funcallv_kw(i64 noundef %2, i64 noundef %i.i, i32 noundef %0, ptr noundef %1, i32 noundef %i.l) #28
  br label %bb.i

rb_scan_args_n_opt.exit:                          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.n = icmp sgt i32 %0, 0
  br i1 %i.n, label %bb.b, label %.thread

bb.b:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.o = zext nneg i32 %0 to i64
  %i.p = getelementptr [8 x i8], ptr %1, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19
  %i.s = tail call i32 @rb_keyword_given_p() #28
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = tail call i64 @rb_hash_dup(i64 noundef %i.r) #28
  %i.u = add nsw i32 %0, -1                       ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.c
  %.1.i29 = phi i64 [ %i.t, %bb.c ], [ 4, %bb.b ]
  %.193.i28 = phi i32 [ %i.u, %bb.c ], [ %0, %bb.b ] ; 3 uses
  %i.w = load i64, ptr %1, align 8, !tbaa !19
  %i.x = icmp samesign ugt i32 %.193.i28, 1
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader
  %i.y = getelementptr i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.d
  %i.aa = phi i64 [ %i.z, %bb.d ], [ 4, %.preheader ]
  %.185.i.lcssa = phi i32 [ 2, %bb.d ], [ 1, %.preheader ]
  %i.ab = icmp eq i32 %.185.i.lcssa, %.193.i28
  br i1 %i.ab, label %RB_OBJ_FROZEN.exit.i.i, label %.thread

.thread:                                          ; preds = %rb_scan_args_n_opt.exit, %bb.e, %bb.c
  %.193.i14 = phi i32 [ 0, %bb.c ], [ %.193.i28, %bb.e ], [ %0, %rb_scan_args_n_opt.exit ]
  tail call void @rb_error_arity(i32 noundef %.193.i14, i32 noundef 1, i32 noundef 2) #30
  unreachable

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.e
  %i.ac = load i64, ptr %i.e, align 8, !tbaa !22  ; 3 uses
  %i.ad = and i64 %i.ac, 2048
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !23

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i
  tail call void @rb_error_frozen_object(i64 noundef %2) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.ae = and i64 %i.ac, 31
  %i.af = icmp ne i64 %i.ae, 5
  %i.ag = and i64 %i.ac, 49152
  %.not8.i.i = icmp eq i64 %i.ag, 0
  %or.cond.i.i = or i1 %i.af, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.f, !prof !24

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %2) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.f
  %i.ah = getelementptr i8, ptr %i.e, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !41 ; 3 uses
  %.not.i.i10 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i10, label %bb.g, label %rb_io_check_initialized.exit.i

bb.g:                                             ; preds = %rb_io_taint_check.exit
  %i.aj = load i64, ptr @rb_eIOError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aj, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.ak = getelementptr i8, ptr %i.ai, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !38
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.h, label %rb_io_check_closed.exit

bb.h:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.an = load i64, ptr @rb_eIOError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.an, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  tail call fastcc void @io_encoding_set(ptr noundef nonnull %i.ai, i64 noundef %i.w, i64 noundef %i.aa, i64 noundef %.1.i29)
  br label %bb.i

bb.i:                                             ; preds = %rb_io_check_closed.exit, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.0 = phi i64 [ %2, %rb_io_check_closed.exit ], [ %i.m, %rbimpl_RB_TYPE_P_fastpath.exit.thread ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @ruby_set_inplace_mode(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !90
  %.not4 = icmp eq i8 %i.a, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #33
  %i.c = tail call i64 @rb_str_new(ptr noundef nonnull %0, i64 noundef %i.b) #28
end_hunk_0
begin_hunk_1_@io_set_encoding_by_bom:bb.a
RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i
  tail call void @rb_error_frozen_object(i64 noundef %0) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.ak = and i64 %i.ai, 31
  %i.al = icmp ne i64 %i.ak, 5
  %i.am = and i64 %i.ai, 49152
  %.not8.i.i = icmp eq i64 %i.am, 0
  %or.cond.i.i = or i1 %i.al, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.p, !prof !24

bb.p:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.p
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !41  ; 4 uses
  %.not.i.i9 = icmp eq ptr %i.an, null
  br i1 %.not.i.i9, label %bb.q, label %rb_io_check_initialized.exit.i

bb.q:                                             ; preds = %rb_io_taint_check.exit
  %i.ao = load i64, ptr @rb_eIOError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ao, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.ap = getelementptr i8, ptr %i.an, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !38
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.r, label %rb_io_check_closed.exit

bb.r:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.as = load i64, ptr @rb_eIOError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.as, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.v, label %RB_OBJ_FROZEN.exit.i.i.i12

RB_OBJ_FROZEN.exit.i.i.i12:                       ; preds = %rb_io_check_closed.exit
  %i.at = tail call ptr @rb_enc_from_index(i32 noundef %.0.i) #28 ; 2 uses
  %i.au = tail call i64 @rb_enc_from_encoding(ptr noundef %i.at) #28
  %i.av = load i64, ptr %i.d, align 8, !tbaa !22  ; 3 uses
  %i.aw = and i64 %i.av, 2048
  %.not.i.i.i13 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i13, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i14, label %RB_OBJ_FROZEN.exit.thread.i.i.i11, !prof !23

RB_OBJ_FROZEN.exit.thread.i.i.i11:                ; preds = %RB_OBJ_FROZEN.exit.i.i.i12
  tail call void @rb_error_frozen_object(i64 noundef %0) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i14:           ; preds = %RB_OBJ_FROZEN.exit.i.i.i12
  %i.ax = and i64 %i.av, 31
  %i.ay = icmp ne i64 %i.ax, 5
  %i.az = and i64 %i.av, 49152
  %.not8.i.i.i15 = icmp eq i64 %i.az, 0
  %or.cond.i.i.i16 = or i1 %i.ay, %.not8.i.i.i15
  br i1 %or.cond.i.i.i16, label %rb_io_taint_check.exit.i17, label %bb.s, !prof !24

bb.s:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i14
  tail call void @rb_str_modify(i64 noundef %0) #28
  br label %rb_io_taint_check.exit.i17

rb_io_taint_check.exit.i17:                       ; preds = %bb.s, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i14
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !41  ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 104
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !76
  %.not.i18 = icmp eq ptr %i.bc, null
  br i1 %.not.i18, label %rb_io_internal_encoding.exit, label %bb.t

bb.t:                                             ; preds = %rb_io_taint_check.exit.i17
  %i.bd = getelementptr i8, ptr %i.ba, i64 96
  %.val.i = load ptr, ptr %i.bd, align 8, !tbaa !87 ; 2 uses
  %.not.i.i19 = icmp eq ptr %.val.i, null
  br i1 %.not.i.i19, label %bb.u, label %io_read_encoding.exit.i

bb.u:                                             ; preds = %bb.t
  %i.be = tail call ptr @rb_default_external_encoding() #28
  br label %io_read_encoding.exit.i

io_read_encoding.exit.i:                          ; preds = %bb.u, %bb.t
  %.0.i.i = phi ptr [ %i.be, %bb.u ], [ %.val.i, %bb.t ]
  %i.bf = tail call i64 @rb_enc_from_encoding(ptr noundef %.0.i.i) #28
  br label %rb_io_internal_encoding.exit

rb_io_internal_encoding.exit:                     ; preds = %rb_io_taint_check.exit.i17, %io_read_encoding.exit.i
  %.0.i20 = phi i64 [ %i.bf, %io_read_encoding.exit.i ], [ 4, %rb_io_taint_check.exit.i17 ]
  tail call fastcc void @io_encoding_set(ptr noundef nonnull %i.an, i64 noundef %i.au, i64 noundef %.0.i20, i64 noundef 4)
  br label %bb.w

bb.v:                                             ; preds = %rb_io_check_closed.exit
  %i.bg = getelementptr i8, ptr %i.an, i64 104
  store ptr null, ptr %i.bg, align 8, !tbaa !76
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %rb_io_internal_encoding.exit
  %.0 = phi ptr [ %i.at, %rb_io_internal_encoding.exit ], [ null, %bb.v ]
  ret ptr %.0
}

declare i64 @rb_str_encode_ospath(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef ptr @sysopen_func(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !265
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22
  %i.d = and i64 %i.c, 8192
  %.not.i = icmp eq i64 %i.d, 0
  %i.e = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !90
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !266
  %i.j = getelementptr i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !267
  %i.l = tail call i32 @rb_cloexec_open(ptr noundef %i.g, i32 noundef %i.i, i32 noundef %i.k)
  %i.m = sext i32 %i.l to i64
  %i.n = inttoptr i64 %i.m to ptr
  ret ptr %i.n
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @io_encoding_set(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.d = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !94   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.f = icmp eq i64 %2, 4
  br i1 %i.f, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @rb_find_encoding(i64 noundef %1) #28 ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %find_encoding.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.207, i64 noundef %1) #34
  br label %find_encoding.exit

find_encoding.exit:                               ; preds = %bb.b, %bb.c
  store ptr %i.g, ptr %i.b, align 8, !tbaa !123
  %i.h = tail call i64 @rb_check_string_type(i64 noundef %2) #28 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4
  br i1 %i.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %find_encoding.exit
  %i.j = inttoptr i64 %i.h to ptr                 ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !86
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = load i64, ptr %i.j, align 8, !tbaa !22
  %i.o = and i64 %i.n, 8192
  %.not.i26 = icmp eq i64 %i.o, 0
  %i.p = getelementptr i8, ptr %i.j, i64 24       ; 2 uses
  br i1 %.not.i26, label %RSTRING_PTR.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !90
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.e, %bb.f
  %i.r = phi ptr [ %i.q, %bb.f ], [ %i.p, %bb.e ]
  %i.s = load i8, ptr %i.r, align 1, !tbaa !90
  %i.t = icmp eq i8 %i.s, 45
  br i1 %i.t, label %find_encoding.exit28, label %bb.g

bb.g:                                             ; preds = %RSTRING_PTR.exit, %bb.d
  %i.u = tail call ptr @rb_find_encoding(i64 noundef %2) #28 ; 3 uses
  %.not.i27 = icmp eq ptr %i.u, null
  br i1 %.not.i27, label %bb.h, label %find_encoding.exit28

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.207, i64 noundef %2) #34
  br label %find_encoding.exit28

find_encoding.exit28:                             ; preds = %bb.h, %bb.g, %RSTRING_PTR.exit
  %.sink = phi ptr [ %i.g, %RSTRING_PTR.exit ], [ %i.u, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  %i.v = phi ptr [ null, %RSTRING_PTR.exit ], [ %i.g, %bb.g ], [ %i.g, %bb.h ] ; 2 uses
  store ptr %.sink, ptr %i.a, align 8, !tbaa !123
  %i.w = icmp eq ptr %.sink, %i.v
  %spec.store.select = select i1 %i.w, ptr null, ptr %i.v ; 2 uses
  store ptr %spec.store.select, ptr %i.b, align 8
  br label %bb.k

bb.i:                                             ; preds = %find_encoding.exit
  %i.x = tail call ptr @rb_find_encoding(i64 noundef %2) #28 ; 5 uses
  %.not.i29 = icmp eq ptr %i.x, null
  br i1 %.not.i29, label %bb.j, label %find_encoding.exit30

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.207, i64 noundef %2) #34
  br label %find_encoding.exit30

find_encoding.exit30:                             ; preds = %bb.i, %bb.j
  store ptr %i.x, ptr %i.a, align 8, !tbaa !123
  %i.y = icmp eq ptr %i.x, %i.g
  br i1 %i.y, label %.thread, label %bb.k

.thread:                                          ; preds = %find_encoding.exit30
  store ptr null, ptr %i.b, align 8, !tbaa !123
  %i.z = tail call nonnull ptr @rb_ascii8bit_encoding() #28 ; 0 uses
  br label %bb.m

bb.k:                                             ; preds = %find_encoding.exit28, %find_encoding.exit30
  %.pr49 = phi ptr [ %.sink, %find_encoding.exit28 ], [ %i.x, %find_encoding.exit30 ]
  %i.aa = phi ptr [ %spec.store.select, %find_encoding.exit28 ], [ %i.g, %find_encoding.exit30 ] ; 4 uses
  %i.ab = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !123
  store ptr null, ptr %i.b, align 8, !tbaa !123
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l, %bb.k
  %.pre51 = phi ptr [ null, %bb.l ], [ %i.aa, %bb.k ], [ null, %.thread ]
  %.pr48 = phi ptr [ %i.aa, %bb.l ], [ %.pr49, %bb.k ], [ %i.x, %.thread ]
  %i.ad = call i32 @rb_econv_prepare_options(i64 noundef %3, ptr noundef nonnull %i.c, i32 noundef %i.e) #28
  br label %thread-pre-split

bb.n:                                             ; preds = %bb.a
  %i.ae = icmp eq i64 %1, 4
  br i1 %i.ae, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.af = tail call ptr @rb_default_external_encoding() #28 ; 5 uses
  %i.ag = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = tail call ptr @rb_default_internal_encoding() #28
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.019.i = phi ptr [ null, %bb.o ], [ %i.ai, %bb.p ] ; 4 uses
  %magicptr.i = ptrtoint ptr %.019.i to i64
  switch i64 %magicptr.i, label %bb.r [
    i64 4, label %bb.s
    i64 0, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.aj = icmp eq ptr %.019.i, %i.af
  br i1 %i.aj, label %bb.s, label %rb_io_ext_int_to_encs.exit

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.q
  %.not25.i = icmp eq ptr %.019.i, %i.af
  %i.ak = select i1 %.not25.i, ptr %i.af, ptr null
  br label %rb_io_ext_int_to_encs.exit

rb_io_ext_int_to_encs.exit:                       ; preds = %bb.r, %bb.s
  %storemerge22.i = phi ptr [ %i.ak, %bb.s ], [ %.019.i, %bb.r ] ; 2 uses
  %storemerge.i = phi ptr [ null, %bb.s ], [ %i.af, %bb.r ] ; 2 uses
  store ptr %storemerge22.i, ptr %i.a, align 8, !tbaa !123
  store ptr %storemerge.i, ptr %i.b, align 8, !tbaa !123
  store i64 4, ptr %i.c, align 8, !tbaa !19
  br label %thread-pre-split

bb.t:                                             ; preds = %bb.n
  %i.al = tail call i64 @rb_check_string_type(i64 noundef %1) #28 ; 3 uses
  %i.am = icmp eq i64 %i.al, 4
  br i1 %i.am, label %rb_enc_asciicompat.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @rb_enc_get(i64 noundef %i.al) #28 ; 3 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 20
  %.val.i = load i32, ptr %i.ao, align 4, !tbaa !89
  %.not.i31 = icmp eq i32 %.val.i, 1
  br i1 %.not.i31, label %rb_enc_asciicompat.exit, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit:                          ; preds = %bb.u
  %i.ap = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.an) #33
  %.not3.i = icmp eq i32 %i.ap, 0
  br i1 %.not3.i, label %bb.v, label %rb_enc_asciicompat.exit.thread

bb.v:                                             ; preds = %rb_enc_asciicompat.exit
  %i.aq = inttoptr i64 %i.al to ptr               ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !22
  %i.as = and i64 %i.ar, 8192
  %.not.i32 = icmp eq i64 %i.as, 0
  %i.at = getelementptr i8, ptr %i.aq, i64 24     ; 2 uses
  br i1 %.not.i32, label %RSTRING_PTR.exit33, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !90
  br label %RSTRING_PTR.exit33

RSTRING_PTR.exit33:                               ; preds = %bb.v, %bb.w
  %i.av = phi ptr [ %i.au, %bb.w ], [ %i.at, %bb.v ]
  call fastcc void @parse_mode_enc(ptr noundef %i.av, ptr noundef nonnull %i.an, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null)
  %i.aw = call i32 @rb_econv_prepare_options(i64 noundef %3, ptr noundef nonnull %i.c, i32 noundef %i.e) #28
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !123
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !123
  br label %thread-pre-split

rb_enc_asciicompat.exit.thread:                   ; preds = %bb.u, %rb_enc_asciicompat.exit, %bb.t
  %i.ax = tail call ptr @rb_find_encoding(i64 noundef %1) #28 ; 2 uses
  %.not.i34 = icmp ne ptr %i.ax, null             ; 2 uses
  br i1 %.not.i34, label %find_encoding.exit35.thread, label %bb.x

bb.x:                                             ; preds = %rb_enc_asciicompat.exit.thread
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.207, i64 noundef %1) #34
  %i.ay = tail call ptr @rb_default_external_encoding() #28
  br label %find_encoding.exit35.thread

find_encoding.exit35.thread:                      ; preds = %rb_enc_asciicompat.exit.thread, %bb.x
  %.018.i = phi ptr [ %i.ay, %bb.x ], [ %i.ax, %rb_enc_asciicompat.exit.thread ] ; 5 uses
  %i.az = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.ba = icmp eq ptr %.018.i, %i.az
  br i1 %i.ba, label %bb.z, label %bb.y

bb.y:                                             ; preds = %find_encoding.exit35.thread
  %i.bb = tail call ptr @rb_default_internal_encoding() #28
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %find_encoding.exit35.thread
  %.019.i36 = phi ptr [ null, %find_encoding.exit35.thread ], [ %i.bb, %bb.y ] ; 4 uses
  %magicptr.i37 = ptrtoint ptr %.019.i36 to i64
  switch i64 %magicptr.i37, label %bb.aa [
    i64 4, label %bb.ab
    i64 0, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.bc = icmp eq ptr %.019.i36, %.018.i
  br i1 %i.bc, label %bb.ab, label %rb_io_ext_int_to_encs.exit41

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.z
  %.not25.i38 = icmp eq ptr %.019.i36, %.018.i
  %or.cond26.i = select i1 %.not.i34, i1 true, i1 %.not25.i38
  %i.bd = select i1 %or.cond26.i, ptr %.018.i, ptr null
  br label %rb_io_ext_int_to_encs.exit41

rb_io_ext_int_to_encs.exit41:                     ; preds = %bb.aa, %bb.ab
  %storemerge22.i39 = phi ptr [ %i.bd, %bb.ab ], [ %.019.i36, %bb.aa ] ; 2 uses
  %storemerge.i40 = phi ptr [ null, %bb.ab ], [ %.018.i, %bb.aa ] ; 2 uses
  store ptr %storemerge22.i39, ptr %i.a, align 8, !tbaa !123
  store ptr %storemerge.i40, ptr %i.b, align 8, !tbaa !123
  store i64 4, ptr %i.c, align 8, !tbaa !19
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %RSTRING_PTR.exit33, %bb.m, %rb_io_ext_int_to_encs.exit, %rb_io_ext_int_to_encs.exit41
  %i.be = phi ptr [ %storemerge.i40, %rb_io_ext_int_to_encs.exit41 ], [ %storemerge.i, %rb_io_ext_int_to_encs.exit ], [ %.pre51, %bb.m ], [ %.pre.pre, %RSTRING_PTR.exit33 ] ; 2 uses
  %i.bf = phi ptr [ %storemerge22.i39, %rb_io_ext_int_to_encs.exit41 ], [ %storemerge22.i, %rb_io_ext_int_to_encs.exit ], [ %.pr48, %bb.m ], [ %.pr.pre, %RSTRING_PTR.exit33 ] ; 3 uses
  %.0 = phi i32 [ %i.e, %rb_io_ext_int_to_encs.exit41 ], [ %i.e, %rb_io_ext_int_to_encs.exit ], [ %i.ad, %bb.m ], [ %i.aw, %RSTRING_PTR.exit33 ] ; 3 uses
  %i.bg = getelementptr i8, ptr %0, i64 96
  %i.bh = getelementptr i8, ptr %0, i64 20        ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !16 ; 4 uses
  %i.bj = icmp eq ptr %i.be, null
  %i.bk = and i32 %i.bi, 4
  %.not.i42 = icmp eq i32 %i.bk, 0                ; 2 uses
  %i.bl = and i32 %i.bi, 5
  %i.bm = icmp eq i32 %i.bl, 1
  %or.cond22.i = and i1 %i.bj, %i.bm
  br i1 %or.cond22.i, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %thread-pre-split
  %.not17.i = icmp eq ptr %i.bf, null
  br i1 %.not17.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bn = call ptr @rb_default_external_encoding() #28
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bo = phi ptr [ %i.bn, %bb.ad ], [ %i.bf, %bb.ac ] ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 20
  %.val.i.i = load i32, ptr %i.bp, align 4, !tbaa !89
  %.not.i.i = icmp eq i32 %.val.i.i, 1
  br i1 %.not.i.i, label %rb_enc_asciicompat.exit.i, label %rb_enc_asciicompat.exit.thread.i

rb_enc_asciicompat.exit.i:                        ; preds = %bb.ae
  %i.bq = call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.bo) #33
  %.not3.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not3.i.i, label %.thread.i, label %rb_enc_asciicompat.exit.thread.i

.thread.i:                                        ; preds = %rb_enc_asciicompat.exit.i
  %i.br = and i32 %.0, 32512
  %.not1926.i = icmp eq i32 %i.br, 0
  br label %bb.ah
end_hunk_1
