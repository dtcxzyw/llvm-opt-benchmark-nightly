inline.NumInlined: 3274
inline.NumDeleted: 574
begin_hunk_0_@vm_sendish:bb.a

bb.aw:                                            ; preds = %vm_search_method_fastpath.exit.thread.i
  %i.he = call fastcc ptr @callable_method_entry_or_negative(i64 noundef %i.gb, i64 noundef %i.du, ptr noundef null), !inline_history !236 ; 3 uses
  %.not.i.i85.i = icmp eq ptr %i.he, null
  br i1 %.not.i.i85.i, label %select.unfold104.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hf = getelementptr i8, ptr %i.he, i64 16     ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !83 ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not7.i.i.i, label %select.unfold104.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hh = load i8, ptr %i.hg, align 8
  %i.hi = and i8 %i.hh, 15
  %i.hj = icmp eq i8 %i.hi, 7
  br i1 %i.hj, label %select.unfold104.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hk = call i64 @rb_imemo_new(i32 noundef 11, i64 noundef %i.gb, i64 noundef 40, i1 noundef zeroext true) #23, !inline_history !236 ; 5 uses
  %i.hl = inttoptr i64 %i.hk to ptr               ; 8 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 16
  store ptr %i.he, ptr %i.hm, align 8, !tbaa !171
  %i.hn = getelementptr i8, ptr %i.hl, i64 24
  store ptr @vm_call_super_method, ptr %i.hn, align 8, !tbaa !176
  %i.ho = load i64, ptr %i.hl, align 8, !tbaa !11 ; 3 uses
  %i.hp = or i64 %i.ho, 262144
  store i64 %i.hp, ptr %i.hl, align 8, !tbaa !11
  %i.hq = load ptr, ptr %i.hf, align 8, !tbaa !83
  %i.hr = load i8, ptr %i.hq, align 8
  %i.hs = and i8 %i.hr, 14
  %switch.i.i = icmp eq i8 %i.hs, 2
  br i1 %switch.i.i, label %bb.ba, label %vm_cc_new.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.ht = and i64 %i.ho, 1048576
  %.not.i.i.i88.i = icmp eq i64 %i.ht, 0
  br i1 %.not.i.i.i88.i, label %bb.bb, label %vm_cc_attr_index_initialize.exit.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.hu = or i64 %i.ho, 327680
  store i64 %i.hu, ptr %i.hl, align 8, !tbaa !11
  br label %vm_cc_attr_index_initialize.exit.i.i

vm_cc_attr_index_initialize.exit.i.i:             ; preds = %bb.bb, %bb.ba
  %i.hv = getelementptr i8, ptr %i.hl, i64 32
  store i64 4294967295, ptr %i.hv, align 8, !tbaa !11
  br label %vm_cc_new.exit.i

vm_cc_new.exit.i:                                 ; preds = %vm_cc_attr_index_initialize.exit.i.i, %bb.az
  %i.hw = load ptr, ptr %i.gq, align 8, !tbaa !123
  store i64 %i.hk, ptr %i.gt, align 8, !tbaa !11
  %i.hx = icmp eq i64 %i.hk, 0
  %i.hy = and i64 %i.hk, 7
  %i.hz = icmp ne i64 %i.hy, 0
  %i.ia = or i1 %i.hx, %i.hz
  br i1 %i.ia, label %vm_search_super_method.exit, label %bb.bc

bb.bc:                                            ; preds = %vm_cc_new.exit.i
  %i.ib = ptrtoint ptr %i.hw to i64
  call void @rb_gc_writebarrier(i64 noundef %i.ib, i64 noundef %i.hk) #23, !inline_history !236
  br label %vm_search_super_method.exit

select.unfold104.i:                               ; preds = %bb.ay, %bb.ax, %bb.aw
  store ptr @vm_empty_cc_for_super, ptr %i.gt, align 8, !tbaa !182
  br label %vm_search_super_method.exit

bb.bd:                                            ; preds = %vm_search_method_fastpath.exit.thread.i
  %i.ic = getelementptr i8, ptr %.0.i65.val124.i, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !83
  %i.ie = load i8, ptr %i.id, align 8
  %i.if = and i8 %i.ie, 15
  switch i8 %i.if, label %vm_search_super_method.exit [
    i8 11, label %bb.be
    i8 2, label %bb.be
    i8 3, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd, %bb.bd, %bb.bd
  %i.ig = getelementptr i8, ptr %.0.i65125.i, i64 24
  store ptr @vm_call_super_method, ptr %i.ig, align 8, !tbaa !176
  br label %vm_search_super_method.exit

vm_search_super_method.exit:                      ; preds = %bb.ar, %bb.as, %bb.av, %vm_cc_new.exit.i, %bb.bc, %select.unfold104.i, %bb.bd, %bb.be
  %.2.i = phi ptr [ @vm_empty_cc_for_super, %select.unfold104.i ], [ %i.ha, %bb.av ], [ %.0.i65125.i, %bb.be ], [ %.0.i65125.i, %bb.bd ], [ %i.gd, %bb.as ], [ %i.gd, %bb.ar ], [ %i.hl, %vm_cc_new.exit.i ], [ %i.hl, %bb.bc ] ; 2 uses
  store ptr %.2.i, ptr %i.r, align 8, !tbaa !233
  %i.ih = getelementptr i8, ptr %.2.i, i64 24
  %.val25 = load ptr, ptr %i.ih, align 8, !tbaa !234
  %i.ii = call i64 %.val25(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5) #23
  br label %bb.bk

bb.bf:                                            ; preds = %vm_ci_flag.exit
  %i.ij = getelementptr i8, ptr %1, i64 32
  %.val.i31 = load ptr, ptr %i.ij, align 8, !tbaa !15 ; 3 uses
  %.val.i.i = load i64, ptr %.val.i31, align 8, !tbaa !11 ; 2 uses
  %i.ik = and i64 %.val.i.i, 2147418113           ; 2 uses
  switch i64 %i.ik, label %bb.bg [
    i64 1145307137, label %VM_CF_BLOCK_HANDLER.exit.thread.i
    i64 858980353, label %VM_CF_BLOCK_HANDLER.exit.thread.i
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.il = and i64 %.val.i.i, 2
  %.not5.i.i.i.i = icmp eq i64 %i.il, 0
  br i1 %.not5.i.i.i.i, label %.lr.ph.i.i.i.i, label %VM_CF_LEP.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bg, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.io, %.lr.ph.i.i.i.i ], [ %.val.i31, %bb.bg ]
  %i.im = getelementptr i8, ptr %.06.i.i.i.i, i64 -8
  %.0.val3.i.i.i.i = load i64, ptr %i.im, align 8, !tbaa !11
  %i.in = and i64 %.0.val3.i.i.i.i, -4
  %i.io = inttoptr i64 %i.in to ptr               ; 3 uses
  %.0.val.i.i.i.i = load i64, ptr %i.io, align 8, !tbaa !11 ; 2 uses
  %i.ip = and i64 %.0.val.i.i.i.i, 2
  %.not.i.i.i.i33 = icmp eq i64 %i.ip, 0
  br i1 %.not.i.i.i.i33, label %.lr.ph.i.i.i.i, label %VM_CF_LEP.exit.loopexit.i.i, !llvm.loop !13

VM_CF_LEP.exit.loopexit.i.i:                      ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i = and i64 %.0.val.i.i.i.i, 2147418113
  br label %VM_CF_LEP.exit.i.i

VM_CF_LEP.exit.i.i:                               ; preds = %VM_CF_LEP.exit.loopexit.i.i, %bb.bg
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %VM_CF_LEP.exit.loopexit.i.i ], [ %i.ik, %bb.bg ]
  %.0.lcssa.i.i.i.i = phi ptr [ %i.io, %VM_CF_LEP.exit.loopexit.i.i ], [ %.val.i31, %bb.bg ]
  switch i64 %.pre-phi.i.i, label %VM_CF_BLOCK_HANDLER.exit.i [
    i64 1145307137, label %VM_CF_BLOCK_HANDLER.exit.thread.i
    i64 858980353, label %VM_CF_BLOCK_HANDLER.exit.thread.i
  ]

VM_CF_BLOCK_HANDLER.exit.i:                       ; preds = %VM_CF_LEP.exit.i.i
  %i.iq = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 -8
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !11 ; 6 uses
  %i.is = icmp eq i64 %i.ir, 0
  br i1 %i.is, label %VM_CF_BLOCK_HANDLER.exit.thread.i, label %bb.bh

VM_CF_BLOCK_HANDLER.exit.thread.i:                ; preds = %VM_CF_BLOCK_HANDLER.exit.i, %VM_CF_LEP.exit.i.i, %VM_CF_LEP.exit.i.i, %bb.bf, %bb.bf
  tail call void @rb_vm_localjump_error(ptr noundef nonnull @.str.183, i64 noundef 4, i32 noundef 0) #58, !inline_history !259
  unreachable

bb.bh:                                            ; preds = %VM_CF_BLOCK_HANDLER.exit.i
  %i.it = and i64 %i.ir, 3
  switch i64 %i.it, label %bb.bi [
    i64 1, label %vm_block_handler_type.exit.thread8.i.i
    i64 3, label %vm_invokeblock_i.exit
  ]

vm_block_handler_type.exit.thread8.i.i:           ; preds = %bb.bh
  br label %vm_invokeblock_i.exit

