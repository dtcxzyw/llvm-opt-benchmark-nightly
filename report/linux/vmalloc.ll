Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/vmalloc?download=true
inline.NumInlined: 671
inline.NumDeleted: 273
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@pcpu_get_vm_areas:bb.a
__rb_change_child.exit364:                        ; preds = %bb.ay, %bb.az, %bb.ba
  %.not85.i.i285 = icmp eq ptr %.0.i.i284, null
  br i1 %.not85.i.i285, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %__rb_change_child.exit364
  %i.iy = ptrtoint ptr %.073.i.i282 to i64
  %i.iz = add i64 %i.iy, 1
  store i64 %i.iz, ptr %.0.i.i284, align 8
  br label %bb.bd

bb.bc:                                            ; preds = %__rb_change_child.exit364
  %i.ja = load i64, ptr %.1.i.i283, align 8
  %i.jb = and i64 %i.ja, 1
  %.not86.i.i293 = icmp eq i64 %i.jb, 0
  %i.jc = select i1 %.not86.i.i293, ptr null, ptr %.073.i.i282
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.172.i.i286 = phi ptr [ null, %bb.bb ], [ %i.jc, %bb.bc ]
  store i64 %i.ir, ptr %.1.i.i283, align 8
  br label %__rb_erase_augmented.exit.i287

__rb_erase_augmented.exit.i287:                   ; preds = %bb.ao, %bb.an, %bb.bd, %bb.aj, %bb.ai
  %.175.i.i288 = phi ptr [ %.1.i.i283, %bb.bd ], [ %i.gn, %bb.ai ], [ %i.gn, %bb.aj ], [ %i.gv, %bb.an ], [ %i.gv, %bb.ao ] ; 2 uses
  %.2.i.i289 = phi ptr [ %.172.i.i286, %bb.bd ], [ null, %bb.ai ], [ %i.gt, %bb.aj ], [ null, %bb.an ], [ null, %bb.ao ] ; 2 uses
  %.not11.i365 = icmp eq ptr %.175.i.i288, null
  br i1 %.not11.i365, label %free_vmap_area_rb_augment_cb_propagate.exit375, label %.lr.ph.i366

.lr.ph.i366:                                      ; preds = %__rb_erase_augmented.exit.i287, %bb.bi
  %.0712.i367 = phi ptr [ %i.jv, %bb.bi ], [ %.175.i.i288, %__rb_erase_augmented.exit.i287 ] ; 6 uses
  %i.jd = getelementptr i8, ptr %.0712.i367, i64 -16
  %i.je = getelementptr i8, ptr %.0712.i367, i64 -8
  %i.jf = load i64, ptr %i.je, align 8
  %i.jg = load i64, ptr %i.jd, align 8
  %i.jh = sub i64 %i.jf, %i.jg                    ; 2 uses
  %i.ji = getelementptr i8, ptr %.0712.i367, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8            ; 2 uses
  %.not.i.i368 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i368, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i366
  %i.jk = getelementptr i8, ptr %i.jj, i64 40
  %i.jl = load i64, ptr %i.jk, align 8
  %spec.select.i.i369 = tail call i64 @llvm.umax.i64(i64 %i.jl, i64 %i.jh)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.lr.ph.i366
  %.020.i.i370 = phi i64 [ %i.jh, %.lr.ph.i366 ], [ %spec.select.i.i369, %bb.be ] ; 2 uses
  %i.jm = getelementptr i8, ptr %.0712.i367, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8            ; 2 uses
  %.not26.i.i371 = icmp eq ptr %i.jn, null
  br i1 %.not26.i.i371, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jo = getelementptr i8, ptr %i.jn, i64 40
  %i.jp = load i64, ptr %i.jo, align 8
  %spec.select27.i.i372 = tail call i64 @llvm.umax.i64(i64 %i.jp, i64 %.020.i.i370)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.1.i.i373 = phi i64 [ %.020.i.i370, %bb.bf ], [ %spec.select27.i.i372, %bb.bg ] ; 2 uses
  %i.jq = getelementptr i8, ptr %.0712.i367, i64 40 ; 2 uses
  %i.jr = load i64, ptr %i.jq, align 8
  %i.js = icmp eq i64 %i.jr, %.1.i.i373
  br i1 %i.js, label %free_vmap_area_rb_augment_cb_propagate.exit375, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i64 %.1.i.i373, ptr %i.jq, align 8
  %i.jt = load i64, ptr %.0712.i367, align 8
  %i.ju = and i64 %i.jt, -4                       ; 2 uses
  %i.jv = inttoptr i64 %i.ju to ptr
  %.not.i374 = icmp eq i64 %i.ju, 0
  br i1 %.not.i374, label %free_vmap_area_rb_augment_cb_propagate.exit375, label %.lr.ph.i366

free_vmap_area_rb_augment_cb_propagate.exit375:   ; preds = %bb.bh, %bb.bi, %__rb_erase_augmented.exit.i287
  %.not.i.i290 = icmp eq ptr %.2.i.i289, null
  br i1 %.not.i.i290, label %bb.bp, label %bb.bj

bb.bj:                                            ; preds = %free_vmap_area_rb_augment_cb_propagate.exit375
  tail call void @__rb_erase_color(ptr noundef nonnull %.2.i.i289, ptr noundef nonnull @free_vmap_area_root, ptr noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #23
  br label %bb.bp

bb.bk:                                            ; preds = %classify_va_fit_type.exit
  %i.jw = add i64 %i.fv, %i.fo
  store i64 %i.jw, ptr %.2.i350, align 8
  br label %.thread

bb.bl:                                            ; preds = %classify_va_fit_type.exit
  store i64 %i.fm, ptr %i.fy, align 8
  br label %.thread

bb.bm:                                            ; preds = %classify_va_fit_type.exit
  %i.jx = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) @ne_fit_preload_node) #25, !srcloc !79 ; 2 uses
  %i.jy = inttoptr i64 %i.jx to ptr
  tail call void asm "movq $1, %gs:$0", "=*m,re,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) @ne_fit_preload_node, i64 0) #24, !srcloc !80
  %.not.i = icmp eq i64 %i.jx, 0
  br i1 %.not.i, label %bb.bn, label %bb.bo, !prof !23

