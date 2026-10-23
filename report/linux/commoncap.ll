Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/commoncap?download=true
inline.NumInlined: 160
inline.NumDeleted: 64
begin_hunk_0_@cap_convert_nscap:bb.a

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr i8, ptr %i.x, i64 20
  store i32 %i.v, ptr %i.y, align 4
  %i.z = load i32, ptr %i.a, align 4
  %i.aa = and i32 %i.z, 1
  %spec.select = or disjoint i32 %i.aa, 50331648
  store i32 %spec.select, ptr %i.x, align 8
  %i.ab = getelementptr i8, ptr %i.x, i64 4
  %i.ac = getelementptr i8, ptr %i.a, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %i.ab, ptr noundef align 4 dereferenceable(16) %i.ac, i64 16, i1 false)
  store ptr %i.x, ptr %2, align 8
  br label %validheader.exit.thread

validheader.exit.thread:                          ; preds = %bb.b, %bb.h, %rootid_from_xattr.exit.thread, %rootid_from_xattr.exit, %bb.f, %bb.d, %validheader.exit, %bb.a, %bb.i
  %.0 = phi i32 [ -1, %bb.d ], [ -22, %rootid_from_xattr.exit.thread ], [ 24, %bb.i ], [ -12, %bb.h ], [ -22, %rootid_from_xattr.exit ], [ 20, %bb.f ], [ -22, %validheader.exit ], [ -22, %bb.a ], [ -22, %bb.b ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @capable_wrt_inode_uidgid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @from_vfsuid(ptr noundef, ptr noundef, i32) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @get_vfs_caps_from_disk(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %2) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.vfs_ns_cap_data, align 4    ; 10 uses
  %i.a = getelementptr i8, ptr %1, i64 48
  %.val = load ptr, ptr %i.a, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i64 24, i1 false), !annotation !15
  %i.b = getelementptr i8, ptr %.val, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 1088
  %i.e = load ptr, ptr %i.d, align 64
  %i.f = call i64 @__vfs_getxattr(ptr noundef %1, ptr noundef nonnull %.val, ptr noundef @.str.2, ptr noundef nonnull %3, i64 noundef 24) #16 ; 2 uses
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  switch i32 %i.g, label %bb.c [
    i32 -61, label %bb.n
    i32 -95, label %bb.n
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = and i64 %i.f, 2147483647                 ; 4 uses
  %i.j = icmp samesign ult i64 %i.i, 4
  br i1 %i.j, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %3, align 4                ; 2 uses
  store i32 %i.k, ptr %2, align 8
  %i.l = and i32 %i.k, -16777216                  ; 2 uses
  switch i32 %i.l, label %bb.n [
    i32 16777216, label %bb.f
    i32 33554432, label %bb.g
    i32 50331648, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %.not47 = icmp eq i64 %i.i, 12
  br i1 %.not47, label %bb.j, label %bb.n

bb.g:                                             ; preds = %bb.e
  %.not46 = icmp eq i64 %i.i, 20
  br i1 %.not46, label %bb.j, label %bb.n

bb.h:                                             ; preds = %bb.e
  %.not45 = icmp eq i64 %i.i, 24
  br i1 %.not45, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.n = load i32, ptr %i.m, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.i
  %.sroa.010.0 = phi i32 [ 0, %bb.f ], [ 0, %bb.g ], [ %i.n, %bb.i ]
  %i.o = call i32 @make_vfsuid(ptr noundef %0, ptr noundef %i.e, i32 %.sroa.010.0) #16
  %cond = icmp eq i32 %i.o, 0
  br i1 %cond, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr i8, ptr %2, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load i32, ptr %i.t, align 4
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr i8, ptr %2, i64 16
  %.not48 = icmp eq i32 %i.l, 16777216
  br i1 %.not48, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.y = load i32, ptr %i.x, align 4
  %i.z = zext i32 %i.y to i64
  %i.aa = shl nuw i64 %i.z, 32
  %i.ab = or disjoint i64 %i.aa, %i.r
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = zext i32 %i.ad to i64
  %i.af = shl nuw i64 %i.ae, 32
  %i.ag = or disjoint i64 %i.af, %i.v
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ah = phi i64 [ %i.ag, %bb.l ], [ %i.v, %bb.k ]
  %i.ai = phi i64 [ %i.ab, %bb.l ], [ %i.r, %bb.k ]
  %i.aj = and i64 %i.ai, 2199023255551
  store i64 %i.aj, ptr %i.s, align 8
  %i.ak = and i64 %i.ah, 2199023255551
  store i64 %i.ak, ptr %i.w, align 8
  %i.al = getelementptr i8, ptr %2, i64 4
  store i32 0, ptr %i.al, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.e, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b, %bb.b, %bb.a, %bb.m
  %.0 = phi i32 [ -61, %bb.a ], [ -61, %bb.b ], [ %i.g, %bb.c ], [ -22, %bb.h ], [ -22, %bb.d ], [ 0, %bb.m ], [ -61, %bb.j ], [ -22, %bb.e ], [ -22, %bb.f ], [ -22, %bb.g ], [ -61, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @cap_bprm_creds_from_file(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #1 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.cpu_vfs_cap_data, align 8   ; 7 uses
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #19, !srcloc !27
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 1992     ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 7 uses
  %i.e = getelementptr i8, ptr %0, i64 88         ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 21 uses
  %i.g = getelementptr i8, ptr %i.d, i64 80       ; 2 uses
  %i.h = getelementptr i8, ptr %i.d, i64 56       ; 5 uses
  %i.i = getelementptr i8, ptr %i.d, i64 48
  %i.j = load i64, ptr %i.h, align 8
  %i.k = load i64, ptr %i.i, align 8
  %i.l = and i64 %i.k, %i.j
  %i.m = load i64, ptr %i.g, align 8
  %i.n = xor i64 %i.l, -1
  %i.o = and i64 %i.m, %i.n
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %.critedge, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "743: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 743b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 743) #17, !srcloc !34
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 928, i32 2305, i64 16) #17, !srcloc !35
  tail call void asm sideeffect "744: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 744b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 744) #17, !srcloc !36
  br label %bb.ar

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.p = getelementptr i8, ptr %i.f, i64 56       ; 8 uses
  store i64 0, ptr %i.p, align 8
  %i.q = load i32, ptr @file_caps_enabled, align 4
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.r = getelementptr i8, ptr %1, i64 64         ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call zeroext i1 @mnt_may_suid(ptr noundef %i.s) #16
  br i1 %i.t, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.r, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %i.w = load volatile ptr, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %1, i64 72
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call i32 @get_vfs_caps_from_disk(ptr noundef %i.w, ptr noundef %i.y, ptr noundef nonnull %2) #21 ; 3 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  switch i32 %i.z, label %get_file_caps.exit [
    i32 -22, label %bb.f
    i32 -61, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr i8, ptr %0, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.17, ptr noundef %i.ac) #22 ; 0 uses
  br label %get_file_caps.exit

bb.g:                                             ; preds = %bb.d
  %.val.i = load ptr, ptr %i.e, align 8           ; 3 uses
  %i.ae = load i32, ptr %2, align 8               ; 2 uses
  %.not.i.i89 = trunc i32 %i.ae to i8
  %spec.select = and i8 %.not.i.i89, 1            ; 2 uses
  %.not13.i.i = icmp ugt i32 %i.ae, 16777215
  %i.af = getelementptr i8, ptr %.val.i, i64 72
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = and i64 %i.ai, %i.ag
  %i.ak = getelementptr i8, ptr %.val.i, i64 48
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = and i64 %i.an, %i.al
  %i.ap = or i64 %i.ao, %i.aj                     ; 2 uses
  %i.aq = getelementptr i8, ptr %.val.i, i64 56
  store i64 %i.ap, ptr %i.aq, align 8
  %i.ar = xor i64 %i.ap, -1
  %i.as = and i64 %i.ai, %i.ar
  %.not14.i.i = icmp eq i64 %i.as, 0
  %.not24.i = icmp eq i8 %spec.select, 0
  %narrow.i.not.i = select i1 %.not24.i, i1 true, i1 %.not14.i.i
  br i1 %narrow.i.not.i, label %bb.h, label %get_file_caps.exit

get_file_caps.exit:                               ; preds = %bb.e, %bb.f, %bb.g
  %.01520.i = phi i32 [ -1, %bb.g ], [ %i.z, %bb.e ], [ -22, %bb.f ]
  %i.at = load ptr, ptr %i.e, align 8
  %i.au = getelementptr i8, ptr %i.at, i64 56
  store i64 0, ptr %i.au, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.ar

bb.h:                                             ; preds = %bb.c, %.critedge, %bb.g, %bb.e
  %.2115.ph = phi i8 [ 0, %bb.c ], [ %spec.select, %bb.g ], [ 0, %bb.e ], [ 0, %.critedge ] ; 5 uses
  %.2.ph = phi i1 [ false, %bb.c ], [ %.not13.i.i, %bb.g ], [ false, %bb.e ], [ false, %.critedge ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.av = getelementptr i8, ptr %i.f, i64 144     ; 2 uses
  %i.aw = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.ax = load ptr, ptr %i.e, align 8             ; 6 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 40
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = and i32 %i.az, 1
  %.not.i.i90 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i90, label %bb.i, label %handle_privileged_root.exit

bb.i:                                             ; preds = %bb.h
  br i1 %.2.ph, label %bb.j, label %__is_suid.exit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr i8, ptr %i.ax, i64 8
  %.val.i.i = load i32, ptr %i.bb, align 8
  %i.bc = icmp eq i32 %.val.i.i, 0
  br i1 %i.bc, label %__is_suid.exit.thread.i, label %__is_suid.exit.i

__is_suid.exit.i:                                 ; preds = %bb.j
  %i.bd = getelementptr i8, ptr %i.ax, i64 24
  %.val3.i.i = load i32, ptr %i.bd, align 8
  %i.be = icmp eq i32 %.val3.i.i, 0
  br i1 %i.be, label %bb.k, label %__is_suid.exit.thread.i

bb.k:                                             ; preds = %__is_suid.exit.i
  %.b.i.i = load i1, ptr @warn_setuid_and_fcaps_mixed.warned, align 4
  br i1 %.b.i.i, label %handle_privileged_root.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr i8, ptr %0, i64 112
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.18, ptr noundef %i.bg) #22 ; 0 uses
  store i1 true, ptr @warn_setuid_and_fcaps_mixed.warned, align 4
  br label %handle_privileged_root.exit

__is_suid.exit.thread.i:                          ; preds = %__is_suid.exit.i, %bb.j, %bb.i
  %i.bi = getelementptr i8, ptr %i.ax, i64 24
  %.val16.i = load i32, ptr %i.bi, align 8
  %i.bj = icmp eq i32 %.val16.i, 0
  br i1 %i.bj, label %bb.o, label %bb.m

bb.m:                                             ; preds = %__is_suid.exit.thread.i
  %i.bk = getelementptr i8, ptr %i.ax, i64 8
  %.val.i91 = load i32, ptr %i.bk, align 8
  %i.bl = icmp eq i32 %.val.i91, 0
  br i1 %i.bl, label %bb.n, label %handle_privileged_root.exit

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr i8, ptr %i.ax, i64 56
  %i.bn = getelementptr i8, ptr %i.aw, i64 72
  %i.bo = getelementptr i8, ptr %i.aw, i64 48
  %i.bp = load i64, ptr %i.bn, align 8
  %i.bq = load i64, ptr %i.bo, align 8
  %i.br = or i64 %i.bq, %i.bp
  store i64 %i.br, ptr %i.bm, align 8
  br label %handle_privileged_root.exit

bb.o:                                             ; preds = %__is_suid.exit.thread.i
  %i.bs = getelementptr i8, ptr %i.ax, i64 56
  %i.bt = getelementptr i8, ptr %i.aw, i64 72
  %i.bu = getelementptr i8, ptr %i.aw, i64 48
  %i.bv = load i64, ptr %i.bt, align 8
  %i.bw = load i64, ptr %i.bu, align 8
  %i.bx = or i64 %i.bw, %i.bv
  store i64 %i.bx, ptr %i.bs, align 8
  br label %handle_privileged_root.exit

handle_privileged_root.exit:                      ; preds = %bb.h, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.3 = phi i8 [ 1, %bb.o ], [ %.2115.ph, %bb.n ], [ %.2115.ph, %bb.m ], [ %.2115.ph, %bb.k ], [ %.2115.ph, %bb.l ], [ %.2115.ph, %bb.h ]
  %i.by = load i64, ptr %i.p, align 8
  %i.bz = load i64, ptr %i.h, align 8
  %i.ca = xor i64 %i.bz, -1
  %i.cb = and i64 %i.by, %i.ca
  %.not.i92 = icmp eq i64 %i.cb, 0
  br i1 %.not.i92, label %bb.q, label %bb.p

bb.p:                                             ; preds = %handle_privileged_root.exit
  %i.cc = getelementptr i8, ptr %0, i64 100       ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = or i32 %i.cd, 7602176
  store i32 %i.ce, ptr %i.cc, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %handle_privileged_root.exit
  %i.cf = getelementptr i8, ptr %i.f, i64 24      ; 4 uses
  %i.cg = getelementptr i8, ptr %i.d, i64 24      ; 2 uses
  %i.ch = load i32, ptr %i.cf, align 8
  %i.ci = load i32, ptr %i.cg, align 8
  %i.cj = icmp eq i32 %i.ch, %i.ci
  br i1 %i.cj, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.ck = getelementptr i8, ptr %i.f, i64 28
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = tail call i32 @in_group_p(i32 %i.cl) #16
  %.not = icmp eq i32 %i.cm, 0
  br i1 %.not, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = load i64, ptr %i.p, align 8
  %i.co = load i64, ptr %i.h, align 8
  %i.cp = xor i64 %i.co, -1
  %i.cq = and i64 %i.cn, %i.cp
  %.not.i93 = icmp eq i64 %i.cq, 0
  br i1 %.not.i93, label %bb.y, label %.thread

.thread:                                          ; preds = %bb.q, %bb.s, %bb.r
  %i.cr = phi i1 [ true, %bb.r ], [ false, %bb.s ], [ true, %bb.q ] ; 2 uses
  %i.cs = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8
  %i.cu = and i32 %i.ct, -3
  %.not83 = icmp eq i32 %i.cu, 0
  br i1 %.not83, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread
  %i.cv = load ptr, ptr %i.av, align 8
  %i.cw = tail call zeroext i1 @ptracer_capable(ptr noundef %i.b, ptr noundef %i.cv) #16
  br i1 %i.cw, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread
  %i.cx = load ptr, ptr %i.av, align 8
  %i.cy = tail call zeroext i1 @ns_capable(ptr noundef %i.cx, i32 noundef 7) #16
  br i1 %i.cy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cz = load i32, ptr %i.cs, align 8
  %i.da = and i32 %i.cz, 4
  %.not84 = icmp eq i32 %i.da, 0
  br i1 %.not84, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.db = getelementptr i8, ptr %i.f, i64 8
  %i.dc = load i32, ptr %i.db, align 8
  store i32 %i.dc, ptr %i.cf, align 8
  %i.dd = getelementptr i8, ptr %i.f, i64 28
  %i.de = getelementptr i8, ptr %i.f, i64 12
  %i.df = load i32, ptr %i.de, align 4
  store i32 %i.df, ptr %i.dd, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dg = load i64, ptr %i.p, align 8
  %i.dh = load i64, ptr %i.h, align 8
  %i.di = and i64 %i.dh, %i.dg
  store i64 %i.di, ptr %i.p, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.t, %bb.s
  %i.dj = phi i1 [ %i.cr, %bb.x ], [ %i.cr, %bb.t ], [ false, %bb.s ] ; 2 uses
  %i.dk = getelementptr i8, ptr %i.f, i64 16
  %i.dl = getelementptr i8, ptr %i.f, i64 32
  %i.dm = load i32, ptr %i.cf, align 8            ; 5 uses
  store i32 %i.dm, ptr %i.dl, align 8
  store i32 %i.dm, ptr %i.dk, align 8
  %i.dn = getelementptr i8, ptr %i.f, i64 20
  %i.do = getelementptr i8, ptr %i.f, i64 36
  %i.dp = getelementptr i8, ptr %i.f, i64 28      ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4            ; 2 uses
  store i32 %i.dq, ptr %i.do, align 4
  store i32 %i.dq, ptr %i.dn, align 4
  %or.cond = or i1 %.2.ph, %i.dj
  %i.dr = getelementptr i8, ptr %i.f, i64 80      ; 2 uses
  br i1 %or.cond, label %bb.z, label %._crit_edge

._crit_edge:                                      ; preds = %bb.y
  %.pre = load i64, ptr %i.dr, align 8
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i64 0, ptr %i.dr, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge, %bb.z
  %i.ds = phi i64 [ %.pre, %._crit_edge ], [ 0, %bb.z ] ; 9 uses
  %i.dt = getelementptr i8, ptr %i.f, i64 80
  %i.du = load i64, ptr %i.p, align 8
  %i.dv = or i64 %i.ds, %i.du                     ; 8 uses
  store i64 %i.dv, ptr %i.p, align 8
  %3 = trunc nuw i8 %.3 to i1                     ; 2 uses
  %spec.select.a = select i1 %3, i64 %i.dv, i64 %i.ds ; 4 uses
  %i.dw = getelementptr i8, ptr %i.f, i64 64
  store i64 %spec.select.a, ptr %i.dw, align 8
  %i.dx = getelementptr i8, ptr %i.f, i64 48      ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = and i64 %i.dy, %i.dv
  %i.ea = xor i64 %i.dz, -1                       ; 5 uses
  %i.eb = and i64 %i.ds, %i.ea
  %.not.i.i94 = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i94, label %.critedge86, label %bb.ab, !prof !13

bb.ab:                                            ; preds = %bb.aa
  tail call void asm sideeffect "745: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 745b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 745) #17, !srcloc !37
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 985, i32 2305, i64 16) #17, !srcloc !38
  tail call void asm sideeffect "746: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 746b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 746) #17, !srcloc !39
  br label %bb.ar

.critedge86:                                      ; preds = %bb.aa
  %.not.i.i95 = icmp eq i64 %i.ds, %spec.select.a
  br i1 %.not.i.i95, label %.critedge86.._crit_edge.i_crit_edge, label %bb.ac

.critedge86.._crit_edge.i_crit_edge:              ; preds = %.critedge86
  %.pre123 = load ptr, ptr %i.c, align 8
  %.phi.trans.insert124 = getelementptr i8, ptr %.pre123, i64 40
  %.pre125 = load i32, ptr %.phi.trans.insert124, align 8
  br label %._crit_edge.i

bb.ac:                                            ; preds = %.critedge86
  %i.ec = and i64 %spec.select.a, 2199023255551
  %.not.i19.i = icmp eq i64 %i.ec, 2199023255551
  br i1 %.not.i19.i, label %bb.ad, label %nonroot_raised_pE.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ed = icmp eq i32 %i.dm, 0
  br i1 %i.ed, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ee = getelementptr i8, ptr %i.f, i64 8
  %.val.i97 = load i32, ptr %i.ee, align 8
  %i.ef = icmp eq i32 %.val.i97, 0
  br i1 %i.ef, label %bb.af, label %nonroot_raised_pE.exit

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.eg = load ptr, ptr %i.c, align 8
  %i.eh = getelementptr i8, ptr %i.eg, i64 40
  %i.ei = load i32, ptr %i.eh, align 8            ; 2 uses
  %i.ej = and i32 %i.ei, 1
  %.not.i20.i = icmp eq i32 %i.ej, 0
  br i1 %.not.i20.i, label %._crit_edge.i, label %nonroot_raised_pE.exit

._crit_edge.i:                                    ; preds = %.critedge86.._crit_edge.i_crit_edge, %bb.af
  %i.ek = phi i32 [ %.pre125, %.critedge86.._crit_edge.i_crit_edge ], [ %i.ei, %bb.af ]
  %i.el = and i32 %i.ek, 1
  %.not.i21.i = icmp eq i32 %i.el, 0
  br i1 %.not.i21.i, label %bb.ag, label %__is_suid.exit.thread.i98

bb.ag:                                            ; preds = %._crit_edge.i
  %i.em = getelementptr i8, ptr %i.f, i64 8
  %.val.i.i99 = load i32, ptr %i.em, align 8
  %i.en = icmp eq i32 %.val.i.i99, 0
  br i1 %i.en, label %__is_suid.exit.thread.i98, label %__is_suid.exit.i100

__is_suid.exit.i100:                              ; preds = %bb.ag
  %i.eo = icmp ne i32 %i.dm, 0
  %i.ep = and i64 %spec.select.a, 2199023255551
  %.not.i22.i = icmp eq i64 %i.ep, 2199023255551
  %or.cond.i = or i1 %.not.i22.i, %i.eo
  br i1 %or.cond.i, label %__is_suid.exit.thread.i98, label %nonroot_raised_pE.exit

__is_suid.exit.thread.i98:                        ; preds = %__is_suid.exit.i100, %bb.ag, %._crit_edge.i
  %i.eq = load i32, ptr %i.cg, align 8
  %i.er = icmp eq i32 %i.dm, %i.eq
  br i1 %i.er, label %bb.ah, label %nonroot_raised_pE.exit.thread

bb.ah:                                            ; preds = %__is_suid.exit.thread.i98
  br i1 %.2.ph, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.es = load i64, ptr %i.h, align 8
  %i.et = xor i64 %i.es, -1
  %i.eu = and i64 %i.dv, %i.et
  %.not.i23.i = icmp eq i64 %i.eu, 0
  br i1 %.not.i23.i, label %bb.aj, label %nonroot_raised_pE.exit

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ev = load i64, ptr %i.g, align 8
  %i.ew = xor i64 %i.ev, -1
  %i.ex = and i64 %i.ds, %i.ew
  %.not.i24.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i24.i, label %nonroot_raised_pE.exit.thread, label %nonroot_raised_pE.exit

nonroot_raised_pE.exit:                           ; preds = %bb.aj, %bb.ai, %__is_suid.exit.i100, %bb.af, %bb.ae, %bb.ac
  %i.ey = getelementptr i8, ptr %i.b, i64 2192
  %i.ez = load ptr, ptr %i.ey, align 16           ; 2 uses
  %.not.i.i102 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i102, label %nonroot_raised_pE.exit.thread, label %audit_dummy_context.exit.i

audit_dummy_context.exit.i:                       ; preds = %nonroot_raised_pE.exit
  %i.fa = load i32, ptr %i.ez, align 4
  %.not.i103 = icmp eq i32 %i.fa, 0
  br i1 %.not.i103, label %audit_log_bprm_fcaps.exit, label %nonroot_raised_pE.exit.thread, !prof !40

audit_log_bprm_fcaps.exit:                        ; preds = %audit_dummy_context.exit.i
  %i.fb = tail call i32 @__audit_log_bprm_fcaps(ptr noundef %0, ptr noundef %i.f, ptr noundef %i.d) #16 ; 2 uses
  %i.fc = icmp slt i32 %i.fb, 0
  br i1 %i.fc, label %bb.ar, label %audit_log_bprm_fcaps.exit.nonroot_raised_pE.exit.thread_crit_edge

audit_log_bprm_fcaps.exit.nonroot_raised_pE.exit.thread_crit_edge: ; preds = %audit_log_bprm_fcaps.exit
  %.pre126 = load i64, ptr %i.p, align 8          ; 2 uses
  %.pre127 = load i64, ptr %i.dx, align 8
  %.pre128 = load i64, ptr %i.dt, align 8
  %.pre129 = and i64 %.pre127, %.pre126
  %.pre130 = xor i64 %.pre129, -1
  br label %nonroot_raised_pE.exit.thread

nonroot_raised_pE.exit.thread:                    ; preds = %audit_log_bprm_fcaps.exit.nonroot_raised_pE.exit.thread_crit_edge, %nonroot_raised_pE.exit, %audit_dummy_context.exit.i, %__is_suid.exit.thread.i98, %bb.aj
  %.pre-phi131 = phi i64 [ %.pre130, %audit_log_bprm_fcaps.exit.nonroot_raised_pE.exit.thread_crit_edge ], [ %i.ea, %nonroot_raised_pE.exit ], [ %i.ea, %audit_dummy_context.exit.i ], [ %i.ea, %__is_suid.exit.thread.i98 ], [ %i.ea, %bb.aj ]
  %i.fd = phi i64 [ %.pre128, %audit_log_bprm_fcaps.exit.nonroot_raised_pE.exit.thread_crit_edge ], [ %i.ds, %nonroot_raised_pE.exit ], [ %i.ds, %audit_dummy_context.exit.i ], [ %i.ds, %__is_suid.exit.thread.i98 ], [ %i.ds, %bb.aj ] ; 2 uses
  %i.fe = phi i64 [ %.pre126, %audit_log_bprm_fcaps.exit.nonroot_raised_pE.exit.thread_crit_edge ], [ %i.dv, %nonroot_raised_pE.exit ], [ %i.dv, %audit_dummy_context.exit.i ], [ %i.dv, %__is_suid.exit.thread.i98 ], [ %i.dv, %bb.aj ]
  %i.ff = getelementptr i8, ptr %i.f, i64 40      ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 8
  %i.fh = and i32 %i.fg, -17
  store i32 %i.fh, ptr %i.ff, align 8
  %i.fi = and i64 %i.fd, %.pre-phi131
  %.not.i.i105 = icmp eq i64 %i.fi, 0
  br i1 %.not.i.i105, label %.critedge88, label %bb.ak, !prof !13

bb.ak:                                            ; preds = %nonroot_raised_pE.exit.thread
  tail call void asm sideeffect "747: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 747b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 747) #17, !srcloc !41
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 996, i32 2305, i64 16) #17, !srcloc !42
  tail call void asm sideeffect "748: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 748b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 748) #17, !srcloc !43
  br label %bb.ar

