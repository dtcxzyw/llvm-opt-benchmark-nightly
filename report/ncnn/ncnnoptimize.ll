Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/ncnnoptimize?download=true
inline.NumInlined: 1639
inline.NumDeleted: 315
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN11NetOptimize28fuse_innerproduct_activationEv:bb.a
  %.pre233 = load ptr, ptr %i.j, align 8, !tbaa !77 ; 3 uses
  br i1 %i.hd, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143.thread
  %.not.i = icmp eq ptr %.pre233, null
  br i1 %.not.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.he = atomicrmw add ptr %.pre233, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ai, i64 240
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !77 ; 2 uses
  %.not.i81 = icmp eq ptr %i.hg, null
  br i1 %.not.i81, label %.noexc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hh = atomicrmw add ptr %i.hg, i32 -1 acq_rel, align 4
  %i.hi = icmp eq i32 %i.hh, 1
  br i1 %i.hi, label %bb.ba, label %.noexc

bb.ba:                                            ; preds = %bb.az
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ai, i64 264
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !78 ; 3 uses
  %.not3.i82 = icmp eq ptr %i.hk, null
  %i.hl = load ptr, ptr %i.hc, align 8, !tbaa !79 ; 3 uses
  br i1 %.not3.i82, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hm = load ptr, ptr %i.hk, align 8, !tbaa !28
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8
  invoke void %i.ho(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef %i.hl)
          to label %.noexc unwind label %bb.bk, !inline_history !1

bb.bc:                                            ; preds = %bb.ba
  %.not.i120 = icmp eq ptr %i.hl, null
  br i1 %.not.i120, label %.noexc, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @free(ptr noundef nonnull %i.hl) #24
  br label %.noexc

.noexc:                                           ; preds = %bb.az, %bb.ay, %bb.bb, %bb.bc, %bb.bd
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ai, i64 248
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ai, i64 256
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ai, i64 272
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ai, i64 288
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ai, i64 296
  %i.hu = load ptr, ptr %i.j, align 8, !tbaa !77
  %i.hv = load <2 x ptr>, ptr %3, align 16, !tbaa !92
  store <2 x ptr> %i.hv, ptr %i.hc, align 8, !tbaa !92
  %i.hw = load i64, ptr %i.k, align 16, !tbaa !93
  store i64 %i.hw, ptr %i.hp, align 8, !tbaa !93
  %i.hx = load i32, ptr %i.l, align 8, !tbaa !94
  store i32 %i.hx, ptr %i.hq, align 8, !tbaa !94
  %i.hy = load ptr, ptr %i.m, align 16, !tbaa !78
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ai, i64 264
  store ptr %i.hy, ptr %i.hz, align 8, !tbaa !78
  %i.ia = load <4 x i32>, ptr %i.n, align 8, !tbaa !81
  store <4 x i32> %i.ia, ptr %i.hr, align 8, !tbaa !81
  %i.ib = load i32, ptr %i.o, align 8, !tbaa !88
  store i32 %i.ib, ptr %i.hs, align 8, !tbaa !88
  %i.ic = load i64, ptr %i.p, align 16, !tbaa !76
  store i64 %i.ic, ptr %i.ht, align 8, !tbaa !76
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %.noexc, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143.thread
  %i.id = phi ptr [ %i.hu, %.noexc ], [ %.pre233, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143.thread ] ; 2 uses
  %.not.i101 = icmp eq ptr %i.id, null
  br i1 %.not.i101, label %_ZN4ncnn3MatD2Ev.exit64, label %bb.be

bb.be:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit
  %i.ie = atomicrmw add ptr %i.id, i32 -1 acq_rel, align 4
  %i.if = icmp eq i32 %i.ie, 1
  br i1 %i.if, label %bb.bf, label %_ZN4ncnn3MatD2Ev.exit64

bb.bf:                                            ; preds = %bb.be
  %i.ig = load ptr, ptr %i.m, align 16, !tbaa !78 ; 3 uses
  %.not3.i102 = icmp eq ptr %i.ig, null
  %i.ih = load ptr, ptr %3, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i102, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ii = load ptr, ptr %i.ig, align 8, !tbaa !28
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8
  invoke void %i.ik(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, ptr noundef %i.ih)
          to label %_ZN4ncnn3MatD2Ev.exit64 unwind label %bb.bj, !inline_history !1

