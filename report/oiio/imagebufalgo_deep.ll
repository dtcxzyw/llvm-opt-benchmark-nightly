inline.NumInlined: 3474
inline.NumDeleted: 1103
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN11OpenImageIO4v3_112ImageBufAlgo6deepenERNS0_8ImageBufERKS2_fNS0_3ROIEi:bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.i:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit153

bb.j:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit128.thread159
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit128.thread159 ] ; 4 uses
  %.0110173 = phi i32 [ -1, %.lr.ph ], [ %.1111, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit128.thread159 ] ; 4 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %indvars.iv ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !56
  switch i64 %i.y, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit128.thread159 [
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit128
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.j
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !45
  %lhsc = load i8, ptr %i.z, align 1
  %i.aa = icmp eq i8 %lhsc, 90
  br i1 %i.aa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit128.thread159

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ab, ptr %i.p, align 4, !tbaa !108
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit128.thread159

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit128: ; preds = %bb.j
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !45  ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = xor i32 %i.ad, 1667326554
  %i.af = getelementptr i8, ptr %i.ac, i64 4
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i32
  %i.ai = xor i32 %i.ah, 107
  %i.aj = or i32 %i.ae, %i.ai
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %bcmp.i127.fr = freeze i32 %i.al
  %i.am = icmp eq i32 %bcmp.i127.fr, 0
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.am, i32 %i.an, i32 %.0110173
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit128.thread159

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit128.thread159: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit128, %bb.j, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.1111 = phi i32 [ %.0110173, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.0110173, %bb.j ], [ %spec.select, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit128 ], [ %.0110173, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.j, !llvm.loop !109

bb.k:                                             ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 60 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !107 ; 2 uses
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !107
  store i32 %i.ap, ptr %i.r, align 4, !tbaa !108
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !44 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !50
  %.not.i = icmp eq ptr %i.as, %i.au
  br i1 %.not.i, label %bb.l, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  store ptr %i.av, ptr %i.as, align 8, !tbaa !55
  store i8 90, ptr %i.av, align 8, !tbaa !48
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 1, ptr %i.aw, align 8, !tbaa !56
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 17
  store i8 0, ptr %i.ax, align 1, !tbaa !48
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !44
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store ptr %i.az, ptr %i.ar, align 8, !tbaa !44
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 96
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA2_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr %i.as, ptr noundef nonnull align 1 dereferenceable(2) @.str.7)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit unwind label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit, %bb.l, %bb.p, %bb.n
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit: ; preds = %bb.l, %._crit_edge.i.i.i, %._crit_edge
  %i.bc = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIEPNS0_8ImageBufEPKS4_S7_S7_PNS0_9ImageSpecEi(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef nonnull %7, i32 noundef 6144)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIEPNS0_8ImageBufEPKS4_S7_PNS0_9ImageSpecEi.exit unwind label %bb.m

_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIEPNS0_8ImageBufEPKS4_S7_PNS0_9ImageSpecEi.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit
  br i1 %i.bc, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIEPNS0_8ImageBufEPKS4_S7_PNS0_9ImageSpecEi.exit
  %i.bd = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf4deepEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %bb.n
  br i1 %i.bd, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA30_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(30) @.str.9)
          to label %.loopexit unwind label %bb.m

bb.q:                                             ; preds = %bb.o
  %.not = icmp eq i32 %.fr224, 0
  br i1 %.not, label %._crit_edge253, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = sext i32 %.fr224 to i64                 ; 2 uses
  %i.bf = shl nsw i64 %i.be, 2
  %i.bg = alloca i8, i64 %i.bf, align 16
  br label %._crit_edge253

._crit_edge253:                                   ; preds = %bb.q, %bb.r
  %.pre-phi = phi i64 [ %i.be, %bb.r ], [ 0, %bb.q ] ; 3 uses
  %i.bh = phi ptr [ %i.bg, %bb.r ], [ null, %bb.q ] ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !110 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !112 ; 4 uses
  %i.bm = icmp slt i32 %i.bj, %i.bl
  br i1 %i.bm, label %.lr.ph195, label %._crit_edge196

