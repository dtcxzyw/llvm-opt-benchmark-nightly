Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff1?download=true
inline.NumInlined: 2708
inline.NumDeleted: 1363
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE16serialize_headerI10hb_array_tIjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tS8_jj:bb.a
  %.3.lcssa = phi i32 [ 16777216, %bb.q ], [ %i.ge, %._crit_edge.loopexit ]
  %.054.lcssa = phi ptr [ %i.z, %bb.q ], [ %.lcssa213, %._crit_edge.loopexit ]
  store i32 %.3.lcssa, ptr %.054.lcssa, align 1, !tbaa !97
  br label %select.unfold

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.053145 = phi ptr [ %2, %.lr.ph.preheader.new ], [ %i.gy, %.lr.ph ] ; 5 uses
  %.054144 = phi ptr [ %i.z, %.lr.ph.preheader.new ], [ %i.gu, %.lr.ph ] ; 5 uses
  %.3143 = phi i32 [ 1, %.lr.ph.preheader.new ], [ %i.gx, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.054144, i64 4
  %i.gg = tail call i32 @llvm.bswap.i32(i32 %.3143)
  store i32 %i.gg, ptr %.054144, align 1, !tbaa !97
  %i.gh = load i32, ptr %.053145, align 4, !tbaa !116
  %i.gi = add i32 %i.gh, %.3143                   ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.053145, i64 4
  %i.gk = getelementptr inbounds nuw i8, ptr %.054144, i64 8
  %i.gl = tail call i32 @llvm.bswap.i32(i32 %i.gi)
  store i32 %i.gl, ptr %i.gf, align 1, !tbaa !97
  %i.gm = load i32, ptr %i.gj, align 4, !tbaa !116
  %i.gn = add i32 %i.gm, %i.gi                    ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.053145, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %.054144, i64 12
  %i.gq = tail call i32 @llvm.bswap.i32(i32 %i.gn)
  store i32 %i.gq, ptr %i.gk, align 1, !tbaa !97
  %i.gr = load i32, ptr %i.go, align 4, !tbaa !116
  %i.gs = add i32 %i.gr, %i.gn                    ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.053145, i64 12
  %i.gu = getelementptr inbounds nuw i8, ptr %.054144, i64 16 ; 3 uses
  %i.gv = tail call i32 @llvm.bswap.i32(i32 %i.gs)
  store i32 %i.gv, ptr %i.gp, align 1, !tbaa !97
  %i.gw = load i32, ptr %i.gt, align 4, !tbaa !116
  %i.gx = add i32 %i.gw, %i.gs                    ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.053145, i64 16 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

select.unfold:                                    ; preds = %_ZN22hb_serialize_context_t6extendIN2OT7NumTypeILb1EhLj1EEEJEEEPT_RS4_DpOT0_.exit, %.critedge.i, %_ZL9hb_memsetPvij.exit.i.i.i.i, %_ZL9hb_memsetPvij.exit.i.i.i, %._crit_edge174, %._crit_edge165, %._crit_edge155, %._crit_edge, %bb.m, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit, %.critedge.i.i.i.i, %bb.f, %_ZN22hb_serialize_context_t10extend_minIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_S7_.exit, %.critedge.i.i.i, %bb.a
  %.0 = phi i1 [ true, %._crit_edge174 ], [ true, %_ZN22hb_serialize_context_t10extend_minIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_S7_.exit ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit ], [ false, %bb.a ], [ false, %.critedge.i.i.i ], [ false, %bb.f ], [ false, %.critedge.i.i.i.i ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i.i ], [ true, %bb.m ], [ true, %._crit_edge ], [ true, %._crit_edge155 ], [ true, %._crit_edge165 ], [ false, %.critedge.i ], [ false, %_ZN22hb_serialize_context_t6extendIN2OT7NumTypeILb1EhLj1EEEJEEEPT_RS4_DpOT0_.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2OT4cff120accelerator_subset_t6subsetEP19hb_subset_context_t(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.OT::cff1_subset_plan", align 8 ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 164
  store i32 0, ptr %i.c, align 4, !tbaa !198
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 168
  store i32 1, ptr %i.d, align 8, !tbaa !199
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 172
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 196
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  store atomic i32 1, ptr %i.f monotonic, align 8
  store atomic i8 1, ptr %i.g monotonic, align 4
  store atomic ptr null, ptr %i.h monotonic, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 208
  store i8 1, ptr %i.i, align 8, !tbaa !149
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 210
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.j, i8 0, i64 18, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 368
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 392
  store i32 0, ptr %i.n, align 8, !tbaa !200
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 400
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 404
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %i.k, i8 0, i64 89, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  store atomic i32 1, ptr %i.o monotonic, align 8
  store atomic i8 1, ptr %i.p monotonic, align 4
  store atomic ptr null, ptr %i.q monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 416
  store i8 1, ptr %i.r, align 8, !tbaa !149
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 418
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 440
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.s, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 508
  store i8 0, ptr %i.u, align 4, !tbaa !128
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 509
  store i8 0, ptr %i.v, align 1, !tbaa !201
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 512
  store i32 0, ptr %i.w, align 8, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 464
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.x, i8 -1, i64 44, i1 false), !tbaa !116
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !524
  %i.aa = call noundef zeroext i1 @_ZN2OT16cff1_subset_plan6createERKNS_4cff120accelerator_subset_tEP16hb_subset_plan_t(ptr noundef nonnull align 8 dereferenceable(516) %2, ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef %i.z)
  br i1 %i.aa, label %bb.b, label %bb.c, !prof !82

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !525
  %i.ad = call noundef zeroext i1 @_ZNK2OT4cff120accelerator_subset_t9serializeEP22hb_serialize_context_tRNS_16cff1_subset_planE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(516) %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.ad, %bb.b ], [ false, %bb.a ]
  call void @_ZN2OT16cff1_subset_planD2Ev(ptr noundef nonnull align 8 dead_on_return(516) dereferenceable(516) %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT16cff1_subset_plan6createERKNS_4cff120accelerator_subset_tEP16hb_subset_plan_t(ptr noundef nonnull align 8 dereferenceable(516) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.CFF::subr_flattener_t", align 8 ; 5 uses
  %4 = alloca %struct.cff1_subr_subsetter_t, align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !252  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114  ; 5 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = and i32 %i.f, 2
  %.not15.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not15.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.i = load i32, ptr %i.h, align 4
  %i.j = load i32, ptr %i.d, align 4, !tbaa !116
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.l = load i32, ptr %i.v, align 4, !tbaa !116
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

._crit_edge.i.i.i:                                ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.lcssa10.i.i.i = phi i32 [ %i.f, %.lr.ph.i.i.i.i ], [ %i.x, %bb.c ]
  %i.n = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.u, %bb.c ]
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %i.n
  %i.p = trunc i32 %.lcssa10.i.i.i to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %spec.select.i.i.i = select i1 %i.p, ptr %i.q, ptr @minus_1
  br label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.01016.i13.i.i.i = phi i32 [ %i.t, %bb.c ], [ 0, %.lr.ph.i.i.i.i ]
  %.017.i12.i.i.i = phi i32 [ %i.r, %bb.c ], [ 0, %.lr.ph.i.i.i.i ]
  %i.r = add i32 %.017.i12.i.i.i, 1               ; 2 uses
  %i.s = add i32 %i.r, %.01016.i13.i.i.i
  %i.t = and i32 %i.s, %i.i                       ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %i.y = and i32 %i.x, 2
  %.not.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i, label %bb.c, !llvm.loop !0

_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i:        ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i, %bb.b, %bb.a
  %.0.i.i = phi ptr [ @minus_1, %bb.a ], [ %spec.select.i.i.i, %._crit_edge.i.i.i ], [ @minus_1, %bb.b ], [ @minus_1, %.lr.ph.i.i.i ]
  %i.z = load i32, ptr %.0.i.i, align 4, !tbaa !116
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.d, label %bb.bi

bb.d:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !253
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !141
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !142
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 5 uses
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !198
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !254 ; 2 uses
  %i.aj = trunc i32 %i.ai to i8                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.al = and i8 %i.aj, 1
  store i8 %i.al, ptr %i.ak, align 8, !tbaa !125
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 508 ; 2 uses
  %i.an = lshr i8 %i.aj, 2
  %i.ao = and i8 %i.an, 1
  store i8 %i.ao, ptr %i.am, align 4, !tbaa !128
  %i.ap = and i32 %i.ai, 32768
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !116
  %i.as = icmp ne i32 %i.ar, -1
  %i.at = zext i1 %i.as to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %5 = phi i8 [ 0, %bb.d ], [ %i.at, %bb.e ]      ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 509
  store i8 %5, ptr %i.au, align 1, !tbaa !201
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i32 0, ptr %i.av, align 8, !tbaa !63
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !255
  %i.ay = icmp slt i32 %i.ax, 3
  br i1 %i.ay, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  store i8 1, ptr %i.az, align 8, !tbaa !144
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  %6 = trunc nuw i8 %5 to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 6 uses
  store i8 %5, ptr %i.ba, align 8, !tbaa !144
  br i1 %6, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !256 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 196
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !257 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %.idx = shl nuw nsw i64 %i.bf, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx
  %.not67190 = icmp eq i32 %i.be, 0
  br i1 %.not67190, label %.loopexit, label %.critedge

bb.i:                                             ; preds = %.critedge
  %i.bh = getelementptr inbounds nuw i8, ptr %.060191, i64 8 ; 2 uses
  %.not67 = icmp eq ptr %i.bh, %i.bg
  br i1 %.not67, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.i
  %.060191 = phi ptr [ %i.bh, %bb.i ], [ %i.bc, %bb.h ] ; 3 uses
  %i.bi = load i32, ptr %.060191, align 4, !tbaa !259
  %i.bj = getelementptr inbounds nuw i8, ptr %.060191, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !548
  %.not68 = icmp eq i32 %i.bi, %i.bk
  br i1 %.not68, label %bb.i, label %bb.j

bb.j:                                             ; preds = %.critedge
  store i8 1, ptr %i.ba, align 8, !tbaa !144
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.h, %.thread, %bb.j, %bb.g
  %7 = phi i1 [ true, %.thread ], [ true, %bb.j ], [ true, %bb.g ], [ false, %bb.h ], [ false, %bb.i ]
  %i.bl = phi ptr [ %i.az, %.thread ], [ %i.ba, %bb.j ], [ %i.ba, %bb.g ], [ %i.ba, %bb.h ], [ %i.ba, %bb.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 220 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !116
  %.not158 = icmp eq i32 %i.bn, -1
  br i1 %.not158, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !260
  %i.bq = icmp sgt i32 %i.bp, 1
  %i.br = zext i1 %i.bq to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %i.bs = phi i8 [ 0, %.loopexit ], [ %i.br, %bb.k ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 322 ; 2 uses
  store i8 %i.bs, ptr %i.bt, align 2, !tbaa !146
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i32 0, ptr %0, align 8, !tbaa !549
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.bw, i8 -1, i64 44, i1 false), !tbaa !116
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.bx, align 8, !tbaa !550
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 8720, ptr %i.by, align 4, !tbaa !551
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i8 0, i64 24, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.bu, ptr %i.ca, align 8, !tbaa !197
  %i.cb = trunc nuw i8 %i.bs to i1
  br i1 %i.cb, label %bb.m, label %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !261 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !262 ; 2 uses
  %i.cg = zext i32 %i.cf to i64
  %.idx.i = mul nuw nsw i64 %i.cg, 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx.i
  %.not16.not.i = icmp eq i32 %i.cf, 0
  br i1 %.not16.not.i, label %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %.01117.i = phi ptr [ %i.ck, %.lr.ph.i ], [ %i.cd, %bb.m ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.01117.i, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !130
  %.not14.i.not = icmp ne i32 %i.cj, 16           ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.01117.i, i64 24 ; 2 uses
  %.not.not.i = icmp ne ptr %i.ck, %i.ch
  %or.cond.not = select i1 %.not14.i.not, i1 %.not.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit

_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit: ; preds = %.lr.ph.i, %bb.m, %bb.l
  %i.cl = phi i1 [ false, %bb.l ], [ true, %bb.m ], [ %.not14.i.not, %.lr.ph.i ] ; 2 uses
  br i1 %7, label %bb.n, label %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90

bb.n:                                             ; preds = %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !261 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !262 ; 2 uses
  %i.cq = zext i32 %i.cp to i64
  %.idx.i83 = mul nuw nsw i64 %i.cq, 24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i83
  %.not16.not.i84 = icmp eq i32 %i.cp, 0
  br i1 %.not16.not.i84, label %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90.thread, label %.lr.ph.i85

bb.o:                                             ; preds = %.lr.ph.i85
  %i.cs = getelementptr inbounds nuw i8, ptr %.01117.i86, i64 24 ; 2 uses
  %.not.not.i88 = icmp eq ptr %i.cs, %i.cr
  br i1 %.not.not.i88, label %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90.thread, label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %bb.n, %bb.o
  %.01117.i86 = phi ptr [ %i.cs, %bb.o ], [ %i.cn, %bb.n ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.01117.i86, i64 8
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !130
  %.not14.i87.not = icmp eq i32 %i.cu, 15
  br i1 %.not14.i87.not, label %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90, label %bb.o

_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90: ; preds = %.lr.ph.i85, %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit
  br i1 %i.cl, label %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90.thread, label %bb.v

_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90.thread: ; preds = %bb.o, %bb.n, %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90
  %i.cv = phi i1 [ false, %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90 ], [ true, %bb.n ], [ true, %bb.o ]
  br i1 %i.cl, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90.thread
  %i.cw = tail call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i32 noundef 1, i1 noundef zeroext false)
  br i1 %i.cw, label %.critedge.i.i, label %bb.q, !prof !82

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit

.critedge.i.i:                                    ; preds = %bb.p
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !261
  %.pre.i.i = load i32, ptr %i.cx, align 4, !tbaa !262 ; 2 uses
  %i.cy = add i32 %.pre.i.i, 1
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !262
  %i.cz = zext i32 %.pre.i.i to i64
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.cz ; 4 uses
  store ptr null, ptr %i.da, align 8
  %.sroa.5150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i32 65535, ptr %.sroa.5150.0..sroa_idx, align 8
  %.sroa.6151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6151.0..sroa_idx, i8 0, i64 12, i1 false)
  br label %_ZN3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit

_ZN3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit: ; preds = %bb.q, %.critedge.i.i
  %.0.i.i92 = phi ptr [ @_hb_CrapPool, %bb.q ], [ %i.da, %.critedge.i.i ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i.i92, i64 8
  store i32 16, ptr %i.db, align 8, !tbaa !130
  %i.dc = load i32, ptr %0, align 8, !tbaa !549
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr null, i64 %i.dd
  store ptr %i.de, ptr %.0.i.i92, align 8, !tbaa !133
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i.i92, i64 12
  store i8 0, ptr %i.df, align 4, !tbaa !131
  store i32 0, ptr %0, align 8, !tbaa !549
  br label %bb.r

bb.r:                                             ; preds = %_ZN3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit, %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90.thread
  br i1 %i.cv, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !262 ; 3 uses
  %i.di = load i32, ptr %i.bv, align 8, !tbaa !263
  %.not.i.i93 = icmp slt i32 %i.dh, %i.di
  br i1 %.not.i.i93, label %.critedge.i.i99, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dj = add i32 %i.dh, 1
  %i.dk = tail call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i32 noundef %i.dj, i1 noundef zeroext false)
  br i1 %i.dk, label %..critedge_crit_edge.i.i97, label %bb.u, !prof !82

..critedge_crit_edge.i.i97:                       ; preds = %bb.t
  %.pre.i.i98 = load i32, ptr %i.dg, align 4, !tbaa !262
  br label %.critedge.i.i99

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit100

.critedge.i.i99:                                  ; preds = %..critedge_crit_edge.i.i97, %bb.s
  %i.dl = phi i32 [ %.pre.i.i98, %..critedge_crit_edge.i.i97 ], [ %i.dh, %bb.s ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !261
  %i.do = add i32 %i.dl, 1
  store i32 %i.do, ptr %i.dg, align 4, !tbaa !262
  %i.dp = zext i32 %i.dl to i64
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %i.dp ; 4 uses
  store ptr null, ptr %i.dq, align 8
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i32 65535, ptr %.sroa.5143.0..sroa_idx, align 8
  %.sroa.6144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6144.0..sroa_idx, i8 0, i64 12, i1 false)
  br label %_ZN3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit100

_ZN3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit100: ; preds = %bb.u, %.critedge.i.i99
  %.0.i.i94 = phi ptr [ @_hb_CrapPool, %bb.u ], [ %i.dq, %.critedge.i.i99 ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i.i94, i64 8
  store i32 15, ptr %i.dr, align 8, !tbaa !130
  %i.ds = load i32, ptr %0, align 8, !tbaa !549
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr null, i64 %i.dt
  store ptr %i.du, ptr %.0.i.i94, align 8, !tbaa !133
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i.i94, i64 12
  store i8 0, ptr %i.dv, align 4, !tbaa !131
  store i32 0, ptr %0, align 8, !tbaa !549
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %_ZN3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit100, %_ZNK3CFF15parsed_values_tINS_19cff1_top_dict_val_tEE6has_opEj.exit90
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !140 ; 2 uses
  %.not69 = icmp eq ptr %i.dx, @_hb_NullPool
  br i1 %.not69, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dy = load i32, ptr %i.ag, align 4, !tbaa !198
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ee = tail call noundef zeroext i1 @_Z27hb_plan_subset_cff_fdselectPK16hb_subset_plan_tjRKN3CFF8FDSelectERjS6_S6_R11hb_vector_tINS2_11code_pair_tELb0EER14hb_inc_bimap_t(ptr noundef nonnull %2, i32 noundef %i.dy, ptr noundef nonnull align 1 dereferenceable(6) %i.dx, ptr noundef nonnull align 4 dereferenceable(4) %i.dz, ptr noundef nonnull align 4 dereferenceable(4) %i.ea, ptr noundef nonnull align 4 dereferenceable(4) %i.eb, ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(64) %i.ed) #10
  br i1 %i.ee, label %_ZN14hb_inc_bimap_t8identityEj.exit, label %bb.bi, !prof !82

bb.x:                                             ; preds = %bb.v
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !264
  %.not.i.i.i = icmp eq i32 %i.eh, 0
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8
  %.not8.i.i.i = icmp eq i32 %i.ej, 0
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %.not8.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %_ZN14hb_inc_bimap_t5clearEv.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !265
  %.fr15.i.i.i = freeze i32 %i.el
  %i.em = add i32 %.fr15.i.i.i, 1                 ; 2 uses
  %.not912.i.i.i = icmp ult i32 %i.em, 2
  br i1 %.not912.i.i.i, label %._crit_edge.i.i.i101, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.y
  %.sroa.2.8.insert.ext.i.i.i.i = zext i32 %i.em to i64
  %.idx.i.i.i = mul nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i, 12 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !114
  %i.ep = add nsw i64 %.idx.i.i.i, -12
  %i.eq = urem i64 %i.ep, 12
  %i.er = sub nuw nsw i64 %.idx.i.i.i, %i.eq
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.eo, i8 0, i64 %i.er, i1 false)
  br label %._crit_edge.i.i.i101

._crit_edge.i.i.i101:                             ; preds = %.lr.ph.preheader.i.i.i, %bb.y
  store i32 0, ptr %i.ei, align 8, !tbaa !266
  store i32 0, ptr %i.eg, align 4, !tbaa !264
  br label %_ZN14hb_inc_bimap_t5clearEv.exit.i

_ZN14hb_inc_bimap_t5clearEv.exit.i:               ; preds = %._crit_edge.i.i.i101, %bb.x
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 244
  store i32 0, ptr %i.es, align 4, !tbaa !184
  %i.et = tail call noundef i32 @_ZN14hb_inc_bimap_t3addEj(ptr noundef nonnull align 8 dereferenceable(64) %i.ef, i32 noundef 0) ; 0 uses
  br label %_ZN14hb_inc_bimap_t8identityEj.exit

_ZN14hb_inc_bimap_t8identityEj.exit:              ; preds = %_ZN14hb_inc_bimap_t5clearEv.exit.i, %bb.w
  %i.eu = tail call noundef zeroext i1 @_ZN2OT16cff1_subset_plan21collect_sids_in_dictsERKNS_4cff120accelerator_subset_tE(ptr noundef nonnull align 8 dereferenceable(516) %0, ptr noundef nonnull align 8 dereferenceable(312) %1)
  br i1 %i.eu, label %bb.z, label %bb.bi, !prof !82

bb.z:                                             ; preds = %_ZN14hb_inc_bimap_t8identityEj.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !552
  %i.ey = icmp ugt i32 %i.ex, 32768
  br i1 %i.ey, label %bb.bi, label %bb.aa, !prof !86

bb.aa:                                            ; preds = %bb.z
  %i.ez = load i8, ptr %i.bl, align 8, !tbaa !144, !range !126, !noundef !127
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fb = tail call noundef zeroext i1 @_ZN2OT16cff1_subset_plan19plan_subset_charsetERKNS_4cff120accelerator_subset_tEP16hb_subset_plan_t(ptr noundef nonnull align 8 dereferenceable(516) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull %2)
  br i1 %i.fb, label %bb.ac, label %bb.bi

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  tail call void @_ZN26cff1_top_dict_values_mod_t12reassignSIDsERK11remap_sid_t(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.ev)
  %i.fc = load i8, ptr %i.am, align 4, !tbaa !128, !range !126, !noundef !127
  %i.fd = trunc nuw i8 %i.fc to i1
end_hunk_0
