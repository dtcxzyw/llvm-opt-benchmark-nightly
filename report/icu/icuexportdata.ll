Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/icuexportdata?download=true
inline.NumInlined: 823
inline.NumDeleted: 326
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z20dumpScriptExtensionsP8_IO_FILE:bb.a
bb.w:                                             ; preds = %bb.l
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.y:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.z:                                             ; preds = %bb.bd
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.aa:                                            ; preds = %.lr.ph131, %_ZN6icu_786header21USetCodePointIteratorppEv.exit
  %i.ba = phi ptr [ %i.p, %.lr.ph131 ], [ %i.es, %_ZN6icu_786header21USetCodePointIteratorppEv.exit ]
  %i.bb = phi i32 [ %i.ai, %.lr.ph131 ], [ %i.fm, %_ZN6icu_786header21USetCodePointIteratorppEv.exit ] ; 3 uses
  %i.bc = invoke i32 @umutablecptrie_get_78(ptr noundef %i.ba, i32 noundef %i.bb)
          to label %bb.ab unwind label %bb.af     ; 4 uses

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.bd = invoke i32 @uscript_getScriptExtensions_78(i32 noundef %i.bb, ptr noundef nonnull %i.c, i32 noundef 32, ptr noundef nonnull %i.e)
          to label %bb.ac unwind label %bb.ag     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 358, ptr noundef %i.h)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph.preheader, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit

.lr.ph.preheader:                                 ; preds = %bb.ad
  %wide.trip.count = zext nneg i32 %i.bd to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %.pre137 = load ptr, ptr %7, align 8, !tbaa !56 ; 4 uses
  %.not.i.i = icmp eq ptr %.pre137, %i.cm
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge
  %i.bf = ptrtoint ptr %i.cm to i64
  %i.bg = ptrtoint ptr %.pre137 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 1
  %i.bj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = shl nuw nsw i64 %i.bj, 1
  %i.bl = xor i64 %i.bk, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %.pre137, ptr nonnull %i.cm, i64 noundef %i.bl)
          to label %.noexc91 unwind label %bb.an

.noexc91:                                         ; preds = %bb.ae
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %.pre137, ptr nonnull %i.cm)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit unwind label %bb.an

