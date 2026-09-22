Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yyjson/original/yyjson?download=true
inline.NumInlined: 38
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 115
begin_hunk_0_@yyjson_val_write_opts:bb.a
  %i.ym = load i16, ptr %i.yl, align 2
  store i16 %i.ym, ptr %i.yi, align 1
  %i.yn = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 6
  %i.yo = getelementptr inbounds nuw i8, ptr %.8.i422, i64 3
  br label %.preheader.backedge

bb.dx:                                            ; preds = %bb.dg
  %.sroa.0.0.copyload.i333.i427 = load i32, ptr %.8.i422, align 1 ; 9 uses
  %i.yp = and i32 %.sroa.0.0.copyload.i333.i427, -1061109512
  %i.yq = icmp ne i32 %i.yp, -2139062032
  %i.yr = and i32 %.sroa.0.0.copyload.i333.i427, 12295
  %.not288.i428 = icmp eq i32 %i.yr, 0
  %or.cond323.i429 = or i1 %i.yq, %.not288.i428
  %i.ys = lshr i32 %.sroa.0.0.copyload.i333.i427, 24
  br i1 %or.cond323.i429, label %.thread1074, label %bb.dy, !prof !139

bb.dy:                                            ; preds = %bb.dx
  %i.yt = and i32 %.sroa.0.0.copyload.i333.i427, 4
  %i.yu = icmp ne i32 %i.yt, 0
  %i.yv = and i32 %.sroa.0.0.copyload.i333.i427, 12291
  %i.yw = icmp ne i32 %i.yv, 0
  %.not291.i430 = and i1 %i.yu, %i.yw
  br i1 %.not291.i430, label %.thread1074, label %.critedge325.i433, !prof !45

.critedge325.i433:                                ; preds = %bb.dy
  %i.yx = shl i32 %.sroa.0.0.copyload.i333.i427, 18
  %i.yy = and i32 %i.yx, 1835008
  %i.yz = shl i32 %.sroa.0.0.copyload.i333.i427, 4
  %i.za = and i32 %i.yz, 258048
  %i.zb = lshr i32 %.sroa.0.0.copyload.i333.i427, 10 ; 2 uses
  %i.zc = and i32 %i.zb, 3072
  %i.zd = and i32 %i.ys, 63
  %i.ze = add nsw i32 %i.yy, -65536
  %i.zf = add nsw i32 %i.ze, %i.za                ; 2 uses
  %i.zg = or disjoint i32 %i.zf, %i.zc
  %i.zh = lshr exact i32 %i.zf, 10
  %i.zi = add nuw nsw i32 %i.zh, 55296
  store i16 30044, ptr %.8253.i421, align 1
  %i.zj = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 2
  %i.zk = lshr i32 %i.zi, 7
  %i.zl = and i32 %i.zk, 65534
  %i.zm = zext nneg i32 %i.zl to i64
  %i.zn = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.zm
  %i.zo = load i16, ptr %i.zn, align 2
  store i16 %i.zo, ptr %i.zj, align 1
  %i.zp = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 4
  %i.zq = lshr exact i32 %i.zg, 9
  %i.zr = and i32 %i.zq, 510
  %i.zs = zext nneg i32 %i.zr to i64
  %i.zt = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.zs
  %i.zu = load i16, ptr %i.zt, align 2
  store i16 %i.zu, ptr %i.zp, align 1
  %i.zv = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 6
  store i16 30044, ptr %i.zv, align 1
  %i.zw = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 8
  %i.zx = lshr i32 %.sroa.0.0.copyload.i333.i427, 17
  %i.zy = and i32 %i.zx, 6
  %i.zz = zext nneg i32 %i.zy to i64
  %i.aaa = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.zz
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 440
  %i.aac = load i16, ptr %i.aab, align 2
  store i16 %i.aac, ptr %i.zw, align 1
  %i.aad = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 10
  %.masked3302 = and i32 %i.zb, 192
  %i.aae = or disjoint i32 %i.zd, %.masked3302
  %i.aaf = shl nuw nsw i32 %i.aae, 1
  %i.aag = zext nneg i32 %i.aaf to i64
  %i.aah = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.aag
  %i.aai = load i16, ptr %i.aah, align 2
  store i16 %i.aai, ptr %i.aad, align 1
  %i.aaj = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 12
  br label %.preheader.backedge

bb.dz:                                            ; preds = %bb.dg, %bb.de
  %i.aak = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 1
  store i8 34, ptr %.8253.i421, align 1, !tbaa !100
  br label %write_str.exit605

bb.ea:                                            ; preds = %bb.dg, %bb.df
  %i.aal = phi i8 [ %i.vf, %bb.dg ], [ %i.ux, %bb.df ]
  br i1 %.not1299, label %.thread1064, label %.thread1074

.thread1064:                                      ; preds = %bb.dp, %bb.dq, %bb.dn, %bb.dl, %bb.do, %bb.do, %bb.dm, %bb.dm, %bb.di, %bb.ea
  %i.aam = phi i8 [ %i.we, %bb.dp ], [ %i.we, %bb.dq ], [ %i.vx, %bb.dn ], [ %i.vr, %bb.dl ], [ %i.vx, %bb.do ], [ %i.vx, %bb.do ], [ %i.vr, %bb.dm ], [ %i.vr, %bb.dm ], [ %i.vm, %bb.di ], [ %i.aal, %bb.ea ]
  br i1 %.not1302, label %.loopexit, label %bb.eb

bb.eb:                                            ; preds = %.thread1064
  %i.aan = getelementptr inbounds nuw i8, ptr %.8.i422, i64 1
  %i.aao = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 1
  store i8 %i.aam, ptr %.8253.i421, align 1, !tbaa !100
  br label %.preheader.backedge

.thread1074:                                      ; preds = %bb.dx, %bb.dy, %bb.dv, %bb.dw, %bb.dw, %bb.dt, %bb.ea
  br i1 %.not1302, label %.loopexit, label %bb.ec

bb.ec:                                            ; preds = %.thread1074
  store i16 30044, ptr %.8253.i421, align 1
  %i.aap = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 2
  store i32 1145456198, ptr %i.aap, align 1
  %i.aaq = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 6
  %i.aar = getelementptr inbounds nuw i8, ptr %.8.i422, i64 1
  br label %.preheader.backedge

bb.ed:                                            ; preds = %bb.bu
  %i.aas = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  %i.aat = icmp ugt i64 %i.a, 4095
  br i1 %i.aat, label %.lr.ph2591, label %.preheader1321

.preheader1321:                                   ; preds = %.lr.ph2591, %bb.ed
  %.021.i82.lcssa = phi ptr [ %i.aas, %bb.ed ], [ %i.abi, %.lr.ph2591 ] ; 5 uses
  %.018.i83.lcssa = phi ptr [ %i.t, %bb.ed ], [ %i.abj, %.lr.ph2591 ] ; 5 uses
  %.0.i84.lcssa = phi i64 [ %i.r, %bb.ed ], [ %i.abk, %.lr.ph2591 ] ; 5 uses
  %i.aau = icmp samesign ugt i64 %.0.i84.lcssa, 3
  br i1 %i.aau, label %.lr.ph2598.preheader, label %.preheader1320

.lr.ph2598.preheader:                             ; preds = %.preheader1321
  %.018.i83.lcssa5252 = ptrtoaddr ptr %.018.i83.lcssa to i64
  %.021.i82.lcssa5251 = ptrtoaddr ptr %.021.i82.lcssa to i64
  %i.aav = add nsw i64 %.0.i84.lcssa, -4          ; 2 uses
  %i.aaw = lshr i64 %i.aav, 2
  %i.aax = add nuw nsw i64 %i.aaw, 1              ; 2 uses
  %min.iters.check5255 = icmp ult i64 %i.aav, 28
  %i.aay = sub i64 %.018.i83.lcssa5252, %.021.i82.lcssa5251
  %diff.check5253 = icmp ugt i64 %i.aay, -32
  %or.cond5310 = select i1 %min.iters.check5255, i1 true, i1 %diff.check5253
  br i1 %or.cond5310, label %.lr.ph2598.preheader5396, label %vector.ph5256

vector.ph5256:                                    ; preds = %.lr.ph2598.preheader
  %n.vec5257 = and i64 %i.aax, 9223372036854775800 ; 4 uses
  %i.aaz = shl i64 %n.vec5257, 2
  %i.aba = sub i64 %.0.i84.lcssa, %i.aaz          ; 2 uses
  %i.abb = shl i64 %n.vec5257, 2                  ; 2 uses
  %i.abc = getelementptr i8, ptr %.018.i83.lcssa, i64 %i.abb ; 2 uses
  %i.abd = getelementptr i8, ptr %.021.i82.lcssa, i64 %i.abb ; 2 uses
  br label %vector.body5258

vector.body5258:                                  ; preds = %vector.body5258, %vector.ph5256
  %index5259 = phi i64 [ 0, %vector.ph5256 ], [ %index.next5264, %vector.body5258 ] ; 2 uses
  %i.abe = shl i64 %index5259, 2                  ; 2 uses
  %next.gep5260 = getelementptr i8, ptr %.018.i83.lcssa, i64 %i.abe ; 2 uses
  %next.gep5261 = getelementptr i8, ptr %.021.i82.lcssa, i64 %i.abe ; 2 uses
  %i.abf = getelementptr i8, ptr %next.gep5260, i64 16
  %wide.load5262 = load <4 x i32>, ptr %next.gep5260, align 1
  %wide.load5263 = load <4 x i32>, ptr %i.abf, align 1
  %i.abg = getelementptr i8, ptr %next.gep5261, i64 16
  store <4 x i32> %wide.load5262, ptr %next.gep5261, align 1
  store <4 x i32> %wide.load5263, ptr %i.abg, align 1
  %index.next5264 = add nuw i64 %index5259, 8     ; 2 uses
  %i.abh = icmp eq i64 %index.next5264, %n.vec5257
  br i1 %i.abh, label %middle.block5265, label %vector.body5258, !llvm.loop !365

middle.block5265:                                 ; preds = %vector.body5258
  %cmp.n5266 = icmp eq i64 %i.aax, %n.vec5257
  br i1 %cmp.n5266, label %.preheader1320, label %.lr.ph2598.preheader5396

.lr.ph2598.preheader5396:                         ; preds = %.lr.ph2598.preheader, %middle.block5265
  %.1.i872597.ph = phi i64 [ %.0.i84.lcssa, %.lr.ph2598.preheader ], [ %i.aba, %middle.block5265 ]
  %.119.i862596.ph = phi ptr [ %.018.i83.lcssa, %.lr.ph2598.preheader ], [ %i.abc, %middle.block5265 ]
  %.122.i852595.ph = phi ptr [ %.021.i82.lcssa, %.lr.ph2598.preheader ], [ %i.abd, %middle.block5265 ]
  br label %.lr.ph2598

.lr.ph2591:                                       ; preds = %bb.ed, %.lr.ph2591
  %.0.i842589 = phi i64 [ %i.abk, %.lr.ph2591 ], [ %i.r, %bb.ed ]
  %.018.i832588 = phi ptr [ %i.abj, %.lr.ph2591 ], [ %i.t, %bb.ed ] ; 2 uses
  %.021.i822587 = phi ptr [ %i.abi, %.lr.ph2591 ], [ %i.aas, %bb.ed ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.021.i822587, ptr noundef nonnull align 1 dereferenceable(16) %.018.i832588, i64 16, i1 false)
  %i.abi = getelementptr inbounds nuw i8, ptr %.021.i822587, i64 16 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %.018.i832588, i64 16 ; 2 uses
  %i.abk = add nsw i64 %.0.i842589, -16           ; 3 uses
  %i.abl = icmp ugt i64 %i.abk, 15
  br i1 %i.abl, label %.lr.ph2591, label %.preheader1321, !llvm.loop !26

.preheader1320:                                   ; preds = %.lr.ph2598, %middle.block5265, %.preheader1321
  %.122.i85.lcssa = phi ptr [ %.021.i82.lcssa, %.preheader1321 ], [ %i.abd, %middle.block5265 ], [ %i.acf, %.lr.ph2598 ] ; 7 uses
  %.119.i86.lcssa = phi ptr [ %.018.i83.lcssa, %.preheader1321 ], [ %i.abc, %middle.block5265 ], [ %i.acg, %.lr.ph2598 ] ; 6 uses
  %.1.i87.lcssa = phi i64 [ %.0.i84.lcssa, %.preheader1321 ], [ %i.aba, %middle.block5265 ], [ %i.ach, %.lr.ph2598 ] ; 11 uses
  %.not.i912602 = icmp eq i64 %.1.i87.lcssa, 0
  br i1 %.not.i912602, label %write_str_noesc.exit92, label %iter.check5293

iter.check5293:                                   ; preds = %.preheader1320
  %.119.i86.lcssa5272 = ptrtoaddr ptr %.119.i86.lcssa to i64
  %.122.i85.lcssa5271 = ptrtoaddr ptr %.122.i85.lcssa to i64
  %min.iters.check5275 = icmp ult i64 %.1.i87.lcssa, 4
  %i.abm = sub i64 %.119.i86.lcssa5272, %.122.i85.lcssa5271
  %diff.check5273 = icmp ugt i64 %i.abm, -32
  %or.cond5311 = select i1 %min.iters.check5275, i1 true, i1 %diff.check5273
  br i1 %or.cond5311, label %.lr.ph2606.preheader, label %vector.main.loop.iter.check5276

vector.main.loop.iter.check5276:                  ; preds = %iter.check5293
  %min.iters.check5277 = icmp ult i64 %.1.i87.lcssa, 32
  br i1 %min.iters.check5277, label %vec.epilog.ph5297, label %vector.ph5278

vector.ph5278:                                    ; preds = %vector.main.loop.iter.check5276
  %i.abn = and i64 %.1.i87.lcssa, 28
  %n.vec5279 = and i64 %.1.i87.lcssa, -32         ; 5 uses
  %i.abo = and i64 %.1.i87.lcssa, 31
  %i.abp = getelementptr i8, ptr %.119.i86.lcssa, i64 %n.vec5279
  %i.abq = getelementptr i8, ptr %.122.i85.lcssa, i64 %n.vec5279 ; 2 uses
  br label %vector.body5280

vector.body5280:                                  ; preds = %vector.ph5278, %vector.body5280
  %index5281 = phi i64 [ 0, %vector.ph5278 ], [ %index.next5286, %vector.body5280 ] ; 3 uses
  %next.gep5282 = getelementptr i8, ptr %.119.i86.lcssa, i64 %index5281 ; 2 uses
  %next.gep5283 = getelementptr i8, ptr %.122.i85.lcssa, i64 %index5281 ; 2 uses
  %i.abr = getelementptr i8, ptr %next.gep5282, i64 16
  %wide.load5284 = load <16 x i8>, ptr %next.gep5282, align 1, !tbaa !100
  %wide.load5285 = load <16 x i8>, ptr %i.abr, align 1, !tbaa !100
  %i.abs = getelementptr i8, ptr %next.gep5283, i64 16
  store <16 x i8> %wide.load5284, ptr %next.gep5283, align 1, !tbaa !100
  store <16 x i8> %wide.load5285, ptr %i.abs, align 1, !tbaa !100
  %index.next5286 = add nuw i64 %index5281, 32    ; 2 uses
  %i.abt = icmp eq i64 %index.next5286, %n.vec5279
  br i1 %i.abt, label %middle.block5287, label %vector.body5280, !llvm.loop !366

middle.block5287:                                 ; preds = %vector.body5280
  %cmp.n5288 = icmp eq i64 %.1.i87.lcssa, %n.vec5279
  br i1 %cmp.n5288, label %write_str_noesc.exit92, label %vec.epilog.iter.check5295

vec.epilog.iter.check5295:                        ; preds = %middle.block5287
  %min.epilog.iters.check5296 = icmp eq i64 %i.abn, 0
  br i1 %min.epilog.iters.check5296, label %.lr.ph2606.preheader, label %vec.epilog.ph5297, !prof !152

vec.epilog.ph5297:                                ; preds = %vector.main.loop.iter.check5276, %vec.epilog.iter.check5295
  %vec.epilog.resume.val5289 = phi i64 [ %n.vec5279, %vec.epilog.iter.check5295 ], [ 0, %vector.main.loop.iter.check5276 ]
  %n.vec5298 = and i64 %.1.i87.lcssa, -4          ; 4 uses
  %i.abu = and i64 %.1.i87.lcssa, 3
  %i.abv = getelementptr i8, ptr %.119.i86.lcssa, i64 %n.vec5298
  %i.abw = getelementptr i8, ptr %.122.i85.lcssa, i64 %n.vec5298 ; 2 uses
  br label %vec.epilog.vector.body5299

vec.epilog.vector.body5299:                       ; preds = %vec.epilog.vector.body5299, %vec.epilog.ph5297
  %index5300 = phi i64 [ %vec.epilog.resume.val5289, %vec.epilog.ph5297 ], [ %index.next5304, %vec.epilog.vector.body5299 ] ; 3 uses
  %next.gep5301 = getelementptr i8, ptr %.119.i86.lcssa, i64 %index5300
  %next.gep5302 = getelementptr i8, ptr %.122.i85.lcssa, i64 %index5300
  %wide.load5303 = load <4 x i8>, ptr %next.gep5301, align 1, !tbaa !100
  store <4 x i8> %wide.load5303, ptr %next.gep5302, align 1, !tbaa !100
  %index.next5304 = add nuw i64 %index5300, 4     ; 2 uses
  %i.abx = icmp eq i64 %index.next5304, %n.vec5298
  br i1 %i.abx, label %vec.epilog.middle.block5305, label %vec.epilog.vector.body5299, !llvm.loop !367

vec.epilog.middle.block5305:                      ; preds = %vec.epilog.vector.body5299
  %cmp.n5306 = icmp eq i64 %.1.i87.lcssa, %n.vec5298
  br i1 %cmp.n5306, label %write_str_noesc.exit92, label %.lr.ph2606.preheader

.lr.ph2606.preheader:                             ; preds = %iter.check5293, %vec.epilog.iter.check5295, %vec.epilog.middle.block5305
  %.2.i902605.ph = phi i64 [ %.1.i87.lcssa, %iter.check5293 ], [ %i.abo, %vec.epilog.iter.check5295 ], [ %i.abu, %vec.epilog.middle.block5305 ] ; 4 uses
  %.220.i892604.ph = phi ptr [ %.119.i86.lcssa, %iter.check5293 ], [ %i.abp, %vec.epilog.iter.check5295 ], [ %i.abv, %vec.epilog.middle.block5305 ] ; 2 uses
  %.223.i882603.ph = phi ptr [ %.122.i85.lcssa, %iter.check5293 ], [ %i.abq, %vec.epilog.iter.check5295 ], [ %i.abw, %vec.epilog.middle.block5305 ] ; 2 uses
  %i.aby = add nsw i64 %.2.i902605.ph, -1
  %xtraiter6004 = and i64 %.2.i902605.ph, 7       ; 2 uses
  %lcmp.mod6005.not = icmp eq i64 %xtraiter6004, 0
  br i1 %lcmp.mod6005.not, label %.lr.ph2606.prol.loopexit, label %.lr.ph2606.prol

.lr.ph2606.prol:                                  ; preds = %.lr.ph2606.preheader, %.lr.ph2606.prol
  %.2.i902605.prol = phi i64 [ %i.acc, %.lr.ph2606.prol ], [ %.2.i902605.ph, %.lr.ph2606.preheader ]
  %.220.i892604.prol = phi ptr [ %i.abz, %.lr.ph2606.prol ], [ %.220.i892604.ph, %.lr.ph2606.preheader ] ; 2 uses
  %.223.i882603.prol = phi ptr [ %i.acb, %.lr.ph2606.prol ], [ %.223.i882603.ph, %.lr.ph2606.preheader ] ; 2 uses
  %prol.iter6006 = phi i64 [ %prol.iter6006.next, %.lr.ph2606.prol ], [ 0, %.lr.ph2606.preheader ]
  %i.abz = getelementptr inbounds nuw i8, ptr %.220.i892604.prol, i64 1 ; 2 uses
  %i.aca = load i8, ptr %.220.i892604.prol, align 1, !tbaa !100
  %i.acb = getelementptr inbounds nuw i8, ptr %.223.i882603.prol, i64 1 ; 3 uses
  store i8 %i.aca, ptr %.223.i882603.prol, align 1, !tbaa !100
  %i.acc = add nsw i64 %.2.i902605.prol, -1       ; 2 uses
  %prol.iter6006.next = add i64 %prol.iter6006, 1 ; 2 uses
  %prol.iter6006.cmp.not = icmp eq i64 %prol.iter6006.next, %xtraiter6004
  br i1 %prol.iter6006.cmp.not, label %.lr.ph2606.prol.loopexit, label %.lr.ph2606.prol, !llvm.loop !368

.lr.ph2606.prol.loopexit:                         ; preds = %.lr.ph2606.prol, %.lr.ph2606.preheader
  %.lcssa5395.unr = phi ptr [ poison, %.lr.ph2606.preheader ], [ %i.acb, %.lr.ph2606.prol ]
  %.2.i902605.unr = phi i64 [ %.2.i902605.ph, %.lr.ph2606.preheader ], [ %i.acc, %.lr.ph2606.prol ]
  %.220.i892604.unr = phi ptr [ %.220.i892604.ph, %.lr.ph2606.preheader ], [ %i.abz, %.lr.ph2606.prol ]
  %.223.i882603.unr = phi ptr [ %.223.i882603.ph, %.lr.ph2606.preheader ], [ %i.acb, %.lr.ph2606.prol ]
  %i.acd = icmp ult i64 %i.aby, 7
  br i1 %i.acd, label %write_str_noesc.exit92, label %.lr.ph2606

.lr.ph2598:                                       ; preds = %.lr.ph2598.preheader5396, %.lr.ph2598
  %.1.i872597 = phi i64 [ %i.ach, %.lr.ph2598 ], [ %.1.i872597.ph, %.lr.ph2598.preheader5396 ]
  %.119.i862596 = phi ptr [ %i.acg, %.lr.ph2598 ], [ %.119.i862596.ph, %.lr.ph2598.preheader5396 ] ; 2 uses
  %.122.i852595 = phi ptr [ %i.acf, %.lr.ph2598 ], [ %.122.i852595.ph, %.lr.ph2598.preheader5396 ] ; 2 uses
  %i.ace = load i32, ptr %.119.i862596, align 1
  store i32 %i.ace, ptr %.122.i852595, align 1
  %i.acf = getelementptr inbounds nuw i8, ptr %.122.i852595, i64 4 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %.119.i862596, i64 4 ; 2 uses
  %i.ach = add nsw i64 %.1.i872597, -4            ; 3 uses
  %i.aci = icmp ugt i64 %i.ach, 3
  br i1 %i.aci, label %.lr.ph2598, label %.preheader1320, !llvm.loop !369

