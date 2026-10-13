Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/string_view_compat_test?download=true
inline.NumInlined: 969
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6insertIPKcEEPcS7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE:bb.a
  %.0711.i.pn.ph = phi ptr [ %i.av, %iter.check337 ], [ %i.az, %vec.epilog.iter.check339 ], [ %i.bg, %vec.epilog.middle.block349 ]
  %.0810.i.pn.ph = phi ptr [ %i.ax, %iter.check337 ], [ %i.ba, %vec.epilog.iter.check339 ], [ %i.bh, %vec.epilog.middle.block349 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0711.i.pn = phi ptr [ %.0711.i, %.lr.ph.i ], [ %.0711.i.pn.ph, %.lr.ph.i.preheader ]
  %.0810.i.pn = phi ptr [ %.0810.i, %.lr.ph.i ], [ %.0810.i.pn.ph, %.lr.ph.i.preheader ]
  %.0711.i = getelementptr i8, ptr %.0711.i.pn, i64 1 ; 2 uses
  %.0810.i = getelementptr i8, ptr %.0810.i.pn, i64 1 ; 3 uses
  %i.bl = load i8, ptr %.0810.i, align 1, !tbaa !43
  store i8 %i.bl, ptr %.0711.i, align 1, !tbaa !43
  %.not.i = icmp eq ptr %.0810.i, %i.av
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !81

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit: ; preds = %.lr.ph.i, %vec.epilog.middle.block349, %middle.block333
  %i.bm = sub nuw i64 %i.au, %i.k
  %i.bn = add i64 %i.bm, 1                        ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyEPKcS6_Pc.exit134, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit
  %i.bp = getelementptr inbounds i8, ptr %1, i64 %i.k
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bn, i1 false)
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyEPKcS6_Pc.exit134

bb.k:                                             ; preds = %bb.i
  %i.bq = add nuw i64 %i.au, 1                    ; 6 uses
  %i.br = getelementptr i8, ptr %2, i64 %i.bq     ; 6 uses
  %i.bs = getelementptr i8, ptr %i.w, i64 %i.p    ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 1      ; 6 uses
  %.not9.i119 = icmp eq ptr %i.br, %3
  br i1 %.not9.i119, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit, label %iter.check371

iter.check371:                                    ; preds = %bb.k
  %i.bu = add i64 %i.h, %i.i
  %i.bv = xor i64 %i.p, -1
  %i.bw = add i64 %i.bu, %i.bv
  %i.bx = add i64 %i.at, %i.j
  %i.by = sub i64 %i.bw, %i.bx                    ; 7 uses
  %min.iters.check355 = icmp ult i64 %i.by, 8
  %i.bz = sub i64 %i.j, %i.h
  %diff.check354 = icmp ugt i64 %i.bz, -32
  %or.cond = or i1 %min.iters.check355, %diff.check354
  br i1 %or.cond, label %.lr.ph.i120.preheader, label %vector.main.loop.iter.check356

vector.main.loop.iter.check356:                   ; preds = %iter.check371
  %min.iters.check357 = icmp ult i64 %i.by, 32
  br i1 %min.iters.check357, label %vec.epilog.ph375, label %vector.ph358

vector.ph358:                                     ; preds = %vector.main.loop.iter.check356
  %i.ca = and i64 %i.by, 24
  %n.vec359 = and i64 %i.by, -32                  ; 5 uses
  %i.cb = getelementptr i8, ptr %i.bt, i64 %n.vec359
  %i.cc = getelementptr i8, ptr %i.br, i64 %n.vec359
  br label %vector.body360

