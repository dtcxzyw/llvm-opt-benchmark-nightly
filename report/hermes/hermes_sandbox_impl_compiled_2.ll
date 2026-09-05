Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_2?download=true
inline.NumInlined: 21302
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACallable0x3A0x3AexecuteCall0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ACallable0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x29:bb.a

.preheader1029.3:                                 ; preds = %.preheader1029.2
  %i.er = add i32 %i.dh, -88                      ; 2 uses
  %i.es = zext i32 %i.er to i64
  %.val966.3 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.et = getelementptr inbounds nuw i8, ptr %.val966.3, i64 %i.es
  store i64 -1688849860263936, ptr %i.et, align 1
  %.not870.3 = icmp eq i32 %i.eh, 4
  br i1 %.not870.3, label %.loopexit1030.loopexit, label %.preheader1029.4

.preheader1029.4:                                 ; preds = %.preheader1029.3
  %i.eu = add i32 %i.dh, -96                      ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %.val966.4 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ew = getelementptr inbounds nuw i8, ptr %.val966.4, i64 %i.ev
  store i64 -1688849860263936, ptr %i.ew, align 1
  %.not870.4 = icmp eq i32 %i.eh, 5
  br i1 %.not870.4, label %.loopexit1030.loopexit, label %.preheader1029.5

.preheader1029.5:                                 ; preds = %.preheader1029.4
  %i.ex = add i32 %i.dh, -104                     ; 2 uses
  %i.ey = zext i32 %i.ex to i64
  %.val966.5 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ez = getelementptr inbounds nuw i8, ptr %.val966.5, i64 %i.ey
  store i64 -1688849860263936, ptr %i.ez, align 1
  %.not870.5 = icmp eq i32 %i.eh, 6
  br i1 %.not870.5, label %.loopexit1030.loopexit, label %.preheader1029.6

.preheader1029.6:                                 ; preds = %.preheader1029.5
  %i.fa = add i32 %i.dh, -112                     ; 2 uses
  %i.fb = zext i32 %i.fa to i64
  %.val966.6 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fc = getelementptr inbounds nuw i8, ptr %.val966.6, i64 %i.fb
  store i64 -1688849860263936, ptr %i.fc, align 1
  br label %.loopexit1030.loopexit

.loopexit1030.loopexit:                           ; preds = %.preheader1029.6, %.preheader1029.5, %.preheader1029.4, %.preheader1029.3, %.preheader1029.2, %.preheader1029.1, %.preheader1029
  %.lcssa = phi i32 [ %i.ei, %.preheader1029 ], [ %i.el, %.preheader1029.1 ], [ %i.eo, %.preheader1029.2 ], [ %i.er, %.preheader1029.3 ], [ %i.eu, %.preheader1029.4 ], [ %i.ex, %.preheader1029.5 ], [ %i.fa, %.preheader1029.6 ]
  %i.fd = and i32 %i.bd, -8
  br label %.loopexit1030

.loopexit1030:                                    ; preds = %.loopexit1030.loopexit, %bb.p
  %.2854 = phi i32 [ %i.ec, %bb.p ], [ %.lcssa, %.loopexit1030.loopexit ]
  %.1851 = phi i32 [ %i.bd, %bb.p ], [ %i.fd, %.loopexit1030.loopexit ]
  %i.fe = icmp samesign ult i64 %.0.copyload.i987, 8
  br i1 %i.fe, label %.loopexit1028, label %.preheader

.preheader:                                       ; preds = %.loopexit1030, %.preheader
  %.3 = phi i32 [ %i.ga, %.preheader ], [ %.2854, %.loopexit1030 ] ; 8 uses
  %.2 = phi i32 [ %i.gd, %.preheader ], [ %.1851, %.loopexit1030 ]
  %i.ff = add i32 %.3, -16
  %i.fg = zext i32 %i.ff to i64
  %.val965 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fh = getelementptr inbounds nuw i8, ptr %.val965, i64 %i.fg
  store i64 -1688849860263936, ptr %i.fh, align 1
  %i.fi = add i32 %.3, -8
  %i.fj = zext i32 %i.fi to i64
  %.val964 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fk = getelementptr inbounds nuw i8, ptr %.val964, i64 %i.fj
  store i64 -1688849860263936, ptr %i.fk, align 1
  %i.fl = add i32 %.3, -24
  %i.fm = zext i32 %i.fl to i64
  %.val963 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fn = getelementptr inbounds nuw i8, ptr %.val963, i64 %i.fm
  store i64 -1688849860263936, ptr %i.fn, align 1
  %i.fo = add i32 %.3, -32
  %i.fp = zext i32 %i.fo to i64
  %.val962 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fq = getelementptr inbounds nuw i8, ptr %.val962, i64 %i.fp
  store i64 -1688849860263936, ptr %i.fq, align 1
  %i.fr = add i32 %.3, -40
  %i.fs = zext i32 %i.fr to i64
  %.val961 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ft = getelementptr inbounds nuw i8, ptr %.val961, i64 %i.fs
  store i64 -1688849860263936, ptr %i.ft, align 1
  %i.fu = add i32 %.3, -48
  %i.fv = zext i32 %i.fu to i64
  %.val960 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fw = getelementptr inbounds nuw i8, ptr %.val960, i64 %i.fv
  store i64 -1688849860263936, ptr %i.fw, align 1
  %i.fx = add i32 %.3, -56
  %i.fy = zext i32 %i.fx to i64
  %.val959 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %.val959, i64 %i.fy
  store i64 -1688849860263936, ptr %i.fz, align 1
  %i.ga = add i32 %.3, -64                        ; 2 uses
  %i.gb = zext i32 %i.ga to i64
  %.val958 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gc = getelementptr inbounds nuw i8, ptr %.val958, i64 %i.gb
  store i64 -1688849860263936, ptr %i.gc, align 1
  %i.gd = add i32 %.2, -8                         ; 2 uses
  %.not871 = icmp eq i32 %i.gd, 0
  br i1 %.not871, label %.loopexit1028, label %.preheader

.loopexit1028:                                    ; preds = %.preheader, %.loopexit1030, %bb.o
  %.val930 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ge = getelementptr inbounds nuw i8, ptr %.val930, i64 %i.l
  store i32 %3, ptr %i.ge, align 1
  %.val899 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gf = getelementptr inbounds nuw i8, ptr %.val899, i64 %i.q
  %.0.copyload.i1000 = load i32, ptr %i.gf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1000) #7, !srcloc !19
  %i.gg = add i32 %i.b, -28                       ; 2 uses
  %i.gh = add i32 %i.b, -168                      ; 4 uses
  %i.gi = zext i32 %i.gg to i64
  %.val929 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %.val929, i64 %i.gi
  store i32 %i.gh, ptr %i.gj, align 1
  %.val957 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gk = getelementptr inbounds nuw i8, ptr %.val957, i64 %i.e
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 188
  store i64 17179869185, ptr %i.gl, align 1
  %i.gm = add nuw nsw i64 %i.e, 184               ; 3 uses
  %.val928 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gn = getelementptr inbounds nuw i8, ptr %.val928, i64 %i.gm
  store i32 %i.gg, ptr %i.gn, align 1
  %.val927 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.go = getelementptr inbounds nuw i8, ptr %.val927, i64 %i.e
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 52
  store i32 %.0.copyload.i1000, ptr %i.gp, align 1
  %i.gq = add nuw nsw i64 %i.e, 220               ; 3 uses
  %.val926 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gr = getelementptr inbounds nuw i8, ptr %.val926, i64 %i.gq
  store i32 0, ptr %i.gr, align 1
  %i.gs = add i32 %i.b, -40
  %i.gt = add nuw nsw i64 %i.e, 216               ; 3 uses
  %.val925 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gu = getelementptr inbounds nuw i8, ptr %.val925, i64 %i.gt
  store i32 %i.gs, ptr %i.gu, align 1
  %i.gv = add nuw nsw i64 %i.e, 212               ; 4 uses
  %.val924 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gw = getelementptr inbounds nuw i8, ptr %.val924, i64 %i.gv
  store i32 %i.gh, ptr %i.gw, align 1
  %.val923 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gx = getelementptr inbounds nuw i8, ptr %.val923, i64 %i.q
  store i32 %i.j, ptr %i.gx, align 1
  %i.gy = zext i32 %6 to i64
  %.val945 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gz = getelementptr inbounds nuw i8, ptr %.val945, i64 %i.gy
  %.0.copyload.i1001 = load i64, ptr %i.gz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1001) #7, !srcloc !22
  %i.ha = icmp ugt i64 %.0.copyload.i1001, -844424930131969
  br i1 %i.ha, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit1028
  %i.hb = and i64 %.0.copyload.i1001, 4294967295
  %.val898 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hc = getelementptr inbounds nuw i8, ptr %.val898, i64 %i.hb
  %.0.copyload.i1002 = load i32, ptr %i.hc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1002) #7, !srcloc !19
  %i.hd = add i32 %.0.copyload.i1002, -553648128
  %i.he = icmp ult i32 %i.hd, -33554432
  %i.hf = select i1 %i.he, i32 70384, i32 %6
  %i.hg = zext i32 %i.hf to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit1028
  %.0856 = phi i64 [ %i.hg, %bb.q ], [ 70384, %.loopexit1028 ] ; 2 uses
  %.val956 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hh = getelementptr inbounds nuw i8, ptr %.val956, i64 %i.n
  store i64 0, ptr %i.hh, align 1
  %i.hi = add i32 %i.b, -160                      ; 3 uses
  %.val922 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hj = getelementptr inbounds nuw i8, ptr %.val922, i64 %i.gv
  store i32 %i.hi, ptr %i.hj, align 1
  %.val944 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hk = getelementptr inbounds nuw i8, ptr %.val944, i64 %.0856
  %.0.copyload.i1003 = load i64, ptr %i.hk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1003) #7, !srcloc !22
  %i.hl = icmp ult i64 %.0.copyload.i1003, -844424930131968
  %i.hm = and i64 %.0.copyload.i1003, 4294967295
  %i.hn = icmp eq i64 %i.hm, 0
  %.not874 = or i1 %i.hl, %i.hn
  br i1 %.not874, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  br i1 %.not868, label %.loopexit1025, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ho = add i32 %i.dh, -64
  %i.hp = add i32 %i.b, -192
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.0849 = phi i64 [ 0, %bb.t ], [ %i.ih, %bb.v ] ; 3 uses
  %.val897 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hq = getelementptr inbounds nuw i8, ptr %.val897, i64 %i.gm
  %.0.copyload.i1004 = load i32, ptr %i.hq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1004) #7, !srcloc !19
  %i.hr = zext i32 %.0.copyload.i1004 to i64
  %.val896 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hs = getelementptr inbounds nuw i8, ptr %.val896, i64 %i.hr
  %.0.copyload.i1005 = load i32, ptr %i.hs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1005) #7, !srcloc !19
  %.val921 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ht = getelementptr inbounds nuw i8, ptr %.val921, i64 %i.gq
  store i32 0, ptr %i.ht, align 1
  %.val920 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hu = getelementptr inbounds nuw i8, ptr %.val920, i64 %i.gv
  store i32 %i.hi, ptr %i.hu, align 1
  %i.hv = uitofp nneg i64 %.0849 to double
  %.val979 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hw = getelementptr inbounds nuw i8, ptr %.val979, i64 %i.n
  store double %i.hv, ptr %i.hw, align 1
  %i.hx = add i32 %.0.copyload.i1005, 128
  %.val919 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hy = getelementptr inbounds nuw i8, ptr %.val919, i64 %i.gt
  store i32 %i.hx, ptr %i.hy, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetComputedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.hp, i32 noundef %6, i32 noundef %3, i32 noundef %i.gh, i32 noundef %6) #7
  %.val895 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hz = getelementptr inbounds nuw i8, ptr %.val895, i64 %i.h
  %.0.copyload.i1006 = load i32, ptr %i.hz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1006) #7, !srcloc !19
  %.not880 = icmp eq i32 %.0.copyload.i1006, 0
  br i1 %.not880, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ia = trunc i64 %.0849 to i32
  %i.ib = shl i32 %i.ia, 3
  %i.ic = sub i32 %i.ho, %i.ib
  %.val943 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.id = getelementptr inbounds nuw i8, ptr %.val943, i64 %i.e
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 40
  %.0.copyload.i1007 = load i64, ptr %i.ie, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1007) #7, !srcloc !22
  %i.if = zext i32 %i.ic to i64
  %.val955 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ig = getelementptr inbounds nuw i8, ptr %.val955, i64 %i.if
  store i64 %.0.copyload.i1007, ptr %i.ig, align 1
  %i.ih = add nuw nsw i64 %.0849, 1               ; 2 uses
  %.not881 = icmp eq i64 %i.ih, %.0.copyload.i987
  br i1 %.not881, label %.loopexit1025, label %bb.u

