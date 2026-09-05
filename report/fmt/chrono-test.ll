Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/chrono-test?download=true
inline.NumInlined: 21374
inline.NumDeleted: 3955
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 160
loop-unroll.NumUnrolled: 225
begin_hunk_0_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  %i.jj = add i32 %i.ji, %.017.i204
  store i32 %i.jj, ptr %i.jf, align 4, !tbaa !239
  %i.jk = add nuw i64 %.01418.i203, 1             ; 2 uses
  %exitcond.not.i205 = icmp eq i64 %i.jk, %i.is
  br i1 %exitcond.not.i205, label %._crit_edge.i206, label %scalar.ph1352, !llvm.loop !5710

bb.ac:                                            ; preds = %._crit_edge.i206
  %i.jl = add i64 %i.is, 1                        ; 3 uses
  %i.jm = load i64, ptr %i.a, align 8, !tbaa !533
  %i.jn = icmp ugt i64 %i.jl, %i.jm
  br i1 %i.jn, label %bb.ad, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208

bb.ad:                                            ; preds = %bb.ac
  %i.jo = load ptr, ptr %i.b, align 8, !tbaa !531
  invoke void %i.jo(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.jl)
          to label %.noexc212 unwind label %.loopexit.split-lp, !inline_history !5695

.noexc212:                                        ; preds = %bb.ad
  %.pre.i.i210 = load i64, ptr %i.c, align 8, !tbaa !538 ; 2 uses
  %.pre2.i.i211 = add i64 %.pre.i.i210, 1
  %.pre676 = load ptr, ptr %5, align 8, !tbaa !532
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208: ; preds = %.noexc212, %bb.ac
  %i.jp = phi ptr [ %i.ir, %bb.ac ], [ %.pre676, %.noexc212 ]
  %.pre-phi.i.i209 = phi i64 [ %i.jl, %bb.ac ], [ %.pre2.i.i211, %.noexc212 ]
  %i.jq = phi i64 [ %i.is, %bb.ac ], [ %.pre.i.i210, %.noexc212 ]
  store i64 %.pre-phi.i.i209, ptr %i.c, align 8, !tbaa !538
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.jq
  store i32 %.lcssa1270, ptr %i.jr, align 4, !tbaa !239
  br label %_ZN3fmt3v126detail6bigintlSEi.exit213

_ZN3fmt3v126detail6bigintlSEi.exit213:            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit196, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208, %._crit_edge.i206, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit
  %i.js = load ptr, ptr %6, align 8, !tbaa !532
  store i32 1, ptr %i.js, align 4, !tbaa !239
  %i.jt = load i64, ptr %i.f, align 8, !tbaa !533 ; 2 uses
  %.not8.i.i217.not = icmp eq i64 %i.jt, 0
  br i1 %.not8.i.i217.not, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit213
  %i.ju = load ptr, ptr %i.g, align 8, !tbaa !531
  invoke void %i.ju(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef 1)
          to label %.noexc219 unwind label %.loopexit.split-lp, !inline_history !5696

.noexc219:                                        ; preds = %bb.ae
  %.pre.i.i.i.i218 = load i64, ptr %i.f, align 8, !tbaa !533 ; 2 uses
  %i.jv = icmp ne i64 %.pre.i.i.i.i218, 0
  %i.jw = zext i1 %i.jv to i64
  br label %bb.af

bb.af:                                            ; preds = %.noexc219, %_ZN3fmt3v126detail6bigintlSEi.exit213
  %i.jx = phi i64 [ %i.jt, %_ZN3fmt3v126detail6bigintlSEi.exit213 ], [ %.pre.i.i.i.i218, %.noexc219 ]
  %i.jy = phi i64 [ 1, %_ZN3fmt3v126detail6bigintlSEi.exit213 ], [ %i.jw, %.noexc219 ] ; 2 uses
  store i64 %i.jy, ptr %i.h, align 8, !tbaa !538
  %i.jz = load i32, ptr %i.w, align 16, !tbaa !5724
  %i.ka = sub nsw i32 %i.v, %i.jz                 ; 2 uses
  %i.kb = sdiv i32 %i.ka, 32
  store i32 %i.kb, ptr %i.j, align 8, !tbaa !537
  %i.kc = srem i32 %i.ka, 32                      ; 3 uses
  %i.kd = icmp eq i32 %i.kc, 0
  %.not19.i221 = icmp eq i64 %i.jy, 0
  %or.cond559 = or i1 %.not19.i221, %i.kd
  %extract.t816 = trunc i128 %i.hn to i32         ; 3 uses
  br i1 %or.cond559, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %bb.af
  %i.ke = load ptr, ptr %6, align 8, !tbaa !532   ; 3 uses
  %i.kf = sub nsw i32 32, %i.kc
  %i.kg = load i32, ptr %i.ke, align 4, !tbaa !239 ; 2 uses
  %i.kh = lshr i32 %i.kg, %i.kf                   ; 2 uses
  %i.ki = shl i32 %i.kg, %i.kc
  store i32 %i.ki, ptr %i.ke, align 4, !tbaa !239
  %.not.i227 = icmp eq i32 %i.kh, 0
  br i1 %.not.i227, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i222
  %.not562 = icmp ugt i64 %i.jx, 1
  br i1 %.not562, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kj = load ptr, ptr %i.g, align 8, !tbaa !531
  invoke void %i.kj(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef 2)
          to label %.noexc232 unwind label %.loopexit.split-lp, !inline_history !5695

