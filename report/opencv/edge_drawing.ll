Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/edge_drawing?download=true
inline.NumInlined: 1880
inline.NumDeleted: 742
loop-unroll.NumCompletelyUnrolled: 82
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 154
begin_hunk_0_@_ZN2cv8ximgproc15EdgeDrawingImpl11TestSegmentEiii:bb.a
  %i.el = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 2, !tbaa !84
  %i.en = zext i16 %i.em to i32
  %.not74 = icmp samesign ult i32 %.069.lcssa, %i.en
  br i1 %.not74, label %.split.loop.exit, label %bb.c

.split.loop.exit:                                 ; preds = %.lr.ph126
  %i.eo = trunc nsw i64 %indvars.iv.next98125 to i32
  br label %.split.loop.exit115

.split.loop.exit115:                              ; preds = %bb.c, %.preheader81, %.split.loop.exit
  %.060.lcssa = phi i32 [ %i.eo, %.split.loop.exit ], [ %smin, %.preheader81 ], [ %smin, %bb.c ]
  %i.ep = add i32 %.067.lcssa, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %3, i32 %i.ep) ; 2 uses
  %indvars.iv.next101127 = add nsw i64 %i.bh, 1   ; 2 uses
  %i.eq = icmp slt i64 %indvars.iv.next101127, %i.n
  br i1 %i.eq, label %.lr.ph129.preheader, label %tailrecurse

.lr.ph129.preheader:                              ; preds = %.split.loop.exit115
  %i.er = load ptr, ptr %i.be, align 8, !tbaa !149
  br label %.lr.ph129

bb.d:                                             ; preds = %.lr.ph129
  %indvars.iv.next101 = add nsw i64 %indvars.iv.next101128, 1 ; 2 uses
  %i.es = icmp slt i64 %indvars.iv.next101, %i.n
  br i1 %i.es, label %.lr.ph129, label %tailrecurse

.lr.ph129:                                        ; preds = %.lr.ph129.preheader, %bb.d
  %indvars.iv.next101128 = phi i64 [ %indvars.iv.next101, %bb.d ], [ %indvars.iv.next101127, %.lr.ph129.preheader ] ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv.next101128 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !194
  %i.ew = load i32, ptr %i.et, align 4, !tbaa !195
  %i.ex = mul nsw i32 %i.bg, %i.ev
  %i.ey = add nsw i32 %i.ex, %i.ew
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.ez
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !84
  %i.fc = zext i16 %i.fb to i32
  %.not75 = icmp samesign ult i32 %.069.lcssa, %i.fc
  br i1 %.not75, label %tailrecurse.split.loop.exit, label %bb.d

tailrecurse.split.loop.exit:                      ; preds = %.lr.ph129
  %i.fd = trunc nsw i64 %indvars.iv.next101128 to i32
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.d, %.split.loop.exit115, %tailrecurse.split.loop.exit
  %.0.lcssa = phi i32 [ %i.fd, %tailrecurse.split.loop.exit ], [ %smax, %.split.loop.exit115 ], [ %smax, %bb.d ] ; 2 uses
  tail call void @_ZN2cv8ximgproc15EdgeDrawingImpl11TestSegmentEiii(ptr noundef nonnull align 8 dereferenceable(2216) %0, i32 noundef %1, i32 noundef %.tr7990, i32 noundef %.060.lcssa)
  %i.fe = sub nsw i32 %3, %.0.lcssa
  %i.ff = add nsw i32 %i.fe, 1                    ; 2 uses
  %i.fg = load i32, ptr %i.a, align 4, !tbaa !159
  %i.fh = icmp slt i32 %i.ff, %i.fg
  br i1 %i.fh, label %.loopexit, label %.preheader82

