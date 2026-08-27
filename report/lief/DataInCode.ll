Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/DataInCode?download=true
inline.NumInlined: 2605
inline.NumDeleted: 716
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  %.pre.i.i176 = load i64, ptr %i.c, align 8, !tbaa !364 ; 2 uses
  %.pre2.i.i177 = add i64 %.pre.i.i176, 1
  %.pre609 = load ptr, ptr %10, align 8, !tbaa !354
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i174

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i174: ; preds = %bb.u, %bb.t
  %i.in = phi ptr [ %i.hp, %bb.t ], [ %.pre609, %bb.u ]
  %.pre-phi.i.i175 = phi i64 [ %i.ij, %bb.t ], [ %.pre2.i.i177, %bb.u ]
  %i.io = phi i64 [ %i.hq, %bb.t ], [ %.pre.i.i176, %bb.u ]
  store i64 %.pre-phi.i.i175, ptr %i.c, align 8, !tbaa !364
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.io
  store i32 %.lcssa1488, ptr %i.ip, align 4, !tbaa !26
  br label %_ZN3fmt3v126detail6bigintlSEi.exit178

_ZN3fmt3v126detail6bigintlSEi.exit178:            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit163, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit, %._crit_edge.i172, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i174
  %i.iq = load ptr, ptr %11, align 8, !tbaa !354
  store i32 1, ptr %i.iq, align 4, !tbaa !26
  %i.ir = load i64, ptr %i.f, align 8, !tbaa !355 ; 2 uses
  %.not8.i.i182.not = icmp eq i64 %i.ir, 0
  br i1 %.not8.i.i182.not, label %bb.v, label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit184

bb.v:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit178
  %i.is = load ptr, ptr %i.g, align 8, !tbaa !352
  call void %i.is(ptr noundef nonnull align 8 dereferenceable(172) %11, i64 noundef 1) #23, !inline_history !382
  %.pre.i.i.i.i183 = load i64, ptr %i.f, align 8, !tbaa !355 ; 2 uses
  %i.it = icmp ne i64 %.pre.i.i.i.i183, 0
  %i.iu = zext i1 %i.it to i64
  br label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit184

_ZN3fmt3v126detail6bigintaSIiEEvT_.exit184:       ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit178, %bb.v
  %i.iv = phi i64 [ %i.ir, %_ZN3fmt3v126detail6bigintlSEi.exit178 ], [ %.pre.i.i.i.i183, %bb.v ]
  %i.iw = phi i64 [ 1, %_ZN3fmt3v126detail6bigintlSEi.exit178 ], [ %i.iu, %bb.v ] ; 2 uses
  store i64 %i.iw, ptr %i.h, align 8, !tbaa !364
  %i.ix = load i32, ptr %i.w, align 16, !tbaa !360
  %i.iy = sub nsw i32 %i.v, %i.ix                 ; 2 uses
  %i.iz = sdiv i32 %i.iy, 32
  store i32 %i.iz, ptr %i.j, align 8, !tbaa !356
  %i.ja = srem i32 %i.iy, 32                      ; 3 uses
  %i.jb = icmp eq i32 %i.ja, 0
  %.not19.i185 = icmp eq i64 %i.iw, 0
  %or.cond494 = or i1 %.not19.i185, %i.jb
  %extract.t744 = trunc i128 %i.gl to i32         ; 3 uses
  br i1 %or.cond494, label %_ZN3fmt3v126detail6bigintlSEi.exit138, label %.lr.ph.i186

