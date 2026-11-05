Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/strset?download=true
inline.NumInlined: 60
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@strset_parse_request:bb.a
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %nla_ok.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %2, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp ne ptr %i.j, null
  %i.l = getelementptr i8, ptr %0, i64 20
  %i.m = zext i1 %i.k to i8
  store i8 %i.m, ptr %i.l, align 4
  %.val = load i16, ptr %i.c, align 2
  %i.n = add i16 %.val, -4                        ; 2 uses
  %i.o = icmp ugt i16 %i.n, 3
  br i1 %i.o, label %.lr.ph, label %nla_ok.exit.thread

.lr.ph:                                           ; preds = %bb.c
  %i.p = zext i16 %i.n to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = getelementptr i8, ptr %0, i64 16         ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.o
  %.03773 = phi ptr [ %i.d, %.lr.ph ], [ %i.ay, %bb.o ] ; 9 uses
  %.05372 = phi i32 [ %i.p, %.lr.ph ], [ %i.aw, %bb.o ] ; 2 uses
  %i.s = load i16, ptr %.03773, align 2           ; 3 uses
  %i.t = icmp ult i16 %i.s, 4
  %i.u = zext i16 %i.s to i32
  %.not59 = icmp samesign ult i32 %.05372, %i.u
  %or.cond = select i1 %i.t, i1 true, i1 %.not59
  br i1 %or.cond, label %nla_ok.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %.03773, i64 2
  %.037.val48 = load i16, ptr %i.v, align 2       ; 2 uses
  %i.w = and i16 %.037.val48, 16383
  %.not45 = icmp eq i16 %i.w, 1
  br i1 %.not45, label %.critedge, label %bb.f, !prof !14

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %.03773, i64 2
  %i.y = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 216, i32 2323, i64 16) #8, !srcloc !15
  %.037.val = load i16, ptr %i.x, align 2
  %i.z = and i16 %.037.val, 16383
  %i.aa = zext nneg i16 %i.z to i32
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.y, i32 noundef %i.aa) #7
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !16
  br label %nla_ok.exit.thread

.critedge:                                        ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %.not.i.i = icmp sgt i16 %.037.val48, -1
  br i1 %.not.i.i, label %bb.g, label %nla_parse_nested.exit.i

bb.g:                                             ; preds = %.critedge
  call void @do_trace_netlink_extack(ptr noundef @nla_parse_nested.__msg) #7
  %.not14.i.i = icmp eq ptr %3, null
  br i1 %.not14.i.i, label %strset_get_id.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr @nla_parse_nested.__msg, ptr %3, align 8
  %i.ab = getelementptr i8, ptr %3, i64 8
  store ptr %.03773, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %3, i64 16
  store ptr null, ptr %i.ac, align 8
  br label %strset_get_id.exit.thread

nla_parse_nested.exit.i:                          ; preds = %.critedge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !annotation !17
  %i.ad = getelementptr i8, ptr %.03773, i64 4
  %i.ae = add i16 %i.s, -4
  %i.af = zext i16 %i.ae to i32
  %i.ag = call i32 @__nla_parse(ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef %i.ad, i32 noundef %i.af, ptr noundef @get_stringset_policy, i32 noundef 31, ptr noundef %3) #7 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %strset_get_id.exit.thread, label %bb.i

bb.i:                                             ; preds = %nla_parse_nested.exit.i
  %i.ai = load ptr, ptr %i.q, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.not18.i = icmp eq ptr %3, null
  br i1 %.not18.i, label %strset_get_id.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr i8, ptr %3, i64 24
  store ptr %.03773, ptr %i.aj, align 8
  %i.ak = getelementptr i8, ptr %3, i64 32
  store i16 1, ptr %i.ak, align 8
  br label %strset_get_id.exit.thread