.lr.ph2606:                                       ; preds = %.lr.ph2606.prol.loopexit, %.lr.ph2606
  %.2.i902605 = phi i64 [ %i.adh, %.lr.ph2606 ], [ %.2.i902605.unr, %.lr.ph2606.prol.loopexit ]
  %.220.i892604 = phi ptr [ %i.ade, %.lr.ph2606 ], [ %.220.i892604.unr, %.lr.ph2606.prol.loopexit ] ; 9 uses
  %.223.i882603 = phi ptr [ %i.adg, %.lr.ph2606 ], [ %.223.i882603.unr, %.lr.ph2606.prol.loopexit ] ; 9 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %.220.i892604, i64 1
  %i.ack = load i8, ptr %.220.i892604, align 1, !tbaa !100
  %i.acl = getelementptr inbounds nuw i8, ptr %.223.i882603, i64 1
  store i8 %i.ack, ptr %.223.i882603, align 1, !tbaa !100
  %i.acm = getelementptr inbounds nuw i8, ptr %.220.i892604, i64 2
  %i.acn = load i8, ptr %i.acj, align 1, !tbaa !100
  %i.aco = getelementptr inbounds nuw i8, ptr %.223.i882603, i64 2
  store i8 %i.acn, ptr %i.acl, align 1, !tbaa !100
  %i.acp = getelementptr inbounds nuw i8, ptr %.220.i892604, i64 3
  %i.acq = load i8, ptr %i.acm, align 1, !tbaa !100
  %i.acr = getelementptr inbounds nuw i8, ptr %.223.i882603, i64 3
  store i8 %i.acq, ptr %i.aco, align 1, !tbaa !100
  %i.acs = getelementptr inbounds nuw i8, ptr %.220.i892604, i64 4
  %i.act = load i8, ptr %i.acp, align 1, !tbaa !100
  %i.acu = getelementptr inbounds nuw i8, ptr %.223.i882603, i64 4
  store i8 %i.act, ptr %i.acr, align 1, !tbaa !100
  %i.acv = getelementptr inbounds nuw i8, ptr %.220.i892604, i64 5
  %i.acw = load i8, ptr %i.acs, align 1, !tbaa !100
  %i.acx = getelementptr inbounds nuw i8, ptr %.223.i882603, i64 5
  store i8 %i.acw, ptr %i.acu, align 1, !tbaa !100
  %i.acy = getelementptr inbounds nuw i8, ptr %.220.i892604, i64 6
  %i.acz = load i8, ptr %i.acv, align 1, !tbaa !100
  %i.ada = getelementptr inbounds nuw i8, ptr %.223.i882603, i64 6
  store i8 %i.acz, ptr %i.acx, align 1, !tbaa !100
  %i.adb = getelementptr inbounds nuw i8, ptr %.220.i892604, i64 7
  %i.adc = load i8, ptr %i.acy, align 1, !tbaa !100
  %i.add = getelementptr inbounds nuw i8, ptr %.223.i882603, i64 7
  store i8 %i.adc, ptr %i.ada, align 1, !tbaa !100
  %i.ade = getelementptr inbounds nuw i8, ptr %.220.i892604, i64 8
  %i.adf = load i8, ptr %i.adb, align 1, !tbaa !100
  %i.adg = getelementptr inbounds nuw i8, ptr %.223.i882603, i64 8 ; 2 uses
  store i8 %i.adf, ptr %i.add, align 1, !tbaa !100
  %i.adh = add nsw i64 %.2.i902605, -8            ; 2 uses
  %.not.i91.7 = icmp eq i64 %i.adh, 0
  br i1 %.not.i91.7, label %write_str_noesc.exit92, label %.lr.ph2606, !llvm.loop !370

write_str_noesc.exit92:                           ; preds = %.lr.ph2606.prol.loopexit, %.lr.ph2606, %middle.block5287, %vec.epilog.middle.block5305, %.preheader1320
  %.223.i88.lcssa = phi ptr [ %.122.i85.lcssa, %.preheader1320 ], [ %i.abw, %vec.epilog.middle.block5305 ], [ %i.abq, %middle.block5287 ], [ %.lcssa5395.unr, %.lr.ph2606.prol.loopexit ], [ %i.adg, %.lr.ph2606 ] ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %.223.i88.lcssa, i64 1
  store i8 34, ptr %.223.i88.lcssa, align 1, !tbaa !100
  br label %write_str.exit605

bb.ee:                                            ; preds = %get_enc_table_with_flag.exit66
  %i.adj = tail call ptr %.sroa.0849.0(ptr noundef %.sroa.9.0, i64 noundef 42) #33, !inline_history !362 ; 15 uses
  %.not102.i = icmp eq ptr %i.adj, null
  br i1 %.not102.i, label %bb.fp, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.adk = load i64, ptr %0, align 8, !tbaa !99   ; 3 uses
  %i.adl = and i64 %i.adk, 16
  %.not.i663 = icmp eq i64 %i.adl, 0
  %i.adm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.adn = load i64, ptr %i.adm, align 8, !tbaa !100 ; 7 uses
  br i1 %.not.i663, label %bb.eg, label %bb.ez

bb.eg:                                            ; preds = %bb.ef
  %i.ado = sub i64 0, %i.adn
  %i.adp = lshr i64 %i.adk, 3
  %.lobit.i669 = lshr i64 %i.adn, 63
  %i.adq = and i64 %.lobit.i669, %i.adp           ; 2 uses
  store i8 45, ptr %i.adj, align 1, !tbaa !100
  %.not37.i670 = icmp eq i64 %i.adq, 0
  %i.adr = select i1 %.not37.i670, i64 %i.adn, i64 %i.ado ; 26 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adj, i64 %i.adq ; 20 uses
  %i.adt = icmp ult i64 %i.adr, 100000000
  br i1 %i.adt, label %bb.eh, label %bb.eo

bb.eh:                                            ; preds = %bb.eg
  %i.adu = trunc nuw nsw i64 %i.adr to i32        ; 4 uses
  %i.adv = icmp samesign ult i64 %i.adr, 100
  br i1 %i.adv, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.adw = icmp samesign ult i64 %i.adr, 10       ; 2 uses
  %i.adx = shl nuw nsw i64 %i.adr, 1
  %i.ady = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.adx
  %.neg70.i.i715 = sext i1 %i.adw to i64
  %i.adz = zext i1 %i.adw to i64
  %i.aea = getelementptr inbounds nuw i8, ptr %i.ady, i64 %i.adz
  %i.aeb = load i16, ptr %i.aea, align 1
  store i16 %i.aeb, ptr %i.ads, align 1
  %i.aec = getelementptr inbounds i8, ptr %i.ads, i64 %.neg70.i.i715
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 2
  br label %write_str.exit605

bb.ej:                                            ; preds = %bb.eh
  %i.aee = icmp samesign ult i64 %i.adr, 10000
  br i1 %i.aee, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.aef = mul nuw nsw i32 %i.adu, 5243
  %i.aeg = lshr i32 %i.aef, 19                    ; 2 uses
  %.neg68.i.i713 = mul nsw i32 %i.aeg, -100
  %i.aeh = add nsw i32 %.neg68.i.i713, %i.adu
  %i.aei = icmp samesign ult i64 %i.adr, 1000     ; 2 uses
  %i.aej = shl nuw nsw i32 %i.aeg, 1
  %i.aek = zext nneg i32 %i.aej to i64
  %i.ael = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.aek
  %.neg69.i.i714 = sext i1 %i.aei to i64
  %i.aem = zext i1 %i.aei to i64
  %i.aen = getelementptr inbounds nuw i8, ptr %i.ael, i64 %i.aem
  %i.aeo = load i16, ptr %i.aen, align 1
  store i16 %i.aeo, ptr %i.ads, align 1
  %i.aep = getelementptr inbounds i8, ptr %i.ads, i64 %.neg69.i.i714 ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 2
  %i.aer = shl nsw i32 %i.aeh, 1
  %i.aes = zext i32 %i.aer to i64
  %i.aet = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.aes
  %i.aeu = load i16, ptr %i.aet, align 2
  store i16 %i.aeu, ptr %i.aeq, align 1
end_hunk_0
begin_hunk_1_@yyjson_val_write_opts:bb.a
  %.tr294.i250 = trunc i16 %i.bse to i8
  %.narrow295.i251 = or disjoint i8 %i.bsg, %.tr294.i250
  %i.bsn = zext i8 %.narrow295.i251 to i64
  %i.bso = shl nuw nsw i64 %i.bsn, 1
  %i.bsp = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bso
  %i.bsq = load i16, ptr %i.bsp, align 2
  store i16 %i.bsq, ptr %i.bsm, align 1
  %i.bsr = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 6
  %i.bss = getelementptr inbounds nuw i8, ptr %.8.i224, i64 3
  br label %.preheader1369.backedge

bb.kk:                                            ; preds = %bb.jt
  %.sroa.0.0.copyload.i333.i229 = load i32, ptr %.8.i224, align 1 ; 9 uses
  %i.bst = and i32 %.sroa.0.0.copyload.i333.i229, -1061109512
  %i.bsu = icmp ne i32 %i.bst, -2139062032
  %i.bsv = and i32 %.sroa.0.0.copyload.i333.i229, 12295
  %.not288.i230 = icmp eq i32 %i.bsv, 0
  %or.cond323.i231 = or i1 %i.bsu, %.not288.i230
  %i.bsw = lshr i32 %.sroa.0.0.copyload.i333.i229, 24
  br i1 %or.cond323.i231, label %.thread1124, label %bb.kl, !prof !139

bb.kl:                                            ; preds = %bb.kk
  %i.bsx = and i32 %.sroa.0.0.copyload.i333.i229, 4
  %i.bsy = icmp ne i32 %i.bsx, 0
  %i.bsz = and i32 %.sroa.0.0.copyload.i333.i229, 12291
  %i.bta = icmp ne i32 %i.bsz, 0
  %.not291.i232 = and i1 %i.bsy, %i.bta
  br i1 %.not291.i232, label %.thread1124, label %.critedge325.i235, !prof !45

.critedge325.i235:                                ; preds = %bb.kl
  %i.btb = shl i32 %.sroa.0.0.copyload.i333.i229, 18
  %i.btc = and i32 %i.btb, 1835008
  %i.btd = shl i32 %.sroa.0.0.copyload.i333.i229, 4
  %i.bte = and i32 %i.btd, 258048
  %i.btf = lshr i32 %.sroa.0.0.copyload.i333.i229, 10 ; 2 uses
  %i.btg = and i32 %i.btf, 3072
  %i.bth = and i32 %i.bsw, 63
  %i.bti = add nsw i32 %i.btc, -65536
  %i.btj = add nsw i32 %i.bti, %i.bte             ; 2 uses
  %i.btk = or disjoint i32 %i.btj, %i.btg
  %i.btl = lshr exact i32 %i.btj, 10
  %i.btm = add nuw nsw i32 %i.btl, 55296
  store i16 30044, ptr %.8253.i223, align 1
  %i.btn = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 2
  %i.bto = lshr i32 %i.btm, 7
  %i.btp = and i32 %i.bto, 65534
  %i.btq = zext nneg i32 %i.btp to i64
  %i.btr = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.btq
  %i.bts = load i16, ptr %i.btr, align 2
  store i16 %i.bts, ptr %i.btn, align 1
  %i.btt = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 4
  %i.btu = lshr exact i32 %i.btk, 9
  %i.btv = and i32 %i.btu, 510
  %i.btw = zext nneg i32 %i.btv to i64
  %i.btx = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.btw
  %i.bty = load i16, ptr %i.btx, align 2
  store i16 %i.bty, ptr %i.btt, align 1
  %i.btz = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 6
  store i16 30044, ptr %i.btz, align 1
  %i.bua = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 8
  %i.bub = lshr i32 %.sroa.0.0.copyload.i333.i229, 17
  %i.buc = and i32 %i.bub, 6
  %i.bud = zext nneg i32 %i.buc to i64
  %i.bue = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bud
  %i.buf = getelementptr inbounds nuw i8, ptr %i.bue, i64 440
  %i.bug = load i16, ptr %i.buf, align 2
  store i16 %i.bug, ptr %i.bua, align 1
  %i.buh = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 10
  %.masked3289 = and i32 %i.btf, 192
  %i.bui = or disjoint i32 %i.bth, %.masked3289
  %i.buj = shl nuw nsw i32 %i.bui, 1
  %i.buk = zext nneg i32 %i.buj to i64
  %i.bul = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.buk
  %i.bum = load i16, ptr %i.bul, align 2
  store i16 %i.bum, ptr %i.buh, align 1
  %i.bun = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 12
  br label %.preheader1369.backedge

bb.km:                                            ; preds = %bb.jt, %bb.js
  %i.buo = phi i8 [ %i.bpj, %bb.jt ], [ %i.bpb, %bb.js ]
  br i1 %.not1291, label %.thread1114, label %.thread1124

.thread1114:                                      ; preds = %bb.kc, %bb.kd, %bb.ka, %bb.jy, %bb.kb, %bb.kb, %bb.jz, %bb.jz, %bb.jv, %bb.km
  %i.bup = phi i8 [ %i.bqi, %bb.kc ], [ %i.bqi, %bb.kd ], [ %i.bqb, %bb.ka ], [ %i.bpv, %bb.jy ], [ %i.bqb, %bb.kb ], [ %i.bqb, %bb.kb ], [ %i.bpv, %bb.jz ], [ %i.bpv, %bb.jz ], [ %i.bpq, %bb.jv ], [ %i.buo, %bb.km ]
  br i1 %.not1286, label %.loopexit1370, label %bb.kn

bb.kn:                                            ; preds = %.thread1114
  %i.buq = getelementptr inbounds nuw i8, ptr %.8.i224, i64 1
  %i.bur = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 1
  store i8 %i.bup, ptr %.8253.i223, align 1, !tbaa !100
  br label %.preheader1369.backedge

.thread1124:                                      ; preds = %bb.kk, %bb.kl, %bb.ki, %bb.kj, %bb.kj, %bb.kg, %bb.km
  br i1 %.not1286, label %.loopexit1370, label %bb.ko

bb.ko:                                            ; preds = %.thread1124
  store i16 30044, ptr %.8253.i223, align 1
  %i.bus = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 2
  store i32 1145456198, ptr %i.bus, align 1
  %i.but = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 6
  %i.buu = getelementptr inbounds nuw i8, ptr %.8.i224, i64 1
  br label %.preheader1369.backedge

bb.kp:                                            ; preds = %bb.ih
  %i.buv = getelementptr inbounds nuw i8, ptr %.0.i740.lcssa, i64 1 ; 2 uses
  %i.buw = icmp ugt i64 %i.asn, 4095
  br i1 %i.buw, label %.lr.ph2391, label %.preheader1401

.preheader1401:                                   ; preds = %.lr.ph2391, %bb.kp
  %.021.i71.lcssa = phi ptr [ %i.buv, %bb.kp ], [ %i.bvl, %.lr.ph2391 ] ; 5 uses
  %.018.i72.lcssa = phi ptr [ %i.asw, %bb.kp ], [ %i.bvm, %.lr.ph2391 ] ; 5 uses
  %.0.i73.lcssa = phi i64 [ %i.asu, %bb.kp ], [ %i.bvn, %.lr.ph2391 ] ; 5 uses
  %i.bux = icmp samesign ugt i64 %.0.i73.lcssa, 3
  br i1 %i.bux, label %.lr.ph2398.preheader, label %.preheader1400

.lr.ph2398.preheader:                             ; preds = %.preheader1401
  %.018.i72.lcssa5174 = ptrtoaddr ptr %.018.i72.lcssa to i64
  %.021.i71.lcssa5173 = ptrtoaddr ptr %.021.i71.lcssa to i64
  %i.buy = add nsw i64 %.0.i73.lcssa, -4          ; 2 uses
  %i.buz = lshr i64 %i.buy, 2
  %i.bva = add nuw nsw i64 %i.buz, 1              ; 2 uses
  %min.iters.check5176 = icmp ult i64 %i.buy, 28
  %i.bvb = sub i64 %.018.i72.lcssa5174, %.021.i71.lcssa5173
  %diff.check5175 = icmp ugt i64 %i.bvb, -32
  %or.cond5312 = select i1 %min.iters.check5176, i1 true, i1 %diff.check5175
  br i1 %or.cond5312, label %.lr.ph2398.preheader5709, label %vector.ph5177

vector.ph5177:                                    ; preds = %.lr.ph2398.preheader
  %n.vec5178 = and i64 %i.bva, 9223372036854775800 ; 4 uses
  %i.bvc = shl i64 %n.vec5178, 2
  %i.bvd = sub i64 %.0.i73.lcssa, %i.bvc          ; 2 uses
  %i.bve = shl i64 %n.vec5178, 2                  ; 2 uses
  %i.bvf = getelementptr i8, ptr %.018.i72.lcssa, i64 %i.bve ; 2 uses
  %i.bvg = getelementptr i8, ptr %.021.i71.lcssa, i64 %i.bve ; 2 uses
  br label %vector.body5179

vector.body5179:                                  ; preds = %vector.body5179, %vector.ph5177
  %index5180 = phi i64 [ 0, %vector.ph5177 ], [ %index.next5185, %vector.body5179 ] ; 2 uses
  %i.bvh = shl i64 %index5180, 2                  ; 2 uses
  %next.gep5181 = getelementptr i8, ptr %.018.i72.lcssa, i64 %i.bvh ; 2 uses
  %next.gep5182 = getelementptr i8, ptr %.021.i71.lcssa, i64 %i.bvh ; 2 uses
  %i.bvi = getelementptr i8, ptr %next.gep5181, i64 16
  %wide.load5183 = load <4 x i32>, ptr %next.gep5181, align 1
  %wide.load5184 = load <4 x i32>, ptr %i.bvi, align 1
  %i.bvj = getelementptr i8, ptr %next.gep5182, i64 16
  store <4 x i32> %wide.load5183, ptr %next.gep5182, align 1
  store <4 x i32> %wide.load5184, ptr %i.bvj, align 1
  %index.next5185 = add nuw i64 %index5180, 8     ; 2 uses
  %i.bvk = icmp eq i64 %index.next5185, %n.vec5178
  br i1 %i.bvk, label %middle.block5186, label %vector.body5179, !llvm.loop !375

middle.block5186:                                 ; preds = %vector.body5179
  %cmp.n5187 = icmp eq i64 %i.bva, %n.vec5178
  br i1 %cmp.n5187, label %.preheader1400, label %.lr.ph2398.preheader5709

.lr.ph2398.preheader5709:                         ; preds = %.lr.ph2398.preheader, %middle.block5186
  %.1.i762397.ph = phi i64 [ %.0.i73.lcssa, %.lr.ph2398.preheader ], [ %i.bvd, %middle.block5186 ]
  %.119.i752396.ph = phi ptr [ %.018.i72.lcssa, %.lr.ph2398.preheader ], [ %i.bvf, %middle.block5186 ]
  %.122.i742395.ph = phi ptr [ %.021.i71.lcssa, %.lr.ph2398.preheader ], [ %i.bvg, %middle.block5186 ]
  br label %.lr.ph2398

.lr.ph2391:                                       ; preds = %bb.kp, %.lr.ph2391
  %.0.i732389 = phi i64 [ %i.bvn, %.lr.ph2391 ], [ %i.asu, %bb.kp ]
  %.018.i722388 = phi ptr [ %i.bvm, %.lr.ph2391 ], [ %i.asw, %bb.kp ] ; 2 uses
  %.021.i712387 = phi ptr [ %i.bvl, %.lr.ph2391 ], [ %i.buv, %bb.kp ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.021.i712387, ptr noundef nonnull align 1 dereferenceable(16) %.018.i722388, i64 16, i1 false)
  %i.bvl = getelementptr inbounds nuw i8, ptr %.021.i712387, i64 16 ; 2 uses
  %i.bvm = getelementptr inbounds nuw i8, ptr %.018.i722388, i64 16 ; 2 uses
  %i.bvn = add nsw i64 %.0.i732389, -16           ; 3 uses
  %i.bvo = icmp ugt i64 %i.bvn, 15
  br i1 %i.bvo, label %.lr.ph2391, label %.preheader1401, !llvm.loop !26

.preheader1400:                                   ; preds = %.lr.ph2398, %middle.block5186, %.preheader1401
  %.122.i74.lcssa = phi ptr [ %.021.i71.lcssa, %.preheader1401 ], [ %i.bvg, %middle.block5186 ], [ %i.bwi, %.lr.ph2398 ] ; 7 uses
  %.119.i75.lcssa = phi ptr [ %.018.i72.lcssa, %.preheader1401 ], [ %i.bvf, %middle.block5186 ], [ %i.bwj, %.lr.ph2398 ] ; 6 uses
  %.1.i76.lcssa = phi i64 [ %.0.i73.lcssa, %.preheader1401 ], [ %i.bvd, %middle.block5186 ], [ %i.bwk, %.lr.ph2398 ] ; 11 uses
  %.not.i802402 = icmp eq i64 %.1.i76.lcssa, 0
  br i1 %.not.i802402, label %write_str.exit407, label %iter.check

iter.check:                                       ; preds = %.preheader1400
  %.119.i75.lcssa5156 = ptrtoaddr ptr %.119.i75.lcssa to i64
  %.122.i74.lcssa5155 = ptrtoaddr ptr %.122.i74.lcssa to i64
  %min.iters.check = icmp ult i64 %.1.i76.lcssa, 4
  %i.bvp = sub i64 %.119.i75.lcssa5156, %.122.i74.lcssa5155
  %diff.check = icmp ugt i64 %i.bvp, -32
  %or.cond5313 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond5313, label %.lr.ph2406.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check5157 = icmp ult i64 %.1.i76.lcssa, 32
  br i1 %min.iters.check5157, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bvq = and i64 %.1.i76.lcssa, 28
  %n.vec = and i64 %.1.i76.lcssa, -32             ; 5 uses
  %i.bvr = and i64 %.1.i76.lcssa, 31
  %i.bvs = getelementptr i8, ptr %.119.i75.lcssa, i64 %n.vec
  %i.bvt = getelementptr i8, ptr %.122.i74.lcssa, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.119.i75.lcssa, i64 %index ; 2 uses
  %next.gep5158 = getelementptr i8, ptr %.122.i74.lcssa, i64 %index ; 2 uses
  %i.bvu = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !100
  %wide.load5159 = load <16 x i8>, ptr %i.bvu, align 1, !tbaa !100
  %i.bvv = getelementptr i8, ptr %next.gep5158, i64 16
  store <16 x i8> %wide.load, ptr %next.gep5158, align 1, !tbaa !100
  store <16 x i8> %wide.load5159, ptr %i.bvv, align 1, !tbaa !100
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bvw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bvw, label %middle.block, label %vector.body, !llvm.loop !376

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.1.i76.lcssa, %n.vec
  br i1 %cmp.n, label %write_str.exit407, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bvq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph2406.preheader, label %vec.epilog.ph, !prof !152

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5162 = and i64 %.1.i76.lcssa, -4          ; 4 uses
  %i.bvx = and i64 %.1.i76.lcssa, 3
  %i.bvy = getelementptr i8, ptr %.119.i75.lcssa, i64 %n.vec5162
  %i.bvz = getelementptr i8, ptr %.122.i74.lcssa, i64 %n.vec5162 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index5163 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next5167, %vec.epilog.vector.body ] ; 3 uses
  %next.gep5164 = getelementptr i8, ptr %.119.i75.lcssa, i64 %index5163
  %next.gep5165 = getelementptr i8, ptr %.122.i74.lcssa, i64 %index5163
  %wide.load5166 = load <4 x i8>, ptr %next.gep5164, align 1, !tbaa !100
  store <4 x i8> %wide.load5166, ptr %next.gep5165, align 1, !tbaa !100
  %index.next5167 = add nuw i64 %index5163, 4     ; 2 uses
  %i.bwa = icmp eq i64 %index.next5167, %n.vec5162
  br i1 %i.bwa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !377

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n5168 = icmp eq i64 %.1.i76.lcssa, %n.vec5162
  br i1 %cmp.n5168, label %write_str.exit407, label %.lr.ph2406.preheader

.lr.ph2406.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2.i792405.ph = phi i64 [ %.1.i76.lcssa, %iter.check ], [ %i.bvr, %vec.epilog.iter.check ], [ %i.bvx, %vec.epilog.middle.block ] ; 4 uses
  %.220.i782404.ph = phi ptr [ %.119.i75.lcssa, %iter.check ], [ %i.bvs, %vec.epilog.iter.check ], [ %i.bvy, %vec.epilog.middle.block ] ; 2 uses
  %.223.i772403.ph = phi ptr [ %.122.i74.lcssa, %iter.check ], [ %i.bvt, %vec.epilog.iter.check ], [ %i.bvz, %vec.epilog.middle.block ] ; 2 uses
  %i.bwb = add nsw i64 %.2.i792405.ph, -1
  %xtraiter5952 = and i64 %.2.i792405.ph, 7       ; 2 uses
  %lcmp.mod5953.not = icmp eq i64 %xtraiter5952, 0
  br i1 %lcmp.mod5953.not, label %.lr.ph2406.prol.loopexit, label %.lr.ph2406.prol

.lr.ph2406.prol:                                  ; preds = %.lr.ph2406.preheader, %.lr.ph2406.prol
  %.2.i792405.prol = phi i64 [ %i.bwf, %.lr.ph2406.prol ], [ %.2.i792405.ph, %.lr.ph2406.preheader ]
  %.220.i782404.prol = phi ptr [ %i.bwc, %.lr.ph2406.prol ], [ %.220.i782404.ph, %.lr.ph2406.preheader ] ; 2 uses
  %.223.i772403.prol = phi ptr [ %i.bwe, %.lr.ph2406.prol ], [ %.223.i772403.ph, %.lr.ph2406.preheader ] ; 2 uses
  %prol.iter5954 = phi i64 [ %prol.iter5954.next, %.lr.ph2406.prol ], [ 0, %.lr.ph2406.preheader ]
  %i.bwc = getelementptr inbounds nuw i8, ptr %.220.i782404.prol, i64 1 ; 2 uses
  %i.bwd = load i8, ptr %.220.i782404.prol, align 1, !tbaa !100
  %i.bwe = getelementptr inbounds nuw i8, ptr %.223.i772403.prol, i64 1 ; 3 uses
  store i8 %i.bwd, ptr %.223.i772403.prol, align 1, !tbaa !100
  %i.bwf = add nsw i64 %.2.i792405.prol, -1       ; 2 uses
  %prol.iter5954.next = add i64 %prol.iter5954, 1 ; 2 uses
  %prol.iter5954.cmp.not = icmp eq i64 %prol.iter5954.next, %xtraiter5952
  br i1 %prol.iter5954.cmp.not, label %.lr.ph2406.prol.loopexit, label %.lr.ph2406.prol, !llvm.loop !378