.loopexit:                                        ; preds = %tailrecurse, %.prol.loopexit, %.lr.ph93.new, %bb.a, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl18ExtractNewSegmentsEv(ptr noundef nonnull align 8 dereferenceable(2216) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 13 uses
  %2 = alloca %"class.std::vector.17", align 8    ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1984 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !160  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader60.lr.ph, label %._crit_edge73

.preheader60.lr.ph:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !153 ; 2 uses
  br label %.preheader60

.preheader60:                                     ; preds = %.preheader60.lr.ph, %._crit_edge
  %i.k = phi i32 [ %i.b, %.preheader60.lr.ph ], [ %i.di, %._crit_edge ]
  %i.l = phi ptr [ %.pre, %.preheader60.lr.ph ], [ %i.dj, %._crit_edge ] ; 2 uses
  %i.m = phi ptr [ %.pre, %.preheader60.lr.ph ], [ %i.dk, %._crit_edge ] ; 2 uses
  %indvars.iv80 = phi i64 [ 0, %.preheader60.lr.ph ], [ %indvars.iv.next81, %._crit_edge ] ; 3 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %indvars.iv80 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !162
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !149  ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = lshr exact i64 %i.t, 3
  %i.v = trunc i64 %i.u to i32                    ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.preheader, label %._crit_edge

._crit_edge73:                                    ; preds = %._crit_edge, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.m unwind label %bb.p       ; 0 uses

.preheader:                                       ; preds = %.preheader60, %bb.l
  %i.z = phi ptr [ %i.cw, %bb.l ], [ %i.l, %.preheader60 ]
  %i.aa = phi i32 [ %i.dg, %bb.l ], [ %i.v, %.preheader60 ] ; 4 uses
  %i.ab = phi ptr [ %i.db, %bb.l ], [ %i.q, %.preheader60 ] ; 2 uses
  %i.ac = phi ptr [ %i.cy, %bb.l ], [ %i.n, %.preheader60 ]
  %.04371 = phi i32 [ %i.cx, %bb.l ], [ 0, %.preheader60 ] ; 3 uses
  %i.ad = sext i32 %.04371 to i64                 ; 2 uses
  %i.ae = sext i32 %i.aa to i64                   ; 3 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.aa, i32 %.04371) ; 2 uses
  %smax75 = call i64 @llvm.smax.i64(i64 %i.ad, i64 %i.ae)
  %exitcond.not118.not = icmp slt i32 %.04371, %i.aa
  br i1 %exitcond.not118.not, label %.lr.ph.preheader, label %.split.loop.exit103

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !170
  %i.ag = load i32, ptr %i.f, align 8, !tbaa !169
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %smax75
  br i1 %exitcond.not, label %.split.loop.exit103, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv119 = phi i64 [ %indvars.iv.next, %bb.b ], [ %i.ad, %.lr.ph.preheader ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv119 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !194
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !195
  %i.al = mul nsw i32 %i.ag, %i.aj
  %i.am = add nsw i32 %i.al, %i.ak
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.af, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !59
  %.not = icmp eq i8 %i.ap, 0
  br i1 %.not, label %bb.b, label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.lr.ph
  %i.aq = trunc nsw i64 %indvars.iv119 to i32
  br label %.split.loop.exit103

.split.loop.exit103:                              ; preds = %bb.b, %.preheader, %.split.loop.exit
  %.144.lcssa = phi i32 [ %i.aq, %.split.loop.exit ], [ %smax, %.preheader ], [ %smax, %bb.b ] ; 3 uses
  %i.ar = sext i32 %.144.lcssa to i64             ; 3 uses
  %i.as = add nsw i32 %.144.lcssa, 1
  %smax78 = call i32 @llvm.smax.i32(i32 %i.aa, i32 %i.as) ; 3 uses
  %i.at = add nsw i32 %smax78, -1                 ; 2 uses
  %indvars.iv.next77120 = add nsw i64 %i.ar, 1    ; 2 uses
  %i.au = icmp slt i64 %indvars.iv.next77120, %i.ae
  br i1 %i.au, label %.lr.ph123.preheader, label %.split.loop.exit106

.lr.ph123.preheader:                              ; preds = %.split.loop.exit103
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !170
  %i.aw = load i32, ptr %i.f, align 8, !tbaa !169
  br label %.lr.ph123

bb.c:                                             ; preds = %.lr.ph123
  %indvars.iv.next77 = add nsw i64 %indvars.iv.next77122, 1 ; 2 uses
  %i.ax = icmp slt i64 %indvars.iv.next77, %i.ae
  br i1 %i.ax, label %.lr.ph123, label %.split.loop.exit106

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %bb.c
  %indvars.iv.next77122 = phi i64 [ %indvars.iv.next77, %bb.c ], [ %indvars.iv.next77120, %.lr.ph123.preheader ] ; 4 uses
  %indvars.iv76121 = phi i64 [ %indvars.iv.next77122, %bb.c ], [ %i.ar, %.lr.ph123.preheader ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next77122 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !194
  %i.bb = load i32, ptr %i.ay, align 4, !tbaa !195
  %i.bc = mul nsw i32 %i.aw, %i.ba
  %i.bd = add nsw i32 %i.bc, %i.bb
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %i.av, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !59
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %.split.loop.exit105, label %bb.c

.split.loop.exit105:                              ; preds = %.lr.ph123
  %i.bi = trunc nsw i64 %indvars.iv76121 to i32
  %i.bj = trunc nsw i64 %indvars.iv.next77122 to i32
  br label %.split.loop.exit106

.split.loop.exit106:                              ; preds = %bb.c, %.split.loop.exit103, %.split.loop.exit105
  %.041.in.lcssa = phi i32 [ %i.bi, %.split.loop.exit105 ], [ %i.at, %.split.loop.exit103 ], [ %i.at, %bb.c ]
  %.041.lcssa = phi i32 [ %i.bj, %.split.loop.exit105 ], [ %smax78, %.split.loop.exit103 ], [ %smax78, %bb.c ] ; 2 uses
  %i.bk = sub nsw i32 %.041.lcssa, %.144.lcssa
  %i.bl = icmp sgt i32 %i.bk, 9
  br i1 %i.bl, label %bb.d, label %bb.l

bb.d:                                             ; preds = %.split.loop.exit106
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #42
  %i.bm = load ptr, ptr %i.ac, align 8, !tbaa !197
  %.idx59 = shl nsw i64 %i.ar, 3                  ; 3 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %.idx59
  %i.bo = sext i32 %.041.lcssa to i64
  %.idx = shl nsw i64 %i.bo, 3                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %gepdiff = sub nsw i64 %.idx, %.idx59           ; 4 uses
  %.not.i.i.i = icmp eq i64 %.idx, %.idx59
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE11_M_allocateEm.exit.thread.i.i, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE11_M_allocateEm.exit.thread.i.i: ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr null, i64 %gepdiff
  store ptr %i.bp, ptr %i.g, align 8, !tbaa !150
  br label %bb.f

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %bb.d
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %gepdiff) #41
          to label %.noexc5.i unwind label %bb.e  ; 4 uses

.noexc5.i:                                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  store ptr %i.bq, ptr %2, align 8, !tbaa !149
  %i.br = getelementptr i8, ptr %i.bq, i64 %gepdiff ; 2 uses
  store ptr %i.br, ptr %i.g, align 8, !tbaa !150
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bq, ptr align 4 %i.bn, i64 %gepdiff, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %2, align 8, !tbaa !149   ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i6.i, label %.body, label %.body.sink.split

bb.f:                                             ; preds = %.noexc5.i, %_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE11_M_allocateEm.exit.thread.i.i
  %i.bt = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE11_M_allocateEm.exit.thread.i.i ], [ %i.bq, %.noexc5.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE11_M_allocateEm.exit.thread.i.i ], [ %i.br, %.noexc5.i ] ; 3 uses
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.h, align 8, !tbaa !162
  %i.bu = load ptr, ptr %i.i, align 8, !tbaa !154 ; 6 uses
  %i.bv = load ptr, ptr %i.j, align 8, !tbaa !155
  %.not.i = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bw = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %.0.lcssa.i.i.i.i.i.i, %i.bt
  br i1 %.not.i.i.i.i.i, label %.noexc49, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bz = icmp ugt i64 %i.by, 9223372036854775800
  br i1 %i.bz, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !188

