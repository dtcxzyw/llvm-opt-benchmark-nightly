Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/container-legacy?download=true
inline.NumInlined: 83
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@vfio_legacy_pci_hot_reset:bb.a
bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.57, ptr noundef %i.d, ptr noundef nonnull %i.e) #13
  br label %trace_vfio_pci_hot_reset.exit

trace_vfio_pci_hot_reset.exit:                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  br i1 %1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %trace_vfio_pci_hot_reset.exit
  tail call void @vfio_pci_pre_reset(ptr noundef nonnull %i.b) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %trace_vfio_pci_hot_reset.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 0, ptr %i.j, align 2
  %i.k = call i32 @vfio_pci_get_pci_hot_reset_info(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #13 ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.g, label %.loopexit166

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 4 uses
  %i.n = load ptr, ptr %i.c, align 8
  %i.o = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i142 = icmp eq i32 %i.o, 0
  br i1 %.not.i142, label %trace_vfio_pci_hot_reset_has_dep_devices.exit, label %bb.h, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.p = load i16, ptr @_TRACE_VFIO_PCI_HOT_RESET_HAS_DEP_DEVICES_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.p, 0
  br i1 %.not1.i, label %trace_vfio_pci_hot_reset_has_dep_devices.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load i32, ptr @qemu_loglevel, align 4
  %i.r = and i32 %i.q, 32768
  %.not2.i143 = icmp eq i32 %i.r, 0
  br i1 %.not2.i143, label %trace_vfio_pci_hot_reset_has_dep_devices.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.58, ptr noundef %i.n) #13
  %.pre = load ptr, ptr %i.a, align 8
  br label %trace_vfio_pci_hot_reset_has_dep_devices.exit

