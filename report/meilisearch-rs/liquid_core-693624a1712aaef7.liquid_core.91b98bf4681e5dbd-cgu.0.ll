Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/liquid_core-693624a1712aaef7.liquid_core.91b98bf4681e5dbd-cgu.0?download=true
inline.NumInlined: 4312
inline.NumDeleted: 1825
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 26
begin_hunk_0_@"_ZN4time7parsing6parsed128_$LT$impl$u20$core..convert..TryFrom$LT$time..parsing..parsed..Parsed$GT$$u20$for$u20$time..offset_date_time..OffsetDateTime$GT$8try_from17h32607eccdf9a5eabE":bb.a
  br i1 %cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = icmp ult i8 %i.bq, 61
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = icmp eq i8 %i.bq, 60
  br i1 %i.bs, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.g, %bb.h, %bb.c
  %.sroa.023.0 = phi i1 [ false, %bb.h ], [ false, %bb.c ], [ false, %bb.g ], [ true, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @"_ZN4time7parsing6parsed106_$LT$impl$u20$core..convert..TryFrom$LT$time..parsing..parsed..Parsed$GT$$u20$for$u20$time..date..Date$GT$8try_from17h4f9089a24f77f352E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 16 captures(address) dereferenceable(64) %1)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bu = load i8, ptr %i.bt, align 8, !range !17, !noundef !6 ; 2 uses
  %.not159 = icmp eq i8 %i.bu, 3
  %i.bv = load i32, ptr %i.a, align 8             ; 6 uses
  br i1 %.not159, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  store i8 59, ptr %i.bp, align 1
  %.sroa.4275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 999999999, ptr %.sroa.4275.0..sroa_idx, align 8
  br label %bb.i

bb.k:                                             ; preds = %bb.i
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.2115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.2115.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5111.0..sroa_idx, i64 12, i1 false)
  %.sroa.7113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4117.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7113.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %i.bv, ptr %0, align 8
  br label %bb.f

bb.l:                                             ; preds = %bb.i
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
  br i1 %.not.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = icmp ult i8 %.sroa.5188.0.copyload, 24
  tail call void @llvm.assume(i1 %i.bw)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not.i = icmp eq i8 %.sroa.6189.0.copyload, 0  ; 2 uses
  br i1 %.not.i, label %bb.p, label %bb.o, !prof !12

bb.o:                                             ; preds = %bb.n
  %i.bx = icmp ult i8 %.sroa.6189.0.copyload, 13
  tail call void @llvm.assume(i1 %i.bx)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %.not.not.i, label %bb.q, label %.thread313.i

bb.q:                                             ; preds = %bb.p
  %.not233.i = icmp eq i8 %.sroa.11192.0.copyload, 2
  %or.cond.i = or i1 %.not.i, %.not233.i
  br i1 %or.cond.i, label %bb.ah, label %.critedge.i

.critedge.i:                                      ; preds = %bb.q
  %i.by = trunc nuw i8 %.sroa.11192.0.copyload to i1
  %i.bz = icmp eq i8 %.sroa.6189.0.copyload, 12   ; 2 uses
  %i.ca = add nuw nsw i8 %.sroa.6189.0.copyload, 12
  %spec.select.i = select i1 %i.bz, i8 12, i8 %i.ca
  %..sroa.011.0.i = select i1 %i.bz, i8 0, i8 %.sroa.6189.0.copyload
  %.sroa.0.0.ph.i = select i1 %i.by, i8 %spec.select.i, i8 %..sroa.011.0.i ; 3 uses
  %i.cb = icmp samesign ult i8 %.sroa.6189.0.copyload, 13
  tail call void @llvm.assume(i1 %i.cb)
  %.not235.i = icmp eq i8 %.sroa.7.0.copyload, -1
  br i1 %.not235.i, label %.critedge252.i, label %.thread313.thread360.i

.thread313.i:                                     ; preds = %bb.p
  %i.cc = icmp samesign ult i8 %.sroa.5188.0.copyload, 24
  tail call void @llvm.assume(i1 %i.cc)
  %.not238.i = icmp eq i8 %.sroa.7.0.copyload, -1
  br i1 %.not238.i, label %.thread313.thread.i, label %bb.s