.lr.ph.i186:                                      ; preds = %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit184
  %i.jc = load ptr, ptr %11, align 8, !tbaa !354  ; 3 uses
  %i.jd = sub nsw i32 32, %i.ja
  %i.je = load i32, ptr %i.jc, align 4, !tbaa !26 ; 2 uses
  %i.jf = lshr i32 %i.je, %i.jd                   ; 2 uses
  %i.jg = shl i32 %i.je, %i.ja
  store i32 %i.jg, ptr %i.jc, align 4, !tbaa !26
  %.not.i191 = icmp eq i32 %i.jf, 0
  br i1 %.not.i191, label %_ZN3fmt3v126detail6bigintlSEi.exit138, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i186
  %.not497 = icmp ugt i64 %i.iv, 1
  br i1 %.not497, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i192, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.jh = load ptr, ptr %i.g, align 8, !tbaa !352
  call void %i.jh(ptr noundef nonnull align 8 dereferenceable(172) %11, i64 noundef 2) #23, !inline_history !369
  %.pre.i.i194 = load i64, ptr %i.h, align 8, !tbaa !364 ; 2 uses
  %.pre2.i.i195 = add i64 %.pre.i.i194, 1
  %.pre610 = load ptr, ptr %11, align 8, !tbaa !354
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i192

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i192: ; preds = %bb.x, %bb.w
  %i.ji = phi ptr [ %i.jc, %bb.w ], [ %.pre610, %bb.x ]
  %.pre-phi.i.i193 = phi i64 [ 2, %bb.w ], [ %.pre2.i.i195, %bb.x ]
  %i.jj = phi i64 [ 1, %bb.w ], [ %.pre.i.i194, %bb.x ]
  store i64 %.pre-phi.i.i193, ptr %i.h, align 8, !tbaa !364
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.jj
  store i32 %i.jf, ptr %i.jk, align 4, !tbaa !26
  br label %_ZN3fmt3v126detail6bigintlSEi.exit138

bb.y:                                             ; preds = %bb.m
  %i.jl = load i128, ptr %0, align 16, !tbaa !362 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %.05.i.i197 = phi i128 [ %i.jl, %bb.y ], [ %i.jp, %bb.z ] ; 2 uses
  %.0.i.i198 = phi i64 [ 0, %bb.y ], [ %i.jn, %bb.z ] ; 7 uses
  %i.jm = trunc i128 %.05.i.i197 to i32
  %i.jn = add nuw nsw i64 %.0.i.i198, 1           ; 6 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0.i.i198
  store i32 %i.jm, ptr %i.jo, align 4, !tbaa !26
  %i.jp = lshr i128 %.05.i.i197, 32               ; 2 uses
  %.not.i.i199 = icmp eq i128 %i.jp, 0
  br i1 %.not.i.i199, label %bb.aa, label %bb.z, !llvm.loop !363

bb.aa:                                            ; preds = %bb.z
  %.not8.i.i200 = icmp samesign ult i64 %.0.i.i198, 32
  br i1 %.not8.i.i200, label %.lr.ph.i204, label %_ZN3fmt3v126detail6bigintaSIoEEvT_.exit202

_ZN3fmt3v126detail6bigintaSIoEEvT_.exit202:       ; preds = %bb.aa
  %i.jq = call noalias dereferenceable_or_null(192) ptr @malloc(i64 noundef 192) #29 ; 3 uses
  %.not.i.i820 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i820, label %bb.ab, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm.exit823

