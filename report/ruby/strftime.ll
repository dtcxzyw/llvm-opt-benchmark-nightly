inline.NumInlined: 250
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@rb_strftime_with_timespec:bb.a
  %i.ll = and i64 %i.fc, 3
  %i.lm = getelementptr i8, ptr %i.fg, i64 %n.vec5014
  br label %vec.epilog.vector.body5015

vec.epilog.vector.body5015:                       ; preds = %pred.store.continue5029, %vec.epilog.ph5012
  %index5016 = phi i64 [ %vec.epilog.resume.val5006, %vec.epilog.ph5012 ], [ %index.next5030, %pred.store.continue5029 ] ; 5 uses
  %next.gep5017 = getelementptr i8, ptr %i.fg, i64 %index5016 ; 2 uses
  %i.ln = getelementptr i8, ptr %i.fg, i64 %index5016
  %next.gep5018 = getelementptr i8, ptr %i.ln, i64 1
  %i.lo = getelementptr i8, ptr %i.fg, i64 %index5016
  %next.gep5019 = getelementptr i8, ptr %i.lo, i64 2
  %i.lp = getelementptr i8, ptr %i.fg, i64 %index5016
  %next.gep5020 = getelementptr i8, ptr %i.lp, i64 3
  %wide.load5021 = load <4 x i8>, ptr %next.gep5017, align 1, !tbaa !16 ; 5 uses
  %i.lq = sext <4 x i8> %wide.load5021 to <4 x i32>
  %i.lr = add nsw <4 x i32> %i.lq, splat (i32 -97)
  %i.ls = icmp ult <4 x i32> %i.lr, splat (i32 26) ; 4 uses
  %i.lt = extractelement <4 x i1> %i.ls, i64 0
  br i1 %i.lt, label %pred.store.if5022, label %pred.store.continue5023

pred.store.if5022:                                ; preds = %vec.epilog.vector.body5015
  %i.lu = extractelement <4 x i8> %wide.load5021, i64 0
  %i.lv = and i8 %i.lu, 95
  store i8 %i.lv, ptr %next.gep5017, align 1, !tbaa !16
  br label %pred.store.continue5023

pred.store.continue5023:                          ; preds = %pred.store.if5022, %vec.epilog.vector.body5015
  %i.lw = extractelement <4 x i1> %i.ls, i64 1
  br i1 %i.lw, label %pred.store.if5024, label %pred.store.continue5025

pred.store.if5024:                                ; preds = %pred.store.continue5023
  %i.lx = extractelement <4 x i8> %wide.load5021, i64 1
  %i.ly = and i8 %i.lx, 95
  store i8 %i.ly, ptr %next.gep5018, align 1, !tbaa !16
  br label %pred.store.continue5025

pred.store.continue5025:                          ; preds = %pred.store.if5024, %pred.store.continue5023
  %i.lz = extractelement <4 x i1> %i.ls, i64 2
  br i1 %i.lz, label %pred.store.if5026, label %pred.store.continue5027

pred.store.if5026:                                ; preds = %pred.store.continue5025
  %i.ma = extractelement <4 x i8> %wide.load5021, i64 2
  %i.mb = and i8 %i.ma, 95
  store i8 %i.mb, ptr %next.gep5019, align 1, !tbaa !16
  br label %pred.store.continue5027

pred.store.continue5027:                          ; preds = %pred.store.if5026, %pred.store.continue5025
  %i.mc = extractelement <4 x i1> %i.ls, i64 3
  br i1 %i.mc, label %pred.store.if5028, label %pred.store.continue5029

pred.store.if5028:                                ; preds = %pred.store.continue5027
  %i.md = extractelement <4 x i8> %wide.load5021, i64 3
  %i.me = and i8 %i.md, 95
  store i8 %i.me, ptr %next.gep5020, align 1, !tbaa !16
  br label %pred.store.continue5029

pred.store.continue5029:                          ; preds = %pred.store.if5028, %pred.store.continue5027
  %index.next5030 = add nuw i64 %index5016, 4     ; 2 uses
  %i.mf = icmp eq i64 %index.next5030, %n.vec5014
  br i1 %i.mf, label %vec.epilog.middle.block5031, label %vec.epilog.vector.body5015, !llvm.loop !28

