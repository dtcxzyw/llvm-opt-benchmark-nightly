Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTF2Importer?download=true
inline.NumInlined: 10361
inline.NumDeleted: 3521
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E5ParseEPKcm:bb.a
  store i32 1, ptr %i.as, align 8
  br label %.thread156

bb.n:                                             ; preds = %bb.l, %_ZN9rapidjson12CrtAllocator6MallocEm.exit
  %i.at = icmp ugt i64 %2, %spec.select
  br i1 %i.at, label %.lr.ph213, label %._crit_edge214

.lr.ph213:                                        ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16
  br i1 %i.u, label %.lr.ph213.split.us, label %.lr.ph213.split

.lr.ph213.split.us:                               ; preds = %.lr.ph213, %.thread154.us
  %.1100211.us = phi i64 [ %.2101.lcssa.us, %.thread154.us ], [ 1, %.lr.ph213 ]
  %.0109210.us = phi ptr [ %i.cn, %.thread154.us ], [ %i.r, %.lr.ph213 ] ; 4 uses
  %.0116209.us = phi ptr [ %i.dc, %.thread154.us ], [ %.0.i, %.lr.ph213 ] ; 7 uses
  %i.az = add nuw i64 %.1100211.us, 1             ; 3 uses
  store ptr %.0109210.us, ptr %.0116209.us, align 8
  %i.ba = icmp ult i64 %i.az, %2
  br i1 %i.ba, label %.lr.ph185.us, label %.critedge.us

.lr.ph185.us:                                     ; preds = %.lr.ph213.split.us, %bb.x
  %.093183.us.us = phi i1 [ %.5.us.us, %bb.x ], [ true, %.lr.ph213.split.us ] ; 2 uses
  %.2101182.us.us = phi i64 [ %.7106.us.us, %bb.x ], [ %i.az, %.lr.ph213.split.us ] ; 11 uses
  %.1110181.us.us = phi ptr [ %.5114.us.us, %bb.x ], [ %.0109210.us, %.lr.ph213.split.us ] ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %.2101182.us.us ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1             ; 9 uses
  switch i8 %i.bc, label %bb.o [
    i8 47, label %.critedge.us.loopexit
    i8 37, label %bb.p
  ]

bb.o:                                             ; preds = %.lr.ph185.us
  %i.bd = add i8 %i.bc, -48
  %or.cond.i.us.us = icmp ult i8 %i.bd, 10
  %i.be = and i8 %i.bc, -33
  %i.bf = add i8 %i.be, -65
  %i.bg = icmp ult i8 %i.bf, 26
  %or.cond28.i.us.us = or i1 %or.cond.i.us.us, %i.bg
  br i1 %or.cond28.i.us.us, label %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit.thread.us.us, label %switch.early.test.i.us.us

switch.early.test.i.us.us:                        ; preds = %bb.o
  switch i8 %i.bc, label %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit [
    i8 95, label %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit.thread.us.us
    i8 46, label %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit.thread.us.us
    i8 45, label %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit.thread.us.us
    i8 126, label %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit.thread.us.us
  ]