bb.w:                                             ; preds = %bb.r
  br i1 %.not868, label %.loopexit1025, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ii = add i32 %i.dh, -64
  %i.ij = add i32 %i.b, -192
  br label %bb.y

bb.y:                                             ; preds = %bb.ap, %bb.x
  %.1 = phi i64 [ 0, %bb.x ], [ %i.ky, %bb.ap ]   ; 3 uses
  %.val894 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ik = getelementptr inbounds nuw i8, ptr %.val894, i64 %i.gm
  %.0.copyload.i1008 = load i32, ptr %i.ik, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1008) #7, !srcloc !19
  %i.il = zext i32 %.0.copyload.i1008 to i64
  %.val893 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.im = getelementptr inbounds nuw i8, ptr %.val893, i64 %i.il
  %.0.copyload.i1009 = load i32, ptr %i.im, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1009) #7, !srcloc !19
  %.val918 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.in = getelementptr inbounds nuw i8, ptr %.val918, i64 %i.gq
  store i32 0, ptr %i.in, align 1
  %.val917 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.io = getelementptr inbounds nuw i8, ptr %.val917, i64 %i.gv
  store i32 %i.hi, ptr %i.io, align 1
  %i.ip = add i32 %.0.copyload.i1009, 128
  %.val916 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iq = getelementptr inbounds nuw i8, ptr %.val916, i64 %i.gt
  store i32 %i.ip, ptr %i.iq, align 1
  %.val892 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ir = getelementptr inbounds nuw i8, ptr %.val892, i64 %.0856
  %.0.copyload.i1010 = load i32, ptr %i.ir, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1010) #7, !srcloc !19
  %i.is = zext i32 %.0.copyload.i1010 to i64      ; 3 uses
  %.val891 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.it = getelementptr inbounds nuw i8, ptr %.val891, i64 %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 20
  %.0.copyload.i1011 = load i32, ptr %i.iu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1011) #7, !srcloc !19
  %i.iv = trunc i64 %.1 to i32                    ; 4 uses
  %i.iw = icmp ugt i32 %.0.copyload.i1011, %i.iv
  br i1 %i.iw, label %bb.an, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.val890 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ix = getelementptr inbounds nuw i8, ptr %.val890, i64 %i.is
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %.0.copyload.i1012 = load i32, ptr %i.iy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1012) #7, !srcloc !19
  %.not876 = icmp ugt i32 %.0.copyload.i1012, %i.iv
  br i1 %.not876, label %bb.aa, label %bb.an

bb.aa:                                            ; preds = %bb.z
  %.val889 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iz = getelementptr inbounds nuw i8, ptr %.val889, i64 %i.is
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 28
  %.0.copyload.i1013 = load i32, ptr %i.ja, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1013) #7, !srcloc !19
  %i.jb = sub nuw i32 %i.iv, %.0.copyload.i1011   ; 4 uses
  %i.jc = icmp ult i32 %i.jb, 4096
  br i1 %i.jc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.jd = shl nuw nsw i32 %i.jb, 2
  %i.je = add i32 %.0.copyload.i1013, %i.jd
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.jf = add i32 %i.jb, -4096
  %i.jg = lshr i32 %i.jf, 8
  %i.jh = and i32 %i.jg, 16777212
  %i.ji = add nuw nsw i32 %i.jh, 16392
  %i.jj = add i32 %i.ji, %.0.copyload.i1013
  %i.jk = zext i32 %i.jj to i64
  %.val888 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jl = getelementptr inbounds nuw i8, ptr %.val888, i64 %i.jk
  %.0.copyload.i1014 = load i32, ptr %i.jl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1014) #7, !srcloc !19
  %i.jm = shl i32 %i.jb, 2
  %i.jn = and i32 %i.jm, 4092
  %i.jo = add i32 %.0.copyload.i1014, %i.jn
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0847.in = phi i32 [ %i.je, %bb.ab ], [ %i.jo, %bb.ac ]
  %.0847 = add i32 %.0847.in, 8
  %i.jp = zext i32 %.0847 to i64
  %.val887 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jq = getelementptr inbounds nuw i8, ptr %.val887, i64 %i.jp
  %.0.copyload.i1015 = load i32, ptr %i.jq, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1015) #7, !srcloc !19
  %i.jr = and i32 %.0.copyload.i1015, 15
  switch i32 %i.jr, label %bb.al [
    i32 1, label %bb.ae
    i32 2, label %bb.af
    i32 3, label %bb.ag
    i32 4, label %bb.ah
    i32 5, label %bb.ai
    i32 6, label %bb.aj
    i32 7, label %bb.an
    i32 15, label %bb.ak
    i32 9, label %bb.ae
    i32 10, label %bb.af
    i32 11, label %bb.ag
    i32 12, label %bb.ah
    i32 13, label %bb.ai
    i32 14, label %bb.ap
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.js = and i32 %.0.copyload.i1015, -8
  %i.jt = zext i32 %i.js to i64
  %i.ju = or disjoint i64 %i.jt, -562949953421312
  br label %bb.am

bb.af:                                            ; preds = %bb.ad, %bb.ad
  %i.jv = and i32 %.0.copyload.i1015, -8
  %i.jw = zext i32 %i.jv to i64
  %i.jx = or disjoint i64 %i.jw, -844424930131968
  br label %bb.am

bb.ag:                                            ; preds = %bb.ad, %bb.ad
  %i.jy = and i32 %.0.copyload.i1015, -8
  %i.jz = zext i32 %i.jy to i64
  %.val980 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ka = getelementptr inbounds nuw i8, ptr %.val980, i64 %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %.0.copyload.i1016 = load double, ptr %i.kb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i1016) #7, !srcloc !24
  %i.kc = bitcast double %.0.copyload.i1016 to i64
  %i.kd = fcmp uno double %.0.copyload.i1016, 0.000000e+00
  %i.ke = select i1 %i.kd, i64 9221120237041090560, i64 %i.kc
  br label %bb.am

bb.ah:                                            ; preds = %bb.ad, %bb.ad
  %i.kf = ashr i32 %.0.copyload.i1015, 3
  %i.kg = sitofp i32 %i.kf to double
  %i.kh = bitcast double %i.kg to i64
  br label %bb.am

