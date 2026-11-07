Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/liquid_core-693624a1712aaef7.liquid_core.91b98bf4681e5dbd-cgu.0?download=true
inline.NumInlined: 4312
inline.NumDeleted: 1825
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 26
begin_hunk_0_@"_ZN4time7parsing6parsed106_$LT$impl$u20$core..convert..TryFrom$LT$time..parsing..parsed..Parsed$GT$$u20$for$u20$time..date..Date$GT$8try_from17h4f9089a24f77f352E":bb.a
  %i.ei = load i8, ptr %i.eh, align 1, !noundef !8 ; 3 uses
  %.not312 = icmp eq i8 %i.ei, -1
  br i1 %.not312, label %.thread474, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ej = icmp ult i8 %i.ei, 54
  tail call void @llvm.assume(i1 %i.ej)
  %or.cond338 = or i1 %.not301, %.not308450
  br i1 %or.cond338, label %.thread474, label %switch.lookup514

switch.lookup514:                                 ; preds = %bb.al
  %i.ek = zext nneg i8 %i.ei to i16
  %i.el = mul nuw nsw i16 %i.ek, 7
  %i.em = zext nneg i8 %i.cr to i16
  %i.en = add nuw nsw i16 %i.el, %i.em
  %i.eo = shl i32 %i.v, 10                        ; 2 uses
  %i.ep = ashr exact i32 %i.eo, 10
  %i.eq = add nsw i32 %i.ep, 999999               ; 3 uses
  %.neg.i.i353 = sdiv i32 %i.eq, -100
  %i.er = add nsw i32 %.neg.i.i353, -363521074
  %i.es = sdiv i32 %i.eq, 400
  %i.et = add nsw i32 %i.er, %i.es
  %i.eu = sext i32 %i.eq to i64
  %i.ev = mul nsw i64 %i.eu, 1461
  %i.ew = sdiv i64 %i.ev, 4
  %i.ex = trunc nsw i64 %i.ew to i32
  %i.ey = add nsw i32 %i.et, %i.ex
  %i.ez = srem i32 %i.ey, 7
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr [2 x i8], ptr @"switch.table._ZN4time7parsing6parsed106_$LT$impl$u20$core..convert..TryFrom$LT$time..parsing..parsed..Parsed$GT$$u20$for$u20$time..date..Date$GT$8try_from17h4f9089a24f77f352E.807", i64 %i.fa
  %switch.gep515 = getelementptr i8, ptr %i.fb, i64 12
  %switch.load516 = load i16, ptr %switch.gep515, align 2
  %i.fc = add nsw i16 %i.en, %switch.load516      ; 2 uses
  %i.fd = add nsw i16 %i.fc, 1                    ; 2 uses
  %i.fe = add i32 %i.v, -10000
  %or.cond.i358 = icmp ult i32 %i.fe, -19999
  br i1 %or.cond.i358, label %bb.ao, label %bb.am, !prof !43

bb.am:                                            ; preds = %switch.lookup514
  %.sroa.010.0.i359 = tail call i32 @llvm.abs.i32(i32 %i.v, i1 true)
  %i.ff = mul i32 %.sroa.010.0.i359, 33555415
  %i.fg = and i32 %i.ff, 100695055
  %i.fh = icmp samesign ult i32 %i.fg, 31745      ; 2 uses
  %or.cond1.i360 = icmp ult i16 %i.fc, 365
  br i1 %or.cond1.i360, label %bb.ap, label %bb.an, !prof !44

bb.an:                                            ; preds = %bb.am
  %i.fi = icmp eq i16 %i.fd, 366
  %brmerge.not.i361 = and i1 %i.fh, %i.fi
  br i1 %brmerge.not.i361, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %switch.lookup514, %bb.an
  %.sroa.0384.0.ph = phi ptr [ @553, %bb.an ], [ @547, %switch.lookup514 ]
  %.sroa.8385.0.ph = phi i64 [ 7, %bb.an ], [ 4, %switch.lookup514 ]
  %.sink.i363.ph = phi i8 [ 1, %bb.an ], [ 0, %switch.lookup514 ]
  %i.fj = ptrtoint ptr %.sroa.0384.0.ph to i64
  store i64 %i.fj, ptr %0, align 8
  %.sroa.4231.sroa.4.0..sroa.4231.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8385.0.ph, ptr %.sroa.4231.sroa.4.0..sroa.4231.0..sroa_idx.sroa_idx, align 8
  br label %.thread474

