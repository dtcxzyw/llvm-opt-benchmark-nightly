Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/uloc?download=true
inline.NumInlined: 709
inline.NumDeleted: 174
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@uloc_setKeywordValue_78:bb.a
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %2 to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %.not.not.i = icmp eq i64 %i.n, -1
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.n
  %spec.select = select i1 %.not.not.i, ptr null, ptr %i.o
  br label %locale_getKeywordsStart_78.exit

locale_getKeywordsStart_78.exit:                  ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i, %bb.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.p = phi ptr [ null, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ %spec.select, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i ], [ null, %bb.i ] ; 5 uses
  %i.q = icmp eq ptr %i.p, null                   ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %2 to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = select i1 %i.q, i64 %i.g, i64 %i.t
  %i.v = trunc i64 %i.u to i32                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.w = getelementptr inbounds i8, ptr %2, i64 %i.j
  %i.x = select i1 %i.q, ptr %i.w, ptr %i.p
  %i.y = xor i32 %i.v, -1
  %i.z = add i32 %3, %i.y
  call void @_ZN6icu_7820CheckedArrayByteSinkC1EPci(ptr noundef nonnull align 8 dereferenceable(29) %5, ptr noundef nonnull %i.x, i32 noundef %i.z)
  br i1 %i.q, label %bb.k, label %bb.j

bb.j:                                             ; preds = %locale_getKeywordsStart_78.exit
  %i.aa = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #17
  br label %bb.k

bb.k:                                             ; preds = %locale_getKeywordsStart_78.exit, %bb.j
  %.sroa.046.0 = phi i64 [ %i.aa, %bb.j ], [ 0, %locale_getKeywordsStart_78.exit ]
  %i.ab = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %i.ac = icmp eq ptr %1, null
  br i1 %i.ac, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sroa.0.0 = phi i64 [ %i.ad, %bb.l ], [ 0, %bb.k ]
  %i.ae = invoke noundef i32 @_Z26ulocimp_setKeywordValue_78St17basic_string_viewIcSt11char_traitsIcEES2_S2_RN6icu_788ByteSinkER10UErrorCode(i64 %.sroa.046.0, ptr %i.p, i64 %i.ab, ptr nonnull %0, i64 %.sroa.0.0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.n unwind label %bb.p       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.af = load i32, ptr %4, align 4, !tbaa !11    ; 2 uses
  %i.ag = icmp slt i32 %i.af, 1
  br i1 %i.ag, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = icmp eq i32 %i.af, 15
  %i.ai = add nsw i32 %i.ae, %i.v
  %i.aj = select i1 %i.ah, i32 %i.ai, i32 0
  br label %bb.r

bb.p:                                             ; preds = %bb.q, %bb.m
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7820CheckedArrayByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(29) dereferenceable(29) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %i.ak

bb.q:                                             ; preds = %bb.n
  %i.al = add nsw i32 %i.ae, %i.v
  %i.am = invoke i32 @u_terminateChars_78(ptr noundef nonnull %2, i32 noundef %3, i32 noundef %i.al, ptr noundef nonnull %4)
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q, %bb.o
  %.0 = phi i32 [ %i.aj, %bb.o ], [ %i.am, %bb.q ]
  call void @_ZN6icu_7820CheckedArrayByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(29) dereferenceable(29) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.h, %bb.r, %bb.a, %bb.f, %bb.d
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.h ], [ %.0, %bb.r ]
  ret i32 %.2
}

