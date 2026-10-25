Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/vfs_file?download=true
inline.NumInlined: 37
inline.NumDeleted: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint = type { ptr, %struct.static_key_false, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.16 }
%struct.atomic_t = type { i32 }
%union.anon.16 = type { i64 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.p9_wstat = type { i16, i16, i32, %struct.p9_qid, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t }
%struct.p9_qid = type { i8, i32, i64 }
%struct.kgid_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.p9_getlock = type { i8, i64, i64, i32, ptr }
%struct.p9_flock = type { i8, i32, i64, i64, i32, ptr }

@v9fs_file_operations = dso_local local_unnamed_addr constant { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr null, i32 0, [4 x i8] zeroinitializer, ptr @generic_file_llseek, ptr null, ptr null, ptr @v9fs_file_read_iter, ptr @v9fs_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v9fs_file_open, ptr null, ptr @v9fs_dir_release, ptr @v9fs_file_fsync, ptr null, ptr @v9fs_file_lock, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @v9fs_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_readonly_mmap_prepare }, align 8
@v9fs_file_operations_dotl = dso_local local_unnamed_addr constant { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr null, i32 0, [4 x i8] zeroinitializer, ptr @generic_file_llseek, ptr null, ptr null, ptr @v9fs_file_read_iter, ptr @v9fs_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v9fs_file_open, ptr null, ptr @v9fs_dir_release, ptr @v9fs_file_fsync_dotl, ptr null, ptr @v9fs_file_lock_dotl, ptr null, ptr null, ptr @v9fs_file_flock_dotl, ptr @iter_file_splice_write, ptr @v9fs_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v9fs_file_mmap_prepare }, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"include/linux/fs.h\00", align 1
@__tracepoint_9p_fid_ref = external dso_local global %struct.tracepoint, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"fs/9p/vfs_file.c\00", align 1
@v9fs_mmap_file_vm_ops = internal constant %struct.vm_operations_struct { ptr null, ptr @v9fs_mmap_vm_close, ptr null, ptr null, ptr null, ptr null, ptr @filemap_fault, ptr null, ptr @filemap_map_pages, ptr null, ptr @v9fs_vm_page_mkwrite, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @v9fs_file_open(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %.val, i64 864
  %.val.val = load ptr, ptr %i.c, align 32        ; 5 uses
  %.val37 = load i32, ptr %.val.val, align 8      ; 2 uses
  %i.d = and i32 %.val37, 2
  %.not = icmp eq i32 %i.d, 0
  %i.e = getelementptr i8, ptr %1, i64 40
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @v9fs_open_to_dotl_flags(i32 noundef %i.f) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = and i32 %.val37, 1
  %i.i = tail call i32 @v9fs_uflags2omode(i32 noundef %i.f, i32 noundef %i.h) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.028 = phi i32 [ %i.g, %bb.b ], [ %i.i, %bb.c ] ; 4 uses
  %i.j = phi i32 [ -1026, %bb.b ], [ -130, %bb.c ]
  %i.k = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  store ptr %i.l, ptr %i.a, align 8
  %.not30 = icmp eq ptr %i.l, null
  br i1 %.not30, label %bb.e, label %bb.ab

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %1, i64 32
  %.val40 = load ptr, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %1, i64 72
  %.val41 = load ptr, ptr %i.n, align 8           ; 2 uses
  %i.o = getelementptr i8, ptr %.val41, i64 48
  %.val.i = load ptr, ptr %i.o, align 8
  %.not.i = icmp eq ptr %.val.i, %.val40
  br i1 %.not.i, label %file_dentry.exit, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "403: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 403b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 403) #4, !srcloc !12
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 1363, i32 2307, i64 16) #4, !srcloc !13
  tail call void asm sideeffect "404: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 404b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 404) #4, !srcloc !14
  br label %file_dentry.exit

file_dentry.exit:                                 ; preds = %bb.e, %bb.f
  %i.p = tail call ptr @v9fs_fid_lookup(ptr noundef %.val41) #5 ; 7 uses
  %.not.i42 = icmp eq ptr %i.p, null
  br i1 %.not.i42, label %v9fs_fid_clone.exit.thread, label %bb.g

v9fs_fid_clone.exit.thread:                       ; preds = %file_dentry.exit
  store ptr null, ptr %i.a, align 8
  br label %bb.n

bb.g:                                             ; preds = %file_dentry.exit
  %i.q = icmp ugt ptr %i.p, inttoptr (i64 -4096 to ptr)
  br i1 %i.q, label %v9fs_fid_clone.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @p9_client_walk(ptr noundef nonnull %i.p, i16 noundef zeroext 0, ptr noundef null, i32 noundef 1) #5 ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_9p_fid_ref, i64 8), i1 false) #4
          to label %arch_static_branch.exit.i.i [label %bb.i], !srcloc !15

bb.i:                                             ; preds = %bb.h
  tail call void @do_trace_9p_fid_put(ptr noundef nonnull %i.p) #5
  br label %arch_static_branch.exit.i.i

arch_static_branch.exit.i.i:                      ; preds = %bb.i, %bb.h
  %i.s = getelementptr i8, ptr %i.p, i64 12       ; 3 uses
  %i.t = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.s, i32 -1, ptr elementtype(i32) %i.s) #4, !srcloc !16 ; 2 uses
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.l, label %bb.j

bb.j:                                             ; preds = %arch_static_branch.exit.i.i
  %i.v = icmp slt i32 %i.t, 1
  br i1 %i.v, label %bb.k, label %v9fs_fid_clone.exit, !prof !10

bb.k:                                             ; preds = %bb.j
  tail call void @refcount_warn_saturate(ptr noundef %i.s, i32 noundef 3) #5
  br label %v9fs_fid_clone.exit

bb.l:                                             ; preds = %arch_static_branch.exit.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !17
  %i.w = tail call i32 @p9_client_clunk(ptr noundef nonnull %i.p) #5 ; 0 uses
  br label %v9fs_fid_clone.exit

v9fs_fid_clone.exit:                              ; preds = %bb.g, %bb.j, %bb.k, %bb.l
  %.0.i = phi ptr [ %i.r, %bb.l ], [ %i.p, %bb.g ], [ %i.r, %bb.j ], [ %i.r, %bb.k ] ; 4 uses
  store ptr %.0.i, ptr %i.a, align 8
  %i.x = icmp ugt ptr %.0.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.x, label %bb.m, label %bb.n

bb.m:                                             ; preds = %v9fs_fid_clone.exit
  %i.y = ptrtoint ptr %.0.i to i64
  %i.z = trunc i64 %i.y to i32
  br label %p9_fid_put.exit

bb.n:                                             ; preds = %v9fs_fid_clone.exit.thread, %v9fs_fid_clone.exit
  %i.aa = phi ptr [ null, %v9fs_fid_clone.exit.thread ], [ %.0.i, %v9fs_fid_clone.exit ] ; 4 uses
  %i.ab = getelementptr i8, ptr %.val.val, i64 12
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = and i32 %i.ac, 4
  %.not31 = icmp eq i32 %i.ad, 0
  %i.ae = and i32 %.028, 1
  %.not32 = icmp eq i32 %i.ae, 0
  %or.cond = select i1 %.not31, i1 true, i1 %.not32
  br i1 %or.cond, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = and i32 %i.j, %.028
  %i.ag = or i32 %i.af, 2
  %i.ah = tail call i32 @p9_client_open(ptr noundef %i.aa, i32 noundef %i.ag) #5
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.aj = tail call i32 @p9_client_open(ptr noundef %i.aa, i32 noundef %.028) #5
  %i.ak = getelementptr i8, ptr %i.aa, i64 16     ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = or i32 %i.al, 8192
  store i32 %i.am, ptr %i.ak, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.an = tail call i32 @p9_client_open(ptr noundef %i.aa, i32 noundef %.028) #5
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.1 = phi i32 [ %i.an, %bb.q ], [ %i.aj, %bb.p ] ; 5 uses
  %i.ao = icmp slt i32 %.1, 0
  br i1 %i.ao, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.ap = load ptr, ptr %i.a, align 8             ; 5 uses
  %.not.i43 = icmp eq ptr %i.ap, null
  %i.aq = icmp ugt ptr %i.ap, inttoptr (i64 -4096 to ptr)
  %or.cond.i = or i1 %.not.i43, %i.aq
  br i1 %or.cond.i, label %p9_fid_put.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_9p_fid_ref, i64 8), i1 false) #4
          to label %arch_static_branch.exit.i [label %bb.u], !srcloc !15