.thread313.thread360.i:                           ; preds = %.critedge.i
  %i.cd = icmp ult i8 %.sroa.7.0.copyload, 60
  tail call void @llvm.assume(i1 %i.cd)
  br label %bb.s

.critedge252.i:                                   ; preds = %.critedge.i
  %.not236.i = icmp eq i8 %.sroa.9190.0.copyload, -1
  %.not237.i = icmp eq i32 %.sroa.3186.0.copyload, -1
  %or.cond = select i1 %.not236.i, i1 %.not237.i, i1 false
  br i1 %or.cond, label %bb.r, label %.thread313.thread.i

bb.r:                                             ; preds = %.critedge252.i
  %.sroa.0.6.insert.ext.i = zext nneg i8 %.sroa.0.0.ph.i to i64
  %.sroa.0.6.insert.shift.i = shl nuw nsw i64 %.sroa.0.6.insert.ext.i, 48
  br label %bb.ai

bb.s:                                             ; preds = %.thread313.thread360.i, %.thread313.i
  %.sroa.0.0312363.i = phi i8 [ %.sroa.0.0.ph.i, %.thread313.thread360.i ], [ %.sroa.5188.0.copyload, %.thread313.i ]
  %i.ce = zext nneg i8 %.sroa.7.0.copyload to i64
  %i.cf = shl nuw nsw i64 %i.ce, 40
  br label %.thread313.thread.i

.thread313.thread.i:                              ; preds = %bb.s, %.critedge252.i, %.thread313.i
  %.not238359.i = phi i1 [ true, %.thread313.i ], [ false, %bb.s ], [ true, %.critedge252.i ]
  %.sroa.0.0312358.i = phi i8 [ %.sroa.5188.0.copyload, %.thread313.i ], [ %.sroa.0.0312363.i, %bb.s ], [ %.sroa.0.0.ph.i, %.critedge252.i ] ; 4 uses
  %.sroa.0306.5.insert.ext.i = phi i64 [ 280375465082880, %.thread313.i ], [ %i.cf, %bb.s ], [ 280375465082880, %.critedge252.i ] ; 3 uses
  %.not239.i = icmp ne i8 %.sroa.9190.0.copyload, -1 ; 3 uses
  br i1 %.not239.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread313.thread.i
  %i.cg = icmp ult i8 %.sroa.9190.0.copyload, 61
  tail call void @llvm.assume(i1 %i.cg)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread313.thread.i
  %.not244.i = icmp ne i32 %.sroa.3186.0.copyload, -1 ; 4 uses
  br i1 %.not244.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ch = icmp ult i32 %.sroa.3186.0.copyload, 1000000000
  tail call void @llvm.assume(i1 %i.ch)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %.not238359.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %.not239.i, label %bb.aa, label %bb.ab

bb.y:                                             ; preds = %bb.w
  %brmerge.i = or i1 %.not244.i, %.not239.i
  br i1 %brmerge.i, label %bb.ah, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.0294.6.insert.ext.i = zext nneg i8 %.sroa.0.0312358.i to i64
  %.sroa.0294.6.insert.shift.i = shl nuw nsw i64 %.sroa.0294.6.insert.ext.i, 48
  br label %bb.ai

bb.aa:                                            ; preds = %bb.x
  %i.ci = icmp samesign ugt i8 %.sroa.9190.0.copyload, 59 ; 2 uses
  br i1 %.not244.i, label %bb.ad, label %bb.ae

bb.ab:                                            ; preds = %bb.x
  br i1 %.not244.i, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.0299.6.insert.ext.i = zext nneg i8 %.sroa.0.0312358.i to i64
  %.sroa.0299.6.insert.shift.i = shl nuw nsw i64 %.sroa.0299.6.insert.ext.i, 48
  %.sroa.0299.6.insert.insert.i = add nuw nsw i64 %.sroa.0299.6.insert.shift.i, %.sroa.0306.5.insert.ext.i
  br label %bb.ai

bb.ad:                                            ; preds = %bb.aa
  br i1 %i.ci, label %bb.ah, label %bb.ag, !prof !41

bb.ae:                                            ; preds = %bb.aa
  br i1 %i.ci, label %bb.ah, label %bb.af, !prof !41

