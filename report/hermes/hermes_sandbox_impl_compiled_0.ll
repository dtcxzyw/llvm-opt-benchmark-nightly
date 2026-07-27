inline.NumInlined: 15600
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 26
begin_hunk_0_@w2c_hermes_hermes0x3A0x3AFuncCallNOpts0x3A0x3ArunOnFunction0x28hermes0x3A0x3AFunction0x2A0x29:bb.a
  %i.p = add nuw nsw i64 %i.e, 20                 ; 3 uses
  %.val723 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %.val723, i64 %i.p
  store i64 0, ptr %i.q, align 1
  %i.r = add nuw nsw i64 %i.e, 16                 ; 2 uses
  %.val716 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %.val716, i64 %i.r
  store i32 %.0.copyload.i, ptr %i.s, align 1
  %.val690 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %.val690, i64 %i.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %.0.copyload.i731 = load i32, ptr %i.u, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i731) #16, !srcloc !22
  %i.v = add i32 %2, 48                           ; 2 uses
  %i.w = icmp eq i32 %.0.copyload.i731, %i.v
  br i1 %i.w, label %bb.ag, label %.preheader773

.preheader773:                                    ; preds = %bb.a
  %i.x = add nuw nsw i64 %i.e, 32                 ; 2 uses
  %i.y = add nuw nsw i64 %i.e, 24                 ; 2 uses
  %i.z = add nuw nsw i64 %i.e, 8                  ; 2 uses
  %i.aa = add i32 %i.b, -44
  br label %bb.b

bb.b:                                             ; preds = %.preheader773, %.loopexit772
  %.0624 = phi i32 [ %.9, %.loopexit772 ], [ 0, %.preheader773 ] ; 2 uses
  %.0619 = phi i32 [ %.0.copyload.i764, %.loopexit772 ], [ %.0.copyload.i731, %.preheader773 ] ; 2 uses
  %i.ab = zext i32 %.0619 to i64                  ; 2 uses
  %.val689 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %.val689, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.0.copyload.i732 = load i32, ptr %i.ad, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i732) #16, !srcloc !22
  %i.ae = add i32 %.0619, 36                      ; 2 uses
  %i.af = icmp eq i32 %.0.copyload.i732, %i.ae
  br i1 %i.af, label %.loopexit772, label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.y
  %.1625 = phi i32 [ %.8, %bb.y ], [ %.0624, %bb.b ] ; 2 uses
  %.0621 = phi i32 [ %.0.copyload.i763, %bb.y ], [ %.0.copyload.i732, %bb.b ] ; 4 uses
  %i.ag = zext i32 %.0621 to i64                  ; 8 uses
  %.val726 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %.val726, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.0.copyload.i733 = load i8, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i733) #16, !srcloc !33
  %.not = icmp eq i8 %.0.copyload.i733, 91
  br i1 %.not, label %bb.c, label %bb.y

bb.c:                                             ; preds = %.preheader
  %i.aj = add nuw nsw i64 %i.ag, 44               ; 2 uses
  %.val688 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %.val688, i64 %i.aj
  %.0.copyload.i734 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i734) #16, !srcloc !22
  %i.al = add i32 %.0.copyload.i734, -7
  %i.am = icmp ult i32 %i.al, -4
  br i1 %i.am, label %bb.y, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val687 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %.val687, i64 %i.ag
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %.0.copyload.i735 = load i32, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i735) #16, !srcloc !22
  %.val715 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %.val715, i64 %i.n
  store i32 %.0.copyload.i735, ptr %i.ap, align 1
  %.val686 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %.val686, i64 %i.ag
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 68
  %.0.copyload.i736 = load i32, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i736) #16, !srcloc !22
  %.val714 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %.val714, i64 %i.x
  store i32 %.0.copyload.i736, ptr %i.as, align 1
  %.val713 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %.val713, i64 %i.p
  store i32 %.0621, ptr %i.at, align 1
  %.val685 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %.val685, i64 %i.ag
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 36
  %.0.copyload.i737 = load i32, ptr %i.av, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i737) #16, !srcloc !22
  %.val712 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %.val712, i64 %i.y
  store i32 %.0.copyload.i737, ptr %i.aw, align 1
  %.val684 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %.val684, i64 %i.ag
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %.0.copyload.i738 = load i32, ptr %i.ay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i738) #16, !srcloc !22
  %i.az = add nuw nsw i64 %i.ag, 40               ; 2 uses
  %.val683 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %.val683, i64 %i.az
  %.0.copyload.i739 = load i32, ptr %i.ba, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i739) #16, !srcloc !22
  %i.bb = zext i32 %.0.copyload.i739 to i64       ; 2 uses
  %.val682 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %.val682, i64 %i.bb
  %.0.copyload.i740 = load i32, ptr %i.bc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i740) #16, !srcloc !22
  %.val681 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw i8, ptr %.val681, i64 %i.bb
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.0.copyload.i741 = load i32, ptr %i.be, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i741) #16, !srcloc !22
  %.val680 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bf = getelementptr inbounds nuw i8, ptr %.val680, i64 %i.aj
  %.0.copyload.i742 = load i32, ptr %i.bf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i742) #16, !srcloc !22
  %i.bg = add i32 %.0.copyload.i742, -3           ; 4 uses
  %.not644 = icmp eq i32 %i.bg, 0
  br i1 %.not644, label %.loopexit770, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = icmp ugt i32 %i.bg, 1073741823
  br i1 %i.bh, label %.loopexit769, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = shl nuw i32 %i.bg, 2                    ; 2 uses
  %i.bj = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.bi) #16 ; 3 uses
  %i.bk = add i32 %i.bj, %i.bi
  br label %bb.g

