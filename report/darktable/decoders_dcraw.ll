Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/decoders_dcraw?download=true
inline.NumInlined: 144
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN6LibRaw14canon_load_rawEv:bb.a
  %i.fr = phi i32 [ %.pre29.i103, %.critedge.loopexit.i100 ], [ %i.ek, %.preheader.i94 ] ; 3 uses
  %i.fs = phi ptr [ %.pre.i101, %.critedge.loopexit.i100 ], [ %i.ei, %.preheader.i94 ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fu = icmp eq i32 %i.fr, 0
  br i1 %i.fu, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.critedge.i96
  %i.fv = load i32, ptr %i.fs, align 8, !tbaa !85
  %i.fw = sub nsw i32 32, %i.fr
  %i.fx = shl i32 %i.fv, %i.fw
  %i.fy = sub nuw nsw i32 32, %i.eg
  %i.fz = lshr i32 %i.fx, %i.fy
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.critedge.i96
  %i.ga = phi i32 [ %i.fz, %bb.w ], [ 0, %.critedge.i96 ] ; 2 uses
  %.sink.i97 = sub nsw i32 %i.fr, %i.eg           ; 2 uses
  store i32 %.sink.i97, ptr %i.ft, align 4, !tbaa !84
  %i.gb = icmp slt i32 %.sink.i97, 0
  br i1 %i.gb, label %bb.y, label %_ZN6LibRaw10getbithuffEiPt.exit112

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %_ZN6LibRaw10getbithuffEiPt.exit112 unwind label %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN6LibRaw10getbithuffEiPt.exit112:               ; preds = %bb.x, %bb.t, %bb.y
  %.016.i98 = phi i32 [ 0, %bb.t ], [ %i.ga, %bb.x ], [ %i.ga, %bb.y ] ; 2 uses
  %i.gc = icmp slt i32 %i.ef, 64
  br i1 %i.gc, label %bb.z, label %.thread209

bb.z:                                             ; preds = %_ZN6LibRaw10getbithuffEiPt.exit112
  %i.gd = add nsw i32 %i.eg, -1
  %i.ge = shl nuw nsw i32 1, %i.gd
  %i.gf = and i32 %.016.i98, %i.ge
  %i.gg = icmp eq i32 %i.gf, 0
  %notmask = shl nsw i32 -1, %i.eg
  %.neg = or disjoint i32 %notmask, 1
  %i.gh = select i1 %i.gg, i32 %.neg, i32 0
  %.072 = add nsw i32 %i.gh, %.016.i98
  %i.gi = zext nneg i32 %i.ef to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.gi
  store i32 %.072, ptr %i.gj, align 4, !tbaa !120
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.s, %bb.r
  %.180 = phi i32 [ %.079152, %bb.r ], [ %i.ef, %bb.s ], [ %i.ef, %bb.z ] ; 2 uses
  %i.gk = add nuw nsw i32 %.180, 1
  %i.gl = icmp slt i32 %.180, 63
  br i1 %i.gl, label %bb.i, label %.thread209, !llvm.loop !153

.thread209:                                       ; preds = %_ZN6LibRaw10getbithuffEiPt.exit112, %_ZN6LibRaw10getbithuffEiPt.exit, %bb.aa
  %i.gm = load i32, ptr %i.e, align 16, !tbaa !120
  %i.gn = add nsw i32 %i.gm, %.171156             ; 3 uses
  store i32 %i.gn, ptr %i.e, align 16, !tbaa !120
  %i.go = add i32 %.1157, 64
  %.idx = shl nuw nsw i64 %indvars.iv179, 7
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx
  br label %bb.ab

bb.ab:                                            ; preds = %.thread209, %bb.af
  %indvars.iv = phi i64 [ 0, %.thread209 ], [ %indvars.iv.next, %bb.af ] ; 4 uses
  %.2154 = phi i32 [ %.1157, %.thread209 ], [ %i.gp, %bb.af ] ; 2 uses
  %i.gp = add nsw i32 %.2154, 1
  %i.gq = load i16, ptr %i.ak, align 2, !tbaa !117
  %i.gr = zext i16 %i.gq to i32
  %i.gs = srem i32 %.2154, %i.gr
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 512, ptr %i.bc, align 4, !tbaa !120
  store i32 512, ptr %i.f, align 4, !tbaa !120
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !120
  %i.gw = and i64 %indvars.iv, 1
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gw ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !120
  %i.gz = add nsw i32 %i.gy, %i.gv                ; 3 uses
  store i32 %i.gz, ptr %i.gx, align 4, !tbaa !120
  %i.ha = trunc i32 %i.gz to i16
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i16 %i.ha, ptr %gep, align 2, !tbaa !97
  %i.hb = and i32 %i.gz, 64512
  %.not90 = icmp eq i32 %i.hb, 0
  br i1 %.not90, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.af unwind label %.loopexit.split-lp121.loopexit.split-lp.loopexit

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.ag, label %bb.ab, !llvm.loop !154

bb.ag:                                            ; preds = %bb.af
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next180, %wide.trip.count
  br i1 %exitcond182.not, label %._crit_edge, label %.lr.ph158, !llvm.loop !155

._crit_edge:                                      ; preds = %bb.ag, %bb.h
  %.171.lcssa = phi i32 [ %.070168, %bb.h ], [ %i.gn, %bb.ag ]
  %.1.lcssa = phi i32 [ %.0169, %bb.h ], [ %i.bs, %bb.ag ]
  br i1 %.not117, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge
  %i.hc = load ptr, ptr %i.g, align 8, !tbaa !86  ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !88
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 40
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = invoke noundef i64 %i.hf(ptr noundef nonnull align 8 dereferenceable(8) %i.hc)
          to label %bb.ai unwind label %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !call_target !162

bb.ai:                                            ; preds = %bb.ah
  %i.hh = load ptr, ptr %i.g, align 8, !tbaa !86  ; 2 uses
  %i.hi = load i16, ptr %i.ak, align 2, !tbaa !117
  %i.hj = zext i16 %i.hi to i32
  %i.hk = mul nuw nsw i32 %.076167, %i.hj
  %i.hl = lshr exact i32 %i.hk, 2
  %i.hm = add nuw nsw i32 %i.hl, 26
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = load ptr, ptr %i.hh, align 8, !tbaa !88
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = invoke noundef i32 %i.hq(ptr noundef nonnull align 8 dereferenceable(8) %i.hh, i64 noundef %i.hn, i32 noundef 0)
          to label %.preheader135 unwind label %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !call_target !107 ; 0 uses

.preheader135:                                    ; preds = %bb.ai
  %i.hs = load i16, ptr %i.ak, align 2, !tbaa !117
  %.not175 = icmp eq i16 %i.hs, 0
  br i1 %.not175, label %._crit_edge166, label %.lr.ph165

.lr.ph165:                                        ; preds = %.preheader135, %.preheader128.preheader.rtcont
  %.3164 = phi i32 [ %.rtmerge222, %.preheader128.preheader.rtcont ], [ 0, %.preheader135 ] ; 2 uses
  %.082163 = phi ptr [ %.rtmerge, %.preheader128.preheader.rtcont ], [ %i.bk, %.preheader135 ] ; 9 uses
  %i.ht = load ptr, ptr %i.g, align 8, !tbaa !86  ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !88
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 56
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = invoke noundef i32 %i.hw(ptr noundef nonnull align 8 dereferenceable(8) %i.ht)
          to label %.preheader128.preheader unwind label %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !call_target !94 ; 5 uses

.preheader128.preheader:                          ; preds = %.lr.ph165
  %.082163221 = ptrtoaddr ptr %.082163 to i64     ; 2 uses
  %i.hy = add i64 %.082163221, 8
  %rt.bound0 = icmp ugt i64 %i.be, %.082163221
  %rt.bound1 = icmp ult i64 %i.bd, %i.hy
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.preheader128.preheader.rtscalar, label %.preheader128.preheader.rtvec, !prof !163

._crit_edge166:                                   ; preds = %.preheader128.preheader.rtcont, %.preheader135
  %i.hz = load ptr, ptr %i.g, align 8, !tbaa !86  ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !88
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = invoke noundef i32 %i.ic(ptr noundef nonnull align 8 dereferenceable(8) %i.hz, i64 noundef %i.hg, i32 noundef 0)
          to label %bb.aj unwind label %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !call_target !107 ; 0 uses

bb.aj:                                            ; preds = %._crit_edge, %._crit_edge166
  %i.ie = add nuw nsw i32 %.076167, 8             ; 2 uses
  %i.if = load i16, ptr %i.ag, align 8, !tbaa !116
  %i.ig = zext i16 %i.if to i32
  %i.ih = icmp samesign ult i32 %i.ie, %i.ig
  br i1 %i.ih, label %bb.g, label %.preheader, !llvm.loop !156

.loopexit:                                        ; preds = %bb.p, %.loopexit.split-lp121
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  resume { ptr, i32 } %lpad.phi

bb.am:                                            ; preds = %bb.ak
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  call void @__clang_call_terminate(ptr %i.ij) #16
  unreachable

bb.an:                                            ; preds = %bb.q
  unreachable

.preheader128.preheader.rtvec:                    ; preds = %.preheader128.preheader
  %1 = load <4 x i16>, ptr %i.ak, align 2
  %i.ik = load i16, ptr %i.ak, align 2, !tbaa !117 ; 3 uses
  %i.il = load <4 x i16>, ptr %.082163, align 2, !tbaa !97 ; 2 uses
  %i.im = zext <4 x i16> %i.il to <4 x i32>
  %i.in = shl nuw nsw <4 x i32> %i.im, splat (i32 2)
  %i.io = insertelement <4 x i32> poison, i32 %i.hx, i64 0
  %i.ip = shufflevector <4 x i32> %i.io, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.iq = lshr <4 x i32> %i.ip, <i32 0, i32 2, i32 4, i32 6>
  %i.ir = and <4 x i32> %i.iq, splat (i32 3)
  %i.is = or disjoint <4 x i32> %i.in, %i.ir      ; 2 uses
  %i.it = insertelement <4 x i16> %1, i16 %i.ik, i64 1
  %i.iu = insertelement <4 x i16> %i.it, i16 %i.ik, i64 2
  %i.iv = insertelement <4 x i16> %i.iu, i16 %i.ik, i64 3
  %i.iw = icmp eq <4 x i16> %i.iv, splat (i16 2672)
  %i.ix = icmp ult <4 x i16> %i.il, splat (i16 128)
  %i.iy = select <4 x i1> %i.iw, <4 x i1> %i.ix, <4 x i1> zeroinitializer
  %i.iz = add nuw nsw <4 x i32> %i.is, splat (i32 2)
  %i.ja = select <4 x i1> %i.iy, <4 x i32> %i.iz, <4 x i32> %i.is
  %i.jb = trunc <4 x i32> %i.ja to <4 x i16>
  store <4 x i16> %i.jb, ptr %.082163, align 2, !tbaa !97
  %i.jc = add nuw nsw i32 %.3164, 1               ; 2 uses
  %i.jd = load i16, ptr %i.ak, align 2, !tbaa !117
  %i.je = zext i16 %i.jd to i32
  %i.jf = shl nuw nsw i32 %i.je, 1
  %i.jg = icmp samesign ult i32 %i.jc, %i.jf
  br label %.preheader128.preheader.rtcont

.preheader128.preheader.rtscalar:                 ; preds = %.preheader128.preheader
  %i.jh = load i16, ptr %.082163, align 2, !tbaa !97 ; 2 uses
  %i.ji = zext i16 %i.jh to i32
  %i.jj = shl nuw nsw i32 %i.ji, 2
  %i.jk = and i32 %i.hx, 3
  %i.jl = or disjoint i32 %i.jj, %i.jk            ; 2 uses
  %i.jm = load i16, ptr %i.ak, align 2, !tbaa !117
  %i.jn = icmp eq i16 %i.jm, 2672
  %i.jo = icmp ult i16 %i.jh, 128
  %or.cond3.scalar = select i1 %i.jn, i1 %i.jo, i1 false
  %i.jp = add nuw nsw i32 %i.jl, 2
  %spec.select91.scalar = select i1 %or.cond3.scalar, i32 %i.jp, i32 %i.jl
  %i.jq = trunc i32 %spec.select91.scalar to i16
  store i16 %i.jq, ptr %.082163, align 2, !tbaa !97
  %i.jr = getelementptr inbounds nuw i8, ptr %.082163, i64 2 ; 2 uses
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !97 ; 2 uses
  %i.jt = zext i16 %i.js to i32
  %i.ju = shl nuw nsw i32 %i.jt, 2
  %i.jv = lshr i32 %i.hx, 2
  %i.jw = and i32 %i.jv, 3
  %i.jx = or disjoint i32 %i.ju, %i.jw            ; 2 uses
  %i.jy = load i16, ptr %i.ak, align 2, !tbaa !117
  %i.jz = icmp eq i16 %i.jy, 2672
  %i.ka = icmp ult i16 %i.js, 128
  %or.cond3.1.scalar = select i1 %i.jz, i1 %i.ka, i1 false
  %i.kb = add nuw nsw i32 %i.jx, 2
  %spec.select91.1.scalar = select i1 %or.cond3.1.scalar, i32 %i.kb, i32 %i.jx
  %i.kc = trunc i32 %spec.select91.1.scalar to i16
  store i16 %i.kc, ptr %i.jr, align 2, !tbaa !97
  %i.kd = getelementptr inbounds nuw i8, ptr %.082163, i64 4 ; 2 uses
  %i.ke = load i16, ptr %i.kd, align 2, !tbaa !97 ; 2 uses
  %i.kf = zext i16 %i.ke to i32
  %i.kg = shl nuw nsw i32 %i.kf, 2
  %i.kh = lshr i32 %i.hx, 4
  %i.ki = and i32 %i.kh, 3
  %i.kj = or disjoint i32 %i.kg, %i.ki            ; 2 uses
  %i.kk = load i16, ptr %i.ak, align 2, !tbaa !117
  %i.kl = icmp eq i16 %i.kk, 2672
  %i.km = icmp ult i16 %i.ke, 128
  %or.cond3.2.scalar = select i1 %i.kl, i1 %i.km, i1 false
  %i.kn = add nuw nsw i32 %i.kj, 2
  %spec.select91.2.scalar = select i1 %or.cond3.2.scalar, i32 %i.kn, i32 %i.kj
  %i.ko = trunc i32 %spec.select91.2.scalar to i16
  store i16 %i.ko, ptr %i.kd, align 2, !tbaa !97
  %i.kp = getelementptr inbounds nuw i8, ptr %.082163, i64 6 ; 2 uses
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !97 ; 2 uses
  %i.kr = zext i16 %i.kq to i32
  %i.ks = shl nuw nsw i32 %i.kr, 2
  %i.kt = lshr i32 %i.hx, 6
  %i.ku = and i32 %i.kt, 3
  %i.kv = or disjoint i32 %i.ks, %i.ku            ; 2 uses
  %i.kw = load i16, ptr %i.ak, align 2, !tbaa !117
  %i.kx = icmp eq i16 %i.kw, 2672
  %i.ky = icmp ult i16 %i.kq, 128
  %or.cond3.3.scalar = select i1 %i.kx, i1 %i.ky, i1 false
  %i.kz = add nuw nsw i32 %i.kv, 2
  %spec.select91.3.scalar = select i1 %or.cond3.3.scalar, i32 %i.kz, i32 %i.kv
  %i.la = trunc i32 %spec.select91.3.scalar to i16
  store i16 %i.la, ptr %i.kp, align 2, !tbaa !97
  %i.lb = add nuw nsw i32 %.3164, 1               ; 2 uses
  %i.lc = load i16, ptr %i.ak, align 2, !tbaa !117
  %i.ld = zext i16 %i.lc to i32
  %i.le = shl nuw nsw i32 %i.ld, 1
  %i.lf = icmp samesign ult i32 %i.lb, %i.le
  br label %.preheader128.preheader.rtcont

.preheader128.preheader.rtcont:                   ; preds = %.preheader128.preheader.rtscalar, %.preheader128.preheader.rtvec
  %.rtmerge222 = phi i32 [ %i.jc, %.preheader128.preheader.rtvec ], [ %i.lb, %.preheader128.preheader.rtscalar ]
  %.rtmerge223 = phi i1 [ %i.jg, %.preheader128.preheader.rtvec ], [ %i.lf, %.preheader128.preheader.rtscalar ]
  %.rtmerge = getelementptr inbounds nuw i8, ptr %.082163, i64 8
  br i1 %.rtmerge223, label %.lr.ph165, label %._crit_edge166, !llvm.loop !157
}

