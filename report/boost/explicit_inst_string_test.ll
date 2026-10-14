Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_string_test?download=true
inline.NumInlined: 5601
inline.NumDeleted: 957
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6insertIPKcEEPcS7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE:bb.a
  %.0711.i.pn.ph = phi ptr [ %i.av, %iter.check337 ], [ %i.az, %vec.epilog.iter.check339 ], [ %i.bg, %vec.epilog.middle.block349 ]
  %.0810.i.pn.ph = phi ptr [ %i.ax, %iter.check337 ], [ %i.ba, %vec.epilog.iter.check339 ], [ %i.bh, %vec.epilog.middle.block349 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0711.i.pn = phi ptr [ %.0711.i, %.lr.ph.i ], [ %.0711.i.pn.ph, %.lr.ph.i.preheader ]
  %.0810.i.pn = phi ptr [ %.0810.i, %.lr.ph.i ], [ %.0810.i.pn.ph, %.lr.ph.i.preheader ]
  %.0711.i = getelementptr i8, ptr %.0711.i.pn, i64 1 ; 2 uses
  %.0810.i = getelementptr i8, ptr %.0810.i.pn, i64 1 ; 3 uses
  %i.bl = load i8, ptr %.0810.i, align 1, !tbaa !109
  store i8 %i.bl, ptr %.0711.i, align 1, !tbaa !109
  %.not.i = icmp eq ptr %.0810.i, %i.av
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !195

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
  %wide.load364 = load <16 x i8>, ptr %next.gep363, align 1, !tbaa !109
  %wide.load365 = load <16 x i8>, ptr %i.cd, align 1, !tbaa !109
  %i.ce = getelementptr i8, ptr %next.gep362, i64 16
  store <16 x i8> %wide.load364, ptr %next.gep362, align 1, !tbaa !109
  store <16 x i8> %wide.load365, ptr %i.ce, align 1, !tbaa !109
  %index.next366 = add nuw i64 %index361, 32      ; 2 uses
  %i.cf = icmp eq i64 %index.next366, %n.vec359
  br i1 %i.cf, label %middle.block367, label %vector.body360, !llvm.loop !196

middle.block367:                                  ; preds = %vector.body360
  %cmp.n368 = icmp eq i64 %i.by, %n.vec359
  br i1 %cmp.n368, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit, label %vec.epilog.iter.check373

vec.epilog.iter.check373:                         ; preds = %middle.block367
  %min.epilog.iters.check374 = icmp eq i64 %i.ca, 0
  br i1 %min.epilog.iters.check374, label %.lr.ph.i120.preheader, label %vec.epilog.ph375, !prof !126

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
  %wide.load381 = load <8 x i8>, ptr %next.gep380, align 1, !tbaa !109
  store <8 x i8> %wide.load381, ptr %next.gep379, align 1, !tbaa !109
  %index.next382 = add nuw i64 %index378, 8       ; 2 uses
  %i.ci = icmp eq i64 %index.next382, %n.vec376
  br i1 %i.ci, label %vec.epilog.middle.block383, label %vec.epilog.vector.body377, !llvm.loop !197

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
  %i.ck = load i8, ptr %.0810.i122.prol, align 1, !tbaa !109
  store i8 %i.ck, ptr %.0711.i121.prol, align 1, !tbaa !109
  %i.cl = getelementptr inbounds nuw i8, ptr %.0711.i121.prol, i64 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0810.i122.prol, i64 1 ; 2 uses
  %prol.iter438.next = add i64 %prol.iter438, 1   ; 2 uses
  %prol.iter438.cmp.not = icmp eq i64 %prol.iter438.next, %xtraiter436
  br i1 %prol.iter438.cmp.not, label %.lr.ph.i120.prol.loopexit, label %.lr.ph.i120.prol, !llvm.loop !198

.lr.ph.i120.prol.loopexit:                        ; preds = %.lr.ph.i120.prol, %.lr.ph.i120.preheader
  %.0711.i121.unr = phi ptr [ %.0711.i121.ph, %.lr.ph.i120.preheader ], [ %i.cl, %.lr.ph.i120.prol ]
  %.0810.i122.unr = phi ptr [ %.0810.i122.ph, %.lr.ph.i120.preheader ], [ %i.cm, %.lr.ph.i120.prol ]
  %i.cn = sub i64 %.0810.i122.ph435, %i.i
  %i.co = icmp ugt i64 %i.cn, -8
  br i1 %i.co, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit, label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %.lr.ph.i120.prol.loopexit, %.lr.ph.i120
  %.0711.i121 = phi ptr [ %i.dl, %.lr.ph.i120 ], [ %.0711.i121.unr, %.lr.ph.i120.prol.loopexit ] ; 9 uses
  %.0810.i122 = phi ptr [ %i.dm, %.lr.ph.i120 ], [ %.0810.i122.unr, %.lr.ph.i120.prol.loopexit ] ; 9 uses
  %i.cp = load i8, ptr %.0810.i122, align 1, !tbaa !109
  store i8 %i.cp, ptr %.0711.i121, align 1, !tbaa !109
  %i.cq = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !109
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !109
  %i.ct = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 2
  %i.cu = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 2
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !109
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !109
  %i.cw = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 3
  %i.cx = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 3
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !109
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !109
  %i.cz = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 4
  %i.db = load i8, ptr %i.da, align 1, !tbaa !109
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !109
  %i.dc = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 5
  %i.dd = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 5
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !109
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !109
  %i.df = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 6
  %i.dg = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 6
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !109
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !109
  %i.di = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 7
  %i.dj = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 7
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !109
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !109
  %i.dl = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 8 ; 2 uses
  %.not.i123.7 = icmp eq ptr %i.dm, %3
  br i1 %.not.i123.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit, label %.lr.ph.i120, !llvm.loop !199

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit: ; preds = %.lr.ph.i120.prol.loopexit, %.lr.ph.i120, %middle.block367, %vec.epilog.middle.block383, %bb.k
  %i.dn = sub nuw i64 %i.k, %i.au
  %i.do = add i64 %i.dn, %i.p                     ; 3 uses
  %i.dp = load i8, ptr %0, align 8, !tbaa !109
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
  %wide.load398 = load <16 x i8>, ptr %next.gep397, align 1, !tbaa !109
  %wide.load399 = load <16 x i8>, ptr %i.ek, align 1, !tbaa !109
  %i.el = getelementptr i8, ptr %next.gep396, i64 16
  store <16 x i8> %wide.load398, ptr %next.gep396, align 1, !tbaa !109
  store <16 x i8> %wide.load399, ptr %i.el, align 1, !tbaa !109
  %index.next400 = add nuw i64 %index395, 32      ; 2 uses
  %i.em = icmp eq i64 %index.next400, %n.vec393
  br i1 %i.em, label %middle.block401, label %vector.body394, !llvm.loop !200

middle.block401:                                  ; preds = %vector.body394
  %cmp.n402 = icmp eq i64 %i.eb, %n.vec393
  br i1 %cmp.n402, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyEPKcS6_Pc.exit134, label %vec.epilog.iter.check407

vec.epilog.iter.check407:                         ; preds = %middle.block401
  %min.epilog.iters.check408 = icmp eq i64 %i.eh, 0
  br i1 %min.epilog.iters.check408, label %.lr.ph.i127.preheader, label %vec.epilog.ph409, !prof !126

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
  %wide.load415 = load <8 x i8>, ptr %next.gep414, align 1, !tbaa !109
  store <8 x i8> %wide.load415, ptr %next.gep413, align 1, !tbaa !109
  %index.next416 = add nuw i64 %index412, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next416, %n.vec410
  br i1 %i.ep, label %vec.epilog.middle.block417, label %vec.epilog.vector.body411, !llvm.loop !201

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
  %i.eu = load i8, ptr %.0810.i129.prol, align 1, !tbaa !109
  store i8 %i.eu, ptr %.0711.i128.prol, align 1, !tbaa !109
  %i.ev = getelementptr inbounds nuw i8, ptr %.0711.i128.prol, i64 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.0810.i129.prol, i64 1 ; 2 uses
  %prol.iter442.next = add i64 %prol.iter442, 1   ; 2 uses
  %prol.iter442.cmp.not = icmp eq i64 %prol.iter442.next, %xtraiter440
  br i1 %prol.iter442.cmp.not, label %.lr.ph.i127.prol.loopexit, label %.lr.ph.i127.prol, !llvm.loop !202

.lr.ph.i127.prol.loopexit:                        ; preds = %.lr.ph.i127.prol, %.lr.ph.i127.preheader
  %.0711.i128.unr = phi ptr [ %.0711.i128.ph, %.lr.ph.i127.preheader ], [ %i.ev, %.lr.ph.i127.prol ]
  %.0810.i129.unr = phi ptr [ %.0810.i129.ph, %.lr.ph.i127.preheader ], [ %i.ew, %.lr.ph.i127.prol ]
  %i.ex = icmp ult i64 %i.et, 7
  br i1 %i.ex, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyEPKcS6_Pc.exit134, label %.lr.ph.i127

.lr.ph.i127:                                      ; preds = %.lr.ph.i127.prol.loopexit, %.lr.ph.i127
  %.0711.i128 = phi ptr [ %i.fu, %.lr.ph.i127 ], [ %.0711.i128.unr, %.lr.ph.i127.prol.loopexit ] ; 9 uses
  %.0810.i129 = phi ptr [ %i.fv, %.lr.ph.i127 ], [ %.0810.i129.unr, %.lr.ph.i127.prol.loopexit ] ; 9 uses
  %i.ey = load i8, ptr %.0810.i129, align 1, !tbaa !109
  store i8 %i.ey, ptr %.0711.i128, align 1, !tbaa !109
  %i.ez = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 1
  %i.fa = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !109
  store i8 %i.fb, ptr %i.ez, align 1, !tbaa !109
  %i.fc = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 2
  %i.fd = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 2
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !109
  store i8 %i.fe, ptr %i.fc, align 1, !tbaa !109
  %i.ff = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 3
  %i.fg = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 3
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !109
  store i8 %i.fh, ptr %i.ff, align 1, !tbaa !109
  %i.fi = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 4
  %i.fj = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 4
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !109
  store i8 %i.fk, ptr %i.fi, align 1, !tbaa !109
  %i.fl = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 5
  %i.fm = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 5
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !109
  store i8 %i.fn, ptr %i.fl, align 1, !tbaa !109
  %i.fo = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 6
  %i.fp = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 6
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !109
  store i8 %i.fq, ptr %i.fo, align 1, !tbaa !109
  %i.fr = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 7
  %i.fs = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 7 ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !109
  store i8 %i.ft, ptr %i.fr, align 1, !tbaa !109
  %i.fu = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 8
  %.not.i130.7 = icmp eq ptr %i.fs, %i.bs
  br i1 %.not.i130.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyEPKcS6_Pc.exit134, label %.lr.ph.i127, !llvm.loop !203

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyEPKcS6_Pc.exit134: ; preds = %.lr.ph.i127.prol.loopexit, %.lr.ph.i127, %middle.block401, %vec.epilog.middle.block417, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit, %bb.j, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit
  %.sink = phi i64 [ %i.k, %bb.j ], [ %i.k, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit ], [ %i.bq, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit ], [ %i.bq, %middle.block401 ], [ %i.bq, %vec.epilog.middle.block417 ], [ %i.bq, %.lr.ph.i127 ], [ %i.bq, %.lr.ph.i127.prol.loopexit ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %.sink, i1 false)
  %.0108 = add i64 %i.p, %i.k                     ; 3 uses
  %i.fw = load i8, ptr %0, align 8, !tbaa !109
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
  store i8 0, ptr %i.gf, align 1, !tbaa !109
  %.pre179.pre = load i8, ptr %0, align 8, !tbaa !109
  %.pre180.pre = load ptr, ptr %i.f, align 8
  br label %bb.v

bb.p:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE12next_storageEmm.exit
  %i.gg = load ptr, ptr %i.b, align 8, !tbaa !128
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
  %wide.load230 = load <16 x i8>, ptr %next.gep229, align 1, !tbaa !109
  %wide.load231 = load <16 x i8>, ptr %i.gn, align 1, !tbaa !109
  %i.go = getelementptr i8, ptr %next.gep228, i64 16
  store <16 x i8> %wide.load230, ptr %next.gep228, align 1, !tbaa !109
  store <16 x i8> %wide.load231, ptr %i.go, align 1, !tbaa !109
  %index.next232 = add nuw i64 %index227, 32      ; 2 uses
  %i.gp = icmp eq i64 %index.next232, %n.vec225
  br i1 %i.gp, label %middle.block233, label %vector.body226, !llvm.loop !204

middle.block233:                                  ; preds = %vector.body226
  %cmp.n234 = icmp eq i64 %i.gi, %n.vec225
end_hunk_0
begin_hunk_1_@_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6insertINS0_17constant_iteratorIcEEEEPcPKcT_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESK_E4typeE:bb.a
  %i.aa = add i64 %.neg.i, %i.i                   ; 2 uses
  %i.ab = icmp ult i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.16) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ac = icmp ult i64 %i.v, 2305843009213693952
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = shl nuw i64 %i.v, 3
  %i.ae = udiv i64 %i.ad, 5
  br label %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE12next_storageEmm.exit

bb.g:                                             ; preds = %bb.e
  %i.af = icmp ugt i64 %i.v, -6917529027641081857
  %i.ag = shl i64 %i.v, 3
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 9223372036854775807)
  %i.ai = select i1 %i.af, i64 9223372036854775807, i64 %i.ah
  br label %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE12next_storageEmm.exit

_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE12next_storageEmm.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i64 [ %i.ae, %bb.f ], [ %i.ai, %bb.g ]
  %i.aj = add i64 %i.aa, %i.v
  %i.ak = tail call noundef i64 @llvm.umax.i64(i64 %i.aj, i64 %.0.i.i)
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !127
  %i.al = add i64 %i.n, %i.i                      ; 3 uses
  %i.am = add i64 %i.al, 1
  %spec.store.select = select i1 %i.o, ptr null, ptr %i.g
  store ptr %spec.store.select, ptr %i.b, align 8, !tbaa !128
  %spec.select = select i1 %i.o, i32 1, i32 7
  %i.an = call noundef ptr @_ZN5boost9container3dtl24allocator_version_traitsINS0_13new_allocatorIcEELj1EE18allocation_commandERS4_jmRmRPc(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %spec.select, i64 noundef %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 17 uses
  %i.ao = ptrtoaddr ptr %i.an to i64              ; 2 uses
  %i.ap = icmp eq ptr %i.u, %i.an
  br i1 %i.ap, label %bb.h, label %bb.p

bb.h:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE12next_storageEmm.exit
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !127
  store i64 %i.aq, ptr %i.p, align 8, !tbaa !108
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %i.ar = ptrtoint ptr %i.u to i64                ; 7 uses
  %.neg = sub i64 %i.ar, %i.h
  %i.as = add i64 %.neg, %i.n                     ; 4 uses
  %.not124 = icmp ult i64 %i.as, %i.i
  br i1 %.not124, label %bb.k, label %iter.check302

iter.check302:                                    ; preds = %bb.i
  %i.at = getelementptr i8, ptr %i.u, i64 %i.n    ; 6 uses
  %i.au = sub i64 %i.n, %i.i
  %i.av = getelementptr i8, ptr %i.u, i64 %i.au   ; 5 uses
  %min.iters.check286 = icmp ult i64 %i.i, 8
  br i1 %min.iters.check286, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check287

vector.main.loop.iter.check287:                   ; preds = %iter.check302
  %min.iters.check288 = icmp ult i64 %i.i, 32
  br i1 %min.iters.check288, label %vec.epilog.ph306, label %vector.ph289

vector.ph289:                                     ; preds = %vector.main.loop.iter.check287
  %i.aw = and i64 %i.i, 24
  %n.vec290 = and i64 %i.i, -32                   ; 5 uses
  %i.ax = getelementptr i8, ptr %i.at, i64 %n.vec290
  %i.ay = getelementptr i8, ptr %i.av, i64 %n.vec290
  br label %vector.body291

vector.body291:                                   ; preds = %vector.ph289, %vector.body291
  %index292 = phi i64 [ 0, %vector.ph289 ], [ %index.next297, %vector.body291 ] ; 3 uses
  %next.gep293 = getelementptr i8, ptr %i.at, i64 %index292 ; 2 uses
  %next.gep294 = getelementptr i8, ptr %i.av, i64 %index292 ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep293, i64 1
  %i.ba = getelementptr i8, ptr %next.gep294, i64 1
  %i.bb = getelementptr i8, ptr %next.gep294, i64 17
  %wide.load295 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !109
  %wide.load296 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !109
  %i.bc = getelementptr i8, ptr %next.gep293, i64 17
  store <16 x i8> %wide.load295, ptr %i.az, align 1, !tbaa !109
  store <16 x i8> %wide.load296, ptr %i.bc, align 1, !tbaa !109
  %index.next297 = add nuw i64 %index292, 32      ; 2 uses
  %i.bd = icmp eq i64 %index.next297, %n.vec290
  br i1 %i.bd, label %middle.block298, label %vector.body291, !llvm.loop !220

middle.block298:                                  ; preds = %vector.body291
  %cmp.n299 = icmp eq i64 %i.i, %n.vec290
  br i1 %cmp.n299, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit, label %vec.epilog.iter.check304

vec.epilog.iter.check304:                         ; preds = %middle.block298
  %min.epilog.iters.check305 = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check305, label %.lr.ph.i.preheader, label %vec.epilog.ph306, !prof !126

vec.epilog.ph306:                                 ; preds = %vector.main.loop.iter.check287, %vec.epilog.iter.check304
  %vec.epilog.resume.val300 = phi i64 [ %n.vec290, %vec.epilog.iter.check304 ], [ 0, %vector.main.loop.iter.check287 ]
  %n.vec307 = and i64 %i.i, -8                    ; 4 uses
  %i.be = getelementptr i8, ptr %i.at, i64 %n.vec307
  %i.bf = getelementptr i8, ptr %i.av, i64 %n.vec307
  br label %vec.epilog.vector.body308

vec.epilog.vector.body308:                        ; preds = %vec.epilog.vector.body308, %vec.epilog.ph306
  %index309 = phi i64 [ %vec.epilog.resume.val300, %vec.epilog.ph306 ], [ %index.next313, %vec.epilog.vector.body308 ] ; 3 uses
  %next.gep310 = getelementptr i8, ptr %i.at, i64 %index309
  %next.gep311 = getelementptr i8, ptr %i.av, i64 %index309
  %i.bg = getelementptr i8, ptr %next.gep310, i64 1
  %i.bh = getelementptr i8, ptr %next.gep311, i64 1
  %wide.load312 = load <8 x i8>, ptr %i.bh, align 1, !tbaa !109
  store <8 x i8> %wide.load312, ptr %i.bg, align 1, !tbaa !109
  %index.next313 = add nuw i64 %index309, 8       ; 2 uses
  %i.bi = icmp eq i64 %index.next313, %n.vec307
  br i1 %i.bi, label %vec.epilog.middle.block314, label %vec.epilog.vector.body308, !llvm.loop !221

vec.epilog.middle.block314:                       ; preds = %vec.epilog.vector.body308
  %cmp.n315 = icmp eq i64 %i.i, %n.vec307
  br i1 %cmp.n315, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check302, %vec.epilog.iter.check304, %vec.epilog.middle.block314
  %.0711.i.pn.ph = phi ptr [ %i.at, %iter.check302 ], [ %i.ax, %vec.epilog.iter.check304 ], [ %i.be, %vec.epilog.middle.block314 ]
  %.0810.i.pn.ph = phi ptr [ %i.av, %iter.check302 ], [ %i.ay, %vec.epilog.iter.check304 ], [ %i.bf, %vec.epilog.middle.block314 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0711.i.pn = phi ptr [ %.0711.i, %.lr.ph.i ], [ %.0711.i.pn.ph, %.lr.ph.i.preheader ]
  %.0810.i.pn = phi ptr [ %.0810.i, %.lr.ph.i ], [ %.0810.i.pn.ph, %.lr.ph.i.preheader ]
  %.0711.i = getelementptr i8, ptr %.0711.i.pn, i64 1 ; 2 uses
  %.0810.i = getelementptr i8, ptr %.0810.i.pn, i64 1 ; 3 uses
  %i.bj = load i8, ptr %.0810.i, align 1, !tbaa !109
  store i8 %i.bj, ptr %.0711.i, align 1, !tbaa !109
  %.not.i = icmp eq ptr %.0810.i, %i.at
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !222

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit: ; preds = %.lr.ph.i, %vec.epilog.middle.block314, %middle.block298
  %i.bk = sub nuw i64 %i.as, %i.i
  %i.bl = add i64 %i.bk, 1                        ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.preheader.i, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit
  %i.bn = getelementptr inbounds i8, ptr %1, i64 %i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr align 1 %1, i64 %i.bl, i1 false)
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.j, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit
  %.pre.i = load i8, ptr %2, align 1, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %.pre.i, i64 %i.i, i1 false), !tbaa !109
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyINS0_17constant_iteratorIcEEPcEEvT_S9_T0_.exit

bb.k:                                             ; preds = %bb.i
  %.neg208 = xor i64 %i.as, -1
  %i.bo = add i64 %3, %.neg208
  %i.bp = getelementptr i8, ptr %i.u, i64 %i.n    ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 1      ; 2 uses
  %.not6.i = icmp eq i64 %i.bo, %5
  br i1 %.not6.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS0_17constant_iteratorIcEEPcEEmT_S9_T0_.exit, label %.lr.ph.preheader.i127

.lr.ph.preheader.i127:                            ; preds = %bb.k
  %.pre.i128 = load i8, ptr %2, align 1, !tbaa !109
  %i.br = add i64 %3, %i.h
  %i.bs = xor i64 %i.n, -1
  %i.bt = add i64 %i.br, %i.bs
  %i.bu = add i64 %5, %i.ar
  %i.bv = sub i64 %i.bt, %i.bu
  call void @llvm.memset.p0.i64(ptr align 1 %i.bq, i8 %.pre.i128, i64 %i.bv, i1 false), !tbaa !109
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS0_17constant_iteratorIcEEPcEEmT_S9_T0_.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS0_17constant_iteratorIcEEPcEEmT_S9_T0_.exit: ; preds = %.lr.ph.preheader.i127, %bb.k
  %i.bw = sub nuw i64 %i.i, %i.as
  %i.bx = add i64 %i.bw, %i.n                     ; 3 uses
  %i.by = load i8, ptr %0, align 8, !tbaa !109
  %i.bz = trunc i8 %i.by to i1
  br i1 %i.bz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS0_17constant_iteratorIcEEPcEEmT_S9_T0_.exit
  %i.ca = trunc i64 %i.bx to i8
  %i.cb = shl i8 %i.ca, 1
  %i.cc = or disjoint i8 %i.cb, 1
  store i8 %i.cc, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS0_17constant_iteratorIcEEPcEEmT_S9_T0_.exit
  %i.cd = load i64, ptr %0, align 8
  %i.ce = shl i64 %i.bx, 1
  %i.cf = and i64 %i.cd, 1
  %i.cg = or disjoint i64 %i.cf, %i.ce
  store i64 %i.cg, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit: ; preds = %bb.l, %bb.m
  %.not9.i133 = icmp eq ptr %1, %i.bq
  br i1 %.not9.i133, label %.lr.ph.preheader.i141, label %iter.check336

iter.check336:                                    ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit
  %i.ch = getelementptr inbounds i8, ptr %i.u, i64 %i.bx ; 6 uses
  %i.ci = add i64 %i.n, %i.ar
  %i.cj = add i64 %i.ci, 1
  %i.ck = sub i64 %i.cj, %i.h                     ; 7 uses
  %min.iters.check320 = icmp ult i64 %i.ck, 8
  br i1 %min.iters.check320, label %.lr.ph.i134.preheader, label %vector.memcheck318

vector.memcheck318:                               ; preds = %iter.check336
  %i.cl = add i64 %3, %i.h
  %i.cm = add i64 %i.cl, %i.ar
  %i.cn = add i64 %5, %i.ar
  %i.co = add i64 %i.cn, %i.h
  %i.cp = sub i64 %i.co, %i.cm
  %diff.check319 = icmp ugt i64 %i.cp, -32
  br i1 %diff.check319, label %.lr.ph.i134.preheader, label %vector.main.loop.iter.check321

vector.main.loop.iter.check321:                   ; preds = %vector.memcheck318
  %min.iters.check322 = icmp ult i64 %i.ck, 32
  br i1 %min.iters.check322, label %vec.epilog.ph340, label %vector.ph323

vector.ph323:                                     ; preds = %vector.main.loop.iter.check321
  %i.cq = and i64 %i.ck, 24
  %n.vec324 = and i64 %i.ck, -32                  ; 5 uses
  %i.cr = getelementptr i8, ptr %i.ch, i64 %n.vec324
  %i.cs = getelementptr i8, ptr %1, i64 %n.vec324
  br label %vector.body325

vector.body325:                                   ; preds = %vector.ph323, %vector.body325
  %index326 = phi i64 [ 0, %vector.ph323 ], [ %index.next331, %vector.body325 ] ; 3 uses
  %next.gep327 = getelementptr i8, ptr %i.ch, i64 %index326 ; 2 uses
  %next.gep328 = getelementptr i8, ptr %1, i64 %index326 ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep328, i64 16
  %wide.load329 = load <16 x i8>, ptr %next.gep328, align 1, !tbaa !109
  %wide.load330 = load <16 x i8>, ptr %i.ct, align 1, !tbaa !109
  %i.cu = getelementptr i8, ptr %next.gep327, i64 16
  store <16 x i8> %wide.load329, ptr %next.gep327, align 1, !tbaa !109
  store <16 x i8> %wide.load330, ptr %i.cu, align 1, !tbaa !109
  %index.next331 = add nuw i64 %index326, 32      ; 2 uses
  %i.cv = icmp eq i64 %index.next331, %n.vec324
  br i1 %i.cv, label %middle.block332, label %vector.body325, !llvm.loop !223

middle.block332:                                  ; preds = %vector.body325
  %cmp.n333 = icmp eq i64 %i.ck, %n.vec324
  br i1 %cmp.n333, label %.lr.ph.preheader.i141, label %vec.epilog.iter.check338

vec.epilog.iter.check338:                         ; preds = %middle.block332
  %min.epilog.iters.check339 = icmp eq i64 %i.cq, 0
  br i1 %min.epilog.iters.check339, label %.lr.ph.i134.preheader, label %vec.epilog.ph340, !prof !126

vec.epilog.ph340:                                 ; preds = %vector.main.loop.iter.check321, %vec.epilog.iter.check338
  %vec.epilog.resume.val334 = phi i64 [ %n.vec324, %vec.epilog.iter.check338 ], [ 0, %vector.main.loop.iter.check321 ]
  %n.vec341 = and i64 %i.ck, -8                   ; 4 uses
  %i.cw = getelementptr i8, ptr %i.ch, i64 %n.vec341
  %i.cx = getelementptr i8, ptr %1, i64 %n.vec341
  br label %vec.epilog.vector.body342

vec.epilog.vector.body342:                        ; preds = %vec.epilog.vector.body342, %vec.epilog.ph340
  %index343 = phi i64 [ %vec.epilog.resume.val334, %vec.epilog.ph340 ], [ %index.next347, %vec.epilog.vector.body342 ] ; 3 uses
  %next.gep344 = getelementptr i8, ptr %i.ch, i64 %index343
  %next.gep345 = getelementptr i8, ptr %1, i64 %index343
  %wide.load346 = load <8 x i8>, ptr %next.gep345, align 1, !tbaa !109
  store <8 x i8> %wide.load346, ptr %next.gep344, align 1, !tbaa !109
  %index.next347 = add nuw i64 %index343, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next347, %n.vec341
  br i1 %i.cy, label %vec.epilog.middle.block348, label %vec.epilog.vector.body342, !llvm.loop !224

vec.epilog.middle.block348:                       ; preds = %vec.epilog.vector.body342
  %cmp.n349 = icmp eq i64 %i.ck, %n.vec341
  br i1 %cmp.n349, label %.lr.ph.preheader.i141, label %.lr.ph.i134.preheader

.lr.ph.i134.preheader:                            ; preds = %iter.check336, %vector.memcheck318, %vec.epilog.iter.check338, %vec.epilog.middle.block348
  %.0711.i135.ph = phi ptr [ %i.ch, %iter.check336 ], [ %i.ch, %vector.memcheck318 ], [ %i.cr, %vec.epilog.iter.check338 ], [ %i.cw, %vec.epilog.middle.block348 ] ; 2 uses
  %.0810.i136.ph = phi ptr [ %1, %iter.check336 ], [ %1, %vector.memcheck318 ], [ %i.cs, %vec.epilog.iter.check338 ], [ %i.cx, %vec.epilog.middle.block348 ] ; 3 uses
  %i.cz = add i64 %i.n, %i.ar                     ; 2 uses
  %i.da = add i64 %i.cz, 1
  %.0810.i136.ph357 = ptrtoaddr ptr %.0810.i136.ph to i64 ; 2 uses
  %i.db = sub i64 %i.da, %.0810.i136.ph357
  %i.dc = sub i64 %i.cz, %.0810.i136.ph357
  %xtraiter358.a = and i64 %i.db, 7               ; 2 uses
  %lcmp.mod359.not.a = icmp eq i64 %xtraiter358.a, 0
  br i1 %lcmp.mod359.not.a, label %.lr.ph.i134.prol.loopexit, label %.lr.ph.i134.prol

.lr.ph.i134.prol:                                 ; preds = %.lr.ph.i134.preheader, %.lr.ph.i134.prol
  %.0711.i135.prol = phi ptr [ %i.de, %.lr.ph.i134.prol ], [ %.0711.i135.ph, %.lr.ph.i134.preheader ] ; 2 uses
  %.0810.i136.prol = phi ptr [ %i.df, %.lr.ph.i134.prol ], [ %.0810.i136.ph, %.lr.ph.i134.preheader ] ; 2 uses
  %prol.iter360.a = phi i64 [ %prol.iter360.next.a, %.lr.ph.i134.prol ], [ 0, %.lr.ph.i134.preheader ]
  %i.dd = load i8, ptr %.0810.i136.prol, align 1, !tbaa !109
  store i8 %i.dd, ptr %.0711.i135.prol, align 1, !tbaa !109
  %i.de = getelementptr inbounds nuw i8, ptr %.0711.i135.prol, i64 1 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0810.i136.prol, i64 1 ; 2 uses
  %prol.iter360.next.a = add i64 %prol.iter360.a, 1 ; 2 uses
  %prol.iter360.cmp.not.a = icmp eq i64 %prol.iter360.next.a, %xtraiter358.a
  br i1 %prol.iter360.cmp.not.a, label %.lr.ph.i134.prol.loopexit, label %.lr.ph.i134.prol, !llvm.loop !225

.lr.ph.i134.prol.loopexit:                        ; preds = %.lr.ph.i134.prol, %.lr.ph.i134.preheader
  %.0711.i135.unr = phi ptr [ %.0711.i135.ph, %.lr.ph.i134.preheader ], [ %i.de, %.lr.ph.i134.prol ]
  %.0810.i136.unr = phi ptr [ %.0810.i136.ph, %.lr.ph.i134.preheader ], [ %i.df, %.lr.ph.i134.prol ]
  %i.dg = icmp ult i64 %i.dc, 7
  br i1 %i.dg, label %.lr.ph.preheader.i141, label %.lr.ph.i134

.lr.ph.i134:                                      ; preds = %.lr.ph.i134.prol.loopexit, %.lr.ph.i134
  %.0711.i135 = phi ptr [ %i.ed, %.lr.ph.i134 ], [ %.0711.i135.unr, %.lr.ph.i134.prol.loopexit ] ; 9 uses
  %.0810.i136 = phi ptr [ %i.ee, %.lr.ph.i134 ], [ %.0810.i136.unr, %.lr.ph.i134.prol.loopexit ] ; 9 uses
  %i.dh = load i8, ptr %.0810.i136, align 1, !tbaa !109
  store i8 %i.dh, ptr %.0711.i135, align 1, !tbaa !109
  %i.di = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 1
  %i.dj = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !109
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !109
  %i.dl = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 2
  %i.dm = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 2
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !109
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !109
  %i.do = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 3
  %i.dp = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 3
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !109
  store i8 %i.dq, ptr %i.do, align 1, !tbaa !109
  %i.dr = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 4
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !109
  store i8 %i.dt, ptr %i.dr, align 1, !tbaa !109
  %i.du = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 5
  %i.dv = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 5
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !109
  store i8 %i.dw, ptr %i.du, align 1, !tbaa !109
  %i.dx = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 6
  %i.dy = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 6
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !109
  store i8 %i.dz, ptr %i.dx, align 1, !tbaa !109
  %i.ea = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 7
  %i.eb = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 7 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !109
  store i8 %i.ec, ptr %i.ea, align 1, !tbaa !109
  %i.ed = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 8
  %.not.i137.7 = icmp eq ptr %i.eb, %i.bp
  br i1 %.not.i137.7, label %.lr.ph.preheader.i141, label %.lr.ph.i134, !llvm.loop !226

