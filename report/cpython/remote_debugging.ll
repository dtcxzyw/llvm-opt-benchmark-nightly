Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/remote_debugging?download=true
inline.NumInlined: 44
inline.NumDeleted: 20
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_PySysRemoteDebug_SendExec:bb.a
  %.0637.i.i.i.i.i.i = phi i64 [ 0, %bb.ae ], [ %i.ev, %bb.ad ], [ 0, %.thread.i.i.i.i.i.i ], [ 0, %bb.w ], [ 0, %bb.z ]
  %i.fa = call i32 @munmap(ptr noundef nonnull %i.dd, i64 noundef %i.dc) #9 ; 0 uses
  br label %.thread10.i.i.i.i.i.i

.thread10.i.i.i.i.i.i:                            ; preds = %.thread2.i.i.i.i.i.i, %bb.ae, %.thread10.thread.i.i.i.i.i.i
  %.063815.i.i.i.i.i.i = phi i64 [ 0, %.thread10.thread.i.i.i.i.i.i ], [ %.0637.i.i.i.i.i.i, %.thread2.i.i.i.i.i.i ], [ 0, %bb.ae ] ; 3 uses
  %i.fb = call i32 @close(i32 noundef %i.cp) #9
  %.not79.i.i.i.i.i.i = icmp eq i32 %i.fb, 0
  br i1 %.not79.i.i.i.i.i.i, label %search_elf_file_for_section.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %.thread10.i.i.i.i.i.i
  %i.fc = load ptr, ptr @PyExc_OSError, align 8, !tbaa !27
  %i.fd = tail call ptr @__errno_location() #10
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !10
  %i.ff = call ptr @strerror(i32 noundef %i.fe) #9
  %i.fg = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.fc, ptr noundef nonnull @.str.24, ptr noundef nonnull %i.cc, ptr noundef %i.ff) #9 ; 0 uses
  br label %search_elf_file_for_section.exit.thread.i.i.i.i.i

search_elf_file_for_section.exit.thread.i.i.i.i.i: ; preds = %bb.af, %.thread10.thread16.i.i.i.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %select.unfold.i.i.i.i.i

search_elf_file_for_section.exit.i.i.i.i.i:       ; preds = %.thread10.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not81.i.i.i.i.i = icmp eq i64 %.063815.i.i.i.i.i.i, 0
  br i1 %.not81.i.i.i.i.i, label %select.unfold.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %search_elf_file_for_section.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.fh = call fastcc i32 @_Py_RemoteDebug_ReadRemoteMemory(ptr noundef nonnull %5, i64 noundef %.063815.i.i.i.i.i.i, i64 noundef 8, ptr noundef %i.a)
  %.not.i93.i.i.i.i.i = icmp eq i32 %i.fh, 0
  br i1 %.not.i93.i.i.i.i.i, label %_Py_RemoteDebug_ValidatePyRuntimeCookie.exit.i.i.i.i.i, label %_Py_RemoteDebug_ValidatePyRuntimeCookie.exit.thread.i.i.i.i.i

_Py_RemoteDebug_ValidatePyRuntimeCookie.exit.thread.i.i.i.i.i: ; preds = %bb.ag
  call void @PyErr_Clear() #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %select.unfold.i.i.i.i.i

_Py_RemoteDebug_ValidatePyRuntimeCookie.exit.i.i.i.i.i: ; preds = %bb.ag
  %i.fi = load i64, ptr %i.a, align 1
  %i.fj = icmp ne i64 %i.fi, 8750607829840520312
  %i.fk = zext i1 %i.fj to i32
  %.not15.i.i.i.i.i = icmp eq i32 %i.fk, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %.not15.i.i.i.i.i, label %.thread8.i.i.i.i.i, label %select.unfold.i.i.i.i.i

.thread8.i.i.i.i.i:                               ; preds = %_Py_RemoteDebug_ValidatePyRuntimeCookie.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %.loopexit.i.i.i.i.i