bb.af:                                            ; preds = %bb.ae
  %.sroa.0302.4.insert.ext.i = zext nneg i8 %.sroa.9190.0.copyload to i64
  %.sroa.0302.4.insert.shift.i = shl nuw nsw i64 %.sroa.0302.4.insert.ext.i, 32
  %.sroa.0302.6.insert.ext.i = zext nneg i8 %.sroa.0.0312358.i to i64
  %.sroa.0302.6.insert.shift.i = shl nuw nsw i64 %.sroa.0302.6.insert.ext.i, 48
  %i.cj = or disjoint i64 %.sroa.0302.6.insert.shift.i, %.sroa.0302.4.insert.shift.i
  %.sroa.0302.6.insert.insert.i = or i64 %i.cj, %.sroa.0306.5.insert.ext.i
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ad
  %.sroa.0306.0.insert.ext.i = zext nneg i32 %.sroa.3186.0.copyload to i64
  %.sroa.0306.4.insert.ext.i = zext nneg i8 %.sroa.9190.0.copyload to i64
  %.sroa.0306.4.insert.shift.i = shl nuw nsw i64 %.sroa.0306.4.insert.ext.i, 32
  %i.ck = or disjoint i64 %.sroa.0306.4.insert.shift.i, %.sroa.0306.0.insert.ext.i
  %.sroa.0306.6.insert.ext.i = zext nneg i8 %.sroa.0.0312358.i to i64
  %.sroa.0306.6.insert.shift.i = shl nuw nsw i64 %.sroa.0306.6.insert.ext.i, 48
  %i.cl = or disjoint i64 %.sroa.0306.6.insert.shift.i, %i.ck
  %.sroa.0306.6.insert.insert.i = or i64 %i.cl, %.sroa.0306.5.insert.ext.i
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ab, %bb.y, %bb.q, %bb.ae, %bb.ad
  %.sink365.i = phi i8 [ 2, %bb.ab ], [ 0, %bb.ae ], [ 2, %bb.q ], [ 0, %bb.ad ], [ 2, %bb.y ]
  store i64 ptrtoint (ptr @556 to i64), ptr %0, align 8
  %.sroa.2128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %.sroa.2128.0..sroa_idx, align 8
  br label %bb.f

bb.ai:                                            ; preds = %bb.z, %bb.ac, %bb.af, %bb.ag, %bb.r
  %.sroa.0182.0.ph = phi i64 [ %.sroa.0302.6.insert.insert.i, %bb.af ], [ %.sroa.0299.6.insert.insert.i, %bb.ac ], [ %.sroa.0306.6.insert.insert.i, %bb.ag ], [ %.sroa.0294.6.insert.shift.i, %bb.z ], [ %.sroa.0.6.insert.shift.i, %bb.r ] ; 7 uses
  %.sroa.3201.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 4 ; 9 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 45
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1 ; 5 uses
  %.sroa.5202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 46
  %.sroa.5202.0.copyload = load i8, ptr %.sroa.5202.0..sroa_idx, align 2 ; 5 uses
  %.sroa.6204.0.copyload = load i8, ptr %.sroa.12193.0..sroa_idx, align 2
  %i.cm = icmp eq i8 %.sroa.3201.0.copyload, -128
  br i1 %i.cm, label %bb.f, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cn = icmp sgt i8 %.sroa.3201.0.copyload, -24
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = icmp slt i8 %.sroa.3201.0.copyload, 24
  tail call void @llvm.assume(i1 %i.co)
  %.not.i168 = icmp eq i8 %.sroa.4.0.copyload, -128
  br i1 %.not.i168, label %.thread51.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cp = icmp sgt i8 %.sroa.4.0.copyload, -60
  tail call void @llvm.assume(i1 %i.cp)
  %i.cq = icmp slt i8 %.sroa.4.0.copyload, 60
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = trunc nuw i8 %.sroa.6204.0.copyload to i1 ; 2 uses
  %i.cs = sub nsw i8 0, %.sroa.4.0.copyload
  %spec.select.i.i169 = select i1 %i.cr, i8 %i.cs, i8 %.sroa.4.0.copyload ; 4 uses
  %.not65.i = icmp eq i8 %.sroa.5202.0.copyload, -128
  br i1 %.not65.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ct = icmp sgt i8 %.sroa.5202.0.copyload, -60
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = icmp slt i8 %.sroa.5202.0.copyload, 60
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = sub nsw i8 0, %.sroa.5202.0.copyload
  %spec.select.i19.i = select i1 %i.cr, i8 %i.cv, i8 %.sroa.5202.0.copyload
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %spec.select.i170 = phi i8 [ 0, %bb.ak ], [ %spec.select.i19.i, %bb.al ] ; 3 uses
  %i.cw = icmp sgt i8 %.sroa.3201.0.copyload, 0   ; 2 uses
  %i.cx = icmp slt i8 %spec.select.i.i169, 0
  %or.cond40.i.i.i = and i1 %i.cw, %i.cx
  br i1 %or.cond40.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cy = icmp slt i8 %.sroa.3201.0.copyload, 0
  %i.cz = icmp sgt i8 %spec.select.i.i169, 0
  %or.cond41.i.i.i = and i1 %i.cy, %i.cz
  br i1 %or.cond41.i.i.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.da = sub nsw i8 0, %spec.select.i.i169
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.sroa.0.1.i.i.i = phi i8 [ %spec.select.i.i169, %bb.an ], [ %i.da, %bb.ao ] ; 2 uses
  %i.db = icmp slt i8 %spec.select.i170, 0        ; 2 uses
  %or.cond42.i.i.i = and i1 %i.cw, %i.db
  br i1 %or.cond42.i.i.i, label %bb.aq, label %.thread51.i

