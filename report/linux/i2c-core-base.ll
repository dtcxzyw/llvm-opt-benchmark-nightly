Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/i2c-core-base?download=true
inline.NumInlined: 240
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@__i2c_transfer:bb.a
  %i.ce = select i1 %i.cd, ptr @.str.120, ptr @.str.121
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.bw, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.116, i32 noundef %i.by, i32 noundef %i.ca, ptr noundef nonnull %i.ce) #24
  br label %__i2c_check_suspended.exit

bb.y:                                             ; preds = %bb.v, %bb.u
  %i.cf = getelementptr i8, ptr %i.s, i64 18
  %i.cg = load i16, ptr %i.cf, align 2            ; 2 uses
  %.not84.i = icmp eq i16 %i.cg, 0
  br i1 %.not84.i, label %.lr.ph.split.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = getelementptr i8, ptr %1, i64 20        ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 4
  %i.cj = icmp ugt i16 %i.ci, %i.cg
  br i1 %i.cj, label %bb.aa, label %.lr.ph.split.split.i

bb.aa:                                            ; preds = %bb.z
  %i.ck = tail call i32 @___ratelimit(ptr noundef nonnull @i2c_quirk_error._rs, ptr noundef nonnull @__func__.i2c_quirk_error) #21
  %.not.i98.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i98.i, label %__i2c_check_suspended.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = getelementptr i8, ptr %1, i64 16
  %i.cm = getelementptr i8, ptr %0, i64 112
  %i.cn = load i16, ptr %i.cl, align 8
  %i.co = zext i16 %i.cn to i32
  %i.cp = load i16, ptr %i.ch, align 4
  %i.cq = zext i16 %i.cp to i32
  %i.cr = getelementptr i8, ptr %1, i64 18
  %i.cs = load i16, ptr %i.cr, align 2
  %i.ct = trunc i16 %i.cs to i1
  %i.cu = select i1 %i.ct, ptr @.str.120, ptr @.str.121
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.cm, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.116, i32 noundef %i.co, i32 noundef %i.cq, ptr noundef nonnull %i.cu) #24
  br label %__i2c_check_suspended.exit

bb.ac:                                            ; preds = %bb.h, %bb.g
  %.071.i = phi i32 [ %i.u, %bb.g ], [ 2, %bb.h ] ; 2 uses
  %.not85.i = icmp ne i32 %.071.i, 0
  %i.cv = icmp sgt i32 %2, %.071.i
  %or.cond89.i = and i1 %.not85.i, %i.cv
  br i1 %or.cond89.i, label %bb.ai, label %.lr.ph.split.us.preheader.i

.lr.ph.split.us.preheader.i:                      ; preds = %bb.ac
  %i.cw = getelementptr i8, ptr %i.s, i64 14
  %i.cx = and i64 %.fr.i, 32
  %i.cy = icmp ne i64 %i.cx, 0
  %i.cz = getelementptr i8, ptr %i.s, i64 12
  %i.da = and i64 %.fr.i, 64
  %i.db = icmp ne i64 %i.da, 0
  %wide.trip.count201.i = zext nneg i32 %2 to i64
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.ah, %.lr.ph.split.us.preheader.i
  %indvars.iv198.i = phi i64 [ 0, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next199.i, %bb.ah ] ; 2 uses
  %i.dc = getelementptr [16 x i8], ptr %1, i64 %indvars.iv198.i ; 10 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 4
  %i.de = load i16, ptr %i.dd, align 4            ; 4 uses
  %i.df = getelementptr i8, ptr %i.dc, i64 2
  %i.dg = load i16, ptr %i.df, align 2
  %i.dh = and i16 %i.dg, 1
  %.not86.us.i = icmp eq i16 %i.dh, 0
  br i1 %.not86.us.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.split.us.i
  %i.di = load i16, ptr %i.cw, align 2            ; 2 uses
  %.not88.us.i = icmp ne i16 %i.di, 0
  %i.dj = icmp ugt i16 %i.de, %i.di
  %or.cond90.us.i = select i1 %.not88.us.i, i1 %i.dj, i1 false
  br i1 %or.cond90.us.i, label %.split.us.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dk = icmp eq i16 %i.de, 0
  %or.cond.us.i = select i1 %i.cy, i1 %i.dk, i1 false
  br i1 %or.cond.us.i, label %.split132.us.i, label %bb.ah

