Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/chrono-test?download=true
inline.NumInlined: 21374
inline.NumDeleted: 3955
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 160
loop-unroll.NumUnrolled: 225
begin_hunk_0_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a

bb.o:                                             ; preds = %.noexc141, %bb.m
  %i.ck = phi i64 [ %i.cg, %bb.m ], [ %.pre.i.i.i.i140, %.noexc141 ]
  %i.cl = phi i64 [ 1, %bb.m ], [ %i.cj, %.noexc141 ] ; 2 uses
  store i64 %i.cl, ptr %i.r, align 8, !tbaa !538
  %i.cm = add nuw nsw i32 %i.x, 1                 ; 2 uses
  %i.cn = lshr i32 %i.cm, 5
  store i32 %i.cn, ptr %i.t, align 8, !tbaa !537
  %i.co = and i32 %i.cm, 31                       ; 3 uses
  %i.cp = icmp eq i32 %i.co, 0
  %.not19.i143 = icmp eq i64 %i.cl, 0
  %or.cond558 = or i1 %i.cp, %.not19.i143
  br i1 %or.cond558, label %_ZN3fmt3v126detail6bigintlSEi.exit155, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %bb.o
  %i.cq = load ptr, ptr %8, align 8, !tbaa !532   ; 3 uses
  %i.cr = sub nuw nsw i32 32, %i.co
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !239 ; 2 uses
  %i.ct = lshr i32 %i.cs, %i.cr                   ; 2 uses
  %i.cu = shl i32 %i.cs, %i.co
  store i32 %i.cu, ptr %i.cq, align 4, !tbaa !239
  %.not.i149 = icmp eq i32 %i.ct, 0
  br i1 %.not.i149, label %_ZN3fmt3v126detail6bigintlSEi.exit155, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i144
  %.not565 = icmp ugt i64 %i.ck, 1
  br i1 %.not565, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i150, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = load ptr, ptr %i.q, align 8, !tbaa !531
  invoke void %i.cv(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef 2)
          to label %.noexc154 unwind label %.loopexit.split-lp, !inline_history !5695

.noexc154:                                        ; preds = %bb.q
  %.pre.i.i152 = load i64, ptr %i.r, align 8, !tbaa !538 ; 2 uses
  %.pre2.i.i153 = add i64 %.pre.i.i152, 1
  %.pre680 = load ptr, ptr %8, align 8, !tbaa !532
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i150

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i150: ; preds = %.noexc154, %bb.p
  %i.cw = phi ptr [ %i.cq, %bb.p ], [ %.pre680, %.noexc154 ]
  %.pre-phi.i.i151 = phi i64 [ 2, %bb.p ], [ %.pre2.i.i153, %.noexc154 ]
  %i.cx = phi i64 [ 1, %bb.p ], [ %.pre.i.i152, %.noexc154 ]
  store i64 %.pre-phi.i.i151, ptr %i.r, align 8, !tbaa !538
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cx
  store i32 %i.ct, ptr %i.cy, align 4, !tbaa !239
  br label %_ZN3fmt3v126detail6bigintlSEi.exit155

.loopexit566:                                     ; preds = %bb.ab
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.al, %bb.e, %_ZN3fmt3v126detail6bigintlSEi.exit155, %bb.v, %_ZN3fmt3v126detail6bigintlSEi.exit253, %bb.h, %bb.i, %bb.l, %bb.n, %bb.q, %bb.t, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179, %bb.z, %bb.ad, %bb.ae, %bb.ah, %bb.ao, %bb.as, %bb.at, %bb.aw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN3fmt3v126detail6bigintlSEi.exit155:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i150, %.lr.ph.i144, %bb.o, %_ZN3fmt3v126detail6bigintlSEi.exit135
  %.079 = phi ptr [ null, %_ZN3fmt3v126detail6bigintlSEi.exit135 ], [ %8, %bb.o ], [ %8, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i150 ], [ %8, %.lr.ph.i144 ] ; 3 uses
  %i.cz = load i32, ptr %4, align 4, !tbaa !239
  invoke void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.cz)
          to label %bb.r unwind label %.loopexit.split-lp