.noexc.i.i.i:                                     ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #44
          to label %.noexc unwind label %.loopexit.split-lp62

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.h
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #41
          to label %.noexc49 unwind label %.loopexit61

.noexc49:                                         ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.g
  %i.cb = phi ptr [ null, %bb.g ], [ %i.ca, %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.cb, ptr %i.bu, align 8, !tbaa !149
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !162
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.by
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !150
  %i.cf = load ptr, ptr %2, align 8, !tbaa !197   ; 3 uses
  %i.cg = load ptr, ptr %i.h, align 8, !tbaa !197 ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.cf, %i.cg
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEC2ERKS4_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc49, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i ], [ %i.cb, %.noexc49 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i ], [ %i.cf, %.noexc49 ] ; 2 uses
  %i.ch = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 4
  store i64 %i.ch, ptr %.09.i.i.i.i.i.i, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ci, %i.cg
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEC2ERKS4_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !9

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEC2ERKS4_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc49
  %.0.lcssa.i.i.i.i.i.i48 = phi ptr [ %i.cb, %.noexc49 ], [ %i.cj, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i48, ptr %i.cc, align 8, !tbaa !162
  %i.ck = load ptr, ptr %i.i, align 8, !tbaa !154
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store ptr %i.cl, ptr %i.i, align 8, !tbaa !154
  br label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE9push_backERKS4_.exit

bb.i:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %._ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE9push_backERKS4_.exit_crit_edge unwind label %.loopexit61

._ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE9push_backERKS4_.exit_crit_edge: ; preds = %bb.i
  %.pre83 = load ptr, ptr %2, align 8, !tbaa !149
  br label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE9push_backERKS4_.exit: ; preds = %._ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE9push_backERKS4_.exit_crit_edge, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEC2ERKS4_.exit.i
  %i.cm = phi ptr [ %.pre83, %._ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE9push_backERKS4_.exit_crit_edge ], [ %i.cf, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEC2ERKS4_.exit.i ] ; 3 uses
  %.not.i.i.i51 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i51, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE9push_backERKS4_.exit
  %i.cn = load ptr, ptr %i.g, align 8, !tbaa !150
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cq) #43
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit:    ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE9push_backERKS4_.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  %.pre84 = load ptr, ptr %i.d, align 8, !tbaa !153
  br label %bb.l