bb.af:                                            ; preds = %.lr.ph.split.us.i
  %i.dl = load i16, ptr %i.cz, align 4            ; 2 uses
  %.not87.us.i = icmp ne i16 %i.dl, 0
  %i.dm = icmp ugt i16 %i.de, %i.dl
  %or.cond91.us.i = select i1 %.not87.us.i, i1 %i.dm, i1 false
  br i1 %or.cond91.us.i, label %.split137.us.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dn = icmp eq i16 %i.de, 0
  %or.cond5.us.i = select i1 %i.db, i1 %i.dn, i1 false
  br i1 %or.cond5.us.i, label %.split142.us.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %indvars.iv.next199.i = add nuw nsw i64 %indvars.iv198.i, 1 ; 2 uses
  %exitcond202.not.i = icmp eq i64 %indvars.iv.next199.i, %wide.trip.count201.i
  br i1 %exitcond202.not.i, label %i2c_check_for_quirks.exit, label %.lr.ph.split.us.i, !llvm.loop !75

.lr.ph.split.split.i:                             ; preds = %bb.z, %bb.y
  %i.do = and i64 %.fr.i, 32
  %.not244.i = icmp eq i64 %i.do, 0
  %i.dp = and i64 %.fr.i, 64
  %.not245.i = icmp eq i64 %i.dp, 0               ; 2 uses
  br i1 %.not244.i, label %.lr.ph.split.split.split.us.i, label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.us.i:                    ; preds = %.lr.ph.split.split.i
  br i1 %.not245.i, label %i2c_check_for_quirks.exit, label %.lr.ph.split.split.split.us.split.i

.lr.ph.split.split.split.us.split.i:              ; preds = %.lr.ph.split.split.split.us.i
  %i.dq = getelementptr i8, ptr %1, i64 4
  %i.dr = load i16, ptr %i.dq, align 4
  %i.ds = getelementptr i8, ptr %1, i64 2
  %i.dt = load i16, ptr %i.ds, align 2
  %i.du = and i16 %i.dt, 1
  %.not86.us147.i = icmp eq i16 %i.du, 0
  %i.dv = icmp eq i16 %i.dr, 0
  %or.cond.i78 = select i1 %.not86.us147.i, i1 %i.dv, i1 false
  br i1 %or.cond.i78, label %.split142.us.i, label %.lr.ph.split.split.split.us.split.i.1

.lr.ph.split.split.split.us.split.i.1:            ; preds = %.lr.ph.split.split.split.us.split.i
  %i.dw = getelementptr i8, ptr %1, i64 16
  %i.dx = getelementptr i8, ptr %1, i64 20
  %i.dy = load i16, ptr %i.dx, align 4
  %i.dz = getelementptr i8, ptr %1, i64 18
  %i.ea = load i16, ptr %i.dz, align 2
  %i.eb = and i16 %i.ea, 1
  %.not86.us147.i.1 = icmp eq i16 %i.eb, 0
  %i.ec = icmp eq i16 %i.dy, 0
  %or.cond.i78.1 = select i1 %.not86.us147.i.1, i1 %i.ec, i1 false
  br i1 %or.cond.i78.1, label %.split142.us.i, label %i2c_check_for_quirks.exit

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.split.split.i
  br i1 %.not245.i, label %.lr.ph.split.split.split.split.us.i, label %.lr.ph.split.split.split.split.i

.lr.ph.split.split.split.split.us.i:              ; preds = %.lr.ph.split.split.split.i
  %i.ed = getelementptr i8, ptr %1, i64 4
  %i.ee = load i16, ptr %i.ed, align 4
  %i.ef = getelementptr i8, ptr %1, i64 2
  %i.eg = load i16, ptr %i.ef, align 2
  %.not86.us156.i = trunc i16 %i.eg to i1
  %i.eh = icmp eq i16 %i.ee, 0
  %or.cond166.i = select i1 %.not86.us156.i, i1 %i.eh, i1 false
  br i1 %or.cond166.i, label %.split132.us.i, label %.lr.ph.split.split.split.split.us.i.1

