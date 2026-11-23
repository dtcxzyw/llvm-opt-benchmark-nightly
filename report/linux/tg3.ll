Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tg3?download=true
inline.NumInlined: 2274
inline.NumDeleted: 364
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 70
begin_hunk_0_@tg3_run_loopback:bb.a

_tg3_flag.exit232:                                ; preds = %_tg3_flag.exit229
  %i.as = load volatile i64, ptr %i.af, align 8
  %i.at = and i64 %i.as, 1099511627776
  %.not190 = icmp eq i64 %i.at, 0
  br i1 %.not190, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_tg3_flag.exit232
  %i.au = getelementptr i8, ptr %0, i64 5564
  %i.av = load i32, ptr %i.au, align 4
  %.mask = and i32 %i.av, -4096
  %i.aw = icmp eq i32 %.mask, 12288               ; 2 uses
  %i.ax = or disjoint i32 %.0171, 12288
  %spec.select209 = select i1 %i.aw, i32 %.0171, i32 %i.ax
  %spec.select210 = select i1 %i.aw, i32 6644, i32 500
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_tg3_flag.exit232, %_tg3_flag.exit229, %bb.e
  %.2173 = phi i32 [ %i.ap, %bb.e ], [ %.0171, %_tg3_flag.exit232 ], [ %.0171, %_tg3_flag.exit229 ], [ %spec.select209, %bb.f ]
  %.0169 = phi i32 [ 16884, %bb.e ], [ 6644, %_tg3_flag.exit232 ], [ 27124, %_tg3_flag.exit229 ], [ %spec.select210, %bb.f ]
  %i.ay = or i32 %.2173, 4
  br label %bb.h

_tg3_flag.exit235:                                ; preds = %bb.c
  %i.az = getelementptr i8, ptr %0, i64 5384
  %i.ba = load volatile i64, ptr %i.az, align 8
  %.in.i234 = icmp slt i64 %i.ba, 0
  %i.bb = icmp sgt i32 %1, 1518
  %or.cond = and i1 %i.bb, %.in.i234
  %spec.select203 = select i1 %or.cond, i32 12, i32 4
  br label %bb.h

bb.h:                                             ; preds = %_tg3_flag.exit235, %bb.g
  %.3 = phi i32 [ %i.ay, %bb.g ], [ %spec.select203, %_tg3_flag.exit235 ]
  %.1170 = phi i32 [ %.0169, %bb.g ], [ 0, %_tg3_flag.exit235 ]
  %.0168 = phi i32 [ 66, %bb.g ], [ 14, %_tg3_flag.exit235 ] ; 6 uses
  %.0165 = phi i32 [ %i.ad, %bb.g ], [ 1, %_tg3_flag.exit235 ]
  %i.bc = icmp slt i32 %.0168, %1
  br i1 %i.bc, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.bd = zext nneg i32 %.0168 to i64             ; 4 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %i.be = sub nsw i64 %wide.trip.count, %i.bd
  %xtraiter = and i64 %i.be, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.bd, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bf = trunc i64 %indvars.iv.prol to i8
  %i.bg = getelementptr i8, ptr %i.t, i64 %indvars.iv.prol
  store i8 %i.bf, ptr %i.bg, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !440

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.bd, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.bh = sub nsw i64 %i.bd, %wide.trip.count
  %i.bi = icmp ugt i64 %i.bh, -8
  br i1 %i.bi, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 10 uses
  %i.bj = trunc i64 %indvars.iv to i8
  %i.bk = getelementptr i8, ptr %i.t, i64 %indvars.iv
  store i8 %i.bj, ptr %i.bk, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bl = trunc i64 %indvars.iv.next to i8
  %i.bm = getelementptr i8, ptr %i.t, i64 %indvars.iv.next
  store i8 %i.bl, ptr %i.bm, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bn = trunc i64 %indvars.iv.next.1 to i8
  %i.bo = getelementptr i8, ptr %i.t, i64 %indvars.iv.next.1
  store i8 %i.bn, ptr %i.bo, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bp = trunc i64 %indvars.iv.next.2 to i8
  %i.bq = getelementptr i8, ptr %i.t, i64 %indvars.iv.next.2
  store i8 %i.bp, ptr %i.bq, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.br = trunc i64 %indvars.iv.next.3 to i8
  %i.bs = getelementptr i8, ptr %i.t, i64 %indvars.iv.next.3
  store i8 %i.br, ptr %i.bs, align 1
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.bt = trunc i64 %indvars.iv.next.4 to i8
  %i.bu = getelementptr i8, ptr %i.t, i64 %indvars.iv.next.4
  store i8 %i.bt, ptr %i.bu, align 1
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.bv = trunc i64 %indvars.iv.next.5 to i8
  %i.bw = getelementptr i8, ptr %i.t, i64 %indvars.iv.next.5
  store i8 %i.bv, ptr %i.bw, align 1
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %i.bx = trunc i64 %indvars.iv.next.6 to i8
  %i.by = getelementptr i8, ptr %i.t, i64 %indvars.iv.next.6
  store i8 %i.bx, ptr %i.by, align 1
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !441

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.h
  %i.bz = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 200    ; 4 uses
  %i.cc = getelementptr i8, ptr %i.s, i64 208
  %i.cd = load ptr, ptr %i.cc, align 8            ; 3 uses
  %i.ce = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %i.cd) #27
  br i1 %i.ce, label %dev_name.exit.i, label %dma_map_single_attrs.exit, !prof !71