bb.af:                                            ; preds = %bb.aa
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ag:                                            ; preds = %bb.ac, %bb.ab
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %i.bo = phi ptr [ null, %.lr.ph.preheader ], [ %i.ck, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 5 uses
  %i.bp = phi ptr [ null, %.lr.ph.preheader ], [ %i.cl, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 3 uses
  %i.bq = phi ptr [ null, %.lr.ph.preheader ], [ %i.cm, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !58
  %i.bt = trunc i32 %i.bs to i16                  ; 2 uses
  %.not.i.i93 = icmp eq ptr %i.bq, %i.bp
  br i1 %.not.i.i93, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph
  store i16 %i.bt, ptr %i.bq, align 2, !tbaa !60
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 2 ; 2 uses
  store ptr %i.bu, ptr %i.al, align 8, !tbaa !62
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.ai:                                            ; preds = %.lr.ph
  %i.bv = ptrtoint ptr %i.bp to i64
  %i.bw = ptrtoint ptr %i.bo to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 6 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775806
  br i1 %i.by, label %bb.aj, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
          to label %.noexc94 unwind label %.loopexit.split-lp

.noexc94:                                         ; preds = %bb.aj
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ai
  %i.bz = ashr exact i64 %i.bx, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.ca = add i64 %.sroa.speculated.i.i.i.i, %i.bz ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bz
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 4611686018427387903)
  %i.cd = select i1 %i.cb, i64 4611686018427387903, i64 %i.cc ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ce = shl nuw nsw i64 %i.cd, 1
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #28
          to label %.noexc95 unwind label %.loopexit ; 5 uses

.noexc95:                                         ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.bx ; 2 uses
  store i16 %i.bt, ptr %i.cg, align 2, !tbaa !60
  %i.ch = icmp sgt i64 %i.bx, 0
  br i1 %i.ch, label %bb.ak, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.ak:                                            ; preds = %.noexc95
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cf, ptr align 2 %i.bo, i64 %i.bx, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ak, %.noexc95
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 2 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bx) #26
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.al, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  store ptr %i.cf, ptr %7, align 8, !tbaa !64
  store ptr %i.ci, ptr %i.al, align 8, !tbaa !62
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.cd ; 2 uses
  store ptr %i.cj, ptr %i.am, align 8, !tbaa !65
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, %bb.ah
  %i.ck = phi ptr [ %i.cf, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.bo, %bb.ah ]
  %i.cl = phi ptr [ %i.cj, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.bp, %bb.ah ]
  %i.cm = phi ptr [ %i.ci, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.bu, %bb.ah ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !66

.loopexit:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.loopexit.split-lp:                               ; preds = %bb.aj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit: ; preds = %bb.ad, %._crit_edge, %.noexc91
  %or.cond = icmp ugt i32 %i.bc, 1
  br i1 %or.cond, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit
  %i.cn = load ptr, ptr %7, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.co = trunc i32 %i.bc to i16
  store i16 %i.co, ptr %i.d, align 2, !tbaa !60
  %i.cp = invoke ptr @_ZNSt6vectorItSaItEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKtS1_EEOt(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.cn, ptr noundef nonnull align 2 dereferenceable(2) %i.d)
          to label %_ZNSt6vectorItSaItEE6insertEN9__gnu_cxx17__normal_iteratorIPKtS1_EEOt.exit unwind label %bb.ao ; 0 uses

_ZNSt6vectorItSaItEE6insertEN9__gnu_cxx17__normal_iteratorIPKtS1_EEOt.exit: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.ap

bb.an:                                            ; preds = %.noexc91, %bb.ae
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.ao:                                            ; preds = %bb.am
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.bj

bb.ap:                                            ; preds = %_ZNSt6vectorItSaItEE6insertEN9__gnu_cxx17__normal_iteratorIPKtS1_EEOt.exit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEvT_S7_.exit
  %i.cs = load ptr, ptr %i.an, align 8, !tbaa !67 ; 8 uses
  %i.ct = load ptr, ptr %4, align 8, !tbaa !70    ; 3 uses
  %.not70125.not = icmp eq ptr %i.cs, %i.ct
  br i1 %.not70125.not, label %.critedge, label %.lr.ph128

.lr.ph128:                                        ; preds = %bb.ap
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = sdiv exact i64 %i.cw, 24                ; 2 uses
  %i.cy = load ptr, ptr %i.al, align 8, !tbaa !62
  %i.cz = load ptr, ptr %7, align 8, !tbaa !64    ; 2 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph128, %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread113
  %.047126 = phi i64 [ 0, %.lr.ph128 ], [ %i.dl, %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread113 ] ; 4 uses
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %.047126 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !62 ; 2 uses
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !64 ; 3 uses
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = icmp eq i64 %i.dj, %i.dc
  br i1 %i.dk, label %bb.ar, label %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread113

bb.ar:                                            ; preds = %bb.aq
  %.not.not.i.i.i.i.i = icmp eq ptr %i.df, %i.dg
  br i1 %.not.not.i.i.i.i.i, label %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread, label %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit

_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit:        ; preds = %bb.ar
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.dg, ptr %i.cz, i64 %i.dc)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i, label %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread, label %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread113

.loopexit114:                                     ; preds = %_ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit, %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i, %bb.ax
  %lpad.loopexit116 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.loopexit.split-lp115:                            ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp117 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread113: ; preds = %bb.aq, %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit
  %i.dl = add nuw i64 %.047126, 1                 ; 2 uses
  %exitcond135.not = icmp eq i64 %i.dl, %i.cx
  br i1 %exitcond135.not, label %.critedge, label %bb.aq, !llvm.loop !71

.critedge:                                        ; preds = %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread113, %bb.ap
  %.047.lcssa = phi i64 [ 0, %bb.ap ], [ %i.cx, %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread113 ]
  %i.dm = load ptr, ptr %i.ao, align 8, !tbaa !72
  %.not.i = icmp eq ptr %i.cs, %i.dm
  br i1 %.not.i, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %.critedge
  %i.dn = load ptr, ptr %i.al, align 8, !tbaa !62 ; 2 uses
  %i.do = load ptr, ptr %7, align 8, !tbaa !64    ; 2 uses
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.dn, %i.do
  br i1 %.not.i.i.i.i.i, label %.noexc98, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ds = icmp ugt i64 %i.dr, 9223372036854775806
  br i1 %i.ds, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i, !prof !73

.noexc.i.i.i:                                     ; preds = %bb.at
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc97 unwind label %.loopexit.split-lp115

.noexc97:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.at
  %i.dt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #28
          to label %.noexc98 unwind label %.loopexit114

.noexc98:                                         ; preds = %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i, %bb.as
  %i.du = phi ptr [ null, %bb.as ], [ %i.dt, %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.du, ptr %i.cs, align 8, !tbaa !64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !62
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dr
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !65
  %i.dy = load ptr, ptr %7, align 8, !tbaa !56    ; 4 uses
  %i.dz = load ptr, ptr %i.al, align 8, !tbaa !56
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dy to i64               ; 2 uses
  %i.ec = sub i64 %i.ea, %i.eb                    ; 4 uses
  %i.ed = icmp sgt i64 %i.ec, 2
  br i1 %i.ed, label %bb.au, label %bb.av, !prof !74

bb.au:                                            ; preds = %.noexc98
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.du, ptr align 2 %i.dy, i64 %i.ec, i1 false)
  br label %_ZNSt6vectorItSaItEEC2ERKS1_.exit.i

bb.av:                                            ; preds = %.noexc98
  %i.ee = icmp eq i64 %i.ec, 2
  br i1 %i.ee, label %bb.aw, label %_ZNSt6vectorItSaItEEC2ERKS1_.exit.i

bb.aw:                                            ; preds = %bb.av
  %i.ef = load i16, ptr %i.dy, align 2, !tbaa !60
  store i16 %i.ef, ptr %i.du, align 2, !tbaa !60
  br label %_ZNSt6vectorItSaItEEC2ERKS1_.exit.i

_ZNSt6vectorItSaItEEC2ERKS1_.exit.i:              ; preds = %bb.aw, %bb.av, %bb.au
  %i.eg = getelementptr inbounds i8, ptr %i.du, i64 %i.ec
  store ptr %i.eg, ptr %i.dv, align 8, !tbaa !62
  %i.eh = load ptr, ptr %i.an, align 8, !tbaa !67
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  store ptr %i.ei, ptr %i.an, align 8, !tbaa !67
  br label %_ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit

bb.ax:                                            ; preds = %.critedge
  invoke void @_ZNSt6vectorIS_ItSaItEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %._ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit_crit_edge unwind label %.loopexit114

._ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit_crit_edge: ; preds = %bb.ax
  %.pre138 = load ptr, ptr %7, align 8, !tbaa !64 ; 2 uses
  %.pre142 = ptrtoint ptr %.pre138 to i64
  br label %_ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit: ; preds = %._ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit_crit_edge, %_ZNSt6vectorItSaItEEC2ERKS1_.exit.i
  %.pre-phi = phi i64 [ %.pre142, %._ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit_crit_edge ], [ %i.eb, %_ZNSt6vectorItSaItEEC2ERKS1_.exit.i ]
  %i.ej = phi ptr [ %.pre138, %._ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit_crit_edge ], [ %i.dy, %_ZNSt6vectorItSaItEEC2ERKS1_.exit.i ]
  %i.ek = load ptr, ptr %i.al, align 8, !tbaa !62
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = sub i64 %i.el, %.pre-phi
  %i.en = lshr exact i64 %i.em, 1
  %i.eo = trunc i64 %i.en to i32
  invoke void @usrc_writeArray(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef %i.ej, i32 noundef 16, i32 noundef %i.eo, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33)
          to label %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread unwind label %.loopexit114

_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread: ; preds = %bb.ar, %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit, %_ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit
  %.047123 = phi i64 [ %.047.lcssa, %_ZNSt6vectorIS_ItSaItEESaIS1_EE9push_backERKS1_.exit ], [ %.047126, %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit ], [ %.047126, %bb.ar ]
  %switch.selectcmp = icmp eq i32 %i.bc, 1
  %switch.selectcmp87 = icmp eq i32 %i.bc, 0
  %DATAEXPORT_SCRIPT_X_WITH_COMMON.val = load i16, ptr @DATAEXPORT_SCRIPT_X_WITH_COMMON, align 2
  %DATAEXPORT_SCRIPT_X_WITH_INHERITED.val = load i16, ptr @DATAEXPORT_SCRIPT_X_WITH_INHERITED, align 2
  %DATAEXPORT_SCRIPT_X_WITH_OTHER.val = load i16, ptr @DATAEXPORT_SCRIPT_X_WITH_OTHER, align 2
  %switch.select.val = select i1 %switch.selectcmp, i16 %DATAEXPORT_SCRIPT_X_WITH_INHERITED.val, i16 %DATAEXPORT_SCRIPT_X_WITH_OTHER.val
  %.0 = select i1 %switch.selectcmp87, i16 %DATAEXPORT_SCRIPT_X_WITH_COMMON.val, i16 %switch.select.val
  %i.ep = zext i16 %.0 to i64
  %i.eq = or i64 %.047123, %i.ep
  %i.er = trunc i64 %i.eq to i32
  %i.es = load ptr, ptr %3, align 8, !tbaa !28    ; 3 uses
  invoke void @umutablecptrie_set_78(ptr noundef %i.es, i32 noundef %i.bb, i32 noundef %i.er, ptr noundef nonnull %i.e)
          to label %bb.ay unwind label %bb.bi

bb.ay:                                            ; preds = %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 413, ptr noundef %i.h)
          to label %bb.az unwind label %bb.bi

