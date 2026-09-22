Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/fid?download=true
inline.NumInlined: 37
inline.NumDeleted: 24
begin_hunk_0_@v9fs_fid_lookup:bb.a
.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.v
  %.064105.i = phi ptr [ %.1.i, %bb.v ], [ %.065.i, %.lr.ph.i.i ] ; 9 uses
  %.066104.i = phi i32 [ %i.bj, %bb.v ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.bl = sub i32 %.022.i.i, %.066104.i
  %i.bm = tail call i32 @llvm.smin.i32(i32 %i.bl, i32 16) ; 2 uses
  %i.bn = trunc i32 %i.bm to i16
  %i.bo = sext i32 %.066104.i to i64
  %i.bp = getelementptr [8 x i8], ptr %i.ba, i64 %i.bo
  %i.bq = icmp eq ptr %.064105.i, %.065.i
  %i.br = zext i1 %i.bq to i32
  %i.bs = tail call ptr @p9_client_walk(ptr noundef %.064105.i, i16 noundef zeroext %i.bn, ptr noundef %i.bp, i32 noundef %i.br) #6 ; 8 uses
  %.not78.i = icmp eq ptr %i.bs, %.064105.i
  br i1 %.not78.i, label %p9_fid_put.exit89.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  %.not.i85.i = icmp eq ptr %.064105.i, null
  %i.bt = icmp ugt ptr %.064105.i, inttoptr (i64 -4096 to ptr)
  %or.cond.i86.i = or i1 %.not.i85.i, %i.bt
  br i1 %or.cond.i86.i, label %p9_fid_put.exit89.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_9p_fid_ref, i64 8), i1 false) #7
          to label %arch_static_branch.exit.i87.i [label %bb.y], !srcloc !10

bb.y:                                             ; preds = %bb.x
  tail call void @do_trace_9p_fid_put(ptr noundef nonnull %.064105.i) #6
  br label %arch_static_branch.exit.i87.i

arch_static_branch.exit.i87.i:                    ; preds = %bb.y, %bb.x
  %i.bu = getelementptr i8, ptr %.064105.i, i64 12 ; 3 uses
  %i.bv = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bu, i32 -1, ptr elementtype(i32) %i.bu) #7, !srcloc !11 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %arch_static_branch.exit.i87.i
  %i.bx = icmp slt i32 %i.bv, 1
  br i1 %i.bx, label %bb.aa, label %p9_fid_put.exit89.i, !prof !12

bb.aa:                                            ; preds = %bb.z
  tail call void @refcount_warn_saturate(ptr noundef %i.bu, i32 noundef 3) #6
  br label %p9_fid_put.exit89.i

bb.ab:                                            ; preds = %arch_static_branch.exit.i87.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !20
  %i.by = tail call i32 @p9_client_clunk(ptr noundef nonnull %.064105.i) #6 ; 0 uses
  br label %p9_fid_put.exit89.i

p9_fid_put.exit89.i:                              ; preds = %bb.ab, %bb.aa, %bb.z, %bb.w, %.lr.ph.i
  %.1.i = phi ptr [ %.064105.i, %.lr.ph.i ], [ %i.bs, %bb.w ], [ %i.bs, %bb.z ], [ %i.bs, %bb.aa ], [ %i.bs, %bb.ab ]
  %i.bz = icmp ugt ptr %i.bs, inttoptr (i64 -4096 to ptr)
  br i1 %i.bz, label %bb.ac, label %bb.v

bb.ac:                                            ; preds = %p9_fid_put.exit89.i
  tail call void @kfree(ptr noundef nonnull %i.ba) #6
  br label %p9_fid_put.exit94.i

._crit_edge.i:                                    ; preds = %bb.v, %.preheader.i.i
  %.lcssa.i = phi ptr [ %.065.i, %.preheader.i.i ], [ %i.bs, %bb.v ] ; 2 uses
  store ptr %.lcssa.i, ptr %i.a, align 8
  tail call void @kfree(ptr noundef nonnull %i.ba) #6
  br label %p9_fid_put.exit.i

