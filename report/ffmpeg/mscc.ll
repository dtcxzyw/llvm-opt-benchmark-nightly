inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@decode_frame:bb.a
  %wide.load.22 = load <4 x i32>, ptr %i.fu, align 1, !tbaa !48
  %wide.load191.22 = load <4 x i32>, ptr %i.fv, align 1, !tbaa !48
  %i.fw = or <4 x i32> %wide.load.22, splat (i32 -16777216)
  %i.fx = or <4 x i32> %wide.load191.22, splat (i32 -16777216)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.d, i64 856
  %i.fz = getelementptr inbounds nuw i8, ptr %i.d, i64 872
  store <4 x i32> %i.fw, ptr %i.fy, align 8, !tbaa !51
  store <4 x i32> %i.fx, ptr %i.fz, align 8, !tbaa !51
  %i.ga = getelementptr inbounds nuw i8, ptr %i.am, i64 736
  %i.gb = getelementptr inbounds nuw i8, ptr %i.am, i64 752
  %wide.load.23 = load <4 x i32>, ptr %i.ga, align 1, !tbaa !48
  %wide.load191.23 = load <4 x i32>, ptr %i.gb, align 1, !tbaa !48
  %i.gc = or <4 x i32> %wide.load.23, splat (i32 -16777216)
  %i.gd = or <4 x i32> %wide.load191.23, splat (i32 -16777216)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.d, i64 888
  %i.gf = getelementptr inbounds nuw i8, ptr %i.d, i64 904
  store <4 x i32> %i.gc, ptr %i.ge, align 8, !tbaa !51
  store <4 x i32> %i.gd, ptr %i.gf, align 8, !tbaa !51
  %i.gg = getelementptr inbounds nuw i8, ptr %i.am, i64 768
  %i.gh = getelementptr inbounds nuw i8, ptr %i.am, i64 784
  %wide.load.24 = load <4 x i32>, ptr %i.gg, align 1, !tbaa !48
  %wide.load191.24 = load <4 x i32>, ptr %i.gh, align 1, !tbaa !48
  %i.gi = or <4 x i32> %wide.load.24, splat (i32 -16777216)
  %i.gj = or <4 x i32> %wide.load191.24, splat (i32 -16777216)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.d, i64 920
  %i.gl = getelementptr inbounds nuw i8, ptr %i.d, i64 936
  store <4 x i32> %i.gi, ptr %i.gk, align 8, !tbaa !51
  store <4 x i32> %i.gj, ptr %i.gl, align 8, !tbaa !51
  %i.gm = getelementptr inbounds nuw i8, ptr %i.am, i64 800
  %i.gn = getelementptr inbounds nuw i8, ptr %i.am, i64 816
  %wide.load.25 = load <4 x i32>, ptr %i.gm, align 1, !tbaa !48
  %wide.load191.25 = load <4 x i32>, ptr %i.gn, align 1, !tbaa !48
  %i.go = or <4 x i32> %wide.load.25, splat (i32 -16777216)
  %i.gp = or <4 x i32> %wide.load191.25, splat (i32 -16777216)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.d, i64 952
  %i.gr = getelementptr inbounds nuw i8, ptr %i.d, i64 968
  store <4 x i32> %i.go, ptr %i.gq, align 8, !tbaa !51
  store <4 x i32> %i.gp, ptr %i.gr, align 8, !tbaa !51
  %i.gs = getelementptr inbounds nuw i8, ptr %i.am, i64 832
  %i.gt = getelementptr inbounds nuw i8, ptr %i.am, i64 848
  %wide.load.26 = load <4 x i32>, ptr %i.gs, align 1, !tbaa !48
  %wide.load191.26 = load <4 x i32>, ptr %i.gt, align 1, !tbaa !48
  %i.gu = or <4 x i32> %wide.load.26, splat (i32 -16777216)
  %i.gv = or <4 x i32> %wide.load191.26, splat (i32 -16777216)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.d, i64 984
  %i.gx = getelementptr inbounds nuw i8, ptr %i.d, i64 1000
  store <4 x i32> %i.gu, ptr %i.gw, align 8, !tbaa !51
  store <4 x i32> %i.gv, ptr %i.gx, align 8, !tbaa !51
  %i.gy = getelementptr inbounds nuw i8, ptr %i.am, i64 864
  %i.gz = getelementptr inbounds nuw i8, ptr %i.am, i64 880
  %wide.load.27 = load <4 x i32>, ptr %i.gy, align 1, !tbaa !48
  %wide.load191.27 = load <4 x i32>, ptr %i.gz, align 1, !tbaa !48
  %i.ha = or <4 x i32> %wide.load.27, splat (i32 -16777216)
  %i.hb = or <4 x i32> %wide.load191.27, splat (i32 -16777216)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.d, i64 1016
  %i.hd = getelementptr inbounds nuw i8, ptr %i.d, i64 1032
  store <4 x i32> %i.ha, ptr %i.hc, align 8, !tbaa !51
  store <4 x i32> %i.hb, ptr %i.hd, align 8, !tbaa !51
  %i.he = getelementptr inbounds nuw i8, ptr %i.am, i64 896
  %i.hf = getelementptr inbounds nuw i8, ptr %i.am, i64 912
  %wide.load.28 = load <4 x i32>, ptr %i.he, align 1, !tbaa !48
  %wide.load191.28 = load <4 x i32>, ptr %i.hf, align 1, !tbaa !48
  %i.hg = or <4 x i32> %wide.load.28, splat (i32 -16777216)
  %i.hh = or <4 x i32> %wide.load191.28, splat (i32 -16777216)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.d, i64 1048
  %i.hj = getelementptr inbounds nuw i8, ptr %i.d, i64 1064
  store <4 x i32> %i.hg, ptr %i.hi, align 8, !tbaa !51
  store <4 x i32> %i.hh, ptr %i.hj, align 8, !tbaa !51
  %i.hk = getelementptr inbounds nuw i8, ptr %i.am, i64 928
  %i.hl = getelementptr inbounds nuw i8, ptr %i.am, i64 944
  %wide.load.29 = load <4 x i32>, ptr %i.hk, align 1, !tbaa !48
  %wide.load191.29 = load <4 x i32>, ptr %i.hl, align 1, !tbaa !48
  %i.hm = or <4 x i32> %wide.load.29, splat (i32 -16777216)
  %i.hn = or <4 x i32> %wide.load191.29, splat (i32 -16777216)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.d, i64 1080
  %i.hp = getelementptr inbounds nuw i8, ptr %i.d, i64 1096
  store <4 x i32> %i.hm, ptr %i.ho, align 8, !tbaa !51
  store <4 x i32> %i.hn, ptr %i.hp, align 8, !tbaa !51
  %i.hq = getelementptr inbounds nuw i8, ptr %i.am, i64 960
  %i.hr = getelementptr inbounds nuw i8, ptr %i.am, i64 976
  %wide.load.30 = load <4 x i32>, ptr %i.hq, align 1, !tbaa !48
  %wide.load191.30 = load <4 x i32>, ptr %i.hr, align 1, !tbaa !48
  %i.hs = or <4 x i32> %wide.load.30, splat (i32 -16777216)
  %i.ht = or <4 x i32> %wide.load191.30, splat (i32 -16777216)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.d, i64 1112
  %i.hv = getelementptr inbounds nuw i8, ptr %i.d, i64 1128
  store <4 x i32> %i.hs, ptr %i.hu, align 8, !tbaa !51
  store <4 x i32> %i.ht, ptr %i.hv, align 8, !tbaa !51
  %i.hw = getelementptr inbounds nuw i8, ptr %i.am, i64 992
  %i.hx = getelementptr inbounds nuw i8, ptr %i.am, i64 1008
  %wide.load.31 = load <4 x i32>, ptr %i.hw, align 1, !tbaa !48
  %wide.load191.31 = load <4 x i32>, ptr %i.hx, align 1, !tbaa !48
  %i.hy = or <4 x i32> %wide.load.31, splat (i32 -16777216)
  %i.hz = or <4 x i32> %wide.load191.31, splat (i32 -16777216)
  %i.ia = getelementptr inbounds nuw i8, ptr %i.d, i64 1144
  %i.ib = getelementptr inbounds nuw i8, ptr %i.d, i64 1160
  store <4 x i32> %i.hy, ptr %i.ia, align 8, !tbaa !51
  store <4 x i32> %i.hz, ptr %i.ib, align 8, !tbaa !51
  br label %.loopexit

