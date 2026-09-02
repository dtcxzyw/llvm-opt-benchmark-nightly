Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/af_netlink?download=true
inline.NumInlined: 649
inline.NumDeleted: 199
begin_hunk_0_@netlink_dump:bb.a
  br i1 %.not.i102, label %netlink_dump_done.exit, label %.critedge.i, !prof !68

.critedge.i:                                      ; preds = %nlmsg_put_answer.exit.i
  %i.cr = getelementptr i8, ptr %0, i64 928       ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8            ; 2 uses
  %.not.i.i103 = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i103, label %nl_dump_check_consistent.exit.i, label %bb.r

bb.r:                                             ; preds = %.critedge.i
  %i.ct = getelementptr i8, ptr %0, i64 932
  %i.cu = load i32, ptr %i.ct, align 4
  %.not6.i.i = icmp eq i32 %i.cu, %i.cs
  br i1 %.not6.i.i, label %nl_dump_check_consistent.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cv = or i16 %i.ch, 18
  store i16 %i.cv, ptr %i.co, align 2
  br label %nl_dump_check_consistent.exit.i

nl_dump_check_consistent.exit.i:                  ; preds = %bb.s, %bb.r, %.critedge.i
  %i.cw = getelementptr i8, ptr %0, i64 932
  %i.cx = load i32, ptr %i.cw, align 4
  store i32 %i.cx, ptr %i.cr, align 8
  %i.cy = getelementptr i8, ptr %i.cm, i64 16
  %i.cz = load i32, ptr %i.bd, align 4
  store i32 %i.cz, ptr %i.cy, align 4
  %i.da = load i32, ptr %i.bd, align 4
  %i.db = getelementptr i8, ptr %0, i64 776
  %i.dc = load volatile i64, ptr %i.db, align 8
  %i.dd = and i64 %i.dc, 64
  %.not41.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not41.i.i, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %nl_dump_check_consistent.exit.i
  %i.de = load ptr, ptr %2, align 8               ; 2 uses
  %.not32.i.i = icmp eq ptr %i.de, null
  br i1 %.not32.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.df = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.de) #21
  %i.dg = shl i64 %i.df, 32
  %i.dh = and i64 %i.dg, -17179869184
  %sext.i.i = add i64 %i.dh, 34359738368
  %i.di = ashr exact i64 %sext.i.i, 32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i.i = phi i64 [ %i.di, %bb.u ], [ 0, %bb.t ]
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 42
  %i.dk = load i8, ptr %i.dj, align 2             ; 2 uses
  %.not33.i.i = icmp eq i8 %i.dk, 0
  %i.dl = zext i8 %i.dk to i64
  %i.dm = add nuw nsw i64 %i.dl, 7
  %i.dn = and i64 %i.dm, 508
  %i.do = select i1 %.not33.i.i, i64 0, i64 %i.dn
  %.1.i.i = add nsw i64 %i.do, %.0.i.i            ; 3 uses
  %.not34.i.i = icmp eq i32 %i.da, 0
  br i1 %.not34.i.i, label %netlink_ack_tlv_len.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  %.not35.i.i = icmp eq ptr %i.dq, null
  %i.dr = add nsw i64 %.1.i.i, 8
  %spec.select.i.i = select i1 %.not35.i.i, i64 %.1.i.i, i64 %i.dr ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8            ; 2 uses
  %.not36.i.i = icmp eq ptr %i.dt, null
  br i1 %.not36.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.du = call i32 @netlink_policy_dump_attr_size_estimate(ptr noundef nonnull %i.dt) #21
  %i.dv = sext i32 %i.du to i64
  %i.dw = add nsw i64 %spec.select.i.i, %i.dv
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.3.i.i = phi i64 [ %i.dw, %bb.x ], [ %spec.select.i.i, %bb.w ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dy = load i16, ptr %i.dx, align 8
  %.not37.i.i = icmp eq i16 %i.dy, 0
  %i.dz = add nsw i64 %.3.i.i, 8
  %spec.select39.i.i = select i1 %.not37.i.i, i64 %.3.i.i, i64 %i.dz ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  %.not38.i.i = icmp eq ptr %i.eb, null
  %i.ec = add nsw i64 %spec.select39.i.i, 8
  %spec.select40.i.i = select i1 %.not38.i.i, i64 %spec.select39.i.i, i64 %i.ec
  br label %netlink_ack_tlv_len.exit.i

netlink_ack_tlv_len.exit.i:                       ; preds = %bb.y, %bb.v
  %.027.i.i = phi i64 [ %.1.i.i, %bb.v ], [ %spec.select40.i.i, %bb.y ] ; 2 uses
  %.not26.i = icmp eq i64 %.027.i.i, 0
  br i1 %.not26.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %netlink_ack_tlv_len.exit.i
  %i.ed = load i16, ptr %i.co, align 2
  %i.ee = or i16 %i.ed, 512
  store i16 %i.ee, ptr %i.co, align 2
  %.val.i.i104 = load i32, ptr %i.x, align 4
  %.not.i32.i = icmp eq i32 %.val.i.i104, 0
  br i1 %.not.i32.i, label %skb_tailroom.exit.i, label %bb.ab

skb_tailroom.exit.i:                              ; preds = %bb.z
  %i.ef = load i32, ptr %i.bo, align 8
  %i.eg = load i32, ptr %i.ak, align 4
  %i.eh = sub i32 %i.ef, %i.eg
  %i.ei = sext i32 %i.eh to i64
  %i.ej = icmp ugt i64 %.027.i.i, %i.ei
  br i1 %i.ej, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %skb_tailroom.exit.i
  %i.ek = load ptr, ptr %i.ci, align 8
  %i.el = load i32, ptr %i.bd, align 4
  call fastcc void @netlink_ack_tlv_fill(ptr noundef nonnull %.1114, ptr noundef %i.ek, i32 noundef %i.el, ptr noundef nonnull %2) #27, !srcloc !111
  %.val29.i = load i32, ptr %i.ak, align 4
  %.val30.i = load ptr, ptr %i.am, align 8
  %i.em = zext i32 %.val29.i to i64
  %i.en = getelementptr i8, ptr %.val30.i, i64 %i.em
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.cm to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = trunc i64 %i.eq to i32
  store i32 %i.er, ptr %i.cm, align 4
  br label %bb.ab

netlink_dump_done.exit:                           ; preds = %nlmsg_put_answer.exit.i
  call void asm sideeffect "1159: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1159b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1159) #22, !srcloc !112
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 2240, i32 2305, i64 16) #22, !srcloc !113
  call void asm sideeffect "1160: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1160b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1160) #22, !srcloc !114
  br label %bb.ah

