inline.NumInlined: 327
inline.NumDeleted: 127
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN2cv6stereo8Matching18smallRegionRemovalIhEEvRKNS_3MatEiRS3_:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.aq, label %bb.ai, !llvm.loop !180

bb.aq:                                            ; preds = %bb.ap
  %indvars.iv.next249 = add nsw i64 %indvars.iv248, 1 ; 3 uses
  %i.eg = sext i32 %.5152.us to i64
  %i.eh = icmp slt i64 %indvars.iv.next249, %i.eg
  br i1 %i.eh, label %.lr.ph.us, label %._crit_edge.us.loopexit, !llvm.loop !181

._crit_edge.us.loopexit:                          ; preds = %bb.aq
  %i.ei = trunc nsw i64 %indvars.iv.next249 to i32
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.loopexit, %bb.ah
  %.2155.lcssa.us = phi i32 [ %.1154212.us, %bb.ah ], [ %i.ei, %._crit_edge.us.loopexit ] ; 7 uses
  %.2149.lcssa.us = phi i32 [ %i.co, %bb.ah ], [ %.5152.us, %._crit_edge.us.loopexit ] ; 4 uses
  %.0140.lcssa.us = phi i8 [ 1, %bb.ah ], [ %.3143.us, %._crit_edge.us.loopexit ]
  %.0136.lcssa.us = phi i8 [ 0, %bb.ah ], [ %.3139.us, %._crit_edge.us.loopexit ]
  %i.ej = sub nsw i32 %.2155.lcssa.us, %.1148213.us
  %.not172.us = icmp sgt i32 %i.ej, %2
  br i1 %.not172.us, label %.loopexit.us, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.us
  %i.ek = udiv i8 %.0136.lcssa.us, %.0140.lcssa.us ; 3 uses
  %i.el = icmp slt i32 %.1148213.us, %.2155.lcssa.us
  br i1 %i.el, label %.lr.ph211.us.preheader, label %.loopexit.us

.lr.ph211.us.preheader:                           ; preds = %bb.ar
  %wide.trip.count = sext i32 %.2155.lcssa.us to i64 ; 3 uses
  %i.em = sub nsw i64 %wide.trip.count, %i.ce
  %xtraiter = and i64 %i.em, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph211.us.prol.loopexit, label %.lr.ph211.us.prol

.lr.ph211.us.prol:                                ; preds = %.lr.ph211.us.preheader
  %i.en = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ce
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !29
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.ce
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !29
  %i.er = mul nsw i32 %i.eo, %i.bl
  %i.es = add nsw i32 %i.er, %i.eq
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds i8, ptr %i.bj, i64 %i.et
  store i8 %i.ek, ptr %i.eu, align 1, !tbaa !28
  %indvars.iv.next251.prol = add nsw i64 %i.ce, 1
  br label %.lr.ph211.us.prol.loopexit

.lr.ph211.us.prol.loopexit:                       ; preds = %.lr.ph211.us.prol, %.lr.ph211.us.preheader
  %indvars.iv250.unr = phi i64 [ %i.ce, %.lr.ph211.us.preheader ], [ %indvars.iv.next251.prol, %.lr.ph211.us.prol ]
  %i.ev = add nsw i64 %wide.trip.count, -1
  %i.ew = icmp eq i64 %i.ev, %i.ce
  br i1 %i.ew, label %.loopexit.us, label %.lr.ph211.us

.lr.ph211.us:                                     ; preds = %.lr.ph211.us.prol.loopexit, %.lr.ph211.us
  %indvars.iv250 = phi i64 [ %indvars.iv.next251.1, %.lr.ph211.us ], [ %indvars.iv250.unr, %.lr.ph211.us.prol.loopexit ] ; 4 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %indvars.iv250
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !29
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %indvars.iv250
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !29
  %i.fb = mul nsw i32 %i.ey, %i.bl
  %i.fc = add nsw i32 %i.fb, %i.fa
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds i8, ptr %i.bj, i64 %i.fd
  store i8 %i.ek, ptr %i.fe, align 1, !tbaa !28
  %indvars.iv.next251 = add nsw i64 %indvars.iv250, 1 ; 2 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %indvars.iv.next251
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !29
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %indvars.iv.next251
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !29
  %i.fj = mul nsw i32 %i.fg, %i.bl
  %i.fk = add nsw i32 %i.fj, %i.fi
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds i8, ptr %i.bj, i64 %i.fl
  store i8 %i.ek, ptr %i.fm, align 1, !tbaa !28
  %indvars.iv.next251.1 = add nsw i64 %indvars.iv250, 2 ; 2 uses
  %exitcond253.not.1 = icmp eq i64 %indvars.iv.next251.1, %wide.trip.count
  br i1 %exitcond253.not.1, label %.loopexit.us, label %.lr.ph211.us, !llvm.loop !182

bb.as:                                            ; preds = %.lr.ph216.split.split.us241
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv254
  store i8 0, ptr %gep, align 1, !tbaa !28
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.lr.ph211.us.prol.loopexit, %.lr.ph211.us, %bb.ar, %bb.as, %._crit_edge.us, %bb.ag
  %.3156.us = phi i32 [ %.1154212.us, %bb.as ], [ %.1154212.us, %bb.ag ], [ %.2155.lcssa.us, %._crit_edge.us ], [ %.2155.lcssa.us, %bb.ar ], [ %.2155.lcssa.us, %.lr.ph211.us ], [ %.2155.lcssa.us, %.lr.ph211.us.prol.loopexit ] ; 2 uses
  %.6.us = phi i32 [ %.1148213.us, %bb.as ], [ %.1148213.us, %bb.ag ], [ %.2149.lcssa.us, %._crit_edge.us ], [ %.2149.lcssa.us, %bb.ar ], [ %.2149.lcssa.us, %.lr.ph211.us ], [ %.2149.lcssa.us, %.lr.ph211.us.prol.loopexit ] ; 2 uses
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %exitcond258.not = icmp eq i64 %indvars.iv.next255, %i.bt
  br i1 %exitcond258.not, label %._crit_edge217.us, label %.lr.ph216.split.split.us241, !llvm.loop !183