strset_get_id.exit.thread:                        ; preds = %nla_parse_nested.exit.i, %bb.k, %bb.j, %bb.h, %bb.g
  %.0.i.ph = phi i32 [ -22, %bb.g ], [ -22, %bb.h ], [ -22, %bb.j ], [ -22, %bb.k ], [ %i.ag, %nla_parse_nested.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %nla_ok.exit.thread

bb.l:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %i.ai, i64 4
  %.val.i = load i32, ptr %i.al, align 4          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.am = icmp ugt i32 %.val.i, 22
  br i1 %i.am, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @do_trace_netlink_extack(ptr noundef @strset_parse_request.__msg) #7
  %.not46 = icmp eq ptr %3, null
  br i1 %.not46, label %nla_ok.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr @strset_parse_request.__msg, ptr %3, align 8
  %i.an = getelementptr i8, ptr %3, i64 8
  store ptr %.03773, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %3, i64 16
  store ptr null, ptr %i.ao, align 8
  br label %nla_ok.exit.thread

bb.o:                                             ; preds = %bb.l
  %i.ap = shl nuw nsw i32 1, %.val.i
  %i.aq = load i32, ptr %i.r, align 8
  %i.ar = or i32 %i.aq, %i.ap
  store i32 %i.ar, ptr %i.r, align 8
  %i.as = load i16, ptr %.03773, align 2
  %i.at = zext i16 %i.as to i32
  %i.au = add nuw nsw i32 %i.at, 3
  %i.av = and i32 %i.au, 131068                   ; 2 uses
  %i.aw = sub nsw i32 %.05372, %i.av              ; 2 uses
  %i.ax = zext nneg i32 %i.av to i64
  %i.ay = getelementptr i8, ptr %.03773, i64 %i.ax
  %i.az = icmp sgt i32 %i.aw, 3
  br i1 %i.az, label %bb.d, label %nla_ok.exit.thread, !llvm.loop !13

nla_ok.exit.thread:                               ; preds = %bb.d, %bb.o, %bb.c, %bb.m, %bb.n, %strset_get_id.exit.thread, %bb.f, %bb.b, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ -95, %bb.n ], [ %i.g, %bb.b ], [ -22, %bb.f ], [ %.0.i.ph, %strset_get_id.exit.thread ], [ -95, %bb.m ], [ 0, %bb.c ], [ 0, %bb.o ], [ 0, %bb.d ]
  ret i32 %.2
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @strset_prepare_data(ptr noundef %0, ptr nofree noundef captures(none) initializes((8, 376)) %1, ptr nofree noundef readonly captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 7 uses
  %i.b = getelementptr i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %1, i64 8          ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(368) %i.d, ptr noundef align 16 dereferenceable(368) @info_template, i64 368, i1 false)
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 135
  %or.cond100 = icmp eq i32 %i.g, 0
  br i1 %or.cond100, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.h = getelementptr i8, ptr %2, i64 96
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  tail call void @do_trace_netlink_extack(ptr noundef @strset_prepare_data.__msg) #7
  %.not51 = icmp eq ptr %i.i, null
  br i1 %.not51, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @strset_prepare_data.__msg, ptr %i.i, align 8
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %2, i64 96
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call ptr @ethnl_req_get_phydev(ptr noundef %0, ptr noundef %i.c, i32 noundef 1, ptr noundef %i.k) #7 ; 5 uses
  %i.m = icmp ugt ptr %i.l, inttoptr (i64 -4096 to ptr)
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = trunc i64 %i.n to i32
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.p = tail call i32 @ethnl_ops_begin(ptr noundef nonnull %i.a) #7 ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.z, label %.preheader58

.preheader58:                                     ; preds = %bb.f
  %i.r = getelementptr i8, ptr %0, i64 16
  %i.s = getelementptr i8, ptr %0, i64 20
  %i.t = getelementptr i8, ptr %i.a, i64 752
  %i.u = icmp ne ptr %i.l, null
  br label %bb.g

bb.g:                                             ; preds = %.preheader58, %strset_include.exit.thread
  %indvars.iv = phi i64 [ 0, %.preheader58 ], [ %indvars.iv.next, %strset_include.exit.thread ] ; 8 uses
  %.val = load i32, ptr %i.r, align 8             ; 2 uses
  %.not.i = icmp eq i32 %.val, 0
  br i1 %.not.i, label %bb.h, label %.split

.split:                                           ; preds = %bb.g
  %i.v = trunc nuw nsw i64 %indvars.iv to i32
  %i.w = shl nuw nsw i32 1, %i.v
  %i.x = and i32 %.val, %i.w
  %.not57 = icmp eq i32 %i.x, 0
  br i1 %.not57, label %strset_include.exit.thread, label %.split._crit_edge