vec.epilog.middle.block5031:                      ; preds = %pred.store.continue5029
  %cmp.n5032 = icmp eq i64 %i.fc, %n.vec5014
  br i1 %cmp.n5032, label %case_conv.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check5008, %vec.epilog.iter.check5010, %vec.epilog.middle.block5031
  %.013.i.ph = phi i64 [ %i.fc, %iter.check5008 ], [ %i.iu, %vec.epilog.iter.check5010 ], [ %i.ll, %vec.epilog.middle.block5031 ]
  %.0.i2357.ph = phi ptr [ %i.fg, %iter.check5008 ], [ %i.iv, %vec.epilog.iter.check5010 ], [ %i.lm, %vec.epilog.middle.block5031 ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.ao
  %.013.i = phi i64 [ %i.mm, %bb.ao ], [ %.013.i.ph, %.preheader.i.preheader ]
  %.0.i2357 = phi ptr [ %i.ml, %bb.ao ], [ %.0.i2357.ph, %.preheader.i.preheader ] ; 3 uses
  %i.mg = load i8, ptr %.0.i2357, align 1, !tbaa !16 ; 2 uses
  %i.mh = sext i8 %i.mg to i32
  %i.mi = add nsw i32 %i.mh, -123
  %i.mj = icmp ult i32 %i.mi, -26
  br i1 %i.mj, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.preheader.i
  %i.mk = and i8 %i.mg, 95
  store i8 %i.mk, ptr %.0.i2357, align 1, !tbaa !16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.preheader.i
  %i.ml = getelementptr i8, ptr %.0.i2357, i64 1
  %i.mm = add nsw i64 %.013.i, -1                 ; 2 uses
  %.not19.i = icmp eq i64 %i.mm, 0
  br i1 %.not19.i, label %case_conv.exit, label %.preheader.i, !llvm.loop !29

.preheader20.i:                                   ; preds = %.preheader20.i.preheader, %bb.aq
  %.114.i = phi i64 [ %i.mt, %bb.aq ], [ %.114.i.ph, %.preheader20.i.preheader ]
  %.1.i = phi ptr [ %i.ms, %bb.aq ], [ %.1.i.ph, %.preheader20.i.preheader ] ; 3 uses
  %i.mn = load i8, ptr %.1.i, align 1, !tbaa !16  ; 2 uses
  %i.mo = sext i8 %i.mn to i32
  %i.mp = add nsw i32 %i.mo, -91
  %i.mq = icmp ult i32 %i.mp, -26
  br i1 %i.mq, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.preheader20.i
  %i.mr = or i8 %i.mn, 32
  store i8 %i.mr, ptr %.1.i, align 1, !tbaa !16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.preheader20.i
  %i.ms = getelementptr i8, ptr %.1.i, i64 1
  %i.mt = add nsw i64 %.114.i, -1                 ; 2 uses
  %.not17.i = icmp eq i64 %i.mt, 0
  br i1 %.not17.i, label %case_conv.exit, label %.preheader20.i, !llvm.loop !30

case_conv.exit:                                   ; preds = %bb.aq, %bb.ao, %middle.block5093, %vec.epilog.middle.block5120, %middle.block5004, %vec.epilog.middle.block5031, %bb.am, %RSTRING_PTR.exit2356
  %i.mu = sext i32 %.019193307 to i64             ; 5 uses
  %i.mv = icmp slt i64 %i.fc, %i.mu
  %i.mw = getelementptr i8, ptr %i.fa, i64 %i.fb  ; 5 uses
  br i1 %i.mv, label %bb.ar, label %case_conv.exit2868

bb.ar:                                            ; preds = %case_conv.exit
  %i.mx = load ptr, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %.not2301 = icmp ult ptr %i.mw, %i.mx
  br i1 %.not2301, label %bb.as, label %._crit_edge3719

._crit_edge3719:                                  ; preds = %bb.ar
  %.pre3728 = ptrtoint ptr %i.mw to i64
  br label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.my = ptrtoint ptr %i.mx to i64
  %i.mz = ptrtoint ptr %i.mw to i64               ; 2 uses
  %i.na = xor i64 %i.mz, -1
  %i.nb = add i64 %i.my, %i.na
  %.not2302 = icmp sgt i64 %i.nb, %i.mu
  br i1 %.not2302, label %buffer_size_check.exit2365, label %bb.at

bb.at:                                            ; preds = %._crit_edge3719, %bb.as
  %.pre-phi3729 = phi i64 [ %.pre3728, %._crit_edge3719 ], [ %i.mz, %bb.as ]
  %i.nc = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.nd = ptrtoint ptr %i.nc to i64
  %i.ne = sub i64 %.pre-phi3729, %i.nd            ; 5 uses
  %i.nf = shl nsw i64 %i.mu, 1
  %i.ng = add i64 %i.ne, %i.nf
  %i.nh = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %bb.at
  %.0.i2358 = phi i64 [ %i.nh, %bb.at ], [ %i.nj, %bb.au ] ; 6 uses
  %i.ni = icmp ult i64 %.0.i2358, %i.ng
  %i.nj = shl i64 %.0.i2358, 1
  br i1 %i.ni, label %bb.au, label %bb.av, !llvm.loop !20

bb.av:                                            ; preds = %bb.au
  %i.nk = icmp ult i64 %.0.i2358, %i.ne
  %i.nl = icmp ugt i64 %.0.i2358, %9
  %or.cond.i2359 = or i1 %i.nk, %i.nl
  br i1 %or.cond.i2359, label %resize_buffer.exit2363.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.ne) #11
  %i.nm = sub nuw i64 %.0.i2358, %i.ne
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.nm) #11
  %i.nn = load i64, ptr %i.h, align 8, !tbaa !11
  %i.no = and i64 %i.nn, 8192
  %.not.i.i2360 = icmp eq i64 %i.no, 0
  br i1 %.not.i.i2360, label %resize_buffer.exit2363, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.np = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %resize_buffer.exit2363

resize_buffer.exit2363:                           ; preds = %bb.aw, %bb.ax
  %i.nq = phi ptr [ %i.np, %bb.ax ], [ %i.m, %bb.aw ] ; 3 uses
  %i.nr = getelementptr i8, ptr %i.nq, i64 %.0.i2358
  store ptr %i.nr, ptr %i.b, align 8, !tbaa !17
  store ptr %i.nq, ptr %i.a, align 8, !tbaa !17
  %i.ns = getelementptr i8, ptr %i.nq, i64 %i.ne  ; 2 uses
  %.not.i2364 = icmp eq ptr %i.ns, null
  br i1 %.not.i2364, label %resize_buffer.exit2363.thread, label %buffer_size_check.exit2365

resize_buffer.exit2363.thread:                    ; preds = %bb.av, %resize_buffer.exit2363
  %i.nt = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01900) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.nt) #13
  unreachable

buffer_size_check.exit2365:                       ; preds = %resize_buffer.exit2363, %bb.as
  %.41906 = phi ptr [ %i.mw, %bb.as ], [ %i.ns, %resize_buffer.exit2363 ]
  %i.nu = sub i64 0, %i.fc                        ; 2 uses
  %i.nv = getelementptr i8, ptr %.41906, i64 %i.nu ; 3 uses
  %i.nw = getelementptr i8, ptr %i.nv, i64 %i.mu  ; 2 uses
  %i.nx = getelementptr i8, ptr %i.nw, i64 %i.nu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.nx, ptr noundef nonnull align 1 %i.nv, i64 noundef range(i64 -9223372036854775808, 2147483647) %i.fc, i1 noundef false) #11
  %.not2303 = icmp eq i8 %.019343304, 0
  %narrow2304 = select i1 %.not2303, i8 32, i8 %.019343304
  %i.ny = sub i64 %i.mu, %i.fc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.nv, i8 noundef %narrow2304, i64 noundef %i.ny, i1 noundef false) #11
  br label %case_conv.exit2868

