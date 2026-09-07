Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/objpool?download=true
inline.NumInlined: 32
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_objpool_init: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad objpool_init ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_objpool_free: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad objpool_free ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_objpool_drop: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad objpool_drop ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_objpool_fini: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad objpool_fini ; .previous"

%struct.cpumask = type { [1 x i64] }

@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__UNIQUE_ID_addressable_objpool_init_222 = internal global ptr @objpool_init, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_objpool_free_223 = internal global ptr @objpool_free, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_objpool_drop_224 = internal global ptr @objpool_drop, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_objpool_fini_225 = internal global ptr @objpool_fini, section ".discard.addressable", align 8
@__num_possible_cpus = external dso_local local_unnamed_addr global i32, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@numa_node = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [64 x i64], align 16
@cpu_number = external dso_local global i32, section ".data..percpu..hot..cpu_number", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_addressable_objpool_drop_224, ptr @__UNIQUE_ID_addressable_objpool_fini_225, ptr @__UNIQUE_ID_addressable_objpool_free_223, ptr @__UNIQUE_ID_addressable_objpool_init_222], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @objpool_init(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr noundef %6) #0 align 16 prefalign(16) {
bb.a:
  %i.a = add i32 %1, -16777217
  %or.cond = icmp ult i32 %i.a, -16777216
  %i.b = add i32 %2, -65537
  %i.c = icmp ult i32 %i.b, -65536
  %or.cond7 = or i1 %or.cond, %i.c
  br i1 %or.cond7, label %objpool_fini_percpu_slots.exit, label %__roundup_pow_of_two.exit

__roundup_pow_of_two.exit:                        ; preds = %bb.a
  %i.d = zext nneg i32 %1 to i64
  %i.e = add nsw i64 %i.d, -1
  %i.f = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 16777216) %i.e, i32 -1) #7, !srcloc !19
  %i.g = add i32 %i.f, 1                          ; 2 uses
  %.not = icmp ugt i32 %i.g, 31
  br i1 %.not, label %objpool_fini_percpu_slots.exit, label %.thread

.thread:                                          ; preds = %__roundup_pow_of_two.exit
  %i.h = add nuw nsw i32 %2, 7
  %i.i = and i32 %i.h, 262136
  %.pn = zext nneg i32 %i.g to i64
  %i.j = shl nuw nsw i64 1, %.pn
  %i.k = trunc nuw i64 %i.j to i32
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  %i.l = load i32, ptr @__num_possible_cpus, align 4
  %i.m = getelementptr i8, ptr %0, i64 8          ; 2 uses
  store i32 %i.l, ptr %i.m, align 8
  store i32 %i.i, ptr %0, align 8
  %i.n = getelementptr i8, ptr %0, i64 12         ; 3 uses
  store i32 %i.k, ptr %i.n, align 4
  %i.o = and i32 %3, -257
  %i.p = getelementptr i8, ptr %0, i64 16         ; 3 uses
  store i32 %i.o, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %0, i64 48
  store ptr %4, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %0, i64 40
  store ptr %6, ptr %i.r, align 8
  %i.s = or i32 %3, 256
  %i.t = load i32, ptr @nr_cpu_ids, align 4
  %i.u = shl i32 %i.t, 3
  %i.v = sext i32 %i.u to i64
  %i.w = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -2147483648, 2147483648) %i.v, i32 noundef range(i32 256, 0) %i.s) #8 ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 32         ; 5 uses
  store ptr %i.w, ptr %i.x, align 8
  %.not56 = icmp eq ptr %i.w, null
  br i1 %.not56, label %objpool_fini_percpu_slots.exit, label %bb.b

bb.b:                                             ; preds = %.thread
  %i.y = load i32, ptr @nr_cpu_ids, align 4
  %.not80.i = icmp eq i32 %i.y, 0
  br i1 %.not80.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.not.i.i = icmp eq ptr %5, null
  %i.z = getelementptr i8, ptr %0, i64 4          ; 6 uses
  br label %arch_test_bit.exit.i

arch_test_bit.exit.i:                             ; preds = %.lr.ph.i, %select.unfold.i
  %.04778.i = phi i32 [ 0, %.lr.ph.i ], [ %i.dm, %select.unfold.i ] ; 3 uses
  %.04977.i = phi i32 [ 0, %.lr.ph.i ], [ %.150.ph.i, %select.unfold.i ] ; 3 uses
  %i.aa = zext i32 %.04778.i to i64
  %i.ab = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_possible_mask, i64 range(i64 0, 4294967296) %i.aa) #9, !srcloc !20 ; 2 uses
  %i.ac = icmp ult i8 %i.ab, 2
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = trunc nuw i8 %i.ab to i1
  br i1 %i.ad, label %bb.c, label %select.unfold.i