bb.bn:                                            ; preds = %bb.bm
  %i.jz = load ptr, ptr @vmap_area_cachep, align 8
  %i.ka = tail call noalias align 8 ptr @kmem_cache_alloc_noprof(ptr noundef %i.jz, i32 noundef 10240) #23 ; 2 uses
  %.not46.i = icmp eq ptr %i.ka, null
  br i1 %.not46.i, label %va_clip.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.043.i = phi ptr [ %i.ka, %bb.bn ], [ %i.jy, %bb.bm ] ; 3 uses
  %i.kb = load i64, ptr %.2.i350, align 8
  store i64 %i.kb, ptr %.043.i, align 8
  %i.kc = getelementptr i8, ptr %.043.i, i64 8
  store i64 %i.fm, ptr %i.kc, align 8
  store i64 %i.fx, ptr %.2.i350, align 8
  br label %.thread

bb.bp:                                            ; preds = %free_vmap_area_rb_augment_cb_propagate.exit375, %bb.bj, %free_vmap_area_rb_augment_cb_propagate.exit375.thread
  %i.kd = getelementptr i8, ptr %.2.i350, i64 40  ; 4 uses
  %i.ke = getelementptr i8, ptr %.2.i350, i64 48  ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8            ; 2 uses
  %i.kg = load ptr, ptr %i.kd, align 8            ; 2 uses
  %i.kh = getelementptr i8, ptr %i.kg, i64 8
  store ptr %i.kf, ptr %i.kh, align 8
  store volatile ptr %i.kg, ptr %i.kf, align 8
  store volatile ptr %i.kd, ptr %i.kd, align 8
  store volatile ptr %i.kd, ptr %i.ke, align 8
  store i64 %i.gf, ptr %i.gd, align 8
  %i.ki = load ptr, ptr @vmap_area_cachep, align 8
  tail call void @kmem_cache_free(ptr noundef %i.ki, ptr noundef nonnull %.2.i350) #23
  %.not47.i = and i1 %i.gb, %i.gc
  br i1 %.not47.i, label %bb.bx, label %.thread

.thread:                                          ; preds = %bb.bk, %bb.bl, %bb.bo, %bb.bp
  %.1.i452 = phi ptr [ null, %bb.bp ], [ %.043.i, %bb.bo ], [ null, %bb.bl ], [ null, %bb.bk ] ; 2 uses
  %i.kj = getelementptr i8, ptr %.2.i350, i64 16  ; 3 uses
  %.not11.i376 = icmp eq ptr %i.kj, null
  br i1 %.not11.i376, label %free_vmap_area_rb_augment_cb_propagate.exit386, label %.lr.ph.i377

.lr.ph.i377:                                      ; preds = %.thread, %bb.bu
  %.0712.i378 = phi ptr [ %i.lc, %bb.bu ], [ %i.kj, %.thread ] ; 6 uses
  %i.kk = getelementptr i8, ptr %.0712.i378, i64 -16
  %i.kl = getelementptr i8, ptr %.0712.i378, i64 -8
  %i.km = load i64, ptr %i.kl, align 8
  %i.kn = load i64, ptr %i.kk, align 8
  %i.ko = sub i64 %i.km, %i.kn                    ; 2 uses
  %i.kp = getelementptr i8, ptr %.0712.i378, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8            ; 2 uses
  %.not.i.i379 = icmp eq ptr %i.kq, null
  br i1 %.not.i.i379, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i377
  %i.kr = getelementptr i8, ptr %i.kq, i64 40
  %i.ks = load i64, ptr %i.kr, align 8
  %spec.select.i.i380 = tail call i64 @llvm.umax.i64(i64 %i.ks, i64 %i.ko)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.lr.ph.i377
  %.020.i.i381 = phi i64 [ %i.ko, %.lr.ph.i377 ], [ %spec.select.i.i380, %bb.bq ] ; 2 uses
  %i.kt = getelementptr i8, ptr %.0712.i378, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8            ; 2 uses
  %.not26.i.i382 = icmp eq ptr %i.ku, null
  br i1 %.not26.i.i382, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kv = getelementptr i8, ptr %i.ku, i64 40
  %i.kw = load i64, ptr %i.kv, align 8
  %spec.select27.i.i383 = tail call i64 @llvm.umax.i64(i64 %i.kw, i64 %.020.i.i381)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.1.i.i384 = phi i64 [ %.020.i.i381, %bb.br ], [ %spec.select27.i.i383, %bb.bs ] ; 2 uses
  %i.kx = getelementptr i8, ptr %.0712.i378, i64 40 ; 2 uses
  %i.ky = load i64, ptr %i.kx, align 8
  %i.kz = icmp eq i64 %i.ky, %.1.i.i384
  br i1 %i.kz, label %free_vmap_area_rb_augment_cb_propagate.exit386, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store i64 %.1.i.i384, ptr %i.kx, align 8
  %i.la = load i64, ptr %.0712.i378, align 8
  %i.lb = and i64 %i.la, -4                       ; 2 uses
  %i.lc = inttoptr i64 %i.lb to ptr
  %.not.i385 = icmp eq i64 %i.lb, 0
  br i1 %.not.i385, label %free_vmap_area_rb_augment_cb_propagate.exit386, label %.lr.ph.i377

free_vmap_area_rb_augment_cb_propagate.exit386:   ; preds = %bb.bt, %bb.bu, %.thread
  %.not48.i = icmp eq ptr %.1.i452, null
  br i1 %.not48.i, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %free_vmap_area_rb_augment_cb_propagate.exit386
  tail call fastcc void @insert_vmap_area_augment(ptr noundef nonnull %.1.i452, ptr noundef %i.kj) #26
  br label %bb.bx

default.unreachable696:                           ; preds = %classify_va_fit_type.exit
  unreachable

va_clip.exit:                                     ; preds = %.critedge259, %bb.ab, %bb.bn
  tail call void asm sideeffect "951: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 951b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 951) #24, !srcloc !315
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.1, i32 5090, i32 2307, i64 16) #24, !srcloc !316
  tail call void asm sideeffect "952: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 952b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 952) #24, !srcloc !317
  br label %bb.bw

bb.bw:                                            ; preds = %va_clip.exit, %pvm_find_va_enclose_addr.exit355.thread
  %.not248585 = icmp eq i64 %indvars.iv624, 0
  br i1 %.not248585, label %.loopexit539, label %.lr.ph587.preheader

.lr.ph587.preheader:                              ; preds = %bb.bw
  %4 = trunc i64 %indvars.iv624 to i32
  br label %.lr.ph587