.lr.ph.split.split.split.split.us.i.1:            ; preds = %.lr.ph.split.split.split.split.us.i
  %i.ei = getelementptr i8, ptr %1, i64 16
  %i.ej = getelementptr i8, ptr %1, i64 20
  %i.ek = load i16, ptr %i.ej, align 4
  %i.el = getelementptr i8, ptr %1, i64 18
  %i.em = load i16, ptr %i.el, align 2
  %.not86.us156.i.1 = trunc i16 %i.em to i1
  %i.en = icmp eq i16 %i.ek, 0
  %or.cond166.i.1 = select i1 %.not86.us156.i.1, i1 %i.en, i1 false
  br i1 %or.cond166.i.1, label %.split132.us.i, label %i2c_check_for_quirks.exit

bb.ai:                                            ; preds = %bb.ac
  %i.eo = tail call i32 @___ratelimit(ptr noundef nonnull @i2c_quirk_error._rs, ptr noundef nonnull @__func__.i2c_quirk_error) #21
  %.not.i100.i = icmp eq i32 %i.eo, 0
  br i1 %.not.i100.i, label %__i2c_check_suspended.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ep = getelementptr i8, ptr %0, i64 112
  %i.eq = load i16, ptr %1, align 8
  %i.er = zext i16 %i.eq to i32
  %i.es = getelementptr i8, ptr %1, i64 4
  %i.et = load i16, ptr %i.es, align 4
  %i.eu = zext i16 %i.et to i32
  %i.ev = getelementptr i8, ptr %1, i64 2
  %i.ew = load i16, ptr %i.ev, align 2
  %i.ex = trunc i16 %i.ew to i1
  %i.ey = select i1 %i.ex, ptr @.str.120, ptr @.str.121
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ep, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.117, i32 noundef %i.er, i32 noundef %i.eu, ptr noundef nonnull %i.ey) #24
  br label %__i2c_check_suspended.exit

.lr.ph.split.split.split.split.i:                 ; preds = %.lr.ph.split.split.split.i
  %i.ez = getelementptr i8, ptr %1, i64 4
  %i.fa = load i16, ptr %i.ez, align 4
  %i.fb = getelementptr i8, ptr %1, i64 2
  %i.fc = load i16, ptr %i.fb, align 2
  %i.fd = and i16 %i.fc, 1
  %.not86.i = icmp eq i16 %i.fd, 0
  %i.fe = icmp eq i16 %i.fa, 0                    ; 2 uses
  br i1 %.not86.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.split.split.split.split.i
  br i1 %i.fe, label %.split132.us.i, label %.lr.ph.split.split.split.split.i.1

.split.us.i:                                      ; preds = %bb.ad
  %i.ff = tail call i32 @___ratelimit(ptr noundef nonnull @i2c_quirk_error._rs, ptr noundef nonnull @__func__.i2c_quirk_error) #21
  %.not.i102.i = icmp eq i32 %i.ff, 0
  br i1 %.not.i102.i, label %__i2c_check_suspended.exit, label %bb.al

bb.al:                                            ; preds = %.split.us.i
  %i.fg = getelementptr i8, ptr %i.dc, i64 2
  %i.fh = getelementptr i8, ptr %i.dc, i64 4
  %i.fi = getelementptr i8, ptr %0, i64 112
  %i.fj = load i16, ptr %i.dc, align 8
  %i.fk = zext i16 %i.fj to i32
  %i.fl = load i16, ptr %i.fh, align 4
  %i.fm = zext i16 %i.fl to i32
  %i.fn = load i16, ptr %i.fg, align 2
  %i.fo = trunc i16 %i.fn to i1
  %i.fp = select i1 %i.fo, ptr @.str.120, ptr @.str.121
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.fi, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.116, i32 noundef %i.fk, i32 noundef %i.fm, ptr noundef nonnull %i.fp) #24
  br label %__i2c_check_suspended.exit

.split132.us.i:                                   ; preds = %bb.ak, %bb.aq, %bb.ae, %.lr.ph.split.split.split.split.us.i, %.lr.ph.split.split.split.split.us.i.1
  %.us-phi133.i = phi ptr [ %i.dc, %bb.ae ], [ %i.ei, %.lr.ph.split.split.split.split.us.i.1 ], [ %1, %.lr.ph.split.split.split.split.us.i ], [ %1, %bb.ak ], [ %i.gx, %bb.aq ] ; 3 uses
  %i.fq = tail call i32 @___ratelimit(ptr noundef nonnull @i2c_quirk_error._rs, ptr noundef nonnull @__func__.i2c_quirk_error) #21
  %.not.i104.i = icmp eq i32 %i.fq, 0
  br i1 %.not.i104.i, label %__i2c_check_suspended.exit, label %bb.am

