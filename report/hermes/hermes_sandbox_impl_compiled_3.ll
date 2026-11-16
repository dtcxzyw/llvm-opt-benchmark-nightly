Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_3?download=true
inline.NumInlined: 12272
inline.NumDeleted: 21
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGeneratorInnerFunction0x3A0x3AcallInnerFunction0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AGeneratorInnerFunction0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AGeneratorInnerFunction0x3A0x3AAction0x29:bb.a

bb.y:                                             ; preds = %bb.x
  %i.cz = and i64 %.0669, 4294967295
  %.val766 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.da = getelementptr inbounds nuw i8, ptr %.val766, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.0.copyload.i787 = load i64, ptr %i.db, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i787) #8, !srcloc !22
  %i.dc = add i32 %3, 5616
  %i.dd = zext i32 %i.dc to i64
  %.val720 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.de = getelementptr inbounds nuw i8, ptr %.val720, i64 %i.dd
  %.0.copyload.i788 = load i32, ptr %i.de, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i788) #8, !srcloc !13
  %i.df = add nuw nsw i64 %i.br, 5612             ; 2 uses
  %.val719 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dg = getelementptr inbounds nuw i8, ptr %.val719, i64 %i.df
  %.0.copyload.i789 = load i32, ptr %i.dg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i789) #8, !srcloc !13
  %i.dh = sub i32 %.0.copyload.i789, %i.c
  %i.di = icmp ult i32 %.0.copyload.i788, %i.dh
  br i1 %i.di, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.dj = add i32 %i.b, -16
  %i.dk = add i32 %3, 5620
  %i.dl = zext i32 %i.dk to i64
  %.val718 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dm = getelementptr inbounds nuw i8, ptr %.val718, i64 %i.dl
  %.0.copyload.i790 = load i32, ptr %i.dm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i790) #8, !srcloc !13
  tail call void @w2c_hermes_hermes0x3A0x3Aoscompat0x3A0x3Athread_stack_bounds0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.dj, i32 noundef %.0.copyload.i790) #8
  %.val717 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dn = getelementptr inbounds nuw i8, ptr %.val717, i64 %i.ch
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %.0.copyload.i791 = load i32, ptr %i.do, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i791) #8, !srcloc !13
  %.val738 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dp = getelementptr inbounds nuw i8, ptr %.val738, i64 %i.df
  store i32 %.0.copyload.i791, ptr %i.dp, align 1
  %.val716 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dq = getelementptr inbounds nuw i8, ptr %.val716, i64 %i.ch
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 20
  %.0.copyload.i792 = load i32, ptr %i.dr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i792) #8, !srcloc !13
  %.val737 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ds = getelementptr inbounds nuw i8, ptr %.val737, i64 %i.br
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 5616
  store i32 %.0.copyload.i792, ptr %i.dt, align 1
  %i.du = sub i32 %.0.copyload.i791, %i.c
  %i.dv = icmp ugt i32 %i.du, %.0.copyload.i792
  br i1 %i.dv, label %bb.ap, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val715 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dw = getelementptr inbounds nuw i8, ptr %.val715, i64 %i.cm
  %.0.copyload.i793 = load i32, ptr %i.dw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i793) #8, !srcloc !13
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.aa
  %.0667 = phi i32 [ %.0.copyload.i793, %bb.aa ], [ %.0.copyload.i784, %bb.y ]
  %i.dx = shl i32 %i.cv, 3
  %i.dy = add i32 %.0667, %i.dx                   ; 9 uses
  %.val736 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dz = getelementptr inbounds nuw i8, ptr %.val736, i64 %i.cm
  store i32 %i.dy, ptr %i.dz, align 1
  %.val770 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ea = getelementptr inbounds nuw i8, ptr %.val770, i64 %i.br
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 5608
  %.0.copyload.i794 = load i32, ptr %i.eb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i794) #8, !srcloc !23
  %i.ec = zext i32 %.0.copyload.i794 to i64
  %i.ed = add i32 %i.dy, -24
  %i.ee = zext i32 %i.ed to i64                   ; 2 uses
  %.val757 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ef = getelementptr inbounds nuw i8, ptr %.val757, i64 %i.ee
  store i64 0, ptr %i.ef, align 1
  %i.eg = add i32 %i.dy, -8
  %i.eh = zext i32 %i.eg to i64
  %.val756 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ei = getelementptr inbounds nuw i8, ptr %.val756, i64 %i.eh
  store i64 %i.ec, ptr %i.ei, align 1
  %i.ej = add i32 %i.dy, -32
  %i.ek = zext i32 %.0.copyload.i786 to i64
  %i.el = or disjoint i64 %i.ek, -1125899906842624
  %i.em = zext i32 %i.ej to i64
  %.val755 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.en = getelementptr inbounds nuw i8, ptr %.val755, i64 %i.em
  store i64 %i.el, ptr %i.en, align 1
  %i.eo = add i32 %i.dy, -40
  %i.ep = zext i32 %i.eo to i64
  %.val754 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.eq = getelementptr inbounds nuw i8, ptr %.val754, i64 %i.ep
  store i64 -1688849860263936, ptr %i.eq, align 1
  %i.er = add i32 %i.dy, -48
  %i.es = zext i32 %i.er to i64
  %.val753 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.et = getelementptr inbounds nuw i8, ptr %.val753, i64 %i.es
  store i64 %.0.copyload.i785, ptr %i.et, align 1
  %i.eu = add i32 %i.dy, -56
  %i.ev = zext i32 %i.eu to i64
  %.val752 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ew = getelementptr inbounds nuw i8, ptr %.val752, i64 %i.ev
  store i64 %.0.copyload.i787, ptr %i.ew, align 1
  %.val751 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ex = getelementptr inbounds nuw i8, ptr %.val751, i64 %i.ee
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i64 0, ptr %i.ey, align 1
  %.not683 = icmp eq i32 %.0.copyload.i786, 0
  br i1 %.not683, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ez = add i32 %i.dy, -64                      ; 4 uses
  %i.fa = icmp ugt i32 %.0.copyload.i786, 3
  br i1 %i.fa, label %bb.ad, label %.loopexit825