declare void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #2

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN6LibRaw11ljpeg_startEP5jheadi(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr nofree noundef captures(none) initializes((0, 640)) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(65536) ptr @_Znwm(i64 noundef 65536) #17 ; 22 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65536) %i.b, i8 0, i64 65536, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %1, i8 0, i64 640, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  store i32 2147483647, ptr %i.d, align 4, !tbaa !122
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1)
          to label %bb.b unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp, !call_target !114

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.j, 1
  br i1 %.not, label %bb.c, label %_ZNSt6vectorIhSaIhEED2Ev.exit124

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.c, align 1, !tbaa !99
  %.not105 = icmp eq i8 %i.k, -40
  br i1 %.not105, label %.preheader133, label %_ZNSt6vectorIhSaIhEED2Ev.exit124

.preheader133:                                    ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %.not109 = icmp ne i32 %2, 0                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 97
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 152
  br label %bb.d

_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit:           ; preds = %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit: ; preds = %bb.p, %bb.j, %bb.g, %bb.d
  %lpad.loopexit134 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit, %bb.a
  %lpad.loopexit.split-lp135 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit ], [ %lpad.loopexit134, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp135, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 65536) #18
  resume { ptr, i32 } %lpad.phi

bb.d:                                             ; preds = %.preheader133, %.critedge
  %.093 = phi i32 [ %i.al, %.critedge ], [ 0, %.preheader133 ] ; 2 uses
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !86  ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !88
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef i32 %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %bb.e unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit, !call_target !169

