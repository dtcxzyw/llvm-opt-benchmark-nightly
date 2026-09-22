Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_modeset_verify?download=true
inline.NumInlined: 130
inline.NumDeleted: 15
begin_hunk_0_@verify_connector_state:bb.a
bb.bo:                                            ; preds = %.critedge
  %i.hh = getelementptr i8, ptr %i.gq, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  br label %__drm_to_dev.exit58

__drm_to_dev.exit58:                              ; preds = %.critedge, %bb.bo
  %i.hj = phi ptr [ %i.hi, %bb.bo ], [ null, %.critedge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.hj, ptr noundef nonnull @.str.2) #8
  br label %bb.bp

bb.bp:                                            ; preds = %dev_name.exit56, %bb.e, %__drm_to_dev.exit58, %intel_connector_verify_state.exit, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hk = load i32, ptr %i.e, align 8
  %i.hl = sext i32 %i.hk to i64
  %i.hm = icmp slt i64 %indvars.iv.next, %i.hl
  br i1 %i.hm, label %bb.d, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.bp, %bb.c
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dpll_state_verify(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_mpllb_state_verify(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_modeset_verify_disabled(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__drm_to_display(ptr noundef nonnull %i.c) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ] ; 12 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 624      ; 2 uses
  %.pn159.i = load ptr, ptr %i.g, align 8         ; 2 uses
  %.not154161.i = icmp eq ptr %.pn159.i, %i.g
  br i1 %.not154161.i, label %verify_encoder_state.exit, label %.lr.ph165.i

.lr.ph165.i:                                      ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 56
  %i.j = getelementptr i8, ptr %i.e, i64 5187     ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.critedge167.i, %.lr.ph165.i
  %.pn162.i = phi ptr [ %.pn159.i, %.lr.ph165.i ], [ %.pn.i, %.critedge167.i ] ; 6 uses
  %i.k = phi ptr [ %i.f, %.lr.ph165.i ], [ %.pr.i, %.critedge167.i ] ; 2 uses
  %.0163.i = getelementptr i8, ptr %.pn162.i, i64 -8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !annotation !14
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.e, %bb.d
  %i.n = phi ptr [ %i.m, %bb.e ], [ null, %bb.d ]
  %i.o = getelementptr i8, ptr %.pn162.i, i64 16
  %i.p = load i32, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %.pn162.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.n, i32 noundef 2, ptr noundef nonnull @.str.30, i32 noundef %i.p, ptr noundef %i.r) #5
  %i.s = load i32, ptr %i.h, align 8
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i, label %.critedge167.i

.lr.ph.i:                                         ; preds = %__drm_to_dev.exit.i
  %i.u = getelementptr i8, ptr %.pn162.i, i64 72  ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.p, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.p ] ; 2 uses
  %.088156.i = phi i8 [ 0, %.lr.ph.i ], [ %.1.i, %bb.p ] ; 2 uses
  %.089155.i = phi i1 [ false, %.lr.ph.i ], [ %.2.i, %bb.p ] ; 2 uses
  %i.v = load ptr, ptr %i.i, align 8
  %i.w = getelementptr [40 x i8], ptr %i.v, i64 %indvars.iv.i ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8
  %.not96.i = icmp eq ptr %i.x, null
  br i1 %.not96.i, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.w, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.w, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = icmp eq ptr %i.ad, %.0163.i
  %spec.select.i = select i1 %i.ae, i1 true, i1 %.089155.i
  %i.af = getelementptr i8, ptr %i.ab, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %.not97.i = icmp eq ptr %i.ag, %.0163.i
  br i1 %.not97.i, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr i8, ptr %i.ab, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %i.u, align 8
  %.not98.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not98.i, label %bb.p, label %bb.i, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.ak = load i8, ptr %i.j, align 1, !range !10, !noundef !11
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = load ptr, ptr %i.e, align 8             ; 3 uses
  %.not.i103.i = icmp eq ptr %i.am, null          ; 2 uses
  br i1 %i.al, label %bb.j, label %.critedge.i, !prof !12

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i103.i, label %__drm_to_dev.exit104.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  br label %__drm_to_dev.exit104.i