.noexc232:                                        ; preds = %bb.ah
  %.pre.i.i230 = load i64, ptr %i.h, align 8, !tbaa !538 ; 2 uses
  %.pre2.i.i231 = add i64 %.pre.i.i230, 1
  %.pre677 = load ptr, ptr %6, align 8, !tbaa !532
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228: ; preds = %.noexc232, %bb.ag
  %i.kk = phi ptr [ %i.ke, %bb.ag ], [ %.pre677, %.noexc232 ]
  %.pre-phi.i.i229 = phi i64 [ 2, %bb.ag ], [ %.pre2.i.i231, %.noexc232 ]
  %i.kl = phi i64 [ 1, %bb.ag ], [ %.pre.i.i230, %.noexc232 ]
  store i64 %.pre-phi.i.i229, ptr %i.h, align 8, !tbaa !538
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %i.kl
  store i32 %i.kh, ptr %i.km, align 4, !tbaa !239
  br label %_ZN3fmt3v126detail6bigintlSEi.exit168

bb.ai:                                            ; preds = %bb.u
  %i.kn = load i128, ptr %0, align 16, !tbaa !5725 ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.05.i.i234 = phi i128 [ %i.kn, %bb.ai ], [ %i.kr, %bb.aj ] ; 2 uses
  %.0.i.i235 = phi i64 [ 0, %bb.ai ], [ %i.kp, %bb.aj ] ; 7 uses
  %i.ko = trunc i128 %.05.i.i234 to i32
  %i.kp = add nuw nsw i64 %.0.i.i235, 1           ; 4 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0.i.i235
  store i32 %i.ko, ptr %i.kq, align 4, !tbaa !239
  %i.kr = lshr i128 %.05.i.i234, 32               ; 2 uses
  %.not.i.i236 = icmp eq i128 %i.kr, 0
  br i1 %.not.i.i236, label %bb.ak, label %bb.aj, !llvm.loop !5692

bb.ak:                                            ; preds = %bb.aj
  %.not8.i.i237 = icmp samesign ult i64 %.0.i.i235, 32
  br i1 %.not8.i.i237, label %.lr.ph.i242, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ks = invoke noundef ptr @_ZN3fmt3v126detail8allocateEm(i64 noundef 192)
          to label %bb.am unwind label %.loopexit.split-lp ; 3 uses

bb.am:                                            ; preds = %bb.al
  %i.kt = load i64, ptr %i.c, align 8, !tbaa !538 ; 2 uses
  %i.ku = icmp ult i64 %i.kt, 49
  call void @llvm.assume(i1 %i.ku)
  %i.kv = shl nuw nsw i64 %i.kt, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ks, ptr nonnull align 8 %i.d, i64 %i.kv, i1 false)
  store ptr %i.ks, ptr %5, align 8, !tbaa !532
  store i64 48, ptr %i.a, align 8, !tbaa !533
  br label %.lr.ph.i242

.lr.ph.i242:                                      ; preds = %bb.ak, %bb.am
  %i.kw = phi ptr [ %i.ks, %bb.am ], [ %i.d, %bb.ak ] ; 3 uses
  %i.kx = phi i64 [ 48, %bb.am ], [ 32, %bb.ak ]
  store i64 %i.kp, ptr %i.c, align 8, !tbaa !538
  store i32 0, ptr %i.e, align 8, !tbaa !537
  %i.ky = xor i32 %i.u, 31                        ; 2 uses
  %i.kz = add nuw i64 %.0.i.i235, 1               ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.0.i.i235, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i242
  %n.vec = and i64 %i.kz, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ky, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1284 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat1285 = shufflevector <4 x i32> %broadcast.splatinsert1284, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.ld, %vector.body ]
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %index ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.la, align 4, !tbaa !239 ; 2 uses
  %wide.load1286 = load <4 x i32>, ptr %i.lb, align 4, !tbaa !239 ; 2 uses
  %i.lc = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.ld = lshr <4 x i32> %wide.load1286, %broadcast.splat ; 3 uses
  %i.le = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.lc, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.lf = shufflevector <4 x i32> %i.lc, <4 x i32> %i.ld, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.lg = shl <4 x i32> %wide.load, %broadcast.splat1285
  %i.lh = shl <4 x i32> %wide.load1286, %broadcast.splat1285
  %i.li = add <4 x i32> %i.lg, %i.le
  %i.lj = add <4 x i32> %i.lh, %i.lf
  store <4 x i32> %i.li, ptr %i.la, align 4, !tbaa !239
  store <4 x i32> %i.lj, ptr %i.lb, align 4, !tbaa !239
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lk = icmp eq i64 %index.next, %n.vec
  br i1 %i.lk, label %middle.block, label %vector.body, !llvm.loop !5711

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.ld, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %i.kz, %n.vec
  br i1 %cmp.n, label %._crit_edge.i246, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i242, %middle.block
  %.01418.i243.ph = phi i64 [ 0, %.lr.ph.i242 ], [ %n.vec, %middle.block ]
  %.017.i244.ph = phi i32 [ 0, %.lr.ph.i242 ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i246:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa1276 = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.ln, %scalar.ph ] ; 2 uses
  %.not.i247 = icmp eq i32 %.lcssa1276, 0
  br i1 %.not.i247, label %_ZN3fmt3v126detail6bigintlSEi.exit253, label %bb.an

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01418.i243 = phi i64 [ %i.lq, %scalar.ph ], [ %.01418.i243.ph, %scalar.ph.preheader ] ; 3 uses
  %.017.i244 = phi i32 [ %i.ln, %scalar.ph ], [ %.017.i244.ph, %scalar.ph.preheader ]
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %.01418.i243 ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !239 ; 2 uses
  %i.ln = lshr i32 %i.lm, %i.ky                   ; 2 uses
  %i.lo = shl i32 %i.lm, %i.v
  %i.lp = add i32 %i.lo, %.017.i244
  store i32 %i.lp, ptr %i.ll, align 4, !tbaa !239
  %i.lq = add nuw nsw i64 %.01418.i243, 1
  %exitcond.not.i245 = icmp eq i64 %.01418.i243, %.0.i.i235
  br i1 %exitcond.not.i245, label %._crit_edge.i246, label %scalar.ph, !llvm.loop !5712

