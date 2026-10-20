Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/prefs?download=true
inline.NumInlined: 303
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumUnrolled: 89
begin_hunk_0_@read_prefs_file:bb.a

bb.az:                                            ; preds = %.loopexit.jt0
  %i.ey = and i32 %i.dw, 256
  %.not93 = icmp eq i32 %i.ey, 0
  br i1 %.not93, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ez = load i64, ptr %i.p, align 8
  %i.fa = icmp ne i64 %i.ez, 0
  %or.cond = select i1 %i.fa, i1 %i.dr, i1 false
  br i1 %or.cond, label %.outer.jt2.preheader, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.fb = icmp eq i32 %i.ds, 35
  br i1 %i.fb, label %.outer.jt4, label %.outer.jt0

bb.bc:                                            ; preds = %getc_unlocked.exit.peel.jt1, %.loopexit.jt1.thread
  %i.fc = trunc i32 %i.bc to i8                   ; 2 uses
  br i1 %.not.i101, label %.critedge.i102, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fd = load i64, ptr %i.p, align 8             ; 2 uses
  %i.fe = add i64 %i.fd, 1                        ; 2 uses
  %i.ff = load i64, ptr %i.q, align 8
  %i.fg = icmp ult i64 %i.fe, %i.ff
  br i1 %i.fg, label %bb.be, label %.critedge.i102

.critedge.i102:                                   ; preds = %bb.bd, %bb.bc
  %i.fh = call ptr @g_string_insert_c(ptr noundef %i.d, i64 noundef -1, i8 noundef signext %i.fc) ; 0 uses
  br label %.outer.jt1.backedge

.outer.jt1.backedge:                              ; preds = %.critedge.i102, %bb.be
  br label %.outer.jt1

bb.be:                                            ; preds = %bb.bd
  %i.fi = load ptr, ptr %i.d, align 8
  store i64 %i.fe, ptr %i.p, align 8
  %i.fj = getelementptr i8, ptr %i.fi, i64 %i.fd
  store i8 %i.fc, ptr %i.fj, align 1
  %i.fk = load ptr, ptr %i.d, align 8
  %i.fl = load i64, ptr %i.p, align 8
  %i.fm = getelementptr i8, ptr %i.fk, i64 %i.fl
  store i8 0, ptr %i.fm, align 1
  br label %.outer.jt1.backedge

bb.bf:                                            ; preds = %getc_unlocked.exit.peel.jt1
  store i64 0, ptr %i.m, align 8
  %i.fn = load ptr, ptr %i.c, align 8
  store i8 0, ptr %i.fn, align 1
  br label %.outer.jt2.preheader

.outer.jt2.preheader:                             ; preds = %bb.ba, %bb.bf
  %.1.jt2.ph = phi i32 [ %.078125179.ph, %bb.bf ], [ %.0.ph170.ph, %bb.ba ] ; 8 uses
  br label %.outer.jt2

.loopexit.jt2:                                    ; preds = %.thread111.jt2, %getc_unlocked.exit.peel.jt2
  %.mask = and i32 %i.be, 255
  %i.fo = zext nneg i32 %.mask to i64
  %i.fp = getelementptr [2 x i8], ptr %i.o, i64 %i.fo
  %i.fq = load i16, ptr %i.fp, align 2
  %i.fr = and i16 %i.fq, 256
  %.not89 = icmp eq i16 %i.fr, 0
  br i1 %.not89, label %bb.bg, label %.outer.jt2

bb.bg:                                            ; preds = %.loopexit.jt2
  %i.fs = trunc i32 %i.be to i8                   ; 2 uses
  br i1 %.not.i, label %.critedge.i99, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ft = load i64, ptr %i.m, align 8             ; 2 uses
  %i.fu = add i64 %i.ft, 1                        ; 2 uses
  %i.fv = load i64, ptr %i.n, align 8
  %i.fw = icmp ult i64 %i.fu, %i.fv
  br i1 %i.fw, label %bb.bi, label %.critedge.i99

