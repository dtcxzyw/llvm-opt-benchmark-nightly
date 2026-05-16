inline.NumInlined: 3274
inline.NumDeleted: 574
begin_hunk_0_@vm_throw:bb.a
  store i64 %3, ptr %i.fd, align 8, !tbaa !11
  %i.fe = getelementptr i8, ptr %i.fc, i64 24
  store ptr %.6.i, ptr %i.fe, align 8, !tbaa !160
  %i.ff = getelementptr i8, ptr %i.fc, i64 32
  store i32 %.1.i, ptr %i.ff, align 8, !tbaa !161
  br label %bb.an

bb.aj:                                            ; preds = %bb.a
  %i.fg = trunc i64 %3 to i1
  br i1 %i.fg, label %vm_throw_continue.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fh = and i64 %3, 254
  %i.fi = icmp eq i64 %i.fh, 12
  br i1 %i.fi, label %vm_throw_continue.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fj = icmp eq i64 %3, 0
  %i.fk = and i64 %3, 6
  %i.fl = icmp ne i64 %i.fk, 0
  %i.fm = or i1 %i.fj, %i.fl
  br i1 %i.fm, label %vm_throw_continue.exit, label %RB_SYMBOL_P.exit.i

RB_SYMBOL_P.exit.i:                               ; preds = %bb.al
  %i.fn = inttoptr i64 %3 to ptr                  ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !77
  %i.fp = and i64 %i.fo, 31
  switch i64 %i.fp, label %vm_throw_continue.exit.fold.split [
    i64 20, label %vm_throw_continue.exit
    i64 26, label %bb.am
  ]

bb.am:                                            ; preds = %RB_SYMBOL_P.exit.i
  %i.fq = getelementptr i8, ptr %i.fn, i64 32
  %.val.i11 = load i32, ptr %i.fq, align 8, !tbaa !161
  br label %vm_throw_continue.exit

vm_throw_continue.exit.fold.split:                ; preds = %RB_SYMBOL_P.exit.i
  br label %vm_throw_continue.exit

vm_throw_continue.exit:                           ; preds = %RB_SYMBOL_P.exit.i, %vm_throw_continue.exit.fold.split, %bb.aj, %bb.ak, %bb.al, %bb.am
  %.sink.i = phi i32 [ 8, %bb.aj ], [ 7, %RB_SYMBOL_P.exit.i ], [ %.val.i11, %bb.am ], [ 7, %bb.ak ], [ 6, %bb.al ], [ 6, %vm_throw_continue.exit.fold.split ]
  %i.fr = getelementptr i8, ptr %0, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !67
  %i.ft = getelementptr i8, ptr %i.fs, i64 64
  store i32 %.sink.i, ptr %i.ft, align 8, !tbaa !68
  br label %bb.an

bb.an:                                            ; preds = %vm_throw_continue.exit, %vm_throw_start.exit
  %.0 = phi i64 [ %i.fb, %vm_throw_start.exit ], [ %3, %vm_throw_continue.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_vm_search_method_slowpath(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 4 uses
  %.not.i.i.i = trunc i64 %i.c to i1              ; 3 uses
  br i1 %.not.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.c, 32
  br label %vm_ci_mid.exit.i

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !163
  br label %vm_ci_mid.exit.i

vm_ci_mid.exit.i:                                 ; preds = %bb.c, %bb.b
  %.0.i.i = phi i64 [ %i.d, %bb.b ], [ %i.f, %bb.c ] ; 6 uses
  %i.g = tail call fastcc ptr @vm_lookup_cc(i64 noundef %1, ptr noundef %0, i64 noundef %.0.i.i), !inline_history !166 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %vm_search_cc.exit

bb.d:                                             ; preds = %vm_ci_mid.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.h = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i.i21.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i21.i, label %bb.e, label %rb_vm_lock_enter.exit.i

bb.e:                                             ; preds = %bb.d
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #23, !inline_history !166
  %.pre.i = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %i.i = icmp eq ptr %.pre.i, null
  br label %rb_vm_lock_enter.exit.i

rb_vm_lock_enter.exit.i:                          ; preds = %bb.e, %bb.d
  %.not.i.i = phi i1 [ false, %bb.d ], [ %i.i, %bb.e ]
  %i.j = icmp ne i64 %1, 0
  %i.k = and i64 %1, 7
  %i.l = icmp eq i64 %i.k, 0
  %.not5.i.i.i.i.i = and i1 %i.j, %i.l            ; 2 uses
  %i.m = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 24       ; 4 uses
  %i.o = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.q = and i64 %i.c, 537919488
  %or.cond.i.i.i = icmp eq i64 %i.q, 1048576
  %i.r = trunc i64 %i.c to i32                    ; 2 uses
  %i.s = lshr i32 %i.r, 1
  %i.t = and i32 %i.s, 32767                      ; 2 uses
  %i.u = lshr i32 %i.r, 16
  br i1 %.not.i.i, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %rb_vm_lock_enter.exit.i
  %i.v = call fastcc ptr @vm_lookup_cc(i64 noundef %1, ptr noundef %0, i64 noundef %.0.i.i), !inline_history !166 ; 2 uses
  %.not20.i = icmp eq ptr %i.v, null
  br i1 %.not20.i, label %.thread.i, label %vm_populate_cc.exit.i

.thread.i:                                        ; preds = %bb.f, %rb_vm_lock_enter.exit.i
  %i.w = call fastcc ptr @callable_method_entry_or_negative(i64 noundef %1, i64 noundef %.0.i.i, ptr noundef null), !inline_history !167 ; 13 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %vm_populate_cc.exit.i, label %bb.g

bb.g:                                             ; preds = %.thread.i
  %i.x = getelementptr i8, ptr %i.w, i64 16       ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !83   ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not7.i.i.i.i, label %vm_populate_cc.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = and i8 %i.z, 15
  %i.ab = icmp eq i8 %i.aa, 7
  br i1 %i.ab, label %vm_populate_cc.exit.i, label %rb_callable_method_entry.exit.i.i

rb_callable_method_entry.exit.i.i:                ; preds = %bb.h
  br i1 %.not5.i.i.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.i, !prof !168

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.i:      ; preds = %rb_callable_method_entry.exit.i.i
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !77
  %i.ad = and i64 %i.ac, 16384
  %.not10.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not10.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.i, label %RCLASS_EXT_WRITABLE.exit.i.i, !prof !110

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.i, %rb_callable_method_entry.exit.i.i
  %i.ae = call ptr @rb_current_box() #23, !inline_history !167 ; 3 uses
  %.not.i.i22.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i22.i, label %RCLASS_EXT_WRITABLE.exit.i.sink.split.i, label %bb.i

bb.i:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.i
  %i.af = getelementptr i8, ptr %i.ae, i64 128
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !111, !range !114, !noundef !64
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %RCLASS_EXT_WRITABLE.exit.i.sink.split.i, label %RCLASS_EXT_WRITABLE.exit.i.i

RCLASS_EXT_WRITABLE.exit.i.sink.split.i:          ; preds = %bb.i, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.i
  %i.ai = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %1, ptr noundef %i.ae), !inline_history !166
  br label %RCLASS_EXT_WRITABLE.exit.i.i

RCLASS_EXT_WRITABLE.exit.i.i:                     ; preds = %RCLASS_EXT_WRITABLE.exit.i.sink.split.i, %bb.i, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.n, %bb.i ], [ %i.n, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.i ], [ %i.ai, %RCLASS_EXT_WRITABLE.exit.i.sink.split.i ]
  %i.aj = getelementptr i8, ptr %.0.i.i.i, i64 48
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !169 ; 5 uses
  %.not.i23.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i23.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %RCLASS_EXT_WRITABLE.exit.i.i
  %i.al = call i64 @rb_managed_id_table_create(ptr noundef nonnull @cc_table_type, i64 noundef 1) #23, !inline_history !167
  br label %bb.m

bb.k:                                             ; preds = %RCLASS_EXT_WRITABLE.exit.i.i
  %i.am = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i35.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i35.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.an = call i64 @rb_managed_id_table_size(i64 noundef %i.ak) #23, !inline_history !167
  %i.ao = call i64 @rb_managed_id_table_create(ptr noundef nonnull @cc_table_type, i64 noundef %i.an) #23, !inline_history !167 ; 2 uses
  %i.ap = inttoptr i64 %i.ao to ptr
  call void @rb_managed_id_table_foreach(i64 noundef %i.ak, ptr noundef nonnull @vm_cc_table_dup_i, ptr noundef %i.ap) #23, !inline_history !167
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.030.i.i = phi i64 [ %i.ao, %bb.l ], [ %i.ak, %bb.k ], [ %i.al, %bb.j ] ; 10 uses
  %i.aq = load i64, ptr %i.w, align 8, !tbaa !170 ; 2 uses
  %i.ar = and i64 %i.aq, 1048576
  %.not.i36.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i36.i.i, label %bb.n, label %METHOD_ENTRY_CACHED_SET.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.as = or disjoint i64 %i.aq, 1048576
  store i64 %i.as, ptr %i.w, align 8, !tbaa !170
  br label %METHOD_ENTRY_CACHED_SET.exit.i.i

METHOD_ENTRY_CACHED_SET.exit.i.i:                 ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.at = call i32 @rb_managed_id_table_lookup(i64 noundef %.030.i.i, i64 noundef %.0.i.i, ptr noundef nonnull %i.a) #23, !inline_history !167
  %.not33.i.i = icmp eq i32 %i.at, 0
  br i1 %.not33.i.i, label %bb.p, label %bb.o, !prof !72

bb.o:                                             ; preds = %METHOD_ENTRY_CACHED_SET.exit.i.i
  %i.au = load i64, ptr %i.a, align 8, !tbaa !11
  %i.av = inttoptr i64 %i.au to ptr
  br label %vm_ccs_create.exit.i.i

bb.p:                                             ; preds = %METHOD_ENTRY_CACHED_SET.exit.i.i
  %i.aw = call noalias nonnull dereferenceable(48) ptr @ruby_xmalloc(i64 noundef 48) #59, !inline_history !167 ; 6 uses
  store i32 2, ptr %i.aw, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 0, ptr %i.ax, align 4, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.w, ptr %i.ay, align 8, !tbaa !171
  %i.az = load i64, ptr %i.w, align 8, !tbaa !170 ; 2 uses
  %i.ba = and i64 %i.az, 1048576
  %.not.i.i37.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i37.i.i, label %bb.q, label %METHOD_ENTRY_CACHED_SET.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.bb = or disjoint i64 %i.az, 1048576
  store i64 %i.bb, ptr %i.w, align 8, !tbaa !170
  br label %METHOD_ENTRY_CACHED_SET.exit.i.i.i

METHOD_ENTRY_CACHED_SET.exit.i.i.i:               ; preds = %bb.q, %bb.p
  %i.bc = ptrtoint ptr %i.aw to i64
  %i.bd = call i32 @rb_managed_id_table_insert(i64 noundef %.030.i.i, i64 noundef %.0.i.i, i64 noundef %i.bc) #23, !inline_history !167 ; 0 uses
  %i.be = ptrtoint ptr %i.w to i64                ; 2 uses
  %2 = and i64 %i.be, 7
  %.not.i38.i.i = icmp eq i64 %2, 0
  br i1 %.not.i38.i.i, label %3, label %vm_ccs_create.exit.i.i

3:                                                ; preds = %METHOD_ENTRY_CACHED_SET.exit.i.i.i
  call void @rb_gc_writebarrier(i64 noundef %.030.i.i, i64 noundef %i.be) #23, !inline_history !167
  br label %vm_ccs_create.exit.i.i

vm_ccs_create.exit.i.i:                           ; preds = %3, %METHOD_ENTRY_CACHED_SET.exit.i.i.i, %bb.o
  %.029.i.i = phi ptr [ %i.av, %bb.o ], [ %i.aw, %METHOD_ENTRY_CACHED_SET.exit.i.i.i ], [ %i.aw, %3 ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !83  ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 8             ; 2 uses
  %i.bh = and i8 %i.bg, 16
  %.not.i39.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i39.i.i, label %bb.u, label %bb.r, !prof !72

bb.r:                                             ; preds = %vm_ccs_create.exit.i.i
  br i1 %.not.i.i.i, label %vm_ci_flag.exit.i.i.i, label %vm_ci_flag.exit.thread.i.i.i

vm_ci_flag.exit.i.i.i:                            ; preds = %bb.r
  br i1 %or.cond.i.i.i, label %vm_ci_argc.exit.i.i.i, label %bb.u

vm_ci_flag.exit.thread.i.i.i:                     ; preds = %bb.r
  %i.bi = load i64, ptr %i.o, align 8, !tbaa !173
  %i.bj = and i64 %i.bi, 8208
  %or.cond21.i.i.i = icmp eq i64 %i.bj, 16
  br i1 %or.cond21.i.i.i, label %.thread20.i.i.i, label %bb.u

.thread20.i.i.i:                                  ; preds = %vm_ci_flag.exit.thread.i.i.i
  %i.bk = load i64, ptr %i.p, align 8, !tbaa !174
  %i.bl = trunc i64 %i.bk to i32
  br label %vm_ci_argc.exit.i.i.i

vm_ci_argc.exit.i.i.i:                            ; preds = %.thread20.i.i.i, %vm_ci_flag.exit.i.i.i
  %.0.i14.i.i.i = phi i32 [ %i.bl, %.thread20.i.i.i ], [ %i.t, %vm_ci_flag.exit.i.i.i ]
  %i.bm = and i8 %i.bg, 15
  %cond.i.i.i.i = icmp eq i8 %i.bm, 0
  call void @llvm.assume(i1 %cond.i.i.i.i)
  %i.bn = getelementptr i8, ptr %i.bf, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !27
  %i.bp = getelementptr i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !124
  %i.br = getelementptr i8, ptr %i.bq, i64 24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !175
  %i.bt = icmp eq i32 %.0.i14.i.i.i, %i.bs
  br i1 %i.bt, label %bb.s, label %bb.u

bb.s:                                             ; preds = %vm_ci_argc.exit.i.i.i
  %i.bu = call fastcc ptr @get_overloaded_cme(ptr noundef nonnull %i.w), !inline_history !167 ; 4 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !170 ; 2 uses
  %i.bw = and i64 %i.bv, 1048576
  %.not.i.i42.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i42.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bx = or disjoint i64 %i.bv, 1048576
  store i64 %i.bx, ptr %i.bu, align 8, !tbaa !170
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %vm_ci_argc.exit.i.i.i, %vm_ci_flag.exit.thread.i.i.i, %vm_ci_flag.exit.i.i.i, %vm_ccs_create.exit.i.i
  %.0.i41.i.i = phi ptr [ %i.bu, %bb.t ], [ %i.bu, %bb.s ], [ %i.w, %vm_ci_argc.exit.i.i.i ], [ %i.w, %vm_ci_flag.exit.i.i.i ], [ %i.w, %vm_ccs_create.exit.i.i ], [ %i.w, %vm_ci_flag.exit.thread.i.i.i ] ; 2 uses
  %i.by = call i64 @rb_imemo_new(i32 noundef 11, i64 noundef %1, i64 noundef 40, i1 noundef zeroext true) #23, !inline_history !167 ; 4 uses
  %i.bz = inttoptr i64 %i.by to ptr               ; 8 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  store ptr %.0.i41.i.i, ptr %i.ca, align 8, !tbaa !171
  %i.cb = getelementptr i8, ptr %i.bz, i64 24
  store ptr @vm_call_general, ptr %i.cb, align 8, !tbaa !176
  %i.cc = getelementptr i8, ptr %.0.i41.i.i, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !83
  %i.ce = load i8, ptr %i.cd, align 8
  %i.cf = and i8 %i.ce, 14
  %switch.i.i.i = icmp eq i8 %i.cf, 2
  %.pre.i.i = load i64, ptr %i.bz, align 8, !tbaa !77 ; 4 uses
  br i1 %switch.i.i.i, label %bb.v, label %vm_cc_new.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.cg = and i64 %.pre.i.i, 1048576
  %.not.i.i.i44.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i.i44.i.i, label %bb.w, label %vm_cc_attr_index_initialize.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.ch = or i64 %.pre.i.i, 65536                 ; 2 uses
  store i64 %i.ch, ptr %i.bz, align 8, !tbaa !11
  br label %vm_cc_attr_index_initialize.exit.i.i.i

vm_cc_attr_index_initialize.exit.i.i.i:           ; preds = %bb.w, %bb.v
  %i.ci = phi i64 [ %i.ch, %bb.w ], [ %.pre.i.i, %bb.v ]
  %i.cj = getelementptr i8, ptr %i.bz, i64 32
  store i64 4294967295, ptr %i.cj, align 8, !tbaa !11
  br label %vm_cc_new.exit.i.i

vm_cc_new.exit.i.i:                               ; preds = %vm_cc_attr_index_initialize.exit.i.i.i, %bb.u
  %i.ck = phi i64 [ %.pre.i.i, %bb.u ], [ %i.ci, %vm_cc_attr_index_initialize.exit.i.i.i ]
  %i.cl = and i64 %i.ck, 1048576
  %.not.i45.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i45.i.i, label %bb.x, label %vm_ccs_push.exit.i.i

bb.x:                                             ; preds = %vm_cc_new.exit.i.i
  %i.cm = getelementptr i8, ptr %.029.i.i, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !7  ; 3 uses
  %i.co = load i32, ptr %.029.i.i, align 8, !tbaa !7
  %i.cp = icmp eq i32 %i.cn, %i.co
  br i1 %i.cp, label %bb.y, label %bb.z, !prof !177

bb.y:                                             ; preds = %bb.x
  %i.cq = shl i32 %i.cn, 1                        ; 2 uses
  store i32 %i.cq, ptr %.029.i.i, align 8, !tbaa !7
  %i.cr = sext i32 %i.cq to i64
  %i.cs = shl nsw i64 %i.cr, 4
  %i.ct = or disjoint i64 %i.cs, 16
  %i.cu = call nonnull ptr @ruby_xrealloc(ptr noundef nonnull %.029.i.i, i64 noundef %i.ct) #60, !inline_history !167 ; 3 uses
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = call i32 @rb_managed_id_table_insert(i64 noundef %.030.i.i, i64 noundef %.0.i.i, i64 noundef %i.cv) #23, !inline_history !167 ; 0 uses
  %.phi.trans.insert.i.i.i = getelementptr i8, ptr %i.cu, i64 4
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !7
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cx = phi i32 [ %.pre.i.i.i, %bb.y ], [ %i.cn, %bb.x ] ; 2 uses
  %.0.i46.i.i = phi ptr [ %i.cu, %bb.y ], [ %.029.i.i, %bb.x ] ; 2 uses
  %i.cy = getelementptr i8, ptr %.0.i46.i.i, i64 4
  %i.cz = add i32 %i.cx, 1
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !7
  %i.da = getelementptr i8, ptr %.0.i46.i.i, i64 16
  %i.db = sext i32 %i.cx to i64
  %i.dc = getelementptr [16 x i8], ptr %i.da, i64 %i.db ; 3 uses
  br i1 %.not.i.i.i, label %vm_ci_flag.exit.i48.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dd = load i64, ptr %i.p, align 8, !tbaa !174
  %i.de = trunc i64 %i.dd to i32
  %i.df = load i64, ptr %i.o, align 8, !tbaa !173
  %i.dg = trunc i64 %i.df to i32
  br label %vm_ci_flag.exit.i48.i.i

vm_ci_flag.exit.i48.i.i:                          ; preds = %bb.aa, %bb.z
  %.sink.i.i = phi i32 [ %i.de, %bb.aa ], [ %i.t, %bb.z ]
  %.0.i21.i.i.i = phi i32 [ %i.dg, %bb.aa ], [ %i.u, %bb.z ]
  store i32 %.sink.i.i, ptr %i.dc, align 8, !tbaa !178
  %i.dh = getelementptr i8, ptr %i.dc, i64 4
  store i32 %.0.i21.i.i.i, ptr %i.dh, align 4, !tbaa !181
  %i.di = getelementptr i8, ptr %i.dc, i64 8
  store i64 %i.by, ptr %i.di, align 8, !tbaa !11
  %i.dj = and i64 %i.by, 7
  %.not23.i.i.i = icmp eq i64 %i.dj, 0
  br i1 %.not23.i.i.i, label %bb.ab, label %vm_ccs_push.exit.i.i

bb.ab:                                            ; preds = %vm_ci_flag.exit.i48.i.i
  call void @rb_gc_writebarrier(i64 noundef %.030.i.i, i64 noundef %i.by) #23, !inline_history !167
  br label %vm_ccs_push.exit.i.i

vm_ccs_push.exit.i.i:                             ; preds = %bb.ab, %vm_ci_flag.exit.i48.i.i, %vm_cc_new.exit.i.i
  %.not34.i.i = icmp eq i64 %i.ak, %.030.i.i
  br i1 %.not34.i.i, label %vm_populate_cc.exit.i, label %bb.ac

bb.ac:                                            ; preds = %vm_ccs_push.exit.i.i
  br i1 %.not5.i.i.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i55.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i50.i.i, !prof !168

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i55.i.i:    ; preds = %bb.ac
  %i.dk = load i64, ptr %i.m, align 8, !tbaa !77
  %i.dl = and i64 %i.dk, 16384
  %.not10.i56.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not10.i56.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i50.i.i, label %RCLASS_EXT_WRITABLE.exit57.i.i, !prof !110

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i50.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i55.i.i, %bb.ac
  %i.dm = call ptr @rb_current_box() #23, !inline_history !167 ; 3 uses
  %.not.i51.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i51.i.i, label %RCLASS_EXT_WRITABLE.exit57.i.sink.split.i, label %bb.ad

bb.ad:                                            ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i50.i.i
  %i.dn = getelementptr i8, ptr %i.dm, i64 128
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !111, !range !114, !noundef !64
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %RCLASS_EXT_WRITABLE.exit57.i.sink.split.i, label %RCLASS_EXT_WRITABLE.exit57.i.i

RCLASS_EXT_WRITABLE.exit57.i.sink.split.i:        ; preds = %bb.ad, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i50.i.i
  %i.dq = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %1, ptr noundef %i.dm), !inline_history !166
  br label %RCLASS_EXT_WRITABLE.exit57.i.i

RCLASS_EXT_WRITABLE.exit57.i.i:                   ; preds = %RCLASS_EXT_WRITABLE.exit57.i.sink.split.i, %bb.ad, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i55.i.i
  %.0.i52.i.i = phi ptr [ %i.n, %bb.ad ], [ %i.n, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i55.i.i ], [ %i.dq, %RCLASS_EXT_WRITABLE.exit57.i.sink.split.i ]
  %i.dr = getelementptr i8, ptr %.0.i52.i.i, i64 48
  store atomic volatile i64 %.030.i.i, ptr %i.dr seq_cst, align 8
  %i.ds = icmp eq i64 %.030.i.i, 0
  %i.dt = and i64 %.030.i.i, 7
  %i.du = icmp ne i64 %i.dt, 0
  %i.dv = or i1 %i.ds, %i.du
  br i1 %i.dv, label %vm_populate_cc.exit.i, label %bb.ae

bb.ae:                                            ; preds = %RCLASS_EXT_WRITABLE.exit57.i.i
  call void @rb_gc_writebarrier(i64 noundef %1, i64 noundef %.030.i.i) #23, !inline_history !167
  br label %vm_populate_cc.exit.i

vm_populate_cc.exit.i:                            ; preds = %bb.ae, %RCLASS_EXT_WRITABLE.exit57.i.i, %vm_ccs_push.exit.i.i, %bb.h, %bb.g, %.thread.i, %bb.f
  %.2.i = phi ptr [ %i.v, %bb.f ], [ %i.bz, %bb.ae ], [ %i.bz, %vm_ccs_push.exit.i.i ], [ %i.bz, %RCLASS_EXT_WRITABLE.exit57.i.i ], [ @vm_empty_cc, %.thread.i ], [ @vm_empty_cc, %bb.g ], [ @vm_empty_cc, %bb.h ]
  %i.dw = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i.i25.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i25.i, label %bb.af, label %rb_vm_lock_leave.exit.i

bb.af:                                            ; preds = %vm_populate_cc.exit.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.b) #23, !inline_history !166
  br label %rb_vm_lock_leave.exit.i

rb_vm_lock_leave.exit.i:                          ; preds = %bb.af, %vm_populate_cc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %vm_search_cc.exit

vm_search_cc.exit:                                ; preds = %vm_ci_mid.exit.i, %rb_vm_lock_leave.exit.i
  %.016.i = phi ptr [ %.2.i, %rb_vm_lock_leave.exit.i ], [ %i.g, %vm_ci_mid.exit.i ]
end_hunk_0
begin_hunk_1_@rb_vm_exec:bb.a

jit_exec_exception.exit31.thread:                 ; preds = %bb.ak, %jit_compile_exception.exit.i26, %jit_exec_exception.exit31
  %i.ew = call fastcc i64 @vm_exec_core(ptr noundef nonnull %0), !inline_history !277
  br label %bb.am

bb.am:                                            ; preds = %jit_exec_exception.exit31, %jit_exec_exception.exit31.thread
  %.1.i18 = phi i64 [ %i.ew, %jit_exec_exception.exit31.thread ], [ %i.eu, %jit_exec_exception.exit31 ] ; 2 uses
  %i.ex = load i32, ptr %i.b, align 8, !tbaa !68  ; 2 uses
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %vm_exec_loop.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.b, align 8, !tbaa !68
  %i.ez = call fastcc i64 @vm_exec_handle_exception(ptr noundef nonnull %0, i32 noundef %i.ex, i64 noundef %.1.i18), !inline_history !277 ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 36
  br i1 %i.fa, label %bb.ae, label %vm_exec_loop.exit, !llvm.loop !278

vm_exec_loop.exit:                                ; preds = %bb.an, %bb.am, %bb.ac, %bb.ab, %bb.ad, %bb.s
  %.1 = phi i64 [ %i.do, %bb.ad ], [ %.1.i, %bb.ab ], [ %.0, %bb.s ], [ %i.dg, %bb.ac ], [ %i.ez, %bb.an ], [ %.1.i18, %bb.am ]
  %i.fb = load ptr, ptr %i.e, align 8, !tbaa !263
  %.0..0..0..0.4 = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.fc = getelementptr i8, ptr %.0..0..0..0.4, i64 24
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_sendforward(ptr noundef %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.rb_calling_info, align 8    ; 10 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %struct.rb_forwarding_call_data, align 8 ; 7 uses
  %6 = alloca %struct.rb_callinfo, align 8        ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 144        ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !63
  %i.d = and i8 %i.c, 2
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.b, label %stack_check.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @rb_ec_stack_check(ptr noundef nonnull %0) #23
  %.not4.i = icmp eq i32 %i.e, 0
  br i1 %.not4.i, label %stack_check.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.b, align 8, !tbaa !63
  %i.g = or i8 %i.f, 2
  store i8 %i.g, ptr %i.b, align 8, !tbaa !63
  tail call void @rb_ec_stack_overflow(ptr noundef nonnull %0, i32 noundef 0) #58
  unreachable

stack_check.exit:                                 ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  store volatile ptr %i.i, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = call fastcc i64 @vm_caller_setup_fwd_args(ptr noundef %.0..0..0..0..0..0..i, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, ptr noundef %5, ptr noundef %6)
  %i.k = load ptr, ptr %5, align 8, !tbaa !225    ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64                 ; 3 uses
  %.not.i.i.i = trunc i64 %i.l to i1              ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %stack_check.exit
  %i.m = trunc i64 %i.l to i32
  %i.n = lshr i32 %i.m, 1
  %i.o = and i32 %i.n, 32767
  br label %vm_ci_argc.exit.i

bb.e:                                             ; preds = %stack_check.exit
  %i.p = getelementptr i8, ptr %i.k, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !174
  %i.r = trunc i64 %i.q to i32
  br label %vm_ci_argc.exit.i

vm_ci_argc.exit.i:                                ; preds = %bb.e, %bb.d
  %.0.i26.i = phi i32 [ %i.o, %bb.d ], [ %i.r, %bb.e ] ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.u = sext i32 %.0.i26.i to i64
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr [8 x i8], ptr %i.t, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !11   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !226
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.j, ptr %i.aa, align 8, !tbaa !228
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.y, ptr %i.ab, align 8, !tbaa !229
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %.0.i26.i, ptr %i.ac, align 8, !tbaa !230
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 36
  br i1 %.not.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %vm_ci_argc.exit.i
  %i.ae = trunc i64 %i.l to i32
  %i.af = lshr i32 %i.ae, 16
  br label %vm_ci_flag.exit.i

bb.g:                                             ; preds = %vm_ci_argc.exit.i
  %i.ag = getelementptr i8, ptr %i.k, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !173
  %i.ai = trunc i64 %i.ah to i32
  br label %vm_ci_flag.exit.i

vm_ci_flag.exit.i:                                ; preds = %bb.g, %bb.f
  %.0.i28.i = phi i32 [ %i.af, %bb.f ], [ %i.ai, %bb.g ]
  %i.aj = trunc i32 %.0.i28.i to i8
  %i.ak = lshr i8 %i.aj, 6
  %i.al = and i8 %i.ak, 1
  store i8 %i.al, ptr %i.ad, align 4, !tbaa !231
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.am, i8 0, i64 11, i1 false)
  %i.an = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !123
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = icmp eq i64 %i.y, 0
  %i.ar = and i64 %i.y, 7
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = or i1 %i.aq, %i.as
  br i1 %i.at, label %bb.i, label %bb.h

bb.h:                                             ; preds = %vm_ci_flag.exit.i
  %i.au = inttoptr i64 %i.y to ptr
  %i.av = getelementptr i8, ptr %i.au, i64 8
  br label %rb_class_of.exit.i