bb.ai:                                            ; preds = %bb.ad, %bb.ad
  %i.ki = lshr i32 %.0.copyload.i1015, 3
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = or disjoint i64 %i.kj, -1266637395197952
  br label %bb.am

bb.aj:                                            ; preds = %bb.ad
  %i.kl = icmp ugt i32 %.0.copyload.i1015, 15
  %i.km = zext i1 %i.kl to i64
  %i.kn = or disjoint i64 %i.km, -1407374883553280
  br label %bb.am

bb.ak:                                            ; preds = %bb.ad
  br label %bb.ap

bb.al:                                            ; preds = %bb.ad
  %i.ko = zext i32 %.0.copyload.i1015 to i64
  %i.kp = or disjoint i64 %i.ko, -281474976710656
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae
  %.0 = phi i64 [ %i.kp, %bb.al ], [ %i.kn, %bb.aj ], [ %i.ju, %bb.ae ], [ %i.jx, %bb.af ], [ %i.ke, %bb.ag ], [ %i.kh, %bb.ah ], [ %i.kk, %bb.ai ] ; 2 uses
  %.mask = and i64 %.0, -140737488355328
  %i.kq = icmp eq i64 %.mask, -1970324836974592
  br i1 %i.kq, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am, %bb.ad, %bb.z, %bb.y
  %i.kr = uitofp nneg i64 %.1 to double
  %.val978 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ks = getelementptr inbounds nuw i8, ptr %.val978, i64 %i.n
  store double %i.kr, ptr %i.ks, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetComputedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.ij, i32 noundef %6, i32 noundef %3, i32 noundef %i.gh, i32 noundef %6) #7
  %.val886 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kt = getelementptr inbounds nuw i8, ptr %.val886, i64 %i.h
  %.0.copyload.i1017 = load i32, ptr %i.kt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1017) #7, !srcloc !19
  %.not877 = icmp eq i32 %.0.copyload.i1017, 0
  br i1 %.not877, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.val942 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ku = getelementptr inbounds nuw i8, ptr %.val942, i64 %i.e
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 40
  %.0.copyload.i1018 = load i64, ptr %i.kv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1018) #7, !srcloc !22
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ak, %bb.ad, %bb.am, %bb.ao
  %.0.copyload.i1018.sink = phi i64 [ %.0.copyload.i1018, %bb.ao ], [ %.0, %bb.am ], [ -1548112371908608, %bb.ak ], [ -1688849860263936, %bb.ad ]
  %.pn = shl i32 %i.iv, 3
  %.sink = sub i32 %i.ii, %.pn
  %i.kw = zext i32 %.sink to i64
  %.val953 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kx = getelementptr inbounds nuw i8, ptr %.val953, i64 %i.kw
  store i64 %.0.copyload.i1018.sink, ptr %i.kx, align 1
  %i.ky = add nuw nsw i64 %.1, 1                  ; 2 uses
  %.not878 = icmp eq i64 %i.ky, %.0.copyload.i987
  br i1 %.not878, label %.loopexit1025, label %bb.y

.loopexit1025:                                    ; preds = %bb.ap, %bb.v, %bb.w, %bb.s
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %i.j) #7
  %.val885 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kz = getelementptr inbounds nuw i8, ptr %.val885, i64 %i.bo
  %.0.copyload.i1019 = load i32, ptr %i.kz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1019) #7, !srcloc !19
  %i.la = zext i32 %.0.copyload.i1019 to i64
  %.val884 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lb = getelementptr inbounds nuw i8, ptr %.val884, i64 %i.la
  %.0.copyload.i1020 = load i32, ptr %i.lb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1020) #7, !srcloc !19
  %i.lc = lshr i32 %.0.copyload.i1020, 22
  %i.ld = and i32 %i.lc, 1020
  %.val883 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %.val883, i64 %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 289808
  %.0.copyload.i1021 = load i32, ptr %i.lg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1021) #7, !srcloc !19
  %i.lh = zext i32 %.0.copyload.i1021 to i64
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.li = getelementptr inbounds nuw i8, ptr %.val, i64 %i.lh
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 60
  %.0.copyload.i1022 = load i32, ptr %i.lj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1022) #7, !srcloc !19
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !28
  %i.lm = icmp ult i32 %.0.copyload.i1022, %i.ll
  br i1 %i.lm, label %bb.aq, label %.critedge, !prof !29

bb.aq:                                            ; preds = %.loopexit1025
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !30
  %i.lp = zext i32 %.0.copyload.i1022 to i64
  %i.lq = getelementptr inbounds nuw [24 x i8], ptr %i.lo, i64 %i.lp ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !32 ; 2 uses
  %.not882 = icmp eq ptr %i.ls, null
  br i1 %.not882, label %.critedge, label %bb.ar, !prof !25

bb.ar:                                            ; preds = %bb.aq
  %i.lt = load ptr, ptr @w2c_hermes_t2, align 8, !tbaa !33 ; 4 uses
  %i.lu = load ptr, ptr %i.lq, align 8, !tbaa !34 ; 4 uses
  %i.lv = icmp eq ptr %i.lt, %i.lu
  br i1 %i.lv, label %func_types_eq.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.lw = icmp ne ptr %i.lt, null
  %i.lx = icmp ne ptr %i.lu, null
  %or.cond.i = and i1 %i.lw, %i.lx
  br i1 %or.cond.i, label %func_types_eq.exit, label %.critedge, !prof !35

func_types_eq.exit:                               ; preds = %bb.as
  %i.ly = load i128, ptr %i.lt, align 1
  %i.lz = load i128, ptr %i.lu, align 1
  %i.ma = xor i128 %i.ly, %i.lz
  %i.mb = getelementptr i8, ptr %i.lt, i64 16
  %i.mc = getelementptr i8, ptr %i.lu, i64 16
  %i.md = load i128, ptr %i.mb, align 1
  %i.me = load i128, ptr %i.mc, align 1
  %i.mf = xor i128 %i.md, %i.me
  %i.mg = or i128 %i.ma, %i.mf
  %i.mh = icmp ne i128 %i.mg, 0
  %i.mi = zext i1 %i.mh to i32
  %.not.i1023 = icmp eq i32 %i.mi, 0
  br i1 %.not.i1023, label %func_types_eq.exit.thread, label %.critedge, !prof !36

.critedge:                                        ; preds = %bb.as, %bb.aq, %.loopexit1025, %func_types_eq.exit
  tail call void @wasm_rt_trap(i32 noundef 6) #8
  unreachable

func_types_eq.exit.thread:                        ; preds = %bb.ar, %func_types_eq.exit
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !37
  tail call void %i.ls(ptr noundef %i.mk, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  br label %bb.au

bb.at:                                            ; preds = %w2c_hermes_hermes0x3A0x3Aoscompat0x3A0x3Athread_stack_bounds0x28unsigned0x20int0x29.exit, %bb.i
  %i.ml = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseStackOverflow0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AStackOverflowKind0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1) #7
  %i.mm = zext i32 %1 to i64                      ; 2 uses
  %.val952 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mn = getelementptr inbounds nuw i8, ptr %.val952, i64 %i.mm
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  store i64 -1688849860263936, ptr %i.mo, align 1
  %.val915 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mp = getelementptr inbounds nuw i8, ptr %.val915, i64 %i.mm
  store i32 %i.ml, ptr %i.mp, align 1
  br label %bb.au

.loopexit:                                        ; preds = %bb.an, %bb.u
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %i.j) #7
  %i.mq = zext i32 %1 to i64                      ; 2 uses
  %.val951 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mr = getelementptr inbounds nuw i8, ptr %.val951, i64 %i.mq
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store i64 -1688849860263936, ptr %i.ms, align 1
  %.val914 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mt = getelementptr inbounds nuw i8, ptr %.val914, i64 %i.mq
  store i32 0, ptr %i.mt, align 1
  br label %bb.au