.split._crit_edge:                                ; preds = %.split
  %.phi.trans.insert = getelementptr [16 x i8], ptr %i.d, i64 %indvars.iv
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !11
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr [16 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !range !11, !noundef !12 ; 3 uses
  %i.aa = trunc nuw i8 %i.z to i1                 ; 2 uses
  br i1 %i.aa, label %strset_include.exit, label %3

3:                                                ; preds = %bb.h
  %4 = getelementptr i8, ptr %i.y, i64 8
  %5 = load ptr, ptr %4, align 8
  %.not12.i = icmp eq ptr %5, null
  br i1 %.not12.i, label %strset_include.exit.thread, label %strset_include.exit

strset_include.exit:                              ; preds = %bb.h, %3
  %i.ab = load ptr, ptr %1, align 8
  %.not13.i = icmp eq ptr %i.ab, null
  %6 = icmp ne i8 %i.z, 0
  %7 = xor i1 %i.aa, true
  %8 = select i1 %.not13.i, i1 %7, i1 %6
  br i1 %8, label %bb.i, label %strset_include.exit.thread

bb.i:                                             ; preds = %.split._crit_edge, %strset_include.exit
  %9 = phi i8 [ %.pre, %.split._crit_edge ], [ %i.z, %strset_include.exit ]
  %10 = getelementptr [16 x i8], ptr %i.d, i64 %indvars.iv ; 3 uses
  %i.ac = trunc nuw i8 %9 to i1
  br i1 %i.ac, label %bb.j, label %strset_include.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ad = load i8, ptr %i.s, align 4, !range !11, !noundef !12
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = load ptr, ptr @ethtool_phy_ops, align 8 ; 4 uses
  %i.ag = load ptr, ptr %i.t, align 16            ; 5 uses
  %i.ah = icmp eq i64 %indvars.iv, 7
  %or.cond.i = and i1 %i.u, %i.ah                 ; 2 uses
  br i1 %or.cond.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr i8, ptr %i.ag, i64 544
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.aj, null
  %i.al = icmp ne ptr %i.af, null
  %or.cond3.i = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond3.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not.i53 = icmp eq ptr %i.am, null
  br i1 %.not.i53, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = tail call i32 %i.am(ptr noundef nonnull %i.l) #7, !inline_history !18
  br label %bb.q

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ao = getelementptr i8, ptr %i.ag, i64 264
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not55.i = icmp eq ptr %i.ap, null
  br i1 %.not55.i, label %strset_prepare_set.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr i8, ptr %i.ag, i64 208
  %i.ar = load ptr, ptr %i.aq, align 8
  %.not56.i = icmp eq ptr %i.ar, null
  br i1 %.not56.i, label %strset_prepare_set.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = trunc nuw nsw i64 %indvars.iv to i32
  %i.at = tail call i32 %i.ap(ptr noundef nonnull %i.a, i32 noundef range(i32 0, 23) %i.as) #7, !inline_history !18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.048.i = phi i32 [ %i.an, %bb.m ], [ %i.at, %bb.p ] ; 4 uses
  %i.au = icmp slt i32 %.048.i, 1                 ; 2 uses
  %brmerge.i = or i1 %i.au, %i.ae
  %.mux.i = select i1 %i.au, i32 0, i32 %.048.i
  br i1 %brmerge.i, label %strset_prepare_set.exit, label %_kmalloc_array_noprof.exit.i

_kmalloc_array_noprof.exit.i:                     ; preds = %bb.q
  %i.av = zext nneg i32 %.048.i to i64
  %i.aw = shl nuw nsw i64 %i.av, 5
  %i.ax = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 32, 68719476705) %i.aw, i32 noundef 3520) #9 ; 4 uses
  %.not57.i = icmp eq ptr %i.ax, null
  br i1 %.not57.i, label %bb.y, label %bb.r

bb.r:                                             ; preds = %_kmalloc_array_noprof.exit.i
  br i1 %or.cond.i, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr i8, ptr %i.ag, i64 544
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = icmp eq ptr %i.az, null
  %i.bb = icmp ne ptr %i.af, null
  %or.cond7.i = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond7.i, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bc = getelementptr i8, ptr %i.af, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not58.i = icmp eq ptr %i.bd, null
  br i1 %.not58.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = tail call i32 %i.bd(ptr noundef nonnull %i.l, ptr noundef nonnull %i.ax) #7, !inline_history !18 ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.bf = getelementptr i8, ptr %i.ag, i64 208
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = trunc nuw nsw i64 %indvars.iv to i32
  tail call void %i.bg(ptr noundef nonnull %i.a, i32 noundef range(i32 0, 23) %i.bh, ptr noundef nonnull %i.ax) #7, !inline_history !18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bi = getelementptr i8, ptr %10, i64 8
  store ptr %i.ax, ptr %i.bi, align 8
  %i.bj = getelementptr i8, ptr %10, i64 1
  store i8 1, ptr %i.bj, align 1
  br label %strset_prepare_set.exit

strset_prepare_set.exit:                          ; preds = %bb.n, %bb.o, %bb.q, %bb.w
  %.048.sink.i = phi i32 [ %.mux.i, %bb.q ], [ 0, %bb.n ], [ 0, %bb.o ], [ %.048.i, %bb.w ]
  %i.bk = getelementptr i8, ptr %10, i64 4
  store i32 %.048.sink.i, ptr %i.bk, align 4
  br label %strset_include.exit.thread

strset_include.exit.thread:                       ; preds = %3, %strset_prepare_set.exit, %.split, %strset_include.exit, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 23
  br i1 %exitcond.not, label %bb.x, label %bb.g, !llvm.loop !19

bb.x:                                             ; preds = %strset_include.exit.thread
  tail call void @ethnl_ops_complete(ptr noundef nonnull %i.a) #7
  br label %.loopexit

bb.y:                                             ; preds = %_kmalloc_array_noprof.exit.i
  tail call void @ethnl_ops_complete(ptr noundef nonnull %i.a) #7
  br label %bb.z

