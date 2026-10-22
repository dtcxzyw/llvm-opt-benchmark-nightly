Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/nf_conntrack_proto_tcp?download=true
inline.NumInlined: 103
inline.NumDeleted: 35
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@nf_conntrack_tcp_packet:bb.a
  br i1 %i.sl, label %bb.ec, label %bb.ee

bb.ec:                                            ; preds = %bb.eb
  %i.sm = getelementptr i8, ptr %0, i64 240
  %i.sn = load i16, ptr %i.sm, align 8
  %i.so = icmp eq i16 %i.sn, %i.jt
  br i1 %i.so, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.sp = getelementptr i8, ptr %0, i64 226       ; 2 uses
  %i.sq = load i8, ptr %i.sp, align 2
  %i.sr = add i8 %i.sq, 1
  store i8 %i.sr, ptr %i.sp, align 2
  br label %tcp_in_window.exit.thread

bb.ee:                                            ; preds = %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy
  %i.ss = getelementptr i8, ptr %0, i64 228
  store i32 %.0198.i, ptr %i.ss, align 4
  %i.st = getelementptr i8, ptr %0, i64 232
  store i32 %.0197.i, ptr %i.st, align 8
  %i.su = getelementptr i8, ptr %0, i64 236
  store i32 %.0196.i, ptr %i.su, align 4
  %i.sv = getelementptr i8, ptr %0, i64 240
  store i16 %i.jt, ptr %i.sv, align 8
  %i.sw = getelementptr i8, ptr %0, i64 226
  store i8 0, ptr %i.sw, align 2
  br label %tcp_in_window.exit.thread

tcp_in_window.exit:                               ; preds = %bb.cy, %.critedge.i, %bb.da, %bb.dd, %bb.de
  %.1.i = phi i32 [ %i.ps, %.critedge.i ], [ %i.ql, %bb.de ], [ %i.qf, %bb.dd ], [ %i.px, %bb.da ], [ %i.pr, %bb.cy ]
  switch i32 %.1.i, label %tcp_in_window.exit.thread [
    i32 0, label %bb.ef
    i32 1, label %bb.eg
  ]

bb.ef:                                            ; preds = %tcp_in_window.exit
  call void @_raw_spin_unlock_bh(ptr noundef %i.as) #12
  br label %__skb_header_pointer.exit.thread

bb.eg:                                            ; preds = %tcp_in_window.exit
  call fastcc void @nf_tcp_handle_invalid(ptr noundef %0, i32 noundef %i.ay, i32 noundef %.0.i349, ptr noundef %1, ptr noundef %4) #16, !srcloc !21
  call void @_raw_spin_unlock_bh(ptr noundef %i.as) #12
  br label %__skb_header_pointer.exit.thread