__drm_to_dev.exit104.i:                           ; preds = %bb.k, %bb.j
  %i.ap = phi ptr [ %i.ao, %bb.k ], [ null, %bb.j ]
  %i.aq = call ptr @dev_driver_string(ptr noundef %i.ap) #5 ; 0 uses
  %i.ar = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.31, ptr nonnull @.str.1, i32 142, i32 2321, i64 16) #7, !srcloc !51
  %i.as = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i108.i = icmp eq ptr %i.as, null
  br i1 %.not.i108.i, label %__drm_to_dev.exit109.i, label %bb.l

bb.l:                                             ; preds = %__drm_to_dev.exit104.i
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  br label %__drm_to_dev.exit109.i

__drm_to_dev.exit109.i:                           ; preds = %bb.l, %__drm_to_dev.exit104.i
  %i.av = phi ptr [ %i.au, %bb.l ], [ null, %__drm_to_dev.exit104.i ]
  %i.aw = call ptr @dev_driver_string(ptr noundef %i.av) #5
  %i.ax = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i110.i = icmp eq ptr %i.ax, null
  br i1 %.not.i110.i, label %__drm_to_dev.exit111.i, label %bb.m

bb.m:                                             ; preds = %__drm_to_dev.exit109.i
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  br label %__drm_to_dev.exit111.i

__drm_to_dev.exit111.i:                           ; preds = %bb.m, %__drm_to_dev.exit109.i
  %i.ba = phi ptr [ %i.az, %bb.m ], [ null, %__drm_to_dev.exit109.i ] ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 80
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not.i112.i = icmp eq ptr %i.bc, null
  br i1 %.not.i112.i, label %bb.n, label %dev_name.exit115.i

bb.n:                                             ; preds = %__drm_to_dev.exit111.i
  %.val.i114.i = load ptr, ptr %i.ba, align 8
  br label %dev_name.exit115.i

dev_name.exit115.i:                               ; preds = %bb.n, %__drm_to_dev.exit111.i
  %.0.i113.i = phi ptr [ %.val.i114.i, %bb.n ], [ %i.bc, %__drm_to_dev.exit111.i ]
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ar, ptr noundef %i.aw, ptr noundef %.0.i113.i) #5
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !52
  br label %bb.p

.critedge.i:                                      ; preds = %bb.i
  br i1 %.not.i103.i, label %__drm_to_dev.exit117.i, label %bb.o

bb.o:                                             ; preds = %.critedge.i
  %i.bd = getelementptr i8, ptr %i.am, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  br label %__drm_to_dev.exit117.i

__drm_to_dev.exit117.i:                           ; preds = %bb.o, %.critedge.i
  %i.bf = phi ptr [ %i.be, %bb.o ], [ null, %.critedge.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.bf, ptr noundef nonnull @.str.32) #8
  br label %bb.p