bb.ap:                                            ; preds = %bb.am, %bb.an
  %i.fk = select i1 %i.fh, i32 512, i32 0
  %i.fl = zext nneg i16 %i.fd to i32
  %i.fm = or i32 %i.fk, %i.fl
  %i.fn = or i32 %i.fm, %i.eo                     ; 2 uses
  %i.fo = icmp ne i32 %i.fn, 0
  tail call void @llvm.assume(i1 %i.fo)
  store i32 %i.fn, ptr %0, align 8
  br label %.thread474
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN4time7parsing6parsed128_$LT$impl$u20$core..convert..TryFrom$LT$time..parsing..parsed..Parsed$GT$$u20$for$u20$time..offset_date_time..OffsetDateTime$GT$8try_from17h32607eccdf9a5eabE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((16, 17)) %0, ptr noalias nofree noundef nonnull align 16 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #5 !guid !15366 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = load i128, ptr %1, align 16, !noundef !8 ; 6 uses
  %i.c = icmp eq i128 %i.b, -170141183460469231731687303715884105728
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i128 %i.b, -377705116800000000001
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp slt i128 %i.b, 253402300800000000000
  tail call void @llvm.assume(i1 %i.e)
  %i.f = sdiv i128 %i.b, 1000000000               ; 2 uses
  %i.g = mul i128 %i.f, 1000000000
  %.decomposed = sub i128 %i.b, %i.g              ; 4 uses
  %i.h = icmp eq i128 %.decomposed, 0
  %i.i = ashr i128 %i.b, 127
  %i.j = select i1 %i.h, i128 0, i128 %i.i
  %.sroa.0.0.off0.v.i = add nsw i128 %i.j, %i.f
  %.sroa.0.0.off0.i = trunc nsw i128 %.sroa.0.0.off0.v.i to i64 ; 4 uses
  %or.cond.i.i = icmp slt i64 %.sroa.0.0.off0.i, -377705116800
  br i1 %or.cond.i.i, label %bb.d, label %bb.e, !prof !43

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 53
  %i.l = load i8, ptr %i.k, align 1, !range !13, !noundef !8
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.b
  %.sroa.0.sroa.2.0.insert.insert.i = and i64 ptrtoint (ptr @548 to i64), -4294967296
  %.sroa.0.sroa.0.0.insert.ext.i = zext i32 ptrtoint (ptr @548 to i32) to i64
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.2.0.insert.insert.i, %.sroa.0.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %0, align 8
  %.sroa.086.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9, ptr %.sroa.086.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.n = sdiv i64 %.sroa.0.0.off0.i, 86400
  %i.o = srem i64 %.sroa.0.0.off0.i, 86400        ; 4 uses
  %i.p = icmp eq i64 %i.o, 0
  %i.q = ashr i64 %.sroa.0.0.off0.i, 63
  %i.r = select i1 %i.p, i64 0, i64 %i.q
  %.sroa.03.0.i.i = add nsw i64 %i.r, %i.n
  %i.s = trunc nsw i64 %.sroa.03.0.i.i to i32
  %i.t = add nsw i32 %i.s, 869850581              ; 2 uses
  %i.u = zext nneg i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, 3853261555         ; 2 uses
  %i.w = lshr i64 %i.v, 15
  %i.x = lshr i64 %i.v, 47
  %i.y = trunc nuw nsw i64 %i.x to i32            ; 3 uses
  %i.z = trunc i64 %i.w to i32
  %i.aa = icmp ugt i32 %i.z, 42920275
  %i.ab = and i32 %i.y, 3
  %i.ac = icmp eq i32 %i.ab, 0
  %.sroa.0.0.i.i.i = or i1 %i.aa, %i.ac           ; 2 uses
  %i.ad = lshr i32 %i.y, 2
  %i.ae = add nuw nsw i32 %i.t, %i.y
  %i.af = sub nuw nsw i32 %i.ae, %i.ad
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = mul nuw nsw i64 %i.ag, 3010298776       ; 2 uses
  %i.ai = lshr i64 %i.ah, 8
  %i.aj = lshr i64 %i.ah, 40
  %i.ak = trunc nuw nsw i64 %i.aj to i32          ; 2 uses
  %i.al = and i64 %i.ai, 4294967295
  %i.am = mul nuw nsw i64 %i.al, 1461
  %i.an = lshr i64 %i.am, 34
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = zext i1 %.sroa.0.0.i.i.i to i32
  %i.aq = add nuw nsw i32 %i.ao, %i.ap
  %i.ar = and i32 %i.ak, 3
  %i.as = icmp eq i32 %i.ar, 0
  %i.at = and i1 %.sroa.0.0.i.i.i, %i.as
  %i.au = shl nuw i32 %i.ak, 10
  %i.av = add nsw i32 %i.au, 1858256896
  %i.aw = select i1 %i.at, i32 512, i32 0
  %i.ax = or disjoint i32 %i.aw, %i.av
  %i.ay = or i32 %i.ax, %i.aq                     ; 2 uses
  %i.az = icmp ne i32 %i.ay, 0
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = icmp slt i64 %i.o, 0
  %i.bb = add nsw i64 %i.o, 86400
  %spec.select.i.i.i = select i1 %i.ba, i64 %i.bb, i64 %i.o ; 2 uses
  %.lhs.trunc.i.i = trunc nuw nsw i64 %spec.select.i.i.i to i32 ; 3 uses
  %i.bc = udiv i32 %.lhs.trunc.i.i, 3600
  %i.bd = urem i32 %.lhs.trunc.i.i, 3600
  %.lhs.trunc20.i.i = trunc nuw nsw i32 %i.bd to i16
  %i.be = udiv i16 %.lhs.trunc20.i.i, 60
  %i.bf = urem i32 %.lhs.trunc.i.i, 60
  %i.bg = icmp ult i64 %spec.select.i.i.i, 86400
  tail call void @llvm.assume(i1 %i.bg)
  %.sroa.0.sroa.2.0.extract.trunc21.i = zext nneg i32 %i.bf to i64
  %.sroa.0.sroa.3.0.extract.trunc23.i = zext nneg i16 %i.be to i64
  %.sroa.0.sroa.4.0.extract.trunc25.i = zext nneg i32 %i.bc to i64
  %i.bh = icmp slt i128 %.decomposed, 0
  %i.bi = add nsw i128 %.decomposed, 1000000000
  %spec.select.i.i = select i1 %i.bh, i128 %i.bi, i128 %.decomposed ; 2 uses
  %i.bj = trunc nuw nsw i128 %spec.select.i.i to i32
  %i.bk = icmp samesign ult i32 %i.bj, 1000000000
  tail call void @llvm.assume(i1 %i.bk)
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.0.sroa.4.0.extract.trunc25.i, 48
  %.sroa.3.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.0.sroa.3.0.extract.trunc23.i, 40
  %.sroa.3.0.insert.insert.i.i = or disjoint i64 %.sroa.3.0.insert.shift.i.i, %.sroa.4.0.insert.shift.i.i
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.0.sroa.2.0.extract.trunc21.i, 32
  %.sroa.2.0.insert.insert.i.i = or disjoint i64 %.sroa.3.0.insert.insert.i.i, %.sroa.2.0.insert.shift.i.i
  %i.bl = trunc nuw nsw i128 %spec.select.i.i to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bn = load i32, ptr %i.bm, align 8, !noundef !8 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, -1
  %.sroa.020.0.insert.ext.i = zext nneg i32 %i.bn to i64
  %spec.select = select i1 %i.bo, i64 %i.bl, i64 %.sroa.020.0.insert.ext.i
  %.sroa.0214.0 = or disjoint i64 %spec.select, %.sroa.2.0.insert.insert.i.i
  %.sroa.6217.0 = zext i32 %i.ay to i64
  store i64 %.sroa.0214.0, ptr %0, align 8
  %.sroa.4222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6217.0, ptr %.sroa.4222.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %bb.ag, %bb.ah, %bb.d, %bb.e, %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread, %bb.ar
  %.sink = phi i8 [ 0, %bb.d ], [ 3, %bb.e ], [ 1, %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread ], [ 3, %bb.ar ], [ %.sink365.i, %bb.ag ], [ %i.bs, %bb.j ], [ 2, %bb.ah ]
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %.sroa.487.0..sroa_idx, align 8
  ret void