tcp_in_window.exit.thread:                        ; preds = %bb.dx, %bb.ee, %bb.ed, %tcp_init_sender.exit.i, %bb.cq, %tcp_in_window.exit, %bb.bm, %bb.bi, %bb.as
  %.3 = phi i32 [ %.2, %tcp_in_window.exit ], [ 8, %bb.as ], [ %.1303, %bb.bi ], [ %.1303, %bb.bm ], [ %.2, %bb.cq ], [ %.2, %tcp_init_sender.exit.i ], [ %.2, %bb.ed ], [ %.2, %bb.ee ], [ %.2, %bb.dx ] ; 7 uses
  %.1301 = phi i32 [ %.0300, %tcp_in_window.exit ], [ %i.aw, %bb.as ], [ %i.aw, %bb.bi ], [ 1, %bb.bm ], [ %.0300, %bb.cq ], [ %.0300, %tcp_init_sender.exit.i ], [ %.0300, %bb.ed ], [ %.0300, %bb.ee ], [ %.0300, %bb.dx ] ; 3 uses
  %i.sx = trunc nuw nsw i32 %.0.i349 to i8
  %i.sy = getelementptr i8, ptr %0, i64 227
  store i8 %i.sx, ptr %i.sy, align 1
  %i.sz = zext i1 %i.ax to i8
  %i.ta = getelementptr i8, ptr %0, i64 225
  store i8 %i.sz, ptr %i.ta, align 1
  %i.tb = trunc nuw i32 %.3 to i8
  store i8 %i.tb, ptr %i.au, align 8
  %i.tc = icmp eq i32 %.3, 4
  %i.td = icmp ne i32 %.1301, 4
  %or.cond25 = and i1 %i.tc, %i.td
  br i1 %or.cond25, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %tcp_in_window.exit.thread
  %i.te = getelementptr [20 x i8], ptr %i.at, i64 %i.bf
  %i.tf = getelementptr i8, ptr %i.te, i64 17     ; 2 uses
  %i.tg = load i8, ptr %i.tf, align 1
  %i.th = or i8 %i.tg, 4
  store i8 %i.th, ptr %i.tf, align 1
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %tcp_in_window.exit.thread
  %i.ti = getelementptr i8, ptr %0, i64 226
  %i.tj = load i8, ptr %i.ti, align 2
  %i.tk = getelementptr i8, ptr %.val, i64 2966
  %i.tl = load i8, ptr %i.tk, align 2
  %.not335 = icmp ult i8 %i.tj, %i.tl
  br i1 %.not335, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.tm = zext nneg i32 %.3 to i64
  %i.tn = getelementptr [4 x i8], ptr %i.c, i64 %i.tm
  %i.to = load i32, ptr %i.tn, align 4
  %i.tp = getelementptr i8, ptr %.val, i64 2956
  %i.tq = load i32, ptr %i.tp, align 4            ; 2 uses
  %i.tr = icmp ugt i32 %i.to, %i.tq
  br i1 %i.tr, label %._crit_edge, label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.ts = icmp eq i32 %.0.i349, 4
  br i1 %i.ts, label %bb.el, label %bb.em, !prof !11

bb.el:                                            ; preds = %bb.ek
  %i.tt = getelementptr i8, ptr %.val, i64 2940
  %i.tu = load i32, ptr %i.tt, align 4
  br label %._crit_edge

bb.em:                                            ; preds = %bb.ek
  %i.tv = getelementptr i8, ptr %0, i64 201
  %i.tw = load i8, ptr %i.tv, align 1
  %i.tx = getelementptr i8, ptr %0, i64 221
  %i.ty = load i8, ptr %i.tx, align 1
  %i.tz = or i8 %i.ty, %i.tw
  %i.ua = and i8 %i.tz, 16
  %.not336 = icmp eq i8 %i.ua, 0
  br i1 %.not336, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ub = zext nneg i32 %.3 to i64
  %i.uc = getelementptr [4 x i8], ptr %i.c, i64 %i.ub
  %i.ud = load i32, ptr %i.uc, align 4
  %i.ue = getelementptr i8, ptr %.val, i64 2960
  %i.uf = load i32, ptr %i.ue, align 4            ; 2 uses
  %i.ug = icmp ugt i32 %i.ud, %i.uf
  br i1 %i.ug, label %._crit_edge, label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.uh = getelementptr i8, ptr %0, i64 240
  %i.ui = load i16, ptr %i.uh, align 8
  %i.uj = icmp eq i16 %i.ui, 0
  %i.uk = zext nneg i32 %.3 to i64
  %i.ul = getelementptr [4 x i8], ptr %i.c, i64 %i.uk
  %i.um = load i32, ptr %i.ul, align 4            ; 2 uses
  br i1 %i.uj, label %bb.ep, label %._crit_edge

bb.ep:                                            ; preds = %bb.eo
  %i.un = getelementptr i8, ptr %.val, i64 2956
  %i.uo = load i32, ptr %i.un, align 4
  %spec.select431 = call i32 @llvm.umin.i32(i32 %i.um, i32 %i.uo)
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.ep, %bb.eo, %bb.en, %bb.ej, %bb.el
  %.0297.in = phi i32 [ %spec.select431, %bb.ep ], [ %i.tu, %bb.el ], [ %i.tq, %bb.ej ], [ %i.uf, %bb.en ], [ %i.um, %bb.eo ] ; 5 uses
  call void @_raw_spin_unlock_bh(ptr noundef %i.as) #12
  %i.up = load volatile i64, ptr %i.ao, align 8
  %i.uq = and i64 %i.up, 2
  %.not386 = icmp eq i64 %i.uq, 0
  br i1 %.not386, label %bb.eq, label %bb.ev