bb.am:                                            ; preds = %.split132.us.i
  %i.fr = getelementptr i8, ptr %.us-phi133.i, i64 2
  %i.fs = getelementptr i8, ptr %.us-phi133.i, i64 4
  %i.ft = getelementptr i8, ptr %0, i64 112
  %i.fu = load i16, ptr %.us-phi133.i, align 8
  %i.fv = zext i16 %i.fu to i32
  %i.fw = load i16, ptr %i.fs, align 4
  %i.fx = zext i16 %i.fw to i32
  %i.fy = load i16, ptr %i.fr, align 2
  %i.fz = trunc i16 %i.fy to i1
  %i.ga = select i1 %i.fz, ptr @.str.120, ptr @.str.121
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ft, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.118, i32 noundef %i.fv, i32 noundef %i.fx, ptr noundef nonnull %i.ga) #24
  br label %__i2c_check_suspended.exit

bb.an:                                            ; preds = %.lr.ph.split.split.split.split.i
  br i1 %i.fe, label %.split142.us.i, label %.lr.ph.split.split.split.split.i.1

.split137.us.i:                                   ; preds = %bb.af
  %i.gb = tail call i32 @___ratelimit(ptr noundef nonnull @i2c_quirk_error._rs, ptr noundef nonnull @__func__.i2c_quirk_error) #21
  %.not.i106.i = icmp eq i32 %i.gb, 0
  br i1 %.not.i106.i, label %__i2c_check_suspended.exit, label %bb.ao

bb.ao:                                            ; preds = %.split137.us.i
  %i.gc = getelementptr i8, ptr %i.dc, i64 2
  %i.gd = getelementptr i8, ptr %i.dc, i64 4
  %i.ge = getelementptr i8, ptr %0, i64 112
  %i.gf = load i16, ptr %i.dc, align 8
  %i.gg = zext i16 %i.gf to i32
  %i.gh = load i16, ptr %i.gd, align 4
  %i.gi = zext i16 %i.gh to i32
  %i.gj = load i16, ptr %i.gc, align 2
  %i.gk = trunc i16 %i.gj to i1
  %i.gl = select i1 %i.gk, ptr @.str.120, ptr @.str.121
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ge, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.116, i32 noundef %i.gg, i32 noundef %i.gi, ptr noundef nonnull %i.gl) #24
  br label %__i2c_check_suspended.exit

.split142.us.i:                                   ; preds = %bb.an, %bb.ar, %.lr.ph.split.split.split.us.split.i, %.lr.ph.split.split.split.us.split.i.1, %bb.ag
  %.us-phi143.i = phi ptr [ %i.dc, %bb.ag ], [ %i.dw, %.lr.ph.split.split.split.us.split.i.1 ], [ %1, %.lr.ph.split.split.split.us.split.i ], [ %1, %bb.an ], [ %i.gx, %bb.ar ] ; 3 uses
  %i.gm = tail call i32 @___ratelimit(ptr noundef nonnull @i2c_quirk_error._rs, ptr noundef nonnull @__func__.i2c_quirk_error) #21
  %.not.i108.i = icmp eq i32 %i.gm, 0
  br i1 %.not.i108.i, label %__i2c_check_suspended.exit, label %bb.ap

bb.ap:                                            ; preds = %.split142.us.i
  %i.gn = getelementptr i8, ptr %.us-phi143.i, i64 2
  %i.go = getelementptr i8, ptr %.us-phi143.i, i64 4
  %i.gp = getelementptr i8, ptr %0, i64 112
  %i.gq = load i16, ptr %.us-phi143.i, align 8
  %i.gr = zext i16 %i.gq to i32
  %i.gs = load i16, ptr %i.go, align 4
  %i.gt = zext i16 %i.gs to i32
  %i.gu = load i16, ptr %i.gn, align 2
  %i.gv = trunc i16 %i.gu to i1
  %i.gw = select i1 %i.gv, ptr @.str.120, ptr @.str.121
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.gp, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.118, i32 noundef %i.gr, i32 noundef %i.gt, ptr noundef nonnull %i.gw) #24
  br label %__i2c_check_suspended.exit