bb.g:                                             ; preds = %bb.n, %bb.f
  %.2626 = phi i32 [ %i.bj, %bb.f ], [ %.3627, %bb.n ] ; 4 uses
  %.0622 = phi i32 [ %i.bk, %bb.f ], [ %.1623, %bb.n ] ; 3 uses
  %.0620 = phi i32 [ 1, %bb.f ], [ %i.cm, %bb.n ] ; 3 uses
  %.0 = phi i32 [ %i.bj, %bb.f ], [ %.1, %bb.n ]  ; 6 uses
  %.val679 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %.val679, i64 %i.az
  %.0.copyload.i743 = load i32, ptr %i.bl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i743) #16, !srcloc !22
  %i.bm = shl i32 %.0620, 3
  %i.bn = add i32 %i.bm, 16
  %i.bo = add i32 %i.bn, %.0.copyload.i743
  %i.bp = zext i32 %i.bo to i64
  %.val678 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bq = getelementptr inbounds nuw i8, ptr %.val678, i64 %i.bp
  %.0.copyload.i744 = load i32, ptr %i.bq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i744) #16, !srcloc !22
  %i.br = icmp ult i32 %.2626, %.0622
  br i1 %i.br, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bs = zext i32 %.2626 to i64
  %.val711 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %.val711, i64 %i.bs
  store i32 %.0.copyload.i744, ptr %i.bt, align 1
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.bu = sub i32 %.2626, %.0                     ; 3 uses
  %i.bv = ashr i32 %i.bu, 2
  %i.bw = add nsw i32 %i.bv, 1                    ; 2 uses
  %i.bx = icmp ugt i32 %i.bw, 1073741823
  br i1 %i.bx, label %.loopexit769, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = sub i32 %.0622, %.0                     ; 2 uses
  %i.bz = ashr i32 %i.by, 1
  %i.ca = tail call i32 @llvm.umax.i32(i32 %i.bw, i32 %i.bz)
  %i.cb = icmp ugt i32 %i.by, 2147483643
  %i.cc = select i1 %i.cb, i32 1073741823, i32 %i.ca ; 3 uses
  %.not645 = icmp eq i32 %i.cc, 0
  br i1 %.not645, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cd = icmp ugt i32 %i.cc, 1073741823
  br i1 %i.cd, label %bb.z, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = shl nuw i32 %i.cc, 2                    ; 2 uses
  %i.cf = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ce) #16
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %bb.l
  %.pre-phi = phi i32 [ %i.ce, %bb.l ], [ 0, %bb.j ]
  %.0618 = phi i32 [ %i.cf, %bb.l ], [ 0, %bb.j ] ; 2 uses
  %i.cg = and i32 %i.bu, -4
  %i.ch = add i32 %.0618, %i.cg                   ; 3 uses
  %i.ci = zext i32 %i.ch to i64
  %.val710 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cj = getelementptr inbounds nuw i8, ptr %.val710, i64 %i.ci
  store i32 %.0.copyload.i744, ptr %i.cj, align 1
  %i.ck = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.0618, i32 noundef %.0, i32 noundef %i.bu) #16 ; 3 uses
  %i.cl = add i32 %i.ck, %.pre-phi                ; 2 uses
  %.not646 = icmp eq i32 %.0, 0
  br i1 %.not646, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0)
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.m, %bb.h
  %.3627.in = phi i32 [ %.2626, %bb.h ], [ %i.ch, %bb.m ], [ %i.ch, %._crit_edge ]
  %.1623 = phi i32 [ %.0622, %bb.h ], [ %i.cl, %bb.m ], [ %i.cl, %._crit_edge ]
  %.1 = phi i32 [ %.0, %bb.h ], [ %i.ck, %bb.m ], [ %i.ck, %._crit_edge ] ; 2 uses
  %.3627 = add i32 %.3627.in, 4                   ; 2 uses
  %i.cm = add nuw nsw i32 %.0620, 1
  %.not647 = icmp eq i32 %.0620, %i.bg
  br i1 %.not647, label %.loopexit770, label %bb.g