bb.bx:                                            ; preds = %.thread453, %bb.bp, %bb.bv, %free_vmap_area_rb_augment_cb_propagate.exit386
  %i.ld = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv624
  %i.le = load ptr, ptr %i.ld, align 8            ; 2 uses
  store i64 %i.fm, ptr %i.le, align 8
  %i.lf = getelementptr i8, ptr %i.le, i64 8
  store i64 %i.fx, ptr %i.lf, align 8
  %indvars.iv.next625 = add nuw nsw i64 %indvars.iv624, 1 ; 2 uses
  %exitcond628.not = icmp eq i64 %indvars.iv.next625, %wide.trip.count627
  br i1 %exitcond628.not, label %.preheader540._crit_edge, label %.lr.ph582, !llvm.loop !295

.preheader540._crit_edge:                         ; preds = %bb.bx
  tail call void @_raw_spin_unlock(ptr noundef nonnull @free_vmap_area_lock) #23
  %wide.trip.count637 = zext nneg i32 %2 to i64
  br label %.lr.ph592

.lr.ph592:                                        ; preds = %.preheader540._crit_edge, %.lr.ph592
  %indvars.iv634 = phi i64 [ 0, %.preheader540._crit_edge ], [ %indvars.iv.next635, %.lr.ph592 ] ; 3 uses
  %i.lg = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv634 ; 3 uses
  %i.lh = load ptr, ptr %i.lg, align 8
  %i.li = load i64, ptr %i.lh, align 8            ; 2 uses
  %i.lj = load ptr, ptr @vmap_nodes, align 8
  %.b.i.i = load i1, ptr @vmap_zone_size, align 4
  %i.lk = lshr i64 %i.li, 16
  %i.ll = select i1 %.b.i.i, i64 %i.lk, i64 %i.li
  %i.lm = load i32, ptr @nr_vmap_nodes, align 4
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = urem i64 %i.ll, %i.ln
  %i.lp = getelementptr [6272 x i8], ptr %i.lj, i64 %i.lo ; 3 uses
  %i.lq = getelementptr i8, ptr %i.lp, i64 6152
  %i.lr = getelementptr i8, ptr %i.lp, i64 6176   ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.lr) #23
  %i.ls = load ptr, ptr %i.lg, align 8
  %i.lt = getelementptr i8, ptr %i.lp, i64 6160
  tail call fastcc void @insert_vmap_area(ptr noundef %i.ls, ptr noundef %i.lq, ptr noundef %i.lt) #26, !srcloc !318
  %i.lu = getelementptr [8 x i8], ptr %i.bn, i64 %indvars.iv634
  %i.lv = load ptr, ptr %i.lu, align 8            ; 6 uses
  %i.lw = load ptr, ptr %i.lg, align 8            ; 4 uses
  %i.lx = getelementptr i8, ptr %i.lv, i64 24
  store i64 2, ptr %i.lx, align 8
  %i.ly = load i64, ptr %i.lw, align 8
  %i.lz = inttoptr i64 %i.ly to ptr
  %i.ma = getelementptr i8, ptr %i.lv, i64 8
  store ptr %i.lz, ptr %i.ma, align 8
  %i.mb = getelementptr i8, ptr %i.lw, i64 8
  %i.mc = load i64, ptr %i.mb, align 8
  %i.md = load i64, ptr %i.lw, align 8
  %i.me = sub i64 %i.mc, %i.md                    ; 2 uses
  %i.mf = getelementptr i8, ptr %i.lv, i64 64
  store i64 %i.me, ptr %i.mf, align 8
  %i.mg = getelementptr i8, ptr %i.lv, i64 16
  store i64 %i.me, ptr %i.mg, align 8
  %i.mh = getelementptr i8, ptr %i.lv, i64 56
  store ptr @pcpu_get_vm_areas, ptr %i.mh, align 8
  %i.mi = getelementptr i8, ptr %i.lw, i64 56
  store ptr %i.lv, ptr %i.mi, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i.lr) #23
  %indvars.iv.next635 = add nuw nsw i64 %indvars.iv634, 1 ; 2 uses
  %exitcond638.not = icmp eq i64 %indvars.iv.next635, %wide.trip.count637
  br i1 %exitcond638.not, label %._crit_edge593, label %.lr.ph592, !llvm.loop !296

._crit_edge593:                                   ; preds = %.lr.ph592, %.preheader540._crit_edge.thread
  tail call void @kfree(ptr noundef nonnull %i.bo) #23
  br label %bb.ee

.lr.ph587:                                        ; preds = %.lr.ph587.preheader, %merge_or_add_vmap_area_augment.exit.thread
  %.in = phi i32 [ %5, %merge_or_add_vmap_area_augment.exit.thread ], [ %4, %.lr.ph587.preheader ]
  %5 = add i32 %.in, -1                           ; 3 uses
  %6 = sext i32 %5 to i64
  %i.mj = getelementptr [8 x i8], ptr %i.bo, i64 %6 ; 2 uses
  %i.mk = load ptr, ptr %i.mj, align 8            ; 9 uses
  %i.ml = getelementptr i8, ptr %i.mk, i64 8      ; 2 uses
  %i.mm = load ptr, ptr @free_vmap_area_root, align 8 ; 2 uses
  %.not38.i = icmp eq ptr %i.mm, null
  br i1 %.not38.i, label %__link_va.exit, label %.preheader535, !prof !23

.preheader535:                                    ; preds = %.lr.ph587
  %i.mn = load i64, ptr %i.ml, align 8            ; 2 uses
  br label %bb.by

bb.by:                                            ; preds = %.preheader535, %bb.ca
  %i.mo = phi ptr [ %i.nc, %bb.ca ], [ %i.mm, %.preheader535 ] ; 10 uses
  %i.mp = getelementptr i8, ptr %i.mo, i64 -16
  %i.mq = load i64, ptr %i.mp, align 8
  %.not39.i = icmp ugt i64 %i.mn, %i.mq           ; 3 uses
  br i1 %.not39.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.mr = load i64, ptr %i.mk, align 8
  %i.ms = getelementptr i8, ptr %i.mo, i64 -8
  %i.mt = load i64, ptr %i.ms, align 8
  %.not40.i = icmp ult i64 %i.mr, %i.mt
  br i1 %.not40.i, label %find_va_links.exit.thread, label %bb.ca