select.unfold.i.i.i.i.i:                          ; preds = %_Py_RemoteDebug_ValidatePyRuntimeCookie.exit.i.i.i.i.i, %_Py_RemoteDebug_ValidatePyRuntimeCookie.exit.thread.i.i.i.i.i, %search_elf_file_for_section.exit.i.i.i.i.i, %search_elf_file_for_section.exit.thread.i.i.i.i.i, %bb.r, %bb.q, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %i.fl = call ptr @fgets(ptr noundef nonnull %.054.ph.i.i.i.i.i, i32 noundef %i.bo, ptr noundef nonnull %i.ak)
  %.not76.i.i.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not76.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.j

.loopexit.i.i.i.i.i:                              ; preds = %.outer.i.i.i.i.i, %select.unfold.i.i.i.i.i, %.thread8.i.i.i.i.i
  %.5.i.i.i.i.i = phi i64 [ %.063815.i.i.i.i.i.i, %.thread8.i.i.i.i.i ], [ 0, %select.unfold.i.i.i.i.i ], [ 0, %.outer.i.i.i.i.i ] ; 3 uses
  call void @PyMem_Free(ptr noundef nonnull %.054.ph.i.i.i.i.i) #9
  %i.fm = call i32 @fclose(ptr noundef nonnull %i.ak)
  %.not83.i.i.i.i.i = icmp eq i32 %i.fm, 0
  br i1 %.not83.i.i.i.i.i, label %search_linux_map_for_section.exit.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.loopexit.i.i.i.i.i
  %i.fn = load ptr, ptr @PyExc_OSError, align 8, !tbaa !27
  %i.fo = tail call ptr @__errno_location() #10
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !10
  %i.fq = call ptr @strerror(i32 noundef %i.fp) #9
  %i.fr = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.fn, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.b, ptr noundef %i.fq) #9 ; 0 uses
  br label %search_linux_map_for_section.exit.thread.i.i.i.i

search_linux_map_for_section.exit.thread.i.i.i.i: ; preds = %bb.ah, %bb.n, %_PyErr_Occurred.exit91.thread.i.i.i.i.i, %bb.l, %bb.i, %_PyErr_Occurred.exit.thread.i.i.i.i.i, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.ai

search_linux_map_for_section.exit.i.i.i.i:        ; preds = %.loopexit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.fs = icmp eq i64 %.5.i.i.i.i.i, 0
  br i1 %i.fs, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %search_linux_map_for_section.exit.i.i.i.i, %search_linux_map_for_section.exit.thread.i.i.i.i
  %i.ft = call ptr @PyErr_GetRaisedException() #9
  %i.fu = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !27
  %i.fv = load i32, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.fw = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.fu, ptr noundef nonnull @.str.11, i32 noundef %i.fv) #9 ; 0 uses
  call void @_PyErr_ChainExceptions1(ptr noundef %i.ft) #9
  %i.fx = call ptr @PyErr_Occurred() #9
  %.not13.i.i.i = icmp eq ptr %i.fx, null
  br i1 %.not13.i.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fy = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !27
  %i.fz = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.fy, ptr noundef nonnull @.str.6, i32 noundef %i.fv) #9 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ga = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !27
  %i.gb = call i32 @PyErr_ExceptionMatches(ptr noundef %i.ga) #9
  %.not14.i.i.i = icmp eq i32 %i.gb, 0
  br i1 %.not14.i.i.i, label %bb.al, label %send_exec_to_proc_handle.exit

bb.al:                                            ; preds = %bb.ak
  %i.gc = load ptr, ptr %i.k, align 8, !tbaa !13  ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 128
  %.val19.i.i.i = load ptr, ptr %i.gd, align 8, !tbaa !32 ; 2 uses
  %i.ge = icmp eq ptr %.val19.i.i.i, null
  br i1 %i.ge, label %_PyErr_Occurred.exit.thread.i.i.i, label %_PyErr_Occurred.exit.i.i.i

_PyErr_Occurred.exit.i.i.i:                       ; preds = %bb.al
  %i.gf = getelementptr i8, ptr %.val19.i.i.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.gf, align 8, !tbaa !35
  %.not15.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not15.i.i.i, label %_PyErr_Occurred.exit.thread.i.i.i, label %bb.am