bb.au:                                            ; preds = %func_types_eq.exit.thread, %bb.at, %.loopexit, %bb.h, %bb.f
  %.sink1049 = phi i64 [ %i.ag, %bb.f ], [ %i.at, %bb.h ], [ %i.ay, %.loopexit ], [ %i.ay, %bb.at ], [ %i.ay, %func_types_eq.exit.thread ]
  %.0.copyload.i989.sink = phi i32 [ 0, %bb.f ], [ %i.as, %bb.h ], [ %.0.copyload.i989, %.loopexit ], [ %.0.copyload.i989, %bb.at ], [ %.0.copyload.i989, %func_types_eq.exit.thread ]
  %.val913 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mu = getelementptr inbounds nuw i8, ptr %.val913, i64 %.sink1049
  store i32 %.0.copyload.i989.sink, ptr %i.mu, align 1
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACallResult0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x2C0x200x28hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ACallResultSpecialize0x2920x3E0x20hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AcreateEfficientImpl0x3Cchar0x3E0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20llvh0x3A0x3AArrayRef0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.c = add i32 %i.b, -48                        ; 4 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 42 uses
  %i.e = zext i32 %3 to i64                       ; 3 uses
  %.val352 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val352, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  switch i32 %.0.copyload.i, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %2, 5476
  %i.i = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AgetStringPrim0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x29(ptr noundef nonnull %0, i32 noundef %i.h, i32 noundef %2, i32 noundef 14) #7
  %i.j = zext i32 %1 to i64                       ; 2 uses
  %.val366 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val366, i64 %i.j
  store i32 1, ptr %i.k, align 1
  %i.l = zext i32 %i.i to i64
  %i.m = or disjoint i64 %i.l, -844424930131968
  %.val380 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val380, i64 %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.m, ptr %i.o, align 1
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %.val351 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val351, i64 %i.e
  %.0.copyload.i382 = load i32, ptr %i.p, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i382) #7, !srcloc !19
  %i.q = zext i32 %.0.copyload.i382 to i64
  %.val370 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val370, i64 %i.q
  %.0.copyload.i383 = load i8, ptr %i.r, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i383) #7, !srcloc !21
  %i.s = sext i8 %.0.copyload.i383 to i32
  %i.t = and i32 %i.s, 65535
  %i.u = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AgetCharacterString0x28char16_t0x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.t) #7
  %i.v = zext i32 %i.u to i64
  %.val373 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val373, i64 %i.v
  %.0.copyload.i384 = load i64, ptr %i.w, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i384) #7, !srcloc !22
  %i.x = zext i32 %1 to i64                       ; 2 uses
  %.val379 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val379, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %.0.copyload.i384, ptr %i.z, align 1
  %.val365 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val365, i64 %i.x
  store i32 1, ptr %i.aa, align 1
  br label %bb.y

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp ult i32 %.0.copyload.i, 128
  br i1 %i.ab, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = zext i32 %4 to i64                      ; 2 uses
  %.val369 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val369, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 11
  %.0.copyload.i385 = load i8, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i385) #7, !srcloc !21
  %i.af = icmp sgt i8 %.0.copyload.i385, -1
  br i1 %i.af, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val350 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val350, i64 %i.ac
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %.0.copyload.i386 = load i32, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i386) #7, !srcloc !19
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABufferedStringPrimitive0x3Cchar16_t0x3E0x3A0x3AappendToCopyableString0x28std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar16_t0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x20const0x2A0x29:bb.a

declare void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar16_t0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x3A0x3A_0x5Fgrow_by_and_replace0x28unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20char16_t0x20const0x2A0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AtoString0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20unsigned0x20char0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 15 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.c = add i32 %i.b, -48                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 194 uses
  %i.e = zext i32 %3 to i64
  %.val2971 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val2971, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.h = zext i32 %i.c to i64                     ; 8 uses
  %.val3023 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val3023, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  store i32 %.0.copyload.i, ptr %i.j, align 1
  %i.k = add i32 %3, 8
  %i.l = add nuw nsw i64 %i.h, 24                 ; 2 uses
  %.val3022 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val3022, i64 %i.l
  store i32 %i.k, ptr %i.m, align 1
  %.val3060 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val3060, i64 %i.l
  %.0.copyload.i3110 = load i64, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3110) #7, !srcloc !22
  %i.o = add nuw nsw i64 %i.h, 8                  ; 2 uses
  %.val3092 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val3092, i64 %i.o
  store i64 %.0.copyload.i3110, ptr %i.p, align 1
  %i.q = add i32 %i.b, -12                        ; 7 uses
  %i.r = load i32, ptr %i.a, align 8, !tbaa !17   ; 8 uses
  %i.s = add i32 %i.r, -64                        ; 3 uses
  store i32 %i.s, ptr %i.a, align 8, !tbaa !17
  %.val3059 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val3059, i64 %i.o
  %.0.copyload.i3111 = load i64, ptr %i.t, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3111) #7, !srcloc !22
  %i.u = zext i32 %i.s to i64                     ; 11 uses
  %i.v = add nuw nsw i64 %i.u, 48                 ; 5 uses
  %.val3091 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val3091, i64 %i.v
  store i64 0, ptr %i.w, align 1
  %i.x = trunc i64 %.0.copyload.i3111 to i32      ; 3 uses
  %i.y = lshr i64 %.0.copyload.i3111, 32          ; 3 uses
  %i.z = trunc nuw i64 %i.y to i32                ; 4 uses
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.aa = add i32 %i.r, -16                       ; 2 uses
  %i.ab = tail call i32 @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcCompare0x28unsigned0x20long0x20long0x20const0x2A0x2C0x20unsigned0x20long0x20long0x20const0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.x, i32 noundef %i.aa, i32 noundef 0) #7
  %.not2852 = icmp eq i32 %i.ab, 0
  %.val3024 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not2852, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = add nuw nsw i64 %i.u, 40                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val3024, i64 %i.ac
  store i32 %i.x, ptr %i.ad, align 1
  %.val3020 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val3020, i64 %i.u
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  store i32 %i.z, ptr %i.af, align 1
  %.val3058 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val3058, i64 %i.ac
  %.0.copyload.i3112 = load i64, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3112) #7, !srcloc !22
  %.val3090 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val3090, i64 %i.u
  store i64 %.0.copyload.i3112, ptr %i.ah, align 1
  %i.ai = tail call i32 @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AAPInt0x28unsigned0x20int0x2C0x20llvh0x3A0x3AArrayRef0x3Cunsigned0x20long0x20long0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.aa, i32 noundef 0, i32 noundef %i.s) #7 ; 0 uses
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.aj = zext i32 %i.q to i64                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val3024, i64 %i.aj
  store i16 48, ptr %i.ak, align 1
  %.val2915 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %.val2915, i64 %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 11
  store i8 1, ptr %i.am, align 1
  br label %bb.ex

bb.e:                                             ; preds = %bb.a
  %i.an = shl nuw nsw i64 %i.y, 3
  %i.ao = add i64 %.0.copyload.i3111, 4294967288
  %i.ap = add i64 %i.ao, %i.an
  %i.aq = and i64 %i.ap, 4294967295
  %.val3057 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.val3057, i64 %i.aq
  %.0.copyload.i3113 = load i64, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3113) #7, !srcloc !22
  %.val3019 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.val3019, i64 %i.u
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 44
  store i32 %i.z, ptr %i.at, align 1
  %i.au = add nuw nsw i64 %i.u, 40                ; 2 uses
  %.val3018 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.val3018, i64 %i.au
  store i32 %i.x, ptr %i.av, align 1
  %.val3056 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.val3056, i64 %i.au
  %.0.copyload.i3114 = load i64, ptr %i.aw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3114) #7, !srcloc !22
  %.val3089 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %.val3089, i64 %i.u
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %.0.copyload.i3114, ptr %i.ay, align 1
  %i.az = add i32 %i.r, -16
  %i.ba = shl i32 %i.z, 6
  %i.bb = add i32 %i.r, -56
  %i.bc = tail call i32 @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AAPInt0x28unsigned0x20int0x2C0x20llvh0x3A0x3AArrayRef0x3Cunsigned0x20long0x20long0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.az, i32 noundef %i.ba, i32 noundef %i.bb) #7 ; 3 uses
  %i.bd = icmp sgt i64 %.0.copyload.i3113, -1
  br i1 %i.bd, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = zext i32 %i.bc to i64                   ; 3 uses
  %.val2970 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.val2970, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.0.copyload.i3115 = load i32, ptr %i.bg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3115) #7, !srcloc !19
  %i.bh = icmp ult i32 %.0.copyload.i3115, 65
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.val3055 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val3055, i64 %i.be
  %.0.copyload.i3116 = load i64, ptr %i.bi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3116) #7, !srcloc !22
  %i.bj = xor i64 %.0.copyload.i3116, -1
  %i.bk = sub nsw i32 0, %.0.copyload.i3115
  %i.bl = and i32 %i.bk, 63
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = lshr i64 -1, %i.bm
  %i.bo = and i64 %i.bn, %i.bj
  %.val3088 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.val3088, i64 %i.be
  store i64 %i.bo, ptr %i.bp, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AflipAllBitsSlowCase0x280x29(ptr noundef nonnull %0, i32 noundef %i.bc) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3Aoperator0x2B0x2B0x280x29(ptr noundef nonnull %0, i32 noundef %i.bc) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i, %bb.c
  %.not2908 = phi i1 [ true, %bb.c ], [ true, %bb.e ], [ false, %bb.i ]
  %i.bq = zext i32 %i.q to i64                    ; 5 uses
  %.val3087 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.val3087, i64 %i.bq
  store i64 0, ptr %i.br, align 1
  %.val3017 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.val3017, i64 %i.bq
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i32 0, ptr %i.bt, align 1
  %i.bu = icmp ult i32 %4, 4
  br i1 %i.bu, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = icmp ult i32 %4, 8
  br i1 %i.bv, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = icmp ult i32 %4, 16
  br i1 %i.bw, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = icmp ult i32 %4, 32
  %i.by = select i1 %i.bx, i32 4, i32 5
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.m
  %.0 = phi i32 [ 1, %bb.j ], [ 2, %bb.k ], [ 3, %bb.l ], [ %i.by, %bb.m ]
  %i.bz = lshr i32 64, %.0
  %i.ca = mul i32 %i.bz, %i.z
  %i.cb = add i32 %i.ca, 1
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Areserve0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.q, i32 noundef %i.cb) #7
  %i.cc = zext i32 %4 to i64                      ; 9 uses
  %i.cd = add nuw nsw i64 %i.u, 24                ; 2 uses
  %i.ce = add nuw nsw i64 %i.u, 32                ; 2 uses
  %i.cf = add i32 %i.r, -40
  %i.cg = add i32 %i.r, -48                       ; 2 uses
  %i.ch = add i32 %i.r, -16
  %i.ci = zext i32 %i.ch to i64                   ; 8 uses
  %i.cj = add nuw nsw i64 %i.ci, 8                ; 4 uses
  %.not2856 = icmp eq i32 %4, 1
  %i.ck = zext i32 %i.cf to i64                   ; 23 uses
  %i.cl = add nuw nsw i64 %i.ck, 8                ; 15 uses
  %i.cm = zext i32 %i.cg to i64                   ; 7 uses
  %.not2864 = icmp eq i32 %i.cg, 0                ; 5 uses
  %i.cn = icmp eq i32 %4, 0                       ; 2 uses
  %i.co = add nuw nsw i64 %i.u, 56                ; 4 uses
  %invariant.op = select i1 %.not2864, i32 61, i32 60
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.n
  %.val3086 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %.val3086, i64 %i.cd
  store i64 0, ptr %i.cp, align 1
  %.val3016 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %.val3016, i64 %i.ce
  store i32 1, ptr %i.cq, align 1
  %i.cr = load i32, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.cs = add i32 %i.cr, -16                      ; 2 uses
  store i32 %i.cs, ptr %i.a, align 8, !tbaa !17
  %i.ct = zext i32 %i.cs to i64
  %i.cu = add nuw nsw i64 %i.ct, 8                ; 2 uses
  %.val3085 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.val3085, i64 %i.cu
  store i64 %i.cc, ptr %i.cv, align 1
  %.val2969 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %.val2969, i64 %i.cj
  %.0.copyload.i3117 = load i32, ptr %i.cw, align 1 ; 18 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3117) #7, !srcloc !19
  %i.cx = icmp ult i32 %.0.copyload.i3117, 65
  br i1 %i.cx, label %bb.o, label %bb.u

