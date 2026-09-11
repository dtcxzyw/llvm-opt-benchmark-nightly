Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tg3?download=true
inline.NumInlined: 2274
inline.NumDeleted: 364
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 70
begin_hunk_0_@tg3_setup_phy:bb.a
  %.051 = phi i32 [ %i.axn, %bb.kl ], [ 9728, %bb.kk ]
  %i.axo = getelementptr i8, ptr %0, i64 5480
  %i.axp = load i32, ptr %i.axo, align 8
  %i.axq = icmp eq i32 %i.axp, 1000
  br i1 %i.axq, label %bb.kn, label %bb.ko

bb.kn:                                            ; preds = %bb.km
  %i.axr = getelementptr i8, ptr %0, i64 5476
  %i.axs = load i8, ptr %i.axr, align 4
  %i.axt = icmp eq i8 %i.axs, 0
  br i1 %i.axt, label %_tg3_flag.exit, label %bb.ko

bb.ko:                                            ; preds = %bb.kn, %bb.km
  br label %_tg3_flag.exit

_tg3_flag.exit:                                   ; preds = %bb.kn, %bb.ko
  %.sink182 = phi i32 [ 32, %bb.ko ], [ 255, %bb.kn ]
  %i.axu = getelementptr i8, ptr %0, i64 24
  %i.axv = load ptr, ptr %i.axu, align 8
  %i.axw = or i32 %.051, %.sink182
  call void %i.axv(ptr noundef %0, i32 noundef 1124, i32 noundef %i.axw) #27
  %i.axx = getelementptr i8, ptr %0, i64 5384
  %i.axy = getelementptr i8, ptr %0, i64 5392
  %i.axz = load volatile i64, ptr %i.axy, align 8
  %i.aya = and i64 %i.axz, 128
  %.not55 = icmp eq i64 %i.aya, 0
  br i1 %.not55, label %bb.kp, label %_tg3_flag.exit122

bb.kp:                                            ; preds = %_tg3_flag.exit
  %i.ayb = getelementptr i8, ptr %0, i64 6104
  %i.ayc = load i8, ptr %i.ayb, align 8, !range !46, !noundef !47
  %i.ayd = trunc nuw i8 %i.ayc to i1
  %i.aye = getelementptr i8, ptr %0, i64 24
  %i.ayf = load ptr, ptr %i.aye, align 8
  br i1 %i.ayd, label %bb.kq, label %.sink.split

bb.kq:                                            ; preds = %bb.kp
  %i.ayg = getelementptr i8, ptr %0, i64 5956
  %i.ayh = load i32, ptr %i.ayg, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.kp, %bb.kq
  %.sink184 = phi i32 [ %i.ayh, %bb.kq ], [ 0, %bb.kp ]
  call void %i.ayf(ptr noundef %0, i32 noundef 15400, i32 noundef %.sink184) #27
  br label %_tg3_flag.exit122

_tg3_flag.exit122:                                ; preds = %_tg3_flag.exit, %.sink.split
  %i.ayi = load volatile i64, ptr %i.axx, align 8
  %i.ayj = and i64 %i.ayi, 32
  %.not56 = icmp eq i64 %i.ayj, 0
  br i1 %.not56, label %bb.kv, label %bb.kr

bb.kr:                                            ; preds = %_tg3_flag.exit122
  %i.ayk = getelementptr i8, ptr %0, i64 16
  %i.ayl = load ptr, ptr %i.ayk, align 16
  %i.aym = call i32 %i.ayl(ptr noundef %0, i32 noundef 32040) #27 ; 2 uses
  %i.ayn = getelementptr i8, ptr %0, i64 6104
  %i.ayo = load i8, ptr %i.ayn, align 8, !range !46, !noundef !47
  %i.ayp = trunc nuw i8 %i.ayo to i1
  br i1 %i.ayp, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.ayq = and i32 %i.aym, -65281
  %i.ayr = getelementptr i8, ptr %0, i64 5556
  %i.ays = load i32, ptr %i.ayr, align 4
  %i.ayt = or i32 %i.ays, %i.ayq
  br label %bb.ku

