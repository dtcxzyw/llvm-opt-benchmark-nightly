Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm?download=true
inline.NumInlined: 63
inline.NumDeleted: 32
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4ncnn4Gemm10load_modelERKNS_8ModelBinE:bb.a
bb.hm:                                            ; preds = %bb.hl
  call void @free(ptr noundef nonnull %i.ww) #13
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hi, %bb.hh, %bb.hk, %bb.hm, %bb.hl
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.xf = load ptr, ptr %i.wn, align 8, !tbaa !19 ; 2 uses
  %i.xg = load <2 x ptr>, ptr %11, align 16, !tbaa !54
  store <2 x ptr> %i.xg, ptr %i.wm, align 8, !tbaa !54
  %i.xh = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.xi = load i64, ptr %i.xh, align 16, !tbaa !55
  store i64 %i.xi, ptr %i.xa, align 8, !tbaa !55
  %i.xj = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.xk = load i32, ptr %i.xj, align 8, !tbaa !56
  store i32 %i.xk, ptr %i.xb, align 8, !tbaa !56
  %i.xl = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.xm = load ptr, ptr %i.xl, align 16, !tbaa !20
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 536
  store ptr %i.xm, ptr %i.xn, align 8, !tbaa !20
  %i.xo = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.xp = load <4 x i32>, ptr %i.xo, align 8, !tbaa !57
  store <4 x i32> %i.xp, ptr %i.xc, align 8, !tbaa !57
  %i.xq = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.xr = load i32, ptr %i.xq, align 8, !tbaa !58
  store i32 %i.xr, ptr %i.xd, align 8, !tbaa !58
  %i.xs = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.xt = load i64, ptr %i.xs, align 16, !tbaa !22
  store i64 %i.xt, ptr %i.xe, align 8, !tbaa !22
  %.not.i107 = icmp eq ptr %i.xf, null
  br i1 %.not.i107, label %_ZN4ncnn3MatD2Ev.exit20, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.xu = atomicrmw add ptr %i.xf, i32 -1 acq_rel, align 4
  %i.xv = icmp eq i32 %i.xu, 1
  br i1 %i.xv, label %bb.hp, label %_ZN4ncnn3MatD2Ev.exit20

bb.hp:                                            ; preds = %bb.ho
  %i.xw = load ptr, ptr %i.xl, align 16, !tbaa !20 ; 3 uses
  %.not3.i108 = icmp eq ptr %i.xw, null
  %i.xx = load ptr, ptr %11, align 16, !tbaa !21  ; 3 uses
  br i1 %.not3.i108, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.xy = load ptr, ptr %i.xw, align 8, !tbaa !13
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 24
  %i.ya = load ptr, ptr %i.xz, align 8
  invoke void %i.ya(ptr noundef nonnull align 8 dereferenceable(8) %i.xw, ptr noundef %i.xx)
          to label %_ZN4ncnn3MatD2Ev.exit20 unwind label %bb.ht, !inline_history !0

bb.hr:                                            ; preds = %bb.hp
  %.not.i122 = icmp eq ptr %i.xx, null
  br i1 %.not.i122, label %_ZN4ncnn3MatD2Ev.exit20, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  call void @free(ptr noundef nonnull %i.xx) #13
  br label %_ZN4ncnn3MatD2Ev.exit20

bb.ht:                                            ; preds = %bb.hq
  %i.yb = landingpad { ptr, i32 }
          catch ptr null
  %i.yc = extractvalue { ptr, i32 } %i.yb, 0
  call void @__clang_call_terminate(ptr %i.yc) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit20:                          ; preds = %bb.ho, %bb.hn, %bb.hq, %bb.hr, %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  br label %bb.ib

bb.hu:                                            ; preds = %bb.hk
  %i.yd = landingpad { ptr, i32 }
          cleanup
  %i.ye = load ptr, ptr %i.wn, align 8, !tbaa !19 ; 2 uses
  %.not.i111 = icmp eq ptr %i.ye, null
  br i1 %.not.i111, label %_ZN4ncnn3MatD2Ev.exit19, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.yf = atomicrmw add ptr %i.ye, i32 -1 acq_rel, align 4
  %i.yg = icmp eq i32 %i.yf, 1
  br i1 %i.yg, label %bb.hw, label %_ZN4ncnn3MatD2Ev.exit19

bb.hw:                                            ; preds = %bb.hv
  %i.yh = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.yi = load ptr, ptr %i.yh, align 16, !tbaa !20 ; 3 uses
  %.not3.i112 = icmp eq ptr %i.yi, null
  %i.yj = load ptr, ptr %11, align 16, !tbaa !21  ; 3 uses
  br i1 %.not3.i112, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.yk = load ptr, ptr %i.yi, align 8, !tbaa !13
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 24
  %i.ym = load ptr, ptr %i.yl, align 8
  invoke void %i.ym(ptr noundef nonnull align 8 dereferenceable(8) %i.yi, ptr noundef %i.yj)
          to label %_ZN4ncnn3MatD2Ev.exit19 unwind label %bb.ia, !inline_history !0

bb.hy:                                            ; preds = %bb.hw
  %.not.i120 = icmp eq ptr %i.yj, null
  br i1 %.not.i120, label %_ZN4ncnn3MatD2Ev.exit19, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  call void @free(ptr noundef nonnull %i.yj) #13
  br label %_ZN4ncnn3MatD2Ev.exit19

bb.ia:                                            ; preds = %bb.hx
  %i.yn = landingpad { ptr, i32 }
          catch ptr null
  %i.yo = extractvalue { ptr, i32 } %i.yn, 0
  call void @__clang_call_terminate(ptr %i.yo) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit19:                          ; preds = %bb.hv, %bb.hu, %bb.hx, %bb.hy, %bb.hz
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  br label %bb.ij

bb.ib:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit20, %bb.he
  %i.yp = load i32, ptr %i.ej, align 4, !tbaa !44
  %i.yq = icmp eq i32 %i.yp, 1
  br i1 %i.yq, label %bb.ic, label %_ZNK4ncnn3Mat5emptyEv.exit226.thread