.critedge.i99:                                    ; preds = %bb.bh, %bb.bg
  %i.fx = call ptr @g_string_insert_c(ptr noundef %i.c, i64 noundef -1, i8 noundef signext %i.fs) ; 0 uses
  br label %.outer.jt3.preheader

bb.bi:                                            ; preds = %bb.bh
  %i.fy = load ptr, ptr %i.c, align 8
  store i64 %i.fu, ptr %i.m, align 8
  %i.fz = getelementptr i8, ptr %i.fy, i64 %i.ft
  store i8 %i.fs, ptr %i.fz, align 1
  %i.ga = load ptr, ptr %i.c, align 8
  %i.gb = load i64, ptr %i.m, align 8
  %i.gc = getelementptr i8, ptr %i.ga, i64 %i.gb
  store i8 0, ptr %i.gc, align 1
  br label %.outer.jt3.preheader

.outer.jt3.preheader:                             ; preds = %bb.bi, %.critedge.i99
  br label %.outer.jt3

.loopexit.jt3:                                    ; preds = %.thread111.jt3, %getc_unlocked.exit.peel.jt3
  %i.gd = trunc i32 %i.bf to i8                   ; 2 uses
  br i1 %.not.i, label %.critedge.i, label %bb.bj

bb.bj:                                            ; preds = %.loopexit.jt3
  %i.ge = load i64, ptr %i.m, align 8             ; 2 uses
  %i.gf = add i64 %i.ge, 1                        ; 2 uses
  %i.gg = load i64, ptr %i.n, align 8
  %i.gh = icmp ult i64 %i.gf, %i.gg
  br i1 %i.gh, label %bb.bk, label %.critedge.i

.critedge.i:                                      ; preds = %bb.bj, %.loopexit.jt3
  %i.gi = call ptr @g_string_insert_c(ptr noundef %i.c, i64 noundef -1, i8 noundef signext %i.gd) ; 0 uses
  br label %.outer.jt3.backedge

bb.bk:                                            ; preds = %bb.bj
  %i.gj = load ptr, ptr %i.c, align 8
  store i64 %i.gf, ptr %i.m, align 8
  %i.gk = getelementptr i8, ptr %i.gj, i64 %i.ge
  store i8 %i.gd, ptr %i.gk, align 1
  %i.gl = load ptr, ptr %i.c, align 8
  %i.gm = load i64, ptr %i.m, align 8
  %i.gn = getelementptr i8, ptr %i.gl, i64 %i.gm
  store i8 0, ptr %i.gn, align 1
  br label %.outer.jt3.backedge

.outer.jt3.backedge:                              ; preds = %bb.bk, %.critedge.i
  br label %.outer.jt3