.lr.ph195:                                        ; preds = %._crit_edge253
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.bq = load i32, ptr %i.bn, align 8, !tbaa !113
  %i.br = load i32, ptr %i.bo, align 4, !tbaa !114 ; 2 uses
  %i.bs = icmp slt i32 %i.bq, %i.br
  br i1 %i.bs, label %.lr.ph195.split.preheader, label %._crit_edge196

.lr.ph195.split.preheader:                        ; preds = %.lr.ph195
  %wide.trip.count238 = zext nneg i32 %.fr224 to i64
  %wide.trip.count243 = zext nneg i32 %.fr224 to i64
  %wide.trip.count248 = zext nneg i32 %.fr224 to i64
  br label %.lr.ph195.split

._crit_edge196.loopexit:                          ; preds = %._crit_edge191
  %.pre251 = load i32, ptr %i.bi, align 8, !tbaa !110
  br label %._crit_edge196

._crit_edge196:                                   ; preds = %.lr.ph195, %._crit_edge196.loopexit, %._crit_edge253
  %i.bt = phi i32 [ %i.bl, %._crit_edge253 ], [ %i.cj, %._crit_edge196.loopexit ], [ %i.bl, %.lr.ph195 ] ; 2 uses
  %i.bu = phi i32 [ %i.bj, %._crit_edge253 ], [ %.pre251, %._crit_edge196.loopexit ], [ %i.bj, %.lr.ph195 ] ; 2 uses
  %i.bv = icmp slt i32 %i.bu, %i.bt
  br i1 %i.bv, label %.lr.ph223, label %.loopexit

.lr.ph223:                                        ; preds = %._crit_edge196
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.bz = load i32, ptr %i.bw, align 8, !tbaa !113
  %i.ca = load i32, ptr %i.bx, align 4, !tbaa !114 ; 2 uses
  %i.cb = icmp slt i32 %i.bz, %i.ca
  br i1 %i.cb, label %.lr.ph223.split, label %.loopexit

.lr.ph195.split:                                  ; preds = %.lr.ph195.split.preheader, %._crit_edge191
  %i.cc = phi i32 [ %i.cj, %._crit_edge191 ], [ %i.bl, %.lr.ph195.split.preheader ] ; 2 uses
  %i.cd = phi i32 [ %i.ck, %._crit_edge191 ], [ %i.br, %.lr.ph195.split.preheader ] ; 3 uses
  %.0108192 = phi i32 [ %i.cl, %._crit_edge191 ], [ %i.bj, %.lr.ph195.split.preheader ] ; 6 uses
  %i.ce = load i32, ptr %i.bn, align 8, !tbaa !113 ; 2 uses
  %i.cf = icmp slt i32 %i.ce, %i.cd
  br i1 %i.cf, label %.lr.ph190, label %._crit_edge191

.lr.ph190:                                        ; preds = %.lr.ph195.split
  %i.cg = load i32, ptr %3, align 8, !tbaa !115
  %i.ch = load i32, ptr %i.bp, align 4, !tbaa !116 ; 2 uses
  %i.ci = icmp slt i32 %i.cg, %i.ch
  br i1 %i.ci, label %.lr.ph190.split, label %._crit_edge191

._crit_edge191.loopexit:                          ; preds = %._crit_edge184
  %.pre = load i32, ptr %i.bk, align 4, !tbaa !112
  br label %._crit_edge191

._crit_edge191:                                   ; preds = %.lr.ph190, %._crit_edge191.loopexit, %.lr.ph195.split
  %i.cj = phi i32 [ %i.cc, %.lr.ph195.split ], [ %.pre, %._crit_edge191.loopexit ], [ %i.cc, %.lr.ph190 ] ; 3 uses
  %i.ck = phi i32 [ %i.cd, %.lr.ph195.split ], [ %i.dc, %._crit_edge191.loopexit ], [ %i.cd, %.lr.ph190 ]
  %i.cl = add nsw i32 %.0108192, 1                ; 2 uses
  %i.cm = icmp slt i32 %i.cl, %i.cj
  br i1 %i.cm, label %.lr.ph195.split, label %._crit_edge196.loopexit, !llvm.loop !117