vector.body360:                                   ; preds = %vector.ph358, %vector.body360
  %index361 = phi i64 [ 0, %vector.ph358 ], [ %index.next366, %vector.body360 ] ; 3 uses
  %next.gep362 = getelementptr i8, ptr %i.bt, i64 %index361 ; 2 uses
  %next.gep363 = getelementptr i8, ptr %i.br, i64 %index361 ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep363, i64 16
  %wide.load364 = load <16 x i8>, ptr %next.gep363, align 1, !tbaa !43
  %wide.load365 = load <16 x i8>, ptr %i.cd, align 1, !tbaa !43
  %i.ce = getelementptr i8, ptr %next.gep362, i64 16
  store <16 x i8> %wide.load364, ptr %next.gep362, align 1, !tbaa !43
  store <16 x i8> %wide.load365, ptr %i.ce, align 1, !tbaa !43
  %index.next366 = add nuw i64 %index361, 32      ; 2 uses
  %i.cf = icmp eq i64 %index.next366, %n.vec359
  br i1 %i.cf, label %middle.block367, label %vector.body360, !llvm.loop !82

middle.block367:                                  ; preds = %vector.body360
  %cmp.n368 = icmp eq i64 %i.by, %n.vec359
  br i1 %cmp.n368, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit, label %vec.epilog.iter.check373

vec.epilog.iter.check373:                         ; preds = %middle.block367
  %min.epilog.iters.check374 = icmp eq i64 %i.ca, 0
  br i1 %min.epilog.iters.check374, label %.lr.ph.i120.preheader, label %vec.epilog.ph375, !prof !52

vec.epilog.ph375:                                 ; preds = %vector.main.loop.iter.check356, %vec.epilog.iter.check373
  %vec.epilog.resume.val369 = phi i64 [ %n.vec359, %vec.epilog.iter.check373 ], [ 0, %vector.main.loop.iter.check356 ]
  %n.vec376 = and i64 %i.by, -8                   ; 4 uses
  %i.cg = getelementptr i8, ptr %i.bt, i64 %n.vec376
  %i.ch = getelementptr i8, ptr %i.br, i64 %n.vec376
  br label %vec.epilog.vector.body377

vec.epilog.vector.body377:                        ; preds = %vec.epilog.vector.body377, %vec.epilog.ph375
  %index378 = phi i64 [ %vec.epilog.resume.val369, %vec.epilog.ph375 ], [ %index.next382, %vec.epilog.vector.body377 ] ; 3 uses
  %next.gep379 = getelementptr i8, ptr %i.bt, i64 %index378
  %next.gep380 = getelementptr i8, ptr %i.br, i64 %index378
  %wide.load381 = load <8 x i8>, ptr %next.gep380, align 1, !tbaa !43
  store <8 x i8> %wide.load381, ptr %next.gep379, align 1, !tbaa !43
  %index.next382 = add nuw i64 %index378, 8       ; 2 uses
  %i.ci = icmp eq i64 %index.next382, %n.vec376
  br i1 %i.ci, label %vec.epilog.middle.block383, label %vec.epilog.vector.body377, !llvm.loop !83

vec.epilog.middle.block383:                       ; preds = %vec.epilog.vector.body377
  %cmp.n384 = icmp eq i64 %i.by, %n.vec376
  br i1 %cmp.n384, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit, label %.lr.ph.i120.preheader

.lr.ph.i120.preheader:                            ; preds = %iter.check371, %vec.epilog.iter.check373, %vec.epilog.middle.block383
  %.0711.i121.ph = phi ptr [ %i.bt, %iter.check371 ], [ %i.cb, %vec.epilog.iter.check373 ], [ %i.cg, %vec.epilog.middle.block383 ] ; 2 uses
  %.0810.i122.ph = phi ptr [ %i.br, %iter.check371 ], [ %i.cc, %vec.epilog.iter.check373 ], [ %i.ch, %vec.epilog.middle.block383 ] ; 3 uses
  %.0810.i122.ph435 = ptrtoaddr ptr %.0810.i122.ph to i64 ; 2 uses
  %i.cj = sub i64 %i.i, %.0810.i122.ph435
  %xtraiter436 = and i64 %i.cj, 7                 ; 2 uses
  %lcmp.mod437.not = icmp eq i64 %xtraiter436, 0
  br i1 %lcmp.mod437.not, label %.lr.ph.i120.prol.loopexit, label %.lr.ph.i120.prol

