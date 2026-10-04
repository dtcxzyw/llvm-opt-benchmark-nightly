Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/regmap?download=true
inline.NumInlined: 324
inline.NumDeleted: 126
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_regmap_raw_write_impl:bb.a
  %.0145.i = phi ptr [ %.115.i, %bb.y ], [ %.val, %bb.w ] ; 12 uses
  %i.eq = getelementptr i8, ptr %.0145.i, i64 40
  %i.er = load i32, ptr %i.eq, align 8            ; 3 uses
  %i.es = icmp ult i32 %1, %i.er
  br i1 %i.es, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i
  %i.et = getelementptr i8, ptr %.0145.i, i64 44
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = icmp ugt i32 %1, %i.eu
  br i1 %i.ev, label %bb.y, label %_regmap_range_lookup.exit

bb.y:                                             ; preds = %bb.x, %.lr.ph.i
  %.sink.i = phi i64 [ 16, %.lr.ph.i ], [ 8, %bb.x ]
  %i.ew = getelementptr i8, ptr %.0145.i, i64 %.sink.i
  %.115.i = load ptr, ptr %i.ew, align 8          ; 2 uses
  %.not.i326 = icmp eq ptr %.115.i, null
  br i1 %.not.i326, label %_regmap_range_lookup.exit.thread, label %.lr.ph.i, !llvm.loop !3

_regmap_range_lookup.exit:                        ; preds = %bb.x
  %i.ex = getelementptr i8, ptr %.0145.i, i64 40
  %i.ey = getelementptr i8, ptr %.0145.i, i64 44
  %i.ez = getelementptr i8, ptr %0, i64 104       ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8            ; 2 uses
  %i.fb = udiv i64 %3, %i.fa
  %i.fc = trunc i64 %i.fb to i32                  ; 3 uses
  %i.fd = sub i32 %1, %i.er                       ; 2 uses
  %i.fe = getelementptr i8, ptr %.0145.i, i64 64  ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 8            ; 3 uses
  %i.fg = urem i32 %i.fd, %i.ff                   ; 2 uses
  %i.fh = sub i32 %i.ff, %i.fg                    ; 2 uses
  %i.fi = icmp slt i32 %i.fh, %i.fc
  br i1 %i.fi, label %.lr.ph413, label %._crit_edge414

.lr.ph413:                                        ; preds = %_regmap_range_lookup.exit, %bb.z
  %i.fj = phi i64 [ %i.fp, %bb.z ], [ %i.fa, %_regmap_range_lookup.exit ]
  %.0219412 = phi ptr [ %i.fr, %bb.z ], [ %2, %_regmap_range_lookup.exit ] ; 2 uses
  %.0223411 = phi i64 [ %i.fs, %bb.z ], [ %3, %_regmap_range_lookup.exit ]
  %.0234410 = phi i32 [ %i.fo, %bb.z ], [ %i.fc, %_regmap_range_lookup.exit ]
  %.0235409 = phi i32 [ %i.fx, %bb.z ], [ %i.fh, %_regmap_range_lookup.exit ] ; 3 uses
  %.0408 = phi i32 [ %i.fn, %bb.z ], [ %1, %_regmap_range_lookup.exit ] ; 2 uses
  %i.fk = sext i32 %.0235409 to i64               ; 2 uses
  %i.fl = mul i64 %i.fj, %i.fk
  %i.fm = tail call fastcc i32 @_regmap_raw_write_impl(ptr noundef %0, i32 noundef %.0408, ptr noundef %.0219412, i64 noundef %i.fl, i1 noundef zeroext %4) #30, !srcloc !99 ; 2 uses
  %.not256 = icmp eq i32 %i.fm, 0
  br i1 %.not256, label %bb.z, label %trace_regmap_hw_write_done.exit

bb.z:                                             ; preds = %.lr.ph413
  %i.fn = add i32 %.0235409, %.0408               ; 3 uses
  %i.fo = sub i32 %.0234410, %.0235409            ; 3 uses
  %i.fp = load i64, ptr %i.ez, align 8            ; 2 uses
  %i.fq = mul i64 %i.fp, %i.fk                    ; 2 uses
  %i.fr = getelementptr i8, ptr %.0219412, i64 %i.fq ; 2 uses
  %i.fs = sub i64 %.0223411, %i.fq                ; 2 uses
  %i.ft = load i32, ptr %i.ex, align 8            ; 2 uses
  %i.fu = sub i32 %i.fn, %i.ft                    ; 2 uses
  %i.fv = load i32, ptr %i.fe, align 8            ; 3 uses
  %i.fw = urem i32 %i.fu, %i.fv                   ; 2 uses
  %i.fx = sub i32 %i.fv, %i.fw                    ; 2 uses
  %i.fy = icmp sgt i32 %i.fo, %i.fx
  br i1 %i.fy, label %.lr.ph413, label %._crit_edge414, !llvm.loop !98

._crit_edge414:                                   ; preds = %bb.z, %_regmap_range_lookup.exit
  %.pre-phi440 = phi i32 [ %i.fg, %_regmap_range_lookup.exit ], [ %i.fw, %bb.z ] ; 4 uses
  %.pre-phi = phi i32 [ %i.fd, %_regmap_range_lookup.exit ], [ %i.fu, %bb.z ]
  %i.fz = phi i32 [ %i.ff, %_regmap_range_lookup.exit ], [ %i.fv, %bb.z ] ; 4 uses
  %i.ga = phi i32 [ %i.er, %_regmap_range_lookup.exit ], [ %i.ft, %bb.z ]
  %.0.lcssa = phi i32 [ %1, %_regmap_range_lookup.exit ], [ %i.fn, %bb.z ]
  %.0234.lcssa = phi i32 [ %i.fc, %_regmap_range_lookup.exit ], [ %i.fo, %bb.z ]
  %.0223.lcssa = phi i64 [ %3, %_regmap_range_lookup.exit ], [ %i.fs, %bb.z ] ; 3 uses
  %.0219.lcssa = phi ptr [ %2, %_regmap_range_lookup.exit ], [ %i.fr, %bb.z ] ; 3 uses
  %i.gb = select i1 %4, i32 1, i32 %.0234.lcssa   ; 3 uses
  %i.gc = udiv i32 %.pre-phi, %i.fz               ; 2 uses
  %i.gd = icmp ugt i32 %i.gb, 1
  br i1 %i.gd, label %bb.aa, label %.thread54.i