.lr.ph190.split:                                  ; preds = %.lr.ph190, %._crit_edge184
  %i.cn = phi i32 [ %i.da, %._crit_edge184 ], [ %i.ch, %.lr.ph190 ] ; 2 uses
  %.0107186 = phi i32 [ %i.db, %._crit_edge184 ], [ %i.ce, %.lr.ph190 ] ; 6 uses
  %i.co = load i32, ptr %3, align 8, !tbaa !115   ; 4 uses
  %i.cp = icmp slt i32 %i.co, %i.cn
  br i1 %i.cp, label %.lr.ph183, label %._crit_edge184

.lr.ph183:                                        ; preds = %.lr.ph190.split
  br i1 %i.t, label %.lr.ph183.split.us, label %.lr.ph183.split

.lr.ph183.split.us:                               ; preds = %.lr.ph183
  br i1 %i.m, label %.lr.ph183.split.us.split.us, label %.lr.ph183.split.us.split

.lr.ph183.split.us.split.us:                      ; preds = %.lr.ph183.split.us, %.thread165.us.us.a
  %.0106180.us.us = phi i32 [ %8, %.thread165.us.us.a ], [ %i.co, %.lr.ph183.split.us ] ; 3 uses
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %.0106180.us.us, i32 noundef %.0107186, i32 noundef %.0108192, ptr %i.bh, i64 %.pre-phi, i32 noundef 1)
          to label %.preheader170.us.us unwind label %.split.us.split.us

bb.s:                                             ; preds = %.preheader170.us.us, %bb.u
  %indvars.iv245 = phi i64 [ 0, %.preheader170.us.us ], [ %indvars.iv.next246, %bb.u ] ; 4 uses
  %.not114.us.us = icmp eq i64 %indvars.iv245, %i.cu
  %.not115.us.us = icmp eq i64 %indvars.iv245, %.0110.lcssa
  %or.cond125.us.us = select i1 %.not114.us.us, i1 true, i1 %.not115.us.us
  br i1 %or.cond125.us.us, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv245
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !119
  %i.cs = fcmp une float %i.cr, 0.000000e+00
  br i1 %i.cs, label %.thread163.loopexit171.us.us, label %bb.u

.thread165.us.us.a:                               ; preds = %bb.u, %.thread163.loopexit171.us.us
  %8 = add nsw i32 %.0106180.us.us, 1             ; 2 uses
  %9 = load i32, ptr %i.bp, align 4, !tbaa !116   ; 2 uses
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %.lr.ph183.split.us.split.us, label %._crit_edge184, !llvm.loop !121

bb.u:                                             ; preds = %bb.t, %bb.s
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %exitcond249.not = icmp eq i64 %indvars.iv.next246, %wide.trip.count248
  br i1 %exitcond249.not, label %.thread165.us.us.a, label %bb.s, !llvm.loop !122

.preheader170.us.us:                              ; preds = %.lr.ph183.split.us.split.us
  %i.ct = load i32, ptr %i.r, align 4, !tbaa !108
  %i.cu = zext i32 %i.ct to i64
  br label %bb.s

.thread163.loopexit171.us.us:                     ; preds = %bb.t
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf16set_deep_samplesEiiii(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.0106180.us.us, i32 noundef %.0107186, i32 noundef %.0108192, i32 noundef 1)
          to label %.thread165.us.us.a unwind label %.split.us.split.us

.split.us.split.us:                               ; preds = %.thread163.loopexit171.us.us, %.lr.ph183.split.us.split.us
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.lr.ph183.split.us.split:                         ; preds = %.lr.ph183.split.us, %.preheader170.us
  %.0106180.us = phi i32 [ %i.cw, %.preheader170.us ], [ %i.co, %.lr.ph183.split.us ] ; 2 uses
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %.0106180.us, i32 noundef %.0107186, i32 noundef %.0108192, ptr %i.bh, i64 %.pre-phi, i32 noundef 1)
          to label %.preheader170.us unwind label %.split.us.split

.preheader170.us:                                 ; preds = %.lr.ph183.split.us.split
  %i.cw = add nsw i32 %.0106180.us, 1             ; 2 uses
  %i.cx = load i32, ptr %i.bp, align 4, !tbaa !116 ; 2 uses
  %i.cy = icmp slt i32 %i.cw, %i.cx
  br i1 %i.cy, label %.lr.ph183.split.us.split, label %._crit_edge184, !llvm.loop !121