.critedge88:                                      ; preds = %nonroot_raised_pE.exit.thread
  br i1 %i.dj, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %.critedge88
  %i.fj = getelementptr i8, ptr %i.d, i64 8
  %i.fk = load i32, ptr %i.cf, align 8
  %i.fl = load i32, ptr %i.fj, align 8
  %i.fm = icmp eq i32 %i.fk, %i.fl
  br i1 %i.fm, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.fn = getelementptr i8, ptr %i.d, i64 12
  %i.fo = load i32, ptr %i.dp, align 4
  %i.fp = load i32, ptr %i.fn, align 4
  %i.fq = icmp eq i32 %i.fo, %i.fp
  br i1 %i.fq, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.fr = getelementptr i8, ptr %i.f, i64 8
  %.val = load i32, ptr %i.fr, align 8
  %i.fs = icmp eq i32 %.val, 0
  br i1 %i.fs, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  br i1 %3, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ft = xor i64 %i.fd, -1
  %i.fu = and i64 %i.fe, %i.ft
  %.not.i106 = icmp eq i64 %i.fu, 0
  br i1 %.not.i106, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.am, %bb.al, %.critedge88
  %i.fv = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 8
  %i.fx = or i8 %i.fw, 4
  store i8 %i.fx, ptr %i.fv, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %get_file_caps.exit, %bb.ak, %bb.ab, %bb.b, %bb.an, %bb.ap, %bb.aq, %audit_log_bprm_fcaps.exit
  %.0 = phi i32 [ -1, %bb.ak ], [ -1, %bb.b ], [ %.01520.i, %get_file_caps.exit ], [ -1, %bb.ab ], [ %i.fb, %audit_log_bprm_fcaps.exit ], [ 0, %bb.aq ], [ 0, %bb.ap ], [ 0, %bb.an ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @in_group_p(i32) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @ptracer_capable(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -1, 1) i32 @cap_inode_setxattr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 1088
  %i.d = load ptr, ptr %i.c, align 64
  %i.e = tail call i32 @strncmp(ptr noundef %1, ptr noundef dereferenceable(10) @.str.4, i64 noundef 9) #16
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @strcmp(ptr noundef %1, ptr noundef dereferenceable(20) @.str.2) #16
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call zeroext i1 @ns_capable(ptr noundef %i.d, i32 noundef 21) #16
  %not. = xor i1 %i.h, true
  %. = sext i1 %not. to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @cap_inode_removexattr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 104
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 1088
  %i.d = load ptr, ptr %i.c, align 64
  %i.e = tail call i32 @strncmp(ptr noundef %2, ptr noundef dereferenceable(10) @.str.4, i64 noundef 9) #16
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @strcmp(ptr noundef %2, ptr noundef dereferenceable(20) @.str.2) #16
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %1, i64 48
  %.val = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not9 = icmp eq ptr %.val, null
  br i1 %.not9, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %0, ptr noundef nonnull %.val, i32 noundef 31) #16
  %not.11 = xor i1 %i.i, true
  %. = sext i1 %not.11 to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.j = tail call zeroext i1 @ns_capable(ptr noundef %i.d, i32 noundef 21) #16
  %not. = xor i1 %i.j, true
  %.10 = sext i1 %not. to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.d, %bb.a
  %.1 = phi i32 [ %.10, %bb.e ], [ 0, %bb.a ], [ %., %bb.d ], [ -22, %bb.c ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 -22, 1) i32 @cap_task_fix_setuid(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #6 align 16 prefalign(16) {
bb.a:
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %.split, label %cap_emulate_setxuid.exit

.split:                                           ; preds = %bb.a
  %i.c = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true)
  switch i32 %i.c, label %cap_emulate_setxuid.exit [
    i32 1, label %bb.b
    i32 0, label %bb.b
    i32 2, label %bb.b
    i32 3, label %bb.p
  ]

