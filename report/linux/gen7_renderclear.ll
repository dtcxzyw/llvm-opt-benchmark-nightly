Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/gen7_renderclear?download=true
inline.NumInlined: 56
inline.NumDeleted: 23
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hsw_clear_kernel = internal unnamed_addr constant [208 x i32] [i32 1, i32 637665576, i32 36, i32 0, i32 64, i32 539495457, i32 40, i32 1, i32 16777232, i32 536874016, i32 44, i32 0, i32 66080, i32 872422400, i32 5120, i32 352, i32 6291457, i32 543162465, i32 0, i32 0, i32 8, i32 543169669, i32 3584, i32 12, i32 5, i32 543169701, i32 96, i32 1, i32 8, i32 543431813, i32 3584, i32 13, i32 5, i32 543431845, i32 100, i32 3, i32 65, i32 544482469, i32 100, i32 52, i32 64, i32 543167653, i32 96, i32 116, i32 8, i32 543693957, i32 3584, i32 8, i32 5, i32 543693989, i32 104, i32 15, i32 65, i32 544218277, i32 96, i32 16, i32 64, i32 543691941, i32 104, i32 112, i32 6291457, i32 547356769, i32 0, i32 0, i32 5, i32 543956101, i32 3584, i32 7, i32 65, i32 543956133, i32 108, i32 4, i32 6291457, i32 545259553, i32 9240576, i32 0, i32 1, i32 545259553, i32 108, i32 0, i32 1, i32 545521697, i32 104, i32 0, i32 1, i32 545783905, i32 0, i32 3, i32 5, i32 546049313, i32 134, i32 -1, i32 90177586, i32 547360673, i32 9240704, i32 35192833, i32 64, i32 547364005, i32 160, i32 1, i32 90177586, i32 547360673, i32 9240704, i32 67796993, i32 33554496, i32 539499553, i32 40, i32 -1, i32 66080, i32 872422400, i32 5120, i32 -32, i32 1, i32 637665576, i32 36, i32 0, i32 1, i32 570429668, i32 0, i32 0, i32 1, i32 570962412, i32 0, i32 8323199, i32 6291457, i32 541065249, i32 9240576, i32 0, i32 6291457, i32 803209249, i32 9240576, i32 0, i32 2097153, i32 541065505, i32 4522016, i32 0, i32 1, i32 541589601, i32 0, i32 983055, i32 5, i32 541855009, i32 70, i32 -17, i32 8388609, i32 543162465, i32 0, i32 0, i32 8388609, i32 545259617, i32 0, i32 0, i32 8388609, i32 547356769, i32 0, i32 0, i32 8388609, i32 549453921, i32 0, i32 0, i32 8388609, i32 551551073, i32 0, i32 0, i32 8388609, i32 553648225, i32 0, i32 0, i32 8388609, i32 555745377, i32 0, i32 0, i32 8388609, i32 557842529, i32 0, i32 0, i32 90177586, i32 536874912, i32 9240640, i32 302678016, i32 64, i32 541076769, i32 32, i32 1048592, i32 90177586, i32 536874912, i32 9240640, i32 302678016, i32 33554496, i32 570965388, i32 520, i32 -1, i32 8388609, i32 -1610612471, i32 1538, i32 0, i32 64, i32 570432644, i32 512, i32 32, i32 66080, i32 872422400, i32 5120, i32 -64, i32 123732018, i32 536874912, i32 9244640, i32 -2113929200], align 16
@ivb_clear_kernel = internal unnamed_addr constant [208 x i32] [i32 1, i32 637665576, i32 36, i32 0, i32 64, i32 539495457, i32 40, i32 1, i32 16777232, i32 536874016, i32 44, i32 0, i32 66080, i32 872422400, i32 5120, i32 44, i32 6291457, i32 543162465, i32 0, i32 0, i32 8, i32 543169669, i32 3584, i32 12, i32 5, i32 543169701, i32 96, i32 1, i32 8, i32 543431813, i32 3584, i32 13, i32 5, i32 543431845, i32 100, i32 3, i32 65, i32 544482469, i32 100, i32 52, i32 64, i32 543167653, i32 96, i32 116, i32 8, i32 543693957, i32 3584, i32 8, i32 5, i32 543693989, i32 104, i32 15, i32 65, i32 544218277, i32 96, i32 16, i32 64, i32 543691941, i32 104, i32 112, i32 6291457, i32 547356769, i32 0, i32 0, i32 5, i32 543956101, i32 3584, i32 7, i32 65, i32 543956133, i32 108, i32 4, i32 6291457, i32 545259553, i32 9240576, i32 0, i32 1, i32 545259553, i32 108, i32 0, i32 1, i32 545521697, i32 104, i32 0, i32 1, i32 545783905, i32 0, i32 3, i32 5, i32 546049313, i32 134, i32 -1, i32 90177586, i32 547360673, i32 9240704, i32 35192833, i32 64, i32 547364005, i32 160, i32 1, i32 90177586, i32 547360673, i32 9240704, i32 67796993, i32 33554496, i32 539499553, i32 40, i32 -1, i32 66080, i32 872422400, i32 5120, i32 -4, i32 1, i32 637665576, i32 36, i32 0, i32 1, i32 570429668, i32 0, i32 0, i32 1, i32 570962412, i32 0, i32 8323199, i32 6291457, i32 541065249, i32 9240576, i32 0, i32 6291457, i32 803209249, i32 9240576, i32 0, i32 2097153, i32 541065505, i32 4522016, i32 0, i32 1, i32 541589601, i32 0, i32 983055, i32 5, i32 541855009, i32 70, i32 -17, i32 8388609, i32 543162465, i32 0, i32 0, i32 8388609, i32 545259617, i32 0, i32 0, i32 8388609, i32 547356769, i32 0, i32 0, i32 8388609, i32 549453921, i32 0, i32 0, i32 8388609, i32 551551073, i32 0, i32 0, i32 8388609, i32 553648225, i32 0, i32 0, i32 8388609, i32 555745377, i32 0, i32 0, i32 8388609, i32 557842529, i32 0, i32 0, i32 90177586, i32 536874912, i32 9240640, i32 302678016, i32 64, i32 541076769, i32 32, i32 1048592, i32 90177586, i32 536874912, i32 9240640, i32 302678016, i32 33554496, i32 570965388, i32 520, i32 -1, i32 8388609, i32 -1610612471, i32 1538, i32 0, i32 64, i32 570432644, i32 512, i32 32, i32 66080, i32 872422400, i32 5120, i32 -8, i32 123732018, i32 536874912, i32 9244640, i32 -2113929200], align 16

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @gen7_setup_clear_gpr_bb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 1664
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i = icmp eq i32 %i.d, 0
  %i.e = getelementptr i8, ptr %i.a, i64 1648
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load i8, ptr %i.g, align 8               ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.h, label %batch_get_defaults.exit [
    i8 3, label %bb.d
    i8 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %batch_get_defaults.exit

bb.d:                                             ; preds = %bb.b
  br label %batch_get_defaults.exit

bb.e:                                             ; preds = %bb.a
  %cond.i = icmp eq i8 %i.h, 2
  %..i = select i1 %cond.i, i32 128, i32 36
  br label %batch_get_defaults.exit

batch_get_defaults.exit:                          ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %..sink.i = phi i32 [ %..i, %bb.e ], [ 280, %bb.d ], [ 140, %bb.c ], [ 70, %bb.b ] ; 3 uses
  %.sink24.i = phi i32 [ 2031616, %bb.e ], [ 4128768, %bb.d ], [ 4128768, %bb.c ], [ 4128768, %bb.b ]
  %.sink22.i = phi i32 [ 512, %bb.e ], [ 1024, %bb.d ], [ 1024, %bb.c ], [ 1024, %bb.b ] ; 2 uses
  %i.i = phi i32 [ 65536, %bb.e ], [ 262144, %bb.d ], [ 262144, %bb.c ], [ 262144, %bb.b ]
  %i.j = shl nuw nsw i32 %..sink.i, 6
  %i.k = add nuw nsw i32 %i.j, 896
  %i.l = or i32 %i.k, 4095                        ; 2 uses
  %i.m = add nuw nsw i32 %i.l, 1                  ; 3 uses
  %i.n = add nuw nsw i32 %i.l, 4097               ; 2 uses
  %i.o = add nuw nsw i32 %i.n, %i.i               ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.l, label %bb.f

bb.f:                                             ; preds = %batch_get_defaults.exit
  %i.p = getelementptr i8, ptr %1, i64 184        ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call ptr @i915_gem_object_pin_map(ptr noundef %i.q, i32 noundef 1) #4 ; 84 uses
  %i.s = icmp ugt ptr %i.r, inttoptr (i64 -4096 to ptr)
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = trunc i64 %i.t to i32
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.v = zext nneg i32 %i.o to i64
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 %i.r, i8 0, i64 %i.v, i1 false)
  %i.w = getelementptr i8, ptr %1, i64 168
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 304
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = lshr exact i32 %i.m, 2
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr [4 x i8], ptr %i.r, i64 %i.ab ; 2 uses
  %i.ad = getelementptr i8, ptr %i.z, i64 1664    ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = and i32 %i.ae, 8388608
  %.not.i10 = icmp eq i32 %i.af, 0
  %.val19.i.a = select i1 %.not.i10, ptr @ivb_clear_kernel, ptr @hsw_clear_kernel
  %i.ag = ptrtoint ptr %i.ac to i64               ; 5 uses
  %i.ah = add i64 %i.ag, 63
  %i.ai = and i64 %i.ah, -64                      ; 2 uses
  %i.aj = inttoptr i64 %i.ai to ptr               ; 17 uses
  %i.ak = sub i64 %i.ai, %i.ag                    ; 2 uses
  %i.al = ashr exact i64 %i.ak, 2
  %i.am = tail call { ptr, i64 } asm sideeffect "rep stosl", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr %i.ac, i64 range(i64 -2305843009213693952, 2305843009213693952) %i.al) #5, !srcloc !11 ; 0 uses
  %2 = getelementptr i8, ptr %i.aj, i64 832       ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 64 dereferenceable(832) %i.aj, ptr noundef nonnull readonly align 16 dereferenceable(832) %.val19.i.a, i64 832, i1 false)
  %i.an = trunc i64 %i.ak to i32
  %i.ao = add i32 %i.m, %i.an
  %i.ap = ptrtoint ptr %2 to i64
  %i.aq = tail call { ptr, i64 } asm sideeffect "rep stosl", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr %2, i64 range(i64 -2305843009213693952, 2305843009213693952) 0) #5, !srcloc !11 ; 0 uses
  %i.ar = getelementptr i8, ptr %i.aj, i64 864    ; 3 uses
  %i.as = sub i64 %i.ap, %i.ag
  %i.at = trunc i64 %i.as to i32
  %i.au = getelementptr i8, ptr %i.aj, i64 836
  store i32 587202816, ptr %2, align 64
  %i.av = getelementptr i8, ptr %1, i64 8         ; 6 uses
  %.val19.val.i.i.i.i = load i64, ptr %i.av, align 8
  %i.aw = getelementptr i8, ptr %1, i64 248       ; 6 uses
  %.val19.val20.i.i.i.i = load i32, ptr %i.aw, align 8
  %i.ax = trunc i64 %.val19.val.i.i.i.i to i32
  %i.ay = add i32 %i.n, %i.ax
  %i.az = add i32 %i.ay, %.val19.val20.i.i.i.i
  %i.ba = getelementptr i8, ptr %i.aj, i64 840
  store i32 %i.az, ptr %i.au, align 4
  %i.bb = lshr exact i32 %.sink22.i, 2
  %i.bc = add nsw i32 %i.bb, -1
  %i.bd = or i32 %i.bc, %.sink24.i
  %i.be = getelementptr i8, ptr %i.aj, i64 844
  store i32 %i.bd, ptr %i.ba, align 8
  %i.bf = getelementptr i8, ptr %i.aj, i64 848
  store i32 %.sink22.i, ptr %i.be, align 4
  %i.bg = getelementptr i8, ptr %i.aj, i64 852
  store i32 0, ptr %i.bf, align 16
  %i.bh = getelementptr i8, ptr %i.aj, i64 856
  store i32 0, ptr %i.bg, align 4
  %i.bi = getelementptr i8, ptr %i.aj, i64 860
  store i32 0, ptr %i.bh, align 8
  store i32 158793728, ptr %i.bi, align 4
  %i.bj = ptrtoint ptr %i.ar to i64
  %i.bk = tail call { ptr, i64 } asm sideeffect "rep stosl", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr %i.ar, i64 range(i64 -2305843009213693952, 2305843009213693952) 0) #5, !srcloc !11 ; 0 uses
  %i.bl = getelementptr i8, ptr %i.aj, i64 896    ; 3 uses
  %i.bm = sub i64 %i.bj, %i.ag
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = getelementptr i8, ptr %i.aj, i64 868
  store i32 %i.at, ptr %i.ar, align 32
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(28) %i.bo, i8 0, i64 28, i1 false)
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = tail call { ptr, i64 } asm sideeffect "rep stosl", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr %i.bl, i64 range(i64 -2305843009213693952, 2305843009213693952) 0) #5, !srcloc !11 ; 0 uses
  %i.br = getelementptr i8, ptr %i.aj, i64 928
  %i.bs = sub i64 %i.bp, %i.ag
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = add i32 %i.m, %i.bt                     ; 2 uses
  %i.bv = getelementptr i8, ptr %i.aj, i64 900
  store i32 %i.ao, ptr %i.bl, align 64
  %i.bw = getelementptr i8, ptr %i.aj, i64 904
  store i32 8320, ptr %i.bv, align 4
  %i.bx = getelementptr i8, ptr %i.aj, i64 908
  store i32 0, ptr %i.bw, align 8
  %i.by = or i32 %i.bn, 1
  %i.bz = getelementptr i8, ptr %i.aj, i64 912
  store i32 %i.by, ptr %i.bx, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 16 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  %i.ca = tail call { ptr, i64 } asm sideeffect "rep stosl", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr %i.br, i64 0) #5, !srcloc !11 ; 0 uses
  %i.cb = getelementptr i8, ptr %i.r, i64 16
  %i.cc = getelementptr i8, ptr %i.r, i64 4
  store i32 2046820354, ptr %i.r, align 4
  %i.cd = getelementptr i8, ptr %i.r, i64 8
  store i32 1052705, ptr %i.cc, align 4
  %i.ce = getelementptr i8, ptr %i.r, i64 12
  store i32 0, ptr %i.cd, align 4
  store i32 0, ptr %i.ce, align 4
  %i.cf = getelementptr i8, ptr %i.r, i64 56
  %i.cg = getelementptr i8, ptr %i.r, i64 20
  store i32 2046820355, ptr %i.cb, align 4
  %i.ch = getelementptr i8, ptr %i.r, i64 24
  store i32 1048578, ptr %i.cg, align 4
  %i.ci = getelementptr i8, ptr %i.r, i64 28
  store i32 0, ptr %i.ch, align 4
  %i.cj = getelementptr i8, ptr %i.r, i64 32
  store i32 0, ptr %i.ci, align 4
  %i.ck = getelementptr i8, ptr %i.r, i64 36
  store i32 0, ptr %i.cj, align 4
  %i.cl = getelementptr i8, ptr %i.r, i64 40
  store i32 2046820355, ptr %i.ck, align 4
  %i.cm = getelementptr i8, ptr %i.r, i64 44
  store i32 4, ptr %i.cl, align 4
  %i.cn = getelementptr i8, ptr %i.r, i64 48
  store i32 0, ptr %i.cm, align 4
  %i.co = getelementptr i8, ptr %i.r, i64 52
  store i32 0, ptr %i.cn, align 4
  store i32 0, ptr %i.co, align 4
  %i.cp = getelementptr i8, ptr %i.r, i64 60
  store i32 285212675, ptr %i.cf, align 4
  %i.cq = getelementptr i8, ptr %i.r, i64 64
  store i32 28672, ptr %i.cp, align 4
  %i.cr = load i32, ptr %i.ad, align 4
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = and i64 %i.cs, 2097152
  %.not63.i = icmp eq i64 %i.ct, 0
  br i1 %.not63.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cu = getelementptr i8, ptr %i.z, i64 1648
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = getelementptr i8, ptr %i.cv, i64 16
  %i.cx = load i8, ptr %i.cw, align 8
  %i.cy = icmp eq i8 %i.cx, 1
  br i1 %i.cy, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cz = and i64 %i.cs, 4194304
  %.not64.i = icmp eq i64 %i.cz, 0
  %i.da = select i1 %.not64.i, i32 -65536, i32 -65532
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.db = phi i32 [ -65532, %bb.i ], [ %i.da, %bb.j ]
  %i.dc = getelementptr i8, ptr %i.r, i64 68
  store i32 %i.db, ptr %i.cq, align 4
  %i.dd = getelementptr i8, ptr %i.r, i64 72
  store i32 28676, ptr %i.dc, align 4
  %i.de = getelementptr i8, ptr %i.r, i64 76
  store i32 -65472, ptr %i.dd, align 4
  %i.df = getelementptr i8, ptr %i.r, i64 116
  %i.dg = getelementptr i8, ptr %i.r, i64 80
  store i32 2046820355, ptr %i.de, align 4
  %i.dh = getelementptr i8, ptr %i.r, i64 84
  store i32 1048578, ptr %i.dg, align 4
  %i.di = getelementptr i8, ptr %i.r, i64 88
  store i32 0, ptr %i.dh, align 4
  %i.dj = getelementptr i8, ptr %i.r, i64 92
  store i32 0, ptr %i.di, align 4
  %i.dk = getelementptr i8, ptr %i.r, i64 96
  store i32 0, ptr %i.dj, align 4
  %i.dl = getelementptr i8, ptr %i.r, i64 100
  store i32 2046820355, ptr %i.dk, align 4
  %i.dm = getelementptr i8, ptr %i.r, i64 104
  store i32 4, ptr %i.dl, align 4
  %i.dn = getelementptr i8, ptr %i.r, i64 108
  store i32 0, ptr %i.dm, align 4
  %i.do = getelementptr i8, ptr %i.r, i64 112
  store i32 0, ptr %i.dn, align 4
  store i32 0, ptr %i.do, align 4
  %i.dp = getelementptr i8, ptr %i.r, i64 132
  %i.dq = getelementptr i8, ptr %i.r, i64 120
  store i32 2046820354, ptr %i.df, align 4
  %i.dr = getelementptr i8, ptr %i.r, i64 124
  store i32 1052705, ptr %i.dq, align 4
  %i.ds = getelementptr i8, ptr %i.r, i64 128
  store i32 0, ptr %i.dr, align 4
  store i32 0, ptr %i.ds, align 4
  %i.dt = getelementptr i8, ptr %i.r, i64 172
  %i.du = getelementptr i8, ptr %i.r, i64 136
  store i32 2046820355, ptr %i.dp, align 4
  %i.dv = getelementptr i8, ptr %i.r, i64 140
  store i32 1048578, ptr %i.du, align 4
  %i.dw = getelementptr i8, ptr %i.r, i64 144
  store i32 0, ptr %i.dv, align 4
  %i.dx = getelementptr i8, ptr %i.r, i64 148
  store i32 0, ptr %i.dw, align 4
  %i.dy = getelementptr i8, ptr %i.r, i64 152
  store i32 0, ptr %i.dx, align 4
  %i.dz = getelementptr i8, ptr %i.r, i64 156
  store i32 2046820355, ptr %i.dy, align 4
  %i.ea = getelementptr i8, ptr %i.r, i64 160
  store i32 4, ptr %i.dz, align 4
  %i.eb = getelementptr i8, ptr %i.r, i64 164
  store i32 0, ptr %i.ea, align 4
  %i.ec = getelementptr i8, ptr %i.r, i64 168
  store i32 0, ptr %i.eb, align 4
  store i32 0, ptr %i.ec, align 4
  %i.ed = getelementptr i8, ptr %i.r, i64 176
  store i32 1761869825, ptr %i.dt, align 4
  %i.ee = getelementptr i8, ptr %i.r, i64 180
  store i32 0, ptr %i.ed, align 4
  %i.ef = getelementptr i8, ptr %i.r, i64 220
  %i.eg = getelementptr i8, ptr %i.r, i64 184
  store i32 2046820355, ptr %i.ee, align 4
  %i.eh = getelementptr i8, ptr %i.r, i64 188
  store i32 1048578, ptr %i.eg, align 4
  %i.ei = getelementptr i8, ptr %i.r, i64 192
  store i32 0, ptr %i.eh, align 4
  %i.ej = getelementptr i8, ptr %i.r, i64 196
  store i32 0, ptr %i.ei, align 4
  %i.ek = getelementptr i8, ptr %i.r, i64 200
  store i32 0, ptr %i.ej, align 4
  %i.el = getelementptr i8, ptr %i.r, i64 204
  store i32 2046820355, ptr %i.ek, align 4
  %i.em = getelementptr i8, ptr %i.r, i64 208
  store i32 4, ptr %i.el, align 4
  %i.en = getelementptr i8, ptr %i.r, i64 212
  store i32 0, ptr %i.em, align 4
  %i.eo = getelementptr i8, ptr %i.r, i64 216
  store i32 0, ptr %i.en, align 4
  store i32 0, ptr %i.eo, align 4
  %i.ep = getelementptr i8, ptr %i.r, i64 236
  %i.eq = getelementptr i8, ptr %i.r, i64 224
  store i32 2046820354, ptr %i.ef, align 4
  %i.er = getelementptr i8, ptr %i.r, i64 228
  store i32 1052705, ptr %i.eq, align 4
  %i.es = getelementptr i8, ptr %i.r, i64 232
  store i32 0, ptr %i.er, align 4
  store i32 0, ptr %i.es, align 4
  %i.et = getelementptr i8, ptr %i.r, i64 276
  %i.eu = getelementptr i8, ptr %i.r, i64 240
  store i32 1627455496, ptr %i.ep, align 4
  %.val19.val.i.i = load i64, ptr %i.av, align 8
  %.val19.val20.i.i = load i32, ptr %i.aw, align 8
  %i.ev = trunc i64 %.val19.val.i.i to i32
  %i.ew = add i32 %.val19.val20.i.i, %i.ev
  %i.ex = or i32 %i.ew, 1
  %i.ey = getelementptr i8, ptr %i.r, i64 244
  store i32 %i.ex, ptr %i.eu, align 4
  %.val18.val.i.i = load i64, ptr %i.av, align 8
  %.val18.val21.i.i = load i32, ptr %i.aw, align 8
  %i.ez = trunc i64 %.val18.val.i.i to i32
  %i.fa = add i32 %i.bu, %i.ez
  %i.fb = add i32 %i.fa, %.val18.val21.i.i
  %i.fc = or i32 %i.fb, 1
  %i.fd = getelementptr i8, ptr %i.r, i64 248
  store i32 %i.fc, ptr %i.ey, align 4
  %.val17.val.i.i = load i64, ptr %i.av, align 8
  %.val17.val22.i.i = load i32, ptr %i.aw, align 8
  %i.fe = trunc i64 %.val17.val.i.i to i32
  %i.ff = add i32 %.val17.val22.i.i, %i.fe
  %i.fg = or i32 %i.ff, 1
  %i.fh = getelementptr i8, ptr %i.r, i64 252
  store i32 %i.fg, ptr %i.fd, align 4
  %.val16.val.i.i = load i64, ptr %i.av, align 8
  %.val16.val23.i.i = load i32, ptr %i.aw, align 8
  %i.fi = trunc i64 %.val16.val.i.i to i32
  %i.fj = add i32 %.val16.val23.i.i, %i.fi
  %i.fk = or i32 %i.fj, 1
  %i.fl = getelementptr i8, ptr %i.r, i64 256
  store i32 %i.fk, ptr %i.fh, align 4
  %.val.val.i.i = load i64, ptr %i.av, align 8
  %.val.val24.i.i = load i32, ptr %i.aw, align 8
  %i.fm = trunc i64 %.val.val.i.i to i32
  %i.fn = add i32 %.val.val24.i.i, %i.fm
  %i.fo = or i32 %i.fn, 1
  %i.fp = getelementptr i8, ptr %i.r, i64 260
  store i32 %i.fo, ptr %i.fl, align 4
  %i.fq = getelementptr i8, ptr %i.r, i64 264
  store i32 0, ptr %i.fp, align 4
  %i.fr = getelementptr i8, ptr %i.r, i64 268
  store i32 1, ptr %i.fq, align 4
  %i.fs = getelementptr i8, ptr %i.r, i64 272
  store i32 0, ptr %i.fr, align 4
  store i32 1, ptr %i.fs, align 4
  %i.ft = getelementptr i8, ptr %i.r, i64 316     ; 2 uses
  %i.fu = getelementptr i8, ptr %i.r, i64 280
  store i32 2046820355, ptr %i.et, align 4
  %i.fv = getelementptr i8, ptr %i.r, i64 284
  store i32 1048578, ptr %i.fu, align 4
  %i.fw = getelementptr i8, ptr %i.r, i64 288
  store i32 0, ptr %i.fv, align 4
  %i.fx = getelementptr i8, ptr %i.r, i64 292
  store i32 0, ptr %i.fw, align 4
  %i.fy = getelementptr i8, ptr %i.r, i64 296
  store i32 0, ptr %i.fx, align 4
end_hunk_0