bb.ab:                                            ; preds = %skb_tailroom.exit.i, %bb.aa, %netlink_ack_tlv_len.exit.i, %bb.z, %nl_dump_check_consistent.exit.i
  %i.es = call i32 @sk_filter_trim_cap(ptr noundef %0, ptr noundef nonnull %.1114, i32 noundef 1) #21
  %.not.i105.not = icmp eq i32 %i.es, 0
  br i1 %.not.i105.not, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @sk_skb_reason_drop(ptr noundef null, ptr noundef nonnull %.1114, i32 noundef 2) #21
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  call fastcc void @__netlink_sendskb(ptr noundef %0, ptr noundef nonnull %.1114) #27
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.et = getelementptr i8, ptr %0, i64 888
  %i.eu = load ptr, ptr %i.et, align 8            ; 2 uses
  %.not92 = icmp eq ptr %i.eu, null
  br i1 %.not92, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ev = call i32 %i.eu(ptr noundef %i.e) #21    ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  store volatile i8 0, ptr %i.b, align 1
  %i.ew = getelementptr i8, ptr %0, i64 904
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = load ptr, ptr %i.e, align 8
  %i.ez = getelementptr i8, ptr %0, i64 992
  call void @mutex_unlock(ptr noundef %i.ez) #21
  call void @module_put(ptr noundef %i.ex) #21
  call void @consume_skb(ptr noundef %i.ey) #21
  br label %bb.ai

bb.ah:                                            ; preds = %netlink_dump_done.exit, %bb.c, %.thread, %bb.f
  %.080 = phi i32 [ -105, %bb.f ], [ -105, %netlink_dump_done.exit ], [ -105, %.thread ], [ -22, %bb.c ]
  %.2 = phi ptr [ %.1114, %bb.f ], [ %.1114, %netlink_dump_done.exit ], [ null, %.thread ], [ null, %bb.c ]
  %i.fa = getelementptr i8, ptr %0, i64 992
  call void @mutex_unlock(ptr noundef %i.fa) #21
  call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %.2, i32 noundef 2) #21
  br label %bb.ai

