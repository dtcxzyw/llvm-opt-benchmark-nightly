Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/nlattr?download=true
inline.NumInlined: 117
inline.NumDeleted: 34
begin_hunk_0_@__nla_validate_parse:bb.a
  %i.ny = getelementptr [8 x i8], ptr %6, i64 %i.cw
  store ptr %.052172, ptr %i.ny, align 8
  br label %bb.ee

bb.ee:                                            ; preds = %bb.n, %bb.ed, %validate_nla.exit.thread109
  %i.nz = load i16, ptr %.052172, align 2
  %i.oa = zext i16 %i.nz to i32
  %i.ob = add nuw nsw i32 %i.oa, 3
  %i.oc = and i32 %i.ob, 131068                   ; 2 uses
  %i.od = sub nsw i32 %.085171, %i.oc             ; 3 uses
  %i.oe = zext nneg i32 %i.oc to i64
  %i.of = getelementptr i8, ptr %.052172, i64 %i.oe
  %i.og = icmp sgt i32 %i.od, 3
  br i1 %i.og, label %.lr.ph.split, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.ee, %validate_nla.exit.thread109.us, %bb.k, %validate_nla.exit.thread109.us.us, %bb.h, %bb.f
  %.085.lcssa = phi i32 [ %1, %bb.f ], [ %i.au, %validate_nla.exit.thread109.us.us ], [ %i.cg, %validate_nla.exit.thread109.us ], [ %i.bm, %bb.k ], [ %i.ad, %bb.h ], [ %i.od, %bb.ee ] ; 2 uses
  %i.oh = icmp sgt i32 %.085.lcssa, 0
  br i1 %i.oh, label %.thread116, label %bb.ej, !prof !37

.thread116:                                       ; preds = %.lr.ph.split, %.lr.ph.split.us.split.split, %.lr.ph.split.us.split.split.us, %.lr.ph.split.us.split.us.split, %.lr.ph.split.us.split.us.split.us, %._crit_edge
  %.085170 = phi i32 [ %.085.lcssa, %._crit_edge ], [ %.085171.us.us, %.lr.ph.split.us.split.us.split ], [ %.085171.us, %.lr.ph.split.us.split.split ], [ %.085171.us.us181, %.lr.ph.split.us.split.split.us ], [ %.085171.us.us.us, %.lr.ph.split.us.split.us.split.us ], [ %.085171, %.lr.ph.split ]
  %i.oi = tail call i32 @___ratelimit(ptr noundef nonnull @__nla_validate_parse._rs, ptr noundef nonnull @__func__.__nla_validate_parse) #13
  %.not66 = icmp eq i32 %i.oi, 0
  br i1 %.not66, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %.thread116
  %i.oj = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #14, !srcloc !30
  %i.ok = inttoptr i64 %i.oj to ptr
  %i.ol = getelementptr i8, ptr %i.ok, i64 2008
  %i.om = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %.085170, ptr noundef %i.ol) #15 ; 0 uses
  br label %bb.eg

bb.eg:                                            ; preds = %.thread116, %bb.ef
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nla_validate_parse.__msg.4) #13
  %.not67 = icmp eq ptr %5, null
  br i1 %.not67, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  store ptr @__nla_validate_parse.__msg.4, ptr %5, align 8
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.on = and i32 %4, 1
  %.not68 = icmp eq i32 %i.on, 0
  br i1 %.not68, label %bb.ej, label %.thread112

bb.ej:                                            ; preds = %bb.ei, %._crit_edge
  br label %.thread112