bb.aa:                                            ; preds = %._crit_edge414
  %i.ge = add i32 %.0.lcssa, -1
  %i.gf = add i32 %i.ge, %i.gb
  %i.gg = load i32, ptr %i.ey, align 4
  %i.gh = icmp ugt i32 %i.gf, %i.gg
  %i.gi = sub i32 %i.fz, %.pre-phi440
  %i.gj = icmp ugt i32 %i.gb, %i.gi
  %or.cond.i = or i1 %i.gh, %i.gj
  br i1 %or.cond.i, label %trace_regmap_hw_write_done.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gk = getelementptr i8, ptr %.0145.i, i64 48
  %i.gl = getelementptr i8, ptr %.0145.i, i64 60
  br label %.thread.i

.thread54.i:                                      ; preds = %._crit_edge414
  %i.gm = getelementptr i8, ptr %.0145.i, i64 48  ; 3 uses
  %i.gn = load i32, ptr %i.gm, align 8            ; 7 uses
  %i.go = getelementptr i8, ptr %.0145.i, i64 60  ; 3 uses
  %i.gp = load i32, ptr %i.go, align 4            ; 4 uses
  %i.gq = sub i32 %i.gn, %i.gp
  %i.gr = icmp ult i32 %i.gq, %i.fz
  br i1 %i.gr, label %bb.ac, label %.thread52.i

bb.ac:                                            ; preds = %.thread54.i
  %i.gs = mul i32 %i.gc, %i.fz
  %i.gt = add i32 %i.gs, %i.ga
  %i.gu = add i32 %i.gt, %i.gn
  %i.gv = sub i32 %i.gu, %i.gp
  %.not.i327 = icmp eq i32 %i.gv, %i.gn
  %i.gw = add i32 %i.gp, %.pre-phi440
  %.not47.i = icmp eq i32 %i.gw, %i.gn
  %or.cond56.i = and i1 %.not.i327, %.not47.i
  br i1 %or.cond56.i, label %_regmap_range_lookup.exit.thread, label %.thread.i

.thread52.i:                                      ; preds = %.thread54.i
  %.old.i = add i32 %i.gp, %.pre-phi440
  %.not47.old.i = icmp eq i32 %.old.i, %i.gn
  br i1 %.not47.old.i, label %_regmap_range_lookup.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %.thread52.i, %bb.ac, %bb.ab
  %i.gx = phi ptr [ %i.gl, %bb.ab ], [ %i.go, %.thread52.i ], [ %i.go, %bb.ac ]
  %i.gy = phi ptr [ %i.gk, %bb.ab ], [ %i.gm, %.thread52.i ], [ %i.gm, %bb.ac ]
  %i.gz = load ptr, ptr %i.a, align 8
  %i.ha = getelementptr i8, ptr %0, i64 616
  %i.hb = load ptr, ptr %i.ha, align 8
  store ptr %i.hb, ptr %i.a, align 8
  %i.hc = load i32, ptr %i.gy, align 8
  %i.hd = getelementptr i8, ptr %.0145.i, i64 52
  %i.he = load i32, ptr %i.hd, align 4
  %i.hf = getelementptr i8, ptr %.0145.i, i64 56
  %i.hg = load i32, ptr %i.hf, align 8
  %i.hh = shl i32 %i.gc, %i.hg
  %i.hi = tail call fastcc i32 @_regmap_update_bits(ptr noundef %0, i32 noundef %i.hc, i32 noundef %i.he, i32 noundef %i.hh, ptr noundef null, i1 noundef zeroext false) #30, !srcloc !33 ; 2 uses
  store ptr %i.gz, ptr %i.a, align 8
  %.not48.i = icmp eq i32 %i.hi, 0
  br i1 %.not48.i, label %.thread._crit_edge.i, label %trace_regmap_hw_write_done.exit

.thread._crit_edge.i:                             ; preds = %.thread.i
  %.pre.i = load i32, ptr %i.gx, align 4
  %.pre57.i = add i32 %.pre.i, %.pre-phi440
  br label %_regmap_range_lookup.exit.thread

_regmap_range_lookup.exit.thread:                 ; preds = %bb.y, %bb.ac, %.thread52.i, %.thread._crit_edge.i, %bb.w
  %.2 = phi i32 [ %.pre57.i, %.thread._crit_edge.i ], [ %1, %bb.w ], [ %i.gn, %.thread52.i ], [ %i.gn, %bb.ac ], [ %1, %bb.y ]
  %.1224 = phi i64 [ %.0223.lcssa, %.thread._crit_edge.i ], [ %3, %bb.w ], [ %.0223.lcssa, %.thread52.i ], [ %.0223.lcssa, %bb.ac ], [ %3, %bb.y ] ; 11 uses
  %.1220 = phi ptr [ %.0219.lcssa, %.thread._crit_edge.i ], [ %2, %bb.w ], [ %.0219.lcssa, %.thread52.i ], [ %.0219.lcssa, %bb.ac ], [ %2, %bb.y ] ; 4 uses
  %i.hj = getelementptr i8, ptr %0, i64 60
  %.val275 = load i32, ptr %i.hj, align 4
  %i.hk = getelementptr i8, ptr %0, i64 112
  %.val276 = load i8, ptr %i.hk, align 8          ; 3 uses
  %i.hl = add i32 %.val275, %.2                   ; 3 uses
  %i.hm = sext i8 %.val276 to i32                 ; 2 uses
  %i.hn = icmp sgt i8 %.val276, 0
  br i1 %i.hn, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_regmap_range_lookup.exit.thread
  %i.ho = lshr i32 %i.hl, %i.hm
  br label %regmap_reg_addr.exit

bb.ae:                                            ; preds = %_regmap_range_lookup.exit.thread
  %i.hp = icmp slt i8 %.val276, 0
  br i1 %i.hp, label %bb.af, label %regmap_reg_addr.exit

