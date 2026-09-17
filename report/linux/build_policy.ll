Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/build_policy?download=true
inline.NumInlined: 1433
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@__update_load_avg_blocked_se:bb.a
decay_load.exit10.thread:                         ; preds = %bb.e
  %i.q = getelementptr i8, ptr %1, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %accumulate_sum.exit

bb.f:                                             ; preds = %bb.e
  %i.r = icmp samesign ugt i64 %i.k, 32767
  br i1 %i.r, label %bb.h, label %bb.g, !prof !23

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.l
  %i.t = load i32, ptr %i.s, align 4
  %i.u = zext i64 %i.o to i128
  %i.v = zext i32 %i.t to i128
  %i.w = mul nuw nsw i128 %i.v, %i.u
  %i.x = lshr i128 %i.w, 32
  %i.y = trunc nuw i128 %i.x to i64               ; 2 uses
  store i64 %i.y, ptr %i.n, align 8
  %i.z = getelementptr i8, ptr %1, i64 272        ; 2 uses
  %i.aa = load i64, ptr %i.z, align 16
  %i.ab = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.l
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = zext i64 %i.aa to i128
  %i.ae = zext i32 %i.ac to i128
  %i.af = mul nuw nsw i128 %i.ae, %i.ad
  %i.ag = lshr i128 %i.af, 32
  %i.ah = trunc nuw i128 %i.ag to i64             ; 2 uses
  store i64 %i.ah, ptr %i.z, align 16
  %i.ai = getelementptr i8, ptr %1, i64 280       ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = zext i32 %i.aj to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.al = lshr i64 %i.k, 15
  %i.am = lshr i64 %i.o, %i.al
  %i.an = and i64 %i.l, 31
  %i.ao = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = zext nneg i64 %i.am to i128
  %i.ar = zext i32 %i.ap to i128
  %i.as = mul nuw nsw i128 %i.ar, %i.aq
  %i.at = lshr i128 %i.as, 32
  %i.au = trunc nuw nsw i128 %i.at to i64         ; 2 uses
  store i64 %i.au, ptr %i.n, align 8
  %i.av = getelementptr i8, ptr %1, i64 272       ; 2 uses
  %i.aw = load i64, ptr %i.av, align 16
  %i.ax = lshr i64 %i.k, 15
  %i.ay = lshr i64 %i.aw, %i.ax
  %i.az = and i64 %i.l, 31
  %i.ba = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = zext nneg i64 %i.ay to i128
  %i.bd = zext i32 %i.bb to i128
  %i.be = mul nuw nsw i128 %i.bd, %i.bc
  %i.bf = lshr i128 %i.be, 32
  %i.bg = trunc nuw nsw i128 %i.bf to i64         ; 2 uses
  store i64 %i.bg, ptr %i.av, align 16
  %i.bh = getelementptr i8, ptr %1, i64 280       ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = zext i32 %i.bi to i64
  %i.bk = lshr i64 %i.k, 15
  %i.bl = lshr i64 %i.bj, %i.bk
  %i.bm = and i64 %i.l, 31
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bn = phi ptr [ %i.bh, %bb.h ], [ %i.ai, %bb.g ]
  %i.bo = phi i64 [ %i.bg, %bb.h ], [ %i.ah, %bb.g ]
  %i.bp = phi i64 [ %i.au, %bb.h ], [ %i.y, %bb.g ]
  %.011.i11 = phi i64 [ %i.bl, %bb.h ], [ %i.ak, %bb.g ]
  %.0.i12 = phi i64 [ %i.bm, %bb.h ], [ %i.l, %bb.g ]
  %i.bq = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %.0.i12
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = zext i32 %i.br to i64
  %i.bt = mul nuw i64 %.011.i11, %i.bs
  %i.bu = lshr i64 %i.bt, 32
  %i.bv = trunc nuw i64 %i.bu to i32
  br label %accumulate_sum.exit

accumulate_sum.exit:                              ; preds = %bb.i, %decay_load.exit10.thread
  %i.bw = phi i64 [ %i.bo, %bb.i ], [ 0, %decay_load.exit10.thread ]
  %i.bx = phi i64 [ %i.bp, %bb.i ], [ 0, %decay_load.exit10.thread ]
  %i.by = phi ptr [ %i.bn, %bb.i ], [ %i.q, %decay_load.exit10.thread ]
  %i.bz = phi i32 [ %i.bv, %bb.i ], [ 0, %decay_load.exit10.thread ] ; 2 uses
  store i32 %i.bz, ptr %i.by, align 8
  %i.ca = trunc i64 %i.k to i32
  %i.cb = and i32 %i.ca, 1023                     ; 2 uses
  store i32 %i.cb, ptr %i.h, align 4
  %i.cc = and i64 %i.k, 4398046510080
  %.not22.i = icmp eq i64 %i.cc, 0
  br i1 %.not22.i, label %trace_pelt_se_tp.exit, label %___update_load_sum.exit

___update_load_sum.exit:                          ; preds = %accumulate_sum.exit
  %.val6 = load i64, ptr %1, align 64             ; 2 uses
  %.not.i15 = icmp eq i64 %.val6, 0
  %i.cd = lshr i64 %.val6, 10
  %i.ce = tail call i64 @llvm.umax.i64(i64 %i.cd, i64 2)
  %.0.i16 = select i1 %.not.i15, i64 0, i64 %i.ce
  %i.cf = add nuw nsw i32 %i.cb, 46718            ; 2 uses
  %i.cg = mul i64 %.0.i16, %i.bx
  %i.ch = zext nneg i32 %i.cf to i64              ; 2 uses
  %i.ci = udiv i64 %i.cg, %i.ch
  %i.cj = getelementptr i8, ptr %1, i64 288
  store i64 %i.ci, ptr %i.cj, align 32
  %i.ck = udiv i64 %i.bw, %i.ch
  %i.cl = getelementptr i8, ptr %1, i64 296
  store i64 %i.ck, ptr %i.cl, align 8
  %i.cm = udiv i32 %i.bz, %i.cf
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr i8, ptr %1, i64 304
  store volatile i64 %i.cn, ptr %i.co, align 16
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_pelt_se_tp, i64 8), i1 false) #32
          to label %trace_pelt_se_tp.exit [label %arch_test_bit.exit.i.i], !srcloc !29

arch_test_bit.exit.i.i:                           ; preds = %___update_load_sum.exit
  %i.cp = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #32, !srcloc !69
  %i.cq = zext i32 %i.cp to i64
  %i.cr = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.cq) #32, !srcloc !30 ; 2 uses
  %i.cs = icmp ult i8 %i.cr, 2
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = trunc nuw i8 %i.cr to i1
  br i1 %i.ct, label %bb.j, label %trace_pelt_se_tp.exit

bb.j:                                             ; preds = %arch_test_bit.exit.i.i
  %i.cu = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cu, ptr elementtype(i64) %i.cu) #32, !srcloc !31
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #32, !srcloc !32
  %i.cv = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_pelt_se_tp, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cw = getelementptr i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = tail call i32 @__SCT__tp_func_pelt_se_tp(ptr noundef %i.cx, ptr noundef %1) #35 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #32, !srcloc !33
  %i.cz = getelementptr i8, ptr %i.cu, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cz, ptr elementtype(i64) %i.cz) #32, !srcloc !34
  br label %trace_pelt_se_tp.exit