.thread112:                                       ; preds = %bb.eb, %bb.be, %bb.dm, %bb.bn, %bb.bm, %bb.bl, %bb.x, %bb.ac, %bb.bq, %nla_validate_int_range.exit.thread95, %bb.al, %bb.ag, %validate_nla_bitfield32.exit.thread, %bb.ao, %bb.y, %bb.ad, %bb.ah, %bb.ap, %bb.br, %bb.ec, %.thread, %bb.dl, %bb.dj, %bb.dk, %bb.dy, %bb.dz, %bb.o, %.split.us, %bb.ei, %bb.b, %bb.c, %bb.ej
  %.4 = phi i32 [ 0, %bb.ej ], [ -22, %bb.ei ], [ -22, %bb.b ], [ -22, %bb.c ], [ -34, %bb.dk ], [ -22, %bb.o ], [ -22, %.split.us ], [ -22, %bb.dz ], [ -22, %.thread ], [ -22, %bb.x ], [ %.0176.i105, %bb.ec ], [ -22, %bb.br ], [ -22, %bb.ap ], [ -22, %bb.ah ], [ -22, %bb.ad ], [ -22, %bb.y ], [ -34, %bb.dj ], [ -22, %bb.dy ], [ -22, %bb.ao ], [ %.0176.i, %validate_nla_bitfield32.exit.thread ], [ -22, %bb.ag ], [ -22, %bb.al ], [ %.0.i.i.ph, %nla_validate_int_range.exit.thread95 ], [ -22, %bb.bq ], [ -22, %bb.dl ], [ -22, %bb.ac ], [ -34, %bb.bm ], [ -34, %bb.bl ], [ %i.he, %bb.bn ], [ %i.gh, %bb.be ], [ %i.nu, %bb.eb ], [ -22, %bb.dm ]
  ret i32 %.4
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define dso_local i32 @nla_policy_len(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.022 = phi i32 [ %.1, %bb.g ], [ 0, %bb.a ]    ; 4 uses
  %.01321 = phi i32 [ %i.y, %bb.g ], [ 0, %bb.a ]
  %.01420 = phi ptr [ %i.z, %bb.g ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr i8, ptr %.01420, i64 2
  %i.c = load i16, ptr %i.b, align 2              ; 2 uses
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = zext i16 %i.c to i32
  %i.e = add nuw nsw i32 %i.d, 7
  %i.f = and i32 %i.e, 131068
  %i.g = add i32 %i.f, %.022
  br label %bb.g

bb.c:                                             ; preds = %.lr.ph
  %i.h = load i8, ptr %.01420, align 8
  %i.i = zext i8 %i.h to i64                      ; 3 uses
  %i.j = shl nuw i64 1, %i.i                      ; 2 uses
  %i.k = and i64 %i.j, 3346401
  %.not18.not = icmp eq i64 %i.k, 0
  br i1 %.not18.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr @nla_attr_len, i64 %i.i
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i32
  %i.o = add nuw nsw i32 %i.n, 7
  %i.p = and i32 %i.o, 508
  %i.q = add i32 %i.p, %.022
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.r = and i64 %i.j, 3346017
  %.not19.not = icmp eq i64 %i.r, 0
  br i1 %.not19.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr @nla_attr_minlen, i64 %i.i
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = add nuw nsw i32 %i.u, 7
  %i.w = and i32 %i.v, 508
  %i.x = add i32 %i.w, %.022
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.e, %bb.f, %bb.d
  %.1 = phi i32 [ %i.g, %bb.b ], [ %i.q, %bb.d ], [ %i.x, %bb.f ], [ %.022, %bb.e ] ; 2 uses
  %i.y = add nuw nsw i32 %.01321, 1               ; 2 uses
  %i.z = getelementptr i8, ptr %.01420, i64 16
  %exitcond.not = icmp eq i32 %i.y, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.g ]
  ret i32 %.0.lcssa
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @__nla_parse(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i32 @__nla_validate_parse(ptr noundef %2, i32 noundef %3, i32 noundef %1, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %0, i32 noundef 0) #12, !srcloc !39
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define dso_local noundef ptr @nla_find(ptr nofree noundef readonly captures(ret: address, provenance) %0, i32 noundef %1, i32 noundef %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = icmp sgt i32 %1, 3
  br i1 %i.a, label %.lr.ph, label %nla_ok.exit.thread

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.013 = phi ptr [ %i.m, %bb.c ], [ %0, %bb.a ]  ; 4 uses
  %.0912 = phi i32 [ %i.k, %bb.c ], [ %1, %bb.a ] ; 2 uses
  %i.b = load i16, ptr %.013, align 2             ; 2 uses
  %i.c = icmp ult i16 %i.b, 4
  %i.d = zext i16 %i.b to i32                     ; 2 uses
  %.not11 = icmp samesign ult i32 %.0912, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not11
  br i1 %or.cond, label %nla_ok.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr i8, ptr %.013, i64 2
  %.0.val = load i16, ptr %i.e, align 2
  %i.f = and i16 %.0.val, 16383
  %i.g = zext nneg i16 %i.f to i32
  %i.h = icmp eq i32 %2, %i.g
  br i1 %i.h, label %nla_ok.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw nsw i32 %i.d, 3
  %i.j = and i32 %i.i, 131068                     ; 2 uses
  %i.k = sub nsw i32 %.0912, %i.j                 ; 2 uses
  %i.l = zext nneg i32 %i.j to i64
  %i.m = getelementptr i8, ptr %.013, i64 %i.l
  %i.n = icmp sgt i32 %i.k, 3
  br i1 %i.n, label %.lr.ph, label %nla_ok.exit.thread, !llvm.loop !40

nla_ok.exit.thread:                               ; preds = %bb.b, %.lr.ph, %bb.c, %bb.a
  %.07 = phi ptr [ null, %bb.a ], [ null, %.lr.ph ], [ null, %bb.c ], [ %.013, %bb.b ]
  ret ptr %.07
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -7, 65535) i64 @nla_strscpy(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %.val = load i16, ptr %1, align 2
  %i.a = add i16 %.val, -4                        ; 2 uses
  %i.b = zext i16 %i.a to i64                     ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %2, 65535
  br i1 %i.e, label %bb.c, label %.critedge, !prof !10

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "693: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 693b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 693) #11, !srcloc !41
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 779, i32 2307, i64 16) #11, !srcloc !42
  tail call void asm sideeffect "694: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 694b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 694) #11, !srcloc !43
  br label %bb.f

.critedge:                                        ; preds = %bb.b
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.f = getelementptr i8, ptr %i.c, i64 %i.b
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, 0
  %i.j = sext i1 %i.i to i64
  %spec.select = add nsw i64 %i.j, %i.b
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge
  %.025 = phi i64 [ 0, %.critedge ], [ %spec.select, %bb.d ] ; 3 uses
  %.not30 = icmp samesign ult i64 %.025, %2
  %i.k = add nsw i64 %2, -1
  %.027 = select i1 %.not30, i64 %.025, i64 -7
  %.026 = tail call i64 @llvm.umin.i64(i64 %.025, i64 %i.k) ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 2 %i.c, i64 %.026, i1 false)
  %i.l = getelementptr i8, ptr %0, i64 %.026
  %i.m = sub nsw i64 %2, %.026
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.l, i8 0, i64 %i.m, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.a, %bb.e
  %.0 = phi i64 [ %.027, %bb.e ], [ -7, %bb.c ], [ -7, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noalias ptr @nla_strdup(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %.val = load i16, ptr %0, align 2
  %i.a = add i16 %.val, -4                        ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %_kmalloc_noprof.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i16 %i.a to i64                     ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 0
  %i.h = sext i1 %i.g to i64
  %spec.select = add nsw i64 %i.h, %i.c
  br label %_kmalloc_noprof.exit

_kmalloc_noprof.exit:                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ 0, %bb.a ], [ %spec.select, %bb.b ] ; 3 uses
  %i.i = add nuw nsw i64 %.0, 1
  %i.j = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 1, 65537) %i.i, i32 noundef %1) #16 ; 4 uses
  %.not21 = icmp eq ptr %i.j, null
  br i1 %.not21, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_kmalloc_noprof.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 2 %i.b, i64 %.0, i1 false)
  %i.k = getelementptr i8, ptr %i.j, i64 %.0
  store i8 0, ptr %i.k, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_kmalloc_noprof.exit
  ret ptr %i.j
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define dso_local range(i32 -2147483648, 65536) i32 @nla_memcpy(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 align 16 prefalign(16) {
bb.a:
  %.val = load i16, ptr %1, align 2
  %i.a = add i16 %.val, -4
  %i.b = zext i16 %i.a to i32                     ; 2 uses
  %i.c = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.b) ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 4
  %i.e = sext i32 %i.c to i64                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 2 %i.d, i64 %i.e, i1 false)
  %i.f = icmp sgt i32 %2, %i.b
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 %i.e
  %i.h = sub i32 %2, %i.c
  %i.i = sext i32 %i.h to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.g, i8 0, i64 %i.i, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.c
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local i32 @nla_memcmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #5 align 16 prefalign(16) {
bb.a:
  %.val = load i16, ptr %0, align 2
  %i.a = add i16 %.val, -4
  %i.b = zext i16 %i.a to i64
  %i.c = sub i64 %i.b, %2
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 4
  %i.g = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %1, i64 noundef %2) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.d, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define dso_local i32 @nla_strcmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef %1) #13 ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val = load i16, ptr %0, align 2
  %i.d = add i16 %.val, -4                        ; 2 uses
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = zext i16 %i.d to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.01315 = phi i32 [ %i.k, %bb.b ], [ %i.e, %.lr.ph.preheader ] ; 4 uses
  %i.f = zext nneg i32 %.01315 to i64
  %i.g = getelementptr i8, ptr %i.c, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.k = add nsw i32 %.01315, -1
  %i.l = icmp sgt i32 %.01315, 1
  br i1 %i.l, label %.lr.ph, label %.critedge, !llvm.loop !44

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.013.lcssa = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %.01315, %.lr.ph ]
  %i.m = sub i32 %.013.lcssa, %i.b                ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %sext = shl i64 %i.a, 32
  %i.o = ashr exact i64 %sext, 32
  %i.p = tail call i32 @memcmp(ptr noundef %i.c, ptr noundef %1, i64 noundef %i.o) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  %.0 = phi i32 [ %i.p, %bb.c ], [ %i.m, %.critedge ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef ptr @__nla_reserve(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = add i32 %2, 7
  %i.b = and i32 %i.a, -4                         ; 2 uses
  %i.c = tail call ptr @skb_put(ptr noundef %0, i32 noundef %i.b) #13 ; 4 uses
  %i.d = trunc i32 %1 to i16
  %i.e = getelementptr i8, ptr %i.c, i64 2
  store i16 %i.d, ptr %i.e, align 2
  %i.f = add i32 %2, 4                            ; 2 uses
  %i.g = trunc i32 %i.f to i16
  store i16 %i.g, ptr %i.c, align 2
  %i.h = and i32 %i.f, 65535
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr i8, ptr %i.c, i64 %i.i
  %reass.sub = sub i32 %i.b, %2
  %i.k = add i32 %reass.sub, -4
  %i.l = sext i32 %i.k to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.j, i8 0, i64 %i.l, i1 false)
  ret ptr %i.c
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef ptr @__nla_reserve_64bit(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = add i32 %2, 7
  %i.b = and i32 %i.a, -4                         ; 2 uses
  %i.c = tail call ptr @skb_put(ptr noundef %0, i32 noundef %i.b) #13 ; 4 uses
  %i.d = trunc i32 %1 to i16
  %i.e = getelementptr i8, ptr %i.c, i64 2
  store i16 %i.d, ptr %i.e, align 2
  %i.f = add i32 %2, 4                            ; 2 uses
  %i.g = trunc i32 %i.f to i16
  store i16 %i.g, ptr %i.c, align 2
  %i.h = and i32 %i.f, 65535
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr i8, ptr %i.c, i64 %i.i
  %reass.sub = sub i32 %i.b, %2
  %i.k = add i32 %reass.sub, -4
  %i.l = sext i32 %i.k to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.j, i8 0, i64 %i.l, i1 false)
  ret ptr %i.c
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @__nla_reserve_nohdr(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = add i32 %1, 3
  %i.b = and i32 %i.a, -4                         ; 2 uses
  %i.c = tail call ptr @skb_put(ptr noundef %0, i32 noundef range(i32 0, -3) %i.b) #13 ; 2 uses
end_hunk_0
begin_hunk_1_@__nla_put_nohdr:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %2, i64 %i.e, i1 false)
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -90, 1) i32 @nla_put(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 116
  %.val.i = load i32, ptr %i.a, align 4
  %.not.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i, label %bb.b, label %skb_tailroom.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 192
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %0, i64 188
  %i.e = load i32, ptr %i.d, align 4
  %i.f = sub i32 %i.c, %i.e
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %i.h = add i32 %2, 7
  %i.i = and i32 %i.h, -4                         ; 3 uses
  %i.j = icmp slt i32 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %bb.c, !prof !10

bb.c:                                             ; preds = %skb_tailroom.exit
  %i.k = tail call ptr @skb_put(ptr noundef %0, i32 noundef %i.i) #13 ; 4 uses
  %i.l = trunc i32 %1 to i16
  %i.m = getelementptr i8, ptr %i.k, i64 2
  store i16 %i.l, ptr %i.m, align 2
  %i.n = add i32 %2, 4                            ; 2 uses
  %i.o = trunc i32 %i.n to i16
  store i16 %i.o, ptr %i.k, align 2
  %i.p = and i32 %i.n, 65535
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr i8, ptr %i.k, i64 %i.q
  %reass.sub = sub i32 %i.i, %2
  %i.s = add i32 %reass.sub, -4
  %i.t = sext i32 %i.s to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 0, i64 %i.t, i1 false)
  %i.u = getelementptr i8, ptr %i.k, i64 4
  %i.v = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.u, ptr readonly align 1 %3, i64 %i.v, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %skb_tailroom.exit, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -90, %skb_tailroom.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -90, 1) i32 @nla_put_64bit(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = add i32 %2, 7
  %i.b = and i32 %i.a, -4                         ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 116
  %.val.i = load i32, ptr %i.c, align 4
  %.not.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i, label %bb.b, label %skb_tailroom.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 192
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %0, i64 188
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sub i32 %i.e, %i.g
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %bb.a, %bb.b
  %i.i = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %i.j = icmp ult i32 %i.i, %i.b
  br i1 %i.j, label %bb.d, label %bb.c, !prof !10

bb.c:                                             ; preds = %skb_tailroom.exit
  %i.k = tail call ptr @skb_put(ptr noundef %0, i32 noundef %i.b) #13 ; 4 uses
  %i.l = trunc i32 %1 to i16
  %i.m = getelementptr i8, ptr %i.k, i64 2
  store i16 %i.l, ptr %i.m, align 2
  %i.n = add i32 %2, 4                            ; 2 uses
  %i.o = trunc i32 %i.n to i16
  store i16 %i.o, ptr %i.k, align 2
  %i.p = and i32 %i.n, 65535
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr i8, ptr %i.k, i64 %i.q
  %reass.sub = sub i32 %i.b, %2
  %i.s = add i32 %reass.sub, -4
  %i.t = sext i32 %i.s to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 0, i64 %i.t, i1 false)
  %i.u = getelementptr i8, ptr %i.k, i64 4
  %i.v = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.u, ptr readonly align 1 %3, i64 %i.v, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %skb_tailroom.exit, %bb.c
  %.010 = phi i32 [ 0, %bb.c ], [ -90, %skb_tailroom.exit ]
  ret i32 %.010
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -90, 1) i32 @nla_put_nohdr(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 116
  %.val.i = load i32, ptr %i.a, align 4
  %.not.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i, label %bb.b, label %skb_tailroom.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 192
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %0, i64 188
  %i.e = load i32, ptr %i.d, align 4
  %i.f = sub i32 %i.c, %i.e
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %i.h = add i32 %1, 3
  %i.i = and i32 %i.h, -4                         ; 3 uses
  %i.j = icmp slt i32 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %bb.c, !prof !10

bb.c:                                             ; preds = %skb_tailroom.exit
  %i.k = tail call ptr @skb_put(ptr noundef %0, i32 noundef range(i32 0, -3) %i.i) #13 ; 2 uses
  %i.l = zext i32 %i.i to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 0, i64 %i.l, i1 false)
  %i.m = sext i32 %1 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr readonly align 1 %2, i64 %i.m, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %skb_tailroom.exit, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -90, %skb_tailroom.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -90, 1) i32 @nla_append(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 116
  %.val.i = load i32, ptr %i.a, align 4
  %.not.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i, label %bb.b, label %skb_tailroom.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 192
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %0, i64 188
  %i.e = load i32, ptr %i.d, align 4
  %i.f = sub i32 %i.c, %i.e
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %i.h = add i32 %1, 3
  %i.i = and i32 %i.h, -4
  %i.j = icmp slt i32 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %bb.c, !prof !10

bb.c:                                             ; preds = %skb_tailroom.exit
  %i.k = tail call ptr @skb_put(ptr noundef %0, i32 noundef %1) #13
  %i.l = zext i32 %1 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr readonly align 1 %2, i64 %i.l, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %skb_tailroom.exit, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -90, %skb_tailroom.exit ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noredzone "no-builtin-wcslen" }