bb.p:                                             ; preds = %__drm_to_dev.exit117.i, %dev_name.exit115.i, %bb.h, %bb.g, %bb.f
  %.2.i = phi i1 [ %spec.select.i, %bb.g ], [ %.089155.i, %bb.f ], [ true, %dev_name.exit115.i ], [ true, %__drm_to_dev.exit117.i ], [ true, %bb.h ] ; 2 uses
  %.1.i = phi i8 [ %.088156.i, %bb.g ], [ %.088156.i, %bb.f ], [ 1, %dev_name.exit115.i ], [ 1, %__drm_to_dev.exit117.i ], [ 1, %bb.h ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bg = load i32, ptr %i.h, align 8
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i64 %indvars.iv.next.i, %i.bh
  br i1 %i.bi, label %bb.f, label %._crit_edge.i, !llvm.loop !48

._crit_edge.i:                                    ; preds = %bb.p
  br i1 %.2.i, label %bb.q, label %.critedge167.i

bb.q:                                             ; preds = %._crit_edge.i
  %i.bj = load ptr, ptr %i.u, align 8             ; 2 uses
  %1 = icmp ne ptr %i.bj, null                    ; 2 uses
  %i.bk = zext nneg i8 %.1.i to i32               ; 2 uses
  %2 = zext i1 %1 to i8
  %i.bl = icmp eq i8 %.1.i, %2
  br i1 %i.bl, label %bb.y, label %bb.r, !prof !13

bb.r:                                             ; preds = %bb.q
  %i.bm = load i8, ptr %i.j, align 1, !range !10, !noundef !11
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = load ptr, ptr %i.e, align 8             ; 3 uses
  %.not.i118.i = icmp eq ptr %i.bo, null          ; 2 uses
  br i1 %i.bn, label %bb.s, label %.critedge100.i, !prof !12

bb.s:                                             ; preds = %bb.r
  br i1 %.not.i118.i, label %__drm_to_dev.exit119.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  br label %__drm_to_dev.exit119.i

__drm_to_dev.exit119.i:                           ; preds = %bb.t, %bb.s
  %i.br = phi ptr [ %i.bq, %bb.t ], [ null, %bb.s ]
  %i.bs = call ptr @dev_driver_string(ptr noundef %i.br) #5 ; 0 uses
  %i.bt = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.33, ptr nonnull @.str.1, i32 150, i32 2321, i64 16) #7, !srcloc !53
  %i.bu = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i126.i = icmp eq ptr %i.bu, null
  br i1 %.not.i126.i, label %__drm_to_dev.exit127.i, label %bb.u

bb.u:                                             ; preds = %__drm_to_dev.exit119.i
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  br label %__drm_to_dev.exit127.i

__drm_to_dev.exit127.i:                           ; preds = %bb.u, %__drm_to_dev.exit119.i
  %i.bx = phi ptr [ %i.bw, %bb.u ], [ null, %__drm_to_dev.exit119.i ]
  %i.by = call ptr @dev_driver_string(ptr noundef %i.bx) #5
  %i.bz = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i128.i = icmp eq ptr %i.bz, null
  br i1 %.not.i128.i, label %__drm_to_dev.exit129.i, label %bb.v

bb.v:                                             ; preds = %__drm_to_dev.exit127.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  br label %__drm_to_dev.exit129.i

__drm_to_dev.exit129.i:                           ; preds = %bb.v, %__drm_to_dev.exit127.i
  %i.cc = phi ptr [ %i.cb, %bb.v ], [ null, %__drm_to_dev.exit127.i ] ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 80
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not.i130.i = icmp eq ptr %i.ce, null
  br i1 %.not.i130.i, label %bb.w, label %dev_name.exit133.i

bb.w:                                             ; preds = %__drm_to_dev.exit129.i
  %.val.i132.i = load ptr, ptr %i.cc, align 8
  br label %dev_name.exit133.i

dev_name.exit133.i:                               ; preds = %bb.w, %__drm_to_dev.exit129.i
  %.0.i131.i = phi ptr [ %.val.i132.i, %bb.w ], [ %i.ce, %__drm_to_dev.exit129.i ]
  %i.cf = load ptr, ptr %i.u, align 8
  %i.cg = icmp ne ptr %i.cf, null
  %i.ch = zext i1 %i.cg to i32
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bt, ptr noundef %i.by, ptr noundef %.0.i131.i, i32 noundef %i.ch, i32 noundef %i.bk) #5
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !54
  br label %thread-pre-split.i

.critedge100.i:                                   ; preds = %bb.r
  br i1 %.not.i118.i, label %__drm_to_dev.exit135.i, label %bb.x

bb.x:                                             ; preds = %.critedge100.i
  %i.ci = getelementptr i8, ptr %i.bo, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  br label %__drm_to_dev.exit135.i

__drm_to_dev.exit135.i:                           ; preds = %bb.x, %.critedge100.i
  %i.ck = phi ptr [ %i.cj, %bb.x ], [ null, %.critedge100.i ]
  %i.cl = zext i1 %1 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ck, ptr noundef nonnull @.str.34, i32 noundef %i.cl, i32 noundef %i.bk) #8
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %__drm_to_dev.exit135.i, %dev_name.exit133.i
  %.pr184.i = load ptr, ptr %i.u, align 8
  br label %bb.y

