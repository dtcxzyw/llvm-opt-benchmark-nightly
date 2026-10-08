Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebufalgo_compare?download=true
inline.NumInlined: 8095
inline.NumDeleted: 2632
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN11OpenImageIO4v3_112ImageBufAlgo14nonzero_regionERKNS0_8ImageBufENS0_3ROIEi:bb.a
.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph56.i
  %.lcssa340356 = phi i32 [ %.lcssa340.lcssa370, %.lr.ph56.i ], [ %i.bl, %._crit_edge.i ]
  %.lcssa336352 = phi i32 [ %.lcssa336.lcssa368, %.lr.ph56.i ], [ %i.bm, %._crit_edge.i ]
  %storemerge58.i332.lcssa350 = phi i32 [ %storemerge58.i332.lcssa.lcssa366, %.lr.ph56.i ], [ %storemerge58.i332, %._crit_edge.i ]
  %.lcssa330348 = phi i32 [ %.lcssa330.lcssa364, %.lr.ph56.i ], [ %i.bn, %._crit_edge.i ]
  %storemerge254.i326.lcssa346 = phi i32 [ %storemerge254.i326.lcssa.lcssa362, %.lr.ph56.i ], [ %storemerge254.i326, %._crit_edge.i ]
  %.lcssa324344 = phi i32 [ %.lcssa324.lcssa360, %.lr.ph56.i ], [ %i.bo, %._crit_edge.i ]
  %storemerge353.i320.lcssa342 = phi i32 [ %storemerge353.i320.lcssa.lcssa358, %.lr.ph56.i ], [ %storemerge353.i320, %._crit_edge.i ]
  %i.aq = phi i32 [ %i.aj, %.lr.ph56.i ], [ %i.bp, %._crit_edge.i ]
  %i.ar = phi i32 [ %i.ak, %.lr.ph56.i ], [ %i.bq, %._crit_edge.i ]
  %i.as = phi i32 [ %i.al, %.lr.ph56.i ], [ %i.br, %._crit_edge.i ]
  %i.at = phi i32 [ %i.am, %.lr.ph56.i ], [ %i.bs, %._crit_edge.i ]
  %i.au = phi i32 [ %i.an, %.lr.ph56.i ], [ %i.bt, %._crit_edge.i ]
  %i.av = phi i32 [ %i.ao, %.lr.ph56.i ], [ %i.bu, %._crit_edge.i ]
  %storemerge254.i = phi i32 [ %.sroa.7.0..sroa_idx.promoted, %.lr.ph56.i ], [ %i.aw, %._crit_edge.i ] ; 5 uses
  %i.aw = add i32 %storemerge254.i, 1             ; 5 uses
  br label %bb.h

._crit_edge.i:                                    ; preds = %bb.l
  %exitcond66.not.i = icmp eq i32 %i.aw, %.sroa.8.0..sroa_idx.promoted
  br i1 %exitcond66.not.i, label %._crit_edge57.i, label %.lr.ph.i, !llvm.loop !665

bb.h:                                             ; preds = %bb.l, %.lr.ph.i
  %i.ax = phi i32 [ %.lcssa340356, %.lr.ph.i ], [ %i.bl, %bb.l ] ; 3 uses
  %i.ay = phi i32 [ %.lcssa336352, %.lr.ph.i ], [ %i.bm, %bb.l ] ; 2 uses
  %storemerge58.i333 = phi i32 [ %storemerge58.i332.lcssa350, %.lr.ph.i ], [ %storemerge58.i332, %bb.l ] ; 2 uses
  %i.az = phi i32 [ %.lcssa330348, %.lr.ph.i ], [ %i.bn, %bb.l ] ; 2 uses
  %storemerge254.i327 = phi i32 [ %storemerge254.i326.lcssa346, %.lr.ph.i ], [ %storemerge254.i326, %bb.l ] ; 2 uses
  %i.ba = phi i32 [ %.lcssa324344, %.lr.ph.i ], [ %i.bo, %bb.l ] ; 2 uses
  %storemerge353.i321 = phi i32 [ %storemerge353.i320.lcssa342, %.lr.ph.i ], [ %storemerge353.i320, %bb.l ] ; 2 uses
  %i.bb = phi i32 [ %i.aq, %.lr.ph.i ], [ %i.bp, %bb.l ] ; 2 uses
  %i.bc = phi i32 [ %i.ar, %.lr.ph.i ], [ %i.bq, %bb.l ] ; 2 uses
  %i.bd = phi i32 [ %i.as, %.lr.ph.i ], [ %i.br, %bb.l ] ; 2 uses
  %i.be = phi i32 [ %i.at, %.lr.ph.i ], [ %i.bs, %bb.l ] ; 2 uses
  %i.bf = phi i32 [ %i.au, %.lr.ph.i ], [ %i.bt, %bb.l ] ; 2 uses
  %i.bg = phi i32 [ %i.av, %.lr.ph.i ], [ %i.bu, %bb.l ] ; 3 uses
  %storemerge353.i = phi i32 [ %.sroa.0178.0, %.lr.ph.i ], [ %.pre-phi.i, %bb.l ] ; 7 uses
  %i.bh = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf12deep_samplesEiii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %storemerge353.i, i32 noundef %storemerge254.i, i32 noundef %storemerge58.i)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.h
  %.not.i74 = icmp eq i32 %i.bh, 0
  br i1 %.not.i74, label %._crit_edge68.i, label %bb.i

._crit_edge68.i:                                  ; preds = %.noexc
  %.pre.i = add i32 %storemerge353.i, 1
  br label %bb.l

bb.i:                                             ; preds = %.noexc
  %.not52.i = icmp eq i32 %i.bg, -2147483648
  br i1 %.not52.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bi = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc75 unwind label %.loopexit