scalar.ph:                                        ; preds = %.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ 0, %.preheader ] ; 6 uses
  %i.ic = shl nuw nsw i64 %indvars.iv, 2
  %i.id = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 1, !tbaa !48
  %i.if = or i32 %i.ie, -16777216
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  store i32 %i.if, ptr %i.ig, align 4, !tbaa !51
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ih = shl nuw nsw i64 %indvars.iv.next, 2
  %i.ii = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 1, !tbaa !48
  %i.ik = or i32 %i.ij, -16777216
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next
  store i32 %i.ik, ptr %i.il, align 4, !tbaa !51
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.im = shl nuw nsw i64 %indvars.iv.next.1, 2
  %i.in = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.im
  %i.io = load i32, ptr %i.in, align 1, !tbaa !48
  %i.ip = or i32 %i.io, -16777216
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next.1
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !51
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ir = shl nuw nsw i64 %indvars.iv.next.2, 2
  %i.is = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 1, !tbaa !48
  %i.iu = or i32 %i.it, -16777216
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next.2
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !51
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 256
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !52

bb.m:                                             ; preds = %bb.l
  br i1 %i.an, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.7, i64 noundef %i.ao) #6
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph, %vector.body, %bb.m, %bb.n
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !55
  %i.iy = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.ix, ptr noundef nonnull align 8 dereferenceable(1024) %i.iy, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %bb.k
  %i.iz = load ptr, ptr %i.m, align 8, !tbaa !39  ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !56 ; 3 uses
  %i.jc = icmp ne ptr %i.iz, null
  %i.jd = and i64 %i.jb, 2147483648
  %i.je = icmp eq i64 %i.jd, 0
  %or.cond.i = and i1 %i.jc, %i.je
  br i1 %or.cond.i, label %bytestream2_init.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 141) #6
  call void @abort() #7
  unreachable

bytestream2_init.exit:                            ; preds = %bb.o
  %i.jf = and i64 %i.jb, 2147483647               ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.jf ; 13 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !41 ; 5 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !40 ; 6 uses
  %i.jl = icmp ne ptr %i.ji, null
  %i.jm = icmp sgt i32 %i.jk, -1
  %or.cond.i89 = and i1 %i.jl, %i.jm
  br i1 %or.cond.i89, label %bytestream2_init_writer.exit, label %bb.q

bb.q:                                             ; preds = %bytestream2_init.exit
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 151) #6
  call void @abort() #7
  unreachable

bytestream2_init_writer.exit:                     ; preds = %bytestream2_init.exit
  %i.jn = load ptr, ptr %i.c, align 8, !tbaa !9   ; 5 uses
  %i.jo = ptrtoint ptr %i.jg to i64               ; 15 uses
  %i.jp = trunc i64 %i.jb to i32
  %i.jq = icmp sgt i32 %i.jp, 0
  br i1 %i.jq, label %.lr.ph138.i, label %rle_uncompress.exit.thread

