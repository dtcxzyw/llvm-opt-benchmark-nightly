Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/string_test?download=true
inline.NumInlined: 7799
inline.NumDeleted: 1796
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6insertIPcEES6_PKcT_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE:bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %.068.i, i64 3
  %i.co = getelementptr inbounds nuw i8, ptr %.09.i, i64 3
  %i.cp = load i8, ptr %i.cn, align 1, !tbaa !51
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !51
  %i.cq = getelementptr inbounds nuw i8, ptr %.068.i, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %.09.i, i64 4
  %i.cs = load i8, ptr %i.cq, align 1, !tbaa !51
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !51
  %i.ct = getelementptr inbounds nuw i8, ptr %.068.i, i64 5
  %i.cu = getelementptr inbounds nuw i8, ptr %.09.i, i64 5
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !51
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !51
  %i.cw = getelementptr inbounds nuw i8, ptr %.068.i, i64 6
  %i.cx = getelementptr inbounds nuw i8, ptr %.09.i, i64 6
  %i.cy = load i8, ptr %i.cw, align 1, !tbaa !51
  store i8 %i.cy, ptr %i.cx, align 1, !tbaa !51
  %i.cz = getelementptr inbounds nuw i8, ptr %.068.i, i64 7
  %i.da = getelementptr inbounds nuw i8, ptr %.09.i, i64 7
  %i.db = load i8, ptr %i.cz, align 1, !tbaa !51
  store i8 %i.db, ptr %i.da, align 1, !tbaa !51
  %i.dc = getelementptr inbounds nuw i8, ptr %.068.i, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %.not.i120.7 = icmp eq ptr %i.dc, %3
  br i1 %.not.i120.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyIPcS6_EEvT_S7_T0_.exit, label %.lr.ph.i119, !llvm.loop !260

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
  %wide.load408 = load <16 x i8>, ptr %next.gep407, align 1, !tbaa !51
  %wide.load409 = load <16 x i8>, ptr %i.dr, align 1, !tbaa !51
  %i.ds = getelementptr i8, ptr %next.gep406, i64 16
  store <16 x i8> %wide.load408, ptr %next.gep406, align 1, !tbaa !51
  store <16 x i8> %wide.load409, ptr %i.ds, align 1, !tbaa !51
  %index.next410 = add nuw i64 %index405, 32      ; 2 uses
  %i.dt = icmp eq i64 %index.next410, %n.vec403
  br i1 %i.dt, label %middle.block411, label %vector.body404, !llvm.loop !261

middle.block411:                                  ; preds = %vector.body404
  %cmp.n412 = icmp eq i64 %i.dm, %n.vec403
  br i1 %cmp.n412, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit128, label %vec.epilog.iter.check417

vec.epilog.iter.check417:                         ; preds = %middle.block411
  %min.epilog.iters.check418 = icmp eq i64 %i.do, 0
  br i1 %min.epilog.iters.check418, label %.lr.ph.i122.preheader, label %vec.epilog.ph419, !prof !78

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
  %wide.load425 = load <8 x i8>, ptr %next.gep424, align 1, !tbaa !51
  store <8 x i8> %wide.load425, ptr %next.gep423, align 1, !tbaa !51
  %index.next426 = add nuw i64 %index422, 8       ; 2 uses
  %i.dw = icmp eq i64 %index.next426, %n.vec420
  br i1 %i.dw, label %vec.epilog.middle.block427, label %vec.epilog.vector.body421, !llvm.loop !262

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
  %i.dy = load i8, ptr %.0810.i124.prol, align 1, !tbaa !51
  store i8 %i.dy, ptr %.0711.i123.prol, align 1, !tbaa !51
  %i.dz = getelementptr inbounds nuw i8, ptr %.0711.i123.prol, i64 1 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0810.i124.prol, i64 1 ; 2 uses
  %prol.iter523.next = add i64 %prol.iter523, 1   ; 2 uses
  %prol.iter523.cmp.not = icmp eq i64 %prol.iter523.next, %xtraiter521
  br i1 %prol.iter523.cmp.not, label %.lr.ph.i122.prol.loopexit, label %.lr.ph.i122.prol, !llvm.loop !263

.lr.ph.i122.prol.loopexit:                        ; preds = %.lr.ph.i122.prol, %.lr.ph.i122.preheader
  %.0711.i123.unr = phi ptr [ %.0711.i123.ph, %.lr.ph.i122.preheader ], [ %i.dz, %.lr.ph.i122.prol ]
  %.0810.i124.unr = phi ptr [ %.0810.i124.ph, %.lr.ph.i122.preheader ], [ %i.ea, %.lr.ph.i122.prol ]
  %i.eb = sub i64 %.0810.i124.ph520, %i.i
  %i.ec = icmp ugt i64 %i.eb, -8
  br i1 %i.ec, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit128, label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %.lr.ph.i122.prol.loopexit, %.lr.ph.i122
  %.0711.i123 = phi ptr [ %i.ez, %.lr.ph.i122 ], [ %.0711.i123.unr, %.lr.ph.i122.prol.loopexit ] ; 9 uses
  %.0810.i124 = phi ptr [ %i.fa, %.lr.ph.i122 ], [ %.0810.i124.unr, %.lr.ph.i122.prol.loopexit ] ; 9 uses
  %i.ed = load i8, ptr %.0810.i124, align 1, !tbaa !51
  store i8 %i.ed, ptr %.0711.i123, align 1, !tbaa !51
  %i.ee = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 1
  %i.ef = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !51
  store i8 %i.eg, ptr %i.ee, align 1, !tbaa !51
  %i.eh = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 2
  %i.ei = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 2
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !51
  store i8 %i.ej, ptr %i.eh, align 1, !tbaa !51
  %i.ek = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 3
  %i.el = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 3
  %i.em = load i8, ptr %i.el, align 1, !tbaa !51
  store i8 %i.em, ptr %i.ek, align 1, !tbaa !51
  %i.en = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 4
  %i.eo = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 4
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !51
  store i8 %i.ep, ptr %i.en, align 1, !tbaa !51
  %i.eq = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 5
  %i.er = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 5
  %i.es = load i8, ptr %i.er, align 1, !tbaa !51
  store i8 %i.es, ptr %i.eq, align 1, !tbaa !51
  %i.et = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 6
  %i.eu = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 6
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !51
  store i8 %i.ev, ptr %i.et, align 1, !tbaa !51
  %i.ew = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 7
  %i.ex = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 7
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !51
  store i8 %i.ey, ptr %i.ew, align 1, !tbaa !51
  %i.ez = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 8 ; 2 uses
  %.not.i125.7 = icmp eq ptr %i.fa, %3
  br i1 %.not.i125.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit128, label %.lr.ph.i122, !llvm.loop !264

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit128: ; preds = %.lr.ph.i122.prol.loopexit, %.lr.ph.i122, %middle.block411, %vec.epilog.middle.block427, %bb.k
  %i.fb = sub nuw i64 %i.k, %i.au
  %i.fc = add i64 %i.fb, %i.p                     ; 3 uses
  %i.fd = load i8, ptr %0, align 8, !tbaa !51
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
  %wide.load442 = load <16 x i8>, ptr %next.gep441, align 1, !tbaa !51
  %wide.load443 = load <16 x i8>, ptr %i.fy, align 1, !tbaa !51
  %i.fz = getelementptr i8, ptr %next.gep440, i64 16
  store <16 x i8> %wide.load442, ptr %next.gep440, align 1, !tbaa !51
  store <16 x i8> %wide.load443, ptr %i.fz, align 1, !tbaa !51
  %index.next444 = add nuw i64 %index439, 32      ; 2 uses
  %i.ga = icmp eq i64 %index.next444, %n.vec437
  br i1 %i.ga, label %middle.block445, label %vector.body438, !llvm.loop !265

middle.block445:                                  ; preds = %vector.body438
  %cmp.n446 = icmp eq i64 %i.fp, %n.vec437
  br i1 %cmp.n446, label %iter.check483, label %vec.epilog.iter.check451

vec.epilog.iter.check451:                         ; preds = %middle.block445
  %min.epilog.iters.check452 = icmp eq i64 %i.fv, 0
  br i1 %min.epilog.iters.check452, label %.lr.ph.i130.preheader, label %vec.epilog.ph453, !prof !78

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
  %wide.load459 = load <8 x i8>, ptr %next.gep458, align 1, !tbaa !51
  store <8 x i8> %wide.load459, ptr %next.gep457, align 1, !tbaa !51
  %index.next460 = add nuw i64 %index456, 8       ; 2 uses
  %i.gd = icmp eq i64 %index.next460, %n.vec454
  br i1 %i.gd, label %vec.epilog.middle.block461, label %vec.epilog.vector.body455, !llvm.loop !266

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
  %i.gi = load i8, ptr %.0810.i132.prol, align 1, !tbaa !51
  store i8 %i.gi, ptr %.0711.i131.prol, align 1, !tbaa !51
  %i.gj = getelementptr inbounds nuw i8, ptr %.0711.i131.prol, i64 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.0810.i132.prol, i64 1 ; 2 uses
  %prol.iter527.next = add i64 %prol.iter527, 1   ; 2 uses
  %prol.iter527.cmp.not = icmp eq i64 %prol.iter527.next, %xtraiter525
  br i1 %prol.iter527.cmp.not, label %.lr.ph.i130.prol.loopexit, label %.lr.ph.i130.prol, !llvm.loop !267

.lr.ph.i130.prol.loopexit:                        ; preds = %.lr.ph.i130.prol, %.lr.ph.i130.preheader
  %.0711.i131.unr = phi ptr [ %.0711.i131.ph, %.lr.ph.i130.preheader ], [ %i.gj, %.lr.ph.i130.prol ]
  %.0810.i132.unr = phi ptr [ %.0810.i132.ph, %.lr.ph.i130.preheader ], [ %i.gk, %.lr.ph.i130.prol ]
  %i.gl = icmp ult i64 %i.gh, 7
  br i1 %i.gl, label %iter.check483, label %.lr.ph.i130

.lr.ph.i130:                                      ; preds = %.lr.ph.i130.prol.loopexit, %.lr.ph.i130
  %.0711.i131 = phi ptr [ %i.hi, %.lr.ph.i130 ], [ %.0711.i131.unr, %.lr.ph.i130.prol.loopexit ] ; 9 uses
  %.0810.i132 = phi ptr [ %i.hj, %.lr.ph.i130 ], [ %.0810.i132.unr, %.lr.ph.i130.prol.loopexit ] ; 9 uses
  %i.gm = load i8, ptr %.0810.i132, align 1, !tbaa !51
  store i8 %i.gm, ptr %.0711.i131, align 1, !tbaa !51
  %i.gn = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 1
  %i.go = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 1
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !51
  store i8 %i.gp, ptr %i.gn, align 1, !tbaa !51
  %i.gq = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 2
  %i.gr = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 2
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !51
  store i8 %i.gs, ptr %i.gq, align 1, !tbaa !51
  %i.gt = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 3
  %i.gu = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 3
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !51
  store i8 %i.gv, ptr %i.gt, align 1, !tbaa !51
  %i.gw = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 4
  %i.gx = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 4
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !51
  store i8 %i.gy, ptr %i.gw, align 1, !tbaa !51
  %i.gz = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 5
  %i.ha = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 5
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !51
  store i8 %i.hb, ptr %i.gz, align 1, !tbaa !51
  %i.hc = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 6
  %i.hd = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 6
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !51
  store i8 %i.he, ptr %i.hc, align 1, !tbaa !51
  %i.hf = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 7
  %i.hg = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 7 ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !51
  store i8 %i.hh, ptr %i.hf, align 1, !tbaa !51
  %i.hi = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 8
  %.not.i133.7 = icmp eq ptr %i.hg, %i.dg
  br i1 %.not.i133.7, label %iter.check483, label %.lr.ph.i130, !llvm.loop !268

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
  %wide.load476 = load <16 x i8>, ptr %next.gep475, align 1, !tbaa !51
  %wide.load477 = load <16 x i8>, ptr %i.hr, align 1, !tbaa !51
  %i.hs = getelementptr i8, ptr %next.gep474, i64 16
  store <16 x i8> %wide.load476, ptr %next.gep474, align 1, !tbaa !51
  store <16 x i8> %wide.load477, ptr %i.hs, align 1, !tbaa !51
  %index.next478 = add nuw i64 %index473, 32      ; 2 uses
  %i.ht = icmp eq i64 %index.next478, %n.vec471
  br i1 %i.ht, label %middle.block479, label %vector.body472, !llvm.loop !269

middle.block479:                                  ; preds = %vector.body472
  %cmp.n480 = icmp eq i64 %i.hm, %n.vec471
  br i1 %cmp.n480, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyIPcS6_EEvT_S7_T0_.exit, label %vec.epilog.iter.check485

vec.epilog.iter.check485:                         ; preds = %middle.block479
  %min.epilog.iters.check486 = icmp eq i64 %i.ho, 0
  br i1 %min.epilog.iters.check486, label %.lr.ph.i137.preheader, label %vec.epilog.ph487, !prof !78

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
  %wide.load493 = load <8 x i8>, ptr %next.gep492, align 1, !tbaa !51
  store <8 x i8> %wide.load493, ptr %next.gep491, align 1, !tbaa !51
  %index.next494 = add nuw i64 %index490, 8       ; 2 uses
  %i.hw = icmp eq i64 %index.next494, %n.vec488
  br i1 %i.hw, label %vec.epilog.middle.block495, label %vec.epilog.vector.body489, !llvm.loop !270

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
  %i.hx = load i8, ptr %.068.i139, align 1, !tbaa !51
  store i8 %i.hx, ptr %.09.i138, align 1, !tbaa !51
  %i.hy = getelementptr inbounds nuw i8, ptr %.068.i139, i64 1
end_hunk_0
begin_hunk_1_@_Z21test_replace_iteratorv:bb.a
  %i.lz = icmp eq ptr %.sroa.sel142, %.sroa.sel139
  br i1 %i.lz, label %_ZNSt11char_traitsIcE6assignEPcmc.exit18.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.sroa.sel139, i8 88, i64 %i.lg, i1 false)
  br label %_ZNSt11char_traitsIcE6assignEPcmc.exit18.i

_ZNSt11char_traitsIcE6assignEPcmc.exit18.i:       ; preds = %bb.aw, %bb.av
  %i.ma = sub nuw nsw i64 3, %i.lg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 88, ptr %i.a, align 1, !tbaa !51
  %i.mb = invoke noundef ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6insertINS0_17constant_iteratorIcEEEEPcPKcT_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESK_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %.sroa.sel142, ptr nonnull %i.a, i64 %i.ma, ptr null, i64 0, ptr noundef null)
          to label %.noexc51 unwind label %bb.cl  ; 0 uses

.noexc51:                                         ; preds = %_ZNSt11char_traitsIcE6assignEPcmc.exit18.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre213 = load i8, ptr %0, align 8, !tbaa !51
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceEPKcS6_mc.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceEPKcS6_mc.exit: ; preds = %.noexc51, %bb.au, %bb.at, %bb.aq
  %i.mc = phi i8 [ %.pre213, %.noexc51 ], [ %i.ly, %bb.au ], [ %i.lw, %bb.at ], [ %i.lb, %bb.aq ] ; 2 uses
  %i.md = trunc i8 %i.mc to i1
  %i.me = lshr i8 %i.mc, 1
  %i.mf = zext nneg i8 %i.me to i64
  %i.mg = load i64, ptr %0, align 8               ; 2 uses
  %i.mh = lshr i64 %i.mg, 1
  %i.mi = select i1 %i.md, i64 %i.mf, i64 %i.mh
  %i.mj = icmp eq i64 %i.mi, 11
  br i1 %i.mj, label %bb.ax, label %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit53

bb.ax:                                            ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceEPKcS6_mc.exit
  %i.mk = trunc i64 %i.mg to i1
  %i.ml = load ptr, ptr %i.d, align 8
  %i.mm = select i1 %i.mk, ptr %i.c, ptr %i.ml    ; 2 uses
  %i.mn = load i64, ptr %i.mm, align 1
  %i.mo = xor i64 %i.mn, 6350124331664434504
  %i.mp = getelementptr i8, ptr %i.mm, i64 3
  %i.mq = load i64, ptr %i.mp, align 1
  %i.mr = xor i64 %i.mq, 2402767536722308972
  %i.ms = or i64 %i.mo, %i.mr
  %i.mt = icmp ne i64 %i.ms, 0
  %i.mu = zext i1 %i.mt to i32
  %i.mv = icmp eq i32 %i.mu, 0
  br label %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit53

_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit53: ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceEPKcS6_mc.exit, %bb.ax
  %i.mw = phi i1 [ false, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceEPKcS6_mc.exit ], [ %i.mv, %bb.ax ]
  %i.mx = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.1, i32 noundef 1585, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_replace_iteratorv, i1 noundef zeroext %i.mw)
          to label %bb.ay unwind label %bb.cl     ; 0 uses

bb.ay:                                            ; preds = %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit53
  %i.my = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 13)
          to label %.noexc56 unwind label %bb.cl

.noexc56:                                         ; preds = %bb.ay
  br i1 %i.my, label %bb.az, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i54

bb.az:                                            ; preds = %.noexc56
  %i.mz = load i8, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.na = trunc i8 %i.mz to i1
  %i.nb = lshr i8 %i.mz, 1
  %i.nc = zext nneg i8 %i.nb to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.nc
  %i.ne = load ptr, ptr %i.d, align 8
  %i.nf = load i64, ptr %0, align 8
  %i.ng = lshr i64 %i.nf, 1
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.ng
  %i.ni = select i1 %i.na, ptr %i.nd, ptr %i.nh
  store i8 0, ptr %i.ni, align 1, !tbaa !51
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i54

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i54: ; preds = %bb.az, %.noexc56
  %i.nj = load i8, ptr %0, align 8, !tbaa !51
  %i.nk = trunc i8 %i.nj to i1                    ; 2 uses
  %i.nl = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.nm = select i1 %i.nk, ptr %i.c, ptr %i.nl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.nm, ptr noundef nonnull align 1 dereferenceable(13) @.str.29, i64 13, i1 false)
  %.sroa.gep202 = getelementptr inbounds nuw i8, ptr %i.nl, i64 13
  %.sroa.sel203 = select i1 %i.nk, ptr %.sroa.gep189, ptr %.sroa.gep202
  store i8 0, ptr %.sroa.sel203, align 1, !tbaa !51
  %i.nn = load i8, ptr %0, align 8, !tbaa !51
  %i.no = trunc i8 %i.nn to i1
  br i1 %i.no, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i54
  store i8 27, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEaSEPKc.exit57

bb.bb:                                            ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i54
  %i.np = load i64, ptr %0, align 8
  %i.nq = and i64 %i.np, 1
  %i.nr = or disjoint i64 %i.nq, 26
  store i64 %i.nr, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEaSEPKc.exit57

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEaSEPKc.exit57: ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store i8 1, ptr %2, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 5 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store i8 0, ptr %i.ns, align 1, !tbaa !51
  %i.nu = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 5)
          to label %.noexc.i58 unwind label %bb.bd

.noexc.i58:                                       ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEaSEPKc.exit57
  br i1 %i.nu, label %bb.bc, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i59

bb.bc:                                            ; preds = %.noexc.i58
  %i.nv = load i8, ptr %2, align 8, !tbaa !51     ; 2 uses
  %i.nw = trunc i8 %i.nv to i1
  %i.nx = lshr i8 %i.nv, 1
  %i.ny = zext nneg i8 %i.nx to i64
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.ny
  %i.oa = load ptr, ptr %i.nt, align 8
  %i.ob = load i64, ptr %2, align 8
  %i.oc = lshr i64 %i.ob, 1
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.oc
  %i.oe = select i1 %i.nw, ptr %i.nz, ptr %i.od
  store i8 0, ptr %i.oe, align 1, !tbaa !51
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i59

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i59: ; preds = %bb.bc, %.noexc.i58
  %i.of = load i8, ptr %2, align 8, !tbaa !51
  %i.og = trunc i8 %i.of to i1                    ; 2 uses
  %i.oh = load ptr, ptr %i.nt, align 8            ; 2 uses
  %i.oi = select i1 %i.og, ptr %i.ns, ptr %i.oh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.oi, ptr noundef nonnull align 1 dereferenceable(5) @.str.236, i64 5, i1 false)
  %.sroa.gep183 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %.sroa.gep184 = getelementptr inbounds nuw i8, ptr %i.oh, i64 5
  %.sroa.sel185 = select i1 %i.og, ptr %.sroa.gep183, ptr %.sroa.gep184
  store i8 0, ptr %.sroa.sel185, align 1, !tbaa !51
  %i.oj = load i8, ptr %2, align 8, !tbaa !51
  %i.ok = trunc i8 %i.oj to i1
  br i1 %i.ok, label %.thread321, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit63

.thread321:                                       ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i59
  store i8 11, ptr %2, align 8
  %i.ol = load i8, ptr %0, align 8, !tbaa !51
  %i.om = trunc i8 %i.ol to i1                    ; 2 uses
  %i.on = load ptr, ptr %i.d, align 8             ; 2 uses
  %.sroa.gep144311 = getelementptr inbounds nuw i8, ptr %i.on, i64 7
  %.sroa.sel145312 = select i1 %i.om, ptr %.sroa.gep262274, ptr %.sroa.gep144311
  %.sroa.gep147313 = getelementptr inbounds nuw i8, ptr %i.on, i64 12
  %.sroa.sel148314 = select i1 %i.om, ptr %.sroa.gep122258278, ptr %.sroa.gep147313
  %i.oo = getelementptr inbounds nuw i8, ptr %2, i64 6
  br label %.split329

bb.bd:                                            ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEaSEPKc.exit57
  %i.op = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.oq = load i8, ptr %2, align 8, !tbaa !51
  %i.or = trunc i8 %i.oq to i1
  br i1 %i.or, label %.body61, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.os = load ptr, ptr %i.nt, align 8, !tbaa !61 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !62 ; 2 uses
  %i.ov = icmp ne ptr %i.os, null
  %i.ow = icmp ugt i64 %i.ou, 23
  %or.cond.i.i119 = and i1 %i.ov, %i.ow
  br i1 %or.cond.i.i119, label %bb.bf, label %.body61

bb.bf:                                            ; preds = %bb.be
  call void @_ZdlPvm(ptr noundef nonnull %i.os, i64 noundef %i.ou) #27
  br label %.body61

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit63: ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i59
  %i.ox = load i64, ptr %2, align 8
  %.fr364 = freeze i64 %i.ox                      ; 2 uses
  %i.oy = and i64 %.fr364, 1
  %i.oz = or disjoint i64 %i.oy, 10
  store i64 %i.oz, ptr %2, align 8
  %i.pa = trunc i64 %.fr364 to i1
  %i.pb = load i8, ptr %0, align 8, !tbaa !51
  %i.pc = trunc i8 %i.pb to i1                    ; 2 uses
  %i.pd = load ptr, ptr %i.d, align 8             ; 2 uses
  %.sroa.gep144 = getelementptr inbounds nuw i8, ptr %i.pd, i64 7
  %.sroa.sel145 = select i1 %i.pc, ptr %.sroa.gep262274, ptr %.sroa.gep144 ; 2 uses
  %.sroa.gep147 = getelementptr inbounds nuw i8, ptr %i.pd, i64 12
  %.sroa.sel148 = select i1 %i.pc, ptr %.sroa.gep122258278, ptr %.sroa.gep147 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 6
  br i1 %i.pa, label %.split329, label %bb.bg

bb.bg:                                            ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit63
  %i.pf = load ptr, ptr %i.nt, align 8            ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 5
  br label %.split329

