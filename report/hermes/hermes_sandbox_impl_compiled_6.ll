Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_6?download=true
inline.NumInlined: 8639
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 67
loop-unroll.NumUnrolled: 67
begin_hunk_0_@w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcMultiplyPart0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20long0x20long0x20const0x2A0x2C0x20unsigned0x20long0x20long0x2C0x20unsigned0x20long0x20long0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x2C0x20bool0x29:bb.a
  %.val552 = load ptr, ptr %i.bj, align 8, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %.val552, i64 %i.bo
  %.0.copyload.i = load i64, ptr %i.bp, align 1   ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #8, !srcloc !33
  %i.bq = add i64 %.0.copyload.i, %.0489
  %.val535 = load ptr, ptr %i.bj, align 8, !tbaa !12
  %i.br = getelementptr inbounds nuw i8, ptr %.val535, i64 %i.bo
  store i64 %i.bq, ptr %i.br, align 1
  %i.bs = add i32 %i.bk, %i.bm
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %.val551 = load ptr, ptr %i.bj, align 8, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %.val551, i64 %i.bt
  %.0.copyload.i553 = load i64, ptr %i.bu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i553) #8, !srcloc !33
  %i.bv = xor i64 %.0489, -1
  %i.bw = icmp ugt i64 %.0.copyload.i, %i.bv
  %i.bx = zext i1 %i.bw to i64                    ; 2 uses
  %i.by = add i64 %.0.copyload.i553, %i.bx
  %.val534 = load ptr, ptr %i.bj, align 8, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %.val534, i64 %i.bt
  store i64 %i.by, ptr %i.bz, align 1
  %i.ca = xor i64 %i.bx, -1
  %i.cb = icmp ugt i64 %.0.copyload.i553, %i.ca
  %i.cc = zext i1 %i.cb to i64                    ; 3 uses
  %indvars.iv.next585 = add nuw nsw i64 %indvars.iv584, 2 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next585 to i32
  %.not522 = icmp eq i32 %i.bi, %indvars
  br i1 %.not522, label %bb.k, label %bb.j

bb.k:                                             ; preds = %bb.j
  %.not523 = icmp eq i32 %i.c, 0
  br i1 %.not523, label %.loopexit566, label %.thread

.thread:                                          ; preds = %bb.d, %bb.k
  %.1490563 = phi i64 [ %i.cc, %bb.k ], [ 0, %bb.d ] ; 2 uses
  %.2494562 = phi i32 [ %i.bi, %bb.k ], [ 0, %bb.d ]
  %i.cd = shl i32 %.2494562, 3
  %i.ce = add i32 %i.cd, %1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cg = zext i32 %i.ce to i64                   ; 2 uses
  %.val550 = load ptr, ptr %i.cf, align 8, !tbaa !12
  %i.ch = getelementptr inbounds nuw i8, ptr %.val550, i64 %i.cg
  %.0.copyload.i554 = load i64, ptr %i.ch, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i554) #8, !srcloc !33
  %i.ci = add i64 %.0.copyload.i554, %.1490563
  %.val533 = load ptr, ptr %i.cf, align 8, !tbaa !12
  %i.cj = getelementptr inbounds nuw i8, ptr %.val533, i64 %i.cg
  store i64 %i.ci, ptr %i.cj, align 1
  %i.ck = xor i64 %.1490563, -1
  %i.cl = icmp ugt i64 %.0.copyload.i554, %i.ck
  %i.cm = zext i1 %i.cl to i64
  br label %.loopexit566

bb.l:                                             ; preds = %bb.b
  %i.cn = lshr i64 %3, 32                         ; 4 uses
  %i.co = and i64 %3, 4294967295                  ; 4 uses
  %.not512 = icmp eq i32 %6, 0
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.cq = zext i32 %i.b to i64                    ; 2 uses
  br i1 %.not512, label %.preheader568, label %.preheader570