bb.bh:                                            ; preds = %bb.bf
  %.not.i110 = icmp eq ptr %i.ih, null
  br i1 %.not.i110, label %_ZN4ncnn3MatD2Ev.exit64, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @free(ptr noundef nonnull %i.ih) #24
  br label %_ZN4ncnn3MatD2Ev.exit64

bb.bj:                                            ; preds = %bb.bg
  %i.il = landingpad { ptr, i32 }
          catch ptr null
  %i.im = extractvalue { ptr, i32 } %i.il, 0
  call void @__clang_call_terminate(ptr %i.im) #29
  unreachable

_ZN4ncnn3MatD2Ev.exit64:                          ; preds = %bb.be, %_ZN4ncnn3MataSERKS0_.exit, %bb.bg, %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.in = getelementptr inbounds nuw i8, ptr %i.by, i64 208
  %i.io = load float, ptr %i.in, align 8, !tbaa !167
  %i.ip = load ptr, ptr %i.hc, align 8, !tbaa !79 ; 2 uses
  store float %i.io, ptr %i.ip, align 4, !tbaa !90
  %i.iq = getelementptr inbounds nuw i8, ptr %i.by, i64 212
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !168
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  store float %i.ir, ptr %i.is, align 4, !tbaa !90
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143.thread154

bb.bk:                                            ; preds = %bb.bb
  %i.it = landingpad { ptr, i32 }
          cleanup
  %i.iu = load ptr, ptr %i.j, align 8, !tbaa !77  ; 2 uses
  %.not.i105 = icmp eq ptr %i.iu, null
  br i1 %.not.i105, label %_ZN4ncnn3MatD2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.iv = atomicrmw add ptr %i.iu, i32 -1 acq_rel, align 4
  %i.iw = icmp eq i32 %i.iv, 1
  br i1 %i.iw, label %bb.bm, label %_ZN4ncnn3MatD2Ev.exit

bb.bm:                                            ; preds = %bb.bl
  %i.ix = load ptr, ptr %i.m, align 16, !tbaa !78 ; 3 uses
  %.not3.i106 = icmp eq ptr %i.ix, null
  %i.iy = load ptr, ptr %3, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i106, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iz = load ptr, ptr %i.ix, align 8, !tbaa !28
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8
  invoke void %i.jb(ptr noundef nonnull align 8 dereferenceable(8) %i.ix, ptr noundef %i.iy)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.bq, !inline_history !1

bb.bo:                                            ; preds = %bb.bm
  %.not.i109 = icmp eq ptr %i.iy, null
  br i1 %.not.i109, label %_ZN4ncnn3MatD2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @free(ptr noundef nonnull %i.iy) #24
  br label %_ZN4ncnn3MatD2Ev.exit

bb.bq:                                            ; preds = %bb.bn
  %i.jc = landingpad { ptr, i32 }
          catch ptr null
  %i.jd = extractvalue { ptr, i32 } %i.jc, 0
  call void @__clang_call_terminate(ptr %i.jd) #29
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.bl, %bb.bk, %bb.bn, %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.br

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143.thread154: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit141, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit139, %bb.d, %bb.e, %_ZN4ncnn3MatD2Ev.exit68, %_ZN4ncnn3MatD2Ev.exit66, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit141.thread, %_ZN4ncnn3MatD2Ev.exit64, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit139.thread
  %i.je = getelementptr inbounds nuw i8, ptr %i.by, i64 136
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !80
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !81 ; 2 uses
  %i.jh = load ptr, ptr %i.ax, align 8, !tbaa !80
  store i32 %i.jg, ptr %i.jh, align 4, !tbaa !81
  %i.ji = trunc i64 %.061224 to i32
  %i.jj = load ptr, ptr %i.ae, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.jk = sext i32 %i.jg to i64
  %i.jl = load ptr, ptr %i.jj, align 8, !tbaa !51
  %i.jm = getelementptr inbounds nuw [112 x i8], ptr %i.jl, i64 %i.jk
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  store i32 %i.ji, ptr %i.jn, align 8, !tbaa !118
  %i.jo = load i64, ptr %i.cg, align 8, !tbaa !58
  %i.jp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i64 noundef 0, i64 noundef %i.jo, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135.thread, %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143.thread154, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.jq = add nuw i64 %.061224, 1                 ; 2 uses
  %exitcond229.not = icmp eq i64 %i.jq, %i.i
  br i1 %exitcond229.not, label %._crit_edge227, label %bb.b, !llvm.loop !1006