.lr.ph216.split.us240:                            ; preds = %.lr.ph216.us
  %i.fn = mul i32 %i.bl, %i.bw
  %i.fo = zext i32 %i.fn to i64
  %scevgep = getelementptr i8, ptr %i.bj, i64 %i.fo
  %i.fp = icmp samesign ult i64 %indvars.iv262, %i.bv
  %.fr.us = freeze i1 %i.fp
  br i1 %.fr.us, label %.lr.ph216.split.split.us241.preheader, label %._crit_edge217.us.sink.split

.lr.ph216.split.split.us241.preheader:            ; preds = %.lr.ph216.split.us240
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bx
  br label %.lr.ph216.split.split.us241

._crit_edge217.us.sink.split:                     ; preds = %.lr.ph216.split.us240, %.lr.ph216.us
  %scevgep.sink = phi ptr [ %i.bj, %.lr.ph216.us ], [ %scevgep, %.lr.ph216.split.us240 ]
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.sink, i8 0, i64 %i.bt, i1 false), !tbaa !28
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
  %i.c = load i32, ptr %1, align 4, !tbaa !102    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !104
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

._crit_edge:                                      ; preds = %bb.u, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ %i.l, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 4 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !107  ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !185
  %i.o = icmp eq i32 %i.n, 0
  %i.p = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105  ; 8 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !105  ; 6 uses
  br i1 %i.o, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !186  ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !187  ; 4 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !58
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
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !101 ; 19 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !128 ; 3 uses
  %i.ar = trunc i64 %i.aq to i32                  ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.at = load i32, ptr %i.as, align 8, !tbaa !97 ; 6 uses
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
  %i.aw = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !28
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.oc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i10 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %common.resume

bb.g:                                             ; preds = %bb.c
  %i.bb = icmp sgt i32 %i.at, 0
  br i1 %i.bb, label %bb.h, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.g
  %i.bc = icmp eq i32 %i.at, 0
  %i.bd = zext i1 %i.bc to i32
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 84 ; 2 uses
  %i.bf = icmp eq i32 %i.at, 2
  %i.bg = zext i1 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !29 ; 2 uses
  %.not.i.i = icmp eq i32 %i.at, 1
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load i32, ptr %i.be, align 4, !tbaa !29
  br label %vector.ph107

bb.j:                                             ; preds = %bb.h, %.thread.i.i
  %i.bk = phi i32 [ %i.bd, %.thread.i.i ], [ %i.bi, %bb.h ]
  %i.bl = icmp sgt i32 %i.at, -1
  %i.bm = zext i1 %i.bl to i32
  br label %vector.ph107

vector.ph107:                                     ; preds = %bb.i, %bb.j
  %i.bn = phi i32 [ %i.bi, %bb.i ], [ %i.bk, %bb.j ] ; 8 uses
  %i.bo = phi i32 [ %i.bj, %bb.i ], [ %i.bm, %bb.j ] ; 3 uses
  %i.bp = sub nsw i32 0, %i.w
  %i.bq = sext i32 %i.bp to i64
  %i.br = sext i32 %i.w to i64
  %i.bs = shl nsw i32 %i.w, 1
  %broadcast.splatinsert108 = insertelement <16 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat109 = shufflevector <16 x i32> %broadcast.splatinsert108, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert110 = insertelement <16 x i64> poison, i64 %i.br, i64 0
  %broadcast.splat111 = shufflevector <16 x i64> %broadcast.splatinsert110, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert112 = insertelement <16 x i64> poison, i64 %i.bq, i64 0
  %broadcast.splat113 = shufflevector <16 x i64> %broadcast.splatinsert112, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert114 = insertelement <16 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat115 = shufflevector <16 x i32> %broadcast.splatinsert114, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph107
  %index117 = phi i64 [ 0, %vector.ph107 ], [ %index.next119, %vector.body116 ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph107 ], [ %vec.ind.next, %vector.body116 ] ; 2 uses
  %vec.ind118 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph107 ], [ %vec.ind.next120, %vector.body116 ] ; 2 uses
  %i.bt = add nsw <16 x i64> %vec.ind, splat (i64 -1280) ; 2 uses
  %i.bu = icmp slt <16 x i64> %i.bt, %broadcast.splat113
  %i.bv = icmp sgt <16 x i64> %i.bt, %broadcast.splat111
  %i.bw = add <16 x i32> %broadcast.splat115, %vec.ind118
  %i.bx = select <16 x i1> %i.bv, <16 x i32> %broadcast.splat109, <16 x i32> %i.bw
  %i.by = trunc <16 x i32> %i.bx to <16 x i8>
  %i.bz = select <16 x i1> %i.bu, <16 x i8> zeroinitializer, <16 x i8> %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 %index117
  store <16 x i8> %i.bz, ptr %i.ca, align 16, !tbaa !28
  %index.next119 = add nuw i64 %index117, 16      ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %vec.ind.next120 = add <16 x i32> %vec.ind118, splat (i32 16)
  %i.cb = icmp eq i64 %index.next119, 2816
  br i1 %i.cb, label %.preheader175.i, label %vector.body116, !llvm.loop !188

.preheader175.i:                                  ; preds = %vector.body116
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bn to i64 ; 23 uses
  %i.cc = mul nuw nsw i32 %i.am, %i.aj            ; 3 uses
  %i.cd = icmp sgt i32 %i.bn, 0                   ; 2 uses
  br i1 %i.cd, label %.lr.ph.i, label %.preheader172.i