bb.z:                                             ; preds = %bb.f, %bb.y
  %.0 = phi i32 [ %i.p, %bb.f ], [ -12, %bb.y ]
  tail call void @strset_cleanup_data(ptr noundef %1) #10, !srcloc !20
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.b, %bb.c, %bb.z, %bb.x, %bb.e
  %.045 = phi i32 [ %i.o, %bb.e ], [ %.0, %bb.z ], [ 0, %bb.x ], [ -22, %bb.b ], [ -22, %bb.c ], [ 0, %.preheader ]
  ret i32 %.045
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none)
define internal i32 @strset_reply_size(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i32, ptr %i.a, align 8             ; 2 uses
  %.not.i = icmp eq i32 %.val, 0
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 20         ; 2 uses
  br i1 %.not.i, label %.split39.us, label %.split

.split39.us:                                      ; preds = %bb.a, %strset_include.exit.thread.us
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %strset_include.exit.thread.us ], [ 0, %bb.a ] ; 2 uses
  %.02238.us = phi i32 [ %.1.ph.us, %strset_include.exit.thread.us ], [ 4, %bb.a ] ; 3 uses
  %i.d = getelementptr [16 x i8], ptr %i.b, i64 %indvars.iv46 ; 4 uses
  %i.e = load i8, ptr %i.d, align 8, !range !11, !noundef !12 ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  br i1 %i.f, label %strset_include.exit.us, label %bb.b

bb.b:                                             ; preds = %.split39.us
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %.not12.i.us = icmp eq ptr %i.h, null
  br i1 %.not12.i.us, label %strset_include.exit.thread.us, label %strset_include.exit.us

strset_include.exit.us:                           ; preds = %bb.b, %.split39.us
  %i.i = load ptr, ptr %1, align 8
  %.not13.i.us = icmp eq ptr %i.i, null
  %2 = icmp ne i8 %i.e, 0
  %3 = xor i1 %i.f, true
  %4 = select i1 %.not13.i.us, i1 %3, i1 %2
  br i1 %4, label %bb.c, label %strset_include.exit.thread.us

bb.c:                                             ; preds = %strset_include.exit.us
  %i.j = load i8, ptr %i.c, align 4, !range !11, !noundef !12
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr i8, ptr %i.d, i64 4
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = icmp eq i32 %i.m, 0                      ; 2 uses
  %brmerge.i.us = or i1 %i.n, %i.k
  %.mux.i.us = select i1 %i.n, i32 0, i32 20
  br i1 %brmerge.i.us, label %strset_set_size.exit.thread.us, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.d, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %wide.trip.count.i.us = zext i32 %i.m to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.preheader.i.us ], [ %indvars.iv.next.i.us, %bb.d ] ; 2 uses
  %.01213.i.us = phi i32 [ 0, %.preheader.i.us ], [ %i.v, %bb.d ]
  %i.q = getelementptr [32 x i8], ptr %i.p, i64 %indvars.iv.i.us
  %i.r = tail call i64 @strnlen(ptr noundef readonly %i.q, i64 noundef 32) #10
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.s, -4
  %i.u = add i32 %.01213.i.us, 20
  %i.v = add i32 %i.u, %i.t                       ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %strset_set_size.exit.us, label %bb.d, !llvm.loop !21

strset_set_size.exit.us:                          ; preds = %bb.d
  %i.w = add i32 %i.v, 24                         ; 3 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %.split41.us, label %strset_set_size.exit.thread.us

strset_set_size.exit.thread.us:                   ; preds = %strset_set_size.exit.us, %bb.c
  %.0.i2831.us = phi i32 [ %i.w, %strset_set_size.exit.us ], [ %.mux.i.us, %bb.c ]
  %i.y = add i32 %.0.i2831.us, %.02238.us
  br label %strset_include.exit.thread.us

strset_include.exit.thread.us:                    ; preds = %strset_set_size.exit.thread.us, %strset_include.exit.us, %bb.b
  %.1.ph.us = phi i32 [ %.02238.us, %bb.b ], [ %.02238.us, %strset_include.exit.us ], [ %i.y, %strset_set_size.exit.thread.us ] ; 2 uses
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next47, 23
  br i1 %exitcond49.not, label %.split41.us, label %.split39.us, !llvm.loop !22

.split:                                           ; preds = %bb.a, %strset_include.exit.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %strset_include.exit.thread ], [ 0, %bb.a ] ; 3 uses
  %.02238 = phi i32 [ %.1.ph, %strset_include.exit.thread ], [ 4, %bb.a ] ; 2 uses
  %i.z = trunc nuw nsw i64 %indvars.iv to i32
  %i.aa = shl nuw nsw i32 1, %i.z
  %i.ab = and i32 %.val, %i.aa
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %strset_include.exit.thread, label %bb.e