_PyErr_Occurred.exit.thread.i.i.i:                ; preds = %_PyErr_Occurred.exit.i.i.i, %bb.al
  %i.gg = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !27
  %i.gh = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.gc, ptr noundef %i.gg, ptr noundef nonnull @.str.7) #9 ; 0 uses
  br label %send_exec_to_proc_handle.exit

bb.am:                                            ; preds = %_PyErr_Occurred.exit.i.i.i
  %i.gi = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !27
  %i.gj = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.gi, ptr noundef nonnull @.str.7) #9 ; 0 uses
  br label %send_exec_to_proc_handle.exit

bb.an:                                            ; preds = %search_linux_map_for_section.exit.i.i.i.i
  %i.gk = call fastcc i32 @_Py_RemoteDebug_ReadRemoteMemory(ptr noundef nonnull %5, i64 noundef %.5.i.i.i.i.i, i64 noundef 824, ptr noundef nonnull %4)
  %.not16.i.i.i = icmp eq i32 %i.gk, 0
  br i1 %.not16.i.i.i, label %_Py_RemoteDebug_ReadDebugOffsets.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gl = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !27
  %i.gm = call i32 @PyErr_ExceptionMatches(ptr noundef %i.gl) #9
  %.not17.i.i.i = icmp eq i32 %i.gm, 0
  br i1 %.not17.i.i.i, label %bb.ap, label %send_exec_to_proc_handle.exit

bb.ap:                                            ; preds = %bb.ao
  %i.gn = load ptr, ptr %i.k, align 8, !tbaa !13  ; 2 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 128
  %.val.i.i.i = load ptr, ptr %i.go, align 8, !tbaa !32 ; 2 uses
  %i.gp = icmp eq ptr %.val.i.i.i, null
  br i1 %i.gp, label %_PyErr_Occurred.exit22.thread.i.i.i, label %_PyErr_Occurred.exit22.i.i.i

_PyErr_Occurred.exit22.i.i.i:                     ; preds = %bb.ap
  %i.gq = getelementptr i8, ptr %.val.i.i.i, i64 8
  %.val.i20.i.i.i = load ptr, ptr %i.gq, align 8, !tbaa !35
  %.not18.i.i.i = icmp eq ptr %.val.i20.i.i.i, null
  br i1 %.not18.i.i.i, label %_PyErr_Occurred.exit22.thread.i.i.i, label %bb.aq

_PyErr_Occurred.exit22.thread.i.i.i:              ; preds = %_PyErr_Occurred.exit22.i.i.i, %bb.ap
  %i.gr = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !27
  %i.gs = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.gn, ptr noundef %i.gr, ptr noundef nonnull @.str.8) #9 ; 0 uses
  br label %send_exec_to_proc_handle.exit

bb.aq:                                            ; preds = %_PyErr_Occurred.exit22.i.i.i
  %i.gt = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !27
  %i.gu = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.gt, ptr noundef nonnull @.str.8) #9 ; 0 uses
  br label %send_exec_to_proc_handle.exit

_Py_RemoteDebug_ReadDebugOffsets.exit.i.i:        ; preds = %bb.an
  %lhsv.i = load i64, ptr %4, align 8
  %.not.i = icmp eq i64 %lhsv.i, 8750607829840520312
  br i1 %.not.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_Py_RemoteDebug_ReadDebugOffsets.exit.i.i
  %i.gv = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !27
  call void @PyErr_SetString(ptr noundef %i.gv, ptr noundef nonnull @.str.30) #9
  br label %send_exec_to_proc_handle.exit

