Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/scan-test?download=true
inline.NumInlined: 4258
inline.NumDeleted: 1323
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  %.pre2.i.i211 = add i64 %.pre.i.i210, 1
  %.pre676 = load ptr, ptr %5, align 8, !tbaa !866
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208: ; preds = %.noexc212, %bb.v
  %i.il = phi ptr [ %i.hn, %bb.v ], [ %.pre676, %.noexc212 ]
  %.pre-phi.i.i209 = phi i64 [ %i.ih, %bb.v ], [ %.pre2.i.i211, %.noexc212 ]
  %i.im = phi i64 [ %i.ho, %bb.v ], [ %.pre.i.i210, %.noexc212 ]
  store i64 %.pre-phi.i.i209, ptr %i.c, align 8, !tbaa !876
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.im
  store i32 %.lcssa1626, ptr %i.in, align 4, !tbaa !59
  br label %_ZN3fmt3v126detail6bigintlSEi.exit213

_ZN3fmt3v126detail6bigintlSEi.exit213:            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit196, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208, %._crit_edge.i206, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit
  %i.io = load ptr, ptr %6, align 8, !tbaa !866
  store i32 1, ptr %i.io, align 4, !tbaa !59
  %i.ip = load i64, ptr %i.f, align 8, !tbaa !867 ; 2 uses
  %.not8.i.i217.not = icmp eq i64 %i.ip, 0
  br i1 %.not8.i.i217.not, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit213
  %i.iq = load ptr, ptr %i.g, align 8, !tbaa !864
  invoke void %i.iq(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef 1)
          to label %.noexc219 unwind label %.loopexit.split-lp, !inline_history !894

.noexc219:                                        ; preds = %bb.x
  %.pre.i.i.i.i218 = load i64, ptr %i.f, align 8, !tbaa !867 ; 2 uses
  %i.ir = icmp ne i64 %.pre.i.i.i.i218, 0
  %i.is = zext i1 %i.ir to i64
  br label %bb.y

bb.y:                                             ; preds = %.noexc219, %_ZN3fmt3v126detail6bigintlSEi.exit213
  %i.it = phi i64 [ %i.ip, %_ZN3fmt3v126detail6bigintlSEi.exit213 ], [ %.pre.i.i.i.i218, %.noexc219 ]
  %i.iu = phi i64 [ 1, %_ZN3fmt3v126detail6bigintlSEi.exit213 ], [ %i.is, %.noexc219 ] ; 2 uses
  store i64 %i.iu, ptr %i.h, align 8, !tbaa !876
  %i.iv = load i32, ptr %i.w, align 16, !tbaa !872
  %i.iw = sub nsw i32 %i.v, %i.iv                 ; 2 uses
  %i.ix = sdiv i32 %i.iw, 32
  store i32 %i.ix, ptr %i.j, align 8, !tbaa !868
  %i.iy = srem i32 %i.iw, 32                      ; 3 uses
  %i.iz = icmp eq i32 %i.iy, 0
  %.not19.i221 = icmp eq i64 %i.iu, 0
  %or.cond559 = or i1 %.not19.i221, %i.iz
  %extract.t816 = trunc i128 %i.gj to i32         ; 3 uses
  br i1 %or.cond559, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %bb.y
  %i.ja = load ptr, ptr %6, align 8, !tbaa !866   ; 3 uses
  %i.jb = sub nsw i32 32, %i.iy
  %i.jc = load i32, ptr %i.ja, align 4, !tbaa !59 ; 2 uses
  %i.jd = lshr i32 %i.jc, %i.jb                   ; 2 uses
  %i.je = shl i32 %i.jc, %i.iy
  store i32 %i.je, ptr %i.ja, align 4, !tbaa !59
  %.not.i227 = icmp eq i32 %i.jd, 0
  br i1 %.not.i227, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i222
  %.not562 = icmp ugt i64 %i.it, 1
  br i1 %.not562, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jf = load ptr, ptr %i.g, align 8, !tbaa !864
  invoke void %i.jf(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef 2)
          to label %.noexc232 unwind label %.loopexit.split-lp, !inline_history !881