trace_pelt_se_tp.exit:                            ; preds = %accumulate_sum.exit, %accumulate_sum.exit.thread, %bb.c, %bb.b, %bb.l, %arch_test_bit.exit.i.i, %___update_load_sum.exit
  %.0 = phi i32 [ 1, %bb.l ], [ 1, %___update_load_sum.exit ], [ 0, %accumulate_sum.exit ], [ 1, %arch_test_bit.exit.i.i ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %accumulate_sum.exit.thread ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @__update_load_avg_se(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 256        ; 3 uses
  %i.b = getelementptr i8, ptr %2, i64 88
  %i.c = load i8, ptr %i.b, align 8
  %i.d = icmp ne i8 %i.c, 0                       ; 2 uses
  %i.e = getelementptr i8, ptr %2, i64 89
  %i.f = load i8, ptr %i.e, align 1
  %.not.i15 = icmp eq i8 %i.f, 0
  br i1 %.not.i15, label %bb.b, label %se_runnable.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i1 %i.d to i64
  %i.h = getelementptr i8, ptr %2, i64 184
  %i.i = load ptr, ptr %i.h, align 8
  %.not4.i = icmp eq ptr %i.i, null
  br i1 %.not4.i, label %se_runnable.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %2, i64 192
  %i.k = load i64, ptr %i.j, align 64
  br label %se_runnable.exit

se_runnable.exit:                                 ; preds = %bb.b, %bb.a, %bb.c
  %.0.i16 = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 80
  %i.m = load ptr, ptr %i.l, align 16
  %.not = icmp eq ptr %i.m, %2
  %i.n = load i64, ptr %i.a, align 64             ; 2 uses
  %i.o = sub i64 %0, %i.n                         ; 3 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %se_runnable.exit
  store i64 %0, ptr %i.a, align 64
  br label %trace_pelt_se_tp.exit

bb.e:                                             ; preds = %se_runnable.exit
  %i.q = lshr i64 %i.o, 10                        ; 3 uses
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %trace_pelt_se_tp.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = and i64 %i.o, 9223372036854774784
  %i.s = add i64 %i.r, %i.n
  store i64 %i.s, ptr %i.a, align 64
  %i.t = getelementptr i8, ptr %2, i64 284        ; 3 uses
  %i.u = load i32, ptr %i.t, align 4              ; 3 uses
  %i.v = zext i32 %i.u to i64
  %i.w = add nuw nsw i64 %i.q, %i.v               ; 17 uses
  %i.x = lshr i64 %i.w, 10                        ; 15 uses
  %.not.i11 = icmp eq i64 %i.x, 0                 ; 2 uses
  br i1 %i.d, label %.split.i, label %.split18.i

.split.i:                                         ; preds = %bb.f
  br i1 %.not.i11, label %.split.i._crit_edge, label %bb.g

.split.i._crit_edge:                              ; preds = %.split.i
  %i.y = trunc i64 %i.q to i32
  %.phi.trans.insert = getelementptr i8, ptr %2, i64 264
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.pre49 = trunc nuw i64 %i.w to i32
  br label %bb.l

bb.g:                                             ; preds = %.split.i
  %i.z = getelementptr i8, ptr %2, i64 264
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp samesign ugt i64 %i.w, 2065407
  br i1 %i.ab, label %.thread, label %bb.h, !prof !23

.thread:                                          ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %2, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef align 16 dereferenceable(12) %i.ac, i8 0, i64 12, i1 false)
  br label %__accumulate_pelt_segments.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = icmp samesign ugt i64 %i.w, 32767
  br i1 %i.ad, label %bb.j, label %bb.i, !prof !23

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.x
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = zext i64 %i.aa to i128
  %i.ah = zext i32 %i.af to i128
  %i.ai = mul nuw nsw i128 %i.ah, %i.ag
  %i.aj = lshr i128 %i.ai, 32
  %i.ak = trunc nuw i128 %i.aj to i64
  %i.al = getelementptr i8, ptr %2, i64 272       ; 2 uses
  %i.am = load i64, ptr %i.al, align 16
  %i.an = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.x
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = zext i64 %i.am to i128
  %i.aq = zext i32 %i.ao to i128
  %i.ar = mul nuw nsw i128 %i.aq, %i.ap
  %i.as = lshr i128 %i.ar, 32
  %i.at = trunc nuw i128 %i.as to i64
  store i64 %i.at, ptr %i.al, align 16
  %i.au = getelementptr i8, ptr %2, i64 280       ; 2 uses
  %i.av = load i32, ptr %i.au, align 8
  %3 = zext i32 %i.av to i64
  %i.aw = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.x
  %i.ax = load i32, ptr %i.aw, align 4
  %4 = zext i32 %i.ax to i64
  %5 = mul nuw i64 %3, %4
  %6 = lshr i64 %5, 32
  %7 = trunc nuw i64 %6 to i32
  store i32 %7, ptr %i.au, align 8
  %i.ay = sub i32 1024, %i.u
  %8 = zext i32 %i.ay to i64
  %9 = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.x
  %10 = load i32, ptr %9, align 4
  %i.az = zext i32 %10 to i64                     ; 2 uses
  %11 = mul nuw i64 %i.az, %8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ba = lshr i64 %i.w, 15
  %i.bb = lshr i64 %i.aa, %i.ba
  %i.bc = and i64 %i.x, 31
  %i.bd = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = zext nneg i64 %i.bb to i128
  %i.bg = zext i32 %i.be to i128
  %i.bh = mul nuw nsw i128 %i.bg, %i.bf
  %i.bi = lshr i128 %i.bh, 32
  %i.bj = trunc nuw nsw i128 %i.bi to i64
  %i.bk = getelementptr i8, ptr %2, i64 272       ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 16
  %i.bm = lshr i64 %i.w, 15
  %i.bn = lshr i64 %i.bl, %i.bm
  %i.bo = and i64 %i.x, 31
  %i.bp = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = zext nneg i64 %i.bn to i128
  %i.bs = zext i32 %i.bq to i128
  %i.bt = mul nuw nsw i128 %i.bs, %i.br
  %i.bu = lshr i128 %i.bt, 32
  %i.bv = trunc nuw nsw i128 %i.bu to i64
  store i64 %i.bv, ptr %i.bk, align 16
  %i.bw = getelementptr i8, ptr %2, i64 280       ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = zext i32 %i.bx to i64
  %i.bz = lshr i64 %i.w, 15
  %i.ca = lshr i64 %i.by, %i.bz
  %i.cb = and i64 %i.x, 31
  %i.cc = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = zext i32 %i.cd to i64
  %i.cf = mul nuw nsw i64 %i.ca, %i.ce
  %i.cg = lshr i64 %i.cf, 32
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  store i32 %i.ch, ptr %i.bw, align 8
  %i.ci = sub i32 1024, %i.u
  %i.cj = zext i32 %i.ci to i64
  %i.ck = lshr i64 %i.w, 15                       ; 2 uses
  %i.cl = lshr i64 %i.cj, %i.ck
  %i.cm = and i64 %i.x, 31
  %i.cn = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = zext i32 %i.co to i64                   ; 2 uses
  %i.cq = mul nuw nsw i64 %i.cl, %i.cp
  %i.cr = lshr i64 47742, %i.ck
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cs = phi i64 [ %i.ak, %bb.i ], [ %i.bj, %bb.j ]
  %.pre-phi.i = phi i64 [ %i.az, %bb.i ], [ %i.cp, %bb.j ]
  %.in.in.i = phi i64 [ %11, %bb.i ], [ %i.cq, %bb.j ]
  %.011.i7.i = phi i64 [ 47742, %bb.i ], [ %i.cr, %bb.j ]
  %.in.i = lshr i64 %.in.in.i, 32
  %12 = trunc nuw i64 %.in.i to i32
  %i.ct = mul nuw nsw i64 %.011.i7.i, %.pre-phi.i
  %i.cu = lshr i64 %i.ct, 32
  %i.cv = trunc nuw nsw i64 %i.cu to i32
  %i.cw = add i32 %12, 46718
  %i.cx = sub i32 %i.cw, %i.cv
  br label %__accumulate_pelt_segments.exit

__accumulate_pelt_segments.exit:                  ; preds = %.thread, %bb.k
  %i.cy = phi i64 [ %i.cs, %bb.k ], [ 0, %.thread ]
  %reass.sub.i = phi i32 [ %i.cx, %bb.k ], [ 46718, %.thread ]
  %i.cz = trunc i64 %i.w to i32
  %i.da = and i32 %i.cz, 1023                     ; 2 uses
  %i.db = add i32 %reass.sub.i, %i.da
  br label %bb.l

bb.l:                                             ; preds = %.split.i._crit_edge, %__accumulate_pelt_segments.exit
  %.pre-phi = phi i32 [ %.pre49, %.split.i._crit_edge ], [ %i.da, %__accumulate_pelt_segments.exit ] ; 3 uses
  %i.dc = phi i64 [ %.pre, %.split.i._crit_edge ], [ %i.cy, %__accumulate_pelt_segments.exit ]
  %.0.i = phi i32 [ %i.y, %.split.i._crit_edge ], [ %i.db, %__accumulate_pelt_segments.exit ] ; 2 uses
  store i32 %.pre-phi, ptr %i.t, align 4
  %i.dd = zext i32 %.0.i to i64                   ; 2 uses
  %i.de = getelementptr i8, ptr %2, i64 264
  %i.df = add i64 %i.dc, %i.dd
  store i64 %i.df, ptr %i.de, align 8
  %.not38.i = icmp eq i64 %.0.i16, 0
  br i1 %.not38.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = shl i64 %.0.i16, 10
  %i.dh = mul i64 %i.dg, %i.dd
  %i.di = getelementptr i8, ptr %2, i64 272       ; 2 uses
  %i.dj = load i64, ptr %i.di, align 16
  %i.dk = add i64 %i.dj, %i.dh
  store i64 %i.dk, ptr %i.di, align 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %.not, label %bb.o, label %accumulate_sum.exit13

bb.o:                                             ; preds = %bb.n
  %i.dl = shl i32 %.0.i, 10
  %i.dm = getelementptr i8, ptr %2, i64 280       ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8
  %i.do = add i32 %i.dn, %i.dl
  store i32 %i.do, ptr %i.dm, align 8
  br label %accumulate_sum.exit13

.split18.i:                                       ; preds = %bb.f
  br i1 %.not.i11, label %accumulate_sum.exit, label %bb.p

bb.p:                                             ; preds = %.split18.i
  %i.dp = getelementptr i8, ptr %2, i64 264       ; 4 uses
  %i.dq = load i64, ptr %i.dp, align 8            ; 2 uses
  %i.dr = icmp samesign ugt i64 %i.w, 2065407
  br i1 %i.dr, label %decay_load.exit33.thread, label %bb.q, !prof !23

decay_load.exit33.thread:                         ; preds = %bb.p
  %i.ds = getelementptr i8, ptr %2, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.dp, i8 0, i64 16, i1 false)
  br label %decay_load.exit37

bb.q:                                             ; preds = %bb.p
  %i.dt = icmp samesign ugt i64 %i.w, 32767
  br i1 %i.dt, label %bb.s, label %bb.r, !prof !23

bb.r:                                             ; preds = %bb.q
  %i.du = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.x
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = zext i64 %i.dq to i128
  %i.dx = zext i32 %i.dv to i128
  %i.dy = mul nuw nsw i128 %i.dx, %i.dw
  %i.dz = lshr i128 %i.dy, 32
  %i.ea = trunc nuw i128 %i.dz to i64
  store i64 %i.ea, ptr %i.dp, align 8
  %i.eb = getelementptr i8, ptr %2, i64 272       ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 16
  %i.ed = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.x
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = zext i64 %i.ec to i128
  %i.eg = zext i32 %i.ee to i128
  %i.eh = mul nuw nsw i128 %i.eg, %i.ef
  %i.ei = lshr i128 %i.eh, 32
  %i.ej = trunc nuw i128 %i.ei to i64
  store i64 %i.ej, ptr %i.eb, align 16
  %i.ek = getelementptr i8, ptr %2, i64 280       ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8
  %i.em = zext i32 %i.el to i64
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.en = lshr i64 %i.w, 15
  %i.eo = lshr i64 %i.dq, %i.en
  %i.ep = and i64 %i.x, 31
  %i.eq = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4
  %i.es = zext nneg i64 %i.eo to i128
  %i.et = zext i32 %i.er to i128
  %i.eu = mul nuw nsw i128 %i.et, %i.es
  %i.ev = lshr i128 %i.eu, 32
  %i.ew = trunc nuw nsw i128 %i.ev to i64
  store i64 %i.ew, ptr %i.dp, align 8
  %i.ex = getelementptr i8, ptr %2, i64 272       ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 16
  %i.ez = lshr i64 %i.w, 15
  %i.fa = lshr i64 %i.ey, %i.ez
  %i.fb = and i64 %i.x, 31
  %i.fc = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = zext nneg i64 %i.fa to i128
  %i.ff = zext i32 %i.fd to i128
  %i.fg = mul nuw nsw i128 %i.ff, %i.fe
  %i.fh = lshr i128 %i.fg, 32
  %i.fi = trunc nuw nsw i128 %i.fh to i64
  store i64 %i.fi, ptr %i.ex, align 16
  %i.fj = getelementptr i8, ptr %2, i64 280       ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 8
  %i.fl = zext i32 %i.fk to i64
  %i.fm = lshr i64 %i.w, 15
  %i.fn = lshr i64 %i.fl, %i.fm
  %i.fo = and i64 %i.x, 31
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.fp = phi ptr [ %i.fj, %bb.s ], [ %i.ek, %bb.r ]
  %.011.i34 = phi i64 [ %i.fn, %bb.s ], [ %i.em, %bb.r ]
  %.0.i35 = phi i64 [ %i.fo, %bb.s ], [ %i.x, %bb.r ]
  %i.fq = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %.0.i35
  %i.fr = load i32, ptr %i.fq, align 4
  %i.fs = zext i32 %i.fr to i64
  %i.ft = mul nuw i64 %.011.i34, %i.fs
  %i.fu = lshr i64 %i.ft, 32
  %i.fv = trunc nuw i64 %i.fu to i32
  br label %decay_load.exit37

decay_load.exit37:                                ; preds = %decay_load.exit33.thread, %bb.t
  %i.fw = phi ptr [ %i.fp, %bb.t ], [ %i.ds, %decay_load.exit33.thread ]
  %.010.i36 = phi i32 [ %i.fv, %bb.t ], [ 0, %decay_load.exit33.thread ]
  store i32 %.010.i36, ptr %i.fw, align 8
  %i.fx = and i64 %i.w, 1023
  br label %accumulate_sum.exit

accumulate_sum.exit:                              ; preds = %.split18.i, %decay_load.exit37
  %.032.i = phi i64 [ %i.w, %.split18.i ], [ %i.fx, %decay_load.exit37 ]
  %i.fy = trunc i64 %.032.i to i32                ; 2 uses
  store i32 %i.fy, ptr %i.t, align 4
  br label %accumulate_sum.exit13

accumulate_sum.exit13:                            ; preds = %bb.o, %bb.n, %accumulate_sum.exit
  %.val = phi i32 [ %i.fy, %accumulate_sum.exit ], [ %.pre-phi, %bb.n ], [ %.pre-phi, %bb.o ]
  %i.fz = and i64 %i.w, 4398046510080
  %.not22.i = icmp eq i64 %i.fz, 0
  br i1 %.not22.i, label %trace_pelt_se_tp.exit, label %___update_load_sum.exit

___update_load_sum.exit:                          ; preds = %accumulate_sum.exit13
  %.val14 = load i64, ptr %2, align 64            ; 2 uses
  %.not.i38 = icmp eq i64 %.val14, 0
  %i.ga = lshr i64 %.val14, 10
  %i.gb = tail call i64 @llvm.umax.i64(i64 %i.ga, i64 2)
  %.0.i39 = select i1 %.not.i38, i64 0, i64 %i.gb
  %i.gc = add i32 %.val, 46718                    ; 2 uses
  %i.gd = getelementptr i8, ptr %2, i64 264
  %i.ge = load i64, ptr %i.gd, align 8
  %i.gf = mul i64 %.0.i39, %i.ge
  %i.gg = zext i32 %i.gc to i64                   ; 2 uses
  %i.gh = udiv i64 %i.gf, %i.gg
  %i.gi = getelementptr i8, ptr %2, i64 288
  store i64 %i.gh, ptr %i.gi, align 32
  %i.gj = getelementptr i8, ptr %2, i64 272
  %i.gk = load i64, ptr %i.gj, align 16
  %i.gl = udiv i64 %i.gk, %i.gg
  %i.gm = getelementptr i8, ptr %2, i64 296
  store i64 %i.gl, ptr %i.gm, align 8
  %i.gn = getelementptr i8, ptr %2, i64 280
  %i.go = load i32, ptr %i.gn, align 8
  %i.gp = udiv i32 %i.go, %i.gc
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr i8, ptr %2, i64 304
  store volatile i64 %i.gq, ptr %i.gr, align 16
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @sched_feat_keys, i64 400), i1 true) #32
          to label %bb.u [label %cfs_se_util_change.exit], !srcloc !29