bb.ay:                                            ; preds = %.lr.ph
  %i.nz = load i64, ptr %i.ag, align 8
  %i.oa = trunc i64 %i.nz to i32
  %i.ob = lshr i32 %i.oa, 13
  %i.oc = and i32 %i.ob, 31
  %i.od = call range(i32 0, 512) i32 @llvm.umax.i32(i32 range(i32 0, 512) %i.oc, i32 1)
  %i.oe = and i32 %.019243306, 1
  %.not2296 = icmp eq i32 %i.oe, 0
  %i.of = icmp slt i32 %.019193307, 1
  %i.og = select i1 %i.of, i32 2, i32 %.019193307
  %i.oh = select i1 %.not2296, i32 %i.og, i32 1   ; 2 uses
  %i.oi = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.oj = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = sub i64 %i.oj, %i.ok                    ; 6 uses
  %i.om = load ptr, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %.not2297 = icmp ult ptr %i.bl, %i.om
  %i.on = sext i32 %i.oh to i64                   ; 2 uses
  br i1 %.not2297, label %bb.az, label %._crit_edge3718

bb.az:                                            ; preds = %bb.ay
  %i.oo = ptrtoint ptr %i.om to i64
  %i.op = xor i64 %i.oj, -1
  %i.oq = add i64 %i.oo, %i.op
  %.not2298 = icmp sgt i64 %i.oq, %i.on
  br i1 %.not2298, label %buffer_size_check.exit2373, label %._crit_edge3718

._crit_edge3718:                                  ; preds = %bb.ay, %bb.az
  %i.or = shl nsw i64 %i.on, 1
  %i.os = add i64 %i.ol, %i.or
  %i.ot = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %._crit_edge3718
  %.0.i2366 = phi i64 [ %i.ot, %._crit_edge3718 ], [ %i.ov, %bb.ba ] ; 6 uses
  %i.ou = icmp ult i64 %.0.i2366, %i.os
  %i.ov = shl i64 %.0.i2366, 1
  br i1 %i.ou, label %bb.ba, label %bb.bb, !llvm.loop !20

bb.bb:                                            ; preds = %bb.ba
  %i.ow = icmp ult i64 %.0.i2366, %i.ol
  %i.ox = icmp ugt i64 %.0.i2366, %9
  %or.cond.i2367 = or i1 %i.ow, %i.ox
  br i1 %or.cond.i2367, label %resize_buffer.exit2371.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.ol) #11
  %i.oy = sub nuw i64 %.0.i2366, %i.ol
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.oy) #11
  %i.oz = load i64, ptr %i.h, align 8, !tbaa !11
  %i.pa = and i64 %i.oz, 8192
  %.not.i.i2368 = icmp eq i64 %i.pa, 0
  br i1 %.not.i.i2368, label %resize_buffer.exit2371, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.pb = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %resize_buffer.exit2371

resize_buffer.exit2371:                           ; preds = %bb.bc, %bb.bd
  %i.pc = phi ptr [ %i.pb, %bb.bd ], [ %i.m, %bb.bc ] ; 3 uses
  %i.pd = getelementptr i8, ptr %i.pc, i64 %.0.i2366
  store ptr %i.pd, ptr %i.b, align 8, !tbaa !17
  store ptr %i.pc, ptr %i.a, align 8, !tbaa !17
  %i.pe = getelementptr i8, ptr %i.pc, i64 %i.ol
  %.not.i2372 = icmp eq ptr %i.pe, null
  br i1 %.not.i2372, label %resize_buffer.exit2371.thread, label %buffer_size_check.exit2373

resize_buffer.exit2371.thread:                    ; preds = %bb.bb, %resize_buffer.exit2371
  %i.pf = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01900) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.pf) #13
  unreachable

buffer_size_check.exit2373:                       ; preds = %resize_buffer.exit2371, %bb.az
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.ol) #11
  %i.pg = icmp eq i8 %.019343304, 48
  %.not2299 = icmp eq i8 %.019343304, 0
  %i.ph = or i1 %i.pg, %.not2299
  %i.pi = select i1 %i.ph, i64 4, i64 0
  %i.pj = getelementptr i8, ptr @.str.2, i64 %i.pi
  %i.pk = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.pj, i32 noundef %i.oh, i32 noundef %i.od) #11 ; 0 uses
  %i.pl = load i64, ptr %i.h, align 8, !tbaa !11
  %i.pm = and i64 %i.pl, 8192
  %.not.i2374 = icmp eq i64 %i.pm, 0
  br i1 %.not.i2374, label %RSTRING_PTR.exit2375, label %bb.be

bb.be:                                            ; preds = %buffer_size_check.exit2373
  %i.pn = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %RSTRING_PTR.exit2375

RSTRING_PTR.exit2375:                             ; preds = %buffer_size_check.exit2373, %bb.be
  %i.po = phi ptr [ %i.pn, %bb.be ], [ %i.m, %buffer_size_check.exit2373 ] ; 3 uses
  %i.pp = load i64, ptr %i.i, align 8, !tbaa !14
  store ptr %i.po, ptr %i.a, align 8, !tbaa !17
  %i.pq = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.pr = getelementptr i8, ptr %i.po, i64 %i.pq
  store ptr %i.pr, ptr %i.b, align 8, !tbaa !17
  %i.ps = getelementptr i8, ptr %i.po, i64 %i.pp
  br label %case_conv.exit2868

bb.bf:                                            ; preds = %.lr.ph
  %i.pt = load i64, ptr %i.ag, align 8
  %i.pu = trunc i64 %i.pt to i32
  %i.pv = lshr i32 %i.pu, 18
  %i.pw = and i32 %i.pv, 31
  %i.px = call range(i32 0, 367) i32 @llvm.umin.i32(i32 range(i32 0, 512) %i.pw, i32 23)
  %i.py = and i32 %.019243306, 1
  %.not2292 = icmp eq i32 %i.py, 0
  %i.pz = icmp slt i32 %.019193307, 1
  %i.qa = select i1 %i.pz, i32 2, i32 %.019193307
  %i.qb = select i1 %.not2292, i32 %i.qa, i32 1   ; 2 uses
  %i.qc = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.qd = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.qe = ptrtoint ptr %i.qc to i64
  %i.qf = sub i64 %i.qd, %i.qe                    ; 6 uses
  %i.qg = load ptr, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %.not2293 = icmp ult ptr %i.bl, %i.qg
  %i.qh = sext i32 %i.qb to i64                   ; 2 uses
  br i1 %.not2293, label %bb.bg, label %._crit_edge3717

