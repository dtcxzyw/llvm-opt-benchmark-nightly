Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/decoders_dcraw?download=true
inline.NumInlined: 144
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN6LibRaw14canon_load_rawEv:bb.a
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
  %i.ik = load i16, ptr %i.ak, align 2, !tbaa !117
  %i.il = load <4 x i16>, ptr %.082163, align 2, !tbaa !97 ; 2 uses
  %i.im = zext <4 x i16> %i.il to <4 x i32>
  %i.in = shl nuw nsw <4 x i32> %i.im, splat (i32 2)
  %i.io = insertelement <4 x i32> poison, i32 %i.hx, i64 0
  %i.ip = shufflevector <4 x i32> %i.io, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.iq = lshr <4 x i32> %i.ip, <i32 0, i32 2, i32 4, i32 6>
  %i.ir = and <4 x i32> %i.iq, splat (i32 3)
  %i.is = or disjoint <4 x i32> %i.in, %i.ir      ; 2 uses
  %i.it = insertelement <4 x i16> poison, i16 %i.ik, i64 0
  %i.iu = icmp eq <4 x i16> %i.it, splat (i16 2672)
  %i.iv = shufflevector <4 x i1> %i.iu, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.iw = icmp ult <4 x i16> %i.il, splat (i16 128)
  %i.ix = select <4 x i1> %i.iv, <4 x i1> %i.iw, <4 x i1> zeroinitializer
  %i.iy = add nuw nsw <4 x i32> %i.is, splat (i32 2)
  %i.iz = select <4 x i1> %i.ix, <4 x i32> %i.iy, <4 x i32> %i.is
  %i.ja = trunc <4 x i32> %i.iz to <4 x i16>
  store <4 x i16> %i.ja, ptr %.082163, align 2, !tbaa !97
  %i.jb = add nuw nsw i32 %.3164, 1               ; 2 uses
  %i.jc = load i16, ptr %i.ak, align 2, !tbaa !117
  %i.jd = zext i16 %i.jc to i32
  %i.je = shl nuw nsw i32 %i.jd, 1
  %i.jf = icmp samesign ult i32 %i.jb, %i.je
  br label %.preheader128.preheader.rtcont

