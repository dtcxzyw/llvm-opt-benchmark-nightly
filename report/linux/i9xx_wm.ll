Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/i9xx_wm?download=true
inline.NumInlined: 555
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@ilk_wm_sanitize:bb.a

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 1160
  %i.f = getelementptr i8, ptr %0, i64 1168
  %i.g = load i16, ptr %i.f, align 8
  %i.h = icmp ugt i16 %i.g, 8
  %i.i = load ptr, ptr %0, align 8                ; 3 uses
  br i1 %i.h, label %bb.c, label %.critedge, !prof !25

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ]
  %i.m = tail call ptr @dev_driver_string(ptr noundef %i.l) #12 ; 0 uses
  %i.n = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.2, i32 3590, i32 2321, i64 16) #14, !srcloc !45
  %i.o = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i92 = icmp eq ptr %i.o, null
  br i1 %.not.i92, label %__drm_to_dev.exit93, label %bb.e

bb.e:                                             ; preds = %__drm_to_dev.exit
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  br label %__drm_to_dev.exit93

__drm_to_dev.exit93:                              ; preds = %__drm_to_dev.exit, %bb.e
  %i.r = phi ptr [ %i.q, %bb.e ], [ null, %__drm_to_dev.exit ]
  %i.s = tail call ptr @dev_driver_string(ptr noundef %i.r) #12
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i94 = icmp eq ptr %i.t, null
  br i1 %.not.i94, label %__drm_to_dev.exit95, label %bb.f

bb.f:                                             ; preds = %__drm_to_dev.exit93
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  br label %__drm_to_dev.exit95

__drm_to_dev.exit95:                              ; preds = %__drm_to_dev.exit93, %bb.f
  %i.w = phi ptr [ %i.v, %bb.f ], [ null, %__drm_to_dev.exit93 ] ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 80
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not.i96 = icmp eq ptr %i.y, null
  br i1 %.not.i96, label %bb.g, label %dev_name.exit99

bb.g:                                             ; preds = %__drm_to_dev.exit95
  %.val.i98 = load ptr, ptr %i.w, align 8
  br label %dev_name.exit99

dev_name.exit99:                                  ; preds = %__drm_to_dev.exit95, %bb.g
  %.0.i97 = phi ptr [ %.val.i98, %bb.g ], [ %i.y, %__drm_to_dev.exit95 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.n, ptr noundef %i.s, ptr noundef %.0.i97, ptr noundef @.str.1) #12
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !46
  br label %bb.ao

.critedge:                                        ; preds = %bb.b
  %i.z = tail call ptr @drm_atomic_commit_alloc(ptr noundef %i.i) #12 ; 15 uses
  %.not78 = icmp eq ptr %i.z, null
  br i1 %.not78, label %bb.h, label %.critedge88, !prof !25

bb.h:                                             ; preds = %.critedge
  %i.aa = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i100 = icmp eq ptr %i.aa, null
  br i1 %.not.i100, label %__drm_to_dev.exit101, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  br label %__drm_to_dev.exit101

__drm_to_dev.exit101:                             ; preds = %bb.h, %bb.i
  %i.ad = phi ptr [ %i.ac, %bb.i ], [ null, %bb.h ]
  %i.ae = tail call ptr @dev_driver_string(ptr noundef %i.ad) #12 ; 0 uses
  %i.af = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.2, i32 3594, i32 2321, i64 16) #14, !srcloc !47
  %i.ag = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i108 = icmp eq ptr %i.ag, null
  br i1 %.not.i108, label %__drm_to_dev.exit109, label %bb.j

bb.j:                                             ; preds = %__drm_to_dev.exit101
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  br label %__drm_to_dev.exit109

__drm_to_dev.exit109:                             ; preds = %__drm_to_dev.exit101, %bb.j
  %i.aj = phi ptr [ %i.ai, %bb.j ], [ null, %__drm_to_dev.exit101 ]
  %i.ak = tail call ptr @dev_driver_string(ptr noundef %i.aj) #12
  %i.al = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i110 = icmp eq ptr %i.al, null
  br i1 %.not.i110, label %__drm_to_dev.exit111, label %bb.k

