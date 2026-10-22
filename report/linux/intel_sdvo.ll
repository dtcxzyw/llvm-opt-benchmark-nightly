Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_sdvo?download=true
inline.NumInlined: 355
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@intel_sdvo_read_response:bb.a
  %i.cy = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not.i75 = icmp eq ptr %i.cy, null
  br i1 %.not.i75, label %__drm_to_dev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cz = getelementptr i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.w, %bb.x
  %i.db = phi ptr [ %i.da, %bb.x ], [ null, %bb.w ]
  %i.dc = call ptr @dev_driver_string(ptr noundef %i.db) #15 ; 0 uses
  %i.dd = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.20, ptr @.str.7, i32 607, i32 2321, i64 16) #16, !srcloc !57
  %i.de = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not.i80 = icmp eq ptr %i.de, null
  br i1 %.not.i80, label %__drm_to_dev.exit81, label %bb.y

bb.y:                                             ; preds = %__drm_to_dev.exit
  %i.df = getelementptr i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  br label %__drm_to_dev.exit81

__drm_to_dev.exit81:                              ; preds = %__drm_to_dev.exit, %bb.y
  %i.dh = phi ptr [ %i.dg, %bb.y ], [ null, %__drm_to_dev.exit ]
  %i.di = call ptr @dev_driver_string(ptr noundef %i.dh) #15
  %i.dj = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not.i82 = icmp eq ptr %i.dj, null
  br i1 %.not.i82, label %__drm_to_dev.exit83, label %bb.z

bb.z:                                             ; preds = %__drm_to_dev.exit81
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  br label %__drm_to_dev.exit83

__drm_to_dev.exit83:                              ; preds = %__drm_to_dev.exit81, %bb.z
  %i.dm = phi ptr [ %i.dl, %bb.z ], [ null, %__drm_to_dev.exit81 ] ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 80
  %i.do = load ptr, ptr %i.dn, align 8            ; 2 uses
  %.not.i84 = icmp eq ptr %i.do, null
  br i1 %.not.i84, label %bb.aa, label %dev_name.exit87

bb.aa:                                            ; preds = %__drm_to_dev.exit83
  %.val.i86 = load ptr, ptr %i.dm, align 8
  br label %dev_name.exit87

dev_name.exit87:                                  ; preds = %__drm_to_dev.exit83, %bb.aa
  %.0.i85 = phi ptr [ %.val.i86, %bb.aa ], [ %i.do, %__drm_to_dev.exit83 ]
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.dd, ptr noundef %i.di, ptr noundef %.0.i85, ptr noundef @.str.21) #15
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !58
  br label %bb.ab

bb.ab:                                            ; preds = %dev_name.exit87, %._crit_edge
  %i.dp = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not.i88 = icmp eq ptr %i.dp, null
  br i1 %.not.i88, label %__drm_to_dev.exit89, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dq = getelementptr i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  br label %__drm_to_dev.exit89

__drm_to_dev.exit89:                              ; preds = %bb.ab, %bb.ac
  %i.ds = phi ptr [ %i.dr, %bb.ac ], [ null, %bb.ab ]
  %i.dt = getelementptr i8, ptr %0, i64 156
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = icmp eq i32 %i.du, 1
  %i.dw = select i1 %i.dv, ptr @.str.2, ptr @.str.3
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ds, i32 noundef 2, ptr noundef @.str.131, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.e) #15
  br label %bb.af

bb.ad:                                            ; preds = %intel_sdvo_read_byte.exit74, %intel_sdvo_read_byte.exit70.thread, %intel_sdvo_read_byte.exit.thread, %bb.p
  %i.dx = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not.i90 = icmp eq ptr %i.dx, null
  br i1 %.not.i90, label %__drm_to_dev.exit91, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dy = getelementptr i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  br label %__drm_to_dev.exit91

__drm_to_dev.exit91:                              ; preds = %bb.ad, %bb.ae
  %i.ea = phi ptr [ %i.dz, %bb.ae ], [ null, %bb.ad ]
  %i.eb = getelementptr i8, ptr %0, i64 156
  %i.ec = load i32, ptr %i.eb, align 4
  %i.ed = icmp eq i32 %i.ec, 1
  %i.ee = select i1 %i.ed, ptr @.str.2, ptr @.str.3
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ea, i32 noundef 2, ptr noundef @.str.132, ptr noundef nonnull %i.ee, ptr noundef nonnull %i.e) #15
  br label %bb.af