.preheader128.preheader.rtscalar:                 ; preds = %.preheader128.preheader
  %i.jg = load i16, ptr %.082163, align 2, !tbaa !97 ; 2 uses
  %i.jh = zext i16 %i.jg to i32
  %i.ji = shl nuw nsw i32 %i.jh, 2
  %i.jj = and i32 %i.hx, 3
  %i.jk = or disjoint i32 %i.ji, %i.jj            ; 2 uses
  %i.jl = load i16, ptr %i.ak, align 2, !tbaa !117
  %i.jm = icmp eq i16 %i.jl, 2672
  %i.jn = icmp ult i16 %i.jg, 128
  %or.cond3.scalar = select i1 %i.jm, i1 %i.jn, i1 false
  %i.jo = add nuw nsw i32 %i.jk, 2
  %spec.select91.scalar = select i1 %or.cond3.scalar, i32 %i.jo, i32 %i.jk
  %i.jp = trunc i32 %spec.select91.scalar to i16
  store i16 %i.jp, ptr %.082163, align 2, !tbaa !97
  %i.jq = getelementptr inbounds nuw i8, ptr %.082163, i64 2 ; 2 uses
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !97 ; 2 uses
  %i.js = zext i16 %i.jr to i32
  %i.jt = shl nuw nsw i32 %i.js, 2
  %i.ju = lshr i32 %i.hx, 2
  %i.jv = and i32 %i.ju, 3
  %i.jw = or disjoint i32 %i.jt, %i.jv            ; 2 uses
  %i.jx = load i16, ptr %i.ak, align 2, !tbaa !117
  %i.jy = icmp eq i16 %i.jx, 2672
  %i.jz = icmp ult i16 %i.jr, 128
  %or.cond3.1.scalar = select i1 %i.jy, i1 %i.jz, i1 false
  %i.ka = add nuw nsw i32 %i.jw, 2
  %spec.select91.1.scalar = select i1 %or.cond3.1.scalar, i32 %i.ka, i32 %i.jw
  %i.kb = trunc i32 %spec.select91.1.scalar to i16
  store i16 %i.kb, ptr %i.jq, align 2, !tbaa !97
  %i.kc = getelementptr inbounds nuw i8, ptr %.082163, i64 4 ; 2 uses
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !97 ; 2 uses
  %i.ke = zext i16 %i.kd to i32
  %i.kf = shl nuw nsw i32 %i.ke, 2
  %i.kg = lshr i32 %i.hx, 4
  %i.kh = and i32 %i.kg, 3
  %i.ki = or disjoint i32 %i.kf, %i.kh            ; 2 uses
  %i.kj = load i16, ptr %i.ak, align 2, !tbaa !117
  %i.kk = icmp eq i16 %i.kj, 2672
  %i.kl = icmp ult i16 %i.kd, 128
  %or.cond3.2.scalar = select i1 %i.kk, i1 %i.kl, i1 false
  %i.km = add nuw nsw i32 %i.ki, 2
  %spec.select91.2.scalar = select i1 %or.cond3.2.scalar, i32 %i.km, i32 %i.ki
  %i.kn = trunc i32 %spec.select91.2.scalar to i16
  store i16 %i.kn, ptr %i.kc, align 2, !tbaa !97
  %i.ko = getelementptr inbounds nuw i8, ptr %.082163, i64 6 ; 2 uses
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !97 ; 2 uses
  %i.kq = zext i16 %i.kp to i32
  %i.kr = shl nuw nsw i32 %i.kq, 2
  %i.ks = lshr i32 %i.hx, 6
  %i.kt = and i32 %i.ks, 3
  %i.ku = or disjoint i32 %i.kr, %i.kt            ; 2 uses
  %i.kv = load i16, ptr %i.ak, align 2, !tbaa !117
  %i.kw = icmp eq i16 %i.kv, 2672
  %i.kx = icmp ult i16 %i.kp, 128
  %or.cond3.3.scalar = select i1 %i.kw, i1 %i.kx, i1 false
  %i.ky = add nuw nsw i32 %i.ku, 2
  %spec.select91.3.scalar = select i1 %or.cond3.3.scalar, i32 %i.ky, i32 %i.ku
  %i.kz = trunc i32 %spec.select91.3.scalar to i16
  store i16 %i.kz, ptr %i.ko, align 2, !tbaa !97
  %i.la = add nuw nsw i32 %.3164, 1               ; 2 uses
  %i.lb = load i16, ptr %i.ak, align 2, !tbaa !117
  %i.lc = zext i16 %i.lb to i32
  %i.ld = shl nuw nsw i32 %i.lc, 1
  %i.le = icmp samesign ult i32 %i.la, %i.ld
  br label %.preheader128.preheader.rtcont

.preheader128.preheader.rtcont:                   ; preds = %.preheader128.preheader.rtscalar, %.preheader128.preheader.rtvec
  %.rtmerge222 = phi i32 [ %i.jb, %.preheader128.preheader.rtvec ], [ %i.la, %.preheader128.preheader.rtscalar ]
  %.rtmerge223 = phi i1 [ %i.jf, %.preheader128.preheader.rtvec ], [ %i.le, %.preheader128.preheader.rtscalar ]
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
  %i.b = tail call noalias noundef nonnull dereferenceable(65536) ptr @_Znwm(i64 noundef 65536) #17 ; 21 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
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
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %.not109 = icmp ne i32 %2, 0                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 97
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 152
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
  %.093 = phi i32 [ %i.ak, %.critedge ], [ 0, %.preheader133 ] ; 2 uses
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !86  ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !88
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef i32 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %bb.e unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit, !call_target !169

bb.e:                                             ; preds = %bb.d
  %.not106 = icmp eq i32 %i.aj, 0
  br i1 %.not106, label %bb.f, label %_ZNSt6vectorIhSaIhEED2Ev.exit124