.lr.ph.i:                                         ; preds = %.preheader175.i
  %i.ce = add nsw i32 %i.z, 2                     ; 6 uses
  %min.iters.check95 = icmp ult i32 %i.bn, 8
  br i1 %min.iters.check95, label %scalar.ph94.preheader, label %vector.memcheck88

vector.memcheck88:                                ; preds = %.lr.ph.i
  %i.cf = shl nuw nsw i64 %.sroa.0.0.insert.ext.i.i, 2
  %scevgep89.a = getelementptr i8, ptr %i.ah, i64 %i.cf
  %scevgep90 = getelementptr i8, ptr %i.ao, i64 %.sroa.0.0.insert.ext.i.i
  %bound091 = icmp ugt ptr %scevgep90, %i.ah
  %bound192 = icmp ult ptr %i.ao, %scevgep89.a
  %found.conflict93 = and i1 %bound091, %bound192
  br i1 %found.conflict93, label %scalar.ph94.preheader, label %vector.ph96

vector.ph96:                                      ; preds = %vector.memcheck88
  %n.vec97 = and i64 %.sroa.0.0.insert.ext.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ce, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph96
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next102, %vector.body98 ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ao, i64 %index99 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %wide.load100.a = load <4 x i8>, ptr %i.cg, align 1, !tbaa !28, !alias.scope !189
  %wide.load101 = load <4 x i8>, ptr %i.ch, align 1, !tbaa !28, !alias.scope !189
  %i.ci = zext <4 x i8> %wide.load100.a to <4 x i32>
  %i.cj = zext <4 x i8> %wide.load101 to <4 x i32>
  %i.ck = mul nsw <4 x i32> %broadcast.splat, %i.ci
  %i.cl = mul nsw <4 x i32> %broadcast.splat, %i.cj
  %i.cm = and <4 x i32> %i.ck, splat (i32 65535)
  %i.cn = and <4 x i32> %i.cl, splat (i32 65535)
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index99 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store <4 x i32> %i.cm, ptr %i.co, align 32, !tbaa !29, !alias.scope !192, !noalias !189
  store <4 x i32> %i.cn, ptr %i.cp, align 16, !tbaa !29, !alias.scope !192, !noalias !189
  %index.next102 = add nuw i64 %index99, 8        ; 2 uses
  %i.cq = icmp eq i64 %index.next102, %n.vec97
  br i1 %i.cq, label %middle.block103, label %vector.body98, !llvm.loop !194

middle.block103:                                  ; preds = %vector.body98
  %cmp.n104 = icmp eq i64 %n.vec97, %.sroa.0.0.insert.ext.i.i
  br i1 %cmp.n104, label %.preheader174.i, label %scalar.ph94.preheader

scalar.ph94.preheader:                            ; preds = %vector.memcheck88, %.lr.ph.i, %middle.block103
  %indvars.iv208.i.ph = phi i64 [ 0, %vector.memcheck88 ], [ 0, %.lr.ph.i ], [ %n.vec97, %middle.block103 ] ; 3 uses
  %xtraiter145 = and i64 %.sroa.0.0.insert.ext.i.i, 3 ; 2 uses
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %scalar.ph94.prol.loopexit, label %scalar.ph94.prol

scalar.ph94.prol:                                 ; preds = %scalar.ph94.preheader, %scalar.ph94.prol
  %indvars.iv208.i.prol = phi i64 [ %indvars.iv.next209.i.prol, %scalar.ph94.prol ], [ %indvars.iv208.i.ph, %scalar.ph94.preheader ] ; 3 uses
  %prol.iter147 = phi i64 [ %prol.iter147.next, %scalar.ph94.prol ], [ 0, %scalar.ph94.preheader ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv208.i.prol
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !28
  %i.ct = zext i8 %i.cs to i32
  %i.cu = mul nsw i32 %i.ce, %i.ct
  %i.cv = and i32 %i.cu, 65535
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv208.i.prol
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !29
  %indvars.iv.next209.i.prol = add nuw nsw i64 %indvars.iv208.i.prol, 1 ; 2 uses
  %prol.iter147.next = add i64 %prol.iter147, 1   ; 2 uses
  %prol.iter147.cmp.not = icmp eq i64 %prol.iter147.next, %xtraiter145
  br i1 %prol.iter147.cmp.not, label %scalar.ph94.prol.loopexit, label %scalar.ph94.prol, !llvm.loop !195

scalar.ph94.prol.loopexit:                        ; preds = %scalar.ph94.prol, %scalar.ph94.preheader
  %indvars.iv208.i.unr = phi i64 [ %indvars.iv208.i.ph, %scalar.ph94.preheader ], [ %indvars.iv.next209.i.prol, %scalar.ph94.prol ]
  %i.cx = sub nsw i64 %indvars.iv208.i.ph, %.sroa.0.0.insert.ext.i.i
  %i.cy = icmp ugt i64 %i.cx, -4
  br i1 %i.cy, label %.preheader174.i, label %scalar.ph94

.preheader174.i:                                  ; preds = %scalar.ph94.prol.loopexit, %scalar.ph94, %middle.block103
  %i.cz = icmp sgt i32 %i.u, 3
  br i1 %i.cz, label %.preheader173.preheader.i, label %.preheader172.i

.preheader173.preheader.i:                        ; preds = %.preheader174.i
  %sext252.i = shl i64 %i.aq, 32
  %i.da = ashr exact i64 %sext252.i, 32           ; 4 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.z, i32 2)
  %wide.trip.count220.i = zext nneg i32 %smax.i to i64 ; 2 uses
  %i.db = shl nuw nsw i64 %.sroa.0.0.insert.ext.i.i, 2
  %scevgep68.a = getelementptr i8, ptr %i.ah, i64 %i.db
  %scevgep69.a = getelementptr i8, ptr %i.ao, i64 %i.da
  %i.dc = add nsw i64 %wide.trip.count220.i, -1
  %i.dd = mul nsw i64 %i.dc, %i.da
  %i.de = getelementptr i8, ptr %i.ao, i64 %i.dd
  %scevgep70 = getelementptr i8, ptr %i.de, i64 %.sroa.0.0.insert.ext.i.i
  %min.iters.check75 = icmp ult i32 %i.bn, 8
  %bound071 = icmp ugt ptr %scevgep70, %i.ah
  %bound172 = icmp ult ptr %scevgep69.a, %scevgep68.a
  %found.conflict73 = and i1 %bound071, %bound172
  %stride.check = icmp slt i64 %i.da, 0
  %i.df = or i1 %found.conflict73, %stride.check
  %n.vec77 = and i64 %.sroa.0.0.insert.ext.i.i, 2147483640 ; 3 uses
  %cmp.n86 = icmp eq i64 %n.vec77, %.sroa.0.0.insert.ext.i.i
  %xtraiter148 = and i64 %.sroa.0.0.insert.ext.i.i, 1
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  %i.dg = add nsw i64 %.sroa.0.0.insert.ext.i.i, -1
  br label %.preheader173.i