bb.c:                                             ; preds = %arch_test_bit.exit.i
  %i.ae = load i32, ptr %i.m, align 8             ; 2 uses
  %i.af = sdiv i32 %1, %i.ae
  %i.ag = srem i32 %1, %i.ae
  %i.ah = icmp slt i32 %.04977.i, %i.ag
  %i.ai = zext i1 %i.ah to i32
  %spec.select.i = add i32 %i.af, %i.ai           ; 7 uses
  %i.aj = add i32 %.04977.i, 1                    ; 4 uses
  %i.ak = load i32, ptr %i.n, align 4             ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i32 %i.ak, 0
  %i.an = shl nsw i64 %i.al, 3
  %i.ao = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 range(i64 -17179869184, 17179869177) %i.an, i64 16) ; 2 uses
  %i.ap = extractvalue { i64, i1 } %i.ao, 1
  %i.aq = select i1 %i.am, i1 true, i1 %i.ap
  %i.ar = extractvalue { i64, i1 } %i.ao, 0
  %i.as = load i32, ptr %0, align 8
  %i.at = mul i32 %spec.select.i, %i.as
  %i.au = trunc i64 %i.ar to i32
  %i.av = select i1 %i.aq, i32 -1, i32 %i.au
  %i.aw = add i32 %i.av, %i.at
  %i.ax = load i32, ptr %i.p, align 8             ; 3 uses
  %i.ay = and i32 %i.ax, 3296
  %.not.i = icmp eq i32 %i.ay, 2080
  %.pre86.i = sext i32 %i.aw to i64               ; 3 uses
  %.pre88.i = sext i32 %.04778.i to i64           ; 3 uses
  br i1 %.not.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %.pre88.i
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = add i64 %i.ba, ptrtoint (ptr @numa_node to i64)
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.bf = tail call noalias ptr @__vmalloc_node_noprof(i64 noundef %.pre86.i, i64 noundef 8, i32 noundef %i.ax, i32 noundef %i.bd, ptr noundef %i.be) #8 ; 2 uses
  %.not57.i = icmp eq ptr %i.bf, null
  br i1 %.not57.i, label %..thread_crit_edge.i, label %bb.e

..thread_crit_edge.i:                             ; preds = %bb.d
  %.pre.i = load i32, ptr %i.p, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %bb.c, %..thread_crit_edge.i
  %i.bg = phi i32 [ %.pre.i, %..thread_crit_edge.i ], [ %i.ax, %bb.c ]
  %i.bh = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %.pre88.i
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = add i64 %i.bi, ptrtoint (ptr @numa_node to i64)
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = tail call noalias align 8 ptr @__kmalloc_node_noprof(i64 noundef range(i64 -2147483648, 2147483648) %.pre86.i, i32 noundef %i.bg, i32 noundef %i.bl) #8 ; 2 uses
  %.not58.i = icmp eq ptr %i.bm, null
  br i1 %.not58.i, label %objpool_init_percpu_slots.exit, label %bb.e

bb.e:                                             ; preds = %.thread.i, %bb.d
  %.152.i = phi ptr [ %i.bm, %.thread.i ], [ %i.bf, %bb.d ] ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.152.i, i8 0, i64 %.pre86.i, i1 false)
  %i.bn = load ptr, ptr %i.x, align 8
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.pre88.i
  store ptr %.152.i, ptr %i.bo, align 8
  %i.bp = getelementptr i8, ptr %.152.i, i64 16   ; 5 uses
  %i.bq = load i32, ptr %i.n, align 4             ; 2 uses
  %i.br = add i32 %i.bq, -1
  %i.bs = getelementptr i8, ptr %.152.i, i64 12   ; 4 uses
  store i32 %i.br, ptr %i.bs, align 1
  %i.bt = icmp sgt i32 %spec.select.i, 0
  br i1 %i.bt, label %.lr.ph.i.i, label %select.unfold.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.bu = sext i32 %i.bq to i64
  %i.bv = getelementptr [8 x i8], ptr %i.bp, i64 %i.bu ; 3 uses
  %i.bw = getelementptr i8, ptr %.152.i, i64 4    ; 6 uses
  %i.bx = getelementptr i8, ptr %.152.i, i64 8    ; 3 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i.preheader, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i.preheader:                    ; preds = %.lr.ph.i.i
  %xtraiter = and i32 %spec.select.i, 1
  %i.by = icmp eq i32 %spec.select.i, 1
  br i1 %i.by, label %.lr.ph.split.us.i.i.epil.preheader, label %.lr.ph.split.us.i.i.preheader.new