bb.eq:                                            ; preds = %._crit_edge
  %i.ur = load i16, ptr %i.o, align 4
  %i.us = and i16 %i.ur, 1024
  %.not337 = icmp eq i16 %i.us, 0
  br i1 %.not337, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ut = call zeroext i1 @nf_ct_kill_acct(ptr noundef %0, i32 noundef %3, ptr noundef %1) #12 ; 0 uses
  br label %__skb_header_pointer.exit.thread

bb.es:                                            ; preds = %bb.eq
  %i.uu = icmp eq i32 %.0.i349, 0
  %i.uv = icmp eq i32 %.1301, 1
  %or.cond31 = and i1 %i.uu, %i.uv
  br i1 %or.cond31, label %__skb_header_pointer.exit.thread, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.uw = icmp eq i32 %.3, 3
  br i1 %i.uw, label %bb.eu, label %bb.ey

bb.eu:                                            ; preds = %bb.et
  %i.ux = getelementptr i8, ptr %.val, i64 2960
  %i.uy = load i32, ptr %i.ux, align 4
  %spec.select339 = call i32 @llvm.umin.i32(i32 %.0297.in, i32 %i.uy)
  br label %bb.ey

bb.ev:                                            ; preds = %._crit_edge
  %i.uz = load volatile i64, ptr %i.ao, align 8
  %i.va = and i64 %i.uz, 4
  %.not388 = icmp eq i64 %i.va, 0
  br i1 %.not388, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  %i.vb = and i32 %.1301, -2
  %or.cond37 = icmp eq i32 %i.vb, 2
  %i.vc = icmp eq i32 %.3, 3
  %or.cond39 = and i1 %i.vc, %or.cond37
  br i1 %or.cond39, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ao, i32 4, ptr elementtype(i8) %i.ao) #13, !srcloc !22
  br label %bb.ey

bb.ey:                                            ; preds = %bb.eu, %bb.ev, %bb.ex, %bb.ew, %bb.et
  %.1298.in = phi i32 [ %spec.select339, %bb.eu ], [ %.0297.in, %bb.ex ], [ %.0297.in, %bb.ew ], [ %.0297.in, %bb.ev ], [ %.0297.in, %bb.et ]
  %.val345 = load i32, ptr %i.e, align 8
  call void @__nf_ct_refresh_acct(ptr noundef %0, i32 noundef %3, i32 noundef %.1298.in, i32 noundef %.val345) #12
  br label %__skb_header_pointer.exit.thread