p9_fid_put.exit.i:                                ; preds = %._crit_edge.i, %bb.k, %bb.j, %bb.i, %bb.f
  %i.ca = phi ptr [ %i.r, %bb.f ], [ %.lcssa.i, %._crit_edge.i ], [ %i.r, %bb.i ], [ %i.r, %bb.j ], [ %i.r, %bb.k ] ; 10 uses
  %i.cb = icmp ugt ptr %i.ca, inttoptr (i64 -4096 to ptr)
  br i1 %i.cb, label %p9_fid_put.exit94.i, label %bb.ad

bb.ad:                                            ; preds = %p9_fid_put.exit.i
  %i.cc = getelementptr i8, ptr %0, i64 128       ; 3 uses
  tail call void @_raw_spin_lock(ptr noundef %i.cc) #6
  %i.cd = getelementptr i8, ptr %0, i64 16
  %.val82.i = load ptr, ptr %i.cd, align 8
  %.not.i.i.not.i = icmp eq ptr %.val82.i, null
  br i1 %.not.i.i.not.i, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  tail call void @_raw_spin_unlock(ptr noundef %i.cc) #6
  %.not.i90.i = icmp eq ptr %i.ca, null
  br i1 %.not.i90.i, label %p9_fid_put.exit94.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_9p_fid_ref, i64 8), i1 false) #7
          to label %arch_static_branch.exit.i92.i [label %bb.ag], !srcloc !10

bb.ag:                                            ; preds = %bb.af
  tail call void @do_trace_9p_fid_put(ptr noundef nonnull %i.ca) #6
  br label %arch_static_branch.exit.i92.i

arch_static_branch.exit.i92.i:                    ; preds = %bb.ag, %bb.af
  %i.ce = getelementptr i8, ptr %i.ca, i64 12     ; 3 uses
  %i.cf = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ce, i32 -1, ptr elementtype(i32) %i.ce) #7, !srcloc !11 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %arch_static_branch.exit.i92.i
  %i.ch = icmp slt i32 %i.cf, 1
  br i1 %i.ch, label %bb.ai, label %p9_fid_put.exit94.i, !prof !12

bb.ai:                                            ; preds = %bb.ah
  tail call void @refcount_warn_saturate(ptr noundef %i.ce, i32 noundef 3) #6
  br label %p9_fid_put.exit94.i

bb.aj:                                            ; preds = %arch_static_branch.exit.i92.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !20
  %i.ci = tail call i32 @p9_client_clunk(ptr noundef nonnull %i.ca) #6 ; 0 uses
  br label %p9_fid_put.exit94.i

bb.ak:                                            ; preds = %bb.ad
  %i.cj = getelementptr i8, ptr %0, i64 120
  %i.ck = load ptr, ptr %i.cj, align 8            ; 3 uses
  %i.cl = getelementptr i8, ptr %i.ca, i64 56     ; 3 uses
  %i.cm = load ptr, ptr %i.ck, align 8            ; 3 uses
  store volatile ptr %i.cm, ptr %i.cl, align 8
  %.not.i.i95.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i95.i, label %__add_fid.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cn = getelementptr i8, ptr %i.cm, i64 8
  store volatile ptr %i.cl, ptr %i.cn, align 8
  br label %__add_fid.exit.i

__add_fid.exit.i:                                 ; preds = %bb.al, %bb.ak
  store volatile ptr %i.cl, ptr %i.ck, align 8
  %i.co = getelementptr i8, ptr %i.ca, i64 64
  store volatile ptr %i.ck, ptr %i.co, align 8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_9p_fid_ref, i64 8), i1 false) #7
          to label %arch_static_branch.exit.i96.i [label %bb.am], !srcloc !10

bb.am:                                            ; preds = %__add_fid.exit.i
  tail call void @do_trace_9p_fid_get(ptr noundef %i.ca) #6
  br label %arch_static_branch.exit.i96.i