.noexc232:                                        ; preds = %bb.aa
  %.pre.i.i230 = load i64, ptr %i.h, align 8, !tbaa !876 ; 2 uses
  %.pre2.i.i231 = add i64 %.pre.i.i230, 1
  %.pre677 = load ptr, ptr %6, align 8, !tbaa !866
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228: ; preds = %.noexc232, %bb.z
  %i.jg = phi ptr [ %i.ja, %bb.z ], [ %.pre677, %.noexc232 ]
  %.pre-phi.i.i229 = phi i64 [ 2, %bb.z ], [ %.pre2.i.i231, %.noexc232 ]
  %i.jh = phi i64 [ 1, %bb.z ], [ %.pre.i.i230, %.noexc232 ]
  store i64 %.pre-phi.i.i229, ptr %i.h, align 8, !tbaa !876
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.jh
  store i32 %i.jd, ptr %i.ji, align 4, !tbaa !59
  br label %_ZN3fmt3v126detail6bigintlSEi.exit168

bb.ab:                                            ; preds = %bb.n
  %i.jj = load i128, ptr %0, align 16, !tbaa !874 ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.05.i.i234 = phi i128 [ %i.jj, %bb.ab ], [ %i.jn, %bb.ac ] ; 2 uses
  %.0.i.i235 = phi i64 [ 0, %bb.ab ], [ %i.jl, %bb.ac ] ; 7 uses
  %i.jk = trunc i128 %.05.i.i234 to i32
  %i.jl = add nuw nsw i64 %.0.i.i235, 1           ; 6 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0.i.i235
  store i32 %i.jk, ptr %i.jm, align 4, !tbaa !59
  %i.jn = lshr i128 %.05.i.i234, 32               ; 2 uses
  %.not.i.i236 = icmp eq i128 %i.jn, 0
  br i1 %.not.i.i236, label %bb.ad, label %bb.ac, !llvm.loop !875

bb.ad:                                            ; preds = %bb.ac
  %.not8.i.i237 = icmp samesign ult i64 %.0.i.i235, 32
  br i1 %.not8.i.i237, label %.lr.ph.i242, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jo = call noalias dereferenceable_or_null(192) ptr @malloc(i64 noundef 192) #38 ; 3 uses
  %.not.i.i.i893 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i893, label %.invoke1568, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store ptr %i.jo, ptr %5, align 8, !tbaa !866
  store i64 48, ptr %i.a, align 8, !tbaa !867
  br label %.lr.ph.i242

.lr.ph.i242:                                      ; preds = %bb.ad, %bb.af
  %i.jp = phi ptr [ %i.jo, %bb.af ], [ %i.d, %bb.ad ] ; 6 uses
  %i.jq = phi i64 [ 48, %bb.af ], [ 32, %bb.ad ]  ; 3 uses
  store i64 %i.jl, ptr %i.c, align 8, !tbaa !876
  store i32 0, ptr %i.e, align 8, !tbaa !868
  %i.jr = xor i32 %i.u, 31                        ; 2 uses
  %i.js = add nuw i64 %.0.i.i235, 1               ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.0.i.i235, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i242
  %n.vec = and i64 %i.js, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.jr, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1640 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat1641 = shufflevector <4 x i32> %broadcast.splatinsert1640, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.jw, %vector.body ]
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %index ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.jt, align 4, !tbaa !59 ; 2 uses
  %wide.load1642 = load <4 x i32>, ptr %i.ju, align 4, !tbaa !59 ; 2 uses
  %i.jv = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.jw = lshr <4 x i32> %wide.load1642, %broadcast.splat ; 3 uses
  %i.jx = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.jv, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.jy = shufflevector <4 x i32> %i.jv, <4 x i32> %i.jw, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.jz = shl <4 x i32> %wide.load, %broadcast.splat1641
  %i.ka = shl <4 x i32> %wide.load1642, %broadcast.splat1641
  %i.kb = add <4 x i32> %i.jz, %i.jx
  %i.kc = add <4 x i32> %i.ka, %i.jy
  store <4 x i32> %i.kb, ptr %i.jt, align 4, !tbaa !59
  store <4 x i32> %i.kc, ptr %i.ju, align 4, !tbaa !59
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kd = icmp eq i64 %index.next, %n.vec
  br i1 %i.kd, label %middle.block, label %vector.body, !llvm.loop !895

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.jw, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %i.js, %n.vec
  br i1 %cmp.n, label %._crit_edge.i246, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i242, %middle.block
  %.01418.i243.ph = phi i64 [ 0, %.lr.ph.i242 ], [ %n.vec, %middle.block ]
  %.017.i244.ph = phi i32 [ 0, %.lr.ph.i242 ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i246:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa1632 = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.kg, %scalar.ph ] ; 2 uses
  %.not.i247 = icmp eq i32 %.lcssa1632, 0
  br i1 %.not.i247, label %_ZN3fmt3v126detail6bigintlSEi.exit253, label %bb.ag

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01418.i243 = phi i64 [ %i.kj, %scalar.ph ], [ %.01418.i243.ph, %scalar.ph.preheader ] ; 3 uses
  %.017.i244 = phi i32 [ %i.kg, %scalar.ph ], [ %.017.i244.ph, %scalar.ph.preheader ]
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.01418.i243 ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !59 ; 2 uses
  %i.kg = lshr i32 %i.kf, %i.jr                   ; 2 uses
  %i.kh = shl i32 %i.kf, %i.v
  %i.ki = add i32 %i.kh, %.017.i244
  store i32 %i.ki, ptr %i.ke, align 4, !tbaa !59
  %i.kj = add nuw nsw i64 %.01418.i243, 1
  %exitcond.not.i245 = icmp eq i64 %.01418.i243, %.0.i.i235
  br i1 %exitcond.not.i245, label %._crit_edge.i246, label %scalar.ph, !llvm.loop !896

