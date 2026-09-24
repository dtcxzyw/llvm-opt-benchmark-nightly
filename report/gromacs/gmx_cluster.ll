Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_cluster?download=true
inline.NumInlined: 443
inline.NumDeleted: 185
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_Z11gmx_clusteriPPc:bb.a
.loopexit.split-lp738.loopexit.split-lp.loopexit: ; preds = %.critedge11
  %lpad.loopexit748 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp738.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y
  %lpad.loopexit750 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp738.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.df, %bb.dc, %bb.cs, %bb.cr, %bb.cn, %bb.dh, %bb.dd, %.loopexit744, %bb.cm, %bb.cl, %bb.cj, %bb.ci, %bb.ce, %bb.as, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.d, %bb.c, %bb.a
  %lpad.loopexit.split-lp751 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.b
  %i.hb = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.111, i32 noundef 16, ptr noundef nonnull %7)
          to label %bb.d unwind label %.loopexit.split-lp738.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.d:                                             ; preds = %bb.c
  %i.hc = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.109, i32 noundef 16, ptr noundef nonnull %7)
          to label %bb.e unwind label %.loopexit.split-lp738.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %i.hd = xor i1 %i.hb, true
  %i.he = or i1 %i.hc, %i.hd                      ; 6 uses
  %i.hf = invoke noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef nonnull @.str.81, i32 noundef 20, ptr noundef nonnull %6)
          to label %bb.f unwind label %.loopexit.split-lp738.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  br i1 %i.hf, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.hg = invoke noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef nonnull @.str.83, i32 noundef 20, ptr noundef nonnull %6)
          to label %bb.h unwind label %.loopexit.split-lp738.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  br i1 %i.hg, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.hh = invoke noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef nonnull @.str.85, i32 noundef 20, ptr noundef nonnull %6)
          to label %bb.j unwind label %.loopexit.split-lp738.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  br i1 %i.hh, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hi = invoke noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef nonnull @.str.87, i32 noundef 20, ptr noundef nonnull %6)
          to label %bb.l unwind label %.loopexit.split-lp738.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  br i1 %i.hi, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hj = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.132, i32 noundef 16, ptr noundef nonnull %7)
          to label %bb.n unwind label %.loopexit.split-lp738.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  br i1 %i.hj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.j, %bb.h, %bb.f
  %i.hk = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.132, i32 noundef 16, ptr noundef nonnull %7)
          to label %bb.p unwind label %.loopexit.split-lp738.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n, %bb.o
  %.0303 = phi ptr [ %i.hk, %bb.o ], [ null, %bb.n ] ; 3 uses
  br i1 %i.hb, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.hl = load ptr, ptr %i.y, align 8, !tbaa !144
  %i.hm = invoke noundef float @_Z26output_env_get_time_factorPK16gmx_output_env_t(ptr noundef %i.hl)
          to label %bb.r unwind label %.loopexit.split-lp738.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.hn = fcmp une float %i.hm, 1.000000e+00
  br i1 %i.hn, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ho = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.hp = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.111, i32 noundef 16, ptr noundef nonnull %7)
          to label %bb.t unwind label %.loopexit.split-lp738.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.hq = load ptr, ptr %i.y, align 8, !tbaa !144
  invoke void @_Z24output_env_get_time_unitB5cxx11PK16gmx_output_env_t(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %i.hq)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hr = load ptr, ptr %8, align 8, !tbaa !22
  %i.hs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ho, ptr noundef nonnull @.str.136, ptr noundef %i.hp, ptr noundef %i.hr) #19 ; 0 uses
  %i.ht = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.hw = load i64, ptr %i.hu, align 8, !tbaa !16
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.body

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.r, %bb.p
  %i.hz = icmp eq ptr %.0303, null                ; 2 uses
  %or.cond = or i1 %i.he, %i.hz
  br i1 %or.cond, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ia = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ib = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ia, ptr noundef nonnull @.str.137, ptr noundef nonnull %.0303) #19 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ic = load ptr, ptr @_ZZ11gmx_clusteriPPcE10methodname, align 16, !tbaa !23
  %i.id = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ11gmx_clusteriPPcE10methodname, i64 8), align 8, !tbaa !23
  %i.ie = invoke noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.ic, ptr noundef %i.id)
          to label %bb.z unwind label %.loopexit.split-lp738.loopexit.split-lp.loopexit.split-lp.loopexit

