inline.NumInlined: 117
inline.NumDeleted: 34
begin_hunk_0_@nla_policy_len:bb.a

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
  %.not30 = icmp samesign ult i64 %.025, %2       ; 2 uses
  %i.k = add nsw i64 %2, -1
  %.027 = select i1 %.not30, i64 %.025, i64 -7
  %.026 = select i1 %.not30, i64 %.025, i64 %i.k  ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %i.c, i64 %.026, i1 false)
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
define dso_local ptr @nla_strdup(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 align 16 prefalign(16) {
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 1 %i.b, i64 %.0, i1 false)
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %i.d, i64 %i.e, i1 false)
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
  %2 = zext i16 %i.d to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.01315 = phi i32 [ %4, %bb.b ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %3 = zext nneg i32 %.01315 to i64
  %i.e = getelementptr i8, ptr %i.c, i64 %3
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %4 = add nsw i32 %.01315, -1
  %i.i = icmp sgt i32 %.01315, 1
  br i1 %i.i, label %.lr.ph, label %.critedge, !llvm.loop !44

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.013.lcssa = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %.01315, %.lr.ph ]
  %i.j = sub i32 %.013.lcssa, %i.b                ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %sext = shl i64 %i.a, 32
  %i.l = ashr exact i64 %sext, 32
  %i.m = tail call i32 @memcmp(ptr noundef %i.c, ptr noundef %1, i64 noundef %i.l) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  %.0 = phi i32 [ %i.m, %bb.c ], [ %i.j, %.critedge ]
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
  %i.d = zext i32 %i.b to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.c, i8 0, i64 %i.d, i1 false)
  ret ptr %i.c
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef ptr @nla_reserve(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 align 16 prefalign(16) {
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
  br label %bb.d

bb.d:                                             ; preds = %skb_tailroom.exit, %bb.c
  %.0 = phi ptr [ %i.k, %bb.c ], [ null, %skb_tailroom.exit ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef ptr @nla_reserve_64bit(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 %3) #0 align 16 prefalign(16) {
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
  br label %bb.d

bb.d:                                             ; preds = %skb_tailroom.exit, %bb.c
  %.09 = phi ptr [ %i.k, %bb.c ], [ null, %skb_tailroom.exit ]
  ret ptr %.09
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @nla_reserve_nohdr(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
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
  br label %bb.d

bb.d:                                             ; preds = %skb_tailroom.exit, %bb.c
  %.0 = phi ptr [ %i.k, %bb.c ], [ null, %skb_tailroom.exit ]
  ret ptr %.0
}

end_hunk_0