bb.i:                                             ; preds = %vm_ci_flag.exit.i
  switch i64 %i.y, label %bb.l [
    i64 0, label %rb_class_of.exit.i
    i64 4, label %bb.j
    i64 20, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  br label %rb_class_of.exit.i

bb.k:                                             ; preds = %bb.i
  br label %rb_class_of.exit.i

bb.l:                                             ; preds = %bb.i
  %i.aw = trunc i64 %i.y to i1
  br i1 %i.aw, label %rb_class_of.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = and i64 %i.y, 254
  %i.ay = icmp eq i64 %i.ax, 12
  %spec.select.i.i = select i1 %i.ay, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit.i

rb_class_of.exit.i:                               ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.0.in.i.i = phi ptr [ %i.av, %bb.h ], [ @rb_cNilClass, %bb.j ], [ @rb_cTrueClass, %bb.k ], [ @rb_cFalseClass, %bb.i ], [ @rb_cInteger, %bb.l ], [ %spec.select.i.i, %bb.m ]
  %.0.i29.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !11 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !182 ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %.val24.i = load i64, ptr %i.bb, align 8, !tbaa !185
  %i.bc = icmp eq i64 %.val24.i, %.0.i29.i
  br i1 %i.bc, label %bb.n, label %bb.o, !prof !72

bb.n:                                             ; preds = %rb_class_of.exit.i
  %i.bd = getelementptr i8, ptr %i.ba, i64 16
  %.val.i = load ptr, ptr %i.bd, align 8, !tbaa !187
  %i.be = load i64, ptr %.val.i, align 8, !tbaa !170
  %i.bf = and i64 %i.be, 2097152
  %.not.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i, label %vm_sendish.exit, label %bb.o, !prof !72

bb.o:                                             ; preds = %bb.n, %rb_class_of.exit.i
  %i.bg = call fastcc ptr @vm_search_method_slowpath0(i64 noundef %i.ap, ptr noundef nonnull %5, i64 noundef %.0.i29.i), !inline_history !232
  br label %vm_sendish.exit

vm_sendish.exit:                                  ; preds = %bb.n, %bb.o
  %.0.i.i = phi ptr [ %i.bg, %bb.o ], [ %i.ba, %bb.n ] ; 2 uses
  store ptr %.0.i.i, ptr %i.z, align 8, !tbaa !233
  %i.bh = getelementptr i8, ptr %.0.i.i, i64 24
  %.0.i.val.i = load ptr, ptr %i.bh, align 8, !tbaa !234
  %i.bi = call i64 %.0.i.val.i(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %4) #23, !inline_history !232 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.bj = getelementptr i8, ptr %2, i64 8         ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !182
  %i.bl = load ptr, ptr %i.az, align 8, !tbaa !279 ; 3 uses
  %.not = icmp eq ptr %i.bk, %i.bl
  br i1 %.not, label %rb_obj_write.exit, label %bb.p

bb.p:                                             ; preds = %vm_sendish.exit
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !77
  %i.bn = and i64 %i.bm, 1048576
  %.not15 = icmp eq i64 %i.bn, 0
  br i1 %.not15, label %bb.q, label %rb_obj_write.exit

bb.q:                                             ; preds = %bb.p
  %i.bo = load ptr, ptr %i.an, align 8, !tbaa !123
  %i.bp = ptrtoint ptr %i.bl to i64               ; 3 uses
  store i64 %i.bp, ptr %i.bj, align 8, !tbaa !11
  %7 = and i64 %i.bp, 7
  %.not16 = icmp eq i64 %7, 0
  br i1 %.not16, label %8, label %rb_obj_write.exit

8:                                                ; preds = %bb.q
  %9 = ptrtoint ptr %i.bo to i64
  call void @rb_gc_writebarrier(i64 noundef %9, i64 noundef %i.bp) #23
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %8, %bb.q, %vm_sendish.exit, %bb.p
  %i.bq = icmp eq i64 %i.bi, 36
  br i1 %i.bq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %rb_obj_write.exit
  %i.br = getelementptr i8, ptr %0, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !70
  %i.bt = getelementptr i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !15 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !11
  %i.bw = or i64 %i.bv, 32
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !11
  %i.bx = call i64 @rb_vm_exec(ptr noundef nonnull %0)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %rb_obj_write.exit
  %.0 = phi i64 [ %i.bx, %bb.r ], [ %i.bi, %rb_obj_write.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_caller_setup_fwd_args(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef readonly captures(none) %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4, ptr noundef nonnull writeonly captures(none) %5, ptr noundef nonnull %6) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !225    ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 3 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 4 uses
  %i.g = ptrtoint ptr %i.a to i64                 ; 3 uses
  %.not.i.i = trunc i64 %i.g to i1
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = lshr i32 %i.h, 1
  %i.j = and i32 %i.i, 32767
  %i.k = lshr i32 %i.h, 16
  %i.l = lshr i64 %i.g, 32
  br label %vm_ci_mid.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.a, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !174
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr i8, ptr %i.a, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !173
  %i.r = trunc i64 %i.q to i32
  %i.s = getelementptr i8, ptr %i.a, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !163
  br label %vm_ci_mid.exit

vm_ci_mid.exit:                                   ; preds = %bb.b, %bb.c
  %.0.i4367 = phi i32 [ %i.k, %bb.b ], [ %i.r, %bb.c ] ; 2 uses
  %.0.i6165 = phi i32 [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %.0.i45 = phi i64 [ %i.l, %bb.b ], [ %i.t, %bb.c ]
  %.not.i.i46 = trunc i64 %i.e to i1
  br i1 %.not.i.i46, label %vm_ci_flag.exit51.thread, label %bb.d

vm_ci_flag.exit51.thread:                         ; preds = %vm_ci_mid.exit
  %i.u = trunc i64 %i.e to i32                    ; 2 uses
  %i.v = lshr i32 %i.u, 1
  %i.w = and i32 %i.v, 32767
  %i.x = lshr i32 %i.u, 16
  br label %vm_ci_kwarg.exit

bb.d:                                             ; preds = %vm_ci_mid.exit
  %i.y = getelementptr i8, ptr %i.f, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !174
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr i8, ptr %i.f, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !173
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = getelementptr i8, ptr %i.f, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !238
  br label %vm_ci_kwarg.exit

vm_ci_kwarg.exit:                                 ; preds = %vm_ci_flag.exit51.thread, %bb.d
  %.0.i5075 = phi i32 [ %i.ad, %bb.d ], [ %i.x, %vm_ci_flag.exit51.thread ]
  %.0.i477074 = phi i32 [ %i.aa, %bb.d ], [ %i.w, %vm_ci_flag.exit51.thread ] ; 5 uses
  %.0.i53 = phi ptr [ %i.af, %bb.d ], [ null, %vm_ci_flag.exit51.thread ]
  %i.ag = and i32 %.0.i4367, 1
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %vm_ci_kwarg.exit
  %i.ah = getelementptr i8, ptr %i.c, i64 -16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !11 ; 2 uses
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !77 ; 2 uses
  %i.al = and i64 %i.ak, 8192
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = lshr i64 %i.ak, 15
  %i.an = and i64 %i.am, 127
  br label %rb_array_len.exit

bb.g:                                             ; preds = %bb.e
  %i.ao = getelementptr i8, ptr %i.aj, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !27
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.f, %bb.g
  %.0.i54 = phi i64 [ %i.an, %bb.f ], [ %i.ap, %bb.g ]
  %i.aq = trunc i64 %.0.i54 to i32
  %i.ar = add i32 %.0.i6165, -1
  %i.as = add i32 %i.ar, %i.aq
  br label %bb.h

bb.h:                                             ; preds = %rb_array_len.exit, %vm_ci_kwarg.exit
  %.039 = phi i64 [ %i.ai, %rb_array_len.exit ], [ 0, %vm_ci_kwarg.exit ] ; 2 uses
  %.038 = phi i32 [ %i.as, %rb_array_len.exit ], [ %.0.i6165, %vm_ci_kwarg.exit ]
  %i.at = icmp ne i32 %4, 0
  %i.au = icmp ne ptr %3, null
  %or.cond = and i1 %i.au, %i.at
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = tail call fastcc i64 @vm_caller_setup_arg_block(ptr noundef nonnull %1, ptr noundef %i.a, ptr noundef nonnull %3, i32 noundef 1)
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 32
  %.val35.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !15 ; 2 uses
  %.0.val4.i.i.i.pre = load i64, ptr %.val35.i.pre, align 8, !tbaa !11
  br label %VM_ENV_BLOCK_HANDLER.exit

bb.j:                                             ; preds = %bb.h
  %i.aw = getelementptr i8, ptr %1, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !15 ; 6 uses
  %.0.val4.i = load i64, ptr %i.ax, align 8, !tbaa !11 ; 5 uses
  %i.ay = and i64 %.0.val4.i, 2
  %.not5.i = icmp eq i64 %i.ay, 0
  br i1 %.not5.i, label %.lr.ph.i, label %VM_EP_LEP.exit

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.06.i = phi ptr [ %i.bb, %.lr.ph.i ], [ %i.ax, %bb.j ]
  %i.az = getelementptr i8, ptr %.06.i, i64 -8
  %.0.val3.i = load i64, ptr %i.az, align 8, !tbaa !11
  %i.ba = and i64 %.0.val3.i, -4
  %i.bb = inttoptr i64 %i.ba to ptr               ; 3 uses
  %.0.val.i = load i64, ptr %i.bb, align 8, !tbaa !11 ; 2 uses
  %i.bc = and i64 %.0.val.i, 2
  %.not.i55 = icmp eq i64 %i.bc, 0
  br i1 %.not.i55, label %.lr.ph.i, label %VM_EP_LEP.exit, !llvm.loop !13

VM_EP_LEP.exit:                                   ; preds = %.lr.ph.i, %bb.j
  %.val.i = phi i64 [ %.0.val4.i, %bb.j ], [ %.0.val.i, %.lr.ph.i ]
  %.0.lcssa.i = phi ptr [ %i.ax, %bb.j ], [ %i.bb, %.lr.ph.i ]
  %i.bd = and i64 %.val.i, 2147418113
  switch i64 %i.bd, label %bb.k [
    i64 1145307137, label %VM_ENV_BLOCK_HANDLER.exit
    i64 858980353, label %VM_ENV_BLOCK_HANDLER.exit
  ]

bb.k:                                             ; preds = %VM_EP_LEP.exit
  %i.be = getelementptr i8, ptr %.0.lcssa.i, i64 -8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !11
  br label %VM_ENV_BLOCK_HANDLER.exit

VM_ENV_BLOCK_HANDLER.exit:                        ; preds = %bb.k, %VM_EP_LEP.exit, %VM_EP_LEP.exit, %bb.i
  %.0.val4.i.i.i = phi i64 [ %.0.val4.i.i.i.pre, %bb.i ], [ %.0.val4.i, %bb.k ], [ %.0.val4.i, %VM_EP_LEP.exit ], [ %.0.val4.i, %VM_EP_LEP.exit ] ; 2 uses
  %.val35.i = phi ptr [ %.val35.i.pre, %bb.i ], [ %i.ax, %bb.k ], [ %i.ax, %VM_EP_LEP.exit ], [ %i.ax, %VM_EP_LEP.exit ] ; 2 uses
  %.0 = phi i64 [ %i.av, %bb.i ], [ %i.bf, %bb.k ], [ 0, %VM_EP_LEP.exit ], [ 0, %VM_EP_LEP.exit ]
  %i.bg = and i64 %.0.val4.i.i.i, 2
  %.not5.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not5.i.i.i, label %.lr.ph.i.i.i, label %VM_CF_LEP.exit.i

.lr.ph.i.i.i:                                     ; preds = %VM_ENV_BLOCK_HANDLER.exit, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i ], [ %.val35.i, %VM_ENV_BLOCK_HANDLER.exit ]
  %i.bh = getelementptr i8, ptr %.06.i.i.i, i64 -8
  %.0.val3.i.i.i = load i64, ptr %i.bh, align 8, !tbaa !11
  %i.bi = and i64 %.0.val3.i.i.i, -4
  %i.bj = inttoptr i64 %i.bi to ptr               ; 3 uses
  %.0.val.i.i.i = load i64, ptr %i.bj, align 8, !tbaa !11 ; 2 uses
  %i.bk = and i64 %.0.val.i.i.i, 2
  %.not.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %VM_CF_LEP.exit.i, !llvm.loop !13

VM_CF_LEP.exit.i:                                 ; preds = %.lr.ph.i.i.i, %VM_ENV_BLOCK_HANDLER.exit
  %.val.i57 = phi i64 [ %.0.val4.i.i.i, %VM_ENV_BLOCK_HANDLER.exit ], [ %.0.val.i.i.i, %.lr.ph.i.i.i ]
  %.0.lcssa.i.i.i = phi ptr [ %.val35.i, %VM_ENV_BLOCK_HANDLER.exit ], [ %i.bj, %.lr.ph.i.i.i ] ; 3 uses
  %i.bl = and i64 %.val.i57, 4
  %.not.i58 = icmp eq i64 %i.bl, 0
  br i1 %.not.i58, label %bb.m, label %bb.l

bb.l:                                             ; preds = %VM_CF_LEP.exit.i
  %i.bm = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !11
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  br label %bb.o

bb.m:                                             ; preds = %VM_CF_LEP.exit.i
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !121
  %i.bq = getelementptr i8, ptr %0, i64 8
  %.val11.i.i = load i64, ptr %i.bq, align 8, !tbaa !122
  %i.br = getelementptr [8 x i8], ptr %.val.i.i, i64 %.val11.i.i ; 2 uses
  %i.bs = icmp ult ptr %1, %i.br
  br i1 %i.bs, label %.lr.ph.i.i, label %rb_vm_search_cf_from_ep.exit.i
end_hunk_1
begin_hunk_2_@rb_vm_opt_send_without_block:bb.a

bb.f:                                             ; preds = %vm_ci_argc.exit.i
  %i.aa = trunc i64 %i.h to i32
  %i.ab = lshr i32 %i.aa, 16
  br label %vm_ci_flag.exit.i

bb.g:                                             ; preds = %vm_ci_argc.exit.i
  %i.ac = getelementptr i8, ptr %i.g, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !173
  %i.ae = trunc i64 %i.ad to i32
  br label %vm_ci_flag.exit.i

vm_ci_flag.exit.i:                                ; preds = %bb.g, %bb.f
  %.0.i28.i = phi i32 [ %i.ab, %bb.f ], [ %i.ae, %bb.g ]
  %i.af = trunc i32 %.0.i28.i to i8
  %i.ag = lshr i8 %i.af, 6
  %i.ah = and i8 %i.ag, 1
  store i8 %i.ah, ptr %i.z, align 4, !tbaa !231
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ai, i8 0, i64 11, i1 false)
  %i.aj = getelementptr i8, ptr %1, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !123
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = icmp eq i64 %i.u, 0
  %i.an = and i64 %i.u, 7
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = or i1 %i.am, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.h

bb.h:                                             ; preds = %vm_ci_flag.exit.i
  %i.aq = inttoptr i64 %i.u to ptr
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  br label %rb_class_of.exit.i

bb.i:                                             ; preds = %vm_ci_flag.exit.i
  switch i64 %i.u, label %bb.l [
    i64 0, label %rb_class_of.exit.i
    i64 4, label %bb.j
    i64 20, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  br label %rb_class_of.exit.i

bb.k:                                             ; preds = %bb.i
  br label %rb_class_of.exit.i

bb.l:                                             ; preds = %bb.i
  %i.as = trunc i64 %i.u to i1
  br i1 %i.as, label %rb_class_of.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = and i64 %i.u, 254
  %i.au = icmp eq i64 %i.at, 12
  %spec.select.i.i = select i1 %i.au, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit.i

rb_class_of.exit.i:                               ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.0.in.i.i = phi ptr [ %i.ar, %bb.h ], [ @rb_cNilClass, %bb.j ], [ @rb_cTrueClass, %bb.k ], [ @rb_cFalseClass, %bb.i ], [ @rb_cInteger, %bb.l ], [ %spec.select.i.i, %bb.m ]
  %.0.i29.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !11 ; 2 uses
  %i.av = getelementptr i8, ptr %2, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !182 ; 3 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %.val24.i = load i64, ptr %i.ax, align 8, !tbaa !185
  %i.ay = icmp eq i64 %.val24.i, %.0.i29.i
  br i1 %i.ay, label %bb.n, label %bb.o, !prof !72

bb.n:                                             ; preds = %rb_class_of.exit.i
  %i.az = getelementptr i8, ptr %i.aw, i64 16
  %.val.i = load ptr, ptr %i.az, align 8, !tbaa !187
  %i.ba = load i64, ptr %.val.i, align 8, !tbaa !170
  %i.bb = and i64 %i.ba, 2097152
  %.not.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i, label %vm_sendish.exit, label %bb.o, !prof !72

bb.o:                                             ; preds = %bb.n, %rb_class_of.exit.i
  %i.bc = tail call fastcc ptr @vm_search_method_slowpath0(i64 noundef %i.al, ptr noundef nonnull %2, i64 noundef %.0.i29.i), !inline_history !232
  br label %vm_sendish.exit

vm_sendish.exit:                                  ; preds = %bb.n, %bb.o
  %.0.i.i = phi ptr [ %i.bc, %bb.o ], [ %i.aw, %bb.n ] ; 2 uses
  store ptr %.0.i.i, ptr %i.v, align 8, !tbaa !233
  %i.bd = getelementptr i8, ptr %.0.i.i, i64 24
  %.0.i.val.i = load ptr, ptr %i.bd, align 8, !tbaa !234
  %i.be = call i64 %.0.i.val.i(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %3) #23, !inline_history !232 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.bf = icmp eq i64 %i.be, 36
  br i1 %i.bf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %vm_sendish.exit
  %i.bg = getelementptr i8, ptr %0, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !70
  %i.bi = getelementptr i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !15 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !11
  %i.bl = or i64 %i.bk, 32
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !11
  %i.bm = call i64 @rb_vm_exec(ptr noundef nonnull %0)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %vm_sendish.exit
  %.0 = phi i64 [ %i.bm, %bb.p ], [ %i.be, %vm_sendish.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_invokesuper(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !63
  %i.c = and i8 %i.b, 2
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %bb.b, label %stack_check.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @rb_ec_stack_check(ptr noundef nonnull %0) #23
  %.not4.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i, label %stack_check.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.a, align 8, !tbaa !63
  %i.f = or i8 %i.e, 2
  store i8 %i.f, ptr %i.a, align 8, !tbaa !63
  tail call void @rb_ec_stack_overflow(ptr noundef nonnull %0, i32 noundef 0) #58
  unreachable

stack_check.exit:                                 ; preds = %bb.a, %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !225
  %i.h = tail call fastcc i64 @vm_caller_setup_arg_block(ptr noundef %1, ptr noundef %i.g, ptr noundef %3, i32 noundef 1)
  %i.i = tail call fastcc i64 @vm_sendish(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %i.h, i32 noundef 2) ; 2 uses
  %i.j = icmp eq i64 %i.i, 36
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %stack_check.exit
  %i.k = getelementptr i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !70
  %i.m = getelementptr i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15   ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11
  %i.p = or i64 %i.o, 32
  store i64 %i.p, ptr %i.n, align 8, !tbaa !11
  %i.q = tail call i64 @rb_vm_exec(ptr noundef nonnull %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %stack_check.exit
  %.0 = phi i64 [ %i.q, %bb.d ], [ %i.i, %stack_check.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_invokesuperforward(ptr noundef %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %struct.rb_forwarding_call_data, align 8 ; 5 uses
  %5 = alloca %struct.rb_callinfo, align 8        ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 144        ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !63
  %i.d = and i8 %i.c, 2
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.b, label %stack_check.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @rb_ec_stack_check(ptr noundef nonnull %0) #23
  %.not4.i = icmp eq i32 %i.e, 0
  br i1 %.not4.i, label %stack_check.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.b, align 8, !tbaa !63
  %i.g = or i8 %i.f, 2
  store i8 %i.g, ptr %i.b, align 8, !tbaa !63
  tail call void @rb_ec_stack_overflow(ptr noundef nonnull %0, i32 noundef 0) #58
  unreachable

stack_check.exit:                                 ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  store volatile ptr %i.i, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = call fastcc i64 @vm_caller_setup_fwd_args(ptr noundef %.0..0..0..0..0..0..i, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1, ptr noundef %4, ptr noundef %5)
  %i.k = call fastcc i64 @vm_sendish(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4, i64 noundef %i.j, i32 noundef 2) ; 2 uses
  %i.l = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !182
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !279  ; 3 uses
  %.not = icmp eq ptr %i.m, %i.o
  br i1 %.not, label %rb_obj_write.exit, label %bb.d

bb.d:                                             ; preds = %stack_check.exit
  %i.p = load i64, ptr %i.o, align 8, !tbaa !77
  %i.q = and i64 %i.p, 1048576
  %.not15 = icmp eq i64 %i.q, 0
  br i1 %.not15, label %bb.e, label %rb_obj_write.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !123
  %i.t = ptrtoint ptr %i.o to i64                 ; 3 uses
  store i64 %i.t, ptr %i.l, align 8, !tbaa !11
  %6 = and i64 %i.t, 7
  %.not16 = icmp eq i64 %6, 0
  br i1 %.not16, label %7, label %rb_obj_write.exit

7:                                                ; preds = %bb.e
  %8 = ptrtoint ptr %i.s to i64
  call void @rb_gc_writebarrier(i64 noundef %8, i64 noundef %i.t) #23
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %7, %bb.e, %stack_check.exit, %bb.d
  %i.u = icmp eq i64 %i.k, 36
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_obj_write.exit
  %i.v = getelementptr i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !70
  %i.x = getelementptr i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15   ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !11
  %i.aa = or i64 %i.z, 32
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !11
  %i.ab = call i64 @rb_vm_exec(ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %rb_obj_write.exit
  %.0 = phi i64 [ %i.ab, %bb.f ], [ %i.k, %rb_obj_write.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_invokeblock(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !63
  %i.c = and i8 %i.b, 2
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %bb.b, label %stack_check.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @rb_ec_stack_check(ptr noundef nonnull %0) #23
  %.not4.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i, label %stack_check.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.a, align 8, !tbaa !63
  %i.f = or i8 %i.e, 2
  store i8 %i.f, ptr %i.a, align 8, !tbaa !63
  tail call void @rb_ec_stack_overflow(ptr noundef nonnull %0, i32 noundef 0) #58
  unreachable

stack_check.exit:                                 ; preds = %bb.a, %bb.b
  %i.g = tail call fastcc i64 @vm_sendish(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef 0, i32 noundef 1) ; 2 uses
  %i.h = icmp eq i64 %i.g, 36
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %stack_check.exit
  %i.i = getelementptr i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !70
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15   ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11
  %i.n = or i64 %i.m, 32
  store i64 %i.n, ptr %i.l, align 8, !tbaa !11
  %i.o = tail call i64 @rb_vm_exec(ptr noundef nonnull %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %stack_check.exit
  %.0 = phi i64 [ %i.o, %bb.d ], [ %i.g, %stack_check.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_objtostring(ptr noundef %0, i64 noundef %1, ptr noundef captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @vm_objtostring(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_objtostring(ptr noundef %0, i64 noundef %1, ptr noundef captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %rb_type.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @llvm.fshl.i64(i64 %1, i64 %1, i64 62) ; 3 uses
  %i.f = icmp ult i64 %i.e, 10
  %switch.maskindex = trunc i64 %i.e to i16
  %switch.shifted = lshr i16 547, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.f, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = trunc i64 %1 to i1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = and i64 %1, 254
  %i.i = icmp eq i64 %i.h, 12
  %spec.select.i = select i1 %i.i, i32 20, i32 4
  br label %bb.f

rb_type.exit:                                     ; preds = %bb.a
  %i.j = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !77
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.l, 31                         ; 2 uses
  %i.n = icmp eq i32 %i.m, 5
  br i1 %i.n, label %check_method_basic_definition.exit.thread, label %bb.e

bb.e:                                             ; preds = %rb_type.exit
  %i.o = getelementptr i8, ptr %i.j, i64 8
  br label %rb_class_of.exit.i

switch.lookup:                                    ; preds = %bb.b
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.vm_exec_core, i64 %i.e
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.f

bb.f:                                             ; preds = %switch.lookup, %bb.c, %bb.d
  %.0.i.ph = phi i32 [ %spec.select.i, %bb.d ], [ 21, %bb.c ], [ %switch.load, %switch.lookup ] ; 5 uses
  switch i64 %1, label %bb.i [
    i64 0, label %rb_class_of.exit.i
    i64 4, label %bb.g
    i64 20, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  br label %rb_class_of.exit.i

bb.h:                                             ; preds = %bb.f
  br label %rb_class_of.exit.i

bb.i:                                             ; preds = %bb.f
  %i.p = trunc i64 %1 to i1
  br i1 %i.p, label %rb_class_of.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = and i64 %1, 254
  %i.r = icmp eq i64 %i.q, 12
  %spec.select.i.i = select i1 %i.r, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit.i

rb_class_of.exit.i:                               ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.0.i5254 = phi i32 [ %i.m, %bb.e ], [ %.0.i.ph, %bb.g ], [ %.0.i.ph, %bb.h ], [ %.0.i.ph, %bb.f ], [ %.0.i.ph, %bb.i ], [ %.0.i.ph, %bb.j ]
  %.0.in.i.i = phi ptr [ %i.o, %bb.e ], [ @rb_cNilClass, %bb.g ], [ @rb_cTrueClass, %bb.h ], [ @rb_cFalseClass, %bb.f ], [ @rb_cInteger, %bb.i ], [ %spec.select.i.i, %bb.j ]
  %i.s = ptrtoint ptr %0 to i64
  %.0.i5.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !11 ; 2 uses
  %i.t = getelementptr i8, ptr %2, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !182  ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val4.i = load i64, ptr %i.v, align 8, !tbaa !185
  %i.w = icmp eq i64 %.val4.i, %.0.i5.i
  br i1 %i.w, label %bb.k, label %bb.l, !prof !72

bb.k:                                             ; preds = %rb_class_of.exit.i
  %i.x = getelementptr i8, ptr %i.u, i64 16
  %.val.i = load ptr, ptr %i.x, align 8, !tbaa !187 ; 2 uses
  %i.y = load i64, ptr %.val.i, align 8, !tbaa !170
  %i.z = and i64 %i.y, 2097152
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %vm_search_method.exit, label %bb.l, !prof !72

bb.l:                                             ; preds = %bb.k, %rb_class_of.exit.i
  %i.aa = tail call fastcc ptr @vm_search_method_slowpath0(i64 noundef %i.s, ptr noundef nonnull %2, i64 noundef %.0.i5.i), !inline_history !188
  %.phi.trans.insert.i = getelementptr i8, ptr %i.aa, i64 16
  %.0.i.val.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !187
  br label %vm_search_method.exit

vm_search_method.exit:                            ; preds = %bb.k, %bb.l
  %.0.i.val.i = phi ptr [ %.0.i.val.pre.i, %bb.l ], [ %.val.i, %bb.k ] ; 12 uses
  switch i32 %.0.i5254, label %check_method_basic_definition.exit.thread [
    i32 20, label %bb.m
    i32 3, label %bb.o
    i32 2, label %bb.o
    i32 17, label %bb.s
    i32 18, label %bb.v
    i32 19, label %bb.y
    i32 21, label %bb.ab
  ]

bb.m:                                             ; preds = %vm_search_method.exit
  %.not.i = icmp eq ptr %.0.i.val.i, null
  br i1 %.not.i, label %check_method_basic_definition.exit.thread, label %check_method_basic_definition.exit

check_method_basic_definition.exit:               ; preds = %bb.m
  %i.ab = load i64, ptr %.0.i.val.i, align 8, !tbaa !170
  %i.ac = and i64 %i.ab, 262144
  %.not32 = icmp eq i64 %i.ac, 0
  br i1 %.not32, label %check_method_basic_definition.exit.thread, label %bb.n

bb.n:                                             ; preds = %check_method_basic_definition.exit
  %i.ad = tail call i64 @rb_sym2str(i64 noundef %1) #23
  br label %check_method_basic_definition.exit.thread

bb.o:                                             ; preds = %vm_search_method.exit, %vm_search_method.exit
  %.not.i33 = icmp eq ptr %.0.i.val.i, null
  br i1 %.not.i33, label %check_method_basic_definition.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = getelementptr i8, ptr %.0.i.val.i, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !83 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8
  %i.ah = and i8 %i.ag, 15
end_hunk_2
begin_hunk_3_@vm_exec_core:bb.a
bb.jb:                                            ; preds = %bb.ja
  br label %rb_class_of.exit.i2503

bb.jc:                                            ; preds = %bb.ja
  br label %rb_class_of.exit.i2503

bb.jd:                                            ; preds = %bb.ja
  %i.bid = trunc i64 %i.bhl to i1
  br i1 %i.bid, label %rb_class_of.exit.i2503, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.bie = and i64 %i.bhl, 254
  %i.bif = icmp eq i64 %i.bie, 12
  %spec.select.i.i2512 = select i1 %i.bif, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit.i2503

rb_class_of.exit.i2503:                           ; preds = %bb.je, %bb.jd, %bb.jc, %bb.jb, %bb.ja, %bb.iz
  %.0.in.i.i2504 = phi ptr [ %i.bic, %bb.iz ], [ @rb_cNilClass, %bb.jb ], [ @rb_cTrueClass, %bb.jc ], [ @rb_cFalseClass, %bb.ja ], [ @rb_cInteger, %bb.jd ], [ %spec.select.i.i2512, %bb.je ]
  %.0.i29.i2505 = load i64, ptr %.0.in.i.i2504, align 8, !tbaa !11 ; 2 uses
  %i.big = load ptr, ptr %i.aj, align 8, !tbaa !182 ; 3 uses
  %i.bih = getelementptr i8, ptr %i.big, i64 8
  %.val24.i2506 = load i64, ptr %i.bih, align 8, !tbaa !185
  %i.bii = icmp eq i64 %.val24.i2506, %.0.i29.i2505
  br i1 %i.bii, label %bb.jf, label %bb.jg, !prof !72

bb.jf:                                            ; preds = %rb_class_of.exit.i2503
  %i.bij = getelementptr i8, ptr %i.big, i64 16
  %.val.i2510 = load ptr, ptr %i.bij, align 8, !tbaa !187
  %i.bik = load i64, ptr %.val.i2510, align 8, !tbaa !170
  %i.bil = and i64 %i.bik, 2097152
  %.not.i.i2511 = icmp eq i64 %i.bil, 0
  br i1 %.not.i.i2511, label %vm_sendish.exit2513, label %bb.jg, !prof !72

bb.jg:                                            ; preds = %bb.jf, %rb_class_of.exit.i2503
  %i.bim = call fastcc ptr @vm_search_method_slowpath0(i64 noundef %i.bhw, ptr noundef nonnull %6, i64 noundef %.0.i29.i2505), !inline_history !232
  br label %vm_sendish.exit2513

vm_sendish.exit2513:                              ; preds = %bb.jf, %bb.jg
  %.0.i.i2507 = phi ptr [ %i.bim, %bb.jg ], [ %i.big, %bb.jf ] ; 2 uses
  store ptr %.0.i.i2507, ptr %i.ad, align 8, !tbaa !233
  %i.bin = getelementptr i8, ptr %.0.i.i2507, i64 24
  %.0.i.val.i2508 = load ptr, ptr %i.bin, align 8, !tbaa !234
  %i.bio = call i64 %.0.i.val.i2508(ptr noundef %0, ptr noundef nonnull %.02257, ptr noundef nonnull %4) #23, !inline_history !232 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.bip = icmp eq i64 %i.bio, 36
  br i1 %i.bip, label %bb.jh, label %bb.jx

bb.jh:                                            ; preds = %vm_sendish.exit2513
  %i.biq = load ptr, ptr %i.p, align 8, !tbaa !70 ; 5 uses
  %.not2327 = icmp eq ptr %.02257, %i.biq
  br i1 %.not2327, label %bb.jx, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.bir = load i8, ptr @rb_yjit_enabled_p, align 1, !tbaa !269, !range !114, !noundef !64
  %i.bis = trunc nuw i8 %i.bir to i1
  br i1 %i.bis, label %bb.jj, label %bb.jr

bb.jj:                                            ; preds = %bb.ji
  %i.bit = getelementptr i8, ptr %i.biq, i64 16
  %i.biu = load ptr, ptr %i.bit, align 8, !tbaa !123 ; 2 uses
  %i.biv = getelementptr i8, ptr %i.biu, i64 16
  %i.biw = load ptr, ptr %i.biv, align 8, !tbaa !124 ; 4 uses
  %i.bix = getelementptr i8, ptr %i.biw, i64 304  ; 2 uses
  %i.biy = load ptr, ptr %i.bix, align 8, !tbaa !270 ; 2 uses
  %i.biz = icmp eq ptr %i.biy, null
  br i1 %i.biz, label %bb.jk, label %yjit_compile.exit2516.thread

bb.jk:                                            ; preds = %bb.jj
  %i.bja = getelementptr i8, ptr %i.biw, i64 312  ; 2 uses
  %i.bjb = load i64, ptr %i.bja, align 8, !tbaa !271 ; 2 uses
  %i.bjc = add i64 %i.bjb, 1                      ; 3 uses
  store i64 %i.bjc, ptr %i.bja, align 8, !tbaa !271
  %i.bjd = load i64, ptr @yjit_total_entry_hits, align 8, !tbaa !11
  %i.bje = add i64 %i.bjd, 1                      ; 3 uses
  store i64 %i.bje, ptr @yjit_total_entry_hits, align 8, !tbaa !11
  %i.bjf = add i64 %i.bjb, 21
  %i.bjg = load i64, ptr @rb_yjit_call_threshold, align 8, !tbaa !11 ; 2 uses
  %i.bjh = icmp eq i64 %i.bjf, %i.bjg
  br i1 %i.bjh, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  %i.bji = getelementptr i8, ptr %i.biw, i64 344
  store i64 %i.bje, ptr %i.bji, align 8, !tbaa !272
  %.pr.i.i2515 = load i64, ptr @rb_yjit_call_threshold, align 8, !tbaa !11
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk
  %i.bjj = phi i64 [ %.pr.i.i2515, %bb.jl ], [ %i.bjg, %bb.jk ]
  %i.bjk = icmp eq i64 %i.bjc, %i.bjj
  br i1 %i.bjk, label %bb.jn, label %yjit_compile.exit2516

bb.jn:                                            ; preds = %bb.jm
  %i.bjl = icmp ult i64 %i.bjc, 20
  br i1 %i.bjl, label %bb.jq, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.bjm = getelementptr i8, ptr %i.biw, i64 344
  %i.bjn = load i64, ptr %i.bjm, align 8, !tbaa !272
  %i.bjo = sub i64 %i.bje, %i.bjn
  %i.bjp = load i64, ptr @rb_yjit_cold_threshold, align 8, !tbaa !11
  %.not.i.i2514 = icmp ugt i64 %i.bjo, %i.bjp
  br i1 %.not.i.i2514, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  call void @rb_yjit_incr_counter(ptr noundef nonnull @.str.195) #23
  br label %yjit_compile.exit2516

bb.jq:                                            ; preds = %bb.jo, %bb.jn
  call void @rb_yjit_compile_iseq(ptr noundef nonnull %i.biu, ptr noundef nonnull %0, i1 noundef zeroext false) #23
  br label %yjit_compile.exit2516

yjit_compile.exit2516:                            ; preds = %bb.jm, %bb.jp, %bb.jq
  %.pr2847 = load ptr, ptr %i.bix, align 8, !tbaa !270 ; 2 uses
  %.not2330 = icmp eq ptr %.pr2847, null
  br i1 %.not2330, label %bb.jx, label %yjit_compile.exit2516.yjit_compile.exit2516.thread_crit_edge

yjit_compile.exit2516.yjit_compile.exit2516.thread_crit_edge: ; preds = %yjit_compile.exit2516
  %.pre3194 = load ptr, ptr %i.p, align 8, !tbaa !70
  br label %yjit_compile.exit2516.thread

yjit_compile.exit2516.thread:                     ; preds = %yjit_compile.exit2516.yjit_compile.exit2516.thread_crit_edge, %bb.jj
  %i.bjq = phi ptr [ %.pre3194, %yjit_compile.exit2516.yjit_compile.exit2516.thread_crit_edge ], [ %i.biq, %bb.jj ]
  %i.bjr = phi ptr [ %.pr2847, %yjit_compile.exit2516.yjit_compile.exit2516.thread_crit_edge ], [ %i.biy, %bb.jj ]
  %i.bjs = call i64 %i.bjr(ptr noundef nonnull %0, ptr noundef %i.bjq) #23 ; 2 uses
  %i.bjt = load ptr, ptr %i.w, align 8, !tbaa !67
  %i.bju = getelementptr i8, ptr %i.bjt, i64 64
  %i.bjv = load i32, ptr %i.bju, align 8, !tbaa !68
  %.not2331 = icmp eq i32 %i.bjv, 0
  br i1 %.not2331, label %bb.jx, label %.loopexit2951

bb.jr:                                            ; preds = %bb.ji
  %i.bjw = load ptr, ptr @rb_zjit_entry, align 8, !tbaa !176 ; 2 uses
  %.not2328 = icmp eq ptr %i.bjw, null
  br i1 %.not2328, label %bb.jx, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.bjx = getelementptr i8, ptr %i.biq, i64 16
  %.val2356.val = load ptr, ptr %i.bjx, align 8, !tbaa !123 ; 3 uses
  %i.bjy = getelementptr i8, ptr %.val2356.val, i64 16
  %i.bjz = load ptr, ptr %i.bjy, align 8, !tbaa !124 ; 2 uses
  %i.bka = getelementptr i8, ptr %i.bjz, i64 304  ; 2 uses
  %i.bkb = load ptr, ptr %i.bka, align 8, !tbaa !270 ; 2 uses
  %i.bkc = icmp eq ptr %i.bkb, null
  br i1 %i.bkc, label %bb.jt, label %zjit_compile.exit2518.thread

bb.jt:                                            ; preds = %bb.js
  %i.bkd = getelementptr i8, ptr %i.bjz, i64 312  ; 3 uses
  %i.bke = load i64, ptr %i.bkd, align 8, !tbaa !271
  %i.bkf = add i64 %i.bke, 1                      ; 3 uses
  store i64 %i.bkf, ptr %i.bkd, align 8, !tbaa !271
  %i.bkg = load i64, ptr @rb_zjit_profile_threshold, align 8, !tbaa !11
  %i.bkh = icmp eq i64 %i.bkf, %i.bkg
  br i1 %i.bkh, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  call void @rb_zjit_profile_enable(ptr noundef nonnull %.val2356.val) #23
  %.pre.i2517 = load i64, ptr %i.bkd, align 8, !tbaa !271
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt
  %i.bki = phi i64 [ %.pre.i2517, %bb.ju ], [ %i.bkf, %bb.jt ]
  %i.bkj = load i64, ptr @rb_zjit_call_threshold, align 8, !tbaa !11
  %i.bkk = icmp eq i64 %i.bki, %i.bkj
  br i1 %i.bkk, label %bb.jw, label %zjit_compile.exit2518

bb.jw:                                            ; preds = %bb.jv
  call void @rb_zjit_compile_iseq(ptr noundef nonnull %.val2356.val, i1 noundef zeroext false) #23
  br label %zjit_compile.exit2518

zjit_compile.exit2518:                            ; preds = %bb.jv, %bb.jw
  %.pr2849 = load ptr, ptr %i.bka, align 8, !tbaa !270 ; 2 uses
  %.not2329 = icmp eq ptr %.pr2849, null
  br i1 %.not2329, label %bb.jx, label %zjit_compile.exit2518.zjit_compile.exit2518.thread_crit_edge

zjit_compile.exit2518.zjit_compile.exit2518.thread_crit_edge: ; preds = %zjit_compile.exit2518
  %.pre3193 = load ptr, ptr %i.p, align 8, !tbaa !70
  br label %zjit_compile.exit2518.thread

zjit_compile.exit2518.thread:                     ; preds = %zjit_compile.exit2518.zjit_compile.exit2518.thread_crit_edge, %bb.js
  %i.bkl = phi ptr [ %.pre3193, %zjit_compile.exit2518.zjit_compile.exit2518.thread_crit_edge ], [ %i.biq, %bb.js ]
  %i.bkm = phi ptr [ %.pr2849, %zjit_compile.exit2518.zjit_compile.exit2518.thread_crit_edge ], [ %i.bkb, %bb.js ]
  %i.bkn = call i64 %i.bjw(ptr noundef nonnull %0, ptr noundef %i.bkl, ptr noundef nonnull %i.bkm) #23
  br label %bb.jx

bb.jx:                                            ; preds = %vm_sendish.exit2513, %bb.jh, %bb.jr, %zjit_compile.exit2518.thread, %zjit_compile.exit2518, %yjit_compile.exit2516, %yjit_compile.exit2516.thread
  %.02267 = phi i64 [ %i.bjs, %yjit_compile.exit2516.thread ], [ 36, %yjit_compile.exit2516 ], [ %i.bkn, %zjit_compile.exit2518.thread ], [ 36, %zjit_compile.exit2518 ], [ 36, %bb.jr ], [ 36, %bb.jh ], [ %i.bio, %vm_sendish.exit2513 ] ; 2 uses
  %i.bko = getelementptr i8, ptr %i.bgr, i64 8    ; 2 uses
  %i.bkp = load ptr, ptr %i.bko, align 8, !tbaa !182
  %i.bkq = load ptr, ptr %i.aj, align 8, !tbaa !279 ; 3 uses
  %.not2332 = icmp eq ptr %i.bkp, %i.bkq
  br i1 %.not2332, label %rb_obj_write.exit, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.bkr = load i64, ptr %i.bkq, align 8, !tbaa !77
  %i.bks = and i64 %i.bkr, 1048576
  %.not2943 = icmp eq i64 %i.bks, 0
  br i1 %.not2943, label %bb.jz, label %rb_obj_write.exit

bb.jz:                                            ; preds = %bb.jy
  %i.bkt = load ptr, ptr %i.bhu, align 8, !tbaa !123
  %i.bku = ptrtoint ptr %i.bkq to i64             ; 3 uses
  store i64 %i.bku, ptr %i.bko, align 8, !tbaa !11
  %10 = and i64 %i.bku, 7
  %.not2944 = icmp eq i64 %10, 0
  br i1 %.not2944, label %11, label %rb_obj_write.exit

11:                                               ; preds = %bb.jz
  %12 = ptrtoint ptr %i.bkt to i64
  call void @rb_gc_writebarrier(i64 noundef %12, i64 noundef %i.bku) #23
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %11, %bb.jz, %bb.jy, %bb.jx
  %i.bkv = icmp eq i64 %.02267, 36
  br i1 %i.bkv, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %rb_obj_write.exit
  %i.bkw = load ptr, ptr %i.p, align 8, !tbaa !70 ; 2 uses
  %i.bkx = load ptr, ptr %i.bkw, align 8, !tbaa !146
  br label %.backedge.backedge

bb.kb:                                            ; preds = %rb_obj_write.exit
  %i.bky = load ptr, ptr %i.bgw, align 8, !tbaa !73 ; 2 uses
  store i64 %.02267, ptr %i.bky, align 8, !tbaa !11
  %i.bkz = getelementptr i8, ptr %i.bky, i64 8
  store ptr %i.bkz, ptr %i.bgw, align 8, !tbaa !73
  br label %.backedge.backedge

vm_opt_neq.exit.thread:                           ; preds = %bb.zp, %bb.zq, %bb.zr, %bb.zo, %bb.zn, %bb.yw, %bb.yx, %bb.za, %bb.yz, %bb.yy, %bb.yf, %bb.yg, %bb.yj, %bb.yi, %bb.yh, %vm_method_cfunc_is.exit.i2651, %vm_search_method.exit.i.i2644, %vm_search_method.exit.thread.i.i2648, %bb.wm, %bb.wn, %bb.wk, %bb.wl, %bb.vq, %bb.wj, %vm_opt_mod.exit, %bb.vk, %bb.vl, %bb.vi, %bb.vj, %bb.ux, %bb.vh, %vm_opt_div.exit, %bb.up, %bb.uq, %bb.un, %bb.um, %bb.uo, %vm_opt_mult.exit, %bb.to, %bb.tp, %bb.tm, %bb.tl, %bb.tn, %vm_opt_minus.exit, %bb.sr, %bb.ss, %bb.se, %bb.sd, %bb.sq, %vm_opt_plus.exit, %vm_method_cfunc_is.exit.i, %vm_search_method.exit.thread.i.i, %vm_search_method.exit.i.i, %bb.ls, %vm_search_method.exit.thread.i.i2664, %vm_method_cfunc_is.exit.i2669, %vm_search_method.exit.i.i2660, %vm_search_method.exit.thread.i.i.i, %vm_search_method.exit.i.i.i, %vm_method_cfunc_is.exit.i.i, %.backedge, %bb.ajd, %bb.ajc, %bb.ajb, %bb.aja, %bb.aiz, %bb.aiy, %bb.aix, %bb.aiw, %bb.aiv, %bb.aiu, %bb.ait, %bb.ais, %bb.air, %bb.aiq, %bb.aip, %bb.aio, %bb.ain, %bb.aim, %bb.ail, %bb.aik, %bb.aij, %bb.aii, %bb.aht, %bb.ahn, %bb.aei, %vm_opt_regexpmatch2.exit.thread, %vm_opt_not.exit.thread, %vm_opt_succ.exit.thread, %bb.acf, %bb.acc, %bb.abz, %vm_opt_aset.exit.thread, %vm_opt_aref.exit.thread, %vm_opt_or.exit.thread, %vm_opt_and.exit.thread, %vm_opt_ltlt.exit.thread, %bb.aaj, %bb.mo, %bb.mb, %bb.ly, %bb.lv
  %.02256 = phi ptr [ %.6, %.backedge ], [ %.6, %bb.aei ], [ %i.brw, %bb.lv ], [ %i.bsl, %bb.ly ], [ %i.bta, %bb.mb ], [ %.6, %bb.ajd ], [ %i.bvd, %bb.mo ], [ %.6, %bb.ajc ], [ %.6, %bb.ajb ], [ %.6, %bb.aja ], [ %.6, %bb.aiz ], [ %.6, %bb.aiy ], [ %.6, %bb.aix ], [ %.6, %bb.aiw ], [ %i.djd, %vm_search_method.exit.thread.i.i2664 ], [ %i.djd, %vm_method_cfunc_is.exit.i2669 ], [ %i.djd, %vm_search_method.exit.i.i2660 ], [ %.6, %bb.aaj ], [ %.6, %vm_opt_ltlt.exit.thread ], [ %.6, %vm_opt_and.exit.thread ], [ %.6, %vm_opt_or.exit.thread ], [ %.6, %vm_opt_aref.exit.thread ], [ %.6, %vm_opt_aset.exit.thread ], [ %.6, %bb.abz ], [ %.6, %bb.acc ], [ %.6, %bb.acf ], [ %.6, %vm_opt_succ.exit.thread ], [ %.6, %vm_opt_not.exit.thread ], [ %.6, %vm_opt_regexpmatch2.exit.thread ], [ %.6, %bb.ahn ], [ %.6, %bb.aht ], [ %.6, %bb.aii ], [ %.6, %bb.aij ], [ %.6, %bb.aik ], [ %.6, %bb.ail ], [ %.6, %bb.aim ], [ %.6, %bb.ain ], [ %i.enm, %bb.aio ], [ %.6, %bb.aip ], [ %.6, %bb.aiq ], [ %.6, %bb.air ], [ %.6, %bb.ais ], [ %.6, %bb.ait ], [ %.6, %bb.aiu ], [ %.6, %bb.aiv ], [ %i.djd, %vm_method_cfunc_is.exit.i.i ], [ %i.djd, %vm_search_method.exit.i.i.i ], [ %i.djd, %vm_search_method.exit.thread.i.i.i ], [ %.6, %bb.ls ], [ %.6, %vm_search_method.exit.i.i ], [ %.6, %vm_search_method.exit.thread.i.i ], [ %.6, %vm_method_cfunc_is.exit.i ], [ %.6, %vm_opt_plus.exit ], [ %.6, %bb.sq ], [ %.6, %bb.sd ], [ %.6, %bb.se ], [ %.6, %bb.ss ], [ %.6, %bb.sr ], [ %.6, %vm_opt_minus.exit ], [ %.6, %bb.tn ], [ %.6, %bb.tl ], [ %.6, %bb.tm ], [ %.6, %bb.tp ], [ %.6, %bb.to ], [ %.6, %vm_opt_mult.exit ], [ %.6, %bb.uo ], [ %.6, %bb.um ], [ %.6, %bb.un ], [ %.6, %bb.uq ], [ %.6, %bb.up ], [ %.6, %vm_opt_div.exit ], [ %.6, %bb.vh ], [ %.6, %bb.ux ], [ %.6, %bb.vj ], [ %.6, %bb.vi ], [ %.6, %bb.vl ], [ %.6, %bb.vk ], [ %.6, %vm_opt_mod.exit ], [ %.6, %bb.wj ], [ %.6, %bb.vq ], [ %.6, %bb.wl ], [ %.6, %bb.wk ], [ %.6, %bb.wn ], [ %.6, %bb.wm ], [ %.6, %vm_search_method.exit.thread.i.i2648 ], [ %.6, %vm_search_method.exit.i.i2644 ], [ %.6, %vm_method_cfunc_is.exit.i2651 ], [ %.6, %bb.yh ], [ %.6, %bb.yi ], [ %.6, %bb.yj ], [ %.6, %bb.yg ], [ %.6, %bb.yf ], [ %.6, %bb.yy ], [ %.6, %bb.yz ], [ %.6, %bb.za ], [ %.6, %bb.yx ], [ %.6, %bb.yw ], [ %.6, %bb.zn ], [ %.6, %bb.zo ], [ %.6, %bb.zr ], [ %.6, %bb.zq ], [ %.6, %bb.zp ] ; 2 uses
  %i.bla = getelementptr i8, ptr %.02256, i64 8
  %i.blb = load i64, ptr %i.bla, align 8, !tbaa !11
  %i.blc = inttoptr i64 %i.blb to ptr             ; 4 uses
  %i.bld = getelementptr i8, ptr %.02256, i64 16  ; 2 uses
  store ptr %i.bld, ptr %.02257, align 8, !tbaa !146
  %i.ble = getelementptr i8, ptr %.02257, i64 8   ; 3 uses
  %i.blf = load ptr, ptr %i.blc, align 8, !tbaa !225 ; 3 uses
  %i.blg = ptrtoint ptr %i.blf to i64             ; 3 uses
  %.not.i.i.i2519 = trunc i64 %i.blg to i1        ; 2 uses
  br i1 %.not.i.i.i2519, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %vm_opt_neq.exit.thread
  %i.blh = trunc i64 %i.blg to i32
  %i.bli = lshr i32 %i.blh, 1
  %i.blj = and i32 %i.bli, 32767
  br label %vm_ci_argc.exit.i2520

bb.kd:                                            ; preds = %vm_opt_neq.exit.thread
  %i.blk = getelementptr i8, ptr %i.blf, i64 32
  %i.bll = load i64, ptr %i.blk, align 8, !tbaa !174
  %i.blm = trunc i64 %i.bll to i32
  br label %vm_ci_argc.exit.i2520

vm_ci_argc.exit.i2520:                            ; preds = %bb.kd, %bb.kc
  %.0.i26.i2521 = phi i32 [ %i.blj, %bb.kc ], [ %i.blm, %bb.kd ] ; 2 uses
  %i.bln = load ptr, ptr %i.ble, align 8, !tbaa !73
  %i.blo = sext i32 %.0.i26.i2521 to i64
  %i.blp = sub nsw i64 0, %i.blo
  %i.blq = getelementptr [8 x i8], ptr %i.bln, i64 %i.blp
  %i.blr = getelementptr i8, ptr %i.blq, i64 -8
  %i.bls = load i64, ptr %i.blr, align 8, !tbaa !11 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.blc, ptr %3, align 8, !tbaa !226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store i64 %i.bls, ptr %i.z, align 8, !tbaa !229
  store i32 %.0.i26.i2521, ptr %i.aa, align 8, !tbaa !230
  br i1 %.not.i.i.i2519, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %vm_ci_argc.exit.i2520
  %i.blt = trunc i64 %i.blg to i32
  %i.blu = lshr i32 %i.blt, 16
  br label %vm_ci_flag.exit.i2522

bb.kf:                                            ; preds = %vm_ci_argc.exit.i2520
  %i.blv = getelementptr i8, ptr %i.blf, i64 24
  %i.blw = load i64, ptr %i.blv, align 8, !tbaa !173
  %i.blx = trunc i64 %i.blw to i32
  br label %vm_ci_flag.exit.i2522

vm_ci_flag.exit.i2522:                            ; preds = %bb.kf, %bb.ke
  %.0.i28.i2523 = phi i32 [ %i.blu, %bb.ke ], [ %i.blx, %bb.kf ]
  %i.bly = trunc i32 %.0.i28.i2523 to i8
  %i.blz = lshr i8 %i.bly, 6
  %i.bma = and i8 %i.blz, 1
  store i8 %i.bma, ptr %i.ab, align 4, !tbaa !231
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ac, i8 0, i64 11, i1 false)
  %i.bmb = getelementptr i8, ptr %.02257, i64 16
  %i.bmc = load ptr, ptr %i.bmb, align 8, !tbaa !123 ; 2 uses
  %i.bmd = ptrtoint ptr %i.bmc to i64
  %i.bme = icmp eq i64 %i.bls, 0
  %i.bmf = and i64 %i.bls, 7
  %i.bmg = icmp ne i64 %i.bmf, 0
  %i.bmh = or i1 %i.bme, %i.bmg
  br i1 %i.bmh, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %vm_ci_flag.exit.i2522
  %i.bmi = inttoptr i64 %i.bls to ptr
  %i.bmj = getelementptr i8, ptr %i.bmi, i64 8
  br label %rb_class_of.exit.i2524

bb.kh:                                            ; preds = %vm_ci_flag.exit.i2522
  switch i64 %i.bls, label %bb.kk [
    i64 0, label %rb_class_of.exit.i2524
    i64 4, label %bb.ki
    i64 20, label %bb.kj
  ]

bb.ki:                                            ; preds = %bb.kh
  br label %rb_class_of.exit.i2524

bb.kj:                                            ; preds = %bb.kh
  br label %rb_class_of.exit.i2524

bb.kk:                                            ; preds = %bb.kh
  %i.bmk = trunc i64 %i.bls to i1
  br i1 %i.bmk, label %rb_class_of.exit.i2524, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.bml = and i64 %i.bls, 254
  %i.bmm = icmp eq i64 %i.bml, 12
  %spec.select.i.i2533 = select i1 %i.bmm, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit.i2524

rb_class_of.exit.i2524:                           ; preds = %bb.kl, %bb.kk, %bb.kj, %bb.ki, %bb.kh, %bb.kg
  %.0.in.i.i2525 = phi ptr [ %i.bmj, %bb.kg ], [ @rb_cNilClass, %bb.ki ], [ @rb_cTrueClass, %bb.kj ], [ @rb_cFalseClass, %bb.kh ], [ @rb_cInteger, %bb.kk ], [ %spec.select.i.i2533, %bb.kl ]
  %.0.i29.i2526 = load i64, ptr %.0.in.i.i2525, align 8, !tbaa !11 ; 2 uses
  %i.bmn = getelementptr i8, ptr %i.blc, i64 8    ; 2 uses
  %i.bmo = load ptr, ptr %i.bmn, align 8, !tbaa !182 ; 3 uses
  %i.bmp = getelementptr i8, ptr %i.bmo, i64 8
  %.val24.i2527 = load i64, ptr %i.bmp, align 8, !tbaa !185
  %i.bmq = icmp eq i64 %.val24.i2527, %.0.i29.i2526
  br i1 %i.bmq, label %bb.km, label %bb.kn, !prof !72

bb.km:                                            ; preds = %rb_class_of.exit.i2524
  %i.bmr = getelementptr i8, ptr %i.bmo, i64 16
  %.val.i2531 = load ptr, ptr %i.bmr, align 8, !tbaa !187
  %i.bms = load i64, ptr %.val.i2531, align 8, !tbaa !170
  %i.bmt = and i64 %i.bms, 2097152
  %.not.i.i2532 = icmp eq i64 %i.bmt, 0
  br i1 %.not.i.i2532, label %vm_sendish.exit2534, label %bb.kn, !prof !72

bb.kn:                                            ; preds = %bb.km, %rb_class_of.exit.i2524
  %i.bmu = load ptr, ptr %i.blc, align 8, !tbaa !225
  %i.bmv = call ptr @rb_vm_search_method_slowpath(ptr noundef %i.bmu, i64 noundef %.0.i29.i2526), !inline_history !358 ; 7 uses
  store ptr %i.bmv, ptr %i.bmn, align 8, !tbaa !182
  %.not.i2796 = icmp eq ptr %i.bmc, null
  %.not10.i = icmp eq ptr %i.bmv, @vm_empty_cc
  %or.cond.i2797 = select i1 %.not.i2796, i1 true, i1 %.not10.i
  br i1 %or.cond.i2797, label %vm_sendish.exit2534, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.bmw = ptrtoint ptr %i.bmv to i64             ; 2 uses
  %i.bmx = icmp eq ptr %i.bmv, null
  %i.bmy = and i64 %i.bmw, 7
  %i.bmz = icmp ne i64 %i.bmy, 0
  %i.bna = or i1 %i.bmx, %i.bmz
  br i1 %i.bna, label %vm_sendish.exit2534, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  call void @rb_gc_writebarrier(i64 noundef %i.bmd, i64 noundef %i.bmw) #23, !inline_history !358
  br label %vm_sendish.exit2534

vm_sendish.exit2534:                              ; preds = %bb.kp, %bb.ko, %bb.kn, %bb.km
  %.0.i.i2528 = phi ptr [ %i.bmo, %bb.km ], [ %i.bmv, %bb.kn ], [ %i.bmv, %bb.ko ], [ %i.bmv, %bb.kp ] ; 2 uses
  store ptr %.0.i.i2528, ptr %i.y, align 8, !tbaa !233
  %i.bnb = getelementptr i8, ptr %.0.i.i2528, i64 24
  %.0.i.val.i2529 = load ptr, ptr %i.bnb, align 8, !tbaa !234
  %i.bnc = call i64 %.0.i.val.i2529(ptr noundef %0, ptr noundef nonnull %.02257, ptr noundef nonnull %3) #23, !inline_history !232 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.bnd = icmp eq i64 %i.bnc, 36
  br i1 %i.bnd, label %bb.kq, label %.thread2858

bb.kq:                                            ; preds = %vm_sendish.exit2534
  %i.bne = load ptr, ptr %i.p, align 8, !tbaa !70 ; 7 uses
  %.not2322 = icmp eq ptr %.02257, %i.bne
  br i1 %.not2322, label %.thread2856, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.bnf = load i8, ptr @rb_yjit_enabled_p, align 1, !tbaa !269, !range !114, !noundef !64
  %i.bng = trunc nuw i8 %i.bnf to i1
  br i1 %i.bng, label %bb.ks, label %bb.la

bb.ks:                                            ; preds = %bb.kr
  %i.bnh = getelementptr i8, ptr %i.bne, i64 16
  %i.bni = load ptr, ptr %i.bnh, align 8, !tbaa !123 ; 2 uses
  %i.bnj = getelementptr i8, ptr %i.bni, i64 16
  %i.bnk = load ptr, ptr %i.bnj, align 8, !tbaa !124 ; 4 uses
  %i.bnl = getelementptr i8, ptr %i.bnk, i64 304  ; 2 uses
  %i.bnm = load ptr, ptr %i.bnl, align 8, !tbaa !270 ; 2 uses
  %i.bnn = icmp eq ptr %i.bnm, null
  br i1 %i.bnn, label %bb.kt, label %yjit_compile.exit2537.thread

bb.kt:                                            ; preds = %bb.ks
  %i.bno = getelementptr i8, ptr %i.bnk, i64 312  ; 2 uses
  %i.bnp = load i64, ptr %i.bno, align 8, !tbaa !271 ; 2 uses
  %i.bnq = add i64 %i.bnp, 1                      ; 3 uses
  store i64 %i.bnq, ptr %i.bno, align 8, !tbaa !271
  %i.bnr = load i64, ptr @yjit_total_entry_hits, align 8, !tbaa !11
  %i.bns = add i64 %i.bnr, 1                      ; 3 uses
  store i64 %i.bns, ptr @yjit_total_entry_hits, align 8, !tbaa !11
  %i.bnt = add i64 %i.bnp, 21
  %i.bnu = load i64, ptr @rb_yjit_call_threshold, align 8, !tbaa !11 ; 2 uses
  %i.bnv = icmp eq i64 %i.bnt, %i.bnu
  br i1 %i.bnv, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  %i.bnw = getelementptr i8, ptr %i.bnk, i64 344
  store i64 %i.bns, ptr %i.bnw, align 8, !tbaa !272
  %.pr.i.i2536 = load i64, ptr @rb_yjit_call_threshold, align 8, !tbaa !11
  br label %bb.kv

bb.kv:                                            ; preds = %bb.ku, %bb.kt
  %i.bnx = phi i64 [ %.pr.i.i2536, %bb.ku ], [ %i.bnu, %bb.kt ]
end_hunk_3
begin_hunk_4_@vm_exec_core:bb.a
  %.pre3185 = load ptr, ptr %i.p, align 8, !tbaa !70 ; 2 uses
  br i1 %.not2318, label %.thread2870, label %zjit_compile.exit2560.thread

zjit_compile.exit2560.thread:                     ; preds = %zjit_compile.exit2560, %bb.nv
  %i.cbk = phi ptr [ %i.bzp, %bb.nv ], [ %.pre3185, %zjit_compile.exit2560 ]
  %i.cbl = phi ptr [ %i.cba, %bb.nv ], [ %.pr2867, %zjit_compile.exit2560 ]
  %i.cbm = call i64 %i.cav(ptr noundef nonnull %0, ptr noundef %i.cbk, ptr noundef nonnull %i.cbl) #23
  br label %bb.oa

bb.oa:                                            ; preds = %zjit_compile.exit2560.thread, %yjit_compile.exit2558.thread
  %.02270 = phi i64 [ %i.car, %yjit_compile.exit2558.thread ], [ %i.cbm, %zjit_compile.exit2560.thread ] ; 2 uses
  %i.cbn = icmp eq i64 %.02270, 36
  br i1 %i.cbn, label %..thread2870_crit_edge, label %.thread2872

..thread2870_crit_edge:                           ; preds = %bb.oa
  %.pre3184 = load ptr, ptr %i.p, align 8, !tbaa !70
  br label %.thread2870

.thread2870:                                      ; preds = %..thread2870_crit_edge, %bb.nk, %bb.nu, %zjit_compile.exit2560, %yjit_compile.exit2558
  %i.cbo = phi ptr [ %.pre3184, %..thread2870_crit_edge ], [ %i.bzp, %bb.nk ], [ %i.bzp, %bb.nu ], [ %.pre3185, %zjit_compile.exit2560 ], [ %.pre3186, %yjit_compile.exit2558 ] ; 2 uses
  %i.cbp = load ptr, ptr %i.cbo, align 8, !tbaa !146
  br label %.backedge.backedge

.thread2872:                                      ; preds = %bb.nj, %bb.oa
  %.022702874 = phi i64 [ %.02270, %bb.oa ], [ %i.bzn, %bb.nj ]
  %i.cbq = load ptr, ptr %i.bzk, align 8, !tbaa !73 ; 2 uses
  store i64 %.022702874, ptr %i.cbq, align 8, !tbaa !11
  %i.cbr = getelementptr i8, ptr %i.cbq, i64 8
  store ptr %i.cbr, ptr %i.bzk, align 8, !tbaa !73
  br label %.backedge.backedge

bb.ob:                                            ; preds = %.backedge, %bb.ahy
  %i.cbs = getelementptr i8, ptr %.6, i64 8
  %i.cbt = load i64, ptr %i.cbs, align 8, !tbaa !11
  %i.cbu = inttoptr i64 %i.cbt to ptr             ; 2 uses
  %i.cbv = getelementptr i8, ptr %.6, i64 16
  %i.cbw = load i64, ptr %i.cbv, align 8, !tbaa !11
  %i.cbx = inttoptr i64 %i.cbw to ptr
  %i.cby = getelementptr i8, ptr %.6, i64 24      ; 2 uses
  store ptr %i.cby, ptr %.02257, align 8, !tbaa !146
  %i.cbz = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.cca = call fastcc i64 @vm_caller_setup_fwd_args(ptr noundef %0, ptr noundef nonnull %.02257, ptr noundef %i.cbu, ptr noundef %i.cbx, i32 noundef 1, ptr noundef %8, ptr noundef %9)
  %i.ccb = call fastcc i64 @vm_sendish(ptr noundef %0, ptr noundef nonnull %.02257, ptr noundef nonnull %8, i64 noundef %i.cca, i32 noundef 2) ; 2 uses
  %i.ccc = icmp eq i64 %i.ccb, 36
  br i1 %i.ccc, label %bb.oc, label %bb.os

bb.oc:                                            ; preds = %bb.ob
  %i.ccd = load ptr, ptr %i.p, align 8, !tbaa !70 ; 5 uses
  %.not2309 = icmp eq ptr %.02257, %i.ccd
  br i1 %.not2309, label %bb.os, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.cce = load i8, ptr @rb_yjit_enabled_p, align 1, !tbaa !269, !range !114, !noundef !64
  %i.ccf = trunc nuw i8 %i.cce to i1
  br i1 %i.ccf, label %bb.oe, label %bb.om

bb.oe:                                            ; preds = %bb.od
  %i.ccg = getelementptr i8, ptr %i.ccd, i64 16
  %i.cch = load ptr, ptr %i.ccg, align 8, !tbaa !123 ; 2 uses
  %i.cci = getelementptr i8, ptr %i.cch, i64 16
  %i.ccj = load ptr, ptr %i.cci, align 8, !tbaa !124 ; 4 uses
  %i.cck = getelementptr i8, ptr %i.ccj, i64 304  ; 2 uses
  %i.ccl = load ptr, ptr %i.cck, align 8, !tbaa !270 ; 2 uses
  %i.ccm = icmp eq ptr %i.ccl, null
  br i1 %i.ccm, label %bb.of, label %yjit_compile.exit2563.thread

bb.of:                                            ; preds = %bb.oe
  %i.ccn = getelementptr i8, ptr %i.ccj, i64 312  ; 2 uses
  %i.cco = load i64, ptr %i.ccn, align 8, !tbaa !271 ; 2 uses
  %i.ccp = add i64 %i.cco, 1                      ; 3 uses
  store i64 %i.ccp, ptr %i.ccn, align 8, !tbaa !271
  %i.ccq = load i64, ptr @yjit_total_entry_hits, align 8, !tbaa !11
  %i.ccr = add i64 %i.ccq, 1                      ; 3 uses
  store i64 %i.ccr, ptr @yjit_total_entry_hits, align 8, !tbaa !11
  %i.ccs = add i64 %i.cco, 21
  %i.cct = load i64, ptr @rb_yjit_call_threshold, align 8, !tbaa !11 ; 2 uses
  %i.ccu = icmp eq i64 %i.ccs, %i.cct
  br i1 %i.ccu, label %bb.og, label %bb.oh

bb.og:                                            ; preds = %bb.of
  %i.ccv = getelementptr i8, ptr %i.ccj, i64 344
  store i64 %i.ccr, ptr %i.ccv, align 8, !tbaa !272
  %.pr.i.i2562 = load i64, ptr @rb_yjit_call_threshold, align 8, !tbaa !11
  br label %bb.oh

bb.oh:                                            ; preds = %bb.og, %bb.of
  %i.ccw = phi i64 [ %.pr.i.i2562, %bb.og ], [ %i.cct, %bb.of ]
  %i.ccx = icmp eq i64 %i.ccp, %i.ccw
  br i1 %i.ccx, label %bb.oi, label %yjit_compile.exit2563

bb.oi:                                            ; preds = %bb.oh
  %i.ccy = icmp ult i64 %i.ccp, 20
  br i1 %i.ccy, label %bb.ol, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  %i.ccz = getelementptr i8, ptr %i.ccj, i64 344
  %i.cda = load i64, ptr %i.ccz, align 8, !tbaa !272
  %i.cdb = sub i64 %i.ccr, %i.cda
  %i.cdc = load i64, ptr @rb_yjit_cold_threshold, align 8, !tbaa !11
  %.not.i.i2561 = icmp ugt i64 %i.cdb, %i.cdc
  br i1 %.not.i.i2561, label %bb.ok, label %bb.ol

bb.ok:                                            ; preds = %bb.oj
  call void @rb_yjit_incr_counter(ptr noundef nonnull @.str.195) #23
  br label %yjit_compile.exit2563

bb.ol:                                            ; preds = %bb.oj, %bb.oi
  call void @rb_yjit_compile_iseq(ptr noundef nonnull %i.cch, ptr noundef nonnull %0, i1 noundef zeroext false) #23
  br label %yjit_compile.exit2563

yjit_compile.exit2563:                            ; preds = %bb.oh, %bb.ok, %bb.ol
  %.pr2875 = load ptr, ptr %i.cck, align 8, !tbaa !270 ; 2 uses
  %.not2312 = icmp eq ptr %.pr2875, null
  br i1 %.not2312, label %bb.os, label %yjit_compile.exit2563.yjit_compile.exit2563.thread_crit_edge

yjit_compile.exit2563.yjit_compile.exit2563.thread_crit_edge: ; preds = %yjit_compile.exit2563
  %.pre3181 = load ptr, ptr %i.p, align 8, !tbaa !70
  br label %yjit_compile.exit2563.thread

yjit_compile.exit2563.thread:                     ; preds = %yjit_compile.exit2563.yjit_compile.exit2563.thread_crit_edge, %bb.oe
  %i.cdd = phi ptr [ %.pre3181, %yjit_compile.exit2563.yjit_compile.exit2563.thread_crit_edge ], [ %i.ccd, %bb.oe ]
  %i.cde = phi ptr [ %.pr2875, %yjit_compile.exit2563.yjit_compile.exit2563.thread_crit_edge ], [ %i.ccl, %bb.oe ]
  %i.cdf = call i64 %i.cde(ptr noundef nonnull %0, ptr noundef %i.cdd) #23 ; 2 uses
  %i.cdg = load ptr, ptr %i.w, align 8, !tbaa !67
  %i.cdh = getelementptr i8, ptr %i.cdg, i64 64
  %i.cdi = load i32, ptr %i.cdh, align 8, !tbaa !68
  %.not2313 = icmp eq i32 %i.cdi, 0
  br i1 %.not2313, label %bb.os, label %.loopexit2951

bb.om:                                            ; preds = %bb.od
  %i.cdj = load ptr, ptr @rb_zjit_entry, align 8, !tbaa !176 ; 2 uses
  %.not2310 = icmp eq ptr %i.cdj, null
  br i1 %.not2310, label %bb.os, label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.cdk = getelementptr i8, ptr %i.ccd, i64 16
  %.val2353.val = load ptr, ptr %i.cdk, align 8, !tbaa !123 ; 3 uses
  %i.cdl = getelementptr i8, ptr %.val2353.val, i64 16
  %i.cdm = load ptr, ptr %i.cdl, align 8, !tbaa !124 ; 2 uses
  %i.cdn = getelementptr i8, ptr %i.cdm, i64 304  ; 2 uses
  %i.cdo = load ptr, ptr %i.cdn, align 8, !tbaa !270 ; 2 uses
  %i.cdp = icmp eq ptr %i.cdo, null
  br i1 %i.cdp, label %bb.oo, label %zjit_compile.exit2565.thread

bb.oo:                                            ; preds = %bb.on
  %i.cdq = getelementptr i8, ptr %i.cdm, i64 312  ; 3 uses
  %i.cdr = load i64, ptr %i.cdq, align 8, !tbaa !271
  %i.cds = add i64 %i.cdr, 1                      ; 3 uses
  store i64 %i.cds, ptr %i.cdq, align 8, !tbaa !271
  %i.cdt = load i64, ptr @rb_zjit_profile_threshold, align 8, !tbaa !11
  %i.cdu = icmp eq i64 %i.cds, %i.cdt
  br i1 %i.cdu, label %bb.op, label %bb.oq

bb.op:                                            ; preds = %bb.oo
  call void @rb_zjit_profile_enable(ptr noundef nonnull %.val2353.val) #23
  %.pre.i2564 = load i64, ptr %i.cdq, align 8, !tbaa !271
  br label %bb.oq

bb.oq:                                            ; preds = %bb.op, %bb.oo
  %i.cdv = phi i64 [ %.pre.i2564, %bb.op ], [ %i.cds, %bb.oo ]
  %i.cdw = load i64, ptr @rb_zjit_call_threshold, align 8, !tbaa !11
  %i.cdx = icmp eq i64 %i.cdv, %i.cdw
  br i1 %i.cdx, label %bb.or, label %zjit_compile.exit2565

bb.or:                                            ; preds = %bb.oq
  call void @rb_zjit_compile_iseq(ptr noundef nonnull %.val2353.val, i1 noundef zeroext false) #23
  br label %zjit_compile.exit2565

zjit_compile.exit2565:                            ; preds = %bb.oq, %bb.or
  %.pr2877 = load ptr, ptr %i.cdn, align 8, !tbaa !270 ; 2 uses
  %.not2311 = icmp eq ptr %.pr2877, null
  br i1 %.not2311, label %bb.os, label %zjit_compile.exit2565.zjit_compile.exit2565.thread_crit_edge

zjit_compile.exit2565.zjit_compile.exit2565.thread_crit_edge: ; preds = %zjit_compile.exit2565
  %.pre3180 = load ptr, ptr %i.p, align 8, !tbaa !70
  br label %zjit_compile.exit2565.thread

zjit_compile.exit2565.thread:                     ; preds = %zjit_compile.exit2565.zjit_compile.exit2565.thread_crit_edge, %bb.on
  %i.cdy = phi ptr [ %.pre3180, %zjit_compile.exit2565.zjit_compile.exit2565.thread_crit_edge ], [ %i.ccd, %bb.on ]
  %i.cdz = phi ptr [ %.pr2877, %zjit_compile.exit2565.zjit_compile.exit2565.thread_crit_edge ], [ %i.cdo, %bb.on ]
  %i.cea = call i64 %i.cdj(ptr noundef nonnull %0, ptr noundef %i.cdy, ptr noundef nonnull %i.cdz) #23
  br label %bb.os

bb.os:                                            ; preds = %bb.ob, %bb.oc, %bb.om, %zjit_compile.exit2565.thread, %zjit_compile.exit2565, %yjit_compile.exit2563, %yjit_compile.exit2563.thread
  %.02271 = phi i64 [ %i.cdf, %yjit_compile.exit2563.thread ], [ 36, %yjit_compile.exit2563 ], [ %i.cea, %zjit_compile.exit2565.thread ], [ 36, %zjit_compile.exit2565 ], [ 36, %bb.om ], [ 36, %bb.oc ], [ %i.ccb, %bb.ob ] ; 2 uses
  %i.ceb = getelementptr i8, ptr %i.cbu, i64 8    ; 2 uses
  %i.cec = load ptr, ptr %i.ceb, align 8, !tbaa !182
  %i.ced = load ptr, ptr %i.x, align 8, !tbaa !279 ; 3 uses
  %.not2314 = icmp eq ptr %i.cec, %i.ced
  br i1 %.not2314, label %rb_obj_write.exit2566, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.cee = load i64, ptr %i.ced, align 8, !tbaa !77
  %i.cef = and i64 %i.cee, 1048576
  %.not2940 = icmp eq i64 %i.cef, 0
  br i1 %.not2940, label %bb.ou, label %rb_obj_write.exit2566

bb.ou:                                            ; preds = %bb.ot
  %i.ceg = getelementptr i8, ptr %.02257, i64 16
  %i.ceh = load ptr, ptr %i.ceg, align 8, !tbaa !123
  %i.cei = ptrtoint ptr %i.ced to i64             ; 3 uses
  store i64 %i.cei, ptr %i.ceb, align 8, !tbaa !11
  %13 = and i64 %i.cei, 7
  %.not2941 = icmp eq i64 %13, 0
  br i1 %.not2941, label %14, label %rb_obj_write.exit2566

14:                                               ; preds = %bb.ou
  %15 = ptrtoint ptr %i.ceh to i64
  call void @rb_gc_writebarrier(i64 noundef %15, i64 noundef %i.cei) #23
  br label %rb_obj_write.exit2566

rb_obj_write.exit2566:                            ; preds = %14, %bb.ou, %bb.ot, %bb.os
  %i.cej = icmp eq i64 %.02271, 36
  br i1 %i.cej, label %bb.ov, label %bb.ow

bb.ov:                                            ; preds = %rb_obj_write.exit2566
  %i.cek = load ptr, ptr %i.p, align 8, !tbaa !70 ; 2 uses
  %i.cel = load ptr, ptr %i.cek, align 8, !tbaa !146
  br label %.backedge.backedge

bb.ow:                                            ; preds = %rb_obj_write.exit2566
  %i.cem = load ptr, ptr %i.cbz, align 8, !tbaa !73 ; 2 uses
  store i64 %.02271, ptr %i.cem, align 8, !tbaa !11
  %i.cen = getelementptr i8, ptr %i.cem, i64 8
  store ptr %i.cen, ptr %i.cbz, align 8, !tbaa !73
  br label %.backedge.backedge

bb.ox:                                            ; preds = %.backedge, %bb.ahz, %bb.ael
  %i.ceo = getelementptr i8, ptr %.6, i64 8
  %i.cep = load i64, ptr %i.ceo, align 8, !tbaa !11
  %i.ceq = inttoptr i64 %i.cep to ptr
  %i.cer = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.cer, ptr %.02257, align 8, !tbaa !146
  %i.ces = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.cet = call fastcc i64 @vm_sendish(ptr noundef %0, ptr noundef nonnull %.02257, ptr noundef %i.ceq, i64 noundef 0, i32 noundef 1) ; 2 uses
  %i.ceu = icmp eq i64 %i.cet, 36
  br i1 %i.ceu, label %bb.oy, label %.thread2886

bb.oy:                                            ; preds = %bb.ox
  %i.cev = load ptr, ptr %i.p, align 8, !tbaa !70 ; 7 uses
  %.not2304 = icmp eq ptr %.02257, %i.cev
  br i1 %.not2304, label %.thread2884, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.cew = load i8, ptr @rb_yjit_enabled_p, align 1, !tbaa !269, !range !114, !noundef !64
  %i.cex = trunc nuw i8 %i.cew to i1
  br i1 %i.cex, label %bb.pa, label %bb.pi

bb.pa:                                            ; preds = %bb.oz
  %i.cey = getelementptr i8, ptr %i.cev, i64 16
  %i.cez = load ptr, ptr %i.cey, align 8, !tbaa !123 ; 2 uses
  %i.cfa = getelementptr i8, ptr %i.cez, i64 16
  %i.cfb = load ptr, ptr %i.cfa, align 8, !tbaa !124 ; 4 uses
  %i.cfc = getelementptr i8, ptr %i.cfb, i64 304  ; 2 uses
  %i.cfd = load ptr, ptr %i.cfc, align 8, !tbaa !270 ; 2 uses
  %i.cfe = icmp eq ptr %i.cfd, null
  br i1 %i.cfe, label %bb.pb, label %yjit_compile.exit2569.thread

bb.pb:                                            ; preds = %bb.pa
  %i.cff = getelementptr i8, ptr %i.cfb, i64 312  ; 2 uses
  %i.cfg = load i64, ptr %i.cff, align 8, !tbaa !271 ; 2 uses
  %i.cfh = add i64 %i.cfg, 1                      ; 3 uses
  store i64 %i.cfh, ptr %i.cff, align 8, !tbaa !271
  %i.cfi = load i64, ptr @yjit_total_entry_hits, align 8, !tbaa !11
  %i.cfj = add i64 %i.cfi, 1                      ; 3 uses
  store i64 %i.cfj, ptr @yjit_total_entry_hits, align 8, !tbaa !11
  %i.cfk = add i64 %i.cfg, 21
  %i.cfl = load i64, ptr @rb_yjit_call_threshold, align 8, !tbaa !11 ; 2 uses
  %i.cfm = icmp eq i64 %i.cfk, %i.cfl
  br i1 %i.cfm, label %bb.pc, label %bb.pd

bb.pc:                                            ; preds = %bb.pb
  %i.cfn = getelementptr i8, ptr %i.cfb, i64 344
  store i64 %i.cfj, ptr %i.cfn, align 8, !tbaa !272
  %.pr.i.i2568 = load i64, ptr @rb_yjit_call_threshold, align 8, !tbaa !11
  br label %bb.pd

bb.pd:                                            ; preds = %bb.pc, %bb.pb
  %i.cfo = phi i64 [ %.pr.i.i2568, %bb.pc ], [ %i.cfl, %bb.pb ]
  %i.cfp = icmp eq i64 %i.cfh, %i.cfo
  br i1 %i.cfp, label %bb.pe, label %yjit_compile.exit2569

bb.pe:                                            ; preds = %bb.pd
  %i.cfq = icmp ult i64 %i.cfh, 20
  br i1 %i.cfq, label %bb.ph, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  %i.cfr = getelementptr i8, ptr %i.cfb, i64 344
  %i.cfs = load i64, ptr %i.cfr, align 8, !tbaa !272
  %i.cft = sub i64 %i.cfj, %i.cfs
  %i.cfu = load i64, ptr @rb_yjit_cold_threshold, align 8, !tbaa !11
  %.not.i.i2567 = icmp ugt i64 %i.cft, %i.cfu
  br i1 %.not.i.i2567, label %bb.pg, label %bb.ph

bb.pg:                                            ; preds = %bb.pf
  call void @rb_yjit_incr_counter(ptr noundef nonnull @.str.195) #23
  br label %yjit_compile.exit2569

bb.ph:                                            ; preds = %bb.pf, %bb.pe
  call void @rb_yjit_compile_iseq(ptr noundef nonnull %i.cez, ptr noundef nonnull %0, i1 noundef zeroext false) #23
  br label %yjit_compile.exit2569

yjit_compile.exit2569:                            ; preds = %bb.pd, %bb.pg, %bb.ph
  %.pr2879 = load ptr, ptr %i.cfc, align 8, !tbaa !270 ; 2 uses
  %.not2307 = icmp eq ptr %.pr2879, null
  %.pre3179 = load ptr, ptr %i.p, align 8, !tbaa !70 ; 2 uses
  br i1 %.not2307, label %.thread2884, label %yjit_compile.exit2569.thread

yjit_compile.exit2569.thread:                     ; preds = %yjit_compile.exit2569, %bb.pa
  %i.cfv = phi ptr [ %i.cev, %bb.pa ], [ %.pre3179, %yjit_compile.exit2569 ]
  %i.cfw = phi ptr [ %i.cfd, %bb.pa ], [ %.pr2879, %yjit_compile.exit2569 ]
  %i.cfx = call i64 %i.cfw(ptr noundef nonnull %0, ptr noundef %i.cfv) #23 ; 2 uses
  %i.cfy = load ptr, ptr %i.w, align 8, !tbaa !67
  %i.cfz = getelementptr i8, ptr %i.cfy, i64 64
  %i.cga = load i32, ptr %i.cfz, align 8, !tbaa !68
  %.not2308 = icmp eq i32 %i.cga, 0
  br i1 %.not2308, label %bb.po, label %.loopexit2951

bb.pi:                                            ; preds = %bb.oz
  %i.cgb = load ptr, ptr @rb_zjit_entry, align 8, !tbaa !176 ; 2 uses
  %.not2305 = icmp eq ptr %i.cgb, null
  br i1 %.not2305, label %.thread2884, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.cgc = getelementptr i8, ptr %i.cev, i64 16
  %.val2352.val = load ptr, ptr %i.cgc, align 8, !tbaa !123 ; 3 uses
  %i.cgd = getelementptr i8, ptr %.val2352.val, i64 16
  %i.cge = load ptr, ptr %i.cgd, align 8, !tbaa !124 ; 2 uses
  %i.cgf = getelementptr i8, ptr %i.cge, i64 304  ; 2 uses
  %i.cgg = load ptr, ptr %i.cgf, align 8, !tbaa !270 ; 2 uses
  %i.cgh = icmp eq ptr %i.cgg, null
  br i1 %i.cgh, label %bb.pk, label %zjit_compile.exit2571.thread

bb.pk:                                            ; preds = %bb.pj
  %i.cgi = getelementptr i8, ptr %i.cge, i64 312  ; 3 uses
  %i.cgj = load i64, ptr %i.cgi, align 8, !tbaa !271
  %i.cgk = add i64 %i.cgj, 1                      ; 3 uses
  store i64 %i.cgk, ptr %i.cgi, align 8, !tbaa !271
  %i.cgl = load i64, ptr @rb_zjit_profile_threshold, align 8, !tbaa !11
  %i.cgm = icmp eq i64 %i.cgk, %i.cgl
  br i1 %i.cgm, label %bb.pl, label %bb.pm

bb.pl:                                            ; preds = %bb.pk
  call void @rb_zjit_profile_enable(ptr noundef nonnull %.val2352.val) #23
  %.pre.i2570 = load i64, ptr %i.cgi, align 8, !tbaa !271
  br label %bb.pm

bb.pm:                                            ; preds = %bb.pl, %bb.pk
  %i.cgn = phi i64 [ %.pre.i2570, %bb.pl ], [ %i.cgk, %bb.pk ]
  %i.cgo = load i64, ptr @rb_zjit_call_threshold, align 8, !tbaa !11
  %i.cgp = icmp eq i64 %i.cgn, %i.cgo
  br i1 %i.cgp, label %bb.pn, label %zjit_compile.exit2571

bb.pn:                                            ; preds = %bb.pm
  call void @rb_zjit_compile_iseq(ptr noundef nonnull %.val2352.val, i1 noundef zeroext false) #23
  br label %zjit_compile.exit2571

zjit_compile.exit2571:                            ; preds = %bb.pm, %bb.pn
  %.pr2881 = load ptr, ptr %i.cgf, align 8, !tbaa !270 ; 2 uses
  %.not2306 = icmp eq ptr %.pr2881, null
  %.pre3178 = load ptr, ptr %i.p, align 8, !tbaa !70 ; 2 uses
  br i1 %.not2306, label %.thread2884, label %zjit_compile.exit2571.thread

zjit_compile.exit2571.thread:                     ; preds = %zjit_compile.exit2571, %bb.pj
  %i.cgq = phi ptr [ %i.cev, %bb.pj ], [ %.pre3178, %zjit_compile.exit2571 ]
  %i.cgr = phi ptr [ %i.cgg, %bb.pj ], [ %.pr2881, %zjit_compile.exit2571 ]
  %i.cgs = call i64 %i.cgb(ptr noundef nonnull %0, ptr noundef %i.cgq, ptr noundef nonnull %i.cgr) #23
  br label %bb.po

bb.po:                                            ; preds = %zjit_compile.exit2571.thread, %yjit_compile.exit2569.thread
  %.02272 = phi i64 [ %i.cfx, %yjit_compile.exit2569.thread ], [ %i.cgs, %zjit_compile.exit2571.thread ] ; 2 uses
  %i.cgt = icmp eq i64 %.02272, 36
  br i1 %i.cgt, label %..thread2884_crit_edge, label %.thread2886

..thread2884_crit_edge:                           ; preds = %bb.po
  %.pre3177 = load ptr, ptr %i.p, align 8, !tbaa !70
  br label %.thread2884

.thread2884:                                      ; preds = %..thread2884_crit_edge, %bb.oy, %bb.pi, %zjit_compile.exit2571, %yjit_compile.exit2569
  %i.cgu = phi ptr [ %.pre3177, %..thread2884_crit_edge ], [ %i.cev, %bb.oy ], [ %i.cev, %bb.pi ], [ %.pre3178, %zjit_compile.exit2571 ], [ %.pre3179, %yjit_compile.exit2569 ] ; 2 uses
  %i.cgv = load ptr, ptr %i.cgu, align 8, !tbaa !146
  br label %.backedge.backedge

.thread2886:                                      ; preds = %bb.ox, %bb.po
  %.022722888 = phi i64 [ %.02272, %bb.po ], [ %i.cet, %bb.ox ]
  %i.cgw = load ptr, ptr %i.ces, align 8, !tbaa !73 ; 2 uses
  store i64 %.022722888, ptr %i.cgw, align 8, !tbaa !11
  %i.cgx = getelementptr i8, ptr %i.cgw, i64 8
  store ptr %i.cgx, ptr %i.ces, align 8, !tbaa !73
  br label %.backedge.backedge

bb.pp:                                            ; preds = %.backedge, %bb.aia
  %i.cgy = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.cgz = load ptr, ptr %i.cgy, align 8, !tbaa !73
  %i.cha = getelementptr i8, ptr %i.cgz, i64 -8   ; 4 uses
  %i.chb = load i64, ptr %i.cha, align 8, !tbaa !11 ; 2 uses
  %i.chc = getelementptr i8, ptr %.6, i64 8
  store ptr %i.chc, ptr %.02257, align 8, !tbaa !146
  store ptr %i.cha, ptr %i.cgy, align 8, !tbaa !73
  %i.chd = getelementptr i8, ptr %.02257, i64 16
  %i.che = load ptr, ptr %i.chd, align 8, !tbaa !123 ; 2 uses
  %.not.i2572 = icmp eq ptr %i.che, null
  br i1 %.not.i2572, label %vm_base_ptr.exit, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  %i.chf = getelementptr i8, ptr %.02257, i64 32
  %.val23.i = load ptr, ptr %i.chf, align 8, !tbaa !15 ; 2 uses
  %.val23.val.i = load i64, ptr %.val23.i, align 8, !tbaa !11
  %i.chg = trunc i64 %.val23.val.i to i32         ; 3 uses
  %i.chh = and i32 %i.chg, 128
  %.not19.not.i = icmp eq i32 %i.chh, 0
  br i1 %.not19.not.i, label %bb.pr, label %vm_base_ptr.exit

bb.pr:                                            ; preds = %bb.pq
  %i.chi = getelementptr i8, ptr %.02257, i64 64
  %i.chj = load ptr, ptr %i.chi, align 8, !tbaa !73
  %i.chk = getelementptr i8, ptr %i.che, i64 16
  %i.chl = load ptr, ptr %i.chk, align 8, !tbaa !124 ; 4 uses
  %i.chm = getelementptr i8, ptr %i.chl, i64 240
  %i.chn = load i32, ptr %i.chm, align 8, !tbaa !190 ; 2 uses
  %i.cho = zext i32 %i.chn to i64
  %i.chp = getelementptr [8 x i8], ptr %i.chj, i64 %i.cho
  %i.chq = getelementptr i8, ptr %i.chp, i64 24   ; 2 uses
  %i.chr = getelementptr i8, ptr %i.chl, i64 16
  %i.chs = load i16, ptr %i.chr, align 8
  %i.cht = and i16 %i.chs, 8192
  %.not20.i = icmp eq i16 %i.cht, 0
  %i.chu = and i32 %i.chg, 2
  %.not21.i = icmp eq i32 %i.chu, 0
  %or.cond.i = or i1 %.not21.i, %.not20.i
  br i1 %or.cond.i, label %bb.pv, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  %i.chv = getelementptr i8, ptr %i.chl, i64 20
  %i.chw = load i32, ptr %i.chv, align 4, !tbaa !191
  %reass.sub = sub i32 %i.chw, %i.chn
  %i.chx = add i32 %reass.sub, -3
  %i.chy = sext i32 %i.chx to i64
  %i.chz = getelementptr [8 x i8], ptr %.val23.i, i64 %i.chy
  %i.cia = load i64, ptr %i.chz, align 8, !tbaa !11 ; 3 uses
  %.not.i.i.i2574 = trunc i64 %i.cia to i1
  br i1 %.not.i.i.i2574, label %bb.pt, label %bb.pu

bb.pt:                                            ; preds = %bb.ps
  %i.cib = lshr i64 %i.cia, 1
  %i.cic = and i64 %i.cib, 32767
  br label %vm_ci_argc.exit.i2575

bb.pu:                                            ; preds = %bb.ps
  %i.cid = inttoptr i64 %i.cia to ptr
  %i.cie = getelementptr i8, ptr %i.cid, i64 32
  %i.cif = load i64, ptr %i.cie, align 8, !tbaa !174
  %i.cig = and i64 %i.cif, 4294967295
  br label %vm_ci_argc.exit.i2575

vm_ci_argc.exit.i2575:                            ; preds = %bb.pu, %bb.pt
  %.0.i.i2576 = phi i64 [ %i.cic, %bb.pt ], [ %i.cig, %bb.pu ]
  %i.cih = getelementptr [8 x i8], ptr %i.chq, i64 %.0.i.i2576
  br label %bb.pv

bb.pv:                                            ; preds = %vm_ci_argc.exit.i2575, %bb.pr
  %.018.i = phi ptr [ %i.cih, %vm_ci_argc.exit.i2575 ], [ %i.chq, %bb.pr ]
  %i.cii = load i32, ptr %i.chl, align 8, !tbaa !127
  %i.cij = icmp ne i32 %i.cii, 1
  %i.cik = and i32 %i.chg, 64
  %.not22.i = icmp eq i32 %i.cik, 0
  %or.cond25.i = and i1 %.not22.i, %i.cij
  %spec.select.idx.i = select i1 %or.cond25.i, i64 0, i64 8
  %spec.select.i2577 = getelementptr i8, ptr %.018.i, i64 %spec.select.idx.i
  br label %vm_base_ptr.exit

vm_base_ptr.exit:                                 ; preds = %bb.pp, %bb.pq, %bb.pv
  %.0.i2573 = phi ptr [ %spec.select.i2577, %bb.pv ], [ null, %bb.pp ], [ null, %bb.pq ] ; 2 uses
  %.not2302 = icmp eq ptr %i.cha, %.0.i2573
  br i1 %.not2302, label %bb.px, label %bb.pw

bb.pw:                                            ; preds = %vm_base_ptr.exit
  %.val2358 = load ptr, ptr %0, align 8, !tbaa !121
  call fastcc void @vm_stack_consistency_error(ptr %.val2358, ptr nonnull %i.cha, ptr noundef %.0.i2573) #58
  unreachable

bb.px:                                            ; preds = %vm_base_ptr.exit
  %i.cil = getelementptr i8, ptr %.02257, i64 32
  %i.cim = load ptr, ptr %i.cil, align 8, !tbaa !15
  %i.cin = load i64, ptr %i.cim, align 8, !tbaa !11
  %i.cio = load atomic volatile i32, ptr %i.s monotonic, align 4
  %i.cip = load i32, ptr %i.t, align 4, !tbaa !71
  %i.ciq = xor i32 %i.cip, -1
  %i.cir = and i32 %i.cio, %i.ciq
  %.not.i.i2578 = icmp eq i32 %i.cir, 0
  br i1 %.not.i.i2578, label %vm_pop_frame.exit, label %bb.py, !prof !72

bb.py:                                            ; preds = %bb.px
  %.val.i.i2579 = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.cis = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i2579, i32 noundef 0) #23 ; 0 uses
  br label %vm_pop_frame.exit

vm_pop_frame.exit:                                ; preds = %bb.px, %bb.py
  %i.cit = getelementptr i8, ptr %.02257, i64 56  ; 3 uses
  store ptr %i.cit, ptr %i.p, align 8, !tbaa !70
  %i.ciu = and i64 %i.cin, 32
  %.not2303 = icmp eq i64 %i.ciu, 0
  br i1 %.not2303, label %bb.pz, label %.loopexit2951

bb.pz:                                            ; preds = %vm_pop_frame.exit
  %i.civ = load ptr, ptr %i.cit, align 8, !tbaa !146
  %i.ciw = getelementptr i8, ptr %.02257, i64 64  ; 2 uses
  %i.cix = load ptr, ptr %i.ciw, align 8, !tbaa !73 ; 2 uses
  store i64 %i.chb, ptr %i.cix, align 8, !tbaa !11
  %i.ciy = getelementptr i8, ptr %i.cix, i64 8
  store ptr %i.ciy, ptr %i.ciw, align 8, !tbaa !73
  br label %.backedge.backedge

bb.qa:                                            ; preds = %.backedge, %bb.aib
  %i.ciz = getelementptr i8, ptr %.6, i64 8
  %i.cja = load i64, ptr %i.ciz, align 8, !tbaa !11
  %i.cjb = getelementptr i8, ptr %.02257, i64 8
  %i.cjc = load ptr, ptr %i.cjb, align 8, !tbaa !73
  %i.cjd = getelementptr i8, ptr %i.cjc, i64 -8
  %i.cje = load i64, ptr %i.cjd, align 8, !tbaa !11
  %i.cjf = getelementptr i8, ptr %.6, i64 16
  store ptr %i.cjf, ptr %.02257, align 8, !tbaa !146
  %i.cjg = call fastcc i64 @vm_throw(ptr noundef %0, ptr noundef nonnull %.02257, i64 noundef %i.cja, i64 noundef %i.cje)
  br label %.loopexit2951

bb.qb:                                            ; preds = %.backedge, %bb.aic
  %i.cjh = getelementptr i8, ptr %.6, i64 8
  %i.cji = load i64, ptr %i.cjh, align 8, !tbaa !11
  %i.cjj = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.cjj, ptr %.02257, align 8, !tbaa !146
  %i.cjk = load atomic volatile i32, ptr %i.s monotonic, align 4
  %i.cjl = load i32, ptr %i.t, align 4, !tbaa !71
  %i.cjm = xor i32 %i.cjl, -1
  %i.cjn = and i32 %i.cjk, %i.cjm
  %.not.i2580 = icmp eq i32 %i.cjn, 0
  br i1 %.not.i2580, label %rb_vm_check_ints.exit, label %bb.qc, !prof !72

bb.qc:                                            ; preds = %bb.qb
  %.val.i2581 = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.cjo = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i2581, i32 noundef 0) #23 ; 0 uses
  br label %rb_vm_check_ints.exit

rb_vm_check_ints.exit:                            ; preds = %bb.qb, %bb.qc
  %i.cjp = getelementptr [8 x i8], ptr %i.cjj, i64 %i.cji ; 2 uses
  store ptr %i.cjp, ptr %.02257, align 8, !tbaa !146
  br label %.backedge.backedge

bb.qd:                                            ; preds = %.backedge, %bb.aid
  %i.cjq = getelementptr i8, ptr %.6, i64 8
  %i.cjr = load i64, ptr %i.cjq, align 8, !tbaa !11
  %i.cjs = getelementptr i8, ptr %.02257, i64 8   ; 3 uses
  %i.cjt = load ptr, ptr %i.cjs, align 8, !tbaa !73 ; 3 uses
  %i.cju = getelementptr i8, ptr %i.cjt, i64 -8
  %i.cjv = load i64, ptr %i.cju, align 8, !tbaa !11
  %i.cjw = getelementptr i8, ptr %.6, i64 16      ; 3 uses
  store ptr %i.cjw, ptr %.02257, align 8, !tbaa !146
  %i.cjx = and i64 %i.cjv, -5
  %.not2939 = icmp eq i64 %i.cjx, 0
  br i1 %.not2939, label %bb.qg, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  %i.cjy = load atomic volatile i32, ptr %i.s monotonic, align 4
  %i.cjz = load i32, ptr %i.t, align 4, !tbaa !71
  %i.cka = xor i32 %i.cjz, -1
  %i.ckb = and i32 %i.cjy, %i.cka
  %.not.i2582 = icmp eq i32 %i.ckb, 0
  br i1 %.not.i2582, label %rb_vm_check_ints.exit2584, label %bb.qf, !prof !72

bb.qf:                                            ; preds = %bb.qe
  %.val.i2583 = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.ckc = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i2583, i32 noundef 0) #23 ; 0 uses
  %.pre3174.pre = load ptr, ptr %i.cjs, align 8, !tbaa !73
  br label %rb_vm_check_ints.exit2584

rb_vm_check_ints.exit2584:                        ; preds = %bb.qe, %bb.qf
  %.pre3174 = phi ptr [ %i.cjt, %bb.qe ], [ %.pre3174.pre, %bb.qf ]
  %i.ckd = getelementptr [8 x i8], ptr %i.cjw, i64 %i.cjr ; 2 uses
  store ptr %i.ckd, ptr %.02257, align 8, !tbaa !146
  br label %bb.qg

bb.qg:                                            ; preds = %rb_vm_check_ints.exit2584, %bb.qd
  %i.cke = phi ptr [ %.pre3174, %rb_vm_check_ints.exit2584 ], [ %i.cjt, %bb.qd ]
  %.2 = phi ptr [ %i.ckd, %rb_vm_check_ints.exit2584 ], [ %i.cjw, %bb.qd ]
  %i.ckf = getelementptr i8, ptr %i.cke, i64 -8
  store ptr %i.ckf, ptr %i.cjs, align 8, !tbaa !73
  br label %.backedge.backedge

bb.qh:                                            ; preds = %.backedge, %bb.aie
  %i.ckg = getelementptr i8, ptr %.6, i64 8
  %i.ckh = load i64, ptr %i.ckg, align 8, !tbaa !11
  %i.cki = getelementptr i8, ptr %.02257, i64 8   ; 3 uses
  %i.ckj = load ptr, ptr %i.cki, align 8, !tbaa !73 ; 3 uses
  %i.ckk = getelementptr i8, ptr %i.ckj, i64 -8
  %i.ckl = load i64, ptr %i.ckk, align 8, !tbaa !11
  %i.ckm = getelementptr i8, ptr %.6, i64 16      ; 3 uses
  store ptr %i.ckm, ptr %.02257, align 8, !tbaa !146
  %i.ckn = and i64 %i.ckl, -5
  %.not2938 = icmp eq i64 %i.ckn, 0
  br i1 %.not2938, label %bb.qi, label %bb.qk

bb.qi:                                            ; preds = %bb.qh
  %i.cko = load atomic volatile i32, ptr %i.s monotonic, align 4
  %i.ckp = load i32, ptr %i.t, align 4, !tbaa !71
  %i.ckq = xor i32 %i.ckp, -1
  %i.ckr = and i32 %i.cko, %i.ckq
  %.not.i2585 = icmp eq i32 %i.ckr, 0
  br i1 %.not.i2585, label %rb_vm_check_ints.exit2587, label %bb.qj, !prof !72

bb.qj:                                            ; preds = %bb.qi
  %.val.i2586 = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.cks = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i2586, i32 noundef 0) #23 ; 0 uses
  %.pre3173.pre = load ptr, ptr %i.cki, align 8, !tbaa !73
  br label %rb_vm_check_ints.exit2587

rb_vm_check_ints.exit2587:                        ; preds = %bb.qi, %bb.qj
  %.pre3173 = phi ptr [ %i.ckj, %bb.qi ], [ %.pre3173.pre, %bb.qj ]
  %i.ckt = getelementptr [8 x i8], ptr %i.ckm, i64 %i.ckh ; 2 uses
  store ptr %i.ckt, ptr %.02257, align 8, !tbaa !146
  br label %bb.qk

bb.qk:                                            ; preds = %rb_vm_check_ints.exit2587, %bb.qh
  %i.cku = phi ptr [ %i.ckj, %bb.qh ], [ %.pre3173, %rb_vm_check_ints.exit2587 ]
  %.3 = phi ptr [ %i.ckm, %bb.qh ], [ %i.ckt, %rb_vm_check_ints.exit2587 ]
  %i.ckv = getelementptr i8, ptr %i.cku, i64 -8
  store ptr %i.ckv, ptr %i.cki, align 8, !tbaa !73
  br label %.backedge.backedge

bb.ql:                                            ; preds = %.backedge, %bb.aif
  %i.ckw = getelementptr i8, ptr %.6, i64 8
  %i.ckx = load i64, ptr %i.ckw, align 8, !tbaa !11
  %i.cky = getelementptr i8, ptr %.02257, i64 8   ; 3 uses
  %i.ckz = load ptr, ptr %i.cky, align 8, !tbaa !73 ; 3 uses
  %i.cla = getelementptr i8, ptr %i.ckz, i64 -8
  %i.clb = load i64, ptr %i.cla, align 8, !tbaa !11
  %i.clc = getelementptr i8, ptr %.6, i64 16      ; 3 uses
  store ptr %i.clc, ptr %.02257, align 8, !tbaa !146
  %i.cld = icmp eq i64 %i.clb, 4
  br i1 %i.cld, label %bb.qm, label %bb.qo

bb.qm:                                            ; preds = %bb.ql
  %i.cle = load atomic volatile i32, ptr %i.s monotonic, align 4
  %i.clf = load i32, ptr %i.t, align 4, !tbaa !71
  %i.clg = xor i32 %i.clf, -1
  %i.clh = and i32 %i.cle, %i.clg
  %.not.i2588 = icmp eq i32 %i.clh, 0
  br i1 %.not.i2588, label %rb_vm_check_ints.exit2590, label %bb.qn, !prof !72

bb.qn:                                            ; preds = %bb.qm
  %.val.i2589 = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.cli = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i2589, i32 noundef 0) #23 ; 0 uses
  %.pre3172.pre = load ptr, ptr %i.cky, align 8, !tbaa !73
  br label %rb_vm_check_ints.exit2590

rb_vm_check_ints.exit2590:                        ; preds = %bb.qm, %bb.qn
  %.pre3172 = phi ptr [ %i.ckz, %bb.qm ], [ %.pre3172.pre, %bb.qn ]
  %i.clj = getelementptr [8 x i8], ptr %i.clc, i64 %i.ckx ; 2 uses
  store ptr %i.clj, ptr %.02257, align 8, !tbaa !146
  br label %bb.qo

bb.qo:                                            ; preds = %rb_vm_check_ints.exit2590, %bb.ql
  %i.clk = phi ptr [ %.pre3172, %rb_vm_check_ints.exit2590 ], [ %i.ckz, %bb.ql ]
  %.4 = phi ptr [ %i.clj, %rb_vm_check_ints.exit2590 ], [ %i.clc, %bb.ql ]
  %i.cll = getelementptr i8, ptr %i.clk, i64 -8
  store ptr %i.cll, ptr %i.cky, align 8, !tbaa !73
  br label %.backedge.backedge

bb.qp:                                            ; preds = %.backedge, %bb.aig
  %i.clm = getelementptr i8, ptr %.6, i64 8
  %i.cln = load i64, ptr %i.clm, align 8, !tbaa !11 ; 2 uses
  %i.clo = inttoptr i64 %i.cln to ptr
  %i.clp = getelementptr i8, ptr %.6, i64 16
  %i.clq = load i64, ptr %i.clp, align 8, !tbaa !11 ; 2 uses
  %i.clr = inttoptr i64 %i.clq to ptr             ; 6 uses
  %i.cls = getelementptr i8, ptr %.6, i64 24      ; 2 uses
  store ptr %i.cls, ptr %.02257, align 8, !tbaa !146
  %i.clt = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %.val.i2591 = load ptr, ptr %i.u, align 8, !tbaa !30 ; 2 uses
  br label %bb.qq

bb.qq:                                            ; preds = %rb_vm_check_ints.exit.i, %bb.qp
  %i.clu = load ptr, ptr %i.clr, align 8, !tbaa !27 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.clu to i64
  switch i64 %magicptr.i, label %bb.qv [
    i64 1, label %bb.qr
    i64 0, label %bb.qs
  ]

bb.qr:                                            ; preds = %bb.qq
  %i.clv = getelementptr i8, ptr %i.clr, i64 8
  %i.clw = load i64, ptr %i.clv, align 8, !tbaa !27
  br label %vm_once_dispatch.exit

bb.qs:                                            ; preds = %bb.qq
  store ptr %.val.i2591, ptr %i.clr, align 8, !tbaa !27
  %i.clx = call i64 @rb_ensure(ptr noundef nonnull @vm_once_exec, i64 noundef %i.cln, ptr noundef nonnull @vm_once_clear, i64 noundef %i.clq) #23 ; 7 uses
  %i.cly = icmp ne i64 %i.clx, 0
  %i.clz = and i64 %i.clx, 7
  %i.cma = icmp eq i64 %i.clz, 0
  %.not21.i2592 = and i1 %i.cly, %i.cma
  br i1 %.not21.i2592, label %bb.qu, label %bb.qt

bb.qt:                                            ; preds = %bb.qs
  %i.cmb = getelementptr i8, ptr %i.clr, i64 8
  store i64 %i.clx, ptr %i.cmb, align 8, !tbaa !11
  br label %rb_obj_write.exit.i

bb.qu:                                            ; preds = %bb.qs
  %i.cmc = call i64 @rb_obj_set_shareable(i64 noundef %i.clx) #23 ; 0 uses
  %i.cmd = load ptr, ptr %i.p, align 8, !tbaa !70
  %i.cme = getelementptr i8, ptr %i.cmd, i64 16
  %i.cmf = load ptr, ptr %i.cme, align 8, !tbaa !123
  %i.cmg = getelementptr i8, ptr %i.clr, i64 8
  store i64 %i.clx, ptr %i.cmg, align 8, !tbaa !11
  %i.cmh = ptrtoint ptr %i.cmf to i64
  call void @rb_gc_writebarrier(i64 noundef %i.cmh, i64 noundef %i.clx) #23
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.qu, %bb.qt
  store ptr inttoptr (i64 1 to ptr), ptr %i.clr, align 8, !tbaa !27
  br label %vm_once_dispatch.exit

bb.qv:                                            ; preds = %bb.qq
  %i.cmi = icmp eq ptr %i.clu, %.val.i2591
  br i1 %i.cmi, label %bb.qw, label %bb.qy

bb.qw:                                            ; preds = %bb.qv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cmj = load ptr, ptr %i.v, align 8, !tbaa !28
  store volatile ptr %i.cmj, ptr %i.c, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.c, align 8, !tbaa !28 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cmk = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 16
  %i.cml = load ptr, ptr %i.cmk, align 8, !tbaa !70 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, align 8, !tbaa !121
  %i.cmm = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 8
  %.val8.i.i.i.i = load i64, ptr %i.cmm, align 8, !tbaa !122
  %i.cmn = getelementptr [8 x i8], ptr %.val.i.i.i.i, i64 %.val8.i.i.i.i ; 2 uses
  %.not910.i.i.i.i = icmp ugt ptr %i.cmn, %i.cml
  br i1 %.not910.i.i.i.i, label %.lr.ph.i.i.i.i2596, label %.loopexit.i.i.i

.lr.ph.i.i.i.i2596:                               ; preds = %bb.qw, %bb.qx
  %.011.i.i.i.i = phi ptr [ %i.cmq, %bb.qx ], [ %i.cml, %bb.qw ] ; 4 uses
  %i.cmo = getelementptr i8, ptr %.011.i.i.i.i, i64 32
  %.0.val.i.i.i.i = load ptr, ptr %i.cmo, align 8, !tbaa !15
  %.0.val.val.i.i.i.i = load i64, ptr %.0.val.i.i.i.i, align 8, !tbaa !11
  %i.cmp = and i64 %.0.val.val.i.i.i.i, 128
  %.not7.not.i.i.i.i = icmp eq i64 %i.cmp, 0
  br i1 %.not7.not.i.i.i.i, label %vm_once_exec.exit.i, label %bb.qx

bb.qx:                                            ; preds = %.lr.ph.i.i.i.i2596
  %i.cmq = getelementptr i8, ptr %.011.i.i.i.i, i64 56 ; 2 uses
  %.not9.i.i.i.i = icmp ugt ptr %i.cmn, %i.cmq
  br i1 %.not9.i.i.i.i, label %.lr.ph.i.i.i.i2596, label %.loopexit.i.i.i, !llvm.loop !360

.loopexit.i.i.i:                                  ; preds = %bb.qw, %bb.qx
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.196) #57
  unreachable

vm_once_exec.exit.i:                              ; preds = %.lr.ph.i.i.i.i2596
  %i.cmr = getelementptr i8, ptr %.011.i.i.i.i, i64 24
  %i.cms = getelementptr i8, ptr %.011.i.i.i.i, i64 40
  store ptr %i.clo, ptr %i.cms, align 8, !tbaa !27
  %i.cmt = load i64, ptr @rb_cProc, align 8, !tbaa !11
  %i.cmu = call i64 @rb_vm_make_proc_lambda(ptr noundef nonnull readnone %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, ptr noundef %i.cmr, i64 noundef %i.cmt, i8 noundef signext 0), !inline_history !78
  %i.cmv = call i64 @rb_proc_call_with_block(i64 noundef %i.cmu, i32 noundef 0, ptr noundef null, i64 noundef 4) #23
  br label %vm_once_dispatch.exit

bb.qy:                                            ; preds = %bb.qv
  %i.cmw = load atomic volatile i32, ptr %i.s monotonic, align 4
  %i.cmx = load i32, ptr %i.t, align 4, !tbaa !71
  %i.cmy = xor i32 %i.cmx, -1
  %i.cmz = and i32 %i.cmw, %i.cmy
  %.not.i.i2594 = icmp eq i32 %i.cmz, 0
  br i1 %.not.i.i2594, label %rb_vm_check_ints.exit.i, label %bb.qz, !prof !72

bb.qz:                                            ; preds = %bb.qy
  %.val.i.i2595 = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.cna = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i2595, i32 noundef 0) #23 ; 0 uses
  br label %rb_vm_check_ints.exit.i

rb_vm_check_ints.exit.i:                          ; preds = %bb.qz, %bb.qy
  call void @rb_thread_schedule() #23
  br label %bb.qq

vm_once_dispatch.exit:                            ; preds = %bb.qr, %rb_obj_write.exit.i, %vm_once_exec.exit.i
  %.0.i2593 = phi i64 [ %i.clw, %bb.qr ], [ %i.clx, %rb_obj_write.exit.i ], [ %i.cmv, %vm_once_exec.exit.i ]
  %i.cnb = load ptr, ptr %i.clt, align 8, !tbaa !73 ; 2 uses
  store i64 %.0.i2593, ptr %i.cnb, align 8, !tbaa !11
  %i.cnc = getelementptr i8, ptr %i.cnb, i64 8
  store ptr %i.cnc, ptr %i.clt, align 8, !tbaa !73
  br label %.backedge.backedge

bb.ra:                                            ; preds = %.backedge, %bb.aih
  %i.cnd = getelementptr i8, ptr %.6, i64 8
  %i.cne = load i64, ptr %i.cnd, align 8, !tbaa !11
  %i.cnf = getelementptr i8, ptr %.6, i64 16
  %i.cng = load i64, ptr %i.cnf, align 8, !tbaa !11
  %i.cnh = getelementptr i8, ptr %.02257, i64 8   ; 3 uses
  %i.cni = load ptr, ptr %i.cnh, align 8, !tbaa !73
  %i.cnj = getelementptr i8, ptr %i.cni, i64 -8
  %i.cnk = load i64, ptr %i.cnj, align 8, !tbaa !11 ; 12 uses
  %i.cnl = getelementptr i8, ptr %.6, i64 24      ; 5 uses
  store ptr %i.cnl, ptr %.02257, align 8, !tbaa !146
  %i.cnm = icmp eq i64 %i.cnk, 0
  %i.cnn = and i64 %i.cnk, 7
  %i.cno = icmp ne i64 %i.cnn, 0
  %i.cnp = or i1 %i.cnm, %i.cno                   ; 2 uses
  br i1 %i.cnp, label %.thread.i, label %bb.rb

bb.rb:                                            ; preds = %bb.ra
  %i.cnq = inttoptr i64 %i.cnk to ptr
  %i.cnr = load i64, ptr %i.cnq, align 8, !tbaa !77
  %i.cns = trunc i64 %i.cnr to i32
  %i.cnt = and i32 %i.cns, 31
  switch i32 %i.cnt, label %vm_case_dispatch.exit.thread [
    i32 5, label %.thread.i
    i32 4, label %.thread.i
    i32 20, label %.thread.i
    i32 10, label %.thread.i
  ]

.thread.i:                                        ; preds = %bb.rb, %bb.rb, %bb.rb, %bb.rb, %bb.ra
  %i.cnu = load i16, ptr getelementptr inbounds nuw (i8, ptr @ruby_vm_redefined_flag, i64 12), align 4, !tbaa !120
  %i.cnv = and i16 %i.cnu, 3655
  %i.cnw = icmp eq i16 %i.cnv, 0
  br i1 %i.cnw, label %bb.rc, label %vm_case_dispatch.exit.thread, !prof !72

bb.rc:                                            ; preds = %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.cnx = and i64 %i.cnk, 3
  %i.cny = icmp eq i64 %i.cnx, 2
  br i1 %i.cny, label %bb.re, label %bb.rd

bb.rd:                                            ; preds = %bb.rc
  br i1 %i.cnp, label %vm_case_dispatch.exit, label %RB_FLOAT_TYPE_P.exit.i

RB_FLOAT_TYPE_P.exit.i:                           ; preds = %bb.rd
  %i.cnz = inttoptr i64 %i.cnk to ptr             ; 2 uses
  %i.coa = load i64, ptr %i.cnz, align 8, !tbaa !77
  %i.cob = and i64 %i.coa, 31
  %i.coc = icmp eq i64 %i.cob, 4
  br i1 %i.coc, label %bb.rg, label %vm_case_dispatch.exit

bb.re:                                            ; preds = %bb.rc
  %.not.i.i.i2601 = icmp eq i64 %i.cnk, -9223372036854775806
  br i1 %.not.i.i.i2601, label %rb_float_value_inline.exit.i, label %bb.rf

bb.rf:                                            ; preds = %bb.re
  %.neg.i.i.i = ashr i64 %i.cnk, 63
  %i.cod = add nsw i64 %.neg.i.i.i, 2
  %i.coe = and i64 %i.cnk, -4
  %i.cof = or i64 %i.cod, %i.coe                  ; 2 uses
  %i.cog = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.cof, i64 range(i64 1, 0) %i.cof, i64 61)
  %i.coh = bitcast i64 %i.cog to double
  br label %rb_float_value_inline.exit.i

bb.rg:                                            ; preds = %RB_FLOAT_TYPE_P.exit.i
  %i.coi = getelementptr i8, ptr %i.cnz, i64 16
  %i.coj = load double, ptr %i.coi, align 8, !tbaa !361
  br label %rb_float_value_inline.exit.i

rb_float_value_inline.exit.i:                     ; preds = %bb.rg, %bb.rf, %bb.re
  %.0.i19.i = phi double [ %i.coj, %bb.rg ], [ %i.coh, %bb.rf ], [ 0.000000e+00, %bb.re ] ; 2 uses
  %i.cok = call double @llvm.fabs.f64(double %.0.i19.i) #64
  %i.col = fcmp oeq double %i.cok, +inf
  br i1 %i.col, label %vm_case_dispatch.exit, label %bb.rh

bb.rh:                                            ; preds = %rb_float_value_inline.exit.i
  %i.com = call { double, double } @llvm.modf.f64(double %.0.i19.i) ; 2 uses
  %i.con = extractvalue { double, double } %i.com, 0
  %i.coo = extractvalue { double, double } %i.com, 1 ; 4 uses
  %i.cop = fcmp oeq double %i.con, 0.000000e+00
  br i1 %i.cop, label %bb.ri, label %vm_case_dispatch.exit

bb.ri:                                            ; preds = %bb.rh
  %i.coq = fcmp olt double %i.coo, f0x43D0000000000000
  %i.cor = fcmp oge double %i.coo, f0xC3D0000000000000
  %or.cond.i2600 = and i1 %i.coq, %i.cor
  br i1 %or.cond.i2600, label %bb.rj, label %bb.rk

bb.rj:                                            ; preds = %bb.ri
  %i.cos = fptosi double %i.coo to i64
  %i.cot = shl i64 %i.cos, 1
  %i.cou = or disjoint i64 %i.cot, 1
  br label %vm_case_dispatch.exit

bb.rk:                                            ; preds = %bb.ri
  %i.cov = call i64 @rb_dbl2big(double noundef %i.coo) #23
  br label %vm_case_dispatch.exit

vm_case_dispatch.exit:                            ; preds = %bb.rd, %RB_FLOAT_TYPE_P.exit.i, %rb_float_value_inline.exit.i, %bb.rh, %bb.rj, %bb.rk
  %.117.i = phi i64 [ %i.cnk, %RB_FLOAT_TYPE_P.exit.i ], [ %i.cnk, %rb_float_value_inline.exit.i ], [ %i.cnk, %bb.rh ], [ %i.cou, %bb.rj ], [ %i.cov, %bb.rk ], [ %i.cnk, %bb.rd ]
  %i.cow = call i32 @rb_hash_stlike_lookup(i64 noundef %i.cne, i64 noundef %.117.i, ptr noundef nonnull %i.b) #23
  %.not.i2598 = icmp eq i32 %i.cow, 0
  %i.cox = load i64, ptr %i.b, align 8
  %i.coy = ashr i64 %i.cox, 1
  %.0.i2599 = select i1 %.not.i2598, i64 %i.cng, i64 %i.coy ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %.not2301 = icmp eq i64 %.0.i2599, 0
  br i1 %.not2301, label %vm_case_dispatch.exit.thread, label %bb.rl

bb.rl:                                            ; preds = %vm_case_dispatch.exit
  %i.coz = getelementptr [8 x i8], ptr %i.cnl, i64 %.0.i2599 ; 2 uses
  store ptr %i.coz, ptr %.02257, align 8, !tbaa !146
  br label %vm_case_dispatch.exit.thread

vm_case_dispatch.exit.thread:                     ; preds = %bb.rb, %.thread.i, %bb.rl, %vm_case_dispatch.exit
  %.5 = phi ptr [ %i.coz, %bb.rl ], [ %i.cnl, %vm_case_dispatch.exit ], [ %i.cnl, %.thread.i ], [ %i.cnl, %bb.rb ]
  %i.cpa = load ptr, ptr %i.cnh, align 8, !tbaa !73
  %i.cpb = getelementptr i8, ptr %i.cpa, i64 -8
  store ptr %i.cpb, ptr %i.cnh, align 8, !tbaa !73
  br label %.backedge.backedge

bb.rm:                                            ; preds = %.backedge, %bb.aem
  %i.cpc = getelementptr i8, ptr %.02257, i64 8   ; 3 uses
  %i.cpd = load ptr, ptr %i.cpc, align 8, !tbaa !73 ; 6 uses
  %i.cpe = getelementptr i8, ptr %i.cpd, i64 -8
  %i.cpf = getelementptr i8, ptr %i.cpd, i64 -16
  %i.cpg = load i64, ptr %i.cpf, align 8, !tbaa !11 ; 13 uses
  %i.cph = load i64, ptr %i.cpe, align 8, !tbaa !11 ; 15 uses
  %i.cpi = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.cpi, ptr %.02257, align 8, !tbaa !146
  %i.cpj = and i64 %i.cph, %i.cpg
  %i.cpk = trunc i64 %i.cpj to i1
  br i1 %i.cpk, label %bb.rn, label %bb.rq

bb.rn:                                            ; preds = %bb.rm
  %i.cpl = load i16, ptr @ruby_vm_redefined_flag, align 16, !tbaa !120
  %i.cpm = and i16 %i.cpl, 1
  %i.cpn = icmp eq i16 %i.cpm, 0
  br i1 %i.cpn, label %bb.ro, label %bb.rq, !prof !72

bb.ro:                                            ; preds = %bb.rn
  %i.cpo = add i64 %i.cph, -1
  %i.cpp = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cpg, i64 %i.cpo) ; 2 uses
  %i.cpq = extractvalue { i64, i1 } %i.cpp, 1
  %i.cpr = extractvalue { i64, i1 } %i.cpp, 0     ; 2 uses
  br i1 %i.cpq, label %bb.rp, label %vm_opt_plus.exit

bb.rp:                                            ; preds = %bb.ro
  %i.cps = ashr i64 %i.cpr, 1
  %i.cpt = xor i64 %i.cps, -9223372036854775808
  %i.cpu = call i64 @rb_int2big(i64 noundef %i.cpt) #23
  br label %vm_opt_plus.exit

bb.rq:                                            ; preds = %bb.rn, %bb.rm
  %i.cpv = xor i64 %i.cpg, 2
  %i.cpw = xor i64 %i.cph, 2
  %i.cpx = or i64 %i.cpw, %i.cpv
  %i.cpy = and i64 %i.cpx, 3
  %.not.i.i2602 = icmp eq i64 %i.cpy, 0
  br i1 %.not.i.i2602, label %bb.rr, label %bb.sd

bb.rr:                                            ; preds = %bb.rq
  %i.cpz = load i16, ptr @ruby_vm_redefined_flag, align 16, !tbaa !120
  %i.cqa = and i16 %i.cpz, 2
  %i.cqb = icmp eq i16 %i.cqa, 0
  br i1 %i.cqb, label %bb.rs, label %bb.sd, !prof !72

bb.rs:                                            ; preds = %bb.rr
  %i.cqc = and i64 %i.cpg, 3
  %i.cqd = icmp eq i64 %i.cqc, 2
  br i1 %i.cqd, label %bb.rt, label %bb.rv

bb.rt:                                            ; preds = %bb.rs
  %.not.i.i.i2606 = icmp eq i64 %i.cpg, -9223372036854775806
  br i1 %.not.i.i.i2606, label %rb_float_value_inline.exit.i2604, label %bb.ru

bb.ru:                                            ; preds = %bb.rt
end_hunk_4
begin_hunk_5_@vm_exec_core:bb.a
    i64 4, label %bb.add
    i64 20, label %bb.ade
  ]

bb.add:                                           ; preds = %bb.adc
  br label %rb_class_of.exit.i2756

bb.ade:                                           ; preds = %bb.adc
  br label %rb_class_of.exit.i2756

bb.adf:                                           ; preds = %bb.adc
  %i.ege = trunc i64 %i.efn to i1
  br i1 %i.ege, label %rb_class_of.exit.i2756, label %bb.adg

bb.adg:                                           ; preds = %bb.adf
  %i.egf = and i64 %i.efn, 254
  %i.egg = icmp eq i64 %i.egf, 12
  %spec.select.i.i2759 = select i1 %i.egg, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit.i2756

rb_class_of.exit.i2756:                           ; preds = %bb.adg, %bb.adf, %bb.ade, %bb.add, %bb.adc, %bb.adb
  %.0.in.i.i2757 = phi ptr [ %i.egd, %bb.adb ], [ @rb_cNilClass, %bb.add ], [ @rb_cTrueClass, %bb.ade ], [ @rb_cFalseClass, %bb.adc ], [ @rb_cInteger, %bb.adf ], [ %spec.select.i.i2759, %bb.adg ]
  %.0.i.i2758 = load i64, ptr %.0.in.i.i2757, align 8, !tbaa !11 ; 2 uses
  %i.egh = load i64, ptr @rb_cRegexp, align 8, !tbaa !11 ; 2 uses
  %i.egi = icmp eq i64 %.0.i.i2758, %i.egh
  br i1 %i.egi, label %bb.adh, label %bb.adj

bb.adh:                                           ; preds = %rb_class_of.exit.i2756
  %i.egj = load i16, ptr getelementptr inbounds nuw (i8, ptr @ruby_vm_redefined_flag, i64 44), align 4, !tbaa !120
  %i.egk = and i16 %i.egj, 4
  %i.egl = icmp eq i16 %i.egk, 0
  br i1 %i.egl, label %bb.adi, label %bb.adj, !prof !72

bb.adi:                                           ; preds = %bb.adh
  %i.egm = call i64 @rb_reg_match(i64 noundef %i.efn, i64 noundef %i.efm) #23
  br label %vm_opt_regexpmatch2.exit

bb.adj:                                           ; preds = %bb.adh, %rb_class_of.exit.i2756, %._crit_edge.i2753
  %i.egn = phi i64 [ %.pre.i2754, %._crit_edge.i2753 ], [ %.0.i.i2758, %bb.adh ], [ %i.egh, %rb_class_of.exit.i2756 ]
  %i.ego = icmp eq i64 %i.efv, %i.egn
  br i1 %i.ego, label %bb.adk, label %vm_opt_regexpmatch2.exit.thread

bb.adk:                                           ; preds = %bb.adj
  %i.egp = load i16, ptr getelementptr inbounds nuw (i8, ptr @ruby_vm_redefined_flag, i64 44), align 4, !tbaa !120
  %i.egq = and i16 %i.egp, 256
  %i.egr = icmp eq i16 %i.egq, 0
  br i1 %i.egr, label %bb.adl, label %vm_opt_regexpmatch2.exit.thread, !prof !72

bb.adl:                                           ; preds = %bb.adk
  %i.egs = call i64 @rb_reg_match(i64 noundef %i.efm, i64 noundef %i.efn) #23
  br label %vm_opt_regexpmatch2.exit

vm_opt_regexpmatch2.exit:                         ; preds = %bb.adi, %bb.adl
  %.0.i2755 = phi i64 [ %i.egs, %bb.adl ], [ %i.egm, %bb.adi ] ; 2 uses
  %i.egt = icmp eq i64 %.0.i2755, 36
  br i1 %i.egt, label %vm_opt_regexpmatch2.exit.thread, label %bb.adm

vm_opt_regexpmatch2.exit.thread:                  ; preds = %bb.adj, %bb.adk, %bb.acy, %vm_opt_regexpmatch2.exit
  store ptr %.6, ptr %.02257, align 8, !tbaa !146
  br label %vm_opt_neq.exit.thread

bb.adm:                                           ; preds = %vm_opt_regexpmatch2.exit
  %i.egu = load ptr, ptr %i.efi, align 8, !tbaa !73 ; 2 uses
  %i.egv = getelementptr i8, ptr %i.egu, i64 -8
  store ptr %i.egv, ptr %i.efi, align 8, !tbaa !73
  %i.egw = getelementptr i8, ptr %i.egu, i64 -16
  store i64 %.0.i2755, ptr %i.egw, align 8, !tbaa !11
  br label %.backedge.backedge

bb.adn:                                           ; preds = %.backedge, %bb.aje
  %i.egx = getelementptr i8, ptr %.6, i64 8
  %i.egy = load i64, ptr %i.egx, align 8, !tbaa !11
  %i.egz = inttoptr i64 %i.egy to ptr             ; 2 uses
  %i.eha = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.eha, ptr %.02257, align 8, !tbaa !146
  %i.ehb = getelementptr i8, ptr %.02257, i64 8   ; 3 uses
  %i.ehc = load ptr, ptr %i.ehb, align 8, !tbaa !73
  %i.ehd = getelementptr i8, ptr %i.egz, i64 8    ; 2 uses
  %i.ehe = load i32, ptr %i.ehd, align 8, !tbaa !374
  %i.ehf = sext i32 %i.ehe to i64                 ; 2 uses
  %i.ehg = sub nsw i64 0, %i.ehf
  %i.ehh = getelementptr [8 x i8], ptr %i.ehc, i64 %i.ehg
  %i.ehi = getelementptr i8, ptr %.02257, i64 24
  %.02257.val2360 = load i64, ptr %i.ehi, align 8, !tbaa !74
  %.val2361 = load ptr, ptr %i.egz, align 8, !tbaa !377
  %i.ehj = getelementptr [8 x i8], ptr @lookup_builtin_invoker.invokers, i64 %i.ehf
  %i.ehk = load ptr, ptr %i.ehj, align 8, !tbaa !176
  %i.ehl = call i64 %i.ehk(ptr noundef nonnull %0, i64 noundef %.02257.val2360, ptr noundef %i.ehh, ptr noundef %.val2361) #23, !inline_history !378
  %.val2363 = load i32, ptr %i.ehd, align 8, !tbaa !374
  %i.ehm = sub i32 1, %.val2363
  %i.ehn = sext i32 %i.ehm to i64
  %i.eho = load ptr, ptr %i.ehb, align 8, !tbaa !73
  %i.ehp = getelementptr [8 x i8], ptr %i.eho, i64 %i.ehn ; 2 uses
  store ptr %i.ehp, ptr %i.ehb, align 8, !tbaa !73
  %i.ehq = getelementptr i8, ptr %i.ehp, i64 -8
  store i64 %i.ehl, ptr %i.ehq, align 8, !tbaa !11
  br label %.backedge.backedge

bb.ado:                                           ; preds = %.backedge, %bb.ajf
  %i.ehr = getelementptr i8, ptr %.6, i64 8
  %i.ehs = load i64, ptr %i.ehr, align 8, !tbaa !11
  %i.eht = inttoptr i64 %i.ehs to ptr             ; 3 uses
  %i.ehu = getelementptr i8, ptr %.6, i64 16
  %i.ehv = load i64, ptr %i.ehu, align 8, !tbaa !11
  %i.ehw = getelementptr i8, ptr %.6, i64 24      ; 2 uses
  store ptr %i.ehw, ptr %.02257, align 8, !tbaa !146
  %i.ehx = getelementptr i8, ptr %i.eht, i64 8
  %i.ehy = load i32, ptr %i.ehx, align 8, !tbaa !374 ; 2 uses
  %i.ehz = icmp eq i32 %i.ehy, 0
  br i1 %i.ehz, label %bb.adp, label %bb.adq

bb.adp:                                           ; preds = %bb.ado
  %i.eia = getelementptr i8, ptr %.02257, i64 24
  %.val13.i = load i64, ptr %i.eia, align 8, !tbaa !74
  %.val14.i = load ptr, ptr %i.eht, align 8, !tbaa !377
  %i.eib = call i64 %.val14.i(ptr noundef nonnull %0, i64 noundef %.val13.i) #23, !inline_history !379
  br label %vm_invoke_builtin_delegate.exit

bb.adq:                                           ; preds = %bb.ado
  %i.eic = getelementptr i8, ptr %.02257, i64 32
  %i.eid = load ptr, ptr %i.eic, align 8, !tbaa !15
  %i.eie = getelementptr i8, ptr %.02257, i64 16
  %i.eif = load ptr, ptr %i.eie, align 8, !tbaa !123
  %i.eig = getelementptr i8, ptr %i.eif, i64 16
  %i.eih = load ptr, ptr %i.eig, align 8, !tbaa !124
  %i.eii = getelementptr i8, ptr %i.eih, i64 240
  %i.eij = load i32, ptr %i.eii, align 8, !tbaa !190
  %i.eik = zext i32 %i.eij to i64
  %i.eil = sub nsw i64 0, %i.eik
  %i.eim = getelementptr [8 x i8], ptr %i.eid, i64 %i.eil
  %i.ein = getelementptr i8, ptr %i.eim, i64 -16
  %i.eio = and i64 %i.ehv, 4294967295
  %i.eip = getelementptr [8 x i8], ptr %i.ein, i64 %i.eio
  %i.eiq = getelementptr i8, ptr %.02257, i64 24
  %.val.i2760 = load i64, ptr %i.eiq, align 8, !tbaa !74
  %.val11.i = load ptr, ptr %i.eht, align 8, !tbaa !377
  %i.eir = sext i32 %i.ehy to i64
  %i.eis = getelementptr [8 x i8], ptr @lookup_builtin_invoker.invokers, i64 %i.eir
  %i.eit = load ptr, ptr %i.eis, align 8, !tbaa !176
  %i.eiu = call i64 %i.eit(ptr noundef nonnull %0, i64 noundef %.val.i2760, ptr noundef %i.eip, ptr noundef %.val11.i) #23, !inline_history !380
  br label %vm_invoke_builtin_delegate.exit

vm_invoke_builtin_delegate.exit:                  ; preds = %bb.adp, %bb.adq
  %.0.i2761 = phi i64 [ %i.eib, %bb.adp ], [ %i.eiu, %bb.adq ]
  %i.eiv = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.eiw = load ptr, ptr %i.eiv, align 8, !tbaa !73 ; 2 uses
  %i.eix = getelementptr i8, ptr %i.eiw, i64 8
  store ptr %i.eix, ptr %i.eiv, align 8, !tbaa !73
  store i64 %.0.i2761, ptr %i.eiw, align 8, !tbaa !11
  br label %.backedge.backedge

bb.adr:                                           ; preds = %.backedge, %bb.ajg
  %i.eiy = getelementptr i8, ptr %.6, i64 8
  %i.eiz = load i64, ptr %i.eiy, align 8, !tbaa !11
  %i.eja = inttoptr i64 %i.eiz to ptr             ; 3 uses
  %i.ejb = getelementptr i8, ptr %.6, i64 16
  %i.ejc = load i64, ptr %i.ejb, align 8, !tbaa !11
  %i.ejd = getelementptr i8, ptr %.6, i64 24
  store ptr %i.ejd, ptr %.02257, align 8, !tbaa !146
  %i.eje = getelementptr i8, ptr %i.eja, i64 8
  %i.ejf = load i32, ptr %i.eje, align 8, !tbaa !374 ; 2 uses
  %i.ejg = icmp eq i32 %i.ejf, 0
  br i1 %i.ejg, label %bb.ads, label %bb.adt

bb.ads:                                           ; preds = %bb.adr
  %i.ejh = getelementptr i8, ptr %.02257, i64 24
  %.val13.i2765 = load i64, ptr %i.ejh, align 8, !tbaa !74
  %.val14.i2766 = load ptr, ptr %i.eja, align 8, !tbaa !377
  %i.eji = call i64 %.val14.i2766(ptr noundef nonnull %0, i64 noundef %.val13.i2765) #23, !inline_history !379
  br label %vm_invoke_builtin_delegate.exit2767

bb.adt:                                           ; preds = %bb.adr
  %i.ejj = getelementptr i8, ptr %.02257, i64 32
  %i.ejk = load ptr, ptr %i.ejj, align 8, !tbaa !15
  %i.ejl = getelementptr i8, ptr %.02257, i64 16
  %i.ejm = load ptr, ptr %i.ejl, align 8, !tbaa !123
  %i.ejn = getelementptr i8, ptr %i.ejm, i64 16
  %i.ejo = load ptr, ptr %i.ejn, align 8, !tbaa !124
  %i.ejp = getelementptr i8, ptr %i.ejo, i64 240
  %i.ejq = load i32, ptr %i.ejp, align 8, !tbaa !190
  %i.ejr = zext i32 %i.ejq to i64
  %i.ejs = sub nsw i64 0, %i.ejr
  %i.ejt = getelementptr [8 x i8], ptr %i.ejk, i64 %i.ejs
  %i.eju = getelementptr i8, ptr %i.ejt, i64 -16
  %i.ejv = and i64 %i.ejc, 4294967295
  %i.ejw = getelementptr [8 x i8], ptr %i.eju, i64 %i.ejv
  %i.ejx = getelementptr i8, ptr %.02257, i64 24
  %.val.i2762 = load i64, ptr %i.ejx, align 8, !tbaa !74
  %.val11.i2763 = load ptr, ptr %i.eja, align 8, !tbaa !377
  %i.ejy = sext i32 %i.ejf to i64
  %i.ejz = getelementptr [8 x i8], ptr @lookup_builtin_invoker.invokers, i64 %i.ejy
  %i.eka = load ptr, ptr %i.ejz, align 8, !tbaa !176
  %i.ekb = call i64 %i.eka(ptr noundef nonnull %0, i64 noundef %.val.i2762, ptr noundef %i.ejw, ptr noundef %.val11.i2763) #23, !inline_history !380
  br label %vm_invoke_builtin_delegate.exit2767

vm_invoke_builtin_delegate.exit2767:              ; preds = %bb.ads, %bb.adt
  %.0.i2764 = phi i64 [ %i.eji, %bb.ads ], [ %i.ekb, %bb.adt ] ; 2 uses
  %i.ekc = getelementptr i8, ptr %.02257, i64 32
  %i.ekd = load ptr, ptr %i.ekc, align 8, !tbaa !15
  %i.eke = load i64, ptr %i.ekd, align 8, !tbaa !11
  %i.ekf = load atomic volatile i32, ptr %i.s monotonic, align 4
  %i.ekg = load i32, ptr %i.t, align 4, !tbaa !71
  %i.ekh = xor i32 %i.ekg, -1
  %i.eki = and i32 %i.ekf, %i.ekh
  %.not.i.i2768 = icmp eq i32 %i.eki, 0
  br i1 %.not.i.i2768, label %vm_pop_frame.exit2771, label %bb.adu, !prof !72

bb.adu:                                           ; preds = %vm_invoke_builtin_delegate.exit2767
  %.val.i.i2769 = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.ekj = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i2769, i32 noundef 0) #23 ; 0 uses
  br label %vm_pop_frame.exit2771

vm_pop_frame.exit2771:                            ; preds = %vm_invoke_builtin_delegate.exit2767, %bb.adu
  %i.ekk = getelementptr i8, ptr %.02257, i64 56  ; 3 uses
  store ptr %i.ekk, ptr %i.p, align 8, !tbaa !70
  %i.ekl = and i64 %i.eke, 32
  %.not = icmp eq i64 %i.ekl, 0
  br i1 %.not, label %bb.adv, label %.loopexit2951

bb.adv:                                           ; preds = %vm_pop_frame.exit2771
  %i.ekm = load ptr, ptr %i.ekk, align 8, !tbaa !146
  %i.ekn = getelementptr i8, ptr %.02257, i64 64  ; 2 uses
  %i.eko = load ptr, ptr %i.ekn, align 8, !tbaa !73 ; 2 uses
  %i.ekp = getelementptr i8, ptr %i.eko, i64 8
  store ptr %i.ekp, ptr %i.ekn, align 8, !tbaa !73
  store i64 %.0.i2764, ptr %i.eko, align 8, !tbaa !11
  br label %.backedge.backedge

bb.adw:                                           ; preds = %.backedge, %bb.ajh
  %i.ekq = getelementptr i8, ptr %.6, i64 8
  %i.ekr = load i64, ptr %i.ekq, align 8, !tbaa !11
  %i.eks = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.eks, ptr %.02257, align 8, !tbaa !146
  %i.ekt = getelementptr i8, ptr %.02257, i64 32
  %i.eku = load ptr, ptr %i.ekt, align 8, !tbaa !15
  %i.ekv = sub i64 0, %i.ekr
  %i.ekw = getelementptr [8 x i8], ptr %i.eku, i64 %i.ekv
  %i.ekx = load i64, ptr %i.ekw, align 8, !tbaa !11
  %i.eky = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.ekz = load ptr, ptr %i.eky, align 8, !tbaa !73 ; 2 uses
  %i.ela = getelementptr i8, ptr %i.ekz, i64 8
  store ptr %i.ela, ptr %i.eky, align 8, !tbaa !73
  store i64 %i.ekx, ptr %i.ekz, align 8, !tbaa !11
  br label %.backedge.backedge

.lr.ph.i2774:                                     ; preds = %.backedge, %bb.aji
  %i.elb = getelementptr i8, ptr %.6, i64 8
  %i.elc = load i64, ptr %i.elb, align 8, !tbaa !11
  %i.eld = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.eld, ptr %.02257, align 8, !tbaa !146
  %i.ele = getelementptr i8, ptr %.02257, i64 32
  %i.elf = load ptr, ptr %i.ele, align 8, !tbaa !15
  %i.elg = getelementptr i8, ptr %i.elf, i64 -8
  %i.elh = load i64, ptr %i.elg, align 8, !tbaa !11
  %i.eli = and i64 %i.elh, -4
  %i.elj = inttoptr i64 %i.eli to ptr
  %i.elk = sub i64 0, %i.elc
  %i.ell = getelementptr [8 x i8], ptr %i.elj, i64 %i.elk
  %i.elm = load i64, ptr %i.ell, align 8, !tbaa !11
  %i.eln = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.elo = load ptr, ptr %i.eln, align 8, !tbaa !73 ; 2 uses
  %i.elp = getelementptr i8, ptr %i.elo, i64 8
  store ptr %i.elp, ptr %i.eln, align 8, !tbaa !73
  store i64 %i.elm, ptr %i.elo, align 8, !tbaa !11
  br label %.backedge.backedge

bb.adx:                                           ; preds = %.backedge, %bb.ajj
  %i.elq = getelementptr i8, ptr %.6, i64 8
  %i.elr = load i64, ptr %i.elq, align 8, !tbaa !11
  %i.els = getelementptr i8, ptr %.02257, i64 8   ; 3 uses
  %i.elt = load ptr, ptr %i.els, align 8, !tbaa !73 ; 2 uses
  %i.elu = getelementptr i8, ptr %i.elt, i64 -8
  %i.elv = load i64, ptr %i.elu, align 8, !tbaa !11 ; 2 uses
  %i.elw = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.elw, ptr %.02257, align 8, !tbaa !146
  %i.elx = getelementptr i8, ptr %.02257, i64 32
  %i.ely = load ptr, ptr %i.elx, align 8, !tbaa !15 ; 3 uses
  %i.elz = trunc i64 %i.elr to i32
  %i.ema = sub i32 0, %i.elz                      ; 2 uses
  %i.emb = load i64, ptr %i.ely, align 8, !tbaa !11
  %i.emc = and i64 %i.emb, 8
  %i.emd = icmp eq i64 %i.emc, 0
  br i1 %i.emd, label %bb.ady, label %bb.adz, !prof !72

bb.ady:                                           ; preds = %bb.adx
  %i.eme = sext i32 %i.ema to i64
  %i.emf = getelementptr [8 x i8], ptr %i.ely, i64 %i.eme
  store i64 %i.elv, ptr %i.emf, align 8, !tbaa !11
  br label %vm_env_write.exit2783

bb.adz:                                           ; preds = %bb.adx
  call fastcc void @vm_env_write_slowpath(ptr noundef nonnull %i.ely, i32 noundef %i.ema, i64 noundef %i.elv)
  %.pre3165 = load ptr, ptr %i.els, align 8, !tbaa !73
  br label %vm_env_write.exit2783

vm_env_write.exit2783:                            ; preds = %bb.ady, %bb.adz
  %i.emg = phi ptr [ %i.elt, %bb.ady ], [ %.pre3165, %bb.adz ]
  %i.emh = getelementptr i8, ptr %i.emg, i64 -8
  store ptr %i.emh, ptr %i.els, align 8, !tbaa !73
  br label %.backedge.backedge

.lr.ph.i2784:                                     ; preds = %.backedge, %bb.ajk
  %i.emi = getelementptr i8, ptr %.6, i64 8
  %i.emj = load i64, ptr %i.emi, align 8, !tbaa !11
  %i.emk = getelementptr i8, ptr %.02257, i64 8   ; 3 uses
  %i.eml = load ptr, ptr %i.emk, align 8, !tbaa !73 ; 2 uses
  %i.emm = getelementptr i8, ptr %i.eml, i64 -8
  %i.emn = load i64, ptr %i.emm, align 8, !tbaa !11 ; 2 uses
  %i.emo = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.emo, ptr %.02257, align 8, !tbaa !146
  %i.emp = getelementptr i8, ptr %.02257, i64 32
  %i.emq = load ptr, ptr %i.emp, align 8, !tbaa !15
  %i.emr = getelementptr i8, ptr %i.emq, i64 -8
  %i.ems = load i64, ptr %i.emr, align 8, !tbaa !11
  %i.emt = and i64 %i.ems, -4
  %i.emu = inttoptr i64 %i.emt to ptr             ; 3 uses
  %i.emv = trunc i64 %i.emj to i32
  %i.emw = sub i32 0, %i.emv                      ; 2 uses
  %i.emx = load i64, ptr %i.emu, align 8, !tbaa !11
  %i.emy = and i64 %i.emx, 8
  %i.emz = icmp eq i64 %i.emy, 0
  br i1 %i.emz, label %bb.aea, label %bb.aeb, !prof !72

bb.aea:                                           ; preds = %.lr.ph.i2784
  %i.ena = sext i32 %i.emw to i64
  %i.enb = getelementptr [8 x i8], ptr %i.emu, i64 %i.ena
  store i64 %i.emn, ptr %i.enb, align 8, !tbaa !11
  br label %vm_env_write.exit2791

bb.aeb:                                           ; preds = %.lr.ph.i2784
  call fastcc void @vm_env_write_slowpath(ptr noundef nonnull %i.emu, i32 noundef %i.emw, i64 noundef %i.emn)
  %.pre = load ptr, ptr %i.emk, align 8, !tbaa !73
  br label %vm_env_write.exit2791

vm_env_write.exit2791:                            ; preds = %bb.aea, %bb.aeb
  %i.enc = phi ptr [ %i.eml, %bb.aea ], [ %.pre, %bb.aeb ]
  %i.end = getelementptr i8, ptr %i.enc, i64 -8
  store ptr %i.end, ptr %i.emk, align 8, !tbaa !73
  br label %.backedge.backedge

bb.aec:                                           ; preds = %.backedge, %bb.ajl
  %i.ene = getelementptr i8, ptr %.6, i64 8       ; 2 uses
  store ptr %i.ene, ptr %.02257, align 8, !tbaa !146
  %i.enf = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.eng = load ptr, ptr %i.enf, align 8, !tbaa !73 ; 2 uses
  %i.enh = getelementptr i8, ptr %i.eng, i64 8
  store ptr %i.enh, ptr %i.enf, align 8, !tbaa !73
  store i64 1, ptr %i.eng, align 8, !tbaa !11
  br label %.backedge.backedge

bb.aed:                                           ; preds = %.backedge, %bb.ajm
  %i.eni = getelementptr i8, ptr %.6, i64 8       ; 2 uses
  store ptr %i.eni, ptr %.02257, align 8, !tbaa !146
  %i.enj = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.enk = load ptr, ptr %i.enj, align 8, !tbaa !73 ; 2 uses
  %i.enl = getelementptr i8, ptr %i.enk, i64 8
  store ptr %i.enl, ptr %i.enj, align 8, !tbaa !73
  store i64 3, ptr %i.enk, align 8, !tbaa !11
  br label %.backedge.backedge

bb.aee:                                           ; preds = %.backedge
  call void @rb_zjit_profile_insn(i32 noundef 8, ptr noundef %0) #23
  br label %bb.at

bb.aef:                                           ; preds = %.backedge
  call void @rb_zjit_profile_insn(i32 noundef 9, ptr noundef %0) #23
  br label %bb.bn

bb.aeg:                                           ; preds = %.backedge
  call void @rb_zjit_profile_insn(i32 noundef 48, ptr noundef %0) #23
  br label %bb.ew

bb.aeh:                                           ; preds = %.backedge
  call void @rb_zjit_profile_insn(i32 noundef 55, ptr noundef %0) #23
  br label %bb.hq

bb.aei:                                           ; preds = %.backedge
  call void @rb_zjit_profile_insn(i32 noundef 57, ptr noundef %0) #23
  br label %vm_opt_neq.exit.thread

bb.aej:                                           ; preds = %.backedge
  call void @rb_zjit_profile_insn(i32 noundef 59, ptr noundef %0) #23
  br label %bb.ls

bb.aek:                                           ; preds = %.backedge
  call void @rb_zjit_profile_insn(i32 noundef 63, ptr noundef %0) #23
  br label %bb.md

bb.ael:                                           ; preds = %.backedge
  call void @rb_zjit_profile_insn(i32 noundef 69, ptr noundef %0) #23
  br label %bb.ox

bb.aem:                                           ; preds = %.backedge
  call void @rb_zjit_profile_insn(i32 noundef 78, ptr noundef %0) #23
  br label %bb.rm

bb.aen:                                           ; preds = %.backedge
  call void @rb_zjit_profile_insn(i32 noundef 79, ptr noundef %0) #23
  br label %bb.su

bb.aeo:                                           ; preds = %.backedge
end_hunk_5
begin_hunk_6_@callable_method_entry_or_negative:bb.a
bb.m:                                             ; preds = %bb.l
  %i.av = load i64, ptr %i.c, align 8, !tbaa !11
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !171 ; 4 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !170
  %i.ba = and i64 %i.az, 2097152
  %.not13.not.i = icmp eq i64 %i.ba, 0
  br i1 %.not13.not.i, label %bb.o, label %bb.n, !prof !72

bb.n:                                             ; preds = %bb.m
  call void @rb_vm_barrier() #23
  %i.bb = call i32 @rb_managed_id_table_delete(i64 noundef %i.at, i64 noundef %1) #23 ; 0 uses
  call fastcc void @rb_vm_ccs_invalidate_and_free(ptr noundef nonnull %i.aw)
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br i1 %.not50, label %bb.aj, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr i8, ptr %i.ay, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !200
  store i64 %i.bd, ptr %2, align 8, !tbaa !11
  br label %bb.aj

bb.q:                                             ; preds = %bb.n, %bb.l, %RCLASS_EXT_WRITABLE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  %i.be = call fastcc ptr @search_method0(i64 noundef %0, i64 noundef %1, ptr noundef nonnull %i.f, i1 noundef zeroext false) ; 2 uses
  br i1 %.not50, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = load i64, ptr %i.f, align 8, !tbaa !11
  store i64 %i.bf, ptr %2, align 8, !tbaa !11
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not49 = icmp eq ptr %i.be, null
  br i1 %.not49, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = load i64, ptr %i.f, align 8, !tbaa !11
  %i.bh = call fastcc ptr @prepare_callable_method_entry(i64 noundef %i.bg, i64 noundef %1, ptr noundef nonnull %i.be, i32 noundef 1)
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.bi = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.bj = getelementptr i8, ptr %i.bi, i64 1288   ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !438
  %i.bl = call i32 @rb_id_table_lookup(ptr noundef %i.bk, i64 noundef %1, ptr noundef nonnull %i.b) #23
  %.not.i53 = icmp eq i32 %i.bl, 0
  br i1 %.not.i53, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = load i64, ptr %i.b, align 8, !tbaa !11
  %i.bn = inttoptr i64 %i.bm to ptr
  br label %negative_cme.exit

bb.w:                                             ; preds = %bb.u
  %i.bo = call i64 @rb_imemo_new(i32 noundef 6, i64 noundef 4, i64 noundef 40, i1 noundef zeroext true) #23 ; 2 uses
  %i.bp = inttoptr i64 %i.bo to ptr               ; 4 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  store ptr null, ptr %i.bq, align 8, !tbaa !419
  %i.br = getelementptr i8, ptr %i.bp, i64 24
  store i64 %1, ptr %i.br, align 8, !tbaa !420
  %i.bs = getelementptr i8, ptr %i.bp, i64 32
  store i64 4, ptr %i.bs, align 8, !tbaa !201
  %i.bt = load ptr, ptr %i.bj, align 8, !tbaa !438
  %i.bu = call i32 @rb_id_table_insert(ptr noundef %i.bt, i64 noundef %1, i64 noundef %i.bo) #23 ; 0 uses
  br label %negative_cme.exit

negative_cme.exit:                                ; preds = %bb.v, %bb.w
  %.0.i54 = phi ptr [ %i.bn, %bb.v ], [ %i.bp, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.x

bb.x:                                             ; preds = %negative_cme.exit, %bb.t
  %.135 = phi ptr [ %i.bh, %bb.t ], [ %.0.i54, %negative_cme.exit ] ; 9 uses
  br i1 %.not5.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i64, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i56, !prof !168

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i64:      ; preds = %bb.x
  %i.bv = load i64, ptr %i.ai, align 8, !tbaa !77
  %i.bw = and i64 %i.bv, 16384
  %.not10.i.i65 = icmp eq i64 %i.bw, 0
  br i1 %.not10.i.i65, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i56, label %RCLASS_EXT_WRITABLE.exit.thread.i, !prof !110

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i56: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i64, %bb.x
  %i.bx = call ptr @rb_current_box() #23          ; 3 uses
  %.not.i.i57 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i57, label %RCLASS_EXT_WRITABLE.exit.i58.sink.split, label %bb.y

bb.y:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i56
  %i.by = getelementptr i8, ptr %i.bx, i64 128
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !111, !range !114, !noundef !64
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %RCLASS_EXT_WRITABLE.exit.i58.sink.split, label %RCLASS_EXT_WRITABLE.exit.i58

RCLASS_EXT_WRITABLE.exit.i58.sink.split:          ; preds = %bb.y, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i56
  %.sink86 = phi ptr [ null, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i56 ], [ %i.bx, %bb.y ]
  %i.cb = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef %.sink86)
  br label %RCLASS_EXT_WRITABLE.exit.i58

RCLASS_EXT_WRITABLE.exit.i58:                     ; preds = %RCLASS_EXT_WRITABLE.exit.i58.sink.split, %bb.y
  %.0.i.i59 = phi ptr [ %i.aj, %bb.y ], [ %i.cb, %RCLASS_EXT_WRITABLE.exit.i58.sink.split ]
  %i.cc = getelementptr i8, ptr %.0.i.i59, i64 48
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !169 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not.i60 = icmp eq i64 %i.cd, 0
  br i1 %.not.i60, label %bb.z, label %RCLASS_WRITE_CC_TBL.exit.i

RCLASS_EXT_WRITABLE.exit.thread.i:                ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i64
  %i.ce = load i64, ptr %i.ak, align 8, !tbaa !169 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not36.i = icmp eq i64 %i.ce, 0
  br i1 %.not36.i, label %.thread.i, label %RCLASS_WRITE_CC_TBL.exit.i

.thread.i:                                        ; preds = %RCLASS_EXT_WRITABLE.exit.thread.i
  %i.cf = call i64 @rb_managed_id_table_create(ptr noundef nonnull @cc_table_type, i64 noundef 2) #23
  br label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.i

bb.z:                                             ; preds = %RCLASS_EXT_WRITABLE.exit.i58
  %i.cg = call i64 @rb_managed_id_table_create(ptr noundef nonnull @cc_table_type, i64 noundef 2) #23 ; 2 uses
  br i1 %.not5.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.i, !prof !439

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.i:      ; preds = %bb.z, %.thread.i
  %i.ch = phi i64 [ %i.cf, %.thread.i ], [ %i.cg, %bb.z ] ; 2 uses
  %i.ci = load i64, ptr %i.ai, align 8, !tbaa !77
  %i.cj = and i64 %i.ci, 16384
  %.not10.i.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not10.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.i, label %RCLASS_EXT_WRITABLE.exit.i.i, !prof !110

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.i, %bb.z
  %i.ck = phi i64 [ %i.ch, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.i ], [ %i.cg, %bb.z ] ; 2 uses
  %i.cl = call ptr @rb_current_box() #23          ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i, label %RCLASS_EXT_WRITABLE.exit.i.i.sink.split, label %bb.aa

bb.aa:                                            ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.i
  %i.cm = getelementptr i8, ptr %i.cl, i64 128
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !111, !range !114, !noundef !64
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %RCLASS_EXT_WRITABLE.exit.i.i.sink.split, label %RCLASS_EXT_WRITABLE.exit.i.i

RCLASS_EXT_WRITABLE.exit.i.i.sink.split:          ; preds = %bb.aa, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.i
  %.sink87 = phi ptr [ null, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.i ], [ %i.cl, %bb.aa ]
  %i.cp = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef %.sink87)
  br label %RCLASS_EXT_WRITABLE.exit.i.i

RCLASS_EXT_WRITABLE.exit.i.i:                     ; preds = %RCLASS_EXT_WRITABLE.exit.i.i.sink.split, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.i, %bb.aa
  %i.cq = phi i64 [ %i.ck, %bb.aa ], [ %i.ch, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.i ], [ %i.ck, %RCLASS_EXT_WRITABLE.exit.i.i.sink.split ] ; 6 uses
  %.0.i.i.i = phi ptr [ %i.aj, %bb.aa ], [ %i.aj, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.i ], [ %i.cp, %RCLASS_EXT_WRITABLE.exit.i.i.sink.split ]
  %i.cr = getelementptr i8, ptr %.0.i.i.i, i64 48
  store atomic volatile i64 %i.cq, ptr %i.cr seq_cst, align 8
  %i.cs = icmp eq i64 %i.cq, 0
  %i.ct = and i64 %i.cq, 7
  %i.cu = icmp ne i64 %i.ct, 0
  %i.cv = or i1 %i.cs, %i.cu
  br i1 %i.cv, label %RCLASS_WRITE_CC_TBL.exit.i, label %bb.ab

bb.ab:                                            ; preds = %RCLASS_EXT_WRITABLE.exit.i.i
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.cq) #23
  br label %RCLASS_WRITE_CC_TBL.exit.i

RCLASS_WRITE_CC_TBL.exit.i:                       ; preds = %bb.ab, %RCLASS_EXT_WRITABLE.exit.i.i, %RCLASS_EXT_WRITABLE.exit.thread.i, %RCLASS_EXT_WRITABLE.exit.i58
  %.0.i61 = phi i64 [ %i.cd, %RCLASS_EXT_WRITABLE.exit.i58 ], [ %i.ce, %RCLASS_EXT_WRITABLE.exit.thread.i ], [ %i.cq, %RCLASS_EXT_WRITABLE.exit.i.i ], [ %i.cq, %bb.ab ] ; 5 uses
  %i.cw = call i32 @rb_managed_id_table_lookup(i64 noundef %.0.i61, i64 noundef %1, ptr noundef nonnull %i.a) #23
  %.not18.i = icmp eq i32 %i.cw, 0
  br i1 %.not18.i, label %bb.ac, label %cache_callable_method_entry.exit

bb.ac:                                            ; preds = %RCLASS_WRITE_CC_TBL.exit.i
  %i.cx = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i19.i = icmp eq ptr %i.cx, null
  br i1 %.not.i19.i, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.cy = call i64 @rb_managed_id_table_size(i64 noundef %.0.i61) #23
  %i.cz = call i64 @rb_managed_id_table_create(ptr noundef nonnull @cc_table_type, i64 noundef %i.cy) #23 ; 7 uses
  %i.da = inttoptr i64 %i.cz to ptr
  call void @rb_managed_id_table_foreach(i64 noundef %.0.i61, ptr noundef nonnull @vm_cc_table_dup_i, ptr noundef %i.da) #23
  %i.db = call noalias nonnull dereferenceable(48) ptr @ruby_xmalloc(i64 noundef 48) #59 ; 4 uses
  store i32 2, ptr %i.db, align 8, !tbaa !7
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i32 0, ptr %i.dc, align 4, !tbaa !7
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %.135, ptr %i.dd, align 8, !tbaa !171
  %i.de = load i64, ptr %.135, align 8, !tbaa !170 ; 2 uses
  %i.df = and i64 %i.de, 1048576
  %.not.i.i20.i = icmp eq i64 %i.df, 0
  br i1 %.not.i.i20.i, label %bb.ae, label %METHOD_ENTRY_CACHED_SET.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.dg = or disjoint i64 %i.de, 1048576
  store i64 %i.dg, ptr %.135, align 8, !tbaa !170
  br label %METHOD_ENTRY_CACHED_SET.exit.i.i

METHOD_ENTRY_CACHED_SET.exit.i.i:                 ; preds = %bb.ae, %bb.ad
  %i.dh = ptrtoint ptr %i.db to i64
  %i.di = call i32 @rb_managed_id_table_insert(i64 noundef %i.cz, i64 noundef %1, i64 noundef %i.dh) #23 ; 0 uses
  %i.dj = ptrtoint ptr %.135 to i64               ; 2 uses
  %3 = and i64 %i.dj, 7
  %.not.i21.i = icmp eq i64 %3, 0
  br i1 %.not.i21.i, label %4, label %vm_ccs_create.exit.i

4:                                                ; preds = %METHOD_ENTRY_CACHED_SET.exit.i.i
  call void @rb_gc_writebarrier(i64 noundef %i.cz, i64 noundef %i.dj) #23
  br label %vm_ccs_create.exit.i

vm_ccs_create.exit.i:                             ; preds = %4, %METHOD_ENTRY_CACHED_SET.exit.i.i
  br i1 %.not5.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i28.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i23.i, !prof !168

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i28.i:      ; preds = %vm_ccs_create.exit.i
  %i.dk = load i64, ptr %i.ai, align 8, !tbaa !77
  %i.dl = and i64 %i.dk, 16384
  %.not10.i29.i = icmp eq i64 %i.dl, 0
  br i1 %.not10.i29.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i23.i, label %RCLASS_EXT_WRITABLE.exit30.i, !prof !110

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i23.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i28.i, %vm_ccs_create.exit.i
  %i.dm = call ptr @rb_current_box() #23          ; 3 uses
  %.not.i24.i = icmp eq ptr %i.dm, null
  br i1 %.not.i24.i, label %RCLASS_EXT_WRITABLE.exit30.i.sink.split, label %bb.af

bb.af:                                            ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i23.i
  %i.dn = getelementptr i8, ptr %i.dm, i64 128
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !111, !range !114, !noundef !64
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %RCLASS_EXT_WRITABLE.exit30.i.sink.split, label %RCLASS_EXT_WRITABLE.exit30.i

RCLASS_EXT_WRITABLE.exit30.i.sink.split:          ; preds = %bb.af, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i23.i
  %.sink88 = phi ptr [ null, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i23.i ], [ %i.dm, %bb.af ]
  %i.dq = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef %.sink88)
  br label %RCLASS_EXT_WRITABLE.exit30.i

RCLASS_EXT_WRITABLE.exit30.i:                     ; preds = %RCLASS_EXT_WRITABLE.exit30.i.sink.split, %bb.af, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i28.i
  %.0.i25.i = phi ptr [ %i.aj, %bb.af ], [ %i.aj, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i28.i ], [ %i.dq, %RCLASS_EXT_WRITABLE.exit30.i.sink.split ]
  %i.dr = getelementptr i8, ptr %.0.i25.i, i64 48
  store atomic volatile i64 %i.cz, ptr %i.dr seq_cst, align 8
  %i.ds = icmp eq i64 %i.cz, 0
  %i.dt = and i64 %i.cz, 7
  %i.du = icmp ne i64 %i.dt, 0
  %i.dv = or i1 %i.ds, %i.du
  br i1 %i.dv, label %cache_callable_method_entry.exit, label %bb.ag

bb.ag:                                            ; preds = %RCLASS_EXT_WRITABLE.exit30.i
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.cz) #23
  br label %cache_callable_method_entry.exit