bb.ic:                                            ; preds = %bb.ib
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.yr = load ptr, ptr %1, align 8, !tbaa !13
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 16
  %i.yt = load ptr, ptr %i.ys, align 8
  call void %i.yt(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1, i32 noundef 1)
  %i.yu = load ptr, ptr %12, align 8, !tbaa !21
  %i.yv = load float, ptr %i.yu, align 4, !tbaa !59
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 576
  store float %i.yv, ptr %i.yw, align 8, !tbaa !60
  %i.yx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !19 ; 2 uses
  %.not.i115 = icmp eq ptr %i.yy, null
  br i1 %.not.i115, label %_ZN4ncnn3MatD2Ev.exit, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.yz = atomicrmw add ptr %i.yy, i32 -1 acq_rel, align 4
  %i.za = icmp eq i32 %i.yz, 1
  br i1 %i.za, label %bb.ie, label %_ZN4ncnn3MatD2Ev.exit

bb.ie:                                            ; preds = %bb.id
  %i.zb = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !20 ; 3 uses
  %.not3.i116 = icmp eq ptr %i.zc, null
  %i.zd = load ptr, ptr %12, align 8, !tbaa !21   ; 3 uses
  br i1 %.not3.i116, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.ze = load ptr, ptr %i.zc, align 8, !tbaa !13
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 24
  %i.zg = load ptr, ptr %i.zf, align 8
  invoke void %i.zg(ptr noundef nonnull align 8 dereferenceable(8) %i.zc, ptr noundef %i.zd)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ii, !inline_history !0

bb.ig:                                            ; preds = %bb.ie
  %.not.i119 = icmp eq ptr %i.zd, null
  br i1 %.not.i119, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  call void @free(ptr noundef nonnull %i.zd) #13
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ii:                                            ; preds = %bb.if
  %i.zh = landingpad { ptr, i32 }
          catch ptr null
  %i.zi = extractvalue { ptr, i32 } %i.zh, 0
  call void @__clang_call_terminate(ptr %i.zi) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.id, %bb.ic, %bb.if, %bb.ig, %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %_ZNK4ncnn3Mat5emptyEv.exit226.thread

_ZNK4ncnn3Mat5emptyEv.exit226.thread:             ; preds = %bb.hc, %bb.cp, %bb.au, %bb.hd, %_ZN4ncnn3MatD2Ev.exit, %bb.ib, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat5emptyEv.exit225, %_ZNK4ncnn3Mat5emptyEv.exit226
  %.015 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit226 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit225 ], [ 0, %bb.ib ], [ 0, %_ZN4ncnn3MatD2Ev.exit ], [ 0, %bb.hd ], [ -100, %bb.cp ], [ -100, %bb.au ], [ -100, %bb.hc ]
  ret i32 %.015

bb.ij:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit19, %_ZN4ncnn3MatD2Ev.exit21, %_ZN4ncnn3MatD2Ev.exit23, %_ZN4ncnn3MatD2Ev.exit25, %_ZN4ncnn3MatD2Ev.exit27, %_ZN4ncnn3MatD2Ev.exit29, %_ZN4ncnn3MatD2Ev.exit31, %_ZN4ncnn3MatD2Ev.exit33, %_ZN4ncnn3MatD2Ev.exit35, %_ZN4ncnn3MatD2Ev.exit37
  %.pn = phi { ptr, i32 } [ %i.yd, %_ZN4ncnn3MatD2Ev.exit19 ], [ %i.vh, %_ZN4ncnn3MatD2Ev.exit21 ], [ %i.sx, %_ZN4ncnn3MatD2Ev.exit23 ], [ %i.ql, %_ZN4ncnn3MatD2Ev.exit25 ], [ %i.ob, %_ZN4ncnn3MatD2Ev.exit27 ], [ %i.lr, %_ZN4ncnn3MatD2Ev.exit29 ], [ %i.gn, %_ZN4ncnn3MatD2Ev.exit33 ], [ %i.iw, %_ZN4ncnn3MatD2Ev.exit31 ], [ %i.be, %_ZN4ncnn3MatD2Ev.exit37 ], [ %i.dn, %_ZN4ncnn3MatD2Ev.exit35 ]
  resume { ptr, i32 } %.pn
}

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn4Gemm7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(580) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.ncnn::Mat", align 16        ; 22 uses
  %5 = alloca %"class.ncnn::Mat", align 16        ; 22 uses
  %6 = alloca %"class.ncnn::Mat", align 16        ; 26 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.i = load i32, ptr %i.h, align 4, !tbaa !52
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @_ZNK4ncnn4Gemm12forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(580) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %bb.do

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !43
  %.not111 = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !44
  %.not112 = icmp eq i32 %i.n, 0                  ; 2 uses
  br i1 %.not111, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %1, align 8, !tbaa !61     ; 3 uses
  br i1 %.not112, label %bb.f, label %bb.e

.thread:                                          ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  br i1 %.not112, label %.thread223, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.q = phi ptr [ %i.p, %.thread ], [ %i.o, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %bb.g

.thread223:                                       ; preds = %.thread
  %i.s = load ptr, ptr %1, align 8, !tbaa !61
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  br label %bb.g

bb.g:                                             ; preds = %.thread223, %bb.f, %bb.e
  %i.u = phi ptr [ %i.q, %bb.e ], [ %i.p, %.thread223 ], [ %i.o, %bb.f ] ; 14 uses
  %i.v = phi ptr [ %i.r, %bb.e ], [ %i.s, %.thread223 ], [ %i.t, %bb.f ] ; 15 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !55   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  store i64 0, ptr %i.ag, align 16, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.ab, i8 0, i64 28, i1 false)
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !41
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.ak = icmp eq ptr %4, %i.u
  br i1 %i.ak, label %_ZN4ncnn3MataSERKS0_.exit215, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !19 ; 2 uses
  %.not.i208 = icmp eq ptr %i.am, null
  br i1 %.not.i208, label %_ZN4ncnn3Mat7releaseEv.exit.i210, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = atomicrmw add ptr %i.am, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !19  ; 2 uses
  %.not.i.i209 = icmp eq ptr %.pre, null
  br i1 %.not.i.i209, label %_ZN4ncnn3Mat7releaseEv.exit.i210, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = atomicrmw add ptr %.pre, i32 -1 acq_rel, align 4
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.l, label %_ZN4ncnn3Mat7releaseEv.exit.i210