bb.bi:                                            ; preds = %bb.bh
  %i.iu = and i64 %i.ir, 255
  %i.iv = icmp eq i64 %i.iu, 12
  br i1 %i.iv, label %vm_block_handler_type.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.iw = and i64 %i.ir, 7
  %.not.i32 = icmp eq i64 %i.iw, 0
  br i1 %.not.i32, label %RB_SYMBOL_P.exit.i.i.i, label %vm_invokeblock_i.exit

RB_SYMBOL_P.exit.i.i.i:                           ; preds = %bb.bj
  %i.ix = inttoptr i64 %i.ir to ptr
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !77
  %.fr10.i.i.i = freeze i64 %i.iy
  %i.iz = and i64 %.fr10.i.i.i, 31
  %i.ja = icmp eq i64 %i.iz, 20
  br i1 %i.ja, label %vm_block_handler_type.exit.i.i, label %vm_invokeblock_i.exit

vm_block_handler_type.exit.i.i:                   ; preds = %RB_SYMBOL_P.exit.i.i.i, %bb.bi
  br label %vm_invokeblock_i.exit

vm_invokeblock_i.exit:                            ; preds = %bb.bh, %vm_block_handler_type.exit.thread8.i.i, %bb.bj, %RB_SYMBOL_P.exit.i.i.i, %vm_block_handler_type.exit.i.i
  %.0.i7.i = phi ptr [ @vm_invoke_symbol_block, %vm_block_handler_type.exit.i.i ], [ @vm_invoke_iseq_block, %vm_block_handler_type.exit.thread8.i.i ], [ @vm_invoke_ifunc_block, %bb.bh ], [ @vm_invoke_proc_block, %bb.bj ], [ @vm_invoke_proc_block, %RB_SYMBOL_P.exit.i.i.i ]
  %i.jb = call i64 %.0.i7.i(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef %i.c, i1 noundef zeroext false, i64 noundef %i.ir) #23, !callees !260, !inline_history !261
  br label %bb.bk

default.unreachable54:                            ; preds = %vm_ci_flag.exit
  unreachable