bb.k:                                             ; preds = %__drm_to_dev.exit109
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  br label %__drm_to_dev.exit111

__drm_to_dev.exit111:                             ; preds = %__drm_to_dev.exit109, %bb.k
  %i.ao = phi ptr [ %i.an, %bb.k ], [ null, %__drm_to_dev.exit109 ] ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not.i112 = icmp eq ptr %i.aq, null
  br i1 %.not.i112, label %bb.l, label %dev_name.exit115

bb.l:                                             ; preds = %__drm_to_dev.exit111
  %.val.i114 = load ptr, ptr %i.ao, align 8
  br label %dev_name.exit115

dev_name.exit115:                                 ; preds = %__drm_to_dev.exit111, %bb.l
  %.0.i113 = phi ptr [ %.val.i114, %bb.l ], [ %i.aq, %__drm_to_dev.exit111 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.af, ptr noundef %i.ak, ptr noundef %.0.i113, ptr noundef @.str.3) #12
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !48
  br label %bb.ao

.critedge88:                                      ; preds = %.critedge
  call void @drm_modeset_acquire_init(ptr noundef nonnull %1, i32 noundef 0) #12
  %i.ar = getelementptr i8, ptr %i.z, i64 80
  store ptr %1, ptr %i.ar, align 8
  %i.as = getelementptr i8, ptr %i.z, i64 148
  store i8 1, ptr %i.as, align 4
  %i.at = getelementptr i8, ptr %i.z, i64 8       ; 5 uses
  %i.au = getelementptr i8, ptr %i.z, i64 992
  br label %bb.m

bb.m:                                             ; preds = %bb.af, %.critedge88
  %i.av = load ptr, ptr %i.e, align 8
  %i.aw = getelementptr i8, ptr %i.av, i64 46
  %i.ax = load i16, ptr %i.aw, align 2
  %i.ay = and i16 %i.ax, 128
  %.not79 = icmp eq i16 %i.ay, 0
  br i1 %.not79, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 1, ptr %i.au, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.az = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i116 = icmp eq ptr %i.az, null
  br i1 %.not.i116, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = call ptr @__drm_to_display(ptr noundef nonnull %i.az) #12
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bb = phi ptr [ %i.ba, %bb.p ], [ null, %bb.o ]
  %i.bc = getelementptr i8, ptr %i.bb, i64 40     ; 3 uses
  %.pn45.i = load ptr, ptr %i.bc, align 8         ; 2 uses
  %.not4246.i = icmp eq ptr %.pn45.i, %i.bc
  br i1 %.not4246.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.t
  %.pn47.i = phi ptr [ %.pn.i, %bb.t ], [ %.pn45.i, %bb.q ] ; 2 uses
  %.032.i = getelementptr i8, ptr %.pn47.i, i64 -1648
  %i.bd = call ptr @intel_atomic_get_crtc_state(ptr noundef nonnull %i.z, ptr noundef %.032.i) #12 ; 4 uses
  %i.be = icmp ugt ptr %i.bd, inttoptr (i64 -4096 to ptr)
  br i1 %i.be, label %ilk_sanitize_watermarks_add_affected.exit, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i
  %i.bf = getelementptr i8, ptr %i.bd, i64 344
  %i.bg = load i8, ptr %i.bf, align 8, !range !26, !noundef !27
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr i8, ptr %i.bd, i64 852
  store i8 1, ptr %i.bi, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn.i = load ptr, ptr %.pn47.i, align 8        ; 2 uses
  %.not42.i = icmp eq ptr %.pn.i, %i.bc
  br i1 %.not42.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.q
  %i.bj = load ptr, ptr %i.at, align 8
  %i.bk = getelementptr i8, ptr %i.bj, i64 648
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %._crit_edge.i
  %.pn37.in.i = phi ptr [ %i.bk, %._crit_edge.i ], [ %.pn37.i, %bb.v ]
  %.pn37.i = load ptr, ptr %.pn37.in.i, align 8   ; 3 uses
  %i.bl = load ptr, ptr %i.at, align 8
  %i.bm = getelementptr i8, ptr %i.bl, i64 648
  %.not43.i = icmp eq ptr %.pn37.i, %i.bm
  br i1 %.not43.i, label %ilk_sanitize_watermarks_add_affected.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.031.i = getelementptr i8, ptr %.pn37.i, i64 -8
  %i.bn = call ptr @drm_atomic_get_plane_state(ptr noundef nonnull %i.z, ptr noundef %.031.i) #12 ; 2 uses
  %i.bo = icmp ugt ptr %i.bn, inttoptr (i64 -4096 to ptr)
  br i1 %i.bo, label %ilk_sanitize_watermarks_add_affected.exit, label %bb.u