bb.aq:                                            ; preds = %.thread51.i, %bb.ap
  %.sroa.0.1.i.i59.i = phi i8 [ %.sroa.0.1.i.i57.i, %.thread51.i ], [ %.sroa.0.1.i.i.i, %bb.ap ]
  %.sroa.05.030374256.i = phi i8 [ %.sroa.05.030374255.i, %.thread51.i ], [ %spec.select.i170, %bb.ap ]
  %i.dc = sub nsw i8 0, %.sroa.05.030374256.i
  br label %bb.ar

.thread51.i:                                      ; preds = %bb.ap, %bb.aj
  %i.dd = phi i1 [ %i.db, %bb.ap ], [ false, %bb.aj ]
  %.sroa.0.1.i.i57.i = phi i8 [ %.sroa.0.1.i.i.i, %bb.ap ], [ 0, %bb.aj ] ; 4 uses
  %.sroa.05.030374255.i = phi i8 [ %spec.select.i170, %bb.ap ], [ 0, %bb.aj ] ; 3 uses
  %i.de = icmp slt i8 %.sroa.3201.0.copyload, 0
  %i.df = icmp sgt i8 %.sroa.05.030374255.i, 0    ; 2 uses
  %or.cond.i.i.i = and i1 %i.de, %i.df
  %i.dg = icmp sgt i8 %.sroa.0.1.i.i57.i, 0
  %or.cond38.i.i.i = and i1 %i.dd, %i.dg
  %i.dh = icmp slt i8 %.sroa.0.1.i.i57.i, 0
  %or.cond39.i.i.i = and i1 %i.dh, %i.df
  %i.di = or i1 %or.cond38.i.i.i, %or.cond39.i.i.i
  %or.cond44.i.i.i = select i1 %or.cond.i.i.i, i1 true, i1 %i.di
  br i1 %or.cond44.i.i.i, label %bb.aq, label %bb.ar