dev_name.exit.i:                                  ; preds = %._crit_edge
  %i.cf = tail call ptr @dev_driver_string(ptr noundef %i.cb) #27 ; 0 uses
  %i.cg = getelementptr i8, ptr %i.ca, i64 280
  %i.ch = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.44, ptr @.str.45, i32 524, i32 2323, i64 16) #28, !srcloc !72
  %i.ci = tail call ptr @dev_driver_string(ptr noundef %i.cb) #27
  %i.cj = load ptr, ptr %i.cg, align 8            ; 2 uses
  %.not.i21.i = icmp eq ptr %i.cj, null
  br i1 %.not.i21.i, label %bb.i, label %dma_map_single_attrs.exit.thread

bb.i:                                             ; preds = %dev_name.exit.i
  %.val.i23.i = load ptr, ptr %i.cb, align 8
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %bb.i
  %.0.i22.i = phi ptr [ %.val.i23.i, %bb.i ], [ %i.cj, %dev_name.exit.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ch, ptr noundef %i.ci, ptr noundef %.0.i22.i) #27
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #28, !srcloc !73
  br label %.loopexit250.sink.split

dma_map_single_attrs.exit:                        ; preds = %._crit_edge
  %i.ck = sext i32 %1 to i64
  %i.cl = load i64, ptr @vmemmap_base, align 8
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.co = add i64 %i.cn, 2147483648
  %i.cp = icmp ugt ptr %i.cd, inttoptr (i64 -2147483649 to ptr)
  %i.cq = load i64, ptr @phys_base, align 8
  %i.cr = load i64, ptr @page_offset_base, align 8
  %i.cs = sub i64 -2147483648, %i.cr
  %i.ct = select i1 %i.cp, i64 %i.cq, i64 %i.cs
  %i.cu = add i64 %i.co, %i.ct
  %i.cv = lshr i64 %i.cu, 12
  %i.cw = getelementptr [64 x i8], ptr %i.cm, i64 %i.cv
  %i.cx = and i64 %i.cn, 4095
  %i.cy = tail call i64 @dma_map_page_attrs(ptr noundef %i.cb, ptr noundef %i.cw, i64 noundef %i.cx, i64 noundef range(i64 -2147483648, 4294967296) %i.ck, i32 noundef 1, i64 noundef 0) #27
  %.fr = freeze i64 %i.cy                         ; 3 uses
  %i.cz = icmp eq i64 %.fr, -1
  br i1 %i.cz, label %.loopexit250.sink.split, label %_tg3_flag.exit.i, !prof !74