arch_static_branch.exit.i96.i:                    ; preds = %bb.am, %__add_fid.exit.i
  %i.cp = getelementptr i8, ptr %i.ca, i64 12     ; 3 uses
  %i.cq = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cp, i32 1, ptr elementtype(i32) %i.cp) #7, !srcloc !11 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.an, !prof !12

bb.an:                                            ; preds = %arch_static_branch.exit.i96.i
  %i.cr = add i32 %i.cq, 1
  %i.cs = or i32 %i.cr, %i.cq
  %.not10.i.i.i.i.i = icmp sgt i32 %i.cs, -1
  br i1 %.not10.i.i.i.i.i, label %p9_fid_get.exit.i, label %.sink.split.i.i.i.i.i, !prof !13

.sink.split.i.i.i.i.i:                            ; preds = %bb.an, %arch_static_branch.exit.i96.i
  %.sink.i.i.i.i.i = phi i32 [ 2, %arch_static_branch.exit.i96.i ], [ 1, %bb.an ]
  tail call void @refcount_warn_saturate(ptr noundef %i.cp, i32 noundef %.sink.i.i.i.i.i) #6
  br label %p9_fid_get.exit.i

p9_fid_get.exit.i:                                ; preds = %.sink.split.i.i.i.i.i, %bb.an
  tail call void @_raw_spin_unlock(ptr noundef %i.cc) #6
  %.pre.i = load ptr, ptr %i.a, align 8
  br label %p9_fid_put.exit94.i

p9_fid_put.exit94.i:                              ; preds = %p9_fid_get.exit.i, %bb.aj, %bb.ai, %bb.ah, %bb.ae, %p9_fid_put.exit.i, %bb.ac, %_kmalloc_array_noprof.exit.i.i, %bb.u
  %i.ct = phi ptr [ %i.ca, %p9_fid_put.exit.i ], [ %.pre.i, %p9_fid_get.exit.i ], [ inttoptr (i64 -12 to ptr), %_kmalloc_array_noprof.exit.i.i ], [ %i.bs, %bb.ac ], [ inttoptr (i64 -12 to ptr), %bb.u ], [ inttoptr (i64 -2 to ptr), %bb.ae ], [ inttoptr (i64 -2 to ptr), %bb.ah ], [ inttoptr (i64 -2 to ptr), %bb.ai ], [ inttoptr (i64 -2 to ptr), %bb.aj ]
  tail call void @up_read(ptr noundef %i.m) #6
  br label %v9fs_fid_lookup_with_uid.exit

v9fs_fid_lookup_with_uid.exit:                    ; preds = %bb.d, %bb.m, %bb.p, %bb.r, %p9_fid_put.exit94.i
  %.0.i = phi ptr [ inttoptr (i64 -1 to ptr), %bb.m ], [ %i.ct, %p9_fid_put.exit94.i ], [ %i.l, %bb.d ], [ %.065.i, %bb.r ], [ %i.ak, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0.i
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @do_trace_9p_fid_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @v9fs_fid_find(ptr noundef %0, i32 %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load volatile ptr, ptr %i.b, align 8
  %.not.i.not = icmp eq ptr %i.c, null
  br i1 %.not.i.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 128        ; 4 uses
  tail call void @_raw_spin_lock(ptr noundef %i.d) #6
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not30 = icmp eq ptr %i.e, null
  %i.f = getelementptr i8, ptr %i.e, i64 -56      ; 3 uses
  %.not314749 = icmp eq ptr %i.f, null
  %.not3147 = or i1 %.not30, %.not314749
  br i1 %.not3147, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.not32 = icmp eq i32 %2, 0
  br i1 %.not32, label %.lr.ph.split.us, label %.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %select.unfold
  %.048.us = phi ptr [ %5, %select.unfold ], [ %i.f, %.lr.ph ] ; 3 uses
  %i.g = getelementptr i8, ptr %.048.us, i64 44
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, %1
  br i1 %i.i, label %.split.us, label %select.unfold

.split.us:                                        ; preds = %.lr.ph.split.us, %.lr.ph
  %.us-phi = phi ptr [ %i.f, %.lr.ph ], [ %.048.us, %.lr.ph.split.us ] ; 4 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_9p_fid_ref, i64 8), i1 false) #7
          to label %arch_static_branch.exit.i [label %bb.c], !srcloc !10