bb.af:                                            ; preds = %bb.ae
  %i.hq = sub nsw i32 0, %i.hm
  %i.hr = shl i32 %i.hl, %i.hq
  br label %regmap_reg_addr.exit

regmap_reg_addr.exit:                             ; preds = %bb.ad, %bb.ae, %bb.af
  %.0.i328 = phi i32 [ %i.ho, %bb.ad ], [ %i.hr, %bb.af ], [ %i.hl, %bb.ae ] ; 6 uses
  %i.hs = getelementptr i8, ptr %0, i64 128
  %i.ht = load ptr, ptr %i.hs, align 8
  %i.hu = load ptr, ptr %i.a, align 8
  %i.hv = getelementptr i8, ptr %0, i64 496
  %i.hw = load i32, ptr %i.hv, align 8
  tail call void %i.ht(ptr noundef %i.hu, i32 noundef %.0.i328, i32 noundef %i.hw) #23
  %i.hx = load i64, ptr %i.d, align 8             ; 5 uses
  %i.hy = getelementptr i8, ptr %0, i64 488
  %i.hz = load i64, ptr %i.hy, align 8            ; 4 uses
  %.not.i329 = icmp eq i64 %i.hz, 0
  br i1 %.not.i329, label %regmap_set_work_buf_flag_mask.exit, label %bb.ag

bb.ag:                                            ; preds = %regmap_reg_addr.exit
  %i.ia = trunc i64 %i.hx to i32
  %i.ib = load ptr, ptr %i.a, align 8             ; 4 uses
  %.not11.i = icmp ne ptr %i.ib, null
  %i.ic = icmp sgt i32 %i.ia, 0
  %or.cond.i330 = and i1 %i.ic, %.not11.i
  br i1 %or.cond.i330, label %.lr.ph.preheader.i, label %regmap_set_work_buf_flag_mask.exit

.lr.ph.preheader.i:                               ; preds = %bb.ag
  %wide.trip.count.i = and i64 %i.hx, 2147483647
  %xtraiter = and i64 %i.hx, 1
  %i.id = icmp eq i64 %wide.trip.count.i, 1
  br i1 %i.id, label %.lr.ph.i331.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.hx, 2147483646
  br label %.lr.ph.i331

.lr.ph.i331:                                      ; preds = %.lr.ph.i331, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i331 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i331 ]
  %i.ie = shl nuw nsw i64 %indvars.iv.i, 3
  %i.if = and i64 %i.ie, 4294967280
  %i.ig = lshr i64 %i.hz, %i.if
  %i.ih = getelementptr i8, ptr %i.ib, i64 %indvars.iv.i ; 2 uses
  %i.ii = load i8, ptr %i.ih, align 1
  %i.ij = trunc i64 %i.ig to i8
  %i.ik = or i8 %i.ii, %i.ij
  store i8 %i.ik, ptr %i.ih, align 1
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.il = shl nuw nsw i64 %indvars.iv.next.i, 3
  %i.im = and i64 %i.il, 4294967288
  %i.in = lshr i64 %i.hz, %i.im
  %i.io = getelementptr i8, ptr %i.ib, i64 %indvars.iv.next.i ; 2 uses
  %i.ip = load i8, ptr %i.io, align 1
  %i.iq = trunc i64 %i.in to i8
  %i.ir = or i8 %i.ip, %i.iq
  store i8 %i.ir, ptr %i.io, align 1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %regmap_set_work_buf_flag_mask.exit.loopexit.unr-lcssa, label %.lr.ph.i331, !llvm.loop !5

regmap_set_work_buf_flag_mask.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i331
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %regmap_set_work_buf_flag_mask.exit, label %.lr.ph.i331.epil.preheader

.lr.ph.i331.epil.preheader:                       ; preds = %regmap_set_work_buf_flag_mask.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %regmap_set_work_buf_flag_mask.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod586 = trunc i64 %i.hx to i1
  tail call void @llvm.assume(i1 %lcmp.mod586)
  %i.is = shl nuw nsw i64 %indvars.iv.i.epil.init, 3
  %i.it = and i64 %i.is, 4294967288
  %i.iu = lshr i64 %i.hz, %i.it
  %i.iv = getelementptr i8, ptr %i.ib, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.iw = load i8, ptr %i.iv, align 1
  %i.ix = trunc i64 %i.iu to i8
  %i.iy = or i8 %i.iw, %i.ix
  store i8 %i.iy, ptr %i.iv, align 1
  br label %regmap_set_work_buf_flag_mask.exit

regmap_set_work_buf_flag_mask.exit:               ; preds = %.lr.ph.i331.epil.preheader, %regmap_set_work_buf_flag_mask.exit.loopexit.unr-lcssa, %regmap_reg_addr.exit, %bb.ag
  %.not257 = icmp eq ptr %.1220, %i.i
  br i1 %.not257, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %regmap_set_work_buf_flag_mask.exit
  %i.iz = getelementptr i8, ptr %0, i64 104
  %i.ja = load i64, ptr %i.iz, align 8
  %i.jb = icmp eq i64 %.1224, %i.ja
  br i1 %i.jb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %.1220, i64 %.1224, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %regmap_set_work_buf_flag_mask.exit
  %.2221 = phi ptr [ %i.i, %bb.ai ], [ %.1220, %bb.ah ], [ %.1220, %regmap_set_work_buf_flag_mask.exit ] ; 5 uses
  %i.jc = getelementptr i8, ptr %0, i64 252
  %i.jd = load i8, ptr %i.jc, align 4, !range !30, !noundef !31
  %i.je = trunc nuw i8 %i.jd to i1
  br i1 %i.je, label %bb.ak, label %bb.ax

bb.ak:                                            ; preds = %bb.aj
  %i.jf = getelementptr i8, ptr %0, i64 160       ; 3 uses
  %i.jg = load ptr, ptr %i.jf, align 8            ; 2 uses
  %.not258 = icmp eq ptr %i.jg, null
  br i1 %.not258, label %bb.ax, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jh = getelementptr i8, ptr %i.jg, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8
  %.not259 = icmp eq ptr %i.ji, null
  br i1 %.not259, label %bb.ax, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jj = trunc i64 %.1224 to i32
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_regmap_async_write_start, i64 8), i1 false) #24
          to label %trace_regmap_async_write_start.exit [label %arch_test_bit.exit.i.i], !srcloc !34