bb.l:                                             ; preds = %bb.k
  %i.aq = load ptr, ptr %i.ab, align 16, !tbaa !20 ; 3 uses
  %.not3.i.i211 = icmp eq ptr %i.aq, null
  %i.ar = load ptr, ptr %4, align 16, !tbaa !21   ; 3 uses
  br i1 %.not3.i.i211, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef %i.ar)
          to label %_ZN4ncnn3Mat7releaseEv.exit.i210 unwind label %bb.p, !inline_history !1

bb.n:                                             ; preds = %bb.l
  %.not.i18.i212 = icmp eq ptr %i.ar, null
  br i1 %.not.i18.i212, label %_ZN4ncnn3Mat7releaseEv.exit.i210, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.ar) #13
  br label %_ZN4ncnn3Mat7releaseEv.exit.i210

_ZN4ncnn3Mat7releaseEv.exit.i210:                 ; preds = %bb.i, %bb.n, %bb.o, %bb.m, %bb.k, %bb.j
  store i64 0, ptr %i.ag, align 16, !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ac, i8 0, i64 20, i1 false)
  %i.av = load <2 x ptr>, ptr %i.u, align 8, !tbaa !54
  store <2 x ptr> %i.av, ptr %4, align 16, !tbaa !54
  %i.aw = load i64, ptr %i.w, align 8, !tbaa !55
  store i64 %i.aw, ptr %i.z, align 16, !tbaa !55
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !56
  store i32 %i.ay, ptr %i.aa, align 8, !tbaa !56
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !20
  store ptr %i.ba, ptr %i.ab, align 16, !tbaa !20
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.bc = load <4 x i32>, ptr %i.bb, align 8, !tbaa !57
  store <4 x i32> %i.bc, ptr %i.ac, align 8, !tbaa !57
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !58
  store i32 %i.be, ptr %i.af, align 8, !tbaa !58
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !22
  store i64 %i.bg, ptr %i.ag, align 16, !tbaa !22
  br label %_ZN4ncnn3MataSERKS0_.exit215

bb.p:                                             ; preds = %bb.m, %bb.q
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.q:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !62
  %i.bk = icmp eq i32 %i.bj, 3
  %.in.v = select i1 %i.bk, i64 56, i64 48
  %.in = getelementptr inbounds nuw i8, ptr %i.u, i64 %.in.v
  %i.bl = load i32, ptr %.in, align 8, !tbaa !57
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 44 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !63
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !65
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %i.bl, i32 noundef %i.bn, i64 noundef %i.x, ptr noundef %i.bp)
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q
  %i.bq = load ptr, ptr %4, align 16, !tbaa !21   ; 4 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZNK4ncnn3Mat5emptyEv.exit218.thread, label %_ZNK4ncnn3Mat5emptyEv.exit218

_ZNK4ncnn3Mat5emptyEv.exit218:                    ; preds = %bb.r
  %i.bs = load i64, ptr %i.ag, align 16, !tbaa !22
  %i.bt = load i32, ptr %i.af, align 8, !tbaa !58
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul i64 %i.bs, %i.bu
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_ZNK4ncnn3Mat5emptyEv.exit218.thread, label %bb.s

bb.s:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit218
  %i.bx = load i32, ptr %i.bi, align 8, !tbaa !62
  %i.by = icmp eq i32 %i.bx, 3
  br i1 %i.by, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !22
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cb = load i32, ptr %i.bm, align 4, !tbaa !63
  %i.cc = sext i32 %i.cb to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cd = phi i64 [ %i.ca, %bb.t ], [ %i.cc, %bb.u ] ; 6 uses
  %i.ce = load i32, ptr %i.ae, align 16, !tbaa !66 ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph231, label %_ZN4ncnn3MataSERKS0_.exit215

.lr.ph231:                                        ; preds = %bb.v
  %i.cg = load i32, ptr %i.ad, align 4, !tbaa !63 ; 4 uses
  %i.ch = sext i32 %i.cg to i64                   ; 3 uses
  %i.ci = load i64, ptr %i.z, align 16, !tbaa !55 ; 3 uses
  %factor.op.mul = mul i64 %i.ci, %i.ch
  %i.cj = icmp sgt i32 %i.cg, 0
  br i1 %i.cj, label %.lr.ph231.split, label %_ZN4ncnn3MataSERKS0_.exit215

.lr.ph231.split:                                  ; preds = %.lr.ph231
  %i.ck = load ptr, ptr %i.u, align 8, !tbaa !21  ; 3 uses
  %wide.trip.count247 = zext nneg i32 %i.ce to i64 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.cg to i64   ; 7 uses
  %i.cl = add nsw i64 %wide.trip.count247, -1
  %i.cm = mul i64 %i.ci, %i.cl
  %i.cn = mul i64 %i.cm, %i.ch
  %i.co = shl nuw nsw i64 %wide.trip.count, 2
  %i.cp = getelementptr i8, ptr %i.bq, i64 %i.cn
  %scevgep = getelementptr i8, ptr %i.cp, i64 %i.co
end_hunk_0
begin_hunk_1_@_ZNK4ncnn4Gemm7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %wide.trip.count252 = zext nneg i32 %i.fd to i64 ; 7 uses
  %i.fi = add nsw i64 %wide.trip.count257, -1
  %i.fj = mul i64 %i.ff, %i.fi
  %i.fk = mul i64 %i.fj, %i.fe
  %i.fl = shl nuw nsw i64 %wide.trip.count252, 2
  %i.fm = getelementptr i8, ptr %i.em, i64 %i.fk
  %scevgep350 = getelementptr i8, ptr %i.fm, i64 %i.fl
  %i.fn = mul i64 %i.ff, %i.fe
  %i.fo = add nuw nsw i64 %wide.trip.count257, %wide.trip.count252
  %i.fp = shl nuw nsw i64 %i.fo, 2
  %i.fq = getelementptr i8, ptr %i.fh, i64 %i.fp
  %scevgep351 = getelementptr i8, ptr %i.fq, i64 -4
  %min.iters.check357 = icmp ugt i32 %i.fd, 7
  %ident.check348.not = icmp eq i64 %i.fa, 1
  %or.cond368 = select i1 %min.iters.check357, i1 %ident.check348.not, i1 false
  %bound0352 = icmp ult ptr %i.em, %scevgep351
  %bound1353 = icmp ult ptr %i.fh, %scevgep350
  %found.conflict354 = and i1 %bound0352, %bound1353
  %stride.check355 = icmp slt i64 %i.fn, 0
  %i.fr = or i1 %found.conflict354, %stride.check355
  %n.vec359 = and i64 %wide.trip.count252, 2147483640 ; 3 uses
  %cmp.n366 = icmp eq i64 %n.vec359, %wide.trip.count252
  %xtraiter369 = and i64 %wide.trip.count252, 3   ; 2 uses
  %lcmp.mod370.not = icmp eq i64 %xtraiter369, 0
  br label %.lr.ph234