.lr.ph.preheader.i141:                            ; preds = %.lr.ph.i134.prol.loopexit, %.lr.ph.i134, %middle.block332, %vec.epilog.middle.block348, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit
  %.pre.i142 = load i8, ptr %2, align 1, !tbaa !109
  %i.ef = add i64 %i.n, %i.ar
  %i.eg = add i64 %i.ef, 1
  %i.eh = sub i64 %i.eg, %i.h
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %.pre.i142, i64 %i.eh, i1 false), !tbaa !109
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyINS0_17constant_iteratorIcEEPcEEvT_S9_T0_.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyINS0_17constant_iteratorIcEEPcEEvT_S9_T0_.exit: ; preds = %.lr.ph.preheader.i, %.lr.ph.preheader.i141
  %.0118 = add i64 %i.n, %i.i                     ; 3 uses
  %i.ei = load i8, ptr %0, align 8, !tbaa !109
  %i.ej = trunc i8 %i.ei to i1
  br i1 %i.ej, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyINS0_17constant_iteratorIcEEPcEEvT_S9_T0_.exit
  %i.ek = trunc i64 %.0118 to i8
  %i.el = shl i8 %i.ek, 1
  %i.em = or disjoint i8 %i.el, 1
  store i8 %i.em, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit148

bb.o:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyINS0_17constant_iteratorIcEEPcEEvT_S9_T0_.exit
  %i.en = load i64, ptr %0, align 8
  %i.eo = shl i64 %.0118, 1
  %i.ep = and i64 %i.en, 1
  %i.eq = or disjoint i64 %i.ep, %i.eo
  store i64 %i.eq, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit148

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit148: ; preds = %bb.n, %bb.o
  %i.er = getelementptr inbounds i8, ptr %i.u, i64 %.0118
  store i8 0, ptr %i.er, align 1, !tbaa !109
  %.pre214.pre = load i8, ptr %0, align 8, !tbaa !109
  %.pre215.pre = load ptr, ptr %i.f, align 8
  br label %bb.v

bb.p:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE12next_storageEmm.exit
  %i.es = load ptr, ptr %i.b, align 8, !tbaa !128
  %.not = icmp eq ptr %i.es, null
  br i1 %.not, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.et = ptrtoaddr ptr %i.u to i64               ; 5 uses
  %.not9.i149 = icmp eq ptr %i.u, %1
  br i1 %.not9.i149, label %.lr.ph.preheader.i158, label %iter.check

iter.check:                                       ; preds = %bb.q
  %i.eu = sub i64 %i.h, %i.et                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.eu, 8
  %i.ev = sub i64 %i.et, %i.ao
  %diff.check = icmp ugt i64 %i.ev, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i150.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check239 = icmp ult i64 %i.eu, 32
  br i1 %min.iters.check239, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ew = and i64 %i.eu, 24
  %n.vec = and i64 %i.eu, -32                     ; 5 uses
  %i.ex = getelementptr i8, ptr %i.an, i64 %n.vec
  %i.ey = getelementptr i8, ptr %i.u, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.an, i64 %index ; 2 uses
  %next.gep240 = getelementptr i8, ptr %i.u, i64 %index ; 2 uses
  %i.ez = getelementptr i8, ptr %next.gep240, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep240, align 1, !tbaa !109
  %wide.load241 = load <16 x i8>, ptr %i.ez, align 1, !tbaa !109
  %i.fa = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !109
  store <16 x i8> %wide.load241, ptr %i.fa, align 1, !tbaa !109
end_hunk_1
begin_hunk_2_@_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceEPKcS6_mc:bb.a
bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %4, i64 %i.d, i1 false)
  br label %_ZNSt11char_traitsIcE6assignEPcmc.exit18

_ZNSt11char_traitsIcE6assignEPcmc.exit18:         ; preds = %bb.h, %bb.i
  %i.aj = sub nuw i64 %3, %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %4, ptr %i.a, align 1, !tbaa !109
  %i.ak = call noundef ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6insertINS0_17constant_iteratorIcEEEEPcPKcT_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESK_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr nonnull %i.a, i64 %i.aj, ptr null, i64 0, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE5eraseEPKcS6_.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE5eraseEPKcS6_.exit: ; preds = %bb.g, %bb.f, %_ZNSt11char_traitsIcE6assignEPcmc.exit, %_ZNSt11char_traitsIcE6assignEPcmc.exit18
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceEPKcS6_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %3, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 8 uses
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = load i64, ptr %3, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k ; 3 uses
  %i.m = icmp ne ptr %1, %2
  %i.n = icmp samesign ne i64 %i.k, 0
  %i.o = and i1 %i.m, %i.n
  br i1 %i.o, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.a
  %i.p = ptrtoaddr ptr %i.f to i64
  %i.q = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.r = ptrtoaddr ptr %2 to i64
  %i.s = xor i64 %i.q, -1
  %i.t = add i64 %i.s, %i.r
  %i.u = add nsw i64 %i.k, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.u)
  %i.v = add i64 %umin, 1                         ; 7 uses
  %min.iters.check = icmp ult i64 %i.v, 4
  %i.w = sub i64 %i.p, %i.q
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.x = and i64 %i.v, 28
  %n.vec = and i64 %i.v, -32                      ; 5 uses
  %i.y = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.z = getelementptr i8, ptr %i.f, i64 %n.vec   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.f, i64 %index ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep14, align 1, !tbaa !109
  %wide.load15 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !109
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !109
  store <16 x i8> %wide.load15, ptr %i.ab, align 1, !tbaa !109
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !241

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !115

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %i.v, -4                     ; 4 uses
  %i.ad = getelementptr i8, ptr %1, i64 %n.vec17  ; 2 uses
  %i.ae = getelementptr i8, ptr %i.f, i64 %n.vec17 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next22, %vec.epilog.vector.body ] ; 3 uses
  %next.gep19 = getelementptr i8, ptr %1, i64 %index18
  %next.gep20 = getelementptr i8, ptr %i.f, i64 %index18
  %wide.load21 = load <4 x i8>, ptr %next.gep20, align 1, !tbaa !109
  store <4 x i8> %wide.load21, ptr %next.gep19, align 1, !tbaa !109
  %index.next22 = add nuw i64 %index18, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next22, %n.vec17
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !242

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n23 = icmp eq i64 %i.v, %n.vec17
  br i1 %cmp.n23, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.019.i.ph = phi ptr [ %1, %iter.check ], [ %i.y, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ]
  %.01618.i.ph = phi ptr [ %i.f, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.019.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01618.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.01618.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ag = load i8, ptr %.01618.i, align 1, !tbaa !109
  store i8 %i.ag, ptr %.019.i, align 1, !tbaa !109
  %i.ah = getelementptr inbounds nuw i8, ptr %.019.i, i64 1 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01618.i, i64 1 ; 3 uses
  %i.aj = icmp ne ptr %i.ah, %2
  %i.ak = icmp ne ptr %i.ai, %i.l
  %i.al = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !243

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a
  %.016.lcssa.i = phi ptr [ %i.f, %bb.a ], [ %i.ae, %vec.epilog.middle.block ], [ %i.z, %middle.block ], [ %i.ai, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.ad, %vec.epilog.middle.block ], [ %i.y, %middle.block ], [ %i.ah, %.lr.ph.i ] ; 3 uses
  %i.am = icmp eq ptr %.016.lcssa.i, %i.l
  br i1 %i.am, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge.i
  %.not.i.i = icmp eq ptr %.0.lcssa.i, %2
  br i1 %.not.i.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPKcEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ao = ptrtoint ptr %.0.lcssa.i to i64
  %.neg14.i.i = sub i64 %i.ao, %i.an
  %i.ap = load i8, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = lshr i8 %i.ap, 1
  %i.as = zext nneg i8 %i.ar to i64
  %i.at = load i64, ptr %0, align 8               ; 3 uses
  %i.au = lshr i64 %i.at, 1
  %i.av = select i1 %i.aq, i64 %i.as, i64 %i.au   ; 2 uses
  %i.aw = trunc i64 %i.at to i8
  %i.ax = trunc i64 %i.at to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = select i1 %i.ax, ptr %i.ay, ptr %i.ba
  %i.bc = add nuw i64 %i.av, 1
  %i.bd = ptrtoint ptr %i.bb to i64
  %.neg.i.i = sub i64 %i.bd, %i.an
  %i.be = add i64 %i.bc, %.neg.i.i                ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.lcssa.i, ptr align 1 %2, i64 %i.be, i1 false)
  %.pre.i.i = load i8, ptr %0, align 8, !tbaa !109
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i:       ; preds = %bb.d, %bb.c
  %i.bg = phi i8 [ %i.aw, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.bh = add i64 %i.av, %.neg14.i.i              ; 2 uses
  %i.bi = trunc i8 %i.bg to i1
  br i1 %i.bi, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.bj = trunc i64 %i.bh to i8
  %i.bk = shl i8 %i.bj, 1
  %i.bl = or disjoint i8 %i.bk, 1
  store i8 %i.bl, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPKcEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.bm = load i64, ptr %0, align 8
  %i.bn = shl i64 %i.bh, 1
  %i.bo = and i64 %i.bm, 1
  %i.bp = or disjoint i64 %i.bo, %i.bn
  store i64 %i.bp, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPKcEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.bq = tail call noundef ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6insertIPKcEEPcS7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef %.016.lcssa.i, ptr noundef %i.l, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPKcEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPKcEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceEPKcS6_S6_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %3, i64 %4 ; 3 uses
  %i.b = icmp ne ptr %1, %2
  %i.c = icmp ne i64 %4, 0
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.f = ptrtoaddr ptr %3 to i64
  %i.g = ptrtoaddr ptr %2 to i64
  %i.h = xor i64 %i.e, -1
  %i.i = add i64 %i.h, %i.g
  %i.j = add i64 %4, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.j)
  %i.k = add i64 %umin, 1                         ; 7 uses
  %min.iters.check = icmp ult i64 %i.k, 4
  %i.l = sub i64 %i.f, %i.e
  %diff.check = icmp ugt i64 %i.l, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i64 %i.k, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.k, 28
  %n.vec = and i64 %i.k, -32                      ; 5 uses
  %i.n = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.o = getelementptr i8, ptr %3, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep13 = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep13, align 1, !tbaa !109
  %wide.load14 = load <16 x i8>, ptr %i.p, align 1, !tbaa !109
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !109
  store <16 x i8> %wide.load14, ptr %i.q, align 1, !tbaa !109
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !244

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !115

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.k, -4                     ; 4 uses
  %i.s = getelementptr i8, ptr %1, i64 %n.vec16   ; 2 uses
  %i.t = getelementptr i8, ptr %3, i64 %n.vec16   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 3 uses
  %next.gep18 = getelementptr i8, ptr %1, i64 %index17
  %next.gep19 = getelementptr i8, ptr %3, i64 %index17
  %wide.load20 = load <4 x i8>, ptr %next.gep19, align 1, !tbaa !109
  store <4 x i8> %wide.load20, ptr %next.gep18, align 1, !tbaa !109
  %index.next21 = add nuw i64 %index17, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next21, %n.vec16
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !245

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %i.k, %n.vec16
  br i1 %cmp.n22, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.019.i.ph = phi ptr [ %1, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  %.01618.i.ph = phi ptr [ %3, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.019.i = phi ptr [ %i.w, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01618.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.01618.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.v = load i8, ptr %.01618.i, align 1, !tbaa !109
  store i8 %i.v, ptr %.019.i, align 1, !tbaa !109
  %i.w = getelementptr inbounds nuw i8, ptr %.019.i, i64 1 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01618.i, i64 1 ; 3 uses
  %i.y = icmp ne ptr %i.w, %2
  %i.z = icmp ne ptr %i.x, %i.a
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  br i1 %i.aa, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !246

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a
  %.016.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.t, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %i.x, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.s, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %i.w, %.lr.ph.i ] ; 3 uses
  %i.ab = icmp eq ptr %.016.lcssa.i, %i.a
  br i1 %i.ab, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge.i
  %.not.i.i = icmp eq ptr %.0.lcssa.i, %2
  br i1 %.not.i.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPKcEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ad = ptrtoint ptr %.0.lcssa.i to i64
  %.neg14.i.i = sub i64 %i.ad, %i.ac
  %i.ae = load i8, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.af = trunc i8 %i.ae to i1
  %i.ag = lshr i8 %i.ae, 1
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = load i64, ptr %0, align 8               ; 3 uses
  %i.aj = lshr i64 %i.ai, 1
  %i.ak = select i1 %i.af, i64 %i.ah, i64 %i.aj   ; 2 uses
  %i.al = trunc i64 %i.ai to i8
  %i.am = trunc i64 %i.ai to i1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = select i1 %i.am, ptr %i.an, ptr %i.ap
  %i.ar = add nuw i64 %i.ak, 1
  %i.as = ptrtoint ptr %i.aq to i64
  %.neg.i.i = sub i64 %i.as, %i.ac
  %i.at = add i64 %i.ar, %.neg.i.i                ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.lcssa.i, ptr align 1 %2, i64 %i.at, i1 false)
  %.pre.i.i = load i8, ptr %0, align 8, !tbaa !109
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i:       ; preds = %bb.d, %bb.c
  %i.av = phi i8 [ %i.al, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.aw = add i64 %i.ak, %.neg14.i.i              ; 2 uses
  %i.ax = trunc i8 %i.av to i1
  br i1 %i.ax, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.ay = trunc i64 %i.aw to i8
  %i.az = shl i8 %i.ay, 1
  %i.ba = or disjoint i8 %i.az, 1
  store i8 %i.ba, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPKcEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.bb = load i64, ptr %0, align 8
  %i.bc = shl i64 %i.aw, 1
  %i.bd = and i64 %i.bb, 1
  %i.be = or disjoint i64 %i.bd, %i.bc
  store i64 %i.be, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPKcEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.bf = tail call noundef ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6insertIPKcEEPcS7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef %.016.lcssa.i, ptr noundef %i.a, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPKcEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPKcEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceEPKcS6_S6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 %i.a ; 3 uses
  %i.c = icmp ne ptr %1, %2
  %i.d = icmp samesign ne i64 %i.a, 0
  %i.e = and i1 %i.c, %i.d
  br i1 %i.e, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.a
  %i.f = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.g = ptrtoaddr ptr %3 to i64
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = xor i64 %i.f, -1
  %i.j = add i64 %i.i, %i.h
  %i.k = add i64 %i.a, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.k)
  %i.l = add i64 %umin, 1                         ; 7 uses
  %min.iters.check = icmp ult i64 %i.l, 4
  %i.m = sub i64 %i.g, %i.f
  %diff.check = icmp ugt i64 %i.m, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %i.l, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.l, 28
  %n.vec = and i64 %i.l, -32                      ; 5 uses
  %i.o = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.p = getelementptr i8, ptr %3, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep14 = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep14, align 1, !tbaa !109
  %wide.load15 = load <16 x i8>, ptr %i.q, align 1, !tbaa !109
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !109
  store <16 x i8> %wide.load15, ptr %i.r, align 1, !tbaa !109
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !247

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !115

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %i.l, -4                     ; 4 uses
  %i.t = getelementptr i8, ptr %1, i64 %n.vec17   ; 2 uses
  %i.u = getelementptr i8, ptr %3, i64 %n.vec17   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next22, %vec.epilog.vector.body ] ; 3 uses
  %next.gep19 = getelementptr i8, ptr %1, i64 %index18
  %next.gep20 = getelementptr i8, ptr %3, i64 %index18
  %wide.load21 = load <4 x i8>, ptr %next.gep20, align 1, !tbaa !109
  store <4 x i8> %wide.load21, ptr %next.gep19, align 1, !tbaa !109
  %index.next22 = add nuw i64 %index18, 4         ; 2 uses
  %i.v = icmp eq i64 %index.next22, %n.vec17
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !248

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n23 = icmp eq i64 %i.l, %n.vec17
  br i1 %cmp.n23, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.019.i.ph = phi ptr [ %1, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  %.01618.i.ph = phi ptr [ %3, %iter.check ], [ %i.p, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.019.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01618.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.01618.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.w = load i8, ptr %.01618.i, align 1, !tbaa !109
  store i8 %i.w, ptr %.019.i, align 1, !tbaa !109
  %i.x = getelementptr inbounds nuw i8, ptr %.019.i, i64 1 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.01618.i, i64 1 ; 3 uses
  %i.z = icmp ne ptr %i.x, %2
  %i.aa = icmp ne ptr %i.y, %i.b
  %i.ab = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !249

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a
  %.016.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.u, %vec.epilog.middle.block ], [ %i.p, %middle.block ], [ %i.y, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.t, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %i.x, %.lr.ph.i ] ; 3 uses
  %i.ac = icmp eq ptr %.016.lcssa.i, %i.b
  br i1 %i.ac, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge.i
  %.not.i.i = icmp eq ptr %.0.lcssa.i, %2
  br i1 %.not.i.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPKcEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ae = ptrtoint ptr %.0.lcssa.i to i64
  %.neg14.i.i = sub i64 %i.ae, %i.ad
  %i.af = load i8, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.ag = trunc i8 %i.af to i1
  %i.ah = lshr i8 %i.af, 1
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = load i64, ptr %0, align 8               ; 3 uses
  %i.ak = lshr i64 %i.aj, 1
  %i.al = select i1 %i.ag, i64 %i.ai, i64 %i.ak   ; 2 uses
  %i.am = trunc i64 %i.aj to i8
  %i.an = trunc i64 %i.aj to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = select i1 %i.an, ptr %i.ao, ptr %i.aq
  %i.as = add nuw i64 %i.al, 1
  %i.at = ptrtoint ptr %i.ar to i64
  %.neg.i.i = sub i64 %i.at, %i.ad
  %i.au = add i64 %i.as, %.neg.i.i                ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.lcssa.i, ptr align 1 %2, i64 %i.au, i1 false)
  %.pre.i.i = load i8, ptr %0, align 8, !tbaa !109
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i:       ; preds = %bb.d, %bb.c
  %i.aw = phi i8 [ %i.am, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.ax = add i64 %i.al, %.neg14.i.i              ; 2 uses
  %i.ay = trunc i8 %i.aw to i1
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.az = trunc i64 %i.ax to i8
  %i.ba = shl i8 %i.az, 1
  %i.bb = or disjoint i8 %i.ba, 1
  store i8 %i.bb, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPKcEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.bc = load i64, ptr %0, align 8
  %i.bd = shl i64 %i.ax, 1
  %i.be = and i64 %i.bc, 1
  %i.bf = or disjoint i64 %i.be, %i.bd
  store i64 %i.bf, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPKcEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.bg = tail call noundef ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6insertIPKcEEPcS7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef nonnull %.016.lcssa.i, ptr noundef nonnull %i.b, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPKcEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPKcEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceEPKcS6_St16initializer_listIcE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr %3, i64 %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 3 uses
  %i.b = icmp ne ptr %1, %2
  %i.c = icmp samesign ne i64 %4, 0
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.f = ptrtoaddr ptr %3 to i64
  %i.g = ptrtoaddr ptr %2 to i64
  %i.h = xor i64 %i.e, -1
  %i.i = add i64 %i.h, %i.g
  %i.j = add i64 %4, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.j)
  %i.k = add i64 %umin, 1                         ; 7 uses
  %min.iters.check = icmp ult i64 %i.k, 4
  %i.l = sub i64 %i.f, %i.e
  %diff.check = icmp ugt i64 %i.l, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check11 = icmp ult i64 %i.k, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.k, 28
  %n.vec = and i64 %i.k, -32                      ; 5 uses
  %i.n = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.o = getelementptr i8, ptr %3, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep12 = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep12, align 1, !tbaa !109
  %wide.load13 = load <16 x i8>, ptr %i.p, align 1, !tbaa !109
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !109
  store <16 x i8> %wide.load13, ptr %i.q, align 1, !tbaa !109
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !250

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !115

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %i.k, -4                     ; 4 uses
  %i.s = getelementptr i8, ptr %1, i64 %n.vec15   ; 2 uses
  %i.t = getelementptr i8, ptr %3, i64 %n.vec15   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ] ; 3 uses
  %next.gep17 = getelementptr i8, ptr %1, i64 %index16
  %next.gep18 = getelementptr i8, ptr %3, i64 %index16
  %wide.load19 = load <4 x i8>, ptr %next.gep18, align 1, !tbaa !109
  store <4 x i8> %wide.load19, ptr %next.gep17, align 1, !tbaa !109
  %index.next20 = add nuw i64 %index16, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next20, %n.vec15
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !251

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n21 = icmp eq i64 %i.k, %n.vec15
  br i1 %cmp.n21, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.019.i.ph = phi ptr [ %1, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  %.01618.i.ph = phi ptr [ %3, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.019.i = phi ptr [ %i.w, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01618.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.01618.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.v = load i8, ptr %.01618.i, align 1, !tbaa !109
  store i8 %i.v, ptr %.019.i, align 1, !tbaa !109
  %i.w = getelementptr inbounds nuw i8, ptr %.019.i, i64 1 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01618.i, i64 1 ; 3 uses
  %i.y = icmp ne ptr %i.w, %2
  %i.z = icmp ne ptr %i.x, %i.a
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  br i1 %i.aa, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !252

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a
  %.016.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.t, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %i.x, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.s, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %i.w, %.lr.ph.i ] ; 3 uses
  %i.ab = icmp eq ptr %.016.lcssa.i, %i.a
  br i1 %i.ab, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge.i
  %.not.i.i = icmp eq ptr %.0.lcssa.i, %2
  br i1 %.not.i.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPKcEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ad = ptrtoint ptr %.0.lcssa.i to i64
  %.neg14.i.i = sub i64 %i.ad, %i.ac
  %i.ae = load i8, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.af = trunc i8 %i.ae to i1
  %i.ag = lshr i8 %i.ae, 1
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = load i64, ptr %0, align 8               ; 3 uses
  %i.aj = lshr i64 %i.ai, 1
  %i.ak = select i1 %i.af, i64 %i.ah, i64 %i.aj   ; 2 uses
  %i.al = trunc i64 %i.ai to i8
  %i.am = trunc i64 %i.ai to i1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = select i1 %i.am, ptr %i.an, ptr %i.ap
  %i.ar = add nuw i64 %i.ak, 1
  %i.as = ptrtoint ptr %i.aq to i64
  %.neg.i.i = sub i64 %i.as, %i.ac
  %i.at = add i64 %i.ar, %.neg.i.i                ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.lcssa.i, ptr align 1 %2, i64 %i.at, i1 false)
  %.pre.i.i = load i8, ptr %0, align 8, !tbaa !109
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i:       ; preds = %bb.d, %bb.c
  %i.av = phi i8 [ %i.al, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.aw = add i64 %i.ak, %.neg14.i.i              ; 2 uses
  %i.ax = trunc i8 %i.av to i1
  br i1 %i.ax, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.ay = trunc i64 %i.aw to i8
  %i.az = shl i8 %i.ay, 1
  %i.ba = or disjoint i8 %i.az, 1
  store i8 %i.ba, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPKcEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.bb = load i64, ptr %0, align 8
  %i.bc = shl i64 %i.aw, 1
  %i.bd = and i64 %i.bb, 1
  %i.be = or disjoint i64 %i.bd, %i.bc
  store i64 %i.be, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPKcEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.bf = tail call noundef ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6insertIPKcEEPcS7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef %.016.lcssa.i, ptr noundef %i.a, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPKcEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPKcEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE4copyEPcmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %3, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.9) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = lshr i64 %i.e, 1
  %i.k = and i64 %i.j, 127
  %i.l = select i1 %i.i, i64 %i.k, i64 %i.f
  %i.m = sub nsw i64 %i.l, %3
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.m) ; 3 uses
  %i.n = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.n, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.i, ptr %i.o, ptr %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.s, i64 %.sroa.speculated, i1 false)
  br label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit

_ZNSt11char_traitsIcE4copyEPcPKcm.exit:           ; preds = %bb.c, %bb.d
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca [24 x i8], align 8          ; 4 uses
  %2 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<char>, void>::short_t", align 1 ; 4 uses
  %3 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<char>, void>::short_t", align 1 ; 4 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
  %i.c = load i8, ptr %1, align 8, !tbaa !109
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
end_hunk_2
begin_hunk_3_@_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE6insertIPKcEEPcSA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE:bb.a
  %.0711.i.pn.ph = phi ptr [ %i.av, %iter.check337 ], [ %i.az, %vec.epilog.iter.check339 ], [ %i.bg, %vec.epilog.middle.block349 ]
  %.0810.i.pn.ph = phi ptr [ %i.ax, %iter.check337 ], [ %i.ba, %vec.epilog.iter.check339 ], [ %i.bh, %vec.epilog.middle.block349 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0711.i.pn = phi ptr [ %.0711.i, %.lr.ph.i ], [ %.0711.i.pn.ph, %.lr.ph.i.preheader ]
  %.0810.i.pn = phi ptr [ %.0810.i, %.lr.ph.i ], [ %.0810.i.pn.ph, %.lr.ph.i.preheader ]
  %.0711.i = getelementptr i8, ptr %.0711.i.pn, i64 1 ; 2 uses
  %.0810.i = getelementptr i8, ptr %.0810.i.pn, i64 1 ; 3 uses
  %i.bl = load i8, ptr %.0810.i, align 1, !tbaa !109
  store i8 %i.bl, ptr %.0711.i, align 1, !tbaa !109
  %.not.i = icmp eq ptr %.0810.i, %i.av
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit, label %.lr.ph.i, !llvm.loop !299

_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit: ; preds = %.lr.ph.i, %vec.epilog.middle.block349, %middle.block333
  %i.bm = sub nuw i64 %i.au, %i.k
  %i.bn = add i64 %i.bm, 1                        ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9priv_copyEPKcS9_Pc.exit134, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit
  %i.bp = getelementptr inbounds i8, ptr %1, i64 %i.k
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bn, i1 false)
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9priv_copyEPKcS9_Pc.exit134

bb.k:                                             ; preds = %bb.i
  %i.bq = add nuw i64 %i.au, 1                    ; 6 uses
  %i.br = getelementptr i8, ptr %2, i64 %i.bq     ; 6 uses
  %i.bs = getelementptr i8, ptr %i.w, i64 %i.p    ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 1      ; 6 uses
  %.not9.i119 = icmp eq ptr %i.br, %3
  br i1 %.not9.i119, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPKcPcEEmT_SC_T0_.exit, label %iter.check371

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
  %wide.load364 = load <16 x i8>, ptr %next.gep363, align 1, !tbaa !109
  %wide.load365 = load <16 x i8>, ptr %i.cd, align 1, !tbaa !109
  %i.ce = getelementptr i8, ptr %next.gep362, i64 16
  store <16 x i8> %wide.load364, ptr %next.gep362, align 1, !tbaa !109
  store <16 x i8> %wide.load365, ptr %i.ce, align 1, !tbaa !109
  %index.next366 = add nuw i64 %index361, 32      ; 2 uses
  %i.cf = icmp eq i64 %index.next366, %n.vec359
  br i1 %i.cf, label %middle.block367, label %vector.body360, !llvm.loop !300

middle.block367:                                  ; preds = %vector.body360
  %cmp.n368 = icmp eq i64 %i.by, %n.vec359
  br i1 %cmp.n368, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPKcPcEEmT_SC_T0_.exit, label %vec.epilog.iter.check373

vec.epilog.iter.check373:                         ; preds = %middle.block367
  %min.epilog.iters.check374 = icmp eq i64 %i.ca, 0
  br i1 %min.epilog.iters.check374, label %.lr.ph.i120.preheader, label %vec.epilog.ph375, !prof !126

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
  %wide.load381 = load <8 x i8>, ptr %next.gep380, align 1, !tbaa !109
  store <8 x i8> %wide.load381, ptr %next.gep379, align 1, !tbaa !109
  %index.next382 = add nuw i64 %index378, 8       ; 2 uses
  %i.ci = icmp eq i64 %index.next382, %n.vec376
  br i1 %i.ci, label %vec.epilog.middle.block383, label %vec.epilog.vector.body377, !llvm.loop !301

vec.epilog.middle.block383:                       ; preds = %vec.epilog.vector.body377
  %cmp.n384 = icmp eq i64 %i.by, %n.vec376
  br i1 %cmp.n384, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPKcPcEEmT_SC_T0_.exit, label %.lr.ph.i120.preheader

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
  %i.ck = load i8, ptr %.0810.i122.prol, align 1, !tbaa !109
  store i8 %i.ck, ptr %.0711.i121.prol, align 1, !tbaa !109
  %i.cl = getelementptr inbounds nuw i8, ptr %.0711.i121.prol, i64 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0810.i122.prol, i64 1 ; 2 uses
  %prol.iter438.next = add i64 %prol.iter438, 1   ; 2 uses
  %prol.iter438.cmp.not = icmp eq i64 %prol.iter438.next, %xtraiter436
  br i1 %prol.iter438.cmp.not, label %.lr.ph.i120.prol.loopexit, label %.lr.ph.i120.prol, !llvm.loop !302

.lr.ph.i120.prol.loopexit:                        ; preds = %.lr.ph.i120.prol, %.lr.ph.i120.preheader
  %.0711.i121.unr = phi ptr [ %.0711.i121.ph, %.lr.ph.i120.preheader ], [ %i.cl, %.lr.ph.i120.prol ]
  %.0810.i122.unr = phi ptr [ %.0810.i122.ph, %.lr.ph.i120.preheader ], [ %i.cm, %.lr.ph.i120.prol ]
  %i.cn = sub i64 %.0810.i122.ph435, %i.i
  %i.co = icmp ugt i64 %i.cn, -8
  br i1 %i.co, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPKcPcEEmT_SC_T0_.exit, label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %.lr.ph.i120.prol.loopexit, %.lr.ph.i120
  %.0711.i121 = phi ptr [ %i.dl, %.lr.ph.i120 ], [ %.0711.i121.unr, %.lr.ph.i120.prol.loopexit ] ; 9 uses
  %.0810.i122 = phi ptr [ %i.dm, %.lr.ph.i120 ], [ %.0810.i122.unr, %.lr.ph.i120.prol.loopexit ] ; 9 uses
  %i.cp = load i8, ptr %.0810.i122, align 1, !tbaa !109
  store i8 %i.cp, ptr %.0711.i121, align 1, !tbaa !109
  %i.cq = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !109
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !109
  %i.ct = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 2
  %i.cu = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 2
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !109
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !109
  %i.cw = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 3
  %i.cx = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 3
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !109
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !109
  %i.cz = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 4
  %i.db = load i8, ptr %i.da, align 1, !tbaa !109
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !109
  %i.dc = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 5
  %i.dd = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 5
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !109
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !109
  %i.df = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 6
  %i.dg = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 6
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !109
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !109
  %i.di = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 7
  %i.dj = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 7
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !109
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !109
  %i.dl = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 8 ; 2 uses
  %.not.i123.7 = icmp eq ptr %i.dm, %3
  br i1 %.not.i123.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPKcPcEEmT_SC_T0_.exit, label %.lr.ph.i120, !llvm.loop !303

_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPKcPcEEmT_SC_T0_.exit: ; preds = %.lr.ph.i120.prol.loopexit, %.lr.ph.i120, %middle.block367, %vec.epilog.middle.block383, %bb.k
  %i.dn = sub nuw i64 %i.k, %i.au
  %i.do = add i64 %i.dn, %i.p                     ; 3 uses
  %i.dp = load i8, ptr %0, align 8, !tbaa !109
  %i.dq = trunc i8 %i.dp to i1
  br i1 %i.dq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPKcPcEEmT_SC_T0_.exit
  %i.dr = trunc i64 %i.do to i8
  %i.ds = shl i8 %i.dr, 1
  %i.dt = or disjoint i8 %i.ds, 1
  store i8 %i.dt, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE9priv_sizeEm.exit

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPKcPcEEmT_SC_T0_.exit
  %i.du = load i64, ptr %0, align 8
  %i.dv = shl i64 %i.do, 1
  %i.dw = and i64 %i.du, 1
  %i.dx = or disjoint i64 %i.dw, %i.dv
  store i64 %i.dx, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE9priv_sizeEm.exit: ; preds = %bb.l, %bb.m
  %.not9.i126 = icmp eq ptr %1, %i.bt
  br i1 %.not9.i126, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9priv_copyEPKcS9_Pc.exit134, label %iter.check405

iter.check405:                                    ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE9priv_sizeEm.exit
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
  %wide.load398 = load <16 x i8>, ptr %next.gep397, align 1, !tbaa !109
  %wide.load399 = load <16 x i8>, ptr %i.ek, align 1, !tbaa !109
  %i.el = getelementptr i8, ptr %next.gep396, i64 16
  store <16 x i8> %wide.load398, ptr %next.gep396, align 1, !tbaa !109
  store <16 x i8> %wide.load399, ptr %i.el, align 1, !tbaa !109
  %index.next400 = add nuw i64 %index395, 32      ; 2 uses
  %i.em = icmp eq i64 %index.next400, %n.vec393
  br i1 %i.em, label %middle.block401, label %vector.body394, !llvm.loop !304

middle.block401:                                  ; preds = %vector.body394
  %cmp.n402 = icmp eq i64 %i.eb, %n.vec393
  br i1 %cmp.n402, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9priv_copyEPKcS9_Pc.exit134, label %vec.epilog.iter.check407

vec.epilog.iter.check407:                         ; preds = %middle.block401
  %min.epilog.iters.check408 = icmp eq i64 %i.eh, 0
  br i1 %min.epilog.iters.check408, label %.lr.ph.i127.preheader, label %vec.epilog.ph409, !prof !126

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
  %wide.load415 = load <8 x i8>, ptr %next.gep414, align 1, !tbaa !109
  store <8 x i8> %wide.load415, ptr %next.gep413, align 1, !tbaa !109
  %index.next416 = add nuw i64 %index412, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next416, %n.vec410
  br i1 %i.ep, label %vec.epilog.middle.block417, label %vec.epilog.vector.body411, !llvm.loop !305