scalar.ph94:                                      ; preds = %scalar.ph94.prol.loopexit, %scalar.ph94
  %indvars.iv208.i = phi i64 [ %indvars.iv.next209.i.3, %scalar.ph94 ], [ %indvars.iv208.i.unr, %scalar.ph94.prol.loopexit ] ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv208.i
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !28
  %i.dj = zext i8 %i.di to i32
  %i.dk = mul nsw i32 %i.ce, %i.dj
  %i.dl = and i32 %i.dk, 65535
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv208.i
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !29
  %indvars.iv.next209.i = add nuw nsw i64 %indvars.iv208.i, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.next209.i
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !28
  %i.dp = zext i8 %i.do to i32
  %i.dq = mul nsw i32 %i.ce, %i.dp
  %i.dr = and i32 %i.dq, 65535
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next209.i
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !29
  %indvars.iv.next209.i.1 = add nuw nsw i64 %indvars.iv208.i, 2 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.next209.i.1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !28
  %i.dv = zext i8 %i.du to i32
  %i.dw = mul nsw i32 %i.ce, %i.dv
  %i.dx = and i32 %i.dw, 65535
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next209.i.1
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !29
  %indvars.iv.next209.i.2 = add nuw nsw i64 %indvars.iv208.i, 3 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.next209.i.2
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !28
  %i.eb = zext i8 %i.ea to i32
  %i.ec = mul nsw i32 %i.ce, %i.eb
  %i.ed = and i32 %i.ec, 65535
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next209.i.2
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !29
  %indvars.iv.next209.i.3 = add nuw nsw i64 %indvars.iv208.i, 4 ; 2 uses
  %exitcond211.not.i.3 = icmp eq i64 %indvars.iv.next209.i.3, %.sroa.0.0.insert.ext.i.i
  br i1 %exitcond211.not.i.3, label %.preheader174.i, label %scalar.ph94, !llvm.loop !196

.preheader173.i:                                  ; preds = %._crit_edge.i, %.preheader173.preheader.i
  %indvars.iv217.i = phi i64 [ 1, %.preheader173.preheader.i ], [ %indvars.iv.next218.i, %._crit_edge.i ] ; 2 uses
  %i.ef = mul nsw i64 %indvars.iv217.i, %i.da
  %invariant.gep.i = getelementptr i8, ptr %i.ao, i64 %i.ef ; 4 uses
  %brmerge = select i1 %min.iters.check75, i1 true, i1 %i.df
  br i1 %brmerge, label %scalar.ph74.preheader, label %vector.body78

vector.body78:                                    ; preds = %.preheader173.i, %vector.body78
  %index79 = phi i64 [ %index.next84, %vector.body78 ], [ 0, %.preheader173.i ] ; 3 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index79 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  %wide.load80.a = load <4 x i32>, ptr %i.eg, align 32, !tbaa !29, !alias.scope !197, !noalias !200
  %wide.load81.a = load <4 x i32>, ptr %i.eh, align 16, !tbaa !29, !alias.scope !197, !noalias !200
  %i.ei = getelementptr i8, ptr %invariant.gep.i, i64 %index79 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 4
  %wide.load82.a = load <4 x i8>, ptr %i.ei, align 1, !tbaa !28, !alias.scope !200
  %wide.load83 = load <4 x i8>, ptr %i.ej, align 1, !tbaa !28, !alias.scope !200
  %i.ek = zext <4 x i8> %wide.load82.a to <4 x i32>
  %i.el = zext <4 x i8> %wide.load83 to <4 x i32>
  %i.em = add nsw <4 x i32> %wide.load80.a, %i.ek
  %i.en = add nsw <4 x i32> %wide.load81.a, %i.el
  %i.eo = and <4 x i32> %i.em, splat (i32 65535)
  %i.ep = and <4 x i32> %i.en, splat (i32 65535)
  store <4 x i32> %i.eo, ptr %i.eg, align 32, !tbaa !29, !alias.scope !197, !noalias !200
  store <4 x i32> %i.ep, ptr %i.eh, align 16, !tbaa !29, !alias.scope !197, !noalias !200
  %index.next84 = add nuw i64 %index79, 8         ; 2 uses
  %i.eq = icmp eq i64 %index.next84, %n.vec77
  br i1 %i.eq, label %middle.block85, label %vector.body78, !llvm.loop !202

middle.block85:                                   ; preds = %vector.body78
  br i1 %cmp.n86, label %._crit_edge.i, label %scalar.ph74.preheader

scalar.ph74.preheader:                            ; preds = %.preheader173.i, %middle.block85
  %indvars.iv212.i.ph = phi i64 [ %n.vec77, %middle.block85 ], [ 0, %.preheader173.i ] ; 5 uses
  br i1 %lcmp.mod149.not, label %scalar.ph74.prol.loopexit, label %scalar.ph74.prol