bb.bg:                                            ; preds = %bb.bf
  %i.qi = ptrtoint ptr %i.qg to i64
  %i.qj = xor i64 %i.qd, -1
  %i.qk = add i64 %i.qi, %i.qj
  %.not2294 = icmp sgt i64 %i.qk, %i.qh
  br i1 %.not2294, label %buffer_size_check.exit2383, label %._crit_edge3717

._crit_edge3717:                                  ; preds = %bb.bf, %bb.bg
  %i.ql = shl nsw i64 %i.qh, 1
  %i.qm = add i64 %i.qf, %i.ql
  %i.qn = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %._crit_edge3717
  %.0.i2376 = phi i64 [ %i.qn, %._crit_edge3717 ], [ %i.qp, %bb.bh ] ; 6 uses
  %i.qo = icmp ult i64 %.0.i2376, %i.qm
  %i.qp = shl i64 %.0.i2376, 1
  br i1 %i.qo, label %bb.bh, label %bb.bi, !llvm.loop !20

bb.bi:                                            ; preds = %bb.bh
  %i.qq = icmp ult i64 %.0.i2376, %i.qf
  %i.qr = icmp ugt i64 %.0.i2376, %9
  %or.cond.i2377 = or i1 %i.qq, %i.qr
  br i1 %or.cond.i2377, label %resize_buffer.exit2381.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.qf) #11
  %i.qs = sub nuw i64 %.0.i2376, %i.qf
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.qs) #11
  %i.qt = load i64, ptr %i.h, align 8, !tbaa !11
  %i.qu = and i64 %i.qt, 8192
  %.not.i.i2378 = icmp eq i64 %i.qu, 0
  br i1 %.not.i.i2378, label %resize_buffer.exit2381, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.qv = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %resize_buffer.exit2381

resize_buffer.exit2381:                           ; preds = %bb.bj, %bb.bk
  %i.qw = phi ptr [ %i.qv, %bb.bk ], [ %i.m, %bb.bj ] ; 3 uses
  %i.qx = getelementptr i8, ptr %i.qw, i64 %.0.i2376
  store ptr %i.qx, ptr %i.b, align 8, !tbaa !17
  store ptr %i.qw, ptr %i.a, align 8, !tbaa !17
  %i.qy = getelementptr i8, ptr %i.qw, i64 %i.qf
  %.not.i2382 = icmp eq ptr %i.qy, null
  br i1 %.not.i2382, label %resize_buffer.exit2381.thread, label %buffer_size_check.exit2383

resize_buffer.exit2381.thread:                    ; preds = %bb.bi, %resize_buffer.exit2381
  %i.qz = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01900) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.qz) #13
  unreachable

buffer_size_check.exit2383:                       ; preds = %resize_buffer.exit2381, %bb.bg
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.qf) #11
  %i.ra = icmp eq i8 %.019343304, 48
  %.not2295 = icmp eq i8 %.019343304, 0
  %i.rb = or i1 %i.ra, %.not2295
  %i.rc = select i1 %i.rb, i64 4, i64 0
  %i.rd = getelementptr i8, ptr @.str.2, i64 %i.rc
  %i.re = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.rd, i32 noundef %i.qb, i32 noundef %i.px) #11 ; 0 uses
  %i.rf = load i64, ptr %i.h, align 8, !tbaa !11
  %i.rg = and i64 %i.rf, 8192
  %.not.i2384 = icmp eq i64 %i.rg, 0
  br i1 %.not.i2384, label %RSTRING_PTR.exit2385, label %bb.bl

bb.bl:                                            ; preds = %buffer_size_check.exit2383
  %i.rh = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %RSTRING_PTR.exit2385

RSTRING_PTR.exit2385:                             ; preds = %buffer_size_check.exit2383, %bb.bl
  %i.ri = phi ptr [ %i.rh, %bb.bl ], [ %i.m, %buffer_size_check.exit2383 ] ; 3 uses
  %i.rj = load i64, ptr %i.i, align 8, !tbaa !14
  store ptr %i.ri, ptr %i.a, align 8, !tbaa !17
  %i.rk = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.rl = getelementptr i8, ptr %i.ri, i64 %i.rk
  store ptr %i.rl, ptr %i.b, align 8, !tbaa !17
  %i.rm = getelementptr i8, ptr %i.ri, i64 %i.rj
  br label %case_conv.exit2868

bb.bm:                                            ; preds = %.lr.ph
  %i.rn = load i64, ptr %i.ag, align 8
  %i.ro = trunc i64 %i.rn to i32
  %i.rp = lshr i32 %i.ro, 18
  %i.rq = and i32 %i.rp, 31                       ; 3 uses
  %i.rr = call range(i32 0, 367) i32 @llvm.umin.i32(i32 range(i32 0, 512) %i.rq, i32 23) ; 2 uses
  %i.rs = icmp eq i32 %i.rq, 0
  %i.rt = icmp samesign ugt i32 %i.rq, 12
end_hunk_0
begin_hunk_1_@rb_strftime_with_timespec:bb.a
  %.013.i2591 = phi i64 [ %i.bzr, %bb.jy ], [ %.013.i2591.ph, %.preheader.i2590.preheader ]
  %.0.i2592 = phi ptr [ %i.bzq, %bb.jy ], [ %.0.i2592.ph, %.preheader.i2590.preheader ] ; 3 uses
  %i.bzl = load i8, ptr %.0.i2592, align 1, !tbaa !16 ; 2 uses
  %i.bzm = sext i8 %i.bzl to i32
  %i.bzn = add nsw i32 %i.bzm, -123
  %i.bzo = icmp ult i32 %i.bzn, -26
  br i1 %i.bzo, label %bb.jy, label %bb.jx

