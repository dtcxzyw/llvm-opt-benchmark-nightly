Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_0?download=true
inline.NumInlined: 15600
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 26
begin_hunk_0_@w2c_hermes_hermes0x3A0x3ADCE0x3A0x3ArunOnModule0x28hermes0x3A0x3AModule0x2A0x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i903) #16, !srcloc !22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.6 = phi i32 [ %.0.copyload.i903, %bb.u ], [ %.0.copyload.i901, %bb.t ]
  %.val829 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dc = getelementptr inbounds nuw i8, ptr %.val829, i64 %i.i
  %.0.copyload.i904 = load i32, ptr %i.dc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i904) #16, !srcloc !22
  %i.dd = shl i32 %.6, 2
  %i.de = add i32 %.0.copyload.i904, %i.dd
  %i.df = zext i32 %i.de to i64
  %.val864 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dg = getelementptr inbounds nuw i8, ptr %.val864, i64 %i.df
  store i32 %.2729, ptr %i.dg, align 1
  %.val828 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dh = getelementptr inbounds nuw i8, ptr %.val828, i64 %i.f
  %.0.copyload.i905 = load i32, ptr %i.dh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i905) #16, !srcloc !22
  %i.di = add i32 %.0.copyload.i905, 1
  %.val863 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dj = getelementptr inbounds nuw i8, ptr %.val863, i64 %i.f
  store i32 %i.di, ptr %i.dj, align 1
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge, %bb.q, %bb.p, %bb.o, %bb.v
  %.pre-phi968 = phi i64 [ %.pre967, %._crit_edge ], [ %i.cc, %bb.q ], [ %i.cc, %bb.p ], [ %i.cc, %bb.o ], [ %i.cc, %bb.v ]
  %.3 = phi i32 [ %.2, %._crit_edge ], [ %.2, %bb.q ], [ %.2, %bb.p ], [ %.2, %bb.o ], [ 1, %bb.v ] ; 4 uses
  %.1709 = phi i32 [ %.0708, %._crit_edge ], [ %.0708, %bb.q ], [ %.0708, %bb.p ], [ %.0708, %bb.o ], [ 1, %bb.v ] ; 3 uses
  %.val827 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dk = getelementptr inbounds nuw i8, ptr %.val827, i64 %.pre-phi968
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %.0.copyload.i906 = load i32, ptr %i.dl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i906) #16, !srcloc !22
  %.not778 = icmp eq i32 %.0.copyload.i906, %i.n
  br i1 %.not778, label %bb.x, label %.backedge945.backedge

.backedge945.backedge:                            ; preds = %bb.w, %bb.ar
  %.2729.be = phi i32 [ %.0.copyload.i932, %bb.ar ], [ %.0.copyload.i906, %bb.w ]
  %.0708.be = phi i32 [ 0, %bb.ar ], [ %.1709, %bb.w ]
  br label %.backedge945

bb.x:                                             ; preds = %bb.w
  %.val826 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dm = getelementptr inbounds nuw i8, ptr %.val826, i64 %i.at
  %.0.copyload.i907 = load i32, ptr %i.dm, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i907) #16, !srcloc !22
  %.val825 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dn = getelementptr inbounds nuw i8, ptr %.val825, i64 %.pre-phi966
  %.0.copyload.i908 = load i32, ptr %i.dn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i908) #16, !srcloc !22
  %.not779 = icmp eq i32 %.0.copyload.i908, 0
  br i1 %.not779, label %bb.ao, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = shl i32 %.0.copyload.i908, 2
  %i.dp = add i32 %i.do, %.0.copyload.i907
  br label %bb.z

bb.z:                                             ; preds = %.loopexit939, %bb.y
  %.3730 = phi i32 [ %.0.copyload.i907, %bb.y ], [ %i.gq, %.loopexit939 ] ; 2 uses
  %i.dq = zext i32 %.3730 to i64
  %.val824 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dr = getelementptr inbounds nuw i8, ptr %.val824, i64 %i.dq
  %.0.copyload.i909 = load i32, ptr %i.dr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i909) #16, !srcloc !22
  %i.ds = zext i32 %.0.copyload.i909 to i64       ; 4 uses
  %i.dt = add nuw nsw i64 %i.ds, 52               ; 3 uses
  %.val823 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.du = getelementptr inbounds nuw i8, ptr %.val823, i64 %i.dt
  %.0.copyload.i910 = load i32, ptr %i.du, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i910) #16, !srcloc !22
  %i.dv = add i32 %.0.copyload.i909, 48           ; 2 uses
  %.not780 = icmp eq i32 %.0.copyload.i910, %i.dv
  br i1 %.not780, label %.loopexit939, label %.preheader