ilk_sanitize_watermarks_add_affected.exit:        ; preds = %.lr.ph.i, %bb.v
  %.4.i.in.in = phi ptr [ %i.bn, %bb.v ], [ %i.bd, %.lr.ph.i ]
  %.4.i.in = ptrtoint ptr %.4.i.in.in to i64
  %.4.i = trunc nsw i64 %.4.i.in to i32
  br label %bb.ae

ilk_sanitize_watermarks_add_affected.exit.thread: ; preds = %bb.u
  %i.bp = load ptr, ptr %0, align 8
  %i.bq = call i32 @intel_atomic_check(ptr noundef %i.bp, ptr noundef nonnull %i.z) #12 ; 2 uses
  %.not81 = icmp eq i32 %i.bq, 0
  br i1 %.not81, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %ilk_sanitize_watermarks_add_affected.exit.thread
  %i.br = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not82 = icmp eq ptr %i.br, null
  br i1 %.not82, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = call ptr @__drm_to_display(ptr noundef nonnull %i.br) #12
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.bt = phi ptr [ %i.bs, %bb.x ], [ null, %bb.w ]
  %i.bu = getelementptr i8, ptr %i.bt, i64 40
  %i.bv = getelementptr i8, ptr %i.z, i64 40
  br label %bb.z

bb.z:                                             ; preds = %.backedge, %bb.y
  %.pn.in = phi ptr [ %i.bu, %bb.y ], [ %.pn, %.backedge ]
  %.pn = load ptr, ptr %.pn.in, align 8           ; 5 uses
  %.0 = getelementptr i8, ptr %.pn, i64 -1648
  %i.bw = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not83 = icmp eq ptr %i.bw, null
  br i1 %.not83, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bx = call ptr @__drm_to_display(ptr noundef nonnull %i.bw) #12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.by = phi ptr [ %i.bx, %bb.aa ], [ null, %bb.z ]
  %i.bz = getelementptr i8, ptr %i.by, i64 40
  %.not136 = icmp eq ptr %.pn, %i.bz
  br i1 %.not136, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val = load ptr, ptr %i.bv, align 8
  %i.ca = getelementptr i8, ptr %.pn, i64 -1512
  %.0.val = load i32, ptr %i.ca, align 8
  %i.cb = zext i32 %.0.val to i64
  %i.cc = getelementptr [56 x i8], ptr %.val, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8            ; 3 uses
  %.not85 = icmp eq ptr %i.ce, null
  br i1 %.not85, label %.backedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cf = getelementptr i8, ptr %i.ce, i64 1484
  %i.cg = getelementptr i8, ptr %i.ce, i64 3700
  store i8 1, ptr %i.cg, align 4
  call void @intel_optimize_watermarks(ptr noundef nonnull %i.z, ptr noundef %.0) #12
  %i.ch = getelementptr i8, ptr %.pn, i64 -168
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr i8, ptr %i.ci, i64 1484
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(2220) %i.cj, ptr noundef align 4 dereferenceable(2220) %i.cf, i64 2220, i1 false)
  br label %.backedge