.noexc75:                                         ; preds = %bb.j
  %i.bj = add i32 %storemerge353.i, 1             ; 3 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %.sroa.speculated22.i = call i32 @llvm.smin.i32(i32 %i.bg, i32 %storemerge353.i) ; 2 uses
  %i.bk = add i32 %storemerge353.i, 1             ; 2 uses
  %.sroa.speculated15.i = call i32 @llvm.smax.i32(i32 %i.bk, i32 %i.bf) ; 2 uses
  %.sroa.speculated33.i = call i32 @llvm.smin.i32(i32 %i.be, i32 %storemerge254.i) ; 2 uses
  %.sroa.speculated11.i = call i32 @llvm.smax.i32(i32 %i.aw, i32 %i.bd) ; 2 uses
  %.sroa.speculated45.i = call i32 @llvm.smin.i32(i32 %i.bc, i32 %storemerge58.i) ; 2 uses
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.ap, i32 %i.bb) ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc75, %._crit_edge68.i
  %i.bl = phi i32 [ %i.ax, %._crit_edge68.i ], [ %i.ax, %bb.k ], [ %i.bi, %.noexc75 ] ; 4 uses
  %i.bm = phi i32 [ %i.ay, %._crit_edge68.i ], [ %.sroa.speculated.i, %bb.k ], [ %i.ap, %.noexc75 ] ; 4 uses
  %storemerge58.i332 = phi i32 [ %storemerge58.i333, %._crit_edge68.i ], [ %.sroa.speculated45.i, %bb.k ], [ %storemerge58.i, %.noexc75 ] ; 4 uses
  %i.bn = phi i32 [ %i.az, %._crit_edge68.i ], [ %.sroa.speculated11.i, %bb.k ], [ %i.aw, %.noexc75 ] ; 4 uses
  %storemerge254.i326 = phi i32 [ %storemerge254.i327, %._crit_edge68.i ], [ %.sroa.speculated33.i, %bb.k ], [ %storemerge254.i, %.noexc75 ] ; 4 uses
  %i.bo = phi i32 [ %i.ba, %._crit_edge68.i ], [ %.sroa.speculated15.i, %bb.k ], [ %i.bj, %.noexc75 ] ; 4 uses
  %storemerge353.i320 = phi i32 [ %storemerge353.i321, %._crit_edge68.i ], [ %.sroa.speculated22.i, %bb.k ], [ %storemerge353.i, %.noexc75 ] ; 4 uses
  %.pre-phi.i = phi i32 [ %.pre.i, %._crit_edge68.i ], [ %i.bk, %bb.k ], [ %i.bj, %.noexc75 ] ; 2 uses
  %i.bp = phi i32 [ %i.bb, %._crit_edge68.i ], [ %.sroa.speculated.i, %bb.k ], [ %i.ap, %.noexc75 ] ; 3 uses
  %i.bq = phi i32 [ %i.bc, %._crit_edge68.i ], [ %.sroa.speculated45.i, %bb.k ], [ %storemerge58.i, %.noexc75 ] ; 3 uses
  %i.br = phi i32 [ %i.bd, %._crit_edge68.i ], [ %.sroa.speculated11.i, %bb.k ], [ %i.aw, %.noexc75 ] ; 3 uses
  %i.bs = phi i32 [ %i.be, %._crit_edge68.i ], [ %.sroa.speculated33.i, %bb.k ], [ %storemerge254.i, %.noexc75 ] ; 3 uses
  %i.bt = phi i32 [ %i.bf, %._crit_edge68.i ], [ %.sroa.speculated15.i, %bb.k ], [ %i.bj, %.noexc75 ] ; 3 uses
  %i.bu = phi i32 [ %i.bg, %._crit_edge68.i ], [ %.sroa.speculated22.i, %bb.k ], [ %storemerge353.i, %.noexc75 ] ; 3 uses
  %exitcond.not.i = icmp eq i32 %.pre-phi.i, %.sroa.6.0
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.h, !llvm.loop !666

bb.m:                                             ; preds = %bb.a
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit123

.loopexit:                                        ; preds = %bb.h, %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i32 %storemerge353.i321, ptr %0, align 4
  store i32 %i.ba, ptr %i.ab, align 4
  store i32 %storemerge254.i327, ptr %i.af, align 4
  store i32 %i.az, ptr %i.ag, align 4
  store i32 %storemerge58.i333, ptr %i.ah, align 4
  store i32 %i.ay, ptr %i.ai, align 4
  store i32 0, ptr %.sroa.9.0..sroa_idx.i, align 4
  store i32 %i.ax, ptr %.sroa.10.0..sroa_idx.i, align 4
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit123

.loopexit.split-lp:                               ; preds = %_ZN11OpenImageIO4v3_116roi_intersectionERKNS0_3ROIES3_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit123

bb.n:                                             ; preds = %bb.f
  %i.bw = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.o unwind label %bb.x       ; 3 uses

bb.o:                                             ; preds = %bb.n
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  %i.by = icmp slt i32 %i.bw, 0
  br i1 %i.by, label %bb.p, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.80) #34
          to label %.noexc76 unwind label %bb.y

.noexc76:                                         ; preds = %bb.p
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.o
  %.not.i.i.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bz = shl nuw nsw i64 %i.bx, 2                ; 3 uses
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #31
          to label %.noexc77 unwind label %bb.y   ; 4 uses

.noexc77:                                         ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ca, i8 0, i64 %i.bz, i1 false), !tbaa !47
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bx
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bz
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit:            ; preds = %.noexc77, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0164.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ca, %.noexc77 ] ; 18 uses
  %.sroa.21.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ce, %.noexc77 ] ; 2 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cd, %.noexc77 ] ; 6 uses
  %i.cf = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.r unwind label %bb.z       ; 3 uses

bb.r:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit
  %i.cg = sext i32 %i.cf to i64                   ; 2 uses
  %i.ch = icmp slt i32 %i.cf, 0
  br i1 %i.ch, label %bb.s, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i78

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.80) #34
          to label %.noexc85 unwind label %bb.aa

.noexc85:                                         ; preds = %bb.s
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i78: ; preds = %bb.r
  %.not.i.i.i.i79 = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i.i.i79, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit87, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i78
  %i.ci = shl nuw nsw i64 %i.cg, 2                ; 3 uses
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #31
          to label %.noexc86 unwind label %bb.aa  ; 4 uses

