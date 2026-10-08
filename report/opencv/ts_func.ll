Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ts_func?download=true
inline.NumInlined: 3054
inline.NumDeleted: 870
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 703
loop-unroll.NumUnrolled: 777
begin_hunk_0_@_ZN6cvtest3addERKN2cv3MatEdS3_dNS0_7Scalar_IdEERS1_ib:bb.a
bb.g:                                             ; preds = %bb.f
  br i1 %i.e, label %bb.j, label %bb.o

bb.h:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.i:                                             ; preds = %bb.ag, %bb.z, %bb.u, %bb.q, %bb.o, %bb.f, %bb.d, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__func__._ZN6cvtest3addERKN2cv3MatEdS3_dNS0_7Scalar_IdEERS1_ib, ptr noundef nonnull @.str.35, i32 noundef 170) #31
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %20, align 8, !tbaa !29    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.m = load i64, ptr %i.k, align 8, !tbaa !26
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn126 = phi { ptr, i32 } [ %i.h, %bb.m ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.bn

bb.o:                                             ; preds = %bb.e, %bb.g
  %i.o = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %19)
          to label %bb.p unwind label %bb.i

bb.p:                                             ; preds = %bb.o
  br i1 %i.o, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.p = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %19)
          to label %bb.r unwind label %bb.i       ; 0 uses

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %22) #30
  %i.q = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(208) %22)
          to label %bb.s unwind label %bb.t       ; 0 uses

bb.s:                                             ; preds = %bb.r
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %bb.bn

bb.u:                                             ; preds = %bb.p, %bb.s, %bb.c
  %.096 = phi double [ %3, %bb.p ], [ 0.000000e+00, %bb.s ], [ %3, %bb.c ] ; 2 uses
  %.094 = phi double [ %1, %bb.p ], [ %3, %bb.s ], [ %1, %bb.c ]
  %i.s = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %19)
          to label %bb.v unwind label %bb.i

bb.v:                                             ; preds = %bb.u
  %i.t = fcmp oeq double %.096, 0.000000e+00
  %or.cond3 = or i1 %i.t, %i.s
  br i1 %or.cond3, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %23) #30
  %i.u = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(208) %23)
          to label %bb.x unwind label %bb.y       ; 0 uses

bb.x:                                             ; preds = %bb.w
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %bb.ag

bb.y:                                             ; preds = %bb.w
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %bb.bn

bb.z:                                             ; preds = %bb.v
  %i.w = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %19, i64 72
  %i.y = invoke noundef zeroext i1 @_ZN2cveqERKNS_8MatShapeES2_(ptr noundef nonnull align 4 dereferenceable(52) %i.w, ptr noundef nonnull align 4 dereferenceable(52) %i.x)
          to label %bb.aa unwind label %bb.i

bb.aa:                                            ; preds = %bb.z
  br i1 %i.y, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @__func__._ZN6cvtest3addERKN2cv3MatEdS3_dNS0_7Scalar_IdEERS1_ib, ptr noundef nonnull @.str.35, i32 noundef 185) #31
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

bb.af:                                            ; preds = %bb.ac
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %24, align 8, !tbaa !29   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.af
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !26
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.z, %bb.ae ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130 ], [ %i.aa, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  br label %bb.bn

bb.ag:                                            ; preds = %bb.aa, %bb.x
  %.197 = phi double [ 0.000000e+00, %bb.x ], [ %.096, %bb.aa ]
  %i.ag = icmp slt i32 %6, 0
  %i.ah = load i32, ptr %18, align 8              ; 2 uses
  %.095 = select i1 %i.ag, i32 %i.ah, i32 %6
  %i.ai = and i32 %i.ah, 4064
  %i.aj = add nuw nsw i32 %i.ai, 32
  %i.ak = or i32 %.095, -32
  %i.al = add nsw i32 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %18, i64 72
  invoke void @_ZN2cv3Mat6createERKNS_8MatShapeEi(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.am, i32 noundef %i.al)
          to label %bb.ah unwind label %bb.i

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store ptr %18, ptr %i.a, align 16, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %19, ptr %i.an, align 8, !tbaa !44
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %5, ptr %i.ao, align 16, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %i.ap, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %26) #30
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %26, i64 208 ; 2 uses
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr.1) #30
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %26, i64 416 ; 2 uses
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr.2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #30
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %27) #30
  %.ptr106.1 = getelementptr inbounds nuw i8, ptr %27, i64 208 ; 3 uses
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr106.1) #30
  %.ptr106.2 = getelementptr inbounds nuw i8, ptr %27, i64 416 ; 2 uses
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr106.2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #30
  invoke void @_ZN2cv15NAryMatIteratorC1EPPKNS_3MatEPS1_i(ptr noundef nonnull align 8 dereferenceable(64) %28, ptr noundef nonnull %i.a, ptr noundef nonnull %26, i32 noundef -1)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.aq = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !49 ; 3 uses
  %i.as = load i32, ptr %18, align 8, !tbaa !56
  %i.at = lshr i32 %i.as, 5
  %i.au = and i32 %i.at, 127                      ; 2 uses
  %i.av = add nuw nsw i32 %i.au, 1                ; 6 uses
  %i.aw = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %26)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.ax = trunc i64 %i.aw to i32                  ; 7 uses
  %.rhs.trunc = trunc nuw i32 %i.av to i8
  %i.ay = udiv i8 12, %.rhs.trunc
  %.zext = zext nneg i8 %i.ay to i32
  %i.az = icmp samesign ugt i32 %i.au, 11
  %i.ba = mul nuw nsw i32 %.zext, 144
  %i.bb = select i1 %i.az, i32 144, i32 %i.ba
  %.sroa.speculated150 = call i32 @llvm.smin.i32(i32 %i.bb, i32 %i.ax) ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !57
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.ar, label %bb.am