_tg3_flag.exit.i:                                 ; preds = %dma_map_single_attrs.exit
  %i.da = getelementptr i8, ptr %.0161, i64 704   ; 7 uses
  %i.db = load i32, ptr %i.da, align 64           ; 2 uses
  store i32 %i.db, ptr %i.a, align 4
  %i.dc = getelementptr i8, ptr %.0161, i64 736   ; 5 uses
  %i.dd = load ptr, ptr %i.dc, align 32
  %i.de = zext i32 %i.db to i64                   ; 2 uses
  %i.df = getelementptr [24 x i8], ptr %i.dd, i64 %i.de
  store ptr %i.s, ptr %i.df, align 8
  %i.dg = load ptr, ptr %i.dc, align 32
  %i.dh = getelementptr [24 x i8], ptr %i.dg, i64 %i.de
  %i.di = getelementptr i8, ptr %i.dh, i64 8
  store i64 %.fr, ptr %i.di, align 8
  %i.dj = getelementptr i8, ptr %0, i64 5552      ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 16
  %i.dl = load i32, ptr %i.o, align 32
  %i.dm = or i32 %i.dk, %i.dl
  %i.dn = or i32 %i.dm, 2                         ; 2 uses
  %i.do = getelementptr i8, ptr %0, i64 5384      ; 4 uses
  %i.dp = load volatile i64, ptr %i.do, align 8
  %i.dq = and i64 %i.dp, 512
  %.not.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i, label %_tg3_flag.exit21.i, label %bb.j

_tg3_flag.exit21.i:                               ; preds = %_tg3_flag.exit.i
  %i.dr = load volatile i64, ptr %i.do, align 8
  %i.ds = and i64 %i.dr, 35184372088832
  %.not15.i = icmp eq i64 %i.ds, 0
  br i1 %.not15.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_tg3_flag.exit21.i, %_tg3_flag.exit.i
  %i.dt = load ptr, ptr %i.y, align 8
  tail call void %i.dt(ptr noundef %0, i32 noundef 15360, i32 noundef %i.dn) #27, !inline_history !63
  br label %_tw32_flush.exit

bb.k:                                             ; preds = %_tg3_flag.exit21.i
  %i.du = getelementptr i8, ptr %0, i64 48
  %i.dv = load ptr, ptr %i.du, align 16
  %i.dw = getelementptr i8, ptr %i.dv, i64 15360
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.dn, ptr elementtype(i32) %i.dw) #28, !srcloc !56
  %i.dx = getelementptr i8, ptr %0, i64 16
  %i.dy = load ptr, ptr %i.dx, align 16
  %i.dz = tail call i32 %i.dy(ptr noundef %0, i32 noundef 15360) #27, !inline_history !63 ; 0 uses
  br label %_tw32_flush.exit

_tw32_flush.exit:                                 ; preds = %bb.j, %bb.k
  tail call void @__const_udelay(i64 noundef 42950) #27
  %i.ea = getelementptr i8, ptr %.1, i64 520      ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = getelementptr i8, ptr %i.eb, i64 16
  %i.ed = load i16, ptr %i.ec, align 4            ; 2 uses
  %3 = zext i16 %i.ed to i32                      ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #28, !srcloc !77
  %i.ee = getelementptr i8, ptr %.0161, i64 712
  %i.ef = load i32, ptr %i.ee, align 8
  %i.eg = load i32, ptr %i.da, align 64
  %i.eh = getelementptr i8, ptr %.0161, i64 708
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = sub i32 %i.eg, %i.ei
  %i.ek = and i32 %i.ej, 511
  %i.el = sub i32 %i.ef, %i.ek
  store i32 %i.el, ptr %i.b, align 4
  %i.em = call fastcc zeroext i1 @tg3_tx_frag_set(ptr noundef %.0161, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %.fr, i32 noundef %1, i32 noundef %.3, i32 noundef %.1170, i32 noundef 0) #30, !srcloc !445
  br i1 %i.em, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_tw32_flush.exit
  %i.en = load ptr, ptr %i.dc, align 32
  %i.eo = load i32, ptr %i.a, align 4
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr [24 x i8], ptr %i.en, i64 %i.ep
  store ptr null, ptr %i.eq, align 8
  br label %.loopexit250.sink.split