bb.az:                                            ; preds = %bb.ay
  %i.et = load ptr, ptr %7, align 8, !tbaa !64    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.eu = load ptr, ptr %i.am, align 8, !tbaa !65
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.et to i64
  %i.ex = sub i64 %i.ev, %i.ew
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ex) #26
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.ey = load i32, ptr %i.y, align 8, !tbaa !53  ; 2 uses
  %i.ez = load i32, ptr %i.z, align 4, !tbaa !54
  %i.fa = icmp slt i32 %i.ey, %i.ez
  br i1 %i.fa, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  %i.fb = add nsw i32 %i.ey, 1                    ; 2 uses
  store i32 %i.fb, ptr %i.y, align 8, !tbaa !53
  br label %_ZN6icu_786header21USetCodePointIteratorppEv.exit

bb.bc:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  %i.fc = load i32, ptr %i.w, align 8, !tbaa !51  ; 2 uses
  %i.fd = load i32, ptr %i.x, align 4, !tbaa !52
  %i.fe = icmp slt i32 %i.fc, %i.fd
  br i1 %i.fe, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !55
  %i.ff = load ptr, ptr %6, align 8, !tbaa !49
  %i.fg = invoke i32 @uset_getItem_78(ptr noundef %i.ff, i32 noundef %i.fc, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.a)
          to label %.noexc100 unwind label %bb.z