bb.z:                                             ; preds = %bb.y
  %.not338 = icmp eq i32 %i.ie, 0                 ; 2 uses
  br i1 %.not338, label %.critedge.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.if = load ptr, ptr @_ZZ11gmx_clusteriPPcE10methodname, align 16, !tbaa !23
  %i.ig = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ11gmx_clusteriPPcE10methodname, i64 16), align 16, !tbaa !23
  %i.ih = invoke noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.if, ptr noundef %i.ig)
          to label %bb.ab unwind label %.loopexit.split-lp738.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ab:                                            ; preds = %bb.aa
  %.not338.1 = icmp eq i32 %i.ih, 0
  br i1 %.not338.1, label %.critedge.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ii = load ptr, ptr @_ZZ11gmx_clusteriPPcE10methodname, align 16, !tbaa !23
  %i.ij = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ11gmx_clusteriPPcE10methodname, i64 24), align 8, !tbaa !23
  %i.ik = invoke noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.ii, ptr noundef %i.ij)
          to label %bb.ad unwind label %.loopexit.split-lp738.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ad:                                            ; preds = %bb.ac
  %.not338.2 = icmp eq i32 %i.ik, 0
  br i1 %.not338.2, label %.critedge.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.il = load ptr, ptr @_ZZ11gmx_clusteriPPcE10methodname, align 16, !tbaa !23
  %i.im = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ11gmx_clusteriPPcE10methodname, i64 32), align 16, !tbaa !23
  %i.in = invoke noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.il, ptr noundef %i.im)
          to label %bb.af unwind label %.loopexit.split-lp738.loopexit.split-lp.loopexit.split-lp.loopexit

bb.af:                                            ; preds = %bb.ae
  %.not338.3 = icmp eq i32 %i.in, 0
  br i1 %.not338.3, label %.critedge.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.io = load ptr, ptr @_ZZ11gmx_clusteriPPcE10methodname, align 16, !tbaa !23
  %i.ip = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ11gmx_clusteriPPcE10methodname, i64 40), align 8, !tbaa !23
  %i.iq = invoke noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.io, ptr noundef %i.ip)
          to label %bb.ah unwind label %.loopexit.split-lp738.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ah:                                            ; preds = %bb.ag
  %.not338.4 = icmp eq i32 %i.iq, 0
  br i1 %.not338.4, label %.critedge.thread, label %.critedge

.critedge:                                        ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA67_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(67) @.str.138, i8 noundef zeroext 2)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %.critedge
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 1072, ptr noundef nonnull @.str.139) #21
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %.critedge
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.ai
  %i.is = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #18
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn391 = phi { ptr, i32 } [ %i.is, %bb.al ], [ %i.ir, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body

.critedge.thread:                                 ; preds = %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z
  %i.it = phi i1 [ false, %bb.z ], [ true, %bb.ab ], [ false, %bb.ad ], [ false, %bb.af ], [ false, %bb.ah ]
  %or.cond3 = phi i1 [ %i.he, %bb.z ], [ %i.he, %bb.ab ], [ false, %bb.ad ], [ false, %bb.af ], [ %i.he, %bb.ah ]
  %i.iu = phi i1 [ false, %bb.z ], [ false, %bb.ab ], [ false, %bb.ad ], [ false, %bb.af ], [ true, %bb.ah ]
  %i.iv = phi i1 [ false, %bb.z ], [ false, %bb.ab ], [ true, %bb.ad ], [ false, %bb.af ], [ false, %bb.ah ]
  %i.iw = phi i1 [ false, %bb.z ], [ false, %bb.ab ], [ false, %bb.ad ], [ true, %bb.af ], [ false, %bb.ah ] ; 2 uses
  %.0295764.lcssa830.wide = phi i32 [ 1, %bb.z ], [ 2, %bb.ab ], [ 3, %bb.ad ], [ 4, %bb.af ], [ 5, %bb.ah ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #18
  %i.ix = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 20, i32 noundef 16, ptr noundef nonnull %7)
          to label %bb.an unwind label %bb.ax

bb.an:                                            ; preds = %.critedge.thread
  store ptr %i.ix, ptr %i.z, align 8, !tbaa !23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.z, i8 noundef zeroext 2)
          to label %bb.ao unwind label %bb.ax

bb.ao:                                            ; preds = %bb.an
  %i.iy = invoke noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull @.str.140)
          to label %bb.ap unwind label %bb.ay     ; 11 uses

bb.ap:                                            ; preds = %bb.ao
  %i.iz = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !25 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ja, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.iz, ptr noundef nonnull %i.ja) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.aq, %bb.ap
  %i.jb = load ptr, ptr %10, align 8, !tbaa !22   ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.jd = icmp eq ptr %i.jb, %i.jc
  br i1 %i.jd, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.je = load i64, ptr %i.jc, align 8, !tbaa !16
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.jf) #20
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.jg = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.jh = load ptr, ptr @_ZZ11gmx_clusteriPPcE10methodname, align 16, !tbaa !23
  %i.ji = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jg, ptr noundef nonnull @.str.141, ptr noundef %i.jh) #19 ; 0 uses
  %i.jj = load ptr, ptr @_ZZ11gmx_clusteriPPcE10methodname, align 16, !tbaa !23
  %i.jk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iy, ptr noundef nonnull @.str.141, ptr noundef %i.jj) #18 ; 0 uses
  br i1 %i.it, label %bb.ar, label %bb.bo