.split329:                                        ; preds = %bb.bg, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit63, %.thread321
  %i.ph = phi ptr [ %i.pf, %bb.bg ], [ %i.ns, %.thread321 ], [ %i.ns, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit63 ] ; 8 uses
  %.sroa.sel145316327 = phi ptr [ %.sroa.sel145, %bb.bg ], [ %.sroa.sel145312, %.thread321 ], [ %.sroa.sel145, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit63 ] ; 8 uses
  %.sroa.sel148318325 = phi ptr [ %.sroa.sel148, %bb.bg ], [ %.sroa.sel148314, %.thread321 ], [ %.sroa.sel148, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit63 ] ; 7 uses
  %i.pi = phi ptr [ %i.pg, %bb.bg ], [ %i.oo, %.thread321 ], [ %i.pe, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2EPKc.exit63 ] ; 5 uses
  %i.pj = icmp ne ptr %.sroa.sel145316327, %.sroa.sel148318325
  %i.pk = icmp ne ptr %i.ph, %i.pi
  %i.pl = and i1 %i.pj, %i.pk
  br i1 %i.pl, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.split329
  %i.pm = ptrtoaddr ptr %i.ph to i64              ; 2 uses
  %.sroa.sel145316327375 = ptrtoaddr ptr %.sroa.sel145316327 to i64 ; 2 uses
  %i.pn = ptrtoaddr ptr %i.pi to i64
  %.sroa.sel148318325376 = ptrtoaddr ptr %.sroa.sel148318325 to i64
  %i.po = xor i64 %.sroa.sel145316327375, -1
  %i.pp = add i64 %i.po, %.sroa.sel148318325376
  %i.pq = xor i64 %i.pm, -1
  %i.pr = add i64 %i.pq, %i.pn
  %umin = call i64 @llvm.umin.i64(i64 %i.pp, i64 %i.pr)
  %i.ps = add i64 %umin, 1                        ; 7 uses
  %min.iters.check = icmp ult i64 %i.ps, 4
  %i.pt = sub i64 %i.pm, %.sroa.sel145316327375
  %diff.check = icmp ugt i64 %i.pt, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check377 = icmp ult i64 %i.ps, 32
  br i1 %min.iters.check377, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.pu = and i64 %i.ps, 28
  %n.vec = and i64 %i.ps, -32                     ; 5 uses
  %i.pv = getelementptr i8, ptr %.sroa.sel145316327, i64 %n.vec ; 2 uses
  %i.pw = getelementptr i8, ptr %i.ph, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.sel145316327, i64 %index ; 2 uses
  %next.gep378 = getelementptr i8, ptr %i.ph, i64 %index ; 2 uses
  %i.px = getelementptr i8, ptr %next.gep378, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep378, align 1, !tbaa !51
  %wide.load379 = load <16 x i8>, ptr %i.px, align 1, !tbaa !51
  %i.py = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !51
  store <16 x i8> %wide.load379, ptr %i.py, align 1, !tbaa !51
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.pz = icmp eq i64 %index.next, %n.vec
  br i1 %i.pz, label %middle.block, label %vector.body, !llvm.loop !293

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ps, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.pu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec381 = and i64 %i.ps, -4                   ; 4 uses
  %i.qa = getelementptr i8, ptr %.sroa.sel145316327, i64 %n.vec381 ; 2 uses
  %i.qb = getelementptr i8, ptr %i.ph, i64 %n.vec381 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index382 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next386, %vec.epilog.vector.body ] ; 3 uses
  %next.gep383 = getelementptr i8, ptr %.sroa.sel145316327, i64 %index382
  %next.gep384 = getelementptr i8, ptr %i.ph, i64 %index382
  %wide.load385 = load <4 x i8>, ptr %next.gep384, align 1, !tbaa !51
  store <4 x i8> %wide.load385, ptr %next.gep383, align 1, !tbaa !51
  %index.next386 = add nuw i64 %index382, 4       ; 2 uses
  %i.qc = icmp eq i64 %index.next386, %n.vec381
  br i1 %i.qc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !294

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n387 = icmp eq i64 %i.ps, %n.vec381
  br i1 %cmp.n387, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.019.i.ph = phi ptr [ %.sroa.sel145316327, %iter.check ], [ %i.pv, %vec.epilog.iter.check ], [ %i.qa, %vec.epilog.middle.block ]
  %.01618.i.ph = phi ptr [ %i.ph, %iter.check ], [ %i.pw, %vec.epilog.iter.check ], [ %i.qb, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.019.i = phi ptr [ %i.qe, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01618.i = phi ptr [ %i.qf, %.lr.ph.i ], [ %.01618.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.qd = load i8, ptr %.01618.i, align 1, !tbaa !51
  store i8 %i.qd, ptr %.019.i, align 1, !tbaa !51
  %i.qe = getelementptr inbounds nuw i8, ptr %.019.i, i64 1 ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.01618.i, i64 1 ; 3 uses
  %i.qg = icmp ne ptr %i.qe, %.sroa.sel148318325
  %i.qh = icmp ne ptr %i.qf, %i.pi
  %i.qi = select i1 %i.qg, i1 %i.qh, i1 false
  br i1 %i.qi, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !295

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.split329
  %.016.lcssa.i = phi ptr [ %i.ph, %.split329 ], [ %i.qb, %vec.epilog.middle.block ], [ %i.pw, %middle.block ], [ %i.qf, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.sroa.sel145316327, %.split329 ], [ %i.qa, %vec.epilog.middle.block ], [ %i.pv, %middle.block ], [ %i.qe, %.lr.ph.i ] ; 3 uses
  %i.qj = icmp eq ptr %.016.lcssa.i, %i.pi
  br i1 %i.qj, label %bb.bh, label %bb.bm

bb.bh:                                            ; preds = %._crit_edge.i
  %.not.i.i64 = icmp eq ptr %.0.lcssa.i, %.sroa.sel148318325
  %.pre216 = load i8, ptr %0, align 8, !tbaa !51  ; 3 uses
  br i1 %.not.i.i64, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPcEERS4_PKcS9_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.qk = ptrtoint ptr %.sroa.sel148318325 to i64 ; 2 uses
  %i.ql = ptrtoint ptr %.0.lcssa.i to i64
  %.neg14.i.i65 = sub i64 %i.ql, %i.qk
  %i.qm = trunc i8 %.pre216 to i1
  %i.qn = lshr i8 %.pre216, 1
  %i.qo = zext nneg i8 %i.qn to i64
  %i.qp = load i64, ptr %0, align 8               ; 3 uses
  %i.qq = lshr i64 %i.qp, 1
  %i.qr = select i1 %i.qm, i64 %i.qo, i64 %i.qq   ; 2 uses
  %i.qs = trunc i64 %i.qp to i1
  %i.qt = load ptr, ptr %i.d, align 8
  %i.qu = select i1 %i.qs, ptr %i.c, ptr %i.qt
  %i.qv = add nuw i64 %i.qr, 1
  %i.qw = ptrtoint ptr %i.qu to i64
  %.neg.i.i66 = sub i64 %i.qw, %i.qk
  %i.qx = add i64 %i.qv, %.neg.i.i66              ; 2 uses
  %i.qy = icmp eq i64 %i.qx, 0
  br i1 %i.qy, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i68, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.lcssa.i, ptr nonnull align 1 %.sroa.sel148318325, i64 %i.qx, i1 false)
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i68

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i68:     ; preds = %bb.bj, %bb.bi
  %i.qz = add i64 %i.qr, %.neg14.i.i65            ; 2 uses
  %i.ra = trunc i64 %i.qp to i1
  br i1 %i.ra, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i68
  %i.rb = trunc i64 %i.qz to i8
  %i.rc = shl i8 %i.rb, 1
  %i.rd = or disjoint i8 %i.rc, 1                 ; 2 uses
  store i8 %i.rd, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPcEERS4_PKcS9_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

bb.bl:                                            ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i68
  %i.re = load i64, ptr %0, align 8
  %i.rf = shl i64 %i.qz, 1
  %i.rg = and i64 %i.re, 1
  %i.rh = or disjoint i64 %i.rg, %i.rf            ; 2 uses
  store i64 %i.rh, ptr %0, align 8
  %i.ri = trunc i64 %i.rh to i8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPcEERS4_PKcS9_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

bb.bm:                                            ; preds = %._crit_edge.i
  %i.rj = invoke noundef ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6insertIPcEES6_PKcT_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %.sroa.sel148318325, ptr noundef %.016.lcssa.i, ptr noundef nonnull %i.pi, ptr noundef null)
          to label %._ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPcEERS4_PKcS9_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit_crit_edge unwind label %bb.cm ; 0 uses

._ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPcEERS4_PKcS9_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit_crit_edge: ; preds = %bb.bm
  %.pre215 = load i8, ptr %0, align 8, !tbaa !51
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPcEERS4_PKcS9_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPcEERS4_PKcS9_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit: ; preds = %._ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPcEERS4_PKcS9_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit_crit_edge, %bb.bl, %bb.bk, %bb.bh
  %i.rk = phi i8 [ %.pre215, %._ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPcEERS4_PKcS9_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit_crit_edge ], [ %i.ri, %bb.bl ], [ %i.rd, %bb.bk ], [ %.pre216, %bb.bh ] ; 2 uses
  %i.rl = trunc i8 %i.rk to i1
  %i.rm = lshr i8 %i.rk, 1
  %i.rn = zext nneg i8 %i.rm to i64
  %i.ro = load i64, ptr %0, align 8               ; 2 uses
  %i.rp = lshr i64 %i.ro, 1
  %i.rq = select i1 %i.rl, i64 %i.rn, i64 %i.rp
  %i.rr = icmp eq i64 %i.rq, 13
  br i1 %i.rr, label %bb.bn, label %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit71

bb.bn:                                            ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPcEERS4_PKcS9_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit
  %i.rs = trunc i64 %i.ro to i1
  %i.rt = load ptr, ptr %i.d, align 8
  %i.ru = select i1 %i.rs, ptr %i.c, ptr %i.rt    ; 2 uses
  %i.rv = load i64, ptr %i.ru, align 1
  %i.rw = xor i64 %i.rv, 6206009143588578632
  %i.rx = getelementptr i8, ptr %i.ru, i64 5
  %i.ry = load i64, ptr %i.rx, align 1
  %i.rz = xor i64 %i.ry, 2410399342580342828
  %i.sa = or i64 %i.rw, %i.rz
  %i.sb = icmp ne i64 %i.sa, 0
  %i.sc = zext i1 %i.sb to i32
  %i.sd = icmp eq i32 %i.sc, 0
  br label %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit71

_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit71: ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPcEERS4_PKcS9_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit, %bb.bn
  %i.se = phi i1 [ false, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceIPcEERS4_PKcS9_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit ], [ %i.sd, %bb.bn ]
  %i.sf = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.1, i32 noundef 1591, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_replace_iteratorv, i1 noundef zeroext %i.se)
          to label %bb.bo unwind label %bb.cm     ; 0 uses

bb.bo:                                            ; preds = %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit71
  %i.sg = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 13)
          to label %.noexc74 unwind label %bb.cm

.noexc74:                                         ; preds = %bb.bo
  br i1 %i.sg, label %bb.bp, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i72

bb.bp:                                            ; preds = %.noexc74
  %i.sh = load i8, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.si = trunc i8 %i.sh to i1
  %i.sj = lshr i8 %i.sh, 1
  %i.sk = zext nneg i8 %i.sj to i64
  %i.sl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.sk
  %i.sm = load ptr, ptr %i.d, align 8
  %i.sn = load i64, ptr %0, align 8
  %i.so = lshr i64 %i.sn, 1
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sm, i64 %i.so
  %i.sq = select i1 %i.si, ptr %i.sl, ptr %i.sp
  store i8 0, ptr %i.sq, align 1, !tbaa !51
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i72

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i72: ; preds = %bb.bp, %.noexc74
  %i.sr = load i8, ptr %0, align 8, !tbaa !51
  %i.ss = trunc i8 %i.sr to i1                    ; 2 uses
  %i.st = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.su = select i1 %i.ss, ptr %i.c, ptr %i.st
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.su, ptr noundef nonnull align 1 dereferenceable(13) @.str.29, i64 13, i1 false)
  %.sroa.gep205 = getelementptr inbounds nuw i8, ptr %i.st, i64 13
  %.sroa.sel206 = select i1 %i.ss, ptr %.sroa.gep189, ptr %.sroa.gep205
  store i8 0, ptr %.sroa.sel206, align 1, !tbaa !51
end_hunk_1
begin_hunk_2_@_Z21test_replace_iteratorv:bb.a
  br i1 %i.vy, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i.i97, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.sroa.sel157, ptr nonnull align 1 %.sroa.sel160, i64 %i.vx, i1 false)
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i.i97

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i.i97:   ; preds = %bb.bz, %bb.by
  %i.vz = add i64 %i.vs, %.neg14.i.i.i94          ; 2 uses
  %i.wa = trunc i64 %.pre222 to i1
  br i1 %i.wa, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i.i97
  %i.wb = trunc i64 %i.vz to i8
  %i.wc = shl i8 %i.wb, 1
  %i.wd = or disjoint i8 %i.wc, 1                 ; 2 uses
  store i8 %i.wd, ptr %0, align 8
  %.pre221 = load i64, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceEPKcS6_St16initializer_listIcE.exit102

bb.cb:                                            ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i.i97
  %i.we = load i64, ptr %0, align 8
  %i.wf = shl i64 %i.vz, 1
  %i.wg = and i64 %i.we, 1
  %i.wh = or disjoint i64 %i.wg, %i.wf            ; 3 uses
  store i64 %i.wh, ptr %0, align 8
  %i.wi = trunc i64 %i.wh to i8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceEPKcS6_St16initializer_listIcE.exit102

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceEPKcS6_St16initializer_listIcE.exit102: ; preds = %bb.cb, %bb.ca, %bb.bx
  %i.wj = phi i64 [ %i.wh, %bb.cb ], [ %.pre221, %bb.ca ], [ %.pre222, %bb.bx ] ; 2 uses
  %i.wk = phi i8 [ %i.wi, %bb.cb ], [ %i.wd, %bb.ca ], [ %i.vk, %bb.bx ] ; 2 uses
  %i.wl = trunc i8 %i.wk to i1
  %i.wm = lshr i8 %i.wk, 1
  %i.wn = zext nneg i8 %i.wm to i64
  %i.wo = lshr i64 %i.wj, 1
  %i.wp = select i1 %i.wl, i64 %i.wn, i64 %i.wo
  %i.wq = icmp eq i64 %i.wp, 6
  br i1 %i.wq, label %bb.cc, label %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit104

bb.cc:                                            ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceEPKcS6_St16initializer_listIcE.exit102
  %i.wr = trunc i64 %i.wj to i1
  %i.ws = load ptr, ptr %i.d, align 8
  %i.wt = select i1 %i.wr, ptr %i.c, ptr %i.ws    ; 2 uses
  %i.wu = load i32, ptr %i.wt, align 1
  %i.wv = xor i32 %i.wu, 1819043144
  %i.ww = getelementptr i8, ptr %i.wt, i64 4
  %i.wx = load i16, ptr %i.ww, align 1
  %i.wy = zext i16 %i.wx to i32
  %i.wz = xor i32 %i.wy, 8559
  %i.xa = or i32 %i.wv, %i.wz
  %i.xb = icmp ne i32 %i.xa, 0
  %i.xc = zext i1 %i.xb to i32
  %i.xd = icmp eq i32 %i.xc, 0
  br label %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit104

_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit104: ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceEPKcS6_St16initializer_listIcE.exit102, %bb.cc
  %i.xe = phi i1 [ false, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceEPKcS6_St16initializer_listIcE.exit102 ], [ %i.xd, %bb.cc ]
  %i.xf = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.1, i32 noundef 1599, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_replace_iteratorv, i1 noundef zeroext %i.xe)
          to label %bb.cd unwind label %bb.cm     ; 0 uses

bb.cd:                                            ; preds = %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit104
  %i.xg = load i8, ptr %2, align 8, !tbaa !51
  %i.xh = trunc i8 %i.xg to i1
  br i1 %i.xh, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit106, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.xi = load ptr, ptr %i.nt, align 8, !tbaa !61 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.xk = load i64, ptr %i.xj, align 8, !tbaa !62 ; 2 uses
  %i.xl = icmp ne ptr %i.xi, null
  %i.xm = icmp ugt i64 %i.xk, 23
  %or.cond.i.i105 = and i1 %i.xl, %i.xm
  br i1 %or.cond.i.i105, label %bb.cf, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit106

bb.cf:                                            ; preds = %bb.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.xi, i64 noundef %i.xk) #27
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit106

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit106: ; preds = %bb.cd, %bb.ce, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.xn = load i8, ptr %0, align 8, !tbaa !51
  %i.xo = trunc i8 %i.xn to i1
  br i1 %i.xo, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit108, label %bb.cg

bb.cg:                                            ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit106
  %i.xp = load ptr, ptr %i.d, align 8, !tbaa !61  ; 2 uses
  %i.xq = load i64, ptr %.sroa.gep262274, align 8, !tbaa !62 ; 2 uses
  %i.xr = icmp ne ptr %i.xp, null
  %i.xs = icmp ugt i64 %i.xq, 23
  %or.cond.i.i107 = and i1 %i.xr, %i.xs
  br i1 %or.cond.i.i107, label %bb.ch, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit108

bb.ch:                                            ; preds = %bb.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.xp, i64 noundef %i.xq) #27
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit108

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit108: ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit106, %bb.cg, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #27
  ret void

bb.ci:                                            ; preds = %bb.q
  %i.xt = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.xu = load i8, ptr %1, align 8, !tbaa !51
  %i.xv = trunc i8 %i.xu to i1
  br i1 %i.xv, label %.body, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.xw = load ptr, ptr %i.ak, align 8, !tbaa !61 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xy = load i64, ptr %i.xx, align 8, !tbaa !62 ; 2 uses
  %i.xz = icmp ne ptr %i.xw, null
  %i.ya = icmp ugt i64 %i.xy, 23
  %or.cond.i.i109 = and i1 %i.xz, %i.ya
  br i1 %or.cond.i.i109, label %bb.ck, label %.body

bb.ck:                                            ; preds = %bb.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.xw, i64 noundef %i.xy) #27
  br label %.body

.body:                                            ; preds = %bb.ck, %bb.cj, %bb.ci, %bb.i, %bb.j, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.k ], [ %i.xt, %bb.ck ], [ %i.bc, %bb.i ], [ %i.bc, %bb.j ], [ %i.xt, %bb.ci ], [ %i.xt, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.cr

bb.cl:                                            ; preds = %bb.ay, %_ZNSt11char_traitsIcE6assignEPcmc.exit18.i, %bb.am, %._crit_edge.i.i33.thread, %bb.ad, %._crit_edge.i.i15.thread, %bb.u, %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit53, %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit46, %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit28, %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit
  %i.yb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cm:                                            ; preds = %bb.bo, %bb.bm, %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit104, %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit89, %_ZN5boost9containereqIcSt11char_traitsIcEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EEPKS5_.exit71
  %i.yc = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cn:                                            ; preds = %._crit_edge.i.i76.thread
  %i.yd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.pn6 = phi { ptr, i32 } [ %i.yc, %bb.cm ], [ %i.yd, %bb.cn ] ; 3 uses
  %i.ye = load i8, ptr %2, align 8, !tbaa !51
  %i.yf = trunc i8 %i.ye to i1
  br i1 %i.yf, label %.body61, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.yg = load ptr, ptr %i.nt, align 8, !tbaa !61 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.yi = load i64, ptr %i.yh, align 8, !tbaa !62 ; 2 uses
  %i.yj = icmp ne ptr %i.yg, null
  %i.yk = icmp ugt i64 %i.yi, 23
  %or.cond.i.i111 = and i1 %i.yj, %i.yk
  br i1 %or.cond.i.i111, label %bb.cq, label %.body61

bb.cq:                                            ; preds = %bb.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.yg, i64 noundef %i.yi) #27
  br label %.body61

.body61:                                          ; preds = %bb.cq, %bb.cp, %bb.co, %bb.bd, %bb.be, %bb.bf
  %.pn6.pn = phi { ptr, i32 } [ %i.op, %bb.bf ], [ %.pn6, %bb.cq ], [ %i.op, %bb.bd ], [ %i.op, %bb.be ], [ %.pn6, %bb.co ], [ %.pn6, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.cr

bb.cr:                                            ; preds = %.body61, %bb.cl, %.body
  %.pn6.pn.pn = phi { ptr, i32 } [ %.pn6.pn, %.body61 ], [ %i.yb, %bb.cl ], [ %.pn, %.body ]
  %i.yl = load i8, ptr %0, align 8, !tbaa !51
  %i.ym = trunc i8 %i.yl to i1
  br i1 %i.ym, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit114, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.yn = load ptr, ptr %i.d, align 8, !tbaa !61  ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.yp = load i64, ptr %i.yo, align 8, !tbaa !62 ; 2 uses
  %i.yq = icmp ne ptr %i.yn, null
  %i.yr = icmp ugt i64 %i.yp, 23
  %or.cond.i.i113 = and i1 %i.yq, %i.yr
  br i1 %or.cond.i.i113, label %bb.ct, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit114

bb.ct:                                            ; preds = %bb.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.yn, i64 noundef %i.yp) #27
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit114

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit114: ; preds = %bb.cr, %bb.cs, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #27
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7replaceEPKcS6_S6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #27 ; 3 uses
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
  %wide.load = load <16 x i8>, ptr %next.gep14, align 1, !tbaa !51
  %wide.load15 = load <16 x i8>, ptr %i.q, align 1, !tbaa !51
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !51
  store <16 x i8> %wide.load15, ptr %i.r, align 1, !tbaa !51
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !296

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !76

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
  %wide.load21 = load <4 x i8>, ptr %next.gep20, align 1, !tbaa !51
  store <4 x i8> %wide.load21, ptr %next.gep19, align 1, !tbaa !51
  %index.next22 = add nuw i64 %index18, 4         ; 2 uses
  %i.v = icmp eq i64 %index.next22, %n.vec17
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !297

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
  %i.w = load i8, ptr %.01618.i, align 1, !tbaa !51
  store i8 %i.w, ptr %.019.i, align 1, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %.019.i, i64 1 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.01618.i, i64 1 ; 3 uses
  %i.z = icmp ne ptr %i.x, %2
  %i.aa = icmp ne ptr %i.y, %i.b
  %i.ab = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !298

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
  %i.af = load i8, ptr %0, align 8, !tbaa !51     ; 2 uses
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
  %.pre.i.i = load i8, ptr %0, align 8, !tbaa !51
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

; Function Attrs: mustprogress uwtable
define hidden void @_Z11test_substrv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::basic_string", align 8 ; 33 uses
  %1 = alloca %"class.boost::container::basic_string", align 8 ; 18 uses
  %2 = alloca %"class.boost::container::basic_string", align 8 ; 18 uses
  %3 = alloca %"class.boost::container::basic_string", align 8 ; 17 uses
  %4 = alloca %"class.boost::container::basic_string", align 8 ; 18 uses
  %5 = alloca %"class.boost::container::basic_string", align 8 ; 18 uses
  %6 = alloca %"class.boost::container::basic_string", align 8 ; 18 uses
  %7 = alloca %"class.boost::container::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #27
  store i8 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  store i8 0, ptr %i.a, align 1, !tbaa !51
  %i.c = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 13)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.a
  br i1 %i.c, label %bb.b, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i

bb.b:                                             ; preds = %.noexc.i
  %i.d = load i8, ptr %0, align 8, !tbaa !51      ; 2 uses
  %i.e = trunc i8 %i.d to i1
  %i.f = lshr i8 %i.d, 1
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = load i64, ptr %0, align 8
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.m = select i1 %i.e, ptr %i.h, ptr %i.l
  store i8 0, ptr %i.m, align 1, !tbaa !51
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i: ; preds = %bb.b, %.noexc.i
  %i.n = load i8, ptr %0, align 8, !tbaa !51
  %i.o = trunc i8 %i.n to i1                      ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.q = select i1 %i.o, ptr %i.a, ptr %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.q, ptr noundef nonnull align 1 dereferenceable(13) @.str.29, i64 13, i1 false)
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %0, i64 14
  %.sroa.gep136 = getelementptr inbounds nuw i8, ptr %i.p, i64 13
  %.sroa.sel = select i1 %i.o, ptr %.sroa.gep, ptr %.sroa.gep136
  store i8 0, ptr %.sroa.sel, align 1, !tbaa !51
  %i.r = load i8, ptr %0, align 8, !tbaa !51
  %i.s = trunc i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i
  store i8 27, ptr %0, align 8
  %.pre = load i64, ptr %0, align 8, !noalias !313
  br label %bb.h

bb.d:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i
  %i.t = load i64, ptr %0, align 8
end_hunk_2
begin_hunk_3_@_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE6insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEESB_PKcT_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS0_3dtl17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESR_E4typeE:bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %.07.i, i64 4
  %i.ct = load i8, ptr %i.cr, align 1, !tbaa !51
  store i8 %i.ct, ptr %i.cs, align 1, !tbaa !51
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 5
  %i.cv = getelementptr inbounds nuw i8, ptr %.07.i, i64 5
  %i.cw = load i8, ptr %i.cu, align 1, !tbaa !51
  store i8 %i.cw, ptr %i.cv, align 1, !tbaa !51
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 6
  %i.cy = getelementptr inbounds nuw i8, ptr %.07.i, i64 6
  %i.cz = load i8, ptr %i.cx, align 1, !tbaa !51
  store i8 %i.cz, ptr %i.cy, align 1, !tbaa !51
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 7
  %i.db = getelementptr inbounds nuw i8, ptr %.07.i, i64 7
  %i.dc = load i8, ptr %i.da, align 1, !tbaa !51
  store i8 %i.dc, ptr %i.db, align 1, !tbaa !51
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %.not.i115.7 = icmp eq ptr %i.dd, %3
  br i1 %.not.i115.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEvT_SG_T0_.exit, label %.lr.ph.i114, !llvm.loop !759

bb.k:                                             ; preds = %bb.i
  %i.df = getelementptr i8, ptr %2, i64 %i.av     ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 1      ; 6 uses
  %i.dh = getelementptr i8, ptr %i.w, i64 %i.o    ; 2 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 1      ; 6 uses
  %.not7.i = icmp eq ptr %i.dg, %3
  br i1 %.not7.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEmT_SG_T0_.exit, label %iter.check413

iter.check413:                                    ; preds = %bb.k
  %i.dj = add i64 %i.g, %i.h
  %i.dk = xor i64 %i.o, -1
  %i.dl = add i64 %i.dj, %i.dk
  %i.dm = add i64 %i.au, %i.i
  %i.dn = sub i64 %i.dl, %i.dm                    ; 7 uses
  %min.iters.check397 = icmp ult i64 %i.dn, 8
  %i.do = sub i64 %i.i, %i.g
  %diff.check396 = icmp ugt i64 %i.do, -32
  %or.cond497 = or i1 %min.iters.check397, %diff.check396
  br i1 %or.cond497, label %.lr.ph.i116.preheader, label %vector.main.loop.iter.check398

vector.main.loop.iter.check398:                   ; preds = %iter.check413
  %min.iters.check399 = icmp ult i64 %i.dn, 32
  br i1 %min.iters.check399, label %vec.epilog.ph417, label %vector.ph400

vector.ph400:                                     ; preds = %vector.main.loop.iter.check398
  %i.dp = and i64 %i.dn, 24
  %n.vec401 = and i64 %i.dn, -32                  ; 5 uses
  %i.dq = getelementptr i8, ptr %i.di, i64 %n.vec401
  %i.dr = getelementptr i8, ptr %i.dg, i64 %n.vec401
  br label %vector.body402

vector.body402:                                   ; preds = %vector.ph400, %vector.body402
  %index403 = phi i64 [ 0, %vector.ph400 ], [ %index.next408, %vector.body402 ] ; 3 uses
  %next.gep404 = getelementptr i8, ptr %i.di, i64 %index403 ; 2 uses
  %next.gep405 = getelementptr i8, ptr %i.dg, i64 %index403 ; 2 uses
  %i.ds = getelementptr i8, ptr %next.gep405, i64 16
  %wide.load406 = load <16 x i8>, ptr %next.gep405, align 1, !tbaa !51
  %wide.load407 = load <16 x i8>, ptr %i.ds, align 1, !tbaa !51
  %i.dt = getelementptr i8, ptr %next.gep404, i64 16
  store <16 x i8> %wide.load406, ptr %next.gep404, align 1, !tbaa !51
  store <16 x i8> %wide.load407, ptr %i.dt, align 1, !tbaa !51
  %index.next408 = add nuw i64 %index403, 32      ; 2 uses
  %i.du = icmp eq i64 %index.next408, %n.vec401
  br i1 %i.du, label %middle.block409, label %vector.body402, !llvm.loop !760

middle.block409:                                  ; preds = %vector.body402
  %cmp.n410 = icmp eq i64 %i.dn, %n.vec401
  br i1 %cmp.n410, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEmT_SG_T0_.exit.loopexit, label %vec.epilog.iter.check415

vec.epilog.iter.check415:                         ; preds = %middle.block409
  %min.epilog.iters.check416 = icmp eq i64 %i.dp, 0
  br i1 %min.epilog.iters.check416, label %.lr.ph.i116.preheader, label %vec.epilog.ph417, !prof !78

vec.epilog.ph417:                                 ; preds = %vector.main.loop.iter.check398, %vec.epilog.iter.check415
  %vec.epilog.resume.val411 = phi i64 [ %n.vec401, %vec.epilog.iter.check415 ], [ 0, %vector.main.loop.iter.check398 ]
  %n.vec418 = and i64 %i.dn, -8                   ; 4 uses
  %i.dv = getelementptr i8, ptr %i.di, i64 %n.vec418
  %i.dw = getelementptr i8, ptr %i.dg, i64 %n.vec418
  br label %vec.epilog.vector.body419

vec.epilog.vector.body419:                        ; preds = %vec.epilog.vector.body419, %vec.epilog.ph417
  %index420 = phi i64 [ %vec.epilog.resume.val411, %vec.epilog.ph417 ], [ %index.next424, %vec.epilog.vector.body419 ] ; 3 uses
  %next.gep421 = getelementptr i8, ptr %i.di, i64 %index420
  %next.gep422 = getelementptr i8, ptr %i.dg, i64 %index420
  %wide.load423 = load <8 x i8>, ptr %next.gep422, align 1, !tbaa !51
  store <8 x i8> %wide.load423, ptr %next.gep421, align 1, !tbaa !51
  %index.next424 = add nuw i64 %index420, 8       ; 2 uses
  %i.dx = icmp eq i64 %index.next424, %n.vec418
  br i1 %i.dx, label %vec.epilog.middle.block425, label %vec.epilog.vector.body419, !llvm.loop !761

vec.epilog.middle.block425:                       ; preds = %vec.epilog.vector.body419
  %cmp.n426 = icmp eq i64 %i.dn, %n.vec418
  br i1 %cmp.n426, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEmT_SG_T0_.exit.loopexit, label %.lr.ph.i116.preheader

.lr.ph.i116.preheader:                            ; preds = %iter.check413, %vec.epilog.iter.check415, %vec.epilog.middle.block425
  %.039.i.ph = phi ptr [ %i.di, %iter.check413 ], [ %i.dq, %vec.epilog.iter.check415 ], [ %i.dv, %vec.epilog.middle.block425 ] ; 2 uses
  %.sroa.04.08.i.ph = phi ptr [ %i.dg, %iter.check413 ], [ %i.dr, %vec.epilog.iter.check415 ], [ %i.dw, %vec.epilog.middle.block425 ] ; 3 uses
  %.sroa.04.08.i.ph518 = ptrtoaddr ptr %.sroa.04.08.i.ph to i64 ; 2 uses
  %i.dy = sub i64 %i.h, %.sroa.04.08.i.ph518
  %xtraiter519 = and i64 %i.dy, 7                 ; 2 uses
  %lcmp.mod520.not = icmp eq i64 %xtraiter519, 0
  br i1 %lcmp.mod520.not, label %.lr.ph.i116.prol.loopexit, label %.lr.ph.i116.prol