.loopexit770:                                     ; preds = %bb.n, %bb.d
  %.4628 = phi i32 [ 0, %bb.d ], [ %.3627, %bb.n ]
  %.2 = phi i32 [ 0, %bb.d ], [ %.1, %bb.n ]      ; 4 uses
  %.val709 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cn = getelementptr inbounds nuw i8, ptr %.val709, i64 %i.z
  store i32 %.2, ptr %i.cn, align 1
  %i.co = sub i32 %.4628, %.2
  %i.cp = ashr i32 %i.co, 2
  %.val708 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cq = getelementptr inbounds nuw i8, ptr %.val708, i64 %i.e
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 %i.cp, ptr %i.cr, align 1
  %.val729 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cs = getelementptr inbounds nuw i8, ptr %.val729, i64 %i.z
  %.0.copyload.i745 = load i64, ptr %i.cs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i745) #16, !srcloc !45
  %.val722 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ct = getelementptr inbounds nuw i8, ptr %.val722, i64 %i.e
  store i64 %.0.copyload.i745, ptr %i.ct, align 1
  %.val677 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cu = getelementptr inbounds nuw i8, ptr %.val677, i64 %i.r
  %.0.copyload.i746 = load i32, ptr %i.cu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i746) #16, !srcloc !22
  %i.cv = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef 84) #16 ; 11 uses
  %.val728 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cw = getelementptr inbounds nuw i8, ptr %.val728, i64 %i.e
  %.0.copyload.i747 = load i64, ptr %i.cw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i747) #16, !srcloc !45
  %i.cx = zext i32 %i.cv to i64                   ; 14 uses
  %.val721 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cy = getelementptr inbounds nuw i8, ptr %.val721, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 20
  store i64 8589934592, ptr %i.cz, align 1
  %i.da = add i32 %i.cv, 28
  %.val707 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.db = getelementptr inbounds nuw i8, ptr %.val707, i64 %i.cx
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i32 %i.da, ptr %i.dc, align 1
  %.val706 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dd = getelementptr inbounds nuw i8, ptr %.val706, i64 %i.cx
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 10
  store i32 459775, ptr %i.de, align 1
  %.val720 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.df = getelementptr inbounds nuw i8, ptr %.val720, i64 %i.cx
  store i64 0, ptr %i.df, align 1
  %i.dg = add nuw nsw i64 %i.cx, 68               ; 2 uses
  %.val719 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dh = getelementptr inbounds nuw i8, ptr %.val719, i64 %i.dg
  store i64 0, ptr %i.dh, align 1
  %.val718 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.di = getelementptr inbounds nuw i8, ptr %.val718, i64 %i.cx
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 44
  store i64 8589934592, ptr %i.dj, align 1
  %i.dk = add i32 %i.cv, 52
  %.val705 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dl = getelementptr inbounds nuw i8, ptr %.val705, i64 %i.cx
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  store i32 %i.dk, ptr %i.dm, align 1
  %i.dn = add nuw nsw i64 %i.cx, 36               ; 2 uses
  %.val704 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.do = getelementptr inbounds nuw i8, ptr %.val704, i64 %i.dn
  store i32 0, ptr %i.do, align 1
  %.val730 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dp = getelementptr inbounds nuw i8, ptr %.val730, i64 %i.cx
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i8 96, ptr %i.dq, align 1
  %i.dr = add nuw nsw i64 %i.cx, 76               ; 2 uses
  %.val703 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ds = getelementptr inbounds nuw i8, ptr %.val703, i64 %i.dr
  store i32 0, ptr %i.ds, align 1
  %.val702 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dt = getelementptr inbounds nuw i8, ptr %.val702, i64 %i.cx
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 80
  store i32 %.0.copyload.i738, ptr %i.du, align 1
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.cv, i32 noundef %.0.copyload.i740) #16
  %i.dv = add i32 %.0.copyload.i746, 268
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.cv, i32 noundef %i.dv) #16
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.cv, i32 noundef %.0.copyload.i741) #16
  %i.dw = lshr i64 %.0.copyload.i747, 32          ; 2 uses
  %.not648 = icmp eq i64 %i.dw, 0
  br i1 %.not648, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %.loopexit770
  %i.dx = trunc nuw i64 %i.dw to i32
  %i.dy = trunc i64 %.0.copyload.i747 to i32      ; 2 uses
  %i.dz = shl i32 %i.dx, 2
  %i.ea = add i32 %i.dz, %i.dy
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.5 = phi i32 [ %i.dy, %bb.o ], [ %i.ed, %bb.p ] ; 2 uses
  %i.eb = zext i32 %.5 to i64
  %.val676 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ec = getelementptr inbounds nuw i8, ptr %.val676, i64 %i.eb
  %.0.copyload.i748 = load i32, ptr %i.ec, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i748) #16, !srcloc !22
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.cv, i32 noundef %.0.copyload.i748) #16
  %i.ed = add i32 %.5, 4                          ; 2 uses
  %.not649 = icmp eq i32 %i.ed, %i.ea
  br i1 %.not649, label %.loopexit, label %bb.p

.loopexit:                                        ; preds = %bb.p, %.loopexit770
  %.val675 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ee = getelementptr inbounds nuw i8, ptr %.val675, i64 %i.y
  %.0.copyload.i749 = load i32, ptr %i.ee, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i749) #16, !srcloc !22
  %i.ef = zext i32 %.0.copyload.i749 to i64
  %.val674 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.eg = getelementptr inbounds nuw i8, ptr %.val674, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 44
  %.0.copyload.i750 = load i32, ptr %i.eh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i750) #16, !srcloc !22
  %i.ei = zext i32 %.0.copyload.i750 to i64
  %.val727 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ej = getelementptr inbounds nuw i8, ptr %.val727, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 136
  %.0.copyload.i751 = load i64, ptr %i.ek, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i751) #16, !srcloc !45
  %i.el = and i64 %.0.copyload.i751, 1095216660480
  %.not650 = icmp eq i64 %i.el, 0
  %.val672 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.em = getelementptr inbounds nuw i8, ptr %.val672, i64 %i.p
  %.0.copyload.i753 = load i32, ptr %i.em, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i753) #16
  br i1 %.not650, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.en = trunc i64 %.0.copyload.i751 to i32
  br label %bb.t

