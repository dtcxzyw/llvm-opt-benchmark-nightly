Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stereo_binary_bm?download=true
inline.NumInlined: 327
inline.NumDeleted: 127
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN2cv6stereo8Matching18smallRegionRemovalIhEEvRKNS_3MatEiRS3_:bb.a
  store i32 %i.dc, ptr %i.eb, align 4, !tbaa !15
  %i.ec = add nsw i32 %.3150198.us, 1
  %i.ed = load i32, ptr %i.bo, align 4, !tbaa !185
  %i.ee = icmp slt i32 %i.ed, 2
  %i.ef = load ptr, ptr %i.bp, align 8, !tbaa !62
  %i.eg = load i64, ptr %i.bq, align 8
  %i.eh = mul i64 %i.eg, %i.dj
  %.sink.idx.i193.us = select i1 %i.ee, i64 0, i64 %i.eh
  %.sink.i194.us = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.sink.idx.i193.us
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.sink.i194.us, i64 %i.dl
  store i32 1, ptr %i.ei, align 4, !tbaa !15
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.al, %bb.ak, %bb.aj
  %.5152.us = phi i32 [ %.3150198.us, %bb.ak ], [ %.3150198.us, %bb.al ], [ %.3150198.us, %bb.aj ], [ %i.ec, %bb.ap ], [ %.3150198.us, %bb.ao ], [ %.3150198.us, %bb.an ] ; 4 uses
  %.3143.us = phi i8 [ %.1141199.us, %bb.ak ], [ %.1141199.us, %bb.al ], [ %.1141199.us, %bb.aj ], [ %.1141199.us, %bb.ap ], [ %i.dy, %bb.ao ], [ %.1141199.us, %bb.an ] ; 3 uses
  %.3139.us = phi i8 [ %.1137200.us, %bb.ak ], [ %.1137200.us, %bb.al ], [ %.1137200.us, %bb.aj ], [ %.1137200.us, %bb.ap ], [ %i.dx, %bb.ao ], [ %.1137200.us, %bb.an ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.ar, label %bb.aj, !llvm.loop !180

bb.ar:                                            ; preds = %bb.aq
  %indvars.iv.next249 = add nsw i64 %indvars.iv248, 1 ; 3 uses
  %i.ej = sext i32 %.5152.us to i64
  %i.ek = icmp slt i64 %indvars.iv.next249, %i.ej
  br i1 %i.ek, label %.lr.ph.us, label %._crit_edge.us.loopexit, !llvm.loop !181

._crit_edge.us.loopexit:                          ; preds = %bb.ar
  %i.el = trunc nsw i64 %indvars.iv.next249 to i32
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.loopexit, %bb.ai
  %.2155.lcssa.us = phi i32 [ %.1154212.us, %bb.ai ], [ %i.el, %._crit_edge.us.loopexit ] ; 7 uses
  %.2149.lcssa.us = phi i32 [ %i.cr, %bb.ai ], [ %.5152.us, %._crit_edge.us.loopexit ] ; 4 uses
  %.0140.lcssa.us = phi i8 [ 1, %bb.ai ], [ %.3143.us, %._crit_edge.us.loopexit ]
  %.0136.lcssa.us = phi i8 [ 0, %bb.ai ], [ %.3139.us, %._crit_edge.us.loopexit ]
  %i.em = sub nsw i32 %.2155.lcssa.us, %.1148213.us
  %.not172.us = icmp sgt i32 %i.em, %2
  br i1 %.not172.us, label %.loopexit.us, label %bb.as

bb.as:                                            ; preds = %._crit_edge.us
  %i.en = udiv i8 %.0136.lcssa.us, %.0140.lcssa.us ; 3 uses
  %i.eo = icmp slt i32 %.1148213.us, %.2155.lcssa.us
  br i1 %i.eo, label %.lr.ph211.us.preheader, label %.loopexit.us

.lr.ph211.us.preheader:                           ; preds = %bb.as
  %wide.trip.count = sext i32 %.2155.lcssa.us to i64 ; 3 uses
  %i.ep = sub nsw i64 %wide.trip.count, %i.ch
  %xtraiter = and i64 %i.ep, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph211.us.prol.loopexit, label %.lr.ph211.us.prol

.lr.ph211.us.prol:                                ; preds = %.lr.ph211.us.preheader
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ch
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !15
  %i.es = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.ch
  %i.et = load i32, ptr %i.es, align 4, !tbaa !15
  %i.eu = mul nsw i32 %i.er, %i.bl
  %i.ev = add nsw i32 %i.eu, %i.et
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds i8, ptr %i.bj, i64 %i.ew
  store i8 %i.en, ptr %i.ex, align 1, !tbaa !14
  %indvars.iv.next251.prol = add nsw i64 %i.ch, 1
  br label %.lr.ph211.us.prol.loopexit

.lr.ph211.us.prol.loopexit:                       ; preds = %.lr.ph211.us.prol, %.lr.ph211.us.preheader
  %indvars.iv250.unr = phi i64 [ %i.ch, %.lr.ph211.us.preheader ], [ %indvars.iv.next251.prol, %.lr.ph211.us.prol ]
  %i.ey = add nsw i64 %wide.trip.count, -1
  %i.ez = icmp eq i64 %i.ey, %i.ch
  br i1 %i.ez, label %.loopexit.us, label %.lr.ph211.us

.lr.ph211.us:                                     ; preds = %.lr.ph211.us.prol.loopexit, %.lr.ph211.us
  %indvars.iv250 = phi i64 [ %indvars.iv.next251.1, %.lr.ph211.us ], [ %indvars.iv250.unr, %.lr.ph211.us.prol.loopexit ] ; 4 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %indvars.iv250
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !15
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %indvars.iv250
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !15
  %i.fe = mul nsw i32 %i.fb, %i.bl
  %i.ff = add nsw i32 %i.fe, %i.fd
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds i8, ptr %i.bj, i64 %i.fg
  store i8 %i.en, ptr %i.fh, align 1, !tbaa !14
  %indvars.iv.next251 = add nsw i64 %indvars.iv250, 1 ; 2 uses
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %indvars.iv.next251
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !15
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %indvars.iv.next251
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !15
  %i.fm = mul nsw i32 %i.fj, %i.bl
  %i.fn = add nsw i32 %i.fm, %i.fl
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds i8, ptr %i.bj, i64 %i.fo
  store i8 %i.en, ptr %i.fp, align 1, !tbaa !14
  %indvars.iv.next251.1 = add nsw i64 %indvars.iv250, 2 ; 2 uses
  %exitcond253.not.1 = icmp eq i64 %indvars.iv.next251.1, %wide.trip.count
  br i1 %exitcond253.not.1, label %.loopexit.us, label %.lr.ph211.us, !llvm.loop !182

.loopexit.us:                                     ; preds = %.lr.ph211.us.prol.loopexit, %.lr.ph211.us, %bb.as, %._crit_edge.us, %bb.ah, %bb.af
  %.3156.us = phi i32 [ %.1154212.us, %bb.af ], [ %.1154212.us, %bb.ah ], [ %.2155.lcssa.us, %._crit_edge.us ], [ %.2155.lcssa.us, %bb.as ], [ %.2155.lcssa.us, %.lr.ph211.us ], [ %.2155.lcssa.us, %.lr.ph211.us.prol.loopexit ] ; 2 uses
  %.6.us = phi i32 [ %.1148213.us, %bb.af ], [ %.1148213.us, %bb.ah ], [ %.2149.lcssa.us, %._crit_edge.us ], [ %.2149.lcssa.us, %bb.as ], [ %.2149.lcssa.us, %.lr.ph211.us ], [ %.2149.lcssa.us, %.lr.ph211.us.prol.loopexit ] ; 2 uses
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %exitcond258.not = icmp eq i64 %indvars.iv.next255, %i.bt
  br i1 %exitcond258.not, label %._crit_edge217.us, label %.lr.ph216.split.split.us239, !llvm.loop !183

._crit_edge217.us.sink.split:                     ; preds = %.lr.ph216.split.us238, %.lr.ph216.us
  %scevgep.sink = phi ptr [ %i.bj, %.lr.ph216.us ], [ %scevgep, %.lr.ph216.split.us238 ]
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.sink, i8 0, i64 %i.bt, i1 false), !tbaa !14
  br label %._crit_edge217.us