vec.epilog.middle.block417:                       ; preds = %vec.epilog.vector.body411
  %cmp.n418 = icmp eq i64 %i.eb, %n.vec410
  br i1 %cmp.n418, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9priv_copyEPKcS9_Pc.exit134, label %.lr.ph.i127.preheader

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
  %i.eu = load i8, ptr %.0810.i129.prol, align 1, !tbaa !109
  store i8 %i.eu, ptr %.0711.i128.prol, align 1, !tbaa !109
  %i.ev = getelementptr inbounds nuw i8, ptr %.0711.i128.prol, i64 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.0810.i129.prol, i64 1 ; 2 uses
  %prol.iter442.next = add i64 %prol.iter442, 1   ; 2 uses
  %prol.iter442.cmp.not = icmp eq i64 %prol.iter442.next, %xtraiter440
  br i1 %prol.iter442.cmp.not, label %.lr.ph.i127.prol.loopexit, label %.lr.ph.i127.prol, !llvm.loop !306

.lr.ph.i127.prol.loopexit:                        ; preds = %.lr.ph.i127.prol, %.lr.ph.i127.preheader
  %.0711.i128.unr = phi ptr [ %.0711.i128.ph, %.lr.ph.i127.preheader ], [ %i.ev, %.lr.ph.i127.prol ]
  %.0810.i129.unr = phi ptr [ %.0810.i129.ph, %.lr.ph.i127.preheader ], [ %i.ew, %.lr.ph.i127.prol ]
  %i.ex = icmp ult i64 %i.et, 7
  br i1 %i.ex, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9priv_copyEPKcS9_Pc.exit134, label %.lr.ph.i127

.lr.ph.i127:                                      ; preds = %.lr.ph.i127.prol.loopexit, %.lr.ph.i127
  %.0711.i128 = phi ptr [ %i.fu, %.lr.ph.i127 ], [ %.0711.i128.unr, %.lr.ph.i127.prol.loopexit ] ; 9 uses
  %.0810.i129 = phi ptr [ %i.fv, %.lr.ph.i127 ], [ %.0810.i129.unr, %.lr.ph.i127.prol.loopexit ] ; 9 uses
  %i.ey = load i8, ptr %.0810.i129, align 1, !tbaa !109
  store i8 %i.ey, ptr %.0711.i128, align 1, !tbaa !109
  %i.ez = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 1
  %i.fa = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !109
  store i8 %i.fb, ptr %i.ez, align 1, !tbaa !109
  %i.fc = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 2
  %i.fd = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 2
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !109
  store i8 %i.fe, ptr %i.fc, align 1, !tbaa !109
  %i.ff = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 3
  %i.fg = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 3
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !109
  store i8 %i.fh, ptr %i.ff, align 1, !tbaa !109
  %i.fi = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 4
  %i.fj = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 4
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !109
  store i8 %i.fk, ptr %i.fi, align 1, !tbaa !109
  %i.fl = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 5
  %i.fm = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 5
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !109
  store i8 %i.fn, ptr %i.fl, align 1, !tbaa !109
  %i.fo = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 6
  %i.fp = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 6
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !109
  store i8 %i.fq, ptr %i.fo, align 1, !tbaa !109
  %i.fr = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 7
  %i.fs = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 7 ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !109
  store i8 %i.ft, ptr %i.fr, align 1, !tbaa !109
  %i.fu = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 8
  %.not.i130.7 = icmp eq ptr %i.fs, %i.bs
  br i1 %.not.i130.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9priv_copyEPKcS9_Pc.exit134, label %.lr.ph.i127, !llvm.loop !307

_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9priv_copyEPKcS9_Pc.exit134: ; preds = %.lr.ph.i127.prol.loopexit, %.lr.ph.i127, %middle.block401, %vec.epilog.middle.block417, %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE9priv_sizeEm.exit, %bb.j, %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit
  %.sink = phi i64 [ %i.k, %bb.j ], [ %i.k, %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit ], [ %i.bq, %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE9priv_sizeEm.exit ], [ %i.bq, %middle.block401 ], [ %i.bq, %vec.epilog.middle.block417 ], [ %i.bq, %.lr.ph.i127 ], [ %i.bq, %.lr.ph.i127.prol.loopexit ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %.sink, i1 false)
  %.0108 = add i64 %i.p, %i.k                     ; 3 uses
  %i.fw = load i8, ptr %0, align 8, !tbaa !109
  %i.fx = trunc i8 %i.fw to i1
  br i1 %i.fx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9priv_copyEPKcS9_Pc.exit134
  %i.fy = trunc i64 %.0108 to i8
  %i.fz = shl i8 %i.fy, 1
  %i.ga = or disjoint i8 %i.fz, 1
  store i8 %i.ga, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE9priv_sizeEm.exit135

bb.o:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9priv_copyEPKcS9_Pc.exit134
  %i.gb = load i64, ptr %0, align 8
  %i.gc = shl i64 %.0108, 1
  %i.gd = and i64 %i.gb, 1
  %i.ge = or disjoint i64 %i.gd, %i.gc
  store i64 %i.ge, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE9priv_sizeEm.exit135

_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE9priv_sizeEm.exit135: ; preds = %bb.n, %bb.o
  %i.gf = getelementptr inbounds i8, ptr %i.w, i64 %.0108
  store i8 0, ptr %i.gf, align 1, !tbaa !109
  %.pre179.pre = load i8, ptr %0, align 8, !tbaa !109
  %.pre180.pre = load ptr, ptr %i.f, align 8
  br label %bb.v

bb.p:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE12next_storageEmm.exit
  %i.gg = load ptr, ptr %i.b, align 8, !tbaa !128
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
  %wide.load230 = load <16 x i8>, ptr %next.gep229, align 1, !tbaa !109
  %wide.load231 = load <16 x i8>, ptr %i.gn, align 1, !tbaa !109
  %i.go = getelementptr i8, ptr %next.gep228, i64 16
  store <16 x i8> %wide.load230, ptr %next.gep228, align 1, !tbaa !109
  store <16 x i8> %wide.load231, ptr %i.go, align 1, !tbaa !109
  %index.next232 = add nuw i64 %index227, 32      ; 2 uses
  %i.gp = icmp eq i64 %index.next232, %n.vec225
  br i1 %i.gp, label %middle.block233, label %vector.body226, !llvm.loop !308

middle.block233:                                  ; preds = %vector.body226
  %cmp.n234 = icmp eq i64 %i.gi, %n.vec225
end_hunk_3
begin_hunk_4_@_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE6insertINS0_17constant_iteratorIcEEEEPcPKcT_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE:bb.a
  %i.aa = add i64 %.neg.i, %i.i                   ; 2 uses
  %i.ab = icmp ult i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.16) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ac = icmp ult i64 %i.v, 2305843009213693952
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = shl nuw i64 %i.v, 3
  %i.ae = udiv i64 %i.ad, 5
  br label %_ZNK5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE12next_storageEmm.exit

bb.g:                                             ; preds = %bb.e
  %i.af = icmp ugt i64 %i.v, -6917529027641081857
  %i.ag = shl i64 %i.v, 3
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 9223372036854775807)
  %i.ai = select i1 %i.af, i64 9223372036854775807, i64 %i.ah
  br label %_ZNK5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE12next_storageEmm.exit

_ZNK5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE12next_storageEmm.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i64 [ %i.ae, %bb.f ], [ %i.ai, %bb.g ]
  %i.aj = add i64 %i.aa, %i.v
  %i.ak = tail call noundef i64 @llvm.umax.i64(i64 %i.aj, i64 %.0.i.i)
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !127
  %i.al = add i64 %i.n, %i.i                      ; 3 uses
  %i.am = add i64 %i.al, 1
  %spec.store.select = select i1 %i.o, ptr null, ptr %i.g
  store ptr %spec.store.select, ptr %i.b, align 8, !tbaa !128
  %spec.select = select i1 %i.o, i32 1, i32 7
  %i.an = call noundef ptr @_ZN5boost9container3dtl24allocator_version_traitsINS0_4test16simple_allocatorIcEELj1EE18allocation_commandERS5_jmRmRPc(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %spec.select, i64 noundef %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 17 uses
  %i.ao = ptrtoaddr ptr %i.an to i64              ; 2 uses
  %i.ap = icmp eq ptr %i.u, %i.an
  br i1 %i.ap, label %bb.h, label %bb.p

bb.h:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE12next_storageEmm.exit
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !127
  store i64 %i.aq, ptr %i.p, align 8, !tbaa !132
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %i.ar = ptrtoint ptr %i.u to i64                ; 7 uses
  %.neg = sub i64 %i.ar, %i.h
  %i.as = add i64 %.neg, %i.n                     ; 4 uses
  %.not124 = icmp ult i64 %i.as, %i.i
  br i1 %.not124, label %bb.k, label %iter.check302

iter.check302:                                    ; preds = %bb.i
  %i.at = getelementptr i8, ptr %i.u, i64 %i.n    ; 6 uses
  %i.au = sub i64 %i.n, %i.i
  %i.av = getelementptr i8, ptr %i.u, i64 %i.au   ; 5 uses
  %min.iters.check286 = icmp ult i64 %i.i, 8
  br i1 %min.iters.check286, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check287

vector.main.loop.iter.check287:                   ; preds = %iter.check302
  %min.iters.check288 = icmp ult i64 %i.i, 32
  br i1 %min.iters.check288, label %vec.epilog.ph306, label %vector.ph289

vector.ph289:                                     ; preds = %vector.main.loop.iter.check287
  %i.aw = and i64 %i.i, 24
  %n.vec290 = and i64 %i.i, -32                   ; 5 uses
  %i.ax = getelementptr i8, ptr %i.at, i64 %n.vec290
  %i.ay = getelementptr i8, ptr %i.av, i64 %n.vec290
  br label %vector.body291

vector.body291:                                   ; preds = %vector.ph289, %vector.body291
  %index292 = phi i64 [ 0, %vector.ph289 ], [ %index.next297, %vector.body291 ] ; 3 uses
  %next.gep293 = getelementptr i8, ptr %i.at, i64 %index292 ; 2 uses
  %next.gep294 = getelementptr i8, ptr %i.av, i64 %index292 ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep293, i64 1
  %i.ba = getelementptr i8, ptr %next.gep294, i64 1
  %i.bb = getelementptr i8, ptr %next.gep294, i64 17
  %wide.load295 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !109
  %wide.load296 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !109
  %i.bc = getelementptr i8, ptr %next.gep293, i64 17
  store <16 x i8> %wide.load295, ptr %i.az, align 1, !tbaa !109
  store <16 x i8> %wide.load296, ptr %i.bc, align 1, !tbaa !109
  %index.next297 = add nuw i64 %index292, 32      ; 2 uses
  %i.bd = icmp eq i64 %index.next297, %n.vec290
  br i1 %i.bd, label %middle.block298, label %vector.body291, !llvm.loop !324

middle.block298:                                  ; preds = %vector.body291
  %cmp.n299 = icmp eq i64 %i.i, %n.vec290
  br i1 %cmp.n299, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit, label %vec.epilog.iter.check304

vec.epilog.iter.check304:                         ; preds = %middle.block298
  %min.epilog.iters.check305 = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check305, label %.lr.ph.i.preheader, label %vec.epilog.ph306, !prof !126

vec.epilog.ph306:                                 ; preds = %vector.main.loop.iter.check287, %vec.epilog.iter.check304
  %vec.epilog.resume.val300 = phi i64 [ %n.vec290, %vec.epilog.iter.check304 ], [ 0, %vector.main.loop.iter.check287 ]
  %n.vec307 = and i64 %i.i, -8                    ; 4 uses
  %i.be = getelementptr i8, ptr %i.at, i64 %n.vec307
  %i.bf = getelementptr i8, ptr %i.av, i64 %n.vec307
  br label %vec.epilog.vector.body308

vec.epilog.vector.body308:                        ; preds = %vec.epilog.vector.body308, %vec.epilog.ph306
  %index309 = phi i64 [ %vec.epilog.resume.val300, %vec.epilog.ph306 ], [ %index.next313, %vec.epilog.vector.body308 ] ; 3 uses
  %next.gep310 = getelementptr i8, ptr %i.at, i64 %index309
  %next.gep311 = getelementptr i8, ptr %i.av, i64 %index309
  %i.bg = getelementptr i8, ptr %next.gep310, i64 1
  %i.bh = getelementptr i8, ptr %next.gep311, i64 1
  %wide.load312 = load <8 x i8>, ptr %i.bh, align 1, !tbaa !109
  store <8 x i8> %wide.load312, ptr %i.bg, align 1, !tbaa !109
  %index.next313 = add nuw i64 %index309, 8       ; 2 uses
  %i.bi = icmp eq i64 %index.next313, %n.vec307
  br i1 %i.bi, label %vec.epilog.middle.block314, label %vec.epilog.vector.body308, !llvm.loop !325

vec.epilog.middle.block314:                       ; preds = %vec.epilog.vector.body308
  %cmp.n315 = icmp eq i64 %i.i, %n.vec307
  br i1 %cmp.n315, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check302, %vec.epilog.iter.check304, %vec.epilog.middle.block314
  %.0711.i.pn.ph = phi ptr [ %i.at, %iter.check302 ], [ %i.ax, %vec.epilog.iter.check304 ], [ %i.be, %vec.epilog.middle.block314 ]
  %.0810.i.pn.ph = phi ptr [ %i.av, %iter.check302 ], [ %i.ay, %vec.epilog.iter.check304 ], [ %i.bf, %vec.epilog.middle.block314 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0711.i.pn = phi ptr [ %.0711.i, %.lr.ph.i ], [ %.0711.i.pn.ph, %.lr.ph.i.preheader ]
  %.0810.i.pn = phi ptr [ %.0810.i, %.lr.ph.i ], [ %.0810.i.pn.ph, %.lr.ph.i.preheader ]
  %.0711.i = getelementptr i8, ptr %.0711.i.pn, i64 1 ; 2 uses
  %.0810.i = getelementptr i8, ptr %.0810.i.pn, i64 1 ; 3 uses
  %i.bj = load i8, ptr %.0810.i, align 1, !tbaa !109
  store i8 %i.bj, ptr %.0711.i, align 1, !tbaa !109
  %.not.i = icmp eq ptr %.0810.i, %i.at
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit, label %.lr.ph.i, !llvm.loop !326

_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit: ; preds = %.lr.ph.i, %vec.epilog.middle.block314, %middle.block298
  %i.bk = sub nuw i64 %i.as, %i.i
  %i.bl = add i64 %i.bk, 1                        ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.preheader.i, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit
  %i.bn = getelementptr inbounds i8, ptr %1, i64 %i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr align 1 %1, i64 %i.bl, i1 false)
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.j, %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit
  %.pre.i = load i8, ptr %2, align 1, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %.pre.i, i64 %i.i, i1 false), !tbaa !109
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9priv_copyINS0_17constant_iteratorIcEEPcEEvT_SC_T0_.exit

bb.k:                                             ; preds = %bb.i
  %.neg208 = xor i64 %i.as, -1
  %i.bo = add i64 %3, %.neg208
  %i.bp = getelementptr i8, ptr %i.u, i64 %i.n    ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 1      ; 2 uses
  %.not6.i = icmp eq i64 %i.bo, %5
  br i1 %.not6.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyINS0_17constant_iteratorIcEEPcEEmT_SC_T0_.exit, label %.lr.ph.preheader.i127

.lr.ph.preheader.i127:                            ; preds = %bb.k
  %.pre.i128 = load i8, ptr %2, align 1, !tbaa !109
  %i.br = add i64 %3, %i.h
  %i.bs = xor i64 %i.n, -1
  %i.bt = add i64 %i.br, %i.bs
  %i.bu = add i64 %5, %i.ar
  %i.bv = sub i64 %i.bt, %i.bu
  call void @llvm.memset.p0.i64(ptr align 1 %i.bq, i8 %.pre.i128, i64 %i.bv, i1 false), !tbaa !109
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyINS0_17constant_iteratorIcEEPcEEmT_SC_T0_.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyINS0_17constant_iteratorIcEEPcEEmT_SC_T0_.exit: ; preds = %.lr.ph.preheader.i127, %bb.k
  %i.bw = sub nuw i64 %i.i, %i.as
  %i.bx = add i64 %i.bw, %i.n                     ; 3 uses
  %i.by = load i8, ptr %0, align 8, !tbaa !109
  %i.bz = trunc i8 %i.by to i1
  br i1 %i.bz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyINS0_17constant_iteratorIcEEPcEEmT_SC_T0_.exit
  %i.ca = trunc i64 %i.bx to i8
  %i.cb = shl i8 %i.ca, 1
  %i.cc = or disjoint i8 %i.cb, 1
  store i8 %i.cc, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE9priv_sizeEm.exit

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyINS0_17constant_iteratorIcEEPcEEmT_SC_T0_.exit
  %i.cd = load i64, ptr %0, align 8
  %i.ce = shl i64 %i.bx, 1
  %i.cf = and i64 %i.cd, 1
  %i.cg = or disjoint i64 %i.cf, %i.ce
  store i64 %i.cg, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE9priv_sizeEm.exit: ; preds = %bb.l, %bb.m
  %.not9.i133 = icmp eq ptr %1, %i.bq
  br i1 %.not9.i133, label %.lr.ph.preheader.i141, label %iter.check336

iter.check336:                                    ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE9priv_sizeEm.exit
  %i.ch = getelementptr inbounds i8, ptr %i.u, i64 %i.bx ; 6 uses
  %i.ci = add i64 %i.n, %i.ar
  %i.cj = add i64 %i.ci, 1
  %i.ck = sub i64 %i.cj, %i.h                     ; 7 uses
  %min.iters.check320 = icmp ult i64 %i.ck, 8
  br i1 %min.iters.check320, label %.lr.ph.i134.preheader, label %vector.memcheck318

vector.memcheck318:                               ; preds = %iter.check336
  %i.cl = add i64 %3, %i.h
  %i.cm = add i64 %i.cl, %i.ar
  %i.cn = add i64 %5, %i.ar
  %i.co = add i64 %i.cn, %i.h
  %i.cp = sub i64 %i.co, %i.cm
  %diff.check319 = icmp ugt i64 %i.cp, -32
  br i1 %diff.check319, label %.lr.ph.i134.preheader, label %vector.main.loop.iter.check321

vector.main.loop.iter.check321:                   ; preds = %vector.memcheck318
  %min.iters.check322 = icmp ult i64 %i.ck, 32
  br i1 %min.iters.check322, label %vec.epilog.ph340, label %vector.ph323

vector.ph323:                                     ; preds = %vector.main.loop.iter.check321
  %i.cq = and i64 %i.ck, 24
  %n.vec324 = and i64 %i.ck, -32                  ; 5 uses
  %i.cr = getelementptr i8, ptr %i.ch, i64 %n.vec324
  %i.cs = getelementptr i8, ptr %1, i64 %n.vec324
  br label %vector.body325

vector.body325:                                   ; preds = %vector.ph323, %vector.body325
  %index326 = phi i64 [ 0, %vector.ph323 ], [ %index.next331, %vector.body325 ] ; 3 uses
  %next.gep327 = getelementptr i8, ptr %i.ch, i64 %index326 ; 2 uses
  %next.gep328 = getelementptr i8, ptr %1, i64 %index326 ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep328, i64 16
  %wide.load329 = load <16 x i8>, ptr %next.gep328, align 1, !tbaa !109
  %wide.load330 = load <16 x i8>, ptr %i.ct, align 1, !tbaa !109
  %i.cu = getelementptr i8, ptr %next.gep327, i64 16
  store <16 x i8> %wide.load329, ptr %next.gep327, align 1, !tbaa !109
  store <16 x i8> %wide.load330, ptr %i.cu, align 1, !tbaa !109
  %index.next331 = add nuw i64 %index326, 32      ; 2 uses
  %i.cv = icmp eq i64 %index.next331, %n.vec324
  br i1 %i.cv, label %middle.block332, label %vector.body325, !llvm.loop !327

middle.block332:                                  ; preds = %vector.body325
  %cmp.n333 = icmp eq i64 %i.ck, %n.vec324
  br i1 %cmp.n333, label %.lr.ph.preheader.i141, label %vec.epilog.iter.check338

vec.epilog.iter.check338:                         ; preds = %middle.block332
  %min.epilog.iters.check339 = icmp eq i64 %i.cq, 0
  br i1 %min.epilog.iters.check339, label %.lr.ph.i134.preheader, label %vec.epilog.ph340, !prof !126

vec.epilog.ph340:                                 ; preds = %vector.main.loop.iter.check321, %vec.epilog.iter.check338
  %vec.epilog.resume.val334 = phi i64 [ %n.vec324, %vec.epilog.iter.check338 ], [ 0, %vector.main.loop.iter.check321 ]
  %n.vec341 = and i64 %i.ck, -8                   ; 4 uses
  %i.cw = getelementptr i8, ptr %i.ch, i64 %n.vec341
  %i.cx = getelementptr i8, ptr %1, i64 %n.vec341
  br label %vec.epilog.vector.body342

vec.epilog.vector.body342:                        ; preds = %vec.epilog.vector.body342, %vec.epilog.ph340
  %index343 = phi i64 [ %vec.epilog.resume.val334, %vec.epilog.ph340 ], [ %index.next347, %vec.epilog.vector.body342 ] ; 3 uses
  %next.gep344 = getelementptr i8, ptr %i.ch, i64 %index343
  %next.gep345 = getelementptr i8, ptr %1, i64 %index343
  %wide.load346 = load <8 x i8>, ptr %next.gep345, align 1, !tbaa !109
  store <8 x i8> %wide.load346, ptr %next.gep344, align 1, !tbaa !109
  %index.next347 = add nuw i64 %index343, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next347, %n.vec341
  br i1 %i.cy, label %vec.epilog.middle.block348, label %vec.epilog.vector.body342, !llvm.loop !328

vec.epilog.middle.block348:                       ; preds = %vec.epilog.vector.body342
  %cmp.n349 = icmp eq i64 %i.ck, %n.vec341
  br i1 %cmp.n349, label %.lr.ph.preheader.i141, label %.lr.ph.i134.preheader

.lr.ph.i134.preheader:                            ; preds = %iter.check336, %vector.memcheck318, %vec.epilog.iter.check338, %vec.epilog.middle.block348
  %.0711.i135.ph = phi ptr [ %i.ch, %iter.check336 ], [ %i.ch, %vector.memcheck318 ], [ %i.cr, %vec.epilog.iter.check338 ], [ %i.cw, %vec.epilog.middle.block348 ] ; 2 uses
  %.0810.i136.ph = phi ptr [ %1, %iter.check336 ], [ %1, %vector.memcheck318 ], [ %i.cs, %vec.epilog.iter.check338 ], [ %i.cx, %vec.epilog.middle.block348 ] ; 3 uses
  %i.cz = add i64 %i.n, %i.ar                     ; 2 uses
  %i.da = add i64 %i.cz, 1
  %.0810.i136.ph357 = ptrtoaddr ptr %.0810.i136.ph to i64 ; 2 uses
  %i.db = sub i64 %i.da, %.0810.i136.ph357
  %i.dc = sub i64 %i.cz, %.0810.i136.ph357
  %xtraiter358.a = and i64 %i.db, 7               ; 2 uses
  %lcmp.mod359.not.a = icmp eq i64 %xtraiter358.a, 0
  br i1 %lcmp.mod359.not.a, label %.lr.ph.i134.prol.loopexit, label %.lr.ph.i134.prol

.lr.ph.i134.prol:                                 ; preds = %.lr.ph.i134.preheader, %.lr.ph.i134.prol
  %.0711.i135.prol = phi ptr [ %i.de, %.lr.ph.i134.prol ], [ %.0711.i135.ph, %.lr.ph.i134.preheader ] ; 2 uses
  %.0810.i136.prol = phi ptr [ %i.df, %.lr.ph.i134.prol ], [ %.0810.i136.ph, %.lr.ph.i134.preheader ] ; 2 uses
  %prol.iter360.a = phi i64 [ %prol.iter360.next.a, %.lr.ph.i134.prol ], [ 0, %.lr.ph.i134.preheader ]
  %i.dd = load i8, ptr %.0810.i136.prol, align 1, !tbaa !109
  store i8 %i.dd, ptr %.0711.i135.prol, align 1, !tbaa !109
  %i.de = getelementptr inbounds nuw i8, ptr %.0711.i135.prol, i64 1 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0810.i136.prol, i64 1 ; 2 uses
  %prol.iter360.next.a = add i64 %prol.iter360.a, 1 ; 2 uses
  %prol.iter360.cmp.not.a = icmp eq i64 %prol.iter360.next.a, %xtraiter358.a
  br i1 %prol.iter360.cmp.not.a, label %.lr.ph.i134.prol.loopexit, label %.lr.ph.i134.prol, !llvm.loop !329

.lr.ph.i134.prol.loopexit:                        ; preds = %.lr.ph.i134.prol, %.lr.ph.i134.preheader
  %.0711.i135.unr = phi ptr [ %.0711.i135.ph, %.lr.ph.i134.preheader ], [ %i.de, %.lr.ph.i134.prol ]
  %.0810.i136.unr = phi ptr [ %.0810.i136.ph, %.lr.ph.i134.preheader ], [ %i.df, %.lr.ph.i134.prol ]
  %i.dg = icmp ult i64 %i.dc, 7
  br i1 %i.dg, label %.lr.ph.preheader.i141, label %.lr.ph.i134

.lr.ph.i134:                                      ; preds = %.lr.ph.i134.prol.loopexit, %.lr.ph.i134
  %.0711.i135 = phi ptr [ %i.ed, %.lr.ph.i134 ], [ %.0711.i135.unr, %.lr.ph.i134.prol.loopexit ] ; 9 uses
  %.0810.i136 = phi ptr [ %i.ee, %.lr.ph.i134 ], [ %.0810.i136.unr, %.lr.ph.i134.prol.loopexit ] ; 9 uses
  %i.dh = load i8, ptr %.0810.i136, align 1, !tbaa !109
  store i8 %i.dh, ptr %.0711.i135, align 1, !tbaa !109
  %i.di = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 1
  %i.dj = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !109
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !109
  %i.dl = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 2
  %i.dm = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 2
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !109
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !109
  %i.do = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 3
  %i.dp = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 3
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !109
  store i8 %i.dq, ptr %i.do, align 1, !tbaa !109
  %i.dr = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 4
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !109
  store i8 %i.dt, ptr %i.dr, align 1, !tbaa !109
  %i.du = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 5
  %i.dv = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 5
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !109
  store i8 %i.dw, ptr %i.du, align 1, !tbaa !109
  %i.dx = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 6
  %i.dy = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 6
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !109
  store i8 %i.dz, ptr %i.dx, align 1, !tbaa !109
  %i.ea = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 7
  %i.eb = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 7 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !109
  store i8 %i.ec, ptr %i.ea, align 1, !tbaa !109
  %i.ed = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 8
  %.not.i137.7 = icmp eq ptr %i.eb, %i.bp
  br i1 %.not.i137.7, label %.lr.ph.preheader.i141, label %.lr.ph.i134, !llvm.loop !330

.lr.ph.preheader.i141:                            ; preds = %.lr.ph.i134.prol.loopexit, %.lr.ph.i134, %middle.block332, %vec.epilog.middle.block348, %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE9priv_sizeEm.exit
  %.pre.i142 = load i8, ptr %2, align 1, !tbaa !109
  %i.ef = add i64 %i.n, %i.ar
  %i.eg = add i64 %i.ef, 1
  %i.eh = sub i64 %i.eg, %i.h
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %.pre.i142, i64 %i.eh, i1 false), !tbaa !109
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9priv_copyINS0_17constant_iteratorIcEEPcEEvT_SC_T0_.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9priv_copyINS0_17constant_iteratorIcEEPcEEvT_SC_T0_.exit: ; preds = %.lr.ph.preheader.i, %.lr.ph.preheader.i141
  %.0118 = add i64 %i.n, %i.i                     ; 3 uses
  %i.ei = load i8, ptr %0, align 8, !tbaa !109
  %i.ej = trunc i8 %i.ei to i1
  br i1 %i.ej, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9priv_copyINS0_17constant_iteratorIcEEPcEEvT_SC_T0_.exit
  %i.ek = trunc i64 %.0118 to i8
  %i.el = shl i8 %i.ek, 1
  %i.em = or disjoint i8 %i.el, 1
  store i8 %i.em, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE9priv_sizeEm.exit148

bb.o:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9priv_copyINS0_17constant_iteratorIcEEPcEEvT_SC_T0_.exit
  %i.en = load i64, ptr %0, align 8
  %i.eo = shl i64 %.0118, 1
  %i.ep = and i64 %i.en, 1
  %i.eq = or disjoint i64 %i.ep, %i.eo
  store i64 %i.eq, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE9priv_sizeEm.exit148

_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE9priv_sizeEm.exit148: ; preds = %bb.n, %bb.o
  %i.er = getelementptr inbounds i8, ptr %i.u, i64 %.0118
  store i8 0, ptr %i.er, align 1, !tbaa !109
  %.pre214.pre = load i8, ptr %0, align 8, !tbaa !109
  %.pre215.pre = load ptr, ptr %i.f, align 8
  br label %bb.v

bb.p:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE12next_storageEmm.exit
  %i.es = load ptr, ptr %i.b, align 8, !tbaa !128
  %.not = icmp eq ptr %i.es, null
  br i1 %.not, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.et = ptrtoaddr ptr %i.u to i64               ; 5 uses
  %.not9.i149 = icmp eq ptr %i.u, %1
  br i1 %.not9.i149, label %.lr.ph.preheader.i158, label %iter.check

iter.check:                                       ; preds = %bb.q
  %i.eu = sub i64 %i.h, %i.et                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.eu, 8
  %i.ev = sub i64 %i.et, %i.ao
  %diff.check = icmp ugt i64 %i.ev, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i150.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check239 = icmp ult i64 %i.eu, 32
  br i1 %min.iters.check239, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ew = and i64 %i.eu, 24
  %n.vec = and i64 %i.eu, -32                     ; 5 uses
  %i.ex = getelementptr i8, ptr %i.an, i64 %n.vec
  %i.ey = getelementptr i8, ptr %i.u, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.an, i64 %index ; 2 uses
  %next.gep240 = getelementptr i8, ptr %i.u, i64 %index ; 2 uses
  %i.ez = getelementptr i8, ptr %next.gep240, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep240, align 1, !tbaa !109
  %wide.load241 = load <16 x i8>, ptr %i.ez, align 1, !tbaa !109
  %i.fa = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !109
  store <16 x i8> %wide.load241, ptr %i.fa, align 1, !tbaa !109
end_hunk_4
begin_hunk_5_@_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7replaceEPKcS9_mc:bb.a
bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %4, i64 %i.d, i1 false)
  br label %_ZNSt11char_traitsIcE6assignEPcmc.exit18