bb.m:                                             ; preds = %_tw32_flush.exit
  %i.er = load i32, ptr %i.da, align 64
  %i.es = add i32 %i.er, 1
  store i32 %i.es, ptr %i.da, align 64
  tail call void asm sideeffect "sfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #28, !srcloc !446
  %i.et = getelementptr i8, ptr %0, i64 320
  %i.eu = load ptr, ptr %i.et, align 64
  %i.ev = getelementptr i8, ptr %.0161, i64 720   ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 16
  %i.ex = load i32, ptr %i.da, align 64
  tail call void %i.eu(ptr noundef %0, i32 noundef %i.ew, i32 noundef %i.ex) #27
  %i.ey = getelementptr i8, ptr %0, i64 32
  %i.ez = load ptr, ptr %i.ey, align 32
  %i.fa = load i32, ptr %i.ev, align 16
  %i.fb = tail call i32 %i.ez(ptr noundef %0, i32 noundef %i.fa) #27 ; 0 uses
  tail call void @__const_udelay(i64 noundef 42950) #27
  %i.fc = or i32 %i.n, %i.p
  %i.fd = getelementptr i8, ptr %0, i64 48
  %i.fe = getelementptr i8, ptr %0, i64 16
  %i.ff = getelementptr i8, ptr %.0161, i64 520
  %i.fg = add nuw nsw i32 %.0165, %3              ; 4 uses
  %invariant.op331 = or i32 %i.fc, 2
  br label %_tg3_flag.exit.i237

bb.n:                                             ; preds = %_tw32_flush.exit243
  %i.fh = add nuw nsw i32 %.1164253, 1            ; 2 uses
  %exitcond293.not = icmp eq i32 %i.fh, 35
  br i1 %exitcond293.not, label %bb.q, label %_tg3_flag.exit.i237, !llvm.loop !442

_tg3_flag.exit.i237:                              ; preds = %bb.m, %bb.n
  %.1164253 = phi i32 [ 0, %bb.m ], [ %i.fh, %bb.n ]
  %i.fi = load i32, ptr %i.dj, align 16
  %.reass.reass = or i32 %i.fi, %invariant.op331  ; 2 uses
  %i.fj = load volatile i64, ptr %i.do, align 8
  %i.fk = and i64 %i.fj, 512
  %.not.i238 = icmp eq i64 %i.fk, 0
  br i1 %.not.i238, label %_tg3_flag.exit21.i240, label %bb.o

_tg3_flag.exit21.i240:                            ; preds = %_tg3_flag.exit.i237
  %i.fl = load volatile i64, ptr %i.do, align 8
  %i.fm = and i64 %i.fl, 35184372088832
  %.not15.i242 = icmp eq i64 %i.fm, 0
  br i1 %.not15.i242, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_tg3_flag.exit21.i240, %_tg3_flag.exit.i237
  %i.fn = load ptr, ptr %i.y, align 8
  tail call void %i.fn(ptr noundef %0, i32 noundef 15360, i32 noundef %.reass.reass) #27, !inline_history !63
  br label %_tw32_flush.exit243

bb.p:                                             ; preds = %_tg3_flag.exit21.i240
  %i.fo = load ptr, ptr %i.fd, align 16
  %i.fp = getelementptr i8, ptr %i.fo, i64 15360
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.reass.reass, ptr elementtype(i32) %i.fp) #28, !srcloc !56
  %i.fq = load ptr, ptr %i.fe, align 16
  %i.fr = tail call i32 %i.fq(ptr noundef %0, i32 noundef 15360) #27, !inline_history !63 ; 0 uses
  br label %_tw32_flush.exit243