.preheader:                                       ; preds = %bb.z, %bb.am
  %.1717 = phi i32 [ %.0.copyload.i928, %bb.am ], [ %.0.copyload.i910, %bb.z ] ; 3 uses
  %i.dw = zext i32 %.1717 to i64                  ; 2 uses
  %i.dx = add nuw nsw i64 %i.dw, 20               ; 2 uses
  %.val822 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dy = getelementptr inbounds nuw i8, ptr %.val822, i64 %i.dx
  %.0.copyload.i911 = load i32, ptr %i.dy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i911) #16, !srcloc !22
  %.not781 = icmp eq i32 %.0.copyload.i911, 0
  br i1 %.not781, label %bb.am, label %bb.aa

bb.aa:                                            ; preds = %.preheader
  %i.dz = add i32 %.1717, 8                       ; 4 uses
  %i.ea = add nuw nsw i64 %i.dw, 16               ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit938, %bb.aa
  %.7 = phi i32 [ %.0.copyload.i911, %bb.aa ], [ %.8, %.loopexit938 ] ; 3 uses
  %.val821 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.eb = getelementptr inbounds nuw i8, ptr %.val821, i64 %i.ea
  %.0.copyload.i912 = load i32, ptr %i.eb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i912) #16, !srcloc !22
  %i.ec = add i32 %.7, -1                         ; 6 uses
  %i.ed = shl i32 %i.ec, 2
  %i.ee = add i32 %.0.copyload.i912, %i.ed
  %i.ef = zext i32 %i.ee to i64
  %.val820 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.eg = getelementptr inbounds nuw i8, ptr %.val820, i64 %i.ef
  %.0.copyload.i913 = load i32, ptr %i.eg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i913) #16, !srcloc !22
  %i.eh = zext i32 %.0.copyload.i913 to i64       ; 2 uses
  %.val819 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ei = getelementptr inbounds nuw i8, ptr %.val819, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 44
  %.0.copyload.i914 = load i32, ptr %i.ej, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i914) #16, !srcloc !22
  %i.ek = icmp sgt i32 %.0.copyload.i914, 0
  br i1 %i.ek, label %bb.ac, label %.loopexit938

bb.ac:                                            ; preds = %bb.ab
  %i.el = add nuw nsw i64 %i.eh, 40               ; 2 uses
  %.val818 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.em = getelementptr inbounds nuw i8, ptr %.val818, i64 %i.el
  %.0.copyload.i915 = load i32, ptr %i.em, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i915) #16, !srcloc !22
  %i.en = zext nneg i32 %.0.copyload.i914 to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ak, %bb.ac
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ak ], [ 0, %bb.ac ] ; 2 uses
  %i.eo = trunc nuw nsw i64 %indvars.iv to i32
  %i.ep = shl i32 %i.eo, 3                        ; 2 uses
  %i.eq = add i32 %i.ep, %.0.copyload.i915
  %i.er = zext i32 %i.eq to i64                   ; 2 uses
  %.val817 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.es = getelementptr inbounds nuw i8, ptr %.val817, i64 %i.er
  %.0.copyload.i916 = load i32, ptr %i.es, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i916) #16, !srcloc !22
  %i.et = icmp eq i32 %i.dz, %.0.copyload.i916
  br i1 %i.et, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %.val816 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.eu = getelementptr inbounds nuw i8, ptr %.val816, i64 %i.er
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %.0.copyload.i917 = load i32, ptr %i.ev, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i917) #16, !srcloc !22
  %i.ew = shl i32 %.0.copyload.i917, 2            ; 2 uses
  %i.ex = add i32 %i.ew, %.0.copyload.i912
  %i.ey = zext i32 %i.ex to i64
  %.val862 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ez = getelementptr inbounds nuw i8, ptr %.val862, i64 %i.ey
  store i32 %.0.copyload.i913, ptr %i.ez, align 1
  %.val861 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.fa = getelementptr inbounds nuw i8, ptr %.val861, i64 %i.dx
  store i32 %i.ec, ptr %i.fa, align 1
  %i.fb = icmp eq i32 %i.ec, %.0.copyload.i917
  br i1 %i.fb, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.val815 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.fc = getelementptr inbounds nuw i8, ptr %.val815, i64 %i.ea
  %.0.copyload.i918 = load i32, ptr %i.fc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i918) #16, !srcloc !22
  %i.fd = add i32 %.0.copyload.i918, %i.ew
  %i.fe = zext i32 %i.fd to i64
  %.val814 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ff = getelementptr inbounds nuw i8, ptr %.val814, i64 %i.fe
  %.0.copyload.i919 = load i32, ptr %i.ff, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i919) #16, !srcloc !22
  %i.fg = zext i32 %.0.copyload.i919 to i64       ; 2 uses
  %.val813 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.fh = getelementptr inbounds nuw i8, ptr %.val813, i64 %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 44
  %.0.copyload.i920 = load i32, ptr %i.fi, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i920) #16, !srcloc !22
  %i.fj = icmp slt i32 %.0.copyload.i920, 1
  br i1 %i.fj, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.val812 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.fk = getelementptr inbounds nuw i8, ptr %.val812, i64 %i.fg
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %.0.copyload.i921 = load i32, ptr %i.fl, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i921) #16, !srcloc !22
  %i.fm = zext i32 %.0.copyload.i921 to i64       ; 3 uses
  %.val811 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.fn = getelementptr inbounds nuw i8, ptr %.val811, i64 %i.fm
  %.0.copyload.i922 = load i32, ptr %i.fn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i922) #16, !srcloc !22
  %.not783 = icmp eq i32 %.0.copyload.i922, %i.dz
  br i1 %.not783, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %.val810 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.fo = getelementptr inbounds nuw i8, ptr %.val810, i64 %i.fm
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %.0.copyload.i923 = load i32, ptr %i.fp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i923) #16, !srcloc !22
  %.not784 = icmp eq i32 %.0.copyload.i923, %i.ec
  br i1 %.not784, label %.loopexit937, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.fq = icmp eq i32 %.0.copyload.i920, 1
  br i1 %i.fq, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ai, %.backedge
  %indvars.iv963 = phi i64 [ %indvars.iv.next964, %.backedge ], [ 1, %bb.ai ] ; 2 uses
  %i.fr = trunc nuw i64 %indvars.iv963 to i32
  %i.fs = shl i32 %i.fr, 3
  %i.ft = add i32 %i.fs, %.0.copyload.i921        ; 2 uses
  %i.fu = zext i32 %i.ft to i64                   ; 3 uses
  %.val809 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.fv = getelementptr inbounds nuw i8, ptr %.val809, i64 %i.fu
  %.0.copyload.i924 = load i32, ptr %i.fv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i924) #16, !srcloc !22
  %.not785 = icmp eq i32 %.0.copyload.i924, %i.dz
  br i1 %.not785, label %bb.aj, label %.backedge

