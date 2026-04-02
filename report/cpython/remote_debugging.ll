begin_hunk_0
@.str.22 = private unnamed_addr constant [65 x i8] c"Invalid ELF file '%s': string table index %u >= section count %u\00", align 1
@.str.23 = private unnamed_addr constant [72 x i8] c"No PT_LOAD segment found in ELF file '%s' (%u program headers examined)\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"Failed to close ELF file '%s': %s\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"xdebugpy\00", align 1
@.str.26 = private unnamed_addr constant [91 x i8] c"process_vm_readv failed for PID %d at address 0x%lx (size %zu, partial read %zd bytes): %s\00", align 1
@.str.27 = private unnamed_addr constant [81 x i8] c"preadv failed for PID %d at address 0x%lx (size %zu, partial read %zd bytes): %s\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"/proc/%d/mem\00", align 1
end_hunk_0
begin_hunk_1
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.o = tail call ptr @_PyInterpreterState_GetConfig(ptr noundef %i.n) #10
  %i.p = getelementptr i8, ptr %i.o, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !28
  %.not = icmp eq i32 %i.q, 1
end_hunk_1
begin_hunk_2

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !33
  tail call void @PyErr_SetString(ptr noundef %i.r, ptr noundef nonnull @.str) #10
  br label %bb.cd

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store i32 %0, ptr %5, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i32 -1, ptr %i.s, align 4, !tbaa !36
  %i.t = tail call i32 @getpagesize() #11
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 32776
  store i64 %i.u, ptr %i.v, align 8, !tbaa !37
end_hunk_2
begin_hunk_3
  br i1 %exitcond.not.i.i.3, label %init_proc_handle.exit, label %bb.d, !llvm.loop !43

init_proc_handle.exit:                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.aj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %0) #10 ; 0 uses
  %i.ak = call noalias ptr @fopen64(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.13) ; 6 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %init_proc_handle.exit
  %i.am = load ptr, ptr @PyExc_OSError, align 8, !tbaa !33
  %i.an = tail call ptr @__errno_location() #11
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !7
  %i.ap = tail call ptr @strerror(i32 noundef %i.ao) #10
  %i.aq = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.am, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.b, i32 noundef %0, ptr noundef %i.ap) #10 ; 0 uses
  br label %search_linux_map_for_section.exit.thread.i.i.i.i

bb.f:                                             ; preds = %init_proc_handle.exit
  %i.ar = tail call ptr @PyMem_Malloc(i64 noundef 4096) #10 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i, label %bb.g, label %.preheader.i.i.i.i.i

end_hunk_3
begin_hunk_4
bb.g:                                             ; preds = %bb.f
  %i.at = tail call i32 @fclose(ptr noundef nonnull %i.ak) ; 0 uses
  %i.au = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !33
  %i.av = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.au) #10
  %.not74.i.i.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not74.i.i.i.i.i, label %bb.h, label %search_linux_map_for_section.exit.thread.i.i.i.i

end_hunk_4
begin_hunk_5

_PyErr_Occurred.exit.thread.i.i.i.i.i:            ; preds = %_PyErr_Occurred.exit.i.i.i.i.i, %bb.h
  %i.ba = load ptr, ptr @PyExc_MemoryError, align 8, !tbaa !33
  %i.bb = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.aw, ptr noundef %i.ba, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.b) #10 ; 0 uses
  br label %search_linux_map_for_section.exit.thread.i.i.i.i

bb.i:                                             ; preds = %_PyErr_Occurred.exit.i.i.i.i.i
  %i.bc = load ptr, ptr @PyExc_MemoryError, align 8, !tbaa !33
  %i.bd = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.bc, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.b) #10 ; 0 uses
  br label %search_linux_map_for_section.exit.thread.i.i.i.i

bb.j:                                             ; preds = %select.unfold.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.be = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.065.ph.i.i.i.i.i) #12 ; 2 uses
  %i.bf = getelementptr i8, ptr %.065.ph.i.i.i.i.i, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 -1     ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !49
end_hunk_5
begin_hunk_6

bb.k:                                             ; preds = %bb.j
  %i.bi = shl i64 %.064.ph.i.i.i.i.i, 1           ; 4 uses
  %i.bj = call ptr @PyMem_Realloc(ptr noundef nonnull %.065.ph.i.i.i.i.i, i64 noundef %i.bi) #10 ; 2 uses
  %.not84.not.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not84.not.i.i.i.i.i, label %bb.l, label %.outer.i.i.i.i.i, !llvm.loop !50

end_hunk_6
begin_hunk_7
  br label %bb.j

bb.l:                                             ; preds = %bb.k
  call void @PyMem_Free(ptr noundef nonnull %.065.ph.i.i.i.i.i) #10
  %i.bp = call i32 @fclose(ptr noundef nonnull %i.ak) ; 0 uses
  %i.bq = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !33
  %i.br = call i32 @PyErr_ExceptionMatches(ptr noundef %i.bq) #10
  %.not85.i.i.i.i.i = icmp eq i32 %i.br, 0
  br i1 %.not85.i.i.i.i.i, label %bb.m, label %search_linux_map_for_section.exit.thread.i.i.i.i