arch_test_bit.exit.i.i:                           ; preds = %bb.am
  %i.jk = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #24, !srcloc !100
  %i.jl = zext i32 %i.jk to i64
  %i.jm = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.jl) #24, !srcloc !36 ; 2 uses
  %i.jn = icmp ult i8 %i.jm, 2
  tail call void @llvm.assume(i1 %i.jn)
  %i.jo = trunc nuw i8 %i.jm to i1
  br i1 %i.jo, label %bb.an, label %trace_regmap_async_write_start.exit

bb.an:                                            ; preds = %arch_test_bit.exit.i.i
  %i.jp = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.jp, ptr elementtype(i64) %i.jp) #24, !srcloc !37
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !38
  %i.jq = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_regmap_async_write_start, i64 56), align 8 ; 2 uses
  %.not.i.i332 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i332, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jr = getelementptr i8, ptr %i.jq, i64 8
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = tail call i32 @__SCT__tp_func_regmap_async_write_start(ptr noundef %i.js, ptr noundef %0, i32 noundef %.0.i328, i32 noundef %i.jj) #23 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !39
  %i.ju = getelementptr i8, ptr %i.jp, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ju, ptr elementtype(i64) %i.ju) #24, !srcloc !40
  br label %trace_regmap_async_write_start.exit

trace_regmap_async_write_start.exit:              ; preds = %bb.am, %arch_test_bit.exit.i.i, %bb.ap
  %i.jv = getelementptr i8, ptr %0, i64 184       ; 7 uses
  %i.jw = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.jv) #23 ; 2 uses
  %i.jx = getelementptr i8, ptr %0, i64 232       ; 5 uses
  %i.jy = load volatile ptr, ptr %i.jx, align 8   ; 7 uses
  %.not267 = icmp eq ptr %i.jy, %i.jx
  %.not268387 = icmp eq ptr %i.jy, null
  %.not268 = or i1 %.not267, %.not268387
  br i1 %.not268, label %.critedge274, label %bb.aq

bb.aq:                                            ; preds = %trace_regmap_async_write_start.exit
  %i.jz = getelementptr i8, ptr %i.jy, i64 8      ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8            ; 2 uses
  %i.kb = load ptr, ptr %i.jy, align 8            ; 2 uses
  %i.kc = getelementptr i8, ptr %i.kb, i64 8
  store ptr %i.ka, ptr %i.kc, align 8
  store volatile ptr %i.kb, ptr %i.ka, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.jy, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.jz, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.jv, i64 noundef %i.jw) #23
  %.phi.trans.insert = getelementptr i8, ptr %i.jy, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.as

.critedge274:                                     ; preds = %trace_regmap_async_write_start.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.jv, i64 noundef %i.jw) #23
  %i.kd = load ptr, ptr %i.jf, align 8
  %i.ke = getelementptr i8, ptr %i.kd, i64 88
  %i.kf = load ptr, ptr %i.ke, align 8
  %i.kg = tail call ptr %i.kf() #23               ; 4 uses
  %.not269 = icmp eq ptr %i.kg, null
  br i1 %.not269, label %trace_regmap_hw_write_done.exit, label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %.critedge274
  %i.kh = load i64, ptr %i.c, align 8
  %i.ki = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.kh, i32 noundef range(i32 3520, 3522) 3521) #28 ; 3 uses
  %i.kj = getelementptr i8, ptr %i.kg, i64 24
  store ptr %i.ki, ptr %i.kj, align 8
  %.not270 = icmp eq ptr %i.ki, null
  br i1 %.not270, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_kzalloc_noprof.exit
  tail call void @kfree(ptr noundef nonnull %i.kg) #23
  br label %trace_regmap_hw_write_done.exit

bb.as:                                            ; preds = %bb.aq, %_kzalloc_noprof.exit
  %i.kk = phi ptr [ %.pre, %bb.aq ], [ %i.ki, %_kzalloc_noprof.exit ]
  %.0236 = phi ptr [ %i.jy, %bb.aq ], [ %i.kg, %_kzalloc_noprof.exit ] ; 12 uses
  %i.kl = getelementptr i8, ptr %.0236, i64 16
  store ptr %0, ptr %i.kl, align 8
  %i.km = getelementptr i8, ptr %.0236, i64 24
  %i.kn = load ptr, ptr %i.a, align 8
  %i.ko = load i64, ptr %i.g, align 8
  %i.kp = load i64, ptr %i.d, align 8
  %i.kq = add i64 %i.kp, %i.ko
  %i.kr = getelementptr i8, ptr %0, i64 104
  %i.ks = load i64, ptr %i.kr, align 8
  %i.kt = add i64 %i.kq, %i.ks
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kk, ptr align 1 %i.kn, i64 %i.kt, i1 false)
  %i.ku = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.jv) #23
  %i.kv = getelementptr i8, ptr %0, i64 216
  %i.kw = getelementptr i8, ptr %0, i64 224       ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8            ; 2 uses
  store ptr %.0236, ptr %i.kw, align 8
  store ptr %i.kv, ptr %.0236, align 8
  %i.ky = getelementptr i8, ptr %.0236, i64 8     ; 3 uses
  store ptr %i.kx, ptr %i.ky, align 8
  store volatile ptr %.0236, ptr %i.kx, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.jv, i64 noundef %i.ku) #23
  %.not271 = icmp eq ptr %.2221, %i.i
  %i.kz = load ptr, ptr %i.jf, align 8
  %i.la = getelementptr i8, ptr %i.kz, i64 24
  %i.lb = load ptr, ptr %i.la, align 8            ; 2 uses
  %i.lc = getelementptr i8, ptr %0, i64 168
  %i.ld = load ptr, ptr %i.lc, align 8            ; 2 uses
  %i.le = load ptr, ptr %i.km, align 8            ; 2 uses
  %i.lf = load i64, ptr %i.d, align 8             ; 2 uses
  %i.lg = load i64, ptr %i.g, align 8             ; 2 uses
  br i1 %.not271, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.lh = add i64 %i.lg, %i.lf
  %i.li = tail call i32 %i.lb(ptr noundef %i.ld, ptr noundef %i.le, i64 noundef %i.lh, ptr noundef %.2221, i64 noundef %.1224, ptr noundef nonnull %.0236) #23
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.lj = add i64 %i.lf, %.1224
  %i.lk = add i64 %i.lj, %i.lg
  %i.ll = tail call i32 %i.lb(ptr noundef %i.ld, ptr noundef %i.le, i64 noundef %i.lk, ptr noundef null, i64 noundef 0, ptr noundef nonnull %.0236) #23
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.0225 = phi i32 [ %i.li, %bb.at ], [ %i.ll, %bb.au ] ; 3 uses
  %.not272 = icmp eq i32 %.0225, 0
  br i1 %.not272, label %trace_regmap_hw_write_done.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.lm = getelementptr i8, ptr %0, i64 64
  %i.ln = load ptr, ptr %i.lm, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ln, ptr noundef nonnull @.str.51, i32 noundef %.0225) #29
  %i.lo = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.jv) #23
  %i.lp = load ptr, ptr %i.ky, align 8            ; 2 uses
  %i.lq = load ptr, ptr %.0236, align 8           ; 2 uses
  %i.lr = getelementptr i8, ptr %i.lq, i64 8
  store ptr %i.lp, ptr %i.lr, align 8
  store volatile ptr %i.lq, ptr %i.lp, align 8
  %i.ls = load ptr, ptr %i.jx, align 8            ; 2 uses
  %i.lt = getelementptr i8, ptr %i.ls, i64 8
  store ptr %.0236, ptr %i.lt, align 8
  store ptr %i.ls, ptr %.0236, align 8
  store ptr %i.jx, ptr %i.ky, align 8
  store volatile ptr %.0236, ptr %i.jx, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.jv, i64 noundef %i.lo) #23
  br label %trace_regmap_hw_write_done.exit