bb.af:                                            ; preds = %__drm_to_dev.exit91, %__drm_to_dev.exit89
  %.0 = phi i1 [ false, %__drm_to_dev.exit91 ], [ true, %__drm_to_dev.exit89 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef zeroext i1 @__intel_sdvo_write_cmd(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, 9) %3, i1 noundef zeroext %4) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 8 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_kzalloc_noprof.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__drm_to_display(ptr noundef nonnull %i.c) #15
  br label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i8 0, ptr %i.b, align 1, !annotation !13
  %i.f = shl nuw nsw i32 %3, 1
  %i.g = add nuw nsw i32 %i.f, 2
  %i.h = zext nneg i32 %i.g to i64
  %i.i = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 2, 41713) %i.h, i32 noundef 3520) #20 ; 21 uses
  %.not100 = icmp eq ptr %i.i, null
  br i1 %.not100, label %bb.ah, label %_kzalloc_noprof.exit108

_kzalloc_noprof.exit108:                          ; preds = %_kzalloc_noprof.exit
  %i.j = shl nuw nsw i32 %3, 4
  %i.k = add nuw nsw i32 %i.j, 48
  %i.l = zext nneg i32 %i.k to i64
  %i.m = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 2, 41713) %i.l, i32 noundef 3520) #20 ; 39 uses
  %.not101 = icmp eq ptr %i.m, null
  br i1 %.not101, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_kzalloc_noprof.exit108
  tail call void @kfree(ptr noundef nonnull %i.i) #15
  br label %bb.ah

bb.d:                                             ; preds = %_kzalloc_noprof.exit108
  %i.n = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @__drm_to_display(ptr noundef nonnull %i.n) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = phi ptr [ %i.o, %bb.e ], [ null, %bb.d ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !annotation !13
  %.not87.i = icmp eq i32 %3, 0                   ; 2 uses
  br i1 %.not87.i, label %.lr.ph85.i.preheader, label %.lr.ph.preheader.i

.lr.ph85.i.preheader:                             ; preds = %.preheader78.i, %bb.f
  %.15983.i.ph = phi i32 [ 0, %bb.f ], [ %i.aa, %.preheader78.i ]
  br label %.lr.ph85.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %wide.trip.count.i = zext nneg i32 %3 to i64
  br label %.lr.ph.i

.preheader78.i:                                   ; preds = %.lr.ph.i
  %i.q = icmp samesign ult i32 %3, 8
  br i1 %i.q, label %.lr.ph85.i.preheader, label %.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.05880.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.aa, %.lr.ph.i ] ; 3 uses
  %i.r = sext i32 %.05880.i to i64
  %i.s = getelementptr i8, ptr %i.a, i64 %i.r
  %i.t = sub i32 64, %.05880.i
  %i.u = tail call i32 @llvm.smax.i32(i32 %i.t, i32 0)
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr i8, ptr %2, i64 %indvars.iv.i
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i32
  %i.z = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.s, i64 noundef %i.v, ptr noundef @.str.16, i32 noundef %i.y) #15
  %i.aa = add i32 %i.z, %.05880.i                 ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader78.i, label %.lr.ph.i, !llvm.loop !59

.preheader.i:                                     ; preds = %.lr.ph85.i, %.preheader78.i
  %.159.lcssa.i = phi i32 [ %i.aa, %.preheader78.i ], [ %i.ah, %.lr.ph85.i ] ; 5 uses
  br label %bb.i

.lr.ph85.i:                                       ; preds = %.lr.ph85.i.preheader, %.lr.ph85.i
  %.184.i = phi i32 [ %i.ai, %.lr.ph85.i ], [ %3, %.lr.ph85.i.preheader ]
  %.15983.i = phi i32 [ %i.ah, %.lr.ph85.i ], [ %.15983.i.ph, %.lr.ph85.i.preheader ] ; 3 uses
  %i.ab = sext i32 %.15983.i to i64
  %i.ac = getelementptr i8, ptr %i.a, i64 %i.ab
  %i.ad = sub i32 64, %.15983.i
  %i.ae = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.ac, i64 noundef %i.af, ptr noundef @.str.17) #15
  %i.ah = add i32 %i.ag, %.15983.i                ; 2 uses
  %i.ai = add nuw nsw i32 %.184.i, 1              ; 2 uses
  %exitcond92.not.i = icmp eq i32 %i.ai, 8
  br i1 %exitcond92.not.i, label %.preheader.i, label %.lr.ph85.i, !llvm.loop !60