bb.p:                                             ; preds = %.lr.ph185.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %i.bb, ptr %3, align 8
  store ptr %i.bb, ptr %i.au, align 8
  store ptr %i.e, ptr %i.av, align 8
  store i8 1, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store ptr %.1110181.us.us, ptr %4, align 8
  store ptr %.1110181.us.us, ptr %i.ay, align 8
  store ptr %.1110181.us.us, ptr %i.ax, align 8
  %i.bh = call noundef zeroext i1 @_ZN9rapidjson4UTF8IcE8ValidateINS_14GenericPointerINS_12GenericValueIS1_NS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_E19PercentDecodeStreamENS_25GenericInsituStringStreamIS1_EEEEbRT_RT0_(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.bi = load i8, ptr %i.aw, align 8, !range !45
  %i.bj = trunc nuw i8 %i.bi to i1
  %or.cond162.us.us = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %or.cond162.us.us, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.bk = load ptr, ptr %i.ax, align 8
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %.1110181.us.us to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = load ptr, ptr %3, align 8
  %i.bp = load ptr, ptr %i.au, align 8
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 2 uses
  %i.bt = icmp eq i64 %i.bn, 1
  br i1 %i.bt, label %.thread141.us.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %.1110181.us.us, i64 %i.bn
  %.3102.us.us = add i64 %i.bs, %.2101182.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.x

.thread141.us.us:                                 ; preds = %bb.q
  %i.bv = load i8, ptr %.1110181.us.us, align 1
  %i.bw = add i64 %.2101182.us.us, -1
  %.3102147.us.us = add i64 %i.bw, %i.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit.thread.us.us

_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit.thread.us.us: ; preds = %.thread141.us.us, %switch.early.test.i.us.us, %switch.early.test.i.us.us, %switch.early.test.i.us.us, %switch.early.test.i.us.us, %bb.o
  %.5104.us.us = phi i64 [ %.3102147.us.us, %.thread141.us.us ], [ %.2101182.us.us, %bb.o ], [ %.2101182.us.us, %switch.early.test.i.us.us ], [ %.2101182.us.us, %switch.early.test.i.us.us ], [ %.2101182.us.us, %switch.early.test.i.us.us ], [ %.2101182.us.us, %switch.early.test.i.us.us ] ; 2 uses
  %.290.us.us = phi i8 [ %i.bv, %.thread141.us.us ], [ %i.bc, %bb.o ], [ %i.bc, %switch.early.test.i.us.us ], [ %i.bc, %switch.early.test.i.us.us ], [ %i.bc, %switch.early.test.i.us.us ], [ %i.bc, %switch.early.test.i.us.us ] ; 2 uses
  %i.bx = add i64 %.5104.us.us, 1                 ; 5 uses
  %i.by = icmp eq i8 %.290.us.us, 126
  br i1 %i.by, label %bb.s, label %bb.w

bb.s:                                             ; preds = %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit.thread.us.us
  %i.bz = icmp ult i64 %i.bx, %2
  br i1 %i.bz, label %bb.t, label %.split.us

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.cb = load i8, ptr %i.ca, align 1
  switch i8 %i.cb, label %.split199.us [
    i8 48, label %bb.v
    i8 49, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.391.us.us = phi i8 [ 47, %bb.u ], [ 126, %bb.t ]
  %i.cc = add i64 %.5104.us.us, 2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit.thread.us.us
  %.6105.us.us = phi i64 [ %i.cc, %bb.v ], [ %i.bx, %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit.thread.us.us ]
  %.492.us.us = phi i8 [ %.391.us.us, %bb.v ], [ %.290.us.us, %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit.thread.us.us ] ; 2 uses
  %i.cd = add i8 %.492.us.us, -48
  %or.cond.us.us = icmp ult i8 %i.cd, 10
  %spec.select132.us.us = select i1 %or.cond.us.us, i1 %.093183.us.us, i1 false
  %i.ce = getelementptr inbounds nuw i8, ptr %.1110181.us.us, i64 1
  store i8 %.492.us.us, ptr %.1110181.us.us, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.r
  %.5114.us.us = phi ptr [ %i.ce, %bb.w ], [ %i.bu, %bb.r ] ; 2 uses
  %.7106.us.us = phi i64 [ %.6105.us.us, %bb.w ], [ %.3102.us.us, %bb.r ] ; 3 uses
  %.5.us.us = phi i1 [ %spec.select132.us.us, %bb.w ], [ false, %bb.r ] ; 2 uses
  %i.cf = icmp ult i64 %.7106.us.us, %2
  br i1 %i.cf, label %.lr.ph185.us, label %.critedge.us.loopexit

.critedge.us.loopexit:                            ; preds = %bb.x, %.lr.ph185.us
  %.1110.lcssa.us.ph = phi ptr [ %.1110181.us.us, %.lr.ph185.us ], [ %.5114.us.us, %bb.x ]
  %.2101.lcssa.us.ph = phi i64 [ %.2101182.us.us, %.lr.ph185.us ], [ %.7106.us.us, %bb.x ]
  %.093.lcssa.us.ph = phi i1 [ %.093183.us.us, %.lr.ph185.us ], [ %.5.us.us, %bb.x ]
  %.pre235 = load ptr, ptr %.0116209.us, align 8
  br label %.critedge.us

.critedge.us:                                     ; preds = %.critedge.us.loopexit, %.lr.ph213.split.us
  %i.cg = phi ptr [ %.0109210.us, %.lr.ph213.split.us ], [ %.pre235, %.critedge.us.loopexit ]
  %.1110.lcssa.us = phi ptr [ %.0109210.us, %.lr.ph213.split.us ], [ %.1110.lcssa.us.ph, %.critedge.us.loopexit ] ; 3 uses
  %.2101.lcssa.us = phi i64 [ %i.az, %.lr.ph213.split.us ], [ %.2101.lcssa.us.ph, %.critedge.us.loopexit ] ; 2 uses
  %.093.lcssa.us = phi i1 [ true, %.lr.ph213.split.us ], [ %.093.lcssa.us.ph, %.critedge.us.loopexit ]
  %i.ch = ptrtoint ptr %.1110.lcssa.us to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = trunc i64 %i.cj to i32                  ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0116209.us, i64 8 ; 2 uses
  store i32 %i.ck, ptr %i.cl, align 8
  %i.cm = icmp ne i32 %i.ck, 0
  %i.cn = getelementptr inbounds nuw i8, ptr %.1110.lcssa.us, i64 1
  store i8 0, ptr %.1110.lcssa.us, align 1
  %i.co = select i1 %i.cm, i1 %.093.lcssa.us, i1 false
  br i1 %i.co, label %bb.y, label %.thread154.us

bb.y:                                             ; preds = %.critedge.us
  %i.cp = load i32, ptr %i.cl, align 8            ; 3 uses
  %i.cq = icmp ugt i32 %i.cp, 1
  br i1 %i.cq, label %bb.z, label %.critedge164.preheader.us

bb.z:                                             ; preds = %bb.y
  %i.cr = load ptr, ptr %.0116209.us, align 8
  %i.cs = load i8, ptr %i.cr, align 1
  %.not222.a = icmp eq i8 %i.cs, 48
  br i1 %.not222.a, label %.thread154.us, label %.critedge164.preheader.us.thread

.critedge164.preheader.us.thread:                 ; preds = %bb.z
  %i.ct = zext i32 %i.cp to i64
  br label %.lr.ph206.us

.critedge164.preheader.us:                        ; preds = %bb.y
  %.not223 = icmp eq i32 %i.cp, 0
  br i1 %.not223, label %.thread154.us, label %.lr.ph206.us

.critedge164.us:                                  ; preds = %bb.aa
  %i.cu = add nuw nsw i64 %.0205.us, 1            ; 2 uses
  %exitcond234.not = icmp eq i64 %i.cu, %i.de
  br i1 %exitcond234.not, label %.thread154.us, label %bb.aa, !llvm.loop !741

bb.aa:                                            ; preds = %.lr.ph206.us, %.critedge164.us
  %.0205.us = phi i64 [ 0, %.lr.ph206.us ], [ %i.cu, %.critedge164.us ] ; 2 uses
  %.083204.us = phi i32 [ 0, %.lr.ph206.us ], [ %i.da, %.critedge164.us ] ; 2 uses
  %i.cv = mul i32 %.083204.us, 10
  %i.cw = getelementptr inbounds nuw i8, ptr %i.df, i64 %.0205.us
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = sext i8 %i.cx to i32
  %i.cz = add i32 %i.cv, -48
  %i.da = add i32 %i.cz, %i.cy                    ; 3 uses
  %.not131.us = icmp ult i32 %i.da, %.083204.us
  br i1 %.not131.us, label %.thread154.us, label %.critedge164.us

.thread154.us:                                    ; preds = %.critedge164.us, %bb.aa, %.critedge164.preheader.us, %bb.z, %.critedge.us
  %.11.us = phi i32 [ -1, %bb.z ], [ -1, %.critedge.us ], [ 0, %.critedge164.preheader.us ], [ -1, %bb.aa ], [ %i.da, %.critedge164.us ]
  %i.db = getelementptr inbounds nuw i8, ptr %.0116209.us, i64 12
  store i32 %.11.us, ptr %i.db, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %.0116209.us, i64 16
  %i.dd = icmp ult i64 %.2101.lcssa.us, %2
  br i1 %i.dd, label %.lr.ph213.split.us, label %._crit_edge214

.lr.ph206.us:                                     ; preds = %.critedge164.preheader.us.thread, %.critedge164.preheader.us
  %i.de = phi i64 [ %i.ct, %.critedge164.preheader.us.thread ], [ 1, %.critedge164.preheader.us ]
  %i.df = load ptr, ptr %.0116209.us, align 8
  br label %bb.aa

.lr.ph213.split:                                  ; preds = %.lr.ph213, %.thread154
  %.1100211 = phi i64 [ %.2101.lcssa, %.thread154 ], [ 0, %.lr.ph213 ]
  %.0109210 = phi ptr [ %i.ee, %.thread154 ], [ %i.r, %.lr.ph213 ] ; 4 uses
  %.0116209 = phi ptr [ %i.ev, %.thread154 ], [ %.0.i, %.lr.ph213 ] ; 7 uses
  %i.dg = add nuw i64 %.1100211, 1                ; 3 uses
  store ptr %.0109210, ptr %.0116209, align 8
  %i.dh = icmp ult i64 %i.dg, %2
  br i1 %i.dh, label %.lr.ph185, label %.critedge

.lr.ph185:                                        ; preds = %.lr.ph213.split, %bb.af
  %.093183 = phi i1 [ %spec.select132, %bb.af ], [ true, %.lr.ph213.split ] ; 2 uses
  %.2101182 = phi i64 [ %.6105, %bb.af ], [ %i.dg, %.lr.ph213.split ] ; 4 uses
  %.1110181 = phi ptr [ %i.dv, %bb.af ], [ %.0109210, %.lr.ph213.split ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %.2101182
  %i.dj = load i8, ptr %i.di, align 1             ; 3 uses
  %.not130 = icmp eq i8 %i.dj, 47
  br i1 %.not130, label %.critedge.loopexit, label %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit.thread

_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit.thread: ; preds = %.lr.ph185
  %i.dk = add nuw i64 %.2101182, 1                ; 5 uses
  %i.dl = icmp eq i8 %i.dj, 126
  br i1 %i.dl, label %bb.ab, label %bb.af

.thread:                                          ; preds = %bb.p
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 3, ptr %i.dm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %.thread156

_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit: ; preds = %switch.early.test.i.us.us
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 4, ptr %i.dn, align 8
  br label %.thread156

bb.ab:                                            ; preds = %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit.thread
  %i.do = icmp ult i64 %i.dk, %2
  br i1 %i.do, label %bb.ac, label %.split.us

bb.ac:                                            ; preds = %bb.ab
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %i.dk
  %i.dq = load i8, ptr %i.dp, align 1
  switch i8 %i.dq, label %.split199.us [
    i8 48, label %bb.ae
    i8 49, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  br label %bb.ae

.split199.us:                                     ; preds = %bb.ac, %bb.t
  %.us-phi200 = phi i64 [ %i.bx, %bb.t ], [ %i.dk, %bb.ac ]
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.dr, align 8
  br label %.thread156

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.391 = phi i8 [ 47, %bb.ad ], [ 126, %bb.ac ]
  %i.ds = add nuw i64 %.2101182, 2
  br label %bb.af

.split.us:                                        ; preds = %bb.ab, %bb.s
  %.us-phi197 = phi i64 [ %i.bx, %bb.s ], [ %i.dk, %bb.ab ]
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.dt, align 8
  br label %.thread156

bb.af:                                            ; preds = %bb.ae, %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit.thread
  %.6105 = phi i64 [ %i.ds, %bb.ae ], [ %i.dk, %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit.thread ] ; 3 uses
  %.492 = phi i8 [ %.391, %bb.ae ], [ %i.dj, %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit.thread ] ; 2 uses
  %i.du = add i8 %.492, -48
  %or.cond = icmp ult i8 %i.du, 10
  %spec.select132 = select i1 %or.cond, i1 %.093183, i1 false ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.1110181, i64 1 ; 2 uses
  store i8 %.492, ptr %.1110181, align 1
  %i.dw = icmp ult i64 %.6105, %2
  br i1 %i.dw, label %.lr.ph185, label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %bb.af, %.lr.ph185
  %.1110.lcssa.ph = phi ptr [ %.1110181, %.lr.ph185 ], [ %i.dv, %bb.af ]
  %.2101.lcssa.ph = phi i64 [ %.2101182, %.lr.ph185 ], [ %.6105, %bb.af ]
  %.093.lcssa.ph = phi i1 [ %.093183, %.lr.ph185 ], [ %spec.select132, %bb.af ]
  %.pre = load ptr, ptr %.0116209, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph213.split
  %i.dx = phi ptr [ %.0109210, %.lr.ph213.split ], [ %.pre, %.critedge.loopexit ]
  %.1110.lcssa = phi ptr [ %.0109210, %.lr.ph213.split ], [ %.1110.lcssa.ph, %.critedge.loopexit ] ; 3 uses
  %.2101.lcssa = phi i64 [ %i.dg, %.lr.ph213.split ], [ %.2101.lcssa.ph, %.critedge.loopexit ] ; 2 uses
  %.093.lcssa = phi i1 [ true, %.lr.ph213.split ], [ %.093.lcssa.ph, %.critedge.loopexit ]
  %i.dy = ptrtoint ptr %.1110.lcssa to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = trunc i64 %i.ea to i32                  ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0116209, i64 8 ; 2 uses
  store i32 %i.eb, ptr %i.ec, align 8
  %i.ed = icmp ne i32 %i.eb, 0
  %i.ee = getelementptr inbounds nuw i8, ptr %.1110.lcssa, i64 1
  store i8 0, ptr %.1110.lcssa, align 1
  %i.ef = select i1 %i.ed, i1 %.093.lcssa, i1 false
  br i1 %i.ef, label %bb.ag, label %.thread154

bb.ag:                                            ; preds = %.critedge
  %i.eg = load i32, ptr %i.ec, align 8            ; 3 uses
  %i.eh = icmp ugt i32 %i.eg, 1
  br i1 %i.eh, label %bb.ah, label %.critedge164.preheader

bb.ah:                                            ; preds = %bb.ag
  %i.ei = load ptr, ptr %.0116209, align 8
  %i.ej = load i8, ptr %i.ei, align 1
  %.not220 = icmp eq i8 %i.ej, 48
  br i1 %.not220, label %.thread154, label %.critedge164.preheader.thread

.critedge164.preheader.thread:                    ; preds = %bb.ah
  %i.ek = zext i32 %i.eg to i64
  br label %.lr.ph206

.critedge164.preheader:                           ; preds = %bb.ag
  %.not221 = icmp eq i32 %i.eg, 0
  br i1 %.not221, label %.thread154, label %.lr.ph206

.lr.ph206:                                        ; preds = %.critedge164.preheader.thread, %.critedge164.preheader
  %i.el = phi i64 [ %i.ek, %.critedge164.preheader.thread ], [ 1, %.critedge164.preheader ]
  %i.em = load ptr, ptr %.0116209, align 8
  br label %bb.ai

.critedge164:                                     ; preds = %bb.ai
  %i.en = add nuw nsw i64 %.0205, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.en, %i.el
  br i1 %exitcond.not, label %.thread154, label %bb.ai, !llvm.loop !741

bb.ai:                                            ; preds = %.lr.ph206, %.critedge164
  %.0205 = phi i64 [ 0, %.lr.ph206 ], [ %i.en, %.critedge164 ] ; 2 uses
  %.083204 = phi i32 [ 0, %.lr.ph206 ], [ %i.et, %.critedge164 ] ; 2 uses
  %i.eo = mul i32 %.083204, 10
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 %.0205
  %i.eq = load i8, ptr %i.ep, align 1
  %i.er = sext i8 %i.eq to i32
  %i.es = add i32 %i.eo, -48
  %i.et = add i32 %i.es, %i.er                    ; 3 uses
  %.not131 = icmp ult i32 %i.et, %.083204
  br i1 %.not131, label %.thread154, label %.critedge164

.thread154:                                       ; preds = %bb.ai, %.critedge164, %.critedge164.preheader, %.critedge, %bb.ah
  %.11 = phi i32 [ -1, %bb.ah ], [ -1, %.critedge ], [ 0, %.critedge164.preheader ], [ -1, %bb.ai ], [ %i.et, %.critedge164 ]
  %i.eu = getelementptr inbounds nuw i8, ptr %.0116209, i64 12
  store i32 %.11, ptr %i.eu, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %.0116209, i64 16
  %i.ew = icmp ult i64 %.2101.lcssa, %2
  br i1 %i.ew, label %.lr.ph213.split, label %._crit_edge214

._crit_edge214:                                   ; preds = %.thread154, %.thread154.us, %bb.n
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.ex, align 8
  br label %bb.aj

.thread156:                                       ; preds = %.split199.us, %.split.us, %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit, %.thread, %bb.m
  %.9108 = phi i64 [ %spec.select, %bb.m ], [ %.2101182.us.us, %.thread ], [ %.2101182.us.us, %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit ], [ %.us-phi197, %.split.us ], [ %.us-phi200, %.split199.us ]
  %i.ey = load ptr, ptr %i.q, align 8
  call void @free(ptr noundef %i.ey) #34
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  store i64 %.9108, ptr %i.ez, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %.thread156, %._crit_edge214
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9rapidjson4UTF8IcE8ValidateINS_14GenericPointerINS_12GenericValueIS1_NS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_E19PercentDecodeStreamENS_25GenericInsituStringStreamIS1_EEEEbRT_RT0_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = load i8, ptr %i.a, align 1
  %.not.i = icmp ne i8 %i.b, 37
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 17 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ugt ptr %i.c, %i.e
  %or.cond41.i = select i1 %.not.i, i1 true, i1 %i.f
  br i1 %or.cond41.i, label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentDecodeStream4TakeEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store ptr %i.g, ptr %0, align 8
  %i.h = load i8, ptr %i.g, align 1               ; 5 uses
  %i.i = add i8 %i.h, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.i, 10
  br i1 %or.cond.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i8 %i.h, -65
  %or.cond6.i = icmp ult i8 %i.j, 6
  br i1 %or.cond6.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i8 %i.h, -55
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.l = add i8 %i.h, -97
  %or.cond9.i = icmp ult i8 %i.l, 6
  br i1 %or.cond9.i, label %bb.f, label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentDecodeStream4TakeEv.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.m = add nsw i8 %i.h, -87
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.b
  %.130.i = phi i8 [ %i.m, %bb.f ], [ %i.k, %bb.d ], [ %i.i, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store ptr %i.n, ptr %0, align 8
  %i.o = shl nuw i8 %.130.i, 4
  %i.p = load i8, ptr %i.n, align 1               ; 4 uses
  %i.q = add i8 %i.p, -48
  %or.cond.1.i = icmp ult i8 %i.q, 10
  br i1 %or.cond.1.i, label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentDecodeStream4TakeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add i8 %i.p, -65
  %or.cond6.1.i = icmp ult i8 %i.r, 6
  br i1 %or.cond6.1.i, label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentDecodeStream4TakeEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = add i8 %i.p, -97
  %or.cond9.1.i = icmp ult i8 %i.s, 6
  br i1 %or.cond9.1.i, label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentDecodeStream4TakeEv.exit, label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentDecodeStream4TakeEv.exit.thread

_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentDecodeStream4TakeEv.exit.thread: ; preds = %bb.e, %bb.i, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store ptr %i.w, ptr %i.u, align 8
  store i8 0, ptr %i.v, align 1
  br label %bb.fv

_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentDecodeStream4TakeEv.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.sink49.i = phi i8 [ -55, %bb.h ], [ -87, %bb.i ], [ -48, %bb.g ]
  %i.x = add i8 %i.p, %i.o
  %i.y = add i8 %i.x, %.sink49.i                  ; 3 uses
  store ptr %i.c, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 34 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ab, ptr %i.z, align 8
  store i8 %i.y, ptr %i.aa, align 1
  %.not = icmp sgt i8 %i.y, -1
  br i1 %.not, label %bb.fv, label %bb.j

bb.j:                                             ; preds = %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentDecodeStream4TakeEv.exit
  %i.ac = zext i8 %i.y to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson4UTF8IcE8GetRangeEhE4type, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1
  switch i8 %i.ae, label %bb.fv [
    i8 2, label %bb.k
    i8 3, label %bb.v
    i8 4, label %bb.aq
    i8 5, label %bb.bl
    i8 6, label %bb.cq
    i8 10, label %bb.dv
    i8 11, label %bb.eq
  ]

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %0, align 8               ; 4 uses
  %i.ag = load i8, ptr %i.af, align 1
  %.not.i77 = icmp ne i8 %i.ag, 37
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 3 ; 2 uses
  %i.ai = load ptr, ptr %i.d, align 8
  %i.aj = icmp ugt ptr %i.ah, %i.ai
  %or.cond41.i78 = select i1 %.not.i77, i1 true, i1 %i.aj
  br i1 %or.cond41.i78, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ak, align 8
  br label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentDecodeStream4TakeEv.exit89

bb.m:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  store ptr %i.al, ptr %0, align 8
  %i.am = load i8, ptr %i.al, align 1             ; 5 uses
  %i.an = add i8 %i.am, -48                       ; 2 uses
  %or.cond.i79 = icmp ult i8 %i.an, 10
  br i1 %or.cond.i79, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = add i8 %i.am, -65
  %or.cond6.i80 = icmp ult i8 %i.ao, 6
  br i1 %or.cond6.i80, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = add nsw i8 %i.am, -55
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.aq = add i8 %i.am, -97
  %or.cond9.i81 = icmp ult i8 %i.aq, 6
  br i1 %or.cond9.i81, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ar = add nsw i8 %i.am, -87
  br label %bb.s

bb.r:                                             ; preds = %bb.u, %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.as, align 8
  br label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentDecodeStream4TakeEv.exit89

bb.s:                                             ; preds = %bb.q, %bb.o, %bb.m
  %.130.i83 = phi i8 [ %i.ar, %bb.q ], [ %i.ap, %bb.o ], [ %i.an, %bb.m ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 2 uses
  store ptr %i.at, ptr %0, align 8
  %i.au = shl nuw i8 %.130.i83, 4
  %i.av = load i8, ptr %i.at, align 1             ; 4 uses
  %i.aw = add i8 %i.av, -48
  %or.cond.1.i84 = icmp ult i8 %i.aw, 10
  br i1 %or.cond.1.i84, label %.loopexit.loopexit.i87, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ax = add i8 %i.av, -65
  %or.cond6.1.i85 = icmp ult i8 %i.ax, 6
  br i1 %or.cond6.1.i85, label %.loopexit.loopexit.i87, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = add i8 %i.av, -97
  %or.cond9.1.i86 = icmp ult i8 %i.ay, 6
  br i1 %or.cond9.1.i86, label %.loopexit.loopexit.i87, label %bb.r

.loopexit.loopexit.i87:                           ; preds = %bb.u, %bb.t, %bb.s
  %.sink49.i88 = phi i8 [ -55, %bb.t ], [ -87, %bb.u ], [ -48, %bb.s ]
  %i.az = add i8 %i.av, %i.au
  %i.ba = add i8 %i.az, %.sink49.i88
  store ptr %i.ah, ptr %0, align 8
  br label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentDecodeStream4TakeEv.exit89

_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentDecodeStream4TakeEv.exit89: ; preds = %bb.l, %bb.r, %.loopexit.loopexit.i87
  %.4.i82 = phi i8 [ 0, %bb.l ], [ 0, %bb.r ], [ %i.ba, %.loopexit.loopexit.i87 ] ; 2 uses
  %i.bb = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bc, ptr %i.z, align 8
  store i8 %.4.i82, ptr %i.bb, align 1
  %i.bd = icmp slt i8 %.4.i82, -64
end_hunk_0