scalar.ph74.prol:                                 ; preds = %scalar.ph74.preheader
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv212.i.ph ; 2 uses
  %i.es = load i32, ptr %i.er, align 32, !tbaa !29
  %gep.i.prol = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv212.i.ph
  %i.et = load i8, ptr %gep.i.prol, align 1, !tbaa !28
  %i.eu = zext i8 %i.et to i32
  %i.ev = add nsw i32 %i.es, %i.eu
  %i.ew = and i32 %i.ev, 65535
  store i32 %i.ew, ptr %i.er, align 32, !tbaa !29
  %indvars.iv.next213.i.prol = or disjoint i64 %indvars.iv212.i.ph, 1
  br label %scalar.ph74.prol.loopexit

scalar.ph74.prol.loopexit:                        ; preds = %scalar.ph74.prol, %scalar.ph74.preheader
  %indvars.iv212.i.unr = phi i64 [ %indvars.iv212.i.ph, %scalar.ph74.preheader ], [ %indvars.iv.next213.i.prol, %scalar.ph74.prol ]
  %i.ex = icmp eq i64 %indvars.iv212.i.ph, %i.dg
  br i1 %i.ex, label %._crit_edge.i, label %scalar.ph74

.preheader172.i:                                  ; preds = %._crit_edge.i, %.preheader174.i, %.preheader175.i
  %i.ey = icmp sgt i32 %i.bo, 0
  br i1 %i.ey, label %.lr.ph202.i, label %_ZN2cv6stereoL13prefilterNormERKNS_3MatERS1_iiPh.exit

.lr.ph202.i:                                      ; preds = %.preheader172.i
  %i.ez = xor i32 %i.z, -1                        ; 3 uses
  %i.fa = add nsw i32 %i.bo, -1                   ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.fc = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %.not169184.i = icmp slt i32 %i.u, -1
  %i.fd = shl nuw i64 %.sroa.0.0.insert.ext.i.i, 32
  %sext.i = add i64 %i.fd, -4294967296
  %i.fe = ashr exact i64 %sext.i, 30
  %i.ff = getelementptr inbounds i8, ptr %i.ah, i64 %i.fe ; 3 uses
  %.not170188.i = icmp slt i32 %i.u, 2
  %i.fg = add i32 %i.bn, -1                       ; 3 uses
  %i.fh = icmp sgt i32 %i.bn, 2
  %i.fi = sext i32 %i.bn to i64
  %i.fj = sext i32 %i.z to i64
  %sext253.i = shl i64 %i.aq, 32
  %i.fk = ashr exact i64 %sext253.i, 32
  %wide.trip.count245.i = zext nneg i32 %i.bo to i64
  %wide.trip.count230.i = zext i32 %i.aa to i64   ; 4 uses
  %invariant.gep256.i = getelementptr [4 x i8], ptr %i.ah, i64 %i.fi ; 3 uses
  %wide.trip.count240.i = zext nneg i32 %i.fg to i64
  %invariant.gep258.i = getelementptr [4 x i8], ptr %i.ah, i64 %i.fj
  %.pre.i = add nsw i32 %i.fg, %i.z
  %.pre247.i = sext i32 %.pre.i to i64
  %i.fl = shl nuw nsw i64 %.sroa.0.0.insert.ext.i.i, 2
  %scevgep = getelementptr i8, ptr %i.ah, i64 %i.fl ; 2 uses
  %scevgep42 = getelementptr i8, ptr %i.ao, i64 %.sroa.0.0.insert.ext.i.i
  %narrow = xor i32 %i.z, -1
  %scevgep46.a = getelementptr i8, ptr %i.ao, i64 %.sroa.0.0.insert.ext.i.i
  %min.iters.check52 = icmp ult i32 %i.bn, 8
  %n.vec54 = and i64 %.sroa.0.0.insert.ext.i.i, 2147483640 ; 3 uses
  %cmp.n65 = icmp eq i64 %n.vec54, %.sroa.0.0.insert.ext.i.i
  %xtraiter151 = and i64 %.sroa.0.0.insert.ext.i.i, 1
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  %i.fm = add nsw i64 %.sroa.0.0.insert.ext.i.i, -1
  %xtraiter154 = and i64 %wide.trip.count230.i, 1
  %.off = add i32 %i.u, 1
  %i.fn = icmp ult i32 %.off, 3
  %unroll_iter = and i64 %wide.trip.count230.i, 4294967294
  %lcmp.mod155.not = icmp eq i64 %xtraiter154, 0
  %lcmp.mod156 = trunc i32 %i.aa to i1
  %i.fo = add nsw i64 %wide.trip.count230.i, -1   ; 2 uses
  %min.iters.check = icmp ult i32 %i.aa, 9
  %n.vec = and i64 %i.fo, -8                      ; 3 uses
  %i.fp = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.fo, %n.vec
  br label %bb.k

scalar.ph74:                                      ; preds = %scalar.ph74.prol.loopexit, %scalar.ph74
  %indvars.iv212.i = phi i64 [ %indvars.iv.next213.i.1, %scalar.ph74 ], [ %indvars.iv212.i.unr, %scalar.ph74.prol.loopexit ] ; 4 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv212.i ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !29
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv212.i
  %i.fs = load i8, ptr %gep.i, align 1, !tbaa !28
  %i.ft = zext i8 %i.fs to i32
  %i.fu = add nsw i32 %i.fr, %i.ft
  %i.fv = and i32 %i.fu, 65535
  store i32 %i.fv, ptr %i.fq, align 4, !tbaa !29
  %indvars.iv.next213.i = add nuw nsw i64 %indvars.iv212.i, 1 ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next213.i ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !29
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.next213.i
  %i.fy = load i8, ptr %gep.i.1, align 1, !tbaa !28
  %i.fz = zext i8 %i.fy to i32
  %i.ga = add nsw i32 %i.fx, %i.fz
  %i.gb = and i32 %i.ga, 65535
  store i32 %i.gb, ptr %i.fw, align 4, !tbaa !29
  %indvars.iv.next213.i.1 = add nuw nsw i64 %indvars.iv212.i, 2 ; 2 uses
  %exitcond216.not.i.1 = icmp eq i64 %indvars.iv.next213.i.1, %.sroa.0.0.insert.ext.i.i
  br i1 %exitcond216.not.i.1, label %._crit_edge.i, label %scalar.ph74, !llvm.loop !203