.preheader570:                                    ; preds = %bb.l, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %bb.l ] ; 2 uses
  %.2 = phi i64 [ %i.ec, %bb.n ], [ 0, %bb.l ]    ; 2 uses
  %i.cr = trunc nuw i64 %indvars.iv to i32
  %i.cs = shl i32 %i.cr, 3                        ; 2 uses
  %i.ct = add i32 %i.cs, %2
  %i.cu = zext i32 %i.ct to i64
  %.val549 = load ptr, ptr %i.cp, align 8, !tbaa !12
  %i.cv = getelementptr inbounds nuw i8, ptr %.val549, i64 %i.cu
  %.0.copyload.i555 = load i64, ptr %i.cv, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i555) #8, !srcloc !33
  %.not515 = icmp eq i64 %.0.copyload.i555, 0
  br i1 %.not515, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader570
  %i.cw = lshr i64 %.0.copyload.i555, 32          ; 2 uses
  %i.cx = mul nuw i64 %i.cw, %i.cn
  %i.cy = and i64 %.0.copyload.i555, 4294967295   ; 2 uses
  %i.cz = mul nuw i64 %i.cy, %i.cn                ; 2 uses
  %i.da = lshr i64 %i.cz, 32
  %i.db = add nuw i64 %i.da, %i.cx
  %i.dc = mul nuw i64 %i.cw, %i.co                ; 2 uses
  %i.dd = lshr i64 %i.dc, 32
  %i.de = add nuw i64 %i.db, %i.dd
  %i.df = shl i64 %i.cz, 32                       ; 2 uses
  %i.dg = mul nuw i64 %i.cy, %i.co
  %i.dh = add i64 %i.df, %i.dg                    ; 3 uses
  %i.di = icmp ult i64 %i.dh, %i.df
  %i.dj = zext i1 %i.di to i64
  %i.dk = add nuw i64 %i.de, %i.dj
  %i.dl = shl i64 %i.dc, 32
  %i.dm = add i64 %i.dh, %i.dl                    ; 3 uses
  %i.dn = icmp ugt i64 %i.dh, %i.dm
  %i.do = zext i1 %i.dn to i64
  %i.dp = add nuw i64 %i.dk, %i.do
  %i.dq = add i64 %i.dm, %.2                      ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.dm
  %i.ds = zext i1 %i.dr to i64
  %i.dt = add i64 %i.dp, %i.ds
  br label %bb.n

bb.n:                                             ; preds = %.preheader570, %bb.m
  %.3 = phi i64 [ %i.dq, %bb.m ], [ %.2, %.preheader570 ] ; 2 uses
  %.0 = phi i64 [ %i.dt, %bb.m ], [ 0, %.preheader570 ]
  %i.du = add i32 %i.cs, %1
  %i.dv = zext i32 %i.du to i64                   ; 2 uses
  %.val548 = load ptr, ptr %i.cp, align 8, !tbaa !12
  %i.dw = getelementptr inbounds nuw i8, ptr %.val548, i64 %i.dv
  %.0.copyload.i556 = load i64, ptr %i.dw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i556) #8, !srcloc !33
  %i.dx = add i64 %.0.copyload.i556, %.3
  %.val532 = load ptr, ptr %i.cp, align 8, !tbaa !12
  %i.dy = getelementptr inbounds nuw i8, ptr %.val532, i64 %i.dv
  store i64 %i.dx, ptr %i.dy, align 1
  %i.dz = xor i64 %.3, -1
  %i.ea = icmp ugt i64 %.0.copyload.i556, %i.dz
  %i.eb = zext i1 %i.ea to i64
  %i.ec = add i64 %.0, %i.eb                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not516 = icmp eq i64 %indvars.iv.next, %i.cq
  br i1 %.not516, label %.loopexit566, label %.preheader570