bb.g:                                             ; preds = %bb.c
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 43 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !8 ; 3 uses
  %cond = icmp eq i8 %i.bq, -1
  br i1 %cond, label %bb.h, label %2

2:                                                ; preds = %bb.g
  %3 = icmp ult i8 %i.bq, 61
  tail call void @llvm.assume(i1 %3)
  %4 = icmp eq i8 %i.bq, 60
  br i1 %4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g, %2, %bb.c
  %.sroa.023.0 = phi i1 [ false, %2 ], [ false, %bb.c ], [ false, %bb.g ], [ true, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @"_ZN4time7parsing6parsed106_$LT$impl$u20$core..convert..TryFrom$LT$time..parsing..parsed..Parsed$GT$$u20$for$u20$time..date..Date$GT$8try_from17h4f9089a24f77f352E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 16 captures(address) dereferenceable(64) %1)
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bs = load i8, ptr %i.br, align 8, !range !19, !noundef !8 ; 2 uses
  %.not159 = icmp eq i8 %i.bs, 3
  %i.bt = load i32, ptr %i.a, align 8             ; 6 uses
  br i1 %.not159, label %bb.k, label %bb.j

bb.i:                                             ; preds = %2
  store i8 59, ptr %i.bp, align 1
  %.sroa.4275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 999999999, ptr %.sroa.4275.0..sroa_idx, align 8
  br label %bb.h

bb.j:                                             ; preds = %bb.h
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.2115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.2115.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5111.0..sroa_idx, i64 12, i1 false)
  %.sroa.7113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4117.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7113.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %i.bt, ptr %0, align 8
  br label %bb.f

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.3186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3186.0.copyload = load i32, ptr %.sroa.3186.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.5188.0.copyload = load i8, ptr %.sroa.5188.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 41
  %.sroa.6189.0.copyload = load i8, ptr %.sroa.6189.0..sroa_idx, align 1 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 42
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 2 ; 4 uses
  %.sroa.9190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 43
  %.sroa.9190.0.copyload = load i8, ptr %.sroa.9190.0..sroa_idx, align 1 ; 6 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.11192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 49
  %.sroa.11192.0.copyload = load i8, ptr %.sroa.11192.0..sroa_idx, align 1 ; 2 uses
  %.sroa.12193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 50
  %.not.not.i = icmp eq i8 %.sroa.5188.0.copyload, -1 ; 2 uses
  br i1 %.not.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = icmp ult i8 %.sroa.5188.0.copyload, 24
  tail call void @llvm.assume(i1 %i.bu)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not.i = icmp eq i8 %.sroa.6189.0.copyload, 0  ; 2 uses
  br i1 %.not.i, label %bb.o, label %bb.n, !prof !14