_ZNSt11char_traitsIcE6assignEPcmc.exit18:         ; preds = %bb.h, %bb.i
  %i.aj = sub nuw i64 %3, %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %4, ptr %i.a, align 1, !tbaa !109
  %i.ak = call noundef ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE6insertINS0_17constant_iteratorIcEEEEPcPKcT_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr nonnull %i.a, i64 %i.aj, ptr null, i64 0, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE5eraseEPKcS9_.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE5eraseEPKcS9_.exit: ; preds = %bb.g, %bb.f, %_ZNSt11char_traitsIcE6assignEPcmc.exit, %_ZNSt11char_traitsIcE6assignEPcmc.exit18
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7replaceEPKcS9_RKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %3, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 8 uses
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = load i64, ptr %3, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k ; 3 uses
  %i.m = icmp ne ptr %1, %2
  %i.n = icmp samesign ne i64 %i.k, 0
  %i.o = and i1 %i.m, %i.n
  br i1 %i.o, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.a
  %i.p = ptrtoaddr ptr %i.f to i64
  %i.q = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.r = ptrtoaddr ptr %2 to i64
  %i.s = xor i64 %i.q, -1
  %i.t = add i64 %i.s, %i.r
  %i.u = add nsw i64 %i.k, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.u)
  %i.v = add i64 %umin, 1                         ; 7 uses
  %min.iters.check = icmp ult i64 %i.v, 4
  %i.w = sub i64 %i.p, %i.q
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.x = and i64 %i.v, 28
  %n.vec = and i64 %i.v, -32                      ; 5 uses
  %i.y = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.z = getelementptr i8, ptr %i.f, i64 %n.vec   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.f, i64 %index ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep14, align 1, !tbaa !109
  %wide.load15 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !109
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !109
  store <16 x i8> %wide.load15, ptr %i.ab, align 1, !tbaa !109
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !345

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !115

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %i.v, -4                     ; 4 uses
  %i.ad = getelementptr i8, ptr %1, i64 %n.vec17  ; 2 uses
  %i.ae = getelementptr i8, ptr %i.f, i64 %n.vec17 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next22, %vec.epilog.vector.body ] ; 3 uses
  %next.gep19 = getelementptr i8, ptr %1, i64 %index18
  %next.gep20 = getelementptr i8, ptr %i.f, i64 %index18
  %wide.load21 = load <4 x i8>, ptr %next.gep20, align 1, !tbaa !109
  store <4 x i8> %wide.load21, ptr %next.gep19, align 1, !tbaa !109
  %index.next22 = add nuw i64 %index18, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next22, %n.vec17
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !346

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n23 = icmp eq i64 %i.v, %n.vec17
  br i1 %cmp.n23, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.019.i.ph = phi ptr [ %1, %iter.check ], [ %i.y, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ]
  %.01618.i.ph = phi ptr [ %i.f, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.019.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01618.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.01618.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ag = load i8, ptr %.01618.i, align 1, !tbaa !109
  store i8 %i.ag, ptr %.019.i, align 1, !tbaa !109
  %i.ah = getelementptr inbounds nuw i8, ptr %.019.i, i64 1 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01618.i, i64 1 ; 3 uses
  %i.aj = icmp ne ptr %i.ah, %2
  %i.ak = icmp ne ptr %i.ai, %i.l
  %i.al = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !347

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a
  %.016.lcssa.i = phi ptr [ %i.f, %bb.a ], [ %i.ae, %vec.epilog.middle.block ], [ %i.z, %middle.block ], [ %i.ai, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.ad, %vec.epilog.middle.block ], [ %i.y, %middle.block ], [ %i.ah, %.lr.ph.i ] ; 3 uses
  %i.am = icmp eq ptr %.016.lcssa.i, %i.l
  br i1 %i.am, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge.i
  %.not.i.i = icmp eq ptr %.0.lcssa.i, %2
  br i1 %.not.i.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7replaceIPKcEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ao = ptrtoint ptr %.0.lcssa.i to i64
  %.neg14.i.i = sub i64 %i.ao, %i.an
  %i.ap = load i8, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = lshr i8 %i.ap, 1
  %i.as = zext nneg i8 %i.ar to i64
  %i.at = load i64, ptr %0, align 8               ; 3 uses
  %i.au = lshr i64 %i.at, 1
  %i.av = select i1 %i.aq, i64 %i.as, i64 %i.au   ; 2 uses
  %i.aw = trunc i64 %i.at to i8
  %i.ax = trunc i64 %i.at to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = select i1 %i.ax, ptr %i.ay, ptr %i.ba
  %i.bc = add nuw i64 %i.av, 1
  %i.bd = ptrtoint ptr %i.bb to i64
  %.neg.i.i = sub i64 %i.bd, %i.an
  %i.be = add i64 %i.bc, %.neg.i.i                ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.lcssa.i, ptr align 1 %2, i64 %i.be, i1 false)
  %.pre.i.i = load i8, ptr %0, align 8, !tbaa !109
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i:       ; preds = %bb.d, %bb.c
  %i.bg = phi i8 [ %i.aw, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.bh = add i64 %i.av, %.neg14.i.i              ; 2 uses
  %i.bi = trunc i8 %i.bg to i1
  br i1 %i.bi, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.bj = trunc i64 %i.bh to i8
  %i.bk = shl i8 %i.bj, 1
  %i.bl = or disjoint i8 %i.bk, 1
  store i8 %i.bl, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7replaceIPKcEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.bm = load i64, ptr %0, align 8
  %i.bn = shl i64 %i.bh, 1
  %i.bo = and i64 %i.bm, 1
  %i.bp = or disjoint i64 %i.bo, %i.bn
  store i64 %i.bp, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7replaceIPKcEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.bq = tail call noundef ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE6insertIPKcEEPcSA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef %.016.lcssa.i, ptr noundef %i.l, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7replaceIPKcEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7replaceIPKcEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7replaceEPKcS9_S9_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %3, i64 %4 ; 3 uses
  %i.b = icmp ne ptr %1, %2
  %i.c = icmp ne i64 %4, 0
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.f = ptrtoaddr ptr %3 to i64
  %i.g = ptrtoaddr ptr %2 to i64
  %i.h = xor i64 %i.e, -1
  %i.i = add i64 %i.h, %i.g
  %i.j = add i64 %4, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.j)
  %i.k = add i64 %umin, 1                         ; 7 uses
  %min.iters.check = icmp ult i64 %i.k, 4
  %i.l = sub i64 %i.f, %i.e
  %diff.check = icmp ugt i64 %i.l, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i64 %i.k, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.k, 28
  %n.vec = and i64 %i.k, -32                      ; 5 uses
  %i.n = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.o = getelementptr i8, ptr %3, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep13 = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep13, align 1, !tbaa !109
  %wide.load14 = load <16 x i8>, ptr %i.p, align 1, !tbaa !109
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !109
  store <16 x i8> %wide.load14, ptr %i.q, align 1, !tbaa !109
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !348

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !115

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.k, -4                     ; 4 uses
  %i.s = getelementptr i8, ptr %1, i64 %n.vec16   ; 2 uses
  %i.t = getelementptr i8, ptr %3, i64 %n.vec16   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 3 uses
  %next.gep18 = getelementptr i8, ptr %1, i64 %index17
  %next.gep19 = getelementptr i8, ptr %3, i64 %index17
  %wide.load20 = load <4 x i8>, ptr %next.gep19, align 1, !tbaa !109
  store <4 x i8> %wide.load20, ptr %next.gep18, align 1, !tbaa !109
  %index.next21 = add nuw i64 %index17, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next21, %n.vec16
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !349

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %i.k, %n.vec16
  br i1 %cmp.n22, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.019.i.ph = phi ptr [ %1, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  %.01618.i.ph = phi ptr [ %3, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.019.i = phi ptr [ %i.w, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01618.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.01618.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.v = load i8, ptr %.01618.i, align 1, !tbaa !109
  store i8 %i.v, ptr %.019.i, align 1, !tbaa !109
  %i.w = getelementptr inbounds nuw i8, ptr %.019.i, i64 1 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01618.i, i64 1 ; 3 uses
  %i.y = icmp ne ptr %i.w, %2
  %i.z = icmp ne ptr %i.x, %i.a
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  br i1 %i.aa, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !350

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a
  %.016.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.t, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %i.x, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.s, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %i.w, %.lr.ph.i ] ; 3 uses
  %i.ab = icmp eq ptr %.016.lcssa.i, %i.a
  br i1 %i.ab, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge.i
  %.not.i.i = icmp eq ptr %.0.lcssa.i, %2
  br i1 %.not.i.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7replaceIPKcEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ad = ptrtoint ptr %.0.lcssa.i to i64
  %.neg14.i.i = sub i64 %i.ad, %i.ac
  %i.ae = load i8, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.af = trunc i8 %i.ae to i1
  %i.ag = lshr i8 %i.ae, 1
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = load i64, ptr %0, align 8               ; 3 uses
  %i.aj = lshr i64 %i.ai, 1
  %i.ak = select i1 %i.af, i64 %i.ah, i64 %i.aj   ; 2 uses
  %i.al = trunc i64 %i.ai to i8
  %i.am = trunc i64 %i.ai to i1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = select i1 %i.am, ptr %i.an, ptr %i.ap
  %i.ar = add nuw i64 %i.ak, 1
  %i.as = ptrtoint ptr %i.aq to i64
  %.neg.i.i = sub i64 %i.as, %i.ac
  %i.at = add i64 %i.ar, %.neg.i.i                ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.lcssa.i, ptr align 1 %2, i64 %i.at, i1 false)
  %.pre.i.i = load i8, ptr %0, align 8, !tbaa !109
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i:       ; preds = %bb.d, %bb.c
  %i.av = phi i8 [ %i.al, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.aw = add i64 %i.ak, %.neg14.i.i              ; 2 uses
  %i.ax = trunc i8 %i.av to i1
  br i1 %i.ax, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.ay = trunc i64 %i.aw to i8
  %i.az = shl i8 %i.ay, 1
  %i.ba = or disjoint i8 %i.az, 1
  store i8 %i.ba, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7replaceIPKcEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.bb = load i64, ptr %0, align 8
  %i.bc = shl i64 %i.aw, 1
  %i.bd = and i64 %i.bb, 1
  %i.be = or disjoint i64 %i.bd, %i.bc
  store i64 %i.be, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7replaceIPKcEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.bf = tail call noundef ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE6insertIPKcEEPcSA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef %.016.lcssa.i, ptr noundef %i.a, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7replaceIPKcEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7replaceIPKcEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7replaceEPKcS9_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 %i.a ; 3 uses
  %i.c = icmp ne ptr %1, %2
  %i.d = icmp samesign ne i64 %i.a, 0
  %i.e = and i1 %i.c, %i.d
  br i1 %i.e, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.a
  %i.f = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.g = ptrtoaddr ptr %3 to i64
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = xor i64 %i.f, -1
  %i.j = add i64 %i.i, %i.h
  %i.k = add i64 %i.a, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.k)
  %i.l = add i64 %umin, 1                         ; 7 uses
  %min.iters.check = icmp ult i64 %i.l, 4
  %i.m = sub i64 %i.g, %i.f
  %diff.check = icmp ugt i64 %i.m, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %i.l, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.l, 28
  %n.vec = and i64 %i.l, -32                      ; 5 uses
  %i.o = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.p = getelementptr i8, ptr %3, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep14 = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep14, align 1, !tbaa !109
  %wide.load15 = load <16 x i8>, ptr %i.q, align 1, !tbaa !109
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !109
  store <16 x i8> %wide.load15, ptr %i.r, align 1, !tbaa !109
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !351

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !115

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %i.l, -4                     ; 4 uses
  %i.t = getelementptr i8, ptr %1, i64 %n.vec17   ; 2 uses
  %i.u = getelementptr i8, ptr %3, i64 %n.vec17   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next22, %vec.epilog.vector.body ] ; 3 uses
  %next.gep19 = getelementptr i8, ptr %1, i64 %index18
  %next.gep20 = getelementptr i8, ptr %3, i64 %index18
  %wide.load21 = load <4 x i8>, ptr %next.gep20, align 1, !tbaa !109
  store <4 x i8> %wide.load21, ptr %next.gep19, align 1, !tbaa !109
  %index.next22 = add nuw i64 %index18, 4         ; 2 uses
  %i.v = icmp eq i64 %index.next22, %n.vec17
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !352

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n23 = icmp eq i64 %i.l, %n.vec17
  br i1 %cmp.n23, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.019.i.ph = phi ptr [ %1, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  %.01618.i.ph = phi ptr [ %3, %iter.check ], [ %i.p, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.019.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01618.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.01618.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.w = load i8, ptr %.01618.i, align 1, !tbaa !109
  store i8 %i.w, ptr %.019.i, align 1, !tbaa !109
  %i.x = getelementptr inbounds nuw i8, ptr %.019.i, i64 1 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.01618.i, i64 1 ; 3 uses
  %i.z = icmp ne ptr %i.x, %2
  %i.aa = icmp ne ptr %i.y, %i.b
  %i.ab = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !353

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a
  %.016.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.u, %vec.epilog.middle.block ], [ %i.p, %middle.block ], [ %i.y, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.t, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %i.x, %.lr.ph.i ] ; 3 uses
  %i.ac = icmp eq ptr %.016.lcssa.i, %i.b
  br i1 %i.ac, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge.i
  %.not.i.i = icmp eq ptr %.0.lcssa.i, %2
  br i1 %.not.i.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7replaceIPKcEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ae = ptrtoint ptr %.0.lcssa.i to i64
  %.neg14.i.i = sub i64 %i.ae, %i.ad
  %i.af = load i8, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.ag = trunc i8 %i.af to i1
  %i.ah = lshr i8 %i.af, 1
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = load i64, ptr %0, align 8               ; 3 uses
  %i.ak = lshr i64 %i.aj, 1
  %i.al = select i1 %i.ag, i64 %i.ai, i64 %i.ak   ; 2 uses
  %i.am = trunc i64 %i.aj to i8
  %i.an = trunc i64 %i.aj to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = select i1 %i.an, ptr %i.ao, ptr %i.aq
  %i.as = add nuw i64 %i.al, 1
  %i.at = ptrtoint ptr %i.ar to i64
  %.neg.i.i = sub i64 %i.at, %i.ad
  %i.au = add i64 %i.as, %.neg.i.i                ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.lcssa.i, ptr align 1 %2, i64 %i.au, i1 false)
  %.pre.i.i = load i8, ptr %0, align 8, !tbaa !109
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i:       ; preds = %bb.d, %bb.c
  %i.aw = phi i8 [ %i.am, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.ax = add i64 %i.al, %.neg14.i.i              ; 2 uses
  %i.ay = trunc i8 %i.aw to i1
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.az = trunc i64 %i.ax to i8
  %i.ba = shl i8 %i.az, 1
  %i.bb = or disjoint i8 %i.ba, 1
  store i8 %i.bb, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7replaceIPKcEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.bc = load i64, ptr %0, align 8
  %i.bd = shl i64 %i.ax, 1
  %i.be = and i64 %i.bc, 1
  %i.bf = or disjoint i64 %i.be, %i.bd
  store i64 %i.bf, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7replaceIPKcEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.bg = tail call noundef ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE6insertIPKcEEPcSA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef nonnull %.016.lcssa.i, ptr noundef nonnull %i.b, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7replaceIPKcEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7replaceIPKcEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7replaceEPKcS9_St16initializer_listIcE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr %3, i64 %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 3 uses
  %i.b = icmp ne ptr %1, %2
  %i.c = icmp samesign ne i64 %4, 0
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.f = ptrtoaddr ptr %3 to i64
  %i.g = ptrtoaddr ptr %2 to i64
  %i.h = xor i64 %i.e, -1
  %i.i = add i64 %i.h, %i.g
  %i.j = add i64 %4, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.j)
  %i.k = add i64 %umin, 1                         ; 7 uses
  %min.iters.check = icmp ult i64 %i.k, 4
  %i.l = sub i64 %i.f, %i.e
  %diff.check = icmp ugt i64 %i.l, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check11 = icmp ult i64 %i.k, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.k, 28
  %n.vec = and i64 %i.k, -32                      ; 5 uses
  %i.n = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.o = getelementptr i8, ptr %3, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep12 = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep12, align 1, !tbaa !109
  %wide.load13 = load <16 x i8>, ptr %i.p, align 1, !tbaa !109
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !109
  store <16 x i8> %wide.load13, ptr %i.q, align 1, !tbaa !109
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !354

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !115

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %i.k, -4                     ; 4 uses
  %i.s = getelementptr i8, ptr %1, i64 %n.vec15   ; 2 uses
  %i.t = getelementptr i8, ptr %3, i64 %n.vec15   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ] ; 3 uses
  %next.gep17 = getelementptr i8, ptr %1, i64 %index16
  %next.gep18 = getelementptr i8, ptr %3, i64 %index16
  %wide.load19 = load <4 x i8>, ptr %next.gep18, align 1, !tbaa !109
  store <4 x i8> %wide.load19, ptr %next.gep17, align 1, !tbaa !109
  %index.next20 = add nuw i64 %index16, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next20, %n.vec15
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !355

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n21 = icmp eq i64 %i.k, %n.vec15
  br i1 %cmp.n21, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.019.i.ph = phi ptr [ %1, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  %.01618.i.ph = phi ptr [ %3, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.019.i = phi ptr [ %i.w, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01618.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.01618.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.v = load i8, ptr %.01618.i, align 1, !tbaa !109
  store i8 %i.v, ptr %.019.i, align 1, !tbaa !109
  %i.w = getelementptr inbounds nuw i8, ptr %.019.i, i64 1 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01618.i, i64 1 ; 3 uses
  %i.y = icmp ne ptr %i.w, %2
  %i.z = icmp ne ptr %i.x, %i.a
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  br i1 %i.aa, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !356

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a
  %.016.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.t, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %i.x, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.s, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %i.w, %.lr.ph.i ] ; 3 uses
  %i.ab = icmp eq ptr %.016.lcssa.i, %i.a
  br i1 %i.ab, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge.i
  %.not.i.i = icmp eq ptr %.0.lcssa.i, %2
  br i1 %.not.i.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7replaceIPKcEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ad = ptrtoint ptr %.0.lcssa.i to i64
  %.neg14.i.i = sub i64 %i.ad, %i.ac
  %i.ae = load i8, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.af = trunc i8 %i.ae to i1
  %i.ag = lshr i8 %i.ae, 1
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = load i64, ptr %0, align 8               ; 3 uses
  %i.aj = lshr i64 %i.ai, 1
  %i.ak = select i1 %i.af, i64 %i.ah, i64 %i.aj   ; 2 uses
  %i.al = trunc i64 %i.ai to i8
  %i.am = trunc i64 %i.ai to i1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = select i1 %i.am, ptr %i.an, ptr %i.ap
  %i.ar = add nuw i64 %i.ak, 1
  %i.as = ptrtoint ptr %i.aq to i64
  %.neg.i.i = sub i64 %i.as, %i.ac
  %i.at = add i64 %i.ar, %.neg.i.i                ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.lcssa.i, ptr align 1 %2, i64 %i.at, i1 false)
  %.pre.i.i = load i8, ptr %0, align 8, !tbaa !109
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i:       ; preds = %bb.d, %bb.c
  %i.av = phi i8 [ %i.al, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.aw = add i64 %i.ak, %.neg14.i.i              ; 2 uses
  %i.ax = trunc i8 %i.av to i1
  br i1 %i.ax, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.ay = trunc i64 %i.aw to i8
  %i.az = shl i8 %i.ay, 1
  %i.ba = or disjoint i8 %i.az, 1
  store i8 %i.ba, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7replaceIPKcEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.bb = load i64, ptr %0, align 8
  %i.bc = shl i64 %i.aw, 1
  %i.bd = and i64 %i.bb, 1
  %i.be = or disjoint i64 %i.bd, %i.bc
  store i64 %i.be, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7replaceIPKcEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.bf = tail call noundef ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE6insertIPKcEEPcSA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef %.016.lcssa.i, ptr noundef %i.a, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7replaceIPKcEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7replaceIPKcEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE4copyEPcmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %3, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.9) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = lshr i64 %i.e, 1
  %i.k = and i64 %i.j, 127
  %i.l = select i1 %i.i, i64 %i.k, i64 %i.f
  %i.m = sub nsw i64 %i.l, %3
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.m) ; 3 uses
  %i.n = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.n, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.i, ptr %i.o, ptr %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.s, i64 %.sroa.speculated, i1 false)
  br label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit

_ZNSt11char_traitsIcE4copyEPcPKcm.exit:           ; preds = %bb.c, %bb.d
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca [24 x i8], align 8          ; 4 uses
  %2 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::test::simple_allocator<char>, void>::short_t", align 1 ; 4 uses
  %3 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::test::simple_allocator<char>, void>::short_t", align 1 ; 4 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
  %i.c = load i8, ptr %1, align 8, !tbaa !109
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
end_hunk_5
begin_hunk_6_@_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE6insertIPKcEEPcS8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE:bb.a
  %.0711.i.pn.ph = phi ptr [ %i.av, %iter.check337 ], [ %i.az, %vec.epilog.iter.check339 ], [ %i.bg, %vec.epilog.middle.block349 ]
  %.0810.i.pn.ph = phi ptr [ %i.ax, %iter.check337 ], [ %i.ba, %vec.epilog.iter.check339 ], [ %i.bh, %vec.epilog.middle.block349 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0711.i.pn = phi ptr [ %.0711.i, %.lr.ph.i ], [ %.0711.i.pn.ph, %.lr.ph.i.preheader ]
  %.0810.i.pn = phi ptr [ %.0810.i, %.lr.ph.i ], [ %.0810.i.pn.ph, %.lr.ph.i.preheader ]
  %.0711.i = getelementptr i8, ptr %.0711.i.pn, i64 1 ; 2 uses
  %.0810.i = getelementptr i8, ptr %.0810.i.pn, i64 1 ; 3 uses
  %i.bl = load i8, ptr %.0810.i, align 1, !tbaa !109
  store i8 %i.bl, ptr %.0711.i, align 1, !tbaa !109
  %.not.i = icmp eq ptr %.0810.i, %i.av
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPcS7_EEmT_S8_T0_.exit, label %.lr.ph.i, !llvm.loop !488

_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPcS7_EEmT_S8_T0_.exit: ; preds = %.lr.ph.i, %vec.epilog.middle.block349, %middle.block333
  %i.bm = sub nuw i64 %i.au, %i.k
  %i.bn = add i64 %i.bm, 1                        ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE9priv_copyEPKcS7_Pc.exit134, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPcS7_EEmT_S8_T0_.exit
  %i.bp = getelementptr inbounds i8, ptr %1, i64 %i.k
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bn, i1 false)
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE9priv_copyEPKcS7_Pc.exit134

bb.k:                                             ; preds = %bb.i
  %i.bq = add nuw i64 %i.au, 1                    ; 6 uses
  %i.br = getelementptr i8, ptr %2, i64 %i.bq     ; 6 uses
  %i.bs = getelementptr i8, ptr %i.w, i64 %i.p    ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 1      ; 6 uses
  %.not9.i119 = icmp eq ptr %i.br, %3
  br i1 %.not9.i119, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPKcPcEEmT_SA_T0_.exit, label %iter.check371

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
  %wide.load364 = load <16 x i8>, ptr %next.gep363, align 1, !tbaa !109
  %wide.load365 = load <16 x i8>, ptr %i.cd, align 1, !tbaa !109
  %i.ce = getelementptr i8, ptr %next.gep362, i64 16
  store <16 x i8> %wide.load364, ptr %next.gep362, align 1, !tbaa !109
  store <16 x i8> %wide.load365, ptr %i.ce, align 1, !tbaa !109
  %index.next366 = add nuw i64 %index361, 32      ; 2 uses
  %i.cf = icmp eq i64 %index.next366, %n.vec359
  br i1 %i.cf, label %middle.block367, label %vector.body360, !llvm.loop !489

middle.block367:                                  ; preds = %vector.body360
  %cmp.n368 = icmp eq i64 %i.by, %n.vec359
  br i1 %cmp.n368, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPKcPcEEmT_SA_T0_.exit, label %vec.epilog.iter.check373

vec.epilog.iter.check373:                         ; preds = %middle.block367
  %min.epilog.iters.check374 = icmp eq i64 %i.ca, 0
  br i1 %min.epilog.iters.check374, label %.lr.ph.i120.preheader, label %vec.epilog.ph375, !prof !126

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
  %wide.load381 = load <8 x i8>, ptr %next.gep380, align 1, !tbaa !109
  store <8 x i8> %wide.load381, ptr %next.gep379, align 1, !tbaa !109
  %index.next382 = add nuw i64 %index378, 8       ; 2 uses
  %i.ci = icmp eq i64 %index.next382, %n.vec376
  br i1 %i.ci, label %vec.epilog.middle.block383, label %vec.epilog.vector.body377, !llvm.loop !490

vec.epilog.middle.block383:                       ; preds = %vec.epilog.vector.body377
  %cmp.n384 = icmp eq i64 %i.by, %n.vec376
  br i1 %cmp.n384, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPKcPcEEmT_SA_T0_.exit, label %.lr.ph.i120.preheader

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
  %i.ck = load i8, ptr %.0810.i122.prol, align 1, !tbaa !109
  store i8 %i.ck, ptr %.0711.i121.prol, align 1, !tbaa !109
  %i.cl = getelementptr inbounds nuw i8, ptr %.0711.i121.prol, i64 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0810.i122.prol, i64 1 ; 2 uses
  %prol.iter438.next = add i64 %prol.iter438, 1   ; 2 uses
  %prol.iter438.cmp.not = icmp eq i64 %prol.iter438.next, %xtraiter436
  br i1 %prol.iter438.cmp.not, label %.lr.ph.i120.prol.loopexit, label %.lr.ph.i120.prol, !llvm.loop !491

.lr.ph.i120.prol.loopexit:                        ; preds = %.lr.ph.i120.prol, %.lr.ph.i120.preheader
  %.0711.i121.unr = phi ptr [ %.0711.i121.ph, %.lr.ph.i120.preheader ], [ %i.cl, %.lr.ph.i120.prol ]
  %.0810.i122.unr = phi ptr [ %.0810.i122.ph, %.lr.ph.i120.preheader ], [ %i.cm, %.lr.ph.i120.prol ]
  %i.cn = sub i64 %.0810.i122.ph435, %i.i
  %i.co = icmp ugt i64 %i.cn, -8
  br i1 %i.co, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPKcPcEEmT_SA_T0_.exit, label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %.lr.ph.i120.prol.loopexit, %.lr.ph.i120
  %.0711.i121 = phi ptr [ %i.dl, %.lr.ph.i120 ], [ %.0711.i121.unr, %.lr.ph.i120.prol.loopexit ] ; 9 uses
  %.0810.i122 = phi ptr [ %i.dm, %.lr.ph.i120 ], [ %.0810.i122.unr, %.lr.ph.i120.prol.loopexit ] ; 9 uses
  %i.cp = load i8, ptr %.0810.i122, align 1, !tbaa !109
  store i8 %i.cp, ptr %.0711.i121, align 1, !tbaa !109
  %i.cq = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !109
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !109
  %i.ct = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 2
  %i.cu = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 2
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !109
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !109
  %i.cw = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 3
  %i.cx = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 3
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !109
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !109
  %i.cz = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 4
  %i.db = load i8, ptr %i.da, align 1, !tbaa !109
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !109
  %i.dc = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 5
  %i.dd = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 5
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !109
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !109
  %i.df = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 6
  %i.dg = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 6
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !109
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !109
  %i.di = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 7
  %i.dj = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 7
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !109
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !109
  %i.dl = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 8 ; 2 uses
  %.not.i123.7 = icmp eq ptr %i.dm, %3
  br i1 %.not.i123.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPKcPcEEmT_SA_T0_.exit, label %.lr.ph.i120, !llvm.loop !492

_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPKcPcEEmT_SA_T0_.exit: ; preds = %.lr.ph.i120.prol.loopexit, %.lr.ph.i120, %middle.block367, %vec.epilog.middle.block383, %bb.k
  %i.dn = sub nuw i64 %i.k, %i.au
  %i.do = add i64 %i.dn, %i.p                     ; 3 uses
  %i.dp = load i8, ptr %0, align 8, !tbaa !109
  %i.dq = trunc i8 %i.dp to i1
  br i1 %i.dq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPKcPcEEmT_SA_T0_.exit
  %i.dr = trunc i64 %i.do to i8
  %i.ds = shl i8 %i.dr, 1
  %i.dt = or disjoint i8 %i.ds, 1
  store i8 %i.dt, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseISaIcEvE9priv_sizeEm.exit

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPKcPcEEmT_SA_T0_.exit
  %i.du = load i64, ptr %0, align 8
  %i.dv = shl i64 %i.do, 1
  %i.dw = and i64 %i.du, 1
  %i.dx = or disjoint i64 %i.dw, %i.dv
  store i64 %i.dx, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseISaIcEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseISaIcEvE9priv_sizeEm.exit: ; preds = %bb.l, %bb.m
  %.not9.i126 = icmp eq ptr %1, %i.bt
  br i1 %.not9.i126, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE9priv_copyEPKcS7_Pc.exit134, label %iter.check405

iter.check405:                                    ; preds = %_ZN5boost9container3dtl17basic_string_baseISaIcEvE9priv_sizeEm.exit
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
  %wide.load398 = load <16 x i8>, ptr %next.gep397, align 1, !tbaa !109
  %wide.load399 = load <16 x i8>, ptr %i.ek, align 1, !tbaa !109
  %i.el = getelementptr i8, ptr %next.gep396, i64 16
  store <16 x i8> %wide.load398, ptr %next.gep396, align 1, !tbaa !109
  store <16 x i8> %wide.load399, ptr %i.el, align 1, !tbaa !109
  %index.next400 = add nuw i64 %index395, 32      ; 2 uses
  %i.em = icmp eq i64 %index.next400, %n.vec393
  br i1 %i.em, label %middle.block401, label %vector.body394, !llvm.loop !493

middle.block401:                                  ; preds = %vector.body394
  %cmp.n402 = icmp eq i64 %i.eb, %n.vec393
  br i1 %cmp.n402, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE9priv_copyEPKcS7_Pc.exit134, label %vec.epilog.iter.check407

vec.epilog.iter.check407:                         ; preds = %middle.block401
  %min.epilog.iters.check408 = icmp eq i64 %i.eh, 0
  br i1 %min.epilog.iters.check408, label %.lr.ph.i127.preheader, label %vec.epilog.ph409, !prof !126

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
  %wide.load415 = load <8 x i8>, ptr %next.gep414, align 1, !tbaa !109
  store <8 x i8> %wide.load415, ptr %next.gep413, align 1, !tbaa !109
  %index.next416 = add nuw i64 %index412, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next416, %n.vec410
  br i1 %i.ep, label %vec.epilog.middle.block417, label %vec.epilog.vector.body411, !llvm.loop !494

vec.epilog.middle.block417:                       ; preds = %vec.epilog.vector.body411
  %cmp.n418 = icmp eq i64 %i.eb, %n.vec410
  br i1 %cmp.n418, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE9priv_copyEPKcS7_Pc.exit134, label %.lr.ph.i127.preheader

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
  %i.eu = load i8, ptr %.0810.i129.prol, align 1, !tbaa !109
  store i8 %i.eu, ptr %.0711.i128.prol, align 1, !tbaa !109
  %i.ev = getelementptr inbounds nuw i8, ptr %.0711.i128.prol, i64 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.0810.i129.prol, i64 1 ; 2 uses
  %prol.iter442.next = add i64 %prol.iter442, 1   ; 2 uses
  %prol.iter442.cmp.not = icmp eq i64 %prol.iter442.next, %xtraiter440
  br i1 %prol.iter442.cmp.not, label %.lr.ph.i127.prol.loopexit, label %.lr.ph.i127.prol, !llvm.loop !495

.lr.ph.i127.prol.loopexit:                        ; preds = %.lr.ph.i127.prol, %.lr.ph.i127.preheader
  %.0711.i128.unr = phi ptr [ %.0711.i128.ph, %.lr.ph.i127.preheader ], [ %i.ev, %.lr.ph.i127.prol ]
  %.0810.i129.unr = phi ptr [ %.0810.i129.ph, %.lr.ph.i127.preheader ], [ %i.ew, %.lr.ph.i127.prol ]
  %i.ex = icmp ult i64 %i.et, 7
  br i1 %i.ex, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE9priv_copyEPKcS7_Pc.exit134, label %.lr.ph.i127

.lr.ph.i127:                                      ; preds = %.lr.ph.i127.prol.loopexit, %.lr.ph.i127
  %.0711.i128 = phi ptr [ %i.fu, %.lr.ph.i127 ], [ %.0711.i128.unr, %.lr.ph.i127.prol.loopexit ] ; 9 uses
  %.0810.i129 = phi ptr [ %i.fv, %.lr.ph.i127 ], [ %.0810.i129.unr, %.lr.ph.i127.prol.loopexit ] ; 9 uses
  %i.ey = load i8, ptr %.0810.i129, align 1, !tbaa !109
  store i8 %i.ey, ptr %.0711.i128, align 1, !tbaa !109
  %i.ez = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 1
  %i.fa = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !109
  store i8 %i.fb, ptr %i.ez, align 1, !tbaa !109
  %i.fc = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 2
  %i.fd = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 2
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !109
  store i8 %i.fe, ptr %i.fc, align 1, !tbaa !109
  %i.ff = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 3
  %i.fg = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 3
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !109
  store i8 %i.fh, ptr %i.ff, align 1, !tbaa !109
  %i.fi = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 4
  %i.fj = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 4
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !109
  store i8 %i.fk, ptr %i.fi, align 1, !tbaa !109
  %i.fl = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 5
  %i.fm = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 5
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !109
  store i8 %i.fn, ptr %i.fl, align 1, !tbaa !109
  %i.fo = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 6
  %i.fp = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 6
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !109
  store i8 %i.fq, ptr %i.fo, align 1, !tbaa !109
  %i.fr = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 7
  %i.fs = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 7 ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !109
  store i8 %i.ft, ptr %i.fr, align 1, !tbaa !109
  %i.fu = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 8
  %.not.i130.7 = icmp eq ptr %i.fs, %i.bs
  br i1 %.not.i130.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE9priv_copyEPKcS7_Pc.exit134, label %.lr.ph.i127, !llvm.loop !496

_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE9priv_copyEPKcS7_Pc.exit134: ; preds = %.lr.ph.i127.prol.loopexit, %.lr.ph.i127, %middle.block401, %vec.epilog.middle.block417, %_ZN5boost9container3dtl17basic_string_baseISaIcEvE9priv_sizeEm.exit, %bb.j, %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPcS7_EEmT_S8_T0_.exit
  %.sink = phi i64 [ %i.k, %bb.j ], [ %i.k, %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPcS7_EEmT_S8_T0_.exit ], [ %i.bq, %_ZN5boost9container3dtl17basic_string_baseISaIcEvE9priv_sizeEm.exit ], [ %i.bq, %middle.block401 ], [ %i.bq, %vec.epilog.middle.block417 ], [ %i.bq, %.lr.ph.i127 ], [ %i.bq, %.lr.ph.i127.prol.loopexit ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %.sink, i1 false)
  %.0108 = add i64 %i.p, %i.k                     ; 3 uses
  %i.fw = load i8, ptr %0, align 8, !tbaa !109
  %i.fx = trunc i8 %i.fw to i1
  br i1 %i.fx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE9priv_copyEPKcS7_Pc.exit134
  %i.fy = trunc i64 %.0108 to i8
  %i.fz = shl i8 %i.fy, 1
  %i.ga = or disjoint i8 %i.fz, 1
  store i8 %i.ga, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseISaIcEvE9priv_sizeEm.exit135

bb.o:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE9priv_copyEPKcS7_Pc.exit134
  %i.gb = load i64, ptr %0, align 8
  %i.gc = shl i64 %.0108, 1
  %i.gd = and i64 %i.gb, 1
  %i.ge = or disjoint i64 %i.gd, %i.gc
  store i64 %i.ge, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseISaIcEvE9priv_sizeEm.exit135