_tw32_flush.exit243:                              ; preds = %bb.o, %bb.p
  tail call void @__const_udelay(i64 noundef 42950) #27
  %i.fs = load ptr, ptr %i.ff, align 8
  %i.ft = getelementptr i8, ptr %i.fs, i64 18
  %i.fu = load i16, ptr %i.ft, align 2
  %i.fv = zext i16 %i.fu to i32                   ; 2 uses
  %i.fw = load ptr, ptr %i.ea, align 8
  %i.fx = getelementptr i8, ptr %i.fw, i64 16
  %i.fy = load i16, ptr %i.fx, align 4            ; 2 uses
  %i.fz = zext i16 %i.fy to i32                   ; 2 uses
  %i.ga = load i32, ptr %i.da, align 64           ; 2 uses
  %i.gb = icmp eq i32 %i.ga, %i.fv
  %i.gc = icmp eq i32 %i.fg, %i.fz
  %or.cond205 = select i1 %i.gb, i1 %i.gc, i1 false
  br i1 %or.cond205, label %bb.q, label %bb.n

bb.q:                                             ; preds = %_tw32_flush.exit243, %bb.n
  %.lcssa289 = phi i32 [ %i.fg, %_tw32_flush.exit243 ], [ %i.fz, %bb.n ]
  %i.gd = add i32 %i.ga, -1                       ; 2 uses
  %i.ge = load ptr, ptr %i.dc, align 32
  %i.gf = zext i32 %i.gd to i64
  %i.gg = getelementptr [24 x i8], ptr %i.ge, i64 %i.gf ; 4 uses
  %i.gh = load ptr, ptr %i.gg, align 8            ; 2 uses
  store ptr null, ptr %i.gg, align 8
  %i.gi = getelementptr i8, ptr %.0161, i64 512
  %i.gj = load ptr, ptr %i.gi, align 64
  %i.gk = getelementptr i8, ptr %i.gj, i64 72
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = getelementptr i8, ptr %i.gl, i64 200
  %i.gn = getelementptr i8, ptr %i.gg, i64 8
  %i.go = load i64, ptr %i.gn, align 8
  %i.gp = getelementptr i8, ptr %i.gh, i64 112
  %.val31.i = load i32, ptr %i.gp, align 8
  %i.gq = getelementptr i8, ptr %i.gh, i64 116
  %.val32.i = load i32, ptr %i.gq, align 4
  %i.gr = sub i32 %.val31.i, %.val32.i
  %i.gs = zext i32 %i.gr to i64
  tail call void @dma_unmap_page_attrs(ptr noundef %i.gm, i64 noundef %i.go, i64 noundef range(i64 0, 4294967296) %i.gs, i32 noundef 1, i64 noundef 0) #27
  %i.gt = getelementptr i8, ptr %i.gg, i64 16     ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 8, !range !46, !noundef !47
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %.lr.ph.i, label %tg3_tx_skb_unmap.exit

.lr.ph.i:                                         ; preds = %bb.q, %.lr.ph.i
  %i.gw = phi ptr [ %i.hc, %.lr.ph.i ], [ %i.gt, %bb.q ]
  %.02834.i = phi i32 [ %i.gy, %.lr.ph.i ], [ %i.gd, %bb.q ]
  store i8 0, ptr %i.gw, align 8
  %i.gx = add i32 %.02834.i, 1
  %i.gy = and i32 %i.gx, 511                      ; 2 uses
  %i.gz = load ptr, ptr %i.dc, align 32
  %i.ha = zext nneg i32 %i.gy to i64
  %i.hb = getelementptr [24 x i8], ptr %i.gz, i64 %i.ha
  %i.hc = getelementptr i8, ptr %i.hb, i64 16     ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 8, !range !46, !noundef !47
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %.lr.ph.i, label %tg3_tx_skb_unmap.exit, !llvm.loop !21

tg3_tx_skb_unmap.exit:                            ; preds = %.lr.ph.i, %bb.q
  tail call void @consume_skb(ptr noundef nonnull %i.s) #27
  %i.hf = load i32, ptr %i.da, align 64
  %.not192 = icmp eq i32 %i.hf, %i.fv
  %.not193 = icmp eq i32 %i.fg, %.lcssa289
  %or.cond206 = select i1 %.not192, i1 %.not193, i1 false
  br i1 %or.cond206, label %bb.r, label %.loopexit250