end_hunk_7
begin_hunk_8

_PyErr_Occurred.exit91.thread.i.i.i.i.i:          ; preds = %_PyErr_Occurred.exit91.i.i.i.i.i, %bb.m
  %i.bw = load ptr, ptr @PyExc_MemoryError, align 8, !tbaa !33
  %i.bx = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.bs, ptr noundef %i.bw, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.b, i64 noundef %i.bi) #10 ; 0 uses
  br label %search_linux_map_for_section.exit.thread.i.i.i.i

bb.n:                                             ; preds = %_PyErr_Occurred.exit91.i.i.i.i.i
  %i.by = load ptr, ptr @PyExc_MemoryError, align 8, !tbaa !33
  %i.bz = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.by, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.b, i64 noundef %i.bi) #10 ; 0 uses
  br label %search_linux_map_for_section.exit.thread.i.i.i.i

bb.o:                                             ; preds = %bb.j
  store i8 0, ptr %i.bg, align 1, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i64 0, ptr %i.c, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i64 0, ptr %i.d, align 8, !tbaa !51
  %i.ca = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %.065.ph.i.i.i.i.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #10 ; 0 uses
  %i.cb = load i64, ptr %i.d, align 8, !tbaa !51  ; 2 uses
  %.not78.i.i.i.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not78.i.i.i.i.i, label %select.unfold.i.i.i.i.i, label %bb.p, !llvm.loop !50
end_hunk_8
begin_hunk_9
  br i1 %i.ce, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cc) #12
  %i.cg = getelementptr i8, ptr %i.cc, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 -1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !49
end_hunk_9
begin_hunk_10
  br i1 %i.cj, label %select.unfold.i.i.i.i.i, label %bb.r, !llvm.loop !50

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ck = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.cc, i32 noundef 47) #12 ; 2 uses
  %.not79.i.i.i.i.i = icmp eq ptr %i.ck, null
  %i.cl = getelementptr i8, ptr %i.ck, i64 1
  %.0.i.i.i.i.i = select i1 %.not79.i.i.i.i.i, ptr %i.cc, ptr %i.cl
  %i.cm = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i.i.i.i, ptr noundef nonnull dereferenceable(1) @.str.10) #12
  %.not80.i.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not80.i.i.i.i.i, label %select.unfold.i.i.i.i.i, label %bb.s

end_hunk_10
begin_hunk_11
  br i1 %i.co, label %search_elf_file_for_section.exit.thread.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = call i32 (ptr, i32, ...) @open64(ptr noundef nonnull %i.cc, i32 noundef 0) #10 ; 4 uses
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %.thread10.thread16.i.i.i.i.i.i, label %bb.u

.thread10.thread16.i.i.i.i.i.i:                   ; preds = %bb.t
  %i.cr = load ptr, ptr @PyExc_OSError, align 8, !tbaa !33
  %i.cs = tail call ptr @__errno_location() #11
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !7
  %i.cu = call ptr @strerror(i32 noundef %i.ct) #10
  %i.cv = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cr, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.cc, ptr noundef nonnull @.str.9, ptr noundef %i.cu) #10 ; 0 uses
  br label %search_elf_file_for_section.exit.thread.i.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.cw = call i32 @fstat64(i32 noundef %i.cp, ptr noundef nonnull %3) #10
  %.not.i.i.i.i.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %.thread10.thread.i.i.i.i.i.i

.thread10.thread.i.i.i.i.i.i:                     ; preds = %bb.u
  %i.cx = load ptr, ptr @PyExc_OSError, align 8, !tbaa !33
  %i.cy = tail call ptr @__errno_location() #11
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !7
  %i.da = call ptr @strerror(i32 noundef %i.cz) #10
  %i.db = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cx, ptr noundef nonnull @.str.20, ptr noundef nonnull %i.cc, ptr noundef nonnull @.str.9, ptr noundef %i.da) #10 ; 0 uses
  br label %.thread10.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.dc = load i64, ptr %i.as, align 8, !tbaa !52 ; 3 uses
  %i.dd = call ptr @mmap64(ptr noundef null, i64 noundef %i.dc, i32 noundef 1, i32 noundef 2, i32 noundef %i.cp, i64 noundef 0) #10 ; 11 uses
  %i.de = icmp eq ptr %i.dd, inttoptr (i64 -1 to ptr)
  br i1 %i.de, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.df = load ptr, ptr @PyExc_OSError, align 8, !tbaa !33
  %i.dg = tail call ptr @__errno_location() #11
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !7
  %i.di = call ptr @strerror(i32 noundef %i.dh) #10
  %i.dj = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.df, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.cc, i64 noundef %i.dc, ptr noundef nonnull @.str.9, ptr noundef %i.di) #10 ; 0 uses
  br label %.thread2.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
end_hunk_11
begin_hunk_12
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr i8, ptr %i.dv, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.dz, i64 1
  %i.eb = call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.9, ptr noundef nonnull dereferenceable(1) %i.ea) #12
  %.not77.i.i.i.i.i.i = icmp eq i32 %i.eb, 0
  br i1 %.not77.i.i.i.i.i.i, label %bb.ab, label %bb.z