bb.ag:                                            ; preds = %._crit_edge.i246
  %i.kk = add nuw i64 %.0.i.i235, 2               ; 2 uses
  %.not561 = icmp samesign ult i64 %i.jl, %i.jq
  br i1 %.not561, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i248, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kl = lshr exact i64 %i.jq, 1
  %i.km = add nuw nsw i64 %i.kl, %i.jq
  %.0.i1232 = call i64 @llvm.umax.i64(i64 %i.kk, i64 %i.km) ; 2 uses
  %i.kn = shl i64 %.0.i1232, 2
  %i.ko = call noalias ptr @malloc(i64 noundef %i.kn) #38 ; 4 uses
  %.not.i.i.i1233 = icmp eq ptr %i.ko, null
  br i1 %.not.i.i.i1233, label %.invoke1568, label %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i1234

.invoke1568:                                      ; preds = %bb.ah, %bb.e, %bb.ae, %bb.h
  %i.kp = call ptr @__cxa_allocate_exception(i64 8) #34 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.kp, align 8, !tbaa !29
  invoke void @__cxa_throw(ptr nonnull %i.kp, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #33
          to label %.cont1569 unwind label %.loopexit.split-lp

.cont1569:                                        ; preds = %.invoke1568
  unreachable

_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i1234: ; preds = %bb.ah
  %i.kq = shl nuw nsw i64 %i.jl, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ko, ptr noundef nonnull align 4 dereferenceable(1) %i.jp, i64 %i.kq, i1 false)
  store ptr %i.ko, ptr %5, align 8, !tbaa !866
  store i64 %.0.i1232, ptr %i.a, align 8, !tbaa !867
  %.not.i1235 = icmp eq ptr %i.jp, %i.d
  br i1 %.not.i1235, label %.noexc252, label %bb.ai

bb.ai:                                            ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i1234
  call void @free(ptr noundef nonnull %i.jp) #34
  %.pre.i.i250.pre = load i64, ptr %i.c, align 8, !tbaa !876
  %.pre.pre = load ptr, ptr %5, align 8, !tbaa !866
  br label %.noexc252

.noexc252:                                        ; preds = %bb.ai, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i1234
  %.pre = phi ptr [ %.pre.pre, %bb.ai ], [ %i.ko, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i1234 ]
  %.pre.i.i250 = phi i64 [ %.pre.i.i250.pre, %bb.ai ], [ %i.jl, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i1234 ] ; 2 uses
  %.pre2.i.i251 = add i64 %.pre.i.i250, 1
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i248

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i248: ; preds = %.noexc252, %bb.ag
  %i.kr = phi ptr [ %i.jp, %bb.ag ], [ %.pre, %.noexc252 ]
  %.pre-phi.i.i249 = phi i64 [ %i.kk, %bb.ag ], [ %.pre2.i.i251, %.noexc252 ]
  %i.ks = phi i64 [ %i.jl, %bb.ag ], [ %.pre.i.i250, %.noexc252 ]
  store i64 %.pre-phi.i.i249, ptr %i.c, align 8, !tbaa !876
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %i.ks
  store i32 %.lcssa1632, ptr %i.kt, align 4, !tbaa !59
  br label %_ZN3fmt3v126detail6bigintlSEi.exit253