.backedge:                                        ; preds = %.lr.ph, %bb.aj
  %indvars.iv.next964 = add nuw nsw i64 %indvars.iv963, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next964 to i32
  %exitcond = icmp eq i32 %.0.copyload.i920, %lftr.wideiv
  br i1 %exitcond, label %.loopexit, label %.lr.ph

bb.aj:                                            ; preds = %.lr.ph
  %.val808 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.fw = getelementptr inbounds nuw i8, ptr %.val808, i64 %i.fu
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %.0.copyload.i925 = load i32, ptr %i.fx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i925) #16, !srcloc !22
  %.not786 = icmp eq i32 %.0.copyload.i925, %i.ec
  br i1 %.not786, label %.loopexit937, label %.backedge

.loopexit937:                                     ; preds = %bb.aj, %bb.ah
  %.pre-phi = phi i64 [ %i.fm, %bb.ah ], [ %i.fu, %bb.aj ]
  %.0721 = phi i32 [ %.0.copyload.i921, %bb.ah ], [ %i.ft, %bb.aj ]
  %.0 = add i32 %.0721, 4
  %.val860 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.fy = getelementptr inbounds nuw i8, ptr %.val860, i64 %.pre-phi
  store i32 %i.dz, ptr %i.fy, align 1
  %i.fz = zext i32 %.0 to i64
  %.val859 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ga = getelementptr inbounds nuw i8, ptr %.val859, i64 %i.fz
  store i32 %.0.copyload.i917, ptr %i.ga, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge, %bb.ai, %bb.af, %bb.ae, %.loopexit937
  %.val807 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gb = getelementptr inbounds nuw i8, ptr %.val807, i64 %i.el
  %.0.copyload.i926 = load i32, ptr %i.gb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i926) #16, !srcloc !22
  %i.gc = add i32 %.0.copyload.i926, %i.ep
  %i.gd = zext i32 %i.gc to i64
  %.val872 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ge = getelementptr inbounds nuw i8, ptr %.val872, i64 %i.gd
  store i64 0, ptr %i.ge, align 1
  br label %.loopexit938

bb.ak:                                            ; preds = %bb.ad
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not782 = icmp eq i64 %indvars.iv.next, %i.en
  br i1 %.not782, label %.loopexit938, label %bb.ad

.loopexit938:                                     ; preds = %bb.ak, %bb.ab, %.loopexit
  %.8 = phi i32 [ %i.ec, %.loopexit ], [ %.7, %bb.ab ], [ %.7, %bb.ak ] ; 2 uses
  %.not787 = icmp eq i32 %.8, 0
  br i1 %.not787, label %bb.al, label %bb.ab

bb.al:                                            ; preds = %.loopexit938
  %.val806 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gf = getelementptr inbounds nuw i8, ptr %.val806, i64 %i.dt
  %.0.copyload.i927 = load i32, ptr %i.gf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i927) #16, !srcloc !22
  br label %bb.am