bb.ai:                                            ; preds = %bb.o, %__netlink_sendskb.exit, %bb.ah, %bb.ag
  %.0 = phi i32 [ %.080, %bb.ah ], [ 0, %bb.ag ], [ 0, %__netlink_sendskb.exit ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @netlink_ack(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 776
  %i.d = load volatile i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 32
  %.not71 = icmp eq i64 %i.e, 0
  br i1 %.not71, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val60 = load i32, ptr %1, align 4
  %i.f = add i32 %.val60, 23
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.049 = phi i32 [ %i.f, %bb.c ], [ 39, %bb.b ], [ 39, %bb.a ]
  %.0 = phi i32 [ 0, %bb.c ], [ 256, %bb.b ], [ 256, %bb.a ] ; 2 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %netlink_ack_tlv_len.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %i.b, i64 776
  %i.h = load volatile i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 64
  %.not41.i = icmp eq i64 %i.i, 0
  br i1 %.not41.i, label %netlink_ack_tlv_len.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %3, align 8                ; 2 uses
  %.not32.i = icmp eq ptr %i.j, null
  br i1 %.not32.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #21
  %i.l = shl i64 %i.k, 32
  %i.m = and i64 %i.l, -17179869184
  %sext.i = add i64 %i.m, 34359738368
  %i.n = ashr exact i64 %sext.i, 32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi i64 [ %i.n, %bb.g ], [ 0, %bb.f ]
  %i.o = getelementptr i8, ptr %3, i64 42
  %i.p = load i8, ptr %i.o, align 2               ; 2 uses
  %.not33.i = icmp eq i8 %i.p, 0
  %i.q = zext i8 %i.p to i64
  %i.r = add nuw nsw i64 %i.q, 7
  %i.s = and i64 %i.r, 508
  %i.t = select i1 %.not33.i, i64 0, i64 %i.s
  %.1.i = add nsw i64 %i.t, %.0.i                 ; 3 uses
  br i1 %.not, label %netlink_ack_tlv_len.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr i8, ptr %3, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %.not35.i = icmp eq ptr %i.v, null
  %i.w = add nsw i64 %.1.i, 8
  %spec.select.i = select i1 %.not35.i, i64 %.1.i, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %3, i64 16
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not36.i = icmp eq ptr %i.y, null
  br i1 %.not36.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = tail call i32 @netlink_policy_dump_attr_size_estimate(ptr noundef nonnull %i.y) #21
  %i.aa = sext i32 %i.z to i64
  %i.ab = add nsw i64 %spec.select.i, %i.aa
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.3.i = phi i64 [ %i.ab, %bb.j ], [ %spec.select.i, %bb.i ] ; 2 uses
  %i.ac = getelementptr i8, ptr %3, i64 32
  %i.ad = load i16, ptr %i.ac, align 8
  %.not37.i = icmp eq i16 %i.ad, 0
  %i.ae = add nsw i64 %.3.i, 8
  %spec.select39.i = select i1 %.not37.i, i64 %.3.i, i64 %i.ae ; 2 uses
  %i.af = getelementptr i8, ptr %3, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  %.not38.i = icmp eq ptr %i.ag, null
  %i.ah = add nsw i64 %spec.select39.i, 8
  %spec.select40.i = select i1 %.not38.i, i64 %spec.select39.i, i64 %i.ah
  br label %netlink_ack_tlv_len.exit

netlink_ack_tlv_len.exit:                         ; preds = %bb.d, %bb.e, %bb.h, %bb.k
  %.027.i = phi i64 [ %.1.i, %bb.h ], [ 0, %bb.d ], [ 0, %bb.e ], [ %spec.select40.i, %bb.k ] ; 2 uses
  %.not52 = icmp eq i64 %.027.i, 0                ; 2 uses
  %i.ai = or disjoint i32 %.0, 512
  %spec.select = select i1 %.not52, i32 %.0, i32 %i.ai ; 2 uses
  %i.aj = trunc i64 %.027.i to i32
  %i.ak = add i32 %.049, %i.aj
  %i.al = and i32 %i.ak, -4
  %i.am = tail call ptr @__alloc_skb(i32 noundef %i.al, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #21 ; 12 uses
  %.not53 = icmp eq ptr %i.am, null
  br i1 %.not53, label %bb.x, label %bb.l

bb.l:                                             ; preds = %netlink_ack_tlv_len.exit
  %i.an = getelementptr i8, ptr %0, i64 52        ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = getelementptr i8, ptr %1, i64 8
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = getelementptr i8, ptr %i.am, i64 116    ; 3 uses
  %.val.i.i = load i32, ptr %i.ar, align 4
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %skb_tailroom.exit.i, label %nlmsg_put.exit.thread

skb_tailroom.exit.i:                              ; preds = %bb.l
  %i.as = getelementptr i8, ptr %i.am, i64 192    ; 2 uses
  %i.at = load i32, ptr %i.as, align 8
  %i.au = getelementptr i8, ptr %i.am, i64 188    ; 6 uses
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = sub i32 %i.at, %i.av
  %i.ax = icmp slt i32 %i.aw, 36
  br i1 %i.ax, label %nlmsg_put.exit.thread, label %nlmsg_put.exit, !prof !68

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %i.ay = tail call ptr @skb_put(ptr noundef nonnull %i.am, i32 noundef 36) #21 ; 11 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 4
  store i16 2, ptr %i.az, align 4
  store i32 36, ptr %i.ay, align 4
  %i.ba = trunc nuw nsw i32 %spec.select to i16
  %i.bb = getelementptr i8, ptr %i.ay, i64 6
  store i16 %i.ba, ptr %i.bb, align 2
  %i.bc = getelementptr i8, ptr %i.ay, i64 12
  store i32 %i.ao, ptr %i.bc, align 4
  %i.bd = getelementptr i8, ptr %i.ay, i64 8
  store i32 %i.aq, ptr %i.bd, align 4
  %.not54 = icmp eq ptr %i.ay, null
  br i1 %.not54, label %nlmsg_put.exit.thread, label %bb.m

bb.m:                                             ; preds = %nlmsg_put.exit
  %i.be = getelementptr i8, ptr %i.ay, i64 16
  store i32 %2, ptr %i.be, align 4
  %i.bf = getelementptr i8, ptr %i.ay, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %i.bf, ptr noundef align 4 dereferenceable(16) %1, i64 16, i1 false)
  %i.bg = and i32 %spec.select, 256
  %.not55 = icmp eq i32 %i.bg, 0
  br i1 %.not55, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %.val59 = load i32, ptr %1, align 4             ; 2 uses
  %i.bh = add i32 %.val59, -16                    ; 3 uses
  %.val.i.i62 = load i32, ptr %i.ar, align 4      ; 2 uses
  %.not.i.i63 = icmp eq i32 %.val.i.i62, 0
  br i1 %.not.i.i63, label %bb.o, label %skb_tailroom.exit.i64

bb.o:                                             ; preds = %bb.n
  %i.bi = load i32, ptr %i.as, align 8
  %i.bj = load i32, ptr %i.au, align 4
  %i.bk = sub i32 %i.bi, %i.bj
  br label %skb_tailroom.exit.i64

skb_tailroom.exit.i64:                            ; preds = %bb.o, %bb.n
  %i.bl = phi i32 [ %i.bk, %bb.o ], [ 0, %bb.n ]
  %i.bm = add i32 %.val59, -13
  %i.bn = and i32 %i.bm, -4                       ; 5 uses
  %i.bo = icmp ult i32 %i.bl, %i.bn
  br i1 %i.bo, label %nlmsg_put.exit.thread, label %bb.p, !prof !23

bb.p:                                             ; preds = %skb_tailroom.exit.i64
  %.not.i65 = icmp eq i32 %i.bn, %i.bh
  br i1 %.not.i65, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = sub i32 %i.bn, %i.bh
  %.val.i = load i32, ptr %i.au, align 4
  %i.bq = getelementptr i8, ptr %i.am, i64 200
  %.val12.i = load ptr, ptr %i.bq, align 8
  %i.br = zext i32 %.val.i to i64
  %i.bs = getelementptr i8, ptr %.val12.i, i64 %i.br
  %i.bt = zext i32 %i.bh to i64
  %i.bu = getelementptr i8, ptr %i.bs, i64 %i.bt
  %i.bv = zext i32 %i.bp to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bu, i8 0, i64 %i.bv, i1 false)
  %.val.i13.pre.i = load i32, ptr %i.ar, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.val.i13.i = phi i32 [ %.val.i13.pre.i, %bb.q ], [ %.val.i.i62, %bb.p ]
  %.not.i14.i = icmp eq i32 %.val.i13.i, 0
  br i1 %.not.i14.i, label %nlmsg_append.exit, label %bb.s, !prof !22

bb.s:                                             ; preds = %bb.r
  tail call void asm sideeffect "649: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 649b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 649) #22, !srcloc !115
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.9, i32 2772, i32 0, i64 16) #22, !srcloc !116
  unreachable