bb.f:                                             ; preds = %bb.e
  %i.ak = add nuw nsw i32 %.093, 1
  %exitcond146 = icmp eq i32 %.093, 1025
  br i1 %exitcond146, label %_ZNSt6vectorIhSaIhEED2Ev.exit124, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !86  ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !88
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = invoke noundef i32 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 2)
          to label %bb.h unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit, !call_target !114

bb.h:                                             ; preds = %bb.g
  %.not107 = icmp eq i32 %i.ap, 2
  br i1 %.not107, label %bb.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit124

bb.i:                                             ; preds = %bb.h
  %i.aq = load i8, ptr %i.b, align 1, !tbaa !99
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ar, 8
  %i.at = load i8, ptr %i.c, align 1, !tbaa !99
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = or disjoint i32 %i.as, %i.au            ; 3 uses
  %3 = load i16, ptr %i.l, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %i.aw = add i16 %4, -2                          ; 4 uses
  %i.ax = icmp samesign ult i32 %i.av, 65281
  br i1 %i.ax, label %_ZNSt6vectorIhSaIhEED2Ev.exit124, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !86  ; 2 uses
  %i.az = zext i16 %i.aw to i64                   ; 2 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !88
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = invoke noundef i32 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef %i.az)
          to label %bb.k unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit, !call_target !114

bb.k:                                             ; preds = %bb.j
  %i.be = zext i16 %i.aw to i32
  %.not108 = icmp eq i32 %i.bd, %i.be
  br i1 %.not108, label %bb.l, label %_ZNSt6vectorIhSaIhEED2Ev.exit124

bb.l:                                             ; preds = %bb.k
  %trunc = trunc nuw i32 %i.av to i16
  switch i16 %trunc, label %.critedge [
    i16 -61, label %bb.m
    i16 -63, label %bb.n
    i16 -64, label %bb.n
    i16 -60, label %bb.q
    i16 -38, label %bb.u
    i16 -37, label %vector.body
    i16 -35, label %bb.v
  ]

vector.body:                                      ; preds = %bb.l
  %wide.load = load <16 x i16>, ptr %i.y, align 1
  %wide.load181 = load <16 x i16>, ptr %i.z, align 1
  %wide.load182 = load <16 x i16>, ptr %i.aa, align 1
  %wide.load183 = load <16 x i16>, ptr %i.ab, align 1
  %i.bf = tail call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %wide.load)
  %i.bg = tail call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %wide.load181)
  %i.bh = tail call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %wide.load182)
  %i.bi = tail call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %wide.load183)
  store <16 x i16> %i.bf, ptr %i.m, align 8, !tbaa !97
  store <16 x i16> %i.bg, ptr %i.ac, align 8, !tbaa !97
  store <16 x i16> %i.bh, ptr %i.ad, align 8, !tbaa !97
  store <16 x i16> %i.bi, ptr %i.ae, align 8, !tbaa !97
  br label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.bj = load i8, ptr %i.r, align 1, !tbaa !99
  %i.bk = zext i8 %i.bj to i32                    ; 2 uses
  %i.bl = lshr i32 %i.bk, 4
  %i.bm = mul nuw nsw i32 %i.bl, %i.bk
  %i.bn = add nuw nsw i32 %i.bm, 3
  %i.bo = and i32 %i.bn, 3
  store i32 %i.bo, ptr %i.s, align 4, !tbaa !123
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.l
  store i32 %i.au, ptr %1, align 8, !tbaa !170
  %i.bp = load i8, ptr %i.b, align 1, !tbaa !99
  %i.bq = zext i8 %i.bp to i32
  store i32 %i.bq, ptr %i.o, align 4, !tbaa !124
  %5 = load <2 x i16>, ptr %i.c, align 1
  %i.br = tail call <2 x i16> @llvm.bswap.v2i16(<2 x i16> %5)
  %i.bs = zext <2 x i16> %i.br to <2 x i32>
  store <2 x i32> %i.bs, ptr %i.t, align 8, !tbaa !120
  %i.bt = load i8, ptr %i.v, align 1, !tbaa !99
  %i.bu = zext i8 %i.bt to i32
  %i.bv = load i32, ptr %i.s, align 4, !tbaa !123
  %i.bw = add nsw i32 %i.bv, %i.bu
  store i32 %i.bw, ptr %i.w, align 8, !tbaa !125
  %i.bx = icmp eq i16 %i.aw, 9
  br i1 %i.bx, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.by = load i32, ptr %i.x, align 4, !tbaa !126
  %.not111 = icmp eq i32 %i.by, 0
  br i1 %.not111, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.bz = load ptr, ptr %i.e, align 8, !tbaa !86  ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !88
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = invoke noundef i32 %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz)
          to label %.critedge unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit, !call_target !94 ; 0 uses