bb.ah:                                            ; preds = %bb.ac
  %i.dw = call noalias nonnull dereferenceable(48) ptr @ruby_xmalloc(i64 noundef 48) #59 ; 4 uses
  store i32 2, ptr %i.dw, align 8, !tbaa !7
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store i32 0, ptr %i.dx, align 4, !tbaa !7
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %.135, ptr %i.dy, align 8, !tbaa !171
  %i.dz = load i64, ptr %.135, align 8, !tbaa !170 ; 2 uses
  %i.ea = and i64 %i.dz, 1048576
  %.not.i.i31.i = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i31.i, label %bb.ai, label %METHOD_ENTRY_CACHED_SET.exit.i32.i

bb.ai:                                            ; preds = %bb.ah
  %i.eb = or disjoint i64 %i.dz, 1048576
  store i64 %i.eb, ptr %.135, align 8, !tbaa !170
  br label %METHOD_ENTRY_CACHED_SET.exit.i32.i

METHOD_ENTRY_CACHED_SET.exit.i32.i:               ; preds = %bb.ai, %bb.ah
  %i.ec = ptrtoint ptr %i.dw to i64
  %i.ed = call i32 @rb_managed_id_table_insert(i64 noundef %.0.i61, i64 noundef %1, i64 noundef %i.ec) #23 ; 0 uses
  %i.ee = ptrtoint ptr %.135 to i64               ; 2 uses
  %5 = and i64 %i.ee, 7
  %.not.i33.i = icmp eq i64 %5, 0
  br i1 %.not.i33.i, label %6, label %cache_callable_method_entry.exit