bb.y:                                             ; preds = %thread-pre-split.i, %bb.q
  %i.cm = phi ptr [ %.pr184.i, %thread-pre-split.i ], [ %i.bj, %bb.q ]
  %.not95.i = icmp eq ptr %i.cm, null
  br i1 %.not95.i, label %bb.z, label %.critedge167.i

bb.z:                                             ; preds = %bb.y
  %i.cn = getelementptr i8, ptr %.pn162.i, i64 360
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = call zeroext i1 %i.co(ptr noundef %.0163.i, ptr noundef nonnull %i.a) #5, !inline_history !49
  br i1 %i.cp, label %bb.aa, label %.critedge167.i, !prof !12

bb.aa:                                            ; preds = %bb.z
  %i.cq = load i8, ptr %i.j, align 1, !range !10, !noundef !11
  %i.cr = trunc nuw i8 %i.cq to i1
  %i.cs = load ptr, ptr %i.e, align 8             ; 3 uses
  %.not.i136.i = icmp eq ptr %i.cs, null          ; 2 uses
  br i1 %i.cr, label %bb.ab, label %.critedge102.i, !prof !12

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not.i136.i, label %__drm_to_dev.exit137.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ct = getelementptr i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  br label %__drm_to_dev.exit137.i

__drm_to_dev.exit137.i:                           ; preds = %bb.ac, %bb.ab
  %i.cv = phi ptr [ %i.cu, %bb.ac ], [ null, %bb.ab ]
  %i.cw = call ptr @dev_driver_string(ptr noundef %i.cv) #5 ; 0 uses
  %i.cx = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.35, ptr nonnull @.str.1, i32 158, i32 2321, i64 16) #7, !srcloc !55
  %i.cy = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i144.i = icmp eq ptr %i.cy, null
  br i1 %.not.i144.i, label %__drm_to_dev.exit145.i, label %bb.ad

bb.ad:                                            ; preds = %__drm_to_dev.exit137.i
  %i.cz = getelementptr i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  br label %__drm_to_dev.exit145.i

__drm_to_dev.exit145.i:                           ; preds = %bb.ad, %__drm_to_dev.exit137.i
  %i.db = phi ptr [ %i.da, %bb.ad ], [ null, %__drm_to_dev.exit137.i ]
  %i.dc = call ptr @dev_driver_string(ptr noundef %i.db) #5
  %i.dd = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i146.i = icmp eq ptr %i.dd, null
  br i1 %.not.i146.i, label %__drm_to_dev.exit147.i, label %bb.ae

bb.ae:                                            ; preds = %__drm_to_dev.exit145.i
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  br label %__drm_to_dev.exit147.i

__drm_to_dev.exit147.i:                           ; preds = %bb.ae, %__drm_to_dev.exit145.i
  %i.dg = phi ptr [ %i.df, %bb.ae ], [ null, %__drm_to_dev.exit145.i ] ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 80
  %i.di = load ptr, ptr %i.dh, align 8            ; 2 uses
  %.not.i148.i = icmp eq ptr %i.di, null
  br i1 %.not.i148.i, label %bb.af, label %dev_name.exit151.i

bb.af:                                            ; preds = %__drm_to_dev.exit147.i
  %.val.i150.i = load ptr, ptr %i.dg, align 8
  br label %dev_name.exit151.i

dev_name.exit151.i:                               ; preds = %bb.af, %__drm_to_dev.exit147.i
  %.0.i149.i = phi ptr [ %.val.i150.i, %bb.af ], [ %i.di, %__drm_to_dev.exit147.i ]
  %i.dj = load i32, ptr %i.a, align 4
  %i.dk = add i32 %i.dj, 65
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.cx, ptr noundef %i.dc, ptr noundef %.0.i149.i, i32 noundef %i.dk) #5
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !56
  br label %.critedge167.i

.critedge102.i:                                   ; preds = %bb.aa
  br i1 %.not.i136.i, label %__drm_to_dev.exit153.i, label %bb.ag