bb.ak:                                            ; preds = %bb.ah
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit162

bb.al:                                            ; preds = %bb.ai
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit162

bb.am:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @__func__._ZN6cvtest3addERKN2cv3MatEdS3_dNS0_7Scalar_IdEERS1_ib, ptr noundef nonnull @.str.35, i32 noundef 199) #31
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  unreachable

bb.ap:                                            ; preds = %bb.am
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

bb.aq:                                            ; preds = %bb.an
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %29, align 8, !tbaa !29   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %bb.aq
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !26
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134, %bb.ap
  %.pn108 = phi { ptr, i32 } [ %i.bh, %bb.ap ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134 ], [ %i.bi, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  br label %.loopexit162

bb.ar:                                            ; preds = %bb.aj
  %i.bo = shl nuw nsw i32 %i.av, 5
  %i.bp = add nsw i32 %i.bo, -26                  ; 4 uses
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %27, i32 noundef 1, i32 noundef %.sroa.speculated150, i32 noundef %i.bp)
          to label %bb.as unwind label %.loopexit.split-lp

bb.as:                                            ; preds = %bb.ar
  %i.bq = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %19)
          to label %bb.at unwind label %.loopexit.split-lp

bb.at:                                            ; preds = %bb.as
  br i1 %i.bq, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %.ptr106.1, i32 noundef 1, i32 noundef %.sroa.speculated150, i32 noundef %i.bp)
          to label %bb.av unwind label %.loopexit.split-lp

.loopexit162.split:                               ; preds = %.preheader160
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit162

.loopexit.split-lp:                               ; preds = %bb.ar, %bb.as, %bb.au, %bb.av, %bb.aw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit162

bb.av:                                            ; preds = %bb.au, %bb.at
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %.ptr106.2, i32 noundef 1, i32 noundef %.sroa.speculated150, i32 noundef %i.bp)
          to label %bb.aw unwind label %.loopexit.split-lp

bb.aw:                                            ; preds = %bb.av
  %i.br = getelementptr inbounds nuw i8, ptr %27, i64 440 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !58
  %i.bt = mul nsw i32 %.sroa.speculated150, %i.av
  invoke void @_ZN2cv15scalarToRawDataERKNS_7Scalar_IdEEPvii(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.bs, i32 noundef %i.bp, i32 noundef %i.bt)
          to label %.preheader161 unwind label %.loopexit.split-lp

.preheader161:                                    ; preds = %bb.aw
  %i.bu = icmp sgt i32 %i.ax, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %33, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %38, i64 16
  %exitcond210.not223 = icmp eq i64 %i.ar, 0      ; 2 uses
  br i1 %i.bu, label %.preheader161.split.us.preheader, label %.preheader161.split.preheader

.preheader161.split.preheader:                    ; preds = %.preheader161
  br i1 %exitcond210.not223, label %.split.us, label %.preheader160

.preheader161.split.us.preheader:                 ; preds = %.preheader161
  br i1 %exitcond210.not223, label %.split.us, label %.preheader160.us.preheader

.preheader161.split.us:                           ; preds = %._crit_edge170.us
  %i.ci = add i64 %.072.us224, 1                  ; 2 uses
  %exitcond210.not = icmp eq i64 %i.ci, %i.ar
  br i1 %exitcond210.not, label %.split.us, label %.preheader160.us.preheader, !llvm.loop !127