.lr.ph234:                                        ; preds = %.lr.ph240.split, %._crit_edge235
  %indvars.iv254 = phi i64 [ 0, %.lr.ph240.split ], [ %indvars.iv.next255, %._crit_edge235 ] ; 3 uses
  %.reass242 = mul i64 %factor.op.mul241, %indvars.iv254
  %i.fs = getelementptr inbounds nuw i8, ptr %i.em, i64 %.reass242 ; 6 uses
  %invariant.gep236 = getelementptr [4 x i8], ptr %i.fh, i64 %indvars.iv254 ; 6 uses
  %or.cond368.not = xor i1 %or.cond368, true
  %brmerge372 = select i1 %or.cond368.not, i1 true, i1 %i.fr
  br i1 %brmerge372, label %scalar.ph356.preheader, label %vector.body360

vector.body360:                                   ; preds = %.lr.ph234, %vector.body360
  %index361 = phi i64 [ %index.next364, %vector.body360 ], [ 0, %.lr.ph234 ] ; 3 uses
  %i.ft = getelementptr [4 x i8], ptr %invariant.gep236, i64 %index361 ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 16
  %wide.load362 = load <4 x float>, ptr %i.ft, align 4, !tbaa !59, !alias.scope !102
  %wide.load363 = load <4 x float>, ptr %i.fu, align 4, !tbaa !59, !alias.scope !102
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %index361 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store <4 x float> %wide.load362, ptr %i.fv, align 4, !tbaa !59, !alias.scope !103, !noalias !102
  store <4 x float> %wide.load363, ptr %i.fw, align 4, !tbaa !59, !alias.scope !103, !noalias !102
  %index.next364 = add nuw i64 %index361, 8       ; 2 uses
  %i.fx = icmp eq i64 %index.next364, %n.vec359
  br i1 %i.fx, label %middle.block365, label %vector.body360, !llvm.loop !96

middle.block365:                                  ; preds = %vector.body360
  br i1 %cmp.n366, label %._crit_edge235, label %scalar.ph356.preheader

scalar.ph356.preheader:                           ; preds = %.lr.ph234, %middle.block365
  %indvars.iv249.ph = phi i64 [ %n.vec359, %middle.block365 ], [ 0, %.lr.ph234 ] ; 3 uses
  br i1 %lcmp.mod370.not, label %scalar.ph356.prol.loopexit, label %scalar.ph356.prol

scalar.ph356.prol:                                ; preds = %scalar.ph356.preheader, %scalar.ph356.prol
  %indvars.iv249.prol = phi i64 [ %indvars.iv.next250.prol, %scalar.ph356.prol ], [ %indvars.iv249.ph, %scalar.ph356.preheader ] ; 3 uses
  %prol.iter371 = phi i64 [ %prol.iter371.next, %scalar.ph356.prol ], [ 0, %scalar.ph356.preheader ]
  %i.fy = mul i64 %i.fa, %indvars.iv249.prol
  %gep237.prol = getelementptr [4 x i8], ptr %invariant.gep236, i64 %i.fy
  %i.fz = load float, ptr %gep237.prol, align 4, !tbaa !59
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv249.prol
  store float %i.fz, ptr %i.ga, align 4, !tbaa !59
  %indvars.iv.next250.prol = add nuw nsw i64 %indvars.iv249.prol, 1 ; 2 uses
  %prol.iter371.next = add i64 %prol.iter371, 1   ; 2 uses
  %prol.iter371.cmp.not = icmp eq i64 %prol.iter371.next, %xtraiter369
  br i1 %prol.iter371.cmp.not, label %scalar.ph356.prol.loopexit, label %scalar.ph356.prol, !llvm.loop !97

scalar.ph356.prol.loopexit:                       ; preds = %scalar.ph356.prol, %scalar.ph356.preheader
  %indvars.iv249.unr = phi i64 [ %indvars.iv249.ph, %scalar.ph356.preheader ], [ %indvars.iv.next250.prol, %scalar.ph356.prol ]
  %i.gb = sub nsw i64 %indvars.iv249.ph, %wide.trip.count252
  %i.gc = icmp ugt i64 %i.gb, -4
  br i1 %i.gc, label %._crit_edge235, label %scalar.ph356

._crit_edge235:                                   ; preds = %scalar.ph356.prol.loopexit, %scalar.ph356, %middle.block365
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %exitcond258.not = icmp eq i64 %indvars.iv.next255, %wide.trip.count257
  br i1 %exitcond258.not, label %_ZN4ncnn3MataSERKS0_.exit207.loopexit, label %.lr.ph234, !llvm.loop !98

scalar.ph356:                                     ; preds = %scalar.ph356.prol.loopexit, %scalar.ph356
  %indvars.iv249 = phi i64 [ %indvars.iv.next250.3, %scalar.ph356 ], [ %indvars.iv249.unr, %scalar.ph356.prol.loopexit ] ; 6 uses
  %i.gd = mul i64 %i.fa, %indvars.iv249
  %gep237 = getelementptr [4 x i8], ptr %invariant.gep236, i64 %i.gd
  %i.ge = load float, ptr %gep237, align 4, !tbaa !59
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv249
  store float %i.ge, ptr %i.gf, align 4, !tbaa !59
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %i.gg = mul i64 %i.fa, %indvars.iv.next250
  %gep237.1 = getelementptr [4 x i8], ptr %invariant.gep236, i64 %i.gg
  %i.gh = load float, ptr %gep237.1, align 4, !tbaa !59
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv.next250
  store float %i.gh, ptr %i.gi, align 4, !tbaa !59
  %indvars.iv.next250.1 = add nuw nsw i64 %indvars.iv249, 2 ; 2 uses
  %i.gj = mul i64 %i.fa, %indvars.iv.next250.1
  %gep237.2 = getelementptr [4 x i8], ptr %invariant.gep236, i64 %i.gj
  %i.gk = load float, ptr %gep237.2, align 4, !tbaa !59
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv.next250.1
  store float %i.gk, ptr %i.gl, align 4, !tbaa !59
  %indvars.iv.next250.2 = add nuw nsw i64 %indvars.iv249, 3 ; 2 uses
  %i.gm = mul i64 %i.fa, %indvars.iv.next250.2
  %gep237.3 = getelementptr [4 x i8], ptr %invariant.gep236, i64 %i.gm
  %i.gn = load float, ptr %gep237.3, align 4, !tbaa !59
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv.next250.2
  store float %i.gn, ptr %i.go, align 4, !tbaa !59
  %indvars.iv.next250.3 = add nuw nsw i64 %indvars.iv249, 4 ; 2 uses
  %exitcond253.not.3 = icmp eq i64 %indvars.iv.next250.3, %wide.trip.count252
  br i1 %exitcond253.not.3, label %._crit_edge235, label %scalar.ph356, !llvm.loop !99