bb.as:                                            ; preds = %_Py_RemoteDebug_ReadDebugOffsets.exit.i.i
  %i.gw = load i64, ptr @Py_Version, align 8, !tbaa !58 ; 4 uses
  %i.gx = and i64 %i.gw, 240
  %.not18.i6.i.i = icmp eq i64 %i.gx, 240
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !98 ; 4 uses
  br i1 %.not18.i6.i.i, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not13.i7.i.i = icmp eq i64 %i.gw, %.pre.i.i.i
  br i1 %.not13.i7.i.i, label %.thread.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gy = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !27
  call void @PyErr_SetString(ptr noundef %i.gy, ptr noundef nonnull @.str.31) #9
  br label %send_exec_to_proc_handle.exit

bb.av:                                            ; preds = %bb.as
  %.pre20.i.i.i = and i64 %.pre.i.i.i, 240
  %i.gz = icmp eq i64 %.pre20.i.i.i, 240
  %.not15.i9.i.i = icmp eq i64 %i.gw, %.pre.i.i.i
  %or.cond17.i.i.i = or i1 %.not15.i9.i.i, %i.gz
  br i1 %or.cond17.i.i.i, label %.thread.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ha = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !27
  call void @PyErr_SetString(ptr noundef %i.ha, ptr noundef nonnull @.str.32) #9
  br label %send_exec_to_proc_handle.exit

.thread.i.i.i:                                    ; preds = %bb.av, %bb.at
  %i.hb = phi i64 [ %.pre.i.i.i, %bb.av ], [ %i.gw, %bb.at ]
  %i.hc = trunc i64 %i.hb to i32                  ; 2 uses
  %6 = lshr i32 %i.hc, 24                         ; 2 uses
  %7 = lshr i32 %i.hc, 16
  %i.hd = and i32 %7, 255                         ; 2 uses
  %i.he = icmp ne i32 %6, 3
  %i.hf = icmp ne i32 %i.hd, 15
  %or.cond.i.i.i = or i1 %i.he, %i.hf
  br i1 %or.cond.i.i.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.thread.i.i.i
  %i.hg = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !27
  %i.hh = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.hg, ptr noundef nonnull @.str.33, i32 noundef 3, i32 noundef 15, i32 noundef %6, i32 noundef %i.hd) #9 ; 0 uses
  br label %send_exec_to_proc_handle.exit

bb.ay:                                            ; preds = %.thread.i.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !99
  %.not16.i8.i.i = icmp eq i64 %i.hj, 0
  br i1 %.not16.i8.i.i, label %read_offsets.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hk = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !27
  call void @PyErr_SetString(ptr noundef %i.hk, ptr noundef nonnull @.str.34) #9
  br label %send_exec_to_proc_handle.exit

read_offsets.exit.i:                              ; preds = %bb.ay
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.hn = add i64 %i.hm, %.5.i.i.i.i.i
  %i.ho = call fastcc range(i32 -1, 1) i32 @_Py_RemoteDebug_ReadRemoteMemory(ptr noundef nonnull %5, i64 noundef %i.hn, i64 noundef 8, ptr noundef nonnull %i.e)
  %.not22.i = icmp eq i32 %i.ho, 0
  br i1 %.not22.i, label %bb.ba, label %bb.by

bb.ba:                                            ; preds = %read_offsets.exit.i
  %i.hp = load i64, ptr %i.e, align 8, !tbaa !58  ; 2 uses
  %i.hq = icmp eq i64 %i.hp, 0
  br i1 %i.hq, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hr = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !27
  call void @PyErr_SetString(ptr noundef %i.hr, ptr noundef nonnull @.str.1) #9
  br label %bb.by

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store i32 0, ptr %i.f, align 4, !tbaa !10
  %i.hs = getelementptr inbounds nuw i8, ptr %4, i64 776 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 792
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !101
  %i.hv = add i64 %i.hu, %i.hp
  %i.hw = call fastcc range(i32 -1, 1) i32 @_Py_RemoteDebug_ReadRemoteMemory(ptr noundef nonnull %5, i64 noundef %i.hv, i64 noundef 4, ptr noundef nonnull %i.f)
  %.not23.i = icmp eq i32 %i.hw, 0
  br i1 %.not23.i, label %bb.bd, label %bb.bx