.lr.ph.i116.prol:                                 ; preds = %.lr.ph.i116.preheader, %.lr.ph.i116.prol
  %.039.i.prol = phi ptr [ %i.ea, %.lr.ph.i116.prol ], [ %.039.i.ph, %.lr.ph.i116.preheader ] ; 2 uses
  %.sroa.04.08.i.prol = phi ptr [ %i.eb, %.lr.ph.i116.prol ], [ %.sroa.04.08.i.ph, %.lr.ph.i116.preheader ] ; 2 uses
  %prol.iter521 = phi i64 [ %prol.iter521.next, %.lr.ph.i116.prol ], [ 0, %.lr.ph.i116.preheader ]
  %i.dz = load i8, ptr %.sroa.04.08.i.prol, align 1, !tbaa !51
  store i8 %i.dz, ptr %.039.i.prol, align 1, !tbaa !51
  %i.ea = getelementptr inbounds nuw i8, ptr %.039.i.prol, i64 1 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.prol, i64 1 ; 2 uses
  %prol.iter521.next = add i64 %prol.iter521, 1   ; 2 uses
  %prol.iter521.cmp.not = icmp eq i64 %prol.iter521.next, %xtraiter519
  br i1 %prol.iter521.cmp.not, label %.lr.ph.i116.prol.loopexit, label %.lr.ph.i116.prol, !llvm.loop !762

.lr.ph.i116.prol.loopexit:                        ; preds = %.lr.ph.i116.prol, %.lr.ph.i116.preheader
  %.039.i.unr = phi ptr [ %.039.i.ph, %.lr.ph.i116.preheader ], [ %i.ea, %.lr.ph.i116.prol ]
  %.sroa.04.08.i.unr = phi ptr [ %.sroa.04.08.i.ph, %.lr.ph.i116.preheader ], [ %i.eb, %.lr.ph.i116.prol ]
  %i.ec = sub i64 %.sroa.04.08.i.ph518, %i.h
  %i.ed = icmp ugt i64 %i.ec, -8
  br i1 %i.ed, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEmT_SG_T0_.exit.loopexit, label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %.lr.ph.i116.prol.loopexit, %.lr.ph.i116
  %.039.i = phi ptr [ %i.fa, %.lr.ph.i116 ], [ %.039.i.unr, %.lr.ph.i116.prol.loopexit ] ; 9 uses
  %.sroa.04.08.i = phi ptr [ %i.fb, %.lr.ph.i116 ], [ %.sroa.04.08.i.unr, %.lr.ph.i116.prol.loopexit ] ; 9 uses
  %i.ee = load i8, ptr %.sroa.04.08.i, align 1, !tbaa !51
  store i8 %i.ee, ptr %.039.i, align 1, !tbaa !51
  %i.ef = getelementptr inbounds nuw i8, ptr %.039.i, i64 1
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !51
  store i8 %i.eh, ptr %i.ef, align 1, !tbaa !51
  %i.ei = getelementptr inbounds nuw i8, ptr %.039.i, i64 2
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 2
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !51
  store i8 %i.ek, ptr %i.ei, align 1, !tbaa !51
  %i.el = getelementptr inbounds nuw i8, ptr %.039.i, i64 3
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 3
  %i.en = load i8, ptr %i.em, align 1, !tbaa !51
  store i8 %i.en, ptr %i.el, align 1, !tbaa !51
  %i.eo = getelementptr inbounds nuw i8, ptr %.039.i, i64 4
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 4
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !51
  store i8 %i.eq, ptr %i.eo, align 1, !tbaa !51
  %i.er = getelementptr inbounds nuw i8, ptr %.039.i, i64 5
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 5
  %i.et = load i8, ptr %i.es, align 1, !tbaa !51
  store i8 %i.et, ptr %i.er, align 1, !tbaa !51
  %i.eu = getelementptr inbounds nuw i8, ptr %.039.i, i64 6
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 6
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !51
  store i8 %i.ew, ptr %i.eu, align 1, !tbaa !51
  %i.ex = getelementptr inbounds nuw i8, ptr %.039.i, i64 7
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 7
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !51
  store i8 %i.ez, ptr %i.ex, align 1, !tbaa !51
  %i.fa = getelementptr inbounds nuw i8, ptr %.039.i, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i117.7 = icmp eq ptr %i.fb, %3
  br i1 %.not.i117.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEmT_SG_T0_.exit.loopexit, label %.lr.ph.i116, !llvm.loop !763

_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEmT_SG_T0_.exit.loopexit: ; preds = %.lr.ph.i116.prol.loopexit, %.lr.ph.i116, %vec.epilog.middle.block425, %middle.block409
  %.pre186 = load i8, ptr %i.a, align 8, !tbaa !51
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEmT_SG_T0_.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEmT_SG_T0_.exit: ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEmT_SG_T0_.exit.loopexit, %bb.k
  %i.fc = phi i8 [ %.pre186, %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEmT_SG_T0_.exit.loopexit ], [ %i.p, %bb.k ]
  %i.fd = sub nuw i64 %i.j, %i.av
  %i.fe = add i64 %i.fd, %i.o                     ; 3 uses
  %i.ff = trunc i8 %i.fc to i1
  br i1 %i.ff, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEmT_SG_T0_.exit
  %i.fg = trunc i64 %i.fe to i8
  %i.fh = shl i8 %i.fg, 1
  %i.fi = or disjoint i8 %i.fh, 1
  store i8 %i.fi, ptr %i.a, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test25expand_bwd_test_allocatorIcEEvE9priv_sizeEm.exit

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEmT_SG_T0_.exit
  %i.fj = load i64, ptr %i.a, align 8
  %i.fk = shl i64 %i.fe, 1
  %i.fl = and i64 %i.fj, 1
  %i.fm = or disjoint i64 %i.fl, %i.fk
  store i64 %i.fm, ptr %i.a, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test25expand_bwd_test_allocatorIcEEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseINS0_4test25expand_bwd_test_allocatorIcEEvE9priv_sizeEm.exit: ; preds = %bb.l, %bb.m
  %.not9.i120 = icmp eq ptr %1, %i.di
  br i1 %.not9.i120, label %iter.check481, label %iter.check447

iter.check447:                                    ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_4test25expand_bwd_test_allocatorIcEEvE9priv_sizeEm.exit
  %i.fn = getelementptr inbounds i8, ptr %i.w, i64 %i.fe ; 6 uses
  %i.fo = add i64 %i.o, %i.au
  %i.fp = add i64 %i.fo, 1
  %i.fq = sub i64 %i.fp, %i.g                     ; 7 uses
  %min.iters.check431 = icmp ult i64 %i.fq, 8
  br i1 %min.iters.check431, label %.lr.ph.i121.preheader, label %vector.memcheck429

vector.memcheck429:                               ; preds = %iter.check447
  %i.fr = add i64 %i.g, %i.au
  %i.fs = add i64 %i.fr, %i.h
  %i.ft = add i64 %i.au, %i.i
  %i.fu = add i64 %i.ft, %i.g
  %i.fv = sub i64 %i.fu, %i.fs
  %diff.check430 = icmp ugt i64 %i.fv, -32
  br i1 %diff.check430, label %.lr.ph.i121.preheader, label %vector.main.loop.iter.check432

vector.main.loop.iter.check432:                   ; preds = %vector.memcheck429
  %min.iters.check433 = icmp ult i64 %i.fq, 32
  br i1 %min.iters.check433, label %vec.epilog.ph451, label %vector.ph434

vector.ph434:                                     ; preds = %vector.main.loop.iter.check432
  %i.fw = and i64 %i.fq, 24
  %n.vec435 = and i64 %i.fq, -32                  ; 5 uses
  %i.fx = getelementptr i8, ptr %i.fn, i64 %n.vec435
  %i.fy = getelementptr i8, ptr %1, i64 %n.vec435
  br label %vector.body436

vector.body436:                                   ; preds = %vector.ph434, %vector.body436
  %index437 = phi i64 [ 0, %vector.ph434 ], [ %index.next442, %vector.body436 ] ; 3 uses
  %next.gep438 = getelementptr i8, ptr %i.fn, i64 %index437 ; 2 uses
  %next.gep439 = getelementptr i8, ptr %1, i64 %index437 ; 2 uses
  %i.fz = getelementptr i8, ptr %next.gep439, i64 16
  %wide.load440 = load <16 x i8>, ptr %next.gep439, align 1, !tbaa !51
  %wide.load441 = load <16 x i8>, ptr %i.fz, align 1, !tbaa !51
  %i.ga = getelementptr i8, ptr %next.gep438, i64 16
  store <16 x i8> %wide.load440, ptr %next.gep438, align 1, !tbaa !51
  store <16 x i8> %wide.load441, ptr %i.ga, align 1, !tbaa !51
  %index.next442 = add nuw i64 %index437, 32      ; 2 uses
  %i.gb = icmp eq i64 %index.next442, %n.vec435
  br i1 %i.gb, label %middle.block443, label %vector.body436, !llvm.loop !764

middle.block443:                                  ; preds = %vector.body436
  %cmp.n444 = icmp eq i64 %i.fq, %n.vec435
  br i1 %cmp.n444, label %iter.check481, label %vec.epilog.iter.check449

vec.epilog.iter.check449:                         ; preds = %middle.block443
  %min.epilog.iters.check450 = icmp eq i64 %i.fw, 0
  br i1 %min.epilog.iters.check450, label %.lr.ph.i121.preheader, label %vec.epilog.ph451, !prof !78

vec.epilog.ph451:                                 ; preds = %vector.main.loop.iter.check432, %vec.epilog.iter.check449
  %vec.epilog.resume.val445 = phi i64 [ %n.vec435, %vec.epilog.iter.check449 ], [ 0, %vector.main.loop.iter.check432 ]
  %n.vec452 = and i64 %i.fq, -8                   ; 4 uses
  %i.gc = getelementptr i8, ptr %i.fn, i64 %n.vec452
  %i.gd = getelementptr i8, ptr %1, i64 %n.vec452
  br label %vec.epilog.vector.body453

vec.epilog.vector.body453:                        ; preds = %vec.epilog.vector.body453, %vec.epilog.ph451
  %index454 = phi i64 [ %vec.epilog.resume.val445, %vec.epilog.ph451 ], [ %index.next458, %vec.epilog.vector.body453 ] ; 3 uses
  %next.gep455 = getelementptr i8, ptr %i.fn, i64 %index454
  %next.gep456 = getelementptr i8, ptr %1, i64 %index454
  %wide.load457 = load <8 x i8>, ptr %next.gep456, align 1, !tbaa !51
  store <8 x i8> %wide.load457, ptr %next.gep455, align 1, !tbaa !51
  %index.next458 = add nuw i64 %index454, 8       ; 2 uses
  %i.ge = icmp eq i64 %index.next458, %n.vec452
  br i1 %i.ge, label %vec.epilog.middle.block459, label %vec.epilog.vector.body453, !llvm.loop !765

vec.epilog.middle.block459:                       ; preds = %vec.epilog.vector.body453
  %cmp.n460 = icmp eq i64 %i.fq, %n.vec452
  br i1 %cmp.n460, label %iter.check481, label %.lr.ph.i121.preheader

.lr.ph.i121.preheader:                            ; preds = %iter.check447, %vector.memcheck429, %vec.epilog.iter.check449, %vec.epilog.middle.block459
  %.0711.i122.ph = phi ptr [ %i.fn, %iter.check447 ], [ %i.fn, %vector.memcheck429 ], [ %i.fx, %vec.epilog.iter.check449 ], [ %i.gc, %vec.epilog.middle.block459 ] ; 2 uses
  %.0810.i123.ph = phi ptr [ %1, %iter.check447 ], [ %1, %vector.memcheck429 ], [ %i.fy, %vec.epilog.iter.check449 ], [ %i.gd, %vec.epilog.middle.block459 ] ; 3 uses
  %i.gf = add i64 %i.o, %i.au                     ; 2 uses
  %i.gg = add i64 %i.gf, 1
  %.0810.i123.ph522 = ptrtoaddr ptr %.0810.i123.ph to i64 ; 2 uses
  %i.gh = sub i64 %i.gg, %.0810.i123.ph522
  %i.gi = sub i64 %i.gf, %.0810.i123.ph522
  %xtraiter523 = and i64 %i.gh, 7                 ; 2 uses
  %lcmp.mod524.not = icmp eq i64 %xtraiter523, 0
  br i1 %lcmp.mod524.not, label %.lr.ph.i121.prol.loopexit, label %.lr.ph.i121.prol

.lr.ph.i121.prol:                                 ; preds = %.lr.ph.i121.preheader, %.lr.ph.i121.prol
  %.0711.i122.prol = phi ptr [ %i.gk, %.lr.ph.i121.prol ], [ %.0711.i122.ph, %.lr.ph.i121.preheader ] ; 2 uses
  %.0810.i123.prol = phi ptr [ %i.gl, %.lr.ph.i121.prol ], [ %.0810.i123.ph, %.lr.ph.i121.preheader ] ; 2 uses
  %prol.iter525 = phi i64 [ %prol.iter525.next, %.lr.ph.i121.prol ], [ 0, %.lr.ph.i121.preheader ]
  %i.gj = load i8, ptr %.0810.i123.prol, align 1, !tbaa !51
  store i8 %i.gj, ptr %.0711.i122.prol, align 1, !tbaa !51
  %i.gk = getelementptr inbounds nuw i8, ptr %.0711.i122.prol, i64 1 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0810.i123.prol, i64 1 ; 2 uses
  %prol.iter525.next = add i64 %prol.iter525, 1   ; 2 uses
  %prol.iter525.cmp.not = icmp eq i64 %prol.iter525.next, %xtraiter523
  br i1 %prol.iter525.cmp.not, label %.lr.ph.i121.prol.loopexit, label %.lr.ph.i121.prol, !llvm.loop !766

.lr.ph.i121.prol.loopexit:                        ; preds = %.lr.ph.i121.prol, %.lr.ph.i121.preheader
  %.0711.i122.unr = phi ptr [ %.0711.i122.ph, %.lr.ph.i121.preheader ], [ %i.gk, %.lr.ph.i121.prol ]
  %.0810.i123.unr = phi ptr [ %.0810.i123.ph, %.lr.ph.i121.preheader ], [ %i.gl, %.lr.ph.i121.prol ]
  %i.gm = icmp ult i64 %i.gi, 7
  br i1 %i.gm, label %iter.check481, label %.lr.ph.i121

.lr.ph.i121:                                      ; preds = %.lr.ph.i121.prol.loopexit, %.lr.ph.i121
  %.0711.i122 = phi ptr [ %i.hj, %.lr.ph.i121 ], [ %.0711.i122.unr, %.lr.ph.i121.prol.loopexit ] ; 9 uses
  %.0810.i123 = phi ptr [ %i.hk, %.lr.ph.i121 ], [ %.0810.i123.unr, %.lr.ph.i121.prol.loopexit ] ; 9 uses
  %i.gn = load i8, ptr %.0810.i123, align 1, !tbaa !51
  store i8 %i.gn, ptr %.0711.i122, align 1, !tbaa !51
  %i.go = getelementptr inbounds nuw i8, ptr %.0711.i122, i64 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.0810.i123, i64 1
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !51
  store i8 %i.gq, ptr %i.go, align 1, !tbaa !51
  %i.gr = getelementptr inbounds nuw i8, ptr %.0711.i122, i64 2
  %i.gs = getelementptr inbounds nuw i8, ptr %.0810.i123, i64 2
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !51
  store i8 %i.gt, ptr %i.gr, align 1, !tbaa !51
  %i.gu = getelementptr inbounds nuw i8, ptr %.0711.i122, i64 3
  %i.gv = getelementptr inbounds nuw i8, ptr %.0810.i123, i64 3
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !51
  store i8 %i.gw, ptr %i.gu, align 1, !tbaa !51
  %i.gx = getelementptr inbounds nuw i8, ptr %.0711.i122, i64 4
  %i.gy = getelementptr inbounds nuw i8, ptr %.0810.i123, i64 4
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !51
  store i8 %i.gz, ptr %i.gx, align 1, !tbaa !51
  %i.ha = getelementptr inbounds nuw i8, ptr %.0711.i122, i64 5
  %i.hb = getelementptr inbounds nuw i8, ptr %.0810.i123, i64 5
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !51
  store i8 %i.hc, ptr %i.ha, align 1, !tbaa !51
  %i.hd = getelementptr inbounds nuw i8, ptr %.0711.i122, i64 6
  %i.he = getelementptr inbounds nuw i8, ptr %.0810.i123, i64 6
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !51
  store i8 %i.hf, ptr %i.hd, align 1, !tbaa !51
  %i.hg = getelementptr inbounds nuw i8, ptr %.0711.i122, i64 7
  %i.hh = getelementptr inbounds nuw i8, ptr %.0810.i123, i64 7 ; 2 uses
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !51
  store i8 %i.hi, ptr %i.hg, align 1, !tbaa !51
  %i.hj = getelementptr inbounds nuw i8, ptr %.0711.i122, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %.0810.i123, i64 8
  %.not.i124.7 = icmp eq ptr %i.hh, %i.dh
  br i1 %.not.i124.7, label %iter.check481, label %.lr.ph.i121, !llvm.loop !767

iter.check481:                                    ; preds = %.lr.ph.i121.prol.loopexit, %.lr.ph.i121, %middle.block443, %vec.epilog.middle.block459, %_ZN5boost9container3dtl17basic_string_baseINS0_4test25expand_bwd_test_allocatorIcEEvE9priv_sizeEm.exit
  %i.hl = add i64 %i.o, %i.au
  %i.hm = add i64 %i.hl, 1
  %i.hn = sub i64 %i.hm, %i.g                     ; 7 uses
  %min.iters.check465 = icmp ult i64 %i.hn, 8
  %i.ho = sub i64 %i.i, %i.g
  %diff.check464 = icmp ugt i64 %i.ho, -32
  %or.cond498 = or i1 %min.iters.check465, %diff.check464
  br i1 %or.cond498, label %.lr.ph.i128.preheader, label %vector.main.loop.iter.check466

vector.main.loop.iter.check466:                   ; preds = %iter.check481
  %min.iters.check467 = icmp ult i64 %i.hn, 32
  br i1 %min.iters.check467, label %vec.epilog.ph485, label %vector.ph468

vector.ph468:                                     ; preds = %vector.main.loop.iter.check466
  %i.hp = and i64 %i.hn, 24
  %n.vec469 = and i64 %i.hn, -32                  ; 5 uses
  %i.hq = getelementptr i8, ptr %1, i64 %n.vec469
  %i.hr = getelementptr i8, ptr %2, i64 %n.vec469
  br label %vector.body470

vector.body470:                                   ; preds = %vector.ph468, %vector.body470
  %index471 = phi i64 [ 0, %vector.ph468 ], [ %index.next476, %vector.body470 ] ; 3 uses
  %next.gep472 = getelementptr i8, ptr %1, i64 %index471 ; 2 uses
  %next.gep473 = getelementptr i8, ptr %2, i64 %index471 ; 2 uses
  %i.hs = getelementptr i8, ptr %next.gep473, i64 16
  %wide.load474 = load <16 x i8>, ptr %next.gep473, align 1, !tbaa !51
  %wide.load475 = load <16 x i8>, ptr %i.hs, align 1, !tbaa !51
  %i.ht = getelementptr i8, ptr %next.gep472, i64 16
  store <16 x i8> %wide.load474, ptr %next.gep472, align 1, !tbaa !51
  store <16 x i8> %wide.load475, ptr %i.ht, align 1, !tbaa !51
  %index.next476 = add nuw i64 %index471, 32      ; 2 uses
  %i.hu = icmp eq i64 %index.next476, %n.vec469
  br i1 %i.hu, label %middle.block477, label %vector.body470, !llvm.loop !768

middle.block477:                                  ; preds = %vector.body470
  %cmp.n478 = icmp eq i64 %i.hn, %n.vec469
  br i1 %cmp.n478, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEvT_SG_T0_.exit, label %vec.epilog.iter.check483

vec.epilog.iter.check483:                         ; preds = %middle.block477
  %min.epilog.iters.check484 = icmp eq i64 %i.hp, 0
  br i1 %min.epilog.iters.check484, label %.lr.ph.i128.preheader, label %vec.epilog.ph485, !prof !78

vec.epilog.ph485:                                 ; preds = %vector.main.loop.iter.check466, %vec.epilog.iter.check483
  %vec.epilog.resume.val479 = phi i64 [ %n.vec469, %vec.epilog.iter.check483 ], [ 0, %vector.main.loop.iter.check466 ]
  %n.vec486 = and i64 %i.hn, -8                   ; 4 uses
  %i.hv = getelementptr i8, ptr %1, i64 %n.vec486
  %i.hw = getelementptr i8, ptr %2, i64 %n.vec486
  br label %vec.epilog.vector.body487

vec.epilog.vector.body487:                        ; preds = %vec.epilog.vector.body487, %vec.epilog.ph485
  %index488 = phi i64 [ %vec.epilog.resume.val479, %vec.epilog.ph485 ], [ %index.next492, %vec.epilog.vector.body487 ] ; 3 uses
  %next.gep489 = getelementptr i8, ptr %1, i64 %index488
  %next.gep490 = getelementptr i8, ptr %2, i64 %index488
  %wide.load491 = load <8 x i8>, ptr %next.gep490, align 1, !tbaa !51
  store <8 x i8> %wide.load491, ptr %next.gep489, align 1, !tbaa !51
  %index.next492 = add nuw i64 %index488, 8       ; 2 uses
  %i.hx = icmp eq i64 %index.next492, %n.vec486
  br i1 %i.hx, label %vec.epilog.middle.block493, label %vec.epilog.vector.body487, !llvm.loop !769

vec.epilog.middle.block493:                       ; preds = %vec.epilog.vector.body487
  %cmp.n494 = icmp eq i64 %i.hn, %n.vec486
  br i1 %cmp.n494, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test25expand_bwd_test_allocatorIcEEvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEESB_EEvT_SG_T0_.exit, label %.lr.ph.i128.preheader

.lr.ph.i128.preheader:                            ; preds = %iter.check481, %vec.epilog.iter.check483, %vec.epilog.middle.block493
  %.07.i129.ph = phi ptr [ %1, %iter.check481 ], [ %i.hq, %vec.epilog.iter.check483 ], [ %i.hv, %vec.epilog.middle.block493 ]
  %.sroa.02.06.i130.ph = phi ptr [ %2, %iter.check481 ], [ %i.hr, %vec.epilog.iter.check483 ], [ %i.hw, %vec.epilog.middle.block493 ]
  br label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %.lr.ph.i128.preheader, %.lr.ph.i128
  %.07.i129 = phi ptr [ %i.ia, %.lr.ph.i128 ], [ %.07.i129.ph, %.lr.ph.i128.preheader ] ; 2 uses
  %.sroa.02.06.i130 = phi ptr [ %i.hz, %.lr.ph.i128 ], [ %.sroa.02.06.i130.ph, %.lr.ph.i128.preheader ] ; 3 uses
  %i.hy = load i8, ptr %.sroa.02.06.i130, align 1, !tbaa !51
  store i8 %i.hy, ptr %.07.i129, align 1, !tbaa !51
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i130, i64 1
end_hunk_3
begin_hunk_4_@_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6insertINS0_17constant_iteratorIcEEEEPcPKcT_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESK_E4typeE:bb.a
  %i.aa = add i64 %.neg.i, %i.i                   ; 2 uses
  %i.ab = icmp ult i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.423) #26
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
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !56
  %i.al = add i64 %i.n, %i.i                      ; 3 uses
  %i.am = add i64 %i.al, 1
  %spec.store.select = select i1 %i.o, ptr null, ptr %i.g
  store ptr %spec.store.select, ptr %i.b, align 8, !tbaa !77
  %spec.select = select i1 %i.o, i32 1, i32 7
  %i.an = call noundef ptr @_ZN5boost9container3dtl24allocator_version_traitsINS0_13new_allocatorIcEELj1EE18allocation_commandERS4_jmRmRPc(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %spec.select, i64 noundef %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 17 uses
  %i.ao = ptrtoaddr ptr %i.an to i64              ; 2 uses
  %i.ap = icmp eq ptr %i.u, %i.an
  br i1 %i.ap, label %bb.h, label %bb.p

bb.h:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE12next_storageEmm.exit
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.aq, ptr %i.p, align 8, !tbaa !62
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
  %wide.load295 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !51
  %wide.load296 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !51
  %i.bc = getelementptr i8, ptr %next.gep293, i64 17
  store <16 x i8> %wide.load295, ptr %i.az, align 1, !tbaa !51
  store <16 x i8> %wide.load296, ptr %i.bc, align 1, !tbaa !51
  %index.next297 = add nuw i64 %index292, 32      ; 2 uses
  %i.bd = icmp eq i64 %index.next297, %n.vec290
  br i1 %i.bd, label %middle.block298, label %vector.body291, !llvm.loop !799

middle.block298:                                  ; preds = %vector.body291
  %cmp.n299 = icmp eq i64 %i.i, %n.vec290
  br i1 %cmp.n299, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit, label %vec.epilog.iter.check304

vec.epilog.iter.check304:                         ; preds = %middle.block298
  %min.epilog.iters.check305 = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check305, label %.lr.ph.i.preheader, label %vec.epilog.ph306, !prof !78

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
  %wide.load312 = load <8 x i8>, ptr %i.bh, align 1, !tbaa !51
  store <8 x i8> %wide.load312, ptr %i.bg, align 1, !tbaa !51
  %index.next313 = add nuw i64 %index309, 8       ; 2 uses
  %i.bi = icmp eq i64 %index.next313, %n.vec307
  br i1 %i.bi, label %vec.epilog.middle.block314, label %vec.epilog.vector.body308, !llvm.loop !800

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
  %i.bj = load i8, ptr %.0810.i, align 1, !tbaa !51
  store i8 %i.bj, ptr %.0711.i, align 1, !tbaa !51
  %.not.i = icmp eq ptr %.0810.i, %i.at
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !801

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
  %.pre.i = load i8, ptr %2, align 1, !tbaa !51
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %.pre.i, i64 %i.i, i1 false), !tbaa !51
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyINS0_17constant_iteratorIcEEPcEEvT_S9_T0_.exit

bb.k:                                             ; preds = %bb.i
  %.neg208 = xor i64 %i.as, -1
  %i.bo = add i64 %3, %.neg208
  %i.bp = getelementptr i8, ptr %i.u, i64 %i.n    ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 1      ; 2 uses
  %.not6.i = icmp eq i64 %i.bo, %5
  br i1 %.not6.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS0_17constant_iteratorIcEEPcEEmT_S9_T0_.exit, label %.lr.ph.preheader.i127