.loopexit133:                                     ; preds = %getc_unlocked.exit109.peel, %getc_unlocked.exit.peel, %getc_unlocked.exit.peel.jt4, %getc_unlocked.exit109.peel.jt4, %getc_unlocked.exit109.peel.jt0, %getc_unlocked.exit.peel.jt0, %getc_unlocked.exit109.peel.jt1, %getc_unlocked.exit.peel.jt1, %getc_unlocked.exit.peel.jt2, %getc_unlocked.exit109.peel.jt2, %getc_unlocked.exit.peel.jt3, %getc_unlocked.exit109.peel.jt3, %getc_unlocked.exit, %getc_unlocked.exit109
  %.0.ph171 = phi i32 [ %.0.ph170.ph, %getc_unlocked.exit.peel.jt0 ], [ %.0.ph164, %getc_unlocked.exit ], [ %.1.jt2.ph, %getc_unlocked.exit.peel.jt3 ], [ %.1.jt2.ph, %getc_unlocked.exit.peel.jt2 ], [ %.078125179.ph, %getc_unlocked.exit109.peel.jt1 ], [ %.0.ph164, %getc_unlocked.exit109 ], [ %.1.jt2.ph, %getc_unlocked.exit109.peel.jt3 ], [ %.1.jt2.ph, %getc_unlocked.exit109.peel.jt2 ], [ %.078125179.ph, %getc_unlocked.exit.peel.jt1 ], [ %.0.ph.ph, %getc_unlocked.exit.peel ], [ %.0.ph.ph, %getc_unlocked.exit109.peel ], [ %.0.ph170.ph, %getc_unlocked.exit.peel.jt4 ], [ %.0.ph170.ph, %getc_unlocked.exit109.peel.jt4 ], [ %.0.ph170.ph, %getc_unlocked.exit109.peel.jt0 ] ; 4 uses
  %.079.ph160 = phi i8 [ %.079.ph159.ph, %getc_unlocked.exit.peel.jt0 ], [ %.079.ph153, %getc_unlocked.exit ], [ 1, %getc_unlocked.exit.peel.jt3 ], [ 1, %getc_unlocked.exit.peel.jt2 ], [ 0, %getc_unlocked.exit109.peel.jt1 ], [ %.079.ph153, %getc_unlocked.exit109 ], [ 1, %getc_unlocked.exit109.peel.jt3 ], [ 1, %getc_unlocked.exit109.peel.jt2 ], [ 0, %getc_unlocked.exit.peel.jt1 ], [ %.079.ph.ph, %getc_unlocked.exit.peel ], [ %.079.ph.ph, %getc_unlocked.exit109.peel ], [ %.079.ph159.ph, %getc_unlocked.exit.peel.jt4 ], [ %.079.ph159.ph, %getc_unlocked.exit109.peel.jt4 ], [ %.079.ph159.ph, %getc_unlocked.exit109.peel.jt0 ]
  %i.go = load i64, ptr %i.p, align 8
  %.not96 = icmp eq i64 %i.go, 0
  br i1 %.not96, label %bb.br, label %bb.bl

bb.bl:                                            ; preds = %.loopexit133
  %i.gp = trunc nuw i8 %.079.ph160 to i1
  br i1 %i.gp, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  %i.gq = load ptr, ptr %i.d, align 8
  %i.gr = load ptr, ptr %i.c, align 8
  %i.gs = call i32 %2(ptr noundef %i.gq, ptr noundef %i.gr, ptr noundef %3, i1 noundef zeroext false)
  switch i32 %i.gs, label %bb.br [
    i32 3, label %bb.bp
    i32 1, label %bb.bn
    i32 2, label %bb.bo
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.gt = load ptr, ptr %i.d, align 8
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef @.str.2, i32 noundef 5, ptr noundef @.str.3, i64 noundef 4911, ptr noundef @__func__.read_prefs_file, ptr noundef @.str.31, ptr noundef %i.gt, i32 noundef %.0.ph171, ptr noundef %0, ptr noundef nonnull %i.a)
  br label %bb.br

bb.bo:                                            ; preds = %bb.bm
  %i.gu = load ptr, ptr %i.d, align 8
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef @.str.2, i32 noundef 5, ptr noundef @.str.3, i64 noundef 4916, ptr noundef @__func__.read_prefs_file, ptr noundef @.str.27, ptr noundef %i.gu, i32 noundef %.0.ph171, ptr noundef %0, ptr noundef nonnull %i.a)
  br label %bb.br

bb.bp:                                            ; preds = %bb.bm
  %i.gv = load ptr, ptr %i.d, align 8
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef @.str.2, i32 noundef 5, ptr noundef @.str.3, i64 noundef 4921, ptr noundef @__func__.read_prefs_file, ptr noundef @.str.28, ptr noundef %i.gv, i32 noundef %.0.ph171, ptr noundef %0, ptr noundef nonnull %i.a)
  br label %bb.br