bb.g:                                             ; preds = %bb.i
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aj = getelementptr [9 x i8], ptr @sdvo_cmd_names, i64 %indvars.iv.next.i.i
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = icmp eq i8 %1, %i.ak
  br i1 %i.al, label %sdvo_cmd_name.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 106
  br i1 %exitcond.not.i.i.1, label %sdvo_cmd_name.exit.thread.i, label %bb.i, !llvm.loop !61

bb.i:                                             ; preds = %bb.h, %.preheader.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i.i.1, %bb.h ] ; 4 uses
  %i.am = getelementptr [9 x i8], ptr @sdvo_cmd_names, i64 %indvars.iv.i.i
  %i.an = load i8, ptr %i.am, align 2
  %i.ao = icmp eq i8 %1, %i.an
  br i1 %i.ao, label %sdvo_cmd_name.exit.i, label %bb.g

sdvo_cmd_name.exit.i:                             ; preds = %bb.g, %bb.i
  %indvars.iv.i.i.lcssa = phi i64 [ %indvars.iv.i.i, %bb.i ], [ %indvars.iv.next.i.i, %bb.g ]
  %5 = getelementptr [9 x i8], ptr @sdvo_cmd_names, i64 %indvars.iv.i.i.lcssa
  %6 = getelementptr i8, ptr %5, i64 1
  %7 = load ptr, ptr %6, align 1                  ; 2 uses
  %.not62.i = icmp eq ptr %7, null
  br i1 %.not62.i, label %sdvo_cmd_name.exit.thread.i, label %sdvo_cmd_name.exit.i.a

sdvo_cmd_name.exit.i.a:                           ; preds = %sdvo_cmd_name.exit.i
  %i.ap = sext i32 %.159.lcssa.i to i64
  %i.aq = getelementptr i8, ptr %i.a, i64 %i.ap
  %i.ar = sub i32 64, %.159.lcssa.i
  %i.as = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 0)
  %i.at = zext nneg i32 %i.as to i64
  %i.au = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.aq, i64 noundef %i.at, ptr noundef @.str.18, ptr noundef nonnull %7) #15
  br label %bb.j

sdvo_cmd_name.exit.thread.i:                      ; preds = %bb.h, %sdvo_cmd_name.exit.i
  %i.av = sext i32 %.159.lcssa.i to i64
  %i.aw = getelementptr i8, ptr %i.a, i64 %i.av
  %i.ax = sub i32 64, %.159.lcssa.i
  %i.ay = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 0)
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = zext i8 %1 to i32
  %i.bb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.aw, i64 noundef %i.az, ptr noundef @.str.19, i32 noundef %i.ba) #15
  br label %bb.j

bb.j:                                             ; preds = %sdvo_cmd_name.exit.thread.i, %sdvo_cmd_name.exit.i.a
  %.pn.i = phi i32 [ %i.au, %sdvo_cmd_name.exit.i.a ], [ %i.bb, %sdvo_cmd_name.exit.thread.i ]
  %.2.i = add i32 %.pn.i, %.159.lcssa.i
  %i.bc = icmp ugt i32 %.2.i, 62
  br i1 %i.bc, label %bb.k, label %bb.p, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.bd = load ptr, ptr %i.p, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.l, %bb.k
  %i.bg = phi ptr [ %i.bf, %bb.l ], [ null, %bb.k ]
  %i.bh = tail call ptr @dev_driver_string(ptr noundef %i.bg) #15 ; 0 uses
  %i.bi = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.20, ptr @.str.7, i32 438, i32 2321, i64 16) #16, !srcloc !62
  %i.bj = load ptr, ptr %i.p, align 8             ; 2 uses
  %.not.i66.i = icmp eq ptr %i.bj, null
  br i1 %.not.i66.i, label %__drm_to_dev.exit67.i, label %bb.m

bb.m:                                             ; preds = %__drm_to_dev.exit.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  br label %__drm_to_dev.exit67.i