.split.us.split:                                  ; preds = %.lr.ph183.split.us.split
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

._crit_edge184:                                   ; preds = %.thread165, %.preheader170.us, %.thread165.us.us.a, %.lr.ph190.split
  %i.da = phi i32 [ %i.cx, %.preheader170.us ], [ %9, %.thread165.us.us.a ], [ %i.cn, %.lr.ph190.split ], [ %i.du, %.thread165 ]
  %i.db = add nsw i32 %.0107186, 1                ; 2 uses
  %i.dc = load i32, ptr %i.bo, align 4, !tbaa !114 ; 2 uses
  %i.dd = icmp slt i32 %i.db, %i.dc
  br i1 %i.dd, label %.lr.ph190.split, label %._crit_edge191.loopexit, !llvm.loop !123

.lr.ph183.split:                                  ; preds = %.lr.ph183, %.thread165
  %.0106180 = phi i32 [ %i.dt, %.thread165 ], [ %i.co, %.lr.ph183 ] ; 3 uses
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %.0106180, i32 noundef %.0107186, i32 noundef %.0108192, ptr %i.bh, i64 %.pre-phi, i32 noundef 1)
          to label %.preheader170 unwind label %.split

.preheader170:                                    ; preds = %.lr.ph183.split
  br i1 %i.m, label %.lr.ph176, label %.thread165

.lr.ph176:                                        ; preds = %.preheader170
  %i.de = load i32, ptr %i.r, align 4, !tbaa !108
  %i.df = zext i32 %i.de to i64
  br label %bb.v

.split:                                           ; preds = %.thread163, %.lr.ph183.split
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

bb.v:                                             ; preds = %.lr.ph176, %bb.x
  %indvars.iv235 = phi i64 [ 0, %.lr.ph176 ], [ %indvars.iv.next236, %bb.x ] ; 4 uses
  %.not114 = icmp eq i64 %indvars.iv235, %i.df
  %.not115 = icmp eq i64 %indvars.iv235, %.0110.lcssa
  %or.cond125 = select i1 %.not114, i1 true, i1 %.not115
  br i1 %or.cond125, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv235
  %i.di = load float, ptr %i.dh, align 4, !tbaa !119
  %i.dj = fcmp une float %i.di, 0.000000e+00
  br i1 %i.dj, label %.thread163, label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %exitcond239.not = icmp eq i64 %indvars.iv.next236, %wide.trip.count238
  br i1 %exitcond239.not, label %.lr.ph179, label %bb.v, !llvm.loop !122

.lr.ph179:                                        ; preds = %bb.x
  %i.dk = load i32, ptr %i.r, align 4, !tbaa !108
  %i.dl = zext i32 %i.dk to i64
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph179, %bb.aa
  %indvars.iv240 = phi i64 [ 0, %.lr.ph179 ], [ %indvars.iv.next241, %bb.aa ] ; 4 uses
  %i.dm = icmp eq i64 %indvars.iv240, %i.dl
  %i.dn = icmp eq i64 %indvars.iv240, %.0110.lcssa
  %or.cond126 = select i1 %i.dm, i1 true, i1 %i.dn
  br i1 %or.cond126, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv240
  %i.dp = load float, ptr %i.do, align 4, !tbaa !119 ; 2 uses
  %i.dq = fcmp une float %i.dp, 0.000000e+00
  %i.dr = fpext float %i.dp to double
  %i.ds = fcmp olt double %i.dr, 1.000000e+30
  %or.cond168 = and i1 %i.dq, %i.ds
  br i1 %or.cond168, label %.thread163, label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %exitcond244.not = icmp eq i64 %indvars.iv.next241, %wide.trip.count243
  br i1 %exitcond244.not, label %.thread165, label %bb.y, !llvm.loop !124

.thread163:                                       ; preds = %bb.w, %bb.z
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf16set_deep_samplesEiiii(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.0106180, i32 noundef %.0107186, i32 noundef %.0108192, i32 noundef 1)
          to label %.thread165 unwind label %.split

.thread165:                                       ; preds = %bb.aa, %.preheader170, %.thread163
  %i.dt = add nsw i32 %.0106180, 1                ; 2 uses
  %i.du = load i32, ptr %i.bp, align 4, !tbaa !116 ; 2 uses
  %i.dv = icmp slt i32 %i.dt, %i.du
  br i1 %i.dv, label %.lr.ph183.split, label %._crit_edge184, !llvm.loop !121

