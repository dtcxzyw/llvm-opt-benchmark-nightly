Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_display_power_map?download=true
inline.NumInlined: 24
inline.NumDeleted: 8
begin_hunk_0_@intel_display_power_map_init:bb.a

bb.x:                                             ; preds = %bb.u
  %i.ah = and i64 %i.u, 34359738368
  %.not50 = icmp eq i64 %i.ah, 0
  br i1 %.not50, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ai = tail call fastcc i32 @__set_power_wells(ptr noundef %0, ptr noundef nonnull @glk_power_wells, i32 noundef 3) #4, !srcloc !21
  br label %bb.ao

bb.z:                                             ; preds = %bb.x
  %i.aj = and i64 %i.u, 2147483648
  %.not51 = icmp eq i64 %i.aj, 0
  br i1 %.not51, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ak = tail call fastcc i32 @__set_power_wells(ptr noundef %0, ptr noundef nonnull @bxt_power_wells, i32 noundef 3) #4, !srcloc !22
  br label %bb.ao

bb.ab:                                            ; preds = %bb.z
  %i.al = icmp eq i16 %i.e, 9
  br i1 %i.al, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.am = tail call fastcc i32 @__set_power_wells(ptr noundef %0, ptr noundef nonnull @skl_power_wells, i32 noundef 3) #4, !srcloc !23
  br label %bb.ao

bb.ad:                                            ; preds = %bb.ab
  %i.an = and i64 %i.u, 134217728
  %.not52 = icmp eq i64 %i.an, 0
  br i1 %.not52, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ao = tail call fastcc i32 @__set_power_wells(ptr noundef %0, ptr noundef nonnull @chv_power_wells, i32 noundef 2) #4, !srcloc !24
  br label %bb.ao

bb.af:                                            ; preds = %bb.ad
  %i.ap = and i64 %i.u, 16777216
  %.not53 = icmp eq i64 %i.ap, 0
  br i1 %.not53, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.aq = tail call fastcc i32 @__set_power_wells(ptr noundef %0, ptr noundef nonnull @bdw_power_wells, i32 noundef 2) #4, !srcloc !25
  br label %bb.ao

bb.ah:                                            ; preds = %bb.af
  %i.ar = and i64 %i.u, 2097152
  %.not54 = icmp eq i64 %i.ar, 0
  br i1 %.not54, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.as = tail call fastcc i32 @__set_power_wells(ptr noundef %0, ptr noundef nonnull @hsw_power_wells, i32 noundef 2) #4, !srcloc !26
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ah
  %i.at = and i64 %i.u, 1048576
  %.not55 = icmp eq i64 %i.at, 0
  br i1 %.not55, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.au = tail call fastcc i32 @__set_power_wells(ptr noundef %0, ptr noundef nonnull @vlv_power_wells, i32 noundef 2) #4, !srcloc !27
  br label %bb.ao