bb.ad:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit215
  %i.gp = icmp eq ptr %5, %i.v
  br i1 %i.gp, label %_ZN4ncnn3MataSERKS0_.exit207, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !19 ; 2 uses
  %.not.i200 = icmp eq ptr %i.gr, null
  br i1 %.not.i200, label %_ZN4ncnn3Mat7releaseEv.exit.i202, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gs = atomicrmw add ptr %i.gr, i32 1 acq_rel, align 4 ; 0 uses
  %.pre259 = load ptr, ptr %i.ds, align 8, !tbaa !19 ; 2 uses
  %.not.i.i201 = icmp eq ptr %.pre259, null
  br i1 %.not.i.i201, label %_ZN4ncnn3Mat7releaseEv.exit.i202, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gt = atomicrmw add ptr %.pre259, i32 -1 acq_rel, align 4
  %i.gu = icmp eq i32 %i.gt, 1
  br i1 %i.gu, label %bb.ah, label %_ZN4ncnn3Mat7releaseEv.exit.i202

bb.ah:                                            ; preds = %bb.ag
  %i.gv = load ptr, ptr %i.dv, align 16, !tbaa !20 ; 3 uses
  %.not3.i.i203 = icmp eq ptr %i.gv, null
  %i.gw = load ptr, ptr %5, align 16, !tbaa !21   ; 3 uses
  br i1 %.not3.i.i203, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gx = load ptr, ptr %i.gv, align 8, !tbaa !13
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8
  invoke void %i.gz(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef %i.gw)
          to label %_ZN4ncnn3Mat7releaseEv.exit.i202 unwind label %bb.y, !inline_history !1

bb.aj:                                            ; preds = %bb.ah
  %.not.i18.i204 = icmp eq ptr %i.gw, null
  br i1 %.not.i18.i204, label %_ZN4ncnn3Mat7releaseEv.exit.i202, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef nonnull %i.gw) #13
  br label %_ZN4ncnn3Mat7releaseEv.exit.i202

_ZN4ncnn3Mat7releaseEv.exit.i202:                 ; preds = %bb.ae, %bb.aj, %bb.ak, %bb.ai, %bb.ag, %bb.af
  store i64 0, ptr %i.ea, align 16, !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dw, i8 0, i64 20, i1 false)
  %i.ha = load <2 x ptr>, ptr %i.v, align 8, !tbaa !54
  store <2 x ptr> %i.ha, ptr %5, align 16, !tbaa !54
  %i.hb = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !55
  store i64 %i.hc, ptr %i.dt, align 16, !tbaa !55
  %i.hd = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !56
  store i32 %i.he, ptr %i.du, align 8, !tbaa !56
  %i.hf = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !20
  store ptr %i.hg, ptr %i.dv, align 16, !tbaa !20
  %i.hh = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.hi = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.hj = load <4 x i32>, ptr %i.hh, align 8, !tbaa !57
  %i.hk = load i32, ptr %i.hi, align 8, !tbaa !66
  store <4 x i32> %i.hj, ptr %i.dw, align 8, !tbaa !57
  %i.hl = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !58 ; 2 uses
  store i32 %i.hm, ptr %i.dz, align 8, !tbaa !58
  %i.hn = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !22
  store i64 %i.ho, ptr %i.ea, align 16, !tbaa !22
  br label %_ZN4ncnn3MataSERKS0_.exit207

_ZN4ncnn3MataSERKS0_.exit207.loopexit:            ; preds = %._crit_edge235
  %.pre260 = load i32, ptr %i.dz, align 8
  %.pre261 = load i32, ptr %i.dy, align 16
  br label %_ZN4ncnn3MataSERKS0_.exit207

_ZN4ncnn3MataSERKS0_.exit207:                     ; preds = %_ZN4ncnn3MataSERKS0_.exit207.loopexit, %bb.ac, %.lr.ph240, %_ZN4ncnn3Mat7releaseEv.exit.i202, %bb.ad
  %i.hp = phi i32 [ %.pre261, %_ZN4ncnn3MataSERKS0_.exit207.loopexit ], [ %i.fb, %bb.ac ], [ %i.fb, %.lr.ph240 ], [ %i.hk, %_ZN4ncnn3Mat7releaseEv.exit.i202 ], [ 0, %bb.ad ]
  %i.hq = phi i32 [ %.pre260, %_ZN4ncnn3MataSERKS0_.exit207.loopexit ], [ %i.ep, %bb.ac ], [ %i.ep, %.lr.ph240 ], [ %i.hm, %_ZN4ncnn3Mat7releaseEv.exit.i202 ], [ 0, %bb.ad ]
  %i.hr = load i32, ptr %i.ac, align 8, !tbaa !62
  %i.hs = icmp eq i32 %i.hr, 3
  %i.ht = load i32, ptr %i.af, align 8
  %i.hu = load i32, ptr %i.ae, align 16
  %i.hv = select i1 %i.hs, i32 %i.ht, i32 %i.hu   ; 4 uses
  %i.hw = load i32, ptr %i.dw, align 8, !tbaa !62
  %i.hx = icmp eq i32 %i.hw, 3
  %i.hy = select i1 %i.hx, i32 %i.hq, i32 %i.hp   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.hz = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 11 uses
  %i.id = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 5 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 4 uses
  store i64 0, ptr %i.if, align 16, !tbaa !22
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.ic, i8 0, i64 28, i1 false)
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !45
  %.not115 = icmp eq i32 %i.ih, 0
  br i1 %.not115, label %bb.at, label %bb.al