__drm_to_dev.exit67.i:                            ; preds = %bb.m, %__drm_to_dev.exit.i
  %i.bm = phi ptr [ %i.bl, %bb.m ], [ null, %__drm_to_dev.exit.i ]
  %i.bn = tail call ptr @dev_driver_string(ptr noundef %i.bm) #15
  %i.bo = load ptr, ptr %i.p, align 8             ; 2 uses
  %.not.i68.i = icmp eq ptr %i.bo, null
  br i1 %.not.i68.i, label %__drm_to_dev.exit69.i, label %bb.n

bb.n:                                             ; preds = %__drm_to_dev.exit67.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  br label %__drm_to_dev.exit69.i

__drm_to_dev.exit69.i:                            ; preds = %bb.n, %__drm_to_dev.exit67.i
  %i.br = phi ptr [ %i.bq, %bb.n ], [ null, %__drm_to_dev.exit67.i ] ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 80
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not.i70.i = icmp eq ptr %i.bt, null
  br i1 %.not.i70.i, label %bb.o, label %dev_name.exit73.i

bb.o:                                             ; preds = %__drm_to_dev.exit69.i
  %.val.i72.i = load ptr, ptr %i.br, align 8
  br label %dev_name.exit73.i

dev_name.exit73.i:                                ; preds = %bb.o, %__drm_to_dev.exit69.i
  %.0.i71.i = phi ptr [ %.val.i72.i, %bb.o ], [ %i.bt, %__drm_to_dev.exit69.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bi, ptr noundef %i.bn, ptr noundef %.0.i71.i, ptr noundef @.str.21) #15
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !63
  br label %bb.p

bb.p:                                             ; preds = %dev_name.exit73.i, %bb.j
  %i.bu = load ptr, ptr %i.p, align 8             ; 2 uses
  %.not.i74.i = icmp eq ptr %i.bu, null
  br i1 %.not.i74.i, label %intel_sdvo_debug_write.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  br label %intel_sdvo_debug_write.exit