.lr.ph2406.prol.loopexit:                         ; preds = %.lr.ph2406.prol, %.lr.ph2406.preheader
  %.lcssa5797.unr = phi ptr [ poison, %.lr.ph2406.preheader ], [ %i.bwe, %.lr.ph2406.prol ]
  %.2.i792405.unr = phi i64 [ %.2.i792405.ph, %.lr.ph2406.preheader ], [ %i.bwf, %.lr.ph2406.prol ]
  %.220.i782404.unr = phi ptr [ %.220.i782404.ph, %.lr.ph2406.preheader ], [ %i.bwc, %.lr.ph2406.prol ]
  %.223.i772403.unr = phi ptr [ %.223.i772403.ph, %.lr.ph2406.preheader ], [ %i.bwe, %.lr.ph2406.prol ]
  %i.bwg = icmp ult i64 %i.bwb, 7
  br i1 %i.bwg, label %write_str.exit407, label %.lr.ph2406

.lr.ph2398:                                       ; preds = %.lr.ph2398.preheader5709, %.lr.ph2398
  %.1.i762397 = phi i64 [ %i.bwk, %.lr.ph2398 ], [ %.1.i762397.ph, %.lr.ph2398.preheader5709 ]
  %.119.i752396 = phi ptr [ %i.bwj, %.lr.ph2398 ], [ %.119.i752396.ph, %.lr.ph2398.preheader5709 ] ; 2 uses
  %.122.i742395 = phi ptr [ %i.bwi, %.lr.ph2398 ], [ %.122.i742395.ph, %.lr.ph2398.preheader5709 ] ; 2 uses
  %i.bwh = load i32, ptr %.119.i752396, align 1
  store i32 %i.bwh, ptr %.122.i742395, align 1
  %i.bwi = getelementptr inbounds nuw i8, ptr %.122.i742395, i64 4 ; 2 uses
  %i.bwj = getelementptr inbounds nuw i8, ptr %.119.i752396, i64 4 ; 2 uses
  %i.bwk = add nsw i64 %.1.i762397, -4            ; 3 uses
  %i.bwl = icmp ugt i64 %i.bwk, 3
  br i1 %i.bwl, label %.lr.ph2398, label %.preheader1400, !llvm.loop !379

.lr.ph2406:                                       ; preds = %.lr.ph2406.prol.loopexit, %.lr.ph2406
  %.2.i792405 = phi i64 [ %i.bxk, %.lr.ph2406 ], [ %.2.i792405.unr, %.lr.ph2406.prol.loopexit ]
  %.220.i782404 = phi ptr [ %i.bxh, %.lr.ph2406 ], [ %.220.i782404.unr, %.lr.ph2406.prol.loopexit ] ; 9 uses
  %.223.i772403 = phi ptr [ %i.bxj, %.lr.ph2406 ], [ %.223.i772403.unr, %.lr.ph2406.prol.loopexit ] ; 9 uses
  %i.bwm = getelementptr inbounds nuw i8, ptr %.220.i782404, i64 1
  %i.bwn = load i8, ptr %.220.i782404, align 1, !tbaa !100
  %i.bwo = getelementptr inbounds nuw i8, ptr %.223.i772403, i64 1
  store i8 %i.bwn, ptr %.223.i772403, align 1, !tbaa !100
  %i.bwp = getelementptr inbounds nuw i8, ptr %.220.i782404, i64 2
  %i.bwq = load i8, ptr %i.bwm, align 1, !tbaa !100
  %i.bwr = getelementptr inbounds nuw i8, ptr %.223.i772403, i64 2
  store i8 %i.bwq, ptr %i.bwo, align 1, !tbaa !100
  %i.bws = getelementptr inbounds nuw i8, ptr %.220.i782404, i64 3
  %i.bwt = load i8, ptr %i.bwp, align 1, !tbaa !100
  %i.bwu = getelementptr inbounds nuw i8, ptr %.223.i772403, i64 3
  store i8 %i.bwt, ptr %i.bwr, align 1, !tbaa !100
  %i.bwv = getelementptr inbounds nuw i8, ptr %.220.i782404, i64 4
  %i.bww = load i8, ptr %i.bws, align 1, !tbaa !100
  %i.bwx = getelementptr inbounds nuw i8, ptr %.223.i772403, i64 4
  store i8 %i.bww, ptr %i.bwu, align 1, !tbaa !100
  %i.bwy = getelementptr inbounds nuw i8, ptr %.220.i782404, i64 5
  %i.bwz = load i8, ptr %i.bwv, align 1, !tbaa !100
  %i.bxa = getelementptr inbounds nuw i8, ptr %.223.i772403, i64 5
  store i8 %i.bwz, ptr %i.bwx, align 1, !tbaa !100
  %i.bxb = getelementptr inbounds nuw i8, ptr %.220.i782404, i64 6
  %i.bxc = load i8, ptr %i.bwy, align 1, !tbaa !100
  %i.bxd = getelementptr inbounds nuw i8, ptr %.223.i772403, i64 6
  store i8 %i.bxc, ptr %i.bxa, align 1, !tbaa !100
  %i.bxe = getelementptr inbounds nuw i8, ptr %.220.i782404, i64 7
  %i.bxf = load i8, ptr %i.bxb, align 1, !tbaa !100
  %i.bxg = getelementptr inbounds nuw i8, ptr %.223.i772403, i64 7
  store i8 %i.bxf, ptr %i.bxd, align 1, !tbaa !100
  %i.bxh = getelementptr inbounds nuw i8, ptr %.220.i782404, i64 8
  %i.bxi = load i8, ptr %i.bxe, align 1, !tbaa !100
  %i.bxj = getelementptr inbounds nuw i8, ptr %.223.i772403, i64 8 ; 2 uses
  store i8 %i.bxi, ptr %i.bxg, align 1, !tbaa !100
  %i.bxk = add nsw i64 %.2.i792405, -8            ; 2 uses
  %.not.i80.7 = icmp eq i64 %i.bxk, 0
  br i1 %.not.i80.7, label %write_str.exit407, label %.lr.ph2406, !llvm.loop !380

write_str.exit407:                                ; preds = %.preheader1386, %.lr.ph2406.prol.loopexit, %.lr.ph2406, %.preheader1372, %bb.gw, %.lr.ph2384.prol.loopexit, %bb.hj, %bb.hl, %bb.je, %.lr.ph2434.prol.loopexit, %bb.jr, %bb.jt, %middle.block, %vec.epilog.middle.block, %.preheader1400
  %.3248.i316.lcssa.sink4530 = phi ptr [ %.122.i74.lcssa, %.preheader1400 ], [ %.8253.i322, %bb.hj ], [ %.lcssa5867.unr, %.lr.ph2434.prol.loopexit ], [ %i.bvz, %vec.epilog.middle.block ], [ %i.bxj, %.lr.ph2406 ], [ %i.bvt, %middle.block ], [ %.lcssa5784.unr, %.lr.ph2384.prol.loopexit ], [ %.2247.i215.lcssa, %.preheader1372 ], [ %.8253.i223, %bb.jr ], [ %.8253.i223, %bb.jt ], [ %i.bnk, %bb.je ], [ %.8253.i322, %bb.hl ], [ %i.bab, %bb.gw ], [ %.lcssa5797.unr, %.lr.ph2406.prol.loopexit ], [ %.2247.i314.lcssa, %.preheader1386 ] ; 4 uses
  %i.bxl = getelementptr inbounds nuw i8, ptr %.3248.i316.lcssa.sink4530, i64 1
  store i8 34, ptr %.3248.i316.lcssa.sink4530, align 1, !tbaa !100
  %i.bxm = select i1 %.not593.i, i8 44, i8 58
  %i.bxn = getelementptr inbounds nuw i8, ptr %.3248.i316.lcssa.sink4530, i64 2
  store i8 %i.bxm, ptr %i.bxl, align 1, !tbaa !100
  %i.bxo = select i1 %.not593.i, i8 10, i8 32
  %i.bxp = getelementptr inbounds nuw i8, ptr %.3248.i316.lcssa.sink4530, i64 3
  store i8 %i.bxo, ptr %i.bxn, align 1, !tbaa !100
  br label %bb.mf

bb.kq:                                            ; preds = %bb.fx
  %i.bxq = trunc i64 %.01041 to i32
  %i.bxr = and i32 %i.asc, %i.bxq
  %.not588.i = icmp ne i32 %i.bxr, 0              ; 2 uses
  %i.bxs = select i1 %.not588.i, i64 40, i64 %i.ase ; 2 uses
  %i.bxt = getelementptr inbounds nuw i8, ptr %.0523.i, i64 %i.bxs
  %.not589.i = icmp ult ptr %i.bxt, %.0493.i
  br i1 %.not589.i, label %bb.kr, label %size_align_up.exit628.i, !prof !62

size_align_up.exit628.i:                          ; preds = %bb.kq
  %i.bxu = lshr i64 %.0484.i, 1
  %i.bxv = tail call i64 @llvm.umax.i64(i64 %i.bxu, i64 %i.bxs)
  %i.bxw = add i64 %i.bxv, 7
  %i.bxx = and i64 %i.bxw, -8
  %i.bxy = add i64 %i.bxx, %.0484.i               ; 4 uses
  %i.bxz = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0542.i, i64 noundef %.0484.i, i64 noundef %i.bxy) #33, !inline_history !371 ; 6 uses
  %.not590.i = icmp eq ptr %i.bxz, null
  br i1 %.not590.i, label %.loopexit1398, label %.thread1136, !prof !45

.thread1136:                                      ; preds = %size_align_up.exit628.i
  %i.bya = ptrtoint ptr %.0504.i to i64
  %i.byb = ptrtoint ptr %.0493.i to i64           ; 2 uses
  %i.byc = sub i64 %i.bya, %i.byb                 ; 2 uses
  %i.byd = ptrtoint ptr %.0523.i to i64
  %i.bye = ptrtoint ptr %.0542.i to i64           ; 2 uses
  %i.byf = sub i64 %i.byd, %i.bye
  %i.byg = sub i64 %i.byb, %i.bye
  %i.byh = sub i64 %i.bxy, %i.byc
  %i.byi = getelementptr inbounds nuw i8, ptr %i.bxz, i64 %i.byh ; 2 uses
  %i.byj = getelementptr inbounds nuw i8, ptr %i.bxz, i64 %i.byg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.byi, ptr nonnull align 1 %i.byj, i64 %i.byc, i1 false)
  %i.byk = getelementptr inbounds nuw i8, ptr %i.bxz, i64 %i.byf
  %i.byl = getelementptr inbounds nuw i8, ptr %i.bxz, i64 %i.bxy
  br label %bb.kr

bb.kr:                                            ; preds = %.thread1136, %bb.kq
  %.4546.i = phi ptr [ %i.bxz, %.thread1136 ], [ %.0542.i, %bb.kq ] ; 2 uses
  %.5528.i = phi ptr [ %i.byk, %.thread1136 ], [ %.0523.i, %bb.kq ] ; 3 uses
  %.4508.i = phi ptr [ %i.byl, %.thread1136 ], [ %.0504.i, %bb.kq ]
  %.4497.i = phi ptr [ %i.byi, %.thread1136 ], [ %.0493.i, %bb.kq ]
  %.2486.i = phi i64 [ %i.bxy, %.thread1136 ], [ %.0484.i, %bb.kq ]
  %.not.i7492351 = select i1 %.not588.i, i1 true, i1 %.not.i74923513285
  br i1 %.not.i7492351, label %write_indent.exit750, label %select.unfold1142.preheader

select.unfold1142.preheader:                      ; preds = %bb.kr
  br i1 %lcmp.mod.not, label %select.unfold1142.prol.loopexit, label %select.unfold1142.prol

select.unfold1142.prol:                           ; preds = %select.unfold1142.preheader, %select.unfold1142.prol
  %.0.i7482353.prol = phi ptr [ %i.byn, %select.unfold1142.prol ], [ %.5528.i, %select.unfold1142.preheader ] ; 2 uses
  %.04.i7472352.prol = phi i64 [ %i.bym, %select.unfold1142.prol ], [ %.0482.i.ph, %select.unfold1142.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %select.unfold1142.prol ], [ 0, %select.unfold1142.preheader ]
  %i.bym = add i64 %.04.i7472352.prol, -1         ; 2 uses
  store i32 538976288, ptr %.0.i7482353.prol, align 1
  %i.byn = getelementptr inbounds nuw i8, ptr %.0.i7482353.prol, i64 %i.arh ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %select.unfold1142.prol.loopexit, label %select.unfold1142.prol, !llvm.loop !381

select.unfold1142.prol.loopexit:                  ; preds = %select.unfold1142.prol, %select.unfold1142.preheader
  %.lcssa5713.unr = phi ptr [ poison, %select.unfold1142.preheader ], [ %i.byn, %select.unfold1142.prol ]
  %.0.i7482353.unr = phi ptr [ %.5528.i, %select.unfold1142.preheader ], [ %i.byn, %select.unfold1142.prol ]
  %.04.i7472352.unr = phi i64 [ %.0482.i.ph, %select.unfold1142.preheader ], [ %i.bym, %select.unfold1142.prol ]
end_hunk_1
begin_hunk_2_@yyjson_val_write_opts:bb.a
  %.tr294.i = trunc i16 %i.dwq to i8
  %.narrow295.i = or disjoint i8 %i.dws, %.tr294.i
  %i.dwz = zext i8 %.narrow295.i to i64
  %i.dxa = shl nuw nsw i64 %i.dwz, 1
  %i.dxb = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dxa
  %i.dxc = load i16, ptr %i.dxb, align 2
  store i16 %i.dxc, ptr %i.dwy, align 1
  %i.dxd = getelementptr inbounds nuw i8, ptr %.8253.i, i64 6
  %i.dxe = getelementptr inbounds nuw i8, ptr %.8.i94, i64 3
  br label %.preheader1336.backedge

bb.rj:                                            ; preds = %bb.qs
  %.sroa.0.0.copyload.i333.i = load i32, ptr %.8.i94, align 1 ; 9 uses
  %i.dxf = and i32 %.sroa.0.0.copyload.i333.i, -1061109512
  %i.dxg = icmp ne i32 %i.dxf, -2139062032
  %i.dxh = and i32 %.sroa.0.0.copyload.i333.i, 12295
  %.not288.i = icmp eq i32 %i.dxh, 0
  %or.cond323.i = or i1 %i.dxg, %.not288.i
  %i.dxi = lshr i32 %.sroa.0.0.copyload.i333.i, 24
  br i1 %or.cond323.i, label %.thread1227, label %bb.rk, !prof !139

bb.rk:                                            ; preds = %bb.rj
  %i.dxj = and i32 %.sroa.0.0.copyload.i333.i, 4
  %i.dxk = icmp ne i32 %i.dxj, 0
  %i.dxl = and i32 %.sroa.0.0.copyload.i333.i, 12291
  %i.dxm = icmp ne i32 %i.dxl, 0
  %.not291.i = and i1 %i.dxk, %i.dxm
  br i1 %.not291.i, label %.thread1227, label %.critedge325.i, !prof !45

.critedge325.i:                                   ; preds = %bb.rk
  %i.dxn = shl i32 %.sroa.0.0.copyload.i333.i, 18
  %i.dxo = and i32 %i.dxn, 1835008
  %i.dxp = shl i32 %.sroa.0.0.copyload.i333.i, 4
  %i.dxq = and i32 %i.dxp, 258048
  %i.dxr = lshr i32 %.sroa.0.0.copyload.i333.i, 10 ; 2 uses
  %i.dxs = and i32 %i.dxr, 3072
  %i.dxt = and i32 %i.dxi, 63
  %i.dxu = add nsw i32 %i.dxo, -65536
  %i.dxv = add nsw i32 %i.dxu, %i.dxq             ; 2 uses
  %i.dxw = or disjoint i32 %i.dxv, %i.dxs
  %i.dxx = lshr exact i32 %i.dxv, 10
  %i.dxy = add nuw nsw i32 %i.dxx, 55296
  store i16 30044, ptr %.8253.i, align 1
  %i.dxz = getelementptr inbounds nuw i8, ptr %.8253.i, i64 2
  %i.dya = lshr i32 %i.dxy, 7
  %i.dyb = and i32 %i.dya, 65534
  %i.dyc = zext nneg i32 %i.dyb to i64
  %i.dyd = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dyc
  %i.dye = load i16, ptr %i.dyd, align 2
  store i16 %i.dye, ptr %i.dxz, align 1
  %i.dyf = getelementptr inbounds nuw i8, ptr %.8253.i, i64 4
  %i.dyg = lshr exact i32 %i.dxw, 9
  %i.dyh = and i32 %i.dyg, 510
  %i.dyi = zext nneg i32 %i.dyh to i64
  %i.dyj = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dyi
  %i.dyk = load i16, ptr %i.dyj, align 2
  store i16 %i.dyk, ptr %i.dyf, align 1
  %i.dyl = getelementptr inbounds nuw i8, ptr %.8253.i, i64 6
  store i16 30044, ptr %i.dyl, align 1
  %i.dym = getelementptr inbounds nuw i8, ptr %.8253.i, i64 8
  %i.dyn = lshr i32 %.sroa.0.0.copyload.i333.i, 17
  %i.dyo = and i32 %i.dyn, 6
  %i.dyp = zext nneg i32 %i.dyo to i64
  %i.dyq = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dyp
  %i.dyr = getelementptr inbounds nuw i8, ptr %i.dyq, i64 440
  %i.dys = load i16, ptr %i.dyr, align 2
  store i16 %i.dys, ptr %i.dym, align 1
  %i.dyt = getelementptr inbounds nuw i8, ptr %.8253.i, i64 10
  %.masked3298 = and i32 %i.dxr, 192
  %i.dyu = or disjoint i32 %i.dxt, %.masked3298
  %i.dyv = shl nuw nsw i32 %i.dyu, 1
  %i.dyw = zext nneg i32 %i.dyv to i64
  %i.dyx = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dyw
  %i.dyy = load i16, ptr %i.dyx, align 2
  store i16 %i.dyy, ptr %i.dyt, align 1
  %i.dyz = getelementptr inbounds nuw i8, ptr %.8253.i, i64 12
  br label %.preheader1336.backedge

bb.rl:                                            ; preds = %bb.qs, %bb.qr
  %i.dza = phi i8 [ %i.dtv, %bb.qs ], [ %i.dtn, %bb.qr ]
  br i1 %.not1291, label %.thread1217, label %.thread1227

.thread1217:                                      ; preds = %bb.rb, %bb.rc, %bb.qz, %bb.qx, %bb.ra, %bb.ra, %bb.qy, %bb.qy, %bb.qu, %bb.rl
  %i.dzb = phi i8 [ %i.duu, %bb.rb ], [ %i.duu, %bb.rc ], [ %i.dun, %bb.qz ], [ %i.duh, %bb.qx ], [ %i.dun, %bb.ra ], [ %i.dun, %bb.ra ], [ %i.duh, %bb.qy ], [ %i.duh, %bb.qy ], [ %i.duc, %bb.qu ], [ %i.dza, %bb.rl ]
  br i1 %.not1294, label %.loopexit1337, label %bb.rm

bb.rm:                                            ; preds = %.thread1217
  %i.dzc = getelementptr inbounds nuw i8, ptr %.8.i94, i64 1
  %i.dzd = getelementptr inbounds nuw i8, ptr %.8253.i, i64 1
  store i8 %i.dzb, ptr %.8253.i, align 1, !tbaa !100
  br label %.preheader1336.backedge

.thread1227:                                      ; preds = %bb.rj, %bb.rk, %bb.rh, %bb.ri, %bb.ri, %bb.rf, %bb.rl
  br i1 %.not1294, label %.loopexit1337, label %bb.rn

bb.rn:                                            ; preds = %.thread1227
  store i16 30044, ptr %.8253.i, align 1
  %i.dze = getelementptr inbounds nuw i8, ptr %.8253.i, i64 2
  store i32 1145456198, ptr %i.dze, align 1
  %i.dzf = getelementptr inbounds nuw i8, ptr %.8253.i, i64 6
  %i.dzg = getelementptr inbounds nuw i8, ptr %.8.i94, i64 1
  br label %.preheader1336.backedge

bb.ro:                                            ; preds = %bb.pg
  %i.dzh = getelementptr inbounds nuw i8, ptr %.2387.i, i64 1 ; 2 uses
  %i.dzi = icmp ugt i64 %i.cxm, 4095
  br i1 %i.dzi, label %.lr.ph2509, label %.preheader1367

.preheader1367:                                   ; preds = %.lr.ph2509, %bb.ro
  %.021.i.lcssa = phi ptr [ %i.dzh, %bb.ro ], [ %i.dzx, %.lr.ph2509 ] ; 5 uses
  %.018.i.lcssa = phi ptr [ %i.cxu, %bb.ro ], [ %i.dzy, %.lr.ph2509 ] ; 5 uses
  %.0.i67.lcssa = phi i64 [ %i.cxs, %bb.ro ], [ %i.dzz, %.lr.ph2509 ] ; 5 uses
  %i.dzj = icmp samesign ugt i64 %.0.i67.lcssa, 3
  br i1 %i.dzj, label %.lr.ph2516.preheader, label %.preheader1366

.lr.ph2516.preheader:                             ; preds = %.preheader1367
  %.018.i.lcssa5232 = ptrtoaddr ptr %.018.i.lcssa to i64
  %.021.i.lcssa5231 = ptrtoaddr ptr %.021.i.lcssa to i64
  %i.dzk = add nsw i64 %.0.i67.lcssa, -4          ; 2 uses
  %i.dzl = lshr i64 %i.dzk, 2
  %i.dzm = add nuw nsw i64 %i.dzl, 1              ; 2 uses
  %min.iters.check5235 = icmp ult i64 %i.dzk, 28
  %i.dzn = sub i64 %.018.i.lcssa5232, %.021.i.lcssa5231
  %diff.check5233 = icmp ugt i64 %i.dzn, -32
  %or.cond5314 = select i1 %min.iters.check5235, i1 true, i1 %diff.check5233
  br i1 %or.cond5314, label %.lr.ph2516.preheader5502, label %vector.ph5236

vector.ph5236:                                    ; preds = %.lr.ph2516.preheader
  %n.vec5237 = and i64 %i.dzm, 9223372036854775800 ; 4 uses
  %i.dzo = shl i64 %n.vec5237, 2
  %i.dzp = sub i64 %.0.i67.lcssa, %i.dzo          ; 2 uses
  %i.dzq = shl i64 %n.vec5237, 2                  ; 2 uses
  %i.dzr = getelementptr i8, ptr %.018.i.lcssa, i64 %i.dzq ; 2 uses
  %i.dzs = getelementptr i8, ptr %.021.i.lcssa, i64 %i.dzq ; 2 uses
  br label %vector.body5238

vector.body5238:                                  ; preds = %vector.body5238, %vector.ph5236
  %index5239 = phi i64 [ 0, %vector.ph5236 ], [ %index.next5244, %vector.body5238 ] ; 2 uses
  %i.dzt = shl i64 %index5239, 2                  ; 2 uses
  %next.gep5240 = getelementptr i8, ptr %.018.i.lcssa, i64 %i.dzt ; 2 uses
  %next.gep5241 = getelementptr i8, ptr %.021.i.lcssa, i64 %i.dzt ; 2 uses
  %i.dzu = getelementptr i8, ptr %next.gep5240, i64 16
  %wide.load5242 = load <4 x i32>, ptr %next.gep5240, align 1
  %wide.load5243 = load <4 x i32>, ptr %i.dzu, align 1
  %i.dzv = getelementptr i8, ptr %next.gep5241, i64 16
  store <4 x i32> %wide.load5242, ptr %next.gep5241, align 1
  store <4 x i32> %wide.load5243, ptr %i.dzv, align 1
  %index.next5244 = add nuw i64 %index5239, 8     ; 2 uses
  %i.dzw = icmp eq i64 %index.next5244, %n.vec5237
  br i1 %i.dzw, label %middle.block5245, label %vector.body5238, !llvm.loop !391