__skb_header_pointer.exit.thread:                 ; preds = %bb.c, %bb.b, %.thread374, %tcp_error.exit.thread, %bb.es, %bb.s, %bb.i, %__skb_header_pointer.exit, %bb.ey, %bb.er, %bb.eg, %bb.ef, %bb.an, %bb.ai, %bb.ah
  %.1 = phi i32 [ -1, %.thread374 ], [ -1, %__skb_header_pointer.exit ], [ 1, %bb.ey ], [ 1, %bb.er ], [ 1, %bb.an ], [ 1, %bb.ef ], [ -1, %bb.eg ], [ %., %bb.s ], [ -1, %bb.i ], [ 1, %bb.ah ], [ -1, %tcp_error.exit.thread ], [ -1, %bb.ai ], [ 1, %bb.es ], [ -1, %bb.b ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef zeroext i1 @tcp_new(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr noundef %4) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %3, i64 12         ; 4 uses
  %.val43 = load i16, ptr %i.b, align 4           ; 5 uses
  %i.c = and i16 %.val43, 1024
  %.not.i = icmp eq i16 %i.c, 0
  br i1 %.not.i, label %bb.b, label %get_conntrack_index.exit

bb.b:                                             ; preds = %bb.a
  %i.d = and i16 %.val43, 512
  %.not5.i = icmp eq i16 %i.d, 0
  br i1 %.not5.i, label %bb.c, label %5

5:                                                ; preds = %bb.b
  %6 = lshr i16 %.val43, 12
  %.lobit.i = and i16 %6, 1
  %7 = zext nneg i16 %.lobit.i to i64
  br label %get_conntrack_index.exit

bb.c:                                             ; preds = %bb.b
  %i.e = and i16 %.val43, 256
  %or.cond.not = icmp eq i16 %i.e, 0
  br i1 %or.cond.not, label %get_conntrack_index.exit.a, label %get_conntrack_index.exit

get_conntrack_index.exit.a:                       ; preds = %bb.c
  %i.f = and i16 %.val43, 4096
  %cond = icmp eq i16 %i.f, 0
  %..i = select i1 %cond, i64 5, i64 3
  br label %get_conntrack_index.exit

get_conntrack_index.exit:                         ; preds = %bb.a, %5, %bb.c, %get_conntrack_index.exit.a
  %.0.i = phi i64 [ 2, %bb.c ], [ %7, %5 ], [ 4, %bb.a ], [ %..i, %get_conntrack_index.exit.a ]
  %8 = getelementptr [10 x i8], ptr @tcp_conntracks, i64 %.0.i
  %9 = load i8, ptr %8, align 2                   ; 2 uses
  %10 = icmp ugt i8 %9, 9
  br i1 %10, label %get_conntrack_index.exit.thread, label %11

get_conntrack_index.exit.thread:                  ; preds = %get_conntrack_index.exit
  tail call void (ptr, ptr, i8, ptr, ...) @nf_l4proto_log_invalid(ptr noundef %1, ptr noundef %4, i8 noundef zeroext 6, ptr noundef @.str.7, ptr noundef @.str.8) #14
  br label %bb.g

11:                                               ; preds = %get_conntrack_index.exit
  %12 = icmp eq i8 %9, 1
  br i1 %12, label %bb.d, label %get_conntrack_index.exit.thread52

bb.d:                                             ; preds = %11
  %i.g = getelementptr i8, ptr %0, i64 184        ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(60) %i.g, i8 0, i64 60, i1 false)
  %i.h = getelementptr i8, ptr %3, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.i)
  %i.k = getelementptr i8, ptr %1, i64 112
  %i.l = load i32, ptr %i.k, align 8
  %.val45 = load i16, ptr %i.b, align 4           ; 3 uses
  %i.m = lshr i16 %.val45, 2
  %i.n = and i16 %i.m, 60
  %i.o = zext nneg i16 %i.n to i32
  %i.p = lshr i16 %.val45, 9
  %.lobit.i47 = and i16 %i.p, 1
  %i.q = zext nneg i16 %.lobit.i47 to i32
  %i.r = lshr i16 %.val45, 8
  %.lobit5.i = and i16 %i.r, 1
  %i.s = zext nneg i16 %.lobit5.i to i32
  %i.t = add i32 %i.j, %i.l
  %i.u = add i32 %2, %i.o
  %i.v = sub i32 %i.t, %i.u
  %i.w = add i32 %i.v, %i.q
  %i.x = add i32 %i.w, %i.s                       ; 2 uses
  store i32 %i.x, ptr %i.g, align 8
  %i.y = getelementptr i8, ptr %3, i64 14
  %i.z = load i16, ptr %i.y, align 2              ; 2 uses
  %i.aa = tail call i16 @llvm.bswap.i16(i16 %i.z)
  %i.ab = getelementptr i8, ptr %0, i64 192
  %i.ac = icmp eq i16 %i.z, 0
  %narrow.a = select i1 %i.ac, i16 1, i16 %i.aa
  %spec.select = zext i16 %narrow.a to i32
  store i32 %spec.select, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %0, i64 188
  store i32 %i.x, ptr %i.ad, align 4
  %.val46 = load i16, ptr %i.b, align 4
  tail call fastcc void @tcp_options(ptr noundef %1, i32 noundef %2, i16 %.val46, ptr noundef %i.g) #15
  br label %bb.f

get_conntrack_index.exit.thread52:                ; preds = %11
  %i.ae = getelementptr i8, ptr %.val, i64 2964
  %i.af = load i8, ptr %i.ae, align 4
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.g, label %bb.e