bb.kt:                                            ; preds = %bb.kr
  %i.ayu = or i32 %i.aym, 65280
  br label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %bb.ks
  %.1 = phi i32 [ %i.ayu, %bb.kt ], [ %i.ayt, %bb.ks ]
  %i.ayv = getelementptr i8, ptr %0, i64 24
  %i.ayw = load ptr, ptr %i.ayv, align 8
  call void %i.ayw(ptr noundef %0, i32 noundef 32040, i32 noundef %.1) #27
  br label %bb.kv

bb.kv:                                            ; preds = %bb.ku, %_tg3_flag.exit122
  ret i32 %.050
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @__tg3_set_rx_mode(ptr noundef %0) unnamed_addr #2 align 16 prefalign(16) {
_tg3_flag.exit:
  %i.a = alloca [4 x i32], align 16               ; 8 uses
  %i.b = getelementptr i8, ptr %0, i64 2624       ; 16 uses
  %i.c = getelementptr i8, ptr %0, i64 8144       ; 3 uses
  %i.d = load i32, ptr %i.c, align 16
  %i.e = and i32 %i.d, -1281                      ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 8008       ; 5 uses
  %i.g = load volatile i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 16
  %.not = icmp eq i64 %i.h, 0
  %i.i = or disjoint i32 %i.e, 1024
  %spec.select = select i1 %.not, i32 %i.i, i32 %i.e ; 4 uses
  %i.j = getelementptr i8, ptr %0, i64 176        ; 2 uses
  %i.k = load i32, ptr %i.j, align 16             ; 2 uses
  %i.l = and i32 %i.k, 256
  %.not57 = icmp eq i32 %i.l, 0
  br i1 %.not57, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_tg3_flag.exit
  %i.m = or disjoint i32 %spec.select, 256
  br label %_tg3_flag.exit67