._crit_edge.i:                                    ; preds = %scalar.ph74.prol.loopexit, %scalar.ph74, %middle.block85
  %indvars.iv.next218.i = add nuw nsw i64 %indvars.iv217.i, 1 ; 2 uses
  %exitcond221.not.i = icmp eq i64 %indvars.iv.next218.i, %wide.trip.count220.i
  br i1 %exitcond221.not.i, label %.preheader172.i, label %.preheader173.i, !llvm.loop !204

bb.k:                                             ; preds = %._crit_edge198.i, %.lr.ph202.i
  %indvars.iv242.i = phi i64 [ 0, %.lr.ph202.i ], [ %indvars.iv.next243.i, %._crit_edge198.i ] ; 6 uses
  %i.gc = trunc i64 %indvars.iv242.i to i32
  %i.gd = add i32 %i.gc, %narrow
  %smax = tail call i32 @llvm.smax.i32(i32 %i.gd, i32 0)
  %i.ge = mul i32 %smax, %i.ar
  %i.gf = sext i32 %i.ge to i64
  %scevgep44.a = getelementptr i8, ptr %scevgep42, i64 %i.gf
  %i.gg = trunc i64 %indvars.iv242.i to i32
  %i.gh = add i32 %i.z, %i.gg
  %smin = tail call i32 @llvm.smin.i32(i32 %i.gh, i32 %i.fa)
  %i.gi = mul i32 %smin, %i.ar
  %i.gj = sext i32 %i.gi to i64                   ; 2 uses
  %scevgep45 = getelementptr i8, ptr %i.ao, i64 %i.gj
  %scevgep47 = getelementptr i8, ptr %scevgep46.a, i64 %i.gj
  %i.gk = trunc i64 %indvars.iv242.i to i32       ; 3 uses
  %i.gl = add i32 %i.gk, %i.ez
  %i.gm = tail call i32 @llvm.smax.i32(i32 %i.gl, i32 0)
  %i.gn = mul i32 %i.gm, %i.ar
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr i8, ptr %i.ao, i64 %i.go  ; 5 uses
  %i.gq = add i32 %i.z, %i.gk
  %..i = tail call i32 @llvm.smin.i32(i32 %i.gq, i32 %i.fa)
  %i.gr = mul nsw i32 %..i, %i.ar
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds i8, ptr %i.ao, i64 %i.gs ; 4 uses
  %i.gu = tail call i32 @llvm.smax.i32(i32 %i.gk, i32 1)
  %i.gv = add nsw i32 %i.gu, -1
  %i.gw = mul nsw i32 %i.gv, %i.ar
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds i8, ptr %i.ao, i64 %i.gx ; 3 uses
  %i.gz = mul nsw i64 %indvars.iv242.i, %i.fk
  %i.ha = getelementptr inbounds i8, ptr %i.ao, i64 %i.gz ; 5 uses
  %indvars.iv.next243.i = add nuw nsw i64 %indvars.iv242.i, 1 ; 3 uses
  %i.hb = trunc nuw nsw i64 %indvars.iv.next243.i to i32
  %i.hc = tail call i32 @llvm.smin.i32(i32 %i.hb, i32 %i.fa)
  %i.hd = mul nsw i32 %i.hc, %i.ar
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds i8, ptr %i.ao, i64 %i.he ; 3 uses
  %i.hg = load ptr, ptr %i.fb, align 8, !tbaa !101
  %i.hh = load i64, ptr %i.fc, align 8, !tbaa !128
  %i.hi = mul i64 %i.hh, %indvars.iv242.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hi ; 3 uses
  br i1 %i.cd, label %.lr.ph183.i.preheader, label %.preheader.i

.lr.ph183.i.preheader:                            ; preds = %bb.k
  br i1 %min.iters.check52, label %.lr.ph183.i.preheader141, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph183.i.preheader
  %bound0 = icmp ugt ptr %scevgep44.a, %i.ah
  %bound1 = icmp ult ptr %i.gp, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound048 = icmp ugt ptr %scevgep47, %i.ah
  %bound149 = icmp ult ptr %scevgep45, %scevgep
  %found.conflict50 = and i1 %bound048, %bound149
  %conflict.rdx = or i1 %found.conflict, %found.conflict50
  br i1 %conflict.rdx, label %.lr.ph183.i.preheader141, label %vector.body55