bb.r:                                             ; preds = %.loopexit
  %i.eo = add i32 %.0.copyload.i749, 36
  %i.ep = icmp eq i32 %.0.copyload.i753, %i.eo
  br i1 %i.ep, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eq = zext i32 %.0.copyload.i753 to i64
  %.val671 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.er = getelementptr inbounds nuw i8, ptr %.val671, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 76
  %.0.copyload.i754 = load i32, ptr %i.es, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i754) #16, !srcloc !22
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %.0617 = phi i32 [ %i.en, %bb.q ], [ 0, %bb.r ], [ %.0.copyload.i754, %bb.s ]
  %.val701 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.et = getelementptr inbounds nuw i8, ptr %.val701, i64 %i.dr
  store i32 %.0617, ptr %i.et, align 1
  %.val670 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.eu = getelementptr inbounds nuw i8, ptr %.val670, i64 %i.n
  %.0.copyload.i755 = load i32, ptr %i.eu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i755) #16, !srcloc !22
  %.val700 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ev = getelementptr inbounds nuw i8, ptr %.val700, i64 %i.cx
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 72
  store i32 %.0.copyload.i755, ptr %i.ew, align 1
  %.val669 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ex = getelementptr inbounds nuw i8, ptr %.val669, i64 %i.x
  %.0.copyload.i756 = load i32, ptr %i.ex, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i756) #16, !srcloc !22
  %.val699 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ey = getelementptr inbounds nuw i8, ptr %.val699, i64 %i.dn
  store i32 %.0.copyload.i749, ptr %i.ey, align 1
  %.val698 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ez = getelementptr inbounds nuw i8, ptr %.val698, i64 %i.dg
  store i32 %.0.copyload.i756, ptr %i.ez, align 1
  %i.fa = zext i32 %.0.copyload.i753 to i64       ; 2 uses
  %.val668 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.fb = getelementptr inbounds nuw i8, ptr %.val668, i64 %i.fa
  %.0.copyload.i757 = load i32, ptr %i.fb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i757) #16, !srcloc !22
  %.val697 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.fc = getelementptr inbounds nuw i8, ptr %.val697, i64 %i.cx
  store i32 %.0.copyload.i757, ptr %i.fc, align 1
  %.val696 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.fd = getelementptr inbounds nuw i8, ptr %.val696, i64 %i.cx
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store i32 %.0.copyload.i753, ptr %i.fe, align 1
  %i.ff = zext i32 %.0.copyload.i757 to i64
  %.val695 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.fg = getelementptr inbounds nuw i8, ptr %.val695, i64 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  store i32 %i.cv, ptr %i.fh, align 1
  %.val694 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.fi = getelementptr inbounds nuw i8, ptr %.val694, i64 %i.fa
  store i32 %i.cv, ptr %i.fi, align 1
  %.not651 = icmp eq i32 %.2, 0
  br i1 %.not651, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.2)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.fj = add i32 %.0621, 8
  %i.fk = add i32 %i.cv, 8