bb.jx:                                            ; preds = %.preheader.i2590
  %i.bzp = and i8 %i.bzl, 95
  store i8 %i.bzp, ptr %.0.i2592, align 1, !tbaa !16
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jx, %.preheader.i2590
  %i.bzq = getelementptr i8, ptr %.0.i2592, i64 1
  %i.bzr = add nsw i64 %.013.i2591, -1            ; 2 uses
  %.not19.i2593 = icmp eq i64 %i.bzr, 0
  br i1 %.not19.i2593, label %case_conv.exit2594, label %.preheader.i2590, !llvm.loop !56

.preheader20.i2585:                               ; preds = %.preheader20.i2585.preheader, %bb.ka
  %.114.i2586 = phi i64 [ %i.bzy, %bb.ka ], [ %.114.i2586.ph, %.preheader20.i2585.preheader ]
  %.1.i2587 = phi ptr [ %i.bzx, %bb.ka ], [ %.1.i2587.ph, %.preheader20.i2585.preheader ] ; 3 uses
  %i.bzs = load i8, ptr %.1.i2587, align 1, !tbaa !16 ; 2 uses
  %i.bzt = sext i8 %i.bzs to i32
  %i.bzu = add nsw i32 %i.bzt, -91
  %i.bzv = icmp ult i32 %i.bzu, -26
  br i1 %i.bzv, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %.preheader20.i2585
  %i.bzw = or i8 %i.bzs, 32
  store i8 %i.bzw, ptr %.1.i2587, align 1, !tbaa !16
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %.preheader20.i2585
  %i.bzx = getelementptr i8, ptr %.1.i2587, i64 1
  %i.bzy = add nsw i64 %.114.i2586, -1            ; 2 uses
  %.not17.i2588 = icmp eq i64 %i.bzy, 0
  br i1 %.not17.i2588, label %case_conv.exit2594, label %.preheader20.i2585, !llvm.loop !57

case_conv.exit2594:                               ; preds = %bb.ka, %bb.jy, %middle.block5627, %vec.epilog.middle.block5654, %middle.block5538, %vec.epilog.middle.block5565, %bb.jw, %RSTRING_PTR.exit2584
  %i.bzz = sext i32 %.019193307 to i64            ; 5 uses
  %i.caa = icmp slt i64 %i.bsh, %i.bzz
  %i.cab = getelementptr i8, ptr %i.bsf, i64 %i.bsg ; 5 uses
  br i1 %i.caa, label %bb.kb, label %case_conv.exit2868

bb.kb:                                            ; preds = %case_conv.exit2594
  %i.cac = load ptr, ptr %i.b, align 8, !tbaa !17 ; 2 uses
  %.not2185 = icmp ult ptr %i.cab, %i.cac
  br i1 %.not2185, label %bb.kc, label %._crit_edge3698

._crit_edge3698:                                  ; preds = %bb.kb
  %.pre3772 = ptrtoint ptr %i.cab to i64
  br label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  %i.cad = ptrtoint ptr %i.cac to i64
  %i.cae = ptrtoint ptr %i.cab to i64             ; 2 uses
  %i.caf = xor i64 %i.cae, -1
  %i.cag = add i64 %i.cad, %i.caf
  %.not2186 = icmp sgt i64 %i.cag, %i.bzz
  br i1 %.not2186, label %buffer_size_check.exit2602, label %bb.kd

bb.kd:                                            ; preds = %._crit_edge3698, %bb.kc
  %.pre-phi3773 = phi i64 [ %.pre3772, %._crit_edge3698 ], [ %i.cae, %bb.kc ]
  %i.cah = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.cai = ptrtoint ptr %i.cah to i64
  %i.caj = sub i64 %.pre-phi3773, %i.cai          ; 5 uses
  %i.cak = shl nsw i64 %i.bzz, 1
  %i.cal = add i64 %i.caj, %i.cak
  %i.cam = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.ke

bb.ke:                                            ; preds = %bb.ke, %bb.kd
  %.0.i2595 = phi i64 [ %i.cam, %bb.kd ], [ %i.cao, %bb.ke ] ; 6 uses
  %i.can = icmp ult i64 %.0.i2595, %i.cal
  %i.cao = shl i64 %.0.i2595, 1
  br i1 %i.can, label %bb.ke, label %bb.kf, !llvm.loop !20

bb.kf:                                            ; preds = %bb.ke
  %i.cap = icmp ult i64 %.0.i2595, %i.caj
  %i.caq = icmp ugt i64 %.0.i2595, %9
  %or.cond.i2596 = or i1 %i.cap, %i.caq
  br i1 %or.cond.i2596, label %resize_buffer.exit2600.thread, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.caj) #11
  %i.car = sub nuw i64 %.0.i2595, %i.caj
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.car) #11
  %i.cas = load i64, ptr %i.h, align 8, !tbaa !11
  %i.cat = and i64 %i.cas, 8192
  %.not.i.i2597 = icmp eq i64 %i.cat, 0
  br i1 %.not.i.i2597, label %resize_buffer.exit2600, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.cau = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %resize_buffer.exit2600

resize_buffer.exit2600:                           ; preds = %bb.kg, %bb.kh
  %i.cav = phi ptr [ %i.cau, %bb.kh ], [ %i.m, %bb.kg ] ; 3 uses
  %i.caw = getelementptr i8, ptr %i.cav, i64 %.0.i2595
  store ptr %i.caw, ptr %i.b, align 8, !tbaa !17
  store ptr %i.cav, ptr %i.a, align 8, !tbaa !17
  %i.cax = getelementptr i8, ptr %i.cav, i64 %i.caj ; 2 uses
  %.not.i2601 = icmp eq ptr %i.cax, null
  br i1 %.not.i2601, label %resize_buffer.exit2600.thread, label %buffer_size_check.exit2602

resize_buffer.exit2600.thread:                    ; preds = %bb.kf, %resize_buffer.exit2600
  %i.cay = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01900) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.cay) #13
  unreachable