middle.block5245:                                 ; preds = %vector.body5238
  %cmp.n5246 = icmp eq i64 %i.dzm, %n.vec5237
  br i1 %cmp.n5246, label %.preheader1366, label %.lr.ph2516.preheader5502

.lr.ph2516.preheader5502:                         ; preds = %.lr.ph2516.preheader, %middle.block5245
  %.1.i682515.ph = phi i64 [ %.0.i67.lcssa, %.lr.ph2516.preheader ], [ %i.dzp, %middle.block5245 ]
  %.119.i2514.ph = phi ptr [ %.018.i.lcssa, %.lr.ph2516.preheader ], [ %i.dzr, %middle.block5245 ]
  %.122.i2513.ph = phi ptr [ %.021.i.lcssa, %.lr.ph2516.preheader ], [ %i.dzs, %middle.block5245 ]
  br label %.lr.ph2516

.lr.ph2509:                                       ; preds = %bb.ro, %.lr.ph2509
  %.0.i672507 = phi i64 [ %i.dzz, %.lr.ph2509 ], [ %i.cxs, %bb.ro ]
  %.018.i2506 = phi ptr [ %i.dzy, %.lr.ph2509 ], [ %i.cxu, %bb.ro ] ; 2 uses
  %.021.i2505 = phi ptr [ %i.dzx, %.lr.ph2509 ], [ %i.dzh, %bb.ro ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.021.i2505, ptr noundef nonnull align 1 dereferenceable(16) %.018.i2506, i64 16, i1 false)
  %i.dzx = getelementptr inbounds nuw i8, ptr %.021.i2505, i64 16 ; 2 uses
  %i.dzy = getelementptr inbounds nuw i8, ptr %.018.i2506, i64 16 ; 2 uses
  %i.dzz = add nsw i64 %.0.i672507, -16           ; 3 uses
  %i.eaa = icmp ugt i64 %i.dzz, 15
  br i1 %i.eaa, label %.lr.ph2509, label %.preheader1367, !llvm.loop !26

.preheader1366:                                   ; preds = %.lr.ph2516, %middle.block5245, %.preheader1367
  %.122.i.lcssa = phi ptr [ %.021.i.lcssa, %.preheader1367 ], [ %i.dzs, %middle.block5245 ], [ %i.eau, %.lr.ph2516 ] ; 7 uses
  %.119.i.lcssa = phi ptr [ %.018.i.lcssa, %.preheader1367 ], [ %i.dzr, %middle.block5245 ], [ %i.eav, %.lr.ph2516 ] ; 6 uses
  %.1.i68.lcssa = phi i64 [ %.0.i67.lcssa, %.preheader1367 ], [ %i.dzp, %middle.block5245 ], [ %i.eaw, %.lr.ph2516 ] ; 11 uses
  %.not.i702520 = icmp eq i64 %.1.i68.lcssa, 0
  br i1 %.not.i702520, label %write_str.exit209, label %iter.check5213

iter.check5213:                                   ; preds = %.preheader1366
  %.119.i.lcssa5192 = ptrtoaddr ptr %.119.i.lcssa to i64
  %.122.i.lcssa5191 = ptrtoaddr ptr %.122.i.lcssa to i64
  %min.iters.check5195 = icmp ult i64 %.1.i68.lcssa, 4
  %i.eab = sub i64 %.119.i.lcssa5192, %.122.i.lcssa5191
  %diff.check5193 = icmp ugt i64 %i.eab, -32
  %or.cond5315 = select i1 %min.iters.check5195, i1 true, i1 %diff.check5193
  br i1 %or.cond5315, label %.lr.ph2524.preheader, label %vector.main.loop.iter.check5196

vector.main.loop.iter.check5196:                  ; preds = %iter.check5213
  %min.iters.check5197 = icmp ult i64 %.1.i68.lcssa, 32
  br i1 %min.iters.check5197, label %vec.epilog.ph5217, label %vector.ph5198

vector.ph5198:                                    ; preds = %vector.main.loop.iter.check5196
  %i.eac = and i64 %.1.i68.lcssa, 28
  %n.vec5199 = and i64 %.1.i68.lcssa, -32         ; 5 uses
  %i.ead = and i64 %.1.i68.lcssa, 31
  %i.eae = getelementptr i8, ptr %.119.i.lcssa, i64 %n.vec5199
  %i.eaf = getelementptr i8, ptr %.122.i.lcssa, i64 %n.vec5199 ; 2 uses
  br label %vector.body5200

vector.body5200:                                  ; preds = %vector.ph5198, %vector.body5200
  %index5201 = phi i64 [ 0, %vector.ph5198 ], [ %index.next5206, %vector.body5200 ] ; 3 uses
  %next.gep5202 = getelementptr i8, ptr %.119.i.lcssa, i64 %index5201 ; 2 uses
  %next.gep5203 = getelementptr i8, ptr %.122.i.lcssa, i64 %index5201 ; 2 uses
  %i.eag = getelementptr i8, ptr %next.gep5202, i64 16
  %wide.load5204 = load <16 x i8>, ptr %next.gep5202, align 1, !tbaa !100
  %wide.load5205 = load <16 x i8>, ptr %i.eag, align 1, !tbaa !100
  %i.eah = getelementptr i8, ptr %next.gep5203, i64 16
  store <16 x i8> %wide.load5204, ptr %next.gep5203, align 1, !tbaa !100
  store <16 x i8> %wide.load5205, ptr %i.eah, align 1, !tbaa !100
  %index.next5206 = add nuw i64 %index5201, 32    ; 2 uses
  %i.eai = icmp eq i64 %index.next5206, %n.vec5199
  br i1 %i.eai, label %middle.block5207, label %vector.body5200, !llvm.loop !392

middle.block5207:                                 ; preds = %vector.body5200
  %cmp.n5208 = icmp eq i64 %.1.i68.lcssa, %n.vec5199
  br i1 %cmp.n5208, label %write_str.exit209, label %vec.epilog.iter.check5215

vec.epilog.iter.check5215:                        ; preds = %middle.block5207
  %min.epilog.iters.check5216 = icmp eq i64 %i.eac, 0
  br i1 %min.epilog.iters.check5216, label %.lr.ph2524.preheader, label %vec.epilog.ph5217, !prof !152

vec.epilog.ph5217:                                ; preds = %vector.main.loop.iter.check5196, %vec.epilog.iter.check5215
  %vec.epilog.resume.val5209 = phi i64 [ %n.vec5199, %vec.epilog.iter.check5215 ], [ 0, %vector.main.loop.iter.check5196 ]
  %n.vec5218 = and i64 %.1.i68.lcssa, -4          ; 4 uses
  %i.eaj = and i64 %.1.i68.lcssa, 3
  %i.eak = getelementptr i8, ptr %.119.i.lcssa, i64 %n.vec5218
  %i.eal = getelementptr i8, ptr %.122.i.lcssa, i64 %n.vec5218 ; 2 uses
  br label %vec.epilog.vector.body5219

vec.epilog.vector.body5219:                       ; preds = %vec.epilog.vector.body5219, %vec.epilog.ph5217
  %index5220 = phi i64 [ %vec.epilog.resume.val5209, %vec.epilog.ph5217 ], [ %index.next5224, %vec.epilog.vector.body5219 ] ; 3 uses
  %next.gep5221 = getelementptr i8, ptr %.119.i.lcssa, i64 %index5220
  %next.gep5222 = getelementptr i8, ptr %.122.i.lcssa, i64 %index5220
  %wide.load5223 = load <4 x i8>, ptr %next.gep5221, align 1, !tbaa !100
  store <4 x i8> %wide.load5223, ptr %next.gep5222, align 1, !tbaa !100
  %index.next5224 = add nuw i64 %index5220, 4     ; 2 uses
  %i.eam = icmp eq i64 %index.next5224, %n.vec5218
  br i1 %i.eam, label %vec.epilog.middle.block5225, label %vec.epilog.vector.body5219, !llvm.loop !393

vec.epilog.middle.block5225:                      ; preds = %vec.epilog.vector.body5219
  %cmp.n5226 = icmp eq i64 %.1.i68.lcssa, %n.vec5218
  br i1 %cmp.n5226, label %write_str.exit209, label %.lr.ph2524.preheader

.lr.ph2524.preheader:                             ; preds = %iter.check5213, %vec.epilog.iter.check5215, %vec.epilog.middle.block5225
  %.2.i692523.ph = phi i64 [ %.1.i68.lcssa, %iter.check5213 ], [ %i.ead, %vec.epilog.iter.check5215 ], [ %i.eaj, %vec.epilog.middle.block5225 ] ; 4 uses
  %.220.i2522.ph = phi ptr [ %.119.i.lcssa, %iter.check5213 ], [ %i.eae, %vec.epilog.iter.check5215 ], [ %i.eak, %vec.epilog.middle.block5225 ] ; 2 uses
  %.223.i2521.ph = phi ptr [ %.122.i.lcssa, %iter.check5213 ], [ %i.eaf, %vec.epilog.iter.check5215 ], [ %i.eal, %vec.epilog.middle.block5225 ] ; 2 uses
  %i.ean = add nsw i64 %.2.i692523.ph, -1
  %xtraiter5987 = and i64 %.2.i692523.ph, 7       ; 2 uses
  %lcmp.mod5988.not = icmp eq i64 %xtraiter5987, 0
  br i1 %lcmp.mod5988.not, label %.lr.ph2524.prol.loopexit, label %.lr.ph2524.prol

.lr.ph2524.prol:                                  ; preds = %.lr.ph2524.preheader, %.lr.ph2524.prol
  %.2.i692523.prol = phi i64 [ %i.ear, %.lr.ph2524.prol ], [ %.2.i692523.ph, %.lr.ph2524.preheader ]
  %.220.i2522.prol = phi ptr [ %i.eao, %.lr.ph2524.prol ], [ %.220.i2522.ph, %.lr.ph2524.preheader ] ; 2 uses
  %.223.i2521.prol = phi ptr [ %i.eaq, %.lr.ph2524.prol ], [ %.223.i2521.ph, %.lr.ph2524.preheader ] ; 2 uses
  %prol.iter5989 = phi i64 [ %prol.iter5989.next, %.lr.ph2524.prol ], [ 0, %.lr.ph2524.preheader ]
  %i.eao = getelementptr inbounds nuw i8, ptr %.220.i2522.prol, i64 1 ; 2 uses
  %i.eap = load i8, ptr %.220.i2522.prol, align 1, !tbaa !100
  %i.eaq = getelementptr inbounds nuw i8, ptr %.223.i2521.prol, i64 1 ; 3 uses
  store i8 %i.eap, ptr %.223.i2521.prol, align 1, !tbaa !100
  %i.ear = add nsw i64 %.2.i692523.prol, -1       ; 2 uses
  %prol.iter5989.next = add i64 %prol.iter5989, 1 ; 2 uses
  %prol.iter5989.cmp.not = icmp eq i64 %prol.iter5989.next, %xtraiter5987
  br i1 %prol.iter5989.cmp.not, label %.lr.ph2524.prol.loopexit, label %.lr.ph2524.prol, !llvm.loop !394

.lr.ph2524.prol.loopexit:                         ; preds = %.lr.ph2524.prol, %.lr.ph2524.preheader
  %.lcssa5586.unr = phi ptr [ poison, %.lr.ph2524.preheader ], [ %i.eaq, %.lr.ph2524.prol ]
  %.2.i692523.unr = phi i64 [ %.2.i692523.ph, %.lr.ph2524.preheader ], [ %i.ear, %.lr.ph2524.prol ]
  %.220.i2522.unr = phi ptr [ %.220.i2522.ph, %.lr.ph2524.preheader ], [ %i.eao, %.lr.ph2524.prol ]
  %.223.i2521.unr = phi ptr [ %.223.i2521.ph, %.lr.ph2524.preheader ], [ %i.eaq, %.lr.ph2524.prol ]
  %i.eas = icmp ult i64 %i.ean, 7
  br i1 %i.eas, label %write_str.exit209, label %.lr.ph2524

.lr.ph2516:                                       ; preds = %.lr.ph2516.preheader5502, %.lr.ph2516
  %.1.i682515 = phi i64 [ %i.eaw, %.lr.ph2516 ], [ %.1.i682515.ph, %.lr.ph2516.preheader5502 ]
  %.119.i2514 = phi ptr [ %i.eav, %.lr.ph2516 ], [ %.119.i2514.ph, %.lr.ph2516.preheader5502 ] ; 2 uses
  %.122.i2513 = phi ptr [ %i.eau, %.lr.ph2516 ], [ %.122.i2513.ph, %.lr.ph2516.preheader5502 ] ; 2 uses
  %i.eat = load i32, ptr %.119.i2514, align 1
  store i32 %i.eat, ptr %.122.i2513, align 1
  %i.eau = getelementptr inbounds nuw i8, ptr %.122.i2513, i64 4 ; 2 uses
  %i.eav = getelementptr inbounds nuw i8, ptr %.119.i2514, i64 4 ; 2 uses
  %i.eaw = add nsw i64 %.1.i682515, -4            ; 3 uses
  %i.eax = icmp ugt i64 %i.eaw, 3
  br i1 %i.eax, label %.lr.ph2516, label %.preheader1366, !llvm.loop !395

.lr.ph2524:                                       ; preds = %.lr.ph2524.prol.loopexit, %.lr.ph2524
  %.2.i692523 = phi i64 [ %i.ebw, %.lr.ph2524 ], [ %.2.i692523.unr, %.lr.ph2524.prol.loopexit ]
  %.220.i2522 = phi ptr [ %i.ebt, %.lr.ph2524 ], [ %.220.i2522.unr, %.lr.ph2524.prol.loopexit ] ; 9 uses
  %.223.i2521 = phi ptr [ %i.ebv, %.lr.ph2524 ], [ %.223.i2521.unr, %.lr.ph2524.prol.loopexit ] ; 9 uses
  %i.eay = getelementptr inbounds nuw i8, ptr %.220.i2522, i64 1
  %i.eaz = load i8, ptr %.220.i2522, align 1, !tbaa !100
  %i.eba = getelementptr inbounds nuw i8, ptr %.223.i2521, i64 1
  store i8 %i.eaz, ptr %.223.i2521, align 1, !tbaa !100
  %i.ebb = getelementptr inbounds nuw i8, ptr %.220.i2522, i64 2
  %i.ebc = load i8, ptr %i.eay, align 1, !tbaa !100
  %i.ebd = getelementptr inbounds nuw i8, ptr %.223.i2521, i64 2
  store i8 %i.ebc, ptr %i.eba, align 1, !tbaa !100
  %i.ebe = getelementptr inbounds nuw i8, ptr %.220.i2522, i64 3
  %i.ebf = load i8, ptr %i.ebb, align 1, !tbaa !100
  %i.ebg = getelementptr inbounds nuw i8, ptr %.223.i2521, i64 3
  store i8 %i.ebf, ptr %i.ebd, align 1, !tbaa !100
  %i.ebh = getelementptr inbounds nuw i8, ptr %.220.i2522, i64 4
  %i.ebi = load i8, ptr %i.ebe, align 1, !tbaa !100
  %i.ebj = getelementptr inbounds nuw i8, ptr %.223.i2521, i64 4
  store i8 %i.ebi, ptr %i.ebg, align 1, !tbaa !100
  %i.ebk = getelementptr inbounds nuw i8, ptr %.220.i2522, i64 5
  %i.ebl = load i8, ptr %i.ebh, align 1, !tbaa !100
  %i.ebm = getelementptr inbounds nuw i8, ptr %.223.i2521, i64 5
  store i8 %i.ebl, ptr %i.ebj, align 1, !tbaa !100
  %i.ebn = getelementptr inbounds nuw i8, ptr %.220.i2522, i64 6
  %i.ebo = load i8, ptr %i.ebk, align 1, !tbaa !100
  %i.ebp = getelementptr inbounds nuw i8, ptr %.223.i2521, i64 6
  store i8 %i.ebo, ptr %i.ebm, align 1, !tbaa !100
  %i.ebq = getelementptr inbounds nuw i8, ptr %.220.i2522, i64 7
  %i.ebr = load i8, ptr %i.ebn, align 1, !tbaa !100
  %i.ebs = getelementptr inbounds nuw i8, ptr %.223.i2521, i64 7
  store i8 %i.ebr, ptr %i.ebp, align 1, !tbaa !100
  %i.ebt = getelementptr inbounds nuw i8, ptr %.220.i2522, i64 8
  %i.ebu = load i8, ptr %i.ebq, align 1, !tbaa !100
  %i.ebv = getelementptr inbounds nuw i8, ptr %.223.i2521, i64 8 ; 2 uses
  store i8 %i.ebu, ptr %i.ebs, align 1, !tbaa !100
  %i.ebw = add nsw i64 %.2.i692523, -8            ; 2 uses
  %.not.i70.7 = icmp eq i64 %i.ebw, 0
  br i1 %.not.i70.7, label %write_str.exit209, label %.lr.ph2524, !llvm.loop !396

write_str.exit209:                                ; preds = %.preheader1353, %.lr.ph2524.prol.loopexit, %.lr.ph2524, %.preheader1339, %bb.nv, %.lr.ph2501.prol.loopexit, %bb.oi, %bb.ok, %bb.qd, %.lr.ph2552.prol.loopexit, %bb.qq, %bb.qs, %middle.block5207, %vec.epilog.middle.block5225, %.preheader1366
  %.3248.i118.lcssa.sink4531 = phi ptr [ %.122.i.lcssa, %.preheader1366 ], [ %.8253.i124, %bb.oi ], [ %.lcssa5656.unr, %.lr.ph2552.prol.loopexit ], [ %i.eal, %vec.epilog.middle.block5225 ], [ %i.ebv, %.lr.ph2524 ], [ %i.eaf, %middle.block5207 ], [ %.lcssa5573.unr, %.lr.ph2501.prol.loopexit ], [ %.2247.i.lcssa, %.preheader1339 ], [ %.8253.i, %bb.qq ], [ %.8253.i, %bb.qs ], [ %i.drw, %bb.qd ], [ %.8253.i124, %bb.ok ], [ %i.den, %bb.nv ], [ %.lcssa5586.unr, %.lr.ph2524.prol.loopexit ], [ %.2247.i116.lcssa, %.preheader1353 ] ; 3 uses
  %i.ebx = getelementptr inbounds nuw i8, ptr %.3248.i118.lcssa.sink4531, i64 1
  store i8 34, ptr %.3248.i118.lcssa.sink4531, align 1, !tbaa !100
  %i.eby = select i1 %.not439.i, i8 44, i8 58
  %i.ebz = getelementptr inbounds nuw i8, ptr %.3248.i118.lcssa.sink4531, i64 2
  store i8 %i.eby, ptr %i.ebx, align 1, !tbaa !100
  br label %bb.tc

bb.rp:                                            ; preds = %bb.mw
  %i.eca = getelementptr inbounds nuw i8, ptr %.0385.i, i64 40
  %.not435.i = icmp ult ptr %i.eca, %.0363.i
  br i1 %.not435.i, label %bb.rq, label %size_align_up.exit465.i, !prof !62

size_align_up.exit465.i:                          ; preds = %bb.rp
  %i.ecb = lshr i64 %.0356.i, 1
  %i.ecc = tail call i64 @llvm.umax.i64(i64 %i.ecb, i64 40)
  %i.ecd = add nuw i64 %i.ecc, 7
  %i.ece = and i64 %i.ecd, -8
  %i.ecf = add i64 %i.ece, %.0356.i               ; 4 uses
  %i.ecg = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0400.i, i64 noundef %.0356.i, i64 noundef %i.ecf) #33, !inline_history !388 ; 6 uses
  %.not436.i = icmp eq ptr %i.ecg, null
  br i1 %.not436.i, label %.loopexit1368, label %.thread1239, !prof !45

.thread1239:                                      ; preds = %size_align_up.exit465.i
  %i.ech = ptrtoint ptr %.0371.i to i64
  %i.eci = ptrtoint ptr %.0363.i to i64           ; 2 uses
  %i.ecj = sub i64 %i.ech, %i.eci                 ; 2 uses
  %i.eck = ptrtoint ptr %.0385.i to i64
  %i.ecl = ptrtoint ptr %.0400.i to i64           ; 2 uses
  %i.ecm = sub i64 %i.eck, %i.ecl
  %i.ecn = sub i64 %i.eci, %i.ecl
  %i.eco = sub i64 %i.ecf, %i.ecj
  %i.ecp = getelementptr inbounds nuw i8, ptr %i.ecg, i64 %i.eco ; 2 uses
  %i.ecq = getelementptr inbounds nuw i8, ptr %i.ecg, i64 %i.ecn
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ecp, ptr nonnull align 1 %i.ecq, i64 %i.ecj, i1 false)
  %i.ecr = getelementptr inbounds nuw i8, ptr %i.ecg, i64 %i.ecm
  %i.ecs = getelementptr inbounds nuw i8, ptr %i.ecg, i64 %i.ecf
  %.pre3171 = load i64, ptr %.0418.i, align 8, !tbaa !99
  br label %bb.rq

bb.rq:                                            ; preds = %.thread1239, %bb.rp
  %i.ect = phi i64 [ %.pre3171, %.thread1239 ], [ %i.cxm, %bb.rp ] ; 3 uses
  %.4404.i = phi ptr [ %i.ecg, %.thread1239 ], [ %.0400.i, %bb.rp ] ; 2 uses
  %.5390.i = phi ptr [ %i.ecr, %.thread1239 ], [ %.0385.i, %bb.rp ] ; 6 uses
  %.4375.i = phi ptr [ %i.ecs, %.thread1239 ], [ %.0371.i, %bb.rp ]
  %.4367.i = phi ptr [ %i.ecp, %.thread1239 ], [ %.0363.i, %bb.rp ]
  %.2358.i = phi i64 [ %i.ecf, %.thread1239 ], [ %.0356.i, %bb.rp ]
  %i.ecu = and i64 %i.ect, 16
  %.not.i606 = icmp eq i64 %i.ecu, 0
  %i.ecv = getelementptr inbounds nuw i8, ptr %.0418.i, i64 8
  %i.ecw = load i64, ptr %i.ecv, align 8, !tbaa !100 ; 7 uses
  br i1 %.not.i606, label %bb.rr, label %bb.sk

bb.rr:                                            ; preds = %bb.rq
  %i.ecx = sub i64 0, %i.ecw
  %i.ecy = lshr i64 %i.ect, 3
  %.lobit.i = lshr i64 %i.ecw, 63
  %i.ecz = and i64 %.lobit.i, %i.ecy              ; 2 uses
  store i8 45, ptr %.5390.i, align 1, !tbaa !100
  %.not37.i = icmp eq i64 %i.ecz, 0
  %i.eda = select i1 %.not37.i, i64 %i.ecw, i64 %i.ecx ; 26 uses
  %i.edb = getelementptr inbounds nuw i8, ptr %.5390.i, i64 %i.ecz ; 20 uses
  %i.edc = icmp ult i64 %i.eda, 100000000
  br i1 %i.edc, label %bb.rs, label %bb.rz

bb.rs:                                            ; preds = %bb.rr
  %i.edd = trunc nuw nsw i64 %i.eda to i32        ; 4 uses
  %i.ede = icmp samesign ult i64 %i.eda, 100
  br i1 %i.ede, label %bb.rt, label %bb.ru

bb.rt:                                            ; preds = %bb.rs
  %i.edf = icmp samesign ult i64 %i.eda, 10       ; 2 uses
  %i.edg = shl nuw nsw i64 %i.eda, 1
end_hunk_2
begin_hunk_3_@yyjson_mut_write_opts_impl:bb.a
  %i.ym = load i16, ptr %i.yl, align 2
  store i16 %i.ym, ptr %i.yi, align 1
  %i.yn = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 6
  %i.yo = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 3
  br label %.preheader.backedge

bb.dx:                                            ; preds = %bb.dg
  %.sroa.0.0.copyload.i333.i.i = load i32, ptr %.8.i.i, align 1 ; 9 uses
  %i.yp = and i32 %.sroa.0.0.copyload.i333.i.i, -1061109512
  %i.yq = icmp ne i32 %i.yp, -2139062032
  %i.yr = and i32 %.sroa.0.0.copyload.i333.i.i, 12295
  %.not288.i.i = icmp eq i32 %i.yr, 0
  %or.cond323.i.i = or i1 %i.yq, %.not288.i.i
  %i.ys = lshr i32 %.sroa.0.0.copyload.i333.i.i, 24
  br i1 %or.cond323.i.i, label %.thread725, label %bb.dy, !prof !139