bb.ax:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.lu = getelementptr i8, ptr %0, i64 104       ; 2 uses
  %i.lv = load i64, ptr %i.lu, align 8
  %i.lw = udiv i64 %.1224, %i.lv
  %i.lx = trunc i64 %i.lw to i32
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_regmap_hw_write_start, i64 8), i1 false) #24
          to label %trace_regmap_hw_write_start.exit [label %arch_test_bit.exit.i.i333], !srcloc !34

arch_test_bit.exit.i.i333:                        ; preds = %bb.ax
end_hunk_0
begin_hunk_1_@regmap_raw_read:bb.a
  %i.cb = getelementptr i8, ptr %0, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = load ptr, ptr %i.n, align 8
  call void %i.cc(ptr noundef %i.cd) #23
  br label %bb.v

bb.v:                                             ; preds = %bb.b, %bb.a, %.loopexit
  %.073 = phi i32 [ -22, %bb.a ], [ -22, %bb.b ], [ %.4, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.073
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @_regmap_raw_read(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 456        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_regmap_select_page.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 608
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not4.i = icmp eq ptr %.val, null
  br i1 %.not4.i, label %_regmap_range_lookup.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.0145.i = phi ptr [ %.115.i, %bb.d ], [ %.val, %bb.b ] ; 11 uses
  %i.d = getelementptr i8, ptr %.0145.i, i64 40
  %i.e = load i32, ptr %i.d, align 8              ; 4 uses
  %i.f = icmp ult i32 %1, %i.e
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr i8, ptr %.0145.i, i64 44
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %bb.d, label %_regmap_range_lookup.exit

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.sink.i = phi i64 [ 16, %.lr.ph.i ], [ 8, %bb.c ]
  %i.j = getelementptr i8, ptr %.0145.i, i64 %.sink.i
  %.115.i = load ptr, ptr %i.j, align 8           ; 2 uses
  %.not.i = icmp eq ptr %.115.i, null
  br i1 %.not.i, label %_regmap_range_lookup.exit.thread, label %.lr.ph.i, !llvm.loop !3

_regmap_range_lookup.exit:                        ; preds = %bb.c
  br i1 %4, label %.thread, label %bb.e

.thread:                                          ; preds = %_regmap_range_lookup.exit
  %i.k = sub i32 %1, %i.e                         ; 2 uses
  %i.l = getelementptr i8, ptr %.0145.i, i64 64
  %i.m = load i32, ptr %i.l, align 8              ; 3 uses
  %i.n = urem i32 %i.k, %i.m
  %i.o = udiv i32 %i.k, %i.m
  br label %.thread54.i

bb.e:                                             ; preds = %_regmap_range_lookup.exit
  %i.p = zext i32 %3 to i64
  %i.q = getelementptr i8, ptr %0, i64 104
  %i.r = load i64, ptr %i.q, align 8
  %i.s = udiv i64 %i.p, %i.r                      ; 2 uses
  %i.t = sub i32 %1, %i.e                         ; 2 uses
  %i.u = getelementptr i8, ptr %.0145.i, i64 64
  %i.v = load i32, ptr %i.u, align 8              ; 4 uses
  %i.w = urem i32 %i.t, %i.v                      ; 3 uses
  %i.x = udiv i32 %i.t, %i.v                      ; 2 uses
  %i.y = icmp samesign ugt i64 %i.s, 1
  br i1 %i.y, label %bb.f, label %.thread54.i

bb.f:                                             ; preds = %bb.e
  %i.z = trunc nuw i64 %i.s to i32                ; 2 uses
  %i.aa = add i32 %1, -1
  %i.ab = add i32 %i.aa, %i.z
  %i.ac = icmp ugt i32 %i.ab, %i.h
  %i.ad = sub i32 %i.v, %i.w
  %i.ae = icmp ult i32 %i.ad, %i.z
  %or.cond.i = or i1 %i.ac, %i.ae
  br i1 %or.cond.i, label %_regmap_select_page.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %.0145.i, i64 48
  %i.ag = getelementptr i8, ptr %.0145.i, i64 60
  br label %.thread.i

.thread54.i:                                      ; preds = %.thread, %bb.e
  %i.ah = phi i32 [ %i.o, %.thread ], [ %i.x, %bb.e ] ; 3 uses
  %i.ai = phi i32 [ %i.n, %.thread ], [ %i.w, %bb.e ] ; 4 uses
  %i.aj = phi i32 [ %i.m, %.thread ], [ %i.v, %bb.e ] ; 2 uses
  %i.ak = getelementptr i8, ptr %.0145.i, i64 48  ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8            ; 7 uses
  %i.am = getelementptr i8, ptr %.0145.i, i64 60  ; 3 uses
  %i.an = load i32, ptr %i.am, align 4            ; 4 uses
  %i.ao = sub i32 %i.al, %i.an
  %i.ap = icmp ult i32 %i.ao, %i.aj
  br i1 %i.ap, label %bb.h, label %.thread52.i

bb.h:                                             ; preds = %.thread54.i
  %i.aq = mul i32 %i.aj, %i.ah
  %i.ar = add i32 %i.aq, %i.e
  %i.as = add i32 %i.ar, %i.al
  %i.at = sub i32 %i.as, %i.an
  %.not.i37 = icmp eq i32 %i.at, %i.al
  %i.au = add i32 %i.an, %i.ai
  %.not47.i = icmp eq i32 %i.au, %i.al
  %or.cond56.i = and i1 %.not.i37, %.not47.i
  br i1 %or.cond56.i, label %_regmap_range_lookup.exit.thread, label %.thread.i

.thread52.i:                                      ; preds = %.thread54.i
  %.old.i = add i32 %i.an, %i.ai
  %.not47.old.i = icmp eq i32 %.old.i, %i.al
  br i1 %.not47.old.i, label %_regmap_range_lookup.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %.thread52.i, %bb.h, %bb.g
  %i.av = phi i32 [ %i.x, %bb.g ], [ %i.ah, %.thread52.i ], [ %i.ah, %bb.h ]
  %i.aw = phi i32 [ %i.w, %bb.g ], [ %i.ai, %.thread52.i ], [ %i.ai, %bb.h ]
  %i.ax = phi ptr [ %i.ag, %bb.g ], [ %i.am, %.thread52.i ], [ %i.am, %bb.h ]
  %i.ay = phi ptr [ %i.af, %bb.g ], [ %i.ak, %.thread52.i ], [ %i.ak, %bb.h ]
  %i.az = getelementptr i8, ptr %0, i64 72        ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr i8, ptr %0, i64 616
  %i.bc = load ptr, ptr %i.bb, align 8
  store ptr %i.bc, ptr %i.az, align 8
  %i.bd = load i32, ptr %i.ay, align 8
  %i.be = getelementptr i8, ptr %.0145.i, i64 52
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = getelementptr i8, ptr %.0145.i, i64 56
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = shl i32 %i.av, %i.bh
  %i.bj = tail call fastcc i32 @_regmap_update_bits(ptr noundef %0, i32 noundef %i.bd, i32 noundef %i.bf, i32 noundef %i.bi, ptr noundef null, i1 noundef zeroext false) #30, !srcloc !33 ; 2 uses
  store ptr %i.ba, ptr %i.az, align 8
  %.not48.i = icmp eq i32 %i.bj, 0
  br i1 %.not48.i, label %.thread._crit_edge.i, label %_regmap_select_page.exit

.thread._crit_edge.i:                             ; preds = %.thread.i
  %.pre.i = load i32, ptr %i.ax, align 4
  %.pre57.i = add i32 %.pre.i, %i.aw
  br label %_regmap_range_lookup.exit.thread

_regmap_range_lookup.exit.thread:                 ; preds = %bb.d, %bb.h, %.thread52.i, %.thread._crit_edge.i, %bb.b
  %.048 = phi i32 [ %.pre57.i, %.thread._crit_edge.i ], [ %1, %bb.b ], [ %i.al, %.thread52.i ], [ %i.al, %bb.h ], [ %1, %bb.d ]
  %i.bk = getelementptr i8, ptr %0, i64 60
  %.val35 = load i32, ptr %i.bk, align 4
  %i.bl = getelementptr i8, ptr %0, i64 112
  %.val36 = load i8, ptr %i.bl, align 8           ; 3 uses
  %i.bm = add i32 %.val35, %.048                  ; 3 uses
  %i.bn = sext i8 %.val36 to i32                  ; 2 uses
  %i.bo = icmp sgt i8 %.val36, 0
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_regmap_range_lookup.exit.thread
  %i.bp = lshr i32 %i.bm, %i.bn
  br label %regmap_reg_addr.exit

bb.j:                                             ; preds = %_regmap_range_lookup.exit.thread
  %i.bq = icmp slt i8 %.val36, 0
  br i1 %i.bq, label %bb.k, label %regmap_reg_addr.exit

bb.k:                                             ; preds = %bb.j
  %i.br = sub nsw i32 0, %i.bn
  %i.bs = shl i32 %i.bm, %i.br
  br label %regmap_reg_addr.exit

regmap_reg_addr.exit:                             ; preds = %bb.i, %bb.j, %bb.k
  %.0.i = phi i32 [ %i.bp, %bb.i ], [ %i.bs, %bb.k ], [ %i.bm, %bb.j ] ; 3 uses
  %i.bt = getelementptr i8, ptr %0, i64 128
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = getelementptr i8, ptr %0, i64 72        ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr i8, ptr %0, i64 496
  %i.by = load i32, ptr %i.bx, align 8
  tail call void %i.bu(ptr noundef %i.bw, i32 noundef %.0.i, i32 noundef %i.by) #23
  %i.bz = getelementptr i8, ptr %0, i64 88        ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8            ; 5 uses
  %i.cb = getelementptr i8, ptr %0, i64 480
  %i.cc = load i64, ptr %i.cb, align 8            ; 4 uses
  %.not.i38 = icmp eq i64 %i.cc, 0
  br i1 %.not.i38, label %regmap_set_work_buf_flag_mask.exit, label %bb.l

bb.l:                                             ; preds = %regmap_reg_addr.exit
  %i.cd = trunc i64 %i.ca to i32
  %i.ce = load ptr, ptr %i.bv, align 8            ; 4 uses
  %.not11.i = icmp ne ptr %i.ce, null
  %i.cf = icmp sgt i32 %i.cd, 0
  %or.cond.i39 = and i1 %i.cf, %.not11.i
  br i1 %or.cond.i39, label %.lr.ph.preheader.i, label %regmap_set_work_buf_flag_mask.exit

.lr.ph.preheader.i:                               ; preds = %bb.l
  %wide.trip.count.i = and i64 %i.ca, 2147483647
  %xtraiter = and i64 %i.ca, 1
  %i.cg = icmp eq i64 %wide.trip.count.i, 1
  br i1 %i.cg, label %.lr.ph.i40.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.ca, 2147483646
  br label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.lr.ph.i40, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i40 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i40 ]
  %i.ch = shl nuw nsw i64 %indvars.iv.i, 3
  %i.ci = and i64 %i.ch, 4294967280
  %i.cj = lshr i64 %i.cc, %i.ci
  %i.ck = getelementptr i8, ptr %i.ce, i64 %indvars.iv.i ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = trunc i64 %i.cj to i8
  %i.cn = or i8 %i.cl, %i.cm
  store i8 %i.cn, ptr %i.ck, align 1
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.co = shl nuw nsw i64 %indvars.iv.next.i, 3
  %i.cp = and i64 %i.co, 4294967288
  %i.cq = lshr i64 %i.cc, %i.cp
  %i.cr = getelementptr i8, ptr %i.ce, i64 %indvars.iv.next.i ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = trunc i64 %i.cq to i8
  %i.cu = or i8 %i.cs, %i.ct
  store i8 %i.cu, ptr %i.cr, align 1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %regmap_set_work_buf_flag_mask.exit.loopexit.unr-lcssa, label %.lr.ph.i40, !llvm.loop !5

regmap_set_work_buf_flag_mask.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i40
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %regmap_set_work_buf_flag_mask.exit, label %.lr.ph.i40.epil.preheader

.lr.ph.i40.epil.preheader:                        ; preds = %regmap_set_work_buf_flag_mask.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %regmap_set_work_buf_flag_mask.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod76 = trunc i64 %i.ca to i1
  tail call void @llvm.assume(i1 %lcmp.mod76)
  %i.cv = shl nuw nsw i64 %indvars.iv.i.epil.init, 3
  %i.cw = and i64 %i.cv, 4294967288
  %i.cx = lshr i64 %i.cc, %i.cw
  %i.cy = getelementptr i8, ptr %i.ce, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = trunc i64 %i.cx to i8
  %i.db = or i8 %i.cz, %i.da
  store i8 %i.db, ptr %i.cy, align 1
  br label %regmap_set_work_buf_flag_mask.exit

regmap_set_work_buf_flag_mask.exit:               ; preds = %.lr.ph.i40.epil.preheader, %regmap_set_work_buf_flag_mask.exit.loopexit.unr-lcssa, %regmap_reg_addr.exit, %bb.l
  %i.dc = zext i32 %3 to i64                      ; 3 uses
  %i.dd = getelementptr i8, ptr %0, i64 104       ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = udiv i64 %i.dc, %i.de
  %i.dg = trunc nuw i64 %i.df to i32
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_regmap_hw_read_start, i64 8), i1 false) #24
          to label %trace_regmap_hw_read_start.exit [label %arch_test_bit.exit.i.i], !srcloc !34