bb.r:                                             ; preds = %tg3_tx_skb_unmap.exit
  %.not194260 = icmp eq i16 %i.fy, %i.ed
  br i1 %.not194260, label %.loopexit250, label %.lr.ph265

.lr.ph265:                                        ; preds = %bb.r
  %i.hg = getelementptr i8, ptr %.1, i64 664
  %i.hh = icmp ult i32 %1, 1533
  %i.hi = getelementptr i8, ptr %0, i64 1024
  %i.hj = getelementptr i8, ptr %0, i64 1016      ; 2 uses
  %i.hk = zext nneg i32 %.0168 to i64
  %invariant.op = sub i32 -4, %.0168
  br label %bb.s

.loopexit:                                        ; preds = %bb.ad, %dma_sync_single_for_cpu.exit
  %.lcssa = phi i32 [ %.lcssa258261, %dma_sync_single_for_cpu.exit ], [ %i.in, %bb.ad ]
  %.not194 = icmp eq i32 %4, %i.fg
  br i1 %.not194, label %.loopexit250, label %bb.s, !llvm.loop !443

bb.s:                                             ; preds = %.lr.ph265, %.loopexit
  %.0159263 = phi i32 [ %3, %.lr.ph265 ], [ %4, %.loopexit ] ; 2 uses
  %.lcssa258261 = phi i32 [ %.0168, %.lr.ph265 ], [ %.lcssa, %.loopexit ] ; 3 uses
  %i.hl = load ptr, ptr %i.hg, align 8
  %4 = add i32 %.0159263, 1                       ; 2 uses
  %5 = zext i32 %.0159263 to i64
  %i.hm = getelementptr [32 x i8], ptr %i.hl, i64 %5 ; 5 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 28
  %i.ho = load i32, ptr %i.hn, align 4            ; 2 uses
  %i.hp = and i32 %i.ho, 65535
  %i.hq = and i32 %i.ho, 458752                   ; 3 uses
  %i.hr = getelementptr i8, ptr %i.hm, i64 20
  %i.hs = load i32, ptr %i.hr, align 4
  %i.ht = and i32 %i.hs, 32440320
  %.not195 = icmp eq i32 %i.ht, 0
  br i1 %.not195, label %bb.t, label %.loopexit250

bb.t:                                             ; preds = %bb.s
  %i.hu = getelementptr i8, ptr %i.hm, i64 8
  %i.hv = load i32, ptr %i.hu, align 4
  %i.hw = and i32 %i.hv, 65535                    ; 2 uses
  %i.hx = add nsw i32 %i.hw, -4                   ; 4 uses
  br i1 %2, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not197 = icmp eq i32 %i.hx, %1
  br i1 %.not197, label %bb.v, label %.loopexit250

bb.v:                                             ; preds = %bb.u
  br i1 %i.hh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %cond = icmp eq i32 %i.hq, 65536
  br i1 %cond, label %dma_dev_need_sync.exit.i, label %.loopexit250

bb.x:                                             ; preds = %bb.v
  %cond211 = icmp eq i32 %i.hq, 131072
  br i1 %cond211, label %bb.ab, label %.loopexit250

bb.y:                                             ; preds = %bb.t
  %i.hy = getelementptr i8, ptr %i.hm, i64 12
  %i.hz = load i32, ptr %i.hy, align 4
  %i.ia = and i32 %i.hz, 8192
  %.not200 = icmp eq i32 %i.ia, 0
  br i1 %.not200, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ib = getelementptr i8, ptr %i.hm, i64 16
  %i.ic = load i32, ptr %i.ib, align 4
  %i.id = and i32 %i.ic, 65535
  %.not201 = icmp eq i32 %i.id, 65535
  br i1 %.not201, label %bb.aa, label %.loopexit250