bb.an:                                            ; preds = %._crit_edge.i246
  %i.lr = add nuw i64 %.0.i.i235, 2               ; 2 uses
  %.not561 = icmp samesign ult i64 %i.kp, %i.kx
  br i1 %.not561, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i248, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ls = load ptr, ptr %i.b, align 8, !tbaa !531
  invoke void %i.ls(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.lr)
          to label %.noexc252 unwind label %.loopexit.split-lp, !inline_history !5695

.noexc252:                                        ; preds = %bb.ao
  %.pre.i.i250 = load i64, ptr %i.c, align 8, !tbaa !538 ; 2 uses
  %.pre2.i.i251 = add i64 %.pre.i.i250, 1
  %.pre = load ptr, ptr %5, align 8, !tbaa !532
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i248

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i248: ; preds = %.noexc252, %bb.an
  %i.lt = phi ptr [ %i.kw, %bb.an ], [ %.pre, %.noexc252 ]
  %.pre-phi.i.i249 = phi i64 [ %i.lr, %bb.an ], [ %.pre2.i.i251, %.noexc252 ]
  %i.lu = phi i64 [ %i.kp, %bb.an ], [ %.pre.i.i250, %.noexc252 ]
  store i64 %.pre-phi.i.i249, ptr %i.c, align 8, !tbaa !538
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.lu
  store i32 %.lcssa1276, ptr %i.lv, align 4, !tbaa !239
  br label %_ZN3fmt3v126detail6bigintlSEi.exit253

_ZN3fmt3v126detail6bigintlSEi.exit253:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i248, %._crit_edge.i246
  %i.lw = load i32, ptr %4, align 4, !tbaa !239
  invoke void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.lw)
          to label %bb.ap unwind label %.loopexit.split-lp

bb.ap:                                            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit253
  %i.lx = sub nsw i32 %i.v, %i.x                  ; 2 uses
  %i.ly = lshr i32 %i.lx, 5
  %i.lz = load i32, ptr %i.j, align 8, !tbaa !537
  %i.ma = add nsw i32 %i.lz, %i.ly
  store i32 %i.ma, ptr %i.j, align 8, !tbaa !537
  %i.mb = and i32 %i.lx, 31                       ; 4 uses
  %i.mc = icmp eq i32 %i.mb, 0
  br i1 %i.mc, label %_ZN3fmt3v126detail6bigintlSEi.exit266, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.md = load i64, ptr %i.h, align 8, !tbaa !538 ; 7 uses
  %.not19.i254 = icmp eq i64 %i.md, 0
  br i1 %.not19.i254, label %_ZN3fmt3v126detail6bigintlSEi.exit266, label %.lr.ph.i255

.lr.ph.i255:                                      ; preds = %bb.aq
  %i.me = load ptr, ptr %6, align 8, !tbaa !532   ; 3 uses
  %i.mf = sub nuw nsw i32 32, %i.mb               ; 2 uses
  %min.iters.check1288 = icmp ult i64 %i.md, 8
  br i1 %min.iters.check1288, label %scalar.ph1287.preheader, label %vector.ph1289

vector.ph1289:                                    ; preds = %.lr.ph.i255
  %n.vec1290 = and i64 %i.md, -8                  ; 3 uses
  %broadcast.splatinsert1291 = insertelement <4 x i32> poison, i32 %i.mf, i64 0
  %broadcast.splat1292 = shufflevector <4 x i32> %broadcast.splatinsert1291, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1293 = insertelement <4 x i32> poison, i32 %i.mb, i64 0
  %broadcast.splat1294 = shufflevector <4 x i32> %broadcast.splatinsert1293, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1295