_ZN5boost9container3dtl17basic_string_baseISaIcEvE9priv_sizeEm.exit135: ; preds = %bb.n, %bb.o
  %i.gf = getelementptr inbounds i8, ptr %i.w, i64 %.0108
  store i8 0, ptr %i.gf, align 1, !tbaa !109
  %.pre179.pre = load i8, ptr %0, align 8, !tbaa !109
  %.pre180.pre = load ptr, ptr %i.f, align 8
  br label %bb.v

bb.p:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseISaIcEvE12next_storageEmm.exit
  %i.gg = load ptr, ptr %i.b, align 8, !tbaa !128
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
  %wide.load230 = load <16 x i8>, ptr %next.gep229, align 1, !tbaa !109
  %wide.load231 = load <16 x i8>, ptr %i.gn, align 1, !tbaa !109
  %i.go = getelementptr i8, ptr %next.gep228, i64 16
  store <16 x i8> %wide.load230, ptr %next.gep228, align 1, !tbaa !109
  store <16 x i8> %wide.load231, ptr %i.go, align 1, !tbaa !109
  %index.next232 = add nuw i64 %index227, 32      ; 2 uses
  %i.gp = icmp eq i64 %index.next232, %n.vec225
  br i1 %i.gp, label %middle.block233, label %vector.body226, !llvm.loop !497

middle.block233:                                  ; preds = %vector.body226
  %cmp.n234 = icmp eq i64 %i.gi, %n.vec225
end_hunk_6
begin_hunk_7_@_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE6insertINS0_17constant_iteratorIcEEEEPcPKcT_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE:bb.a
  %i.aa = add i64 %.neg.i, %i.i                   ; 2 uses
  %i.ab = icmp ult i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.16) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ac = icmp ult i64 %i.v, 2305843009213693952
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = shl nuw i64 %i.v, 3
  %i.ae = udiv i64 %i.ad, 5
  br label %_ZNK5boost9container3dtl17basic_string_baseISaIcEvE12next_storageEmm.exit

bb.g:                                             ; preds = %bb.e
  %i.af = icmp ugt i64 %i.v, -6917529027641081857
  %i.ag = shl i64 %i.v, 3
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 9223372036854775807)
  %i.ai = select i1 %i.af, i64 9223372036854775807, i64 %i.ah
  br label %_ZNK5boost9container3dtl17basic_string_baseISaIcEvE12next_storageEmm.exit

_ZNK5boost9container3dtl17basic_string_baseISaIcEvE12next_storageEmm.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i64 [ %i.ae, %bb.f ], [ %i.ai, %bb.g ]
  %i.aj = add i64 %i.aa, %i.v
  %i.ak = tail call noundef i64 @llvm.umax.i64(i64 %i.aj, i64 %.0.i.i)
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !127
  %i.al = add i64 %i.n, %i.i                      ; 3 uses
  %i.am = add i64 %i.al, 1
  %spec.store.select = select i1 %i.o, ptr null, ptr %i.g
  store ptr %spec.store.select, ptr %i.b, align 8, !tbaa !128
  %spec.select = select i1 %i.o, i32 1, i32 7
  %i.an = call noundef ptr @_ZN5boost9container3dtl24allocator_version_traitsISaIcELj1EE18allocation_commandERS3_jmRmRPc(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %spec.select, i64 noundef %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 17 uses
  %i.ao = ptrtoaddr ptr %i.an to i64              ; 2 uses
  %i.ap = icmp eq ptr %i.u, %i.an
  br i1 %i.ap, label %bb.h, label %bb.p

bb.h:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseISaIcEvE12next_storageEmm.exit
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !127
  store i64 %i.aq, ptr %i.p, align 8, !tbaa !147
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %i.ar = ptrtoint ptr %i.u to i64                ; 7 uses
  %.neg = sub i64 %i.ar, %i.h
  %i.as = add i64 %.neg, %i.n                     ; 4 uses
  %.not124 = icmp ult i64 %i.as, %i.i
  br i1 %.not124, label %bb.k, label %iter.check302

iter.check302:                                    ; preds = %bb.i
  %i.at = getelementptr i8, ptr %i.u, i64 %i.n    ; 6 uses
  %i.au = sub i64 %i.n, %i.i
  %i.av = getelementptr i8, ptr %i.u, i64 %i.au   ; 5 uses
  %min.iters.check286 = icmp ult i64 %i.i, 8
  br i1 %min.iters.check286, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check287

vector.main.loop.iter.check287:                   ; preds = %iter.check302
  %min.iters.check288 = icmp ult i64 %i.i, 32
  br i1 %min.iters.check288, label %vec.epilog.ph306, label %vector.ph289

vector.ph289:                                     ; preds = %vector.main.loop.iter.check287
  %i.aw = and i64 %i.i, 24
  %n.vec290 = and i64 %i.i, -32                   ; 5 uses
  %i.ax = getelementptr i8, ptr %i.at, i64 %n.vec290
  %i.ay = getelementptr i8, ptr %i.av, i64 %n.vec290
  br label %vector.body291

vector.body291:                                   ; preds = %vector.ph289, %vector.body291
  %index292 = phi i64 [ 0, %vector.ph289 ], [ %index.next297, %vector.body291 ] ; 3 uses
  %next.gep293 = getelementptr i8, ptr %i.at, i64 %index292 ; 2 uses
  %next.gep294 = getelementptr i8, ptr %i.av, i64 %index292 ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep293, i64 1
  %i.ba = getelementptr i8, ptr %next.gep294, i64 1
  %i.bb = getelementptr i8, ptr %next.gep294, i64 17
  %wide.load295 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !109
  %wide.load296 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !109
  %i.bc = getelementptr i8, ptr %next.gep293, i64 17
  store <16 x i8> %wide.load295, ptr %i.az, align 1, !tbaa !109
  store <16 x i8> %wide.load296, ptr %i.bc, align 1, !tbaa !109
  %index.next297 = add nuw i64 %index292, 32      ; 2 uses
  %i.bd = icmp eq i64 %index.next297, %n.vec290
  br i1 %i.bd, label %middle.block298, label %vector.body291, !llvm.loop !513

middle.block298:                                  ; preds = %vector.body291
  %cmp.n299 = icmp eq i64 %i.i, %n.vec290
  br i1 %cmp.n299, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPcS7_EEmT_S8_T0_.exit, label %vec.epilog.iter.check304

vec.epilog.iter.check304:                         ; preds = %middle.block298
  %min.epilog.iters.check305 = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check305, label %.lr.ph.i.preheader, label %vec.epilog.ph306, !prof !126

vec.epilog.ph306:                                 ; preds = %vector.main.loop.iter.check287, %vec.epilog.iter.check304
  %vec.epilog.resume.val300 = phi i64 [ %n.vec290, %vec.epilog.iter.check304 ], [ 0, %vector.main.loop.iter.check287 ]
  %n.vec307 = and i64 %i.i, -8                    ; 4 uses
  %i.be = getelementptr i8, ptr %i.at, i64 %n.vec307
  %i.bf = getelementptr i8, ptr %i.av, i64 %n.vec307
  br label %vec.epilog.vector.body308

vec.epilog.vector.body308:                        ; preds = %vec.epilog.vector.body308, %vec.epilog.ph306
  %index309 = phi i64 [ %vec.epilog.resume.val300, %vec.epilog.ph306 ], [ %index.next313, %vec.epilog.vector.body308 ] ; 3 uses
  %next.gep310 = getelementptr i8, ptr %i.at, i64 %index309
  %next.gep311 = getelementptr i8, ptr %i.av, i64 %index309
  %i.bg = getelementptr i8, ptr %next.gep310, i64 1
  %i.bh = getelementptr i8, ptr %next.gep311, i64 1
  %wide.load312 = load <8 x i8>, ptr %i.bh, align 1, !tbaa !109
  store <8 x i8> %wide.load312, ptr %i.bg, align 1, !tbaa !109
  %index.next313 = add nuw i64 %index309, 8       ; 2 uses
  %i.bi = icmp eq i64 %index.next313, %n.vec307
  br i1 %i.bi, label %vec.epilog.middle.block314, label %vec.epilog.vector.body308, !llvm.loop !514

vec.epilog.middle.block314:                       ; preds = %vec.epilog.vector.body308
  %cmp.n315 = icmp eq i64 %i.i, %n.vec307
  br i1 %cmp.n315, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPcS7_EEmT_S8_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check302, %vec.epilog.iter.check304, %vec.epilog.middle.block314
  %.0711.i.pn.ph = phi ptr [ %i.at, %iter.check302 ], [ %i.ax, %vec.epilog.iter.check304 ], [ %i.be, %vec.epilog.middle.block314 ]
  %.0810.i.pn.ph = phi ptr [ %i.av, %iter.check302 ], [ %i.ay, %vec.epilog.iter.check304 ], [ %i.bf, %vec.epilog.middle.block314 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0711.i.pn = phi ptr [ %.0711.i, %.lr.ph.i ], [ %.0711.i.pn.ph, %.lr.ph.i.preheader ]
  %.0810.i.pn = phi ptr [ %.0810.i, %.lr.ph.i ], [ %.0810.i.pn.ph, %.lr.ph.i.preheader ]
  %.0711.i = getelementptr i8, ptr %.0711.i.pn, i64 1 ; 2 uses
  %.0810.i = getelementptr i8, ptr %.0810.i.pn, i64 1 ; 3 uses
  %i.bj = load i8, ptr %.0810.i, align 1, !tbaa !109
  store i8 %i.bj, ptr %.0711.i, align 1, !tbaa !109
  %.not.i = icmp eq ptr %.0810.i, %i.at
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPcS7_EEmT_S8_T0_.exit, label %.lr.ph.i, !llvm.loop !515

_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPcS7_EEmT_S8_T0_.exit: ; preds = %.lr.ph.i, %vec.epilog.middle.block314, %middle.block298
  %i.bk = sub nuw i64 %i.as, %i.i
  %i.bl = add i64 %i.bk, 1                        ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.preheader.i, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPcS7_EEmT_S8_T0_.exit
  %i.bn = getelementptr inbounds i8, ptr %1, i64 %i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr align 1 %1, i64 %i.bl, i1 false)
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.j, %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPcS7_EEmT_S8_T0_.exit
  %.pre.i = load i8, ptr %2, align 1, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %.pre.i, i64 %i.i, i1 false), !tbaa !109
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE9priv_copyINS0_17constant_iteratorIcEEPcEEvT_SA_T0_.exit

bb.k:                                             ; preds = %bb.i
  %.neg208 = xor i64 %i.as, -1
  %i.bo = add i64 %3, %.neg208
  %i.bp = getelementptr i8, ptr %i.u, i64 %i.n    ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 1      ; 2 uses
  %.not6.i = icmp eq i64 %i.bo, %5
  br i1 %.not6.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyINS0_17constant_iteratorIcEEPcEEmT_SA_T0_.exit, label %.lr.ph.preheader.i127

.lr.ph.preheader.i127:                            ; preds = %bb.k
  %.pre.i128 = load i8, ptr %2, align 1, !tbaa !109
  %i.br = add i64 %3, %i.h
  %i.bs = xor i64 %i.n, -1
  %i.bt = add i64 %i.br, %i.bs
  %i.bu = add i64 %5, %i.ar
  %i.bv = sub i64 %i.bt, %i.bu
  call void @llvm.memset.p0.i64(ptr align 1 %i.bq, i8 %.pre.i128, i64 %i.bv, i1 false), !tbaa !109
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyINS0_17constant_iteratorIcEEPcEEmT_SA_T0_.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyINS0_17constant_iteratorIcEEPcEEmT_SA_T0_.exit: ; preds = %.lr.ph.preheader.i127, %bb.k
  %i.bw = sub nuw i64 %i.i, %i.as
  %i.bx = add i64 %i.bw, %i.n                     ; 3 uses
  %i.by = load i8, ptr %0, align 8, !tbaa !109
  %i.bz = trunc i8 %i.by to i1
  br i1 %i.bz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyINS0_17constant_iteratorIcEEPcEEmT_SA_T0_.exit
  %i.ca = trunc i64 %i.bx to i8
  %i.cb = shl i8 %i.ca, 1
  %i.cc = or disjoint i8 %i.cb, 1
  store i8 %i.cc, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseISaIcEvE9priv_sizeEm.exit

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyINS0_17constant_iteratorIcEEPcEEmT_SA_T0_.exit
  %i.cd = load i64, ptr %0, align 8
  %i.ce = shl i64 %i.bx, 1
  %i.cf = and i64 %i.cd, 1
  %i.cg = or disjoint i64 %i.cf, %i.ce
  store i64 %i.cg, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseISaIcEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseISaIcEvE9priv_sizeEm.exit: ; preds = %bb.l, %bb.m
  %.not9.i133 = icmp eq ptr %1, %i.bq
  br i1 %.not9.i133, label %.lr.ph.preheader.i141, label %iter.check336

iter.check336:                                    ; preds = %_ZN5boost9container3dtl17basic_string_baseISaIcEvE9priv_sizeEm.exit
  %i.ch = getelementptr inbounds i8, ptr %i.u, i64 %i.bx ; 6 uses
  %i.ci = add i64 %i.n, %i.ar
  %i.cj = add i64 %i.ci, 1
  %i.ck = sub i64 %i.cj, %i.h                     ; 7 uses
  %min.iters.check320 = icmp ult i64 %i.ck, 8
  br i1 %min.iters.check320, label %.lr.ph.i134.preheader, label %vector.memcheck318

vector.memcheck318:                               ; preds = %iter.check336
  %i.cl = add i64 %3, %i.h
  %i.cm = add i64 %i.cl, %i.ar
  %i.cn = add i64 %5, %i.ar
  %i.co = add i64 %i.cn, %i.h
  %i.cp = sub i64 %i.co, %i.cm
  %diff.check319 = icmp ugt i64 %i.cp, -32
  br i1 %diff.check319, label %.lr.ph.i134.preheader, label %vector.main.loop.iter.check321

vector.main.loop.iter.check321:                   ; preds = %vector.memcheck318
  %min.iters.check322 = icmp ult i64 %i.ck, 32
  br i1 %min.iters.check322, label %vec.epilog.ph340, label %vector.ph323

vector.ph323:                                     ; preds = %vector.main.loop.iter.check321
  %i.cq = and i64 %i.ck, 24
  %n.vec324 = and i64 %i.ck, -32                  ; 5 uses
  %i.cr = getelementptr i8, ptr %i.ch, i64 %n.vec324
  %i.cs = getelementptr i8, ptr %1, i64 %n.vec324
  br label %vector.body325

vector.body325:                                   ; preds = %vector.ph323, %vector.body325
  %index326 = phi i64 [ 0, %vector.ph323 ], [ %index.next331, %vector.body325 ] ; 3 uses
  %next.gep327 = getelementptr i8, ptr %i.ch, i64 %index326 ; 2 uses
  %next.gep328 = getelementptr i8, ptr %1, i64 %index326 ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep328, i64 16
  %wide.load329 = load <16 x i8>, ptr %next.gep328, align 1, !tbaa !109
  %wide.load330 = load <16 x i8>, ptr %i.ct, align 1, !tbaa !109
  %i.cu = getelementptr i8, ptr %next.gep327, i64 16
  store <16 x i8> %wide.load329, ptr %next.gep327, align 1, !tbaa !109
  store <16 x i8> %wide.load330, ptr %i.cu, align 1, !tbaa !109
  %index.next331 = add nuw i64 %index326, 32      ; 2 uses
  %i.cv = icmp eq i64 %index.next331, %n.vec324
  br i1 %i.cv, label %middle.block332, label %vector.body325, !llvm.loop !516

middle.block332:                                  ; preds = %vector.body325
  %cmp.n333 = icmp eq i64 %i.ck, %n.vec324
  br i1 %cmp.n333, label %.lr.ph.preheader.i141, label %vec.epilog.iter.check338

vec.epilog.iter.check338:                         ; preds = %middle.block332
  %min.epilog.iters.check339 = icmp eq i64 %i.cq, 0
  br i1 %min.epilog.iters.check339, label %.lr.ph.i134.preheader, label %vec.epilog.ph340, !prof !126

vec.epilog.ph340:                                 ; preds = %vector.main.loop.iter.check321, %vec.epilog.iter.check338
  %vec.epilog.resume.val334 = phi i64 [ %n.vec324, %vec.epilog.iter.check338 ], [ 0, %vector.main.loop.iter.check321 ]
  %n.vec341 = and i64 %i.ck, -8                   ; 4 uses
  %i.cw = getelementptr i8, ptr %i.ch, i64 %n.vec341
  %i.cx = getelementptr i8, ptr %1, i64 %n.vec341
  br label %vec.epilog.vector.body342

vec.epilog.vector.body342:                        ; preds = %vec.epilog.vector.body342, %vec.epilog.ph340
  %index343 = phi i64 [ %vec.epilog.resume.val334, %vec.epilog.ph340 ], [ %index.next347, %vec.epilog.vector.body342 ] ; 3 uses
  %next.gep344 = getelementptr i8, ptr %i.ch, i64 %index343
  %next.gep345 = getelementptr i8, ptr %1, i64 %index343
  %wide.load346 = load <8 x i8>, ptr %next.gep345, align 1, !tbaa !109
  store <8 x i8> %wide.load346, ptr %next.gep344, align 1, !tbaa !109
  %index.next347 = add nuw i64 %index343, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next347, %n.vec341
  br i1 %i.cy, label %vec.epilog.middle.block348, label %vec.epilog.vector.body342, !llvm.loop !517

vec.epilog.middle.block348:                       ; preds = %vec.epilog.vector.body342
  %cmp.n349 = icmp eq i64 %i.ck, %n.vec341
  br i1 %cmp.n349, label %.lr.ph.preheader.i141, label %.lr.ph.i134.preheader

.lr.ph.i134.preheader:                            ; preds = %iter.check336, %vector.memcheck318, %vec.epilog.iter.check338, %vec.epilog.middle.block348
  %.0711.i135.ph = phi ptr [ %i.ch, %iter.check336 ], [ %i.ch, %vector.memcheck318 ], [ %i.cr, %vec.epilog.iter.check338 ], [ %i.cw, %vec.epilog.middle.block348 ] ; 2 uses
  %.0810.i136.ph = phi ptr [ %1, %iter.check336 ], [ %1, %vector.memcheck318 ], [ %i.cs, %vec.epilog.iter.check338 ], [ %i.cx, %vec.epilog.middle.block348 ] ; 3 uses
  %i.cz = add i64 %i.n, %i.ar                     ; 2 uses
  %i.da = add i64 %i.cz, 1
  %.0810.i136.ph357 = ptrtoaddr ptr %.0810.i136.ph to i64 ; 2 uses
  %i.db = sub i64 %i.da, %.0810.i136.ph357
  %i.dc = sub i64 %i.cz, %.0810.i136.ph357
  %xtraiter358.a = and i64 %i.db, 7               ; 2 uses
  %lcmp.mod359.not.a = icmp eq i64 %xtraiter358.a, 0
  br i1 %lcmp.mod359.not.a, label %.lr.ph.i134.prol.loopexit, label %.lr.ph.i134.prol

.lr.ph.i134.prol:                                 ; preds = %.lr.ph.i134.preheader, %.lr.ph.i134.prol
  %.0711.i135.prol = phi ptr [ %i.de, %.lr.ph.i134.prol ], [ %.0711.i135.ph, %.lr.ph.i134.preheader ] ; 2 uses
  %.0810.i136.prol = phi ptr [ %i.df, %.lr.ph.i134.prol ], [ %.0810.i136.ph, %.lr.ph.i134.preheader ] ; 2 uses
  %prol.iter360.a = phi i64 [ %prol.iter360.next.a, %.lr.ph.i134.prol ], [ 0, %.lr.ph.i134.preheader ]
  %i.dd = load i8, ptr %.0810.i136.prol, align 1, !tbaa !109
  store i8 %i.dd, ptr %.0711.i135.prol, align 1, !tbaa !109
  %i.de = getelementptr inbounds nuw i8, ptr %.0711.i135.prol, i64 1 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0810.i136.prol, i64 1 ; 2 uses
  %prol.iter360.next.a = add i64 %prol.iter360.a, 1 ; 2 uses
  %prol.iter360.cmp.not.a = icmp eq i64 %prol.iter360.next.a, %xtraiter358.a
  br i1 %prol.iter360.cmp.not.a, label %.lr.ph.i134.prol.loopexit, label %.lr.ph.i134.prol, !llvm.loop !518

.lr.ph.i134.prol.loopexit:                        ; preds = %.lr.ph.i134.prol, %.lr.ph.i134.preheader
  %.0711.i135.unr = phi ptr [ %.0711.i135.ph, %.lr.ph.i134.preheader ], [ %i.de, %.lr.ph.i134.prol ]
  %.0810.i136.unr = phi ptr [ %.0810.i136.ph, %.lr.ph.i134.preheader ], [ %i.df, %.lr.ph.i134.prol ]
  %i.dg = icmp ult i64 %i.dc, 7
  br i1 %i.dg, label %.lr.ph.preheader.i141, label %.lr.ph.i134

.lr.ph.i134:                                      ; preds = %.lr.ph.i134.prol.loopexit, %.lr.ph.i134
  %.0711.i135 = phi ptr [ %i.ed, %.lr.ph.i134 ], [ %.0711.i135.unr, %.lr.ph.i134.prol.loopexit ] ; 9 uses
  %.0810.i136 = phi ptr [ %i.ee, %.lr.ph.i134 ], [ %.0810.i136.unr, %.lr.ph.i134.prol.loopexit ] ; 9 uses
  %i.dh = load i8, ptr %.0810.i136, align 1, !tbaa !109
  store i8 %i.dh, ptr %.0711.i135, align 1, !tbaa !109
  %i.di = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 1
  %i.dj = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !109
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !109
  %i.dl = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 2
  %i.dm = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 2
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !109
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !109
  %i.do = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 3
  %i.dp = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 3
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !109
  store i8 %i.dq, ptr %i.do, align 1, !tbaa !109
  %i.dr = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 4
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !109
  store i8 %i.dt, ptr %i.dr, align 1, !tbaa !109
  %i.du = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 5
  %i.dv = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 5
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !109
  store i8 %i.dw, ptr %i.du, align 1, !tbaa !109
  %i.dx = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 6
  %i.dy = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 6
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !109
  store i8 %i.dz, ptr %i.dx, align 1, !tbaa !109
  %i.ea = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 7
  %i.eb = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 7 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !109
  store i8 %i.ec, ptr %i.ea, align 1, !tbaa !109
  %i.ed = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 8
  %.not.i137.7 = icmp eq ptr %i.eb, %i.bp
  br i1 %.not.i137.7, label %.lr.ph.preheader.i141, label %.lr.ph.i134, !llvm.loop !519

.lr.ph.preheader.i141:                            ; preds = %.lr.ph.i134.prol.loopexit, %.lr.ph.i134, %middle.block332, %vec.epilog.middle.block348, %_ZN5boost9container3dtl17basic_string_baseISaIcEvE9priv_sizeEm.exit
  %.pre.i142 = load i8, ptr %2, align 1, !tbaa !109
  %i.ef = add i64 %i.n, %i.ar
  %i.eg = add i64 %i.ef, 1
  %i.eh = sub i64 %i.eg, %i.h
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %.pre.i142, i64 %i.eh, i1 false), !tbaa !109
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE9priv_copyINS0_17constant_iteratorIcEEPcEEvT_SA_T0_.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE9priv_copyINS0_17constant_iteratorIcEEPcEEvT_SA_T0_.exit: ; preds = %.lr.ph.preheader.i, %.lr.ph.preheader.i141
  %.0118 = add i64 %i.n, %i.i                     ; 3 uses
  %i.ei = load i8, ptr %0, align 8, !tbaa !109
  %i.ej = trunc i8 %i.ei to i1
  br i1 %i.ej, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE9priv_copyINS0_17constant_iteratorIcEEPcEEvT_SA_T0_.exit
  %i.ek = trunc i64 %.0118 to i8
  %i.el = shl i8 %i.ek, 1
  %i.em = or disjoint i8 %i.el, 1
  store i8 %i.em, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseISaIcEvE9priv_sizeEm.exit148

bb.o:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE9priv_copyINS0_17constant_iteratorIcEEPcEEvT_SA_T0_.exit
  %i.en = load i64, ptr %0, align 8
  %i.eo = shl i64 %.0118, 1
  %i.ep = and i64 %i.en, 1
  %i.eq = or disjoint i64 %i.ep, %i.eo
  store i64 %i.eq, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseISaIcEvE9priv_sizeEm.exit148

_ZN5boost9container3dtl17basic_string_baseISaIcEvE9priv_sizeEm.exit148: ; preds = %bb.n, %bb.o
  %i.er = getelementptr inbounds i8, ptr %i.u, i64 %.0118
  store i8 0, ptr %i.er, align 1, !tbaa !109
  %.pre214.pre = load i8, ptr %0, align 8, !tbaa !109
  %.pre215.pre = load ptr, ptr %i.f, align 8
  br label %bb.v

bb.p:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseISaIcEvE12next_storageEmm.exit
  %i.es = load ptr, ptr %i.b, align 8, !tbaa !128
  %.not = icmp eq ptr %i.es, null
  br i1 %.not, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.et = ptrtoaddr ptr %i.u to i64               ; 5 uses
  %.not9.i149 = icmp eq ptr %i.u, %1
  br i1 %.not9.i149, label %.lr.ph.preheader.i158, label %iter.check

iter.check:                                       ; preds = %bb.q
  %i.eu = sub i64 %i.h, %i.et                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.eu, 8
  %i.ev = sub i64 %i.et, %i.ao
  %diff.check = icmp ugt i64 %i.ev, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i150.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check239 = icmp ult i64 %i.eu, 32
  br i1 %min.iters.check239, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ew = and i64 %i.eu, 24
  %n.vec = and i64 %i.eu, -32                     ; 5 uses
  %i.ex = getelementptr i8, ptr %i.an, i64 %n.vec
  %i.ey = getelementptr i8, ptr %i.u, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.an, i64 %index ; 2 uses
  %next.gep240 = getelementptr i8, ptr %i.u, i64 %index ; 2 uses
  %i.ez = getelementptr i8, ptr %next.gep240, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep240, align 1, !tbaa !109
  %wide.load241 = load <16 x i8>, ptr %i.ez, align 1, !tbaa !109
  %i.fa = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !109
  store <16 x i8> %wide.load241, ptr %i.fa, align 1, !tbaa !109
end_hunk_7
begin_hunk_8_@_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7replaceEPKcS7_mc:bb.a
bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %4, i64 %i.d, i1 false)
  br label %_ZNSt11char_traitsIcE6assignEPcmc.exit18