bb.o:                                             ; preds = %.backedge
  %.val3054 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %.val3054, i64 %i.ci
  %.0.copyload.i3118 = load i64, ptr %i.cy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3118) #7, !srcloc !22
  br i1 %i.cn, label %bb.p, label %bb.q, !prof !25

bb.p:                                             ; preds = %bb.o
  tail call void @wasm_rt_trap(i32 noundef 3) #8
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cz = udiv i64 %.0.copyload.i3118, %i.cc      ; 2 uses
  %i.da = mul i64 %i.cz, %i.cc                    ; 0 uses
  %.recomposed = urem i64 %.0.copyload.i3118, %i.cc
  %.val3084 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %.val3084, i64 %i.cm
  store i64 %.recomposed, ptr %i.db, align 1
  %i.dc = sub nsw i32 0, %.0.copyload.i3117
  %i.dd = and i32 %i.dc, 63
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = lshr i64 -1, %i.de
  %i.dg = and i64 %i.cz, %i.df                    ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  %i.di = lshr i64 %i.dg, 32
  %i.dj = trunc nuw i64 %i.di to i32
  %.val2968 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %.val2968, i64 %i.cl
  %.0.copyload.i3119 = load i32, ptr %i.dk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3119) #7, !srcloc !19
  %i.dl = icmp ult i32 %.0.copyload.i3119, 65
  br i1 %i.dl, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val2967 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %.val2967, i64 %i.ck
  %.0.copyload.i3120 = load i32, ptr %i.dm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3120) #7, !srcloc !19
  %.not2902 = icmp eq i32 %.0.copyload.i3120, 0
  br i1 %.not2902, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3120) #7
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.s
  %.val3015 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %.val3015, i64 %i.cl
  store i32 %.0.copyload.i3117, ptr %i.dn, align 1
  %.val3014 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %.val3014, i64 %i.ck
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store i32 %i.dj, ptr %i.dp, align 1
  %.val3013 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %.val3013, i64 %i.ck
  store i32 %i.dh, ptr %i.dq, align 1
  br label %bb.eg

bb.u:                                             ; preds = %.backedge
  %i.dr = zext i32 %.0.copyload.i3117 to i64
  %i.ds = add nuw nsw i64 %i.dr, 63               ; 2 uses
  %i.dt = lshr i64 %i.ds, 6                       ; 5 uses
  %i.du = trunc nuw nsw i64 %i.dt to i32          ; 6 uses
  %i.dv = shl i32 %i.du, 6                        ; 3 uses
  %.val2966 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dw = getelementptr inbounds nuw i8, ptr %.val2966, i64 %i.ci
  %.0.copyload.i3121 = load i32, ptr %i.dw, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3121) #7, !srcloc !19
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %bb.u
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ %i.dt, %bb.u ] ; 2 uses
  %.02773 = phi i32 [ %i.ee, %bb.x ], [ 0, %bb.u ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %i.dx = shl nsw i32 %indvars, 3
  %i.dy = add i32 %i.dx, %.0.copyload.i3121
  %i.dz = zext i32 %i.dy to i64
  %.val3053 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ea = getelementptr inbounds nuw i8, ptr %.val3053, i64 %i.dz
  %.0.copyload.i3122 = load i64, ptr %i.ea, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3122) #7, !srcloc !22
  %.not2853 = icmp eq i64 %.0.copyload.i3122, 0
  br i1 %.not2853, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.copyload.i3122, i1 true)
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = or disjoint i32 %.02773, %i.ec
  br label %.loopexit3237

bb.x:                                             ; preds = %bb.v
  %i.ee = add i32 %.02773, 64
  %i.ef = icmp ugt i64 %indvars.iv, 1
  br i1 %i.ef, label %bb.v, label %.loopexit3237

.loopexit3237:                                    ; preds = %bb.x, %bb.w
  %.02758 = phi i32 [ %i.ed, %bb.w ], [ %i.dv, %bb.x ]
  %i.eg = or i32 %.0.copyload.i3117, -64
  %i.eh = and i32 %.0.copyload.i3117, 63
  %.not2854 = icmp eq i32 %i.eh, 0
  %i.ei = select i1 %.not2854, i32 0, i32 %i.eg   ; 3 uses
  %i.ej = add i32 %i.ei, %.02758
  %i.ek = sub i32 %.0.copyload.i3117, %i.ej
  %i.el = zext i32 %i.ek to i64
  %i.em = add nuw nsw i64 %i.el, 63
  %i.en = lshr i64 %i.em, 6                       ; 3 uses
  %i.eo = trunc nuw nsw i64 %i.en to i32          ; 7 uses
  %.not2855 = icmp eq i64 %i.en, 0
  br i1 %.not2855, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %.loopexit3237
  %i.ep = shl nuw nsw i32 %i.du, 3                ; 3 uses
  %i.eq = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ep) #7
  %i.er = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.eq, i32 noundef 0, i32 noundef %i.ep) #7 ; 3 uses
  %i.es = zext i32 %i.er to i64
  %.val3083 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.et = getelementptr inbounds nuw i8, ptr %.val3083, i64 %i.es
  store i64 0, ptr %i.et, align 1
  %i.eu = add nsw i32 %i.ep, -8
  %i.ev = add i32 %i.eu, %i.er
  %i.ew = zext i32 %i.ev to i64                   ; 2 uses
  %.val3052 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %.val3052, i64 %i.ew
  %.0.copyload.i3123 = load i64, ptr %i.ex, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3123) #7, !srcloc !22
  %i.ey = sub i32 0, %.0.copyload.i3117
  %i.ez = and i32 %i.ey, 63
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = lshr i64 -1, %i.fa
  %i.fc = and i64 %.0.copyload.i3123, %i.fb
  %.val3082 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fd = getelementptr inbounds nuw i8, ptr %.val3082, i64 %i.ew
  store i64 %i.fc, ptr %i.fd, align 1
  %.val2965 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fe = getelementptr inbounds nuw i8, ptr %.val2965, i64 %i.cl
  %.0.copyload.i3124 = load i32, ptr %i.fe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3124) #7, !srcloc !19
  %i.ff = icmp ult i32 %.0.copyload.i3124, 65
  br i1 %i.ff, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.val2964 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %.val2964, i64 %i.ck
  %.0.copyload.i3125 = load i32, ptr %i.fg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3125) #7, !srcloc !19
  %.not2901 = icmp eq i32 %.0.copyload.i3125, 0
  br i1 %.not2901, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3125) #7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.y, %bb.aa
  %.val3012 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fh = getelementptr inbounds nuw i8, ptr %.val3012, i64 %i.cl
  store i32 %.0.copyload.i3117, ptr %i.fh, align 1
  %.val3011 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fi = getelementptr inbounds nuw i8, ptr %.val3011, i64 %i.ck
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  store i32 0, ptr %i.fj, align 1
  %.val3010 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fk = getelementptr inbounds nuw i8, ptr %.val3010, i64 %i.ck
  store i32 %i.er, ptr %i.fk, align 1
  %.val3081 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fl = getelementptr inbounds nuw i8, ptr %.val3081, i64 %i.cm
  store i64 0, ptr %i.fl, align 1
  br label %bb.eg

bb.ac:                                            ; preds = %.loopexit3237
  br i1 %.not2856, label %bb.dm, label %.preheader3235

.preheader3235:                                   ; preds = %bb.ac, %bb.ae
  %indvars.iv3272 = phi i64 [ %indvars.iv.next3273, %bb.ae ], [ %i.dt, %bb.ac ] ; 2 uses
  %.12774 = phi i32 [ %i.ft, %bb.ae ], [ 0, %bb.ac ] ; 2 uses
  %indvars.iv.next3273 = add nsw i64 %indvars.iv3272, -1 ; 2 uses
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AtoString0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20unsigned0x20char0x29:bb.a
bb.af:                                            ; preds = %.loopexit3236
  %i.fy = zext i32 %.0.copyload.i3121 to i64
  %.val3050 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %.val3050, i64 %i.fy
  %.0.copyload.i3127 = load i64, ptr %i.fz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3127) #7, !srcloc !22
  %i.ga = icmp ult i64 %.0.copyload.i3127, %i.cc
  br i1 %i.ga, label %bb.ec, label %.preheader3396