.preheader160.us.preheader:                       ; preds = %.preheader161.split.us.preheader, %.preheader161.split.us
  %.072.us224 = phi i64 [ %i.ci, %.preheader161.split.us ], [ 0, %.preheader161.split.us.preheader ]
  br label %.preheader160.us

.preheader160.us:                                 ; preds = %.preheader160.us.preheader, %bb.bg
  %indvars.iv201 = phi i32 [ %indvars.iv.next202, %bb.bg ], [ 0, %.preheader160.us.preheader ] ; 4 uses
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.bg ], [ %.sroa.speculated150, %.preheader160.us.preheader ] ; 4 uses
  %.071168.us = phi i32 [ %i.cu, %bb.bg ], [ 0, %.preheader160.us.preheader ] ; 8 uses
  %smin242 = call i32 @llvm.smin.i32(i32 %indvars.iv, i32 %i.ax)
  %i.cj = add i32 %smin242, %indvars.iv201
  %i.ck = mul i32 %i.av, %i.cj
  %umax243 = call i32 @llvm.umax.i32(i32 %i.ck, i32 1)
  %i.cl = sext i32 %umax243 to i64
  %i.cm = shl nsw i64 %i.cl, 3                    ; 3 uses
  %smin = call i32 @llvm.smin.i32(i32 %indvars.iv, i32 %i.ax)
  %i.cn = add i32 %smin, %indvars.iv201
  %i.co = mul i32 %i.av, %i.cn
  %umax = call i32 @llvm.umax.i32(i32 %i.co, i32 1)
  %i.cp = sext i32 %umax to i64
  %i.cq = shl nsw i64 %i.cp, 3                    ; 2 uses
  %smin207 = call i32 @llvm.smin.i32(i32 %indvars.iv, i32 %i.ax)
  %i.cr = add i32 %smin207, %indvars.iv201
  %i.cs = mul i32 %i.av, %i.cr                    ; 4 uses
  %i.ct = call i32 @llvm.umax.i32(i32 %i.cs, i32 1) ; 3 uses
  %umax208 = sext i32 %i.ct to i64                ; 12 uses
  %i.cu = add nuw nsw i32 %.071168.us, %.sroa.speculated150 ; 3 uses
  %.sroa.speculated.us = call i32 @llvm.smin.i32(i32 %i.cu, i32 %i.ax) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30, !noalias !153
  store i64 9223372034707292160, ptr %16, align 8, !noalias !153
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30, !noalias !153
  store i32 %.071168.us, ptr %17, align 4, !tbaa !60, !noalias !153
  store i32 %.sroa.speculated.us, ptr %i.bv, align 4, !tbaa !61, !noalias !153
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %31, ptr noundef nonnull align 8 dereferenceable(208) %26, ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 4 dereferenceable(8) %17)
          to label %bb.ax unwind label %.split172.us