end_hunk_12
begin_hunk_13

.thread.i.i.i.i.i.i:                              ; preds = %bb.ac, %bb.ab
  %i.el = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !33
  %i.em = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.el, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.cc, i32 noundef %i.eh) #10 ; 0 uses
  br label %.thread2.i.i.i.i.i.i

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i
end_hunk_13
begin_hunk_14
  %i.ew = zext i16 %i.dn to i32
  %i.ex = zext i16 %i.dl to i32
  %i.ey = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !33
  %i.ez = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ey, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.cc, i32 noundef %i.ex, i32 noundef %i.ew) #10 ; 0 uses
  %.not78.i.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not78.i.i.i.i.i.i, label %.thread10.i.i.i.i.i.i, label %.thread2.i.i.i.i.i.i

.thread2.i.i.i.i.i.i:                             ; preds = %bb.z, %bb.ae, %bb.ad, %.thread.i.i.i.i.i.i, %bb.w
  %.0637.i.i.i.i.i.i = phi i64 [ 0, %bb.ae ], [ %i.ev, %bb.ad ], [ 0, %.thread.i.i.i.i.i.i ], [ 0, %bb.w ], [ 0, %bb.z ]
  %i.fa = call i32 @munmap(ptr noundef nonnull %i.dd, i64 noundef %i.dc) #10 ; 0 uses
  br label %.thread10.i.i.i.i.i.i

.thread10.i.i.i.i.i.i:                            ; preds = %.thread2.i.i.i.i.i.i, %bb.ae, %.thread10.thread.i.i.i.i.i.i
  %.063815.i.i.i.i.i.i = phi i64 [ 0, %.thread10.thread.i.i.i.i.i.i ], [ %.0637.i.i.i.i.i.i, %.thread2.i.i.i.i.i.i ], [ 0, %bb.ae ] ; 3 uses
  %i.fb = call i32 @close(i32 noundef %i.cp) #10
  %.not79.i.i.i.i.i.i = icmp eq i32 %i.fb, 0
  br i1 %.not79.i.i.i.i.i.i, label %search_elf_file_for_section.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %.thread10.i.i.i.i.i.i
  %i.fc = load ptr, ptr @PyExc_OSError, align 8, !tbaa !33
  %i.fd = tail call ptr @__errno_location() #11
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !7
  %i.ff = call ptr @strerror(i32 noundef %i.fe) #10
  %i.fg = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.fc, ptr noundef nonnull @.str.24, ptr noundef nonnull %i.cc, ptr noundef %i.ff) #10 ; 0 uses
  br label %search_elf_file_for_section.exit.thread.i.i.i.i.i

search_elf_file_for_section.exit.thread.i.i.i.i.i: ; preds = %bb.af, %.thread10.thread16.i.i.i.i.i.i, %bb.s
end_hunk_14
begin_hunk_15
  br i1 %.not81.i.i.i.i.i, label %select.unfold.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %search_elf_file_for_section.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.fh = call fastcc i32 @_Py_RemoteDebug_ReadRemoteMemory(ptr noundef nonnull %5, i64 noundef %.063815.i.i.i.i.i.i, i64 noundef 8, ptr noundef %i.a)
  %.not.i93.i.i.i.i.i = icmp eq i32 %i.fh, 0
  br i1 %.not.i93.i.i.i.i.i, label %_Py_RemoteDebug_ValidatePyRuntimeCookie.exit.i.i.i.i.i, label %_Py_RemoteDebug_ValidatePyRuntimeCookie.exit.thread.i.i.i.i.i

_Py_RemoteDebug_ValidatePyRuntimeCookie.exit.thread.i.i.i.i.i: ; preds = %bb.ag
  call void @PyErr_Clear() #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %select.unfold.i.i.i.i.i

_Py_RemoteDebug_ValidatePyRuntimeCookie.exit.i.i.i.i.i: ; preds = %bb.ag
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %i.a, ptr noundef nonnull dereferenceable(8) @.str.25, i64 8)
  %.not15.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br i1 %.not15.i.i.i.i.i, label %.thread8.i.i.i.i.i, label %select.unfold.i.i.i.i.i

.thread8.i.i.i.i.i:                               ; preds = %_Py_RemoteDebug_ValidatePyRuntimeCookie.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %.loopexit.i.i.i.i.i

select.unfold.i.i.i.i.i:                          ; preds = %_Py_RemoteDebug_ValidatePyRuntimeCookie.exit.i.i.i.i.i, %_Py_RemoteDebug_ValidatePyRuntimeCookie.exit.thread.i.i.i.i.i, %search_elf_file_for_section.exit.i.i.i.i.i, %search_elf_file_for_section.exit.thread.i.i.i.i.i, %bb.r, %bb.q, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  %i.fi = call ptr @fgets(ptr noundef nonnull %.065.ph.i.i.i.i.i, i32 noundef %i.bo, ptr noundef nonnull %i.ak)
  %.not76.i.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not76.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.j