._crit_edge217.us:                                ; preds = %.loopexit.us, %._crit_edge217.us.sink.split
  %.us-phi.us = phi i32 [ %.0153230.us, %._crit_edge217.us.sink.split ], [ %.3156.us, %.loopexit.us ]
  %.us-phi220.us = phi i32 [ %.0147231.us, %._crit_edge217.us.sink.split ], [ %.6.us, %.loopexit.us ]
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %exitcond266.not = icmp eq i64 %indvars.iv.next263, %wide.trip.count265
  br i1 %exitcond266.not, label %._crit_edge237, label %.lr.ph216.us, !llvm.loop !184

._crit_edge237:                                   ; preds = %._crit_edge217.us, %.lr.ph236, %bb.ae
  ret void

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn173.pn = phi { ptr, i32 } [ %.pn173, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187 ], [ %.pn166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184 ], [ %.pn164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181 ]
  resume { ptr, i32 } %.pn173.pn
}

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #7

declare void @_ZN2cv14filterSpecklesERKNS_17_InputOutputArrayEdidS2_(ptr noundef nonnull align 8 dereferenceable(24), double noundef, i32 noundef, double noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv6stereo16PrefilterInvokerD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv6stereo16PrefilterInvokerclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = alloca [2304 x i8], align 16             ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.b = alloca [2816 x i8], align 16             ; 6 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !64     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !65
  %i.f = icmp slt i32 %i.c, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = sext i32 %i.c to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.s, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ %i.l, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 4 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !71   ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !216
  %i.o = icmp eq i32 %i.n, 0
  %i.p = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !67   ; 10 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !67   ; 6 uses
  br i1 %i.o, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !217  ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !218  ; 4 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !36
  %i.z = sdiv i32 %i.u, 2                         ; 9 uses
  %i.aa = add nsw i32 %i.z, 1                     ; 6 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = shl nsw i64 %i.ab, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = add i64 %i.ae, 31
  %i.ag = and i64 %i.af, -32
  %i.ah = inttoptr i64 %i.ag to ptr               ; 37 uses
  %i.ai = mul nsw i32 %i.u, %i.u
  %i.aj = lshr i32 %i.ai, 3                       ; 3 uses
  %i.ak = add nuw nsw i32 %i.aj, 1024
  %i.al = shl nuw nsw i32 %i.aj, 1
  %i.am = udiv i32 %i.ak, %i.al                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !62 ; 18 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !87 ; 3 uses
  %i.ar = trunc i64 %i.aq to i32                  ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.at = load i32, ptr %i.as, align 8, !tbaa !58 ; 6 uses
  %i.au = icmp slt i32 %i.at, 3
  br i1 %i.au, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.33, i32 noundef 109) #19
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !14
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.od, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i10 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %common.resume

bb.g:                                             ; preds = %bb.c
  %i.bb = icmp sgt i32 %i.at, 0
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 84
  %i.bd = icmp eq i32 %i.at, 2
  %i.be = zext i1 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !15
  br label %_ZNK2cv8MatShapeclEv.exit.i

bb.i:                                             ; preds = %bb.g
  %i.bh = icmp eq i32 %i.at, 0
  %i.bi = zext i1 %i.bh to i32
  br label %_ZNK2cv8MatShapeclEv.exit.i