.noexc86:                                         ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cj, i8 0, i64 %i.ci, i1 false), !tbaa !47
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.cg
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ci
  %i.cm = ptrtoint ptr %i.ck to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit87

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit87:          ; preds = %.noexc86, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i78
  %.sroa.0136.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i78 ], [ %i.cj, %.noexc86 ] ; 36 uses
  %.sroa.33.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i78 ], [ %i.cm, %.noexc86 ] ; 2 uses
  %.0.i.i.i.i.i.i.i83 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i78 ], [ %i.cl, %.noexc86 ] ; 18 uses
  %i.cn = icmp slt i32 %.sroa.7.0..sroa_idx.promoted, %.sroa.8.0..sroa_idx.promoted
  br i1 %i.cn, label %.lr.ph, label %.loopexit263

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit87
  %i.co = load i64, ptr %2, align 8               ; 3 uses
  %i.cp = ptrtoint ptr %.0.i.i.i.i.i.i.i83 to i64
  %i.cq = ptrtoint ptr %.sroa.0136.0 to i64
  %i.cr = sub i64 %i.cp, %i.cq                    ; 2 uses
  %i.cs = ashr exact i64 %i.cr, 2                 ; 2 uses
  store i64 %i.co, ptr %7, align 8, !tbaa !45
  %.sroa.528.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.sroa.631.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.ct = ptrtoint ptr %.sroa.0164.0 to i64
  %i.cu = sub i64 %.0.i.i.i.i.i.i.i, %i.ct
  %i.cv = icmp eq i64 %i.cr, %i.cu
  %.not9.i.i.i.i.i.i = icmp eq ptr %.sroa.0136.0, %.0.i.i.i.i.i.i.i83
  %.fr = freeze i1 %i.cv
  %i.cw = lshr i64 %i.co, 32
  %i.cx = trunc nuw i64 %i.cw to i32              ; 4 uses
  %i.cy = trunc i64 %i.co to i32                  ; 4 uses
  br i1 %.fr, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.cz = add nsw i32 %.sroa.8.0..sroa_idx.promoted, -1
  store i32 %i.cz, ptr %.sroa.528.0..sroa_idx29, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.631.0..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.gep454, i64 20, i1 false)
  %i.da = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0136.0, i64 %i.cs, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %7, i32 noundef %3)
          to label %.loopexit263 unwind label %.split.us ; 0 uses

.split.us:                                        ; preds = %.lr.ph.split.us
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.lr.ph.split:                                     ; preds = %.lr.ph, %.loopexit262
  %i.dc = phi i32 [ %i.dd, %.loopexit262 ], [ %.sroa.8.0..sroa_idx.promoted, %.lr.ph ] ; 3 uses
  %i.dd = add nsw i32 %i.dc, -1                   ; 4 uses
  store i32 %i.dd, ptr %.sroa.528.0..sroa_idx29, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.631.0..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.gep454, i64 20, i1 false)
  %i.de = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0136.0, i64 %i.cs, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %7, i32 noundef %3)
          to label %bb.u unwind label %.split

bb.u:                                             ; preds = %.lr.ph.split
  br i1 %i.de, label %bb.v, label %.loopexit263

bb.v:                                             ; preds = %bb.u
  br i1 %.not9.i.i.i.i.i.i, label %.loopexit262, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.v, %bb.w
  %.011.i.i.i.i.i.i = phi ptr [ %i.dj, %bb.w ], [ %.sroa.0164.0, %bb.v ] ; 2 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.di, %bb.w ], [ %.sroa.0136.0, %bb.v ] ; 2 uses
  %i.df = load float, ptr %.0810.i.i.i.i.i.i, align 4, !tbaa !47
  %i.dg = load float, ptr %.011.i.i.i.i.i.i, align 4, !tbaa !47
  %i.dh = fcmp une float %i.df, %i.dg
  br i1 %i.dh, label %.loopexit263, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.di, %.0.i.i.i.i.i.i.i83
  br i1 %.not.i.i.i.i.i.i, label %.loopexit262, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !667

bb.x:                                             ; preds = %bb.n
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit123

bb.y:                                             ; preds = %bb.q, %bb.p
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit123

bb.z:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit121

bb.aa:                                            ; preds = %bb.t, %bb.s
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit121

.split:                                           ; preds = %.lr.ph.split
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit262:                                     ; preds = %bb.w, %bb.v
  store i32 %i.dd, ptr %.sroa.gep454, align 4, !tbaa !102
  %i.dp = icmp slt i32 %.sroa.7.0..sroa_idx.promoted, %i.dd
  br i1 %i.dp, label %.lr.ph.split, label %.loopexit263, !llvm.loop !668

.loopexit263:                                     ; preds = %.loopexit262, %bb.u, %.lr.ph.i.i.i.i.i.i, %.lr.ph.split.us, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit87
  %.promoted = phi i32 [ %i.cy, %.lr.ph.split.us ], [ %.sroa.0178.0, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit87 ], [ %i.cy, %.lr.ph.i.i.i.i.i.i ], [ %i.cy, %bb.u ], [ %i.cy, %.loopexit262 ] ; 6 uses
  %.sroa.6.0..sroa_idx180.promoted = phi i32 [ %i.cx, %.lr.ph.split.us ], [ %.sroa.6.0, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit87 ], [ %i.cx, %.lr.ph.i.i.i.i.i.i ], [ %i.cx, %bb.u ], [ %i.cx, %.loopexit262 ] ; 5 uses
  %i.dq = phi i32 [ %.sroa.8.0..sroa_idx.promoted, %.lr.ph.split.us ], [ %.sroa.8.0..sroa_idx.promoted, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit87 ], [ %i.dc, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.7.0..sroa_idx.promoted, %.loopexit262 ], [ %i.dc, %bb.u ] ; 2 uses
  %i.dr = icmp slt i32 %.sroa.7.0..sroa_idx.promoted, %i.dq
  br i1 %i.dr, label %.lr.ph283, label %.loopexit260

