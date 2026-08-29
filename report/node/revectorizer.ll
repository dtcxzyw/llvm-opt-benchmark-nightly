Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/revectorizer?download=true
inline.NumInlined: 2710
inline.NumDeleted: 1072
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2v88internal4Zone3NewINS0_8compiler8PackNodeEJRKPS1_RKNS0_10ZoneVectorIPNS3_4NodeEEEEEEPT_DpOT0_:bb.a
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler7SLPTree20NewPackNodeAndRecursERKNS0_10ZoneVectorIPNS1_4NodeEEEiij(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.v8::internal::ZoneVector", align 8 ; 9 uses
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str) #16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 16777215
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 16777215
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.6, ptr noundef %i.i, i32 noundef %i.l, i32 noundef %i.q) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = load ptr, ptr %0, align 8
  %i.s = tail call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler8PackNodeEJRKPS1_RKNS0_10ZoneVectorIPNS3_4NodeEEEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not14.i = icmp eq ptr %i.u, %i.w
  br i1 %.not14.i, label %_ZN2v88internal8compiler7SLPTree11NewPackNodeERKNS0_10ZoneVectorIPNS1_4NodeEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.015.i = phi ptr [ %i.u, %.lr.ph.i ], [ %i.aa, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.y = load ptr, ptr %.015.i, align 8
  store ptr %i.y, ptr %i.a, align 8
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIPN2v88internal8compiler4NodeESt4pairIKS5_PNS3_8PackNodeEENS2_13ZoneAllocatorISA_EENS_10_Select1stESt8equal_toIS5_ENS1_4base4hashIS5_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS7_(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store ptr %i.s, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.aa = getelementptr inbounds nuw i8, ptr %.015.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aa, %i.w
  br i1 %.not.i, label %_ZN2v88internal8compiler7SLPTree11NewPackNodeERKNS0_10ZoneVectorIPNS1_4NodeEEE.exit, label %bb.d

_ZN2v88internal8compiler7SLPTree11NewPackNodeERKNS0_10ZoneVectorIPNS1_4NodeEEE.exit: ; preds = %bb.d, %bb.c
  %.not31 = icmp sgt i32 %3, 0
  br i1 %.not31, label %.lr.ph33, label %.loopexit

.lr.ph33:                                         ; preds = %_ZN2v88internal8compiler7SLPTree11NewPackNodeERKNS0_10ZoneVectorIPNS1_4NodeEEE.exit
  %i.ab = add nsw i32 %3, %2
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.af = add i32 %4, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ak = sext i32 %2 to i64
  %i.al = sext i32 %i.ab to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph33, %_ZN2v88internal8compiler8PackNode10SetOperandEmPS2_.exit
  %indvars.iv = phi i64 [ %i.ak, %.lr.ph33 ], [ %i.ck, %_ZN2v88internal8compiler8PackNode10SetOperandEmPS2_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.am = load ptr, ptr %0, align 8
  store ptr %i.am, ptr %5, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %i.an = load ptr, ptr %i.v, align 8
  %i.ao = load ptr, ptr %i.t, align 8             ; 2 uses
  %.not34 = icmp eq ptr %i.an, %i.ao
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ap = icmp sgt i64 %indvars.iv, -1
  br i1 %i.ap, label %.lr.ph.split, label %bb.f, !prof !10

._crit_edge:                                      ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backEOS4_.exit, %bb.e
  %i.aq = call noundef ptr @_ZN2v88internal8compiler7SLPTree12BuildTreeRecERKNS0_10ZoneVectorIPNS1_4NodeEEEj(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %i.af) ; 2 uses
  %.not.not = icmp eq ptr %i.aq, null
  br i1 %.not.not, label %.critedge, label %bb.k

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backEOS4_.exit
  %i.ar = phi ptr [ %i.by, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backEOS4_.exit ], [ %i.ao, %.lr.ph ]
  %.02330 = phi i64 [ %i.bw, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backEOS4_.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.02330
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp slt i64 %indvars.iv, %i.ax
  br i1 %i.ay, label %bb.h, label %bb.g, !prof !10

bb.f:                                             ; preds = %.lr.ph
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #17
  unreachable

bb.g:                                             ; preds = %.lr.ph.split
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.59) #17
  unreachable

bb.h:                                             ; preds = %.lr.ph.split
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = and i32 %i.ba, 251658240
  %.not.i.i.i = icmp eq i32 %i.bb, 251658240
  %i.bc = ptrtoint ptr %i.at to i64
  %i.bd = add i64 %i.bc, 32
  %i.be = inttoptr i64 %i.bd to ptr               ; 2 uses
  br i1 %.not.i.i.i, label %bb.i, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

bb.i:                                             ; preds = %bb.h
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = add i64 %i.bg, 16
  %i.bi = inttoptr i64 %i.bh to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit: ; preds = %bb.h, %bb.i
  %.sink.i.i.i = phi ptr [ %i.bi, %bb.i ], [ %i.be, %bb.h ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i.i, i64 %indvars.iv
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.bm = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.bn = icmp ult ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backEOS4_.exit, label %bb.j, !prof !10

bb.j:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  %i.bo = load ptr, ptr %i.ac, align 8
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 3
  %i.bt = add nsw i64 %i.bs, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.bt)
  %.pre.i.i = load ptr, ptr %i.ad, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backEOS4_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE9push_backEOS4_.exit: ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit, %bb.j
  %i.bu = phi ptr [ %i.bl, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit ], [ %.pre.i.i, %bb.j ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bv, ptr %i.ad, align 8
  store ptr %i.bk, ptr %i.bu, align 8
  %i.bw = add nuw i64 %.02330, 1                  ; 2 uses
  %i.bx = load ptr, ptr %i.v, align 8
  %i.by = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 3
  %i.cd = icmp ult i64 %i.bw, %i.cc
  br i1 %i.cd, label %.lr.ph.split, label %._crit_edge, !llvm.loop !12

bb.k:                                             ; preds = %._crit_edge
  %i.ce = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.cf = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64               ; 2 uses
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = ashr exact i64 %i.ci, 3
  %i.ck = add nsw i64 %indvars.iv, 1              ; 7 uses
  %i.cl = icmp ult i64 %i.cj, %i.ck
  br i1 %i.cl, label %bb.l, label %_ZN2v88internal8compiler8PackNode10SetOperandEmPS2_.exit

bb.l:                                             ; preds = %bb.k
  %i.cm = load ptr, ptr %i.aj, align 8
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.ch
  %i.cp = ashr exact i64 %i.co, 3
  %.not.i.i.i28 = icmp ugt i64 %i.ck, %i.cp
  br i1 %.not.i.i.i28, label %bb.m, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE14EnsureCapacityEm.exit.i.i, !prof !9

bb.m:                                             ; preds = %bb.l
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 noundef %i.ck)
  %.pre.i.i29 = load ptr, ptr %i.ai, align 8
  %.pre.i = load ptr, ptr %i.ah, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE14EnsureCapacityEm.exit.i.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE14EnsureCapacityEm.exit.i.i: ; preds = %bb.m, %bb.l
  %i.cq = phi ptr [ %i.ce, %bb.l ], [ %.pre.i, %bb.m ] ; 3 uses
  %i.cr = phi ptr [ %i.cf, %bb.l ], [ %.pre.i.i29, %bb.m ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ck ; 2 uses
  %i.ct = icmp ult ptr %i.cq, %i.cs
  br i1 %i.ct, label %.lr.ph.preheader.i.i, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE6resizeEm.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE14EnsureCapacityEm.exit.i.i
  %i.cu = ptrtoaddr ptr %i.cq to i64              ; 2 uses
  %i.cv = ptrtoaddr ptr %i.cr to i64
  %i.cw = shl nuw nsw i64 %i.ck, 3
  %6 = add nuw i64 %i.cw, %i.cv
  %i.cx = add i64 %i.cu, 8
  %umax.i.i = call i64 @llvm.umax.i64(i64 %6, i64 %i.cx)
  %7 = xor i64 %i.cu, -1
  %i.cy = add i64 %umax.i.i, %7
  %i.cz = and i64 %i.cy, -8
  %i.da = add i64 %i.cz, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.cq, i8 0, i64 %i.da, i1 false)
  %.pre4.pre.i = load ptr, ptr %i.ai, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE6resizeEm.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE6resizeEm.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE14EnsureCapacityEm.exit.i.i
  %.pre4.i = phi ptr [ %i.cr, %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE14EnsureCapacityEm.exit.i.i ], [ %.pre4.pre.i, %.lr.ph.preheader.i.i ]
  store ptr %i.cs, ptr %i.ah, align 8
  br label %_ZN2v88internal8compiler8PackNode10SetOperandEmPS2_.exit

_ZN2v88internal8compiler8PackNode10SetOperandEmPS2_.exit: ; preds = %bb.k, %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE6resizeEm.exit.i
  %i.db = phi ptr [ %.pre4.i, %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE6resizeEm.exit.i ], [ %i.cf, %bb.k ]
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv
  store ptr %i.aq, ptr %i.dc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %.not = icmp slt i64 %i.ck, %i.al
  br i1 %.not, label %bb.e, label %.loopexit, !llvm.loop !13

.critedge:                                        ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN2v88internal8compiler8PackNode10SetOperandEmPS2_.exit, %_ZN2v88internal8compiler7SLPTree11NewPackNodeERKNS0_10ZoneVectorIPNS1_4NodeEEE.exit, %.critedge
  %spec.select = phi ptr [ null, %.critedge ], [ %i.s, %_ZN2v88internal8compiler7SLPTree11NewPackNodeERKNS0_10ZoneVectorIPNS1_4NodeEEE.exit ], [ %i.s, %_ZN2v88internal8compiler8PackNode10SetOperandEmPS2_.exit ]
  ret ptr %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler7SLPTree12BuildTreeRecERKNS0_10ZoneVectorIPNS1_4NodeEEEj(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.v8::internal::ZoneVector", align 8 ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !5, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str) #16
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__._ZN2v88internal8compiler7SLPTree12BuildTreeRecERKNS0_10ZoneVectorIPNS1_4NodeEEEj) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 22 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 8 uses
  %i.j = icmp eq i32 %2, 1000
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !5, !noundef !6
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.dh

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str) #16
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.13) #16
  br label %bb.dh

bb.f:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not17.not.i = icmp eq ptr %i.f, %i.n
  br i1 %.not17.not.i, label %_ZN2v88internal8compiler7SLPTree10AllOnStackERKNS0_10ZoneVectorIPNS1_4NodeEEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not10.i.i.i.i.i, label %_ZN2v88internal8compiler7SLPTree10AllOnStackERKNS0_10ZoneVectorIPNS1_4NodeEEE.exit.thread, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %.lr.ph.i, %_ZN2v88internal8compiler7SLPTree7OnStackEPNS1_4NodeE.exit.thread.i
  %.01118.i = phi ptr [ %i.y, %_ZN2v88internal8compiler7SLPTree7OnStackEPNS1_4NodeE.exit.thread.i ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %i.r = load ptr, ptr %.01118.i, align 8         ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.p, %.lr.ph.i.i.i.i.preheader.i ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.q, %.lr.ph.i.i.i.i.preheader.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp ult ptr %i.t, %i.r                  ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.u, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.u, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeES4_St9_IdentityIS4_ESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRKS4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !14

_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeES4_St9_IdentityIS4_ESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRKS4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.v = icmp eq ptr %.19.i.i.i.i.i, %i.q
  br i1 %i.v, label %_ZN2v88internal8compiler7SLPTree7OnStackEPNS1_4NodeE.exit.thread.i, label %_ZN2v88internal8compiler7SLPTree7OnStackEPNS1_4NodeE.exit.i

_ZN2v88internal8compiler7SLPTree7OnStackEPNS1_4NodeE.exit.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeES4_St9_IdentityIS4_ESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRKS4_.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  %.not16.i = icmp ult ptr %i.r, %i.x
  br i1 %.not16.i, label %_ZN2v88internal8compiler7SLPTree7OnStackEPNS1_4NodeE.exit.thread.i, label %_ZN2v88internal8compiler7SLPTree10AllOnStackERKNS0_10ZoneVectorIPNS1_4NodeEEE.exit

_ZN2v88internal8compiler7SLPTree7OnStackEPNS1_4NodeE.exit.thread.i: ; preds = %_ZN2v88internal8compiler7SLPTree7OnStackEPNS1_4NodeE.exit.i, %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeES4_St9_IdentityIS4_ESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRKS4_.exit.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.01118.i, i64 8 ; 2 uses
  %.not.not.i = icmp eq ptr %i.y, %i.n
  br i1 %.not.not.i, label %_ZN2v88internal8compiler7SLPTree10AllOnStackERKNS0_10ZoneVectorIPNS1_4NodeEEE.exit.thread, label %.lr.ph.i.i.i.i.preheader.i

_ZN2v88internal8compiler7SLPTree10AllOnStackERKNS0_10ZoneVectorIPNS1_4NodeEEE.exit: ; preds = %_ZN2v88internal8compiler7SLPTree7OnStackEPNS1_4NodeE.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !15 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !15
  %i.ad = icmp eq ptr %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %_ZN2v88internal8compiler7SLPTree13StackTopIsPhiEv.exit

bb.g:                                             ; preds = %_ZN2v88internal8compiler7SLPTree10AllOnStackERKNS0_10ZoneVectorIPNS1_4NodeEEE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !15
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 512
  br label %_ZN2v88internal8compiler7SLPTree13StackTopIsPhiEv.exit

_ZN2v88internal8compiler7SLPTree13StackTopIsPhiEv.exit: ; preds = %_ZN2v88internal8compiler7SLPTree10AllOnStackERKNS0_10ZoneVectorIPNS1_4NodeEEE.exit, %bb.g
  %i.aj = phi ptr [ %i.ai, %bb.g ], [ %i.aa, %_ZN2v88internal8compiler7SLPTree10AllOnStackERKNS0_10ZoneVectorIPNS1_4NodeEEE.exit ]
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -24
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i16, ptr %i.ao, align 8
  %i.aq = and i16 %i.ap, -2
  %i.ar = icmp eq i16 %i.aq, 36
  br i1 %i.ar, label %_ZN2v88internal8compiler7SLPTree10AllOnStackERKNS0_10ZoneVectorIPNS1_4NodeEEE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8compiler7SLPTree13StackTopIsPhiEv.exit
  %i.as = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !5, !noundef !6
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.i, label %bb.dh

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str) #16
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = and i32 %i.av, 16777215
  %i.ax = load ptr, ptr %i.g, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = and i32 %i.bb, 16777215
  %i.bd = load ptr, ptr %i.i, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.14, i32 noundef %i.aw, ptr noundef %i.az, i32 noundef %i.bc, ptr noundef %i.bf) #16
  br label %bb.dh