bb.b:                                             ; preds = %_tg3_flag.exit
  %i.n = and i32 %i.k, 512
  %.not58 = icmp eq i32 %i.n, 0
  br i1 %.not58, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %0, i64 2648       ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef %i.b, i32 noundef 1136, i32 noundef -1) #27, !inline_history !303
  %i.q = load ptr, ptr %i.o, align 8
  tail call void %i.q(ptr noundef %i.b, i32 noundef 1140, i32 noundef -1) #27, !inline_history !303
  %i.r = load ptr, ptr %i.o, align 8
  tail call void %i.r(ptr noundef %i.b, i32 noundef 1144, i32 noundef -1) #27, !inline_history !303
  %i.s = load ptr, ptr %i.o, align 8
  tail call void %i.s(ptr noundef %i.b, i32 noundef 1148, i32 noundef -1) #27, !inline_history !303
  br label %_tg3_flag.exit67

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %0, i64 864        ; 3 uses
  %i.u = getelementptr i8, ptr %0, i64 880
  %i.v = load i32, ptr %i.u, align 16
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr i8, ptr %0, i64 2648       ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef %i.b, i32 noundef 1136, i32 noundef 0) #27, !inline_history !303
  %i.z = load ptr, ptr %i.x, align 8
  tail call void %i.z(ptr noundef %i.b, i32 noundef 1140, i32 noundef 0) #27, !inline_history !303
  %i.aa = load ptr, ptr %i.x, align 8
  tail call void %i.aa(ptr noundef %i.b, i32 noundef 1144, i32 noundef 0) #27, !inline_history !303
  %i.ab = load ptr, ptr %i.x, align 8
  tail call void %i.ab(ptr noundef %i.b, i32 noundef 1148, i32 noundef 0) #27, !inline_history !303
  br label %_tg3_flag.exit67

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %.05473 = load ptr, ptr %i.t, align 16          ; 2 uses
  %.not7174 = icmp eq ptr %.05473, %i.t
  br i1 %.not7174, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.05475 = phi ptr [ %.054, %.lr.ph ], [ %.05473, %bb.f ] ; 2 uses
  %i.ac = getelementptr i8, ptr %.05475, i64 40
  %i.ad = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %i.ac, i64 noundef range(i64 6, 137) 6) #27 ; 2 uses
  %i.ae = lshr i32 %i.ad, 5
  %i.af = and i32 %i.ae, 3
  %i.ag = and i32 %i.ad, 31
  %i.ah = shl nuw i32 1, %i.ag
  %i.ai = zext nneg i32 %i.af to i64
  %i.aj = getelementptr [4 x i8], ptr %i.a, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = or i32 %i.ah, %i.ak
  store i32 %i.al, ptr %i.aj, align 4
  %.054 = load ptr, ptr %.05475, align 8          ; 2 uses
  %.not71 = icmp eq ptr %.054, %i.t
  br i1 %.not71, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !304

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.a, align 16
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre81 = load i32, ptr %.phi.trans.insert, align 4
  %.phi.trans.insert82 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre83 = load i32, ptr %.phi.trans.insert82, align 8
  %.phi.trans.insert84 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.pre85 = load i32, ptr %.phi.trans.insert84, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %i.am = phi i32 [ %.pre85, %._crit_edge.loopexit ], [ 0, %bb.f ]
  %i.an = phi i32 [ %.pre83, %._crit_edge.loopexit ], [ 0, %bb.f ]
  %i.ao = phi i32 [ %.pre81, %._crit_edge.loopexit ], [ 0, %bb.f ]
  %i.ap = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.f ]
  %i.aq = getelementptr i8, ptr %0, i64 2648      ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef %i.b, i32 noundef 1136, i32 noundef %i.ap) #27
  %i.as = load ptr, ptr %i.aq, align 8
  tail call void %i.as(ptr noundef %i.b, i32 noundef 1140, i32 noundef %i.ao) #27
  %i.at = load ptr, ptr %i.aq, align 8
  tail call void %i.at(ptr noundef %i.b, i32 noundef 1144, i32 noundef %i.an) #27
  %i.au = load ptr, ptr %i.aq, align 8
  tail call void %i.au(ptr noundef %i.b, i32 noundef 1148, i32 noundef %i.am) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_tg3_flag.exit67

_tg3_flag.exit67:                                 ; preds = %bb.c, %._crit_edge, %bb.e, %bb.a
  %.1 = phi i32 [ %i.m, %bb.a ], [ %spec.select, %bb.c ], [ %spec.select, %bb.e ], [ %spec.select, %._crit_edge ] ; 4 uses
  %i.av = getelementptr i8, ptr %0, i64 832       ; 3 uses
  %i.aw = getelementptr i8, ptr %0, i64 848
  %i.ax = load i32, ptr %i.aw, align 16
  %i.ay = load volatile i64, ptr %i.f, align 8
  %1 = trunc i64 %i.ay to i32
  %2 = lshr i32 %1, 4
  %3 = and i32 %2, 1
  %4 = xor i32 %3, 3
  %i.az = icmp sgt i32 %i.ax, %4
  br i1 %i.az, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_tg3_flag.exit67
  %i.ba = or i32 %.1, 256
  br label %.loopexit

bb.h:                                             ; preds = %_tg3_flag.exit67
  %i.bb = load i32, ptr %i.j, align 16
  %i.bc = and i32 %i.bb, 256
  %.not61 = icmp eq i32 %i.bc, 0
  br i1 %.not61, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.h
  %.05576 = load ptr, ptr %i.av, align 16         ; 2 uses
  %.not7277 = icmp eq ptr %.05576, %i.av
  br i1 %.not7277, label %.loopexit, label %.lr.ph80