bb.ar:                                            ; preds = %.thread51.i, %bb.aq
  %.sroa.0.1.i.i58.i = phi i8 [ %.sroa.0.1.i.i59.i, %bb.aq ], [ %.sroa.0.1.i.i57.i, %.thread51.i ] ; 3 uses
  %.sroa.06.0.i.i.i = phi i8 [ %i.dc, %bb.aq ], [ %.sroa.05.030374255.i, %.thread51.i ] ; 3 uses
  %.sroa.3.0.insert.ext.i.i.i = zext i8 %.sroa.3201.0.copyload to i64
  %.sroa.3.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i.i, 16
  %.sroa.2.0.insert.ext.i.i.i = zext i8 %.sroa.0.1.i.i58.i to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i.i, 8
  %.sroa.012.0.insert.ext.i.i.i = zext i8 %.sroa.06.0.i.i.i to i64
  %2 = or disjoint i64 %.sroa.3.0.insert.shift.i.i.i, %.sroa.012.0.insert.ext.i.i.i
  %.sroa.012.0.insert.insert.i.i.i = or disjoint i64 %2, %.sroa.2.0.insert.shift.i.i.i
  %.sroa.0.0.extract.trunc.i = trunc nuw i64 %.sroa.012.0.insert.insert.i.i.i to i24
  br i1 %.sroa.023.0, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit, %bb.ar
  store i64 %.sroa.0182.0.ph, ptr %0, align 8
  %.sroa.3141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bv, ptr %.sroa.3141.0..sroa_idx, align 8
  %.sroa.4144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i24 %.sroa.0.0.extract.trunc.i, ptr %.sroa.4144.0..sroa_idx, align 4
  br label %bb.f

bb.at:                                            ; preds = %bb.ar
  %.sroa.0293.0.extract.trunc = trunc i64 %.sroa.0182.0.ph to i32 ; 2 uses
  %i.dj = icmp ult i32 %.sroa.0293.0.extract.trunc, 1000000000
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = icmp eq i32 %.sroa.0293.0.extract.trunc, 999999999
  br i1 %i.dk, label %bb.au, label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread

bb.au:                                            ; preds = %bb.at
  %3 = or i8 %.sroa.0.1.i.i58.i, %.sroa.3201.0.copyload
  %4 = or i8 %3, %.sroa.06.0.i.i.i
  %i.dl = icmp eq i8 %4, 0
  br i1 %i.dl, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.sroa.0293.4.extract.shift = lshr i64 %.sroa.0182.0.ph, 32
  %.sroa.0293.4.extract.trunc = trunc i64 %.sroa.0293.4.extract.shift to i8 ; 2 uses
  %i.dm = icmp ult i8 %.sroa.0293.4.extract.trunc, 60
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = sub nsw i8 %.sroa.0293.4.extract.trunc, %.sroa.06.0.i.i.i ; 5 uses
  %i.do = icmp sgt i8 %i.dn, -1
  br i1 %i.do, label %bb.ay, label %bb.ax, !prof !24

bb.aw:                                            ; preds = %bb.au
  %i.dp = ashr i32 %i.bv, 10
  %i.dq = trunc i32 %i.bv to i16
  %i.dr = and i16 %i.dq, 511
  br label %_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.ds = add nsw i8 %i.dn, 60
  br label %bb.az

bb.ay:                                            ; preds = %bb.av
  %i.dt = icmp samesign ult i8 %i.dn, 60
  br i1 %i.dt, label %bb.az, label %bb.ba, !prof !24

bb.az:                                            ; preds = %bb.ba, %bb.ay, %bb.ax
  %.sroa.030.0.i.i = phi i8 [ -1, %bb.ax ], [ 1, %bb.ba ], [ 0, %bb.ay ]
  %.sroa.029.0.i.i = phi i8 [ %i.ds, %bb.ax ], [ %i.dy, %bb.ba ], [ %i.dn, %bb.ay ]
  %.sroa.0293.5.extract.shift = lshr i64 %.sroa.0182.0.ph, 40
  %.sroa.0293.5.extract.trunc = trunc i64 %.sroa.0293.5.extract.shift to i8 ; 2 uses
  %i.du = icmp ult i8 %.sroa.0293.5.extract.trunc, 60
  tail call void @llvm.assume(i1 %i.du)
  %i.dv = sub nsw i8 %.sroa.0293.5.extract.trunc, %.sroa.0.1.i.i58.i
  %i.dw = add nsw i8 %.sroa.030.0.i.i, %i.dv      ; 5 uses
  %i.dx = icmp sgt i8 %i.dw, -1
  br i1 %i.dx, label %bb.bc, label %bb.bb, !prof !24

bb.ba:                                            ; preds = %bb.ay
  %i.dy = add nsw i8 %i.dn, -60
  br label %bb.az