bb.al:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit207
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !19 ; 2 uses
  %.not.i192 = icmp eq ptr %i.ik, null
  br i1 %.not.i192, label %.thread335, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.il = atomicrmw add ptr %i.ik, i32 1 acq_rel, align 4 ; 0 uses
  %.pre262 = load ptr, ptr %i.hz, align 8, !tbaa !19 ; 2 uses
  %.not.i.i193 = icmp eq ptr %.pre262, null
  br i1 %.not.i.i193, label %.thread335, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.im = atomicrmw add ptr %.pre262, i32 -1 acq_rel, align 4
  %i.in = icmp eq i32 %i.im, 1
  br i1 %i.in, label %bb.ao, label %.thread335

bb.ao:                                            ; preds = %bb.an
  %i.io = load ptr, ptr %i.ic, align 16, !tbaa !20 ; 3 uses
  %.not3.i.i195 = icmp eq ptr %i.io, null
  %i.ip = load ptr, ptr %6, align 16, !tbaa !21   ; 3 uses
  br i1 %.not3.i.i195, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.iq = load ptr, ptr %i.io, align 8, !tbaa !13
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.is = load ptr, ptr %i.ir, align 8
  invoke void %i.is(ptr noundef nonnull align 8 dereferenceable(8) %i.io, ptr noundef %i.ip)
          to label %.thread335 unwind label %bb.as, !inline_history !1

bb.aq:                                            ; preds = %bb.ao
  %.not.i18.i196 = icmp eq ptr %i.ip, null
  br i1 %.not.i18.i196, label %.thread335, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @free(ptr noundef nonnull %i.ip) #13
  br label %.thread335

.thread335:                                       ; preds = %bb.al, %bb.an, %bb.am, %bb.ap, %bb.ar, %bb.aq
  %i.it = load <2 x ptr>, ptr %i.ii, align 8, !tbaa !54
  store <2 x ptr> %i.it, ptr %6, align 16, !tbaa !54
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !55
  store i64 %i.iv, ptr %i.ia, align 16, !tbaa !55
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !56
  store i32 %i.ix, ptr %i.ib, align 8, !tbaa !56
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !20
  store ptr %i.iz, ptr %i.ic, align 16, !tbaa !20
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.jb = load <4 x i32>, ptr %i.ja, align 8, !tbaa !57
  store <4 x i32> %i.jb, ptr %i.id, align 8, !tbaa !57
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !58
  store i32 %i.jd, ptr %i.ie, align 8, !tbaa !58
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !22
  store i64 %i.jf, ptr %i.if, align 16, !tbaa !22
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !49
  br label %_ZNK4ncnn3Mat5emptyEv.exit216.thread

bb.as:                                            ; preds = %bb.ap, %bb.bb, %bb.bk, %bb.bt
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.at:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit207
  %i.jj = load i32, ptr %i.k, align 8, !tbaa !43
  %.not116 = icmp eq i32 %i.jj, 0
  %i.jk = load i32, ptr %i.m, align 4, !tbaa !44
  %.not119 = icmp eq i32 %i.jk, 0                 ; 2 uses
  br i1 %.not116, label %bb.be, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.pre265 = load ptr, ptr %1, align 8, !tbaa !61 ; 13 uses
  br i1 %.not119, label %.thread224, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !71
  %i.jn = ptrtoint ptr %i.jm to i64
  %i.jo = ptrtoint ptr %.pre265 to i64
  %i.jp = sub i64 %i.jn, %i.jo
  %i.jq = icmp eq i64 %i.jp, 72
  br i1 %i.jq, label %bb.aw, label %.thread224

bb.aw:                                            ; preds = %bb.av
  %i.jr = icmp eq ptr %6, %.pre265
  br i1 %i.jr, label %_ZNK4ncnn3Mat5emptyEv.exit216.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.js = getelementptr inbounds nuw i8, ptr %.pre265, i64 8
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !19 ; 2 uses
  %.not.i184 = icmp eq ptr %i.jt, null
  br i1 %.not.i184, label %_ZN4ncnn3Mat7releaseEv.exit.i186, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ju = atomicrmw add ptr %i.jt, i32 1 acq_rel, align 4 ; 0 uses
  %.pre263 = load ptr, ptr %i.hz, align 8, !tbaa !19 ; 2 uses
  %.not.i.i185 = icmp eq ptr %.pre263, null
  br i1 %.not.i.i185, label %_ZN4ncnn3Mat7releaseEv.exit.i186, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jv = atomicrmw add ptr %.pre263, i32 -1 acq_rel, align 4
  %i.jw = icmp eq i32 %i.jv, 1
  br i1 %i.jw, label %bb.ba, label %_ZN4ncnn3Mat7releaseEv.exit.i186

bb.ba:                                            ; preds = %bb.az
  %i.jx = load ptr, ptr %i.ic, align 16, !tbaa !20 ; 3 uses
  %.not3.i.i187 = icmp eq ptr %i.jx, null
  %i.jy = load ptr, ptr %6, align 16, !tbaa !21   ; 3 uses
  br i1 %.not3.i.i187, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jz = load ptr, ptr %i.jx, align 8, !tbaa !13
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.kb = load ptr, ptr %i.ka, align 8
  invoke void %i.kb(ptr noundef nonnull align 8 dereferenceable(8) %i.jx, ptr noundef %i.jy)
          to label %_ZN4ncnn3Mat7releaseEv.exit.i186 unwind label %bb.as, !inline_history !1

bb.bc:                                            ; preds = %bb.ba
  %.not.i18.i188 = icmp eq ptr %i.jy, null
  br i1 %.not.i18.i188, label %_ZN4ncnn3Mat7releaseEv.exit.i186, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @free(ptr noundef nonnull %i.jy) #13
  br label %_ZN4ncnn3Mat7releaseEv.exit.i186