bb.u:                                             ; preds = %___update_load_sum.exit
  %i.gs = getelementptr i8, ptr %2, i64 312       ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 8            ; 2 uses
  %.not.i40 = icmp sgt i32 %i.gt, -1
  br i1 %.not.i40, label %cfs_se_util_change.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gu = and i32 %i.gt, 2147483647
  store volatile i32 %i.gu, ptr %i.gs, align 8
  br label %cfs_se_util_change.exit

cfs_se_util_change.exit:                          ; preds = %___update_load_sum.exit, %bb.u, %bb.v
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_pelt_se_tp, i64 8), i1 false) #32
          to label %trace_pelt_se_tp.exit [label %arch_test_bit.exit.i.i], !srcloc !29

arch_test_bit.exit.i.i:                           ; preds = %cfs_se_util_change.exit
  %i.gv = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #32, !srcloc !69
  %i.gw = zext i32 %i.gv to i64
  %i.gx = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.gw) #32, !srcloc !30 ; 2 uses
  %i.gy = icmp ult i8 %i.gx, 2
  tail call void @llvm.assume(i1 %i.gy)
  %i.gz = trunc nuw i8 %i.gx to i1
  br i1 %i.gz, label %bb.w, label %trace_pelt_se_tp.exit

bb.w:                                             ; preds = %arch_test_bit.exit.i.i
  %i.ha = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ha, ptr elementtype(i64) %i.ha) #32, !srcloc !31
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #32, !srcloc !32
  %i.hb = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_pelt_se_tp, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hc = getelementptr i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = tail call i32 @__SCT__tp_func_pelt_se_tp(ptr noundef %i.hd, ptr noundef %2) #35 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #32, !srcloc !33
  %i.hf = getelementptr i8, ptr %i.ha, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hf, ptr elementtype(i64) %i.hf) #32, !srcloc !34
  br label %trace_pelt_se_tp.exit

trace_pelt_se_tp.exit:                            ; preds = %accumulate_sum.exit13, %bb.e, %bb.d, %bb.y, %arch_test_bit.exit.i.i, %cfs_se_util_change.exit
  %.0 = phi i32 [ 1, %bb.y ], [ 1, %cfs_se_util_change.exit ], [ 0, %accumulate_sum.exit13 ], [ 1, %arch_test_bit.exit.i.i ], [ 0, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @__update_load_avg_cfs_rq(i64 noundef %0, ptr noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 128        ; 3 uses
  %i.b = load i64, ptr %1, align 64               ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  %i.c = lshr i64 %i.b, 10
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2)
  %i.e = getelementptr i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr i8, ptr %1, i64 80
  %i.i = load ptr, ptr %i.h, align 16
  %.not51 = icmp eq ptr %i.i, null
  %i.j = load i64, ptr %i.a, align 64             ; 2 uses
  %i.k = sub i64 %0, %i.j                         ; 3 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %0, ptr %i.a, align 64
  br label %trace_pelt_cfs_tp.exit

bb.c:                                             ; preds = %bb.a
  %i.m = lshr i64 %i.k, 10                        ; 3 uses
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %trace_pelt_cfs_tp.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = and i64 %i.k, 9223372036854774784
  %i.o = add i64 %i.n, %i.j
  store i64 %i.o, ptr %i.a, align 64
  %i.p = getelementptr i8, ptr %1, i64 156        ; 3 uses
  %i.q = load i32, ptr %i.p, align 4              ; 3 uses
  %i.r = zext i32 %i.q to i64
  %i.s = add nuw nsw i64 %i.m, %i.r               ; 17 uses
  %i.t = lshr i64 %i.s, 10                        ; 15 uses
  %.not.i19 = icmp eq i64 %i.t, 0                 ; 2 uses
  br i1 %.not, label %.split18.i, label %.split.i

.split.i:                                         ; preds = %bb.d
  br i1 %.not.i19, label %.split.i._crit_edge, label %bb.e

.split.i._crit_edge:                              ; preds = %.split.i
  %i.u = trunc i64 %i.m to i32
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 136
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.pre53 = trunc nuw i64 %i.s to i32
  br label %bb.j

bb.e:                                             ; preds = %.split.i
  %i.v = getelementptr i8, ptr %1, i64 136
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp samesign ugt i64 %i.s, 2065407
  br i1 %i.x, label %.thread, label %bb.f, !prof !23

.thread:                                          ; preds = %bb.e
  %i.y = getelementptr i8, ptr %1, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef align 16 dereferenceable(12) %i.y, i8 0, i64 12, i1 false)
  br label %__accumulate_pelt_segments.exit

bb.f:                                             ; preds = %bb.e
  %i.z = icmp samesign ugt i64 %i.s, 32767
  br i1 %i.z, label %bb.h, label %bb.g, !prof !23

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.t
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = zext i64 %i.w to i128
  %i.ad = zext i32 %i.ab to i128
  %i.ae = mul nuw nsw i128 %i.ad, %i.ac
  %i.af = lshr i128 %i.ae, 32
  %i.ag = trunc nuw i128 %i.af to i64
  %i.ah = getelementptr i8, ptr %1, i64 144       ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 16
  %i.aj = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.t
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = zext i64 %i.ai to i128
  %i.am = zext i32 %i.ak to i128
  %i.an = mul nuw nsw i128 %i.am, %i.al
  %i.ao = lshr i128 %i.an, 32
  %i.ap = trunc nuw i128 %i.ao to i64
  store i64 %i.ap, ptr %i.ah, align 16
  %i.aq = getelementptr i8, ptr %1, i64 152       ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8
  %2 = zext i32 %i.ar to i64
  %i.as = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.t
  %i.at = load i32, ptr %i.as, align 4
  %3 = zext i32 %i.at to i64
  %4 = mul nuw i64 %2, %3
  %5 = lshr i64 %4, 32
  %6 = trunc nuw i64 %5 to i32
  store i32 %6, ptr %i.aq, align 8
  %i.au = sub i32 1024, %i.q
  %7 = zext i32 %i.au to i64
  %8 = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.t
  %9 = load i32, ptr %8, align 4
  %i.av = zext i32 %9 to i64                      ; 2 uses
  %10 = mul nuw i64 %i.av, %7
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aw = lshr i64 %i.s, 15
  %i.ax = lshr i64 %i.w, %i.aw
  %i.ay = and i64 %i.t, 31
  %i.az = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = zext nneg i64 %i.ax to i128
  %i.bc = zext i32 %i.ba to i128
  %i.bd = mul nuw nsw i128 %i.bc, %i.bb
  %i.be = lshr i128 %i.bd, 32
  %i.bf = trunc nuw nsw i128 %i.be to i64
  %i.bg = getelementptr i8, ptr %1, i64 144       ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 16
  %i.bi = lshr i64 %i.s, 15
  %i.bj = lshr i64 %i.bh, %i.bi
  %i.bk = and i64 %i.t, 31
  %i.bl = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = zext nneg i64 %i.bj to i128
  %i.bo = zext i32 %i.bm to i128
  %i.bp = mul nuw nsw i128 %i.bo, %i.bn
  %i.bq = lshr i128 %i.bp, 32
  %i.br = trunc nuw nsw i128 %i.bq to i64
  store i64 %i.br, ptr %i.bg, align 16
  %i.bs = getelementptr i8, ptr %1, i64 152       ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = zext i32 %i.bt to i64
  %i.bv = lshr i64 %i.s, 15
  %i.bw = lshr i64 %i.bu, %i.bv
  %i.bx = and i64 %i.t, 31
  %i.by = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = zext i32 %i.bz to i64
  %i.cb = mul nuw nsw i64 %i.bw, %i.ca
  %i.cc = lshr i64 %i.cb, 32
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  store i32 %i.cd, ptr %i.bs, align 8
  %i.ce = sub i32 1024, %i.q
  %i.cf = zext i32 %i.ce to i64
  %i.cg = lshr i64 %i.s, 15                       ; 2 uses
  %i.ch = lshr i64 %i.cf, %i.cg
  %i.ci = and i64 %i.t, 31
  %i.cj = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %i.cm = mul nuw nsw i64 %i.ch, %i.cl
  %i.cn = lshr i64 47742, %i.cg
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.co = phi i64 [ %i.ag, %bb.g ], [ %i.bf, %bb.h ]
  %.pre-phi.i = phi i64 [ %i.av, %bb.g ], [ %i.cl, %bb.h ]
  %.in.in.i = phi i64 [ %10, %bb.g ], [ %i.cm, %bb.h ]
  %.011.i7.i = phi i64 [ 47742, %bb.g ], [ %i.cn, %bb.h ]
  %.in.i = lshr i64 %.in.in.i, 32
  %11 = trunc nuw i64 %.in.i to i32
  %i.cp = mul nuw nsw i64 %.011.i7.i, %.pre-phi.i
  %i.cq = lshr i64 %i.cp, 32
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = add i32 %11, 46718
  %i.ct = sub i32 %i.cs, %i.cr
  br label %__accumulate_pelt_segments.exit

__accumulate_pelt_segments.exit:                  ; preds = %.thread, %bb.i
  %i.cu = phi i64 [ %i.co, %bb.i ], [ 0, %.thread ]
  %reass.sub.i = phi i32 [ %i.ct, %bb.i ], [ 46718, %.thread ]
  %i.cv = trunc i64 %i.s to i32
  %i.cw = and i32 %i.cv, 1023                     ; 2 uses
  %i.cx = add i32 %reass.sub.i, %i.cw
  br label %bb.j

bb.j:                                             ; preds = %.split.i._crit_edge, %__accumulate_pelt_segments.exit
  %.pre-phi = phi i32 [ %.pre53, %.split.i._crit_edge ], [ %i.cw, %__accumulate_pelt_segments.exit ] ; 3 uses
  %i.cy = phi i64 [ %.pre, %.split.i._crit_edge ], [ %i.cu, %__accumulate_pelt_segments.exit ]
  %.0.i = phi i32 [ %i.u, %.split.i._crit_edge ], [ %i.cx, %__accumulate_pelt_segments.exit ] ; 2 uses
  store i32 %.pre-phi, ptr %i.p, align 4
  %i.cz = zext i32 %.0.i to i64                   ; 2 uses
  %i.da = mul i64 %i.d, %i.cz
  %i.db = getelementptr i8, ptr %1, i64 136
  %i.dc = add i64 %i.cy, %i.da
  store i64 %i.dc, ptr %i.db, align 8
  %.not38.i = icmp eq i32 %i.f, 0
  br i1 %.not38.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = shl nuw nsw i64 %i.g, 10
  %i.de = mul i64 %i.dd, %i.cz
  %i.df = getelementptr i8, ptr %1, i64 144       ; 2 uses
  %i.dg = load i64, ptr %i.df, align 16
  %i.dh = add i64 %i.dg, %i.de
  store i64 %i.dh, ptr %i.df, align 16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %.not51, label %accumulate_sum.exit22, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.di = shl i32 %.0.i, 10
  %i.dj = getelementptr i8, ptr %1, i64 152       ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8
  %i.dl = add i32 %i.dk, %i.di
  store i32 %i.dl, ptr %i.dj, align 8
  br label %accumulate_sum.exit22

.split18.i:                                       ; preds = %bb.d
  br i1 %.not.i19, label %accumulate_sum.exit, label %bb.n

bb.n:                                             ; preds = %.split18.i
  %i.dm = getelementptr i8, ptr %1, i64 136       ; 4 uses
  %i.dn = load i64, ptr %i.dm, align 8            ; 2 uses
  %i.do = icmp samesign ugt i64 %i.s, 2065407
  br i1 %i.do, label %decay_load.exit39.thread, label %bb.o, !prof !23