bb.al:                                            ; preds = %bb.aj
  %i.av = and i64 %i.u, 8
  %.not56 = icmp eq i64 %i.av, 0
  br i1 %.not56, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.aw = tail call fastcc i32 @__set_power_wells(ptr noundef %0, ptr noundef nonnull @i830_power_wells, i32 noundef 2) #4, !srcloc !28
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.ax = tail call fastcc i32 @__set_power_wells(ptr noundef %0, ptr noundef nonnull @i9xx_power_wells, i32 noundef 1) #4, !srcloc !29
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ %i.m, %bb.d ], [ %i.o, %bb.f ], [ %i.q, %bb.h ], [ %i.s, %bb.j ], [ %i.w, %bb.l ], [ %i.y, %bb.n ], [ %i.aa, %bb.p ], [ %i.ac, %bb.r ], [ %i.ae, %bb.t ], [ %i.af, %bb.v ], [ %i.ag, %bb.w ], [ %i.ai, %bb.y ], [ %i.ak, %bb.aa ], [ %i.am, %bb.ac ], [ %i.ao, %bb.ae ], [ %i.aq, %bb.ag ], [ %i.as, %bb.ai ], [ %i.au, %bb.ak ], [ %i.aw, %bb.am ], [ %i.ax, %bb.an ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -12, 1) i32 @__set_power_wells(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef range(i32 1, 7) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = zext nneg i32 %2 to i64                  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge165
  %.097168 = phi ptr [ %1, %bb.a ], [ %i.z, %._crit_edge165 ] ; 3 uses
  %.0103167 = phi i32 [ 0, %bb.a ], [ %.1104.lcssa, %._crit_edge165 ] ; 2 uses
  %i.c = load ptr, ptr %.097168, align 8          ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = getelementptr i8, ptr %.097168, i64 8
  %i.f = load i8, ptr %i.e, align 8               ; 2 uses
  %i.g = zext i8 %i.f to i64
  %.not189 = icmp eq i8 %i.f, 0
  br i1 %.not189, label %._crit_edge165, label %.lr.ph164

.lr.ph164:                                        ; preds = %bb.b, %._crit_edge
  %.099162 = phi ptr [ %i.u, %._crit_edge ], [ %i.c, %bb.b ] ; 2 uses
  %.1104161 = phi i32 [ %.2105.lcssa, %._crit_edge ], [ %.0103167, %bb.b ] ; 2 uses
  %i.h = getelementptr i8, ptr %.099162, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = load i8, ptr %i.l, align 8               ; 2 uses
  %i.n = zext i8 %i.m to i64
  %.not190 = icmp eq i8 %i.m, 0
  br i1 %.not190, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph164, %.lr.ph
  %.0101160 = phi ptr [ %i.p, %.lr.ph ], [ %i.j, %.lr.ph164 ]
  %.2105159 = phi i32 [ %i.o, %.lr.ph ], [ %.1104161, %.lr.ph164 ]
  %i.o = add i32 %.2105159, 1                     ; 2 uses
  %i.p = getelementptr i8, ptr %.0101160, i64 24  ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.k
  %i.s = sdiv exact i64 %i.r, 24
  %i.t = icmp slt i64 %i.s, %i.n
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph164
  %.2105.lcssa = phi i32 [ %.1104161, %.lr.ph164 ], [ %i.o, %.lr.ph ] ; 2 uses
  %i.u = getelementptr i8, ptr %.099162, i64 24   ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.d
  %i.x = sdiv exact i64 %i.w, 24
  %i.y = icmp slt i64 %i.x, %i.g
  br i1 %i.y, label %.lr.ph164, label %._crit_edge165, !llvm.loop !31

._crit_edge165:                                   ; preds = %._crit_edge, %bb.b
  %.1104.lcssa = phi i32 [ %.0103167, %bb.b ], [ %.2105.lcssa, %._crit_edge ] ; 4 uses
  %i.z = getelementptr i8, ptr %.097168, i64 16   ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.a
  %i.ac = ashr exact i64 %i.ab, 4
  %i.ad = icmp slt i64 %i.ac, %i.b
  br i1 %i.ad, label %bb.b, label %_kzalloc_noprof.exit, !llvm.loop !32

_kzalloc_noprof.exit:                             ; preds = %._crit_edge165
  %i.ae = getelementptr i8, ptr %0, i64 -1416     ; 9 uses
  %i.af = getelementptr i8, ptr %0, i64 4
  store i32 %.1104.lcssa, ptr %i.af, align 4
  %i.ag = icmp slt i32 %.1104.lcssa, 0
  %i.ah = sext i32 %.1104.lcssa to i64
  %i.ai = shl nsw i64 %i.ah, 5
  %.0.i = select i1 %i.ag, i64 -1, i64 %i.ai
  %i.aj = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -68719476736, 68719476705) %.0.i, i32 noundef 3520) #5 ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 504       ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %.loopexit, label %.lr.ph188