.backedge:                                        ; preds = %bb.ad, %bb.ac
  br label %bb.z, !llvm.loop !44

bb.ae:                                            ; preds = %ilk_sanitize_watermarks_add_affected.exit, %ilk_sanitize_watermarks_add_affected.exit.thread
  %.072 = phi i32 [ %.4.i, %ilk_sanitize_watermarks_add_affected.exit ], [ %i.bq, %ilk_sanitize_watermarks_add_affected.exit.thread ]
  %cond = icmp eq i32 %.072, -35
  br i1 %cond, label %bb.af, label %bb.ag, !prof !49

bb.af:                                            ; preds = %bb.ae
  call void @drm_atomic_commit_clear(ptr noundef nonnull %i.z) #12
  %i.ck = call i32 @drm_modeset_backoff(ptr noundef nonnull %1) #12 ; 0 uses
  br label %bb.m

bb.ag:                                            ; preds = %bb.ae
  %i.cl = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i117 = icmp eq ptr %i.cl, null
  br i1 %.not.i117, label %__drm_to_dev.exit118, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  br label %__drm_to_dev.exit118

__drm_to_dev.exit118:                             ; preds = %bb.ag, %bb.ah
  %i.co = phi ptr [ %i.cn, %bb.ah ], [ null, %bb.ag ]
  %i.cp = call ptr @dev_driver_string(ptr noundef %i.co) #12 ; 0 uses
  %i.cq = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, ptr @.str.2, i32 3648, i32 2321, i64 16) #14, !srcloc !50
  %i.cr = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i125 = icmp eq ptr %i.cr, null
  br i1 %.not.i125, label %__drm_to_dev.exit126, label %bb.ai

bb.ai:                                            ; preds = %__drm_to_dev.exit118
  %i.cs = getelementptr i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  br label %__drm_to_dev.exit126

__drm_to_dev.exit126:                             ; preds = %__drm_to_dev.exit118, %bb.ai
  %i.cu = phi ptr [ %i.ct, %bb.ai ], [ null, %__drm_to_dev.exit118 ]
  %i.cv = call ptr @dev_driver_string(ptr noundef %i.cu) #12
  %i.cw = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i127 = icmp eq ptr %i.cw, null
  br i1 %.not.i127, label %__drm_to_dev.exit128, label %bb.aj

bb.aj:                                            ; preds = %__drm_to_dev.exit126
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  br label %__drm_to_dev.exit128

__drm_to_dev.exit128:                             ; preds = %__drm_to_dev.exit126, %bb.aj
  %i.cz = phi ptr [ %i.cy, %bb.aj ], [ null, %__drm_to_dev.exit126 ] ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 80
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %.not.i129 = icmp eq ptr %i.db, null
  br i1 %.not.i129, label %bb.ak, label %dev_name.exit132

bb.ak:                                            ; preds = %__drm_to_dev.exit128
  %.val.i131 = load ptr, ptr %i.cz, align 8
  br label %dev_name.exit132

dev_name.exit132:                                 ; preds = %__drm_to_dev.exit128, %bb.ak
  %.0.i130 = phi ptr [ %.val.i131, %bb.ak ], [ %i.db, %__drm_to_dev.exit128 ]
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.cq, ptr noundef %i.cv, ptr noundef %.0.i130) #12
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !51
  br label %.thread

.thread:                                          ; preds = %bb.ab, %dev_name.exit132
  %i.dc = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.z, i32 -1, ptr nonnull elementtype(i32) %i.z) #14, !srcloc !52 ; 2 uses
  %i.dd = icmp eq i32 %i.dc, 1
  br i1 %i.dd, label %bb.an, label %bb.al

bb.al:                                            ; preds = %.thread
  %i.de = icmp slt i32 %i.dc, 1
  br i1 %i.de, label %bb.am, label %drm_atomic_commit_put.exit, !prof !25