vector.body1295:                                  ; preds = %vector.body1295, %vector.ph1289
  %index1296 = phi i64 [ 0, %vector.ph1289 ], [ %index.next1300, %vector.body1295 ] ; 2 uses
  %vector.recur1297 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1289 ], [ %i.mj, %vector.body1295 ]
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %index1296 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16 ; 2 uses
  %wide.load1298 = load <4 x i32>, ptr %i.mg, align 4, !tbaa !239 ; 2 uses
  %wide.load1299 = load <4 x i32>, ptr %i.mh, align 4, !tbaa !239 ; 2 uses
  %i.mi = lshr <4 x i32> %wide.load1298, %broadcast.splat1292 ; 2 uses
  %i.mj = lshr <4 x i32> %wide.load1299, %broadcast.splat1292 ; 3 uses
  %i.mk = shufflevector <4 x i32> %vector.recur1297, <4 x i32> %i.mi, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ml = shufflevector <4 x i32> %i.mi, <4 x i32> %i.mj, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.mm = shl <4 x i32> %wide.load1298, %broadcast.splat1294
  %i.mn = shl <4 x i32> %wide.load1299, %broadcast.splat1294
  %i.mo = add <4 x i32> %i.mm, %i.mk
  %i.mp = add <4 x i32> %i.mn, %i.ml
  store <4 x i32> %i.mo, ptr %i.mg, align 4, !tbaa !239
  store <4 x i32> %i.mp, ptr %i.mh, align 4, !tbaa !239
  %index.next1300 = add nuw i64 %index1296, 8     ; 2 uses
  %i.mq = icmp eq i64 %index.next1300, %n.vec1290
  br i1 %i.mq, label %middle.block1301, label %vector.body1295, !llvm.loop !5713

middle.block1301:                                 ; preds = %vector.body1295
  %vector.recur.extract1302 = extractelement <4 x i32> %i.mj, i64 3 ; 2 uses
  %cmp.n1303 = icmp eq i64 %i.md, %n.vec1290
  br i1 %cmp.n1303, label %._crit_edge.i259, label %scalar.ph1287.preheader

scalar.ph1287.preheader:                          ; preds = %.lr.ph.i255, %middle.block1301
  %.01418.i256.ph = phi i64 [ 0, %.lr.ph.i255 ], [ %n.vec1290, %middle.block1301 ]
  %.017.i257.ph = phi i32 [ 0, %.lr.ph.i255 ], [ %vector.recur.extract1302, %middle.block1301 ]
  br label %scalar.ph1287

._crit_edge.i259:                                 ; preds = %scalar.ph1287, %middle.block1301
  %.lcssa1275 = phi i32 [ %vector.recur.extract1302, %middle.block1301 ], [ %i.mt, %scalar.ph1287 ] ; 2 uses
  %.not.i260 = icmp eq i32 %.lcssa1275, 0
  br i1 %.not.i260, label %_ZN3fmt3v126detail6bigintlSEi.exit266, label %bb.ar

scalar.ph1287:                                    ; preds = %scalar.ph1287.preheader, %scalar.ph1287
  %.01418.i256 = phi i64 [ %i.mw, %scalar.ph1287 ], [ %.01418.i256.ph, %scalar.ph1287.preheader ] ; 2 uses
  %.017.i257 = phi i32 [ %i.mt, %scalar.ph1287 ], [ %.017.i257.ph, %scalar.ph1287.preheader ]
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %.01418.i256 ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !239 ; 2 uses
  %i.mt = lshr i32 %i.ms, %i.mf                   ; 2 uses
  %i.mu = shl i32 %i.ms, %i.mb
  %i.mv = add i32 %i.mu, %.017.i257
  store i32 %i.mv, ptr %i.mr, align 4, !tbaa !239
  %i.mw = add nuw i64 %.01418.i256, 1             ; 2 uses
  %exitcond.not.i258 = icmp eq i64 %i.mw, %i.md
  br i1 %exitcond.not.i258, label %._crit_edge.i259, label %scalar.ph1287, !llvm.loop !5714

bb.ar:                                            ; preds = %._crit_edge.i259
  %i.mx = add i64 %i.md, 1                        ; 3 uses
  %i.my = load i64, ptr %i.f, align 8, !tbaa !533
  %i.mz = icmp ugt i64 %i.mx, %i.my
  br i1 %i.mz, label %bb.as, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i261

bb.as:                                            ; preds = %bb.ar
  %i.na = load ptr, ptr %i.g, align 8, !tbaa !531
  invoke void %i.na(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.mx)
          to label %.noexc265 unwind label %.loopexit.split-lp, !inline_history !5695

.noexc265:                                        ; preds = %bb.as
  %.pre.i.i263 = load i64, ptr %i.h, align 8, !tbaa !538 ; 2 uses
  %.pre2.i.i264 = add i64 %.pre.i.i263, 1
  %.pre673 = load ptr, ptr %6, align 8, !tbaa !532
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i261

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i261: ; preds = %.noexc265, %bb.ar
  %i.nb = phi ptr [ %i.me, %bb.ar ], [ %.pre673, %.noexc265 ]
  %.pre-phi.i.i262 = phi i64 [ %i.mx, %bb.ar ], [ %.pre2.i.i264, %.noexc265 ]
  %i.nc = phi i64 [ %i.md, %bb.ar ], [ %.pre.i.i263, %.noexc265 ]
  store i64 %.pre-phi.i.i262, ptr %i.h, align 8, !tbaa !538
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %i.nc
  store i32 %.lcssa1275, ptr %i.nd, align 4, !tbaa !239
  br label %_ZN3fmt3v126detail6bigintlSEi.exit266

_ZN3fmt3v126detail6bigintlSEi.exit266:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i261, %._crit_edge.i259, %bb.aq, %bb.ap
  %i.ne = load ptr, ptr %7, align 8, !tbaa !532
  store i32 1, ptr %i.ne, align 4, !tbaa !239
  %i.nf = load i64, ptr %i.k, align 8, !tbaa !533
  %.not8.i.i270.not = icmp eq i64 %i.nf, 0
  br i1 %.not8.i.i270.not, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit266
  %i.ng = load ptr, ptr %i.l, align 8, !tbaa !531
  invoke void %i.ng(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef 1)
          to label %.noexc272 unwind label %.loopexit.split-lp, !inline_history !5696