bb.ab:                                            ; preds = %_ZN3fmt3v126detail6bigintaSIoEEvT_.exit202
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %7, align 8, !tbaa !24
  %i.jr = call noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #23
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.3, i32 noundef 752, ptr noundef %i.jr) #28
  unreachable

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm.exit823: ; preds = %_ZN3fmt3v126detail6bigintaSIoEEvT_.exit202
  store ptr %i.jq, ptr %10, align 8, !tbaa !354
  store i64 48, ptr %i.a, align 8, !tbaa !355
  br label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %bb.aa, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm.exit823
  %i.js = phi ptr [ %i.jq, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm.exit823 ], [ %i.d, %bb.aa ] ; 6 uses
  %i.jt = phi i64 [ 48, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm.exit823 ], [ 32, %bb.aa ] ; 3 uses
  store i64 %i.jn, ptr %i.c, align 8, !tbaa !364
  store i32 0, ptr %i.e, align 8, !tbaa !356
  %i.ju = xor i32 %i.u, 31                        ; 2 uses
  %i.jv = add nuw i64 %.0.i.i198, 1               ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.0.i.i198, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i204
  %n.vec = and i64 %i.jv, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ju, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1502 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat1503 = shufflevector <4 x i32> %broadcast.splatinsert1502, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.jz, %vector.body ]
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %index ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.jw, align 4, !tbaa !26 ; 2 uses
  %wide.load1504 = load <4 x i32>, ptr %i.jx, align 4, !tbaa !26 ; 2 uses
  %i.jy = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.jz = lshr <4 x i32> %wide.load1504, %broadcast.splat ; 3 uses
  %i.ka = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.jy, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.kb = shufflevector <4 x i32> %i.jy, <4 x i32> %i.jz, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.kc = shl <4 x i32> %wide.load, %broadcast.splat1503
  %i.kd = shl <4 x i32> %wide.load1504, %broadcast.splat1503
  %i.ke = add <4 x i32> %i.kc, %i.ka
  %i.kf = add <4 x i32> %i.kd, %i.kb
  store <4 x i32> %i.ke, ptr %i.jw, align 4, !tbaa !26
  store <4 x i32> %i.kf, ptr %i.jx, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kg = icmp eq i64 %index.next, %n.vec
  br i1 %i.kg, label %middle.block, label %vector.body, !llvm.loop !383

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.jz, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %i.jv, %n.vec
  br i1 %cmp.n, label %._crit_edge.i208, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i204, %middle.block
  %.01418.i205.ph = phi i64 [ 0, %.lr.ph.i204 ], [ %n.vec, %middle.block ]
  %.017.i206.ph = phi i32 [ 0, %.lr.ph.i204 ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i208:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa1494 = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.kj, %scalar.ph ] ; 2 uses
  %.not.i209 = icmp eq i32 %.lcssa1494, 0
  br i1 %.not.i209, label %_ZN3fmt3v126detail6bigintlSEi.exit214, label %bb.ac

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01418.i205 = phi i64 [ %i.km, %scalar.ph ], [ %.01418.i205.ph, %scalar.ph.preheader ] ; 3 uses
  %.017.i206 = phi i32 [ %i.kj, %scalar.ph ], [ %.017.i206.ph, %scalar.ph.preheader ]
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %.01418.i205 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !26 ; 2 uses
  %i.kj = lshr i32 %i.ki, %i.ju                   ; 2 uses
  %i.kk = shl i32 %i.ki, %i.v
  %i.kl = add i32 %i.kk, %.017.i206
  store i32 %i.kl, ptr %i.kh, align 4, !tbaa !26
  %i.km = add nuw nsw i64 %.01418.i205, 1
  %exitcond.not.i207 = icmp eq i64 %.01418.i205, %.0.i.i198
  br i1 %exitcond.not.i207, label %._crit_edge.i208, label %scalar.ph, !llvm.loop !384

bb.ac:                                            ; preds = %._crit_edge.i208
  %i.kn = add nuw i64 %.0.i.i198, 2               ; 2 uses
  %.not496 = icmp samesign ult i64 %i.jn, %i.jt
  br i1 %.not496, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i210, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ko = lshr exact i64 %i.jt, 1
  %i.kp = add nuw nsw i64 %i.ko, %i.jt
  %.0.i1129 = call i64 @llvm.umax.i64(i64 %i.kn, i64 %i.kp) ; 2 uses
  %i.kq = shl i64 %.0.i1129, 2
  %i.kr = call noalias ptr @malloc(i64 noundef %i.kq) #29 ; 4 uses
  %.not.i.i1130 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i1130, label %bb.ae, label %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i1131

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %5, align 8, !tbaa !24
  %i.ks = call noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #23
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.3, i32 noundef 752, ptr noundef %i.ks) #28
  unreachable