.lr.ph.split.split.split.split.i.1:               ; preds = %bb.an, %bb.ak
  %i.gx = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.gy = getelementptr i8, ptr %1, i64 20
  %i.gz = load i16, ptr %i.gy, align 4
  %i.ha = getelementptr i8, ptr %1, i64 18
  %i.hb = load i16, ptr %i.ha, align 2
  %i.hc = and i16 %i.hb, 1
  %.not86.i.1 = icmp eq i16 %i.hc, 0
  %i.hd = icmp eq i16 %i.gz, 0                    ; 2 uses
  br i1 %.not86.i.1, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.split.split.split.split.i.1
  br i1 %i.hd, label %.split132.us.i, label %i2c_check_for_quirks.exit

bb.ar:                                            ; preds = %.lr.ph.split.split.split.split.i.1
  br i1 %i.hd, label %.split142.us.i, label %i2c_check_for_quirks.exit

i2c_check_for_quirks.exit:                        ; preds = %bb.ah, %bb.aq, %bb.ar, %.lr.ph.split.split.split.us.split.i.1, %.lr.ph.split.split.split.split.us.i.1, %.lr.ph.split.split.split.us.i, %bb.f
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @i2c_trace_msg_key, i1 false) #22
          to label %arch_static_branch.exit75.thread [label %.lr.ph.preheader], !srcloc !84

.lr.ph.preheader:                                 ; preds = %i2c_check_for_quirks.exit
  %smax = tail call i32 @llvm.smax.i32(i32 %2, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %trace_i2c_read.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %trace_i2c_read.exit ] ; 4 uses
  %i.he = getelementptr [16 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 2
  %i.hg = load i16, ptr %i.hf, align 2
  %i.hh = and i16 %i.hg, 1
  %.not73 = icmp eq i16 %i.hh, 0
  br i1 %.not73, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %.lr.ph
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i2c_read, i64 8), i1 false) #22
          to label %trace_i2c_read.exit [label %cpumask_test_cpu.exit.i.i], !srcloc !84

cpumask_test_cpu.exit.i.i:                        ; preds = %bb.as
  %i.hi = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #22, !srcloc !85
  %i.hj = zext i32 %i.hi to i64
  %i.hk = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.hj) #22, !srcloc !86 ; 2 uses
  %i.hl = icmp ult i8 %i.hk, 2
  tail call void @llvm.assume(i1 %i.hl)
  %i.hm = trunc nuw i8 %i.hk to i1
  br i1 %i.hm, label %bb.at, label %trace_i2c_read.exit

bb.at:                                            ; preds = %cpumask_test_cpu.exit.i.i
  %i.hn = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hn, ptr elementtype(i64) %i.hn) #22, !srcloc !87
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !88
  %i.ho = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i2c_read, i64 56), align 8 ; 2 uses
  %.not.i.i79 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i79, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hp = getelementptr i8, ptr %i.ho, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = trunc nuw nsw i64 %indvars.iv to i32
  %i.hs = tail call i32 @__SCT__tp_func_i2c_read(ptr noundef %i.hq, ptr noundef %0, ptr noundef %i.he, i32 noundef %i.hr) #21 ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !89
  %i.ht = getelementptr i8, ptr %i.hn, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ht, ptr elementtype(i64) %i.ht) #22, !srcloc !90
  br label %trace_i2c_read.exit

bb.aw:                                            ; preds = %.lr.ph
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i2c_write, i64 8), i1 false) #22
          to label %trace_i2c_read.exit [label %cpumask_test_cpu.exit.i.i80], !srcloc !84

cpumask_test_cpu.exit.i.i80:                      ; preds = %bb.aw
  %i.hu = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #22, !srcloc !91
  %i.hv = zext i32 %i.hu to i64
  %i.hw = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.hv) #22, !srcloc !86 ; 2 uses
  %i.hx = icmp ult i8 %i.hw, 2
  tail call void @llvm.assume(i1 %i.hx)
  %i.hy = trunc nuw i8 %i.hw to i1
  br i1 %i.hy, label %bb.ax, label %trace_i2c_read.exit