_ZNK2cv8MatShapeclEv.exit.i:                      ; preds = %bb.i, %bb.h
  %i.bj = phi i32 [ %i.bg, %bb.h ], [ %i.bi, %bb.i ] ; 8 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 84
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = sub nsw i32 0, %i.w
  %i.bn = sext i32 %i.bm to i64
  %i.bo = sext i32 %i.w to i64
  %i.bp = shl nsw i32 %i.w, 1
  %broadcast.splatinsert105 = insertelement <16 x i32> poison, i32 %i.bp, i64 0
  %broadcast.splat106 = shufflevector <16 x i32> %broadcast.splatinsert105, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert107 = insertelement <16 x i64> poison, i64 %i.bo, i64 0
  %broadcast.splat108 = shufflevector <16 x i64> %broadcast.splatinsert107, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert109 = insertelement <16 x i64> poison, i64 %i.bn, i64 0
  %broadcast.splat110 = shufflevector <16 x i64> %broadcast.splatinsert109, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert111 = insertelement <16 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat112 = shufflevector <16 x i32> %broadcast.splatinsert111, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %_ZNK2cv8MatShapeclEv.exit.i
  %index114 = phi i64 [ 0, %_ZNK2cv8MatShapeclEv.exit.i ], [ %index.next116, %vector.body113 ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %_ZNK2cv8MatShapeclEv.exit.i ], [ %vec.ind.next, %vector.body113 ] ; 2 uses
  %vec.ind115 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %_ZNK2cv8MatShapeclEv.exit.i ], [ %vec.ind.next117, %vector.body113 ] ; 2 uses
  %i.bq = add nsw <16 x i64> %vec.ind, splat (i64 -1280) ; 2 uses
  %i.br = icmp slt <16 x i64> %i.bq, %broadcast.splat110
  %i.bs = icmp sgt <16 x i64> %i.bq, %broadcast.splat108
  %i.bt = add <16 x i32> %broadcast.splat112, %vec.ind115
  %i.bu = select <16 x i1> %i.bs, <16 x i32> %broadcast.splat106, <16 x i32> %i.bt
  %i.bv = trunc <16 x i32> %i.bu to <16 x i8>
  %i.bw = select <16 x i1> %i.br, <16 x i8> zeroinitializer, <16 x i8> %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 %index114
  store <16 x i8> %i.bw, ptr %i.bx, align 16, !tbaa !14
  %index.next116 = add nuw i64 %index114, 16      ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %vec.ind.next117 = add <16 x i32> %vec.ind115, splat (i32 16)
  %i.by = icmp eq i64 %index.next116, 2816
  br i1 %i.by, label %.preheader175.i, label %vector.body113, !llvm.loop !186

.preheader175.i:                                  ; preds = %vector.body113
  %i.bz = icmp eq i32 %i.at, 2
  %i.ca = icmp sgt i32 %i.at, -1
  %i.cb = zext i1 %i.ca to i32
  %i.cc = select i1 %i.bz, i32 %i.bl, i32 %i.cb   ; 3 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bj to i64 ; 23 uses
  %i.cd = mul nuw nsw i32 %i.am, %i.aj            ; 3 uses
  %i.ce = icmp sgt i32 %i.bj, 0                   ; 2 uses
  br i1 %i.ce, label %.lr.ph.i, label %.preheader172.i

.lr.ph.i:                                         ; preds = %.preheader175.i
  %i.cf = add nsw i32 %i.z, 2                     ; 6 uses
  %min.iters.check92 = icmp ult i32 %i.bj, 8
  br i1 %min.iters.check92, label %scalar.ph91.preheader, label %vector.memcheck85

vector.memcheck85:                                ; preds = %.lr.ph.i
  %i.cg = shl nuw nsw i64 %.sroa.0.0.insert.ext.i.i, 2
  %scevgep86.a = getelementptr i8, ptr %i.ah, i64 %i.cg
  %scevgep87 = getelementptr i8, ptr %i.ao, i64 %.sroa.0.0.insert.ext.i.i
  %bound088 = icmp ugt ptr %scevgep87, %i.ah
  %bound189 = icmp ult ptr %i.ao, %scevgep86.a
  %found.conflict90 = and i1 %bound088, %bound189
  br i1 %found.conflict90, label %scalar.ph91.preheader, label %vector.ph93

vector.ph93:                                      ; preds = %vector.memcheck85
  %n.vec94 = and i64 %.sroa.0.0.insert.ext.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cf, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next99, %vector.body95 ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ao, i64 %index96 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %wide.load97.a = load <4 x i8>, ptr %i.ch, align 1, !tbaa !14, !alias.scope !219
  %wide.load98 = load <4 x i8>, ptr %i.ci, align 1, !tbaa !14, !alias.scope !219
  %i.cj = zext <4 x i8> %wide.load97.a to <4 x i32>
  %i.ck = zext <4 x i8> %wide.load98 to <4 x i32>
  %i.cl = mul nsw <4 x i32> %broadcast.splat, %i.cj
  %i.cm = mul nsw <4 x i32> %broadcast.splat, %i.ck
  %i.cn = and <4 x i32> %i.cl, splat (i32 65535)
  %i.co = and <4 x i32> %i.cm, splat (i32 65535)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index96 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store <4 x i32> %i.cn, ptr %i.cp, align 32, !tbaa !15, !alias.scope !220, !noalias !219
  store <4 x i32> %i.co, ptr %i.cq, align 16, !tbaa !15, !alias.scope !220, !noalias !219
  %index.next99 = add nuw i64 %index96, 8         ; 2 uses
  %i.cr = icmp eq i64 %index.next99, %n.vec94
  br i1 %i.cr, label %middle.block100, label %vector.body95, !llvm.loop !190

middle.block100:                                  ; preds = %vector.body95
  %cmp.n101 = icmp eq i64 %n.vec94, %.sroa.0.0.insert.ext.i.i
  br i1 %cmp.n101, label %.preheader174.i, label %scalar.ph91.preheader

scalar.ph91.preheader:                            ; preds = %vector.memcheck85, %.lr.ph.i, %middle.block100
  %indvars.iv208.i.ph = phi i64 [ 0, %vector.memcheck85 ], [ 0, %.lr.ph.i ], [ %n.vec94, %middle.block100 ] ; 3 uses
  %xtraiter142 = and i64 %.sroa.0.0.insert.ext.i.i, 3 ; 2 uses
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %scalar.ph91.prol.loopexit, label %scalar.ph91.prol