bb.q:                                             ; preds = %bb.l
  br i1 %.not109, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.az
  %.not143 = icmp eq i16 %i.aw, 0
  br i1 %.not143, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r, %bb.t
  %i.cf = phi ptr [ %i.cn, %bb.t ], [ %i.b, %bb.r ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  store ptr %i.cg, ptr %i.a, align 8, !tbaa !98
  %i.ch = load i8, ptr %i.cf, align 1, !tbaa !99  ; 2 uses
  %i.ci = and i8 %i.ch, -20
  %.not110 = icmp eq i8 %i.ci, 0
  br i1 %.not110, label %bb.s, label %.critedge

bb.s:                                             ; preds = %.lr.ph
  %i.cj = invoke noundef ptr @_ZN6LibRaw16make_decoder_refEPPKh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a)
          to label %bb.t unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.ck = zext nneg i8 %i.ch to i64               ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ck
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !101
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ck
  store ptr %i.cj, ptr %i.cm, align 8, !tbaa !101
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !98  ; 2 uses
  %i.co = icmp ult ptr %i.cn, %i.ce
  br i1 %i.co, label %.lr.ph, label %.critedge, !llvm.loop !164

bb.u:                                             ; preds = %bb.l
  %i.cp = load i8, ptr %i.b, align 1, !tbaa !99
  %i.cq = zext i8 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cr ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !99
  %i.cv = zext i8 %i.cu to i32
  store i32 %i.cv, ptr %i.n, align 8, !tbaa !127
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 3
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !99
  %i.cy = and i8 %i.cx, 15
  %i.cz = zext nneg i8 %i.cy to i32
  %i.da = load i32, ptr %i.o, align 4, !tbaa !124
  %i.db = sub nsw i32 %i.da, %i.cz
  store i32 %i.db, ptr %i.o, align 4, !tbaa !124
  br label %.critedge

bb.v:                                             ; preds = %bb.l
  %6 = load i16, ptr %i.b, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %i.dc = zext i16 %7 to i32
  store i32 %i.dc, ptr %i.d, align 4, !tbaa !122
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.t, %vector.body, %bb.r, %bb.l, %bb.u, %bb.v, %bb.p, %bb.o, %bb.n, %bb.q
  %.not112 = icmp eq i32 %i.av, 65498
  br i1 %.not112, label %bb.w, label %bb.d, !llvm.loop !165