.lr.ph.i120.prol:                                 ; preds = %.lr.ph.i120.preheader, %.lr.ph.i120.prol
  %.0711.i121.prol = phi ptr [ %i.cl, %.lr.ph.i120.prol ], [ %.0711.i121.ph, %.lr.ph.i120.preheader ] ; 2 uses
  %.0810.i122.prol = phi ptr [ %i.cm, %.lr.ph.i120.prol ], [ %.0810.i122.ph, %.lr.ph.i120.preheader ] ; 2 uses
  %prol.iter438 = phi i64 [ %prol.iter438.next, %.lr.ph.i120.prol ], [ 0, %.lr.ph.i120.preheader ]
  %i.ck = load i8, ptr %.0810.i122.prol, align 1, !tbaa !43
  store i8 %i.ck, ptr %.0711.i121.prol, align 1, !tbaa !43
  %i.cl = getelementptr inbounds nuw i8, ptr %.0711.i121.prol, i64 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0810.i122.prol, i64 1 ; 2 uses
  %prol.iter438.next = add i64 %prol.iter438, 1   ; 2 uses
  %prol.iter438.cmp.not = icmp eq i64 %prol.iter438.next, %xtraiter436
  br i1 %prol.iter438.cmp.not, label %.lr.ph.i120.prol.loopexit, label %.lr.ph.i120.prol, !llvm.loop !84

.lr.ph.i120.prol.loopexit:                        ; preds = %.lr.ph.i120.prol, %.lr.ph.i120.preheader
  %.0711.i121.unr = phi ptr [ %.0711.i121.ph, %.lr.ph.i120.preheader ], [ %i.cl, %.lr.ph.i120.prol ]
  %.0810.i122.unr = phi ptr [ %.0810.i122.ph, %.lr.ph.i120.preheader ], [ %i.cm, %.lr.ph.i120.prol ]
  %i.cn = sub i64 %.0810.i122.ph435, %i.i
  %i.co = icmp ugt i64 %i.cn, -8
  br i1 %i.co, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit, label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %.lr.ph.i120.prol.loopexit, %.lr.ph.i120
  %.0711.i121 = phi ptr [ %i.dl, %.lr.ph.i120 ], [ %.0711.i121.unr, %.lr.ph.i120.prol.loopexit ] ; 9 uses
  %.0810.i122 = phi ptr [ %i.dm, %.lr.ph.i120 ], [ %.0810.i122.unr, %.lr.ph.i120.prol.loopexit ] ; 9 uses
  %i.cp = load i8, ptr %.0810.i122, align 1, !tbaa !43
  store i8 %i.cp, ptr %.0711.i121, align 1, !tbaa !43
  %i.cq = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !43
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !43
  %i.ct = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 2
  %i.cu = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 2
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !43
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !43
  %i.cw = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 3
  %i.cx = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 3
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !43
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !43
  %i.cz = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 4
  %i.db = load i8, ptr %i.da, align 1, !tbaa !43
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !43
  %i.dc = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 5
  %i.dd = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 5
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !43
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !43
  %i.df = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 6
  %i.dg = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 6
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !43
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !43
  %i.di = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 7
  %i.dj = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 7
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !43
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !43
  %i.dl = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 8 ; 2 uses
  %.not.i123.7 = icmp eq ptr %i.dm, %3
  br i1 %.not.i123.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit, label %.lr.ph.i120, !llvm.loop !85

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit: ; preds = %.lr.ph.i120.prol.loopexit, %.lr.ph.i120, %middle.block367, %vec.epilog.middle.block383, %bb.k
  %i.dn = sub nuw i64 %i.k, %i.au
  %i.do = add i64 %i.dn, %i.p                     ; 3 uses
  %i.dp = load i8, ptr %0, align 8, !tbaa !43
  %i.dq = trunc i8 %i.dp to i1
  br i1 %i.dq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit
  %i.dr = trunc i64 %i.do to i8
  %i.ds = shl i8 %i.dr, 1
  %i.dt = or disjoint i8 %i.ds, 1
  store i8 %i.dt, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit
  %i.du = load i64, ptr %0, align 8
  %i.dv = shl i64 %i.do, 1
  %i.dw = and i64 %i.du, 1
  %i.dx = or disjoint i64 %i.dw, %i.dv
  store i64 %i.dx, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit: ; preds = %bb.l, %bb.m
  %.not9.i126 = icmp eq ptr %1, %i.bt
  br i1 %.not9.i126, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyEPKcS6_Pc.exit134, label %iter.check405