.lr.ph80:                                         ; preds = %.preheader
  %i.bd = getelementptr i8, ptr %0, i64 2648      ; 2 uses
  br label %_tg3_flag.exit70

_tg3_flag.exit70:                                 ; preds = %.lr.ph80, %_tg3_flag.exit70
  %.05579 = phi ptr [ %.05576, %.lr.ph80 ], [ %.055, %_tg3_flag.exit70 ] ; 7 uses
  %.05678 = phi i32 [ 0, %.lr.ph80 ], [ %8, %_tg3_flag.exit70 ]
  %i.be = getelementptr i8, ptr %.05579, i64 40
  %i.bf = load volatile i64, ptr %i.f, align 8
  %5 = trunc i64 %i.bf to i32
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  %8 = add i32 %.05678, 1                         ; 2 uses
  %i.bg = add i32 %8, %7                          ; 2 uses
  %i.bh = load i8, ptr %i.be, align 1
  %i.bi = zext i8 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 8
  %i.bk = getelementptr i8, ptr %.05579, i64 41
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i32
  %i.bn = or disjoint i32 %i.bj, %i.bm
  %i.bo = getelementptr i8, ptr %.05579, i64 42
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl nuw i32 %i.bq, 24
  %i.bs = getelementptr i8, ptr %.05579, i64 43
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext i8 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 16
  %i.bw = or disjoint i32 %i.bv, %i.br
  %i.bx = getelementptr i8, ptr %.05579, i64 44
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = zext i8 %i.by to i32
  %i.ca = shl nuw nsw i32 %i.bz, 8
  %i.cb = or disjoint i32 %i.bw, %i.ca
  %i.cc = getelementptr i8, ptr %.05579, i64 45
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = zext i8 %i.cd to i32
  %i.cf = or disjoint i32 %i.cb, %i.ce
  %i.cg = icmp slt i32 %i.bg, 4                   ; 2 uses
  %i.ch = load ptr, ptr %i.bd, align 8
  %i.ci = shl i32 %i.bg, 3                        ; 2 uses
  %..i = select i1 %i.cg, i32 1040, i32 1296
  %.26.i = select i1 %i.cg, i32 1044, i32 1300
  %i.cj = add i32 %..i, %i.ci
  tail call void %i.ch(ptr noundef %i.b, i32 noundef %i.cj, i32 noundef %i.bn) #27, !inline_history !19
  %i.ck = load ptr, ptr %i.bd, align 8
  %i.cl = add i32 %.26.i, %i.ci
  tail call void %i.ck(ptr noundef %i.b, i32 noundef %i.cl, i32 noundef %i.cf) #27, !inline_history !19
  %.055 = load ptr, ptr %.05579, align 8          ; 2 uses
  %.not72 = icmp eq ptr %.055, %i.av
  br i1 %.not72, label %.loopexit, label %_tg3_flag.exit70, !llvm.loop !305

.loopexit:                                        ; preds = %_tg3_flag.exit70, %.preheader, %bb.h, %bb.g
  %.2 = phi i32 [ %i.ba, %bb.g ], [ %.1, %bb.h ], [ %.1, %.preheader ], [ %.1, %_tg3_flag.exit70 ] ; 4 uses
  %i.cm = load i32, ptr %i.c, align 16
  %.not64 = icmp eq i32 %.2, %i.cm
  br i1 %.not64, label %bb.k, label %_tg3_flag.exit.i

_tg3_flag.exit.i:                                 ; preds = %.loopexit
  store i32 %.2, ptr %i.c, align 16
  %i.cn = load volatile i64, ptr %i.f, align 8
  %i.co = and i64 %i.cn, 512
  %.not.i = icmp eq i64 %i.co, 0
  br i1 %.not.i, label %_tg3_flag.exit21.i, label %bb.i