buffer_size_check.exit2602:                       ; preds = %resize_buffer.exit2600, %bb.kc
  %.19 = phi ptr [ %i.cab, %bb.kc ], [ %i.cax, %resize_buffer.exit2600 ]
  %i.caz = sub i64 0, %i.bsh                      ; 2 uses
  %i.cba = getelementptr i8, ptr %.19, i64 %i.caz ; 3 uses
  %i.cbb = getelementptr i8, ptr %i.cba, i64 %i.bzz ; 2 uses
  %i.cbc = getelementptr i8, ptr %i.cbb, i64 %i.caz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.cbc, ptr noundef nonnull align 1 %i.cba, i64 noundef range(i64 -9223372036854775808, 2147483647) %i.bsh, i1 noundef false) #11
  %.not2187 = icmp eq i8 %.019343304, 0
  %narrow2188 = select i1 %.not2187, i8 32, i8 %.019343304
  %i.cbd = sub i64 %i.bzz, %i.bsh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.cba, i8 noundef %narrow2188, i64 noundef %i.cbd, i1 noundef false) #11
  br label %case_conv.exit2868

bb.ki:                                            ; preds = %.lr.ph
  %i.cbe = and i32 %.019243306, 1
  %.not2181 = icmp eq i32 %i.cbe, 0
  %i.cbf = icmp slt i32 %.019193307, 1
  %i.cbg = select i1 %i.cbf, i32 2, i32 %.019193307
  %i.cbh = select i1 %.not2181, i32 %i.cbg, i32 1 ; 2 uses
  %i.cbi = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.cbj = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.cbk = ptrtoint ptr %i.cbi to i64
  %i.cbl = sub i64 %i.cbj, %i.cbk                 ; 6 uses
  %i.cbm = load ptr, ptr %i.b, align 8, !tbaa !17 ; 2 uses
  %.not2182 = icmp ult ptr %i.bl, %i.cbm
  %i.cbn = sext i32 %i.cbh to i64                 ; 2 uses
  br i1 %.not2182, label %bb.kj, label %._crit_edge3697

bb.kj:                                            ; preds = %bb.ki
  %i.cbo = ptrtoint ptr %i.cbm to i64
  %i.cbp = xor i64 %i.cbj, -1
  %i.cbq = add i64 %i.cbo, %i.cbp
  %.not2183 = icmp sgt i64 %i.cbq, %i.cbn
  br i1 %.not2183, label %buffer_size_check.exit2610, label %._crit_edge3697

._crit_edge3697:                                  ; preds = %bb.ki, %bb.kj
  %i.cbr = shl nsw i64 %i.cbn, 1
  %i.cbs = add i64 %i.cbl, %i.cbr
  %i.cbt = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kk, %._crit_edge3697
  %.0.i2603 = phi i64 [ %i.cbt, %._crit_edge3697 ], [ %i.cbv, %bb.kk ] ; 6 uses
  %i.cbu = icmp ult i64 %.0.i2603, %i.cbs
  %i.cbv = shl i64 %.0.i2603, 1
  br i1 %i.cbu, label %bb.kk, label %bb.kl, !llvm.loop !20

bb.kl:                                            ; preds = %bb.kk
  %i.cbw = icmp ult i64 %.0.i2603, %i.cbl
  %i.cbx = icmp ugt i64 %.0.i2603, %9
  %or.cond.i2604 = or i1 %i.cbw, %i.cbx
  br i1 %or.cond.i2604, label %resize_buffer.exit2608.thread, label %bb.km

bb.km:                                            ; preds = %bb.kl
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.cbl) #11
  %i.cby = sub nuw i64 %.0.i2603, %i.cbl
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.cby) #11
  %i.cbz = load i64, ptr %i.h, align 8, !tbaa !11
  %i.cca = and i64 %i.cbz, 8192
  %.not.i.i2605 = icmp eq i64 %i.cca, 0
  br i1 %.not.i.i2605, label %resize_buffer.exit2608, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.ccb = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %resize_buffer.exit2608

resize_buffer.exit2608:                           ; preds = %bb.km, %bb.kn
  %i.ccc = phi ptr [ %i.ccb, %bb.kn ], [ %i.m, %bb.km ] ; 3 uses
  %i.ccd = getelementptr i8, ptr %i.ccc, i64 %.0.i2603
  store ptr %i.ccd, ptr %i.b, align 8, !tbaa !17
  store ptr %i.ccc, ptr %i.a, align 8, !tbaa !17
  %i.cce = getelementptr i8, ptr %i.ccc, i64 %i.cbl
  %.not.i2609 = icmp eq ptr %i.cce, null
  br i1 %.not.i2609, label %resize_buffer.exit2608.thread, label %buffer_size_check.exit2610

resize_buffer.exit2608.thread:                    ; preds = %bb.kl, %resize_buffer.exit2608
  %i.ccf = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01900) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.ccf) #13
  unreachable

buffer_size_check.exit2610:                       ; preds = %resize_buffer.exit2608, %bb.kj
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.cbl) #11
  %i.ccg = icmp eq i8 %.019343304, 48
  %i.cch = select i1 %i.ccg, i64 4, i64 0
  %i.cci = getelementptr i8, ptr @.str.2, i64 %i.cch
  %i.ccj = load i64, ptr %i.ag, align 8
  %i.cck = trunc i64 %i.ccj to i32
  %i.ccl = lshr i32 %i.cck, 13
  %i.ccm = and i32 %i.ccl, 31
  %i.ccn = call range(i32 0, 512) i32 @llvm.umax.i32(i32 range(i32 0, 512) %i.ccm, i32 1)
  %i.cco = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.cci, i32 noundef %i.cbh, i32 noundef %i.ccn) #11 ; 0 uses
  %i.ccp = load i64, ptr %i.h, align 8, !tbaa !11
  %i.ccq = and i64 %i.ccp, 8192
  %.not.i2611 = icmp eq i64 %i.ccq, 0
  br i1 %.not.i2611, label %RSTRING_PTR.exit2612, label %bb.ko

bb.ko:                                            ; preds = %buffer_size_check.exit2610
  %i.ccr = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %RSTRING_PTR.exit2612

