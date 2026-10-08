Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/string?download=true
inline.NumInlined: 901
inline.NumDeleted: 297
begin_hunk_0_@_ZN4cvc58internal6String10toInternalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  br label %.body100

bb.ao:                                            ; preds = %bb.al
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.ap unwind label %.loopexit253

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %i.fw = load i64, ptr %i.g, align 8, !tbaa !44  ; 2 uses
  %i.fx = icmp eq i64 %i.fw, 4
  %i.fy = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.f
  br i1 %i.fz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104: ; preds = %bb.ap
  %i.ga = icmp ult i64 %i.fw, 16
  call void @llvm.assume(i1 %i.ga)
  br label %.critedge89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.ap
  %i.gb = load i64, ptr %i.f, align 8, !tbaa !40
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gc) #19
  br label %.critedge89

.critedge89:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %i.fx, label %.thread144, label %.critedge91, !llvm.loop !84

.body100:                                         ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.loopexit

bb.aq:                                            ; preds = %.split207.us
  %i.gd = load ptr, ptr %i.j, align 8, !tbaa !56, !noalias !91 ; 2 uses
  %i.ge = ptrtoint ptr %.08.i.i.i107 to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.gd, i64 noundef %i.gg)
          to label %bb.as unwind label %.loopexit363 ; 0 uses

.loopexit363:                                     ; preds = %bb.aq, %bb.ar
  %lpad.loopexit365 = landingpad { ptr, i32 }
          cleanup
  %i.gi = load ptr, ptr %7, align 8, !tbaa !39, !alias.scope !91 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.l
  br i1 %i.gj, label %.body113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i110: ; preds = %.loopexit363
  %i.gk = load i64, ptr %i.l, align 8, !tbaa !40, !alias.scope !91
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #19
  br label %.body113

bb.ar:                                            ; preds = %.split207.us
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.as unwind label %.loopexit363

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.gm = load i64, ptr %i.m, align 8, !tbaa !44  ; 2 uses
  %i.gn = icmp ugt i64 %i.gm, 5
  %i.go = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.l
  br i1 %i.gp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i117: ; preds = %bb.as
  %i.gq = icmp ult i64 %i.gm, 16
  call void @llvm.assume(i1 %i.gq)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.as
  %i.gr = load i64, ptr %i.l, align 8, !tbaa !40
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gs) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %i.gn, label %.thread150, label %.critedge91.outer, !llvm.loop !85

.body113:                                         ; preds = %.loopexit363, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.loopexit

bb.at:                                            ; preds = %.critedge
  %i.gt = add i32 %.us-phi200297, 1               ; 2 uses
  br i1 %i.et, label %.thread144, label %.thread150

.thread144:                                       ; preds = %.critedge89, %.critedge89.peel, %bb.at
  %.3148 = phi i32 [ %i.gt, %bb.at ], [ %i.ce, %.critedge89.peel ], [ %i.fj, %.critedge89 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.gu = load ptr, ptr %4, align 8, !tbaa !42
  %i.gv = getelementptr i8, ptr %i.gu, i64 -24
  %i.gw = load i64, ptr %i.gv, align 8
  %i.gx = getelementptr inbounds i8, ptr %4, i64 %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !57
  %i.ha = and i32 %i.gz, -75
  %i.hb = or disjoint i32 %i.ha, 8
  store i32 %i.hb, ptr %i.gy, align 8, !tbaa !58
  %i.hc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIjEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSirsERj.exit unwind label %.loopexit162 ; 0 uses

_ZNSirsERj.exit:                                  ; preds = %.thread144
  %i.hd = load i32, ptr %i.b, align 4, !tbaa !20  ; 2 uses
  %.not82 = icmp ult i32 %i.hd, 196608
  br i1 %.not82, label %bb.av, label %bb.bb

.loopexit162:                                     ; preds = %.thread144, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp163:                            ; preds = %bb.ay
  %lpad.loopexit.split-lp164 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.au:                                            ; preds = %.loopexit.split-lp163, %.loopexit162
  %lpad.phi165 = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit162 ], [ %lpad.loopexit.split-lp164, %.loopexit.split-lp163 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.loopexit

bb.av:                                            ; preds = %_ZNSirsERj.exit
  %i.he = load ptr, ptr %i.p, align 8, !tbaa !32  ; 4 uses
  %i.hf = load ptr, ptr %i.q, align 8, !tbaa !24
  %.not.i121 = icmp eq ptr %i.he, %i.hf
  br i1 %.not.i121, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !20
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  store ptr %i.hg, ptr %i.p, align 8, !tbaa !32
  br label %.thread156

bb.ax:                                            ; preds = %bb.av
  %i.hh = load ptr, ptr %0, align 8, !tbaa !17    ; 4 uses
  %i.hi = ptrtoint ptr %i.he to i64
  %i.hj = ptrtoint ptr %i.hh to i64               ; 2 uses
  %i.hk = sub i64 %i.hi, %i.hj                    ; 5 uses
  %i.hl = icmp eq i64 %i.hk, 9223372036854775804
  br i1 %i.hl, label %bb.ay, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #20
          to label %.noexc122 unwind label %.loopexit.split-lp163

.noexc122:                                        ; preds = %bb.ay
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ax
  %i.hm = ashr exact i64 %i.hk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.hm, i64 1)
  %i.hn = add nsw i64 %.sroa.speculated.i.i.i, %i.hm ; 2 uses
  %i.ho = icmp ult i64 %i.hn, %i.hm
  %i.hp = call i64 @llvm.umin.i64(i64 %i.hn, i64 2305843009213693951)
  %i.hq = select i1 %i.ho, i64 2305843009213693951, i64 %i.hp ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.hq, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.hr = shl nuw nsw i64 %i.hq, 2
  %i.hs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hr) #21
          to label %.noexc123 unwind label %.loopexit162 ; 4 uses