nlmsg_append.exit:                                ; preds = %bb.r
  %i.bw = getelementptr i8, ptr %i.am, i64 200
  %.val7.i.i = load ptr, ptr %i.bw, align 8
  %.val6.i.i = load i32, ptr %i.au, align 4       ; 2 uses
  %i.bx = zext i32 %.val6.i.i to i64
  %i.by = getelementptr i8, ptr %.val7.i.i, i64 %i.bx
  %i.bz = add i32 %.val6.i.i, %i.bn
  store i32 %i.bz, ptr %i.au, align 4
  %i.ca = getelementptr i8, ptr %i.am, i64 112    ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8
  %i.cc = add i32 %i.cb, %i.bn
  store i32 %i.cc, ptr %i.ca, align 8
  %.not56 = icmp eq ptr %i.by, null
  br i1 %.not56, label %nlmsg_put.exit.thread, label %bb.t

bb.t:                                             ; preds = %nlmsg_append.exit
  %i.cd = getelementptr i8, ptr %i.ay, i64 36
  %i.ce = getelementptr i8, ptr %1, i64 16
  %.val58 = load i32, ptr %1, align 4
  %i.cf = add i32 %.val58, -16
  %i.cg = sext i32 %i.cf to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cd, ptr align 4 %i.ce, i64 %i.cg, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  br i1 %.not52, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @netlink_ack_tlv_fill(ptr noundef %i.am, ptr noundef %1, i32 noundef %2, ptr noundef %3) #27, !srcloc !117
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.val = load i32, ptr %i.au, align 4
  %i.ch = getelementptr i8, ptr %i.am, i64 200
  %.val57 = load ptr, ptr %i.ch, align 8
  %i.ci = zext i32 %.val to i64
  %i.cj = getelementptr i8, ptr %.val57, i64 %i.ci
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ay to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = trunc i64 %i.cm to i32
  store i32 %i.cn, ptr %i.ay, align 4
  %i.co = getelementptr i8, ptr %0, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = load i32, ptr %i.an, align 4
  %i.cr = tail call i32 @netlink_unicast(ptr noundef %i.cp, ptr noundef nonnull %i.am, i32 noundef %i.cq, i32 noundef 64) #27 ; 0 uses
  br label %bb.y