intel_sdvo_debug_write.exit:                      ; preds = %bb.p, %bb.q
  %i.bx = phi ptr [ %i.bw, %bb.q ], [ null, %bb.p ]
  %i.by = getelementptr i8, ptr %0, i64 156
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = icmp eq i32 %i.bz, 1
  %i.cb = select i1 %i.ca, ptr @.str.2, ptr @.str.3
  %i.cc = zext i8 %1 to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bx, i32 noundef 2, ptr noundef @.str.22, ptr noundef nonnull %i.cb, i32 noundef %i.cc, ptr noundef nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 512
  %.pre = load i8, ptr %.phi.trans.insert, align 8
  %.pre122 = zext i8 %.pre to i16                 ; 11 uses
  br i1 %.not87.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %intel_sdvo_debug_write.exit
  store i16 %.pre122, ptr %i.m, align 8
  %i.cd = getelementptr i8, ptr %i.m, i64 2
  store i16 0, ptr %i.cd, align 2
  %i.ce = getelementptr i8, ptr %i.m, i64 4
  store i16 2, ptr %i.ce, align 4
  %i.cf = getelementptr i8, ptr %i.m, i64 8
  store ptr %i.i, ptr %i.cf, align 8
  store i8 7, ptr %i.i, align 8
  %i.cg = load i8, ptr %2, align 1
  %i.ch = getelementptr i8, ptr %i.i, i64 1
  store i8 %i.cg, ptr %i.ch, align 1
  %exitcond.not = icmp eq i32 %3, 1
  br i1 %exitcond.not, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %i.ci = getelementptr i8, ptr %i.m, i64 16
  store i16 %.pre122, ptr %i.ci, align 8
  %i.cj = getelementptr i8, ptr %i.m, i64 18
  store i16 0, ptr %i.cj, align 2
  %i.ck = getelementptr i8, ptr %i.m, i64 20
  store i16 2, ptr %i.ck, align 4
  %i.cl = getelementptr i8, ptr %i.i, i64 2       ; 2 uses
  %i.cm = getelementptr i8, ptr %i.m, i64 24
  store ptr %i.cl, ptr %i.cm, align 8
  store i8 6, ptr %i.cl, align 2
  %i.cn = getelementptr i8, ptr %2, i64 1
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = getelementptr i8, ptr %i.i, i64 3
  store i8 %i.co, ptr %i.cp, align 1
  %exitcond.not.1 = icmp eq i32 %3, 2
  br i1 %exitcond.not.1, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = getelementptr i8, ptr %i.m, i64 32
  store i16 %.pre122, ptr %i.cq, align 8
  %i.cr = getelementptr i8, ptr %i.m, i64 34
  store i16 0, ptr %i.cr, align 2
  %i.cs = getelementptr i8, ptr %i.m, i64 36
  store i16 2, ptr %i.cs, align 4
  %i.ct = getelementptr i8, ptr %i.i, i64 4       ; 2 uses
  %i.cu = getelementptr i8, ptr %i.m, i64 40
  store ptr %i.ct, ptr %i.cu, align 8
  store i8 5, ptr %i.ct, align 4
  %i.cv = getelementptr i8, ptr %2, i64 2
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = getelementptr i8, ptr %i.i, i64 5
  store i8 %i.cw, ptr %i.cx, align 1
  %exitcond.not.2 = icmp eq i32 %3, 3
  br i1 %exitcond.not.2, label %._crit_edge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = getelementptr i8, ptr %i.m, i64 48
  store i16 %.pre122, ptr %i.cy, align 8
  %i.cz = getelementptr i8, ptr %i.m, i64 50
  store i16 0, ptr %i.cz, align 2
  %i.da = getelementptr i8, ptr %i.m, i64 52
  store i16 2, ptr %i.da, align 4
  %i.db = getelementptr i8, ptr %i.i, i64 6       ; 2 uses
  %i.dc = getelementptr i8, ptr %i.m, i64 56
  store ptr %i.db, ptr %i.dc, align 8
  store i8 4, ptr %i.db, align 2
  %i.dd = getelementptr i8, ptr %2, i64 3
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = getelementptr i8, ptr %i.i, i64 7
  store i8 %i.de, ptr %i.df, align 1
  %exitcond.not.3 = icmp eq i32 %3, 4
  br i1 %exitcond.not.3, label %._crit_edge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dg = getelementptr i8, ptr %i.m, i64 64
  store i16 %.pre122, ptr %i.dg, align 8
  %i.dh = getelementptr i8, ptr %i.m, i64 66
  store i16 0, ptr %i.dh, align 2
  %i.di = getelementptr i8, ptr %i.m, i64 68
  store i16 2, ptr %i.di, align 4
  %i.dj = getelementptr i8, ptr %i.i, i64 8       ; 2 uses
  %i.dk = getelementptr i8, ptr %i.m, i64 72
  store ptr %i.dj, ptr %i.dk, align 8
  store i8 3, ptr %i.dj, align 8
  %i.dl = getelementptr i8, ptr %2, i64 4
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = getelementptr i8, ptr %i.i, i64 9
  store i8 %i.dm, ptr %i.dn, align 1
  %exitcond.not.4 = icmp eq i32 %3, 5
  br i1 %exitcond.not.4, label %._crit_edge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.do = getelementptr i8, ptr %i.m, i64 80
  store i16 %.pre122, ptr %i.do, align 8
  %i.dp = getelementptr i8, ptr %i.m, i64 82
  store i16 0, ptr %i.dp, align 2
  %i.dq = getelementptr i8, ptr %i.m, i64 84
  store i16 2, ptr %i.dq, align 4
  %i.dr = getelementptr i8, ptr %i.i, i64 10      ; 2 uses
  %i.ds = getelementptr i8, ptr %i.m, i64 88
  store ptr %i.dr, ptr %i.ds, align 8
  store i8 2, ptr %i.dr, align 2
  %i.dt = getelementptr i8, ptr %2, i64 5
  %i.du = load i8, ptr %i.dt, align 1
  %i.dv = getelementptr i8, ptr %i.i, i64 11
  store i8 %i.du, ptr %i.dv, align 1
  %exitcond.not.5 = icmp eq i32 %3, 6
  br i1 %exitcond.not.5, label %._crit_edge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dw = getelementptr i8, ptr %i.m, i64 96
  store i16 %.pre122, ptr %i.dw, align 8
  %i.dx = getelementptr i8, ptr %i.m, i64 98
end_hunk_0