.lr.ph138.i:                                      ; preds = %bytestream2_init_writer.exit
  %i.jr = zext nneg i32 %i.jk to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.jr
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.jv = ptrtoint ptr %i.js to i64               ; 10 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.bc, %.lr.ph138.i
  %.sroa.51.0 = phi i32 [ 0, %.lr.ph138.i ], [ %.sroa.51.3, %bb.bc ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.ji, %.lr.ph138.i ], [ %.sroa.0.3, %bb.bc ] ; 4 uses
  %i.jw = phi i64 [ %i.jf, %.lr.ph138.i ], [ %i.qn, %bb.bc ]
  %i.jx = phi ptr [ %i.iz, %.lr.ph138.i ], [ %.sroa.0131.1, %bb.bc ] ; 7 uses
  %.070136.i = phi i32 [ 0, %.lr.ph138.i ], [ %.474.i, %bb.bc ] ; 3 uses
  %.077135.i = phi i32 [ undef, %.lr.ph138.i ], [ %.380.i, %bb.bc ] ; 4 uses
  %.081134.i = phi i32 [ 0, %.lr.ph138.i ], [ %.485.i, %bb.bc ] ; 4 uses
  %i.jy = icmp slt i64 %i.jw, 1
  br i1 %i.jy, label %bytestream2_get_byte.exit98.thread.i, label %bytestream2_get_byte.exit98.i

bytestream2_get_byte.exit98.i:                    ; preds = %bb.r
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 1 ; 11 uses
  %i.ka = load i8, ptr %i.jx, align 1, !tbaa !48  ; 2 uses
  %i.kb = zext i8 %i.ka to i32                    ; 3 uses
  %.not.i = icmp eq i8 %i.ka, 0
  br i1 %.not.i, label %bytestream2_get_byte.exit98.i.bytestream2_get_byte.exit98.thread.i_crit_edge, label %bb.s

bytestream2_get_byte.exit98.i.bytestream2_get_byte.exit98.thread.i_crit_edge: ; preds = %bytestream2_get_byte.exit98.i
  %.pre176 = ptrtoint ptr %i.jz to i64
  br label %bytestream2_get_byte.exit98.thread.i

bb.s:                                             ; preds = %bytestream2_get_byte.exit98.i
  %i.kc = ptrtoint ptr %.sroa.0.0 to i64
  %i.kd = sub i64 %i.jv, %i.kc
  %i.ke = trunc i64 %i.kd to i32
  %i.kf = load i32, ptr %i.jn, align 8, !tbaa !31
  %i.kg = mul i32 %i.kf, %i.kb
  %i.kh = icmp ugt i32 %i.kg, %i.ke
  br i1 %i.kh, label %rle_uncompress.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ki = load i32, ptr %i.jt, align 8, !tbaa !29
  switch i32 %i.ki, label %bytestream2_get_byte.exit96.i [
    i32 8, label %bb.u
    i32 16, label %bb.w
    i32 24, label %bb.y
    i32 32, label %bb.aa
  ]

bb.u:                                             ; preds = %bb.t
  %i.kj = ptrtoint ptr %i.jz to i64
  %i.kk = sub i64 %i.jo, %i.kj
  %i.kl = icmp slt i64 %i.kk, 1
  br i1 %i.kl, label %bytestream2_get_byte.exit96.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.km = getelementptr inbounds nuw i8, ptr %i.jx, i64 2
  %i.kn = load i8, ptr %i.jz, align 1, !tbaa !48
  %i.ko = zext i8 %i.kn to i32
  br label %bytestream2_get_byte.exit96.i

bb.w:                                             ; preds = %bb.t
  %i.kp = ptrtoint ptr %i.jz to i64
  %i.kq = sub i64 %i.jo, %i.kp
  %i.kr = icmp slt i64 %i.kq, 2
  br i1 %i.kr, label %bytestream2_get_byte.exit96.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jx, i64 3
  %i.kt = load i16, ptr %i.jz, align 1, !tbaa !48
  %i.ku = zext i16 %i.kt to i32
  br label %bytestream2_get_byte.exit96.i

bb.y:                                             ; preds = %bb.t
  %i.kv = ptrtoint ptr %i.jz to i64
  %i.kw = sub i64 %i.jo, %i.kv
  %i.kx = icmp slt i64 %i.kw, 3
  br i1 %i.kx, label %bytestream2_get_byte.exit96.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  %i.kz = getelementptr i8, ptr %i.jx, i64 2
  %i.la = load i16, ptr %i.kz, align 1
  %i.lb = zext i16 %i.la to i32
  %i.lc = shl nuw nsw i32 %i.lb, 8
  %i.ld = load i8, ptr %i.jz, align 1, !tbaa !48
  %i.le = zext i8 %i.ld to i32
  %i.lf = or disjoint i32 %i.lc, %i.le
  br label %bytestream2_get_byte.exit96.i

bb.aa:                                            ; preds = %bb.t
  %i.lg = ptrtoint ptr %i.jz to i64
  %i.lh = sub i64 %i.jo, %i.lg
  %i.li = icmp slt i64 %i.lh, 4
  br i1 %i.li, label %bytestream2_get_byte.exit96.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jx, i64 5
  %i.lk = load i32, ptr %i.jz, align 1, !tbaa !48
  br label %bytestream2_get_byte.exit96.i

bytestream2_get_byte.exit96.i:                    ; preds = %bb.aa, %bb.y, %bb.w, %bb.u, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t
  %.sroa.0131.0 = phi ptr [ %i.jz, %bb.t ], [ %i.lj, %bb.ab ], [ %i.km, %bb.v ], [ %i.jg, %bb.u ], [ %i.ks, %bb.x ], [ %i.jg, %bb.w ], [ %i.ky, %bb.z ], [ %i.jg, %bb.y ], [ %i.jg, %bb.aa ]
  %.178.i = phi i32 [ %.077135.i, %bb.t ], [ %i.lk, %bb.ab ], [ %i.ko, %bb.v ], [ 0, %bb.u ], [ %i.ku, %bb.x ], [ 0, %bb.w ], [ %i.lf, %bb.z ], [ 0, %bb.y ], [ 0, %bb.aa ] ; 6 uses
  %i.ll = trunc i32 %.178.i to i8                 ; 2 uses
  %i.lm = lshr i32 %.178.i, 8
  %i.ln = trunc i32 %i.lm to i8
  %i.lo = lshr i32 %.178.i, 16
  %i.lp = trunc i32 %i.lo to i8
  %i.lq = trunc i32 %.178.i to i16
  br label %bb.ac