bb.bd:                                            ; preds = %bb.bc
  %i.hx = load i32, ptr %i.f, align 4, !tbaa !10
  %.not24.i = icmp eq i32 %i.hx, 1
  br i1 %.not24.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hy = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !27
  call void @PyErr_SetString(ptr noundef %i.hy, ptr noundef nonnull @.str.2) #9
  br label %bb.bx

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  store i64 0, ptr %i.h, align 8, !tbaa !58
  %.not25.i = icmp eq i32 %1, 0
  %i.hz = load i64, ptr %i.e, align 8, !tbaa !58  ; 2 uses
  br i1 %.not25.i, label %bb.bm, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ia = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !102
  %i.ic = add i64 %i.ib, %i.hz
  %i.id = call fastcc range(i32 -1, 1) i32 @_Py_RemoteDebug_ReadRemoteMemory(ptr noundef nonnull %5, i64 noundef %i.ic, i64 noundef 8, ptr noundef nonnull %i.g)
  %.not27.i = icmp eq i32 %i.id, 0
  br i1 %.not27.i, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.bg
  %i.ie = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.if = sext i32 %1 to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 192
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bk, %.preheader.i
  %i.ih = load i64, ptr %i.g, align 8, !tbaa !58  ; 2 uses
  %.not28.i = icmp eq i64 %i.ih, 0
  br i1 %.not28.i, label %.thread.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ii = load i64, ptr %i.ie, align 8, !tbaa !103
  %i.ij = add i64 %i.ii, %i.ih
  %i.ik = call fastcc range(i32 -1, 1) i32 @_Py_RemoteDebug_ReadRemoteMemory(ptr noundef nonnull %5, i64 noundef %i.ij, i64 noundef 8, ptr noundef nonnull %i.h)
  %.not29.i = icmp eq i32 %i.ik, 0
  br i1 %.not29.i, label %bb.bj, label %.loopexit.i

bb.bj:                                            ; preds = %bb.bi
  %i.il = load i64, ptr %i.h, align 8, !tbaa !58
  %i.im = icmp eq i64 %i.il, %i.if
  %.pr.i = load i64, ptr %i.g, align 8, !tbaa !58 ; 3 uses
  br i1 %i.im, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.in = load i64, ptr %i.ig, align 8, !tbaa !104
  %i.io = add i64 %i.in, %.pr.i
  %i.ip = call fastcc range(i32 -1, 1) i32 @_Py_RemoteDebug_ReadRemoteMemory(ptr noundef nonnull %5, i64 noundef %i.io, i64 noundef 8, ptr noundef nonnull %i.g)
  %.not30.i = icmp eq i32 %i.ip, 0
  br i1 %.not30.i, label %bb.bh, label %.loopexit.i, !llvm.loop !43

bb.bl:                                            ; preds = %bb.bj
  %i.iq = icmp eq i64 %.pr.i, 0
  br i1 %i.iq, label %.thread.i, label %bb.bp

.thread.i:                                        ; preds = %bb.bh, %bb.bl
  %i.ir = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !27
  call void @PyErr_SetString(ptr noundef %i.ir, ptr noundef nonnull @.str.3) #9
  br label %.loopexit.i

bb.bm:                                            ; preds = %bb.bf
  %i.is = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.it = load i64, ptr %i.is, align 8, !tbaa !105
  %i.iu = add i64 %i.it, %i.hz
  %i.iv = call fastcc range(i32 -1, 1) i32 @_Py_RemoteDebug_ReadRemoteMemory(ptr noundef nonnull %5, i64 noundef %i.iu, i64 noundef 8, ptr noundef nonnull %i.g)
  %.not26.i = icmp eq i32 %i.iv, 0
  br i1 %.not26.i, label %bb.bn, label %.loopexit.i

bb.bn:                                            ; preds = %bb.bm
  %i.iw = load i64, ptr %i.g, align 8, !tbaa !58  ; 2 uses
  %i.ix = icmp eq i64 %i.iw, 0
  br i1 %i.ix, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.iy = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !27
  call void @PyErr_SetString(ptr noundef %i.iy, ptr noundef nonnull @.str.4) #9
  br label %.loopexit.i