.preheader3396:                                   ; preds = %bb.af, %.loopexit3236
  br label %bb.ag

bb.ag:                                            ; preds = %.preheader3396, %bb.ai
  %indvars.iv3276 = phi i64 [ %indvars.iv.next3277, %bb.ai ], [ %i.dt, %.preheader3396 ] ; 2 uses
  %.22775 = phi i32 [ %i.gi, %bb.ai ], [ 0, %.preheader3396 ] ; 2 uses
  %indvars.iv.next3277 = add nsw i64 %indvars.iv3276, -1 ; 2 uses
  %indvars3278 = trunc i64 %indvars.iv.next3277 to i32
  %i.gb = shl nsw i32 %indvars3278, 3
  %i.gc = add i32 %i.gb, %.0.copyload.i3121
  %i.gd = zext i32 %i.gc to i64
  %.val3049 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ge = getelementptr inbounds nuw i8, ptr %.val3049, i64 %i.gd
  %.0.copyload.i3128 = load i64, ptr %i.ge, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3128) #7, !srcloc !22
  %.not2860 = icmp eq i64 %.0.copyload.i3128, 0
  br i1 %.not2860, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.copyload.i3128, i1 true)
  %i.gg = trunc nuw nsw i64 %i.gf to i32
  %i.gh = or disjoint i32 %.22775, %i.gg
  br label %.loopexit3234

bb.ai:                                            ; preds = %bb.ag
  %i.gi = add i32 %.22775, 64
  %i.gj = icmp ugt i64 %indvars.iv3276, 1
  br i1 %i.gj, label %bb.ag, label %.loopexit3234

.loopexit3234:                                    ; preds = %bb.ai, %bb.ah
  %.02766 = phi i32 [ %i.gh, %bb.ah ], [ %i.dv, %bb.ai ]
  %i.gk = add i32 %i.ei, %.02766
  %i.gl = sub i32 %.0.copyload.i3117, %i.gk
  %i.gm = icmp ugt i32 %i.gl, 64
  br i1 %i.gm, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %.loopexit3234
  %i.gn = zext i32 %.0.copyload.i3121 to i64
  %.val3048 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.go = getelementptr inbounds nuw i8, ptr %.val3048, i64 %i.gn
  %.0.copyload.i3129 = load i64, ptr %i.go, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3129) #7, !srcloc !22
  %.not2861 = icmp eq i64 %.0.copyload.i3129, %i.cc
  br i1 %.not2861, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.gp = shl nuw nsw i32 %i.du, 3                ; 3 uses
  %i.gq = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.gp) #7
  %i.gr = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.gq, i32 noundef 0, i32 noundef %i.gp) #7 ; 3 uses
  %i.gs = zext i32 %i.gr to i64
  %.val3080 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gt = getelementptr inbounds nuw i8, ptr %.val3080, i64 %i.gs
  store i64 1, ptr %i.gt, align 1
  %i.gu = add nsw i32 %i.gp, -8
  %i.gv = add i32 %i.gu, %i.gr
  %i.gw = zext i32 %i.gv to i64                   ; 2 uses
  %.val3047 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gx = getelementptr inbounds nuw i8, ptr %.val3047, i64 %i.gw
  %.0.copyload.i3130 = load i64, ptr %i.gx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3130) #7, !srcloc !22
  %i.gy = sub i32 0, %.0.copyload.i3117
  %i.gz = and i32 %i.gy, 63
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = lshr i64 -1, %i.ha
  %i.hc = and i64 %.0.copyload.i3130, %i.hb
  %.val3079 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hd = getelementptr inbounds nuw i8, ptr %.val3079, i64 %i.gw
  store i64 %i.hc, ptr %i.hd, align 1
  %.val2963 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.he = getelementptr inbounds nuw i8, ptr %.val2963, i64 %i.cl
  %.0.copyload.i3131 = load i32, ptr %i.he, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3131) #7, !srcloc !19
  %i.hf = icmp ult i32 %.0.copyload.i3131, 65
  br i1 %i.hf, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.val2962 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hg = getelementptr inbounds nuw i8, ptr %.val2962, i64 %i.ck
  %.0.copyload.i3132 = load i32, ptr %i.hg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3132) #7, !srcloc !19
  %.not2862 = icmp eq i32 %.0.copyload.i3132, 0
  br i1 %.not2862, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3132) #7
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.ak, %bb.am
  %.val3009 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hh = getelementptr inbounds nuw i8, ptr %.val3009, i64 %i.cl
  store i32 %.0.copyload.i3117, ptr %i.hh, align 1
  %.val3008 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hi = getelementptr inbounds nuw i8, ptr %.val3008, i64 %i.ck
  store i32 %i.gr, ptr %i.hi, align 1
  %.val3078 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hj = getelementptr inbounds nuw i8, ptr %.val3078, i64 %i.cm
  store i64 0, ptr %i.hj, align 1
  br label %bb.eg

bb.ao:                                            ; preds = %bb.aj, %.loopexit3234
  %.val2961 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hk = getelementptr inbounds nuw i8, ptr %.val2961, i64 %i.cl
  %.0.copyload.i3133 = load i32, ptr %i.hk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3133) #7, !srcloc !19
  %i.hl = zext i32 %.0.copyload.i3133 to i64
  %i.hm = add nuw nsw i64 %i.hl, 63
  %i.hn = lshr i64 %i.hm, 6
  %i.ho = icmp eq i64 %i.dt, %i.hn
  br i1 %i.ho, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hp = icmp ult i32 %.0.copyload.i3133, 65
  br i1 %i.hp, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.val2960 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hq = getelementptr inbounds nuw i8, ptr %.val2960, i64 %i.ck
  %.0.copyload.i3134 = load i32, ptr %i.hq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3134) #7, !srcloc !19
  %.not2863 = icmp eq i32 %.0.copyload.i3134, 0
  br i1 %.not2863, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3134) #7
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ap, %bb.ar
  %.val3006 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hr = getelementptr inbounds nuw i8, ptr %.val3006, i64 %i.cl
  store i32 %.0.copyload.i3117, ptr %i.hr, align 1
  %i.hs = shl nuw nsw i32 %i.du, 3
  %i.ht = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.hs) #7
  br label %bb.at

bb.at:                                            ; preds = %bb.ao, %bb.as
  %.sink3380 = phi i64 [ %i.ck, %bb.as ], [ %i.cl, %bb.ao ]
  %.sink = phi i32 [ %i.ht, %bb.as ], [ %.0.copyload.i3117, %bb.ao ]
  %.val3005 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hu = getelementptr inbounds nuw i8, ptr %.val3005, i64 %.sink3380
  store i32 %.sink, ptr %i.hu, align 1
  %.val2959 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hv = getelementptr inbounds nuw i8, ptr %.val2959, i64 %i.ci
  %.0.copyload.i3135 = load i32, ptr %i.hv, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3135) #7, !srcloc !19
  %i.hw = icmp eq i64 %i.en, 1
  %.val2958 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hx = getelementptr inbounds nuw i8, ptr %.val2958, i64 %i.ck
  %.0.copyload.i3136 = load i32, ptr %i.hx, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3136) #7
  br i1 %i.hw, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.hy = zext i32 %.0.copyload.i3135 to i64
  %.val3046 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hz = getelementptr inbounds nuw i8, ptr %.val3046, i64 %i.hy
  %.0.copyload.i3137 = load i64, ptr %i.hz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3137) #7, !srcloc !22
  br i1 %i.cn, label %bb.av, label %bb.aw, !prof !25

bb.av:                                            ; preds = %bb.au
  tail call void @wasm_rt_trap(i32 noundef 3) #8
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.ia = udiv i64 %.0.copyload.i3137, %i.cc      ; 2 uses
  %i.ib = zext i32 %.0.copyload.i3136 to i64
  %.val3077 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ic = getelementptr inbounds nuw i8, ptr %.val3077, i64 %i.ib
  store i64 %i.ia, ptr %i.ic, align 1
  %.val2957 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.id = getelementptr inbounds nuw i8, ptr %.val2957, i64 %i.ck
  %.0.copyload.i3138 = load i32, ptr %i.id, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3138) #7, !srcloc !19
  %i.ie = add i32 %.0.copyload.i3138, 8
  %i.if = lshr i64 %i.ds, 3
  %i.ig = trunc nuw nsw i64 %i.if to i32
  %i.ih = and i32 %i.ig, 1073741816
  %i.ii = add nsw i32 %i.ih, -8
  %i.ij = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.ie, i32 noundef 0, i32 noundef %i.ii) #7 ; 0 uses
  %i.ik = mul i64 %i.ia, %i.cc                    ; 0 uses
  %.recomposed3419 = urem i64 %.0.copyload.i3137, %i.cc
  %.val3076 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.il = getelementptr inbounds nuw i8, ptr %.val3076, i64 %i.cm
  store i64 %.recomposed3419, ptr %i.il, align 1
  br label %bb.eg