.noexc272:                                        ; preds = %bb.at
  %.pre.i.i.i.i271 = load i64, ptr %i.k, align 8, !tbaa !533
  %i.nh = icmp ne i64 %.pre.i.i.i.i271, 0
  %i.ni = zext i1 %i.nh to i64
  br label %bb.au

bb.au:                                            ; preds = %.noexc272, %_ZN3fmt3v126detail6bigintlSEi.exit266
  %i.nj = phi i64 [ 1, %_ZN3fmt3v126detail6bigintlSEi.exit266 ], [ %i.ni, %.noexc272 ]
  store i64 %i.nj, ptr %i.m, align 8, !tbaa !538
  store i32 0, ptr %i.o, align 8, !tbaa !537
  %extract.t812 = trunc i128 %i.kn to i32         ; 2 uses
  br i1 %.not, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.nk = load ptr, ptr %8, align 8, !tbaa !532
  store i32 2, ptr %i.nk, align 4, !tbaa !239
  %i.nl = load i64, ptr %i.p, align 8, !tbaa !533
  %.not8.i.i277.not = icmp eq i64 %i.nl, 0
  br i1 %.not8.i.i277.not, label %bb.aw, label %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit

bb.aw:                                            ; preds = %bb.av
  %i.nm = load ptr, ptr %i.q, align 8, !tbaa !531
  invoke void %i.nm(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef 1)
          to label %.noexc279 unwind label %.loopexit.split-lp, !inline_history !5715

.noexc279:                                        ; preds = %bb.aw
  %.pre.i.i.i.i278 = load i64, ptr %i.p, align 8, !tbaa !533
  %i.nn = icmp ne i64 %.pre.i.i.i.i278, 0
  %i.no = zext i1 %i.nn to i64
  br label %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit

_ZN3fmt3v126detail6bigintaSIyEEvT_.exit:          ; preds = %bb.av, %.noexc279
  %i.np = phi i64 [ 1, %bb.av ], [ %i.no, %.noexc279 ]
  store i64 %i.np, ptr %i.r, align 8, !tbaa !538
  store i32 0, ptr %i.t, align 8, !tbaa !537
  br label %_ZN3fmt3v126detail6bigintlSEi.exit168

_ZN3fmt3v126detail6bigintlSEi.exit168:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228, %.lr.ph.i222, %bb.af, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163, %._crit_edge.i161, %bb.r, %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit, %bb.au
  %.off0 = phi i32 [ %extract.t812, %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit ], [ %extract.t814, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163 ], [ %extract.t812, %bb.au ], [ %extract.t816, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228 ], [ %extract.t814, %bb.r ], [ %extract.t814, %._crit_edge.i161 ], [ %extract.t816, %bb.af ], [ %extract.t816, %.lr.ph.i222 ]
  %.2 = phi ptr [ %8, %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit ], [ %.079, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163 ], [ null, %bb.au ], [ %.1, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228 ], [ %.079, %bb.r ], [ %.079, %._crit_edge.i161 ], [ %.1, %bb.af ], [ %.1, %.lr.ph.i222 ] ; 16 uses
  %i.nq = and i32 %.off0, 1                       ; 2 uses
  %i.nr = xor i32 %i.nq, 1                        ; 2 uses
  %.not97 = icmp eq ptr %.2, null                 ; 7 uses
  %spec.store.select = select i1 %.not97, ptr %7, ptr %.2 ; 2 uses
  %i.ns = icmp slt i32 %2, 0                      ; 2 uses
  %i.nt = and i32 %1, 2
  %.not98 = icmp eq i32 %i.nt, 0
  br i1 %.not98, label %bb.bx, label %bb.ax

bb.ax:                                            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit168
  %i.nu = load i64, ptr %i.c, align 8, !tbaa !538 ; 8 uses
  %i.nv = trunc i64 %i.nu to i32
  %i.nw = load i32, ptr %i.e, align 8, !tbaa !537 ; 3 uses
  %i.nx = add nsw i32 %i.nw, %i.nv                ; 2 uses
  %.2.sroa.gep = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 4 uses
  %spec.store.select.sroa.sel = select i1 %.not97, ptr %i.m, ptr %.2.sroa.gep
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail6bigint6squareEv:bb.a
  %i.am = call noundef i64 @llvm.umin.i64(i64 %i.ah, i64 %i.al) ; 4 uses
  store i64 %i.am, ptr %i.a, align 8, !tbaa !538
  %i.an = icmp sgt i32 %i.c, 0
  %.pre93.pre94 = load ptr, ptr %0, align 8       ; 2 uses
  br i1 %i.an, label %.preheader46.lr.ph, label %.preheader