bb.bk:                                            ; preds = %vm_invokeblock_i.exit, %vm_search_super_method.exit, %vm_search_method_fastpath.exit
  %.0 = phi i64 [ %i.jb, %vm_invokeblock_i.exit ], [ %i.ba, %vm_search_method_fastpath.exit ], [ %i.ii, %vm_search_super_method.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_exec(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %struct.rb_vm_tag, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 6 uses
  store i32 0, ptr %i.b, align 8, !tbaa !68
  store i64 36, ptr %1, align 8, !tbaa !262
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !263
  %i.f = getelementptr i8, ptr %0, i64 48
  %.0.1.val.a = load ptr, ptr %i.f, align 8, !tbaa !30 ; 3 uses
  %.not.i.i = icmp eq ptr %.0.1.val.a, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %2

2:                                                ; preds = %bb.a
  %3 = getelementptr i8, ptr %.0.1.val.a, i64 32
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = getelementptr i8, ptr %.0.1.val.a, i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !264
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %2, %bb.a
  %.0.i2.i = phi ptr [ %4, %2 ], [ null, %bb.a ]  ; 2 uses
  %.0.i7.i = phi ptr [ %6, %2 ], [ null, %bb.a ]
  %7 = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %7, align 8, !tbaa !265
  %8 = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %8, label %bb.b, label %rb_ec_vm_lock_rec.exit

bb.b:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.g = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.h = load i32, ptr %i.g, align 8, !tbaa !266
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.b
  %.0.i = phi i32 [ %i.h, %bb.b ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i32 %.0.i, ptr %i.i, align 4, !tbaa !267
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 4, ptr %i.k, align 8, !tbaa !268
  %i.l = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.l, ptr %i.j, align 8
  %i.m = tail call ptr @llvm.stacksave.p0()
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.m, ptr %i.n, align 8
  %i.o = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.j)
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.ac, !prof !72

bb.c:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %1, ptr %i.c, align 8, !tbaa !67
  %i.p = load i8, ptr @rb_yjit_enabled_p, align 1, !tbaa !269, !range !114, !noundef !64
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70   ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !123  ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !124  ; 4 uses
  %i.x = getelementptr i8, ptr %i.w, i64 304      ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !270  ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.e, label %yjit_compile.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr i8, ptr %i.w, i64 312     ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !271 ; 2 uses
  %i.ac = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !271
  %i.ad = load i64, ptr @yjit_total_entry_hits, align 8, !tbaa !11
  %i.ae = add i64 %i.ad, 1                        ; 3 uses
  store i64 %i.ae, ptr @yjit_total_entry_hits, align 8, !tbaa !11
  %i.af = add i64 %i.ab, 21
  %i.ag = load i64, ptr @rb_yjit_call_threshold, align 8, !tbaa !11 ; 2 uses
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr i8, ptr %i.w, i64 344
  store i64 %i.ae, ptr %i.ai, align 8, !tbaa !272
  %.pr.i.i.i = load i64, ptr @rb_yjit_call_threshold, align 8, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aj = phi i64 [ %.pr.i.i.i, %bb.f ], [ %i.ag, %bb.e ]
  %i.ak = icmp eq i64 %i.ac, %i.aj
  br i1 %i.ak, label %bb.h, label %yjit_compile.exit.i

bb.h:                                             ; preds = %bb.g
  %i.al = icmp ult i64 %i.ac, 20
  br i1 %i.al, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr i8, ptr %i.w, i64 344
  %i.an = load i64, ptr %i.am, align 8, !tbaa !272
  %i.ao = sub i64 %i.ae, %i.an
  %i.ap = load i64, ptr @rb_yjit_cold_threshold, align 8, !tbaa !11
  %.not.i.i.i = icmp ugt i64 %i.ao, %i.ap
  br i1 %.not.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @rb_yjit_incr_counter(ptr noundef nonnull @.str.195) #23
  br label %yjit_compile.exit.i

bb.k:                                             ; preds = %bb.i, %bb.h
  call void @rb_yjit_compile_iseq(ptr noundef nonnull %i.u, ptr noundef nonnull %0, i1 noundef zeroext false) #23
  br label %yjit_compile.exit.i

yjit_compile.exit.i:                              ; preds = %bb.k, %bb.j, %bb.g
  %.pr.i = load ptr, ptr %i.x, align 8, !tbaa !270 ; 2 uses
  %.not18.i = icmp eq ptr %.pr.i, null
  br i1 %.not18.i, label %jit_exec.exit.thread, label %yjit_compile.exit.yjit_compile.exit.thread_crit_edge.i

yjit_compile.exit.yjit_compile.exit.thread_crit_edge.i: ; preds = %yjit_compile.exit.i
  %.pre26.i = load ptr, ptr %i.r, align 8, !tbaa !70
  br label %yjit_compile.exit.thread.i

yjit_compile.exit.thread.i:                       ; preds = %yjit_compile.exit.yjit_compile.exit.thread_crit_edge.i, %bb.d
  %i.aq = phi ptr [ %.pre26.i, %yjit_compile.exit.yjit_compile.exit.thread_crit_edge.i ], [ %i.s, %bb.d ]
  %i.ar = phi ptr [ %.pr.i, %yjit_compile.exit.yjit_compile.exit.thread_crit_edge.i ], [ %i.y, %bb.d ]
  %i.as = call i64 %i.ar(ptr noundef nonnull %0, ptr noundef %i.aq) #23, !inline_history !273
  br label %jit_exec.exit

bb.l:                                             ; preds = %bb.c
  %i.at = load ptr, ptr @rb_zjit_entry, align 8, !tbaa !176 ; 2 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %jit_exec.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %.val.i = load ptr, ptr %i.au, align 8, !tbaa !70 ; 2 uses
  %i.av = getelementptr i8, ptr %.val.i, i64 16
  %.val.val.i = load ptr, ptr %i.av, align 8, !tbaa !123 ; 3 uses
  %i.aw = getelementptr i8, ptr %.val.val.i, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !124 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 304    ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !270 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.n, label %zjit_compile.exit.thread.i

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr i8, ptr %i.ax, i64 312    ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !271
  %i.bd = add i64 %i.bc, 1                        ; 3 uses
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !271
  %i.be = load i64, ptr @rb_zjit_profile_threshold, align 8, !tbaa !11
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @rb_zjit_profile_enable(ptr noundef nonnull %.val.val.i) #23
  %.pre.i.i = load i64, ptr %i.bb, align 8, !tbaa !271
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bg = phi i64 [ %.pre.i.i, %bb.o ], [ %i.bd, %bb.n ]
  %i.bh = load i64, ptr @rb_zjit_call_threshold, align 8, !tbaa !11
  %i.bi = icmp eq i64 %i.bg, %i.bh
  br i1 %i.bi, label %bb.q, label %zjit_compile.exit.i

bb.q:                                             ; preds = %bb.p
  call void @rb_zjit_compile_iseq(ptr noundef nonnull %.val.val.i, i1 noundef zeroext false) #23
  br label %zjit_compile.exit.i

zjit_compile.exit.i:                              ; preds = %bb.q, %bb.p
  %.pr20.i = load ptr, ptr %i.ay, align 8, !tbaa !270 ; 2 uses
  %.not17.i = icmp eq ptr %.pr20.i, null
  br i1 %.not17.i, label %jit_exec.exit.thread, label %zjit_compile.exit.zjit_compile.exit.thread_crit_edge.i

zjit_compile.exit.zjit_compile.exit.thread_crit_edge.i: ; preds = %zjit_compile.exit.i
  %.pre.i = load ptr, ptr %i.au, align 8, !tbaa !70
  br label %zjit_compile.exit.thread.i

zjit_compile.exit.thread.i:                       ; preds = %zjit_compile.exit.zjit_compile.exit.thread_crit_edge.i, %bb.m
  %i.bj = phi ptr [ %.pre.i, %zjit_compile.exit.zjit_compile.exit.thread_crit_edge.i ], [ %.val.i, %bb.m ]
  %i.bk = phi ptr [ %.pr20.i, %zjit_compile.exit.zjit_compile.exit.thread_crit_edge.i ], [ %i.az, %bb.m ]
  %i.bl = call i64 %i.at(ptr noundef nonnull %0, ptr noundef %i.bj, ptr noundef nonnull %i.bk) #23, !inline_history !273
  br label %jit_exec.exit

jit_exec.exit:                                    ; preds = %yjit_compile.exit.thread.i, %zjit_compile.exit.thread.i
  %.3.i = phi i64 [ %i.bl, %zjit_compile.exit.thread.i ], [ %i.as, %yjit_compile.exit.thread.i ] ; 2 uses
  %i.bm = icmp eq i64 %.3.i, 36
  br i1 %i.bm, label %jit_exec.exit.thread, label %bb.r

jit_exec.exit.thread:                             ; preds = %zjit_compile.exit.i, %bb.l, %yjit_compile.exit.i, %jit_exec.exit
  %i.bn = call fastcc i64 @vm_exec_core(ptr noundef nonnull %0)
  br label %bb.r

bb.r:                                             ; preds = %jit_exec.exit.thread, %jit_exec.exit
  %.0 = phi i64 [ %i.bn, %jit_exec.exit.thread ], [ %.3.i, %jit_exec.exit ] ; 2 uses
  %i.bo = load i32, ptr %i.b, align 8, !tbaa !68  ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %vm_exec_loop.exit, label %.lr.ph40

.lr.ph40:                                         ; preds = %bb.r
  %i.bq = getelementptr i8, ptr %0, i64 16        ; 2 uses
  br label %bb.ab

bb.s:                                             ; preds = %bb.ab
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !70
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !123 ; 4 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !124 ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 320    ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !274
  %i.by = icmp eq ptr %i.bx, null
  %i.bz = load ptr, ptr @rb_zjit_entry, align 8
  %i.ca = icmp ne ptr %i.bz, null
  %or.cond.i.i = select i1 %i.by, i1 %i.ca, i1 false
  br i1 %or.cond.i.i, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr i8, ptr %i.bv, i64 328    ; 3 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !275
  %i.cd = add i64 %i.cc, 1                        ; 3 uses
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !275
  %i.ce = load i64, ptr @rb_zjit_profile_threshold, align 8, !tbaa !11
  %i.cf = icmp eq i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @rb_zjit_profile_enable(ptr noundef nonnull %i.bt) #23
  %.pre.i.i23 = load i64, ptr %i.cb, align 8, !tbaa !275
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cg = phi i64 [ %.pre.i.i23, %bb.u ], [ %i.cd, %bb.t ]
  %i.ch = load i64, ptr @rb_zjit_call_threshold, align 8, !tbaa !11
  %i.ci = icmp eq i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.w, label %bb.x

end_hunk_0
begin_hunk_1_@rb_yield_block:bb.a
vm_yield_with_block.exit:                         ; preds = %VM_CF_BLOCK_HANDLER.exit.i.i
  %i.p = icmp eq i64 %4, 4
  %i.q = select i1 %i.p, i64 0, i64 %4
  %i.r = tail call fastcc i64 @invoke_block_from_c_bh(ptr noundef nonnull %.0..0..0..0..0..0..i, i64 noundef %i.n, i32 noundef %2, ptr noundef %3, i32 noundef %i.d, i64 noundef %i.q, ptr noundef null, i32 noundef 0, i32 noundef 0)
  ret i64 %i.r
}

declare i32 @rb_keyword_given_p() local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_iterate(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %rb_iterate_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %3 to ptr
  %i.c = tail call ptr @rb_vm_ifunc_new(ptr noundef nonnull %2, ptr noundef %i.b, i32 noundef 0, i32 noundef -1) #23
  br label %rb_iterate_internal.exit

rb_iterate_internal.exit:                         ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  store volatile ptr %i.f, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = tail call fastcc i64 @rb_iterate0(ptr noundef readonly %0, i64 noundef %1, ptr noundef %i.d, ptr noundef %.0..0..0..0..0..0..0..0..i.i)
  ret i64 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_block_call(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %struct.iter_method_arg, align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 %0, ptr %6, align 8, !tbaa !483
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !485
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %2, ptr %i.c, align 8, !tbaa !486
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %3, ptr %i.d, align 8, !tbaa !487
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 0, ptr %i.e, align 8, !tbaa !488
  %.not.i.i = icmp eq ptr %4, null
  br i1 %.not.i.i, label %rb_block_call_kw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %5 to ptr
  %i.g = tail call ptr @rb_vm_ifunc_new(ptr noundef nonnull %4, ptr noundef %i.f, i32 noundef 0, i32 noundef -1) #23
  br label %rb_block_call_kw.exit

rb_block_call_kw.exit:                            ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  %i.i = ptrtoint ptr %6 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  store volatile ptr %i.k, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = call fastcc i64 @rb_iterate0(ptr noundef nonnull @iterate_method, i64 noundef %i.i, ptr noundef %i.h, ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret i64 %i.l
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_block_call_kw(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %struct.iter_method_arg, align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i64 %0, ptr %7, align 8, !tbaa !483
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !485
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %2, ptr %i.c, align 8, !tbaa !486
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %3, ptr %i.d, align 8, !tbaa !487
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %6, ptr %i.e, align 8, !tbaa !488
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %rb_iterate_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %5 to ptr
  %i.g = tail call ptr @rb_vm_ifunc_new(ptr noundef nonnull %4, ptr noundef %i.f, i32 noundef 0, i32 noundef -1) #23
  br label %rb_iterate_internal.exit

rb_iterate_internal.exit:                         ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  %i.i = ptrtoint ptr %7 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  store volatile ptr %i.k, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = call fastcc i64 @rb_iterate0(ptr noundef nonnull @iterate_method, i64 noundef %i.i, ptr noundef %i.h, ptr noundef %.0..0..0..0..0..0..0..0..i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret i64 %i.l
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iterate_method(i64 noundef %0) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !483
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !485
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !486
  %i.h = getelementptr i8, ptr %i.b, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !487
  %i.j = getelementptr i8, ptr %i.b, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !488
  %.not = icmp eq i32 %i.k, 0
  %i.l = select i1 %.not, i32 1, i32 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28
  store volatile ptr %i.n, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70
  %i.q = getelementptr i8, ptr %i.p, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !74
  %i.s = tail call fastcc i64 @rb_call0(ptr noundef %.0..0..0..0..0..0..0..0..i.i, i64 noundef %i.c, i64 noundef %i.e, i32 noundef %i.g, ptr noundef %i.i, i32 noundef range(i32 0, 5) %i.l, i64 noundef %i.r)
  ret i64 %i.s
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_block_call2(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %struct.iter_method_arg, align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i64 %0, ptr %7, align 8, !tbaa !483
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !485
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %2, ptr %i.c, align 8, !tbaa !486
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %3, ptr %i.d, align 8, !tbaa !487
  %i.e = trunc i64 %6 to i32
  %i.f = and i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %i.f, ptr %i.g, align 8, !tbaa !488
  %i.h = inttoptr i64 %5 to ptr
  %i.i = tail call ptr @rb_vm_ifunc_new(ptr noundef %4, ptr noundef %i.h, i32 noundef 0, i32 noundef -1) #23 ; 3 uses
  %i.j = and i64 %6, 2
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8, !tbaa !489
  %i.l = or i64 %i.k, 65536
  store i64 %i.l, ptr %i.i, align 8, !tbaa !489
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = ptrtoint ptr %7 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28
  store volatile ptr %i.o, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = call fastcc i64 @rb_iterate0(ptr noundef nonnull @iterate_method, i64 noundef %i.m, ptr noundef %i.i, ptr noundef %.0..0..0..0..0..0..i)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret i64 %i.p
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_iterate0(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %4 = alloca %struct.rb_vm_tag, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile i64 4, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %3, i64 16         ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %3, ptr %i.b, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 0, ptr %i.e, align 8, !tbaa !68
  store i64 36, ptr %4, align 8, !tbaa !262
  %i.f = getelementptr i8, ptr %3, i64 24         ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !263
  %i.i = getelementptr i8, ptr %3, i64 48         ; 2 uses
  %.0.8.val.a = load ptr, ptr %i.i, align 8, !tbaa !30 ; 3 uses
  %.not.i.i = icmp eq ptr %.0.8.val.a, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %5

5:                                                ; preds = %bb.a
  %6 = getelementptr i8, ptr %.0.8.val.a, i64 32
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = getelementptr i8, ptr %.0.8.val.a, i64 24
  %9 = load ptr, ptr %8, align 8, !tbaa !264
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %5, %bb.a
  %.0.i2.i = phi ptr [ %7, %5 ], [ null, %bb.a ]  ; 2 uses
  %.0.i7.i = phi ptr [ %9, %5 ], [ null, %bb.a ]
  %10 = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %10, align 8, !tbaa !265
  %11 = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %11, label %bb.b, label %rb_ec_vm_lock_rec.exit

bb.b:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.j = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.k = load i32, ptr %i.j, align 8, !tbaa !266
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.b
  %.0.i = phi i32 [ %i.k, %bb.b ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 68
  store i32 %.0.i, ptr %i.l, align 4, !tbaa !267
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.n, ptr %i.m, align 8
  %i.o = tail call ptr @llvm.stacksave.p0()
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.o, ptr %i.p, align 8
  %i.q = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.m)
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %.thread, label %bb.c, !prof !72

.thread:                                          ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %4, ptr %i.f, align 8, !tbaa !67
  %.not41 = icmp eq ptr %2, null
  br i1 %.not41, label %bb.e, label %bb.d

bb.c:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.9 = load volatile ptr, ptr %i.b, align 8, !tbaa !28
  %i.r = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.9) ; 2 uses
  switch i32 %i.r, label %bb.o [
    i32 2, label %bb.h
    i32 4, label %bb.h
  ]

bb.d:                                             ; preds = %.thread
  %i.s = getelementptr i8, ptr %i.d, i64 24
  %i.t = getelementptr i8, ptr %i.d, i64 40
  store ptr %2, ptr %i.t, align 8, !tbaa !27
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = or i64 %i.u, 3
  br label %VM_CF_BLOCK_HANDLER.exit

bb.e:                                             ; preds = %.thread
  %i.w = getelementptr i8, ptr %i.d, i64 32
  %.val = load ptr, ptr %i.w, align 8, !tbaa !15  ; 3 uses
  %.val.i = load i64, ptr %.val, align 8, !tbaa !11 ; 2 uses
  %i.x = and i64 %.val.i, 2147418113              ; 2 uses
  switch i64 %i.x, label %bb.f [
    i64 1145307137, label %VM_CF_BLOCK_HANDLER.exit
    i64 858980353, label %VM_CF_BLOCK_HANDLER.exit
  ]

bb.f:                                             ; preds = %bb.e
  %i.y = and i64 %.val.i, 2
  %.not5.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not5.i.i.i, label %.lr.ph.i.i.i, label %VM_CF_LEP.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %.val, %bb.f ]
  %i.z = getelementptr i8, ptr %.06.i.i.i, i64 -8
  %.0.val3.i.i.i = load i64, ptr %i.z, align 8, !tbaa !11
  %i.aa = and i64 %.0.val3.i.i.i, -4
  %i.ab = inttoptr i64 %i.aa to ptr               ; 3 uses
  %.0.val.i.i.i = load i64, ptr %i.ab, align 8, !tbaa !11 ; 2 uses
  %i.ac = and i64 %.0.val.i.i.i, 2
  %.not.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %VM_CF_LEP.exit.loopexit.i, !llvm.loop !13

VM_CF_LEP.exit.loopexit.i:                        ; preds = %.lr.ph.i.i.i
  %.pre.i = and i64 %.0.val.i.i.i, 2147418113
  br label %VM_CF_LEP.exit.i

VM_CF_LEP.exit.i:                                 ; preds = %VM_CF_LEP.exit.loopexit.i, %bb.f
  %.pre-phi.i = phi i64 [ %.pre.i, %VM_CF_LEP.exit.loopexit.i ], [ %i.x, %bb.f ]
  %.0.lcssa.i.i.i = phi ptr [ %i.ab, %VM_CF_LEP.exit.loopexit.i ], [ %.val, %bb.f ]
  switch i64 %.pre-phi.i, label %bb.g [
    i64 1145307137, label %VM_CF_BLOCK_HANDLER.exit
    i64 858980353, label %VM_CF_BLOCK_HANDLER.exit
  ]

bb.g:                                             ; preds = %VM_CF_LEP.exit.i
  %i.ad = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 -8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !11
  br label %VM_CF_BLOCK_HANDLER.exit

VM_CF_BLOCK_HANDLER.exit:                         ; preds = %bb.g, %VM_CF_LEP.exit.i, %VM_CF_LEP.exit.i, %bb.e, %bb.e, %bb.d
  %.036 = phi i64 [ %i.v, %bb.d ], [ 0, %bb.e ], [ %i.ae, %bb.g ], [ 0, %VM_CF_LEP.exit.i ], [ 0, %VM_CF_LEP.exit.i ], [ 0, %bb.e ]
  %i.af = getelementptr i8, ptr %3, i64 136
  store i64 %.036, ptr %i.af, align 8, !tbaa !441
  %i.ag = call i64 %0(i64 noundef %1) #23
  store volatile i64 %i.ag, ptr %i.a, align 8, !tbaa !11
  br label %bb.p

bb.h:                                             ; preds = %bb.c, %bb.c
  %i.ah = getelementptr i8, ptr %3, i64 128       ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !66
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 24
  %.val44 = load ptr, ptr %i.ak, align 8, !tbaa !490
  %i.al = icmp eq ptr %i.d, %.val44
  br i1 %i.al, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !70  ; 2 uses
  %.not5.i = icmp eq ptr %i.am, %i.d
  br i1 %.not5.i, label %rb_vm_rewind_cfp.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.an = getelementptr i8, ptr %3, i64 32
  %i.ao = getelementptr i8, ptr %3, i64 36
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.lr.ph.i
  %i.ap = phi ptr [ %i.am, %.lr.ph.i ], [ %i.ay, %bb.n ] ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 32
  %.val.i47 = load ptr, ptr %i.aq, align 8, !tbaa !15
  %.val.val.i = load i64, ptr %.val.i47, align 8, !tbaa !11
  %i.ar = and i64 %.val.val.i, 2147418113
  %.not4.i = icmp eq i64 %i.ar, 1431633921
  br i1 %.not4.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = load atomic volatile i32, ptr %i.an monotonic, align 8
  %i.at = load i32, ptr %i.ao, align 4, !tbaa !71
  %i.au = xor i32 %i.at, -1
  %i.av = and i32 %i.as, %i.au
  %.not.i.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i.i, label %rb_vm_pop_frame.exit.i, label %bb.l, !prof !72

bb.l:                                             ; preds = %bb.k
  %.val.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.aw = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i.i, i32 noundef 0) #23 ; 0 uses
  br label %rb_vm_pop_frame.exit.i

rb_vm_pop_frame.exit.i:                           ; preds = %bb.l, %bb.k
  %i.ax = getelementptr i8, ptr %i.ap, i64 56     ; 2 uses
  store ptr %i.ax, ptr %i.c, align 8, !tbaa !70
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  call void @rb_vm_pop_cfunc_frame()
  %.pre.i48 = load ptr, ptr %i.c, align 8, !tbaa !70
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %rb_vm_pop_frame.exit.i
  %i.ay = phi ptr [ %.pre.i48, %bb.m ], [ %i.ax, %rb_vm_pop_frame.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %i.ay, %i.d
  br i1 %.not.i, label %rb_vm_rewind_cfp.exit, label %bb.j, !llvm.loop !491

rb_vm_rewind_cfp.exit:                            ; preds = %bb.n, %bb.i
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.ba = getelementptr i8, ptr %i.az, i64 64
  store i32 0, ptr %i.ba, align 8, !tbaa !68
  store i64 4, ptr %i.ah, align 8, !tbaa !66
  %i.bb = getelementptr i8, ptr %i.aj, i64 16
  %.val45 = load i64, ptr %i.bb, align 8, !tbaa !492
  store volatile i64 %.val45, ptr %i.a, align 8, !tbaa !11
  %.0..0..0..0.1151.pre = load ptr, ptr %i.b, align 8, !tbaa !28
  br label %bb.p

bb.o:                                             ; preds = %bb.h, %bb.c
  %i.bc = load ptr, ptr %i.h, align 8, !tbaa !263
  %.0..0..0..0.11 = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.bd = getelementptr i8, ptr %.0..0..0..0.11, i64 24
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val43 = load ptr, ptr %i.f, align 8, !tbaa !67 ; 2 uses
  %i.be = getelementptr i8, ptr %.val43, i64 64
  store i32 %i.r, ptr %i.be, align 8, !tbaa !68
  %i.bf = getelementptr i8, ptr %.val43, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.bf)
  unreachable

bb.p:                                             ; preds = %VM_CF_BLOCK_HANDLER.exit, %rb_vm_rewind_cfp.exit
  %.0..0..0.1151 = phi ptr [ %3, %VM_CF_BLOCK_HANDLER.exit ], [ %.0..0..0..0.1151.pre, %rb_vm_rewind_cfp.exit ]
  %i.bg = load ptr, ptr %i.h, align 8, !tbaa !263
  %i.bh = getelementptr i8, ptr %.0..0..0.1151, i64 24
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.0..0..0..0.16 = load volatile i64, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %.0..0..0..0.16
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_lambda_call(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i64 noundef %7) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %struct.iter_method_arg, align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.59) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 %0, ptr %8, align 8, !tbaa !483
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %1, ptr %i.c, align 8, !tbaa !485
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %2, ptr %i.d, align 8, !tbaa !486
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %3, ptr %i.e, align 8, !tbaa !487
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 32
end_hunk_1
begin_hunk_2_@rb_eval_string_wrap:bb.a

bb.c:                                             ; preds = %bb.a
  %.not17 = icmp eq i32 %i.s, 0
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr i8, ptr %.val.i, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !506
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %.val = load ptr, ptr %i.v, align 8, !tbaa !67  ; 2 uses
  %i.w = getelementptr i8, ptr %.val, i64 64
  store i32 %i.s, ptr %i.w, align 8, !tbaa !68
  %i.x = getelementptr i8, ptr %.val, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.x)
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret i64 %i.r
}

declare i64 @rb_module_new() local_unnamed_addr #4

declare i64 @rb_obj_clone(i64 noundef) local_unnamed_addr #4

declare void @rb_extend_object(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @eval_string_wrap_protect(i64 noundef %0) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.e = tail call i64 @rb_imemo_new(i32 noundef 1, i64 noundef 4, i64 noundef 40, i1 noundef zeroext true) #23 ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 8 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  store i64 %i.d, ptr %i.g, align 8, !tbaa !25
  %i.h = getelementptr i8, ptr %i.f, i64 24
  store ptr null, ptr %i.h, align 8, !tbaa !20
  %i.i = getelementptr i8, ptr %i.f, i64 32
  store i8 2, ptr %i.i, align 8, !tbaa !27
  %i.j = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i.i = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.k = getelementptr i8, ptr %.val.i.i, i64 240
  %i.l = load i64, ptr %i.k, align 8, !tbaa !41   ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %rb_vm_cref_new_toplevel.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ult i64 %i.e, 2
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.f, i64 8
  %.val28.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !26 ; 2 uses
  %i.o = icmp eq i64 %.val28.i.i.i.i, 4
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.f, align 8, !tbaa !24
  %i.q = or i64 %i.p, 262144
  store i64 %i.q, ptr %i.f, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.not26.i.i.i.i = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ true, %bb.b ]
  %.0.i.i.i.i = phi i64 [ 4, %bb.c ], [ %.val28.i.i.i.i, %bb.d ], [ 4, %bb.b ]
  %i.r = tail call i64 @rb_imemo_new(i32 noundef 1, i64 noundef %.0.i.i.i.i, i64 noundef 40, i1 noundef zeroext true) #23
  %i.s = inttoptr i64 %i.r to ptr                 ; 7 uses
  %i.t = getelementptr i8, ptr %i.s, i64 16
  store i64 %i.l, ptr %i.t, align 8, !tbaa !25
  %i.u = getelementptr i8, ptr %i.s, i64 24
  store ptr %i.f, ptr %i.u, align 8, !tbaa !20
  %i.v = getelementptr i8, ptr %i.s, i64 32
  store i8 2, ptr %i.v, align 8, !tbaa !27
  br i1 %.not26.i.i.i.i, label %rb_vm_cref_new_toplevel.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.s, align 8, !tbaa !24
  %i.x = or i64 %i.w, 262144
  store i64 %i.x, ptr %i.s, align 8, !tbaa !24
  br label %rb_vm_cref_new_toplevel.exit

rb_vm_cref_new_toplevel.exit:                     ; preds = %bb.a, %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.f, %bb.a ], [ %i.s, %bb.e ], [ %i.s, %bb.f ] ; 2 uses
  %i.y = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !507
  %i.ab = getelementptr i8, ptr %.0.i.i, i64 16
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !25
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !508
  %i.ad = getelementptr i8, ptr %i.y, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !504
  %i.af = tail call i64 @rb_str_new_cstr(ptr noundef %i.ae) #23
  %i.ag = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.61, i64 noundef 4) #23
  %i.ah = tail call fastcc i64 @eval_string_with_cref(i64 noundef %i.ac, i64 noundef %i.af, ptr noundef nonnull %.0.i.i, i64 noundef %i.ag, i32 noundef 1)
  ret i64 %i.ah
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_eval_cmd_kw(i64 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !11
  %i.c = icmp eq i64 %1, 0
  %i.d = and i64 %1, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %bb.b, !prof !353

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %1 to ptr                   ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !77   ; 3 uses
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 7
  br i1 %i.j, label %Check_Type.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, !prof !354

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.b, %bb.a
  tail call void @rb_unexpected_type(i64 noundef %1, i32 noundef 7) #57
  unreachable

Check_Type.exit:                                  ; preds = %bb.b
  %i.k = and i64 %i.h, 8192
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %rb_array_len.exit.i, label %rb_array_len.exit.i.thread

rb_array_len.exit.i:                              ; preds = %Check_Type.exit
  %i.l = getelementptr i8, ptr %i.g, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27   ; 3 uses
  %i.n = add i64 %i.m, 2147483648
  %.not.i1.i = icmp ult i64 %i.n, 4294967296
  br i1 %.not.i1.i, label %bb.d, label %bb.c

rb_array_len.exit.i.thread:                       ; preds = %Check_Type.exit
  %i.o = trunc i64 %i.h to i32
  %i.p = lshr i32 %i.o, 15
  %i.q = and i32 %i.p, 127
  %i.r = getelementptr i8, ptr %i.g, i64 16
  br label %rb_array_const_ptr.exit

bb.c:                                             ; preds = %rb_array_len.exit.i
  tail call void @rb_out_of_int(i64 noundef %i.m) #57
  unreachable

bb.d:                                             ; preds = %rb_array_len.exit.i
  %i.s = trunc nsw i64 %i.m to i32
  %i.t = getelementptr i8, ptr %i.g, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27
  br label %rb_array_const_ptr.exit

rb_array_const_ptr.exit:                          ; preds = %rb_array_len.exit.i.thread, %bb.d
  %i.v = phi i32 [ %i.q, %rb_array_len.exit.i.thread ], [ %i.s, %bb.d ]
  %.0.i = phi ptr [ %i.r, %rb_array_len.exit.i.thread ], [ %i.u, %bb.d ]
  %i.w = tail call i64 @rb_eval_cmd_call_kw(i64 noundef %0, i32 noundef %i.v, ptr noundef %.0.i, i32 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.a, ptr %i.b, align 8, !tbaa !75
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #23, !srcloc !509
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.y = load volatile i64, ptr %i.x, align 8, !tbaa !11 ; 0 uses
  ret i64 %i.w
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_eval_cmd_call_kw(i64 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %struct.rb_vm_tag, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store volatile i64 4, ptr %i.c, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  store volatile ptr %i.g, ptr %i.b, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.b, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store volatile ptr %.0..0..0..0..0..0..i, ptr %i.d, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.0..0..0..0.5 = load volatile ptr, ptr %i.d, align 8, !tbaa !28 ; 3 uses
  store ptr %.0..0..0..0.5, ptr %i.e, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 0, ptr %i.h, align 8, !tbaa !68
  store i64 36, ptr %4, align 8, !tbaa !262
  %i.i = getelementptr i8, ptr %.0..0..0..0.5, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !263
  %i.l = getelementptr i8, ptr %.0..0..0..0.5, i64 48
  %.0.1.val.a = load ptr, ptr %i.l, align 8, !tbaa !30 ; 3 uses
  %.not.i.i = icmp eq ptr %.0.1.val.a, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %5

5:                                                ; preds = %bb.a
  %6 = getelementptr i8, ptr %.0.1.val.a, i64 32
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = getelementptr i8, ptr %.0.1.val.a, i64 24
  %9 = load ptr, ptr %8, align 8, !tbaa !264
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %5, %bb.a
  %.0.i2.i = phi ptr [ %7, %5 ], [ null, %bb.a ]  ; 2 uses
  %.0.i7.i = phi ptr [ %9, %5 ], [ null, %bb.a ]
  %10 = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %10, align 8, !tbaa !265
  %11 = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %11, label %bb.b, label %rb_ec_vm_lock_rec.exit

bb.b:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.m = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.n = load i32, ptr %i.m, align 8, !tbaa !266
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.b
  %.0.i16 = phi i32 [ %i.n, %bb.b ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 68
  store i32 %.0.i16, ptr %i.o, align 4, !tbaa !267
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.q, ptr %i.p, align 8
  %i.r = tail call ptr @llvm.stacksave.p0()
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.r, ptr %i.s, align 8
  %i.t = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.p)
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.c, label %bb.e, !prof !72

bb.c:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %4, ptr %i.i, align 8, !tbaa !67
  %i.u = icmp eq i64 %0, 0
  %i.v = and i64 %0, 7
  %i.w = icmp ne i64 %i.v, 0
  %i.x = or i1 %i.u, %i.w
  br i1 %i.x, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.c
  %i.y = inttoptr i64 %0 to ptr
  %i.z = load i64, ptr %i.y, align 8, !tbaa !77
  %i.aa = and i64 %i.z, 31
  %i.ab = icmp eq i64 %i.aa, 5
  br i1 %i.ab, label %bb.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit
  %.not.i = icmp eq i32 %3, 0
  %i.ac = select i1 %.not.i, i32 1, i32 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !28
  store volatile ptr %i.ad, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !70
  %i.ag = getelementptr i8, ptr %i.af, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !74
  %i.ai = call fastcc i64 @rb_call0(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %0, i64 noundef 3473, i32 noundef %1, ptr noundef %2, i32 noundef range(i32 0, 5) %i.ac, i64 noundef %i.ah)
  br label %bb.f

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.aj = call ptr @rb_current_box() #23
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !448
  %i.am = call fastcc i64 @eval_string_with_cref(i64 noundef %i.al, i64 noundef %0, ptr noundef null, i64 noundef 0, i32 noundef 0)
  br label %bb.f

bb.e:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.2 = load volatile ptr, ptr %i.e, align 8, !tbaa !28
  %i.an = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.2)
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !263
  %.0..0..0..0.4 = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.ap = getelementptr i8, ptr %.0..0..0..0.4, i64 24
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.0..0..0..0.6 = load volatile ptr, ptr %i.d, align 8, !tbaa !28
  %i.aq = getelementptr i8, ptr %.0..0..0..0.6, i64 24
  %.0.6.val = load ptr, ptr %i.aq, align 8, !tbaa !67 ; 2 uses
  %i.ar = getelementptr i8, ptr %.0.6.val, i64 64
  store i32 %i.an, ptr %i.ar, align 8, !tbaa !68
  %i.as = getelementptr i8, ptr %.0.6.val, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.as)
  unreachable

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %bb.d
  %.sink = phi i64 [ %i.ai, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %i.am, %bb.d ]
  store volatile i64 %.sink, ptr %i.c, align 8, !tbaa !11
  %i.at = load ptr, ptr %i.k, align 8, !tbaa !263
  store ptr %i.at, ptr %i.i, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.0..0..0..0.7 = load volatile i64, ptr %i.c, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %.0..0..0..0.7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #21

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(ptr) #23

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i32 1, 9) i32 @rb_ec_tag_state(ptr noundef %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 64       ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !68   ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.e = getelementptr i8, ptr %i.b, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !267  ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 48
  %.val.i.a = load ptr, ptr %i.g, align 8, !tbaa !30 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val.i.a, null
  br i1 %.not.i.i.i, label %rb_ec_ractor_ptr.exit.i.i, label %1

1:                                                ; preds = %bb.a
  %2 = getelementptr i8, ptr %.val.i.a, i64 32
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = getelementptr i8, ptr %.val.i.a, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !264
  br label %rb_ec_ractor_ptr.exit.i.i

rb_ec_ractor_ptr.exit.i.i:                        ; preds = %1, %bb.a
  %.0.i2.i.i = phi ptr [ %3, %1 ], [ null, %bb.a ] ; 2 uses
  %.0.i7.i.i = phi ptr [ %5, %1 ], [ null, %bb.a ]
  %6 = getelementptr i8, ptr %.0.i2.i.i, i64 88
  %.val5.i.i = load ptr, ptr %6, align 8, !tbaa !265
  %7 = icmp eq ptr %.val5.i.i, %.0.i7.i.i
  br i1 %7, label %bb.b, label %rb_ec_vm_lock_rec.exit.i

bb.b:                                             ; preds = %rb_ec_ractor_ptr.exit.i.i
  %i.h = getelementptr i8, ptr %.0.i2.i.i, i64 96
  %i.i = load i32, ptr %i.h, align 8, !tbaa !266
  br label %rb_ec_vm_lock_rec.exit.i

rb_ec_vm_lock_rec.exit.i:                         ; preds = %bb.b, %rb_ec_ractor_ptr.exit.i.i
  %.0.i.i = phi i32 [ %i.i, %bb.b ], [ 0, %rb_ec_ractor_ptr.exit.i.i ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i.i, %i.f
  br i1 %.not.i, label %rb_ec_vm_lock_rec_check.exit, label %bb.c

bb.c:                                             ; preds = %rb_ec_vm_lock_rec.exit.i
  tail call void @rb_ec_vm_lock_rec_release(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %.0.i.i) #23
  br label %rb_ec_vm_lock_rec_check.exit

rb_ec_vm_lock_rec_check.exit:                     ; preds = %rb_ec_vm_lock_rec.exit.i, %bb.c
  %i.j = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp ult i32 %i.d, 9
  tail call void @llvm.assume(i1 %i.k)
  ret i32 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_yield_refine_block(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.rb_captured_block, align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.f = getelementptr i8, ptr %i.e, i64 32
  %.val15 = load ptr, ptr %i.f, align 8, !tbaa !15 ; 3 uses
  %.val.i = load i64, ptr %.val15, align 8, !tbaa !11 ; 2 uses
  %i.g = and i64 %.val.i, 2147418113              ; 2 uses
  switch i64 %i.g, label %bb.b [
    i64 1145307137, label %.thread24
    i64 858980353, label %.thread24
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %.val.i, 2
  %.not5.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not5.i.i.i, label %.lr.ph.i.i.i, label %VM_CF_LEP.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %.val15, %bb.b ]
  %i.i = getelementptr i8, ptr %.06.i.i.i, i64 -8
  %.0.val3.i.i.i = load i64, ptr %i.i, align 8, !tbaa !11
  %i.j = and i64 %.0.val3.i.i.i, -4
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  %.0.val.i.i.i = load i64, ptr %i.k, align 8, !tbaa !11 ; 2 uses
  %i.l = and i64 %.0.val.i.i.i, 2
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %VM_CF_LEP.exit.loopexit.i, !llvm.loop !13

VM_CF_LEP.exit.loopexit.i:                        ; preds = %.lr.ph.i.i.i
  %.pre.i = and i64 %.0.val.i.i.i, 2147418113
  br label %VM_CF_LEP.exit.i

VM_CF_LEP.exit.i:                                 ; preds = %VM_CF_LEP.exit.loopexit.i, %bb.b
  %.pre-phi.i = phi i64 [ %.pre.i, %VM_CF_LEP.exit.loopexit.i ], [ %i.g, %bb.b ]
  %.0.lcssa.i.i.i = phi ptr [ %i.k, %VM_CF_LEP.exit.loopexit.i ], [ %.val15, %bb.b ]
  switch i64 %.pre-phi.i, label %VM_CF_BLOCK_HANDLER.exit [
    i64 1145307137, label %.thread24
    i64 858980353, label %.thread24
  ]

VM_CF_BLOCK_HANDLER.exit:                         ; preds = %VM_CF_LEP.exit.i
  %i.m = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 -8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11   ; 2 uses
  %i.o = and i64 %i.n, 3
  %cond = icmp eq i64 %i.o, 1
  br i1 %cond, label %vm_block_handler_type.exit, label %.thread24

.thread24:                                        ; preds = %VM_CF_BLOCK_HANDLER.exit, %VM_CF_LEP.exit.i, %VM_CF_LEP.exit.i, %bb.a, %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.62) #57
  unreachable

vm_block_handler_type.exit:                       ; preds = %VM_CF_BLOCK_HANDLER.exit
  %i.p = and i64 %i.n, -4
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !500
  %i.r = ptrtoint ptr %2 to i64
  %i.s = or disjoint i64 %i.r, 1
  %i.t = getelementptr i8, ptr %i.q, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !210
  %i.v = call fastcc ptr @vm_cref_push(ptr noundef nonnull %.0..0..0..0..0..0..i, i64 noundef %0, ptr noundef %i.u, i32 noundef 1, i32 noundef 0) ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  store i64 %1, ptr %i.w, align 8, !tbaa !11
  %i.x = icmp eq i64 %1, 0
  %i.y = and i64 %1, 7
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = or i1 %i.x, %i.z
  br i1 %i.aa, label %CREF_REFINEMENTS_SET.exit, label %bb.c

bb.c:                                             ; preds = %vm_block_handler_type.exit
  %i.ab = ptrtoint ptr %i.v to i64
  call void @rb_gc_writebarrier(i64 noundef %i.ab, i64 noundef %1) #23
  br label %CREF_REFINEMENTS_SET.exit

CREF_REFINEMENTS_SET.exit:                        ; preds = %vm_block_handler_type.exit, %bb.c
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.ad = getelementptr i8, ptr %i.ac, i64 32
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !15 ; 6 uses
  %.0.val4.i.i = load i64, ptr %.val, align 8, !tbaa !11
  %i.ae = and i64 %.0.val4.i.i, 2
  %.not5.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not5.i.i, label %.lr.ph.i.i, label %VM_CF_LEP.exit

.lr.ph.i.i:                                       ; preds = %CREF_REFINEMENTS_SET.exit, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %.val, %CREF_REFINEMENTS_SET.exit ]
  %i.af = getelementptr i8, ptr %.06.i.i, i64 -8
  %.0.val3.i.i = load i64, ptr %i.af, align 8, !tbaa !11
  %i.ag = and i64 %.0.val3.i.i, -4
  %i.ah = inttoptr i64 %i.ag to ptr               ; 3 uses
  %.0.val.i.i = load i64, ptr %i.ah, align 8, !tbaa !11
  %i.ai = and i64 %.0.val.i.i, 2
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %VM_CF_LEP.exit, !llvm.loop !13

VM_CF_LEP.exit:                                   ; preds = %.lr.ph.i.i, %CREF_REFINEMENTS_SET.exit
  %.0.lcssa.i.i = phi ptr [ %.val, %CREF_REFINEMENTS_SET.exit ], [ %i.ah, %.lr.ph.i.i ]
  %i.aj = getelementptr i8, ptr %.0.lcssa.i.i, i64 -8
  store i64 %i.s, ptr %i.aj, align 8, !tbaa !11
  store i64 %0, ptr %2, align 8, !tbaa !208
  %.val.i.i.i = load i64, ptr %.val, align 8, !tbaa !11 ; 2 uses
  %i.ak = and i64 %.val.i.i.i, 2147418113         ; 2 uses
  switch i64 %i.ak, label %bb.d [
    i64 1145307137, label %VM_CF_BLOCK_HANDLER.exit.thread.i.i
    i64 858980353, label %VM_CF_BLOCK_HANDLER.exit.thread.i.i
  ]

bb.d:                                             ; preds = %VM_CF_LEP.exit
  %i.al = and i64 %.val.i.i.i, 2
  %.not5.i.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not5.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %VM_CF_LEP.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.val, %bb.d ]
  %i.am = getelementptr i8, ptr %.06.i.i.i.i.i, i64 -8
  %.0.val3.i.i.i.i.i = load i64, ptr %i.am, align 8, !tbaa !11
  %i.an = and i64 %.0.val3.i.i.i.i.i, -4
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  %.0.val.i.i.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !11 ; 2 uses
  %i.ap = and i64 %.0.val.i.i.i.i.i, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %VM_CF_LEP.exit.loopexit.i.i.i, !llvm.loop !13