bb.br:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit65, %_ZN4ncnn3MatD2Ev.exit67
  %.pn = phi { ptr, i32 } [ %i.ee, %_ZN4ncnn3MatD2Ev.exit67 ], [ %i.gl, %_ZN4ncnn3MatD2Ev.exit65 ], [ %i.it, %_ZN4ncnn3MatD2Ev.exit ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize24fuse_memorydata_binaryopEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 12 uses
  %.not232 = icmp eq ptr %i.d, %i.e
  br i1 %.not232, label %._crit_edge231, label %.lr.ph211

.lr.ph211:                                        ; preds = %bb.a, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.0209 = phi i64 [ %i.cq, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 0, %bb.a ] ; 3 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46   ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0209
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53   ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !58
  %i.q = icmp eq i64 %i.p, 10
  br i1 %i.q, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph211
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !57   ; 2 uses
  %i.s = load i64, ptr %i.r, align 1
  %i.t = xor i64 %i.s, 7008860452498007373
  %i.u = getelementptr i8, ptr %i.r, i64 8
  %i.v = load i16, ptr %i.u, align 1
  %i.w = zext i16 %i.v to i64
  %i.x = xor i64 %i.w, 24948
  %i.y = or i64 %i.t, %i.x
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not196 = icmp eq i32 %i.aa, 0
  br i1 %.not196, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread180, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread180: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !80
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !81 ; 3 uses
  %.0143203 = add nuw i64 %.0209, 1               ; 3 uses
  %i.ae = icmp ult i64 %.0143203, %i.i
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread180, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159.thread
  %.0143204 = phi i64 [ %.0143, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159.thread ], [ %.0143203, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread180 ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0143204
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !53 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !58
  %i.aj = icmp eq i64 %i.ai, 8
  br i1 %i.aj, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159: ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !57
  %i.am = load i64, ptr %i.al, align 1
  %i.an = icmp ne i64 %i.am, 8092820587575929154
  %i.ao = zext i1 %i.an to i32
  %.not197 = icmp eq i32 %i.ao, 0
  br i1 %.not197, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159.thread181, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159.thread181: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !91
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !80 ; 3 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %.not154 = icmp eq i64 %i.av, 8
  br i1 %.not154, label %bb.b, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159.thread

bb.b:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159.thread181
  %i.aw = load i32, ptr %i.as, align 4, !tbaa !81
  %i.ax = icmp eq i32 %i.aw, %i.ad
  br i1 %i.ax, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !81
  %i.ba = icmp eq i32 %i.az, %i.ad
  br i1 %i.ba, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159.thread: ; preds = %.lr.ph, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159.thread181, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159
  %.0143 = add nuw i64 %.0143204, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %.0143, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !1007

._crit_edge:                                      ; preds = %bb.c, %bb.b, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread180
  %.0143.lcssa = phi i64 [ %.0143203, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread180 ], [ %.0143204, %bb.b ], [ %.0143204, %bb.c ] ; 2 uses
  %i.bb = icmp eq i64 %.0143.lcssa, %i.i
  br i1 %i.bb, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0143.lcssa
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !53 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 208
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !176
  %.not155 = icmp eq i32 %i.bf, 1
  br i1 %.not155, label %bb.e, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.m, i64 212
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !177
  %.not156 = icmp eq i32 %i.bh, 0
  br i1 %.not156, label %bb.f, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 220
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !178
  %.not157 = icmp eq i32 %i.bj, 0
  br i1 %.not157, label %bb.g, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 112 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !80
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !81
  %i.bn = icmp eq i32 %i.bm, %i.ad
  br i1 %i.bn, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 208 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !134
  switch i32 %i.bp, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread [
    i32 5, label %.thread
    i32 4, label %.thread
    i32 2, label %.thread
    i32 0, label %.thread
    i32 1, label %.thread.sink.split
    i32 3, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.h, %bb.i
  %.sink = phi i32 [ 8, %bb.i ], [ 7, %bb.h ]
  store i32 %.sink, ptr %i.bo, align 8, !tbaa !134
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.h, %bb.h, %bb.h, %bb.h, %bb.g
  %.2142 = phi i64 [ 1, %bb.g ], [ 0, %bb.h ], [ 0, %bb.h ], [ 0, %bb.h ], [ 0, %bb.h ], [ 0, %.thread.sink.split ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 232
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !79
  %i.bs = load float, ptr %i.br, align 4, !tbaa !90
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 212
  store i32 1, ptr %i.bt, align 4, !tbaa !135
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 216
  store float %i.bs, ptr %i.bu, align 8, !tbaa !136
  %i.bv = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !57
  %i.by = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !57
  %i.ca = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bv, ptr noundef nonnull @.str.189, ptr noundef %i.bx, ptr noundef %i.bz) #26 ; 0 uses
  %i.cb = load ptr, ptr %i.bk, align 8, !tbaa !204
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.2142 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bd, i64 120 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !204 ; 5 uses
  %.not.i.i = icmp eq ptr %i.cd, %i.cf
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit, label %bb.j

bb.j:                                             ; preds = %.thread
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch                    ; 3 uses
  %i.cj = icmp sgt i64 %i.ci, 4
  br i1 %i.cj, label %bb.k, label %bb.l, !prof !205

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cc, ptr nonnull align 4 %i.cd, i64 %i.ci, i1 false)
  %.pre.i.i = load ptr, ptr %i.ce, align 8, !tbaa !91
  br label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit

bb.l:                                             ; preds = %bb.j
  %i.ck = icmp eq i64 %i.ci, 4
  br i1 %i.ck, label %bb.m, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit

bb.m:                                             ; preds = %bb.l
  %i.cl = load i32, ptr %i.cd, align 4, !tbaa !81
  store i32 %i.cl, ptr %i.cc, align 4, !tbaa !81
  br label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit

_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit: ; preds = %.thread, %bb.k, %bb.l, %bb.m
  %i.cm = phi ptr [ %i.cf, %bb.m ], [ %i.cf, %bb.l ], [ %.pre.i.i, %bb.k ], [ %i.cf, %.thread ]
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -4
  store ptr %i.cn, ptr %i.ce, align 8, !tbaa !91
  %i.co = load i64, ptr %i.o, align 8, !tbaa !58
  %i.cp = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef 0, i64 noundef %i.co, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159.thread, %.lr.ph211, %bb.h, %._crit_edge, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit, %bb.d, %bb.e, %bb.f, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cq = add nuw i64 %.0209, 1                   ; 2 uses
  %exitcond237.not = icmp eq i64 %i.cq, %i.i
  br i1 %exitcond237.not, label %.lr.ph230, label %.lr.ph211, !llvm.loop !1008

._crit_edge231:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread, %bb.a
  ret i32 0

.lr.ph230:                                        ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread
  %.0134229 = phi i64 [ %i.im, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread ], [ 0, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 13 uses
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !46 ; 6 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.0134229
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !53 ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !58
  %i.cy = icmp eq i64 %i.cx, 10
  br i1 %i.cy, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161: ; preds = %.lr.ph230
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !57 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 1
  %i.db = xor i64 %i.da, 7008860452498007373
  %i.dc = getelementptr i8, ptr %i.cz, i64 8
  %i.dd = load i16, ptr %i.dc, align 1
  %i.de = zext i16 %i.dd to i64
  %i.df = xor i64 %i.de, 24948
  %i.dg = or i64 %i.db, %i.df
  %i.dh = icmp ne i64 %i.dg, 0
  %i.di = zext i1 %i.dh to i32
  %.not193 = icmp eq i32 %i.di, 0
  br i1 %.not193, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread184, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread184: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cu, i64 136
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !80
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !81
  %.0133212 = add nuw i64 %.0134229, 1            ; 3 uses
  %i.dm = icmp ult i64 %.0133212, %i.i
  br i1 %i.dm, label %.lr.ph215, label %._crit_edge216

.lr.ph215:                                        ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread184, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread
  %.0133.in213 = phi i64 [ %.0133, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread ], [ %.0133212, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread184 ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.0133.in213
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !53 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !58
  %i.dr = icmp eq i64 %i.dq, 5
  br i1 %i.dr, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163: ; preds = %.lr.ph215
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !57 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 1
  %i.dv = xor i32 %i.du, 1768714323
  %i.dw = getelementptr i8, ptr %i.dt, i64 4
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = zext i8 %i.dx to i32
  %i.dz = xor i32 %i.dy, 116
  %i.ea = or i32 %i.dv, %i.dz
  %i.eb = icmp ne i32 %i.ea, 0
  %i.ec = zext i1 %i.eb to i32
  %.not194 = icmp eq i32 %i.ec, 0
  br i1 %.not194, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread185, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread185: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163
  %i.ed = getelementptr inbounds nuw i8, ptr %i.do, i64 112
  %i.ee = getelementptr inbounds nuw i8, ptr %i.do, i64 120
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !91
  %i.eg = load ptr, ptr %i.ed, align 8, !tbaa !80 ; 2 uses
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %.not = icmp eq i64 %i.ej, 4
  br i1 %.not, label %bb.n, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread

bb.n:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread185
  %i.ek = load i32, ptr %i.eg, align 4, !tbaa !81
  %i.el = icmp eq i32 %i.ek, %i.dl
  br i1 %i.el, label %._crit_edge216.loopexit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread: ; preds = %.lr.ph215, %bb.n, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread185, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163
  %.0133 = add nuw i64 %.0133.in213, 1            ; 2 uses
  %exitcond238.not = icmp eq i64 %.0133, %i.i
  br i1 %exitcond238.not, label %._crit_edge216.loopexit, label %.lr.ph215, !llvm.loop !1009

._crit_edge216.loopexit:                          ; preds = %bb.n, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread
  %.0133.lcssa.ph = phi i64 [ %i.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread ], [ %.0133.in213, %bb.n ] ; 2 uses
  %.0133.in.lcssa.ph = add i64 %.0133.lcssa.ph, -1
  br label %._crit_edge216

._crit_edge216:                                   ; preds = %._crit_edge216.loopexit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread184
  %.0133.in.lcssa = phi i64 [ %.0134229, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread184 ], [ %.0133.in.lcssa.ph, %._crit_edge216.loopexit ]
  %.0133.lcssa = phi i64 [ %.0133212, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread184 ], [ %.0133.lcssa.ph, %._crit_edge216.loopexit ] ; 3 uses
  %i.em = icmp eq i64 %.0133.lcssa, %i.i
  br i1 %i.em, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread, label %bb.o

bb.o:                                             ; preds = %._crit_edge216
  %i.en = add i64 %.0133.in.lcssa, 2              ; 3 uses
  %i.eo = icmp ult i64 %i.en, %i.i
  br i1 %i.eo, label %.lr.ph227, label %.thread187

.lr.ph227:                                        ; preds = %bb.o
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.0133.lcssa
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph227, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread
  %.0129224 = phi i64 [ %i.en, %.lr.ph227 ], [ %i.fz, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread ] ; 4 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.0129224
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !53 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  %i.et = load i64, ptr %i.es, align 8, !tbaa !58
  %i.eu = icmp eq i64 %i.et, 8
  br i1 %i.eu, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165: ; preds = %bb.p
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !57
  %i.ex = load i64, ptr %i.ew, align 1
  %i.ey = icmp ne i64 %i.ex, 8092820587575929154
  %i.ez = zext i1 %i.ey to i32
  %.not195 = icmp eq i32 %i.ez, 0
  br i1 %.not195, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread186, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread186: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165
  %i.fa = getelementptr inbounds nuw i8, ptr %i.er, i64 112
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 120
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !91
  %i.fd = load ptr, ptr %i.fa, align 8, !tbaa !80 ; 3 uses
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %.not149 = icmp eq i64 %i.fg, 8
  br i1 %.not149, label %.preheader, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread

.preheader:                                       ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread186
  %i.fh = load ptr, ptr %i.ep, align 8, !tbaa !53 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 136
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 144
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !91
  %i.fl = load ptr, ptr %i.fi, align 8, !tbaa !80 ; 2 uses
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = lshr exact i64 %i.fo, 2                 ; 2 uses
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %.lr.ph223, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread

.lr.ph223:                                        ; preds = %.preheader
  %i.fs = load i32, ptr %i.fd, align 4, !tbaa !81
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %wide.trip.count = and i64 %i.fp, 2147483647
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph223, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph223 ], [ %indvars.iv.next, %bb.s ] ; 4 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !81 ; 2 uses
  %i.fw = icmp eq i32 %i.fs, %i.fv
  br i1 %i.fw, label %.thread187, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fx = load i32, ptr %i.ft, align 4, !tbaa !81
  %i.fy = icmp eq i32 %i.fx, %i.fv
  br i1 %i.fy, label %.thread187, label %bb.s

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond240.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond240.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread, label %bb.q, !llvm.loop !1010

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread: ; preds = %bb.s, %.preheader, %bb.p, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread186, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165
  %i.fz = add nuw i64 %.0129224, 1                ; 2 uses
  %exitcond241.not = icmp eq i64 %i.fz, %i.i
  br i1 %exitcond241.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread, label %bb.p, !llvm.loop !1011

.thread187:                                       ; preds = %bb.q, %bb.r, %bb.o
  %.0129202 = phi i64 [ %i.en, %bb.o ], [ %.0129224, %bb.r ], [ %.0129224, %bb.q ] ; 2 uses
  %.3 = phi i64 [ -1, %bb.o ], [ %indvars.iv, %bb.r ], [ %indvars.iv, %bb.q ] ; 2 uses
  %i.ga = icmp eq i64 %.0129202, %i.i
  br i1 %i.ga, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread, label %bb.t

bb.t:                                             ; preds = %.thread187
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.0133.lcssa
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !53 ; 3 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.0129202
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !53 ; 6 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.cu, i64 208
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !176
  %.not151 = icmp eq i32 %i.gg, 1
  br i1 %.not151, label %bb.u, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread

bb.u:                                             ; preds = %bb.t
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cu, i64 212
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !177
  %.not152 = icmp eq i32 %i.gi, 0
  br i1 %.not152, label %bb.v, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread

bb.v:                                             ; preds = %bb.u
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cu, i64 220
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !178
  %.not153 = icmp eq i32 %i.gk, 0
  br i1 %.not153, label %bb.w, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread

bb.w:                                             ; preds = %bb.v
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 112 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !80
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !81
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 136 ; 3 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !80
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %.3
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !81
  %i.gs = icmp eq i32 %i.gn, %i.gr
  br i1 %i.gs, label %bb.x, label %.thread190

bb.x:                                             ; preds = %bb.w
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ge, i64 208 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !134
  switch i32 %i.gu, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread [
    i32 5, label %.thread190
    i32 4, label %.thread190
    i32 2, label %.thread190
    i32 0, label %.thread190
    i32 1, label %.thread190.sink.split
    i32 3, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  br label %.thread190.sink.split

.thread190.sink.split:                            ; preds = %bb.x, %bb.y
  %.sink276 = phi i32 [ 8, %bb.y ], [ 7, %bb.x ]
  store i32 %.sink276, ptr %i.gt, align 8, !tbaa !134
  br label %.thread190

.thread190:                                       ; preds = %.thread190.sink.split, %bb.x, %bb.x, %bb.x, %bb.x, %bb.w
  %.2 = phi i64 [ 1, %bb.w ], [ 0, %bb.x ], [ 0, %bb.x ], [ 0, %bb.x ], [ 0, %bb.x ], [ 0, %.thread190.sink.split ]
  %i.gv = getelementptr inbounds nuw i8, ptr %i.cu, i64 232
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !79
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !90
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ge, i64 212
  store i32 1, ptr %i.gy, align 4, !tbaa !135
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ge, i64 216
  store float %i.gx, ptr %i.gz, align 8, !tbaa !136
  %i.ha = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.hb = getelementptr inbounds nuw i8, ptr %i.cu, i64 80
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !57
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ge, i64 80
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !57
  %i.hf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ha, ptr noundef nonnull @.str.189, ptr noundef %i.hc, ptr noundef %i.he) #26 ; 0 uses
  %i.hg = load ptr, ptr %i.gl, align 8, !tbaa !204
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.2 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 4 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ge, i64 120 ; 3 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !204 ; 5 uses
  %.not.i.i166 = icmp eq ptr %i.hi, %i.hk
  br i1 %.not.i.i166, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit168, label %bb.z

bb.z:                                             ; preds = %.thread190
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = ptrtoint ptr %i.hi to i64
  %i.hn = sub i64 %i.hl, %i.hm                    ; 3 uses
  %i.ho = icmp sgt i64 %i.hn, 4
  br i1 %i.ho, label %bb.aa, label %bb.ab, !prof !205

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.hh, ptr nonnull align 4 %i.hi, i64 %i.hn, i1 false)
  %.pre.i.i167 = load ptr, ptr %i.hj, align 8, !tbaa !91
  br label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit168

bb.ab:                                            ; preds = %bb.z
  %i.hp = icmp eq i64 %i.hn, 4
  br i1 %i.hp, label %bb.ac, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit168

bb.ac:                                            ; preds = %bb.ab
  %i.hq = load i32, ptr %i.hi, align 4, !tbaa !81
  store i32 %i.hq, ptr %i.hh, align 4, !tbaa !81
  br label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit168

_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit168: ; preds = %.thread190, %bb.aa, %bb.ab, %bb.ac
  %i.hr = phi ptr [ %i.hk, %bb.ac ], [ %i.hk, %bb.ab ], [ %.pre.i.i167, %bb.aa ], [ %i.hk, %.thread190 ]
  %i.hs = getelementptr inbounds i8, ptr %i.hr, i64 -4
  store ptr %i.hs, ptr %i.hj, align 8, !tbaa !91
  %i.ht = load ptr, ptr %i.go, align 8, !tbaa !204
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %.3 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 4 ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gc, i64 144 ; 3 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !204 ; 5 uses
  %.not.i.i169 = icmp eq ptr %i.hv, %i.hx
  br i1 %.not.i.i169, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit171, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit168
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = ptrtoint ptr %i.hv to i64
  %i.ia = sub i64 %i.hy, %i.hz                    ; 3 uses
  %i.ib = icmp sgt i64 %i.ia, 4
  br i1 %i.ib, label %bb.ae, label %bb.af, !prof !205

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.hu, ptr nonnull align 4 %i.hv, i64 %i.ia, i1 false)
  %.pre.i.i170 = load ptr, ptr %i.hw, align 8, !tbaa !91
  br label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit171

bb.af:                                            ; preds = %bb.ad
  %i.ic = icmp eq i64 %i.ia, 4
  br i1 %i.ic, label %bb.ag, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit171

bb.ag:                                            ; preds = %bb.af
  %i.id = load i32, ptr %i.hv, align 4, !tbaa !81
  store i32 %i.id, ptr %i.hu, align 4, !tbaa !81
  br label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit171

_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit171: ; preds = %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit168, %bb.ae, %bb.af, %bb.ag
  %i.ie = phi ptr [ %i.hx, %bb.ag ], [ %i.hx, %bb.af ], [ %.pre.i.i170, %bb.ae ], [ %i.hx, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit168 ]
  %i.if = getelementptr inbounds i8, ptr %i.ie, i64 -4 ; 2 uses
  store ptr %i.if, ptr %i.hw, align 8, !tbaa !91
  %i.ig = load ptr, ptr %i.go, align 8, !tbaa !204
  %i.ih = icmp eq ptr %i.ig, %i.if
  br i1 %i.ih, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit171
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
  %i.ij = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.ii, ptr noundef nonnull @.str.8) ; 0 uses
  %i.ik = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull @.str.8) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit171
  %i.il = add i64 %.0134229, -1
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread, %.lr.ph230, %bb.x, %._crit_edge216, %bb.v, %bb.u, %bb.t, %bb.ai, %.thread187, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161
  %.5 = phi i64 [ %.0134229, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161 ], [ %.0134229, %._crit_edge216 ], [ %.0134229, %.thread187 ], [ %.0134229, %bb.t ], [ %.0134229, %bb.v ], [ %.0134229, %bb.u ], [ %i.il, %bb.ai ], [ %.0134229, %bb.x ], [ %.0134229, %.lr.ph230 ], [ %.0134229, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread ]
  %i.im = add i64 %.5, 1                          ; 2 uses
  %i.in = icmp ult i64 %i.im, %i.i
  br i1 %i.in, label %.lr.ph230, label %._crit_edge231, !llvm.loop !1012
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize21fuse_binaryop_eltwiseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.ncnn::ParamDict", align 8   ; 7 uses
  %2 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %.not183 = icmp eq ptr %i.d, %i.e
  br i1 %.not183, label %._crit_edge182, label %.lr.ph181