.preheader46.lr.ph:                               ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %i.ao = load ptr, ptr %1, align 8, !tbaa !532   ; 6 uses
  %wide.trip.count76 = and i64 %i.b, 2147483647
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.lr.ph, %bb.l
  %indvars.iv71 = phi i64 [ 1, %.preheader46.lr.ph ], [ %indvars.iv.next72, %bb.l ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader46.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 5 uses
  %.03750 = phi i128 [ 0, %.preheader46.lr.ph ], [ %i.bi, %bb.l ] ; 2 uses
  %xtraiter = and i64 %indvars.iv71, 1
  %i.ap = icmp eq i64 %indvars.iv, 0
  br i1 %i.ap, label %.epil.preheader, label %.preheader46.new

.preheader46.new:                                 ; preds = %.preheader46
  %unroll_iter = and i64 %indvars.iv71, 9223372036854775806
  br label %bb.m

.preheader.loopexit:                              ; preds = %bb.l
  %.pre93.pre = load ptr, ptr %0, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %.pre93 = phi ptr [ %.pre93.pre94, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %.pre93.pre, %.preheader.loopexit ] ; 2 uses
  %.037.lcssa = phi i128 [ 0, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %i.bi, %.preheader.loopexit ]
  %i.aq = icmp sgt i32 %i.d, %i.c
  br i1 %i.aq, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %.preheader
  %i.ar = load ptr, ptr %1, align 8               ; 6 uses
  %sext = shl i64 %i.b, 32                        ; 2 uses
  %i.as = ashr exact i64 %sext, 32                ; 4 uses
  %sext109 = add i64 %sext, -4294967296
  %i.at = ashr exact i64 %sext109, 32
  %wide.trip.count = sext i32 %i.d to i64
  %invariant.op = add nsw i64 %i.at, %i.as
  %i.au = add i32 %i.c, -2
  %indvars.iv82.prol = add nsw i64 %i.as, -1      ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %indvars.iv82.prol
  br label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.unr-lcssa:                                       ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.l, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader46
  %indvars.iv64.epil.init = phi i64 [ 0, %.preheader46 ], [ %indvars.iv.next65.1, %.unr-lcssa ]
  %indvars.iv62.epil.init = phi i64 [ %indvars.iv, %.preheader46 ], [ %indvars.iv.next63.1, %.unr-lcssa ]
  %.147.epil.init = phi i128 [ %.03750, %.preheader46 ], [ %i.cc, %.unr-lcssa ]
  %lcmp.mod148 = trunc i64 %indvars.iv71 to i1
  call void @llvm.assume(i1 %lcmp.mod148)
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv64.epil.init
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !239
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv62.epil.init
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !239
  %i.bc = zext i32 %i.bb to i64
  %i.bd = mul nuw i64 %i.bc, %i.az
  %i.be = zext i64 %i.bd to i128
  %i.bf = add i128 %.147.epil.init, %i.be
  br label %bb.l

bb.l:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa145 = phi i128 [ %i.cc, %.unr-lcssa ], [ %i.bf, %.epil.preheader ] ; 2 uses
  %i.bg = trunc i128 %.lcssa145 to i32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.pre93.pre94, i64 %indvars.iv
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !239
  %i.bi = lshr i128 %.lcssa145, 32                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond77.not = icmp eq i64 %indvars.iv.next, %wide.trip.count76
  br i1 %exitcond77.not, label %.preheader.loopexit, label %.preheader46, !llvm.loop !5740

bb.m:                                             ; preds = %bb.m, %.preheader46.new
  %indvars.iv64 = phi i64 [ 0, %.preheader46.new ], [ %indvars.iv.next65.1, %bb.m ] ; 3 uses
  %indvars.iv62 = phi i64 [ %indvars.iv, %.preheader46.new ], [ %indvars.iv.next63.1, %bb.m ] ; 3 uses
  %.147 = phi i128 [ %.03750, %.preheader46.new ], [ %i.cc, %bb.m ]
  %niter = phi i64 [ 0, %.preheader46.new ], [ %niter.next.1, %bb.m ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv64
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !239
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv62
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !239
  %i.bo = zext i32 %i.bn to i64
  %i.bp = mul nuw i64 %i.bo, %i.bl
  %i.bq = zext i64 %i.bp to i128
  %i.br = add i128 %.147, %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !239
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr [4 x i8], ptr %i.ao, i64 %indvars.iv62
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !239
  %i.bz = zext i32 %i.by to i64
  %i.ca = mul nuw i64 %i.bz, %i.bv
  %i.cb = zext i64 %i.ca to i128
  %i.cc = add i128 %i.br, %i.cb                   ; 3 uses
  %indvars.iv.next65.1 = add nuw nsw i64 %indvars.iv64, 2 ; 2 uses
  %indvars.iv.next63.1 = add nsw i64 %indvars.iv62, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.m, !llvm.loop !5741

._crit_edge59.loopexit:                           ; preds = %._crit_edge
  %.pre92 = load ptr, ptr %0, align 8
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %._crit_edge59.loopexit, %.preheader
  %i.cd = phi ptr [ %.pre92, %._crit_edge59.loopexit ], [ %.pre93, %.preheader ]
  %i.ce = trunc nuw i64 %i.am to i32
  %smin.i = call i32 @llvm.smin.i32(i32 %i.ce, i32 1) ; 2 uses
  %i.cf = trunc nuw i64 %i.am to i32              ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, 1
  br i1 %i.cg, label %.lr.ph140, label %.critedge.i

bb.n:                                             ; preds = %.lr.ph140
  %i.ch = trunc nuw i64 %i.ck to i32              ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, 1
  br i1 %i.ci, label %.lr.ph140, label %.critedge.i, !llvm.loop !104

.lr.ph140:                                        ; preds = %._crit_edge59, %bb.n
  %i.cj = phi i32 [ %i.ch, %bb.n ], [ %i.cf, %._crit_edge59 ]
  %indvars.iv.i139 = phi i64 [ %i.ck, %bb.n ], [ %i.am, %._crit_edge59 ]
  %i.ck = add nsw i64 %indvars.iv.i139, -1        ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !239
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.n, label %..critedge.i_crit_edge, !llvm.loop !104

..critedge.i_crit_edge:                           ; preds = %.lr.ph140
  br label %.critedge.i, !llvm.loop !104

.critedge.i:                                      ; preds = %bb.n, %..critedge.i_crit_edge, %._crit_edge59
  %.0.in.lcssa.i = phi i32 [ %smin.i, %._crit_edge59 ], [ %i.cj, %..critedge.i_crit_edge ], [ %smin.i, %bb.n ]
  %i.co = zext i32 %.0.in.lcssa.i to i64          ; 3 uses
  %i.cp = icmp ult i64 %i.al, %i.co
  br i1 %i.cp, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.critedge.i
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !531
  invoke void %i.cr(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.co)
          to label %.noexc43 unwind label %bb.s, !inline_history !5742

.noexc43:                                         ; preds = %bb.o
  %.pre.i.i.i = load i64, ptr %i.h, align 8, !tbaa !533
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph58, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph58 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv88 = phi i64 [ %i.as, %.lr.ph58 ], [ %indvars.iv.next89, %._crit_edge ] ; 3 uses
  %indvars.iv78 = phi i32 [ 1, %.lr.ph58 ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %.256 = phi i128 [ %.037.lcssa, %.lr.ph58 ], [ %i.dh, %._crit_edge ] ; 3 uses
  %i.cs = icmp slt i64 %indvars.iv88, %invariant.op
  br i1 %i.cs, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.p
  %i.ct = sext i32 %indvars.iv78 to i64           ; 3 uses
  %i.cu = sub i32 %indvar, %i.c
  %i.cv = and i32 %i.cu, 1
  %lcmp.mod150.not.not = icmp eq i32 %i.cv, 0
  br i1 %lcmp.mod150.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next81.prol = add nsw i64 %i.ct, 1
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.ct
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !239
  %i.cy = zext i32 %i.cx to i64
  %i.cz = load i32, ptr %i.av, align 4, !tbaa !239
  %i.da = zext i32 %i.cz to i64
  %i.db = mul nuw i64 %i.da, %i.cy
  %i.dc = zext i64 %i.db to i128
  %i.dd = add nsw i128 %.256, %i.dc               ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa144.unr = phi i128 [ poison, %.lr.ph.preheader ], [ %i.dd, %.lr.ph.prol ]
  %indvars.iv82.in.unr = phi i64 [ %i.as, %.lr.ph.preheader ], [ %indvars.iv82.prol, %.lr.ph.prol ]
  %indvars.iv80.unr = phi i64 [ %i.ct, %.lr.ph.preheader ], [ %indvars.iv.next81.prol, %.lr.ph.prol ]
  %.352.unr = phi i128 [ %.256, %.lr.ph.preheader ], [ %i.dd, %.lr.ph.prol ]
  %i.de = icmp eq i32 %i.au, %indvar
  br i1 %i.de, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.p
  %.3.lcssa = phi i128 [ %.256, %bb.p ], [ %.lcssa144.unr, %.lr.ph.prol.loopexit ], [ %i.eb, %.lr.ph ] ; 2 uses
  %i.df = trunc i128 %.3.lcssa to i32
  %i.dg = getelementptr inbounds [4 x i8], ptr %.pre93, i64 %indvars.iv88
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !239
  %i.dh = lshr i128 %.3.lcssa, 32
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, 1 ; 2 uses
  %indvars.iv.next79 = add i32 %indvars.iv78, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond91.not, label %._crit_edge59.loopexit, label %bb.p, !llvm.loop !5743

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv82.in = phi i64 [ %indvars.iv82.1, %.lr.ph ], [ %indvars.iv82.in.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81.1, %.lr.ph ], [ %indvars.iv80.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.352 = phi i128 [ %i.eb, %.lr.ph ], [ %.352.unr, %.lr.ph.prol.loopexit ]
  %i.di = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %indvars.iv80
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !239
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv82.in
  %i.dm = getelementptr i8, ptr %i.dl, i64 -4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !239
  %i.do = zext i32 %i.dn to i64
  %i.dp = mul nuw i64 %i.do, %i.dk
  %i.dq = zext i64 %i.dp to i128
  %i.dr = add i128 %.352, %i.dq
  %indvars.iv82.1 = add nsw i64 %indvars.iv82.in, -2 ; 2 uses
  %indvars.iv.next81.1 = add nsw i64 %indvars.iv80, 2 ; 2 uses
  %i.ds = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv80
  %i.dt = getelementptr i8, ptr %i.ds, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !239
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %indvars.iv82.1
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !239
  %i.dy = zext i32 %i.dx to i64
  %i.dz = mul nuw i64 %i.dy, %i.dv
  %i.ea = zext i64 %i.dz to i128
  %i.eb = add i128 %i.dr, %i.ea                   ; 2 uses
  %lftr.wideiv117.1 = trunc i64 %indvars.iv.next81.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv117.1, %i.c
  br i1 %exitcond.1, label %._crit_edge, label %.lr.ph, !llvm.loop !5744

bb.q:                                             ; preds = %.noexc43, %.critedge.i
  %i.ec = phi i64 [ %i.al, %.critedge.i ], [ %.pre.i.i.i, %.noexc43 ]
  %i.ed = call noundef i64 @llvm.umin.i64(i64 %i.co, i64 %i.ec)
  store i64 %i.ed, ptr %i.a, align 8, !tbaa !538
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !537
  %i.eg = shl nsw i32 %i.ef, 1
  store i32 %i.eg, ptr %i.ee, align 8, !tbaa !537
  %i.eh = load ptr, ptr %1, align 8, !tbaa !532   ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i = icmp eq ptr %i.eh, %i.ei
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef %i.eh) #30
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

bb.s:                                             ; preds = %bb.o
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ej, %bb.s ], [ %i.aw, %bb.k ]
  %i.ek = load ptr, ptr %1, align 8, !tbaa !532   ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i44 = icmp eq ptr %i.ek, %i.el
  br i1 %.not.i.i44, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef %i.ek) #30
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr %5) local_unnamed_addr #2 comdat {
bb.a:
  %6 = alloca %class.anon.326, align 8            ; 11 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !317    ; 2 uses
  %i.b = and i32 %i.a, 16384
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef signext i8 @_ZN3fmt3v126detail18decimal_point_implIcEET_NS0_10locale_refE(ptr %5)
  %.pre = load i32, ptr %2, align 4, !tbaa !317
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %.pre, %bb.b ], [ %i.a, %bb.a ] ; 5 uses
  %i.e = phi i8 [ %i.c, %bb.b ], [ 46, %bb.a ]    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !514  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !515
  %i.j = add nsw i32 %i.i, %i.g                   ; 3 uses
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  %i.l = trunc i32 %i.d to i8
  %i.m = and i8 %i.l, 7
  switch i8 %i.m, label %bb.d [
    i8 2, label %bb.e
    i8 1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !319  ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  %. = select i1 %i.p, i32 %i.o, i32 %4
  %i.q = icmp sgt i32 %i.j, -4
  %i.r = icmp sle i32 %i.j, %.
  %i.s = and i1 %i.q, %i.r
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.t = ptrtoint ptr %5 to i64
  %i.u = tail call ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.g, i8 noundef signext %i.e, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i64 %i.t)
  br label %bb.q