_ZNSt11char_traitsIcE6assignEPcmc.exit18:         ; preds = %bb.h, %bb.i
  %i.aj = sub nuw i64 %3, %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %4, ptr %i.a, align 1, !tbaa !109
  %i.ak = call noundef ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE6insertINS0_17constant_iteratorIcEEEEPcPKcT_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr nonnull %i.a, i64 %i.aj, ptr null, i64 0, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE5eraseEPKcS7_.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE5eraseEPKcS7_.exit: ; preds = %bb.g, %bb.f, %_ZNSt11char_traitsIcE6assignEPcmc.exit, %_ZNSt11char_traitsIcE6assignEPcmc.exit18
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7replaceEPKcS7_RKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %3, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 8 uses
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = load i64, ptr %3, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k ; 3 uses
  %i.m = icmp ne ptr %1, %2
  %i.n = icmp samesign ne i64 %i.k, 0
  %i.o = and i1 %i.m, %i.n
  br i1 %i.o, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.a
  %i.p = ptrtoaddr ptr %i.f to i64
  %i.q = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.r = ptrtoaddr ptr %2 to i64
  %i.s = xor i64 %i.q, -1
  %i.t = add i64 %i.s, %i.r
  %i.u = add nsw i64 %i.k, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.u)
  %i.v = add i64 %umin, 1                         ; 7 uses
  %min.iters.check = icmp ult i64 %i.v, 4
  %i.w = sub i64 %i.p, %i.q
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.x = and i64 %i.v, 28
  %n.vec = and i64 %i.v, -32                      ; 5 uses
  %i.y = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.z = getelementptr i8, ptr %i.f, i64 %n.vec   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.f, i64 %index ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep14, align 1, !tbaa !109
  %wide.load15 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !109
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !109
  store <16 x i8> %wide.load15, ptr %i.ab, align 1, !tbaa !109
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !534

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !115

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %i.v, -4                     ; 4 uses
  %i.ad = getelementptr i8, ptr %1, i64 %n.vec17  ; 2 uses
  %i.ae = getelementptr i8, ptr %i.f, i64 %n.vec17 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next22, %vec.epilog.vector.body ] ; 3 uses
  %next.gep19 = getelementptr i8, ptr %1, i64 %index18
  %next.gep20 = getelementptr i8, ptr %i.f, i64 %index18
  %wide.load21 = load <4 x i8>, ptr %next.gep20, align 1, !tbaa !109
  store <4 x i8> %wide.load21, ptr %next.gep19, align 1, !tbaa !109
  %index.next22 = add nuw i64 %index18, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next22, %n.vec17
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !535

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n23 = icmp eq i64 %i.v, %n.vec17
  br i1 %cmp.n23, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.019.i.ph = phi ptr [ %1, %iter.check ], [ %i.y, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ]
  %.01618.i.ph = phi ptr [ %i.f, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.019.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01618.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.01618.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ag = load i8, ptr %.01618.i, align 1, !tbaa !109
  store i8 %i.ag, ptr %.019.i, align 1, !tbaa !109
  %i.ah = getelementptr inbounds nuw i8, ptr %.019.i, i64 1 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01618.i, i64 1 ; 3 uses
  %i.aj = icmp ne ptr %i.ah, %2
  %i.ak = icmp ne ptr %i.ai, %i.l
  %i.al = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !536

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a
  %.016.lcssa.i = phi ptr [ %i.f, %bb.a ], [ %i.ae, %vec.epilog.middle.block ], [ %i.z, %middle.block ], [ %i.ai, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.ad, %vec.epilog.middle.block ], [ %i.y, %middle.block ], [ %i.ah, %.lr.ph.i ] ; 3 uses
  %i.am = icmp eq ptr %.016.lcssa.i, %i.l
  br i1 %i.am, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge.i
  %.not.i.i = icmp eq ptr %.0.lcssa.i, %2
  br i1 %.not.i.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7replaceIPKcEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ao = ptrtoint ptr %.0.lcssa.i to i64
  %.neg14.i.i = sub i64 %i.ao, %i.an
  %i.ap = load i8, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = lshr i8 %i.ap, 1
  %i.as = zext nneg i8 %i.ar to i64
  %i.at = load i64, ptr %0, align 8               ; 3 uses
  %i.au = lshr i64 %i.at, 1
  %i.av = select i1 %i.aq, i64 %i.as, i64 %i.au   ; 2 uses
  %i.aw = trunc i64 %i.at to i8
  %i.ax = trunc i64 %i.at to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = select i1 %i.ax, ptr %i.ay, ptr %i.ba
  %i.bc = add nuw i64 %i.av, 1
  %i.bd = ptrtoint ptr %i.bb to i64
  %.neg.i.i = sub i64 %i.bd, %i.an
  %i.be = add i64 %i.bc, %.neg.i.i                ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.lcssa.i, ptr align 1 %2, i64 %i.be, i1 false)
  %.pre.i.i = load i8, ptr %0, align 8, !tbaa !109
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i:       ; preds = %bb.d, %bb.c
  %i.bg = phi i8 [ %i.aw, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.bh = add i64 %i.av, %.neg14.i.i              ; 2 uses
  %i.bi = trunc i8 %i.bg to i1
  br i1 %i.bi, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.bj = trunc i64 %i.bh to i8
  %i.bk = shl i8 %i.bj, 1
  %i.bl = or disjoint i8 %i.bk, 1
  store i8 %i.bl, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7replaceIPKcEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.bm = load i64, ptr %0, align 8
  %i.bn = shl i64 %i.bh, 1
  %i.bo = and i64 %i.bm, 1
  %i.bp = or disjoint i64 %i.bo, %i.bn
  store i64 %i.bp, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7replaceIPKcEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.bq = tail call noundef ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE6insertIPKcEEPcS8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef %.016.lcssa.i, ptr noundef %i.l, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7replaceIPKcEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7replaceIPKcEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7replaceEPKcS7_S7_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %3, i64 %4 ; 3 uses
  %i.b = icmp ne ptr %1, %2
  %i.c = icmp ne i64 %4, 0
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.f = ptrtoaddr ptr %3 to i64
  %i.g = ptrtoaddr ptr %2 to i64
  %i.h = xor i64 %i.e, -1
  %i.i = add i64 %i.h, %i.g
  %i.j = add i64 %4, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.j)
  %i.k = add i64 %umin, 1                         ; 7 uses
  %min.iters.check = icmp ult i64 %i.k, 4
  %i.l = sub i64 %i.f, %i.e
  %diff.check = icmp ugt i64 %i.l, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i64 %i.k, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.k, 28
  %n.vec = and i64 %i.k, -32                      ; 5 uses
  %i.n = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.o = getelementptr i8, ptr %3, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep13 = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep13, align 1, !tbaa !109
  %wide.load14 = load <16 x i8>, ptr %i.p, align 1, !tbaa !109
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !109
  store <16 x i8> %wide.load14, ptr %i.q, align 1, !tbaa !109
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !537

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !115

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.k, -4                     ; 4 uses
  %i.s = getelementptr i8, ptr %1, i64 %n.vec16   ; 2 uses
  %i.t = getelementptr i8, ptr %3, i64 %n.vec16   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 3 uses
  %next.gep18 = getelementptr i8, ptr %1, i64 %index17
  %next.gep19 = getelementptr i8, ptr %3, i64 %index17
  %wide.load20 = load <4 x i8>, ptr %next.gep19, align 1, !tbaa !109
  store <4 x i8> %wide.load20, ptr %next.gep18, align 1, !tbaa !109
  %index.next21 = add nuw i64 %index17, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next21, %n.vec16
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !538

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %i.k, %n.vec16
  br i1 %cmp.n22, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.019.i.ph = phi ptr [ %1, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  %.01618.i.ph = phi ptr [ %3, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.019.i = phi ptr [ %i.w, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01618.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.01618.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.v = load i8, ptr %.01618.i, align 1, !tbaa !109
  store i8 %i.v, ptr %.019.i, align 1, !tbaa !109
  %i.w = getelementptr inbounds nuw i8, ptr %.019.i, i64 1 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01618.i, i64 1 ; 3 uses
  %i.y = icmp ne ptr %i.w, %2
  %i.z = icmp ne ptr %i.x, %i.a
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  br i1 %i.aa, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !539

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a
  %.016.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.t, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %i.x, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.s, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %i.w, %.lr.ph.i ] ; 3 uses
  %i.ab = icmp eq ptr %.016.lcssa.i, %i.a
  br i1 %i.ab, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge.i
  %.not.i.i = icmp eq ptr %.0.lcssa.i, %2
  br i1 %.not.i.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7replaceIPKcEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ad = ptrtoint ptr %.0.lcssa.i to i64
  %.neg14.i.i = sub i64 %i.ad, %i.ac
  %i.ae = load i8, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.af = trunc i8 %i.ae to i1
  %i.ag = lshr i8 %i.ae, 1
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = load i64, ptr %0, align 8               ; 3 uses
  %i.aj = lshr i64 %i.ai, 1
  %i.ak = select i1 %i.af, i64 %i.ah, i64 %i.aj   ; 2 uses
  %i.al = trunc i64 %i.ai to i8
  %i.am = trunc i64 %i.ai to i1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = select i1 %i.am, ptr %i.an, ptr %i.ap
  %i.ar = add nuw i64 %i.ak, 1
  %i.as = ptrtoint ptr %i.aq to i64
  %.neg.i.i = sub i64 %i.as, %i.ac
  %i.at = add i64 %i.ar, %.neg.i.i                ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.lcssa.i, ptr align 1 %2, i64 %i.at, i1 false)
  %.pre.i.i = load i8, ptr %0, align 8, !tbaa !109
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i:       ; preds = %bb.d, %bb.c
  %i.av = phi i8 [ %i.al, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.aw = add i64 %i.ak, %.neg14.i.i              ; 2 uses
  %i.ax = trunc i8 %i.av to i1
  br i1 %i.ax, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.ay = trunc i64 %i.aw to i8
  %i.az = shl i8 %i.ay, 1
  %i.ba = or disjoint i8 %i.az, 1
  store i8 %i.ba, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7replaceIPKcEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.bb = load i64, ptr %0, align 8
  %i.bc = shl i64 %i.aw, 1
  %i.bd = and i64 %i.bb, 1
  %i.be = or disjoint i64 %i.bd, %i.bc
  store i64 %i.be, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7replaceIPKcEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.bf = tail call noundef ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE6insertIPKcEEPcS8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef %.016.lcssa.i, ptr noundef %i.a, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7replaceIPKcEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7replaceIPKcEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7replaceEPKcS7_S7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 %i.a ; 3 uses
  %i.c = icmp ne ptr %1, %2
  %i.d = icmp samesign ne i64 %i.a, 0
  %i.e = and i1 %i.c, %i.d
  br i1 %i.e, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.a
  %i.f = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.g = ptrtoaddr ptr %3 to i64
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = xor i64 %i.f, -1
  %i.j = add i64 %i.i, %i.h
  %i.k = add i64 %i.a, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.k)
  %i.l = add i64 %umin, 1                         ; 7 uses
  %min.iters.check = icmp ult i64 %i.l, 4
  %i.m = sub i64 %i.g, %i.f
  %diff.check = icmp ugt i64 %i.m, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %i.l, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.l, 28
  %n.vec = and i64 %i.l, -32                      ; 5 uses
  %i.o = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.p = getelementptr i8, ptr %3, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep14 = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep14, align 1, !tbaa !109
  %wide.load15 = load <16 x i8>, ptr %i.q, align 1, !tbaa !109
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !109
  store <16 x i8> %wide.load15, ptr %i.r, align 1, !tbaa !109
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !540

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !115

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %i.l, -4                     ; 4 uses
  %i.t = getelementptr i8, ptr %1, i64 %n.vec17   ; 2 uses
  %i.u = getelementptr i8, ptr %3, i64 %n.vec17   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next22, %vec.epilog.vector.body ] ; 3 uses
  %next.gep19 = getelementptr i8, ptr %1, i64 %index18
  %next.gep20 = getelementptr i8, ptr %3, i64 %index18
  %wide.load21 = load <4 x i8>, ptr %next.gep20, align 1, !tbaa !109
  store <4 x i8> %wide.load21, ptr %next.gep19, align 1, !tbaa !109
  %index.next22 = add nuw i64 %index18, 4         ; 2 uses
  %i.v = icmp eq i64 %index.next22, %n.vec17
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !541

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n23 = icmp eq i64 %i.l, %n.vec17
  br i1 %cmp.n23, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.019.i.ph = phi ptr [ %1, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  %.01618.i.ph = phi ptr [ %3, %iter.check ], [ %i.p, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.019.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01618.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.01618.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.w = load i8, ptr %.01618.i, align 1, !tbaa !109
  store i8 %i.w, ptr %.019.i, align 1, !tbaa !109
  %i.x = getelementptr inbounds nuw i8, ptr %.019.i, i64 1 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.01618.i, i64 1 ; 3 uses
  %i.z = icmp ne ptr %i.x, %2
  %i.aa = icmp ne ptr %i.y, %i.b
  %i.ab = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !542

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a
  %.016.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.u, %vec.epilog.middle.block ], [ %i.p, %middle.block ], [ %i.y, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.t, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %i.x, %.lr.ph.i ] ; 3 uses
  %i.ac = icmp eq ptr %.016.lcssa.i, %i.b
  br i1 %i.ac, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge.i
  %.not.i.i = icmp eq ptr %.0.lcssa.i, %2
  br i1 %.not.i.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7replaceIPKcEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ae = ptrtoint ptr %.0.lcssa.i to i64
  %.neg14.i.i = sub i64 %i.ae, %i.ad
  %i.af = load i8, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.ag = trunc i8 %i.af to i1
  %i.ah = lshr i8 %i.af, 1
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = load i64, ptr %0, align 8               ; 3 uses
  %i.ak = lshr i64 %i.aj, 1
  %i.al = select i1 %i.ag, i64 %i.ai, i64 %i.ak   ; 2 uses
  %i.am = trunc i64 %i.aj to i8
  %i.an = trunc i64 %i.aj to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = select i1 %i.an, ptr %i.ao, ptr %i.aq
  %i.as = add nuw i64 %i.al, 1
  %i.at = ptrtoint ptr %i.ar to i64
  %.neg.i.i = sub i64 %i.at, %i.ad
  %i.au = add i64 %i.as, %.neg.i.i                ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.lcssa.i, ptr align 1 %2, i64 %i.au, i1 false)
  %.pre.i.i = load i8, ptr %0, align 8, !tbaa !109
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i:       ; preds = %bb.d, %bb.c
  %i.aw = phi i8 [ %i.am, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.ax = add i64 %i.al, %.neg14.i.i              ; 2 uses
  %i.ay = trunc i8 %i.aw to i1
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.az = trunc i64 %i.ax to i8
  %i.ba = shl i8 %i.az, 1
  %i.bb = or disjoint i8 %i.ba, 1
  store i8 %i.bb, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7replaceIPKcEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.bc = load i64, ptr %0, align 8
  %i.bd = shl i64 %i.ax, 1
  %i.be = and i64 %i.bc, 1
  %i.bf = or disjoint i64 %i.be, %i.bd
  store i64 %i.bf, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7replaceIPKcEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.bg = tail call noundef ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE6insertIPKcEEPcS8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef nonnull %.016.lcssa.i, ptr noundef nonnull %i.b, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7replaceIPKcEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7replaceIPKcEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7replaceEPKcS7_St16initializer_listIcE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr %3, i64 %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 3 uses
  %i.b = icmp ne ptr %1, %2
  %i.c = icmp samesign ne i64 %4, 0
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.f = ptrtoaddr ptr %3 to i64
  %i.g = ptrtoaddr ptr %2 to i64
  %i.h = xor i64 %i.e, -1
  %i.i = add i64 %i.h, %i.g
  %i.j = add i64 %4, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.j)
  %i.k = add i64 %umin, 1                         ; 7 uses
  %min.iters.check = icmp ult i64 %i.k, 4
  %i.l = sub i64 %i.f, %i.e
  %diff.check = icmp ugt i64 %i.l, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check11 = icmp ult i64 %i.k, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.k, 28
  %n.vec = and i64 %i.k, -32                      ; 5 uses
  %i.n = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.o = getelementptr i8, ptr %3, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep12 = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep12, align 1, !tbaa !109
  %wide.load13 = load <16 x i8>, ptr %i.p, align 1, !tbaa !109
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !109
  store <16 x i8> %wide.load13, ptr %i.q, align 1, !tbaa !109
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !543

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !115

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %i.k, -4                     ; 4 uses
  %i.s = getelementptr i8, ptr %1, i64 %n.vec15   ; 2 uses
  %i.t = getelementptr i8, ptr %3, i64 %n.vec15   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ] ; 3 uses
  %next.gep17 = getelementptr i8, ptr %1, i64 %index16
  %next.gep18 = getelementptr i8, ptr %3, i64 %index16
  %wide.load19 = load <4 x i8>, ptr %next.gep18, align 1, !tbaa !109
  store <4 x i8> %wide.load19, ptr %next.gep17, align 1, !tbaa !109
  %index.next20 = add nuw i64 %index16, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next20, %n.vec15
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !544

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n21 = icmp eq i64 %i.k, %n.vec15
  br i1 %cmp.n21, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.019.i.ph = phi ptr [ %1, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  %.01618.i.ph = phi ptr [ %3, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.019.i = phi ptr [ %i.w, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01618.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.01618.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.v = load i8, ptr %.01618.i, align 1, !tbaa !109
  store i8 %i.v, ptr %.019.i, align 1, !tbaa !109
  %i.w = getelementptr inbounds nuw i8, ptr %.019.i, i64 1 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01618.i, i64 1 ; 3 uses
  %i.y = icmp ne ptr %i.w, %2
  %i.z = icmp ne ptr %i.x, %i.a
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  br i1 %i.aa, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !545

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a
  %.016.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.t, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %i.x, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.s, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %i.w, %.lr.ph.i ] ; 3 uses
  %i.ab = icmp eq ptr %.016.lcssa.i, %i.a
  br i1 %i.ab, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge.i
  %.not.i.i = icmp eq ptr %.0.lcssa.i, %2
  br i1 %.not.i.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7replaceIPKcEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ad = ptrtoint ptr %.0.lcssa.i to i64
  %.neg14.i.i = sub i64 %i.ad, %i.ac
  %i.ae = load i8, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.af = trunc i8 %i.ae to i1
  %i.ag = lshr i8 %i.ae, 1
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = load i64, ptr %0, align 8               ; 3 uses
  %i.aj = lshr i64 %i.ai, 1
  %i.ak = select i1 %i.af, i64 %i.ah, i64 %i.aj   ; 2 uses
  %i.al = trunc i64 %i.ai to i8
  %i.am = trunc i64 %i.ai to i1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = select i1 %i.am, ptr %i.an, ptr %i.ap
  %i.ar = add nuw i64 %i.ak, 1
  %i.as = ptrtoint ptr %i.aq to i64
  %.neg.i.i = sub i64 %i.as, %i.ac
  %i.at = add i64 %i.ar, %.neg.i.i                ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.lcssa.i, ptr align 1 %2, i64 %i.at, i1 false)
  %.pre.i.i = load i8, ptr %0, align 8, !tbaa !109
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i:       ; preds = %bb.d, %bb.c
  %i.av = phi i8 [ %i.al, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.aw = add i64 %i.ak, %.neg14.i.i              ; 2 uses
  %i.ax = trunc i8 %i.av to i1
  br i1 %i.ax, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.ay = trunc i64 %i.aw to i8
  %i.az = shl i8 %i.ay, 1
  %i.ba = or disjoint i8 %i.az, 1
  store i8 %i.ba, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7replaceIPKcEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.bb = load i64, ptr %0, align 8
  %i.bc = shl i64 %i.aw, 1
  %i.bd = and i64 %i.bb, 1
  %i.be = or disjoint i64 %i.bd, %i.bc
  store i64 %i.be, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7replaceIPKcEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.bf = tail call noundef ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE6insertIPKcEEPcS8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef %.016.lcssa.i, ptr noundef %i.a, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7replaceIPKcEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7replaceIPKcEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE4copyEPcmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %3, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.9) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = lshr i64 %i.e, 1
  %i.k = and i64 %i.j, 127
  %i.l = select i1 %i.i, i64 %i.k, i64 %i.f
  %i.m = sub nsw i64 %i.l, %3
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.m) ; 3 uses
  %i.n = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.n, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.i, ptr %i.o, ptr %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.s, i64 %.sroa.speculated, i1 false)
  br label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit

_ZNSt11char_traitsIcE4copyEPcPKcm.exit:           ; preds = %bb.c, %bb.d
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca [24 x i8], align 8          ; 4 uses
  %2 = alloca %"struct.boost::container::dtl::basic_string_base<std::allocator<char>, void>::short_t", align 1 ; 4 uses
  %3 = alloca %"struct.boost::container::dtl::basic_string_base<std::allocator<char>, void>::short_t", align 1 ; 4 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
  %i.c = load i8, ptr %1, align 8, !tbaa !109
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
end_hunk_8
begin_hunk_9_@_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6insertIPcEES6_PKcT_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE:bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %.068.i, i64 3
  %i.co = getelementptr inbounds nuw i8, ptr %.09.i, i64 3
  %i.cp = load i8, ptr %i.cn, align 1, !tbaa !109
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !109
  %i.cq = getelementptr inbounds nuw i8, ptr %.068.i, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %.09.i, i64 4
  %i.cs = load i8, ptr %i.cq, align 1, !tbaa !109
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !109
  %i.ct = getelementptr inbounds nuw i8, ptr %.068.i, i64 5
  %i.cu = getelementptr inbounds nuw i8, ptr %.09.i, i64 5
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !109
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !109
  %i.cw = getelementptr inbounds nuw i8, ptr %.068.i, i64 6
  %i.cx = getelementptr inbounds nuw i8, ptr %.09.i, i64 6
  %i.cy = load i8, ptr %i.cw, align 1, !tbaa !109
  store i8 %i.cy, ptr %i.cx, align 1, !tbaa !109
  %i.cz = getelementptr inbounds nuw i8, ptr %.068.i, i64 7
  %i.da = getelementptr inbounds nuw i8, ptr %.09.i, i64 7
  %i.db = load i8, ptr %i.cz, align 1, !tbaa !109
  store i8 %i.db, ptr %i.da, align 1, !tbaa !109
  %i.dc = getelementptr inbounds nuw i8, ptr %.068.i, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %.not.i120.7 = icmp eq ptr %i.dc, %3
  br i1 %.not.i120.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyIPcS6_EEvT_S7_T0_.exit, label %.lr.ph.i119, !llvm.loop !786

bb.k:                                             ; preds = %bb.i
  %i.de = getelementptr i8, ptr %2, i64 %i.au     ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 1      ; 6 uses
  %i.dg = getelementptr i8, ptr %i.w, i64 %i.p    ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 1      ; 6 uses
  %.not9.i121 = icmp eq ptr %i.df, %3
  br i1 %.not9.i121, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit128, label %iter.check415

iter.check415:                                    ; preds = %bb.k
  %i.di = add i64 %i.h, %i.i
  %i.dj = xor i64 %i.p, -1
  %i.dk = add i64 %i.di, %i.dj
  %i.dl = add i64 %i.at, %i.j
  %i.dm = sub i64 %i.dk, %i.dl                    ; 7 uses
  %min.iters.check399 = icmp ult i64 %i.dm, 8
  %i.dn = sub i64 %i.j, %i.h
  %diff.check398 = icmp ugt i64 %i.dn, -32
  %or.cond499 = or i1 %min.iters.check399, %diff.check398
  br i1 %or.cond499, label %.lr.ph.i122.preheader, label %vector.main.loop.iter.check400

vector.main.loop.iter.check400:                   ; preds = %iter.check415
  %min.iters.check401 = icmp ult i64 %i.dm, 32
  br i1 %min.iters.check401, label %vec.epilog.ph419, label %vector.ph402

vector.ph402:                                     ; preds = %vector.main.loop.iter.check400
  %i.do = and i64 %i.dm, 24
  %n.vec403 = and i64 %i.dm, -32                  ; 5 uses
  %i.dp = getelementptr i8, ptr %i.dh, i64 %n.vec403
  %i.dq = getelementptr i8, ptr %i.df, i64 %n.vec403
  br label %vector.body404

vector.body404:                                   ; preds = %vector.ph402, %vector.body404
  %index405 = phi i64 [ 0, %vector.ph402 ], [ %index.next410, %vector.body404 ] ; 3 uses
  %next.gep406 = getelementptr i8, ptr %i.dh, i64 %index405 ; 2 uses
  %next.gep407 = getelementptr i8, ptr %i.df, i64 %index405 ; 2 uses
  %i.dr = getelementptr i8, ptr %next.gep407, i64 16
  %wide.load408 = load <16 x i8>, ptr %next.gep407, align 1, !tbaa !109
  %wide.load409 = load <16 x i8>, ptr %i.dr, align 1, !tbaa !109
  %i.ds = getelementptr i8, ptr %next.gep406, i64 16
  store <16 x i8> %wide.load408, ptr %next.gep406, align 1, !tbaa !109
  store <16 x i8> %wide.load409, ptr %i.ds, align 1, !tbaa !109
  %index.next410 = add nuw i64 %index405, 32      ; 2 uses
  %i.dt = icmp eq i64 %index.next410, %n.vec403
  br i1 %i.dt, label %middle.block411, label %vector.body404, !llvm.loop !787

middle.block411:                                  ; preds = %vector.body404
  %cmp.n412 = icmp eq i64 %i.dm, %n.vec403
  br i1 %cmp.n412, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit128, label %vec.epilog.iter.check417

vec.epilog.iter.check417:                         ; preds = %middle.block411
  %min.epilog.iters.check418 = icmp eq i64 %i.do, 0
  br i1 %min.epilog.iters.check418, label %.lr.ph.i122.preheader, label %vec.epilog.ph419, !prof !126

vec.epilog.ph419:                                 ; preds = %vector.main.loop.iter.check400, %vec.epilog.iter.check417
  %vec.epilog.resume.val413 = phi i64 [ %n.vec403, %vec.epilog.iter.check417 ], [ 0, %vector.main.loop.iter.check400 ]
  %n.vec420 = and i64 %i.dm, -8                   ; 4 uses
  %i.du = getelementptr i8, ptr %i.dh, i64 %n.vec420
  %i.dv = getelementptr i8, ptr %i.df, i64 %n.vec420
  br label %vec.epilog.vector.body421

vec.epilog.vector.body421:                        ; preds = %vec.epilog.vector.body421, %vec.epilog.ph419
  %index422 = phi i64 [ %vec.epilog.resume.val413, %vec.epilog.ph419 ], [ %index.next426, %vec.epilog.vector.body421 ] ; 3 uses
  %next.gep423 = getelementptr i8, ptr %i.dh, i64 %index422
  %next.gep424 = getelementptr i8, ptr %i.df, i64 %index422
  %wide.load425 = load <8 x i8>, ptr %next.gep424, align 1, !tbaa !109
  store <8 x i8> %wide.load425, ptr %next.gep423, align 1, !tbaa !109
  %index.next426 = add nuw i64 %index422, 8       ; 2 uses
  %i.dw = icmp eq i64 %index.next426, %n.vec420
  br i1 %i.dw, label %vec.epilog.middle.block427, label %vec.epilog.vector.body421, !llvm.loop !788

vec.epilog.middle.block427:                       ; preds = %vec.epilog.vector.body421
  %cmp.n428 = icmp eq i64 %i.dm, %n.vec420
  br i1 %cmp.n428, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit128, label %.lr.ph.i122.preheader

.lr.ph.i122.preheader:                            ; preds = %iter.check415, %vec.epilog.iter.check417, %vec.epilog.middle.block427
  %.0711.i123.ph = phi ptr [ %i.dh, %iter.check415 ], [ %i.dp, %vec.epilog.iter.check417 ], [ %i.du, %vec.epilog.middle.block427 ] ; 2 uses
  %.0810.i124.ph = phi ptr [ %i.df, %iter.check415 ], [ %i.dq, %vec.epilog.iter.check417 ], [ %i.dv, %vec.epilog.middle.block427 ] ; 3 uses
  %.0810.i124.ph520 = ptrtoaddr ptr %.0810.i124.ph to i64 ; 2 uses
  %i.dx = sub i64 %i.i, %.0810.i124.ph520
  %xtraiter521 = and i64 %i.dx, 7                 ; 2 uses
  %lcmp.mod522.not = icmp eq i64 %xtraiter521, 0
  br i1 %lcmp.mod522.not, label %.lr.ph.i122.prol.loopexit, label %.lr.ph.i122.prol

.lr.ph.i122.prol:                                 ; preds = %.lr.ph.i122.preheader, %.lr.ph.i122.prol
  %.0711.i123.prol = phi ptr [ %i.dz, %.lr.ph.i122.prol ], [ %.0711.i123.ph, %.lr.ph.i122.preheader ] ; 2 uses
  %.0810.i124.prol = phi ptr [ %i.ea, %.lr.ph.i122.prol ], [ %.0810.i124.ph, %.lr.ph.i122.preheader ] ; 2 uses
  %prol.iter523 = phi i64 [ %prol.iter523.next, %.lr.ph.i122.prol ], [ 0, %.lr.ph.i122.preheader ]
  %i.dy = load i8, ptr %.0810.i124.prol, align 1, !tbaa !109
  store i8 %i.dy, ptr %.0711.i123.prol, align 1, !tbaa !109
  %i.dz = getelementptr inbounds nuw i8, ptr %.0711.i123.prol, i64 1 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0810.i124.prol, i64 1 ; 2 uses
  %prol.iter523.next = add i64 %prol.iter523, 1   ; 2 uses
  %prol.iter523.cmp.not = icmp eq i64 %prol.iter523.next, %xtraiter521
  br i1 %prol.iter523.cmp.not, label %.lr.ph.i122.prol.loopexit, label %.lr.ph.i122.prol, !llvm.loop !789

.lr.ph.i122.prol.loopexit:                        ; preds = %.lr.ph.i122.prol, %.lr.ph.i122.preheader
  %.0711.i123.unr = phi ptr [ %.0711.i123.ph, %.lr.ph.i122.preheader ], [ %i.dz, %.lr.ph.i122.prol ]
  %.0810.i124.unr = phi ptr [ %.0810.i124.ph, %.lr.ph.i122.preheader ], [ %i.ea, %.lr.ph.i122.prol ]
  %i.eb = sub i64 %.0810.i124.ph520, %i.i
  %i.ec = icmp ugt i64 %i.eb, -8
  br i1 %i.ec, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit128, label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %.lr.ph.i122.prol.loopexit, %.lr.ph.i122
  %.0711.i123 = phi ptr [ %i.ez, %.lr.ph.i122 ], [ %.0711.i123.unr, %.lr.ph.i122.prol.loopexit ] ; 9 uses
  %.0810.i124 = phi ptr [ %i.fa, %.lr.ph.i122 ], [ %.0810.i124.unr, %.lr.ph.i122.prol.loopexit ] ; 9 uses
  %i.ed = load i8, ptr %.0810.i124, align 1, !tbaa !109
  store i8 %i.ed, ptr %.0711.i123, align 1, !tbaa !109
  %i.ee = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 1
  %i.ef = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !109
  store i8 %i.eg, ptr %i.ee, align 1, !tbaa !109
  %i.eh = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 2
  %i.ei = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 2
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !109
  store i8 %i.ej, ptr %i.eh, align 1, !tbaa !109
  %i.ek = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 3
  %i.el = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 3
  %i.em = load i8, ptr %i.el, align 1, !tbaa !109
  store i8 %i.em, ptr %i.ek, align 1, !tbaa !109
  %i.en = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 4
  %i.eo = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 4
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !109
  store i8 %i.ep, ptr %i.en, align 1, !tbaa !109
  %i.eq = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 5
  %i.er = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 5
  %i.es = load i8, ptr %i.er, align 1, !tbaa !109
  store i8 %i.es, ptr %i.eq, align 1, !tbaa !109
  %i.et = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 6
  %i.eu = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 6
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !109
  store i8 %i.ev, ptr %i.et, align 1, !tbaa !109
  %i.ew = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 7
  %i.ex = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 7
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !109
  store i8 %i.ey, ptr %i.ew, align 1, !tbaa !109
  %i.ez = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 8 ; 2 uses
  %.not.i125.7 = icmp eq ptr %i.fa, %3
  br i1 %.not.i125.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit128, label %.lr.ph.i122, !llvm.loop !790

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit128: ; preds = %.lr.ph.i122.prol.loopexit, %.lr.ph.i122, %middle.block411, %vec.epilog.middle.block427, %bb.k
  %i.fb = sub nuw i64 %i.k, %i.au
  %i.fc = add i64 %i.fb, %i.p                     ; 3 uses
  %i.fd = load i8, ptr %0, align 8, !tbaa !109
  %i.fe = trunc i8 %i.fd to i1
  br i1 %i.fe, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit128
  %i.ff = trunc i64 %i.fc to i8
  %i.fg = shl i8 %i.ff, 1
  %i.fh = or disjoint i8 %i.fg, 1
  store i8 %i.fh, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit128
  %i.fi = load i64, ptr %0, align 8
  %i.fj = shl i64 %i.fc, 1
  %i.fk = and i64 %i.fi, 1
  %i.fl = or disjoint i64 %i.fk, %i.fj
  store i64 %i.fl, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit: ; preds = %bb.l, %bb.m
  %.not9.i129 = icmp eq ptr %1, %i.dh
  br i1 %.not9.i129, label %iter.check483, label %iter.check449

iter.check449:                                    ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit
  %i.fm = getelementptr inbounds i8, ptr %i.w, i64 %i.fc ; 6 uses
  %i.fn = add i64 %i.p, %i.at
  %i.fo = add i64 %i.fn, 1
  %i.fp = sub i64 %i.fo, %i.h                     ; 7 uses
  %min.iters.check433 = icmp ult i64 %i.fp, 8
  br i1 %min.iters.check433, label %.lr.ph.i130.preheader, label %vector.memcheck431

vector.memcheck431:                               ; preds = %iter.check449
  %i.fq = add i64 %i.h, %i.at
  %i.fr = add i64 %i.fq, %i.i
  %i.fs = add i64 %i.at, %i.j
  %i.ft = add i64 %i.fs, %i.h
  %i.fu = sub i64 %i.ft, %i.fr
  %diff.check432 = icmp ugt i64 %i.fu, -32
  br i1 %diff.check432, label %.lr.ph.i130.preheader, label %vector.main.loop.iter.check434

vector.main.loop.iter.check434:                   ; preds = %vector.memcheck431
  %min.iters.check435 = icmp ult i64 %i.fp, 32
  br i1 %min.iters.check435, label %vec.epilog.ph453, label %vector.ph436

vector.ph436:                                     ; preds = %vector.main.loop.iter.check434
  %i.fv = and i64 %i.fp, 24
  %n.vec437 = and i64 %i.fp, -32                  ; 5 uses
  %i.fw = getelementptr i8, ptr %i.fm, i64 %n.vec437
  %i.fx = getelementptr i8, ptr %1, i64 %n.vec437
  br label %vector.body438

vector.body438:                                   ; preds = %vector.ph436, %vector.body438
  %index439 = phi i64 [ 0, %vector.ph436 ], [ %index.next444, %vector.body438 ] ; 3 uses
  %next.gep440 = getelementptr i8, ptr %i.fm, i64 %index439 ; 2 uses
  %next.gep441 = getelementptr i8, ptr %1, i64 %index439 ; 2 uses
  %i.fy = getelementptr i8, ptr %next.gep441, i64 16
  %wide.load442 = load <16 x i8>, ptr %next.gep441, align 1, !tbaa !109
  %wide.load443 = load <16 x i8>, ptr %i.fy, align 1, !tbaa !109
  %i.fz = getelementptr i8, ptr %next.gep440, i64 16
  store <16 x i8> %wide.load442, ptr %next.gep440, align 1, !tbaa !109
  store <16 x i8> %wide.load443, ptr %i.fz, align 1, !tbaa !109
  %index.next444 = add nuw i64 %index439, 32      ; 2 uses
  %i.ga = icmp eq i64 %index.next444, %n.vec437
  br i1 %i.ga, label %middle.block445, label %vector.body438, !llvm.loop !791

middle.block445:                                  ; preds = %vector.body438
  %cmp.n446 = icmp eq i64 %i.fp, %n.vec437
  br i1 %cmp.n446, label %iter.check483, label %vec.epilog.iter.check451

vec.epilog.iter.check451:                         ; preds = %middle.block445
  %min.epilog.iters.check452 = icmp eq i64 %i.fv, 0
  br i1 %min.epilog.iters.check452, label %.lr.ph.i130.preheader, label %vec.epilog.ph453, !prof !126

vec.epilog.ph453:                                 ; preds = %vector.main.loop.iter.check434, %vec.epilog.iter.check451
  %vec.epilog.resume.val447 = phi i64 [ %n.vec437, %vec.epilog.iter.check451 ], [ 0, %vector.main.loop.iter.check434 ]
  %n.vec454 = and i64 %i.fp, -8                   ; 4 uses
  %i.gb = getelementptr i8, ptr %i.fm, i64 %n.vec454
  %i.gc = getelementptr i8, ptr %1, i64 %n.vec454
  br label %vec.epilog.vector.body455

vec.epilog.vector.body455:                        ; preds = %vec.epilog.vector.body455, %vec.epilog.ph453
  %index456 = phi i64 [ %vec.epilog.resume.val447, %vec.epilog.ph453 ], [ %index.next460, %vec.epilog.vector.body455 ] ; 3 uses
  %next.gep457 = getelementptr i8, ptr %i.fm, i64 %index456
  %next.gep458 = getelementptr i8, ptr %1, i64 %index456
  %wide.load459 = load <8 x i8>, ptr %next.gep458, align 1, !tbaa !109
  store <8 x i8> %wide.load459, ptr %next.gep457, align 1, !tbaa !109
  %index.next460 = add nuw i64 %index456, 8       ; 2 uses
  %i.gd = icmp eq i64 %index.next460, %n.vec454
  br i1 %i.gd, label %vec.epilog.middle.block461, label %vec.epilog.vector.body455, !llvm.loop !792

vec.epilog.middle.block461:                       ; preds = %vec.epilog.vector.body455
  %cmp.n462 = icmp eq i64 %i.fp, %n.vec454
  br i1 %cmp.n462, label %iter.check483, label %.lr.ph.i130.preheader

.lr.ph.i130.preheader:                            ; preds = %iter.check449, %vector.memcheck431, %vec.epilog.iter.check451, %vec.epilog.middle.block461
  %.0711.i131.ph = phi ptr [ %i.fm, %iter.check449 ], [ %i.fm, %vector.memcheck431 ], [ %i.fw, %vec.epilog.iter.check451 ], [ %i.gb, %vec.epilog.middle.block461 ] ; 2 uses
  %.0810.i132.ph = phi ptr [ %1, %iter.check449 ], [ %1, %vector.memcheck431 ], [ %i.fx, %vec.epilog.iter.check451 ], [ %i.gc, %vec.epilog.middle.block461 ] ; 3 uses
  %i.ge = add i64 %i.p, %i.at                     ; 2 uses
  %i.gf = add i64 %i.ge, 1
  %.0810.i132.ph524 = ptrtoaddr ptr %.0810.i132.ph to i64 ; 2 uses
  %i.gg = sub i64 %i.gf, %.0810.i132.ph524
  %i.gh = sub i64 %i.ge, %.0810.i132.ph524
  %xtraiter525 = and i64 %i.gg, 7                 ; 2 uses
  %lcmp.mod526.not = icmp eq i64 %xtraiter525, 0
  br i1 %lcmp.mod526.not, label %.lr.ph.i130.prol.loopexit, label %.lr.ph.i130.prol