bb.bq:                                            ; preds = %bb.bl
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef @.str.2, i32 noundef 5, ptr noundef @.str.3, i64 noundef 4926, ptr noundef @__func__.read_prefs_file, ptr noundef @.str.32, i32 noundef %.0.ph171, ptr noundef %0, ptr noundef nonnull %i.a)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %.loopexit133
  %i.gw = call ptr @g_string_free(ptr noundef %i.c, i32 noundef 1) ; 0 uses
  %i.gx = call ptr @g_string_free(ptr noundef %i.d, i32 noundef 1) ; 0 uses
  %i.gy = call i32 @ferror(ptr noundef %1) #23
  %.not97 = icmp eq i32 %i.gy, 0
  br i1 %.not97, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gz = tail call ptr @__errno_location() #28
  %i.ha = load i32, ptr %i.gz, align 4
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %.084 = phi i32 [ %i.ha, %bb.bs ], [ 0, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.084
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @set_pref(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, i1 noundef zeroext %3) #1 {
bb.a:
  %4 = alloca %struct.find_pref_arg_t, align 8    ; 8 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %5 = alloca %struct.find_pref_arg_t, align 8    ; 8 uses
  %6 = alloca %struct.find_pref_arg_t, align 8    ; 8 uses
  %7 = alloca %struct.find_pref_arg_t, align 8    ; 8 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.g = getelementptr [24 x i8], ptr @deprecated_heur_dissector_pref.heur_prefs, i64 %indvars.iv.i ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i32 @strcmp(ptr noundef readonly %0, ptr noundef %i.h) #26
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.g, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call ptr @find_heur_dissector_by_unique_short_name(ptr noundef %i.l) ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i32 @g_ascii_strcasecmp(ptr noundef %1, ptr noundef @.str.597)
  %i.o = icmp eq i32 %i.n, 0
  %i.p = getelementptr i8, ptr %i.m, i64 40
  %i.q = zext i1 %i.o to i8
  store i8 %i.q, ptr %i.p, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %8 = shl nuw nsw i64 1, %indvars.iv.i
  %9 = and i64 %8, 52881850626
  %.not12.i = icmp eq i64 %9, 0
  br i1 %.not12.i, label %deprecated_heur_dissector_pref.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 39
  br i1 %exitcond.not.i, label %deprecated_heur_dissector_pref.exit, label %bb.b, !llvm.loop !37

deprecated_heur_dissector_pref.exit:              ; preds = %bb.f
  %i.r = tail call i32 @strcmp(ptr noundef readonly %0, ptr noundef dereferenceable(20) @.str.673) #26
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %bb.g

bb.g:                                             ; preds = %deprecated_heur_dissector_pref.exit
  %i.t = tail call i32 @strcmp(ptr noundef readonly %0, ptr noundef dereferenceable(29) @.str.675) #26
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = tail call i32 @strcmp(ptr noundef readonly %0, ptr noundef dereferenceable(11) @.str.677) #26
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %deprecated_enable_dissector_pref.exit

bb.i:                                             ; preds = %bb.h, %bb.g, %deprecated_heur_dissector_pref.exit
  %.lcssa15.i = phi ptr [ @__const.deprecated_enable_dissector_pref.dissector_prefs, %deprecated_heur_dissector_pref.exit ], [ getelementptr inbounds nuw (i8, ptr @__const.deprecated_enable_dissector_pref.dissector_prefs, i64 16), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @__const.deprecated_enable_dissector_pref.dissector_prefs, i64 32), %bb.h ]
  %i.x = getelementptr i8, ptr %.lcssa15.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call i32 @proto_get_id_by_short_name(ptr noundef %i.y) ; 2 uses
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %bb.j, label %deprecated_heur_dissector_pref.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call i32 @g_ascii_strcasecmp(ptr noundef %1, ptr noundef @.str.597)
  %i.ac = icmp eq i32 %i.ab, 0
  tail call void @proto_set_decoding(i32 noundef %i.z, i1 noundef zeroext %i.ac)
  br label %deprecated_heur_dissector_pref.exit.thread