bb.e:                                             ; preds = %bb.d
  %.not106 = icmp eq i32 %i.ak, 0
end_hunk_0
begin_hunk_1_@_ZN6LibRaw19canon_sraw_load_rawEv:bb.a
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.tr)
  br label %_ZN6LibRaw9ljpeg_endEP5jhead.exit233

_ZN6LibRaw9ljpeg_endEP5jhead.exit233:             ; preds = %bb.bm, %bb.bn
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !132
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.tt)
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 16383, ptr %i.tu, align 8, !tbaa !115
  br label %bb.bo

bb.bo:                                            ; preds = %bb.c, %_ZN6LibRaw9ljpeg_endEP5jhead.exit233, %_ZN6LibRaw9ljpeg_endEP5jhead.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void

bb.bp:                                            ; preds = %bb.bg, %bb.w
  %.pn = phi { ptr, i32 } [ %i.kt, %bb.w ], [ %i.tj, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  resume { ptr, i32 } %.pn

bb.bq:                                            ; preds = %bb.bg, %bb.w
  %i.tv = landingpad { ptr, i32 }
          catch ptr null
  %i.tw = extractvalue { ptr, i32 } %i.tv, 0
  call void @__clang_call_terminate(ptr %i.tw) #16
  unreachable

bb.br:                                            ; preds = %bb.ap, %bb.v
  unreachable
}

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw10ljpeg_idctEP5jhead(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [3 x [8 x [8 x float]]], align 16 ; 101 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = load float, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, align 32, !tbaa !141
  %i.c = fcmp reassoc nsz arcp contract afn une float %i.b, 0.000000e+00
  br i1 %i.c, label %.loopexit, label %vector.body

vector.body:                                      ; preds = %bb.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb.a ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %vec.ind.next, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %bb.a ] ; 2 uses
  %i.d = and <8 x i32> %vec.ind, splat (i32 31)
  %i.e = uitofp nneg <8 x i32> %i.d to <8 x double>
  %i.f = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.e, splat (double f0x3FC921FB54442D18)
  %i.g = tail call reassoc nsz arcp contract afn <8 x double> @llvm.cos.v8f64(<8 x double> %i.f)
  %i.h = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.g, splat (double 5.000000e-01)
  %i.i = fptrunc reassoc nsz arcp contract afn <8 x double> %i.h to <8 x float>
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 %index
  store <8 x float> %i.i, ptr %i.j, align 32, !tbaa !141
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.k = icmp eq i64 %index.next, 104
  br i1 %i.k, label %.preheader80, label %vector.body, !llvm.loop !199