end_hunk_0
begin_hunk_1_@w2c_hermes_0x5F_rem_pio2:bb.a
  br i1 %i.cq, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cr = add i32 %.01504, 1
  %i.cs = fadd double %i.ca, 1.000000e+00         ; 3 uses
  %i.ct = fmul double %i.cs, f0x3DD0B4611A626331
  %i.cu = fmul double %i.cs, f0x3FF921FB54400000
  %i.cv = fsub double %1, %i.cu
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.z
  %.01529 = phi i32 [ %i.cl, %bb.z ], [ %.01504, %bb.aa ], [ %i.cr, %bb.ab ]
  %.01512 = phi double [ %i.cp, %bb.z ], [ %i.cc, %bb.aa ], [ %i.cv, %bb.ab ] ; 4 uses
  %.01511 = phi double [ %i.cm, %bb.z ], [ %i.ca, %bb.aa ], [ %i.cs, %bb.ab ] ; 4 uses
  %.01509 = phi double [ %i.cn, %bb.z ], [ %i.cd, %bb.aa ], [ %i.ct, %bb.ab ] ; 2 uses
  %i.cw = fsub double %.01512, %.01509            ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.cy = zext i32 %2 to i64                      ; 4 uses
  %.val1658 = load ptr, ptr %i.cx, align 8, !tbaa !21
  %i.cz = getelementptr inbounds nuw i8, ptr %.val1658, i64 %i.cy
  store double %i.cw, ptr %i.cz, align 1
  %i.da = lshr i32 %i.g, 20                       ; 2 uses
  %i.db = bitcast double %i.cw to i64
  %i.dc = lshr i64 %i.db, 52
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = and i32 %i.dd, 2047
  %i.df = sub nsw i32 %i.da, %i.de
  %i.dg = icmp slt i32 %i.df, 17
  br i1 %i.dg, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dh = fmul double %.01511, f0x3DD0B4611A600000 ; 2 uses
  %i.di = fsub double %.01512, %i.dh              ; 5 uses
  %i.dj = fmul double %.01511, f0x3BA3198A2E037073
  %i.dk = fsub double %.01512, %i.di
  %i.dl = fsub double %i.dk, %i.dh
  %i.dm = fsub double %i.dj, %i.dl                ; 2 uses
  %i.dn = fsub double %i.di, %i.dm                ; 3 uses
  %.val1657 = load ptr, ptr %i.cx, align 8, !tbaa !21
  %i.do = getelementptr inbounds nuw i8, ptr %.val1657, i64 %i.cy
  store double %i.dn, ptr %i.do, align 1
  %i.dp = bitcast double %i.dn to i64
  %i.dq = lshr i64 %i.dp, 52
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = and i32 %i.dr, 2047
  %i.dt = sub nsw i32 %i.da, %i.ds
  %i.du = icmp slt i32 %i.dt, 50
  br i1 %i.du, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dv = fmul double %.01511, f0x3BA3198A2E000000 ; 2 uses
  %i.dw = fsub double %i.di, %i.dv                ; 3 uses
  %i.dx = fmul double %.01511, f0x397B839A252049C1
  %i.dy = fsub double %i.di, %i.dw
  %i.dz = fsub double %i.dy, %i.dv
  %i.ea = fsub double %i.dx, %i.dz                ; 2 uses
  %i.eb = fsub double %i.dw, %i.ea                ; 2 uses
  %.val1656 = load ptr, ptr %i.cx, align 8, !tbaa !21
  %i.ec = getelementptr inbounds nuw i8, ptr %.val1656, i64 %i.cy
  store double %i.eb, ptr %i.ec, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ac, %bb.ae
  %.11513 = phi double [ %.01512, %bb.ac ], [ %i.dw, %bb.ae ], [ %i.di, %bb.ad ]
  %.11510 = phi double [ %.01509, %bb.ac ], [ %i.ea, %bb.ae ], [ %i.dm, %bb.ad ]
  %.01498 = phi double [ %i.cw, %bb.ac ], [ %i.eb, %bb.ae ], [ %i.dn, %bb.ad ]
  %i.ed = fsub double %.11513, %.01498
  %i.ee = fsub double %i.ed, %.11510
  %.val1655 = load ptr, ptr %i.cx, align 8, !tbaa !21
  %i.ef = getelementptr inbounds nuw i8, ptr %.val1655, i64 %i.cy
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store double %i.ee, ptr %i.eg, align 1
  br label %bb.da

bb.ag:                                            ; preds = %bb.t
  %i.eh = icmp samesign ugt i32 %i.g, 2146435071
  br i1 %i.eh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ei = fsub double %1, %1                      ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ek = zext i32 %2 to i64                      ; 2 uses
  %.val1654 = load ptr, ptr %i.ej, align 8, !tbaa !21
  %i.el = getelementptr inbounds nuw i8, ptr %.val1654, i64 %i.ek
  store double %i.ei, ptr %i.el, align 1
  %.val1653 = load ptr, ptr %i.ej, align 8, !tbaa !21
  %i.em = getelementptr inbounds nuw i8, ptr %.val1653, i64 %i.ek
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store double %i.ei, ptr %i.en, align 1
  br label %bb.da

bb.ai:                                            ; preds = %bb.ag
  %i.eo = and i64 %i.d, 4503599627370495
  %i.ep = or disjoint i64 %i.eo, 4710765210229538816
  %i.eq = bitcast i64 %i.ep to double             ; 4 uses
  %i.er = add i32 %i.b, -32                       ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 52 uses
  %i.et = fcmp olt double %i.eq, f0x41E0000000000000
  br i1 %i.et, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.eu = fcmp ule double %i.eq, f0xC1E0000000200000
  br i1 %i.eu, label %bb.ak, label %bb.al, !prof !28

bb.ak:                                            ; preds = %bb.an, %bb.aj
  tail call void @wasm_rt_trap(i32 noundef 2) #17
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.ev = fptosi double %i.eq to i32
  %i.ew = sitofp i32 %i.ev to double
  br label %bb.am

bb.am:                                            ; preds = %bb.ai, %bb.al
  %.01499 = phi double [ %i.ew, %bb.al ], [ f0xC1E0000000000000, %bb.ai ] ; 2 uses
  %i.ex = zext i32 %i.er to i64
  %.val1652 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.ey = getelementptr inbounds nuw i8, ptr %.val1652, i64 %i.ex
  store double %.01499, ptr %i.ey, align 1
  %i.ez = fsub nnan double %i.eq, %.01499
  %i.fa = fmul nnan double %i.ez, f0x4170000000000000 ; 5 uses
  %i.fb = add i32 %i.b, -24
  %i.fc = tail call noundef double @llvm.fabs.f64(double %i.fa)
  %i.fd = fcmp olt double %i.fc, f0x41E0000000000000
  br i1 %i.fd, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.fe = fcmp ule double %i.fa, f0xC1E0000000200000
  %i.ff = fcmp uge double %i.fa, f0x41E0000000000000
  %.not1566.1 = or i1 %i.fe, %i.ff
  br i1 %.not1566.1, label %bb.ak, label %bb.ao, !prof !28