.lr.ph223.split:                                  ; preds = %.lr.ph223, %._crit_edge219
  %i.dw = phi i32 [ %i.ed, %._crit_edge219 ], [ %i.bt, %.lr.ph223 ] ; 2 uses
  %i.dx = phi i32 [ %i.ee, %._crit_edge219 ], [ %i.ca, %.lr.ph223 ] ; 3 uses
  %.091220 = phi i32 [ %i.ef, %._crit_edge219 ], [ %i.bu, %.lr.ph223 ] ; 8 uses
  %i.dy = load i32, ptr %i.bw, align 8, !tbaa !113 ; 2 uses
  %i.dz = icmp slt i32 %i.dy, %i.dx
  br i1 %i.dz, label %.lr.ph218, label %._crit_edge219

.lr.ph218:                                        ; preds = %.lr.ph223.split
  %i.ea = load i32, ptr %3, align 8, !tbaa !115
  %i.eb = load i32, ptr %i.by, align 4, !tbaa !116 ; 2 uses
  %i.ec = icmp slt i32 %i.ea, %i.eb
  br i1 %i.ec, label %.lr.ph218.split, label %._crit_edge219

._crit_edge219.loopexit:                          ; preds = %._crit_edge203
  %.pre252 = load i32, ptr %i.bk, align 4, !tbaa !112
  br label %._crit_edge219

._crit_edge219:                                   ; preds = %.lr.ph218, %._crit_edge219.loopexit, %.lr.ph223.split
  %i.ed = phi i32 [ %i.dw, %.lr.ph223.split ], [ %.pre252, %._crit_edge219.loopexit ], [ %i.dw, %.lr.ph218 ] ; 2 uses
  %i.ee = phi i32 [ %i.dx, %.lr.ph223.split ], [ %i.fb, %._crit_edge219.loopexit ], [ %i.dx, %.lr.ph218 ]
  %i.ef = add nsw i32 %.091220, 1                 ; 2 uses
  %i.eg = icmp slt i32 %i.ef, %i.ed
  br i1 %i.eg, label %.lr.ph223.split, label %.loopexit, !llvm.loop !125

.lr.ph218.split:                                  ; preds = %.lr.ph218, %._crit_edge203
  %i.eh = phi i32 [ %i.ez, %._crit_edge203 ], [ %i.eb, %.lr.ph218 ] ; 2 uses
  %.090214 = phi i32 [ %i.fa, %._crit_edge203 ], [ %i.dy, %.lr.ph218 ] ; 8 uses
  %i.ei = load i32, ptr %3, align 8, !tbaa !115   ; 4 uses
  %i.ej = icmp slt i32 %i.ei, %i.eh
  br i1 %i.ej, label %.lr.ph202, label %._crit_edge203

.lr.ph202:                                        ; preds = %.lr.ph218.split
  br i1 %i.m, label %.lr.ph202.split.us, label %.lr.ph202.split

.lr.ph202.split.us:                               ; preds = %.lr.ph202, %bb.ae
  %.089200.us = phi i32 [ %i.eo, %bb.ae ], [ %i.ei, %.lr.ph202 ] ; 5 uses
  %i.ek = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf12deep_samplesEiii(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.089200.us, i32 noundef %.090214, i32 noundef %.091220)
          to label %bb.ab unwind label %.split205.us

bb.ab:                                            ; preds = %.lr.ph202.split.us
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.ae, label %.preheader.us

11:                                               ; preds = %._crit_edge199.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf14set_deep_valueEiiiiif(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.089200.us, i32 noundef %.090214, i32 noundef %.091220, i32 noundef %.fr224, i32 noundef 0, float noundef %2)
          to label %bb.ae unwind label %.split205.us

.preheader.us:                                    ; preds = %bb.ab, %bb.ad
  %.088197.us = phi i32 [ %i.en, %bb.ad ], [ 0, %bb.ab ] ; 3 uses
  %i.em = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10getchannelEiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %.089200.us, i32 noundef %.090214, i32 noundef %.091220, i32 noundef %.088197.us, i32 noundef 1)
          to label %bb.ac unwind label %.split208.us