bb.e:                                             ; preds = %.split
  %i.ac = getelementptr [16 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.ad = load i8, ptr %i.c, align 4, !range !11, !noundef !12
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr i8, ptr %i.ac, i64 4
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0                    ; 2 uses
  %brmerge.i = or i1 %i.ah, %i.ae
  %.mux.i = select i1 %i.ah, i32 0, i32 20
  br i1 %brmerge.i, label %strset_set_size.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.ai = getelementptr i8, ptr %i.ac, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %wide.trip.count.i = zext i32 %i.ag to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %.01213.i = phi i32 [ 0, %.preheader.i ], [ %i.ap, %bb.f ]
  %i.ak = getelementptr [32 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.al = tail call i64 @strnlen(ptr noundef readonly %i.ak, i64 noundef 32) #10
  %i.am = trunc i64 %i.al to i32
  %i.an = and i32 %i.am, -4
  %i.ao = add i32 %.01213.i, 20
  %i.ap = add i32 %i.ao, %i.an                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %strset_set_size.exit, label %bb.f, !llvm.loop !21

strset_set_size.exit:                             ; preds = %bb.f
  %i.aq = add i32 %i.ap, 24                       ; 3 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %.split41.us, label %strset_set_size.exit.thread

strset_set_size.exit.thread:                      ; preds = %bb.e, %strset_set_size.exit
  %.0.i2831 = phi i32 [ %i.aq, %strset_set_size.exit ], [ %.mux.i, %bb.e ]
  %i.as = add i32 %.0.i2831, %.02238
  br label %strset_include.exit.thread

strset_include.exit.thread:                       ; preds = %strset_set_size.exit.thread, %.split
  %.1.ph = phi i32 [ %.02238, %.split ], [ %i.as, %strset_set_size.exit.thread ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 23
  br i1 %exitcond.not, label %.split41.us, label %.split, !llvm.loop !22

.split41.us:                                      ; preds = %strset_include.exit.thread, %strset_set_size.exit, %strset_set_size.exit.us, %strset_include.exit.thread.us
  %.us-phi = phi i32 [ %i.w, %strset_set_size.exit.us ], [ %.1.ph.us, %strset_include.exit.thread.us ], [ %.1.ph, %strset_include.exit.thread ], [ %i.aq, %strset_set_size.exit ]
  ret i32 %.us-phi
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -95, 1) i32 @strset_fill_reply(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 188        ; 8 uses
  %.val.i.i = load i32, ptr %i.d, align 4
  %i.e = getelementptr i8, ptr %0, i64 200        ; 8 uses
  %.val4.i.i = load ptr, ptr %i.e, align 8
  %i.f = zext i32 %.val.i.i to i64
  %i.g = getelementptr i8, ptr %.val4.i.i, i64 %i.f ; 5 uses
  %i.h = tail call i32 @nla_put(ptr noundef %0, i32 noundef range(i32 32768, 32772) 32770, i32 noundef 0, ptr noundef null) #7
  %i.i = icmp slt i32 %i.h, 0
  %.not41 = icmp eq ptr %i.g, null
  %.not = select i1 %i.i, i1 true, i1 %.not41
  br i1 %.not, label %bb.v, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.j = getelementptr i8, ptr %1, i64 16
  %i.k = getelementptr i8, ptr %2, i64 8          ; 3 uses
  %i.l = getelementptr i8, ptr %1, i64 20
  %i.m = getelementptr i8, ptr %0, i64 112
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %strset_fill_set.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %strset_fill_set.exit ] ; 6 uses
  %.val = load i32, ptr %i.j, align 8             ; 2 uses
  %.not.i = icmp eq i32 %.val, 0
  br i1 %.not.i, label %bb.c, label %.split

.split:                                           ; preds = %bb.b
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  %i.o = shl nuw nsw i32 1, %i.n
  %i.p = and i32 %.val, %i.o
  %.not34 = icmp eq i32 %i.p, 0
  br i1 %.not34, label %strset_fill_set.exit, label %.split._crit_edge

.split._crit_edge:                                ; preds = %.split
  %.phi.trans.insert.a = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv
  %.pre.a = load i8, ptr %.phi.trans.insert.a, align 8, !range !11
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !range !11, !noundef !12 ; 3 uses
  %i.s = trunc nuw i8 %i.r to i1                  ; 2 uses
  br i1 %i.s, label %strset_include.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %3 = getelementptr i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %3, align 8
  %.not12.i.a = icmp eq ptr %i.t, null
  br i1 %.not12.i.a, label %strset_fill_set.exit, label %strset_include.exit

strset_include.exit:                              ; preds = %bb.c, %bb.d
  %4 = load ptr, ptr %2, align 8
  %.not13.i = icmp eq ptr %4, null
  %5 = icmp ne i8 %i.r, 0
  %6 = xor i1 %i.s, true
  %7 = select i1 %.not13.i, i1 %6, i1 %5
  br i1 %7, label %bb.e, label %strset_fill_set.exit

bb.e:                                             ; preds = %.split._crit_edge, %strset_include.exit
  %8 = phi i8 [ %.pre.a, %.split._crit_edge ], [ %i.r, %strset_include.exit ]
  %i.u = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv ; 3 uses
  %i.v = load i8, ptr %i.l, align 4, !range !11, !noundef !12
  %9 = trunc nuw i8 %i.v to i1
  %i.w = trunc nuw i8 %8 to i1
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.u, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %.not.i27 = icmp eq ptr %i.y, null
  br i1 %.not.i27, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = getelementptr i8, ptr %i.u, i64 4        ; 4 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %strset_fill_set.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val.i.i.i = load i32, ptr %i.d, align 4
  %.val4.i.i.i = load ptr, ptr %i.e, align 8
  %i.ac = zext i32 %.val.i.i.i to i64
  %i.ad = getelementptr i8, ptr %.val4.i.i.i, i64 %i.ac ; 5 uses
  %i.ae = call i32 @nla_put(ptr noundef %0, i32 noundef range(i32 32768, 32772) 32769, i32 noundef 0, ptr noundef null) #7
  %i.af = icmp slt i32 %i.ae, 0
  %.not2741.i = icmp eq ptr %i.ad, null
  %.not27.i = select i1 %i.af, i1 true, i1 %.not2741.i
  br i1 %.not27.i, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ag, ptr %i.c, align 4
  %i.ah = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  %.not28.i = icmp eq i32 %i.ah, 0
  br i1 %.not28.i, label %bb.j, label %strset_fill_string.exit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.ai = load i32, ptr %i.z, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.ai, ptr %i.b, align 4
  %i.aj = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %.not29.i = icmp eq i32 %i.aj, 0
  br i1 %.not29.i, label %bb.k, label %strset_fill_string.exit.thread.i

bb.k:                                             ; preds = %bb.j
  br i1 %9, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val.i.i31.i = load i32, ptr %i.d, align 4
  %.val4.i.i32.i = load ptr, ptr %i.e, align 8
  %i.ak = zext i32 %.val.i.i31.i to i64
  %i.al = getelementptr i8, ptr %.val4.i.i32.i, i64 %i.ak ; 3 uses
  %i.am = call i32 @nla_put(ptr noundef %0, i32 noundef range(i32 32768, 32772) 32771, i32 noundef 0, ptr noundef null) #7
  %i.an = icmp slt i32 %i.am, 0
  %.not3044.i = icmp eq ptr %i.al, null
  %.not30.i = select i1 %i.an, i1 true, i1 %.not3044.i
  br i1 %.not30.i, label %strset_fill_string.exit.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.l
  %i.ao = load i32, ptr %i.z, align 4
  %.not45.i = icmp eq i32 %i.ao, 0
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ap = getelementptr i8, ptr %i.u, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.q ] ; 3 uses
  %.val.i = load ptr, ptr %i.ap, align 8
  %i.aq = getelementptr [32 x i8], ptr %.val.i, i64 %indvars.iv.i ; 2 uses
  %.val.i.i.i.i = load i32, ptr %i.d, align 4
  %.val4.i.i.i.i = load ptr, ptr %i.e, align 8
  %i.ar = zext i32 %.val.i.i.i.i to i64
  %i.as = getelementptr i8, ptr %.val4.i.i.i.i, i64 %i.ar ; 5 uses
  %i.at = call i32 @nla_put(ptr noundef %0, i32 noundef range(i32 32768, 32772) 32769, i32 noundef 0, ptr noundef null) #7
  %i.au = icmp slt i32 %i.at, 0
  %.not3.i.i = icmp eq ptr %i.as, null
  %.not.i.i = select i1 %i.au, i1 true, i1 %.not3.i.i
  br i1 %.not.i.i, label %strset_fill_string.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.av = trunc nuw i64 %indvars.iv.i to i32
  store i32 %i.av, ptr %i.a, align 4
  %i.aw = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %.not13.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not13.i.i, label %bb.o, label %ethnl_put_strz.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.ax = call i64 @strnlen(ptr noundef readonly %i.aq, i64 noundef 32) #10 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = add i32 %i.ay, 1
  %i.ba = call ptr @nla_reserve(ptr noundef %0, i32 noundef 2, i32 noundef %i.az) #7 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %ethnl_put_strz.exit.i.i, label %bb.q

ethnl_put_strz.exit.i.i:                          ; preds = %bb.o, %bb.n
  %i.bb = getelementptr i8, ptr %0, i64 208       ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = icmp ult ptr %i.as, %i.bc
  br i1 %i.bd, label %bb.p, label %nla_nest_cancel.exit.i.i, !prof !25

bb.p:                                             ; preds = %ethnl_put_strz.exit.i.i
  call void asm sideeffect "735: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 735b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 735) #8, !srcloc !26
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, ptr @.str.7, i32 1107, i32 2305, i64 16) #8, !srcloc !27
  call void asm sideeffect "736: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 736b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 736) #8, !srcloc !28
  %.pre.i.i.i.i = load ptr, ptr %i.bb, align 8
  br label %nla_nest_cancel.exit.i.i