bb.dy:                                            ; preds = %bb.dx
  %i.yt = and i32 %.sroa.0.0.copyload.i333.i.i, 4
  %i.yu = icmp ne i32 %i.yt, 0
  %i.yv = and i32 %.sroa.0.0.copyload.i333.i.i, 12291
  %i.yw = icmp ne i32 %i.yv, 0
  %.not291.i.i = and i1 %i.yu, %i.yw
  br i1 %.not291.i.i, label %.thread725, label %.critedge325.i.i, !prof !45

.critedge325.i.i:                                 ; preds = %bb.dy
  %i.yx = shl i32 %.sroa.0.0.copyload.i333.i.i, 18
  %i.yy = and i32 %i.yx, 1835008
  %i.yz = shl i32 %.sroa.0.0.copyload.i333.i.i, 4
  %i.za = and i32 %i.yz, 258048
  %i.zb = lshr i32 %.sroa.0.0.copyload.i333.i.i, 10 ; 2 uses
  %i.zc = and i32 %i.zb, 3072
  %i.zd = and i32 %i.ys, 63
  %i.ze = add nsw i32 %i.yy, -65536
  %i.zf = add nsw i32 %i.ze, %i.za                ; 2 uses
  %i.zg = or disjoint i32 %i.zf, %i.zc
  %i.zh = lshr exact i32 %i.zf, 10
  %i.zi = add nuw nsw i32 %i.zh, 55296
  store i16 30044, ptr %.8253.i.i, align 1
  %i.zj = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 2
  %i.zk = lshr i32 %i.zi, 7
  %i.zl = and i32 %i.zk, 65534
  %i.zm = zext nneg i32 %i.zl to i64
  %i.zn = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.zm
  %i.zo = load i16, ptr %i.zn, align 2
  store i16 %i.zo, ptr %i.zj, align 1
  %i.zp = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 4
  %i.zq = lshr exact i32 %i.zg, 9
  %i.zr = and i32 %i.zq, 510
  %i.zs = zext nneg i32 %i.zr to i64
  %i.zt = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.zs
  %i.zu = load i16, ptr %i.zt, align 2
  store i16 %i.zu, ptr %i.zp, align 1
  %i.zv = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 6
  store i16 30044, ptr %i.zv, align 1
  %i.zw = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 8
  %i.zx = lshr i32 %.sroa.0.0.copyload.i333.i.i, 17
  %i.zy = and i32 %i.zx, 6
  %i.zz = zext nneg i32 %i.zy to i64
  %i.aaa = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.zz
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 440
  %i.aac = load i16, ptr %i.aab, align 2
  store i16 %i.aac, ptr %i.zw, align 1
  %i.aad = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 10
  %.masked2961 = and i32 %i.zb, 192
  %i.aae = or disjoint i32 %i.zd, %.masked2961
  %i.aaf = shl nuw nsw i32 %i.aae, 1
  %i.aag = zext nneg i32 %i.aaf to i64
  %i.aah = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.aag
  %i.aai = load i16, ptr %i.aah, align 2
  store i16 %i.aai, ptr %i.aad, align 1
  %i.aaj = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 12
  br label %.preheader.backedge

bb.dz:                                            ; preds = %bb.dg, %bb.de
  %i.aak = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 1
  store i8 34, ptr %.8253.i.i, align 1, !tbaa !100
  br label %write_str.exit109.i

bb.ea:                                            ; preds = %bb.dg, %bb.df
  %i.aal = phi i8 [ %i.vf, %bb.dg ], [ %i.ux, %bb.df ]
  br i1 %.not950, label %.thread715, label %.thread725

.thread715:                                       ; preds = %bb.dp, %bb.dq, %bb.dn, %bb.dl, %bb.do, %bb.do, %bb.dm, %bb.dm, %bb.di, %bb.ea
  %i.aam = phi i8 [ %i.we, %bb.dp ], [ %i.we, %bb.dq ], [ %i.vx, %bb.dn ], [ %i.vr, %bb.dl ], [ %i.vx, %bb.do ], [ %i.vx, %bb.do ], [ %i.vr, %bb.dm ], [ %i.vr, %bb.dm ], [ %i.vm, %bb.di ], [ %i.aal, %bb.ea ]
  br i1 %.not953, label %.loopexit, label %bb.eb

bb.eb:                                            ; preds = %.thread715
  %i.aan = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 1
  %i.aao = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 1
  store i8 %i.aam, ptr %.8253.i.i, align 1, !tbaa !100
  br label %.preheader.backedge

.thread725:                                       ; preds = %bb.dx, %bb.dy, %bb.dv, %bb.dw, %bb.dw, %bb.dt, %bb.ea
  br i1 %.not953, label %.loopexit, label %bb.ec

bb.ec:                                            ; preds = %.thread725
  store i16 30044, ptr %.8253.i.i, align 1
  %i.aap = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 2
  store i32 1145456198, ptr %i.aap, align 1
  %i.aaq = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 6
  %i.aar = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 1
  br label %.preheader.backedge

bb.ed:                                            ; preds = %bb.bu
  %i.aas = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  %i.aat = icmp ugt i64 %i.a, 4095
  br i1 %i.aat, label %.lr.ph2244, label %.preheader972

.preheader972:                                    ; preds = %.lr.ph2244, %bb.ed
  %.021.i.i.lcssa = phi ptr [ %i.aas, %bb.ed ], [ %i.abi, %.lr.ph2244 ] ; 5 uses
  %.018.i.i.lcssa = phi ptr [ %i.t, %bb.ed ], [ %i.abj, %.lr.ph2244 ] ; 5 uses
  %.0.i4.i.lcssa = phi i64 [ %i.r, %bb.ed ], [ %i.abk, %.lr.ph2244 ] ; 5 uses
  %i.aau = icmp samesign ugt i64 %.0.i4.i.lcssa, 3
  br i1 %i.aau, label %.lr.ph2251.preheader, label %.preheader971

.lr.ph2251.preheader:                             ; preds = %.preheader972
  %.018.i.i.lcssa4915 = ptrtoaddr ptr %.018.i.i.lcssa to i64
  %.021.i.i.lcssa4914 = ptrtoaddr ptr %.021.i.i.lcssa to i64
  %i.aav = add nsw i64 %.0.i4.i.lcssa, -4         ; 2 uses
  %i.aaw = lshr i64 %i.aav, 2
  %i.aax = add nuw nsw i64 %i.aaw, 1              ; 2 uses
  %min.iters.check4918 = icmp ult i64 %i.aav, 28
  %i.aay = sub i64 %.018.i.i.lcssa4915, %.021.i.i.lcssa4914
  %diff.check4916 = icmp ugt i64 %i.aay, -32
  %or.cond4973 = select i1 %min.iters.check4918, i1 true, i1 %diff.check4916
  br i1 %or.cond4973, label %.lr.ph2251.preheader5059, label %vector.ph4919

vector.ph4919:                                    ; preds = %.lr.ph2251.preheader
  %n.vec4920 = and i64 %i.aax, 9223372036854775800 ; 4 uses
  %i.aaz = shl i64 %n.vec4920, 2
  %i.aba = sub i64 %.0.i4.i.lcssa, %i.aaz         ; 2 uses
  %i.abb = shl i64 %n.vec4920, 2                  ; 2 uses
  %i.abc = getelementptr i8, ptr %.018.i.i.lcssa, i64 %i.abb ; 2 uses
  %i.abd = getelementptr i8, ptr %.021.i.i.lcssa, i64 %i.abb ; 2 uses
  br label %vector.body4921

vector.body4921:                                  ; preds = %vector.body4921, %vector.ph4919
  %index4922 = phi i64 [ 0, %vector.ph4919 ], [ %index.next4927, %vector.body4921 ] ; 2 uses
  %i.abe = shl i64 %index4922, 2                  ; 2 uses
  %next.gep4923 = getelementptr i8, ptr %.018.i.i.lcssa, i64 %i.abe ; 2 uses
  %next.gep4924 = getelementptr i8, ptr %.021.i.i.lcssa, i64 %i.abe ; 2 uses
  %i.abf = getelementptr i8, ptr %next.gep4923, i64 16
  %wide.load4925 = load <4 x i32>, ptr %next.gep4923, align 1
  %wide.load4926 = load <4 x i32>, ptr %i.abf, align 1
  %i.abg = getelementptr i8, ptr %next.gep4924, i64 16
  store <4 x i32> %wide.load4925, ptr %next.gep4924, align 1
  store <4 x i32> %wide.load4926, ptr %i.abg, align 1
  %index.next4927 = add nuw i64 %index4922, 8     ; 2 uses
  %i.abh = icmp eq i64 %index.next4927, %n.vec4920
  br i1 %i.abh, label %middle.block4928, label %vector.body4921, !llvm.loop !403

middle.block4928:                                 ; preds = %vector.body4921
  %cmp.n4929 = icmp eq i64 %i.aax, %n.vec4920
  br i1 %cmp.n4929, label %.preheader971, label %.lr.ph2251.preheader5059

.lr.ph2251.preheader5059:                         ; preds = %.lr.ph2251.preheader, %middle.block4928
  %.1.i5.i2250.ph = phi i64 [ %.0.i4.i.lcssa, %.lr.ph2251.preheader ], [ %i.aba, %middle.block4928 ]
  %.119.i.i2249.ph = phi ptr [ %.018.i.i.lcssa, %.lr.ph2251.preheader ], [ %i.abc, %middle.block4928 ]
  %.122.i.i2248.ph = phi ptr [ %.021.i.i.lcssa, %.lr.ph2251.preheader ], [ %i.abd, %middle.block4928 ]
  br label %.lr.ph2251

.lr.ph2244:                                       ; preds = %bb.ed, %.lr.ph2244
  %.0.i4.i2242 = phi i64 [ %i.abk, %.lr.ph2244 ], [ %i.r, %bb.ed ]
  %.018.i.i2241 = phi ptr [ %i.abj, %.lr.ph2244 ], [ %i.t, %bb.ed ] ; 2 uses
  %.021.i.i2240 = phi ptr [ %i.abi, %.lr.ph2244 ], [ %i.aas, %bb.ed ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.021.i.i2240, ptr noundef nonnull align 1 dereferenceable(16) %.018.i.i2241, i64 16, i1 false)
  %i.abi = getelementptr inbounds nuw i8, ptr %.021.i.i2240, i64 16 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %.018.i.i2241, i64 16 ; 2 uses
  %i.abk = add nsw i64 %.0.i4.i2242, -16          ; 3 uses
  %i.abl = icmp ugt i64 %i.abk, 15
  br i1 %i.abl, label %.lr.ph2244, label %.preheader972, !llvm.loop !26

.preheader971:                                    ; preds = %.lr.ph2251, %middle.block4928, %.preheader972
  %.122.i.i.lcssa = phi ptr [ %.021.i.i.lcssa, %.preheader972 ], [ %i.abd, %middle.block4928 ], [ %i.acf, %.lr.ph2251 ] ; 7 uses
  %.119.i.i.lcssa = phi ptr [ %.018.i.i.lcssa, %.preheader972 ], [ %i.abc, %middle.block4928 ], [ %i.acg, %.lr.ph2251 ] ; 6 uses
  %.1.i5.i.lcssa = phi i64 [ %.0.i4.i.lcssa, %.preheader972 ], [ %i.aba, %middle.block4928 ], [ %i.ach, %.lr.ph2251 ] ; 11 uses
  %.not.i6.i2255 = icmp eq i64 %.1.i5.i.lcssa, 0
  br i1 %.not.i6.i2255, label %write_str_noesc.exit.i, label %iter.check4956

iter.check4956:                                   ; preds = %.preheader971
  %.119.i.i.lcssa4935 = ptrtoaddr ptr %.119.i.i.lcssa to i64
  %.122.i.i.lcssa4934 = ptrtoaddr ptr %.122.i.i.lcssa to i64
  %min.iters.check4938 = icmp ult i64 %.1.i5.i.lcssa, 4
  %i.abm = sub i64 %.119.i.i.lcssa4935, %.122.i.i.lcssa4934
  %diff.check4936 = icmp ugt i64 %i.abm, -32
  %or.cond4974 = select i1 %min.iters.check4938, i1 true, i1 %diff.check4936
  br i1 %or.cond4974, label %.lr.ph2259.preheader, label %vector.main.loop.iter.check4939

vector.main.loop.iter.check4939:                  ; preds = %iter.check4956
  %min.iters.check4940 = icmp ult i64 %.1.i5.i.lcssa, 32
  br i1 %min.iters.check4940, label %vec.epilog.ph4960, label %vector.ph4941

vector.ph4941:                                    ; preds = %vector.main.loop.iter.check4939
  %i.abn = and i64 %.1.i5.i.lcssa, 28
  %n.vec4942 = and i64 %.1.i5.i.lcssa, -32        ; 5 uses
  %i.abo = and i64 %.1.i5.i.lcssa, 31
  %i.abp = getelementptr i8, ptr %.119.i.i.lcssa, i64 %n.vec4942
  %i.abq = getelementptr i8, ptr %.122.i.i.lcssa, i64 %n.vec4942 ; 2 uses
  br label %vector.body4943

vector.body4943:                                  ; preds = %vector.ph4941, %vector.body4943
  %index4944 = phi i64 [ 0, %vector.ph4941 ], [ %index.next4949, %vector.body4943 ] ; 3 uses
  %next.gep4945 = getelementptr i8, ptr %.119.i.i.lcssa, i64 %index4944 ; 2 uses
  %next.gep4946 = getelementptr i8, ptr %.122.i.i.lcssa, i64 %index4944 ; 2 uses
  %i.abr = getelementptr i8, ptr %next.gep4945, i64 16
  %wide.load4947 = load <16 x i8>, ptr %next.gep4945, align 1, !tbaa !100
  %wide.load4948 = load <16 x i8>, ptr %i.abr, align 1, !tbaa !100
  %i.abs = getelementptr i8, ptr %next.gep4946, i64 16
  store <16 x i8> %wide.load4947, ptr %next.gep4946, align 1, !tbaa !100
  store <16 x i8> %wide.load4948, ptr %i.abs, align 1, !tbaa !100
  %index.next4949 = add nuw i64 %index4944, 32    ; 2 uses
  %i.abt = icmp eq i64 %index.next4949, %n.vec4942
  br i1 %i.abt, label %middle.block4950, label %vector.body4943, !llvm.loop !404

middle.block4950:                                 ; preds = %vector.body4943
  %cmp.n4951 = icmp eq i64 %.1.i5.i.lcssa, %n.vec4942
  br i1 %cmp.n4951, label %write_str_noesc.exit.i, label %vec.epilog.iter.check4958

vec.epilog.iter.check4958:                        ; preds = %middle.block4950
  %min.epilog.iters.check4959 = icmp eq i64 %i.abn, 0
  br i1 %min.epilog.iters.check4959, label %.lr.ph2259.preheader, label %vec.epilog.ph4960, !prof !152

vec.epilog.ph4960:                                ; preds = %vector.main.loop.iter.check4939, %vec.epilog.iter.check4958
  %vec.epilog.resume.val4952 = phi i64 [ %n.vec4942, %vec.epilog.iter.check4958 ], [ 0, %vector.main.loop.iter.check4939 ]
  %n.vec4961 = and i64 %.1.i5.i.lcssa, -4         ; 4 uses
  %i.abu = and i64 %.1.i5.i.lcssa, 3
  %i.abv = getelementptr i8, ptr %.119.i.i.lcssa, i64 %n.vec4961
  %i.abw = getelementptr i8, ptr %.122.i.i.lcssa, i64 %n.vec4961 ; 2 uses
  br label %vec.epilog.vector.body4962

vec.epilog.vector.body4962:                       ; preds = %vec.epilog.vector.body4962, %vec.epilog.ph4960
  %index4963 = phi i64 [ %vec.epilog.resume.val4952, %vec.epilog.ph4960 ], [ %index.next4967, %vec.epilog.vector.body4962 ] ; 3 uses
  %next.gep4964 = getelementptr i8, ptr %.119.i.i.lcssa, i64 %index4963
  %next.gep4965 = getelementptr i8, ptr %.122.i.i.lcssa, i64 %index4963
  %wide.load4966 = load <4 x i8>, ptr %next.gep4964, align 1, !tbaa !100
  store <4 x i8> %wide.load4966, ptr %next.gep4965, align 1, !tbaa !100
  %index.next4967 = add nuw i64 %index4963, 4     ; 2 uses
  %i.abx = icmp eq i64 %index.next4967, %n.vec4961
  br i1 %i.abx, label %vec.epilog.middle.block4968, label %vec.epilog.vector.body4962, !llvm.loop !405

vec.epilog.middle.block4968:                      ; preds = %vec.epilog.vector.body4962
  %cmp.n4969 = icmp eq i64 %.1.i5.i.lcssa, %n.vec4961
  br i1 %cmp.n4969, label %write_str_noesc.exit.i, label %.lr.ph2259.preheader

.lr.ph2259.preheader:                             ; preds = %iter.check4956, %vec.epilog.iter.check4958, %vec.epilog.middle.block4968
  %.2.i.i2258.ph = phi i64 [ %.1.i5.i.lcssa, %iter.check4956 ], [ %i.abo, %vec.epilog.iter.check4958 ], [ %i.abu, %vec.epilog.middle.block4968 ] ; 4 uses
  %.220.i.i2257.ph = phi ptr [ %.119.i.i.lcssa, %iter.check4956 ], [ %i.abp, %vec.epilog.iter.check4958 ], [ %i.abv, %vec.epilog.middle.block4968 ] ; 2 uses
  %.223.i.i2256.ph = phi ptr [ %.122.i.i.lcssa, %iter.check4956 ], [ %i.abq, %vec.epilog.iter.check4958 ], [ %i.abw, %vec.epilog.middle.block4968 ] ; 2 uses
  %i.aby = add nsw i64 %.2.i.i2258.ph, -1
  %xtraiter5669 = and i64 %.2.i.i2258.ph, 7       ; 2 uses
  %lcmp.mod5670.not = icmp eq i64 %xtraiter5669, 0
  br i1 %lcmp.mod5670.not, label %.lr.ph2259.prol.loopexit, label %.lr.ph2259.prol

.lr.ph2259.prol:                                  ; preds = %.lr.ph2259.preheader, %.lr.ph2259.prol
  %.2.i.i2258.prol = phi i64 [ %i.acc, %.lr.ph2259.prol ], [ %.2.i.i2258.ph, %.lr.ph2259.preheader ]
  %.220.i.i2257.prol = phi ptr [ %i.abz, %.lr.ph2259.prol ], [ %.220.i.i2257.ph, %.lr.ph2259.preheader ] ; 2 uses
  %.223.i.i2256.prol = phi ptr [ %i.acb, %.lr.ph2259.prol ], [ %.223.i.i2256.ph, %.lr.ph2259.preheader ] ; 2 uses
  %prol.iter5671 = phi i64 [ %prol.iter5671.next, %.lr.ph2259.prol ], [ 0, %.lr.ph2259.preheader ]
  %i.abz = getelementptr inbounds nuw i8, ptr %.220.i.i2257.prol, i64 1 ; 2 uses
  %i.aca = load i8, ptr %.220.i.i2257.prol, align 1, !tbaa !100
  %i.acb = getelementptr inbounds nuw i8, ptr %.223.i.i2256.prol, i64 1 ; 3 uses
  store i8 %i.aca, ptr %.223.i.i2256.prol, align 1, !tbaa !100
  %i.acc = add nsw i64 %.2.i.i2258.prol, -1       ; 2 uses
  %prol.iter5671.next = add i64 %prol.iter5671, 1 ; 2 uses
  %prol.iter5671.cmp.not = icmp eq i64 %prol.iter5671.next, %xtraiter5669
  br i1 %prol.iter5671.cmp.not, label %.lr.ph2259.prol.loopexit, label %.lr.ph2259.prol, !llvm.loop !406

.lr.ph2259.prol.loopexit:                         ; preds = %.lr.ph2259.prol, %.lr.ph2259.preheader
  %.lcssa5058.unr = phi ptr [ poison, %.lr.ph2259.preheader ], [ %i.acb, %.lr.ph2259.prol ]
  %.2.i.i2258.unr = phi i64 [ %.2.i.i2258.ph, %.lr.ph2259.preheader ], [ %i.acc, %.lr.ph2259.prol ]
  %.220.i.i2257.unr = phi ptr [ %.220.i.i2257.ph, %.lr.ph2259.preheader ], [ %i.abz, %.lr.ph2259.prol ]
  %.223.i.i2256.unr = phi ptr [ %.223.i.i2256.ph, %.lr.ph2259.preheader ], [ %i.acb, %.lr.ph2259.prol ]
  %i.acd = icmp ult i64 %i.aby, 7
  br i1 %i.acd, label %write_str_noesc.exit.i, label %.lr.ph2259

.lr.ph2251:                                       ; preds = %.lr.ph2251.preheader5059, %.lr.ph2251
  %.1.i5.i2250 = phi i64 [ %i.ach, %.lr.ph2251 ], [ %.1.i5.i2250.ph, %.lr.ph2251.preheader5059 ]
  %.119.i.i2249 = phi ptr [ %i.acg, %.lr.ph2251 ], [ %.119.i.i2249.ph, %.lr.ph2251.preheader5059 ] ; 2 uses
  %.122.i.i2248 = phi ptr [ %i.acf, %.lr.ph2251 ], [ %.122.i.i2248.ph, %.lr.ph2251.preheader5059 ] ; 2 uses
  %i.ace = load i32, ptr %.119.i.i2249, align 1
  store i32 %i.ace, ptr %.122.i.i2248, align 1
  %i.acf = getelementptr inbounds nuw i8, ptr %.122.i.i2248, i64 4 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %.119.i.i2249, i64 4 ; 2 uses
  %i.ach = add nsw i64 %.1.i5.i2250, -4           ; 3 uses
  %i.aci = icmp ugt i64 %i.ach, 3
  br i1 %i.aci, label %.lr.ph2251, label %.preheader971, !llvm.loop !407

.lr.ph2259:                                       ; preds = %.lr.ph2259.prol.loopexit, %.lr.ph2259
  %.2.i.i2258 = phi i64 [ %i.adh, %.lr.ph2259 ], [ %.2.i.i2258.unr, %.lr.ph2259.prol.loopexit ]
  %.220.i.i2257 = phi ptr [ %i.ade, %.lr.ph2259 ], [ %.220.i.i2257.unr, %.lr.ph2259.prol.loopexit ] ; 9 uses
  %.223.i.i2256 = phi ptr [ %i.adg, %.lr.ph2259 ], [ %.223.i.i2256.unr, %.lr.ph2259.prol.loopexit ] ; 9 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %.220.i.i2257, i64 1
  %i.ack = load i8, ptr %.220.i.i2257, align 1, !tbaa !100
  %i.acl = getelementptr inbounds nuw i8, ptr %.223.i.i2256, i64 1
  store i8 %i.ack, ptr %.223.i.i2256, align 1, !tbaa !100
  %i.acm = getelementptr inbounds nuw i8, ptr %.220.i.i2257, i64 2
  %i.acn = load i8, ptr %i.acj, align 1, !tbaa !100
  %i.aco = getelementptr inbounds nuw i8, ptr %.223.i.i2256, i64 2
  store i8 %i.acn, ptr %i.acl, align 1, !tbaa !100
  %i.acp = getelementptr inbounds nuw i8, ptr %.220.i.i2257, i64 3
  %i.acq = load i8, ptr %i.acm, align 1, !tbaa !100
  %i.acr = getelementptr inbounds nuw i8, ptr %.223.i.i2256, i64 3
  store i8 %i.acq, ptr %i.aco, align 1, !tbaa !100
  %i.acs = getelementptr inbounds nuw i8, ptr %.220.i.i2257, i64 4
  %i.act = load i8, ptr %i.acp, align 1, !tbaa !100
  %i.acu = getelementptr inbounds nuw i8, ptr %.223.i.i2256, i64 4
  store i8 %i.act, ptr %i.acr, align 1, !tbaa !100
  %i.acv = getelementptr inbounds nuw i8, ptr %.220.i.i2257, i64 5
  %i.acw = load i8, ptr %i.acs, align 1, !tbaa !100
  %i.acx = getelementptr inbounds nuw i8, ptr %.223.i.i2256, i64 5
  store i8 %i.acw, ptr %i.acu, align 1, !tbaa !100
  %i.acy = getelementptr inbounds nuw i8, ptr %.220.i.i2257, i64 6
  %i.acz = load i8, ptr %i.acv, align 1, !tbaa !100
  %i.ada = getelementptr inbounds nuw i8, ptr %.223.i.i2256, i64 6
  store i8 %i.acz, ptr %i.acx, align 1, !tbaa !100
  %i.adb = getelementptr inbounds nuw i8, ptr %.220.i.i2257, i64 7
  %i.adc = load i8, ptr %i.acy, align 1, !tbaa !100
  %i.add = getelementptr inbounds nuw i8, ptr %.223.i.i2256, i64 7
  store i8 %i.adc, ptr %i.ada, align 1, !tbaa !100
  %i.ade = getelementptr inbounds nuw i8, ptr %.220.i.i2257, i64 8
  %i.adf = load i8, ptr %i.adb, align 1, !tbaa !100
  %i.adg = getelementptr inbounds nuw i8, ptr %.223.i.i2256, i64 8 ; 2 uses
  store i8 %i.adf, ptr %i.add, align 1, !tbaa !100
  %i.adh = add nsw i64 %.2.i.i2258, -8            ; 2 uses
  %.not.i6.i.7 = icmp eq i64 %i.adh, 0
  br i1 %.not.i6.i.7, label %write_str_noesc.exit.i, label %.lr.ph2259, !llvm.loop !408