_ZN3fmt3v126detail6bigintlSEi.exit253:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i248, %._crit_edge.i246
  %i.ku = load i32, ptr %4, align 4, !tbaa !59
  invoke void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.ku)
          to label %bb.aj unwind label %.loopexit.split-lp

bb.aj:                                            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit253
  %i.kv = sub nsw i32 %i.v, %i.x                  ; 2 uses
  %i.kw = lshr i32 %i.kv, 5
  %i.kx = load i32, ptr %i.j, align 8, !tbaa !868
  %i.ky = add nsw i32 %i.kx, %i.kw
  store i32 %i.ky, ptr %i.j, align 8, !tbaa !868
  %i.kz = and i32 %i.kv, 31                       ; 4 uses
  %i.la = icmp eq i32 %i.kz, 0
  br i1 %i.la, label %_ZN3fmt3v126detail6bigintlSEi.exit266, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lb = load i64, ptr %i.h, align 8, !tbaa !876 ; 7 uses
  %.not19.i254 = icmp eq i64 %i.lb, 0
  br i1 %.not19.i254, label %_ZN3fmt3v126detail6bigintlSEi.exit266, label %.lr.ph.i255

.lr.ph.i255:                                      ; preds = %bb.ak
  %i.lc = load ptr, ptr %6, align 8, !tbaa !866   ; 3 uses
  %i.ld = sub nuw nsw i32 32, %i.kz               ; 2 uses
  %min.iters.check1644 = icmp ult i64 %i.lb, 8
  br i1 %min.iters.check1644, label %scalar.ph1643.preheader, label %vector.ph1645

vector.ph1645:                                    ; preds = %.lr.ph.i255
  %n.vec1646 = and i64 %i.lb, -8                  ; 3 uses
  %broadcast.splatinsert1647 = insertelement <4 x i32> poison, i32 %i.ld, i64 0
  %broadcast.splat1648 = shufflevector <4 x i32> %broadcast.splatinsert1647, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1649 = insertelement <4 x i32> poison, i32 %i.kz, i64 0
  %broadcast.splat1650 = shufflevector <4 x i32> %broadcast.splatinsert1649, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1651

vector.body1651:                                  ; preds = %vector.body1651, %vector.ph1645
  %index1652 = phi i64 [ 0, %vector.ph1645 ], [ %index.next1656, %vector.body1651 ] ; 2 uses
  %vector.recur1653 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1645 ], [ %i.lh, %vector.body1651 ]
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %index1652 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16 ; 2 uses
  %wide.load1654 = load <4 x i32>, ptr %i.le, align 4, !tbaa !59 ; 2 uses
  %wide.load1655 = load <4 x i32>, ptr %i.lf, align 4, !tbaa !59 ; 2 uses
  %i.lg = lshr <4 x i32> %wide.load1654, %broadcast.splat1648 ; 2 uses
  %i.lh = lshr <4 x i32> %wide.load1655, %broadcast.splat1648 ; 3 uses
  %i.li = shufflevector <4 x i32> %vector.recur1653, <4 x i32> %i.lg, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.lj = shufflevector <4 x i32> %i.lg, <4 x i32> %i.lh, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.lk = shl <4 x i32> %wide.load1654, %broadcast.splat1650
  %i.ll = shl <4 x i32> %wide.load1655, %broadcast.splat1650
  %i.lm = add <4 x i32> %i.lk, %i.li
  %i.ln = add <4 x i32> %i.ll, %i.lj
  store <4 x i32> %i.lm, ptr %i.le, align 4, !tbaa !59
  store <4 x i32> %i.ln, ptr %i.lf, align 4, !tbaa !59
  %index.next1656 = add nuw i64 %index1652, 8     ; 2 uses
  %i.lo = icmp eq i64 %index.next1656, %n.vec1646
  br i1 %i.lo, label %middle.block1657, label %vector.body1651, !llvm.loop !897