.noexc100:                                        ; preds = %bb.bd
  %i.fh = load i32, ptr %i.a, align 4, !tbaa !55
  %i.fi = icmp slt i32 %i.fh, 1
  %i.fj = icmp eq i32 %i.fg, 0
  %or.cond.i = select i1 %i.fi, i1 %i.fj, i1 false
  br i1 %or.cond.i, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.noexc100
  %i.fk = load i32, ptr %i.w, align 8, !tbaa !51
  %i.fl = add nsw i32 %i.fk, 1
  store i32 %i.fl, ptr %i.w, align 8, !tbaa !51
  %.pre139.pre = load i32, ptr %i.y, align 8
  br label %bb.bg

bb.bf:                                            ; preds = %.noexc100
  store i32 -1, ptr %i.z, align 4, !tbaa !54
  store i32 -1, ptr %i.y, align 8, !tbaa !53
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pre139 = phi i32 [ -1, %bb.bf ], [ %.pre139.pre, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN6icu_786header21USetCodePointIteratorppEv.exit

bb.bh:                                            ; preds = %bb.bc
  store i32 -1, ptr %i.z, align 4, !tbaa !54
  store i32 -1, ptr %i.y, align 8, !tbaa !53
  br label %_ZN6icu_786header21USetCodePointIteratorppEv.exit

_ZN6icu_786header21USetCodePointIteratorppEv.exit: ; preds = %bb.bb, %bb.bg, %bb.bh
  %i.fm = phi i32 [ %i.fb, %bb.bb ], [ %.pre139, %bb.bg ], [ -1, %bb.bh ] ; 2 uses
  %i.fn = load ptr, ptr %6, align 8, !tbaa !49
  %i.fo = icmp ne ptr %i.fn, %5
  %i.fp = icmp ne i32 %i.fm, -1
  %.not3.i = select i1 %i.fo, i1 true, i1 %i.fp
  br i1 %.not3.i, label %bb.aa, label %._crit_edge132

bb.bi:                                            ; preds = %bb.ay, %_ZSteqItSaItEEbRKSt6vectorIT_T0_ES6_.exit.thread
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bj:                                            ; preds = %.loopexit114, %.loopexit.split-lp115, %.loopexit, %.loopexit.split-lp, %bb.bi, %bb.ao, %bb.an
  %.pn73 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.cq, %bb.an ], [ %i.cr, %bb.ao ], [ %i.fq, %bb.bi ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit116, %.loopexit114 ], [ %lpad.loopexit.split-lp117, %.loopexit.split-lp115 ]
  %i.fr = load ptr, ptr %7, align 8, !tbaa !64    ; 3 uses
  %.not.i.i.i101 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i101, label %_ZNSt6vectorItSaItEED2Ev.exit102, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fs = load ptr, ptr %i.am, align 8, !tbaa !65
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = ptrtoint ptr %i.fr to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fv) #26
  br label %_ZNSt6vectorItSaItEED2Ev.exit102
end_hunk_0