iter.check405:                                    ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit
  %i.dy = getelementptr inbounds i8, ptr %i.w, i64 %i.do ; 6 uses
  %i.dz = add i64 %i.p, %i.at
  %i.ea = add i64 %i.dz, 1
  %i.eb = sub i64 %i.ea, %i.h                     ; 7 uses
  %min.iters.check389 = icmp ult i64 %i.eb, 8
  br i1 %min.iters.check389, label %.lr.ph.i127.preheader, label %vector.memcheck387

vector.memcheck387:                               ; preds = %iter.check405
  %i.ec = add i64 %i.h, %i.at
  %i.ed = add i64 %i.ec, %i.i
  %i.ee = add i64 %i.at, %i.j
  %i.ef = add i64 %i.ee, %i.h
  %i.eg = sub i64 %i.ef, %i.ed
  %diff.check388 = icmp ugt i64 %i.eg, -32
  br i1 %diff.check388, label %.lr.ph.i127.preheader, label %vector.main.loop.iter.check390

vector.main.loop.iter.check390:                   ; preds = %vector.memcheck387
  %min.iters.check391 = icmp ult i64 %i.eb, 32
  br i1 %min.iters.check391, label %vec.epilog.ph409, label %vector.ph392

vector.ph392:                                     ; preds = %vector.main.loop.iter.check390
  %i.eh = and i64 %i.eb, 24
  %n.vec393 = and i64 %i.eb, -32                  ; 5 uses
  %i.ei = getelementptr i8, ptr %i.dy, i64 %n.vec393
  %i.ej = getelementptr i8, ptr %1, i64 %n.vec393
  br label %vector.body394

vector.body394:                                   ; preds = %vector.ph392, %vector.body394
  %index395 = phi i64 [ 0, %vector.ph392 ], [ %index.next400, %vector.body394 ] ; 3 uses
  %next.gep396 = getelementptr i8, ptr %i.dy, i64 %index395 ; 2 uses
  %next.gep397 = getelementptr i8, ptr %1, i64 %index395 ; 2 uses
  %i.ek = getelementptr i8, ptr %next.gep397, i64 16
  %wide.load398 = load <16 x i8>, ptr %next.gep397, align 1, !tbaa !43
  %wide.load399 = load <16 x i8>, ptr %i.ek, align 1, !tbaa !43
  %i.el = getelementptr i8, ptr %next.gep396, i64 16
  store <16 x i8> %wide.load398, ptr %next.gep396, align 1, !tbaa !43
  store <16 x i8> %wide.load399, ptr %i.el, align 1, !tbaa !43
  %index.next400 = add nuw i64 %index395, 32      ; 2 uses
  %i.em = icmp eq i64 %index.next400, %n.vec393
  br i1 %i.em, label %middle.block401, label %vector.body394, !llvm.loop !86

middle.block401:                                  ; preds = %vector.body394
  %cmp.n402 = icmp eq i64 %i.eb, %n.vec393
  br i1 %cmp.n402, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyEPKcS6_Pc.exit134, label %vec.epilog.iter.check407

vec.epilog.iter.check407:                         ; preds = %middle.block401
  %min.epilog.iters.check408 = icmp eq i64 %i.eh, 0
  br i1 %min.epilog.iters.check408, label %.lr.ph.i127.preheader, label %vec.epilog.ph409, !prof !52