declare void @_ZN6icu_7820CheckedArrayByteSinkC1EPci(ptr noundef nonnull align 8 dereferenceable(29), ptr noundef, i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z26ulocimp_setKeywordValue_78St17basic_string_viewIcSt11char_traitsIcEES2_S2_RN6icu_788ByteSinkER10UErrorCode(i64 %0, ptr %1, i64 %2, ptr nofree readonly captures(address) %3, i64 %4, ptr nofree readonly captures(address) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.icu_78::CharString", align 8 ; 27 uses
  %9 = alloca %"class.icu_78::CharString", align 8 ; 14 uses
  %10 = alloca %"class.icu_78::CharString", align 8 ; 15 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %11 = alloca %"class.icu_78::CharString", align 8 ; 13 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = load i32, ptr %7, align 4, !tbaa !11     ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.cc

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 13 ; 2 uses
  store ptr %i.f, ptr %8, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 40, ptr %i.g, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  store i8 0, ptr %i.h, align 4, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  store i32 0, ptr %i.i, align 8, !tbaa !19
  store i8 0, ptr %i.f, align 1, !tbaa !20
  %i.j = icmp eq i32 %i.d, -124
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %7, align 4, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = icmp eq i64 %2, 0
  br i1 %i.k, label %.thread329, label %bb.e

.thread329:                                       ; preds = %bb.d
  store i32 1, ptr %7, align 4, !tbaa !11
  br label %_ZN6icu_7810CharStringD2Ev.exit252

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  invoke fastcc void @_ZN12_GLOBAL__N_123locale_canonKeywordNameESt17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind noalias writable align 8 %9, i64 %2, ptr %3, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %7, align 4, !tbaa !11
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.h, label %bb.bv

bb.g:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 13 ; 2 uses
  store ptr %i.o, ptr %10, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 40, ptr %i.p, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  store i8 0, ptr %i.q, align 4, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 9 uses
  store i32 0, ptr %i.r, align 8, !tbaa !19
  store i8 0, ptr %i.o, align 1, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 %4
  %.not214293 = icmp samesign eq i64 %4, 0
  br i1 %.not214293, label %.critedge233.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.l
  %.0160294 = phi ptr [ %i.ac, %bb.l ], [ %5, %bb.h ] ; 2 uses
  %i.t = load i8, ptr %.0160294, align 1, !tbaa !20 ; 4 uses
  %i.u = invoke signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.t)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %.lr.ph
  %.not.i = icmp ne i8 %i.u, 0
  %i.v = add i8 %i.t, -48
  %i.w = icmp ult i8 %i.v, 10
  %i.x = or i1 %i.w, %.not.i
  br i1 %i.x, label %_ZN12_GLOBAL__N_125UPRV_OK_VALUE_PUNCTUATIONEc.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = add i8 %i.t, -43                         ; 2 uses
  %i.z = call i8 @llvm.fshl.i8(i8 %i.y, i8 %i.y, i8 7)
  switch i8 %i.z, label %.critedge231 [
    i8 26, label %_ZN12_GLOBAL__N_125UPRV_OK_VALUE_PUNCTUATIONEc.exit.thread
    i8 1, label %_ZN12_GLOBAL__N_125UPRV_OK_VALUE_PUNCTUATIONEc.exit.thread
    i8 0, label %_ZN12_GLOBAL__N_125UPRV_OK_VALUE_PUNCTUATIONEc.exit.thread
    i8 2, label %_ZN12_GLOBAL__N_125UPRV_OK_VALUE_PUNCTUATIONEc.exit.thread
  ]

.critedge231:                                     ; preds = %bb.j
  store i32 1, ptr %7, align 4, !tbaa !11
  br label %.thread

bb.k:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_125UPRV_OK_VALUE_PUNCTUATIONEc.exit.thread
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

_ZN12_GLOBAL__N_125UPRV_OK_VALUE_PUNCTUATIONEc.exit.thread: ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.i
  %i.ab = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %10, i8 noundef signext %i.t, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.l unwind label %bb.k       ; 0 uses

bb.l:                                             ; preds = %_ZN12_GLOBAL__N_125UPRV_OK_VALUE_PUNCTUATIONEc.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %.0160294, i64 1 ; 2 uses
  %.not214 = icmp eq ptr %i.ac, %i.s
  br i1 %.not214, label %.critedge233, label %.lr.ph

.critedge233:                                     ; preds = %bb.l
  %.pre = load i32, ptr %7, align 4, !tbaa !11
  %i.ad = icmp slt i32 %.pre, 1
  br i1 %i.ad, label %.critedge233.thread, label %.thread

.critedge233.thread:                              ; preds = %bb.h, %.critedge233
  %i.ae = icmp ult i64 %0, 2
  br i1 %i.ae, label %bb.m, label %.preheader284

.preheader284:                                    ; preds = %.critedge233.thread
  %i.af = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 13 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  br label %bb.v

bb.m:                                             ; preds = %.critedge233.thread
  %i.al = load i32, ptr %i.r, align 8, !tbaa !19  ; 2 uses
  %.not283 = icmp eq i32 %i.al, 0
  br i1 %.not283, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !19
  %i.ao = add i32 %i.al, 2
  %i.ap = add i32 %i.ao, %i.an                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4, !tbaa !28
  %i.aq = load ptr, ptr %6, align 8, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = invoke noundef ptr %i.as(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %i.ap, i32 noundef %i.ap, ptr noundef null, i32 noundef %i.ap, ptr noundef nonnull %i.a)
          to label %bb.o unwind label %bb.q       ; 4 uses

bb.o:                                             ; preds = %bb.n
  %i.au = load i32, ptr %i.a, align 4, !tbaa !28
  %i.av = icmp slt i32 %i.au, %i.ap
  %i.aw = icmp eq ptr %i.at, null
  %or.cond = or i1 %i.aw, %i.av
  br i1 %or.cond, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  store i32 15, ptr %7, align 4, !tbaa !11
  br label %bb.t

bb.q:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.r:                                             ; preds = %bb.o
  store i8 64, ptr %i.at, align 1, !tbaa !20
  %i.ay = load ptr, ptr %9, align 8, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 2 uses
  %i.ba = load i32, ptr %i.am, align 8, !tbaa !19
  %i.bb = sext i32 %i.ba to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr align 1 %i.ay, i64 %i.bb, i1 false)
  %i.bc = load i32, ptr %i.am, align 8, !tbaa !19
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %i.az, i64 %i.bd ; 2 uses
  store i8 61, ptr %i.be, align 1, !tbaa !20
  %i.bf = load ptr, ptr %10, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bh = load i32, ptr %i.r, align 8, !tbaa !19
  %i.bi = sext i32 %i.bh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr align 1 %i.bf, i64 %i.bi, i1 false)
  %i.bj = load ptr, ptr %6, align 8, !tbaa !23
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.at, i32 noundef %i.ap)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.thread