bb.c:                                             ; preds = %.split.us
  tail call void @do_trace_9p_fid_get(ptr noundef nonnull %.us-phi) #6
  br label %arch_static_branch.exit.i

arch_static_branch.exit.i:                        ; preds = %bb.c, %.split.us
  %i.j = getelementptr i8, ptr %.us-phi, i64 12   ; 3 uses
  %i.k = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.j, i32 1, ptr elementtype(i32) %i.j) #7, !srcloc !11 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.d, !prof !12

bb.d:                                             ; preds = %arch_static_branch.exit.i
  %i.l = add i32 %i.k, 1
  %i.m = or i32 %i.l, %i.k
  %.not10.i.i.i.i = icmp sgt i32 %i.m, -1
  br i1 %.not10.i.i.i.i, label %.sink.split, label %.sink.split.i.i.i.i, !prof !13

.sink.split.i.i.i.i:                              ; preds = %bb.d, %arch_static_branch.exit.i
  %.sink.i.i.i.i = phi i32 [ 2, %arch_static_branch.exit.i ], [ 1, %bb.d ]
  tail call void @refcount_warn_saturate(ptr noundef %i.j, i32 noundef %.sink.i.i.i.i) #6
  br label %.sink.split

select.unfold:                                    ; preds = %.lr.ph.split.us
  %3 = getelementptr i8, ptr %.048.us, i64 56
  %4 = load ptr, ptr %3, align 8                  ; 2 uses
  %.not33 = icmp eq ptr %4, null
  %5 = getelementptr i8, ptr %4, i64 -56          ; 2 uses
  %.not3159 = icmp eq ptr %5, null
  %.not31 = or i1 %.not33, %.not3159
  br i1 %.not31, label %select.unfold._crit_edge, label %.lr.ph.split.us

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.b
  tail call void @_raw_spin_unlock(ptr noundef %i.d) #6
  br label %.thread

.thread:                                          ; preds = %bb.a, %select.unfold._crit_edge
  %i.n = getelementptr i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not35 = icmp eq ptr %i.o, null
  br i1 %.not35, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.p = getelementptr i8, ptr %i.o, i64 128      ; 5 uses
  tail call void @_raw_spin_lock(ptr noundef %i.p) #6
  %i.q = getelementptr i8, ptr %i.o, i64 536
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i37 = icmp eq ptr %i.r, null
  %i.s = getelementptr i8, ptr %i.r, i64 -72      ; 3 uses
  %.not253249.i = icmp eq ptr %i.s, null
  %.not2532.i = or i1 %.not.i37, %.not253249.i
  br i1 %.not2532.i, label %.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.lr.ph.split.split.i, label %.split.us.i

.lr.ph.split.split.i:                             ; preds = %.lr.ph.i, %select.unfold.i
  %.033.i = phi ptr [ %i.ac, %select.unfold.i ], [ %i.s, %.lr.ph.i ] ; 3 uses
  %i.t = getelementptr i8, ptr %.033.i, i64 44
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp eq i32 %i.u, %1
  br i1 %i.v, label %.split.us.i, label %select.unfold.i

.split.us.i:                                      ; preds = %.lr.ph.split.split.i, %.lr.ph.i
  %.us-phi.i = phi ptr [ %i.s, %.lr.ph.i ], [ %.033.i, %.lr.ph.split.split.i ] ; 4 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_9p_fid_ref, i64 8), i1 false) #7
          to label %arch_static_branch.exit.i.i [label %bb.f], !srcloc !10