find_va_links.exit.thread:                        ; preds = %bb.bz
  %i.mu = getelementptr i8, ptr %i.mo, i64 -16
  %i.mv = getelementptr i8, ptr %i.mo, i64 -8
  %i.mw = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.41, ptr nonnull @.str.1, i32 1212, i32 2321, i64 16) #24, !srcloc !60
  %i.mx = load i64, ptr %i.mk, align 8
  %i.my = load i64, ptr %i.ml, align 8
  %i.mz = load i64, ptr %i.mu, align 8
  %i.na = load i64, ptr %i.mv, align 8
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.mw, i64 noundef %i.mx, i64 noundef %i.my, i64 noundef %i.mz, i64 noundef %i.na) #23
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !61
  br label %merge_or_add_vmap_area_augment.exit.thread

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.sink = phi i64 [ 16, %bb.by ], [ 8, %bb.bz ]  ; 2 uses
  %i.nb = getelementptr i8, ptr %i.mo, i64 %.sink
  %i.nc = load ptr, ptr %i.nb, align 8            ; 2 uses
  %.not41.i = icmp eq ptr %i.nc, null
  br i1 %.not41.i, label %find_va_links.exit, label %bb.by, !llvm.loop !3

find_va_links.exit:                               ; preds = %bb.ca
  %i.nd = getelementptr i8, ptr %i.mo, i64 %.sink ; 3 uses
  %.not.i266 = icmp eq ptr %i.nd, null
  br i1 %.not.i266, label %merge_or_add_vmap_area_augment.exit.thread, label %bb.cb

bb.cb:                                            ; preds = %find_va_links.exit
  %i.ne = getelementptr i8, ptr %i.mo, i64 24     ; 3 uses
  br i1 %.not39.i, label %bb.cc, label %get_va_next_sibling.exit

bb.cc:                                            ; preds = %bb.cb
  %i.nf = load ptr, ptr %i.ne, align 8
  br label %get_va_next_sibling.exit

get_va_next_sibling.exit:                         ; preds = %bb.cb, %bb.cc
  %.0.i272 = phi ptr [ %i.ne, %bb.cb ], [ %i.nf, %bb.cc ] ; 4 uses
  %i.ng = icmp eq ptr %.0.i272, null
  br i1 %i.ng, label %.thread505, label %bb.cd, !prof !39

bb.cd:                                            ; preds = %get_va_next_sibling.exit
  %.not44.i = icmp eq ptr %.0.i272, @free_vmap_area_list
  br i1 %.not44.i, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.nh = getelementptr i8, ptr %.0.i272, i64 -40 ; 3 uses
  %i.ni = load i64, ptr %i.nh, align 8
  %i.nj = icmp eq i64 %i.ni, %i.mn
  br i1 %i.nj, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.nk = load i64, ptr %i.mk, align 8
  store i64 %i.nk, ptr %i.nh, align 8
  %i.nl = load ptr, ptr @vmap_area_cachep, align 8
  tail call void @kmem_cache_free(ptr noundef %i.nl, ptr noundef %i.mk) #23
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd
  %.039.i = phi i1 [ true, %bb.cf ], [ false, %bb.ce ], [ false, %bb.cd ] ; 2 uses
  %.038.i = phi ptr [ %i.nh, %bb.cf ], [ %i.mk, %bb.ce ], [ %i.mk, %bb.cd ] ; 12 uses
  %i.nm = getelementptr i8, ptr %.0.i272, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8            ; 3 uses
  %.not45.i = icmp eq ptr %i.nn, @free_vmap_area_list
  br i1 %.not45.i, label %bb.ds, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.no = getelementptr i8, ptr %i.nn, i64 -40
  %i.np = getelementptr i8, ptr %i.nn, i64 -32    ; 2 uses
  %i.nq = load i64, ptr %i.np, align 8
  %i.nr = load i64, ptr %.038.i, align 8
  %i.ns = icmp eq i64 %i.nq, %i.nr
  br i1 %i.ns, label %bb.ci, label %bb.ds

bb.ci:                                            ; preds = %bb.ch
  br i1 %.039.i, label %bb.cj, label %.thread499

bb.cj:                                            ; preds = %bb.ci
  %i.nt = getelementptr i8, ptr %.038.i, i64 16   ; 7 uses
  %i.nu = load i64, ptr %i.nt, align 8            ; 6 uses
  %i.nv = ptrtoint ptr %i.nt to i64               ; 2 uses
  %i.nw = icmp eq i64 %i.nu, %i.nv
  br i1 %i.nw, label %bb.ck, label %.critedge.i.i, !prof !23

bb.ck:                                            ; preds = %bb.cj
  tail call void asm sideeffect "792: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 792b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 792) #24, !srcloc !53
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.1, i32 1299, i32 2305, i64 16) #24, !srcloc !54
  tail call void asm sideeffect "793: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 793b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 793) #24, !srcloc !55
  br label %.thread499

.critedge.i.i:                                    ; preds = %bb.cj
  %i.nx = getelementptr i8, ptr %.038.i, i64 24
  %i.ny = load ptr, ptr %i.nx, align 8            ; 16 uses
  %i.nz = getelementptr i8, ptr %.038.i, i64 32   ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 8            ; 5 uses
  %.not.i46.i = icmp eq ptr %i.oa, null
  br i1 %.not.i46.i, label %bb.cl, label %bb.cs

bb.cl:                                            ; preds = %.critedge.i.i
  %i.ob = and i64 %i.nu, -4                       ; 2 uses
  %i.oc = inttoptr i64 %i.ob to ptr               ; 5 uses
  %.not.i387 = icmp eq i64 %i.ob, 0
  br i1 %.not.i387, label %bb.cp, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.od = getelementptr i8, ptr %i.oc, i64 16     ; 2 uses
  %i.oe = load ptr, ptr %i.od, align 8
  %i.of = icmp eq ptr %i.oe, %i.nt
  br i1 %i.of, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  store volatile ptr %i.ny, ptr %i.od, align 8
  br label %__rb_change_child.exit388

bb.co:                                            ; preds = %bb.cm
  %i.og = getelementptr i8, ptr %i.oc, i64 8
  store volatile ptr %i.ny, ptr %i.og, align 8
  br label %__rb_change_child.exit388

bb.cp:                                            ; preds = %bb.cl
  store volatile ptr %i.ny, ptr @free_vmap_area_root, align 8
  br label %__rb_change_child.exit388