bb.bb:                                            ; preds = %bb.az
  %i.dz = add nsw i8 %i.dw, 60
  br label %bb.bd

bb.bc:                                            ; preds = %bb.az
  %i.ea = icmp samesign ult i8 %i.dw, 60
  br i1 %i.ea, label %bb.bd, label %bb.be, !prof !24

bb.bd:                                            ; preds = %bb.be, %bb.bc, %bb.bb
  %.sroa.031.0.i.i = phi i8 [ %i.dz, %bb.bb ], [ %i.ef, %bb.be ], [ %i.dw, %bb.bc ]
  %.sroa.032.0.i.i = phi i8 [ -1, %bb.bb ], [ 1, %bb.be ], [ 0, %bb.bc ]
  %.sroa.0293.6.extract.shift = lshr i64 %.sroa.0182.0.ph, 48
  %.sroa.0293.6.extract.trunc = trunc nuw nsw i64 %.sroa.0293.6.extract.shift to i8
  %i.eb = icmp samesign ult i64 %.sroa.0182.0.ph, 6755399441055744
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = sub nsw i8 %.sroa.0293.6.extract.trunc, %.sroa.3201.0.copyload
  %i.ed = add nsw i8 %.sroa.032.0.i.i, %i.ec      ; 5 uses
  %i.ee = icmp sgt i8 %i.ed, -1
  br i1 %i.ee, label %bb.bf, label %bb.bg, !prof !24

bb.be:                                            ; preds = %bb.bc
  %i.ef = add nsw i8 %i.dw, -60
  br label %bb.bd

bb.bf:                                            ; preds = %bb.bd
  %i.eg = icmp samesign ult i8 %i.ed, 24
  br i1 %i.eg, label %bb.bh, label %bb.bi, !prof !24

bb.bg:                                            ; preds = %bb.bd
  %i.eh = add nsw i8 %i.ed, 24
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bi, %bb.bg, %bb.bf
  %.sroa.033.0.i.i = phi i8 [ %i.ed, %bb.bf ], [ %i.eq, %bb.bi ], [ %i.eh, %bb.bg ]
  %.sroa.034.0.i.i = phi i16 [ 0, %bb.bf ], [ 1, %bb.bi ], [ -1, %bb.bg ]
  %i.ei = ashr i32 %i.bv, 10                      ; 6 uses
  %i.ej = trunc i32 %i.bv to i16
  %i.ek = and i16 %i.ej, 511
  %i.el = add nsw i16 %.sroa.034.0.i.i, %i.ek     ; 5 uses
  %.sroa.026.0.i.i = tail call i32 @llvm.abs.i32(i32 %i.ei, i1 true)
  %i.em = mul i32 %.sroa.026.0.i.i, 33555415
  %i.en = and i32 %i.em, 100695055
  %i.eo = icmp samesign ult i32 %i.en, 31745
  %.sroa.016.0.i.i = select i1 %i.eo, i16 366, i16 365 ; 2 uses
  %i.ep = icmp sgt i16 %i.el, %.sroa.016.0.i.i
  br i1 %i.ep, label %bb.bj, label %bb.bk, !prof !12

bb.bi:                                            ; preds = %bb.bf
  %i.eq = add nsw i8 %i.ed, -24
  br label %bb.bh

bb.bj:                                            ; preds = %bb.bh
  %i.er = sub nuw nsw i16 %i.el, %.sroa.016.0.i.i
  %i.es = add nsw i32 %i.ei, 1
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bh
  %i.et = icmp slt i16 %i.el, 1
  br i1 %i.et, label %bb.bl, label %bb.bm, !prof !12