nla_nest_cancel.exit.i.i:                         ; preds = %bb.p, %ethnl_put_strz.exit.i.i
  %i.be = phi ptr [ %.pre.i.i.i.i, %bb.p ], [ %i.bc, %ethnl_put_strz.exit.i.i ]
  %i.bf = ptrtoint ptr %i.as to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bh to i32
  call void @skb_trim(ptr noundef %0, i32 noundef %i.bi) #7
  br label %strset_fill_string.exit.thread.i

bb.q:                                             ; preds = %bb.o
  %i.bj = getelementptr i8, ptr %i.ba, i64 4      ; 2 uses
  %i.bk = and i64 %i.ax, 4294967295               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr readonly align 1 %i.aq, i64 %i.bk, i1 false)
  %i.bl = getelementptr i8, ptr %i.bj, i64 %i.bk
  store i8 0, ptr %i.bl, align 1
  %.val.i.i34.i = load i32, ptr %i.d, align 4
  %.val4.i.i35.i = load ptr, ptr %i.e, align 8
  %i.bm = zext i32 %.val.i.i34.i to i64
  %i.bn = getelementptr i8, ptr %.val4.i.i35.i, i64 %i.bm
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.as to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = trunc i64 %i.bq to i16
  store i16 %i.br, ptr %i.as, align 2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bs = load i32, ptr %i.z, align 4
  %i.bt = zext i32 %i.bs to i64
  %i.bu = icmp samesign ult i64 %indvars.iv.next.i, %i.bt
  br i1 %i.bu, label %bb.m, label %._crit_edge.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %bb.q, %.preheader.i
  %.val.i.i28 = load i32, ptr %i.d, align 4
  %.val4.i.i29 = load ptr, ptr %i.e, align 8
  %i.bv = zext i32 %.val.i.i28 to i64
  %i.bw = getelementptr i8, ptr %.val4.i.i29, i64 %i.bv
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.al to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = icmp sgt i64 %i.bz, 65535
  br i1 %i.ca, label %strset_fill_string.exit.thread.i, label %nla_nest_end_safe.exit.i