_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i1131: ; preds = %bb.ad
  %i.kt = shl nuw nsw i64 %i.jn, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.kr, ptr noundef nonnull align 4 dereferenceable(1) %i.js, i64 %i.kt, i1 false)
  store ptr %i.kr, ptr %10, align 8, !tbaa !354
  store i64 %.0.i1129, ptr %i.a, align 8, !tbaa !355
  %.not.i1132 = icmp eq ptr %i.js, %i.d
  br i1 %.not.i1132, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm.exit1133, label %bb.af

bb.af:                                            ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i1131
  call void @free(ptr noundef nonnull %i.js) #23
  %.pre.i.i212.pre = load i64, ptr %i.c, align 8, !tbaa !364
  %.pre.pre = load ptr, ptr %10, align 8, !tbaa !354
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm.exit1133

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm.exit1133: ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i1131, %bb.af
  %.pre = phi ptr [ %i.kr, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i1131 ], [ %.pre.pre, %bb.af ]
  %.pre.i.i212 = phi i64 [ %i.jn, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i1131 ], [ %.pre.i.i212.pre, %bb.af ] ; 2 uses
  %.pre2.i.i213 = add i64 %.pre.i.i212, 1
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i210

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i210: ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm.exit1133, %bb.ac
  %i.ku = phi ptr [ %i.js, %bb.ac ], [ %.pre, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm.exit1133 ]
  %.pre-phi.i.i211 = phi i64 [ %i.kn, %bb.ac ], [ %.pre2.i.i213, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm.exit1133 ]
  %i.kv = phi i64 [ %i.jn, %bb.ac ], [ %.pre.i.i212, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm.exit1133 ]
  store i64 %.pre-phi.i.i211, ptr %i.c, align 8, !tbaa !364
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %i.kv
  store i32 %.lcssa1494, ptr %i.kw, align 4, !tbaa !26
  br label %_ZN3fmt3v126detail6bigintlSEi.exit214

_ZN3fmt3v126detail6bigintlSEi.exit214:            ; preds = %._crit_edge.i208, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i210
  %i.kx = load i32, ptr %4, align 4, !tbaa !26
  call void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %11, i32 noundef %i.kx)
  %i.ky = sub nsw i32 %i.v, %i.x                  ; 2 uses
  %i.kz = lshr i32 %i.ky, 5
  %i.la = load i32, ptr %i.j, align 8, !tbaa !356
  %i.lb = add nsw i32 %i.la, %i.kz
  store i32 %i.lb, ptr %i.j, align 8, !tbaa !356
  %i.lc = and i32 %i.ky, 31                       ; 4 uses
  %i.ld = icmp eq i32 %i.lc, 0
  br i1 %i.ld, label %_ZN3fmt3v126detail6bigintlSEi.exit226, label %bb.ag

bb.ag:                                            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit214
  %i.le = load i64, ptr %i.h, align 8, !tbaa !364 ; 7 uses
  %.not19.i215 = icmp eq i64 %i.le, 0
  br i1 %.not19.i215, label %_ZN3fmt3v126detail6bigintlSEi.exit226, label %.lr.ph.i216

.lr.ph.i216:                                      ; preds = %bb.ag
  %i.lf = load ptr, ptr %11, align 8, !tbaa !354  ; 3 uses
  %i.lg = sub nuw nsw i32 32, %i.lc               ; 2 uses
  %min.iters.check1506 = icmp ult i64 %i.le, 8
  br i1 %min.iters.check1506, label %scalar.ph1505.preheader, label %vector.ph1507

vector.ph1507:                                    ; preds = %.lr.ph.i216
  %n.vec1508 = and i64 %i.le, -8                  ; 3 uses
  %broadcast.splatinsert1509 = insertelement <4 x i32> poison, i32 %i.lg, i64 0
  %broadcast.splat1510 = shufflevector <4 x i32> %broadcast.splatinsert1509, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1511 = insertelement <4 x i32> poison, i32 %i.lc, i64 0
  %broadcast.splat1512 = shufflevector <4 x i32> %broadcast.splatinsert1511, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1513