decay_load.exit39.thread:                         ; preds = %bb.n
  %i.dp = getelementptr i8, ptr %1, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.dm, i8 0, i64 16, i1 false)
  br label %decay_load.exit43

bb.o:                                             ; preds = %bb.n
  %i.dq = icmp samesign ugt i64 %i.s, 32767
  br i1 %i.dq, label %bb.q, label %bb.p, !prof !23

bb.p:                                             ; preds = %bb.o
  %i.dr = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.t
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = zext i64 %i.dn to i128
  %i.du = zext i32 %i.ds to i128
  %i.dv = mul nuw nsw i128 %i.du, %i.dt
  %i.dw = lshr i128 %i.dv, 32
  %i.dx = trunc nuw i128 %i.dw to i64
  store i64 %i.dx, ptr %i.dm, align 8
  %i.dy = getelementptr i8, ptr %1, i64 144       ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 16
  %i.ea = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.t
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = zext i64 %i.dz to i128
  %i.ed = zext i32 %i.eb to i128
  %i.ee = mul nuw nsw i128 %i.ed, %i.ec
  %i.ef = lshr i128 %i.ee, 32
  %i.eg = trunc nuw i128 %i.ef to i64
  store i64 %i.eg, ptr %i.dy, align 16
  %i.eh = getelementptr i8, ptr %1, i64 152       ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8
  %i.ej = zext i32 %i.ei to i64
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ek = lshr i64 %i.s, 15
  %i.el = lshr i64 %i.dn, %i.ek
  %i.em = and i64 %i.t, 31
  %i.en = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = zext nneg i64 %i.el to i128
  %i.eq = zext i32 %i.eo to i128
  %i.er = mul nuw nsw i128 %i.eq, %i.ep
  %i.es = lshr i128 %i.er, 32
  %i.et = trunc nuw nsw i128 %i.es to i64
  store i64 %i.et, ptr %i.dm, align 8
  %i.eu = getelementptr i8, ptr %1, i64 144       ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 16
  %i.ew = lshr i64 %i.s, 15
  %i.ex = lshr i64 %i.ev, %i.ew
  %i.ey = and i64 %i.t, 31
  %i.ez = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = zext nneg i64 %i.ex to i128
  %i.fc = zext i32 %i.fa to i128
  %i.fd = mul nuw nsw i128 %i.fc, %i.fb
  %i.fe = lshr i128 %i.fd, 32
  %i.ff = trunc nuw nsw i128 %i.fe to i64
  store i64 %i.ff, ptr %i.eu, align 16
  %i.fg = getelementptr i8, ptr %1, i64 152       ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 8
  %i.fi = zext i32 %i.fh to i64
  %i.fj = lshr i64 %i.s, 15
  %i.fk = lshr i64 %i.fi, %i.fj
  %i.fl = and i64 %i.t, 31
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.fm = phi ptr [ %i.fg, %bb.q ], [ %i.eh, %bb.p ]
  %.011.i40 = phi i64 [ %i.fk, %bb.q ], [ %i.ej, %bb.p ]
  %.0.i41 = phi i64 [ %i.fl, %bb.q ], [ %i.t, %bb.p ]
  %i.fn = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %.0.i41
  %i.fo = load i32, ptr %i.fn, align 4
  %i.fp = zext i32 %i.fo to i64
  %i.fq = mul nuw i64 %.011.i40, %i.fp
  %i.fr = lshr i64 %i.fq, 32
  %i.fs = trunc nuw i64 %i.fr to i32
  br label %decay_load.exit43

decay_load.exit43:                                ; preds = %decay_load.exit39.thread, %bb.r
  %i.ft = phi ptr [ %i.fm, %bb.r ], [ %i.dp, %decay_load.exit39.thread ]
  %.010.i42 = phi i32 [ %i.fs, %bb.r ], [ 0, %decay_load.exit39.thread ]
  store i32 %.010.i42, ptr %i.ft, align 8
  %i.fu = and i64 %i.s, 1023
  br label %accumulate_sum.exit

accumulate_sum.exit:                              ; preds = %.split18.i, %decay_load.exit43
  %.032.i = phi i64 [ %i.s, %.split18.i ], [ %i.fu, %decay_load.exit43 ]
  %i.fv = trunc i64 %.032.i to i32                ; 2 uses
  store i32 %i.fv, ptr %i.p, align 4
  br label %accumulate_sum.exit22

accumulate_sum.exit22:                            ; preds = %bb.m, %bb.l, %accumulate_sum.exit
  %.val = phi i32 [ %i.fv, %accumulate_sum.exit ], [ %.pre-phi, %bb.l ], [ %.pre-phi, %bb.m ]
  %i.fw = and i64 %i.s, 4398046510080
  %.not22.i = icmp eq i64 %i.fw, 0
  br i1 %.not22.i, label %trace_pelt_cfs_tp.exit, label %___update_load_sum.exit

___update_load_sum.exit:                          ; preds = %accumulate_sum.exit22
  %i.fx = add i32 %.val, 46718                    ; 2 uses
  %i.fy = getelementptr i8, ptr %1, i64 136
  %i.fz = load i64, ptr %i.fy, align 8
  %i.ga = zext i32 %i.fx to i64                   ; 2 uses
  %i.gb = udiv i64 %i.fz, %i.ga
  %i.gc = getelementptr i8, ptr %1, i64 160
  store i64 %i.gb, ptr %i.gc, align 32
  %i.gd = getelementptr i8, ptr %1, i64 144
  %i.ge = load i64, ptr %i.gd, align 16
  %i.gf = udiv i64 %i.ge, %i.ga
  %i.gg = getelementptr i8, ptr %1, i64 168
  store i64 %i.gf, ptr %i.gg, align 8
  %i.gh = getelementptr i8, ptr %1, i64 152
  %i.gi = load i32, ptr %i.gh, align 8
  %i.gj = udiv i32 %i.gi, %i.fx
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr i8, ptr %1, i64 176
  store volatile i64 %i.gk, ptr %i.gl, align 16
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_pelt_cfs_tp, i64 8), i1 false) #32
          to label %trace_pelt_cfs_tp.exit [label %arch_test_bit.exit.i.i], !srcloc !29

arch_test_bit.exit.i.i:                           ; preds = %___update_load_sum.exit
  %i.gm = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #32, !srcloc !221
  %i.gn = zext i32 %i.gm to i64
  %i.go = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.gn) #32, !srcloc !30 ; 2 uses
  %i.gp = icmp ult i8 %i.go, 2
  tail call void @llvm.assume(i1 %i.gp)
  %i.gq = trunc nuw i8 %i.go to i1
  br i1 %i.gq, label %bb.s, label %trace_pelt_cfs_tp.exit

bb.s:                                             ; preds = %arch_test_bit.exit.i.i
  %i.gr = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.gr, ptr elementtype(i64) %i.gr) #32, !srcloc !31
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #32, !srcloc !32
  %i.gs = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_pelt_cfs_tp, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gs, null
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gt = getelementptr i8, ptr %i.gs, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = tail call i32 @__SCT__tp_func_pelt_cfs_tp(ptr noundef %i.gu, ptr noundef %1) #35 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #32, !srcloc !33
  %i.gw = getelementptr i8, ptr %i.gr, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.gw, ptr elementtype(i64) %i.gw) #32, !srcloc !34
  br label %trace_pelt_cfs_tp.exit