.noexc123:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ht = getelementptr inbounds i8, ptr %i.hs, i64 %i.hk ; 2 uses
  %i.hu = load i32, ptr %i.b, align 4, !tbaa !20
  store i32 %i.hu, ptr %i.ht, align 4, !tbaa !20
  %i.hv = icmp sgt i64 %i.hk, 0
  br i1 %i.hv, label %bb.az, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.az:                                            ; preds = %.noexc123
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hs, ptr align 4 %i.hh, i64 %i.hk, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.az, %.noexc123
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %.not.i17.i.i = icmp eq ptr %i.hh, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.hx = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = sub i64 %i.hy, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef %i.hz) #19
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.ba, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.hs, ptr %0, align 8, !tbaa !17
  store ptr %i.hw, ptr %i.p, align 8, !tbaa !32
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hq
  store ptr %i.ia, ptr %i.q, align 8, !tbaa !24
  br label %.thread156

.thread156:                                       ; preds = %bb.aw, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.bd

bb.bb:                                            ; preds = %_ZNSirsERj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.thread150

.thread150:                                       ; preds = %.critedge91.outer.peel.begin, %.critedge91.outer, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %bb.ag, %.critedge91, %.loopexit302, %bb.h, %bb.g, %bb.at, %bb.bb
  %.3143153 = phi i32 [ %.3148, %bb.bb ], [ %i.gt, %bb.at ], [ %i.av, %bb.g ], [ %i.av, %bb.h ], [ %i.bd, %.loopexit302 ], [ %.1, %bb.ag ], [ %.1, %.critedge91 ], [ %i.bd, %.critedge91.outer.peel.begin ], [ %.1.ph, %bb.v ], [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ], [ %.1.ph, %.critedge91.outer ]
  %i.ib = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.ic = load ptr, ptr %3, align 8, !tbaa !34
  %i.id = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.ie = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.if = ptrtoint ptr %i.ib to i64
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = sub i64 %i.if, %i.ig
  %i.ii = getelementptr inbounds i8, ptr %i.ie, i64 %i.ih
  invoke void @_ZNSt6vectorIjSaIjEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPjS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ii, ptr %i.ic, ptr %i.id)
          to label %bb.bd unwind label %bb.bc

bb.bc:                                            ; preds = %.thread150
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.bd:                                            ; preds = %.thread150, %.thread156
  %.3143154 = phi i32 [ %.3148, %.thread156 ], [ %.3143153, %.thread150 ]
  store ptr %i.s, ptr %4, align 8, !tbaa !42
  %i.ik = load i64, ptr %i.u, align 8
  %i.il = getelementptr inbounds i8, ptr %4, i64 %i.ik
  store ptr %i.t, ptr %i.il, align 8, !tbaa !42
  store ptr %i.v, ptr %i.e, align 8, !tbaa !42
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.w, align 8, !tbaa !42
  %i.im = load ptr, ptr %i.k, align 8, !tbaa !39  ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.x
  br i1 %i.in, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.bd
  %i.io = load i64, ptr %i.x, align 8, !tbaa !40
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.ip) #19
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.w, align 8, !tbaa !42
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #22
  store ptr %i.z, ptr %4, align 8, !tbaa !42
  %i.iq = load i64, ptr %i.ab, align 8
  %i.ir = getelementptr inbounds i8, ptr %4, i64 %i.iq
  store ptr %i.aa, ptr %i.ir, align 8, !tbaa !42
  store i64 0, ptr %i.ac, align 8, !tbaa !60
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ad) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.is = load ptr, ptr %3, align 8, !tbaa !17    ; 3 uses
  %.not.i.i.i125 = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i125, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.it = load ptr, ptr %i.ae, align 8, !tbaa !24
  %i.iu = ptrtoint ptr %i.it to i64
  %i.iv = ptrtoint ptr %i.is to i64
  %i.iw = sub i64 %i.iu, %i.iv
  call void @_ZdlPvm(ptr noundef nonnull %i.is, i64 noundef %i.iw) #19
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.d
  %.4 = phi i32 [ %.3143154, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.at, %bb.d ] ; 2 uses
  %i.ix = zext i32 %.4 to i64                     ; 2 uses
  %i.iy = load i64, ptr %i.c, align 8, !tbaa !44
  %i.iz = icmp ugt i64 %i.iy, %i.ix
  br i1 %i.iz, label %.lr.ph.split, label %._crit_edge