bb.f:                                             ; preds = %bb.c, %bb.d
  %.not51 = icmp ne i32 %3, 0
  %i.v = zext i1 %.not51 to i32
  %i.w = add nsw i32 %i.g, %i.v
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = and i32 %i.d, 8192
  %.not53 = icmp eq i32 %i.y, 0
  br i1 %.not53, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !319
  %i.ab = sub nsw i32 %i.aa, %i.g
  %i.ac = tail call noundef i32 @llvm.smax.i32(i32 %i.ab, i32 0) ; 2 uses
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = add nsw i64 %i.ad, %i.x
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.af = icmp eq i32 %i.g, 1
  %spec.select = select i1 %i.af, i8 0, i8 %i.e
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.049 = phi i32 [ %i.ac, %bb.g ], [ 0, %bb.h ]
  %.048 = phi i64 [ %i.ae, %bb.g ], [ %i.x, %bb.h ]
  %.0 = phi i8 [ %i.e, %bb.g ], [ %spec.select, %bb.h ] ; 2 uses
  %.not52 = icmp ne i8 %.0, 0
  %i.ag = zext i1 %.not52 to i64
  %i.ah = tail call i32 @llvm.abs.i32(i32 %i.k, i1 true) ; 2 uses
  %i.ai = icmp samesign ult i32 %i.ah, 100
  %i.aj = icmp samesign ugt i32 %i.ah, 999
  %i.ak = select i1 %i.aj, i64 6, i64 5
  %.0.i = select i1 %i.ai, i64 4, i64 %i.ak
  %i.al = add nsw i64 %.048, %.0.i
  %i.am = add nsw i64 %i.al, %i.ag                ; 3 uses
  %i.an = and i32 %i.d, 4096
  %.not54 = icmp eq i32 %i.an, 0
  %i.ao = select i1 %.not54, i8 101, i8 69
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store i32 %3, ptr %6, align 8, !tbaa !540
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !5746
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %i.g, ptr %i.aq, align 8, !tbaa !541
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i8 %.0, ptr %i.ar, align 4, !tbaa !542
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %.049, ptr %i.as, align 8, !tbaa !543
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i8 %i.ao, ptr %i.at, align 4, !tbaa !544
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %i.k, ptr %i.au, align 8, !tbaa !545
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !358 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = tail call i64 @llvm.usub.sat.i64(i64 %i.ay, i64 %i.am) ; 4 uses
  %i.ba = lshr i32 %i.d, 3
  %i.bb = and i32 %i.ba, 7
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @.str.1271, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !232
  %i.bf = sext i8 %i.be to i64
  %i.bg = and i64 %i.bf, 4294967295
  %i.bh = lshr i64 %i.az, %i.bg                   ; 4 uses
  %i.bi = sub nsw i64 %i.az, %i.bh
  %i.bj = lshr i32 %i.d, 15
  %i.bk = and i32 %i.bj, 7
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = mul nuw nsw i64 %i.az, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !354
  %i.bp = add nsw i64 %i.bm, %i.am
  %i.bq = add i64 %i.bp, %i.bo                    ; 2 uses
end_hunk_1