bb.ac:                                            ; preds = %bytestream2_put_byte.exit109.i, %bytestream2_get_byte.exit96.i
  %.sroa.51.1 = phi i32 [ %.sroa.51.0, %bytestream2_get_byte.exit96.i ], [ %.sroa.51.2, %bytestream2_put_byte.exit109.i ] ; 5 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bytestream2_get_byte.exit96.i ], [ %.sroa.0.2, %bytestream2_put_byte.exit109.i ] ; 19 uses
  %.075132.i = phi i32 [ 0, %bytestream2_get_byte.exit96.i ], [ %i.mk, %bytestream2_put_byte.exit109.i ]
  %i.lr = load i32, ptr %i.jt, align 8, !tbaa !29
  switch i32 %i.lr, label %bytestream2_put_byte.exit109.i [
    i32 8, label %bb.ad
    i32 16, label %bb.af
    i32 24, label %bb.ah
    i32 32, label %bb.aj
  ]

bb.ad:                                            ; preds = %bb.ac
  %.not.i108.i.a = icmp eq i32 %.sroa.51.1, 0
  %i.ls = ptrtoint ptr %.sroa.0.1 to i64
  %i.lt = sub i64 %i.jv, %i.ls
  %i.lu = icmp sgt i64 %i.lt, 0
  %or.cond151 = select i1 %.not.i108.i.a, i1 %i.lu, i1 false
  br i1 %or.cond151, label %bb.ae, label %bytestream2_put_byte.exit109.i

bb.ae:                                            ; preds = %bb.ad
  store i8 %i.ll, ptr %.sroa.0.1, align 1, !tbaa !48
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1
  br label %bytestream2_put_byte.exit109.i

bb.af:                                            ; preds = %bb.ac
  %.not.i111.i.a = icmp eq i32 %.sroa.51.1, 0
  %i.lw = ptrtoint ptr %.sroa.0.1 to i64
  %i.lx = sub i64 %i.jv, %i.lw
  %i.ly = icmp sgt i64 %i.lx, 1
  %or.cond154 = select i1 %.not.i111.i.a, i1 %i.ly, i1 false
  br i1 %or.cond154, label %bb.ag, label %bytestream2_put_byte.exit109.i

bb.ag:                                            ; preds = %bb.af
  store i16 %i.lq, ptr %.sroa.0.1, align 1, !tbaa !48
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 2
  br label %bytestream2_put_byte.exit109.i

bb.ah:                                            ; preds = %bb.ac
  %.not.i114.i.a = icmp eq i32 %.sroa.51.1, 0
  %i.ma = ptrtoint ptr %.sroa.0.1 to i64
  %i.mb = sub i64 %i.jv, %i.ma
  %i.mc = icmp sgt i64 %i.mb, 2
  %or.cond157 = select i1 %.not.i114.i.a, i1 %i.mc, i1 false
  br i1 %or.cond157, label %bb.ai, label %bytestream2_put_byte.exit109.i

bb.ai:                                            ; preds = %bb.ah
  store i8 %i.ll, ptr %.sroa.0.1, align 1, !tbaa !48
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1
  store i8 %i.ln, ptr %i.md, align 1, !tbaa !48
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 2
  store i8 %i.lp, ptr %i.me, align 1, !tbaa !48
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 3
  br label %bytestream2_put_byte.exit109.i

bb.aj:                                            ; preds = %bb.ac
  %.not.i117.i = icmp eq i32 %.sroa.51.1, 0
  %i.mg = ptrtoint ptr %.sroa.0.1 to i64
  %i.mh = sub i64 %i.jv, %i.mg
  %i.mi = icmp sgt i64 %i.mh, 3
  %or.cond160 = select i1 %.not.i117.i, i1 %i.mi, i1 false
  br i1 %or.cond160, label %bb.ak, label %bytestream2_put_byte.exit109.i

bb.ak:                                            ; preds = %bb.aj
  store i32 %.178.i, ptr %.sroa.0.1, align 1, !tbaa !48
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 4
  br label %bytestream2_put_byte.exit109.i

bytestream2_put_byte.exit109.i:                   ; preds = %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac
  %.sroa.51.2 = phi i32 [ %.sroa.51.1, %bb.ac ], [ 0, %bb.ae ], [ 1, %bb.ah ], [ 0, %bb.ag ], [ 1, %bb.ad ], [ 0, %bb.ai ], [ 1, %bb.af ], [ 0, %bb.ak ], [ 1, %bb.aj ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %bb.ac ], [ %i.lv, %bb.ae ], [ %.sroa.0.1, %bb.ah ], [ %i.lz, %bb.ag ], [ %.sroa.0.1, %bb.ad ], [ %i.mf, %bb.ai ], [ %.sroa.0.1, %bb.af ], [ %i.mj, %bb.ak ], [ %.sroa.0.1, %bb.aj ] ; 2 uses
  %i.mk = add nuw nsw i32 %.075132.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.mk, %i.kb
  br i1 %exitcond.not.i, label %bb.al, label %bb.ac, !llvm.loop !57

bb.al:                                            ; preds = %bytestream2_put_byte.exit109.i
  %i.ml = add i32 %.070136.i, %i.kb
  br label %bb.bc

bytestream2_get_byte.exit98.thread.i:             ; preds = %bytestream2_get_byte.exit98.i.bytestream2_get_byte.exit98.thread.i_crit_edge, %bb.r
  %.pre-phi177 = phi i64 [ %.pre176, %bytestream2_get_byte.exit98.i.bytestream2_get_byte.exit98.thread.i_crit_edge ], [ %i.jo, %bb.r ]
  %i.mm = phi ptr [ %i.jz, %bytestream2_get_byte.exit98.i.bytestream2_get_byte.exit98.thread.i_crit_edge ], [ %i.jg, %bb.r ] ; 3 uses
  %i.mn = sub i64 %i.jo, %.pre-phi177
  %i.mo = icmp slt i64 %i.mn, 1
  br i1 %i.mo, label %bytestream2_seek_p.exit119.i, label %bytestream2_get_byte.exit94.i