6:                                                ; preds = %METHOD_ENTRY_CACHED_SET.exit.i32.i
  call void @rb_gc_writebarrier(i64 noundef %.0.i61, i64 noundef %i.ee) #23
  br label %cache_callable_method_entry.exit

cache_callable_method_entry.exit:                 ; preds = %RCLASS_WRITE_CC_TBL.exit.i, %RCLASS_EXT_WRITABLE.exit30.i, %bb.ag, %METHOD_ENTRY_CACHED_SET.exit.i32.i, %6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %bb.aj

bb.aj:                                            ; preds = %cache_callable_method_entry.exit, %bb.p, %bb.o
  %.236 = phi ptr [ %i.ay, %bb.p ], [ %i.ay, %bb.o ], [ %.135, %cache_callable_method_entry.exit ]
  %i.ef = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i.i66 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i66, label %bb.ak, label %rb_vm_lock_leave.exit

bb.ak:                                            ; preds = %bb.aj
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.e) #23
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.al

bb.al:                                            ; preds = %.thread69, %rb_vm_lock_leave.exit
  %.3 = phi ptr [ %.236, %rb_vm_lock_leave.exit ], [ %i.ac, %.thread69 ]
  ret ptr %.3
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_callable_method_entry(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc ptr @callable_method_entry_or_negative(i64 noundef %0, i64 noundef %1, ptr noundef null) ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %callable_method_entry.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  %.not7.i = icmp eq ptr %i.c, null
  br i1 %.not7.i, label %callable_method_entry.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %i.c, align 8
  %i.e = and i8 %i.d, 15
  %i.f = icmp eq i8 %i.e, 7
  %spec.select.i = select i1 %i.f, ptr null, ptr %i.a
  br label %callable_method_entry.exit

callable_method_entry.exit:                       ; preds = %bb.a, %bb.b, %bb.c
  %i.g = phi ptr [ null, %bb.a ], [ %spec.select.i, %bb.c ], [ null, %bb.b ]
  ret ptr %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_method_entry_with_refinements(i64 noundef %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc ptr @method_entry_resolve_refinement(i64 noundef %0, i64 noundef %1, i32 noundef 1, ptr noundef %2)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @method_entry_resolve_refinement(i64 noundef %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2, ptr noundef writeonly captures(address_is_null) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call fastcc ptr @search_method0(i64 noundef %0, i64 noundef %1, ptr noundef %3, i1 noundef zeroext false) ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %search_method_protect.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !418  ; 2 uses
  %.not9.i = icmp eq ptr %i.d, null
  br i1 %.not9.i, label %search_method_protect.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, 15
  switch i8 %i.f, label %search_method_protect.exit.thread.fold.split [
    i8 7, label %search_method_protect.exit.thread
    i8 11, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %.not20 = icmp eq i32 %2, 0
  br i1 %.not20, label %rb_vm_cref.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  store volatile ptr %i.h, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !70   ; 2 uses
  %.val.i.i.i = load ptr, ptr %.0..0..0..0..0..0..0..0..i.i, align 8, !tbaa !121
  %i.k = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 8
  %.val8.i.i.i = load i64, ptr %i.k, align 8, !tbaa !122
  %i.l = getelementptr [8 x i8], ptr %.val.i.i.i, i64 %.val8.i.i.i ; 2 uses
  %.not910.i.i.i = icmp ugt ptr %i.l, %i.j
  br i1 %.not910.i.i.i, label %.lr.ph.i.i.i, label %rb_vm_cref.exit.thread

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.011.i.i.i = phi ptr [ %i.o, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %i.m = getelementptr i8, ptr %.011.i.i.i, i64 32
  %.0.val.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !15 ; 2 uses
  %.0.val.val.i.i.i = load i64, ptr %.0.val.i.i.i, align 8, !tbaa !11
  %i.n = and i64 %.0.val.val.i.i.i, 128
  %.not7.not.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not7.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.o = getelementptr i8, ptr %.011.i.i.i, i64 56 ; 2 uses
  %.not9.i.i.i = icmp ugt ptr %i.l, %i.o
  br i1 %.not9.i.i.i, label %.lr.ph.i.i.i, label %rb_vm_cref.exit.thread, !llvm.loop !360

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.p = tail call fastcc ptr @vm_get_cref(ptr noundef nonnull %.0.val.i.i.i)
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val = load i64, ptr %i.q, align 8, !tbaa !26
  br label %rb_vm_cref.exit.thread

rb_vm_cref.exit.thread:                           ; preds = %bb.f, %bb.d, %bb.g, %bb.e
  %.sink = phi i64 [ 4, %bb.d ], [ %.val, %bb.g ], [ 4, %bb.e ], [ 4, %bb.f ]
  %i.r = tail call fastcc ptr @resolve_refined_method(i64 noundef %.sink, ptr noundef nonnull %i.b, ptr noundef %3) ; 3 uses
  %.not22 = icmp eq ptr %i.r, null
  br i1 %.not22, label %bb.j, label %bb.h

bb.h:                                             ; preds = %rb_vm_cref.exit.thread
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !418  ; 2 uses
  %.not23 = icmp eq ptr %i.t, null
  br i1 %.not23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.t, align 8
  %i.v = and i8 %i.u, 15
  %i.w = icmp eq i8 %i.v, 7
  br i1 %i.w, label %bb.j, label %search_method_protect.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.h, %rb_vm_cref.exit.thread
  br label %search_method_protect.exit.thread

search_method_protect.exit.thread.fold.split:     ; preds = %bb.c
  br label %search_method_protect.exit.thread

search_method_protect.exit.thread:                ; preds = %bb.c, %search_method_protect.exit.thread.fold.split, %bb.b, %bb.a, %bb.j, %bb.i
  %.1 = phi ptr [ null, %bb.j ], [ %i.r, %bb.i ], [ null, %bb.c ], [ null, %bb.a ], [ null, %bb.b ], [ %i.b, %search_method_protect.exit.thread.fold.split ]
  ret ptr %.1
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_callable_method_entry_with_refinements(i64 noundef %0, i64 noundef %1, ptr noundef captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = tail call fastcc ptr @callable_method_entry_or_negative(i64 noundef %0, i64 noundef %1, ptr noundef %2) ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %callable_method_entry_refinements.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83   ; 2 uses
  %.not7.i.i = icmp eq ptr %i.d, null
  br i1 %.not7.i.i, label %callable_method_entry_refinements.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, 15
  switch i8 %i.f, label %callable_method_entry_refinements0.exit.fold.split.i [
    i8 7, label %callable_method_entry_refinements.exit
    i8 11, label %bb.d
  ], !prof !219

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not13.i.i = icmp eq ptr %2, null
  %i.g = select i1 %.not13.i.i, ptr %i.a, ptr %2  ; 2 uses
  %i.h = call fastcc ptr @method_entry_resolve_refinement(i64 noundef %0, i64 noundef %1, i32 noundef 1, ptr noundef nonnull %i.g)
  %i.i = load i64, ptr %i.g, align 8, !tbaa !11
  %i.j = call fastcc ptr @prepare_callable_method_entry(i64 noundef %i.i, i64 noundef %1, ptr noundef %i.h, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %callable_method_entry_refinements.exit

callable_method_entry_refinements0.exit.fold.split.i: ; preds = %bb.c
  br label %callable_method_entry_refinements.exit

callable_method_entry_refinements.exit:           ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %callable_method_entry_refinements0.exit.fold.split.i
  %.0.i.i = phi ptr [ %i.j, %bb.d ], [ null, %bb.c ], [ null, %bb.a ], [ null, %bb.b ], [ %i.b, %callable_method_entry_refinements0.exit.fold.split.i ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_method_entry_without_refinements(i64 noundef %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc ptr @search_method0(i64 noundef %0, i64 noundef %1, ptr noundef %2, i1 noundef zeroext false) ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %method_entry_resolve_refinement.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !418  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.c, null
  br i1 %.not9.i.i, label %method_entry_resolve_refinement.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_6
begin_hunk_7_@rb_block_call2:bb.a
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
  %.0.8.val = load ptr, ptr %i.i, align 8, !tbaa !30 ; 3 uses
  %.not.i.i = icmp eq ptr %.0.8.val, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %.0.8.val, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65
  %i.l = getelementptr i8, ptr %.0.8.val, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !264
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.b, %bb.a
  %.0.i2.i = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.0.i7.i = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ]
  %i.n = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %i.n, align 8, !tbaa !265
  %i.o = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %i.o, label %bb.c, label %rb_ec_vm_lock_rec.exit

bb.c:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.p = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.q = load i32, ptr %i.p, align 8, !tbaa !266
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.c
  %.0.i = phi i32 [ %i.q, %bb.c ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 68
  store i32 %.0.i, ptr %i.r, align 4, !tbaa !267
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.t, ptr %i.s, align 8
  %i.u = tail call ptr @llvm.stacksave.p0()
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.u, ptr %i.v, align 8
  %i.w = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.s)
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %.thread, label %bb.d, !prof !72

.thread:                                          ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %4, ptr %i.f, align 8, !tbaa !67
  %.not41 = icmp eq ptr %2, null
  br i1 %.not41, label %bb.f, label %bb.e

bb.d:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.9 = load volatile ptr, ptr %i.b, align 8, !tbaa !28
  %i.x = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.9) ; 2 uses
  switch i32 %i.x, label %bb.p [
    i32 2, label %bb.i
    i32 4, label %bb.i
  ]

bb.e:                                             ; preds = %.thread
  %i.y = getelementptr i8, ptr %i.d, i64 24
  %i.z = getelementptr i8, ptr %i.d, i64 40
  store ptr %2, ptr %i.z, align 8, !tbaa !27
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = or i64 %i.aa, 3
  br label %VM_CF_BLOCK_HANDLER.exit

bb.f:                                             ; preds = %.thread
  %i.ac = getelementptr i8, ptr %i.d, i64 32
  %.val = load ptr, ptr %i.ac, align 8, !tbaa !15 ; 3 uses
  %.val.i = load i64, ptr %.val, align 8, !tbaa !11 ; 2 uses
  %i.ad = and i64 %.val.i, 2147418113             ; 2 uses
  switch i64 %i.ad, label %bb.g [
    i64 1145307137, label %VM_CF_BLOCK_HANDLER.exit
    i64 858980353, label %VM_CF_BLOCK_HANDLER.exit
  ]

bb.g:                                             ; preds = %bb.f
  %i.ae = and i64 %.val.i, 2
  %.not5.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not5.i.i.i, label %.lr.ph.i.i.i, label %VM_CF_LEP.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.val, %bb.g ]
  %i.af = getelementptr i8, ptr %.06.i.i.i, i64 -8
  %.0.val3.i.i.i = load i64, ptr %i.af, align 8, !tbaa !11
  %i.ag = and i64 %.0.val3.i.i.i, -4
  %i.ah = inttoptr i64 %i.ag to ptr               ; 3 uses
  %.0.val.i.i.i = load i64, ptr %i.ah, align 8, !tbaa !11 ; 2 uses
  %i.ai = and i64 %.0.val.i.i.i, 2
  %.not.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %VM_CF_LEP.exit.loopexit.i, !llvm.loop !13

VM_CF_LEP.exit.loopexit.i:                        ; preds = %.lr.ph.i.i.i
  %.pre.i = and i64 %.0.val.i.i.i, 2147418113
  br label %VM_CF_LEP.exit.i

VM_CF_LEP.exit.i:                                 ; preds = %VM_CF_LEP.exit.loopexit.i, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %VM_CF_LEP.exit.loopexit.i ], [ %i.ad, %bb.g ]
  %.0.lcssa.i.i.i = phi ptr [ %i.ah, %VM_CF_LEP.exit.loopexit.i ], [ %.val, %bb.g ]
  switch i64 %.pre-phi.i, label %bb.h [
    i64 1145307137, label %VM_CF_BLOCK_HANDLER.exit
    i64 858980353, label %VM_CF_BLOCK_HANDLER.exit
  ]

bb.h:                                             ; preds = %VM_CF_LEP.exit.i
  %i.aj = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 -8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !11
  br label %VM_CF_BLOCK_HANDLER.exit

VM_CF_BLOCK_HANDLER.exit:                         ; preds = %bb.h, %VM_CF_LEP.exit.i, %VM_CF_LEP.exit.i, %bb.f, %bb.f, %bb.e
  %.036 = phi i64 [ %i.ab, %bb.e ], [ 0, %bb.f ], [ %i.ak, %bb.h ], [ 0, %VM_CF_LEP.exit.i ], [ 0, %VM_CF_LEP.exit.i ], [ 0, %bb.f ]
  %i.al = getelementptr i8, ptr %3, i64 136
  store i64 %.036, ptr %i.al, align 8, !tbaa !441
  %i.am = call i64 %0(i64 noundef %1) #23
  store volatile i64 %i.am, ptr %i.a, align 8, !tbaa !11
  br label %bb.q

bb.i:                                             ; preds = %bb.d, %bb.d
  %i.an = getelementptr i8, ptr %3, i64 128       ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !66
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 24
  %.val44 = load ptr, ptr %i.aq, align 8, !tbaa !490
  %i.ar = icmp eq ptr %i.d, %.val44
  br i1 %i.ar, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !70  ; 2 uses
  %.not5.i = icmp eq ptr %i.as, %i.d
  br i1 %.not5.i, label %rb_vm_rewind_cfp.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.at = getelementptr i8, ptr %3, i64 32
  %i.au = getelementptr i8, ptr %3, i64 36
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i
  %i.av = phi ptr [ %i.as, %.lr.ph.i ], [ %i.be, %bb.o ] ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 32
  %.val.i47 = load ptr, ptr %i.aw, align 8, !tbaa !15
  %.val.val.i = load i64, ptr %.val.i47, align 8, !tbaa !11
  %i.ax = and i64 %.val.val.i, 2147418113
  %.not4.i = icmp eq i64 %i.ax, 1431633921
  br i1 %.not4.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = load atomic volatile i32, ptr %i.at monotonic, align 4
  %i.az = load i32, ptr %i.au, align 4, !tbaa !71
  %i.ba = xor i32 %i.az, -1
  %i.bb = and i32 %i.ay, %i.ba
  %.not.i.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i.i, label %rb_vm_pop_frame.exit.i, label %bb.m, !prof !72

bb.m:                                             ; preds = %bb.l
  %.val.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.bc = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i.i, i32 noundef 0) #23 ; 0 uses
  br label %rb_vm_pop_frame.exit.i

rb_vm_pop_frame.exit.i:                           ; preds = %bb.m, %bb.l
  %i.bd = getelementptr i8, ptr %i.av, i64 56     ; 2 uses
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !70
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  call void @rb_vm_pop_cfunc_frame()
  %.pre.i48 = load ptr, ptr %i.c, align 8, !tbaa !70
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %rb_vm_pop_frame.exit.i
  %i.be = phi ptr [ %.pre.i48, %bb.n ], [ %i.bd, %rb_vm_pop_frame.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %i.be, %i.d
  br i1 %.not.i, label %rb_vm_rewind_cfp.exit, label %bb.k, !llvm.loop !491

rb_vm_rewind_cfp.exit:                            ; preds = %bb.o, %bb.j
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.bg = getelementptr i8, ptr %i.bf, i64 64
  store i32 0, ptr %i.bg, align 8, !tbaa !68
  store i64 4, ptr %i.an, align 8, !tbaa !66
  %i.bh = getelementptr i8, ptr %i.ap, i64 16
  %.val45 = load i64, ptr %i.bh, align 8, !tbaa !492
  store volatile i64 %.val45, ptr %i.a, align 8, !tbaa !11
  %.0..0..0..0.1151.pre = load ptr, ptr %i.b, align 8, !tbaa !28
  br label %bb.q

bb.p:                                             ; preds = %bb.i, %bb.d
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !263
  %.0..0..0..0.11 = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.bj = getelementptr i8, ptr %.0..0..0..0.11, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val43 = load ptr, ptr %i.f, align 8, !tbaa !67 ; 2 uses
  %i.bk = getelementptr i8, ptr %.val43, i64 64
  store i32 %i.x, ptr %i.bk, align 8, !tbaa !68
  %i.bl = getelementptr i8, ptr %.val43, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.bl)
  unreachable

bb.q:                                             ; preds = %VM_CF_BLOCK_HANDLER.exit, %rb_vm_rewind_cfp.exit
  %.0..0..0.1151 = phi ptr [ %3, %VM_CF_BLOCK_HANDLER.exit ], [ %.0..0..0..0.1151.pre, %rb_vm_rewind_cfp.exit ]
  %i.bm = load ptr, ptr %i.h, align 8, !tbaa !263
  %i.bn = getelementptr i8, ptr %.0..0..0.1151, i64 24
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !67
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
  store i32 0, ptr %i.f, align 8, !tbaa !488
  %i.g = inttoptr i64 %7 to ptr
  %i.h = tail call ptr @rb_vm_ifunc_new(ptr noundef nonnull %4, ptr noundef %i.g, i32 noundef %5, i32 noundef %6) #23
  %i.i = ptrtoint ptr %8 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  store volatile ptr %i.k, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = call fastcc i64 @rb_iterate0(ptr noundef nonnull @iterate_method, i64 noundef %i.i, ptr noundef %i.h, ptr noundef %.0..0..0..0..0..0..i)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  ret i64 %i.l
}

declare ptr @rb_vm_ifunc_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_check_block_call(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #2 {
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
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %rb_iterate_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %5 to ptr
  %i.g = tail call ptr @rb_vm_ifunc_new(ptr noundef nonnull %4, ptr noundef %i.f, i32 noundef 0, i32 noundef -1) #23
  br label %rb_iterate_internal.exit

rb_iterate_internal.exit:                         ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  %i.i = ptrtoint ptr %6 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  store volatile ptr %i.k, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = call fastcc i64 @rb_iterate0(ptr noundef nonnull @iterate_check_method, i64 noundef %i.i, ptr noundef %i.h, ptr noundef %.0..0..0..0..0..0..0..0..i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret i64 %i.l
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iterate_check_method(i64 noundef %0) #2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !483
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !485
  %i.e = getelementptr i8, ptr %i.a, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !486
  %i.g = getelementptr i8, ptr %i.a, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !487
  %i.i = tail call fastcc i64 @rb_check_funcall_default_kw(i64 noundef %i.b, i64 noundef %i.d, i32 noundef %i.f, ptr noundef %i.h, i64 noundef 36, i32 noundef 0), !inline_history !493
  ret i64 %i.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_each(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !74
  %i.h = tail call fastcc i64 @rb_call0(ptr noundef %.0..0..0..0..0..0..0..0..i.i, i64 noundef %0, i64 noundef 3089, i32 noundef 0, ptr noundef null, i32 noundef 1, i64 noundef %i.g)
  ret i64 %i.h
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_f_eval(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.d = icmp slt i32 %0, 1
  br i1 %i.d, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !11
  store i64 %i.e, ptr %i.b, align 8, !tbaa !11
  %.not38 = icmp eq i32 %0, 1
  br i1 %.not38, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %i.h = phi i64 [ %i.g, %bb.b ], [ 4, %.preheader ] ; 4 uses
  %.286.i = phi i32 [ 2, %bb.b ], [ 1, %.preheader ] ; 4 uses
  %i.i = icmp samesign ult i32 %.286.i, %0
  br i1 %i.i, label %bb.e, label %bb.d
end_hunk_7
begin_hunk_8_@rb_sym_intern_ascii_cstr
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
  %.0.1.val = load ptr, ptr %i.k, align 8, !tbaa !30 ; 3 uses
  %.not.i.i = icmp eq ptr %.0.1.val, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %.0.1.val, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !65
  %i.n = getelementptr i8, ptr %.0.1.val, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !264
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.b, %bb.a
  %.0.i2.i = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.0.i7.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ]
  %i.p = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %i.p, align 8, !tbaa !265
  %i.q = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %i.q, label %bb.c, label %rb_ec_vm_lock_rec.exit

bb.c:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.r = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.s = load i32, ptr %i.r, align 8, !tbaa !266
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.c
  %.0.i = phi i32 [ %i.s, %bb.c ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 68
  store i32 %.0.i, ptr %i.t, align 4, !tbaa !267
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 %0, ptr %5, align 8, !tbaa !262
  %i.v = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.v, ptr %i.u, align 8
  %i.w = tail call ptr @llvm.stacksave.p0()
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.w, ptr %i.x, align 8
  %i.y = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.u)
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %.thread, label %bb.d, !prof !72

.thread:                                          ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %5, ptr %i.h, align 8, !tbaa !67
  %i.z = call i64 %1(i64 noundef %0, i64 noundef %2, i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef 4) #23
  br label %bb.l

bb.d:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.2 = load volatile ptr, ptr %i.d, align 8, !tbaa !28
  %i.aa = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.2) ; 2 uses
  %cond = icmp eq i32 %i.aa, 7
  br i1 %cond, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %.0..0..0..0.10 = load volatile ptr, ptr %i.b, align 8, !tbaa !28
  %i.ab = getelementptr i8, ptr %.0..0..0..0.10, i64 128
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !66
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %.val = load i64, ptr %i.ae, align 8, !tbaa !492
  %i.af = icmp eq i64 %.val, %0
  br i1 %i.af, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %.0..0..0..0.11 = load volatile ptr, ptr %i.b, align 8, !tbaa !28 ; 4 uses
  %.0..0..0..0.5 = load volatile ptr, ptr %i.c, align 8, !tbaa !160 ; 2 uses
  %i.ag = getelementptr i8, ptr %.0..0..0..0.11, i64 16 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !70 ; 2 uses
  %.not5.i = icmp eq ptr %i.ah, %.0..0..0..0.5
  br i1 %.not5.i, label %rb_vm_rewind_cfp.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ai = getelementptr i8, ptr %.0..0..0..0.11, i64 32
  %i.aj = getelementptr i8, ptr %.0..0..0..0.11, i64 36
  %i.ak = getelementptr i8, ptr %.0..0..0..0.11, i64 48
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i
  %i.al = phi ptr [ %i.ah, %.lr.ph.i ], [ %i.au, %bb.k ] ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 32
  %.val.i = load ptr, ptr %i.am, align 8, !tbaa !15
  %.val.val.i = load i64, ptr %.val.i, align 8, !tbaa !11
  %i.an = and i64 %.val.val.i, 2147418113
  %.not4.i = icmp eq i64 %i.an, 1431633921
  br i1 %.not4.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load atomic volatile i32, ptr %i.ai monotonic, align 4
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !71
  %i.aq = xor i32 %i.ap, -1
  %i.ar = and i32 %i.ao, %i.aq
  %.not.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i, label %rb_vm_pop_frame.exit.i, label %bb.i, !prof !72

bb.i:                                             ; preds = %bb.h
  %.val.i.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !30
  %i.as = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i.i, i32 noundef 0) #23 ; 0 uses
  br label %rb_vm_pop_frame.exit.i

rb_vm_pop_frame.exit.i:                           ; preds = %bb.i, %bb.h
  %i.at = getelementptr i8, ptr %i.al, i64 56     ; 2 uses
  store ptr %i.at, ptr %i.ag, align 8, !tbaa !70
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  call void @rb_vm_pop_cfunc_frame()
  %.pre.i = load ptr, ptr %i.ag, align 8, !tbaa !70
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %rb_vm_pop_frame.exit.i
  %i.au = phi ptr [ %.pre.i, %bb.j ], [ %i.at, %rb_vm_pop_frame.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %i.au, %.0..0..0..0.5
  br i1 %.not.i, label %rb_vm_rewind_cfp.exit, label %bb.g, !llvm.loop !491

rb_vm_rewind_cfp.exit:                            ; preds = %bb.k, %bb.f
  %.0..0..0..0.12 = load volatile ptr, ptr %i.b, align 8, !tbaa !28
  %i.av = getelementptr i8, ptr %.0..0..0..0.12, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !67
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !268
  %.0..0..0..0.13 = load volatile ptr, ptr %i.b, align 8, !tbaa !28
  %i.az = getelementptr i8, ptr %.0..0..0..0.13, i64 128
  store i64 4, ptr %i.az, align 8, !tbaa !66
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.e, %rb_vm_rewind_cfp.exit, %.thread
  %.018 = phi i32 [ 0, %.thread ], [ 0, %rb_vm_rewind_cfp.exit ], [ 7, %bb.e ], [ %i.aa, %bb.d ]
  %.0 = phi i64 [ %i.z, %.thread ], [ %i.ay, %rb_vm_rewind_cfp.exit ], [ 4, %bb.e ], [ 4, %bb.d ]
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !263
  %.0..0..0..0.4 = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.bb = getelementptr i8, ptr %.0..0..0..0.4, i64 24
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not21 = icmp eq ptr %3, null
  br i1 %.not21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %.018, ptr %3, align 4, !tbaa !7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
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

RSTRING_PTR.exit:                                 ; preds = %bb.h, %bb.i
  %i.ae = phi ptr [ %i.ad, %bb.i ], [ %i.ac, %bb.h ] ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.y
  %i.ag = getelementptr i8, ptr %i.af, i64 -1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !27
  %i.ai = icmp eq i8 %i.ah, 41
  br i1 %i.ai, label %bb.j, label %.critedge

bb.j:                                             ; preds = %RSTRING_PTR.exit
  %i.aj = load i64, ptr %i.ae, align 1
  %i.ak = xor i64 %i.aj, 8386019631004280104
  %i.al = getelementptr i8, ptr %i.ae, i64 8
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i64
  %i.ao = xor i64 %i.an, 32
  %i.ap = or i64 %i.ak, %i.ao
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %vm_get_ruby_level_caller_cfp.exit.thread, label %.critedge

.critedge:                                        ; preds = %bb.j, %RSTRING_PTR.exit
  br label %vm_get_ruby_level_caller_cfp.exit.thread

vm_get_ruby_level_caller_cfp.exit.thread:         ; preds = %bb.d, %bb.b, %vm_get_ruby_level_caller_cfp.exit, %bb.e, %bb.f, %bb.g, %.critedge, %bb.j
  %.3 = phi i64 [ %i.t, %bb.g ], [ 4, %bb.f ], [ %i.q, %bb.e ], [ 4, %bb.j ], [ %i.t, %.critedge ], [ 4, %vm_get_ruby_level_caller_cfp.exit ], [ 4, %bb.b ], [ 4, %bb.d ]
  ret i64 %.3
}

declare i64 @rb_iseq_realpath(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden nonnull ptr @rb_current_ifunc() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123  ; 4 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = icmp eq ptr %i.g, null
  %i.j = and i64 %i.h, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %imemo_type_p.exit.thread, label %imemo_type_p.exit, !prof !177

imemo_type_p.exit:                                ; preds = %bb.a
  %i.m = load i64, ptr %i.g, align 8, !tbaa !77
  %i.n = and i64 %i.m, 61471
  %.not = icmp eq i64 %i.n, 16410
  br i1 %.not, label %bb.b, label %imemo_type_p.exit.thread, !prof !369

end_hunk_8
begin_hunk_9_@rb_source_location_cstr:bb.a
bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr i8, ptr %.011.i.i, i64 56  ; 2 uses
  %.not9.i.i = icmp ugt ptr %i.g, %i.j
  br i1 %.not9.i.i, label %.lr.ph.i.i, label %rb_vm_get_ruby_level_next_cfp.exit.thread.i, !llvm.loop !360

rb_vm_get_ruby_level_next_cfp.exit.i:             ; preds = %.lr.ph.i.i
  %.not14.i = icmp eq ptr %0, null
  br i1 %.not14.i, label %rb_source_location.exit, label %bb.c

bb.c:                                             ; preds = %rb_vm_get_ruby_level_next_cfp.exit.i
  %i.k = tail call i32 @rb_vm_get_sourceline(ptr noundef nonnull %.011.i.i) #23
  store i32 %i.k, ptr %0, align 4, !tbaa !7
  br label %rb_source_location.exit

rb_vm_get_ruby_level_next_cfp.exit.thread.i:      ; preds = %bb.b, %bb.a
  %.not13.i = icmp eq ptr %0, null
  br i1 %.not13.i, label %RSTRING_PTR.exit, label %bb.d

bb.d:                                             ; preds = %rb_vm_get_ruby_level_next_cfp.exit.thread.i
  store i32 0, ptr %0, align 4, !tbaa !7
  br label %RSTRING_PTR.exit

rb_source_location.exit:                          ; preds = %rb_vm_get_ruby_level_next_cfp.exit.i, %bb.c
  %i.l = getelementptr i8, ptr %.011.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !123
  %i.n = tail call i64 @rb_iseq_path(ptr noundef %i.m) #23 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4
  br i1 %i.o, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %rb_source_location.exit
  %i.p = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !77
  %i.r = and i64 %i.q, 8192
  %.not.i = icmp eq i64 %i.r, 0
  %i.s = getelementptr i8, ptr %i.p, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %rb_vm_get_ruby_level_next_cfp.exit.thread.i, %bb.d, %bb.f, %bb.e, %rb_source_location.exit
  %.0 = phi ptr [ %i.s, %bb.e ], [ null, %rb_source_location.exit ], [ %i.t, %bb.f ], [ null, %bb.d ], [ null, %rb_vm_get_ruby_level_next_cfp.exit.thread.i ]
  ret ptr %.0
}

declare ptr @rb_string_value_ptr(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define hidden ptr @rb_vm_get_binding_creatable_next_cfp(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(address, ret: address, provenance) %1) local_unnamed_addr #32 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !121
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val8 = load i64, ptr %i.a, align 8, !tbaa !122
  %i.b = getelementptr [8 x i8], ptr %.val, i64 %.val8 ; 2 uses
  %.not910 = icmp ugt ptr %i.b, %1
  br i1 %.not910, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.011 = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]  ; 3 uses
  %i.c = getelementptr i8, ptr %.011, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !123
  %.not7 = icmp eq ptr %i.d, null
  br i1 %.not7, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr i8, ptr %.011, i64 56      ; 2 uses
  %.not9 = icmp ugt ptr %i.b, %i.e
  br i1 %.not9, label %.lr.ph, label %._crit_edge, !llvm.loop !526

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.06 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %.011, %.lr.ph ]
  ret ptr %.06
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_vm_pop_cfunc_frame() local_unnamed_addr #2 {
bb.a:
  %0 = alloca %struct.rb_trace_arg_struct, align 8 ; 12 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 4 uses
  %i.f = getelementptr i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15   ; 3 uses
  %.07.val16.i = load i64, ptr %i.g, align 8, !tbaa !11
  %i.h = and i64 %.07.val16.i, 2
  %.not17.i = icmp eq i64 %i.h, 0
  br i1 %.not17.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.0718.i = phi ptr [ %i.q, %bb.c ], [ %i.g, %bb.a ] ; 2 uses
  %i.i = getelementptr i8, ptr %.0718.i, i64 -16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11   ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !77
  %i.n = and i64 %i.m, 61440
  %cond.i = icmp eq i64 %i.n, 24576
  br i1 %cond.i, label %rb_vm_frame_method_entry.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.o = getelementptr i8, ptr %.0718.i, i64 -8
  %.07.val10.i = load i64, ptr %i.o, align 8, !tbaa !11
  %i.p = and i64 %.07.val10.i, -4
  %i.q = inttoptr i64 %i.p to ptr                 ; 3 uses
  %.07.val.i = load i64, ptr %i.q, align 8, !tbaa !11
  %i.r = and i64 %.07.val.i, 2
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !79

._crit_edge.i:                                    ; preds = %bb.c, %bb.a
  %.07.lcssa.i = phi ptr [ %i.g, %bb.a ], [ %i.q, %bb.c ]
  %i.s = getelementptr i8, ptr %.07.lcssa.i, i64 -16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !11   ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %rb_vm_frame_method_entry.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.v = inttoptr i64 %i.t to ptr                 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !77
  %i.x = trunc i64 %i.w to i32
  %i.y = lshr i32 %i.x, 12
  %i.z = and i32 %i.y, 15
  switch i32 %i.z, label %rb_vm_frame_method_entry.exit [
    i32 6, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br label %rb_vm_frame_method_entry.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr i8, ptr %i.v, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !80 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %rb_vm_frame_method_entry.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !77
  %i.af = and i64 %i.ae, 61440
  %cond.i.i = icmp eq i64 %i.af, 24576
  %spec.select.i.i = select i1 %cond.i.i, ptr %i.ad, ptr null
  br label %rb_vm_frame_method_entry.exit

rb_vm_frame_method_entry.exit:                    ; preds = %bb.b, %._crit_edge.i, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ %spec.select.i.i, %bb.g ], [ null, %bb.d ], [ null, %._crit_edge.i ], [ %i.v, %bb.e ], [ null, %bb.f ], [ %i.l, %bb.b ] ; 2 uses
  %i.ag = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48 ; 2 uses
  %.val = load ptr, ptr %i.ag, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.ah = getelementptr i8, ptr %.val, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !264 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !527
  %i.al = and i32 %i.ak, 64
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %bb.i, label %bb.h, !prof !72

bb.h:                                             ; preds = %rb_vm_frame_method_entry.exit
  %i.am = getelementptr i8, ptr %i.ai, i64 16
  %i.an = getelementptr i8, ptr %i.e, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !74
  %i.ap = getelementptr i8, ptr %.0.i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !83
  %i.ar = getelementptr i8, ptr %i.aq, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !205
  %i.at = getelementptr i8, ptr %.0.i, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load <2 x i64>, ptr %i.at, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  store i32 64, ptr %0, align 8, !tbaa !528
  store ptr %.0..0..0..0..0..0..i, ptr %i.au, align 8, !tbaa !530
  store ptr %i.e, ptr %i.av, align 8, !tbaa !531
  store i64 %i.ao, ptr %i.aw, align 8, !tbaa !532
  store i64 %i.as, ptr %i.ax, align 8, !tbaa !533
  store <2 x i64> %i.az, ptr %i.ay, align 8, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 4, ptr %i.ba, align 8, !tbaa !534
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 36, ptr %i.bb, align 8, !tbaa !535
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.bc, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %0, ptr noundef %i.am, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %rb_vm_frame_method_entry.exit
  %i.bd = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 32
  %i.be = load atomic volatile i32, ptr %i.bd monotonic, align 4
  %i.bf = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !71
  %i.bh = xor i32 %i.bg, -1
  %i.bi = and i32 %i.be, %i.bh
  %.not.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i, label %vm_pop_frame.exit, label %bb.j, !prof !72

bb.j:                                             ; preds = %bb.i
  %.val.i.i = load ptr, ptr %i.ag, align 8, !tbaa !30
  %i.bj = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i, i32 noundef 0) #23 ; 0 uses
  br label %vm_pop_frame.exit

vm_pop_frame.exit:                                ; preds = %bb.i, %bb.j
  %i.bk = getelementptr i8, ptr %i.e, i64 56
  store ptr %i.bk, ptr %i.d, align 8, !tbaa !70
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_vm_rewind_cfp(ptr noundef %0, ptr noundef readnone captures(address) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %.not5 = icmp eq ptr %i.b, %1
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = getelementptr i8, ptr %0, i64 36
  %i.e = getelementptr i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.f = phi ptr [ %i.b, %.lr.ph ], [ %i.o, %bb.f ] ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 32
  %.val = load ptr, ptr %i.g, align 8, !tbaa !15
  %.val.val = load i64, ptr %.val, align 8, !tbaa !11
  %i.h = and i64 %.val.val, 2147418113
  %.not4 = icmp eq i64 %i.h, 1431633921
  br i1 %.not4, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.j = load i32, ptr %i.d, align 4, !tbaa !71
  %i.k = xor i32 %i.j, -1
  %i.l = and i32 %i.i, %i.k
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %rb_vm_pop_frame.exit, label %bb.d, !prof !72

bb.d:                                             ; preds = %bb.c
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.m = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i, i32 noundef 0) #23 ; 0 uses
  br label %rb_vm_pop_frame.exit

rb_vm_pop_frame.exit:                             ; preds = %bb.c, %bb.d
  %i.n = getelementptr i8, ptr %i.f, i64 56       ; 2 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !70
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @rb_vm_pop_cfunc_frame()
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !70
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %rb_vm_pop_frame.exit
  %i.o = phi ptr [ %.pre, %bb.e ], [ %i.n, %rb_vm_pop_frame.exit ] ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !491

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @ruby_vm_at_exit(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !239
  %i.b = tail call noalias nonnull dereferenceable(16) ptr @ruby_xmalloc(i64 noundef 16) #59 ; 3 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !537
  %i.c = getelementptr i8, ptr %i.a, i64 1264     ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !539
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !540
  store ptr %i.b, ptr %i.c, align 8, !tbaa !539
  ret void
}

; Function Attrs: allocsize(0)
declare noalias nonnull ptr @ruby_xmalloc(i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_vm_stack_to_heap(ptr noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val.i11 = load ptr, ptr %0, align 8, !tbaa !121
  %.val8.i12 = load i64, ptr %i.c, align 8, !tbaa !122
  %i.d = getelementptr [8 x i8], ptr %.val.i11, i64 %.val8.i12 ; 2 uses
  %.not910.i13 = icmp ugt ptr %i.d, %i.b
  br i1 %.not910.i13, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.a, %rb_vm_get_binding_creatable_next_cfp.exit
  %i.e = phi ptr [ %i.k, %rb_vm_get_binding_creatable_next_cfp.exit ], [ %i.d, %bb.a ]
  %.014 = phi ptr [ %i.j, %rb_vm_get_binding_creatable_next_cfp.exit ], [ %i.b, %bb.a ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.b
  %.011.i = phi ptr [ %i.h, %bb.b ], [ %.014, %.lr.ph.i.preheader ] ; 4 uses
  %i.f = getelementptr i8, ptr %.011.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123
  %.not7.i = icmp eq ptr %i.g, null
  br i1 %.not7.i, label %bb.b, label %rb_vm_get_binding_creatable_next_cfp.exit

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr i8, ptr %.011.i, i64 56    ; 2 uses
  %.not9.i = icmp ugt ptr %i.e, %i.h
  br i1 %.not9.i, label %.lr.ph.i, label %.loopexit, !llvm.loop !526

rb_vm_get_binding_creatable_next_cfp.exit:        ; preds = %.lr.ph.i
  %i.i = tail call fastcc i64 @vm_make_env_each(ptr noundef nonnull readnone %0, ptr noundef nonnull %.011.i), !inline_history !496 ; 0 uses
  %i.j = getelementptr i8, ptr %.011.i, i64 56    ; 2 uses
  %.val.i = load ptr, ptr %0, align 8, !tbaa !121
  %.val8.i = load i64, ptr %i.c, align 8, !tbaa !122
  %i.k = getelementptr [8 x i8], ptr %.val.i, i64 %.val8.i ; 2 uses
  %.not910.i = icmp ugt ptr %i.k, %i.j
  br i1 %.not910.i, label %.lr.ph.i.preheader, label %.loopexit, !llvm.loop !541

.loopexit:                                        ; preds = %rb_vm_get_binding_creatable_next_cfp.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @rb_vm_env_prev_env(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !499  ; 2 uses
  %.val = load i64, ptr %i.b, align 8, !tbaa !11
  %i.c = and i64 %.val, 2
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 -8
  %.val5 = load i64, ptr %i.d, align 8, !tbaa !11
  %i.e = and i64 %.val5, -4
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val6 = load i64, ptr %i.g, align 8, !tbaa !11
  %i.h = inttoptr i64 %.val6 to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_env_local_variables(ptr noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.local_var_list, align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = tail call i64 @rb_ident_hash_new() #23   ; 4 uses
  store i64 %i.a, ptr %1, align 8, !tbaa !515
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !11
  call fastcc void @collect_local_variables_in_env(ptr noundef %0, ptr noundef %1)
  %i.d = tail call i64 @rb_hash_keys(i64 noundef %i.a) #23
  %i.e = tail call i64 @rb_hash_clear(i64 noundef %i.a) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @collect_local_variables_in_env(ptr noundef readonly captures(none) %0, ptr noundef nonnull readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %rb_vm_env_prev_env.exit, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.ae, %rb_vm_env_prev_env.exit ] ; 2 uses
  %i.a = getelementptr i8, ptr %.0, i64 16        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !499  ; 3 uses
  %.val = load i64, ptr %i.b, align 8, !tbaa !11  ; 3 uses
  %i.c = and i64 %.val, 16
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %rb_vm_env_prev_env.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %.0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !497  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %collect_local_variables_in_iseq.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.e, i64 16       ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !124  ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 240
  %i.i = load i32, ptr %i.h, align 8, !tbaa !190
  %.not10.i = icmp eq i32 %i.i, 0
  br i1 %.not10.i, label %collect_local_variables_in_iseq.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %local_var_list_add.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %local_var_list_add.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.j = phi ptr [ %i.t, %local_var_list_add.exit.i ], [ %i.g, %.preheader.i ]
  %i.k = getelementptr i8, ptr %i.j, i64 144
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !518
  %i.m = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11   ; 4 uses
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %local_var_list_add.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.o = tail call i32 @rb_is_local_id(i64 noundef %i.n) #66
  %.not11.i.i = icmp eq i32 %i.o, 0
  br i1 %.not11.i.i, label %local_var_list_add.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @rb_numparam_id_p(i64 noundef %i.n) #23
  %.not12.i.i = icmp eq i32 %i.p, 0
  br i1 %.not12.i.i, label %bb.f, label %local_var_list_add.exit.i

bb.f:                                             ; preds = %bb.e
  %i.q = load i64, ptr %1, align 8, !tbaa !515
  %i.r = tail call i64 @rb_id2sym(i64 noundef %i.n) #23
  %i.s = tail call i32 @rb_hash_stlike_update(i64 noundef %i.q, i64 noundef %i.r, ptr noundef nonnull @local_var_list_update, i64 noundef 0) #23 ; 0 uses
  br label %local_var_list_add.exit.i

local_var_list_add.exit.i:                        ; preds = %bb.f, %bb.e, %bb.d, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !124  ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 240
  %i.v = load i32, ptr %i.u, align 8, !tbaa !190
  %i.w = zext i32 %i.v to i64
  %i.x = icmp samesign ult i64 %indvars.iv.next.i, %i.w
  br i1 %i.x, label %.lr.ph.i, label %collect_local_variables_in_iseq.exit.loopexit, !llvm.loop !542

collect_local_variables_in_iseq.exit.loopexit:    ; preds = %local_var_list_add.exit.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !499 ; 2 uses
  %.val.i.pre = load i64, ptr %.pre, align 8, !tbaa !11
  br label %collect_local_variables_in_iseq.exit

collect_local_variables_in_iseq.exit:             ; preds = %collect_local_variables_in_iseq.exit.loopexit, %bb.c, %.preheader.i
end_hunk_9
begin_hunk_10_@vm_call_cfunc_array_argv:bb.a
  %i.bt = getelementptr i8, ptr %.03136, i64 48
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !11
  %i.bu = getelementptr [8 x i8], ptr %.0.i, i64 %indvars.iv
  %i.bv = getelementptr i8, ptr %i.bu, i64 48
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !11
  %i.bx = getelementptr i8, ptr %.03136, i64 56
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr [8 x i8], ptr %.0.i, i64 %indvars.iv
  %i.bz = getelementptr i8, ptr %i.by, i64 56
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !11
  %i.cb = getelementptr i8, ptr %.03136, i64 64   ; 3 uses
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !11
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !804

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader
  %.031.lcssa = phi ptr [ %i.aa, %.preheader ], [ %i.ak, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.cb, %.lr.ph ]
  %i.cc = getelementptr i8, ptr %.031.lcssa, i64 8
  store ptr %i.cc, ptr %i.a, align 8, !tbaa !73
  %i.cd = getelementptr i8, ptr %i.aa, i64 8
  %i.ce = tail call fastcc i64 @vm_call_cfunc_with_frame_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %i.q, ptr noundef %i.cd, ptr noundef %i.aa)
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.e
  %.0 = phi i64 [ %i.s, %bb.e ], [ %i.ce, %._crit_edge ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_call_cfunc_with_frame_(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %7 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !226
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225  ; 4 uses
  %i.c = getelementptr i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !233
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %.val = load ptr, ptr %i.e, align 8, !tbaa !187 ; 4 uses
  %i.f = getelementptr i8, ptr %.val, i64 16      ; 2 uses
  %.val51 = load ptr, ptr %i.f, align 8, !tbaa !83 ; 4 uses
  %i.g = getelementptr i8, ptr %.val51, i64 8
  %i.h = getelementptr i8, ptr %2, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !229  ; 4 uses
  %i.j = getelementptr i8, ptr %2, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !228
  %i.l = getelementptr i8, ptr %2, i64 36
  %i.m = load i8, ptr %i.l, align 4, !tbaa !231, !range !114, !noundef !64
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.b, label %rb_ec_hooks.exit, !prof !177

bb.b:                                             ; preds = %bb.a
  br label %rb_ec_hooks.exit

rb_ec_hooks.exit:                                 ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 1431635075, %bb.b ], [ 1431634051, %bb.a ]
  %i.o = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %.val53 = load ptr, ptr %i.o, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.p = getelementptr i8, ptr %.val53, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !264  ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %i.s = getelementptr i8, ptr %i.q, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !527
  %i.u = and i32 %i.t, 32
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.f, label %bb.c, !prof !72

bb.c:                                             ; preds = %rb_ec_hooks.exit
  %i.v = getelementptr i8, ptr %.val51, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !205
  %i.x = ptrtoint ptr %i.b to i64                 ; 2 uses
  %.not.i.i = trunc i64 %i.x to i1
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = lshr i64 %i.x, 32
  br label %vm_ci_mid.exit

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr i8, ptr %i.b, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !163
  br label %vm_ci_mid.exit

vm_ci_mid.exit:                                   ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.y, %bb.d ], [ %i.aa, %bb.e ]
  %i.ab = getelementptr i8, ptr %.val, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !405
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i32 32, ptr %7, align 8, !tbaa !528
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %i.ad, align 8, !tbaa !530
  %i.ae = getelementptr i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !70
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !531
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.i, ptr %i.ah, align 8, !tbaa !532
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %i.w, ptr %i.ai, align 8, !tbaa !533
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %.0.i, ptr %i.aj, align 8, !tbaa !693
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 %i.ac, ptr %i.ak, align 8, !tbaa !694
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 36, ptr %i.al, align 8, !tbaa !534
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i64 36, ptr %i.am, align 8, !tbaa !535
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 0, ptr %i.an, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %7, ptr noundef %i.r, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.f

bb.f:                                             ; preds = %vm_ci_mid.exit, %rb_ec_hooks.exit
  %i.ao = getelementptr i8, ptr %0, i64 16        ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !70 ; 7 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !73 ; 5 uses
  %i.as = getelementptr i8, ptr %i.ap, i64 -56    ; 3 uses
  %i.at = getelementptr i8, ptr %i.ar, i64 56
  %.not.i = icmp ugt ptr %i.as, %i.at
  br i1 %.not.i, label %vm_push_frame.exit, label %bb.g, !prof !72

bb.g:                                             ; preds = %bb.f
  call fastcc void @vm_stackoverflow() #58
  unreachable

vm_push_frame.exit:                               ; preds = %bb.f
  %i.au = ptrtoint ptr %.val to i64
  %i.av = getelementptr i8, ptr %i.ar, i64 8
  store i64 %i.au, ptr %i.ar, align 8, !tbaa !11
  %i.aw = getelementptr i8, ptr %i.ar, i64 16     ; 2 uses
  store i64 %i.k, ptr %i.av, align 8, !tbaa !11
  %i.ax = getelementptr i8, ptr %i.ar, i64 24
  store i64 %.0, ptr %i.aw, align 8, !tbaa !11
  store ptr null, ptr %i.as, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.ap, i64 -48
  store ptr %i.ax, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.ap, i64 -40
  store ptr null, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.ap, i64 -32
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.ap, i64 -24
  store ptr %i.aw, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.ap, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !70
  %i.ay = getelementptr i8, ptr %.val51, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !411 ; 7 uses
  %i.ba = icmp sgt i32 %i.az, -1
  br i1 %i.ba, label %bb.h, label %rb_check_arity.exit

bb.h:                                             ; preds = %vm_push_frame.exit
  %i.bb = icmp slt i32 %3, %i.az
  br i1 %i.bb, label %.split.i, label %bb.i

.split.i:                                         ; preds = %bb.h
  call void @rb_error_arity(i32 noundef %3, i32 noundef range(i32 0, -2147483648) %i.az, i32 noundef range(i32 -1, -2147483648) %i.az) #58
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.bc = icmp samesign ugt i32 %3, %i.az
  br i1 %i.bc, label %.split9.i, label %rb_check_arity.exit

.split9.i:                                        ; preds = %bb.i
  call void @rb_error_arity(i32 noundef %3, i32 noundef range(i32 0, -2147483648) %i.az, i32 noundef range(i32 -1, -2147483648) %i.az) #58
  unreachable

rb_check_arity.exit:                              ; preds = %bb.i, %vm_push_frame.exit
  %i.bd = getelementptr i8, ptr %1, i64 8
  store ptr %5, ptr %i.bd, align 8, !tbaa !73
  %i.be = getelementptr i8, ptr %.val51, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !429
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !409
  %i.bh = call i64 %i.bf(i64 noundef %i.i, i32 noundef %3, ptr noundef %4, ptr noundef %i.bg) #23 ; 2 uses
  %i.bi = load ptr, ptr %i.ao, align 8, !tbaa !70
  %i.bj = getelementptr i8, ptr %i.bi, i64 56     ; 4 uses
  %i.bk = icmp eq ptr %1, %i.bj
  br i1 %i.bk, label %bb.l, label %bb.j, !prof !72

bb.j:                                             ; preds = %rb_check_arity.exit
  %i.bl = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !63  ; 2 uses
  %i.bn = and i8 %i.bm, 2
  %.not.i55 = icmp eq i8 %i.bn, 0
  br i1 %.not.i55, label %vm_cfp_consistent_p.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = and i8 %i.bm, -3
  store i8 %i.bo, ptr %i.bl, align 8, !tbaa !63
  br label %bb.l

vm_cfp_consistent_p.exit:                         ; preds = %bb.j
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.158, ptr noundef nonnull %1, ptr noundef %i.bj) #57
  unreachable

bb.l:                                             ; preds = %rb_check_arity.exit, %bb.k
  %i.bp = getelementptr i8, ptr %0, i64 32
  %i.bq = load atomic volatile i32, ptr %i.bp monotonic, align 4
  %i.br = getelementptr i8, ptr %0, i64 36
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !71
  %i.bt = xor i32 %i.bs, -1
  %i.bu = and i32 %i.bq, %i.bt
  %.not.i.i.i57 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i.i57, label %rb_vm_pop_frame.exit, label %bb.m, !prof !72

bb.m:                                             ; preds = %bb.l
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.bv = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i, i32 noundef 0) #23 ; 0 uses
  br label %rb_vm_pop_frame.exit

rb_vm_pop_frame.exit:                             ; preds = %bb.l, %bb.m
  store ptr %i.bj, ptr %i.ao, align 8, !tbaa !70
  %.val52 = load ptr, ptr %i.o, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.bw = getelementptr i8, ptr %.val52, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !264 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 16
  %i.bz = getelementptr i8, ptr %i.bx, i64 24
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !527
  %i.cb = and i32 %i.ca, 64
  %.not50 = icmp eq i32 %i.cb, 0
  br i1 %.not50, label %bb.q, label %bb.n, !prof !72

bb.n:                                             ; preds = %rb_vm_pop_frame.exit
  %i.cc = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.cd = getelementptr i8, ptr %i.cc, i64 32
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !205
  %i.cf = ptrtoint ptr %i.b to i64                ; 2 uses
  %.not.i.i61 = trunc i64 %i.cf to i1
  br i1 %.not.i.i61, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cg = lshr i64 %i.cf, 32
  br label %vm_ci_mid.exit63

bb.p:                                             ; preds = %bb.n
  %i.ch = getelementptr i8, ptr %i.b, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !163
  br label %vm_ci_mid.exit63

vm_ci_mid.exit63:                                 ; preds = %bb.o, %bb.p
  %.0.i62 = phi i64 [ %i.cg, %bb.o ], [ %i.ci, %bb.p ]
  %i.cj = getelementptr i8, ptr %.val, i64 32
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !405
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i32 64, ptr %6, align 8, !tbaa !528
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %i.cl, align 8, !tbaa !530
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bj, ptr %i.cm, align 8, !tbaa !531
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.i, ptr %i.cn, align 8, !tbaa !532
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.ce, ptr %i.co, align 8, !tbaa !533
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %.0.i62, ptr %i.cp, align 8, !tbaa !693
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 %i.ck, ptr %i.cq, align 8, !tbaa !694
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 %i.bh, ptr %i.cr, align 8, !tbaa !534
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 36, ptr %i.cs, align 8, !tbaa !535
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 0, ptr %i.ct, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %6, ptr noundef %i.by, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.q

bb.q:                                             ; preds = %vm_ci_mid.exit63, %rb_vm_pop_frame.exit
  ret i64 %i.bh
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @vm_call_cfunc_with_frame(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !230  ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = sext i32 %i.b to i64
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr [8 x i8], ptr %i.d, i64 %i.f ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = tail call fastcc i64 @vm_call_cfunc_with_frame_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.b, ptr noundef %i.g, ptr noundef %i.h)
  ret i64 %i.i
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @vm_caller_setup_keyword_hash(ptr noundef %0, i64 noundef %1) unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit, !prof !353

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !77   ; 3 uses
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 8
  br i1 %i.h, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, !prof !369

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit
  %.not7 = icmp eq i64 %1, 4
  br i1 %.not7, label %bb.i, label %bb.b

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.i = tail call i64 @rb_to_hash_type(i64 noundef %1) #23
  br label %.sink.split

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.j = ptrtoint ptr %0 to i64                   ; 2 uses
  %.not.i.i = trunc i64 %i.j to i1
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = trunc i64 %i.j to i32
  %i.l = lshr i32 %i.k, 16
  br label %vm_ci_flag.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !173
  %i.o = trunc i64 %i.n to i32
  br label %vm_ci_flag.exit

vm_ci_flag.exit:                                  ; preds = %bb.d, %bb.e
  %.0.i8 = phi i32 [ %i.l, %bb.d ], [ %i.o, %bb.e ]
  %i.p = and i32 %.0.i8, 2048
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %vm_ci_flag.exit
  %i.q = and i64 %i.f, 32768
  %.not.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = lshr i64 %i.f, 16
  %i.s = and i64 %i.r, 15
  br label %RHASH_EMPTY_P.exit

bb.h:                                             ; preds = %bb.f
  %i.t = add i64 %1, 24
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.g, %bb.h
  %.0.i.i = phi i64 [ %i.s, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i64 %.0.i.i, 0
  br i1 %i.x, label %bb.i, label %.sink.split

.sink.split:                                      ; preds = %RHASH_EMPTY_P.exit, %bb.b
  %.sink = phi i64 [ %i.i, %bb.b ], [ %1, %RHASH_EMPTY_P.exit ]
  %i.y = tail call i64 @rb_hash_dup(i64 noundef %.sink) #23
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %vm_ci_flag.exit, %RHASH_EMPTY_P.exit, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.0 = phi i64 [ %1, %RHASH_EMPTY_P.exit ], [ 4, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %1, %vm_ci_flag.exit ], [ %i.y, %.sink.split ]
  ret i64 %.0
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @vm_caller_setup_arg_splat(ptr noundef captures(address) %0, ptr noundef captures(none) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #11 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !11
  %i.c = icmp eq i64 %2, 4
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !77   ; 2 uses
  %i.f = and i64 %i.e, 8192
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.d, i64 16
  %i.h = lshr i64 %i.e, 15
  %i.i = and i64 %i.h, 127
  br label %rb_array_len.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.d, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.l = getelementptr i8, ptr %i.d, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.c, %bb.d
  %.0.i53 = phi ptr [ %i.g, %bb.c ], [ %i.k, %bb.d ] ; 12 uses
  %.0.i51 = phi i64 [ %i.i, %bb.c ], [ %i.m, %bb.d ] ; 4 uses
  %.0.i5359 = ptrtoaddr ptr %.0.i53 to i64
  %i.n = getelementptr i8, ptr %1, i64 32         ; 4 uses
end_hunk_10
begin_hunk_11_@vm_call0_body:bb.a
  %i.ct = getelementptr i8, ptr %1, i64 24
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !229 ; 4 uses
  %i.cv = getelementptr i8, ptr %1, i64 32
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !230 ; 7 uses
  %i.cx = ptrtoint ptr %i.cl to i64               ; 2 uses
  %.not.i.i.i.i = trunc i64 %i.cx to i1
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cy = lshr i64 %i.cx, 32
  br label %vm_ci_mid.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.cz = getelementptr i8, ptr %i.cl, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !163
  br label %vm_ci_mid.exit.i.i

vm_ci_mid.exit.i.i:                               ; preds = %bb.l, %bb.k
  %.0.i64.i.i = phi i64 [ %i.cy, %bb.k ], [ %i.da, %bb.l ] ; 2 uses
  %i.db = getelementptr i8, ptr %1, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !228
  %i.dd = getelementptr i8, ptr %1, i64 36
  %i.de = load i8, ptr %i.dd, align 4, !tbaa !231, !range !114, !noundef !64
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.m, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

bb.m:                                             ; preds = %vm_ci_mid.exit.i.i
  %i.dg = icmp sgt i32 %i.cw, 0
  br i1 %i.dg, label %bb.n, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

bb.n:                                             ; preds = %bb.m
  %i.dh = zext nneg i32 %i.cw to i64
  %i.di = getelementptr [8 x i8], ptr %2, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 -8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !11 ; 4 uses
  %i.dl = icmp eq i64 %i.dk, 0
  %i.dm = and i64 %i.dk, 7
  %i.dn = icmp ne i64 %i.dm, 0
  %i.do = or i1 %i.dl, %i.dn
  br i1 %i.do, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.n
  %i.dp = inttoptr i64 %i.dk to ptr
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !77 ; 3 uses
  %i.dr = and i64 %i.dq, 31
  %i.ds = icmp eq i64 %i.dr, 8
  br i1 %i.ds, label %bb.o, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

bb.o:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.dt = and i64 %i.dq, 32768
  %.not.i.i.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.du = lshr i64 %i.dq, 16
  %i.dv = and i64 %i.du, 15
  br label %RHASH_EMPTY_P.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.dw = add i64 %i.dk, 24
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = getelementptr i8, ptr %i.dx, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit.i.i

RHASH_EMPTY_P.exit.i.i:                           ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i64 [ %i.dv, %bb.p ], [ %i.dz, %bb.q ]
  %i.ea = icmp eq i64 %.0.i.i.i.i, 0              ; 2 uses
  %spec.select.i.i = select i1 %i.ea, i64 1431634051, i64 1431635075
  %i.eb = sext i1 %i.ea to i32
  %spec.select61.i.i = add nsw i32 %i.cw, %i.eb
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %RHASH_EMPTY_P.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.n, %bb.m, %vm_ci_mid.exit.i.i
  %.056.i.i = phi i64 [ 1431635075, %bb.m ], [ 1431634051, %vm_ci_mid.exit.i.i ], [ %spec.select.i.i, %RHASH_EMPTY_P.exit.i.i ], [ 1431635075, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ 1431635075, %bb.n ]
  %.0.i.i = phi i32 [ %i.cw, %bb.m ], [ %i.cw, %vm_ci_mid.exit.i.i ], [ %spec.select61.i.i, %RHASH_EMPTY_P.exit.i.i ], [ %i.cw, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %i.cw, %bb.n ] ; 5 uses
  %i.ec = getelementptr i8, ptr %0, i64 48        ; 3 uses
  %.val63.i.i = load ptr, ptr %i.ec, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.ed = getelementptr i8, ptr %.val63.i.i, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !264 ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 24
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !527
  %i.eh = and i32 %i.eg, 32
  %.not.i.i = icmp eq i32 %i.eh, 0
  br i1 %.not.i.i, label %bb.s, label %bb.r, !prof !72

bb.r:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.ei = getelementptr i8, ptr %i.ee, i64 16
  %i.ej = getelementptr i8, ptr %i.cp, i64 32
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !205
  %i.el = getelementptr i8, ptr %.val.i.i, i64 32
  %i.em = load i64, ptr %i.el, align 8, !tbaa !405
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store i32 32, ptr %14, align 8, !tbaa !528
  %i.en = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %0, ptr %i.en, align 8, !tbaa !530
  %i.eo = getelementptr i8, ptr %0, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !70
  %i.eq = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !531
  %i.er = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i64 %i.cu, ptr %i.er, align 8, !tbaa !532
  %i.es = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i64 %i.ek, ptr %i.es, align 8, !tbaa !533
  %i.et = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 %.0.i64.i.i, ptr %i.et, align 8, !tbaa !693
  %i.eu = getelementptr inbounds nuw i8, ptr %14, i64 48
  store i64 %i.em, ptr %i.eu, align 8, !tbaa !694
  %i.ev = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i64 4, ptr %i.ev, align 8, !tbaa !534
  %i.ew = getelementptr inbounds nuw i8, ptr %14, i64 72
  store i64 36, ptr %i.ew, align 8, !tbaa !535
  %i.ex = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i32 0, ptr %i.ex, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %14, ptr noundef %i.ei, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.ey = getelementptr i8, ptr %0, i64 16        ; 4 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !70 ; 9 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !73 ; 5 uses
  %i.fc = getelementptr i8, ptr %i.ez, i64 -56    ; 3 uses
  %i.fd = getelementptr i8, ptr %i.fb, i64 56
  %.not.i.i.i = icmp ugt ptr %i.fc, %i.fd
  br i1 %.not.i.i.i, label %vm_push_frame.exit.i.i, label %bb.t, !prof !72

bb.t:                                             ; preds = %bb.s
  call fastcc void @vm_stackoverflow() #58
  unreachable

vm_push_frame.exit.i.i:                           ; preds = %bb.s
  %i.fe = ptrtoint ptr %.val.i.i to i64
  %i.ff = getelementptr i8, ptr %i.fb, i64 8
  store i64 %i.fe, ptr %i.fb, align 8, !tbaa !11
  %i.fg = getelementptr i8, ptr %i.fb, i64 16     ; 2 uses
  store i64 %i.dc, ptr %i.ff, align 8, !tbaa !11
  %i.fh = getelementptr i8, ptr %i.fb, i64 24
  store i64 %.056.i.i, ptr %i.fg, align 8, !tbaa !11
  store ptr null, ptr %i.fc, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ez, i64 -48
  store ptr %i.fh, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ez, i64 -40
  store ptr null, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ez, i64 -32
  store i64 %i.cu, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ez, i64 -24
  store ptr %i.fg, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ez, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.fc, ptr %i.ey, align 8, !tbaa !70
  %i.fi = icmp sgt i32 %i.cs, -1
  br i1 %i.fi, label %bb.u, label %rb_check_arity.exit.i.i

bb.u:                                             ; preds = %vm_push_frame.exit.i.i
  %i.fj = icmp slt i32 %.0.i.i, %i.cs
  br i1 %i.fj, label %.split.i.i.i, label %bb.v

.split.i.i.i:                                     ; preds = %bb.u
  call void @rb_error_arity(i32 noundef %.0.i.i, i32 noundef range(i32 0, -2147483648) %i.cs, i32 noundef range(i32 -1, -2147483648) %i.cs) #58
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.fk = icmp samesign ugt i32 %.0.i.i, %i.cs
  br i1 %i.fk, label %.split9.i.i.i, label %rb_check_arity.exit.i.i

.split9.i.i.i:                                    ; preds = %bb.v
  call void @rb_error_arity(i32 noundef %.0.i.i, i32 noundef range(i32 0, -2147483648) %i.cs, i32 noundef range(i32 -1, -2147483648) %i.cs) #58
  unreachable

rb_check_arity.exit.i.i:                          ; preds = %bb.v, %vm_push_frame.exit.i.i
  %i.fl = getelementptr i8, ptr %i.cp, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !429
  %i.fn = load ptr, ptr %i.cq, align 8, !tbaa !409
  %i.fo = call i64 %i.fm(i64 noundef %i.cu, i32 noundef %.0.i.i, ptr noundef %2, ptr noundef %i.fn) #23, !inline_history !852 ; 3 uses
  %i.fp = load ptr, ptr %i.ey, align 8, !tbaa !70
  %i.fq = getelementptr i8, ptr %i.fp, i64 56     ; 4 uses
  %i.fr = icmp eq ptr %i.ez, %i.fq
  br i1 %i.fr, label %bb.y, label %bb.w, !prof !72

bb.w:                                             ; preds = %rb_check_arity.exit.i.i
  %i.fs = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 8, !tbaa !63  ; 2 uses
  %i.fu = and i8 %i.ft, 2
  %.not.i67.i.i = icmp eq i8 %i.fu, 0
  br i1 %.not.i67.i.i, label %vm_cfp_consistent_p.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fv = and i8 %i.ft, -3
  store i8 %i.fv, ptr %i.fs, align 8, !tbaa !63
  br label %bb.y

vm_cfp_consistent_p.exit.i.i:                     ; preds = %bb.w
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.234, ptr noundef nonnull %i.ez, ptr noundef %i.fq) #57
  unreachable

bb.y:                                             ; preds = %bb.x, %rb_check_arity.exit.i.i
  %i.fw = getelementptr i8, ptr %0, i64 32
  %i.fx = load atomic volatile i32, ptr %i.fw monotonic, align 4
  %i.fy = getelementptr i8, ptr %0, i64 36
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !71
  %i.ga = xor i32 %i.fz, -1
  %i.gb = and i32 %i.fx, %i.ga
  %.not.i.i.i69.i.i = icmp eq i32 %i.gb, 0
  br i1 %.not.i.i.i69.i.i, label %rb_vm_pop_frame.exit.i.i, label %bb.z, !prof !72

bb.z:                                             ; preds = %bb.y
  %.val.i.i.i.i.i = load ptr, ptr %i.ec, align 8, !tbaa !30
  %i.gc = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i.i.i, i32 noundef 0) #23 ; 0 uses
  br label %rb_vm_pop_frame.exit.i.i

rb_vm_pop_frame.exit.i.i:                         ; preds = %bb.z, %bb.y
  store ptr %i.fq, ptr %i.ey, align 8, !tbaa !70
  %.val62.i.i = load ptr, ptr %i.ec, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.gd = getelementptr i8, ptr %.val62.i.i, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !264 ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 24
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !527
  %i.gh = and i32 %i.gg, 64
  %.not60.i.i = icmp eq i32 %i.gh, 0
  br i1 %.not60.i.i, label %vm_call0_cfunc.exit, label %bb.aa, !prof !72

bb.aa:                                            ; preds = %rb_vm_pop_frame.exit.i.i
  %i.gi = getelementptr i8, ptr %i.ge, i64 16
  %i.gj = load ptr, ptr %i.co, align 8, !tbaa !83
  %i.gk = getelementptr i8, ptr %i.gj, i64 32
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !205
  %i.gm = getelementptr i8, ptr %.val.i.i, i64 32
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !405
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store i32 64, ptr %13, align 8, !tbaa !528
  %i.go = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %0, ptr %i.go, align 8, !tbaa !530
  %i.gp = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.fq, ptr %i.gp, align 8, !tbaa !531
  %i.gq = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i64 %i.cu, ptr %i.gq, align 8, !tbaa !532
  %i.gr = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i64 %i.gl, ptr %i.gr, align 8, !tbaa !533
  %i.gs = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 %.0.i64.i.i, ptr %i.gs, align 8, !tbaa !693
  %i.gt = getelementptr inbounds nuw i8, ptr %13, i64 48
  store i64 %i.gn, ptr %i.gt, align 8, !tbaa !694
  %i.gu = getelementptr inbounds nuw i8, ptr %13, i64 56
  store i64 %i.fo, ptr %i.gu, align 8, !tbaa !534
  %i.gv = getelementptr inbounds nuw i8, ptr %13, i64 72
  store i64 36, ptr %i.gv, align 8, !tbaa !535
  %i.gw = getelementptr inbounds nuw i8, ptr %13, i64 64
  store i32 0, ptr %i.gw, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %13, ptr noundef %i.gi, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %vm_call0_cfunc.exit

bb.ab:                                            ; preds = %bb.b
  %i.gx = getelementptr i8, ptr %1, i64 36
  %i.gy = load i8, ptr %i.gx, align 4, !tbaa !231, !range !114, !noundef !64
  %i.gz = trunc nuw i8 %i.gy to i1
  %i.ha = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !230 ; 7 uses
  %i.hc = icmp sgt i32 %i.hb, 0
  %or.cond.i = select i1 %i.gz, i1 %i.hc, i1 false
  br i1 %or.cond.i, label %bb.ac, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.hd = zext nneg i32 %i.hb to i64
  %i.he = getelementptr [8 x i8], ptr %2, i64 %i.hd
  %i.hf = getelementptr i8, ptr %i.he, i64 -8
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !11 ; 4 uses
  %i.hh = icmp eq i64 %i.hg, 0
  %i.hi = and i64 %i.hg, 7
  %i.hj = icmp ne i64 %i.hi, 0
  %i.hk = or i1 %i.hh, %i.hj
  br i1 %i.hk, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.ac
  %i.hl = inttoptr i64 %i.hg to ptr
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !77 ; 3 uses
  %i.hn = and i64 %i.hm, 31
  %i.ho = icmp eq i64 %i.hn, 8
  br i1 %i.ho, label %bb.ad, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.thread

bb.ad:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.hp = and i64 %i.hm, 32768
  %.not.i.i.i.i243 = icmp eq i64 %i.hp, 0
  br i1 %.not.i.i.i.i243, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hq = lshr i64 %i.hm, 16
  %i.hr = and i64 %i.hq, 15
  br label %RHASH_EMPTY_P.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.hs = add i64 %i.hg, 24
  %i.ht = inttoptr i64 %i.hs to ptr
  %i.hu = getelementptr i8, ptr %i.ht, i64 16
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit.i

RHASH_EMPTY_P.exit.i:                             ; preds = %bb.af, %bb.ae
  %.0.i.i.i = phi i64 [ %i.hr, %bb.ae ], [ %i.hv, %bb.af ]
  %i.hw = icmp eq i64 %.0.i.i.i, 0
  br i1 %i.hw, label %bb.ag, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.thread

bb.ag:                                            ; preds = %RHASH_EMPTY_P.exit.i
  %i.hx = add nsw i32 %i.hb, -1                   ; 2 uses
  store i32 %i.hx, ptr %i.ha, align 8, !tbaa !230
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.ag, %bb.ab
  %i.hy = phi i32 [ %i.hb, %bb.ab ], [ %i.hx, %bb.ag ] ; 3 uses
  %i.hz = icmp slt i32 %i.hy, 1
  br i1 %i.hz, label %.split.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.thread

.split.i.i:                                       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  tail call void @rb_error_arity(i32 noundef %i.hy, i32 noundef range(i32 0, -2147483648) 1, i32 noundef range(i32 -1, -2147483648) 1) #58
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.thread:   ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %RHASH_EMPTY_P.exit.i, %bb.ac, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.ia = phi i32 [ %i.hy, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.hb, %bb.ac ], [ %i.hb, %RHASH_EMPTY_P.exit.i ], [ %i.hb, %rbimpl_RB_TYPE_P_fastpath.exit.i ] ; 2 uses
  %i.ib = icmp samesign ugt i32 %i.ia, 1
  br i1 %i.ib, label %.split9.i.i, label %vm_call_check_arity.exit

.split9.i.i:                                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.thread
  tail call void @rb_error_arity(i32 noundef %i.ia, i32 noundef range(i32 0, -2147483648) 1, i32 noundef range(i32 -1, -2147483648) 1) #58
  unreachable

vm_call_check_arity.exit:                         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.thread
  %i.ic = load i32, ptr @ruby_vm_c_events_enabled, align 4, !tbaa !7
  %.not197 = icmp eq i32 %i.ic, 0
  br i1 %.not197, label %bb.an, label %rb_ec_hooks.exit, !prof !72

rb_ec_hooks.exit:                                 ; preds = %vm_call_check_arity.exit
  %i.id = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %.val237 = load ptr, ptr %i.id, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.ie = getelementptr i8, ptr %.val237, i64 24
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !264 ; 2 uses
  %i.ig = getelementptr i8, ptr %i.if, i64 16
  %i.ih = getelementptr i8, ptr %i.if, i64 24
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !527
  %i.ij = and i32 %i.ii, 32
  %.not198 = icmp eq i32 %i.ij, 0
  br i1 %.not198, label %rb_ec_hooks.exit249, label %bb.ah, !prof !72

bb.ah:                                            ; preds = %rb_ec_hooks.exit
  %i.ik = getelementptr i8, ptr %1, i64 24
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !229
  %i.im = getelementptr i8, ptr %i.i, i64 32
  %i.in = load i64, ptr %i.im, align 8, !tbaa !205
  %i.io = ptrtoint ptr %i.d to i64                ; 2 uses
  %.not.i.i246 = trunc i64 %i.io to i1
  br i1 %.not.i.i246, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ip = lshr i64 %i.io, 32
  br label %vm_ci_mid.exit

bb.aj:                                            ; preds = %bb.ah
  %i.iq = getelementptr i8, ptr %i.d, i64 16
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !163
  br label %vm_ci_mid.exit

vm_ci_mid.exit:                                   ; preds = %bb.ai, %bb.aj
  %.0.i = phi i64 [ %i.ip, %bb.ai ], [ %i.ir, %bb.aj ]
  %i.is = getelementptr i8, ptr %.val228, i64 32
  %i.it = load i64, ptr %i.is, align 8, !tbaa !405
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store i32 32, ptr %12, align 8, !tbaa !528
  %i.iu = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %0, ptr %i.iu, align 8, !tbaa !530
  %i.iv = getelementptr i8, ptr %0, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !70
  %i.ix = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.iw, ptr %i.ix, align 8, !tbaa !531
  %i.iy = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i64 %i.il, ptr %i.iy, align 8, !tbaa !532
  %i.iz = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 %i.in, ptr %i.iz, align 8, !tbaa !533
  %i.ja = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 %.0.i, ptr %i.ja, align 8, !tbaa !693
  %i.jb = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i64 %i.it, ptr %i.jb, align 8, !tbaa !694
  %i.jc = getelementptr inbounds nuw i8, ptr %12, i64 56
  store i64 36, ptr %i.jc, align 8, !tbaa !534
  %i.jd = getelementptr inbounds nuw i8, ptr %12, i64 72
  store i64 36, ptr %i.jd, align 8, !tbaa !535
  %i.je = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i32 0, ptr %i.je, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %12, ptr noundef %i.ig, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %.val224.pre = load ptr, ptr %i.g, align 8, !tbaa !187
  %.phi.trans.insert443 = getelementptr i8, ptr %.val224.pre, i64 16
  %.pre444 = load ptr, ptr %.phi.trans.insert443, align 8, !tbaa !83
  br label %rb_ec_hooks.exit249

rb_ec_hooks.exit249:                              ; preds = %vm_ci_mid.exit, %rb_ec_hooks.exit
  %i.jf = phi ptr [ %.pre444, %vm_ci_mid.exit ], [ %i.i, %rb_ec_hooks.exit ]
  %i.jg = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !229
  %i.ji = getelementptr i8, ptr %i.jf, i64 8
end_hunk_11
begin_hunk_12_@invoke_block_from_c_bh:bb.a
  %.sroa.4.0..sroa_idx.i.i = getelementptr i8, ptr %i.cq, i64 -32
  store i64 %i.at, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i.i = getelementptr i8, ptr %i.cq, i64 -24
  store ptr %i.dw, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i.i = getelementptr i8, ptr %i.cq, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.da, ptr %i.aw, align 8, !tbaa !70
  %i.dy = call i64 @rb_vm_exec(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.z

.split51.us:                                      ; preds = %.split, %.split.us
  %.us-phi52 = phi i64 [ %.027.us, %.split.us ], [ %.027, %.split ]
  %i.dz = and i64 %.us-phi52, -4
  %i.ea = inttoptr i64 %i.dz to ptr               ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !208
  %i.ec = tail call fastcc i64 @vm_yield_with_cfunc(ptr noundef %0, ptr noundef nonnull %i.ea, i64 noundef %i.eb, i32 noundef %2, ptr noundef %3, i32 noundef %4, i64 noundef %5, ptr noundef null)
  br label %bb.z

vm_block_handler_type.exit:                       ; preds = %bb.i, %RB_SYMBOL_P.exit.i, %bb.b, %RB_SYMBOL_P.exit.i.us
  %.us-phi53 = phi i64 [ %.027.us, %bb.b ], [ %.027.us, %RB_SYMBOL_P.exit.i.us ], [ %.027, %RB_SYMBOL_P.exit.i ], [ %.027, %bb.i ]
  %i.ed = tail call i64 @rb_sym2id(i64 noundef %.us-phi53) #23
  %i.ee = icmp eq i64 %5, 0
  br i1 %i.ee, label %vm_yield_with_symbol.exit, label %bb.s

bb.s:                                             ; preds = %vm_block_handler_type.exit
  %i.ef = and i64 %5, 3
  switch i64 %i.ef, label %bb.t [
    i64 1, label %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i
    i64 3, label %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i
  ]

bb.t:                                             ; preds = %bb.s
  %i.eg = and i64 %5, 255
  %i.eh = icmp eq i64 %i.eg, 12
  br i1 %i.eh, label %vm_block_handler_type.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ei = and i64 %5, 7
  %.not.i.i32 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.i32, label %RB_SYMBOL_P.exit.i.i.i, label %vm_yield_with_symbol.exit

RB_SYMBOL_P.exit.i.i.i:                           ; preds = %bb.u
  %i.ej = inttoptr i64 %5 to ptr
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !77
  %.fr10.i.i.i = freeze i64 %i.ek
  %i.el = and i64 %.fr10.i.i.i, 31
  %i.em = icmp eq i64 %i.el, 20
  br i1 %i.em, label %vm_block_handler_type.exit.i.i, label %vm_yield_with_symbol.exit

RB_SYMBOL_P.exit.thread7.fold.split.i.i.i:        ; preds = %bb.s, %bb.s
  %i.en = and i64 %5, -4
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = load i64, ptr @rb_cProc, align 8, !tbaa !11
  %i.eq = tail call i64 @rb_vm_make_proc_lambda(ptr noundef readnone %0, ptr noundef %i.eo, i64 noundef %i.ep, i8 noundef signext 0), !inline_history !78
  br label %vm_yield_with_symbol.exit

vm_block_handler_type.exit.i.i:                   ; preds = %RB_SYMBOL_P.exit.i.i.i, %bb.t
  %i.er = tail call i64 @rb_sym_to_proc(i64 noundef %5) #23
  br label %vm_yield_with_symbol.exit

vm_yield_with_symbol.exit:                        ; preds = %vm_block_handler_type.exit, %bb.u, %RB_SYMBOL_P.exit.i.i.i, %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i, %vm_block_handler_type.exit.i.i
  %.0.i.i = phi i64 [ 4, %vm_block_handler_type.exit ], [ %i.eq, %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i ], [ %i.er, %vm_block_handler_type.exit.i.i ], [ %5, %bb.u ], [ %5, %RB_SYMBOL_P.exit.i.i.i ]
  %i.es = tail call i64 @rb_sym_proc_call(i64 noundef %i.ed, i32 noundef %2, ptr noundef %3, i32 noundef %4, i64 noundef %.0.i.i) #23
  br label %bb.z

block_proc_is_lambda.exit:                        ; preds = %bb.j, %RB_SYMBOL_P.exit.i
  %i.et = getelementptr i8, ptr %.pre70, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !456 ; 5 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 24
  %.val.i = load i32, ptr %i.ev, align 8, !tbaa !458
  switch i32 %.val.i, label %.split55.us [
    i32 0, label %bb.v
    i32 1, label %bb.w
    i32 2, label %bb.x
    i32 3, label %bb.y
  ]

bb.v:                                             ; preds = %block_proc_is_lambda.exit
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = or i64 %i.ew, 1
  br label %.split.backedge

.split.backedge:                                  ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  %.027.be = phi i64 [ %i.fb, %bb.y ], [ %i.ex, %bb.v ], [ %i.ez, %bb.w ], [ %i.fa, %bb.x ]
  br label %.split

bb.w:                                             ; preds = %block_proc_is_lambda.exit
  %i.ey = ptrtoint ptr %i.eu to i64
  %i.ez = or i64 %i.ey, 3
  br label %.split.backedge

bb.x:                                             ; preds = %block_proc_is_lambda.exit
  %i.fa = load i64, ptr %i.eu, align 8, !tbaa !27
  br label %.split.backedge

bb.y:                                             ; preds = %block_proc_is_lambda.exit
  %i.fb = load i64, ptr %i.eu, align 8, !tbaa !27
  br label %.split.backedge

.split55.us:                                      ; preds = %block_proc_is_lambda.exit, %.thread
  unreachable

bb.z:                                             ; preds = %vm_yield_with_symbol.exit, %.split51.us, %invoke_block.exit
  %.0 = phi i64 [ %i.dy, %invoke_block.exit ], [ %i.ec, %.split51.us ], [ %i.es, %vm_yield_with_symbol.exit ]
  ret i64 %.0
}

declare i64 @rb_exc_new_cstr(i64 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @rb_iv_set(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @vm_exec_handle_exception(ptr noundef %0, i32 noundef range(i32 1, 0) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  %3 = alloca %struct.rb_trace_arg_struct, align 8 ; 12 uses
  %i.a = inttoptr i64 %2 to ptr                   ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 16         ; 8 uses
  %i.c = getelementptr i8, ptr %0, i64 48         ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.l = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 36         ; 3 uses
  %i.n = getelementptr i8, ptr %i.a, i64 24       ; 4 uses
  %i.o = getelementptr i8, ptr %i.a, i64 32
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !70
  br label %bb.b

bb.b:                                             ; preds = %bb.bi, %bb.a
  %.pre = phi ptr [ %.pre.pre, %bb.a ], [ %i.kl, %bb.bi ]
  %.0196 = phi i32 [ %1, %bb.a ], [ %.1197304317, %bb.bi ] ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %rb_vm_pop_frame.exit, %bb.b
  %i.p = phi ptr [ %i.at, %rb_vm_pop_frame.exit ], [ %.pre, %bb.b ] ; 32 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !146  ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.p, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !123  ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.critedge, label %bb.h

.critedge:                                        ; preds = %bb.c, %bb.d
  %i.v = getelementptr i8, ptr %i.p, i64 32
  %.val256 = load ptr, ptr %i.v, align 8, !tbaa !15
  %.val256.val = load i64, ptr %.val256, align 8, !tbaa !11
  %i.w = and i64 %.val256.val, 2147418113
  %i.x = icmp eq i64 %i.w, 1431633921
  br i1 %i.x, label %rb_ec_hooks.exit, label %bb.f, !prof !177

rb_ec_hooks.exit:                                 ; preds = %.critedge
  %.val255 = load ptr, ptr %i.c, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.y = getelementptr i8, ptr %.val255, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !264  ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !527
  %i.ac = and i32 %i.ab, 64
  %.not252 = icmp eq i32 %i.ac, 0
  br i1 %.not252, label %bb.f, label %bb.e, !prof !72

bb.e:                                             ; preds = %rb_ec_hooks.exit
  %i.ad = getelementptr i8, ptr %i.z, i64 16
  %i.ae = getelementptr i8, ptr %i.p, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !74
  %i.ag = call ptr @rb_vm_frame_method_entry(ptr noundef nonnull %i.p) ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !83
  %i.aj = getelementptr i8, ptr %i.ai, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !205
  %i.al = getelementptr i8, ptr %i.ag, i64 24
  %i.am = load <2 x i64>, ptr %i.al, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 64, ptr %3, align 8, !tbaa !528
  store ptr %0, ptr %i.d, align 8, !tbaa !530
  store ptr %i.p, ptr %i.e, align 8, !tbaa !531
  store i64 %i.af, ptr %i.f, align 8, !tbaa !532
  store i64 %i.ak, ptr %i.g, align 8, !tbaa !533
  store <2 x i64> %i.am, ptr %i.h, align 8, !tbaa !11
  store i64 4, ptr %i.i, align 8, !tbaa !534
  store i64 36, ptr %i.j, align 8, !tbaa !535
  store i32 0, ptr %i.k, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %3, ptr noundef %i.ad, i32 noundef 1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.pre492 = load ptr, ptr %i.b, align 8, !tbaa !70
  br label %bb.f

bb.f:                                             ; preds = %rb_ec_hooks.exit, %bb.e, %.critedge
  %i.an = phi ptr [ %i.p, %rb_ec_hooks.exit ], [ %.pre492, %bb.e ], [ %i.p, %.critedge ]
  %i.ao = load atomic volatile i32, ptr %i.l monotonic, align 4
  %i.ap = load i32, ptr %i.m, align 4, !tbaa !71
  %i.aq = xor i32 %i.ap, -1
  %i.ar = and i32 %i.ao, %i.aq
  %.not.i.i.i262 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i262, label %rb_vm_pop_frame.exit, label %bb.g, !prof !72

bb.g:                                             ; preds = %bb.f
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.as = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i, i32 noundef 0) #23 ; 0 uses
  br label %rb_vm_pop_frame.exit

rb_vm_pop_frame.exit:                             ; preds = %bb.f, %bb.g
  %i.at = getelementptr i8, ptr %i.an, i64 56     ; 2 uses
  store ptr %i.at, ptr %i.b, align 8, !tbaa !70
  br label %bb.c, !llvm.loop !912

bb.h:                                             ; preds = %bb.d
  %i.au = getelementptr i8, ptr %i.t, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !124 ; 14 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !147 ; 4 uses
  %i.ay = ptrtoint ptr %i.q to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3                 ; 10 uses
  %i.bc = icmp eq i32 %.0196, 1
  %i.bd = icmp ult i32 %.0196, 3
  br i1 %i.bd, label %bb.i, label %bb.u

bb.i:                                             ; preds = %bb.h
  %.val258 = load ptr, ptr %i.n, align 8, !tbaa !490 ; 3 uses
  %i.be = icmp eq ptr %i.p, %.val258
  br i1 %i.be, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  br i1 %i.bc, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr i8, ptr %i.p, i64 32
  %.val254 = load ptr, ptr %i.bf, align 8, !tbaa !15
  %.val254.val = load i64, ptr %.val254, align 8, !tbaa !11
  %i.bg = and i64 %.val254.val, 32
  %.not = icmp eq i64 %i.bg, 0
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr i8, ptr %i.p, i64 56
  store ptr %i.bh, ptr %i.n, align 8, !tbaa !490
  store i32 2, ptr %i.o, align 8, !tbaa !161
  br label %.thread293

bb.m:                                             ; preds = %bb.k
  %i.bi = getelementptr i8, ptr %i.av, i64 160
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !148 ; 4 uses
  %.not235 = icmp eq ptr %i.bj, null
  br i1 %.not235, label %.thread, label %.preheader364

.preheader364:                                    ; preds = %bb.m
  %i.bk = load i32, ptr %i.bj, align 1, !tbaa !7  ; 2 uses
  %.not427 = icmp eq i32 %i.bk, 0
  br i1 %.not427, label %.thread, label %.lr.ph415

.lr.ph415:                                        ; preds = %.preheader364
  %i.bl = getelementptr i8, ptr %i.bj, i64 4
  %wide.trip.count479 = zext i32 %i.bk to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph415, %bb.q
  %indvars.iv476 = phi i64 [ 0, %.lr.ph415 ], [ %indvars.iv.next477, %bb.q ] ; 2 uses
  %i.bm = getelementptr [32 x i8], ptr %i.bl, i64 %indvars.iv476 ; 6 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 16
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !152
  %i.bp = zext i32 %i.bo to i64
  %i.bq = icmp ugt i64 %i.bb, %i.bp
  br i1 %i.bq, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr i8, ptr %i.bm, i64 20
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !153
  %i.bt = zext i32 %i.bs to i64
  %.not236 = icmp ugt i64 %i.bb, %i.bt
  br i1 %.not236, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = load i32, ptr %i.bm, align 8, !tbaa !149
  %i.bv = icmp eq i32 %i.bu, 5
  br i1 %i.bv, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  %indvars.iv.next477 = add nuw nsw i64 %indvars.iv476, 1 ; 2 uses
  %exitcond480.not = icmp eq i64 %indvars.iv.next477, %wide.trip.count479
  br i1 %exitcond480.not, label %.thread, label %bb.n, !llvm.loop !913

bb.r:                                             ; preds = %bb.p
  %i.bw = getelementptr i8, ptr %i.bm, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !151 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bm, i64 24
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !154
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr i8, ptr %i.bm, i64 28
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !914
  %i.cd = zext i32 %i.cc to i64
  %i.ce = icmp eq ptr %i.bx, null
  br i1 %i.ce, label %.thread, label %.preheader362

.thread:                                          ; preds = %bb.m, %bb.r, %.preheader364, %bb.q
  %i.cf = getelementptr i8, ptr %0, i64 128
  store i64 4, ptr %i.cf, align 8, !tbaa !66
  %i.cg = getelementptr i8, ptr %i.p, i64 56
  store ptr %i.cg, ptr %i.n, align 8, !tbaa !490
  call fastcc void @hook_before_rewind(ptr noundef %0, i1 noundef zeroext true, i32 noundef 1, ptr noundef %i.a)
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.ci = load atomic volatile i32, ptr %i.l monotonic, align 8
  %i.cj = load i32, ptr %i.m, align 4, !tbaa !71
  %i.ck = xor i32 %i.cj, -1
  %i.cl = and i32 %i.ci, %i.ck
  %.not.i.i.i263 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i.i263, label %rb_vm_pop_frame.exit265, label %bb.s, !prof !72

bb.s:                                             ; preds = %.thread
  %.val.i.i.i264 = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.cm = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i264, i32 noundef 0) #23 ; 0 uses
  br label %rb_vm_pop_frame.exit265

rb_vm_pop_frame.exit265:                          ; preds = %.thread, %bb.s
  %i.cn = getelementptr i8, ptr %i.ch, i64 56
  store ptr %i.cn, ptr %i.b, align 8, !tbaa !70
  %i.co = getelementptr i8, ptr %i.a, i64 16
  %.val261 = load i64, ptr %i.co, align 8, !tbaa !492
  br label %bb.bj

bb.t:                                             ; preds = %bb.j
  %i.cp = getelementptr i8, ptr %i.a, i64 16
  %.val260 = load i64, ptr %i.cp, align 8, !tbaa !492
  %i.cq = getelementptr i8, ptr %i.p, i64 8       ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !73 ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 8
  store ptr %i.cs, ptr %i.cq, align 8, !tbaa !73
  store i64 %.val260, ptr %i.cr, align 8, !tbaa !11
  %i.ct = getelementptr i8, ptr %0, i64 128
  store i64 4, ptr %i.ct, align 8, !tbaa !66
  br label %bb.bj

bb.u:                                             ; preds = %bb.i, %bb.h
  %.0213 = phi ptr [ %.val258, %bb.i ], [ null, %bb.h ] ; 10 uses
  switch i32 %.0196, label %.thread293 [
    i32 6, label %bb.v
    i32 4, label %bb.aa
  ]

bb.v:                                             ; preds = %bb.u
  %i.cu = getelementptr i8, ptr %i.av, i64 160
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !148 ; 3 uses
  %.not248 = icmp eq ptr %i.cv, null
  br i1 %.not248, label %.thread309, label %.preheader365

.preheader365:                                    ; preds = %bb.v
  %i.cw = load i32, ptr %i.cv, align 1, !tbaa !7  ; 2 uses
  %.not426 = icmp eq i32 %i.cw, 0
  br i1 %.not426, label %.thread309, label %.lr.ph413

.lr.ph413:                                        ; preds = %.preheader365
  %i.cx = getelementptr i8, ptr %i.cv, i64 4
  %wide.trip.count474 = zext i32 %i.cw to i64
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph413, %bb.z
  %indvars.iv471 = phi i64 [ 0, %.lr.ph413 ], [ %indvars.iv.next472, %bb.z ] ; 2 uses
  %i.cy = getelementptr [32 x i8], ptr %i.cx, i64 %indvars.iv471 ; 5 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 16
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !152
  %i.db = zext i32 %i.da to i64
  %i.dc = icmp ugt i64 %i.bb, %i.db
  br i1 %i.dc, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dd = getelementptr i8, ptr %i.cy, i64 20
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !153
  %i.df = zext i32 %i.de to i64
  %.not249 = icmp ugt i64 %i.bb, %i.df
  br i1 %.not249, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dg = load i32, ptr %i.cy, align 8, !tbaa !149
  switch i32 %i.dg, label %bb.z [
    i32 3, label %.loopexit.sink.split
    i32 5, label %.loopexit.sink.split
  ]

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.x
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 1 ; 2 uses
  %exitcond475.not = icmp eq i64 %indvars.iv.next472, %wide.trip.count474
  br i1 %exitcond475.not, label %.thread309, label %bb.w, !llvm.loop !915

bb.aa:                                            ; preds = %bb.u
  %i.dh = getelementptr i8, ptr %i.av, i64 160
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !148 ; 3 uses
  %.not245 = icmp eq ptr %i.di, null
  br i1 %.not245, label %.thread309, label %.preheader366

end_hunk_12
begin_hunk_13_@vm_exec_handle_exception:bb.a
  %.val23.i268 = load ptr, ptr %i.he, align 8, !tbaa !15 ; 3 uses
  %.val23.val.i269 = load i64, ptr %.val23.i268, align 8, !tbaa !11
  %i.hf = trunc i64 %.val23.val.i269 to i32       ; 3 uses
  %i.hg = and i32 %i.hf, 128
  %.not19.not.i270 = icmp eq i32 %i.hg, 0
  br i1 %.not19.not.i270, label %bb.az, label %vm_base_ptr.exit284

bb.az:                                            ; preds = %bb.ay
  %i.hh = getelementptr i8, ptr %i.p, i64 64
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !73
  %i.hj = getelementptr i8, ptr %i.av, i64 240
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !190 ; 2 uses
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr [8 x i8], ptr %i.hi, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hm, i64 24     ; 2 uses
  %i.ho = getelementptr i8, ptr %i.av, i64 16
  %i.hp = load i16, ptr %i.ho, align 8
  %i.hq = and i16 %i.hp, 8192
  %.not20.i272 = icmp eq i16 %i.hq, 0
  %i.hr = and i32 %i.hf, 2
  %.not21.i273 = icmp eq i32 %i.hr, 0
  %or.cond.i274 = or i1 %.not21.i273, %.not20.i272
  br i1 %or.cond.i274, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hs = getelementptr i8, ptr %i.av, i64 20
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !191
  %reass.sub430 = sub i32 %i.ht, %i.hk
  %i.hu = add i32 %reass.sub430, -3
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr [8 x i8], ptr %.val23.i268, i64 %i.hv
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !11 ; 3 uses
  %.not.i.i.i276 = trunc i64 %i.hx to i1
  br i1 %.not.i.i.i276, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hy = lshr i64 %i.hx, 1
  %i.hz = and i64 %i.hy, 32767
  br label %vm_ci_argc.exit.i277

bb.bc:                                            ; preds = %bb.ba
  %i.ia = inttoptr i64 %i.hx to ptr
  %i.ib = getelementptr i8, ptr %i.ia, i64 32
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !174
  %i.id = and i64 %i.ic, 4294967295
  br label %vm_ci_argc.exit.i277

vm_ci_argc.exit.i277:                             ; preds = %bb.bc, %bb.bb
  %.0.i.i278 = phi i64 [ %i.hz, %bb.bb ], [ %i.id, %bb.bc ]
  %i.ie = getelementptr [8 x i8], ptr %i.hn, i64 %.0.i.i278
  br label %bb.bd

bb.bd:                                            ; preds = %vm_ci_argc.exit.i277, %bb.az
  %.018.i279 = phi ptr [ %i.ie, %vm_ci_argc.exit.i277 ], [ %i.hn, %bb.az ]
  %i.if = load i32, ptr %i.av, align 8, !tbaa !127
  %i.ig = icmp ne i32 %i.if, 1
  %i.ih = and i32 %i.hf, 64
  %.not22.i280 = icmp eq i32 %i.ih, 0
  %or.cond25.i281 = and i1 %.not22.i280, %i.ig
  %spec.select.idx.i282 = select i1 %or.cond25.i281, i64 0, i64 8
  %spec.select.i283 = getelementptr i8, ptr %.018.i279, i64 %spec.select.idx.i282
  br label %vm_base_ptr.exit284

vm_base_ptr.exit284:                              ; preds = %bb.ay, %bb.bd
  %.0.i271 = phi ptr [ %spec.select.i283, %bb.bd ], [ null, %bb.ay ]
  %i.ii = getelementptr [8 x i8], ptr %.0.i271, i64 %.2209 ; 3 uses
  %i.ij = getelementptr i8, ptr %i.p, i64 8
  store ptr %i.ii, ptr %i.ij, align 8, !tbaa !73
  %i.ik = getelementptr [8 x i8], ptr %i.ax, i64 %.2206
  store ptr %i.ik, ptr %i.p, align 8, !tbaa !146
  store i64 %2, ptr %i.ii, align 8, !tbaa !11
  %i.il = getelementptr i8, ptr %i.p, i64 24
  %i.im = load i64, ptr %i.il, align 8, !tbaa !74
  %i.in = ptrtoint ptr %.val23.i268 to i64
  %i.io = or i64 %i.in, 1
  %i.ip = getelementptr i8, ptr %.2212, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !124 ; 3 uses
  %i.ir = getelementptr i8, ptr %i.iq, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !147
  %i.it = getelementptr i8, ptr %i.ii, i64 8      ; 5 uses
  %i.iu = getelementptr i8, ptr %i.iq, i64 240
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !190
  %i.iw = add i32 %i.iv, -1                       ; 5 uses
  %i.ix = getelementptr i8, ptr %i.iq, i64 264
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !355
  %i.iz = getelementptr i8, ptr %i.p, i64 -56     ; 3 uses
  %i.ja = add i32 %i.iy, %i.iw
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr [8 x i8], ptr %i.it, i64 %i.jb
  %i.jd = getelementptr i8, ptr %i.jc, i64 56
  %.not.i285 = icmp ugt ptr %i.iz, %i.jd
  br i1 %.not.i285, label %.preheader.i, label %bb.be, !prof !72

.preheader.i:                                     ; preds = %vm_base_ptr.exit284
  %i.je = icmp sgt i32 %i.iw, 0
  br i1 %i.je, label %.lr.ph.i.preheader, label %vm_push_frame.exit

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.jf = zext nneg i32 %i.iw to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.iw, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader615, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.jf, 2147483644              ; 4 uses
  %i.jg = shl nuw nsw i64 %n.vec, 3
  %i.jh = getelementptr i8, ptr %i.it, i64 %i.jg  ; 2 uses
  %i.ji = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jj = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.it, i64 %i.jj ; 2 uses
  %i.jk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep, align 8, !tbaa !11
  store <2 x i64> splat (i64 4), ptr %i.jk, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jl = icmp eq i64 %index.next, %n.vec
  br i1 %i.jl, label %middle.block, label %vector.body, !llvm.loop !919

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.jf
  br i1 %cmp.n, label %vm_push_frame.exit, label %.lr.ph.i.preheader615

.lr.ph.i.preheader615:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.026.i.ph = phi ptr [ %i.it, %.lr.ph.i.preheader ], [ %i.jh, %middle.block ]
  %.02325.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.ji, %middle.block ]
  br label %.lr.ph.i

bb.be:                                            ; preds = %vm_base_ptr.exit284
  call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader615, %.lr.ph.i
  %.026.i = phi ptr [ %i.jm, %.lr.ph.i ], [ %.026.i.ph, %.lr.ph.i.preheader615 ] ; 2 uses
  %.02325.i = phi i32 [ %i.jn, %.lr.ph.i ], [ %.02325.i.ph, %.lr.ph.i.preheader615 ]
  %i.jm = getelementptr i8, ptr %.026.i, i64 8    ; 2 uses
  store i64 4, ptr %.026.i, align 8, !tbaa !11
  %i.jn = add nuw nsw i32 %.02325.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.jn, %i.iw
  br i1 %exitcond.not.i, label %vm_push_frame.exit, label %.lr.ph.i, !llvm.loop !920

vm_push_frame.exit:                               ; preds = %.lr.ph.i, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %i.it, %.preheader.i ], [ %i.jh, %middle.block ], [ %i.jm, %.lr.ph.i ] ; 4 uses
  %i.jo = getelementptr i8, ptr %.0.lcssa.i, i64 8
  store i64 0, ptr %.0.lcssa.i, align 8, !tbaa !11
  %i.jp = getelementptr i8, ptr %.0.lcssa.i, i64 16 ; 2 uses
  store i64 %i.io, ptr %i.jo, align 8, !tbaa !11
  %i.jq = getelementptr i8, ptr %.0.lcssa.i, i64 24
  store i64 2022178817, ptr %i.jp, align 8, !tbaa !11
  store ptr %i.is, ptr %i.iz, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.p, i64 -48
  store ptr %i.jq, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.p, i64 -40
  store ptr %.2212, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.p, i64 -32
  store i64 %i.im, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.p, i64 -24
  store ptr %i.jp, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.p, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.iz, ptr %i.b, align 8, !tbaa !70
  %i.jr = getelementptr i8, ptr %0, i64 24
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !67
  %i.jt = getelementptr i8, ptr %i.js, i64 64
  store i32 0, ptr %i.jt, align 8, !tbaa !68
  %i.ju = getelementptr i8, ptr %0, i64 128
  store i64 4, ptr %i.ju, align 8, !tbaa !66
  br label %bb.bj

.thread309:                                       ; preds = %bb.af, %bb.z, %bb.at, %switch.early.test.thread, %.preheader, %.preheader366, %.preheader365, %bb.ag, %bb.aa, %bb.v, %.loopexit
  %.0213299318 = phi ptr [ %.0213299, %.loopexit ], [ %.0213300.fr, %bb.ag ], [ %.0213, %bb.v ], [ %.0213, %.preheader365 ], [ %.0213, %bb.aa ], [ %.0213, %.preheader366 ], [ %.0213300.fr, %bb.at ], [ %.0213, %bb.z ], [ %.0213300.fr, %.preheader ], [ %.0213300.fr, %switch.early.test.thread ], [ %.0213, %bb.af ]
  %.1197304317 = phi i32 [ %.1197304, %.loopexit ], [ %.1197305, %bb.ag ], [ 6, %bb.v ], [ 6, %.preheader365 ], [ 4, %bb.aa ], [ 4, %.preheader366 ], [ %.1197305, %bb.at ], [ 6, %bb.z ], [ %.1197305, %.preheader ], [ %.1197305, %switch.early.test.thread ], [ 4, %bb.af ] ; 3 uses
  %i.jv = icmp eq ptr %i.p, %.0213299318
  call fastcc void @hook_before_rewind(ptr noundef %0, i1 noundef zeroext %i.jv, i32 noundef %.1197304317, ptr noundef %i.a)
  %i.jw = load ptr, ptr %i.b, align 8, !tbaa !70  ; 2 uses
  %i.jx = getelementptr i8, ptr %i.jw, i64 32
  %.val253 = load ptr, ptr %i.jx, align 8, !tbaa !15
  %.val253.val = load i64, ptr %.val253, align 8, !tbaa !11
  %i.jy = and i64 %.val253.val, 32
  %.not251 = icmp eq i64 %i.jy, 0
  br i1 %.not251, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.thread309
  call void @rb_vm_pop_frame(ptr noundef nonnull %0)
  %i.jz = getelementptr i8, ptr %0, i64 128
  store i64 %2, ptr %i.jz, align 8, !tbaa !66
  %i.ka = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !67
  %i.kc = getelementptr i8, ptr %i.kb, i64 56
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !263 ; 3 uses
  store ptr %i.kd, ptr %i.ka, align 8, !tbaa !67
  %i.ke = getelementptr i8, ptr %i.kd, i64 64
  store i32 %.1197304317, ptr %i.ke, align 8, !tbaa !68
  %i.kf = getelementptr i8, ptr %i.kd, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.kf)
  unreachable

bb.bg:                                            ; preds = %.thread309
  %i.kg = load atomic volatile i32, ptr %i.l monotonic, align 4
  %i.kh = load i32, ptr %i.m, align 4, !tbaa !71
  %i.ki = xor i32 %i.kh, -1
  %i.kj = and i32 %i.kg, %i.ki
  %.not.i.i.i286 = icmp eq i32 %i.kj, 0
  br i1 %.not.i.i.i286, label %bb.bi, label %bb.bh, !prof !72

bb.bh:                                            ; preds = %bb.bg
  %.val.i.i.i287 = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.kk = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i287, i32 noundef 0) #23 ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.kl = getelementptr i8, ptr %i.jw, i64 56     ; 2 uses
  store ptr %i.kl, ptr %i.b, align 8, !tbaa !70
  br label %bb.b

bb.bj:                                            ; preds = %rb_vm_pop_frame.exit265, %vm_push_frame.exit, %.thread306, %bb.as, %bb.t
  %.5.ph = phi i64 [ 36, %bb.t ], [ 36, %bb.as ], [ 36, %.thread306 ], [ 36, %vm_push_frame.exit ], [ %.val261, %rb_vm_pop_frame.exit265 ]
  ret i64 %.5.ph
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @hook_before_rewind(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %5 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %6 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %7 = alloca %struct.rb_trace_arg_struct, align 8 ; 12 uses
  %8 = alloca %struct.rb_trace_arg_struct, align 8 ; 12 uses
  %9 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %10 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %11 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %12 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %i.a = icmp eq i32 %2, 6
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !61
  %i.d = load i64, ptr @rb_eSysStackError, align 8, !tbaa !11
  %i.e = icmp eq i64 %i.c, %i.d
  br i1 %i.e, label %THROW_DATA_CONSUMED_SET.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 16         ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70   ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !123  ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !27
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.f, label %bb.d, !prof !72

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 48
  %.val96 = load ptr, ptr %i.l, align 8, !tbaa !30 ; 2 uses
  %.not.i = icmp eq ptr %.val96, null
  br i1 %.not.i, label %rb_ec_ractor_ptr.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %.val96, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !264
  br label %rb_ec_ractor_ptr.exit

rb_ec_ractor_ptr.exit:                            ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.n, %bb.e ], [ null, %bb.d ]
  %i.o = tail call ptr @rb_iseq_local_hooks(ptr noundef nonnull %i.i, ptr noundef %.0.i, i1 noundef zeroext false) #23
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !70
  br label %bb.f

bb.f:                                             ; preds = %rb_ec_ractor_ptr.exit, %bb.c
  %i.p = phi ptr [ %.pre, %rb_ec_ractor_ptr.exit ], [ %i.g, %bb.c ] ; 9 uses
  %.0 = phi ptr [ %i.o, %rb_ec_ractor_ptr.exit ], [ null, %bb.c ] ; 9 uses
  %i.q = getelementptr i8, ptr %i.p, i64 32
  %.val103 = load ptr, ptr %i.q, align 8, !tbaa !15
  %.val103.val = load i64, ptr %.val103, align 8, !tbaa !11 ; 2 uses
  %i.r = and i64 %.val103.val, 2147418113
  switch i64 %i.r, label %THROW_DATA_CONSUMED_SET.exit [
    i64 286326785, label %rb_ec_hooks.exit
    i64 572653569, label %bb.m
    i64 858980353, label %rb_ec_hooks.exit130
  ]

rb_ec_hooks.exit:                                 ; preds = %bb.f
  %i.s = getelementptr i8, ptr %0, i64 48
  %.val101 = load ptr, ptr %i.s, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.t = getelementptr i8, ptr %.val101, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !264  ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !527
  %i.x = and i32 %i.w, 16
  %.not90 = icmp eq i32 %i.x, 0
  br i1 %.not90, label %bb.h, label %bb.g, !prof !72

bb.g:                                             ; preds = %rb_ec_hooks.exit
  %i.y = getelementptr i8, ptr %i.u, i64 16
  %i.z = getelementptr i8, ptr %i.p, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !74
  %i.ab = tail call fastcc i64 @frame_return_value(ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store i32 16, ptr %12, align 8, !tbaa !528
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %0, ptr %i.ac, align 8, !tbaa !530
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.p, ptr %i.ad, align 8, !tbaa !531
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i64 %i.aa, ptr %i.ae, align 8, !tbaa !532
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  store i64 %i.ab, ptr %i.ag, align 8, !tbaa !534
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 72
  store i64 36, ptr %i.ah, align 8, !tbaa !535
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i32 0, ptr %i.ai, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %12, ptr noundef %i.y, i32 noundef 1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %rb_ec_hooks.exit
  %.not91 = icmp eq ptr %.0, null
  br i1 %.not91, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr i8, ptr %.0, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !527
  %i.al = and i32 %i.ak, 16
  %.not133 = icmp eq i32 %i.al, 0
  br i1 %.not133, label %.critedge, label %bb.j, !prof !72

bb.j:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !70  ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !74
  %i.ap = call fastcc i64 @frame_return_value(ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store i32 16, ptr %11, align 8, !tbaa !528
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %0, ptr %i.aq, align 8, !tbaa !530
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.am, ptr %i.ar, align 8, !tbaa !531
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %i.ao, ptr %i.as, align 8, !tbaa !532
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  store i64 %i.ap, ptr %i.au, align 8, !tbaa !534
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 72
  store i64 36, ptr %i.av, align 8, !tbaa !535
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i32 0, ptr %i.aw, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %11, ptr noundef nonnull %.0, i32 noundef 1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.j, %bb.i
  %i.ax = ptrtoint ptr %3 to i64
  %i.ay = icmp eq ptr %3, null
  %i.az = and i64 %i.ax, 7
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = or i1 %i.ay, %i.ba
  br i1 %i.bb, label %THROW_DATA_CONSUMED_SET.exit, label %imemo_throw_data_p.exit.i

imemo_throw_data_p.exit.i:                        ; preds = %.critedge
  %i.bc = load i64, ptr %3, align 8, !tbaa !77    ; 2 uses
  %i.bd = and i64 %i.bc, 31
  %i.be = icmp eq i64 %i.bd, 26
  br i1 %i.be, label %bb.k, label %THROW_DATA_CONSUMED_SET.exit

bb.k:                                             ; preds = %imemo_throw_data_p.exit.i
  %i.bf = getelementptr i8, ptr %3, i64 32
  %.val.i = load i32, ptr %i.bf, align 8, !tbaa !161
  %i.bg = icmp eq i32 %.val.i, 2
  br i1 %i.bg, label %bb.l, label %THROW_DATA_CONSUMED_SET.exit

bb.l:                                             ; preds = %bb.k
  %i.bh = or i64 %i.bc, 65536
  store i64 %i.bh, ptr %3, align 8, !tbaa !921
  br label %THROW_DATA_CONSUMED_SET.exit

bb.m:                                             ; preds = %bb.f
  %i.bi = and i64 %.val103.val, 64
  %.not81 = icmp eq i64 %i.bi, 0
  br i1 %.not81, label %rb_ec_hooks.exit124, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = ptrtoint ptr %3 to i64
  %i.bk = icmp eq ptr %3, null
  %i.bl = and i64 %i.bj, 7
  %i.bm = icmp ne i64 %i.bl, 0
  %i.bn = or i1 %i.bk, %i.bm                      ; 2 uses
  br i1 %i.bn, label %frame_return_value.exit, label %imemo_throw_data_p.exit.i105

imemo_throw_data_p.exit.i105:                     ; preds = %bb.n
  %i.bo = load i64, ptr %3, align 8, !tbaa !77    ; 2 uses
  %i.bp = and i64 %i.bo, 31
  %i.bq = icmp eq i64 %i.bp, 26
  br i1 %i.bq, label %bb.o, label %frame_return_value.exit

bb.o:                                             ; preds = %imemo_throw_data_p.exit.i105
end_hunk_13