.lr.ph188:                                        ; preds = %_kzalloc_noprof.exit, %._crit_edge182
  %.096187 = phi i64 [ %.1.lcssa, %._crit_edge182 ], [ 0, %_kzalloc_noprof.exit ] ; 2 uses
  %.198186 = phi ptr [ %i.ez, %._crit_edge182 ], [ %1, %_kzalloc_noprof.exit ] ; 4 uses
  %.0106185 = phi i32 [ %.1107.lcssa, %._crit_edge182 ], [ 0, %_kzalloc_noprof.exit ] ; 2 uses
  %i.al = getelementptr i8, ptr %.198186, i64 8   ; 2 uses
  %i.am = load i8, ptr %i.al, align 8             ; 2 uses
  %.not191 = icmp eq i8 %i.am, 0
  br i1 %.not191, label %._crit_edge182, label %.lr.ph181.preheader

.lr.ph181.preheader:                              ; preds = %.lr.ph188
  %i.an = load ptr, ptr %.198186, align 8         ; 2 uses
  br label %.lr.ph181

.lr.ph181:                                        ; preds = %.lr.ph181.preheader, %._crit_edge174
  %i.ao = phi i8 [ %i.eq, %._crit_edge174 ], [ %i.am, %.lr.ph181.preheader ]
  %i.ap = phi ptr [ %i.er, %._crit_edge174 ], [ %i.an, %.lr.ph181.preheader ]
  %.1179 = phi i64 [ %.2.lcssa, %._crit_edge174 ], [ %.096187, %.lr.ph181.preheader ] ; 2 uses
  %.1100178 = phi ptr [ %i.es, %._crit_edge174 ], [ %i.an, %.lr.ph181.preheader ] ; 3 uses
  %.1107177 = phi i32 [ %.2108.lcssa, %._crit_edge174 ], [ %.0106185, %.lr.ph181.preheader ] ; 2 uses
  %i.aq = getelementptr i8, ptr %.1100178, i64 8  ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %i.at = load i8, ptr %i.as, align 8
  %.not192 = icmp eq i8 %i.at, 0
  br i1 %.not192, label %._crit_edge174, label %.lr.ph173.preheader

.lr.ph173.preheader:                              ; preds = %.lr.ph181
  %i.au = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64
  br label %.lr.ph173

.lr.ph173:                                        ; preds = %.lr.ph173.preheader, %bb.x
  %i.aw = phi i64 [ %i.ei, %bb.x ], [ %i.av, %.lr.ph173.preheader ] ; 2 uses
  %.2171 = phi i64 [ %.3, %bb.x ], [ %.1179, %.lr.ph173.preheader ] ; 3 uses
  %.1102170 = phi ptr [ %i.ef, %bb.x ], [ %i.au, %.lr.ph173.preheader ] ; 3 uses
  %.2108169 = phi i32 [ %i.cq, %bb.x ], [ %.1107177, %.lr.ph173.preheader ] ; 2 uses
  %i.ax = load ptr, ptr %i.ak, align 8
  %i.ay = sext i32 %.2108169 to i64
  %i.az = getelementptr [32 x i8], ptr %i.ax, i64 %i.ay ; 3 uses
  %i.ba = getelementptr i8, ptr %.1102170, i64 16
  %i.bb = load i32, ptr %i.ba, align 8            ; 3 uses
  store ptr %.1100178, ptr %i.az, align 8
  %i.bc = load ptr, ptr %i.aq, align 8
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.aw, %i.be                    ; 2 uses
  %i.bg = icmp ugt i64 %i.bf, 6120
  br i1 %i.bg, label %bb.c, label %bb.h, !prof !38

bb.c:                                             ; preds = %.lr.ph173
  %i.bh = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.c, %bb.d
  %i.bk = phi ptr [ %i.bj, %bb.d ], [ null, %bb.c ]
  %i.bl = tail call ptr @dev_driver_string(ptr noundef %i.bk) #6 ; 0 uses
  %i.bm = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 1824, i32 2321, i64 16) #7, !srcloc !39
  %i.bn = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i117 = icmp eq ptr %i.bn, null
  br i1 %.not.i117, label %__drm_to_dev.exit118, label %bb.e

bb.e:                                             ; preds = %__drm_to_dev.exit
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  br label %__drm_to_dev.exit118