vec.epilog.ph409:                                 ; preds = %vector.main.loop.iter.check390, %vec.epilog.iter.check407
  %vec.epilog.resume.val403 = phi i64 [ %n.vec393, %vec.epilog.iter.check407 ], [ 0, %vector.main.loop.iter.check390 ]
  %n.vec410 = and i64 %i.eb, -8                   ; 4 uses
  %i.en = getelementptr i8, ptr %i.dy, i64 %n.vec410
  %i.eo = getelementptr i8, ptr %1, i64 %n.vec410
  br label %vec.epilog.vector.body411

vec.epilog.vector.body411:                        ; preds = %vec.epilog.vector.body411, %vec.epilog.ph409
  %index412 = phi i64 [ %vec.epilog.resume.val403, %vec.epilog.ph409 ], [ %index.next416, %vec.epilog.vector.body411 ] ; 3 uses
  %next.gep413 = getelementptr i8, ptr %i.dy, i64 %index412
  %next.gep414 = getelementptr i8, ptr %1, i64 %index412
  %wide.load415 = load <8 x i8>, ptr %next.gep414, align 1, !tbaa !43
  store <8 x i8> %wide.load415, ptr %next.gep413, align 1, !tbaa !43
  %index.next416 = add nuw i64 %index412, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next416, %n.vec410
  br i1 %i.ep, label %vec.epilog.middle.block417, label %vec.epilog.vector.body411, !llvm.loop !87

vec.epilog.middle.block417:                       ; preds = %vec.epilog.vector.body411
  %cmp.n418 = icmp eq i64 %i.eb, %n.vec410
  br i1 %cmp.n418, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyEPKcS6_Pc.exit134, label %.lr.ph.i127.preheader

.lr.ph.i127.preheader:                            ; preds = %iter.check405, %vector.memcheck387, %vec.epilog.iter.check407, %vec.epilog.middle.block417
  %.0711.i128.ph = phi ptr [ %i.dy, %iter.check405 ], [ %i.dy, %vector.memcheck387 ], [ %i.ei, %vec.epilog.iter.check407 ], [ %i.en, %vec.epilog.middle.block417 ] ; 2 uses
  %.0810.i129.ph = phi ptr [ %1, %iter.check405 ], [ %1, %vector.memcheck387 ], [ %i.ej, %vec.epilog.iter.check407 ], [ %i.eo, %vec.epilog.middle.block417 ] ; 3 uses
  %i.eq = add i64 %i.p, %i.at                     ; 2 uses
  %i.er = add i64 %i.eq, 1
  %.0810.i129.ph439 = ptrtoaddr ptr %.0810.i129.ph to i64 ; 2 uses
  %i.es = sub i64 %i.er, %.0810.i129.ph439
  %i.et = sub i64 %i.eq, %.0810.i129.ph439
  %xtraiter440 = and i64 %i.es, 7                 ; 2 uses
  %lcmp.mod441.not = icmp eq i64 %xtraiter440, 0
  br i1 %lcmp.mod441.not, label %.lr.ph.i127.prol.loopexit, label %.lr.ph.i127.prol

.lr.ph.i127.prol:                                 ; preds = %.lr.ph.i127.preheader, %.lr.ph.i127.prol
  %.0711.i128.prol = phi ptr [ %i.ev, %.lr.ph.i127.prol ], [ %.0711.i128.ph, %.lr.ph.i127.preheader ] ; 2 uses
  %.0810.i129.prol = phi ptr [ %i.ew, %.lr.ph.i127.prol ], [ %.0810.i129.ph, %.lr.ph.i127.preheader ] ; 2 uses
  %prol.iter442 = phi i64 [ %prol.iter442.next, %.lr.ph.i127.prol ], [ 0, %.lr.ph.i127.preheader ]
  %i.eu = load i8, ptr %.0810.i129.prol, align 1, !tbaa !43
  store i8 %i.eu, ptr %.0711.i128.prol, align 1, !tbaa !43
  %i.ev = getelementptr inbounds nuw i8, ptr %.0711.i128.prol, i64 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.0810.i129.prol, i64 1 ; 2 uses
  %prol.iter442.next = add i64 %prol.iter442, 1   ; 2 uses
  %prol.iter442.cmp.not = icmp eq i64 %prol.iter442.next, %xtraiter440
  br i1 %prol.iter442.cmp.not, label %.lr.ph.i127.prol.loopexit, label %.lr.ph.i127.prol, !llvm.loop !88