trace_pelt_cfs_tp.exit:                           ; preds = %accumulate_sum.exit22, %bb.c, %bb.b, %bb.u, %arch_test_bit.exit.i.i, %___update_load_sum.exit
  %.0 = phi i32 [ 1, %bb.u ], [ 1, %___update_load_sum.exit ], [ 0, %accumulate_sum.exit22 ], [ 1, %arch_test_bit.exit.i.i ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @update_rt_rq_load_avg(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 2880       ; 3 uses
  %i.b = sext i32 %2 to i64                       ; 2 uses
  %i.c = load i64, ptr %i.a, align 64             ; 2 uses
  %i.d = sub i64 %0, %i.c                         ; 3 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %0, ptr %i.a, align 64
  br label %trace_pelt_rt_tp.exit

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 10                        ; 3 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %trace_pelt_rt_tp.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i64 %i.d, 9223372036854774784
  %i.h = add i64 %i.g, %i.c
  store i64 %i.h, ptr %i.a, align 64
  %.not21.i = icmp eq i32 %2, 0
  %i.i = getelementptr i8, ptr %1, i64 2908       ; 3 uses
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = zext i32 %i.j to i64
  %i.l = add nuw nsw i64 %i.f, %i.k               ; 17 uses
  %i.m = lshr i64 %i.l, 10                        ; 14 uses
  %.not.i7 = icmp eq i64 %i.m, 0                  ; 2 uses
  br i1 %.not21.i, label %.split18.i, label %.split.i

.split.i:                                         ; preds = %bb.d
  br i1 %.not.i7, label %.split.i.accumulate_sum.exit10_crit_edge, label %bb.e

.split.i.accumulate_sum.exit10_crit_edge:         ; preds = %.split.i
  %i.n = trunc i64 %i.f to i32
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 2888
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert39 = getelementptr i8, ptr %1, i64 2896
  %.pre40 = load i64, ptr %.phi.trans.insert39, align 16
  %.phi.trans.insert41 = getelementptr i8, ptr %1, i64 2904
  %.pre42 = load i32, ptr %.phi.trans.insert41, align 8
  %.pre44 = trunc nuw i64 %i.l to i32
  br label %accumulate_sum.exit10

bb.e:                                             ; preds = %.split.i
  %i.o = getelementptr i8, ptr %1, i64 2888
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp samesign ugt i64 %i.l, 2065407
  br i1 %i.q, label %__accumulate_pelt_segments.exit, label %bb.f, !prof !23

bb.f:                                             ; preds = %bb.e
  %i.r = icmp samesign ugt i64 %i.l, 32767
  br i1 %i.r, label %bb.h, label %bb.g, !prof !23

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.m
  %i.t = load i32, ptr %i.s, align 4
  %i.u = zext i64 %i.p to i128
  %i.v = zext i32 %i.t to i128
  %i.w = mul nuw nsw i128 %i.v, %i.u
  %i.x = lshr i128 %i.w, 32
  %i.y = trunc nuw i128 %i.x to i64
  %i.z = getelementptr i8, ptr %1, i64 2896
  %i.aa = load i64, ptr %i.z, align 16
  %i.ab = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.m
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = zext i64 %i.aa to i128
  %i.ae = zext i32 %i.ac to i128
  %i.af = mul nuw nsw i128 %i.ae, %i.ad
  %i.ag = lshr i128 %i.af, 32
  %i.ah = trunc nuw i128 %i.ag to i64
  %i.ai = getelementptr i8, ptr %1, i64 2904
  %i.aj = load i32, ptr %i.ai, align 8
  %3 = zext i32 %i.aj to i64
  %i.ak = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.m
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %4 = zext i32 %i.al to i64
  %5 = mul nuw i64 %3, %4
  %i.am = sub i32 1024, %i.j
  %6 = zext i32 %i.am to i64
  %i.an = zext i32 %i.al to i64                   ; 2 uses
  %7 = mul nuw i64 %i.an, %6
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ao = lshr i64 %i.l, 15
  %i.ap = lshr i64 %i.p, %i.ao
  %i.aq = and i64 %i.m, 31
  %i.ar = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = zext nneg i64 %i.ap to i128
  %i.au = zext i32 %i.as to i128
  %i.av = mul nuw nsw i128 %i.au, %i.at
  %i.aw = lshr i128 %i.av, 32
  %i.ax = trunc nuw nsw i128 %i.aw to i64
  %i.ay = getelementptr i8, ptr %1, i64 2896
  %i.az = load i64, ptr %i.ay, align 16
  %i.ba = lshr i64 %i.l, 15
  %i.bb = lshr i64 %i.az, %i.ba
  %i.bc = and i64 %i.m, 31
  %i.bd = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = zext nneg i64 %i.bb to i128
  %i.bg = zext i32 %i.be to i128
  %i.bh = mul nuw nsw i128 %i.bg, %i.bf
  %i.bi = lshr i128 %i.bh, 32
  %i.bj = trunc nuw nsw i128 %i.bi to i64
  %i.bk = getelementptr i8, ptr %1, i64 2904
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = zext i32 %i.bl to i64
  %i.bn = lshr i64 %i.l, 15
  %i.bo = lshr i64 %i.bm, %i.bn
  %i.bp = and i64 %i.m, 31
  %i.bq = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = zext i32 %i.br to i64
  %i.bt = mul nuw nsw i64 %i.bo, %i.bs
  %i.bu = sub i32 1024, %i.j
  %i.bv = zext i32 %i.bu to i64
  %i.bw = lshr i64 %i.l, 15                       ; 2 uses
  %i.bx = lshr i64 %i.bv, %i.bw
  %i.by = and i64 %i.m, 31
  %i.bz = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = mul nuw nsw i64 %i.bx, %i.cb
  %i.cd = lshr i64 47742, %i.bw
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.in.in = phi i64 [ %5, %bb.g ], [ %i.bt, %bb.h ]
  %i.ce = phi i64 [ %i.y, %bb.g ], [ %i.ax, %bb.h ]
  %i.cf = phi i64 [ %i.ah, %bb.g ], [ %i.bj, %bb.h ]
  %.pre-phi.i = phi i64 [ %i.an, %bb.g ], [ %i.cb, %bb.h ]
  %.in.in.i = phi i64 [ %7, %bb.g ], [ %i.cc, %bb.h ]
  %.011.i7.i = phi i64 [ 47742, %bb.g ], [ %i.cd, %bb.h ]
  %.in = lshr i64 %.in.in, 32
  %8 = trunc nuw i64 %.in to i32
  %.in.i = lshr i64 %.in.in.i, 32
  %9 = trunc nuw i64 %.in.i to i32
  %i.cg = mul nuw nsw i64 %.011.i7.i, %.pre-phi.i
  %i.ch = lshr i64 %i.cg, 32
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = add i32 %9, 46718
  %i.ck = sub i32 %i.cj, %i.ci
  br label %__accumulate_pelt_segments.exit

__accumulate_pelt_segments.exit:                  ; preds = %bb.e, %bb.i
  %i.cl = phi i32 [ %8, %bb.i ], [ 0, %bb.e ]
  %i.cm = phi i64 [ %i.cf, %bb.i ], [ 0, %bb.e ]
  %i.cn = phi i64 [ %i.ce, %bb.i ], [ 0, %bb.e ]
  %reass.sub.i = phi i32 [ %i.ck, %bb.i ], [ 46718, %bb.e ]
  %i.co = trunc i64 %i.l to i32
  %i.cp = and i32 %i.co, 1023                     ; 2 uses
  %i.cq = add i32 %reass.sub.i, %i.cp
  br label %accumulate_sum.exit10

accumulate_sum.exit10:                            ; preds = %.split.i.accumulate_sum.exit10_crit_edge, %__accumulate_pelt_segments.exit
  %.pre-phi = phi i32 [ %.pre44, %.split.i.accumulate_sum.exit10_crit_edge ], [ %i.cp, %__accumulate_pelt_segments.exit ] ; 2 uses
  %i.cr = phi i32 [ %.pre42, %.split.i.accumulate_sum.exit10_crit_edge ], [ %i.cl, %__accumulate_pelt_segments.exit ]
  %i.cs = phi i64 [ %.pre40, %.split.i.accumulate_sum.exit10_crit_edge ], [ %i.cm, %__accumulate_pelt_segments.exit ]
  %i.ct = phi i64 [ %.pre, %.split.i.accumulate_sum.exit10_crit_edge ], [ %i.cn, %__accumulate_pelt_segments.exit ]
  %.0.i = phi i32 [ %i.n, %.split.i.accumulate_sum.exit10_crit_edge ], [ %i.cq, %__accumulate_pelt_segments.exit ] ; 2 uses
  store i32 %.pre-phi, ptr %i.i, align 4
  %i.cu = zext i32 %.0.i to i64                   ; 2 uses
  %i.cv = mul nsw i64 %i.cu, %i.b
  %i.cw = getelementptr i8, ptr %1, i64 2888
  %i.cx = add i64 %i.ct, %i.cv
  store i64 %i.cx, ptr %i.cw, align 8
  %i.cy = shl nsw i64 %i.b, 10
  %i.cz = mul i64 %i.cy, %i.cu
  %i.da = getelementptr i8, ptr %1, i64 2896
  %i.db = add i64 %i.cs, %i.cz
  store i64 %i.db, ptr %i.da, align 16
  %i.dc = shl i32 %.0.i, 10
  %i.dd = getelementptr i8, ptr %1, i64 2904
  %i.de = add i32 %i.cr, %i.dc
  store i32 %i.de, ptr %i.dd, align 8
  br label %bb.o

.split18.i:                                       ; preds = %bb.d
  br i1 %.not.i7, label %accumulate_sum.exit, label %bb.j

bb.j:                                             ; preds = %.split18.i
  %i.df = getelementptr i8, ptr %1, i64 2888      ; 4 uses
  %i.dg = load i64, ptr %i.df, align 8            ; 2 uses
  %i.dh = icmp samesign ugt i64 %i.l, 2065407
  br i1 %i.dh, label %decay_load.exit27.thread, label %bb.k, !prof !23

decay_load.exit27.thread:                         ; preds = %bb.j
  %i.di = getelementptr i8, ptr %1, i64 2904
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false)
  br label %decay_load.exit31

bb.k:                                             ; preds = %bb.j
  %i.dj = icmp samesign ugt i64 %i.l, 32767
  br i1 %i.dj, label %bb.m, label %bb.l, !prof !23

bb.l:                                             ; preds = %bb.k
  %i.dk = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.m
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = zext i64 %i.dg to i128
  %i.dn = zext i32 %i.dl to i128
  %i.do = mul nuw nsw i128 %i.dn, %i.dm
  %i.dp = lshr i128 %i.do, 32
  %i.dq = trunc nuw i128 %i.dp to i64
  store i64 %i.dq, ptr %i.df, align 8
  %i.dr = getelementptr i8, ptr %1, i64 2896      ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 16
  %i.dt = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.m
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = zext i64 %i.ds to i128
  %i.dw = zext i32 %i.du to i128
  %i.dx = mul nuw nsw i128 %i.dw, %i.dv
  %i.dy = lshr i128 %i.dx, 32
  %i.dz = trunc nuw i128 %i.dy to i64
  store i64 %i.dz, ptr %i.dr, align 16
  %i.ea = getelementptr i8, ptr %1, i64 2904      ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8
  %i.ec = zext i32 %i.eb to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ed = lshr i64 %i.l, 15
  %i.ee = lshr i64 %i.dg, %i.ed
  %i.ef = and i64 %i.m, 31
  %i.eg = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4
  %i.ei = zext nneg i64 %i.ee to i128
  %i.ej = zext i32 %i.eh to i128
  %i.ek = mul nuw nsw i128 %i.ej, %i.ei
  %i.el = lshr i128 %i.ek, 32
  %i.em = trunc nuw nsw i128 %i.el to i64
  store i64 %i.em, ptr %i.df, align 8
  %i.en = getelementptr i8, ptr %1, i64 2896      ; 2 uses
  %i.eo = load i64, ptr %i.en, align 16
  %i.ep = lshr i64 %i.l, 15
  %i.eq = lshr i64 %i.eo, %i.ep
  %i.er = and i64 %i.m, 31
  %i.es = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = zext nneg i64 %i.eq to i128
  %i.ev = zext i32 %i.et to i128
  %i.ew = mul nuw nsw i128 %i.ev, %i.eu
  %i.ex = lshr i128 %i.ew, 32
  %i.ey = trunc nuw nsw i128 %i.ex to i64
  store i64 %i.ey, ptr %i.en, align 16
  %i.ez = getelementptr i8, ptr %1, i64 2904      ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 8
  %i.fb = zext i32 %i.fa to i64
  %i.fc = lshr i64 %i.l, 15
  %i.fd = lshr i64 %i.fb, %i.fc
  %i.fe = and i64 %i.m, 31
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ff = phi ptr [ %i.ez, %bb.m ], [ %i.ea, %bb.l ]
  %.011.i28 = phi i64 [ %i.fd, %bb.m ], [ %i.ec, %bb.l ]
  %.0.i29 = phi i64 [ %i.fe, %bb.m ], [ %i.m, %bb.l ]
  %i.fg = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %.0.i29
  %i.fh = load i32, ptr %i.fg, align 4
  %i.fi = zext i32 %i.fh to i64
  %i.fj = mul nuw i64 %.011.i28, %i.fi
  %i.fk = lshr i64 %i.fj, 32
  %i.fl = trunc nuw i64 %i.fk to i32
  br label %decay_load.exit31

decay_load.exit31:                                ; preds = %decay_load.exit27.thread, %bb.n
  %i.fm = phi ptr [ %i.ff, %bb.n ], [ %i.di, %decay_load.exit27.thread ]
  %.010.i30 = phi i32 [ %i.fl, %bb.n ], [ 0, %decay_load.exit27.thread ]
  store i32 %.010.i30, ptr %i.fm, align 8
  %i.fn = and i64 %i.l, 1023
  br label %accumulate_sum.exit

accumulate_sum.exit:                              ; preds = %.split18.i, %decay_load.exit31
  %.032.i = phi i64 [ %i.l, %.split18.i ], [ %i.fn, %decay_load.exit31 ]
  %i.fo = trunc i64 %.032.i to i32                ; 2 uses
  store i32 %i.fo, ptr %i.i, align 4
  br label %bb.o

bb.o:                                             ; preds = %accumulate_sum.exit, %accumulate_sum.exit10
  %.val = phi i32 [ %.pre-phi, %accumulate_sum.exit10 ], [ %i.fo, %accumulate_sum.exit ]
  %i.fp = and i64 %i.l, 4398046510080
  %.not22.i = icmp eq i64 %i.fp, 0
  br i1 %.not22.i, label %trace_pelt_rt_tp.exit, label %___update_load_sum.exit

___update_load_sum.exit:                          ; preds = %bb.o
  %i.fq = add i32 %.val, 46718                    ; 2 uses
  %i.fr = getelementptr i8, ptr %1, i64 2888
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = zext i32 %i.fq to i64                   ; 2 uses
  %i.fu = udiv i64 %i.fs, %i.ft
  %i.fv = getelementptr i8, ptr %1, i64 2912
  store i64 %i.fu, ptr %i.fv, align 32
  %i.fw = getelementptr i8, ptr %1, i64 2896
  %i.fx = load i64, ptr %i.fw, align 16
  %i.fy = udiv i64 %i.fx, %i.ft
  %i.fz = getelementptr i8, ptr %1, i64 2920
  store i64 %i.fy, ptr %i.fz, align 8
  %i.ga = getelementptr i8, ptr %1, i64 2904
  %i.gb = load i32, ptr %i.ga, align 8
  %i.gc = udiv i32 %i.gb, %i.fq
  %i.gd = zext i32 %i.gc to i64
  %i.ge = getelementptr i8, ptr %1, i64 2928
  store volatile i64 %i.gd, ptr %i.ge, align 16
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_pelt_rt_tp, i64 8), i1 false) #32
          to label %trace_pelt_rt_tp.exit [label %arch_test_bit.exit.i.i], !srcloc !29

arch_test_bit.exit.i.i:                           ; preds = %___update_load_sum.exit
  %i.gf = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #32, !srcloc !222
  %i.gg = zext i32 %i.gf to i64
  %i.gh = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.gg) #32, !srcloc !30 ; 2 uses
  %i.gi = icmp ult i8 %i.gh, 2
  tail call void @llvm.assume(i1 %i.gi)
  %i.gj = trunc nuw i8 %i.gh to i1
  br i1 %i.gj, label %bb.p, label %trace_pelt_rt_tp.exit