bb.ad:                                            ; preds = %bb.ac
  %i.fb = and i32 %.0.copyload.i786, -4           ; 2 uses
  %i.fc = zext i32 %.0675 to i64                  ; 4 uses
  %i.fd = add i32 %i.dy, -80
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %bb.ad
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %i.fe = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.ff = shl i32 %i.fe, 3                        ; 5 uses
  %i.fg = sub i32 %i.ez, %i.ff
  %.val714 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fh = getelementptr inbounds nuw i8, ptr %.val714, i64 %i.fc
  %.0.copyload.i795 = load i32, ptr %i.fh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i795) #8, !srcloc !13
  %i.fi = or disjoint i32 %i.ff, 8
  %i.fj = add i32 %i.fi, %.0.copyload.i795
  %i.fk = zext i32 %i.fj to i64
  %.val765 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fl = getelementptr inbounds nuw i8, ptr %.val765, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %.0.copyload.i796 = load i64, ptr %i.fm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i796) #8, !srcloc !22
  %i.fn = zext i32 %i.fg to i64
  %.val750 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fo = getelementptr inbounds nuw i8, ptr %.val750, i64 %i.fn
  store i64 %.0.copyload.i796, ptr %i.fo, align 1
  %i.fp = xor i32 %i.fe, -1
  %i.fq = shl i32 %i.fp, 3
  %i.fr = add i32 %i.fq, %i.ez
  %.val713 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fs = getelementptr inbounds nuw i8, ptr %.val713, i64 %i.fc
  %.0.copyload.i797 = load i32, ptr %i.fs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i797) #8, !srcloc !13
  %i.ft = or disjoint i32 %i.ff, 16
  %i.fu = add i32 %i.ft, %.0.copyload.i797
  %i.fv = zext i32 %i.fu to i64
  %.val764 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fw = getelementptr inbounds nuw i8, ptr %.val764, i64 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %.0.copyload.i798 = load i64, ptr %i.fx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i798) #8, !srcloc !22
  %i.fy = zext i32 %i.fr to i64
  %.val749 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fz = getelementptr inbounds nuw i8, ptr %.val749, i64 %i.fy
  store i64 %.0.copyload.i798, ptr %i.fz, align 1
  %i.ga = sub i32 %i.fd, %i.ff
  %i.gb = or disjoint i32 %i.ff, 24               ; 2 uses
  %.val712 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gc = getelementptr inbounds nuw i8, ptr %.val712, i64 %i.fc
  %.0.copyload.i799 = load i32, ptr %i.gc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i799) #8, !srcloc !13
  %i.gd = add i32 %.0.copyload.i799, %i.gb
  %i.ge = zext i32 %i.gd to i64
  %.val763 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gf = getelementptr inbounds nuw i8, ptr %.val763, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %.0.copyload.i800 = load i64, ptr %i.gg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i800) #8, !srcloc !22
  %i.gh = zext i32 %i.ga to i64
  %.val748 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gi = getelementptr inbounds nuw i8, ptr %.val748, i64 %i.gh
  store i64 %.0.copyload.i800, ptr %i.gi, align 1
  %i.gj = sub i32 %i.ez, %i.gb
  %.val711 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gk = getelementptr inbounds nuw i8, ptr %.val711, i64 %i.fc
  %.0.copyload.i801 = load i32, ptr %i.gk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i801) #8, !srcloc !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars827 = trunc i64 %indvars.iv.next to i32 ; 2 uses
  %i.gl = shl i32 %indvars827, 3
  %i.gm = add i32 %.0.copyload.i801, %i.gl
  %i.gn = zext i32 %i.gm to i64
  %.val762 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.go = getelementptr inbounds nuw i8, ptr %.val762, i64 %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %.0.copyload.i802 = load i64, ptr %i.gp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i802) #8, !srcloc !22
  %i.gq = zext i32 %i.gj to i64
  %.val747 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gr = getelementptr inbounds nuw i8, ptr %.val747, i64 %i.gq
  store i64 %.0.copyload.i802, ptr %i.gr, align 1
  %.not684 = icmp eq i32 %i.fb, %indvars827
  br i1 %.not684, label %.loopexit825.loopexit, label %bb.ae