.lr.ph.i127.prol.loopexit:                        ; preds = %.lr.ph.i127.prol, %.lr.ph.i127.preheader
  %.0711.i128.unr = phi ptr [ %.0711.i128.ph, %.lr.ph.i127.preheader ], [ %i.ev, %.lr.ph.i127.prol ]
  %.0810.i129.unr = phi ptr [ %.0810.i129.ph, %.lr.ph.i127.preheader ], [ %i.ew, %.lr.ph.i127.prol ]
  %i.ex = icmp ult i64 %i.et, 7
  br i1 %i.ex, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyEPKcS6_Pc.exit134, label %.lr.ph.i127

.lr.ph.i127:                                      ; preds = %.lr.ph.i127.prol.loopexit, %.lr.ph.i127
  %.0711.i128 = phi ptr [ %i.fu, %.lr.ph.i127 ], [ %.0711.i128.unr, %.lr.ph.i127.prol.loopexit ] ; 9 uses
  %.0810.i129 = phi ptr [ %i.fv, %.lr.ph.i127 ], [ %.0810.i129.unr, %.lr.ph.i127.prol.loopexit ] ; 9 uses
  %i.ey = load i8, ptr %.0810.i129, align 1, !tbaa !43
  store i8 %i.ey, ptr %.0711.i128, align 1, !tbaa !43
  %i.ez = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 1
  %i.fa = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !43
  store i8 %i.fb, ptr %i.ez, align 1, !tbaa !43
  %i.fc = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 2
  %i.fd = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 2
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !43
  store i8 %i.fe, ptr %i.fc, align 1, !tbaa !43
  %i.ff = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 3
  %i.fg = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 3
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !43
  store i8 %i.fh, ptr %i.ff, align 1, !tbaa !43
  %i.fi = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 4
  %i.fj = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 4
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !43
  store i8 %i.fk, ptr %i.fi, align 1, !tbaa !43
  %i.fl = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 5
  %i.fm = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 5
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !43
  store i8 %i.fn, ptr %i.fl, align 1, !tbaa !43
  %i.fo = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 6
  %i.fp = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 6
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !43
  store i8 %i.fq, ptr %i.fo, align 1, !tbaa !43
  %i.fr = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 7
  %i.fs = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 7 ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !43
  store i8 %i.ft, ptr %i.fr, align 1, !tbaa !43
  %i.fu = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 8
  %.not.i130.7 = icmp eq ptr %i.fs, %i.bs
  br i1 %.not.i130.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyEPKcS6_Pc.exit134, label %.lr.ph.i127, !llvm.loop !89

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyEPKcS6_Pc.exit134: ; preds = %.lr.ph.i127.prol.loopexit, %.lr.ph.i127, %middle.block401, %vec.epilog.middle.block417, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit, %bb.j, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit
  %.sink = phi i64 [ %i.k, %bb.j ], [ %i.k, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit ], [ %i.bq, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit ], [ %i.bq, %middle.block401 ], [ %i.bq, %vec.epilog.middle.block417 ], [ %i.bq, %.lr.ph.i127 ], [ %i.bq, %.lr.ph.i127.prol.loopexit ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %.sink, i1 false)
  %.0108 = add i64 %i.p, %i.k                     ; 3 uses
  %i.fw = load i8, ptr %0, align 8, !tbaa !43
  %i.fx = trunc i8 %i.fw to i1
  br i1 %i.fx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyEPKcS6_Pc.exit134
  %i.fy = trunc i64 %.0108 to i8
  %i.fz = shl i8 %i.fy, 1
  %i.ga = or disjoint i8 %i.fz, 1
  store i8 %i.ga, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit135