bb.e:                                             ; preds = %get_conntrack_index.exit.thread52
  %i.ah = getelementptr i8, ptr %0, i64 184       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(60) %i.ah, i8 0, i64 60, i1 false)
  %i.ai = getelementptr i8, ptr %3, i64 4
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = tail call i32 @llvm.bswap.i32(i32 %i.aj)
  %i.al = getelementptr i8, ptr %1, i64 112
  %i.am = load i32, ptr %i.al, align 8
  %.val44 = load i16, ptr %i.b, align 4           ; 3 uses
  %i.an = lshr i16 %.val44, 2
  %i.ao = and i16 %i.an, 60
  %i.ap = zext nneg i16 %i.ao to i32
  %i.aq = lshr i16 %.val44, 9
  %.lobit.i48 = and i16 %i.aq, 1
  %i.ar = zext nneg i16 %.lobit.i48 to i32
  %i.as = lshr i16 %.val44, 8
  %.lobit5.i49 = and i16 %i.as, 1
  %i.at = zext nneg i16 %.lobit5.i49 to i32
  %i.au = add i32 %i.ak, %i.am
  %i.av = add i32 %2, %i.ap
  %i.aw = sub i32 %i.au, %i.av
  %i.ax = add i32 %i.aw, %i.ar
  %i.ay = add i32 %i.ax, %i.at                    ; 2 uses
  store i32 %i.ay, ptr %i.ah, align 8
  %i.az = getelementptr i8, ptr %3, i64 14
  %i.ba = load i16, ptr %i.az, align 2            ; 2 uses
  %i.bb = tail call i16 @llvm.bswap.i16(i16 %i.ba)
  %i.bc = getelementptr i8, ptr %0, i64 192
  %i.bd = icmp eq i16 %i.ba, 0
  %narrow54 = select i1 %i.bd, i16 1, i16 %i.bb
  %spec.select42 = zext i16 %narrow54 to i32      ; 2 uses
  store i32 %spec.select42, ptr %i.bc, align 8
  %i.be = add i32 %i.ay, %spec.select42
  %i.bf = getelementptr i8, ptr %0, i64 188
  store i32 %i.be, ptr %i.bf, align 4
  %i.bg = getelementptr i8, ptr %0, i64 221
  store i8 10, ptr %i.bg, align 1
  %i.bh = getelementptr i8, ptr %0, i64 201
  store i8 10, ptr %i.bh, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bi = getelementptr i8, ptr %0, i64 227
  store i8 5, ptr %i.bi, align 1
  br label %bb.g

bb.g:                                             ; preds = %get_conntrack_index.exit.thread52, %bb.f, %get_conntrack_index.exit.thread
  %.0 = phi i1 [ false, %get_conntrack_index.exit.thread ], [ true, %bb.f ], [ false, %get_conntrack_index.exit.thread52 ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @tcp_options(ptr noundef %0, i32 noundef %1, i16 %.12.val, ptr nofree noundef captures(none) %2) unnamed_addr #0 align 16 {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = lshr i16 %.12.val, 2
  %i.c = and i16 %i.b, 60                         ; 2 uses
  %i.d = zext nneg i16 %i.c to i32
  %i.e = add nsw i32 %i.d, -20                    ; 4 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %__skb_header_pointer.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, i8 0, i64 40, i1 false), !annotation !10
  %i.f = add i32 %1, 20                           ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 112
  %.val = load i32, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %0, i64 116
  %.val42 = load i32, ptr %i.h, align 4
  %i.i = add i32 %.val, -20
  %i.j = add i32 %1, %.val42
  %i.k = sub i32 %i.i, %i.j
  %.not.i = icmp slt i32 %i.k, %i.e
  br i1 %.not.i, label %bb.c, label %__skb_header_pointer.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  %.not13.i = icmp eq ptr %0, null
  br i1 %.not13.i, label %__skb_header_pointer.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %i.f, ptr noundef nonnull %i.a, i32 noundef range(i32 -20, 41) %i.e) #12
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %__skb_header_pointer.exit.thread, label %__skb_header_pointer.exit.thread3, !prof !11

__skb_header_pointer.exit:                        ; preds = %bb.b
  %i.n = getelementptr i8, ptr %0, i64 208
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = sext i32 %i.f to i64
  %i.q = getelementptr i8, ptr %i.o, i64 %i.p     ; 2 uses
  %.not40 = icmp eq ptr %i.q, null
  br i1 %.not40, label %__skb_header_pointer.exit.thread, label %__skb_header_pointer.exit.thread3