_ZN4ncnn3Mat7releaseEv.exit.i186:                 ; preds = %bb.ax, %bb.bc, %bb.bd, %bb.bb, %bb.az, %bb.ay
  store i64 0, ptr %i.if, align 16, !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.id, i8 0, i64 20, i1 false)
  %i.kc = load <2 x ptr>, ptr %.pre265, align 8, !tbaa !54
  %i.kd = load ptr, ptr %.pre265, align 8, !tbaa !21
  store <2 x ptr> %i.kc, ptr %6, align 16, !tbaa !54
  %i.ke = getelementptr inbounds nuw i8, ptr %.pre265, i64 16
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !55
  store i64 %i.kf, ptr %i.ia, align 16, !tbaa !55
  %i.kg = getelementptr inbounds nuw i8, ptr %.pre265, i64 24
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !56
  store i32 %i.kh, ptr %i.ib, align 8, !tbaa !56
  %i.ki = getelementptr inbounds nuw i8, ptr %.pre265, i64 32
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !20
  store ptr %i.kj, ptr %i.ic, align 16, !tbaa !20
  %i.kk = getelementptr inbounds nuw i8, ptr %.pre265, i64 40 ; 2 uses
  %i.kl = load <4 x i32>, ptr %i.kk, align 8, !tbaa !57 ; 3 uses
  %i.km = load i32, ptr %i.kk, align 8, !tbaa !62
  store <4 x i32> %i.kl, ptr %i.id, align 8, !tbaa !57
  %i.kn = getelementptr inbounds nuw i8, ptr %.pre265, i64 56
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !58 ; 2 uses
  store i32 %i.ko, ptr %i.ie, align 8, !tbaa !58
  %i.kp = getelementptr inbounds nuw i8, ptr %.pre265, i64 64
  %i.kq = extractelement <4 x i32> %i.kl, i64 1
  %i.kr = extractelement <4 x i32> %i.kl, i64 2
  br label %_ZN4ncnn3MataSERKS0_.exit191

bb.be:                                            ; preds = %bb.at
  br i1 %.not119, label %._crit_edge267, label %..thread224_crit_edge

._crit_edge267:                                   ; preds = %bb.be
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre268 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !71
  %.pre269 = load ptr, ptr %1, align 8, !tbaa !61 ; 2 uses
  %.pre271 = ptrtoint ptr %.pre268 to i64
  %.pre272 = ptrtoint ptr %.pre269 to i64
  br label %bb.bn

..thread224_crit_edge:                            ; preds = %bb.be
  %.pre264 = load ptr, ptr %1, align 8, !tbaa !61
  br label %.thread224

.thread224:                                       ; preds = %..thread224_crit_edge, %bb.au, %bb.av
  %i.ks = phi ptr [ %.pre264, %..thread224_crit_edge ], [ %.pre265, %bb.au ], [ %.pre265, %bb.av ] ; 10 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !71
  %i.kv = ptrtoint ptr %i.ku to i64               ; 2 uses
  %i.kw = ptrtoint ptr %i.ks to i64               ; 2 uses
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = icmp eq i64 %i.kx, 144
  br i1 %i.ky, label %bb.bf, label %bb.bn

bb.bf:                                            ; preds = %.thread224
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ks, i64 72 ; 3 uses
  %i.la = icmp eq ptr %6, %i.kz
  br i1 %i.la, label %_ZNK4ncnn3Mat5emptyEv.exit216.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ks, i64 80
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !19 ; 2 uses
  %.not.i176 = icmp eq ptr %i.lc, null
  br i1 %.not.i176, label %_ZN4ncnn3Mat7releaseEv.exit.i178, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ld = atomicrmw add ptr %i.lc, i32 1 acq_rel, align 4 ; 0 uses
  %.pre266 = load ptr, ptr %i.hz, align 8, !tbaa !19 ; 2 uses
  %.not.i.i177 = icmp eq ptr %.pre266, null
  br i1 %.not.i.i177, label %_ZN4ncnn3Mat7releaseEv.exit.i178, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.le = atomicrmw add ptr %.pre266, i32 -1 acq_rel, align 4
  %i.lf = icmp eq i32 %i.le, 1
  br i1 %i.lf, label %bb.bj, label %_ZN4ncnn3Mat7releaseEv.exit.i178

bb.bj:                                            ; preds = %bb.bi
  %i.lg = load ptr, ptr %i.ic, align 16, !tbaa !20 ; 3 uses
  %.not3.i.i179 = icmp eq ptr %i.lg, null
  %i.lh = load ptr, ptr %6, align 16, !tbaa !21   ; 3 uses
  br i1 %.not3.i.i179, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.li = load ptr, ptr %i.lg, align 8, !tbaa !13
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  %i.lk = load ptr, ptr %i.lj, align 8
  invoke void %i.lk(ptr noundef nonnull align 8 dereferenceable(8) %i.lg, ptr noundef %i.lh)
          to label %_ZN4ncnn3Mat7releaseEv.exit.i178 unwind label %bb.as, !inline_history !1

bb.bl:                                            ; preds = %bb.bj
  %.not.i18.i180 = icmp eq ptr %i.lh, null
  br i1 %.not.i18.i180, label %_ZN4ncnn3Mat7releaseEv.exit.i178, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @free(ptr noundef nonnull %i.lh) #13
  br label %_ZN4ncnn3Mat7releaseEv.exit.i178

_ZN4ncnn3Mat7releaseEv.exit.i178:                 ; preds = %bb.bg, %bb.bl, %bb.bm, %bb.bk, %bb.bi, %bb.bh
  %i.ll = load <2 x ptr>, ptr %i.kz, align 8, !tbaa !54
  %i.lm = load ptr, ptr %i.kz, align 8, !tbaa !21
  store <2 x ptr> %i.ll, ptr %6, align 16, !tbaa !54
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ks, i64 88
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !55
  store i64 %i.lo, ptr %i.ia, align 16, !tbaa !55
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ks, i64 96
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !56
  store i32 %i.lq, ptr %i.ib, align 8, !tbaa !56
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ks, i64 104
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !20
  store ptr %i.ls, ptr %i.ic, align 16, !tbaa !20
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ks, i64 112 ; 2 uses
  %i.lu = load <4 x i32>, ptr %i.lt, align 8, !tbaa !57 ; 3 uses
  %i.lv = load i32, ptr %i.lt, align 8, !tbaa !62
  store <4 x i32> %i.lu, ptr %i.id, align 8, !tbaa !57
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ks, i64 128
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !58 ; 2 uses
  store i32 %i.lx, ptr %i.ie, align 8, !tbaa !58
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ks, i64 136
  %i.lz = extractelement <4 x i32> %i.lu, i64 1
  %i.ma = extractelement <4 x i32> %i.lu, i64 2
  br label %_ZN4ncnn3MataSERKS0_.exit191