bb.u:                                             ; preds = %bb.t
  tail call void @do_trace_9p_fid_put(ptr noundef nonnull %i.ap) #5
  br label %arch_static_branch.exit.i

arch_static_branch.exit.i:                        ; preds = %bb.u, %bb.t
  %i.ar = getelementptr i8, ptr %i.ap, i64 12     ; 3 uses
  %i.as = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ar, i32 -1, ptr elementtype(i32) %i.ar) #4, !srcloc !16 ; 2 uses
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %bb.x, label %bb.v

bb.v:                                             ; preds = %arch_static_branch.exit.i
  %i.au = icmp slt i32 %i.as, 1
  br i1 %i.au, label %bb.w, label %p9_fid_put.exit, !prof !10

bb.w:                                             ; preds = %bb.v
  tail call void @refcount_warn_saturate(ptr noundef %i.ar, i32 noundef 3) #5
  br label %p9_fid_put.exit

bb.x:                                             ; preds = %arch_static_branch.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !17
  %i.av = tail call i32 @p9_client_clunk(ptr noundef nonnull %i.ap) #5 ; 0 uses
  br label %p9_fid_put.exit

.thread:                                          ; preds = %bb.o, %bb.r
  %i.aw = getelementptr i8, ptr %1, i64 40
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = and i32 %i.ax, 1024
  %.not33 = icmp eq i32 %i.ay, 0
  br i1 %.not33, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.thread
  %.val38 = load i32, ptr %.val.val, align 8
  %i.az = and i32 %.val38, 3
  %or.cond50 = icmp eq i32 %i.az, 0
  br i1 %or.cond50, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ba = tail call i64 @generic_file_llseek(ptr noundef %1, i64 noundef 0, i32 noundef 2) #5 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %.thread
  %i.bb = load ptr, ptr %i.a, align 8             ; 2 uses
  store ptr %i.bb, ptr %i.k, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.d
  %i.bc = phi ptr [ %i.bb, %bb.aa ], [ %i.l, %bb.d ] ; 2 uses
  %i.bd = load i32, ptr %.val.val, align 8        ; 3 uses
  %i.be = getelementptr i8, ptr %.val.val, i64 12
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = getelementptr i8, ptr %1, i64 40
  %i.bh = load i32, ptr %i.bg, align 8            ; 2 uses
  %.not.i45 = icmp eq i32 %i.bf, 0
  br i1 %.not.i45, label %.sink.split.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bi = getelementptr i8, ptr %i.bc, i64 28
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = and i32 %i.bd, 128
  %i.bl = or i32 %i.bj, %i.bk
  %or.cond.i46 = icmp ne i32 %i.bl, 0
  %i.bm = and i32 %i.bd, 256
  %i.bn = and i32 %i.bh, 16384
  %i.bo = or disjoint i32 %i.bn, %i.bm
  %i.bp = icmp eq i32 %i.bo, 0
  %or.cond16.i = and i1 %i.bp, %or.cond.i46
  br i1 %or.cond16.i, label %bb.ad, label %.sink.split.i