bb.b:                                             ; preds = %.split, %.split, %.split
  %i.d = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #19, !srcloc !27
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 1992
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 40
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = and i32 %i.i, 4
  %.not22 = icmp eq i32 %i.j, 0
  br i1 %.not22, label %bb.c, label %cap_emulate_setxuid.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %1, i64 16
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.t = getelementptr i8, ptr %0, i64 8
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %0, i64 24
  %i.x = load i32, ptr %i.w, align 8
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %0, i64 16
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = and i32 %i.i, 16
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ae = getelementptr i8, ptr %0, i64 80
  store i64 0, ptr %i.ae, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h, %bb.g, %bb.f, %bb.e
  %i.af = getelementptr i8, ptr %1, i64 24
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = icmp eq i32 %i.ag, 0
  %i.ai = getelementptr i8, ptr %0, i64 24
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = icmp eq i32 %i.aj, 0                    ; 2 uses
  br i1 %i.ah, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %bb.l
  br i1 %i.ak, label %cap_emulate_setxuid.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr i8, ptr %0, i64 64
  store i64 0, ptr %i.al, align 8
  br label %cap_emulate_setxuid.exit

.thread.i:                                        ; preds = %bb.l
  br i1 %i.ak, label %bb.o, label %cap_emulate_setxuid.exit

bb.o:                                             ; preds = %.thread.i
  %i.am = getelementptr i8, ptr %0, i64 64
  %i.an = getelementptr i8, ptr %0, i64 56
  %i.ao = load i64, ptr %i.an, align 8
  store i64 %i.ao, ptr %i.am, align 8
  br label %cap_emulate_setxuid.exit

bb.p:                                             ; preds = %.split
end_hunk_0