bb.r:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit155
  %i.da = load i64, ptr %i.h, align 8, !tbaa !538 ; 7 uses
  %.not19.i156 = icmp eq i64 %i.da, 0
  %extract.t814 = trunc i128 %i.z to i32          ; 3 uses
  br i1 %.not19.i156, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %bb.r
  %i.db = load ptr, ptr %6, align 8, !tbaa !532   ; 3 uses
  %i.dc = xor i32 %i.u, 31                        ; 2 uses
  %min.iters.check1391 = icmp ult i64 %i.da, 8
  br i1 %min.iters.check1391, label %scalar.ph1390.preheader, label %vector.ph1392

vector.ph1392:                                    ; preds = %.lr.ph.i157
  %n.vec1393 = and i64 %i.da, -8                  ; 3 uses
  %broadcast.splatinsert1394 = insertelement <4 x i32> poison, i32 %i.dc, i64 0
  %broadcast.splat1395 = shufflevector <4 x i32> %broadcast.splatinsert1394, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1396 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat1397 = shufflevector <4 x i32> %broadcast.splatinsert1396, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1398

vector.body1398:                                  ; preds = %vector.body1398, %vector.ph1392
  %index1399 = phi i64 [ 0, %vector.ph1392 ], [ %index.next1403, %vector.body1398 ] ; 2 uses
  %vector.recur1400 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1392 ], [ %i.dg, %vector.body1398 ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %index1399 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %wide.load1401 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !239 ; 2 uses
  %wide.load1402 = load <4 x i32>, ptr %i.de, align 4, !tbaa !239 ; 2 uses
  %i.df = lshr <4 x i32> %wide.load1401, %broadcast.splat1395 ; 2 uses
  %i.dg = lshr <4 x i32> %wide.load1402, %broadcast.splat1395 ; 3 uses
  %i.dh = shufflevector <4 x i32> %vector.recur1400, <4 x i32> %i.df, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.di = shufflevector <4 x i32> %i.df, <4 x i32> %i.dg, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dj = shl <4 x i32> %wide.load1401, %broadcast.splat1397
  %i.dk = shl <4 x i32> %wide.load1402, %broadcast.splat1397
  %i.dl = add <4 x i32> %i.dj, %i.dh
  %i.dm = add <4 x i32> %i.dk, %i.di
  store <4 x i32> %i.dl, ptr %i.dd, align 4, !tbaa !239
  store <4 x i32> %i.dm, ptr %i.de, align 4, !tbaa !239
  %index.next1403 = add nuw i64 %index1399, 8     ; 2 uses
  %i.dn = icmp eq i64 %index.next1403, %n.vec1393
  br i1 %i.dn, label %middle.block1404, label %vector.body1398, !llvm.loop !5697

middle.block1404:                                 ; preds = %vector.body1398
  %vector.recur.extract1405 = extractelement <4 x i32> %i.dg, i64 3 ; 2 uses
  %cmp.n1406 = icmp eq i64 %i.da, %n.vec1393
  br i1 %cmp.n1406, label %._crit_edge.i161, label %scalar.ph1390.preheader

scalar.ph1390.preheader:                          ; preds = %.lr.ph.i157, %middle.block1404
  %.01418.i158.ph = phi i64 [ 0, %.lr.ph.i157 ], [ %n.vec1393, %middle.block1404 ]
  %.017.i159.ph = phi i32 [ 0, %.lr.ph.i157 ], [ %vector.recur.extract1405, %middle.block1404 ]
  br label %scalar.ph1390

._crit_edge.i161:                                 ; preds = %scalar.ph1390, %middle.block1404
  %.lcssa1267 = phi i32 [ %vector.recur.extract1405, %middle.block1404 ], [ %i.dq, %scalar.ph1390 ] ; 2 uses
  %.not.i162 = icmp eq i32 %.lcssa1267, 0
  br i1 %.not.i162, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %bb.s

scalar.ph1390:                                    ; preds = %scalar.ph1390.preheader, %scalar.ph1390
  %.01418.i158 = phi i64 [ %i.dt, %scalar.ph1390 ], [ %.01418.i158.ph, %scalar.ph1390.preheader ] ; 2 uses
  %.017.i159 = phi i32 [ %i.dq, %scalar.ph1390 ], [ %.017.i159.ph, %scalar.ph1390.preheader ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.01418.i158 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !239 ; 2 uses
  %i.dq = lshr i32 %i.dp, %i.dc                   ; 2 uses
  %i.dr = shl i32 %i.dp, %i.v
  %i.ds = add i32 %i.dr, %.017.i159
  store i32 %i.ds, ptr %i.do, align 4, !tbaa !239
  %i.dt = add nuw i64 %.01418.i158, 1             ; 2 uses
  %exitcond.not.i160 = icmp eq i64 %i.dt, %i.da
  br i1 %exitcond.not.i160, label %._crit_edge.i161, label %scalar.ph1390, !llvm.loop !5698

bb.s:                                             ; preds = %._crit_edge.i161
  %i.du = add i64 %i.da, 1                        ; 3 uses
  %i.dv = load i64, ptr %i.f, align 8, !tbaa !533
  %i.dw = icmp ugt i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.t, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163

bb.t:                                             ; preds = %bb.s
  %i.dx = load ptr, ptr %i.g, align 8, !tbaa !531
  invoke void %i.dx(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.du)
          to label %.noexc167 unwind label %.loopexit.split-lp, !inline_history !5695

.noexc167:                                        ; preds = %bb.t
  %.pre.i.i165 = load i64, ptr %i.h, align 8, !tbaa !538 ; 2 uses
  %.pre2.i.i166 = add i64 %.pre.i.i165, 1
  %.pre681 = load ptr, ptr %6, align 8, !tbaa !532
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163: ; preds = %.noexc167, %bb.s
  %i.dy = phi ptr [ %i.db, %bb.s ], [ %.pre681, %.noexc167 ]
  %.pre-phi.i.i164 = phi i64 [ %i.du, %bb.s ], [ %.pre2.i.i166, %.noexc167 ]
  %i.dz = phi i64 [ %i.da, %bb.s ], [ %.pre.i.i165, %.noexc167 ]
  store i64 %.pre-phi.i.i164, ptr %i.h, align 8, !tbaa !538
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dz
  store i32 %.lcssa1267, ptr %i.ea, align 4, !tbaa !239
  br label %_ZN3fmt3v126detail6bigintlSEi.exit168

bb.u:                                             ; preds = %bb.a
  %i.eb = load i32, ptr %4, align 4, !tbaa !239   ; 2 uses
  %i.ec = icmp slt i32 %i.eb, 0
  br i1 %i.ec, label %bb.v, label %bb.ai

bb.v:                                             ; preds = %bb.u
  %i.ed = sub nsw i32 0, %i.eb
  invoke void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %5, i32 noundef %i.ed)
          to label %bb.w unwind label %.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.ee = load i64, ptr %i.c, align 8, !tbaa !538 ; 7 uses
  %i.ef = load i64, ptr %i.k, align 8, !tbaa !533
  %i.eg = icmp ugt i64 %i.ee, %i.ef
  br i1 %i.eg, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i: ; preds = %bb.w
  %i.eh = load ptr, ptr %i.l, align 8, !tbaa !531
  invoke void %i.eh(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.ee)
          to label %.noexc170 unwind label %.loopexit.split-lp, !inline_history !5699

.noexc170:                                        ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i
  %.pre.i.i.i = load i64, ptr %i.k, align 8, !tbaa !533
  %i.ei = call noundef i64 @llvm.umin.i64(i64 %i.ee, i64 %.pre.i.i.i)
  store i64 %i.ei, ptr %i.m, align 8, !tbaa !538
  %i.ej = load ptr, ptr %5, align 8, !tbaa !532   ; 2 uses
  %.idx8.i = shl nuw nsw i64 %i.ee, 2
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.idx8.i
  br label %.lr.ph.i.preheader.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.w
  store i64 %i.ee, ptr %i.m, align 8, !tbaa !538
  %i.el = load ptr, ptr %5, align 8, !tbaa !532   ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.ee, 2
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %.not6.i.i = icmp eq i64 %i.ee, 0
  br i1 %.not6.i.i, label %.loopexit567, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i, %.noexc170
  %i.en = phi ptr [ %i.ek, %.noexc170 ], [ %i.em, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 2 uses
  %i.eo = phi ptr [ %i.ej, %.noexc170 ], [ %i.el, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 6 uses
  %i.ep = ptrtoaddr ptr %i.en to i64
  %i.eq = ptrtoaddr ptr %i.eo to i64              ; 2 uses
  %i.er = load ptr, ptr %7, align 8, !tbaa !532   ; 4 uses
  %i.es = add i64 %i.ep, -4
  %i.et = sub i64 %i.es, %i.eq                    ; 2 uses
  %i.eu = lshr i64 %i.et, 2
  %i.ev = add nuw nsw i64 %i.eu, 1                ; 2 uses
  %min.iters.check1307 = icmp ult i64 %i.et, 44
  %i.ew = ptrtoaddr ptr %i.er to i64
  %i.ex = sub i64 %i.eq, %i.ew
  %diff.check = icmp ugt i64 %i.ex, -32
  %or.cond1411 = select i1 %min.iters.check1307, i1 true, i1 %diff.check
  br i1 %or.cond1411, label %.lr.ph.i.i.preheader, label %vector.ph1308

vector.ph1308:                                    ; preds = %.lr.ph.i.preheader.i
  %n.vec1309 = and i64 %i.ev, 9223372036854775800 ; 3 uses
  %i.ey = shl i64 %n.vec1309, 2                   ; 2 uses
  %i.ez = getelementptr i8, ptr %i.er, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.eo, i64 %i.ey
  br label %vector.body1310

vector.body1310:                                  ; preds = %vector.body1310, %vector.ph1308
  %index1311 = phi i64 [ 0, %vector.ph1308 ], [ %index.next1315, %vector.body1310 ] ; 2 uses
  %i.fb = shl i64 %index1311, 2                   ; 2 uses
  %next.gep = getelementptr i8, ptr %i.er, i64 %i.fb ; 2 uses
  %next.gep1312 = getelementptr i8, ptr %i.eo, i64 %i.fb ; 2 uses
  %i.fc = getelementptr i8, ptr %next.gep1312, i64 16
  %wide.load1313 = load <4 x i32>, ptr %next.gep1312, align 4, !tbaa !239
  %wide.load1314 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !239
  %i.fd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load1313, ptr %next.gep, align 4, !tbaa !239
  store <4 x i32> %wide.load1314, ptr %i.fd, align 4, !tbaa !239
  %index.next1315 = add nuw i64 %index1311, 8     ; 2 uses
  %i.fe = icmp eq i64 %index.next1315, %n.vec1309
  br i1 %i.fe, label %middle.block1316, label %vector.body1310, !llvm.loop !5700

middle.block1316:                                 ; preds = %vector.body1310
  %cmp.n1317 = icmp eq i64 %i.ev, %n.vec1309
  br i1 %cmp.n1317, label %.loopexit567, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block1316
  %.08.i.i.ph = phi ptr [ %i.er, %.lr.ph.i.preheader.i ], [ %i.ez, %middle.block1316 ]
  %.057.i.i.ph = phi ptr [ %i.eo, %.lr.ph.i.preheader.i ], [ %i.fa, %middle.block1316 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.fh, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.ff, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4 ; 2 uses
  %i.fg = load i32, ptr %.057.i.i, align 4, !tbaa !239
  %i.fh = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.fg, ptr %.08.i.i, align 4, !tbaa !239
  %.not.i.i169 = icmp eq ptr %i.ff, %i.en
  br i1 %.not.i.i169, label %.loopexit567, label %.lr.ph.i.i, !llvm.loop !5701

.loopexit567:                                     ; preds = %.lr.ph.i.i, %middle.block1316, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.fi = phi ptr [ %i.el, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ], [ %i.eo, %middle.block1316 ], [ %i.eo, %.lr.ph.i.i ] ; 2 uses
  %i.fj = load i32, ptr %i.e, align 8, !tbaa !537 ; 2 uses
  store i32 %i.fj, ptr %i.o, align 8, !tbaa !537
  br i1 %.not, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %bb.x

bb.x:                                             ; preds = %.loopexit567
  %i.fk = load i64, ptr %i.c, align 8, !tbaa !538 ; 8 uses
  %i.fl = load i64, ptr %i.p, align 8, !tbaa !533 ; 2 uses
  %i.fm = icmp ugt i64 %i.fk, %i.fl
  br i1 %i.fm, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179: ; preds = %bb.x
  %i.fn = load ptr, ptr %i.q, align 8, !tbaa !531
  invoke void %i.fn(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.fk)
          to label %.noexc182 unwind label %.loopexit.split-lp, !inline_history !5699

.noexc182:                                        ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179
  %.pre.i.i.i180 = load i64, ptr %i.p, align 8, !tbaa !533 ; 2 uses
  %i.fo = call noundef i64 @llvm.umin.i64(i64 %i.fk, i64 %.pre.i.i.i180) ; 2 uses
  store i64 %i.fo, ptr %i.r, align 8, !tbaa !538
  %i.fp = load ptr, ptr %5, align 8, !tbaa !532   ; 2 uses
  %.idx8.i181 = shl nuw nsw i64 %i.fk, 2
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.idx8.i181
  br label %.lr.ph.i.preheader.i174

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171: ; preds = %bb.x
  store i64 %i.fk, ptr %i.r, align 8, !tbaa !538
  %.idx.i172 = shl nuw nsw i64 %i.fk, 2
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 %.idx.i172
  %.not6.i.i173 = icmp eq i64 %i.fk, 0
  br i1 %.not6.i.i173, label %.thread, label %.lr.ph.i.preheader.i174

.thread:                                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171
  store i32 %i.fj, ptr %i.t, align 8, !tbaa !537
  br label %_ZN3fmt3v126detail6bigintlSEi.exit196

.lr.ph.i.preheader.i174:                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171, %.noexc182
  %i.fs = phi i64 [ %.pre.i.i.i180, %.noexc182 ], [ %i.fl, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ]
  %.pr = phi i64 [ %i.fo, %.noexc182 ], [ %i.fk, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 7 uses
  %i.ft = phi ptr [ %i.fq, %.noexc182 ], [ %i.fr, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 2 uses
  %i.fu = phi ptr [ %i.fp, %.noexc182 ], [ %i.fi, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 4 uses
  %i.fv = ptrtoaddr ptr %i.ft to i64
  %i.fw = ptrtoaddr ptr %i.fu to i64              ; 2 uses
  %i.fx = load ptr, ptr %8, align 8, !tbaa !532   ; 7 uses
  %i.fy = add i64 %i.fv, -4
  %i.fz = sub i64 %i.fy, %i.fw                    ; 2 uses
  %i.ga = lshr i64 %i.fz, 2
  %i.gb = add nuw nsw i64 %i.ga, 1                ; 2 uses
  %min.iters.check1323 = icmp ult i64 %i.fz, 44
  %i.gc = ptrtoaddr ptr %i.fx to i64
  %i.gd = sub i64 %i.fw, %i.gc
  %diff.check1321 = icmp ugt i64 %i.gd, -32
  %or.cond1413 = select i1 %min.iters.check1323, i1 true, i1 %diff.check1321
  br i1 %or.cond1413, label %.lr.ph.i.i175.preheader, label %vector.ph1324

vector.ph1324:                                    ; preds = %.lr.ph.i.preheader.i174
  %n.vec1325 = and i64 %i.gb, 9223372036854775800 ; 3 uses
  %i.ge = shl i64 %n.vec1325, 2                   ; 2 uses
  %i.gf = getelementptr i8, ptr %i.fx, i64 %i.ge
  %i.gg = getelementptr i8, ptr %i.fu, i64 %i.ge
  br label %vector.body1326

vector.body1326:                                  ; preds = %vector.body1326, %vector.ph1324
  %index1327 = phi i64 [ 0, %vector.ph1324 ], [ %index.next1332, %vector.body1326 ] ; 2 uses
  %i.gh = shl i64 %index1327, 2                   ; 2 uses
  %next.gep1328 = getelementptr i8, ptr %i.fx, i64 %i.gh ; 2 uses
  %next.gep1329 = getelementptr i8, ptr %i.fu, i64 %i.gh ; 2 uses
  %i.gi = getelementptr i8, ptr %next.gep1329, i64 16
  %wide.load1330 = load <4 x i32>, ptr %next.gep1329, align 4, !tbaa !239
  %wide.load1331 = load <4 x i32>, ptr %i.gi, align 4, !tbaa !239
  %i.gj = getelementptr i8, ptr %next.gep1328, i64 16
  store <4 x i32> %wide.load1330, ptr %next.gep1328, align 4, !tbaa !239
  store <4 x i32> %wide.load1331, ptr %i.gj, align 4, !tbaa !239
  %index.next1332 = add nuw i64 %index1327, 8     ; 2 uses
  %i.gk = icmp eq i64 %index.next1332, %n.vec1325
  br i1 %i.gk, label %middle.block1333, label %vector.body1326, !llvm.loop !5702

middle.block1333:                                 ; preds = %vector.body1326
  %cmp.n1334 = icmp eq i64 %i.gb, %n.vec1325
  br i1 %cmp.n1334, label %.loopexit1409, label %.lr.ph.i.i175.preheader

.lr.ph.i.i175.preheader:                          ; preds = %.lr.ph.i.preheader.i174, %middle.block1333
  %.08.i.i176.ph = phi ptr [ %i.fx, %.lr.ph.i.preheader.i174 ], [ %i.gf, %middle.block1333 ]
  %.057.i.i177.ph = phi ptr [ %i.fu, %.lr.ph.i.preheader.i174 ], [ %i.gg, %middle.block1333 ]
  br label %.lr.ph.i.i175

.lr.ph.i.i175:                                    ; preds = %.lr.ph.i.i175.preheader, %.lr.ph.i.i175
  %.08.i.i176 = phi ptr [ %i.gn, %.lr.ph.i.i175 ], [ %.08.i.i176.ph, %.lr.ph.i.i175.preheader ] ; 2 uses
  %.057.i.i177 = phi ptr [ %i.gl, %.lr.ph.i.i175 ], [ %.057.i.i177.ph, %.lr.ph.i.i175.preheader ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.057.i.i177, i64 4 ; 2 uses
  %i.gm = load i32, ptr %.057.i.i177, align 4, !tbaa !239
  %i.gn = getelementptr inbounds nuw i8, ptr %.08.i.i176, i64 4
  store i32 %i.gm, ptr %.08.i.i176, align 4, !tbaa !239
  %.not.i.i178 = icmp eq ptr %i.gl, %i.ft
  br i1 %.not.i.i178, label %.loopexit1409, label %.lr.ph.i.i175, !llvm.loop !5703

.loopexit1409:                                    ; preds = %.lr.ph.i.i175, %middle.block1333
  %i.go = load i32, ptr %i.e, align 8, !tbaa !537
  store i32 %i.go, ptr %i.t, align 8, !tbaa !537
  %.not19.i184 = icmp eq i64 %.pr, 0
  br i1 %.not19.i184, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %.lr.ph.i185.preheader

.lr.ph.i185.preheader:                            ; preds = %.loopexit1409
  %min.iters.check1338 = icmp ult i64 %.pr, 8
  br i1 %min.iters.check1338, label %.lr.ph.i185.preheader1478, label %vector.ph1339

vector.ph1339:                                    ; preds = %.lr.ph.i185.preheader
  %n.vec1340 = and i64 %.pr, -8                   ; 3 uses
  br label %vector.body1341

vector.body1341:                                  ; preds = %vector.body1341, %vector.ph1339
  %index1342 = phi i64 [ 0, %vector.ph1339 ], [ %index.next1346, %vector.body1341 ] ; 2 uses
  %vector.recur1343 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1339 ], [ %i.gs, %vector.body1341 ]
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %index1342 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %wide.load1344 = load <4 x i32>, ptr %i.gp, align 4, !tbaa !239 ; 2 uses
  %wide.load1345 = load <4 x i32>, ptr %i.gq, align 4, !tbaa !239 ; 3 uses
  %i.gr = lshr <4 x i32> %wide.load1344, splat (i32 31) ; 2 uses
  %i.gs = lshr <4 x i32> %wide.load1345, splat (i32 31) ; 3 uses
  %i.gt = shufflevector <4 x i32> %vector.recur1343, <4 x i32> %i.gr, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.gu = shufflevector <4 x i32> %i.gr, <4 x i32> %i.gs, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.gv = shl <4 x i32> %wide.load1344, splat (i32 1)
  %i.gw = shl <4 x i32> %wide.load1345, splat (i32 1)
  %i.gx = or disjoint <4 x i32> %i.gv, %i.gt
  %i.gy = or disjoint <4 x i32> %i.gw, %i.gu
  store <4 x i32> %i.gx, ptr %i.gp, align 4, !tbaa !239
  store <4 x i32> %i.gy, ptr %i.gq, align 4, !tbaa !239
  %index.next1346 = add nuw i64 %index1342, 8     ; 2 uses
  %i.gz = icmp eq i64 %index.next1346, %n.vec1340
  br i1 %i.gz, label %middle.block1347, label %vector.body1341, !llvm.loop !5704

middle.block1347:                                 ; preds = %vector.body1341
  %vector.recur.extract1348 = extractelement <4 x i32> %i.gs, i64 3 ; 2 uses
  %i.ha = extractelement <4 x i32> %wide.load1345, i64 3
  %cmp.n1349 = icmp eq i64 %.pr, %n.vec1340
  br i1 %cmp.n1349, label %._crit_edge.i189, label %.lr.ph.i185.preheader1478

.lr.ph.i185.preheader1478:                        ; preds = %.lr.ph.i185.preheader, %middle.block1347
  %.01418.i186.ph = phi i64 [ 0, %.lr.ph.i185.preheader ], [ %n.vec1340, %middle.block1347 ]
  %.017.i187.ph = phi i32 [ 0, %.lr.ph.i185.preheader ], [ %vector.recur.extract1348, %middle.block1347 ]
  br label %.lr.ph.i185

._crit_edge.i189:                                 ; preds = %.lr.ph.i185, %middle.block1347
  %.lcssa1274 = phi i32 [ %i.ha, %middle.block1347 ], [ %i.hc, %.lr.ph.i185 ]
  %.lcssa1273 = phi i32 [ %vector.recur.extract1348, %middle.block1347 ], [ %i.hd, %.lr.ph.i185 ]
  %.not.i190 = icmp sgt i32 %.lcssa1274, -1
  br i1 %.not.i190, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %bb.y

.lr.ph.i185:                                      ; preds = %.lr.ph.i185.preheader1478, %.lr.ph.i185
  %.01418.i186 = phi i64 [ %i.hg, %.lr.ph.i185 ], [ %.01418.i186.ph, %.lr.ph.i185.preheader1478 ] ; 2 uses
  %.017.i187 = phi i32 [ %i.hd, %.lr.ph.i185 ], [ %.017.i187.ph, %.lr.ph.i185.preheader1478 ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %.01418.i186 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !239 ; 3 uses
  %i.hd = lshr i32 %i.hc, 31                      ; 2 uses
  %i.he = shl i32 %i.hc, 1
  %i.hf = or disjoint i32 %i.he, %.017.i187
  store i32 %i.hf, ptr %i.hb, align 4, !tbaa !239
  %i.hg = add nuw i64 %.01418.i186, 1             ; 2 uses
  %exitcond.not.i188 = icmp eq i64 %i.hg, %.pr
  br i1 %exitcond.not.i188, label %._crit_edge.i189, label %.lr.ph.i185, !llvm.loop !5705

bb.y:                                             ; preds = %._crit_edge.i189
  %i.hh = add i64 %.pr, 1                         ; 3 uses
  %i.hi = icmp ugt i64 %i.hh, %i.fs
  br i1 %i.hi, label %bb.z, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191

bb.z:                                             ; preds = %bb.y
  %i.hj = load ptr, ptr %i.q, align 8, !tbaa !531
  invoke void %i.hj(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.hh)
          to label %.noexc195 unwind label %.loopexit.split-lp, !inline_history !5695

.noexc195:                                        ; preds = %bb.z
  %.pre.i.i193 = load i64, ptr %i.r, align 8, !tbaa !538 ; 2 uses
  %.pre2.i.i194 = add i64 %.pre.i.i193, 1
  %.pre675 = load ptr, ptr %8, align 8, !tbaa !532
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191: ; preds = %.noexc195, %bb.y
  %i.hk = phi ptr [ %i.fx, %bb.y ], [ %.pre675, %.noexc195 ]
  %.pre-phi.i.i192 = phi i64 [ %i.hh, %bb.y ], [ %.pre2.i.i194, %.noexc195 ]
  %i.hl = phi i64 [ %.pr, %bb.y ], [ %.pre.i.i193, %.noexc195 ]
  store i64 %.pre-phi.i.i192, ptr %i.r, align 8, !tbaa !538
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.hl
  store i32 %.lcssa1273, ptr %i.hm, align 4, !tbaa !239
  br label %_ZN3fmt3v126detail6bigintlSEi.exit196

_ZN3fmt3v126detail6bigintlSEi.exit196:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191, %._crit_edge.i189, %.loopexit1409, %.thread, %.loopexit567
  %.1 = phi ptr [ null, %.loopexit567 ], [ %8, %.thread ], [ %8, %.loopexit1409 ], [ %8, %._crit_edge.i189 ], [ %8, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191 ] ; 3 uses
  %i.hn = load i128, ptr %0, align 16, !tbaa !5725 ; 3 uses
  %i.ho = and i128 %i.hn, 18446744073709551615
  %i.hp = load i64, ptr %i.c, align 8, !tbaa !538 ; 4 uses
  %.not23.i.i = icmp eq i64 %i.hp, 0
  br i1 %.not23.i.i, label %_ZN3fmt3v126detail6bigintlSEi.exit213, label %.lr.ph.i.i197

.lr.ph.i.i197:                                    ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit196
  %i.hq = load ptr, ptr %5, align 8, !tbaa !532   ; 3 uses
  %i.hr = lshr i128 %i.hn, 32
  %i.hs = and i128 %i.hr, 79228162514264337589248983040
  br label %bb.aa

.preheader.i.i:                                   ; preds = %bb.aa
  %.not20.i.i = icmp eq i128 %i.id, 0
  br i1 %.not20.i.i, label %.lr.ph.i202, label %.lr.ph22.i.i

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.i197
  %.019.i.i = phi i64 [ 0, %.lr.ph.i.i197 ], [ %i.if, %bb.aa ] ; 2 uses
  %.01718.i.i = phi i128 [ 0, %.lr.ph.i.i197 ], [ %i.id, %bb.aa ] ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %.019.i.i ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !239
  %i.hv = zext i32 %i.hu to i128                  ; 2 uses
  %i.hw = mul nuw nsw i128 %i.ho, %i.hv
  %i.hx = and i128 %.01718.i.i, 4294967295
  %i.hy = add nuw nsw i128 %i.hw, %i.hx           ; 2 uses
  %i.hz = mul nuw i128 %i.hs, %i.hv
  %i.ia = lshr i128 %i.hy, 32
  %i.ib = lshr i128 %.01718.i.i, 32
  %i.ic = add nuw i128 %i.hz, %i.ib
  %i.id = add nuw i128 %i.ic, %i.ia               ; 3 uses
  %i.ie = trunc i128 %i.hy to i32
  store i32 %i.ie, ptr %i.ht, align 4, !tbaa !239
  %i.if = add nuw i64 %.019.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.if, %i.hp
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.aa, !llvm.loop !5706

.lr.ph22.i.i:                                     ; preds = %.preheader.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i
  %i.ig = phi ptr [ %i.in, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.hq, %.preheader.i.i ]
  %i.ih = phi i64 [ %.pre-phi.i.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.hp, %.preheader.i.i ] ; 2 uses
  %.121.i.i = phi i128 [ %i.iq, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.id, %.preheader.i.i ] ; 2 uses
  %i.ii = trunc i128 %.121.i.i to i32
  %i.ij = add i64 %i.ih, 1                        ; 3 uses
  %i.ik = load i64, ptr %i.a, align 8, !tbaa !533
  %i.il = icmp ugt i64 %i.ij, %i.ik
  br i1 %i.il, label %bb.ab, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

bb.ab:                                            ; preds = %.lr.ph22.i.i
  %i.im = load ptr, ptr %i.b, align 8, !tbaa !531
  invoke void %i.im(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.ij)
          to label %.noexc200 unwind label %.loopexit566, !inline_history !5707

.noexc200:                                        ; preds = %bb.ab
  %.pre.i.i.i199 = load i64, ptr %i.c, align 8, !tbaa !538 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i199, 1
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !532
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %.noexc200, %.lr.ph22.i.i
  %i.in = phi ptr [ %i.ig, %.lr.ph22.i.i ], [ %.pre.i, %.noexc200 ] ; 3 uses
  %.pre-phi.i.i.i = phi i64 [ %i.ij, %.lr.ph22.i.i ], [ %.pre2.i.i.i, %.noexc200 ] ; 4 uses
  %i.io = phi i64 [ %i.ih, %.lr.ph22.i.i ], [ %.pre.i.i.i199, %.noexc200 ]
  store i64 %.pre-phi.i.i.i, ptr %i.c, align 8, !tbaa !538
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.io
end_hunk_0