bb.ax:                                            ; preds = %.preheader160.us
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30, !noalias !153
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30, !noalias !153
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30, !noalias !154
  store i64 9223372034707292160, ptr %14, align 8, !noalias !154
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30, !noalias !154
  store i32 %.071168.us, ptr %15, align 4, !tbaa !60, !noalias !154
  store i32 %.sroa.speculated.us, ptr %i.bw, align 4, !tbaa !61, !noalias !154
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %32, ptr noundef nonnull align 8 dereferenceable(208) %.ptr.2, ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 4 dereferenceable(8) %15)
          to label %bb.ay unwind label %.split174.us

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30, !noalias !154
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30, !noalias !154
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #30
  %i.cv = sub nsw i32 %.sroa.speculated.us, %.071168.us ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30, !noalias !155
  store i64 9223372034707292160, ptr %12, align 8, !noalias !155
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30, !noalias !155
  store i32 0, ptr %13, align 4, !tbaa !60, !noalias !155
  store i32 %i.cv, ptr %i.bx, align 4, !tbaa !61, !noalias !155
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %33, ptr noundef nonnull align 8 dereferenceable(208) %27, ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(8) %13)
          to label %bb.az unwind label %.split177.us

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30, !noalias !155
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30, !noalias !155
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #30
  store i64 0, ptr %i.bz, align 8
  store i32 33619968, ptr %34, align 8, !tbaa !41
  store ptr %33, ptr %i.by, align 8, !tbaa !42
  %i.cw = load i32, ptr %33, align 8, !tbaa !56
  %i.cx = and i32 %i.cw, 4095
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %31, ptr noundef nonnull align 8 dereferenceable(24) %34, i32 noundef %i.cx, double noundef %.094, double noundef 0.000000e+00)
          to label %bb.ba unwind label %.split180.us

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  %i.cy = load ptr, ptr %i.ca, align 8, !tbaa !58 ; 17 uses
  %i.cz = load ptr, ptr %i.br, align 8, !tbaa !58 ; 14 uses
  %i.da = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %19)
          to label %bb.bb unwind label %.split183.us

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.da, label %.preheader158.us, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30, !noalias !156
  store i64 9223372034707292160, ptr %10, align 8, !noalias !156
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30, !noalias !156
  store i32 %.071168.us, ptr %11, align 4, !tbaa !60, !noalias !156
  store i32 %.sroa.speculated.us, ptr %i.cb, align 4, !tbaa !61, !noalias !156
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %35, ptr noundef nonnull align 8 dereferenceable(208) %.ptr.1, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 4 dereferenceable(8) %11)
          to label %bb.bd unwind label %.split186.us

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30, !noalias !156
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30, !noalias !156
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30, !noalias !157
  store i64 9223372034707292160, ptr %8, align 8, !noalias !157
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30, !noalias !157
  store i32 0, ptr %9, align 4, !tbaa !60, !noalias !157
  store i32 %i.cv, ptr %i.cc, align 4, !tbaa !61, !noalias !157
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %36, ptr noundef nonnull align 8 dereferenceable(208) %.ptr106.1, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9)
          to label %bb.be unwind label %.split189.us

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !157
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #30
  store i64 0, ptr %i.ce, align 8
  store i32 33619968, ptr %37, align 8, !tbaa !41
  store ptr %36, ptr %i.cd, align 8, !tbaa !42
  %i.db = load i32, ptr %36, align 8, !tbaa !56
  %i.dc = and i32 %i.db, 4095
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %35, ptr noundef nonnull align 8 dereferenceable(24) %37, i32 noundef %i.dc, double noundef %.197, double noundef 0.000000e+00)
          to label %bb.bf unwind label %.split192.us

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #30
  %i.dd = load ptr, ptr %i.cf, align 8, !tbaa !58 ; 6 uses
  %.not = icmp eq i32 %.sroa.speculated.us, %.071168.us
  br i1 %.not, label %._crit_edge.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.bf
  %min.iters.check254 = icmp ult i32 %i.cs, 4
  br i1 %min.iters.check254, label %.lr.ph.us.preheader271, label %vector.memcheck241

vector.memcheck241:                               ; preds = %.lr.ph.us.preheader
  %scevgep244 = getelementptr i8, ptr %i.cy, i64 %i.cm ; 2 uses
  %scevgep245 = getelementptr i8, ptr %i.dd, i64 %i.cm
  %scevgep246 = getelementptr i8, ptr %i.cz, i64 %i.cm
  %bound0247 = icmp ult ptr %i.cy, %scevgep245
  %bound1248 = icmp ult ptr %i.dd, %scevgep244
  %found.conflict249 = and i1 %bound0247, %bound1248
  %bound0250 = icmp ult ptr %i.cy, %scevgep246
  %bound1251 = icmp ult ptr %i.cz, %scevgep244
  %found.conflict252 = and i1 %bound0250, %bound1251
  %conflict.rdx = or i1 %found.conflict249, %found.conflict252
  br i1 %conflict.rdx, label %.lr.ph.us.preheader271, label %vector.ph255

vector.ph255:                                     ; preds = %vector.memcheck241
  %n.vec256 = and i64 %umax208, -4                ; 3 uses
  br label %vector.body257

vector.body257:                                   ; preds = %vector.body257, %vector.ph255
  %index258 = phi i64 [ 0, %vector.ph255 ], [ %index.next265, %vector.body257 ] ; 4 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %index258 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load259 = load <2 x double>, ptr %i.de, align 8, !tbaa !38, !alias.scope !158
  %wide.load260 = load <2 x double>, ptr %i.df, align 8, !tbaa !38, !alias.scope !158
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %index258 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load261 = load <2 x double>, ptr %i.dg, align 8, !tbaa !38, !alias.scope !159
  %wide.load262 = load <2 x double>, ptr %i.dh, align 8, !tbaa !38, !alias.scope !159
  %i.di = fadd <2 x double> %wide.load259, %wide.load261
  %i.dj = fadd <2 x double> %wide.load260, %wide.load262
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %index258 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %wide.load263 = load <2 x double>, ptr %i.dk, align 8, !tbaa !38, !alias.scope !160, !noalias !161
  %wide.load264 = load <2 x double>, ptr %i.dl, align 8, !tbaa !38, !alias.scope !160, !noalias !161
  %i.dm = fadd <2 x double> %wide.load263, %i.di
  %i.dn = fadd <2 x double> %wide.load264, %i.dj
  store <2 x double> %i.dm, ptr %i.dk, align 8, !tbaa !38, !alias.scope !160, !noalias !161
  store <2 x double> %i.dn, ptr %i.dl, align 8, !tbaa !38, !alias.scope !160, !noalias !161
  %index.next265 = add nuw i64 %index258, 4       ; 2 uses
  %i.do = icmp eq i64 %index.next265, %n.vec256
  br i1 %i.do, label %middle.block266, label %vector.body257, !llvm.loop !142