.preheader568:                                    ; preds = %bb.l, %bb.p
  %indvars.iv581 = phi i64 [ %indvars.iv.next582, %bb.p ], [ 0, %bb.l ] ; 2 uses
  %.4 = phi i64 [ %.1, %bb.p ], [ 0, %bb.l ]      ; 2 uses
  %i.ed = trunc nuw i64 %indvars.iv581 to i32
  %i.ee = shl i32 %i.ed, 3                        ; 2 uses
  %i.ef = add i32 %i.ee, %2
  %i.eg = zext i32 %i.ef to i64
  %.val547 = load ptr, ptr %i.cp, align 8, !tbaa !12
  %i.eh = getelementptr inbounds nuw i8, ptr %.val547, i64 %i.eg
  %.0.copyload.i557 = load i64, ptr %i.eh, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i557) #8, !srcloc !33
  %.not513 = icmp eq i64 %.0.copyload.i557, 0
  br i1 %.not513, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.preheader568
  %i.ei = lshr i64 %.0.copyload.i557, 32          ; 2 uses
  %i.ej = mul nuw i64 %i.ei, %i.cn
  %i.ek = and i64 %.0.copyload.i557, 4294967295   ; 2 uses
  %i.el = mul nuw i64 %i.ek, %i.cn                ; 2 uses
  %i.em = lshr i64 %i.el, 32
  %i.en = add nuw i64 %i.em, %i.ej
  %i.eo = mul nuw i64 %i.ei, %i.co                ; 2 uses
  %i.ep = lshr i64 %i.eo, 32
  %i.eq = add nuw i64 %i.en, %i.ep
  %i.er = shl i64 %i.el, 32                       ; 2 uses
  %i.es = mul nuw i64 %i.ek, %i.co
  %i.et = add i64 %i.er, %i.es                    ; 3 uses
  %i.eu = icmp ult i64 %i.et, %i.er
  %i.ev = zext i1 %i.eu to i64
  %i.ew = add nuw i64 %i.eq, %i.ev
  %i.ex = shl i64 %i.eo, 32
  %i.ey = add i64 %i.et, %i.ex                    ; 3 uses
  %i.ez = icmp ugt i64 %i.et, %i.ey
  %i.fa = zext i1 %i.ez to i64
  %i.fb = add nuw i64 %i.ew, %i.fa
  %i.fc = add i64 %i.ey, %.4                      ; 2 uses
  %i.fd = icmp ugt i64 %i.ey, %i.fc
  %i.fe = zext i1 %i.fd to i64
  %i.ff = add i64 %i.fb, %i.fe
  br label %bb.p

bb.p:                                             ; preds = %.preheader568, %bb.o
  %.0491 = phi i64 [ %i.fc, %bb.o ], [ %.4, %.preheader568 ]
  %.1 = phi i64 [ %i.ff, %bb.o ], [ 0, %.preheader568 ] ; 2 uses
  %i.fg = add i32 %i.ee, %1
  %i.fh = zext i32 %i.fg to i64
  %.val531 = load ptr, ptr %i.cp, align 8, !tbaa !12
  %i.fi = getelementptr inbounds nuw i8, ptr %.val531, i64 %i.fh
  store i64 %.0491, ptr %i.fi, align 1
  %indvars.iv.next582 = add nuw nsw i64 %indvars.iv581, 1 ; 2 uses
  %.not514 = icmp eq i64 %indvars.iv.next582, %i.cq
  br i1 %.not514, label %.loopexit566, label %.preheader568

.loopexit566:                                     ; preds = %bb.n, %bb.p, %.preheader565, %.preheader565.1, %.preheader565.2, %.preheader565.3, %.preheader565.4, %.preheader565.5, %.preheader565.6, %bb.k, %.loopexit567, %bb.e, %bb.a, %.thread
  %.5 = phi i64 [ 0, %bb.a ], [ %i.cc, %bb.k ], [ %i.cm, %.thread ], [ 0, %bb.e ], [ 0, %.loopexit567 ], [ %.1, %bb.p ], [ 0, %.preheader565 ], [ 0, %.preheader565.6 ], [ 0, %.preheader565.5 ], [ 0, %.preheader565.4 ], [ 0, %.preheader565.3 ], [ 0, %.preheader565.2 ], [ 0, %.preheader565.1 ], [ %i.ec, %bb.n ] ; 2 uses
  br i1 %i.a, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit566
  %i.fj = shl i32 %4, 3
  %i.fk = add i32 %i.fj, %1
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fm = zext i32 %i.fk to i64
  %.val = load ptr, ptr %i.fl, align 8, !tbaa !12
  %i.fn = getelementptr inbounds nuw i8, ptr %.val, i64 %i.fm
  store i64 %.5, ptr %i.fn, align 1
  br label %.loopexit

bb.r:                                             ; preds = %.loopexit566
  %.not524 = icmp eq i64 %.5, 0
  %.not525 = icmp ne i64 %3, 0
  %or.cond.not564 = and i1 %.not525, %.not524
  %.not526 = icmp ugt i32 %4, %5
  %or.cond529 = and i1 %.not526, %or.cond.not564
  br i1 %or.cond529, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.r
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.s