bb.ar:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.jl = load i32, ptr @_ZZ11gmx_clusteriPPcE1M, align 4, !tbaa !10
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %.thread1031, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jn = invoke noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef nonnull @.str.73, i32 noundef 20, ptr noundef nonnull %6)
          to label %bb.at unwind label %.loopexit.split-lp738.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.at:                                            ; preds = %bb.as
  %.pr = load i32, ptr @_ZZ11gmx_clusteriPPcE1M, align 4, !tbaa !10 ; 6 uses
  %i.jo = icmp slt i32 %.pr, 0
  %i.jp = icmp eq i32 %.pr, 1
  %or.cond5 = or i1 %i.jo, %i.jp
  br i1 %or.cond5, label %bb.au, label %bb.bd

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA67_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 1 dereferenceable(67) @.str.138, i8 noundef zeroext 2)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.jq = load i32, ptr @_ZZ11gmx_clusteriPPcE1M, align 4, !tbaa !10
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef 1090, ptr noundef nonnull @.str.142, i32 noundef %i.jq) #21
          to label %bb.aw unwind label %bb.bb

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.an, %.critedge.thread
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.ao
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #18
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn = phi { ptr, i32 } [ %i.js, %bb.ay ], [ %i.jr, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %.body

bb.ba:                                            ; preds = %bb.au
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bb:                                            ; preds = %bb.av
  %i.ju = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #18
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.pn389 = phi { ptr, i32 } [ %i.ju, %bb.bb ], [ %i.jt, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %.body

bb.bd:                                            ; preds = %bb.at
  %i.jv = icmp samesign ult i32 %.pr, 2
  br i1 %i.jv, label %.thread1031, label %bb.be

.thread1031:                                      ; preds = %bb.ar, %bb.bd
  %i.jw = phi i1 [ %i.jn, %bb.bd ], [ true, %bb.ar ]
  %i.jx = load i32, ptr @_ZZ11gmx_clusteriPPcE1P, align 4, !tbaa !10
  %i.jy = load float, ptr @_ZZ11gmx_clusteriPPcE7rmsdcut, align 4, !tbaa !27
  %i.jz = fpext float %i.jy to double
  %i.ka = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(1) @.str.143, i32 noundef %i.jx, double noundef %i.jz) #18 ; 0 uses
  br label %.thread699

bb.be:                                            ; preds = %bb.bd
  %i.kb = load i32, ptr @_ZZ11gmx_clusteriPPcE1P, align 4, !tbaa !10 ; 3 uses
  %.not340 = icmp slt i32 %i.kb, %.pr
  br i1 %.not340, label %bb.bl, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA67_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 1 dereferenceable(67) @.str.138, i8 noundef zeroext 2)
          to label %bb.bg unwind label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef 1101, ptr noundef nonnull @.str.144) #21
          to label %bb.bh unwind label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  unreachable

bb.bi:                                            ; preds = %bb.bf
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bg
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #18
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn341 = phi { ptr, i32 } [ %i.kd, %bb.bj ], [ %i.kc, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %.body

bb.bl:                                            ; preds = %bb.be
  br i1 %i.jn, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ke = load float, ptr @_ZZ11gmx_clusteriPPcE7rmsdcut, align 4, !tbaa !27
  %i.kf = fpext float %i.ke to double
  %i.kg = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(1) @.str.145, i32 noundef %i.kb, i32 noundef %.pr, double noundef %i.kf) #18 ; 0 uses
  br label %.thread699

bb.bn:                                            ; preds = %bb.bl
  %i.kh = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(1) @.str.146, i32 noundef %i.kb, i32 noundef %.pr) #18 ; 0 uses
  br label %.thread699

.thread699:                                       ; preds = %bb.bm, %bb.bn, %.thread1031
  %i.ki = phi i1 [ %i.jw, %.thread1031 ], [ true, %bb.bm ], [ false, %bb.bn ]
  %.0297 = phi i1 [ true, %.thread1031 ], [ true, %bb.bm ], [ false, %bb.bn ]
  %i.kj = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.kk = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(1) @.str.147, ptr noundef nonnull %i.r) #18 ; 0 uses
  %fputs.i.i = call i32 @fputs(ptr nonnull readonly %i.q, ptr %i.kj) #22 ; 0 uses
  %fputs4.i.i = call i32 @fputs(ptr nonnull readonly %i.q, ptr %i.iy) ; 0 uses
  br label %bb.br

bb.bo:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.kl = load i8, ptr %i.v, align 1, !tbaa !14, !range !28, !noundef !29
  %i.km = trunc nuw i8 %i.kl to i1                ; 2 uses
  %i.kn = or i1 %i.iu, %i.km
  %spec.select394 = or i1 %i.kn, %.not338         ; 3 uses
  br i1 %i.km, label %bb.bp, label %switch.early.test715

switch.early.test715:                             ; preds = %bb.bo
  switch i32 %.0295764.lcssa830.wide, label %bb.br [
    i32 5, label %bb.bp
    i32 1, label %bb.bp
    i32 3, label %bb.bq
  ]

bb.bp:                                            ; preds = %switch.early.test715, %switch.early.test715, %bb.bo
  %i.ko = load float, ptr @_ZZ11gmx_clusteriPPcE7rmsdcut, align 4, !tbaa !27
  %i.kp = fpext float %i.ko to double
  %i.kq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iy, ptr noundef nonnull @.str.148, double noundef %i.kp) #18 ; 0 uses
  br i1 %i.iv, label %bb.bq, label %bb.br
end_hunk_0