bb.am:                                            ; preds = %.preheader, %bb.al
  %.1 = phi i32 [ %.0.copyload.i927, %bb.al ], [ %.1717, %.preheader ]
  tail call void @w2c_hermes_hermes0x3A0x3ABasicBlock0x3A0x3AeraseFromParent0x280x29(ptr noundef nonnull %0, i32 noundef %.1)
  %.val805 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gg = getelementptr inbounds nuw i8, ptr %.val805, i64 %i.dt
  %.0.copyload.i928 = load i32, ptr %i.gg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i928) #16, !srcloc !22
  %.not788 = icmp eq i32 %.0.copyload.i928, %i.dv
  br i1 %.not788, label %.loopexit939, label %.preheader

.loopexit939:                                     ; preds = %bb.am, %bb.z
  %.val804 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gh = getelementptr inbounds nuw i8, ptr %.val804, i64 %i.ds
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %.0.copyload.i929 = load i32, ptr %i.gi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i929) #16, !srcloc !22
  %.val803 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gj = getelementptr inbounds nuw i8, ptr %.val803, i64 %i.ds
  %.0.copyload.i930 = load i32, ptr %i.gj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i930) #16, !srcloc !22
  %i.gk = zext i32 %.0.copyload.i929 to i64
  %.val858 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gl = getelementptr inbounds nuw i8, ptr %.val858, i64 %i.gk
  store i32 %.0.copyload.i930, ptr %i.gl, align 1
  %i.gm = zext i32 %.0.copyload.i930 to i64
  %.val857 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gn = getelementptr inbounds nuw i8, ptr %.val857, i64 %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  store i32 %.0.copyload.i929, ptr %i.go, align 1
  %.val871 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gp = getelementptr inbounds nuw i8, ptr %.val871, i64 %i.ds
  store i64 0, ptr %i.gp, align 1
  %i.gq = add i32 %.3730, 4                       ; 2 uses
  %.not789 = icmp eq i32 %i.gq, %i.dp
  br i1 %.not789, label %bb.an, label %bb.z

bb.an:                                            ; preds = %.loopexit939
  %.val802 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gr = getelementptr inbounds nuw i8, ptr %.val802, i64 %i.at
  %.0.copyload.i931 = load i32, ptr %i.gr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i931) #16, !srcloc !22
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.x
  %.4731 = phi i32 [ %.0.copyload.i931, %bb.an ], [ %.0.copyload.i907, %bb.x ] ; 2 uses
  %.not790 = icmp eq i32 %.4731, %i.as
  br i1 %.not790, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.4731)
  %.not792 = icmp eq i32 %.1709, 0
  br i1 %.not792, label %.loopexit944, label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %.not791 = icmp eq i32 %.1709, 0
  br i1 %.not791, label %.loopexit944, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.val870 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gs = getelementptr inbounds nuw i8, ptr %.val870, i64 %.pre-phi966
  store i64 68719476736, ptr %i.gs, align 1
  %.val856 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gt = getelementptr inbounds nuw i8, ptr %.val856, i64 %i.at
  store i32 %i.as, ptr %i.gt, align 1
  %.val801 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gu = getelementptr inbounds nuw i8, ptr %.val801, i64 %i.l
  %.0.copyload.i932 = load i32, ptr %i.gu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i932) #16, !srcloc !22
  %.not793 = icmp eq i32 %.0.copyload.i932, %i.n
  br i1 %.not793, label %.loopexit944, label %.backedge945.backedge

.loopexit944:                                     ; preds = %bb.ar, %bb.aq, %bb.ap, %.loopexit950
  %.4 = phi i32 [ %.1711, %.loopexit950 ], [ %.3, %bb.ap ], [ %.3, %bb.aq ], [ %.3, %bb.ar ]
  %.val800 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gv = getelementptr inbounds nuw i8, ptr %.val800, i64 %i.i
  %.0.copyload.i933 = load i32, ptr %i.gv, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i933) #16, !srcloc !22
  %.val799 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gw = getelementptr inbounds nuw i8, ptr %.val799, i64 %i.f
  %.0.copyload.i934 = load i32, ptr %i.gw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i934) #16, !srcloc !22
  %.not794 = icmp eq i32 %.0.copyload.i934, 0
  br i1 %.not794, label %bb.av, label %bb.as