trace_vfio_pci_hot_reset_has_dep_devices.exit:    ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %i.s = phi ptr [ %i.l, %bb.g ], [ %i.l, %bb.h ], [ %i.l, %bb.i ], [ %.pre, %bb.j ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 4
  %.not223 = icmp eq i32 %i.u, 0
  br i1 %.not223, label %._crit_edge, label %.lr.ph195.a

.lr.ph195.a:                                      ; preds = %trace_vfio_pci_hot_reset_has_dep_devices.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph195.a, %.loopexit172
  %.0114194 = phi i1 [ false, %.lr.ph195.a ], [ %.2116.ph, %.loopexit172 ] ; 3 uses
  %.0119193 = phi i32 [ 0, %.lr.ph195.a ], [ %i.bq, %.loopexit172 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.y = sext i32 %.0119193 to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.y ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i16, ptr %i.aa, align 4
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  store i32 %i.ac, ptr %2, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  %i.ae = load i8, ptr %i.ad, align 2
  %i.af = zext i8 %i.ae to i32                    ; 2 uses
  store i32 %i.af, ptr %i.v, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 7 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = lshr i8 %i.ah, 3
  %i.aj = zext nneg i8 %i.ai to i32               ; 2 uses
  store i32 %i.aj, ptr %i.w, align 4
  %i.ak = load i8, ptr %i.ag, align 1
  %i.al = and i8 %i.ak, 7
  %i.am = zext nneg i8 %i.al to i32               ; 2 uses
  store i32 %i.am, ptr %i.x, align 4
  %i.an = load i32, ptr %i.z, align 4
  %i.ao = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i144 = icmp eq i32 %i.ao, 0
  br i1 %.not.i144, label %trace_vfio_pci_hot_reset_dep_devices.exit, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.ap = load i16, ptr @_TRACE_VFIO_PCI_HOT_RESET_DEP_DEVICES_DSTATE, align 2
  %.not5.i = icmp eq i16 %i.ap, 0
  br i1 %.not5.i, label %trace_vfio_pci_hot_reset_dep_devices.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = load i32, ptr @qemu_loglevel, align 4
  %i.ar = and i32 %i.aq, 32768
  %.not6.i = icmp eq i32 %i.ar, 0
  br i1 %.not6.i, label %trace_vfio_pci_hot_reset_dep_devices.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.59, i32 noundef %i.ac, i32 noundef %i.af, i32 noundef %i.aj, i32 noundef range(i32 0, 8) %i.am, i32 noundef %i.an) #13
  br label %trace_vfio_pci_hot_reset_dep_devices.exit

trace_vfio_pci_hot_reset_dep_devices.exit:        ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  %i.as = load ptr, ptr %i.c, align 8
  %i.at = call zeroext i1 @vfio_pci_host_match(ptr noundef nonnull %2, ptr noundef %i.as) #13
  br i1 %i.at, label %.loopexit172, label %.preheader173

.preheader173:                                    ; preds = %trace_vfio_pci_hot_reset_dep_devices.exit
  %.0110185 = load ptr, ptr @vfio_group_list, align 8 ; 2 uses
  %.not134186 = icmp eq ptr %.0110185, null
  br i1 %.not134186, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader173
  %i.au = load i32, ptr %i.z, align 4
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.p
  %.0110187 = phi ptr [ %.0110185, %.lr.ph ], [ %.0110, %bb.p ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0110187, i64 4
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp eq i32 %i.aw, %i.au
  br i1 %i.ax, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %.0110187, i64 24
  %.0110 = load ptr, ptr %i.ay, align 8           ; 2 uses
  %.not134 = icmp eq ptr %.0110, null
  br i1 %.not134, label %.critedge, label %bb.o, !llvm.loop !20

.critedge:                                        ; preds = %.preheader173, %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.ba = load i8, ptr %i.az, align 16, !range !9, !noundef !10
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %.thread154, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.bc = load ptr, ptr %i.c, align 8
  %i.bd = load i32, ptr %i.z, align 4
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.55, ptr noundef %i.bc, i32 noundef %i.bd) #13
  br label %.thread154

bb.r:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %.0110187, i64 16
  %.0113189 = load ptr, ptr %i.be, align 8        ; 2 uses
  %.not135190 = icmp eq ptr %.0113189, null
  br i1 %.not135190, label %.loopexit172, label %.lr.ph192

.lr.ph192:                                        ; preds = %bb.r, %bb.w
  %.0113191 = phi ptr [ %.0113, %bb.w ], [ %.0113189, %bb.r ] ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0113191, i64 80
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load i8, ptr %i.bh, align 8, !range !9, !noundef !10
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.s, label %bb.w

bb.s:                                             ; preds = %.lr.ph192
  %i.bk = call ptr @vfio_pci_from_vfio_device(ptr noundef nonnull %.0113191) #13
  %.not136 = icmp eq ptr %i.bk, null
  br i1 %.not136, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %.0113191, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call zeroext i1 @vfio_pci_host_match(ptr noundef nonnull %2, ptr noundef %i.bm) #13
  br i1 %i.bn, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  br i1 %1, label %.thread163, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = getelementptr inbounds i8, ptr %.0113191, i64 -2768
  call void @vfio_pci_pre_reset(ptr noundef nonnull %i.bo) #13
  %i.bp = getelementptr inbounds nuw i8, ptr %.0113191, i64 98
  store i8 0, ptr %i.bp, align 2
  br label %.loopexit172

bb.w:                                             ; preds = %bb.t, %.lr.ph192, %bb.s
  %.0113 = load ptr, ptr %.0113191, align 8       ; 2 uses
  %.not135 = icmp eq ptr %.0113, null
  br i1 %.not135, label %.loopexit172, label %.lr.ph192, !llvm.loop !21

.thread154:                                       ; preds = %bb.q, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %trace_vfio_pci_hot_reset_result.exit

.thread163:                                       ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.as

.loopexit172:                                     ; preds = %bb.w, %bb.r, %trace_vfio_pci_hot_reset_dep_devices.exit, %bb.v
  %.2116.ph = phi i1 [ %.0114194, %trace_vfio_pci_hot_reset_dep_devices.exit ], [ true, %bb.v ], [ %.0114194, %bb.r ], [ %.0114194, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.bq = add nuw i32 %.0119193, 1                ; 2 uses
  %i.br = load ptr, ptr %i.a, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i32, ptr %i.bs, align 4            ; 2 uses
  %i.bu = icmp ult i32 %i.bq, %i.bt
  br i1 %i.bu, label %bb.k, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %.loopexit172, %trace_vfio_pci_hot_reset_has_dep_devices.exit
  %.0114.lcssa = phi i1 [ false, %trace_vfio_pci_hot_reset_has_dep_devices.exit ], [ %.2116.ph, %.loopexit172 ]
  %.lcssa178 = phi i32 [ 0, %trace_vfio_pci_hot_reset_has_dep_devices.exit ], [ %i.bt, %.loopexit172 ] ; 2 uses
  %or.cond = select i1 %1, i1 true, i1 %.0114.lcssa
  br i1 %or.cond, label %.preheader171, label %.loopexit166

.preheader171:                                    ; preds = %._crit_edge
  %.1200 = load ptr, ptr @vfio_group_list, align 8 ; 2 uses
  %.not130201 = icmp eq ptr %.1200, null
  %.not224 = icmp eq i32 %.lcssa178, 0
  %or.cond258 = or i1 %.not130201, %.not224
  br i1 %or.cond258, label %._crit_edge204, label %.preheader169.us

.preheader169.us:                                 ; preds = %.preheader171, %..loopexit170_crit_edge.us
  %.1203.us = phi ptr [ %.1.us, %..loopexit170_crit_edge.us ], [ %.1200, %.preheader171 ] ; 2 uses
  %.0117202.us = phi i32 [ %.1118.us, %..loopexit170_crit_edge.us ], [ 0, %.preheader171 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.1203.us, i64 4
  %i.bw = load i32, ptr %i.bv, align 4
  br label %bb.y

bb.x:                                             ; preds = %bb.y
  %i.bx = add nuw i32 %.1120198.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.bx, %.lcssa178
  br i1 %exitcond.not, label %..loopexit170_crit_edge.us, label %bb.y, !llvm.loop !23

bb.y:                                             ; preds = %.preheader169.us, %bb.x
  %.1120198.us = phi i32 [ 0, %.preheader169.us ], [ %i.bx, %bb.x ] ; 2 uses
  %i.by = sext i32 %.1120198.us to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = icmp eq i32 %i.bw, %i.ca
  br i1 %i.cb, label %bb.z, label %bb.x

bb.z:                                             ; preds = %bb.y
  %i.cc = add i32 %.0117202.us, 1
  br label %..loopexit170_crit_edge.us

..loopexit170_crit_edge.us:                       ; preds = %bb.x, %bb.z
  %.1118.us = phi i32 [ %i.cc, %bb.z ], [ %.0117202.us, %bb.x ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.1203.us, i64 24
  %.1.us = load ptr, ptr %i.cd, align 8           ; 2 uses
  %.not130.us = icmp eq ptr %.1.us, null
  br i1 %.not130.us, label %._crit_edge204.loopexit230, label %.preheader169.us, !llvm.loop !24

._crit_edge204.loopexit230:                       ; preds = %..loopexit170_crit_edge.us
  %i.ce = sext i32 %.1118.us to i64
  %i.cf = shl nsw i64 %i.ce, 2
  %i.cg = add nsw i64 %i.cf, 12
  br label %._crit_edge204

._crit_edge204:                                   ; preds = %._crit_edge204.loopexit230, %.preheader171
  %.0117.lcssa = phi i64 [ 12, %.preheader171 ], [ %i.cg, %._crit_edge204.loopexit230 ] ; 2 uses
  %i.ch = call noalias ptr @g_malloc0(i64 noundef %.0117.lcssa) #14 ; 5 uses
  %i.ci = trunc i64 %.0117.lcssa to i32
  store i32 %i.ci, ptr %i.ch, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %.2208 = load ptr, ptr @vfio_group_list, align 8 ; 2 uses
  %.not131209 = icmp eq ptr %.2208, null
  br i1 %.not131209, label %._crit_edge211, label %.preheader167.lr.ph

.preheader167.lr.ph:                              ; preds = %._crit_edge204
  %i.ck = load ptr, ptr %i.a, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.cn = load i32, ptr %i.cl, align 4            ; 2 uses
  %.not225 = icmp eq i32 %i.cn, 0
  br i1 %.not225, label %._crit_edge211, label %.lr.ph207

.lr.ph207:                                        ; preds = %.preheader167.lr.ph, %.loopexit168
  %.2210 = phi ptr [ %.2, %.loopexit168 ], [ %.2208, %.preheader167.lr.ph ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.2210, i64 4
  %i.cp = load i32, ptr %i.co, align 4
  br label %bb.ab

bb.aa:                                            ; preds = %bb.ab
  %i.cq = add nuw i32 %.2121206, 1                ; 2 uses
  %exitcond240.not = icmp eq i32 %i.cq, %i.cn
  br i1 %exitcond240.not, label %.loopexit168, label %bb.ab, !llvm.loop !25

bb.ab:                                            ; preds = %.lr.ph207, %bb.aa
  %.2121206 = phi i32 [ 0, %.lr.ph207 ], [ %i.cq, %bb.aa ] ; 2 uses
  %i.cr = sext i32 %.2121206 to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = icmp eq i32 %i.cp, %i.ct
  br i1 %i.cu, label %bb.ac, label %bb.aa

bb.ac:                                            ; preds = %bb.ab
  %i.cv = load i32, ptr %.2210, align 8
  %i.cw = load i32, ptr %i.cm, align 4            ; 2 uses
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cm, align 4
  %i.cy = zext i32 %i.cw to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.cy
  store i32 %i.cv, ptr %i.cz, align 4
  br label %.loopexit168

.loopexit168:                                     ; preds = %bb.aa, %bb.ac
  %i.da = getelementptr inbounds nuw i8, ptr %.2210, i64 24
  %.2 = load ptr, ptr %i.da, align 8              ; 2 uses
  %.not131 = icmp eq ptr %.2, null
  br i1 %.not131, label %._crit_edge211, label %.lr.ph207, !llvm.loop !26

._crit_edge211:                                   ; preds = %.loopexit168, %.preheader167.lr.ph, %._crit_edge204
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dc = load i32, ptr %i.db, align 8
  %i.dd = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.dc, i64 noundef 15217, ptr noundef nonnull %i.ch) #13
  call void @g_free(ptr noundef nonnull %i.ch) #13
  %.not132 = icmp eq i32 %i.dd, 0
  br i1 %.not132, label %.thread158, label %bb.ad

.thread158:                                       ; preds = %._crit_edge211
  %i.de = load ptr, ptr %i.c, align 8
  br label %bb.af

bb.ad:                                            ; preds = %._crit_edge211
  %i.df = tail call ptr @__errno_location() #15
  %i.dg = load i32, ptr %i.df, align 4            ; 3 uses
  %i.dh = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not133 = icmp eq i32 %i.dg, 0
  br i1 %.not133, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.di = sub i32 0, %i.dg
  %i.dj = call ptr @strerror(i32 noundef %i.dg) #13
  br label %bb.af

bb.af:                                            ; preds = %.thread158, %bb.ad, %bb.ae
  %i.dk = phi ptr [ %i.dh, %bb.ae ], [ %i.dh, %bb.ad ], [ %i.de, %.thread158 ]
  %.2125161 = phi i32 [ %i.di, %bb.ae ], [ 0, %bb.ad ], [ 0, %.thread158 ] ; 4 uses
  %i.dl = phi ptr [ %i.dj, %bb.ae ], [ @.str.56, %bb.ad ], [ @.str.56, %.thread158 ]
  %i.dm = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i145 = icmp eq i32 %i.dm, 0
  br i1 %.not.i145, label %trace_vfio_pci_hot_reset_result.exit, label %bb.ag, !prof !12

bb.ag:                                            ; preds = %bb.af
  %i.dn = load i16, ptr @_TRACE_VFIO_PCI_HOT_RESET_RESULT_DSTATE, align 2
  %.not2.i146 = icmp eq i16 %i.dn, 0
  br i1 %.not2.i146, label %trace_vfio_pci_hot_reset_result.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.do = load i32, ptr @qemu_loglevel, align 4
  %i.dp = and i32 %i.do, 32768
  %.not3.i147 = icmp eq i32 %i.dp, 0
  br i1 %.not3.i147, label %trace_vfio_pci_hot_reset_result.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.60, ptr noundef %i.dk, ptr noundef %i.dl) #13
  br label %trace_vfio_pci_hot_reset_result.exit

trace_vfio_pci_hot_reset_result.exit:             ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %.thread154
  %.3126 = phi i32 [ -1, %.thread154 ], [ %.2125161, %bb.af ], [ %.2125161, %bb.ag ], [ %.2125161, %bb.ah ], [ %.2125161, %bb.ai ] ; 3 uses
  %i.dq = load ptr, ptr %i.a, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load i32, ptr %i.dr, align 4
  %.not227 = icmp eq i32 %i.ds, 0
  br i1 %.not227, label %.loopexit166, label %.lr.ph222

.lr.ph222:                                        ; preds = %trace_vfio_pci_hot_reset_result.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph222, %.loopexit
  %.3122221 = phi i32 [ 0, %.lr.ph222 ], [ %i.fc, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.dw = sext i32 %.3122221 to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.dw ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.dz = load i16, ptr %i.dy, align 4
  %i.ea = zext i16 %i.dz to i32
  store i32 %i.ea, ptr %3, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 6
  %i.ec = load i8, ptr %i.eb, align 2
  %i.ed = zext i8 %i.ec to i32
  store i32 %i.ed, ptr %i.dt, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 7
  %i.ef = load i8, ptr %i.ee, align 1             ; 2 uses
  %i.eg = lshr i8 %i.ef, 3
  %i.eh = zext nneg i8 %i.eg to i32
  store i32 %i.eh, ptr %i.du, align 4
  %i.ei = and i8 %i.ef, 7
  %i.ej = zext nneg i8 %i.ei to i32
  store i32 %i.ej, ptr %i.dv, align 4
  %i.ek = load ptr, ptr %i.c, align 8
  %i.el = call zeroext i1 @vfio_pci_host_match(ptr noundef nonnull %3, ptr noundef %i.ek) #13
  br i1 %i.el, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.aj
  %.3212 = load ptr, ptr @vfio_group_list, align 8 ; 2 uses
  %.not137213 = icmp eq ptr %.3212, null
  br i1 %.not137213, label %.critedge141, label %.lr.ph215

.lr.ph215:                                        ; preds = %.preheader
  %i.em = load i32, ptr %i.dx, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph215, %bb.al
  %.3214 = phi ptr [ %.3212, %.lr.ph215 ], [ %.3, %bb.al ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.3214, i64 4
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = icmp eq i32 %i.eo, %i.em
  br i1 %i.ep, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eq = getelementptr inbounds nuw i8, ptr %.3214, i64 24
  %.3 = load ptr, ptr %i.eq, align 8              ; 2 uses
  %.not137 = icmp eq ptr %.3, null
  br i1 %.not137, label %.critedge141, label %bb.ak, !llvm.loop !27

bb.am:                                            ; preds = %bb.ak
  %i.er = getelementptr inbounds nuw i8, ptr %.3214, i64 16
  %.0109216 = load ptr, ptr %i.er, align 8        ; 2 uses
  %.not138217 = icmp eq ptr %.0109216, null
  br i1 %.not138217, label %.loopexit, label %.lr.ph220

.lr.ph220:                                        ; preds = %bb.am, %bb.aq
  %.0109218 = phi ptr [ %.0109, %bb.aq ], [ %.0109216, %bb.am ] ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.0109218, i64 80
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  %i.ev = load i8, ptr %i.eu, align 8, !range !9, !noundef !10
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %.lr.ph220
  %i.ex = call ptr @vfio_pci_from_vfio_device(ptr noundef nonnull %.0109218) #13
  %.not139 = icmp eq ptr %i.ex, null
  br i1 %.not139, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ey = getelementptr inbounds nuw i8, ptr %.0109218, i64 72
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = call zeroext i1 @vfio_pci_host_match(ptr noundef nonnull %3, ptr noundef %i.ez) #13
  br i1 %i.fa, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fb = getelementptr inbounds i8, ptr %.0109218, i64 -2768
  call void @vfio_pci_post_reset(ptr noundef nonnull %i.fb) #13
  br label %.loopexit

bb.aq:                                            ; preds = %bb.ao, %.lr.ph220, %bb.an
  %.0109 = load ptr, ptr %.0109218, align 8       ; 2 uses
  %.not138 = icmp eq ptr %.0109, null
  br i1 %.not138, label %.loopexit, label %.lr.ph220, !llvm.loop !28

.critedge141:                                     ; preds = %.preheader, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %.loopexit166

.loopexit:                                        ; preds = %bb.aq, %bb.am, %bb.aj, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.fc = add nuw i32 %.3122221, 1                ; 2 uses
  %i.fd = load ptr, ptr %i.a, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load i32, ptr %i.fe, align 4
  %i.fg = icmp ult i32 %i.fc, %i.ff
  br i1 %i.fg, label %bb.aj, label %.loopexit166, !llvm.loop !29

.loopexit166:                                     ; preds = %.loopexit, %trace_vfio_pci_hot_reset_result.exit, %.critedge141, %._crit_edge, %bb.f
  %.4 = phi i32 [ %i.k, %bb.f ], [ %.3126, %.critedge141 ], [ -22, %._crit_edge ], [ %.3126, %trace_vfio_pci_hot_reset_result.exit ], [ %.3126, %.loopexit ] ; 2 uses
  br i1 %1, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.loopexit166
  call void @vfio_pci_post_reset(ptr noundef nonnull %i.b) #13
  br label %bb.as

bb.as:                                            ; preds = %.thread163, %bb.ar, %.loopexit166
  %.4165 = phi i32 [ -22, %.thread163 ], [ %.4, %bb.ar ], [ %.4, %.loopexit166 ]
  %i.fh = load ptr, ptr %i.a, align 8
  call void @g_free(ptr noundef %i.fh) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.4165
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @error_setg_errno_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare zeroext i1 @vfio_get_info_dma_avail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #3

declare void @g_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

declare ptr @g_realloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @getpagesize() local_unnamed_addr #5

declare ptr @vfio_get_iommu_type1_info_cap(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #4

declare ptr @range_list_insert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @vfio_legacy_dma_unmap_one(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 0, 3) %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.VFIOBitmap, align 8         ; 9 uses
  %6 = alloca %struct.vfio_iommu_type1_dma_unmap, align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6, i32 noundef 59, ptr noundef nonnull @__func__.VFIO_IOMMU) #13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store i32 24, ptr %6, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %3, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8
  %i.f = tail call zeroext i1 @cpr_is_incoming() #13
  br i1 %i.f, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 140, ptr noundef nonnull @__func__.vfio_legacy_dma_unmap_one, ptr noundef nonnull @.str.14) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call zeroext i1 @vfio_container_dirty_tracking_is_started(ptr noundef %i.b) #13
  br i1 %i.g, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.h = tail call zeroext i1 @vfio_container_devices_dirty_tracking_is_supported(ptr noundef %i.b) #13
  br i1 %i.h, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 284
  %i.j = load i8, ptr %i.i, align 4, !range !9, !noundef !10
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6, i32 noundef 59, ptr noundef nonnull @__func__.VFIO_IOMMU) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !annotation !11
  %i.m = call i32 @vfio_bitmap_alloc(ptr noundef nonnull %5, i64 noundef %2) #13 ; 2 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.h, label %vfio_legacy_dma_unmap_get_dirty_bitmap.exit

bb.h:                                             ; preds = %bb.g
  %i.n = call noalias dereferenceable_or_null(48) ptr @g_malloc0(i64 noundef 48) #14 ; 9 uses
  store i32 48, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %2, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = or i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.u = tail call i32 @getpagesize() #15
  %i.v = sext i32 %i.u to i64
  store i64 %i.v, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 %i.x, ptr %i.y, align 8
  %i.z = load ptr, ptr %5, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = icmp ugt i64 %i.x, %i.ac
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.15, i64 noundef %i.x) #13
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.af, i64 noundef 15218, ptr noundef nonnull %i.n) #13 ; 2 uses
  %.not25.i = icmp eq i32 %i.ag, 0
  br i1 %.not25.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %5, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = call i64 @physical_memory_set_dirty_lebitmap(ptr noundef %i.ah, i64 noundef %i.aj, i64 noundef %i.al) #13 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.16) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  %.0.i = phi i32 [ -7, %bb.i ], [ %i.ag, %bb.l ], [ 0, %bb.k ]
  call void @g_free(ptr noundef nonnull %i.n) #13
  %i.an = load ptr, ptr %5, align 8
  call void @g_free(ptr noundef %i.an) #13
  br label %vfio_legacy_dma_unmap_get_dirty_bitmap.exit

vfio_legacy_dma_unmap_get_dirty_bitmap.exit:      ; preds = %bb.g, %bb.m
  %.021.i = phi i32 [ %.0.i, %bb.m ], [ %i.m, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.s

bb.n:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.c
  %.023 = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.f ], [ true, %bb.e ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.ap, i64 noundef 15218, ptr noundef nonnull %6) #13
  %.not26 = icmp eq i32 %i.aq, 0
  br i1 %.not26, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = tail call ptr @__errno_location() #15
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = sub i32 0, %i.as
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  br i1 %.023, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = call i32 @vfio_container_query_dirty_bitmap(ptr noundef %i.b, i64 noundef %1, i64 noundef %2, i64 noundef 0, i64 noundef %i.av, ptr noundef nonnull %i.a) #13 ; 2 uses
  %.not27 = icmp eq i32 %i.aw, 0
  br i1 %.not27, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = load ptr, ptr %i.a, align 8
  call void @error_report_err(ptr noundef %i.ax) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r, %bb.o, %vfio_legacy_dma_unmap_get_dirty_bitmap.exit
  %.0 = phi i32 [ %i.at, %bb.o ], [ %i.aw, %bb.r ], [ %.021.i, %vfio_legacy_dma_unmap_get_dirty_bitmap.exit ], [ 0, %bb.q ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  ret i32 %.0
}

declare zeroext i1 @cpr_is_incoming() local_unnamed_addr #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare zeroext i1 @vfio_container_dirty_tracking_is_started(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @vfio_container_devices_dirty_tracking_is_supported(ptr noundef) local_unnamed_addr #1

declare i32 @vfio_container_query_dirty_bitmap(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1
end_hunk_0