bb.ax:                                            ; preds = %bb.at
  %i.im = load i32, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.in = add i32 %i.im, -512                     ; 7 uses
  store i32 %i.in, ptr %i.a, align 8, !tbaa !17
  %i.io = shl nuw nsw i32 %i.eo, 1                ; 5 uses
  %i.ip = add nsw i32 %i.io, -2                   ; 2 uses
  %i.iq = icmp ult i32 %i.ip, %invariant.op
  %i.ir = shl nuw nsw i32 %i.eo, 3
  %i.is = or disjoint i32 %i.ir, 4                ; 2 uses
  br i1 %i.iq, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.it = add i32 %i.in, %i.is                    ; 2 uses
  %i.iu = add nuw nsw i32 %i.io, 3                ; 2 uses
  %i.iv = shl nuw nsw i32 %i.iu, 2
  %i.iw = add i32 %i.in, %i.iv                    ; 2 uses
  br i1 %.not2864, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ix = add nuw nsw i32 %i.iu, %i.io
  %i.iy = shl nuw nsw i32 %i.ix, 2
  %i.iz = add i32 %i.in, %i.iy
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ax
  %i.ja = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.is) #7 ; 2 uses
  %i.jb = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef 8) #7 ; 2 uses
  %i.jc = shl nuw nsw i32 %i.eo, 3
  %i.jd = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.jc) #7 ; 2 uses
  br i1 %.not2864, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.je = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef 8) #7
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.ay, %bb.bb, %bb.az
  %.02785 = phi i32 [ %i.it, %bb.ay ], [ %i.it, %bb.az ], [ %i.jb, %bb.ba ], [ %i.jb, %bb.bb ]
  %.02776 = phi i32 [ %i.in, %bb.ay ], [ %i.in, %bb.az ], [ %i.ja, %bb.ba ], [ %i.ja, %bb.bb ]
  %.02763 = phi i32 [ %i.iw, %bb.ay ], [ %i.iw, %bb.az ], [ %i.jd, %bb.ba ], [ %i.jd, %bb.bb ]
  %.1 = phi i32 [ 0, %bb.ay ], [ %i.iz, %bb.az ], [ 0, %bb.ba ], [ %i.je, %bb.bb ] ; 11 uses
  %i.jf = shl nuw nsw i32 %i.eo, 3                ; 4 uses
  %i.jg = or disjoint i32 %i.jf, 4
  %i.jh = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %.02776, i32 noundef 0, i32 noundef %i.jg) #7 ; 21 uses
  %i.ji = and i32 %i.eo, 134217726                ; 4 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %bb.bc
  %indvars.iv3280 = phi i64 [ %indvars.iv.next3281, %bb.bd ], [ 0, %bb.bc ] ; 2 uses
  %i.jj = trunc nuw i64 %indvars.iv3280 to i32
  %i.jk = shl i32 %i.jj, 3                        ; 3 uses
  %i.jl = add i32 %i.jk, %i.jh
  %i.jm = add i32 %i.jk, %.0.copyload.i3135
  %i.jn = zext i32 %i.jm to i64
  %.val3045 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jo = getelementptr inbounds nuw i8, ptr %.val3045, i64 %i.jn
  %.0.copyload.i3140 = load i64, ptr %i.jo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3140) #7, !srcloc !22
  %i.jp = zext i32 %i.jl to i64                   ; 2 uses
  %.val3102 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jq = trunc i64 %.0.copyload.i3140 to i32
  %i.jr = getelementptr inbounds nuw i8, ptr %.val3102, i64 %i.jp
  store i32 %i.jq, ptr %i.jr, align 1
  %i.js = lshr i64 %.0.copyload.i3140, 32
  %.val3101 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jt = trunc nuw i64 %i.js to i32
  %i.ju = getelementptr inbounds nuw i8, ptr %.val3101, i64 %i.jp
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  store i32 %i.jt, ptr %i.jv, align 1
  %i.jw = or disjoint i32 %i.jk, 8                ; 2 uses
  %i.jx = add i32 %i.jw, %i.jh
  %i.jy = add i32 %i.jw, %.0.copyload.i3135
  %i.jz = zext i32 %i.jy to i64
  %.val3044 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ka = getelementptr inbounds nuw i8, ptr %.val3044, i64 %i.jz
  %.0.copyload.i3141 = load i64, ptr %i.ka, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3141) #7, !srcloc !22
  %i.kb = zext i32 %i.jx to i64                   ; 2 uses
  %.val3100 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kc = trunc i64 %.0.copyload.i3141 to i32
  %i.kd = getelementptr inbounds nuw i8, ptr %.val3100, i64 %i.kb
  store i32 %i.kc, ptr %i.kd, align 1
  %i.ke = lshr i64 %.0.copyload.i3141, 32
  %.val3099 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kf = trunc nuw i64 %i.ke to i32
  %i.kg = getelementptr inbounds nuw i8, ptr %.val3099, i64 %i.kb
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  store i32 %i.kf, ptr %i.kh, align 1
  %indvars.iv.next3281 = add nuw nsw i64 %indvars.iv3280, 2 ; 2 uses
  %indvars3282 = trunc i64 %indvars.iv.next3281 to i32
  %.not2866 = icmp eq i32 %i.ji, %indvars3282
  br i1 %.not2866, label %bb.be, label %bb.bd

bb.be:                                            ; preds = %bb.bd
  %i.ki = and i32 %i.eo, 1
  %.not2867 = icmp eq i32 %i.ki, 0                ; 2 uses
  br i1 %.not2867, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kj = shl nuw nsw i32 %i.ji, 3                ; 2 uses
  %i.kk = add i32 %i.kj, %i.jh
  %i.kl = add i32 %i.kj, %.0.copyload.i3135
  %i.km = zext i32 %i.kl to i64
  %.val3043 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kn = getelementptr inbounds nuw i8, ptr %.val3043, i64 %i.km
  %.0.copyload.i3142 = load i64, ptr %i.kn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3142) #7, !srcloc !22
  %i.ko = zext i32 %i.kk to i64                   ; 2 uses
  %.val3098 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kp = trunc i64 %.0.copyload.i3142 to i32
  %i.kq = getelementptr inbounds nuw i8, ptr %.val3098, i64 %i.ko
  store i32 %i.kp, ptr %i.kq, align 1
  %i.kr = lshr i64 %.0.copyload.i3142, 32
  %.val3097 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ks = trunc nuw i64 %i.kr to i32
  %i.kt = getelementptr inbounds nuw i8, ptr %.val3097, i64 %i.ko
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  store i32 %i.ks, ptr %i.ku, align 1
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %i.kv = add i32 %i.jh, %i.jf
  %i.kw = zext i32 %i.kv to i64
  %.val3004 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kx = getelementptr inbounds nuw i8, ptr %.val3004, i64 %i.kw
  store i32 0, ptr %i.kx, align 1
  %i.ky = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %.02785, i32 noundef 0, i32 noundef 8) #7 ; 8 uses
  %.val3042 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kz = getelementptr inbounds nuw i8, ptr %.val3042, i64 %i.cu
  %.0.copyload.i3143 = load i64, ptr %i.kz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3143) #7, !srcloc !22
  %i.la = zext i32 %i.ky to i64                   ; 4 uses
  %.val3096 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lb = trunc i64 %.0.copyload.i3143 to i32
  %i.lc = getelementptr inbounds nuw i8, ptr %.val3096, i64 %i.la
  store i32 %i.lb, ptr %i.lc, align 1
  %i.ld = lshr i64 %.0.copyload.i3143, 32
  %.val3095 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.le = trunc nuw i64 %i.ld to i32
  %i.lf = getelementptr inbounds nuw i8, ptr %.val3095, i64 %i.la
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  store i32 %i.le, ptr %i.lg, align 1
  %i.lh = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %.02763, i32 noundef 0, i32 noundef %i.jf) #7 ; 10 uses
  br i1 %.not2864, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.li = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %.1, i32 noundef 0, i32 noundef 8) #7 ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.lj = add i32 %i.ky, 4
  %i.lk = zext i32 %i.lj to i64
  %.val2955 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ll = getelementptr inbounds nuw i8, ptr %.val2955, i64 %i.lk
  %.0.copyload.i3144 = load i32, ptr %i.ll, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3144) #7, !srcloc !19
  %.not2868 = icmp eq i32 %.0.copyload.i3144, 0
  br i1 %.not2868, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.lm = add nsw i32 %i.io, -1
  %.val2955.1 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ln = getelementptr inbounds nuw i8, ptr %.val2955.1, i64 %i.la
  %.0.copyload.i3144.1 = load i32, ptr %i.ln, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3144.1) #7, !srcloc !19
  %.not2868.1 = icmp eq i32 %.0.copyload.i3144.1, 0
  br i1 %.not2868.1, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %.12796 = phi i32 [ %i.ip, %bb.bi ], [ %i.io, %bb.bk ], [ %i.lm, %bb.bj ] ; 3 uses
  %i.lo = phi i1 [ false, %bb.bi ], [ false, %bb.bk ], [ true, %bb.bj ]
  %.not2879 = phi i1 [ false, %bb.bi ], [ true, %bb.bk ], [ false, %bb.bj ] ; 4 uses
  %.12786 = phi i32 [ 2, %bb.bi ], [ 0, %bb.bk ], [ 1, %bb.bj ] ; 10 uses
  %i.lp = add nsw i32 %.12786, %.12796            ; 2 uses
  %.not2870 = icmp eq i32 %i.lp, 0
  br i1 %.not2870, label %.loopexit3233, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lq = sub nsw i32 0, %.12786
  %i.lr = zext i32 %i.lp to i64
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bo, %bb.bm
  %indvars.iv3286 = phi i64 [ %indvars.iv.next3287, %bb.bo ], [ %i.lr, %bb.bm ]
  %.22797 = phi i32 [ %i.lw, %bb.bo ], [ %.12796, %bb.bm ] ; 2 uses
  %indvars.iv.next3287 = add nsw i64 %indvars.iv3286, -1 ; 2 uses
  %indvars3288 = trunc i64 %indvars.iv.next3287 to i32 ; 2 uses
  %i.ls = shl i32 %indvars3288, 2
  %i.lt = add i32 %i.ls, %i.jh
  %i.lu = zext i32 %i.lt to i64
  %.val2954 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lv = getelementptr inbounds nuw i8, ptr %.val2954, i64 %i.lu
  %.0.copyload.i3145 = load i32, ptr %i.lv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3145) #7, !srcloc !19
  %.not2871 = icmp eq i32 %.0.copyload.i3145, 0
  br i1 %.not2871, label %bb.bo, label %.loopexit3233

