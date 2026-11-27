Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/import2ozz_skel?download=true
inline.NumInlined: 237
inline.NumDeleted: 142
begin_hunk_0_@_ZN3ozz9animation7offline14ImportSkeletonERKN4Json5ValueEPNS1_11OzzImporterENS_10EndiannessE:bb.a
  %.not.i.i.i188 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i.i188, label %bb.cr, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i189

bb.cr:                                            ; preds = %_ZN3ozz3log6LoggerlsIA48_cEERSoRKT_.exit
  invoke void @_ZSt16__throw_bad_castv() #11
          to label %.noexc193 unwind label %bb.cv

.noexc193:                                        ; preds = %bb.cr
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i189: ; preds = %_ZN3ozz3log6LoggerlsIA48_cEERSoRKT_.exit
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 56
  %i.js = load i8, ptr %i.jr, align 8, !tbaa !40
  %.not.i1.i.i190 = icmp eq i8 %i.js, 0
  br i1 %.not.i1.i.i190, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i189
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 67
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !41
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i191

bb.ct:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i189
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.jq)
          to label %.noexc194 unwind label %bb.cv

.noexc194:                                        ; preds = %bb.ct
  %i.jv = load ptr, ptr %i.jq, align 8, !tbaa !19
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 48
  %i.jx = load ptr, ptr %i.jw, align 8
  %i.jy = invoke noundef signext i8 %i.jx(ptr noundef nonnull align 8 dereferenceable(570) %i.jq, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i191 unwind label %bb.cv, !inline_history !0

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i191: ; preds = %.noexc194, %bb.cs
  %.0.i.i.i192 = phi i8 [ %i.ju, %bb.cs ], [ %i.jy, %.noexc194 ]
  %i.jz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.jj, i8 noundef signext %.0.i.i.i192)
          to label %.noexc196 unwind label %bb.cv

.noexc196:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i191
  %i.ka = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jz)
          to label %_ZNSolsEPFRSoS_E.exit102 unwind label %bb.cv ; 0 uses

_ZNSolsEPFRSoS_E.exit102:                         ; preds = %.noexc196
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %19) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  br label %bb.da

bb.cu:                                            ; preds = %_ZN3ozz2io8OArchivelsINS_9animation7offline11RawSkeletonEEEvRKT_.exit
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cv:                                            ; preds = %.noexc196, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i191, %.noexc194, %bb.ct, %bb.cr, %bb.cq
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %19) #10
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.pn62 = phi { ptr, i32 } [ %i.kc, %bb.cv ], [ %i.kb, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #10
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cp, %bb.ch, %bb.ce
  %.pn62.pn = phi { ptr, i32 } [ %.pn62, %bb.cw ], [ %i.hz, %bb.ce ], [ %.pn60, %bb.ch ], [ %.pn58, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.bu, %bb.br
  %.pn62.pn.pn = phi { ptr, i32 } [ %.pn62.pn, %bb.cx ], [ %.pn56, %bb.bu ], [ %i.gp, %bb.br ]
  call void @_ZN3ozz2io4FileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #10
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.bq
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn, %bb.cy ], [ %i.go, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  br label %bb.dd

bb.da:                                            ; preds = %_ZNSolsEPFRSoS_E.exit86, %_ZNSolsEPFRSoS_E.exit102
  call void @_ZN3ozz2io4FileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  %.not.i103 = icmp eq ptr %i.ee, null
  br i1 %.not.i103, label %_ZNSt10unique_ptrIN3ozz9animation8SkeletonENS0_7DeleterIS2_EEED2Ev.exit105, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @_ZN3ozz9animation8SkeletonD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ee) #10
  %i.kd = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %.noexc.i104 unwind label %bb.dc ; 2 uses

.noexc.i104:                                      ; preds = %bb.db
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !19
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8
  invoke void %i.kg(ptr noundef nonnull align 8 dereferenceable(8) %i.kd, ptr noundef nonnull %i.ee)
          to label %_ZNSt10unique_ptrIN3ozz9animation8SkeletonENS0_7DeleterIS2_EEED2Ev.exit105 unwind label %bb.dc, !inline_history !1

bb.dc:                                            ; preds = %.noexc.i104, %bb.db
  %i.kh = landingpad { ptr, i32 }
          catch ptr null
  %i.ki = extractvalue { ptr, i32 } %i.kh, 0
  call void @__clang_call_terminate(ptr %i.ki) #12
  unreachable

_ZNSt10unique_ptrIN3ozz9animation8SkeletonENS0_7DeleterIS2_EEED2Ev.exit105: ; preds = %.thread, %bb.da, %.noexc.i104
  %.345214 = phi i1 [ false, %.thread ], [ %i.fi, %bb.da ], [ %i.fi, %.noexc.i104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.de

bb.dd:                                            ; preds = %bb.bm, %bb.bp, %bb.cz, %bb.at, %bb.ao
  %.pn62.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gl, %bb.bm ], [ %.pn51.pn, %bb.at ], [ %.pn49, %bb.ao ], [ %.pn62.pn.pn.pn, %bb.cz ], [ %.pn54, %bb.bp ]
  call void @_ZNSt10unique_ptrIN3ozz9animation8SkeletonENS0_7DeleterIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %.body

bb.de:                                            ; preds = %bb.y, %_ZNSt10unique_ptrIN3ozz9animation8SkeletonENS0_7DeleterIS2_EEED2Ev.exit105, %_ZNSolsEPFRSoS_E.exit71
  %.446 = phi i1 [ %.345214, %_ZNSt10unique_ptrIN3ozz9animation8SkeletonENS0_7DeleterIS2_EEED2Ev.exit105 ], [ false, %_ZNSolsEPFRSoS_E.exit71 ], [ false, %bb.y ]
  call void @_ZN3ozz9animation7offline11RawSkeletonD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.df

.body:                                            ; preds = %bb.n, %bb.x, %bb.dd, %bb.q
  %.pn62.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn.pn.pn, %bb.dd ], [ %.pn, %bb.q ], [ %i.bx, %bb.n ], [ %i.cl, %bb.x ]
  call void @_ZN3ozz9animation7offline11RawSkeletonD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.dg