middle.block266:                                  ; preds = %vector.body257
  %cmp.n267 = icmp eq i64 %n.vec256, %umax208
  br i1 %cmp.n267, label %._crit_edge.us, label %.lr.ph.us.preheader271

.lr.ph.us.preheader271:                           ; preds = %vector.memcheck241, %.lr.ph.us.preheader, %middle.block266
  %.1163.us.ph = phi i64 [ 0, %vector.memcheck241 ], [ 0, %.lr.ph.us.preheader ], [ %n.vec256, %middle.block266 ] ; 6 uses
  %i.dp = and i32 %i.ct, 1
  %lcmp.mod.not = icmp eq i32 %i.dp, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader271
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.1163.us.ph
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !38
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.1163.us.ph
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !38
  %i.du = fadd double %i.dr, %i.dt
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.1163.us.ph ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !38
  %i.dx = fadd double %i.dw, %i.du
  store double %i.dx, ptr %i.dv, align 8, !tbaa !38
  %i.dy = or disjoint i64 %.1163.us.ph, 1
  br label %.lr.ph.us.prol.loopexit

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader271
  %.1163.us.unr = phi i64 [ %.1163.us.ph, %.lr.ph.us.preheader271 ], [ %i.dy, %.lr.ph.us.prol ]
  %i.dz = add nsw i64 %umax208, -1
  %i.ea = icmp eq i64 %.1163.us.ph, %i.dz
  br i1 %i.ea, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.1163.us = phi i64 [ %i.es, %.lr.ph.us ], [ %.1163.us.unr, %.lr.ph.us.prol.loopexit ] ; 5 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.1163.us
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !38
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.1163.us
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !38
  %i.ef = fadd double %i.ec, %i.ee
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.1163.us ; 2 uses
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !38
  %i.ei = fadd double %i.eh, %i.ef
  store double %i.ei, ptr %i.eg, align 8, !tbaa !38
  %i.ej = add nuw i64 %.1163.us, 1                ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.ej
  %i.el = load double, ptr %i.ek, align 8, !tbaa !38
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.ej
  %i.en = load double, ptr %i.em, align 8, !tbaa !38
  %i.eo = fadd double %i.el, %i.en
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.ej ; 2 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !38
  %i.er = fadd double %i.eq, %i.eo
  store double %i.er, ptr %i.ep, align 8, !tbaa !38
  %i.es = add nuw i64 %.1163.us, 2                ; 2 uses
  %exitcond203.not.1 = icmp eq i64 %i.es, %umax208
  br i1 %exitcond203.not.1, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !143

._crit_edge.us:                                   ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %middle.block266, %bb.bf
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  br label %.loopexit159.us

.lr.ph165.us:                                     ; preds = %.lr.ph165.us.prol.loopexit, %.lr.ph165.us
  %.0164.us = phi i64 [ %i.fq, %.lr.ph165.us ], [ %.0164.us.unr, %.lr.ph165.us.prol.loopexit ] ; 6 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.0164.us
  %i.eu = load double, ptr %i.et, align 8, !tbaa !38
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.0164.us ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !38
  %i.ex = fadd double %i.eu, %i.ew
  store double %i.ex, ptr %i.ev, align 8, !tbaa !38
  %i.ey = add nuw i64 %.0164.us, 1                ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.ey
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !38
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.ey ; 2 uses
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !38
  %i.fd = fadd double %i.fa, %i.fc
  store double %i.fd, ptr %i.fb, align 8, !tbaa !38
  %i.fe = add nuw i64 %.0164.us, 2                ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.fe
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !38
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.fe ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !38
  %i.fj = fadd double %i.fg, %i.fi
  store double %i.fj, ptr %i.fh, align 8, !tbaa !38
  %i.fk = add nuw i64 %.0164.us, 3                ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.fk
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !38
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.fk ; 2 uses
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !38
  %i.fp = fadd double %i.fm, %i.fo
  store double %i.fp, ptr %i.fn, align 8, !tbaa !38
  %i.fq = add nuw i64 %.0164.us, 4                ; 2 uses
  %exitcond206.not.3 = icmp eq i64 %i.fq, %umax208
  br i1 %exitcond206.not.3, label %.loopexit159.us, label %.lr.ph165.us, !llvm.loop !144