arch_test_bit.exit.i.i:                           ; preds = %regmap_set_work_buf_flag_mask.exit
  %i.dh = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #24, !srcloc !126
  %i.di = zext i32 %i.dh to i64
  %i.dj = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.di) #24, !srcloc !36 ; 2 uses
  %i.dk = icmp ult i8 %i.dj, 2
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = trunc nuw i8 %i.dj to i1
  br i1 %i.dl, label %bb.m, label %trace_regmap_hw_read_start.exit

bb.m:                                             ; preds = %arch_test_bit.exit.i.i
  %i.dm = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.dm, ptr elementtype(i64) %i.dm) #24, !srcloc !37
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !38
  %i.dn = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_regmap_hw_read_start, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.do = getelementptr i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = tail call i32 @__SCT__tp_func_regmap_hw_read_start(ptr noundef %i.dp, ptr noundef %0, i32 noundef %.0.i, i32 noundef %i.dg) #23 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !39
  %i.dr = getelementptr i8, ptr %i.dm, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.dr, ptr elementtype(i64) %i.dr) #24, !srcloc !40
  br label %trace_regmap_hw_read_start.exit

trace_regmap_hw_read_start.exit:                  ; preds = %regmap_set_work_buf_flag_mask.exit, %arch_test_bit.exit.i.i, %bb.o
  %i.ds = load ptr, ptr %i.a, align 8
  %i.dt = getelementptr i8, ptr %0, i64 168
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = load ptr, ptr %i.bv, align 8
  %i.dw = load i64, ptr %i.bz, align 8
  %i.dx = getelementptr i8, ptr %0, i64 96
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = add i64 %i.dy, %i.dw
  %i.ea = tail call i32 %i.ds(ptr noundef %i.du, ptr noundef %i.dv, i64 noundef %i.dz, ptr noundef %2, i64 noundef %i.dc) #23 ; 3 uses
  %i.eb = load i64, ptr %i.dd, align 8
  %i.ec = udiv i64 %i.dc, %i.eb
  %i.ed = trunc nuw i64 %i.ec to i32
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_regmap_hw_read_done, i64 8), i1 false) #24
          to label %_regmap_select_page.exit [label %arch_test_bit.exit.i.i41], !srcloc !34