bb.n:                                             ; preds = %bb.m
  %i.bv = icmp ult i8 %.sroa.6189.0.copyload, 13
  tail call void @llvm.assume(i1 %i.bv)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %.not.not.i, label %bb.p, label %.thread313.i

bb.p:                                             ; preds = %bb.o
  %.not233.i = icmp eq i8 %.sroa.11192.0.copyload, 2
  %or.cond.i = or i1 %.not.i, %.not233.i
  br i1 %or.cond.i, label %bb.ag, label %.critedge.i

.critedge.i:                                      ; preds = %bb.p
  %i.bw = trunc nuw i8 %.sroa.11192.0.copyload to i1
  %i.bx = icmp eq i8 %.sroa.6189.0.copyload, 12   ; 2 uses
  %i.by = add nuw nsw i8 %.sroa.6189.0.copyload, 12
  %spec.select.i = select i1 %i.bx, i8 12, i8 %i.by
  %..sroa.011.0.i = select i1 %i.bx, i8 0, i8 %.sroa.6189.0.copyload
  %.sroa.0.0.ph.i = select i1 %i.bw, i8 %spec.select.i, i8 %..sroa.011.0.i ; 3 uses
  %i.bz = icmp samesign ult i8 %.sroa.6189.0.copyload, 13
  tail call void @llvm.assume(i1 %i.bz)
  %.not235.i = icmp eq i8 %.sroa.7.0.copyload, -1
  br i1 %.not235.i, label %.critedge252.i, label %.thread313.thread360.i