.lr.ph.i130.prol:                                 ; preds = %.lr.ph.i130.preheader, %.lr.ph.i130.prol
  %.0711.i131.prol = phi ptr [ %i.gj, %.lr.ph.i130.prol ], [ %.0711.i131.ph, %.lr.ph.i130.preheader ] ; 2 uses
  %.0810.i132.prol = phi ptr [ %i.gk, %.lr.ph.i130.prol ], [ %.0810.i132.ph, %.lr.ph.i130.preheader ] ; 2 uses
  %prol.iter527 = phi i64 [ %prol.iter527.next, %.lr.ph.i130.prol ], [ 0, %.lr.ph.i130.preheader ]
  %i.gi = load i8, ptr %.0810.i132.prol, align 1, !tbaa !109
  store i8 %i.gi, ptr %.0711.i131.prol, align 1, !tbaa !109
  %i.gj = getelementptr inbounds nuw i8, ptr %.0711.i131.prol, i64 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.0810.i132.prol, i64 1 ; 2 uses
  %prol.iter527.next = add i64 %prol.iter527, 1   ; 2 uses
  %prol.iter527.cmp.not = icmp eq i64 %prol.iter527.next, %xtraiter525
  br i1 %prol.iter527.cmp.not, label %.lr.ph.i130.prol.loopexit, label %.lr.ph.i130.prol, !llvm.loop !793

.lr.ph.i130.prol.loopexit:                        ; preds = %.lr.ph.i130.prol, %.lr.ph.i130.preheader
  %.0711.i131.unr = phi ptr [ %.0711.i131.ph, %.lr.ph.i130.preheader ], [ %i.gj, %.lr.ph.i130.prol ]
  %.0810.i132.unr = phi ptr [ %.0810.i132.ph, %.lr.ph.i130.preheader ], [ %i.gk, %.lr.ph.i130.prol ]
  %i.gl = icmp ult i64 %i.gh, 7
  br i1 %i.gl, label %iter.check483, label %.lr.ph.i130

.lr.ph.i130:                                      ; preds = %.lr.ph.i130.prol.loopexit, %.lr.ph.i130
  %.0711.i131 = phi ptr [ %i.hi, %.lr.ph.i130 ], [ %.0711.i131.unr, %.lr.ph.i130.prol.loopexit ] ; 9 uses
  %.0810.i132 = phi ptr [ %i.hj, %.lr.ph.i130 ], [ %.0810.i132.unr, %.lr.ph.i130.prol.loopexit ] ; 9 uses
  %i.gm = load i8, ptr %.0810.i132, align 1, !tbaa !109
  store i8 %i.gm, ptr %.0711.i131, align 1, !tbaa !109
  %i.gn = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 1
  %i.go = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 1
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !109
  store i8 %i.gp, ptr %i.gn, align 1, !tbaa !109
  %i.gq = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 2
  %i.gr = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 2
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !109
  store i8 %i.gs, ptr %i.gq, align 1, !tbaa !109
  %i.gt = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 3
  %i.gu = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 3
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !109
  store i8 %i.gv, ptr %i.gt, align 1, !tbaa !109
  %i.gw = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 4
  %i.gx = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 4
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !109
  store i8 %i.gy, ptr %i.gw, align 1, !tbaa !109
  %i.gz = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 5
  %i.ha = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 5
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !109
  store i8 %i.hb, ptr %i.gz, align 1, !tbaa !109
  %i.hc = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 6
  %i.hd = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 6
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !109
  store i8 %i.he, ptr %i.hc, align 1, !tbaa !109
  %i.hf = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 7
  %i.hg = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 7 ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !109
  store i8 %i.hh, ptr %i.hf, align 1, !tbaa !109
  %i.hi = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 8
  %.not.i133.7 = icmp eq ptr %i.hg, %i.dg
  br i1 %.not.i133.7, label %iter.check483, label %.lr.ph.i130, !llvm.loop !794

iter.check483:                                    ; preds = %.lr.ph.i130.prol.loopexit, %.lr.ph.i130, %middle.block445, %vec.epilog.middle.block461, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit
  %i.hk = add i64 %i.p, %i.at
  %i.hl = add i64 %i.hk, 1
  %i.hm = sub i64 %i.hl, %i.h                     ; 7 uses
  %min.iters.check467 = icmp ult i64 %i.hm, 8
  %i.hn = sub i64 %i.j, %i.h
  %diff.check466 = icmp ugt i64 %i.hn, -32
  %or.cond500 = or i1 %min.iters.check467, %diff.check466
  br i1 %or.cond500, label %.lr.ph.i137.preheader, label %vector.main.loop.iter.check468

vector.main.loop.iter.check468:                   ; preds = %iter.check483
  %min.iters.check469 = icmp ult i64 %i.hm, 32
  br i1 %min.iters.check469, label %vec.epilog.ph487, label %vector.ph470

vector.ph470:                                     ; preds = %vector.main.loop.iter.check468
  %i.ho = and i64 %i.hm, 24
  %n.vec471 = and i64 %i.hm, -32                  ; 5 uses
  %i.hp = getelementptr i8, ptr %1, i64 %n.vec471
  %i.hq = getelementptr i8, ptr %2, i64 %n.vec471
  br label %vector.body472

vector.body472:                                   ; preds = %vector.ph470, %vector.body472
  %index473 = phi i64 [ 0, %vector.ph470 ], [ %index.next478, %vector.body472 ] ; 3 uses
  %next.gep474 = getelementptr i8, ptr %1, i64 %index473 ; 2 uses
  %next.gep475 = getelementptr i8, ptr %2, i64 %index473 ; 2 uses
  %i.hr = getelementptr i8, ptr %next.gep475, i64 16
  %wide.load476 = load <16 x i8>, ptr %next.gep475, align 1, !tbaa !109
  %wide.load477 = load <16 x i8>, ptr %i.hr, align 1, !tbaa !109
  %i.hs = getelementptr i8, ptr %next.gep474, i64 16
  store <16 x i8> %wide.load476, ptr %next.gep474, align 1, !tbaa !109
  store <16 x i8> %wide.load477, ptr %i.hs, align 1, !tbaa !109
  %index.next478 = add nuw i64 %index473, 32      ; 2 uses
  %i.ht = icmp eq i64 %index.next478, %n.vec471
  br i1 %i.ht, label %middle.block479, label %vector.body472, !llvm.loop !795

middle.block479:                                  ; preds = %vector.body472
  %cmp.n480 = icmp eq i64 %i.hm, %n.vec471
  br i1 %cmp.n480, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyIPcS6_EEvT_S7_T0_.exit, label %vec.epilog.iter.check485

vec.epilog.iter.check485:                         ; preds = %middle.block479
  %min.epilog.iters.check486 = icmp eq i64 %i.ho, 0
  br i1 %min.epilog.iters.check486, label %.lr.ph.i137.preheader, label %vec.epilog.ph487, !prof !126

vec.epilog.ph487:                                 ; preds = %vector.main.loop.iter.check468, %vec.epilog.iter.check485
  %vec.epilog.resume.val481 = phi i64 [ %n.vec471, %vec.epilog.iter.check485 ], [ 0, %vector.main.loop.iter.check468 ]
  %n.vec488 = and i64 %i.hm, -8                   ; 4 uses
  %i.hu = getelementptr i8, ptr %1, i64 %n.vec488
  %i.hv = getelementptr i8, ptr %2, i64 %n.vec488
  br label %vec.epilog.vector.body489

vec.epilog.vector.body489:                        ; preds = %vec.epilog.vector.body489, %vec.epilog.ph487
  %index490 = phi i64 [ %vec.epilog.resume.val481, %vec.epilog.ph487 ], [ %index.next494, %vec.epilog.vector.body489 ] ; 3 uses
  %next.gep491 = getelementptr i8, ptr %1, i64 %index490
  %next.gep492 = getelementptr i8, ptr %2, i64 %index490
  %wide.load493 = load <8 x i8>, ptr %next.gep492, align 1, !tbaa !109
  store <8 x i8> %wide.load493, ptr %next.gep491, align 1, !tbaa !109
  %index.next494 = add nuw i64 %index490, 8       ; 2 uses
  %i.hw = icmp eq i64 %index.next494, %n.vec488
  br i1 %i.hw, label %vec.epilog.middle.block495, label %vec.epilog.vector.body489, !llvm.loop !796

vec.epilog.middle.block495:                       ; preds = %vec.epilog.vector.body489
  %cmp.n496 = icmp eq i64 %i.hm, %n.vec488
  br i1 %cmp.n496, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyIPcS6_EEvT_S7_T0_.exit, label %.lr.ph.i137.preheader

.lr.ph.i137.preheader:                            ; preds = %iter.check483, %vec.epilog.iter.check485, %vec.epilog.middle.block495
  %.09.i138.ph = phi ptr [ %1, %iter.check483 ], [ %i.hp, %vec.epilog.iter.check485 ], [ %i.hu, %vec.epilog.middle.block495 ]
  %.068.i139.ph = phi ptr [ %2, %iter.check483 ], [ %i.hq, %vec.epilog.iter.check485 ], [ %i.hv, %vec.epilog.middle.block495 ]
  br label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137.preheader, %.lr.ph.i137
  %.09.i138 = phi ptr [ %i.hz, %.lr.ph.i137 ], [ %.09.i138.ph, %.lr.ph.i137.preheader ] ; 2 uses
  %.068.i139 = phi ptr [ %i.hy, %.lr.ph.i137 ], [ %.068.i139.ph, %.lr.ph.i137.preheader ] ; 3 uses
  %i.hx = load i8, ptr %.068.i139, align 1, !tbaa !109
  store i8 %i.hx, ptr %.09.i138, align 1, !tbaa !109
  %i.hy = getelementptr inbounds nuw i8, ptr %.068.i139, i64 1
end_hunk_9
begin_hunk_10_@_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE6insertIPcEES9_PKcT_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE:bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %.068.i, i64 3
  %i.co = getelementptr inbounds nuw i8, ptr %.09.i, i64 3
  %i.cp = load i8, ptr %i.cn, align 1, !tbaa !109
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !109
  %i.cq = getelementptr inbounds nuw i8, ptr %.068.i, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %.09.i, i64 4
  %i.cs = load i8, ptr %i.cq, align 1, !tbaa !109
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !109
  %i.ct = getelementptr inbounds nuw i8, ptr %.068.i, i64 5
  %i.cu = getelementptr inbounds nuw i8, ptr %.09.i, i64 5
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !109
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !109
  %i.cw = getelementptr inbounds nuw i8, ptr %.068.i, i64 6
  %i.cx = getelementptr inbounds nuw i8, ptr %.09.i, i64 6
  %i.cy = load i8, ptr %i.cw, align 1, !tbaa !109
  store i8 %i.cy, ptr %i.cx, align 1, !tbaa !109
  %i.cz = getelementptr inbounds nuw i8, ptr %.068.i, i64 7
  %i.da = getelementptr inbounds nuw i8, ptr %.09.i, i64 7
  %i.db = load i8, ptr %i.cz, align 1, !tbaa !109
  store i8 %i.db, ptr %i.da, align 1, !tbaa !109
  %i.dc = getelementptr inbounds nuw i8, ptr %.068.i, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %.not.i120.7 = icmp eq ptr %i.dc, %3
  br i1 %.not.i120.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9priv_copyIPcS9_EEvT_SA_T0_.exit, label %.lr.ph.i119, !llvm.loop !820

bb.k:                                             ; preds = %bb.i
  %i.de = getelementptr i8, ptr %2, i64 %i.au     ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 1      ; 6 uses
  %i.dg = getelementptr i8, ptr %i.w, i64 %i.p    ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 1      ; 6 uses
  %.not9.i121 = icmp eq ptr %i.df, %3
  br i1 %.not9.i121, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit128, label %iter.check415

iter.check415:                                    ; preds = %bb.k
  %i.di = add i64 %i.h, %i.i
  %i.dj = xor i64 %i.p, -1
  %i.dk = add i64 %i.di, %i.dj
  %i.dl = add i64 %i.at, %i.j
  %i.dm = sub i64 %i.dk, %i.dl                    ; 7 uses
  %min.iters.check399 = icmp ult i64 %i.dm, 8
  %i.dn = sub i64 %i.j, %i.h
  %diff.check398 = icmp ugt i64 %i.dn, -32
  %or.cond499 = or i1 %min.iters.check399, %diff.check398
  br i1 %or.cond499, label %.lr.ph.i122.preheader, label %vector.main.loop.iter.check400

vector.main.loop.iter.check400:                   ; preds = %iter.check415
  %min.iters.check401 = icmp ult i64 %i.dm, 32
  br i1 %min.iters.check401, label %vec.epilog.ph419, label %vector.ph402

vector.ph402:                                     ; preds = %vector.main.loop.iter.check400
  %i.do = and i64 %i.dm, 24
  %n.vec403 = and i64 %i.dm, -32                  ; 5 uses
  %i.dp = getelementptr i8, ptr %i.dh, i64 %n.vec403
  %i.dq = getelementptr i8, ptr %i.df, i64 %n.vec403
  br label %vector.body404

vector.body404:                                   ; preds = %vector.ph402, %vector.body404
  %index405 = phi i64 [ 0, %vector.ph402 ], [ %index.next410, %vector.body404 ] ; 3 uses
  %next.gep406 = getelementptr i8, ptr %i.dh, i64 %index405 ; 2 uses
  %next.gep407 = getelementptr i8, ptr %i.df, i64 %index405 ; 2 uses
  %i.dr = getelementptr i8, ptr %next.gep407, i64 16
  %wide.load408 = load <16 x i8>, ptr %next.gep407, align 1, !tbaa !109
  %wide.load409 = load <16 x i8>, ptr %i.dr, align 1, !tbaa !109
  %i.ds = getelementptr i8, ptr %next.gep406, i64 16
  store <16 x i8> %wide.load408, ptr %next.gep406, align 1, !tbaa !109
  store <16 x i8> %wide.load409, ptr %i.ds, align 1, !tbaa !109
  %index.next410 = add nuw i64 %index405, 32      ; 2 uses
  %i.dt = icmp eq i64 %index.next410, %n.vec403
  br i1 %i.dt, label %middle.block411, label %vector.body404, !llvm.loop !821

middle.block411:                                  ; preds = %vector.body404
  %cmp.n412 = icmp eq i64 %i.dm, %n.vec403
  br i1 %cmp.n412, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit128, label %vec.epilog.iter.check417

vec.epilog.iter.check417:                         ; preds = %middle.block411
  %min.epilog.iters.check418 = icmp eq i64 %i.do, 0
  br i1 %min.epilog.iters.check418, label %.lr.ph.i122.preheader, label %vec.epilog.ph419, !prof !126

vec.epilog.ph419:                                 ; preds = %vector.main.loop.iter.check400, %vec.epilog.iter.check417
  %vec.epilog.resume.val413 = phi i64 [ %n.vec403, %vec.epilog.iter.check417 ], [ 0, %vector.main.loop.iter.check400 ]
  %n.vec420 = and i64 %i.dm, -8                   ; 4 uses
  %i.du = getelementptr i8, ptr %i.dh, i64 %n.vec420
  %i.dv = getelementptr i8, ptr %i.df, i64 %n.vec420
  br label %vec.epilog.vector.body421

vec.epilog.vector.body421:                        ; preds = %vec.epilog.vector.body421, %vec.epilog.ph419
  %index422 = phi i64 [ %vec.epilog.resume.val413, %vec.epilog.ph419 ], [ %index.next426, %vec.epilog.vector.body421 ] ; 3 uses
  %next.gep423 = getelementptr i8, ptr %i.dh, i64 %index422
  %next.gep424 = getelementptr i8, ptr %i.df, i64 %index422
  %wide.load425 = load <8 x i8>, ptr %next.gep424, align 1, !tbaa !109
  store <8 x i8> %wide.load425, ptr %next.gep423, align 1, !tbaa !109
  %index.next426 = add nuw i64 %index422, 8       ; 2 uses
  %i.dw = icmp eq i64 %index.next426, %n.vec420
  br i1 %i.dw, label %vec.epilog.middle.block427, label %vec.epilog.vector.body421, !llvm.loop !822

vec.epilog.middle.block427:                       ; preds = %vec.epilog.vector.body421
  %cmp.n428 = icmp eq i64 %i.dm, %n.vec420
  br i1 %cmp.n428, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit128, label %.lr.ph.i122.preheader

.lr.ph.i122.preheader:                            ; preds = %iter.check415, %vec.epilog.iter.check417, %vec.epilog.middle.block427
  %.0711.i123.ph = phi ptr [ %i.dh, %iter.check415 ], [ %i.dp, %vec.epilog.iter.check417 ], [ %i.du, %vec.epilog.middle.block427 ] ; 2 uses
  %.0810.i124.ph = phi ptr [ %i.df, %iter.check415 ], [ %i.dq, %vec.epilog.iter.check417 ], [ %i.dv, %vec.epilog.middle.block427 ] ; 3 uses
  %.0810.i124.ph520 = ptrtoaddr ptr %.0810.i124.ph to i64 ; 2 uses
  %i.dx = sub i64 %i.i, %.0810.i124.ph520
  %xtraiter521 = and i64 %i.dx, 7                 ; 2 uses
  %lcmp.mod522.not = icmp eq i64 %xtraiter521, 0
  br i1 %lcmp.mod522.not, label %.lr.ph.i122.prol.loopexit, label %.lr.ph.i122.prol

.lr.ph.i122.prol:                                 ; preds = %.lr.ph.i122.preheader, %.lr.ph.i122.prol
  %.0711.i123.prol = phi ptr [ %i.dz, %.lr.ph.i122.prol ], [ %.0711.i123.ph, %.lr.ph.i122.preheader ] ; 2 uses
  %.0810.i124.prol = phi ptr [ %i.ea, %.lr.ph.i122.prol ], [ %.0810.i124.ph, %.lr.ph.i122.preheader ] ; 2 uses
  %prol.iter523 = phi i64 [ %prol.iter523.next, %.lr.ph.i122.prol ], [ 0, %.lr.ph.i122.preheader ]
  %i.dy = load i8, ptr %.0810.i124.prol, align 1, !tbaa !109
  store i8 %i.dy, ptr %.0711.i123.prol, align 1, !tbaa !109
  %i.dz = getelementptr inbounds nuw i8, ptr %.0711.i123.prol, i64 1 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0810.i124.prol, i64 1 ; 2 uses
  %prol.iter523.next = add i64 %prol.iter523, 1   ; 2 uses
  %prol.iter523.cmp.not = icmp eq i64 %prol.iter523.next, %xtraiter521
  br i1 %prol.iter523.cmp.not, label %.lr.ph.i122.prol.loopexit, label %.lr.ph.i122.prol, !llvm.loop !823

.lr.ph.i122.prol.loopexit:                        ; preds = %.lr.ph.i122.prol, %.lr.ph.i122.preheader
  %.0711.i123.unr = phi ptr [ %.0711.i123.ph, %.lr.ph.i122.preheader ], [ %i.dz, %.lr.ph.i122.prol ]
  %.0810.i124.unr = phi ptr [ %.0810.i124.ph, %.lr.ph.i122.preheader ], [ %i.ea, %.lr.ph.i122.prol ]
  %i.eb = sub i64 %.0810.i124.ph520, %i.i
  %i.ec = icmp ugt i64 %i.eb, -8
  br i1 %i.ec, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit128, label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %.lr.ph.i122.prol.loopexit, %.lr.ph.i122
  %.0711.i123 = phi ptr [ %i.ez, %.lr.ph.i122 ], [ %.0711.i123.unr, %.lr.ph.i122.prol.loopexit ] ; 9 uses
  %.0810.i124 = phi ptr [ %i.fa, %.lr.ph.i122 ], [ %.0810.i124.unr, %.lr.ph.i122.prol.loopexit ] ; 9 uses
  %i.ed = load i8, ptr %.0810.i124, align 1, !tbaa !109
  store i8 %i.ed, ptr %.0711.i123, align 1, !tbaa !109
  %i.ee = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 1
  %i.ef = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !109
  store i8 %i.eg, ptr %i.ee, align 1, !tbaa !109
  %i.eh = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 2
  %i.ei = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 2
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !109
  store i8 %i.ej, ptr %i.eh, align 1, !tbaa !109
  %i.ek = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 3
  %i.el = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 3
  %i.em = load i8, ptr %i.el, align 1, !tbaa !109
  store i8 %i.em, ptr %i.ek, align 1, !tbaa !109
  %i.en = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 4
  %i.eo = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 4
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !109
  store i8 %i.ep, ptr %i.en, align 1, !tbaa !109
  %i.eq = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 5
  %i.er = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 5
  %i.es = load i8, ptr %i.er, align 1, !tbaa !109
  store i8 %i.es, ptr %i.eq, align 1, !tbaa !109
  %i.et = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 6
  %i.eu = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 6
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !109
  store i8 %i.ev, ptr %i.et, align 1, !tbaa !109
  %i.ew = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 7
  %i.ex = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 7
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !109
  store i8 %i.ey, ptr %i.ew, align 1, !tbaa !109
  %i.ez = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 8 ; 2 uses
  %.not.i125.7 = icmp eq ptr %i.fa, %3
  br i1 %.not.i125.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit128, label %.lr.ph.i122, !llvm.loop !824

_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit128: ; preds = %.lr.ph.i122.prol.loopexit, %.lr.ph.i122, %middle.block411, %vec.epilog.middle.block427, %bb.k
  %i.fb = sub nuw i64 %i.k, %i.au
  %i.fc = add i64 %i.fb, %i.p                     ; 3 uses
  %i.fd = load i8, ptr %0, align 8, !tbaa !109
  %i.fe = trunc i8 %i.fd to i1
  br i1 %i.fe, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit128
  %i.ff = trunc i64 %i.fc to i8
  %i.fg = shl i8 %i.ff, 1
  %i.fh = or disjoint i8 %i.fg, 1
  store i8 %i.fh, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE9priv_sizeEm.exit

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit128
  %i.fi = load i64, ptr %0, align 8
  %i.fj = shl i64 %i.fc, 1
  %i.fk = and i64 %i.fi, 1
  %i.fl = or disjoint i64 %i.fk, %i.fj
  store i64 %i.fl, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE9priv_sizeEm.exit: ; preds = %bb.l, %bb.m
  %.not9.i129 = icmp eq ptr %1, %i.dh
  br i1 %.not9.i129, label %iter.check483, label %iter.check449

iter.check449:                                    ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE9priv_sizeEm.exit
  %i.fm = getelementptr inbounds i8, ptr %i.w, i64 %i.fc ; 6 uses
  %i.fn = add i64 %i.p, %i.at
  %i.fo = add i64 %i.fn, 1
  %i.fp = sub i64 %i.fo, %i.h                     ; 7 uses
  %min.iters.check433 = icmp ult i64 %i.fp, 8
  br i1 %min.iters.check433, label %.lr.ph.i130.preheader, label %vector.memcheck431

vector.memcheck431:                               ; preds = %iter.check449
  %i.fq = add i64 %i.h, %i.at
  %i.fr = add i64 %i.fq, %i.i
  %i.fs = add i64 %i.at, %i.j
  %i.ft = add i64 %i.fs, %i.h
  %i.fu = sub i64 %i.ft, %i.fr
  %diff.check432 = icmp ugt i64 %i.fu, -32
  br i1 %diff.check432, label %.lr.ph.i130.preheader, label %vector.main.loop.iter.check434

vector.main.loop.iter.check434:                   ; preds = %vector.memcheck431
  %min.iters.check435 = icmp ult i64 %i.fp, 32
  br i1 %min.iters.check435, label %vec.epilog.ph453, label %vector.ph436

vector.ph436:                                     ; preds = %vector.main.loop.iter.check434
  %i.fv = and i64 %i.fp, 24
  %n.vec437 = and i64 %i.fp, -32                  ; 5 uses
  %i.fw = getelementptr i8, ptr %i.fm, i64 %n.vec437
  %i.fx = getelementptr i8, ptr %1, i64 %n.vec437
  br label %vector.body438

vector.body438:                                   ; preds = %vector.ph436, %vector.body438
  %index439 = phi i64 [ 0, %vector.ph436 ], [ %index.next444, %vector.body438 ] ; 3 uses
  %next.gep440 = getelementptr i8, ptr %i.fm, i64 %index439 ; 2 uses
  %next.gep441 = getelementptr i8, ptr %1, i64 %index439 ; 2 uses
  %i.fy = getelementptr i8, ptr %next.gep441, i64 16
  %wide.load442 = load <16 x i8>, ptr %next.gep441, align 1, !tbaa !109
  %wide.load443 = load <16 x i8>, ptr %i.fy, align 1, !tbaa !109
  %i.fz = getelementptr i8, ptr %next.gep440, i64 16
  store <16 x i8> %wide.load442, ptr %next.gep440, align 1, !tbaa !109
  store <16 x i8> %wide.load443, ptr %i.fz, align 1, !tbaa !109
  %index.next444 = add nuw i64 %index439, 32      ; 2 uses
  %i.ga = icmp eq i64 %index.next444, %n.vec437
  br i1 %i.ga, label %middle.block445, label %vector.body438, !llvm.loop !825

middle.block445:                                  ; preds = %vector.body438
  %cmp.n446 = icmp eq i64 %i.fp, %n.vec437
  br i1 %cmp.n446, label %iter.check483, label %vec.epilog.iter.check451

vec.epilog.iter.check451:                         ; preds = %middle.block445
  %min.epilog.iters.check452 = icmp eq i64 %i.fv, 0
  br i1 %min.epilog.iters.check452, label %.lr.ph.i130.preheader, label %vec.epilog.ph453, !prof !126

vec.epilog.ph453:                                 ; preds = %vector.main.loop.iter.check434, %vec.epilog.iter.check451
  %vec.epilog.resume.val447 = phi i64 [ %n.vec437, %vec.epilog.iter.check451 ], [ 0, %vector.main.loop.iter.check434 ]
  %n.vec454 = and i64 %i.fp, -8                   ; 4 uses
  %i.gb = getelementptr i8, ptr %i.fm, i64 %n.vec454
  %i.gc = getelementptr i8, ptr %1, i64 %n.vec454
  br label %vec.epilog.vector.body455

vec.epilog.vector.body455:                        ; preds = %vec.epilog.vector.body455, %vec.epilog.ph453
  %index456 = phi i64 [ %vec.epilog.resume.val447, %vec.epilog.ph453 ], [ %index.next460, %vec.epilog.vector.body455 ] ; 3 uses
  %next.gep457 = getelementptr i8, ptr %i.fm, i64 %index456
  %next.gep458 = getelementptr i8, ptr %1, i64 %index456
  %wide.load459 = load <8 x i8>, ptr %next.gep458, align 1, !tbaa !109
  store <8 x i8> %wide.load459, ptr %next.gep457, align 1, !tbaa !109
  %index.next460 = add nuw i64 %index456, 8       ; 2 uses
  %i.gd = icmp eq i64 %index.next460, %n.vec454
  br i1 %i.gd, label %vec.epilog.middle.block461, label %vec.epilog.vector.body455, !llvm.loop !826

vec.epilog.middle.block461:                       ; preds = %vec.epilog.vector.body455
  %cmp.n462 = icmp eq i64 %i.fp, %n.vec454
  br i1 %cmp.n462, label %iter.check483, label %.lr.ph.i130.preheader

.lr.ph.i130.preheader:                            ; preds = %iter.check449, %vector.memcheck431, %vec.epilog.iter.check451, %vec.epilog.middle.block461
  %.0711.i131.ph = phi ptr [ %i.fm, %iter.check449 ], [ %i.fm, %vector.memcheck431 ], [ %i.fw, %vec.epilog.iter.check451 ], [ %i.gb, %vec.epilog.middle.block461 ] ; 2 uses
  %.0810.i132.ph = phi ptr [ %1, %iter.check449 ], [ %1, %vector.memcheck431 ], [ %i.fx, %vec.epilog.iter.check451 ], [ %i.gc, %vec.epilog.middle.block461 ] ; 3 uses
  %i.ge = add i64 %i.p, %i.at                     ; 2 uses
  %i.gf = add i64 %i.ge, 1
  %.0810.i132.ph524 = ptrtoaddr ptr %.0810.i132.ph to i64 ; 2 uses
  %i.gg = sub i64 %i.gf, %.0810.i132.ph524
  %i.gh = sub i64 %i.ge, %.0810.i132.ph524
  %xtraiter525 = and i64 %i.gg, 7                 ; 2 uses
  %lcmp.mod526.not = icmp eq i64 %xtraiter525, 0
  br i1 %lcmp.mod526.not, label %.lr.ph.i130.prol.loopexit, label %.lr.ph.i130.prol

.lr.ph.i130.prol:                                 ; preds = %.lr.ph.i130.preheader, %.lr.ph.i130.prol
  %.0711.i131.prol = phi ptr [ %i.gj, %.lr.ph.i130.prol ], [ %.0711.i131.ph, %.lr.ph.i130.preheader ] ; 2 uses
  %.0810.i132.prol = phi ptr [ %i.gk, %.lr.ph.i130.prol ], [ %.0810.i132.ph, %.lr.ph.i130.preheader ] ; 2 uses
  %prol.iter527 = phi i64 [ %prol.iter527.next, %.lr.ph.i130.prol ], [ 0, %.lr.ph.i130.preheader ]
  %i.gi = load i8, ptr %.0810.i132.prol, align 1, !tbaa !109
  store i8 %i.gi, ptr %.0711.i131.prol, align 1, !tbaa !109
  %i.gj = getelementptr inbounds nuw i8, ptr %.0711.i131.prol, i64 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.0810.i132.prol, i64 1 ; 2 uses
  %prol.iter527.next = add i64 %prol.iter527, 1   ; 2 uses
  %prol.iter527.cmp.not = icmp eq i64 %prol.iter527.next, %xtraiter525
  br i1 %prol.iter527.cmp.not, label %.lr.ph.i130.prol.loopexit, label %.lr.ph.i130.prol, !llvm.loop !827

.lr.ph.i130.prol.loopexit:                        ; preds = %.lr.ph.i130.prol, %.lr.ph.i130.preheader
  %.0711.i131.unr = phi ptr [ %.0711.i131.ph, %.lr.ph.i130.preheader ], [ %i.gj, %.lr.ph.i130.prol ]
  %.0810.i132.unr = phi ptr [ %.0810.i132.ph, %.lr.ph.i130.preheader ], [ %i.gk, %.lr.ph.i130.prol ]
  %i.gl = icmp ult i64 %i.gh, 7
  br i1 %i.gl, label %iter.check483, label %.lr.ph.i130

.lr.ph.i130:                                      ; preds = %.lr.ph.i130.prol.loopexit, %.lr.ph.i130
  %.0711.i131 = phi ptr [ %i.hi, %.lr.ph.i130 ], [ %.0711.i131.unr, %.lr.ph.i130.prol.loopexit ] ; 9 uses
  %.0810.i132 = phi ptr [ %i.hj, %.lr.ph.i130 ], [ %.0810.i132.unr, %.lr.ph.i130.prol.loopexit ] ; 9 uses
  %i.gm = load i8, ptr %.0810.i132, align 1, !tbaa !109
  store i8 %i.gm, ptr %.0711.i131, align 1, !tbaa !109
  %i.gn = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 1
  %i.go = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 1
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !109
  store i8 %i.gp, ptr %i.gn, align 1, !tbaa !109
  %i.gq = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 2
  %i.gr = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 2
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !109
  store i8 %i.gs, ptr %i.gq, align 1, !tbaa !109
  %i.gt = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 3
  %i.gu = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 3
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !109
  store i8 %i.gv, ptr %i.gt, align 1, !tbaa !109
  %i.gw = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 4
  %i.gx = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 4
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !109
  store i8 %i.gy, ptr %i.gw, align 1, !tbaa !109
  %i.gz = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 5
  %i.ha = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 5
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !109
  store i8 %i.hb, ptr %i.gz, align 1, !tbaa !109
  %i.hc = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 6
  %i.hd = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 6
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !109
  store i8 %i.he, ptr %i.hc, align 1, !tbaa !109
  %i.hf = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 7
  %i.hg = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 7 ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !109
  store i8 %i.hh, ptr %i.hf, align 1, !tbaa !109
  %i.hi = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 8
  %.not.i133.7 = icmp eq ptr %i.hg, %i.dg
  br i1 %.not.i133.7, label %iter.check483, label %.lr.ph.i130, !llvm.loop !828

iter.check483:                                    ; preds = %.lr.ph.i130.prol.loopexit, %.lr.ph.i130, %middle.block445, %vec.epilog.middle.block461, %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvE9priv_sizeEm.exit
  %i.hk = add i64 %i.p, %i.at
  %i.hl = add i64 %i.hk, 1
  %i.hm = sub i64 %i.hl, %i.h                     ; 7 uses
  %min.iters.check467 = icmp ult i64 %i.hm, 8
  %i.hn = sub i64 %i.j, %i.h
  %diff.check466 = icmp ugt i64 %i.hn, -32
  %or.cond500 = or i1 %min.iters.check467, %diff.check466
  br i1 %or.cond500, label %.lr.ph.i137.preheader, label %vector.main.loop.iter.check468

vector.main.loop.iter.check468:                   ; preds = %iter.check483
  %min.iters.check469 = icmp ult i64 %i.hm, 32
  br i1 %min.iters.check469, label %vec.epilog.ph487, label %vector.ph470

vector.ph470:                                     ; preds = %vector.main.loop.iter.check468
  %i.ho = and i64 %i.hm, 24
  %n.vec471 = and i64 %i.hm, -32                  ; 5 uses
  %i.hp = getelementptr i8, ptr %1, i64 %n.vec471
  %i.hq = getelementptr i8, ptr %2, i64 %n.vec471
  br label %vector.body472