bb.bn:                                            ; preds = %._crit_edge267, %.thread224
  %.pre-phi273 = phi i64 [ %.pre272, %._crit_edge267 ], [ %i.kw, %.thread224 ]
  %.pre-phi = phi i64 [ %.pre271, %._crit_edge267 ], [ %i.kv, %.thread224 ]
  %i.mb = phi ptr [ %.pre269, %._crit_edge267 ], [ %i.ks, %.thread224 ] ; 8 uses
  %i.mc = sub i64 %.pre-phi, %.pre-phi273
  %i.md = icmp eq i64 %i.mc, 216
  br i1 %i.md, label %bb.bo, label %_ZNK4ncnn3Mat5emptyEv.exit216.thread

bb.bo:                                            ; preds = %bb.bn
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 144 ; 3 uses
  %i.mf = icmp eq ptr %6, %i.me
  br i1 %i.mf, label %_ZNK4ncnn3Mat5emptyEv.exit216.thread, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mb, i64 152
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !19 ; 2 uses
  %.not.i174 = icmp eq ptr %i.mh, null
  br i1 %.not.i174, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mi = atomicrmw add ptr %i.mh, i32 1 acq_rel, align 4 ; 0 uses
  %.pre270 = load ptr, ptr %i.hz, align 8, !tbaa !19 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre270, null
  br i1 %.not.i.i, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mj = atomicrmw add ptr %.pre270, i32 -1 acq_rel, align 4
  %i.mk = icmp eq i32 %i.mj, 1
  br i1 %i.mk, label %bb.bs, label %_ZN4ncnn3Mat7releaseEv.exit.i

bb.bs:                                            ; preds = %bb.br
  %i.ml = load ptr, ptr %i.ic, align 16, !tbaa !20 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.ml, null
  %i.mm = load ptr, ptr %6, align 16, !tbaa !21   ; 3 uses
  br i1 %.not3.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.mn = load ptr, ptr %i.ml, align 8, !tbaa !13
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 24
  %i.mp = load ptr, ptr %i.mo, align 8
  invoke void %i.mp(ptr noundef nonnull align 8 dereferenceable(8) %i.ml, ptr noundef %i.mm)
          to label %_ZN4ncnn3Mat7releaseEv.exit.i unwind label %bb.as, !inline_history !1

bb.bu:                                            ; preds = %bb.bs
  %.not.i18.i = icmp eq ptr %i.mm, null
  br i1 %.not.i18.i, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @free(ptr noundef nonnull %i.mm) #13
  br label %_ZN4ncnn3Mat7releaseEv.exit.i

_ZN4ncnn3Mat7releaseEv.exit.i:                    ; preds = %bb.bp, %bb.bu, %bb.bv, %bb.bt, %bb.br, %bb.bq
  %i.mq = load <2 x ptr>, ptr %i.me, align 8, !tbaa !54
  %i.mr = load ptr, ptr %i.me, align 8, !tbaa !21
  store <2 x ptr> %i.mq, ptr %6, align 16, !tbaa !54
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mb, i64 160
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !55
  store i64 %i.mt, ptr %i.ia, align 16, !tbaa !55
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mb, i64 168
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !56
  store i32 %i.mv, ptr %i.ib, align 8, !tbaa !56
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mb, i64 176
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !20
  store ptr %i.mx, ptr %i.ic, align 16, !tbaa !20
  %i.my = getelementptr inbounds nuw i8, ptr %i.mb, i64 184 ; 2 uses
  %i.mz = load <4 x i32>, ptr %i.my, align 8, !tbaa !57 ; 3 uses
  %i.na = load i32, ptr %i.my, align 8, !tbaa !62
  store <4 x i32> %i.mz, ptr %i.id, align 8, !tbaa !57
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mb, i64 200
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !58 ; 2 uses
  store i32 %i.nc, ptr %i.ie, align 8, !tbaa !58
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mb, i64 208
  %i.ne = extractelement <4 x i32> %i.mz, i64 1
  %i.nf = extractelement <4 x i32> %i.mz, i64 2
  br label %_ZN4ncnn3MataSERKS0_.exit191

_ZN4ncnn3MataSERKS0_.exit191:                     ; preds = %_ZN4ncnn3Mat7releaseEv.exit.i, %_ZN4ncnn3Mat7releaseEv.exit.i178, %_ZN4ncnn3Mat7releaseEv.exit.i186
  %.sink.in = phi ptr [ %i.nd, %_ZN4ncnn3Mat7releaseEv.exit.i ], [ %i.ly, %_ZN4ncnn3Mat7releaseEv.exit.i178 ], [ %i.kp, %_ZN4ncnn3Mat7releaseEv.exit.i186 ]
  %i.ng = phi i32 [ %i.nf, %_ZN4ncnn3Mat7releaseEv.exit.i ], [ %i.ma, %_ZN4ncnn3Mat7releaseEv.exit.i178 ], [ %i.kr, %_ZN4ncnn3Mat7releaseEv.exit.i186 ] ; 2 uses
  %i.nh = phi i32 [ %i.ne, %_ZN4ncnn3Mat7releaseEv.exit.i ], [ %i.lz, %_ZN4ncnn3Mat7releaseEv.exit.i178 ], [ %i.kq, %_ZN4ncnn3Mat7releaseEv.exit.i186 ] ; 3 uses
  %i.ni = phi i32 [ %i.na, %_ZN4ncnn3Mat7releaseEv.exit.i ], [ %i.lv, %_ZN4ncnn3Mat7releaseEv.exit.i178 ], [ %i.km, %_ZN4ncnn3Mat7releaseEv.exit.i186 ] ; 2 uses
  %i.nj = phi i32 [ %i.nc, %_ZN4ncnn3Mat7releaseEv.exit.i ], [ %i.lx, %_ZN4ncnn3Mat7releaseEv.exit.i178 ], [ %i.ko, %_ZN4ncnn3Mat7releaseEv.exit.i186 ]
  %i.nk = phi ptr [ %i.mr, %_ZN4ncnn3Mat7releaseEv.exit.i ], [ %i.lm, %_ZN4ncnn3Mat7releaseEv.exit.i178 ], [ %i.kd, %_ZN4ncnn3Mat7releaseEv.exit.i186 ]
end_hunk_1