.preheader80:                                     ; preds = %vector.body
  store float f0x240D3132, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 416), align 32, !tbaa !141
  store float f0xBDC7C5C2, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 420), align 4, !tbaa !141
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader80, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(768) %i.a, i8 0, i64 768, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !101  ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.n = tail call ptr @__cxa_allocate_exception(i64 4) #14 ; 2 uses
  store i32 5, ptr %i.n, align 16, !tbaa !134
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #15
  unreachable

bb.c:                                             ; preds = %.loopexit
  %i.o = load i16, ptr %i.m, align 2, !tbaa !97
  %i.p = zext i16 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.r = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.p, ptr noundef nonnull readonly %i.q) ; 4 uses
  %i.s = icmp eq i32 %i.r, 16
  br i1 %i.s, label %bb.d, label %.split.i

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.u = load i32, ptr %i.t, align 4, !tbaa !126
  %i.v = add i32 %i.u, -16842752
  %or.cond.i = icmp ult i32 %i.v, -16842751
  br i1 %or.cond.i, label %_ZN6LibRaw10ljpeg_diffEPt.exit, label %.split.i

.split.i:                                         ; preds = %bb.d, %bb.c
  %i.w = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.r, ptr noundef null) ; 2 uses
  %i.x = add nsw i32 %i.r, -1
  %i.y = shl nuw i32 1, %i.x
  %i.z = and i32 %i.w, %i.y
  %i.aa = icmp eq i32 %i.z, 0
  %notmask.i = shl nsw i32 -1, %i.r
  %.neg.i = add nsw i32 %notmask.i, 1
  %i.ab = select i1 %i.aa, i32 %.neg.i, i32 0
  %.0.i = add nsw i32 %i.ab, %i.w
  br label %_ZN6LibRaw10ljpeg_diffEPt.exit