.thread313.i:                                     ; preds = %bb.o
  %i.ca = icmp samesign ult i8 %.sroa.5188.0.copyload, 24
  tail call void @llvm.assume(i1 %i.ca)
  %.not238.i = icmp eq i8 %.sroa.7.0.copyload, -1
  br i1 %.not238.i, label %.thread313.thread.i, label %bb.r

.thread313.thread360.i:                           ; preds = %.critedge.i
  %i.cb = icmp ult i8 %.sroa.7.0.copyload, 60
  tail call void @llvm.assume(i1 %i.cb)
  br label %bb.r

.critedge252.i:                                   ; preds = %.critedge.i
  %.not236.i = icmp eq i8 %.sroa.9190.0.copyload, -1
  %.not237.i = icmp eq i32 %.sroa.3186.0.copyload, -1
  %or.cond = select i1 %.not236.i, i1 %.not237.i, i1 false
  br i1 %or.cond, label %bb.q, label %.thread313.thread.i

bb.q:                                             ; preds = %.critedge252.i
  %.sroa.0.6.insert.ext.i = zext nneg i8 %.sroa.0.0.ph.i to i64
  %.sroa.0.6.insert.shift.i = shl nuw nsw i64 %.sroa.0.6.insert.ext.i, 48
  br label %bb.ah

bb.r:                                             ; preds = %.thread313.thread360.i, %.thread313.i
  %.sroa.0.0312363.i = phi i8 [ %.sroa.0.0.ph.i, %.thread313.thread360.i ], [ %.sroa.5188.0.copyload, %.thread313.i ]
  %i.cc = zext nneg i8 %.sroa.7.0.copyload to i64
  %i.cd = shl nuw nsw i64 %i.cc, 40
  br label %.thread313.thread.i

.thread313.thread.i:                              ; preds = %bb.r, %.critedge252.i, %.thread313.i
  %.not238359.i = phi i1 [ true, %.thread313.i ], [ false, %bb.r ], [ true, %.critedge252.i ]
  %.sroa.0.0312358.i = phi i8 [ %.sroa.5188.0.copyload, %.thread313.i ], [ %.sroa.0.0312363.i, %bb.r ], [ %.sroa.0.0.ph.i, %.critedge252.i ] ; 4 uses
  %.sroa.0306.5.insert.ext.i = phi i64 [ 280375465082880, %.thread313.i ], [ %i.cd, %bb.r ], [ 280375465082880, %.critedge252.i ] ; 3 uses
  %.not239.i = icmp ne i8 %.sroa.9190.0.copyload, -1 ; 3 uses
  br i1 %.not239.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread313.thread.i
  %i.ce = icmp ult i8 %.sroa.9190.0.copyload, 61
  tail call void @llvm.assume(i1 %i.ce)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread313.thread.i
  %.not244.i = icmp ne i32 %.sroa.3186.0.copyload, -1 ; 4 uses
  br i1 %.not244.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cf = icmp ult i32 %.sroa.3186.0.copyload, 1000000000
  tail call void @llvm.assume(i1 %i.cf)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %.not238359.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not239.i, label %bb.z, label %bb.aa

bb.x:                                             ; preds = %bb.v
  %brmerge.i = or i1 %.not244.i, %.not239.i
  br i1 %brmerge.i, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0294.6.insert.ext.i = zext nneg i8 %.sroa.0.0312358.i to i64
  %.sroa.0294.6.insert.shift.i = shl nuw nsw i64 %.sroa.0294.6.insert.ext.i, 48
  br label %bb.ah

bb.z:                                             ; preds = %bb.w
  %i.cg = icmp samesign ugt i8 %.sroa.9190.0.copyload, 59 ; 2 uses
  br i1 %.not244.i, label %bb.ac, label %bb.ad

bb.aa:                                            ; preds = %bb.w
  br i1 %.not244.i, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0299.6.insert.ext.i = zext nneg i8 %.sroa.0.0312358.i to i64
  %.sroa.0299.6.insert.shift.i = shl nuw nsw i64 %.sroa.0299.6.insert.ext.i, 48
  %.sroa.0299.6.insert.insert.i = add nuw nsw i64 %.sroa.0299.6.insert.shift.i, %.sroa.0306.5.insert.ext.i
  br label %bb.ah