bb.s:                                             ; preds = %.preheader, %bb.s
  %.0502 = phi i32 [ %7, %bb.s ], [ %5, %.preheader ] ; 2 uses
  %i.fp = shl i32 %.0502, 3
  %i.fq = add i32 %i.fp, %2
  %i.fr = zext i32 %i.fq to i64
  %.val546 = load ptr, ptr %i.fo, align 8, !tbaa !12
  %i.fs = getelementptr inbounds nuw i8, ptr %.val546, i64 %i.fr
  %.0.copyload.i558 = load i64, ptr %i.fs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i558) #8, !srcloc !33
  %.not527 = icmp ne i64 %.0.copyload.i558, 0
  %7 = add i32 %.0502, 1                          ; 2 uses
  %.not528 = icmp eq i32 %4, %7
  %or.cond530 = or i1 %.not528, %.not527
  br i1 %or.cond530, label %.loopexit, label %bb.s

.loopexit:                                        ; preds = %bb.s, %bb.r, %bb.q
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoPropertyDescriptor0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 29 uses
  %i.c = add i32 %i.b, -144                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 128 uses
  %i.e = zext i32 %2 to i64
  %i.f = add nuw nsw i64 %i.e, 4                  ; 3 uses
  %.val1077 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %.val1077, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.h = zext i32 %.0.copyload.i to i64           ; 4 uses
  %i.i = add nuw nsw i64 %i.h, 172                ; 2 uses
  %.val1076 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %.val1076, i64 %i.i
  %.0.copyload.i1179 = load i32, ptr %i.j, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1179) #8, !srcloc !14
  %i.k = add nuw nsw i64 %i.h, 164                ; 2 uses
  %.val1075 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %.val1075, i64 %i.k
  %.0.copyload.i1180 = load i32, ptr %i.l, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1180) #8, !srcloc !14
  %i.m = zext i32 %1 to i64
  %.val1143 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %.val1143, i64 %i.m
  %.0.copyload.i1181 = load i64, ptr %i.n, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1181) #8, !srcloc !33
  %i.o = icmp ugt i64 %.0.copyload.i1181, -844424930131969
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = and i64 %.0.copyload.i1181, 4294967295
  %.val1074 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %.val1074, i64 %i.p
  %.0.copyload.i1182 = load i32, ptr %i.q, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1182) #8, !srcloc !14
  %i.r = add i32 %.0.copyload.i1182, -1291845632
  %i.s = icmp ult i32 %i.r, -855638016
  %i.t = select i1 %i.s, i32 70384, i32 %1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.01017 = phi i32 [ %i.t, %bb.b ], [ 70384, %bb.a ] ; 19 uses
  %i.u = zext i32 %.01017 to i64
  %.val1142 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %.val1142, i64 %i.u
  %.0.copyload.i1183 = load i64, ptr %i.v, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1183) #8, !srcloc !33
  %i.w = icmp ult i64 %.0.copyload.i1183, -844424930131968
  %i.x = and i64 %.0.copyload.i1183, 4294967295
  %i.y = icmp eq i64 %i.x, 0
  %.not1028 = or i1 %i.w, %i.y
  %i.z = zext i32 %i.c to i64                     ; 47 uses
  %.val1115 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1115, i64 %i.z ; 2 uses
  br i1 %.not1028, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  store i32 0, ptr %i.ab, align 1
  %.val1132 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1132, i64 %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  store i64 257698037761, ptr %i.ad, align 1
  %.val1114 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1114, i64 %i.z
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  store i32 3, ptr %i.af, align 1
  %.val1113 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1113, i64 %i.z
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  store i32 31162, ptr %i.ah, align 1
  %i.ai = add i32 %i.b, -40
  %i.aj = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseTypeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.ai) #8
  br label %bb.bp