.loopexit61:                                      ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.i
  %lpad.loopexit63 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp62:                             ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp64 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp62, %.loopexit61
  %lpad.phi65 = phi { ptr, i32 } [ %lpad.loopexit63, %.loopexit61 ], [ %lpad.loopexit.split-lp64, %.loopexit.split-lp62 ] ; 2 uses
  %i.cr = load ptr, ptr %2, align 8, !tbaa !149   ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i53, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.k, %bb.e
  %.sink112 = phi ptr [ %i.bs, %bb.e ], [ %i.cr, %bb.k ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %lpad.loopexit, %bb.e ], [ %lpad.phi65, %bb.k ]
  %i.cs = load ptr, ptr %i.g, align 8, !tbaa !150
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %.sink112 to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %.sink112, i64 noundef %i.cv) #43
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.k, %bb.e
  %.pn = phi { ptr, i32 } [ %lpad.loopexit, %bb.e ], [ %lpad.phi65, %bb.k ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  br label %bb.q

bb.l:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit, %.split.loop.exit106
  %i.cw = phi ptr [ %.pre84, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit ], [ %i.z, %.split.loop.exit106 ] ; 4 uses
  %i.cx = add nsw i32 %.041.in.lcssa, 2           ; 2 uses
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %indvars.iv80 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !162
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !149 ; 2 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = lshr exact i64 %i.de, 3
  %i.dg = trunc i64 %i.df to i32                  ; 2 uses
  %i.dh = icmp slt i32 %i.cx, %i.dg
  br i1 %i.dh, label %.preheader, label %._crit_edge.loopexit, !llvm.loop !443

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre85 = load i32, ptr %i.a, align 8, !tbaa !160
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader60
  %i.di = phi i32 [ %.pre85, %._crit_edge.loopexit ], [ %i.k, %.preheader60 ] ; 2 uses
  %i.dj = phi ptr [ %i.cw, %._crit_edge.loopexit ], [ %i.l, %.preheader60 ]
  %i.dk = phi ptr [ %i.cw, %._crit_edge.loopexit ], [ %i.m, %.preheader60 ]
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.dl = sext i32 %i.di to i64
  %i.dm = icmp slt i64 %indvars.iv.next81, %i.dl
  br i1 %i.dm, label %.preheader60, label %._crit_edge73, !llvm.loop !444

bb.m:                                             ; preds = %._crit_edge73
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !154 ; 3 uses
  %i.dp = load ptr, ptr %1, align 8, !tbaa !153   ; 4 uses
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = sdiv exact i64 %i.ds, 24
  %i.du = trunc i64 %i.dt to i32
  store i32 %i.du, ptr %i.a, align 8, !tbaa !160
  %.not4.i.i.i = icmp eq ptr %i.dp, %i.do
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.eb, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i ], [ %i.dp, %bb.m ] ; 3 uses
  %i.dv = load ptr, ptr %.05.i.i.i, align 8, !tbaa !149 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !150
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.ea) #43
  br label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i56 = icmp eq ptr %i.eb, %i.do
  br i1 %.not.i.i.i56, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !153
  br label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.m
  %i.ec = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.dp, %bb.m ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !155
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %i.ec to i64
  %i.eh = sub i64 %i.ef, %i.eg
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eh) #43
  br label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #42
  ret void