.lr.ph.preheader.i127:                            ; preds = %bb.k
  %.pre.i128 = load i8, ptr %2, align 1, !tbaa !51
  %i.br = add i64 %3, %i.h
  %i.bs = xor i64 %i.n, -1
  %i.bt = add i64 %i.br, %i.bs
  %i.bu = add i64 %5, %i.ar
  %i.bv = sub i64 %i.bt, %i.bu
  call void @llvm.memset.p0.i64(ptr align 1 %i.bq, i8 %.pre.i128, i64 %i.bv, i1 false), !tbaa !51
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS0_17constant_iteratorIcEEPcEEmT_S9_T0_.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS0_17constant_iteratorIcEEPcEEmT_S9_T0_.exit: ; preds = %.lr.ph.preheader.i127, %bb.k
  %i.bw = sub nuw i64 %i.i, %i.as
  %i.bx = add i64 %i.bw, %i.n                     ; 3 uses
  %i.by = load i8, ptr %0, align 8, !tbaa !51
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
  %wide.load329 = load <16 x i8>, ptr %next.gep328, align 1, !tbaa !51
  %wide.load330 = load <16 x i8>, ptr %i.ct, align 1, !tbaa !51
  %i.cu = getelementptr i8, ptr %next.gep327, i64 16
  store <16 x i8> %wide.load329, ptr %next.gep327, align 1, !tbaa !51
  store <16 x i8> %wide.load330, ptr %i.cu, align 1, !tbaa !51
  %index.next331 = add nuw i64 %index326, 32      ; 2 uses
  %i.cv = icmp eq i64 %index.next331, %n.vec324
  br i1 %i.cv, label %middle.block332, label %vector.body325, !llvm.loop !802

middle.block332:                                  ; preds = %vector.body325
  %cmp.n333 = icmp eq i64 %i.ck, %n.vec324
  br i1 %cmp.n333, label %.lr.ph.preheader.i141, label %vec.epilog.iter.check338

vec.epilog.iter.check338:                         ; preds = %middle.block332
  %min.epilog.iters.check339 = icmp eq i64 %i.cq, 0
  br i1 %min.epilog.iters.check339, label %.lr.ph.i134.preheader, label %vec.epilog.ph340, !prof !78

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
  %wide.load346 = load <8 x i8>, ptr %next.gep345, align 1, !tbaa !51
  store <8 x i8> %wide.load346, ptr %next.gep344, align 1, !tbaa !51
  %index.next347 = add nuw i64 %index343, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next347, %n.vec341
  br i1 %i.cy, label %vec.epilog.middle.block348, label %vec.epilog.vector.body342, !llvm.loop !803

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
  %i.dd = load i8, ptr %.0810.i136.prol, align 1, !tbaa !51
  store i8 %i.dd, ptr %.0711.i135.prol, align 1, !tbaa !51
  %i.de = getelementptr inbounds nuw i8, ptr %.0711.i135.prol, i64 1 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0810.i136.prol, i64 1 ; 2 uses
  %prol.iter360.next.a = add i64 %prol.iter360.a, 1 ; 2 uses
  %prol.iter360.cmp.not.a = icmp eq i64 %prol.iter360.next.a, %xtraiter358.a
  br i1 %prol.iter360.cmp.not.a, label %.lr.ph.i134.prol.loopexit, label %.lr.ph.i134.prol, !llvm.loop !804

.lr.ph.i134.prol.loopexit:                        ; preds = %.lr.ph.i134.prol, %.lr.ph.i134.preheader
  %.0711.i135.unr = phi ptr [ %.0711.i135.ph, %.lr.ph.i134.preheader ], [ %i.de, %.lr.ph.i134.prol ]
  %.0810.i136.unr = phi ptr [ %.0810.i136.ph, %.lr.ph.i134.preheader ], [ %i.df, %.lr.ph.i134.prol ]
  %i.dg = icmp ult i64 %i.dc, 7
  br i1 %i.dg, label %.lr.ph.preheader.i141, label %.lr.ph.i134

.lr.ph.i134:                                      ; preds = %.lr.ph.i134.prol.loopexit, %.lr.ph.i134
  %.0711.i135 = phi ptr [ %i.ed, %.lr.ph.i134 ], [ %.0711.i135.unr, %.lr.ph.i134.prol.loopexit ] ; 9 uses
  %.0810.i136 = phi ptr [ %i.ee, %.lr.ph.i134 ], [ %.0810.i136.unr, %.lr.ph.i134.prol.loopexit ] ; 9 uses
  %i.dh = load i8, ptr %.0810.i136, align 1, !tbaa !51
  store i8 %i.dh, ptr %.0711.i135, align 1, !tbaa !51
  %i.di = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 1
  %i.dj = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !51
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !51
  %i.dl = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 2
  %i.dm = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 2
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !51
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !51
  %i.do = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 3
  %i.dp = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 3
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !51
  store i8 %i.dq, ptr %i.do, align 1, !tbaa !51
  %i.dr = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 4
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !51
  store i8 %i.dt, ptr %i.dr, align 1, !tbaa !51
  %i.du = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 5
  %i.dv = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 5
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !51
  store i8 %i.dw, ptr %i.du, align 1, !tbaa !51
  %i.dx = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 6
  %i.dy = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 6
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !51
  store i8 %i.dz, ptr %i.dx, align 1, !tbaa !51
  %i.ea = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 7
  %i.eb = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 7 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !51
  store i8 %i.ec, ptr %i.ea, align 1, !tbaa !51
  %i.ed = getelementptr inbounds nuw i8, ptr %.0711.i135, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %.0810.i136, i64 8
  %.not.i137.7 = icmp eq ptr %i.eb, %i.bp
  br i1 %.not.i137.7, label %.lr.ph.preheader.i141, label %.lr.ph.i134, !llvm.loop !805

.lr.ph.preheader.i141:                            ; preds = %.lr.ph.i134.prol.loopexit, %.lr.ph.i134, %middle.block332, %vec.epilog.middle.block348, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit
  %.pre.i142 = load i8, ptr %2, align 1, !tbaa !51
  %i.ef = add i64 %i.n, %i.ar
  %i.eg = add i64 %i.ef, 1
  %i.eh = sub i64 %i.eg, %i.h
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %.pre.i142, i64 %i.eh, i1 false), !tbaa !51
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyINS0_17constant_iteratorIcEEPcEEvT_S9_T0_.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyINS0_17constant_iteratorIcEEPcEEvT_S9_T0_.exit: ; preds = %.lr.ph.preheader.i, %.lr.ph.preheader.i141
  %.0118 = add i64 %i.n, %i.i                     ; 3 uses
  %i.ei = load i8, ptr %0, align 8, !tbaa !51
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
  store i8 0, ptr %i.er, align 1, !tbaa !51
  %.pre214.pre = load i8, ptr %0, align 8, !tbaa !51
  %.pre215.pre = load ptr, ptr %i.f, align 8
  br label %bb.v

bb.p:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE12next_storageEmm.exit
  %i.es = load ptr, ptr %i.b, align 8, !tbaa !77
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
  %wide.load = load <16 x i8>, ptr %next.gep240, align 1, !tbaa !51
  %wide.load241 = load <16 x i8>, ptr %i.ez, align 1, !tbaa !51
  %i.fa = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !51
  store <16 x i8> %wide.load241, ptr %i.fa, align 1, !tbaa !51
end_hunk_4
begin_hunk_5_@_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6insertINS_7movelib16reverse_iteratorIPcEEEES8_PKcT_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE:bb.a
  store i8 %i.dq, ptr %i.do, align 1, !tbaa !51
  %i.dr = getelementptr inbounds nuw i8, ptr %.03.i, i64 8
  %.not.i104.7 = icmp eq ptr %i.dp, %i.bu
  br i1 %.not.i104.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyINS_7movelib16reverse_iteratorIPcEES8_EEvT_SA_T0_.exit, label %.lr.ph.i103, !llvm.loop !823

bb.k:                                             ; preds = %bb.i
  %i.ds = load ptr, ptr %2, align 8, !tbaa !69    ; 2 uses
  %i.dt = ptrtoaddr ptr %i.ds to i64              ; 5 uses
  %i.du = xor i64 %i.aw, -1
  %i.dv = getelementptr inbounds i8, ptr %i.ds, i64 %i.du ; 10 uses
  %i.dw = load ptr, ptr %3, align 8, !tbaa !69    ; 4 uses
  %i.dx = ptrtoaddr ptr %i.dw to i64              ; 4 uses
  %i.dy = getelementptr i8, ptr %i.y, i64 %i.r    ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 1      ; 8 uses
  %.not4.i = icmp eq ptr %i.dv, %i.dw
  br i1 %.not4.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit, label %iter.check454

iter.check454:                                    ; preds = %bb.k
  %i.ea = add i64 %i.h, %i.dt
  %i.eb = xor i64 %i.r, -1
  %i.ec = add i64 %i.ea, %i.eb
  %i.ed = add i64 %i.av, %i.dx
  %i.ee = sub i64 %i.ec, %i.ed                    ; 7 uses
  %min.iters.check432 = icmp ult i64 %i.ee, 8
  br i1 %min.iters.check432, label %.lr.ph.i105.preheader, label %vector.memcheck433

vector.memcheck433:                               ; preds = %iter.check454
  %i.ef = add i64 %i.av, %i.dx
  %i.eg = add i64 %i.h, %i.dt
  %i.eh = sub i64 %i.eg, %i.ef
  %i.ei = getelementptr i8, ptr %i.y, i64 %i.eh
  %bound0434 = icmp ult ptr %i.dz, %i.dv
  %bound1435 = icmp ult ptr %i.dw, %i.ei
  %found.conflict436 = and i1 %bound0434, %bound1435
  br i1 %found.conflict436, label %.lr.ph.i105.preheader, label %vector.main.loop.iter.check437

vector.main.loop.iter.check437:                   ; preds = %vector.memcheck433
  %min.iters.check438 = icmp ult i64 %i.ee, 32
  br i1 %min.iters.check438, label %vec.epilog.ph458, label %vector.ph439

vector.ph439:                                     ; preds = %vector.main.loop.iter.check437
  %i.ej = and i64 %i.ee, 24
  %n.vec440 = and i64 %i.ee, -32                  ; 5 uses
  %i.ek = sub i64 0, %n.vec440
  %i.el = getelementptr i8, ptr %i.dv, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.dz, i64 %n.vec440
  br label %vector.body441

vector.body441:                                   ; preds = %vector.ph439, %vector.body441
  %index442 = phi i64 [ 0, %vector.ph439 ], [ %index.next449, %vector.body441 ] ; 3 uses
  %i.en = sub i64 0, %index442
  %next.gep443 = getelementptr i8, ptr %i.dv, i64 %i.en ; 2 uses
  %next.gep444 = getelementptr i8, ptr %i.dz, i64 %index442 ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %next.gep443, i64 -16
  %i.ep = getelementptr inbounds i8, ptr %next.gep443, i64 -32
  %wide.load445 = load <16 x i8>, ptr %i.eo, align 1, !tbaa !51, !alias.scope !865
  %wide.load446 = load <16 x i8>, ptr %i.ep, align 1, !tbaa !51, !alias.scope !865
  %reverse447 = shufflevector <16 x i8> %wide.load445, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse448 = shufflevector <16 x i8> %wide.load446, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.eq = getelementptr i8, ptr %next.gep444, i64 16
  store <16 x i8> %reverse447, ptr %next.gep444, align 1, !tbaa !51, !alias.scope !866, !noalias !865
  store <16 x i8> %reverse448, ptr %i.eq, align 1, !tbaa !51, !alias.scope !866, !noalias !865
  %index.next449 = add nuw i64 %index442, 32      ; 2 uses
  %i.er = icmp eq i64 %index.next449, %n.vec440
  br i1 %i.er, label %middle.block450, label %vector.body441, !llvm.loop !827

middle.block450:                                  ; preds = %vector.body441
  %cmp.n451 = icmp eq i64 %i.ee, %n.vec440
  br i1 %cmp.n451, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit, label %vec.epilog.iter.check456

vec.epilog.iter.check456:                         ; preds = %middle.block450
  %min.epilog.iters.check457 = icmp eq i64 %i.ej, 0
  br i1 %min.epilog.iters.check457, label %.lr.ph.i105.preheader, label %vec.epilog.ph458, !prof !78

vec.epilog.ph458:                                 ; preds = %vector.main.loop.iter.check437, %vec.epilog.iter.check456
  %vec.epilog.resume.val452 = phi i64 [ %n.vec440, %vec.epilog.iter.check456 ], [ 0, %vector.main.loop.iter.check437 ]
  %n.vec459 = and i64 %i.ee, -8                   ; 4 uses
  %i.es = sub i64 0, %n.vec459
  %i.et = getelementptr i8, ptr %i.dv, i64 %i.es
  %i.eu = getelementptr i8, ptr %i.dz, i64 %n.vec459
  br label %vec.epilog.vector.body460

vec.epilog.vector.body460:                        ; preds = %vec.epilog.vector.body460, %vec.epilog.ph458
  %index461 = phi i64 [ %vec.epilog.resume.val452, %vec.epilog.ph458 ], [ %index.next466, %vec.epilog.vector.body460 ] ; 3 uses
  %i.ev = sub i64 0, %index461
  %next.gep462 = getelementptr i8, ptr %i.dv, i64 %i.ev
  %next.gep463 = getelementptr i8, ptr %i.dz, i64 %index461
  %i.ew = getelementptr inbounds i8, ptr %next.gep462, i64 -8
  %wide.load464 = load <8 x i8>, ptr %i.ew, align 1, !tbaa !51, !alias.scope !865
  %reverse465 = shufflevector <8 x i8> %wide.load464, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse465, ptr %next.gep463, align 1, !tbaa !51, !alias.scope !866, !noalias !865
  %index.next466 = add nuw i64 %index461, 8       ; 2 uses
  %i.ex = icmp eq i64 %index.next466, %n.vec459
  br i1 %i.ex, label %vec.epilog.middle.block467, label %vec.epilog.vector.body460, !llvm.loop !828

vec.epilog.middle.block467:                       ; preds = %vec.epilog.vector.body460
  %cmp.n468 = icmp eq i64 %i.ee, %n.vec459
  br i1 %cmp.n468, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit, label %.lr.ph.i105.preheader

.lr.ph.i105.preheader:                            ; preds = %iter.check454, %vector.memcheck433, %vec.epilog.iter.check456, %vec.epilog.middle.block467
  %.sroa.0167.0.ph = phi ptr [ %i.dv, %iter.check454 ], [ %i.dv, %vector.memcheck433 ], [ %i.el, %vec.epilog.iter.check456 ], [ %i.et, %vec.epilog.middle.block467 ] ; 3 uses
  %.035.i.ph = phi ptr [ %i.dz, %iter.check454 ], [ %i.dz, %vector.memcheck433 ], [ %i.em, %vec.epilog.iter.check456 ], [ %i.eu, %vec.epilog.middle.block467 ] ; 2 uses
  %.sroa.0167.0.ph567 = ptrtoaddr ptr %.sroa.0167.0.ph to i64 ; 2 uses
  %i.ey = sub i64 %.sroa.0167.0.ph567, %i.dx
  %xtraiter568 = and i64 %i.ey, 7                 ; 2 uses
  %lcmp.mod569.not = icmp eq i64 %xtraiter568, 0
  br i1 %lcmp.mod569.not, label %.lr.ph.i105.prol.loopexit, label %.lr.ph.i105.prol

.lr.ph.i105.prol:                                 ; preds = %.lr.ph.i105.preheader, %.lr.ph.i105.prol
  %.sroa.0167.0.prol = phi ptr [ %i.ez, %.lr.ph.i105.prol ], [ %.sroa.0167.0.ph, %.lr.ph.i105.preheader ]
  %.035.i.prol = phi ptr [ %i.fb, %.lr.ph.i105.prol ], [ %.035.i.ph, %.lr.ph.i105.preheader ] ; 2 uses
  %prol.iter570 = phi i64 [ %prol.iter570.next, %.lr.ph.i105.prol ], [ 0, %.lr.ph.i105.preheader ]
  %i.ez = getelementptr inbounds i8, ptr %.sroa.0167.0.prol, i64 -1 ; 3 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !51
  store i8 %i.fa, ptr %.035.i.prol, align 1, !tbaa !51
  %i.fb = getelementptr inbounds nuw i8, ptr %.035.i.prol, i64 1 ; 2 uses
  %prol.iter570.next = add i64 %prol.iter570, 1   ; 2 uses
  %prol.iter570.cmp.not = icmp eq i64 %prol.iter570.next, %xtraiter568
  br i1 %prol.iter570.cmp.not, label %.lr.ph.i105.prol.loopexit, label %.lr.ph.i105.prol, !llvm.loop !829

.lr.ph.i105.prol.loopexit:                        ; preds = %.lr.ph.i105.prol, %.lr.ph.i105.preheader
  %.sroa.0167.0.unr = phi ptr [ %.sroa.0167.0.ph, %.lr.ph.i105.preheader ], [ %i.ez, %.lr.ph.i105.prol ]
  %.035.i.unr = phi ptr [ %.035.i.ph, %.lr.ph.i105.preheader ], [ %i.fb, %.lr.ph.i105.prol ]
  %i.fc = sub i64 %i.dx, %.sroa.0167.0.ph567
  %i.fd = icmp ugt i64 %i.fc, -8
  br i1 %i.fd, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit, label %.lr.ph.i105

.lr.ph.i105:                                      ; preds = %.lr.ph.i105.prol.loopexit, %.lr.ph.i105
  %.sroa.0167.0 = phi ptr [ %i.fz, %.lr.ph.i105 ], [ %.sroa.0167.0.unr, %.lr.ph.i105.prol.loopexit ] ; 8 uses
  %.035.i = phi ptr [ %i.gb, %.lr.ph.i105 ], [ %.035.i.unr, %.lr.ph.i105.prol.loopexit ] ; 9 uses
  %i.fe = getelementptr inbounds i8, ptr %.sroa.0167.0, i64 -1
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !51
  store i8 %i.ff, ptr %.035.i, align 1, !tbaa !51
  %i.fg = getelementptr inbounds nuw i8, ptr %.035.i, i64 1
  %i.fh = getelementptr inbounds i8, ptr %.sroa.0167.0, i64 -2
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !51
  store i8 %i.fi, ptr %i.fg, align 1, !tbaa !51
  %i.fj = getelementptr inbounds nuw i8, ptr %.035.i, i64 2
  %i.fk = getelementptr inbounds i8, ptr %.sroa.0167.0, i64 -3
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !51
  store i8 %i.fl, ptr %i.fj, align 1, !tbaa !51
  %i.fm = getelementptr inbounds nuw i8, ptr %.035.i, i64 3
  %i.fn = getelementptr inbounds i8, ptr %.sroa.0167.0, i64 -4
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !51
  store i8 %i.fo, ptr %i.fm, align 1, !tbaa !51
  %i.fp = getelementptr inbounds nuw i8, ptr %.035.i, i64 4
  %i.fq = getelementptr inbounds i8, ptr %.sroa.0167.0, i64 -5
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !51
  store i8 %i.fr, ptr %i.fp, align 1, !tbaa !51
  %i.fs = getelementptr inbounds nuw i8, ptr %.035.i, i64 5
  %i.ft = getelementptr inbounds i8, ptr %.sroa.0167.0, i64 -6
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !51
  store i8 %i.fu, ptr %i.fs, align 1, !tbaa !51
  %i.fv = getelementptr inbounds nuw i8, ptr %.035.i, i64 6
  %i.fw = getelementptr inbounds i8, ptr %.sroa.0167.0, i64 -7
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !51
  store i8 %i.fx, ptr %i.fv, align 1, !tbaa !51
  %i.fy = getelementptr inbounds nuw i8, ptr %.035.i, i64 7
  %i.fz = getelementptr inbounds i8, ptr %.sroa.0167.0, i64 -8 ; 3 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !51
  store i8 %i.ga, ptr %i.fy, align 1, !tbaa !51
  %i.gb = getelementptr inbounds nuw i8, ptr %.035.i, i64 8
  %.not.i106.7 = icmp eq ptr %i.fz, %i.dw
  br i1 %.not.i106.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit, label %.lr.ph.i105, !llvm.loop !830

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit: ; preds = %.lr.ph.i105.prol.loopexit, %.lr.ph.i105, %middle.block450, %vec.epilog.middle.block467, %bb.k
  %i.gc = sub nuw i64 %i.m, %i.aw
  %i.gd = add i64 %i.gc, %i.r                     ; 3 uses
  %i.ge = load i8, ptr %0, align 8, !tbaa !51
  %i.gf = trunc i8 %i.ge to i1
  br i1 %i.gf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit
  %i.gg = trunc i64 %i.gd to i8
  %i.gh = shl i8 %i.gg, 1
  %i.gi = or disjoint i8 %i.gh, 1
  store i8 %i.gi, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit
  %i.gj = load i64, ptr %0, align 8
  %i.gk = shl i64 %i.gd, 1
  %i.gl = and i64 %i.gj, 1
  %i.gm = or disjoint i64 %i.gl, %i.gk
  store i64 %i.gm, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit: ; preds = %bb.l, %bb.m
  %.not9.i108 = icmp eq ptr %1, %i.dz
  br i1 %.not9.i108, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit, label %iter.check489

iter.check489:                                    ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit
  %i.gn = getelementptr inbounds i8, ptr %i.y, i64 %i.gd ; 6 uses
  %i.go = add i64 %i.r, %i.av
  %i.gp = add i64 %i.go, 1
  %i.gq = sub i64 %i.gp, %i.h                     ; 7 uses
  %min.iters.check473 = icmp ult i64 %i.gq, 8
  br i1 %min.iters.check473, label %.lr.ph.i109.preheader, label %vector.memcheck471

vector.memcheck471:                               ; preds = %iter.check489
  %i.gr = add i64 %i.h, %i.av
  %i.gs = add i64 %i.gr, %i.k
  %i.gt = add i64 %i.av, %i.l
  %i.gu = add i64 %i.gt, %i.h
  %i.gv = sub i64 %i.gu, %i.gs
  %diff.check472 = icmp ugt i64 %i.gv, -32
  br i1 %diff.check472, label %.lr.ph.i109.preheader, label %vector.main.loop.iter.check474

vector.main.loop.iter.check474:                   ; preds = %vector.memcheck471
  %min.iters.check475 = icmp ult i64 %i.gq, 32
  br i1 %min.iters.check475, label %vec.epilog.ph493, label %vector.ph476

vector.ph476:                                     ; preds = %vector.main.loop.iter.check474
  %i.gw = and i64 %i.gq, 24
  %n.vec477 = and i64 %i.gq, -32                  ; 5 uses
  %i.gx = getelementptr i8, ptr %i.gn, i64 %n.vec477
  %i.gy = getelementptr i8, ptr %1, i64 %n.vec477
  br label %vector.body478

vector.body478:                                   ; preds = %vector.ph476, %vector.body478
  %index479 = phi i64 [ 0, %vector.ph476 ], [ %index.next484, %vector.body478 ] ; 3 uses
  %next.gep480 = getelementptr i8, ptr %i.gn, i64 %index479 ; 2 uses
  %next.gep481 = getelementptr i8, ptr %1, i64 %index479 ; 2 uses
  %i.gz = getelementptr i8, ptr %next.gep481, i64 16
  %wide.load482 = load <16 x i8>, ptr %next.gep481, align 1, !tbaa !51
  %wide.load483 = load <16 x i8>, ptr %i.gz, align 1, !tbaa !51
  %i.ha = getelementptr i8, ptr %next.gep480, i64 16
  store <16 x i8> %wide.load482, ptr %next.gep480, align 1, !tbaa !51
  store <16 x i8> %wide.load483, ptr %i.ha, align 1, !tbaa !51
  %index.next484 = add nuw i64 %index479, 32      ; 2 uses
  %i.hb = icmp eq i64 %index.next484, %n.vec477
  br i1 %i.hb, label %middle.block485, label %vector.body478, !llvm.loop !831

middle.block485:                                  ; preds = %vector.body478
  %cmp.n486 = icmp eq i64 %i.gq, %n.vec477
  br i1 %cmp.n486, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit, label %vec.epilog.iter.check491

vec.epilog.iter.check491:                         ; preds = %middle.block485
  %min.epilog.iters.check492 = icmp eq i64 %i.gw, 0
  br i1 %min.epilog.iters.check492, label %.lr.ph.i109.preheader, label %vec.epilog.ph493, !prof !78

vec.epilog.ph493:                                 ; preds = %vector.main.loop.iter.check474, %vec.epilog.iter.check491
  %vec.epilog.resume.val487 = phi i64 [ %n.vec477, %vec.epilog.iter.check491 ], [ 0, %vector.main.loop.iter.check474 ]
  %n.vec494 = and i64 %i.gq, -8                   ; 4 uses
  %i.hc = getelementptr i8, ptr %i.gn, i64 %n.vec494
  %i.hd = getelementptr i8, ptr %1, i64 %n.vec494
  br label %vec.epilog.vector.body495

vec.epilog.vector.body495:                        ; preds = %vec.epilog.vector.body495, %vec.epilog.ph493
  %index496 = phi i64 [ %vec.epilog.resume.val487, %vec.epilog.ph493 ], [ %index.next500, %vec.epilog.vector.body495 ] ; 3 uses
  %next.gep497 = getelementptr i8, ptr %i.gn, i64 %index496
  %next.gep498 = getelementptr i8, ptr %1, i64 %index496
  %wide.load499 = load <8 x i8>, ptr %next.gep498, align 1, !tbaa !51
  store <8 x i8> %wide.load499, ptr %next.gep497, align 1, !tbaa !51
  %index.next500 = add nuw i64 %index496, 8       ; 2 uses
  %i.he = icmp eq i64 %index.next500, %n.vec494
  br i1 %i.he, label %vec.epilog.middle.block501, label %vec.epilog.vector.body495, !llvm.loop !832

vec.epilog.middle.block501:                       ; preds = %vec.epilog.vector.body495
  %cmp.n502 = icmp eq i64 %i.gq, %n.vec494
  br i1 %cmp.n502, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit, label %.lr.ph.i109.preheader

.lr.ph.i109.preheader:                            ; preds = %iter.check489, %vector.memcheck471, %vec.epilog.iter.check491, %vec.epilog.middle.block501
  %.0711.i110.ph = phi ptr [ %i.gn, %iter.check489 ], [ %i.gn, %vector.memcheck471 ], [ %i.gx, %vec.epilog.iter.check491 ], [ %i.hc, %vec.epilog.middle.block501 ] ; 2 uses
  %.0810.i111.ph = phi ptr [ %1, %iter.check489 ], [ %1, %vector.memcheck471 ], [ %i.gy, %vec.epilog.iter.check491 ], [ %i.hd, %vec.epilog.middle.block501 ] ; 3 uses
  %i.hf = add i64 %i.r, %i.av                     ; 2 uses
  %i.hg = add i64 %i.hf, 1
  %.0810.i111.ph571 = ptrtoaddr ptr %.0810.i111.ph to i64 ; 2 uses
  %i.hh = sub i64 %i.hg, %.0810.i111.ph571
  %i.hi = sub i64 %i.hf, %.0810.i111.ph571
  %xtraiter572 = and i64 %i.hh, 7                 ; 2 uses
  %lcmp.mod573.not = icmp eq i64 %xtraiter572, 0
  br i1 %lcmp.mod573.not, label %.lr.ph.i109.prol.loopexit, label %.lr.ph.i109.prol

.lr.ph.i109.prol:                                 ; preds = %.lr.ph.i109.preheader, %.lr.ph.i109.prol
  %.0711.i110.prol = phi ptr [ %i.hk, %.lr.ph.i109.prol ], [ %.0711.i110.ph, %.lr.ph.i109.preheader ] ; 2 uses
  %.0810.i111.prol = phi ptr [ %i.hl, %.lr.ph.i109.prol ], [ %.0810.i111.ph, %.lr.ph.i109.preheader ] ; 2 uses
  %prol.iter574 = phi i64 [ %prol.iter574.next, %.lr.ph.i109.prol ], [ 0, %.lr.ph.i109.preheader ]
  %i.hj = load i8, ptr %.0810.i111.prol, align 1, !tbaa !51
  store i8 %i.hj, ptr %.0711.i110.prol, align 1, !tbaa !51
  %i.hk = getelementptr inbounds nuw i8, ptr %.0711.i110.prol, i64 1 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.0810.i111.prol, i64 1 ; 2 uses
  %prol.iter574.next = add i64 %prol.iter574, 1   ; 2 uses
  %prol.iter574.cmp.not = icmp eq i64 %prol.iter574.next, %xtraiter572
  br i1 %prol.iter574.cmp.not, label %.lr.ph.i109.prol.loopexit, label %.lr.ph.i109.prol, !llvm.loop !833