.loopexit825.loopexit:                            ; preds = %bb.ae
  %6 = zext i32 %i.fb to i64
  br label %.loopexit825

.loopexit825:                                     ; preds = %.loopexit825.loopexit, %bb.ac
  %.3 = phi i64 [ 0, %bb.ac ], [ %6, %.loopexit825.loopexit ]
  %i.gs = and i32 %.0.copyload.i786, 3            ; 2 uses
  %.not685 = icmp eq i32 %i.gs, 0
  br i1 %.not685, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit825
  %i.gt = zext i32 %.0675 to i64
  br label %bb.af

bb.af:                                            ; preds = %.preheader, %bb.af
  %indvars.iv829 = phi i64 [ %.3, %.preheader ], [ %indvars.iv.next830, %bb.af ] ; 2 uses
  %.4 = phi i32 [ 0, %.preheader ], [ %i.he, %bb.af ]
  %7 = trunc nuw i64 %indvars.iv829 to i32
  %i.gu = shl i32 %7, 3
  %i.gv = sub i32 %i.ez, %i.gu
  %.val710 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gw = getelementptr inbounds nuw i8, ptr %.val710, i64 %i.gt
  %.0.copyload.i803 = load i32, ptr %i.gw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i803) #8, !srcloc !13
  %indvars.iv.next830 = add nuw nsw i64 %indvars.iv829, 1 ; 2 uses
  %8 = trunc nuw i64 %indvars.iv.next830 to i32
  %i.gx = shl i32 %8, 3
  %i.gy = add i32 %.0.copyload.i803, %i.gx
  %i.gz = zext i32 %i.gy to i64
  %.val761 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ha = getelementptr inbounds nuw i8, ptr %.val761, i64 %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %.0.copyload.i804 = load i64, ptr %i.hb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i804) #8, !srcloc !22
  %i.hc = zext i32 %i.gv to i64
  %.val746 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hd = getelementptr inbounds nuw i8, ptr %.val746, i64 %i.hc
  store i64 %.0.copyload.i804, ptr %i.hd, align 1
  %i.he = add nuw nsw i32 %.4, 1                  ; 2 uses
  %.not686 = icmp eq i32 %i.he, %i.gs
  br i1 %.not686, label %.loopexit, label %bb.af

.loopexit:                                        ; preds = %bb.af, %.loopexit825, %bb.ab
  %i.hf = add i32 %i.b, -16
  %i.hg = add i32 %3, 1288
  %i.hh = zext i32 %i.hg to i64
  %.val709 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hi = getelementptr inbounds nuw i8, ptr %.val709, i64 %i.hh
  %.0.copyload.i805 = load i32, ptr %i.hi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i805) #8, !srcloc !13
  %.val708 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hj = getelementptr inbounds nuw i8, ptr %.val708, i64 %i.bb
  %.0.copyload.i806 = load i32, ptr %i.hj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i806) #8, !srcloc !13
  %i.hk = zext i32 %.0.copyload.i806 to i64
  %.val707 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hl = getelementptr inbounds nuw i8, ptr %.val707, i64 %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %.0.copyload.i807 = load i32, ptr %i.hm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i807) #8, !srcloc !13
  %i.hn = xor i32 %.0.copyload.i807, %.0.copyload.i805 ; 3 uses
  %i.ho = zext i32 %i.hn to i64
  %.val706 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hp = getelementptr inbounds nuw i8, ptr %.val706, i64 %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %.0.copyload.i808 = load i32, ptr %i.hq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i808) #8, !srcloc !13
  %.not687 = icmp eq i32 %.0.copyload.i808, 0
  br i1 %.not687, label %bb.ag, label %bb.ao