vector.body472:                                   ; preds = %vector.ph470, %vector.body472
  %index473 = phi i64 [ 0, %vector.ph470 ], [ %index.next478, %vector.body472 ] ; 3 uses
  %next.gep474 = getelementptr i8, ptr %1, i64 %index473 ; 2 uses
  %next.gep475 = getelementptr i8, ptr %2, i64 %index473 ; 2 uses
  %i.hr = getelementptr i8, ptr %next.gep475, i64 16
  %wide.load476 = load <16 x i8>, ptr %next.gep475, align 1, !tbaa !109
  %wide.load477 = load <16 x i8>, ptr %i.hr, align 1, !tbaa !109
  %i.hs = getelementptr i8, ptr %next.gep474, i64 16
  store <16 x i8> %wide.load476, ptr %next.gep474, align 1, !tbaa !109
  store <16 x i8> %wide.load477, ptr %i.hs, align 1, !tbaa !109
  %index.next478 = add nuw i64 %index473, 32      ; 2 uses
  %i.ht = icmp eq i64 %index.next478, %n.vec471
  br i1 %i.ht, label %middle.block479, label %vector.body472, !llvm.loop !829

middle.block479:                                  ; preds = %vector.body472
  %cmp.n480 = icmp eq i64 %i.hm, %n.vec471
  br i1 %cmp.n480, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9priv_copyIPcS9_EEvT_SA_T0_.exit, label %vec.epilog.iter.check485

vec.epilog.iter.check485:                         ; preds = %middle.block479
  %min.epilog.iters.check486 = icmp eq i64 %i.ho, 0
  br i1 %min.epilog.iters.check486, label %.lr.ph.i137.preheader, label %vec.epilog.ph487, !prof !126

vec.epilog.ph487:                                 ; preds = %vector.main.loop.iter.check468, %vec.epilog.iter.check485
  %vec.epilog.resume.val481 = phi i64 [ %n.vec471, %vec.epilog.iter.check485 ], [ 0, %vector.main.loop.iter.check468 ]
  %n.vec488 = and i64 %i.hm, -8                   ; 4 uses
  %i.hu = getelementptr i8, ptr %1, i64 %n.vec488
  %i.hv = getelementptr i8, ptr %2, i64 %n.vec488
  br label %vec.epilog.vector.body489

vec.epilog.vector.body489:                        ; preds = %vec.epilog.vector.body489, %vec.epilog.ph487
  %index490 = phi i64 [ %vec.epilog.resume.val481, %vec.epilog.ph487 ], [ %index.next494, %vec.epilog.vector.body489 ] ; 3 uses
  %next.gep491 = getelementptr i8, ptr %1, i64 %index490
  %next.gep492 = getelementptr i8, ptr %2, i64 %index490
  %wide.load493 = load <8 x i8>, ptr %next.gep492, align 1, !tbaa !109
  store <8 x i8> %wide.load493, ptr %next.gep491, align 1, !tbaa !109
  %index.next494 = add nuw i64 %index490, 8       ; 2 uses
  %i.hw = icmp eq i64 %index.next494, %n.vec488
  br i1 %i.hw, label %vec.epilog.middle.block495, label %vec.epilog.vector.body489, !llvm.loop !830

vec.epilog.middle.block495:                       ; preds = %vec.epilog.vector.body489
  %cmp.n496 = icmp eq i64 %i.hm, %n.vec488
  br i1 %cmp.n496, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9priv_copyIPcS9_EEvT_SA_T0_.exit, label %.lr.ph.i137.preheader

.lr.ph.i137.preheader:                            ; preds = %iter.check483, %vec.epilog.iter.check485, %vec.epilog.middle.block495
  %.09.i138.ph = phi ptr [ %1, %iter.check483 ], [ %i.hp, %vec.epilog.iter.check485 ], [ %i.hu, %vec.epilog.middle.block495 ]
  %.068.i139.ph = phi ptr [ %2, %iter.check483 ], [ %i.hq, %vec.epilog.iter.check485 ], [ %i.hv, %vec.epilog.middle.block495 ]
  br label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137.preheader, %.lr.ph.i137
  %.09.i138 = phi ptr [ %i.hz, %.lr.ph.i137 ], [ %.09.i138.ph, %.lr.ph.i137.preheader ] ; 2 uses
  %.068.i139 = phi ptr [ %i.hy, %.lr.ph.i137 ], [ %.068.i139.ph, %.lr.ph.i137.preheader ] ; 3 uses
  %i.hx = load i8, ptr %.068.i139, align 1, !tbaa !109
  store i8 %i.hx, ptr %.09.i138, align 1, !tbaa !109
  %i.hy = getelementptr inbounds nuw i8, ptr %.068.i139, i64 1
end_hunk_10
begin_hunk_11_@_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE6insertIPcEES7_PKcT_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE:bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %.068.i, i64 3
  %i.co = getelementptr inbounds nuw i8, ptr %.09.i, i64 3
  %i.cp = load i8, ptr %i.cn, align 1, !tbaa !109
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !109
  %i.cq = getelementptr inbounds nuw i8, ptr %.068.i, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %.09.i, i64 4
  %i.cs = load i8, ptr %i.cq, align 1, !tbaa !109
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !109
  %i.ct = getelementptr inbounds nuw i8, ptr %.068.i, i64 5
  %i.cu = getelementptr inbounds nuw i8, ptr %.09.i, i64 5
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !109
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !109
  %i.cw = getelementptr inbounds nuw i8, ptr %.068.i, i64 6
  %i.cx = getelementptr inbounds nuw i8, ptr %.09.i, i64 6
  %i.cy = load i8, ptr %i.cw, align 1, !tbaa !109
  store i8 %i.cy, ptr %i.cx, align 1, !tbaa !109
  %i.cz = getelementptr inbounds nuw i8, ptr %.068.i, i64 7
  %i.da = getelementptr inbounds nuw i8, ptr %.09.i, i64 7
  %i.db = load i8, ptr %i.cz, align 1, !tbaa !109
  store i8 %i.db, ptr %i.da, align 1, !tbaa !109
  %i.dc = getelementptr inbounds nuw i8, ptr %.068.i, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %.not.i120.7 = icmp eq ptr %i.dc, %3
  br i1 %.not.i120.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE9priv_copyIPcS7_EEvT_S8_T0_.exit, label %.lr.ph.i119, !llvm.loop !872

bb.k:                                             ; preds = %bb.i
  %i.de = getelementptr i8, ptr %2, i64 %i.au     ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 1      ; 6 uses
  %i.dg = getelementptr i8, ptr %i.w, i64 %i.p    ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 1      ; 6 uses
  %.not9.i121 = icmp eq ptr %i.df, %3
  br i1 %.not9.i121, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPcS7_EEmT_S8_T0_.exit128, label %iter.check415

iter.check415:                                    ; preds = %bb.k
  %i.di = add i64 %i.h, %i.i
  %i.dj = xor i64 %i.p, -1
  %i.dk = add i64 %i.di, %i.dj
  %i.dl = add i64 %i.at, %i.j
  %i.dm = sub i64 %i.dk, %i.dl                    ; 7 uses
  %min.iters.check399 = icmp ult i64 %i.dm, 8
  %i.dn = sub i64 %i.j, %i.h
  %diff.check398 = icmp ugt i64 %i.dn, -32
  %or.cond499 = or i1 %min.iters.check399, %diff.check398
  br i1 %or.cond499, label %.lr.ph.i122.preheader, label %vector.main.loop.iter.check400

vector.main.loop.iter.check400:                   ; preds = %iter.check415
  %min.iters.check401 = icmp ult i64 %i.dm, 32
  br i1 %min.iters.check401, label %vec.epilog.ph419, label %vector.ph402

vector.ph402:                                     ; preds = %vector.main.loop.iter.check400
  %i.do = and i64 %i.dm, 24
  %n.vec403 = and i64 %i.dm, -32                  ; 5 uses
  %i.dp = getelementptr i8, ptr %i.dh, i64 %n.vec403
  %i.dq = getelementptr i8, ptr %i.df, i64 %n.vec403
  br label %vector.body404

vector.body404:                                   ; preds = %vector.ph402, %vector.body404
  %index405 = phi i64 [ 0, %vector.ph402 ], [ %index.next410, %vector.body404 ] ; 3 uses
  %next.gep406 = getelementptr i8, ptr %i.dh, i64 %index405 ; 2 uses
  %next.gep407 = getelementptr i8, ptr %i.df, i64 %index405 ; 2 uses
  %i.dr = getelementptr i8, ptr %next.gep407, i64 16
  %wide.load408 = load <16 x i8>, ptr %next.gep407, align 1, !tbaa !109
  %wide.load409 = load <16 x i8>, ptr %i.dr, align 1, !tbaa !109
  %i.ds = getelementptr i8, ptr %next.gep406, i64 16
  store <16 x i8> %wide.load408, ptr %next.gep406, align 1, !tbaa !109
  store <16 x i8> %wide.load409, ptr %i.ds, align 1, !tbaa !109
  %index.next410 = add nuw i64 %index405, 32      ; 2 uses
  %i.dt = icmp eq i64 %index.next410, %n.vec403
  br i1 %i.dt, label %middle.block411, label %vector.body404, !llvm.loop !873

middle.block411:                                  ; preds = %vector.body404
  %cmp.n412 = icmp eq i64 %i.dm, %n.vec403
  br i1 %cmp.n412, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPcS7_EEmT_S8_T0_.exit128, label %vec.epilog.iter.check417

vec.epilog.iter.check417:                         ; preds = %middle.block411
  %min.epilog.iters.check418 = icmp eq i64 %i.do, 0
  br i1 %min.epilog.iters.check418, label %.lr.ph.i122.preheader, label %vec.epilog.ph419, !prof !126

vec.epilog.ph419:                                 ; preds = %vector.main.loop.iter.check400, %vec.epilog.iter.check417
  %vec.epilog.resume.val413 = phi i64 [ %n.vec403, %vec.epilog.iter.check417 ], [ 0, %vector.main.loop.iter.check400 ]
  %n.vec420 = and i64 %i.dm, -8                   ; 4 uses
  %i.du = getelementptr i8, ptr %i.dh, i64 %n.vec420
  %i.dv = getelementptr i8, ptr %i.df, i64 %n.vec420
  br label %vec.epilog.vector.body421

vec.epilog.vector.body421:                        ; preds = %vec.epilog.vector.body421, %vec.epilog.ph419
  %index422 = phi i64 [ %vec.epilog.resume.val413, %vec.epilog.ph419 ], [ %index.next426, %vec.epilog.vector.body421 ] ; 3 uses
  %next.gep423 = getelementptr i8, ptr %i.dh, i64 %index422
  %next.gep424 = getelementptr i8, ptr %i.df, i64 %index422
  %wide.load425 = load <8 x i8>, ptr %next.gep424, align 1, !tbaa !109
  store <8 x i8> %wide.load425, ptr %next.gep423, align 1, !tbaa !109
  %index.next426 = add nuw i64 %index422, 8       ; 2 uses
  %i.dw = icmp eq i64 %index.next426, %n.vec420
  br i1 %i.dw, label %vec.epilog.middle.block427, label %vec.epilog.vector.body421, !llvm.loop !874

vec.epilog.middle.block427:                       ; preds = %vec.epilog.vector.body421
  %cmp.n428 = icmp eq i64 %i.dm, %n.vec420
  br i1 %cmp.n428, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPcS7_EEmT_S8_T0_.exit128, label %.lr.ph.i122.preheader

.lr.ph.i122.preheader:                            ; preds = %iter.check415, %vec.epilog.iter.check417, %vec.epilog.middle.block427
  %.0711.i123.ph = phi ptr [ %i.dh, %iter.check415 ], [ %i.dp, %vec.epilog.iter.check417 ], [ %i.du, %vec.epilog.middle.block427 ] ; 2 uses
  %.0810.i124.ph = phi ptr [ %i.df, %iter.check415 ], [ %i.dq, %vec.epilog.iter.check417 ], [ %i.dv, %vec.epilog.middle.block427 ] ; 3 uses
  %.0810.i124.ph520 = ptrtoaddr ptr %.0810.i124.ph to i64 ; 2 uses
  %i.dx = sub i64 %i.i, %.0810.i124.ph520
  %xtraiter521 = and i64 %i.dx, 7                 ; 2 uses
  %lcmp.mod522.not = icmp eq i64 %xtraiter521, 0
  br i1 %lcmp.mod522.not, label %.lr.ph.i122.prol.loopexit, label %.lr.ph.i122.prol

.lr.ph.i122.prol:                                 ; preds = %.lr.ph.i122.preheader, %.lr.ph.i122.prol
  %.0711.i123.prol = phi ptr [ %i.dz, %.lr.ph.i122.prol ], [ %.0711.i123.ph, %.lr.ph.i122.preheader ] ; 2 uses
  %.0810.i124.prol = phi ptr [ %i.ea, %.lr.ph.i122.prol ], [ %.0810.i124.ph, %.lr.ph.i122.preheader ] ; 2 uses
  %prol.iter523 = phi i64 [ %prol.iter523.next, %.lr.ph.i122.prol ], [ 0, %.lr.ph.i122.preheader ]
  %i.dy = load i8, ptr %.0810.i124.prol, align 1, !tbaa !109
  store i8 %i.dy, ptr %.0711.i123.prol, align 1, !tbaa !109
  %i.dz = getelementptr inbounds nuw i8, ptr %.0711.i123.prol, i64 1 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0810.i124.prol, i64 1 ; 2 uses
  %prol.iter523.next = add i64 %prol.iter523, 1   ; 2 uses
  %prol.iter523.cmp.not = icmp eq i64 %prol.iter523.next, %xtraiter521
  br i1 %prol.iter523.cmp.not, label %.lr.ph.i122.prol.loopexit, label %.lr.ph.i122.prol, !llvm.loop !875

.lr.ph.i122.prol.loopexit:                        ; preds = %.lr.ph.i122.prol, %.lr.ph.i122.preheader
  %.0711.i123.unr = phi ptr [ %.0711.i123.ph, %.lr.ph.i122.preheader ], [ %i.dz, %.lr.ph.i122.prol ]
  %.0810.i124.unr = phi ptr [ %.0810.i124.ph, %.lr.ph.i122.preheader ], [ %i.ea, %.lr.ph.i122.prol ]
  %i.eb = sub i64 %.0810.i124.ph520, %i.i
  %i.ec = icmp ugt i64 %i.eb, -8
  br i1 %i.ec, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPcS7_EEmT_S8_T0_.exit128, label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %.lr.ph.i122.prol.loopexit, %.lr.ph.i122
  %.0711.i123 = phi ptr [ %i.ez, %.lr.ph.i122 ], [ %.0711.i123.unr, %.lr.ph.i122.prol.loopexit ] ; 9 uses
  %.0810.i124 = phi ptr [ %i.fa, %.lr.ph.i122 ], [ %.0810.i124.unr, %.lr.ph.i122.prol.loopexit ] ; 9 uses
  %i.ed = load i8, ptr %.0810.i124, align 1, !tbaa !109
  store i8 %i.ed, ptr %.0711.i123, align 1, !tbaa !109
  %i.ee = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 1
  %i.ef = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !109
  store i8 %i.eg, ptr %i.ee, align 1, !tbaa !109
  %i.eh = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 2
  %i.ei = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 2
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !109
  store i8 %i.ej, ptr %i.eh, align 1, !tbaa !109
  %i.ek = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 3
  %i.el = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 3
  %i.em = load i8, ptr %i.el, align 1, !tbaa !109
  store i8 %i.em, ptr %i.ek, align 1, !tbaa !109
  %i.en = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 4
  %i.eo = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 4
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !109
  store i8 %i.ep, ptr %i.en, align 1, !tbaa !109
  %i.eq = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 5
  %i.er = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 5
  %i.es = load i8, ptr %i.er, align 1, !tbaa !109
  store i8 %i.es, ptr %i.eq, align 1, !tbaa !109
  %i.et = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 6
  %i.eu = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 6
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !109
  store i8 %i.ev, ptr %i.et, align 1, !tbaa !109
  %i.ew = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 7
  %i.ex = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 7
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !109
  store i8 %i.ey, ptr %i.ew, align 1, !tbaa !109
  %i.ez = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 8 ; 2 uses
  %.not.i125.7 = icmp eq ptr %i.fa, %3
  br i1 %.not.i125.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPcS7_EEmT_S8_T0_.exit128, label %.lr.ph.i122, !llvm.loop !876

_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPcS7_EEmT_S8_T0_.exit128: ; preds = %.lr.ph.i122.prol.loopexit, %.lr.ph.i122, %middle.block411, %vec.epilog.middle.block427, %bb.k
  %i.fb = sub nuw i64 %i.k, %i.au
  %i.fc = add i64 %i.fb, %i.p                     ; 3 uses
  %i.fd = load i8, ptr %0, align 8, !tbaa !109
  %i.fe = trunc i8 %i.fd to i1
  br i1 %i.fe, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPcS7_EEmT_S8_T0_.exit128
  %i.ff = trunc i64 %i.fc to i8
  %i.fg = shl i8 %i.ff, 1
  %i.fh = or disjoint i8 %i.fg, 1
  store i8 %i.fh, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseISaIcEvE9priv_sizeEm.exit

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE23priv_uninitialized_copyIPcS7_EEmT_S8_T0_.exit128
  %i.fi = load i64, ptr %0, align 8
  %i.fj = shl i64 %i.fc, 1
  %i.fk = and i64 %i.fi, 1
  %i.fl = or disjoint i64 %i.fk, %i.fj
  store i64 %i.fl, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseISaIcEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseISaIcEvE9priv_sizeEm.exit: ; preds = %bb.l, %bb.m
  %.not9.i129 = icmp eq ptr %1, %i.dh
  br i1 %.not9.i129, label %iter.check483, label %iter.check449

iter.check449:                                    ; preds = %_ZN5boost9container3dtl17basic_string_baseISaIcEvE9priv_sizeEm.exit
  %i.fm = getelementptr inbounds i8, ptr %i.w, i64 %i.fc ; 6 uses
  %i.fn = add i64 %i.p, %i.at
  %i.fo = add i64 %i.fn, 1
  %i.fp = sub i64 %i.fo, %i.h                     ; 7 uses
  %min.iters.check433 = icmp ult i64 %i.fp, 8
  br i1 %min.iters.check433, label %.lr.ph.i130.preheader, label %vector.memcheck431

vector.memcheck431:                               ; preds = %iter.check449
  %i.fq = add i64 %i.h, %i.at
  %i.fr = add i64 %i.fq, %i.i
  %i.fs = add i64 %i.at, %i.j
  %i.ft = add i64 %i.fs, %i.h
  %i.fu = sub i64 %i.ft, %i.fr
  %diff.check432 = icmp ugt i64 %i.fu, -32
  br i1 %diff.check432, label %.lr.ph.i130.preheader, label %vector.main.loop.iter.check434

vector.main.loop.iter.check434:                   ; preds = %vector.memcheck431
  %min.iters.check435 = icmp ult i64 %i.fp, 32
  br i1 %min.iters.check435, label %vec.epilog.ph453, label %vector.ph436

vector.ph436:                                     ; preds = %vector.main.loop.iter.check434
  %i.fv = and i64 %i.fp, 24
  %n.vec437 = and i64 %i.fp, -32                  ; 5 uses
  %i.fw = getelementptr i8, ptr %i.fm, i64 %n.vec437
  %i.fx = getelementptr i8, ptr %1, i64 %n.vec437
  br label %vector.body438

vector.body438:                                   ; preds = %vector.ph436, %vector.body438
  %index439 = phi i64 [ 0, %vector.ph436 ], [ %index.next444, %vector.body438 ] ; 3 uses
  %next.gep440 = getelementptr i8, ptr %i.fm, i64 %index439 ; 2 uses
  %next.gep441 = getelementptr i8, ptr %1, i64 %index439 ; 2 uses
  %i.fy = getelementptr i8, ptr %next.gep441, i64 16
  %wide.load442 = load <16 x i8>, ptr %next.gep441, align 1, !tbaa !109
  %wide.load443 = load <16 x i8>, ptr %i.fy, align 1, !tbaa !109
  %i.fz = getelementptr i8, ptr %next.gep440, i64 16
  store <16 x i8> %wide.load442, ptr %next.gep440, align 1, !tbaa !109
  store <16 x i8> %wide.load443, ptr %i.fz, align 1, !tbaa !109
  %index.next444 = add nuw i64 %index439, 32      ; 2 uses
  %i.ga = icmp eq i64 %index.next444, %n.vec437
  br i1 %i.ga, label %middle.block445, label %vector.body438, !llvm.loop !877

middle.block445:                                  ; preds = %vector.body438
  %cmp.n446 = icmp eq i64 %i.fp, %n.vec437
  br i1 %cmp.n446, label %iter.check483, label %vec.epilog.iter.check451

vec.epilog.iter.check451:                         ; preds = %middle.block445
  %min.epilog.iters.check452 = icmp eq i64 %i.fv, 0
  br i1 %min.epilog.iters.check452, label %.lr.ph.i130.preheader, label %vec.epilog.ph453, !prof !126

vec.epilog.ph453:                                 ; preds = %vector.main.loop.iter.check434, %vec.epilog.iter.check451
  %vec.epilog.resume.val447 = phi i64 [ %n.vec437, %vec.epilog.iter.check451 ], [ 0, %vector.main.loop.iter.check434 ]
  %n.vec454 = and i64 %i.fp, -8                   ; 4 uses
  %i.gb = getelementptr i8, ptr %i.fm, i64 %n.vec454
  %i.gc = getelementptr i8, ptr %1, i64 %n.vec454
  br label %vec.epilog.vector.body455

vec.epilog.vector.body455:                        ; preds = %vec.epilog.vector.body455, %vec.epilog.ph453
  %index456 = phi i64 [ %vec.epilog.resume.val447, %vec.epilog.ph453 ], [ %index.next460, %vec.epilog.vector.body455 ] ; 3 uses
  %next.gep457 = getelementptr i8, ptr %i.fm, i64 %index456
  %next.gep458 = getelementptr i8, ptr %1, i64 %index456
  %wide.load459 = load <8 x i8>, ptr %next.gep458, align 1, !tbaa !109
  store <8 x i8> %wide.load459, ptr %next.gep457, align 1, !tbaa !109
  %index.next460 = add nuw i64 %index456, 8       ; 2 uses
  %i.gd = icmp eq i64 %index.next460, %n.vec454
  br i1 %i.gd, label %vec.epilog.middle.block461, label %vec.epilog.vector.body455, !llvm.loop !878

vec.epilog.middle.block461:                       ; preds = %vec.epilog.vector.body455
  %cmp.n462 = icmp eq i64 %i.fp, %n.vec454
  br i1 %cmp.n462, label %iter.check483, label %.lr.ph.i130.preheader

.lr.ph.i130.preheader:                            ; preds = %iter.check449, %vector.memcheck431, %vec.epilog.iter.check451, %vec.epilog.middle.block461
  %.0711.i131.ph = phi ptr [ %i.fm, %iter.check449 ], [ %i.fm, %vector.memcheck431 ], [ %i.fw, %vec.epilog.iter.check451 ], [ %i.gb, %vec.epilog.middle.block461 ] ; 2 uses
  %.0810.i132.ph = phi ptr [ %1, %iter.check449 ], [ %1, %vector.memcheck431 ], [ %i.fx, %vec.epilog.iter.check451 ], [ %i.gc, %vec.epilog.middle.block461 ] ; 3 uses
  %i.ge = add i64 %i.p, %i.at                     ; 2 uses
  %i.gf = add i64 %i.ge, 1
  %.0810.i132.ph524 = ptrtoaddr ptr %.0810.i132.ph to i64 ; 2 uses
  %i.gg = sub i64 %i.gf, %.0810.i132.ph524
  %i.gh = sub i64 %i.ge, %.0810.i132.ph524
  %xtraiter525 = and i64 %i.gg, 7                 ; 2 uses
  %lcmp.mod526.not = icmp eq i64 %xtraiter525, 0
  br i1 %lcmp.mod526.not, label %.lr.ph.i130.prol.loopexit, label %.lr.ph.i130.prol

.lr.ph.i130.prol:                                 ; preds = %.lr.ph.i130.preheader, %.lr.ph.i130.prol
  %.0711.i131.prol = phi ptr [ %i.gj, %.lr.ph.i130.prol ], [ %.0711.i131.ph, %.lr.ph.i130.preheader ] ; 2 uses
  %.0810.i132.prol = phi ptr [ %i.gk, %.lr.ph.i130.prol ], [ %.0810.i132.ph, %.lr.ph.i130.preheader ] ; 2 uses
  %prol.iter527 = phi i64 [ %prol.iter527.next, %.lr.ph.i130.prol ], [ 0, %.lr.ph.i130.preheader ]
  %i.gi = load i8, ptr %.0810.i132.prol, align 1, !tbaa !109
  store i8 %i.gi, ptr %.0711.i131.prol, align 1, !tbaa !109
  %i.gj = getelementptr inbounds nuw i8, ptr %.0711.i131.prol, i64 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.0810.i132.prol, i64 1 ; 2 uses
  %prol.iter527.next = add i64 %prol.iter527, 1   ; 2 uses
  %prol.iter527.cmp.not = icmp eq i64 %prol.iter527.next, %xtraiter525
  br i1 %prol.iter527.cmp.not, label %.lr.ph.i130.prol.loopexit, label %.lr.ph.i130.prol, !llvm.loop !879

.lr.ph.i130.prol.loopexit:                        ; preds = %.lr.ph.i130.prol, %.lr.ph.i130.preheader
  %.0711.i131.unr = phi ptr [ %.0711.i131.ph, %.lr.ph.i130.preheader ], [ %i.gj, %.lr.ph.i130.prol ]
  %.0810.i132.unr = phi ptr [ %.0810.i132.ph, %.lr.ph.i130.preheader ], [ %i.gk, %.lr.ph.i130.prol ]
  %i.gl = icmp ult i64 %i.gh, 7
  br i1 %i.gl, label %iter.check483, label %.lr.ph.i130

.lr.ph.i130:                                      ; preds = %.lr.ph.i130.prol.loopexit, %.lr.ph.i130
  %.0711.i131 = phi ptr [ %i.hi, %.lr.ph.i130 ], [ %.0711.i131.unr, %.lr.ph.i130.prol.loopexit ] ; 9 uses
  %.0810.i132 = phi ptr [ %i.hj, %.lr.ph.i130 ], [ %.0810.i132.unr, %.lr.ph.i130.prol.loopexit ] ; 9 uses
  %i.gm = load i8, ptr %.0810.i132, align 1, !tbaa !109
  store i8 %i.gm, ptr %.0711.i131, align 1, !tbaa !109
  %i.gn = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 1
  %i.go = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 1
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !109
  store i8 %i.gp, ptr %i.gn, align 1, !tbaa !109
  %i.gq = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 2
  %i.gr = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 2
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !109
  store i8 %i.gs, ptr %i.gq, align 1, !tbaa !109
  %i.gt = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 3
  %i.gu = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 3
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !109
  store i8 %i.gv, ptr %i.gt, align 1, !tbaa !109
  %i.gw = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 4
  %i.gx = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 4
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !109
  store i8 %i.gy, ptr %i.gw, align 1, !tbaa !109
  %i.gz = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 5
  %i.ha = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 5
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !109
  store i8 %i.hb, ptr %i.gz, align 1, !tbaa !109
  %i.hc = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 6
  %i.hd = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 6
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !109
  store i8 %i.he, ptr %i.hc, align 1, !tbaa !109
  %i.hf = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 7
  %i.hg = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 7 ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !109
  store i8 %i.hh, ptr %i.hf, align 1, !tbaa !109
  %i.hi = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 8
  %.not.i133.7 = icmp eq ptr %i.hg, %i.dg
  br i1 %.not.i133.7, label %iter.check483, label %.lr.ph.i130, !llvm.loop !880

iter.check483:                                    ; preds = %.lr.ph.i130.prol.loopexit, %.lr.ph.i130, %middle.block445, %vec.epilog.middle.block461, %_ZN5boost9container3dtl17basic_string_baseISaIcEvE9priv_sizeEm.exit
  %i.hk = add i64 %i.p, %i.at
  %i.hl = add i64 %i.hk, 1
  %i.hm = sub i64 %i.hl, %i.h                     ; 7 uses
  %min.iters.check467 = icmp ult i64 %i.hm, 8
  %i.hn = sub i64 %i.j, %i.h
  %diff.check466 = icmp ugt i64 %i.hn, -32
  %or.cond500 = or i1 %min.iters.check467, %diff.check466
  br i1 %or.cond500, label %.lr.ph.i137.preheader, label %vector.main.loop.iter.check468

vector.main.loop.iter.check468:                   ; preds = %iter.check483
  %min.iters.check469 = icmp ult i64 %i.hm, 32
  br i1 %min.iters.check469, label %vec.epilog.ph487, label %vector.ph470

vector.ph470:                                     ; preds = %vector.main.loop.iter.check468
  %i.ho = and i64 %i.hm, 24
  %n.vec471 = and i64 %i.hm, -32                  ; 5 uses
  %i.hp = getelementptr i8, ptr %1, i64 %n.vec471
  %i.hq = getelementptr i8, ptr %2, i64 %n.vec471
  br label %vector.body472

vector.body472:                                   ; preds = %vector.ph470, %vector.body472
  %index473 = phi i64 [ 0, %vector.ph470 ], [ %index.next478, %vector.body472 ] ; 3 uses
  %next.gep474 = getelementptr i8, ptr %1, i64 %index473 ; 2 uses
  %next.gep475 = getelementptr i8, ptr %2, i64 %index473 ; 2 uses
  %i.hr = getelementptr i8, ptr %next.gep475, i64 16
  %wide.load476 = load <16 x i8>, ptr %next.gep475, align 1, !tbaa !109
  %wide.load477 = load <16 x i8>, ptr %i.hr, align 1, !tbaa !109
  %i.hs = getelementptr i8, ptr %next.gep474, i64 16
  store <16 x i8> %wide.load476, ptr %next.gep474, align 1, !tbaa !109
  store <16 x i8> %wide.load477, ptr %i.hs, align 1, !tbaa !109
  %index.next478 = add nuw i64 %index473, 32      ; 2 uses
  %i.ht = icmp eq i64 %index.next478, %n.vec471
  br i1 %i.ht, label %middle.block479, label %vector.body472, !llvm.loop !881

middle.block479:                                  ; preds = %vector.body472
  %cmp.n480 = icmp eq i64 %i.hm, %n.vec471
  br i1 %cmp.n480, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE9priv_copyIPcS7_EEvT_S8_T0_.exit, label %vec.epilog.iter.check485

vec.epilog.iter.check485:                         ; preds = %middle.block479
  %min.epilog.iters.check486 = icmp eq i64 %i.ho, 0
  br i1 %min.epilog.iters.check486, label %.lr.ph.i137.preheader, label %vec.epilog.ph487, !prof !126

vec.epilog.ph487:                                 ; preds = %vector.main.loop.iter.check468, %vec.epilog.iter.check485
  %vec.epilog.resume.val481 = phi i64 [ %n.vec471, %vec.epilog.iter.check485 ], [ 0, %vector.main.loop.iter.check468 ]
  %n.vec488 = and i64 %i.hm, -8                   ; 4 uses
  %i.hu = getelementptr i8, ptr %1, i64 %n.vec488
  %i.hv = getelementptr i8, ptr %2, i64 %n.vec488
  br label %vec.epilog.vector.body489

vec.epilog.vector.body489:                        ; preds = %vec.epilog.vector.body489, %vec.epilog.ph487
  %index490 = phi i64 [ %vec.epilog.resume.val481, %vec.epilog.ph487 ], [ %index.next494, %vec.epilog.vector.body489 ] ; 3 uses
  %next.gep491 = getelementptr i8, ptr %1, i64 %index490
  %next.gep492 = getelementptr i8, ptr %2, i64 %index490
  %wide.load493 = load <8 x i8>, ptr %next.gep492, align 1, !tbaa !109
  store <8 x i8> %wide.load493, ptr %next.gep491, align 1, !tbaa !109
  %index.next494 = add nuw i64 %index490, 8       ; 2 uses
  %i.hw = icmp eq i64 %index.next494, %n.vec488
  br i1 %i.hw, label %vec.epilog.middle.block495, label %vec.epilog.vector.body489, !llvm.loop !882

vec.epilog.middle.block495:                       ; preds = %vec.epilog.vector.body489
  %cmp.n496 = icmp eq i64 %i.hm, %n.vec488
  br i1 %cmp.n496, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE9priv_copyIPcS7_EEvT_S8_T0_.exit, label %.lr.ph.i137.preheader

.lr.ph.i137.preheader:                            ; preds = %iter.check483, %vec.epilog.iter.check485, %vec.epilog.middle.block495
  %.09.i138.ph = phi ptr [ %1, %iter.check483 ], [ %i.hp, %vec.epilog.iter.check485 ], [ %i.hu, %vec.epilog.middle.block495 ]
  %.068.i139.ph = phi ptr [ %2, %iter.check483 ], [ %i.hq, %vec.epilog.iter.check485 ], [ %i.hv, %vec.epilog.middle.block495 ]
  br label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137.preheader, %.lr.ph.i137
  %.09.i138 = phi ptr [ %i.hz, %.lr.ph.i137 ], [ %.09.i138.ph, %.lr.ph.i137.preheader ] ; 2 uses
  %.068.i139 = phi ptr [ %i.hy, %.lr.ph.i137 ], [ %.068.i139.ph, %.lr.ph.i137.preheader ] ; 3 uses
  %i.hx = load i8, ptr %.068.i139, align 1, !tbaa !109
  store i8 %i.hx, ptr %.09.i138, align 1, !tbaa !109
  %i.hy = getelementptr inbounds nuw i8, ptr %.068.i139, i64 1
end_hunk_11