.loopexit.i.i.i.i.i:                              ; preds = %.outer.i.i.i.i.i, %select.unfold.i.i.i.i.i, %.thread8.i.i.i.i.i
  %.5.i.i.i.i.i = phi i64 [ %.063815.i.i.i.i.i.i, %.thread8.i.i.i.i.i ], [ 0, %select.unfold.i.i.i.i.i ], [ 0, %.outer.i.i.i.i.i ] ; 3 uses
  call void @PyMem_Free(ptr noundef nonnull %.065.ph.i.i.i.i.i) #10
  %i.fj = call i32 @fclose(ptr noundef nonnull %i.ak)
  %.not83.i.i.i.i.i = icmp eq i32 %i.fj, 0
  br i1 %.not83.i.i.i.i.i, label %search_linux_map_for_section.exit.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.loopexit.i.i.i.i.i
  %i.fk = load ptr, ptr @PyExc_OSError, align 8, !tbaa !33
  %i.fl = tail call ptr @__errno_location() #11
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !7
  %i.fn = call ptr @strerror(i32 noundef %i.fm) #10
  %i.fo = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.fk, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.b, ptr noundef %i.fn) #10 ; 0 uses
  br label %search_linux_map_for_section.exit.thread.i.i.i.i

search_linux_map_for_section.exit.thread.i.i.i.i: ; preds = %bb.ah, %bb.n, %_PyErr_Occurred.exit91.thread.i.i.i.i.i, %bb.l, %bb.i, %_PyErr_Occurred.exit.thread.i.i.i.i.i, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.ai

search_linux_map_for_section.exit.i.i.i.i:        ; preds = %.loopexit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.fp = icmp eq i64 %.5.i.i.i.i.i, 0
  br i1 %i.fp, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %search_linux_map_for_section.exit.i.i.i.i, %search_linux_map_for_section.exit.thread.i.i.i.i
  %i.fq = call ptr @PyErr_GetRaisedException() #10
  %i.fr = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !33
  %i.fs = load i32, ptr %5, align 8, !tbaa !34    ; 2 uses
  %i.ft = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.fr, ptr noundef nonnull @.str.11, i32 noundef %i.fs) #10 ; 0 uses
  call void @_PyErr_ChainExceptions1(ptr noundef %i.fq) #10
  %i.fu = call ptr @PyErr_Occurred() #10
  %.not13.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not13.i.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fv = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !33
  %i.fw = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.fv, ptr noundef nonnull @.str.6, i32 noundef %i.fs) #10 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.fx = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !33
  %i.fy = call i32 @PyErr_ExceptionMatches(ptr noundef %i.fx) #10
  %.not14.i.i.i = icmp eq i32 %i.fy, 0
  br i1 %.not14.i.i.i, label %bb.al, label %send_exec_to_proc_handle.exit

end_hunk_15
begin_hunk_16

_PyErr_Occurred.exit.thread.i.i.i:                ; preds = %_PyErr_Occurred.exit.i.i.i, %bb.al
  %i.gd = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !33
  %i.ge = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.fz, ptr noundef %i.gd, ptr noundef nonnull @.str.7) #10 ; 0 uses
  br label %send_exec_to_proc_handle.exit

bb.am:                                            ; preds = %_PyErr_Occurred.exit.i.i.i
  %i.gf = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !33
  %i.gg = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.gf, ptr noundef nonnull @.str.7) #10 ; 0 uses
  br label %send_exec_to_proc_handle.exit

bb.an:                                            ; preds = %search_linux_map_for_section.exit.i.i.i.i
end_hunk_16
begin_hunk_17

bb.ao:                                            ; preds = %bb.an
  %i.gi = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !33
  %i.gj = call i32 @PyErr_ExceptionMatches(ptr noundef %i.gi) #10
  %.not17.i.i.i = icmp eq i32 %i.gj, 0
  br i1 %.not17.i.i.i, label %bb.ap, label %send_exec_to_proc_handle.exit

end_hunk_17
begin_hunk_18

_PyErr_Occurred.exit22.thread.i.i.i:              ; preds = %_PyErr_Occurred.exit22.i.i.i, %bb.ap
  %i.go = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !33
  %i.gp = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.gk, ptr noundef %i.go, ptr noundef nonnull @.str.8) #10 ; 0 uses
  br label %send_exec_to_proc_handle.exit

bb.aq:                                            ; preds = %_PyErr_Occurred.exit22.i.i.i
  %i.gq = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !33
  %i.gr = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.gq, ptr noundef nonnull @.str.8) #10 ; 0 uses
  br label %send_exec_to_proc_handle.exit

_Py_RemoteDebug_ReadDebugOffsets.exit.i.i:        ; preds = %bb.an
end_hunk_18
begin_hunk_19

bb.ar:                                            ; preds = %_Py_RemoteDebug_ReadDebugOffsets.exit.i.i
  %i.gs = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !33
  call void @PyErr_SetString(ptr noundef %i.gs, ptr noundef nonnull @.str.30) #10
  br label %send_exec_to_proc_handle.exit

bb.as:                                            ; preds = %_Py_RemoteDebug_ReadDebugOffsets.exit.i.i
end_hunk_19
begin_hunk_20