__skb_header_pointer.exit.thread3:                ; preds = %bb.d, %__skb_header_pointer.exit
  %.0.i6 = phi ptr [ %i.q, %__skb_header_pointer.exit ], [ %i.a, %bb.d ]
  %i.r = getelementptr i8, ptr %2, i64 16         ; 2 uses
  store i8 0, ptr %i.r, align 4
  %i.s = getelementptr i8, ptr %2, i64 17         ; 3 uses
  %i.t = load i8, ptr %i.s, align 1
  %i.u = and i8 %i.t, 8                           ; 2 uses
  store i8 %i.u, ptr %i.s, align 1
  %i.v = icmp samesign ugt i16 %i.c, 20
  br i1 %i.v, label %.lr.ph, label %__skb_header_pointer.exit.thread

.lr.ph:                                           ; preds = %__skb_header_pointer.exit.thread3, %bb.l
  %i.w = phi i8 [ %i.ar, %bb.l ], [ %i.u, %__skb_header_pointer.exit.thread3 ] ; 3 uses
  %.03412 = phi i32 [ %.1, %bb.l ], [ %i.e, %__skb_header_pointer.exit.thread3 ] ; 4 uses
  %.03511 = phi ptr [ %.136, %bb.l ], [ %.0.i6, %__skb_header_pointer.exit.thread3 ] ; 3 uses
  %i.x = getelementptr i8, ptr %.03511, i64 1     ; 2 uses
  %i.y = load i8, ptr %.03511, align 1            ; 3 uses
  switch i8 %i.y, label %bb.f [
    i8 0, label %__skb_header_pointer.exit.thread
    i8 1, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph
  %i.z = add nsw i32 %.03412, -1
  br label %bb.l, !llvm.loop !23

bb.f:                                             ; preds = %.lr.ph
  %i.aa = icmp eq i32 %.03412, 1
  br i1 %i.aa, label %__skb_header_pointer.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr i8, ptr %.03511, i64 2    ; 2 uses
  %i.ac = load i8, ptr %i.x, align 1              ; 5 uses
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  %i.ae = icmp ult i8 %i.ac, 2
  %i.af = icmp samesign ult i32 %.03412, %i.ad
  %or.cond41 = or i1 %i.ae, %i.af
  br i1 %or.cond41, label %__skb_header_pointer.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = icmp eq i8 %i.y, 4
  %i.ah = icmp eq i8 %i.ac, 2
  %or.cond = and i1 %i.ag, %i.ah
  br i1 %or.cond, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = icmp eq i8 %i.y, 3
  %i.aj = icmp eq i8 %i.ac, 3
  %or.cond3 = and i1 %i.ai, %i.aj
  br i1 %or.cond3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = load i8, ptr %i.ab, align 1
  %spec.select = call i8 @llvm.umin.i8(i8 %i.ak, i8 14)
  store i8 %spec.select, ptr %i.r, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.j
  %.sink20 = phi i8 [ 1, %bb.j ], [ 2, %bb.h ]
  %i.al = or i8 %i.w, %.sink20                    ; 2 uses
  store i8 %i.al, ptr %i.s, align 1
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i
  %i.am = phi i8 [ %i.w, %bb.i ], [ %i.al, %.sink.split ]
  %i.an = zext i8 %i.ac to i64
  %i.ao = getelementptr i8, ptr %i.ab, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 -2
  %i.aq = sub nuw nsw i32 %.03412, %i.ad
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e
  %i.ar = phi i8 [ %i.w, %bb.e ], [ %i.am, %bb.k ]
  %.136 = phi ptr [ %i.x, %bb.e ], [ %i.ap, %bb.k ]
  %.1 = phi i32 [ %i.z, %bb.e ], [ %i.aq, %bb.k ] ; 2 uses
  %i.as = icmp sgt i32 %.1, 0
  br i1 %i.as, label %.lr.ph, label %__skb_header_pointer.exit.thread

__skb_header_pointer.exit.thread:                 ; preds = %bb.l, %.lr.ph, %bb.f, %bb.g, %__skb_header_pointer.exit.thread3, %bb.d, %bb.c, %__skb_header_pointer.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @nf_ct_l4proto_log_invalid(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal zeroext i1 @tcp_can_early_drop(ptr nofree noundef readonly captures(none) %0) #6 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 224
  %i.b = load i8, ptr %i.a, align 8
  %.off = add i8 %i.b, -4
  %switch = icmp ult i8 %.off, 5
  ret i1 %switch
}

end_hunk_0