_ZN2v88internal8compiler7SLPTree10AllOnStackERKNS0_10ZoneVectorIPNS1_4NodeEEE.exit.thread: ; preds = %_ZN2v88internal8compiler7SLPTree7OnStackEPNS1_4NodeE.exit.thread.i, %.lr.ph.i, %bb.f, %_ZN2v88internal8compiler7SLPTree13StackTopIsPhiEv.exit
  tail call void @_ZN2v88internal8compiler7SLPTree9PushStackERKNS0_10ZoneVectorIPNS1_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.bg = tail call noundef zeroext i1 @_ZN2v88internal8compiler7SLPTree11CanBePackedERKNS0_10ZoneVectorIPNS1_4NodeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br i1 %i.bg, label %bb.j, label %bb.dh

bb.j:                                             ; preds = %_ZN2v88internal8compiler7SLPTree10AllOnStackERKNS0_10ZoneVectorIPNS1_4NodeEEE.exit.thread
  %i.bh = load ptr, ptr %i.e, align 8             ; 9 uses
  %i.bi = load ptr, ptr %i.m, align 8             ; 6 uses
  %.not192 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not192, label %.thread175, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bk = load i64, ptr %i.bj, align 8
  %.not.not.i.i.i = icmp eq i64 %i.bk, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 208
  br i1 %.not.not.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN2v88internal8compiler7SLPTree11GetPackNodeEPNS1_4NodeE.exit.thread.us
  %.0120193.us = phi ptr [ %i.br, %_ZN2v88internal8compiler7SLPTree11GetPackNodeEPNS1_4NodeE.exit.thread.us ], [ %i.bh, %.lr.ph ] ; 2 uses
  %i.bm = load ptr, ptr %.0120193.us, align 8     ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.split.us
  %.sroa.06.0.in.i.i.i.us = phi ptr [ %i.bl, %.lr.ph.split.us ], [ %.sroa.06.0.i.i.i.us, %bb.l ]
  %.sroa.06.0.i.i.i.us = load ptr, ptr %.sroa.06.0.in.i.i.i.us, align 8 ; 4 uses
  %i.bn = icmp eq ptr %.sroa.06.0.i.i.i.us, null
  br i1 %i.bn, label %_ZN2v88internal8compiler7SLPTree11GetPackNodeEPNS1_4NodeE.exit.thread.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.us, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = icmp eq ptr %i.bm, %i.bp
  br i1 %i.bq, label %_ZN2v88internal8compiler7SLPTree11GetPackNodeEPNS1_4NodeE.exit.loopexit.us, label %bb.k, !llvm.loop !18