bb.ao:                                            ; preds = %bb.an
  %i.fg = fptosi double %i.fa to i32
  %i.fh = sitofp i32 %i.fg to double
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %.01499.1 = phi double [ %i.fh, %bb.ao ], [ f0xC1E0000000000000, %bb.am ] ; 2 uses
  %i.fi = zext i32 %i.fb to i64
  %.val1652.1 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.fj = getelementptr inbounds nuw i8, ptr %.val1652.1, i64 %i.fi
  store double %.01499.1, ptr %i.fj, align 1
  %i.fk = fsub nnan double %i.fa, %.01499.1
  %i.fl = fmul nnan double %i.fk, f0x4170000000000000
  %i.fm = zext i32 %i.c to i64                    ; 4 uses
  %.val1651 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.fn = getelementptr inbounds nuw i8, ptr %.val1651, i64 %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  store double %i.fl, ptr %i.fo, align 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %bb.ap
  %.21531 = phi i32 [ 2, %bb.ap ], [ %i.fp, %bb.aq ] ; 10 uses
  %i.fp = add i32 %.21531, -1
  %i.fq = shl i32 %.21531, 3
  %i.fr = add i32 %i.fq, %i.er
  %i.fs = zext i32 %i.fr to i64
  %.val1638 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.ft = getelementptr inbounds nuw i8, ptr %.val1638, i64 %i.fs
  %.0.copyload.i = load double, ptr %i.ft, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i) #16, !srcloc !48
  %i.fu = fcmp oeq double %.0.copyload.i, 0.000000e+00
  br i1 %i.fu, label %bb.aq, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fv = load i32, ptr %i.a, align 8, !tbaa !19  ; 7 uses
  %i.fw = add i32 %i.fv, -560                     ; 16 uses
  store i32 %i.fw, ptr %i.a, align 8, !tbaa !19
  %i.fx = lshr i32 %i.g, 20                       ; 2 uses
  %i.fy = add nsw i32 %i.fx, -1046
  %i.fz = trunc nuw nsw i32 %i.fx to i16
  %.lhs.trunc = add nsw i16 %i.fz, -1049
  %i.ga = sdiv i16 %.lhs.trunc, 24
  %i.gb = zext nneg i16 %i.ga to i32              ; 3 uses
  %i.gc = mul nsw i32 %i.gb, -24
  %i.gd = add nsw i32 %i.fy, %i.gc                ; 7 uses
  %.val1617 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.ge = getelementptr inbounds nuw i8, ptr %.val1617, i64 241956
  %.0.copyload.i1675 = load i32, ptr %i.ge, align 1 ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1675) #16, !srcloc !22
  %i.gf = add i32 %.21531, 1                      ; 2 uses
  %i.gg = add i32 %.0.copyload.i1675, %.21531
  %i.gh = icmp sgt i32 %i.gg, -1
  br i1 %i.gh, label %bb.as, label %..loopexit1716_crit_edge

..loopexit1716_crit_edge:                         ; preds = %bb.ar
  %.pre1794 = add i32 %i.fv, -240
  br label %.loopexit1716

bb.as:                                            ; preds = %bb.ar
  %i.gi = add i32 %.0.copyload.i1675, %i.gf
  %i.gj = sub i32 %i.gb, %.21531
  %i.gk = add i32 %i.fv, -240                     ; 2 uses
  %i.gl = zext i32 %i.gi to i64
  br label %bb.at

bb.at:                                            ; preds = %bb.av, %bb.as
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.av ], [ 0, %bb.as ] ; 2 uses
  %.11540 = phi i32 [ %i.gx, %bb.av ], [ %i.gj, %bb.as ] ; 3 uses
  %i.gm = trunc nuw nsw i64 %indvars.iv to i32
  %i.gn = shl i32 %i.gm, 3
  %i.go = add i32 %i.gk, %i.gn
  %i.gp = icmp slt i32 %.11540, 0
  br i1 %i.gp, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gq = shl i32 %.11540, 2
  %i.gr = add i32 %i.gq, 241968
  %i.gs = zext i32 %i.gr to i64
  %.val1616 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.gt = getelementptr inbounds nuw i8, ptr %.val1616, i64 %i.gs
  %.0.copyload.i1676 = load i32, ptr %i.gt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1676) #16, !srcloc !22
  %i.gu = sitofp i32 %.0.copyload.i1676 to double
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %.0 = phi double [ %i.gu, %bb.au ], [ 0.000000e+00, %bb.at ]
  %i.gv = zext i32 %i.go to i64
  %.val1650 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.gw = getelementptr inbounds nuw i8, ptr %.val1650, i64 %i.gv
  store double %.0, ptr %i.gw, align 1
  %i.gx = add i32 %.11540, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not1567 = icmp eq i64 %indvars.iv.next, %i.gl
  br i1 %.not1567, label %.loopexit1716, label %bb.at