bb.aa:                                            ; preds = %bb.y, %bb.z
  switch i32 %i.hq, label %.loopexit250 [
    i32 65536, label %dma_dev_need_sync.exit.i
    i32 131072, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.x, %bb.aa
  br label %dma_dev_need_sync.exit.i

dma_dev_need_sync.exit.i:                         ; preds = %bb.aa, %bb.w, %bb.ab
  %.sink.in = phi ptr [ %i.hi, %bb.ab ], [ %i.hj, %bb.w ], [ %i.hj, %bb.aa ]
  %.sink = load ptr, ptr %.sink.in, align 8
  %i.ie = zext nneg i32 %i.hp to i64
  %i.if = getelementptr [16 x i8], ptr %.sink, i64 %i.ie ; 2 uses
  %.0166.in = getelementptr i8, ptr %i.if, i64 8
  %.0166 = load i64, ptr %.0166.in, align 8
  %.0167 = load ptr, ptr %i.if, align 8
  %i.ig = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.ih = getelementptr i8, ptr %i.ig, i64 952
  %i.ii = load volatile i64, ptr %i.ih, align 8
  %.in.in.i.i.i = and i64 %i.ii, 8
  %.in.i.not.i.i = icmp eq i64 %.in.in.i.i.i, 0
  br i1 %.in.i.not.i.i, label %bb.ac, label %dma_sync_single_for_cpu.exit

bb.ac:                                            ; preds = %dma_dev_need_sync.exit.i
  %i.ij = sext i32 %i.hx to i64
  %i.ik = getelementptr i8, ptr %i.ig, i64 200
  tail call void @__dma_sync_single_for_cpu(ptr noundef %i.ik, i64 noundef %.0166, i64 noundef range(i64 -4, 65532) %i.ij, i32 noundef 2) #27
  br label %dma_sync_single_for_cpu.exit

dma_sync_single_for_cpu.exit:                     ; preds = %dma_dev_need_sync.exit.i, %bb.ac
  %i.il = getelementptr i8, ptr %.0167, i64 64
  %i.im = icmp slt i32 %.0168, %i.hx
  br i1 %i.im, label %.lr.ph256.preheader, label %.loopexit

.lr.ph256.preheader:                              ; preds = %dma_sync_single_for_cpu.exit
  %.reass318.reass = add i32 %.lcssa258261, %invariant.op
  %i.in = add i32 %.reass318.reass, %i.hw
  %wide.trip.count297 = zext nneg i32 %i.hx to i64
  br label %.lr.ph256

.lr.ph256:                                        ; preds = %.lr.ph256.preheader, %bb.ad
  %indvars.iv294 = phi i64 [ %i.hk, %.lr.ph256.preheader ], [ %indvars.iv.next295, %bb.ad ] ; 2 uses
  %i.io = phi i32 [ %.lcssa258261, %.lr.ph256.preheader ], [ %i.is, %bb.ad ] ; 2 uses
  %i.ip = getelementptr i8, ptr %i.il, i64 %indvars.iv294
  %i.iq = load i8, ptr %i.ip, align 1
  %i.ir = trunc i32 %i.io to i8
  %.not202 = icmp eq i8 %i.iq, %i.ir
  br i1 %.not202, label %bb.ad, label %.loopexit250

bb.ad:                                            ; preds = %.lr.ph256
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %i.is = add i32 %i.io, 1
  %exitcond298.not = icmp eq i64 %indvars.iv.next295, %wide.trip.count297
  br i1 %exitcond298.not, label %.loopexit, label %.lr.ph256, !llvm.loop !444

.loopexit250.sink.split:                          ; preds = %dma_map_single_attrs.exit.thread, %dma_map_single_attrs.exit, %bb.l
  tail call void @consume_skb(ptr noundef nonnull %i.s) #27
  br label %.loopexit250

.loopexit250:                                     ; preds = %.loopexit, %bb.aa, %bb.s, %bb.z, %bb.u, %bb.w, %bb.x, %.lr.ph256, %.loopexit250.sink.split, %bb.r, %tg3_tx_skb_unmap.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.r ], [ -5, %.lr.ph256 ], [ -12, %bb.b ], [ -5, %tg3_tx_skb_unmap.exit ], [ -5, %.loopexit250.sink.split ], [ -5, %bb.x ], [ 0, %.loopexit ], [ -5, %bb.aa ], [ -5, %bb.s ], [ -5, %bb.z ], [ -5, %bb.u ], [ -5, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @tg3_phy_lpbk_set(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 align 16 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i32 0, ptr %i.b, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  tail call fastcc void @tg3_phy_toggle_apd(ptr noundef %0, i1 noundef zeroext false) #30, !srcloc !447
  tail call fastcc void @tg3_phy_toggle_automdix(ptr noundef %0, i1 noundef zeroext false) #30, !srcloc !448
  br i1 %1, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.d = getelementptr i8, ptr %0, i64 5612       ; 4 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = and i32 %i.e, 64
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %tg3_phy_set_extloopbk.exit.thread63

tg3_phy_set_extloopbk.exit.thread63:              ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 5608
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, -16
  %i.j = icmp eq i32 %i.i, 1610645584
  %i.k = getelementptr i8, ptr %0, i64 5604       ; 3 uses
  %i.l = load i8, ptr %i.k, align 4
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.m, i32 noundef 24, i32 noundef 52256) #30, !srcloc !59
  br label %tg3_phy_set_extloopbk.exit

bb.e:                                             ; preds = %bb.c
  %i.o = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.m, i32 noundef 24, i32 noundef 7) #30, !srcloc !59
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %tg3_phy_auxctl_read.exit.i, label %tg3_phy_set_extloopbk.exit.thread