bb.as:                                            ; preds = %.loopexit944
  %i.gx = shl i32 %.0.copyload.i934, 2
  %i.gy = add i32 %i.gx, %.0.copyload.i933
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %bb.as
  %.5732 = phi i32 [ %.0.copyload.i933, %bb.as ], [ %i.hd, %bb.at ] ; 2 uses
  %i.gz = zext i32 %.5732 to i64
  %.val798 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ha = getelementptr inbounds nuw i8, ptr %.val798, i64 %i.gz
  %.0.copyload.i935 = load i32, ptr %i.ha, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i935) #16, !srcloc !22
  %i.hb = add i32 %.0.copyload.i935, 8
  %.not795 = icmp eq i32 %.0.copyload.i935, 0
  %i.hc = select i1 %.not795, i32 0, i32 %i.hb
  tail call void @w2c_hermes_hermes0x3A0x3AValue0x3A0x3Adestroy0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.hc) #16
  %i.hd = add i32 %.5732, 4                       ; 2 uses
  %.not796 = icmp eq i32 %i.hd, %i.gy
  br i1 %.not796, label %bb.au, label %bb.at

bb.au:                                            ; preds = %bb.at
  %.val = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.he = getelementptr inbounds nuw i8, ptr %.val, i64 %i.i
  %.0.copyload.i936 = load i32, ptr %i.he, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i936) #16, !srcloc !22
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.loopexit944
  %.6733 = phi i32 [ %.0.copyload.i936, %bb.au ], [ %.0.copyload.i933, %.loopexit944 ] ; 2 uses
  %.not797 = icmp eq i32 %.6733, %i.h
  br i1 %.not797, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.6733)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  store i32 %i.b, ptr %i.a, align 8, !tbaa !19
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @w2c_hermes_hermes0x3A0x3AHoistStartGenerator0x3A0x3ArunOnFunction0x28hermes0x3A0x3AFunction0x2A0x29(ptr noundef %0, i32 %1, i32 noundef %2) #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.loopexit91, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.b = zext i32 %2 to i64                       ; 2 uses
  %.val83 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %.val83, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.0.copyload.i = load i8, ptr %i.d, align 1     ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i) #16, !srcloc !33
  %.not72 = icmp eq i8 %.0.copyload.i, -126
  br i1 %.not72, label %bb.c, label %.loopexit91

bb.c:                                             ; preds = %bb.b
  %.val81 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %.val81, i64 %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %.0.copyload.i84 = load i32, ptr %i.f, align 1  ; 4 uses
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3ABinaryOperatorInst0x3A0x3AgetSideEffect0x280x29:bb.a
bb.k:                                             ; preds = %bb.j, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %.val233 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %.val233, i64 %i.y
  %.0.copyload.i253 = load i16, ptr %i.at, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i253) #16, !srcloc !37
  %.not199 = icmp ne i16 %.0.copyload.i253, 0
  %i.au = and i16 %.0.copyload.i253, -127
  %.not200 = icmp eq i16 %i.au, 0
  %or.cond216 = and i1 %.not199, %.not200
  br i1 %or.cond216, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %.val232 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %.val232, i64 %i.m
  %.0.copyload.i254 = load i16, ptr %i.av, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i254) #16, !srcloc !37
  %.not201 = icmp ne i16 %.0.copyload.i254, 0
  %i.aw = and i16 %.0.copyload.i254, -127
  %.not202 = icmp eq i16 %i.aw, 0
  %or.cond217 = and i1 %.not201, %.not202
  br i1 %or.cond217, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.ax = icmp eq i16 %.0.copyload.i253, 64
  %i.ay = icmp eq i16 %.0.copyload.i254, 64
  %or.cond218 = and i1 %i.ax, %i.ay
  br i1 %or.cond218, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val230 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %.val230, i64 %i.y
  %.0.copyload.i255 = load i8, ptr %i.az, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i255) #16, !srcloc !33
  %i.ba = and i8 %.0.copyload.i255, 64
  %.not203 = icmp eq i8 %i.ba, 0
  br i1 %.not203, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.val = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bb = getelementptr inbounds nuw i8, ptr %.val, i64 %i.m
  %.0.copyload.i256 = load i32, ptr %i.bb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i256) #16, !srcloc !22
  %.mask204 = and i32 %.0.copyload.i256, 64
  %isneg.not205 = icmp eq i32 %.mask204, 0
  %i.bc = select i1 %isneg.not205, i32 0, i32 3
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.c, %bb.n, %bb.j, %bb.f, %bb.a, %bb.a, %bb.o
  %.0190 = phi i32 [ 0, %bb.c ], [ 0, %bb.j ], [ 3, %bb.a ], [ 0, %bb.m ], [ 3, %bb.n ], [ %i.bc, %bb.o ], [ 3, %bb.f ], [ 3, %bb.a ]
  br label %bb.r

bb.q:                                             ; preds = %bb.a
  tail call void @w2c_hermes_hermes0x3A0x3Ahermes_fatal0x28char0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef 37140) #16
  tail call void @wasm_rt_trap(i32 noundef 5) #17
  unreachable