_ZN6LibRaw10ljpeg_diffEPt.exit:                   ; preds = %bb.d, %.split.i
  %.011.i = phi i32 [ %.0.i, %.split.i ], [ -32768, %bb.d ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !97
  %i.ae = zext i16 %i.ad to i32
  %i.af = mul nsw i32 %.011.i, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !120
  %i.ai = add nsw i32 %i.af, %i.ah                ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !120
  %i.aj = sitofp reassoc nsz arcp contract afn i32 %i.ai to float
  store float %i.aj, ptr %i.a, align 16, !tbaa !141
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 440
  br label %bb.e

bb.e:                                             ; preds = %_ZN6LibRaw10ljpeg_diffEPt.exit, %bb.f
  %.06482 = phi i32 [ 1, %_ZN6LibRaw10ljpeg_diffEPt.exit ], [ %i.bl, %bb.f ]
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !101 ; 2 uses
  %i.am = load i16, ptr %i.al, align 2, !tbaa !97
  %i.an = zext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.ap = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.an, ptr noundef nonnull %i.ao) ; 3 uses
  %i.aq = and i32 %i.ap, 15                       ; 4 uses
  %i.ar = icmp eq i32 %i.aq, 0
  %i.as = icmp samesign ult i32 %i.ap, 240
  %or.cond = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond, label %.preheader79.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = lshr i32 %i.ap, 4
  %i.au = add nsw i32 %i.at, %.06482              ; 3 uses
  %i.av = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.aq, ptr noundef null) ; 2 uses
  %i.aw = add nsw i32 %i.aq, -1
  %i.ax = shl nuw nsw i32 1, %i.aw
  %i.ay = and i32 %i.av, %i.ax
  %i.az = icmp eq i32 %i.ay, 0
  %notmask = shl nsw i32 -1, %i.aq
  %.neg = add nsw i32 %notmask, 1
  %i.ba = select i1 %i.az, i32 %.neg, i32 0
  %.0 = add nsw i32 %i.ba, %i.av
  %i.bb = zext nneg i32 %i.au to i64              ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !97
  %i.be = zext i16 %i.bd to i32
  %i.bf = mul nsw i32 %.0, %i.be
  %i.bg = sitofp reassoc nsz arcp contract afn i32 %i.bf to float
  %i.bh = getelementptr inbounds nuw i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE6zigzag, i64 %i.bb
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !99
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bj
  store float %i.bg, ptr %i.bk, align 4, !tbaa !141
  %i.bl = add nuw nsw i32 %i.au, 1
  %i.bm = icmp slt i32 %i.au, 63
  br i1 %i.bm, label %bb.e, label %.preheader79.preheader, !llvm.loop !200