nlmsg_put.exit.thread:                            ; preds = %skb_tailroom.exit.i64, %bb.l, %skb_tailroom.exit.i, %nlmsg_append.exit, %nlmsg_put.exit
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef nonnull %i.am, i32 noundef 2) #21
  br label %bb.x

bb.x:                                             ; preds = %nlmsg_put.exit.thread, %netlink_ack_tlv_len.exit
  %i.cs = load ptr, ptr %i.a, align 8
  %i.ct = getelementptr i8, ptr %i.cs, i64 284
  store volatile i32 105, ptr %i.ct, align 4
  %i.cu = load ptr, ptr %i.a, align 8
  tail call void @sk_error_report(ptr noundef %i.cu) #21
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @netlink_ack_tlv_fill(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = load ptr, ptr %3, align 8                ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #21
  %i.f = trunc i64 %i.e to i32
  %i.g = add i32 %i.f, 1
  %i.h = tail call i32 @nla_put(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.g, ptr noundef nonnull %i.d) #21
  %.not45 = icmp eq i32 %i.h, 0
  br i1 %.not45, label %bb.d, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "1149: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1149b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1149) #22, !srcloc !118
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 2204, i32 2305, i64 16) #22, !srcloc !119
  tail call void asm sideeffect "1150: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1150b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1150) #22, !srcloc !120
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.i = getelementptr i8, ptr %3, i64 42
  %i.j = load i8, ptr %i.i, align 2               ; 2 uses
  %.not46 = icmp eq i8 %i.j, 0
  br i1 %.not46, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = zext i8 %i.j to i32
  %i.l = getelementptr i8, ptr %3, i64 34
  %i.m = tail call i32 @nla_put(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %i.k, ptr noundef %i.l) #21
  %.not47 = icmp eq i32 %i.m, 0
  br i1 %.not47, label %bb.g, label %bb.f, !prof !22

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "1151: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1151b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1151) #22, !srcloc !121
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 2207, i32 2305, i64 16) #22, !srcloc !122
end_hunk_0