bb.u:                                             ; preds = %bb.s, %bb.q
  %.pn225 = phi { ptr, i32 } [ %i.bm, %bb.s ], [ %i.ax, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.bu

bb.v:                                             ; preds = %.preheader284, %bb.bd
  %.0196 = phi i8 [ %.5201, %bb.bd ], [ 0, %.preheader284 ] ; 6 uses
  %.0188 = phi i8 [ %.5193, %bb.bd ], [ 64, %.preheader284 ] ; 7 uses
  %.0158 = phi i64 [ %.4, %bb.bd ], [ 0, %.preheader284 ] ; 2 uses
  %.not216 = icmp eq i64 %.0158, -1
  br i1 %.not216, label %.thread276, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = add nuw i64 %.0158, 1                   ; 4 uses
  %i.bo = icmp ult i64 %i.bn, %0
  br i1 %i.bo, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, label %.thread.thread

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.w
  %i.bp = sub nuw i64 %0, %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %i.bn
  %i.br = call ptr @memchr(ptr noundef nonnull %i.bq, i32 noundef 61, i64 noundef %i.bp) #17 ; 2 uses
  %.not.i234 = icmp eq ptr %i.br, null
  br i1 %.not.i234, label %.thread.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.af                    ; 9 uses
  %i.bu = icmp eq i64 %i.bt, -1
  br i1 %i.bu, label %.thread.thread, label %.lr.ph296

.thread.thread:                                   ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit, %bb.w, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  store i32 1, ptr %7, align 4, !tbaa !11
  br label %.thread

.lr.ph296:                                        ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit, %bb.x
  %.1159295 = phi i64 [ %i.by, %bb.x ], [ %i.bn, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %.1159295
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !20
  %i.bx = icmp eq i8 %i.bw, 32
  br i1 %i.bx, label %bb.x, label %.critedge

bb.x:                                             ; preds = %.lr.ph296
  %i.by = add i64 %.1159295, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %0
  br i1 %exitcond.not, label %.critedge, label %.lr.ph296, !llvm.loop !66

.critedge:                                        ; preds = %.lr.ph296, %bb.x
  %.1159.lcssa.ph = phi i64 [ %.1159295, %.lr.ph296 ], [ %0, %bb.x ] ; 7 uses
  %umin = call i64 @llvm.umin.i64(i64 %.1159.lcssa.ph, i64 %i.bt) ; 2 uses
  %i.bz = icmp ugt i64 %i.bt, %.1159.lcssa.ph
  br i1 %i.bz, label %.lr.ph350, label %.critedge7

bb.y:                                             ; preds = %.lr.ph350
  %i.ca = icmp ugt i64 %i.cb, %.1159.lcssa.ph
  br i1 %i.ca, label %.lr.ph350, label %.critedge7, !llvm.loop !67

.lr.ph350:                                        ; preds = %.critedge, %bb.y
  %.0349 = phi i64 [ %i.cb, %bb.y ], [ %i.bt, %.critedge ] ; 2 uses
  %i.cb = add i64 %.0349, -1                      ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !20
  %i.ce = icmp eq i8 %i.cd, 32
  br i1 %i.ce, label %bb.y, label %..critedge7_crit_edge351, !llvm.loop !67

..critedge7_crit_edge351:                         ; preds = %.lr.ph350
  br label %.critedge7, !llvm.loop !67

.critedge7:                                       ; preds = %bb.y, %..critedge7_crit_edge351, %.critedge
  %.0.lcssa = phi i64 [ %umin, %.critedge ], [ %.0349, %..critedge7_crit_edge351 ], [ %umin, %bb.y ] ; 2 uses
  %i.cf = icmp eq i64 %.1159.lcssa.ph, %.0.lcssa
  br i1 %i.cf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.critedge7
  store i32 1, ptr %7, align 4, !tbaa !11
  br label %.thread

bb.aa:                                            ; preds = %.critedge7
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  store ptr %i.ag, ptr %11, align 8, !tbaa !15
  store i32 40, ptr %i.ah, align 8, !tbaa !16
  store i8 0, ptr %i.ai, align 4, !tbaa !17
  store i32 0, ptr %i.aj, align 8, !tbaa !19
  store i8 0, ptr %i.ag, align 1, !tbaa !20
  %umax = call i64 @llvm.umax.i64(i64 %.0.lcssa, i64 %.1159.lcssa.ph) ; 4 uses
  %exitcond307.not353 = icmp eq i64 %.1159.lcssa.ph, %umax
  br i1 %exitcond307.not353, label %._crit_edge, label %.lr.ph355

bb.ab:                                            ; preds = %bb.af
  %i.cg = add i64 %.2354, 1                       ; 2 uses
  %exitcond307.not = icmp eq i64 %i.cg, %umax
  br i1 %exitcond307.not, label %._crit_edge, label %.lr.ph355, !llvm.loop !68

.lr.ph355:                                        ; preds = %bb.aa, %bb.ab
  %.2354 = phi i64 [ %i.cg, %bb.ab ], [ %.1159.lcssa.ph, %bb.aa ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %.2354 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !20  ; 2 uses
  %i.cj = invoke signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.ci)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %.lr.ph355
  %.not.i235 = icmp ne i8 %i.cj, 0
  %i.ck = add i8 %i.ci, -48
  %i.cl = icmp ult i8 %i.ck, 10
  %i.cm = or i1 %i.cl, %.not.i235
  br i1 %i.cm, label %bb.ae, label %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit246.sink.split

bb.ad:                                            ; preds = %.lr.ph355, %bb.af, %bb.ae
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ae:                                            ; preds = %bb.ac
  %i.co = load i8, ptr %i.ch, align 1, !tbaa !20
  %i.cp = invoke signext i8 @uprv_asciitolower_78(i8 noundef signext %i.co)
          to label %bb.af unwind label %bb.ad

bb.af:                                            ; preds = %bb.ae
  %i.cq = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %11, i8 noundef signext %i.cp, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.ab unwind label %bb.ad, !llvm.loop !68 ; 0 uses

._crit_edge:                                      ; preds = %bb.ab, %bb.aa
  %i.cr = load i32, ptr %7, align 4, !tbaa !11
  %i.cs = icmp slt i32 %i.cr, 1
  br i1 %i.cs, label %bb.ag, label %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit246

bb.ag:                                            ; preds = %._crit_edge
  %i.ct = icmp ult i64 %i.bt, %0
  br i1 %i.ct, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i238, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit240

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i238:    ; preds = %bb.ag
  %i.cu = sub nuw i64 %0, %i.bt
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 %i.bt
  %i.cw = call ptr @memchr(ptr noundef %i.cv, i32 noundef 59, i64 noundef %i.cu) #17 ; 2 uses
  %.not.i239 = icmp eq ptr %i.cw, null
  br i1 %.not.i239, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit240, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i238
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = sub i64 %i.cx, %i.af
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit240

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit240: ; preds = %bb.ag, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i238, %bb.ah
  %.1.i237 = phi i64 [ -1, %bb.ag ], [ %i.cy, %bb.ah ], [ -1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i238 ] ; 3 uses
  %indvars.iv356.reass = add i64 %i.bt, 1         ; 2 uses
  %.0157357 = add nuw i64 %i.bt, 1                ; 3 uses
  %i.cz = icmp ult i64 %.0157357, %0
  br i1 %i.cz, label %.lr.ph360, label %.critedge9

bb.ai:                                            ; preds = %.lr.ph360
  %indvars.iv = add i64 %indvars.iv358, 1         ; 2 uses
  %.0157 = add nuw i64 %.0157359, 1               ; 3 uses
  %i.da = icmp ult i64 %.0157, %0
  br i1 %i.da, label %.lr.ph360, label %.critedge9, !llvm.loop !69

.lr.ph360:                                        ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit240, %bb.ai
  %.0157359 = phi i64 [ %.0157, %bb.ai ], [ %.0157357, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit240 ] ; 3 uses
  %indvars.iv358 = phi i64 [ %indvars.iv, %bb.ai ], [ %indvars.iv356.reass, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit240 ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 %.0157359
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !20
  %i.dd = icmp eq i8 %i.dc, 32
  br i1 %i.dd, label %bb.ai, label %..critedge9_crit_edge363, !llvm.loop !69

..critedge9_crit_edge363:                         ; preds = %.lr.ph360
  br label %.critedge9, !llvm.loop !69

.critedge9:                                       ; preds = %bb.ai, %..critedge9_crit_edge363, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit240
  %indvars.iv.lcssa = phi i64 [ %indvars.iv356.reass, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit240 ], [ %indvars.iv358, %..critedge9_crit_edge363 ], [ %indvars.iv, %bb.ai ]
  %.0157.lcssa = phi i64 [ %.0157357, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit240 ], [ %.0157359, %..critedge9_crit_edge363 ], [ %.0157, %bb.ai ] ; 5 uses
  %i.de = icmp eq i64 %.1.i237, -1                ; 2 uses
  %spec.select = select i1 %i.de, i64 %0, i64 %.1.i237 ; 3 uses
  %umin308 = call i64 @llvm.umin.i64(i64 %spec.select, i64 %indvars.iv.lcssa) ; 2 uses
  %i.df = icmp ugt i64 %spec.select, %.0157.lcssa
  br i1 %i.df, label %.lr.ph367, label %.critedge11

bb.aj:                                            ; preds = %.lr.ph367
  %i.dg = icmp ugt i64 %i.dh, %.0157.lcssa
  br i1 %i.dg, label %.lr.ph367, label %.critedge11, !llvm.loop !70

.lr.ph367:                                        ; preds = %.critedge9, %bb.aj
  %.1366 = phi i64 [ %i.dh, %bb.aj ], [ %spec.select, %.critedge9 ] ; 2 uses
  %i.dh = add i64 %.1366, -1                      ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !20
  %i.dk = icmp eq i8 %i.dj, 32
  br i1 %i.dk, label %bb.aj, label %..critedge11_crit_edge369, !llvm.loop !70

..critedge11_crit_edge369:                        ; preds = %.lr.ph367
  br label %.critedge11, !llvm.loop !70

.critedge11:                                      ; preds = %bb.aj, %..critedge11_crit_edge369, %.critedge9
  %.1.lcssa = phi i64 [ %umin308, %.critedge9 ], [ %.1366, %..critedge11_crit_edge369 ], [ %umin308, %bb.aj ] ; 2 uses
  %.not = icmp eq i64 %.0157.lcssa, %.1.lcssa
  br i1 %.not, label %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit246.sink.split, label %bb.ak

bb.ak:                                            ; preds = %.critedge11
  %i.dl = load ptr, ptr %9, align 8, !tbaa !15
  %i.dm = load ptr, ptr %11, align 8, !tbaa !15
  %i.dn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dl, ptr noundef nonnull dereferenceable(1) %i.dm) #18 ; 2 uses
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.dp = load i32, ptr %i.r, align 8, !tbaa !19
  %.not282 = icmp eq i32 %i.dp, 0
  br i1 %.not282, label %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit241, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dq = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %8, i8 noundef signext %.0188, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.an unwind label %bb.ap     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.dr = load ptr, ptr %9, align 8, !tbaa !15
  %i.ds = load i32, ptr %i.ak, align 8, !tbaa !19
  %i.dt = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %8, ptr noundef %i.dr, i32 noundef %i.ds, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit unwind label %bb.ap ; 0 uses

_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit: ; preds = %bb.an
  %i.du = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %8, i8 noundef signext 61, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.ao unwind label %bb.ap     ; 0 uses

bb.ao:                                            ; preds = %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit
  %i.dv = load ptr, ptr %10, align 8, !tbaa !15
  %i.dw = load i32, ptr %i.r, align 8, !tbaa !19
  %i.dx = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %8, ptr noundef %i.dv, i32 noundef %i.dw, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit241 unwind label %bb.ap ; 0 uses

bb.ap:                                            ; preds = %bb.ba, %bb.az, %bb.av, %bb.au, %bb.at, %bb.ao, %bb.an, %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit245, %bb.ay, %bb.aw, %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit244, %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit243, %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit242, %bb.as, %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit, %bb.am
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.aq:                                            ; preds = %bb.ak
  %i.dz = icmp slt i32 %i.dn, 0
  br i1 %i.dz, label %bb.ar, label %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit243

bb.ar:                                            ; preds = %bb.aq
  %i.ea = load i32, ptr %i.r, align 8, !tbaa !19
  %i.eb = icmp eq i32 %i.ea, 0
  %i.ec = trunc nuw i8 %.0196 to i1
  %or.cond13 = select i1 %i.eb, i1 true, i1 %i.ec
  br i1 %or.cond13, label %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit243, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ed = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %8, i8 noundef signext %.0188, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.at unwind label %bb.ap     ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.ee = load ptr, ptr %9, align 8, !tbaa !15
  %i.ef = load i32, ptr %i.ak, align 8, !tbaa !19
  %i.eg = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %8, ptr noundef %i.ee, i32 noundef %i.ef, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit242 unwind label %bb.ap ; 0 uses

_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit242: ; preds = %bb.at
  %i.eh = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %8, i8 noundef signext 61, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.au unwind label %bb.ap     ; 0 uses

bb.au:                                            ; preds = %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit242
  %i.ei = load ptr, ptr %10, align 8, !tbaa !15
  %i.ej = load i32, ptr %i.r, align 8, !tbaa !19
  %i.ek = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %8, ptr noundef %i.ei, i32 noundef %i.ej, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit243 unwind label %bb.ap ; 0 uses

_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit243: ; preds = %bb.au, %bb.ar, %bb.aq
  %.1197 = phi i8 [ %.0196, %bb.ar ], [ %.0196, %bb.aq ], [ 1, %bb.au ]
  %.2190 = phi i8 [ %.0188, %bb.ar ], [ %.0188, %bb.aq ], [ 59, %bb.au ]
  %i.el = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %8, i8 noundef signext %.2190, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.av unwind label %bb.ap     ; 0 uses

bb.av:                                            ; preds = %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit243
  %i.em = load ptr, ptr %11, align 8, !tbaa !15
  %i.en = load i32, ptr %i.aj, align 8, !tbaa !19
  %i.eo = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %8, ptr noundef %i.em, i32 noundef %i.en, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit244 unwind label %bb.ap ; 0 uses

_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit244: ; preds = %bb.av
  %i.ep = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %8, i8 noundef signext 61, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.aw unwind label %bb.ap     ; 0 uses

bb.aw:                                            ; preds = %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit244
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 %.0157.lcssa
  %i.er = sub i64 %.1.lcssa, %.0157.lcssa
  %i.es = trunc i64 %i.er to i32
  %i.et = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %8, ptr noundef nonnull %i.eq, i32 noundef %i.es, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit241 unwind label %bb.ap ; 0 uses

_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit241: ; preds = %bb.ao, %bb.al, %bb.aw
  %.2198 = phi i8 [ %.1197, %bb.aw ], [ 1, %bb.al ], [ 1, %bb.ao ] ; 3 uses
  %.3191 = phi i8 [ 59, %bb.aw ], [ %.0188, %bb.al ], [ 59, %bb.ao ] ; 4 uses
  br i1 %i.de, label %bb.ax, label %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit246

bb.ax:                                            ; preds = %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit241
  %i.eu = load i32, ptr %i.r, align 8, !tbaa !19
  %i.ev = icmp eq i32 %i.eu, 0
  %i.ew = trunc nuw i8 %.2198 to i1
  %or.cond15 = select i1 %i.ev, i1 true, i1 %i.ew
  br i1 %or.cond15, label %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit246, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ex = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %8, i8 noundef signext %.3191, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.az unwind label %bb.ap     ; 0 uses

bb.az:                                            ; preds = %bb.ay
  %i.ey = load ptr, ptr %9, align 8, !tbaa !15
  %i.ez = load i32, ptr %i.ak, align 8, !tbaa !19
  %i.fa = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %8, ptr noundef %i.ey, i32 noundef %i.ez, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit245 unwind label %bb.ap ; 0 uses

_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit245: ; preds = %bb.az
  %i.fb = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %8, i8 noundef signext 61, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.ba unwind label %bb.ap     ; 0 uses

bb.ba:                                            ; preds = %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit245
  %i.fc = load ptr, ptr %10, align 8, !tbaa !15
  %i.fd = load i32, ptr %i.r, align 8, !tbaa !19
  %i.fe = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %8, ptr noundef %i.fc, i32 noundef %i.fd, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit246 unwind label %bb.ap ; 0 uses

_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit246.sink.split: ; preds = %bb.ac, %.critedge11
  %.4.ph = phi i64 [ %umax, %.critedge11 ], [ %.2354, %bb.ac ]
  store i32 1, ptr %7, align 4, !tbaa !11
  br label %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit246

_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit246: ; preds = %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit246.sink.split, %bb.ba, %bb.ax, %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit241, %._crit_edge
  %.5201 = phi i8 [ %.2198, %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit241 ], [ %.0196, %._crit_edge ], [ 1, %bb.ba ], [ %.2198, %bb.ax ], [ %.0196, %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit246.sink.split ]
  %.5193 = phi i8 [ %.3191, %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit241 ], [ %.0188, %._crit_edge ], [ %.3191, %bb.ba ], [ %.3191, %bb.ax ], [ %.0188, %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit246.sink.split ]
  %.3183 = phi i1 [ true, %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit241 ], [ false, %._crit_edge ], [ true, %bb.ba ], [ true, %bb.ax ], [ false, %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit246.sink.split ]
  %.4 = phi i64 [ %.1.i237, %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit241 ], [ %umax, %._crit_edge ], [ -1, %bb.ba ], [ -1, %bb.ax ], [ %.4.ph, %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit246.sink.split ]
  %i.ff = load i8, ptr %i.ai, align 4, !tbaa !17
  %.not.i.i.i = icmp eq i8 %i.ff, 0
  br i1 %.not.i.i.i, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit246
  %i.fg = load ptr, ptr %11, align 8, !tbaa !15
  invoke void @uprv_free_78(ptr noundef %i.fg)
          to label %bb.bd unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #19
  unreachable

bb.bd:                                            ; preds = %bb.bb, %_ZN6icu_7810CharString6appendERKS0_R10UErrorCode.exit246
end_hunk_0