bb.bo:                                            ; preds = %bb.bn
  %i.lw = add i32 %.22797, -1
  %.not2872 = icmp eq i32 %indvars3288, 0
  br i1 %.not2872, label %.loopexit3233, label %bb.bn

.loopexit3233:                                    ; preds = %bb.bo, %bb.bn, %bb.bl
  %.32798 = phi i32 [ %.12796, %bb.bl ], [ %i.lq, %bb.bo ], [ %.22797, %bb.bn ] ; 4 uses
  br i1 %i.lo, label %bb.bp, label %bb.cb

bb.bp:                                            ; preds = %.loopexit3233
  %i.lx = icmp sgt i32 %.32798, -1
  br i1 %i.lx, label %bb.bq, label %.loopexit3226

bb.bq:                                            ; preds = %bb.bp
  %.val2953 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ly = getelementptr inbounds nuw i8, ptr %.val2953, i64 %i.la
  %.0.copyload.i3146 = load i32, ptr %i.ly, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3146) #7, !srcloc !19
  %i.lz = zext i32 %.0.copyload.i3146 to i64      ; 3 uses
  %i.ma = icmp eq i32 %.0.copyload.i3146, 0
  %i.mb = zext nneg i32 %.32798 to i64
  br label %bb.br

bb.br:                                            ; preds = %bb.ca, %bb.bq
  %indvars.iv3322 = phi i64 [ %indvars.iv.next3323, %bb.ca ], [ %i.mb, %bb.bq ] ; 3 uses
  %.22787 = phi i32 [ %.32788, %bb.ca ], [ 0, %bb.bq ]
  %i.mc = zext i32 %.22787 to i64
  %i.md = shl nuw i64 %i.mc, 32
  %i.me = trunc nuw nsw i64 %indvars.iv3322 to i32
  %i.mf = shl i32 %i.me, 2                        ; 5 uses
  %i.mg = add i32 %i.mf, %i.jh
  %i.mh = zext i32 %i.mg to i64
  %.val2952 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mi = getelementptr inbounds nuw i8, ptr %.val2952, i64 %i.mh
  %.0.copyload.i3147 = load i32, ptr %i.mi, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3147) #7, !srcloc !19
  %i.mj = zext i32 %.0.copyload.i3147 to i64
  %i.mk = or disjoint i64 %i.md, %i.mj            ; 4 uses
  %.not2893 = icmp eq i64 %i.mk, 0
  br i1 %.not2893, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ml = add i32 %i.mf, %i.lh
  %i.mm = zext i32 %i.ml to i64
  %.val3003 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mn = getelementptr inbounds nuw i8, ptr %.val3003, i64 %i.mm
  store i32 0, ptr %i.mn, align 1
  br label %bb.ca

bb.bt:                                            ; preds = %bb.br
  %i.mo = icmp ult i64 %i.mk, %i.lz
  br i1 %i.mo, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.mp = add i32 %i.mf, %i.lh
  %i.mq = zext i32 %i.mp to i64
  %.val3002 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mr = getelementptr inbounds nuw i8, ptr %.val3002, i64 %i.mq
  store i32 0, ptr %i.mr, align 1
  br label %bb.ca

bb.bv:                                            ; preds = %bb.bt
  %i.ms = icmp eq i64 %i.mk, %i.lz
  br i1 %i.ms, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.mt = add i32 %i.mf, %i.lh
  %i.mu = zext i32 %i.mt to i64
  %.val3001 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mv = getelementptr inbounds nuw i8, ptr %.val3001, i64 %i.mu
  store i32 1, ptr %i.mv, align 1
  br label %bb.ca

bb.bx:                                            ; preds = %bb.bv
  br i1 %i.ma, label %bb.by, label %bb.bz, !prof !25

bb.by:                                            ; preds = %bb.bx
  tail call void @wasm_rt_trap(i32 noundef 3) #8
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.mw = add i32 %i.mf, %i.lh
  %i.mx = udiv i64 %i.mk, %i.lz
  %i.my = trunc i64 %i.mx to i32                  ; 2 uses
  %i.mz = zext i32 %i.mw to i64
  %.val3000 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.na = getelementptr inbounds nuw i8, ptr %.val3000, i64 %i.mz
  store i32 %i.my, ptr %i.na, align 1
  %i.nb = mul i32 %.0.copyload.i3146, %i.my
  %i.nc = sub i32 %.0.copyload.i3147, %i.nb
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bw, %bb.bu, %bb.bs
  %.32788 = phi i32 [ 0, %bb.bs ], [ %.0.copyload.i3147, %bb.bu ], [ 0, %bb.bw ], [ %i.nc, %bb.bz ] ; 2 uses
  %indvars.iv.next3323 = add nsw i64 %indvars.iv3322, -1
  %i.nd = icmp sgt i64 %indvars.iv3322, 0
  br i1 %i.nd, label %bb.br, label %.loopexit3226

.loopexit3226:                                    ; preds = %bb.ca, %bb.bp
  %.42789 = phi i32 [ 0, %bb.bp ], [ %.32788, %bb.ca ]
  %.not2894 = icmp eq i32 %.1, 0
  br i1 %.not2894, label %.loopexit3228, label %.loopexit3228.sink.split

bb.cb:                                            ; preds = %.loopexit3233
  %i.ne = add i32 %.32798, %.12786                ; 5 uses
  %i.nf = add nsw i32 %.12786, -1                 ; 3 uses
  %i.ng = shl nsw i32 %i.nf, 2
  %i.nh = add i32 %i.ng, %i.ky
  %i.ni = zext i32 %i.nh to i64                   ; 2 uses
  %.val2951 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nj = getelementptr inbounds nuw i8, ptr %.val2951, i64 %i.ni
  %.0.copyload.i3148 = load i32, ptr %i.nj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3148) #7, !srcloc !19
  %i.nk = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0.copyload.i3148, i1 false) ; 9 uses
  %.not2874 = icmp eq i32 %i.nk, 0                ; 2 uses
  br i1 %.not2874, label %.loopexit3229, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.not2875 = icmp eq i32 %i.ne, 0
  br i1 %.not2875, label %.loopexit3231, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.nl = sub nuw nsw i32 32, %i.nk               ; 5 uses
  %i.nm = add i32 %i.ne, -4
  %i.nn = icmp ult i32 %i.nm, -3
  br i1 %i.nn, label %bb.ce, label %.loopexit3232

bb.ce:                                            ; preds = %bb.cd
  %i.no = and i32 %i.ne, -4                       ; 2 uses
  %i.np = and i32 %i.nk, 31                       ; 4 uses
  %i.nq = add i32 %i.jh, 4
  %i.nr = add i32 %i.jh, 8
  %i.ns = add i32 %i.jh, 12
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cf, %bb.ce
  %indvars.iv3290 = phi i64 [ %indvars.iv.next3291, %bb.cf ], [ 0, %bb.ce ] ; 2 uses
  %.42811 = phi i32 [ %i.ow, %bb.cf ], [ 0, %bb.ce ]
  %i.nt = trunc nuw i64 %indvars.iv3290 to i32
  %i.nu = shl i32 %i.nt, 2                        ; 4 uses
  %i.nv = add i32 %i.nu, %i.jh
  %i.nw = zext i32 %i.nv to i64                   ; 2 uses
  %.val2950 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nx = getelementptr inbounds nuw i8, ptr %.val2950, i64 %i.nw
  %.0.copyload.i3149 = load i32, ptr %i.nx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3149) #7, !srcloc !19
  %i.ny = shl i32 %.0.copyload.i3149, %i.np
  %i.nz = or i32 %i.ny, %.42811
  %.val2998 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oa = getelementptr inbounds nuw i8, ptr %.val2998, i64 %i.nw
  store i32 %i.nz, ptr %i.oa, align 1
  %i.ob = add i32 %i.nq, %i.nu
  %i.oc = zext i32 %i.ob to i64                   ; 2 uses
  %.val2949 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.od = getelementptr inbounds nuw i8, ptr %.val2949, i64 %i.oc
  %.0.copyload.i3150 = load i32, ptr %i.od, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3150) #7, !srcloc !19
  %i.oe = shl i32 %.0.copyload.i3150, %i.np
  %i.of = lshr i32 %.0.copyload.i3149, %i.nl
  %i.og = or i32 %i.oe, %i.of
  %.val2997 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oh = getelementptr inbounds nuw i8, ptr %.val2997, i64 %i.oc
  store i32 %i.og, ptr %i.oh, align 1
  %i.oi = add i32 %i.nr, %i.nu
  %i.oj = zext i32 %i.oi to i64                   ; 2 uses
  %.val2948 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ok = getelementptr inbounds nuw i8, ptr %.val2948, i64 %i.oj
  %.0.copyload.i3151 = load i32, ptr %i.ok, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3151) #7, !srcloc !19
  %i.ol = shl i32 %.0.copyload.i3151, %i.np
  %i.om = lshr i32 %.0.copyload.i3150, %i.nl
  %i.on = or i32 %i.ol, %i.om
  %.val2996 = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_2