nla_nest_end_safe.exit.i:                         ; preds = %._crit_edge.i
  %i.cb = trunc i64 %i.bz to i16
  store i16 %i.cb, ptr %i.al, align 2
  %i.cc = load i32, ptr %i.m, align 8
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %strset_fill_string.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %nla_nest_end_safe.exit.i, %bb.k
  %.val.i37.i = load i32, ptr %i.d, align 4
  %.val4.i38.i = load ptr, ptr %i.e, align 8
  %i.ce = zext i32 %.val.i37.i to i64
  %i.cf = getelementptr i8, ptr %.val4.i38.i, i64 %i.ce
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ad to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = trunc i64 %i.ci to i16
  store i16 %i.cj, ptr %i.ad, align 2
  br label %strset_fill_set.exit

strset_fill_string.exit.thread.i:                 ; preds = %nla_nest_end_safe.exit.i, %._crit_edge.i, %bb.l, %bb.j, %bb.i, %bb.m, %nla_nest_cancel.exit.i.i
  %i.ck = getelementptr i8, ptr %0, i64 208       ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cm = icmp ult ptr %i.ad, %i.cl
  br i1 %i.cm, label %bb.s, label %nla_nest_cancel.exit.i, !prof !25

bb.s:                                             ; preds = %strset_fill_string.exit.thread.i
  call void asm sideeffect "735: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 735b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 735) #8, !srcloc !26
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, ptr @.str.7, i32 1107, i32 2305, i64 16) #8, !srcloc !27
  call void asm sideeffect "736: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 736b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 736) #8, !srcloc !28
  %.pre.i.i.i = load ptr, ptr %i.ck, align 8
  br label %nla_nest_cancel.exit.i

nla_nest_cancel.exit.i:                           ; preds = %bb.s, %strset_fill_string.exit.thread.i
  %i.cn = phi ptr [ %.pre.i.i.i, %bb.s ], [ %i.cl, %strset_fill_string.exit.thread.i ]
  %i.co = ptrtoint ptr %i.ad to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = trunc i64 %i.cq to i32
  call void @skb_trim(ptr noundef %0, i32 noundef %i.cr) #7
  br label %.loopexit