.loopexit159.us:                                  ; preds = %.lr.ph165.us.prol.loopexit, %.lr.ph165.us, %middle.block238, %.preheader158.us, %._crit_edge.us
  %i.fr = icmp ne i32 %.sroa.speculated.us, %.071168.us
  %or.cond198 = select i1 %7, i1 %i.fr, i1 false
  br i1 %or.cond198, label %.lr.ph167.us.preheader, label %.loopexit.us

.lr.ph167.us.preheader:                           ; preds = %.loopexit159.us
  %min.iters.check = icmp ult i32 %i.cs, 4
  br i1 %min.iters.check, label %.lr.ph167.us.preheader269, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph167.us.preheader
  %n.vec = and i64 %umax208, -4                   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %index ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.fs, align 8, !tbaa !38
  %wide.load225 = load <2 x double>, ptr %i.ft, align 8, !tbaa !38
  %i.fu = call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load)
  %i.fv = call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load225)
  store <2 x double> %i.fu, ptr %i.fs, align 8, !tbaa !38
  store <2 x double> %i.fv, ptr %i.ft, align 8, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fw = icmp eq i64 %index.next, %n.vec
  br i1 %i.fw, label %middle.block, label %vector.body, !llvm.loop !145

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %umax208
  br i1 %cmp.n, label %.loopexit.us, label %.lr.ph167.us.preheader269

.lr.ph167.us.preheader269:                        ; preds = %.lr.ph167.us.preheader, %middle.block
  %.2166.us.ph = phi i64 [ 0, %.lr.ph167.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph167.us

.lr.ph167.us:                                     ; preds = %.lr.ph167.us.preheader269, %.lr.ph167.us
  %.2166.us = phi i64 [ %i.ga, %.lr.ph167.us ], [ %.2166.us.ph, %.lr.ph167.us.preheader269 ] ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.2166.us ; 2 uses
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !38
  %i.fz = call double @llvm.fabs.f64(double %i.fy)
  store double %i.fz, ptr %i.fx, align 8, !tbaa !38
  %i.ga = add nuw i64 %.2166.us, 1                ; 2 uses
  %exitcond209.not = icmp eq i64 %i.ga, %umax208
  br i1 %exitcond209.not, label %.loopexit.us, label %.lr.ph167.us, !llvm.loop !146

.loopexit.us:                                     ; preds = %.lr.ph167.us, %middle.block, %.loopexit159.us
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #30
  store i64 0, ptr %i.ch, align 8
  store i32 33619968, ptr %38, align 8, !tbaa !41
  store ptr %32, ptr %i.cg, align 8, !tbaa !42
  %i.gb = load i32, ptr %32, align 8, !tbaa !56
  %i.gc = and i32 %i.gb, 4095
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %33, ptr noundef nonnull align 8 dereferenceable(24) %38, i32 noundef %i.gc, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.bg unwind label %.split195.us

bb.bg:                                            ; preds = %.loopexit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  %i.gd = icmp slt i32 %i.cu, %i.ax
  %indvars.iv.next = add i32 %indvars.iv, %.sroa.speculated150
  %indvars.iv.next202 = sub i32 %indvars.iv201, %.sroa.speculated150
  br i1 %i.gd, label %.preheader160.us, label %._crit_edge170.us, !llvm.loop !147

.preheader158.us:                                 ; preds = %bb.bb
  %.not199 = icmp eq i32 %.sroa.speculated.us, %.071168.us
  br i1 %.not199, label %.loopexit159.us, label %.lr.ph165.us.preheader

.lr.ph165.us.preheader:                           ; preds = %.preheader158.us
  %min.iters.check228 = icmp ult i32 %i.cs, 4
  br i1 %min.iters.check228, label %.lr.ph165.us.preheader270, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph165.us.preheader
  %scevgep = getelementptr i8, ptr %i.cy, i64 %i.cq
  %scevgep226 = getelementptr i8, ptr %i.cz, i64 %i.cq
  %bound0 = icmp ult ptr %i.cy, %scevgep226
  %bound1 = icmp ult ptr %i.cz, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph165.us.preheader270, label %vector.ph229

vector.ph229:                                     ; preds = %vector.memcheck
  %n.vec230 = and i64 %umax208, -4                ; 3 uses
  br label %vector.body231

vector.body231:                                   ; preds = %vector.body231, %vector.ph229
  %index232 = phi i64 [ 0, %vector.ph229 ], [ %index.next237, %vector.body231 ] ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %index232 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %wide.load233 = load <2 x double>, ptr %i.ge, align 8, !tbaa !38, !alias.scope !162
  %wide.load234 = load <2 x double>, ptr %i.gf, align 8, !tbaa !38, !alias.scope !162
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %index232 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 2 uses
  %wide.load235 = load <2 x double>, ptr %i.gg, align 8, !tbaa !38, !alias.scope !163, !noalias !162
  %wide.load236 = load <2 x double>, ptr %i.gh, align 8, !tbaa !38, !alias.scope !163, !noalias !162
  %i.gi = fadd <2 x double> %wide.load233, %wide.load235
  %i.gj = fadd <2 x double> %wide.load234, %wide.load236
  store <2 x double> %i.gi, ptr %i.gg, align 8, !tbaa !38, !alias.scope !163, !noalias !162
  store <2 x double> %i.gj, ptr %i.gh, align 8, !tbaa !38, !alias.scope !163, !noalias !162
  %index.next237 = add nuw i64 %index232, 4       ; 2 uses
  %i.gk = icmp eq i64 %index.next237, %n.vec230
  br i1 %i.gk, label %middle.block238, label %vector.body231, !llvm.loop !151

middle.block238:                                  ; preds = %vector.body231
  %cmp.n239 = icmp eq i64 %n.vec230, %umax208
  br i1 %cmp.n239, label %.loopexit159.us, label %.lr.ph165.us.preheader270

.lr.ph165.us.preheader270:                        ; preds = %vector.memcheck, %.lr.ph165.us.preheader, %middle.block238
  %.0164.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph165.us.preheader ], [ %n.vec230, %middle.block238 ] ; 3 uses
  %xtraiter273 = and i64 %umax208, 3
  %i.gl = and i32 %i.ct, 3
  %lcmp.mod274.not = icmp eq i32 %i.gl, 0
  br i1 %lcmp.mod274.not, label %.lr.ph165.us.prol.loopexit, label %.lr.ph165.us.prol