__rb_change_child.exit388:                        ; preds = %bb.cn, %bb.co, %bb.cp
  %.not80.i.i = icmp eq ptr %i.ny, null
  br i1 %.not80.i.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %__rb_change_child.exit388
  store i64 %i.nu, ptr %i.ny, align 8
  br label %__rb_erase_augmented.exit.i

bb.cr:                                            ; preds = %__rb_change_child.exit388
  %i.oh = and i64 %i.nu, 1
  %.not81.i.i = icmp eq i64 %i.oh, 0
  %i.oi = select i1 %.not81.i.i, ptr null, ptr %i.oc
  br label %__rb_erase_augmented.exit.i

bb.cs:                                            ; preds = %.critedge.i.i
  %.not82.i.i = icmp eq ptr %i.ny, null
  br i1 %.not82.i.i, label %bb.ct, label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  store i64 %i.nu, ptr %i.oa, align 8
  %i.oj = and i64 %i.nu, -4                       ; 2 uses
  %i.ok = inttoptr i64 %i.oj to ptr               ; 4 uses
  %.not.i389 = icmp eq i64 %i.oj, 0
  br i1 %.not.i389, label %free_vmap_area_rb_augment_cb_propagate.exit414.thread, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ol = getelementptr i8, ptr %i.ok, i64 16     ; 2 uses
  %i.om = load ptr, ptr %i.ol, align 8
  %i.on = icmp eq ptr %i.om, %i.nt
  br i1 %i.on, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  store volatile ptr %i.oa, ptr %i.ol, align 8
  br label %__rb_erase_augmented.exit.i

bb.cw:                                            ; preds = %bb.cu
  %i.oo = getelementptr i8, ptr %i.ok, i64 8
  store volatile ptr %i.oa, ptr %i.oo, align 8
  br label %__rb_erase_augmented.exit.i

free_vmap_area_rb_augment_cb_propagate.exit414.thread: ; preds = %bb.ct
  store volatile ptr %i.oa, ptr @free_vmap_area_root, align 8
  br label %rb_erase_augmented.exit.i

bb.cx:                                            ; preds = %bb.cs
  %i.op = getelementptr i8, ptr %i.ny, i64 16
  %i.oq = load ptr, ptr %i.op, align 8            ; 2 uses
  %.not83.i.i = icmp eq ptr %i.oq, null
  br i1 %.not83.i.i, label %bb.cy, label %.preheader534

bb.cy:                                            ; preds = %bb.cx
  %i.or = getelementptr i8, ptr %i.ny, i64 8
  %i.os = load ptr, ptr %i.or, align 8
  %i.ot = getelementptr i8, ptr %.038.i, i64 56
  %i.ou = load i64, ptr %i.ot, align 8
  %i.ov = getelementptr i8, ptr %i.ny, i64 40
  store i64 %i.ou, ptr %i.ov, align 8
end_hunk_0
begin_hunk_1_@pcpu_get_vm_areas:bb.a

bb.di:                                            ; preds = %free_vmap_area_rb_augment_cb_propagate.exit401
  store volatile ptr %.1.i.i, ptr @free_vmap_area_root, align 8
  br label %__rb_change_child.exit403

__rb_change_child.exit403:                        ; preds = %bb.dg, %bb.dh, %bb.di
  %.not85.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not85.i.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %__rb_change_child.exit403
  %i.qn = ptrtoint ptr %.073.i.i to i64
  %i.qo = add i64 %i.qn, 1
  store i64 %i.qo, ptr %.0.i.i, align 8
  br label %bb.dl

bb.dk:                                            ; preds = %__rb_change_child.exit403
  %i.qp = load i64, ptr %.1.i.i, align 8
  %i.qq = and i64 %i.qp, 1
  %.not86.i.i = icmp eq i64 %i.qq, 0
  %i.qr = select i1 %.not86.i.i, ptr null, ptr %.073.i.i
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.172.i.i = phi ptr [ null, %bb.dj ], [ %i.qr, %bb.dk ]
  store i64 %i.qg, ptr %.1.i.i, align 8
  br label %__rb_erase_augmented.exit.i

__rb_erase_augmented.exit.i:                      ; preds = %bb.cw, %bb.cv, %bb.dl, %bb.cr, %bb.cq
  %.175.i.i = phi ptr [ %.1.i.i, %bb.dl ], [ %i.oc, %bb.cq ], [ %i.oc, %bb.cr ], [ %i.ok, %bb.cv ], [ %i.ok, %bb.cw ] ; 2 uses
  %.2.i.i = phi ptr [ %.172.i.i, %bb.dl ], [ null, %bb.cq ], [ %i.oi, %bb.cr ], [ null, %bb.cv ], [ null, %bb.cw ] ; 2 uses
  %.not11.i404 = icmp eq ptr %.175.i.i, null
  br i1 %.not11.i404, label %free_vmap_area_rb_augment_cb_propagate.exit414, label %.lr.ph.i405

.lr.ph.i405:                                      ; preds = %__rb_erase_augmented.exit.i, %bb.dq
  %.0712.i406 = phi ptr [ %i.rk, %bb.dq ], [ %.175.i.i, %__rb_erase_augmented.exit.i ] ; 6 uses
  %i.qs = getelementptr i8, ptr %.0712.i406, i64 -16
  %i.qt = getelementptr i8, ptr %.0712.i406, i64 -8
  %i.qu = load i64, ptr %i.qt, align 8
  %i.qv = load i64, ptr %i.qs, align 8
  %i.qw = sub i64 %i.qu, %i.qv                    ; 2 uses
  %i.qx = getelementptr i8, ptr %.0712.i406, i64 16
  %i.qy = load ptr, ptr %i.qx, align 8            ; 2 uses
  %.not.i.i407 = icmp eq ptr %i.qy, null
  br i1 %.not.i.i407, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph.i405
  %i.qz = getelementptr i8, ptr %i.qy, i64 40
  %i.ra = load i64, ptr %i.qz, align 8
  %spec.select.i.i408 = tail call i64 @llvm.umax.i64(i64 %i.ra, i64 %i.qw)
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %.lr.ph.i405
  %.020.i.i409 = phi i64 [ %i.qw, %.lr.ph.i405 ], [ %spec.select.i.i408, %bb.dm ] ; 2 uses
  %i.rb = getelementptr i8, ptr %.0712.i406, i64 8
  %i.rc = load ptr, ptr %i.rb, align 8            ; 2 uses
  %.not26.i.i410 = icmp eq ptr %i.rc, null
  br i1 %.not26.i.i410, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.rd = getelementptr i8, ptr %i.rc, i64 40
  %i.re = load i64, ptr %i.rd, align 8
  %spec.select27.i.i411 = tail call i64 @llvm.umax.i64(i64 %i.re, i64 %.020.i.i409)
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.1.i.i412 = phi i64 [ %.020.i.i409, %bb.dn ], [ %spec.select27.i.i411, %bb.do ] ; 2 uses
  %i.rf = getelementptr i8, ptr %.0712.i406, i64 40 ; 2 uses
  %i.rg = load i64, ptr %i.rf, align 8
  %i.rh = icmp eq i64 %i.rg, %.1.i.i412
  br i1 %i.rh, label %free_vmap_area_rb_augment_cb_propagate.exit414, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  store i64 %.1.i.i412, ptr %i.rf, align 8
  %i.ri = load i64, ptr %.0712.i406, align 8
  %i.rj = and i64 %i.ri, -4                       ; 2 uses
  %i.rk = inttoptr i64 %i.rj to ptr
  %.not.i413 = icmp eq i64 %i.rj, 0
  br i1 %.not.i413, label %free_vmap_area_rb_augment_cb_propagate.exit414, label %.lr.ph.i405