.lr.ph.i109.prol.loopexit:                        ; preds = %.lr.ph.i109.prol, %.lr.ph.i109.preheader
  %.0711.i110.unr = phi ptr [ %.0711.i110.ph, %.lr.ph.i109.preheader ], [ %i.hk, %.lr.ph.i109.prol ]
  %.0810.i111.unr = phi ptr [ %.0810.i111.ph, %.lr.ph.i109.preheader ], [ %i.hl, %.lr.ph.i109.prol ]
  %i.hm = icmp ult i64 %i.hi, 7
  br i1 %i.hm, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit, label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %.lr.ph.i109.prol.loopexit, %.lr.ph.i109
  %.0711.i110 = phi ptr [ %i.ij, %.lr.ph.i109 ], [ %.0711.i110.unr, %.lr.ph.i109.prol.loopexit ] ; 9 uses
  %.0810.i111 = phi ptr [ %i.ik, %.lr.ph.i109 ], [ %.0810.i111.unr, %.lr.ph.i109.prol.loopexit ] ; 9 uses
  %i.hn = load i8, ptr %.0810.i111, align 1, !tbaa !51
  store i8 %i.hn, ptr %.0711.i110, align 1, !tbaa !51
  %i.ho = getelementptr inbounds nuw i8, ptr %.0711.i110, i64 1
  %i.hp = getelementptr inbounds nuw i8, ptr %.0810.i111, i64 1
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !51
  store i8 %i.hq, ptr %i.ho, align 1, !tbaa !51
  %i.hr = getelementptr inbounds nuw i8, ptr %.0711.i110, i64 2
  %i.hs = getelementptr inbounds nuw i8, ptr %.0810.i111, i64 2
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !51
  store i8 %i.ht, ptr %i.hr, align 1, !tbaa !51
  %i.hu = getelementptr inbounds nuw i8, ptr %.0711.i110, i64 3
  %i.hv = getelementptr inbounds nuw i8, ptr %.0810.i111, i64 3
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !51
  store i8 %i.hw, ptr %i.hu, align 1, !tbaa !51
  %i.hx = getelementptr inbounds nuw i8, ptr %.0711.i110, i64 4
  %i.hy = getelementptr inbounds nuw i8, ptr %.0810.i111, i64 4
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !51
  store i8 %i.hz, ptr %i.hx, align 1, !tbaa !51
  %i.ia = getelementptr inbounds nuw i8, ptr %.0711.i110, i64 5
  %i.ib = getelementptr inbounds nuw i8, ptr %.0810.i111, i64 5
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !51
  store i8 %i.ic, ptr %i.ia, align 1, !tbaa !51
  %i.id = getelementptr inbounds nuw i8, ptr %.0711.i110, i64 6
  %i.ie = getelementptr inbounds nuw i8, ptr %.0810.i111, i64 6
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !51
  store i8 %i.if, ptr %i.id, align 1, !tbaa !51
  %i.ig = getelementptr inbounds nuw i8, ptr %.0711.i110, i64 7
  %i.ih = getelementptr inbounds nuw i8, ptr %.0810.i111, i64 7 ; 2 uses
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !51
  store i8 %i.ii, ptr %i.ig, align 1, !tbaa !51
  %i.ij = getelementptr inbounds nuw i8, ptr %.0711.i110, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %.0810.i111, i64 8
  %.not.i112.7 = icmp eq ptr %i.ih, %i.dy
  br i1 %.not.i112.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit, label %.lr.ph.i109, !llvm.loop !834

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit: ; preds = %.lr.ph.i109.prol.loopexit, %.lr.ph.i109, %middle.block485, %vec.epilog.middle.block501, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit
  %i.il = load ptr, ptr %2, align 8, !tbaa !69    ; 10 uses
  %i.im = ptrtoaddr ptr %i.il to i64              ; 3 uses
  %.not2.i115 = icmp eq ptr %i.il, %i.dv
  br i1 %.not2.i115, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyINS_7movelib16reverse_iteratorIPcEES8_EEvT_SA_T0_.exit, label %iter.check532

iter.check532:                                    ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit
  %i.in = add i64 %i.r, %i.av
  %i.io = add i64 %i.in, %i.im
  %i.ip = add i64 %i.io, 1
  %i.iq = add i64 %i.h, %i.dt
  %i.ir = sub i64 %i.ip, %i.iq                    ; 7 uses
  %min.iters.check510 = icmp ult i64 %i.ir, 8
  br i1 %min.iters.check510, label %.lr.ph.i116.preheader, label %vector.memcheck511

vector.memcheck511:                               ; preds = %iter.check532
  %i.is = add i64 %i.r, %i.av
  %i.it = add i64 %i.is, %i.im
  %i.iu = add i64 %i.it, 1
  %i.iv = add i64 %i.h, %i.dt
  %i.iw = sub i64 %i.iu, %i.iv
  %i.ix = getelementptr i8, ptr %1, i64 %i.iw
  %i.iy = add i64 %i.h, %i.dt
  %i.iz = xor i64 %i.r, -1
  %i.ja = add i64 %i.iy, %i.iz
  %i.jb = add i64 %i.av, %i.im
  %i.jc = sub i64 %i.ja, %i.jb
  %i.jd = getelementptr i8, ptr %i.il, i64 %i.jc
  %bound0512 = icmp ult ptr %1, %i.il
  %bound1513 = icmp ult ptr %i.jd, %i.ix
  %found.conflict514 = and i1 %bound0512, %bound1513
  br i1 %found.conflict514, label %.lr.ph.i116.preheader, label %vector.main.loop.iter.check515

vector.main.loop.iter.check515:                   ; preds = %vector.memcheck511
  %min.iters.check516 = icmp ult i64 %i.ir, 32
  br i1 %min.iters.check516, label %vec.epilog.ph536, label %vector.ph517

vector.ph517:                                     ; preds = %vector.main.loop.iter.check515
  %i.je = and i64 %i.ir, 24
  %n.vec518 = and i64 %i.ir, -32                  ; 5 uses
  %i.jf = sub i64 0, %n.vec518
  %i.jg = getelementptr i8, ptr %i.il, i64 %i.jf
  %i.jh = getelementptr i8, ptr %1, i64 %n.vec518
  br label %vector.body519

vector.body519:                                   ; preds = %vector.ph517, %vector.body519
  %index520 = phi i64 [ 0, %vector.ph517 ], [ %index.next527, %vector.body519 ] ; 3 uses
  %i.ji = sub i64 0, %index520
  %next.gep521 = getelementptr i8, ptr %i.il, i64 %i.ji ; 2 uses
  %next.gep522 = getelementptr i8, ptr %1, i64 %index520 ; 2 uses
  %i.jj = getelementptr inbounds i8, ptr %next.gep521, i64 -16
  %i.jk = getelementptr inbounds i8, ptr %next.gep521, i64 -32
  %wide.load523 = load <16 x i8>, ptr %i.jj, align 1, !tbaa !51, !alias.scope !867
  %wide.load524 = load <16 x i8>, ptr %i.jk, align 1, !tbaa !51, !alias.scope !867
  %reverse525 = shufflevector <16 x i8> %wide.load523, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse526 = shufflevector <16 x i8> %wide.load524, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.jl = getelementptr i8, ptr %next.gep522, i64 16
  store <16 x i8> %reverse525, ptr %next.gep522, align 1, !tbaa !51, !alias.scope !868, !noalias !867
  store <16 x i8> %reverse526, ptr %i.jl, align 1, !tbaa !51, !alias.scope !868, !noalias !867
  %index.next527 = add nuw i64 %index520, 32      ; 2 uses
  %i.jm = icmp eq i64 %index.next527, %n.vec518
  br i1 %i.jm, label %middle.block528, label %vector.body519, !llvm.loop !838

middle.block528:                                  ; preds = %vector.body519
  %cmp.n529 = icmp eq i64 %i.ir, %n.vec518
  br i1 %cmp.n529, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyINS_7movelib16reverse_iteratorIPcEES8_EEvT_SA_T0_.exit, label %vec.epilog.iter.check534

vec.epilog.iter.check534:                         ; preds = %middle.block528
  %min.epilog.iters.check535 = icmp eq i64 %i.je, 0
  br i1 %min.epilog.iters.check535, label %.lr.ph.i116.preheader, label %vec.epilog.ph536, !prof !78

vec.epilog.ph536:                                 ; preds = %vector.main.loop.iter.check515, %vec.epilog.iter.check534
  %vec.epilog.resume.val530 = phi i64 [ %n.vec518, %vec.epilog.iter.check534 ], [ 0, %vector.main.loop.iter.check515 ]
  %n.vec537 = and i64 %i.ir, -8                   ; 4 uses
  %i.jn = sub i64 0, %n.vec537