bb.df:                                            ; preds = %bb.de, %_ZNSolsEPFRSoS_E.exit
  %.547 = phi i1 [ %.446, %bb.de ], [ true, %_ZNSolsEPFRSoS_E.exit ]
  ret i1 %.547

bb.dg:                                            ; preds = %.body, %bb.f
  %.pn62.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn.pn.pn.pn, %.body ], [ %i.y, %bb.f ]
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4Json5Value6asBoolEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN3ozz3log3LogC1Ev(ptr noundef nonnull align 8 dereferenceable(9)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN3ozz9animation7offline11RawSkeletonC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZN3ozz3log3ErrC1Ev(ptr noundef nonnull align 8 dereferenceable(9)) unnamed_addr #2

declare noundef i32 @_ZN3ozz3log8GetLevelEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_112LogHierarchyERKSt6vectorINS1_11RawSkeleton5JointENS_12StdAllocatorIS5_EEEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.ozz::log::LogV", align 8    ; 5 uses
  %3 = alloca %"class.ozz::log::LogV", align 8    ; 7 uses
  %4 = alloca %"class.ozz::log::LogV", align 8    ; 7 uses
  %5 = alloca %"class.ozz::log::LogV", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @_ZN3ozz3log4LogVC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %2)
  %i.a = load ptr, ptr %2, align 8, !tbaa !15, !nonnull !16, !align !17 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !78
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.j = load ptr, ptr %0, align 8, !tbaa !56     ; 2 uses
  %.not = icmp eq ptr %i.i, %i.j
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = sext i32 %1 to i64
  %i.l = add nsw i32 %1, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSolsEPFRSoS_E.exit
  %i.m = phi ptr [ %i.j, %.lr.ph ], [ %i.dq, %_ZNSolsEPFRSoS_E.exit ]
  %.02284 = phi i64 [ 0, %.lr.ph ], [ %i.do, %_ZNSolsEPFRSoS_E.exit ] ; 2 uses
  %i.n = getelementptr inbounds nuw [96 x i8], ptr %i.m, i64 %.02284 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZN3ozz3log4LogVC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %3)
  %i.o = load ptr, ptr %3, align 8, !tbaa !15, !nonnull !16, !align !17 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.q = getelementptr i8, ptr %i.p, i64 -24      ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.k, ptr %i.t, align 8, !tbaa !79
  %i.u = load i64, ptr %i.q, align 8
  %i.v = getelementptr inbounds i8, ptr %i.o, i64 %i.u ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 225
  %i.x = load i8, ptr %i.w, align 1, !tbaa !80, !range !52, !noundef !16
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 240
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34  ; 6 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt16__throw_bad_castv() #11
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !40
  %.not.i1.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i1.i.i.i.i, label %bb.e, label %6