middle.block1657:                                 ; preds = %vector.body1651
  %vector.recur.extract1658 = extractelement <4 x i32> %i.lh, i64 3 ; 2 uses
  %cmp.n1659 = icmp eq i64 %i.lb, %n.vec1646
  br i1 %cmp.n1659, label %._crit_edge.i259, label %scalar.ph1643.preheader

scalar.ph1643.preheader:                          ; preds = %.lr.ph.i255, %middle.block1657
  %.01418.i256.ph = phi i64 [ 0, %.lr.ph.i255 ], [ %n.vec1646, %middle.block1657 ]
  %.017.i257.ph = phi i32 [ 0, %.lr.ph.i255 ], [ %vector.recur.extract1658, %middle.block1657 ]
  br label %scalar.ph1643

._crit_edge.i259:                                 ; preds = %scalar.ph1643, %middle.block1657
  %.lcssa1631 = phi i32 [ %vector.recur.extract1658, %middle.block1657 ], [ %i.lr, %scalar.ph1643 ] ; 2 uses
  %.not.i260 = icmp eq i32 %.lcssa1631, 0
  br i1 %.not.i260, label %_ZN3fmt3v126detail6bigintlSEi.exit266, label %bb.al

scalar.ph1643:                                    ; preds = %scalar.ph1643.preheader, %scalar.ph1643
  %.01418.i256 = phi i64 [ %i.lu, %scalar.ph1643 ], [ %.01418.i256.ph, %scalar.ph1643.preheader ] ; 2 uses
  %.017.i257 = phi i32 [ %i.lr, %scalar.ph1643 ], [ %.017.i257.ph, %scalar.ph1643.preheader ]
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %.01418.i256 ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !59 ; 2 uses
  %i.lr = lshr i32 %i.lq, %i.ld                   ; 2 uses
  %i.ls = shl i32 %i.lq, %i.kz
  %i.lt = add i32 %i.ls, %.017.i257
  store i32 %i.lt, ptr %i.lp, align 4, !tbaa !59
  %i.lu = add nuw i64 %.01418.i256, 1             ; 2 uses
  %exitcond.not.i258 = icmp eq i64 %i.lu, %i.lb
  br i1 %exitcond.not.i258, label %._crit_edge.i259, label %scalar.ph1643, !llvm.loop !898

bb.al:                                            ; preds = %._crit_edge.i259
  %i.lv = add i64 %i.lb, 1                        ; 3 uses
  %i.lw = load i64, ptr %i.f, align 8, !tbaa !867
  %i.lx = icmp ugt i64 %i.lv, %i.lw
  br i1 %i.lx, label %bb.am, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i261

bb.am:                                            ; preds = %bb.al
  %i.ly = load ptr, ptr %i.g, align 8, !tbaa !864
  invoke void %i.ly(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.lv)
          to label %.noexc265 unwind label %.loopexit.split-lp, !inline_history !881

.noexc265:                                        ; preds = %bb.am
  %.pre.i.i263 = load i64, ptr %i.h, align 8, !tbaa !876 ; 2 uses
  %.pre2.i.i264 = add i64 %.pre.i.i263, 1
  %.pre673 = load ptr, ptr %6, align 8, !tbaa !866
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i261

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i261: ; preds = %.noexc265, %bb.al
  %i.lz = phi ptr [ %i.lc, %bb.al ], [ %.pre673, %.noexc265 ]
  %.pre-phi.i.i262 = phi i64 [ %i.lv, %bb.al ], [ %.pre2.i.i264, %.noexc265 ]
  %i.ma = phi i64 [ %i.lb, %bb.al ], [ %.pre.i.i263, %.noexc265 ]
  store i64 %.pre-phi.i.i262, ptr %i.h, align 8, !tbaa !876
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.ma
  store i32 %.lcssa1631, ptr %i.mb, align 4, !tbaa !59
  br label %_ZN3fmt3v126detail6bigintlSEi.exit266

_ZN3fmt3v126detail6bigintlSEi.exit266:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i261, %._crit_edge.i259, %bb.ak, %bb.aj
  %i.mc = load ptr, ptr %7, align 8, !tbaa !866
  store i32 1, ptr %i.mc, align 4, !tbaa !59
  %i.md = load i64, ptr %i.k, align 8, !tbaa !867
  %.not8.i.i270.not = icmp eq i64 %i.md, 0
  br i1 %.not8.i.i270.not, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit266
  %i.me = load ptr, ptr %i.l, align 8, !tbaa !864
  invoke void %i.me(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef 1)
          to label %.noexc272 unwind label %.loopexit.split-lp, !inline_history !894