bb.ax:                                            ; preds = %cpumask_test_cpu.exit.i.i80
  %i.hz = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hz, ptr elementtype(i64) %i.hz) #22, !srcloc !87
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !88
  %i.ia = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i2c_write, i64 56), align 8 ; 2 uses
  %.not.i.i81 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i81, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ib = getelementptr i8, ptr %i.ia, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = trunc nuw nsw i64 %indvars.iv to i32
  %i.ie = tail call i32 @__SCT__tp_func_i2c_write(ptr noundef %i.ic, ptr noundef %0, ptr noundef %i.he, i32 noundef %i.id) #21 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !89
  %i.if = getelementptr i8, ptr %i.hz, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.if, ptr elementtype(i64) %i.if) #22, !srcloc !90
  br label %trace_i2c_read.exit

trace_i2c_read.exit:                              ; preds = %bb.az, %cpumask_test_cpu.exit.i.i80, %bb.aw, %bb.av, %cpumask_test_cpu.exit.i.i, %bb.as
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %arch_static_branch.exit75.thread, label %.lr.ph, !llvm.loop !76

arch_static_branch.exit75.thread:                 ; preds = %trace_i2c_read.exit, %i2c_check_for_quirks.exit
  %i.ig = load volatile i64, ptr @jiffies, align 64
  %i.ih = getelementptr i8, ptr %0, i64 104
  %i.ii = getelementptr i8, ptr %0, i64 108       ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4
  %.not69133 = icmp slt i32 %i.ij, 0
  br i1 %.not69133, label %._crit_edge, label %.lr.ph135

bb.ba:                                            ; preds = %bb.bd
  %i.ik = add i32 %.062134, 1                     ; 2 uses
  %i.il = load i32, ptr %i.ii, align 4
  %.not69 = icmp sgt i32 %i.ik, %i.il
  br i1 %.not69, label %._crit_edge, label %.lr.ph135, !llvm.loop !77

.lr.ph135:                                        ; preds = %arch_static_branch.exit75.thread, %bb.ba
  %.062134 = phi i32 [ %i.ik, %bb.ba ], [ 0, %arch_static_branch.exit75.thread ]
  %i.im = load i32, ptr @system_state, align 4
  %i.in = icmp ugt i32 %i.im, 3
  br i1 %i.in, label %bb.bb, label %i2c_in_atomic_xfer_mode.exit.thread98

bb.bb:                                            ; preds = %.lr.ph135
  %i.io = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count) #23, !srcloc !29
  %i.ip = and i32 %i.io, 2147483647
  %i.iq = icmp eq i32 %i.ip, 0
  br i1 %i.iq, label %i2c_in_atomic_xfer_mode.exit, label %i2c_in_atomic_xfer_mode.exit.thread

i2c_in_atomic_xfer_mode.exit:                     ; preds = %bb.bb
  %i.ir = tail call i64 asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !30
  %i.is = and i64 %i.ir, 512
  %.not.i.i84 = icmp eq i64 %i.is, 0
  br i1 %.not.i.i84, label %i2c_in_atomic_xfer_mode.exit.thread, label %i2c_in_atomic_xfer_mode.exit.thread98

i2c_in_atomic_xfer_mode.exit.thread:              ; preds = %bb.bb, %i2c_in_atomic_xfer_mode.exit
  %i.it = load ptr, ptr %i.a, align 8
  %i.iu = getelementptr i8, ptr %i.it, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8            ; 2 uses
  %.not70 = icmp eq ptr %i.iv, null
  br i1 %.not70, label %i2c_in_atomic_xfer_mode.exit.thread98, label %bb.bc

i2c_in_atomic_xfer_mode.exit.thread98:            ; preds = %.lr.ph135, %i2c_in_atomic_xfer_mode.exit.thread, %i2c_in_atomic_xfer_mode.exit
  %i.iw = load ptr, ptr %i.a, align 8
  %i.ix = load ptr, ptr %i.iw, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %i2c_in_atomic_xfer_mode.exit.thread, %i2c_in_atomic_xfer_mode.exit.thread98
  %.sink = phi ptr [ %i.ix, %i2c_in_atomic_xfer_mode.exit.thread98 ], [ %i.iv, %i2c_in_atomic_xfer_mode.exit.thread ]
  %i.iy = tail call i32 %.sink(ptr noundef %0, ptr noundef %1, i32 noundef %2) #21 ; 2 uses
  %.not71 = icmp eq i32 %i.iy, -11
  br i1 %.not71, label %bb.bd, label %._crit_edge