bb.w:                                             ; preds = %.critedge
  %i.dd = load i32, ptr %i.o, align 4, !tbaa !124 ; 2 uses
  %i.de = icmp sgt i32 %i.dd, 16
  br i1 %i.de, label %_ZNSt6vectorIhSaIhEED2Ev.exit124, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = load i32, ptr %i.w, align 8, !tbaa !125 ; 3 uses
  %i.dg = icmp sgt i32 %i.df, 6
  %.not113 = icmp eq i32 %i.dd, 0
  %or.cond = or i1 %.not113, %i.dg
  br i1 %or.cond, label %_ZNSt6vectorIhSaIhEED2Ev.exit124, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dh = load i32, ptr %i.t, align 8, !tbaa !128
  %.not114 = icmp eq i32 %i.dh, 0
  br i1 %.not114, label %_ZNSt6vectorIhSaIhEED2Ev.exit124, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.di = load i32, ptr %i.u, align 4, !tbaa !129 ; 2 uses
  %.not115 = icmp eq i32 %i.di, 0
  %.not116 = icmp eq i32 %i.df, 0
  %or.cond122 = or i1 %.not116, %.not115          ; 2 uses
  %brmerge = or i1 %or.cond122, %.not109
  %not.or.cond122 = xor i1 %or.cond122, true
  %.mux = zext i1 %not.or.cond122 to i32
  br i1 %brmerge, label %_ZNSt6vectorIhSaIhEED2Ev.exit124, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dj = load ptr, ptr %i.p, align 8, !tbaa !101 ; 6 uses
  %.not118 = icmp eq ptr %i.dj, null
  br i1 %.not118, label %_ZNSt6vectorIhSaIhEED2Ev.exit124, label %.preheader130.preheader

.preheader130.preheader:                          ; preds = %bb.aa
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !101 ; 2 uses
  %.not121 = icmp eq ptr %i.dl, null
  br i1 %.not121, label %bb.ab, label %.preheader130.1

bb.ab:                                            ; preds = %.preheader130.preheader
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !101
  br label %.preheader130.1