__drm_to_dev.exit118:                             ; preds = %__drm_to_dev.exit, %bb.e
  %i.bq = phi ptr [ %i.bp, %bb.e ], [ null, %__drm_to_dev.exit ]
  %i.br = tail call ptr @dev_driver_string(ptr noundef %i.bq) #6
  %i.bs = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i119 = icmp eq ptr %i.bs, null
  br i1 %.not.i119, label %__drm_to_dev.exit120, label %bb.f

bb.f:                                             ; preds = %__drm_to_dev.exit118
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  br label %__drm_to_dev.exit120

__drm_to_dev.exit120:                             ; preds = %__drm_to_dev.exit118, %bb.f
  %i.bv = phi ptr [ %i.bu, %bb.f ], [ null, %__drm_to_dev.exit118 ] ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 80
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %.not.i121 = icmp eq ptr %i.bx, null
  br i1 %.not.i121, label %bb.g, label %dev_name.exit124

bb.g:                                             ; preds = %__drm_to_dev.exit120
  %.val.i123 = load ptr, ptr %i.bv, align 8
  br label %dev_name.exit124

dev_name.exit124:                                 ; preds = %__drm_to_dev.exit120, %bb.g
  %.0.i122 = phi ptr [ %.val.i123, %bb.g ], [ %i.bx, %__drm_to_dev.exit120 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bm, ptr noundef %i.br, ptr noundef %.0.i122, ptr noundef nonnull @.str.1) #6
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !40
  %.pre = load ptr, ptr %i.aq, align 8
  %.pre194 = load ptr, ptr %.pre, align 8
  %.pre197 = ptrtoint ptr %.pre194 to i64
  %.pre198 = sub i64 %i.aw, %.pre197
  br label %bb.h

bb.h:                                             ; preds = %dev_name.exit124, %.lr.ph173
  %.pre-phi201 = phi i64 [ %.pre198, %dev_name.exit124 ], [ %i.bf, %.lr.ph173 ]
  %3 = sdiv exact i64 %.pre-phi201, 24
  %i.by = trunc i64 %3 to i8
  %i.bz = getelementptr i8, ptr %i.az, i64 29
  store i8 %i.by, ptr %i.bz, align 1
  %i.ca = getelementptr i8, ptr %.1102170, i64 8  ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8            ; 3 uses
  %.not.i125 = icmp eq ptr %i.cb, null
  br i1 %.not.i125, label %init_power_well_domains.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  %i.cd = load i8, ptr %i.cc, align 8
  %i.ce = icmp eq i8 %i.cd, 0
  %i.cf = getelementptr i8, ptr %i.az, i64 8      ; 2 uses
  br i1 %i.ce, label %bb.j, label %.lr.ph.i

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.cf, i8 -1, i64 16, i1 false)
  br label %init_power_well_domains.exit

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.i ] ; 2 uses
  %i.cg = phi ptr [ %i.cl, %.lr.ph.i ], [ %i.cb, %bb.i ]
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr [4 x i8], ptr %i.ch, i64 %indvars.iv.i
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = zext i32 %i.cj to i64
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cf, i64 range(i64 0, 4294967296) %i.ck) #7, !srcloc !41
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cl = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  %i.cn = load i8, ptr %i.cm, align 8
  %i.co = zext i8 %i.cn to i64
  %i.cp = icmp samesign ult i64 %indvars.iv.next.i, %i.co
  br i1 %i.cp, label %.lr.ph.i, label %init_power_well_domains.exit, !llvm.loop !33

init_power_well_domains.exit:                     ; preds = %.lr.ph.i, %bb.h, %bb.j
  %i.cq = add i32 %.2108169, 1                    ; 2 uses
  %i.cr = icmp eq i32 %i.bb, 0
  br i1 %i.cr, label %bb.x, label %bb.k

bb.k:                                             ; preds = %init_power_well_domains.exit
  %i.cs = zext nneg i32 %i.bb to i64
  %i.ct = icmp ugt i32 %i.bb, 63
  br i1 %i.ct, label %bb.l, label %bb.q, !prof !38

bb.l:                                             ; preds = %bb.k
  %i.cu = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i126 = icmp eq ptr %i.cu, null
  br i1 %.not.i126, label %__drm_to_dev.exit127, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  br label %__drm_to_dev.exit127