.preheader79.preheader:                           ; preds = %bb.e, %bb.f
  %i.bn = load <8 x float>, ptr %i.a, align 16, !tbaa !141
  %i.bo = fmul reassoc nsz arcp contract afn <8 x float> %i.bn, <float f0x3EFFFFFF, float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3>
  store <8 x float> %i.bo, ptr %i.a, align 16, !tbaa !141
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.bq = load float, ptr %i.bp, align 16, !tbaa !141
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, f0x3F3504F3
  store float %i.br, ptr %i.bp, align 16, !tbaa !141
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 16, !tbaa !141
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, f0x3F3504F3
  store float %i.bu, ptr %i.bs, align 16, !tbaa !141
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.bw = load float, ptr %i.bv, align 16, !tbaa !141
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, f0x3F3504F3
  store float %i.bx, ptr %i.bv, align 16, !tbaa !141
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.bz = load float, ptr %i.by, align 16, !tbaa !141
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, f0x3F3504F3
  store float %i.ca, ptr %i.by, align 16, !tbaa !141
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 16, !tbaa !141
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cc, f0x3F3504F3
  store float %i.cd, ptr %i.cb, align 16, !tbaa !141
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 16, !tbaa !141
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, f0x3F3504F3
  store float %i.cg, ptr %i.ce, align 16, !tbaa !141
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.ci = load float, ptr %i.ch, align 16, !tbaa !141
  %i.cj = fmul reassoc nsz arcp contract afn float %i.ci, f0x3F3504F3
  store float %i.cj, ptr %i.ch, align 16, !tbaa !141
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 11 uses
  %.pre = load float, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, align 32, !tbaa !141
  %.pre130 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 60), align 4, !tbaa !141 ; 2 uses
  %i.cl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 100), align 4, !tbaa !141 ; 2 uses
  %i.cm = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 4), align 4, !tbaa !141 ; 2 uses
  %i.cn = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 8), align 8, !tbaa !141 ; 2 uses
  %i.co = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 16), align 16, !tbaa !141 ; 2 uses
  %2 = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 48), align 16
  %i.cp = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 20), align 4, !tbaa !141 ; 4 uses
  %i.cq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 36), align 4, !tbaa !141 ; 4 uses
  %i.cr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 80), align 16, !tbaa !141
  %i.cs = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 120), align 8, !tbaa !141 ; 2 uses
  %i.ct = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 140), align 4, !tbaa !141 ; 4 uses
  %i.cu = load <8 x float>, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, align 32, !tbaa !141 ; 2 uses
  %i.cv = load <8 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 56), align 8, !tbaa !141 ; 2 uses
  %i.cw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 112), align 16, !tbaa !141 ; 2 uses
  %i.cx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 168), align 8, !tbaa !141 ; 2 uses
  %i.cy = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 196), align 4, !tbaa !141 ; 2 uses
  %i.cz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 108), align 4, !tbaa !141
  %i.da = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 88), align 8, !tbaa !141
  %i.db = load <8 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 44), align 4, !tbaa !141 ; 3 uses
  %i.dc = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 132), align 4, !tbaa !141 ; 2 uses
  %i.dd = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 176), align 16, !tbaa !141 ; 2 uses
  %i.de = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 180), align 4, !tbaa !141
  %i.df = load <13 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 216), align 8, !tbaa !141 ; 3 uses
  %i.dg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 308), align 4, !tbaa !141
  %i.dh = load float, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, align 32, !tbaa !141 ; 11 uses
  %3 = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 52), align 4
  %4 = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 104), align 8
  %5 = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 156), align 4
  %6 = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 208), align 16
  %i.di = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 260), align 4, !tbaa !141
  %i.dj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 60), align 4, !tbaa !141 ; 3 uses
  %i.dk = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 120), align 8, !tbaa !141
  %i.dl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 240), align 16, !tbaa !141
  %i.dm = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 300), align 4, !tbaa !141 ; 2 uses
  %i.dn = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 360), align 8, !tbaa !141 ; 2 uses
  %i.do = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 420), align 4, !tbaa !141
  %i.dp = shufflevector <8 x float> %i.db, <8 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dq = shufflevector <4 x float> %i.dc, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dr = insertelement <2 x float> %i.dq, float %i.cz, i64 0 ; 2 uses
  %i.ds = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dt = shufflevector <4 x float> %i.dc, <4 x float> %i.ds, <2 x i32> <i32 3, i32 4> ; 2 uses
  %i.du = shufflevector <2 x float> %i.dd, <2 x float> poison, <13 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dv = shufflevector <13 x float> %i.du, <13 x float> %i.df, <2 x i32> <i32 1, i32 14> ; 2 uses
  %i.dw = shufflevector <13 x float> %i.df, <13 x float> poison, <2 x i32> <i32 0, i32 12> ; 2 uses
  %i.dx = shufflevector <8 x float> %i.db, <8 x float> poison, <4 x i32> <i32 poison, i32 7, i32 poison, i32 poison> ; 2 uses
  %i.dy = insertelement <8 x float> poison, float %i.da, i64 1
  %i.dz = shufflevector <8 x float> %i.dy, <8 x float> %i.db, <2 x i32> <i32 15, i32 1> ; 2 uses
  %i.ea = shufflevector <13 x float> %i.df, <13 x float> poison, <2 x i32> <i32 9, i32 poison>
  %i.eb = insertelement <2 x float> %i.ea, float %i.dg, i64 1 ; 2 uses
  %i.ec = insertelement <2 x float> %3, float %i.dj, i64 1 ; 2 uses
  %i.ed = insertelement <2 x float> %4, float %i.dk, i64 1 ; 2 uses
  %i.ee = insertelement <2 x float> %5, float %i.de, i64 1 ; 2 uses
  %i.ef = insertelement <2 x float> %6, float %i.dl, i64 1 ; 2 uses
  %i.eg = shufflevector <4 x float> %i.dm, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.eh = insertelement <2 x float> %i.eg, float %i.di, i64 0 ; 2 uses
  %i.ei = shufflevector <2 x float> %i.dn, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ej = shufflevector <4 x float> %i.dm, <4 x float> %i.ei, <2 x i32> <i32 3, i32 4> ; 2 uses
  %i.ek = insertelement <2 x float> poison, float %i.do, i64 1
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> %i.dn, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.em = shufflevector <8 x float> %i.cu, <8 x float> %i.cv, <4 x i32> <i32 0, i32 7, i32 8, i32 15> ; 2 uses
  %i.en = shufflevector <8 x float> %i.cv, <8 x float> poison, <8 x i32> <i32 poison, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eo = shufflevector <8 x float> %i.cu, <8 x float> %i.en, <4 x i32> <i32 7, i32 9, i32 poison, i32 poison> ; 2 uses
  %i.ep = shufflevector <2 x float> %i.cp, <2 x float> %i.cq, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.eq = insertelement <2 x float> %2, float %i.cr, i64 1 ; 2 uses
  %i.er = extractelement <2 x float> %i.cp, i64 0 ; 2 uses
  %i.es = shufflevector <2 x float> %i.cp, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.et = shufflevector <2 x float> %i.cq, <2 x float> %i.dp, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.eu = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ev = shufflevector <2 x float> %i.cn, <2 x float> %i.cp, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 260
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 268
  %.promoted.peel = load float, ptr %i.ck, align 16, !tbaa !141
  %i.ff = load float, ptr %i.fb, align 8, !tbaa !141
  %i.fg = load float, ptr %i.fc, align 4, !tbaa !141
  %i.fh = load <4 x float>, ptr %i.a, align 16, !tbaa !141 ; 4 uses
  %i.fi = insertelement <4 x float> poison, float %.pre, i64 0
  %i.fj = insertelement <4 x float> %i.fi, float %i.cm, i64 1
  %i.fk = shufflevector <4 x float> %i.fj, <4 x float> %i.eu, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fl = fmul reassoc nsz arcp contract afn <4 x float> %i.fk, %i.fh ; 2 uses
  %i.fm = load float, ptr %i.ez, align 16, !tbaa !141 ; 2 uses
  %i.fn = fmul reassoc nsz arcp contract afn float %i.co, %i.fm
  %i.fo = load float, ptr %i.fa, align 4, !tbaa !141 ; 2 uses
  %i.fp = fmul reassoc nsz arcp contract afn float %i.er, %i.fo
  %op.rdx176.peel = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.fn, <4 x float> %i.fl)
  %op.rdx177.peel = fadd reassoc nsz arcp contract afn float %i.fp, %.promoted.peel
  %op.rdx178.peel = fadd reassoc nsz arcp contract afn float %op.rdx176.peel, %op.rdx177.peel
  %i.fq = load <2 x float>, ptr %i.fd, align 4, !tbaa !141
  %i.fr = shufflevector <4 x float> %i.fl, <4 x float> poison, <2 x i32> zeroinitializer
  %i.fs = fadd reassoc nsz arcp contract afn <2 x float> %i.fq, %i.fr
  %i.ft = shufflevector <4 x float> %i.fh, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fu = fmul reassoc nsz arcp contract afn <2 x float> %i.ev, %i.ft
  %i.fv = fadd reassoc nsz arcp contract afn <2 x float> %i.fs, %i.fu
  %i.fw = shufflevector <4 x float> %i.fh, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fx = fmul reassoc nsz arcp contract afn <2 x float> %i.ep, %i.fw
  %i.fy = fadd reassoc nsz arcp contract afn <2 x float> %i.fv, %i.fx
  %i.fz = insertelement <2 x float> %i.cq, float %.pre130, i64 1
  %i.ga = shufflevector <4 x float> %i.fh, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.gb = fmul reassoc nsz arcp contract afn <2 x float> %i.fz, %i.ga
  %i.gc = fadd reassoc nsz arcp contract afn <2 x float> %i.fy, %i.gb
  %i.gd = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gf = fmul reassoc nsz arcp contract afn <2 x float> %i.eq, %i.ge
  %i.gg = fadd reassoc nsz arcp contract afn <2 x float> %i.gc, %i.gf
  %i.gh = insertelement <2 x float> poison, float %.pre130, i64 0
  %i.gi = insertelement <2 x float> %i.gh, float %i.cl, i64 1
  %i.gj = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gl = fmul reassoc nsz arcp contract afn <2 x float> %i.gi, %i.gk
  %i.gm = fadd reassoc nsz arcp contract afn <2 x float> %i.gg, %i.gl
  %.promoted.3.peel = load float, ptr %i.fe, align 4, !tbaa !141
  %i.gn = shufflevector <4 x float> %i.es, <4 x float> %i.dx, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.go = insertelement <4 x float> %i.gn, float %i.cs, i64 2
  %i.gp = insertelement <4 x float> %i.go, float %i.cx, i64 3
  %i.gq = insertelement <4 x float> poison, float %i.ff, i64 0
  %i.gr = shufflevector <4 x float> %i.gq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gs = fmul reassoc nsz arcp contract afn <4 x float> %i.gp, %i.gr
  %i.gt = insertelement <4 x float> poison, float %op.rdx178.peel, i64 0
  %i.gu = shufflevector <2 x float> %i.gm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gv = shufflevector <4 x float> %i.gt, <4 x float> %i.gu, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.gw = insertelement <4 x float> %i.eo, float %i.ct, i64 2
  %i.gx = insertelement <4 x float> %i.gw, float %i.cy, i64 3
  %i.gy = insertelement <4 x float> poison, float %i.fg, i64 0
  %i.gz = shufflevector <4 x float> %i.gy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ha = fmul reassoc nsz arcp contract afn <4 x float> %i.gx, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 272 ; 2 uses
  %i.hc = load <4 x float>, ptr %i.a, align 16, !tbaa !141 ; 4 uses
  %i.hd = fmul reassoc nsz arcp contract afn <4 x float> %i.em, %i.hc ; 2 uses
  %i.he = load float, ptr %i.ez, align 16, !tbaa !141 ; 2 uses
  %i.hf = fmul reassoc nsz arcp contract afn float %i.cw, %i.he
  %i.hg = load float, ptr %i.fa, align 4, !tbaa !141 ; 2 uses
  %i.hh = fmul reassoc nsz arcp contract afn float %i.ct, %i.hg
  %op.rdx.peel = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.hf, <4 x float> %i.hd)
  %op.rdx174.peel = fadd reassoc nsz arcp contract afn float %i.hh, %.promoted.3.peel
  %op.rdx175.peel = fadd reassoc nsz arcp contract afn float %op.rdx.peel, %op.rdx174.peel
  %i.hi = insertelement <4 x float> %i.gv, float %op.rdx175.peel, i64 3
  %i.hj = fadd reassoc nsz arcp contract afn <4 x float> %i.hi, %i.gs
  %i.hk = fadd reassoc nsz arcp contract afn <4 x float> %i.hj, %i.ha
  store <4 x float> %i.hk, ptr %i.ck, align 16, !tbaa !141
  %i.hl = load <2 x float>, ptr %i.hb, align 16, !tbaa !141
  %i.hm = shufflevector <4 x float> %i.hd, <4 x float> poison, <2 x i32> zeroinitializer
  %i.hn = fadd reassoc nsz arcp contract afn <2 x float> %i.hl, %i.hm
  %i.ho = shufflevector <4 x float> %i.hc, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hp = fmul reassoc nsz arcp contract afn <2 x float> %i.et, %i.ho
  %i.hq = fadd reassoc nsz arcp contract afn <2 x float> %i.hn, %i.hp
  %i.hr = shufflevector <4 x float> %i.hc, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.hs = fmul reassoc nsz arcp contract afn <2 x float> %i.dz, %i.hr
  %i.ht = fadd reassoc nsz arcp contract afn <2 x float> %i.hq, %i.hs
  %i.hu = shufflevector <4 x float> %i.hc, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.hv = fmul reassoc nsz arcp contract afn <2 x float> %i.dr, %i.hu
  %i.hw = fadd reassoc nsz arcp contract afn <2 x float> %i.ht, %i.hv
  %i.hx = insertelement <2 x float> poison, float %i.he, i64 0
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hz = fmul reassoc nsz arcp contract afn <2 x float> %i.dt, %i.hy
  %i.ia = fadd reassoc nsz arcp contract afn <2 x float> %i.hw, %i.hz
  %i.ib = insertelement <2 x float> poison, float %i.hg, i64 0
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> zeroinitializer
  %i.id = fmul reassoc nsz arcp contract afn <2 x float> %i.dv, %i.ic
  %i.ie = fadd reassoc nsz arcp contract afn <2 x float> %i.ia, %i.id
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 280 ; 2 uses
  %i.ig = load float, ptr %i.a, align 16, !tbaa !141
  %i.ih = fmul reassoc nsz arcp contract afn float %i.dh, %i.ig
  %i.ii = load float, ptr %i.fb, align 8, !tbaa !141
  %i.ij = load float, ptr %i.fc, align 4, !tbaa !141
  %i.ik = load <2 x float>, ptr %i.fb, align 8, !tbaa !141 ; 4 uses
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer
  %i.im = fmul reassoc nsz arcp contract afn <2 x float> %i.dw, %i.il
  %i.in = fadd reassoc nsz arcp contract afn <2 x float> %i.ie, %i.im
  %i.io = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ip = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.iq = fmul reassoc nsz arcp contract afn <2 x float> %i.eb, %i.ip
  %i.ir = fadd reassoc nsz arcp contract afn <2 x float> %i.in, %i.iq
  store <2 x float> %i.ir, ptr %i.hb, align 16, !tbaa !141
  %i.is = load float, ptr %i.ew, align 4, !tbaa !141
  %i.it = load float, ptr %i.ex, align 8, !tbaa !141
  %i.iu = load float, ptr %i.ey, align 4, !tbaa !141
  %i.iv = load float, ptr %i.ez, align 16, !tbaa !141
  %i.iw = load float, ptr %i.fa, align 4, !tbaa !141
  %i.ix = load <2 x float>, ptr %i.if, align 8, !tbaa !141
  %i.iy = insertelement <2 x float> poison, float %i.ih, i64 0
  %i.iz = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ja = fadd reassoc nsz arcp contract afn <2 x float> %i.ix, %i.iz
  %i.jb = insertelement <2 x float> poison, float %i.is, i64 0
  %i.jc = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jd = fmul reassoc nsz arcp contract afn <2 x float> %i.ec, %i.jc
  %i.je = fadd reassoc nsz arcp contract afn <2 x float> %i.ja, %i.jd
  %i.jf = insertelement <2 x float> poison, float %i.it, i64 0
  %i.jg = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jh = fmul reassoc nsz arcp contract afn <2 x float> %i.ed, %i.jg
  %i.ji = fadd reassoc nsz arcp contract afn <2 x float> %i.je, %i.jh
  %i.jj = insertelement <2 x float> poison, float %i.iu, i64 0
  %i.jk = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jl = fmul reassoc nsz arcp contract afn <2 x float> %i.ee, %i.jk
  %i.jm = fadd reassoc nsz arcp contract afn <2 x float> %i.ji, %i.jl
  %i.jn = insertelement <2 x float> poison, float %i.iv, i64 0
  %i.jo = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jp = fmul reassoc nsz arcp contract afn <2 x float> %i.ef, %i.jo
  %i.jq = fadd reassoc nsz arcp contract afn <2 x float> %i.jm, %i.jp
  %i.jr = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.js = shufflevector <2 x float> %i.jr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jt = fmul reassoc nsz arcp contract afn <2 x float> %i.eh, %i.js
  %i.ju = fadd reassoc nsz arcp contract afn <2 x float> %i.jq, %i.jt
  %i.jv = insertelement <2 x float> %i.ik, float %i.ii, i64 1
  %i.jw = fmul reassoc nsz arcp contract afn <2 x float> %i.ej, %i.jv
  %i.jx = fadd reassoc nsz arcp contract afn <2 x float> %i.ju, %i.jw
  %i.jy = insertelement <2 x float> %i.io, float %i.ij, i64 1
  %i.jz = fmul reassoc nsz arcp contract afn <2 x float> %i.el, %i.jy
  %i.ka = fadd reassoc nsz arcp contract afn <2 x float> %i.jx, %i.jz
  store <2 x float> %i.ka, ptr %i.if, align 8, !tbaa !141
  %i.kb = insertelement <4 x float> poison, float %i.dh, i64 0
  %i.kc = insertelement <4 x float> %i.kb, float %i.cm, i64 1
  %i.kd = shufflevector <4 x float> %i.kc, <4 x float> %i.eu, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ke = insertelement <2 x float> %i.cq, float %i.dj, i64 1
  %i.kf = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.kg = insertelement <2 x float> %i.kf, float %i.cl, i64 1
  %i.kh = shufflevector <4 x float> %i.es, <4 x float> %i.dx, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.ki = insertelement <4 x float> %i.kh, float %i.cs, i64 2
  %i.kj = insertelement <4 x float> %i.ki, float %i.cx, i64 3
  %i.kk = insertelement <4 x float> %i.eo, float %i.ct, i64 2
  %i.kl = insertelement <4 x float> %i.kk, float %i.cy, i64 3
  br label %.preheader77