free_vmap_area_rb_augment_cb_propagate.exit414:   ; preds = %bb.dp, %bb.dq, %__rb_erase_augmented.exit.i
  %.not.i.i = icmp eq ptr %.2.i.i, null
  br i1 %.not.i.i, label %rb_erase_augmented.exit.i, label %bb.dr

bb.dr:                                            ; preds = %free_vmap_area_rb_augment_cb_propagate.exit414
  tail call void @__rb_erase_color(ptr noundef nonnull %.2.i.i, ptr noundef nonnull @free_vmap_area_root, ptr noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #23
  br label %rb_erase_augmented.exit.i

rb_erase_augmented.exit.i:                        ; preds = %free_vmap_area_rb_augment_cb_propagate.exit414.thread, %bb.dr, %free_vmap_area_rb_augment_cb_propagate.exit414
  %i.rl = getelementptr i8, ptr %.038.i, i64 40   ; 4 uses
  %i.rm = getelementptr i8, ptr %.038.i, i64 48   ; 2 uses
  %i.rn = load ptr, ptr %i.rm, align 8            ; 2 uses
  %i.ro = load ptr, ptr %i.rl, align 8            ; 2 uses
  %i.rp = getelementptr i8, ptr %i.ro, i64 8
  store ptr %i.rn, ptr %i.rp, align 8
  store volatile ptr %i.ro, ptr %i.rn, align 8
  store volatile ptr %i.rl, ptr %i.rl, align 8
  store volatile ptr %i.rl, ptr %i.rm, align 8
  store i64 %i.nv, ptr %i.nt, align 8
  br label %.thread499

.thread499:                                       ; preds = %bb.ci, %rb_erase_augmented.exit.i, %bb.ck
  %i.rq = getelementptr i8, ptr %.038.i, i64 8
  %i.rr = load i64, ptr %i.rq, align 8
  store i64 %i.rr, ptr %i.np, align 8
  %i.rs = load ptr, ptr @vmap_area_cachep, align 8
  tail call void @kmem_cache_free(ptr noundef %i.rs, ptr noundef %.038.i) #23
  br label %__merge_or_add_vmap_area.exit

bb.ds:                                            ; preds = %bb.ch, %bb.cg
  br i1 %.039.i, label %__merge_or_add_vmap_area.exit, label %.thread505

.thread505:                                       ; preds = %bb.ds, %get_va_next_sibling.exit
  %.1.i267498510 = phi ptr [ %i.mk, %get_va_next_sibling.exit ], [ %.038.i, %bb.ds ] ; 2 uses
  br i1 %.not39.i, label %__link_va.exit, label %bb.dt

bb.dt:                                            ; preds = %.thread505
  %i.rt = getelementptr i8, ptr %i.mo, i64 32
  %i.ru = load ptr, ptr %i.rt, align 8
  br label %__link_va.exit

__link_va.exit:                                   ; preds = %.lr.ph587, %.thread505, %bb.dt
  %.0.i270467472481495515 = phi ptr [ %i.nd, %bb.dt ], [ %i.nd, %.thread505 ], [ @free_vmap_area_root, %.lr.ph587 ]
  %.0440466473480496513 = phi ptr [ %i.mo, %bb.dt ], [ %i.mo, %.thread505 ], [ null, %.lr.ph587 ]
  %.1.i267498511 = phi ptr [ %.1.i267498510, %bb.dt ], [ %.1.i267498510, %.thread505 ], [ %i.mk, %.lr.ph587 ] ; 6 uses
  %.0.i274 = phi ptr [ %i.ru, %bb.dt ], [ %i.ne, %.thread505 ], [ @free_vmap_area_list, %.lr.ph587 ] ; 3 uses
  %i.rv = getelementptr i8, ptr %.1.i267498511, i64 16 ; 3 uses
  %i.rw = ptrtoint ptr %.0440466473480496513 to i64
  store i64 %i.rw, ptr %i.rv, align 8
  %i.rx = getelementptr i8, ptr %.1.i267498511, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.rx, i8 0, i64 16, i1 false)
  store ptr %i.rv, ptr %.0.i270467472481495515, align 8
  tail call void @__rb_insert_augmented(ptr noundef %i.rv, ptr noundef nonnull @free_vmap_area_root, ptr noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #23
  %i.ry = getelementptr i8, ptr %.1.i267498511, i64 56
  store i64 0, ptr %i.ry, align 8
  %i.rz = getelementptr i8, ptr %.1.i267498511, i64 40 ; 3 uses
  %i.sa = load ptr, ptr %.0.i274, align 8         ; 2 uses
  %i.sb = getelementptr i8, ptr %i.sa, i64 8
  store ptr %i.rz, ptr %i.sb, align 8
  store ptr %i.sa, ptr %i.rz, align 8
  %i.sc = getelementptr i8, ptr %.1.i267498511, i64 48
  store ptr %.0.i274, ptr %i.sc, align 8
  store volatile ptr %i.rz, ptr %.0.i274, align 8
  br label %__merge_or_add_vmap_area.exit

__merge_or_add_vmap_area.exit:                    ; preds = %.thread499, %bb.ds, %__link_va.exit
  %.0.i268 = phi ptr [ %i.no, %.thread499 ], [ %.1.i267498511, %__link_va.exit ], [ %.038.i, %bb.ds ] ; 2 uses
  %.not.i265 = icmp eq ptr %.0.i268, null
  %i.sd = getelementptr i8, ptr %.0.i268, i64 16  ; 2 uses
  %.not11.i415 = icmp eq ptr %i.sd, null
  %or.cond533 = or i1 %.not.i265, %.not11.i415
  br i1 %or.cond533, label %merge_or_add_vmap_area_augment.exit.thread, label %.lr.ph.i416

.lr.ph.i416:                                      ; preds = %__merge_or_add_vmap_area.exit, %bb.dy
  %.0712.i417 = phi ptr [ %i.sw, %bb.dy ], [ %i.sd, %__merge_or_add_vmap_area.exit ] ; 6 uses
  %i.se = getelementptr i8, ptr %.0712.i417, i64 -16
  %i.sf = getelementptr i8, ptr %.0712.i417, i64 -8
  %i.sg = load i64, ptr %i.sf, align 8
  %i.sh = load i64, ptr %i.se, align 8
  %i.si = sub i64 %i.sg, %i.sh                    ; 2 uses
  %i.sj = getelementptr i8, ptr %.0712.i417, i64 16
  %i.sk = load ptr, ptr %i.sj, align 8            ; 2 uses
  %.not.i.i418 = icmp eq ptr %i.sk, null
  br i1 %.not.i.i418, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %.lr.ph.i416
  %i.sl = getelementptr i8, ptr %i.sk, i64 40
  %i.sm = load i64, ptr %i.sl, align 8
  %spec.select.i.i419 = tail call i64 @llvm.umax.i64(i64 %i.sm, i64 %i.si)
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %.lr.ph.i416
  %.020.i.i420 = phi i64 [ %i.si, %.lr.ph.i416 ], [ %spec.select.i.i419, %bb.du ] ; 2 uses
  %i.sn = getelementptr i8, ptr %.0712.i417, i64 8
  %i.so = load ptr, ptr %i.sn, align 8            ; 2 uses
  %.not26.i.i421 = icmp eq ptr %i.so, null
  br i1 %.not26.i.i421, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.sp = getelementptr i8, ptr %i.so, i64 40
  %i.sq = load i64, ptr %i.sp, align 8
  %spec.select27.i.i422 = tail call i64 @llvm.umax.i64(i64 %i.sq, i64 %.020.i.i420)
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.1.i.i423 = phi i64 [ %.020.i.i420, %bb.dv ], [ %spec.select27.i.i422, %bb.dw ] ; 2 uses
  %i.sr = getelementptr i8, ptr %.0712.i417, i64 40 ; 2 uses
  %i.ss = load i64, ptr %i.sr, align 8
  %i.st = icmp eq i64 %i.ss, %.1.i.i423
  br i1 %i.st, label %merge_or_add_vmap_area_augment.exit.thread, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  store i64 %.1.i.i423, ptr %i.sr, align 8
  %i.su = load i64, ptr %.0712.i417, align 8
  %i.sv = and i64 %i.su, -4                       ; 2 uses
  %i.sw = inttoptr i64 %i.sv to ptr
  %.not.i424 = icmp eq i64 %i.sv, 0
  br i1 %.not.i424, label %merge_or_add_vmap_area_augment.exit.thread, label %.lr.ph.i416

merge_or_add_vmap_area_augment.exit.thread:       ; preds = %bb.dy, %bb.dx, %find_va_links.exit.thread, %find_va_links.exit, %__merge_or_add_vmap_area.exit
  store ptr null, ptr %i.mj, align 8
  %.not248 = icmp eq i32 %5, 0
  br i1 %.not248, label %.loopexit539, label %.lr.ph587, !llvm.loop !297

.loopexit539:                                     ; preds = %bb.w, %pvm_find_va_enclose_addr.exit342, %merge_or_add_vmap_area_augment.exit.thread, %.backedge, %pvm_determine_end_from_reverse.exit, %bb.bw
  tail call void @_raw_spin_unlock(ptr noundef nonnull @free_vmap_area_lock) #23
  br i1 %.0235, label %.loopexit538, label %bb.dz

bb.dz:                                            ; preds = %.loopexit539
  tail call fastcc void @reclaim_and_purge_vmap_areas() #26, !srcloc !319
  br i1 %i.l, label %.lr.ph590, label %.loopexit537.backedge

.loopexit537.backedge:                            ; preds = %bb.eb, %bb.dz
  br label %.loopexit537

.lr.ph590:                                        ; preds = %bb.dz, %bb.eb
  %indvars.iv629.a = phi i64 [ %indvars.iv.next630.a, %bb.eb ], [ 0, %bb.dz ] ; 2 uses
  %i.sx = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv629.a ; 2 uses
  %i.sy = load ptr, ptr %i.sx, align 8
  %.not250 = icmp eq ptr %i.sy, null
  br i1 %.not250, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %.lr.ph590
  %i.sz = load ptr, ptr @vmap_area_cachep, align 8
  %i.ta = tail call noalias align 8 ptr @kmem_cache_alloc_noprof(ptr noundef %i.sz, i32 noundef 3520) #23 ; 2 uses
  store ptr %i.ta, ptr %i.sx, align 8
  %.not251 = icmp eq ptr %i.ta, null
  br i1 %.not251, label %.loopexit538, label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %.lr.ph590
  %indvars.iv.next630.a = add nuw nsw i64 %indvars.iv629.a, 1 ; 2 uses
  %exitcond633.not = icmp eq i64 %indvars.iv.next630.a, %wide.trip.count632
  br i1 %exitcond633.not, label %.loopexit537.backedge, label %.lr.ph590, !llvm.loop !298

.loopexit538:                                     ; preds = %.lr.ph566, %.loopexit539, %bb.ea
  br i1 %i.l, label %.lr.ph596.preheader, label %.loopexit

.lr.ph596.preheader:                              ; preds = %.loopexit538
  %wide.trip.count642 = zext nneg i32 %2 to i64
  br label %.lr.ph596

.lr.ph596:                                        ; preds = %.lr.ph596.preheader, %bb.ed
  %indvars.iv639 = phi i64 [ 0, %.lr.ph596.preheader ], [ %indvars.iv.next640, %bb.ed ] ; 3 uses
  %i.tb = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv639
  %i.tc = load ptr, ptr %i.tb, align 8            ; 2 uses
  %.not254 = icmp eq ptr %i.tc, null
  br i1 %.not254, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %.lr.ph596
  %i.td = load ptr, ptr @vmap_area_cachep, align 8
  tail call void @kmem_cache_free(ptr noundef %i.td, ptr noundef nonnull %i.tc) #23
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %.lr.ph596
  %i.te = getelementptr [8 x i8], ptr %i.bn, i64 %indvars.iv639
  %i.tf = load ptr, ptr %i.te, align 8
  tail call void @kfree(ptr noundef %i.tf) #23
  %indvars.iv.next640 = add nuw nsw i64 %indvars.iv639, 1 ; 2 uses
  %exitcond643.not = icmp eq i64 %indvars.iv.next640, %wide.trip.count642
  br i1 %exitcond643.not, label %.loopexit, label %.lr.ph596, !llvm.loop !299

.loopexit:                                        ; preds = %bb.ed, %.loopexit538, %_kzalloc_noprof.exit
  tail call void @kfree(ptr noundef %i.bo) #23
  tail call void @kfree(ptr noundef %i.bn) #23
  br label %bb.ee

bb.ee:                                            ; preds = %.loopexit, %._crit_edge593, %bb.h
  %.0 = phi ptr [ null, %bb.h ], [ null, %.loopexit ], [ %i.bn, %._crit_edge593 ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc_noprof(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @insert_vmap_area(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not38.i = icmp eq ptr %i.a, null
  br i1 %.not38.i, label %link_va.exit, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.e = phi ptr [ %i.b, %bb.c ], [ %i.s, %bb.f ] ; 11 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -16
  %i.g = load i64, ptr %i.f, align 8
  %.not39.i = icmp ugt i64 %i.d, %i.g             ; 2 uses
  br i1 %.not39.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = load i64, ptr %0, align 8
  %i.i = getelementptr i8, ptr %i.e, i64 -8
  %i.j = load i64, ptr %i.i, align 8
  %.not40.i = icmp ult i64 %i.h, %i.j
  br i1 %.not40.i, label %find_va_links.exit.thread, label %bb.f

find_va_links.exit.thread:                        ; preds = %bb.e
  %i.k = getelementptr i8, ptr %i.e, i64 -16
  %i.l = getelementptr i8, ptr %i.e, i64 -8
  %i.m = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.41, ptr nonnull @.str.1, i32 1212, i32 2321, i64 16) #24, !srcloc !60
  %i.n = load i64, ptr %0, align 8
  %i.o = load i64, ptr %i.c, align 8
  %i.p = load i64, ptr %i.k, align 8
  %i.q = load i64, ptr %i.l, align 8
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.m, i64 noundef %i.n, i64 noundef %i.o, i64 noundef %i.p, i64 noundef %i.q) #23
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !61
  br label %bb.j

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i64 [ 16, %bb.d ], [ 8, %bb.e ]    ; 2 uses
  %i.r = getelementptr i8, ptr %i.e, i64 %.sink
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not41.i = icmp eq ptr %i.s, null
  br i1 %.not41.i, label %find_va_links.exit, label %bb.d, !llvm.loop !3

find_va_links.exit:                               ; preds = %bb.f
  %i.t = getelementptr i8, ptr %i.e, i64 %.sink   ; 4 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %find_va_links.exit
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %link_va.exit, label %bb.h, !prof !39

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr %i.e, i64 24
  br i1 %.not39.i, label %link_va.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr i8, ptr %i.e, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  br label %link_va.exit

link_va.exit:                                     ; preds = %bb.b, %bb.g, %bb.h, %bb.i
  %.01420 = phi ptr [ %i.e, %bb.i ], [ %i.e, %bb.h ], [ null, %bb.g ], [ null, %bb.b ]
  %.0.i1519 = phi ptr [ %i.t, %bb.i ], [ %i.t, %bb.h ], [ %i.t, %bb.g ], [ %1, %bb.b ]
  %.0.i.i = phi ptr [ %i.w, %bb.i ], [ %i.u, %bb.h ], [ %2, %bb.g ], [ %2, %bb.b ] ; 3 uses
  %i.x = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.y = ptrtoint ptr %.01420 to i64
  store i64 %i.y, ptr %i.x, align 8
  %i.z = getelementptr i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr %i.x, ptr %.0.i1519, align 8
  tail call void @rb_insert_color(ptr noundef %i.x, ptr noundef %1) #23
  %i.aa = getelementptr i8, ptr %0, i64 40        ; 3 uses
  %i.ab = load ptr, ptr %.0.i.i, align 8          ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  store ptr %i.aa, ptr %i.ac, align 8
  store ptr %i.ab, ptr %i.aa, align 8
  %i.ad = getelementptr i8, ptr %0, i64 48
  store ptr %.0.i.i, ptr %i.ad, align 8
  store volatile ptr %i.aa, ptr %.0.i.i, align 8
  br label %bb.j

bb.j:                                             ; preds = %find_va_links.exit.thread, %link_va.exit, %find_va_links.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @reclaim_and_purge_vmap_areas() unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %0 = alloca %struct.list_head, align 8          ; 10 uses
  tail call void @mutex_lock(ptr noundef nonnull @vmap_purge_lock) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %purge_fragmented_blocks.exit.i, %bb.a
  %i.b = phi i64 [ 0, %bb.a ], [ %i.aw, %purge_fragmented_blocks.exit.i ]
  %i.c = load i64, ptr @__cpu_possible_mask, align 8
  %i.d = shl nsw i64 -1, %i.b
  %i.e = and i64 %i.c, %i.d                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %purge_fragmented_blocks_allcpus.exit, label %find_next_bit.exit.i

find_next_bit.exit.i:                             ; preds = %bb.b
  %i.f = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.e) #27, !srcloc !49 ; 3 uses
  %i.g = and i64 %i.f, 4294967232
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %purge_fragmented_blocks_allcpus.exit

bb.c:                                             ; preds = %find_next_bit.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  store ptr %0, ptr %0, align 8
  store ptr %0, ptr %i.a, align 8
  %i.i = and i64 %i.f, 63
  %i.j = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.k, ptrtoint (ptr @vmap_block_queue to i64)
  %i.m = inttoptr i64 %i.l to ptr
  call void @__rcu_read_lock() #23
end_hunk_1