bb.au:                                            ; preds = %bb.at
  %i.gv = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !33
  call void @PyErr_SetString(ptr noundef %i.gv, ptr noundef nonnull @.str.31) #10
  br label %send_exec_to_proc_handle.exit

bb.av:                                            ; preds = %bb.as
end_hunk_20
begin_hunk_21

bb.aw:                                            ; preds = %bb.av
  %i.gx = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !33
  call void @PyErr_SetString(ptr noundef %i.gx, ptr noundef nonnull @.str.32) #10
  br label %send_exec_to_proc_handle.exit

.thread.i.i.i:                                    ; preds = %bb.av, %bb.at
end_hunk_21
begin_hunk_22

bb.ax:                                            ; preds = %.thread.i.i.i
  %i.hf = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !33
  %i.hg = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.hf, ptr noundef nonnull @.str.33, i32 noundef 3, i32 noundef 15, i32 noundef %i.ha, i32 noundef %i.hc) #10 ; 0 uses
  br label %send_exec_to_proc_handle.exit

bb.ay:                                            ; preds = %.thread.i.i.i
end_hunk_22
begin_hunk_23

bb.az:                                            ; preds = %bb.ay
  %i.hj = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !33
  call void @PyErr_SetString(ptr noundef %i.hj, ptr noundef nonnull @.str.34) #10
  br label %send_exec_to_proc_handle.exit

read_offsets.exit.i:                              ; preds = %bb.ay
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.hm = add i64 %i.hl, %.5.i.i.i.i.i
  %i.hn = call fastcc range(i32 -1, 1) i32 @_Py_RemoteDebug_ReadRemoteMemory(ptr noundef nonnull %5, i64 noundef %i.hm, i64 noundef 8, ptr noundef nonnull %i.e)
  %.not22.i = icmp eq i32 %i.hn, 0
end_hunk_23
begin_hunk_24

bb.bb:                                            ; preds = %bb.ba
  %i.hq = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !33
  call void @PyErr_SetString(ptr noundef %i.hq, ptr noundef nonnull @.str.1) #10
  br label %bb.by

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  store i32 0, ptr %i.f, align 4, !tbaa !7
  %i.hr = getelementptr inbounds nuw i8, ptr %4, i64 776 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %4, i64 792
end_hunk_24
begin_hunk_25

bb.be:                                            ; preds = %bb.bd
  %i.hx = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !33
  call void @PyErr_SetString(ptr noundef %i.hx, ptr noundef nonnull @.str.2) #10
  br label %bb.bx

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  store i64 0, ptr %i.h, align 8, !tbaa !51
  %.not25.i = icmp eq i32 %1, 0
  %i.hy = load i64, ptr %i.e, align 8, !tbaa !51  ; 2 uses
end_hunk_25
begin_hunk_26

.thread.i:                                        ; preds = %bb.bh, %bb.bl
  %i.iq = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !33
  call void @PyErr_SetString(ptr noundef %i.iq, ptr noundef nonnull @.str.3) #10
  br label %.loopexit.i

bb.bm:                                            ; preds = %bb.bf
end_hunk_26
begin_hunk_27

bb.bo:                                            ; preds = %bb.bn
  %i.ix = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !33
  call void @PyErr_SetString(ptr noundef %i.ix, ptr noundef nonnull @.str.4) #10
  br label %.loopexit.i

bb.bp:                                            ; preds = %bb.bn, %bb.bl
  %i.iy = phi i64 [ %i.iv, %bb.bn ], [ %.pr.i, %bb.bl ]
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 816
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !102
  %i.jb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #12 ; 2 uses
  %.not31.i = icmp ugt i64 %i.ja, %i.jb
  br i1 %.not31.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jc = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !33
  call void @PyErr_SetString(ptr noundef %i.jc, ptr noundef nonnull @.str.5) #10
  br label %.loopexit.i

bb.br:                                            ; preds = %bb.bp
end_hunk_27
begin_hunk_28
  br i1 %.not32.i, label %bb.bs, label %.loopexit.i

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  store i32 1, ptr %i.i, align 4, !tbaa !7
  %i.jl = load i64, ptr %i.g, align 8, !tbaa !51
  %i.jm = load i64, ptr %i.jd, align 8, !tbaa !103
end_hunk_28
begin_hunk_29
  br i1 %.not33.i, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  %i.js = load i64, ptr %i.g, align 8, !tbaa !51
  %i.jt = load i64, ptr %i.hr, align 8, !tbaa !106
  %i.ju = add i64 %i.jt, %i.js