bb.am:                                            ; preds = %bb.al
  call void @refcount_warn_saturate(ptr noundef nonnull %i.z, i32 noundef 3) #12
  br label %drm_atomic_commit_put.exit

bb.an:                                            ; preds = %.thread
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !53
  call void @__drm_atomic_commit_free(ptr noundef nonnull %i.z) #12
  br label %drm_atomic_commit_put.exit

drm_atomic_commit_put.exit:                       ; preds = %bb.al, %bb.am, %bb.an
  call void @drm_modeset_drop_locks(ptr noundef nonnull %1) #12
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %1) #12
  br label %bb.ao

bb.ao:                                            ; preds = %dev_name.exit115, %dev_name.exit99, %bb.a, %drm_atomic_commit_put.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_atomic_commit_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_atomic_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__drm_to_display(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_optimize_watermarks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_atomic_commit_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_modeset_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_modeset_drop_locks(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @i9xx_wm_init(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 5 uses
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.d, 18874368
  %or.cond.i = icmp eq i64 %i.e, 0
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 5400
  %i.g = getelementptr i8, ptr %0, i64 5536
  store i8 5, ptr %i.g, align 8
  %i.h = tail call i64 @intel_mchbar_read64_2x32(ptr noundef %0, i32 1334544) #12 ; 5 uses
  %i.i = lshr i64 %i.h, 56                        ; 2 uses
  %i.j = trunc nuw nsw i64 %i.i to i16
  %i.k = icmp eq i64 %i.i, 0
  %i.l = trunc i64 %i.h to i16                    ; 2 uses
  %i.m = and i16 %i.l, 15
  %storemerge.i.i = select i1 %i.k, i16 %i.m, i16 %i.j
  store i16 %storemerge.i.i, ptr %i.f, align 8
  %i.n = lshr i16 %i.l, 4
  %i.o = and i16 %i.n, 255
  %i.p = getelementptr i8, ptr %0, i64 5402
  store i16 %i.o, ptr %i.p, align 2
  %i.q = lshr i64 %i.h, 12
  %i.r = trunc i64 %i.q to i16
  %i.s = and i16 %i.r, 255
  %i.t = getelementptr i8, ptr %0, i64 5404
  store i16 %i.s, ptr %i.t, align 4
  %i.u = lshr i64 %i.h, 20
  %i.v = trunc i64 %i.u to i16
  %i.w = and i16 %i.v, 511
  %i.x = getelementptr i8, ptr %0, i64 5406
  store i16 %i.w, ptr %i.x, align 2
  %i.y = lshr i64 %i.h, 32
  %i.z = trunc i64 %i.y to i16
  %i.aa = and i16 %i.z, 511
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.ab = getelementptr i8, ptr %0, i64 1168
  %i.ac = load i16, ptr %i.ab, align 8
  %i.ad = icmp ugt i16 %i.ac, 5
  %i.ae = getelementptr i8, ptr %0, i64 5400      ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 5536      ; 2 uses
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 4, ptr %i.af, align 8
  %i.ag = tail call i32 @intel_mchbar_read(ptr noundef %0, i32 1334544) #12 ; 3 uses
  %i.ah = trunc i32 %i.ag to i16                  ; 2 uses
  %i.ai = and i16 %i.ah, 63
  store i16 %i.ai, ptr %i.ae, align 8
  %i.aj = lshr i16 %i.ah, 8
  %i.ak = and i16 %i.aj, 63
  %i.al = getelementptr i8, ptr %0, i64 5402
  store i16 %i.ak, ptr %i.al, align 2
  %i.am = lshr i32 %i.ag, 16
  %i.an = trunc nuw i32 %i.am to i16
  %i.ao = and i16 %i.an, 63
  %i.ap = getelementptr i8, ptr %0, i64 5404
  store i16 %i.ao, ptr %i.ap, align 4
  %i.aq = lshr i32 %i.ag, 24
  %i.ar = trunc nuw nsw i32 %i.aq to i16
  %i.as = and i16 %i.ar, 63
end_hunk_0