_tg3_flag.exit21.i:                               ; preds = %_tg3_flag.exit.i
  %i.cp = load volatile i64, ptr %i.f, align 8
  %i.cq = and i64 %i.cp, 35184372088832
  %.not15.i = icmp eq i64 %i.cq, 0
  br i1 %.not15.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_tg3_flag.exit21.i, %_tg3_flag.exit.i
  %i.cr = getelementptr i8, ptr %0, i64 2648
  %i.cs = load ptr, ptr %i.cr, align 8
  tail call void %i.cs(ptr noundef %i.b, i32 noundef 1128, i32 noundef %.2) #27, !inline_history !63
  br label %_tw32_flush.exit

bb.j:                                             ; preds = %_tg3_flag.exit21.i
  %i.ct = getelementptr i8, ptr %0, i64 2672
  %i.cu = load ptr, ptr %i.ct, align 16
  %i.cv = getelementptr i8, ptr %i.cu, i64 1128
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.2, ptr elementtype(i32) %i.cv) #28, !srcloc !56
  %i.cw = getelementptr i8, ptr %0, i64 2640
  %i.cx = load ptr, ptr %i.cw, align 16
  %i.cy = tail call i32 %i.cx(ptr noundef %i.b, i32 noundef 1128) #27, !inline_history !63 ; 0 uses
  br label %_tw32_flush.exit

_tw32_flush.exit:                                 ; preds = %bb.i, %bb.j
  tail call void @__const_udelay(i64 noundef 42950) #27
  br label %bb.k

bb.k:                                             ; preds = %_tw32_flush.exit, %.loopexit
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @tw32_mailbox_flush(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, -16777215) %2) unnamed_addr #7 align 16 prefalign(16) {
_tg3_flag.exit:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  tail call void %i.b(ptr noundef %0, i32 noundef %1, i32 noundef %2) #27
  %i.c = getelementptr i8, ptr %0, i64 5384       ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 5392
  %i.e = load volatile i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 65536
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %_tg3_flag.exit13, label %bb.a

_tg3_flag.exit13:                                 ; preds = %_tg3_flag.exit
  %i.g = load volatile i64, ptr %i.c, align 8
  %i.h = and i64 %i.g, 256
  %.not9 = icmp eq i64 %i.h, 0
  br i1 %.not9, label %_tg3_flag.exit16, label %bb.b

_tg3_flag.exit16:                                 ; preds = %_tg3_flag.exit13
  %i.i = load volatile i64, ptr %i.c, align 8
  %i.j = and i64 %i.i, 35184372088832
  %.not10 = icmp eq i64 %i.j, 0
  br i1 %.not10, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_tg3_flag.exit16, %_tg3_flag.exit
  %i.k = getelementptr i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 32
  %i.m = tail call i32 %i.l(ptr noundef %0, i32 noundef %1) #27 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_tg3_flag.exit16, %_tg3_flag.exit13
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @tg3_wait_for_event_ack(ptr noundef %0) unnamed_addr #2 align 16 prefalign(16) {
usecs_to_jiffies.exit:
  %i.a = getelementptr i8, ptr %0, i64 5400
  %i.b = load i64, ptr %i.a, align 8
  %i.c = add i64 %i.b, 4
  %i.d = load volatile i64, ptr @jiffies, align 64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %.loopexit, label %bb.a