end_hunk_5
begin_hunk_6_@_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6insertIPKcEEPcS7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE:bb.a
  %.0711.i.pn.ph = phi ptr [ %i.av, %iter.check337 ], [ %i.az, %vec.epilog.iter.check339 ], [ %i.bg, %vec.epilog.middle.block349 ]
  %.0810.i.pn.ph = phi ptr [ %i.ax, %iter.check337 ], [ %i.ba, %vec.epilog.iter.check339 ], [ %i.bh, %vec.epilog.middle.block349 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0711.i.pn = phi ptr [ %.0711.i, %.lr.ph.i ], [ %.0711.i.pn.ph, %.lr.ph.i.preheader ]
  %.0810.i.pn = phi ptr [ %.0810.i, %.lr.ph.i ], [ %.0810.i.pn.ph, %.lr.ph.i.preheader ]
  %.0711.i = getelementptr i8, ptr %.0711.i.pn, i64 1 ; 2 uses
  %.0810.i = getelementptr i8, ptr %.0810.i.pn, i64 1 ; 3 uses
  %i.bl = load i8, ptr %.0810.i, align 1, !tbaa !51
  store i8 %i.bl, ptr %.0711.i, align 1, !tbaa !51
  %.not.i = icmp eq ptr %.0810.i, %i.av
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !878

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
  %wide.load364 = load <16 x i8>, ptr %next.gep363, align 1, !tbaa !51
  %wide.load365 = load <16 x i8>, ptr %i.cd, align 1, !tbaa !51
  %i.ce = getelementptr i8, ptr %next.gep362, i64 16
  store <16 x i8> %wide.load364, ptr %next.gep362, align 1, !tbaa !51
  store <16 x i8> %wide.load365, ptr %i.ce, align 1, !tbaa !51
  %index.next366 = add nuw i64 %index361, 32      ; 2 uses
  %i.cf = icmp eq i64 %index.next366, %n.vec359
  br i1 %i.cf, label %middle.block367, label %vector.body360, !llvm.loop !879

middle.block367:                                  ; preds = %vector.body360
  %cmp.n368 = icmp eq i64 %i.by, %n.vec359
  br i1 %cmp.n368, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit, label %vec.epilog.iter.check373

vec.epilog.iter.check373:                         ; preds = %middle.block367
  %min.epilog.iters.check374 = icmp eq i64 %i.ca, 0
  br i1 %min.epilog.iters.check374, label %.lr.ph.i120.preheader, label %vec.epilog.ph375, !prof !78

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
  %wide.load381 = load <8 x i8>, ptr %next.gep380, align 1, !tbaa !51
  store <8 x i8> %wide.load381, ptr %next.gep379, align 1, !tbaa !51
  %index.next382 = add nuw i64 %index378, 8       ; 2 uses
  %i.ci = icmp eq i64 %index.next382, %n.vec376
  br i1 %i.ci, label %vec.epilog.middle.block383, label %vec.epilog.vector.body377, !llvm.loop !880

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
  %i.ck = load i8, ptr %.0810.i122.prol, align 1, !tbaa !51
  store i8 %i.ck, ptr %.0711.i121.prol, align 1, !tbaa !51
  %i.cl = getelementptr inbounds nuw i8, ptr %.0711.i121.prol, i64 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0810.i122.prol, i64 1 ; 2 uses
  %prol.iter438.next = add i64 %prol.iter438, 1   ; 2 uses
  %prol.iter438.cmp.not = icmp eq i64 %prol.iter438.next, %xtraiter436
  br i1 %prol.iter438.cmp.not, label %.lr.ph.i120.prol.loopexit, label %.lr.ph.i120.prol, !llvm.loop !881

.lr.ph.i120.prol.loopexit:                        ; preds = %.lr.ph.i120.prol, %.lr.ph.i120.preheader
  %.0711.i121.unr = phi ptr [ %.0711.i121.ph, %.lr.ph.i120.preheader ], [ %i.cl, %.lr.ph.i120.prol ]
  %.0810.i122.unr = phi ptr [ %.0810.i122.ph, %.lr.ph.i120.preheader ], [ %i.cm, %.lr.ph.i120.prol ]
  %i.cn = sub i64 %.0810.i122.ph435, %i.i
  %i.co = icmp ugt i64 %i.cn, -8
  br i1 %i.co, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit, label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %.lr.ph.i120.prol.loopexit, %.lr.ph.i120
  %.0711.i121 = phi ptr [ %i.dl, %.lr.ph.i120 ], [ %.0711.i121.unr, %.lr.ph.i120.prol.loopexit ] ; 9 uses
  %.0810.i122 = phi ptr [ %i.dm, %.lr.ph.i120 ], [ %.0810.i122.unr, %.lr.ph.i120.prol.loopexit ] ; 9 uses
  %i.cp = load i8, ptr %.0810.i122, align 1, !tbaa !51
  store i8 %i.cp, ptr %.0711.i121, align 1, !tbaa !51
  %i.cq = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !51
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !51
  %i.ct = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 2
  %i.cu = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 2
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !51
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !51
  %i.cw = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 3
  %i.cx = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 3
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !51
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !51
  %i.cz = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 4
  %i.db = load i8, ptr %i.da, align 1, !tbaa !51
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !51
  %i.dc = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 5
  %i.dd = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 5
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !51
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !51
  %i.df = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 6
  %i.dg = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 6
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !51
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !51
  %i.di = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 7
  %i.dj = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 7
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !51
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !51
  %i.dl = getelementptr inbounds nuw i8, ptr %.0711.i121, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.0810.i122, i64 8 ; 2 uses
  %.not.i123.7 = icmp eq ptr %i.dm, %3
  br i1 %.not.i123.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit, label %.lr.ph.i120, !llvm.loop !882

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit: ; preds = %.lr.ph.i120.prol.loopexit, %.lr.ph.i120, %middle.block367, %vec.epilog.middle.block383, %bb.k
  %i.dn = sub nuw i64 %i.k, %i.au
  %i.do = add i64 %i.dn, %i.p                     ; 3 uses
  %i.dp = load i8, ptr %0, align 8, !tbaa !51
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
  %wide.load398 = load <16 x i8>, ptr %next.gep397, align 1, !tbaa !51
  %wide.load399 = load <16 x i8>, ptr %i.ek, align 1, !tbaa !51
  %i.el = getelementptr i8, ptr %next.gep396, i64 16
  store <16 x i8> %wide.load398, ptr %next.gep396, align 1, !tbaa !51
  store <16 x i8> %wide.load399, ptr %i.el, align 1, !tbaa !51
  %index.next400 = add nuw i64 %index395, 32      ; 2 uses
  %i.em = icmp eq i64 %index.next400, %n.vec393
  br i1 %i.em, label %middle.block401, label %vector.body394, !llvm.loop !883

middle.block401:                                  ; preds = %vector.body394
  %cmp.n402 = icmp eq i64 %i.eb, %n.vec393
  br i1 %cmp.n402, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyEPKcS6_Pc.exit134, label %vec.epilog.iter.check407

vec.epilog.iter.check407:                         ; preds = %middle.block401
  %min.epilog.iters.check408 = icmp eq i64 %i.eh, 0
  br i1 %min.epilog.iters.check408, label %.lr.ph.i127.preheader, label %vec.epilog.ph409, !prof !78

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
  %wide.load415 = load <8 x i8>, ptr %next.gep414, align 1, !tbaa !51
  store <8 x i8> %wide.load415, ptr %next.gep413, align 1, !tbaa !51
  %index.next416 = add nuw i64 %index412, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next416, %n.vec410
  br i1 %i.ep, label %vec.epilog.middle.block417, label %vec.epilog.vector.body411, !llvm.loop !884

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
  %i.eu = load i8, ptr %.0810.i129.prol, align 1, !tbaa !51
  store i8 %i.eu, ptr %.0711.i128.prol, align 1, !tbaa !51
  %i.ev = getelementptr inbounds nuw i8, ptr %.0711.i128.prol, i64 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.0810.i129.prol, i64 1 ; 2 uses
  %prol.iter442.next = add i64 %prol.iter442, 1   ; 2 uses
  %prol.iter442.cmp.not = icmp eq i64 %prol.iter442.next, %xtraiter440
  br i1 %prol.iter442.cmp.not, label %.lr.ph.i127.prol.loopexit, label %.lr.ph.i127.prol, !llvm.loop !885

.lr.ph.i127.prol.loopexit:                        ; preds = %.lr.ph.i127.prol, %.lr.ph.i127.preheader
  %.0711.i128.unr = phi ptr [ %.0711.i128.ph, %.lr.ph.i127.preheader ], [ %i.ev, %.lr.ph.i127.prol ]
  %.0810.i129.unr = phi ptr [ %.0810.i129.ph, %.lr.ph.i127.preheader ], [ %i.ew, %.lr.ph.i127.prol ]
  %i.ex = icmp ult i64 %i.et, 7
  br i1 %i.ex, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyEPKcS6_Pc.exit134, label %.lr.ph.i127

.lr.ph.i127:                                      ; preds = %.lr.ph.i127.prol.loopexit, %.lr.ph.i127
  %.0711.i128 = phi ptr [ %i.fu, %.lr.ph.i127 ], [ %.0711.i128.unr, %.lr.ph.i127.prol.loopexit ] ; 9 uses
  %.0810.i129 = phi ptr [ %i.fv, %.lr.ph.i127 ], [ %.0810.i129.unr, %.lr.ph.i127.prol.loopexit ] ; 9 uses
  %i.ey = load i8, ptr %.0810.i129, align 1, !tbaa !51
  store i8 %i.ey, ptr %.0711.i128, align 1, !tbaa !51
  %i.ez = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 1
  %i.fa = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !51
  store i8 %i.fb, ptr %i.ez, align 1, !tbaa !51
  %i.fc = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 2
  %i.fd = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 2
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !51
  store i8 %i.fe, ptr %i.fc, align 1, !tbaa !51
  %i.ff = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 3
  %i.fg = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 3
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !51
  store i8 %i.fh, ptr %i.ff, align 1, !tbaa !51
  %i.fi = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 4
  %i.fj = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 4
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !51
  store i8 %i.fk, ptr %i.fi, align 1, !tbaa !51
  %i.fl = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 5
  %i.fm = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 5
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !51
  store i8 %i.fn, ptr %i.fl, align 1, !tbaa !51
  %i.fo = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 6
  %i.fp = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 6
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !51
  store i8 %i.fq, ptr %i.fo, align 1, !tbaa !51
  %i.fr = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 7
  %i.fs = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 7 ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !51
  store i8 %i.ft, ptr %i.fr, align 1, !tbaa !51
  %i.fu = getelementptr inbounds nuw i8, ptr %.0711.i128, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %.0810.i129, i64 8
  %.not.i130.7 = icmp eq ptr %i.fs, %i.bs
  br i1 %.not.i130.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyEPKcS6_Pc.exit134, label %.lr.ph.i127, !llvm.loop !886

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyEPKcS6_Pc.exit134: ; preds = %.lr.ph.i127.prol.loopexit, %.lr.ph.i127, %middle.block401, %vec.epilog.middle.block417, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit, %bb.j, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit
  %.sink = phi i64 [ %i.k, %bb.j ], [ %i.k, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit ], [ %i.bq, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit ], [ %i.bq, %middle.block401 ], [ %i.bq, %vec.epilog.middle.block417 ], [ %i.bq, %.lr.ph.i127 ], [ %i.bq, %.lr.ph.i127.prol.loopexit ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %.sink, i1 false)
  %.0108 = add i64 %i.p, %i.k                     ; 3 uses
  %i.fw = load i8, ptr %0, align 8, !tbaa !51
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
  store i8 0, ptr %i.gf, align 1, !tbaa !51
  %.pre179.pre = load i8, ptr %0, align 8, !tbaa !51
  %.pre180.pre = load ptr, ptr %i.f, align 8
  br label %bb.v

bb.p:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE12next_storageEmm.exit
  %i.gg = load ptr, ptr %i.b, align 8, !tbaa !77
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
  %wide.load230 = load <16 x i8>, ptr %next.gep229, align 1, !tbaa !51
  %wide.load231 = load <16 x i8>, ptr %i.gn, align 1, !tbaa !51
  %i.go = getelementptr i8, ptr %next.gep228, i64 16
  store <16 x i8> %wide.load230, ptr %next.gep228, align 1, !tbaa !51
  store <16 x i8> %wide.load231, ptr %i.go, align 1, !tbaa !51
  %index.next232 = add nuw i64 %index227, 32      ; 2 uses
  %i.gp = icmp eq i64 %index.next232, %n.vec225
  br i1 %i.gp, label %middle.block233, label %vector.body226, !llvm.loop !887

middle.block233:                                  ; preds = %vector.body226
  %cmp.n234 = icmp eq i64 %i.gi, %n.vec225
end_hunk_6
begin_hunk_7_@_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6insertIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcS3_SaIcEEEEEEES8_PKcT_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS0_3dtl17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESP_E4typeE:bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 3
  %i.co = getelementptr inbounds nuw i8, ptr %.07.i, i64 3
  %i.cp = load i8, ptr %i.cn, align 1, !tbaa !51
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !51
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %.07.i, i64 4
  %i.cs = load i8, ptr %i.cq, align 1, !tbaa !51
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !51
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 5
  %i.cu = getelementptr inbounds nuw i8, ptr %.07.i, i64 5
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !51
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !51
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 6
  %i.cx = getelementptr inbounds nuw i8, ptr %.07.i, i64 6
  %i.cy = load i8, ptr %i.cw, align 1, !tbaa !51
  store i8 %i.cy, ptr %i.cx, align 1, !tbaa !51
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 7
  %i.da = getelementptr inbounds nuw i8, ptr %.07.i, i64 7
  %i.db = load i8, ptr %i.cz, align 1, !tbaa !51
  store i8 %i.db, ptr %i.da, align 1, !tbaa !51
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %.not.i115.7 = icmp eq ptr %i.dc, %3
  br i1 %.not.i115.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcS3_SaIcEEEEES8_EEvT_SE_T0_.exit, label %.lr.ph.i114, !llvm.loop !915

bb.k:                                             ; preds = %bb.i
  %i.de = getelementptr i8, ptr %2, i64 %i.au     ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 1      ; 6 uses
  %i.dg = getelementptr i8, ptr %i.w, i64 %i.p    ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 1      ; 6 uses
  %.not7.i = icmp eq ptr %i.df, %3
  br i1 %.not7.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcS3_SaIcEEEEES8_EEmT_SE_T0_.exit, label %iter.check407

iter.check407:                                    ; preds = %bb.k
  %i.di = add i64 %i.h, %i.i
  %i.dj = xor i64 %i.p, -1
  %i.dk = add i64 %i.di, %i.dj
  %i.dl = add i64 %i.at, %i.j
  %i.dm = sub i64 %i.dk, %i.dl                    ; 7 uses
  %min.iters.check391 = icmp ult i64 %i.dm, 8
  %i.dn = sub i64 %i.j, %i.h
  %diff.check390 = icmp ugt i64 %i.dn, -32
  %or.cond491 = or i1 %min.iters.check391, %diff.check390
  br i1 %or.cond491, label %.lr.ph.i116.preheader, label %vector.main.loop.iter.check392

vector.main.loop.iter.check392:                   ; preds = %iter.check407
  %min.iters.check393 = icmp ult i64 %i.dm, 32
  br i1 %min.iters.check393, label %vec.epilog.ph411, label %vector.ph394

vector.ph394:                                     ; preds = %vector.main.loop.iter.check392
  %i.do = and i64 %i.dm, 24
  %n.vec395 = and i64 %i.dm, -32                  ; 5 uses
  %i.dp = getelementptr i8, ptr %i.dh, i64 %n.vec395
  %i.dq = getelementptr i8, ptr %i.df, i64 %n.vec395
  br label %vector.body396

vector.body396:                                   ; preds = %vector.ph394, %vector.body396
  %index397 = phi i64 [ 0, %vector.ph394 ], [ %index.next402, %vector.body396 ] ; 3 uses
  %next.gep398 = getelementptr i8, ptr %i.dh, i64 %index397 ; 2 uses
  %next.gep399 = getelementptr i8, ptr %i.df, i64 %index397 ; 2 uses
  %i.dr = getelementptr i8, ptr %next.gep399, i64 16
  %wide.load400 = load <16 x i8>, ptr %next.gep399, align 1, !tbaa !51
  %wide.load401 = load <16 x i8>, ptr %i.dr, align 1, !tbaa !51
  %i.ds = getelementptr i8, ptr %next.gep398, i64 16
  store <16 x i8> %wide.load400, ptr %next.gep398, align 1, !tbaa !51
  store <16 x i8> %wide.load401, ptr %i.ds, align 1, !tbaa !51
  %index.next402 = add nuw i64 %index397, 32      ; 2 uses
  %i.dt = icmp eq i64 %index.next402, %n.vec395
  br i1 %i.dt, label %middle.block403, label %vector.body396, !llvm.loop !916

middle.block403:                                  ; preds = %vector.body396
  %cmp.n404 = icmp eq i64 %i.dm, %n.vec395
  br i1 %cmp.n404, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcS3_SaIcEEEEES8_EEmT_SE_T0_.exit, label %vec.epilog.iter.check409

vec.epilog.iter.check409:                         ; preds = %middle.block403
  %min.epilog.iters.check410 = icmp eq i64 %i.do, 0
  br i1 %min.epilog.iters.check410, label %.lr.ph.i116.preheader, label %vec.epilog.ph411, !prof !78

vec.epilog.ph411:                                 ; preds = %vector.main.loop.iter.check392, %vec.epilog.iter.check409
  %vec.epilog.resume.val405 = phi i64 [ %n.vec395, %vec.epilog.iter.check409 ], [ 0, %vector.main.loop.iter.check392 ]
  %n.vec412 = and i64 %i.dm, -8                   ; 4 uses
  %i.du = getelementptr i8, ptr %i.dh, i64 %n.vec412
  %i.dv = getelementptr i8, ptr %i.df, i64 %n.vec412
  br label %vec.epilog.vector.body413

vec.epilog.vector.body413:                        ; preds = %vec.epilog.vector.body413, %vec.epilog.ph411
  %index414 = phi i64 [ %vec.epilog.resume.val405, %vec.epilog.ph411 ], [ %index.next418, %vec.epilog.vector.body413 ] ; 3 uses
  %next.gep415 = getelementptr i8, ptr %i.dh, i64 %index414
  %next.gep416 = getelementptr i8, ptr %i.df, i64 %index414
  %wide.load417 = load <8 x i8>, ptr %next.gep416, align 1, !tbaa !51
  store <8 x i8> %wide.load417, ptr %next.gep415, align 1, !tbaa !51
  %index.next418 = add nuw i64 %index414, 8       ; 2 uses
  %i.dw = icmp eq i64 %index.next418, %n.vec412
  br i1 %i.dw, label %vec.epilog.middle.block419, label %vec.epilog.vector.body413, !llvm.loop !917

vec.epilog.middle.block419:                       ; preds = %vec.epilog.vector.body413
  %cmp.n420 = icmp eq i64 %i.dm, %n.vec412
  br i1 %cmp.n420, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcS3_SaIcEEEEES8_EEmT_SE_T0_.exit, label %.lr.ph.i116.preheader

.lr.ph.i116.preheader:                            ; preds = %iter.check407, %vec.epilog.iter.check409, %vec.epilog.middle.block419
  %.039.i.ph = phi ptr [ %i.dh, %iter.check407 ], [ %i.dp, %vec.epilog.iter.check409 ], [ %i.du, %vec.epilog.middle.block419 ] ; 2 uses
  %.sroa.04.08.i.ph = phi ptr [ %i.df, %iter.check407 ], [ %i.dq, %vec.epilog.iter.check409 ], [ %i.dv, %vec.epilog.middle.block419 ] ; 3 uses
  %.sroa.04.08.i.ph512 = ptrtoaddr ptr %.sroa.04.08.i.ph to i64 ; 2 uses
  %i.dx = sub i64 %i.i, %.sroa.04.08.i.ph512
  %xtraiter513 = and i64 %i.dx, 7                 ; 2 uses
  %lcmp.mod514.not = icmp eq i64 %xtraiter513, 0
  br i1 %lcmp.mod514.not, label %.lr.ph.i116.prol.loopexit, label %.lr.ph.i116.prol

.lr.ph.i116.prol:                                 ; preds = %.lr.ph.i116.preheader, %.lr.ph.i116.prol
  %.039.i.prol = phi ptr [ %i.dz, %.lr.ph.i116.prol ], [ %.039.i.ph, %.lr.ph.i116.preheader ] ; 2 uses
  %.sroa.04.08.i.prol = phi ptr [ %i.ea, %.lr.ph.i116.prol ], [ %.sroa.04.08.i.ph, %.lr.ph.i116.preheader ] ; 2 uses
  %prol.iter515 = phi i64 [ %prol.iter515.next, %.lr.ph.i116.prol ], [ 0, %.lr.ph.i116.preheader ]
  %i.dy = load i8, ptr %.sroa.04.08.i.prol, align 1, !tbaa !51
  store i8 %i.dy, ptr %.039.i.prol, align 1, !tbaa !51
  %i.dz = getelementptr inbounds nuw i8, ptr %.039.i.prol, i64 1 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.prol, i64 1 ; 2 uses
  %prol.iter515.next = add i64 %prol.iter515, 1   ; 2 uses
  %prol.iter515.cmp.not = icmp eq i64 %prol.iter515.next, %xtraiter513
  br i1 %prol.iter515.cmp.not, label %.lr.ph.i116.prol.loopexit, label %.lr.ph.i116.prol, !llvm.loop !918

.lr.ph.i116.prol.loopexit:                        ; preds = %.lr.ph.i116.prol, %.lr.ph.i116.preheader
  %.039.i.unr = phi ptr [ %.039.i.ph, %.lr.ph.i116.preheader ], [ %i.dz, %.lr.ph.i116.prol ]
  %.sroa.04.08.i.unr = phi ptr [ %.sroa.04.08.i.ph, %.lr.ph.i116.preheader ], [ %i.ea, %.lr.ph.i116.prol ]
  %i.eb = sub i64 %.sroa.04.08.i.ph512, %i.i
  %i.ec = icmp ugt i64 %i.eb, -8
  br i1 %i.ec, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcS3_SaIcEEEEES8_EEmT_SE_T0_.exit, label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %.lr.ph.i116.prol.loopexit, %.lr.ph.i116
  %.039.i = phi ptr [ %i.ez, %.lr.ph.i116 ], [ %.039.i.unr, %.lr.ph.i116.prol.loopexit ] ; 9 uses
  %.sroa.04.08.i = phi ptr [ %i.fa, %.lr.ph.i116 ], [ %.sroa.04.08.i.unr, %.lr.ph.i116.prol.loopexit ] ; 9 uses
  %i.ed = load i8, ptr %.sroa.04.08.i, align 1, !tbaa !51
  store i8 %i.ed, ptr %.039.i, align 1, !tbaa !51
  %i.ee = getelementptr inbounds nuw i8, ptr %.039.i, i64 1
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !51
  store i8 %i.eg, ptr %i.ee, align 1, !tbaa !51
  %i.eh = getelementptr inbounds nuw i8, ptr %.039.i, i64 2
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 2
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !51
  store i8 %i.ej, ptr %i.eh, align 1, !tbaa !51
  %i.ek = getelementptr inbounds nuw i8, ptr %.039.i, i64 3
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 3
  %i.em = load i8, ptr %i.el, align 1, !tbaa !51
  store i8 %i.em, ptr %i.ek, align 1, !tbaa !51
  %i.en = getelementptr inbounds nuw i8, ptr %.039.i, i64 4
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 4
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !51
  store i8 %i.ep, ptr %i.en, align 1, !tbaa !51
  %i.eq = getelementptr inbounds nuw i8, ptr %.039.i, i64 5
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 5
  %i.es = load i8, ptr %i.er, align 1, !tbaa !51
  store i8 %i.es, ptr %i.eq, align 1, !tbaa !51
  %i.et = getelementptr inbounds nuw i8, ptr %.039.i, i64 6
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 6
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !51
  store i8 %i.ev, ptr %i.et, align 1, !tbaa !51
  %i.ew = getelementptr inbounds nuw i8, ptr %.039.i, i64 7
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 7
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !51
  store i8 %i.ey, ptr %i.ew, align 1, !tbaa !51
  %i.ez = getelementptr inbounds nuw i8, ptr %.039.i, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i117.7 = icmp eq ptr %i.fa, %3
  br i1 %.not.i117.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcS3_SaIcEEEEES8_EEmT_SE_T0_.exit, label %.lr.ph.i116, !llvm.loop !919

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcS3_SaIcEEEEES8_EEmT_SE_T0_.exit: ; preds = %.lr.ph.i116.prol.loopexit, %.lr.ph.i116, %middle.block403, %vec.epilog.middle.block419, %bb.k
  %i.fb = sub nuw i64 %i.k, %i.au
  %i.fc = add i64 %i.fb, %i.p                     ; 3 uses
  %i.fd = load i8, ptr %0, align 8, !tbaa !51
  %i.fe = trunc i8 %i.fd to i1
  br i1 %i.fe, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcS3_SaIcEEEEES8_EEmT_SE_T0_.exit
  %i.ff = trunc i64 %i.fc to i8
  %i.fg = shl i8 %i.ff, 1
  %i.fh = or disjoint i8 %i.fg, 1
  store i8 %i.fh, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcS3_SaIcEEEEES8_EEmT_SE_T0_.exit
  %i.fi = load i64, ptr %0, align 8
  %i.fj = shl i64 %i.fc, 1
  %i.fk = and i64 %i.fi, 1
  %i.fl = or disjoint i64 %i.fk, %i.fj
  store i64 %i.fl, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit: ; preds = %bb.l, %bb.m
  %.not9.i120 = icmp eq ptr %1, %i.dh
  br i1 %.not9.i120, label %iter.check475, label %iter.check441

iter.check441:                                    ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit
  %i.fm = getelementptr inbounds i8, ptr %i.w, i64 %i.fc ; 6 uses
  %i.fn = add i64 %i.p, %i.at
  %i.fo = add i64 %i.fn, 1
  %i.fp = sub i64 %i.fo, %i.h                     ; 7 uses
  %min.iters.check425 = icmp ult i64 %i.fp, 8
  br i1 %min.iters.check425, label %.lr.ph.i121.preheader, label %vector.memcheck423

vector.memcheck423:                               ; preds = %iter.check441
  %i.fq = add i64 %i.h, %i.at
  %i.fr = add i64 %i.fq, %i.i
  %i.fs = add i64 %i.at, %i.j
  %i.ft = add i64 %i.fs, %i.h
  %i.fu = sub i64 %i.ft, %i.fr
  %diff.check424 = icmp ugt i64 %i.fu, -32
  br i1 %diff.check424, label %.lr.ph.i121.preheader, label %vector.main.loop.iter.check426

vector.main.loop.iter.check426:                   ; preds = %vector.memcheck423
  %min.iters.check427 = icmp ult i64 %i.fp, 32
  br i1 %min.iters.check427, label %vec.epilog.ph445, label %vector.ph428

vector.ph428:                                     ; preds = %vector.main.loop.iter.check426
  %i.fv = and i64 %i.fp, 24
  %n.vec429 = and i64 %i.fp, -32                  ; 5 uses
  %i.fw = getelementptr i8, ptr %i.fm, i64 %n.vec429
  %i.fx = getelementptr i8, ptr %1, i64 %n.vec429
  br label %vector.body430

vector.body430:                                   ; preds = %vector.ph428, %vector.body430
  %index431 = phi i64 [ 0, %vector.ph428 ], [ %index.next436, %vector.body430 ] ; 3 uses
  %next.gep432 = getelementptr i8, ptr %i.fm, i64 %index431 ; 2 uses
  %next.gep433 = getelementptr i8, ptr %1, i64 %index431 ; 2 uses
  %i.fy = getelementptr i8, ptr %next.gep433, i64 16
  %wide.load434 = load <16 x i8>, ptr %next.gep433, align 1, !tbaa !51
  %wide.load435 = load <16 x i8>, ptr %i.fy, align 1, !tbaa !51
  %i.fz = getelementptr i8, ptr %next.gep432, i64 16
  store <16 x i8> %wide.load434, ptr %next.gep432, align 1, !tbaa !51
  store <16 x i8> %wide.load435, ptr %i.fz, align 1, !tbaa !51
  %index.next436 = add nuw i64 %index431, 32      ; 2 uses
  %i.ga = icmp eq i64 %index.next436, %n.vec429
  br i1 %i.ga, label %middle.block437, label %vector.body430, !llvm.loop !920

middle.block437:                                  ; preds = %vector.body430
  %cmp.n438 = icmp eq i64 %i.fp, %n.vec429
  br i1 %cmp.n438, label %iter.check475, label %vec.epilog.iter.check443

vec.epilog.iter.check443:                         ; preds = %middle.block437
  %min.epilog.iters.check444 = icmp eq i64 %i.fv, 0
  br i1 %min.epilog.iters.check444, label %.lr.ph.i121.preheader, label %vec.epilog.ph445, !prof !78

vec.epilog.ph445:                                 ; preds = %vector.main.loop.iter.check426, %vec.epilog.iter.check443
  %vec.epilog.resume.val439 = phi i64 [ %n.vec429, %vec.epilog.iter.check443 ], [ 0, %vector.main.loop.iter.check426 ]
  %n.vec446 = and i64 %i.fp, -8                   ; 4 uses
  %i.gb = getelementptr i8, ptr %i.fm, i64 %n.vec446
  %i.gc = getelementptr i8, ptr %1, i64 %n.vec446
  br label %vec.epilog.vector.body447

vec.epilog.vector.body447:                        ; preds = %vec.epilog.vector.body447, %vec.epilog.ph445
  %index448 = phi i64 [ %vec.epilog.resume.val439, %vec.epilog.ph445 ], [ %index.next452, %vec.epilog.vector.body447 ] ; 3 uses
  %next.gep449 = getelementptr i8, ptr %i.fm, i64 %index448
  %next.gep450 = getelementptr i8, ptr %1, i64 %index448
  %wide.load451 = load <8 x i8>, ptr %next.gep450, align 1, !tbaa !51
  store <8 x i8> %wide.load451, ptr %next.gep449, align 1, !tbaa !51
  %index.next452 = add nuw i64 %index448, 8       ; 2 uses
  %i.gd = icmp eq i64 %index.next452, %n.vec446
  br i1 %i.gd, label %vec.epilog.middle.block453, label %vec.epilog.vector.body447, !llvm.loop !921

vec.epilog.middle.block453:                       ; preds = %vec.epilog.vector.body447
  %cmp.n454 = icmp eq i64 %i.fp, %n.vec446
  br i1 %cmp.n454, label %iter.check475, label %.lr.ph.i121.preheader

.lr.ph.i121.preheader:                            ; preds = %iter.check441, %vector.memcheck423, %vec.epilog.iter.check443, %vec.epilog.middle.block453
  %.0711.i122.ph = phi ptr [ %i.fm, %iter.check441 ], [ %i.fm, %vector.memcheck423 ], [ %i.fw, %vec.epilog.iter.check443 ], [ %i.gb, %vec.epilog.middle.block453 ] ; 2 uses
  %.0810.i123.ph = phi ptr [ %1, %iter.check441 ], [ %1, %vector.memcheck423 ], [ %i.fx, %vec.epilog.iter.check443 ], [ %i.gc, %vec.epilog.middle.block453 ] ; 3 uses
  %i.ge = add i64 %i.p, %i.at                     ; 2 uses
  %i.gf = add i64 %i.ge, 1
  %.0810.i123.ph516 = ptrtoaddr ptr %.0810.i123.ph to i64 ; 2 uses
  %i.gg = sub i64 %i.gf, %.0810.i123.ph516
  %i.gh = sub i64 %i.ge, %.0810.i123.ph516
  %xtraiter517 = and i64 %i.gg, 7                 ; 2 uses
  %lcmp.mod518.not = icmp eq i64 %xtraiter517, 0
  br i1 %lcmp.mod518.not, label %.lr.ph.i121.prol.loopexit, label %.lr.ph.i121.prol

.lr.ph.i121.prol:                                 ; preds = %.lr.ph.i121.preheader, %.lr.ph.i121.prol
  %.0711.i122.prol = phi ptr [ %i.gj, %.lr.ph.i121.prol ], [ %.0711.i122.ph, %.lr.ph.i121.preheader ] ; 2 uses
  %.0810.i123.prol = phi ptr [ %i.gk, %.lr.ph.i121.prol ], [ %.0810.i123.ph, %.lr.ph.i121.preheader ] ; 2 uses
  %prol.iter519 = phi i64 [ %prol.iter519.next, %.lr.ph.i121.prol ], [ 0, %.lr.ph.i121.preheader ]
  %i.gi = load i8, ptr %.0810.i123.prol, align 1, !tbaa !51
  store i8 %i.gi, ptr %.0711.i122.prol, align 1, !tbaa !51
  %i.gj = getelementptr inbounds nuw i8, ptr %.0711.i122.prol, i64 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.0810.i123.prol, i64 1 ; 2 uses
  %prol.iter519.next = add i64 %prol.iter519, 1   ; 2 uses
  %prol.iter519.cmp.not = icmp eq i64 %prol.iter519.next, %xtraiter517
  br i1 %prol.iter519.cmp.not, label %.lr.ph.i121.prol.loopexit, label %.lr.ph.i121.prol, !llvm.loop !922

.lr.ph.i121.prol.loopexit:                        ; preds = %.lr.ph.i121.prol, %.lr.ph.i121.preheader
  %.0711.i122.unr = phi ptr [ %.0711.i122.ph, %.lr.ph.i121.preheader ], [ %i.gj, %.lr.ph.i121.prol ]
  %.0810.i123.unr = phi ptr [ %.0810.i123.ph, %.lr.ph.i121.preheader ], [ %i.gk, %.lr.ph.i121.prol ]
  %i.gl = icmp ult i64 %i.gh, 7
  br i1 %i.gl, label %iter.check475, label %.lr.ph.i121

.lr.ph.i121:                                      ; preds = %.lr.ph.i121.prol.loopexit, %.lr.ph.i121
  %.0711.i122 = phi ptr [ %i.hi, %.lr.ph.i121 ], [ %.0711.i122.unr, %.lr.ph.i121.prol.loopexit ] ; 9 uses
  %.0810.i123 = phi ptr [ %i.hj, %.lr.ph.i121 ], [ %.0810.i123.unr, %.lr.ph.i121.prol.loopexit ] ; 9 uses
  %i.gm = load i8, ptr %.0810.i123, align 1, !tbaa !51
  store i8 %i.gm, ptr %.0711.i122, align 1, !tbaa !51
  %i.gn = getelementptr inbounds nuw i8, ptr %.0711.i122, i64 1
  %i.go = getelementptr inbounds nuw i8, ptr %.0810.i123, i64 1
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !51
  store i8 %i.gp, ptr %i.gn, align 1, !tbaa !51
  %i.gq = getelementptr inbounds nuw i8, ptr %.0711.i122, i64 2
  %i.gr = getelementptr inbounds nuw i8, ptr %.0810.i123, i64 2
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !51
  store i8 %i.gs, ptr %i.gq, align 1, !tbaa !51
  %i.gt = getelementptr inbounds nuw i8, ptr %.0711.i122, i64 3
  %i.gu = getelementptr inbounds nuw i8, ptr %.0810.i123, i64 3
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !51
  store i8 %i.gv, ptr %i.gt, align 1, !tbaa !51
  %i.gw = getelementptr inbounds nuw i8, ptr %.0711.i122, i64 4
  %i.gx = getelementptr inbounds nuw i8, ptr %.0810.i123, i64 4
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !51
  store i8 %i.gy, ptr %i.gw, align 1, !tbaa !51
  %i.gz = getelementptr inbounds nuw i8, ptr %.0711.i122, i64 5
  %i.ha = getelementptr inbounds nuw i8, ptr %.0810.i123, i64 5
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !51
  store i8 %i.hb, ptr %i.gz, align 1, !tbaa !51
  %i.hc = getelementptr inbounds nuw i8, ptr %.0711.i122, i64 6
  %i.hd = getelementptr inbounds nuw i8, ptr %.0810.i123, i64 6
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !51
  store i8 %i.he, ptr %i.hc, align 1, !tbaa !51
  %i.hf = getelementptr inbounds nuw i8, ptr %.0711.i122, i64 7
  %i.hg = getelementptr inbounds nuw i8, ptr %.0810.i123, i64 7 ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !51
  store i8 %i.hh, ptr %i.hf, align 1, !tbaa !51
  %i.hi = getelementptr inbounds nuw i8, ptr %.0711.i122, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %.0810.i123, i64 8
  %.not.i124.7 = icmp eq ptr %i.hg, %i.dg
  br i1 %.not.i124.7, label %iter.check475, label %.lr.ph.i121, !llvm.loop !923

iter.check475:                                    ; preds = %.lr.ph.i121.prol.loopexit, %.lr.ph.i121, %middle.block437, %vec.epilog.middle.block453, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit
  %i.hk = add i64 %i.p, %i.at
  %i.hl = add i64 %i.hk, 1
  %i.hm = sub i64 %i.hl, %i.h                     ; 7 uses
  %min.iters.check459 = icmp ult i64 %i.hm, 8
  %i.hn = sub i64 %i.j, %i.h
  %diff.check458 = icmp ugt i64 %i.hn, -32
  %or.cond492 = or i1 %min.iters.check459, %diff.check458
  br i1 %or.cond492, label %.lr.ph.i128.preheader, label %vector.main.loop.iter.check460

vector.main.loop.iter.check460:                   ; preds = %iter.check475
  %min.iters.check461 = icmp ult i64 %i.hm, 32
  br i1 %min.iters.check461, label %vec.epilog.ph479, label %vector.ph462

vector.ph462:                                     ; preds = %vector.main.loop.iter.check460
  %i.ho = and i64 %i.hm, 24
  %n.vec463 = and i64 %i.hm, -32                  ; 5 uses
  %i.hp = getelementptr i8, ptr %1, i64 %n.vec463
  %i.hq = getelementptr i8, ptr %2, i64 %n.vec463
  br label %vector.body464

vector.body464:                                   ; preds = %vector.ph462, %vector.body464
  %index465 = phi i64 [ 0, %vector.ph462 ], [ %index.next470, %vector.body464 ] ; 3 uses
  %next.gep466 = getelementptr i8, ptr %1, i64 %index465 ; 2 uses
  %next.gep467 = getelementptr i8, ptr %2, i64 %index465 ; 2 uses
  %i.hr = getelementptr i8, ptr %next.gep467, i64 16
  %wide.load468 = load <16 x i8>, ptr %next.gep467, align 1, !tbaa !51
  %wide.load469 = load <16 x i8>, ptr %i.hr, align 1, !tbaa !51
  %i.hs = getelementptr i8, ptr %next.gep466, i64 16
  store <16 x i8> %wide.load468, ptr %next.gep466, align 1, !tbaa !51
  store <16 x i8> %wide.load469, ptr %i.hs, align 1, !tbaa !51
  %index.next470 = add nuw i64 %index465, 32      ; 2 uses
  %i.ht = icmp eq i64 %index.next470, %n.vec463
  br i1 %i.ht, label %middle.block471, label %vector.body464, !llvm.loop !924

middle.block471:                                  ; preds = %vector.body464
  %cmp.n472 = icmp eq i64 %i.hm, %n.vec463
  br i1 %cmp.n472, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcS3_SaIcEEEEES8_EEvT_SE_T0_.exit, label %vec.epilog.iter.check477

vec.epilog.iter.check477:                         ; preds = %middle.block471
  %min.epilog.iters.check478 = icmp eq i64 %i.ho, 0
  br i1 %min.epilog.iters.check478, label %.lr.ph.i128.preheader, label %vec.epilog.ph479, !prof !78

vec.epilog.ph479:                                 ; preds = %vector.main.loop.iter.check460, %vec.epilog.iter.check477
  %vec.epilog.resume.val473 = phi i64 [ %n.vec463, %vec.epilog.iter.check477 ], [ 0, %vector.main.loop.iter.check460 ]
  %n.vec480 = and i64 %i.hm, -8                   ; 4 uses
  %i.hu = getelementptr i8, ptr %1, i64 %n.vec480
  %i.hv = getelementptr i8, ptr %2, i64 %n.vec480
  br label %vec.epilog.vector.body481

vec.epilog.vector.body481:                        ; preds = %vec.epilog.vector.body481, %vec.epilog.ph479
  %index482 = phi i64 [ %vec.epilog.resume.val473, %vec.epilog.ph479 ], [ %index.next486, %vec.epilog.vector.body481 ] ; 3 uses
  %next.gep483 = getelementptr i8, ptr %1, i64 %index482
  %next.gep484 = getelementptr i8, ptr %2, i64 %index482
  %wide.load485 = load <8 x i8>, ptr %next.gep484, align 1, !tbaa !51
  store <8 x i8> %wide.load485, ptr %next.gep483, align 1, !tbaa !51
  %index.next486 = add nuw i64 %index482, 8       ; 2 uses
  %i.hw = icmp eq i64 %index.next486, %n.vec480
  br i1 %i.hw, label %vec.epilog.middle.block487, label %vec.epilog.vector.body481, !llvm.loop !925

vec.epilog.middle.block487:                       ; preds = %vec.epilog.vector.body481
  %cmp.n488 = icmp eq i64 %i.hm, %n.vec480
  br i1 %cmp.n488, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcS3_SaIcEEEEES8_EEvT_SE_T0_.exit, label %.lr.ph.i128.preheader

.lr.ph.i128.preheader:                            ; preds = %iter.check475, %vec.epilog.iter.check477, %vec.epilog.middle.block487
  %.07.i129.ph = phi ptr [ %1, %iter.check475 ], [ %i.hp, %vec.epilog.iter.check477 ], [ %i.hu, %vec.epilog.middle.block487 ]
  %.sroa.02.06.i130.ph = phi ptr [ %2, %iter.check475 ], [ %i.hq, %vec.epilog.iter.check477 ], [ %i.hv, %vec.epilog.middle.block487 ]
  br label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %.lr.ph.i128.preheader, %.lr.ph.i128
  %.07.i129 = phi ptr [ %i.hz, %.lr.ph.i128 ], [ %.07.i129.ph, %.lr.ph.i128.preheader ] ; 2 uses
  %.sroa.02.06.i130 = phi ptr [ %i.hy, %.lr.ph.i128 ], [ %.sroa.02.06.i130.ph, %.lr.ph.i128.preheader ] ; 3 uses
  %i.hx = load i8, ptr %.sroa.02.06.i130, align 1, !tbaa !51
  store i8 %i.hx, ptr %.07.i129, align 1, !tbaa !51
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i130, i64 1
end_hunk_7
begin_hunk_8_@_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEvE6insertIPcEES9_PKcT_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE:bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %.068.i, i64 3
  %i.cp = getelementptr inbounds nuw i8, ptr %.09.i, i64 3
  %i.cq = load i8, ptr %i.co, align 1, !tbaa !51
  store i8 %i.cq, ptr %i.cp, align 1, !tbaa !51
  %i.cr = getelementptr inbounds nuw i8, ptr %.068.i, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %.09.i, i64 4
  %i.ct = load i8, ptr %i.cr, align 1, !tbaa !51
  store i8 %i.ct, ptr %i.cs, align 1, !tbaa !51
  %i.cu = getelementptr inbounds nuw i8, ptr %.068.i, i64 5
  %i.cv = getelementptr inbounds nuw i8, ptr %.09.i, i64 5
  %i.cw = load i8, ptr %i.cu, align 1, !tbaa !51
  store i8 %i.cw, ptr %i.cv, align 1, !tbaa !51
  %i.cx = getelementptr inbounds nuw i8, ptr %.068.i, i64 6
  %i.cy = getelementptr inbounds nuw i8, ptr %.09.i, i64 6
  %i.cz = load i8, ptr %i.cx, align 1, !tbaa !51
  store i8 %i.cz, ptr %i.cy, align 1, !tbaa !51
  %i.da = getelementptr inbounds nuw i8, ptr %.068.i, i64 7
  %i.db = getelementptr inbounds nuw i8, ptr %.09.i, i64 7
  %i.dc = load i8, ptr %i.da, align 1, !tbaa !51
  store i8 %i.dc, ptr %i.db, align 1, !tbaa !51
  %i.dd = getelementptr inbounds nuw i8, ptr %.068.i, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %.not.i120.7 = icmp eq ptr %i.dd, %3
  br i1 %.not.i120.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEvE9priv_copyIPcS9_EEvT_SA_T0_.exit, label %.lr.ph.i119, !llvm.loop !1294

bb.k:                                             ; preds = %bb.i
  %i.df = getelementptr i8, ptr %2, i64 %i.av     ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 1      ; 6 uses
  %i.dh = getelementptr i8, ptr %i.x, i64 %i.q    ; 2 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 1      ; 6 uses
  %.not9.i121 = icmp eq ptr %i.dg, %3
  br i1 %.not9.i121, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit128, label %iter.check415

iter.check415:                                    ; preds = %bb.k
  %i.dj = add i64 %i.i, %i.j
  %i.dk = xor i64 %i.q, -1
  %i.dl = add i64 %i.dj, %i.dk
  %i.dm = add i64 %i.au, %i.k
  %i.dn = sub i64 %i.dl, %i.dm                    ; 7 uses
  %min.iters.check399 = icmp ult i64 %i.dn, 8
  %i.do = sub i64 %i.k, %i.i
  %diff.check398 = icmp ugt i64 %i.do, -32
  %or.cond499 = or i1 %min.iters.check399, %diff.check398
  br i1 %or.cond499, label %.lr.ph.i122.preheader, label %vector.main.loop.iter.check400

vector.main.loop.iter.check400:                   ; preds = %iter.check415
  %min.iters.check401 = icmp ult i64 %i.dn, 32
  br i1 %min.iters.check401, label %vec.epilog.ph419, label %vector.ph402

vector.ph402:                                     ; preds = %vector.main.loop.iter.check400
  %i.dp = and i64 %i.dn, 24
  %n.vec403 = and i64 %i.dn, -32                  ; 5 uses
  %i.dq = getelementptr i8, ptr %i.di, i64 %n.vec403
  %i.dr = getelementptr i8, ptr %i.dg, i64 %n.vec403
  br label %vector.body404

vector.body404:                                   ; preds = %vector.ph402, %vector.body404
  %index405 = phi i64 [ 0, %vector.ph402 ], [ %index.next410, %vector.body404 ] ; 3 uses
  %next.gep406 = getelementptr i8, ptr %i.di, i64 %index405 ; 2 uses
  %next.gep407 = getelementptr i8, ptr %i.dg, i64 %index405 ; 2 uses
  %i.ds = getelementptr i8, ptr %next.gep407, i64 16
  %wide.load408 = load <16 x i8>, ptr %next.gep407, align 1, !tbaa !51
  %wide.load409 = load <16 x i8>, ptr %i.ds, align 1, !tbaa !51
  %i.dt = getelementptr i8, ptr %next.gep406, i64 16
  store <16 x i8> %wide.load408, ptr %next.gep406, align 1, !tbaa !51
  store <16 x i8> %wide.load409, ptr %i.dt, align 1, !tbaa !51
  %index.next410 = add nuw i64 %index405, 32      ; 2 uses
  %i.du = icmp eq i64 %index.next410, %n.vec403
  br i1 %i.du, label %middle.block411, label %vector.body404, !llvm.loop !1295

middle.block411:                                  ; preds = %vector.body404
  %cmp.n412 = icmp eq i64 %i.dn, %n.vec403
  br i1 %cmp.n412, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit128, label %vec.epilog.iter.check417

vec.epilog.iter.check417:                         ; preds = %middle.block411
  %min.epilog.iters.check418 = icmp eq i64 %i.dp, 0
  br i1 %min.epilog.iters.check418, label %.lr.ph.i122.preheader, label %vec.epilog.ph419, !prof !78

vec.epilog.ph419:                                 ; preds = %vector.main.loop.iter.check400, %vec.epilog.iter.check417
  %vec.epilog.resume.val413 = phi i64 [ %n.vec403, %vec.epilog.iter.check417 ], [ 0, %vector.main.loop.iter.check400 ]
  %n.vec420 = and i64 %i.dn, -8                   ; 4 uses
  %i.dv = getelementptr i8, ptr %i.di, i64 %n.vec420
  %i.dw = getelementptr i8, ptr %i.dg, i64 %n.vec420
  br label %vec.epilog.vector.body421

vec.epilog.vector.body421:                        ; preds = %vec.epilog.vector.body421, %vec.epilog.ph419
  %index422 = phi i64 [ %vec.epilog.resume.val413, %vec.epilog.ph419 ], [ %index.next426, %vec.epilog.vector.body421 ] ; 3 uses
  %next.gep423 = getelementptr i8, ptr %i.di, i64 %index422
  %next.gep424 = getelementptr i8, ptr %i.dg, i64 %index422
  %wide.load425 = load <8 x i8>, ptr %next.gep424, align 1, !tbaa !51
  store <8 x i8> %wide.load425, ptr %next.gep423, align 1, !tbaa !51
  %index.next426 = add nuw i64 %index422, 8       ; 2 uses
  %i.dx = icmp eq i64 %index.next426, %n.vec420
  br i1 %i.dx, label %vec.epilog.middle.block427, label %vec.epilog.vector.body421, !llvm.loop !1296

vec.epilog.middle.block427:                       ; preds = %vec.epilog.vector.body421
  %cmp.n428 = icmp eq i64 %i.dn, %n.vec420
  br i1 %cmp.n428, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit128, label %.lr.ph.i122.preheader

.lr.ph.i122.preheader:                            ; preds = %iter.check415, %vec.epilog.iter.check417, %vec.epilog.middle.block427
  %.0711.i123.ph = phi ptr [ %i.di, %iter.check415 ], [ %i.dq, %vec.epilog.iter.check417 ], [ %i.dv, %vec.epilog.middle.block427 ] ; 2 uses
  %.0810.i124.ph = phi ptr [ %i.dg, %iter.check415 ], [ %i.dr, %vec.epilog.iter.check417 ], [ %i.dw, %vec.epilog.middle.block427 ] ; 3 uses
  %.0810.i124.ph520 = ptrtoaddr ptr %.0810.i124.ph to i64 ; 2 uses
  %i.dy = sub i64 %i.j, %.0810.i124.ph520
  %xtraiter521 = and i64 %i.dy, 7                 ; 2 uses
  %lcmp.mod522.not = icmp eq i64 %xtraiter521, 0
  br i1 %lcmp.mod522.not, label %.lr.ph.i122.prol.loopexit, label %.lr.ph.i122.prol

.lr.ph.i122.prol:                                 ; preds = %.lr.ph.i122.preheader, %.lr.ph.i122.prol
  %.0711.i123.prol = phi ptr [ %i.ea, %.lr.ph.i122.prol ], [ %.0711.i123.ph, %.lr.ph.i122.preheader ] ; 2 uses
  %.0810.i124.prol = phi ptr [ %i.eb, %.lr.ph.i122.prol ], [ %.0810.i124.ph, %.lr.ph.i122.preheader ] ; 2 uses
  %prol.iter523 = phi i64 [ %prol.iter523.next, %.lr.ph.i122.prol ], [ 0, %.lr.ph.i122.preheader ]
  %i.dz = load i8, ptr %.0810.i124.prol, align 1, !tbaa !51
  store i8 %i.dz, ptr %.0711.i123.prol, align 1, !tbaa !51
  %i.ea = getelementptr inbounds nuw i8, ptr %.0711.i123.prol, i64 1 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0810.i124.prol, i64 1 ; 2 uses
  %prol.iter523.next = add i64 %prol.iter523, 1   ; 2 uses
  %prol.iter523.cmp.not = icmp eq i64 %prol.iter523.next, %xtraiter521
  br i1 %prol.iter523.cmp.not, label %.lr.ph.i122.prol.loopexit, label %.lr.ph.i122.prol, !llvm.loop !1297

.lr.ph.i122.prol.loopexit:                        ; preds = %.lr.ph.i122.prol, %.lr.ph.i122.preheader
  %.0711.i123.unr = phi ptr [ %.0711.i123.ph, %.lr.ph.i122.preheader ], [ %i.ea, %.lr.ph.i122.prol ]
  %.0810.i124.unr = phi ptr [ %.0810.i124.ph, %.lr.ph.i122.preheader ], [ %i.eb, %.lr.ph.i122.prol ]
  %i.ec = sub i64 %.0810.i124.ph520, %i.j
  %i.ed = icmp ugt i64 %i.ec, -8
  br i1 %i.ed, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit128, label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %.lr.ph.i122.prol.loopexit, %.lr.ph.i122
  %.0711.i123 = phi ptr [ %i.fa, %.lr.ph.i122 ], [ %.0711.i123.unr, %.lr.ph.i122.prol.loopexit ] ; 9 uses
  %.0810.i124 = phi ptr [ %i.fb, %.lr.ph.i122 ], [ %.0810.i124.unr, %.lr.ph.i122.prol.loopexit ] ; 9 uses
  %i.ee = load i8, ptr %.0810.i124, align 1, !tbaa !51
  store i8 %i.ee, ptr %.0711.i123, align 1, !tbaa !51
  %i.ef = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 1
  %i.eg = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !51
  store i8 %i.eh, ptr %i.ef, align 1, !tbaa !51
  %i.ei = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 2
  %i.ej = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 2
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !51
  store i8 %i.ek, ptr %i.ei, align 1, !tbaa !51
  %i.el = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 3
  %i.em = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 3
  %i.en = load i8, ptr %i.em, align 1, !tbaa !51
  store i8 %i.en, ptr %i.el, align 1, !tbaa !51
  %i.eo = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 4
  %i.ep = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 4
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !51
  store i8 %i.eq, ptr %i.eo, align 1, !tbaa !51
  %i.er = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 5
  %i.es = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 5
  %i.et = load i8, ptr %i.es, align 1, !tbaa !51
  store i8 %i.et, ptr %i.er, align 1, !tbaa !51
  %i.eu = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 6
  %i.ev = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 6
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !51
  store i8 %i.ew, ptr %i.eu, align 1, !tbaa !51
  %i.ex = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 7
  %i.ey = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 7
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !51
  store i8 %i.ez, ptr %i.ex, align 1, !tbaa !51
  %i.fa = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 8 ; 2 uses
  %.not.i125.7 = icmp eq ptr %i.fb, %3
  br i1 %.not.i125.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit128, label %.lr.ph.i122, !llvm.loop !1298

_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit128: ; preds = %.lr.ph.i122.prol.loopexit, %.lr.ph.i122, %middle.block411, %vec.epilog.middle.block427, %bb.k
  %i.fc = sub nuw i64 %i.l, %i.av
  %i.fd = add i64 %i.fc, %i.q                     ; 3 uses
  %i.fe = load i8, ptr %i.c, align 8, !tbaa !51
  %i.ff = trunc i8 %i.fe to i1
  br i1 %i.ff, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit128
  %i.fg = trunc i64 %i.fd to i8
  %i.fh = shl i8 %i.fg, 1
  %i.fi = or disjoint i8 %i.fh, 1
  store i8 %i.fi, ptr %i.c, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEvE9priv_sizeEm.exit

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit128
  %i.fj = load i64, ptr %i.c, align 8
  %i.fk = shl i64 %i.fd, 1
  %i.fl = and i64 %i.fj, 1
  %i.fm = or disjoint i64 %i.fl, %i.fk
  store i64 %i.fm, ptr %i.c, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEvE9priv_sizeEm.exit: ; preds = %bb.l, %bb.m
  %.not9.i129 = icmp eq ptr %1, %i.di
  br i1 %.not9.i129, label %iter.check483, label %iter.check449

iter.check449:                                    ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEvE9priv_sizeEm.exit
  %i.fn = getelementptr inbounds i8, ptr %i.x, i64 %i.fd ; 6 uses
  %i.fo = add i64 %i.q, %i.au
  %i.fp = add i64 %i.fo, 1
  %i.fq = sub i64 %i.fp, %i.i                     ; 7 uses
  %min.iters.check433 = icmp ult i64 %i.fq, 8
  br i1 %min.iters.check433, label %.lr.ph.i130.preheader, label %vector.memcheck431

vector.memcheck431:                               ; preds = %iter.check449
  %i.fr = add i64 %i.i, %i.au
  %i.fs = add i64 %i.fr, %i.j
  %i.ft = add i64 %i.au, %i.k
  %i.fu = add i64 %i.ft, %i.i
  %i.fv = sub i64 %i.fu, %i.fs
  %diff.check432 = icmp ugt i64 %i.fv, -32
  br i1 %diff.check432, label %.lr.ph.i130.preheader, label %vector.main.loop.iter.check434

vector.main.loop.iter.check434:                   ; preds = %vector.memcheck431
  %min.iters.check435 = icmp ult i64 %i.fq, 32
  br i1 %min.iters.check435, label %vec.epilog.ph453, label %vector.ph436

vector.ph436:                                     ; preds = %vector.main.loop.iter.check434
  %i.fw = and i64 %i.fq, 24
  %n.vec437 = and i64 %i.fq, -32                  ; 5 uses
  %i.fx = getelementptr i8, ptr %i.fn, i64 %n.vec437
  %i.fy = getelementptr i8, ptr %1, i64 %n.vec437
  br label %vector.body438

vector.body438:                                   ; preds = %vector.ph436, %vector.body438
  %index439 = phi i64 [ 0, %vector.ph436 ], [ %index.next444, %vector.body438 ] ; 3 uses
  %next.gep440 = getelementptr i8, ptr %i.fn, i64 %index439 ; 2 uses
  %next.gep441 = getelementptr i8, ptr %1, i64 %index439 ; 2 uses
  %i.fz = getelementptr i8, ptr %next.gep441, i64 16
  %wide.load442 = load <16 x i8>, ptr %next.gep441, align 1, !tbaa !51
  %wide.load443 = load <16 x i8>, ptr %i.fz, align 1, !tbaa !51
  %i.ga = getelementptr i8, ptr %next.gep440, i64 16
  store <16 x i8> %wide.load442, ptr %next.gep440, align 1, !tbaa !51
  store <16 x i8> %wide.load443, ptr %i.ga, align 1, !tbaa !51
  %index.next444 = add nuw i64 %index439, 32      ; 2 uses
  %i.gb = icmp eq i64 %index.next444, %n.vec437
  br i1 %i.gb, label %middle.block445, label %vector.body438, !llvm.loop !1299

middle.block445:                                  ; preds = %vector.body438
  %cmp.n446 = icmp eq i64 %i.fq, %n.vec437
  br i1 %cmp.n446, label %iter.check483, label %vec.epilog.iter.check451

vec.epilog.iter.check451:                         ; preds = %middle.block445
  %min.epilog.iters.check452 = icmp eq i64 %i.fw, 0
  br i1 %min.epilog.iters.check452, label %.lr.ph.i130.preheader, label %vec.epilog.ph453, !prof !78

vec.epilog.ph453:                                 ; preds = %vector.main.loop.iter.check434, %vec.epilog.iter.check451
  %vec.epilog.resume.val447 = phi i64 [ %n.vec437, %vec.epilog.iter.check451 ], [ 0, %vector.main.loop.iter.check434 ]
  %n.vec454 = and i64 %i.fq, -8                   ; 4 uses
  %i.gc = getelementptr i8, ptr %i.fn, i64 %n.vec454
  %i.gd = getelementptr i8, ptr %1, i64 %n.vec454
  br label %vec.epilog.vector.body455

vec.epilog.vector.body455:                        ; preds = %vec.epilog.vector.body455, %vec.epilog.ph453
  %index456 = phi i64 [ %vec.epilog.resume.val447, %vec.epilog.ph453 ], [ %index.next460, %vec.epilog.vector.body455 ] ; 3 uses
  %next.gep457 = getelementptr i8, ptr %i.fn, i64 %index456
  %next.gep458 = getelementptr i8, ptr %1, i64 %index456
  %wide.load459 = load <8 x i8>, ptr %next.gep458, align 1, !tbaa !51
  store <8 x i8> %wide.load459, ptr %next.gep457, align 1, !tbaa !51
  %index.next460 = add nuw i64 %index456, 8       ; 2 uses
  %i.ge = icmp eq i64 %index.next460, %n.vec454
  br i1 %i.ge, label %vec.epilog.middle.block461, label %vec.epilog.vector.body455, !llvm.loop !1300

vec.epilog.middle.block461:                       ; preds = %vec.epilog.vector.body455
  %cmp.n462 = icmp eq i64 %i.fq, %n.vec454
  br i1 %cmp.n462, label %iter.check483, label %.lr.ph.i130.preheader

.lr.ph.i130.preheader:                            ; preds = %iter.check449, %vector.memcheck431, %vec.epilog.iter.check451, %vec.epilog.middle.block461
  %.0711.i131.ph = phi ptr [ %i.fn, %iter.check449 ], [ %i.fn, %vector.memcheck431 ], [ %i.fx, %vec.epilog.iter.check451 ], [ %i.gc, %vec.epilog.middle.block461 ] ; 2 uses
  %.0810.i132.ph = phi ptr [ %1, %iter.check449 ], [ %1, %vector.memcheck431 ], [ %i.fy, %vec.epilog.iter.check451 ], [ %i.gd, %vec.epilog.middle.block461 ] ; 3 uses
  %i.gf = add i64 %i.q, %i.au                     ; 2 uses
  %i.gg = add i64 %i.gf, 1
  %.0810.i132.ph524 = ptrtoaddr ptr %.0810.i132.ph to i64 ; 2 uses
  %i.gh = sub i64 %i.gg, %.0810.i132.ph524
  %i.gi = sub i64 %i.gf, %.0810.i132.ph524
  %xtraiter525 = and i64 %i.gh, 7                 ; 2 uses
  %lcmp.mod526.not = icmp eq i64 %xtraiter525, 0
  br i1 %lcmp.mod526.not, label %.lr.ph.i130.prol.loopexit, label %.lr.ph.i130.prol

.lr.ph.i130.prol:                                 ; preds = %.lr.ph.i130.preheader, %.lr.ph.i130.prol
  %.0711.i131.prol = phi ptr [ %i.gk, %.lr.ph.i130.prol ], [ %.0711.i131.ph, %.lr.ph.i130.preheader ] ; 2 uses
  %.0810.i132.prol = phi ptr [ %i.gl, %.lr.ph.i130.prol ], [ %.0810.i132.ph, %.lr.ph.i130.preheader ] ; 2 uses
  %prol.iter527 = phi i64 [ %prol.iter527.next, %.lr.ph.i130.prol ], [ 0, %.lr.ph.i130.preheader ]
  %i.gj = load i8, ptr %.0810.i132.prol, align 1, !tbaa !51
  store i8 %i.gj, ptr %.0711.i131.prol, align 1, !tbaa !51
  %i.gk = getelementptr inbounds nuw i8, ptr %.0711.i131.prol, i64 1 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0810.i132.prol, i64 1 ; 2 uses
  %prol.iter527.next = add i64 %prol.iter527, 1   ; 2 uses
  %prol.iter527.cmp.not = icmp eq i64 %prol.iter527.next, %xtraiter525
  br i1 %prol.iter527.cmp.not, label %.lr.ph.i130.prol.loopexit, label %.lr.ph.i130.prol, !llvm.loop !1301

.lr.ph.i130.prol.loopexit:                        ; preds = %.lr.ph.i130.prol, %.lr.ph.i130.preheader
  %.0711.i131.unr = phi ptr [ %.0711.i131.ph, %.lr.ph.i130.preheader ], [ %i.gk, %.lr.ph.i130.prol ]
  %.0810.i132.unr = phi ptr [ %.0810.i132.ph, %.lr.ph.i130.preheader ], [ %i.gl, %.lr.ph.i130.prol ]
  %i.gm = icmp ult i64 %i.gi, 7
  br i1 %i.gm, label %iter.check483, label %.lr.ph.i130

.lr.ph.i130:                                      ; preds = %.lr.ph.i130.prol.loopexit, %.lr.ph.i130
  %.0711.i131 = phi ptr [ %i.hj, %.lr.ph.i130 ], [ %.0711.i131.unr, %.lr.ph.i130.prol.loopexit ] ; 9 uses
  %.0810.i132 = phi ptr [ %i.hk, %.lr.ph.i130 ], [ %.0810.i132.unr, %.lr.ph.i130.prol.loopexit ] ; 9 uses
  %i.gn = load i8, ptr %.0810.i132, align 1, !tbaa !51
  store i8 %i.gn, ptr %.0711.i131, align 1, !tbaa !51
  %i.go = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 1
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !51
  store i8 %i.gq, ptr %i.go, align 1, !tbaa !51
  %i.gr = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 2
  %i.gs = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 2
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !51
  store i8 %i.gt, ptr %i.gr, align 1, !tbaa !51
  %i.gu = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 3
  %i.gv = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 3
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !51
  store i8 %i.gw, ptr %i.gu, align 1, !tbaa !51
  %i.gx = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 4
  %i.gy = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 4
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !51
  store i8 %i.gz, ptr %i.gx, align 1, !tbaa !51
  %i.ha = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 5
  %i.hb = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 5
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !51
  store i8 %i.hc, ptr %i.ha, align 1, !tbaa !51
  %i.hd = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 6
  %i.he = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 6
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !51
  store i8 %i.hf, ptr %i.hd, align 1, !tbaa !51
  %i.hg = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 7
  %i.hh = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 7 ; 2 uses
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !51
  store i8 %i.hi, ptr %i.hg, align 1, !tbaa !51
  %i.hj = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 8
  %.not.i133.7 = icmp eq ptr %i.hh, %i.dh
  br i1 %.not.i133.7, label %iter.check483, label %.lr.ph.i130, !llvm.loop !1302

iter.check483:                                    ; preds = %.lr.ph.i130.prol.loopexit, %.lr.ph.i130, %middle.block445, %vec.epilog.middle.block461, %_ZN5boost9container3dtl17basic_string_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEvE9priv_sizeEm.exit
  %i.hl = add i64 %i.q, %i.au
  %i.hm = add i64 %i.hl, 1
  %i.hn = sub i64 %i.hm, %i.i                     ; 7 uses
  %min.iters.check467 = icmp ult i64 %i.hn, 8
  %i.ho = sub i64 %i.k, %i.i
  %diff.check466 = icmp ugt i64 %i.ho, -32
  %or.cond500 = or i1 %min.iters.check467, %diff.check466
  br i1 %or.cond500, label %.lr.ph.i137.preheader, label %vector.main.loop.iter.check468

vector.main.loop.iter.check468:                   ; preds = %iter.check483
  %min.iters.check469 = icmp ult i64 %i.hn, 32
  br i1 %min.iters.check469, label %vec.epilog.ph487, label %vector.ph470

vector.ph470:                                     ; preds = %vector.main.loop.iter.check468
  %i.hp = and i64 %i.hn, 24
  %n.vec471 = and i64 %i.hn, -32                  ; 5 uses
  %i.hq = getelementptr i8, ptr %1, i64 %n.vec471
  %i.hr = getelementptr i8, ptr %2, i64 %n.vec471
  br label %vector.body472

vector.body472:                                   ; preds = %vector.ph470, %vector.body472
  %index473 = phi i64 [ 0, %vector.ph470 ], [ %index.next478, %vector.body472 ] ; 3 uses
  %next.gep474 = getelementptr i8, ptr %1, i64 %index473 ; 2 uses
  %next.gep475 = getelementptr i8, ptr %2, i64 %index473 ; 2 uses
  %i.hs = getelementptr i8, ptr %next.gep475, i64 16
  %wide.load476 = load <16 x i8>, ptr %next.gep475, align 1, !tbaa !51
  %wide.load477 = load <16 x i8>, ptr %i.hs, align 1, !tbaa !51
  %i.ht = getelementptr i8, ptr %next.gep474, i64 16
  store <16 x i8> %wide.load476, ptr %next.gep474, align 1, !tbaa !51
  store <16 x i8> %wide.load477, ptr %i.ht, align 1, !tbaa !51
  %index.next478 = add nuw i64 %index473, 32      ; 2 uses
  %i.hu = icmp eq i64 %index.next478, %n.vec471
  br i1 %i.hu, label %middle.block479, label %vector.body472, !llvm.loop !1303

middle.block479:                                  ; preds = %vector.body472
  %cmp.n480 = icmp eq i64 %i.hn, %n.vec471
  br i1 %cmp.n480, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEvE9priv_copyIPcS9_EEvT_SA_T0_.exit, label %vec.epilog.iter.check485

vec.epilog.iter.check485:                         ; preds = %middle.block479
  %min.epilog.iters.check486 = icmp eq i64 %i.hp, 0
  br i1 %min.epilog.iters.check486, label %.lr.ph.i137.preheader, label %vec.epilog.ph487, !prof !78

vec.epilog.ph487:                                 ; preds = %vector.main.loop.iter.check468, %vec.epilog.iter.check485
  %vec.epilog.resume.val481 = phi i64 [ %n.vec471, %vec.epilog.iter.check485 ], [ 0, %vector.main.loop.iter.check468 ]
  %n.vec488 = and i64 %i.hn, -8                   ; 4 uses
  %i.hv = getelementptr i8, ptr %1, i64 %n.vec488
  %i.hw = getelementptr i8, ptr %2, i64 %n.vec488
  br label %vec.epilog.vector.body489

vec.epilog.vector.body489:                        ; preds = %vec.epilog.vector.body489, %vec.epilog.ph487
  %index490 = phi i64 [ %vec.epilog.resume.val481, %vec.epilog.ph487 ], [ %index.next494, %vec.epilog.vector.body489 ] ; 3 uses
  %next.gep491 = getelementptr i8, ptr %1, i64 %index490
  %next.gep492 = getelementptr i8, ptr %2, i64 %index490
  %wide.load493 = load <8 x i8>, ptr %next.gep492, align 1, !tbaa !51
  store <8 x i8> %wide.load493, ptr %next.gep491, align 1, !tbaa !51
  %index.next494 = add nuw i64 %index490, 8       ; 2 uses
  %i.hx = icmp eq i64 %index.next494, %n.vec488
  br i1 %i.hx, label %vec.epilog.middle.block495, label %vec.epilog.vector.body489, !llvm.loop !1304

vec.epilog.middle.block495:                       ; preds = %vec.epilog.vector.body489
  %cmp.n496 = icmp eq i64 %i.hn, %n.vec488
  br i1 %cmp.n496, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEvE9priv_copyIPcS9_EEvT_SA_T0_.exit, label %.lr.ph.i137.preheader

.lr.ph.i137.preheader:                            ; preds = %iter.check483, %vec.epilog.iter.check485, %vec.epilog.middle.block495
  %.09.i138.ph = phi ptr [ %1, %iter.check483 ], [ %i.hq, %vec.epilog.iter.check485 ], [ %i.hv, %vec.epilog.middle.block495 ]
  %.068.i139.ph = phi ptr [ %2, %iter.check483 ], [ %i.hr, %vec.epilog.iter.check485 ], [ %i.hw, %vec.epilog.middle.block495 ]
  br label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137.preheader, %.lr.ph.i137
  %.09.i138 = phi ptr [ %i.ia, %.lr.ph.i137 ], [ %.09.i138.ph, %.lr.ph.i137.preheader ] ; 2 uses
  %.068.i139 = phi ptr [ %i.hz, %.lr.ph.i137 ], [ %.068.i139.ph, %.lr.ph.i137.preheader ] ; 3 uses
  %i.hy = load i8, ptr %.068.i139, align 1, !tbaa !51
  store i8 %i.hy, ptr %.09.i138, align 1, !tbaa !51
  %i.hz = getelementptr inbounds nuw i8, ptr %.068.i139, i64 1
end_hunk_8
begin_hunk_9_@_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEEvE6insertIPcEES9_PKcT_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE:bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %.068.i, i64 3
  %i.cp = getelementptr inbounds nuw i8, ptr %.09.i, i64 3
  %i.cq = load i8, ptr %i.co, align 1, !tbaa !51
  store i8 %i.cq, ptr %i.cp, align 1, !tbaa !51
  %i.cr = getelementptr inbounds nuw i8, ptr %.068.i, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %.09.i, i64 4
  %i.ct = load i8, ptr %i.cr, align 1, !tbaa !51
  store i8 %i.ct, ptr %i.cs, align 1, !tbaa !51
  %i.cu = getelementptr inbounds nuw i8, ptr %.068.i, i64 5
  %i.cv = getelementptr inbounds nuw i8, ptr %.09.i, i64 5
  %i.cw = load i8, ptr %i.cu, align 1, !tbaa !51
  store i8 %i.cw, ptr %i.cv, align 1, !tbaa !51
  %i.cx = getelementptr inbounds nuw i8, ptr %.068.i, i64 6
  %i.cy = getelementptr inbounds nuw i8, ptr %.09.i, i64 6
  %i.cz = load i8, ptr %i.cx, align 1, !tbaa !51
  store i8 %i.cz, ptr %i.cy, align 1, !tbaa !51
  %i.da = getelementptr inbounds nuw i8, ptr %.068.i, i64 7
  %i.db = getelementptr inbounds nuw i8, ptr %.09.i, i64 7
  %i.dc = load i8, ptr %i.da, align 1, !tbaa !51
  store i8 %i.dc, ptr %i.db, align 1, !tbaa !51
  %i.dd = getelementptr inbounds nuw i8, ptr %.068.i, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %.not.i120.7 = icmp eq ptr %i.dd, %3
  br i1 %.not.i120.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEEvE9priv_copyIPcS9_EEvT_SA_T0_.exit, label %.lr.ph.i119, !llvm.loop !1341

bb.k:                                             ; preds = %bb.i
  %i.df = getelementptr i8, ptr %2, i64 %i.av     ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 1      ; 6 uses
  %i.dh = getelementptr i8, ptr %i.x, i64 %i.q    ; 2 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 1      ; 6 uses
  %.not9.i121 = icmp eq ptr %i.dg, %3
  br i1 %.not9.i121, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit128, label %iter.check415

iter.check415:                                    ; preds = %bb.k
  %i.dj = add i64 %i.i, %i.j
  %i.dk = xor i64 %i.q, -1
  %i.dl = add i64 %i.dj, %i.dk
  %i.dm = add i64 %i.au, %i.k
  %i.dn = sub i64 %i.dl, %i.dm                    ; 7 uses
  %min.iters.check399 = icmp ult i64 %i.dn, 8
  %i.do = sub i64 %i.k, %i.i
  %diff.check398 = icmp ugt i64 %i.do, -32
  %or.cond499 = or i1 %min.iters.check399, %diff.check398
  br i1 %or.cond499, label %.lr.ph.i122.preheader, label %vector.main.loop.iter.check400

vector.main.loop.iter.check400:                   ; preds = %iter.check415
  %min.iters.check401 = icmp ult i64 %i.dn, 32
  br i1 %min.iters.check401, label %vec.epilog.ph419, label %vector.ph402

vector.ph402:                                     ; preds = %vector.main.loop.iter.check400
  %i.dp = and i64 %i.dn, 24
  %n.vec403 = and i64 %i.dn, -32                  ; 5 uses
  %i.dq = getelementptr i8, ptr %i.di, i64 %n.vec403
  %i.dr = getelementptr i8, ptr %i.dg, i64 %n.vec403
  br label %vector.body404

vector.body404:                                   ; preds = %vector.ph402, %vector.body404
  %index405 = phi i64 [ 0, %vector.ph402 ], [ %index.next410, %vector.body404 ] ; 3 uses
  %next.gep406 = getelementptr i8, ptr %i.di, i64 %index405 ; 2 uses
  %next.gep407 = getelementptr i8, ptr %i.dg, i64 %index405 ; 2 uses
  %i.ds = getelementptr i8, ptr %next.gep407, i64 16
  %wide.load408 = load <16 x i8>, ptr %next.gep407, align 1, !tbaa !51
  %wide.load409 = load <16 x i8>, ptr %i.ds, align 1, !tbaa !51
  %i.dt = getelementptr i8, ptr %next.gep406, i64 16
  store <16 x i8> %wide.load408, ptr %next.gep406, align 1, !tbaa !51
  store <16 x i8> %wide.load409, ptr %i.dt, align 1, !tbaa !51
  %index.next410 = add nuw i64 %index405, 32      ; 2 uses
  %i.du = icmp eq i64 %index.next410, %n.vec403
  br i1 %i.du, label %middle.block411, label %vector.body404, !llvm.loop !1342

middle.block411:                                  ; preds = %vector.body404
  %cmp.n412 = icmp eq i64 %i.dn, %n.vec403
  br i1 %cmp.n412, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit128, label %vec.epilog.iter.check417

vec.epilog.iter.check417:                         ; preds = %middle.block411
  %min.epilog.iters.check418 = icmp eq i64 %i.dp, 0
  br i1 %min.epilog.iters.check418, label %.lr.ph.i122.preheader, label %vec.epilog.ph419, !prof !78

vec.epilog.ph419:                                 ; preds = %vector.main.loop.iter.check400, %vec.epilog.iter.check417
  %vec.epilog.resume.val413 = phi i64 [ %n.vec403, %vec.epilog.iter.check417 ], [ 0, %vector.main.loop.iter.check400 ]
  %n.vec420 = and i64 %i.dn, -8                   ; 4 uses
  %i.dv = getelementptr i8, ptr %i.di, i64 %n.vec420
  %i.dw = getelementptr i8, ptr %i.dg, i64 %n.vec420
  br label %vec.epilog.vector.body421

vec.epilog.vector.body421:                        ; preds = %vec.epilog.vector.body421, %vec.epilog.ph419
  %index422 = phi i64 [ %vec.epilog.resume.val413, %vec.epilog.ph419 ], [ %index.next426, %vec.epilog.vector.body421 ] ; 3 uses
  %next.gep423 = getelementptr i8, ptr %i.di, i64 %index422
  %next.gep424 = getelementptr i8, ptr %i.dg, i64 %index422
  %wide.load425 = load <8 x i8>, ptr %next.gep424, align 1, !tbaa !51
  store <8 x i8> %wide.load425, ptr %next.gep423, align 1, !tbaa !51
  %index.next426 = add nuw i64 %index422, 8       ; 2 uses
  %i.dx = icmp eq i64 %index.next426, %n.vec420
  br i1 %i.dx, label %vec.epilog.middle.block427, label %vec.epilog.vector.body421, !llvm.loop !1343

vec.epilog.middle.block427:                       ; preds = %vec.epilog.vector.body421
  %cmp.n428 = icmp eq i64 %i.dn, %n.vec420
  br i1 %cmp.n428, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit128, label %.lr.ph.i122.preheader

.lr.ph.i122.preheader:                            ; preds = %iter.check415, %vec.epilog.iter.check417, %vec.epilog.middle.block427
  %.0711.i123.ph = phi ptr [ %i.di, %iter.check415 ], [ %i.dq, %vec.epilog.iter.check417 ], [ %i.dv, %vec.epilog.middle.block427 ] ; 2 uses
  %.0810.i124.ph = phi ptr [ %i.dg, %iter.check415 ], [ %i.dr, %vec.epilog.iter.check417 ], [ %i.dw, %vec.epilog.middle.block427 ] ; 3 uses
  %.0810.i124.ph520 = ptrtoaddr ptr %.0810.i124.ph to i64 ; 2 uses
  %i.dy = sub i64 %i.j, %.0810.i124.ph520
  %xtraiter521 = and i64 %i.dy, 7                 ; 2 uses
  %lcmp.mod522.not = icmp eq i64 %xtraiter521, 0
  br i1 %lcmp.mod522.not, label %.lr.ph.i122.prol.loopexit, label %.lr.ph.i122.prol

.lr.ph.i122.prol:                                 ; preds = %.lr.ph.i122.preheader, %.lr.ph.i122.prol
  %.0711.i123.prol = phi ptr [ %i.ea, %.lr.ph.i122.prol ], [ %.0711.i123.ph, %.lr.ph.i122.preheader ] ; 2 uses
  %.0810.i124.prol = phi ptr [ %i.eb, %.lr.ph.i122.prol ], [ %.0810.i124.ph, %.lr.ph.i122.preheader ] ; 2 uses
  %prol.iter523 = phi i64 [ %prol.iter523.next, %.lr.ph.i122.prol ], [ 0, %.lr.ph.i122.preheader ]
  %i.dz = load i8, ptr %.0810.i124.prol, align 1, !tbaa !51
  store i8 %i.dz, ptr %.0711.i123.prol, align 1, !tbaa !51
  %i.ea = getelementptr inbounds nuw i8, ptr %.0711.i123.prol, i64 1 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0810.i124.prol, i64 1 ; 2 uses
  %prol.iter523.next = add i64 %prol.iter523, 1   ; 2 uses
  %prol.iter523.cmp.not = icmp eq i64 %prol.iter523.next, %xtraiter521
  br i1 %prol.iter523.cmp.not, label %.lr.ph.i122.prol.loopexit, label %.lr.ph.i122.prol, !llvm.loop !1344

.lr.ph.i122.prol.loopexit:                        ; preds = %.lr.ph.i122.prol, %.lr.ph.i122.preheader
  %.0711.i123.unr = phi ptr [ %.0711.i123.ph, %.lr.ph.i122.preheader ], [ %i.ea, %.lr.ph.i122.prol ]
  %.0810.i124.unr = phi ptr [ %.0810.i124.ph, %.lr.ph.i122.preheader ], [ %i.eb, %.lr.ph.i122.prol ]
  %i.ec = sub i64 %.0810.i124.ph520, %i.j
  %i.ed = icmp ugt i64 %i.ec, -8
  br i1 %i.ed, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit128, label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %.lr.ph.i122.prol.loopexit, %.lr.ph.i122
  %.0711.i123 = phi ptr [ %i.fa, %.lr.ph.i122 ], [ %.0711.i123.unr, %.lr.ph.i122.prol.loopexit ] ; 9 uses
  %.0810.i124 = phi ptr [ %i.fb, %.lr.ph.i122 ], [ %.0810.i124.unr, %.lr.ph.i122.prol.loopexit ] ; 9 uses
  %i.ee = load i8, ptr %.0810.i124, align 1, !tbaa !51
  store i8 %i.ee, ptr %.0711.i123, align 1, !tbaa !51
  %i.ef = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 1
  %i.eg = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !51
  store i8 %i.eh, ptr %i.ef, align 1, !tbaa !51
  %i.ei = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 2
  %i.ej = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 2
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !51
  store i8 %i.ek, ptr %i.ei, align 1, !tbaa !51
  %i.el = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 3
  %i.em = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 3
  %i.en = load i8, ptr %i.em, align 1, !tbaa !51
  store i8 %i.en, ptr %i.el, align 1, !tbaa !51
  %i.eo = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 4
  %i.ep = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 4
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !51
  store i8 %i.eq, ptr %i.eo, align 1, !tbaa !51
  %i.er = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 5
  %i.es = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 5
  %i.et = load i8, ptr %i.es, align 1, !tbaa !51
  store i8 %i.et, ptr %i.er, align 1, !tbaa !51
  %i.eu = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 6
  %i.ev = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 6
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !51
  store i8 %i.ew, ptr %i.eu, align 1, !tbaa !51
  %i.ex = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 7
  %i.ey = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 7
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !51
  store i8 %i.ez, ptr %i.ex, align 1, !tbaa !51
  %i.fa = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 8 ; 2 uses
  %.not.i125.7 = icmp eq ptr %i.fb, %3
  br i1 %.not.i125.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit128, label %.lr.ph.i122, !llvm.loop !1345

_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit128: ; preds = %.lr.ph.i122.prol.loopexit, %.lr.ph.i122, %middle.block411, %vec.epilog.middle.block427, %bb.k
  %i.fc = sub nuw i64 %i.l, %i.av
  %i.fd = add i64 %i.fc, %i.q                     ; 3 uses
  %i.fe = load i8, ptr %i.c, align 8, !tbaa !51
  %i.ff = trunc i8 %i.fe to i1
  br i1 %i.ff, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit128
  %i.fg = trunc i64 %i.fd to i8
  %i.fh = shl i8 %i.fg, 1
  %i.fi = or disjoint i8 %i.fh, 1
  store i8 %i.fi, ptr %i.c, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEEvE9priv_sizeEm.exit

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEEvE23priv_uninitialized_copyIPcS9_EEmT_SA_T0_.exit128
  %i.fj = load i64, ptr %i.c, align 8
  %i.fk = shl i64 %i.fd, 1
  %i.fl = and i64 %i.fj, 1
  %i.fm = or disjoint i64 %i.fl, %i.fk
  store i64 %i.fm, ptr %i.c, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseINS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEEvE9priv_sizeEm.exit: ; preds = %bb.l, %bb.m
  %.not9.i129 = icmp eq ptr %1, %i.di
  br i1 %.not9.i129, label %iter.check483, label %iter.check449

iter.check449:                                    ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEEvE9priv_sizeEm.exit
  %i.fn = getelementptr inbounds i8, ptr %i.x, i64 %i.fd ; 6 uses
  %i.fo = add i64 %i.q, %i.au
  %i.fp = add i64 %i.fo, 1
  %i.fq = sub i64 %i.fp, %i.i                     ; 7 uses
  %min.iters.check433 = icmp ult i64 %i.fq, 8
  br i1 %min.iters.check433, label %.lr.ph.i130.preheader, label %vector.memcheck431

vector.memcheck431:                               ; preds = %iter.check449
  %i.fr = add i64 %i.i, %i.au
  %i.fs = add i64 %i.fr, %i.j
  %i.ft = add i64 %i.au, %i.k
  %i.fu = add i64 %i.ft, %i.i
  %i.fv = sub i64 %i.fu, %i.fs
  %diff.check432 = icmp ugt i64 %i.fv, -32
  br i1 %diff.check432, label %.lr.ph.i130.preheader, label %vector.main.loop.iter.check434

vector.main.loop.iter.check434:                   ; preds = %vector.memcheck431
  %min.iters.check435 = icmp ult i64 %i.fq, 32
  br i1 %min.iters.check435, label %vec.epilog.ph453, label %vector.ph436

vector.ph436:                                     ; preds = %vector.main.loop.iter.check434
  %i.fw = and i64 %i.fq, 24
  %n.vec437 = and i64 %i.fq, -32                  ; 5 uses
  %i.fx = getelementptr i8, ptr %i.fn, i64 %n.vec437
  %i.fy = getelementptr i8, ptr %1, i64 %n.vec437
  br label %vector.body438

vector.body438:                                   ; preds = %vector.ph436, %vector.body438
  %index439 = phi i64 [ 0, %vector.ph436 ], [ %index.next444, %vector.body438 ] ; 3 uses
  %next.gep440 = getelementptr i8, ptr %i.fn, i64 %index439 ; 2 uses
  %next.gep441 = getelementptr i8, ptr %1, i64 %index439 ; 2 uses
  %i.fz = getelementptr i8, ptr %next.gep441, i64 16
  %wide.load442 = load <16 x i8>, ptr %next.gep441, align 1, !tbaa !51
  %wide.load443 = load <16 x i8>, ptr %i.fz, align 1, !tbaa !51
  %i.ga = getelementptr i8, ptr %next.gep440, i64 16
  store <16 x i8> %wide.load442, ptr %next.gep440, align 1, !tbaa !51
  store <16 x i8> %wide.load443, ptr %i.ga, align 1, !tbaa !51
  %index.next444 = add nuw i64 %index439, 32      ; 2 uses
  %i.gb = icmp eq i64 %index.next444, %n.vec437
  br i1 %i.gb, label %middle.block445, label %vector.body438, !llvm.loop !1346

middle.block445:                                  ; preds = %vector.body438
  %cmp.n446 = icmp eq i64 %i.fq, %n.vec437
  br i1 %cmp.n446, label %iter.check483, label %vec.epilog.iter.check451

vec.epilog.iter.check451:                         ; preds = %middle.block445
  %min.epilog.iters.check452 = icmp eq i64 %i.fw, 0
  br i1 %min.epilog.iters.check452, label %.lr.ph.i130.preheader, label %vec.epilog.ph453, !prof !78

vec.epilog.ph453:                                 ; preds = %vector.main.loop.iter.check434, %vec.epilog.iter.check451
  %vec.epilog.resume.val447 = phi i64 [ %n.vec437, %vec.epilog.iter.check451 ], [ 0, %vector.main.loop.iter.check434 ]
  %n.vec454 = and i64 %i.fq, -8                   ; 4 uses
  %i.gc = getelementptr i8, ptr %i.fn, i64 %n.vec454
  %i.gd = getelementptr i8, ptr %1, i64 %n.vec454
  br label %vec.epilog.vector.body455

vec.epilog.vector.body455:                        ; preds = %vec.epilog.vector.body455, %vec.epilog.ph453
  %index456 = phi i64 [ %vec.epilog.resume.val447, %vec.epilog.ph453 ], [ %index.next460, %vec.epilog.vector.body455 ] ; 3 uses
  %next.gep457 = getelementptr i8, ptr %i.fn, i64 %index456
  %next.gep458 = getelementptr i8, ptr %1, i64 %index456
  %wide.load459 = load <8 x i8>, ptr %next.gep458, align 1, !tbaa !51
  store <8 x i8> %wide.load459, ptr %next.gep457, align 1, !tbaa !51
  %index.next460 = add nuw i64 %index456, 8       ; 2 uses
  %i.ge = icmp eq i64 %index.next460, %n.vec454
  br i1 %i.ge, label %vec.epilog.middle.block461, label %vec.epilog.vector.body455, !llvm.loop !1347

vec.epilog.middle.block461:                       ; preds = %vec.epilog.vector.body455
  %cmp.n462 = icmp eq i64 %i.fq, %n.vec454
  br i1 %cmp.n462, label %iter.check483, label %.lr.ph.i130.preheader

.lr.ph.i130.preheader:                            ; preds = %iter.check449, %vector.memcheck431, %vec.epilog.iter.check451, %vec.epilog.middle.block461
  %.0711.i131.ph = phi ptr [ %i.fn, %iter.check449 ], [ %i.fn, %vector.memcheck431 ], [ %i.fx, %vec.epilog.iter.check451 ], [ %i.gc, %vec.epilog.middle.block461 ] ; 2 uses
  %.0810.i132.ph = phi ptr [ %1, %iter.check449 ], [ %1, %vector.memcheck431 ], [ %i.fy, %vec.epilog.iter.check451 ], [ %i.gd, %vec.epilog.middle.block461 ] ; 3 uses
  %i.gf = add i64 %i.q, %i.au                     ; 2 uses
  %i.gg = add i64 %i.gf, 1
  %.0810.i132.ph524 = ptrtoaddr ptr %.0810.i132.ph to i64 ; 2 uses
  %i.gh = sub i64 %i.gg, %.0810.i132.ph524
  %i.gi = sub i64 %i.gf, %.0810.i132.ph524
  %xtraiter525 = and i64 %i.gh, 7                 ; 2 uses
  %lcmp.mod526.not = icmp eq i64 %xtraiter525, 0
  br i1 %lcmp.mod526.not, label %.lr.ph.i130.prol.loopexit, label %.lr.ph.i130.prol

.lr.ph.i130.prol:                                 ; preds = %.lr.ph.i130.preheader, %.lr.ph.i130.prol
  %.0711.i131.prol = phi ptr [ %i.gk, %.lr.ph.i130.prol ], [ %.0711.i131.ph, %.lr.ph.i130.preheader ] ; 2 uses
  %.0810.i132.prol = phi ptr [ %i.gl, %.lr.ph.i130.prol ], [ %.0810.i132.ph, %.lr.ph.i130.preheader ] ; 2 uses
  %prol.iter527 = phi i64 [ %prol.iter527.next, %.lr.ph.i130.prol ], [ 0, %.lr.ph.i130.preheader ]
  %i.gj = load i8, ptr %.0810.i132.prol, align 1, !tbaa !51
  store i8 %i.gj, ptr %.0711.i131.prol, align 1, !tbaa !51
  %i.gk = getelementptr inbounds nuw i8, ptr %.0711.i131.prol, i64 1 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0810.i132.prol, i64 1 ; 2 uses
  %prol.iter527.next = add i64 %prol.iter527, 1   ; 2 uses
  %prol.iter527.cmp.not = icmp eq i64 %prol.iter527.next, %xtraiter525
  br i1 %prol.iter527.cmp.not, label %.lr.ph.i130.prol.loopexit, label %.lr.ph.i130.prol, !llvm.loop !1348

.lr.ph.i130.prol.loopexit:                        ; preds = %.lr.ph.i130.prol, %.lr.ph.i130.preheader
  %.0711.i131.unr = phi ptr [ %.0711.i131.ph, %.lr.ph.i130.preheader ], [ %i.gk, %.lr.ph.i130.prol ]
  %.0810.i132.unr = phi ptr [ %.0810.i132.ph, %.lr.ph.i130.preheader ], [ %i.gl, %.lr.ph.i130.prol ]
  %i.gm = icmp ult i64 %i.gi, 7
  br i1 %i.gm, label %iter.check483, label %.lr.ph.i130

.lr.ph.i130:                                      ; preds = %.lr.ph.i130.prol.loopexit, %.lr.ph.i130
  %.0711.i131 = phi ptr [ %i.hj, %.lr.ph.i130 ], [ %.0711.i131.unr, %.lr.ph.i130.prol.loopexit ] ; 9 uses
  %.0810.i132 = phi ptr [ %i.hk, %.lr.ph.i130 ], [ %.0810.i132.unr, %.lr.ph.i130.prol.loopexit ] ; 9 uses
  %i.gn = load i8, ptr %.0810.i132, align 1, !tbaa !51
  store i8 %i.gn, ptr %.0711.i131, align 1, !tbaa !51
  %i.go = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 1
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !51
  store i8 %i.gq, ptr %i.go, align 1, !tbaa !51
  %i.gr = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 2
  %i.gs = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 2
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !51
  store i8 %i.gt, ptr %i.gr, align 1, !tbaa !51
  %i.gu = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 3
  %i.gv = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 3
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !51
  store i8 %i.gw, ptr %i.gu, align 1, !tbaa !51
  %i.gx = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 4
  %i.gy = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 4
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !51
  store i8 %i.gz, ptr %i.gx, align 1, !tbaa !51
  %i.ha = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 5
  %i.hb = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 5
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !51
  store i8 %i.hc, ptr %i.ha, align 1, !tbaa !51
  %i.hd = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 6
  %i.he = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 6
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !51
  store i8 %i.hf, ptr %i.hd, align 1, !tbaa !51
  %i.hg = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 7
  %i.hh = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 7 ; 2 uses
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !51
  store i8 %i.hi, ptr %i.hg, align 1, !tbaa !51
  %i.hj = getelementptr inbounds nuw i8, ptr %.0711.i131, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %.0810.i132, i64 8
  %.not.i133.7 = icmp eq ptr %i.hh, %i.dh
  br i1 %.not.i133.7, label %iter.check483, label %.lr.ph.i130, !llvm.loop !1349

iter.check483:                                    ; preds = %.lr.ph.i130.prol.loopexit, %.lr.ph.i130, %middle.block445, %vec.epilog.middle.block461, %_ZN5boost9container3dtl17basic_string_baseINS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEEvE9priv_sizeEm.exit
  %i.hl = add i64 %i.q, %i.au
  %i.hm = add i64 %i.hl, 1
  %i.hn = sub i64 %i.hm, %i.i                     ; 7 uses
  %min.iters.check467 = icmp ult i64 %i.hn, 8
  %i.ho = sub i64 %i.k, %i.i
  %diff.check466 = icmp ugt i64 %i.ho, -32
  %or.cond500 = or i1 %min.iters.check467, %diff.check466
  br i1 %or.cond500, label %.lr.ph.i137.preheader, label %vector.main.loop.iter.check468

vector.main.loop.iter.check468:                   ; preds = %iter.check483
  %min.iters.check469 = icmp ult i64 %i.hn, 32
  br i1 %min.iters.check469, label %vec.epilog.ph487, label %vector.ph470

vector.ph470:                                     ; preds = %vector.main.loop.iter.check468
  %i.hp = and i64 %i.hn, 24
  %n.vec471 = and i64 %i.hn, -32                  ; 5 uses
  %i.hq = getelementptr i8, ptr %1, i64 %n.vec471
  %i.hr = getelementptr i8, ptr %2, i64 %n.vec471
  br label %vector.body472

vector.body472:                                   ; preds = %vector.ph470, %vector.body472
  %index473 = phi i64 [ 0, %vector.ph470 ], [ %index.next478, %vector.body472 ] ; 3 uses
  %next.gep474 = getelementptr i8, ptr %1, i64 %index473 ; 2 uses
  %next.gep475 = getelementptr i8, ptr %2, i64 %index473 ; 2 uses
  %i.hs = getelementptr i8, ptr %next.gep475, i64 16
  %wide.load476 = load <16 x i8>, ptr %next.gep475, align 1, !tbaa !51
  %wide.load477 = load <16 x i8>, ptr %i.hs, align 1, !tbaa !51
  %i.ht = getelementptr i8, ptr %next.gep474, i64 16
  store <16 x i8> %wide.load476, ptr %next.gep474, align 1, !tbaa !51
  store <16 x i8> %wide.load477, ptr %i.ht, align 1, !tbaa !51
  %index.next478 = add nuw i64 %index473, 32      ; 2 uses
  %i.hu = icmp eq i64 %index.next478, %n.vec471
  br i1 %i.hu, label %middle.block479, label %vector.body472, !llvm.loop !1350

middle.block479:                                  ; preds = %vector.body472
  %cmp.n480 = icmp eq i64 %i.hn, %n.vec471
  br i1 %cmp.n480, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEEvE9priv_copyIPcS9_EEvT_SA_T0_.exit, label %vec.epilog.iter.check485

vec.epilog.iter.check485:                         ; preds = %middle.block479
  %min.epilog.iters.check486 = icmp eq i64 %i.hp, 0
  br i1 %min.epilog.iters.check486, label %.lr.ph.i137.preheader, label %vec.epilog.ph487, !prof !78

vec.epilog.ph487:                                 ; preds = %vector.main.loop.iter.check468, %vec.epilog.iter.check485
  %vec.epilog.resume.val481 = phi i64 [ %n.vec471, %vec.epilog.iter.check485 ], [ 0, %vector.main.loop.iter.check468 ]
  %n.vec488 = and i64 %i.hn, -8                   ; 4 uses
  %i.hv = getelementptr i8, ptr %1, i64 %n.vec488
  %i.hw = getelementptr i8, ptr %2, i64 %n.vec488
  br label %vec.epilog.vector.body489

vec.epilog.vector.body489:                        ; preds = %vec.epilog.vector.body489, %vec.epilog.ph487
  %index490 = phi i64 [ %vec.epilog.resume.val481, %vec.epilog.ph487 ], [ %index.next494, %vec.epilog.vector.body489 ] ; 3 uses
  %next.gep491 = getelementptr i8, ptr %1, i64 %index490
  %next.gep492 = getelementptr i8, ptr %2, i64 %index490
  %wide.load493 = load <8 x i8>, ptr %next.gep492, align 1, !tbaa !51
  store <8 x i8> %wide.load493, ptr %next.gep491, align 1, !tbaa !51
  %index.next494 = add nuw i64 %index490, 8       ; 2 uses
  %i.hx = icmp eq i64 %index.next494, %n.vec488
  br i1 %i.hx, label %vec.epilog.middle.block495, label %vec.epilog.vector.body489, !llvm.loop !1351

vec.epilog.middle.block495:                       ; preds = %vec.epilog.vector.body489
  %cmp.n496 = icmp eq i64 %i.hn, %n.vec488
  br i1 %cmp.n496, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEEvE9priv_copyIPcS9_EEvT_SA_T0_.exit, label %.lr.ph.i137.preheader

.lr.ph.i137.preheader:                            ; preds = %iter.check483, %vec.epilog.iter.check485, %vec.epilog.middle.block495
  %.09.i138.ph = phi ptr [ %1, %iter.check483 ], [ %i.hq, %vec.epilog.iter.check485 ], [ %i.hv, %vec.epilog.middle.block495 ]
  %.068.i139.ph = phi ptr [ %2, %iter.check483 ], [ %i.hr, %vec.epilog.iter.check485 ], [ %i.hw, %vec.epilog.middle.block495 ]
  br label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137.preheader, %.lr.ph.i137
  %.09.i138 = phi ptr [ %i.ia, %.lr.ph.i137 ], [ %.09.i138.ph, %.lr.ph.i137.preheader ] ; 2 uses
  %.068.i139 = phi ptr [ %i.hz, %.lr.ph.i137 ], [ %.068.i139.ph, %.lr.ph.i137.preheader ] ; 3 uses
  %i.hy = load i8, ptr %.068.i139, align 1, !tbaa !51
  store i8 %i.hy, ptr %.09.i138, align 1, !tbaa !51
  %i.hz = getelementptr inbounds nuw i8, ptr %.068.i139, i64 1
end_hunk_9