bb.bd:                                            ; preds = %bb.bc
  %i.iz = load i32, ptr %i.ih, align 8
  %i.ja = sext i32 %i.iz to i64
  %i.jb = add i64 %i.ig, %i.ja
  %i.jc = load volatile i64, ptr @jiffies, align 64
  %i.jd = sub i64 %i.jb, %i.jc
  %i.je = icmp slt i64 %i.jd, 0
  br i1 %i.je, label %._crit_edge, label %bb.ba

._crit_edge:                                      ; preds = %bb.ba, %bb.bc, %bb.bd, %arch_static_branch.exit75.thread
  %.2 = phi i32 [ 0, %arch_static_branch.exit75.thread ], [ -11, %bb.bd ], [ %i.iy, %bb.bc ], [ -11, %bb.ba ] ; 7 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @i2c_trace_msg_key, i1 false) #22
          to label %__i2c_check_suspended.exit [label %arch_static_branch.exit.preheader], !srcloc !84

arch_static_branch.exit.preheader:                ; preds = %._crit_edge
  %i.jf = icmp sgt i32 %.2, 0
  br i1 %i.jf, label %.lr.ph142.preheader, label %arch_static_branch.exit._crit_edge

.lr.ph142.preheader:                              ; preds = %arch_static_branch.exit.preheader
  %wide.trip.count165 = zext nneg i32 %.2 to i64
  br label %.lr.ph142

.lr.ph142:                                        ; preds = %.lr.ph142.preheader, %trace_i2c_reply.exit
  %indvars.iv162 = phi i64 [ 0, %.lr.ph142.preheader ], [ %indvars.iv.next163, %trace_i2c_reply.exit ] ; 3 uses
  %i.jg = getelementptr [16 x i8], ptr %1, i64 %indvars.iv162 ; 2 uses
  %i.jh = getelementptr i8, ptr %i.jg, i64 2
  %i.ji = load i16, ptr %i.jh, align 2
  %i.jj = and i16 %i.ji, 1
  %.not72 = icmp eq i16 %i.jj, 0
  br i1 %.not72, label %trace_i2c_reply.exit, label %bb.be

bb.be:                                            ; preds = %.lr.ph142
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i2c_reply, i64 8), i1 false) #22
          to label %trace_i2c_reply.exit [label %cpumask_test_cpu.exit.i.i85], !srcloc !84

cpumask_test_cpu.exit.i.i85:                      ; preds = %bb.be
  %i.jk = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #22, !srcloc !92
  %i.jl = zext i32 %i.jk to i64
  %i.jm = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.jl) #22, !srcloc !86 ; 2 uses
  %i.jn = icmp ult i8 %i.jm, 2
  tail call void @llvm.assume(i1 %i.jn)
  %i.jo = trunc nuw i8 %i.jm to i1
  br i1 %i.jo, label %bb.bf, label %trace_i2c_reply.exit

bb.bf:                                            ; preds = %cpumask_test_cpu.exit.i.i85
  %i.jp = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.jp, ptr elementtype(i64) %i.jp) #22, !srcloc !87
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !88
  %i.jq = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i2c_reply, i64 56), align 8 ; 2 uses
  %.not.i.i86 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i86, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jr = getelementptr i8, ptr %i.jq, i64 8
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = trunc nuw nsw i64 %indvars.iv162 to i32
  %i.ju = tail call i32 @__SCT__tp_func_i2c_reply(ptr noundef %i.js, ptr noundef %0, ptr noundef %i.jg, i32 noundef %i.jt) #21 ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !89
  %i.jv = getelementptr i8, ptr %i.jp, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.jv, ptr elementtype(i64) %i.jv) #22, !srcloc !90
  br label %trace_i2c_reply.exit

trace_i2c_reply.exit:                             ; preds = %bb.bh, %cpumask_test_cpu.exit.i.i85, %bb.be, %.lr.ph142
end_hunk_0