write_str_noesc.exit.i:                           ; preds = %.lr.ph2259.prol.loopexit, %.lr.ph2259, %middle.block4950, %vec.epilog.middle.block4968, %.preheader971
  %.223.i.i.lcssa = phi ptr [ %.122.i.i.lcssa, %.preheader971 ], [ %i.abw, %vec.epilog.middle.block4968 ], [ %i.abq, %middle.block4950 ], [ %.lcssa5058.unr, %.lr.ph2259.prol.loopexit ], [ %i.adg, %.lr.ph2259 ] ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %.223.i.i.lcssa, i64 1
  store i8 34, ptr %.223.i.i.lcssa, align 1, !tbaa !100
  br label %write_str.exit109.i

bb.ee:                                            ; preds = %get_enc_table_with_flag.exit.i
  %i.adj = tail call ptr %.sroa.0486.0(ptr noundef %.sroa.9.0, i64 noundef 42) #33, !inline_history !400 ; 15 uses
  %.not102.i.i = icmp eq ptr %i.adj, null
  br i1 %.not102.i.i, label %bb.fp, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.adk = load i64, ptr %0, align 8, !tbaa !99   ; 3 uses
  %i.adl = and i64 %i.adk, 16
  %.not.i110.i = icmp eq i64 %i.adl, 0
  %i.adm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.adn = load i64, ptr %i.adm, align 8, !tbaa !100 ; 7 uses
  br i1 %.not.i110.i, label %bb.eg, label %bb.ez

bb.eg:                                            ; preds = %bb.ef
  %i.ado = sub i64 0, %i.adn
  %i.adp = lshr i64 %i.adk, 3
  %.lobit.i.i = lshr i64 %i.adn, 63
  %i.adq = and i64 %.lobit.i.i, %i.adp            ; 2 uses
  store i8 45, ptr %i.adj, align 1, !tbaa !100
  %.not37.i.i = icmp eq i64 %i.adq, 0
  %i.adr = select i1 %.not37.i.i, i64 %i.adn, i64 %i.ado ; 26 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adj, i64 %i.adq ; 20 uses
  %i.adt = icmp ult i64 %i.adr, 100000000
  br i1 %i.adt, label %bb.eh, label %bb.eo

bb.eh:                                            ; preds = %bb.eg
  %i.adu = trunc nuw nsw i64 %i.adr to i32        ; 4 uses
  %i.adv = icmp samesign ult i64 %i.adr, 100
  br i1 %i.adv, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.adw = icmp samesign ult i64 %i.adr, 10       ; 2 uses
  %i.adx = shl nuw nsw i64 %i.adr, 1
  %i.ady = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.adx
  %.neg70.i.i.i = sext i1 %i.adw to i64
  %i.adz = zext i1 %i.adw to i64
  %i.aea = getelementptr inbounds nuw i8, ptr %i.ady, i64 %i.adz
  %i.aeb = load i16, ptr %i.aea, align 1
  store i16 %i.aeb, ptr %i.ads, align 1
  %i.aec = getelementptr inbounds i8, ptr %i.ads, i64 %.neg70.i.i.i
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 2
  br label %write_str.exit109.i

bb.ej:                                            ; preds = %bb.eh
  %i.aee = icmp samesign ult i64 %i.adr, 10000
  br i1 %i.aee, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.aef = mul nuw nsw i32 %i.adu, 5243
  %i.aeg = lshr i32 %i.aef, 19                    ; 2 uses
  %.neg68.i.i.i = mul nsw i32 %i.aeg, -100
  %i.aeh = add nsw i32 %.neg68.i.i.i, %i.adu
  %i.aei = icmp samesign ult i64 %i.adr, 1000     ; 2 uses
  %i.aej = shl nuw nsw i32 %i.aeg, 1
  %i.aek = zext nneg i32 %i.aej to i64
  %i.ael = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.aek
  %.neg69.i.i.i = sext i1 %i.aei to i64
  %i.aem = zext i1 %i.aei to i64
  %i.aen = getelementptr inbounds nuw i8, ptr %i.ael, i64 %i.aem
  %i.aeo = load i16, ptr %i.aen, align 1
  store i16 %i.aeo, ptr %i.ads, align 1
  %i.aep = getelementptr inbounds i8, ptr %i.ads, i64 %.neg69.i.i.i ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 2
  %i.aer = shl nsw i32 %i.aeh, 1
  %i.aes = zext i32 %i.aer to i64
  %i.aet = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.aes
  %i.aeu = load i16, ptr %i.aet, align 2
  store i16 %i.aeu, ptr %i.aeq, align 1
end_hunk_3
begin_hunk_4_@yyjson_mut_write_opts_impl:bb.a
  %.tr294.i.i137 = trunc i16 %i.bsf to i8
  %.narrow295.i.i138 = or disjoint i8 %i.bsh, %.tr294.i.i137
  %i.bso = zext i8 %.narrow295.i.i138 to i64
  %i.bsp = shl nuw nsw i64 %i.bso, 1
  %i.bsq = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bsp
  %i.bsr = load i16, ptr %i.bsq, align 2
  store i16 %i.bsr, ptr %i.bsn, align 1
  %i.bss = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 6
  %i.bst = getelementptr inbounds nuw i8, ptr %.8.i.i111, i64 3
  br label %.preheader1020.backedge

bb.kn:                                            ; preds = %bb.jw
  %.sroa.0.0.copyload.i333.i.i116 = load i32, ptr %.8.i.i111, align 1 ; 9 uses
  %i.bsu = and i32 %.sroa.0.0.copyload.i333.i.i116, -1061109512
  %i.bsv = icmp ne i32 %i.bsu, -2139062032
  %i.bsw = and i32 %.sroa.0.0.copyload.i333.i.i116, 12295
  %.not288.i.i117 = icmp eq i32 %i.bsw, 0
  %or.cond323.i.i118 = or i1 %i.bsv, %.not288.i.i117
  %i.bsx = lshr i32 %.sroa.0.0.copyload.i333.i.i116, 24
  br i1 %or.cond323.i.i118, label %.thread775, label %bb.ko, !prof !139

bb.ko:                                            ; preds = %bb.kn
  %i.bsy = and i32 %.sroa.0.0.copyload.i333.i.i116, 4
  %i.bsz = icmp ne i32 %i.bsy, 0
  %i.bta = and i32 %.sroa.0.0.copyload.i333.i.i116, 12291
  %i.btb = icmp ne i32 %i.bta, 0
  %.not291.i.i119 = and i1 %i.bsz, %i.btb
  br i1 %.not291.i.i119, label %.thread775, label %.critedge325.i.i122, !prof !45

.critedge325.i.i122:                              ; preds = %bb.ko
  %i.btc = shl i32 %.sroa.0.0.copyload.i333.i.i116, 18
  %i.btd = and i32 %i.btc, 1835008
  %i.bte = shl i32 %.sroa.0.0.copyload.i333.i.i116, 4
  %i.btf = and i32 %i.bte, 258048
  %i.btg = lshr i32 %.sroa.0.0.copyload.i333.i.i116, 10 ; 2 uses
  %i.bth = and i32 %i.btg, 3072
  %i.bti = and i32 %i.bsx, 63
  %i.btj = add nsw i32 %i.btd, -65536
  %i.btk = add nsw i32 %i.btj, %i.btf             ; 2 uses
  %i.btl = or disjoint i32 %i.btk, %i.bth
  %i.btm = lshr exact i32 %i.btk, 10
  %i.btn = add nuw nsw i32 %i.btm, 55296
  store i16 30044, ptr %.8253.i.i110, align 1
  %i.bto = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 2
  %i.btp = lshr i32 %i.btn, 7
  %i.btq = and i32 %i.btp, 65534
  %i.btr = zext nneg i32 %i.btq to i64
  %i.bts = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.btr
  %i.btt = load i16, ptr %i.bts, align 2
  store i16 %i.btt, ptr %i.bto, align 1
  %i.btu = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 4
  %i.btv = lshr exact i32 %i.btl, 9
  %i.btw = and i32 %i.btv, 510
  %i.btx = zext nneg i32 %i.btw to i64
  %i.bty = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.btx
  %i.btz = load i16, ptr %i.bty, align 2
  store i16 %i.btz, ptr %i.btu, align 1
  %i.bua = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 6
  store i16 30044, ptr %i.bua, align 1
  %i.bub = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 8
  %i.buc = lshr i32 %.sroa.0.0.copyload.i333.i.i116, 17
  %i.bud = and i32 %i.buc, 6
  %i.bue = zext nneg i32 %i.bud to i64
  %i.buf = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bue
  %i.bug = getelementptr inbounds nuw i8, ptr %i.buf, i64 440
  %i.buh = load i16, ptr %i.bug, align 2
  store i16 %i.buh, ptr %i.bub, align 1
  %i.bui = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 10
  %.masked2948 = and i32 %i.btg, 192
  %i.buj = or disjoint i32 %i.bti, %.masked2948
  %i.buk = shl nuw nsw i32 %i.buj, 1
  %i.bul = zext nneg i32 %i.buk to i64
  %i.bum = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bul
  %i.bun = load i16, ptr %i.bum, align 2
  store i16 %i.bun, ptr %i.bui, align 1
  %i.buo = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 12
  br label %.preheader1020.backedge

bb.kp:                                            ; preds = %bb.jw, %bb.jv
  %i.bup = phi i8 [ %i.bpk, %bb.jw ], [ %i.bpc, %bb.jv ]
  br i1 %.not942, label %.thread765, label %.thread775

.thread765:                                       ; preds = %bb.kf, %bb.kg, %bb.kd, %bb.kb, %bb.ke, %bb.ke, %bb.kc, %bb.kc, %bb.jy, %bb.kp
  %i.buq = phi i8 [ %i.bqj, %bb.kf ], [ %i.bqj, %bb.kg ], [ %i.bqc, %bb.kd ], [ %i.bpw, %bb.kb ], [ %i.bqc, %bb.ke ], [ %i.bqc, %bb.ke ], [ %i.bpw, %bb.kc ], [ %i.bpw, %bb.kc ], [ %i.bpr, %bb.jy ], [ %i.bup, %bb.kp ]
  br i1 %.not937, label %.loopexit1021, label %bb.kq

bb.kq:                                            ; preds = %.thread765
  %i.bur = getelementptr inbounds nuw i8, ptr %.8.i.i111, i64 1
  %i.bus = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 1
  store i8 %i.buq, ptr %.8253.i.i110, align 1, !tbaa !100
  br label %.preheader1020.backedge

.thread775:                                       ; preds = %bb.kn, %bb.ko, %bb.kl, %bb.km, %bb.km, %bb.kj, %bb.kp
  br i1 %.not937, label %.loopexit1021, label %bb.kr

bb.kr:                                            ; preds = %.thread775
  store i16 30044, ptr %.8253.i.i110, align 1
  %i.but = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 2
  store i32 1145456198, ptr %i.but, align 1
  %i.buu = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 6
  %i.buv = getelementptr inbounds nuw i8, ptr %.8.i.i111, i64 1
  br label %.preheader1020.backedge

bb.ks:                                            ; preds = %bb.ik
  %i.buw = getelementptr inbounds nuw i8, ptr %.0.i774.i.lcssa, i64 1 ; 2 uses
  %i.bux = icmp ugt i64 %i.aso, 4095
  br i1 %i.bux, label %.lr.ph2044, label %.preheader1052

.preheader1052:                                   ; preds = %.lr.ph2044, %bb.ks
  %.021.i.i87.lcssa = phi ptr [ %i.buw, %bb.ks ], [ %i.bvm, %.lr.ph2044 ] ; 5 uses
  %.018.i.i88.lcssa = phi ptr [ %i.asx, %bb.ks ], [ %i.bvn, %.lr.ph2044 ] ; 5 uses
  %.0.i641.i.lcssa = phi i64 [ %i.asv, %bb.ks ], [ %i.bvo, %.lr.ph2044 ] ; 5 uses
  %i.buy = icmp samesign ugt i64 %.0.i641.i.lcssa, 3
  br i1 %i.buy, label %.lr.ph2051.preheader, label %.preheader1051

.lr.ph2051.preheader:                             ; preds = %.preheader1052
  %.018.i.i88.lcssa4837 = ptrtoaddr ptr %.018.i.i88.lcssa to i64
  %.021.i.i87.lcssa4836 = ptrtoaddr ptr %.021.i.i87.lcssa to i64
  %i.buz = add nsw i64 %.0.i641.i.lcssa, -4       ; 2 uses
  %i.bva = lshr i64 %i.buz, 2
  %i.bvb = add nuw nsw i64 %i.bva, 1              ; 2 uses
  %min.iters.check4839 = icmp ult i64 %i.buz, 28
  %i.bvc = sub i64 %.018.i.i88.lcssa4837, %.021.i.i87.lcssa4836
  %diff.check4838 = icmp ugt i64 %i.bvc, -32
  %or.cond4975 = select i1 %min.iters.check4839, i1 true, i1 %diff.check4838
  br i1 %or.cond4975, label %.lr.ph2051.preheader5373, label %vector.ph4840

vector.ph4840:                                    ; preds = %.lr.ph2051.preheader
  %n.vec4841 = and i64 %i.bvb, 9223372036854775800 ; 4 uses
  %i.bvd = shl i64 %n.vec4841, 2
  %i.bve = sub i64 %.0.i641.i.lcssa, %i.bvd       ; 2 uses
  %i.bvf = shl i64 %n.vec4841, 2                  ; 2 uses
  %i.bvg = getelementptr i8, ptr %.018.i.i88.lcssa, i64 %i.bvf ; 2 uses
  %i.bvh = getelementptr i8, ptr %.021.i.i87.lcssa, i64 %i.bvf ; 2 uses
  br label %vector.body4842

vector.body4842:                                  ; preds = %vector.body4842, %vector.ph4840
  %index4843 = phi i64 [ 0, %vector.ph4840 ], [ %index.next4848, %vector.body4842 ] ; 2 uses
  %i.bvi = shl i64 %index4843, 2                  ; 2 uses
  %next.gep4844 = getelementptr i8, ptr %.018.i.i88.lcssa, i64 %i.bvi ; 2 uses
  %next.gep4845 = getelementptr i8, ptr %.021.i.i87.lcssa, i64 %i.bvi ; 2 uses
  %i.bvj = getelementptr i8, ptr %next.gep4844, i64 16
  %wide.load4846 = load <4 x i32>, ptr %next.gep4844, align 1
  %wide.load4847 = load <4 x i32>, ptr %i.bvj, align 1
  %i.bvk = getelementptr i8, ptr %next.gep4845, i64 16
  store <4 x i32> %wide.load4846, ptr %next.gep4845, align 1
  store <4 x i32> %wide.load4847, ptr %i.bvk, align 1
  %index.next4848 = add nuw i64 %index4843, 8     ; 2 uses
  %i.bvl = icmp eq i64 %index.next4848, %n.vec4841
  br i1 %i.bvl, label %middle.block4849, label %vector.body4842, !llvm.loop !413

middle.block4849:                                 ; preds = %vector.body4842
  %cmp.n4850 = icmp eq i64 %i.bvb, %n.vec4841
  br i1 %cmp.n4850, label %.preheader1051, label %.lr.ph2051.preheader5373

.lr.ph2051.preheader5373:                         ; preds = %.lr.ph2051.preheader, %middle.block4849
  %.1.i.i912050.ph = phi i64 [ %.0.i641.i.lcssa, %.lr.ph2051.preheader ], [ %i.bve, %middle.block4849 ]
  %.119.i.i902049.ph = phi ptr [ %.018.i.i88.lcssa, %.lr.ph2051.preheader ], [ %i.bvg, %middle.block4849 ]
  %.122.i.i892048.ph = phi ptr [ %.021.i.i87.lcssa, %.lr.ph2051.preheader ], [ %i.bvh, %middle.block4849 ]
  br label %.lr.ph2051

.lr.ph2044:                                       ; preds = %bb.ks, %.lr.ph2044
  %.0.i641.i2042 = phi i64 [ %i.bvo, %.lr.ph2044 ], [ %i.asv, %bb.ks ]
  %.018.i.i882041 = phi ptr [ %i.bvn, %.lr.ph2044 ], [ %i.asx, %bb.ks ] ; 2 uses
  %.021.i.i872040 = phi ptr [ %i.bvm, %.lr.ph2044 ], [ %i.buw, %bb.ks ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.021.i.i872040, ptr noundef nonnull align 1 dereferenceable(16) %.018.i.i882041, i64 16, i1 false)
  %i.bvm = getelementptr inbounds nuw i8, ptr %.021.i.i872040, i64 16 ; 2 uses
  %i.bvn = getelementptr inbounds nuw i8, ptr %.018.i.i882041, i64 16 ; 2 uses
  %i.bvo = add nsw i64 %.0.i641.i2042, -16        ; 3 uses
  %i.bvp = icmp ugt i64 %i.bvo, 15
  br i1 %i.bvp, label %.lr.ph2044, label %.preheader1052, !llvm.loop !26

.preheader1051:                                   ; preds = %.lr.ph2051, %middle.block4849, %.preheader1052
  %.122.i.i89.lcssa = phi ptr [ %.021.i.i87.lcssa, %.preheader1052 ], [ %i.bvh, %middle.block4849 ], [ %i.bwj, %.lr.ph2051 ] ; 7 uses
  %.119.i.i90.lcssa = phi ptr [ %.018.i.i88.lcssa, %.preheader1052 ], [ %i.bvg, %middle.block4849 ], [ %i.bwk, %.lr.ph2051 ] ; 6 uses
  %.1.i.i91.lcssa = phi i64 [ %.0.i641.i.lcssa, %.preheader1052 ], [ %i.bve, %middle.block4849 ], [ %i.bwl, %.lr.ph2051 ] ; 11 uses
  %.not.i.i952055 = icmp eq i64 %.1.i.i91.lcssa, 0
  br i1 %.not.i.i952055, label %write_str.exit744.i, label %iter.check

iter.check:                                       ; preds = %.preheader1051
  %.119.i.i90.lcssa4819 = ptrtoaddr ptr %.119.i.i90.lcssa to i64
  %.122.i.i89.lcssa4818 = ptrtoaddr ptr %.122.i.i89.lcssa to i64
  %min.iters.check = icmp ult i64 %.1.i.i91.lcssa, 4
  %i.bvq = sub i64 %.119.i.i90.lcssa4819, %.122.i.i89.lcssa4818
  %diff.check = icmp ugt i64 %i.bvq, -32
  %or.cond4976 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond4976, label %.lr.ph2059.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check4820 = icmp ult i64 %.1.i.i91.lcssa, 32
  br i1 %min.iters.check4820, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bvr = and i64 %.1.i.i91.lcssa, 28
  %n.vec = and i64 %.1.i.i91.lcssa, -32           ; 5 uses
  %i.bvs = and i64 %.1.i.i91.lcssa, 31
  %i.bvt = getelementptr i8, ptr %.119.i.i90.lcssa, i64 %n.vec
  %i.bvu = getelementptr i8, ptr %.122.i.i89.lcssa, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.119.i.i90.lcssa, i64 %index ; 2 uses
  %next.gep4821 = getelementptr i8, ptr %.122.i.i89.lcssa, i64 %index ; 2 uses
  %i.bvv = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !100
  %wide.load4822 = load <16 x i8>, ptr %i.bvv, align 1, !tbaa !100
  %i.bvw = getelementptr i8, ptr %next.gep4821, i64 16
  store <16 x i8> %wide.load, ptr %next.gep4821, align 1, !tbaa !100
  store <16 x i8> %wide.load4822, ptr %i.bvw, align 1, !tbaa !100
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bvx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bvx, label %middle.block, label %vector.body, !llvm.loop !414

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.1.i.i91.lcssa, %n.vec
  br i1 %cmp.n, label %write_str.exit744.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bvr, 0
  br i1 %min.epilog.iters.check, label %.lr.ph2059.preheader, label %vec.epilog.ph, !prof !152

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec4825 = and i64 %.1.i.i91.lcssa, -4        ; 4 uses
  %i.bvy = and i64 %.1.i.i91.lcssa, 3
  %i.bvz = getelementptr i8, ptr %.119.i.i90.lcssa, i64 %n.vec4825
  %i.bwa = getelementptr i8, ptr %.122.i.i89.lcssa, i64 %n.vec4825 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index4826 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next4830, %vec.epilog.vector.body ] ; 3 uses
  %next.gep4827 = getelementptr i8, ptr %.119.i.i90.lcssa, i64 %index4826
  %next.gep4828 = getelementptr i8, ptr %.122.i.i89.lcssa, i64 %index4826
  %wide.load4829 = load <4 x i8>, ptr %next.gep4827, align 1, !tbaa !100
  store <4 x i8> %wide.load4829, ptr %next.gep4828, align 1, !tbaa !100
  %index.next4830 = add nuw i64 %index4826, 4     ; 2 uses
  %i.bwb = icmp eq i64 %index.next4830, %n.vec4825
  br i1 %i.bwb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !415

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n4831 = icmp eq i64 %.1.i.i91.lcssa, %n.vec4825
  br i1 %cmp.n4831, label %write_str.exit744.i, label %.lr.ph2059.preheader

.lr.ph2059.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2.i.i942058.ph = phi i64 [ %.1.i.i91.lcssa, %iter.check ], [ %i.bvs, %vec.epilog.iter.check ], [ %i.bvy, %vec.epilog.middle.block ] ; 4 uses
  %.220.i.i932057.ph = phi ptr [ %.119.i.i90.lcssa, %iter.check ], [ %i.bvt, %vec.epilog.iter.check ], [ %i.bvz, %vec.epilog.middle.block ] ; 2 uses
  %.223.i.i922056.ph = phi ptr [ %.122.i.i89.lcssa, %iter.check ], [ %i.bvu, %vec.epilog.iter.check ], [ %i.bwa, %vec.epilog.middle.block ] ; 2 uses
  %i.bwc = add nsw i64 %.2.i.i942058.ph, -1
  %xtraiter5617 = and i64 %.2.i.i942058.ph, 7     ; 2 uses
  %lcmp.mod5618.not = icmp eq i64 %xtraiter5617, 0
  br i1 %lcmp.mod5618.not, label %.lr.ph2059.prol.loopexit, label %.lr.ph2059.prol