.loopexit1716:                                    ; preds = %bb.av, %..loopexit1716_crit_edge
  %.pre-phi1795 = phi i32 [ %.pre1794, %..loopexit1716_crit_edge ], [ %i.gk, %bb.av ] ; 3 uses
  %i.gy = add nsw i32 %i.gd, -24                  ; 6 uses
  %i.gz = tail call i32 @llvm.smax.i32(i32 %.0.copyload.i1675, i32 0) ; 2 uses
  %i.ha = icmp ugt i32 %.21531, 2147483646
  br i1 %i.ha, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %.loopexit1716
  %i.hb = zext nneg i32 %.21531 to i64            ; 2 uses
  %i.hc = zext nneg i32 %i.gz to i64
  br label %.split

.split.us.preheader:                              ; preds = %.loopexit1716
  %narrow = add nuw i32 %i.gz, 1
  %i.hd = zext i32 %narrow to i64                 ; 2 uses
  %xtraiter = and i64 %i.hd, 3                    ; 3 uses
  %i.he = icmp slt i32 %.0.copyload.i1675, 3
  br i1 %i.he, label %.split.us.epil.preheader, label %.split.us.preheader.new

.split.us.preheader.new:                          ; preds = %.split.us.preheader
  %unroll_iter = and i64 %i.hd, 4294967292
  br label %.split.us

.split.us:                                        ; preds = %.split.us, %.split.us.preheader.new
  %indvars.iv1767 = phi i64 [ 0, %.split.us.preheader.new ], [ %indvars.iv.next1768.3, %.split.us ] ; 5 uses
  %niter = phi i64 [ 0, %.split.us.preheader.new ], [ %niter.next.3, %.split.us ]
  %i.hf = trunc nuw nsw i64 %indvars.iv1767 to i32
  %i.hg = shl i32 %i.hf, 3
  %i.hh = add i32 %i.hg, %i.fw
  %i.hi = zext i32 %i.hh to i64
  %.val1649.us = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.hj = getelementptr inbounds nuw i8, ptr %.val1649.us, i64 %i.hi
  store double 0.000000e+00, ptr %i.hj, align 1
  %i.hk = trunc i64 %indvars.iv1767 to i32
  %i.hl = shl i32 %i.hk, 3
  %i.hm = or disjoint i32 %i.hl, 8
  %i.hn = add i32 %i.hm, %i.fw
  %i.ho = zext i32 %i.hn to i64
  %.val1649.us.1 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.hp = getelementptr inbounds nuw i8, ptr %.val1649.us.1, i64 %i.ho
  store double 0.000000e+00, ptr %i.hp, align 1
  %i.hq = trunc i64 %indvars.iv1767 to i32
  %i.hr = shl i32 %i.hq, 3
  %i.hs = or disjoint i32 %i.hr, 16
  %i.ht = add i32 %i.hs, %i.fw
  %i.hu = zext i32 %i.ht to i64
  %.val1649.us.2 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.hv = getelementptr inbounds nuw i8, ptr %.val1649.us.2, i64 %i.hu
  store double 0.000000e+00, ptr %i.hv, align 1
  %i.hw = trunc i64 %indvars.iv1767 to i32
  %i.hx = shl i32 %i.hw, 3
  %i.hy = or disjoint i32 %i.hx, 24
  %i.hz = add i32 %i.hy, %i.fw
  %i.ia = zext i32 %i.hz to i64
  %.val1649.us.3 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.ib = getelementptr inbounds nuw i8, ptr %.val1649.us.3, i64 %i.ia
  store double 0.000000e+00, ptr %i.ib, align 1
  %indvars.iv.next1768.3 = add nuw nsw i64 %indvars.iv1767, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.split1740.us.loopexit.unr-lcssa, label %.split.us

.split:                                           ; preds = %.split.preheader, %.loopexit1715
  %indvars.iv1764 = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next1765, %.loopexit1715 ] ; 3 uses
  %i.ic = trunc nuw nsw i64 %indvars.iv1764 to i32 ; 2 uses
  %i.id = add i32 %.21531, %i.ic
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.split
  %indvars.iv1761 = phi i64 [ %indvars.iv.next1762, %bb.aw ], [ 0, %.split ] ; 3 uses
  %.2 = phi double [ %i.ip, %bb.aw ], [ 0.000000e+00, %.split ]
  %i.ie = trunc nuw i64 %indvars.iv1761 to i32    ; 2 uses
  %i.if = shl i32 %i.ie, 3
  %i.ig = add i32 %i.if, %i.er
  %i.ih = zext i32 %i.ig to i64
  %.val1637 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.ii = getelementptr inbounds nuw i8, ptr %.val1637, i64 %i.ih
  %.0.copyload.i1677 = load double, ptr %i.ii, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i1677) #16, !srcloc !48
  %i.ij = sub i32 %i.id, %i.ie
  %i.ik = shl i32 %i.ij, 3
  %i.il = add i32 %.pre-phi1795, %i.ik
  %i.im = zext i32 %i.il to i64
  %.val1636 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.in = getelementptr inbounds nuw i8, ptr %.val1636, i64 %i.im
  %.0.copyload.i1678 = load double, ptr %i.in, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i1678) #16, !srcloc !48
  %i.io = fmul double %.0.copyload.i1677, %.0.copyload.i1678
  %i.ip = fadd double %.2, %i.io                  ; 2 uses
  %indvars.iv.next1762 = add nuw nsw i64 %indvars.iv1761, 1
  %.not1568 = icmp eq i64 %indvars.iv1761, %i.hb
  br i1 %.not1568, label %.loopexit1715, label %bb.aw