bytestream2_get_byte.exit94.i:                    ; preds = %bytestream2_get_byte.exit98.thread.i
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 1 ; 4 uses
  %i.mq = load i8, ptr %i.mm, align 1, !tbaa !48  ; 2 uses
  %i.mr = zext i8 %i.mq to i32                    ; 4 uses
  switch i8 %i.mq, label %bb.ap [
    i8 0, label %bytestream2_seek_p.exit119.i
    i8 1, label %rle_uncompress.exit.preheader
    i8 2, label %bb.am
  ]

rle_uncompress.exit.preheader:                    ; preds = %bytestream2_get_byte.exit94.i
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !37 ; 2 uses
  %i.mu = icmp sgt i32 %i.mt, 0
  br i1 %i.mu, label %.lr.ph, label %rle_uncompress.exit._crit_edge

.lr.ph:                                           ; preds = %rle_uncompress.exit.preheader
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %rle_uncompress.exit

bytestream2_seek_p.exit119.i:                     ; preds = %bytestream2_get_byte.exit98.thread.i, %bytestream2_get_byte.exit94.i
  %.sroa.0131.3 = phi ptr [ %i.mp, %bytestream2_get_byte.exit94.i ], [ %i.jg, %bytestream2_get_byte.exit98.thread.i ]
  %i.mw = add i32 %.081134.i, 1                   ; 2 uses
  %i.mx = load i32, ptr %i.ju, align 8, !tbaa !36
  %i.my = mul i32 %i.mx, %i.mw
  %i.mz = load i32, ptr %i.jn, align 8, !tbaa !31
  %i.na = mul i32 %i.my, %i.mz                    ; 3 uses
  %i.nb = icmp slt i32 %i.jk, %i.na
  %spec.store.select.i = zext i1 %i.nb to i32
  %i.nc = icmp slt i32 %i.na, 0
  %..i120.i = call i32 @llvm.smin.i32(i32 %i.na, i32 %i.jk)
  %.0.i121.i = select i1 %i.nc, i32 0, i32 %..i120.i
  %i.nd = sext i32 %.0.i121.i to i64
  %i.ne = getelementptr inbounds i8, ptr %i.ji, i64 %i.nd
  br label %bb.bc

bb.am:                                            ; preds = %bytestream2_get_byte.exit94.i
  %i.nf = ptrtoint ptr %i.mp to i64
  %i.ng = sub i64 %i.jo, %i.nf
  %i.nh = icmp slt i64 %i.ng, 1
  br i1 %i.nh, label %bytestream2_get_byte.exit92.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mm, i64 2 ; 2 uses
  %i.nj = load i8, ptr %i.mp, align 1, !tbaa !48
  %i.nk = zext i8 %i.nj to i32
  %.pre = ptrtoint ptr %i.ni to i64
  br label %bytestream2_get_byte.exit92.i

bytestream2_get_byte.exit92.i:                    ; preds = %bb.an, %bb.am
  %.pre-phi = phi i64 [ %.pre, %bb.an ], [ %i.jo, %bb.am ]
  %i.nl = phi ptr [ %i.ni, %bb.an ], [ %i.jg, %bb.am ] ; 2 uses
  %.0.i91.i = phi i32 [ %i.nk, %bb.an ], [ 0, %bb.am ]
  %i.nm = add i32 %.0.i91.i, %.070136.i           ; 2 uses
  %i.nn = sub i64 %i.jo, %.pre-phi
  %i.no = icmp slt i64 %i.nn, 1
  br i1 %i.no, label %bytestream2_get_byte.exit90.i, label %bb.ao

bb.ao:                                            ; preds = %bytestream2_get_byte.exit92.i
  %i.np = getelementptr inbounds nuw i8, ptr %i.nl, i64 1
  %i.nq = load i8, ptr %i.nl, align 1, !tbaa !48
  %i.nr = zext i8 %i.nq to i32
  br label %bytestream2_get_byte.exit90.i

bytestream2_get_byte.exit90.i:                    ; preds = %bytestream2_get_byte.exit92.i, %bb.ao
  %.sroa.0131.2 = phi ptr [ %i.np, %bb.ao ], [ %i.jg, %bytestream2_get_byte.exit92.i ]
  %.0.i89.i = phi i32 [ %i.nr, %bb.ao ], [ 0, %bytestream2_get_byte.exit92.i ]
  %i.ns = add i32 %.0.i89.i, %.081134.i           ; 2 uses
  %i.nt = load i32, ptr %i.ju, align 8, !tbaa !36
  %i.nu = mul i32 %i.ns, %i.nt
  %i.nv = load i32, ptr %i.jn, align 8, !tbaa !31
  %i.nw = add i32 %i.nu, %i.nm
  %i.nx = mul i32 %i.nw, %i.nv                    ; 3 uses
  %i.ny = icmp slt i32 %i.jk, %i.nx
  %spec.store.select144.i = zext i1 %i.ny to i32
  %i.nz = icmp slt i32 %i.nx, 0
  %..i122.i = call i32 @llvm.smin.i32(i32 %i.nx, i32 %i.jk)
  %.0.i123.i = select i1 %i.nz, i32 0, i32 %..i122.i
  %i.oa = sext i32 %.0.i123.i to i64
  %i.ob = getelementptr inbounds i8, ptr %i.ji, i64 %i.oa
  br label %bb.bc