vector.body55:                                    ; preds = %vector.memcheck, %vector.body55
  %index56 = phi i64 [ %index.next63, %vector.body55 ], [ 0, %vector.memcheck ] ; 4 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index56 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 2 uses
  %wide.load57.a = load <4 x i32>, ptr %i.hk, align 32, !tbaa !29, !alias.scope !205, !noalias !208
  %wide.load58.a = load <4 x i32>, ptr %i.hl, align 16, !tbaa !29, !alias.scope !205, !noalias !208
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gt, i64 %index56 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  %wide.load59.a = load <4 x i8>, ptr %i.hm, align 1, !tbaa !28, !alias.scope !211
  %wide.load60.a = load <4 x i8>, ptr %i.hn, align 1, !tbaa !28, !alias.scope !211
  %i.ho = zext <4 x i8> %wide.load59.a to <4 x i32>
  %i.hp = zext <4 x i8> %wide.load60.a to <4 x i32>
  %i.hq = add nsw <4 x i32> %wide.load57.a, %i.ho
  %i.hr = add nsw <4 x i32> %wide.load58.a, %i.hp
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gp, i64 %index56 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %wide.load61.a = load <4 x i8>, ptr %i.hs, align 1, !tbaa !28, !alias.scope !212
  %wide.load62 = load <4 x i8>, ptr %i.ht, align 1, !tbaa !28, !alias.scope !212
  %i.hu = zext <4 x i8> %wide.load61.a to <4 x i32>
  %i.hv = zext <4 x i8> %wide.load62 to <4 x i32>
  %i.hw = sub <4 x i32> %i.hq, %i.hu
  %i.hx = sub <4 x i32> %i.hr, %i.hv
  %i.hy = and <4 x i32> %i.hw, splat (i32 65535)
  %i.hz = and <4 x i32> %i.hx, splat (i32 65535)
  store <4 x i32> %i.hy, ptr %i.hk, align 32, !tbaa !29, !alias.scope !205, !noalias !208
  store <4 x i32> %i.hz, ptr %i.hl, align 16, !tbaa !29, !alias.scope !205, !noalias !208
  %index.next63 = add nuw i64 %index56, 8         ; 2 uses
  %i.ia = icmp eq i64 %index.next63, %n.vec54
  br i1 %i.ia, label %middle.block64, label %vector.body55, !llvm.loop !213

middle.block64:                                   ; preds = %vector.body55
  br i1 %cmp.n65, label %.preheader.i, label %.lr.ph183.i.preheader141

.lr.ph183.i.preheader141:                         ; preds = %vector.memcheck, %.lr.ph183.i.preheader, %middle.block64
  %indvars.iv222.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph183.i.preheader ], [ %n.vec54, %middle.block64 ] ; 6 uses
  br i1 %lcmp.mod152.not, label %.lr.ph183.i.prol.loopexit, label %.lr.ph183.i.prol

.lr.ph183.i.prol:                                 ; preds = %.lr.ph183.i.preheader141
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv222.i.ph ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 32, !tbaa !29
  %i.id = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv222.i.ph
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !28
  %i.if = zext i8 %i.ie to i32
  %i.ig = add nsw i32 %i.ic, %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv222.i.ph
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !28
  %i.ij = zext i8 %i.ii to i32
  %i.ik = sub i32 %i.ig, %i.ij
  %i.il = and i32 %i.ik, 65535
  store i32 %i.il, ptr %i.ib, align 32, !tbaa !29
  %indvars.iv.next223.i.prol = or disjoint i64 %indvars.iv222.i.ph, 1
  br label %.lr.ph183.i.prol.loopexit

.lr.ph183.i.prol.loopexit:                        ; preds = %.lr.ph183.i.prol, %.lr.ph183.i.preheader141
  %indvars.iv222.i.unr = phi i64 [ %indvars.iv222.i.ph, %.lr.ph183.i.preheader141 ], [ %indvars.iv.next223.i.prol, %.lr.ph183.i.prol ]
  %i.im = icmp eq i64 %indvars.iv222.i.ph, %i.fm
  br i1 %i.im, label %.preheader.i, label %.lr.ph183.i

.preheader.i:                                     ; preds = %.lr.ph183.i.prol.loopexit, %.lr.ph183.i, %middle.block64, %bb.k
  br i1 %.not169184.i, label %._crit_edge187.thread.i, label %.lr.ph186.i.preheader

.lr.ph186.i.preheader:                            ; preds = %.preheader.i
  br i1 %i.fn, label %.lr.ph186.i.epil.preheader, label %.lr.ph186.i

._crit_edge187.thread.i:                          ; preds = %.preheader.i
  %i.in = load i32, ptr %i.ah, align 32, !tbaa !29
  %i.io = mul nsw i32 %i.in, %i.aa
  br label %._crit_edge193.i

.lr.ph183.i:                                      ; preds = %.lr.ph183.i.prol.loopexit, %.lr.ph183.i
  %indvars.iv222.i = phi i64 [ %indvars.iv.next223.i.1, %.lr.ph183.i ], [ %indvars.iv222.i.unr, %.lr.ph183.i.prol.loopexit ] ; 5 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv222.i ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !29
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv222.i
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !28
  %i.it = zext i8 %i.is to i32
  %i.iu = add nsw i32 %i.iq, %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv222.i
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !28
  %i.ix = zext i8 %i.iw to i32
  %i.iy = sub i32 %i.iu, %i.ix
  %i.iz = and i32 %i.iy, 65535
  store i32 %i.iz, ptr %i.ip, align 4, !tbaa !29
  %indvars.iv.next223.i = add nuw nsw i64 %indvars.iv222.i, 1 ; 3 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next223.i ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !29
  %i.jc = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.next223.i
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !28
  %i.je = zext i8 %i.jd to i32
  %i.jf = add nsw i32 %i.jb, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv.next223.i
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !28
  %i.ji = zext i8 %i.jh to i32
  %i.jj = sub i32 %i.jf, %i.ji
  %i.jk = and i32 %i.jj, 65535
  store i32 %i.jk, ptr %i.ja, align 4, !tbaa !29
  %indvars.iv.next223.i.1 = add nuw nsw i64 %indvars.iv222.i, 2 ; 2 uses
  %exitcond226.not.i.1 = icmp eq i64 %indvars.iv.next223.i.1, %.sroa.0.0.insert.ext.i.i
  br i1 %exitcond226.not.i.1, label %.preheader.i, label %.lr.ph183.i, !llvm.loop !214