RSTRING_PTR.exit2612:                             ; preds = %buffer_size_check.exit2610, %bb.ko
  %i.ccs = phi ptr [ %i.ccr, %bb.ko ], [ %i.m, %buffer_size_check.exit2610 ] ; 3 uses
  %i.cct = load i64, ptr %i.i, align 8, !tbaa !14
  store ptr %i.ccs, ptr %i.a, align 8, !tbaa !17
  %i.ccu = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.ccv = getelementptr i8, ptr %i.ccs, i64 %i.ccu
  store ptr %i.ccv, ptr %i.b, align 8, !tbaa !17
  %i.ccw = getelementptr i8, ptr %i.ccs, i64 %i.cct
  br label %case_conv.exit2868

bb.kp:                                            ; preds = %.lr.ph
  %i.ccx = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.ccy = ptrtoint ptr %i.bl to i64
  %i.ccz = ptrtoint ptr %i.ccx to i64
  %i.cda = sub i64 %i.ccy, %i.ccz                 ; 3 uses
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.cda) #11
  %i.cdb = call fastcc i64 @rb_strftime_with_timespec(i64 noundef %0, ptr noundef nonnull @.str.13, i64 noundef 11, ptr noundef %.01900, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i32 noundef %8, i64 noundef %9)
  %.not2176 = icmp eq i64 %i.cdb, 0
  br i1 %.not2176, label %.loopexit2998, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.cdc = load i64, ptr %i.h, align 8, !tbaa !11
  %i.cdd = and i64 %i.cdc, 8192
  %.not.i2613 = icmp eq i64 %i.cdd, 0
  br i1 %.not.i2613, label %RSTRING_PTR.exit2614, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.cde = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %RSTRING_PTR.exit2614

RSTRING_PTR.exit2614:                             ; preds = %bb.kq, %bb.kr
  %i.cdf = phi ptr [ %i.cde, %bb.kr ], [ %i.m, %bb.kq ] ; 4 uses
  %i.cdg = load i64, ptr %i.i, align 8, !tbaa !14 ; 2 uses
  %i.cdh = sub i64 %i.cdg, %i.cda                 ; 25 uses
  store ptr %i.cdf, ptr %i.a, align 8, !tbaa !17
  %i.cdi = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.cdj = getelementptr i8, ptr %i.cdf, i64 %i.cdi
  store ptr %i.cdj, ptr %i.b, align 8, !tbaa !17
  %i.cdk = icmp sgt i64 %i.cdh, 0
  br i1 %i.cdk, label %bb.ks, label %case_conv.exit2624

bb.ks:                                            ; preds = %RSTRING_PTR.exit2614
  %i.cdl = getelementptr i8, ptr %i.cdf, i64 %i.cda ; 46 uses
  %i.cdm = and i32 %.019243306, 12
  switch i32 %i.cdm, label %case_conv.exit2624 [
    i32 8, label %iter.check5720
    i32 4, label %iter.check5809
  ]

iter.check5809:                                   ; preds = %bb.ks
  %min.iters.check5747 = icmp ult i64 %i.cdh, 4
  br i1 %min.iters.check5747, label %.preheader20.i2615.preheader, label %vector.main.loop.iter.check5748

vector.main.loop.iter.check5748:                  ; preds = %iter.check5809
  %min.iters.check5749 = icmp ult i64 %i.cdh, 16
  br i1 %min.iters.check5749, label %vec.epilog.ph5813, label %vector.ph5750

vector.ph5750:                                    ; preds = %vector.main.loop.iter.check5748
  %n.mod.vf5751 = and i64 %i.cdh, 12
  %n.vec5752 = and i64 %i.cdh, 9223372036854775792 ; 4 uses
  %i.cdn = and i64 %i.cdh, 15
  %i.cdo = getelementptr i8, ptr %i.cdl, i64 %n.vec5752
  br label %vector.body5753

vector.body5753:                                  ; preds = %pred.store.continue5803, %vector.ph5750
  %index5754 = phi i64 [ 0, %vector.ph5750 ], [ %index.next5804, %pred.store.continue5803 ] ; 17 uses
  %next.gep5755 = getelementptr i8, ptr %i.cdl, i64 %index5754 ; 2 uses
  %i.cdp = getelementptr i8, ptr %i.cdl, i64 %index5754
  %next.gep5756 = getelementptr i8, ptr %i.cdp, i64 1
  %i.cdq = getelementptr i8, ptr %i.cdl, i64 %index5754
  %next.gep5757 = getelementptr i8, ptr %i.cdq, i64 2
  %i.cdr = getelementptr i8, ptr %i.cdl, i64 %index5754
  %next.gep5758 = getelementptr i8, ptr %i.cdr, i64 3
  %i.cds = getelementptr i8, ptr %i.cdl, i64 %index5754
  %next.gep5759 = getelementptr i8, ptr %i.cds, i64 4
  %i.cdt = getelementptr i8, ptr %i.cdl, i64 %index5754
  %next.gep5760 = getelementptr i8, ptr %i.cdt, i64 5
  %i.cdu = getelementptr i8, ptr %i.cdl, i64 %index5754
  %next.gep5761 = getelementptr i8, ptr %i.cdu, i64 6
  %i.cdv = getelementptr i8, ptr %i.cdl, i64 %index5754
  %next.gep5762 = getelementptr i8, ptr %i.cdv, i64 7
  %i.cdw = getelementptr i8, ptr %i.cdl, i64 %index5754
  %next.gep5763 = getelementptr i8, ptr %i.cdw, i64 8
  %i.cdx = getelementptr i8, ptr %i.cdl, i64 %index5754
  %next.gep5764 = getelementptr i8, ptr %i.cdx, i64 9
  %i.cdy = getelementptr i8, ptr %i.cdl, i64 %index5754
  %next.gep5765 = getelementptr i8, ptr %i.cdy, i64 10
  %i.cdz = getelementptr i8, ptr %i.cdl, i64 %index5754
  %next.gep5766 = getelementptr i8, ptr %i.cdz, i64 11
  %i.cea = getelementptr i8, ptr %i.cdl, i64 %index5754
  %next.gep5767 = getelementptr i8, ptr %i.cea, i64 12
  %i.ceb = getelementptr i8, ptr %i.cdl, i64 %index5754
  %next.gep5768 = getelementptr i8, ptr %i.ceb, i64 13
  %i.cec = getelementptr i8, ptr %i.cdl, i64 %index5754
  %next.gep5769 = getelementptr i8, ptr %i.cec, i64 14
  %i.ced = getelementptr i8, ptr %i.cdl, i64 %index5754
  %next.gep5770 = getelementptr i8, ptr %i.ced, i64 15
  %wide.load5771 = load <16 x i8>, ptr %next.gep5755, align 1, !tbaa !16 ; 17 uses
  %i.cee = sext <16 x i8> %wide.load5771 to <16 x i32>
  %i.cef = add nsw <16 x i32> %i.cee, splat (i32 -65)
  %i.ceg = icmp ult <16 x i32> %i.cef, splat (i32 26) ; 16 uses
  %i.ceh = extractelement <16 x i1> %i.ceg, i64 0
  br i1 %i.ceh, label %pred.store.if5772, label %pred.store.continue5773