bb.ap:                                            ; preds = %bytestream2_get_byte.exit94.i
  %i.oc = ptrtoint ptr %.sroa.0.0 to i64
  %i.od = sub i64 %i.jv, %i.oc
  %i.oe = trunc i64 %i.od to i32
  %i.of = load i32, ptr %i.jn, align 8, !tbaa !31
  %i.og = mul i32 %i.of, %i.mr
  %i.oh = icmp ugt i32 %i.og, %i.oe
  br i1 %i.oh, label %rle_uncompress.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ap, %bytestream2_put_byte.exit.i
  %.sroa.51.4 = phi i32 [ %.sroa.51.5, %bytestream2_put_byte.exit.i ], [ %.sroa.51.0, %bb.ap ] ; 5 uses
  %.sroa.0131.4 = phi ptr [ %.sroa.0131.6, %bytestream2_put_byte.exit.i ], [ %i.mp, %bb.ap ] ; 14 uses
  %.sroa.0.4 = phi ptr [ %.sroa.0.5, %bytestream2_put_byte.exit.i ], [ %.sroa.0.0, %bb.ap ] ; 19 uses
  %.176133.i = phi i32 [ %i.qg, %bytestream2_put_byte.exit.i ], [ 0, %bb.ap ]
  %i.oi = load i32, ptr %i.jt, align 8, !tbaa !29
  switch i32 %i.oi, label %bytestream2_put_byte.exit.i [
    i32 8, label %bb.aq
    i32 16, label %bb.at
    i32 24, label %bb.aw
    i32 32, label %bb.az
  ]

bb.aq:                                            ; preds = %.lr.ph.i
  %i.oj = ptrtoint ptr %.sroa.0131.4 to i64
  %i.ok = sub i64 %i.jo, %i.oj
  %i.ol = icmp slt i64 %i.ok, 1
  br i1 %i.ol, label %bytestream2_get_byte.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.0131.4, i64 1
  %i.on = load i8, ptr %.sroa.0131.4, align 1, !tbaa !48
  br label %bytestream2_get_byte.exit.i

bytestream2_get_byte.exit.i:                      ; preds = %bb.aq, %bb.ar
  %.sroa.0131.10 = phi ptr [ %i.om, %bb.ar ], [ %i.jg, %bb.aq ] ; 2 uses
  %.0.i.i = phi i8 [ %i.on, %bb.ar ], [ 0, %bb.aq ]
  %.not.i.i = icmp eq i32 %.sroa.51.4, 0
  %i.oo = ptrtoint ptr %.sroa.0.4 to i64
  %i.op = sub i64 %i.jv, %i.oo
  %i.oq = icmp sgt i64 %i.op, 0
  %or.cond163 = select i1 %.not.i.i, i1 %i.oq, i1 false
  br i1 %or.cond163, label %bb.as, label %bytestream2_put_byte.exit.i

bb.as:                                            ; preds = %bytestream2_get_byte.exit.i
  store i8 %.0.i.i, ptr %.sroa.0.4, align 1, !tbaa !48
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 1
  br label %bytestream2_put_byte.exit.i

bb.at:                                            ; preds = %.lr.ph.i
  %i.os = ptrtoint ptr %.sroa.0131.4 to i64
  %i.ot = sub i64 %i.jo, %i.os
  %i.ou = icmp slt i64 %i.ot, 2
  br i1 %i.ou, label %bytestream2_get_le16.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.0131.4, i64 2
  %i.ow = load i16, ptr %.sroa.0131.4, align 1, !tbaa !48
  br label %bytestream2_get_le16.exit.i

bytestream2_get_le16.exit.i:                      ; preds = %bb.at, %bb.au
  %.sroa.0131.9 = phi ptr [ %i.ov, %bb.au ], [ %i.jg, %bb.at ] ; 2 uses
  %.0.i99.i.a = phi i16 [ %i.ow, %bb.au ], [ 0, %bb.at ]
  %.not.i110.i.a = icmp eq i32 %.sroa.51.4, 0
  %i.ox = ptrtoint ptr %.sroa.0.4 to i64
  %i.oy = sub i64 %i.jv, %i.ox
  %i.oz = icmp sgt i64 %i.oy, 1
  %or.cond166 = select i1 %.not.i110.i.a, i1 %i.oz, i1 false
  br i1 %or.cond166, label %bb.av, label %bytestream2_put_byte.exit.i

bb.av:                                            ; preds = %bytestream2_get_le16.exit.i
  store i16 %.0.i99.i.a, ptr %.sroa.0.4, align 1, !tbaa !48
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 2
  br label %bytestream2_put_byte.exit.i

bb.aw:                                            ; preds = %.lr.ph.i
  %i.pb = ptrtoint ptr %.sroa.0131.4 to i64
  %i.pc = sub i64 %i.jo, %i.pb
  %i.pd = icmp slt i64 %i.pc, 3
  br i1 %i.pd, label %bytestream2_get_le24.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.pe = getelementptr inbounds nuw i8, ptr %.sroa.0131.4, i64 3
  %i.pf = getelementptr i8, ptr %.sroa.0131.4, i64 1
  %i.pg = load i16, ptr %i.pf, align 1
  %i.ph = zext i16 %i.pg to i32
  %i.pi = shl nuw nsw i32 %i.ph, 8
  %i.pj = load i8, ptr %.sroa.0131.4, align 1, !tbaa !48
  %i.pk = zext i8 %i.pj to i32
  %i.pl = or disjoint i32 %i.pi, %i.pk
  br label %bytestream2_get_le24.exit.i

bytestream2_get_le24.exit.i:                      ; preds = %bb.aw, %bb.ax
  %.sroa.0131.8 = phi ptr [ %i.pe, %bb.ax ], [ %i.jg, %bb.aw ] ; 2 uses
  %.0.i102.i.a = phi i32 [ %i.pl, %bb.ax ], [ 0, %bb.aw ] ; 3 uses
  %.not.i113.i.a = icmp eq i32 %.sroa.51.4, 0
  %i.pm = ptrtoint ptr %.sroa.0.4 to i64
  %i.pn = sub i64 %i.jv, %i.pm
  %i.po = icmp sgt i64 %i.pn, 2
  %or.cond169 = select i1 %.not.i113.i.a, i1 %i.po, i1 false
  br i1 %or.cond169, label %bb.ay, label %bytestream2_put_byte.exit.i