bb.ac:                                            ; preds = %.preheader.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf14set_deep_valueEiiiiif(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.089200.us, i32 noundef %.090214, i32 noundef %.091220, i32 noundef %.088197.us, i32 noundef 0, float noundef %i.em)
          to label %bb.ad unwind label %.split208.us

bb.ad:                                            ; preds = %bb.ac
  %i.en = add nuw nsw i32 %.088197.us, 1          ; 2 uses
  %exitcond250.not = icmp eq i32 %i.en, %.fr224
  br i1 %exitcond250.not, label %._crit_edge199.us, label %.preheader.us, !llvm.loop !126

bb.ae:                                            ; preds = %11, %._crit_edge199.us, %bb.ab
  %i.eo = add nsw i32 %.089200.us, 1              ; 2 uses
  %i.ep = load i32, ptr %i.by, align 4, !tbaa !116 ; 2 uses
  %i.eq = icmp slt i32 %i.eo, %i.ep
  br i1 %i.eq, label %.lr.ph202.split.us, label %._crit_edge203, !llvm.loop !127

._crit_edge199.us:                                ; preds = %bb.ad
  br i1 %i.t, label %11, label %bb.ae

.split205.us:                                     ; preds = %11, %.lr.ph202.split.us
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.split208.us:                                     ; preds = %bb.ac, %.preheader.us
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.lr.ph202.split:                                  ; preds = %.lr.ph202
  br i1 %i.t, label %.lr.ph202.split.split.us, label %.lr.ph202.split.split

.lr.ph202.split.split.us:                         ; preds = %.lr.ph202.split, %bb.ag
  %.089200.us211 = phi i32 [ %i.ev, %bb.ag ], [ %i.ei, %.lr.ph202.split ] ; 3 uses
  %i.et = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf12deep_samplesEiii(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.089200.us211, i32 noundef %.090214, i32 noundef %.091220)
          to label %bb.af unwind label %.split205.split.us

bb.af:                                            ; preds = %.lr.ph202.split.split.us
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.ag, label %.preheader.us212

bb.ag:                                            ; preds = %.preheader.us212, %bb.af
  %i.ev = add nsw i32 %.089200.us211, 1           ; 2 uses
  %i.ew = load i32, ptr %i.by, align 4, !tbaa !116 ; 2 uses
  %i.ex = icmp slt i32 %i.ev, %i.ew
  br i1 %i.ex, label %.lr.ph202.split.split.us, label %._crit_edge203, !llvm.loop !127

.preheader.us212:                                 ; preds = %bb.af
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf14set_deep_valueEiiiiif(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.089200.us211, i32 noundef %.090214, i32 noundef %.091220, i32 noundef %.fr224, i32 noundef 0, float noundef %2)
          to label %bb.ag unwind label %.split205.split.us

.split205.split.us:                               ; preds = %.preheader.us212, %.lr.ph202.split.split.us
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

._crit_edge203:                                   ; preds = %.preheader, %bb.ag, %bb.ae, %.lr.ph218.split
  %i.ez = phi i32 [ %i.ew, %bb.ag ], [ %i.ep, %bb.ae ], [ %i.eh, %.lr.ph218.split ], [ %i.ff, %.preheader ]
  %i.fa = add nsw i32 %.090214, 1                 ; 2 uses
  %i.fb = load i32, ptr %i.bx, align 4, !tbaa !114 ; 2 uses
  %i.fc = icmp slt i32 %i.fa, %i.fb
  br i1 %i.fc, label %.lr.ph218.split, label %._crit_edge219.loopexit, !llvm.loop !128

.lr.ph202.split.split:                            ; preds = %.lr.ph202.split, %.preheader
  %.089200 = phi i32 [ %i.fe, %.preheader ], [ %i.ei, %.lr.ph202.split ] ; 2 uses
  %i.fd = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf12deep_samplesEiii(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.089200, i32 noundef %.090214, i32 noundef %.091220)
          to label %.preheader unwind label %.split205.split ; 0 uses