end_hunk_29
begin_hunk_30

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.0.i = phi i32 [ -1, %bb.bt ], [ %..i, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bs
  %.1.i = phi i32 [ %.0.i, %bb.bv ], [ -1, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.bk, %bb.bi, %bb.bw, %bb.br, %bb.bq, %bb.bo, %bb.bm, %.thread.i, %bb.bg
  %.3.i = phi i32 [ -1, %bb.bo ], [ -1, %bb.bg ], [ -1, %.thread.i ], [ -1, %bb.bq ], [ -1, %bb.bm ], [ %.1.i, %bb.bw ], [ -1, %bb.br ], [ -1, %bb.bi ], [ -1, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit.i, %bb.be, %bb.bc
  %.4.i = phi i32 [ %.3.i, %.loopexit.i ], [ -1, %bb.be ], [ -1, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bb, %read_offsets.exit.i
  %.5.i = phi i32 [ %.4.i, %bb.bx ], [ -1, %bb.bb ], [ -1, %read_offsets.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %send_exec_to_proc_handle.exit

send_exec_to_proc_handle.exit:                    ; preds = %bb.ak, %_PyErr_Occurred.exit.thread.i.i.i, %bb.am, %bb.ao, %_PyErr_Occurred.exit22.thread.i.i.i, %bb.aq, %bb.ar, %bb.au, %bb.aw, %bb.ax, %bb.az, %bb.by
  %.6.i = phi i32 [ %.5.i, %bb.by ], [ -1, %bb.aq ], [ -1, %bb.ak ], [ -1, %_PyErr_Occurred.exit.thread.i.i.i ], [ -1, %bb.am ], [ -1, %bb.ao ], [ -1, %_PyErr_Occurred.exit22.thread.i.i.i ], [ -1, %bb.ar ], [ -1, %bb.au ], [ -1, %bb.aw ], [ -1, %bb.ax ], [ -1, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.kc = load i32, ptr %i.s, align 4, !tbaa !36  ; 2 uses
  %.not.i.i = icmp eq i32 %i.kc, -1
  br i1 %.not.i.i, label %.preheader, label %bb.bz

bb.bz:                                            ; preds = %send_exec_to_proc_handle.exit
  %i.kd = call i32 @close(i32 noundef %i.kc) #10  ; 0 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.bz, %send_exec_to_proc_handle.exit
end_hunk_30
begin_hunk_31
  br i1 %.not.i.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @PyMem_RawFree(ptr noundef nonnull %i.kg) #10
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
end_hunk_31
begin_hunk_32
  br i1 %exitcond.not.i.i.i, label %cleanup_proc_handle.exit, label %bb.ca, !llvm.loop !107

cleanup_proc_handle.exit:                         ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.cd

bb.cd:                                            ; preds = %cleanup_proc_handle.exit, %bb.b
end_hunk_32
begin_hunk_33
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.c

end_hunk_33
begin_hunk_34
  store i64 %i.e, ptr %i.c, align 8, !tbaa !110
  %i.f = add i64 %.016.i.i, %1
  %i.g = load i32, ptr %i.a, align 4, !tbaa !36
  %i.h = call i64 @pwritev64(i32 noundef %i.g, ptr noundef nonnull %5, i32 noundef 1, i64 noundef %i.f) #10 ; 3 uses
  %i.i = icmp sgt i64 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @PyExc_OSError, align 8, !tbaa !33
  %i.k = call ptr @PyErr_SetFromErrno(ptr noundef %i.j) #10 ; 0 uses
  br label %_Py_RemoteDebug_WriteRemoteMemoryFallback.exit.i

bb.e:                                             ; preds = %bb.c
end_hunk_34
begin_hunk_35

_Py_RemoteDebug_WriteRemoteMemoryFallback.exit.i: ; preds = %bb.e, %bb.d
  %.2.i.i = phi i32 [ -1, %bb.d ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_Py_RemoteDebug_WriteRemoteMemory.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.o = inttoptr i64 %1 to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
end_hunk_35
begin_hunk_36
  store ptr %i.s, ptr %7, align 16, !tbaa !108
  store i64 %i.r, ptr %i.p, align 8, !tbaa !110
  %i.t = load i32, ptr %0, align 8, !tbaa !34
  %i.u = call i64 @process_vm_writev(i32 noundef %i.t, ptr noundef nonnull %6, i64 noundef 1, ptr noundef nonnull %7, i64 noundef 1, i64 noundef 0) #10 ; 3 uses
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.w = tail call ptr @__errno_location() #11    ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !7
  %i.y = icmp eq i32 %i.x, 38
  br i1 %i.y, label %bb.i, label %bb.o
end_hunk_36
begin_hunk_37
  br i1 %i.ac, label %_Py_RemoteDebug_WriteRemoteMemoryFallback.exit46.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.l

end_hunk_37
begin_hunk_38
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !110
  %i.ag = add i64 %.016.i41.i, %1
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !36
  %i.ai = call i64 @pwritev64(i32 noundef %i.ah, ptr noundef nonnull %4, i32 noundef 1, i64 noundef %i.ag) #10 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  br i1 %i.aj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load ptr, ptr @PyExc_OSError, align 8, !tbaa !33
  %i.al = call ptr @PyErr_SetFromErrno(ptr noundef %i.ak) #10 ; 0 uses
  br label %.loopexit.i42.i

bb.n:                                             ; preds = %bb.l
end_hunk_38
begin_hunk_39

.loopexit.i42.i:                                  ; preds = %bb.n, %bb.m
  %.2.i43.i = phi i32 [ -1, %bb.m ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_Py_RemoteDebug_WriteRemoteMemoryFallback.exit46.i

bb.o:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr @PyExc_OSError, align 8, !tbaa !33
  %i.ap = call ptr @PyErr_SetFromErrno(ptr noundef %i.ao) #10 ; 0 uses
  %i.aq = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !33
  %i.ar = call i32 @PyErr_ExceptionMatches(ptr noundef %i.aq) #10
  %.not39.i = icmp eq i32 %i.ar, 0
  br i1 %.not39.i, label %bb.p, label %_Py_RemoteDebug_WriteRemoteMemoryFallback.exit46.i

end_hunk_39
begin_hunk_40
  %i.ay = load i32, ptr %0, align 8, !tbaa !34
  %i.az = add i64 %.036.i, %1
  %i.ba = load i32, ptr %i.w, align 4, !tbaa !7
  %i.bb = call ptr @strerror(i32 noundef %i.ba) #10
  %i.bc = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.at, ptr noundef %i.ax, ptr noundef nonnull @.str.35, i32 noundef %i.ay, i64 noundef %i.az, i64 noundef %i.r, i64 noundef %.036.i, ptr noundef %i.bb) #10 ; 0 uses
  br label %_Py_RemoteDebug_WriteRemoteMemoryFallback.exit46.i

bb.q:                                             ; preds = %_PyErr_Occurred.exit.i
end_hunk_40
begin_hunk_41
  %i.be = load i32, ptr %0, align 8, !tbaa !34
  %i.bf = add i64 %.036.i, %1
  %i.bg = load i32, ptr %i.w, align 4, !tbaa !7
  %i.bh = call ptr @strerror(i32 noundef %i.bg) #10
  %i.bi = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.bd, ptr noundef nonnull @.str.35, i32 noundef %i.be, i64 noundef %i.bf, i64 noundef %i.r, i64 noundef %.036.i, ptr noundef %i.bh) #10 ; 0 uses
  br label %_Py_RemoteDebug_WriteRemoteMemoryFallback.exit46.i

bb.r:                                             ; preds = %bb.g
end_hunk_41
begin_hunk_42

_Py_RemoteDebug_WriteRemoteMemoryFallback.exit46.i: ; preds = %bb.r, %bb.q, %_PyErr_Occurred.exit.thread.i, %bb.o, %.loopexit.i42.i, %bb.j
  %.0.i = phi i32 [ -1, %bb.j ], [ -1, %bb.o ], [ -1, %_PyErr_Occurred.exit.thread.i ], [ -1, %bb.q ], [ %.2.i43.i, %.loopexit.i42.i ], [ 0, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %_Py_RemoteDebug_WriteRemoteMemory.exit

_Py_RemoteDebug_WriteRemoteMemory.exit:           ; preds = %_Py_RemoteDebug_WriteRemoteMemoryFallback.exit.i, %_Py_RemoteDebug_WriteRemoteMemoryFallback.exit46.i
end_hunk_42
begin_hunk_43
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.d
end_hunk_43
begin_hunk_44
  store ptr %i.i, ptr %5, align 16, !tbaa !108
  store i64 %i.g, ptr %i.e, align 8, !tbaa !110
  %i.j = load i32, ptr %0, align 8, !tbaa !34
  %i.k = call i64 @process_vm_readv(i32 noundef %i.j, ptr noundef nonnull %4, i64 noundef 1, ptr noundef nonnull %5, i64 noundef 1, i64 noundef 0) #10 ; 3 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @__errno_location() #11    ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7
  %i.o = icmp eq i32 %i.n, 38
  br i1 %i.o, label %bb.f, label %bb.g
end_hunk_44
begin_hunk_45

bb.g:                                             ; preds = %bb.e
  %i.q = load ptr, ptr @PyExc_OSError, align 8, !tbaa !33
  %i.r = call ptr @PyErr_SetFromErrno(ptr noundef %i.q) #10 ; 0 uses
  %i.s = load i32, ptr %i.m, align 4, !tbaa !7
  %i.t = icmp eq i32 %i.s, 3
  br i1 %i.t, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !33
  %i.v = call i32 @PyErr_ExceptionMatches(ptr noundef %i.u) #10
  %.not39 = icmp eq i32 %i.v, 0
  br i1 %.not39, label %bb.i, label %.loopexit

end_hunk_45
begin_hunk_46
  %i.ab = load ptr, ptr @PyExc_OSError, align 8, !tbaa !33
  %i.ac = load i32, ptr %0, align 8, !tbaa !34
  %i.ad = load i32, ptr %i.m, align 4, !tbaa !7
  %i.ae = call ptr @strerror(i32 noundef %i.ad) #10
  %i.af = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.x, ptr noundef %i.ab, ptr noundef nonnull @.str.26, i32 noundef %i.ac, i64 noundef %i.h, i64 noundef %i.g, i64 noundef %.036, ptr noundef %i.ae) #10 ; 0 uses
  br label %.loopexit

bb.j:                                             ; preds = %_PyErr_Occurred.exit
  %i.ag = load ptr, ptr @PyExc_OSError, align 8, !tbaa !33
  %i.ah = load i32, ptr %0, align 8, !tbaa !34
  %i.ai = load i32, ptr %i.m, align 4, !tbaa !7
  %i.aj = call ptr @strerror(i32 noundef %i.ai) #10
  %i.ak = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.ag, ptr noundef nonnull @.str.26, i32 noundef %i.ah, i64 noundef %i.h, i64 noundef %i.g, i64 noundef %.036, ptr noundef %i.aj) #10 ; 0 uses
  br label %.loopexit

bb.k:                                             ; preds = %bb.d
end_hunk_46
begin_hunk_47

.loopexit:                                        ; preds = %bb.k, %bb.h, %bb.j, %_PyErr_Occurred.exit.thread, %bb.g, %bb.f
  %.0 = phi i32 [ %i.p, %bb.f ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %_PyErr_Occurred.exit.thread ], [ -1, %bb.j ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %bb.b
end_hunk_47
begin_hunk_48
  br i1 %i.e, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.d

end_hunk_48
begin_hunk_49
  store i64 %i.h, ptr %i.f, align 8, !tbaa !110
  %i.i = add i64 %.030, %1                        ; 3 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !36
  %i.k = call i64 @preadv64(i32 noundef %i.j, ptr noundef nonnull %4, i32 noundef 1, i64 noundef %i.i) #10 ; 3 uses
  %i.l = icmp sgt i64 %i.k, -1
  br i1 %i.l, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @PyExc_OSError, align 8, !tbaa !33
  %i.n = call ptr @PyErr_SetFromErrno(ptr noundef %i.m) #10 ; 0 uses
  %i.o = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !33
  %i.p = call i32 @PyErr_ExceptionMatches(ptr noundef %i.o) #10
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.f, label %.thread

end_hunk_49
begin_hunk_50
_PyErr_Occurred.exit.thread:                      ; preds = %bb.f, %_PyErr_Occurred.exit
  %i.v = load ptr, ptr @PyExc_OSError, align 8, !tbaa !33
  %i.w = load i32, ptr %0, align 8, !tbaa !34
  %i.x = tail call ptr @__errno_location() #11
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7
  %i.z = call ptr @strerror(i32 noundef %i.y) #10
  %i.aa = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.r, ptr noundef %i.v, ptr noundef nonnull @.str.27, i32 noundef %i.w, i64 noundef %i.i, i64 noundef %i.h, i64 noundef %.030, ptr noundef %i.z) #10 ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %_PyErr_Occurred.exit
  %i.ab = load ptr, ptr @PyExc_OSError, align 8, !tbaa !33
  %i.ac = load i32, ptr %0, align 8, !tbaa !34
  %i.ad = tail call ptr @__errno_location() #11
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.af = call ptr @strerror(i32 noundef %i.ae) #10
  %i.ag = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.ab, ptr noundef nonnull @.str.27, i32 noundef %i.ac, i64 noundef %i.i, i64 noundef %i.h, i64 noundef %.030, ptr noundef %i.af) #10 ; 0 uses
  br label %.thread

bb.h:                                             ; preds = %bb.d
end_hunk_50
begin_hunk_51

.thread:                                          ; preds = %bb.h, %_PyErr_Occurred.exit.thread, %bb.g, %bb.e
  %.2 = phi i32 [ -1, %_PyErr_Occurred.exit.thread ], [ -1, %bb.e ], [ -1, %bb.g ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %.thread
end_hunk_51
begin_hunk_52
define internal fastcc range(i32 -1, 1) i32 @open_proc_mem_fd(ptr noundef captures(none) initializes((4, 8)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = load i32, ptr %0, align 8, !tbaa !34
  %i.c = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %i.b) #10 ; 0 uses
  %i.d = call i32 (ptr, i32, ...) @open64(ptr noundef nonnull %i.a, i32 noundef 2) #10 ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 4
  store i32 %i.d, ptr %i.e, align 4, !tbaa !36
  %i.f = icmp eq i32 %i.d, -1
end_hunk_52
begin_hunk_53

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @PyExc_OSError, align 8, !tbaa !33
  %i.h = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.g) #10 ; 0 uses
  %i.i = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !33
  %i.j = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.i) #10
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.e

end_hunk_53
begin_hunk_54

_PyErr_Occurred.exit.thread:                      ; preds = %bb.c, %_PyErr_Occurred.exit
  %i.p = load ptr, ptr @PyExc_OSError, align 8, !tbaa !33
  %i.q = tail call ptr @__errno_location() #11
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7
  %i.s = tail call ptr @strerror(i32 noundef %i.r) #10
  %i.t = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.l, ptr noundef %i.p, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.a, ptr noundef %i.s) #10 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %_PyErr_Occurred.exit
  %i.u = load ptr, ptr @PyExc_OSError, align 8, !tbaa !33
  %i.v = tail call ptr @__errno_location() #11
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  %i.x = tail call ptr @strerror(i32 noundef %i.w) #10
  %i.y = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.u, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.a, ptr noundef %i.x) #10 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.d, %_PyErr_Occurred.exit.thread
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %_PyErr_Occurred.exit.thread ], [ -1, %bb.d ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

end_hunk_54
begin_hunk_55
declare i64 @pwritev64(i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @PyMem_RawFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_55
begin_hunk_56
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
end_hunk_56