scalar.ph91.prol:                                 ; preds = %scalar.ph91.preheader, %scalar.ph91.prol
  %indvars.iv208.i.prol = phi i64 [ %indvars.iv.next209.i.prol, %scalar.ph91.prol ], [ %indvars.iv208.i.ph, %scalar.ph91.preheader ] ; 3 uses
  %prol.iter144 = phi i64 [ %prol.iter144.next, %scalar.ph91.prol ], [ 0, %scalar.ph91.preheader ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv208.i.prol
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !14
  %i.cu = zext i8 %i.ct to i32
  %i.cv = mul nsw i32 %i.cf, %i.cu
  %i.cw = and i32 %i.cv, 65535
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv208.i.prol
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !15
  %indvars.iv.next209.i.prol = add nuw nsw i64 %indvars.iv208.i.prol, 1 ; 2 uses
  %prol.iter144.next = add i64 %prol.iter144, 1   ; 2 uses
  %prol.iter144.cmp.not = icmp eq i64 %prol.iter144.next, %xtraiter142
  br i1 %prol.iter144.cmp.not, label %scalar.ph91.prol.loopexit, label %scalar.ph91.prol, !llvm.loop !191

scalar.ph91.prol.loopexit:                        ; preds = %scalar.ph91.prol, %scalar.ph91.preheader
  %indvars.iv208.i.unr = phi i64 [ %indvars.iv208.i.ph, %scalar.ph91.preheader ], [ %indvars.iv.next209.i.prol, %scalar.ph91.prol ]
  %i.cy = sub nsw i64 %indvars.iv208.i.ph, %.sroa.0.0.insert.ext.i.i
  %i.cz = icmp ugt i64 %i.cy, -4
  br i1 %i.cz, label %.preheader174.i, label %scalar.ph91

.preheader174.i:                                  ; preds = %scalar.ph91.prol.loopexit, %scalar.ph91, %middle.block100
  %i.da = icmp sgt i32 %i.u, 3
  br i1 %i.da, label %.preheader173.preheader.i, label %.preheader172.i

.preheader173.preheader.i:                        ; preds = %.preheader174.i
  %sext252.i = shl i64 %i.aq, 32
  %i.db = ashr exact i64 %sext252.i, 32           ; 4 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.z, i32 2)
  %wide.trip.count220.i = zext nneg i32 %smax.i to i64 ; 2 uses
  %i.dc = shl nuw nsw i64 %.sroa.0.0.insert.ext.i.i, 2
  %scevgep65.a = getelementptr i8, ptr %i.ah, i64 %i.dc
  %scevgep66.a = getelementptr i8, ptr %i.ao, i64 %i.db
  %i.dd = add nsw i64 %wide.trip.count220.i, -1
  %i.de = mul nsw i64 %i.dd, %i.db
  %i.df = getelementptr i8, ptr %i.ao, i64 %i.de
  %scevgep67 = getelementptr i8, ptr %i.df, i64 %.sroa.0.0.insert.ext.i.i
  %min.iters.check72 = icmp ult i32 %i.bj, 8
  %bound068 = icmp ugt ptr %scevgep67, %i.ah
  %bound169 = icmp ult ptr %scevgep66.a, %scevgep65.a
  %found.conflict70 = and i1 %bound068, %bound169
  %stride.check = icmp slt i64 %i.db, 0
  %i.dg = or i1 %found.conflict70, %stride.check
  %n.vec74 = and i64 %.sroa.0.0.insert.ext.i.i, 2147483640 ; 3 uses
  %cmp.n83 = icmp eq i64 %n.vec74, %.sroa.0.0.insert.ext.i.i
  %xtraiter145 = and i64 %.sroa.0.0.insert.ext.i.i, 1
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  %i.dh = add nsw i64 %.sroa.0.0.insert.ext.i.i, -1
  br label %.preheader173.i

scalar.ph91:                                      ; preds = %scalar.ph91.prol.loopexit, %scalar.ph91
  %indvars.iv208.i = phi i64 [ %indvars.iv.next209.i.3, %scalar.ph91 ], [ %indvars.iv208.i.unr, %scalar.ph91.prol.loopexit ] ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv208.i
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !14
  %i.dk = zext i8 %i.dj to i32
  %i.dl = mul nsw i32 %i.cf, %i.dk
  %i.dm = and i32 %i.dl, 65535
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv208.i
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !15
  %indvars.iv.next209.i = add nuw nsw i64 %indvars.iv208.i, 1 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.next209.i
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !14
  %i.dq = zext i8 %i.dp to i32
  %i.dr = mul nsw i32 %i.cf, %i.dq
  %i.ds = and i32 %i.dr, 65535
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next209.i
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !15
  %indvars.iv.next209.i.1 = add nuw nsw i64 %indvars.iv208.i, 2 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.next209.i.1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !14
  %i.dw = zext i8 %i.dv to i32
  %i.dx = mul nsw i32 %i.cf, %i.dw
  %i.dy = and i32 %i.dx, 65535
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next209.i.1
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !15
  %indvars.iv.next209.i.2 = add nuw nsw i64 %indvars.iv208.i, 3 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.next209.i.2
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !14
  %i.ec = zext i8 %i.eb to i32
  %i.ed = mul nsw i32 %i.cf, %i.ec
  %i.ee = and i32 %i.ed, 65535
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next209.i.2
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !15
  %indvars.iv.next209.i.3 = add nuw nsw i64 %indvars.iv208.i, 4 ; 2 uses
  %exitcond211.not.i.3 = icmp eq i64 %indvars.iv.next209.i.3, %.sroa.0.0.insert.ext.i.i
  br i1 %exitcond211.not.i.3, label %.preheader174.i, label %scalar.ph91, !llvm.loop !192

.preheader173.i:                                  ; preds = %._crit_edge.i, %.preheader173.preheader.i
  %indvars.iv217.i = phi i64 [ 1, %.preheader173.preheader.i ], [ %indvars.iv.next218.i, %._crit_edge.i ] ; 2 uses
  %i.eg = mul nsw i64 %indvars.iv217.i, %i.db
  %invariant.gep.i = getelementptr i8, ptr %i.ao, i64 %i.eg ; 4 uses
  %brmerge = select i1 %min.iters.check72, i1 true, i1 %i.dg
  br i1 %brmerge, label %scalar.ph71.preheader, label %vector.body75