bb.ag:                                            ; preds = %.critedge102.i
  %i.dl = getelementptr i8, ptr %i.cs, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  br label %__drm_to_dev.exit153.i

__drm_to_dev.exit153.i:                           ; preds = %bb.ag, %.critedge102.i
  %i.dn = phi ptr [ %i.dm, %bb.ag ], [ null, %.critedge102.i ]
  %i.do = load i32, ptr %i.a, align 4
  %i.dp = add i32 %i.do, 65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.dn, ptr noundef nonnull @.str.36, i32 noundef %i.dp) #8
  br label %.critedge167.i

.critedge167.i:                                   ; preds = %__drm_to_dev.exit153.i, %dev_name.exit151.i, %bb.z, %bb.y, %._crit_edge.i, %__drm_to_dev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.pr.i = load ptr, ptr %i.e, align 8            ; 2 uses
  %.pn.i = load ptr, ptr %.pn162.i, align 8       ; 2 uses
  %i.dq = getelementptr i8, ptr %.pr.i, i64 624
  %.not154.i = icmp eq ptr %.pn.i, %i.dq
  br i1 %.not154.i, label %verify_encoder_state.exit, label %bb.d, !llvm.loop !50

verify_encoder_state.exit:                        ; preds = %.critedge167.i, %bb.c
  call fastcc void @verify_connector_state(ptr noundef %0, ptr noundef null) #6, !srcloc !57
  call void @intel_dpll_verify_disabled(ptr noundef %0) #5
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dpll_verify_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__drm_to_display(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_crtc_state_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_crtc_get_pipe_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_primary_crtc(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_encoder_get_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_pipe_config_compare(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_crtc_state_dump(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_crtc_destroy_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_dotclock_calculate(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_fdi_link_freq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noredzone nounwind "no-builtin-wcslen" }
attributes #6 = { noredzone "no-builtin-wcslen" }
attributes #7 = { nounwind }
attributes #8 = { cold noredzone nounwind "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{!"auto-init"}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{null}
!17 = distinct !{!17, !15}
!18 = !{i64 7525}
!19 = !{!"branch_weights", !"expected", i32 2146052709, i32 1430939}
!20 = !{i64 2160553850, i64 2160553877, i64 2160554327, i64 2160554360, i64 2160554395, i64 2160554411, i64 2160555252, i64 2160555310, i64 2160555359, i64 2160555169, i64 2160554470, i64 2160554502}
!21 = !{i64 2160551827}
!22 = !{i64 2160561063, i64 2160561090, i64 2160561551, i64 2160561584, i64 2160561619, i64 2160561635, i64 2160562476, i64 2160562534, i64 2160562583, i64 2160562393, i64 2160561694, i64 2160561726}
!23 = !{i64 2160559042}
!24 = !{i64 2160572555, i64 2160572582, i64 2160573005, i64 2160573038, i64 2160573073, i64 2160573089, i64 2160573930, i64 2160573988, i64 2160574037, i64 2160573847, i64 2160573148, i64 2160573180}
!25 = !{i64 2160570564}
!26 = !{i64 2160579094, i64 2160579121, i64 2160579536, i64 2160579569, i64 2160579604, i64 2160579620, i64 2160580461, i64 2160580519, i64 2160580568, i64 2160580378, i64 2160579679, i64 2160579711}
!27 = !{i64 2160577209}
!28 = !{i64 2160508583, i64 2160508610, i64 2160509055, i64 2160509088, i64 2160509123, i64 2160509139, i64 2160509980, i64 2160510038, i64 2160510087, i64 2160509897, i64 2160509198, i64 2160509230}
!29 = !{i64 2160506642}
!30 = !{i64 2160585141, i64 2160585168, i64 2160585574, i64 2160585607, i64 2160585642, i64 2160585658, i64 2160590560, i64 2160590618, i64 2160590667, i64 2160590477, i64 2160585717, i64 2160585749}
!31 = !{i64 2160583310}
!32 = distinct !{null}
end_hunk_0