deprecated_enable_dissector_pref.exit:            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %.b.i = load i1, ptr @deprecated_port_pref.sanity_checked, align 1
  br i1 %.b.i, label %.loopexit149.i.preheader, label %bb.k

bb.k:                                             ; preds = %deprecated_enable_dissector_pref.exit
  store i1 true, ptr @deprecated_port_pref.sanity_checked, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.aj, %bb.k
  %indvars.iv.i207 = phi i64 [ 0, %bb.k ], [ %indvars.iv.next.i209, %bb.aj ] ; 2 uses
  %i.af = getelementptr [32 x i8], ptr @deprecated_port_pref.port_prefs, i64 %indvars.iv.i207 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = load ptr, ptr @prefs_modules, align 8
  %i.aj = call ptr @wmem_tree_lookup_string(ptr noundef %i.ai, ptr noundef %i.ah, i32 noundef 1) ; 5 uses
  %.not.i208 = icmp eq ptr %i.aj, null
  br i1 %.not.i208, label %bb.aj, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr i8, ptr %i.af, i64 16
  %i.al = load ptr, ptr %i.ak, align 16           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.am = getelementptr i8, ptr %i.aj, i64 48
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call ptr @g_list_find_custom(ptr noundef %i.an, ptr noundef %i.al, ptr noundef @preference_match) ; 2 uses
  store ptr null, ptr %i.ad, align 8
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.n, label %prefs_find_preference.exit.i

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %7, align 8
  %i.aq = getelementptr i8, ptr %i.aj, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %prefs_find_preference.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.al, ptr %i.ae, align 8
  %i.as = call zeroext i1 @wmem_tree_foreach(ptr noundef nonnull %i.ar, ptr noundef @module_find_pref_cb, ptr noundef nonnull %7) ; 0 uses
  %.pr.i.i.i = load ptr, ptr %7, align 8          ; 2 uses
  %i.at = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.at, label %prefs_find_preference.exit.thread.i, label %prefs_find_preference.exit.i

prefs_find_preference.exit.thread.i:              ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.p

prefs_find_preference.exit.i:                     ; preds = %bb.o, %bb.m
  %.020.i.i.i = phi ptr [ %.pr.i.i.i, %bb.o ], [ %i.ao, %bb.m ]
  %i.au = load ptr, ptr %.020.i.i.i, align 8      ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %.not116.i = icmp eq ptr %i.au, null
  br i1 %.not116.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %prefs_find_preference.exit.i, %prefs_find_preference.exit.thread.i
  %i.av = load ptr, ptr %i.aj, align 8
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef @.str.2, i32 noundef 5, ptr noundef @.str.3, i64 noundef 5761, ptr noundef @__func__.deprecated_port_pref, ptr noundef @.str.901, ptr noundef %i.av, ptr noundef %i.al)
  br label %bb.aj

bb.q:                                             ; preds = %prefs_find_preference.exit.i
  %i.aw = getelementptr i8, ptr %i.au, i64 36
  %i.ax = load i32, ptr %i.aw, align 4            ; 3 uses
  %.not117.i = icmp eq i32 %i.ax, 11
  br i1 %.not117.i, label %bb.aj, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = load ptr, ptr %i.aj, align 8
  %i.az = getelementptr i8, ptr %i.au, i64 40
  %i.ba = load i8, ptr %i.az, align 8, !range !10, !noundef !11
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %prefs_pref_type_name.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  switch i32 %i.ax, label %prefs_pref_type_name.exit.i [
    i32 0, label %bb.t
    i32 16, label %bb.u
    i32 17, label %bb.v
    i32 1, label %bb.w
    i32 2, label %bb.x
    i32 14, label %bb.x
    i32 3, label %bb.y
    i32 7, label %bb.z
    i32 12, label %bb.z
    i32 10, label %bb.aa
    i32 4, label %bb.ab
    i32 8, label %bb.ac
    i32 9, label %bb.ad
    i32 15, label %bb.ai
    i32 5, label %bb.af
    i32 6, label %bb.ag
    i32 13, label %bb.ah
  ]