6:                                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  %7 = getelementptr inbounds nuw i8, ptr %i.aa, i64 89
  %8 = load i8, ptr %7, align 1, !tbaa !41
  %9 = freeze i8 %8
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aa)
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc28:                                         ; preds = %bb.e
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = invoke noundef signext i8 %i.af(ptr noundef nonnull align 8 dereferenceable(570) %i.aa, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !76

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %.noexc28, %6
  %.0.i.i.i.i.i = phi i8 [ %9, %6 ], [ %i.ag, %.noexc28 ]
  %10 = getelementptr inbounds nuw i8, ptr %i.v, i64 224
  %11 = zext i8 %.0.i.i.i.i.i to i16
  %12 = or disjoint i16 %11, 256
  store i16 %12, ptr %10, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i, %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 224
  store i8 46, ptr %i.ah, align 8, !tbaa !81
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.23, i64 noundef 0)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZN3ozz3log4LogVC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %4)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !60 ; 3 uses
  %i.al = load ptr, ptr %4, align 8, !tbaa !15, !nonnull !16, !align !17 ; 7 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !19
  %i.an = getelementptr i8, ptr %i.am, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !51
  %i.as = or i32 %i.ar, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ap, i32 noundef %i.as)
          to label %bb.i unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.at = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ak) #10
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull %i.ak, i64 noundef %i.at)
          to label %bb.i unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !19
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %i.al, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 4, ptr %i.az, align 8, !tbaa !78
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.24, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34 unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34: ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.bc = load float, ptr %i.bb, align 8, !tbaa !90
  %i.bd = fpext float %i.bc to double
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.al, double noundef %i.bd)
          to label %_ZNSolsEf.exit unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEf.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.25, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37 unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37: ; preds = %_ZNSolsEf.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 60
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !91
  %i.bi = fpext float %i.bh to double
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.be, double noundef %i.bi)
          to label %_ZNSolsEf.exit39 unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEf.exit39:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.25, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41 unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41: ; preds = %_ZNSolsEf.exit39
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !92
  %i.bn = fpext float %i.bm to double
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, double noundef %i.bn)
          to label %_ZNSolsEf.exit43 unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEf.exit43:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.26, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45 unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45: ; preds = %_ZNSolsEf.exit43
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 68
  %i.br = load float, ptr %i.bq, align 4, !tbaa !93
  %i.bs = fpext float %i.br to double
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, double noundef %i.bs)
          to label %_ZNSolsEf.exit47 unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEf.exit47:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull @.str.25, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49 unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49: ; preds = %_ZNSolsEf.exit47
  %i.bv = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !94
  %i.bx = fpext float %i.bw to double
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, double noundef %i.bx)
          to label %_ZNSolsEf.exit51 unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEf.exit51:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull @.str.25, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53 unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53: ; preds = %_ZNSolsEf.exit51
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 76
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !95
  %i.cc = fpext float %i.cb to double
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.by, double noundef %i.cc)
          to label %_ZNSolsEf.exit55 unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEf.exit55:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @.str.25, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57 unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57: ; preds = %_ZNSolsEf.exit55
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.cg = load float, ptr %i.cf, align 8, !tbaa !96
  %i.ch = fpext float %i.cg to double
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, double noundef %i.ch)
          to label %_ZNSolsEf.exit59 unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEf.exit59:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull @.str.27, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61 unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61: ; preds = %_ZNSolsEf.exit59
  %i.ck = getelementptr inbounds nuw i8, ptr %i.n, i64 84
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !97
  %i.cm = fpext float %i.cl to double
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, double noundef %i.cm)
          to label %_ZNSolsEf.exit63 unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEf.exit63:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull @.str.25, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65 unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65: ; preds = %_ZNSolsEf.exit63
  %i.cp = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.cq = load float, ptr %i.cp, align 8, !tbaa !98
  %i.cr = fpext float %i.cq to double
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, double noundef %i.cr)
          to label %_ZNSolsEf.exit67 unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEf.exit67:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull @.str.25, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69: ; preds = %_ZNSolsEf.exit67
  %i.cu = getelementptr inbounds nuw i8, ptr %i.n, i64 92
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !99
  %i.cw = fpext float %i.cv to double
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, double noundef %i.cw)
          to label %_ZNSolsEf.exit71 unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZNSolsEf.exit71:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !19
  %i.cz = getelementptr i8, ptr %i.cy, i64 -24
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = getelementptr inbounds i8, ptr %i.cx, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 240
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !34 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i, label %bb.j, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.j:                                             ; preds = %_ZNSolsEf.exit71
  invoke void @_ZSt16__throw_bad_castv() #11
          to label %.noexc73 unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc73:                                         ; preds = %bb.j
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNSolsEf.exit71
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %i.df = load i8, ptr %i.de, align 8, !tbaa !40
  %.not.i1.i.i = icmp eq i8 %i.df, 0
  br i1 %.not.i1.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 67
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !41
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dd)
          to label %.noexc74 unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc74:                                         ; preds = %bb.l
  %i.di = load ptr, ptr %i.dd, align 8, !tbaa !19
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = invoke noundef signext i8 %i.dk(ptr noundef nonnull align 8 dereferenceable(570) %i.dd, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc74, %bb.k
  %.0.i.i.i = phi i8 [ %i.dh, %bb.k ], [ %i.dl, %.noexc74 ]
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, i8 noundef signext %.0.i.i.i)
          to label %.noexc76 unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc76:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dm)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc76
end_hunk_0