bb.ay:                                            ; preds = %bytestream2_get_le24.exit.i
  %i.pp = trunc i32 %.0.i102.i.a to i8
  store i8 %i.pp, ptr %.sroa.0.4, align 1, !tbaa !48
  %i.pq = lshr i32 %.0.i102.i.a, 8
  %i.pr = trunc i32 %i.pq to i8
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 1
  store i8 %i.pr, ptr %i.ps, align 1, !tbaa !48
  %i.pt = lshr i32 %.0.i102.i.a, 16
  %i.pu = trunc nuw i32 %i.pt to i8
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 2
  store i8 %i.pu, ptr %i.pv, align 1, !tbaa !48
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 3
  br label %bytestream2_put_byte.exit.i

bb.az:                                            ; preds = %.lr.ph.i
  %i.px = ptrtoint ptr %.sroa.0131.4 to i64
  %i.py = sub i64 %i.jo, %i.px
  %i.pz = icmp slt i64 %i.py, 4
  br i1 %i.pz, label %bytestream2_get_le32.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.0131.4, i64 4
  %i.qb = load i32, ptr %.sroa.0131.4, align 1, !tbaa !48
  br label %bytestream2_get_le32.exit.i

bytestream2_get_le32.exit.i:                      ; preds = %bb.az, %bb.ba
  %.sroa.0131.5 = phi ptr [ %i.qa, %bb.ba ], [ %i.jg, %bb.az ] ; 2 uses
  %.0.i105.i = phi i32 [ %i.qb, %bb.ba ], [ 0, %bb.az ]
  %.not.i116.i = icmp eq i32 %.sroa.51.4, 0
  %i.qc = ptrtoint ptr %.sroa.0.4 to i64
  %i.qd = sub i64 %i.jv, %i.qc
  %i.qe = icmp sgt i64 %i.qd, 3
  %or.cond172 = select i1 %.not.i116.i, i1 %i.qe, i1 false
  br i1 %or.cond172, label %bb.bb, label %bytestream2_put_byte.exit.i

bb.bb:                                            ; preds = %bytestream2_get_le32.exit.i
  store i32 %.0.i105.i, ptr %.sroa.0.4, align 1, !tbaa !48
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 4
  br label %bytestream2_put_byte.exit.i

bytestream2_put_byte.exit.i:                      ; preds = %bytestream2_get_le32.exit.i, %bytestream2_get_le24.exit.i, %bytestream2_get_le16.exit.i, %bytestream2_get_byte.exit.i, %bb.bb, %bb.ay, %bb.av, %bb.as, %.lr.ph.i
  %.sroa.51.5 = phi i32 [ %.sroa.51.4, %.lr.ph.i ], [ 0, %bb.as ], [ 1, %bytestream2_get_le24.exit.i ], [ 0, %bb.av ], [ 1, %bytestream2_get_byte.exit.i ], [ 0, %bb.ay ], [ 1, %bytestream2_get_le16.exit.i ], [ 0, %bb.bb ], [ 1, %bytestream2_get_le32.exit.i ] ; 2 uses
  %.sroa.0131.6 = phi ptr [ %.sroa.0131.4, %.lr.ph.i ], [ %.sroa.0131.10, %bb.as ], [ %.sroa.0131.8, %bytestream2_get_le24.exit.i ], [ %.sroa.0131.9, %bb.av ], [ %.sroa.0131.10, %bytestream2_get_byte.exit.i ], [ %.sroa.0131.8, %bb.ay ], [ %.sroa.0131.9, %bytestream2_get_le16.exit.i ], [ %.sroa.0131.5, %bb.bb ], [ %.sroa.0131.5, %bytestream2_get_le32.exit.i ] ; 3 uses
  %.sroa.0.5 = phi ptr [ %.sroa.0.4, %.lr.ph.i ], [ %i.or, %bb.as ], [ %.sroa.0.4, %bytestream2_get_le24.exit.i ], [ %i.pa, %bb.av ], [ %.sroa.0.4, %bytestream2_get_byte.exit.i ], [ %i.pw, %bb.ay ], [ %.sroa.0.4, %bytestream2_get_le16.exit.i ], [ %i.qf, %bb.bb ], [ %.sroa.0.4, %bytestream2_get_le32.exit.i ] ; 2 uses
  %i.qg = add nuw nsw i32 %.176133.i, 1           ; 2 uses
  %exitcond146.not.i = icmp eq i32 %i.qg, %i.mr
  br i1 %exitcond146.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !58

._crit_edge.i:                                    ; preds = %bytestream2_put_byte.exit.i
  %.pre.i = load i32, ptr %i.jn, align 8, !tbaa !31
  %i.qh = icmp ne i32 %.pre.i, 1
  %i.qi = and i32 %i.mr, 1
  %.not88.i = icmp eq i32 %i.qi, 0
  %or.cond.i90 = or i1 %.not88.i, %i.qh
  %i.qj = ptrtoint ptr %.sroa.0131.6 to i64
  %i.qk = sub i64 %i.jo, %i.qj
  %..i.i = call i64 @llvm.smin.i64(i64 %i.qk, i64 1)
  %.sroa.0131.7.idx = select i1 %or.cond.i90, i64 0, i64 %..i.i
  %.sroa.0131.7 = getelementptr inbounds i8, ptr %.sroa.0131.6, i64 %.sroa.0131.7.idx
  %i.ql = add i32 %.070136.i, %i.mr
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge.i, %bytestream2_get_byte.exit90.i, %bytestream2_seek_p.exit119.i, %bb.al
  %.sroa.51.3 = phi i32 [ %spec.store.select.i, %bytestream2_seek_p.exit119.i ], [ %.sroa.51.5, %._crit_edge.i ], [ %spec.store.select144.i, %bytestream2_get_byte.exit90.i ], [ %.sroa.51.2, %bb.al ]
  %.sroa.0131.1 = phi ptr [ %.sroa.0131.3, %bytestream2_seek_p.exit119.i ], [ %.sroa.0131.7, %._crit_edge.i ], [ %.sroa.0131.2, %bytestream2_get_byte.exit90.i ], [ %.sroa.0131.0, %bb.al ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %i.ne, %bytestream2_seek_p.exit119.i ], [ %.sroa.0.5, %._crit_edge.i ], [ %i.ob, %bytestream2_get_byte.exit90.i ], [ %.sroa.0.2, %bb.al ]
  %.485.i = phi i32 [ %i.mw, %bytestream2_seek_p.exit119.i ], [ %.081134.i, %._crit_edge.i ], [ %i.ns, %bytestream2_get_byte.exit90.i ], [ %.081134.i, %bb.al ]
  %.380.i = phi i32 [ %.077135.i, %bytestream2_seek_p.exit119.i ], [ %.077135.i, %._crit_edge.i ], [ %.077135.i, %bytestream2_get_byte.exit90.i ], [ %.178.i, %bb.al ]
  %.474.i = phi i32 [ 0, %bytestream2_seek_p.exit119.i ], [ %i.ql, %._crit_edge.i ], [ %i.nm, %bytestream2_get_byte.exit90.i ], [ %i.ml, %bb.al ]
  %i.qm = ptrtoint ptr %.sroa.0131.1 to i64
  %i.qn = sub i64 %i.jo, %i.qm                    ; 2 uses
  %i.qo = trunc i64 %i.qn to i32
  %i.qp = icmp sgt i32 %i.qo, 0
  br i1 %i.qp, label %bb.r, label %rle_uncompress.exit.thread, !llvm.loop !59