bb.r:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.h, %bb.i, %bb.k, %bb.l, %bb.a, %bb.a, %bb.p, %bb.g
  %.0 = phi i32 [ %i.am, %bb.g ], [ 0, %bb.a ], [ %.0190, %bb.p ], [ 0, %bb.a ], [ 3, %bb.l ], [ 3, %bb.k ], [ 3, %bb.i ], [ 3, %bb.h ], [ 3, %bb.e ], [ 3, %bb.d ], [ 3, %bb.c ], [ 3, %bb.b ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !19
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3ABasicBlock0x3A0x3AeraseFromParent0x280x29(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 29 uses
  %i.b = zext i32 %1 to i64                       ; 4 uses
  %i.c = add nuw nsw i64 %i.b, 40                 ; 3 uses
  %.val266 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %.val266, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #16, !srcloc !22
  %i.e = add i32 %1, 36                           ; 2 uses
  %.not = icmp eq i32 %.0.copyload.i, %i.e
  br i1 %.not, label %.loopexit297, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.n
  %.0223 = phi i32 [ %.0.copyload.i292, %bb.n ], [ %.0.copyload.i, %bb.a ] ; 3 uses
  %i.f = zext i32 %.0223 to i64                   ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 20                 ; 2 uses
  %.val265 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %.val265, i64 %i.g
  %.0.copyload.i275 = load i32, ptr %i.h, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i275) #16, !srcloc !22
  %.not239 = icmp eq i32 %.0.copyload.i275, 0
  br i1 %.not239, label %bb.n, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.i = add i32 %.0223, 8                        ; 4 uses
  %i.j = add nuw nsw i64 %i.f, 16                 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.loopexit296, %bb.b
  %.0226 = phi i32 [ %.0.copyload.i275, %bb.b ], [ %.1227, %.loopexit296 ] ; 3 uses
  %.val264 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %.val264, i64 %i.j
  %.0.copyload.i276 = load i32, ptr %i.k, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i276) #16, !srcloc !22
  %i.l = add i32 %.0226, -1                       ; 6 uses
  %i.m = shl i32 %i.l, 2
  %i.n = add i32 %.0.copyload.i276, %i.m
  %i.o = zext i32 %i.n to i64
  %.val263 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %.val263, i64 %i.o
  %.0.copyload.i277 = load i32, ptr %i.p, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i277) #16, !srcloc !22
  %i.q = zext i32 %.0.copyload.i277 to i64        ; 2 uses
  %.val262 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %.val262, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  %.0.copyload.i278 = load i32, ptr %i.s, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i278) #16, !srcloc !22
  %i.t = icmp sgt i32 %.0.copyload.i278, 0
  br i1 %i.t, label %bb.d, label %.loopexit296

bb.d:                                             ; preds = %bb.c
  %i.u = add nuw nsw i64 %i.q, 40                 ; 2 uses
  %.val261 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %.val261, i64 %i.u
  %.0.copyload.i279 = load i32, ptr %i.v, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i279) #16, !srcloc !22
  %i.w = zext nneg i32 %.0.copyload.i278 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.l, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %bb.d ] ; 2 uses
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  %i.y = shl i32 %i.x, 3                          ; 2 uses
  %i.z = add i32 %i.y, %.0.copyload.i279
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %.val260 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %.val260, i64 %i.aa
  %.0.copyload.i280 = load i32, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i280) #16, !srcloc !22
  %i.ac = icmp eq i32 %i.i, %.0.copyload.i280
  br i1 %i.ac, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %.val259 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %.val259, i64 %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.0.copyload.i281 = load i32, ptr %i.ae, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i281) #16, !srcloc !22
  %i.af = shl i32 %.0.copyload.i281, 2            ; 2 uses
  %i.ag = add i32 %i.af, %.0.copyload.i276
  %i.ah = zext i32 %i.ag to i64
  %.val272 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %.val272, i64 %i.ah
  store i32 %.0.copyload.i277, ptr %i.ai, align 1
  %.val271 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %.val271, i64 %i.g
  store i32 %i.l, ptr %i.aj, align 1
  %i.ak = icmp eq i32 %i.l, %.0.copyload.i281
  br i1 %i.ak, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val258 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %.val258, i64 %i.j
  %.0.copyload.i282 = load i32, ptr %i.al, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i282) #16, !srcloc !22
  %i.am = add i32 %.0.copyload.i282, %i.af
  %i.an = zext i32 %i.am to i64
  %.val257 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %.val257, i64 %i.an
  %.0.copyload.i283 = load i32, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i283) #16, !srcloc !22
  %i.ap = zext i32 %.0.copyload.i283 to i64       ; 2 uses
  %.val256 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %.val256, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 44
  %.0.copyload.i284 = load i32, ptr %i.ar, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i284) #16, !srcloc !22
  %i.as = icmp slt i32 %.0.copyload.i284, 1
  br i1 %i.as, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val255 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %.val255, i64 %i.ap
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %.0.copyload.i285 = load i32, ptr %i.au, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i285) #16, !srcloc !22
  %i.av = zext i32 %.0.copyload.i285 to i64       ; 3 uses
  %.val254 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %.val254, i64 %i.av
  %.0.copyload.i286 = load i32, ptr %i.aw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i286) #16, !srcloc !22
  %.not241 = icmp eq i32 %.0.copyload.i286, %i.i
  br i1 %.not241, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.val253 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %.val253, i64 %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %.0.copyload.i287 = load i32, ptr %i.ay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i287) #16, !srcloc !22
  %.not242 = icmp eq i32 %.0.copyload.i287, %i.l
  br i1 %.not242, label %.loopexit295, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.az = icmp eq i32 %.0.copyload.i284, 1
  br i1 %i.az, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %.backedge
  %indvars.iv308 = phi i64 [ %indvars.iv.next309, %.backedge ], [ 1, %bb.j ] ; 2 uses
  %i.ba = trunc nuw i64 %indvars.iv308 to i32
  %i.bb = shl i32 %i.ba, 3
  %i.bc = add i32 %i.bb, %.0.copyload.i285        ; 2 uses
  %i.bd = zext i32 %i.bc to i64                   ; 3 uses
  %.val252 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %.val252, i64 %i.bd
  %.0.copyload.i288 = load i32, ptr %i.be, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i288) #16, !srcloc !22
  %.not243 = icmp eq i32 %.0.copyload.i288, %i.i
  br i1 %.not243, label %bb.k, label %.backedge