vector.body75:                                    ; preds = %.preheader173.i, %vector.body75
  %index76 = phi i64 [ %index.next81, %vector.body75 ], [ 0, %.preheader173.i ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index76 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  %wide.load77.a = load <4 x i32>, ptr %i.eh, align 32, !tbaa !15, !alias.scope !221, !noalias !222
  %wide.load78.a = load <4 x i32>, ptr %i.ei, align 16, !tbaa !15, !alias.scope !221, !noalias !222
  %i.ej = getelementptr i8, ptr %invariant.gep.i, i64 %index76 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 4
  %wide.load79.a = load <4 x i8>, ptr %i.ej, align 1, !tbaa !14, !alias.scope !222
  %wide.load80 = load <4 x i8>, ptr %i.ek, align 1, !tbaa !14, !alias.scope !222
  %i.el = zext <4 x i8> %wide.load79.a to <4 x i32>
  %i.em = zext <4 x i8> %wide.load80 to <4 x i32>
  %i.en = add nsw <4 x i32> %wide.load77.a, %i.el
  %i.eo = add nsw <4 x i32> %wide.load78.a, %i.em
  %i.ep = and <4 x i32> %i.en, splat (i32 65535)
  %i.eq = and <4 x i32> %i.eo, splat (i32 65535)
  store <4 x i32> %i.ep, ptr %i.eh, align 32, !tbaa !15, !alias.scope !221, !noalias !222
  store <4 x i32> %i.eq, ptr %i.ei, align 16, !tbaa !15, !alias.scope !221, !noalias !222
  %index.next81 = add nuw i64 %index76, 8         ; 2 uses
  %i.er = icmp eq i64 %index.next81, %n.vec74
  br i1 %i.er, label %middle.block82, label %vector.body75, !llvm.loop !196

middle.block82:                                   ; preds = %vector.body75
  br i1 %cmp.n83, label %._crit_edge.i, label %scalar.ph71.preheader

scalar.ph71.preheader:                            ; preds = %.preheader173.i, %middle.block82
  %indvars.iv212.i.ph = phi i64 [ %n.vec74, %middle.block82 ], [ 0, %.preheader173.i ] ; 5 uses
  br i1 %lcmp.mod146.not, label %scalar.ph71.prol.loopexit, label %scalar.ph71.prol

scalar.ph71.prol:                                 ; preds = %scalar.ph71.preheader
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv212.i.ph ; 2 uses
  %i.et = load i32, ptr %i.es, align 32, !tbaa !15
  %gep.i.prol = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv212.i.ph
  %i.eu = load i8, ptr %gep.i.prol, align 1, !tbaa !14
  %i.ev = zext i8 %i.eu to i32
  %i.ew = add nsw i32 %i.et, %i.ev
  %i.ex = and i32 %i.ew, 65535
  store i32 %i.ex, ptr %i.es, align 32, !tbaa !15
  %indvars.iv.next213.i.prol = or disjoint i64 %indvars.iv212.i.ph, 1
  br label %scalar.ph71.prol.loopexit

scalar.ph71.prol.loopexit:                        ; preds = %scalar.ph71.prol, %scalar.ph71.preheader
  %indvars.iv212.i.unr = phi i64 [ %indvars.iv212.i.ph, %scalar.ph71.preheader ], [ %indvars.iv.next213.i.prol, %scalar.ph71.prol ]
  %i.ey = icmp eq i64 %indvars.iv212.i.ph, %i.dh
  br i1 %i.ey, label %._crit_edge.i, label %scalar.ph71

.preheader172.i:                                  ; preds = %._crit_edge.i, %.preheader174.i, %.preheader175.i
  %i.ez = icmp sgt i32 %i.cc, 0
  br i1 %i.ez, label %.lr.ph202.i, label %_ZN2cv6stereoL13prefilterNormERKNS_3MatERS1_iiPh.exit

.lr.ph202.i:                                      ; preds = %.preheader172.i
  %i.fa = xor i32 %i.z, -1                        ; 3 uses
  %i.fb = add nsw i32 %i.cc, -1                   ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.fd = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %.not169184.i = icmp slt i32 %i.u, -1
  %i.fe = shl nuw i64 %.sroa.0.0.insert.ext.i.i, 32
  %sext.i = add i64 %i.fe, -4294967296
  %i.ff = ashr exact i64 %sext.i, 30
  %i.fg = getelementptr inbounds i8, ptr %i.ah, i64 %i.ff ; 3 uses
  %.not170188.i = icmp slt i32 %i.u, 2
  %i.fh = add i32 %i.bj, -1                       ; 3 uses
  %i.fi = icmp sgt i32 %i.bj, 2
  %i.fj = sext i32 %i.bj to i64
  %i.fk = sext i32 %i.z to i64
  %sext253.i = shl i64 %i.aq, 32
  %i.fl = ashr exact i64 %sext253.i, 32
  %wide.trip.count245.i = zext nneg i32 %i.cc to i64
  %wide.trip.count230.i = zext i32 %i.aa to i64   ; 4 uses
  %invariant.gep256.i = getelementptr [4 x i8], ptr %i.ah, i64 %i.fj ; 3 uses
  %wide.trip.count240.i = zext nneg i32 %i.fh to i64
  %invariant.gep258.i = getelementptr [4 x i8], ptr %i.ah, i64 %i.fk
  %.pre.i = add nsw i32 %i.fh, %i.z
  %.pre247.i = sext i32 %.pre.i to i64
  %i.fm = shl nuw nsw i64 %.sroa.0.0.insert.ext.i.i, 2
  %scevgep = getelementptr i8, ptr %i.ah, i64 %i.fm ; 2 uses
  %scevgep40 = getelementptr i8, ptr %i.ao, i64 %.sroa.0.0.insert.ext.i.i
  %narrow = xor i32 %i.z, -1
  %scevgep43.a = getelementptr i8, ptr %i.ao, i64 %.sroa.0.0.insert.ext.i.i
  %min.iters.check49 = icmp ult i32 %i.bj, 8
  %n.vec51 = and i64 %.sroa.0.0.insert.ext.i.i, 2147483640 ; 3 uses
  %cmp.n62 = icmp eq i64 %n.vec51, %.sroa.0.0.insert.ext.i.i
  %xtraiter148 = and i64 %.sroa.0.0.insert.ext.i.i, 1
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  %i.fn = add nsw i64 %.sroa.0.0.insert.ext.i.i, -1
  %xtraiter151 = and i64 %wide.trip.count230.i, 1
  %.off = add i32 %i.u, 1
  %i.fo = icmp ult i32 %.off, 3
  %unroll_iter = and i64 %wide.trip.count230.i, 4294967294
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  %lcmp.mod153 = trunc i32 %i.aa to i1
  %i.fp = add nsw i64 %wide.trip.count230.i, -1   ; 2 uses
  %min.iters.check = icmp ult i32 %i.aa, 9
  %n.vec = and i64 %i.fp, -8                      ; 3 uses
  %i.fq = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.fp, %n.vec
  br label %bb.j

scalar.ph71:                                      ; preds = %scalar.ph71.prol.loopexit, %scalar.ph71
  %indvars.iv212.i = phi i64 [ %indvars.iv.next213.i.1, %scalar.ph71 ], [ %indvars.iv212.i.unr, %scalar.ph71.prol.loopexit ] ; 4 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv212.i ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !15
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv212.i
  %i.ft = load i8, ptr %gep.i, align 1, !tbaa !14
  %i.fu = zext i8 %i.ft to i32
  %i.fv = add nsw i32 %i.fs, %i.fu
  %i.fw = and i32 %i.fv, 65535
  store i32 %i.fw, ptr %i.fr, align 4, !tbaa !15
  %indvars.iv.next213.i = add nuw nsw i64 %indvars.iv212.i, 1 ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next213.i ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !15
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.next213.i
  %i.fz = load i8, ptr %gep.i.1, align 1, !tbaa !14
  %i.ga = zext i8 %i.fz to i32
  %i.gb = add nsw i32 %i.fy, %i.ga
  %i.gc = and i32 %i.gb, 65535
  store i32 %i.gc, ptr %i.fx, align 4, !tbaa !15
  %indvars.iv.next213.i.1 = add nuw nsw i64 %indvars.iv212.i, 2 ; 2 uses
  %exitcond216.not.i.1 = icmp eq i64 %indvars.iv.next213.i.1, %.sroa.0.0.insert.ext.i.i
  br i1 %exitcond216.not.i.1, label %._crit_edge.i, label %scalar.ph71, !llvm.loop !197

._crit_edge.i:                                    ; preds = %scalar.ph71.prol.loopexit, %scalar.ph71, %middle.block82
  %indvars.iv.next218.i = add nuw nsw i64 %indvars.iv217.i, 1 ; 2 uses
  %exitcond221.not.i = icmp eq i64 %indvars.iv.next218.i, %wide.trip.count220.i
  br i1 %exitcond221.not.i, label %.preheader172.i, label %.preheader173.i, !llvm.loop !198

bb.j:                                             ; preds = %._crit_edge198.i, %.lr.ph202.i
  %indvars.iv242.i = phi i64 [ 0, %.lr.ph202.i ], [ %indvars.iv.next243.i, %._crit_edge198.i ] ; 6 uses
  %i.gd = trunc i64 %indvars.iv242.i to i32
  %i.ge = add i32 %i.gd, %narrow
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ge, i32 0)
  %i.gf = mul i32 %smax, %i.ar
  %i.gg = sext i32 %i.gf to i64
  %scevgep41 = getelementptr i8, ptr %scevgep40, i64 %i.gg
  %i.gh = trunc i64 %indvars.iv242.i to i32
  %i.gi = add i32 %i.z, %i.gh
  %smin = tail call i32 @llvm.smin.i32(i32 %i.gi, i32 %i.fb)
  %i.gj = mul i32 %smin, %i.ar
  %i.gk = sext i32 %i.gj to i64
  %scevgep44 = getelementptr i8, ptr %scevgep43.a, i64 %i.gk
  %i.gl = trunc i64 %indvars.iv242.i to i32       ; 3 uses
  %i.gm = add i32 %i.gl, %i.fa
  %i.gn = tail call i32 @llvm.smax.i32(i32 %i.gm, i32 0)
  %i.go = mul i32 %i.gn, %i.ar
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr i8, ptr %i.ao, i64 %i.gp  ; 5 uses
  %i.gr = add i32 %i.z, %i.gl
  %..i = tail call i32 @llvm.smin.i32(i32 %i.gr, i32 %i.fb)
  %i.gs = mul i32 %..i, %i.ar
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr i8, ptr %i.ao, i64 %i.gt  ; 5 uses
  %i.gv = tail call i32 @llvm.smax.i32(i32 %i.gl, i32 1)
  %i.gw = add nsw i32 %i.gv, -1
  %i.gx = mul nsw i32 %i.gw, %i.ar
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds i8, ptr %i.ao, i64 %i.gy ; 3 uses
  %i.ha = mul nsw i64 %indvars.iv242.i, %i.fl
  %i.hb = getelementptr inbounds i8, ptr %i.ao, i64 %i.ha ; 5 uses
  %indvars.iv.next243.i = add nuw nsw i64 %indvars.iv242.i, 1 ; 3 uses
  %i.hc = trunc nuw nsw i64 %indvars.iv.next243.i to i32
  %i.hd = tail call i32 @llvm.smin.i32(i32 %i.hc, i32 %i.fb)
  %i.he = mul nsw i32 %i.hd, %i.ar
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds i8, ptr %i.ao, i64 %i.hf ; 3 uses
  %i.hh = load ptr, ptr %i.fc, align 8, !tbaa !62
  %i.hi = load i64, ptr %i.fd, align 8, !tbaa !87
  %i.hj = mul i64 %i.hi, %indvars.iv242.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hj ; 3 uses
  br i1 %i.ce, label %.lr.ph183.i.preheader, label %.preheader.i