.lr.ph283:                                        ; preds = %.loopexit263
  %i.ds = ptrtoint ptr %.0.i.i.i.i.i.i.i83 to i64
  %i.dt = ptrtoint ptr %.sroa.0136.0 to i64
  %i.du = sub i64 %i.ds, %i.dt                    ; 2 uses
  %i.dv = ashr exact i64 %i.du, 2                 ; 2 uses
  %.sroa.522.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %.sroa.625.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dw = ptrtoint ptr %.sroa.0164.0 to i64
  %i.dx = sub i64 %.0.i.i.i.i.i.i.i, %i.dw
  %i.dy = icmp eq i64 %i.du, %i.dx
  %.not9.i.i.i.i.i.i88 = icmp eq ptr %.sroa.0136.0, %.0.i.i.i.i.i.i.i83
  %.fr287 = freeze i1 %i.dy
  br i1 %.fr287, label %.lr.ph283.split, label %.lr.ph283.split.us

.lr.ph283.split.us:                               ; preds = %.lr.ph283
  %i.dz = add nsw i32 %.sroa.7.0..sroa_idx.promoted, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false)
  store i32 %i.dz, ptr %.sroa.522.0..sroa_idx23, align 4, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.625.0..sroa_idx26, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.gep457, i64 16, i1 false)
  %i.ea = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0136.0, i64 %i.dv, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %8, i32 noundef %3)
          to label %.loopexit260 unwind label %.split285.us ; 0 uses

.split285.us:                                     ; preds = %.lr.ph283.split.us
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.lr.ph283.split:                                  ; preds = %.lr.ph283, %.loopexit259
  %i.ec = phi i32 [ %i.ed, %.loopexit259 ], [ %.sroa.7.0..sroa_idx.promoted, %.lr.ph283 ]
  %i.ed = add i32 %i.ec, 1                        ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false)
  store i32 %i.ed, ptr %.sroa.522.0..sroa_idx23, align 4, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.625.0..sroa_idx26, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.gep457, i64 16, i1 false)
  %i.ee = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0136.0, i64 %i.dv, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %8, i32 noundef %3)
          to label %bb.ab unwind label %.split285

bb.ab:                                            ; preds = %.lr.ph283.split
  br i1 %i.ee, label %bb.ac, label %.loopexit260

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not9.i.i.i.i.i.i88, label %.loopexit259, label %.lr.ph.i.i.i.i.i.i89

.lr.ph.i.i.i.i.i.i89:                             ; preds = %bb.ac, %bb.ad
  %.011.i.i.i.i.i.i90 = phi ptr [ %i.ej, %bb.ad ], [ %.sroa.0164.0, %bb.ac ] ; 2 uses
  %.0810.i.i.i.i.i.i91 = phi ptr [ %i.ei, %bb.ad ], [ %.sroa.0136.0, %bb.ac ] ; 2 uses
  %i.ef = load float, ptr %.0810.i.i.i.i.i.i91, align 4, !tbaa !47
  %i.eg = load float, ptr %.011.i.i.i.i.i.i90, align 4, !tbaa !47
  %i.eh = fcmp une float %i.ef, %i.eg
  br i1 %i.eh, label %.loopexit260, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i89
  %i.ei = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i91, i64 4 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i90, i64 4
  %.not.i.i.i.i.i.i92 = icmp eq ptr %i.ei, %.0.i.i.i.i.i.i.i83
  br i1 %.not.i.i.i.i.i.i92, label %.loopexit259, label %.lr.ph.i.i.i.i.i.i89, !llvm.loop !667

.split285:                                        ; preds = %.lr.ph283.split
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit259:                                     ; preds = %bb.ad, %bb.ac
  store i32 %i.ed, ptr %.sroa.gep451, align 8, !tbaa !101
  %exitcond.not = icmp eq i32 %i.ed, %i.dq
  br i1 %exitcond.not, label %.loopexit260, label %.lr.ph283.split, !llvm.loop !669

.loopexit260:                                     ; preds = %.loopexit259, %bb.ab, %.lr.ph.i.i.i.i.i.i89, %.lr.ph283.split.us, %.loopexit263
  %i.el = icmp slt i32 %.sroa.0178.0, %.sroa.6.0..sroa_idx180.promoted
  br i1 %i.el, label %.lr.ph288, label %.loopexit257

.lr.ph288:                                        ; preds = %.loopexit260
  %i.em = ptrtoint ptr %.0.i.i.i.i.i.i.i83 to i64
  %i.en = ptrtoint ptr %.sroa.0136.0 to i64
  %i.eo = sub i64 %i.em, %i.en                    ; 2 uses
  %i.ep = ashr exact i64 %i.eo, 2                 ; 2 uses
  %.sroa.619.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.eq = ptrtoint ptr %.sroa.0164.0 to i64
  %i.er = sub i64 %.0.i.i.i.i.i.i.i, %i.eq
  %i.es = icmp eq i64 %i.eo, %i.er
  %.not9.i.i.i.i.i.i94 = icmp eq ptr %.sroa.0136.0, %.0.i.i.i.i.i.i.i83
  %.fr294 = freeze i1 %i.es
  br i1 %.fr294, label %.lr.ph288.split, label %.lr.ph288.split.us

.lr.ph288.split.us:                               ; preds = %.lr.ph288
  %i.et = add nsw i32 %.sroa.6.0..sroa_idx180.promoted, -1
  store i32 %i.et, ptr %9, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.619.0..sroa_idx20, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.gep, i64 28, i1 false)
  %i.eu = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0136.0, i64 %i.ep, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %9, i32 noundef %3)
          to label %.loopexit257 unwind label %.split291.us ; 0 uses

.split291.us:                                     ; preds = %.lr.ph288.split.us
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.lr.ph288.split:                                  ; preds = %.lr.ph288, %.loopexit256
  %i.ew = phi i32 [ %i.ex, %.loopexit256 ], [ %.sroa.6.0..sroa_idx180.promoted, %.lr.ph288 ] ; 3 uses
  %i.ex = add nsw i32 %i.ew, -1                   ; 4 uses
  store i32 %i.ex, ptr %9, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.619.0..sroa_idx20, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.gep, i64 28, i1 false)
  %i.ey = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0136.0, i64 %i.ep, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %9, i32 noundef %3)
          to label %bb.ae unwind label %.split291