bb.o:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyEPKcS6_Pc.exit134
  %i.gb = load i64, ptr %0, align 8
  %i.gc = shl i64 %.0108, 1
  %i.gd = and i64 %i.gb, 1
  %i.ge = or disjoint i64 %i.gd, %i.gc
  store i64 %i.ge, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit135

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit135: ; preds = %bb.n, %bb.o
  %i.gf = getelementptr inbounds i8, ptr %i.w, i64 %.0108
  store i8 0, ptr %i.gf, align 1, !tbaa !43
  %.pre179.pre = load i8, ptr %0, align 8, !tbaa !43
  %.pre180.pre = load ptr, ptr %i.f, align 8
  br label %bb.v

bb.p:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE12next_storageEmm.exit
  %i.gg = load ptr, ptr %i.b, align 8, !tbaa !57
  %.not117 = icmp eq ptr %i.gg, null
  br i1 %.not117, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.gh = ptrtoaddr ptr %i.w to i64               ; 5 uses
  %.not9.i136 = icmp eq ptr %i.w, %1
  br i1 %.not9.i136, label %iter.check271, label %iter.check237

iter.check237:                                    ; preds = %bb.q
  %i.gi = sub i64 %i.h, %i.gh                     ; 7 uses
  %min.iters.check221 = icmp ult i64 %i.gi, 8
  %i.gj = sub i64 %i.gh, %i.aq
  %diff.check220 = icmp ugt i64 %i.gj, -32
  %or.cond421 = or i1 %min.iters.check221, %diff.check220
  br i1 %or.cond421, label %.lr.ph.i137.preheader, label %vector.main.loop.iter.check222

vector.main.loop.iter.check222:                   ; preds = %iter.check237
  %min.iters.check223 = icmp ult i64 %i.gi, 32
  br i1 %min.iters.check223, label %vec.epilog.ph241, label %vector.ph224

vector.ph224:                                     ; preds = %vector.main.loop.iter.check222
  %i.gk = and i64 %i.gi, 24
  %n.vec225 = and i64 %i.gi, -32                  ; 5 uses
  %i.gl = getelementptr i8, ptr %i.ap, i64 %n.vec225
  %i.gm = getelementptr i8, ptr %i.w, i64 %n.vec225
  br label %vector.body226

vector.body226:                                   ; preds = %vector.ph224, %vector.body226
  %index227 = phi i64 [ 0, %vector.ph224 ], [ %index.next232, %vector.body226 ] ; 3 uses
  %next.gep228 = getelementptr i8, ptr %i.ap, i64 %index227 ; 2 uses
  %next.gep229 = getelementptr i8, ptr %i.w, i64 %index227 ; 2 uses
  %i.gn = getelementptr i8, ptr %next.gep229, i64 16
  %wide.load230 = load <16 x i8>, ptr %next.gep229, align 1, !tbaa !43
  %wide.load231 = load <16 x i8>, ptr %i.gn, align 1, !tbaa !43
  %i.go = getelementptr i8, ptr %next.gep228, i64 16
  store <16 x i8> %wide.load230, ptr %next.gep228, align 1, !tbaa !43
  store <16 x i8> %wide.load231, ptr %i.go, align 1, !tbaa !43
  %index.next232 = add nuw i64 %index227, 32      ; 2 uses
  %i.gp = icmp eq i64 %index.next232, %n.vec225
  br i1 %i.gp, label %middle.block233, label %vector.body226, !llvm.loop !90

middle.block233:                                  ; preds = %vector.body226
  %cmp.n234 = icmp eq i64 %i.gi, %n.vec225
end_hunk_0