rle_uncompress.exit:                              ; preds = %.lr.ph, %rle_uncompress.exit
  %i.qq = phi i32 [ %i.mt, %.lr.ph ], [ %i.rh, %rle_uncompress.exit ]
  %.1174 = phi i32 [ 0, %.lr.ph ], [ %i.rg, %rle_uncompress.exit ] ; 3 uses
  %i.qr = load ptr, ptr %1, align 8, !tbaa !55
  %i.qs = xor i32 %.1174, -1
  %i.qt = add i32 %i.qq, %i.qs
  %i.qu = load i32, ptr %i.mv, align 8, !tbaa !51
  %i.qv = mul nsw i32 %i.qu, %i.qt
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr inbounds i8, ptr %i.qr, i64 %i.qw
  %i.qy = load ptr, ptr %i.jh, align 8, !tbaa !41
  %i.qz = load i32, ptr %i.d, align 8, !tbaa !31
  %i.ra = load i32, ptr %i.ju, align 8, !tbaa !36
  %i.rb = mul i32 %i.ra, %i.qz                    ; 2 uses
  %i.rc = mul i32 %i.rb, %.1174
  %i.rd = zext i32 %i.rc to i64
  %i.re = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.rd
  %i.rf = zext i32 %i.rb to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qx, ptr align 1 %i.re, i64 %i.rf, i1 false)
  %i.rg = add nuw nsw i32 %.1174, 1               ; 2 uses
  %i.rh = load i32, ptr %i.ms, align 4, !tbaa !37 ; 2 uses
  %i.ri = icmp slt i32 %i.rg, %i.rh
  br i1 %i.ri, label %rle_uncompress.exit, label %rle_uncompress.exit._crit_edge, !llvm.loop !60

rle_uncompress.exit._crit_edge:                   ; preds = %rle_uncompress.exit, %rle_uncompress.exit.preheader
  store i32 1, ptr %2, align 4, !tbaa !51
  %i.rj = load i32, ptr %i.i, align 8, !tbaa !44
  br label %rle_uncompress.exit.thread

rle_uncompress.exit.thread:                       ; preds = %bb.bc, %bb.ap, %bb.s, %bytestream2_init_writer.exit, %bb.j, %bb.a, %rle_uncompress.exit._crit_edge, %bb.i, %bb.c
  %.0 = phi i32 [ %i.rj, %rle_uncompress.exit._crit_edge ], [ -1313558101, %bb.c ], [ %i.j, %bb.a ], [ -1313558101, %bb.i ], [ %i.ah, %bb.j ], [ -1094995529, %bytestream2_init_writer.exit ], [ -1094995529, %bb.s ], [ -1094995529, %bb.ap ], [ -1094995529, %bb.bc ]
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @decode_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.c) #6
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.e) #6
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @ff_inflate_end(ptr noundef nonnull %i.g) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #3

declare i32 @ff_inflate_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @inflateReset(ptr noundef) local_unnamed_addr #3

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @av_packet_get_side_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare void @ff_inflate_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!10, !6, i64 648}
!30 = !{!10, !6, i64 136}
!31 = !{!32, !6, i64 0}
!32 = !{!"MSCCContext", !6, i64 0, !6, i64 4, !16, i64 8, !6, i64 16, !16, i64 24, !33, i64 32, !7, i64 152}
!33 = !{!"FFZStream", !34, i64 0, !6, i64 112}
!34 = !{!"z_stream_s", !16, i64 0, !6, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !15, i64 40, !16, i64 48, !35, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !6, i64 88, !15, i64 96, !15, i64 104}
!35 = !{!"p1 _ZTS14internal_state", !12, i64 0}
!36 = !{!10, !6, i64 112}
!37 = !{!10, !6, i64 116}
!38 = !{!32, !6, i64 4}
!39 = !{!32, !16, i64 8}
!40 = !{!32, !6, i64 16}
!41 = !{!32, !16, i64 24}
!42 = !{!43, !16, i64 24}
!43 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!44 = !{!43, !6, i64 32}
!45 = !{!34, !16, i64 24}
!46 = !{!34, !6, i64 32}
!47 = !{!10, !6, i64 24}
!48 = !{!7, !7, i64 0}
!49 = !{!34, !16, i64 0}
!50 = !{!34, !6, i64 8}
!51 = !{!6, !6, i64 0}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.isvectorized", i32 1}
!55 = !{!16, !16, i64 0}
!56 = !{!34, !15, i64 40}
!57 = distinct !{!57, !53}
!58 = distinct !{!58, !53}
!59 = distinct !{!59, !53}
!60 = distinct !{!60, !53}
end_hunk_0