bb.f:                                             ; preds = %.split.us.i
  tail call void @do_trace_9p_fid_get(ptr noundef nonnull %.us-phi.i) #6
  br label %arch_static_branch.exit.i.i

arch_static_branch.exit.i.i:                      ; preds = %bb.f, %.split.us.i
  %i.w = getelementptr i8, ptr %.us-phi.i, i64 12 ; 3 uses
  %i.x = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.w, i32 1, ptr elementtype(i32) %i.w) #7, !srcloc !11 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.g, !prof !12

bb.g:                                             ; preds = %arch_static_branch.exit.i.i
  %i.y = add i32 %i.x, 1
  %i.z = or i32 %i.y, %i.x
  %.not10.i.i.i.i.i = icmp sgt i32 %i.z, -1
  br i1 %.not10.i.i.i.i.i, label %.sink.split, label %.sink.split.i.i.i.i.i, !prof !13

.sink.split.i.i.i.i.i:                            ; preds = %bb.g, %arch_static_branch.exit.i.i
  %.sink.i.i.i.i.i = phi i32 [ 2, %arch_static_branch.exit.i.i ], [ 1, %bb.g ]
  tail call void @refcount_warn_saturate(ptr noundef %i.w, i32 noundef %.sink.i.i.i.i.i) #6
  br label %.sink.split

select.unfold.i:                                  ; preds = %.lr.ph.split.split.i
  %i.aa = getelementptr i8, ptr %.033.i, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not26.i = icmp eq ptr %i.ab, null
  %i.ac = getelementptr i8, ptr %i.ab, i64 -72    ; 2 uses
  %.not2557.i = icmp eq ptr %i.ac, null
  %.not25.i = or i1 %.not26.i, %.not2557.i
  br i1 %.not25.i, label %.sink.split, label %.lr.ph.split.split.i

.sink.split:                                      ; preds = %select.unfold.i, %.sink.split.i.i.i.i.i, %bb.g, %bb.e, %.sink.split.i.i.i.i, %bb.d
  %.sink = phi ptr [ %i.d, %.sink.split.i.i.i.i ], [ %i.d, %bb.d ], [ %i.p, %.sink.split.i.i.i.i.i ], [ %i.p, %bb.e ], [ %i.p, %bb.g ], [ %i.p, %select.unfold.i ]
  %.2.ph = phi ptr [ %.us-phi, %.sink.split.i.i.i.i ], [ %.us-phi, %bb.d ], [ %.us-phi.i, %.sink.split.i.i.i.i.i ], [ null, %bb.e ], [ %.us-phi.i, %bb.g ], [ null, %select.unfold.i ]
  tail call void @_raw_spin_unlock(ptr noundef %.sink) #6
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %.thread
  %.2 = phi ptr [ null, %.thread ], [ %.2.ph, %.sink.split ]
  ret ptr %.2
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @p9_client_walk(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @p9_client_attach(ptr noundef, ptr noundef, ptr noundef, i32, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @do_trace_9p_fid_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @p9_client_clunk(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noredzone nounwind "no-builtin-wcslen" }
attributes #7 = { nounwind }
attributes #8 = { nounwind memory(none) }
attributes #9 = { noredzone "no-builtin-wcslen" }
attributes #10 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }

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
!10 = !{i64 2148759641, i64 2148759681, i64 2148759798, i64 2148759819, i64 2148759862, i64 2148759877, i64 2148759910, i64 2148759944, i64 2148759968}
!11 = !{i64 2148948525, i64 2148948564, i64 2148948585, i64 2148948622, i64 2148948645, i64 2148948654}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = distinct !{!14, !23}
!15 = distinct !{!15, !23}
!16 = distinct !{!16, !23}
!17 = !{i64 2148332771}
!18 = !{i64 4333}
!19 = !{i64 4600}
!20 = !{i64 2151088324}
!21 = !{i64 4906}
!22 = !{i64 5318}
!23 = !{!"llvm.loop.mustprogress"}
end_hunk_0