bb.bl:                                            ; preds = %bb.bk
  %i.eu = add nsw i32 %i.ei, -1                   ; 2 uses
  %i.ev = icmp slt i32 %i.ei, 1
  %i.ew = sub nsw i32 1, %i.ei
  %.sroa.027.0.i.i = select i1 %i.ev, i32 %i.ew, i32 %i.eu
  %i.ex = mul i32 %.sroa.027.0.i.i, 33555415
  %i.ey = and i32 %i.ex, 100695055
  %i.ez = icmp samesign ult i32 %i.ey, 31745
  %.sroa.017.0.i.i = select i1 %i.ez, i16 366, i16 365
  %i.fa = add nsw i16 %i.el, %.sroa.017.0.i.i
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj
  %.sroa.011.0.i.i = phi i16 [ %i.er, %bb.bj ], [ %i.fa, %bb.bl ], [ %i.el, %bb.bk ]
  %.sroa.06.0.i.i = phi i32 [ %i.es, %bb.bj ], [ %i.eu, %bb.bl ], [ %i.ei, %bb.bk ]
  %.sroa.4.0.insert.ext.i.i.i = zext nneg i8 %.sroa.033.0.i.i to i64
  %.sroa.4.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i, 48
  %.sroa.3.0.insert.ext.i.i.i172 = zext nneg i8 %.sroa.031.0.i.i to i64
  %.sroa.3.0.insert.shift.i.i.i173 = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i.i172, 40
  %.sroa.3.0.insert.insert.i.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i, %.sroa.3.0.insert.shift.i.i.i173
  %.sroa.2.0.insert.ext.i.i.i174 = zext nneg i8 %.sroa.029.0.i.i to i64
  %.sroa.2.0.insert.shift.i.i.i175 = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i.i174, 32
  %.sroa.2.0.insert.insert.i.i.i176 = or disjoint i64 %.sroa.3.0.insert.insert.i.i.i, %.sroa.2.0.insert.shift.i.i.i175
  br label %_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i

_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i: ; preds = %bb.bm, %bb.aw
  %.sroa.06.0.sink.i.i = phi i32 [ %.sroa.06.0.i.i, %bb.bm ], [ %i.dp, %bb.aw ] ; 3 uses
  %.sroa.011.0.sink.i.i = phi i16 [ %.sroa.011.0.i.i, %bb.bm ], [ %i.dr, %bb.aw ] ; 3 uses
  %.sroa.0.0.insert.insert.i.sink.i.i = phi i64 [ %.sroa.2.0.insert.insert.i.i.i176, %bb.bm ], [ %.sroa.0182.0.ph, %bb.aw ] ; 4 uses
  %.sroa.611.12.extract.shift.i = lshr i64 %.sroa.0.0.insert.insert.i.sink.i.i, 32
  %.sroa.611.12.extract.trunc.i = trunc i64 %.sroa.611.12.extract.shift.i to i8 ; 2 uses
  %.sroa.611.13.extract.shift.i = lshr i64 %.sroa.0.0.insert.insert.i.sink.i.i, 40
  %.sroa.611.13.extract.trunc.i = trunc i64 %.sroa.611.13.extract.shift.i to i8 ; 2 uses
  %i.fb = add nsw i32 %.sroa.06.0.sink.i.i, -10000
  %or.cond.i.i177 = icmp ult i32 %i.fb, -19999
  br i1 %or.cond.i.i177, label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread, label %bb.bn, !prof !41

bb.bn:                                            ; preds = %_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i
  %.sroa.010.0.i.i = tail call i32 @llvm.abs.i32(i32 %.sroa.06.0.sink.i.i, i1 true) ; 2 uses
  %i.fc = mul i32 %.sroa.010.0.i.i, 33555415
  %i.fd = and i32 %i.fc, 100695055
  %i.fe = icmp samesign ult i32 %i.fd, 31745      ; 2 uses
  %i.ff = add nsw i16 %.sroa.011.0.sink.i.i, -1
  %or.cond1.i.i = icmp ult i16 %i.ff, 365
  br i1 %or.cond1.i.i, label %bb.bp, label %bb.bo, !prof !42

bb.bo:                                            ; preds = %bb.bn
  %i.fg = icmp eq i16 %.sroa.011.0.sink.i.i, 366
  %brmerge.not.i.i = and i1 %i.fg, %i.fe
  br i1 %brmerge.not.i.i, label %bb.bp, label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.fh = shl nsw i32 %.sroa.06.0.sink.i.i, 10
  %i.fi = select i1 %i.fe, i32 512, i32 0
  %i.fj = or disjoint i32 %i.fi, %i.fh
  %i.fk = zext nneg i16 %.sroa.011.0.sink.i.i to i32 ; 3 uses
  %i.fl = or i32 %i.fj, %i.fk                     ; 2 uses
  %i.fm = icmp ne i32 %i.fl, 0
  tail call void @llvm.assume(i1 %i.fm)
  %i.fn = icmp samesign ult i64 %.sroa.0.0.insert.insert.i.sink.i.i, 6755399441055744
  tail call void @llvm.assume(i1 %i.fn)
  %.sroa.611.14.extract.shift.i.mask = and i64 %.sroa.0.0.insert.insert.i.sink.i.i, 8725724278030336
  %i.fo = icmp eq i64 %.sroa.611.14.extract.shift.i.mask, 6473924464345088
  br i1 %i.fo, label %bb.bq, label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread

bb.bq:                                            ; preds = %bb.bp
  %i.fp = icmp ult i8 %.sroa.611.13.extract.trunc.i, 60
  tail call void @llvm.assume(i1 %i.fp)
  %i.fq = icmp eq i8 %.sroa.611.13.extract.trunc.i, 59
  br i1 %i.fq, label %bb.br, label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread

bb.br:                                            ; preds = %bb.bq
  %i.fr = icmp ult i8 %.sroa.611.12.extract.trunc.i, 60
  tail call void @llvm.assume(i1 %i.fr)
  %i.fs = icmp eq i8 %.sroa.611.12.extract.trunc.i, 59
  br i1 %i.fs, label %bb.bs, label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread

bb.bs:                                            ; preds = %bb.br
  %i.ft = lshr i32 %i.fl, 9
  %.lobit.i.i = and i32 %i.ft, 1
  %i.fu = add nuw nsw i32 %.lobit.i.i, 59         ; 2 uses
  %.not.i.i = icmp samesign ult i32 %i.fu, %i.fk  ; 2 uses
  %..i.i = select i1 %.not.i.i, i32 %i.fu, i32 0
  %i.fv = sub nsw i32 %i.fk, %..i.i               ; 2 uses
  %i.fw = mul nsw i32 %i.fv, 268
  %i.fx = add nsw i32 %i.fw, 8028
  %i.fy = lshr i32 %i.fx, 13                      ; 2 uses
  %i.fz = mul nuw nsw i32 %i.fy, 3917
  %i.ga = add nuw nsw i32 %i.fz, 28902
  %i.gb = lshr i32 %i.ga, 7
  %i.gc = sub nsw i32 %i.fv, %i.gb
  %i.gd = trunc i32 %i.gc to i8
  %..i10.i = select i1 %.not.i.i, i32 2, i32 0
  %i.ge = add nuw nsw i32 %i.fy, %..i10.i
  %i.gf = trunc i32 %i.ge to i8                   ; 4 uses
  %i.gg = icmp ne i8 %i.gf, 0
  tail call void @llvm.assume(i1 %i.gg)
  %i.gh = icmp eq i8 %i.gf, 2
  br i1 %i.gh, label %bb.bt, label %bb.bu, !prof !12

bb.bt:                                            ; preds = %bb.bs
  %.sroa.06.0.i = zext nneg i32 %.sroa.010.0.i.i to i64
  %i.gi = mul i64 %.sroa.06.0.i, 4611686019114582671
  %i.gj = and i64 %i.gi, -4611685951855394801
  %i.gk = icmp ult i64 %i.gj, 66571993089
  %..i = select i1 %i.gk, i8 29, i8 28
  br label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit

bb.bu:                                            ; preds = %bb.bs
  %i.gl = lshr i8 %i.gf, 3
  %i.gm = xor i8 %i.gl, %i.gf
  %i.gn = or i8 %i.gm, 30
  br label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit

_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit: ; preds = %bb.bt, %bb.bu
  %.sroa.01.0.i = phi i8 [ %i.gn, %bb.bu ], [ %..i, %bb.bt ]
  %i.go = icmp eq i8 %.sroa.01.0.i, %i.gd
  br i1 %i.go, label %bb.as, label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread

_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread: ; preds = %bb.bo, %_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i, %bb.bq, %bb.br, %bb.at, %bb.bp, %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit
  store ptr @556, ptr %0, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %.sroa.469.0..sroa_idx, align 8
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull align 16 dereferenceable(64) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [64 x i8], align 16               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
end_hunk_0