.lr.ph.split.us.i.i.preheader.new:                ; preds = %.lr.ph.split.us.i.i.preheader
  %unroll_iter = and i32 %spec.select.i, 2147483646
  %i.bz = load i32, ptr %0, align 8               ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = sext i32 %i.bz to i64
  %.promoted = load i32, ptr %i.bw, align 1
  %.promoted100 = load i32, ptr %i.z, align 4
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i, %.lr.ph.split.us.i.i.preheader.new
  %i.cc = phi i32 [ %.promoted100, %.lr.ph.split.us.i.i.preheader.new ], [ %i.cq, %.lr.ph.split.us.i.i ]
  %i.cd = phi i32 [ %.promoted, %.lr.ph.split.us.i.i.preheader.new ], [ %i.cp, %.lr.ph.split.us.i.i ] ; 3 uses
  %.02530.us.i.i = phi ptr [ %i.bv, %.lr.ph.split.us.i.i.preheader.new ], [ %i.co, %.lr.ph.split.us.i.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.split.us.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.split.us.i.i ]
  %i.ce = load i32, ptr %i.bs, align 1            ; 2 uses
  %i.cf = and i32 %i.ce, %i.cd
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr [8 x i8], ptr %i.bp, i64 %i.cg
  store ptr %.02530.us.i.i, ptr %i.ch, align 1
  %i.ci = getelementptr i8, ptr %.02530.us.i.i, i64 %i.ca ; 2 uses
  %i.cj = add i32 %i.cd, 1
  %i.ck = add i32 %i.cc, 1
  %i.cl = and i32 %i.ce, %i.cj
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr [8 x i8], ptr %i.bp, i64 %i.cm
  store ptr %i.ci, ptr %i.cn, align 1
  %i.co = getelementptr i8, ptr %i.ci, i64 %i.cb  ; 2 uses
  %i.cp = add i32 %i.cd, 2                        ; 3 uses
  %i.cq = add i32 %i.ck, 1                        ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %select.unfold.i.loopexit.unr-lcssa, label %.lr.ph.split.us.i.i, !llvm.loop !16

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.f
  %.02431.i.i = phi i32 [ %i.dd, %bb.f ], [ 0, %.lr.ph.i.i ]
  %.02530.i.i = phi ptr [ %i.cz, %bb.f ], [ %i.bv, %.lr.ph.i.i ] ; 3 uses
  %i.cr = tail call i32 %5(ptr noundef %.02530.i.i, ptr noundef %4) #10, !inline_history !17 ; 2 uses
  %.not29.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not29.i.i, label %bb.f, label %objpool_init_percpu_slots.exit

bb.f:                                             ; preds = %.lr.ph.split.i.i
  %i.cs = load i32, ptr %i.bw, align 1            ; 2 uses
  %i.ct = load i32, ptr %i.bs, align 1
  %i.cu = and i32 %i.ct, %i.cs
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr [8 x i8], ptr %i.bp, i64 %i.cv
  store ptr %.02530.i.i, ptr %i.cw, align 1
  %i.cx = load i32, ptr %0, align 8
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr i8, ptr %.02530.i.i, i64 %i.cy
  %i.da = add i32 %i.cs, 1                        ; 2 uses
  store i32 %i.da, ptr %i.bw, align 1
  store i32 %i.da, ptr %i.bx, align 1
  %i.db = load i32, ptr %i.z, align 4
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr %i.z, align 4
  %i.dd = add nuw nsw i32 %.02431.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.dd, %spec.select.i
  br i1 %exitcond.not.i.i, label %select.unfold.i, label %.lr.ph.split.i.i, !llvm.loop !16

select.unfold.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.split.us.i.i
  store i32 %i.cp, ptr %i.bw, align 1
  store i32 %i.cp, ptr %i.bx, align 1
  store i32 %i.cq, ptr %i.z, align 4
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %select.unfold.i, label %.lr.ph.split.us.i.i.epil.preheader

.lr.ph.split.us.i.i.epil.preheader:               ; preds = %select.unfold.i.loopexit.unr-lcssa, %.lr.ph.split.us.i.i.preheader
  %.02530.us.i.i.epil.init = phi ptr [ %i.bv, %.lr.ph.split.us.i.i.preheader ], [ %i.co, %select.unfold.i.loopexit.unr-lcssa ]
  %lcmp.mod95 = trunc i32 %spec.select.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod95)
  %i.de = load i32, ptr %i.bw, align 1            ; 2 uses
  %i.df = load i32, ptr %i.bs, align 1
  %i.dg = and i32 %i.df, %i.de
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr [8 x i8], ptr %i.bp, i64 %i.dh
  store ptr %.02530.us.i.i.epil.init, ptr %i.di, align 1
  %i.dj = add i32 %i.de, 1                        ; 2 uses
  store i32 %i.dj, ptr %i.bw, align 1
  store i32 %i.dj, ptr %i.bx, align 1
  %i.dk = load i32, ptr %i.z, align 4
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %i.z, align 4
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.f, %.lr.ph.split.us.i.i.epil.preheader, %select.unfold.i.loopexit.unr-lcssa, %bb.e, %arch_test_bit.exit.i
  %.150.ph.i = phi i32 [ %.04977.i, %arch_test_bit.exit.i ], [ %i.aj, %.lr.ph.split.us.i.i.epil.preheader ], [ %i.aj, %bb.e ], [ %i.aj, %select.unfold.i.loopexit.unr-lcssa ], [ %i.aj, %bb.f ]
  %i.dm = add nuw i32 %.04778.i, 1                ; 2 uses
  %i.dn = load i32, ptr @nr_cpu_ids, align 4
  %i.do = icmp ult i32 %i.dm, %i.dn
  br i1 %i.do, label %arch_test_bit.exit.i, label %.loopexit, !llvm.loop !18