.lr.ph2059.prol:                                  ; preds = %.lr.ph2059.preheader, %.lr.ph2059.prol
  %.2.i.i942058.prol = phi i64 [ %i.bwg, %.lr.ph2059.prol ], [ %.2.i.i942058.ph, %.lr.ph2059.preheader ]
  %.220.i.i932057.prol = phi ptr [ %i.bwd, %.lr.ph2059.prol ], [ %.220.i.i932057.ph, %.lr.ph2059.preheader ] ; 2 uses
  %.223.i.i922056.prol = phi ptr [ %i.bwf, %.lr.ph2059.prol ], [ %.223.i.i922056.ph, %.lr.ph2059.preheader ] ; 2 uses
  %prol.iter5619 = phi i64 [ %prol.iter5619.next, %.lr.ph2059.prol ], [ 0, %.lr.ph2059.preheader ]
  %i.bwd = getelementptr inbounds nuw i8, ptr %.220.i.i932057.prol, i64 1 ; 2 uses
  %i.bwe = load i8, ptr %.220.i.i932057.prol, align 1, !tbaa !100
  %i.bwf = getelementptr inbounds nuw i8, ptr %.223.i.i922056.prol, i64 1 ; 3 uses
  store i8 %i.bwe, ptr %.223.i.i922056.prol, align 1, !tbaa !100
  %i.bwg = add nsw i64 %.2.i.i942058.prol, -1     ; 2 uses
  %prol.iter5619.next = add i64 %prol.iter5619, 1 ; 2 uses
  %prol.iter5619.cmp.not = icmp eq i64 %prol.iter5619.next, %xtraiter5617
  br i1 %prol.iter5619.cmp.not, label %.lr.ph2059.prol.loopexit, label %.lr.ph2059.prol, !llvm.loop !416

.lr.ph2059.prol.loopexit:                         ; preds = %.lr.ph2059.prol, %.lr.ph2059.preheader
  %.lcssa5461.unr = phi ptr [ poison, %.lr.ph2059.preheader ], [ %i.bwf, %.lr.ph2059.prol ]
  %.2.i.i942058.unr = phi i64 [ %.2.i.i942058.ph, %.lr.ph2059.preheader ], [ %i.bwg, %.lr.ph2059.prol ]
  %.220.i.i932057.unr = phi ptr [ %.220.i.i932057.ph, %.lr.ph2059.preheader ], [ %i.bwd, %.lr.ph2059.prol ]
  %.223.i.i922056.unr = phi ptr [ %.223.i.i922056.ph, %.lr.ph2059.preheader ], [ %i.bwf, %.lr.ph2059.prol ]
  %i.bwh = icmp ult i64 %i.bwc, 7
  br i1 %i.bwh, label %write_str.exit744.i, label %.lr.ph2059

.lr.ph2051:                                       ; preds = %.lr.ph2051.preheader5373, %.lr.ph2051
  %.1.i.i912050 = phi i64 [ %i.bwl, %.lr.ph2051 ], [ %.1.i.i912050.ph, %.lr.ph2051.preheader5373 ]
  %.119.i.i902049 = phi ptr [ %i.bwk, %.lr.ph2051 ], [ %.119.i.i902049.ph, %.lr.ph2051.preheader5373 ] ; 2 uses
  %.122.i.i892048 = phi ptr [ %i.bwj, %.lr.ph2051 ], [ %.122.i.i892048.ph, %.lr.ph2051.preheader5373 ] ; 2 uses
  %i.bwi = load i32, ptr %.119.i.i902049, align 1
  store i32 %i.bwi, ptr %.122.i.i892048, align 1
  %i.bwj = getelementptr inbounds nuw i8, ptr %.122.i.i892048, i64 4 ; 2 uses
  %i.bwk = getelementptr inbounds nuw i8, ptr %.119.i.i902049, i64 4 ; 2 uses
  %i.bwl = add nsw i64 %.1.i.i912050, -4          ; 3 uses
  %i.bwm = icmp ugt i64 %i.bwl, 3
  br i1 %i.bwm, label %.lr.ph2051, label %.preheader1051, !llvm.loop !417

.lr.ph2059:                                       ; preds = %.lr.ph2059.prol.loopexit, %.lr.ph2059
  %.2.i.i942058 = phi i64 [ %i.bxl, %.lr.ph2059 ], [ %.2.i.i942058.unr, %.lr.ph2059.prol.loopexit ]
  %.220.i.i932057 = phi ptr [ %i.bxi, %.lr.ph2059 ], [ %.220.i.i932057.unr, %.lr.ph2059.prol.loopexit ] ; 9 uses
  %.223.i.i922056 = phi ptr [ %i.bxk, %.lr.ph2059 ], [ %.223.i.i922056.unr, %.lr.ph2059.prol.loopexit ] ; 9 uses
  %i.bwn = getelementptr inbounds nuw i8, ptr %.220.i.i932057, i64 1
  %i.bwo = load i8, ptr %.220.i.i932057, align 1, !tbaa !100
  %i.bwp = getelementptr inbounds nuw i8, ptr %.223.i.i922056, i64 1
  store i8 %i.bwo, ptr %.223.i.i922056, align 1, !tbaa !100
  %i.bwq = getelementptr inbounds nuw i8, ptr %.220.i.i932057, i64 2
  %i.bwr = load i8, ptr %i.bwn, align 1, !tbaa !100
  %i.bws = getelementptr inbounds nuw i8, ptr %.223.i.i922056, i64 2
  store i8 %i.bwr, ptr %i.bwp, align 1, !tbaa !100
  %i.bwt = getelementptr inbounds nuw i8, ptr %.220.i.i932057, i64 3
  %i.bwu = load i8, ptr %i.bwq, align 1, !tbaa !100
  %i.bwv = getelementptr inbounds nuw i8, ptr %.223.i.i922056, i64 3
  store i8 %i.bwu, ptr %i.bws, align 1, !tbaa !100
  %i.bww = getelementptr inbounds nuw i8, ptr %.220.i.i932057, i64 4
  %i.bwx = load i8, ptr %i.bwt, align 1, !tbaa !100
  %i.bwy = getelementptr inbounds nuw i8, ptr %.223.i.i922056, i64 4
  store i8 %i.bwx, ptr %i.bwv, align 1, !tbaa !100
  %i.bwz = getelementptr inbounds nuw i8, ptr %.220.i.i932057, i64 5
  %i.bxa = load i8, ptr %i.bww, align 1, !tbaa !100
  %i.bxb = getelementptr inbounds nuw i8, ptr %.223.i.i922056, i64 5
  store i8 %i.bxa, ptr %i.bwy, align 1, !tbaa !100
  %i.bxc = getelementptr inbounds nuw i8, ptr %.220.i.i932057, i64 6
  %i.bxd = load i8, ptr %i.bwz, align 1, !tbaa !100
  %i.bxe = getelementptr inbounds nuw i8, ptr %.223.i.i922056, i64 6
  store i8 %i.bxd, ptr %i.bxb, align 1, !tbaa !100
  %i.bxf = getelementptr inbounds nuw i8, ptr %.220.i.i932057, i64 7
  %i.bxg = load i8, ptr %i.bxc, align 1, !tbaa !100
  %i.bxh = getelementptr inbounds nuw i8, ptr %.223.i.i922056, i64 7
  store i8 %i.bxg, ptr %i.bxe, align 1, !tbaa !100
  %i.bxi = getelementptr inbounds nuw i8, ptr %.220.i.i932057, i64 8
  %i.bxj = load i8, ptr %i.bxf, align 1, !tbaa !100
  %i.bxk = getelementptr inbounds nuw i8, ptr %.223.i.i922056, i64 8 ; 2 uses
  store i8 %i.bxj, ptr %i.bxh, align 1, !tbaa !100
  %i.bxl = add nsw i64 %.2.i.i942058, -8          ; 2 uses
  %.not.i.i95.7 = icmp eq i64 %i.bxl, 0
  br i1 %.not.i.i95.7, label %write_str.exit744.i, label %.lr.ph2059, !llvm.loop !418

write_str.exit744.i:                              ; preds = %.preheader1037, %.lr.ph2059.prol.loopexit, %.lr.ph2059, %.preheader1023, %bb.gz, %.lr.ph2037.prol.loopexit, %bb.hm, %bb.ho, %bb.jh, %.lr.ph2087.prol.loopexit, %bb.ju, %bb.jw, %middle.block, %vec.epilog.middle.block, %.preheader1051
  %.8253.i659.i.lcssa.sink4191 = phi ptr [ %.8253.i659.i, %bb.hm ], [ %.122.i.i89.lcssa, %.preheader1051 ], [ %i.bwa, %vec.epilog.middle.block ], [ %.lcssa5531.unr, %.lr.ph2087.prol.loopexit ], [ %i.bxk, %.lr.ph2059 ], [ %i.bvu, %middle.block ], [ %.lcssa5448.unr, %.lr.ph2037.prol.loopexit ], [ %.2247.i.i102.lcssa, %.preheader1023 ], [ %.8253.i.i110, %bb.ju ], [ %.8253.i.i110, %bb.jw ], [ %i.bnl, %bb.jh ], [ %.8253.i659.i, %bb.ho ], [ %i.bac, %bb.gz ], [ %.lcssa5461.unr, %.lr.ph2059.prol.loopexit ], [ %.2247.i651.i.lcssa, %.preheader1037 ] ; 4 uses
  %i.bxm = getelementptr inbounds nuw i8, ptr %.8253.i659.i.lcssa.sink4191, i64 1
  store i8 34, ptr %.8253.i659.i.lcssa.sink4191, align 1, !tbaa !100
  %i.bxn = select i1 %.not600.i, i8 44, i8 58
  %i.bxo = getelementptr inbounds nuw i8, ptr %.8253.i659.i.lcssa.sink4191, i64 2
  store i8 %i.bxn, ptr %i.bxm, align 1, !tbaa !100
  %i.bxp = select i1 %.not600.i, i8 10, i8 32
  %i.bxq = getelementptr inbounds nuw i8, ptr %.8253.i659.i.lcssa.sink4191, i64 3
  store i8 %i.bxp, ptr %i.bxo, align 1, !tbaa !100
  br label %bb.mq

bb.kt:                                            ; preds = %bb.fz
  %i.bxr = trunc i64 %.0688 to i32
  %i.bxs = and i32 %i.asd, %i.bxr
  %.not595.i = icmp ne i32 %i.bxs, 0              ; 2 uses
  %i.bxt = select i1 %.not595.i, i64 40, i64 %i.asf ; 2 uses
  %i.bxu = getelementptr inbounds nuw i8, ptr %.0528.i, i64 %i.bxt
  %.not596.i = icmp ult ptr %i.bxu, %.0498.i
  br i1 %.not596.i, label %bb.kv, label %bb.ku, !prof !62

bb.ku:                                            ; preds = %bb.kt
  %i.bxv = lshr i64 %.0489.i, 1
  %i.bxw = tail call i64 @llvm.umax.i64(i64 %i.bxv, i64 %i.bxt)
  %i.bxx = add i64 %i.bxw, 15
  %i.bxy = and i64 %i.bxx, -16
  %i.bxz = add i64 %i.bxy, %.0489.i               ; 4 uses
  %i.bya = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0547.i, i64 noundef %.0489.i, i64 noundef %i.bxz) #33, !inline_history !409 ; 6 uses
  %.not597.i = icmp eq ptr %i.bya, null
  br i1 %.not597.i, label %.loopexit1049, label %.thread787, !prof !45

.thread787:                                       ; preds = %bb.ku
  %i.byb = ptrtoint ptr %.0509.i to i64
  %i.byc = ptrtoint ptr %.0498.i to i64           ; 2 uses
  %i.byd = sub i64 %i.byb, %i.byc                 ; 2 uses
  %i.bye = ptrtoint ptr %.0528.i to i64
  %i.byf = ptrtoint ptr %.0547.i to i64           ; 2 uses
  %i.byg = sub i64 %i.bye, %i.byf
  %i.byh = sub i64 %i.byc, %i.byf
  %i.byi = sub i64 %i.bxz, %i.byd
  %i.byj = getelementptr inbounds nuw i8, ptr %i.bya, i64 %i.byi ; 2 uses
  %i.byk = getelementptr inbounds nuw i8, ptr %i.bya, i64 %i.byh
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.byj, ptr nonnull align 1 %i.byk, i64 %i.byd, i1 false)
  %i.byl = getelementptr inbounds nuw i8, ptr %i.bya, i64 %i.byg
  %i.bym = getelementptr inbounds nuw i8, ptr %i.bya, i64 %i.bxz
  br label %bb.kv

bb.kv:                                            ; preds = %.thread787, %bb.kt
  %.4551.i = phi ptr [ %i.bya, %.thread787 ], [ %.0547.i, %bb.kt ] ; 2 uses
  %.5533.i = phi ptr [ %i.byl, %.thread787 ], [ %.0528.i, %bb.kt ] ; 3 uses
  %.4513.i = phi ptr [ %i.bym, %.thread787 ], [ %.0509.i, %bb.kt ]
  %.4502.i = phi ptr [ %i.byj, %.thread787 ], [ %.0498.i, %bb.kt ]
  %.2491.i = phi i64 [ %i.bxz, %.thread787 ], [ %.0489.i, %bb.kt ]
  %.not.i771.i2004 = select i1 %.not595.i, i1 true, i1 %.not.i771.i20042944
  br i1 %.not.i771.i2004, label %write_indent.exit772.i, label %select.unfold793.preheader

select.unfold793.preheader:                       ; preds = %bb.kv
  br i1 %lcmp.mod.not, label %select.unfold793.prol.loopexit, label %select.unfold793.prol

select.unfold793.prol:                            ; preds = %select.unfold793.preheader, %select.unfold793.prol
  %.0.i770.i2006.prol = phi ptr [ %i.byo, %select.unfold793.prol ], [ %.5533.i, %select.unfold793.preheader ] ; 2 uses
  %.04.i769.i2005.prol = phi i64 [ %i.byn, %select.unfold793.prol ], [ %.0487.i.ph, %select.unfold793.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %select.unfold793.prol ], [ 0, %select.unfold793.preheader ]
  %i.byn = add i64 %.04.i769.i2005.prol, -1       ; 2 uses
  store i32 538976288, ptr %.0.i770.i2006.prol, align 1
  %i.byo = getelementptr inbounds nuw i8, ptr %.0.i770.i2006.prol, i64 %i.arh ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %select.unfold793.prol.loopexit, label %select.unfold793.prol, !llvm.loop !419

select.unfold793.prol.loopexit:                   ; preds = %select.unfold793.prol, %select.unfold793.preheader
  %.lcssa5377.unr = phi ptr [ poison, %select.unfold793.preheader ], [ %i.byo, %select.unfold793.prol ]
  %.0.i770.i2006.unr = phi ptr [ %.5533.i, %select.unfold793.preheader ], [ %i.byo, %select.unfold793.prol ]
  %.04.i769.i2005.unr = phi i64 [ %.0487.i.ph, %select.unfold793.preheader ], [ %i.byn, %select.unfold793.prol ]
end_hunk_4
begin_hunk_5_@yyjson_mut_write_opts_impl:bb.a
  %.tr294.i.i314 = trunc i16 %i.dxb to i8
  %.narrow295.i.i315 = or disjoint i8 %i.dxd, %.tr294.i.i314
  %i.dxk = zext i8 %.narrow295.i.i315 to i64
  %i.dxl = shl nuw nsw i64 %i.dxk, 1
  %i.dxm = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dxl
  %i.dxn = load i16, ptr %i.dxm, align 2
  store i16 %i.dxn, ptr %i.dxj, align 1
  %i.dxo = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 6
  %i.dxp = getelementptr inbounds nuw i8, ptr %.8.i.i288, i64 3
  br label %.preheader987.backedge

bb.sa:                                            ; preds = %bb.rj
  %.sroa.0.0.copyload.i333.i.i293 = load i32, ptr %.8.i.i288, align 1 ; 9 uses
  %i.dxq = and i32 %.sroa.0.0.copyload.i333.i.i293, -1061109512
  %i.dxr = icmp ne i32 %i.dxq, -2139062032
  %i.dxs = and i32 %.sroa.0.0.copyload.i333.i.i293, 12295
  %.not288.i.i294 = icmp eq i32 %i.dxs, 0
  %or.cond323.i.i295 = or i1 %i.dxr, %.not288.i.i294
  %i.dxt = lshr i32 %.sroa.0.0.copyload.i333.i.i293, 24
  br i1 %or.cond323.i.i295, label %.thread878, label %bb.sb, !prof !139

bb.sb:                                            ; preds = %bb.sa
  %i.dxu = and i32 %.sroa.0.0.copyload.i333.i.i293, 4
  %i.dxv = icmp ne i32 %i.dxu, 0
  %i.dxw = and i32 %.sroa.0.0.copyload.i333.i.i293, 12291
  %i.dxx = icmp ne i32 %i.dxw, 0
  %.not291.i.i296 = and i1 %i.dxv, %i.dxx
  br i1 %.not291.i.i296, label %.thread878, label %.critedge325.i.i299, !prof !45

.critedge325.i.i299:                              ; preds = %bb.sb
  %i.dxy = shl i32 %.sroa.0.0.copyload.i333.i.i293, 18
  %i.dxz = and i32 %i.dxy, 1835008
  %i.dya = shl i32 %.sroa.0.0.copyload.i333.i.i293, 4
  %i.dyb = and i32 %i.dya, 258048
  %i.dyc = lshr i32 %.sroa.0.0.copyload.i333.i.i293, 10 ; 2 uses
  %i.dyd = and i32 %i.dyc, 3072
  %i.dye = and i32 %i.dxt, 63
  %i.dyf = add nsw i32 %i.dxz, -65536
  %i.dyg = add nsw i32 %i.dyf, %i.dyb             ; 2 uses
  %i.dyh = or disjoint i32 %i.dyg, %i.dyd
  %i.dyi = lshr exact i32 %i.dyg, 10
  %i.dyj = add nuw nsw i32 %i.dyi, 55296
  store i16 30044, ptr %.8253.i.i287, align 1
  %i.dyk = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 2
  %i.dyl = lshr i32 %i.dyj, 7
  %i.dym = and i32 %i.dyl, 65534
  %i.dyn = zext nneg i32 %i.dym to i64
  %i.dyo = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dyn
  %i.dyp = load i16, ptr %i.dyo, align 2
  store i16 %i.dyp, ptr %i.dyk, align 1
  %i.dyq = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 4
  %i.dyr = lshr exact i32 %i.dyh, 9
  %i.dys = and i32 %i.dyr, 510
  %i.dyt = zext nneg i32 %i.dys to i64
  %i.dyu = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dyt
  %i.dyv = load i16, ptr %i.dyu, align 2
  store i16 %i.dyv, ptr %i.dyq, align 1
  %i.dyw = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 6
  store i16 30044, ptr %i.dyw, align 1
  %i.dyx = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 8
  %i.dyy = lshr i32 %.sroa.0.0.copyload.i333.i.i293, 17
  %i.dyz = and i32 %i.dyy, 6
  %i.dza = zext nneg i32 %i.dyz to i64
  %i.dzb = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dza
  %i.dzc = getelementptr inbounds nuw i8, ptr %i.dzb, i64 440
  %i.dzd = load i16, ptr %i.dzc, align 2
  store i16 %i.dzd, ptr %i.dyx, align 1
  %i.dze = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 10
  %.masked2957 = and i32 %i.dyc, 192
  %i.dzf = or disjoint i32 %i.dye, %.masked2957
  %i.dzg = shl nuw nsw i32 %i.dzf, 1
  %i.dzh = zext nneg i32 %i.dzg to i64
  %i.dzi = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dzh
  %i.dzj = load i16, ptr %i.dzi, align 2
  store i16 %i.dzj, ptr %i.dze, align 1
  %i.dzk = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 12
  br label %.preheader987.backedge

bb.sc:                                            ; preds = %bb.rj, %bb.ri
  %i.dzl = phi i8 [ %i.dug, %bb.rj ], [ %i.dty, %bb.ri ]
  br i1 %.not942, label %.thread868, label %.thread878

.thread868:                                       ; preds = %bb.rs, %bb.rt, %bb.rq, %bb.ro, %bb.rr, %bb.rr, %bb.rp, %bb.rp, %bb.rl, %bb.sc
  %i.dzm = phi i8 [ %i.dvf, %bb.rs ], [ %i.dvf, %bb.rt ], [ %i.duy, %bb.rq ], [ %i.dus, %bb.ro ], [ %i.duy, %bb.rr ], [ %i.duy, %bb.rr ], [ %i.dus, %bb.rp ], [ %i.dus, %bb.rp ], [ %i.dun, %bb.rl ], [ %i.dzl, %bb.sc ]
  br i1 %.not945, label %.loopexit988, label %bb.sd

bb.sd:                                            ; preds = %.thread868
  %i.dzn = getelementptr inbounds nuw i8, ptr %.8.i.i288, i64 1
  %i.dzo = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 1
  store i8 %i.dzm, ptr %.8253.i.i287, align 1, !tbaa !100
  br label %.preheader987.backedge

.thread878:                                       ; preds = %bb.sa, %bb.sb, %bb.ry, %bb.rz, %bb.rz, %bb.rw, %bb.sc
  br i1 %.not945, label %.loopexit988, label %bb.se

bb.se:                                            ; preds = %.thread878
  store i16 30044, ptr %.8253.i.i287, align 1
  %i.dzp = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 2
  store i32 1145456198, ptr %i.dzp, align 1
  %i.dzq = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 6
  %i.dzr = getelementptr inbounds nuw i8, ptr %.8.i.i288, i64 1
  br label %.preheader987.backedge

bb.sf:                                            ; preds = %bb.px
  %i.dzs = getelementptr inbounds nuw i8, ptr %.2392.i, i64 1 ; 2 uses
  %i.dzt = icmp ugt i64 %i.cxx, 4095
  br i1 %i.dzt, label %.lr.ph2162, label %.preheader1018

.preheader1018:                                   ; preds = %.lr.ph2162, %bb.sf
  %.021.i.i264.lcssa = phi ptr [ %i.dzs, %bb.sf ], [ %i.eai, %.lr.ph2162 ] ; 5 uses
  %.018.i.i265.lcssa = phi ptr [ %i.cyf, %bb.sf ], [ %i.eaj, %.lr.ph2162 ] ; 5 uses
  %.0.i478.i.lcssa = phi i64 [ %i.cyd, %bb.sf ], [ %i.eak, %.lr.ph2162 ] ; 5 uses
  %i.dzu = icmp samesign ugt i64 %.0.i478.i.lcssa, 3
  br i1 %i.dzu, label %.lr.ph2169.preheader, label %.preheader1017

.lr.ph2169.preheader:                             ; preds = %.preheader1018
  %.018.i.i265.lcssa4895 = ptrtoaddr ptr %.018.i.i265.lcssa to i64
  %.021.i.i264.lcssa4894 = ptrtoaddr ptr %.021.i.i264.lcssa to i64
  %i.dzv = add nsw i64 %.0.i478.i.lcssa, -4       ; 2 uses
  %i.dzw = lshr i64 %i.dzv, 2
  %i.dzx = add nuw nsw i64 %i.dzw, 1              ; 2 uses
  %min.iters.check4898 = icmp ult i64 %i.dzv, 28
  %i.dzy = sub i64 %.018.i.i265.lcssa4895, %.021.i.i264.lcssa4894
  %diff.check4896 = icmp ugt i64 %i.dzy, -32
  %or.cond4977 = select i1 %min.iters.check4898, i1 true, i1 %diff.check4896
  br i1 %or.cond4977, label %.lr.ph2169.preheader5165, label %vector.ph4899

vector.ph4899:                                    ; preds = %.lr.ph2169.preheader
  %n.vec4900 = and i64 %i.dzx, 9223372036854775800 ; 4 uses
  %i.dzz = shl i64 %n.vec4900, 2
  %i.eaa = sub i64 %.0.i478.i.lcssa, %i.dzz       ; 2 uses
  %i.eab = shl i64 %n.vec4900, 2                  ; 2 uses
  %i.eac = getelementptr i8, ptr %.018.i.i265.lcssa, i64 %i.eab ; 2 uses
  %i.ead = getelementptr i8, ptr %.021.i.i264.lcssa, i64 %i.eab ; 2 uses
  br label %vector.body4901

vector.body4901:                                  ; preds = %vector.body4901, %vector.ph4899
  %index4902 = phi i64 [ 0, %vector.ph4899 ], [ %index.next4907, %vector.body4901 ] ; 2 uses
  %i.eae = shl i64 %index4902, 2                  ; 2 uses
  %next.gep4903 = getelementptr i8, ptr %.018.i.i265.lcssa, i64 %i.eae ; 2 uses
  %next.gep4904 = getelementptr i8, ptr %.021.i.i264.lcssa, i64 %i.eae ; 2 uses
  %i.eaf = getelementptr i8, ptr %next.gep4903, i64 16
  %wide.load4905 = load <4 x i32>, ptr %next.gep4903, align 1
  %wide.load4906 = load <4 x i32>, ptr %i.eaf, align 1
  %i.eag = getelementptr i8, ptr %next.gep4904, i64 16
  store <4 x i32> %wide.load4905, ptr %next.gep4904, align 1
  store <4 x i32> %wide.load4906, ptr %i.eag, align 1
  %index.next4907 = add nuw i64 %index4902, 8     ; 2 uses
  %i.eah = icmp eq i64 %index.next4907, %n.vec4900
  br i1 %i.eah, label %middle.block4908, label %vector.body4901, !llvm.loop !429

