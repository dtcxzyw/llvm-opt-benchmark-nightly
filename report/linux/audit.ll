Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/audit?download=true
inline.NumInlined: 330
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@audit_log_n_hex:bb.a
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.l = trunc i64 %i.i to i32
  %i.m = sub i32 %i.l, %i.h
  %i.n = and i32 %i.m, -1024
  %i.o = add i32 %i.n, 1024
  br i1 %.not.i, label %bb.i, label %skb_tailroom.exit.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr i8, ptr %i.a, i64 192
  %i.q = load i32, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.a, i64 188
  %i.s = load i32, ptr %i.r, align 4
  %.neg.i = sub i32 %i.s, %i.q
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %bb.i, %bb.h
  %.neg14.i = phi i32 [ %.neg.i, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 64
  %i.u = load i32, ptr %i.t, align 8
  %i.v = tail call i32 @pskb_expand_head(ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %i.o, i32 noundef %i.u) #17
  %.val.i11.i = load i32, ptr %i.b, align 4
  %.not.i12.i = icmp eq i32 %.val.i11.i, 0
  %i.w = icmp slt i32 %i.v, 0                     ; 2 uses
  br i1 %.not.i12.i, label %skb_tailroom.exit13.i, label %skb_tailroom.exit13.i.thread

skb_tailroom.exit13.i:                            ; preds = %skb_tailroom.exit.i
  br i1 %i.w, label %audit_expand.exit.thread, label %audit_expand.exit

skb_tailroom.exit13.i.thread:                     ; preds = %skb_tailroom.exit.i
  br i1 %i.w, label %audit_expand.exit.thread, label %audit_expand.exit.thread52

audit_expand.exit.thread52:                       ; preds = %skb_tailroom.exit13.i.thread
  %i.x = getelementptr i8, ptr %i.a, i64 216      ; 2 uses
  %i.y = load i32, ptr %i.x, align 8
  %i.z = add i32 %i.y, %.neg14.i
  store i32 %i.z, ptr %i.x, align 8
  br label %bb.k

audit_expand.exit.thread:                         ; preds = %skb_tailroom.exit13.i, %skb_tailroom.exit13.i.thread
  tail call void @audit_log_lost(ptr noundef nonnull @.str.92) #22
  br label %bb.k

audit_expand.exit:                                ; preds = %skb_tailroom.exit13.i
  %i.aa = getelementptr i8, ptr %i.a, i64 192
  %i.ab = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr i8, ptr %i.a, i64 188
  %i.ad = load i32, ptr %i.ac, align 4            ; 3 uses
  %i.ae = getelementptr i8, ptr %i.a, i64 216     ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = add i32 %i.ab, %.neg14.i
  %i.ah = sub i32 %i.ag, %i.ad
  %i.ai = add i32 %i.ah, %i.af
  store i32 %i.ai, ptr %i.ae, align 8
  %.not48 = icmp eq i32 %i.ab, %i.ad
  br i1 %.not48, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge57, %audit_expand.exit
  %.val = phi i32 [ %.val.pre, %._crit_edge57 ], [ %i.ad, %audit_expand.exit ]
  %i.aj = getelementptr i8, ptr %i.a, i64 200
  %.val49 = load ptr, ptr %i.aj, align 8
  %i.ak = zext i32 %.val to i64
  %i.al = getelementptr i8, ptr %.val49, i64 %i.ak ; 3 uses
  %.not56 = icmp eq i64 %2, 0
  br i1 %.not56, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %xtraiter = and i64 %2, 1
  %i.am = icmp eq i64 %2, 1
  br i1 %i.am, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, 9223372036854775806
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.055 = phi ptr [ %i.al, %.lr.ph.preheader.new ], [ %i.bn, %.lr.ph ] ; 5 uses
  %.03854 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bo, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.an = getelementptr i8, ptr %1, i64 %.03854
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = lshr i32 %i.ap, 4
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr i8, ptr @hex_asc_upper, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1
  %i.au = getelementptr i8, ptr %.055, i64 1
  store i8 %i.at, ptr %.055, align 1
  %i.av = and i32 %i.ap, 15
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr i8, ptr @hex_asc_upper, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = getelementptr i8, ptr %.055, i64 2
  store i8 %i.ay, ptr %i.au, align 1
  %i.ba = getelementptr i8, ptr %1, i64 %.03854
  %i.bb = getelementptr i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i32                    ; 2 uses
  %i.be = lshr i32 %i.bd, 4
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr i8, ptr @hex_asc_upper, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = getelementptr i8, ptr %.055, i64 3
  store i8 %i.bh, ptr %i.az, align 1
  %i.bj = and i32 %i.bd, 15
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr i8, ptr @hex_asc_upper, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = getelementptr i8, ptr %.055, i64 4      ; 3 uses
  store i8 %i.bm, ptr %i.bi, align 1
  %i.bo = add nuw i64 %.03854, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !37

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.055.epil.init = phi ptr [ %i.al, %.lr.ph.preheader ], [ %i.bn, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.03854.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bo, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod64 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %i.bp = getelementptr i8, ptr %1, i64 %.03854.epil.init
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = zext i8 %i.bq to i32                    ; 2 uses
  %i.bs = lshr i32 %i.br, 4
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr i8, ptr @hex_asc_upper, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = getelementptr i8, ptr %.055.epil.init, i64 1
  store i8 %i.bv, ptr %.055.epil.init, align 1
  %i.bx = and i32 %i.br, 15
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr i8, ptr @hex_asc_upper, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = getelementptr i8, ptr %.055.epil.init, i64 2
  store i8 %i.ca, ptr %i.bw, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.j
  %.0.lcssa = phi ptr [ %i.al, %bb.j ], [ %i.bn, %._crit_edge.loopexit.unr-lcssa ], [ %i.cb, %.lr.ph.epil.preheader ]
  store i8 0, ptr %.0.lcssa, align 1
  %i.cc = trunc i64 %i.i to i32
  %i.cd = tail call ptr @skb_put(ptr noundef nonnull %i.a, i32 noundef %i.cc) #17 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %audit_expand.exit.thread52, %audit_expand.exit.thread, %audit_expand.exit, %bb.a, %._crit_edge, %bb.f
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @audit_log_n_string(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8                ; 14 uses
  %.not22 = icmp eq ptr %i.a, null
  br i1 %.not22, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "1036: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1036b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1036) #21, !srcloc !40
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.7, ptr nonnull @.str.8, i32 2131, i32 0, i64 16) #21, !srcloc !41
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %i.a, i64 116      ; 2 uses
  %.val.i = load i32, ptr %i.b, align 4
  %.not.i = icmp eq i32 %.val.i, 0                ; 2 uses
  br i1 %.not.i, label %bb.e, label %skb_tailroom.exit

bb.e:                                             ; preds = %bb.d
  %i.c = getelementptr i8, ptr %i.a, i64 192
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.a, i64 188
  %i.f = load i32, ptr %i.e, align 4
  %i.g = sub i32 %i.d, %i.f
  %i.h = sext i32 %i.g to i64
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %bb.d, %bb.e
  %i.i = phi i64 [ %i.h, %bb.e ], [ 0, %bb.d ]
  %i.j = zext i64 %2 to i65
  %i.k = tail call { i65, i1 } @llvm.sadd.with.overflow.i65(i65 %i.j, i65 3) ; 2 uses
  %i.l = extractvalue { i65, i1 } %i.k, 1
  %i.m = extractvalue { i65, i1 } %i.k, 0         ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %skb_tailroom.exit
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #22
  br label %bb.k

bb.g:                                             ; preds = %skb_tailroom.exit
  %i.n = trunc nuw i65 %i.m to i64
  %i.o = icmp ult i64 %i.i, %i.n
  br i1 %i.o, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.phi.trans.insert = getelementptr i8, ptr %i.a, i64 188
  %.val.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.p = trunc i65 %i.m to i32
  br i1 %.not.i, label %bb.i, label %skb_tailroom.exit.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr i8, ptr %i.a, i64 192
  %i.r = load i32, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.a, i64 188
  %i.t = load i32, ptr %i.s, align 4
  %.neg.i = sub i32 %i.t, %i.r
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %bb.i, %bb.h
  %.neg14.i = phi i32 [ %.neg.i, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 64
  %i.v = load i32, ptr %i.u, align 8
  %i.w = tail call i32 @pskb_expand_head(ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %i.p, i32 noundef %i.v) #17
  %.val.i11.i = load i32, ptr %i.b, align 4
  %.not.i12.i = icmp eq i32 %.val.i11.i, 0
  %i.x = icmp slt i32 %i.w, 0                     ; 2 uses
  br i1 %.not.i12.i, label %skb_tailroom.exit13.i, label %skb_tailroom.exit13.i.thread

skb_tailroom.exit13.i:                            ; preds = %skb_tailroom.exit.i
  br i1 %i.x, label %audit_expand.exit.thread, label %audit_expand.exit

skb_tailroom.exit13.i.thread:                     ; preds = %skb_tailroom.exit.i
  br i1 %i.x, label %audit_expand.exit.thread, label %audit_expand.exit.thread27

audit_expand.exit.thread27:                       ; preds = %skb_tailroom.exit13.i.thread
  %i.y = getelementptr i8, ptr %i.a, i64 216      ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = add i32 %i.z, %.neg14.i
  store i32 %i.aa, ptr %i.y, align 8
  br label %bb.k

audit_expand.exit.thread:                         ; preds = %skb_tailroom.exit13.i, %skb_tailroom.exit13.i.thread
  tail call void @audit_log_lost(ptr noundef nonnull @.str.92) #22
  br label %bb.k

audit_expand.exit:                                ; preds = %skb_tailroom.exit13.i
  %i.ab = getelementptr i8, ptr %i.a, i64 192
  %i.ac = load i32, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr i8, ptr %i.a, i64 188
  %i.ae = load i32, ptr %i.ad, align 4            ; 3 uses
  %i.af = getelementptr i8, ptr %i.a, i64 216     ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = add i32 %i.ac, %.neg14.i
  %i.ai = sub i32 %i.ah, %i.ae
  %i.aj = add i32 %i.ai, %i.ag
  store i32 %i.aj, ptr %i.af, align 8
  %.not23 = icmp eq i32 %i.ac, %i.ae
  br i1 %.not23, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %audit_expand.exit
  %.val = phi i32 [ %.val.pre, %._crit_edge ], [ %i.ae, %audit_expand.exit ]
  %i.ak = getelementptr i8, ptr %i.a, i64 200
  %.val24 = load ptr, ptr %i.ak, align 8
  %i.al = zext i32 %.val to i64
  %i.am = getelementptr i8, ptr %.val24, i64 %i.al ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 1      ; 2 uses
  store i8 34, ptr %i.am, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %1, i64 %2, i1 false)
  %i.ao = getelementptr i8, ptr %i.an, i64 %2     ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 1
  store i8 34, ptr %i.ao, align 1
  store i8 0, ptr %i.ap, align 1
  %i.aq = trunc i64 %2 to i32
  %i.ar = add i32 %i.aq, 2
  %i.as = tail call ptr @skb_put(ptr noundef nonnull %i.a, i32 noundef %i.ar) #17 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %audit_expand.exit.thread27, %audit_expand.exit.thread, %audit_expand.exit, %bb.a, %bb.j, %bb.f
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i65, i1 } @llvm.sadd.with.overflow.i65(i65, i65) #9

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define dso_local noundef zeroext i1 @audit_string_contains_control(ptr nofree noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #10 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.b = icmp ult ptr %0, %i.a
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.011 = phi ptr [ %i.g, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.c = load i8, ptr %.011, align 1              ; 2 uses
  %i.d = icmp eq i8 %i.c, 34
  %i.e = add i8 %i.c, -127
  %i.f = icmp ult i8 %i.e, -94
  %or.cond10 = or i1 %i.d, %i.f                   ; 2 uses
  %i.g = getelementptr i8, ptr %.011, i64 1       ; 2 uses
  %exitcond.not = icmp eq ptr %i.g, %i.a
  %or.cond = or i1 %or.cond10, %exitcond.not
  br i1 %or.cond, label %._crit_edge, label %.lr.ph, !llvm.loop !1

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ %or.cond10, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @audit_log_n_untrustedstring(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 %2         ; 2 uses
  %i.b = icmp ult ptr %1, %i.a
  br i1 %i.b, label %.lr.ph.i, label %.loopexit

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = getelementptr i8, ptr %.011.i, i64 1     ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.c, %i.a
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !1

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.011.i = phi ptr [ %i.c, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.d = load i8, ptr %.011.i, align 1            ; 2 uses
  %i.e = icmp eq i8 %i.d, 34
  %i.f = add i8 %i.d, -127
  %i.g = icmp ult i8 %i.f, -94
  %or.cond10.i = or i1 %i.e, %i.g
  br i1 %or.cond10.i, label %audit_string_contains_control.exit, label %bb.b

audit_string_contains_control.exit:               ; preds = %.lr.ph.i
  tail call void @audit_log_n_hex(ptr noundef %0, ptr noundef %1, i64 noundef %2) #22
  br label %bb.c

.loopexit:                                        ; preds = %bb.b, %bb.a
  tail call void @audit_log_n_string(ptr noundef %0, ptr noundef %1, i64 noundef %2) #22
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %audit_string_contains_control.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @audit_log_untrustedstring(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef %1) #17 ; 3 uses
  %i.b = getelementptr i8, ptr %1, i64 %i.a       ; 2 uses
  %i.c = icmp ult ptr %1, %i.b
  br i1 %i.c, label %.lr.ph.i.i, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.d = getelementptr i8, ptr %.011.i.i, i64 1   ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.011.i.i = phi ptr [ %i.d, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.e = load i8, ptr %.011.i.i, align 1          ; 2 uses
  %i.f = icmp eq i8 %i.e, 34
  %i.g = add i8 %i.e, -127
  %i.h = icmp ult i8 %i.g, -94
  %or.cond10.i.i = or i1 %i.f, %i.h
  br i1 %or.cond10.i.i, label %audit_string_contains_control.exit.i, label %bb.b

audit_string_contains_control.exit.i:             ; preds = %.lr.ph.i.i
  tail call void @audit_log_n_hex(ptr noundef readonly %0, ptr noundef readonly %1, i64 noundef %i.a) #22
  br label %audit_log_n_untrustedstring.exit

.loopexit.i:                                      ; preds = %bb.b, %bb.a
  tail call void @audit_log_n_string(ptr noundef readonly %0, ptr noundef readonly %1, i64 noundef %i.a) #22
  br label %audit_log_n_untrustedstring.exit

audit_log_n_untrustedstring.exit:                 ; preds = %audit_string_contains_control.exit.i, %.loopexit.i
  ret void
}

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @audit_log_d_path(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %1) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = and i32 %i.b, 17
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %kmalloc_type.exit, label %bb.d, !prof !25

bb.d:                                             ; preds = %bb.c
  %i.e = and i32 %i.b, 1
  %..i = add nuw nsw i32 %i.e, 1
end_hunk_0