bb.bp:                                            ; preds = %bb.bn, %bb.bl
  %i.iz = phi i64 [ %i.iw, %bb.bn ], [ %.pr.i, %bb.bl ]
  %i.ja = getelementptr inbounds nuw i8, ptr %4, i64 816
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !106
  %i.jc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #11 ; 2 uses
  %.not31.i = icmp ugt i64 %i.jb, %i.jc
  br i1 %.not31.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jd = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !27
  call void @PyErr_SetString(ptr noundef %i.jd, ptr noundef nonnull @.str.5) #9
  br label %.loopexit.i

bb.br:                                            ; preds = %bb.bp
  %i.je = getelementptr inbounds nuw i8, ptr %4, i64 784 ; 2 uses
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !107
  %i.jg = add i64 %i.jf, %i.iz
  %i.jh = getelementptr inbounds nuw i8, ptr %4, i64 808
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !108
  %i.jj = add i64 %i.jg, %i.ji
  %i.jk = add nuw i64 %i.jc, 1
  %i.jl = call fastcc i32 @write_memory(ptr noundef nonnull %5, i64 noundef %i.jj, i64 noundef %i.jk, ptr noundef nonnull %2)
  %.not32.i = icmp eq i32 %i.jl, 0
  br i1 %.not32.i, label %bb.bs, label %.loopexit.i

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  store i32 1, ptr %i.i, align 4, !tbaa !10
  %i.jm = load i64, ptr %i.g, align 8, !tbaa !58
  %i.jn = load i64, ptr %i.je, align 8, !tbaa !107
  %i.jo = add i64 %i.jn, %i.jm
  %i.jp = getelementptr inbounds nuw i8, ptr %4, i64 800
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !109
  %i.jr = add i64 %i.jo, %i.jq
  %i.js = call fastcc i32 @write_memory(ptr noundef nonnull %5, i64 noundef %i.jr, i64 noundef 4, ptr noundef nonnull %i.i)
  %.not33.i = icmp eq i32 %i.js, 0
  br i1 %.not33.i, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  %i.jt = load i64, ptr %i.g, align 8, !tbaa !58
  %i.ju = load i64, ptr %i.hs, align 8, !tbaa !110
  %i.jv = add i64 %i.ju, %i.jt
  %i.jw = call fastcc range(i32 -1, 1) i32 @_Py_RemoteDebug_ReadRemoteMemory(ptr noundef nonnull %5, i64 noundef %i.jv, i64 noundef 8, ptr noundef nonnull %i.j)
  %.not34.i = icmp eq i32 %i.jw, 0
  br i1 %.not34.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.jx = load i64, ptr %i.j, align 8, !tbaa !58
  %i.jy = or i64 %i.jx, 32
  store i64 %i.jy, ptr %i.j, align 8, !tbaa !58
  %i.jz = load i64, ptr %i.g, align 8, !tbaa !58
  %i.ka = load i64, ptr %i.hs, align 8, !tbaa !110
  %i.kb = add i64 %i.ka, %i.jz
  %i.kc = call fastcc i32 @write_memory(ptr noundef nonnull %5, i64 noundef %i.kb, i64 noundef 8, ptr noundef nonnull %i.j)
  %.not35.i = icmp ne i32 %i.kc, 0
  %..i = sext i1 %.not35.i to i32
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.0.i = phi i32 [ -1, %bb.bt ], [ %..i, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bs
  %.1.i = phi i32 [ %.0.i, %bb.bv ], [ -1, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.bk, %bb.bi, %bb.bw, %bb.br, %bb.bq, %bb.bo, %bb.bm, %.thread.i, %bb.bg
  %.3.i = phi i32 [ -1, %bb.bo ], [ -1, %bb.bg ], [ -1, %.thread.i ], [ -1, %bb.bq ], [ -1, %bb.bm ], [ %.1.i, %bb.bw ], [ -1, %bb.br ], [ -1, %bb.bi ], [ -1, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
end_hunk_0