bb.ae:                                            ; preds = %.lr.ph288.split
  br i1 %i.ey, label %bb.af, label %.loopexit257

bb.af:                                            ; preds = %bb.ae
  br i1 %.not9.i.i.i.i.i.i94, label %.loopexit256, label %.lr.ph.i.i.i.i.i.i95

.lr.ph.i.i.i.i.i.i95:                             ; preds = %bb.af, %bb.ag
  %.011.i.i.i.i.i.i96 = phi ptr [ %i.fd, %bb.ag ], [ %.sroa.0164.0, %bb.af ] ; 2 uses
  %.0810.i.i.i.i.i.i97 = phi ptr [ %i.fc, %bb.ag ], [ %.sroa.0136.0, %bb.af ] ; 2 uses
  %i.ez = load float, ptr %.0810.i.i.i.i.i.i97, align 4, !tbaa !47
  %i.fa = load float, ptr %.011.i.i.i.i.i.i96, align 4, !tbaa !47
  %i.fb = fcmp une float %i.ez, %i.fa
  br i1 %i.fb, label %.loopexit257, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i.i95
  %i.fc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i97, i64 4 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i96, i64 4
  %.not.i.i.i.i.i.i98 = icmp eq ptr %i.fc, %.0.i.i.i.i.i.i.i83
  br i1 %.not.i.i.i.i.i.i98, label %.loopexit256, label %.lr.ph.i.i.i.i.i.i95, !llvm.loop !667

.split291:                                        ; preds = %.lr.ph288.split
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit256:                                     ; preds = %bb.ag, %bb.af
  store i32 %i.ex, ptr %.sroa.gep, align 4, !tbaa !145
  %i.ff = icmp slt i32 %.sroa.0178.0, %i.ex
  br i1 %i.ff, label %.lr.ph288.split, label %.loopexit257, !llvm.loop !670

.loopexit257:                                     ; preds = %.loopexit256, %bb.ae, %.lr.ph.i.i.i.i.i.i95, %.lr.ph288.split.us, %.loopexit260
  %i.fg = phi i32 [ %.sroa.6.0..sroa_idx180.promoted, %.lr.ph288.split.us ], [ %.sroa.6.0..sroa_idx180.promoted, %.loopexit260 ], [ %i.ew, %.lr.ph.i.i.i.i.i.i95 ], [ %.sroa.0178.0, %.loopexit256 ], [ %i.ew, %bb.ae ] ; 3 uses
  %i.fh = icmp slt i32 %.promoted, %i.fg
  br i1 %i.fh, label %.lr.ph299, label %_ZStneIfSaIfEEbRKSt6vectorIT_T0_ES6_.exit105.thread216

.lr.ph299:                                        ; preds = %.loopexit257
  %i.fi = ptrtoint ptr %.0.i.i.i.i.i.i.i83 to i64
  %i.fj = ptrtoint ptr %.sroa.0136.0 to i64
  %i.fk = sub i64 %i.fi, %i.fj                    ; 2 uses
  %i.fl = ashr exact i64 %i.fk, 2                 ; 2 uses
  %.sroa.512.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %.sroa.615.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.fm = ptrtoint ptr %.sroa.0164.0 to i64
  %i.fn = sub i64 %.0.i.i.i.i.i.i.i, %i.fm
  %i.fo = icmp eq i64 %i.fk, %i.fn
  %.not9.i.i.i.i.i.i100 = icmp eq ptr %.sroa.0136.0, %.0.i.i.i.i.i.i.i83
  %.fr306 = freeze i1 %i.fo
  br i1 %.fr306, label %.lr.ph299.split, label %.lr.ph299.split.us

.lr.ph299.split.us:                               ; preds = %.lr.ph299
  %i.fp = add nsw i32 %.promoted, 1
  store i32 %.promoted, ptr %10, align 8, !tbaa !45
  store i32 %i.fp, ptr %.sroa.512.0..sroa_idx13, align 4, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.gep451, i64 24, i1 false)
  %i.fq = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0136.0, i64 %i.fl, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %10, i32 noundef %3)
          to label %_ZStneIfSaIfEEbRKSt6vectorIT_T0_ES6_.exit105.thread216 unwind label %.split302.us ; 0 uses

.split302.us:                                     ; preds = %.lr.ph299.split.us
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.lr.ph299.split:                                  ; preds = %.lr.ph299, %.loopexit253
  %i.fs = phi i32 [ %i.ft, %.loopexit253 ], [ %.promoted, %.lr.ph299 ] ; 4 uses
  %i.ft = add i32 %i.fs, 1                        ; 3 uses
  store i32 %i.fs, ptr %10, align 8, !tbaa !45
  store i32 %i.ft, ptr %.sroa.512.0..sroa_idx13, align 4, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.gep451, i64 24, i1 false)
  %i.fu = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0136.0, i64 %i.fl, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %10, i32 noundef %3)
          to label %bb.ah unwind label %.split302

bb.ah:                                            ; preds = %.lr.ph299.split
  br i1 %i.fu, label %bb.ai, label %_ZStneIfSaIfEEbRKSt6vectorIT_T0_ES6_.exit105.thread216

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not9.i.i.i.i.i.i100, label %.loopexit253, label %.lr.ph.i.i.i.i.i.i101