.lr.ph183.i.preheader:                            ; preds = %bb.j
  br i1 %min.iters.check49, label %.lr.ph183.i.preheader138, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph183.i.preheader
  %bound0 = icmp ugt ptr %scevgep41, %i.ah
  %bound1 = icmp ult ptr %i.gq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound045 = icmp ugt ptr %scevgep44, %i.ah
  %bound146 = icmp ult ptr %i.gu, %scevgep
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx = or i1 %found.conflict, %found.conflict47
  br i1 %conflict.rdx, label %.lr.ph183.i.preheader138, label %vector.body52

vector.body52:                                    ; preds = %vector.memcheck, %vector.body52
  %index53 = phi i64 [ %index.next60, %vector.body52 ], [ 0, %vector.memcheck ] ; 4 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index53 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16 ; 2 uses
  %wide.load54.a = load <4 x i32>, ptr %i.hl, align 32, !tbaa !15, !alias.scope !223, !noalias !224
  %wide.load55.a = load <4 x i32>, ptr %i.hm, align 16, !tbaa !15, !alias.scope !223, !noalias !224
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gu, i64 %index53 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %wide.load56.a = load <4 x i8>, ptr %i.hn, align 1, !tbaa !14, !alias.scope !225
  %wide.load57.a = load <4 x i8>, ptr %i.ho, align 1, !tbaa !14, !alias.scope !225
  %i.hp = zext <4 x i8> %wide.load56.a to <4 x i32>
  %i.hq = zext <4 x i8> %wide.load57.a to <4 x i32>
  %i.hr = add nsw <4 x i32> %wide.load54.a, %i.hp
  %i.hs = add nsw <4 x i32> %wide.load55.a, %i.hq
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gq, i64 %index53 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %wide.load58.a = load <4 x i8>, ptr %i.ht, align 1, !tbaa !14, !alias.scope !226
  %wide.load59 = load <4 x i8>, ptr %i.hu, align 1, !tbaa !14, !alias.scope !226
  %i.hv = zext <4 x i8> %wide.load58.a to <4 x i32>
  %i.hw = zext <4 x i8> %wide.load59 to <4 x i32>
  %i.hx = sub <4 x i32> %i.hr, %i.hv
  %i.hy = sub <4 x i32> %i.hs, %i.hw
  %i.hz = and <4 x i32> %i.hx, splat (i32 65535)
  %i.ia = and <4 x i32> %i.hy, splat (i32 65535)
  store <4 x i32> %i.hz, ptr %i.hl, align 32, !tbaa !15, !alias.scope !223, !noalias !224
  store <4 x i32> %i.ia, ptr %i.hm, align 16, !tbaa !15, !alias.scope !223, !noalias !224
  %index.next60 = add nuw i64 %index53, 8         ; 2 uses
  %i.ib = icmp eq i64 %index.next60, %n.vec51
  br i1 %i.ib, label %middle.block61, label %vector.body52, !llvm.loop !203