.lr.ph186.i:                                      ; preds = %.lr.ph186.i.preheader, %.lr.ph186.i
  %indvars.iv227.i = phi i64 [ %indvars.iv.next228.i.1, %.lr.ph186.i ], [ 0, %.lr.ph186.i.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph186.i ], [ 0, %.lr.ph186.i.preheader ]
  %i.jl = load i32, ptr %i.ah, align 32, !tbaa !29
  %i.jm = xor i64 %indvars.iv227.i, -1
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.jm
  store i32 %i.jl, ptr %i.jn, align 4, !tbaa !29
  %i.jo = load i32, ptr %i.ff, align 4, !tbaa !29
  %gep257.i = getelementptr [4 x i8], ptr %invariant.gep256.i, i64 %indvars.iv227.i
  store i32 %i.jo, ptr %gep257.i, align 4, !tbaa !29
  %i.jp = load i32, ptr %i.ah, align 32, !tbaa !29
  %i.jq = xor i64 %indvars.iv227.i, -2
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.jq
  store i32 %i.jp, ptr %i.jr, align 8, !tbaa !29
  %i.js = load i32, ptr %i.ff, align 4, !tbaa !29
  %i.jt = getelementptr [4 x i8], ptr %invariant.gep256.i, i64 %indvars.iv227.i
  %gep257.i.1 = getelementptr i8, ptr %i.jt, i64 4
  store i32 %i.js, ptr %gep257.i.1, align 4, !tbaa !29
  %indvars.iv.next228.i.1 = add nuw nsw i64 %indvars.iv227.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge187.i.unr-lcssa, label %.lr.ph186.i, !llvm.loop !215

._crit_edge187.i.unr-lcssa:                       ; preds = %.lr.ph186.i
  br i1 %lcmp.mod155.not, label %._crit_edge187.i, label %.lr.ph186.i.epil.preheader

.lr.ph186.i.epil.preheader:                       ; preds = %._crit_edge187.i.unr-lcssa, %.lr.ph186.i.preheader
  %indvars.iv227.i.epil.init = phi i64 [ 0, %.lr.ph186.i.preheader ], [ %indvars.iv.next228.i.1, %._crit_edge187.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod156)
  %i.ju = load i32, ptr %i.ah, align 32, !tbaa !29
  %i.jv = xor i64 %indvars.iv227.i.epil.init, -1
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.jv
  store i32 %i.ju, ptr %i.jw, align 4, !tbaa !29
  %i.jx = load i32, ptr %i.ff, align 4, !tbaa !29
  %gep257.i.epil = getelementptr [4 x i8], ptr %invariant.gep256.i, i64 %indvars.iv227.i.epil.init
  store i32 %i.jx, ptr %gep257.i.epil, align 4, !tbaa !29
  br label %._crit_edge187.i

._crit_edge187.i:                                 ; preds = %._crit_edge187.i.unr-lcssa, %.lr.ph186.i.epil.preheader
  %i.jy = load i32, ptr %i.ah, align 32, !tbaa !29
  %i.jz = mul nsw i32 %i.jy, %i.aa                ; 3 uses
  br i1 %.not170188.i, label %._crit_edge193.i, label %.lr.ph192.i.preheader

.lr.ph192.i.preheader:                            ; preds = %._crit_edge187.i
  br i1 %min.iters.check, label %.lr.ph192.i.preheader140, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph192.i.preheader
  %i.ka = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.jz, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ka, %vector.ph ], [ %i.ke, %vector.body ]
  %vec.phi40 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.kf, %vector.body ]
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 20
  %wide.load = load <4 x i32>, ptr %i.kc, align 4, !tbaa !29
  %wide.load41 = load <4 x i32>, ptr %i.kd, align 4, !tbaa !29
  %i.ke = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.kf = add <4 x i32> %wide.load41, %vec.phi40  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kg = icmp eq i64 %index.next, %n.vec
  br i1 %i.kg, label %middle.block, label %vector.body, !llvm.loop !216

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.kf, %i.ke
  %i.kh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge193.i, label %.lr.ph192.i.preheader140

.lr.ph192.i.preheader140:                         ; preds = %.lr.ph192.i.preheader, %middle.block
  %indvars.iv232.i.ph = phi i64 [ 1, %.lr.ph192.i.preheader ], [ %i.fp, %middle.block ]
  %.0190.i.ph = phi i32 [ %i.jz, %.lr.ph192.i.preheader ], [ %i.kh, %middle.block ]
  br label %.lr.ph192.i

.lr.ph192.i:                                      ; preds = %.lr.ph192.i.preheader140, %.lr.ph192.i
  %indvars.iv232.i = phi i64 [ %indvars.iv.next233.i, %.lr.ph192.i ], [ %indvars.iv232.i.ph, %.lr.ph192.i.preheader140 ] ; 2 uses
  %.0190.i = phi i32 [ %i.kk, %.lr.ph192.i ], [ %.0190.i.ph, %.lr.ph192.i.preheader140 ]
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv232.i
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !29
  %i.kk = add nsw i32 %i.kj, %.0190.i             ; 2 uses
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %exitcond236.not.i = icmp eq i64 %indvars.iv.next233.i, %wide.trip.count230.i
  br i1 %exitcond236.not.i, label %._crit_edge193.i, label %.lr.ph192.i, !llvm.loop !217

._crit_edge193.i:                                 ; preds = %.lr.ph192.i, %middle.block, %._crit_edge187.i, %._crit_edge187.thread.i
  %.0.lcssa.i = phi i32 [ %i.jz, %._crit_edge187.i ], [ %i.io, %._crit_edge187.thread.i ], [ %i.kh, %middle.block ], [ %i.kk, %.lr.ph192.i ] ; 3 uses
  %i.kl = load i8, ptr %i.ha, align 1, !tbaa !28
  %i.km = zext i8 %i.kl to i32
  %i.kn = mul nuw nsw i32 %i.km, 5
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ha, i64 1
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !28
  %i.kq = zext i8 %i.kp to i32
end_hunk_0