arch_test_bit.exit.i.i41:                         ; preds = %trace_regmap_hw_read_start.exit
  %i.ee = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #24, !srcloc !127
  %i.ef = zext i32 %i.ee to i64
  %i.eg = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ef) #24, !srcloc !36 ; 2 uses
  %i.eh = icmp ult i8 %i.eg, 2
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = trunc nuw i8 %i.eg to i1
  br i1 %i.ei, label %bb.p, label %_regmap_select_page.exit

bb.p:                                             ; preds = %arch_test_bit.exit.i.i41
  %i.ej = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ej, ptr elementtype(i64) %i.ej) #24, !srcloc !37
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !38
  %i.ek = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_regmap_hw_read_done, i64 56), align 8 ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i42, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.el = getelementptr i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = tail call i32 @__SCT__tp_func_regmap_hw_read_done(ptr noundef %i.em, ptr noundef %0, i32 noundef %.0.i, i32 noundef %i.ed) #23 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !39
  %i.eo = getelementptr i8, ptr %i.ej, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.eo, ptr elementtype(i64) %i.eo) #24, !srcloc !40
  br label %_regmap_select_page.exit

_regmap_select_page.exit:                         ; preds = %bb.r, %arch_test_bit.exit.i.i41, %trace_regmap_hw_read_start.exit, %.thread.i, %bb.f, %bb.a
  %.0 = phi i32 [ -22, %bb.a ], [ -22, %bb.f ], [ %i.bj, %.thread.i ], [ %i.ea, %trace_regmap_hw_read_start.exit ], [ %i.ea, %bb.r ], [ %i.ea, %arch_test_bit.exit.i.i41 ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @regmap_noinc_read(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 456
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = urem i64 %3, %i.d
  %.not45 = icmp eq i64 %i.e, 0
  br i1 %.not45, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 500
  %i.g = load i32, ptr %i.f, align 4
  %i.h = add i32 %i.g, -1
  %i.i = and i32 %i.h, %1
  %i.j = icmp ne i32 %i.i, 0
  %i.k = icmp eq i64 %3, 0
  %or.cond50 = or i1 %i.k, %i.j
  br i1 %or.cond50, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.m(ptr noundef %i.o) #23
  %i.p = tail call zeroext i1 @regmap_volatile(ptr noundef %0, i32 noundef %1) #30
  br i1 %i.p, label %bb.e, label %regmap_noinc_readwrite.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %0, i64 376
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.f, label %regmap_readable_noinc.exit

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %0, i64 424
  %i.t = load ptr, ptr %i.s, align 8              ; 5 uses
  %.not10.i = icmp eq ptr %i.t, null
  br i1 %.not10.i, label %regmap_readable_noinc.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %i.t, i64 24
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %.not12.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not12.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.g
  %i.w = getelementptr i8, ptr %i.t, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %regmap_reg_in_range.exit.thread.i.i.i, %.lr.ph.i.preheader.i.i
  %.010.i.i.i = phi i32 [ %i.ab, %regmap_reg_in_range.exit.thread.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i ]
  %.079.i.i.i = phi ptr [ %i.ac, %regmap_reg_in_range.exit.thread.i.i.i ], [ %i.x, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.y = load i32, ptr %.079.i.i.i, align 4
  %.not.i.i.i.i = icmp ult i32 %1, %i.y
  br i1 %.not.i.i.i.i, label %regmap_reg_in_range.exit.thread.i.i.i, label %regmap_reg_in_range.exit.i.i.i

regmap_reg_in_range.exit.i.i.i:                   ; preds = %.lr.ph.i.i.i
  %i.z = getelementptr i8, ptr %.079.i.i.i, i64 4
  %i.aa = load i32, ptr %i.z, align 4
  %.not.i.i.i = icmp ugt i32 %1, %i.aa
  br i1 %.not.i.i.i, label %regmap_reg_in_range.exit.thread.i.i.i, label %regmap_noinc_readwrite.exit

regmap_reg_in_range.exit.thread.i.i.i:            ; preds = %regmap_reg_in_range.exit.i.i.i, %.lr.ph.i.i.i
  %i.ab = add nuw i32 %.010.i.i.i, 1              ; 2 uses
  %i.ac = getelementptr i8, ptr %.079.i.i.i, i64 8
  %exitcond.not.i.i.i = icmp eq i32 %i.ab, %i.v
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

.loopexit.i.i:                                    ; preds = %regmap_reg_in_range.exit.thread.i.i.i, %bb.g
  %i.ad = getelementptr i8, ptr %i.t, i64 8
  %i.ae = load i32, ptr %i.ad, align 8            ; 2 uses
  %.not.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i, label %regmap_readable_noinc.exit.thread, label %bb.h

bb.h:                                             ; preds = %.loopexit.i.i
  %i.af = load ptr, ptr %i.t, align 8
  br label %.lr.ph.i9.i.i

.lr.ph.i9.i.i:                                    ; preds = %regmap_reg_in_range.exit.thread.i16.i.i, %bb.h
  %.010.i10.i.i = phi i32 [ %i.aj, %regmap_reg_in_range.exit.thread.i16.i.i ], [ 0, %bb.h ]
  %.079.i11.i.i = phi ptr [ %i.ak, %regmap_reg_in_range.exit.thread.i16.i.i ], [ %i.af, %bb.h ] ; 3 uses
  %i.ag = load i32, ptr %.079.i11.i.i, align 4
  %.not.i.i12.i.i = icmp ult i32 %1, %i.ag
  br i1 %.not.i.i12.i.i, label %regmap_reg_in_range.exit.thread.i16.i.i, label %regmap_reg_in_range.exit.i13.i.i

regmap_reg_in_range.exit.i13.i.i:                 ; preds = %.lr.ph.i9.i.i
  %i.ah = getelementptr i8, ptr %.079.i11.i.i, i64 4
  %i.ai = load i32, ptr %i.ah, align 4
  %.not.i14.i.i = icmp ugt i32 %1, %i.ai
  br i1 %.not.i14.i.i, label %regmap_reg_in_range.exit.thread.i16.i.i, label %regmap_readable_noinc.exit.thread

regmap_reg_in_range.exit.thread.i16.i.i:          ; preds = %regmap_reg_in_range.exit.i13.i.i, %.lr.ph.i9.i.i
  %i.aj = add nuw i32 %.010.i10.i.i, 1            ; 2 uses
  %i.ak = getelementptr i8, ptr %.079.i11.i.i, i64 8
  %exitcond.not.i17.i.i = icmp eq i32 %i.aj, %i.ae
end_hunk_1