vector.body1513:                                  ; preds = %vector.body1513, %vector.ph1507
  %index1514 = phi i64 [ 0, %vector.ph1507 ], [ %index.next1518, %vector.body1513 ] ; 2 uses
  %vector.recur1515 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1507 ], [ %i.lk, %vector.body1513 ]
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %index1514 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16 ; 2 uses
  %wide.load1516 = load <4 x i32>, ptr %i.lh, align 4, !tbaa !26 ; 2 uses
  %wide.load1517 = load <4 x i32>, ptr %i.li, align 4, !tbaa !26 ; 2 uses
  %i.lj = lshr <4 x i32> %wide.load1516, %broadcast.splat1510 ; 2 uses
  %i.lk = lshr <4 x i32> %wide.load1517, %broadcast.splat1510 ; 3 uses
  %i.ll = shufflevector <4 x i32> %vector.recur1515, <4 x i32> %i.lj, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.lm = shufflevector <4 x i32> %i.lj, <4 x i32> %i.lk, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ln = shl <4 x i32> %wide.load1516, %broadcast.splat1512
  %i.lo = shl <4 x i32> %wide.load1517, %broadcast.splat1512
  %i.lp = add <4 x i32> %i.ln, %i.ll
  %i.lq = add <4 x i32> %i.lo, %i.lm
  store <4 x i32> %i.lp, ptr %i.lh, align 4, !tbaa !26
  store <4 x i32> %i.lq, ptr %i.li, align 4, !tbaa !26
  %index.next1518 = add nuw i64 %index1514, 8     ; 2 uses
  %i.lr = icmp eq i64 %index.next1518, %n.vec1508
  br i1 %i.lr, label %middle.block1519, label %vector.body1513, !llvm.loop !385

middle.block1519:                                 ; preds = %vector.body1513
  %vector.recur.extract1520 = extractelement <4 x i32> %i.lk, i64 3 ; 2 uses
  %cmp.n1521 = icmp eq i64 %i.le, %n.vec1508
  br i1 %cmp.n1521, label %._crit_edge.i220, label %scalar.ph1505.preheader

scalar.ph1505.preheader:                          ; preds = %.lr.ph.i216, %middle.block1519
  %.01418.i217.ph = phi i64 [ 0, %.lr.ph.i216 ], [ %n.vec1508, %middle.block1519 ]
  %.017.i218.ph = phi i32 [ 0, %.lr.ph.i216 ], [ %vector.recur.extract1520, %middle.block1519 ]
  br label %scalar.ph1505

._crit_edge.i220:                                 ; preds = %scalar.ph1505, %middle.block1519
  %.lcssa1493 = phi i32 [ %vector.recur.extract1520, %middle.block1519 ], [ %i.lu, %scalar.ph1505 ] ; 2 uses
  %.not.i221 = icmp eq i32 %.lcssa1493, 0
  br i1 %.not.i221, label %_ZN3fmt3v126detail6bigintlSEi.exit226, label %bb.ah

scalar.ph1505:                                    ; preds = %scalar.ph1505.preheader, %scalar.ph1505
  %.01418.i217 = phi i64 [ %i.lx, %scalar.ph1505 ], [ %.01418.i217.ph, %scalar.ph1505.preheader ] ; 2 uses
  %.017.i218 = phi i32 [ %i.lu, %scalar.ph1505 ], [ %.017.i218.ph, %scalar.ph1505.preheader ]
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %.01418.i217 ; 2 uses
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !26 ; 2 uses
  %i.lu = lshr i32 %i.lt, %i.lg                   ; 2 uses
  %i.lv = shl i32 %i.lt, %i.lc
  %i.lw = add i32 %i.lv, %.017.i218
  store i32 %i.lw, ptr %i.ls, align 4, !tbaa !26
  %i.lx = add nuw i64 %.01418.i217, 1             ; 2 uses
  %exitcond.not.i219 = icmp eq i64 %i.lx, %i.le
  br i1 %exitcond.not.i219, label %._crit_edge.i220, label %scalar.ph1505, !llvm.loop !386