.backedge:                                        ; preds = %.lr.ph, %bb.k
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next309 to i32
  %exitcond = icmp eq i32 %.0.copyload.i284, %lftr.wideiv
  br i1 %exitcond, label %.loopexit, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %.val251 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bf = getelementptr inbounds nuw i8, ptr %.val251, i64 %i.bd
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %.0.copyload.i289 = load i32, ptr %i.bg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i289) #16, !srcloc !22
  %.not244 = icmp eq i32 %.0.copyload.i289, %i.l
  br i1 %.not244, label %.loopexit295, label %.backedge

.loopexit295:                                     ; preds = %bb.k, %bb.i
  %.pre-phi = phi i64 [ %i.av, %bb.i ], [ %i.bd, %bb.k ]
  %.0228 = phi i32 [ %.0.copyload.i285, %bb.i ], [ %i.bc, %bb.k ]
  %.0 = add i32 %.0228, 4
  %.val270 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %.val270, i64 %.pre-phi
  store i32 %i.i, ptr %i.bh, align 1
  %i.bi = zext i32 %.0 to i64
  %.val269 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bj = getelementptr inbounds nuw i8, ptr %.val269, i64 %i.bi
  store i32 %.0.copyload.i281, ptr %i.bj, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge, %bb.j, %bb.g, %bb.f, %.loopexit295
  %.val250 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bk = getelementptr inbounds nuw i8, ptr %.val250, i64 %i.u
  %.0.copyload.i290 = load i32, ptr %i.bk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i290) #16, !srcloc !22
  %i.bl = add i32 %.0.copyload.i290, %i.y
  %i.bm = zext i32 %i.bl to i64
  %.val274 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %.val274, i64 %i.bm
  store i64 0, ptr %i.bn, align 1
  br label %.loopexit296

bb.l:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not240 = icmp eq i64 %indvars.iv.next, %i.w
  br i1 %.not240, label %.loopexit296, label %bb.e

.loopexit296:                                     ; preds = %bb.l, %bb.c, %.loopexit
  %.1227 = phi i32 [ %i.l, %.loopexit ], [ %.0226, %bb.c ], [ %.0226, %bb.l ] ; 2 uses
  %.not245 = icmp eq i32 %.1227, 0
  br i1 %.not245, label %bb.m, label %bb.c

bb.m:                                             ; preds = %.loopexit296
  %.val249 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %.val249, i64 %i.c
  %.0.copyload.i291 = load i32, ptr %i.bo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i291) #16, !srcloc !22
  br label %bb.n

bb.n:                                             ; preds = %.preheader, %bb.m
  %.1 = phi i32 [ %.0.copyload.i291, %bb.m ], [ %.0223, %.preheader ]
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AeraseFromParent0x280x29(ptr noundef nonnull %0, i32 noundef %.1) #16
  %.val248 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bp = getelementptr inbounds nuw i8, ptr %.val248, i64 %i.c
  %.0.copyload.i292 = load i32, ptr %i.bp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i292) #16, !srcloc !22
  %.not246 = icmp eq i32 %.0.copyload.i292, %i.e
  br i1 %.not246, label %.loopexit297, label %.preheader