objpool_init_percpu_slots.exit:                   ; preds = %.thread.i, %.lr.ph.split.i.i
  %.2.i = phi i32 [ %i.cr, %.lr.ph.split.i.i ], [ -12, %.thread.i ] ; 2 uses
  %i.dp = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not.i61 = icmp eq ptr %i.dp, null
  br i1 %.not.i61, label %objpool_fini_percpu_slots.exit, label %.preheader.i

.preheader.i:                                     ; preds = %objpool_init_percpu_slots.exit
  %i.dq = load i32, ptr @nr_cpu_ids, align 4
  %.not6.i = icmp eq i32 %i.dq, 0
  br i1 %.not6.i, label %._crit_edge.i, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %.preheader.i, %.lr.ph.i62
  %.05.i = phi i32 [ %i.dv, %.lr.ph.i62 ], [ 0, %.preheader.i ] ; 2 uses
  %i.dr = load ptr, ptr %i.x, align 8
  %i.ds = sext i32 %.05.i to i64
  %i.dt = getelementptr [8 x i8], ptr %i.dr, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8
  tail call void @kvfree(ptr noundef %i.du) #10
  %i.dv = add nuw i32 %.05.i, 1                   ; 2 uses
  %i.dw = load i32, ptr @nr_cpu_ids, align 4
  %i.dx = icmp ult i32 %i.dv, %i.dw
  br i1 %i.dx, label %.lr.ph.i62, label %._crit_edge.loopexit.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i62
  %.pre.i63 = load ptr, ptr %i.x, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.dy = phi ptr [ %.pre.i63, %._crit_edge.loopexit.i ], [ %i.dp, %.preheader.i ]
  tail call void @kfree(ptr noundef %i.dy) #10
  br label %objpool_fini_percpu_slots.exit

.loopexit:                                        ; preds = %select.unfold.i, %bb.b
  %i.dz = getelementptr i8, ptr %0, i64 20
  %i.ea = getelementptr i8, ptr %0, i64 4
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = add i32 %i.eb, 1
  store volatile i32 %i.ec, ptr %i.dz, align 4
  br label %objpool_fini_percpu_slots.exit

objpool_fini_percpu_slots.exit:                   ; preds = %._crit_edge.i, %objpool_init_percpu_slots.exit, %.loopexit, %.thread, %__roundup_pow_of_two.exit, %bb.a
  %.0 = phi i32 [ -22, %bb.a ], [ -12, %.thread ], [ -22, %__roundup_pow_of_two.exit ], [ 0, %.loopexit ], [ %.2.i, %objpool_init_percpu_slots.exit ], [ %.2.i, %._crit_edge.i ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @objpool_free(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = load i32, ptr @nr_cpu_ids, align 4
  %.not6.i = icmp eq i32 %i.c, 0
  br i1 %.not6.i, label %objpool_fini_percpu_slots.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.05.i = phi i32 [ %i.h, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = sext i32 %.05.i to i64
  %i.f = getelementptr [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @kvfree(ptr noundef %i.g) #10
  %i.h = add nuw i32 %.05.i, 1                    ; 2 uses
  %i.i = load i32, ptr @nr_cpu_ids, align 4
  %i.j = icmp ult i32 %i.h, %i.i
  br i1 %i.j, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.a, align 8
  br label %objpool_fini_percpu_slots.exit

objpool_fini_percpu_slots.exit:                   ; preds = %.preheader.i, %._crit_edge.loopexit.i
  %i.k = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.b, %.preheader.i ]
  tail call void @kfree(ptr noundef %i.k) #10
  %i.l = getelementptr i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not6 = icmp eq ptr %i.m, null
  br i1 %.not6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %objpool_fini_percpu_slots.exit
  %i.n = getelementptr i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call i32 %i.m(ptr noundef %0, ptr noundef %i.o) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b, %objpool_fini_percpu_slots.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @objpool_drop(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %objpool_free.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 20         ; 3 uses
  %i.d = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.c, i32 -1, ptr elementtype(i32) %i.c) #9, !srcloc !12 ; 2 uses
end_hunk_0