.noexc272:                                        ; preds = %bb.an
  %.pre.i.i.i.i271 = load i64, ptr %i.k, align 8, !tbaa !867
  %i.mf = icmp ne i64 %.pre.i.i.i.i271, 0
  %i.mg = zext i1 %i.mf to i64
  br label %bb.ao

bb.ao:                                            ; preds = %.noexc272, %_ZN3fmt3v126detail6bigintlSEi.exit266
  %i.mh = phi i64 [ 1, %_ZN3fmt3v126detail6bigintlSEi.exit266 ], [ %i.mg, %.noexc272 ]
  store i64 %i.mh, ptr %i.m, align 8, !tbaa !876
  store i32 0, ptr %i.o, align 8, !tbaa !868
  %extract.t812 = trunc i128 %i.jj to i32         ; 2 uses
  br i1 %.not, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mi = load ptr, ptr %8, align 8, !tbaa !866
  store i32 2, ptr %i.mi, align 4, !tbaa !59
  %i.mj = load i64, ptr %i.p, align 8, !tbaa !867
  %.not8.i.i277.not = icmp eq i64 %i.mj, 0
  br i1 %.not8.i.i277.not, label %bb.aq, label %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit

bb.aq:                                            ; preds = %bb.ap
  %i.mk = load ptr, ptr %i.q, align 8, !tbaa !864
  invoke void %i.mk(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef 1)
          to label %.noexc279 unwind label %.loopexit.split-lp, !inline_history !899

.noexc279:                                        ; preds = %bb.aq
  %.pre.i.i.i.i278 = load i64, ptr %i.p, align 8, !tbaa !867
  %i.ml = icmp ne i64 %.pre.i.i.i.i278, 0
  %i.mm = zext i1 %i.ml to i64
  br label %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit

_ZN3fmt3v126detail6bigintaSIyEEvT_.exit:          ; preds = %bb.ap, %.noexc279
  %i.mn = phi i64 [ 1, %bb.ap ], [ %i.mm, %.noexc279 ]
  store i64 %i.mn, ptr %i.r, align 8, !tbaa !876
  store i32 0, ptr %i.t, align 8, !tbaa !868
  br label %_ZN3fmt3v126detail6bigintlSEi.exit168

_ZN3fmt3v126detail6bigintlSEi.exit168:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228, %.lr.ph.i222, %bb.y, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163, %._crit_edge.i161, %bb.k, %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit, %bb.ao
  %.off0 = phi i32 [ %extract.t812, %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit ], [ %extract.t814, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163 ], [ %extract.t812, %bb.ao ], [ %extract.t816, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228 ], [ %extract.t814, %bb.k ], [ %extract.t814, %._crit_edge.i161 ], [ %extract.t816, %bb.y ], [ %extract.t816, %.lr.ph.i222 ]
  %.2 = phi ptr [ %8, %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit ], [ %.079, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163 ], [ null, %bb.ao ], [ %.1, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228 ], [ %.079, %bb.k ], [ %.079, %._crit_edge.i161 ], [ %.1, %bb.y ], [ %.1, %.lr.ph.i222 ] ; 16 uses
  %i.mo = and i32 %.off0, 1                       ; 2 uses
  %i.mp = xor i32 %i.mo, 1                        ; 2 uses
  %.not97 = icmp eq ptr %.2, null                 ; 7 uses
  %spec.store.select = select i1 %.not97, ptr %7, ptr %.2 ; 2 uses
  %i.mq = icmp slt i32 %2, 0                      ; 2 uses
  %i.mr = and i32 %1, 2
  %.not98 = icmp eq i32 %i.mr, 0
  br i1 %.not98, label %bb.br, label %bb.ar

bb.ar:                                            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit168
  %i.ms = load i64, ptr %i.c, align 8, !tbaa !876 ; 8 uses
  %i.mt = trunc i64 %i.ms to i32
  %i.mu = load i32, ptr %i.e, align 8, !tbaa !868 ; 3 uses
end_hunk_0