strset_fill_set.exit:                             ; preds = %bb.d, %bb.r, %bb.g, %.split, %strset_include.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 23
  br i1 %exitcond.not, label %bb.t, label %bb.b, !llvm.loop !24

bb.t:                                             ; preds = %strset_fill_set.exit
  %.val.i30 = load i32, ptr %i.d, align 4
  %.val4.i = load ptr, ptr %i.e, align 8
  %i.cs = zext i32 %.val.i30 to i64
  %i.ct = getelementptr i8, ptr %.val4.i, i64 %i.cs
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.g to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = trunc i64 %i.cw to i16
  store i16 %i.cx, ptr %i.g, align 2
  br label %bb.v

.loopexit:                                        ; preds = %bb.f, %bb.h, %nla_nest_cancel.exit.i
  %.024.i.ph = phi i32 [ -90, %nla_nest_cancel.exit.i ], [ -95, %bb.f ], [ -90, %bb.h ]
  %i.cy = getelementptr i8, ptr %0, i64 208       ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %i.da = icmp ult ptr %i.g, %i.cz
  br i1 %i.da, label %bb.u, label %nla_nest_cancel.exit, !prof !25

bb.u:                                             ; preds = %.loopexit
  call void asm sideeffect "735: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 735b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 735) #8, !srcloc !26
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, ptr @.str.7, i32 1107, i32 2305, i64 16) #8, !srcloc !27
  call void asm sideeffect "736: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 736b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 736) #8, !srcloc !28
  %.pre.i.i = load ptr, ptr %i.cy, align 8
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %.loopexit, %bb.u
  %i.db = phi ptr [ %.pre.i.i, %bb.u ], [ %i.cz, %.loopexit ]
  %i.dc = ptrtoint ptr %i.g to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = trunc i64 %i.de to i32
  call void @skb_trim(ptr noundef %0, i32 noundef %i.df) #7
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %nla_nest_cancel.exit, %bb.t
  %.024 = phi i32 [ %.024.i.ph, %nla_nest_cancel.exit ], [ 0, %bb.t ], [ -90, %bb.a ]
  ret i32 %.024
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @strset_cleanup_data(ptr nofree noundef captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 9          ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !11, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @kfree(ptr noundef %i.e) #7
  store ptr null, ptr %i.d, align 8
  store i8 0, ptr %i.a, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = getelementptr i8, ptr %0, i64 25         ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !11, !noundef !12
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @kfree(ptr noundef %i.j) #7
  store ptr null, ptr %i.i, align 8
  store i8 0, ptr %i.f, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr i8, ptr %0, i64 41         ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !range !11, !noundef !12
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @kfree(ptr noundef %i.o) #7
  store ptr null, ptr %i.n, align 8
  store i8 0, ptr %i.k, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = getelementptr i8, ptr %0, i64 57         ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !range !11, !noundef !12
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  tail call void @kfree(ptr noundef %i.t) #7
  store ptr null, ptr %i.s, align 8
  store i8 0, ptr %i.p, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.u = getelementptr i8, ptr %0, i64 73         ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !range !11, !noundef !12
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  tail call void @kfree(ptr noundef %i.y) #7
  store ptr null, ptr %i.x, align 8
  store i8 0, ptr %i.u, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = getelementptr i8, ptr %0, i64 89         ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !range !11, !noundef !12
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void @kfree(ptr noundef %i.ad) #7
  store ptr null, ptr %i.ac, align 8
  store i8 0, ptr %i.z, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ae = getelementptr i8, ptr %0, i64 105       ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !range !11, !noundef !12
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void @kfree(ptr noundef %i.ai) #7
  store ptr null, ptr %i.ah, align 8
  store i8 0, ptr %i.ae, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aj = getelementptr i8, ptr %0, i64 121       ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !range !11, !noundef !12
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr i8, ptr %0, i64 128       ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  tail call void @kfree(ptr noundef %i.an) #7
  store ptr null, ptr %i.am, align 8
  store i8 0, ptr %i.aj, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ao = getelementptr i8, ptr %0, i64 137       ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !range !11, !noundef !12
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void @kfree(ptr noundef %i.as) #7
  store ptr null, ptr %i.ar, align 8
  store i8 0, ptr %i.ao, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.at = getelementptr i8, ptr %0, i64 153       ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !range !11, !noundef !12
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aw = getelementptr i8, ptr %0, i64 160       ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void @kfree(ptr noundef %i.ax) #7
  store ptr null, ptr %i.aw, align 8
  store i8 0, ptr %i.at, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ay = getelementptr i8, ptr %0, i64 169       ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !range !11, !noundef !12
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bb = getelementptr i8, ptr %0, i64 176       ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void @kfree(ptr noundef %i.bc) #7
  store ptr null, ptr %i.bb, align 8
  store i8 0, ptr %i.ay, align 1
  br label %bb.w

end_hunk_0