.loopexit:                                        ; preds = %.loopexit.loopexit.split.loopexit, %.loopexit.loopexit.split.loopexit.split-lp, %.loopexit.split-lp, %.loopexit.loopexit.split.us.loopexit, %.loopexit.loopexit.split-lp.loopexit.split-lp, %.body, %.body100, %.body113, %bb.bc, %bb.au, %bb.aa
  %.pn83 = phi { ptr, i32 } [ %i.ij, %bb.bc ], [ %lpad.phi165, %bb.au ], [ %i.du, %bb.aa ], [ %lpad.phi257, %.body100 ], [ %lpad.loopexit365, %.body113 ], [ %i.eh, %.body ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp369, %.loopexit.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit361, %.loopexit.loopexit.split.us.loopexit ], [ %lpad.loopexit251, %.loopexit.loopexit.split.loopexit ], [ %lpad.loopexit.split-lp252, %.loopexit.loopexit.split.loopexit.split-lp ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #22
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit, %bb.j
  %.pn83.pn = phi { ptr, i32 } [ %.pn83, %.loopexit ], [ %i.bc, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.i
  %.pn83.pn.pn = phi { ptr, i32 } [ %.pn83.pn, %bb.bg ], [ %i.bb, %bb.i ]
  %i.ja = load ptr, ptr %3, align 8, !tbaa !17    ; 3 uses
  %.not.i.i.i126 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorIjSaIjEED2Ev.exit127, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jb = load ptr, ptr %i.ae, align 8, !tbaa !24
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = ptrtoint ptr %i.ja to i64
  %i.je = sub i64 %i.jc, %i.jd
  call void @_ZdlPvm(ptr noundef nonnull %i.ja, i64 noundef %i.je) #19
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit127

_ZNSt6vectorIjSaIjEED2Ev.exit127:                 ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.bj

bb.bj:                                            ; preds = %.split211, %.split211.us, %_ZNSt6vectorIjSaIjEED2Ev.exit127
  %.pn83.pn.pn.pn = phi { ptr, i32 } [ %.pn83.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit127 ], [ %i.au, %.split211 ], [ %i.an, %.split211.us ]
  %i.jf = load ptr, ptr %0, align 8, !tbaa !17    ; 3 uses
  %.not.i.i.i128 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i128, label %_ZNSt6vectorIjSaIjEED2Ev.exit129, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jg = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.jh = ptrtoint ptr %i.jg to i64
  %i.ji = ptrtoint ptr %i.jf to i64
  %i.jj = sub i64 %i.jh, %i.ji
  call void @_ZdlPvm(ptr noundef nonnull %i.jf, i64 noundef %i.jj) #19
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit129

_ZNSt6vectorIjSaIjEED2Ev.exit129:                 ; preds = %bb.bj, %bb.bk
  resume { ptr, i32 } %.pn83.pn.pn.pn

._crit_edge:                                      ; preds = %bb.b, %bb.bf, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6String10isHexDigitEj(i32 noundef %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = add i32 %0, -48
  %i.b = icmp ult i32 %i.a, 10
  %i.c = and i32 %0, -33
  %i.d = add i32 %i.c, -65
  %i.e = icmp ult i32 %i.d, 6
  %i.f = or i1 %i.b, %i.e
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK4cvc58internal6String5frontEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK4cvc58internal6String4backEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZNK4cvc58internal6String7overlapERKS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::String", align 8 ; 8 uses
  %3 = alloca %"class.cvc5::internal::String", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = load ptr, ptr %0, align 8, !tbaa !17
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.j = load ptr, ptr %1, align 8, !tbaa !17
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.n) ; 2 uses
  %.not29 = icmp eq i64 %spec.select, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN4cvc58internal6StringD2Ev.exit19
  %i.s = add i64 %.01531, -1                      ; 2 uses
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !99

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.01531 = phi i64 [ %spec.select, %.lr.ph ], [ %i.s, %bb.b ] ; 6 uses
  %.01630 = phi i64 [ undef, %.lr.ph ], [ %i.az, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !32, !noalias !102
  %i.u = load ptr, ptr %0, align 8, !tbaa !17, !noalias !102
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 2
  %i.z = sub i64 %i.y, %.01531
  call void @_ZNK4cvc58internal6String6substrEmm(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::String") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.z, i64 noundef %.01531)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNK4cvc58internal6String6substrEmm(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::String") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0, i64 noundef %.01531)
          to label %_ZNK4cvc58internal6String6prefixEm.exit unwind label %bb.f

_ZNK4cvc58internal6String6prefixEm.exit:          ; preds = %bb.c
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !32  ; 2 uses
end_hunk_0