.lr.ph.i.i.i.i.i.i101:                            ; preds = %bb.ai, %bb.aj
  %.011.i.i.i.i.i.i102 = phi ptr [ %i.fz, %bb.aj ], [ %.sroa.0164.0, %bb.ai ] ; 2 uses
  %.0810.i.i.i.i.i.i103 = phi ptr [ %i.fy, %bb.aj ], [ %.sroa.0136.0, %bb.ai ] ; 2 uses
  %i.fv = load float, ptr %.0810.i.i.i.i.i.i103, align 4, !tbaa !47
  %i.fw = load float, ptr %.011.i.i.i.i.i.i102, align 4, !tbaa !47
  %i.fx = fcmp une float %i.fv, %i.fw
  br i1 %i.fx, label %_ZStneIfSaIfEEbRKSt6vectorIT_T0_ES6_.exit105.thread216, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i.i.i101
  %i.fy = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i103, i64 4 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i102, i64 4
  %.not.i.i.i.i.i.i104 = icmp eq ptr %i.fy, %.0.i.i.i.i.i.i.i83
  br i1 %.not.i.i.i.i.i.i104, label %.loopexit253, label %.lr.ph.i.i.i.i.i.i101, !llvm.loop !667

.split302:                                        ; preds = %.lr.ph299.split
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit253:                                     ; preds = %bb.aj, %bb.ai
  %exitcond447.not = icmp eq i32 %i.ft, %i.fg
  br i1 %exitcond447.not, label %_ZStneIfSaIfEEbRKSt6vectorIT_T0_ES6_.exit105.thread216, label %.lr.ph299.split, !llvm.loop !671

_ZStneIfSaIfEEbRKSt6vectorIT_T0_ES6_.exit105.thread216: ; preds = %.loopexit253, %bb.ah, %.lr.ph.i.i.i.i.i.i101, %.loopexit257, %.lr.ph299.split.us
  %storemerge533 = phi i32 [ %.promoted, %.loopexit257 ], [ %i.fs, %.lr.ph.i.i.i.i.i.i101 ], [ %.promoted, %.lr.ph299.split.us ], [ %i.fg, %.loopexit253 ], [ %i.fs, %bb.ah ]
  store i32 %storemerge533, ptr %2, align 8
  %i.gb = sub nsw i32 %.sroa.10.0..sroa_idx.promoted, %.sroa.9.0..sroa_idx.promoted
  %i.gc = icmp sgt i32 %i.gb, 1
  br i1 %i.gc, label %.preheader, label %.loopexit248

.preheader:                                       ; preds = %_ZStneIfSaIfEEbRKSt6vectorIT_T0_ES6_.exit105.thread216
  %i.gd = icmp slt i32 %.sroa.9.0..sroa_idx.promoted, %.sroa.10.0..sroa_idx.promoted
  br i1 %i.gd, label %.lr.ph307, label %.loopexit251

.lr.ph307:                                        ; preds = %.preheader
  %i.ge = ptrtoint ptr %.0.i.i.i.i.i.i.i83 to i64
  %i.gf = ptrtoint ptr %.sroa.0136.0 to i64
  %i.gg = sub i64 %i.ge, %i.gf                    ; 2 uses
  %i.gh = ashr exact i64 %i.gg, 2                 ; 2 uses
  %.sroa.55.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %.sroa.68.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %i.gi = ptrtoint ptr %.sroa.0164.0 to i64
  %i.gj = sub i64 %.0.i.i.i.i.i.i.i, %i.gi
  %i.gk = icmp eq i64 %i.gg, %i.gj
  %.not9.i.i.i.i.i.i106 = icmp eq ptr %.sroa.0136.0, %.0.i.i.i.i.i.i.i83
  %.fr313 = freeze i1 %i.gk
  br i1 %.fr313, label %.lr.ph307.split, label %.lr.ph307.split.us

.lr.ph307.split.us:                               ; preds = %.lr.ph307
  %i.gl = add nsw i32 %.sroa.10.0..sroa_idx.promoted, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  store i32 %i.gl, ptr %.sroa.55.0..sroa_idx6, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.68.0..sroa_idx9, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.gep460, i64 12, i1 false)
  %i.gm = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0136.0, i64 %i.gh, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %11, i32 noundef %3)
          to label %.loopexit251 unwind label %.split310.us ; 0 uses

.split310.us:                                     ; preds = %.lr.ph307.split.us
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.lr.ph307.split:                                  ; preds = %.lr.ph307, %.loopexit250
  %i.go = phi i32 [ %i.gp, %.loopexit250 ], [ %.sroa.10.0..sroa_idx.promoted, %.lr.ph307 ] ; 3 uses
  %i.gp = add nsw i32 %i.go, -1                   ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  store i32 %i.gp, ptr %.sroa.55.0..sroa_idx6, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.68.0..sroa_idx9, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.gep460, i64 12, i1 false)
  %i.gq = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0136.0, i64 %i.gh, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %11, i32 noundef %3)
          to label %bb.ak unwind label %.split310

bb.ak:                                            ; preds = %.lr.ph307.split
  br i1 %i.gq, label %bb.al, label %.loopexit251

bb.al:                                            ; preds = %bb.ak
  br i1 %.not9.i.i.i.i.i.i106, label %.loopexit250, label %.lr.ph.i.i.i.i.i.i107

.lr.ph.i.i.i.i.i.i107:                            ; preds = %bb.al, %bb.am
  %.011.i.i.i.i.i.i108 = phi ptr [ %i.gv, %bb.am ], [ %.sroa.0164.0, %bb.al ] ; 2 uses
  %.0810.i.i.i.i.i.i109 = phi ptr [ %i.gu, %bb.am ], [ %.sroa.0136.0, %bb.al ] ; 2 uses
  %i.gr = load float, ptr %.0810.i.i.i.i.i.i109, align 4, !tbaa !47
  %i.gs = load float, ptr %.011.i.i.i.i.i.i108, align 4, !tbaa !47
  %i.gt = fcmp une float %i.gr, %i.gs
  br i1 %i.gt, label %.loopexit251, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i.i107
  %i.gu = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i109, i64 4 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i108, i64 4
  %.not.i.i.i.i.i.i110 = icmp eq ptr %i.gu, %.0.i.i.i.i.i.i.i83
  br i1 %.not.i.i.i.i.i.i110, label %.loopexit250, label %.lr.ph.i.i.i.i.i.i107, !llvm.loop !667