bb.p:                                             ; preds = %arch_test_bit.exit.i.i
  %i.gk = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.gk, ptr elementtype(i64) %i.gk) #32, !srcloc !31
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #32, !srcloc !32
  %i.gl = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_pelt_rt_tp, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gm = getelementptr i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = tail call i32 @__SCT__tp_func_pelt_rt_tp(ptr noundef %i.gn, ptr noundef %1) #35 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #32, !srcloc !33
  %i.gp = getelementptr i8, ptr %i.gk, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.gp, ptr elementtype(i64) %i.gp) #32, !srcloc !34
  br label %trace_pelt_rt_tp.exit

trace_pelt_rt_tp.exit:                            ; preds = %bb.o, %bb.c, %bb.b, %bb.r, %arch_test_bit.exit.i.i, %___update_load_sum.exit
  %.0 = phi i32 [ 1, %bb.r ], [ 1, %___update_load_sum.exit ], [ 0, %bb.o ], [ 1, %arch_test_bit.exit.i.i ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @update_dl_rq_load_avg(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 2944       ; 3 uses
  %i.b = sext i32 %2 to i64                       ; 2 uses
  %i.c = load i64, ptr %i.a, align 64             ; 2 uses
  %i.d = sub i64 %0, %i.c                         ; 3 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %0, ptr %i.a, align 64
  br label %trace_pelt_dl_tp.exit

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 10                        ; 3 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %trace_pelt_dl_tp.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i64 %i.d, 9223372036854774784
  %i.h = add i64 %i.g, %i.c
  store i64 %i.h, ptr %i.a, align 64
  %.not21.i = icmp eq i32 %2, 0
  %i.i = getelementptr i8, ptr %1, i64 2972       ; 3 uses
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = zext i32 %i.j to i64
  %i.l = add nuw nsw i64 %i.f, %i.k               ; 17 uses
  %i.m = lshr i64 %i.l, 10                        ; 14 uses
  %.not.i7 = icmp eq i64 %i.m, 0                  ; 2 uses
  br i1 %.not21.i, label %.split18.i, label %.split.i

.split.i:                                         ; preds = %bb.d
  br i1 %.not.i7, label %.split.i.accumulate_sum.exit10_crit_edge, label %bb.e

.split.i.accumulate_sum.exit10_crit_edge:         ; preds = %.split.i
  %i.n = trunc i64 %i.f to i32
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 2952
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert39 = getelementptr i8, ptr %1, i64 2960
  %.pre40 = load i64, ptr %.phi.trans.insert39, align 16
  %.phi.trans.insert41 = getelementptr i8, ptr %1, i64 2968
  %.pre42 = load i32, ptr %.phi.trans.insert41, align 8
  %.pre44 = trunc nuw i64 %i.l to i32
  br label %accumulate_sum.exit10

bb.e:                                             ; preds = %.split.i
  %i.o = getelementptr i8, ptr %1, i64 2952
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp samesign ugt i64 %i.l, 2065407
  br i1 %i.q, label %__accumulate_pelt_segments.exit, label %bb.f, !prof !23

bb.f:                                             ; preds = %bb.e
  %i.r = icmp samesign ugt i64 %i.l, 32767
  br i1 %i.r, label %bb.h, label %bb.g, !prof !23

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.m
  %i.t = load i32, ptr %i.s, align 4
  %i.u = zext i64 %i.p to i128
  %i.v = zext i32 %i.t to i128
  %i.w = mul nuw nsw i128 %i.v, %i.u
  %i.x = lshr i128 %i.w, 32
  %i.y = trunc nuw i128 %i.x to i64
  %i.z = getelementptr i8, ptr %1, i64 2960
  %i.aa = load i64, ptr %i.z, align 16
  %i.ab = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.m
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = zext i64 %i.aa to i128
  %i.ae = zext i32 %i.ac to i128
  %i.af = mul nuw nsw i128 %i.ae, %i.ad
  %i.ag = lshr i128 %i.af, 32
  %i.ah = trunc nuw i128 %i.ag to i64
  %i.ai = getelementptr i8, ptr %1, i64 2968
  %i.aj = load i32, ptr %i.ai, align 8
  %3 = zext i32 %i.aj to i64
  %i.ak = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.m
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %4 = zext i32 %i.al to i64
  %5 = mul nuw i64 %3, %4
  %i.am = sub i32 1024, %i.j
  %6 = zext i32 %i.am to i64
  %i.an = zext i32 %i.al to i64                   ; 2 uses
  %7 = mul nuw i64 %i.an, %6
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ao = lshr i64 %i.l, 15
  %i.ap = lshr i64 %i.p, %i.ao
  %i.aq = and i64 %i.m, 31
  %i.ar = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = zext nneg i64 %i.ap to i128
  %i.au = zext i32 %i.as to i128
  %i.av = mul nuw nsw i128 %i.au, %i.at
  %i.aw = lshr i128 %i.av, 32
  %i.ax = trunc nuw nsw i128 %i.aw to i64
  %i.ay = getelementptr i8, ptr %1, i64 2960
  %i.az = load i64, ptr %i.ay, align 16
  %i.ba = lshr i64 %i.l, 15
  %i.bb = lshr i64 %i.az, %i.ba
  %i.bc = and i64 %i.m, 31
  %i.bd = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = zext nneg i64 %i.bb to i128
  %i.bg = zext i32 %i.be to i128
  %i.bh = mul nuw nsw i128 %i.bg, %i.bf
  %i.bi = lshr i128 %i.bh, 32
  %i.bj = trunc nuw nsw i128 %i.bi to i64
  %i.bk = getelementptr i8, ptr %1, i64 2968
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = zext i32 %i.bl to i64
  %i.bn = lshr i64 %i.l, 15
  %i.bo = lshr i64 %i.bm, %i.bn
  %i.bp = and i64 %i.m, 31
  %i.bq = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = zext i32 %i.br to i64
  %i.bt = mul nuw nsw i64 %i.bo, %i.bs
  %i.bu = sub i32 1024, %i.j
  %i.bv = zext i32 %i.bu to i64
  %i.bw = lshr i64 %i.l, 15                       ; 2 uses
  %i.bx = lshr i64 %i.bv, %i.bw
  %i.by = and i64 %i.m, 31
  %i.bz = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = mul nuw nsw i64 %i.bx, %i.cb
  %i.cd = lshr i64 47742, %i.bw
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.in.in = phi i64 [ %5, %bb.g ], [ %i.bt, %bb.h ]
  %i.ce = phi i64 [ %i.y, %bb.g ], [ %i.ax, %bb.h ]
  %i.cf = phi i64 [ %i.ah, %bb.g ], [ %i.bj, %bb.h ]
  %.pre-phi.i = phi i64 [ %i.an, %bb.g ], [ %i.cb, %bb.h ]
  %.in.in.i = phi i64 [ %7, %bb.g ], [ %i.cc, %bb.h ]
  %.011.i7.i = phi i64 [ 47742, %bb.g ], [ %i.cd, %bb.h ]
  %.in = lshr i64 %.in.in, 32
  %8 = trunc nuw i64 %.in to i32
  %.in.i = lshr i64 %.in.in.i, 32
  %9 = trunc nuw i64 %.in.i to i32
  %i.cg = mul nuw nsw i64 %.011.i7.i, %.pre-phi.i
  %i.ch = lshr i64 %i.cg, 32
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = add i32 %9, 46718
  %i.ck = sub i32 %i.cj, %i.ci
  br label %__accumulate_pelt_segments.exit

__accumulate_pelt_segments.exit:                  ; preds = %bb.e, %bb.i
  %i.cl = phi i32 [ %8, %bb.i ], [ 0, %bb.e ]
  %i.cm = phi i64 [ %i.cf, %bb.i ], [ 0, %bb.e ]
  %i.cn = phi i64 [ %i.ce, %bb.i ], [ 0, %bb.e ]
  %reass.sub.i = phi i32 [ %i.ck, %bb.i ], [ 46718, %bb.e ]
  %i.co = trunc i64 %i.l to i32
  %i.cp = and i32 %i.co, 1023                     ; 2 uses
  %i.cq = add i32 %reass.sub.i, %i.cp
  br label %accumulate_sum.exit10

accumulate_sum.exit10:                            ; preds = %.split.i.accumulate_sum.exit10_crit_edge, %__accumulate_pelt_segments.exit
  %.pre-phi = phi i32 [ %.pre44, %.split.i.accumulate_sum.exit10_crit_edge ], [ %i.cp, %__accumulate_pelt_segments.exit ] ; 2 uses
  %i.cr = phi i32 [ %.pre42, %.split.i.accumulate_sum.exit10_crit_edge ], [ %i.cl, %__accumulate_pelt_segments.exit ]
  %i.cs = phi i64 [ %.pre40, %.split.i.accumulate_sum.exit10_crit_edge ], [ %i.cm, %__accumulate_pelt_segments.exit ]
  %i.ct = phi i64 [ %.pre, %.split.i.accumulate_sum.exit10_crit_edge ], [ %i.cn, %__accumulate_pelt_segments.exit ]
  %.0.i = phi i32 [ %i.n, %.split.i.accumulate_sum.exit10_crit_edge ], [ %i.cq, %__accumulate_pelt_segments.exit ] ; 2 uses
  store i32 %.pre-phi, ptr %i.i, align 4
  %i.cu = zext i32 %.0.i to i64                   ; 2 uses
  %i.cv = mul nsw i64 %i.cu, %i.b
  %i.cw = getelementptr i8, ptr %1, i64 2952
  %i.cx = add i64 %i.ct, %i.cv
  store i64 %i.cx, ptr %i.cw, align 8
  %i.cy = shl nsw i64 %i.b, 10
  %i.cz = mul i64 %i.cy, %i.cu
  %i.da = getelementptr i8, ptr %1, i64 2960
  %i.db = add i64 %i.cs, %i.cz
  store i64 %i.db, ptr %i.da, align 16
  %i.dc = shl i32 %.0.i, 10
  %i.dd = getelementptr i8, ptr %1, i64 2968
  %i.de = add i32 %i.cr, %i.dc
  store i32 %i.de, ptr %i.dd, align 8
  br label %bb.o

.split18.i:                                       ; preds = %bb.d
  br i1 %.not.i7, label %accumulate_sum.exit, label %bb.j

bb.j:                                             ; preds = %.split18.i
  %i.df = getelementptr i8, ptr %1, i64 2952      ; 4 uses
  %i.dg = load i64, ptr %i.df, align 8            ; 2 uses
  %i.dh = icmp samesign ugt i64 %i.l, 2065407
  br i1 %i.dh, label %decay_load.exit27.thread, label %bb.k, !prof !23

decay_load.exit27.thread:                         ; preds = %bb.j
  %i.di = getelementptr i8, ptr %1, i64 2968
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false)
  br label %decay_load.exit31

bb.k:                                             ; preds = %bb.j
  %i.dj = icmp samesign ugt i64 %i.l, 32767
  br i1 %i.dj, label %bb.m, label %bb.l, !prof !23

bb.l:                                             ; preds = %bb.k
  %i.dk = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.m
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = zext i64 %i.dg to i128
  %i.dn = zext i32 %i.dl to i128
  %i.do = mul nuw nsw i128 %i.dn, %i.dm
  %i.dp = lshr i128 %i.do, 32
  %i.dq = trunc nuw i128 %i.dp to i64
  store i64 %i.dq, ptr %i.df, align 8
  %i.dr = getelementptr i8, ptr %1, i64 2960      ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 16
  %i.dt = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.m
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = zext i64 %i.ds to i128
  %i.dw = zext i32 %i.du to i128
  %i.dx = mul nuw nsw i128 %i.dw, %i.dv
  %i.dy = lshr i128 %i.dx, 32
  %i.dz = trunc nuw i128 %i.dy to i64
  store i64 %i.dz, ptr %i.dr, align 16
  %i.ea = getelementptr i8, ptr %1, i64 2968      ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8
  %i.ec = zext i32 %i.eb to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ed = lshr i64 %i.l, 15
  %i.ee = lshr i64 %i.dg, %i.ed
  %i.ef = and i64 %i.m, 31
  %i.eg = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4
  %i.ei = zext nneg i64 %i.ee to i128
  %i.ej = zext i32 %i.eh to i128
  %i.ek = mul nuw nsw i128 %i.ej, %i.ei
  %i.el = lshr i128 %i.ek, 32
  %i.em = trunc nuw nsw i128 %i.el to i64
  store i64 %i.em, ptr %i.df, align 8
  %i.en = getelementptr i8, ptr %1, i64 2960      ; 2 uses
  %i.eo = load i64, ptr %i.en, align 16
  %i.ep = lshr i64 %i.l, 15
  %i.eq = lshr i64 %i.eo, %i.ep
  %i.er = and i64 %i.m, 31
  %i.es = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = zext nneg i64 %i.eq to i128
  %i.ev = zext i32 %i.et to i128
  %i.ew = mul nuw nsw i128 %i.ev, %i.eu
  %i.ex = lshr i128 %i.ew, 32
  %i.ey = trunc nuw nsw i128 %i.ex to i64
  store i64 %i.ey, ptr %i.en, align 16
  %i.ez = getelementptr i8, ptr %1, i64 2968      ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 8
  %i.fb = zext i32 %i.fa to i64
  %i.fc = lshr i64 %i.l, 15
  %i.fd = lshr i64 %i.fb, %i.fc
  %i.fe = and i64 %i.m, 31
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ff = phi ptr [ %i.ez, %bb.m ], [ %i.ea, %bb.l ]
  %.011.i28 = phi i64 [ %i.fd, %bb.m ], [ %i.ec, %bb.l ]
  %.0.i29 = phi i64 [ %i.fe, %bb.m ], [ %i.m, %bb.l ]
  %i.fg = getelementptr [4 x i8], ptr @runnable_avg_yN_inv, i64 %.0.i29
  %i.fh = load i32, ptr %i.fg, align 4
  %i.fi = zext i32 %i.fh to i64
  %i.fj = mul nuw i64 %.011.i28, %i.fi
  %i.fk = lshr i64 %i.fj, 32
  %i.fl = trunc nuw i64 %i.fk to i32
  br label %decay_load.exit31

decay_load.exit31:                                ; preds = %decay_load.exit27.thread, %bb.n
  %i.fm = phi ptr [ %i.ff, %bb.n ], [ %i.di, %decay_load.exit27.thread ]
  %.010.i30 = phi i32 [ %i.fl, %bb.n ], [ 0, %decay_load.exit27.thread ]
  store i32 %.010.i30, ptr %i.fm, align 8
  %i.fn = and i64 %i.l, 1023
  br label %accumulate_sum.exit

accumulate_sum.exit:                              ; preds = %.split18.i, %decay_load.exit31
  %.032.i = phi i64 [ %i.l, %.split18.i ], [ %i.fn, %decay_load.exit31 ]
  %i.fo = trunc i64 %.032.i to i32                ; 2 uses
  store i32 %i.fo, ptr %i.i, align 4
  br label %bb.o

bb.o:                                             ; preds = %accumulate_sum.exit, %accumulate_sum.exit10
  %.val = phi i32 [ %.pre-phi, %accumulate_sum.exit10 ], [ %i.fo, %accumulate_sum.exit ]
  %i.fp = and i64 %i.l, 4398046510080
  %.not22.i = icmp eq i64 %i.fp, 0
  br i1 %.not22.i, label %trace_pelt_dl_tp.exit, label %___update_load_sum.exit

___update_load_sum.exit:                          ; preds = %bb.o
  %i.fq = add i32 %.val, 46718                    ; 2 uses
  %i.fr = getelementptr i8, ptr %1, i64 2952
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = zext i32 %i.fq to i64                   ; 2 uses
  %i.fu = udiv i64 %i.fs, %i.ft
  %i.fv = getelementptr i8, ptr %1, i64 2976
  store i64 %i.fu, ptr %i.fv, align 32
  %i.fw = getelementptr i8, ptr %1, i64 2960
  %i.fx = load i64, ptr %i.fw, align 16
  %i.fy = udiv i64 %i.fx, %i.ft
  %i.fz = getelementptr i8, ptr %1, i64 2984
  store i64 %i.fy, ptr %i.fz, align 8
  %i.ga = getelementptr i8, ptr %1, i64 2968
  %i.gb = load i32, ptr %i.ga, align 8
  %i.gc = udiv i32 %i.gb, %i.fq
  %i.gd = zext i32 %i.gc to i64
  %i.ge = getelementptr i8, ptr %1, i64 2992
  store volatile i64 %i.gd, ptr %i.ge, align 16
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_pelt_dl_tp, i64 8), i1 false) #32
          to label %trace_pelt_dl_tp.exit [label %arch_test_bit.exit.i.i], !srcloc !29