pred.store.if5772:                                ; preds = %vector.body5753
  %i.cei = extractelement <16 x i8> %wide.load5771, i64 0
  %i.cej = or i8 %i.cei, 32
  store i8 %i.cej, ptr %next.gep5755, align 1, !tbaa !16
  br label %pred.store.continue5773

pred.store.continue5773:                          ; preds = %pred.store.if5772, %vector.body5753
  %i.cek = extractelement <16 x i1> %i.ceg, i64 1
  br i1 %i.cek, label %pred.store.if5774, label %pred.store.continue5775

pred.store.if5774:                                ; preds = %pred.store.continue5773
  %i.cel = extractelement <16 x i8> %wide.load5771, i64 1
  %i.cem = or i8 %i.cel, 32
  store i8 %i.cem, ptr %next.gep5756, align 1, !tbaa !16
  br label %pred.store.continue5775

pred.store.continue5775:                          ; preds = %pred.store.if5774, %pred.store.continue5773
  %i.cen = extractelement <16 x i1> %i.ceg, i64 2
  br i1 %i.cen, label %pred.store.if5776, label %pred.store.continue5777

pred.store.if5776:                                ; preds = %pred.store.continue5775
  %i.ceo = extractelement <16 x i8> %wide.load5771, i64 2
  %i.cep = or i8 %i.ceo, 32
  store i8 %i.cep, ptr %next.gep5757, align 1, !tbaa !16
  br label %pred.store.continue5777

pred.store.continue5777:                          ; preds = %pred.store.if5776, %pred.store.continue5775
  %i.ceq = extractelement <16 x i1> %i.ceg, i64 3
  br i1 %i.ceq, label %pred.store.if5778, label %pred.store.continue5779

pred.store.if5778:                                ; preds = %pred.store.continue5777
  %i.cer = extractelement <16 x i8> %wide.load5771, i64 3
  %i.ces = or i8 %i.cer, 32
  store i8 %i.ces, ptr %next.gep5758, align 1, !tbaa !16
  br label %pred.store.continue5779

pred.store.continue5779:                          ; preds = %pred.store.if5778, %pred.store.continue5777
  %i.cet = extractelement <16 x i1> %i.ceg, i64 4
  br i1 %i.cet, label %pred.store.if5780, label %pred.store.continue5781

pred.store.if5780:                                ; preds = %pred.store.continue5779
  %i.ceu = extractelement <16 x i8> %wide.load5771, i64 4
  %i.cev = or i8 %i.ceu, 32
  store i8 %i.cev, ptr %next.gep5759, align 1, !tbaa !16
  br label %pred.store.continue5781

pred.store.continue5781:                          ; preds = %pred.store.if5780, %pred.store.continue5779
  %i.cew = extractelement <16 x i1> %i.ceg, i64 5
  br i1 %i.cew, label %pred.store.if5782, label %pred.store.continue5783

pred.store.if5782:                                ; preds = %pred.store.continue5781
  %i.cex = extractelement <16 x i8> %wide.load5771, i64 5
  %i.cey = or i8 %i.cex, 32
  store i8 %i.cey, ptr %next.gep5760, align 1, !tbaa !16
  br label %pred.store.continue5783

pred.store.continue5783:                          ; preds = %pred.store.if5782, %pred.store.continue5781
  %i.cez = extractelement <16 x i1> %i.ceg, i64 6
  br i1 %i.cez, label %pred.store.if5784, label %pred.store.continue5785

pred.store.if5784:                                ; preds = %pred.store.continue5783
  %i.cfa = extractelement <16 x i8> %wide.load5771, i64 6
  %i.cfb = or i8 %i.cfa, 32
  store i8 %i.cfb, ptr %next.gep5761, align 1, !tbaa !16
  br label %pred.store.continue5785

pred.store.continue5785:                          ; preds = %pred.store.if5784, %pred.store.continue5783
  %i.cfc = extractelement <16 x i1> %i.ceg, i64 7
  br i1 %i.cfc, label %pred.store.if5786, label %pred.store.continue5787

pred.store.if5786:                                ; preds = %pred.store.continue5785
  %i.cfd = extractelement <16 x i8> %wide.load5771, i64 7
  %i.cfe = or i8 %i.cfd, 32
  store i8 %i.cfe, ptr %next.gep5762, align 1, !tbaa !16
  br label %pred.store.continue5787

pred.store.continue5787:                          ; preds = %pred.store.if5786, %pred.store.continue5785
  %i.cff = extractelement <16 x i1> %i.ceg, i64 8
  br i1 %i.cff, label %pred.store.if5788, label %pred.store.continue5789

pred.store.if5788:                                ; preds = %pred.store.continue5787
  %i.cfg = extractelement <16 x i8> %wide.load5771, i64 8
  %i.cfh = or i8 %i.cfg, 32
  store i8 %i.cfh, ptr %next.gep5763, align 1, !tbaa !16
  br label %pred.store.continue5789

end_hunk_1