middle.block61:                                   ; preds = %vector.body52
  br i1 %cmp.n62, label %.preheader.i, label %.lr.ph183.i.preheader138

.lr.ph183.i.preheader138:                         ; preds = %vector.memcheck, %.lr.ph183.i.preheader, %middle.block61
  %indvars.iv222.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph183.i.preheader ], [ %n.vec51, %middle.block61 ] ; 6 uses
  br i1 %lcmp.mod149.not, label %.lr.ph183.i.prol.loopexit, label %.lr.ph183.i.prol

.lr.ph183.i.prol:                                 ; preds = %.lr.ph183.i.preheader138
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv222.i.ph ; 2 uses
  %i.id = load i32, ptr %i.ic, align 32, !tbaa !15
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gu, i64 %indvars.iv222.i.ph
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !14
  %i.ig = zext i8 %i.if to i32
  %i.ih = add nsw i32 %i.id, %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv222.i.ph
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !14
  %i.ik = zext i8 %i.ij to i32
  %i.il = sub i32 %i.ih, %i.ik
  %i.im = and i32 %i.il, 65535
  store i32 %i.im, ptr %i.ic, align 32, !tbaa !15
  %indvars.iv.next223.i.prol = or disjoint i64 %indvars.iv222.i.ph, 1
  br label %.lr.ph183.i.prol.loopexit

.lr.ph183.i.prol.loopexit:                        ; preds = %.lr.ph183.i.prol, %.lr.ph183.i.preheader138
  %indvars.iv222.i.unr = phi i64 [ %indvars.iv222.i.ph, %.lr.ph183.i.preheader138 ], [ %indvars.iv.next223.i.prol, %.lr.ph183.i.prol ]
  %i.in = icmp eq i64 %indvars.iv222.i.ph, %i.fn
  br i1 %i.in, label %.preheader.i, label %.lr.ph183.i

.preheader.i:                                     ; preds = %.lr.ph183.i.prol.loopexit, %.lr.ph183.i, %middle.block61, %bb.j
  br i1 %.not169184.i, label %._crit_edge187.thread.i, label %.lr.ph186.i.preheader

.lr.ph186.i.preheader:                            ; preds = %.preheader.i
  br i1 %i.fo, label %.lr.ph186.i.epil.preheader, label %.lr.ph186.i

._crit_edge187.thread.i:                          ; preds = %.preheader.i
  %i.io = load i32, ptr %i.ah, align 32, !tbaa !15
  %i.ip = mul nsw i32 %i.io, %i.aa
  br label %._crit_edge193.i

.lr.ph183.i:                                      ; preds = %.lr.ph183.i.prol.loopexit, %.lr.ph183.i
  %indvars.iv222.i = phi i64 [ %indvars.iv.next223.i.1, %.lr.ph183.i ], [ %indvars.iv222.i.unr, %.lr.ph183.i.prol.loopexit ] ; 5 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv222.i ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !15
  %i.is = getelementptr inbounds nuw i8, ptr %i.gu, i64 %indvars.iv222.i
  %i.it = load i8, ptr %i.is, align 1, !tbaa !14
  %i.iu = zext i8 %i.it to i32
  %i.iv = add nsw i32 %i.ir, %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv222.i
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !14
  %i.iy = zext i8 %i.ix to i32
  %i.iz = sub i32 %i.iv, %i.iy
  %i.ja = and i32 %i.iz, 65535
  store i32 %i.ja, ptr %i.iq, align 4, !tbaa !15
  %indvars.iv.next223.i = add nuw nsw i64 %indvars.iv222.i, 1 ; 3 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next223.i ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !15
  %i.jd = getelementptr inbounds nuw i8, ptr %i.gu, i64 %indvars.iv.next223.i
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !14
  %i.jf = zext i8 %i.je to i32
  %i.jg = add nsw i32 %i.jc, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv.next223.i
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !14
  %i.jj = zext i8 %i.ji to i32
  %i.jk = sub i32 %i.jg, %i.jj
  %i.jl = and i32 %i.jk, 65535
  store i32 %i.jl, ptr %i.jb, align 4, !tbaa !15
  %indvars.iv.next223.i.1 = add nuw nsw i64 %indvars.iv222.i, 2 ; 2 uses
  %exitcond226.not.i.1 = icmp eq i64 %indvars.iv.next223.i.1, %.sroa.0.0.insert.ext.i.i
  br i1 %exitcond226.not.i.1, label %.preheader.i, label %.lr.ph183.i, !llvm.loop !204