.lr.ph165.us.prol:                                ; preds = %.lr.ph165.us.preheader270, %.lr.ph165.us.prol
  %.0164.us.prol = phi i64 [ %i.gr, %.lr.ph165.us.prol ], [ %.0164.us.ph, %.lr.ph165.us.preheader270 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph165.us.prol ], [ 0, %.lr.ph165.us.preheader270 ]
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.0164.us.prol
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !38
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.0164.us.prol ; 2 uses
  %i.gp = load double, ptr %i.go, align 8, !tbaa !38
  %i.gq = fadd double %i.gn, %i.gp
  store double %i.gq, ptr %i.go, align 8, !tbaa !38
  %i.gr = add nuw i64 %.0164.us.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter273
  br i1 %prol.iter.cmp.not, label %.lr.ph165.us.prol.loopexit, label %.lr.ph165.us.prol, !llvm.loop !152

.lr.ph165.us.prol.loopexit:                       ; preds = %.lr.ph165.us.prol, %.lr.ph165.us.preheader270
  %.0164.us.unr = phi i64 [ %.0164.us.ph, %.lr.ph165.us.preheader270 ], [ %i.gr, %.lr.ph165.us.prol ]
  %i.gs = sub nsw i64 %.0164.us.ph, %umax208
  %i.gt = icmp ugt i64 %i.gs, -4
  br i1 %i.gt, label %.loopexit159.us, label %.lr.ph165.us

._crit_edge170.us:                                ; preds = %bb.bg
  %i.gu = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %28)
          to label %.preheader161.split.us unwind label %.loopexit162.split.us, !llvm.loop !127 ; 0 uses

.split172.us:                                     ; preds = %.preheader160.us
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.split174.us:                                     ; preds = %bb.ax
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.split177.us:                                     ; preds = %bb.ay
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.split180.us:                                     ; preds = %bb.az
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  br label %bb.bj

.split183.us:                                     ; preds = %bb.ba
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.split186.us:                                     ; preds = %bb.bc
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.split189.us:                                     ; preds = %bb.bd
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.split192.us:                                     ; preds = %bb.be
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #30
  br label %bb.bh

.split195.us:                                     ; preds = %.loopexit.us
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #30
  br label %bb.bj

.loopexit162.split.us:                            ; preds = %._crit_edge170.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit162