.loopexit297:                                     ; preds = %bb.n, %bb.a
  %.val247 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bq = getelementptr inbounds nuw i8, ptr %.val247, i64 %i.b
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %.0.copyload.i293 = load i32, ptr %i.br, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i293) #16, !srcloc !22
  %.val = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bs = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %.0.copyload.i294 = load i32, ptr %i.bs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i294) #16, !srcloc !22
  %i.bt = zext i32 %.0.copyload.i293 to i64
  %.val268 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bu = getelementptr inbounds nuw i8, ptr %.val268, i64 %i.bt
  store i32 %.0.copyload.i294, ptr %i.bu, align 1
  %i.bv = zext i32 %.0.copyload.i294 to i64
  %.val267 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bw = getelementptr inbounds nuw i8, ptr %.val267, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i32 %.0.copyload.i293, ptr %i.bx, align 1
  %.val273 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.by = getelementptr inbounds nuw i8, ptr %.val273, i64 %i.b
  store i64 0, ptr %i.by, align 1
  %i.bz = add i32 %1, 8
  tail call void @w2c_hermes_hermes0x3A0x3AValue0x3A0x3Adestroy0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.bz) #16
  ret void
}

declare void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AeraseFromParent0x280x29(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3ABacktrackingBumpPtrAllocator0x3A0x3A0x7EBacktrackingBumpPtrAllocator0x280x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 22 uses
  %i.b = zext i32 %1 to i64                       ; 4 uses
  %i.c = add nuw nsw i64 %i.b, 12                 ; 3 uses
  %.val258 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %.val258, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #16, !srcloc !22
  %.not = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not, label %.loopexit294, label %.preheader293

.preheader293:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader293, %bb.v
  %.0208 = phi i32 [ %.0.copyload.i281, %bb.v ], [ %.0.copyload.i, %.preheader293 ] ; 3 uses
  %i.g = zext i32 %.0208 to i64                   ; 3 uses
  %.val257 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %.val257, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %.0.copyload.i265 = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i265) #16, !srcloc !22
  %.val264 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %.val264, i64 %i.c
  store i32 %.0.copyload.i265, ptr %i.j, align 1
  %i.k = add nuw nsw i64 %i.g, 8                  ; 2 uses
  %.val256 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %.val256, i64 %i.k
  %.0.copyload.i266 = load i32, ptr %i.l, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i266) #16, !srcloc !22
  %.val255 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %.val255, i64 %i.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.0.copyload.i267 = load i32, ptr %i.n, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i267) #16, !srcloc !22
  %.not224 = icmp eq i32 %.0.copyload.i267, 0
  br i1 %.not224, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = shl i32 %.0.copyload.i267, 3
  %i.p = add i32 %i.o, %.0.copyload.i266          ; 3 uses
  %i.q = and i32 %.0.copyload.i267, 1
  %.not225 = icmp eq i32 %i.q, 0
  br i1 %.not225, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = add i32 %i.p, -8                         ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %.val254 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %.val254, i64 %i.s
  %.0.copyload.i268 = load i32, ptr %i.t, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i268) #16, !srcloc !22
  %.val263 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %.val263, i64 %i.s
  store i32 0, ptr %i.u, align 1
  %.not226 = icmp eq i32 %.0.copyload.i268, 0
  br i1 %.not226, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = add i32 %i.p, -4
  %i.w = zext i32 %i.v to i64
  %.val253 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %.val253, i64 %i.w
  %.0.copyload.i269 = load i32, ptr %i.x, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i269) #16, !srcloc !22
  %i.y = load i32, ptr %i.e, align 4, !tbaa !23
  %i.z = icmp ult i32 %.0.copyload.i269, %i.y
  br i1 %i.z, label %bb.f, label %.critedge, !prof !24

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.ab = zext i32 %.0.copyload.i269 to i64
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !27 ; 2 uses
  %.not227 = icmp eq ptr %i.ae, null
  br i1 %.not227, label %.critedge, label %bb.g, !prof !28

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !29 ; 4 uses
  %i.ag = icmp eq ptr %i.af, @.str.3
  br i1 %i.ag, label %func_types_eq.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not289 = icmp eq ptr %i.af, null
  br i1 %.not289, label %.critedge, label %func_types_eq.exit, !prof !30

func_types_eq.exit:                               ; preds = %bb.h
  %i.ah = load i128, ptr %i.af, align 1
  %i.ai = xor i128 90707786523776380123558329061620923017, %i.ah
  %i.aj = getelementptr i8, ptr %i.af, i64 16
  %i.ak = load i128, ptr %i.aj, align 1
  %i.al = xor i128 -36122175591097595875794107267125375431, %i.ak
  %i.am = or i128 %i.ai, %i.al
  %i.an = icmp ne i128 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  %.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i, label %func_types_eq.exit.thread, label %.critedge, !prof !31

.critedge:                                        ; preds = %bb.h, %bb.f, %bb.e, %func_types_eq.exit
  tail call void @wasm_rt_trap(i32 noundef 6) #17
  unreachable

func_types_eq.exit.thread:                        ; preds = %bb.g, %func_types_eq.exit
end_hunk_1