.lr.ph186.i:                                      ; preds = %.lr.ph186.i.preheader, %.lr.ph186.i
  %indvars.iv227.i = phi i64 [ %indvars.iv.next228.i.1, %.lr.ph186.i ], [ 0, %.lr.ph186.i.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph186.i ], [ 0, %.lr.ph186.i.preheader ]
  %i.jm = load i32, ptr %i.ah, align 32, !tbaa !15
  %i.jn = xor i64 %indvars.iv227.i, -1
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.jn
  store i32 %i.jm, ptr %i.jo, align 4, !tbaa !15
  %i.jp = load i32, ptr %i.fg, align 4, !tbaa !15
  %gep257.i = getelementptr [4 x i8], ptr %invariant.gep256.i, i64 %indvars.iv227.i
  store i32 %i.jp, ptr %gep257.i, align 4, !tbaa !15
  %i.jq = load i32, ptr %i.ah, align 32, !tbaa !15
  %i.jr = xor i64 %indvars.iv227.i, -2
  %i.js = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.jr
  store i32 %i.jq, ptr %i.js, align 8, !tbaa !15
  %i.jt = load i32, ptr %i.fg, align 4, !tbaa !15
  %i.ju = getelementptr [4 x i8], ptr %invariant.gep256.i, i64 %indvars.iv227.i
  %gep257.i.1 = getelementptr i8, ptr %i.ju, i64 4
  store i32 %i.jt, ptr %gep257.i.1, align 4, !tbaa !15
  %indvars.iv.next228.i.1 = add nuw nsw i64 %indvars.iv227.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge187.i.unr-lcssa, label %.lr.ph186.i, !llvm.loop !205

._crit_edge187.i.unr-lcssa:                       ; preds = %.lr.ph186.i
  br i1 %lcmp.mod152.not, label %._crit_edge187.i, label %.lr.ph186.i.epil.preheader

.lr.ph186.i.epil.preheader:                       ; preds = %._crit_edge187.i.unr-lcssa, %.lr.ph186.i.preheader
  %indvars.iv227.i.epil.init = phi i64 [ 0, %.lr.ph186.i.preheader ], [ %indvars.iv.next228.i.1, %._crit_edge187.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod153)
  %i.jv = load i32, ptr %i.ah, align 32, !tbaa !15
  %i.jw = xor i64 %indvars.iv227.i.epil.init, -1
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.jw
  store i32 %i.jv, ptr %i.jx, align 4, !tbaa !15
  %i.jy = load i32, ptr %i.fg, align 4, !tbaa !15
  %gep257.i.epil = getelementptr [4 x i8], ptr %invariant.gep256.i, i64 %indvars.iv227.i.epil.init
  store i32 %i.jy, ptr %gep257.i.epil, align 4, !tbaa !15
  br label %._crit_edge187.i

._crit_edge187.i:                                 ; preds = %._crit_edge187.i.unr-lcssa, %.lr.ph186.i.epil.preheader
  %i.jz = load i32, ptr %i.ah, align 32, !tbaa !15
  %i.ka = mul nsw i32 %i.jz, %i.aa                ; 3 uses
  br i1 %.not170188.i, label %._crit_edge193.i, label %.lr.ph192.i.preheader

.lr.ph192.i.preheader:                            ; preds = %._crit_edge187.i
  br i1 %min.iters.check, label %.lr.ph192.i.preheader137, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph192.i.preheader
  %i.kb = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ka, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.kb, %vector.ph ], [ %i.kf, %vector.body ]
  %vec.phi38 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.kg, %vector.body ]
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 20
  %wide.load = load <4 x i32>, ptr %i.kd, align 4, !tbaa !15
  %wide.load39 = load <4 x i32>, ptr %i.ke, align 4, !tbaa !15
  %i.kf = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.kg = add <4 x i32> %wide.load39, %vec.phi38  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kh = icmp eq i64 %index.next, %n.vec
  br i1 %i.kh, label %middle.block, label %vector.body, !llvm.loop !206

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.kg, %i.kf
  %i.ki = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge193.i, label %.lr.ph192.i.preheader137

.lr.ph192.i.preheader137:                         ; preds = %.lr.ph192.i.preheader, %middle.block
  %indvars.iv232.i.ph = phi i64 [ 1, %.lr.ph192.i.preheader ], [ %i.fq, %middle.block ]
  %.0190.i.ph = phi i32 [ %i.ka, %.lr.ph192.i.preheader ], [ %i.ki, %middle.block ]
  br label %.lr.ph192.i

.lr.ph192.i:                                      ; preds = %.lr.ph192.i.preheader137, %.lr.ph192.i
  %indvars.iv232.i = phi i64 [ %indvars.iv.next233.i, %.lr.ph192.i ], [ %indvars.iv232.i.ph, %.lr.ph192.i.preheader137 ] ; 2 uses
  %.0190.i = phi i32 [ %i.kl, %.lr.ph192.i ], [ %.0190.i.ph, %.lr.ph192.i.preheader137 ]
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv232.i
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !15
  %i.kl = add nsw i32 %i.kk, %.0190.i             ; 2 uses
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %exitcond236.not.i = icmp eq i64 %indvars.iv.next233.i, %wide.trip.count230.i
  br i1 %exitcond236.not.i, label %._crit_edge193.i, label %.lr.ph192.i, !llvm.loop !207

._crit_edge193.i:                                 ; preds = %.lr.ph192.i, %middle.block, %._crit_edge187.i, %._crit_edge187.thread.i
  %.0.lcssa.i = phi i32 [ %i.ka, %._crit_edge187.i ], [ %i.ip, %._crit_edge187.thread.i ], [ %i.ki, %middle.block ], [ %i.kl, %.lr.ph192.i ] ; 3 uses
  %i.km = load i8, ptr %i.hb, align 1, !tbaa !14
  %i.kn = zext i8 %i.km to i32
  %i.ko = mul nuw nsw i32 %i.kn, 5
  %i.kp = getelementptr inbounds nuw i8, ptr %i.hb, i64 1
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !14
  %i.kr = zext i8 %i.kq to i32
  %i.ks = add nuw nsw i32 %i.ko, %i.kr
  %i.kt = load i8, ptr %i.gz, align 1, !tbaa !14
  %i.ku = zext i8 %i.kt to i32
end_hunk_0