arch_test_bit.exit.i.i:                           ; preds = %___update_load_sum.exit
  %i.gf = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #32, !srcloc !223
  %i.gg = zext i32 %i.gf to i64
  %i.gh = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.gg) #32, !srcloc !30 ; 2 uses
  %i.gi = icmp ult i8 %i.gh, 2
  tail call void @llvm.assume(i1 %i.gi)
  %i.gj = trunc nuw i8 %i.gh to i1
  br i1 %i.gj, label %bb.p, label %trace_pelt_dl_tp.exit

bb.p:                                             ; preds = %arch_test_bit.exit.i.i
  %i.gk = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.gk, ptr elementtype(i64) %i.gk) #32, !srcloc !31
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #32, !srcloc !32
  %i.gl = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_pelt_dl_tp, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gm = getelementptr i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = tail call i32 @__SCT__tp_func_pelt_dl_tp(ptr noundef %i.gn, ptr noundef %1) #35 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #32, !srcloc !33
  %i.gp = getelementptr i8, ptr %i.gk, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.gp, ptr elementtype(i64) %i.gp) #32, !srcloc !34
  br label %trace_pelt_dl_tp.exit

trace_pelt_dl_tp.exit:                            ; preds = %bb.o, %bb.c, %bb.b, %bb.r, %arch_test_bit.exit.i.i, %___update_load_sum.exit
  %.0 = phi i32 [ 1, %bb.r ], [ 1, %___update_load_sum.exit ], [ 0, %bb.o ], [ 1, %arch_test_bit.exit.i.i ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @update_other_load_avgs(ptr noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2720       ; 2 uses
  %.val.i = load i32, ptr %i.a, align 32
  %i.b = icmp ult i32 %.val.i, 2
  br i1 %i.b, label %bb.b, label %rq_clock_pelt.exit, !prof !23
end_hunk_0
begin_hunk_1_@do_sched_setscheduler:bb.a
  call void @__rcu_read_unlock() #35
  br label %class_find_get_task_destructor.exit

bb.g:                                             ; preds = %bb.f, %.sink.split.i.i.i.i.i
  call void @__rcu_read_unlock() #35
  %.val.i = load i32, ptr %4, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  store i32 %1, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr i8, ptr %i.g, i64 108
  %i.o = load i32, ptr %i.n, align 4
  %i.p = add i32 %i.o, -120
  store i32 %i.p, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %.val.i, ptr %i.q, align 4
  %i.r = getelementptr i8, ptr %i.g, i64 219
  %i.s = load i8, ptr %i.r, align 1
  %.not.i.i10 = icmp eq i8 %i.s, 0
  br i1 %.not.i.i10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.g, i64 272
  %i.u = load i64, ptr %i.t, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.u, ptr %i.v, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not10.i.i = icmp eq i32 %1, -1
  %i.w = and i32 %1, 1073741824
  %.not11.i.i = icmp eq i32 %i.w, 0
  %or.cond.i.i = or i1 %.not10.i.i, %.not11.i.i
  br i1 %or.cond.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.x, align 8
  %i.y = and i32 %1, -1073741825
  store i32 %i.y, ptr %i.l, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.z = call i32 @__sched_setscheduler(ptr noundef nonnull %i.g, ptr noundef nonnull %3, i1 noundef zeroext true, i1 noundef zeroext true) #34 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.aa = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.h, i32 -1, ptr elementtype(i32) %i.h) #32, !srcloc !56 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = icmp slt i32 %i.aa, 1
  br i1 %i.ac, label %bb.m, label %class_find_get_task_destructor.exit, !prof !23

bb.m:                                             ; preds = %bb.l
  call void @refcount_warn_saturate(ptr noundef %i.h, i32 noundef 3) #35
  br label %class_find_get_task_destructor.exit

bb.n:                                             ; preds = %bb.k
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #32, !srcloc !57
  %i.ad = getelementptr i8, ptr %i.g, i64 2880
  call void @call_rcu(ptr noundef %i.ad, ptr noundef nonnull @__put_task_struct_rcu_cb) #35
  br label %class_find_get_task_destructor.exit

class_find_get_task_destructor.exit:              ; preds = %.thread, %bb.l, %bb.m, %bb.n, %copy_from_user.exit, %bb.a
  %.1 = phi i32 [ %i.z, %bb.n ], [ -22, %bb.a ], [ -14, %copy_from_user.exit ], [ -3, %.thread ], [ %i.z, %bb.l ], [ %i.z, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret i32 %.1
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @check_zeroed_user(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(3)
declare dso_local noalias ptr @__kmalloc_cache_node_noprof(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #29

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @find_task_by_vpid(i32 noundef) local_unnamed_addr #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @sched_rr_get_interval(i32 noundef %0, ptr noundef %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.class_task_rq_lock_t, align 8 ; 8 uses
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__rcu_read_lock() #35
  %.not.i = icmp eq i32 %0, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @find_task_by_vpid(i32 noundef %0) #35
  br label %find_process_by_pid.exit

bb.d:                                             ; preds = %bb.b
  %i.c = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #33, !srcloc !24
  %i.d = inttoptr i64 %i.c to ptr
  br label %find_process_by_pid.exit

find_process_by_pid.exit:                         ; preds = %bb.c, %bb.d
  %i.e = phi ptr [ %i.b, %bb.c ], [ %i.d, %bb.d ] ; 6 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %find_process_by_pid.exit
  %i.f = tail call i32 @security_task_getscheduler(ptr noundef nonnull %i.e) #35 ; 2 uses
  %.not24 = icmp eq i32 %i.f, 0
  br i1 %.not24, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store ptr %i.e, ptr %2, align 8, !alias.scope !497
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = call ptr @_task_rq_lock(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h) #35 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !497
  %i.k = getelementptr i8, ptr %i.e, i64 776
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 208
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not25 = icmp eq ptr %i.n, null
  br i1 %.not25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = call i32 %i.n(ptr noundef %i.i, ptr noundef nonnull %i.e) #35
  %i.p = zext i32 %i.o to i64
  %.pre = load ptr, ptr %i.j, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = phi ptr [ %.pre, %bb.g ], [ %i.i, %bb.f ] ; 2 uses
  %.017 = phi i64 [ %i.p, %bb.g ], [ 0, %bb.f ]
  %i.r = load ptr, ptr %2, align 8
  %i.s = getelementptr i8, ptr %i.q, i64 2720
  %.val.i.i = load i32, ptr %i.s, align 32
  %i.t = icmp ugt i32 %.val.i.i, 2
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 4, ptr %i.u, align 8
  br label %bb.j

.thread:                                          ; preds = %find_process_by_pid.exit, %bb.e
  %.018.ph = phi i32 [ %i.f, %bb.e ], [ -3, %find_process_by_pid.exit ]
  tail call void @__rcu_read_unlock() #35
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.v = getelementptr i8, ptr %i.q, i64 72
  call void @_raw_spin_unlock(ptr noundef %i.v) #35
  %i.w = getelementptr i8, ptr %i.r, i64 2276
  %i.x = load i64, ptr %i.h, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.w, i64 noundef %i.x) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @__rcu_read_unlock() #35
  call void @jiffies_to_timespec64(i64 noundef %.017, ptr noundef %1) #35
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.a, %bb.j
  %.119 = phi i32 [ %.018.ph, %.thread ], [ 0, %bb.j ], [ -22, %bb.a ]
  ret i32 %.119
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @put_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @jiffies_to_timespec64(i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @put_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #30

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: read, target_mem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern noredzone noreturn nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #10 = { nocallback nounwind }
attributes #11 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #12 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #13 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #14 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #15 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #16 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #17 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #18 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #19 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #20 = { fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong memory(read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #21 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #22 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #23 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #24 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, argmem: read, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #27 = { fn_ret_thunk_extern inlinehint mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #28 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #29 = { noredzone null_pointer_is_valid allocsize(3) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nounwind memory(read) }
attributes #32 = { nounwind }
attributes #33 = { nounwind memory(none) }
attributes #34 = { noredzone "no-builtin-wcslen" }
attributes #35 = { noredzone nounwind "no-builtin-wcslen" }
attributes #36 = { noredzone noreturn "no-builtin-wcslen" }
attributes #37 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #38 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }
attributes #39 = { noredzone nounwind allocsize(3) "no-builtin-wcslen" }

!llvm.named.register.rsp = !{!11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !{!0, !38}
!1 = distinct !{!1, !38}
!2 = distinct !{!2, !38}
!3 = distinct !{!3, !38}
!4 = distinct !{null, null, null}
!5 = distinct !{!5, !38}
!6 = distinct !{null, null, null}
!7 = distinct !{!7, !38}
!8 = distinct !{!8, !38}
!9 = distinct !{!9, !38}
!10 = distinct !{null}
!11 = !{!"rsp"}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 8, !"cf-protection-branch", i32 1}
!14 = !{i32 4, !"function_return_thunk_extern", i32 1}
!15 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!16 = !{i32 1, !"Code Model", i32 2}
!17 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!18 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!19 = !{i32 1, !"override-stack-alignment", i32 8}
!20 = !{i32 4, !"SkipRaxSetup", i32 1}
!21 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!22 = !{i64 2162166328}
!23 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!24 = !{i64 2149373533}
!25 = !{i64 2148751926, i64 2148751965, i64 2148751986, i64 2148752023, i64 2148752046, i64 2148751917}
!26 = !{i64 2154181011, i64 2154180887}
!27 = !{i64 2154181995, i64 2154181870}
!28 = !{i64 2173236}
!29 = !{i64 2148950240, i64 2148950280, i64 2148950397, i64 2148950418, i64 2148950461, i64 2148950476, i64 2148950509, i64 2148950543, i64 2148950567}
!30 = !{i64 2148767919}
!31 = !{i64 2151716274}
!32 = !{i64 2151719576}
!33 = !{i64 2151719998}
!34 = !{i64 2151731780}
!35 = !{!"auto-init"}
!36 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!37 = !{i64 2149290345}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{i64 2149286601}
!40 = !{i64 2149296526}
!41 = !{i64 2148750614, i64 2148750653, i64 2148750674, i64 2148750711, i64 2148750734, i64 2148750605}
!42 = !{i64 2173144}
!43 = !{i8 0, i8 2}
!44 = !{}
!45 = !{i64 2162179283, i64 2162179153}
!46 = !{i64 2162179814, i64 2162184951, i64 2162184984, i64 2162185019, i64 2162185035, i64 2162185962, i64 2162186020, i64 2162186069, i64 2162185879, i64 2162185094, i64 2162185126, i64 2162185209}
!47 = !{i64 2162186375, i64 2162186246}
!48 = !{i64 15590509}
!49 = !{i64 1466134, i64 1466157, i64 2148951572, i64 2148951593, i64 2148951636, i64 2148951651, i64 2148951684, i64 2148951718, i64 2148951742}
!50 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!51 = !{i64 2148753109}
!52 = !{i64 2148751552}
!53 = !{i64 2162800158}
!54 = !{i64 1261810}
!55 = !{i64 2148349267}
!56 = !{i64 2148178406, i64 2148178445, i64 2148178466, i64 2148178503, i64 2148178526, i64 2148178535}
!57 = !{i64 2150876349}
!58 = !{!"branch_weights", i32 1, i32 1999}
!59 = !{i64 2148750911, i64 2148750950, i64 2148750971, i64 2148751008, i64 2148751031, i64 2148750902}
!60 = !{i64 2162665713}
!61 = !{i64 2148168200, i64 2148168239, i64 2148168260, i64 2148168297, i64 2148168320, i64 2148168191}
!62 = !{ptr @update_curr_rt}
!63 = !{i64 2148168575, i64 2148168614, i64 2148168635, i64 2148168672, i64 2148168695, i64 2148168566}
!64 = !{i64 2148752223, i64 2148752262, i64 2148752283, i64 2148752320, i64 2148752343, i64 2148752214}
!65 = !{i64 15149582}
!66 = !{i64 2162838826, i64 2162838696}
!67 = !{i64 2162839357, i64 2162840435, i64 2162840468, i64 2162840503, i64 2162840519, i64 2162841446, i64 2162841504, i64 2162841553, i64 2162841363, i64 2162840578, i64 2162840610, i64 2162840693}
!68 = !{i64 2162841864, i64 2162841735}
!69 = !{i64 2161577227}
!70 = !{!"branch_weights", i32 2002, i32 2000}
!71 = !{i64 2148193017, i64 2148193056, i64 2148193077, i64 2148193114, i64 2148193137, i64 2148193008}
!72 = !{i64 2162925052}
!73 = !{i64 2149283022}
!74 = !{!"branch_weights", i32 1999, i32 1}
!75 = !{i64 2378776}
!76 = !{!"branch_weights", i32 1, i32 0}
!77 = !{i64 2151569868}
!78 = !{i64 2162937067}
!79 = !{i64 2151570141}
!80 = !{i64 2151570414}
!81 = !{i64 2151506733}
!82 = !{i64 1597710}
!83 = !{i64 1597911}
!84 = !{i64 2161990852}
!85 = !{i64 2161955028}
!86 = !{i64 2163176091, i64 2163175961}
!87 = !{i64 2163176622, i64 2163177680, i64 2163177713, i64 2163177748, i64 2163177764, i64 2163178691, i64 2163178749, i64 2163178798, i64 2163178608, i64 2163177823, i64 2163177855, i64 2163177938}
!88 = !{i64 2163179106, i64 2163178977}
!89 = !{i64 2163162601, i64 2163162471}
!90 = !{i64 2163163132, i64 2163164193, i64 2163164226, i64 2163164261, i64 2163164277, i64 2163165204, i64 2163165262, i64 2163165311, i64 2163165121, i64 2163164336, i64 2163164368, i64 2163164451}
!91 = !{i64 2163165619, i64 2163165490}
!92 = !{i64 2163167009, i64 2163166879}
!93 = !{i64 2163167540, i64 2163168612, i64 2163168645, i64 2163168680, i64 2163168696, i64 2163169623, i64 2163169681, i64 2163169730, i64 2163169540, i64 2163168755, i64 2163168787, i64 2163168870}
!94 = !{i64 2163170038, i64 2163169909}
!95 = !{i64 2163171560, i64 2163171430}
!96 = !{i64 2163172091, i64 2163173152, i64 2163173185, i64 2163173220, i64 2163173236, i64 2163174163, i64 2163174221, i64 2163174270, i64 2163174080, i64 2163173295, i64 2163173327, i64 2163173410}
!97 = !{i64 2163174578, i64 2163174449}
!98 = !{i64 2163180619, i64 2163180489}
!99 = !{i64 2163181150, i64 2163182208, i64 2163182241, i64 2163182276, i64 2163182292, i64 2163183219, i64 2163183277, i64 2163183326, i64 2163183136, i64 2163182351, i64 2163182383, i64 2163182466}
!100 = !{i64 2163183634, i64 2163183505}
!101 = !{i64 2163185024, i64 2163184894}
!102 = !{i64 2163185555, i64 2163186627, i64 2163186660, i64 2163186695, i64 2163186711, i64 2163187638, i64 2163187696, i64 2163187745, i64 2163187555, i64 2163186770, i64 2163186802, i64 2163186885}
!103 = !{i64 2163188053, i64 2163187924}
!104 = !{i64 2148774769, i64 2148774798, i64 2148774804, i64 2148774820, i64 2148774836, i64 2148774863, i64 2148774963, i64 2148775042, i64 2148775156, i64 2148775204, i64 2148775252, i64 2148775316, i64 2148775373, i64 2148775425, i64 2148775551, i64 2148775788, i64 2148775637, i64 2148775668, i64 2148775674, i64 2148775690, i64 2148775706}
!105 = !{i64 15602009}
!106 = !{i64 15606217}
!107 = !{i64 15633449}
!108 = !{i64 2163209060}
!109 = !{i64 2150619835}
!110 = !{i64 2150621099}
!111 = !{i64 2150621281}
!112 = !{i64 16007920}
!113 = !{i64 16008263}
!114 = !{i64 2163736888}
!115 = !{i64 2163736985}
!116 = !{i64 2149293765}
!117 = !{i64 16022609}
!118 = !{i64 16022893}
!119 = !{i64 2162490017, i64 2162489887}
!120 = !{i64 2162490548, i64 2162491609, i64 2162491642, i64 2162491677, i64 2162491693, i64 2162492620, i64 2162492678, i64 2162492727, i64 2162492537, i64 2162491752, i64 2162491784, i64 2162491867}
!121 = !{i64 2162493030, i64 2162492901}
!122 = !{i64 2162505782, i64 2162505652}
!123 = !{i64 14992963}
!124 = !{i64 2162509170}
!125 = !{i64 14992994}
!126 = !{i64 2162513183}
!127 = !{i64 14993154}
!128 = !{i64 14993208}
!129 = !{i64 2162514539, i64 2162514410}
!130 = !{i64 2159871479}
!131 = distinct !{!131, !38}
!132 = !{i64 2162537267, i64 2162537137}
!133 = !{i64 2162537798, i64 2162538865, i64 2162538898, i64 2162538933, i64 2162538949, i64 2162539876, i64 2162539934, i64 2162539983, i64 2162539793, i64 2162539008, i64 2162539040, i64 2162539123}
!134 = !{i64 2162540287, i64 2162540158}
!135 = !{i64 2162541683, i64 2162541553}
!136 = !{i64 2162542214, i64 2162543281, i64 2162543314, i64 2162543349, i64 2162543365, i64 2162544292, i64 2162544350, i64 2162544399, i64 2162544209, i64 2162543424, i64 2162543456, i64 2162543539}
!137 = !{i64 2162544703, i64 2162544574}
!138 = !{i64 2162546115, i64 2162545985}
!139 = !{i64 2162546646, i64 2162547714, i64 2162547747, i64 2162547782, i64 2162547798, i64 2162548725, i64 2162548783, i64 2162548832, i64 2162548642, i64 2162547857, i64 2162547889, i64 2162547972}
!140 = !{i64 2162549136, i64 2162549007}
!141 = !{i64 2162550562, i64 2162550432}
!142 = !{i64 2162551093, i64 2162552168, i64 2162552201, i64 2162552236, i64 2162552252, i64 2162553179, i64 2162553237, i64 2162553286, i64 2162553096, i64 2162552311, i64 2162552343, i64 2162552426}
!143 = !{i64 2162553590, i64 2162553461}
!144 = !{i64 2162554914, i64 2162554784}
!145 = !{i64 2162555445, i64 2162556495, i64 2162556528, i64 2162556563, i64 2162556579, i64 2162557506, i64 2162557564, i64 2162557613, i64 2162557423, i64 2162556638, i64 2162556670, i64 2162556753}
!146 = !{i64 2162557917, i64 2162557788}
!147 = !{i64 2162559259, i64 2162559129}
!148 = !{i64 2162559790, i64 2162560839, i64 2162560872, i64 2162560907, i64 2162560923, i64 2162561850, i64 2162561908, i64 2162561957, i64 2162561767, i64 2162560982, i64 2162561014, i64 2162561097}
!149 = !{i64 2162562261, i64 2162562132}
!150 = !{i64 2162566999}
!151 = !{i64 15001973}
!152 = !{i64 2162569235}
!153 = !{i64 2162569417}
!154 = distinct !{!154, !38}
end_hunk_1