middle.block4908:                                 ; preds = %vector.body4901
  %cmp.n4909 = icmp eq i64 %i.dzx, %n.vec4900
  br i1 %cmp.n4909, label %.preheader1017, label %.lr.ph2169.preheader5165

.lr.ph2169.preheader5165:                         ; preds = %.lr.ph2169.preheader, %middle.block4908
  %.1.i.i2682168.ph = phi i64 [ %.0.i478.i.lcssa, %.lr.ph2169.preheader ], [ %i.eaa, %middle.block4908 ]
  %.119.i.i2672167.ph = phi ptr [ %.018.i.i265.lcssa, %.lr.ph2169.preheader ], [ %i.eac, %middle.block4908 ]
  %.122.i.i2662166.ph = phi ptr [ %.021.i.i264.lcssa, %.lr.ph2169.preheader ], [ %i.ead, %middle.block4908 ]
  br label %.lr.ph2169

.lr.ph2162:                                       ; preds = %bb.sf, %.lr.ph2162
  %.0.i478.i2160 = phi i64 [ %i.eak, %.lr.ph2162 ], [ %i.cyd, %bb.sf ]
  %.018.i.i2652159 = phi ptr [ %i.eaj, %.lr.ph2162 ], [ %i.cyf, %bb.sf ] ; 2 uses
  %.021.i.i2642158 = phi ptr [ %i.eai, %.lr.ph2162 ], [ %i.dzs, %bb.sf ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.021.i.i2642158, ptr noundef nonnull align 1 dereferenceable(16) %.018.i.i2652159, i64 16, i1 false)
  %i.eai = getelementptr inbounds nuw i8, ptr %.021.i.i2642158, i64 16 ; 2 uses
  %i.eaj = getelementptr inbounds nuw i8, ptr %.018.i.i2652159, i64 16 ; 2 uses
  %i.eak = add nsw i64 %.0.i478.i2160, -16        ; 3 uses
  %i.eal = icmp ugt i64 %i.eak, 15
  br i1 %i.eal, label %.lr.ph2162, label %.preheader1018, !llvm.loop !26

.preheader1017:                                   ; preds = %.lr.ph2169, %middle.block4908, %.preheader1018
  %.122.i.i266.lcssa = phi ptr [ %.021.i.i264.lcssa, %.preheader1018 ], [ %i.ead, %middle.block4908 ], [ %i.ebf, %.lr.ph2169 ] ; 7 uses
  %.119.i.i267.lcssa = phi ptr [ %.018.i.i265.lcssa, %.preheader1018 ], [ %i.eac, %middle.block4908 ], [ %i.ebg, %.lr.ph2169 ] ; 6 uses
  %.1.i.i268.lcssa = phi i64 [ %.0.i478.i.lcssa, %.preheader1018 ], [ %i.eaa, %middle.block4908 ], [ %i.ebh, %.lr.ph2169 ] ; 11 uses
  %.not.i.i2722173 = icmp eq i64 %.1.i.i268.lcssa, 0
  br i1 %.not.i.i2722173, label %write_str.exit581.i, label %iter.check4876

iter.check4876:                                   ; preds = %.preheader1017
  %.119.i.i267.lcssa4855 = ptrtoaddr ptr %.119.i.i267.lcssa to i64
  %.122.i.i266.lcssa4854 = ptrtoaddr ptr %.122.i.i266.lcssa to i64
  %min.iters.check4858 = icmp ult i64 %.1.i.i268.lcssa, 4
  %i.eam = sub i64 %.119.i.i267.lcssa4855, %.122.i.i266.lcssa4854
  %diff.check4856 = icmp ugt i64 %i.eam, -32
  %or.cond4978 = select i1 %min.iters.check4858, i1 true, i1 %diff.check4856
  br i1 %or.cond4978, label %.lr.ph2177.preheader, label %vector.main.loop.iter.check4859

vector.main.loop.iter.check4859:                  ; preds = %iter.check4876
  %min.iters.check4860 = icmp ult i64 %.1.i.i268.lcssa, 32
  br i1 %min.iters.check4860, label %vec.epilog.ph4880, label %vector.ph4861

vector.ph4861:                                    ; preds = %vector.main.loop.iter.check4859
  %i.ean = and i64 %.1.i.i268.lcssa, 28
  %n.vec4862 = and i64 %.1.i.i268.lcssa, -32      ; 5 uses
  %i.eao = and i64 %.1.i.i268.lcssa, 31
  %i.eap = getelementptr i8, ptr %.119.i.i267.lcssa, i64 %n.vec4862
  %i.eaq = getelementptr i8, ptr %.122.i.i266.lcssa, i64 %n.vec4862 ; 2 uses
  br label %vector.body4863

vector.body4863:                                  ; preds = %vector.ph4861, %vector.body4863
  %index4864 = phi i64 [ 0, %vector.ph4861 ], [ %index.next4869, %vector.body4863 ] ; 3 uses
  %next.gep4865 = getelementptr i8, ptr %.119.i.i267.lcssa, i64 %index4864 ; 2 uses
  %next.gep4866 = getelementptr i8, ptr %.122.i.i266.lcssa, i64 %index4864 ; 2 uses
  %i.ear = getelementptr i8, ptr %next.gep4865, i64 16
  %wide.load4867 = load <16 x i8>, ptr %next.gep4865, align 1, !tbaa !100
  %wide.load4868 = load <16 x i8>, ptr %i.ear, align 1, !tbaa !100
  %i.eas = getelementptr i8, ptr %next.gep4866, i64 16
  store <16 x i8> %wide.load4867, ptr %next.gep4866, align 1, !tbaa !100
  store <16 x i8> %wide.load4868, ptr %i.eas, align 1, !tbaa !100
  %index.next4869 = add nuw i64 %index4864, 32    ; 2 uses
  %i.eat = icmp eq i64 %index.next4869, %n.vec4862
  br i1 %i.eat, label %middle.block4870, label %vector.body4863, !llvm.loop !430

middle.block4870:                                 ; preds = %vector.body4863
  %cmp.n4871 = icmp eq i64 %.1.i.i268.lcssa, %n.vec4862
  br i1 %cmp.n4871, label %write_str.exit581.i, label %vec.epilog.iter.check4878

vec.epilog.iter.check4878:                        ; preds = %middle.block4870
  %min.epilog.iters.check4879 = icmp eq i64 %i.ean, 0
  br i1 %min.epilog.iters.check4879, label %.lr.ph2177.preheader, label %vec.epilog.ph4880, !prof !152

vec.epilog.ph4880:                                ; preds = %vector.main.loop.iter.check4859, %vec.epilog.iter.check4878
  %vec.epilog.resume.val4872 = phi i64 [ %n.vec4862, %vec.epilog.iter.check4878 ], [ 0, %vector.main.loop.iter.check4859 ]
  %n.vec4881 = and i64 %.1.i.i268.lcssa, -4       ; 4 uses
  %i.eau = and i64 %.1.i.i268.lcssa, 3
  %i.eav = getelementptr i8, ptr %.119.i.i267.lcssa, i64 %n.vec4881
  %i.eaw = getelementptr i8, ptr %.122.i.i266.lcssa, i64 %n.vec4881 ; 2 uses
  br label %vec.epilog.vector.body4882

vec.epilog.vector.body4882:                       ; preds = %vec.epilog.vector.body4882, %vec.epilog.ph4880
  %index4883 = phi i64 [ %vec.epilog.resume.val4872, %vec.epilog.ph4880 ], [ %index.next4887, %vec.epilog.vector.body4882 ] ; 3 uses
  %next.gep4884 = getelementptr i8, ptr %.119.i.i267.lcssa, i64 %index4883
  %next.gep4885 = getelementptr i8, ptr %.122.i.i266.lcssa, i64 %index4883
  %wide.load4886 = load <4 x i8>, ptr %next.gep4884, align 1, !tbaa !100
  store <4 x i8> %wide.load4886, ptr %next.gep4885, align 1, !tbaa !100
  %index.next4887 = add nuw i64 %index4883, 4     ; 2 uses
  %i.eax = icmp eq i64 %index.next4887, %n.vec4881
  br i1 %i.eax, label %vec.epilog.middle.block4888, label %vec.epilog.vector.body4882, !llvm.loop !431

vec.epilog.middle.block4888:                      ; preds = %vec.epilog.vector.body4882
  %cmp.n4889 = icmp eq i64 %.1.i.i268.lcssa, %n.vec4881
  br i1 %cmp.n4889, label %write_str.exit581.i, label %.lr.ph2177.preheader

.lr.ph2177.preheader:                             ; preds = %iter.check4876, %vec.epilog.iter.check4878, %vec.epilog.middle.block4888
  %.2.i.i2712176.ph = phi i64 [ %.1.i.i268.lcssa, %iter.check4876 ], [ %i.eao, %vec.epilog.iter.check4878 ], [ %i.eau, %vec.epilog.middle.block4888 ] ; 4 uses
  %.220.i.i2702175.ph = phi ptr [ %.119.i.i267.lcssa, %iter.check4876 ], [ %i.eap, %vec.epilog.iter.check4878 ], [ %i.eav, %vec.epilog.middle.block4888 ] ; 2 uses
  %.223.i.i2692174.ph = phi ptr [ %.122.i.i266.lcssa, %iter.check4876 ], [ %i.eaq, %vec.epilog.iter.check4878 ], [ %i.eaw, %vec.epilog.middle.block4888 ] ; 2 uses
  %i.eay = add nsw i64 %.2.i.i2712176.ph, -1
  %xtraiter5652 = and i64 %.2.i.i2712176.ph, 7    ; 2 uses
  %lcmp.mod5653.not = icmp eq i64 %xtraiter5652, 0
  br i1 %lcmp.mod5653.not, label %.lr.ph2177.prol.loopexit, label %.lr.ph2177.prol

.lr.ph2177.prol:                                  ; preds = %.lr.ph2177.preheader, %.lr.ph2177.prol
  %.2.i.i2712176.prol = phi i64 [ %i.ebc, %.lr.ph2177.prol ], [ %.2.i.i2712176.ph, %.lr.ph2177.preheader ]
  %.220.i.i2702175.prol = phi ptr [ %i.eaz, %.lr.ph2177.prol ], [ %.220.i.i2702175.ph, %.lr.ph2177.preheader ] ; 2 uses
  %.223.i.i2692174.prol = phi ptr [ %i.ebb, %.lr.ph2177.prol ], [ %.223.i.i2692174.ph, %.lr.ph2177.preheader ] ; 2 uses
  %prol.iter5654 = phi i64 [ %prol.iter5654.next, %.lr.ph2177.prol ], [ 0, %.lr.ph2177.preheader ]
  %i.eaz = getelementptr inbounds nuw i8, ptr %.220.i.i2702175.prol, i64 1 ; 2 uses
  %i.eba = load i8, ptr %.220.i.i2702175.prol, align 1, !tbaa !100
  %i.ebb = getelementptr inbounds nuw i8, ptr %.223.i.i2692174.prol, i64 1 ; 3 uses
  store i8 %i.eba, ptr %.223.i.i2692174.prol, align 1, !tbaa !100
  %i.ebc = add nsw i64 %.2.i.i2712176.prol, -1    ; 2 uses
  %prol.iter5654.next = add i64 %prol.iter5654, 1 ; 2 uses
  %prol.iter5654.cmp.not = icmp eq i64 %prol.iter5654.next, %xtraiter5652
  br i1 %prol.iter5654.cmp.not, label %.lr.ph2177.prol.loopexit, label %.lr.ph2177.prol, !llvm.loop !432

.lr.ph2177.prol.loopexit:                         ; preds = %.lr.ph2177.prol, %.lr.ph2177.preheader
  %.lcssa5249.unr = phi ptr [ poison, %.lr.ph2177.preheader ], [ %i.ebb, %.lr.ph2177.prol ]
  %.2.i.i2712176.unr = phi i64 [ %.2.i.i2712176.ph, %.lr.ph2177.preheader ], [ %i.ebc, %.lr.ph2177.prol ]
  %.220.i.i2702175.unr = phi ptr [ %.220.i.i2702175.ph, %.lr.ph2177.preheader ], [ %i.eaz, %.lr.ph2177.prol ]
  %.223.i.i2692174.unr = phi ptr [ %.223.i.i2692174.ph, %.lr.ph2177.preheader ], [ %i.ebb, %.lr.ph2177.prol ]
  %i.ebd = icmp ult i64 %i.eay, 7
  br i1 %i.ebd, label %write_str.exit581.i, label %.lr.ph2177

.lr.ph2169:                                       ; preds = %.lr.ph2169.preheader5165, %.lr.ph2169
  %.1.i.i2682168 = phi i64 [ %i.ebh, %.lr.ph2169 ], [ %.1.i.i2682168.ph, %.lr.ph2169.preheader5165 ]
  %.119.i.i2672167 = phi ptr [ %i.ebg, %.lr.ph2169 ], [ %.119.i.i2672167.ph, %.lr.ph2169.preheader5165 ] ; 2 uses
  %.122.i.i2662166 = phi ptr [ %i.ebf, %.lr.ph2169 ], [ %.122.i.i2662166.ph, %.lr.ph2169.preheader5165 ] ; 2 uses
  %i.ebe = load i32, ptr %.119.i.i2672167, align 1
  store i32 %i.ebe, ptr %.122.i.i2662166, align 1
  %i.ebf = getelementptr inbounds nuw i8, ptr %.122.i.i2662166, i64 4 ; 2 uses
  %i.ebg = getelementptr inbounds nuw i8, ptr %.119.i.i2672167, i64 4 ; 2 uses
  %i.ebh = add nsw i64 %.1.i.i2682168, -4         ; 3 uses
  %i.ebi = icmp ugt i64 %i.ebh, 3
  br i1 %i.ebi, label %.lr.ph2169, label %.preheader1017, !llvm.loop !433

.lr.ph2177:                                       ; preds = %.lr.ph2177.prol.loopexit, %.lr.ph2177
  %.2.i.i2712176 = phi i64 [ %i.ech, %.lr.ph2177 ], [ %.2.i.i2712176.unr, %.lr.ph2177.prol.loopexit ]
  %.220.i.i2702175 = phi ptr [ %i.ece, %.lr.ph2177 ], [ %.220.i.i2702175.unr, %.lr.ph2177.prol.loopexit ] ; 9 uses
  %.223.i.i2692174 = phi ptr [ %i.ecg, %.lr.ph2177 ], [ %.223.i.i2692174.unr, %.lr.ph2177.prol.loopexit ] ; 9 uses
  %i.ebj = getelementptr inbounds nuw i8, ptr %.220.i.i2702175, i64 1
  %i.ebk = load i8, ptr %.220.i.i2702175, align 1, !tbaa !100
  %i.ebl = getelementptr inbounds nuw i8, ptr %.223.i.i2692174, i64 1
  store i8 %i.ebk, ptr %.223.i.i2692174, align 1, !tbaa !100
  %i.ebm = getelementptr inbounds nuw i8, ptr %.220.i.i2702175, i64 2
  %i.ebn = load i8, ptr %i.ebj, align 1, !tbaa !100
  %i.ebo = getelementptr inbounds nuw i8, ptr %.223.i.i2692174, i64 2
  store i8 %i.ebn, ptr %i.ebl, align 1, !tbaa !100
  %i.ebp = getelementptr inbounds nuw i8, ptr %.220.i.i2702175, i64 3
  %i.ebq = load i8, ptr %i.ebm, align 1, !tbaa !100
  %i.ebr = getelementptr inbounds nuw i8, ptr %.223.i.i2692174, i64 3
  store i8 %i.ebq, ptr %i.ebo, align 1, !tbaa !100
  %i.ebs = getelementptr inbounds nuw i8, ptr %.220.i.i2702175, i64 4
  %i.ebt = load i8, ptr %i.ebp, align 1, !tbaa !100
  %i.ebu = getelementptr inbounds nuw i8, ptr %.223.i.i2692174, i64 4
  store i8 %i.ebt, ptr %i.ebr, align 1, !tbaa !100
  %i.ebv = getelementptr inbounds nuw i8, ptr %.220.i.i2702175, i64 5
  %i.ebw = load i8, ptr %i.ebs, align 1, !tbaa !100
  %i.ebx = getelementptr inbounds nuw i8, ptr %.223.i.i2692174, i64 5
  store i8 %i.ebw, ptr %i.ebu, align 1, !tbaa !100
  %i.eby = getelementptr inbounds nuw i8, ptr %.220.i.i2702175, i64 6
  %i.ebz = load i8, ptr %i.ebv, align 1, !tbaa !100
  %i.eca = getelementptr inbounds nuw i8, ptr %.223.i.i2692174, i64 6
  store i8 %i.ebz, ptr %i.ebx, align 1, !tbaa !100
  %i.ecb = getelementptr inbounds nuw i8, ptr %.220.i.i2702175, i64 7
  %i.ecc = load i8, ptr %i.eby, align 1, !tbaa !100
  %i.ecd = getelementptr inbounds nuw i8, ptr %.223.i.i2692174, i64 7
  store i8 %i.ecc, ptr %i.eca, align 1, !tbaa !100
  %i.ece = getelementptr inbounds nuw i8, ptr %.220.i.i2702175, i64 8
  %i.ecf = load i8, ptr %i.ecb, align 1, !tbaa !100
  %i.ecg = getelementptr inbounds nuw i8, ptr %.223.i.i2692174, i64 8 ; 2 uses
  store i8 %i.ecf, ptr %i.ecd, align 1, !tbaa !100
  %i.ech = add nsw i64 %.2.i.i2712176, -8         ; 2 uses
  %.not.i.i272.7 = icmp eq i64 %i.ech, 0
  br i1 %.not.i.i272.7, label %write_str.exit581.i, label %.lr.ph2177, !llvm.loop !434

write_str.exit581.i:                              ; preds = %.preheader1004, %.lr.ph2177.prol.loopexit, %.lr.ph2177, %.preheader990, %bb.om, %.lr.ph2154.prol.loopexit, %bb.oz, %bb.pb, %bb.qu, %.lr.ph2205.prol.loopexit, %bb.rh, %bb.rj, %middle.block4870, %vec.epilog.middle.block4888, %.preheader1017
  %.8253.i496.i.lcssa.sink4192 = phi ptr [ %.8253.i496.i, %bb.oz ], [ %.122.i.i266.lcssa, %.preheader1017 ], [ %i.eaw, %vec.epilog.middle.block4888 ], [ %.lcssa5319.unr, %.lr.ph2205.prol.loopexit ], [ %i.ecg, %.lr.ph2177 ], [ %i.eaq, %middle.block4870 ], [ %.lcssa5236.unr, %.lr.ph2154.prol.loopexit ], [ %.2247.i.i279.lcssa, %.preheader990 ], [ %.8253.i.i287, %bb.rh ], [ %.8253.i.i287, %bb.rj ], [ %i.dsh, %bb.qu ], [ %.8253.i496.i, %bb.pb ], [ %i.dey, %bb.om ], [ %.lcssa5249.unr, %.lr.ph2177.prol.loopexit ], [ %.2247.i488.i.lcssa, %.preheader1004 ] ; 3 uses
  %i.eci = getelementptr inbounds nuw i8, ptr %.8253.i496.i.lcssa.sink4192, i64 1
  store i8 34, ptr %.8253.i496.i.lcssa.sink4192, align 1, !tbaa !100
  %i.ecj = select i1 %.not446.i, i8 44, i8 58
  %i.eck = getelementptr inbounds nuw i8, ptr %.8253.i496.i.lcssa.sink4192, i64 2
  store i8 %i.ecj, ptr %i.eci, align 1, !tbaa !100
  br label %bb.tz

bb.sg:                                            ; preds = %bb.nm
  %i.ecl = getelementptr inbounds nuw i8, ptr %.0390.i, i64 40
  %.not442.i = icmp ult ptr %i.ecl, %.0368.i
  br i1 %.not442.i, label %bb.si, label %bb.sh, !prof !62

bb.sh:                                            ; preds = %bb.sg
  %i.ecm = lshr i64 %.0361.i, 1
  %i.ecn = tail call i64 @llvm.umax.i64(i64 %i.ecm, i64 40)
  %i.eco = add nuw i64 %i.ecn, 15
  %i.ecp = and i64 %i.eco, -16
  %i.ecq = add i64 %i.ecp, %.0361.i               ; 4 uses
  %i.ecr = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0405.i, i64 noundef %.0361.i, i64 noundef %i.ecq) #33, !inline_history !426 ; 6 uses
  %.not443.i = icmp eq ptr %i.ecr, null
  br i1 %.not443.i, label %.loopexit1019, label %.thread890, !prof !45

.thread890:                                       ; preds = %bb.sh
  %i.ecs = ptrtoint ptr %.0376.i to i64
  %i.ect = ptrtoint ptr %.0368.i to i64           ; 2 uses
  %i.ecu = sub i64 %i.ecs, %i.ect                 ; 2 uses
  %i.ecv = ptrtoint ptr %.0390.i to i64
  %i.ecw = ptrtoint ptr %.0405.i to i64           ; 2 uses
  %i.ecx = sub i64 %i.ecv, %i.ecw
  %i.ecy = sub i64 %i.ect, %i.ecw
  %i.ecz = sub i64 %i.ecq, %i.ecu
  %i.eda = getelementptr inbounds nuw i8, ptr %i.ecr, i64 %i.ecz ; 2 uses
  %i.edb = getelementptr inbounds nuw i8, ptr %i.ecr, i64 %i.ecy
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.eda, ptr nonnull align 1 %i.edb, i64 %i.ecu, i1 false)
  %i.edc = getelementptr inbounds nuw i8, ptr %i.ecr, i64 %i.ecx
  %i.edd = getelementptr inbounds nuw i8, ptr %i.ecr, i64 %i.ecq
  %.pre2830 = load i64, ptr %.0423.i, align 8, !tbaa !99
  br label %bb.si

bb.si:                                            ; preds = %.thread890, %bb.sg
  %i.ede = phi i64 [ %.pre2830, %.thread890 ], [ %i.cxx, %bb.sg ] ; 3 uses
  %.4409.i = phi ptr [ %i.ecr, %.thread890 ], [ %.0405.i, %bb.sg ] ; 2 uses
  %.5395.i = phi ptr [ %i.edc, %.thread890 ], [ %.0390.i, %bb.sg ] ; 6 uses
  %.4380.i = phi ptr [ %i.edd, %.thread890 ], [ %.0376.i, %bb.sg ]
  %.4372.i = phi ptr [ %i.eda, %.thread890 ], [ %.0368.i, %bb.sg ]
  %.2363.i = phi i64 [ %i.ecq, %.thread890 ], [ %.0361.i, %bb.sg ]
  %i.edf = and i64 %i.ede, 16
  %.not.i582.i = icmp eq i64 %i.edf, 0
  %i.edg = getelementptr inbounds nuw i8, ptr %.0423.i, i64 8
  %i.edh = load i64, ptr %i.edg, align 8, !tbaa !100 ; 7 uses
  br i1 %.not.i582.i, label %bb.sj, label %bb.tc

bb.sj:                                            ; preds = %bb.si
  %i.edi = sub i64 0, %i.edh
  %i.edj = lshr i64 %i.ede, 3
  %.lobit.i.i214 = lshr i64 %i.edh, 63
  %i.edk = and i64 %.lobit.i.i214, %i.edj         ; 2 uses
  store i8 45, ptr %.5395.i, align 1, !tbaa !100
  %.not37.i.i215 = icmp eq i64 %i.edk, 0
  %i.edl = select i1 %.not37.i.i215, i64 %i.edh, i64 %i.edi ; 26 uses
  %i.edm = getelementptr inbounds nuw i8, ptr %.5395.i, i64 %i.edk ; 20 uses
  %i.edn = icmp ult i64 %i.edl, 100000000
  br i1 %i.edn, label %bb.sk, label %bb.sr

bb.sk:                                            ; preds = %bb.sj
  %i.edo = trunc nuw nsw i64 %i.edl to i32        ; 4 uses
  %i.edp = icmp samesign ult i64 %i.edl, 100
  br i1 %i.edp, label %bb.sl, label %bb.sm

bb.sl:                                            ; preds = %bb.sk
  %i.edq = icmp samesign ult i64 %i.edl, 10       ; 2 uses
  %i.edr = shl nuw nsw i64 %i.edl, 1
end_hunk_5