VM_CF_LEP.exit.loopexit.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i = and i64 %.0.val.i.i.i.i.i, 2147418113
  br label %VM_CF_LEP.exit.i.i.i

VM_CF_LEP.exit.i.i.i:                             ; preds = %VM_CF_LEP.exit.loopexit.i.i.i, %bb.d
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %VM_CF_LEP.exit.loopexit.i.i.i ], [ %i.ak, %bb.d ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ao, %VM_CF_LEP.exit.loopexit.i.i.i ], [ %.val, %bb.d ]
  switch i64 %.pre-phi.i.i.i, label %VM_CF_BLOCK_HANDLER.exit.i.i [
    i64 1145307137, label %VM_CF_BLOCK_HANDLER.exit.thread.i.i
    i64 858980353, label %VM_CF_BLOCK_HANDLER.exit.thread.i.i
  ]

VM_CF_BLOCK_HANDLER.exit.i.i:                     ; preds = %VM_CF_LEP.exit.i.i.i
  %i.aq = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 -8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !11 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %VM_CF_BLOCK_HANDLER.exit.thread.i.i, label %vm_yield_with_cref.exit, !prof !110

VM_CF_BLOCK_HANDLER.exit.thread.i.i:              ; preds = %VM_CF_BLOCK_HANDLER.exit.i.i, %VM_CF_LEP.exit.i.i.i, %VM_CF_LEP.exit.i.i.i, %VM_CF_LEP.exit, %VM_CF_LEP.exit
  call void @rb_vm_localjump_error(ptr noundef nonnull @.str.253, i64 noundef 4, i32 noundef 0) #58
  unreachable