__drm_to_dev.exit127:                             ; preds = %bb.l, %bb.m
  %i.cx = phi ptr [ %i.cw, %bb.m ], [ null, %bb.l ]
  %i.cy = tail call ptr @dev_driver_string(ptr noundef %i.cx) #6 ; 0 uses
  %i.cz = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 1834, i32 2321, i64 16) #7, !srcloc !42
  %i.da = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i134 = icmp eq ptr %i.da, null
  br i1 %.not.i134, label %__drm_to_dev.exit135, label %bb.n

bb.n:                                             ; preds = %__drm_to_dev.exit127
  %i.db = getelementptr i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  br label %__drm_to_dev.exit135

__drm_to_dev.exit135:                             ; preds = %__drm_to_dev.exit127, %bb.n
  %i.dd = phi ptr [ %i.dc, %bb.n ], [ null, %__drm_to_dev.exit127 ]
  %i.de = tail call ptr @dev_driver_string(ptr noundef %i.dd) #6
  %i.df = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i136 = icmp eq ptr %i.df, null
  br i1 %.not.i136, label %__drm_to_dev.exit137, label %bb.o

bb.o:                                             ; preds = %__drm_to_dev.exit135
  %i.dg = getelementptr i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  br label %__drm_to_dev.exit137

__drm_to_dev.exit137:                             ; preds = %__drm_to_dev.exit135, %bb.o
  %i.di = phi ptr [ %i.dh, %bb.o ], [ null, %__drm_to_dev.exit135 ] ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 80
  %i.dk = load ptr, ptr %i.dj, align 8            ; 2 uses
  %.not.i138 = icmp eq ptr %i.dk, null
  br i1 %.not.i138, label %bb.p, label %dev_name.exit141

bb.p:                                             ; preds = %__drm_to_dev.exit137
  %.val.i140 = load ptr, ptr %i.di, align 8
  br label %dev_name.exit141

dev_name.exit141:                                 ; preds = %__drm_to_dev.exit137, %bb.p
  %.0.i139 = phi ptr [ %.val.i140, %bb.p ], [ %i.dk, %__drm_to_dev.exit137 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.cz, ptr noundef %i.de, ptr noundef %.0.i139, ptr noundef nonnull @.str.3) #6
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !43
  br label %bb.q

bb.q:                                             ; preds = %dev_name.exit141, %bb.k
  %i.dl = shl nuw i64 1, %i.cs                    ; 2 uses
  %i.dm = and i64 %i.dl, %.2171
  %.not112 = icmp eq i64 %i.dm, 0
  br i1 %.not112, label %bb.w, label %bb.r, !prof !44

bb.r:                                             ; preds = %bb.q
  %i.dn = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i142 = icmp eq ptr %i.dn, null
  br i1 %.not.i142, label %__drm_to_dev.exit143, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.do = getelementptr i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  br label %__drm_to_dev.exit143

__drm_to_dev.exit143:                             ; preds = %bb.r, %bb.s
  %i.dq = phi ptr [ %i.dp, %bb.s ], [ null, %bb.r ]
  %i.dr = tail call ptr @dev_driver_string(ptr noundef %i.dq) #6 ; 0 uses
  %i.ds = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 1835, i32 2321, i64 16) #7, !srcloc !45
  %i.dt = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i150 = icmp eq ptr %i.dt, null
  br i1 %.not.i150, label %__drm_to_dev.exit151, label %bb.t

bb.t:                                             ; preds = %__drm_to_dev.exit143
  %i.du = getelementptr i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  br label %__drm_to_dev.exit151

__drm_to_dev.exit151:                             ; preds = %__drm_to_dev.exit143, %bb.t
  %i.dw = phi ptr [ %i.dv, %bb.t ], [ null, %__drm_to_dev.exit143 ]
  %i.dx = tail call ptr @dev_driver_string(ptr noundef %i.dw) #6
  %i.dy = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i152 = icmp eq ptr %i.dy, null
  br i1 %.not.i152, label %__drm_to_dev.exit153, label %bb.u