.preheader77:                                     ; preds = %.preheader79.preheader, %.preheader77
  %indvars.iv110 = phi i64 [ 1, %.preheader79.preheader ], [ %indvars.iv.next111, %.preheader77 ] ; 3 uses
  %i.km = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %indvars.iv110 ; 10 uses
  %i.kn = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %indvars.iv110 ; 6 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 12
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 16 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.km, i64 20 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.km, i64 24 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.km, i64 28 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kn, i64 12
  %.promoted = load float, ptr %i.kn, align 16, !tbaa !141
  %i.kx = load float, ptr %i.kt, align 8, !tbaa !141
  %i.ky = load float, ptr %i.ku, align 4, !tbaa !141
  %i.kz = load <4 x float>, ptr %i.km, align 16, !tbaa !141 ; 4 uses
  %i.la = fmul reassoc nsz arcp contract afn <4 x float> %i.kd, %i.kz ; 2 uses
  %i.lb = load float, ptr %i.kr, align 16, !tbaa !141 ; 2 uses
  %i.lc = fmul reassoc nsz arcp contract afn float %i.co, %i.lb
  %i.ld = load float, ptr %i.ks, align 4, !tbaa !141 ; 2 uses
  %i.le = fmul reassoc nsz arcp contract afn float %i.er, %i.ld
  %op.rdx176 = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.lc, <4 x float> %i.la)
  %op.rdx177 = fadd reassoc nsz arcp contract afn float %i.le, %.promoted
  %op.rdx178 = fadd reassoc nsz arcp contract afn float %op.rdx176, %op.rdx177
  %i.lf = load <2 x float>, ptr %i.kv, align 4, !tbaa !141
  %i.lg = shufflevector <4 x float> %i.la, <4 x float> poison, <2 x i32> zeroinitializer
  %i.lh = fadd reassoc nsz arcp contract afn <2 x float> %i.lf, %i.lg
  %i.li = shufflevector <4 x float> %i.kz, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lj = fmul reassoc nsz arcp contract afn <2 x float> %i.ev, %i.li
  %i.lk = fadd reassoc nsz arcp contract afn <2 x float> %i.lh, %i.lj
  %i.ll = shufflevector <4 x float> %i.kz, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.lm = fmul reassoc nsz arcp contract afn <2 x float> %i.ep, %i.ll
  %i.ln = fadd reassoc nsz arcp contract afn <2 x float> %i.lk, %i.lm
  %i.lo = shufflevector <4 x float> %i.kz, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.lp = fmul reassoc nsz arcp contract afn <2 x float> %i.ke, %i.lo
end_hunk_1