bb.ac:                                            ; preds = %bb.z
  br i1 %i.cg, label %bb.ag, label %bb.af, !prof !43

bb.ad:                                            ; preds = %bb.z
  br i1 %i.cg, label %bb.ag, label %bb.ae, !prof !43

bb.ae:                                            ; preds = %bb.ad
  %.sroa.0302.4.insert.ext.i = zext nneg i8 %.sroa.9190.0.copyload to i64
  %.sroa.0302.4.insert.shift.i = shl nuw nsw i64 %.sroa.0302.4.insert.ext.i, 32
  %.sroa.0302.6.insert.ext.i = zext nneg i8 %.sroa.0.0312358.i to i64
  %.sroa.0302.6.insert.shift.i = shl nuw nsw i64 %.sroa.0302.6.insert.ext.i, 48
  %i.ch = or disjoint i64 %.sroa.0302.6.insert.shift.i, %.sroa.0302.4.insert.shift.i
  %.sroa.0302.6.insert.insert.i = or i64 %i.ch, %.sroa.0306.5.insert.ext.i
  br label %bb.ah

bb.af:                                            ; preds = %bb.ac
  %.sroa.0306.0.insert.ext.i = zext nneg i32 %.sroa.3186.0.copyload to i64
  %.sroa.0306.4.insert.ext.i = zext nneg i8 %.sroa.9190.0.copyload to i64
  %.sroa.0306.4.insert.shift.i = shl nuw nsw i64 %.sroa.0306.4.insert.ext.i, 32
  %i.ci = or disjoint i64 %.sroa.0306.4.insert.shift.i, %.sroa.0306.0.insert.ext.i
  %.sroa.0306.6.insert.ext.i = zext nneg i8 %.sroa.0.0312358.i to i64
  %.sroa.0306.6.insert.shift.i = shl nuw nsw i64 %.sroa.0306.6.insert.ext.i, 48
  %i.cj = or disjoint i64 %.sroa.0306.6.insert.shift.i, %i.ci
  %.sroa.0306.6.insert.insert.i = or i64 %i.cj, %.sroa.0306.5.insert.ext.i
  br label %bb.ah

bb.ag:                                            ; preds = %bb.aa, %bb.x, %bb.p, %bb.ad, %bb.ac
  %.sink365.i = phi i8 [ 2, %bb.aa ], [ 0, %bb.ad ], [ 2, %bb.p ], [ 0, %bb.ac ], [ 2, %bb.x ]
  store i64 ptrtoint (ptr @556 to i64), ptr %0, align 8
  %.sroa.2128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %.sroa.2128.0..sroa_idx, align 8
  br label %bb.f

bb.ah:                                            ; preds = %bb.y, %bb.ab, %bb.ae, %bb.af, %bb.q
  %.sroa.0182.0.ph = phi i64 [ %.sroa.0302.6.insert.insert.i, %bb.ae ], [ %.sroa.0299.6.insert.insert.i, %bb.ab ], [ %.sroa.0306.6.insert.insert.i, %bb.af ], [ %.sroa.0294.6.insert.shift.i, %bb.y ], [ %.sroa.0.6.insert.shift.i, %bb.q ] ; 7 uses
  %.sroa.3201.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 4 ; 9 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 45
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1 ; 5 uses
  %.sroa.5202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 46
  %.sroa.5202.0.copyload = load i8, ptr %.sroa.5202.0..sroa_idx, align 2 ; 5 uses
  %.sroa.6204.0.copyload = load i8, ptr %.sroa.12193.0..sroa_idx, align 2
  %i.ck = icmp eq i8 %.sroa.3201.0.copyload, -128
  br i1 %i.ck, label %bb.f, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cl = icmp sgt i8 %.sroa.3201.0.copyload, -24
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = icmp slt i8 %.sroa.3201.0.copyload, 24
  tail call void @llvm.assume(i1 %i.cm)
  %.not.i168 = icmp eq i8 %.sroa.4.0.copyload, -128
  br i1 %.not.i168, label %.thread51.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cn = icmp sgt i8 %.sroa.4.0.copyload, -60
end_hunk_0