bb.t:                                             ; preds = %bb.s
  %i.bc = getelementptr i8, ptr %i.au, i64 72
  %i.bd = load i32, ptr %i.bc, align 8
  %switch.tableidx = add i32 %i.bd, -8            ; 2 uses
  %i.be = icmp ult i32 %switch.tableidx, 9
  br i1 %i.be, label %switch.lookup, label %prefs_pref_type_name.exit.i

bb.u:                                             ; preds = %bb.s
  br label %prefs_pref_type_name.exit.i

bb.v:                                             ; preds = %bb.s
  br label %prefs_pref_type_name.exit.i

bb.w:                                             ; preds = %bb.s
  br label %prefs_pref_type_name.exit.i

bb.x:                                             ; preds = %bb.s, %bb.s
  br label %prefs_pref_type_name.exit.i

bb.y:                                             ; preds = %bb.s
  br label %prefs_pref_type_name.exit.i

bb.z:                                             ; preds = %bb.s, %bb.s
  br label %prefs_pref_type_name.exit.i

bb.aa:                                            ; preds = %bb.s
  br label %prefs_pref_type_name.exit.i

bb.ab:                                            ; preds = %bb.s
  br label %prefs_pref_type_name.exit.i

bb.ac:                                            ; preds = %bb.s
  br label %prefs_pref_type_name.exit.i

bb.ad:                                            ; preds = %bb.s
  %i.bf = getelementptr i8, ptr %i.au, i64 112
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not12.i.i = icmp eq ptr %i.bg, null
  br i1 %.not12.i.i, label %prefs_pref_type_name.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bh = call ptr %i.bg(), !inline_history !38
  br label %prefs_pref_type_name.exit.i

bb.af:                                            ; preds = %bb.s
  br label %prefs_pref_type_name.exit.i

bb.ag:                                            ; preds = %bb.s
  br label %prefs_pref_type_name.exit.i

bb.ah:                                            ; preds = %bb.s
  br label %prefs_pref_type_name.exit.i

bb.ai:                                            ; preds = %bb.s
  br label %prefs_pref_type_name.exit.i

switch.lookup:                                    ; preds = %bb.t
  %i.bi = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.prefs_pref_type_name, i64 %i.bi
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %prefs_pref_type_name.exit.i

prefs_pref_type_name.exit.i:                      ; preds = %switch.lookup, %bb.t, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.s, %bb.r
  %.09.i.i = phi ptr [ @.str.51, %bb.ad ], [ %i.bh, %bb.ae ], [ @.str.56, %bb.ai ], [ @.str.37, %bb.s ], [ @.str.37, %bb.t ], [ %switch.load, %switch.lookup ], [ @.str.54, %bb.ag ], [ @.str.53, %bb.af ], [ @.str.42, %bb.u ], [ @.str.43, %bb.v ], [ @.str.44, %bb.w ], [ @.str.45, %bb.x ], [ @.str.46, %bb.y ], [ @.str.47, %bb.z ], [ @.str.48, %bb.aa ], [ @.str.49, %bb.ab ], [ @.str.50, %bb.ac ], [ @.str.38, %bb.r ], [ @.str.55, %bb.ah ]
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef @.str.2, i32 noundef 5, ptr noundef @.str.3, i64 noundef 5765, ptr noundef @__func__.deprecated_port_pref, ptr noundef @.str.902, ptr noundef %i.ay, ptr noundef %i.al, i32 noundef %i.ax, ptr noundef %.09.i.i)
  br label %bb.aj

bb.aj:                                            ; preds = %prefs_pref_type_name.exit.i, %bb.q, %bb.p, %bb.l
  %indvars.iv.next.i209 = add nuw nsw i64 %indvars.iv.i207, 1 ; 2 uses
end_hunk_0