.preheader161.split:                              ; preds = %.preheader160
  %i.he = add i64 %.072222, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.he, %i.ar
  br i1 %exitcond.not, label %.split.us, label %.preheader160, !llvm.loop !127

.preheader160:                                    ; preds = %.preheader161.split.preheader, %.preheader161.split
  %.072222 = phi i64 [ %i.he, %.preheader161.split ], [ 0, %.preheader161.split.preheader ]
  %i.hf = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %28)
          to label %.preheader161.split unwind label %.loopexit162.split, !llvm.loop !127 ; 0 uses

bb.bh:                                            ; preds = %.split192.us, %.split189.us
  %.pn112.pn = phi { ptr, i32 } [ %i.hc, %.split192.us ], [ %i.hb, %.split189.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #30
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.split186.us
  %.pn112.pn.pn = phi { ptr, i32 } [ %.pn112.pn, %bb.bh ], [ %i.ha, %.split186.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  br label %bb.bj

bb.bj:                                            ; preds = %.split183.us, %bb.bi, %.split195.us, %.split180.us
  %.pn116.pn.pn = phi { ptr, i32 } [ %i.gy, %.split180.us ], [ %i.hd, %.split195.us ], [ %.pn112.pn.pn, %bb.bi ], [ %i.gz, %.split183.us ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #30
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.split177.us
  %.pn116.pn.pn.pn = phi { ptr, i32 } [ %.pn116.pn.pn, %bb.bj ], [ %i.gx, %.split177.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #30
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.split174.us
  %.pn116.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn116.pn.pn.pn, %bb.bk ], [ %i.gw, %.split174.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #30
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.split172.us
  %.pn116.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn116.pn.pn.pn.pn, %bb.bl ], [ %i.gv, %.split172.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  br label %.loopexit162

.split.us:                                        ; preds = %.preheader161.split, %.preheader161.split.us, %.preheader161.split.preheader, %.preheader161.split.us.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  %i.hg = getelementptr inbounds nuw i8, ptr %27, i64 416
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hg) #30
  %i.hh = getelementptr inbounds nuw i8, ptr %27, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hh) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  %i.hi = getelementptr inbounds nuw i8, ptr %26, i64 416
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hi) #30
  %i.hj = getelementptr inbounds nuw i8, ptr %26, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hj) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  ret void

.loopexit162:                                     ; preds = %.loopexit.split-lp, %.loopexit162.split.us, %.loopexit162.split, %bb.al, %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %bb.ak
  %.pn116.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.ak ], [ %i.bg, %bb.al ], [ %.pn116.pn.pn.pn.pn.pn, %bb.bm ], [ %.pn108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit162.split ], [ %lpad.loopexit.us, %.loopexit162.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  %i.hk = getelementptr inbounds nuw i8, ptr %27, i64 416
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hk) #30
  %i.hl = getelementptr inbounds nuw i8, ptr %27, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hl) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  %i.hm = getelementptr inbounds nuw i8, ptr %26, i64 416
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hm) #30
  %i.hn = getelementptr inbounds nuw i8, ptr %26, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hn) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.bn

bb.bn:                                            ; preds = %.loopexit162, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %bb.y, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i
  %.pn126.pn = phi { ptr, i32 } [ %.pn126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn116.pn.pn.pn.pn.pn.pn.pn.pn, %.loopexit162 ], [ %i.g, %bb.i ], [ %i.v, %bb.y ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ %i.r, %bb.t ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #30
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.h
  %.pn126.pn.pn = phi { ptr, i32 } [ %.pn126.pn, %bb.bn ], [ %i.f, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  resume { ptr, i32 } %.pn126.pn.pn
}

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #10

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #10

declare noundef zeroext i1 @_ZN2cveqERKNS_8MatShapeES2_(ptr noundef nonnull align 4 dereferenceable(52), ptr noundef nonnull align 4 dereferenceable(52)) local_unnamed_addr #10

declare void @_ZN2cv3Mat6createERKNS_8MatShapeEi(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(52), i32 noundef) local_unnamed_addr #10

declare void @_ZN2cv15NAryMatIteratorC1EPPKNS_3MatEPS1_i(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #10

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #10

declare void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @_ZN2cv15scalarToRawDataERKNS_7Scalar_IdEEPvii(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6cvtest7convertERKN2cv3MatERKNS0_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %6 = alloca %"class.cv::Scalar_", align 8       ; 5 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %i.a = alloca [3 x ptr], align 16               ; 7 uses
  %9 = alloca [2 x %"class.cv::Mat"], align 16    ; 14 uses
  %10 = alloca %"class.cv::NAryMatIterator", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.b = icmp slt i32 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c
end_hunk_0