bb.ah:                                            ; preds = %._crit_edge.i220
  %i.ly = add i64 %i.le, 1                        ; 3 uses
  %i.lz = load i64, ptr %i.f, align 8, !tbaa !355
  %i.ma = icmp ugt i64 %i.ly, %i.lz
  br i1 %i.ma, label %bb.ai, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i222

bb.ai:                                            ; preds = %bb.ah
  %i.mb = load ptr, ptr %i.g, align 8, !tbaa !352
  call void %i.mb(ptr noundef nonnull align 8 dereferenceable(172) %11, i64 noundef %i.ly) #23, !inline_history !369
  %.pre.i.i224 = load i64, ptr %i.h, align 8, !tbaa !364 ; 2 uses
  %.pre2.i.i225 = add i64 %.pre.i.i224, 1
  %.pre606 = load ptr, ptr %11, align 8, !tbaa !354
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i222

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i222: ; preds = %bb.ai, %bb.ah
  %i.mc = phi ptr [ %i.lf, %bb.ah ], [ %.pre606, %bb.ai ]
  %.pre-phi.i.i223 = phi i64 [ %i.ly, %bb.ah ], [ %.pre2.i.i225, %bb.ai ]
  %i.md = phi i64 [ %i.le, %bb.ah ], [ %.pre.i.i224, %bb.ai ]
  store i64 %.pre-phi.i.i223, ptr %i.h, align 8, !tbaa !364
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.md
  store i32 %.lcssa1493, ptr %i.me, align 4, !tbaa !26
  br label %_ZN3fmt3v126detail6bigintlSEi.exit226

_ZN3fmt3v126detail6bigintlSEi.exit226:            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit214, %bb.ag, %._crit_edge.i220, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i222
  %i.mf = load ptr, ptr %12, align 8, !tbaa !354
  store i32 1, ptr %i.mf, align 4, !tbaa !26
  %i.mg = load i64, ptr %i.k, align 8, !tbaa !355
  %.not8.i.i230.not = icmp eq i64 %i.mg, 0
  br i1 %.not8.i.i230.not, label %bb.aj, label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit232

bb.aj:                                            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit226
  %i.mh = load ptr, ptr %i.l, align 8, !tbaa !352
  call void %i.mh(ptr noundef nonnull align 8 dereferenceable(172) %12, i64 noundef 1) #23, !inline_history !382
  %.pre.i.i.i.i231 = load i64, ptr %i.k, align 8, !tbaa !355
  %i.mi = icmp ne i64 %.pre.i.i.i.i231, 0
  %i.mj = zext i1 %i.mi to i64
  br label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit232

_ZN3fmt3v126detail6bigintaSIiEEvT_.exit232:       ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit226, %bb.aj
  %i.mk = phi i64 [ 1, %_ZN3fmt3v126detail6bigintlSEi.exit226 ], [ %i.mj, %bb.aj ]
  store i64 %i.mk, ptr %i.m, align 8, !tbaa !364
  store i32 0, ptr %i.o, align 8, !tbaa !356
  %extract.t = trunc i128 %i.jl to i32            ; 2 uses
  br i1 %.not, label %_ZN3fmt3v126detail6bigintlSEi.exit138, label %bb.ak

bb.ak:                                            ; preds = %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit232
  %i.ml = load ptr, ptr %13, align 8, !tbaa !354
  store i32 2, ptr %i.ml, align 4, !tbaa !26
  %i.mm = load i64, ptr %i.p, align 8, !tbaa !355
  %.not8.i.i236.not = icmp eq i64 %i.mm, 0
  br i1 %.not8.i.i236.not, label %bb.al, label %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit

bb.al:                                            ; preds = %bb.ak
  %i.mn = load ptr, ptr %i.q, align 8, !tbaa !352
  call void %i.mn(ptr noundef nonnull align 8 dereferenceable(172) %13, i64 noundef 1) #23, !inline_history !387
  %.pre.i.i.i.i237 = load i64, ptr %i.p, align 8, !tbaa !355
  %i.mo = icmp ne i64 %.pre.i.i.i.i237, 0
  %i.mp = zext i1 %i.mo to i64
  br label %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit

_ZN3fmt3v126detail6bigintaSIyEEvT_.exit:          ; preds = %bb.ak, %bb.al
  %i.mq = phi i64 [ 1, %bb.ak ], [ %i.mp, %bb.al ]
  store i64 %i.mq, ptr %i.r, align 8, !tbaa !364
  store i32 0, ptr %i.t, align 8, !tbaa !356
  br label %_ZN3fmt3v126detail6bigintlSEi.exit138

_ZN3fmt3v126detail6bigintlSEi.exit138:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i192, %.lr.ph.i186, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit184, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i134, %._crit_edge.i132, %bb.j, %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit232
  %.off0 = phi i32 [ %extract.t, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit232 ], [ %extract.t742, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i134 ], [ %extract.t, %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit ], [ %extract.t742, %bb.j ], [ %extract.t742, %._crit_edge.i132 ], [ %extract.t744, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit184 ], [ %extract.t744, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i192 ], [ %extract.t744, %.lr.ph.i186 ]
  %.2 = phi ptr [ null, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit232 ], [ %.075, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i134 ], [ %13, %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit ], [ %.075, %bb.j ], [ %.075, %._crit_edge.i132 ], [ %.1, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit184 ], [ %.1, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i192 ], [ %.1, %.lr.ph.i186 ] ; 16 uses
  %i.mr = and i32 %.off0, 1                       ; 2 uses
  %i.ms = xor i32 %i.mr, 1                        ; 2 uses
  %.not83 = icmp eq ptr %.2, null                 ; 7 uses
  %spec.store.select = select i1 %.not83, ptr %12, ptr %.2 ; 2 uses
  %i.mt = icmp slt i32 %2, 0                      ; 2 uses
  %i.mu = and i32 %1, 2
  %.not84 = icmp eq i32 %i.mu, 0
  br i1 %.not84, label %bb.bj, label %bb.am

bb.am:                                            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit138
  %i.mv = load i64, ptr %i.c, align 8, !tbaa !364 ; 8 uses
  %i.mw = trunc i64 %i.mv to i32
  %i.mx = load i32, ptr %i.e, align 8, !tbaa !356 ; 3 uses
  %i.my = add nsw i32 %i.mx, %i.mw                ; 2 uses
  %.2.sroa.gep = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 4 uses
  %spec.store.select.sroa.sel = select i1 %.not83, ptr %i.m, ptr %.2.sroa.gep
  %i.mz = load i64, ptr %spec.store.select.sroa.sel, align 8, !tbaa !364
  %i.na = trunc i64 %i.mz to i32
  %.2.sroa.gep433 = getelementptr inbounds nuw i8, ptr %.2, i64 168
  %spec.store.select.sroa.sel434 = select i1 %.not83, ptr %i.o, ptr %.2.sroa.gep433
  %i.nb = load i32, ptr %spec.store.select.sroa.sel434, align 8, !tbaa !356 ; 3 uses
  %i.nc = add nsw i32 %i.nb, %i.na                ; 2 uses
  %i.nd = call noundef i32 @llvm.smax.i32(i32 %i.my, i32 %i.nc) ; 2 uses
  %i.ne = load i64, ptr %i.h, align 8, !tbaa !364 ; 2 uses
  %i.nf = trunc i64 %i.ne to i32
end_hunk_0