.split310:                                        ; preds = %.lr.ph307.split
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit250:                                     ; preds = %bb.am, %bb.al
  store i32 %i.gp, ptr %.sroa.gep460, align 4, !tbaa !146
  %i.gx = icmp slt i32 %.sroa.9.0..sroa_idx.promoted, %i.gp
  br i1 %i.gx, label %.lr.ph307.split, label %.loopexit251, !llvm.loop !672

.loopexit251:                                     ; preds = %.loopexit250, %bb.ak, %.lr.ph.i.i.i.i.i.i107, %.lr.ph307.split.us, %.preheader
  %i.gy = phi i32 [ %.sroa.10.0..sroa_idx.promoted, %.lr.ph307.split.us ], [ %.sroa.10.0..sroa_idx.promoted, %.preheader ], [ %i.go, %.lr.ph.i.i.i.i.i.i107 ], [ %.sroa.9.0..sroa_idx.promoted, %.loopexit250 ], [ %i.go, %bb.ak ] ; 2 uses
  %i.gz = icmp slt i32 %.sroa.9.0..sroa_idx.promoted, %i.gy
  br i1 %i.gz, label %.lr.ph314, label %.loopexit248

.lr.ph314:                                        ; preds = %.loopexit251
  %i.ha = load i64, ptr %.sroa.gep463, align 8, !tbaa !45
  %i.hb = ptrtoint ptr %.0.i.i.i.i.i.i.i83 to i64
  %i.hc = ptrtoint ptr %.sroa.0136.0 to i64
  %i.hd = sub i64 %i.hb, %i.hc                    ; 2 uses
  %i.he = ashr exact i64 %i.hd, 2                 ; 2 uses
  %.sroa.5.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i64 %i.ha, ptr %.sroa.6.0..sroa_idx3, align 8, !tbaa !45
  %i.hf = ptrtoint ptr %.sroa.0164.0 to i64
  %i.hg = sub i64 %.0.i.i.i.i.i.i.i, %i.hf
  %i.hh = icmp eq i64 %i.hd, %i.hg
  %.not9.i.i.i.i.i.i112 = icmp eq ptr %.sroa.0136.0, %.0.i.i.i.i.i.i.i83
  %.fr318 = freeze i1 %i.hh
  br i1 %.fr318, label %.lr.ph314.split, label %.lr.ph314.split.us

.lr.ph314.split.us:                               ; preds = %.lr.ph314
  %i.hi = add nsw i32 %.sroa.9.0..sroa_idx.promoted, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %12, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false)
  store i32 %i.hi, ptr %.sroa.5.0..sroa_idx1, align 4, !tbaa !45
  %i.hj = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0136.0, i64 %i.he, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %12, i32 noundef %3)
          to label %.loopexit248 unwind label %.split316.us ; 0 uses

.split316.us:                                     ; preds = %.lr.ph314.split.us
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.lr.ph314.split:                                  ; preds = %.lr.ph314, %.loopexit247
  %i.hl = phi i32 [ %i.hm, %.loopexit247 ], [ %.sroa.9.0..sroa_idx.promoted, %.lr.ph314 ]
  %i.hm = add i32 %i.hl, 1                        ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %12, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false)
  store i32 %i.hm, ptr %.sroa.5.0..sroa_idx1, align 4, !tbaa !45
  %i.hn = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0136.0, i64 %i.he, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %12, i32 noundef %3)
          to label %bb.an unwind label %.split316

bb.an:                                            ; preds = %.lr.ph314.split
  br i1 %i.hn, label %bb.ao, label %.loopexit248

bb.ao:                                            ; preds = %bb.an
  br i1 %.not9.i.i.i.i.i.i112, label %.loopexit247, label %.lr.ph.i.i.i.i.i.i113

.lr.ph.i.i.i.i.i.i113:                            ; preds = %bb.ao, %bb.ap
  %.011.i.i.i.i.i.i114 = phi ptr [ %i.hs, %bb.ap ], [ %.sroa.0164.0, %bb.ao ] ; 2 uses
  %.0810.i.i.i.i.i.i115 = phi ptr [ %i.hr, %bb.ap ], [ %.sroa.0136.0, %bb.ao ] ; 2 uses
  %i.ho = load float, ptr %.0810.i.i.i.i.i.i115, align 4, !tbaa !47
  %i.hp = load float, ptr %.011.i.i.i.i.i.i114, align 4, !tbaa !47
  %i.hq = fcmp une float %i.ho, %i.hp
  br i1 %i.hq, label %.loopexit248, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i.i.i113
  %i.hr = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i115, i64 4 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i114, i64 4
  %.not.i.i.i.i.i.i116 = icmp eq ptr %i.hr, %.0.i.i.i.i.i.i.i83
  br i1 %.not.i.i.i.i.i.i116, label %.loopexit247, label %.lr.ph.i.i.i.i.i.i113, !llvm.loop !667

.split316:                                        ; preds = %.lr.ph314.split
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit247:                                     ; preds = %bb.ap, %bb.ao
  store i32 %i.hm, ptr %.sroa.gep457, align 8, !tbaa !147
  %exitcond448.not = icmp eq i32 %i.hm, %i.gy
  br i1 %exitcond448.not, label %.loopexit248, label %.lr.ph314.split, !llvm.loop !673

.loopexit248:                                     ; preds = %.loopexit247, %bb.an, %.lr.ph.i.i.i.i.i.i113, %.lr.ph314.split.us, %.loopexit251, %_ZStneIfSaIfEEbRKSt6vectorIT_T0_ES6_.exit105.thread216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !79
  %.not.i.i.i = icmp eq ptr %.sroa.0136.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %.loopexit248
  %i.hu = ptrtoint ptr %.sroa.0136.0 to i64
  %i.hv = sub i64 %.sroa.33.0, %i.hu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0136.0, i64 noundef %i.hv) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %.loopexit248, %bb.aq
  %.not.i.i.i118 = icmp eq ptr %.sroa.0164.0, null
  br i1 %.not.i.i.i118, label %_ZNSt6vectorIfSaIfEED2Ev.exit119, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.hw = ptrtoint ptr %.sroa.0164.0 to i64
  %i.hx = sub i64 %.sroa.21.0, %i.hw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0164.0, i64 noundef %i.hx) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit119