vm_yield_with_cref.exit:                          ; preds = %VM_CF_BLOCK_HANDLER.exit.i.i
  %i.at = call fastcc i64 @invoke_block_from_c_bh(ptr noundef nonnull %.0..0..0..0..0..0..i, i64 noundef %i.ar, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %i.v, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i64 %i.at
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @vm_cref_push(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef readonly captures(address_is_null) %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.06.val20.i = load i64, ptr %2, align 8, !tbaa !11
  %i.a = and i64 %.06.val20.i, 2
  %.not21.i = icmp eq i64 %i.a, 0
  br i1 %.not21.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %check_cref.exit.thread.i
  %.0622.i = phi ptr [ %i.q, %check_cref.exit.thread.i ], [ %2, %bb.b ] ; 2 uses
  %i.b = getelementptr i8, ptr %.0622.i, i64 -16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %check_cref.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.e = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !77
  %i.g = trunc i64 %i.f to i32
  %i.h = lshr i32 %i.g, 12
  %i.i = and i32 %i.h, 15
end_hunk_2
begin_hunk_3_@rb_mod_module_exec:bb.a
; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @rb_throw_obj(i64 noundef %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [3 x i64], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 24 ; 2 uses
  %.013 = load ptr, ptr %i.e, align 8, !tbaa !511 ; 2 uses
  %.not14 = icmp eq ptr %.013, null
  br i1 %.not14, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.015 = phi ptr [ %.0, %bb.b ], [ %.013, %bb.a ] ; 3 uses
  %i.f = load i64, ptr %.015, align 8, !tbaa !262
  %i.g = icmp eq i64 %i.f, %0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr i8, ptr %.015, i64 56
  %.0 = load ptr, ptr %i.h, align 8, !tbaa !511   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !512

.critedge:                                        ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %0, ptr %i.b, align 16, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.i, align 8, !tbaa !11
  %i.j = tail call fastcc i64 @rbimpl_str_new_cstr(ptr noundef @.str.63)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.j, ptr %i.k, align 16, !tbaa !11
  %i.l = load i64, ptr @rb_eUncaughtThrow, align 8, !tbaa !11
  %i.m = call i64 @rb_class_new_instance(i32 noundef 3, ptr noundef nonnull %i.b, i64 noundef %i.l) #23
  call void @rb_exc_raise(i64 noundef %i.m) #42
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.n = getelementptr i8, ptr %.015, i64 8
  store i64 %1, ptr %i.n, align 8, !tbaa !268
  %i.o = tail call fastcc ptr @THROW_DATA_NEW(i64 noundef %0, ptr noundef null, i32 noundef 7)
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 128
  store i64 %i.p, ptr %i.q, align 8, !tbaa !66
  %.val = load ptr, ptr %i.e, align 8, !tbaa !67  ; 2 uses
  %i.r = getelementptr i8, ptr %.val, i64 64
  store i32 7, ptr %i.r, align 8, !tbaa !68
  %i.s = getelementptr i8, ptr %.val, i64 16
  tail call void @llvm.eh.sjlj.longjmp(ptr %i.s)
  unreachable
}

declare i64 @rb_class_new_instance(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @THROW_DATA_NEW(i64 noundef %0, ptr noundef %1, i32 noundef range(i32 1, 256) %2) unnamed_addr #11 {
bb.a:
  %i.a = tail call i64 @rb_imemo_new(i32 noundef 3, i64 noundef 0, i64 noundef 40, i1 noundef zeroext false) #23
  %i.b = inttoptr i64 %i.a to ptr                 ; 4 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  store i64 %0, ptr %i.c, align 8, !tbaa !11
  %i.d = getelementptr i8, ptr %i.b, i64 24
  store ptr %1, ptr %i.d, align 8, !tbaa !160
  %i.e = getelementptr i8, ptr %i.b, i64 32
  store i32 %2, ptr %i.e, align 8, !tbaa !161
  ret ptr %i.b
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @rb_throw(ptr noundef %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @rb_sym_intern_ascii_cstr(ptr noundef %0) #23
  tail call void @rb_throw_obj(i64 noundef %i.a, i64 noundef %1) #58
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #24

declare i64 @rb_sym_intern_ascii_cstr(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_catch(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_sym_intern_ascii_cstr(ptr noundef nonnull %0) #23
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.e = tail call i64 @rb_obj_alloc(i64 noundef %i.d) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i64 [ %i.c, %bb.b ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  store volatile ptr %i.h, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = call fastcc i64 @vm_catch_protect(i64 noundef %i.f, ptr noundef readonly %1, i64 noundef %2, ptr noundef nonnull %i.b, ptr noundef %.0..0..0..0..0..0..0..0..i.i)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !7    ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %rb_catch_obj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 24
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !67 ; 2 uses
  %i.l = getelementptr i8, ptr %.val.i, i64 64
  store i32 %i.j, ptr %i.l, align 8, !tbaa !68
  %i.m = getelementptr i8, ptr %.val.i, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.m)
  unreachable

rb_catch_obj.exit:                                ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret i64 %i.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_catch_obj(i64 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = call fastcc i64 @vm_catch_protect(i64 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.b, ptr noundef %.0..0..0..0..0..0..i)
  %i.f = load i32, ptr %i.b, align 4, !tbaa !7    ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 24
  %.val = load ptr, ptr %i.g, align 8, !tbaa !67  ; 2 uses
  %i.h = getelementptr i8, ptr %.val, i64 64
  store i32 %i.f, ptr %i.h, align 8, !tbaa !68
  %i.i = getelementptr i8, ptr %.val, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.i)
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_catch_protect(i64 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = tail call fastcc i64 @vm_catch_protect(i64 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %.0..0..0..0..0..0..i)
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_catch_protect(i64 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %struct.rb_vm_tag, align 8          ; 9 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  store volatile ptr %4, ptr %i.b, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.0..0..0..0.8 = load volatile ptr, ptr %i.b, align 8, !tbaa !28
  %i.e = getelementptr i8, ptr %.0..0..0..0.8, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  store volatile ptr %i.f, ptr %i.c, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.0..0..0..0.9 = load volatile ptr, ptr %i.b, align 8, !tbaa !28 ; 3 uses
  store ptr %.0..0..0..0.9, ptr %i.d, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 0, ptr %i.g, align 8, !tbaa !68
  %i.h = getelementptr i8, ptr %.0..0..0..0.9, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !263
  %i.k = getelementptr i8, ptr %.0..0..0..0.9, i64 48
  %.0.1.val.a = load ptr, ptr %i.k, align 8, !tbaa !30 ; 3 uses
  %.not.i.i = icmp eq ptr %.0.1.val.a, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %6

6:                                                ; preds = %bb.a
  %7 = getelementptr i8, ptr %.0.1.val.a, i64 32
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = getelementptr i8, ptr %.0.1.val.a, i64 24
  %10 = load ptr, ptr %9, align 8, !tbaa !264
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %6, %bb.a
  %.0.i2.i = phi ptr [ %8, %6 ], [ null, %bb.a ]  ; 2 uses
  %.0.i7.i = phi ptr [ %10, %6 ], [ null, %bb.a ]
  %11 = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %11, align 8, !tbaa !265
  %12 = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %12, label %bb.b, label %rb_ec_vm_lock_rec.exit

bb.b:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.l = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.m = load i32, ptr %i.l, align 8, !tbaa !266
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.b
  %.0.i = phi i32 [ %i.m, %bb.b ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 68
  store i32 %.0.i, ptr %i.n, align 4, !tbaa !267
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 %0, ptr %5, align 8, !tbaa !262
  %i.p = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.p, ptr %i.o, align 8
  %i.q = tail call ptr @llvm.stacksave.p0()
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.q, ptr %i.r, align 8
  %i.s = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.o)
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %.thread, label %bb.c, !prof !72

.thread:                                          ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %5, ptr %i.h, align 8, !tbaa !67
  %i.t = call i64 %1(i64 noundef %0, i64 noundef %2, i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef 4) #23
  br label %bb.k

bb.c:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.2 = load volatile ptr, ptr %i.d, align 8, !tbaa !28
  %i.u = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.2) ; 2 uses
  %cond = icmp eq i32 %i.u, 7
  br i1 %cond, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %.0..0..0..0.10 = load volatile ptr, ptr %i.b, align 8, !tbaa !28
  %i.v = getelementptr i8, ptr %.0..0..0..0.10, i64 128
  %i.w = load i64, ptr %i.v, align 8, !tbaa !66
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %.val = load i64, ptr %i.y, align 8, !tbaa !492
  %i.z = icmp eq i64 %.val, %0
  br i1 %i.z, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %.0..0..0..0.11 = load volatile ptr, ptr %i.b, align 8, !tbaa !28 ; 4 uses
  %.0..0..0..0.5 = load volatile ptr, ptr %i.c, align 8, !tbaa !160 ; 2 uses
  %i.aa = getelementptr i8, ptr %.0..0..0..0.11, i64 16 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !70 ; 2 uses
  %.not5.i = icmp eq ptr %i.ab, %.0..0..0..0.5
  br i1 %.not5.i, label %rb_vm_rewind_cfp.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.ac = getelementptr i8, ptr %.0..0..0..0.11, i64 32
  %i.ad = getelementptr i8, ptr %.0..0..0..0.11, i64 36
  %i.ae = getelementptr i8, ptr %.0..0..0..0.11, i64 48
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.i
  %i.af = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.ao, %bb.j ] ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 32
  %.val.i = load ptr, ptr %i.ag, align 8, !tbaa !15
  %.val.val.i = load i64, ptr %.val.i, align 8, !tbaa !11
  %i.ah = and i64 %.val.val.i, 2147418113
  %.not4.i = icmp eq i64 %i.ah, 1431633921
  br i1 %.not4.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = load atomic volatile i32, ptr %i.ac monotonic, align 8
  %i.aj = load i32, ptr %i.ad, align 4, !tbaa !71
  %i.ak = xor i32 %i.aj, -1
  %i.al = and i32 %i.ai, %i.ak
  %.not.i.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i.i, label %rb_vm_pop_frame.exit.i, label %bb.h, !prof !72

bb.h:                                             ; preds = %bb.g
  %.val.i.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !30
  %i.am = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i.i, i32 noundef 0) #23 ; 0 uses
  br label %rb_vm_pop_frame.exit.i

rb_vm_pop_frame.exit.i:                           ; preds = %bb.h, %bb.g
  %i.an = getelementptr i8, ptr %i.af, i64 56     ; 2 uses
  store ptr %i.an, ptr %i.aa, align 8, !tbaa !70
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  call void @rb_vm_pop_cfunc_frame()
  %.pre.i = load ptr, ptr %i.aa, align 8, !tbaa !70
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %rb_vm_pop_frame.exit.i
  %i.ao = phi ptr [ %.pre.i, %bb.i ], [ %i.an, %rb_vm_pop_frame.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %i.ao, %.0..0..0..0.5
  br i1 %.not.i, label %rb_vm_rewind_cfp.exit, label %bb.f, !llvm.loop !491

rb_vm_rewind_cfp.exit:                            ; preds = %bb.j, %bb.e
  %.0..0..0..0.12 = load volatile ptr, ptr %i.b, align 8, !tbaa !28
  %i.ap = getelementptr i8, ptr %.0..0..0..0.12, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !67
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !268
  %.0..0..0..0.13 = load volatile ptr, ptr %i.b, align 8, !tbaa !28
  %i.at = getelementptr i8, ptr %.0..0..0..0.13, i64 128
  store i64 4, ptr %i.at, align 8, !tbaa !66
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.d, %rb_vm_rewind_cfp.exit, %.thread
  %.018 = phi i32 [ 0, %.thread ], [ 0, %rb_vm_rewind_cfp.exit ], [ 7, %bb.d ], [ %i.u, %bb.c ]
  %.0 = phi i64 [ %i.t, %.thread ], [ %i.as, %rb_vm_rewind_cfp.exit ], [ 4, %bb.d ], [ 4, %bb.c ]
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !263
  %.0..0..0..0.4 = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.av = getelementptr i8, ptr %.0..0..0..0.4, i64 24
  store ptr %i.au, ptr %i.av, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not21 = icmp eq ptr %3, null
  br i1 %.not21, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %.018, ptr %3, align 4, !tbaa !7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_current_realfilepath() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 56       ; 2 uses
  %i.g = getelementptr i8, ptr %i.e, i64 88
  %.val13.i = load ptr, ptr %i.g, align 8, !tbaa !15
  %.val13.val.i = load i64, ptr %.val13.i, align 8, !tbaa !11
  %i.h = and i64 %.val13.val.i, 128
  %.not.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.not.i, label %vm_get_ruby_level_caller_cfp.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.val14.i = load ptr, ptr %.0..0..0..0..0..0..i, align 8, !tbaa !121
  %i.i = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 8
  %.val15.i = load i64, ptr %i.i, align 8, !tbaa !122
  %i.j = getelementptr [8 x i8], ptr %.val14.i, i64 %.val15.i
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.preheader.i
  %.pn.i = phi ptr [ %.0.i, %bb.d ], [ %i.f, %.preheader.i ] ; 2 uses
  %.0.i = getelementptr i8, ptr %.pn.i, i64 56    ; 3 uses
  %.not.i = icmp ugt ptr %i.j, %.0.i
  br i1 %.not.i, label %bb.c, label %vm_get_ruby_level_caller_cfp.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %.pn.i, i64 88
  %.0.val.i = load ptr, ptr %i.k, align 8, !tbaa !15
  %.0.val.val.i = load i64, ptr %.0.val.i, align 8, !tbaa !11 ; 2 uses
  %i.l = and i64 %.0.val.val.i, 128
  %.not12.not.i = icmp eq i64 %i.l, 0
  br i1 %.not12.not.i, label %vm_get_ruby_level_caller_cfp.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = and i64 %.0.val.val.i, 2048
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %vm_get_ruby_level_caller_cfp.exit.thread, label %bb.b, !llvm.loop !510

vm_get_ruby_level_caller_cfp.exit:                ; preds = %bb.c, %bb.a
  %.010.i = phi ptr [ %i.f, %bb.a ], [ %.0.i, %bb.c ] ; 2 uses
  %.not = icmp eq ptr %.010.i, null
  br i1 %.not, label %vm_get_ruby_level_caller_cfp.exit.thread, label %bb.e

bb.e:                                             ; preds = %vm_get_ruby_level_caller_cfp.exit
  %i.o = getelementptr i8, ptr %.010.i, i64 16    ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !123
  %i.q = tail call i64 @rb_iseq_realpath(ptr noundef %i.p) #23 ; 2 uses
  %i.r = and i64 %i.q, -5
  %.not23 = icmp eq i64 %i.r, 0
  br i1 %.not23, label %bb.f, label %vm_get_ruby_level_caller_cfp.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !123
  %i.t = tail call i64 @rb_iseq_path(ptr noundef %i.s) #23 ; 4 uses
  %i.u = load i64, ptr @eval_default_path, align 8, !tbaa !11
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %vm_get_ruby_level_caller_cfp.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = inttoptr i64 %i.t to ptr                 ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !513  ; 2 uses
  %i.z = icmp sgt i64 %i.y, 9
  br i1 %i.z, label %bb.h, label %vm_get_ruby_level_caller_cfp.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.aa = load i64, ptr %i.w, align 8, !tbaa !77
  %i.ab = and i64 %i.aa, 8192
  %.not.i20 = icmp eq i64 %i.ab, 0
  %i.ac = getelementptr i8, ptr %i.w, i64 24      ; 2 uses
  br i1 %.not.i20, label %RSTRING_PTR.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !27
  br label %RSTRING_PTR.exit
end_hunk_3