bb.a:                                             ; preds = %usecs_to_jiffies.exit
  %i.g = trunc i64 %i.e to i32
  %i.h = mul i32 %i.g, 1000
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.h, i32 2500)
  %i.i = lshr i32 %spec.store.select, 3
  %i.j = getelementptr i8, ptr %0, i64 16
  %i.k = getelementptr i8, ptr %0, i64 72
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.014 = phi i32 [ 0, %bb.a ], [ %i.q, %bb.d ]   ; 2 uses
  %i.l = load ptr, ptr %i.j, align 16
  %i.m = tail call i32 %i.l(ptr noundef %0, i32 noundef 26640) #27
  %i.n = and i32 %i.m, 16384
  %.not11 = icmp eq i32 %i.n, 0
  br i1 %.not11, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.k, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 196
  %.val = load i32, ptr %i.p, align 4
  %.not13 = icmp eq i32 %.val, 1
  br i1 %.not13, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  tail call void @__const_udelay(i64 noundef 34360) #27
  %i.q = add nuw nsw i32 %.014, 1
  %exitcond.not = icmp eq i32 %.014, %i.i
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !15

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.c, %usecs_to_jiffies.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @tg3_generate_fw_event(ptr noundef %0) unnamed_addr #7 align 16 prefalign(16) {
_tg3_flag.exit.i:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16
  %i.c = tail call i32 %i.b(ptr noundef %0, i32 noundef 26640) #27
  %i.d = or i32 %i.c, 16384                       ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 5384       ; 2 uses
  %i.f = load volatile i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 512
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_tg3_flag.exit21.i, label %bb.a

_tg3_flag.exit21.i:                               ; preds = %_tg3_flag.exit.i
  %i.h = load volatile i64, ptr %i.e, align 8
  %i.i = and i64 %i.h, 35184372088832
  %.not15.i = icmp eq i64 %i.i, 0
  br i1 %.not15.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_tg3_flag.exit21.i, %_tg3_flag.exit.i
  %i.j = getelementptr i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef %0, i32 noundef 26640, i32 noundef %i.d) #27, !inline_history !63
  br label %_tw32_flush.exit

bb.b:                                             ; preds = %_tg3_flag.exit21.i
  %i.l = getelementptr i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 16
  %i.n = getelementptr i8, ptr %i.m, i64 26640
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.d, ptr elementtype(i32) %i.n) #28, !srcloc !56
  %i.o = load ptr, ptr %i.a, align 16
  %i.p = tail call i32 %i.o(ptr noundef %0, i32 noundef 26640) #27, !inline_history !63 ; 0 uses
  br label %_tw32_flush.exit

_tw32_flush.exit:                                 ; preds = %bb.a, %bb.b
  %i.q = load volatile i64, ptr @jiffies, align 64
  %i.r = getelementptr i8, ptr %0, i64 5400
  store i64 %i.q, ptr %i.r, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -19, 1) i32 @tg3_stop_block(ptr noundef %0, i64 noundef range(i64 3072, 25601) %1, i1 noundef zeroext %2) unnamed_addr #2 align 16 {
_tg3_flag.exit:
  %i.a = getelementptr i8, ptr %0, i64 5384       ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 5392
  %i.c = load volatile i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 128
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_tg3_flag.exit.i, label %bb.a

bb.a:                                             ; preds = %_tg3_flag.exit
  %i.e = add nsw i64 %1, -13312                   ; 2 uses
  %i.f = tail call i64 @llvm.fshl.i64(i64 %i.e, i64 %i.e, i64 54) ; 2 uses
  %i.g = icmp ult i64 %i.f, 13
  %switch.maskindex = trunc i64 %i.f to i16
  %switch.shifted = lshr i16 4123, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.g, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %.thread, label %_tg3_flag.exit.i

_tg3_flag.exit.i:                                 ; preds = %bb.a, %_tg3_flag.exit
  %i.h = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.i = load ptr, ptr %i.h, align 16
  %i.j = trunc nuw nsw i64 %1 to i32              ; 4 uses
  %i.k = tail call i32 %i.i(ptr noundef %0, i32 noundef %i.j) #27
  %i.l = and i32 %i.k, -3                         ; 2 uses
  %i.m = load volatile i64, ptr %i.a, align 8
  %i.n = and i64 %i.m, 512
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_tg3_flag.exit21.i, label %bb.b

_tg3_flag.exit21.i:                               ; preds = %_tg3_flag.exit.i
end_hunk_0