bb.ag:                                            ; preds = %.loopexit
  %i.hr = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACodeBlock0x3A0x3AlazyCompileImpl0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x29(ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef %3)
  %.not688 = icmp eq i32 %i.hr, 0
  br i1 %.not688, label %bb.aq, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val705 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hs = getelementptr inbounds nuw i8, ptr %.val705, i64 %i.bb
  %.0.copyload.i809 = load i32, ptr %i.hs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i809) #8, !srcloc !13
  %i.ht = zext i32 %.0.copyload.i809 to i64       ; 2 uses
  %.val704 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hu = getelementptr inbounds nuw i8, ptr %.val704, i64 %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 36
  %.0.copyload.i810 = load i32, ptr %i.hv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i810) #8, !srcloc !13
  %i.hw = add i32 %i.b, -20
  %i.hx = add nuw nsw i64 %i.br, 1288             ; 2 uses
  %.val703 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hy = getelementptr inbounds nuw i8, ptr %.val703, i64 %i.hx
  %.0.copyload.i811 = load i32, ptr %i.hy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i811) #8, !srcloc !13
  %.val702 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hz = getelementptr inbounds nuw i8, ptr %.val702, i64 %i.ht
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %.0.copyload.i812 = load i32, ptr %i.ia, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i812) #8, !srcloc !13
  %i.ib = xor i32 %.0.copyload.i812, %.0.copyload.i811
  %i.ic = zext i32 %i.ib to i64
  %.val701 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.id = getelementptr inbounds nuw i8, ptr %.val701, i64 %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  %.0.copyload.i813 = load i32, ptr %i.ie, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i813) #8, !srcloc !13
  %i.if = and i32 %.0.copyload.i813, 1
  %.not689 = icmp eq i32 %i.if, 0
  %i.ig = zext i32 %.0.copyload.i813 to i64
  %.val699 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ih = getelementptr inbounds nuw i8, ptr %.val699, i64 %i.ig ; 2 uses
  br i1 %.not689, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 19
  %.0.copyload.i814 = load i32, ptr %i.ii, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i814) #8, !srcloc !13
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %.0.copyload.i815 = load i32, ptr %i.ij, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i815) #8, !srcloc !13
  %i.ik = lshr i32 %.0.copyload.i815, 25
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0 = phi i32 [ %.0.copyload.i814, %bb.ai ], [ %i.ik, %bb.aj ]
  %i.il = add i32 %.0.copyload.i810, 2
  %i.im = add i32 %i.il, %.0
  %i.in = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AArrayStorageBase0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x3A0x3Ashift0x28hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3AArrayStorageBase0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.hw, i32 noundef %3, i32 noundef %i.im) #8
  %.not690 = icmp eq i32 %i.in, 0
  br i1 %.not690, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.val698 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.io = getelementptr inbounds nuw i8, ptr %.val698, i64 %i.ci
  %.0.copyload.i816 = load i32, ptr %i.io, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i816) #8, !srcloc !13
  %i.ip = zext i32 %.0.copyload.i816 to i64
  %.val697 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.iq = getelementptr inbounds nuw i8, ptr %.val697, i64 %i.ip
  %.0.copyload.i817 = load i32, ptr %i.iq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i817) #8, !srcloc !13
  %.val696 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ir = getelementptr inbounds nuw i8, ptr %.val696, i64 %i.br
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 1364
  %.0.copyload.i818 = load i32, ptr %i.is, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i818) #8, !srcloc !13
  %.val695 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.it = getelementptr inbounds nuw i8, ptr %.val695, i64 %i.bb
  %.0.copyload.i819 = load i32, ptr %i.it, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i819) #8, !srcloc !13
  %i.iu = add i32 %.0.copyload.i819, 40           ; 3 uses
  %i.iv = and i32 %i.iu, -4194304
  %.not691 = icmp eq i32 %.0.copyload.i818, %i.iv
  br i1 %.not691, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AwriteBarrierSlow0x28hermes0x3A0x3Avm0x3A0x3AGCPointerBase0x20const0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AGCCell0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.ax, i32 noundef %i.iu, i32 noundef %.0.copyload.i817)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.iw = zext i32 %i.iu to i64
  %.val735 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ix = getelementptr inbounds nuw i8, ptr %.val735, i64 %i.iw
  store i32 %.0.copyload.i817, ptr %i.ix, align 1
  %.val694 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.iy = getelementptr inbounds nuw i8, ptr %.val694, i64 %i.hx
  %.0.copyload.i820 = load i32, ptr %i.iy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i820) #8, !srcloc !13
  %.val693 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.iz = getelementptr inbounds nuw i8, ptr %.val693, i64 %i.bb
  %.0.copyload.i821 = load i32, ptr %i.iz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i821) #8, !srcloc !13
  %i.ja = zext i32 %.0.copyload.i821 to i64
  %.val692 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jb = getelementptr inbounds nuw i8, ptr %.val692, i64 %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %.0.copyload.i822 = load i32, ptr %i.jc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i822) #8, !srcloc !13
  %i.jd = xor i32 %.0.copyload.i822, %.0.copyload.i820
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %bb.an
  %.0666 = phi i32 [ %i.jd, %bb.an ], [ %i.hn, %.loopexit ]
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AinterpretFunction0x28hermes0x3A0x3Avm0x3A0x3ACodeBlock0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.hf, i32 noundef %3, i32 noundef %.0666) #8
  %.val760 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.je = getelementptr inbounds nuw i8, ptr %.val760, i64 %i.ch
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %.0.copyload.i823 = load i64, ptr %i.jf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i823) #8, !srcloc !22
  %.val = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jg = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ch
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %.0.copyload.i824 = load i32, ptr %i.jh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i824) #8, !srcloc !13
  %i.ji = icmp ne i32 %.0.copyload.i824, 0        ; 2 uses
  %i.jj = select i1 %i.ji, i64 %.0.copyload.i823, i64 -1688849860263936
  %i.jk = zext i1 %i.ji to i32
  br label %bb.aq