.preheader130.1:                                  ; preds = %.preheader130.preheader, %bb.ab
  %i.dm = phi ptr [ %i.dl, %.preheader130.preheader ], [ %i.dj, %bb.ab ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !101 ; 2 uses
  %.not121.1 = icmp eq ptr %i.do, null
  br i1 %.not121.1, label %bb.ac, label %.preheader130.2

bb.ac:                                            ; preds = %.preheader130.1
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !101
  br label %.preheader130.2

.preheader130.2:                                  ; preds = %bb.ac, %.preheader130.1
  %i.dp = phi ptr [ %i.dm, %bb.ac ], [ %i.do, %.preheader130.1 ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !101 ; 2 uses
  %.not121.2 = icmp eq ptr %i.ds, null
  br i1 %.not121.2, label %bb.ad, label %.preheader130.3

bb.ad:                                            ; preds = %.preheader130.2
  store ptr %i.dp, ptr %i.dr, align 8, !tbaa !101
  br label %.preheader130.3

.preheader130.3:                                  ; preds = %bb.ad, %.preheader130.2
  %i.dt = phi ptr [ %i.dp, %bb.ad ], [ %i.ds, %.preheader130.2 ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !101 ; 2 uses
  %.not121.3 = icmp eq ptr %i.dv, null
  br i1 %.not121.3, label %bb.ae, label %.preheader130.4

bb.ae:                                            ; preds = %.preheader130.3
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !101
  br label %.preheader130.4

.preheader130.4:                                  ; preds = %bb.ae, %.preheader130.3
  %i.dw = phi ptr [ %i.dt, %bb.ae ], [ %i.dv, %.preheader130.3 ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !101 ; 2 uses
  %.not121.4 = icmp eq ptr %i.dy, null
  br i1 %.not121.4, label %bb.af, label %.preheader130.5

bb.af:                                            ; preds = %.preheader130.4
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !101
  br label %.preheader130.5

.preheader130.5:                                  ; preds = %bb.af, %.preheader130.4
  %i.dz = phi ptr [ %i.dw, %bb.af ], [ %i.dy, %.preheader130.4 ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !101 ; 2 uses
  %.not121.5 = icmp eq ptr %i.eb, null
  br i1 %.not121.5, label %bb.ag, label %.preheader130.6

bb.ag:                                            ; preds = %.preheader130.5
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !101
  br label %.preheader130.6

.preheader130.6:                                  ; preds = %bb.ag, %.preheader130.5
  %i.ec = phi ptr [ %i.dz, %bb.ag ], [ %i.eb, %.preheader130.5 ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !101 ; 2 uses
  %.not121.6 = icmp eq ptr %i.ee, null
  br i1 %.not121.6, label %bb.ah, label %.preheader130.7

bb.ah:                                            ; preds = %.preheader130.6
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !101
  br label %.preheader130.7

.preheader130.7:                                  ; preds = %bb.ah, %.preheader130.6
  %i.ef = phi ptr [ %i.ec, %bb.ah ], [ %i.ee, %.preheader130.6 ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !101 ; 2 uses
  %.not121.7 = icmp eq ptr %i.eh, null
  br i1 %.not121.7, label %bb.ai, label %.preheader130.8

bb.ai:                                            ; preds = %.preheader130.7
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !101
  br label %.preheader130.8

.preheader130.8:                                  ; preds = %bb.ai, %.preheader130.7
  %i.ei = phi ptr [ %i.ef, %bb.ai ], [ %i.eh, %.preheader130.7 ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !101 ; 2 uses
  %.not121.8 = icmp eq ptr %i.ek, null
  br i1 %.not121.8, label %bb.aj, label %.preheader130.9

bb.aj:                                            ; preds = %.preheader130.8
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !101
  br label %.preheader130.9

.preheader130.9:                                  ; preds = %bb.aj, %.preheader130.8
  %i.el = phi ptr [ %i.ei, %bb.aj ], [ %i.ek, %.preheader130.8 ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !101 ; 2 uses
  %.not121.9 = icmp eq ptr %i.en, null
  br i1 %.not121.9, label %bb.ak, label %.preheader130.10

bb.ak:                                            ; preds = %.preheader130.9
  store ptr %i.el, ptr %i.em, align 8, !tbaa !101
  br label %.preheader130.10

.preheader130.10:                                 ; preds = %bb.ak, %.preheader130.9
  %i.eo = phi ptr [ %i.el, %bb.ak ], [ %i.en, %.preheader130.9 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !101 ; 2 uses
  %.not121.10 = icmp eq ptr %i.eq, null
  br i1 %.not121.10, label %bb.al, label %.preheader130.11

bb.al:                                            ; preds = %.preheader130.10
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !101
  br label %.preheader130.11

.preheader130.11:                                 ; preds = %bb.al, %.preheader130.10
  %i.er = phi ptr [ %i.eo, %bb.al ], [ %i.eq, %.preheader130.10 ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !101 ; 2 uses
  %.not121.11 = icmp eq ptr %i.et, null
  br i1 %.not121.11, label %bb.am, label %.preheader130.12

bb.am:                                            ; preds = %.preheader130.11
  store ptr %i.er, ptr %i.es, align 8, !tbaa !101
  br label %.preheader130.12

.preheader130.12:                                 ; preds = %bb.am, %.preheader130.11
  %i.eu = phi ptr [ %i.er, %bb.am ], [ %i.et, %.preheader130.11 ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !101 ; 2 uses
  %.not121.12 = icmp eq ptr %i.ew, null
  br i1 %.not121.12, label %bb.an, label %.preheader130.13

bb.an:                                            ; preds = %.preheader130.12
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !101
  br label %.preheader130.13

.preheader130.13:                                 ; preds = %bb.an, %.preheader130.12
  %i.ex = phi ptr [ %i.eu, %bb.an ], [ %i.ew, %.preheader130.12 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !101 ; 2 uses
  %.not121.13 = icmp eq ptr %i.ez, null
  br i1 %.not121.13, label %bb.ao, label %.preheader130.14

bb.ao:                                            ; preds = %.preheader130.13
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !101
  br label %.preheader130.14

.preheader130.14:                                 ; preds = %bb.ao, %.preheader130.13
  %i.fa = phi ptr [ %i.ex, %bb.ao ], [ %i.ez, %.preheader130.13 ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !101 ; 2 uses
  %.not121.14 = icmp eq ptr %i.fc, null
  br i1 %.not121.14, label %bb.ap, label %.preheader130.15

bb.ap:                                            ; preds = %.preheader130.14
end_hunk_0