attributes #13 = { noredzone nounwind "no-builtin-wcslen" }
attributes #14 = { nounwind memory(none) }
attributes #15 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #16 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }

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
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{i64 2158856564, i64 2158856439}
!13 = !{i64 2158857087, i64 2158858202, i64 2158858235, i64 2158858270, i64 2158858286, i64 2158859213, i64 2158859271, i64 2158859320, i64 2158859130, i64 2158858345, i64 2158858377, i64 2158858460}
!14 = !{i64 2158859612, i64 2158859488}
!15 = !{i64 2158860935, i64 2158860810}
!16 = !{i64 2158861458, i64 2158866558, i64 2158866591, i64 2158866626, i64 2158866642, i64 2158867569, i64 2158867627, i64 2158867676, i64 2158867486, i64 2158866701, i64 2158866733, i64 2158866816}
!17 = !{i64 2158867968, i64 2158867844}
!18 = !{i64 2158872692, i64 2158872567}
!19 = !{i64 2158873215, i64 2158874254, i64 2158874287, i64 2158874322, i64 2158874338, i64 2158875265, i64 2158875323, i64 2158875372, i64 2158875182, i64 2158874397, i64 2158874429, i64 2158874512}
!20 = !{i64 2158875664, i64 2158875540}
!21 = !{i64 15087}
!22 = distinct !{!22, !11}
!23 = distinct !{null}
!24 = distinct !{null, null}
!25 = distinct !{!25, !11}
!26 = !{i64 2158893882}
!27 = !{i64 2158882165}
!28 = !{i64 2158885213, i64 2158885088}
!29 = !{i64 2158885736, i64 2158886212, i64 2158886245, i64 2158886280, i64 2158886296, i64 2158887137, i64 2158887195, i64 2158887244, i64 2158887054, i64 2158886355, i64 2158886387}
!30 = !{i64 2148457937}
!31 = !{i64 11150}
!32 = !{i64 2873}
!33 = !{!"auto-init"}
!34 = !{i64 2158877235, i64 2158877110}
!35 = !{i64 2158877758, i64 2158878797, i64 2158878830, i64 2158878865, i64 2158878881, i64 2158879808, i64 2158879866, i64 2158879915, i64 2158879725, i64 2158878940, i64 2158878972, i64 2158879055}
!36 = !{i64 2158880207, i64 2158880083}
!37 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!38 = distinct !{!38, !11}
!39 = !{i64 16663}
!40 = distinct !{!40, !11}
!41 = !{i64 2158906350, i64 2158906225}
!42 = !{i64 2158906873, i64 2158907928, i64 2158907961, i64 2158907996, i64 2158908012, i64 2158908939, i64 2158908997, i64 2158909046, i64 2158908856, i64 2158908071, i64 2158908103, i64 2158908186}
!43 = !{i64 2158909338, i64 2158909214}
!44 = distinct !{!44, !11}
end_hunk_1