bb.ap:                                            ; preds = %bb.z, %bb.x
  %i.jl = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseStackOverflow0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AStackOverflowKind0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1) #8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ak, %bb.ag, %bb.ap, %bb.ao
  %.1670 = phi i64 [ -1688849860263936, %bb.ap ], [ %i.jj, %bb.ao ], [ -1688849860263936, %bb.ag ], [ -1688849860263936, %bb.ak ]
  %.1 = phi i32 [ %i.jl, %bb.ap ], [ %i.jk, %bb.ao ], [ 0, %bb.ag ], [ 0, %bb.ak ]
  %i.jm = zext i32 %1 to i64                      ; 2 uses
  %.val745 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jn = getelementptr inbounds nuw i8, ptr %.val745, i64 %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  store i64 %.1670, ptr %i.jo, align 1
  %.val734 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jp = getelementptr inbounds nuw i8, ptr %.val734, i64 %i.jm
  store i32 %.1, ptr %i.jp, align 1
  %.val733 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jq = getelementptr inbounds nuw i8, ptr %.val733, i64 %i.cm
  store i32 %.0.copyload.i784, ptr %i.jq, align 1
  store i32 %i.b, ptr %i.a, align 8, !tbaa !19
  ret void
}

declare i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AArrayStorageBase0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x3A0x3Ashift0x28hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3AArrayStorageBase0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AinterpretFunction0x28hermes0x3A0x3Avm0x3A0x3ACodeBlock0x2A0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden noundef i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCConfig0x3A0x3AGCConfig0x28hermes0x3A0x3Avm0x3A0x3AGCConfig0x20const0x260x29(ptr noundef %0, i32 noundef returned %1, i32 noundef %2) local_unnamed_addr #0 !guid !270 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 49 uses
  %i.b = zext i32 %2 to i64                       ; 15 uses
  %.val384 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %.val384, i64 %i.b
  %.0.copyload.i = load i64, ptr %i.c, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #8, !srcloc !22
  %i.d = zext i32 %1 to i64                       ; 18 uses
  %.val375 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %.val375, i64 %i.d
  store i64 %.0.copyload.i, ptr %i.e, align 1
end_hunk_0