bb.as:                                            ; preds = %.split316, %.split316.us, %.split310, %.split310.us, %.split302, %.split302.us, %.split291, %.split291.us, %.split285, %.split285.us, %.split, %.split.us
  %.pn = phi { ptr, i32 } [ %i.gn, %.split310.us ], [ %i.fr, %.split302.us ], [ %i.ev, %.split291.us ], [ %i.eb, %.split285.us ], [ %i.db, %.split.us ], [ %i.do, %.split ], [ %i.ek, %.split285 ], [ %i.fe, %.split291 ], [ %i.ga, %.split302 ], [ %i.gw, %.split310 ], [ %i.ht, %.split316 ], [ %i.hk, %.split316.us ] ; 2 uses
  %.not.i.i.i120 = icmp eq ptr %.sroa.0136.0, null
  br i1 %.not.i.i.i120, label %_ZNSt6vectorIfSaIfEED2Ev.exit121, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hy = ptrtoint ptr %.sroa.0136.0 to i64
  %i.hz = sub i64 %.sroa.33.0, %i.hy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0136.0, i64 noundef %i.hz) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit121

_ZNSt6vectorIfSaIfEED2Ev.exit121:                 ; preds = %bb.at, %bb.as, %bb.aa, %bb.z
  %.pn.pn = phi { ptr, i32 } [ %i.dm, %bb.z ], [ %i.dn, %bb.aa ], [ %.pn, %bb.as ], [ %.pn, %bb.at ] ; 2 uses
  %.not.i.i.i122 = icmp eq ptr %.sroa.0164.0, null
  br i1 %.not.i.i.i122, label %_ZNSt6vectorIfSaIfEED2Ev.exit123, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit121
  %i.ia = ptrtoint ptr %.sroa.0164.0 to i64
  %i.ib = sub i64 %.sroa.21.0, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0164.0, i64 noundef %i.ib) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit123

_ZNSt6vectorIfSaIfEED2Ev.exit119.loopexit:        ; preds = %._crit_edge57.i
  store i32 %storemerge353.i320, ptr %0, align 4
  store i32 %i.bo, ptr %i.ab, align 4
  store i32 %storemerge254.i326, ptr %i.af, align 4
  store i32 %i.bn, ptr %i.ag, align 4
  store i32 %storemerge58.i332, ptr %i.ah, align 4
  store i32 %i.bm, ptr %i.ai, align 4
  store i32 0, ptr %.sroa.9.0..sroa_idx.i, align 4
  store i32 %i.bl, ptr %.sroa.10.0..sroa_idx.i, align 4
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit119

_ZNSt6vectorIfSaIfEED2Ev.exit119:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit119.loopexit, %.lr.ph61.i, %bb.g, %bb.ar, %_ZNSt6vectorIfSaIfEED2Ev.exit
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void

_ZNSt6vectorIfSaIfEED2Ev.exit123:                 ; preds = %.loopexit, %.loopexit.split-lp, %bb.x, %bb.y, %_ZNSt6vectorIfSaIfEED2Ev.exit121, %bb.au, %bb.m
  %.pn67 = phi { ptr, i32 } [ %.pn.pn, %bb.au ], [ %i.bv, %bb.m ], [ %i.dk, %bb.x ], [ %i.dl, %bb.y ], [ %.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit121 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %.pn67
}

declare void @_ZNK11OpenImageIO4v3_18ImageBuf3roiEv(ptr dead_on_unwind writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_112ImageBufAlgo20computePixelHashSHA1B5cxx11ERKNS0_8ImageBufENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_3ROIEii(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly captures(none) dead_on_return %2, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.OpenImageIO::v3_1::pvt::LoggedTimer", align 8 ; 6 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"struct.OpenImageIO::v3_1::ROI", align 4 ; 5 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %10 = alloca %"class.std::vector.20", align 8   ; 13 uses
  %11 = alloca %"class.std::function", align 8    ; 14 uses
  %12 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 7 uses
  %13 = alloca %"class.OpenImageIO::v3_1::SHA1", align 8 ; 9 uses
  store i32 %4, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  store ptr @.str.21, ptr %7, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 25, ptr %i.b, align 8, !tbaa !76
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(68) %6, ptr noundef nonnull dead_on_return %7)
  %i.c = load i32, ptr %3, align 8, !tbaa !78
  %.not37 = icmp eq i32 %i.c, -2147483648
  br i1 %.not37, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.d = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11OpenImageIO4v3_17get_roiERKNS0_9ImageSpecE(ptr dead_on_unwind nonnull writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4 %8, ptr noundef nonnull align 8 dereferenceable(160) %i.d)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !79
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %.pre = load i32, ptr %i.a, align 4, !tbaa !45
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.ag

bb.f:                                             ; preds = %bb.d, %bb.a
  %i.f = phi i32 [ %.pre, %bb.d ], [ %4, %bb.a ]  ; 5 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !102
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !101
  %i.l = sub nsw i32 %i.i, %i.k                   ; 2 uses
  %.not = icmp slt i32 %i.f, %i.l
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = load ptr, ptr %2, align 8, !tbaa !75
  store ptr %i.m, ptr %9, align 8, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !76
  store i64 %i.p, ptr %i.n, align 8, !tbaa !76
  invoke fastcc void @_ZN11OpenImageIO4v3_112_GLOBAL__N_119simplePixelHashSHA1B5cxx11ERKNS0_8ImageBufENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_3ROIE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef dead_on_return %9, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %3)
          to label %bb.af unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.j:                                             ; preds = %bb.g
  %i.r = add nsw i32 %i.f, -1
  %i.s = add nuw i32 %i.r, %i.l                   ; 2 uses
  %i.t = udiv i32 %i.s, %i.f                      ; 5 uses
  %i.u = icmp samesign ugt i32 %i.t, 1
  br i1 %i.u, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i, label %bb.k, !prof !144

bb.k:                                             ; preds = %bb.j
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !142
end_hunk_0