bb.e:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  store i64 -4294967296, ptr %i.ak, align 1
  %.val1161 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %.val1161, i64 %i.z
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 78
  store i16 1, ptr %i.am, align 1
  %i.an = add nuw nsw i64 %i.z, 104               ; 16 uses
  %.val1160 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %.val1160, i64 %i.an
  store i16 1, ptr %i.ao, align 1
  %i.ap = add i32 %i.b, -66
  %i.aq = add i32 %i.b, -48                       ; 6 uses
  %i.ar = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetNamedDescriptorUnsafe0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3APropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3ANamedPropertyDescriptor0x260x29(ptr noundef nonnull %0, i32 noundef %.01017, i32 noundef %2, i32 noundef 63, i32 noundef %i.ap, i32 noundef %i.aq) #8
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val1112 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %.val1112, i64 %i.z
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  store i32 1, ptr %i.at, align 1
  %i.au = add nuw nsw i64 %i.z, 80                ; 3 uses
  %.val1111 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %.val1111, i64 %i.au
  store i32 1, ptr %i.av, align 1
  %i.aw = add i32 %i.b, -40
  %i.ax = add i32 %i.b, -72
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetNamedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3APropertyCacheEntry0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.aw, i32 noundef %.01017, i32 noundef %2, i32 noundef 63, i32 noundef %.01017, i32 noundef %i.ax, i32 noundef 0) #8
  %.val1073 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %.val1073, i64 %i.an
  %.0.copyload.i1184 = load i32, ptr %i.ay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1184) #8, !srcloc !14
  %.not1029 = icmp eq i32 %.0.copyload.i1184, 0
  br i1 %.not1029, label %bb.bp, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val1141 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.az = getelementptr inbounds nuw i8, ptr %.val1141, i64 %i.z
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  %.0.copyload.i1185 = load i64, ptr %i.ba, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1185) #8, !srcloc !33
  %i.bb = ashr i64 %.0.copyload.i1185, 47
  %i.bc = trunc nsw i64 %i.bb to i32
  switch i32 %i.bc, label %bb.l [
    i32 -12, label %bb.n
    i32 -11, label %bb.n
    i32 -10, label %bb.h
    i32 -9, label %bb.i
    i32 -1, label %bb.i
    i32 -2, label %bb.i
    i32 -6, label %bb.k
    i32 -5, label %bb.k
    i32 -4, label %bb.j
    i32 -3, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.bd = trunc i64 %.0.copyload.i1185 to i16
  %i.be = and i16 %i.bd, 1
  br label %bb.n

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.g
  br label %bb.n

bb.j:                                             ; preds = %bb.g, %bb.g
  %i.bf = trunc i64 %.0.copyload.i1185 to i32
  %i.bg = add i32 %i.bf, 8
  %.val1110 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %.val1110, i64 %i.au
  store i32 %i.bg, ptr %i.bh, align 1
  %i.bi = and i64 %.0.copyload.i1185, 4294967295
  %.val1072 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bj = getelementptr inbounds nuw i8, ptr %.val1072, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %.0.copyload.i1186 = load i32, ptr %i.bk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1186) #8, !srcloc !14
  %.val1109 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bl = getelementptr inbounds nuw i8, ptr %.val1109, i64 %i.z
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 84
  store i32 %.0.copyload.i1186, ptr %i.bm, align 1
  %.val1140 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %.val1140, i64 %i.au
  %.0.copyload.i1187 = load i64, ptr %i.bn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1187) #8, !srcloc !33
  %.val1130 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %.val1130, i64 %i.z
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  store i64 %.0.copyload.i1187, ptr %i.bp, align 1
  %i.bq = add i32 %i.b, -80
  %i.br = tail call i32 @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3Acompare0x28hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20long0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.bq, i64 noundef 0) #8
  %i.bs = icmp ne i32 %i.br, 0
  %i.bt = zext i1 %i.bs to i16
  br label %bb.n

bb.k:                                             ; preds = %bb.g, %bb.g
  %i.bu = and i64 %.0.copyload.i1185, 4294967295
  %.val1071 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bv = getelementptr inbounds nuw i8, ptr %.val1071, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %.0.copyload.i1188 = load i32, ptr %i.bw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1188) #8, !srcloc !14
  %i.bx = and i32 %.0.copyload.i1188, 2147483647
  %i.by = icmp ne i32 %i.bx, 0
  %i.bz = zext i1 %i.by to i16
  br label %bb.n

bb.l:                                             ; preds = %bb.g
  %i.ca = bitcast i64 %.0.copyload.i1185 to double ; 2 uses
  %i.cb = fcmp oeq double %i.ca, 0.000000e+00
  br i1 %i.cb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = fcmp ord double %i.ca, 0.000000e+00
end_hunk_0