bb.ad:                                            ; preds = %bb.ac
  %i.bq = and i32 %i.bf, 4
  %.not12.i = icmp ne i32 %i.bq, 0
  %i.br = and i32 %i.bh, 4096
  %i.bs = and i32 %i.bd, 512
  %i.bt = or disjoint i32 %i.br, %i.bs
  %i.bu = icmp eq i32 %i.bt, 0
  %or.cond18.i = and i1 %.not12.i, %i.bu
  br i1 %or.cond18.i, label %v9fs_fid_add_modes.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ad, %bb.ac, %bb.ab
  %.sink21.i = phi i32 [ 8192, %bb.ab ], [ 8192, %bb.ac ], [ 16384, %bb.ad ]
  %i.bv = getelementptr i8, ptr %i.bc, i64 16     ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = or i32 %i.bw, %.sink21.i
  store i32 %i.bx, ptr %i.bv, align 8
  br label %v9fs_fid_add_modes.exit

v9fs_fid_add_modes.exit:                          ; preds = %bb.ad, %.sink.split.i
  call void @v9fs_open_fid_add(ptr noundef %0, ptr noundef nonnull %i.a) #5
  br label %p9_fid_put.exit

p9_fid_put.exit:                                  ; preds = %bb.x, %bb.w, %bb.v, %bb.s, %v9fs_fid_add_modes.exit, %bb.m
  %.0 = phi i32 [ 0, %v9fs_fid_add_modes.exit ], [ %i.z, %bb.m ], [ %.1, %bb.s ], [ %.1, %bb.v ], [ %.1, %bb.w ], [ %.1, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @v9fs_open_to_dotl_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @v9fs_uflags2omode(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @p9_client_open(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @v9fs_open_fid_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @v9fs_file_fsync_dotl(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 @file_write_and_wait_range(ptr noundef %0, i64 noundef %1, i64 noundef %2) #5 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 152      ; 2 uses
  tail call void @down_write(ptr noundef %i.e) #5
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 @p9_client_fsync(ptr noundef %i.g, i32 noundef %3) #5
  tail call void @up_write(ptr noundef %i.e) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %i.d, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @p9_client_fsync(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @v9fs_file_read_iter(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 8192
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @netfs_unbuffered_read_iter(ptr noundef %0, ptr noundef %1) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i64 @netfs_file_read_iter(ptr noundef %0, ptr noundef %1) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
end_hunk_0