bb.p:                                             ; preds = %._crit_edge73
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ei, %bb.p ]
  call void @_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #42
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl13MyRGB2LabFastEv(ptr noundef nonnull align 8 dereferenceable(2216) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %1 = alloca %"class.std::vector.60", align 8    ; 11 uses
  %2 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #42
  %i.a = tail call noalias noundef nonnull dereferenceable(624) ptr @_Znwm(i64 noundef 624) #41 ; 6 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !201
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !202
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.a) #42
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.e) #42
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.f) #42
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  store ptr %i.g, ptr %i.b, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #42
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.i, align 8, !tbaa !174
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.j, align 4, !tbaa !175
  store i32 16842752, ptr %2, align 8, !tbaa !176
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.h, ptr %i.k, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #42
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.m, align 8
  store i32 33882112, ptr %3, align 8, !tbaa !176
  store ptr %1, ptr %i.l, align 8, !tbaa !166
  invoke void @_ZN2cv5splitERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.a unwind label %bb.n

bb.a:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  %i.n = load ptr, ptr %1, align 8, !tbaa !201    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !74
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 232
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !74
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 440
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !74
  %i.u = load i8, ptr @_ZN2cv8ximgproc15EdgeDrawingImpl15LUT_InitializedE, align 1, !tbaa !98, !range !81, !noundef !82
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.p, label %.preheader21.i

.preheader21.i:                                   ; preds = %bb.a, %bb.g
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.g ], [ 0, %bb.a ] ; 5 uses
  %i.w = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.x = uitofp nneg i32 %i.w to double
  %i.y = fmul nnan double %i.x, f0x3E90000000000000 ; 3 uses
  %i.z = fcmp ult double %i.y, 4.045000e-02
  br i1 %i.z, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader21.i
  %i.aa = fadd double %i.y, 5.500000e-02
  %i.ab = fdiv double %i.aa, 1.055000e+00
  %i.ac = call double @pow(double noundef %i.ab, double noundef 2.400000e+00) #42
  br label %bb.d

bb.c:                                             ; preds = %.preheader21.i
  %i.ad = fdiv double %i.y, 1.292000e+01
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi double [ %i.ad, %bb.c ], [ %i.ac, %bb.b ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @_ZN2cv8ximgproc15EdgeDrawingImpl4LUT1E, i64 %indvars.iv.i
  store double %.sink.i, ptr %i.ae, align 16, !tbaa !46
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 4194304
  br i1 %exitcond.not.i, label %.preheader.i, label %.preheader21.i.1

.preheader21.i.1:                                 ; preds = %bb.d
  %i.af = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.ag = uitofp nneg i32 %i.af to double
  %i.ah = fmul nnan double %i.ag, f0x3E90000000000000 ; 3 uses
  %i.ai = fcmp ult double %i.ah, 4.045000e-02
  br i1 %i.ai, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader21.i.1
  %i.aj = fadd double %i.ah, 5.500000e-02
  %i.ak = fdiv double %i.aj, 1.055000e+00
  %i.al = call double @pow(double noundef %i.ak, double noundef 2.400000e+00) #42
  br label %bb.g

bb.f:                                             ; preds = %.preheader21.i.1
  %i.am = fdiv double %i.ah, 1.292000e+01
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.i.1 = phi double [ %i.am, %bb.f ], [ %i.al, %bb.e ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @_ZN2cv8ximgproc15EdgeDrawingImpl4LUT1E, i64 %indvars.iv.next.i
  store double %.sink.i.1, ptr %i.an, align 8, !tbaa !46
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  br label %.preheader21.i

end_hunk_0