.loopexit1715:                                    ; preds = %bb.aw
  %i.iq = shl i32 %i.ic, 3
  %i.ir = add i32 %i.iq, %i.fw
  %i.is = zext i32 %i.ir to i64
  %.val1649 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.it = getelementptr inbounds nuw i8, ptr %.val1649, i64 %i.is
  store double %i.ip, ptr %i.it, align 1
  %.not1569 = icmp eq i64 %indvars.iv1764, %i.hc
  %indvars.iv.next1765 = add nuw nsw i64 %indvars.iv1764, 1
  br i1 %.not1569, label %.split1740.us, label %.split

.split1740.us.loopexit.unr-lcssa:                 ; preds = %.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split1740.us.loopexit, label %.split.us.epil.preheader

.split.us.epil.preheader:                         ; preds = %.split1740.us.loopexit.unr-lcssa, %.split.us.preheader
  %indvars.iv1767.epil.init = phi i64 [ 0, %.split.us.preheader ], [ %indvars.iv.next1768.3, %.split1740.us.loopexit.unr-lcssa ]
  %lcmp.mod1873 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1873)
  br label %.split.us.epil

.split.us.epil:                                   ; preds = %.split.us.epil, %.split.us.epil.preheader
  %indvars.iv1767.epil = phi i64 [ %indvars.iv1767.epil.init, %.split.us.epil.preheader ], [ %indvars.iv.next1768.epil, %.split.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.split.us.epil.preheader ], [ %epil.iter.next, %.split.us.epil ]
  %i.iu = trunc nuw nsw i64 %indvars.iv1767.epil to i32
  %i.iv = shl i32 %i.iu, 3
  %i.iw = add i32 %i.iv, %i.fw
  %i.ix = zext i32 %i.iw to i64
  %.val1649.us.epil = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.iy = getelementptr inbounds nuw i8, ptr %.val1649.us.epil, i64 %i.ix
  store double 0.000000e+00, ptr %i.iy, align 1
  %indvars.iv.next1768.epil = add nuw nsw i64 %indvars.iv1767.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.split1740.us.loopexit, label %.split.us.epil, !llvm.loop !63

.split1740.us.loopexit:                           ; preds = %.split.us.epil, %.split1740.us.loopexit.unr-lcssa
  %.pre = zext i32 %.21531 to i64
  br label %.split1740.us

.split1740.us:                                    ; preds = %.loopexit1715, %.split1740.us.loopexit
  %.pre-phi = phi i64 [ %.pre, %.split1740.us.loopexit ], [ %i.hb, %.loopexit1715 ]
  %i.iz = sub nsw i32 15, %i.gd
  %i.ja = sub nsw i32 16, %i.gd
  %i.jb = add i32 %i.fv, -80                      ; 8 uses
  %i.jc = icmp sgt i32 %i.gd, 24                  ; 2 uses
  %.not1580 = icmp eq i32 %i.gy, 0
  %i.jd = and i32 %i.ja, 31                       ; 2 uses
  %i.je = and i32 %i.iz, 31
  %i.jf = icmp ult i32 %.21531, 2147483647
  br label %.loopexit1709

.loopexit1709:                                    ; preds = %.loopexit1708, %.split1740.us
  %.41533 = phi i32 [ %.0.copyload.i1675, %.split1740.us ], [ %i.ni, %.loopexit1708 ] ; 17 uses
  %i.jg = shl i32 %.41533, 3
  %i.jh = add i32 %i.jg, %i.fw
  %i.ji = zext i32 %i.jh to i64
  %.val1635 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.jj = getelementptr inbounds nuw i8, ptr %.val1635, i64 %i.ji
  %.0.copyload.i1679 = load double, ptr %i.jj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i1679) #16, !srcloc !48
  %i.jk = icmp sgt i32 %.41533, 0                 ; 2 uses
  br i1 %i.jk, label %.preheader1713.preheader, label %.loopexit1714

.preheader1713.preheader:                         ; preds = %.loopexit1709
  %i.jl = zext nneg i32 %.41533 to i64
  br label %.preheader1713

.preheader1713:                                   ; preds = %.preheader1713.preheader, %bb.be
  %indvars.iv1770 = phi i64 [ 0, %.preheader1713.preheader ], [ %indvars.iv.next1771, %bb.be ] ; 2 uses
  %.11524 = phi i32 [ %.41533, %.preheader1713.preheader ], [ %i.kf, %bb.be ]
  %.4 = phi double [ %.0.copyload.i1679, %.preheader1713.preheader ], [ %i.kk, %bb.be ] ; 2 uses
  %i.jm = trunc nuw nsw i64 %indvars.iv1770 to i32
  %i.jn = shl i32 %i.jm, 2
  %i.jo = add i32 %i.jb, %i.jn
  %i.jp = fmul double %.4, f0x3E70000000000000    ; 4 uses
  %i.jq = tail call noundef double @llvm.fabs.f64(double %i.jp)
  %i.jr = fcmp olt double %i.jq, f0x41E0000000000000
  br i1 %i.jr, label %bb.ax, label %bb.ba

end_hunk_1