.lr.ph181:                                        ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br label %bb.b

._crit_edge182:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph181, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.088179 = phi i64 [ 0, %.lr.ph181 ], [ %i.hp, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 10 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46   ; 5 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.088179
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !53   ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load i64, ptr %i.u, align 8, !tbaa !58
  %i.w = icmp eq i64 %i.v, 8
  br i1 %i.w, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !57
  %i.z = load i64, ptr %i.y, align 1
  %i.aa = icmp ne i64 %i.z, 8092820587575929154
  %i.ab = zext i1 %i.aa to i32
  %.not137 = icmp eq i32 %i.ab, 0
  br i1 %.not137, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread134, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread134: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 112 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !91
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !80 ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %.not = icmp eq i64 %i.ai, 8
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread134
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 208
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !134
  %.not90 = icmp eq i32 %i.ak, 0
  br i1 %.not90, label %bb.d, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 212
  %i.am = load i32, ptr %i.al, align 4, !tbaa !135
  %.not91 = icmp eq i32 %i.am, 0
  br i1 %.not91, label %bb.e, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.an = load i32, ptr %i.af, align 4, !tbaa !81
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !81
  %.not184 = icmp eq i64 %.088179, 0
  br i1 %.not184, label %._crit_edge175, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124.thread
  %.087169 = phi i64 [ %i.bn, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124.thread ], [ 0, %bb.e ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.087169
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !53 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = load i64, ptr %i.as, align 8, !tbaa !58
  %i.au = icmp eq i64 %i.at, 8
  br i1 %i.au, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124: ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !57
  %i.ax = load i64, ptr %i.aw, align 1
  %i.ay = icmp ne i64 %i.ax, 8092820587575929154
  %i.az = zext i1 %i.ay to i32
  %.not138 = icmp eq i32 %i.az, 0
  br i1 %.not138, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124.thread135, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124.thread135: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 120
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !91
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !80
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %.not92 = icmp eq i64 %i.bg, 4
  br i1 %.not92, label %bb.f, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124.thread

bb.f:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124.thread135
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 208
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !134
  %.not93 = icmp eq i32 %i.bi, 2
  br i1 %.not93, label %bb.g, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124.thread

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 136
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !80
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !81
  %i.bm = icmp eq i32 %i.bl, %i.an
  br i1 %i.bm, label %.lr.ph174.preheader, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124.thread: ; preds = %.lr.ph, %bb.g, %bb.f, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124.thread135, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124
  %i.bn = add nuw i64 %.087169, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %.088179
  br i1 %exitcond.not, label %.lr.ph174.preheader, label %.lr.ph, !llvm.loop !1013

.lr.ph174.preheader:                              ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124.thread, %bb.g
  %.087.lcssa205 = phi i64 [ %.087169, %bb.g ], [ %.088179, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit124.thread ] ; 2 uses
  br label %.lr.ph174

.lr.ph174:                                        ; preds = %.lr.ph174.preheader, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit126.thread
  %.086172 = phi i64 [ %i.cl, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit126.thread ], [ 0, %.lr.ph174.preheader ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.086172
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !53 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !58
  %i.bs = icmp eq i64 %i.br, 8
  br i1 %i.bs, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit126, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit126.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit126: ; preds = %.lr.ph174
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !57
  %i.bv = load i64, ptr %i.bu, align 1
  %i.bw = icmp ne i64 %i.bv, 8092820587575929154
  %i.bx = zext i1 %i.bw to i32
  %.not139 = icmp eq i32 %i.bx, 0
  br i1 %.not139, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit126.thread136, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit126.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit126.thread136: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit126
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 112
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 120
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !91
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !80
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %.not94 = icmp eq i64 %i.ce, 4
  br i1 %.not94, label %bb.h, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit126.thread

bb.h:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit126.thread136
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 208
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !134
  %.not95 = icmp eq i32 %i.cg, 2
  br i1 %.not95, label %bb.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit126.thread

bb.i:                                             ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bp, i64 136
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !80
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !81
  %i.ck = icmp eq i32 %i.cj, %i.ap
  br i1 %i.ck, label %._crit_edge175, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit126.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit126.thread: ; preds = %.lr.ph174, %bb.i, %bb.h, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit126.thread136, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit126
  %i.cl = add nuw i64 %.086172, 1                 ; 2 uses
  %exitcond186.not = icmp eq i64 %i.cl, %.088179
  br i1 %exitcond186.not, label %._crit_edge175, label %.lr.ph174, !llvm.loop !1014

._crit_edge175:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit126.thread, %bb.i, %bb.e
  %.087.lcssa202 = phi i64 [ 0, %bb.e ], [ %.087.lcssa205, %bb.i ], [ %.087.lcssa205, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit126.thread ] ; 2 uses
  %.086.lcssa = phi i64 [ 0, %bb.e ], [ %.088179, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit126.thread ], [ %.086172, %bb.i ] ; 2 uses
  %i.cm = icmp eq i64 %.087.lcssa202, %.088179    ; 3 uses
  %i.cn = icmp eq i64 %.086.lcssa, %.088179       ; 4 uses
  %or.cond = and i1 %i.cm, %i.cn
  br i1 %or.cond, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.j

bb.j:                                             ; preds = %._crit_edge175
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.087.lcssa202
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !53 ; 9 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.086.lcssa
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !53 ; 9 uses
  %i.cs = load ptr, ptr @stderr, align 8, !tbaa !17
end_hunk_0