_ZN2v88internal8compiler7SLPTree11GetPackNodeEPNS1_4NodeE.exit.thread.us: ; preds = %bb.k, %_ZN2v88internal8compiler7SLPTree11GetPackNodeEPNS1_4NodeE.exit.loopexit.us
  %i.br = getelementptr inbounds nuw i8, ptr %.0120193.us, i64 8 ; 2 uses
  %.not.us = icmp eq ptr %i.br, %i.bi
  br i1 %.not.us, label %.thread175, label %.lr.ph.split.us

_ZN2v88internal8compiler7SLPTree11GetPackNodeEPNS1_4NodeE.exit.loopexit.us: ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.us, i64 16
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler12Revectorizer14SetEffectInputEPNS1_8PackNodeEiRPNS1_4NodeE:bb.a
  br i1 %.not.not.i.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.b
  %.01830.us = phi i64 [ %i.w, %bb.b ], [ 0, %.lr.ph ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.01830.us
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.r, 251658240
  %.not.i.i.us = icmp eq i32 %i.s, 251658240      ; 2 uses
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = add i64 %i.t, 32
  %i.v = inttoptr i64 %i.u to ptr                 ; 3 uses
  br i1 %.not.i.i.us, label %bb.c, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.us

bb.b:                                             ; preds = %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit.us
  %i.w = add nuw i64 %.01830.us, 1                ; 2 uses
  %exitcond49.not = icmp eq i64 %i.w, %i.h
  br i1 %exitcond49.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !50

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.x = load ptr, ptr %i.v, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = add i64 %i.y, 16
  %i.aa = inttoptr i64 %i.z to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.us

_ZNK2v88internal8compiler4Node7InputAtEi.exit.us: ; preds = %bb.c, %.lr.ph.split.us
  %.sink.i.i.us = phi ptr [ %i.aa, %bb.c ], [ %i.v, %.lr.ph.split.us ]
  %i.ab = getelementptr inbounds [8 x i8], ptr %.sink.i.i.us, i64 %i.i
  %i.ac = load ptr, ptr %i.ab, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.us
  %.sroa.06.0.in.i.i.i.i.us = phi ptr [ %i.n, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.us ], [ %.sroa.06.0.i.i.i.i.us, %bb.e ]
  %.sroa.06.0.i.i.i.i.us = load ptr, ptr %.sroa.06.0.in.i.i.i.i.us, align 8 ; 4 uses
  %i.ad = icmp eq ptr %.sroa.06.0.i.i.i.i.us, null
  br i1 %i.ad, label %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.us, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = icmp eq ptr %i.ac, %i.af
  br i1 %i.ag, label %_ZNSt13unordered_mapIPN2v88internal8compiler4NodeEPNS2_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i.i.loopexit.us, label %bb.d, !llvm.loop !18

_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit.us: ; preds = %bb.d, %_ZNSt13unordered_mapIPN2v88internal8compiler4NodeEPNS2_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i.i.loopexit.us
  %.0.i.i.us = phi ptr [ %i.aj, %_ZNSt13unordered_mapIPN2v88internal8compiler4NodeEPNS2_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i.i.loopexit.us ], [ null, %bb.d ] ; 2 uses
  %i.ah = icmp eq ptr %.0.i.i.us, %1
  br i1 %i.ah, label %bb.b, label %.split.us

_ZNSt13unordered_mapIPN2v88internal8compiler4NodeEPNS2_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i.i.loopexit.us: ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.us, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  br label %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = load ptr, ptr %i.ak, align 8
  br label %bb.g

bb.f:                                             ; preds = %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit
  %i.ao = add nuw i64 %.01830, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %i.h
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !50

bb.g:                                             ; preds = %.lr.ph.split, %bb.f
  %.01830 = phi i64 [ 0, %.lr.ph.split ], [ %i.ao, %bb.f ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.01830
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = and i32 %i.as, 251658240
  %.not.i.i = icmp eq i32 %i.at, 251658240        ; 2 uses
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = add i64 %i.au, 32
  %i.aw = inttoptr i64 %i.av to ptr               ; 3 uses
  br i1 %.not.i.i, label %bb.h, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = add i64 %i.ay, 16
  %i.ba = inttoptr i64 %i.az to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %bb.g, %bb.h
  %.sink.i.i = phi ptr [ %i.ba, %bb.h ], [ %i.aw, %bb.g ]
  %i.bb = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.i
  %i.bc = load ptr, ptr %i.bb, align 8            ; 3 uses
  %i.bd = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.be = xor i64 %i.bd, -1
  %i.bf = shl i64 %i.bd, 21
  %i.bg = add i64 %i.bf, %i.be                    ; 2 uses
  %i.bh = lshr i64 %i.bg, 24
  %i.bi = xor i64 %i.bh, %i.bg
  %i.bj = mul i64 %i.bi, 265                      ; 2 uses
  %i.bk = lshr i64 %i.bj, 14
  %i.bl = xor i64 %i.bk, %i.bj
  %i.bm = mul i64 %i.bl, 21                       ; 2 uses
  %i.bn = lshr i64 %i.bm, 28
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = mul i64 %i.bo, 2147483649               ; 3 uses
  %i.bq = urem i64 %i.bp, %i.am                   ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  %i.bt = load ptr, ptr %i.bs, align 8            ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = icmp eq i64 %i.bp, %i.bw
  %i.by = load ptr, ptr %i.bu, align 8
  %i.bz = icmp eq ptr %i.bc, %i.by
  %i.ca = select i1 %i.bx, i1 %i.bz, i1 false
  br i1 %i.ca, label %_ZNSt13unordered_mapIPN2v88internal8compiler4NodeEPNS2_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cc = icmp eq i64 %i.bp, %i.ci
  %i.cd = load ptr, ptr %i.cb, align 8
  %i.ce = icmp eq ptr %i.bc, %i.cd
  %i.cf = select i1 %i.cc, i1 %i.ce, i1 false
  br i1 %i.cf, label %_ZNSt13unordered_mapIPN2v88internal8compiler4NodeEPNS2_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !19

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.i, %bb.j
  %.020.i.i.i.i.i.i = phi ptr [ %i.cg, %bb.j ], [ %i.bt, %bb.i ]
  %i.cg = load ptr, ptr %.020.i.i.i.i.i.i, align 8 ; 5 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not18.i.i.i.i.i.i, label %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load i64, ptr %i.ch, align 8            ; 2 uses
  %i.cj = urem i64 %i.ci, %i.am
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.cj, %i.bq
  br i1 %.not19.i.i.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !19

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.k
  br label %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit, !llvm.loop !19

_ZNSt13unordered_mapIPN2v88internal8compiler4NodeEPNS2_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i.i: ; preds = %bb.j, %bb.i
  %.sroa.06.1.i.i.i.i = phi ptr [ %i.bt, %bb.i ], [ %i.cg, %bb.j ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  br label %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit

_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNK2v88internal8compiler4Node7InputAtEi.exit, %..loopexit_crit_edge21.i.i.i.i.i.i, %_ZNSt13unordered_mapIPN2v88internal8compiler4NodeEPNS2_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i.i
  %.0.i.i = phi ptr [ %i.cl, %_ZNSt13unordered_mapIPN2v88internal8compiler4NodeEPNS2_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i.i ], [ null, %..loopexit_crit_edge21.i.i.i.i.i.i ], [ null, %_ZNK2v88internal8compiler4Node7InputAtEi.exit ], [ null, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cm = icmp eq ptr %.0.i.i, %1
  br i1 %i.cm, label %bb.f, label %.split.us

.split.us:                                        ; preds = %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit, %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit.us
  %.us-phi = phi ptr [ %.0.i.i.us, %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit.us ], [ %.0.i.i, %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit ] ; 2 uses
  %.us-phi32 = phi i1 [ %.not.i.i.us, %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit.us ], [ %.not.i.i, %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit ]
  %.us-phi33 = phi ptr [ %i.v, %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit.us ], [ %i.aw, %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit ] ; 2 uses
  %.not = icmp eq ptr %.us-phi, null
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.split.us
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8            ; 3 uses
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = ptrtoint ptr %i.cr to i64               ; 2 uses
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 3
  %i.cw = add nsw i64 %i.i, 1                     ; 5 uses
  %i.cx = icmp ult i64 %i.cv, %i.cw
  br i1 %i.cx, label %bb.m, label %_ZN2v88internal8compiler8PackNode10SetOperandEmPS2_.exit

bb.m:                                             ; preds = %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.ct
  %i.dc = ashr exact i64 %i.db, 3
  %.not.i.i.i = icmp ugt i64 %i.cw, %i.dc
  br i1 %.not.i.i.i, label %bb.n, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE14EnsureCapacityEm.exit.i.i, !prof !9

bb.n:                                             ; preds = %bb.m
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, i64 noundef %i.cw)
  %.pre.i.i = load ptr, ptr %i.cq, align 8
  %.pre.i = load ptr, ptr %i.co, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE14EnsureCapacityEm.exit.i.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE14EnsureCapacityEm.exit.i.i: ; preds = %bb.n, %bb.m
  %i.dd = phi ptr [ %i.cp, %bb.m ], [ %.pre.i, %bb.n ] ; 3 uses
  %i.de = phi ptr [ %i.cr, %bb.m ], [ %.pre.i.i, %bb.n ] ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.cw ; 2 uses
  %i.dg = icmp ult ptr %i.dd, %i.df
  br i1 %i.dg, label %.lr.ph.preheader.i.i, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE6resizeEm.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE14EnsureCapacityEm.exit.i.i
  %i.dh = ptrtoaddr ptr %i.dd to i64              ; 2 uses
  %i.di = ptrtoaddr ptr %i.de to i64
  %i.dj = shl nuw nsw i64 %i.cw, 3
  %4 = add nuw i64 %i.dj, %i.di
  %i.dk = add i64 %i.dh, 8
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %4, i64 %i.dk)
  %5 = xor i64 %i.dh, -1
  %i.dl = add i64 %umax.i.i, %5
  %i.dm = and i64 %i.dl, -8
  %i.dn = add i64 %i.dm, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dd, i8 0, i64 %i.dn, i1 false)
  %.pre4.pre.i = load ptr, ptr %i.cq, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE6resizeEm.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE6resizeEm.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE14EnsureCapacityEm.exit.i.i
  %.pre4.i = phi ptr [ %i.de, %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE14EnsureCapacityEm.exit.i.i ], [ %.pre4.pre.i, %.lr.ph.preheader.i.i ]
  store ptr %i.df, ptr %i.co, align 8
  br label %_ZN2v88internal8compiler8PackNode10SetOperandEmPS2_.exit

_ZN2v88internal8compiler8PackNode10SetOperandEmPS2_.exit: ; preds = %bb.l, %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE6resizeEm.exit.i
  %i.do = phi ptr [ %.pre4.i, %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE6resizeEm.exit.i ], [ %i.cr, %bb.l ]
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.i
  store ptr %.us-phi, ptr %i.dp, align 8
  br label %.loopexit

bb.o:                                             ; preds = %.split.us
  br i1 %.us-phi32, label %bb.p, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit23

bb.p:                                             ; preds = %bb.o
  %i.dq = load ptr, ptr %.us-phi33, align 8
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = add i64 %i.dr, 16
  %i.dt = inttoptr i64 %i.ds to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit23

_ZNK2v88internal8compiler4Node7InputAtEi.exit23:  ; preds = %bb.o, %bb.p
  %.sink.i.i22 = phi ptr [ %i.dt, %bb.p ], [ %.us-phi33, %bb.o ]
  %i.du = getelementptr inbounds [8 x i8], ptr %.sink.i.i22, i64 %i.i
  %i.dv = load ptr, ptr %i.du, align 8
  store ptr %i.dv, ptr %3, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.b, %bb.a, %_ZNK2v88internal8compiler4Node7InputAtEi.exit23, %_ZN2v88internal8compiler8PackNode10SetOperandEmPS2_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler12Revectorizer17SetMemoryOpInputsERNS_4base11SmallVectorIPNS1_4NodeELm2ESaIS6_EEEPNS1_8PackNodeEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 251658240
  %.not.i.i = icmp eq i32 %i.f, 251658240
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = add i64 %i.g, 32
  %i.i = inttoptr i64 %i.h to ptr                 ; 6 uses
  br i1 %.not.i.i, label %bb.b, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = add i64 %i.k, 16
  %i.m = inttoptr i64 %i.l to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %bb.a, %bb.b
  %.sink.i.i = phi ptr [ %i.m, %bb.b ], [ %i.i, %bb.a ]
  %i.n = load ptr, ptr %.sink.i.i, align 8
  %i.o = load ptr, ptr %1, align 8
  store ptr %i.n, ptr %i.o, align 8
  %i.p = load i32, ptr %i.d, align 4
  %i.q = and i32 %i.p, 251658240
  %.not.i.i13 = icmp eq i32 %i.q, 251658240
  br i1 %.not.i.i13, label %bb.c, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit15

bb.c:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  %i.r = load ptr, ptr %i.i, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = add i64 %i.s, 16
  %i.u = inttoptr i64 %i.t to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit15

_ZNK2v88internal8compiler4Node7InputAtEi.exit15:  ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit, %bb.c
  %.sink.i.i14 = phi ptr [ %i.u, %bb.c ], [ %i.i, %_ZNK2v88internal8compiler4Node7InputAtEi.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sink.i.i14, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %1, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.w, ptr %i.y, align 8
  %i.z = sext i32 %3 to i64
  %i.aa = load ptr, ptr %1, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  tail call void @_ZN2v88internal8compiler12Revectorizer14SetEffectInputEPNS1_8PackNodeEiRPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ac = load i32, ptr %i.d, align 4
  %i.ad = and i32 %i.ac, 251658240
  %.not.i.i16 = icmp eq i32 %i.ad, 251658240
  br i1 %.not.i.i16, label %bb.d, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit18

bb.d:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit15
  %i.ae = load ptr, ptr %i.i, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = add i64 %i.af, 16
  %i.ah = inttoptr i64 %i.ag to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit18

_ZNK2v88internal8compiler4Node7InputAtEi.exit18:  ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit15, %bb.d
  %.sink.i.i17 = phi ptr [ %i.ah, %bb.d ], [ %i.i, %_ZNK2v88internal8compiler4Node7InputAtEi.exit15 ]
  %i.ai = add nsw i32 %3, 1
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %.sink.i.i17, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = load ptr, ptr %1, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aj
  store ptr %i.al, ptr %i.an, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler12Revectorizer13VectorizeTreeEPNS1_8PackNodeE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %3 = alloca %"struct.std::array.712", align 8   ; 4 uses
  %4 = alloca %"struct.std::array.711", align 8   ; 5 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %5 = alloca %"class.v8::base::SmallVector.515", align 8 ; 47 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca [32 x i8], align 16               ; 75 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 3 uses
  %i.e = alloca [32 x i8], align 16               ; 35 uses
  %6 = alloca %"class.v8::internal::compiler::Node::Uses", align 8 ; 4 uses
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !5, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str) #16
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__._ZN2v88internal8compiler12Revectorizer13VectorizeTreeEPNS1_8PackNodeE) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 38 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !5, !noundef !6
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.hr

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str) #16
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.r, 16777215
  %i.t = load ptr, ptr %i.j, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.38, i32 noundef %i.s, ptr noundef %i.v) #16
  %.pre = load ptr, ptr %i.m, align 8
  br label %bb.hr

bb.f:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 20 ; 24 uses
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %i.y = and i32 %i.x, 251658240
  %.not.i = icmp eq i32 %i.y, 251658240
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = lshr i32 %i.x, 24
  %i.aa = and i32 %i.z, 15
  br label %_ZNK2v88internal8compiler4Node10InputCountEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ab = ptrtoint ptr %i.j to i64
  %i.ac = add i64 %i.ab, 32
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 8
  br label %_ZNK2v88internal8compiler4Node10InputCountEv.exit

_ZNK2v88internal8compiler4Node10InputCountEv.exit: ; preds = %bb.g, %bb.h
  %i.ah = phi i32 [ %i.aa, %bb.g ], [ %i.ag, %bb.h ] ; 132 uses
  %i.ai = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !5, !noundef !6
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str) #16
  %i.ak = load i32, ptr %i.w, align 4
  %i.al = and i32 %i.ak, 16777215
  %i.am = load ptr, ptr %i.j, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.39, i32 noundef %i.al, ptr noundef %i.ao, i32 noundef %i.ah) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK2v88internal8compiler4Node10InputCountEv.exit
end_hunk_1