.preheader:                                       ; preds = %.lr.ph202.split.split
  %i.fe = add nsw i32 %.089200, 1                 ; 2 uses
  %i.ff = load i32, ptr %i.by, align 4, !tbaa !116 ; 2 uses
  %i.fg = icmp slt i32 %i.fe, %i.ff
  br i1 %i.fg, label %.lr.ph202.split.split, label %._crit_edge203, !llvm.loop !127

.split205.split:                                  ; preds = %.lr.ph202.split.split
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.loopexit:                                        ; preds = %._crit_edge219, %.lr.ph223, %._crit_edge196, %bb.p, %_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIEPNS0_8ImageBufEPKS4_S7_PNS0_9ImageSpecEi.exit
  %.0 = phi i1 [ false, %bb.p ], [ false, %_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIEPNS0_8ImageBufEPKS4_S7_PNS0_9ImageSpecEi.exit ], [ true, %.lr.ph223 ], [ true, %._crit_edge196 ], [ true, %._crit_edge219 ]
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !38 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 144
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !39 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.fj, %i.fl
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.fm, %.lr.ph.i.i.i.i ], [ %i.fj, %.loopexit ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i) #29
  %i.fm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fm, %i.fl
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !40

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.fi, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %.loopexit
  %i.fn = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.fj, %.loopexit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 152
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !42
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = ptrtoint ptr %i.fn to i64
  %i.fs = sub i64 %i.fq, %i.fr
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.fs) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i: ; preds = %bb.ah, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !43 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !44 ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.fu, %i.fw
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i3.i = phi ptr [ %i.gc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.fu, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %i.fx = load ptr, ptr %.05.i.i.i3.i, align 8, !tbaa !45 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !48
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 32 ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.gc, %i.fw
  br i1 %.not.i.i.i4.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !49

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i5.i = load ptr, ptr %i.ft, align 8, !tbaa !43
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i
  %i.gd = phi ptr [ %.pr.i5.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.fu, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i6.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i1.i6.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !50
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.ai, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.gj = load ptr, ptr %i.i, align 8, !tbaa !33  ; 3 uses
  %.not.i.i.i7.i = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i7.i, label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.gk = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !51
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.gj to i64
  %i.go = sub i64 %i.gm, %i.gn
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.go) #30
  br label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit

_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit:         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.an

.split.us:                                        ; preds = %.split205.us, %.split205.split.us, %.split205.split, %.split, %.split.us.split.us, %.split.us.split, %.split208.us, %bb.m
  %.pn119 = phi { ptr, i32 } [ %i.cv, %.split.us.split.us ], [ %i.bb, %bb.m ], [ %i.es, %.split208.us ], [ %i.dg, %.split ], [ %i.cz, %.split.us.split ], [ %i.er, %.split205.us ], [ %i.fh, %.split205.split ], [ %i.ey, %.split205.split.us ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !38 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %7, i64 144
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !39 ; 2 uses
  %.not4.i.i.i.i131 = icmp eq ptr %i.gq, %i.gs
  br i1 %.not4.i.i.i.i131, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i137, label %.lr.ph.i.i.i.i132

.lr.ph.i.i.i.i132:                                ; preds = %.split.us, %.lr.ph.i.i.i.i132
  %.05.i.i.i.i133 = phi ptr [ %i.gt, %.lr.ph.i.i.i.i132 ], [ %i.gq, %.split.us ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i133) #29
  %i.gt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i133, i64 40 ; 2 uses
  %.not.i.i.i.i134 = icmp eq ptr %i.gt, %i.gs
  br i1 %.not.i.i.i.i134, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i135, label %.lr.ph.i.i.i.i132, !llvm.loop !40

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i135: ; preds = %.lr.ph.i.i.i.i132
  %.pr.i.i136 = load ptr, ptr %i.gp, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i137

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i137: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i135, %.split.us
  %i.gu = phi ptr [ %.pr.i.i136, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i135 ], [ %i.gq, %.split.us ] ; 3 uses
  %.not.i.i1.i.i138 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i1.i.i138, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i139, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i137
  %i.gv = getelementptr inbounds nuw i8, ptr %7, i64 152
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !42
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = ptrtoint ptr %i.gu to i64
  %i.gz = sub i64 %i.gx, %i.gy
  call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef %i.gz) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i139

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i139: ; preds = %bb.ak, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i137
end_hunk_0