tg3_phy_auxctl_read.exit.i:                       ; preds = %bb.e
  store i32 0, ptr %i.a, align 4, !annotation !40
  %i.p = load i8, ptr %i.k, align 4
  %i.q = zext i8 %i.p to i32
  %i.r = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.q, i32 noundef 24, ptr noundef nonnull %i.a) #30, !srcloc !58
  %.not10.i = icmp eq i32 %i.r, 0
  br i1 %.not10.i, label %bb.f, label %tg3_phy_set_extloopbk.exit.thread

bb.f:                                             ; preds = %tg3_phy_auxctl_read.exit.i
  %i.s = load i32, ptr %i.a, align 4
  %i.t = or i32 %i.s, 32768
  %i.u = load i8, ptr %i.k, align 4
  %i.v = zext i8 %i.u to i32
  %i.w = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.v, i32 noundef 24, i32 noundef %i.t) #30, !srcloc !59
  br label %tg3_phy_set_extloopbk.exit

tg3_phy_set_extloopbk.exit.thread:                ; preds = %tg3_phy_auxctl_read.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.z

tg3_phy_set_extloopbk.exit:                       ; preds = %bb.d, %bb.f
  %.08.i = phi i32 [ %i.n, %bb.d ], [ %i.w, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.not = icmp eq i32 %.08.i, 0
  br i1 %.not, label %tg3_phy_set_extloopbk.exit._crit_edge, label %bb.z

tg3_phy_set_extloopbk.exit._crit_edge:            ; preds = %tg3_phy_set_extloopbk.exit
  %.pre = load i32, ptr %i.d, align 4
  br label %bb.g

bb.g:                                             ; preds = %tg3_phy_set_extloopbk.exit._crit_edge, %tg3_phy_set_extloopbk.exit.thread63
  %i.x = phi i32 [ %.pre, %tg3_phy_set_extloopbk.exit._crit_edge ], [ %i.e, %tg3_phy_set_extloopbk.exit.thread63 ]
  %i.y = and i32 %i.x, 64
  %.not4566 = icmp eq i32 %i.y, 0
  %i.z = getelementptr i8, ptr %0, i64 5604       ; 2 uses
  %i.aa = load i8, ptr %i.z, align 4
  %i.ab = zext i8 %i.aa to i32                    ; 2 uses
  br i1 %.not4566, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.ab, i32 noundef 9, ptr noundef nonnull %i.b) #30, !srcloc !58 ; 0 uses
  %i.ad = load i32, ptr %i.b, align 4
  %i.ae = or i32 %i.ad, 6144
end_hunk_0