bb.u:                                             ; preds = %__drm_to_dev.exit151
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  br label %__drm_to_dev.exit153

__drm_to_dev.exit153:                             ; preds = %__drm_to_dev.exit151, %bb.u
  %i.eb = phi ptr [ %i.ea, %bb.u ], [ null, %__drm_to_dev.exit151 ] ; 2 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 80
  %i.ed = load ptr, ptr %i.ec, align 8            ; 2 uses
  %.not.i154 = icmp eq ptr %i.ed, null
  br i1 %.not.i154, label %bb.v, label %dev_name.exit157

bb.v:                                             ; preds = %__drm_to_dev.exit153
  %.val.i156 = load ptr, ptr %i.eb, align 8
  br label %dev_name.exit157

dev_name.exit157:                                 ; preds = %__drm_to_dev.exit153, %bb.v
  %.0.i155 = phi ptr [ %.val.i156, %bb.v ], [ %i.ed, %__drm_to_dev.exit153 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ds, ptr noundef %i.dx, ptr noundef %.0.i155, ptr noundef nonnull @.str.4) #6
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !46
  br label %bb.w

bb.w:                                             ; preds = %dev_name.exit157, %bb.q
  %i.ee = or i64 %i.dl, %.2171
  br label %bb.x

bb.x:                                             ; preds = %init_power_well_domains.exit, %bb.w
  %.3 = phi i64 [ %i.ee, %bb.w ], [ %.2171, %init_power_well_domains.exit ] ; 2 uses
  %i.ef = getelementptr i8, ptr %.1102170, i64 24 ; 2 uses
  %i.eg = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = ptrtoint ptr %i.ef to i64               ; 2 uses
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = sdiv exact i64 %i.ek, 24
  %i.em = getelementptr i8, ptr %i.eg, i64 8
  %i.en = load i8, ptr %i.em, align 8
  %i.eo = zext i8 %i.en to i64
  %i.ep = icmp slt i64 %i.el, %i.eo
  br i1 %i.ep, label %.lr.ph173, label %._crit_edge174.loopexit, !llvm.loop !34

._crit_edge174.loopexit:                          ; preds = %bb.x
  %.pre195 = load ptr, ptr %.198186, align 8
  %.pre196 = load i8, ptr %i.al, align 8
  br label %._crit_edge174

._crit_edge174:                                   ; preds = %._crit_edge174.loopexit, %.lr.ph181
  %i.eq = phi i8 [ %i.ao, %.lr.ph181 ], [ %.pre196, %._crit_edge174.loopexit ] ; 2 uses
  %i.er = phi ptr [ %i.ap, %.lr.ph181 ], [ %.pre195, %._crit_edge174.loopexit ] ; 2 uses
  %.2108.lcssa = phi i32 [ %.1107177, %.lr.ph181 ], [ %i.cq, %._crit_edge174.loopexit ] ; 2 uses
  %.2.lcssa = phi i64 [ %.1179, %.lr.ph181 ], [ %.3, %._crit_edge174.loopexit ] ; 2 uses
  %i.es = getelementptr i8, ptr %.1100178, i64 24 ; 2 uses
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.er to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = sdiv exact i64 %i.ev, 24
  %i.ex = zext i8 %i.eq to i64
  %i.ey = icmp slt i64 %i.ew, %i.ex
  br i1 %i.ey, label %.lr.ph181, label %._crit_edge182, !llvm.loop !35

._crit_edge182:                                   ; preds = %._crit_edge174, %.lr.ph188
  %.1107.lcssa = phi i32 [ %.0106185, %.lr.ph188 ], [ %.2108.lcssa, %._crit_edge174 ]
  %.1.lcssa = phi i64 [ %.096187, %.lr.ph188 ], [ %.2.lcssa, %._crit_edge174 ]
  %i.ez = getelementptr i8, ptr %.198186, i64 16  ; 2 uses
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = sub i64 %i.fa, %i.a
  %i.fc = ashr exact i64 %i.fb, 4
  %i.fd = icmp slt i64 %i.fc, %i.b
end_hunk_0
